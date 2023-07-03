	.include "asm/macros.inc"
	.include "overlay_29.inc"
	.include "global.inc"

	.text

	arm_func_start ov29_022DC240
ov29_022DC240: @ 0x022DC240
	push {r4, lr}
	ldr r1, _022DC2B0 @ =0x0001963C
	mov r4, r0
	bl FUN_02003250
	ldr r0, _022DC2B4 @ =0x0001962A
	mov r2, #0
	strh r2, [r4, r0]
	add r1, r0, #2
	strh r2, [r4, r1]
	add r1, r0, #4
	mov r2, #0x100
	strh r2, [r4, r1]
	add r1, r0, #6
	mov r2, #0xc0
	strh r2, [r4, r1]
	add r1, r0, #8
	mov r2, #0x40
	strh r2, [r4, r1]
	add r1, r0, #0xa
	mov r2, #0x18
	strh r2, [r4, r1]
	add r1, r0, #0xc
	mov r2, #4
	strh r2, [r4, r1]
	add r0, r0, #0xe
	mov r1, #8
	strh r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_022DC2B0: .4byte 0x0001963C
_022DC2B4: .4byte 0x0001962A
	arm_func_end ov29_022DC240

	arm_func_start ov29_022DC2B8
ov29_022DC2B8: @ 0x022DC2B8
	push {r3, lr}
	ldr r1, _022DC30C @ =0x00019628
	mov ip, #0
	strh ip, [r0, r1]
	add r2, r1, #0xa
	add r1, r1, #0xc
	ldrsh r2, [r0, r2]
	ldrsh r1, [r0, r1]
	mov lr, ip
	smulbb r1, r2, r1
	lsl r3, r1, #0x10
	ldr r1, _022DC310 @ =0x00017704
	b _022DC300
_022DC2EC:
	add r2, ip, #1
	add ip, r0, ip, lsl #1
	lsl r2, r2, #0x10
	strh lr, [ip, r1]
	asr ip, r2, #0x10
_022DC300:
	cmp ip, r3, asr #16
	blt _022DC2EC
	pop {r3, pc}
	.align 2, 0
_022DC30C: .4byte 0x00019628
_022DC310: .4byte 0x00017704
	arm_func_end ov29_022DC2B8

	arm_func_start ov29_022DC314
ov29_022DC314: @ 0x022DC314
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _022DC338 @ =0x0234FD14
	mov r4, r1
	bl FUN_0200C1FC
	mov r0, r5
	mov r1, r4
	bl FUN_02008BF4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DC338: .4byte 0x0234FD14
	arm_func_end ov29_022DC314

	arm_func_start FUN_022DC33C
FUN_022DC33C: @ 0x022DC33C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _022DC52C @ =0x00019628
	mov r6, r0
	ldrh r0, [r6, r1]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, _022DC530 @ =0x02353880
	mov r1, #0
	ldrh r4, [r2, #0x14]
	ldrh r3, [sp]
	mov r0, #0x1000
	bic r4, r4, #0x700
	bic r3, r3, #0x700
	orr r4, r4, #0x200
	orr r3, r3, #0x200
	strh r4, [r2, #0x14]
	strh r3, [sp]
	ldrh r5, [r2, #0x14]
	ldrh r4, [sp]
	ldr r3, _022DC534 @ =0x020AFC70
	bic r5, r5, #7
	bic r4, r4, #7
	orr r5, r5, #5
	orr r4, r4, #5
	strh r5, [r2, #0x14]
	ldrh r5, [r2, #0x14]
	strh r4, [sp]
	ldrh r4, [sp]
	ldr r7, _022DC538 @ =0x00007FFF
	bic r5, r5, #0x38
	orr r8, r5, #0x28
	bic r4, r4, #0x38
	mov r5, #0x1f
	orr r4, r4, #0x28
	ldr r3, [r3]
	strh r1, [r2, #0x16]
	strh r1, [r2, #0x18]
	strh r1, [r2, #0x1a]
	strh r1, [r2, #0x1c]
	strh r0, [r2, #0x1e]
	strh r0, [r2, #0x20]
	strh r1, [r2, #0xc]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x10]
	strh r1, [r2, #0x12]
	strh r1, [r2, #0x24]
	str r1, [r2, #4]
	str r1, [r2, #8]
	strb r1, [r2, #0x26]
	strh r1, [r2, #2]
	strh r8, [r2, #0x14]
	strh r7, [r2, #0x22]
	strb r5, [r2, #0x27]
	strh r4, [sp]
	ldr r4, [r3, #0xe0]
	add r0, sp, #0
	mov r1, #0x1b000
	bl FUN_01FF8130
	add r0, sp, #0
	add r1, r4, #0x3c00
	bl FUN_01FF81CC
	ldr r0, _022DC53C @ =0x00018304
	mov r5, #0
	ldr r4, _022DC530 @ =0x02353880
	add fp, r0, #2
	add r7, r0, #4
	add r8, r0, #6
	add sb, r0, #8
	add sl, r0, #0xa
	b _022DC518
_022DC454:
	mov r0, #0xe
	smlabb r3, r5, r0, r6
	add r0, r3, #0x18000
	ldrb r1, [r0, #0x311]
	cmp r1, #0
	beq _022DC50C
	ldrb r2, [r0, #0x310]
	ldr r0, _022DC53C @ =0x00018304
	ldrsh r1, [r3, r0]
	ldrh r0, [r4, #0x14]
	and ip, r2, #3
	strh r1, [r4, #0x16]
	bic r0, r0, #0x700
	orr r1, r0, #0x200
	ldr r0, _022DC540 @ =0x0234FD04
	ldrsh lr, [r3, fp]
	ldrb r2, [r0, ip, lsl #2]
	add ip, r0, ip, lsl #2
	strh lr, [r4, #0x18]
	and r0, r2, #0xf8
	ldrsh r2, [r3, r7]
	ldrb lr, [ip, #2]
	ldrb ip, [ip, #1]
	strh r2, [r4, #0xc]
	and r2, lr, #0xf8
	and ip, ip, #0xf8
	lsl r2, r2, #0x17
	lsl ip, ip, #2
	orr r2, ip, r2, lsr #16
	ldrsh ip, [r3, r8]
	orr r2, r2, r0, asr #3
	mov r0, r4
	strh ip, [r4, #0xe]
	ldrsh ip, [r3, sb]
	strh ip, [r4, #0x10]
	ldrsh r3, [r3, sl]
	strh r1, [r4, #0x14]
	mov r1, #0
	strh r1, [r4, #2]
	mov r1, #0x1f
	strb r1, [r4, #0x27]
	mov r1, #3
	strh r3, [r4, #0x12]
	strh r2, [r4, #0x22]
	strh r1, [r4]
	bl FUN_01FF8C60
_022DC50C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_022DC518:
	ldr r0, _022DC52C @ =0x00019628
	ldrh r0, [r6, r0]
	cmp r5, r0
	blt _022DC454
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DC52C: .4byte 0x00019628
_022DC530: .4byte 0x02353880
_022DC534: .4byte 0x020AFC70
_022DC538: .4byte 0x00007FFF
_022DC53C: .4byte 0x00018304
_022DC540: .4byte 0x0234FD04
	arm_func_end FUN_022DC33C

	arm_func_start ov29_022DC544
ov29_022DC544: @ 0x022DC544
	push {r4, lr}
	sub sp, sp, #8
	ldr r1, _022DC604 @ =0x023534E8
	mov r2, #0x300
	ldr r1, [r1, r0, lsl #2]
	add r0, sp, #0
	bl FUN_02008C3C
	ldr r4, [sp]
	ldr r2, [sp, #4]
	mov r0, r4
	mov r1, #0x1b000
	mov r3, #0
	bl FUN_0201E050
	mov r1, #0
	mov r0, r4
	mov r2, r1
	mov r3, #2
	bl FUN_0201E050
	ldr r0, _022DC608 @ =0x020AFC70
	ldr r1, _022DC60C @ =0x0234FD48
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0xcc
	mov r3, #0
	bl FUN_0201E380
	ldr r0, _022DC608 @ =0x020AFC70
	ldr r1, _022DC610 @ =0x0234FD4C
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0xcc
	mov r3, #1
	bl FUN_0201E380
	ldr r0, _022DC608 @ =0x020AFC70
	ldr r1, _022DC614 @ =0x0234FD50
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0xcc
	mov r3, #2
	bl FUN_0201E380
	ldr r0, _022DC608 @ =0x020AFC70
	ldr r1, _022DC618 @ =0x0234FD54
	ldr r0, [r0]
	mov r2, #0x1e
	add r0, r0, #0xcc
	mov r3, #3
	bl FUN_0201E380
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_022DC604: .4byte 0x023534E8
_022DC608: .4byte 0x020AFC70
_022DC60C: .4byte 0x0234FD48
_022DC610: .4byte 0x0234FD4C
_022DC614: .4byte 0x0234FD50
_022DC618: .4byte 0x0234FD54
	arm_func_end ov29_022DC544

	arm_func_start ov29_022DC61C
ov29_022DC61C: @ 0x022DC61C
	push {r3, lr}
	ldr r0, _022DC650 @ =0x023538B4
	ldr r1, _022DC654 @ =0x0001963C
	bl FUN_02003250
	mov r0, #0
	bl ov29_022DC544
	ldr r0, _022DC650 @ =0x023538B4
	bl ov29_022DC240
	ldr r1, _022DC658 @ =0x023534E0
	ldr r0, _022DC650 @ =0x023538B4
	ldr r1, [r1]
	bl ov29_022DC314
	pop {r3, pc}
	.align 2, 0
_022DC650: .4byte 0x023538B4
_022DC654: .4byte 0x0001963C
_022DC658: .4byte 0x023534E0
	arm_func_end ov29_022DC61C

	arm_func_start ov29_022DC65C
ov29_022DC65C: @ 0x022DC65C
	ldr ip, _022DC668 @ =ov29_022DC2B8
	ldr r0, _022DC66C @ =0x023538B4
	bx ip
	.align 2, 0
_022DC668: .4byte ov29_022DC2B8
_022DC66C: .4byte 0x023538B4
	arm_func_end ov29_022DC65C

	arm_func_start ov29_022DC670
ov29_022DC670: @ 0x022DC670
	ldr ip, _022DC67C @ =FUN_022DC33C
	ldr r0, _022DC680 @ =0x023538B4
	bx ip
	.align 2, 0
_022DC67C: .4byte FUN_022DC33C
_022DC680: .4byte 0x023538B4
	arm_func_end ov29_022DC670

	arm_func_start ov29_022DC684
ov29_022DC684: @ 0x022DC684
	ldr ip, _022DC690 @ =FUN_022C0998
	mov r1, #1
	bx ip
	.align 2, 0
_022DC690: .4byte FUN_022C0998
	arm_func_end ov29_022DC684

	arm_func_start ov29_022DC694
ov29_022DC694: @ 0x022DC694
	push {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl FUN_022C22A0
	add r0, sp, #0
	mov r1, r4
	bl FUN_022C0814
	mov r0, r5
	mov r1, #0
	mov r2, #1
	bl FUN_022C09E8
	add sp, sp, #0x14
	pop {r4, r5, pc}
	arm_func_end ov29_022DC694

	arm_func_start ov29_022C0CE0
ov29_022C0CE0: @ 0x022DC6D0
	ldr ip, _022DC6D8 @ =FUN_022C0CE0
	bx ip
	.align 2, 0
_022DC6D8: .4byte FUN_022C0CE0
	arm_func_end ov29_022C0CE0

	arm_func_start ov29_022C11D8
ov29_022C11D8: @ 0x022DC6DC
	ldr ip, _022DC6E4 @ =FUN_022C11D8
	bx ip
	.align 2, 0
_022DC6E4: .4byte FUN_022C11D8
	arm_func_end ov29_022C11D8

	arm_func_start ov29_022DC6E8
ov29_022DC6E8: @ 0x022DC6E8
	push {r4, lr}
	sub sp, sp, #0x18
	ldrb r4, [sp, #0x20]
	ldrsh ip, [sp, #0x24]
	ldrsh lr, [sp, #0x28]
	stm sp, {r4, ip}
	str lr, [sp, #8]
	ldrsh ip, [sp, #0x2c]
	ldrsh lr, [sp, #0x30]
	str ip, [sp, #0xc]
	ldrb ip, [sp, #0x34]
	str lr, [sp, #0x10]
	str ip, [sp, #0x14]
	bl FUN_022C0F6C
	add sp, sp, #0x18
	pop {r4, pc}
	arm_func_end ov29_022DC6E8

	arm_func_start ov29_022DC728
ov29_022DC728: @ 0x022DC728
	push {r3, lr}
	bl FUN_022C13B4
	bl FUN_022C096C
	pop {r3, pc}
	arm_func_end ov29_022DC728

	arm_func_start ov29_022DC738
ov29_022DC738: @ 0x022DC738
	push {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl FUN_022C22A0
	add r0, sp, #0
	mov r1, r4
	bl FUN_022C0814
	mov r0, r5
	bl FUN_022C14D0
	add sp, sp, #0x14
	pop {r4, r5, pc}
	arm_func_end ov29_022DC738

	arm_func_start ov29_022C159C
ov29_022C159C: @ 0x022DC76C
	ldr ip, _022DC774 @ =FUN_022C159C
	bx ip
	.align 2, 0
_022DC774: .4byte FUN_022C159C
	arm_func_end ov29_022C159C

	arm_func_start ov29_022DC778
ov29_022DC778: @ 0x022DC778
	bx lr
	arm_func_end ov29_022DC778

	arm_func_start ov29_022DC77C
ov29_022DC77C: @ 0x022DC77C
	push {r3, lr}
	bl FUN_022C16D8
	bl FUN_022C096C
	pop {r3, pc}
	arm_func_end ov29_022DC77C

	arm_func_start ov29_022DC78C
ov29_022DC78C: @ 0x022DC78C
	push {r4, lr}
	ldr r1, _022DC7E0 @ =0x02353518
	mov lr, #0
	ldr r4, [r1]
	mov r1, #0x50
	b _022DC7D0
_022DC7A4:
	mul ip, lr, r1
	add r3, r4, ip
	ldrb r2, [r3, #4]
	cmp r2, #0
	beq _022DC7CC
	ldr r2, [r3, #8]
	cmp r0, r2
	addeq r0, r4, #4
	addeq r0, r0, ip
	popeq {r4, pc}
_022DC7CC:
	add lr, lr, #1
_022DC7D0:
	cmp lr, #0x16
	blt _022DC7A4
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022DC7E0: .4byte 0x02353518
	arm_func_end ov29_022DC78C

	arm_func_start ov29_022DC7E4
ov29_022DC7E4: @ 0x022DC7E4
	push {r3, lr}
	mov lr, #0
	mov r3, lr
	mov r2, lr
	b _022DC80C
_022DC7F8:
	lsr r0, r0, #1
	lsr ip, r1, #1
	orr r0, r0, r1, lsl #31
	mov r1, ip
	add lr, lr, #1
_022DC80C:
	cmp r1, r3
	cmpeq r0, r2
	bne _022DC7F8
	mov r0, lr
	pop {r3, pc}
	arm_func_end ov29_022DC7E4

	arm_func_start ov29_022DC820
ov29_022DC820: @ 0x022DC820
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	mov r8, r1
	mov r1, #0xc
	mul r1, r8, r1
	mov sb, r0
	ldr r0, [sb, #0x10]
	add r4, sb, #0x2c
	ldr r3, [sb, #0xc]
	cmp r0, #0
	add r4, r4, r1
	mov r5, #0
	cmpeq r3, #0
	streq r5, [r4]
	str r2, [sp, #0xc]
	streq r5, [r4, #4]
	beq _022DD084
	ldr r0, [r4, #4]
	ldr r2, [r4]
	cmp r0, r5
	cmpeq r2, r5
	streq r5, [r4, #8]
	ldr r0, [r4, #8]
	moveq r5, #1
	cmp r0, #0
	bgt _022DC99C
	add r0, sb, #0x2c
	cmp r8, #0
	add r0, r0, r1
	moveq r1, #1
	streq r1, [sp, #0x10]
	moveq r1, #0
	streq r1, [sp, #0x14]
	movne r1, #0
	strne r1, [sp, #0x10]
	movne r1, #1
	strne r1, [sp, #0x14]
	cmp r8, #0
	ldr r1, [sb, #0x10]
	moveq sl, #0x80000000
	str r1, [sp, #0x1c]
	ldr r1, [sb, #0xc]
	moveq lr, #0
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	movne sl, #0
	movne lr, #1
	cmp r8, #0
	moveq ip, #0x20
	movne ip, #1
	cmp r1, #0
	ldr r1, [sp, #0x18]
	cmpeq r1, #0
	mov r1, #0
	moveq r7, r1
	moveq r6, r1
	beq _022DC978
	ldr r6, [r0, #4]
	ldr r7, [r0]
	cmp r6, r1
	cmpeq r7, r1
	mov r3, #0
	ldreq r7, [sp, #0x10]
	ldreq r6, [sp, #0x14]
	mov r1, r3
	b _022DC968
_022DC928:
	lsl r6, r6, #1
	orr r6, r6, r7, lsr #31
	lsl r7, r7, #1
	cmp r6, lr
	cmpeq r7, sl
	ldrhi r6, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldrhi r7, [sp, #0x10]
	and r2, r0, r6
	mov r0, #0
	cmp r2, r0
	ldr r0, [sp, #0x18]
	and r0, r0, r7
	cmpeq r0, r1
	bne _022DC978
	add r3, r3, #1
_022DC968:
	cmp r3, ip
	blt _022DC928
	mov r7, #0
	mov r6, r7
_022DC978:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	cmp r0, r6
	cmpeq r1, r7
	strne r7, [r4]
	strne r6, [r4, #4]
	mov r0, #0x3c
	str r0, [r4, #8]
	b _022DC9A4
_022DC99C:
	sub r0, r0, #1
	str r0, [r4, #8]
_022DC9A4:
	ldrb r0, [sb, #0x14]
	cmp r0, #0
	beq _022DCA0C
	ldm r4, {r0, r1}
	cmp r1, #0
	cmpeq r0, #0
	beq _022DCA0C
	bl ov29_022DC7E4
	ldr r1, _022DD08C @ =0x02353518
	lsl r0, r0, #0x10
	ldr r2, [r1]
	asr r1, r0, #0x10
	ldrb r0, [r2, #0x6e8]
	cmp r0, #0
	beq _022DCA0C
	ldr r0, [sp, #0xc]
	add r2, sb, #0x16
	str r0, [sp]
	ldrb r3, [sb, #0x15]
	add r0, sb, #0x1a
	str r3, [sp, #4]
	ldr r6, [sb, #4]
	add r3, r0, r8, lsl #2
	str r6, [sp, #8]
	ldrsh r0, [sb, #8]
	bl ov29_022DD0A4
_022DCA0C:
	ldrb r0, [sb, #0x44]
	cmp r0, #0
	beq _022DD084
	ldm r4, {r0, r1}
	cmp r1, #0
	cmpeq r0, #0
	mov r6, #0
	beq _022DD084
	bl ov29_022DC7E4
	lsl r0, r0, #0x10
	cmp r5, #0
	asr r7, r0, #0x10
	movne r6, #1
	bne _022DCB24
	ldr r0, _022DD090 @ =0x02350F8C
	ldr r0, [r0, r7, lsl #3]
	cmp r0, #0x10
	addls pc, pc, r0, lsl #2
	b _022DCB24
_022DCA58: @ jump table
	b _022DCB24 @ case 0
	b _022DCA9C @ case 1
	b _022DCA9C @ case 2
	b _022DCA9C @ case 3
	b _022DCA9C @ case 4
	b _022DCABC @ case 5
	b _022DCABC @ case 6
	b _022DCABC @ case 7
	b _022DCABC @ case 8
	b _022DCAE0 @ case 9
	b _022DCAE0 @ case 10
	b _022DCAE0 @ case 11
	b _022DCAE0 @ case 12
	b _022DCB04 @ case 13
	b _022DCB04 @ case 14
	b _022DCB04 @ case 15
	b _022DCB04 @ case 16
_022DCA9C:
	ldr r0, _022DD08C @ =0x02353518
	ldr r0, [r0]
	ldr r0, [r0]
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #30
	adds r0, r1, r0, ror #30
	moveq r6, #1
	b _022DCB24
_022DCABC:
	ldr r0, _022DD08C @ =0x02353518
	ldr r0, [r0]
	ldr r0, [r0]
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	cmp r0, #1
	moveq r6, #1
	b _022DCB24
_022DCAE0:
	ldr r0, _022DD08C @ =0x02353518
	ldr r0, [r0]
	ldr r0, [r0]
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	cmp r0, #2
	moveq r6, #1
	b _022DCB24
_022DCB04:
	ldr r0, _022DD08C @ =0x02353518
	ldr r0, [r0]
	ldr r0, [r0]
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	cmp r0, #3
	moveq r6, #1
_022DCB24:
	cmp r6, #0
	beq _022DCC3C
	ldm r4, {r0, r1}
	bl ov29_022DC7E4
	ldr r2, _022DD090 @ =0x02350F8C
	ldr r1, _022DD08C @ =0x02353518
	ldr r2, [r2, r7, lsl #3]
	ldr r3, [r1]
	mov r1, #0xc
	ldr r5, [r3, #0x6f4]
	mul r6, r2, r1
	ldr sl, [r5, #4]
	ldr r1, _022DD094 @ =0x02350F90
	add r4, sl, r6
	ldr r0, [r1, r0, lsl #3]
	ldr r3, [r3]
	ldrb sl, [sl, r6]
	ldrb r6, [r4, #1]
	asr r2, r3, #1
	add r2, r3, r2, lsr #30
	smulbb r6, sl, r6
	lsl r0, r0, #0x10
	str r0, [sp, #0x20]
	ldrsh r1, [r4, #8]
	ldrh sl, [sb, #0x4a]
	lsl r3, r8, #0x10
	lsl fp, r6, #5
	asr r0, r2, #2
	lsr r6, r3, #0x10
	bl FUN_0208FEA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #4]
	ldr r0, _022DD098 @ =0x020AFC4C
	mla r1, fp, r1, r2
	lsl r2, sl, #0x11
	asr r2, r2, #0xe
	add r2, r2, #0x50
	ldr r0, [r0]
	ldr r4, [r5, #0xc]
	add r2, r2, r6, lsl #2
	lsl r2, r2, #0x10
	mov r3, fp
	add r0, r0, #0x70
	add r1, r4, r1
	asr r2, r2, #0x10
	bl FUN_0201BAC8
	add r0, r6, sl, lsl #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r0, #4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, [r5, #0x14]
	ldr r1, [sp, #0x20]
	add r0, sp, #0x2c
	add r1, r2, r1, lsr #10
	mov r2, #0
	mov r3, #0x10
	bl FUN_0201F598
	ldr r0, _022DD098 @ =0x020AFC4C
	ldrh r2, [sp, #0x34]
	ldr r0, [r0]
	add r1, sp, #0x2c
	add r0, r0, #0x70
	bl FUN_0201B43C
_022DCC3C:
	ldr r6, _022DD08C @ =0x02353518
	ldr r2, _022DD090 @ =0x02350F8C
	ldr r1, [r6]
	ldr r3, [r2, r7, lsl #3]
	ldr r1, [r1, #0x6f4]
	ldrh r4, [r6, #0xc]
	ldrsh r0, [sb, #0x4a]
	add r2, r2, r7, lsl #3
	ldr r2, [r2, #4]
	ldr r1, [r1, #4]
	bic r4, r4, #0x100
	strh r4, [r6, #0xc]
	ldrh r4, [r6, #0xc]
	lsl fp, r0, #1
	mov sl, #0xc
	bic r4, r4, #0x200
	strh r4, [r6, #0xc]
	ldrh r4, [r6, #0xc]
	lsl r0, r0, #3
	mla r1, r3, sl, r1
	bic r4, r4, #0xc00
	strh r4, [r6, #0xc]
	ldrh r5, [r6, #0xc]
	add fp, fp, #4
	str r2, [sp, #0x28]
	bic r5, r5, #0x1000
	strh r5, [r6, #0xc]
	ldrh sl, [r6, #0xc]
	lsl r5, r8, #0x10
	add r5, fp, r5, asr #16
	bic sl, sl, #0x2000
	strh sl, [r6, #0xc]
	ldrh sl, [r6, #0x10]
	lsl fp, r5, #0x10
	add r0, r0, #0x50
	bic r5, sl, #0xc00
	strh r5, [r6, #0x10]
	ldrh sl, [r6, #0x12]
	mov r4, #0
	add r8, r0, r8, lsl #2
	bic sl, sl, #1
	strh sl, [r6, #0x12]
	ldrh sl, [r6, #0x12]
	mov r5, r4
	str r3, [sp, #0x24]
	bic r2, sl, #2
	strh r2, [r6, #0x12]
	ldrh r2, [r6, #0xe]
	cmp r3, #0x10
	asr r0, fp, #0x10
	bic r2, r2, #0x3e00
	strh r2, [r6, #0xe]
	addls pc, pc, r3, lsl #2
	b _022DCFAC
_022DCD14: @ jump table
	b _022DCFAC @ case 0
	b _022DCD58 @ case 1
	b _022DCE14 @ case 2
	b _022DCE14 @ case 3
	b _022DCF50 @ case 4
	b _022DCEE0 @ case 5
	b _022DCE14 @ case 6
	b _022DCE14 @ case 7
	b _022DCDB0 @ case 8
	b _022DCE14 @ case 9
	b _022DCE14 @ case 10
	b _022DCE14 @ case 11
	b _022DCD58 @ case 12
	b _022DCE14 @ case 13
	b _022DCD58 @ case 14
	b _022DCE14 @ case 15
	b _022DCE78 @ case 16
_022DCD58:
	ldrh r2, [r6, #0xc]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xe]
	ldrb r2, [r1, #1]
	ldrb r4, [r1]
	ldrsh r3, [sb, #0x24]
	lsl r1, r2, #3
	lsl r4, r4, #3
	add r1, r1, r1, lsr #31
	sub r1, r3, r1, asr #1
	sub r1, r1, #0x10
	lsl r2, r1, #0x10
	ldrsh r3, [sb, #0x22]
	add r1, r4, r4, lsr #31
	asr r4, r2, #0x10
	sub r1, r3, r1, asr #1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	b _022DCFAC
_022DCDB0:
	ldrh r2, [r6, #0xc]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xc]
	orr r2, r2, #0x8000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xe]
	ldrb r2, [r1, #1]
	ldrb r4, [r1]
	ldrsh r3, [sb, #0x24]
	lsl r1, r2, #3
	lsl r4, r4, #3
	add r1, r1, r1, lsr #31
	sub r1, r3, r1, asr #1
	sub r1, r1, #0x10
	lsl r2, r1, #0x10
	ldrsh r3, [sb, #0x22]
	add r1, r4, r4, lsr #31
	asr r4, r2, #0x10
	sub r1, r3, r1, asr #1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	b _022DCFAC
_022DCE14:
	ldrh r2, [r6, #0xc]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xe]
	ldrh r2, [r6, #0xe]
	orr r2, r2, #0x4000
	strh r2, [r6, #0xe]
	ldrb r2, [r1, #1]
	ldrb r4, [r1]
	ldrsh r3, [sb, #0x24]
	lsl r1, r2, #3
	lsl r4, r4, #3
	add r1, r1, r1, lsr #31
	sub r1, r3, r1, asr #1
	sub r1, r1, #0x10
	lsl r2, r1, #0x10
	ldrsh r3, [sb, #0x22]
	add r1, r4, r4, lsr #31
	asr r4, r2, #0x10
	sub r1, r3, r1, asr #1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	b _022DCFAC
_022DCE78:
	ldrh r2, [r6, #0xc]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xe]
	ldrh r2, [r6, #0xe]
	orr r2, r2, #0x4000
	strh r2, [r6, #0xe]
	ldrb r2, [r1]
	ldrb r1, [r1, #1]
	ldrsh r4, [sb, #0x22]
	lsl r3, r2, #3
	lsl r2, r1, #3
	add r1, r3, r3, lsr #31
	sub r1, r4, r1, asr #1
	add r1, r1, #8
	lsl r1, r1, #0x10
	ldrsh r3, [sb, #0x24]
	add r2, r2, r2, lsr #31
	asr r5, r1, #0x10
	sub r1, r3, r2, asr #1
	sub r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
	b _022DCFAC
_022DCEE0:
	ldrh r2, [r6, #0xc]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xc]
	orr r2, r2, #0x4000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xe]
	ldrh r2, [r6, #0xe]
	orr r2, r2, #0x8000
	strh r2, [r6, #0xe]
	ldrb r2, [r1, #1]
	ldrb r4, [r1]
	ldrsh r3, [sb, #0x24]
	lsl r1, r2, #3
	lsl r4, r4, #3
	add r1, r1, r1, lsr #31
	sub r1, r3, r1, asr #1
	sub r1, r1, #0x10
	lsl r2, r1, #0x10
	ldrsh r3, [sb, #0x22]
	add r1, r4, r4, lsr #31
	asr r4, r2, #0x10
	sub r1, r3, r1, asr #1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	b _022DCFAC
_022DCF50:
	ldrh r2, [r6, #0xc]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	bic r2, r2, #0xc000
	strh r2, [r6, #0xe]
	ldrh r2, [r6, #0xe]
	orr r2, r2, #0x8000
	strh r2, [r6, #0xe]
	ldrb r2, [r1]
	ldrb r1, [r1, #1]
	ldrsh r4, [sb, #0x26]
	lsl r3, r2, #3
	lsl r2, r1, #3
	add r1, r3, r3, lsr #31
	sub r1, r4, r1, asr #1
	lsl r1, r1, #0x10
	ldrsh r3, [sb, #0x28]
	add r2, r2, r2, lsr #31
	asr r5, r1, #0x10
	sub r1, r3, r2, asr #1
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
_022DCFAC:
	ldr r3, _022DD08C @ =0x02353518
	mov r1, #0x400
	ldrh r6, [r3, #0x10]
	rsb r1, r1, #0
	and r2, r8, r1, lsr #22
	and r6, r6, r1
	strh r6, [r3, #0x10]
	ldrh r8, [r3, #0x10]
	lsl r6, r0, #0x1c
	cmp r7, #0x20
	orr r2, r8, r2
	strh r2, [r3, #0x10]
	ldrh r8, [r3, #0x10]
	add r0, r1, #0x200
	ldr r2, _022DD09C @ =0xFFFF000F
	bic r7, r8, #0xf000
	strh r7, [r3, #0x10]
	ldrh r7, [r3, #0x10]
	orr r6, r7, r6, lsr #16
	strh r6, [r3, #0x10]
	ldrh r6, [r3, #0xe]
	ldrsh r7, [sb, #0x46]
	and r0, r6, r0
	strh r0, [r3, #0xe]
	add r0, r7, r5
	ldrh r6, [r3, #0xe]
	and r0, r0, r1, lsr #23
	orr r0, r6, r0
	strh r0, [r3, #0xe]
	ldrh r0, [r3, #0x12]
	ldrsh r5, [sb, #0x48]
	and r0, r0, r2
	strh r0, [r3, #0x12]
	add r0, r5, r4
	ldrh r1, [r3, #0x12]
	lsl r0, r0, #0x14
	orr r0, r1, r0, lsr #16
	strh r0, [r3, #0x12]
	ldrhne r0, [r3, #6]
	bicne r0, r0, #0x3e00
	strhne r0, [r3, #6]
	bne _022DD06C
	ldrh r0, [r3, #0xe]
	bic r0, r0, #0x3e00
	strh r0, [r3, #0xe]
	ldrh r0, [r3, #0xe]
	orr r0, r0, #0x2000
	strh r0, [r3, #0xe]
_022DD06C:
	ldr r0, _022DD098 @ =0x020AFC4C
	ldr r1, _022DD0A0 @ =0x02353524
	ldr r0, [r0]
	mov r2, #1
	add r0, r0, #0x70
	bl FUN_0201B9F8
_022DD084:
	add sp, sp, #0x3c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DD08C: .4byte 0x02353518
_022DD090: .4byte 0x02350F8C
_022DD094: .4byte 0x02350F90
_022DD098: .4byte 0x020AFC4C
_022DD09C: .4byte 0xFFFF000F
_022DD0A0: .4byte 0x02353524
	arm_func_end ov29_022DC820

	arm_func_start ov29_022DD0A4
ov29_022DD0A4: @ 0x022DD0A4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr sb, _022DD500 @ =0x02350F8C
	ldr r6, _022DD504 @ =0x02353518
	ldr r0, [sb, r1, lsl #3]
	mov lr, #0xc
	ldr r4, [r6]
	mul r7, r0, lr
	ldr r5, [r4, #0x6f4]
	ldrh r4, [r6, #8]
	ldr r8, [r5, #4]
	add r5, sb, r1, lsl #3
	add sb, r8, r7
	ldr sl, [r5, #4]
	ldrsh fp, [sb, #0xa]
	bic r4, r4, #0xc00
	ldr ip, [sp, #0x30]
	strh r4, [r6, #8]
	ldr r4, [sp, #0x34]
	ldrh r5, [r6, #8]
	lsl r4, r4, #0x1e
	str r0, [sp]
	orr r4, r5, r4, lsr #20
	strh r4, [r6, #8]
	ldrb r5, [r8, r7]
	ldrb r4, [sb, #1]
	ldrsh sb, [r2]
	lsl r7, r5, #3
	lsl r5, r4, #3
	add r4, r7, r7, lsr #31
	sub sb, sb, r4, asr #1
	ldrsh r8, [ip]
	ldrsh r7, [r2, #2]
	add r5, r5, r5, lsr #31
	sub r8, sb, r8
	ldrsh sb, [r3]
	sub r5, r7, r5, asr #1
	ldrsh r4, [ip, #2]
	ldrsh r3, [r3, #2]
	str sl, [sp, #4]
	sub r4, r5, r4
	add r4, r3, r4
	add r5, sb, r8
	sub r3, lr, #0x2c
	cmp r5, r3
	subge r8, lr, #0x2c
	add r7, fp, #0x190
	sub r3, r4, #0x10
	cmpge r4, r8
	blt _022DD4F8
	cmp r5, #0xff
	cmplt r4, #0xc0
	bge _022DD4F8
	ldrh r8, [r6, #4]
	cmp r0, #0x10
	bic r8, r8, #0x2000
	strh r8, [r6, #4]
	ldrh r8, [r6, #4]
	orr r8, r8, #0x2000
	strh r8, [r6, #4]
	addls pc, pc, r0, lsl #2
	b _022DD468
_022DD19C: @ jump table
	b _022DD468 @ case 0
	b _022DD1E0 @ case 1
	b _022DD2AC @ case 2
	b _022DD2AC @ case 3
	b _022DD400 @ case 4
	b _022DD388 @ case 5
	b _022DD2AC @ case 6
	b _022DD2AC @ case 7
	b _022DD240 @ case 8
	b _022DD2AC @ case 9
	b _022DD2AC @ case 10
	b _022DD2AC @ case 11
	b _022DD1E0 @ case 12
	b _022DD2AC @ case 13
	b _022DD1E0 @ case 14
	b _022DD2AC @ case 15
	b _022DD318 @ case 16
_022DD1E0:
	ldrh r8, [r6, #4]
	ldr r4, _022DD508 @ =0x000001FF
	sub r0, lr, #0x20c
	bic r8, r8, #0xc000
	strh r8, [r6, #4]
	ldrh r8, [r6, #6]
	and r5, r5, r4
	ldr r4, _022DD50C @ =0xFFFF000F
	bic r8, r8, #0xc000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	lsl r3, r3, #0x14
	and r0, r8, r0
	strh r0, [r6, #6]
	ldrh r0, [r6, #6]
	orr r0, r0, r5
	strh r0, [r6, #6]
	ldrh r0, [r6, #0xa]
	and r0, r0, r4
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	orr r0, r0, r3, lsr #16
	strh r0, [r6, #0xa]
	b _022DD468
_022DD240:
	ldrh r8, [r6, #4]
	ldr r4, _022DD508 @ =0x000001FF
	sub r0, lr, #0x20c
	bic r8, r8, #0xc000
	strh r8, [r6, #4]
	ldrh r8, [r6, #4]
	and r5, r5, r4
	ldr r4, _022DD50C @ =0xFFFF000F
	orr r8, r8, #0x8000
	strh r8, [r6, #4]
	ldrh r8, [r6, #6]
	lsl r3, r3, #0x14
	bic r8, r8, #0xc000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	and r0, r8, r0
	strh r0, [r6, #6]
	ldrh r0, [r6, #6]
	orr r0, r0, r5
	strh r0, [r6, #6]
	ldrh r0, [r6, #0xa]
	and r0, r0, r4
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	orr r0, r0, r3, lsr #16
	strh r0, [r6, #0xa]
	b _022DD468
_022DD2AC:
	ldrh r8, [r6, #4]
	ldr r4, _022DD508 @ =0x000001FF
	sub r0, lr, #0x20c
	bic r8, r8, #0xc000
	strh r8, [r6, #4]
	ldrh r8, [r6, #6]
	and r5, r5, r4
	ldr r4, _022DD50C @ =0xFFFF000F
	bic r8, r8, #0xc000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	lsl r3, r3, #0x14
	orr r8, r8, #0x4000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	and r0, r8, r0
	strh r0, [r6, #6]
	ldrh r0, [r6, #6]
	orr r0, r0, r5
	strh r0, [r6, #6]
	ldrh r0, [r6, #0xa]
	and r0, r0, r4
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	orr r0, r0, r3, lsr #16
	strh r0, [r6, #0xa]
	b _022DD468
_022DD318:
	ldrh r8, [r6, #4]
	sub r0, lr, #0x20c
	ldr r4, _022DD508 @ =0x000001FF
	bic r8, r8, #0xc000
	strh r8, [r6, #4]
	ldrh r8, [r6, #6]
	add r5, r5, #8
	and r5, r5, r4
	bic r4, r8, #0xc000
	strh r4, [r6, #6]
	ldrh r8, [r6, #6]
	ldr r4, _022DD50C @ =0xFFFF000F
	lsl r3, r3, #0x14
	orr r8, r8, #0x4000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	and r0, r8, r0
	strh r0, [r6, #6]
	ldrh r0, [r6, #6]
	orr r0, r0, r5
	strh r0, [r6, #6]
	ldrh r0, [r6, #0xa]
	and r0, r0, r4
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	orr r0, r0, r3, lsr #16
	strh r0, [r6, #0xa]
	b _022DD468
_022DD388:
	ldrh r8, [r6, #4]
	ldr r4, _022DD508 @ =0x000001FF
	sub r0, lr, #0x20c
	bic r8, r8, #0xc000
	strh r8, [r6, #4]
	ldrh r8, [r6, #4]
	and r5, r5, r4
	ldr r4, _022DD50C @ =0xFFFF000F
	orr r8, r8, #0x4000
	strh r8, [r6, #4]
	ldrh r8, [r6, #6]
	lsl r3, r3, #0x14
	bic r8, r8, #0xc000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	orr r8, r8, #0x8000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	and r0, r8, r0
	strh r0, [r6, #6]
	ldrh r0, [r6, #6]
	orr r0, r0, r5
	strh r0, [r6, #6]
	ldrh r0, [r6, #0xa]
	and r0, r0, r4
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	orr r0, r0, r3, lsr #16
	strh r0, [r6, #0xa]
	b _022DD468
_022DD400:
	ldrh r8, [r6, #4]
	ldr r3, _022DD508 @ =0x000001FF
	sub r0, lr, #0x20c
	bic r8, r8, #0xc000
	strh r8, [r6, #4]
	ldrh r8, [r6, #6]
	and r5, r5, r3
	ldr r3, _022DD50C @ =0xFFFF000F
	bic r8, r8, #0xc000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	lsl r4, r4, #0x14
	orr r8, r8, #0x8000
	strh r8, [r6, #6]
	ldrh r8, [r6, #6]
	and r0, r8, r0
	strh r0, [r6, #6]
	ldrh r0, [r6, #6]
	orr r0, r0, r5
	strh r0, [r6, #6]
	ldrh r0, [r6, #0xa]
	and r0, r0, r3
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	orr r0, r0, r4, lsr #16
	strh r0, [r6, #0xa]
_022DD468:
	ldr r3, _022DD504 @ =0x02353518
	mov r0, #0x400
	ldrh r5, [r3, #8]
	rsb r0, r0, #0
	ldr r4, [sp, #4]
	and r5, r5, r0
	strh r5, [r3, #8]
	ldrh r6, [r3, #8]
	and r5, r7, r0, lsr #22
	lsl r0, r4, #0x1c
	orr r4, r6, r5
	strh r4, [r3, #8]
	ldrh r4, [r3, #8]
	cmp r1, #0x20
	bic r1, r4, #0xf000
	strh r1, [r3, #8]
	ldrh r1, [r3, #8]
	orr r0, r1, r0, lsr #16
	strh r0, [r3, #8]
	ldrh r0, [r3, #6]
	ldr r1, _022DD510 @ =0x0235351C
	biceq r0, r0, #0x3e00
	strheq r0, [r3, #6]
	ldrheq r0, [r3, #6]
	orreq r0, r0, #0x2000
	bicne r0, r0, #0x3e00
	strh r0, [r3, #6]
	ldrsh r3, [r2, #2]
	ldrsh r0, [ip, #2]
	ldr r2, _022DD514 @ =0x020AFC4C
	sub r0, r3, r0
	add r0, r0, r0, lsr #31
	asr r3, r0, #1
	ldr r0, [r2]
	add r2, r3, #1
	bl FUN_0201B9F8
_022DD4F8:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DD500: .4byte 0x02350F8C
_022DD504: .4byte 0x02353518
_022DD508: .4byte 0x000001FF
_022DD50C: .4byte 0xFFFF000F
_022DD510: .4byte 0x0235351C
_022DD514: .4byte 0x020AFC4C
	arm_func_end ov29_022DD0A4

	arm_func_start ov29_022DD518
ov29_022DD518: @ 0x022DD518
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r2, _022DD5AC @ =0x02353518
	mov r1, #0xc
	ldr r3, [r2]
	mul r2, r0, r1
	ldr r5, [r3, #0x6f4]
	ldr r1, [r3]
	ldr r3, [r5, #4]
	asr r0, r1, #1
	add r4, r3, r2
	add r0, r1, r0, lsr #30
	ldrb r3, [r3, r2]
	ldrb r2, [r4, #1]
	ldrsh r1, [r4, #8]
	asr r0, r0, #2
	smulbb r2, r3, r2
	lsl r6, r2, #5
	bl FUN_0208FEA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r3, [r4, #4]
	ldrsh r2, [r4, #0xa]
	ldr r0, _022DD5B0 @ =0x020AFC4C
	mla r4, r6, r1, r3
	add r1, r2, #0x190
	ldr r5, [r5, #0xc]
	lsl r2, r1, #0x10
	ldr r0, [r0]
	mov r3, r6
	add r1, r5, r4
	asr r2, r2, #0x10
	bl FUN_0201BAC8
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DD5AC: .4byte 0x02353518
_022DD5B0: .4byte 0x020AFC4C
	arm_func_end ov29_022DD518

	arm_func_start ov29_022DD5B4
ov29_022DD5B4: @ 0x022DD5B4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r2, _022DD758 @ =0x02353518
	ldr r0, [r2]
	cmp r0, #0
	bne _022DD60C
	ldr r0, _022DD75C @ =0x0236CEF0
	ldr r1, _022DD760 @ =0x000006FC
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _022DD764 @ =0x0236D5EC
	mov r1, #0x6000
	bl FUN_02003250
	ldr r0, _022DD764 @ =0x0236D5EC
	ldr r1, _022DD768 @ =0x0235109C
	bl FUN_02008BF4
	ldr r0, _022DD758 @ =0x02353518
	ldr r1, _022DD764 @ =0x0236D5EC
	ldr r0, [r0]
	add r0, r0, #0x2f4
	add r0, r0, #0x400
	bl FUN_0201F4B4
_022DD60C:
	ldr r0, _022DD758 @ =0x02353518
	mov r2, #1
	ldr r1, [r0]
	mov sb, #0
	strb r2, [r1, #0x6e8]
	ldr r1, [r0]
	ldr r4, _022DD76C @ =0x020AFC4C
	str sb, [r1]
	ldr r0, [r0]
	mov r8, #0xe0
	ldr sl, [r0, #0x6f4]
	mov r7, #0xff
	add r6, sp, #8
	mov r5, r2
	mov fp, #0x10
_022DD648:
	str r8, [sp]
	str r7, [sp, #4]
	ldr r1, [sl, #0x14]
	mov r0, r6
	mov r2, r5
	mov r3, fp
	add r1, r1, sb, lsl #6
	bl FUN_0201F598
	lsl r2, sb, #0x10
	ldr r0, [r4]
	mov r1, r6
	lsr r2, r2, #0x10
	bl FUN_0201B43C
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
	cmp sb, #0x10
	blt _022DD648
	mov r0, #1
	mov r1, #0
	bl ov29_022DD518
	mov r0, #2
	mov r1, #0
	bl ov29_022DD518
	mov r0, #3
	mov r1, #0
	bl ov29_022DD518
	mov r0, #4
	mov r1, #0
	bl ov29_022DD518
	mov r0, #5
	mov r1, #0
	bl ov29_022DD518
	mov r0, #6
	mov r1, #0
	bl ov29_022DD518
	mov r0, #7
	mov r1, #0
	bl ov29_022DD518
	mov r0, #8
	mov r1, #0
	bl ov29_022DD518
	mov r0, #9
	mov r1, #0
	bl ov29_022DD518
	mov r0, #0xa
	mov r1, #0
	bl ov29_022DD518
	mov r0, #0xb
	mov r1, #0
	bl ov29_022DD518
	mov r0, #0xc
	mov r1, #0
	bl ov29_022DD518
	mov r0, #0xd
	mov r1, #0
	bl ov29_022DD518
	mov r0, #0xe
	mov r1, #0
	bl ov29_022DD518
	mov r0, #0xf
	mov r1, #0
	bl ov29_022DD518
	mov r0, #0x10
	mov r1, #0
	bl ov29_022DD518
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DD758: .4byte 0x02353518
_022DD75C: .4byte 0x0236CEF0
_022DD760: .4byte 0x000006FC
_022DD764: .4byte 0x0236D5EC
_022DD768: .4byte 0x0235109C
_022DD76C: .4byte 0x020AFC4C
	arm_func_end ov29_022DD5B4

	arm_func_start ov29_022DD770
ov29_022DD770: @ 0x022DD770
	push {r3, lr}
	ldr r0, _022DD7A8 @ =0x02353518
	mov r1, #8
	ldr r0, [r0]
	add r0, r0, #0x2ec
	add r0, r0, #0x400
	bl FUN_02003250
	ldr r0, _022DD7A8 @ =0x02353518
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0x6f4]
	ldr r0, [r0]
	str r2, [r0, #0x6f8]
	pop {r3, pc}
	.align 2, 0
_022DD7A8: .4byte 0x02353518
	arm_func_end ov29_022DD770

	arm_func_start ov29_022DD7AC
ov29_022DD7AC: @ 0x022DD7AC
	push {r3, lr}
	ldr r0, _022DD7D4 @ =0x02353518
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl ov29_022DD770
	ldr r0, _022DD7D4 @ =0x02353518
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022DD7D4: .4byte 0x02353518
	arm_func_end ov29_022DD7AC

	arm_func_start ov29_022DD7D8
ov29_022DD7D8: @ 0x022DD7D8
	push {r4, r5, r6, lr}
	ldr ip, _022DD824 @ =0x02353518
	mov r6, r1
	ldr r1, [ip]
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	popeq {r4, r5, r6, pc}
	bl ov29_022DC78C
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	strh r6, [r0, #8]
	str r5, [r0, #0xc]
	ldrb r2, [sp, #0x10]
	str r4, [r0, #0x10]
	mov r1, #0
	strb r2, [r0, #0x14]
	strb r1, [r0, #0x44]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DD824: .4byte 0x02353518
	arm_func_end ov29_022DD7D8

	arm_func_start ov29_022DD828
ov29_022DD828: @ 0x022DD828
	ldr r1, _022DD838 @ =0x02353518
	ldr r1, [r1]
	strb r0, [r1, #0x6e8]
	bx lr
	.align 2, 0
_022DD838: .4byte 0x02353518
	arm_func_end ov29_022DD828

	arm_func_start ov29_022DD83C
ov29_022DD83C: @ 0x022DD83C
	push {r4, r5, r6, lr}
	ldr r1, _022DD8B0 @ =0x02353518
	ldr r4, [sp, #0x14]
	ldr r1, [r1]
	mov r6, r2
	mov r5, r3
	cmp r1, #0
	popeq {r4, r5, r6, pc}
	bl ov29_022DC78C
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	lsl r1, r6, #0x10
	mov r2, #1
	strb r2, [r0, #0x44]
	asr r1, r1, #0x10
	strh r1, [r0, #0x4a]
	strh r1, [r0, #0x4c]
	ldr r1, [sp, #0x10]
	strh r5, [r0, #0x46]
	strh r1, [r0, #0x48]
	ldrh r1, [r4]
	strh r1, [r0, #0x22]
	ldrh r1, [r4, #2]
	strh r1, [r0, #0x24]
	ldrh r1, [r4, #0xc]
	strh r1, [r0, #0x26]
	ldrh r1, [r4, #0xe]
	strh r1, [r0, #0x28]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DD8B0: .4byte 0x02353518
	arm_func_end ov29_022DD83C

	arm_func_start ov29_022DD8B4
ov29_022DD8B4: @ 0x022DD8B4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _022DDA50 @ =0x02353518
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r0]
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022DD9C4
_022DD8E8: @ jump table
	b _022DD8F8 @ case 0
	b _022DD92C @ case 1
	b _022DD960 @ case 2
	b _022DD994 @ case 3
_022DD8F8:
	mov r0, #1
	mov r1, r0
	bl ov29_022DD518
	mov r0, #2
	mov r1, #1
	bl ov29_022DD518
	mov r0, #3
	mov r1, #1
	bl ov29_022DD518
	mov r0, #4
	mov r1, #1
	bl ov29_022DD518
	b _022DD9C4
_022DD92C:
	mov r0, #5
	mov r1, #1
	bl ov29_022DD518
	mov r0, #6
	mov r1, #1
	bl ov29_022DD518
	mov r0, #7
	mov r1, #1
	bl ov29_022DD518
	mov r0, #8
	mov r1, #1
	bl ov29_022DD518
	b _022DD9C4
_022DD960:
	mov r0, #9
	mov r1, #1
	bl ov29_022DD518
	mov r0, #0xa
	mov r1, #1
	bl ov29_022DD518
	mov r0, #0xb
	mov r1, #1
	bl ov29_022DD518
	mov r0, #0xc
	mov r1, #1
	bl ov29_022DD518
	b _022DD9C4
_022DD994:
	mov r0, #0xd
	mov r1, #1
	bl ov29_022DD518
	mov r0, #0xe
	mov r1, #1
	bl ov29_022DD518
	mov r0, #0xf
	mov r1, #1
	bl ov29_022DD518
	mov r0, #0x10
	mov r1, #1
	bl ov29_022DD518
_022DD9C4:
	mov sb, #0
	ldr r6, _022DDA50 @ =0x02353518
	mov r8, sb
	mov fp, #1
	mov r7, sb
	mov r5, #0x50
_022DD9DC:
	mul r1, sb, r5
	ldr r2, [r6]
	add r0, r2, r1
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _022DDA20
	add r0, r2, #4
	add sl, r0, r1
	mov r0, sl
	mov r1, r8
	mov r2, r4
	bl ov29_022DC820
	mov r0, sl
	mov r1, fp
	mov r2, r4
	bl ov29_022DC820
	strb r7, [sl, #0x44]
_022DDA20:
	add sb, sb, #1
	cmp sb, #0x16
	blt _022DD9DC
	ldr r0, _022DDA50 @ =0x02353518
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0x6e4]
	ldr r1, [r0]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022DDA50: .4byte 0x02353518
	arm_func_end ov29_022DD8B4

	arm_func_start ov29_022DDA54
ov29_022DDA54: @ 0x022DDA54
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _022DDB60 @ =0x02353518
	mov r7, r0
	ldr ip, [r4]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #0
	popeq {r3, r4, r5, r6, r7, pc}
	bl ov29_022DC78C
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, _022DDB60 @ =0x02353518
	mov r3, #0
	ldr ip, [r0]
	mov r0, #0x50
	b _022DDAB8
_022DDA98:
	mul r2, r3, r0
	add r1, ip, r2
	ldrb r1, [r1, #4]
	cmp r1, #0
	addeq r0, ip, #4
	addeq r1, r0, r2
	beq _022DDAC4
	add r3, r3, #1
_022DDAB8:
	cmp r3, #0x16
	blt _022DDA98
	mov r1, #0
_022DDAC4:
	cmp r1, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, #1
	strb r0, [r1]
	str r7, [r1, #4]
	strh r6, [r1, #8]
	mov r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	ldrh r3, [r5]
	ldr r2, _022DDB64 @ =0x02350F88
	strh r3, [r1, #0x16]
	ldrh r3, [r5, #2]
	strh r3, [r1, #0x18]
	strb r4, [r1, #0x15]
	ldrh r3, [r2, #2]
	ldrh r4, [r2]
	strh r3, [sp, #2]
	mov r3, r3
	strh r4, [r1, #0x1e]
	strh r3, [r1, #0x20]
	ldrh r2, [r1, #0x1e]
	strh r4, [sp]
	strh r2, [r1, #0x1a]
	ldrh r2, [r1, #0x20]
	strh r2, [r1, #0x1c]
	strh r4, [r1, #0x26]
	strh r3, [r1, #0x28]
	ldrh r2, [r1, #0x26]
	strh r2, [r1, #0x22]
	ldrh r2, [r1, #0x28]
	strh r2, [r1, #0x24]
	str r0, [r1, #0x2c]
	str r0, [r1, #0x30]
	str r0, [r1, #0x34]
	str r0, [r1, #0x38]
	str r0, [r1, #0x3c]
	str r0, [r1, #0x40]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DDB60: .4byte 0x02353518
_022DDB64: .4byte 0x02350F88
	arm_func_end ov29_022DDA54

	arm_func_start ov29_022DDB68
ov29_022DDB68: @ 0x022DDB68
	push {r3, lr}
	ldr r1, _022DDB94 @ =0x02353518
	ldr r1, [r1]
	cmp r1, #0
	popeq {r3, pc}
	bl ov29_022DC78C
	cmp r0, #0
	popeq {r3, pc}
	mov r1, #0x50
	bl FUN_02003250
	pop {r3, pc}
	.align 2, 0
_022DDB94: .4byte 0x02353518
	arm_func_end ov29_022DDB68

	arm_func_start ov29_022DDB98
ov29_022DDB98: @ 0x022DDB98
	push {r4, r5, r6, lr}
	ldr r4, _022DDBFC @ =0x02353518
	mov r6, r1
	ldr r1, [r4]
	mov r4, r2
	mov r5, r3
	cmp r1, #0
	popeq {r4, r5, r6, pc}
	bl ov29_022DC78C
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	ldrh r1, [r6]
	strh r1, [r0, #0x16]
	ldrh r1, [r6, #2]
	strh r1, [r0, #0x18]
	strb r5, [r0, #0x15]
	ldrh r1, [r4]
	strh r1, [r0, #0x1a]
	ldrh r1, [r4, #2]
	strh r1, [r0, #0x1c]
	ldrh r1, [r4, #0xc]
	strh r1, [r0, #0x1e]
	ldrh r1, [r4, #0xe]
	strh r1, [r0, #0x20]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DDBFC: .4byte 0x02353518
	arm_func_end ov29_022DDB98

	arm_func_start ov29_022DDC00
ov29_022DDC00: @ 0x022DDC00
	push {r3, lr}
	ldr r0, _022DDC8C @ =0x027E0068
	mov r1, #0x2000
	bl FUN_02003250
	ldr r1, _022DDC8C @ =0x027E0068
	ldr r0, _022DDC90 @ =0x023735EC
	ldr r3, _022DDC94 @ =0x02373690
	ldr r2, _022DDC98 @ =0x023735FC
	mov lr, #1
	str r1, [r0, #0x10]
_022DDC28:
	sub r0, lr, #1
	add r0, r0, r0, lsl #1
	add r1, lr, #1
	add ip, r3, r0, lsl #12
	lsl r0, r1, #0x10
	str ip, [r2, lr, lsl #2]
	asr lr, r0, #0x10
	cmp lr, #4
	blt _022DDC28
	mov r0, #0
	ldr r2, _022DDC9C @ =0x0237360C
	mov r1, r0
_022DDC58:
	add r0, r0, #1
	lsl r0, r0, #0x10
	str r1, [r2]
	asr r0, r0, #0x10
	str r1, [r2, #4]
	cmp r0, #4
	add r2, r2, #0x20
	blt _022DDC58
	ldr r0, _022DDC90 @ =0x023735EC
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022DDC8C: .4byte 0x027E0068
_022DDC90: .4byte 0x023735EC
_022DDC94: .4byte 0x02373690
_022DDC98: .4byte 0x023735FC
_022DDC9C: .4byte 0x0237360C
	arm_func_end ov29_022DDC00

	arm_func_start ov29_022DDCA0
ov29_022DDCA0: @ 0x022DDCA0
	bx lr
	arm_func_end ov29_022DDCA0

	arm_func_start ov29_022DDCA4
ov29_022DDCA4: @ 0x022DDCA4
	push {r4, r5, r6, lr}
	ldr r4, _022DDD40 @ =0x023735FC
	ldr r6, _022DDD44 @ =0x0237360C
	ldr r5, [r4, r0, lsl #2]
	add r4, r6, r0, lsl #5
	stmib r4, {r1, r5}
	cmp r0, #0
	ldreq r5, _022DDD48 @ =0x00001FFC
	ldr ip, _022DDD40 @ =0x023735FC
	ldrne r5, _022DDD4C @ =0x00002FFC
	mov lr, #0xff
	str r5, [r4, #0x14]
	ldr r5, [ip, r0, lsl #2]
	cmp r2, #0
	strb lr, [r5]
	ldr r6, [ip, r0, lsl #2]
	ldr r5, [r4, #0x14]
	add r5, r6, r5
	strb lr, [r5, #3]
	ldr r6, [ip, r0, lsl #2]
	ldr r5, [r4, #0x14]
	add r5, r6, r5
	strb lr, [r5, #2]
	ldr ip, [ip, r0, lsl #2]
	ldr r0, [r4, #0x14]
	add r0, ip, r0
	strb lr, [r0, #1]
	ldr ip, [r4, #8]
	ldr r0, [r4, #0x14]
	add r0, ip, r0
	str r0, [r4, #0xc]
	str r1, [r4, #0x10]
	str r2, [r4, #0x18]
	str r3, [r4, #0x1c]
	beq _022DDD34
	blx r2
_022DDD34:
	mov r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DDD40: .4byte 0x023735FC
_022DDD44: .4byte 0x0237360C
_022DDD48: .4byte 0x00001FFC
_022DDD4C: .4byte 0x00002FFC
	arm_func_end ov29_022DDCA4

	arm_func_start ov29_022DDD50
ov29_022DDD50: @ 0x022DDD50
	push {r3, lr}
	mov r3, r2
	movs lr, r0
	mov ip, r1
	popeq {r3, pc}
	ldr r0, _022DDDA0 @ =0x0237360C
	mvn r1, #0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	rsb r0, r0, #0
	cmp r0, r1
	popeq {r3, pc}
	mov r1, lr
	mov r2, ip
	bl ov29_022DDCA4
	pop {r3, pc}
	.align 2, 0
_022DDDA0: .4byte 0x0237360C
	arm_func_end ov29_022DDD50

	arm_func_start ov29_022DDDA4
ov29_022DDDA4: @ 0x022DDDA4
	push {r3, r4, r5, r6, r7, lr}
	movs r4, r0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r7, #0
	ldr r6, _022DDDFC @ =0x0237360C
	mov r5, r7
_022DDDBC:
	ldr r0, [r6, #4]
	cmp r0, r4
	bne _022DDDE0
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _022DDDD8
	blx r0
_022DDDD8:
	str r5, [r6]
	str r5, [r6, #4]
_022DDDE0:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	add r6, r6, #0x20
	blt _022DDDBC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022DDDFC: .4byte 0x0237360C
	arm_func_end ov29_022DDDA4

	arm_func_start ov29_022DDE00
ov29_022DDE00: @ 0x022DDE00
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	b _022DDE18
_022DDE10:
	bl ov29_022DDEF8
	add r4, r4, #1
_022DDE18:
	cmp r4, r5
	blt _022DDE10
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022DDE00

	arm_func_start ov29_022DDE30
ov29_022DDE30: @ 0x022DDE24
	ldr ip, _022DDE2C @ =ov29_022DDE30
	bx ip
	.align 2, 0
_022DDE2C: .4byte ov29_022DDE30
	arm_func_end ov29_022DDE30

	arm_func_start ov29_022DDE30
ov29_022DDE30: @ 0x022DDE30
	push {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	ldr r0, _022DDEDC @ =0x023735F8
	mov r1, sp
	str r1, [r0]
	ldr r1, _022DDEE0 @ =0x023735EC
	mov r2, #0
	str r2, [r1]
	ldr r3, _022DDEE4 @ =0x023510B8
	ldr r4, [r3]
	ldr r3, _022DDEE8 @ =0x0237360C
_022DDE58:
	ldrh r5, [r3]
	cmp r5, #1
	beq _022DDE7C
	cmp r5, #2
	beq _022DDE7C
	add r2, r2, #1
	add r3, r3, #0x20
	cmp r2, r4
	blt _022DDE58
_022DDE7C:
	str r2, [r1]
	cmp r2, r4
	bge _022DDED8
	ldr r4, _022DDEEC @ =0x0237368C
	str r2, [r4]
	ldr r6, _022DDEF0 @ =0x023735F4
	ldr r7, [r3, #0xc]
	str r7, [r6]
	ldr r6, _022DDEF4 @ =0x023735F0
	ldr r7, [r3, #0x10]
	str r7, [r6]
	cmp r5, #2
	bne _022DDEC0
	ldr r6, _022DDEF0 @ =0x023735F4
	ldr sp, [r6]
	pop {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
_022DDEBC:
	.byte 0x05, 0x00, 0x00, 0xEA
_022DDEC0:
	ldr r6, _022DDEF0 @ =0x023735F4
	ldr sp, [r6]
	ldr r7, _022DDEF4 @ =0x023735F0
	ldr r2, [r7]
	bx r2
_022DDED4:
	.byte 0xFF, 0xFF, 0xFF, 0xEA
_022DDED8:
	pop {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
	.align 2, 0
_022DDEDC: .4byte 0x023735F8
_022DDEE0: .4byte 0x023735EC
_022DDEE4: .4byte 0x023510B8
_022DDEE8: .4byte 0x0237360C
_022DDEEC: .4byte 0x0237368C
_022DDEF0: .4byte 0x023735F4
_022DDEF4: .4byte 0x023735F0
	arm_func_end ov29_022DDE30

	arm_func_start ov29_022DDEF8
ov29_022DDEF8: @ 0x022DDEF8
	push {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	ldr r0, _022DDFD8 @ =0x023735F4
	str sp, [r0]
	mov r1, #0x20
	ldr r3, _022DDFDC @ =0x023735EC
	ldr r2, [r3]
	mul r1, r1, r2
	ldr r3, _022DDFE0 @ =0x0237360C
	add r4, r3, r1
	ldrh r5, [r4]
	cmp r5, #1
	bne _022DDF30
	mov r5, #2
	str r5, [r4]
_022DDF30:
	ldr r5, [r0]
	str r5, [r4, #0xc]
	ldr r5, _022DDFE4 @ =0x023735F0
	ldr r5, [r5]
	str r5, [r4, #0x10]
	mov r3, r4
	ldr r1, _022DDFE8 @ =0x023510B8
	ldr r4, [r1]
_022DDF50:
	add r2, r2, #1
	add r3, r3, #0x20
	cmp r2, r4
	bge _022DDF78
	ldrh r5, [r3]
	cmp r5, #1
	beq _022DDF78
	cmp r5, #2
	beq _022DDF78
	b _022DDF50
_022DDF78:
	ldr r6, _022DDFDC @ =0x023735EC
	str r2, [r6]
	cmp r2, r4
	bge _022DDFCC
	ldr r6, _022DDFD8 @ =0x023735F4
	ldr r7, [r3, #0xc]
	str r7, [r6]
	ldr r6, _022DDFE4 @ =0x023735F0
	ldr r7, [r3, #0x10]
	str r7, [r6]
	cmp r5, #2
	bne _022DDFB8
	ldr r6, _022DDFD8 @ =0x023735F4
	ldr sp, [r6]
	pop {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
_022DDFB4:
	.byte 0x04, 0x00, 0x00, 0xEA
_022DDFB8:
	ldr r6, _022DDFD8 @ =0x023735F4
	ldr sp, [r6]
	ldr r7, _022DDFE4 @ =0x023735F0
	ldr r2, [r7]
	bx r2
_022DDFCC:
	ldr r0, _022DDFEC @ =0x023735F8
	ldr sp, [r0]
	pop {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
	.align 2, 0
_022DDFD8: .4byte 0x023735F4
_022DDFDC: .4byte 0x023735EC
_022DDFE0: .4byte 0x0237360C
_022DDFE4: .4byte 0x023735F0
_022DDFE8: .4byte 0x023510B8
_022DDFEC: .4byte 0x023735F8
	arm_func_end ov29_022DDEF8

	arm_func_start ov29_020519D0
ov29_020519D0: @ 0x022DDFF0
	ldr ip, _022DDFF8 @ =FUN_020519D0
	bx ip
	.align 2, 0
_022DDFF8: .4byte FUN_020519D0
	arm_func_end ov29_020519D0

	arm_func_start ov29_022DDFFC
ov29_022DDFFC: @ 0x022DDFFC
	push {r3, lr}
	mov r0, #0x44
	mov r1, #0
	bl FUN_02001170
	ldr r2, _022DE064 @ =0x0235352C
	mov r1, #0x44
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _022DE064 @ =0x0235352C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x20
	bl ov29_022DE22C
	ldr r0, _022DE064 @ =0x0235352C
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x2c
	bl ov29_022DE22C
	mov r0, #0
	bl FUN_02051ED4
	mov r1, r0
	ldr r0, _022DE064 @ =0x0235352C
	mov r2, #0x20
	ldr r0, [r0]
	bl FUN_02063628
	pop {r3, pc}
	.align 2, 0
_022DE064: .4byte 0x0235352C
	arm_func_end ov29_022DDFFC

	arm_func_start ov29_022DE068
ov29_022DE068: @ 0x022DE068
	push {r3, lr}
	ldr r0, _022DE09C @ =0x0235352C
	ldr r0, [r0]
	add r0, r0, #0x20
	bl ov29_022DE274
	ldr r0, _022DE09C @ =0x0235352C
	ldr r0, [r0]
	add r0, r0, #0x2c
	bl ov29_022DE274
	ldr r0, _022DE09C @ =0x0235352C
	ldr r0, [r0]
	bl FUN_0206367C
	pop {r3, pc}
	.align 2, 0
_022DE09C: .4byte 0x0235352C
	arm_func_end ov29_022DE068

	arm_func_start ov29_022DE0A0
ov29_022DE0A0: @ 0x022DE0A0
	push {r3, lr}
	bl ov29_022DE068
	bl FUN_02051B44
	ldr r0, _022DE0C8 @ =0x0235352C
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _022DE0C8 @ =0x0235352C
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022DE0C8: .4byte 0x0235352C
	arm_func_end ov29_022DE0A0

	arm_func_start ov29_022DE0CC
ov29_022DE0CC: @ 0x022DE0CC
	push {r3, lr}
	ldr r0, _022DE0E8 @ =0x0235352C
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02051C24
	pop {r3, pc}
	.align 2, 0
_022DE0E8: .4byte 0x0235352C
	arm_func_end ov29_022DE0CC

	arm_func_start ov29_022DE0EC
ov29_022DE0EC: @ 0x022DE0EC
	push {r4, lr}
	ldr r2, _022DE118 @ =0x0235352C
	mov r4, r0
	ldr r0, [r2]
	mov r2, r1
	mov r1, r4
	bl FUN_02063734
	ldr r0, _022DE118 @ =0x0235352C
	ldr r0, [r0]
	str r4, [r0, #0x18]
	pop {r4, pc}
	.align 2, 0
_022DE118: .4byte 0x0235352C
	arm_func_end ov29_022DE0EC

	arm_func_start ov29_022DE11C
ov29_022DE11C: @ 0x022DE11C
	ldr r0, _022DE12C @ =0x0235352C
	ldr ip, _022DE130 @ =FUN_02063770
	ldr r0, [r0]
	bx ip
	.align 2, 0
_022DE12C: .4byte 0x0235352C
_022DE130: .4byte FUN_02063770
	arm_func_end ov29_022DE11C

	arm_func_start ov29_022DE134
ov29_022DE134: @ 0x022DE134
	push {r3, lr}
	ldr ip, _022DE158 @ =0x0235352C
	str r3, [sp]
	mov r2, r0
	mov r3, r1
	ldr r0, [ip]
	mov r1, #0
	bl FUN_02063830
	pop {r3, pc}
	.align 2, 0
_022DE158: .4byte 0x0235352C
	arm_func_end ov29_022DE134

	arm_func_start ov29_022DE15C
ov29_022DE15C: @ 0x022DE15C
	push {r3, lr}
	mov r0, #0
	mov r1, r0
	bl FUN_02051DD0
	mov r0, #1
	mov r1, #0
	bl FUN_02051DD0
	mov r0, #0
	mov r1, #1
	bl FUN_02051DD0
	mov r0, #1
	mov r1, r0
	bl FUN_02051DD0
	mov r0, #0
	mov r1, r0
	bl FUN_02051E60
	mov r0, #1
	mov r1, #0
	bl FUN_02051E60
	mov r0, #0
	mov r1, #1
	bl FUN_02051E60
	mov r0, #1
	mov r1, r0
	bl FUN_02051E60
	mov r0, #0
	bl ov29_022DE1E4
	mov r0, #1
	bl ov29_022DE1E4
	mov r0, #0
	bl ov29_022DE208
	mov r0, #1
	bl ov29_022DE208
	pop {r3, pc}
	arm_func_end ov29_022DE15C

	arm_func_start ov29_022DE1E4
ov29_022DE1E4: @ 0x022DE1E4
	ldr r2, _022DE200 @ =0x0235352C
	mov r1, #0xc
	ldr r2, [r2]
	ldr ip, _022DE204 @ =FUN_0200B3D4
	mla r1, r0, r1, r2
	ldr r0, [r1, #0x24]
	bx ip
	.align 2, 0
_022DE200: .4byte 0x0235352C
_022DE204: .4byte FUN_0200B3D4
	arm_func_end ov29_022DE1E4

	arm_func_start ov29_022DE208
ov29_022DE208: @ 0x022DE208
	ldr r2, _022DE224 @ =0x0235352C
	mov r1, #0xc
	ldr r2, [r2]
	ldr ip, _022DE228 @ =FUN_0200B330
	mla r1, r0, r1, r2
	ldr r0, [r1, #0x24]
	bx ip
	.align 2, 0
_022DE224: .4byte 0x0235352C
_022DE228: .4byte FUN_0200B330
	arm_func_end ov29_022DE208

	arm_func_start ov29_022DE22C
ov29_022DE22C: @ 0x022DE22C
	push {r3, lr}
	mov r3, r0
	cmp r1, #0
	bne _022DE254
	ldr r2, _022DE26C @ =0x06005000
	add r0, r3, #4
	add r1, r3, #8
	str r2, [r3]
	bl FUN_020275C0
	pop {r3, pc}
_022DE254:
	ldr r2, _022DE270 @ =0x06205000
	add r0, r3, #4
	add r1, r3, #8
	str r2, [r3]
	bl FUN_020275DC
	pop {r3, pc}
	.align 2, 0
_022DE26C: .4byte 0x06005000
_022DE270: .4byte 0x06205000
	arm_func_end ov29_022DE22C

	arm_func_start ov29_022DE274
ov29_022DE274: @ 0x022DE274
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	arm_func_end ov29_022DE274

	arm_func_start ov29_022DE288
ov29_022DE288: @ 0x022DE288
	ldr r0, [r0]
	bx lr
	arm_func_end ov29_022DE288

	arm_func_start ov29_022DE290
ov29_022DE290: @ 0x022DE290
	strh r1, [r0, #0xa]
	mov r2, #0
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xe]
	ldr r1, _022DE2C4 @ =0x02353538
	strb r2, [r0, #0xf]
	ldr r2, [r1]
	mov r1, #1
	add r2, r2, #0x1e0
	str r2, [r0, #0x10]
	strb r1, [r0, #8]
	bx lr
	.align 2, 0
_022DE2C4: .4byte 0x02353538
	arm_func_end ov29_022DE290

	arm_func_start ov29_022DE2C8
ov29_022DE2C8: @ 0x022DE2C8
	str r2, [r0, #0x14]
	strh r1, [r0, #0xa]
	mov r2, #0
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xe]
	ldr r1, _022DE2FC @ =0x02353538
	strb r2, [r0, #0xf]
	ldr r1, [r1]
	add r1, r1, #0x1e0
	str r1, [r0, #0x10]
	strb r2, [r0, #8]
	bx lr
	.align 2, 0
_022DE2FC: .4byte 0x02353538
	arm_func_end ov29_022DE2C8

	arm_func_start ov29_022DE300
ov29_022DE300: @ 0x022DE300
	push {r3, lr}
	mov r0, #0x74
	mov r1, #0
	bl FUN_02001170
	ldr r2, _022DE410 @ =0x02353530
	mov r1, #0x74
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _022DE410 @ =0x02353530
	mov r2, #0x100
	ldr r1, [r0]
	strh r2, [r1, #4]
	ldr r1, [r0]
	strh r2, [r1, #2]
	ldr r2, [r0]
	ldrsh r1, [r2, #2]
	strh r1, [r2, #6]
	ldr r2, [r0]
	ldrsh r1, [r2, #4]
	strh r1, [r2, #8]
	ldr r0, [r0]
	add r0, r0, #0xc
	bl FUN_0200A2CC
	ldr r1, _022DE410 @ =0x02353530
	mov r0, #0
	ldr r1, [r1]
	strb r0, [r1, #0x4c]
	strb r0, [r1, #0x4d]
	strb r0, [r1, #0x4e]
	strb r0, [r1, #0x4f]
	bl FUN_02051ED4
	ldr r2, [r0, #0x14]
	ldr r1, _022DE410 @ =0x02353530
	mov r0, #0
	ldr r1, [r1]
	str r2, [r1, #0x34]
	bl FUN_0201BCCC
	ldr r2, [r0, #0x14]
	ldr r1, _022DE410 @ =0x02353530
	mov r0, #0
	ldr r1, [r1]
	str r2, [r1, #0x38]
	bl FUN_0201BCF4
	ldr r3, [r0, #0x14]
	ldr r1, _022DE410 @ =0x02353530
	mov r0, #1
	ldr r2, [r1]
	mov r1, #0
	str r3, [r2, #0x3c]
	bl FUN_0201BD1C
	mov r0, #4
	ldr r1, _022DE414 @ =0x0000040A
	ldr r2, _022DE410 @ =0x02353530
	mov r3, #0
	ldr r2, [r2]
	add r2, r2, #0x40
	bl FUN_0200C388
	ldr r0, _022DE410 @ =0x02353530
	ldr r1, [r0]
	add r0, r1, #0x48
	ldr r1, [r1, #0x40]
	bl FUN_0201F4B4
	ldr r0, _022DE410 @ =0x02353530
	mov r1, #0x20
	ldr r0, [r0]
	add r0, r0, #0x51
	bl FUN_02003250
	pop {r3, pc}
	.align 2, 0
_022DE410: .4byte 0x02353530
_022DE414: .4byte 0x0000040A
	arm_func_end ov29_022DE300

	arm_func_start ov29_022DE418
ov29_022DE418: @ 0x022DE418
	push {r3, lr}
	ldr r0, _022DE478 @ =0x02353530
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	mov r0, #0
	bl FUN_02051ED4
	ldr r1, _022DE478 @ =0x02353530
	ldr r1, [r1]
	ldr r1, [r1, #0x34]
	str r1, [r0, #0x14]
	mov r0, #0
	bl FUN_0201BCCC
	ldr r1, _022DE478 @ =0x02353530
	ldr r1, [r1]
	ldr r1, [r1, #0x38]
	str r1, [r0, #0x14]
	mov r0, #0
	bl FUN_0201BCF4
	ldr r1, _022DE478 @ =0x02353530
	ldr r1, [r1]
	ldr r1, [r1, #0x3c]
	str r1, [r0, #0x14]
	pop {r3, pc}
	.align 2, 0
_022DE478: .4byte 0x02353530
	arm_func_end ov29_022DE418

	arm_func_start ov29_022DE47C
ov29_022DE47C: @ 0x022DE47C
	ldr r2, _022DE494 @ =0x02353530
	ldr r2, [r2]
	cmp r2, #0
	addne r0, r2, r0
	strbne r1, [r0, #0x51]
	bx lr
	.align 2, 0
_022DE494: .4byte 0x02353530
	arm_func_end ov29_022DE47C

	arm_func_start ov29_022DE498
ov29_022DE498: @ 0x022DE498
	push {r3, lr}
	ldr r0, _022DE4F8 @ =0x02353530
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl ov29_022DE418
	ldr r0, _022DE4F8 @ =0x02353530
	ldr r0, [r0]
	add r0, r0, #0x40
	bl FUN_02008BD4
	mov r0, #0
	mov r1, r0
	bl FUN_0201BD1C
	ldr r0, _022DE4F8 @ =0x02353530
	ldr r0, [r0]
	add r0, r0, #0xc
	bl FUN_0200A2F4
	ldr r0, _022DE4F8 @ =0x02353530
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _022DE4F8 @ =0x02353530
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022DE4F8: .4byte 0x02353530
	arm_func_end ov29_022DE498

	arm_func_start ov29_022DE4FC
ov29_022DE4FC: @ 0x022DE4FC
	push {r4, lr}
	ldr r1, _022DE55C @ =0x02353530
	mov r0, #0
	ldr r1, [r1]
	ldrh r4, [r1, #4]
	bl FUN_02051ED4
	ldr r2, _022DE560 @ =0x01FF9BA0
	mov r1, r4
	bl ov29_022DE2C8
	mov r0, #0
	bl FUN_0201BCCC
	ldr r1, _022DE55C @ =0x02353530
	ldr r2, _022DE564 @ =0x01FF9E14
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	bl ov29_022DE2C8
	mov r0, #0
	bl FUN_0201BCF4
	ldr r1, _022DE55C @ =0x02353530
	ldr r2, _022DE568 @ =0x01FF9F80
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	bl ov29_022DE2C8
	pop {r4, pc}
	.align 2, 0
_022DE55C: .4byte 0x02353530
_022DE560: .4byte 0x01FF9BA0
_022DE564: .4byte 0x01FF9E14
_022DE568: .4byte 0x01FF9F80
	arm_func_end ov29_022DE4FC

	arm_func_start ov29_022DE56C
ov29_022DE56C: @ 0x022DE56C
	push {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	cmp r6, #1
	bne _022DE598
	mov r0, #0
	bl FUN_02051ED4
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ov29_022DE290
	b _022DE5C0
_022DE598:
	lsl r0, r4, #0x10
	lsr r5, r0, #0x10
	mov r0, #0
	bl FUN_0201BCCC
	mov r1, r5
	bl ov29_022DE290
	mov r0, #0
	bl FUN_0201BCF4
	mov r1, r5
	bl ov29_022DE290
_022DE5C0:
	ldr r0, _022DE5D4 @ =0x02353530
	ldr r0, [r0]
	add r0, r0, r6, lsl #1
	strh r4, [r0, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022DE5D4: .4byte 0x02353530
	arm_func_end ov29_022DE56C

	arm_func_start ov29_022DE5D8
ov29_022DE5D8: @ 0x022DE5D8
	ldr r2, _022DE5EC @ =0x02353530
	ldr r2, [r2]
	add r1, r2, r1, lsl #1
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_022DE5EC: .4byte 0x02353530
	arm_func_end ov29_022DE5D8

	arm_func_start ov29_022DE5F0
ov29_022DE5F0: @ 0x022DE5F0
	ldr r1, _022DE604 @ =0x02353530
	ldr r1, [r1]
	add r0, r1, r0, lsl #1
	ldrsh r0, [r0, #2]
	bx lr
	.align 2, 0
_022DE604: .4byte 0x02353530
	arm_func_end ov29_022DE5F0

	arm_func_start ov29_022DE608
ov29_022DE608: @ 0x022DE608
	ldr r0, _022DE61C @ =0x02353530
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x50]
	bx lr
	.align 2, 0
_022DE61C: .4byte 0x02353530
	arm_func_end ov29_022DE608

	arm_func_start ov29_022DE620
ov29_022DE620: @ 0x022DE620
	ldr r1, _022DE634 @ =0x02353530
	ldr r1, [r1]
	ldr r1, [r1, #0x48]
	add r0, r1, r0, lsl #10
	bx lr
	.align 2, 0
_022DE634: .4byte 0x02353530
	arm_func_end ov29_022DE620

	arm_func_start ov29_022DE638
ov29_022DE638: @ 0x022DE638
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _022DE844 @ =0x02353538
	mov r5, r0
	ldr r0, [r1]
	mov r4, #0
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	bl FUN_022C2574
	cmp r0, #0
	mov r1, r4
	bne _022DE754
	ldr r0, _022DE848 @ =0x023510BC
	mov r2, r5
	mov r3, r1
	str r1, [sp]
	bl FUN_02051EF0
	mov r0, r4
	bl FUN_02051D68
	mov r3, #1
	mov r1, r4
	str r3, [sp]
	ldr r0, _022DE848 @ =0x023510BC
	mov r2, r5
	mov r3, r1
	bl FUN_02051EF0
	mov r0, #1
	bl FUN_02051D68
	bl ov29_02336450
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r7, #0
	add sb, r0, #4
	add r4, r4, #1
	mov r8, #1
	mov r6, r7
_022DE6C4:
	lsl r1, r4, #0x10
	mov r0, sb
	mov r2, r5
	mov r3, r7
	asr r1, r1, #0x10
	str r7, [sp]
	bl FUN_02051EF0
	mov r0, r6
	bl FUN_02051D68
	add r8, r8, #1
	cmp r8, #0xd0
	add sb, sb, #4
	add r4, r4, #1
	blt _022DE6C4
	mov sb, #0
	ldr r8, _022DE84C @ =0x0237C6D4
	mov r7, #0xd0
	mov r6, sb
	mov r4, sb
_022DE710:
	lsl r1, r7, #0x10
	mov r0, r8
	mov r2, r5
	mov r3, r6
	asr r1, r1, #0x10
	str r6, [sp]
	bl FUN_02051EF0
	mov r0, r4
	bl FUN_02051D68
	add r7, r7, #1
	cmp r7, #0xe0
	add sb, sb, #1
	addeq r7, r7, #0x10
	add r8, r8, #4
	cmp sb, #0x20
	blt _022DE710
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022DE754:
	ldr r0, _022DE848 @ =0x023510BC
	mov r2, r5
	mov r3, r1
	str r1, [sp]
	bl FUN_02051EF0
	mov r0, r4
	bl FUN_02051D68
	mov r3, #1
	mov r1, r4
	str r3, [sp]
	ldr r0, _022DE848 @ =0x023510BC
	mov r2, r5
	mov r3, r1
	bl FUN_02051EF0
	mov r0, #1
	bl FUN_02051D68
	bl ov29_02336450
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r7, #0
	add r8, r0, #4
	add r4, r4, #1
	mov sb, #1
	mov r6, r7
_022DE7B4:
	lsl r1, r4, #0x10
	mov r0, r8
	mov r2, r5
	mov r3, r7
	asr r1, r1, #0x10
	str r7, [sp]
	bl FUN_02051EF0
	mov r0, r6
	bl FUN_02051D68
	add sb, sb, #1
	cmp sb, #0xe0
	add r8, r8, #4
	add r4, r4, #1
	blt _022DE7B4
	ldr r8, _022DE850 @ =0x0237C714
	mov r7, #0xf0
	cmp r8, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov sb, #0
	mov r6, sb
	mov r4, sb
_022DE808:
	lsl r1, r7, #0x10
	mov r0, r8
	mov r2, r5
	mov r3, r6
	asr r1, r1, #0x10
	str r6, [sp]
	bl FUN_02051EF0
	mov r0, r4
	bl FUN_02051D68
	add sb, sb, #1
	cmp sb, #0x10
	add r8, r8, #4
	add r7, r7, #1
	blt _022DE808
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022DE844: .4byte 0x02353538
_022DE848: .4byte 0x023510BC
_022DE84C: .4byte 0x0237C6D4
_022DE850: .4byte 0x0237C714
	arm_func_end ov29_022DE638

	arm_func_start ov29_022DE854
ov29_022DE854: @ 0x022DE854
	push {r3, lr}
	mov r0, #0
	bl FUN_02051ED4
	bl FUN_0200A544
	pop {r3, pc}
	arm_func_end ov29_022DE854

	arm_func_start ov29_022DE868
ov29_022DE868: @ 0x022DE868
	push {r3, lr}
	ldr r0, _022DE900 @ =0x02353530
	ldr r2, [r0]
	cmp r2, #0
	popeq {r3, pc}
	ldrb r0, [r2, #0x50]
	cmp r0, #0
	ldrsheq r1, [r2, #4]
	ldrsheq r0, [r2, #8]
	cmpeq r1, r0
	beq _022DE8B0
	ldrsh r0, [r2, #4]
	mov r1, #1
	bl ov29_022DE56C
	ldr r0, _022DE900 @ =0x02353530
	ldr r1, [r0]
	ldrsh r0, [r1, #4]
	strh r0, [r1, #8]
_022DE8B0:
	ldr r0, _022DE900 @ =0x02353530
	ldr r2, [r0]
	ldrb r0, [r2, #0x50]
	cmp r0, #0
	ldrsheq r1, [r2, #2]
	ldrsheq r0, [r2, #6]
	cmpeq r1, r0
	beq _022DE8EC
	ldrsh r0, [r2, #2]
	mov r1, #0
	bl ov29_022DE56C
	ldr r0, _022DE900 @ =0x02353530
	ldr r1, [r0]
	ldrsh r0, [r1, #2]
	strh r0, [r1, #6]
_022DE8EC:
	ldr r0, _022DE900 @ =0x02353530
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x50]
	pop {r3, pc}
	.align 2, 0
_022DE900: .4byte 0x02353530
	arm_func_end ov29_022DE868

	arm_func_start ov29_022DE904
ov29_022DE904: @ 0x022DE904
	push {r3, lr}
	mov r0, #0x20
	mov r1, #0
	bl FUN_02001170
	ldr r2, _022DE92C @ =0x02353534
	mov r1, #0x20
	str r0, [r2]
	bl FUN_02003250
	bl ov29_022DEA34
	pop {r3, pc}
	.align 2, 0
_022DE92C: .4byte 0x02353534
	arm_func_end ov29_022DE904

	arm_func_start ov29_022DE930
ov29_022DE930: @ 0x022DE930
	push {r3, lr}
	ldr r0, _022DE950 @ =0x02353534
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _022DE950 @ =0x02353534
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022DE950: .4byte 0x02353534
	arm_func_end ov29_022DE930

	arm_func_start ov29_022DE954
ov29_022DE954: @ 0x022DE954
	cmp r0, #0x10
	movge r0, #1
	movlt r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_022DE954

	arm_func_start ov29_022DE968
ov29_022DE968: @ 0x022DE968
	cmp r0, #0
	beq _022DE984
	cmp r0, #1
	beq _022DE990
	cmp r0, #2
	beq _022DE99C
	b _022DE9A8
_022DE984:
	mov r0, #0
	mov r3, #1
	b _022DE9B0
_022DE990:
	mov r0, #0x1b
	mov r3, #4
	b _022DE9B0
_022DE99C:
	mov r0, #1
	mov r3, #0x14
	b _022DE9B0
_022DE9A8:
	mov r3, #0
	mov r0, r3
_022DE9B0:
	ldr r1, _022DE9F4 @ =0x02353534
	mov r2, #0
	ldr ip, [r1]
	b _022DE9E4
_022DE9C0:
	ldrb r1, [ip, r0]
	cmp r1, #0
	bxeq lr
	add r2, r2, #1
	add r1, r0, #1
	lsl r0, r2, #0x10
	lsl r1, r1, #0x10
	asr r2, r0, #0x10
	asr r0, r1, #0x10
_022DE9E4:
	cmp r2, r3
	blt _022DE9C0
	mvn r0, #0
	bx lr
	.align 2, 0
_022DE9F4: .4byte 0x02353534
	arm_func_end ov29_022DE968

	arm_func_start ov29_022DE9F8
ov29_022DE9F8: @ 0x022DE9F8
	ldr r1, _022DEA0C @ =0x02353534
	mov r2, #1
	ldr r1, [r1]
	strb r2, [r1, r0]
	bx lr
	.align 2, 0
_022DEA0C: .4byte 0x02353534
	arm_func_end ov29_022DE9F8

	arm_func_start ov29_022DE968
ov29_022DE968: @ 0x022DEA10
	ldr ip, _022DEA18 @ =ov29_022DE968
	bx ip
	.align 2, 0
_022DEA18: .4byte ov29_022DE968
	arm_func_end ov29_022DE968

	arm_func_start ov29_022DEA1C
ov29_022DEA1C: @ 0x022DEA1C
	ldr r1, _022DEA30 @ =0x02353534
	mov r2, #0
	ldr r1, [r1]
	strb r2, [r1, r0]
	bx lr
	.align 2, 0
_022DEA30: .4byte 0x02353534
	arm_func_end ov29_022DEA1C

	arm_func_start ov29_022DEA34
ov29_022DEA34: @ 0x022DEA34
	mov r3, #0
	ldr r0, _022DEA58 @ =0x02353534
	mov r2, r3
_022DEA40:
	ldr r1, [r0]
	strb r2, [r1, r3]
	add r3, r3, #1
	cmp r3, #0x20
	blt _022DEA40
	bx lr
	.align 2, 0
_022DEA58: .4byte 0x02353534
	arm_func_end ov29_022DEA34

	arm_func_start DungeonAlloc
DungeonAlloc: @ 0x022DEA5C
	push {r3, lr}
	ldr r0, _022DEA78 @ =0x0002CB14
	mov r1, #0
	bl FUN_02001170
	ldr r1, _022DEA7C @ =0x02353538
	str r0, [r1, #4]
	pop {r3, pc}
	.align 2, 0
_022DEA78: .4byte 0x0002CB14
_022DEA7C: .4byte 0x02353538
	arm_func_end DungeonAlloc

	arm_func_start GetDungeonPtrMaster
GetDungeonPtrMaster: @ 0x022DEA80
	ldr r0, _022DEA8C @ =0x02353538
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_022DEA8C: .4byte 0x02353538
	arm_func_end GetDungeonPtrMaster

	arm_func_start DungeonZInit
DungeonZInit: @ 0x022DEA90
	ldr r0, _022DEAA4 @ =0x02353538
	ldr ip, _022DEAA8 @ =FUN_02003250
	ldr r1, _022DEAAC @ =0x0002CB14
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_022DEAA4: .4byte 0x02353538
_022DEAA8: .4byte FUN_02003250
_022DEAAC: .4byte 0x0002CB14
	arm_func_end DungeonZInit

	arm_func_start DungeonFree
DungeonFree: @ 0x022DEAB0
	push {r3, lr}
	ldr r0, _022DEAD8 @ =0x02353538
	ldr r0, [r0, #4]
	cmp r0, #0
	popeq {r3, pc}
	bl FUN_02001188
	ldr r0, _022DEAD8 @ =0x02353538
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, pc}
	.align 2, 0
_022DEAD8: .4byte 0x02353538
	arm_func_end DungeonFree

	arm_func_start ov29_022DEADC
ov29_022DEADC: @ 0x022DEADC
	push {r3, lr}
	mov r0, #0x20
	bl ov29_0234C654
	mov r0, #0
	mov r1, r0
	bl FUN_020091B0
	mov r0, #1
	mov r1, #0
	bl FUN_020091B0
	mov r0, #2
	mov r1, #0
	bl FUN_02009194
	mov r0, #3
	mov r1, #0
	bl FUN_02009194
	mov r0, #4
	mov r1, #0
	bl FUN_020091B0
	mov r0, #1
	mov r1, #0x4000
	mov r2, #0
	bl ov29_0234C668
	mov r0, #0
	bl ov29_0234C738
	pop {r3, pc}
	arm_func_end ov29_022DEADC

	arm_func_start ov29_022DEB40
ov29_022DEB40: @ 0x022DEB40
	push {r3, lr}
	mov r0, #2
	mov r1, #0x4000
	mov r2, #0
	bl ov29_0234C668
	mov r0, #0
	bl ov29_0234C738
	mov r0, #1
	bl ov29_0234C654
	mov r0, #0
	mov r1, r0
	bl FUN_020091B0
	mov r0, #1
	mov r1, #0
	bl FUN_020091B0
	mov r0, #2
	mov r1, #0
	bl FUN_020091B0
	mov r0, #3
	mov r1, #0
	bl FUN_020091B0
	mov r0, #4
	mov r1, #0
	bl FUN_020091B0
	pop {r3, pc}
	arm_func_end ov29_022DEB40

	arm_func_start ov29_022DEADC
ov29_022DEADC: @ 0x022DEBA4
	ldr ip, _022DEBAC @ =ov29_022DEADC
	bx ip
	.align 2, 0
_022DEBAC: .4byte ov29_022DEADC
	arm_func_end ov29_022DEADC

	arm_func_start ov29_022DEB40
ov29_022DEB40: @ 0x022DEBB0
	ldr ip, _022DEBB8 @ =ov29_022DEB40
	bx ip
	.align 2, 0
_022DEBB8: .4byte ov29_022DEB40
	arm_func_end ov29_022DEB40

	arm_func_start ov29_022DEBBC
ov29_022DEBBC: @ 0x022DEBBC
	push {r3, r4, r5, lr}
	mov r5, r0
	bl GetDungeonGenInfoUnk0C
	mov r4, r0
	mov r0, #0
	bl SetForcedLossReason
	ldr r3, _022DEF2C @ =0x02353538
	mov r1, #0
	ldr r2, [r3]
	sub r0, r1, #1
	strb r1, [r2, #5]
	ldr r2, [r3]
	mov ip, #1
	strb r1, [r2, #6]
	ldr r2, [r3]
	strb r1, [r2, #0xc]
	ldr r2, [r3]
	strb r1, [r2, #7]
	ldr r2, [r3]
	strb r1, [r2, #0xa]
	ldr r2, [r3]
	strb r1, [r2, #0x11]
	ldr r2, [r3]
	str r0, [r2, #0x614]
	ldr r2, [r3]
	strb r1, [r2, #0xb]
	ldr r2, [r3]
	add r2, r2, #0x100
	strh r0, [r2, #0xd8]
	ldr r2, [r3]
	add r2, r2, #0x100
	strh r0, [r2, #0xda]
	ldr r2, [r3]
	add r2, r2, #0x100
	strh r0, [r2, #0xdc]
	ldr r2, [r3]
	add r2, r2, #0x100
	strh r0, [r2, #0xde]
	ldr r0, [r3]
	strb r1, [r0, #0xd]
	ldr r0, [r3]
	strb ip, [r0, #0xf]
	ldr r0, [r3]
	strb r1, [r0, #0x10]
	ldr r0, [r3]
	ldrb r0, [r0, #0x748]
	bl FUN_02051440
	ldr r1, _022DEF2C @ =0x02353538
	ldr r2, [r1]
	strb r0, [r2, #0x12]
	ldr r0, [r1]
	ldrb r0, [r0, #0x748]
	bl FUN_02051468
	ldr r1, _022DEF2C @ =0x02353538
	mov r2, #0
	ldr r3, [r1]
	strb r0, [r3, #0x13]
	ldr r0, [r1]
	add r0, r0, #0x2c000
	strb r2, [r0, #0xb10]
	ldr r0, [r1]
	strb r2, [r0, #8]
	ldr r0, [r1]
	str r2, [r0, #0x18]
	bl ov29_02349658
	cmp r5, #0
	popne {r3, r4, r5, pc}
	mov r0, #0
	bl ov29_02338868
	bl ov29_02349188
	ldr r2, _022DEF2C @ =0x02353538
	mov r0, #0
	ldr r1, [r2]
	strb r0, [r1, #0x799]
	ldr r1, [r2]
	str r0, [r1, #0x7bc]
	ldr r1, [r2]
	str r0, [r1, #0x7c0]
	ldr r1, [r2]
	str r0, [r1, #0x7c4]
	ldr r1, [r2]
	add r1, r1, #0x700
	strh r0, [r1, #0x80]
	ldr r1, [r2]
	add r1, r1, #0x700
	strh r0, [r1, #0x82]
	ldr r1, [r2]
	strb r0, [r1, #0x790]
	ldr r1, [r2]
	strb r0, [r1, #0x791]
	bl ov29_022EAF34
	ldr r0, _022DEF2C @ =0x02353538
	mov r1, #0
	ldr r2, [r0]
	ldr r5, _022DEF30 @ =0x000003E7
	strb r1, [r2, #0x78f]
	ldr r2, [r0]
	mov r3, #0x63
	strb r1, [r2, #0x78d]
	ldr r2, [r0]
	strb r1, [r2, #0x793]
	ldr r2, [r0]
	strb r1, [r2, #0x794]
	ldr r2, [r0]
	add r2, r2, #0x700
	strh r5, [r2, #0x96]
	ldr r2, [r0]
	add r2, r2, #0x700
	strh r3, [r2, #0xa4]
	ldr r2, [r0]
	add r2, r2, #0x700
	strh r3, [r2, #0xa6]
	ldr r2, [r0]
	add r2, r2, #0x700
	strh r1, [r2, #0x86]
	ldr r2, [r0]
	add r2, r2, #0xc000
	strb r1, [r2, #0xd38]
	ldr r3, [r0]
	add r1, r3, #0x28000
	ldrb r2, [r1, #0x6b4]
	add r1, r3, #0x4000
	strh r2, [r1, #0xd4]
	ldr r3, [r0]
	add r1, r3, #0x28000
	ldrb r2, [r1, #0x6b5]
	add r1, r3, #0x4000
	strh r2, [r1, #0xd6]
	ldr r3, [r0]
	add r1, r3, #0x28000
	ldrb r2, [r1, #0x6c4]
	add r1, r3, #0x4000
	strb r2, [r1, #0xda]
	ldr r1, [r0]
	ldrb r0, [r1, #0x798]
	cmp r0, #1
	bhi _022DEEA4
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x4c]
	bl FUN_0204CF9C
	sub r0, r0, #2
	cmp r0, #1
	bhi _022DEE38
	ldr r0, _022DEF2C @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r2, [r0, #0xda]
	cmp r2, #0
	ldrne r1, _022DEF34 @ =0x0234FE14
	ldrbne r1, [r1, r2]
	cmpne r1, #0
	strbne r1, [r0, #0xda]
	ldr r0, _022DEF2C @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r1, [r0, #0xd4]
	cmp r1, #0xb3
	moveq r1, #0xb7
	strheq r1, [r0, #0xd4]
_022DEE38:
	ldr r0, _022DEF2C @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	cmp r0, #0x7d
	bne _022DEE78
	mov r0, #0
	mov r1, #0x10
	bl FUN_0204B4EC
	cmp r0, #0
	beq _022DEEA4
	ldr r0, _022DEF2C @ =0x02353538
	mov r1, #0x2a
	ldr r0, [r0]
	add r0, r0, #0x4000
	strb r1, [r0, #0xda]
	b _022DEEA4
_022DEE78:
	cmp r0, #0x87
	bne _022DEEA4
	mov r0, #0
	mov r1, #0xf
	bl FUN_0204B4EC
	cmp r0, #0
	ldrne r0, _022DEF2C @ =0x02353538
	movne r1, #0x2b
	ldrne r0, [r0]
	addne r0, r0, #0x4000
	strbne r1, [r0, #0xda]
_022DEEA4:
	bl ov29_023484A0
	cmp r4, #1
	bne _022DEF08
	ldr r1, _022DEF2C @ =0x02353538
	mov r2, #0x70
	ldr r0, [r1]
	add r0, r0, #0x4000
	strb r2, [r0, #0xda]
	ldr r0, [r1]
	ldrb r0, [r0, #0x748]
	bl FUN_02051288
	cmp r0, #0
	beq _022DEEF0
	ldr r0, _022DEF2C @ =0x02353538
	mov r1, #0xc4
	ldr r0, [r0]
	add r0, r0, #0x4000
	strh r1, [r0, #0xd4]
	b _022DEF20
_022DEEF0:
	ldr r0, _022DEF2C @ =0x02353538
	mov r1, #0xc5
	ldr r0, [r0]
	add r0, r0, #0x4000
	strh r1, [r0, #0xd4]
	b _022DEF20
_022DEF08:
	cmp r4, #2
	ldreq r0, _022DEF2C @ =0x02353538
	moveq r1, #0x71
	ldreq r0, [r0]
	addeq r0, r0, #0x4000
	strbeq r1, [r0, #0xda]
_022DEF20:
	mov r0, #0
	bl ov29_02338898
	pop {r3, r4, r5, pc}
	.align 2, 0
_022DEF2C: .4byte 0x02353538
_022DEF30: .4byte 0x000003E7
_022DEF34: .4byte 0x0234FE14
	arm_func_end ov29_022DEBBC

	arm_func_start RunDungeon
RunDungeon: @ 0x022DEF38
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xd0
	mov sl, r0
	ldrb r5, [sl, #4]
	mov r8, #0
	mov sb, r1
	str r8, [sp]
	cmp r5, #0
	moveq r0, #1
	movne r0, r8
	ldrsb r1, [sl, #0xe]
	ldrb r6, [sl, #0x11]
	ldrb fp, [sl, #0xf]
	ldrb r7, [sl, #0x10]
	and r0, r0, #0xff
	cmp r1, #1
	str r0, [sp, #4]
	mov r0, #0
	bne _022DEF90
	bl ov29_0234C5EC
	mov r8, #1
	b _022DEF94
_022DEF90:
	bl ov29_0234C584
_022DEF94:
	mov r0, #1
	bl ov29_0234C584
	mov r0, #2
	bl ov29_022DDE00
	ldr r0, _022DFF3C @ =0x023510C8
	mov r1, #0x3e0
	bl FUN_0200C1FC
	ldr r0, _022DFF40 @ =0x02353538
	cmp r5, #0
	str sb, [r0]
	ldrb r1, [sl]
	strb r1, [sb, #0x748]
	ldrb r1, [sl, #1]
	strb r1, [sb, #0x749]
	bne _022DF0AC
	ldrsb r2, [sl, #0xd]
	ldr r1, [r0]
	strb r2, [r1, #0x798]
	ldr r2, [r0]
	ldr r1, [sl, #0x14]
	ldr r0, [sl, #0x18]
	str r1, [r2, #0x750]
	str r0, [r2, #0x754]
	ldrb r0, [sl]
	bl FUN_020512B0
	ldr r2, _022DFF40 @ =0x02353538
	mov r3, #0
	ldr r1, [r2]
	add r1, r1, #0x700
	strh r0, [r1, #0x84]
	ldr r0, [r2]
	strb r3, [r0, #0x79a]
	ldrb r0, [sl]
	bl FUN_02051380
	ldr r1, _022DFF40 @ =0x02353538
	ldr r2, [r1]
	strb r0, [r2, #0x79b]
	ldr r2, [sl, #0xac]
	ldr r0, [r1]
	str r2, [r0, #0x7cc]
	ldrb r2, [sl, #5]
	ldr r0, [r1]
	strb r2, [r0, #0x75c]
	ldrb r2, [sl, #8]
	ldr r0, [r1]
	strb r2, [r0, #0x75a]
	ldrb r2, [sl, #6]
	ldr r0, [r1]
	strb r2, [r0, #0x759]
	ldrb r2, [sl, #9]
	ldr r0, [r1]
	strb r2, [r0, #0x75b]
	ldrb r2, [sl, #0xa]
	ldr r0, [r1]
	strb r2, [r0, #0x75d]
	ldrb r2, [sl, #0xb]
	ldr r0, [r1]
	strb r2, [r0, #0x75e]
	ldrb r2, [sl, #0xc]
	ldr r0, [r1]
	strb r2, [r0, #0x75f]
	ldr r0, [r1]
	ldrsh r2, [sl, #2]
	add r0, r0, #0x700
	strh r2, [r0, #0x4c]
	ldrb r0, [sl, #7]
	cmp r0, #0
	ldrne r0, [r1]
	movne r1, #0
	strbne r1, [r0, #0x759]
_022DF0AC:
	ldr r0, _022DFF40 @ =0x02353538
	mov r3, #0
	ldr r2, [r0]
	mov r1, #1
	strb r3, [r2, #0x7c8]
	ldr r2, [r0]
	strb r3, [r2, #0x7c9]
	ldr r0, [r0]
	strb r1, [r0, #0x75b]
	bl ov29_022DE904
	bl ov29_022F6E40
	bl ov29_022ED030
	bl ov29_023388B0
	bl ov29_02338F10
	bl FUN_02017B00
	mov r1, r5
	bl ov29_022EAF48
	bl ov29_022E7EC4
	bl ov29_022E6F94
	bl ov29_022E1640
	bl ov29_023362EC
	bl ov29_02344054
	bl ov29_022E9F18
	bl ov29_02338F68
	mov r0, #0
	bl ov29_02338F38
	mov r0, #1
	bl ov29_022E2B68
	bl ov29_0234AFA4
	bl ov29_0234BB10
	bl DungeonRngUnsetSecondary
	bl GetDungeonRngPreseed
	ldr r2, _022DFF40 @ =0x02353538
	mov r1, #0x340
	ldr r3, [r2]
	mov r2, #0
	str r0, [r3, #0x7ac]
	mov r0, #0x200
	bl FUN_022BDAB0
	mov r0, #0
	bl FUN_022BDB54
	mov r0, #0
	bl FUN_02051ED4
	mov r4, r0
	mov r0, #0
	mov r1, r0
	bl FUN_02051DFC
	str r0, [sp, #8]
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl FUN_02051E8C
	ldr r1, [sp, #8]
	mov r2, r4
	mov r3, #0
	bl FUN_022BDB60
	mov r0, #1
	bl FUN_02051ED4
	mov r4, r0
	mov r0, #0
	mov r1, #1
	bl FUN_02051DFC
	str r0, [sp, #0xc]
	mov r0, #0
	mov r1, r0
	mov r2, #1
	bl FUN_02051E8C
	ldr r1, [sp, #0xc]
	mov r2, r4
	mov r3, #1
	bl FUN_022BDB60
	mov r0, #0xb000
	mov r1, #0xb
	bl FUN_022BDB80
	mov r0, #0x2000
	mov r1, #0xa
	bl FUN_022BDBA4
	bl ov29_022E0F6C
	bl ov29_022E8104
	bl ov29_022E7F7C
	bl ov29_022E1304
	bl ov29_022E6E40
	bl ov29_022FE4A8
	bl ov29_023480FC
	mov r0, #2
	bl ov29_022DDE00
	ldrsb r0, [sl, #0xe]
	cmp r0, #1
	beq _022DF214
	bl ov29_022DEADC
_022DF214:
	cmp r5, #0
	beq _022DF22C
	bl ov29_0234CB34
	bl ov29_0234CB54
	bl ov29_023365E8
	bl ov29_02348850
_022DF22C:
	cmp r6, #0
	beq _022DF238
	bl ov29_022E0434
_022DF238:
	cmp r5, #0
	bne _022DF2D0
	add r0, sb, #0x1a000
	mov r2, #1
	strb r2, [r0, #0x23f]
	ldr r1, _022DFF40 @ =0x02353538
	strb r2, [r0, #0x240]
	ldr r0, [r1]
	add r0, r0, #0x7d0
	bl ov29_0231B39C
	add r0, sb, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #2
	ldrbeq r1, [sl, #0x14]
	moveq r0, #1
	strbeq r1, [sb, #0x748]
	strbeq r0, [sb, #0x749]
	ldrb r0, [sb, #0x748]
	bl FUN_020585D8
	bl ov29_022E081C
	add r0, sb, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #2
	ldreq r0, [sl, #0x18]
	streq r0, [sb, #0x7a0]
	beq _022DF2C4
	bl FUN_02063504
	mov r4, r0
	bl FUN_0200224C
	orr r0, r0, r4, lsl #16
	bl FUN_020510E8
	bl FUN_02051134
	bic r0, r0, #0xff000000
	str r0, [sb, #0x7a0]
	bl FUN_020634F4
_022DF2C4:
	ldr r0, [sb, #0x7a0]
	bl ov29_022EA968
	b _022DF2D8
_022DF2D0:
	ldr r0, [sb, #0x7ac]
	bl SetDungeonRngPreseed
_022DF2D8:
	cmp r6, #0
	beq _022DF31C
	add r0, sb, #0x700
	ldrsb r1, [r0, #0x9b]
	mov r0, #0
	bl ov29_0234B09C
	add r0, sb, #0x700
	ldrsb r0, [r0, #0x9b]
	mov r2, #1
	cmp r0, #0
	mov r0, #0
	beq _022DF314
	ldr r1, _022DFF44 @ =0x00000B6B
	bl DisplayMessage2
	b _022DF31C
_022DF314:
	ldr r1, _022DFF48 @ =0x00000B6C
	bl DisplayMessage2
_022DF31C:
	cmp fp, #0
	beq _022DF3B0
	add r4, sl, #0x1c
	ldrb r0, [r4, #2]
	cmp r0, #0xfa
	bne _022DF364
	ldrb r0, [sb, #0x748]
	bl FUN_02051318
	cmp r0, #0
	beq _022DF34C
	mov r0, r4
	bl FUN_02052EFC
_022DF34C:
	mov r0, r4
	bl ov29_022F7910
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp]
	b _022DF3A4
_022DF364:
	mov r6, #0
	mov fp, #0x44
_022DF36C:
	ldrb r0, [sb, #0x748]
	bl FUN_02051318
	cmp r0, #0
	beq _022DF384
	smlabb r0, r6, fp, r4
	bl FUN_02052EFC
_022DF384:
	mov r0, #0x44
	smlabb r0, r6, r0, r4
	bl ov29_022F7BF4
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	cmp r6, #2
	blt _022DF36C
_022DF3A4:
	cmp r5, #0
	beq _022DF3B0
	bl ov29_022FC9C0
_022DF3B0:
	cmp r5, #0
	addeq r0, sb, #0x700
	ldrsbeq r0, [r0, #0x98]
	cmpeq r0, #2
	bne _022DF418
	add r0, sp, #0x10
	bl FUN_0204F1B4
	cmp r0, #0
	beq _022DF418
	ldrsb r0, [sp, #0x10]
	bl FUN_0205B77C
	ldrsb r0, [r0, #0xac]
	cmp r0, #0
	beq _022DF408
	add r1, r0, #1
	mov r0, #0
	bl ov29_0234B09C
	ldr r1, _022DFF4C @ =0x00000B6D
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022DF418
_022DF408:
	ldr r1, _022DFF50 @ =0x00000B6E
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022DF418:
	ldrsb r0, [sl, #0xe]
	cmp r0, #1
	beq _022DF428
	bl ov29_022DEB40
_022DF428:
	mov r0, #2
	bl ov29_022DDE00
	mov r0, #0
	bl FUN_022BDBB0
	bl ov29_022F6EF4
	bl ov29_022E8104
	bl ov29_022E7F7C
	bl ov29_0234B04C
	bl ov29_020480CC
	bl ov29_022DE4FC
	cmp r5, #0
	bne _022DF460
	bl ov29_022DEA34
	bl ov29_022E1640
_022DF460:
	ldr r0, _022DFF54 @ =0x0235355C
	mov r1, #0
	str r1, [r0]
	bl GetDungeonGenInfoUnk0C
	mov r6, r0
	bl SetBothScreensWindowColorToDefault
	ldr r1, _022DFF40 @ =0x02353538
	mov r2, #0
	ldr r0, [r1]
	cmp r5, #0
	strb r2, [r0, #4]
	ldr r0, [r1]
	add r0, r0, #0x3000
	strb r2, [r0, #0xe28]
	bne _022DF4E4
	ldr r0, [r1]
	mov r1, #0xa
	add r0, r0, #0x700
	strh r1, [r0, #0x88]
	bl GetDungeonGenInfoUnk0C
	cmp r0, #0
	bne _022DF4E4
	bl GenerateDungeonRngSeed
	mov r4, r0
	bl GetDungeonRngPreseed
	ldr r1, _022DFF40 @ =0x02353538
	ldr r2, [r1]
	str r0, [r2, #0x7ac]
	ldr r0, [r1]
	str r4, [r0, #0x79c]
	ldr r0, [r1]
	ldr r0, [r0, #0x79c]
	bl InitDungeonRng
_022DF4E4:
	cmp r5, #0
	bne _022DF53C
	ldr r0, _022DFF40 @ =0x02353538
	mov r2, #0
	ldr r1, [r0]
	mov r0, #4
	add r1, r1, #0x3000
	strb r2, [r1, #0xe38]
	bl DungeonRandInt
	ldr r1, _022DFF40 @ =0x02353538
	ldr r2, _022DFF58 @ =0x023510C0
	lsl r3, r0, #1
	ldr r0, [r1]
	ldrsh r3, [r2, r3]
	add r0, r0, #0x3e00
	mov r2, #0
	strh r3, [r0, #0x3a]
	ldr r0, [r1]
	add r0, r0, #0x3000
	strb r2, [r0, #0xe39]
	ldr r0, [r1]
	strb r2, [r0, #0x78a]
_022DF53C:
	cmp r6, #0
	movne r1, #1
	moveq r1, #0
	ldr r2, _022DFF5C @ =ov29_022DEBBC
	mov r0, r5
	and r1, r1, #0xff
	bl ov29_022E6FBC
	mov r0, #0
	bl ov29_0234B4CC
	bl ov29_02048134
	cmp r5, #0
	bne _022DF574
	mov r0, #0
	bl ov29_02334DA8
_022DF574:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	bl ov29_023389C4
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0xc000
	ldrb r0, [r0, #0xd38]
	bl ov29_02338A4C
	bl ov29_022E8708
	bl ov29_022DD5B4
	bl ov29_023369F8
	bl ov29_022E7CFC
	bl ov29_022F7130
	cmp r5, #0
	bne _022DF5C4
	bl ov29_0231B460
	bl ov29_022F7104
	b _022DF5CC
_022DF5C4:
	bl ov29_022F7308
	bl ov29_022FBB1C
_022DF5CC:
	bl ov29_022FE2E4
	bl ov29_022FBF58
	cmp r5, #0
	bne _022DF5E4
	bl ov29_022EAD68
	bl ov29_022EF738
_022DF5E4:
	bl ov29_023365E8
	bl ov29_022E1550
	mov r0, #0
	bl ov29_02338F38
	mov r0, #4
	mov r1, #0
	bl ov29_022EA428
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, r5
	bl ov29_022E2B68
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344178
	cmp r0, #0
	addne r0, sb, #0x1a000
	movne r1, #1
	strbne r1, [r0, #0x23f]
	strbne r1, [r0, #0x240]
	bl IsSecretBazaar
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_022E0864
	cmp r0, #0
	bne _022DF660
	mov r0, #0x3c
	bl ov29_023482D4
_022DF660:
	bl ov29_022E11F8
	cmp r5, #0
	bne _022DF68C
	bl ov29_0233845C
	bl GenerateFloor
	ldrb r0, [sb, #0x748]
	bl FUN_020512B0
	add r1, sb, #0x700
	strh r0, [r1, #0x84]
	mov r0, #0
	strb r0, [sb, #0x79a]
_022DF68C:
	bl ov29_0233785C
	bl ov29_02336A4C
	bl ov29_02336460
	cmp r5, #0
	bne _022DF6C0
	ldr r0, [sp, #4]
	bl InitTeam
	mov r0, #0
	str r0, [sp, #4]
	bl ov29_022FE24C
	bl ov29_022FCD78
	bl ov29_0233836C
	b _022DF6F8
_022DF6C0:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x245]
	cmp r0, #0
	beq _022DF6F4
	bl GetLeader
	cmp r0, #0
	ldrne r0, _022DFF40 @ =0x02353538
	movne r1, #1
	ldrne r0, [r0]
	addne r0, r0, #0x2c000
	strbne r1, [r0, #0xb10]
_022DF6F4:
	bl ov29_022FCD04
_022DF6F8:
	bl ov29_0231AFB4
	add r0, sb, #0x19000
	mov r1, #0
	str r1, [r0, #0x904]
	str r1, [r0, #0x90c]
	str r1, [r0, #0x908]
	str r1, [r0, #0x910]
	cmp r5, #0
	bne _022DF74C
	bl ov29_022ED888
	bl ov29_0233873C
	bl ov29_02344C4C
	bl ov29_02338560
	ldr r1, [sb, #0x7bc]
	mov r0, #0
	str r1, [sb, #0x7c4]
	str r0, [sb, #0x7c0]
	bl ov29_02343980
	bl ov29_0233781C
	bl ov29_0233AE94
	b _022DF750
_022DF74C:
	bl ov29_022F9970
_022DF750:
	bl ov29_022F7EAC
	bl ov29_0233665C
	bl ov29_02336F4C
	cmp r5, #0
	bne _022DF778
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl ov29_022FA2F0
	b _022DF780
_022DF778:
	bl ov29_02304B64
	bl ov29_022FA524
_022DF780:
	mov r0, #1
	bl ov29_022E3A58
	cmp r5, #0
	bne _022DF798
	bl ov29_022EF8A4
	bl ov29_022FA418
_022DF798:
	ldr r0, _022DFF60 @ =0x02353563
	mov r1, #1
	strb r1, [r0]
	cmp r5, #0
	beq _022DF7B4
	bl ov29_023350FC
	bl ov29_022FA750
_022DF7B4:
	bl ov29_02336260
	mov r0, r5
	bl ov29_0233904C
	mov r0, #1
	mov r1, #0
	bl ov29_022EA428
	mov r0, #1
	bl ov29_0233A15C
	bl FUN_0204AEA0
	cmp r0, #3
	bne _022DF7EC
	mov r0, #1
	bl ov29_0233A1BC
	bl ov29_02339CE8
_022DF7EC:
	mov r0, #0
	bl ov29_022E34B0
	mov r0, #0
	mov r1, r0
	bl ov29_022EA3F8
	bl ov29_022E0DFC
	cmp r8, #0
	mov r1, #0x1000
	mov r2, #0
	beq _022DF824
	mov r0, #4
	bl ov29_0234C668
	mov r8, #0
	b _022DF82C
_022DF824:
	mov r0, #1
	bl ov29_0234C668
_022DF82C:
	mov r0, #1
	mov r2, r0
	mov r1, #0x1000
	bl ov29_0234C668
	mov r0, #0
	bl ov29_0234C738
	bl ov29_022E0E44
	mov r0, #1
	bl ov29_022E8BFC
	mov r0, #1
	bl ov29_022EA418
	mov r0, #0
	bl ov29_02339FD0
	mov r0, #0
	mov r1, r0
	bl ov29_0233A0E8
	mov r0, #0
	bl ov29_02338F48
	mov r0, #0
	mov r1, r0
	bl ov29_022EA428
	ldr r0, [sp]
	mov r1, #0
	str r1, [sb, #0xc4]
	strb r1, [sb, #0x78b]
	cmp r0, #0
	strb r1, [sb, #0x78c]
	mov r0, #0x63
	strh r0, [sb, #0x1c]
	mov r2, #1
	ldr r0, _022DFF54 @ =0x0235355C
	strb r2, [sb, #4]
	str r1, [r0]
	beq _022DF8E4
	ldr r1, _022DFF40 @ =0x02353538
	mov r0, #4
	ldr r1, [r1]
	strb r2, [r1, #8]
	bl SetForcedLossReason
	ldrsh r1, [sl, #0x20]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022DFF64 @ =0x00000B73
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022DF8E4:
	ldr r0, _022DFF40 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	cmp r5, #0
	strb r1, [r0, #9]
	beq _022DF90C
	bl TryActivateArtificialWeatherAbilities
	mov r0, #1
	bl ov29_022F62CC
	b _022DF9B0
_022DF90C:
	bl ov29_0234CB88
	bl ov29_022EF9B8
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	cmp r0, #0
	ldrbeq r0, [r1, #6]
	cmpeq r0, #0
	movne r0, #1
	strbne r0, [r1, #9]
	bne _022DF944
	bl GetLeader
	bl ov29_022E2DFC
	bl ov29_02339CE8
_022DF944:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _022DF974
	bl ov29_02334D58
	mov r0, #0
	bl GetApparentWeather
	cmp r0, #0
	beq _022DF974
	mov r0, #1
	bl ov29_02335044
_022DF974:
	mov r0, #1
	bl ov29_022FACBC
	mov r0, #0
	bl ov29_022FAA58
	bl ov29_022EFA74
	mov r0, #0
	bl ov29_022FAF08
	bl TryActivateSlowStart
	bl ov29_02349C84
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	cmp r0, #0xa4
	bne _022DF9B0
	bl TryInflictBurnStatusWholeTeam
_022DF9B0:
	cmp r7, #0
	beq _022DFA78
	bl GetLeader
	movs r4, r0
	beq _022DFA78
	mov r0, #8
	bl DungeonRandInt
	and r0, r0, #0xff
	and r3, r0, #7
	ldr r0, _022DFF68 @ =0x0235171C
	lsl r1, r3, #2
	ldrsh r2, [r0, r1]
	add r0, r0, r3, lsl #2
	ldrsh r3, [r4, #4]
	ldrsh r0, [r0, #2]
	ldrsh r1, [r4, #6]
	add r2, r3, r2
	strh r2, [sp, #0x12]
	mov r2, #0
	add r0, r1, r0
	strh r0, [sp, #0x14]
	ldrh r1, [sp, #0x14]
	ldrh r0, [sp, #0x12]
	strb r2, [sp, #0x3c]
	strb r2, [sp, #0x3a]
	add r2, sl, #0xa4
	str r2, [sp, #0xcc]
	mov r2, #3
	str r2, [sp, #0x18]
	mov r2, #1
	strb r2, [sp, #0x38]
	strh r1, [sp, #0x1e]
	strh r0, [sp, #0x1c]
	ldrsh r2, [sp, #0x12]
	mov r0, #0x18
	ldrsh r1, [sp, #0x14]
	smulbb r2, r2, r0
	smulbb r0, r1, r0
	add r1, r2, #4
	add r2, r0, #4
	add r0, sp, #0x18
	lsl r1, r1, #8
	lsl r2, r2, #8
	bl ov29_022E1A84
	mov r3, #0
	mov r0, r4
	add r1, sp, #0x18
	add r2, sl, #0xa4
	strh r3, [sp, #0x3e]
	bl ov29_02345D84
_022DFA78:
	mov r0, #0
	bl ov29_022EA418
	mov r0, #1
	bl ov29_02338F48
	mov r0, #1
	bl ov29_02339F88
	bl ov29_02339CE8
	cmp r5, #0
	bne _022DFAA4
	mov r0, #0
	bl ov29_022FAD4C
_022DFAA4:
	mov r7, #0
	cmp r5, #0
	movne r5, r7
	bne _022DFAD4
	bl ov29_022E5F20
	bl GetLeader
	add r1, sb, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02305814
	mov r0, #1
	mov r1, r7
	bl ov29_023354C4
_022DFAD4:
	mov r0, #0x10c00
	bl FUN_022BFE6C
	bl FUN_02001808
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _022DFB2C
	mov r4, #1
	mov r2, #0
	mov r0, r4
	strb r2, [sb, #0x758]
	add r1, sb, #0x1a000
	strb r2, [r1, #0x24d]
	bl SetMinimapDataE447
	mov r6, #0
_022DFB14:
	mov r0, r4
	bl RunFractionalTurn
	mov r4, r6
	bl IsFloorOver
	cmp r0, #0
	beq _022DFB14
_022DFB2C:
	mov r0, #0
	bl ov29_0234B010
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, #0
	bl ov29_022E8BFC
	bl GetLeader
	bl EntityIsValid
	cmp r0, #0
	beq _022DFB5C
	bl GetLeader
	bl EnemyEvolution
_022DFB5C:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x758]
	cmp r0, #1
	beq _022DFB8C
	mov r0, #1
	bl TryForcedLoss
	cmp r0, #0
	ldrne r0, _022DFF40 @ =0x02353538
	movne r1, #1
	ldrne r0, [r0]
	strbne r1, [r0, #0x758]
_022DFB8C:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x758]
	cmp r0, #1
	beq _022DFBAC
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _022DFBC4
_022DFBAC:
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	ldrbeq r0, [r1, #0x75f]
	cmpeq r0, #0
	bne _022DFBC4
	bl ov29_022FA648
_022DFBC4:
	bl GetLeader
	bl EntityIsValid
	cmp r0, #0
	beq _022DFBE4
	mov r0, #0x4f
	bl ov29_0234BA18
	mov r0, #0x4f
	bl ov29_0234BA54
_022DFBE4:
	mov r0, #0
	bl ov29_02338F38
	mov r0, #1
	mov r1, #0
	bl ov29_022EA428
	mov r0, #0
	bl SetMinimapDataE447
	ldr r0, _022DFF40 @ =0x02353538
	mov r2, #1
	ldr r1, [r0]
	mov r0, #4
	add r1, r1, #0x1a000
	strb r2, [r1, #0x24d]
	mov r1, #0x4f
	bl ov29_022EA370
	bl ov29_022E9FC0
	cmp r0, #0
	beq _022DFC30
	bl FadeToBlack
_022DFC30:
	mov r0, #2
	mov r1, #0
	bl FUN_020091B0
	mov r0, #3
	mov r1, #0
	bl FUN_020091B0
	bl GetForcedLossReason
	cmp r0, #2
	beq _022DFC60
	bl GetForcedLossReason
	cmp r0, #3
	bne _022DFDB0
_022DFC60:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _022DFDB0
	bl GetLeader
	mov r4, r0
	mov r0, #0
	bl ov29_0233A248
	mov r0, #1
	bl ov29_023359F8
	mov r0, #0x20
	bl ov29_0234C654
	mov r0, #0
	mov r1, r0
	bl FUN_020091B0
	mov r0, #1
	mov r1, #0
	bl FUN_020091B0
	mov r0, #2
	mov r1, #0
	bl FUN_02009194
	mov r0, #3
	mov r1, #0
	bl FUN_02009194
	mov r0, #4
	mov r1, #0
	bl FUN_02009194
	mov r0, #1
	mov r1, #0x4000
	mov r2, #0
	bl ov29_0234C668
	mov r0, #0
	bl ov29_0234C738
	mov r0, #0
	ldr r1, _022DFF6C @ =0x00000B6F
	mov r2, #1
	bl DisplayMessage
	mov r0, #2
	mov r1, #0x4000
	mov r2, #0
	bl ov29_0234C668
	mov r0, #0
	bl ov29_0234C738
	mov r0, #1
	bl ov29_0234C654
	mov r0, #0
	bl ov29_023359F8
	mov r0, #0
	mov r1, r0
	bl FUN_020091B0
	mov r0, #1
	mov r1, #0
	bl FUN_020091B0
	mov r0, #2
	mov r1, #0
	bl FUN_020091B0
	mov r0, #3
	mov r1, #0
	bl FUN_020091B0
	mov r0, #4
	mov r1, #0
	bl FUN_020091B0
	mov r1, #0
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	strb r1, [r0, #0xa]
	bl GetForcedLossReason
	cmp r0, #3
	bne _022DFD9C
	ldr r1, _022DFF40 @ =0x02353538
	ldr r0, _022DFF70 @ =0x00000266
	ldr r2, [r1]
	mov r1, r4
	add r3, r2, #0x248
	mov r2, r4
	add r3, r3, #0x400
	bl ov29_022ECDE4
	b _022DFDB0
_022DFD9C:
	ldr r0, _022DFF74 @ =0x00000261
	mov r1, r4
	mov r2, r4
	mov r3, #0
	bl ov29_022ECDE4
_022DFDB0:
	bl ov29_023384F0
	bl ov29_0233861C
	bl ov29_022F7804
	bl ov29_023365B8
	bl ov29_022DD7AC
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, _022DFF60 @ =0x02353563
	mov r3, #0
	ldr r2, [r0]
	strb r3, [r1]
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq _022DFE0C
	bl ov29_0234CA84
	mov r1, #3
	ldr r0, _022DFF40 @ =0x02353538
	str r1, [sl, #0xb0]
	ldr r1, [r0]
	ldrb r0, [r1, #0x748]
	strb r0, [sl, #0xb4]
	ldrb r0, [r1, #0x749]
	strb r0, [sl, #0xb5]
	b _022E026C
_022DFE0C:
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _022DFE1C
	bl ov29_0234CA84
_022DFE1C:
	bl ov29_022FDFA4
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _022DFE3C
	mov r0, #2
	bl ov29_023469E0
_022DFE3C:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x758]
	cmp r0, #1
	bne _022DFE64
	ldrb r0, [r1, #0x790]
	cmp r0, #0
	beq _022E00EC
	bl ov29_02346A64
	b _022E00EC
_022DFE64:
	ldr r0, [r1, #0x18]
	mov r1, #0
	cmp r0, #1
	bne _022DFE94
	bl GetLeader
	mov r2, r0
	mov r1, #0
	ldr r0, _022DFF78 @ =0x00000279
	mov r3, r1
	bl ov29_022ECDE4
	mov r1, #1
	b _022DFF8C
_022DFE94:
	cmp r0, #2
	bne _022DFED4
	bl GetLeader
	mov r1, #0
	mov r2, r0
	mov r3, r1
	mov r0, #0x27c
	bl ov29_022ECDE4
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022DFECC
	bl FUN_0204FD38
_022DFECC:
	mov r1, #1
	b _022DFF8C
_022DFED4:
	cmp r0, #3
	bne _022DFF14
	bl GetLeader
	mov r2, r0
	mov r1, #0
	ldr r0, _022DFF7C @ =0x0000027D
	mov r3, r1
	bl ov29_022ECDE4
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022DFF0C
	bl FUN_0204FD38
_022DFF0C:
	mov r1, #1
	b _022DFF8C
_022DFF14:
	cmp r0, #4
	bne _022DFF84
	bl GetLeader
	mov r2, r0
	mov r1, #0
	ldr r0, _022DFF80 @ =0x0000027A
	mov r3, r1
	bl ov29_022ECDE4
	mov r1, #1
	b _022DFF8C
	.align 2, 0
_022DFF3C: .4byte 0x023510C8
_022DFF40: .4byte 0x02353538
_022DFF44: .4byte 0x00000B6B
_022DFF48: .4byte 0x00000B6C
_022DFF4C: .4byte 0x00000B6D
_022DFF50: .4byte 0x00000B6E
_022DFF54: .4byte 0x0235355C
_022DFF58: .4byte 0x023510C0
_022DFF5C: .4byte ov29_022DEBBC
_022DFF60: .4byte 0x02353563
_022DFF64: .4byte 0x00000B73
_022DFF68: .4byte 0x0235171C
_022DFF6C: .4byte 0x00000B6F
_022DFF70: .4byte 0x00000266
_022DFF74: .4byte 0x00000261
_022DFF78: .4byte 0x00000279
_022DFF7C: .4byte 0x0000027D
_022DFF80: .4byte 0x0000027A
_022DFF84:
	cmp r0, #5
	moveq r1, #1
_022DFF8C:
	cmp r1, #0
	bne _022E00EC
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #2
	bne _022DFFFC
	bl GetFloorType
	cmp r0, #2
	ldreq r0, _022DFF40 @ =0x02353538
	ldreq r0, [r0]
	ldrbeq r0, [r0, #0x758]
	cmpeq r0, #2
	bne _022DFFFC
	bl GetLeader
	mov r2, r0
	mov r1, #0
	ldr r0, _022E034C @ =0x0000027B
	mov r3, r1
	bl ov29_022ECDE4
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022E00EC
	bl FUN_0204FD38
	b _022E00EC
_022DFFFC:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022E0014
	bl FUN_0204FD38
_022E0014:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r4, [r0]
	add r0, r4, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	bne _022E005C
	ldrb r0, [r4, #0x748]
	bl FUN_0204D2F8
	ldrb r1, [r4, #0x749]
	cmp r0, r1
	bhi _022E005C
	bl GetLeader
	mov r2, r0
	mov r1, #0
	ldr r0, _022DFF80 @ =0x0000027A
	mov r3, r1
	bl ov29_022ECDE4
	b _022E00EC
_022E005C:
	ldr r1, _022DFF40 @ =0x02353538
	ldrb r0, [r4, #0x748]
	ldr r4, [r1]
	bl FUN_0204D2F8
	ldrb r1, [r4, #0x749]
	cmp r1, r0
	bls _022E008C
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x748]
	ldrb r1, [r1, #0x749]
	bl FUN_0204D2DC
_022E008C:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, [r0]
	add r0, r1, #0x2c000
	ldrb r1, [r1, #0x749]
	ldrb r0, [r0, #0xaf4]
	add r1, r1, #1
	cmp r1, r0
	blt _022E00C8
	bl GetLeader
	mov r2, r0
	mov r1, #0
	ldr r0, _022DFF80 @ =0x0000027A
	mov r3, r1
	bl ov29_022ECDE4
	b _022E00EC
_022E00C8:
	bl GetDungeonGenInfoUnk0C
	cmp r0, #0
	bne _022DF428
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x749]
	add r0, r0, #1
	strb r0, [r1, #0x749]
	b _022DF428
_022E00EC:
	ldr r0, _022DFF40 @ =0x02353538
	ldr r1, _022DFF60 @ =0x02353563
	mov r2, #0
	ldr r0, [r0]
	strb r2, [r1]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	bne _022E0150
	add r0, sl, #0xc0
	bl ov29_022ECFB8
	ldr r1, _022DFF40 @ =0x02353538
	mov r0, #0
	ldr r1, [r1]
	strb r0, [r1, #0x791]
	bl ov29_022EAF34
	ldr r1, _022DFF40 @ =0x02353538
	mov r3, #0
	ldr r0, [r1]
	ldr r2, _022E0350 @ =0x000003E7
	strb r3, [r0, #0x794]
	ldr r0, [r1]
	add r0, r0, #0x700
	strh r2, [r0, #0x96]
	ldr r0, [r1]
	strb r3, [r0, #0x7c9]
_022E0150:
	cmp sl, #0
	beq _022E026C
	bl ov29_022ECF44
	cmp r0, #0
	beq _022E01D8
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _022E01C8
	mvn r2, #1
	add r0, sl, #0xb8
	mov r1, #8
	str r2, [sl, #0xb0]
	bl FUN_02003250
	ldr r0, _022DFF40 @ =0x02353538
	ldr r2, [r0]
	ldrb r1, [r2, #0x748]
	strb r1, [sl, #0xb4]
	ldrb r1, [r2, #0x749]
	strb r1, [sl, #0xb5]
	ldr r2, [r0]
	ldrb r1, [r2, #0x748]
	strb r1, [sl, #0xb8]
	ldrb r1, [r2, #0x749]
	strb r1, [sl, #0xb9]
	ldr r0, [r0]
	ldr r0, [r0, #0x7a0]
	str r0, [sl, #0xbc]
	b _022E026C
_022E01C8:
	mvn r0, #0
	str r0, [sl, #0xb0]
	bl ov29_023488C8
	b _022E026C
_022E01D8:
	bl ov29_022ECF78
	cmp r0, #0
	beq _022E0244
	ldr r0, _022DFF40 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #2
	moveq r0, #4
	streq r0, [sl, #0xb0]
	beq _022E026C
	cmp r0, #3
	moveq r0, #1
	streq r0, [sl, #0xb0]
	beq _022E026C
	cmp r0, #0
	bne _022E022C
	mov r0, #1
	str r0, [sl, #0xb0]
	bl ov29_02348894
	b _022E026C
_022E022C:
	bl ov29_02348918
	bl ov29_02348994
	mov r0, #1
	str r0, [sl, #0xb0]
	bl ov29_02348894
	b _022E026C
_022E0244:
	mov r1, #2
	ldr r0, _022DFF40 @ =0x02353538
	str r1, [sl, #0xb0]
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #1
	bne _022E0268
	bl ov29_02348994
_022E0268:
	bl ov29_02348894
_022E026C:
	bl SetBothScreensWindowColorToDefault
	mov r0, #0x14
	bl ov29_022EAEAC
	mov r0, #0x14
	bl ov29_022DDE00
	bl ov29_022E15C8
	bl ov29_022E1604
	bl ov29_02338FC8
	cmp sl, #0
	beq _022E030C
	ldr r1, [sl, #0xb0]
	mvn r0, #1
	cmp r1, r0
	cmpne r1, #3
	beq _022E02B4
	bl FUN_02057E90
	mvn r0, #0
	bl FUN_02058644
_022E02B4:
	ldr r1, [sl, #0xb0]
	cmp r1, #1
	cmpne r1, #4
	cmpne r1, #2
	bne _022E02D4
	bl ov29_02346DA4
	bl FUN_02057D58
	b _022E02EC
_022E02D4:
	mvn r0, #0
	cmp r1, r0
	bne _022E02EC
	bl ov29_02346E48
	bl ov29_022F7E34
	bl FUN_02057EF4
_022E02EC:
	ldr r0, [sl, #0xb0]
	cmp r0, #1
	cmpne r0, #4
	cmpne r0, #2
	moveq r0, #1
	strbeq r0, [sl, #0x1a8]
	movne r0, #0
	strbne r0, [sl, #0x1a8]
_022E030C:
	bl FUN_022BDC0C
	bl ov29_022E7F44
	bl ov29_0234AFD0
	bl ov29_0204804C
	bl ov29_02338D30
	bl ov29_022ED0B0
	bl ov29_022DE930
	bl ov29_022F6F10
	ldr r0, _022DFF40 @ =0x02353538
	mov r1, #0
	str r1, [r0]
	bl ov29_022DE15C
	bl ov29_02344088
	mov r0, #1
	add sp, sp, #0xd0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E034C: .4byte 0x0000027B
_022E0350: .4byte 0x000003E7
	arm_func_end RunDungeon

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022E0354
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022E0378
ov29_022E0378: @ 0x022E0378
	ldr r1, _022E03A8 @ =0x0237CFC0
	ldrb r1, [r1]
	cmp r1, #0
	movne r0, #1
	bxne lr
	ldr r1, _022E03AC @ =0x020A1AE8
	ldrb r0, [r1, r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022E03A8: .4byte 0x0237CFC0
_022E03AC: .4byte 0x020A1AE8
	arm_func_end ov29_022E0378

	arm_func_start GetFloorType
GetFloorType: @ 0x022E03B0
	push {r3, lr}
	ldr r0, _022E0430 @ =0x02353538
	ldr r2, [r0]
	add r0, r2, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #2
	ldrbeq r1, [r2, #0x751]
	ldrbeq r0, [r2, #0x749]
	cmpeq r1, r0
	moveq r0, #2
	popeq {r3, pc}
	add r0, r2, #0x4000
	ldrb r0, [r0, #0xda]
	cmp r0, #0
	beq _022E03F8
	cmp r0, #0x6e
	movlo r0, #1
	blo _022E041C
_022E03F8:
	bl FixedRoomIsSubstituteRoom
	cmp r0, #0
	bne _022E0410
	bl IsJirachiChallengeFloor
	cmp r0, #0
	beq _022E0418
_022E0410:
	mov r0, #1
	b _022E041C
_022E0418:
	mov r0, #0
_022E041C:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	.align 2, 0
_022E0430: .4byte 0x02353538
	arm_func_end GetFloorType

	arm_func_start ov29_022E0434
ov29_022E0434: @ 0x022E0434
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, #0
	ldr r4, _022E0618 @ =0x02353538
	mov r5, r7
	mov r6, #1
	mov fp, r7
_022E044C:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb38]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022E04B4
	ldr sl, [r8, #0xb4]
	mov sb, r6
	ldrb r0, [sl, #9]
	cmp r0, #1
	mov r0, sl
	moveq sb, r5
	bl IsExperienceLocked
	cmp r0, #0
	ldrb r0, [sl, #0xbc]
	movne sb, fp
	cmp r0, #7
	moveq sb, #0
	cmp sb, #0
	beq _022E04B4
	ldr r1, _022E061C @ =0x00000246
	mov r0, r8
	mov r2, r8
	bl HandleFaint
_022E04B4:
	add r7, r7, #1
	cmp r7, #0x10
	blt _022E044C
	mov r8, #0
_022E04C4:
	ldr r0, _022E0618 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb28]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022E05A0
	mov r0, #0
	mov r3, #1
	strb r0, [r6, #0x22]
	strb r3, [r6, #0x20]
	ldr r4, [r6, #0xb4]
	rsb r0, r3, #0x3e8
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r3, _022E0618 @ =0x02353538
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x10]
	add r2, r4, #0x100
	ldrh r0, [r2, #0x4a]
	mov r1, #0
	strh r0, [r2, #0x46]
	ldrh r5, [r2, #0x4c]
	mov r0, r4
	strh r5, [r2, #0x48]
	ldr r2, [r3]
	strb r1, [r2, #0x78d]
	bl ov29_022FDDC0
	ldrsh r0, [r4, #2]
	mov r5, #0
	mov sb, r5
	strh r0, [r4, #4]
	strb r5, [r4, #0x106]
	str r5, [r4, #0x188]
	add r4, r4, #0x124
	mov sl, #1
_022E0564:
	ldrb r0, [r4, r5, lsl #3]
	add r7, r4, r5, lsl #3
	tst r0, #1
	movne r0, sl
	moveq r0, sb
	tst r0, #0xff
	beq _022E058C
	mov r0, r7
	bl GetMaxPpWrapper
	strb r0, [r7, #6]
_022E058C:
	add r5, r5, #1
	cmp r5, #4
	blt _022E0564
	mov r0, r6
	bl CalcSpeedStageWrapper
_022E05A0:
	add r8, r8, #1
	cmp r8, #4
	blt _022E04C4
	mov r8, #0
	mov r4, #5
	mov r5, r8
_022E05B8:
	mov r6, r5
_022E05BC:
	mov r0, r6
	mov r1, r8
	bl GetTileSafe
	ldr r7, [r0, #0x10]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022E05FC
	ldr r0, [r7]
	cmp r0, #2
	bne _022E05FC
	mov r0, r7
	bl ov29_022E1608
	ldrb r1, [r0]
	cmp r1, #0x20
	strbeq r4, [r0]
_022E05FC:
	add r6, r6, #1
	cmp r6, #0x38
	blt _022E05BC
	add r8, r8, #1
	cmp r8, #0x20
	blt _022E05B8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E0618: .4byte 0x02353538
_022E061C: .4byte 0x00000246
	arm_func_end ov29_022E0434

	arm_func_start TryForcedLoss
TryForcedLoss: @ 0x022E0620
	push {r4, r5, r6, lr}
	mov r5, r0
	mov r6, #0
	bl ov29_0234B034
	cmp r5, #0
	bne _022E0648
	bl IsFloorOver
	cmp r0, #0
	movne r0, r6
	popne {r4, r5, r6, pc}
_022E0648:
	bl GetForcedLossReason
	cmp r0, #1
	bne _022E06C8
	bl GetLeader
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	beq _022E07F8
	cmp r5, #0
	bne _022E0698
	ldr r1, _022E0800 @ =0x02353538
	mov r0, #0
	ldr r1, [r1]
	add r1, r1, #0x248
	add r1, r1, #0x400
	bl ov29_0234B0B4
	mov r0, #0
	mov r1, #0xb70
	mov r2, #1
	bl DisplayMessage2
_022E0698:
	ldr r0, _022E0800 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75f]
	cmp r0, #0
	beq _022E06B0
	bl ov29_022E0A18
_022E06B0:
	ldr r1, _022E0804 @ =0x0000025E
	mov r0, r4
	mov r2, r4
	bl HandleFaint
	mov r6, #1
	b _022E07F8
_022E06C8:
	bl GetForcedLossReason
	cmp r0, #2
	bne _022E0738
	bl GetLeader
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	beq _022E07F8
	cmp r5, #0
	bne _022E0718
	ldr r1, _022E0800 @ =0x02353538
	mov r0, #0
	ldr r1, [r1]
	add r1, r1, #0x248
	add r1, r1, #0x400
	bl ov29_0234B0B4
	ldr r1, _022E0808 @ =0x00000B71
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022E0718:
	mov r0, r4
	bl ov29_022E68BC
	ldr r1, _022E080C @ =0x00000261
	mov r0, r4
	mov r2, r4
	bl HandleFaint
	mov r6, #1
	b _022E07F8
_022E0738:
	bl GetForcedLossReason
	cmp r0, #3
	bne _022E07BC
	bl GetLeader
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	beq _022E07F8
	ldr r0, _022E0800 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x75f]
	cmp r0, #0
	beq _022E0774
	bl ov29_022E0A18
	b _022E07A4
_022E0774:
	cmp r5, #0
	bne _022E079C
	add r0, r1, #0x248
	add r1, r0, #0x400
	mov r0, #0
	bl ov29_0234B0B4
	ldr r1, _022E0810 @ =0x00000B72
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022E079C:
	mov r0, r4
	bl ov29_022E68BC
_022E07A4:
	ldr r1, _022E0814 @ =0x00000266
	mov r0, r4
	mov r2, r4
	bl HandleFaint
	mov r6, #1
	b _022E07F8
_022E07BC:
	bl GetForcedLossReason
	cmp r0, #4
	bne _022E07F8
	bl GetLeader
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	beq _022E07F8
	mov r0, r4
	bl ov29_022E68BC
	ldr r1, _022E0818 @ =0x00000265
	mov r0, r4
	mov r2, r4
	bl HandleFaint
	mov r6, #1
_022E07F8:
	mov r0, r6
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E0800: .4byte 0x02353538
_022E0804: .4byte 0x0000025E
_022E0808: .4byte 0x00000B71
_022E080C: .4byte 0x00000261
_022E0810: .4byte 0x00000B72
_022E0814: .4byte 0x00000266
_022E0818: .4byte 0x00000265
	arm_func_end TryForcedLoss

	arm_func_start ov29_022E081C
ov29_022E081C: @ 0x022E081C
	push {r3, lr}
	ldr r0, _022E0860 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051340
	cmp r0, #0
	bne _022E083C
	bl FUN_0200F7A8
_022E083C:
	ldr r0, _022E0860 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051358
	cmp r0, #0
	popne {r3, pc}
	mov r0, #0
	bl FUN_0200ED1C
	pop {r3, pc}
	.align 2, 0
_022E0860: .4byte 0x02353538
	arm_func_end ov29_022E081C

	arm_func_start ov29_022E0864
ov29_022E0864: @ 0x022E0864
	cmp r0, #0
	beq _022E0878
	cmp r0, #0x51
	movlo r0, #1
	bxlo lr
_022E0878:
	mov r0, #0
	bx lr
	arm_func_end ov29_022E0864

	arm_func_start ov29_022E0880
ov29_022E0880: @ 0x022E0880
	ldr r0, _022E0898 @ =0x02353538
	ldr ip, _022E089C @ =ov29_022E0864
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bx ip
	.align 2, 0
_022E0898: .4byte 0x02353538
_022E089C: .4byte ov29_022E0864
	arm_func_end ov29_022E0880

	arm_func_start ov29_022E08A0
ov29_022E08A0: @ 0x022E08A0
	ldr r0, _022E08C8 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	cmp r0, #0xb4
	blo _022E08C0
	cmp r0, #0xbe
	movls r0, #1
	bxls lr
_022E08C0:
	mov r0, #0
	bx lr
	.align 2, 0
_022E08C8: .4byte 0x02353538
	arm_func_end ov29_022E08A0

	arm_func_start FixedRoomIsSubstituteRoom
FixedRoomIsSubstituteRoom: @ 0x022E08CC
	ldr r0, _022E08F0 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	cmp r0, #0x6e
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022E08F0: .4byte 0x02353538
	arm_func_end FixedRoomIsSubstituteRoom

	arm_func_start ov29_022E08F4
ov29_022E08F4: @ 0x022E08F4
	ldr r0, _022E0924 @ =0x02353538
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022E0924: .4byte 0x02353538
	arm_func_end ov29_022E08F4

	arm_func_start StoryRestrictionsEnabled
StoryRestrictionsEnabled: @ 0x022E0928
	ldr r0, _022E0958 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x75c]
	cmp r0, #0
	beq _022E0948
	ldrb r0, [r1, #0x75e]
	cmp r0, #0
	beq _022E0950
_022E0948:
	mov r0, #1
	bx lr
_022E0950:
	mov r0, #0
	bx lr
	.align 2, 0
_022E0958: .4byte 0x02353538
	arm_func_end StoryRestrictionsEnabled

	arm_func_start GetScenarioBalance
GetScenarioBalance: @ 0x022E095C
	ldr ip, _022E0964 @ =FUN_0204CB94
	bx ip
	.align 2, 0
_022E0964: .4byte FUN_0204CB94
	arm_func_end GetScenarioBalance

	arm_func_start FadeToBlack
FadeToBlack: @ 0x022E0968
	push {r3, lr}
	mov r0, #0
	bl ov29_0233A248
	bl ov29_022E0DFC
	mov r0, #2
	mov r1, #0x1000
	mov r2, #0
	bl ov29_0234C668
	mov r0, #2
	mov r1, #0x1000
	mov r2, #1
	bl ov29_0234C668
	mov r0, #0
	bl ov29_0234C738
	bl ov29_022E0E44
	mov r0, #1
	bl ov29_0233A248
	bl ov29_022DE854
	bl ov29_022DE15C
	bl ov29_022E8778
	mov r0, #2
	mov r1, #0x4f
	bl ov29_022EA370
	mov r0, #1
	bl ov29_022E34B0
	mov r1, #1
	ldr r0, _022E09E4 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strb r1, [r0, #0x24d]
	pop {r3, pc}
	.align 2, 0
_022E09E4: .4byte 0x02353538
	arm_func_end FadeToBlack

	arm_func_start ov29_022E09E8
ov29_022E09E8: @ 0x022E09E8
	ldr r2, _022E0A00 @ =0x02353538
	ldr r3, [r2]
	str r0, [r3, #0x18]
	ldr r0, [r2]
	strb r1, [r0, #8]
	bx lr
	.align 2, 0
_022E0A00: .4byte 0x02353538
	arm_func_end ov29_022E09E8

	arm_func_start ov29_022E0A04
ov29_022E0A04: @ 0x022E0A04
	ldr r0, _022E0A14 @ =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	bx lr
	.align 2, 0
_022E0A14: .4byte 0x02353538
	arm_func_end ov29_022E0A04

	arm_func_start ov29_022E0A18
ov29_022E0A18: @ 0x022E0A18
	push {r3, lr}
	mov r0, #0
	bl ov29_022E38E0
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, #0
	bl ov29_022E8BFC
	mov r0, #0
	bl SetMinimapDataE447
	ldr r0, _022E0A60 @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strb r1, [r0, #0x24d]
	bl FadeToBlack
	mov r0, #0
	bl ov29_022E9FD0
	pop {r3, pc}
	.align 2, 0
_022E0A60: .4byte 0x02353538
	arm_func_end ov29_022E0A18

	arm_func_start ov29_022E0A64
ov29_022E0A64: @ 0x022E0A64
	push {r3, lr}
	ldr r1, _022E0B34 @ =0x0237C694
	mov r0, #0
	bl FUN_020061EC
	ldr r1, _022E0B38 @ =0x0237C696
	mov r0, #0
	bl FUN_0200625C
	ldr r1, _022E0B3C @ =0x0237C698
	mov r0, #0
	bl FUN_020063F4
	ldr r0, _022E0B40 @ =0x0237C694
	mov r1, #0
	strh r1, [r0, #8]
	ldrh r1, [r0]
	tst r1, #2
	ldrsh r1, [r0, #0xa]
	beq _022E0AB8
	cmp r1, #0x64
	addlt r1, r1, #1
	strhlt r1, [r0, #0xa]
	b _022E0ADC
_022E0AB8:
	cmp r1, #2
	blt _022E0AD0
	cmp r1, #0xc
	ldrhlt r1, [r0, #8]
	orrlt r1, r1, #2
	strhlt r1, [r0, #8]
_022E0AD0:
	ldr r0, _022E0B40 @ =0x0237C694
	mov r1, #0
	strh r1, [r0, #0xa]
_022E0ADC:
	ldr r0, _022E0B40 @ =0x0237C694
	ldrh r1, [r0]
	tst r1, #0x100
	ldrsh r1, [r0, #0xc]
	beq _022E0B00
	cmp r1, #0x64
	addlt r1, r1, #1
	strhlt r1, [r0, #0xc]
	b _022E0B24
_022E0B00:
	cmp r1, #2
	blt _022E0B18
	cmp r1, #0xc
	ldrhlt r1, [r0, #8]
	orrlt r1, r1, #0x100
	strhlt r1, [r0, #8]
_022E0B18:
	ldr r0, _022E0B40 @ =0x0237C694
	mov r1, #0
	strh r1, [r0, #0xc]
_022E0B24:
	ldr r0, _022E0B40 @ =0x0237C694
	ldrh r1, [r0, #8]
	strh r1, [r0, #6]
	pop {r3, pc}
	.align 2, 0
_022E0B34: .4byte 0x0237C694
_022E0B38: .4byte 0x0237C696
_022E0B3C: .4byte 0x0237C698
_022E0B40: .4byte 0x0237C694
	arm_func_end ov29_022E0A64

	arm_func_start ov29_022E0B44
ov29_022E0B44: @ 0x022E0B44
	ldr r1, _022E0B58 @ =0x000003E7
	ldr r0, _022E0B5C @ =0x0237C694
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
_022E0B58: .4byte 0x000003E7
_022E0B5C: .4byte 0x0237C694
	arm_func_end ov29_022E0B44

	arm_func_start ov29_022E0B60
ov29_022E0B60: @ 0x022E0B60
	push {r3, lr}
	bl FUN_0204AE80
	cmp r0, #0
	beq _022E0C18
	ldr r0, _022E0C24 @ =0x0237C6A4
	bl FUN_02006C1C
	ldr r0, _022E0C28 @ =0x0237C6A4
	ldrb r1, [r0, #0x2c]
	cmp r1, #0
	beq _022E0B98
	ldrh r1, [r0]
	tst r1, #0x40
	moveq r1, #0
	strbeq r1, [r0, #0x2c]
_022E0B98:
	ldr r0, _022E0C28 @ =0x0237C6A4
	mov r2, #0
	ldrh r3, [r0]
	strh r2, [r0, #0x24]
	tst r3, #0x80
	beq _022E0BD0
	ldrh r1, [r0, #0x24]
	tst r3, #0x1000
	orr r1, r1, #0x80
	strh r1, [r0, #0x24]
	str r2, [r0, #0x28]
	movne r1, #1
	strbne r1, [r0, #0x26]
	pop {r3, pc}
_022E0BD0:
	tst r3, #0x40
	beq _022E0C0C
	ldr r1, [r0, #0x28]
	cmp r1, #3
	bls _022E0C00
	ldrh r1, [r0, #0x24]
	tst r3, #0x1000
	orr r1, r1, #0x40
	strh r1, [r0, #0x24]
	movne r1, #1
	strbne r1, [r0, #0x26]
	pop {r3, pc}
_022E0C00:
	add r1, r1, #1
	str r1, [r0, #0x28]
	pop {r3, pc}
_022E0C0C:
	strb r2, [r0, #0x26]
	str r2, [r0, #0x28]
	pop {r3, pc}
_022E0C18:
	ldr r0, _022E0C24 @ =0x0237C6A4
	bl FUN_02006BFC
	pop {r3, pc}
	.align 2, 0
_022E0C24: .4byte 0x0237C6A4
_022E0C28: .4byte 0x0237C6A4
	arm_func_end ov29_022E0B60

	arm_func_start ov29_022E0C2C
ov29_022E0C2C: @ 0x022E0C2C
	ldr r1, _022E0C38 @ =0x0237C6A4
	strb r0, [r1, #0x2c]
	bx lr
	.align 2, 0
_022E0C38: .4byte 0x0237C6A4
	arm_func_end ov29_022E0C2C

	arm_func_start ov29_022E0C3C
ov29_022E0C3C: @ 0x022E0C3C
	ldr r0, _022E0C48 @ =0x0237C6A4
	ldrb r0, [r0, #0x2c]
	bx lr
	.align 2, 0
_022E0C48: .4byte 0x0237C6A4
	arm_func_end ov29_022E0C3C

	arm_func_start ov29_022E0C4C
ov29_022E0C4C: @ 0x022E0C4C
	push {r3, lr}
	bl FUN_02006564
	ldr r0, _022E0C60 @ =0x0237C6A4
	bl FUN_02006BFC
	pop {r3, pc}
	.align 2, 0
_022E0C60: .4byte 0x0237C6A4
	arm_func_end ov29_022E0C4C

	arm_func_start ov29_022E0C64
ov29_022E0C64: @ 0x022E0C64
	ldr r1, _022E0C7C @ =0x0237C6A4
	ldr r2, [r1, #4]
	ldr r1, [r1, #8]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_022E0C7C: .4byte 0x0237C6A4
	arm_func_end ov29_022E0C64

	arm_func_start ov29_022E0C80
ov29_022E0C80: @ 0x022E0C80
	ldr r1, _022E0C98 @ =0x0237C6A4
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #0x10]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_022E0C98: .4byte 0x0237C6A4
	arm_func_end ov29_022E0C80

	arm_func_start ov29_022E0C9C
ov29_022E0C9C: @ 0x022E0C9C
	ldr r1, _022E0CB4 @ =0x0237C6A4
	ldr r2, [r1, #0x14]
	ldr r1, [r1, #0x18]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_022E0CB4: .4byte 0x0237C6A4
	arm_func_end ov29_022E0C9C

	arm_func_start ov29_022E0CB8
ov29_022E0CB8: @ 0x022E0CB8
	push {r3, lr}
	ldr lr, _022E0CF8 @ =0x0237C6B8
	ldr ip, [lr]
	cmp r0, ip
	bgt _022E0CE8
	cmp r2, ip
	blt _022E0CE8
	ldr r0, [lr, #4]
	cmp r1, r0
	bgt _022E0CE8
	cmp r3, r0
	bge _022E0CF0
_022E0CE8:
	mov r0, #0
	pop {r3, pc}
_022E0CF0:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E0CF8: .4byte 0x0237C6B8
	arm_func_end ov29_022E0CB8

	arm_func_start ov29_022E0CFC
ov29_022E0CFC: @ 0x022E0CFC
	push {r3, lr}
	mov r0, #0
	bl FUN_020091CC
	mov r0, #1
	bl FUN_020091CC
	bl ov29_022E0E8C
	mov r0, #0
	mov r2, r0
	mov r1, #1
	bl FUN_02009454
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl FUN_02009454
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl FUN_02009454
	mov r0, #3
	mov r1, #2
	mov r2, #0
	bl FUN_02009454
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl FUN_02009454
	mov r0, #0x40
	mov r1, r0
	mov r2, #0
	bl FUN_020094C4
	mov r0, #0
	mov r1, #2
	mov r2, #1
	bl FUN_02009454
	mov r0, #1
	mov r1, #2
	mov r2, r0
	bl FUN_02009454
	mov r0, #2
	mov r1, r0
	mov r2, #1
	bl FUN_02009454
	mov r0, #3
	mov r1, #2
	mov r2, #1
	bl FUN_02009454
	mov r0, #4
	mov r1, #2
	mov r2, #1
	bl FUN_02009454
	mov r0, #0x40
	mov r1, r0
	mov r2, #1
	bl FUN_020094C4
	pop {r3, pc}
	arm_func_end ov29_022E0CFC

	arm_func_start ov29_02009194
ov29_02009194: @ 0x022E0DD8
	ldr ip, _022E0DE0 @ =FUN_02009194
	bx ip
	.align 2, 0
_022E0DE0: .4byte FUN_02009194
	arm_func_end ov29_02009194

	arm_func_start ov29_020091B0
ov29_020091B0: @ 0x022E0DE4
	ldr ip, _022E0DEC @ =FUN_020091B0
	bx ip
	.align 2, 0
_022E0DEC: .4byte FUN_020091B0
	arm_func_end ov29_020091B0

	arm_func_start ov29_020091CC
ov29_020091CC: @ 0x022E0DF0
	ldr ip, _022E0DF8 @ =FUN_020091CC
	bx ip
	.align 2, 0
_022E0DF8: .4byte FUN_020091CC
	arm_func_end ov29_020091CC

	arm_func_start ov29_022E0DFC
ov29_022E0DFC: @ 0x022E0DFC
	push {r3, lr}
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl FUN_020090A0
	mov r0, #1
	mov r1, r0
	mov r2, #0
	bl FUN_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl FUN_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, #0
	bl FUN_020090A0
	pop {r3, pc}
	arm_func_end ov29_022E0DFC

	arm_func_start ov29_022E0E44
ov29_022E0E44: @ 0x022E0E44
	push {r3, lr}
	mov r0, #0
	mov r2, r0
	mov r1, #1
	bl FUN_020090A0
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl FUN_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, #0
	bl FUN_020090A0
	pop {r3, pc}
	arm_func_end ov29_022E0E44

	arm_func_start ov29_022E0E8C
ov29_022E0E8C: @ 0x022E0E8C
	push {r3, lr}
	mov r0, #0
	mov r2, r0
	mov r1, #1
	bl FUN_020090A0
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl FUN_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, #0
	bl FUN_020090A0
	mov r0, #0
	mov r1, r0
	mov r2, #1
	bl FUN_020090A0
	mov r0, #1
	mov r1, r0
	mov r2, r0
	bl FUN_020090A0
	mov r0, #2
	mov r1, r0
	mov r2, #1
	bl FUN_020090A0
	mov r0, #3
	mov r1, r0
	mov r2, #1
	bl FUN_020090A0
	pop {r3, pc}
	arm_func_end ov29_022E0E8C

	arm_func_start ov29_022E0F14
ov29_022E0F14: @ 0x022E0F14
	ldr ip, _022E0F28 @ =FUN_02008F3C
	lsl r2, r0, #0x14
	mov r0, r1
	asr r1, r2, #0x10
	bx ip
	.align 2, 0
_022E0F28: .4byte FUN_02008F3C
	arm_func_end ov29_022E0F14

	arm_func_start ov29_022E0F2C
ov29_022E0F2C: @ 0x022E0F2C
	ldr r3, _022E0F64 @ =0x020AFC4C
	mov r2, #0x70
	ldr ip, [r3]
	ldr r3, _022E0F68 @ =0x020AFC28
	mla r2, r1, r2, ip
	ldrh r1, [r2, #0xc]
	ldr ip, [r2, #0x64]
	lsr r2, r1, #0x1f
	rsb r1, r2, r1, lsl #30
	add r1, r2, r1, ror #30
	lsl r1, r1, #1
	ldrsh r1, [r3, r1]
	smlabb r0, r0, r1, ip
	bx lr
	.align 2, 0
_022E0F64: .4byte 0x020AFC4C
_022E0F68: .4byte 0x020AFC28
	arm_func_end ov29_022E0F2C

	arm_func_start ov29_022E0F6C
ov29_022E0F6C: @ 0x022E0F6C
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x74
	ldr r3, _022E11D0 @ =0x023510E0
	add r2, sp, #0x28
	mov r1, #0x16
_022E0F80:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E0F80
	ldr r1, _022E11D4 @ =0x000003E5
	add r2, sp, #8
	mov r0, #4
	mov r3, #0
	bl FUN_0200C388
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	bl FUN_0201F4B4
	mov r0, #0xb0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, sp, #0x54
	mov r2, #1
	mov r3, #0x20
	bl FUN_0201F598
	ldr r0, _022E11D8 @ =0x020AFC4C
	add r1, sp, #0x54
	ldr r0, [r0]
	mov r2, #0
	bl FUN_0201B43C
	add r0, sp, #8
	bl FUN_02008BD4
	ldr r1, _022E11DC @ =0x000003E3
	mov r0, #4
	add r2, sp, #8
	mov r3, #0
	bl FUN_0200C388
	ldr r1, [sp, #8]
	add r0, sp, #0x10
	bl FUN_0201F4B4
	ldr r1, [sp, #0x10]
	mov r0, #0x1d0
	add r1, r1, #4
	str r1, [sp, #0x10]
	mov r1, #0
	bl ov29_022E0F2C
	mov r7, #0
	add r6, sp, #0x28
	mov r5, r7
	mov r4, #0xb
_022E1038:
	lsl r0, r7, #2
	add r1, r6, r7, lsl #2
	ldrsh r0, [r6, r0]
	ldrsh r8, [r1, #2]
	mov r1, r5
	bl ov29_022E0F2C
	ldr r1, [sp, #0x10]
	mov r3, r4
	lsl r2, r8, #1
	bl FUN_0201BFF0
	asr r0, r8, #1
	add r0, r8, r0, lsr #30
	add r7, r7, #1
	ldr r1, [sp, #0x10]
	asr r0, r0, #2
	add r0, r1, r0, lsl #2
	str r0, [sp, #0x10]
	cmp r7, #0xb
	blo _022E1038
	add r0, sp, #8
	bl FUN_02008BD4
	ldr r1, _022E11E0 @ =0x000003E7
	add r2, sp, #8
	mov r0, #4
	mov r3, #0
	bl FUN_0200C388
	ldr r1, [sp, #8]
	add r0, sp, #0x18
	bl FUN_0201F4B4
	mov r2, #0
	str r2, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	add r0, sp, #0x64
	mov r3, #0x10
	bl FUN_0201F598
	ldr r0, _022E11D8 @ =0x020AFC4C
	add r1, sp, #0x64
	ldr r0, [r0]
	mov r2, #0xc
	add r0, r0, #0x70
	bl FUN_0201B43C
	add r0, sp, #8
	bl FUN_02008BD4
	ldr r1, _022E11E4 @ =0x000003E6
	mov r0, #4
	add r2, sp, #8
	mov r3, #0
	bl FUN_0200C388
	ldr r1, [sp, #8]
	add r0, sp, #0x1c
	bl FUN_0201F4B4
	ldr r1, [sp, #0x1c]
	mov r0, #0x70
	add r1, r1, #4
	str r1, [sp, #0x1c]
	mov r1, #1
	bl ov29_022E0F2C
	ldr r1, [sp, #0x1c]
	mov r2, #0x80
	bl FUN_0200330C
	add r0, sp, #8
	bl FUN_02008BD4
	ldr r2, _022E11E8 @ =0x02353544
	mov r0, #4
	mov r1, #0x3e4
	mov r3, #0
	bl FUN_0200C388
	ldr r1, _022E11EC @ =0x02353540
	ldr r0, _022E11F0 @ =0x02353540
	ldr r1, [r1, #4]
	bl FUN_0201F4B4
	add r0, sp, #0x20
	mov r1, #4
	mov r2, #0x400
	mov r3, #0
	bl FUN_0201DEC4
	mov r6, #0
	mov r5, r6
	ldr r4, _022E11F4 @ =0x020AFC70
	b _022E11A8
_022E1180:
	ldr r0, [r4]
	ldr r1, [r1, #0x18]
	mov r2, r5
	mov r3, r6
	add r0, r0, #0xcc
	add r1, r1, r6, lsl #2
	bl FUN_0201E380
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_022E11A8:
	ldr r1, [sp, #0x24]
	ldrsh r0, [r1, #0x1c]
	cmp r6, r0
	blt _022E1180
	add r0, sp, #0x20
	bl FUN_0201DF18
	bl ov29_023356C0
	bl ov29_02335774
	add sp, sp, #0x74
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E11D0: .4byte 0x023510E0
_022E11D4: .4byte 0x000003E5
_022E11D8: .4byte 0x020AFC4C
_022E11DC: .4byte 0x000003E3
_022E11E0: .4byte 0x000003E7
_022E11E4: .4byte 0x000003E6
_022E11E8: .4byte 0x02353544
_022E11EC: .4byte 0x02353540
_022E11F0: .4byte 0x02353540
_022E11F4: .4byte 0x020AFC70
	arm_func_end ov29_022E0F6C

	arm_func_start ov29_022E11F8
ov29_022E11F8: @ 0x022E11F8
	push {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r1, _022E12EC @ =0x00000409
	add r2, sp, #4
	mov r0, #4
	mov r3, #0
	bl FUN_0200C388
	ldr r1, [sp, #4]
	add r0, sp, #0
	bl FUN_0201F4B4
	ldr lr, [sp]
	mov r4, #0
	ldr ip, _022E12F0 @ =0x0237C6D4
	b _022E1254
_022E1230:
	ldr r0, [lr, #8]
	add r2, ip, r4, lsl #2
	add r3, r0, r4, lsl #2
	mov r1, #4
_022E1240:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _022E1240
	add r4, r4, #1
_022E1254:
	ldr r0, [lr, #0xc]
	cmp r4, r0
	blt _022E1230
	ldr r1, [lr, #4]
	mov r0, #0x120
	mul r4, r1, r0
	bl ov29_02336204
	cmp r0, #0
	bne _022E1298
	mov r0, #0x5000
	mov r1, #1
	mov r2, #0
	bl FUN_02051E8C
	ldr r1, [sp]
	mov r2, r4
	ldr r1, [r1]
	bl FUN_0200330C
_022E1298:
	mov r1, #0
	mov r2, r1
	mov r0, #0x5e00
	bl FUN_02051E8C
	mov r1, #0
	mov r2, #0x20
	bl FUN_020032BC
	mov r1, #0
	ldr r0, _022E12F4 @ =0x00005E20
	mov r2, r1
	bl FUN_02051E8C
	ldr r1, [sp]
	mov r2, #0x240
	ldr r1, [r1]
	add r1, r1, #0xc20
	add r1, r1, #0x1000
	bl FUN_0200330C
	add r0, sp, #4
	bl FUN_02008BD4
	add sp, sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_022E12EC: .4byte 0x00000409
_022E12F0: .4byte 0x0237C6D4
_022E12F4: .4byte 0x00005E20
	arm_func_end ov29_022E11F8

	arm_func_start ov29_022E11F8
ov29_022E11F8: @ 0x022E12F8
	ldr ip, _022E1300 @ =ov29_022E11F8
	bx ip
	.align 2, 0
_022E1300: .4byte ov29_022E11F8
	arm_func_end ov29_022E11F8

	arm_func_start ov29_022E1304
ov29_022E1304: @ 0x022E1304
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	bl ov29_022E150C
	ldr r1, _022E14EC @ =0x000003FE
	add r2, sp, #8
	mov r0, #4
	mov r3, #0
	bl FUN_0200C388
	ldr r1, [sp, #8]
	add r0, sp, #0x10
	bl FUN_0201F4B4
	ldr sb, [sp, #0x10]
	ldr r4, _022E14F0 @ =0x020AFC4C
	mov r8, #0
	mov r7, #0xd0
	mov r6, #0xff
	add r5, sp, #0x14
	mov fp, #1
_022E134C:
	str r7, [sp]
	str r6, [sp, #4]
	ldr r1, [sb, #8]
	mov r0, r5
	mov r2, fp
	mov r3, #0x10
	add r1, r1, r8, lsl #6
	bl FUN_0201F598
	lsl r1, r8, #0x10
	lsr r2, r1, #0x10
	ldr r0, [r4]
	mov r1, r5
	bl FUN_0201B43C
	add r8, r8, #1
	cmp r8, #0x10
	blt _022E134C
	ldr r4, [sp, #0x10]
	mov r0, #0x110
	mov r1, #0
	bl ov29_022E0F2C
	ldm r4, {r1, r2}
	lsl r2, r2, #8
	mov r3, #0xd
	bl FUN_0201BFF0
	add r0, sp, #8
	bl FUN_02008BD4
	bl ov29_022E11F8
	mov r5, #0
	ldr r2, _022E14F4 @ =0x022C4D54
	ldr fp, _022E14F8 @ =0x02353538
	ldr r8, _022E14FC @ =0x00011EC8
	mov r6, #0x280
	mov r3, r5
	mov sb, #0x12
_022E13D4:
	mul r7, r5, sb
	lsl r0, r5, #1
	ldrsh r1, [r2, r0]
	mov r4, r3
_022E13E4:
	ldr ip, [fp]
	orr r0, r6, r1, lsl #12
	add ip, r7, ip
	add ip, ip, r4, lsl #1
	add r4, r4, #1
	strh r0, [ip, r8]
	cmp r4, #9
	add r6, r6, #1
	blt _022E13E4
	add r5, r5, #1
	cmp r5, #0x22
	blt _022E13D4
	orr r0, r6, #0xf000
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	ldr r1, _022E14F8 @ =0x02353538
	ldr r0, _022E1500 @ =0x00012A92
	mov r4, #0
_022E142C:
	ldr r2, [r1]
	add r2, r2, r4, lsl #1
	add r4, r4, #1
	strh r3, [r2, r0]
	cmp r4, #9
	blt _022E142C
	ldr r3, _022E1504 @ =0x0000F2F0
	ldr r1, _022E14F8 @ =0x02353538
	ldr r0, _022E1508 @ =0x0001212C
	mov r6, #0x2f0
	mov r4, #0
_022E1458:
	ldr r2, [r1]
	add r2, r2, r4, lsl #1
	add r4, r4, #1
	strh r3, [r2, r0]
	cmp r4, #9
	blt _022E1458
	ldr r2, _022E14F4 @ =0x022C4D54
	ldr ip, _022E14F8 @ =0x02353538
	ldr sb, _022E1508 @ =0x0001212C
	add r6, r6, #1
	mov r7, #1
	mov r3, #0x1a
	mov r4, #0x19
	mov fp, #0x12
_022E1490:
	cmp r7, #1
	moveq sl, r4
	beq _022E14A4
	cmp r7, #2
	moveq sl, r3
_022E14A4:
	mul r5, r7, fp
	lsl r0, sl, #1
	ldrsh r1, [r2, r0]
	mov r8, #0
_022E14B4:
	ldr lr, [ip]
	orr r0, r6, r1, lsl #12
	add lr, r5, lr
	add lr, lr, r8, lsl #1
	strh r0, [lr, sb]
	add r8, r8, #1
	cmp r8, #9
	add r6, r6, #1
	blt _022E14B4
	add r7, r7, #1
	cmp r7, #3
	blt _022E1490
	add sp, sp, #0x24
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E14EC: .4byte 0x000003FE
_022E14F0: .4byte 0x020AFC4C
_022E14F4: .4byte 0x022C4D54
_022E14F8: .4byte 0x02353538
_022E14FC: .4byte 0x00011EC8
_022E1500: .4byte 0x00012A92
_022E1504: .4byte 0x0000F2F0
_022E1508: .4byte 0x0001212C
	arm_func_end ov29_022E1304

	arm_func_start ov29_022E150C
ov29_022E150C: @ 0x022E150C
	ldr r0, _022E154C @ =0x02353538
	mov r3, #0
_022E1514:
	ldr r1, [r0]
	and r2, r3, #0xff
	add r1, r1, r3, lsl #2
	strb r2, [r1, #0x1e0]
	ldr r1, [r0]
	add r1, r1, r3, lsl #2
	strb r2, [r1, #0x1e1]
	ldr r1, [r0]
	add r1, r1, r3, lsl #2
	add r3, r3, #1
	strb r2, [r1, #0x1e2]
	cmp r3, #0x100
	blt _022E1514
	bx lr
	.align 2, 0
_022E154C: .4byte 0x02353538
	arm_func_end ov29_022E150C

	arm_func_start ov29_022E1550
ov29_022E1550: @ 0x022E1550
	push {r3, lr}
	bl GetFloorType
	cmp r0, #0
	bne _022E1590
	ldr r0, _022E15C4 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051288
	cmp r0, #0
	ldr r0, _022E15C4 @ =0x02353538
	movne r1, #0x1c
	ldr r0, [r0]
	moveq r1, #0x1b
	add r0, r0, #0x4000
	strh r1, [r0, #0xd8]
	pop {r3, pc}
_022E1590:
	cmp r0, #1
	ldrne r0, _022E15C4 @ =0x02353538
	movne r1, #0x1d
	ldrne r0, [r0]
	addne r0, r0, #0x4000
	strhne r1, [r0, #0xd8]
	popne {r3, pc}
	ldr r0, _022E15C4 @ =0x02353538
	mov r1, #6
	ldr r0, [r0]
	add r0, r0, #0x4000
	strh r1, [r0, #0xd8]
	pop {r3, pc}
	.align 2, 0
_022E15C4: .4byte 0x02353538
	arm_func_end ov29_022E1550

	arm_func_start ov29_022E15C8
ov29_022E15C8: @ 0x022E15C8
	push {r3, lr}
	ldr r0, _022E15FC @ =0x02353540
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022E15E4
	ldr r0, _022E1600 @ =0x02353544
	bl FUN_02008BD4
_022E15E4:
	bl ov29_02335760
	bl ov29_02335804
	ldr r0, _022E15FC @ =0x02353540
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022E15FC: .4byte 0x02353540
_022E1600: .4byte 0x02353544
	arm_func_end ov29_022E15C8

	arm_func_start ov29_022E1604
ov29_022E1604: @ 0x022E1604
	bx lr
	arm_func_end ov29_022E1604

	arm_func_start ov29_022E1608
ov29_022E1608: @ 0x022E1608
	ldr r0, [r0, #0xb4]
	bx lr
	arm_func_end ov29_022E1608

	arm_func_start ov29_022E1610
ov29_022E1610: @ 0x022E1610
	ldr r0, [r0, #0xb4]
	bx lr
	arm_func_end ov29_022E1610

	arm_func_start ov29_022E1618
ov29_022E1618: @ 0x022E1618
	ldr r0, [r0, #0xb4]
	bx lr
	arm_func_end ov29_022E1618

	arm_func_start ov29_022E1620
ov29_022E1620: @ 0x022E1620
	ldr r0, [r0, #0xb4]
	bx lr
	arm_func_end ov29_022E1620

	arm_func_start GetTileAtEntity
GetTileAtEntity: @ 0x022E1628
	ldr ip, _022E163C @ =GetTileSafe
	mov r1, r0
	ldrsh r0, [r1, #4]
	ldrsh r1, [r1, #6]
	bx ip
	.align 2, 0
_022E163C: .4byte GetTileSafe
	arm_func_end GetTileAtEntity

	arm_func_start ov29_022E1640
ov29_022E1640: @ 0x022E1640
	push {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	ldr r4, _022E1848 @ =0x02353538
	mov r5, r6
	mov r8, r6
	mov r7, #0xb8
_022E1658:
	ldr r2, [r4]
	add r0, r2, #0x1cc
	add r0, r0, #0x12c00
	mla r1, r6, r7, r0
	add r0, r2, r6, lsl #2
	add r0, r0, #0x12000
	str r1, [r0, #0xb28]
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	str r5, [r0]
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	add r0, r0, #0x2c
	bl FUN_0201C0CC
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	add r6, r6, #1
	strh r8, [r0, #0xa8]
	cmp r6, #4
	blt _022E1658
	ldr r0, _022E184C @ =0x0237C754
	mov r7, #0
_022E16C8:
	strb r7, [r0, r8]
	add r8, r8, #1
	cmp r8, #0x48
	blt _022E16C8
	mov r5, #0
	ldr r4, _022E1848 @ =0x02353538
	mov r6, r5
	mov r8, #0xb8
_022E16E8:
	ldr r2, [r4]
	add r0, r2, #0xac
	add r0, r0, #0x13000
	mla r1, r7, r8, r0
	add r0, r2, r7, lsl #2
	add r0, r0, #0x12000
	str r1, [r0, #0xb38]
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb38]
	str r5, [r0]
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb38]
	add r0, r0, #0x2c
	bl FUN_0201C0CC
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb38]
	add r7, r7, #1
	strh r6, [r0, #0xa8]
	cmp r7, #0x10
	blt _022E16E8
	ldr r0, _022E1850 @ =0x0237C79C
	mov r3, #0
_022E1758:
	strb r3, [r0, r6]
	add r6, r6, #1
	cmp r6, #0xae
	blt _022E1758
	ldr r2, _022E1848 @ =0x02353538
	mov r0, #0
_022E1770:
	ldr r1, [r2]
	add r1, r1, r3, lsl #2
	add r1, r1, #0x12000
	add r3, r3, #1
	str r0, [r1, #0xb78]
	cmp r3, #0x14
	blt _022E1770
	ldr r4, _022E1848 @ =0x02353538
	mov r1, #0
	mov r3, #0xb8
_022E1798:
	ldr r6, [r4]
	add r2, r6, #0x2c
	add r2, r2, #0x13c00
	mla r5, r0, r3, r2
	add r2, r6, r0, lsl #2
	add r2, r2, #0x12000
	str r5, [r2, #0xbc8]
	ldr r2, [r4]
	add r2, r2, r0, lsl #2
	add r2, r2, #0x12000
	ldr r2, [r2, #0xbc8]
	add r0, r0, #1
	str r1, [r2]
	cmp r0, #0x40
	blt _022E1798
	ldr r4, _022E1848 @ =0x02353538
	mov r0, #0
	mov r3, #0xb8
_022E17E0:
	ldr r6, [r4]
	add r2, r6, #0x22c
	add r2, r2, #0x16800
	mla r5, r1, r3, r2
	add r2, r6, r1, lsl #2
	add r2, r2, #0x12000
	str r5, [r2, #0xcc8]
	ldr r2, [r4]
	add r2, r2, r1, lsl #2
	add r2, r2, #0x12000
	ldr r2, [r2, #0xcc8]
	add r1, r1, #1
	str r0, [r2]
	cmp r1, #0x40
	blt _022E17E0
	ldr r2, _022E1848 @ =0x02353538
	ldr r4, [r2]
	add r1, r4, #0x2c
	add r3, r1, #0x19800
	add r1, r4, #0x12000
	str r3, [r1, #0xdc8]
	ldr r1, [r2]
	add r1, r1, #0x12000
	ldr r1, [r1, #0xdc8]
	str r0, [r1]
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E1848: .4byte 0x02353538
_022E184C: .4byte 0x0237C754
_022E1850: .4byte 0x0237C79C
	arm_func_end ov29_022E1640

	arm_func_start ov29_022E1854
ov29_022E1854: @ 0x022E1854
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	ldr r4, _022E1A18 @ =0x02353538
	ldr r0, [r4]
	add r0, r0, #0x1a000
	ldrb r1, [r0, #0x23e]
	ldrb r8, [r0, #0x245]
	cmp r1, #0
	beq _022E1900
	mov r6, #0
	add r8, sp, #4
	mov r7, r6
_022E1884:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _022E18F0
	ldr r0, [r4]
	add r0, r0, #0x1a000
	ldr r0, [r0, #0x22c]
	cmp r5, r0
	mov r0, r5
	bne _022E18C4
	bl ov29_02303F18
	b _022E18F0
_022E18C4:
	ldr sb, [r5, #0xb4]
	bl ov29_023046E8
	mov r0, r8
	mov r1, r5
	bl ov29_022E3A40
	str r7, [sp]
	ldrsh r1, [sb, #4]
	ldr r0, [sb, #0xb0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl ov29_022DD7D8
_022E18F0:
	add r6, r6, #1
	cmp r6, #0x14
	blt _022E1884
	b _022E1A10
_022E1900:
	mov r5, #0
	mov r6, r5
_022E1908:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022E196C
	ldr r0, [r7]
	cmp r0, #1
	bne _022E196C
	mov r0, r7
	bl ov29_02303F18
	ldr r0, [r7, #0xb4]
	ldrb r0, [r0, #0x165]
	cmp r0, #0
	bne _022E196C
	lsl r2, r6, #0x10
	mov r0, r7
	mov r1, r5
	asr r2, r2, #0x10
	bl ov29_022E8270
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_022E196C:
	add r6, r6, #1
	cmp r6, #4
	blt _022E1908
	ldr r4, _022E1A18 @ =0x02353538
	mov r5, #0
_022E1980:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb38]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022E19A8
	mov r0, r6
	bl ov29_02303F18
_022E19A8:
	add r5, r5, #1
	cmp r5, #0x10
	blt _022E1980
	mov sb, #0
	mov r7, sb
	mov r6, #1
	mov r5, #0xff
	ldr r4, _022E1A18 @ =0x02353538
	b _022E19F0
_022E19CC:
	add r0, r1, sb, lsl #2
	str r7, [sp]
	add r0, r0, #0x12000
	ldr r0, [r0, #0xbc8]
	mov r1, r8
	mov r2, r6
	mov r3, r5
	bl ov29_023457C8
	add sb, sb, #1
_022E19F0:
	ldr r1, [r4]
	add r0, r1, #0x3f00
	ldrsh r0, [r0, #0xc0]
	cmp sb, r0
	blt _022E19CC
	cmp r8, #0
	beq _022E1A10
	bl ov29_022ED9D0
_022E1A10:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E1A18: .4byte 0x02353538
	arm_func_end ov29_022E1854

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022E1A1C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022E1A40
ov29_022E1A40: @ 0x022E1A40
	cmp r1, #0
	ldrne r2, [r1]
	strne r2, [r0, #0xc]
	ldrne r1, [r1, #4]
	bne _022E1A7C
	ldrsh r2, [r0, #4]
	mov r1, #0x18
	smulbb r2, r2, r1
	add r2, r2, #0xc
	lsl r2, r2, #8
	str r2, [r0, #0xc]
	ldrsh r2, [r0, #6]
	smulbb r1, r2, r1
	add r1, r1, #0x10
	lsl r1, r1, #8
_022E1A7C:
	str r1, [r0, #0x10]
	bx lr
	arm_func_end ov29_022E1A40

	arm_func_start ov29_022E1A84
ov29_022E1A84: @ 0x022E1A84
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	arm_func_end ov29_022E1A84

	arm_func_start ov29_022E1A90
ov29_022E1A90: @ 0x022E1A90
	ldr r3, [r0, #0xc]
	add r1, r3, r1
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x10]
	add r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
	arm_func_end ov29_022E1A90

	arm_func_start ov29_022E1AAC
ov29_022E1AAC: @ 0x022E1AAC
	push {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_020527E0
	mov r4, r0
	mov r0, r5
	bl ov29_022DE954
	cmp r0, #0
	lslne r4, r4, #1
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022E1AAC

	arm_func_start ov29_022E1AD4
ov29_022E1AD4: @ 0x022E1AD4
	push {r4, lr}
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r4, #0xb4]
	ldrbne r0, [r0, #0x17b]
	moveq r0, #0
	pop {r4, pc}
	arm_func_end ov29_022E1AD4

	arm_func_start ov29_022E1AF4
ov29_022E1AF4: @ 0x022E1AF4
	ldr r2, _022E1B24 @ =0x0237C754
	mov r3, #0
	add ip, r2, r0
	mov r2, #1
	b _022E1B18
_022E1B08:
	add r0, r3, #1
	lsl r0, r0, #0x10
	strb r2, [ip, r3]
	lsr r3, r0, #0x10
_022E1B18:
	cmp r3, r1
	blo _022E1B08
	bx lr
	.align 2, 0
_022E1B24: .4byte 0x0237C754
	arm_func_end ov29_022E1AF4

	arm_func_start ov29_022E1B28
ov29_022E1B28: @ 0x022E1B28
	push {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	mov r8, r0
	mov r5, r4
_022E1B38:
	ldr r0, _022E1C04 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022E1BD8
	ldr r0, [r7, #0xb4]
	ldrsh r0, [r0, #4]
	bl FUN_020527E0
	mov r6, r0
	ldrb r0, [r7, #0xaa]
	bl ov29_022DE954
	cmp r0, #0
	add r0, r4, #0x1a
	strh r0, [r7, #0xac]
	ldr r0, [r7, #0xb4]
	lslne r6, r6, #1
	strb r4, [r0, #0x17a]
	ldr r0, [r7, #0xb4]
	mov r2, #0
	strb r6, [r0, #0x17b]
	mov r1, #1
	ldr r0, _022E1C08 @ =0x0237C754
	b _022E1BB4
_022E1BA4:
	cmp r4, #0x48
	strblt r1, [r0, r4]
	addlt r4, r4, #1
	add r2, r2, #1
_022E1BB4:
	cmp r2, r6
	blt _022E1BA4
	cmp r8, #0
	beq _022E1BD8
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
_022E1BD8:
	add r5, r5, #1
	cmp r5, #4
	blt _022E1B38
	mov r1, #0
	ldr r0, _022E1C08 @ =0x0237C754
	b _022E1BF8
_022E1BF0:
	strb r1, [r0, r4]
	add r4, r4, #1
_022E1BF8:
	cmp r4, #0x48
	blt _022E1BF0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E1C04: .4byte 0x02353538
_022E1C08: .4byte 0x0237C754
	arm_func_end ov29_022E1B28

	arm_func_start ov29_022E1C0C
ov29_022E1C0C: @ 0x022E1C0C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r4, [r7, #0xb4]
	ldrb r0, [r4, #6]
	cmp r0, #0
	ldrne r5, _022E1C7C @ =0x0237C79C
	ldreq r5, _022E1C80 @ =0x0237C754
	cmp r6, #0
	beq _022E1C48
	ldrb r0, [r7, #0xaa]
	bl ov29_022DEA1C
_022E1C48:
	mov r3, #0
	mov r2, r3
	b _022E1C6C
_022E1C54:
	ldrb r1, [r4, #0x17a]
	add r0, r3, #1
	lsl r0, r0, #0x10
	add r1, r5, r1
	strb r2, [r3, r1]
	asr r3, r0, #0x10
_022E1C6C:
	ldrb r0, [r4, #0x17b]
	cmp r3, r0
	blt _022E1C54
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E1C7C: .4byte 0x0237C79C
_022E1C80: .4byte 0x0237C754
	arm_func_end ov29_022E1C0C

	arm_func_start ov29_022E1C84
ov29_022E1C84: @ 0x022E1C84
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, r2
	mov r6, r1
	mvn r4, #0
	bl FUN_020527E0
	mov r5, r0
	ldrsh r0, [sp, #0x18]
	cmp r0, #0
	movlt r0, #0
	poplt {r4, r5, r6, r7, r8, pc}
	bl ov29_022DE954
	cmp r0, #0
	lslne r5, r5, #1
	mov r3, #0
	rsb ip, r5, #0x48
	mov r2, r3
	ldr r1, _022E1D28 @ =0x0237C754
	b _022E1D04
_022E1CD0:
	mov r8, r2
	add lr, r1, r3
	b _022E1CEC
_022E1CDC:
	ldrb r0, [lr, r8]
	cmp r0, #0
	bne _022E1CF4
	add r8, r8, #1
_022E1CEC:
	cmp r8, r5
	blt _022E1CDC
_022E1CF4:
	cmp r8, r5
	moveq r4, r3
	beq _022E1D0C
	add r3, r3, #1
_022E1D04:
	cmp r3, ip
	ble _022E1CD0
_022E1D0C:
	mvn r0, #0
	cmp r4, r0
	moveq r0, #0
	strne r4, [r7]
	strne r5, [r6]
	movne r0, #1
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E1D28: .4byte 0x0237C754
	arm_func_end ov29_022E1C84

	arm_func_start ov29_022E1D2C
ov29_022E1D2C: @ 0x022E1D2C
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mvn r1, #0
	mov r0, #1
	str r1, [sp, #8]
	bl ov29_022DE968
	mov r6, r0
	mov r1, r8
	mov r0, #0
	bl ov29_022F9408
	bl GetSpriteIndex
	mov r4, r0
	add r0, sp, #8
	add r1, sp, #4
	mov r2, r8
	mov r3, r4
	str r6, [sp]
	bl ov29_022E1C84
	cmp r0, #0
	moveq r0, #0
	beq _022E1EB8
	mov r5, #0
	ldr sb, _022E1EC0 @ =0x02353538
	b _022E1EAC
_022E1D90:
	ldr r0, [sb]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	bne _022E1EA8
	mov r0, #1
	str r0, [r7]
	ldr r0, _022E1EC0 @ =0x02353538
	strb r5, [r7, #0x24]
	ldr r0, [r0]
	add r1, r5, r5, lsl #3
	add r0, r0, #0x3f4
	add r0, r0, #0x400
	add r0, r0, r1, lsl #6
	str r0, [r7, #0xb4]
	strh r8, [r0, #2]
	mov r1, r8
	mov r0, #0
	bl ov29_022F9408
	ldr r1, [r7, #0xb4]
	mov r2, #0
	strh r0, [r1, #4]
	ldr r1, [r7, #0xb4]
	and r0, r6, #0xff
	strb r2, [r1, #6]
	ldr r1, [r7, #0xb4]
	strb r2, [r1, #8]
	strh r4, [r7, #0xa8]
	strb r6, [r7, #0xaa]
	bl ov29_022DE9F8
	ldr r1, [sp, #8]
	mov r0, #7
	add r1, r1, #0x1a
	strh r1, [r7, #0xac]
	strb r0, [r7, #0xae]
	mov r1, #0
	strb r1, [r7, #0x28]
	strb r1, [r7, #0xb0]
	mov r0, #0xff
	strb r0, [r7, #0xaf]
	mov r0, #1
	strb r0, [r7, #0xb1]
	strb r0, [r7, #0xb3]
	str r1, [r7, #0x1c]
	bl ov29_022E2978
	ldr r1, [sp, #8]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17a]
	ldr r1, [sp, #4]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17b]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov29_022E1AF4
	ldr r1, _022E1EC0 @ =0x02353538
	mov r0, r7
	ldr r1, [r1]
	add r1, r1, #0x700
	ldrh r3, [r1, #0x88]
	add r2, r3, #1
	strh r2, [r1, #0x88]
	strh r3, [r7, #0x26]
	b _022E1EB8
_022E1EA8:
	add r5, r5, #1
_022E1EAC:
	cmp r5, #4
	blt _022E1D90
	mov r0, #0
_022E1EB8:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E1EC0: .4byte 0x02353538
	arm_func_end ov29_022E1D2C

	arm_func_start ov29_022E1EC4
ov29_022E1EC4: @ 0x022E1EC4
	ldr r2, _022E1EF4 @ =0x0237C79C
	mov r3, #0
	add ip, r2, r0
	mov r2, #1
	b _022E1EE8
_022E1ED8:
	add r0, r3, #1
	lsl r0, r0, #0x10
	strb r2, [ip, r3]
	lsr r3, r0, #0x10
_022E1EE8:
	cmp r3, r1
	blo _022E1ED8
	bx lr
	.align 2, 0
_022E1EF4: .4byte 0x0237C79C
	arm_func_end ov29_022E1EC4

	arm_func_start ov29_022E1EF8
ov29_022E1EF8: @ 0x022E1EF8
	mov r0, #0
	ldr r2, _022E1F30 @ =0x0237C79C
	mov r3, r0
_022E1F04:
	ldrb r1, [r2, r3]
	cmp r1, #0
	add r1, r3, #1
	addeq r0, r0, #1
	lsl r1, r1, #0x10
	lsleq r0, r0, #0x10
	lsr r3, r1, #0x10
	asreq r0, r0, #0x10
	cmp r3, #0xae
	blo _022E1F04
	bx lr
	.align 2, 0
_022E1F30: .4byte 0x0237C79C
	arm_func_end ov29_022E1EF8

	arm_func_start ov29_022E1F34
ov29_022E1F34: @ 0x022E1F34
	push {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	mov r8, r0
	mov r5, r4
_022E1F44:
	ldr r0, _022E2010 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb38]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022E1FE4
	ldr r0, [r7, #0xb4]
	ldrsh r0, [r0, #4]
	bl FUN_020527E0
	mov r6, r0
	ldrb r0, [r7, #0xaa]
	bl ov29_022DE954
	cmp r0, #0
	add r0, r4, #0x62
	strh r0, [r7, #0xac]
	ldr r0, [r7, #0xb4]
	lslne r6, r6, #1
	strb r5, [r0, #0x17a]
	ldr r0, [r7, #0xb4]
	mov r2, #0
	strb r6, [r0, #0x17b]
	mov r1, #1
	ldr r0, _022E2014 @ =0x0237C79C
	b _022E1FC0
_022E1FB0:
	cmp r4, #0xae
	strblt r1, [r0, r4]
	addlt r4, r4, #1
	add r2, r2, #1
_022E1FC0:
	cmp r2, r6
	blt _022E1FB0
	cmp r8, #0
	beq _022E1FE4
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
_022E1FE4:
	add r5, r5, #1
	cmp r5, #0x10
	blt _022E1F44
	mov r1, #0
	ldr r0, _022E2014 @ =0x0237C79C
	b _022E2004
_022E1FFC:
	strb r1, [r0, r4]
	add r4, r4, #1
_022E2004:
	cmp r4, #0xae
	blt _022E1FFC
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E2010: .4byte 0x02353538
_022E2014: .4byte 0x0237C79C
	arm_func_end ov29_022E1F34

	arm_func_start ov29_022E2018
ov29_022E2018: @ 0x022E2018
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, r2
	mov r6, r1
	mvn r4, #0
	bl FUN_020527E0
	mov r5, r0
	ldrsh r0, [sp, #0x18]
	cmp r0, #0
	movlt r0, #0
	poplt {r4, r5, r6, r7, r8, pc}
	bl ov29_022DE954
	cmp r0, #0
	lslne r5, r5, #1
	mov r3, #0
	rsb ip, r5, #0xae
	mov r2, r3
	ldr r1, _022E20BC @ =0x0237C79C
	b _022E2098
_022E2064:
	mov r8, r2
	add lr, r1, r3
	b _022E2080
_022E2070:
	ldrb r0, [lr, r8]
	cmp r0, #0
	bne _022E2088
	add r8, r8, #1
_022E2080:
	cmp r8, r5
	blt _022E2070
_022E2088:
	cmp r8, r5
	moveq r4, r3
	beq _022E20A0
	add r3, r3, #1
_022E2098:
	cmp r3, ip
	ble _022E2064
_022E20A0:
	mvn r0, #0
	cmp r4, r0
	moveq r0, #0
	strne r4, [r7]
	strne r5, [r6]
	movne r0, #1
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E20BC: .4byte 0x0237C79C
	arm_func_end ov29_022E2018

	arm_func_start ov29_022E20C0
ov29_022E20C0: @ 0x022E20C0
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r0, #2
	bl ov29_022DE968
	mov r6, r0
	mov r1, r8
	mov r0, #0
	bl ov29_022F9408
	mov r4, r0
	bl GetSpriteIndex
	mov r3, r0
	add r0, sp, #8
	add r1, sp, #4
	mov r2, r8
	str r6, [sp]
	bl ov29_022E2018
	cmp r0, #0
	moveq r0, #0
	beq _022E2254
	mov r5, #0
	ldr sb, _022E225C @ =0x02353538
	b _022E2248
_022E211C:
	ldr r0, [sb]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb38]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	bne _022E2244
	mov r0, #1
	str r0, [r7]
	strb r5, [r7, #0x24]
	mov r0, #0
	ldr r1, _022E225C @ =0x02353538
	strb r0, [r7, #0x22]
	ldr r1, [r1]
	add r2, r5, r5, lsl #3
	add r1, r1, #0xf4
	add r1, r1, #0x1000
	add r2, r1, r2, lsl #6
	str r2, [r7, #0xb4]
	mov r1, r8
	strh r8, [r2, #2]
	bl ov29_022F9408
	ldr r2, [r7, #0xb4]
	mov r1, #1
	strh r0, [r2, #4]
	ldr r0, [r7, #0xb4]
	mov r2, #0
	strb r1, [r0, #6]
	ldr r1, [r7, #0xb4]
	mov r0, r4
	strb r2, [r1, #8]
	bl GetSpriteIndex
	strh r0, [r7, #0xa8]
	strb r6, [r7, #0xaa]
	ldr r0, [sp, #8]
	add r0, r0, #0x62
	strh r0, [r7, #0xac]
	ldrb r0, [r7, #0xaa]
	bl ov29_022DE9F8
	mov r0, #7
	strb r0, [r7, #0xae]
	mov r1, #0
	strb r1, [r7, #0x28]
	strb r1, [r7, #0xb0]
	mov r0, #0xff
	strb r0, [r7, #0xaf]
	mov r0, #1
	strb r0, [r7, #0xb1]
	strb r0, [r7, #0xb3]
	str r1, [r7, #0x1c]
	ldr r1, [sp, #8]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17a]
	ldr r1, [sp, #4]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17b]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov29_022E1EC4
	bl ov29_022E2978
	ldr r1, _022E225C @ =0x02353538
	mov r0, r7
	ldr r1, [r1]
	add r1, r1, #0x700
	ldrh r3, [r1, #0x88]
	add r2, r3, #1
	strh r2, [r1, #0x88]
	strh r3, [r7, #0x26]
	b _022E2254
_022E2244:
	add r5, r5, #1
_022E2248:
	cmp r5, #0x10
	blt _022E211C
	mov r0, #0
_022E2254:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E225C: .4byte 0x02353538
	arm_func_end ov29_022E20C0

	arm_func_start ov29_022E2260
ov29_022E2260: @ 0x022E2260
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	mov r5, #0
	ldr r4, _022E2310 @ =0x02353538
	b _022E2300
_022E2280:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xcc8]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	bne _022E22FC
	mov r1, #2
	ldr r0, _022E2310 @ =0x02353538
	str r1, [r6]
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x3c4
	add r0, r0, #0x3c00
	add r0, r0, r5, lsl #2
	str r0, [r6, #0xb4]
	strb sl, [r0]
	ldr r1, [r6, #0xb4]
	mov r0, r6
	strb r8, [r1, #1]
	ldr r1, [r6, #0xb4]
	strb r7, [r1, #2]
	str r2, [r6, #0x1c]
	strb r2, [r6, #0x22]
	ldrh r1, [sb]
	strh r1, [r6, #4]
	ldrh r1, [sb, #2]
	strh r1, [r6, #6]
	strh r2, [r6, #0x26]
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022E22FC:
	add r5, r5, #1
_022E2300:
	cmp r5, #0x40
	blt _022E2280
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022E2310: .4byte 0x02353538
	arm_func_end ov29_022E2260

	arm_func_start ov29_022E2314
ov29_022E2314: @ 0x022E2314
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022E2410 @ =0x02353538
	ldr r2, _022E2414 @ =0x020A1AE8
	ldr r1, [r1]
	mov r6, r0
	add r0, r1, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _022E235C
	ldrsh r0, [r6]
	ldrsh r1, [r6, #2]
	bl GetTileSafe
	ldrh r0, [r0]
	and r0, r0, #3
	cmp r0, #2
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
_022E235C:
	mov r4, #0
	ldr r7, _022E2410 @ =0x02353538
	b _022E2400
_022E2368:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xbc8]
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	bne _022E23FC
	ldr r0, _022E2410 @ =0x02353538
	mov r1, #3
	str r1, [r5]
	ldr r1, [r0]
	mov r0, #6
	add r1, r1, #0x3e40
	mla r0, r4, r0, r1
	str r0, [r5, #0xb4]
	ldrh r0, [r6]
	mov r1, #0x18
	mov r2, #0
	strh r0, [r5, #4]
	ldrh r3, [r6, #2]
	mov r0, r5
	strh r3, [r5, #6]
	ldrsh r3, [r6]
	ldrsh r4, [r6, #2]
	smulbb r3, r3, r1
	smulbb r4, r4, r1
	add r1, r3, #4
	lsl r1, r1, #8
	add r3, r4, #4
	str r1, [r5, #0xc]
	lsl r1, r3, #8
	str r1, [r5, #0x10]
	strh r2, [r5, #0x26]
	strb r2, [r5, #0x22]
	str r2, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
_022E23FC:
	add r4, r4, #1
_022E2400:
	cmp r4, #0x40
	blt _022E2368
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E2410: .4byte 0x02353538
_022E2414: .4byte 0x020A1AE8
	arm_func_end ov29_022E2314

	arm_func_start ov29_022E2418
ov29_022E2418: @ 0x022E2418
	push {r4, lr}
	mov r4, r0
	bl ov29_023386D8
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldr r0, _022E246C @ =0x02353538
	mov r1, #5
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x12000
	ldr r0, [r0, #0xdc8]
	str r1, [r0]
	str r2, [r0, #0x1c]
	strb r2, [r0, #0x22]
	ldrh r1, [r4]
	strh r1, [r0, #4]
	ldrh r1, [r4, #2]
	strh r1, [r0, #6]
	strh r2, [r0, #0x26]
	pop {r4, pc}
	.align 2, 0
_022E246C: .4byte 0x02353538
	arm_func_end ov29_022E2418

	arm_func_start ov29_022E2470
ov29_022E2470: @ 0x022E2470
	mov r1, #6
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x26]
	strb r1, [r0, #0x22]
	bx lr
	arm_func_end ov29_022E2470

	arm_func_start ov29_022E2498
ov29_022E2498: @ 0x022E2498
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _022E2560
	cmp r0, #1
	beq _022E24C0
	cmp r0, #6
	beq _022E2560
	b _022E2568
_022E24C0:
	ldrb r0, [r5, #0x20]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _022E2570 @ =0x02353538
	ldr r2, [r5, #0xb4]
	ldr r0, [r0]
	ldrb r1, [r2, #6]
	add r0, r0, #0x21c
	add r4, r0, #0x1a000
	ldr r0, [r4, #0x10]
	cmp r1, #0
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrb r1, [r4, #0x28]
	cmp r1, #0
	ldrbeq r1, [r2, #0xef]
	cmpeq r1, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r1, [r4, #0x34]
	cmp r1, #0
	bne _022E252C
	ldrb r1, [r4, #0x23]
	cmp r1, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_022E252C:
	ldrb r1, [r4, #0x26]
	cmp r1, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	bl HasDropeyeStatus
	mov r2, r0
	mov r0, r4
	add r1, r5, #4
	bl ov29_022E90CC
	pop {r3, r4, r5, pc}
_022E2560:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E2568:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E2570: .4byte 0x02353538
	arm_func_end ov29_022E2498

	arm_func_start FUN_022E2574
FUN_022E2574: @ 0x022E2574
	push {r4, r5, r6, r7, r8, lr}
	ldrb r5, [r0, #0x20]
	cmp r5, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr lr, [r0]
	cmp r1, #0
	movne r6, #0x40
	moveq r6, #0x20
	cmp lr, #2
	bne _022E25D8
	ldr r2, _022E2724 @ =0x02353538
	ldr r3, _022E2728 @ =0x0001A224
	ldr r4, [r2]
	add r8, r3, #2
	ldrsh ip, [r0, #4]
	mov r7, #0x18
	ldrsh r2, [r0, #6]
	ldrsh r3, [r4, r3]
	smulbb ip, ip, r7
	ldrsh r8, [r4, r8]
	smulbb r7, r2, r7
	sub r2, ip, r3
	sub r7, r7, r8
	b _022E2600
_022E25D8:
	ldr r3, _022E2724 @ =0x02353538
	ldr r2, _022E2728 @ =0x0001A224
	ldr r4, [r3]
	add r3, r2, #2
	ldrsh r2, [r4, r2]
	ldr r8, [r0, #0xc]
	ldrsh r3, [r4, r3]
	ldr r7, [r0, #0x10]
	rsb r2, r2, r8, asr #8
	rsb r7, r3, r7, asr #8
_022E2600:
	rsb r3, r6, #0
	cmp r2, r3
	cmpge r7, r3
	blt _022E271C
	add r3, r6, #0xff
	cmp r2, r3
	addle r2, r6, #0xc0
	cmple r7, r2
	bgt _022E271C
	add r2, r4, #0x21c
	cmp lr, #6
	add r6, r2, #0x1a000
	addls pc, pc, lr, lsl #2
	b _022E2714
_022E2638: @ jump table
	b _022E270C @ case 0
	b _022E267C @ case 1
	b _022E26F0 @ case 2
	b _022E2654 @ case 3
	b _022E2714 @ case 4
	b _022E2714 @ case 5
	b _022E270C @ case 6
_022E2654:
	ldrb r1, [r6, #0x27]
	cmp r1, #0
	movne r0, #1
	popne {r4, r5, r6, r7, r8, pc}
	add r0, r0, #4
	bl ov29_022E2CA0
	cmp r0, #0
	bne _022E2714
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
_022E267C:
	ldr r3, [r0, #0xb4]
	ldrb r2, [r3, #6]
	cmp r2, #0
	moveq r0, #1
	popeq {r4, r5, r6, r7, r8, pc}
	add r2, r4, #0x1a000
	ldrb r2, [r2, #0x244]
	cmp r2, #0
	ldrbeq r2, [r3, #0xef]
	cmpeq r2, #1
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldrb r2, [r6, #0x26]
	cmp r2, #0
	movne r0, #1
	popne {r4, r5, r6, r7, r8, pc}
	cmp r1, #0
	add r0, r0, #4
	beq _022E26DC
	bl ov29_022E2D3C
	cmp r0, #0
	bne _022E2714
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
_022E26DC:
	bl ov29_022E2CA0
	cmp r0, #0
	bne _022E2714
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
_022E26F0:
	add r0, r4, #0x1a000
	ldrb r0, [r0, #0x244]
	cmp r0, #0
	cmpeq r5, #0
	bne _022E2714
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
_022E270C:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
_022E2714:
	mov r0, #1
	pop {r4, r5, r6, r7, r8, pc}
_022E271C:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E2724: .4byte 0x02353538
_022E2728: .4byte 0x0001A224
	arm_func_end FUN_022E2574

	arm_func_start ov29_022E272C
ov29_022E272C: @ 0x022E272C
	ldr ip, _022E2738 @ =FUN_022E2574
	mov r1, #0
	bx ip
	.align 2, 0
_022E2738: .4byte FUN_022E2574
	arm_func_end ov29_022E272C

	arm_func_start ov29_022E273C
ov29_022E273C: @ 0x022E273C
	ldr ip, _022E2748 @ =FUN_022E2574
	mov r1, #1
	bx ip
	.align 2, 0
_022E2748: .4byte FUN_022E2574
	arm_func_end ov29_022E273C

	arm_func_start ov29_022E274C
ov29_022E274C: @ 0x022E274C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #1
	bne _022E27F4
	ldr r0, [r5]
	cmp r0, #1
	bne _022E27E0
	mov r0, r5
	bl CanSeeInvisibleMonsters
	cmp r0, #0
	ldreq r0, [r4, #0xb4]
	ldrbeq r0, [r0, #0xef]
	cmpeq r0, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	beq _022E27F4
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E27E0:
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
_022E27F4:
	mov r0, r5
	bl HasDropeyeStatus
	mov r2, r0
	add r0, r5, #4
	add r1, r4, #4
	bl ov29_022E90CC
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022E274C

	arm_func_start CanTargetEntity
CanTargetEntity: @ 0x022E2810
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #1
	bne _022E28B8
	ldr r0, [r5]
	cmp r0, #1
	bne _022E28A4
	mov r0, r5
	bl CanSeeInvisibleMonsters
	cmp r0, #0
	ldreq r0, [r4, #0xb4]
	ldrbeq r0, [r0, #0xef]
	cmpeq r0, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	beq _022E28B8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022E28A4:
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
_022E28B8:
	mov r0, r5
	bl HasDropeyeStatus
	mov r2, r0
	add r0, r5, #4
	add r1, r4, #4
	bl IsPositionInSight
	pop {r3, r4, r5, pc}
	arm_func_end CanTargetEntity

	arm_func_start ov29_022E28D4
ov29_022E28D4: @ 0x022E28D4
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl HasDropeyeStatus
	mov r2, r0
	add r0, r5, #4
	add r1, r4, #4
	bl ov29_022E90CC
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022E28D4

	arm_func_start ov29_022E2930
ov29_022E2930: @ 0x022E2930
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl HasDropeyeStatus
	mov r2, r0
	mov r1, r4
	add r0, r5, #4
	bl ov29_022E90CC
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022E2930

	arm_func_start CanTargetPosition
CanTargetPosition: @ 0x022E2954
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl HasDropeyeStatus
	mov r2, r0
	mov r1, r4
	add r0, r5, #4
	bl IsPositionInSight
	pop {r3, r4, r5, pc}
	arm_func_end CanTargetPosition

	arm_func_start ov29_022E2978
ov29_022E2978: @ 0x022E2978
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	ldr r6, _022E2A34 @ =0x02353538
	mov r4, r5
_022E2988:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r6]
	add r4, r4, #1
	addne r0, r0, r5, lsl #2
	addne r0, r0, #0x12000
	strne r7, [r0, #0xb78]
	addne r5, r5, #1
	cmp r4, #4
	blt _022E2988
	ldr r6, _022E2A34 @ =0x02353538
	mov r4, #0
_022E29CC:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb38]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r6]
	add r4, r4, #1
	addne r0, r0, r5, lsl #2
	addne r0, r0, #0x12000
	strne r7, [r0, #0xb78]
	addne r5, r5, #1
	cmp r4, #0x10
	blt _022E29CC
	mov r2, #0
	ldr r1, _022E2A34 @ =0x02353538
	b _022E2A28
_022E2A14:
	ldr r0, [r1]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	str r2, [r0, #0xb78]
	add r5, r5, #1
_022E2A28:
	cmp r5, #0x14
	blt _022E2A14
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E2A34: .4byte 0x02353538
	arm_func_end ov29_022E2978

	arm_func_start ov29_022E2A38
ov29_022E2A38: @ 0x022E2A38
	ldr r1, _022E2A74 @ =0x02353538
	mov r2, #0
	ldr r3, [r1]
	b _022E2A64
_022E2A48:
	add r1, r3, r2, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	cmp r0, r1
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
_022E2A64:
	cmp r2, #4
	blt _022E2A48
	mvn r0, #0
	bx lr
	.align 2, 0
_022E2A74: .4byte 0x02353538
	arm_func_end ov29_022E2A38

	arm_func_start ov29_022E2A78
ov29_022E2A78: @ 0x022E2A78
	push {r4, lr}
	ldr r2, [r1]
	mov r4, r0
	cmp r2, #1
	beq _022E2AA0
	cmp r2, #2
	beq _022E2AAC
	cmp r2, #3
	popeq {r4, pc}
	b _022E2ABC
_022E2AA0:
	ldr r1, [r1, #0xb4]
	bl ov29_02300164
	pop {r4, pc}
_022E2AAC:
	ldr r1, [r1, #0xb4]
	ldrb r1, [r1]
	bl ov29_022ED82C
	pop {r4, pc}
_022E2ABC:
	ldr r0, _022E2AD4 @ =0x00000A42
	bl FUN_020258C4
	mov r1, r0
	mov r0, r4
	bl FUN_02089694
	pop {r4, pc}
	.align 2, 0
_022E2AD4: .4byte 0x00000A42
	arm_func_end ov29_022E2A78

	arm_func_start SubstitutePlaceholderStringTags
SubstitutePlaceholderStringTags: @ 0x022E2AD8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	bl ov29_0234B034
	ldr r1, [r6]
	mov r4, r0
	cmp r1, #1
	beq _022E2B10
	cmp r1, #2
	beq _022E2B3C
	cmp r1, #3
	beq _022E2B2C
	b _022E2B50
_022E2B10:
	mov r1, #0
	str r1, [sp]
	ldr r2, [r6, #0xb4]
	mov r1, r7
	mov r3, r5
	bl ov29_0230040C
	pop {r3, r4, r5, r6, r7, pc}
_022E2B2C:
	ldr r2, [r6, #0xb4]
	mov r1, r7
	bl ov29_02344BA8
	pop {r3, r4, r5, r6, r7, pc}
_022E2B3C:
	ldr r2, [r6, #0xb4]
	mov r1, r7
	ldrb r2, [r2]
	bl ov29_022EDF7C
	pop {r3, r4, r5, r6, r7, pc}
_022E2B50:
	ldr r0, _022E2B64 @ =0x00000A42
	bl FUN_020258C4
	add r1, r4, r7, lsl #2
	str r0, [r1, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E2B64: .4byte 0x00000A42
	arm_func_end SubstitutePlaceholderStringTags

	arm_func_start ov29_022E2B68
ov29_022E2B68: @ 0x022E2B68
	push {r3, r4, r5, lr}
	ldr r1, _022E2C5C @ =0x02353538
	movs r5, r0
	ldr r2, [r1]
	mov r1, #0
	add r0, r2, #0x21c
	add r4, r0, #0x1a000
	strh r1, [r4, #8]
	ldr r0, _022E2C60 @ =0x0001A21C
	strh r1, [r4, #0xa]
	strh r1, [r2, r0]
	strh r1, [r4, #2]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	strh r1, [r4, #4]
	strh r1, [r4, #6]
	str r1, [r4, #0x14]
	strb r1, [r4, #0x2f]
	mov r0, #1
	strb r0, [r4, #0x30]
	strb r0, [r4, #0x31]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	bne _022E2BF4
	strb r1, [r4, #0x22]
	strb r1, [r4, #0x29]
	strb r1, [r4, #0x28]
	strb r1, [r4, #0x26]
	strb r1, [r4, #0x2a]
	strb r1, [r4, #0x27]
	strb r1, [r4, #0x23]
	strb r1, [r4, #0x24]
	strb r1, [r4, #0x32]
	strb r1, [r4, #0x33]
	strb r1, [r4, #0x34]
_022E2BF4:
	mov r1, #0
	str r1, [r4, #0x10]
	mov r0, #3
	strb r0, [r4, #0x20]
	strb r1, [r4, #0x35]
	strb r1, [r4, #0x2b]
	strb r1, [r4, #0x36]
	strb r1, [r4, #0x37]
	strb r1, [r4, #0x2d]
	mov r0, #1
	strb r0, [r4, #0x2e]
	bl ov29_022E2C6C
	ldr r1, _022E2C64 @ =0x0000FFFF
	ldr r0, _022E2C68 @ =0x0237C84C
	cmp r5, #0
	str r1, [r0]
	popne {r3, r4, r5, pc}
	ldr r0, _022E2C5C @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x28000
	ldrb r0, [r0, #0x6c8]
	ands r0, r0, #3
	strb r0, [r4, #0x21]
	moveq r0, #1
	strbeq r0, [r4, #0x24]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E2C5C: .4byte 0x02353538
_022E2C60: .4byte 0x0001A21C
_022E2C64: .4byte 0x0000FFFF
_022E2C68: .4byte 0x0237C84C
	arm_func_end ov29_022E2B68

	arm_func_start ov29_022E2C6C
ov29_022E2C6C: @ 0x022E2C6C
	ldr r0, _022E2C9C @ =0x02353538
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x21c
	add r0, r0, #0x1a000
	strh r1, [r0, #0x3c]
	strh r1, [r0, #0x3e]
	strh r1, [r0, #0x40]
	strh r1, [r0, #0x42]
	strh r1, [r0, #0x38]
	strh r1, [r0, #0x3a]
	bx lr
	.align 2, 0
_022E2C9C: .4byte 0x02353538
	arm_func_end ov29_022E2C6C

	arm_func_start ov29_022E2CA0
ov29_022E2CA0: @ 0x022E2CA0
	push {r4, r5, r6, lr}
	ldr r1, _022E2D34 @ =0x02353538
	mov r4, r0
	ldr r3, [r1]
	ldr r0, _022E2D38 @ =0x0001A21C
	ldrsh r1, [r4]
	ldrsh r2, [r3, r0]
	add r0, r3, #0x21c
	add r5, r0, #0x1a000
	sub r0, r2, r1
	ldr r6, [r5, #0x10]
	bl FUN_0208655C
	cmp r0, #6
	bgt _022E2D2C
	ldrsh r1, [r5, #2]
	ldrsh r0, [r4, #2]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #5
	bgt _022E2D2C
	mov r0, r5
	bl ov29_022E3534
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	cmp r6, #0
	moveq r0, #1
	popeq {r4, r5, r6, pc}
	mov r0, r6
	bl HasDropeyeStatus
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov29_022E90CC
	pop {r4, r5, r6, pc}
_022E2D2C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E2D34: .4byte 0x02353538
_022E2D38: .4byte 0x0001A21C
	arm_func_end ov29_022E2CA0

	arm_func_start ov29_022E2D3C
ov29_022E2D3C: @ 0x022E2D3C
	push {r4, r5, r6, lr}
	ldr r1, _022E2DD0 @ =0x02353538
	mov r4, r0
	ldr r3, [r1]
	ldr r0, _022E2DD4 @ =0x0001A21C
	ldrsh r1, [r4]
	ldrsh r2, [r3, r0]
	add r0, r3, #0x21c
	add r5, r0, #0x1a000
	sub r0, r2, r1
	ldr r6, [r5, #0x10]
	bl FUN_0208655C
	cmp r0, #6
	bgt _022E2DC8
	ldrsh r1, [r5, #2]
	ldrsh r0, [r4, #2]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #6
	bgt _022E2DC8
	mov r0, r5
	bl ov29_022E3534
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	cmp r6, #0
	moveq r0, #1
	popeq {r4, r5, r6, pc}
	mov r0, r6
	bl HasDropeyeStatus
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov29_022E90CC
	pop {r4, r5, r6, pc}
_022E2DC8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E2DD0: .4byte 0x02353538
_022E2DD4: .4byte 0x0001A21C
	arm_func_end ov29_022E2D3C

	arm_func_start UpdateMapSurveyorFlag
UpdateMapSurveyorFlag: @ 0x022E2DD8
	push {r3, lr}
	mov r0, #0x41
	bl TeamMemberHasEnabledIqSkill
	ldr r1, _022E2DF8 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x1a000
	strb r0, [r1, #0x241]
	pop {r3, pc}
	.align 2, 0
_022E2DF8: .4byte 0x02353538
	arm_func_end UpdateMapSurveyorFlag

	arm_func_start ov29_022E2DFC
ov29_022E2DFC: @ 0x022E2DFC
	push {r3, lr}
	ldr r1, _022E2E50 @ =0x02353538
	cmp r0, #0
	ldr r1, [r1]
	add r1, r1, #0x21c
	add r1, r1, #0x1a000
	str r0, [r1, #0x10]
	moveq r0, #0
	strbeq r0, [r1, #0x2f]
	beq _022E2E40
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #7]
	cmp r0, #0
	moveq r0, #0
	strbeq r0, [r1, #0x2f]
	movne r0, #1
	strbne r0, [r1, #0x2f]
_022E2E40:
	mov r0, #0
	bl ov29_022E2EC4
	bl ov29_022E2C6C
	pop {r3, pc}
	.align 2, 0
_022E2E50: .4byte 0x02353538
	arm_func_end ov29_022E2DFC

	arm_func_start ov29_022E2E54
ov29_022E2E54: @ 0x022E2E54
	push {r4, lr}
	ldr r2, _022E2EC0 @ =0x02353538
	mov r4, r1
	ldr r1, [r2]
	cmp r0, #0
	add r1, r1, #0x21c
	add r2, r1, #0x1a000
	moveq r1, #0
	strbeq r1, [r2, #0x2f]
	beq _022E2E98
	ldr r1, [r0, #0xb4]
	ldrb r1, [r1, #7]
	cmp r1, #0
	moveq r1, #0
	strbeq r1, [r2, #0x2f]
	movne r1, #1
	strbne r1, [r2, #0x2f]
_022E2E98:
	str r0, [r2, #0x10]
	mov r0, #0
	bl ov29_022E2EC4
	bl ov29_022E2C6C
	bl ov29_02304954
	cmp r4, #0
	popeq {r4, pc}
	bl ov29_02336F4C
	bl ov29_02339CE8
	pop {r4, pc}
	.align 2, 0
_022E2EC0: .4byte 0x02353538
	arm_func_end ov29_022E2E54

	arm_func_start ov29_022E2EC4
ov29_022E2EC4: @ 0x022E2EC4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldr r1, _022E32DC @ =0x02353538
	str r0, [sp]
	ldr r0, [r1]
	cmp r0, #0
	beq _022E32D4
	add r0, r0, #0x21c
	add r4, r0, #0x1a000
	ldr r5, [r4, #0x10]
	cmp r5, #0
	beq _022E32D0
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _022E32D0
	ldrb r8, [r4, #0x32]
	ldrb sb, [r4, #0x33]
	ldrh r0, [r4, #8]
	ldr sl, [r5, #0xb4]
	mov r6, #0
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	mov r0, r5
	mov r1, #0x18
	strh r2, [r4, #0xe]
	ldrh r2, [r4]
	mov fp, r6
	mov r7, r6
	strh r2, [r4, #4]
	ldrh r2, [r4, #2]
	str r6, [sp, #4]
	strh r2, [r4, #6]
	ldrsh r2, [r5, #4]
	strh r2, [r4]
	ldrsh r2, [r5, #6]
	strh r2, [r4, #2]
	ldr r2, [r5, #0xc]
	asr r2, r2, #8
	sub r2, r2, #0x80
	strh r2, [r4, #8]
	ldr r2, [r5, #0x10]
	asr r2, r2, #8
	sub r2, r2, #0x6c
	strh r2, [r4, #0xa]
	ldrb r2, [r4, #0x27]
	str r2, [sp, #0xc]
	ldrb r2, [r4, #0x26]
	str r2, [sp, #8]
	bl ItemIsActive
	cmp r0, #0
	ldrbne r0, [sl, #7]
	mov r1, #0
	cmpne r0, #0
	movne r0, #1
	strbne r0, [r4, #0x26]
	strbne r0, [r4, #0x27]
	ldrbeq r0, [sl, #0xf9]
	strbeq r0, [r4, #0x26]
	ldrbeq r0, [sl, #0xfa]
	strbeq r0, [r4, #0x27]
	strb r1, [r4, #0x32]
	strb r1, [r4, #0x33]
	mov r0, r5
	mov r1, #0xe
	bl ItemIsActive
	cmp r0, #0
	ldrbne r0, [sl, #7]
	cmpne r0, #0
	movne r0, #1
	strbne r0, [r4, #0x32]
	strbne r0, [r4, #0x33]
	ldrb r1, [r4, #0x27]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	ldrbeq r0, [r4, #0x32]
	ldrb r1, [r4, #0x26]
	cmpeq r8, r0
	ldr r0, [sp, #8]
	movne r6, #1
	cmp r0, r1
	ldrbeq r0, [r4, #0x33]
	cmpeq sb, r0
	ldrb r0, [sl, #0xfb]
	movne fp, #1
	strb r0, [r4, #0x2a]
	ldrb r0, [r4, #0x2d]
	ldrb r8, [r4, #0x22]
	cmp r0, #0
	bne _022E309C
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	movne r0, #1
	movne r2, #0xe
	strbne r0, [r4, #0x22]
	moveq r2, #0
	ldr r0, _022E32E0 @ =0x0237C84C
	strbeq r2, [r4, #0x22]
	ldr r1, [r0]
	cmp r1, r2
	beq _022E30A8
	str r2, [r0]
	cmp r2, #0xe
	mov r0, #2
	mov r1, #0
	bne _022E3088
	bl FUN_02009194
	mov r0, #3
	mov r1, #0
	bl FUN_02009194
	b _022E30A8
_022E3088:
	bl FUN_020091B0
	mov r0, #3
	mov r1, #0
	bl FUN_020091B0
	b _022E30A8
_022E309C:
	ldr r1, _022E32E4 @ =0x0000FFFF
	ldr r0, _022E32E0 @ =0x0237C84C
	str r1, [r0]
_022E30A8:
	ldrb r0, [r4, #0x22]
	ldrb r1, [r4, #0x29]
	cmp r8, r0
	ldrb r0, [sl, #0xf1]
	movne r7, #1
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	strb r0, [r4, #0x29]
	ldrb r0, [r4, #0x29]
	cmp r1, r0
	ldreq r0, _022E32DC @ =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x2c000
	ldrbeq r0, [r0, #0xb10]
	cmpeq r0, #0
	beq _022E3108
	bl ov29_023047DC
	ldr r0, _022E32DC @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	mov r7, #1
	add r0, r0, #0x2c000
	strb r1, [r0, #0xb10]
_022E3108:
	mov r0, r5
	ldrb r8, [r4, #0x28]
	bl CanSeeInvisibleMonsters
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	strb r0, [r4, #0x28]
	ldrb r0, [r4, #0x28]
	cmp r8, r0
	movne r7, #1
	strne r7, [sp, #4]
	ldrb r8, [r4, #0x34]
	mov r0, r5
	bl HasDropeyeStatus
	and r1, r0, #0xff
	cmp r8, r1
	strb r0, [r4, #0x34]
	movne r7, #1
	strne r7, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022E3168
	bl ov29_02336F4C
	bl ov29_02339CE8
_022E3168:
	cmp r7, #0
	beq _022E3178
	mov r0, #0
	bl ov29_022E3A58
_022E3178:
	ldr r0, [sp]
	cmp r0, #0
	beq _022E3228
	ldrb r0, [r4, #0x2c]
	cmp r0, #0
	bne _022E3228
	ldrsh r5, [r4, #8]
	ldrsh r7, [r4, #0xc]
	sub r0, r7, r5
	bl FUN_0208655C
	cmp r0, #8
	bge _022E31C0
	ldrsh r1, [r4, #0xe]
	ldrsh r0, [r4, #0xa]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #8
	blt _022E31D0
_022E31C0:
	bl ov29_02336F4C
	mov r0, #1
	strb r0, [r4, #0x2c]
	b _022E3228
_022E31D0:
	cmp r7, r5
	bge _022E31E8
	mov r0, #0xff
	mov r1, #0
	bl ov29_0233711C
	b _022E31F8
_022E31E8:
	ble _022E31F8
	mov r0, #0
	mov r1, r0
	bl ov29_0233711C
_022E31F8:
	ldrsh r1, [r4, #0xa]
	ldrsh r0, [r4, #0xe]
	cmp r0, r1
	bge _022E3218
	mov r0, #0
	mov r1, #0xc0
	bl ov29_023372A4
	b _022E3228
_022E3218:
	ble _022E3228
	mov r0, #0
	mov r1, r0
	bl ov29_023372A4
_022E3228:
	cmp fp, #0
	ldrsheq r1, [r4]
	ldrsheq r0, [r4, #4]
	cmpeq r1, r0
	ldrsheq r1, [r4, #2]
	ldrsheq r0, [r4, #6]
	cmpeq r1, r0
	beq _022E3288
	ldr r4, _022E32DC @ =0x02353538
	mov r5, #0
_022E3250:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022E327C
	ldrsh r0, [r7, #4]
	ldrsh r1, [r7, #6]
	bl ov29_023391EC
_022E327C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022E3250
_022E3288:
	cmp r6, #0
	beq _022E32D0
	ldr r4, _022E32DC @ =0x02353538
	mov r5, #0
_022E3298:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xbc8]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022E32C4
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl ov29_023391EC
_022E32C4:
	add r5, r5, #1
	cmp r5, #0x40
	blt _022E3298
_022E32D0:
	bl ov29_022E34C8
_022E32D4:
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E32DC: .4byte 0x02353538
_022E32E0: .4byte 0x0237C84C
_022E32E4: .4byte 0x0000FFFF
	arm_func_end ov29_022E2EC4

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022E32E8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ItemIsActive
ItemIsActive: @ 0x022E330C
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	pop {r3, r4, r5, pc}
	arm_func_end ItemIsActive

	arm_func_start ov29_022E333C
ov29_022E333C: @ 0x022E333C
	ldr r0, _022E3358 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23d]
	cmp r0, #0
	moveq r0, #2
	bx lr
	.align 2, 0
_022E3358: .4byte 0x02353538
	arm_func_end ov29_022E333C

	arm_func_start ov29_022E335C
ov29_022E335C: @ 0x022E335C
	push {r3, r4, r5, lr}
	ldr r0, _022E3428 @ =0x02353538
	mov r5, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r1, [r0, #0x24d]
	ldr r4, [r0, #0x22c]
	cmp r1, #0
	bne _022E33A0
	bl FUN_022BFD20
	cmp r0, #0
	bne _022E33A0
	cmp r4, #0
	beq _022E33A0
	ldr r0, [r4]
	cmp r0, #1
	moveq r5, #1
_022E33A0:
	cmp r5, #0
	bne _022E33B0
	bl ov29_022E2C6C
	pop {r3, r4, r5, pc}
_022E33B0:
	ldr r0, _022E3428 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x21c
	add r4, r0, #0x1a000
	ldr r0, [r4, #0x10]
	ldr r5, [r0, #0xb4]
	bl ov29_02335A10
	ldr r1, _022E3428 @ =0x02353538
	ldr r0, _022E342C @ =0x000003E7
	ldr r1, [r1]
	ldrb r2, [r1, #0x749]
	ldrsh r1, [r1, #0x1e]
	add r1, r2, r1
	strh r1, [r4, #0x3c]
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x42]
	ldrsh r0, [r5, #0x10]
	strh r0, [r4, #0x40]
	ldrb r0, [r5, #0xa]
	strh r0, [r4, #0x3e]
	ldrsh r1, [r4, #0x42]
	asr r0, r1, #2
	add r0, r1, r0, lsr #29
	asr r0, r0, #3
	strh r0, [r4, #0x44]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E3428: .4byte 0x02353538
_022E342C: .4byte 0x000003E7
	arm_func_end ov29_022E335C

	arm_func_start ov29_022E3430
ov29_022E3430: @ 0x022E3430
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022E34A8 @ =0x02353538
	mov r7, #0
	ldr r1, [r1]
	mov r4, r0
	mov r2, #1
	add r0, r1, #0x1a000
	strb r2, [r0, #0x23f]
	mov r5, r7
_022E3454:
	mov r6, r5
_022E3458:
	mov r0, r6
	mov r1, r7
	bl GetTileSafe
	ldrh r1, [r0, #2]
	add r6, r6, #1
	cmp r6, #0x38
	orr r1, r1, #1
	strh r1, [r0, #2]
	blt _022E3458
	add r7, r7, #1
	cmp r7, #0x20
	blt _022E3454
	mov r0, #0
	bl ov29_022E2EC4
	bl ov29_02336F4C
	bl ov29_02339CE8
	ldr r1, _022E34AC @ =0x00000B77
	mov r0, r4
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E34A8: .4byte 0x02353538
_022E34AC: .4byte 0x00000B77
	arm_func_end ov29_022E3430

	arm_func_start ov29_022E34B0
ov29_022E34B0: @ 0x022E34B0
	ldr r1, _022E34C4 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x1a000
	strb r0, [r1, #0x24c]
	bx lr
	.align 2, 0
_022E34C4: .4byte 0x02353538
	arm_func_end ov29_022E34B0

	arm_func_start ov29_022E34C8
ov29_022E34C8: @ 0x022E34C8
	ldr r0, _022E352C @ =0x02353538
	ldr r3, [r0]
	add r0, r3, #0x1a000
	ldr r2, [r0, #0x234]
	cmp r2, #0
	bxeq lr
	ldr r1, _022E3530 @ =0x0235110C
	cmp r2, #0x1f
	movge r2, #0x1f
	ldr r2, [r1, r2, lsl #2]
	add r0, r3, #0x1a000
	ldr r1, _022E352C @ =0x02353538
	str r2, [r0, #0x230]
	ldr r0, [r1]
	add r0, r0, #0x1a000
	ldr r2, [r0, #0x234]
	sub r2, r2, #1
	str r2, [r0, #0x234]
	ldr r0, [r1]
	add r0, r0, #0x1a000
	ldr r1, [r0, #0x234]
	cmp r1, #0
	ldreq r1, [r0, #0x238]
	streq r1, [r0, #0x234]
	bx lr
	.align 2, 0
_022E352C: .4byte 0x02353538
_022E3530: .4byte 0x0235110C
	arm_func_end ov29_022E34C8

	arm_func_start ov29_022E3534
ov29_022E3534: @ 0x022E3534
	ldrb r1, [r0, #0x34]
	cmp r1, #0
	bne _022E3558
	ldrb r1, [r0, #0x23]
	cmp r1, #0
	ldrbeq r0, [r0, #0x24]
	cmpeq r0, #0
	movne r0, #1
	bxne lr
_022E3558:
	mov r0, #0
	bx lr
	arm_func_end ov29_022E3534

	arm_func_start ov29_022E3560
ov29_022E3560: @ 0x022E3560
	ldr r1, _022E356C @ =0x0235354C
	strb r0, [r1]
	bx lr
	.align 2, 0
_022E356C: .4byte 0x0235354C
	arm_func_end ov29_022E3560

	arm_func_start ov29_022E3570
ov29_022E3570: @ 0x022E3570
	ldr r0, _022E357C @ =0x0235354C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_022E357C: .4byte 0x0235354C
	arm_func_end ov29_022E3570

	arm_func_start ov29_022E3580
ov29_022E3580: @ 0x022E3580
	ldr ip, _022E358C @ =FUN_022BF8E8
	mov r0, #0
	bx ip
	.align 2, 0
_022E358C: .4byte FUN_022BF8E8
	arm_func_end ov29_022E3580

	arm_func_start ov29_022E3590
ov29_022E3590: @ 0x022E3590
	push {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	and r3, r3, #0xff
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, r5, r6, pc}
	arm_func_end ov29_022E3590

	arm_func_start ov29_022E35E4
ov29_022E35E4: @ 0x022E35E4
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r8, r0
	mov r5, r1
	mov r4, r2
	mov r7, r3
	bl EntityIsValid
	cmp r0, #0
	mvneq r0, #0
	beq _022E37A8
	mov r0, r8
	ldr r6, [r8, #0xb4]
	bl ov29_022E5ED0
	cmp r0, #0
	mvneq r0, #0
	beq _022E37A8
	ldrb r0, [sp, #0x4c]
	cmp r0, #0
	ldrbeq r0, [r6, #0x10b]
	cmpeq r0, #2
	mvneq r0, #0
	beq _022E37A8
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _022E365C
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl ov29_022E38E0
_022E365C:
	add r0, sp, #0
	mov r2, r7
	add r1, r8, #0x2c
	bl FUN_0201CF90
	ldrsh r7, [sp]
	cmp r7, #0x63
	ldrshne r2, [sp, #2]
	cmpne r2, #0x63
	ldreq r1, [r8, #0x10]
	ldreq r0, [r6, #0x188]
	ldreq r7, [r8, #0xc]
	subeq r8, r1, r0
	beq _022E36A8
	ldr r1, [r8, #0x10]
	ldr r3, [r8, #0xc]
	ldr r0, [r6, #0x188]
	add r2, r1, r2, lsl #8
	add r7, r3, r7, lsl #8
	sub r8, r2, r0
_022E36A8:
	ldr r0, _022E37B0 @ =0x02353538
	ldr r2, _022E37B4 @ =0x0001A226
	ldr r3, [r0]
	add r0, sp, #4
	ldrsh r2, [r3, r2]
	rsb r6, r2, r1, asr #8
	bl FUN_022BF274
	ldrsh r0, [sp, #0x50]
	mov r1, #0
	str r5, [sp, #4]
	str r1, [sp, #8]
	cmp r0, #0
	blt _022E36E4
	cmp r0, #8
	ble _022E36F0
_022E36E4:
	mvn r0, #0
	str r0, [sp, #0xc]
	b _022E36F4
_022E36F0:
	str r0, [sp, #0xc]
_022E36F4:
	add r0, r6, r6, lsr #31
	asr r0, r0, #1
	mov r1, #0
	ldr r3, [sp, #0x54]
	asr r6, r7, #8
	asr r5, r8, #8
	add r0, r0, #1
	mvn r2, #0
	strh r6, [sp, #0x10]
	strh r5, [sp, #0x12]
	strb r2, [sp, #0x18]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	str r0, [sp, #0x1c]
	cmp r3, #0
	bne _022E3740
	add r0, sp, #0x20
	bl FUN_0201C000
	b _022E3758
_022E3740:
	add r2, sp, #0x20
	mov r1, #6
_022E3748:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E3748
_022E3758:
	add r0, sp, #4
	mov r1, #0
	bl FUN_022BF2B4
	cmp r4, #0
	beq _022E37A8
	lsl r0, r0, #0x10
	mov r6, #0
	asr r5, r0, #0x10
	mov r4, #0x42
	b _022E379C
_022E3780:
	mov r0, r5
	bl FUN_022BF904
	cmp r0, #0
	beq _022E37A4
	mov r0, r4
	bl AdvanceFrame
	add r6, r6, #1
_022E379C:
	cmp r6, #0x64
	blt _022E3780
_022E37A4:
	mvn r0, #0
_022E37A8:
	add sp, sp, #0x30
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E37B0: .4byte 0x02353538
_022E37B4: .4byte 0x0001A226
	arm_func_end ov29_022E35E4

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022E37B8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022E37DC
ov29_022E37DC: @ 0x022E37DC
	push {r3, lr}
	sub sp, sp, #8
	ldrsh ip, [r0]
	mov r3, #0x18
	smulbb ip, ip, r3
	add ip, ip, #0xc
	lsl ip, ip, #8
	str ip, [sp]
	ldrsh ip, [r0, #2]
	add r0, sp, #0
	smulbb r3, ip, r3
	add r3, r3, #0x10
	lsl r3, r3, #8
	str r3, [sp, #4]
	bl ov29_022E3820
	add sp, sp, #8
	pop {r3, pc}
	arm_func_end ov29_022E37DC

	arm_func_start ov29_022E3820
ov29_022E3820: @ 0x022E3820
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	add r0, sp, #0
	mov r6, r1
	mov r4, r2
	bl FUN_022BF274
	mov ip, #0
	sub r3, ip, #1
	str r6, [sp]
	str ip, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5]
	ldr r1, _022E38DC @ =0x0000FFFF
	asr r0, r0, #8
	strh r0, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, sp, #0x1c
	asr r2, r2, #8
	strh r2, [sp, #0xe]
	strb r3, [sp, #0x14]
	strh ip, [sp, #0x10]
	strh ip, [sp, #0x12]
	str r1, [sp, #0x18]
	bl FUN_0201C000
	add r0, sp, #0
	mov r1, #0
	bl FUN_022BF2B4
	cmp r4, #0
	beq _022E38D4
	lsl r0, r0, #0x10
	mov r6, #0
	asr r5, r0, #0x10
	mov r4, #0x42
	b _022E38C8
_022E38AC:
	mov r0, r5
	bl FUN_022BF904
	cmp r0, #0
	beq _022E38D0
	mov r0, r4
	bl AdvanceFrame
	add r6, r6, #1
_022E38C8:
	cmp r6, #0x64
	blt _022E38AC
_022E38D0:
	mvn r0, #0
_022E38D4:
	add sp, sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022E38DC: .4byte 0x0000FFFF
	arm_func_end ov29_022E3820

	arm_func_start ov29_022E38E0
ov29_022E38E0: @ 0x022E38E0
	push {r4, r5, r6, r7, r8, lr}
	ldr r1, _022E3A38 @ =0x02353538
	mov r7, #0
	ldr r2, [r1]
	mov r1, r7
	add r2, r2, #0x1a000
	mov r8, r0
	str r7, [r2, #0x238]
	bl FUN_022BF9CC
	cmp r0, #0
	bne _022E3920
	mov r0, r8
	mov r1, #1
	bl FUN_022BF9CC
	cmp r0, #0
	beq _022E3980
_022E3920:
	mov r7, #0
	mov r5, #1
	mov r6, r7
	mov r4, #0x4a
	b _022E3968
_022E3934:
	mov r0, r8
	mov r1, r6
	bl FUN_022BF9CC
	cmp r0, #0
	bne _022E395C
	mov r0, r8
	mov r1, r5
	bl FUN_022BF9CC
	cmp r0, #0
	beq _022E3970
_022E395C:
	mov r0, r4
	bl AdvanceFrame
	add r7, r7, #1
_022E3968:
	cmp r7, #0x3e8
	blt _022E3934
_022E3970:
	mov r0, #0x4a
	bl AdvanceFrame
	mov r0, #0x4a
	bl AdvanceFrame
_022E3980:
	cmp r7, #0x3e8
	beq _022E3990
	cmp r8, #0
	beq _022E3994
_022E3990:
	bl FUN_022BDC68
_022E3994:
	mov r0, #1
	bl ov29_022DE5F0
	cmp r0, #0x100
	bge _022E3A0C
	mov r0, #1
	bl ov29_022DE5F0
	mov r6, r0
	mov r7, #0
	mov r5, #0x4a
	mov r4, #1
	b _022E39F8
_022E39C0:
	mov r0, r5
	bl AdvanceFrame
	cmp r6, #0x100
	movge r6, #0x100
	bge _022E3A00
	add r0, r6, #4
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, r6
	mov r1, r4
	bl ov29_022DE5D8
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_022E39F8:
	cmp r7, #0x3e8
	blt _022E39C0
_022E3A00:
	mov r0, r6
	mov r1, #1
	bl ov29_022DE5D8
_022E3A0C:
	ldr r0, _022E3A3C @ =0x0235354C
	ldrb r0, [r0]
	cmp r0, #0
	beq _022E3A30
	mov r0, #0x10
	bl ov29_022ED0F4
	ldr r0, _022E3A3C @ =0x0235354C
	mov r1, #0
	strb r1, [r0]
_022E3A30:
	bl ov29_022E6E40
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E3A38: .4byte 0x02353538
_022E3A3C: .4byte 0x0235354C
	arm_func_end ov29_022E38E0

	arm_func_start ov29_022E3A40
ov29_022E3A40: @ 0x022E3A40
	ldr r1, [r1, #0xb4]
	ldr r2, [r1, #0x218]
	ldr r1, [r1, #0x21c]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end ov29_022E3A40

	arm_func_start ov29_022E3A58
ov29_022E3A58: @ 0x022E3A58
	push {r4, r5, r6, r7, r8, lr}
	ldr r6, _022E3AB0 @ =0x02353538
	mov r5, r0
	mov r4, #0
	mov r7, #1
_022E3A6C:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022E3AA0
	ldr r0, [r8, #0xb4]
	cmp r5, #0
	strbne r7, [r0, #0x156]
	mov r0, r8
	bl UpdateStatusIconFlags
_022E3AA0:
	add r4, r4, #1
	cmp r4, #0x14
	blt _022E3A6C
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E3AB0: .4byte 0x02353538
	arm_func_end ov29_022E3A58

	arm_func_start UpdateStatusIconFlags
UpdateStatusIconFlags: @ 0x022E3AB4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [r4, #0xb4]
	mov r1, #0
	ldrsh r4, [r2, #2]
	mov r5, #1
	mov r0, r1
	cmp r4, #0xb9
	addne r3, r5, #0x310
	cmpne r4, r3
	bne _022E3AF8
	ldrb r3, [r2, #0xbe]
	cmp r3, #0x7f
	moveq r5, #0
_022E3AF8:
	cmp r5, #0
	beq _022E3B1C
	ldrb r5, [r2, #0xbd]
	ldr r4, _022E3D94 @ =0x0235130C
	add r3, r4, r5, lsl #3
	ldr r4, [r4, r5, lsl #3]
	ldr r3, [r3, #4]
	orr r1, r1, r4
	orr r0, r0, r3
_022E3B1C:
	ldrb r7, [r2, #0xbf]
	ldr r4, _022E3D98 @ =0x02351294
	ldrb r6, [r2, #0xc4]
	ldr r3, _022E3D9C @ =0x02351374
	add r5, r4, r7, lsl #3
	add ip, r3, r6, lsl #3
	ldr r4, [r4, r7, lsl #3]
	ldr lr, [r5, #4]
	ldrb sl, [r2, #0xd0]
	ldr r8, _022E3DA0 @ =0x023513B4
	ldrb r7, [r2, #0xd2]
	ldr r5, _022E3DA4 @ =0x023513F4
	add fp, r8, sl, lsl #3
	add sb, r5, r7, lsl #3
	orr r0, r0, lr
	ldr lr, [ip, #4]
	ldrb ip, [r2, #0xd5]
	orr r1, r1, r4
	ldr r4, _022E3DA8 @ =0x023514F4
	ldr r3, [r3, r6, lsl #3]
	add r6, r4, ip, lsl #3
	orr r0, r0, lr
	ldr lr, [fp, #4]
	ldrb fp, [r2, #0xd8]
	orr r1, r1, r3
	ldr r3, _022E3DAC @ =0x0235133C
	ldr r8, [r8, sl, lsl #3]
	add sl, r3, fp, lsl #3
	orr r0, r0, lr
	ldr lr, [sb, #4]
	ldrb sb, [r2, #0xe0]
	orr r1, r1, r8
	ldr r8, _022E3DB0 @ =0x023511FC
	ldr r5, [r5, r7, lsl #3]
	add r7, r8, sb, lsl #3
	orr r0, r0, lr
	ldr lr, [r6, #4]
	ldrb r6, [r2, #0xec]
	orr r1, r1, r5
	ldr r5, _022E3DB4 @ =0x023512BC
	ldr ip, [r4, ip, lsl #3]
	add r4, r5, r6, lsl #3
	orr r0, r0, lr
	ldr sl, [sl, #4]
	ldrb lr, [r2, #0xee]
	orr r1, r1, ip
	ldr ip, _022E3DB8 @ =0x02351214
	ldr fp, [r3, fp, lsl #3]
	add r3, ip, lr, lsl #3
	orr r0, r0, sl
	ldr sl, [r7, #4]
	ldrb r7, [r2, #0xef]
	orr fp, r1, fp
	ldr r1, _022E3DBC @ =0x023512E4
	ldr sb, [r8, sb, lsl #3]
	add r8, r1, r7, lsl #3
	orr r0, r0, sl
	ldr sl, [r4, #4]
	ldrb r4, [r2, #0xf1]
	orr fp, fp, sb
	ldr sb, _022E3DC0 @ =0x0235126C
	ldr r6, [r5, r6, lsl #3]
	add r5, sb, r4, lsl #3
	orr r0, r0, sl
	ldr sl, [r3, #4]
	ldrb r3, [r2, #0xf3]
	orr r6, fp, r6
	ldr fp, _022E3DC4 @ =0x023511BC
	ldr ip, [ip, lr, lsl #3]
	add lr, fp, r3, lsl #3
	orr sl, r0, sl
	ldr r0, [r8, #4]
	ldr r1, [r1, r7, lsl #3]
	orr r7, r6, ip
	ldr r6, [sb, r4, lsl #3]
	orr r8, r7, r1
	ldr r4, [r5, #4]
	orr r7, sl, r0
	ldr r1, [fp, r3, lsl #3]
	orr r5, r8, r6
	ldr r0, [lr, #4]
	orr r3, r7, r4
	orr r0, r3, r0
	orr r8, r5, r1
	ldrb r7, [r2, #0xf5]
	ldr r6, _022E3DC8 @ =0x023511EC
	ldrb r5, [r2, #0xf7]
	ldr r4, _022E3DCC @ =0x023511CC
	add r1, r6, r7, lsl #3
	add r3, r4, r5, lsl #3
	ldr r7, [r6, r7, lsl #3]
	ldr r6, [r1, #4]
	ldrb r1, [r2, #0xfd]
	ldr r4, [r4, r5, lsl #3]
	ldr r3, [r3, #4]
	orr r0, r0, r6
	orr r0, r0, r3
	cmp r1, #0
	orr r5, r8, r7
	orr r1, r5, r4
	ldrb r3, [r2, #0xfe]
	orrne r0, r0, #0
	orrne r1, r1, #0x1000000
	cmp r3, #0
	ldrb r3, [r2, #6]
	orrne r0, r0, #0
	orrne r1, r1, #0x2000000
	cmp r3, #0
	bne _022E3D00
	ldrsh r5, [r2, #0x12]
	ldrsh r4, [r2, #0x16]
	ldr r3, _022E3DD0 @ =0x000003E7
	add r5, r5, r4
	cmp r5, r3
	movgt r5, r3
	asr r3, r5, #1
	ldrsh r4, [r2, #0x10]
	add r3, r5, r3, lsr #30
	cmp r4, r3, asr #2
	orrlt r0, r0, #0
	orrlt r1, r1, #0x2000
_022E3D00:
	ldr r3, _022E3DD4 @ =0x02353538
	ldr r3, [r3]
	ldrb r3, [r3, #0x78d]
	cmp r3, #0
	beq _022E3D30
	ldrb r3, [r2, #0x62]
	tst r3, #1
	movne r3, #1
	moveq r3, #0
	tst r3, #0xff
	orrne r0, r0, #0
	orrne r1, r1, #0x2000
_022E3D30:
	ldr r3, [r2, #0x34]
	cmp r3, #0x100
	ldrge r3, [r2, #0x38]
	cmpge r3, #0x100
	ldrge r3, [r2, #0x3c]
	cmpge r3, #0x100
	ldrge r3, [r2, #0x40]
	cmpge r3, #0x100
	ldrshge r3, [r2, #0x24]
	cmpge r3, #0xa
	ldrshge r3, [r2, #0x26]
	cmpge r3, #0xa
	ldrshge r3, [r2, #0x28]
	cmpge r3, #0xa
	ldrshge r3, [r2, #0x2a]
	cmpge r3, #0xa
	ldrshge r3, [r2, #0x2c]
	cmpge r3, #0xa
	ldrshge r3, [r2, #0x2e]
	cmpge r3, #0xa
	orrlt r1, r1, #0x8000000
	orrlt r0, r0, #0
	str r1, [r2, #0x218]
	str r0, [r2, #0x21c]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E3D94: .4byte 0x0235130C
_022E3D98: .4byte 0x02351294
_022E3D9C: .4byte 0x02351374
_022E3DA0: .4byte 0x023513B4
_022E3DA4: .4byte 0x023513F4
_022E3DA8: .4byte 0x023514F4
_022E3DAC: .4byte 0x0235133C
_022E3DB0: .4byte 0x023511FC
_022E3DB4: .4byte 0x023512BC
_022E3DB8: .4byte 0x02351214
_022E3DBC: .4byte 0x023512E4
_022E3DC0: .4byte 0x0235126C
_022E3DC4: .4byte 0x023511BC
_022E3DC8: .4byte 0x023511EC
_022E3DCC: .4byte 0x023511CC
_022E3DD0: .4byte 0x000003E7
_022E3DD4: .4byte 0x02353538
	arm_func_end UpdateStatusIconFlags

	arm_func_start ov29_022E3DD8
ov29_022E3DD8: @ 0x022E3DD8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x144
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x144
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E3DD8

	arm_func_start ov29_022E3E24
ov29_022E3E24: @ 0x022E3E24
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E3E70 @ =0x00000143
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E3E70 @ =0x00000143
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E3E70: .4byte 0x00000143
	arm_func_end ov29_022E3E24

	arm_func_start ov29_022E3E74
ov29_022E3E74: @ 0x022E3E74
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x25
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x25
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	ldr r1, _022E3ECC @ =0x0000030E
	mov r0, r4
	bl ov29_022E56A0
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E3ECC: .4byte 0x0000030E
	arm_func_end ov29_022E3E74

	arm_func_start ov29_022E3ED0
ov29_022E3ED0: @ 0x022E3ED0
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E3F1C @ =0x00000143
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E3F1C @ =0x00000143
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E3F1C: .4byte 0x00000143
	arm_func_end ov29_022E3ED0

	arm_func_start ov29_022E3F20
ov29_022E3F20: @ 0x022E3F20
	bx lr
	arm_func_end ov29_022E3F20

	arm_func_start ov29_022E3F24
ov29_022E3F24: @ 0x022E3F24
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E3F70 @ =0x00000141
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E3F70 @ =0x00000141
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E3F70: .4byte 0x00000141
	arm_func_end ov29_022E3F24

	arm_func_start ov29_022E3F74
ov29_022E3F74: @ 0x022E3F74
	bx lr
	arm_func_end ov29_022E3F74

	arm_func_start ov29_022E3F78
ov29_022E3F78: @ 0x022E3F78
	bx lr
	arm_func_end ov29_022E3F78

	arm_func_start ov29_022E3F7C
ov29_022E3F7C: @ 0x022E3F7C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #7
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #7
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E3F7C

	arm_func_start ov29_022E3FC8
ov29_022E3FC8: @ 0x022E3FC8
	bx lr
	arm_func_end ov29_022E3FC8

	arm_func_start ov29_022E3FCC
ov29_022E3FCC: @ 0x022E3FCC
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #4
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #4
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E3FCC

	arm_func_start ov29_022E4014
ov29_022E4014: @ 0x022E4014
	bx lr
	arm_func_end ov29_022E4014

	arm_func_start ov29_022E4018
ov29_022E4018: @ 0x022E4018
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4064 @ =0x00000171
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4064 @ =0x00000171
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4064: .4byte 0x00000171
	arm_func_end ov29_022E4018

	arm_func_start ov29_022E4068
ov29_022E4068: @ 0x022E4068
	bx lr
	arm_func_end ov29_022E4068

	arm_func_start ov29_022E406C
ov29_022E406C: @ 0x022E406C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E40B4 @ =0x00000171
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E40B4 @ =0x00000171
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E40B4: .4byte 0x00000171
	arm_func_end ov29_022E406C

	arm_func_start ov29_022E40B8
ov29_022E40B8: @ 0x022E40B8
	bx lr
	arm_func_end ov29_022E40B8

	arm_func_start ov29_022E40BC
ov29_022E40BC: @ 0x022E40BC
	bx lr
	arm_func_end ov29_022E40BC

	arm_func_start ov29_022E40C0
ov29_022E40C0: @ 0x022E40C0
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x1ac
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x1ac
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E40C0

	arm_func_start ov29_022E4108
ov29_022E4108: @ 0x022E4108
	bx lr
	arm_func_end ov29_022E4108

	arm_func_start ov29_022E410C
ov29_022E410C: @ 0x022E410C
	bx lr
	arm_func_end ov29_022E410C

	arm_func_start ov29_022E4110
ov29_022E4110: @ 0x022E4110
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #4
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4110

	arm_func_start ov29_022E415C
ov29_022E415C: @ 0x022E415C
	bx lr
	arm_func_end ov29_022E415C

	arm_func_start ov29_022E4160
ov29_022E4160: @ 0x022E4160
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x1a8
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x1a8
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4160

	arm_func_start ov29_022E41AC
ov29_022E41AC: @ 0x022E41AC
	bx lr
	arm_func_end ov29_022E41AC

	arm_func_start ov29_022E41B0
ov29_022E41B0: @ 0x022E41B0
	push {r3, lr}
	cmp r1, #0
	popeq {r3, pc}
	ldr r1, _022E41C8 @ =0x00000221
	bl ov29_022E56A0
	pop {r3, pc}
	.align 2, 0
_022E41C8: .4byte 0x00000221
	arm_func_end ov29_022E41B0

	arm_func_start ov29_022E41CC
ov29_022E41CC: @ 0x022E41CC
	ldr ip, _022E41D8 @ =ov29_022E56A0
	mov r1, #0x310
	bx ip
	.align 2, 0
_022E41D8: .4byte ov29_022E56A0
	arm_func_end ov29_022E41CC

	arm_func_start ov29_022E41DC
ov29_022E41DC: @ 0x022E41DC
	ldr ip, _022E41EC @ =ov29_023049A8
	mov r1, #0xa
	mov r2, #8
	bx ip
	.align 2, 0
_022E41EC: .4byte ov29_023049A8
	arm_func_end ov29_022E41DC

	arm_func_start ov29_022E41F0
ov29_022E41F0: @ 0x022E41F0
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E423C @ =0x000001A7
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E423C @ =0x000001A7
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E423C: .4byte 0x000001A7
	arm_func_end ov29_022E41F0

	arm_func_start ov29_022E4240
ov29_022E4240: @ 0x022E4240
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E428C @ =0x000001A7
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E428C @ =0x000001A7
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E428C: .4byte 0x000001A7
	arm_func_end ov29_022E4240

	arm_func_start ov29_022E4290
ov29_022E4290: @ 0x022E4290
	bx lr
	arm_func_end ov29_022E4290

	arm_func_start ov29_022E4294
ov29_022E4294: @ 0x022E4294
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x4c
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x4c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4294

	arm_func_start ov29_022E42E0
ov29_022E42E0: @ 0x022E42E0
	bx lr
	arm_func_end ov29_022E42E0

	arm_func_start ov29_022E42E4
ov29_022E42E4: @ 0x022E42E4
	bx lr
	arm_func_end ov29_022E42E4

	arm_func_start ov29_022E42E8
ov29_022E42E8: @ 0x022E42E8
	push {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r5
	mov r1, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022E42E8

	arm_func_start ov29_022E4338
ov29_022E4338: @ 0x022E4338
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4384 @ =0x000001A9
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4384 @ =0x000001A9
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4384: .4byte 0x000001A9
	arm_func_end ov29_022E4338

	arm_func_start ov29_022E4388
ov29_022E4388: @ 0x022E4388
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E43D4 @ =0x0000013A
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x138
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E43D4: .4byte 0x0000013A
	arm_func_end ov29_022E4388

	arm_func_start ov29_022E43D8
ov29_022E43D8: @ 0x022E43D8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4424 @ =0x0000013A
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x138
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4424: .4byte 0x0000013A
	arm_func_end ov29_022E43D8

	arm_func_start ov29_022E4428
ov29_022E4428: @ 0x022E4428
	bx lr
	arm_func_end ov29_022E4428

	arm_func_start ov29_022E442C
ov29_022E442C: @ 0x022E442C
	bx lr
	arm_func_end ov29_022E442C

	arm_func_start ov29_022E4430
ov29_022E4430: @ 0x022E4430
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E447C @ =0x00000171
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E447C @ =0x00000171
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E447C: .4byte 0x00000171
	arm_func_end ov29_022E4430

	arm_func_start ov29_022E4480
ov29_022E4480: @ 0x022E4480
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #7
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #7
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4480

	arm_func_start ov29_022E44CC
ov29_022E44CC: @ 0x022E44CC
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4518 @ =0x0000018B
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4518 @ =0x0000018B
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4518: .4byte 0x0000018B
	arm_func_end ov29_022E44CC

	arm_func_start ov29_022E451C
ov29_022E451C: @ 0x022E451C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4568 @ =0x0000018A
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x188
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4568: .4byte 0x0000018A
	arm_func_end ov29_022E451C

	arm_func_start ov29_022E456C
ov29_022E456C: @ 0x022E456C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #5
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #5
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E456C

	arm_func_start ov29_022E45B8
ov29_022E45B8: @ 0x022E45B8
	ldr ip, _022E45C4 @ =ov29_022E56A0
	ldr r1, _022E45C8 @ =0x00000227
	bx ip
	.align 2, 0
_022E45C4: .4byte ov29_022E56A0
_022E45C8: .4byte 0x00000227
	arm_func_end ov29_022E45B8

	arm_func_start ov29_022E45CC
ov29_022E45CC: @ 0x022E45CC
	bx lr
	arm_func_end ov29_022E45CC

	arm_func_start ov29_022E45D0
ov29_022E45D0: @ 0x022E45D0
	push {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0x2f
	mov r4, r1
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x2f
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	mov r0, #0x30
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r1, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	sub r1, r2, #1
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, r5
	mov r1, #0x30
	mov r2, #1
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022E45D0

	arm_func_start ov29_022E465C
ov29_022E465C: @ 0x022E465C
	bx lr
	arm_func_end ov29_022E465C

	arm_func_start ov29_022E4660
ov29_022E4660: @ 0x022E4660
	bx lr
	arm_func_end ov29_022E4660

	arm_func_start ov29_022E4664
ov29_022E4664: @ 0x022E4664
	bx lr
	arm_func_end ov29_022E4664

	arm_func_start ov29_022E4668
ov29_022E4668: @ 0x022E4668
	bx lr
	arm_func_end ov29_022E4668

	arm_func_start ov29_022E466C
ov29_022E466C: @ 0x022E466C
	bx lr
	arm_func_end ov29_022E466C

	arm_func_start ov29_022E4670
ov29_022E4670: @ 0x022E4670
	bx lr
	arm_func_end ov29_022E4670

	arm_func_start ov29_022E4674
ov29_022E4674: @ 0x022E4674
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x21
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x21
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4674

	arm_func_start ov29_022E46C0
ov29_022E46C0: @ 0x022E46C0
	ldr ip, _022E46CC @ =ov29_022E56A0
	mov r1, #0x30c
	bx ip
	.align 2, 0
_022E46CC: .4byte ov29_022E56A0
	arm_func_end ov29_022E46C0

	arm_func_start ov29_022E46D0
ov29_022E46D0: @ 0x022E46D0
	bx lr
	arm_func_end ov29_022E46D0

	arm_func_start ov29_022E46D4
ov29_022E46D4: @ 0x022E46D4
	push {r4, lr}
	mov r4, r0
	bl ov29_022E5ED0
	cmp r0, #0
	popeq {r4, pc}
	ldr r0, [r4, #0xb4]
	mov r1, r4
	ldrb r0, [r0, #0x11e]
	mov r2, #1
	mov r3, #0xb
	bl ov29_022EA718
	pop {r4, pc}
	arm_func_end ov29_022E46D4

	arm_func_start ov29_022E4704
ov29_022E4704: @ 0x022E4704
	ldr ip, _022E4710 @ =ov29_022E56A0
	mov r1, #0x21c
	bx ip
	.align 2, 0
_022E4710: .4byte ov29_022E56A0
	arm_func_end ov29_022E4704

	arm_func_start ov29_022E4714
ov29_022E4714: @ 0x022E4714
	bx lr
	arm_func_end ov29_022E4714

	arm_func_start ov29_022E4718
ov29_022E4718: @ 0x022E4718
	bx lr
	arm_func_end ov29_022E4718

	arm_func_start ov29_022E471C
ov29_022E471C: @ 0x022E471C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4768 @ =0x00000131
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4768 @ =0x00000131
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4768: .4byte 0x00000131
	arm_func_end ov29_022E471C

	arm_func_start ov29_022E476C
ov29_022E476C: @ 0x022E476C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x30
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x30
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E476C

	arm_func_start ov29_022E47B8
ov29_022E47B8: @ 0x022E47B8
	bx lr
	arm_func_end ov29_022E47B8

	arm_func_start ov29_022E47BC
ov29_022E47BC: @ 0x022E47BC
	bx lr
	arm_func_end ov29_022E47BC

	arm_func_start ov29_022E47C0
ov29_022E47C0: @ 0x022E47C0
	bx lr
	arm_func_end ov29_022E47C0

	arm_func_start ov29_022E47C4
ov29_022E47C4: @ 0x022E47C4
	bx lr
	arm_func_end ov29_022E47C4

	arm_func_start ov29_022E47C8
ov29_022E47C8: @ 0x022E47C8
	bx lr
	arm_func_end ov29_022E47C8

	arm_func_start ov29_022E47CC
ov29_022E47CC: @ 0x022E47CC
	push {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r1, #0xe
	mov r4, r0
	bl MonsterIsType
	cmp r0, #0
	beq _022E4828
	mov r0, r5
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, r5
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E4860
_022E4828:
	mov r0, #0xe
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xe
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E4860:
	add sp, sp, #0x10
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022E47CC

	arm_func_start ov29_022E4868
ov29_022E4868: @ 0x022E4868
	bx lr
	arm_func_end ov29_022E4868

	arm_func_start ov29_022E486C
ov29_022E486C: @ 0x022E486C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x41
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x41
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E486C

	arm_func_start ov29_022E48B8
ov29_022E48B8: @ 0x022E48B8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4910 @ =0x0000011E
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x11c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	mov r0, r4
	mov r1, #0x20c
	bl ov29_022E56A0
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4910: .4byte 0x0000011E
	arm_func_end ov29_022E48B8

	arm_func_start ov29_022E4914
ov29_022E4914: @ 0x022E4914
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4960 @ =0x000001AE
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x1ac
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4960: .4byte 0x000001AE
	arm_func_end ov29_022E4914

	arm_func_start ov29_022E4964
ov29_022E4964: @ 0x022E4964
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E49B0 @ =0x000001B1
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E49B0 @ =0x000001B1
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E49B0: .4byte 0x000001B1
	arm_func_end ov29_022E4964

	arm_func_start ov29_022E49B4
ov29_022E49B4: @ 0x022E49B4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4A00 @ =0x000001A9
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4A00 @ =0x000001A9
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4A00: .4byte 0x000001A9
	arm_func_end ov29_022E49B4

	arm_func_start ov29_022E4A04
ov29_022E4A04: @ 0x022E4A04
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4A50 @ =0x00000192
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x190
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4A50: .4byte 0x00000192
	arm_func_end ov29_022E4A04

	arm_func_start ov29_022E4A54
ov29_022E4A54: @ 0x022E4A54
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4AA0 @ =0x0000018E
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x18c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4AA0: .4byte 0x0000018E
	arm_func_end ov29_022E4A54

	arm_func_start ov29_022E4AA4
ov29_022E4AA4: @ 0x022E4AA4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x190
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x190
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4AA4

	arm_func_start ov29_022E4AF0
ov29_022E4AF0: @ 0x022E4AF0
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x15
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x15
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4AF0

	arm_func_start ov29_022E4B3C
ov29_022E4B3C: @ 0x022E4B3C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4B88 @ =0x00000171
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4B88 @ =0x00000171
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4B88: .4byte 0x00000171
	arm_func_end ov29_022E4B3C

	arm_func_start ov29_022E4B8C
ov29_022E4B8C: @ 0x022E4B8C
	ldr ip, _022E4B98 @ =ov29_022E56A0
	ldr r1, _022E4B9C @ =0x0000030E
	bx ip
	.align 2, 0
_022E4B98: .4byte ov29_022E56A0
_022E4B9C: .4byte 0x0000030E
	arm_func_end ov29_022E4B8C

	arm_func_start ov29_022E4BA0
ov29_022E4BA0: @ 0x022E4BA0
	ldr ip, _022E4BAC @ =ov29_022E56A0
	ldr r1, _022E4BB0 @ =0x0000030E
	bx ip
	.align 2, 0
_022E4BAC: .4byte ov29_022E56A0
_022E4BB0: .4byte 0x0000030E
	arm_func_end ov29_022E4BA0

	arm_func_start ov29_022E4BB4
ov29_022E4BB4: @ 0x022E4BB4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x15
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x15
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4BB4

	arm_func_start ov29_022E4C00
ov29_022E4C00: @ 0x022E4C00
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0xf
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xf
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E4C00

	arm_func_start ov29_022E4C4C
ov29_022E4C4C: @ 0x022E4C4C
	push {r3, lr}
	sub sp, sp, #0x10
	mov r1, #2
	mov ip, #0
	stm sp, {r1, ip}
	sub r1, ip, #1
	str r1, [sp, #8]
	mov r1, #0x15
	mov r2, #1
	mov r3, #3
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r3, pc}
	arm_func_end ov29_022E4C4C

	arm_func_start ov29_022E4C84
ov29_022E4C84: @ 0x022E4C84
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4CD0 @ =0x000001F7
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4CD0 @ =0x000001F7
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4CD0: .4byte 0x000001F7
	arm_func_end ov29_022E4C84

	arm_func_start ov29_022E4CD4
ov29_022E4CD4: @ 0x022E4CD4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E4D20 @ =0x000001F9
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4D20 @ =0x000001F9
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E4D20: .4byte 0x000001F9
	arm_func_end ov29_022E4CD4

	arm_func_start ov29_022E4D24
ov29_022E4D24: @ 0x022E4D24
	bx lr
	arm_func_end ov29_022E4D24

	arm_func_start ov29_022E4D28
ov29_022E4D28: @ 0x022E4D28
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E4D80
	mov r0, #0x194
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x194
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E4DB8
_022E4D80:
	ldr r0, _022E4DC8 @ =0x00000193
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4DC8 @ =0x00000193
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E4DB8:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E4DC8: .4byte 0x00000193
	arm_func_end ov29_022E4D28

	arm_func_start ov29_022E4DCC
ov29_022E4DCC: @ 0x022E4DCC
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E4E24
	ldr r0, _022E4E6C @ =0x0000018F
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4E6C @ =0x0000018F
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E4E5C
_022E4E24:
	ldr r0, _022E4E70 @ =0x00000191
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4E70 @ =0x00000191
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E4E5C:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E4E6C: .4byte 0x0000018F
_022E4E70: .4byte 0x00000191
	arm_func_end ov29_022E4DCC

	arm_func_start ov29_022E4E74
ov29_022E4E74: @ 0x022E4E74
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E4ECC
	ldr r0, _022E4F14 @ =0x000001A9
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E4F14 @ =0x000001A9
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E4F04
_022E4ECC:
	ldr r0, _022E4F18 @ =0x00000192
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x190
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E4F04:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E4F14: .4byte 0x000001A9
_022E4F18: .4byte 0x00000192
	arm_func_end ov29_022E4E74

	arm_func_start ov29_022E4F1C
ov29_022E4F1C: @ 0x022E4F1C
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E4F74
	ldr r0, _022E4FBC @ =0x0000018E
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x18c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E4FAC
_022E4F74:
	mov r0, #0x190
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x190
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E4FAC:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E4FBC: .4byte 0x0000018E
	arm_func_end ov29_022E4F1C

	arm_func_start ov29_022E4FC0
ov29_022E4FC0: @ 0x022E4FC0
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E5018
	ldr r0, _022E5060 @ =0x000001A9
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E5060 @ =0x000001A9
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E5050
_022E5018:
	ldr r0, _022E5064 @ =0x00000192
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x190
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E5050:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E5060: .4byte 0x000001A9
_022E5064: .4byte 0x00000192
	arm_func_end ov29_022E4FC0

	arm_func_start ov29_022E5068
ov29_022E5068: @ 0x022E5068
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E50C0
	mov r0, #0x194
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x194
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E50F8
_022E50C0:
	ldr r0, _022E5108 @ =0x00000193
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E5108 @ =0x00000193
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E50F8:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E5108: .4byte 0x00000193
	arm_func_end ov29_022E5068

	arm_func_start ov29_022E510C
ov29_022E510C: @ 0x022E510C
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E5164
	ldr r0, _022E51AC @ =0x0000018E
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x18c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E519C
_022E5164:
	mov r0, #0x190
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x190
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E519C:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E51AC: .4byte 0x0000018E
	arm_func_end ov29_022E510C

	arm_func_start ov29_022E51B0
ov29_022E51B0: @ 0x022E51B0
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E5208
	ldr r0, _022E5250 @ =0x0000018F
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E5250 @ =0x0000018F
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E5240
_022E5208:
	ldr r0, _022E5254 @ =0x00000191
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E5254 @ =0x00000191
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E5240:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E5250: .4byte 0x0000018F
_022E5254: .4byte 0x00000191
	arm_func_end ov29_022E51B0

	arm_func_start ov29_022E5258
ov29_022E5258: @ 0x022E5258
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E52B0
	mov r0, #0x18c
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x18c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E52E8
_022E52B0:
	mov r0, #0xd
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xd
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E52E8:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov29_022E5258

	arm_func_start ov29_022E52F8
ov29_022E52F8: @ 0x022E52F8
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r1, [sp, #0x1c]
	mov r4, r0
	cmp r1, #0
	bne _022E5350
	ldr r0, _022E5398 @ =0x0000018D
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E5398 @ =0x0000018D
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E5388
_022E5350:
	mov r0, #0xe
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xe
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E5388:
	add sp, sp, #0x10
	pop {r4, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_022E5398: .4byte 0x0000018D
	arm_func_end ov29_022E52F8

	arm_func_start ov29_022E539C
ov29_022E539C: @ 0x022E539C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E53E8 @ =0x00000143
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E53E8 @ =0x00000143
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E53E8: .4byte 0x00000143
	arm_func_end ov29_022E539C

	arm_func_start ov29_022E53EC
ov29_022E53EC: @ 0x022E53EC
	bx lr
	arm_func_end ov29_022E53EC

	arm_func_start ov29_022E53F0
ov29_022E53F0: @ 0x022E53F0
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x19
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x19
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E53F0

	arm_func_start ov29_022E543C
ov29_022E543C: @ 0x022E543C
	push {r3, lr}
	sub sp, sp, #0x10
	mov r1, #2
	mov ip, #0
	stm sp, {r1, ip}
	sub r1, ip, #1
	str r1, [sp, #8]
	mov r1, #0x15
	mov r2, #1
	mov r3, #3
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r3, pc}
	arm_func_end ov29_022E543C

	arm_func_start ov29_022E5474
ov29_022E5474: @ 0x022E5474
	bx lr
	arm_func_end ov29_022E5474

	arm_func_start ov29_022E5478
ov29_022E5478: @ 0x022E5478
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r2, _022E5508 @ =0x02353538
	mov r4, r0
	ldr r2, [r2]
	ldr r0, [r1, #8]
	ldrb r1, [r2, #0x1c5]
	cmp r1, #0
	beq _022E54A0
	bl ov29_0230D618
_022E54A0:
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022E54BC
_022E54AC: @ jump table
	b _022E54BC @ case 0
	b _022E54C4 @ case 1
	b _022E54CC @ case 2
	b _022E54D4 @ case 3
_022E54BC:
	mov r1, #8
	b _022E54D8
_022E54C4:
	mov r1, #9
	b _022E54D8
_022E54CC:
	mov r1, #0xa
	b _022E54D8
_022E54D4:
	mov r1, #0xb
_022E54D8:
	mov ip, #0
	mov r2, #1
	str ip, [sp]
	str r2, [sp, #4]
	sub r0, r2, #2
	str r0, [sp, #8]
	mov r0, r4
	mov r3, #3
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E5508: .4byte 0x02353538
	arm_func_end ov29_022E5478

	arm_func_start ov29_022E550C
ov29_022E550C: @ 0x022E550C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E5558 @ =0x0000013E
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x13c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E5558: .4byte 0x0000013E
	arm_func_end ov29_022E550C

	arm_func_start ov29_022E555C
ov29_022E555C: @ 0x022E555C
	bx lr
	arm_func_end ov29_022E555C

	arm_func_start ov29_022E5560
ov29_022E5560: @ 0x022E5560
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r1
	cmp r2, #1
	bne _022E55B0
	mov r0, #0xf8
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xf8
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	b _022E55E8
_022E55B0:
	mov r0, #0xf9
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0xf9
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
_022E55E8:
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E5560

	arm_func_start ov29_022E55F0
ov29_022E55F0: @ 0x022E55F0
	push {r4, lr}
	sub sp, sp, #0x10
	mov r0, #0x2a
	mov r4, r1
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x2a
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E55F0

	arm_func_start ov29_022E563C
ov29_022E563C: @ 0x022E563C
	ldr ip, _022E564C @ =ov29_022E3820
	mov r1, #0x90
	mov r2, #1
	bx ip
	.align 2, 0
_022E564C: .4byte ov29_022E3820
	arm_func_end ov29_022E563C

	arm_func_start ov29_022E5650
ov29_022E5650: @ 0x022E5650
	push {r4, lr}
	sub sp, sp, #0x10
	ldr r0, _022E569C @ =0x00000167
	mov r4, r1
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E569C @ =0x00000167
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E569C: .4byte 0x00000167
	arm_func_end ov29_022E5650

	arm_func_start ov29_022E56A0
ov29_022E56A0: @ 0x022E56A0
	push {r4, lr}
	mov r4, r1
	cmp r0, #0
	bne _022E56BC
	mov r0, r4
	bl ov29_022EACCC
	pop {r4, pc}
_022E56BC:
	bl ov29_022E5ED0
	cmp r0, #0
	popeq {r4, pc}
	mov r0, r4
	bl ov29_022EACCC
	pop {r4, pc}
	arm_func_end ov29_022E56A0

	arm_func_start ov29_022E56D4
ov29_022E56D4: @ 0x022E56D4
	push {r4, lr}
	mov r4, r1
	bl ov29_022E2CA0
	cmp r0, #0
	popeq {r4, pc}
	mov r0, r4
	bl ov29_022EACCC
	pop {r4, pc}
	arm_func_end ov29_022E56D4

	arm_func_start ov29_022E56F4
ov29_022E56F4: @ 0x022E56F4
	push {r4, lr}
	mov r4, r1
	cmp r0, #0
	bne _022E5710
	mov r0, r4
	bl ov29_022EACE4
	pop {r4, pc}
_022E5710:
	bl ov29_022E5ED0
	cmp r0, #0
	popeq {r4, pc}
	mov r0, r4
	bl ov29_022EACCC
	pop {r4, pc}
	arm_func_end ov29_022E56F4

	arm_func_start ov29_022E5728
ov29_022E5728: @ 0x022E5728
	push {r3, lr}
	cmp r1, #0
	bne _022E5740
	ldr r0, _022E5760 @ =0x0000130E
	bl ov29_022EACCC
	pop {r3, pc}
_022E5740:
	cmp r1, #1
	bne _022E5754
	ldr r0, _022E5764 @ =0x0000130D
	bl ov29_022EACCC
	pop {r3, pc}
_022E5754:
	ldr r0, _022E5768 @ =0x0000130C
	bl ov29_022EACCC
	pop {r3, pc}
	.align 2, 0
_022E5760: .4byte 0x0000130E
_022E5764: .4byte 0x0000130D
_022E5768: .4byte 0x0000130C
	arm_func_end ov29_022E5728

	arm_func_start ov29_022E576C
ov29_022E576C: @ 0x022E576C
	push {r3, lr}
	ldr r0, [r1, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _022E578C
	ldr r0, _022E5798 @ =0x00001306
	bl ov29_022EACCC
	pop {r3, pc}
_022E578C:
	ldr r0, _022E579C @ =0x00001307
	bl ov29_022EACCC
	pop {r3, pc}
	.align 2, 0
_022E5798: .4byte 0x00001306
_022E579C: .4byte 0x00001307
	arm_func_end ov29_022E576C

	arm_func_start ov29_022E57A0
ov29_022E57A0: @ 0x022E57A0
	push {r3, lr}
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _022E57C0
	ldr r0, _022E57CC @ =0x00001306
	bl ov29_022EACCC
	pop {r3, pc}
_022E57C0:
	ldr r0, _022E57D0 @ =0x00001307
	bl ov29_022EACCC
	pop {r3, pc}
	.align 2, 0
_022E57CC: .4byte 0x00001306
_022E57D0: .4byte 0x00001307
	arm_func_end ov29_022E57A0

	arm_func_start ov29_022E57D4
ov29_022E57D4: @ 0x022E57D4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E585C @ =0x0000025A
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x258
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	ldr r0, _022E5860 @ =0x0000025B
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r1, #2
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	sub r1, r2, #1
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, _022E5860 @ =0x0000025B
	mov r0, r4
	mov r2, #1
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E585C: .4byte 0x0000025A
_022E5860: .4byte 0x0000025B
	arm_func_end ov29_022E57D4

	arm_func_start ov29_022E5864
ov29_022E5864: @ 0x022E5864
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x16
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x16
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E5864

	arm_func_start ov29_022E58B0
ov29_022E58B0: @ 0x022E58B0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r2
	mov sl, r0
	mov r5, r1
	cmp r4, #0x11
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r5
	bl ov29_022E2CA0
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsh r0, [r5]
	mov r2, #0x18
	add r1, sp, #0
	smulbb r0, r0, r2
	add r0, r0, #0xc
	lsl r0, r0, #8
	asr r0, r0, #8
	strh r0, [sp]
	ldrsh r3, [r5, #2]
	mov r0, r4
	smulbb r2, r3, r2
	add r2, r2, #0x10
	lsl r2, r2, #8
	asr r2, r2, #8
	strh r2, [sp, #2]
	bl FUN_022BEC08
	cmp r4, #4
	mov r6, r0
	cmpne r4, #0x18
	bne _022E5944
	mov r0, #0
	mov r1, #0x308
	bl ov29_022E56A0
	mov r0, #0x28
	mov r1, #0x33
	bl ov29_022EA370
	b _022E59C4
_022E5944:
	cmp r4, #8
	bne _022E59B8
	ldr sb, [sl, #0xb4]
	mov r7, #0
	lsl r0, r6, #0x10
	ldrb r8, [sb, #0x4c]
	asr r4, r0, #0x10
	mov r5, r7
	mov fp, #2
	b _022E59A4
_022E596C:
	sub r0, r8, #1
	and r8, r0, #7
	mov r0, sl
	mov r1, r5
	mov r2, r8
	bl ov29_023049A8
	mov r0, fp
	mov r1, #0x33
	bl ov29_022EA370
	mov r0, r4
	bl FUN_022BF904
	cmp r0, #0
	beq _022E59AC
	add r7, r7, #2
_022E59A4:
	cmp r7, #0x3e8
	blt _022E596C
_022E59AC:
	and r0, r8, #7
	strb r0, [sb, #0x4c]
	b _022E59C4
_022E59B8:
	mov r0, #0x28
	mov r1, #0x33
	bl ov29_022EA370
_022E59C4:
	lsl r0, r6, #0x10
	mov r7, #0
	asr r4, r0, #0x10
	mov r5, #0x42
	b _022E59F4
_022E59D8:
	mov r0, r5
	bl AdvanceFrame
	mov r0, r4
	bl FUN_022BF904
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, r7, #1
_022E59F4:
	cmp r7, #0x3e8
	blt _022E59D8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_022E58B0

	arm_func_start ov29_022E5A00
ov29_022E5A00: @ 0x022E5A00
	push {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r4, r1
	bl ov29_022E5ED0
	cmp r0, #0
	beq _022E5AD4
	ldrb r0, [r4]
	ldr r1, [r5, #0xc]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	movne r4, #0
	ldrsheq r4, [r4, #4]
	asr r1, r1, #8
	ldr r0, _022E5ADC @ =0x02353538
	strh r1, [sp, #4]
	ldr r2, [r5, #0x10]
	ldr r1, [r0]
	asr r0, r2, #8
	strh r0, [sp, #6]
	ldr r0, _022E5AE0 @ =0x0001A226
	ldrsh r3, [sp, #6]
	ldrsh r1, [r1, r0]
	add r0, sp, #8
	add r2, r5, #0x2c
	sub r1, r3, r1
	add r1, r1, r1, lsr #31
	asr r3, r1, #1
	mov r1, #4
	add r5, r3, #1
	bl FUN_0201D034
	add r1, sp, #4
	add r2, sp, #8
	mov r0, r4
	mov r3, #0
	str r5, [sp]
	bl FUN_022BEC94
	lsl r0, r0, #0x10
	mov r6, #0
	asr r4, r0, #0x10
	mov r5, #0x42
	b _022E5ACC
_022E5AB0:
	mov r0, r5
	bl AdvanceFrame
	mov r0, r4
	bl FUN_022BF904
	cmp r0, #0
	beq _022E5AD4
	add r6, r6, #1
_022E5ACC:
	cmp r6, #0x3e8
	blt _022E5AB0
_022E5AD4:
	add sp, sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E5ADC: .4byte 0x02353538
_022E5AE0: .4byte 0x0001A226
	arm_func_end ov29_022E5A00

	arm_func_start ov29_022E5AE4
ov29_022E5AE4: @ 0x022E5AE4
	push {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r0
	mov r4, r1
	bl ov29_022E5ED0
	cmp r0, #0
	beq _022E5BC8
	ldrb r0, [r4]
	ldr r1, [r5, #0xc]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	movne r4, #0
	ldrsheq r4, [r4, #4]
	asr r1, r1, #8
	ldr r0, _022E5BD0 @ =0x02353538
	strh r1, [sp, #4]
	ldr r2, [r5, #0x10]
	ldr r1, [r0]
	asr r0, r2, #8
	strh r0, [sp, #6]
	ldr r0, _022E5BD4 @ =0x0001A226
	ldrsh r3, [sp, #6]
	ldrsh r1, [r1, r0]
	add r0, sp, #8
	add r2, r5, #0x2c
	sub r1, r3, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r1, #1
	lsl r3, r1, #0x10
	mov r1, #4
	asr r5, r3, #0x10
	bl FUN_0201D034
	add r1, sp, #4
	add r2, sp, #8
	mov r0, r4
	mov r3, #1
	str r5, [sp]
	bl FUN_022BEC94
	lsl r0, r0, #0x10
	mov r6, #0
	asr r4, r0, #0x10
	mov r5, #0x42
	b _022E5BC0
_022E5B9C:
	mov r0, r5
	bl AdvanceFrame
	mov r0, r4
	bl FUN_022BF904
	cmp r0, #0
	beq _022E5BC8
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_022E5BC0:
	cmp r6, #0x3e8
	blt _022E5B9C
_022E5BC8:
	add sp, sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E5BD0: .4byte 0x02353538
_022E5BD4: .4byte 0x0001A226
	arm_func_end ov29_022E5AE4

	arm_func_start ov29_022E5BD8
ov29_022E5BD8: @ 0x022E5BD8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov r5, r0
	bl ov29_022E272C
	cmp r0, #0
	beq _022E5D4C
	ldr r1, [r5, #0xb4]
	ldr r0, [r5, #0xc]
	ldrb r4, [r1, #0x4c]
	asr r1, r0, #8
	ldr r0, _022E5D58 @ =0x02353538
	strh r1, [sp, #0x10]
	ldr r2, [r5, #0x10]
	ldr r1, [r0]
	asr r0, r2, #8
	strh r0, [sp, #0x12]
	ldr r0, _022E5D5C @ =0x0001A226
	ldrsh r2, [sp, #0x12]
	ldrsh r1, [r1, r0]
	add r0, sp, #0x14
	sub r1, r2, r1
	add r1, r1, r1, lsr #31
	asr sl, r1, #1
	bl FUN_022BF274
	mov r5, #0
	ldrsh r3, [sp, #0x10]
	ldrsh r2, [sp, #0x12]
	ldr r6, _022E5D60 @ =0x00000165
	sub r1, r5, #1
	add r0, sp, #0x30
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	strh r5, [sp, #0x24]
	strh r5, [sp, #0x26]
	strb r1, [sp, #0x28]
	str sl, [sp, #0x2c]
	bl FUN_0201C000
	add r0, sp, #0x14
	mov r1, r5
	bl FUN_022BF2B4
	ldr r2, _022E5D64 @ =0x0235171C
	mov sb, r5
	add r1, r2, r4, lsl #2
	lsl r3, r4, #2
	ldrh r2, [r2, r3]
	ldrh r1, [r1, #2]
	lsl r0, r0, #0x10
	strh r2, [sp, #0xc]
	strh r1, [sp, #0xe]
	ldrsh r8, [sp, #0xc]
	ldrsh r7, [sp, #0xe]
	ldr r4, _022E5D58 @ =0x02353538
	ldr fp, _022E5D5C @ =0x0001A226
	asr r5, r0, #0x10
	mov r6, sb
_022E5CC0:
	mov r0, r5
	add r1, sp, #0x10
	mov r2, r6
	mov r3, sl
	str r6, [sp]
	bl FUN_022BF45C
	mov r0, #0x42
	bl AdvanceFrame
	ldrsh r0, [sp, #0x12]
	ldrsh r1, [sp, #0x10]
	add sb, sb, #1
	add r0, r0, r7, lsl #2
	add r1, r1, r8, lsl #2
	strh r0, [sp, #0x12]
	strh r1, [sp, #0x10]
	ldr r0, [r4]
	ldrsh r1, [sp, #0x12]
	ldrsh r0, [r0, fp]
	cmp sb, #6
	sub r0, r1, r0
	add r0, r0, r0, lsr #31
	asr sl, r0, #1
	blt _022E5CC0
	bl FUN_022BDC68
	ldrsh r2, [sp, #0x10]
	ldrsh r1, [sp, #0x12]
	add r0, sp, #4
	lsl r4, r2, #8
	lsl r3, r1, #8
	mov r1, #0x1a0
	mov r2, #1
	str r4, [sp, #4]
	str r3, [sp, #8]
	bl ov29_022E3820
	b _022E5D50
_022E5D4C:
	mvn r0, #0
_022E5D50:
	add sp, sp, #0x40
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E5D58: .4byte 0x02353538
_022E5D5C: .4byte 0x0001A226
_022E5D60: .4byte 0x00000165
_022E5D64: .4byte 0x0235171C
	arm_func_end ov29_022E5BD8

	arm_func_start ov29_022E5D68
ov29_022E5D68: @ 0x022E5D68
	push {r4, lr}
	mov r4, #0x3f00
	bl GetFloorType
	cmp r0, #0
	beq _022E5D88
	cmp r0, #1
	cmpne r0, #2
	beq _022E5DA4
_022E5D88:
	ldr r0, _022E5DB0 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051288
	cmp r0, #0
	ldrne r4, _022E5DB4 @ =0x0000130A
	ldreq r4, _022E5DB8 @ =0x00001309
_022E5DA4:
	mov r0, r4
	bl ov29_022EACCC
	pop {r4, pc}
	.align 2, 0
_022E5DB0: .4byte 0x02353538
_022E5DB4: .4byte 0x0000130A
_022E5DB8: .4byte 0x00001309
	arm_func_end ov29_022E5D68

	arm_func_start ov29_022E5DBC
ov29_022E5DBC: @ 0x022E5DBC
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	bne _022E5DD8
	mov r0, #0
	bl ov29_022EAE14
_022E5DD8:
	cmp r5, #4
	beq _022E5E10
	cmp r4, #3
	bne _022E5DFC
	ldr r0, _022E5E7C @ =0x0235119C
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	bl ov29_022EACCC
	b _022E5E3C
_022E5DFC:
	ldr r0, _022E5E7C @ =0x0235119C
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	bl ov29_022EACE4
	b _022E5E3C
_022E5E10:
	cmp r4, #3
	bne _022E5E2C
	ldr r0, _022E5E80 @ =0x02351194
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	bl ov29_022EACCC
	b _022E5E3C
_022E5E2C:
	ldr r0, _022E5E7C @ =0x0235119C
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	bl ov29_022EACE4
_022E5E3C:
	mov r0, r5
	mov r1, r4
	mov r2, #0x80
	bl ov29_022E6A00
	mov r4, #0x46
	b _022E5E5C
_022E5E54:
	mov r0, r4
	bl AdvanceFrame
_022E5E5C:
	bl ov29_022E6C08
	cmp r0, #0
	bne _022E5E54
	bl ov29_022E6CE0
	bl ov29_02339148
	mov r0, #1
	bl ov29_0234B1A4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E5E7C: .4byte 0x0235119C
_022E5E80: .4byte 0x02351194
	arm_func_end ov29_022E5DBC

	arm_func_start ov29_022E5E84
ov29_022E5E84: @ 0x022E5E84
	push {r4, r5, r6, lr}
	mov r1, #8
	mov r2, r1
	mov r6, r0
	bl ov29_023049A8
	mov r5, #0
	mov r4, #0x51
	b _022E5EC4
_022E5EA4:
	mov r0, r4
	bl AdvanceFrame
	ldr r0, [r6, #0x58]
	tst r0, #3
	ldrbeq r0, [r6, #0xaf]
	cmpeq r0, #8
	popne {r4, r5, r6, pc}
	add r5, r5, #1
_022E5EC4:
	cmp r5, #0x64
	blt _022E5EA4
	pop {r4, r5, r6, pc}
	arm_func_end ov29_022E5E84

	arm_func_start ov29_022E5ED0
ov29_022E5ED0: @ 0x022E5ED0
	push {r3, lr}
	ldrb r1, [r0, #0x20]
	cmp r1, #0
	moveq r0, #0
	popeq {r3, pc}
	ldr r1, _022E5F1C @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x1a000
	ldrb r2, [r1, #0x23e]
	cmp r2, #0
	beq _022E5F14
	ldr r1, [r1, #0x22c]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
_022E5F14:
	bl ov29_022E272C
	pop {r3, pc}
	.align 2, 0
_022E5F1C: .4byte 0x02353538
	arm_func_end ov29_022E5ED0

	arm_func_start ov29_022E5F20
ov29_022E5F20: @ 0x022E5F20
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldr r0, _022E5FDC @ =0x00000199
	mov r8, #0
	ldr fp, _022E5FE0 @ =0x02353538
	rsb r4, r0, #0x198
	mov r7, r8
	mov r6, #2
	mov r5, r8
_022E5F44:
	ldr r0, [fp]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	ldrne sl, [sb, #0xb4]
	ldrbne r0, [sl, #0xfc]
	cmpne r0, #0
	beq _022E5FC8
	ldr r0, _022E5FDC @ =0x00000199
	strb r7, [sl, #0xfc]
	bl FUN_022BDEB4
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	and r3, r0, #0xff
	ldr r1, _022E5FDC @ =0x00000199
	str r5, [sp, #0xc]
	mov r0, sb
	mov r2, r5
	bl ov29_022E35E4
	ldrb r0, [sl, #6]
	cmp r0, #0
	bne _022E5FC8
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022E5FE4 @ =0x00000B92
	mov r0, sb
	bl LogMessageByIdWithPopup
_022E5FC8:
	add r8, r8, #1
	cmp r8, #0x14
	blt _022E5F44
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E5FDC: .4byte 0x00000199
_022E5FE0: .4byte 0x02353538
_022E5FE4: .4byte 0x00000B92
	arm_func_end ov29_022E5F20

	arm_func_start ov29_022E5FE8
ov29_022E5FE8: @ 0x022E5FE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r2, _022E60D4 @ =0x02353538
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	add r0, r0, #0x1a000
	ldr r4, [r0, #0x22c]
	cmp r4, #0
	bne _022E6018
	bl GetLeader
	mov r4, r0
_022E6018:
	ldr r0, _022E60D8 @ =0x023511DC
	lsl r1, r6, #1
	ldrh r1, [r0, r1]
	cmp r1, #0x3f00
	beq _022E6034
	mov r0, r4
	bl ov29_022E56A0
_022E6034:
	ldr r0, _022E60DC @ =0x0235122C
	ldr r7, [r0, r6, lsl #2]
	cmp r7, #0
	blt _022E60CC
	cmp r5, #0
	beq _022E6090
	bl ov29_022E0880
	cmp r0, #0
	bne _022E6090
	mov r0, r7
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, r7
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	b _022E60CC
_022E6090:
	ldr r0, _022E60E0 @ =0x0235124C
	ldr r5, [r0, r6, lsl #2]
	mov r0, r5
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, r5
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
_022E60CC:
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E60D4: .4byte 0x02353538
_022E60D8: .4byte 0x023511DC
_022E60DC: .4byte 0x0235122C
_022E60E0: .4byte 0x0235124C
	arm_func_end ov29_022E5FE8

	arm_func_start ov29_022E60E4
ov29_022E60E4: @ 0x022E60E4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x29
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x29
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E60E4

	arm_func_start ov29_022E6130
ov29_022E6130: @ 0x022E6130
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E6178 @ =0x000001A9
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E6178 @ =0x000001A9
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E6178: .4byte 0x000001A9
	arm_func_end ov29_022E6130

	arm_func_start ov29_022E617C
ov29_022E617C: @ 0x022E617C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E61C4 @ =0x000001A9
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E61C4 @ =0x000001A9
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E61C4: .4byte 0x000001A9
	arm_func_end ov29_022E617C

	arm_func_start ov29_022E61C8
ov29_022E61C8: @ 0x022E61C8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E6210 @ =0x000001A9
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E6210 @ =0x000001A9
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E6210: .4byte 0x000001A9
	arm_func_end ov29_022E61C8

	arm_func_start ov29_022E6214
ov29_022E6214: @ 0x022E6214
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E625C @ =0x000001A9
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E625C @ =0x000001A9
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E625C: .4byte 0x000001A9
	arm_func_end ov29_022E6214

	arm_func_start ov29_022E6260
ov29_022E6260: @ 0x022E6260
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x1a8
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x1a8
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E6260

	arm_func_start ov29_022E62A8
ov29_022E62A8: @ 0x022E62A8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x29
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x29
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E62A8

	arm_func_start ov29_022E62F0
ov29_022E62F0: @ 0x022E62F0
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x48
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x48
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E62F0

	arm_func_start ov29_022E6338
ov29_022E6338: @ 0x022E6338
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E6384 @ =0x000001A6
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x1a4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E6384: .4byte 0x000001A6
	arm_func_end ov29_022E6338

	arm_func_start ov29_022E6388
ov29_022E6388: @ 0x022E6388
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E63D4 @ =0x00000297
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E63D4 @ =0x00000297
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E63D4: .4byte 0x00000297
	arm_func_end ov29_022E6388

	arm_func_start ov29_022E63D8
ov29_022E63D8: @ 0x022E63D8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E6420 @ =0x0000018E
	bl FUN_022BDEB4
	mov r3, r0
	mov r2, #0
	mov r1, #2
	stm sp, {r1, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	add r1, r1, #0x18c
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E6420: .4byte 0x0000018E
	arm_func_end ov29_022E63D8

	arm_func_start ov29_022E6424
ov29_022E6424: @ 0x022E6424
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x1b0
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x1b0
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	mov r0, #0xa
	mov r1, #0x42
	bl ov29_022EA370
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E6424

	arm_func_start ov29_022E647C
ov29_022E647C: @ 0x022E647C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x1a8
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x1a8
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E647C

	arm_func_start ov29_022E64C4
ov29_022E64C4: @ 0x022E64C4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E650C @ =0x000001A9
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E650C @ =0x000001A9
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E650C: .4byte 0x000001A9
	arm_func_end ov29_022E64C4

	arm_func_start ov29_022E6510
ov29_022E6510: @ 0x022E6510
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E6558 @ =0x000001A9
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E6558 @ =0x000001A9
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E6558: .4byte 0x000001A9
	arm_func_end ov29_022E6510

	arm_func_start ov29_022E655C
ov29_022E655C: @ 0x022E655C
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E65A4 @ =0x000001AB
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	ldr r1, _022E65A4 @ =0x000001AB
	mov r0, r4
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E65A4: .4byte 0x000001AB
	arm_func_end ov29_022E655C

	arm_func_start ov29_022E65A8
ov29_022E65A8: @ 0x022E65A8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #4
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E65A8

	arm_func_start ov29_022E65F4
ov29_022E65F4: @ 0x022E65F4
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E6640 @ =0x0000011E
	bl FUN_022BDEB4
	mov r2, r0
	mov ip, #0
	mov r1, #2
	stm sp, {r1, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	and r3, r2, #0xff
	mov r0, r4
	add r1, r1, #0x11c
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E6640: .4byte 0x0000011E
	arm_func_end ov29_022E65F4

	arm_func_start ov29_022E6644
ov29_022E6644: @ 0x022E6644
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _022E6690 @ =0x0000011D
	bl FUN_022BDEB4
	mov r2, r0
	and r3, r2, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	ldr r1, _022E6690 @ =0x0000011D
	mov r0, r4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022E6690: .4byte 0x0000011D
	arm_func_end ov29_022E6644

	arm_func_start ov29_022E6694
ov29_022E6694: @ 0x022E6694
	push {r4, lr}
	mov r4, r1
	ldr r1, _022E66C0 @ =0x0000019E
	mov r2, #1
	bl ov29_022E37DC
	cmp r4, #0
	popeq {r4, pc}
	mov r0, #0
	mov r1, #9
	bl ov29_022E56F4
	pop {r4, pc}
	.align 2, 0
_022E66C0: .4byte 0x0000019E
	arm_func_end ov29_022E6694

	arm_func_start ov29_022E66C4
ov29_022E66C4: @ 0x022E66C4
	ldr ip, _022E66D4 @ =ov29_022E37DC
	mov r1, #0x36
	mov r2, #1
	bx ip
	.align 2, 0
_022E66D4: .4byte ov29_022E37DC
	arm_func_end ov29_022E66C4

	arm_func_start ov29_022E66D8
ov29_022E66D8: @ 0x022E66D8
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x15
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x15
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E66D8

	arm_func_start ov29_022E6724
ov29_022E6724: @ 0x022E6724
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x1b4
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x1b4
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E6724

	arm_func_start ov29_022E6770
ov29_022E6770: @ 0x022E6770
	ldr ip, _022E6780 @ =ov29_022E37DC
	mov r1, #0x37
	mov r2, #1
	bx ip
	.align 2, 0
_022E6780: .4byte ov29_022E37DC
	arm_func_end ov29_022E6770

	arm_func_start ov29_022E6784
ov29_022E6784: @ 0x022E6784
	ldr ip, _022E6794 @ =ov29_022E37DC
	mov r1, #0x29
	mov r2, #1
	bx ip
	.align 2, 0
_022E6794: .4byte ov29_022E37DC
	arm_func_end ov29_022E6784

	arm_func_start ov29_022E6798
ov29_022E6798: @ 0x022E6798
	push {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0x18
	bl FUN_022BDEB4
	mov r1, r0
	and r3, r1, #0xff
	mov r0, #2
	mov ip, #0
	stm sp, {r0, ip}
	sub r0, ip, #1
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #0x18
	mov r2, #1
	str ip, [sp, #0xc]
	bl ov29_022E35E4
	add sp, sp, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E6798

	arm_func_start FUN_022E67E4
FUN_022E67E4: @ 0x022E67E4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r4, r2
	mov r5, #0x200
	bl ov29_022E5ED0
	cmp r0, #0
	beq _022E68AC
	mov r0, r7
	bl FUN_022BDEB4
	mov r3, r0
	mov r0, #2
	mov r2, #0
	stm sp, {r0, r2}
	sub r0, r2, #1
	str r0, [sp, #8]
	mov r0, r6
	mov r1, r7
	and r3, r3, #0xff
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	mov r0, r4
	mov r1, #0x42
	bl ov29_022EA370
	mov r4, #0x42
	ldr sb, _022E68B4 @ =0x02353538
	ldr r7, _022E68B8 @ =0x0001A226
	mvn r8, #7
	b _022E6894
_022E6860:
	mov r0, r4
	bl AdvanceFrame
	ldr r0, [r6, #0x1c]
	add r2, r0, r5
	str r2, [r6, #0x1c]
	ldr r0, [sb]
	ldr r1, [r6, #0x10]
	ldrsh r0, [r0, r7]
	sub r1, r1, r2
	add r5, r5, #0x100
	rsb r0, r0, r1, asr #8
	cmp r0, r8
	blt _022E68A0
_022E6894:
	ldr r0, [r6, #0x1c]
	cmp r0, #0xc800
	blt _022E6860
_022E68A0:
	mov r0, #0
	strb r0, [r6, #0x20]
	bl ov29_022E38E0
_022E68AC:
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E68B4: .4byte 0x02353538
_022E68B8: .4byte 0x0001A226
	arm_func_end FUN_022E67E4

	arm_func_start ov29_022E68BC
ov29_022E68BC: @ 0x022E68BC
	ldr ip, _022E68D0 @ =FUN_022E67E4
	mov r1, r0
	ldr r0, _022E68D4 @ =0x0000013E
	mov r2, #5
	bx ip
	.align 2, 0
_022E68D0: .4byte FUN_022E67E4
_022E68D4: .4byte 0x0000013E
	arm_func_end ov29_022E68BC

	arm_func_start ov29_022E68D8
ov29_022E68D8: @ 0x022E68D8
	ldr ip, _022E68EC @ =FUN_022E67E4
	mov r1, r0
	mov r0, #0x1bc
	mov r2, #0xe
	bx ip
	.align 2, 0
_022E68EC: .4byte FUN_022E67E4
	arm_func_end ov29_022E68D8

	arm_func_start ov29_022E68F0
ov29_022E68F0: @ 0x022E68F0
	ldr ip, _022E6904 @ =FUN_022E67E4
	mov r1, r0
	ldr r0, _022E6908 @ =0x0000013E
	mov r2, #5
	bx ip
	.align 2, 0
_022E6904: .4byte FUN_022E67E4
_022E6908: .4byte 0x0000013E
	arm_func_end ov29_022E68F0

	arm_func_start ov29_022E690C
ov29_022E690C: @ 0x022E690C
	ldr ip, _022E6920 @ =FUN_022E67E4
	mov r1, r0
	ldr r0, _022E6924 @ =0x0000013E
	mov r2, #5
	bx ip
	.align 2, 0
_022E6920: .4byte FUN_022E67E4
_022E6924: .4byte 0x0000013E
	arm_func_end ov29_022E690C

	arm_func_start ov29_022E6928
ov29_022E6928: @ 0x022E6928
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	ldr r3, _022E69F8 @ =0x023511B0
	mov r4, r1
	add r2, sp, #0x10
	mov r5, r0
	mov r1, #6
_022E6944:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E6944
	ldr r0, _022E69FC @ =0x0000027A
	bl FUN_022BDEB4
	mov r3, #2
	lsr r1, r4, #0x1f
	mov ip, r0
	rsb r0, r1, r4, lsl #29
	add r0, r1, r0, ror #29
	lsl r0, r0, #0x10
	str r3, [sp]
	mov r2, #0
	add r1, r3, #0x278
	str r2, [sp, #4]
	asr r0, r0, #0x10
	str r0, [sp, #8]
	add r4, sp, #0x10
	mov r0, r5
	and r3, ip, #0xff
	str r4, [sp, #0xc]
	bl ov29_022E35E4
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	mov r6, #0
	mov r4, #0x42
	b _022E69D8
_022E69B4:
	mov r0, r5
	bl FUN_022BF904
	cmp r0, #0
	beq _022E69E0
	mov r0, r4
	bl AdvanceFrame
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_022E69D8:
	cmp r6, #0x64
	blt _022E69B4
_022E69E0:
	cmp r5, #0
	blt _022E69F0
	mov r0, r5
	bl FUN_022BDE50
_022E69F0:
	add sp, sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022E69F8: .4byte 0x023511B0
_022E69FC: .4byte 0x0000027A
	arm_func_end ov29_022E6928

	arm_func_start ov29_022E6A00
ov29_022E6A00: @ 0x022E6A00
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x38
	mov r8, r0
	mov r7, r1
	mov r4, r2
	mov r5, #0
	bl GetLeader
	mov r6, r0
	mov r0, #0xcc
	mov r1, #7
	bl FUN_02001170
	ldr r1, _022E6BF8 @ =0x0235354C
	add r2, r7, #1
	str r0, [r1, #4]
	str r8, [r0]
	ldr r0, [r1, #4]
	lsl r2, r2, #2
	str r2, [r0, #8]
	ldr r0, [r1, #4]
	ldr r3, _022E6BFC @ =0x023511A4
	str r4, [r0, #4]
	add r2, sp, #0
	mov r4, r5
	mov r1, #6
_022E6A60:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E6A60
	b _022E6BDC
_022E6A74:
	add r0, sp, #0xc
	bl FUN_022BF274
	ldr r0, _022E6BF8 @ =0x0235354C
	ldr r2, _022E6C00 @ =0x02351464
	ldr r7, [r0, #4]
	mov r0, #0x18
	ldr r3, [r7]
	mov r1, #0
	mla r0, r3, r0, r2
	lsl r2, r5, #3
	ldrsh r0, [r2, r0]
	str r4, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0xc]
	ldr r1, [r6, #0xc]
	mov r0, #2
	asr r1, r1, #8
	strh r1, [sp, #0x18]
	ldr r1, [r6, #0x10]
	asr r1, r1, #8
	strh r1, [sp, #0x1a]
	bl FUN_020022F8
	ldr r3, [r7]
	ldr r2, _022E6C00 @ =0x02351464
	mov r1, #0x18
	mla r1, r3, r1, r2
	add r1, r1, r5, lsl #3
	ldr r2, [r1, #4]
	add r1, r7, r4, lsl #2
	add r2, r0, r2, lsl #1
	mov r0, #0xff
	str r2, [r1, #0x4c]
	bl FUN_020022F8
	ldr r1, _022E6BF8 @ =0x0235354C
	lsl r2, r4, #1
	ldr r1, [r1, #4]
	add r3, r0, #0x9f
	add r1, r1, r4, lsl #2
	add r0, r2, #8
	strh r3, [r1, #0x8c]
	bl FUN_020022F8
	lsr r2, r4, #0x1f
	rsb r1, r2, r4, lsl #30
	add r2, r2, r1, ror #30
	mov r1, #0x28
	mul r7, r2, r1
	rsb r2, r7, #0x18
	ldr r3, _022E6BF8 @ =0x0235354C
	add r2, r2, r0
	ldr r1, [r3, #4]
	mov r7, #4
	add r0, r1, r4, lsl #2
	strh r2, [r0, #0x8e]
	ldr r1, [r3, #4]
	ldr r0, _022E6C04 @ =0x0000FFFF
	add r2, r1, r4, lsl #2
	ldrsh r1, [r2, #0x8c]
	add r3, sp, #0
	strh r1, [sp, #0x1c]
	ldrsh ip, [r2, #0x8e]
	add r2, sp, #0x28
	mov r1, #6
	strh ip, [sp, #0x1e]
	strb r7, [sp, #0x20]
	str r0, [sp, #0x24]
_022E6B78:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E6B78
	add r0, sp, #0xc
	mov r1, #0
	bl FUN_022BF2B4
	ldr r1, _022E6BF8 @ =0x0235354C
	add r5, r5, #1
	ldr r2, [r1, #4]
	cmp r5, #3
	add r2, r2, r4, lsl #2
	str r0, [r2, #0xc]
	bge _022E6BD4
	ldr r0, [r1, #4]
	ldr r1, _022E6C00 @ =0x02351464
	ldr r2, [r0]
	mov r0, #0x18
	mla r0, r2, r0, r1
	lsl r1, r5, #3
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bne _022E6BD8
_022E6BD4:
	mov r5, #0
_022E6BD8:
	add r4, r4, #1
_022E6BDC:
	ldr r0, _022E6BF8 @ =0x0235354C
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	cmp r4, r0
	blt _022E6A74
	add sp, sp, #0x38
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022E6BF8: .4byte 0x0235354C
_022E6BFC: .4byte 0x023511A4
_022E6C00: .4byte 0x02351464
_022E6C04: .4byte 0x0000FFFF
	arm_func_end ov29_022E6A00

	arm_func_start ov29_022E6C08
ov29_022E6C08: @ 0x022E6C08
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	ldr r0, _022E6CDC @ =0x0235354C
	mov sl, #0
	ldr r1, [r0, #4]
	mov sb, #0
	ldr r0, [r1, #4]
	mov r6, #1
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r1, #4]
	movne sb, #1
	mvn r7, #0x9e
	mov r8, #0x9f
	mov r5, sl
	ldr r4, _022E6CDC @ =0x0235354C
	b _022E6CC0
_022E6C4C:
	ldr r0, [r4, #4]
	add r2, r0, sl, lsl #2
	ldrsh r1, [r2, #0x8c]
	ldr r0, [r2, #0x4c]
	sub r0, r1, r0
	strh r0, [r2, #0x8c]
	ldr r2, [r4, #4]
	add r1, r2, sl, lsl #2
	ldrsh r0, [r1, #0x8c]
	cmp r0, r7
	bgt _022E6C8C
	ldr r0, [r2, #4]
	cmp r0, #0
	strhgt r8, [r1, #0x8c]
	strhle r7, [r1, #0x8c]
	b _022E6C90
_022E6C8C:
	mov sb, r6
_022E6C90:
	ldr r2, [r4, #4]
	mov r1, r5
	str r5, [sp]
	add r0, r2, sl, lsl #2
	ldr r0, [r0, #0xc]
	add r2, r2, #0x8c
	lsl r0, r0, #0x10
	mov r3, r5
	asr r0, r0, #0x10
	add r2, r2, sl, lsl #2
	bl FUN_022BF45C
	add sl, sl, #1
_022E6CC0:
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	cmp sl, r0
	blt _022E6C4C
	mov r0, sb
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022E6CDC: .4byte 0x0235354C
	arm_func_end ov29_022E6C08

	arm_func_start ov29_022E6CE0
ov29_022E6CE0: @ 0x022E6CE0
	push {r3, r4, r5, lr}
	ldr r5, _022E6D64 @ =0x0235354C
	ldr r0, [r5, #4]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r4, #0
	b _022E6D34
_022E6CFC:
	add r0, r1, r4, lsl #2
	ldr r0, [r0, #0xc]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_022BF904
	cmp r0, #0
	beq _022E6D30
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xc]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_022BDE50
_022E6D30:
	add r4, r4, #1
_022E6D34:
	ldr r1, [r5, #4]
	ldr r0, [r1, #8]
	cmp r4, r0
	blt _022E6CFC
	bl FUN_022BDC68
	ldr r0, _022E6D64 @ =0x0235354C
	ldr r0, [r0, #4]
	bl FUN_02001188
	ldr r0, _022E6D64 @ =0x0235354C
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E6D64: .4byte 0x0235354C
	arm_func_end ov29_022E6CE0

	arm_func_start ov29_022E6D68
ov29_022E6D68: @ 0x022E6D68
	push {r3, r4, r5, lr}
	ldr r3, _022E6DCC @ =0x02353538
	mov r4, #0
	ldr r3, [r3]
	add r3, r3, #0x218
	add lr, r3, #0x400
	mvn r3, #0
	b _022E6DC0
_022E6D88:
	ldr ip, [lr, r4, lsl #4]
	add r5, lr, r4, lsl #4
	cmp ip, r3
	bne _022E6DBC
	str r0, [r5]
	str r1, [r5, #0xc]
	str r2, [r5, #4]
	ldr r0, [r5]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_022BEFD8
	strb r0, [r5, #8]
	pop {r3, r4, r5, pc}
_022E6DBC:
	add r4, r4, #1
_022E6DC0:
	cmp r4, #3
	blt _022E6D88
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E6DCC: .4byte 0x02353538
	arm_func_end ov29_022E6D68

	arm_func_start ov29_022E6DD0
ov29_022E6DD0: @ 0x022E6DD0
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, #0
	ldr r4, _022E6E3C @ =0x02353538
	mov r7, sb
	mov r8, #1
	mvn r6, #0
	mov r5, sb
_022E6DEC:
	ldr r0, [r4]
	add r0, r0, #0x218
	add r0, r0, #0x400
	ldr r1, [r0, sb, lsl #4]
	add sl, r0, sb, lsl #4
	cmp r1, #0
	movge r0, r8
	movlt r0, r7
	tst r0, #0xff
	beq _022E6E2C
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	bl FUN_022BF904
	cmp r0, #0
	streq r6, [sl]
	streq r5, [sl, #0xc]
_022E6E2C:
	add sb, sb, #1
	cmp sb, #3
	blt _022E6DEC
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022E6E3C: .4byte 0x02353538
	arm_func_end ov29_022E6DD0

	arm_func_start ov29_022E6E40
ov29_022E6E40: @ 0x022E6E40
	mov ip, #0
	ldr r1, _022E6E7C @ =0x02353538
	mvn r3, #0
	mov r2, ip
_022E6E50:
	ldr r0, [r1]
	add r0, r0, #0x218
	add r0, r0, #0x400
	str r3, [r0, ip, lsl #4]
	add r0, r0, ip, lsl #4
	str r2, [r0, #4]
	arm_func_end ov29_022E6E40

	arm_func_start ov29_022E6E68
ov29_022E6E68: @ 0x022E6E68
	add ip, ip, #1
	str r2, [r0, #0xc]
	cmp ip, #3
	blt _022E6E50
	bx lr
	.align 2, 0
_022E6E7C: .4byte 0x02353538
	arm_func_end ov29_022E6E68

	arm_func_start ov29_022E6E80
ov29_022E6E80: @ 0x022E6E80
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldr r2, _022E6F8C @ =0x0235118C
	mov sl, r0
	ldrh r5, [r2, #4]
	ldrh r4, [r2, #6]
	ldrh r3, [r2]
	ldrh r0, [r2, #2]
	strh r5, [sp, #0x10]
	strh r4, [sp, #0x12]
	strh r0, [sp, #0xe]
	strh r3, [sp, #0xc]
	mvn r0, #0
	ldrh r6, [sp, #0x10]
	ldrh r5, [sp, #0x12]
	ldrh r4, [sp, #0xc]
	ldrh fp, [sp, #0xe]
	str r1, [sp, #4]
	mov r7, #0
	str r0, [sp, #8]
_022E6ED0:
	ldr r0, _022E6F90 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x218
	add r0, r0, #0x400
	add r8, r0, r7, lsl #4
	ldr r0, [r0, r7, lsl #4]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	tst r0, #0xff
	beq _022E6F78
	ldr r0, [r8, #0xc]
	cmp r0, sl
	bne _022E6F78
	strh r6, [sp, #0x18]
	strh r5, [sp, #0x1a]
	ldr r0, [sl, #0xc]
	asr r0, r0, #8
	strh r0, [sp, #0x18]
	ldr r0, [sl, #0x10]
	asr r0, r0, #8
	strh r0, [sp, #0x1a]
	strh r4, [sp, #0x14]
	strh fp, [sp, #0x16]
	ldrsb r1, [r8, #8]
	ldr r0, [sp, #8]
	ldr sb, [sl, #0xb4]
	cmp r1, r0
	beq _022E6F54
	and r2, r1, #0xff
	add r0, sp, #0x14
	add r1, sl, #0x2c
	bl FUN_0201CF90
_022E6F54:
	ldrb r0, [sb, #0x4c]
	ldr r3, [sp, #4]
	add r1, sp, #0x18
	str r0, [sp]
	ldr r0, [r8]
	add r2, sp, #0x14
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_022BFB6C
_022E6F78:
	add r7, r7, #1
	cmp r7, #3
	blt _022E6ED0
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E6F8C: .4byte 0x0235118C
_022E6F90: .4byte 0x02353538
	arm_func_end ov29_022E6E80

	arm_func_start ov29_022E6F94
ov29_022E6F94: @ 0x022E6F94
	ldr r1, _022E6FB8 @ =0x02353538
	mov r2, #0xff
	ldr r0, [r1]
	add r0, r0, #0x28000
	strb r2, [r0, #0x6b0]
	ldr r0, [r1]
	add r0, r0, #0x28000
	strb r2, [r0, #0x6b1]
	bx lr
	.align 2, 0
_022E6FB8: .4byte 0x02353538
	arm_func_end ov29_022E6F94

	arm_func_start ov29_022E6FBC
ov29_022E6FBC: @ 0x022E6FBC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	ldr r3, _022E79E4 @ =0x02353538
	ldr r4, _022E79E8 @ =0x02351584
	ldr r6, [r3]
	ldr r7, [r4, #0xc]
	ldr r8, [r4, #8]
	add r3, r6, #0x4a
	str r1, [sp]
	add r4, r6, #0x348
	mov r5, r0
	add r1, r4, #0x400
	add r0, r3, #0x700
	mov r4, r2
	str r8, [sp, #0x48]
	str r7, [sp, #0x4c]
	bl FUN_0204F64C
	ldr r1, _022E79E4 @ =0x02353538
	ldr r3, [r1]
	ldrb r2, [r3, #0x74a]
	add r0, r3, #0x28000
	strb r2, [r0, #0x6b0]
	ldrb r2, [r3, #0x74b]
	strb r2, [r0, #0x6b1]
	ldr r0, [r1]
	ldrb r0, [r0, #0x748]
	bl FUN_0204F5E0
	ldr r1, _022E79E4 @ =0x02353538
	mov r6, #0
	ldr r2, [r1]
	strh r0, [r2, #0x20]
	ldr r0, [r1]
	strh r6, [r0, #0x1e]
	ldr r3, [r1]
	ldrsh r2, [r3, #0x20]
	ldrsh r0, [r3, #0x1e]
	add r0, r2, r0
	strh r0, [r3, #0x22]
	ldr r0, [r1]
	str r6, [sp, #0x28]
	ldr r0, [r0, #0x7cc]
	mov r2, #0xf
	cmp r0, #1
	bne _022E707C
	ldr r1, _022E79EC @ =0x02351594
	add r0, sp, #0x48
	bl FUN_02008C3C
	b _022E709C
_022E707C:
	cmp r0, #2
	add r0, sp, #0x48
	bne _022E7094
	ldr r1, _022E79F0 @ =0x023515B0
	bl FUN_02008C3C
	b _022E709C
_022E7094:
	ldr r1, _022E79F4 @ =0x023515CC
	bl FUN_02008C3C
_022E709C:
	mov r0, #0x65
	bl AdvanceFrame
	ldr r1, [sp, #0x48]
	add r0, sp, #0x28
	bl FUN_0201F4B4
	mov r0, #0x65
	ldr sb, [sp, #0x28]
	bl AdvanceFrame
	ldr r0, _022E79E4 @ =0x02353538
	ldr r6, [sb]
	ldr r7, [r0]
	mov r1, #0x12
	add r0, r7, #0x28000
	ldrb r3, [r0, #0x6b0]
	ldrb r2, [r0, #0x6b1]
	ldrb r0, [r7, #0x748]
	ldr r3, [r6, r3, lsl #2]
	mla r6, r2, r1, r3
	bl FUN_0204F5B4
	ldr r2, _022E79E4 @ =0x02353538
	ldr r1, [r2]
	add r1, r1, #0x2c000
	strb r0, [r1, #0xaf4]
	ldr r0, [r2]
	ldrb r0, [r0, #0x748]
	cmp r0, #0xae
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	beq _022E7138
	bl ov29_0234914C
	cmp r0, #0
	bne _022E7138
	ldr r0, _022E79E4 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x2c000
	ldrb r1, [r0, #0xaf4]
	sub r1, r1, #1
	strb r1, [r0, #0xaf4]
_022E7138:
	ldr r0, _022E79E4 @ =0x02353538
	ldrsh r2, [r6]
	ldr r3, [sb, #4]
	ldr r1, [r0]
	add r7, r3, r2, lsl #5
	ldr r0, _022E79F8 @ =0x000286B2
	mov r2, #0x10
	add r3, r1, r0
_022E7158:
	ldrh r0, [r7], #2
	subs r2, r2, #1
	strh r0, [r3], #2
	bne _022E7158
	ldr r2, _022E79FC @ =0x000286CE
	ldr r3, _022E7A00 @ =0x0002CB08
	ldrsh r7, [r1, r2]
	mov r0, #0
	strh r7, [r1, r3]
	rsb r1, r2, #0x55000
	ldr r2, _022E79E4 @ =0x02353538
_022E7184:
	ldrsh r7, [r6, #4]
	ldr r8, [sb, #0x10]
	ldr r3, [r2]
	ldr r8, [r8, r7, lsl #2]
	lsl r7, r0, #1
	ldrh r7, [r8, r7]
	add r3, r3, r0, lsl #1
	add r0, r0, #1
	strh r7, [r3, r1]
	cmp r0, #0x19
	blt _022E7184
	cmp r4, #0
	beq _022E71C0
	mov r0, r5
	blx r4
_022E71C0:
	cmp r5, #0
	bne _022E7674
	ldr r0, _022E79E8 @ =0x02351584
	mov r4, #0
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	mov r0, r4
	mov r8, r4
	str r4, [sp, #0xc]
	str r4, [sp, #4]
	strh r2, [sp, #0x44]
	strh r1, [sp, #0x46]
	mov fp, #1
	bl DungeonRngSetSecondary
	bl IsDestinationFloorWithMonster
	str r0, [sp, #0x10]
	ldr r3, _022E7A04 @ =0x0000FFFF
	ldr r1, _022E79E4 @ =0x02353538
	ldr r0, _022E7A08 @ =0x0002C9EA
	mov r5, r4
_022E7210:
	ldr r2, [r1]
	add r2, r2, r5, lsl #1
	strh r3, [r2, r0]
	add r5, r5, #1
	cmp r5, #0x10
	blt _022E7210
	bl FUN_0200F050
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #4]
	ldr r0, _022E79E4 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_020514B0
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #4]
	ldr r0, _022E7A0C @ =0x00000906
	mov r1, #0xf
	bl FUN_02001170
	str r0, [sp, #0x18]
	bl FUN_02055274
	mov r0, #0x100
	mov r1, #0xf
	bl FUN_02001170
	mov r7, r0
	ldr r0, _022E7A10 @ =0x00000229
	mov sl, #0
	sub r0, r0, #0xaa
	str r0, [sp, #0x20]
	ldr r0, _022E7A10 @ =0x00000229
	rsb r0, r0, #0x600
	str r0, [sp, #0x24]
_022E7294:
	mov r0, #0
	str r0, [sp, #8]
	ldrsh r0, [r6, #2]
	ldr r1, [sb, #0xc]
	ldr r0, [r1, r0, lsl #2]
	add r0, r0, sl, lsl #3
	bl FUN_02054480
	movs r5, r0
	beq _022E73B0
	ldr r1, _022E7A10 @ =0x00000229
	cmp r5, r1
	strheq sl, [sp, #0x44]
	beq _022E7398
	ldr r1, [sp, #0x20]
	cmp r5, r1
	ldrne r1, [sp, #0x24]
	cmpne r5, r1
	strheq sl, [sp, #0x46]
	beq _022E7398
	bl FUN_0204D360
	cmp r0, #0
	addeq sl, sl, #1
	beq _022E7294
	ldr r0, _022E79E4 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x28000
	ldrb r0, [r0, #0x6c4]
	bl ov29_022E0864
	cmp r0, #0
	bne _022E7398
	mov r0, r5
	bl ov29_022FB5EC
	cmp r0, #0
	beq _022E7398
	mov r0, r5
	bl FUN_02052B60
	cmp r0, #0
	beq _022E7390
	ldr r0, _022E79E4 @ =0x02353538
	mov r1, r5
	ldr r0, [r0]
	add r0, r0, #0x7d0
	bl ov29_0231B3FC
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	ldreq r0, [sp, #0x18]
	lsleq r1, r5, #1
	ldrsheq r0, [r0, r1]
	cmpeq r0, #0
	bne _022E7398
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022E7398
	ldrsh r0, [r6, #2]
	ldr r1, [sb, #0xc]
	mov r8, r5
	ldr r0, [r1, r0, lsl #2]
	add r0, r0, sl, lsl #3
	bl FUN_020544B8
	and r0, r0, #0xff
	str r0, [sp, #0xc]
	b _022E7398
_022E7390:
	mov r0, #1
	str r0, [sp, #8]
_022E7398:
	ldr r0, [sp, #8]
	cmp r0, #0
	strne sl, [r7, r4, lsl #2]
	addne r4, r4, #1
	add sl, sl, #1
	b _022E7294
_022E73B0:
	bl FloorNumberIsEven
	cmp r0, #0
	ldreq r0, _022E79E4 @ =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x700
	strheq r8, [r0, #0xa8]
	beq _022E73E4
	mov r0, r8
	bl FUN_02054BA4
	ldr r1, _022E79E4 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x700
	strh r0, [r1, #0xa8]
_022E73E4:
	ldr r1, _022E79E4 @ =0x02353538
	mov r0, #0x10
	ldr r2, [r1]
	ldr r1, [sp, #0xc]
	strb r1, [r2, #0x7aa]
	bl DungeonRandInt
	add r0, r0, #1
	str r0, [sp, #0x14]
	sub r0, r4, #1
	mov sl, #0
	str r0, [sp, #0x1c]
	b _022E7448
_022E7414:
	mov r5, #0
	b _022E7438
_022E741C:
	mov r0, r4
	bl DungeonRandInt
	ldr r2, [r7, r5, lsl #2]
	ldr r1, [r7, r0, lsl #2]
	str r1, [r7, r5, lsl #2]
	str r2, [r7, r0, lsl #2]
	add r5, r5, #1
_022E7438:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	blt _022E741C
	add sl, sl, #1
_022E7448:
	ldr r0, [sp, #0x14]
	cmp sl, r0
	blt _022E7414
	ldr r0, [sp]
	cmp r0, #0
	movne r4, #0
	bne _022E746C
	cmp r4, #0xe
	movge r4, #0xe
_022E746C:
	ldr r0, _022E7A10 @ =0x00000229
	bl FUN_0205281C
	add r5, r0, #0
	ldr r0, _022E7A14 @ =0x0000017F
	bl FUN_0205281C
	ldr r1, [sp, #0x10]
	add r5, r5, r0
	cmp r1, #0
	beq _022E749C
	bl ov29_02349378
	add r5, r5, r0
	b _022E74B0
_022E749C:
	cmp r8, #0
	beq _022E74B0
	mov r0, r8
	bl FUN_0205281C
	add r5, r5, r0
_022E74B0:
	mov r8, #0
	b _022E7528
_022E74B8:
	ldr r0, _022E79E4 @ =0x02353538
	ldr r2, [r7, r8, lsl #2]
	ldr r0, [r0]
	add r1, r0, r8, lsl #1
	ldr r0, _022E7A08 @ =0x0002C9EA
	strh r2, [r1, r0]
	ldrsh r1, [r6, #2]
	ldr r2, [sb, #0xc]
	ldr r0, [r7, r8, lsl #2]
	ldr r1, [r2, r1, lsl #2]
	add r2, sp, #0x3c
	add r3, r1, r0, lsl #3
	mov r1, #4
_022E74EC:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E74EC
	add r0, sp, #0x3c
	bl FUN_02054480
	mov sl, r0
	add r0, sp, #0x3c
	bl FUN_020544B8
	cmp fp, r0
	movlt fp, r0
	mov r0, sl
	bl ov29_022F7068
	add r5, r5, r0
	add r8, r8, #1
_022E7528:
	cmp r8, r4
	blt _022E74B8
	ldr r0, _022E79E4 @ =0x02353538
	ldr r1, _022E7A18 @ =0x0002C9E6
	ldr r0, [r0]
	cmp r5, #0x58000
	strh fp, [r0, r1]
	bls _022E75C4
	sub sl, r4, #1
	mov r8, #0
	add fp, r1, #4
	b _022E75B8
_022E7558:
	ldrsh r1, [r6, #2]
	ldr r2, [sb, #0xc]
	ldr r0, [r7, sl, lsl #2]
	ldr r1, [r2, r1, lsl #2]
	add r2, sp, #0x34
	add r3, r1, r0, lsl #3
	mov r1, #4
_022E7574:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E7574
	add r0, sp, #0x34
	bl FUN_02054480
	bl ov29_022F7068
	sub r5, r5, r0
	ldr r1, _022E79E4 @ =0x02353538
	ldr r0, _022E7A04 @ =0x0000FFFF
	ldr r1, [r1]
	cmp r5, #0x58000
	add r1, r1, sl, lsl #1
	strh r0, [r1, fp]
	add r8, r8, #1
	blo _022E75C0
	sub sl, sl, #1
_022E75B8:
	cmp sl, #0
	bge _022E7558
_022E75C0:
	sub r4, r4, r8
_022E75C4:
	ldrh r2, [sp, #0x44]
	ldr r0, _022E7A04 @ =0x0000FFFF
	cmp r2, r0
	beq _022E75EC
	ldr r1, _022E79E4 @ =0x02353538
	ldr r0, _022E7A08 @ =0x0002C9EA
	ldr r1, [r1]
	add r1, r1, r4, lsl #1
	strh r2, [r1, r0]
	add r4, r4, #1
_022E75EC:
	ldrh r2, [sp, #0x46]
	ldr r0, _022E7A04 @ =0x0000FFFF
	ldr r3, _022E79E4 @ =0x02353538
	cmp r2, r0
	ldrne r1, _022E79E4 @ =0x02353538
	ldrne r0, _022E7A08 @ =0x0002C9EA
	ldrne r1, [r1]
	addne r1, r1, r4, lsl #1
	strhne r2, [r1, r0]
	ldr r2, _022E7A08 @ =0x0002C9EA
	mov r1, #0
_022E7618:
	mov r0, r1
	b _022E764C
_022E7620:
	ldr r4, [r3]
	add r5, r4, r0, lsl #1
	add r4, r4, r1, lsl #1
	ldrh r8, [r5, r2]
	ldrh r5, [r4, r2]
	cmp r5, r8
	strhhi r8, [r4, r2]
	ldrhi r4, [r3]
	addhi r4, r4, r0, lsl #1
	strhhi r5, [r4, r2]
	add r0, r0, #1
_022E764C:
	cmp r0, #0x10
	blt _022E7620
	add r1, r1, #1
	cmp r1, #0xf
	blt _022E7618
	ldr r0, [sp, #0x18]
	bl FUN_02001188
	mov r0, r7
	bl FUN_02001188
	bl DungeonRngSetPrimary
_022E7674:
	mov r4, #0
	bl FloorNumberIsEven
	cmp r0, #0
	ldr r0, _022E79E4 @ =0x02353538
	mov r5, #0
	ldr r0, [r0]
	movne r4, #1
	ldrb r0, [r0, #0x748]
	mov r8, r5
	cmp r0, #0x3d
	moveq r4, #1
	bl IsDestinationFloorWithFixedRoom
	cmp r0, #0
	beq _022E76D0
	mov r0, #0xb
	bl IsCurrentMissionType
	cmp r0, #0
	bne _022E76CC
	mov r0, #0xa
	bl IsCurrentMissionType
	cmp r0, #0
	beq _022E76D0
_022E76CC:
	mov r5, #1
_022E76D0:
	mov sl, #0
	b _022E77CC
_022E76D8:
	ldr r1, _022E79E4 @ =0x02353538
	ldr r0, _022E7A08 @ =0x0002C9EA
	ldr r2, [r1]
	ldr r1, _022E7A04 @ =0x0000FFFF
	add r2, r2, sl, lsl #1
	ldrh r3, [r2, r0]
	cmp r3, r1
	beq _022E77D4
	ldrsh r0, [r6, #2]
	ldr r1, [sb, #0xc]
	add r2, sp, #0x2c
	ldr r0, [r1, r0, lsl #2]
	mov r1, #4
	add r3, r0, r3, lsl #3
_022E7710:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E7710
	add r0, sp, #0x2c
	bl FUN_02054480
	cmp r5, #0
	ldrne r2, _022E7A10 @ =0x00000229
	cmpne r0, r2
	subne r1, r2, #0xaa
	cmpne r0, r1
	rsbne r1, r2, #0x600
	cmpne r0, r1
	bne _022E77C8
	ldr r1, _022E79E4 @ =0x02353538
	add r7, sp, #0x2c
	ldr r1, [r1]
	mov r2, #4
	add r1, r1, r8, lsl #3
	add r1, r1, #0x164
	add r3, r1, #0x2c800
_022E7764:
	ldrh r1, [r7], #2
	subs r2, r2, #1
	strh r1, [r3], #2
	bne _022E7764
	cmp r4, #0
	ldrne r1, _022E7A10 @ =0x00000229
	cmpne r0, r1
	beq _022E77C4
	cmp r0, #0x258
	bge _022E77C4
	add r7, r0, #0x258
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	bl FUN_02054760
	cmp r0, #2
	bne _022E77C4
	ldr r1, _022E79E4 @ =0x02353538
	lsl r0, r7, #0x10
	ldr r2, [r1]
	asr r1, r0, #0x10
	add r0, r2, #0x164
	add r0, r0, #0x2c800
	add r0, r0, r8, lsl #3
	bl FUN_020544A0
_022E77C4:
	add r8, r8, #1
_022E77C8:
	add sl, sl, #1
_022E77CC:
	cmp sl, #0x10
	blt _022E76D8
_022E77D4:
	bl ov29_023361D4
	cmp r0, #0
	beq _022E782C
	ldr r0, _022E79E4 @ =0x02353538
	ldr r3, _022E7A18 @ =0x0002C9E6
	ldr r4, [r0]
	rsb r1, r8, #0x10
	add r2, r4, #0x4000
	add r0, r4, #0x164
	add r0, r0, #0x2c800
	ldrb r2, [r2, #0xda]
	ldrsh r3, [r4, r3]
	add r0, r0, r8, lsl #3
	bl ov29_02343E20
	ldr r2, _022E79E4 @ =0x02353538
	ldr r1, [r2]
	add r1, r1, #0x12000
	str r0, [r1, #0xb20]
	ldr r0, [r2]
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb20]
	add r8, r8, r0
_022E782C:
	ldr r4, _022E79E4 @ =0x02353538
	ldr r0, _022E7A1C @ =0x0002C9E4
	ldr r1, [r4]
	mov r5, #0
	strh r8, [r1, r0]
	b _022E7860
_022E7844:
	ldr r0, [r4]
	mov r1, r5
	add r0, r0, #0x164
	add r0, r0, #0x2c800
	add r0, r0, r8, lsl #3
	bl FUN_020544A0
	add r8, r8, #1
_022E7860:
	cmp r8, #0x10
	blt _022E7844
	mov r0, #0xb10
	mov r1, #0
	bl FUN_02001170
	ldr r2, _022E79E4 @ =0x02353538
	ldr r1, _022E7A20 @ =0x0002C9E8
	ldr r2, [r2]
	mov r4, #0
	strh r4, [r2, r1]
_022E7888:
	add r1, r6, r4, lsl #1
	ldrsh r2, [r1, #6]
	ldr r5, [sb, #8]
	mov r1, #0
	ldr r2, [r5, r2, lsl #2]
	ldr r5, _022E7A24 @ =0xFFFF8AD0
	mov r3, r1
	mov sl, r1
	rsb r7, r5, #0
	b _022E7908
_022E78B0:
	lsl r8, r1, #1
	ldrh fp, [r2, r8]
	cmp fp, r5, lsr #16
	lsleq r8, r3, #1
	strheq fp, [r0, r8]
	addeq r3, r3, #1
	beq _022E7904
	cmp fp, r7
	blo _022E78F8
	add fp, fp, r5
	b _022E78EC
_022E78DC:
	lsl r8, r3, #1
	strh sl, [r0, r8]
	add r3, r3, #1
	sub fp, fp, #1
_022E78EC:
	cmp fp, #0
	bne _022E78DC
	b _022E7904
_022E78F8:
	lsl r8, r3, #1
	strh fp, [r0, r8]
	add r3, r3, #1
_022E7904:
	add r1, r1, #1
_022E7908:
	cmp r3, #0x17c
	blt _022E78B0
	mov r1, #0xb10
	mul r1, r4, r1
	mov r2, #0
	ldr r7, _022E79E4 @ =0x02353538
	ldr r5, _022E7A28 @ =0x000286D2
	mov r3, r2
_022E7928:
	lsl sl, r2, #1
	ldr r8, [r7]
	ldrh sl, [r0, sl]
	add r8, r1, r8
	add r8, r8, r2, lsl #1
	add r3, r3, #1
	strh sl, [r8, r5]
	cmp r3, #0x10
	add r2, r2, #1
	blt _022E7928
	ldr r7, _022E79E4 @ =0x02353538
	ldr r5, _022E7A2C @ =0x000286F2
	mov r3, #0
_022E795C:
	lsl sl, r2, #1
	ldr r8, [r7]
	ldrh sl, [r0, sl]
	add r8, r1, r8
	add r8, r8, r3, lsl #1
	add r3, r3, #1
	strh sl, [r8, r5]
	cmp r3, #0x16c
	add r2, r2, #1
	blt _022E795C
	add r4, r4, #1
	cmp r4, #6
	blt _022E7888
	mov r8, #0
	ldr r2, _022E7A2C @ =0x000286F2
	ldr r4, _022E79E4 @ =0x02353538
	ldr r1, _022E7A20 @ =0x0002C9E8
	ldr r3, _022E7A04 @ =0x0000FFFF
	mov r6, r8
_022E79A8:
	ldr r5, [r4]
	add r7, r5, r8, lsl #1
	ldrh r5, [r7, r2]
	cmp r5, r3
	strheq r6, [r7, r2]
	ldreq r5, [r4]
	strheq r8, [r5, r1]
	add r8, r8, #1
	cmp r8, #0x16c
	blt _022E79A8
	bl FUN_02001188
	add r0, sp, #0x48
	bl FUN_02008BD4
	add sp, sp, #0x50
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E79E4: .4byte 0x02353538
_022E79E8: .4byte 0x02351584
_022E79EC: .4byte 0x02351594
_022E79F0: .4byte 0x023515B0
_022E79F4: .4byte 0x023515CC
_022E79F8: .4byte 0x000286B2
_022E79FC: .4byte 0x000286CE
_022E7A00: .4byte 0x0002CB08
_022E7A04: .4byte 0x0000FFFF
_022E7A08: .4byte 0x0002C9EA
_022E7A0C: .4byte 0x00000906
_022E7A10: .4byte 0x00000229
_022E7A14: .4byte 0x0000017F
_022E7A18: .4byte 0x0002C9E6
_022E7A1C: .4byte 0x0002C9E4
_022E7A20: .4byte 0x0002C9E8
_022E7A24: .4byte 0xFFFF8AD0
_022E7A28: .4byte 0x000286D2
_022E7A2C: .4byte 0x000286F2
	arm_func_end ov29_022E6FBC

	arm_func_start ov29_022E7A30
ov29_022E7A30: @ 0x022E7A30
	push {r3, lr}
	ldr r0, _022E7A80 @ =0x00002710
	bl DungeonRandInt
	ldr r1, _022E7A84 @ =0x02353538
	mov r3, #0
	ldr ip, [r1]
	ldr r1, _022E7A88 @ =0x0002C932
	b _022E7A70
_022E7A50:
	add r2, ip, r3, lsl #1
	ldrh r2, [r2, r1]
	cmp r2, #0
	beq _022E7A6C
	cmp r2, r0
	andge r0, r3, #0xff
	popge {r3, pc}
_022E7A6C:
	add r3, r3, #1
_022E7A70:
	cmp r3, #0x19
	blt _022E7A50
	mov r0, #0x10
	pop {r3, pc}
	.align 2, 0
_022E7A80: .4byte 0x00002710
_022E7A84: .4byte 0x02353538
_022E7A88: .4byte 0x0002C932
	arm_func_end ov29_022E7A30

	arm_func_start ov29_022E7A8C
ov29_022E7A8C: @ 0x022E7A8C
	push {r4, lr}
	mov r4, #0
	b _022E7AB0
_022E7A98:
	bl ov29_022E7A30
	cmp r0, #0
	cmpne r0, #0x17
	cmpne r0, #0x11
	bne _022E7AB8
	add r4, r4, #1
_022E7AB0:
	cmp r4, #0x1e
	blt _022E7A98
_022E7AB8:
	cmp r4, #0x1e
	moveq r0, #0x10
	pop {r4, pc}
	arm_func_end ov29_022E7A8C

	arm_func_start ov29_022E7AC4
ov29_022E7AC4: @ 0x022E7AC4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	ldr r0, _022E7BA8 @ =0x00002710
	bl DungeonRandInt
	mov r1, #0xb10
	mul r5, r4, r1
	ldr r2, _022E7BAC @ =0x02353538
	mov r4, #0x10
	ldr r1, [r2]
	mov r3, #0
	add r6, r1, r5
	ldr r1, _022E7BB0 @ =0x000286D2
	b _022E7B18
_022E7AF8:
	add r2, r6, r3, lsl #1
	ldrsh r2, [r2, r1]
	cmp r2, #0
	beq _022E7B14
	cmp r2, r0
	andge r4, r3, #0xff
	bge _022E7B20
_022E7B14:
	add r3, r3, #1
_022E7B18:
	cmp r3, #0x10
	blt _022E7AF8
_022E7B20:
	cmp r4, #0x10
	moveq r0, #0xb7
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _022E7BA8 @ =0x00002710
	bl DungeonRandInt
	mov r6, r0
	mov r7, #0
	ldr sb, _022E7BAC @ =0x02353538
	ldr r8, _022E7BB4 @ =0x000286F2
	b _022E7B98
_022E7B48:
	ldr r0, [sb]
	add r0, r5, r0
	add r0, r0, r7, lsl #1
	ldrsh r0, [r0, r8]
	cmp r0, #0
	beq _022E7B94
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	bl FUN_0200CAF0
	cmp r4, r0
	bne _022E7B94
	ldr r0, [sb]
	add r0, r5, r0
	add r0, r0, r7, lsl #1
	ldrsh r0, [r0, r8]
	cmp r0, r6
	lslge r0, r7, #0x10
	asrge r0, r0, #0x10
	popge {r3, r4, r5, r6, r7, r8, sb, pc}
_022E7B94:
	add r7, r7, #1
_022E7B98:
	cmp r7, #0x16c
	blt _022E7B48
	mov r0, #0xb7
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022E7BA8: .4byte 0x00002710
_022E7BAC: .4byte 0x02353538
_022E7BB0: .4byte 0x000286D2
_022E7BB4: .4byte 0x000286F2
	arm_func_end ov29_022E7AC4

	arm_func_start ov29_022E7BB8
ov29_022E7BB8: @ 0x022E7BB8
	push {r3, lr}
	mov r0, #4
	bl ov29_022E7AC4
	cmp r0, #0xb7
	moveq r0, #0x46
	pop {r3, pc}
	arm_func_end ov29_022E7BB8

	arm_func_start ov29_022E7BD0
ov29_022E7BD0: @ 0x022E7BD0
	push {r3, lr}
	mov r0, #5
	bl ov29_022E7AC4
	cmp r0, #0xb7
	moveq r0, #0x46
	pop {r3, pc}
	arm_func_end ov29_022E7BD0

	arm_func_start ov29_022E7BE8
ov29_022E7BE8: @ 0x022E7BE8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	ldr r7, _022E7C5C @ =0x02353538
	b _022E7C4C
_022E7C00:
	ldr r0, [r7]
	add r0, r0, #0x164
	add r0, r0, #0x2c800
	add r0, r0, r4, lsl #3
	bl FUN_02054480
	cmp r0, #0
	beq _022E7C54
	ldr r0, [r7]
	add r2, r6, r5, lsl #3
	add r0, r0, r4, lsl #3
	add r0, r0, #0x164
	add r3, r0, #0x2c800
	mov r1, #4
_022E7C34:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E7C34
	add r5, r5, #1
	add r4, r4, #1
_022E7C4C:
	cmp r4, #0x10
	blt _022E7C00
_022E7C54:
	mov r0, r5
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E7C5C: .4byte 0x02353538
	arm_func_end ov29_022E7BE8

	arm_func_start ov29_022E7C60
ov29_022E7C60: @ 0x022E7C60
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
	b _022E7CE4
_022E7C74:
	ldr r0, _022E7CF4 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x164
	add r0, r0, #0x2c800
	add r0, r0, r4, lsl #3
	bl FUN_02054480
	cmp r0, #0
	beq _022E7CEC
	bl FUN_020527E0
	cmp r0, #6
	bhi _022E7CE0
	ldr r1, _022E7CF4 @ =0x02353538
	ldr r0, _022E7CF8 @ =0x0002C966
	ldr r1, [r1]
	add r1, r1, r4, lsl #3
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _022E7CE0
	add r0, r1, #0x164
	add r3, r0, #0x2c800
	add r2, r6, r5, lsl #3
	mov r1, #4
_022E7CCC:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022E7CCC
	add r5, r5, #1
_022E7CE0:
	add r4, r4, #1
_022E7CE4:
	cmp r4, #0x10
	blt _022E7C74
_022E7CEC:
	mov r0, r5
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E7CF4: .4byte 0x02353538
_022E7CF8: .4byte 0x0002C966
	arm_func_end ov29_022E7C60

	arm_func_start ov29_022E7CFC
ov29_022E7CFC: @ 0x022E7CFC
	push {r3, lr}
	ldr r1, _022E7D48 @ =0x02353538
	ldr r0, [r1]
	add r0, r0, #0x3000
	ldrb r2, [r0, #0xe28]
	cmp r2, #0
	popne {r3, pc}
	mov r2, #1
	strb r2, [r0, #0xe28]
	ldr r0, [r1]
	mov r1, #0
	add r0, r0, #0x174
	add r0, r0, #0x3800
	bl ov29_022E7BE8
	ldr r1, _022E7D48 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x3000
	str r0, [r1, #0xe20]
	pop {r3, pc}
	.align 2, 0
_022E7D48: .4byte 0x02353538
	arm_func_end ov29_022E7CFC

	arm_func_start IsOnMonsterSpawnList
IsOnMonsterSpawnList: @ 0x022E7D4C
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _022E7D9C @ =0x02353538
	b _022E7D8C
_022E7D60:
	ldr r0, [r4]
	add r0, r0, #0x164
	add r0, r0, #0x2c800
	add r0, r0, r5, lsl #3
	bl FUN_02054480
	cmp r0, #0
	beq _022E7D94
	cmp r0, r6
	moveq r0, #1
	popeq {r4, r5, r6, pc}
	add r5, r5, #1
_022E7D8C:
	cmp r5, #0x10
	blt _022E7D60
_022E7D94:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E7D9C: .4byte 0x02353538
	arm_func_end IsOnMonsterSpawnList

	arm_func_start GetMonsterIdToSpawn
GetMonsterIdToSpawn: @ 0x022E7DA0
	push {r4, lr}
	mov r4, r0
	ldr r0, _022E7E50 @ =0x00002710
	bl DungeonRandInt
	ldr r1, _022E7E54 @ =0x02353538
	mov ip, #0
	ldr r1, [r1]
	add r2, r1, #0x3000
	ldr lr, [r2, #0xe20]
	add r3, r1, r4, lsl #1
	b _022E7E00
_022E7DCC:
	add r2, r3, ip, lsl #3
	add r2, r2, #0x3900
	ldrsh r2, [r2, #0x76]
	cmp r2, #0
	beq _022E7DFC
	cmp r2, r0
	blt _022E7DFC
	add r0, r1, #0x174
	add r0, r0, #0x3800
	add r0, r0, ip, lsl #3
	bl FUN_02054480
	pop {r4, pc}
_022E7DFC:
	add ip, ip, #1
_022E7E00:
	cmp ip, lr
	blt _022E7DCC
	mov r3, #0
	add r2, r1, r4, lsl #1
	b _022E7E40
_022E7E14:
	add r0, r2, r3, lsl #3
	add r0, r0, #0x3900
	ldrsh r0, [r0, #0x76]
	cmp r0, #0
	beq _022E7E3C
	add r0, r1, #0x174
	add r0, r0, #0x3800
	add r0, r0, r3, lsl #3
	bl FUN_02054480
	pop {r4, pc}
_022E7E3C:
	add r3, r3, #1
_022E7E40:
	cmp r3, lr
	blt _022E7E14
	bl GetKecleonIdToSpawnByFloor
	pop {r4, pc}
	.align 2, 0
_022E7E50: .4byte 0x00002710
_022E7E54: .4byte 0x02353538
	arm_func_end GetMonsterIdToSpawn

	arm_func_start GetMonsterLevelToSpawn
GetMonsterLevelToSpawn: @ 0x022E7E58
	push {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	ldr r6, _022E7EC0 @ =0x02353538
	b _022E7EA4
_022E7E6C:
	add r0, r1, #0x174
	add r0, r0, #0x3800
	add r0, r0, r4, lsl #3
	bl FUN_02054480
	cmp r5, r0
	bne _022E7EA0
	ldr r0, _022E7EC0 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x174
	add r0, r0, #0x3800
	add r0, r0, r4, lsl #3
	bl FUN_020544B8
	pop {r4, r5, r6, pc}
_022E7EA0:
	add r4, r4, #1
_022E7EA4:
	ldr r1, [r6]
	add r0, r1, #0x3000
	ldr r0, [r0, #0xe20]
	cmp r4, r0
	blt _022E7E6C
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E7EC0: .4byte 0x02353538
	arm_func_end GetMonsterLevelToSpawn

	arm_func_start ov29_022E7EC4
ov29_022E7EC4: @ 0x022E7EC4
	push {r3, lr}
	mov r0, #0x230
	mov r1, #0
	bl FUN_02001170
	ldr r2, _022E7F40 @ =0x02353554
	mov r1, #0x230
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _022E7F40 @ =0x02353554
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1]
	ldr r1, [r0]
	strb r2, [r1, #0x29]
	ldr r1, [r0]
	strb r2, [r1, #0x2c]
	ldr r1, [r0]
	strb r2, [r1, #0x2b]
	ldr r1, [r0]
	str r2, [r1, #4]
	ldr r0, [r0]
	strb r2, [r0, #0x228]
	bl ov29_022E8708
	ldr r0, _022E7F40 @ =0x02353554
	mov r3, #2
	ldr r2, [r0]
	mov r1, #0
	str r3, [r2, #4]
	ldr r0, [r0]
	strb r1, [r0, #0x229]
	pop {r3, pc}
	.align 2, 0
_022E7F40: .4byte 0x02353554
	arm_func_end ov29_022E7EC4

	arm_func_start ov29_022E7F44
ov29_022E7F44: @ 0x022E7F44
	push {r3, lr}
	ldr r0, _022E7F78 @ =0x02353554
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	bl ov29_022E8C4C
	ldr r0, _022E7F78 @ =0x02353554
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _022E7F78 @ =0x02353554
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022E7F78: .4byte 0x02353554
	arm_func_end ov29_022E7F44

	arm_func_start ov29_022E7F7C
ov29_022E7F7C: @ 0x022E7F7C
	ldr r0, _022E7F90 @ =0x02353554
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0]
	bx lr
	.align 2, 0
_022E7F90: .4byte 0x02353554
	arm_func_end ov29_022E7F7C

	arm_func_start ov29_022E7F94
ov29_022E7F94: @ 0x022E7F94
	push {r3, lr}
	ldr r0, _022E8014 @ =0x02353554
	mov r3, #0
	ldr r2, [r0]
	mov r1, #1
	strb r3, [r2, #0x228]
	ldr r0, [r0]
	strb r1, [r0]
	bl ov29_02339138
	mov r0, #1
	mov r1, r0
	bl ov29_02339D7C
	bl ov29_02339CE8
	mov r0, #0
	bl SetMinimapDataE447
	ldr r1, _022E8014 @ =0x02353554
	mov r0, #1
	ldr r1, [r1]
	strb r0, [r1]
	bl SetMinimapDataE448
	bl ov29_022E8104
	bl ov29_022F42D8
	cmp r0, #2
	ldr r0, _022E8014 @ =0x02353554
	moveq r1, #1
	ldr r0, [r0]
	movne r1, #0
	and r1, r1, #0xff
	add r0, r0, #0xb8
	bl ov29_022DC738
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E8014: .4byte 0x02353554
	arm_func_end ov29_022E7F94

	arm_func_start ov29_022E8018
ov29_022E8018: @ 0x022E8018
	push {r3, lr}
	ldr r0, _022E8050 @ =0x02353554
	ldr r0, [r0]
	ldrb r0, [r0, #0x228]
	cmp r0, #0
	beq _022E8048
	bl ov29_022C159C
	bl ov29_022DC778
	ldr r0, _022E8050 @ =0x02353554
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x228]
_022E8048:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E8050: .4byte 0x02353554
	arm_func_end ov29_022E8018

	arm_func_start ov29_022E8054
ov29_022E8054: @ 0x022E8054
	push {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	popeq {r3, pc}
	mov r1, #0
	strb r1, [r0, #0x10]
	bl FUN_0204AEA0
	cmp r0, #3
	ldrne r0, _022E80CC @ =0x02353554
	movne r1, #0
	ldrne r0, [r0]
	strbne r1, [r0]
	popne {r3, pc}
	ldr r0, _022E80CC @ =0x02353554
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	popne {r3, pc}
	bl ov29_02339138
	mov r0, #0
	mov r1, #1
	bl ov29_0233A0E8
	mov r0, #1
	mov r1, #0
	bl ov29_02339D7C
	ldr r0, _022E80CC @ =0x02353554
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022E80CC: .4byte 0x02353554
	arm_func_end ov29_022E8054

	arm_func_start ov29_022E80D0
ov29_022E80D0: @ 0x022E80D0
	push {r3, lr}
	bl ov29_022DC77C
	ldr r1, _022E8100 @ =0x02353554
	mov r0, #0
	ldr r1, [r1]
	strb r0, [r1]
	bl SetMinimapDataE448
	mov r0, #1
	bl ov29_0233A1BC
	bl ov29_02339138
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E8100: .4byte 0x02353554
	arm_func_end ov29_022E80D0

	arm_func_start ov29_022E8104
ov29_022E8104: @ 0x022E8104
	push {r3, lr}
	ldr r0, _022E812C @ =0x02353554
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x228]
	ldr r0, [r0]
	add r0, r0, #0xb8
	bl FUN_022C1E50
	bl ov29_022E8CE8
	pop {r3, pc}
	.align 2, 0
_022E812C: .4byte 0x02353554
	arm_func_end ov29_022E8104

	arm_func_start ov29_022E8130
ov29_022E8130: @ 0x022E8130
	push {r3, lr}
	ldr r0, _022E818C @ =0x02353554
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x228]
	ldr r0, [r0]
	strb r2, [r0, #0x229]
	bl ov29_022E8104
	ldr r0, _022E818C @ =0x02353554
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x24]
	bl ov29_022F42D8
	cmp r0, #2
	ldr r0, _022E818C @ =0x02353554
	moveq r1, #1
	ldr r0, [r0]
	movne r1, #0
	and r1, r1, #0xff
	add r0, r0, #0xb8
	bl ov29_022DC694
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E818C: .4byte 0x02353554
	arm_func_end ov29_022E8130

	arm_func_start ov29_022E8190
ov29_022E8190: @ 0x022E8190
	push {r3, lr}
	ldr r0, _022E81C4 @ =0x02353554
	ldr r0, [r0]
	ldrb r0, [r0, #0x228]
	cmp r0, #0
	beq _022E81BC
	bl ov29_022C0CE0
	ldr r0, _022E81C4 @ =0x02353554
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x228]
_022E81BC:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E81C4: .4byte 0x02353554
	arm_func_end ov29_022E8190

	arm_func_start ov29_022E81C8
ov29_022E81C8: @ 0x022E81C8
	push {r4, lr}
	mov r4, r0
	bl ov29_022C11D8
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0
	strbne r0, [r4, #0x10]
	pop {r4, pc}
	arm_func_end ov29_022E81C8

	arm_func_start ov29_022E81E8
ov29_022E81E8: @ 0x022E81E8
	push {r3, lr}
	bl ov29_022DC728
	mov r0, #1
	pop {r3, pc}
	arm_func_end ov29_022E81E8

	arm_func_start ov29_022E81F8
ov29_022E81F8: @ 0x022E81F8
	push {r3, lr}
	bl FUN_0204AF58
	cmp r0, #0
	bne _022E8210
	bl ov29_022E8104
	pop {r3, pc}
_022E8210:
	bl FUN_0204AEA0
	cmp r0, #1
	bne _022E8238
	ldr r0, _022E8240 @ =0x02353554
	ldr r0, [r0]
	ldrsh r0, [r0, #8]
	cmp r0, #1
	beq _022E8238
	mov r0, #1
	bl ov29_022E8CA8
_022E8238:
	bl ov29_022E8CE8
	pop {r3, pc}
	.align 2, 0
_022E8240: .4byte 0x02353554
	arm_func_end ov29_022E81F8

	arm_func_start ov29_022E8244
ov29_022E8244: @ 0x022E8244
	push {r3, lr}
	bl FUN_0204AEA0
	cmp r0, #4
	ldreq r0, _022E826C @ =0x02353554
	ldreq r0, [r0]
	ldrsheq r0, [r0, #8]
	cmpeq r0, #4
	popne {r3, pc}
	bl ov29_0234F290
	pop {r3, pc}
	.align 2, 0
_022E826C: .4byte 0x02353554
	arm_func_end ov29_022E8244

	arm_func_start ov29_022E8270
ov29_022E8270: @ 0x022E8270
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	ldr r3, _022E83FC @ =0x02353554
	mov sl, r0
	ldr r3, [r3]
	mov sb, r1
	mov fp, r2
	cmp r3, #0
	beq _022E83F4
	ldr r8, [sl, #0xb4]
	bl GetSleepAnimationId
	ldr r1, _022E8400 @ =0x02353538
	mov r4, r0
	ldr r1, [r1]
	mov r5, #0
	add r1, r1, #0x1a000
	ldr r0, [r1, #0x22c]
	mov r6, r5
	cmp r0, sl
	ldrsh r0, [sl, #0xa8]
	mov r7, r5
	str r0, [sp, #0x18]
	moveq r0, r5
	arm_func_end ov29_022E8270

	arm_func_start ov29_022E82CC
ov29_022E82CC: @ 0x022E82CC
	ldrbne r0, [r1, #0x245]
	cmp r0, #0
	bne _022E82E4
	ldrb r0, [r8, #0xd8]
	cmp r0, #2
	bne _022E82F0
_022E82E4:
	ldr r0, _022E8404 @ =0x00000229
	bl GetSpriteIndex
	str r0, [sp, #0x18]
_022E82F0:
	ldrb r0, [r8, #0xc4]
	cmp r0, #1
	cmpne r0, #6
	beq _022E8364
	ldr r0, _022E8400 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x78b]
	cmp r0, #0
	beq _022E832C
	bl ov29_0234B4E0
	cmp r0, #0
	addeq r0, r5, #2
	lsleq r0, r0, #0x10
	asreq r5, r0, #0x10
	beq _022E8354
_022E832C:
	ldrb r0, [sl, #0xaf]
	cmp r0, #0
	cmpne r0, #7
	bne _022E8354
	ldr r0, [sl, #0xb4]
	ldr r0, [r0, #0x110]
	cmp r0, #1
	addgt r0, r5, #1
	lslgt r0, r0, #0x10
	asrgt r5, r0, #0x10
_022E8354:
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	b _022E8368
_022E8364:
	mov r5, #0
_022E8368:
	ldrb r0, [r8, #0x10b]
	cmp r0, #2
	beq _022E83A4
	ldrb r1, [r8, #0xc4]
	cmp r1, #6
	ldrbne r0, [r8, #0xbf]
	cmpne r0, #4
	cmpne r1, #2
	bne _022E83A4
	ldr r0, _022E8408 @ =0x0237C850
	ldr r0, [r0]
	and r0, r0, #2
	add r0, r6, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_022E83A4:
	ldrb r0, [r8, #0xef]
	cmp r0, #1
	ldreq r0, _022E8400 @ =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x1a000
	ldrbeq r0, [r0, #0x244]
	cmpeq r0, #0
	moveq r7, #1
	cmp r4, #0xff
	beq _022E83F4
	mov r0, #1
	stm sp, {r0, sb, fp}
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	ldrsh r1, [r8, #4]
	ldr r3, [r8, #0xb0]
	ldr r0, [sp, #0x18]
	mov r2, r4
	bl ov29_022DC6E8
_022E83F4:
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E83FC: .4byte 0x02353554
_022E8400: .4byte 0x02353538
_022E8404: .4byte 0x00000229
_022E8408: .4byte 0x0237C850
	arm_func_end ov29_022E82CC

	arm_func_start ov29_022E840C
ov29_022E840C: @ 0x022E840C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r0, _022E8478 @ =0x02353554
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	movne r0, #0
	bne _022E8470
	add r0, sp, #0
	bl FUN_022C22A0
	ldr r0, _022E8478 @ =0x02353554
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x80
	mov r3, #1
	bl FUN_022C1E80
	bl FUN_02048400
	cmp r0, #0
	beq _022E8460
	bl FUN_02048384
_022E8460:
	ldr r1, _022E8478 @ =0x02353554
	mov r0, #1
	ldr r1, [r1]
	strb r0, [r1, #0x29]
_022E8470:
	add sp, sp, #0x14
	ldm sp!, {pc}
	.align 2, 0
_022E8478: .4byte 0x02353554
	arm_func_end ov29_022E840C

	arm_func_start ov29_022E847C
ov29_022E847C: @ 0x022E847C
	push {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	popeq {r3, pc}
	mov r1, #0
	strb r1, [r0, #0x10]
	bl FUN_020483B8
	ldr r0, _022E84AC @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C21D8
	pop {r3, pc}
	.align 2, 0
_022E84AC: .4byte 0x02353554
	arm_func_end ov29_022E847C

	arm_func_start ov29_022E84B0
ov29_022E84B0: @ 0x022E84B0
	push {r3, lr}
	ldr r0, _022E84FC @ =0x02353554
	ldr r1, [r0]
	ldrb r0, [r1, #0x29]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, pc}
	add r0, r1, #0x80
	bl FUN_022C2278
	bl FUN_02048400
	cmp r0, #0
	beq _022E84E4
	bl FUN_020483D8
_022E84E4:
	ldr r0, _022E84FC @ =0x02353554
	mov r2, #0
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0x29]
	pop {r3, pc}
	.align 2, 0
_022E84FC: .4byte 0x02353554
	arm_func_end ov29_022E84B0

	arm_func_start ov29_022E8500
ov29_022E8500: @ 0x022E8500
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl FUN_022C22A0
	ldr r0, _022E8548 @ =0x02353554
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x80
	mov r3, #1
	bl FUN_022C1E80
	ldr r0, _022E8548 @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C21D8
	bl ov29_022E8E94
	add sp, sp, #0x14
	ldm sp!, {pc}
	.align 2, 0
_022E8548: .4byte 0x02353554
	arm_func_end ov29_022E8500

	arm_func_start ov29_022E854C
ov29_022E854C: @ 0x022E854C
	push {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	popeq {r4, pc}
	add r0, r4, #0x10
	bl ov29_022E8F78
	ldr r0, _022E8584 @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C21D8
	mov r0, #0
	strb r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
_022E8584: .4byte 0x02353554
	arm_func_end ov29_022E854C

	arm_func_start ov29_022E8588
ov29_022E8588: @ 0x022E8588
	push {r3, lr}
	ldr r0, _022E85A4 @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C2278
	bl ov29_022E8F28
	pop {r3, pc}
	.align 2, 0
_022E85A4: .4byte 0x02353554
	arm_func_end ov29_022E8588

	arm_func_start ov29_022E85A8
ov29_022E85A8: @ 0x022E85A8
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl FUN_022C22A0
	ldr r0, _022E85F0 @ =0x02353554
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x80
	mov r3, #1
	bl FUN_022C1E80
	ldr r0, _022E85F0 @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C21D8
	bl ov29_022E8FCC
	add sp, sp, #0x14
	ldm sp!, {pc}
	.align 2, 0
_022E85F0: .4byte 0x02353554
	arm_func_end ov29_022E85A8

	arm_func_start ov29_022E85F4
ov29_022E85F4: @ 0x022E85F4
	push {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	popeq {r4, pc}
	add r0, r4, #0x10
	bl ov29_022E9014
	ldr r0, _022E862C @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C21D8
	mov r0, #0
	strb r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
_022E862C: .4byte 0x02353554
	arm_func_end ov29_022E85F4

	arm_func_start ov29_022E8630
ov29_022E8630: @ 0x022E8630
	push {r3, lr}
	ldr r0, _022E864C @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C2278
	bl ov29_022E8FF8
	pop {r3, pc}
	.align 2, 0
_022E864C: .4byte 0x02353554
	arm_func_end ov29_022E8630

	arm_func_start ov29_022E8650
ov29_022E8650: @ 0x022E8650
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl FUN_022C22A0
	ldr r0, _022E8698 @ =0x02353554
	add r1, sp, #0
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x80
	mov r3, #1
	bl FUN_022C1E80
	ldr r0, _022E8698 @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C21D8
	mov r0, #1
	add sp, sp, #0x14
	ldm sp!, {pc}
	.align 2, 0
_022E8698: .4byte 0x02353554
	arm_func_end ov29_022E8650
_022E869C:
	.byte 0x01, 0x00, 0xA0, 0xE3
	.byte 0x1E, 0xFF, 0x2F, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1

	arm_func_start ov29_022E86A8
ov29_022E86A8: @ 0x022E86A8
	push {r3, lr}
	ldr r0, _022E86C4 @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0x80
	bl FUN_022C2278
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E86C4: .4byte 0x02353554
	arm_func_end ov29_022E86A8

	arm_func_start ov29_022E86C8
ov29_022E86C8: @ 0x022E86C8
	str r1, [r0]
	ldr r1, [sp]
	stmib r0, {r2, r3}
	str r1, [r0, #0xc]
	mov r1, #1
	strb r1, [r0, #0x10]
	bx lr
	arm_func_end ov29_022E86C8

	arm_func_start ov29_022E86E4
ov29_022E86E4: @ 0x022E86E4
	push {r3, lr}
	ldr r0, _022E8704 @ =0x02353554
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	popeq {r3, pc}
	blx r0
	pop {r3, pc}
	.align 2, 0
_022E8704: .4byte 0x02353554
	arm_func_end ov29_022E86E4

	arm_func_start ov29_022E8708
ov29_022E8708: @ 0x022E8708
	push {r3, lr}
	bl FUN_0204AEA0
	cmp r0, #3
	bne _022E8724
	mov r0, #3
	bl ov29_022E8CA8
	pop {r3, pc}
_022E8724:
	cmp r0, #2
	bne _022E8738
	mov r0, #0
	bl ov29_022E8CA8
	pop {r3, pc}
_022E8738:
	cmp r0, #0
	bne _022E874C
	mov r0, #2
	bl ov29_022E8CA8
	pop {r3, pc}
_022E874C:
	cmp r0, #4
	bne _022E8760
	mov r0, #4
	bl ov29_022E8CA8
	pop {r3, pc}
_022E8760:
	bl ov29_022E81F8
	pop {r3, pc}
	arm_func_end ov29_022E8708

	arm_func_start ov29_022E8768
ov29_022E8768: @ 0x022E8768
	ldr ip, _022E8774 @ =ov29_022E8CA8
	mov r0, #5
	bx ip
	.align 2, 0
_022E8774: .4byte ov29_022E8CA8
	arm_func_end ov29_022E8768

	arm_func_start ov29_022E8778
ov29_022E8778: @ 0x022E8778
	push {r3, lr}
	ldr r0, _022E87B0 @ =0x02353554
	mov r3, #3
	ldr r2, [r0]
	sub r1, r3, #4
	str r3, [r2, #0xc]
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	bl ov29_022E8104
	ldr r0, _022E87B0 @ =0x02353554
	ldr r1, [r0]
	ldrsh r0, [r1, #0x10]
	strh r0, [r1, #8]
	pop {r3, pc}
	.align 2, 0
_022E87B0: .4byte 0x02353554
	arm_func_end ov29_022E8778

	arm_func_start ov29_022E87B4
ov29_022E87B4: @ 0x022E87B4
	ldr r1, _022E87D8 @ =0x02353554
	ldr r2, [r1]
	ldrsh r1, [r2, #8]
	cmp r1, r0
	ldreq r0, [r2, #4]
	cmpeq r0, #5
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022E87D8: .4byte 0x02353554
	arm_func_end ov29_022E87B4

	arm_func_start ov29_022E87DC
ov29_022E87DC: @ 0x022E87DC
	push {r3, lr}
	bl FUN_0204AEA0
	ldr r1, _022E87F8 @ =0x023515E8
	lsl r0, r0, #1
	ldrsh r0, [r1, r0]
	bl ov29_022E87B4
	pop {r3, pc}
	.align 2, 0
_022E87F8: .4byte 0x023515E8
	arm_func_end ov29_022E87DC

	arm_func_start ov29_022E87FC
ov29_022E87FC: @ 0x022E87FC
	ldr r1, _022E880C @ =0x02353554
	ldr r1, [r1]
	strb r0, [r1, #0x2b]
	bx lr
	.align 2, 0
_022E880C: .4byte 0x02353554
	arm_func_end ov29_022E87FC

	arm_func_start ov29_022E8810
ov29_022E8810: @ 0x022E8810
	ldr r0, _022E8830 @ =0x02353554
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022E8830: .4byte 0x02353554
	arm_func_end ov29_022E8810

	arm_func_start ov29_022E8834
ov29_022E8834: @ 0x022E8834
	ldr r1, _022E8844 @ =0x02353554
	ldr r1, [r1]
	strb r0, [r1, #0x2c]
	bx lr
	.align 2, 0
_022E8844: .4byte 0x02353554
	arm_func_end ov29_022E8834

	arm_func_start ov29_022E8848
ov29_022E8848: @ 0x022E8848
	ldr r0, _022E8868 @ =0x02353554
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022E8868: .4byte 0x02353554
	arm_func_end ov29_022E8848

	arm_func_start ov29_022E886C
ov29_022E886C: @ 0x022E886C
	push {r3, r4, r5, lr}
	ldr r0, _022E8BA0 @ =0x02353554
	ldr r5, [r0]
	cmp r5, #0
	popeq {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	pop {r3, r4, r5, pc}
_022E8890: @ jump table
	pop {r3, r4, r5, pc} @ case 0
	b _022E88AC @ case 1
	b _022E88C0 @ case 2
	b _022E8A80 @ case 3
	b _022E8AC8 @ case 4
	b _022E8B00 @ case 5
	b _022E8B5C @ case 6
_022E88AC:
	ldrb r0, [r5, #0x2b]
	cmp r0, #0
	moveq r0, #2
	streq r0, [r5, #4]
	pop {r3, r4, r5, pc}
_022E88C0:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _022E88EC
	mov r0, #1
	bl ov29_0234C70C
	cmp r0, #0
	popne {r3, r4, r5, pc}
	ldr r0, _022E8BA0 @ =0x02353554
	mov r1, #5
	ldr r0, [r0]
	str r1, [r0, #4]
_022E88EC:
	bl ov29_022E8C4C
	ldr r0, _022E8BA0 @ =0x02353554
	ldr r4, [r0]
	ldrsh r0, [r4, #0x10]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _022E89DC
_022E8908: @ jump table
	b _022E8920 @ case 0
	b _022E8940 @ case 1
	b _022E8960 @ case 2
	b _022E8980 @ case 3
	b _022E89A0 @ case 4
	b _022E89C0 @ case 5
_022E8920:
	ldr ip, _022E8BA4 @ =ov29_022E84B0
	ldr r1, _022E8BA8 @ =ov29_022E840C
	ldr r3, _022E8BAC @ =ov29_022E847C
	add r0, r4, #0x14
	mov r2, #0
	str ip, [sp]
	bl ov29_022E86C8
	b _022E89DC
_022E8940:
	ldr ip, _022E8BB0 @ =ov29_022E81E8
	ldr r1, _022E8BB4 @ =ov29_022E8130
	ldr r2, _022E8BB8 @ =ov29_022E8190
	ldr r3, _022E8BBC @ =ov29_022E81C8
	add r0, r4, #0x14
	str ip, [sp]
	bl ov29_022E86C8
	b _022E89DC
_022E8960:
	ldr ip, _022E8BC0 @ =ov29_022E8588
	ldr r1, _022E8BC4 @ =ov29_022E8500
	ldr r3, _022E8BC8 @ =ov29_022E854C
	add r0, r4, #0x14
	mov r2, #0
	str ip, [sp]
	bl ov29_022E86C8
	b _022E89DC
_022E8980:
	ldr ip, _022E8BCC @ =ov29_022E80D0
	ldr r1, _022E8BD0 @ =ov29_022E7F94
	ldr r2, _022E8BD4 @ =ov29_022E8018
	ldr r3, _022E8BD8 @ =ov29_022E8054
	add r0, r4, #0x14
	str ip, [sp]
	bl ov29_022E86C8
	b _022E89DC
_022E89A0:
	ldr ip, _022E8BDC @ =ov29_022E8630
	ldr r1, _022E8BE0 @ =ov29_022E85A8
	ldr r3, _022E8BE4 @ =ov29_022E85F4
	add r0, r4, #0x14
	mov r2, #0
	str ip, [sp]
	bl ov29_022E86C8
	b _022E89DC
_022E89C0:
	ldr ip, _022E8BE8 @ =ov29_022E86A8
	ldr r1, _022E8BEC @ =ov29_022E8650
	ldr r2, _022E8BF0 @ =0x022E869C
	ldr r3, _022E8BF4 @ =0x022E86A4
	add r0, r4, #0x14
	str ip, [sp]
	bl ov29_022E86C8
_022E89DC:
	ldr r0, _022E8BA0 @ =0x02353554
	ldrsh r1, [r4, #0x10]
	ldr r0, [r0]
	strh r1, [r0, #8]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _022E8A20
	ldr r0, _022E8BF8 @ =0x0235352C
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_0200B3D4
	ldr r0, _022E8BF8 @ =0x0235352C
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bl FUN_0200B330
	ldr r0, [r4, #0x14]
	blx r0
_022E8A20:
	mov r1, #0
	ldr r0, _022E8BA0 @ =0x02353554
	str r1, [r5, #0xc]
	ldr r2, [r0]
	ldrb r1, [r2, #0x2c]
	cmp r1, #0
	movne r0, #3
	strne r0, [r2, #4]
	popne {r3, r4, r5, pc}
	mov r1, #5
	str r1, [r2, #4]
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #1
	mov r2, r0
	mov r1, #0x4000
	bl ov29_0234C668
	ldr r0, _022E8BA0 @ =0x02353554
	mov r1, #4
	ldr r0, [r0]
	str r1, [r0, #4]
	pop {r3, r4, r5, pc}
_022E8A80:
	ldrb r1, [r5, #0x2c]
	cmp r1, #0
	popne {r3, r4, r5, pc}
	mov r1, #5
	str r1, [r5, #4]
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #1
	mov r2, r0
	mov r1, #0x4000
	bl ov29_0234C668
	ldr r0, _022E8BA0 @ =0x02353554
	mov r1, #4
	ldr r0, [r0]
	str r1, [r0, #4]
	pop {r3, r4, r5, pc}
_022E8AC8:
	bl ov29_022E86E4
	ldr r0, _022E8BA0 @ =0x02353554
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #1
	bl ov29_0234C70C
	cmp r0, #0
	ldreq r0, _022E8BA0 @ =0x02353554
	moveq r1, #5
	ldreq r0, [r0]
	streq r1, [r0, #4]
	pop {r3, r4, r5, pc}
_022E8B00:
	bl ov29_022E86E4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _022E8BA0 @ =0x02353554
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	strb r1, [r2, #2]
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [r1, #4]
	popeq {r3, r4, r5, pc}
	mov r0, #2
	mov r1, #0x4000
	mov r2, #1
	bl ov29_0234C668
	ldr r0, _022E8BA0 @ =0x02353554
	mov r1, #6
	ldr r0, [r0]
	str r1, [r0, #4]
	pop {r3, r4, r5, pc}
_022E8B5C:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _022E8B78
	mov r0, #1
	bl ov29_0234C70C
	cmp r0, #0
	popne {r3, r4, r5, pc}
_022E8B78:
	bl ov29_022E8C4C
	ldr r0, _022E8BA0 @ =0x02353554
	ldr r1, [r0]
	ldrb r0, [r1, #0x2b]
	cmp r0, #0
	movne r0, #1
	strne r0, [r1, #4]
	moveq r0, #2
	streq r0, [r1, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E8BA0: .4byte 0x02353554
_022E8BA4: .4byte ov29_022E84B0
_022E8BA8: .4byte ov29_022E840C
_022E8BAC: .4byte ov29_022E847C
_022E8BB0: .4byte ov29_022E81E8
_022E8BB4: .4byte ov29_022E8130
_022E8BB8: .4byte ov29_022E8190
_022E8BBC: .4byte ov29_022E81C8
_022E8BC0: .4byte ov29_022E8588
_022E8BC4: .4byte ov29_022E8500
_022E8BC8: .4byte ov29_022E854C
_022E8BCC: .4byte ov29_022E80D0
_022E8BD0: .4byte ov29_022E7F94
_022E8BD4: .4byte ov29_022E8018
_022E8BD8: .4byte ov29_022E8054
_022E8BDC: .4byte ov29_022E8630
_022E8BE0: .4byte ov29_022E85A8
_022E8BE4: .4byte ov29_022E85F4
_022E8BE8: .4byte ov29_022E86A8
_022E8BEC: .4byte ov29_022E8650
_022E8BF0: .4byte 0x022E869C
_022E8BF4: .4byte 0x022E86A4
_022E8BF8: .4byte 0x0235352C
	arm_func_end ov29_022E886C

	arm_func_start ov29_022E8BFC
ov29_022E8BFC: @ 0x022E8BFC
	ldr r1, _022E8C0C @ =0x02353554
	ldr r1, [r1]
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_022E8C0C: .4byte 0x02353554
	arm_func_end ov29_022E8BFC

	arm_func_start ov29_022E8C10
ov29_022E8C10: @ 0x022E8C10
	push {r3, lr}
	ldr r0, _022E8C48 @ =0x02353554
	ldr r2, [r0]
	cmp r2, #0
	popeq {r3, pc}
	ldrb r0, [r2, #0x2a]
	cmp r0, #0
	popne {r3, pc}
	ldr r1, [r2, #0x1c]
	cmp r1, #0
	popeq {r3, pc}
	add r0, r2, #0x14
	blx r1
	pop {r3, pc}
	.align 2, 0
_022E8C48: .4byte 0x02353554
	arm_func_end ov29_022E8C10

	arm_func_start ov29_022E8C4C
ov29_022E8C4C: @ 0x022E8C4C
	push {r3, r4, r5, lr}
	ldr r0, _022E8CA4 @ =0x02353554
	ldr r4, [r0]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _022E8C98
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	blx r0
	movs r5, r0
	beq _022E8C9C
	mov r1, #0
	mov r2, r1
	mov r3, r1
	add r0, r4, #0x14
	str r1, [sp]
	bl ov29_022E86C8
	b _022E8C9C
_022E8C98:
	mov r5, #1
_022E8C9C:
	mov r0, r5
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E8CA4: .4byte 0x02353554
	arm_func_end ov29_022E8C4C

	arm_func_start ov29_022E8CA8
ov29_022E8CA8: @ 0x022E8CA8
	ldr r1, _022E8CE4 @ =0x02353554
	ldr r3, [r1]
	ldrsh r2, [r3, #8]
	cmp r2, r0
	ldrne r2, [r3, #0xc]
	cmpne r2, #1
	bxeq lr
	mov r2, #1
	str r2, [r3, #0xc]
	ldr r3, [r1]
	mov r2, #0
	strh r0, [r3, #0x10]
	ldr r0, [r1]
	strb r2, [r0, #0x28]
	bx lr
	.align 2, 0
_022E8CE4: .4byte 0x02353554
	arm_func_end ov29_022E8CA8

	arm_func_start ov29_022E8CE8
ov29_022E8CE8: @ 0x022E8CE8
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov sb, #0
	ldr fp, _022E8E54 @ =0x000003E7
	mov r8, sb
_022E8CFC:
	ldr r0, _022E8E58 @ =0x02353538
	ldr r1, [r0]
	add r0, r1, r8, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	cmp r0, #0
	moveq r0, #0
	beq _022E8D30
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_022E8D30:
	cmp r0, #0
	beq _022E8DE4
	add r0, r1, r8, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb28]
	ldr r0, _022E8E5C @ =0x02353554
	ldr r7, [r6, #0xb4]
	ldr r0, [r0]
	add r5, r0, #0xb8
	mov r0, #0x5c
	smulbb r4, sb, r0
	ldrb r0, [r7, #0x165]
	cmp r0, #0
	bne _022E8DE4
	add r0, sp, #0x14
	mov r1, r7
	mov r2, #0
	bl ov29_0230027C
	ldrsh r1, [r7, #0x12]
	ldrsh r0, [r7, #0x16]
	add sl, r1, r0
	cmp sl, fp
	mov r0, r6
	movgt sl, fp
	bl GetSleepAnimationId
	ldrb r3, [r7, #0xa]
	lsl r1, sl, #0x10
	asr r1, r1, #0x10
	str r3, [sp]
	ldrsh r3, [r7, #0x10]
	add r2, sp, #0x14
	str r3, [sp, #4]
	str r1, [sp, #8]
	ldrsh r1, [r6, #0xa8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, [r7, #0xb0]
	ldrsh r3, [r7, #4]
	lsl r1, r1, #0x10
	add r0, r5, r4
	asr r1, r1, #0x10
	bl FUN_022C1DE0
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
_022E8DE4:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022E8CFC
	mov r0, #0x5c
	smulbb r4, sb, r0
	mov r3, #0
	ldr r1, _022E8E5C @ =0x02353554
	b _022E8E24
_022E8E0C:
	ldr r2, [r1]
	add r0, sb, #1
	add r2, r4, r2
	lsl r0, r0, #0x10
	strb r3, [r2, #0xb8]
	asr sb, r0, #0x10
_022E8E24:
	cmp sb, #4
	blt _022E8E0C
	ldr r0, _022E8E5C @ =0x02353554
	ldr r0, [r0]
	add r0, r0, #0xb8
	bl ov29_022DC684
	ldr r0, _022E8E5C @ =0x02353554
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x228]
	add sp, sp, #0x54
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E8E54: .4byte 0x000003E7
_022E8E58: .4byte 0x02353538
_022E8E5C: .4byte 0x02353554
	arm_func_end ov29_022E8CE8

	arm_func_start ov29_022E8E60
ov29_022E8E60: @ 0x022E8E60
	push {r4, lr}
	mov r4, r0
	ldr r0, _022E8E90 @ =0x00003FCB
	bl FUN_020258C4
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r1
	bl FUN_02026214
	mov r0, r4
	bl FUN_02027AF0
	pop {r4, pc}
	.align 2, 0
_022E8E90: .4byte 0x00003FCB
	arm_func_end ov29_022E8E60

	arm_func_start ov29_022E8E94
ov29_022E8E94: @ 0x022E8E94
	push {r3, lr}
	sub sp, sp, #0x10
	ldr r0, _022E8F1C @ =0x02353558
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #0
	bne _022E8F14
	mov r0, #0x54
	mov r1, #8
	bl FUN_02001170
	ldr r2, _022E8F1C @ =0x02353558
	mov r1, #0x54
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _022E8F20 @ =0x023515F4
	add ip, sp, #0
	ldm r0, {r0, r1, r2, r3}
	stm ip, {r0, r1, r2, r3}
	ldr r1, _022E8F24 @ =ov29_022E8E60
	mov r0, ip
	bl FUN_0202F8C4
	ldr r1, _022E8F1C @ =0x02353558
	ldr r2, [r1]
	strb r0, [r2]
	ldr r0, [r1]
	add r0, r0, #4
	bl FUN_02023690
	ldr r0, _022E8F1C @ =0x02353558
	mov r2, #0x10000
	ldr r1, [r0]
	mov r0, #1
	str r2, [r1, #0x50]
_022E8F14:
	add sp, sp, #0x10
	pop {r3, pc}
	.align 2, 0
_022E8F1C: .4byte 0x02353558
_022E8F20: .4byte 0x023515F4
_022E8F24: .4byte ov29_022E8E60
	arm_func_end ov29_022E8E94

	arm_func_start ov29_022E8F28
ov29_022E8F28: @ 0x022E8F28
	push {r3, lr}
	ldr r0, _022E8F74 @ =0x02353558
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, pc}
	ldrsb r0, [r0]
	bl FUN_0202F918
	ldr r0, _022E8F74 @ =0x02353558
	mvn r2, #1
	ldr r1, [r0]
	strb r2, [r1]
	ldr r0, [r0]
	bl FUN_02001188
	ldr r0, _022E8F74 @ =0x02353558
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E8F74: .4byte 0x02353558
	arm_func_end ov29_022E8F28

	arm_func_start ov29_022E8F78
ov29_022E8F78: @ 0x022E8F78
	push {r4, lr}
	ldrb r1, [r0]
	cmp r1, #0
	popeq {r4, pc}
	mov r1, #0
	strb r1, [r0]
	ldr r1, _022E8FC4 @ =0x02353558
	ldr r0, _022E8FC8 @ =0x00003FCB
	ldr r1, [r1]
	ldrsb r4, [r1]
	bl FUN_020258C4
	mov r1, #0
	mov r3, r0
	mov r0, r4
	mov r2, r1
	bl FUN_02026214
	mov r0, r4
	bl FUN_02027AF0
	pop {r4, pc}
	.align 2, 0
_022E8FC4: .4byte 0x02353558
_022E8FC8: .4byte 0x00003FCB
	arm_func_end ov29_022E8F78

	arm_func_start ov29_022E8FCC
ov29_022E8FCC: @ 0x022E8FCC
	push {r3, lr}
	ldr r0, _022E8FF4 @ =0x02353538
	ldr r1, [r0]
	add r0, r1, #0x700
	ldrsb r0, [r0, #0x98]
	ldrb r1, [r1, #0x748]
	bl ov29_0234F25C
	bl ov29_0234F278
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_022E8FF4: .4byte 0x02353538
	arm_func_end ov29_022E8FCC

	arm_func_start ov29_022E8FF8
ov29_022E8FF8: @ 0x022E8FF8
	push {r3, lr}
	bl ov29_0234F2B8
	mov r0, #1
	pop {r3, pc}
	arm_func_end ov29_022E8FF8

	arm_func_start ov29_0234F290
ov29_0234F290: @ 0x022E9008
	ldr ip, _022E9010 @ =ov29_0234F290
	bx ip
	.align 2, 0
_022E9010: .4byte ov29_0234F290
	arm_func_end ov29_0234F290

	arm_func_start ov29_022E9014
ov29_022E9014: @ 0x022E9014
	ldrb r0, [r0]
	cmp r0, #0
	bx lr
	arm_func_end ov29_022E9014

	arm_func_start GetDirectionTowardsPosition
GetDirectionTowardsPosition: @ 0x022E9020
	ldrsh r3, [r1]
	ldrsh r2, [r0]
	ldrsh r1, [r1, #2]
	ldrsh r0, [r0, #2]
	subs r3, r3, r2
	sub r2, r1, r0
	cmpeq r2, #0
	moveq r0, #0
	bxeq lr
	cmp r3, #1
	movge r3, #1
	cmp r2, #1
	mvn r0, #0
	movge r2, #1
	cmp r3, r0
	movle r3, r0
	mvn r0, #0
	cmp r2, r0
	movle r2, r0
	ldr r1, _022E9088 @ =0x02351604
	add r2, r2, #1
	mov r0, #0xc
	mla r0, r2, r0, r1
	add r1, r3, #1
	ldr r0, [r0, r1, lsl #2]
	bx lr
	.align 2, 0
_022E9088: .4byte 0x02351604
	arm_func_end GetDirectionTowardsPosition

	arm_func_start GetChebyshevDistance
GetChebyshevDistance: @ 0x022E908C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrsh r1, [r5]
	ldrsh r0, [r4]
	sub r0, r1, r0
	bl FUN_0208655C
	ldrsh r1, [r4, #2]
	ldrsh r2, [r5, #2]
	mov r4, r0
	sub r0, r2, r1
	bl FUN_0208655C
	cmp r4, r0
	movle r4, r0
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end GetChebyshevDistance

	arm_func_start ov29_022E90CC
ov29_022E90CC: @ 0x022E90CC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	mov r6, r2
	bl ov29_022E333C
	mov r5, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	bl GetTile
	cmp r6, #0
	ldrb ip, [r0, #7]
	bne _022E9104
	cmp ip, #0xff
	bne _022E913C
_022E9104:
	ldrsh r1, [r7]
	ldrsh r0, [r4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, r5
	bgt _022E9198
	ldrsh r1, [r7, #2]
	ldrsh r0, [r4, #2]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, r5
	bgt _022E9198
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022E913C:
	ldr r0, _022E91A0 @ =0x02353538
	mov r1, #0x1c
	ldr r0, [r0]
	ldrsh r2, [r4]
	add r0, r0, #0x2e8
	add r0, r0, #0xec00
	mla r3, ip, r1, r0
	ldrsh r0, [r3, #2]
	sub r0, r0, #1
	cmp r0, r2
	ldrshle r0, [r3, #4]
	ldrshle r1, [r4, #2]
	suble r0, r0, #1
	cmple r0, r1
	bgt _022E9198
	ldrsh r0, [r3, #6]
	add r0, r0, #1
	cmp r0, r2
	ldrshgt r0, [r3, #8]
	addgt r0, r0, #1
	cmpgt r0, r1
	movgt r0, #1
	popgt {r3, r4, r5, r6, r7, pc}
_022E9198:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E91A0: .4byte 0x02353538
	arm_func_end ov29_022E90CC

	arm_func_start IsPositionInSight
IsPositionInSight: @ 0x022E91A4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r7, r2
	bl GetTile
	ldrb r6, [r0, #7]
	cmp r6, #0xff
	beq _022E9230
	cmp r7, #0
	bne _022E9230
	ldr r0, _022E9294 @ =0x02353538
	mov r1, #0x1c
	ldr r0, [r0]
	ldrsh r2, [r4]
	add r0, r0, #0x2e8
	add r0, r0, #0xec00
	mla r3, r6, r1, r0
	ldrsh r0, [r3, #2]
	sub r0, r0, #1
	cmp r0, r2
	ldrshle r0, [r3, #4]
	ldrshle r1, [r4, #2]
	suble r0, r0, #1
	cmple r0, r1
	bgt _022E9230
	ldrsh r0, [r3, #6]
	add r0, r0, #1
	cmp r0, r2
	ldrshgt r0, [r3, #8]
	addgt r0, r0, #1
	cmpgt r0, r1
	movgt r0, #1
	popgt {r3, r4, r5, r6, r7, pc}
_022E9230:
	ldrsh r1, [r5, #2]
	ldrsh r0, [r4, #2]
	sub r0, r1, r0
	bl FUN_0208655C
	ldrsh r2, [r5]
	ldrsh r1, [r4]
	mov r6, r0
	sub r0, r2, r1
	bl FUN_0208655C
	cmp r0, r6
	movle r0, r6
	cmp r0, #2
	movgt r0, #0
	popgt {r3, r4, r5, r6, r7, pc}
	bne _022E928C
	mov r0, r5
	mov r1, r4
	bl ov29_022E935C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_022E928C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E9294: .4byte 0x02353538
	arm_func_end IsPositionInSight

	arm_func_start ov29_022E9298
ov29_022E9298: @ 0x022E9298
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r7, r2
	bl GetTile
	mov r6, r0
	bl ov29_022E333C
	cmp r7, #0
	ldrb r2, [r6, #7]
	bne _022E92D0
	cmp r2, #0xff
	bne _022E930C
_022E92D0:
	ldrsh r1, [r5]
	sub r1, r1, r0
	str r1, [r4]
	ldrsh r1, [r5]
	add r1, r1, r0
	add r1, r1, #1
	str r1, [r4, #8]
	ldrsh r1, [r5, #2]
	sub r1, r1, r0
	str r1, [r4, #4]
	ldrsh r1, [r5, #2]
	add r0, r1, r0
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022E930C:
	ldr r0, _022E9358 @ =0x02353538
	mov r1, #0x1c
	ldr r0, [r0]
	add r0, r0, #0x2e8
	add r0, r0, #0xec00
	mla r1, r2, r1, r0
	ldrsh r0, [r1, #2]
	sub r0, r0, #1
	str r0, [r4]
	ldrsh r0, [r1, #6]
	add r0, r0, #2
	str r0, [r4, #8]
	ldrsh r0, [r1, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	ldrsh r0, [r1, #8]
	add r0, r0, #2
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022E9358: .4byte 0x02353538
	arm_func_end ov29_022E9298

	arm_func_start ov29_022E935C
ov29_022E935C: @ 0x022E935C
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	ldrsh r4, [r8]
	ldrsh r0, [r7]
	sub r0, r4, r0
	bl FUN_0208655C
	mov r6, r0
	cmp r6, #1
	bgt _022E93A0
	ldrsh r1, [r8, #2]
	ldrsh r0, [r7, #2]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	movle r0, #1
	pople {r4, r5, r6, r7, r8, pc}
_022E93A0:
	ldrsh r5, [r8, #2]
	ldrsh r0, [r7, #2]
	sub r0, r5, r0
	bl FUN_0208655C
	cmp r6, r0
	movle r6, r0
	cmp r6, #2
	bne _022E9480
	mov r6, #0
	b _022E9410
_022E93C8:
	ldrsh r0, [r7]
	cmp r4, r0
	addlt r4, r4, #1
	cmp r4, r0
	ldrsh r0, [r7, #2]
	subgt r4, r4, #1
	cmp r5, r0
	addlt r5, r5, #1
	cmp r5, r0
	subgt r5, r5, #1
	mov r0, r4
	mov r1, r5
	bl GetTile
	ldrh r0, [r0]
	tst r0, #3
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	add r6, r6, #1
_022E9410:
	cmp r6, #2
	blt _022E93C8
	ldrsh r4, [r7]
	ldrsh r5, [r7, #2]
	mov r6, #0
	b _022E9470
_022E9428:
	ldrsh r0, [r8]
	cmp r4, r0
	addlt r4, r4, #1
	cmp r4, r0
	ldrsh r0, [r8, #2]
	subgt r4, r4, #1
	cmp r5, r0
	addlt r5, r5, #1
	cmp r5, r0
	subgt r5, r5, #1
	mov r0, r4
	mov r1, r5
	bl GetTile
	ldrh r0, [r0]
	tst r0, #3
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	add r6, r6, #1
_022E9470:
	cmp r6, #2
	blt _022E9428
	mov r0, #1
	pop {r4, r5, r6, r7, r8, pc}
_022E9480:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022E935C

	arm_func_start ov29_022E9488
ov29_022E9488: @ 0x022E9488
	push {r3, r4, r5, lr}
	ldr ip, _022E955C @ =0x02353538
	ldr r3, _022E9560 @ =0x0001A224
	ldr r4, [ip]
	add ip, r3, #2
	ldrsh r3, [r4, r3]
	ldrsh r4, [r4, ip]
	mvn lr, #0xf
	sub r3, r0, r3
	sub r0, r1, r4
	cmp r3, lr
	cmpge r0, lr
	blt _022E9554
	rsb r1, lr, #0xff
	cmp r3, r1
	cmplt r0, #0xd0
	bge _022E9554
	mov r1, #0xc
	mul ip, r2, r1
	ldr r4, _022E9564 @ =0x0237C88A
	ldr r5, _022E9568 @ =0x0237C890
	ldrh r2, [r4, ip]
	sub r1, r1, #0x20c
	ldrsh r5, [r5, ip]
	and r1, r2, r1
	strh r1, [r4, ip]
	add r1, r3, r5
	ldrh r2, [r4, ip]
	and r1, r1, lr, lsr #23
	ldr r3, _022E956C @ =0x0237C88E
	orr r1, r2, r1
	strh r1, [r4, ip]
	ldr r1, _022E9570 @ =0x0237C892
	ldrh r4, [r3, ip]
	ldrsh lr, [r1, ip]
	ldr r1, _022E9574 @ =0xFFFF000F
	ldr r2, _022E9578 @ =0x020AFC4C
	and r1, r4, r1
	strh r1, [r3, ip]
	add r0, r0, lr
	ldr r1, _022E957C @ =0x0237C888
	lsl lr, r0, #0x14
	ldrh r4, [r3, ip]
	ldr r0, [r2]
	add r1, r1, ip
	orr r4, r4, lr, lsr #16
	mov r2, #0
	strh r4, [r3, ip]
	bl FUN_0201B9F8
	mov r0, #1
	pop {r3, r4, r5, pc}
_022E9554:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022E955C: .4byte 0x02353538
_022E9560: .4byte 0x0001A224
_022E9564: .4byte 0x0237C88A
_022E9568: .4byte 0x0237C890
_022E956C: .4byte 0x0237C88E
_022E9570: .4byte 0x0237C892
_022E9574: .4byte 0xFFFF000F
_022E9578: .4byte 0x020AFC4C
_022E957C: .4byte 0x0237C888
	arm_func_end ov29_022E9488

	arm_func_start GetLeader
GetLeader: @ 0x022E9580
	push {r4, r5, r6, lr}
	ldr r0, _022E95EC @ =0x0235355C
	ldr r0, [r0]
	cmp r0, #0
	popne {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _022E95F0 @ =0x02353538
	b _022E95DC
_022E95A0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb28]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r6, #0xb4]
	ldrbne r0, [r0, #7]
	cmpne r0, #0
	ldrne r1, _022E95EC @ =0x0235355C
	movne r0, r6
	strne r6, [r1]
	popne {r4, r5, r6, pc}
	add r5, r5, #1
_022E95DC:
	cmp r5, #4
	blt _022E95A0
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022E95EC: .4byte 0x0235355C
_022E95F0: .4byte 0x02353538
	arm_func_end GetLeader

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022E95F4
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022E9618
ov29_022E9618: @ 0x022E9618
	push {r3, lr}
	bl GetLeader
	ldr r0, [r0, #0xb4]
	pop {r3, pc}
	arm_func_end ov29_022E9618

	arm_func_start ov29_022E9628
ov29_022E9628: @ 0x022E9628
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe20
	mov sl, r0
	str r1, [sp]
	bl GetLeader
	mov r4, #0
	str r0, [sp, #0x14]
	mov r8, r4
	b _022E9830
_022E964C:
	mov r0, #0x38
	bl DungeonRandInt
	mov sb, r0
	mov r0, #0x20
	bl DungeonRandInt
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	mov r5, #0
	strh r2, [sp, #0x1c]
	ldrsh r0, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	ldrsh fp, [sp, #0x1e]
	str r0, [sp, #8]
	b _022E97F4
_022E968C:
	cmp r4, #0x700
	ldr r7, [sp, #0x10]
	bge _022E97FC
	ldr r0, [sp, #8]
	mov r6, #0
	sub r0, r0, sb
	str r0, [sp, #4]
	and r0, sb, #0xff
	str r0, [sp, #0x18]
	b _022E97DC
_022E96B4:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, sb
	mov r1, r7
	bl GetTile
	cmp r4, #0x700
	bge _022E97E4
	ldr r1, [sp]
	cmp r1, #0
	beq _022E96E8
	ldrh r1, [r0]
	tst r1, #0x800
	arm_func_end ov29_022E9628

	arm_func_start ov29_022E96E4
ov29_022E96E4: @ 0x022E96E4
	bne _022E97D8
_022E96E8:
	cmp r8, #0
	bne _022E974C
	ldrh r1, [r0]
	and r1, r1, #3
	cmp r1, #1
	bne _022E97A8
	ldrb r1, [r0, #7]
	cmp r1, #0xff
	beq _022E97A8
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldreq r0, [r0, #0xc]
	cmpeq r0, #0
	bne _022E97A8
	ldr r0, [sp, #4]
	bl FUN_0208655C
	cmp r0, #6
	bge _022E9740
	sub r0, fp, r7
	bl FUN_0208655C
	cmp r0, #6
	blt _022E97A8
_022E9740:
	mov r0, #1
	str r0, [sp, #0xc]
	b _022E97A8
_022E974C:
	ldrh r1, [r0]
	cmp r8, #1
	and r1, r1, #3
	bne _022E978C
	cmp r1, #1
	bne _022E97A8
	ldrb r1, [r0, #7]
	cmp r1, #0xff
	beq _022E97A8
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldreq r0, [r0, #0xc]
	cmpeq r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
	b _022E97A8
_022E978C:
	cmp r1, #1
	ldreq r1, [r0, #0x10]
	cmpeq r1, #0
	ldreq r0, [r0, #0xc]
	cmpeq r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
_022E97A8:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _022E97CC
	ldr r1, [sp, #0x18]
	add r0, sp, #0x20
	strb r1, [r0, r4, lsl #1]
	add r0, r0, r4, lsl #1
	strb r7, [r0, #1]
	add r4, r4, #1
_022E97CC:
	add r7, r7, #1
	cmp r7, #0x20
	movge r7, #0
_022E97D8:
	add r6, r6, #1
_022E97DC:
	cmp r6, #0x20
	blt _022E96B4
_022E97E4:
	add sb, sb, #1
	cmp sb, #0x38
	movge sb, #0
	add r5, r5, #1
_022E97F4:
	cmp r5, #0x38
	blt _022E968C
_022E97FC:
	cmp r4, #0
	beq _022E982C
	mov r0, r4
	bl DungeonRandInt
	add r2, sp, #0x20
	ldrb r2, [r2, r0, lsl #1]
	add r1, sp, #0x21
	strh r2, [sl]
	ldrb r1, [r1, r0, lsl #1]
	mov r0, #1
	strh r1, [sl, #2]
	b _022E983C
_022E982C:
	add r8, r8, #1
_022E9830:
	cmp r8, #3
	blt _022E964C
	mov r0, #0
_022E983C:
	add sp, sp, #0xe20
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_022E96E4

	arm_func_start ov29_022E9844
ov29_022E9844: @ 0x022E9844
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r8, r3
	mov sl, r0
	mov r0, #0
	str r0, [sp, #4]
	str r1, [sp]
	add r3, r8, #1
	mov r1, r0
	lsl r0, r3, #1
	mov sb, r2
	ldr r7, [sp, #0x30]
	bl FUN_02001170
	mov r4, r0
	mov r1, #0
	b _022E9890
_022E9884:
	lsl r0, r1, #1
	strh r1, [r4, r0]
	add r1, r1, #1
_022E9890:
	cmp r1, r8
	blt _022E9884
	cmp r7, #0
	beq _022E9918
	mov r0, #4
	bl DungeonRandInt
	add r0, r0, #1
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	sub fp, r8, #1
	mov r6, #0
	b _022E990C
_022E98C0:
	mov r5, #0
	b _022E98F8
_022E98C8:
	mov r0, r8
	bl DungeonRandInt
	lsl r0, r0, #0x10
	lsl r3, r5, #1
	asr r1, r0, #0xf
	ldrsh r2, [r4, r3]
	ldrsh r0, [r4, r1]
	add r5, r5, #1
	lsl r5, r5, #0x10
	strh r0, [r4, r3]
	strh r2, [r4, r1]
	asr r5, r5, #0x10
_022E98F8:
	cmp r5, fp
	blt _022E98C8
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_022E990C:
	ldr r0, [sp, #8]
	cmp r6, r0, asr #16
	blt _022E98C0
_022E9918:
	mov r6, #0
	b _022E99D0
_022E9920:
	lsl r0, r6, #1
	ldrsh r0, [r4, r0]
	lsl r0, r0, #2
	ldrsh r5, [sb, r0]
	cmp r5, #0x63
	beq _022E99D8
	add r1, sb, r0
	ldr r0, [sp]
	ldrsh r1, [r1, #2]
	ldrsh r3, [r0]
	ldrsh r2, [r0, #2]
	add fp, r3, r5
	add r5, r2, r1
	mov r0, fp
	mov r1, r5
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x800
	bne _022E99CC
	cmp r7, #0
	beq _022E99A0
	ldrb r2, [r0, #7]
	cmp r2, #0xff
	beq _022E99CC
	ldr r2, _022E99EC @ =0x02353538
	ldr r2, [r2]
	add r2, r2, #0xcc00
	ldrsh r3, [r2, #0xe4]
	cmp r3, fp
	ldrsheq r2, [r2, #0xe6]
	cmpeq r2, r5
	beq _022E99CC
_022E99A0:
	and r1, r1, #3
	cmp r1, #1
	ldreq r1, [r0, #0x10]
	cmpeq r1, #0
	ldreq r0, [r0, #0xc]
	cmpeq r0, #0
	strheq fp, [sl]
	strheq r5, [sl, #2]
	moveq r0, #1
	streq r0, [sp, #4]
	beq _022E99D8
_022E99CC:
	add r6, r6, #1
_022E99D0:
	cmp r6, r8
	blt _022E9920
_022E99D8:
	mov r0, r4
	bl FUN_02001188
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E99EC: .4byte 0x02353538
	arm_func_end ov29_022E9844

	arm_func_start ov29_022E99F0
ov29_022E99F0: @ 0x022E99F0
	push {r3, lr}
	str r2, [sp]
	ldr r2, _022E9A08 @ =0x02351844
	mov r3, #0x19
	bl ov29_022E9844
	pop {r3, pc}
	.align 2, 0
_022E9A08: .4byte 0x02351844
	arm_func_end ov29_022E99F0

	arm_func_start ov29_022E9A0C
ov29_022E9A0C: @ 0x022E9A0C
	push {r3, lr}
	str r2, [sp]
	ldr r2, _022E9A24 @ =0x023517DC
	mov r3, #0x19
	bl ov29_022E9844
	pop {r3, pc}
	.align 2, 0
_022E9A24: .4byte 0x023517DC
	arm_func_end ov29_022E9A0C

	arm_func_start ov29_022E9A28
ov29_022E9A28: @ 0x022E9A28
	push {r3, lr}
	str r2, [sp]
	ldr r2, _022E9A40 @ =0x023518AC
	mov r3, #0x31
	bl ov29_022E9844
	pop {r3, pc}
	.align 2, 0
_022E9A40: .4byte 0x023518AC
	arm_func_end ov29_022E9A28

	arm_func_start TickStatusTurnCounter
TickStatusTurnCounter: @ 0x022E9A44
	ldrb r1, [r0]
	cmp r1, #0x7f
	moveq r0, r1
	bxeq lr
	cmp r1, #0
	moveq r0, r1
	subne r1, r1, #1
	strbne r1, [r0]
	andne r0, r1, #0xff
	bx lr
	arm_func_end TickStatusTurnCounter

	arm_func_start ov29_022E9A6C
ov29_022E9A6C: @ 0x022E9A6C
	ldrh r2, [r0]
	ldr r1, _022E9A98 @ =0x00007530
	cmp r2, r1
	moveq r0, r2
	bxeq lr
	cmp r2, #0
	moveq r0, r2
	subne r1, r2, #1
	strhne r1, [r0]
	ldrhne r0, [r0]
	bx lr
	.align 2, 0
_022E9A98: .4byte 0x00007530
	arm_func_end ov29_022E9A6C

	arm_func_start ov29_022E9A9C
ov29_022E9A9C: @ 0x022E9A9C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sb, r1
	ldr r8, [sb, #0xb4]
	mov sl, r0
	mov r0, sb
	mov r1, #1
	ldrb r4, [r8, #0x4c]
	bl ov29_02300818
	cmp r0, #0
	beq _022E9B00
	ldr r0, _022E9CA0 @ =0x0235171C
	lsl r2, r4, #2
	ldrsh r1, [r0, r2]
	ldrsh r3, [sb, #4]
	ldr r0, _022E9CA4 @ =0x0235171E
	add r1, r1, r1, lsl #1
	add r1, r3, r1
	strh r1, [sl]
	ldrsh r0, [r0, r2]
	ldrsh r1, [sb, #6]
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	strh r0, [sl, #2]
	b _022E9C98
_022E9B00:
	ldrsh r2, [r8, #0x5a]
	mvn r0, #0
	cmp r2, r0
	ldrsheq r1, [r8, #0x5c]
	cmpeq r1, r0
	bne _022E9C8C
	ldr r0, _022E9CA8 @ =0x02353538
	ldrb r6, [r8, #0x4c]
	ldr r1, [r0]
	ldr r4, _022E9CAC @ =0x0235179C
	add r0, r1, #0x3000
	ldrb r0, [r0, #0xe38]
	ldr r3, _022E9CB0 @ =0x023517A0
	lsl r5, r6, #3
	cmp r0, #0
	ldrsh r0, [r3, r5]
	ldr r2, _022E9CB4 @ =0x023517A2
	ldr r4, [r4, r6, lsl #3]
	str r0, [sp, #0x14]
	ldrsh r0, [r2, r5]
	str r0, [sp, #0x10]
	ldrsh r0, [sb, #4]
	str r0, [sp, #0xc]
	ldrsh r0, [sb, #6]
	str r0, [sp, #8]
	beq _022E9B80
	add r0, r1, #0x378
	add r0, r0, #0x12800
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp]
	b _022E9C44
_022E9B80:
	ldrb r0, [r8, #6]
	cmp r0, #0
	bne _022E9BA4
	add r0, r1, #0x338
	add r0, r0, #0x12800
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp]
	b _022E9C44
_022E9BA4:
	add r0, r1, #0x328
	add r0, r0, #0x12800
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp]
	b _022E9C44
_022E9BBC:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldrsh r2, [r4, #2]
	mla fp, r3, r1, r0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r6, #0
	mla r5, r2, r1, r0
	b _022E9C34
_022E9BE0:
	ldr r0, [sp, #4]
	ldr r7, [r0, r6, lsl #2]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022E9C30
	ldrsh r0, [r7, #4]
	cmp r0, fp
	ldrsheq r0, [r7, #6]
	cmpeq r0, r5
	bne _022E9C30
	mov r2, #0
	mov r1, r7
	mov r0, sb
	mov r3, r2
	bl ov29_0230175C
	cmp r0, #1
	strheq fp, [sl]
	strheq r5, [sl, #2]
	beq _022E9C98
_022E9C30:
	add r6, r6, #1
_022E9C34:
	ldr r0, [sp]
	cmp r6, r0
	blt _022E9BE0
	add r4, r4, #4
_022E9C44:
	ldrsh r3, [r4]
	cmp r3, #0x63
	bne _022E9BBC
	ldrb r1, [r8, #0x4c]
	ldr r0, _022E9CA0 @ =0x0235171C
	ldrsh r2, [sb, #4]
	lsl r1, r1, #2
	ldrsh r1, [r0, r1]
	ldr r0, _022E9CA4 @ =0x0235171E
	add r1, r2, r1, lsl #1
	strh r1, [sl]
	ldrb r1, [r8, #0x4c]
	ldrsh r2, [sb, #6]
	lsl r1, r1, #2
	ldrsh r0, [r0, r1]
	add r0, r2, r0, lsl #1
	strh r0, [sl, #2]
	b _022E9C98
_022E9C8C:
	strh r2, [sl]
	ldrsh r0, [r8, #0x5c]
	strh r0, [sl, #2]
_022E9C98:
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022E9CA0: .4byte 0x0235171C
_022E9CA4: .4byte 0x0235171E
_022E9CA8: .4byte 0x02353538
_022E9CAC: .4byte 0x0235179C
_022E9CB0: .4byte 0x023517A0
_022E9CB4: .4byte 0x023517A2
	arm_func_end ov29_022E9A9C

	arm_func_start ov29_022E9CB8
ov29_022E9CB8: @ 0x022E9CB8
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _022E9F04 @ =0x0237C850
	ldr r0, _022E9F08 @ =0xFFFF000F
	ldrh r2, [r1, #0x1a]
	mov lr, #0
	and r2, r2, r0
	strh r2, [r1, #0x1a]
	ldrh r2, [r1, #0x14]
	bic r2, r2, #0x100
	strh r2, [r1, #0x14]
	ldrh r2, [r1, #0x14]
	bic r2, r2, #0x200
	strh r2, [r1, #0x14]
	ldrh r2, [r1, #0x14]
	bic r2, r2, #0xc00
	strh r2, [r1, #0x14]
	ldrh r2, [r1, #0x14]
	bic r2, r2, #0x1000
	strh r2, [r1, #0x14]
	ldrh r2, [r1, #0x14]
	bic r2, r2, #0x2000
	strh r2, [r1, #0x14]
	ldrh r2, [r1, #0x14]
	orr r2, r2, #0x2000
	strh r2, [r1, #0x14]
	ldrh r2, [r1, #0x14]
	bic r2, r2, #0xc000
	strh r2, [r1, #0x14]
	ldrh r2, [r1, #0x16]
	and r2, r2, r0, asr #7
	strh r2, [r1, #0x16]
	ldrh r2, [r1, #0x16]
	bic r2, r2, #0x3e00
	strh r2, [r1, #0x16]
	ldrh r2, [r1, #0x16]
	bic r2, r2, #0xc000
	strh r2, [r1, #0x16]
	ldrh r2, [r1, #0x16]
	orr r2, r2, #0x4000
	strh r2, [r1, #0x16]
	ldrh r2, [r1, #0x18]
	and r0, r2, r0, asr #6
	strh r0, [r1, #0x18]
	ldrh r0, [r1, #0x18]
	bic r0, r0, #0xc00
	strh r0, [r1, #0x18]
	ldrh r0, [r1, #0x18]
	bic r0, r0, #0xf000
	strh r0, [r1, #0x18]
	ldrh r0, [r1, #0x1a]
	bic r0, r0, #1
	strh r0, [r1, #0x1a]
	ldrh r0, [r1, #0x1a]
	bic r0, r0, #2
	strh r0, [r1, #0x1a]
	ldrh r0, [r1, #0x1a]
	bic r0, r0, #4
	strh r0, [r1, #0x1a]
_022E9DA0:
	mov r0, #0x48
	mul r5, lr, r0
	ldr r3, _022E9F0C @ =0x0237C888
	mov r8, #0x400
	ldr r2, _022E9F10 @ =0x02351628
	mov r1, #0x18
	mla r6, lr, r1, r2
	ldr r0, _022E9F14 @ =0x02351658
	add r4, r3, r5
	add r5, r0, r5
	mov ip, #0
	rsb r8, r8, #0
	mov r7, #0xc
_022E9DD4:
	mul r3, ip, r7
	ldrh r2, [r4, r3]
	add r1, r5, r3
	ldr r0, [r5, r3]
	bic r2, r2, #0x100
	strh r2, [r4, r3]
	ldrh r2, [r4, r3]
	ldr sl, [r1, #4]
	ldr sb, [r1, #8]
	bic r1, r2, #0x200
	strh r1, [r4, r3]
	ldrh r1, [r4, r3]
	lsl r0, r0, #0x1e
	add r2, r4, r3
	bic r1, r1, #0xc00
	strh r1, [r4, r3]
	ldrh r1, [r4, r3]
	lsl sl, sl, #0x1e
	and sb, sb, r8, lsr #22
	bic r1, r1, #0x1000
	strh r1, [r4, r3]
	ldrh r1, [r4, r3]
	bic r1, r1, #0x2000
	strh r1, [r4, r3]
	ldrh r1, [r4, r3]
	orr r1, r1, #0x2000
	strh r1, [r4, r3]
	ldrh r1, [r4, r3]
	bic r1, r1, #0xc000
	strh r1, [r4, r3]
	ldrh r1, [r4, r3]
	orr r0, r1, r0, lsr #16
	strh r0, [r4, r3]
	ldrh r0, [r2, #2]
	bic r0, r0, #0x3e00
	strh r0, [r2, #2]
	ldrh r0, [r2, #2]
	bic r0, r0, #0xc000
	strh r0, [r2, #2]
	ldrh r0, [r2, #2]
	orr r0, r0, sl, lsr #16
	strh r0, [r2, #2]
	ldrh r0, [r2, #4]
	and r0, r0, r8
	strh r0, [r2, #4]
	ldrh r0, [r2, #4]
	orr r0, r0, sb
	strh r0, [r2, #4]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xc00
	strh r0, [r2, #4]
	ldrh r0, [r2, #4]
	orr r0, r0, #0xc00
	strh r0, [r2, #4]
	ldrh r3, [r2, #4]
	lsl r1, ip, #2
	add r0, r6, ip, lsl #2
	bic r3, r3, #0xf000
	strh r3, [r2, #4]
	ldrh r3, [r2, #6]
	add ip, ip, #1
	ldrh r1, [r6, r1]
	bic r3, r3, #1
	strh r3, [r2, #6]
	ldrh r3, [r2, #6]
	ldrh r0, [r0, #2]
	cmp ip, #6
	bic r3, r3, #2
	strh r3, [r2, #6]
	strh r1, [r2, #8]
	strh r0, [r2, #0xa]
	blt _022E9DD4
	add lr, lr, #1
	cmp lr, #2
	blt _022E9DA0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022E9F04: .4byte 0x0237C850
_022E9F08: .4byte 0xFFFF000F
_022E9F0C: .4byte 0x0237C888
_022E9F10: .4byte 0x02351628
_022E9F14: .4byte 0x02351658
	arm_func_end ov29_022E9CB8

	arm_func_start ov29_022E9F18
ov29_022E9F18: @ 0x022E9F18
	push {r3, lr}
	ldr r0, _022E9F70 @ =0x000003E7
	ldr r1, _022E9F74 @ =0x0237C850
	mov r2, #0
	str r0, [r1, #4]
	ldr r0, _022E9F78 @ =0x02353560
	str r2, [r1, #0x10]
	strb r2, [r0, #2]
	strh r2, [r1, #0x1c]
	bl ov29_022E9CB8
	ldr r2, _022E9F7C @ =0x02353538
	mov r3, #1
	ldr r0, [r2]
	ldr r1, _022E9F74 @ =0x0237C850
	add r0, r0, #0x1a000
	strb r3, [r0, #0x24c]
	ldr r0, [r2]
	mov r2, #0
	add r0, r0, #0x1a000
	strb r3, [r0, #0x24d]
	str r2, [r1, #0xc]
	pop {r3, pc}
	.align 2, 0
_022E9F70: .4byte 0x000003E7
_022E9F74: .4byte 0x0237C850
_022E9F78: .4byte 0x02353560
_022E9F7C: .4byte 0x02353538
	arm_func_end ov29_022E9F18

	arm_func_start ov29_022E9F80
ov29_022E9F80: @ 0x022E9F80
	ldr r2, _022E9F98 @ =0x02353560
	mov r3, #0
	strb r0, [r2]
	str r1, [r2, #8]
	str r3, [r2, #0xc]
	bx lr
	.align 2, 0
_022E9F98: .4byte 0x02353560
	arm_func_end ov29_022E9F80

	arm_func_start ov29_022E9F9C
ov29_022E9F9C: @ 0x022E9F9C
	ldr r0, _022E9FBC @ =0x02353560
	ldrb r1, [r0, #1]
	cmp r1, #0
	ldrbne r2, [r0, #5]
	movne r1, #0
	strbne r2, [r0, #6]
	strbne r1, [r0, #1]
	bx lr
	.align 2, 0
_022E9FBC: .4byte 0x02353560
	arm_func_end ov29_022E9F9C

	arm_func_start ov29_022E9FC0
ov29_022E9FC0: @ 0x022E9FC0
	ldr r0, _022E9FCC @ =0x02353560
	ldrb r0, [r0, #3]
	bx lr
	.align 2, 0
_022E9FCC: .4byte 0x02353560
	arm_func_end ov29_022E9FC0

	arm_func_start ov29_022E9FD0
ov29_022E9FD0: @ 0x022E9FD0
	ldr r1, _022E9FDC @ =0x02353560
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_022E9FDC: .4byte 0x02353560
	arm_func_end ov29_022E9FD0

	arm_func_start AdvanceFrame
AdvanceFrame: @ 0x022E9FE0
	push {r3, lr}
	ldr r1, _022EA004 @ =0x02353560
	ldrb r1, [r1, #3]
	cmp r1, #0
	beq _022E9FFC
	bl ov29_022EA2A4
	pop {r3, pc}
_022E9FFC:
	bl ov29_022EA324
	pop {r3, pc}
	.align 2, 0
_022EA004: .4byte 0x02353560
	arm_func_end AdvanceFrame

	arm_func_start ov29_022EA008
ov29_022EA008: @ 0x022EA008
	push {r3, lr}
	ldr r0, _022EA290 @ =0x02353538
	ldr r0, [r0]
	cmp r0, #0
	popeq {r3, pc}
	ldr r0, _022EA294 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA27C
	bl ov29_0234B854
	bl ov29_022E886C
	ldr r0, _022EA290 @ =0x02353538
	ldr r0, [r0]
	cmp r0, #0
	beq _022EA0F8
	mov r0, #1
	bl ov29_022E2EC4
	ldr r1, _022EA290 @ =0x02353538
	ldr r0, _022EA298 @ =0x0001A224
	ldr ip, [r1]
	add r1, r0, #2
	add r2, ip, #0x1a000
	ldrsh r3, [ip, r1]
	ldr r1, [r2, #0x230]
	ldrsh r0, [ip, r0]
	sub r1, r3, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #1
	mov r3, #0
	bl FUN_02051E20
	ldr r1, _022EA290 @ =0x02353538
	ldr r0, [r1]
	add ip, r0, #0x1a000
	ldrb r0, [ip, #0x251]
	cmp r0, #0
	beq _022EA0DC
	mov r0, #2
	strb r0, [ip, #0x23c]
	ldr r0, _022EA298 @ =0x0001A224
	ldr ip, [r1]
	add r1, r0, #2
	add r2, ip, #0x1a000
	ldrsh r3, [ip, r1]
	ldr r1, [r2, #0x230]
	mov r2, #0
	sub r1, r3, r1
	lsl r1, r1, #0x10
	ldrsh r0, [ip, r0]
	mov r3, r2
	asr r1, r1, #0x10
	bl FUN_02051E20
	b _022EA0F8
_022EA0DC:
	mov r0, #0
	mov lr, #3
	mov r1, r0
	mov r2, r0
	mov r3, r0
	strb lr, [ip, #0x23c]
	bl FUN_02051E20
_022EA0F8:
	bl ov29_0230473C
	bl ov29_022E1854
	bl ov29_022E335C
	ldr r0, _022EA290 @ =0x02353538
	ldr r1, [r0]
	ldrsh r0, [r1, #0x1c]
	cmp r0, #0x64
	addlt r0, r0, #1
	strhlt r0, [r1, #0x1c]
	ldr r0, _022EA29C @ =0x0237C850
	ldr r0, [r0, #4]
	cmp r0, #0
	cmpne r0, #3
	cmpne r0, #0xc
	bne _022EA140
	mov r0, #0
	bl ov29_02339A24
	b _022EA154
_022EA140:
	bl FUN_0204AEA0
	cmp r0, #3
	bne _022EA154
	mov r0, #1
	bl ov29_02339A24
_022EA154:
	bl ov29_022EA64C
	bl ov29_022EA80C
	bl ov29_02335A10
	ldr r1, _022EA294 @ =0x02353560
	ldrb r0, [r1]
	cmp r0, #0
	beq _022EA1D0
	ldr r0, _022EA290 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r2, [r0, #0x24a]
	cmp r2, #0
	beq _022EA1B8
	bl ov29_022DE11C
	cmp r0, #0
	beq _022EA1D0
	ldr r0, _022EA290 @ =0x02353538
	mov r2, #0
	ldr r0, [r0]
	ldr r1, _022EA294 @ =0x02353560
	add r0, r0, #0x1a000
	strb r2, [r0, #0x24a]
	ldr r0, [r1, #8]
	str r0, [r1, #0xc]
	b _022EA1D0
_022EA1B8:
	ldr r2, [r1, #0xc]
	sub r2, r2, #1
	str r2, [r1, #0xc]
	cmp r2, #0
	movle r1, #1
	strble r1, [r0, #0x24a]
_022EA1D0:
	ldr r0, _022EA290 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x24a]
	cmp r0, #0
	beq _022EA214
	bl ov29_0234B4F4
	cmp r0, #3
	beq _022EA214
	ldr r1, _022EA290 @ =0x02353538
	ldr r0, _022EA294 @ =0x02353560
	ldr r1, [r1]
	ldrb r3, [r0, #2]
	add r2, r1, #0x1e0
	mov r0, #0xa0
	mov r1, #0x20
	bl ov29_022DE134
_022EA214:
	ldr r1, _022EA290 @ =0x02353538
	ldr r0, _022EA2A0 @ =0x0001A21C
	ldr r2, [r1]
	add r1, r0, #2
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl GetTile
	cmp r0, #0
	beq _022EA260
	ldr r2, _022EA290 @ =0x02353538
	ldrb r1, [r0, #7]
	ldr r2, [r2]
	cmp r2, #0
	addne r0, r2, #0xc4
	addne r0, r0, #0x4000
	add r2, r2, #0x21c
	moveq r0, #0
	add r2, r2, #0x1a000
	bl ov29_022ED800
_022EA260:
	bl ov29_02338AC4
	bl ov29_022E8C10
	ldr r0, _022EA290 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x224
	add r0, r0, #0x1a000
	bl ov29_022DD8B4
_022EA27C:
	ldr r0, _022EA29C @ =0x0237C850
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022EA290: .4byte 0x02353538
_022EA294: .4byte 0x02353560
_022EA298: .4byte 0x0001A224
_022EA29C: .4byte 0x0237C850
_022EA2A0: .4byte 0x0001A21C
	arm_func_end ov29_022EA008

	arm_func_start ov29_022EA2A4
ov29_022EA2A4: @ 0x022EA2A4
	push {r3, lr}
	ldr r0, _022EA318 @ =0x02353538
	ldr r0, [r0]
	cmp r0, #0
	bne _022EA2C0
	bl ov29_022DDEF8
	pop {r3, pc}
_022EA2C0:
	ldr r0, _022EA31C @ =0x02353560
	ldrb r0, [r0, #6]
	cmp r0, #0
	ldrne r0, _022EA320 @ =0x0237C850
	ldrne r1, [r0, #0x10]
	addne r1, r1, #1
	strne r1, [r0, #0x10]
	bl ov29_022DDEF8
	ldr r0, _022EA318 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strb r1, [r0, #0x248]
	bl ov29_0233A290
	ldr r0, _022EA31C @ =0x02353560
	ldrb r0, [r0, #6]
	cmp r0, #0
	ldrne r0, _022EA320 @ =0x0237C850
	ldrne r1, [r0, #0x10]
	subne r1, r1, #1
	strne r1, [r0, #0x10]
	pop {r3, pc}
	.align 2, 0
_022EA318: .4byte 0x02353538
_022EA31C: .4byte 0x02353560
_022EA320: .4byte 0x0237C850
	arm_func_end ov29_022EA2A4

	arm_func_start ov29_022EA324
ov29_022EA324: @ 0x022EA324
	push {r3, lr}
	ldr r0, _022EA368 @ =0x02353560
	ldrb r0, [r0, #6]
	cmp r0, #0
	ldrne r0, _022EA36C @ =0x0237C850
	ldrne r1, [r0, #0x10]
	addne r1, r1, #1
	strne r1, [r0, #0x10]
	bl ov29_022DDEF8
	ldr r0, _022EA368 @ =0x02353560
	ldrb r0, [r0, #6]
	cmp r0, #0
	ldrne r0, _022EA36C @ =0x0237C850
	ldrne r1, [r0, #0x10]
	subne r1, r1, #1
	strne r1, [r0, #0x10]
	pop {r3, pc}
	.align 2, 0
_022EA368: .4byte 0x02353560
_022EA36C: .4byte 0x0237C850
	arm_func_end ov29_022EA324

	arm_func_start ov29_022EA370
ov29_022EA370: @ 0x022EA370
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r4, _022EA3B0 @ =0x02353560
	b _022EA3A4
_022EA384:
	ldrb r0, [r4, #3]
	cmp r0, #0
	mov r0, r5
	beq _022EA39C
	bl ov29_022EA2A4
	b _022EA3A0
_022EA39C:
	bl ov29_022EA324
_022EA3A0:
	sub r6, r6, #1
_022EA3A4:
	cmp r6, #0
	bne _022EA384
	pop {r4, r5, r6, pc}
	.align 2, 0
_022EA3B0: .4byte 0x02353560
	arm_func_end ov29_022EA370

	arm_func_start ov29_022EA3B4
ov29_022EA3B4: @ 0x022EA3B4
	push {r4, r5, r6, lr}
	ldr r4, _022EA3F0 @ =0x0237C694
	ldr r5, _022EA3F4 @ =0x02353560
	mov r6, r0
_022EA3C4:
	ldrb r0, [r5, #3]
	cmp r0, #0
	mov r0, r6
	beq _022EA3DC
	bl ov29_022EA2A4
	b _022EA3E0
_022EA3DC:
	bl ov29_022EA324
_022EA3E0:
	ldrh r0, [r4]
	tst r0, #0xf0
	bne _022EA3C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_022EA3F0: .4byte 0x0237C694
_022EA3F4: .4byte 0x02353560
	arm_func_end ov29_022EA3B4

	arm_func_start ov29_022EA3F8
ov29_022EA3F8: @ 0x022EA3F8
	ldr ip, _022EA404 @ =ov29_022DE638
	mov r0, #0x100
	bx ip
	.align 2, 0
_022EA404: .4byte ov29_022DE638
	arm_func_end ov29_022EA3F8

	arm_func_start ov29_022EA408
ov29_022EA408: @ 0x022EA408
	ldr r0, _022EA414 @ =0x0237C850
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_022EA414: .4byte 0x0237C850
	arm_func_end ov29_022EA408

	arm_func_start ov29_022EA418
ov29_022EA418: @ 0x022EA418
	ldr r1, _022EA424 @ =0x02353560
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_022EA424: .4byte 0x02353560
	arm_func_end ov29_022EA418

	arm_func_start ov29_022EA428
ov29_022EA428: @ 0x022EA428
	push {r4, lr}
	ldr r1, _022EA620 @ =0x0237C850
	mov r4, r0
	ldr r0, [r1, #4]
	cmp r4, r0
	popeq {r4, pc}
	cmp r4, #0xd
	bgt _022EA48C
	cmp r4, #0
	addge pc, pc, r4, lsl #2
	b _022EA614
_022EA454: @ jump table
	b _022EA4B4 @ case 0
	b _022EA498 @ case 1
	b _022EA540 @ case 2
	b _022EA4E0 @ case 3
	b _022EA540 @ case 4
	b _022EA570 @ case 5
	b _022EA508 @ case 6
	b _022EA524 @ case 7
	b _022EA5C4 @ case 8
	b _022EA5E0 @ case 9
	b _022EA614 @ case 10
	b _022EA5FC @ case 11
	b _022EA614 @ case 12
	b _022EA594 @ case 13
_022EA48C:
	ldr r0, _022EA624 @ =0x000003E7
	cmp r4, r0
	b _022EA614
_022EA498:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
	b _022EA614
_022EA4B4:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r1, [r0, #3]
	cmp r1, #0
	beq _022EA614
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _022EA614
	bl ov29_02339CE8
	mov r0, #0
	bl ov29_02339FF4
	b _022EA614
_022EA4E0:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r1, [r0, #3]
	cmp r1, #0
	beq _022EA614
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _022EA614
	mov r0, #1
	bl ov29_02339FF4
	b _022EA614
_022EA508:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
	b _022EA614
_022EA524:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
	b _022EA614
_022EA540:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
	bl FUN_0204AEC0
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0233A248
	b _022EA614
_022EA570:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, #0
	bl ov29_0233A248
	b _022EA614
_022EA594:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r1, [r0, #3]
	cmp r1, #0
	beq _022EA5BC
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _022EA5BC
	bl ov29_02339CE8
	mov r0, #1
	bl ov29_02339FF4
_022EA5BC:
	mov r4, #0
	b _022EA614
_022EA5C4:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
	b _022EA614
_022EA5E0:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
	b _022EA614
_022EA5FC:
	ldr r0, _022EA628 @ =0x02353560
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _022EA614
	mov r0, #0
	bl ov29_0234B1A4
_022EA614:
	ldr r0, _022EA620 @ =0x0237C850
	str r4, [r0, #4]
	pop {r4, pc}
	.align 2, 0
_022EA620: .4byte 0x0237C850
_022EA624: .4byte 0x000003E7
_022EA628: .4byte 0x02353560
	arm_func_end ov29_022EA428

	arm_func_start ov29_022EA62C
ov29_022EA62C: @ 0x022EA62C
	ldr r1, _022EA644 @ =0x0237C850
	mov r2, #0xa
	ldr ip, _022EA648 @ =ov29_0234B1A4
	mov r0, #0
	str r2, [r1, #4]
	bx ip
	.align 2, 0
_022EA644: .4byte 0x0237C850
_022EA648: .4byte ov29_0234B1A4
	arm_func_end ov29_022EA62C

	arm_func_start ov29_022EA64C
ov29_022EA64C: @ 0x022EA64C
	push {r4, lr}
	sub sp, sp, #8
	ldr r0, _022EA708 @ =0x0237C850
	mov r2, #0
	ldr r1, [r0, #8]
	adds r1, r1, #1
	str r1, [r0, #8]
	movmi r1, #0
	strmi r1, [r0, #8]
	ldr r0, _022EA708 @ =0x0237C850
	ldr r1, [r0, #8]
	cmp r1, #0xc
	movge r1, #0
	strge r1, [r0, #8]
	ldr r0, _022EA708 @ =0x0237C850
	mov r1, #0xb
	ldr r3, [r0, #8]
	asr r0, r3, #1
	add r0, r3, r0, lsr #30
	asr r0, r0, #2
	add ip, r0, r0, lsl #1
	str r2, [sp]
	str r1, [sp, #4]
	ldr r0, _022EA70C @ =0x02353540
	ldr r1, _022EA710 @ =0x020AFC4C
	ldr r2, [r0]
	ldr r0, [r1]
	add r1, r2, ip, lsl #8
	mov r2, #0x1e8
	mov r3, #0x100
	lsl r4, ip, #8
	bl FUN_0201BAC8
	mov r0, #0
	str r0, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	ldr r0, _022EA70C @ =0x02353540
	ldr r1, _022EA710 @ =0x020AFC4C
	ldr ip, [r0]
	add r3, r4, #0x100
	ldr r0, [r1]
	add r1, ip, r3
	ldr r2, _022EA714 @ =0x000001EA
	mov r3, #0x200
	bl FUN_0201BAC8
	add sp, sp, #8
	pop {r4, pc}
	.align 2, 0
_022EA708: .4byte 0x0237C850
_022EA70C: .4byte 0x02353540
_022EA710: .4byte 0x020AFC4C
_022EA714: .4byte 0x000001EA
	arm_func_end ov29_022EA64C

	arm_func_start ov29_022EA718
ov29_022EA718: @ 0x022EA718
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022EA7FC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	mov fp, #0x29
	ldr r5, _022EA800 @ =0x0237C850
	ldr r4, _022EA804 @ =0x02353560
	b _022EA78C
_022EA75C:
	ldrsh r0, [r5, #0x1c]
	cmp r0, #0
	beq _022EA794
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _022EA780
	mov r0, fp
	bl ov29_022EA2A4
	b _022EA788
_022EA780:
	mov r0, #0x29
	bl ov29_022EA324
_022EA788:
	add r6, r6, #1
_022EA78C:
	cmp r6, #0x14
	blt _022EA75C
_022EA794:
	ldr r1, _022EA800 @ =0x0237C850
	mov r0, #0x3c
	str sl, [r1, #0x20]
	strb r8, [r1, #0x24]
	strh r0, [r1, #0x1c]
	str sb, [r1, #0x28]
	ldrh r2, [sb, #0x26]
	mov r0, #0
	cmp r7, #0
	str r2, [r1, #0x2c]
	str r0, [r1, #0x30]
	str r0, [r1, #0x34]
	bge _022EA7F4
	ldr r0, _022EA808 @ =0xFFFFFC19
	cmp sl, r0
	movlt r0, #6
	strhlt r0, [r1, #0x1e]
	poplt {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	movge r0, #0xa
	strhge r0, [r1, #0x1e]
	movlt r0, #3
	strhlt r0, [r1, #0x1e]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022EA7F4:
	strh r7, [r1, #0x1e]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EA7FC: .4byte 0x02353538
_022EA800: .4byte 0x0237C850
_022EA804: .4byte 0x02353560
_022EA808: .4byte 0xFFFFFC19
	arm_func_end ov29_022EA718

	arm_func_start ov29_022EA80C
ov29_022EA80C: @ 0x022EA80C
	push {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r0, _022EA95C @ =0x0237C850
	ldrsh r1, [r0, #0x1c]
	cmp r1, #0
	beq _022EA954
	ldr r0, [r0, #0x28]
	cmp r0, #0
	moveq r0, #0
	beq _022EA848
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_022EA848:
	cmp r0, #0
	ldreq r0, _022EA95C @ =0x0237C850
	moveq r1, #0
	strheq r1, [r0, #0x1c]
	beq _022EA954
	ldr r3, _022EA95C @ =0x0237C850
	ldr r5, [r3, #0x28]
	ldr r1, [r3, #0x2c]
	ldrh r0, [r5, #0x26]
	cmp r1, r0
	movne r0, #0
	strhne r0, [r3, #0x1c]
	bne _022EA954
	ldrsh r2, [r3, #0x1c]
	ldr r1, _022EA960 @ =0x02353538
	ldr r0, _022EA964 @ =0x0001A224
	sub r2, r2, #1
	strh r2, [r3, #0x1c]
	ldr r4, [r3, #0x34]
	add r2, r0, #2
	sub lr, r4, #0x2e
	str lr, [r3, #0x34]
	ldr r4, [r5, #0xb4]
	ldr ip, [r1]
	add r1, r4, #0x100
	ldrsh r5, [r1, #0x82]
	ldrsh r4, [r1, #0x84]
	ldr r1, [r3, #0x30]
	ldrsh r0, [ip, r0]
	add r5, r5, r1, asr #8
	ldrsh r1, [ip, r2]
	add r4, r4, lr, asr #8
	sub r2, r4, #0x18
	sub r4, r5, r0
	mvn r0, #0x1f
	cmp r4, r0
	sub r5, r2, r1
	addge r0, r0, #0x18
	cmpge r5, r0
	blt _022EA954
	cmp r4, #0xff
	cmplt r5, #0xc0
	bge _022EA954
	ldrsh r1, [r3, #0x1c]
	mov r0, #0xff
	cmp r1, #0x1f
	bge _022EA910
	rsb r0, r1, r1, lsl #8
	mov r1, #0x1f
	bl FUN_0208FEA4
_022EA910:
	ldr ip, _022EA95C @ =0x0237C850
	lsl r1, r4, #0x10
	ldrh r4, [ip, #0x1e]
	lsl r2, r5, #0x10
	lsl r3, r0, #0x10
	str r4, [sp]
	ldr r4, [ip, #0x20]
	asr r0, r1, #0x10
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	ldrb r4, [ip, #0x24]
	asr r1, r2, #0x10
	asr r3, r3, #0x10
	mov r2, #0xff
	str r4, [sp, #8]
	bl ov29_02335F40
_022EA954:
	add sp, sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022EA95C: .4byte 0x0237C850
_022EA960: .4byte 0x02353538
_022EA964: .4byte 0x0001A224
	arm_func_end ov29_022EA80C

	arm_func_start ov29_022EA968
ov29_022EA968: @ 0x022EA968
	orr r1, r0, #1
	ldr r0, _022EA97C @ =0x02353570
	bic r1, r1, #0xff000000
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_022EA97C: .4byte 0x02353570
	arm_func_end ov29_022EA968

	arm_func_start GenerateDungeonRngSeed
GenerateDungeonRngSeed: @ 0x022EA980
	ldr r2, _022EA9C4 @ =0x02353570
	mov r1, #0x10000
	ldr r3, [r2, #8]
	ldr r0, _022EA9C8 @ =0x5D588B65
	rsb r1, r1, #0
	mul ip, r3, r0
	add ip, ip, #1
	mul r0, ip, r0
	add r3, r0, #1
	lsr r0, ip, #0x10
	lsl r0, r0, #0x10
	and r1, r3, r1
	orr r0, r1, r0, lsr #16
	bic r0, r0, #0xff000000
	str r3, [r2, #8]
	orr r0, r0, #1
	bx lr
	.align 2, 0
_022EA9C4: .4byte 0x02353570
_022EA9C8: .4byte 0x5D588B65
	arm_func_end GenerateDungeonRngSeed

	arm_func_start GetDungeonRngPreseed
GetDungeonRngPreseed: @ 0x022EA9CC
	ldr r0, _022EA9D8 @ =0x02353570
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_022EA9D8: .4byte 0x02353570
	arm_func_end GetDungeonRngPreseed

	arm_func_start SetDungeonRngPreseed
SetDungeonRngPreseed: @ 0x022EA9DC
	ldr r1, _022EA9E8 @ =0x02353570
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_022EA9E8: .4byte 0x02353570
	arm_func_end SetDungeonRngPreseed

	arm_func_start InitDungeonRng
InitDungeonRng: @ 0x022EA9EC
	ldr r1, _022EAA18 @ =0x02353570
	orr r2, r0, #1
	str r2, [r1, #0xc]
	mov r2, #0
	str r2, [r1, #4]
	ldr r1, _022EAA1C @ =0x02353584
_022EAA04:
	str r0, [r1, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #5
	blt _022EAA04
	bx lr
	.align 2, 0
_022EAA18: .4byte 0x02353570
_022EAA1C: .4byte 0x02353584
	arm_func_end InitDungeonRng

	arm_func_start DungeonRand16Bit
DungeonRand16Bit: @ 0x022EAA20
	push {r3, lr}
	ldr r1, _022EAA88 @ =0x02353570
	ldrb r0, [r1]
	cmp r0, #0
	ldr r0, _022EAA8C @ =0x5D588B65
	beq _022EAA5C
	ldr lr, [r1, #0x10]
	ldr r3, _022EAA90 @ =0x02353584
	ldr r1, _022EAA94 @ =0x00269EC3
	ldr r2, [r3, lr, lsl #2]
	umull ip, r0, r2, r0
	adds r1, ip, r1
	lsl r0, r1, #0x10
	str r1, [r3, lr, lsl #2]
	b _022EAA80
_022EAA5C:
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	ldr r2, [r1, #0xc]
	mul r0, r2, r0
	add r2, r0, #1
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	str r2, [r1, #0xc]
_022EAA80:
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
_022EAA88: .4byte 0x02353570
_022EAA8C: .4byte 0x5D588B65
_022EAA90: .4byte 0x02353584
_022EAA94: .4byte 0x00269EC3
	arm_func_end DungeonRand16Bit

	arm_func_start DungeonRandInt
DungeonRandInt: @ 0x022EAA98
	push {r4, lr}
	mov r4, r0
	bl DungeonRand16Bit
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mul r0, r1, r4
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	arm_func_end DungeonRandInt

	arm_func_start DungeonRandRange
DungeonRandRange: @ 0x022EAAC0
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r5, r4
	popeq {r3, r4, r5, pc}
	bge _022EAAFC
	bl DungeonRand16Bit
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	sub r0, r4, r5
	mul r0, r1, r0
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	add r0, r5, r0, lsr #16
	pop {r3, r4, r5, pc}
_022EAAFC:
	bl DungeonRand16Bit
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	sub r0, r5, r4
	mul r0, r1, r0
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	add r0, r4, r0, lsr #16
	pop {r3, r4, r5, pc}
	arm_func_end DungeonRandRange

	arm_func_start DungeonRandOutcome
DungeonRandOutcome: @ 0x022EAB20
	push {r4, lr}
	mov r4, r0
	bl DungeonRand16Bit
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x64
	mul r0, r1, r0
	cmp r4, r0, asr #16
	movgt r0, #1
	movle r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end DungeonRandOutcome

	arm_func_start DungeonRandOutcome
DungeonRandOutcome: @ 0x022EAB50
	push {r4, lr}
	mov r4, r0
	bl DungeonRand16Bit
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x64
	mul r0, r1, r0
	cmp r4, r0, asr #16
	movgt r0, #1
	movle r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end DungeonRandOutcome

	arm_func_start CalcStatusDuration
CalcStatusDuration: @ 0x022EAB80
	push {r4, r5, r6, lr}
	mov r4, r0
	ldrsh r0, [r1]
	ldrsh r1, [r1, #2]
	mov r6, r2
	bl DungeonRandRange
	mov r5, r0
	cmp r4, #0
	moveq r0, #0
	beq _022EABBC
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_022EABBC:
	cmp r0, #0
	beq _022EAC24
	ldr r0, [r4]
	cmp r0, #1
	bne _022EAC24
	cmp r6, #0
	beq _022EAC24
	mov r0, r4
	mov r1, #0x12
	bl IqSkillIsEnabled
	cmp r0, #0
	cmpne r5, #0x7f
	beq _022EAC04
	lsl r0, r5, #8
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	bl FUN_02001894
	mov r5, r0
_022EAC04:
	mov r0, r4
	mov r1, #0x14
	bl AbilityIsActive
	cmp r0, #0
	cmpne r5, #0x7f
	beq _022EAC24
	cmp r5, #5
	movge r5, #5
_022EAC24:
	cmp r5, #1
	movlt r5, #1
	mov r0, r5
	pop {r4, r5, r6, pc}
	arm_func_end CalcStatusDuration

	arm_func_start DungeonRngUnsetSecondary
DungeonRngUnsetSecondary: @ 0x022EAC34
	ldr r0, _022EAC48 @ =0x02353570
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
_022EAC48: .4byte 0x02353570
	arm_func_end DungeonRngUnsetSecondary

	arm_func_start DungeonRngSetSecondary
DungeonRngSetSecondary: @ 0x022EAC4C
	ldr r1, _022EAC60 @ =0x02353570
	mov r2, #1
	strb r2, [r1]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_022EAC60: .4byte 0x02353570
	arm_func_end DungeonRngSetSecondary

	arm_func_start DungeonRngSetPrimary
DungeonRngSetPrimary: @ 0x022EAC64
	ldr r0, _022EAC74 @ =0x02353570
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022EAC74: .4byte 0x02353570
	arm_func_end DungeonRngSetPrimary

	arm_func_start ov29_022EAC78
ov29_022EAC78: @ 0x022EAC78
	bx lr
	arm_func_end ov29_022EAC78

	arm_func_start ov29_022EAC7C
ov29_022EAC7C: @ 0x022EAC7C
	ldr ip, _022EAC88 @ =FUN_02017C50
	mov r0, #1
	bx ip
	.align 2, 0
_022EAC88: .4byte FUN_02017C50
	arm_func_end ov29_022EAC7C

	arm_func_start ov29_022EAC8C
ov29_022EAC8C: @ 0x022EAC8C
	ldr ip, _022EAC98 @ =FUN_02017C50
	mov r0, #7
	bx ip
	.align 2, 0
_022EAC98: .4byte FUN_02017C50
	arm_func_end ov29_022EAC8C

	arm_func_start ov29_022EAC9C
ov29_022EAC9C: @ 0x022EAC9C
	ldr ip, _022EACA8 @ =FUN_02017C50
	mov r0, #0
	bx ip
	.align 2, 0
_022EACA8: .4byte FUN_02017C50
	arm_func_end ov29_022EAC9C

	arm_func_start ov29_022EACAC
ov29_022EACAC: @ 0x022EACAC
	ldr ip, _022EACB8 @ =FUN_02017C50
	mov r0, #5
	bx ip
	.align 2, 0
_022EACB8: .4byte FUN_02017C50
	arm_func_end ov29_022EACAC

	arm_func_start ov29_022EACBC
ov29_022EACBC: @ 0x022EACBC
	ldr ip, _022EACC8 @ =FUN_02017C50
	mov r0, #7
	bx ip
	.align 2, 0
_022EACC8: .4byte FUN_02017C50
	arm_func_end ov29_022EACBC

	arm_func_start ov29_022EACCC
ov29_022EACCC: @ 0x022EACCC
	push {r3, lr}
	cmp r0, #0x3f00
	popeq {r3, pc}
	mov r1, #0x100
	bl FUN_02017C74
	pop {r3, pc}
	arm_func_end ov29_022EACCC

	arm_func_start ov29_022EACE4
ov29_022EACE4: @ 0x022EACE4
	push {r3, lr}
	ldr r1, _022EACFC @ =0x000003E6
	cmp r0, r1
	popeq {r3, pc}
	bl FUN_02017C50
	pop {r3, pc}
	.align 2, 0
_022EACFC: .4byte 0x000003E6
	arm_func_end ov29_022EACE4

	arm_func_start ov29_022EAD00
ov29_022EAD00: @ 0x022EAD00
	push {r4, lr}
	mov r1, #0xaa
	bl FUN_0208FEA4
	ldr r0, _022EAD5C @ =0x022C555C
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	tst r4, #0x8000
	ldreq r0, _022EAD60 @ =0x00007FFF
	andeq r0, r4, r0
	lsleq r0, r0, #0x10
	lsreq r0, r0, #0x10
	popeq {r4, pc}
	mov r0, #4
	bl DungeonRandInt
	ldr r1, _022EAD60 @ =0x00007FFF
	lsl r0, r0, #0x10
	and r1, r4, r1
	ldr r3, _022EAD64 @ =0x022C51FC
	lsl r1, r1, #0x10
	asr r2, r0, #0xf
	add r0, r3, r1, lsr #13
	ldrh r0, [r2, r0]
	pop {r4, pc}
	.align 2, 0
_022EAD5C: .4byte 0x022C555C
_022EAD60: .4byte 0x00007FFF
_022EAD64: .4byte 0x022C51FC
	arm_func_end ov29_022EAD00

	arm_func_start ov29_022EAD68
ov29_022EAD68: @ 0x022EAD68
	push {r4, r5, r6, lr}
	bl ov29_022E0880
	cmp r0, #0
	beq _022EADAC
	mov r6, #0
	ldr r5, _022EAE08 @ =0x00001410
	mov r4, #0x66
	b _022EADA4
_022EAD88:
	mov r0, r5
	bl FUN_02017C68
	cmp r0, #0
	beq _022EADAC
	mov r0, r4
	bl AdvanceFrame
	add r6, r6, #1
_022EADA4:
	cmp r6, #0x1f4
	blt _022EAD88
_022EADAC:
	ldr r0, _022EAE0C @ =0x02353538
	mov r1, #0xc
	ldr r0, [r0]
	ldr r2, _022EAE10 @ =0x022C6C70
	add r0, r0, #0x4000
	ldrb r3, [r0, #0xda]
	smulbb r1, r3, r1
	ldr r1, [r2, r1]
	cmp r1, #0
	ldrsheq r1, [r0, #0xd6]
	strhne r1, [r0, #0xd6]
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	bl ov29_022EAD00
	mov r4, r0
	bl FUN_02017B18
	cmp r0, #0
	mov r0, r4
	bne _022EAE00
	bl ov29_022EAE14
	pop {r4, r5, r6, pc}
_022EAE00:
	bl ov29_022EAE40
	pop {r4, r5, r6, pc}
	.align 2, 0
_022EAE08: .4byte 0x00001410
_022EAE0C: .4byte 0x02353538
_022EAE10: .4byte 0x022C6C70
	arm_func_end ov29_022EAD68

	arm_func_start ov29_022EAE14
ov29_022EAE14: @ 0x022EAE14
	ldr r3, _022EAE38 @ =0x02353538
	ldr r1, _022EAE3C @ =0x0002CB06
	ldr ip, [r3]
	sub r2, r1, #6
	strh r0, [ip, r1]
	ldr r0, [r3]
	mov r1, #0
	strh r1, [r0, r2]
	bx lr
	.align 2, 0
_022EAE38: .4byte 0x02353538
_022EAE3C: .4byte 0x0002CB06
	arm_func_end ov29_022EAE14

	arm_func_start ov29_022EAE40
ov29_022EAE40: @ 0x022EAE40
	push {r4, lr}
	ldr lr, _022EAEA0 @ =0x02353538
	ldr r2, _022EAEA4 @ =0x0002CB02
	ldr r4, [lr]
	ldr r1, _022EAEA8 @ =0x000003E7
	add r3, r2, #4
	strh r1, [r4, r2]
	ldr r4, [lr]
	add ip, r2, #2
	strh r0, [r4, r3]
	ldr r4, [lr]
	mov r3, #4
	strh r0, [r4, ip]
	ldr r0, [lr]
	sub r2, r2, #2
	add r0, r0, #0x2c000
	str r3, [r0, #0xaf8]
	ldr r0, [lr]
	mov r3, #0
	strh r3, [r0, r2]
	ldr r0, [lr]
	add r0, r0, #0x700
	strh r1, [r0, #0x96]
	pop {r4, pc}
	.align 2, 0
_022EAEA0: .4byte 0x02353538
_022EAEA4: .4byte 0x0002CB02
_022EAEA8: .4byte 0x000003E7
	arm_func_end ov29_022EAE40

	arm_func_start ov29_022EAEAC
ov29_022EAEAC: @ 0x022EAEAC
	push {r3, lr}
	bl FUN_02017ACC
	ldr r0, _022EAEE4 @ =0x0002CB02
	ldr r2, _022EAEE8 @ =0x02353538
	ldr ip, _022EAEEC @ =0x000003E7
	ldr r3, [r2]
	add r1, r0, #2
	strh ip, [r3, r0]
	ldr r3, [r2]
	add r0, r0, #4
	strh ip, [r3, r1]
	ldr r1, [r2]
	strh ip, [r1, r0]
	pop {r3, pc}
	.align 2, 0
_022EAEE4: .4byte 0x0002CB02
_022EAEE8: .4byte 0x02353538
_022EAEEC: .4byte 0x000003E7
	arm_func_end ov29_022EAEAC

	arm_func_start ov29_02017D80
ov29_02017D80: @ 0x022EAEF0
	ldr ip, _022EAEF8 @ =FUN_02017D80
	bx ip
	.align 2, 0
_022EAEF8: .4byte FUN_02017D80
	arm_func_end ov29_02017D80

	arm_func_start ov29_022EAEFC
ov29_022EAEFC: @ 0x022EAEFC
	ldr r0, _022EAF1C @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x792]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022EAF1C: .4byte 0x02353538
	arm_func_end ov29_022EAEFC

	arm_func_start ov29_022EAF20
ov29_022EAF20: @ 0x022EAF20
	ldr r0, _022EAF30 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x792]
	bx lr
	.align 2, 0
_022EAF30: .4byte 0x02353538
	arm_func_end ov29_022EAF20

	arm_func_start ov29_022EAF34
ov29_022EAF34: @ 0x022EAF34
	ldr r1, _022EAF44 @ =0x02353538
	ldr r1, [r1]
	strb r0, [r1, #0x792]
	bx lr
	.align 2, 0
_022EAF44: .4byte 0x02353538
	arm_func_end ov29_022EAF34

	arm_func_start ov29_022EAF48
ov29_022EAF48: @ 0x022EAF48
	push {r4, lr}
	ldr ip, _022EAFA8 @ =0x02353538
	mov r4, #0
	ldr r3, [ip]
	ldr lr, _022EAFAC @ =0x000003E7
	add r2, r3, #0x2f8
	add r3, r3, #0x2c000
	str r4, [r3, #0xaf8]
	add r3, r2, #0x2c800
	str r4, [r3, #4]
	ldr r2, [ip]
	cmp r1, #0
	add r1, r2, #0x700
	strh lr, [r1, #0x96]
	bne _022EAF8C
	cmp r0, lr
	bne _022EAFA0
_022EAF8C:
	ldr r0, _022EAFAC @ =0x000003E7
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	pop {r4, pc}
_022EAFA0:
	bl ov29_022EAE40
	pop {r4, pc}
	.align 2, 0
_022EAFA8: .4byte 0x02353538
_022EAFAC: .4byte 0x000003E7
	arm_func_end ov29_022EAF48

	arm_func_start ov29_022EAFB0
ov29_022EAFB0: @ 0x022EAFB0
	push {r4, lr}
	ldr r0, _022EB168 @ =0x02353538
	ldr r3, [r0]
	cmp r3, #0
	popeq {r4, pc}
	add r0, r3, #0x700
	ldrh r0, [r0, #0x96]
	ldr r2, _022EB16C @ =0x000003E7
	add r1, r3, #0x2f8
	cmp r0, r2
	add r4, r1, #0x2c800
	bne _022EB034
	ldrb r1, [r3, #0x792]
	cmp r1, #0
	beq _022EB004
	ldr r0, _022EB170 @ =0x023516E8
	ldr r0, [r0, r1, lsl #2]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl ov29_022EAD00
	b _022EB034
_022EB004:
	ldrb r0, [r3, #0x791]
	cmp r0, #0
	movne r0, #0xd
	bne _022EB034
	ldrb r0, [r3, #0x794]
	cmp r0, #0
	movne r0, #0xb
	bne _022EB034
	ldrb r0, [r3, #0x7c9]
	cmp r0, #0
	movne r0, #0xc
	ldrheq r0, [r4, #0xe]
_022EB034:
	ldr r1, [r4]
	cmp r1, #4
	bne _022EB058
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	movne r1, #2
	strne r1, [r4]
	strhne r0, [r4, #0xa]
	b _022EB078
_022EB058:
	ldr r1, _022EB16C @ =0x000003E7
	cmp r0, r1
	beq _022EB078
	ldrh r2, [r4, #0xa]
	cmp r2, r1
	moveq r1, #1
	streq r1, [r4]
	strheq r0, [r4, #0xa]
_022EB078:
	ldr r0, [r4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	pop {r4, pc}
_022EB088: @ jump table
	pop {r4, pc} @ case 0
	b _022EB09C @ case 1
	b _022EB108 @ case 2
	b _022EB124 @ case 3
	pop {r4, pc} @ case 4
_022EB09C:
	ldrh r2, [r4, #0xa]
	ldr r0, _022EB16C @ =0x000003E7
	cmp r2, r0
	moveq r0, #0
	streq r0, [r4]
	beq _022EB0FC
	tst r2, #0x8000
	ldr r0, _022EB174 @ =0x00007FFF
	beq _022EB0D4
	and r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_02017B58
	b _022EB0EC
_022EB0D4:
	and r0, r2, r0
	lsl r0, r0, #0x10
	ldrh r1, [r4, #8]
	lsr r0, r0, #0x10
	mov r2, #0x100
	bl FUN_02017B64
_022EB0EC:
	ldrh r1, [r4, #0xa]
	mov r0, #4
	strh r1, [r4, #0xc]
	str r0, [r4]
_022EB0FC:
	ldr r0, _022EB16C @ =0x000003E7
	strh r0, [r4, #0xa]
	pop {r4, pc}
_022EB108:
	mov r0, #0x1e
	bl FUN_02017B7C
	mov r0, #0x1e
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4]
	pop {r4, pc}
_022EB124:
	ldr r0, [r4, #4]
	cmp r0, #0
	subne r0, r0, #1
	strne r0, [r4, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	popne {r4, pc}
	ldrh r1, [r4, #0xa]
	ldr r0, _022EB16C @ =0x000003E7
	cmp r1, r0
	movne r0, #1
	strne r0, [r4]
	popne {r4, pc}
	bl FUN_02017B70
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_022EB168: .4byte 0x02353538
_022EB16C: .4byte 0x000003E7
_022EB170: .4byte 0x023516E8
_022EB174: .4byte 0x00007FFF
	arm_func_end ov29_022EAFB0

	arm_func_start TrySwitchPlace
TrySwitchPlace: @ 0x022EB178
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, #0xe
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	beq _022EB1BC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _022EB2C4 @ =0x00000B76
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EB2BC
_022EB1BC:
	cmp r5, r4
	beq _022EB204
	cmp r5, #0
	moveq r0, #0
	beq _022EB1E4
	ldr r0, [r5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_022EB1E4:
	cmp r0, #0
	beq _022EB204
	mov r0, r5
	mov r1, #0x53
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	bne _022EB210
_022EB204:
	mov r0, r4
	mov r1, #0xe
	bl AbilityIsActive
_022EB210:
	cmp r0, #0
	beq _022EB23C
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _022EB2C4 @ =0x00000B76
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EB2BC
_022EB23C:
	ldrsh r1, [r5, #4]
	add r0, sp, #4
	strh r1, [sp, #4]
	ldrsh r1, [r5, #6]
	strh r1, [sp, #6]
	ldrsh r1, [r4, #4]
	strh r1, [sp]
	ldrsh r1, [r4, #6]
	strh r1, [sp, #2]
	bl ov29_022E555C
	add r0, sp, #0
	bl ov29_022E555C
	ldrsh r1, [sp]
	ldrsh r2, [sp, #2]
	mov r0, r5
	mov r3, #1
	bl ov29_022F85F0
	ldrsh r1, [sp, #4]
	ldrsh r2, [sp, #6]
	mov r0, r4
	mov r3, #1
	bl ov29_022F85F0
	mov r0, r5
	mov r1, #0
	bl ov29_022E1A40
	mov r0, r4
	mov r1, #0
	bl ov29_022E1A40
	mov r0, r5
	bl ov29_02321260
	mov r0, r4
	bl ov29_02321260
_022EB2BC:
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022EB2C4: .4byte 0x00000B76
	arm_func_end TrySwitchPlace

	arm_func_start ov29_022EB2C8
ov29_022EB2C8: @ 0x022EB2C8
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, _022EB360 @ =0x0237C91C
	lsl r2, r5, #3
	ldrh r6, [r0, r2]
	mov r4, r1
	cmp r6, #0x26
	bne _022EB2F8
	bl GetFloorType
	cmp r0, #2
	ldreq r0, _022EB364 @ =0x000009C9
	popeq {r3, r4, r5, r6, r7, pc}
_022EB2F8:
	add r0, r6, #0x87
	add r0, r0, #0x900
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	mov r0, r7
	bl FUN_020258C4
	ldr r1, _022EB368 @ =0x02352070
	bl FUN_0208982C
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	beq _022EB34C
	ldr r0, _022EB36C @ =0x0237C91E
	lsl r1, r5, #3
	ldrsh r0, [r0, r1]
	bl FUN_0200D208
	ldr r1, _022EB370 @ =0x02352032
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022EB34C:
	cmp r4, #1
	cmpeq r6, #0x1a
	ldreq r0, _022EB374 @ =0x000009CA
	movne r0, r7
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EB360: .4byte 0x0237C91C
_022EB364: .4byte 0x000009C9
_022EB368: .4byte 0x02352070
_022EB36C: .4byte 0x0237C91E
_022EB370: .4byte 0x02352032
_022EB374: .4byte 0x000009CA
	arm_func_end ov29_022EB2C8

	arm_func_start ov29_022EB378
ov29_022EB378: @ 0x022EB378
	push {r3, lr}
	ldrsh r0, [r0, #4]
	bl FUN_0200D208
	ldr r1, _022EB394 @ =0x02352030
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r3, pc}
	.align 2, 0
_022EB394: .4byte 0x02352030
	arm_func_end ov29_022EB378

	arm_func_start ov29_022EB398
ov29_022EB398: @ 0x022EB398
	push {r4, lr}
	mov r4, r0
	bl ov29_022E9618
	mov r1, #0
	strh r1, [r0, #0x4a]
	cmp r4, #0
	strbne r1, [r0, #0x4e]
	strbne r1, [r0, #0x54]
	subne r1, r1, #1
	strhne r1, [r0, #0x5a]
	strhne r1, [r0, #0x5c]
	pop {r4, pc}
	arm_func_end ov29_022EB398

	arm_func_start ov29_022EB3C8
ov29_022EB3C8: @ 0x022EB3C8
	push {r4, lr}
	mov r4, r0
	bl ov29_022E9618
	mov r1, #0
	strh r4, [r0, #0x4a]
	strb r1, [r0, #0x4e]
	strb r1, [r0, #0x54]
	sub r1, r1, #1
	strh r1, [r0, #0x5a]
	strh r1, [r0, #0x5c]
	pop {r4, pc}
	arm_func_end ov29_022EB3C8

	arm_func_start ClearMonsterActionFields
ClearMonsterActionFields: @ 0x022EB3F4
	mov r1, #0
	strh r1, [r0]
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end ClearMonsterActionFields

	arm_func_start SetMonsterActionFields
SetMonsterActionFields: @ 0x022EB408
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #4]
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end SetMonsterActionFields

	arm_func_start SetActionPassTurnOrWalk
SetActionPassTurnOrWalk: @ 0x022EB41C
	push {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_020528B4
	cmp r0, #0
	movne r0, #2
	moveq r0, #1
	strh r0, [r4]
	mov r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #0xa]
	pop {r4, pc}
	arm_func_end SetActionPassTurnOrWalk

	arm_func_start ov29_022EB44C
ov29_022EB44C: @ 0x022EB44C
	push {r3, lr}
	ldrb r2, [r1]
	cmp r2, #1
	blo _022EB478
	cmp r2, #0x33
	bhs _022EB478
	sub r0, r2, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_0200F348
	pop {r3, pc}
_022EB478:
	cmp r2, #0x80
	bne _022EB498
	ldrsh r0, [r1, #2]
	ldrsh r1, [r1, #4]
	bl GetTile
	ldr r0, [r0, #0x10]
	bl ov29_022E1610
	pop {r3, pc}
_022EB498:
	cmp r2, #0x81
	ldreq r0, [r0, #0xb4]
	addeq r0, r0, #0x62
	popeq {r3, pc}
	cmp r2, #0x90
	blo _022EB4DC
	cmp r2, #0x94
	bhs _022EB4DC
	ldr r0, _022EB4E4 @ =0x02353538
	sub r1, r2, #0x90
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	add r0, r0, #0x62
	pop {r3, pc}
_022EB4DC:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022EB4E4: .4byte 0x02353538
	arm_func_end ov29_022EB44C

	arm_func_start ov29_022EB4E8
ov29_022EB4E8: @ 0x022EB4E8
	push {r3, lr}
	mov r2, #6
	mul r2, r1, r2
	add r1, r0, r2
	ldrb r1, [r1, #4]
	cmp r1, #1
	blo _022EB528
	cmp r1, #0x33
	bhs _022EB528
	sub r0, r1, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_0200F404
	bl ov29_02347030
	mov r0, #1
	pop {r3, pc}
_022EB528:
	cmp r1, #0x80
	movne r0, #0
	popne {r3, pc}
	add r0, r0, #6
	add r0, r0, r2
	mov r1, #1
	bl ov29_023456BC
	mov r0, #1
	pop {r3, pc}
	arm_func_end ov29_022EB4E8

	arm_func_start ov29_022EB54C
ov29_022EB54C: @ 0x022EB54C
	push {r3, lr}
	ldr ip, [r0, #0xb4]
	mov r3, #6
	add ip, ip, #0x4e
	mla r1, r3, r1, ip
	bl ov29_022EB44C
	pop {r3, pc}
	arm_func_end ov29_022EB54C

	arm_func_start ov29_022EB568
ov29_022EB568: @ 0x022EB568
	ldr r2, [r0, #0xb4]
	mov r0, #6
	mla r2, r1, r0, r2
	ldr r0, _022EB590 @ =0x02353538
	ldrb r1, [r2, #0x4e]
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bx lr
	.align 2, 0
_022EB590: .4byte 0x02353538
	arm_func_end ov29_022EB568

	arm_func_start ov29_022EB594
ov29_022EB594: @ 0x022EB594
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022EB5D0
_022EB5A0: @ jump table
	b _022EB5B0 @ case 0
	b _022EB5B8 @ case 1
	b _022EB5C0 @ case 2
	b _022EB5C8 @ case 3
_022EB5B0:
	mov r0, #1
	bx lr
_022EB5B8:
	mov r0, #2
	bx lr
_022EB5C0:
	mov r0, #3
	bx lr
_022EB5C8:
	mov r0, #4
	bx lr
_022EB5D0:
	mov r0, #0
	bx lr
	arm_func_end ov29_022EB594

	arm_func_start ov29_022EB5D8
ov29_022EB5D8: @ 0x022EB5D8
	push {r3, lr}
	ldrsh r0, [r0, #4]
	ldr r1, _022EB604 @ =0x0000016B
	cmp r0, r1
	moveq r0, #0x35
	popeq {r3, pc}
	bl FUN_0200CAF0
	ldr r1, _022EB608 @ =0x02352010
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	pop {r3, pc}
	.align 2, 0
_022EB604: .4byte 0x0000016B
_022EB608: .4byte 0x02352010
	arm_func_end ov29_022EB5D8

	arm_func_start ov29_022EB60C
ov29_022EB60C: @ 0x022EB60C
	push {r3, r4, r5, lr}
	ldr ip, [r0, #0xb4]
	mov r3, #6
	add ip, ip, #0x4e
	mla r1, r3, r1, ip
	ldr r4, [r0, #0xb4]
	bl ov29_022EB44C
	ldrb r1, [r4, #0x4e]
	mov r5, r0
	cmp r1, #0x80
	bne _022EB648
	add r0, r4, #0x50
	mov r1, #1
	bl ov29_023456BC
	pop {r3, r4, r5, pc}
_022EB648:
	ldrb r1, [r5, #1]
	cmp r1, #0
	beq _022EB658
	bl FUN_0200F600
_022EB658:
	mov r0, r5
	bl FUN_0200D81C
	bl ov29_02347030
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022EB60C

	arm_func_start ov29_022EB668
ov29_022EB668: @ 0x022EB668
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r8, r1
	mov r1, #6
	mul r6, r8, r1
	mov sb, r0
	ldr r1, [sb, #0xb4]
	mov r7, r2
	add r1, r1, #0x4e
	add r1, r1, r6
	bl ov29_022EB44C
	mov r4, r0
	ldrsh r0, [r4, #4]
	ldr r5, [sb, #0xb4]
	bl FUN_0200CB70
	cmp r0, #0
	bne _022EB7F8
	ldrsh r0, [r4, #4]
	bl FUN_0200CAF0
	cmp r0, #5
	bne _022EB7E8
	add r0, r5, r6
	ldrb r0, [r0, #0x4e]
	cmp r0, #0x80
	bne _022EB71C
	ldrh r1, [r4]
	add r5, r5, #0x50
	add r0, r5, r6
	strh r1, [sp]
	ldrh r2, [r4, #2]
	mov r1, #1
	strh r2, [sp, #2]
	ldrh r2, [r4, #4]
	strh r2, [sp, #4]
	bl ov29_023456BC
	ldrsh r0, [r4, #4]
	mov r3, #0xbb
	add r1, sp, #0
	sub r4, r0, #0xbc
	add r0, r5, r6
	mov r2, #1
	strh r4, [sp, #2]
	strh r3, [sp, #4]
	bl ov29_02345538
	b _022EB7F8
_022EB71C:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022EB7C8
	ldr r0, _022EB800 @ =0x02353538
	sub r1, r1, #1
	ldr r0, [r0]
	add r0, r0, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	add r0, r0, #0x62
	cmp r4, r0
	bne _022EB7A4
	mov r0, r4
	bl FUN_0200F18C
	ldrsh r1, [r4, #4]
	mov r5, r0
	mov r0, r4
	sub r1, r1, #0xbc
	strh r1, [r4, #2]
	mov r1, #0xbb
	strh r1, [r4, #4]
	bl FUN_02050300
	cmp r5, #0
	blt _022EB7F8
	mov r0, r5
	bl FUN_0200F348
	ldrh r1, [r4]
	strh r1, [r0]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	b _022EB7F8
_022EB7A4:
	ldrsh r2, [r4, #4]
	mov r0, r4
	mov r1, #0xbb
	sub r2, r2, #0xbc
	strh r2, [r4, #2]
	strh r1, [r4, #4]
	bl FUN_02050300
	bl ov29_02347040
	b _022EB7F8
_022EB7C8:
	ldrsh r2, [r4, #4]
	mov r0, r4
	mov r1, #0xbb
	sub r2, r2, #0xbc
	strh r2, [r4, #2]
	strh r1, [r4, #4]
	bl FUN_02050300
	b _022EB7F8
_022EB7E8:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl ov29_022EB60C
_022EB7F8:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EB800: .4byte 0x02353538
	arm_func_end ov29_022EB668

	arm_func_start ov29_022EB804
ov29_022EB804: @ 0x022EB804
	cmp r0, #0
	ldrge r1, _022EB818 @ =0x0237C920
	movlt r0, #0
	ldrbge r0, [r1, r0, lsl #3]
	bx lr
	.align 2, 0
_022EB818: .4byte 0x0237C920
	arm_func_end ov29_022EB804

	arm_func_start ov29_022EB81C
ov29_022EB81C: @ 0x022EB81C
	push {r4, r5, r6, lr}
	ldr r2, _022EB89C @ =0x0237C918
	ldr r2, [r2]
	cmp r2, #0xa
	popge {r4, r5, r6, pc}
	mov r5, #0
	ldr r4, _022EB8A0 @ =0x0237C91C
	b _022EB850
_022EB83C:
	lsl r3, r5, #3
	ldrh r3, [r4, r3]
	cmp r0, r3
	popeq {r4, r5, r6, pc}
	add r5, r5, #1
_022EB850:
	cmp r5, r2
	blt _022EB83C
	ldr ip, _022EB89C @ =0x0237C918
	ldr r4, _022EB8A0 @ =0x0237C91C
	lsl r6, r2, #3
	ldr lr, [ip]
	add r3, r0, #0x87
	add lr, lr, #1
	ldr r5, _022EB8A4 @ =0x0237C91E
	strh r0, [r4, r6]
	ldr r4, _022EB8A8 @ =0x0237C920
	strh r1, [r5, r6]
	mov r1, #1
	ldr r0, _022EB8AC @ =0x0237C922
	strb r1, [r4, r2, lsl #3]
	add r1, r3, #0x900
	strh r1, [r0, r6]
	str lr, [ip]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022EB89C: .4byte 0x0237C918
_022EB8A0: .4byte 0x0237C91C
_022EB8A4: .4byte 0x0237C91E
_022EB8A8: .4byte 0x0237C920
_022EB8AC: .4byte 0x0237C922
	arm_func_end ov29_022EB81C

	arm_func_start ov29_022EB8B0
ov29_022EB8B0: @ 0x022EB8B0
	ldr r1, _022EB8EC @ =0x0237C918
	mov r3, #0
	ldr ip, [r1]
	ldr r2, _022EB8F0 @ =0x0237C91C
	b _022EB8DC
_022EB8C4:
	lsl r1, r3, #3
	ldrh r1, [r2, r1]
	cmp r0, r1
	moveq r0, r3
	bxeq lr
	add r3, r3, #1
_022EB8DC:
	cmp r3, ip
	blt _022EB8C4
	mvn r0, #0
	bx lr
	.align 2, 0
_022EB8EC: .4byte 0x0237C918
_022EB8F0: .4byte 0x0237C91C
	arm_func_end ov29_022EB8B0

	arm_func_start ov29_022EB8F4
ov29_022EB8F4: @ 0x022EB8F4
	push {r3, lr}
	ldr r1, _022EB938 @ =0x0237C918
	mov ip, #0
	ldr lr, [r1]
	ldr r2, _022EB93C @ =0x0237C91C
	b _022EB92C
_022EB90C:
	lsl r3, ip, #3
	ldrh r1, [r2, r3]
	cmp r0, r1
	ldreq r0, _022EB940 @ =0x0237C920
	moveq r1, #0
	strbeq r1, [r0, r3]
	popeq {r3, pc}
	add ip, ip, #1
_022EB92C:
	cmp ip, lr
	blt _022EB90C
	pop {r3, pc}
	.align 2, 0
_022EB938: .4byte 0x0237C918
_022EB93C: .4byte 0x0237C91C
_022EB940: .4byte 0x0237C920
	arm_func_end ov29_022EB8F4

	arm_func_start ov29_022EB944
ov29_022EB944: @ 0x022EB944
	push {r4, lr}
	cmp r1, #0
	ldr r4, [r0, #0xb4]
	beq _022EB964
	bl ov29_022E272C
	cmp r0, #0
	moveq r0, #1
	popeq {r4, pc}
_022EB964:
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	moveq r0, #1
	popeq {r4, pc}
	cmp r0, #2
	moveq r0, #1
	popeq {r4, pc}
	cmp r0, #1
	moveq r0, #1
	popeq {r4, pc}
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end ov29_022EB944

	arm_func_start ov29_022EB9A0
ov29_022EB9A0: @ 0x022EB9A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _022EBA64 @ =0x0237C918
	mov r3, #0
	ldr ip, [r0]
	b _022EBA54
_022EB9B8:
	add lr, r3, #1
	lsl r2, r3, #3
	ldr r1, _022EBA68 @ =0x0237C91C
	ldr r0, _022EBA6C @ =0x02352074
	b _022EBA48
_022EB9CC:
	lsl r4, lr, #3
	ldrh r5, [r1, r2]
	ldrh r4, [r1, r4]
	add r5, r0, r5, lsl #3
	add r4, r0, r4, lsl #3
	ldr r5, [r5, #4]
	ldr r4, [r4, #4]
	cmp r5, r4
	ble _022EBA44
	add r6, sp, #0
	add r7, r1, r2
	mov r5, #4
_022EB9FC:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EB9FC
	add r7, r1, lr, lsl #3
	add r6, r1, r2
	mov r5, #4
_022EBA18:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EBA18
	add r7, sp, #0
	add r6, r1, lr, lsl #3
	mov r5, #4
_022EBA34:
	ldrh r4, [r7], #2
	subs r5, r5, #1
	strh r4, [r6], #2
	bne _022EBA34
_022EBA44:
	add lr, lr, #1
_022EBA48:
	cmp lr, ip
	blt _022EB9CC
	add r3, r3, #1
_022EBA54:
	cmp r3, ip
	blt _022EB9B8
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EBA64: .4byte 0x0237C918
_022EBA68: .4byte 0x0237C91C
_022EBA6C: .4byte 0x02352074
	arm_func_end ov29_022EB9A0

	arm_func_start ov29_022EBA70
ov29_022EBA70: @ 0x022EBA70
	ldr r0, _022EBA80 @ =0x0237C918
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_022EBA80: .4byte 0x0237C918
	arm_func_end ov29_022EBA70

	arm_func_start ov29_022EBA84
ov29_022EBA84: @ 0x022EBA84
	ldr r0, _022EBA90 @ =0x0237C918
	ldr r0, [r0]
	bx lr
	.align 2, 0
_022EBA90: .4byte 0x0237C918
	arm_func_end ov29_022EBA84

	arm_func_start ov29_022EBA94
ov29_022EBA94: @ 0x022EBA94
	mov r2, #0x1b
	strh r2, [r0]
	mov r2, #0
	strb r2, [r0, #4]
	strb r2, [r0, #0xa]
	strb r1, [r0, #4]
	bx lr
	arm_func_end ov29_022EBA94

	arm_func_start ov29_022EBAB0
ov29_022EBAB0: @ 0x022EBAB0
	ldrb ip, [sp]
	cmp ip, #0
	cmpeq r3, #0
	ldrne r0, _022EBB48 @ =0x0237C96C
	movne r2, #0x80
	strbne r2, [r0]
	bne _022EBB30
	cmp r2, #0
	ldreq r2, _022EBB48 @ =0x0237C96C
	addeq r0, r0, #1
	strbeq r0, [r2]
	beq _022EBB30
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _022EBB20
_022EBAEC: @ jump table
	b _022EBB20 @ case 0
	b _022EBB00 @ case 1
	b _022EBB08 @ case 2
	b _022EBB10 @ case 3
	b _022EBB18 @ case 4
_022EBB00:
	mov r2, #0
	b _022EBB24
_022EBB08:
	mov r2, #1
	b _022EBB24
_022EBB10:
	mov r2, #2
	b _022EBB24
_022EBB18:
	mov r2, #3
	b _022EBB24
_022EBB20:
	mov r2, #0
_022EBB24:
	ldr r0, _022EBB48 @ =0x0237C96C
	add r2, r2, #0x90
	strb r2, [r0]
_022EBB30:
	ldrsh r2, [r1]
	ldr r0, _022EBB48 @ =0x0237C96C
	strh r2, [r0, #2]
	ldrsh r1, [r1, #2]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB48: .4byte 0x0237C96C
	arm_func_end ov29_022EBAB0

	arm_func_start ov29_022EBB4C
ov29_022EBB4C: @ 0x022EBB4C
	ldr r0, _022EBB64 @ =0x0237C96C
	mov r1, #0
	strb r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB64: .4byte 0x0237C96C
	arm_func_end ov29_022EBB4C

	arm_func_start ov29_022EBB68
ov29_022EBB68: @ 0x022EBB68
	ldr r1, _022EBB88 @ =0x0237C96C
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r1, [r1, #4]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_022EBB88: .4byte 0x0237C96C
	arm_func_end ov29_022EBB68

	arm_func_start ov29_022EBB8C
ov29_022EBB8C: @ 0x022EBB8C
	ldr r0, _022EBB94 @ =0x0237C96C
	bx lr
	.align 2, 0
_022EBB94: .4byte 0x0237C96C
	arm_func_end ov29_022EBB8C

	arm_func_start ov29_022EBB98
ov29_022EBB98: @ 0x022EBB98
	ldr r0, _022EBBA4 @ =0x0237C96C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_022EBBA4: .4byte 0x0237C96C
	arm_func_end ov29_022EBB98

	arm_func_start ov29_022EBBA8
ov29_022EBBA8: @ 0x022EBBA8
	push {r4, lr}
	mov r4, r0
	bl SetMonsterActionFields
	ldr r0, _022EBBE4 @ =0x0237C96C
	mov r1, #0
	ldrh r2, [r0]
	strh r2, [r4, #4]
	ldrh r2, [r0, #2]
	strh r2, [r4, #6]
	ldrh r0, [r0, #4]
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0
_022EBBE4: .4byte 0x0237C96C
	arm_func_end ov29_022EBBA8

	arm_func_start ov29_022EBBE8
ov29_022EBBE8: @ 0x022EBBE8
	push {r4, lr}
	mov r1, #0xc
	mov r4, r0
	bl SetMonsterActionFields
	ldr r0, _022EBC28 @ =0x0237C96C
	mov r1, #0
	ldrh r2, [r0]
	strh r2, [r4, #4]
	ldrh r2, [r0, #2]
	strh r2, [r4, #6]
	ldrh r0, [r0, #4]
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xe]
	pop {r4, pc}
	.align 2, 0
_022EBC28: .4byte 0x0237C96C
	arm_func_end ov29_022EBBE8

	arm_func_start ov29_022EBC2C
ov29_022EBC2C: @ 0x022EBC2C
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x1d
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	strb r5, [r6, #4]
	strb r4, [r6, #0xa]
	pop {r4, r5, r6, pc}
	arm_func_end ov29_022EBC2C

	arm_func_start SetActionRegularAttack
SetActionRegularAttack: @ 0x022EBC50
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x32
	mov r5, r0
	bl SetMonsterActionFields
	cmp r4, #0xff
	andne r0, r4, #7
	strbne r0, [r5, #2]
	pop {r3, r4, r5, pc}
	arm_func_end SetActionRegularAttack

	arm_func_start ov29_022EBC74
ov29_022EBC74: @ 0x022EBC74
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x17
	mov r5, r0
	bl SetMonsterActionFields
	cmp r4, #0xff
	andne r0, r4, #7
	strbne r0, [r5, #2]
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022EBC74

	arm_func_start ov29_022EBC98
ov29_022EBC98: @ 0x022EBC98
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x14
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	strb r5, [r6, #4]
	strb r4, [r6, #0xa]
	pop {r4, r5, r6, pc}
	arm_func_end ov29_022EBC98

	arm_func_start SetActionUseMoveAi
SetActionUseMoveAi: @ 0x022EBCBC
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0x15
	mov r6, r0
	mov r4, r2
	bl SetMonsterActionFields
	cmp r4, #0xff
	strb r5, [r6, #4]
	andne r0, r4, #7
	strbne r0, [r6, #2]
	pop {r4, r5, r6, pc}
	arm_func_end SetActionUseMoveAi

	arm_func_start ov29_022EBCE8
ov29_022EBCE8: @ 0x022EBCE8
	ldrh r1, [r0]
	cmp r1, #0x15
	ldrbeq r0, [r0, #4]
	bxeq lr
	cmp r1, #0x14
	ldrbeq r0, [r0, #0xa]
	mvnne r0, #0
	bx lr
	arm_func_end ov29_022EBCE8

	arm_func_start RunFractionalTurn
RunFractionalTurn: @ 0x022EBD08
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	mov r4, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	bl TrySpawnMonsterAndActivatePlusMinus
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	mov r0, r4
	bl RunLeaderTurn
	mov r4, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	cmp r4, #0
	beq _022EBD60
	bl DecrementWindCounter
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
_022EBD60:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	bl GetLeader
	mov r8, r0
	bl ov29_02348FD8
	mov r5, #0
	b _022EBECC
_022EBD80:
	ldr r0, _022EC2FC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb28]
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	beq _022EBEC8
	ldr r6, [r4, #0xb4]
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _022EBEC8
	bl IsFloorOver
	cmp r0, #0
	bne _022EBED4
	ldr r1, _022EC2FC @ =0x02353538
	mov r0, r4
	ldr r1, [r1]
	str r4, [r1, #0xc4]
	bl FUN_01FFBDF4
	bl TryActivateArtificialWeatherAbilities
	mov r1, #0
	mov r0, r4
	strb r1, [r6, #0x14e]
	bl CalcSpeedStageWrapper
	ldr r1, _022EC2FC @ =0x02353538
	ldr r3, _022EC300 @ =0x02352284
	ldr r2, [r1]
	mov r1, #0x32
	add r2, r2, #0x700
	ldrsh r2, [r2, #0x80]
	mla r1, r0, r1, r3
	lsl r0, r2, #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _022EBEC8
	ldrb r0, [r6, #0x152]
	cmp r0, #0
	bne _022EBEC8
	ldrh r0, [r6]
	tst r0, #0x8000
	bne _022EBEC8
	tst r0, #0x4000
	bicne r0, r0, #0x4000
	strhne r0, [r6]
	bne _022EBEC8
	mov r1, #0
	mov r0, r4
	strb r1, [r6, #0x14f]
	bl TickStatusAndHealthRegen
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	beq _022EBEC8
	mov r0, r4
	bl EnemyEvolution
	mov r0, r4
	mov r1, #1
	bl ov29_02307D54
	mov sb, #0
	mov r7, sb
	mov r6, sb
	b _022EBEC0
_022EBE80:
	mov r0, r4
	mov r1, r7
	bl RunMonsterAi
	bl IsFloorOver
	cmp r0, #0
	bne _022EBEC8
	mov r0, r4
	bl ExecuteMonsterAction
	cmp r0, #0
	beq _022EBEC8
	mov r0, r6
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	bne _022EBEC8
	add sb, sb, #1
_022EBEC0:
	cmp sb, #3
	blt _022EBE80
_022EBEC8:
	add r5, r5, #1
_022EBECC:
	cmp r5, #4
	blt _022EBD80
_022EBED4:
	mov sb, #0
_022EBED8:
	mov r3, #0
	mov sl, r3
	add r2, sp, #0
_022EBEE4:
	lsl r0, r3, #3
	str sl, [r2, r3, lsl #3]
	add r3, r3, #1
	add r1, r2, r3, lsl #3
	add r0, r2, r0
	str r1, [r0, #4]
	cmp r3, #3
	blt _022EBEE4
	str sl, [sp, #0x18]
	str sl, [sp, #0x1c]
	add r4, sp, #0x20
	add fp, sp, #0
	mov r6, #0
_022EBF18:
	ldr r0, _022EC2FC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	ldrne r1, [r7, #0xb4]
	ldrbne r0, [r1, #0x14e]
	cmpne r0, #0
	beq _022EBFA8
	ldrb r0, [r1, #7]
	cmp r0, #0
	strbne r6, [r1, #0x14f]
	strbne r6, [r1, #0x14e]
	bne _022EBFA8
	ldrsh r1, [r8, #6]
	ldrsh r0, [r7, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	ldrsh r2, [r8, #4]
	ldrsh r1, [r7, #4]
	mov r5, r0
	sub r0, r2, r1
	bl FUN_0208655C
	cmp r0, r5
	movle r0, r5
	cmp r0, #3
	movge r0, #2
	add r2, fp, r0, lsl #3
	ldr r1, [r2, #4]
	add r0, r4, sl, lsl #3
	str r7, [r4, sl, lsl #3]
	str r1, [r0, #4]
	str r0, [r2, #4]
_022EBFA8:
	add sl, sl, #1
	cmp sl, #4
	blt _022EBF18
	mov r7, #0
	add r5, sp, #0
	mov sl, #1
	mov r6, r7
	b _022EC00C
_022EBFC8:
	ldr r4, [r5]
	cmp r4, #0
	beq _022EC008
	ldr r2, [r4, #0xb4]
	mov r0, r4
	strb sl, [r2, #0x14f]
	mov r1, sl
	strb r7, [r2, #0x14e]
	bl RunMonsterAi
	mov r0, r4
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, r6
	bl TryForcedLoss
	mov r0, r4
	bl EntityIsValid
_022EC008:
	ldr r5, [r5, #4]
_022EC00C:
	cmp r5, #0
	bne _022EBFC8
	add sb, sb, #1
	cmp sb, #3
	blt _022EBED8
	bl IsFloorOver
	cmp r0, #0
	bne _022EC094
	mov r4, #0
	ldr r5, _022EC2FC @ =0x02353538
	mov r6, r4
_022EC038:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrbne r0, [r8, #0x14e]
	cmpne r0, #0
	beq _022EC088
	mov r0, r7
	bl ov29_0230FC24
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022EC088
	mov r0, r7
	bl EnemyEvolution
	strb r6, [r8, #0x14e]
_022EC088:
	add r4, r4, #1
	cmp r4, #4
	blt _022EC038
_022EC094:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	mov sb, #0
	mov r5, sb
	mov r7, sb
	ldr r6, _022EC300 @ =0x02352284
	mov fp, #0x32
	ldr r4, _022EC2FC @ =0x02353538
	b _022EC1C0
_022EC0BC:
	ldr r0, [r4]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb38]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022EC1BC
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
	ldr sl, [r8, #0xb4]
	ldr r1, [r4]
	mov r0, r8
	str r8, [r1, #0xc4]
	bl FUN_01FFBDF4
	bl TryActivateArtificialWeatherAbilities
	ldrh r0, [sl]
	tst r0, #0x8000
	bne _022EC1BC
	tst r0, #0x4000
	bicne r0, r0, #0x4000
	strhne r0, [sl]
	bne _022EC1BC
	mov r0, r8
	strb r7, [sl, #0x14e]
	bl CalcSpeedStageWrapper
	ldr r2, [r4]
	mla r1, r0, fp, r6
	add r0, r2, #0x700
	ldrsh r0, [r0, #0x80]
	lsl r0, r0, #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _022EC1BC
	ldrb r0, [sl, #0x152]
	cmp r0, #0
	bne _022EC1BC
	ldrh r1, [sl]
	mov r0, r8
	bic r1, r1, #0xc000
	strh r1, [sl]
	strb r5, [sl, #0x14f]
	bl TickStatusAndHealthRegen
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022EC1BC
	mov r0, r8
	bl EnemyEvolution
	mov r0, r8
	mov r1, #0
	bl RunMonsterAi
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
	mov r0, r8
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	bne _022EC1C8
_022EC1BC:
	add sb, sb, #1
_022EC1C0:
	cmp sb, #0x10
	blt _022EC0BC
_022EC1C8:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC23C
	mov r4, #0
	ldr r5, _022EC2FC @ =0x02353538
	mov r6, r4
_022EC1E0:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb38]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrbne r0, [r8, #0x14e]
	cmpne r0, #0
	beq _022EC230
	mov r0, r7
	bl ov29_0230FC24
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022EC230
	mov r0, r7
	bl EnemyEvolution
	strb r6, [r8, #0x14e]
_022EC230:
	add r4, r4, #1
	cmp r4, #0x10
	blt _022EC1E0
_022EC23C:
	bl IsFloorOver
	cmp r0, #0
	bne _022EC2F4
	ldr r4, _022EC2FC @ =0x02353538
	ldr r1, _022EC304 @ =0x023522B6
	ldr r0, [r4]
	add r0, r0, #0x700
	ldrsh r0, [r0, #0x80]
	add r0, r0, #1
	lsl r0, r0, #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _022EC2C4
	mov r5, #0
	b _022EC2A4
_022EC278:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb78]
	bl EntityIsValid
	cmp r0, #0
	beq _022EC2A0
	mov r0, #0
	bl DisplayActions
	b _022EC2AC
_022EC2A0:
	add r5, r5, #1
_022EC2A4:
	cmp r5, #0x14
	blt _022EC278
_022EC2AC:
	mov r0, #1
	mov r1, #0
	bl ov29_023354C4
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
_022EC2C4:
	ldr r1, _022EC2FC @ =0x02353538
	ldr r0, [r1]
	add r0, r0, #0x700
	ldrsh r2, [r0, #0x80]
	add r2, r2, #1
	strh r2, [r0, #0x80]
	ldr r0, [r1]
	add r0, r0, #0x700
	ldrsh r1, [r0, #0x80]
	cmp r1, #0x18
	moveq r1, #0
	strheq r1, [r0, #0x80]
_022EC2F4:
	add sp, sp, #0x40
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC2FC: .4byte 0x02353538
_022EC300: .4byte 0x02352284
_022EC304: .4byte 0x023522B6
	arm_func_end RunFractionalTurn

	arm_func_start RunLeaderTurn
RunLeaderTurn: @ 0x022EC308
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl GetLeader
	movs r4, r0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov29_02348FD8
	bl TryActivateArtificialWeatherAbilities
	mov r0, r4
	bl CalcSpeedStageWrapper
	ldr r1, _022EC600 @ =0x02353538
	ldr r3, _022EC604 @ =0x02352284
	ldr r2, [r1]
	mov r1, #0x32
	add r2, r2, #0x700
	mla r1, r0, r1, r3
	ldrsh r2, [r2, #0x80]
	lsl r0, r2, #1
	ldrsh r0, [r0, r1]
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0x152]
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r4
	mov r1, #1
	bl ov29_02307D54
_022EC380:
	bl GetLeader
	movs sb, r0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_01FFBDF4
	mov r0, #0
	bl DisplayActions
	cmp r0, #0
	bne _022EC3C8
	ldr r0, _022EC600 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x78b]
	cmp r0, #0
	ldrbeq r0, [r1, #0x78e]
	cmpeq r0, #0
	beq _022EC3C8
	mov r0, #0xc
	bl AdvanceFrame
_022EC3C8:
	cmp sb, #0
	moveq r0, #0
	beq _022EC3E8
	ldr r0, [sb]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
_022EC3E8:
	cmp r0, #0
	ldrne r0, [sb, #0xb4]
	movne r1, #0
	strbne r1, [r0, #0x101]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022EC600 @ =0x02353538
	mov r1, #0
	ldr r2, [r0]
	cmp sl, #0
	str sb, [r2, #0xc4]
	ldr r0, [r0]
	movne sl, r1
	str r1, [r0, #0xc8]
	bne _022EC434
	mov r0, sb
	bl TickStatusAndHealthRegen
_022EC434:
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov29_022E81F8
	mov r0, sb
	bl EnemyEvolution
	ldr r0, _022EC600 @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x11]
	bl ov29_022F0EDC
	ldr r0, _022EC600 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x11]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, #0
	bl TryForcedLoss
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0xb4]
	ldrh r0, [r1]
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	strhne r0, [r1]
	ldrhne r0, [r1]
	orrne r0, r0, #0x4000
	strhne r0, [r1]
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _022EC600 @ =0x02353538
	ldr r1, [r4]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	beq _022EC59C
	mov r7, #0
	strb r7, [r1, #0x10]
	mov r5, r7
	mov fp, r7
	b _022EC594
_022EC500:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022EC590
	ldr r8, [r6, #0xb4]
	ldrh r0, [r8]
	tst r0, #0x8000
	beq _022EC590
	bl IsFloorOver
	cmp r0, #0
	bne _022EC59C
	mov r0, r6
	bl TickStatusAndHealthRegen
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022EC590
	mov r0, r6
	bl EnemyEvolution
	mov r0, r6
	mov r1, r5
	bl RunMonsterAi
	mov r0, r6
	bl ExecuteMonsterAction
	mov r0, fp
	bl TryForcedLoss
	ldrh r0, [r8]
	bic r0, r0, #0x8000
	strh r0, [r8]
	ldrh r0, [r8]
	orr r0, r0, #0x4000
	strh r0, [r8]
_022EC590:
	add r7, r7, #1
_022EC594:
	cmp r7, #0x14
	blt _022EC500
_022EC59C:
	bl IsFloorOver
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022EC600 @ =0x02353538
	ldr r1, [r0]
	ldr r0, [r1, #0xc8]
	cmp r0, #0
	beq _022EC5DC
	bl ov29_022F3934
	ldr r0, _022EC600 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	mov sl, #1
	str r1, [r0, #0xc8]
	b _022EC380
_022EC5DC:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0x101]
	cmp r0, #0
	addne r0, r1, #0x700
	movne r1, #0
	strhne r1, [r0, #0x80]
	bne _022EC380
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC600: .4byte 0x02353538
_022EC604: .4byte 0x02352284
	arm_func_end RunLeaderTurn

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022EC608
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022EC62C
ov29_022EC62C: @ 0x022EC62C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	bl GetLeader
	cmp r6, r0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r7, _022EC6D8 @ =0x02353538
	ldr r1, [r7]
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r4, #0
	strb r4, [r1, #0x10]
	mov sb, r4
	mov r8, r4
	b _022EC6CC
_022EC668:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	cmpne r6, r5
	beq _022EC6C8
	ldr r0, [r5, #0xb4]
	ldrh r0, [r0]
	tst r0, #0x8000
	beq _022EC6C8
	bl IsFloorOver
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	mov r1, sb
	bl RunMonsterAi
	mov r0, r5
	bl ExecuteMonsterAction
	bl ov29_022EF9C8
	mov r0, r8
	bl TryForcedLoss
_022EC6C8:
	add r4, r4, #1
_022EC6CC:
	cmp r4, #0x14
	blt _022EC668
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EC6D8: .4byte 0x02353538
	arm_func_end ov29_022EC62C

	arm_func_start TrySpawnMonsterAndActivatePlusMinus
TrySpawnMonsterAndActivatePlusMinus: @ 0x022EC6DC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _022EC7E0 @ =0x02353538
	ldr r1, _022EC7E4 @ =0x023522B6
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsh r0, [r0, #0x80]
	lsl r0, r0, #1
	ldrsh r0, [r1, r0]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl TrySpawnMonsterAndTickSpawnCounter
	ldr r4, _022EC7E0 @ =0x02353538
	mov r8, #0
	ldr r0, [r4]
	mov fp, #1
	add r0, r0, #0x3000
	strb r8, [r0, #0xe34]
	ldr r0, [r4]
	mov r7, r8
	add r0, r0, #0x3000
	strb r8, [r0, #0xe35]
	ldr r0, [r4]
	mov r6, fp
	add r0, r0, #0x3000
	strb r8, [r0, #0xe36]
	ldr r0, [r4]
	mov r5, fp
	add r0, r0, #0x3000
	strb r8, [r0, #0xe37]
_022EC750:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022EC7C8
	ldr r0, [sb, #0xb4]
	mov r1, #0x3f
	strb r7, [r0, #0x152]
	ldrb r0, [r0, #6]
	cmp r0, #0
	moveq sl, fp
	mov r0, sb
	movne sl, r7
	bl AbilityIsActive
	cmp r0, #0
	ldrne r0, [r4]
	mov r1, #0x38
	addne r0, r0, sl
	addne r0, r0, #0x3000
	strbne r6, [r0, #0xe36]
	mov r0, sb
	bl AbilityIsActive
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, sl
	addne r0, r0, #0x3000
	strbne r5, [r0, #0xe34]
_022EC7C8:
	add r8, r8, #1
	cmp r8, #0x14
	blt _022EC750
	mov r0, #0
	bl TryForcedLoss
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EC7E0: .4byte 0x02353538
_022EC7E4: .4byte 0x023522B6
	arm_func_end TrySpawnMonsterAndActivatePlusMinus

	arm_func_start IsFloorOver
IsFloorOver: @ 0x022EC7E8
	push {r3, lr}
	ldr r0, _022EC858 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	popne {r3, pc}
	bl GetLeader
	cmp r0, #0
	ldreq r1, _022EC858 @ =0x02353538
	moveq r0, #1
	ldreq r1, [r1]
	strbeq r0, [r1, #0x758]
	popeq {r3, pc}
	ldr r0, _022EC858 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #1
	moveq r0, #2
	strbeq r0, [r1, #0x758]
	moveq r0, #1
	popeq {r3, pc}
	cmp r0, #2
	moveq r0, #2
	strbeq r0, [r1, #0x758]
	moveq r0, #1
	movne r0, #0
	pop {r3, pc}
	.align 2, 0
_022EC858: .4byte 0x02353538
	arm_func_end IsFloorOver

	arm_func_start ov29_022EC85C
ov29_022EC85C: @ 0x022EC85C
	push {r3, lr}
	bl GetForcedLossReason
	cmp r0, #0
	movne r0, #1
	popne {r3, pc}
	bl IsFloorOver
	pop {r3, pc}
	arm_func_end ov29_022EC85C

	arm_func_start ov29_022EC878
ov29_022EC878: @ 0x022EC878
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	ldr r1, _022EC8A4 @ =0x02353598
	strb r2, [r0, #5]
	mov r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_022EC8A4: .4byte 0x02353598
	arm_func_end ov29_022EC878

	arm_func_start ov29_022EC8A8
ov29_022EC8A8: @ 0x022EC8A8
	push {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r1
	mov r0, r2
	mov r1, #0x30
	mov r4, r3
	bl FUN_0208FEA4
	lsl r3, r1, #1
	and r0, r3, #0xff
	lsr r2, r0, #1
	ldr r1, _022EC998 @ =0x02352390
	mov r0, #0xc0
	strb r3, [r6, #4]
	add r2, r2, #1
	strb r2, [r6, #2]
	add r4, r4, #2
	smlabb r5, r5, r0, r1
	b _022EC96C
_022EC8F0:
	strb r4, [r6, #3]
	mov r8, #0x63
	ldr r7, _022EC99C @ =0x02353538
	b _022EC93C
_022EC900:
	ldrb r1, [r6, #3]
	mov r0, r8
	sub r1, r1, #1
	strb r1, [r6, #3]
	ldrb r1, [r6, #5]
	eor r1, r1, #1
	strb r1, [r6, #5]
	ldrb r3, [r6, #4]
	and r2, r1, #0xff
	ldr r1, [r7]
	add r2, r3, r2
	ldr r2, [r5, r2, lsl #2]
	add r1, r1, #0x1a000
	str r2, [r1, #0x230]
	bl AdvanceFrame
_022EC93C:
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _022EC900
	ldrb r0, [r6, #4]
	cmp r0, #0
	subne r0, r0, #2
	strbne r0, [r6, #4]
	mov r0, #0
	strb r0, [r6, #5]
	ldrb r0, [r6, #2]
	sub r0, r0, #1
	strb r0, [r6, #2]
_022EC96C:
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _022EC8F0
	ldr r0, _022EC99C @ =0x02353538
	mov r2, #0
	ldr r0, [r0]
	ldr r1, _022EC9A0 @ =0x02353598
	add r0, r0, #0x1a000
	str r2, [r0, #0x230]
	strb r2, [r1]
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EC998: .4byte 0x02352390
_022EC99C: .4byte 0x02353538
_022EC9A0: .4byte 0x02353598
	arm_func_end ov29_022EC8A8

	arm_func_start ov29_022EC9A4
ov29_022EC9A4: @ 0x022EC9A4
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r3, #0xc
	smulbb r3, r1, r3
	ldr r1, _022ECAD8 @ =0x022C6320
	mov r6, r0
	ldrb r4, [r1, r3]
	mov r5, r2
	cmp r4, #5
	beq _022ECA28
	cmp r5, #0
	bne _022EC9E0
	ldr r1, _022ECADC @ =0x00000BFD
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA18
_022EC9E0:
	cmp r5, #1
	bne _022EC9F4
	ldr r1, _022ECAE0 @ =0x00000BFE
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA18
_022EC9F4:
	cmp r5, #2
	bne _022ECA08
	ldr r1, _022ECAE4 @ =0x00000BFF
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA18
_022ECA08:
	cmp r5, #3
	bne _022ECA18
	mov r1, #0xc00
	bl LogMessageByIdWithPopupCheckUser
_022ECA18:
	mov r0, r4
	mov r1, #0
	bl ov29_022E5DBC
	b _022ECAD0
_022ECA28:
	bl ov29_02017D80
	mov r4, r0
	cmp r5, #0
	bne _022ECA48
	ldr r1, _022ECAE8 @ =0x00000C01
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA8C
_022ECA48:
	cmp r5, #1
	bne _022ECA60
	ldr r1, _022ECAEC @ =0x00000C02
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA8C
_022ECA60:
	cmp r5, #2
	bne _022ECA78
	ldr r1, _022ECAF0 @ =0x00000C03
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022ECA8C
_022ECA78:
	cmp r5, #3
	bne _022ECA8C
	ldr r1, _022ECAF4 @ =0x00000C04
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022ECA8C:
	add r0, sp, #0
	bl ov29_022EC878
	ldr r0, _022ECAF8 @ =0x02352380
	ldr r0, [r0, r5, lsl #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov29_022EAE14
	lsl r0, r5, #2
	add r0, r0, #8
	lsl r2, r0, #0x10
	asr r3, r2, #0x10
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x10
	bl ov29_022EC8A8
	mov r0, r4
	bl ov29_022EAE14
_022ECAD0:
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022ECAD8: .4byte 0x022C6320
_022ECADC: .4byte 0x00000BFD
_022ECAE0: .4byte 0x00000BFE
_022ECAE4: .4byte 0x00000BFF
_022ECAE8: .4byte 0x00000C01
_022ECAEC: .4byte 0x00000C02
_022ECAF0: .4byte 0x00000C03
_022ECAF4: .4byte 0x00000C04
_022ECAF8: .4byte 0x02352380
	arm_func_end ov29_022EC9A4

	arm_func_start ov29_022ECAFC
ov29_022ECAFC: @ 0x022ECAFC
	push {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl ov29_022EC878
	lsl r0, r4, #2
	add r0, r0, #2
	lsl r2, r0, #0x10
	asr r3, r2, #0x10
	add r0, sp, #0
	mov r1, r4
	mov r2, #8
	bl ov29_022EC8A8
	add sp, sp, #8
	pop {r4, pc}
	arm_func_end ov29_022ECAFC

	arm_func_start ov29_022ECB38
ov29_022ECB38: @ 0x022ECB38
	ldr r0, _022ECB44 @ =0x02353598
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_022ECB44: .4byte 0x02353598
	arm_func_end ov29_022ECB38

	arm_func_start DecrementWindCounter
DecrementWindCounter: @ 0x022ECB48
	push {r4, lr}
	bl GetLeader
	movs r4, r0
	moveq r0, #0
	beq _022ECB70
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_022ECB70:
	cmp r0, #0
	popeq {r4, pc}
	ldr r0, _022ECD7C @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsh r1, [r0, #0x84]
	cmp r1, #0
	subgt r1, r1, #1
	strhgt r1, [r0, #0x84]
	ldr r0, _022ECD7C @ =0x02353538
	ldr r1, [r0]
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	cmp r0, #1
	movlt r0, #3
	strblt r0, [r1, #0x79a]
	ldr r0, _022ECD7C @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x79a]
	cmp r0, #0
	bne _022ECC2C
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	cmp r0, #0xfa
	popge {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	popne {r4, pc}
	ldr r1, _022ECD7C @ =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x79a]
	pop {r4, pc}
_022ECC2C:
	cmp r0, #1
	bne _022ECC9C
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	cmp r0, #0x96
	popge {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	popne {r4, pc}
	ldr r1, _022ECD7C @ =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C @ =0x02353538
	mov r1, #2
	ldr r0, [r0]
	strb r1, [r0, #0x79a]
	pop {r4, pc}
_022ECC9C:
	cmp r0, #2
	add r0, r1, #0x700
	ldrsh r0, [r0, #0x84]
	bne _022ECD0C
	cmp r0, #0x32
	popge {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	popne {r4, pc}
	ldr r1, _022ECD7C @ =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C @ =0x02353538
	mov r1, #3
	ldr r0, [r0]
	strb r1, [r0, #0x79a]
	pop {r4, pc}
_022ECD0C:
	cmp r0, #1
	popge {r4, pc}
	bl ov29_022F2FE4
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl ov29_022F98B4
	mov r0, r4
	bl DisplayActions
	bl IsFloorOver
	cmp r0, #0
	popne {r4, pc}
	ldr r1, _022ECD7C @ =0x02353538
	mov r0, r4
	ldr r2, [r1]
	add r1, r2, #0x4000
	ldrsh r1, [r1, #0xd4]
	ldrb r2, [r2, #0x79a]
	bl ov29_022EC9A4
	ldr r0, _022ECD7C @ =0x02353538
	ldr r1, _022ECD80 @ =0x0000025D
	ldr r3, [r0]
	mov ip, #4
	mov r0, r4
	mov r2, r4
	strb ip, [r3, #0x79a]
	bl HandleFaint
	pop {r4, pc}
	.align 2, 0
_022ECD7C: .4byte 0x02353538
_022ECD80: .4byte 0x0000025D
	arm_func_end DecrementWindCounter

	arm_func_start ov29_022ECD84
ov29_022ECD84: @ 0x022ECD84
	push {r4, lr}
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, pc}
	ldr r0, [r4]
	cmp r0, #1
	popne {r4, pc}
	ldr r1, [r4, #0xb4]
	cmp r1, #0
	popeq {r4, pc}
	ldr r0, _022ECDBC @ =0x0237C974
	bl ov29_02300164
	pop {r4, pc}
	.align 2, 0
_022ECDBC: .4byte 0x0237C974
	arm_func_end ov29_022ECD84

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022ECDC0
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022ECDE4
ov29_022ECDE4: @ 0x022ECDE4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _022ECF34 @ =0x02353538
	mov r6, r1
	ldr r1, [r4]
	mov sb, r0
	add r1, r1, #0x20c
	mov r0, r6
	mov r8, r2
	mov r7, r3
	add r4, r1, #0x2c800
	mov r5, #0
	bl EntityIsValid
	cmp r0, #0
	beq _022ECE28
	ldr r0, [r6]
	cmp r0, #1
	ldreq r5, [r6, #0xb4]
_022ECE28:
	cmp r5, #0
	ldr r6, [r8, #0xb4]
	beq _022ECE44
	mov r0, r4
	mov r1, r5
	bl ov29_02300164
	b _022ECE6C
_022ECE44:
	ldr r1, _022ECF38 @ =0x0237C974
	ldrb r0, [r1]
	cmp r0, #0
	beq _022ECE60
	mov r0, r4
	bl FUN_02089694
	b _022ECE6C
_022ECE60:
	ldr r1, _022ECF3C @ =0x00000A41
	mov r0, r4
	bl FUN_020258B8
_022ECE6C:
	mov r1, r6
	add r0, r4, #0x1e
	bl ov29_02300164
	cmp r7, #0
	moveq r0, #0
	strbeq r0, [r4, #0x3c]
	beq _022ECE94
	mov r1, r7
	add r0, r4, #0x3c
	bl FUN_02089694
_022ECE94:
	mov r1, r8
	add r0, r4, #0x70
	bl ov29_022F89CC
	strh sb, [r4, #0x5a]
	ldrh r1, [r6, #0x62]
	ldr r0, _022ECF40 @ =0x000003E7
	ldr r3, _022ECF34 @ =0x02353538
	strh r1, [r4, #0x5e]
	ldrh r1, [r6, #0x64]
	strh r1, [r4, #0x60]
	ldrh r1, [r6, #0x66]
	strh r1, [r4, #0x62]
	ldr r1, [r6, #0x20]
	str r1, [r4, #0x64]
	ldrb r1, [r6, #0xa]
	strb r1, [r4, #0x6e]
	ldrsh r2, [r6, #0x12]
	ldrsh r1, [r6, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x68]
	ldrb r1, [r6, #0x1a]
	ldr r0, _022ECF38 @ =0x0237C974
	mov r2, #0x28
	strb r1, [r4, #0x6a]
	ldrb r5, [r6, #0x1b]
	mov r1, #0
	strb r5, [r4, #0x6b]
	ldrb r5, [r6, #0x1c]
	strb r5, [r4, #0x6c]
	ldrb r5, [r6, #0x1d]
	strb r5, [r4, #0x6d]
	ldr r5, [r3]
	ldrb r3, [r5, #0x748]
	strb r3, [r4, #0x5c]
	ldrb r3, [r5, #0x749]
	strb r3, [r4, #0x5d]
	bl FUN_02087308
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022ECF34: .4byte 0x02353538
_022ECF38: .4byte 0x0237C974
_022ECF3C: .4byte 0x00000A41
_022ECF40: .4byte 0x000003E7
	arm_func_end ov29_022ECDE4

	arm_func_start ov29_022ECF44
ov29_022ECF44: @ 0x022ECF44
	ldr r1, _022ECF6C @ =0x02353538
	ldr r0, _022ECF70 @ =0x0002CA66
	ldr r2, [r1]
	ldr r1, _022ECF74 @ =0x00000279
	ldrsh r0, [r2, r0]
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022ECF6C: .4byte 0x02353538
_022ECF70: .4byte 0x0002CA66
_022ECF74: .4byte 0x00000279
	arm_func_end ov29_022ECF44

	arm_func_start ov29_022ECF78
ov29_022ECF78: @ 0x022ECF78
	ldr r1, _022ECFAC @ =0x02353538
	ldr r0, _022ECFB0 @ =0x0002CA66
	ldr r2, [r1]
	ldr r1, _022ECFB4 @ =0x0000027A
	ldrsh r2, [r2, r0]
	cmp r2, r1
	addne r0, r1, #3
	cmpne r2, r0
	addne r0, r1, #1
	cmpne r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022ECFAC: .4byte 0x02353538
_022ECFB0: .4byte 0x0002CA66
_022ECFB4: .4byte 0x0000027A
	arm_func_end ov29_022ECF78

	arm_func_start ov29_022ECFB8
ov29_022ECFB8: @ 0x022ECFB8
	push {r4, lr}
	ldr r1, _022ED004 @ =0x02353538
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _022ECFF8
	add r0, r1, #0x20c
	add lr, r0, #0x2c800
	mov ip, #0xe
_022ECFDC:
	ldm lr!, {r0, r1, r2, r3}
	stm r4!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022ECFDC
	ldm lr, {r0, r1}
	stm r4, {r0, r1}
	pop {r4, pc}
_022ECFF8:
	mov r1, #0xe8
	bl FUN_02003250
	pop {r4, pc}
	.align 2, 0
_022ED004: .4byte 0x02353538
	arm_func_end ov29_022ECFB8

	arm_func_start SetForcedLossReason
SetForcedLossReason: @ 0x022ED008
	ldr r1, _022ED018 @ =0x02353538
	ldr r1, [r1]
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_022ED018: .4byte 0x02353538
	arm_func_end SetForcedLossReason

	arm_func_start GetForcedLossReason
GetForcedLossReason: @ 0x022ED01C
	ldr r0, _022ED02C @ =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
_022ED02C: .4byte 0x02353538
	arm_func_end GetForcedLossReason

	arm_func_start ov29_022ED030
ov29_022ED030: @ 0x022ED030
	push {r3, lr}
	sub sp, sp, #8
	ldr r1, _022ED0A0 @ =0x02352690
	ldr r2, _022ED0A4 @ =0x00000401
	ldr r3, [r1, #4]
	ldr ip, [r1]
	str r3, [sp, #4]
	add r0, sp, #0
	mov r1, #4
	mov r3, #0x300
	str ip, [sp]
	bl FUN_0201DEC4
	ldr r0, [sp, #4]
	mov r1, #0x400
	mov r2, #0x1d
	mov r3, #0
	bl FUN_0201E0B0
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldrh r2, [r1, #0xc]
	ldr r1, _022ED0A8 @ =0x0237C99C
	strh r2, [r1]
	bl FUN_0201E080
	ldr r0, _022ED0AC @ =0x0235359C
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #8
	pop {r3, pc}
	.align 2, 0
_022ED0A0: .4byte 0x02352690
_022ED0A4: .4byte 0x00000401
_022ED0A8: .4byte 0x0237C99C
_022ED0AC: .4byte 0x0235359C
	arm_func_end ov29_022ED030

	arm_func_start ov29_022ED0B0
ov29_022ED0B0: @ 0x022ED0B0
	ldr r0, _022ED0C0 @ =0x0235359C
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022ED0C0: .4byte 0x0235359C
	arm_func_end ov29_022ED0B0

	arm_func_start ov29_022ED0C4
ov29_022ED0C4: @ 0x022ED0C4
	ldr r0, _022ED0D0 @ =0x0235359C
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_022ED0D0: .4byte 0x0235359C
	arm_func_end ov29_022ED0C4

	arm_func_start ov29_022ED0D4
ov29_022ED0D4: @ 0x022ED0D4
	cmp r0, #0
	movlt r0, #0
	cmp r0, #0xff
	ldr r1, _022ED0F0 @ =0x0235359C
	movgt r0, #0xff
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_022ED0F0: .4byte 0x0235359C
	arm_func_end ov29_022ED0D4

	arm_func_start ov29_022ED0F4
ov29_022ED0F4: @ 0x022ED0F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022ED180 @ =0x0235359C
	mov r4, r0
	ldrb r7, [r1, #4]
	cmp r7, #0x80
	popls {r3, r4, r5, r6, r7, pc}
	cmp r7, #0x80
	mov r6, #0x80
	mov r5, #0x68
	ble _022ED174
	b _022ED144
_022ED120:
	sub r0, r7, r4
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #0x80
	movle r7, r6
	mov r0, r7
	bl ov29_022ED0D4
	mov r0, r5
	bl AdvanceFrame
_022ED144:
	cmp r7, #0x80
	bne _022ED120
	pop {r3, r4, r5, r6, r7, pc}
_022ED150:
	add r0, r7, r4
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #0x80
	movge r7, r6
	mov r0, r7
	bl ov29_022ED0D4
	mov r0, r5
	bl AdvanceFrame
_022ED174:
	cmp r7, #0x80
	bne _022ED150
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022ED180: .4byte 0x0235359C
	arm_func_end ov29_022ED0F4

	arm_func_start ov29_022ED184
ov29_022ED184: @ 0x022ED184
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x88
	ldr r3, _022ED7F0 @ =0x0235359C
	ldrb r3, [r3]
	cmp r3, #0
	beq _022ED7E8
	ldrb r4, [r2, #0x34]
	cmp r4, #0
	bne _022ED1D0
	ldrb r3, [r2, #0x23]
	cmp r3, #0
	ldrbeq r3, [r2, #0x24]
	cmpeq r3, #0
	ldrbeq r3, [r2, #0x30]
	cmpeq r3, #0
	movne r3, #1
	moveq r3, #0
	cmp r3, #0
	bne _022ED7E8
_022ED1D0:
	cmp r4, #0
	bne _022ED1E0
	cmp r1, #0xff
	bne _022ED370
_022ED1E0:
	add r0, sp, #0x48
	bl FUN_0201E730
	ldr r1, _022ED7F4 @ =0x0237C99C
	ldr r0, _022ED7F8 @ =0x020AFC70
	ldrh r2, [r1]
	mov r3, #5
	mov r1, #0x400
	strb r3, [sp, #0x84]
	strh r2, [sp, #0x5c]
	ldr r0, [r0]
	str r1, [sp, #0x68]
	ldr r1, [r0, #0xe0]
	ldr r0, _022ED7F0 @ =0x0235359C
	add r1, r1, #0x3a00
	str r1, [sp, #0x6c]
	ldrb r6, [r0, #4]
	mov r5, #0
	mov r3, #0x30
	mov r4, #4
	mov r1, #0x100
	mov r2, #0x22
	add r0, sp, #0x48
	strb r6, [sp, #0x77]
	strh r5, [sp, #0x5e]
	strh r5, [sp, #0x60]
	strh r4, [sp, #0x62]
	strh r4, [sp, #0x64]
	strh r3, [sp, #0x72]
	strb r2, [sp, #0x86]
	strh r5, [sp, #0x48]
	strh r5, [sp, #0x4a]
	strh r1, [sp, #0x4c]
	strh r5, [sp, #0x4e]
	strh r5, [sp, #0x50]
	strh r3, [sp, #0x52]
	strh r1, [sp, #0x54]
	strh r3, [sp, #0x56]
	bl FUN_0201F2A0
	mov r4, r5
	mov r3, #0x90
	mov r2, #0x100
	mov r1, #0xc0
	add r0, sp, #0x48
	strh r4, [sp, #0x48]
	strh r3, [sp, #0x4a]
	strh r2, [sp, #0x4c]
	strh r3, [sp, #0x4e]
	strh r4, [sp, #0x50]
	strh r1, [sp, #0x52]
	strh r2, [sp, #0x54]
	strh r1, [sp, #0x56]
	bl FUN_0201F2A0
	mov r3, #0x30
	mov r2, #0x50
	mov r1, #0x90
	add r0, sp, #0x48
	strh r4, [sp, #0x48]
	strh r3, [sp, #0x4a]
	strh r2, [sp, #0x4c]
	strh r3, [sp, #0x4e]
	strh r4, [sp, #0x50]
	strh r1, [sp, #0x52]
	strh r2, [sp, #0x54]
	strh r1, [sp, #0x56]
	bl FUN_0201F2A0
	mov r3, #0xb0
	mov r2, #0x30
	mov r1, #0x100
	mov r0, #0x90
	strh r3, [sp, #0x48]
	strh r2, [sp, #0x4a]
	strh r1, [sp, #0x4c]
	strh r2, [sp, #0x4e]
	strh r3, [sp, #0x50]
	strh r0, [sp, #0x52]
	strh r1, [sp, #0x54]
	strh r0, [sp, #0x56]
	add r0, sp, #0x48
	bl FUN_0201F2A0
	mov r6, #0x50
	mov r5, #0x30
	mov r4, #0xb0
	mov r3, #0x90
	mov r2, #0
	mov r1, #0x60
	add r0, sp, #0x48
	strh r6, [sp, #0x48]
	strh r5, [sp, #0x4a]
	strh r4, [sp, #0x4c]
	strh r5, [sp, #0x4e]
	strh r6, [sp, #0x50]
	strh r3, [sp, #0x52]
	strh r4, [sp, #0x54]
	strh r3, [sp, #0x56]
	strh r2, [sp, #0x5e]
	strh r2, [sp, #0x60]
	strh r1, [sp, #0x62]
	strh r1, [sp, #0x64]
	bl FUN_0201F2A0
	b _022ED7E8
_022ED370:
	ldr r6, _022ED7FC @ =0x02352698
	add r5, sp, #0
	mov r4, #4
_022ED37C:
	ldrh r3, [r6], #2
	subs r4, r4, #1
	strh r3, [r5], #2
	bne _022ED37C
	mov r3, #0x1c
	smlabb r3, r1, r3, r0
	ldr r1, [r3, #0xc]
	add r0, sp, #8
	strh r1, [sp]
	ldr r1, [r3, #0x10]
	strh r1, [sp, #2]
	ldr r1, [r3, #0x14]
	strh r1, [sp, #4]
	ldr r1, [r3, #0x18]
	strh r1, [sp, #6]
	ldrsh r5, [r2, #0xa]
	ldrsh r4, [r2, #8]
	bl FUN_0201E730
	ldrsh r3, [sp, #2]
	ldrsh r6, [sp, #4]
	ldrsh lr, [sp]
	sub r3, r3, r5
	ldrsh r2, [sp, #6]
	mov r1, #5
	mov r0, #0x400
	ldr ip, _022ED7F8 @ =0x020AFC70
	lsl r3, r3, #0x10
	sub r6, r6, r4
	sub lr, lr, r4
	asr r4, r3, #0x10
	sub r5, r2, r5
	lsl r3, r6, #0x10
	lsl r6, r5, #0x10
	ldr r7, _022ED7F4 @ =0x0237C99C
	strb r1, [sp, #0x44]
	ldrh r1, [r7]
	ldr r5, [ip]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0xe0]
	lsl r2, lr, #0x10
	add r5, r0, #0x3a00
	str r5, [sp, #0x2c]
	strh r1, [sp, #0x1c]
	ldr r0, _022ED7F0 @ =0x0235359C
	mov r1, #0
	ldrb ip, [r0, #4]
	mov r7, #4
	mov r5, #0x30
	mov r0, #0x22
	strh r5, [sp, #0x32]
	strb ip, [sp, #0x37]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r7, [sp, #0x22]
	strh r7, [sp, #0x24]
	strb r0, [sp, #0x46]
	cmp r4, #0
	asr r5, r2, #0x10
	asr r7, r3, #0x10
	asr r6, r6, #0x10
	ble _022ED4A4
	lsl r0, r4, #0x10
	asr r2, r0, #0x10
	mov r3, #0x100
	add r0, sp, #8
	strh r1, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r1, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl FUN_0201F2A0
_022ED4A4:
	cmp r6, #0
	movlt r0, #0
	movge r0, r6
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	rsb r0, r1, #0xc0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r0, #0
	ble _022ED508
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	mov ip, #0
	mov r3, #0x100
	add r0, sp, #8
	strh ip, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh ip, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl FUN_0201F2A0
_022ED508:
	cmp r4, #0
	movlt r0, #0
	movge r0, r4
	lsl r0, r0, #0x10
	sub r1, r6, r0, asr #16
	cmp r1, #0xc0
	movgt r1, #0xc0
	asr ip, r0, #0x10
	cmp r5, #0
	lsl r0, r1, #0x10
	ble _022ED574
	add r1, ip, r0, asr #16
	lsl r0, r5, #0x10
	asr r2, r0, #0x10
	mov r3, #0
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	add r0, sp, #8
	strh r3, [sp, #8]
	strh ip, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh ip, [sp, #0xe]
	strh r3, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl FUN_0201F2A0
_022ED574:
	cmp r4, #0
	movlt r0, #0
	movge r0, r4
	lsl r0, r0, #0x10
	rsb r1, r7, #0x100
	lsl r2, r1, #0x10
	sub r3, r6, r0, asr #16
	cmp r3, #0xc0
	asr r2, r2, #0x10
	movgt r3, #0xc0
	asr r1, r0, #0x10
	cmp r2, #0
	lsl r0, r3, #0x10
	ble _022ED5EC
	add r3, r7, r2
	add r2, r1, r0, asr #16
	lsl r0, r3, #0x10
	asr r3, r0, #0x10
	lsl r0, r2, #0x10
	asr r2, r0, #0x10
	add r0, sp, #8
	strh r7, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r7, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl FUN_0201F2A0
_022ED5EC:
	mvn r0, #0x1f
	cmp r5, r0
	cmpgt r4, r0
	ble _022ED660
	cmp r5, #0x120
	cmplt r4, #0xe0
	bge _022ED660
	add r0, r5, #0x20
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	mov ip, #0
	mov r3, #0x30
	add r1, r4, #0x20
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	add r0, sp, #8
	strh ip, [sp, #0x1e]
	strh ip, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r3, [sp, #0x24]
	strh r5, [sp, #8]
	strh r4, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl FUN_0201F2A0
_022ED660:
	sub r7, r7, #0x20
	lsl r0, r7, #0x10
	mvn r1, #0x1f
	cmp r1, r0, asr #16
	asr r2, r0, #0x10
	bge _022ED6E4
	cmp r4, r1
	ble _022ED6E4
	cmp r2, #0x120
	cmplt r4, #0xe0
	bge _022ED6E4
	add r0, r2, #0x20
	lsl r0, r0, #0x10
	asr ip, r0, #0x10
	mov r1, #0x30
	add r3, r4, #0x20
	lsl r0, r3, #0x10
	asr r3, r0, #0x10
	mov lr, #0
	add r0, sp, #8
	strh r1, [sp, #0x1e]
	strh lr, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x24]
	strh r2, [sp, #8]
	strh r4, [sp, #0xa]
	strh ip, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r2, [sp, #0x10]
	strh r3, [sp, #0x12]
	strh ip, [sp, #0x14]
	strh r3, [sp, #0x16]
	bl FUN_0201F2A0
_022ED6E4:
	sub r4, r6, #0x20
	lsl r0, r4, #0x10
	mvn r2, #0x1f
	asr r1, r0, #0x10
	cmp r5, r2
	cmpgt r1, r2
	ble _022ED764
	cmp r5, #0x120
	cmplt r1, #0xe0
	bge _022ED764
	add r0, r5, #0x20
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	mov r6, #0x30
	add r2, r1, #0x20
	lsl r0, r2, #0x10
	asr r2, r0, #0x10
	mov ip, #0
	add r0, sp, #8
	strh ip, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r6, [sp, #0x24]
	strh r5, [sp, #8]
	strh r1, [sp, #0xa]
	strh r3, [sp, #0xc]
	strh r1, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r2, [sp, #0x12]
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	bl FUN_0201F2A0
_022ED764:
	lsl r0, r7, #0x10
	lsl r1, r4, #0x10
	mvn r2, #0x1f
	cmp r2, r0, asr #16
	asr r5, r0, #0x10
	asr r4, r1, #0x10
	bge _022ED7E8
	cmp r4, r2
	ble _022ED7E8
	cmp r5, #0x120
	cmplt r4, #0xe0
	bge _022ED7E8
	add r0, r5, #0x20
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	mov r3, #0x30
	add r1, r4, #0x20
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	add r0, sp, #8
	strh r3, [sp, #0x1e]
	strh r3, [sp, #0x20]
	strh r3, [sp, #0x22]
	strh r3, [sp, #0x24]
	strh r5, [sp, #8]
	strh r4, [sp, #0xa]
	strh r2, [sp, #0xc]
	strh r4, [sp, #0xe]
	strh r5, [sp, #0x10]
	strh r1, [sp, #0x12]
	strh r2, [sp, #0x14]
	strh r1, [sp, #0x16]
	bl FUN_0201F2A0
_022ED7E8:
	add sp, sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022ED7F0: .4byte 0x0235359C
_022ED7F4: .4byte 0x0237C99C
_022ED7F8: .4byte 0x020AFC70
_022ED7FC: .4byte 0x02352698
	arm_func_end ov29_022ED184

	arm_func_start ov29_022ED800
ov29_022ED800: @ 0x022ED800
	push {r3, lr}
	cmp r0, #0
	popeq {r3, pc}
	add r3, r0, #0xe900
	ldrh r3, [r3, #0xec]
	tst r3, #1
	popne {r3, pc}
	add r0, r0, #0x224
	add r0, r0, #0xac00
	bl ov29_022ED184
	pop {r3, pc}
	arm_func_end ov29_022ED800

	arm_func_start ov29_022ED82C
ov29_022ED82C: @ 0x022ED82C
	push {r4, lr}
	add r1, r1, #0xc1
	add r1, r1, #0x3400
	lsl r1, r1, #0x10
	mov r4, r0
	lsr r0, r1, #0x10
	bl FUN_020258C4
	mov r1, r0
	mov r0, r4
	bl FUN_02089694
	pop {r4, pc}
	arm_func_end ov29_022ED82C

	arm_func_start ov29_022ED858
ov29_022ED858: @ 0x022ED858
	cmp r1, #0
	strne r1, [r0, #0x10]
	strbne r2, [r1, #0x20]
	bx lr
	arm_func_end ov29_022ED858

	arm_func_start ov29_022ED868
ov29_022ED868: @ 0x022ED868
	ldr r0, _022ED880 @ =0x02353538
	ldr ip, _022ED884 @ =ov29_02344148
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bx ip
	.align 2, 0
_022ED880: .4byte 0x02353538
_022ED884: .4byte ov29_02344148
	arm_func_end ov29_022ED868

	arm_func_start ov29_022ED888
ov29_022ED888: @ 0x022ED888
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _022ED96C @ =0x023526A0
	mov sl, #0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	add r6, sp, #4
	strh r1, [sp]
	strh r0, [sp, #2]
	mov r4, #6
	mov fp, #2
	mov r7, sl
_022ED8B8:
	lsl r0, sl, #0x10
	mov r8, r7
	asr r5, r0, #0x10
_022ED8C4:
	mov r0, r8
	mov r1, sl
	bl GetTileSafe
	mov sb, r0
	ldrh r0, [sb, #2]
	tst r0, #4
	beq _022ED94C
	strh r8, [sp, #4]
	strh r5, [sp, #6]
	ldrh r0, [sb, #2]
	tst r0, #0x40
	movne r0, r4
	bne _022ED8FC
	bl ov29_022E7A30
_022ED8FC:
	cmp r0, #0x11
	mov r1, r6
	bne _022ED92C
	mov r2, fp
	mov r3, #0
	bl ov29_022E2260
	movs r1, r0
	beq _022ED94C
	mov r0, sb
	mov r2, #1
	bl ov29_022ED858
	b _022ED94C
_022ED92C:
	mov r2, #0
	mov r3, r2
	bl ov29_022E2260
	movs r1, r0
	beq _022ED94C
	mov r0, sb
	mov r2, #0
	bl ov29_022ED858
_022ED94C:
	add r8, r8, #1
	cmp r8, #0x38
	blt _022ED8C4
	add sl, sl, #1
	cmp sl, #0x20
	blt _022ED8B8
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022ED96C: .4byte 0x023526A0
	arm_func_end ov29_022ED888

	arm_func_start ov29_022ED970
ov29_022ED970: @ 0x022ED970
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r1
	mov r6, r2
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r5, r3
	bl GetTileSafe
	mov r4, r0
	add r1, sp, #0
	mov r0, r8
	mov r3, r5
	mov r2, #0
	strh r7, [sp]
	strh r6, [sp, #2]
	bl ov29_022E2260
	movs r1, r0
	beq _022ED9C8
	ldrb r2, [sp, #0x20]
	mov r0, r4
	bl ov29_022ED858
_022ED9C8:
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022ED970

	arm_func_start ov29_022ED9D0
ov29_022ED9D0: @ 0x022ED9D0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r0, _022EDBB8 @ =0x02353538
	ldr r1, _022EDBBC @ =0x0001A21E
	ldr r0, [r0]
	ldrsh r2, [r0, r1]
	add r1, r0, #0x1a000
	ldrb r8, [r1, #0x244]
	sub sb, r2, #5
	b _022EDB9C
_022ED9F8:
	ldr r1, _022EDBC0 @ =0x0001A21C
	mov r2, #0x18
	ldrsh r0, [r0, r1]
	mul sl, sb, r2
	sub r7, r0, #6
	mov r0, r1
	add fp, r0, #8
	ldr r0, _022EDBC4 @ =0x0000013E
	ldr r6, _022EDBC8 @ =0x0237C864
	sub r0, r0, #0x1f
	str r0, [sp, #4]
	mov r0, r1
	add r5, r0, #0xa
	ldr r4, _022EDBCC @ =0xFFFF000F
	b _022EDB7C
_022EDA34:
	mov r0, #0
	str r0, [sp]
	mov r0, r7
	mov r1, sb
	bl GetTile
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _022EDA74
	ldr r1, [r2]
	cmp r1, #2
	bne _022EDA74
	ldrb r1, [r2, #0x20]
	cmp r1, #0
	cmpeq r8, #0
	movne r1, #1
	strne r1, [sp]
_022EDA74:
	ldrh r0, [r0]
	tst r0, #0x200
	movne r0, #1
	strne r0, [sp]
	ldr r0, [sp]
	cmp r0, #0
	beq _022EDB78
	ldr r0, _022EDBB8 @ =0x02353538
	ldr r3, [r0]
	mov r0, #0x18
	mul r2, r7, r0
	ldrsh r1, [r3, fp]
	ldrsh r0, [r3, r5]
	sub r1, r2, r1
	sub r2, sl, r0
	cmp r1, r4, asr #11
	cmpge r2, r4, asr #11
	blt _022EDB78
	ldr r0, [sp, #4]
	cmp r1, r0
	cmple r2, #0xe0
	bgt _022EDB78
	ldrh ip, [r6]
	add r0, r2, #4
	add r1, r1, #4
	bic ip, ip, #0xc00
	strh ip, [r6]
	ldrh ip, [r6, #6]
	and r3, r1, r4, lsr #23
	lsl r0, r0, #0x14
	and ip, ip, r4
	strh ip, [r6, #6]
	ldrh ip, [r6, #6]
	mov r1, r6
	mov r2, #0
	orr r0, ip, r0, lsr #16
	strh r0, [r6, #6]
	ldrh r0, [r6, #2]
	and r0, r0, r4, asr #7
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	orr r0, r0, r3
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	bic r0, r0, #0xc00
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	orr r0, r0, #0xc00
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	bic r0, r0, #0xf000
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	orr r0, r0, #0xa000
	strh r0, [r6, #4]
	ldrh r0, [r6, #4]
	and r0, r0, r4, asr #6
	strh r0, [r6, #4]
	ldrh r3, [r6, #4]
	orr r0, r3, #0x3e
	orr r0, r0, #0x100
	strh r0, [r6, #4]
	ldr r0, _022EDBD0 @ =0x020AFC4C
	ldr r0, [r0]
	bl FUN_0201B9F8
_022EDB78:
	add r7, r7, #1
_022EDB7C:
	ldr r0, _022EDBB8 @ =0x02353538
	ldr r1, _022EDBC0 @ =0x0001A21C
	ldr r0, [r0]
	ldrsh r1, [r0, r1]
	add r1, r1, #6
	cmp r7, r1
	blt _022EDA34
	add sb, sb, #1
_022EDB9C:
	ldr r1, _022EDBBC @ =0x0001A21E
	ldrsh r1, [r0, r1]
	add r1, r1, #5
	cmp sb, r1
	blt _022ED9F8
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EDBB8: .4byte 0x02353538
_022EDBBC: .4byte 0x0001A21E
_022EDBC0: .4byte 0x0001A21C
_022EDBC4: .4byte 0x0000013E
_022EDBC8: .4byte 0x0237C864
_022EDBCC: .4byte 0xFFFF000F
_022EDBD0: .4byte 0x020AFC4C
	arm_func_end ov29_022ED9D0

	arm_func_start ov29_022EDBD4
ov29_022EDBD4: @ 0x022EDBD4
	push {r3, r4, r5, lr}
	ldr lr, _022EDC28 @ =0x02353538
	ldrsh r5, [r0]
	ldr r3, _022EDC2C @ =0x00012AAA
	ldr r4, [lr]
	add ip, r3, #2
	strh r5, [r4, r3]
	ldrsh r4, [r0, #2]
	ldr r0, [lr]
	mov r3, #1
	strh r4, [r0, ip]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r1, [r0, #0xaae]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r2, [r0, #0xaaf]
	ldr r0, [lr]
	add r0, r0, #0x12000
	strb r3, [r0, #0xaa8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022EDC28: .4byte 0x02353538
_022EDC2C: .4byte 0x00012AAA
	arm_func_end ov29_022EDBD4

	arm_func_start ov29_022EDC30
ov29_022EDC30: @ 0x022EDC30
	push {r3, lr}
	mov r1, r0
	ldrsh r0, [r1]
	ldrsh r1, [r1, #2]
	bl GetTileSafe
	ldrh r2, [r0]
	tst r2, #0x200
	movne r0, #0
	popne {r3, pc}
	ldrb r1, [r0, #7]
	cmp r1, #0xff
	moveq r0, #0
	popeq {r3, pc}
	tst r2, #8
	movne r0, #0
	popne {r3, pc}
	tst r2, #0x20
	movne r0, #0
	popne {r3, pc}
	ldrh r1, [r0]
	and r1, r1, #3
	cmp r1, #1
	movne r0, #0
	popne {r3, pc}
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022EDCB4
	ldr r0, [r0]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
_022EDCB4:
	mov r0, #1
	pop {r3, pc}
	arm_func_end ov29_022EDC30

	arm_func_start ov29_022EDCBC
ov29_022EDCBC: @ 0x022EDCBC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	ldrsh r0, [r8]
	ldrsh r1, [r8, #2]
	mov r6, r2
	mov r5, r3
	bl GetTileSafe
	mov r4, r0
	cmp r7, #0x19
	blo _022EDD14
	mov sb, #0
	b _022EDD04
_022EDCF0:
	bl ov29_022E7A30
	mov r7, r0
	cmp r7, #0x11
	bne _022EDD0C
	add sb, sb, #1
_022EDD04:
	cmp sb, #0x1e
	blt _022EDCF0
_022EDD0C:
	cmp sb, #0x1e
	moveq r7, #0x10
_022EDD14:
	ldrh r1, [r4]
	tst r1, #0x200
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0xff
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r1, #8
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	tst r1, #0x20
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrh r0, [r4]
	and r0, r0, #3
	cmp r0, #1
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022EDDA0
	ldr r1, [r0]
	cmp r1, #2
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov29_022E1608
	strb r7, [r0]
	ldr r0, [r4, #0x10]
	bl ov29_022E1608
	strb r6, [r0, #1]
	ldr r1, [r4, #0x10]
	mov r0, #1
	strb r5, [r1, #0x20]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022EDDA0:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	mov r3, #0
	bl ov29_022E2260
	movs r1, r0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	mov r2, r5
	bl ov29_022ED858
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022EDCBC

	arm_func_start ov29_022EDDD4
ov29_022EDDD4: @ 0x022EDDD4
	push {r3, r4, r5, lr}
	ldr r1, _022EDE6C @ =0x02353538
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, #0x12000
	ldrb r2, [r0, #0xaa8]
	cmp r2, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r2, #0
	strb r2, [r0, #0xaa8]
	ldr r3, [r1]
	ldr r0, _022EDE70 @ =0x00012AAA
	add r2, r3, #0x12000
	ldrb r1, [r2, #0xaae]
	ldrb r2, [r2, #0xaaf]
	add r0, r3, r0
	mov r3, #1
	bl ov29_022EDCBC
	movs r4, r0
	ldr r1, _022EDE70 @ =0x00012AAA
	beq _022EDE48
	ldr r0, _022EDE6C @ =0x02353538
	ldr r2, _022EDE74 @ =0x00000E57
	ldr r3, [r0]
	mov r0, r5
	add r1, r3, r1
	bl LogMessageByIdWithPopupCheckUserUnknown
	b _022EDE60
_022EDE48:
	ldr r0, _022EDE6C @ =0x02353538
	ldr r2, _022EDE78 @ =0x00000E58
	ldr r3, [r0]
	mov r0, r5
	add r1, r3, r1
	bl LogMessageByIdWithPopupCheckUserUnknown
_022EDE60:
	bl ov29_02336F4C
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022EDE6C: .4byte 0x02353538
_022EDE70: .4byte 0x00012AAA
_022EDE74: .4byte 0x00000E57
_022EDE78: .4byte 0x00000E58
	arm_func_end ov29_022EDDD4

	arm_func_start ov29_022EDE7C
ov29_022EDE7C: @ 0x022EDE7C
	push {r4, lr}
	mov r2, r0
	mov r4, r1
	ldrsh r0, [r2]
	ldrsh r1, [r2, #2]
	bl GetTileSafe
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _022EDED4
	ldr r1, [r2]
	cmp r1, #2
	bne _022EDECC
	mov r1, #0
	str r1, [r2]
	str r1, [r0, #0x10]
	cmp r4, #0
	beq _022EDEC4
	bl ov29_02336F4C
_022EDEC4:
	mov r0, #1
	pop {r4, pc}
_022EDECC:
	mov r0, #0
	pop {r4, pc}
_022EDED4:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov29_022EDE7C

	arm_func_start ov29_022EDEDC
ov29_022EDEDC: @ 0x022EDEDC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl GetTile
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _022EDF50
	ldr r0, [r1]
	cmp r0, #2
	bne _022EDF48
	ldr r0, _022EDF58 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x13]
	cmp r0, #0
	bne _022EDF34
	mov r0, #1
	strb r0, [r1, #0x20]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl ov29_023391EC
_022EDF34:
	cmp r4, #0
	beq _022EDF40
	bl ov29_02336F4C
_022EDF40:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022EDF48:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022EDF50:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022EDF58: .4byte 0x02353538
	arm_func_end ov29_022EDEDC

	arm_func_start ov29_022EDF5C
ov29_022EDF5C: @ 0x022EDF5C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02024FC8
	bl ov29_0234B034
	add r0, r0, r5, lsl #2
	str r4, [r0, #0x10]
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022EDF5C

	arm_func_start ov29_022EDF7C
ov29_022EDF7C: @ 0x022EDF7C
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl FUN_02024FC8
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x10]
	pop {r4, r5, r6, pc}
	arm_func_end ov29_022EDF7C

	arm_func_start ov29_022EDFA0
ov29_022EDFA0: @ 0x022EDFA0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	mov sl, r0
	ldrsh r0, [sb]
	ldrsh r1, [sb, #2]
	mov fp, r2
	mov r7, r3
	bl GetTileSafe
	ldr r4, [r0, #0x10]
	str r0, [sp, #0x10]
	cmp r4, #0
	beq _022EE2F4
	ldr r0, [r4]
	cmp r0, #2
	bne _022EE2F4
	mov r0, r4
	bl ov29_022E1608
	mov r6, r0
	ldrb r1, [r6]
	mov r0, #0
	bl ov29_022EDF5C
	ldr r0, [sp, #0x10]
	ldr r5, [r0, #0xc]
	cmp r5, #0
	ldrne r0, [r5]
	cmpne r0, #1
	ldrb r0, [r4, #0x20]
	movne r5, #0
	cmp r5, #0
	str r0, [sp, #0xc]
	mov r0, #1
	strb r0, [r4, #0x20]
	beq _022EE1D8
	mov r0, r5
	bl ov29_022F9840
	cmp r7, #0
	ldrbne r0, [r6]
	cmpne r0, #0x11
	beq _022EE148
	cmp r0, #0x17
	mov r8, #0
	moveq r7, #0x64
	beq _022EE05C
	mov r0, #0x64
	bl DungeonRandInt
	mov r7, r0
_022EE05C:
	mov r0, r5
	mov r1, #0x23
	bl ItemIsActive
	cmp r0, #0
	ldrne r8, _022EE2FC @ =0x00000E59
	bne _022EE0C8
	mov r0, r5
	mov r1, #0x26
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022EE0C8
	mov r0, #0x32
	bl DungeonRandOutcome
	cmp r0, #0
	beq _022EE0C8
	mov r1, sl
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	bl ov29_023361D4
	cmp r0, #0
	ldrne r8, _022EE300 @ =0x00000E5B
	bne _022EE0C8
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
	ldr r8, _022EE304 @ =0x00000E5A
_022EE0C8:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq _022EE0EC
	ldr r0, _022EE308 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x244]
	cmp r0, #0
	beq _022EE100
_022EE0EC:
	cmp r7, #0
	bge _022EE110
	cmp r8, #0
	ldreq r8, _022EE30C @ =0x00000E5C
	b _022EE110
_022EE100:
	cmp r7, #0xf
	bge _022EE110
	cmp r8, #0
	ldreq r8, _022EE30C @ =0x00000E5C
_022EE110:
	cmp r8, #0
	beq _022EE1D8
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE12C
	bl ov29_02336F4C
_022EE12C:
	mov r0, sl
	mov r1, r5
	mov r2, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp fp, #0
	bne _022EE1D8
	b _022EE2F4
_022EE148:
	mov r0, r5
	mov r1, #0x26
	mov r7, #0
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022EE1D8
	ldr r0, _022EE310 @ =0x022C445C
	ldrsh r0, [r0]
	bl DungeonRandOutcome
	cmp r0, #0
	beq _022EE1A4
	mov r1, sl
	mov r0, #1
	mov r2, r7
	bl SubstitutePlaceholderStringTags
	bl ov29_023361D4
	cmp r0, #0
	ldrne r7, _022EE300 @ =0x00000E5B
	bne _022EE1A4
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
	ldr r7, _022EE304 @ =0x00000E5A
_022EE1A4:
	cmp r7, #0
	beq _022EE1D8
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE1C0
	bl ov29_02336F4C
_022EE1C0:
	mov r0, sl
	mov r1, r5
	mov r2, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp fp, #0
	beq _022EE2F4
_022EE1D8:
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	beq _022EE264
	mov r0, #0
	mov r1, #0x11c
	bl ov29_022E56A0
	bl ov29_02336F4C
	ldrb r2, [r6]
	mov r0, sl
	mov r1, sb
	bl ov29_022E58B0
	mov r0, r4
	bl ov29_022E1608
	mov r6, r0
	mov r0, #0
	ldrb r1, [r6]
	bl ov29_022EDF5C
	ldr r0, _022EE308 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	beq _022EE248
	ldr r1, _022EE314 @ =0x00000E5D
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022EE264
_022EE248:
	ldrb r1, [r6]
	mov r0, sl
	add r1, r1, #0x51
	add r1, r1, #0xb00
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl LogMessageByIdWithPopupCheckUser
_022EE264:
	cmp r5, #0
	beq _022EE29C
	ldrb r0, [r6, #1]
	cmp r0, #2
	bne _022EE288
	mov r0, r5
	mov r1, #1
	bl ov29_0230D47C
	b _022EE29C
_022EE288:
	cmp r0, #1
	bne _022EE29C
	mov r0, r5
	mov r1, #0
	bl ov29_0230D47C
_022EE29C:
	str sb, [sp]
	ldrb r6, [r6]
	mov r0, r4
	ldr r3, [sp, #0x10]
	mov r1, sl
	mov r2, r5
	str r6, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	bl ov29_022EF154
	mov r4, r0
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _022EE2E0
	mov r0, r5
	bl EnemyEvolution
_022EE2E0:
	cmp r4, #0
	beq _022EE2F4
	mov r0, sb
	mov r1, #1
	bl ov29_022EDE7C
_022EE2F4:
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EE2FC: .4byte 0x00000E59
_022EE300: .4byte 0x00000E5B
_022EE304: .4byte 0x00000E5A
_022EE308: .4byte 0x02353538
_022EE30C: .4byte 0x00000E5C
_022EE310: .4byte 0x022C445C
_022EE314: .4byte 0x00000E5D
	arm_func_end ov29_022EDFA0

	arm_func_start ItemIsActive
ItemIsActive: @ 0x022EE318
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	pop {r3, r4, r5, pc}
	arm_func_end ItemIsActive

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022EE348
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022EE36C
ov29_022EE36C: @ 0x022EE36C
	push {r3, r4, r5, lr}
	sub sp, sp, #8
	movs r4, r1
	mov r5, r0
	beq _022EE424
	mov r0, #0x64
	bl DungeonRandInt
	cmp r0, #0x19
	mov ip, #1
	mov r3, #3
	bge _022EE3B8
	ldr r0, _022EE42C @ =0x02352AEC
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerOffensiveStat
	b _022EE424
_022EE3B8:
	cmp r0, #0x32
	bge _022EE3E0
	ldr r0, _022EE430 @ =0x02352AE8
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerOffensiveStat
	b _022EE424
_022EE3E0:
	cmp r0, #0x4b
	bge _022EE408
	ldr r0, _022EE42C @ =0x02352AEC
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerDefensiveStat
	b _022EE424
_022EE408:
	ldr r0, _022EE430 @ =0x02352AE8
	str ip, [sp]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	str ip, [sp, #4]
	bl LowerDefensiveStat
_022EE424:
	add sp, sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022EE42C: .4byte 0x02352AEC
_022EE430: .4byte 0x02352AE8
	arm_func_end ov29_022EE36C

	arm_func_start ov29_022EE434
ov29_022EE434: @ 0x022EE434
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xcc
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r1, #0x15
	ldr r7, [sb, #0xb4]
	bl ItemIsActive
	cmp r0, #0
	beq _022EE470
	mov r0, sl
	mov r1, sb
	mov r2, #0xe60
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE610
_022EE470:
	ldrb r0, [r7, #7]
	mvn r4, #0
	mov r5, #0
	cmp r0, #0
	beq _022EE508
	ldr fp, _022EE618 @ =0x020AF6B8
	mov r6, r5
_022EE48C:
	mov r0, #6
	mul r8, r6, r0
	ldr r0, [fp]
	ldr r0, [r0, #0x384]
	add r1, r0, r8
	ldrb r0, [r0, r8]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022EE4FC
	ldrsh r0, [r1, #4]
	bl FUN_0200CB2C
	cmp r0, #0
	beq _022EE4FC
	ldr r0, [fp]
	ldr r0, [r0, #0x384]
	add r1, r0, r8
	ldrb r0, [r0, r8]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrbeq r0, [r1, #1]
	cmpeq r0, #0
	addeq r0, sp, #0
	streq r1, [r0, r5, lsl #2]
	addeq r5, r5, #1
_022EE4FC:
	add r6, r6, #1
	cmp r6, #0x32
	blt _022EE48C
_022EE508:
	ldrb r0, [r7, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022EE558
	ldrsh r0, [r7, #0x66]
	bl FUN_0200CB2C
	cmp r0, #0
	beq _022EE558
	ldrb r0, [r7, #0x62]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addeq r0, sp, #0
	addeq r1, r7, #0x62
	moveq r4, r5
	streq r1, [r0, r5, lsl #2]
	addeq r5, r5, #1
_022EE558:
	cmp r5, #0
	bne _022EE574
	ldr r2, _022EE61C @ =0x00000E5F
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE610
_022EE574:
	mov r0, r5
	bl DungeonRandInt
	mov r5, r0
	add r1, sp, #0
	ldr r1, [r1, r5, lsl #2]
	mov r0, #0
	bl ov29_02344B44
	add r0, sp, #0
	ldr r1, [r0, r5, lsl #2]
	ldrb r0, [r1]
	orr r0, r0, #8
	strb r0, [r1]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _022EE5E8
	cmp r5, r4
	bne _022EE5C4
	mov r1, #8
	bl FUN_0200FAEC
	b _022EE5E8
_022EE5C4:
	ldr r1, _022EE620 @ =0x02353538
	sub r0, r0, #1
	ldr r2, [r1]
	add r1, r0, r0, lsl #3
	add r0, r2, #0x56
	add r2, r0, #0x800
	ldrb r0, [r2, r1, lsl #6]
	orr r0, r0, #8
	strb r0, [r2, r1, lsl #6]
_022EE5E8:
	bl ov29_022FB920
	ldr r1, _022EE624 @ =0x00000309
	mov r0, sb
	bl ov29_022E56A0
	ldr r2, _022EE628 @ =0x00000E5E
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	bl ov29_022E8104
	bl ov29_022E81F8
_022EE610:
	add sp, sp, #0xcc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EE618: .4byte 0x020AF6B8
_022EE61C: .4byte 0x00000E5F
_022EE620: .4byte 0x02353538
_022EE624: .4byte 0x00000309
_022EE628: .4byte 0x00000E5E
	arm_func_end ov29_022EE434

	arm_func_start ov29_022EE62C
ov29_022EE62C: @ 0x022EE62C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xd8
	movs sl, r1
	mov fp, r0
	mov r5, #0
	beq _022EE800
	ldr r2, [sl, #0xb4]
	sub r0, r5, #1
	ldrb r1, [r2, #7]
	mov r4, r5
	str r0, [sp, #4]
	cmp r1, #0
	beq _022EE6C0
	ldr r0, _022EE808 @ =0x020AF6B8
	mov r1, r5
	ldr r6, [r0]
	mov lr, r5
	ldr r3, [r6, #0x384]
	mov r0, #1
	add sb, sp, #8
	mov r8, #6
_022EE680:
	mul r7, r1, r8
	ldrb ip, [r3, r7]
	tst ip, #1
	movne ip, r0
	moveq ip, lr
	tst ip, #0xff
	beq _022EE6B4
	ldr ip, [r6, #0x384]
	add ip, ip, r7
	ldrb r7, [ip, #1]
	cmp r7, #0
	streq ip, [sb, r4, lsl #2]
	addeq r4, r4, #1
_022EE6B4:
	add r1, r1, #1
	cmp r1, #0x32
	blt _022EE680
_022EE6C0:
	ldrb r0, [r2, #0x62]
	mov sb, #0
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne r0, sp, #8
	addne r1, r2, #0x62
	strne r1, [r0, r4, lsl #2]
	ldr r0, _022EE80C @ =0x022C4434
	strne r4, [sp, #4]
	ldrsh r0, [r0]
	addne r4, r4, #1
	str r0, [sp]
	b _022EE7B0
_022EE6FC:
	add r0, sp, #8
	ldr r7, [r0, sb, lsl #2]
	ldrsh r0, [r7, #4]
	bl FUN_0200CAF0
	cmp r0, #3
	bne _022EE7AC
	ldrsh r0, [r7, #4]
	cmp r0, #0x6f
	beq _022EE7AC
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, [sp]
	cmp r0, r1
	bge _022EE7AC
	add r0, sp, #8
	ldr r8, [r0, sb, lsl #2]
	mov r1, #0x6f
	ldrb r6, [r8, #1]
	mov r0, r8
	mov r2, #2
	add r5, r5, #1
	bl ov29_02344BD0
	cmp r6, #0
	beq _022EE7AC
	ldr r0, [sp, #4]
	strb r6, [r7, #1]
	cmp sb, r0
	bne _022EE77C
	add r0, sp, #8
	ldr r0, [r0, sb, lsl #2]
	bl FUN_0200FA68
	b _022EE7AC
_022EE77C:
	ldr r0, _022EE810 @ =0x02353538
	ldrb r2, [r8, #1]
	ldr r3, [r0]
	ldrh r1, [r8]
	add r0, r2, r2, lsl #3
	add r0, r3, r0, lsl #6
	add r0, r0, #0x600
	strh r1, [r0, #0x16]
	ldrh r1, [r8, #2]
	strh r1, [r0, #0x18]
	ldrh r1, [r8, #4]
	strh r1, [r0, #0x1a]
_022EE7AC:
	add sb, sb, #1
_022EE7B0:
	cmp sb, r4
	blt _022EE6FC
	cmp r5, #0
	bne _022EE7D4
	ldr r2, _022EE814 @ =0x00000E63
	mov r0, fp
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE800
_022EE7D4:
	cmp r5, #1
	bne _022EE7F0
	ldr r2, _022EE818 @ =0x00000E61
	mov r0, fp
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE800
_022EE7F0:
	ldr r2, _022EE81C @ =0x00000E62
	mov r0, fp
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
_022EE800:
	add sp, sp, #0xd8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EE808: .4byte 0x020AF6B8
_022EE80C: .4byte 0x022C4434
_022EE810: .4byte 0x02353538
_022EE814: .4byte 0x00000E63
_022EE818: .4byte 0x00000E61
_022EE81C: .4byte 0x00000E62
	arm_func_end ov29_022EE62C

	arm_func_start ov29_022EE820
ov29_022EE820: @ 0x022EE820
	push {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	mov r4, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, _022EE980 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344148
	cmp r0, #0
	bne _022EE868
	ldr r1, _022EE984 @ =0x00000E64
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, r7, r8, pc}
_022EE868:
	cmp r5, #0
	ldr r5, [r7, #0xb4]
	bne _022EE8AC
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _022EE8AC
	mov r0, r6
	mov r1, #0x20
	bl ov29_022EF478
	mov r0, r7
	mov r1, #0x308
	mov r4, #1
	bl ov29_022E56A0
	mov r0, #0x1e
	mov r1, #0x48
	bl ov29_022EA370
_022EE8AC:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _022EE91C
	bl GetFloorType
	cmp r0, #2
	beq _022EE90C
	mov r2, #1
	strb r2, [r5, #0x172]
	mov r0, #0x28
	mov r1, #0x4b
	strb r2, [r5, #0x174]
	bl ov29_022EA370
	ldr r1, _022EE988 @ =0x022C44E4
	mov r0, r7
	ldrsh r1, [r1]
	mov r2, #0x11
	mov r3, #0x254
	bl ov29_0230D11C
	ldr r0, _022EE980 @ =0x02353538
	mov r1, #2
	ldr r0, [r0]
	mov r4, #0
	strb r1, [r0, #6]
	b _022EE968
_022EE90C:
	ldr r1, _022EE98C @ =0x00000E66
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022EE968
_022EE91C:
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _022EE94C
	ldr r2, _022EE990 @ =0x00000E65
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EE958
_022EE94C:
	ldr r1, _022EE990 @ =0x00000E65
	mov r0, r8
	bl LogMessageByIdWithPopup
_022EE958:
	mov r0, r7
	mov r2, r8
	mov r1, #0x254
	bl HandleFaint
_022EE968:
	cmp r4, #0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	mov r1, #5
	bl ov29_022EF478
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EE980: .4byte 0x02353538
_022EE984: .4byte 0x00000E64
_022EE988: .4byte 0x022C44E4
_022EE98C: .4byte 0x00000E66
_022EE990: .4byte 0x00000E65
	arm_func_end ov29_022EE820

	arm_func_start ov29_022EE994
ov29_022EE994: @ 0x022EE994
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #3
	mov r5, r1
	bl DungeonRandInt
	ldr r1, _022EEA20 @ =0x02353538
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344148
	cmp r0, #0
	bne _022EE9D8
	ldr r1, _022EEA24 @ =0x00000E68
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022EE9D8:
	mov r0, r6
	mov r1, r5
	add r2, r4, #2
	bl ov29_022EF4B4
	mov r4, r0
	ldr r1, _022EEA28 @ =0x0000030F
	mov r0, r5
	bl ov29_022E56D4
	cmp r4, #0
	bne _022EEA10
	ldr r1, _022EEA24 @ =0x00000E68
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022EEA10:
	ldr r1, _022EEA2C @ =0x00000E67
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
	.align 2, 0
_022EEA20: .4byte 0x02353538
_022EEA24: .4byte 0x00000E68
_022EEA28: .4byte 0x0000030F
_022EEA2C: .4byte 0x00000E67
	arm_func_end ov29_022EE994

	arm_func_start ov29_022EEA30
ov29_022EEA30: @ 0x022EEA30
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x20
	movs r4, r1
	mov r5, r0
	mov r8, #0
	beq _022EEB08
	ldr r1, [r4, #0xb4]
	mov r0, r8
	add lr, r1, #0x124
	mov r7, r8
	mov r6, r8
	mov ip, #1
	add r2, sp, #0x10
	add r1, sp, #0
_022EEA68:
	ldrb r3, [lr, r7, lsl #3]
	add sb, lr, r7, lsl #3
	tst r3, #1
	movne r3, ip
	moveq r3, r6
	tst r3, #0xff
	ldrbne r3, [sb, #6]
	cmpne r3, #0
	strne r7, [r1, r0, lsl #2]
	strne sb, [r2, r0, lsl #2]
	add r7, r7, #1
	addne r0, r0, #1
	cmp r7, #4
	blt _022EEA68
	cmp r0, #0
	beq _022EEADC
	bl DungeonRandInt
	mov r6, r0
	add r1, sp, #0x10
	ldr r1, [r1, r6, lsl #2]
	mov r0, #0
	strb r0, [r1, #6]
	ldrh r1, [r1, #4]
	bl ov29_0234B084
	add r1, sp, #0
	ldr r1, [r1, r6, lsl #2]
	mov r0, r4
	bl ov29_022FA574
	mov r8, #1
_022EEADC:
	cmp r8, #0
	beq _022EEAF8
	ldr r2, _022EEB10 @ =0x00000E69
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	b _022EEB08
_022EEAF8:
	ldr r2, _022EEB14 @ =0x00000E6A
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_022EEB08:
	add sp, sp, #0x20
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EEB10: .4byte 0x00000E69
_022EEB14: .4byte 0x00000E6A
	arm_func_end ov29_022EEA30

	arm_func_start ov29_022EEB18
ov29_022EEB18: @ 0x022EEB18
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	mov r4, r1
	mov r7, #0
	bl ov29_022E333C
	ldr r1, _022EED1C @ =0x02353538
	mov r5, r0
	ldr r0, [r1]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344148
	cmp r0, #0
	bne _022EEB60
	ldr r1, _022EED20 @ =0x00000E6B
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022EED14
_022EEB60:
	ldrsh r0, [r4]
	ldrsh r1, [r4, #2]
	bl GetTile
	ldrb r2, [r0, #7]
	cmp r2, #0xff
	bne _022EEB94
	ldrsh r1, [r4]
	ldrsh r0, [r4, #2]
	sub fp, r1, r5
	sub sb, r0, r5
	add r4, r1, r5
	add r5, r0, r5
	b _022EECE8
_022EEB94:
	ldr r0, _022EED1C @ =0x02353538
	mov r1, #0x1c
	ldr r0, [r0]
	add r0, r0, #0x2e8
	add r0, r0, #0xec00
	mla r0, r2, r1, r0
	ldrsh r3, [r0, #2]
	ldrsh r2, [r0, #4]
	ldrsh r1, [r0, #6]
	ldrsh r0, [r0, #8]
	sub fp, r3, #1
	sub sb, r2, #1
	add r4, r1, #1
	add r5, r0, #1
	b _022EECE8
_022EEBD0:
	lsl r0, sb, #0x10
	asr r0, r0, #0x10
	mov r6, fp
	str r0, [sp]
	b _022EECDC
_022EEBE4:
	mov r0, r6
	mov r1, sb
	bl GetTile
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022EECD8
	ldr r1, [r0]
	cmp r1, #3
	bne _022EECD8
	bl ov29_022E1610
	ldrb r0, [r0]
	tst r0, #2
	bne _022EECD8
	bl GetKecleonIdToSpawnByFloor
	strh r0, [sp, #4]
	mov r8, #0
	b _022EEC68
_022EEC28:
	ldr r0, _022EED1C @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022EEC44
	bl GetKecleonIdToSpawnByFloor
	b _022EEC4C
_022EEC44:
	mov r0, #0
	bl GetMonsterIdToSpawn
_022EEC4C:
	strh r0, [sp, #4]
	ldrsh r0, [sp, #4]
	mov r1, #0
	bl MewSpawnCheck
	cmp r0, #0
	bne _022EEC70
	add r8, r8, #1
_022EEC68:
	cmp r8, #0x64
	blt _022EEC28
_022EEC70:
	ldrsh r0, [sp, #4]
	mov r1, #0
	bl MewSpawnCheck
	cmp r0, #0
	beq _022EECCC
	mov r0, #0
	strh r0, [sp, #0xc]
	strb r0, [sp, #6]
	ldr r0, [sp]
	mov r1, #1
	strh r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
	strb r0, [sp, #0x12]
	add r0, sp, #4
	strh r6, [sp, #0xe]
	bl SpawnMonster
	cmp r0, #0
	beq _022EECCC
	add r0, sp, #0xe
	mov r1, #0
	bl ov29_023456BC
	add r7, r7, #1
_022EECCC:
	mov r0, r6
	mov r1, sb
	bl ov29_023391EC
_022EECD8:
	add r6, r6, #1
_022EECDC:
	cmp r6, r4
	ble _022EEBE4
	add sb, sb, #1
_022EECE8:
	cmp sb, r5
	ble _022EEBD0
	cmp r7, #0
	beq _022EED08
	ldr r1, _022EED24 @ =0x00000E6C
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022EED14
_022EED08:
	ldr r1, _022EED28 @ =0x00000E6D
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022EED14:
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EED1C: .4byte 0x02353538
_022EED20: .4byte 0x00000E6B
_022EED24: .4byte 0x00000E6C
_022EED28: .4byte 0x00000E6D
	arm_func_end ov29_022EEB18

	arm_func_start ov29_022EED2C
ov29_022EED2C: @ 0x022EED2C
	push {r4, r5, r6, lr}
	sub sp, sp, #0x18
	movs r5, r1
	mov r6, r0
	beq _022EEE38
	mov r0, r5
	mov r1, #6
	mov r2, #8
	bl ov29_023049A8
	mov r0, #0x10
	mov r1, #0x55
	bl ov29_022EA370
	mov r0, r5
	mov r1, #8
	bl ov29_02304A48
	mov r0, r5
	mov r1, #0x2c
	ldr r4, [r5, #0xb4]
	bl AbilityIsActive
	cmp r0, #0
	bne _022EEE38
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022EEE38
	ldrh r0, [r4, #0x62]
	strh r0, [sp, #0x10]
	ldrh r0, [r4, #0x64]
	strh r0, [sp, #0x12]
	ldrh r0, [r4, #0x66]
	strh r0, [sp, #0x14]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _022EEDC4
	ldrb r0, [r4, #0x63]
	bl FUN_0200F454
_022EEDC4:
	mov r0, #0
	strb r0, [r4, #0x62]
	bl ov29_02347030
	ldr r1, _022EEE40 @ =0x0000130F
	mov r0, r5
	bl ov29_022E56A0
	ldrb r1, [r4, #0x4c]
	ldr r0, _022EEE44 @ =0x0235171C
	ldrsh r3, [r5, #4]
	lsl r1, r1, #0x1d
	lsr r4, r1, #0x1b
	ldrsh r2, [r0, r4]
	ldr r1, _022EEE48 @ =0x0235171E
	mov r0, r6
	add r2, r3, r2
	strh r2, [sp, #0xc]
	ldrsh r2, [r1, r4]
	ldrsh r3, [r5, #6]
	mov r4, #1
	ldr r1, _022EEE4C @ =0x02351844
	add r2, r3, r2
	strh r2, [sp, #0xe]
	str r4, [sp]
	str r1, [sp, #4]
	add r2, sp, #0xc
	add r3, sp, #0x10
	add r1, r5, #4
	str r4, [sp, #8]
	bl ov29_02346344
_022EEE38:
	add sp, sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_022EEE40: .4byte 0x0000130F
_022EEE44: .4byte 0x0235171C
_022EEE48: .4byte 0x0235171E
_022EEE4C: .4byte 0x02351844
	arm_func_end ov29_022EED2C

	arm_func_start ov29_022EEE50
ov29_022EEE50: @ 0x022EEE50
	push {r3, r4, r5, lr}
	movs r4, r1
	popeq {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0xd
	ldr r5, [r4, #0xb4]
	bl ov29_02301EAC
	cmp r0, #0
	bne _022EEEBC
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022EEEDC @ =0x000003E7
	add r2, r2, r1
	ldr r1, _022EEEE0 @ =0x022C4770
	cmp r2, r0
	movgt r2, r0
	ldr r1, [r1]
	lsl r0, r2, #8
	bl FUN_02001A54
	bl FUN_02001888
	mov r1, r0
	ldr r3, _022EEEE4 @ =0x0000026D
	mov r0, r4
	asr r1, r1, #8
	mov r2, #0x16
	bl ov29_0230D11C
	pop {r3, r4, r5, pc}
_022EEEBC:
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022EEEE8 @ =0x00000E6E
	mov r0, r4
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, pc}
	.align 2, 0
_022EEEDC: .4byte 0x000003E7
_022EEEE0: .4byte 0x022C4770
_022EEEE4: .4byte 0x0000026D
_022EEEE8: .4byte 0x00000E6E
	arm_func_end ov29_022EEE50

	arm_func_start ov29_022EEEEC
ov29_022EEEEC: @ 0x022EEEEC
	push {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	popeq {r3, r4, r5, pc}
	ldr r1, _022EEF3C @ =0x022C45CC
	mov r0, r4
	ldrsh r1, [r1]
	mov r2, #0x15
	mov r3, #0x26c
	bl ov29_0230D11C
	mov r0, r4
	bl ov29_022FBD80
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #1
	mov r3, #0
	bl TryInflictPoisonedStatus
	pop {r3, r4, r5, pc}
	.align 2, 0
_022EEF3C: .4byte 0x022C45CC
	arm_func_end ov29_022EEEEC

	arm_func_start ov29_022EEF40
ov29_022EEF40: @ 0x022EEF40
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x64
	movs sb, r2
	str r0, [sp, #0xc]
	mov sl, r1
	str r3, [sp, #0x10]
	ldr r8, [sp, #0x88]
	beq _022EF064
	bl ov29_022E7A8C
	ldr r1, _022EF06C @ =0x022C4B18
	mov r4, r0
	ldrb r0, [r1, r4]
	cmp r0, #0
	bne _022EEFB0
	mov r0, sl
	mov r1, r8
	mov r2, r4
	bl ov29_022E58B0
	str r8, [sp]
	str r4, [sp, #4]
	mov r4, #1
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, sl
	mov r2, sb
	str r4, [sp, #8]
	bl ov29_022EF154
	b _022EF064
_022EEFB0:
	ldr r0, [sb, #0xb4]
	mov r5, #0
	ldrb fp, [r0, #6]
	str sb, [sp, #0x14]
	add r7, r5, #1
_022EEFC4:
	ldr r0, _022EF070 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	cmpne sb, r6
	beq _022EF004
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #6]
	cmp fp, r0
	addeq r0, sp, #0x14
	streq r6, [r0, r7, lsl #2]
	addeq r7, r7, #1
_022EF004:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022EEFC4
	mov sb, #0
	add r5, sp, #0x14
	mov fp, #1
	b _022EF05C
_022EF020:
	ldr r6, [r5, sb, lsl #2]
	mov r2, r4
	mov r0, r6
	add r1, r6, #4
	bl ov29_022E58B0
	str r8, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r2, r6
	mov r1, sl
	stmib sp, {r4, fp}
	bl ov29_022EF154
	mov r0, #1
	bl ov29_022E38E0
	add sb, sb, #1
_022EF05C:
	cmp sb, r7
	blt _022EF020
_022EF064:
	add sp, sp, #0x64
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EF06C: .4byte 0x022C4B18
_022EF070: .4byte 0x02353538
	arm_func_end ov29_022EEF40

	arm_func_start ov29_022EF074
ov29_022EF074: @ 0x022EF074
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov r0, #3
	mov r4, r1
	bl DungeonRandInt
	mov r2, r0
	mov r0, sl
	mov r1, r4
	add r2, r2, #2
	bl ov29_022EF4B4
	cmp r0, #0
	ble _022EF0B0
	ldr r1, _022EF148 @ =0x0000030F
	mov r0, r4
	bl ov29_022E56D4
_022EF0B0:
	mov r7, #0
	ldr r4, _022EF14C @ =0x02353538
	mov r8, r7
	mov r5, #1
	mov r6, r7
_022EF0C4:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb38]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [sb, #0xb4]
	ldrbne r1, [r0, #9]
	cmpne r1, #1
	ldrbne r1, [r0, #0xbc]
	cmpne r1, #7
	beq _022EF11C
	bl IsExperienceLocked
	cmp r0, #0
	bne _022EF11C
	mov r0, sb
	mov r1, sb
	mov r2, r6
	bl ov29_02314EB8
	cmp r0, #0
	movne r7, r5
_022EF11C:
	add r8, r8, #1
	cmp r8, #0x10
	blt _022EF0C4
	cmp r7, #0
	ldrne r0, _022EF150 @ =0x00000E6F
	moveq r0, #0xe70
	lsl r1, r0, #0x10
	mov r0, sl
	lsr r1, r1, #0x10
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022EF148: .4byte 0x0000030F
_022EF14C: .4byte 0x02353538
_022EF150: .4byte 0x00000E6F
	arm_func_end ov29_022EF074

	arm_func_start ov29_022EF154
ov29_022EF154: @ 0x022EF154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldrb ip, [sp, #0x24]
	ldr lr, [sp, #0x20]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	cmp ip, #0x20
	mov r4, #0
	addls pc, pc, ip, lsl #2
	b _022EF454
_022EF180: @ jump table
	b _022EF454 @ case 0
	b _022EF204 @ case 1
	b _022EF214 @ case 2
	b _022EF224 @ case 3
	b _022EF234 @ case 4
	b _022EF248 @ case 5
	b _022EF260 @ case 6
	b _022EF280 @ case 7
	b _022EF2A4 @ case 8
	b _022EF2C4 @ case 9
	b _022EF2F4 @ case 10
	b _022EF314 @ case 11
	b _022EF328 @ case 12
	b _022EF348 @ case 13
	b _022EF368 @ case 14
	b _022EF388 @ case 15
	b _022EF398 @ case 16
	b _022EF3BC @ case 17
	b _022EF3D0 @ case 18
	b _022EF3E4 @ case 19
	b _022EF408 @ case 20
	b _022EF418 @ case 21
	b _022EF428 @ case 22
	b _022EF438 @ case 23
	b _022EF444 @ case 24
	b _022EF454 @ case 25
	b _022EF454 @ case 26
	b _022EF454 @ case 27
	b _022EF454 @ case 28
	b _022EF454 @ case 29
	b _022EF454 @ case 30
	b _022EF454 @ case 31
	b _022EF248 @ case 32
_022EF204:
	mov r0, r6
	mov r1, r5
	bl ov29_022EE36C
	b _022EF454
_022EF214:
	mov r0, r6
	mov r1, r5
	bl ov29_022EE434
	b _022EF454
_022EF224:
	mov r0, r6
	mov r1, r5
	bl ov29_022EE62C
	b _022EF454
_022EF234:
	mov r0, r6
	mov r1, lr
	bl ov29_022EE994
	mov r4, #1
	b _022EF454
_022EF248:
	mov r2, r3
	ldrb r3, [sp, #0x28]
	mov r0, r6
	mov r1, r5
	bl ov29_022EE820
	b _022EF454
_022EF260:
	cmp r5, #0
	beq _022EF454
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r4
	bl TryWarp
	b _022EF454
_022EF280:
	cmp r5, #0
	beq _022EF454
	mov r0, #8
	bl DungeonRandInt
	mov r2, r0
	mov r0, r7
	mov r1, r5
	bl TryBlowAway
	b _022EF454
_022EF2A4:
	cmp r5, #0
	beq _022EF454
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #1
	bl TryInflictConfusedStatus
	b _022EF454
_022EF2C4:
	cmp r5, #0
	beq _022EF454
	ldr r1, _022EF460 @ =0x022C4720
	mov r0, r5
	mov r2, #1
	bl CalcStatusDuration
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, #1
	bl TryInflictSleepStatus
	b _022EF454
_022EF2F4:
	cmp r5, #0
	beq _022EF454
	mov r2, #1
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl LowerSpeed
	b _022EF454
_022EF314:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl TrySealMove
	b _022EF454
_022EF328:
	cmp r5, #0
	beq _022EF454
	mov r0, r6
	mov r1, r5
	mov r3, r4
	mov r2, #1
	bl TryInflictPoisonedStatus
	b _022EF454
_022EF348:
	ldr ip, _022EF464 @ =0x00000251
	mov r0, r6
	mov r1, r5
	add r2, r5, #4
	mov r3, #1
	stm sp, {r4, ip}
	bl ov29_02320448
	b _022EF454
_022EF368:
	ldr ip, _022EF464 @ =0x00000251
	mov r0, r6
	mov r1, r5
	add r2, r5, #4
	mov r3, #2
	stm sp, {r4, ip}
	bl ov29_02320448
	b _022EF454
_022EF388:
	mov r0, r6
	mov r1, r5
	bl ov29_022EEA30
	b _022EF454
_022EF398:
	cmp r5, #0
	beq _022EF454
	ldr r0, _022EF468 @ =0x022C45C8
	ldr r3, _022EF46C @ =0x00000252
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #0xf
	bl ov29_0230D11C
	b _022EF454
_022EF3BC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov29_02319624
	b _022EF454
_022EF3D0:
	mov r0, r6
	mov r1, lr
	bl ov29_022EEB18
	mov r4, #1
	b _022EF454
_022EF3E4:
	cmp r5, #0
	beq _022EF454
	ldr r0, _022EF470 @ =0x022C4418
	ldr r3, _022EF474 @ =0x00000245
	ldrsh r1, [r0]
	mov r0, r5
	mov r2, #0xa
	bl ov29_0230D11C
	b _022EF454
_022EF408:
	mov r0, r6
	mov r1, r5
	bl ov29_022EEE50
	b _022EF454
_022EF418:
	mov r0, r6
	mov r1, r5
	bl ov29_022EEEEC
	b _022EF454
_022EF428:
	mov r0, r6
	mov r1, r5
	bl ov29_022EED2C
	b _022EF454
_022EF438:
	str lr, [sp]
	bl ov29_022EEF40
	b _022EF454
_022EF444:
	mov r0, r6
	mov r1, lr
	bl ov29_022EF074
	mov r4, #1
_022EF454:
	mov r0, r4
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EF460: .4byte 0x022C4720
_022EF464: .4byte 0x00000251
_022EF468: .4byte 0x022C45C8
_022EF46C: .4byte 0x00000252
_022EF470: .4byte 0x022C4418
_022EF474: .4byte 0x00000245
	arm_func_end ov29_022EF154

	arm_func_start ov29_022EF478
ov29_022EF478: @ 0x022EF478
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x10]
	mov r5, r1
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #2
	bne _022EF4AC
	mov r0, r4
	bl ov29_022E1608
	strb r5, [r0]
_022EF4AC:
	bl ov29_02336F4C
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022EF478

	arm_func_start ov29_022EF4B4
ov29_022EF4B4: @ 0x022EF4B4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r0, #8
	mov sl, r1
	mov sb, r2
	bl DungeonRandInt
	mov r8, r0
	ldr r0, _022EF5D0 @ =0x0000017B
	mov r7, #0
	mov r6, r7
	add r5, r0, #2
	add r4, r0, #3
	b _022EF5BC
_022EF4E8:
	mov r0, #0
	bl GetMonsterIdToSpawn
	mov fp, r0
	bl FUN_02054BE0
	ldr r1, _022EF5D0 @ =0x0000017B
	cmp r0, r1
	cmpne r0, #0x17c
	cmpne r0, r5
	cmpne r0, r4
	beq _022EF52C
	sub r0, r0, #0x1cc
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022EF534
_022EF52C:
	mov r0, #1
	b _022EF538
_022EF534:
	mov r0, #0
_022EF538:
	cmp r0, #0
	bne _022EF5B8
	strh fp, [sp]
	ldrsh r0, [sp]
	mov r1, #0
	and r8, r8, #7
	bl MewSpawnCheck
	cmp r0, #0
	beq _022EF5B4
	ldr r1, _022EF5D4 @ =0x0235171C
	mov r0, #0
	lsl r2, r8, #2
	ldrsh r3, [r1, r2]
	strh r0, [sp, #8]
	strb r0, [sp, #2]
	ldrsh r0, [sl]
	add r1, r1, r8, lsl #2
	ldrsh r2, [r1, #2]
	add r0, r0, r3
	strh r0, [sp, #0xa]
	ldrsh r3, [sl, #2]
	add r0, sp, #0
	mov r1, #1
	add r2, r3, r2
	strh r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #4]
	strb r2, [sp, #0xe]
	bl SpawnMonster
	cmp r0, #0
	addne r7, r7, #1
_022EF5B4:
	add r8, r8, #1
_022EF5B8:
	add r6, r6, #1
_022EF5BC:
	cmp r6, sb
	blt _022EF4E8
	mov r0, r7
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022EF5D0: .4byte 0x0000017B
_022EF5D4: .4byte 0x0235171C
	arm_func_end ov29_022EF4B4

	arm_func_start ov29_022EF5D8
ov29_022EF5D8: @ 0x022EF5D8
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, #0
	bl ov29_022E333C
	ldrb r7, [r8, #0x25]
	mov r6, r0
	cmp r7, #0xff
	beq _022EF608
	mov r0, r8
	bl HasDropeyeStatus
	cmp r0, #0
	beq _022EF65C
_022EF608:
	ldrsh r0, [r8, #6]
	sub r4, r0, r6
	b _022EF648
_022EF614:
	ldrsh r0, [r8, #4]
	sub r7, r0, r6
	b _022EF634
_022EF620:
	mov r0, r7
	mov r1, r4
	bl ov29_022EF700
	orr r5, r5, r0
	add r7, r7, #1
_022EF634:
	ldrsh r0, [r8, #4]
	add r0, r0, r6
	cmp r7, r0
	ble _022EF620
	add r4, r4, #1
_022EF648:
	ldrsh r0, [r8, #6]
	add r0, r0, r6
	cmp r4, r0
	ble _022EF614
	b _022EF6C4
_022EF65C:
	ldr r0, _022EF6F4 @ =0x02353538
	mov r1, #0x1c
	ldr r0, [r0]
	add r0, r0, #0x2e8
	add r0, r0, #0xec00
	mla r4, r7, r1, r0
	ldrsh r0, [r4, #4]
	sub r6, r0, #1
	b _022EF6B4
_022EF680:
	ldrsh r0, [r4, #2]
	sub r7, r0, #1
	b _022EF6A0
_022EF68C:
	mov r0, r7
	mov r1, r6
	bl ov29_022EF700
	orr r5, r5, r0
	add r7, r7, #1
_022EF6A0:
	ldrsh r0, [r4, #6]
	add r0, r0, #1
	cmp r7, r0
	ble _022EF68C
	add r6, r6, #1
_022EF6B4:
	ldrsh r0, [r4, #8]
	add r0, r0, #1
	cmp r6, r0
	ble _022EF680
_022EF6C4:
	cmp r5, #0
	beq _022EF6E4
	ldr r1, _022EF6F8 @ =0x00000E02
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	bl ov29_02339CE8
	bl ov29_02336F4C
	pop {r4, r5, r6, r7, r8, pc}
_022EF6E4:
	ldr r1, _022EF6FC @ =0x00000E03
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EF6F4: .4byte 0x02353538
_022EF6F8: .4byte 0x00000E02
_022EF6FC: .4byte 0x00000E03
	arm_func_end ov29_022EF5D8

	arm_func_start ov29_022EF700
ov29_022EF700: @ 0x022EF700
	push {r3, lr}
	bl GetTile
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _022EF730
	ldr r0, [r1]
	cmp r0, #2
	ldrbeq r0, [r1, #0x20]
	cmpeq r0, #0
	moveq r0, #1
	strbeq r0, [r1, #0x20]
	popeq {r3, pc}
_022EF730:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov29_022EF700

	arm_func_start ov29_022EF738
ov29_022EF738: @ 0x022EF738
	push {r3, lr}
	bl ov29_023361D4
	cmp r0, #0
	beq _022EF780
	ldr r0, _022EF798 @ =0x02353538
	mov r1, #0xc
	ldr r0, [r0]
	ldr r2, _022EF79C @ =0x022C6C7A
	add r0, r0, #0x4000
	ldrb r3, [r0, #0xda]
	smulbb r1, r3, r1
	ldrb r1, [r2, r1]
	cmp r1, #0
	movne r1, #2
	strbne r1, [r0, #0xca]
	moveq r1, #1
	strbeq r1, [r0, #0xca]
	pop {r3, pc}
_022EF780:
	ldr r0, _022EF798 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x4000
	strb r1, [r0, #0xca]
	pop {r3, pc}
	.align 2, 0
_022EF798: .4byte 0x02353538
_022EF79C: .4byte 0x022C6C7A
	arm_func_end ov29_022EF738

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022EF7A0
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022EF7C4
ov29_022EF7C4: @ 0x022EF7C4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r2
	cmp r1, #5
	popls {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r4, _022EF89C @ =0x02353538
	ldr r0, [r4]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xca]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #3
	beq _022EF874
	mov r5, #1
	mov r6, #0
	b _022EF84C
_022EF804:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb38]
	cmp r8, sb
	beq _022EF840
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022EF840
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #8]
	cmp r0, #0
	moveq r5, #0
	beq _022EF854
_022EF840:
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_022EF84C:
	cmp r6, #0x10
	blt _022EF804
_022EF854:
	cmp r5, #0
	beq _022EF874
	mov r0, #0x64
	bl ov29_0234BA54
	ldr r0, _022EF89C @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #6]
_022EF874:
	cmp r7, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _022EF89C @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _022EF8A0 @ =0x000003E7
	bl ov29_022EAE14
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EF89C: .4byte 0x02353538
_022EF8A0: .4byte 0x000003E7
	arm_func_end ov29_022EF7C4

	arm_func_start ov29_022EF8A4
ov29_022EF8A4: @ 0x022EF8A4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #1
	ldr r5, _022EF934 @ =0x02353538
	mov r7, r8
	mov r6, #0
	mvn r4, #0
_022EF8BC:
	ldr r0, [r5]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb28]
	cmp sb, #0
	beq _022EF918
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r5]
	addne r0, r0, r8, lsl #2
	addne r0, r0, #0xcc00
	ldrshne r1, [r0, #0xec]
	cmpne r1, r4
	ldrshne r2, [r0, #0xee]
	cmpne r2, r4
	beq _022EF918
	mov r0, sb
	mov r3, r7
	bl ov29_022F85F0
	mov r0, sb
	mov r1, r6
	bl ov29_022E1A40
_022EF918:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022EF8BC
	bl ov29_023444D4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022EF934: .4byte 0x02353538
	arm_func_end ov29_022EF8A4

	arm_func_start ov29_022EF938
ov29_022EF938: @ 0x022EF938
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _022EF9B4 @ =0x02353538
	mov r4, #0
	mov r6, #4
_022EF948:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb28]
	cmp r7, #0
	beq _022EF99C
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022EF99C
	ldr r0, [r5]
	add r0, r0, r4
	add r0, r0, #0xc000
	ldrb r1, [r0, #0xd0c]
	mov r0, r7
	cmp r1, #0xff
	beq _022EF994
	bl ov29_022FA360
	b _022EF99C
_022EF994:
	mov r1, r6
	bl ov29_022FA360
_022EF99C:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, #4
	blt _022EF948
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022EF9B4: .4byte 0x02353538
	arm_func_end ov29_022EF938

	arm_func_start ov29_022EF9B8
ov29_022EF9B8: @ 0x022EF9B8
	bx lr
	arm_func_end ov29_022EF9B8

	arm_func_start ov29_02348F20
ov29_02348F20: @ 0x022EF9BC
	ldr ip, _022EF9C4 @ =ov29_02348F20
	bx ip
	.align 2, 0
_022EF9C4: .4byte ov29_02348F20
	arm_func_end ov29_02348F20

	arm_func_start ov29_022EF9C8
ov29_022EF9C8: @ 0x022EF9C8
	push {r3, lr}
	bl IsFloorOver
	cmp r0, #0
	ldreq r0, _022EF9E8 @ =0x02353538
	ldreq r0, [r0]
	ldrbeq r0, [r0, #6]
	cmpeq r0, #0
	pop {r3, pc}
	.align 2, 0
_022EF9E8: .4byte 0x02353538
	arm_func_end ov29_022EF9C8

	arm_func_start ov29_022EF9EC
ov29_022EF9EC: @ 0x022EF9EC
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbc]
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _022EFA64
_022EFA00: @ jump table
	b _022EFA5C @ case 0
	b _022EFA5C @ case 1
	b _022EFA5C @ case 2
	b _022EFA5C @ case 3
	b _022EFA5C @ case 4
	b _022EFA5C @ case 5
	b _022EFA64 @ case 6
	b _022EFA54 @ case 7
	b _022EFA5C @ case 8
	b _022EFA54 @ case 9
	b _022EFA54 @ case 10
	b _022EFA54 @ case 11
	b _022EFA54 @ case 12
	b _022EFA54 @ case 13
	b _022EFA54 @ case 14
	b _022EFA54 @ case 15
	b _022EFA5C @ case 16
	b _022EFA5C @ case 17
	b _022EFA5C @ case 18
	b _022EFA5C @ case 19
	b _022EFA5C @ case 20
_022EFA54:
	mov r0, #1
	bx lr
_022EFA5C:
	mov r0, #0
	bx lr
_022EFA64:
	mov r0, #0
	bx lr
	arm_func_end ov29_022EF9EC

	arm_func_start ov29_022EFA6C
ov29_022EFA6C: @ 0x022EFA6C
	mov r0, #1
	bx lr
	arm_func_end ov29_022EFA6C

	arm_func_start ov29_022EFA74
ov29_022EFA74: @ 0x022EFA74
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r1, _022EFAE0 @ =0x02353538
	ldr r0, _022EFAE4 @ =0x000286D0
	ldr r1, [r1]
	ldrsh r6, [r1, r0]
	cmp r6, #0
	ble _022EFAD8
	add r0, sp, #0
	mov r1, #0x44
	bl ov29_0230F798
	mov r7, r0
	cmp r7, #0
	ble _022EFAD8
	mov r8, #0
	add r5, sp, #0
	mov r4, r8
	b _022EFAD0
_022EFABC:
	ldr r0, [r5, r8, lsl #2]
	mov r1, r6
	mov r2, r4
	bl ov29_022FA144
	add r8, r8, #1
_022EFAD0:
	cmp r8, r7
	blt _022EFABC
_022EFAD8:
	add sp, sp, #0x10
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022EFAE0: .4byte 0x02353538
_022EFAE4: .4byte 0x000286D0
	arm_func_end ov29_022EFA74

	arm_func_start ov29_022EFAE8
ov29_022EFAE8: @ 0x022EFAE8
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_022EFAE8

	arm_func_start ov29_022EFB04
ov29_022EFB04: @ 0x022EFB04
	add r0, r0, #0xf0
	and r0, r0, #0xff
	cmp r0, #4
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_022EFB04

	arm_func_start ov29_022EFB20
ov29_022EFB20: @ 0x022EFB20
	push {r3, lr}
	cmp r0, #0
	beq _022EFB48
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, #0xa
	mov r1, #0x62
	bl ov29_022EA370
_022EFB48:
	bl ov29_0234D630
	ldr r1, _022EFB7C @ =0x023535A4
	mvn r2, #1
	mov r0, #1
	strb r2, [r1]
	bl ov29_022DE5F0
	ldr r1, _022EFB80 @ =0x0237C9A0
	strh r0, [r1, #2]
	mov r0, #0
	bl ov29_022DE5F0
	ldr r1, _022EFB80 @ =0x0237C9A0
	strh r0, [r1]
	pop {r3, pc}
	.align 2, 0
_022EFB7C: .4byte 0x023535A4
_022EFB80: .4byte 0x0237C9A0
	arm_func_end ov29_022EFB20

	arm_func_start ov29_022EFB84
ov29_022EFB84: @ 0x022EFB84
	push {r4, lr}
	mov r4, r0
	mov r0, #0
	bl ov29_0234D8A0
	cmp r4, #0
	popeq {r4, pc}
	mov r0, #0xa
	mov r1, #0x62
	bl ov29_022EA370
	pop {r4, pc}
	arm_func_end ov29_022EFB84

	arm_func_start ov29_022EFBAC
ov29_022EFBAC: @ 0x022EFBAC
	ldr r1, _022F04E4 @ =0x000001FE
	cmp r0, r1
	bgt _022F0314
	bge _022F04C4
	cmp r0, #0x1d4
	bgt _022F024C
	bge _022F04C4
	sub r2, r1, #0x53
	cmp r0, r2
	bgt _022F01E4
	sub r1, r1, #0xe9
	subs r1, r0, r1
	addpl pc, pc, r1, lsl #2
	b _022EFE40
_022EFBE4: @ jump table
	b _022F04C4 @ case 0
	b _022F04C4 @ case 1
	b _022F04C4 @ case 2
	b _022F04CC @ case 3
	b _022F04DC @ case 4
	b _022F04DC @ case 5
	b _022F04DC @ case 6
	b _022F04DC @ case 7
	b _022F04DC @ case 8
	b _022F04DC @ case 9
	b _022F04DC @ case 10
	b _022F04DC @ case 11
	b _022F04CC @ case 12
	b _022F04CC @ case 13
	b _022F04DC @ case 14
	b _022F04DC @ case 15
	b _022F04DC @ case 16
	b _022F04DC @ case 17
	b _022F04C4 @ case 18
	b _022F04DC @ case 19
	b _022F04C4 @ case 20
	b _022F04DC @ case 21
	b _022F04DC @ case 22
	b _022F04DC @ case 23
	b _022F04DC @ case 24
	b _022F04DC @ case 25
	b _022F04DC @ case 26
	b _022F04DC @ case 27
	b _022F04DC @ case 28
	b _022F04C4 @ case 29
	b _022F04C4 @ case 30
	b _022F04DC @ case 31
	b _022F04DC @ case 32
	b _022F04DC @ case 33
	b _022F04DC @ case 34
	b _022F04C4 @ case 35
	b _022F04DC @ case 36
	b _022F04DC @ case 37
	b _022F04DC @ case 38
	b _022F04DC @ case 39
	b _022F04DC @ case 40
	b _022F04DC @ case 41
	b _022F04C4 @ case 42
	b _022F04C4 @ case 43
	b _022F04DC @ case 44
	b _022F04DC @ case 45
	b _022F04DC @ case 46
	b _022F04DC @ case 47
	b _022F04DC @ case 48
	b _022F04DC @ case 49
	b _022F04DC @ case 50
	b _022F04DC @ case 51
	b _022F04CC @ case 52
	b _022F04DC @ case 53
	b _022F04DC @ case 54
	b _022F04DC @ case 55
	b _022F04DC @ case 56
	b _022F04DC @ case 57
	b _022F04C4 @ case 58
	b _022F04DC @ case 59
	b _022F04DC @ case 60
	b _022F04DC @ case 61
	b _022F04DC @ case 62
	b _022F04DC @ case 63
	b _022F04CC @ case 64
	b _022F04CC @ case 65
	b _022F04DC @ case 66
	b _022F04DC @ case 67
	b _022F04DC @ case 68
	b _022F04C4 @ case 69
	b _022F04C4 @ case 70
	b _022F04C4 @ case 71
	b _022F04C4 @ case 72
	b _022F04DC @ case 73
	b _022F04DC @ case 74
	b _022F04DC @ case 75
	b _022F04C4 @ case 76
	b _022F04DC @ case 77
	b _022F04DC @ case 78
	b _022F04DC @ case 79
	b _022F04CC @ case 80
	b _022F04C4 @ case 81
	b _022F04DC @ case 82
	b _022F04DC @ case 83
	b _022F04C4 @ case 84
	b _022F04CC @ case 85
	b _022F04CC @ case 86
	b _022F04DC @ case 87
	b _022F04C4 @ case 88
	b _022F04C4 @ case 89
	b _022F04C4 @ case 90
	b _022F04C4 @ case 91
	b _022F04DC @ case 92
	b _022F04DC @ case 93
	b _022F04C4 @ case 94
	b _022F04C4 @ case 95
	b _022F04DC @ case 96
	b _022F04DC @ case 97
	b _022F04DC @ case 98
	b _022F04DC @ case 99
	b _022F04C4 @ case 100
	b _022F04DC @ case 101
	b _022F04C4 @ case 102
	b _022F04C4 @ case 103
	b _022F04C4 @ case 104
	b _022F04C4 @ case 105
	b _022F04DC @ case 106
	b _022F04DC @ case 107
	b _022F04C4 @ case 108
	b _022F04DC @ case 109
	b _022F04C4 @ case 110
	b _022F04DC @ case 111
	b _022F04DC @ case 112
	b _022F04DC @ case 113
	b _022F04DC @ case 114
	b _022F04DC @ case 115
	b _022F04DC @ case 116
	b _022F04C4 @ case 117
	b _022F04CC @ case 118
	b _022F04DC @ case 119
	b _022F04DC @ case 120
	b _022F04CC @ case 121
	b _022F04C4 @ case 122
	b _022F04C4 @ case 123
	b _022F04C4 @ case 124
	b _022F04C4 @ case 125
	b _022F04DC @ case 126
	b _022F04DC @ case 127
	b _022F04CC @ case 128
	b _022F04C4 @ case 129
	b _022F04C4 @ case 130
	b _022F04DC @ case 131
	b _022F04DC @ case 132
	b _022F04C4 @ case 133
	b _022F04DC @ case 134
	b _022F04C4 @ case 135
	b _022F04C4 @ case 136
	b _022F04C4 @ case 137
	b _022F04DC @ case 138
	b _022F04C4 @ case 139
	b _022F04C4 @ case 140
	b _022F04C4 @ case 141
	b _022F04C4 @ case 142
	b _022F04C4 @ case 143
	b _022F04C4 @ case 144
	b _022F04DC @ case 145
	b _022F04DC @ case 146
	b _022F04DC @ case 147
	b _022F04CC @ case 148
	b _022F04CC @ case 149
	b _022F04CC @ case 150
_022EFE40:
	cmp r0, #0xee
	bgt _022F0194
	subs r1, r0, #0x29
	addpl pc, pc, r1, lsl #2
	b _022F016C
_022EFE54: @ jump table
	b _022F04C4 @ case 0
	b _022F04C4 @ case 1
	b _022F04DC @ case 2
	b _022F04DC @ case 3
	b _022F04DC @ case 4
	b _022F04DC @ case 5
	b _022F04DC @ case 6
	b _022F04DC @ case 7
	b _022F04C4 @ case 8
	b _022F04CC @ case 9
	b _022F04CC @ case 10
	b _022F04DC @ case 11
	b _022F04CC @ case 12
	b _022F04DC @ case 13
	b _022F04DC @ case 14
	b _022F04DC @ case 15
	b _022F04DC @ case 16
	b _022F04CC @ case 17
	b _022F04CC @ case 18
	b _022F04DC @ case 19
	b _022F04DC @ case 20
	b _022F04DC @ case 21
	b _022F04DC @ case 22
	b _022F04DC @ case 23
	b _022F04D4 @ case 24
	b _022F04DC @ case 25
	b _022F04DC @ case 26
	b _022F04DC @ case 27
	b _022F04DC @ case 28
	b _022F04DC @ case 29
	b _022F04DC @ case 30
	b _022F04C4 @ case 31
	b _022F04C4 @ case 32
	b _022F04C4 @ case 33
	b _022F04DC @ case 34
	b _022F04DC @ case 35
	b _022F04DC @ case 36
	b _022F04DC @ case 37
	b _022F04DC @ case 38
	b _022F04DC @ case 39
	b _022F04C4 @ case 40
	b _022F04C4 @ case 41
	b _022F04DC @ case 42
	b _022F04DC @ case 43
	b _022F04DC @ case 44
	b _022F04DC @ case 45
	b _022F04DC @ case 46
	b _022F04DC @ case 47
	b _022F04DC @ case 48
	b _022F04DC @ case 49
	b _022F04C4 @ case 50
	b _022F04C4 @ case 51
	b _022F04C4 @ case 52
	b _022F04DC @ case 53
	b _022F04DC @ case 54
	b _022F04DC @ case 55
	b _022F04DC @ case 56
	b _022F04CC @ case 57
	b _022F04CC @ case 58
	b _022F04DC @ case 59
	b _022F04DC @ case 60
	b _022F04DC @ case 61
	b _022F04DC @ case 62
	b _022F04DC @ case 63
	b _022F04DC @ case 64
	b _022F04DC @ case 65
	b _022F04DC @ case 66
	b _022F04DC @ case 67
	b _022F04C4 @ case 68
	b _022F04C4 @ case 69
	b _022F04DC @ case 70
	b _022F04DC @ case 71
	b _022F04DC @ case 72
	b _022F04DC @ case 73
	b _022F04DC @ case 74
	b _022F04C4 @ case 75
	b _022F04C4 @ case 76
	b _022F04C4 @ case 77
	b _022F04C4 @ case 78
	b _022F04DC @ case 79
	b _022F04DC @ case 80
	b _022F04DC @ case 81
	b _022F04DC @ case 82
	b _022F04DC @ case 83
	b _022F04DC @ case 84
	b _022F04DC @ case 85
	b _022F04DC @ case 86
	b _022F04DC @ case 87
	b _022F04C4 @ case 88
	b _022F04C4 @ case 89
	b _022F04DC @ case 90
	b _022F04CC @ case 91
	b _022F04C4 @ case 92
	b _022F04CC @ case 93
	b _022F04CC @ case 94
	b _022F04DC @ case 95
	b _022F04C4 @ case 96
	b _022F04DC @ case 97
	b _022F04DC @ case 98
	b _022F04DC @ case 99
	b _022F04DC @ case 100
	b _022F04C4 @ case 101
	b _022F04DC @ case 102
	b _022F04C4 @ case 103
	b _022F04C4 @ case 104
	b _022F04C4 @ case 105
	b _022F04DC @ case 106
	b _022F04DC @ case 107
	b _022F04DC @ case 108
	b _022F04C4 @ case 109
	b _022F04C4 @ case 110
	b _022F04DC @ case 111
	b _022F04DC @ case 112
	b _022F04DC @ case 113
	b _022F04DC @ case 114
	b _022F04DC @ case 115
	b _022F04DC @ case 116
	b _022F04DC @ case 117
	b _022F04DC @ case 118
	b _022F04DC @ case 119
	b _022F04CC @ case 120
	b _022F04CC @ case 121
	b _022F04CC @ case 122
	b _022F04CC @ case 123
	b _022F04C4 @ case 124
	b _022F04C4 @ case 125
	b _022F04DC @ case 126
	b _022F04DC @ case 127
	b _022F04C4 @ case 128
	b _022F04C4 @ case 129
	b _022F04C4 @ case 130
	b _022F04DC @ case 131
	b _022F04DC @ case 132
	b _022F04DC @ case 133
	b _022F04DC @ case 134
	b _022F04DC @ case 135
	b _022F04DC @ case 136
	b _022F04DC @ case 137
	b _022F04DC @ case 138
	b _022F04DC @ case 139
	b _022F04DC @ case 140
	b _022F04DC @ case 141
	b _022F04DC @ case 142
	b _022F04DC @ case 143
	b _022F04DC @ case 144
	b _022F04DC @ case 145
	b _022F04C4 @ case 146
	b _022F04C4 @ case 147
	b _022F04C4 @ case 148
	b _022F04C4 @ case 149
	b _022F04C4 @ case 150
	b _022F04DC @ case 151
	b _022F04C4 @ case 152
	b _022F04DC @ case 153
	b _022F04DC @ case 154
	b _022F04DC @ case 155
	b _022F04DC @ case 156
	b _022F04CC @ case 157
	b _022F04DC @ case 158
	b _022F04C4 @ case 159
	b _022F04C4 @ case 160
	b _022F04C4 @ case 161
	b _022F04C4 @ case 162
	b _022F04C4 @ case 163
	b _022F04C4 @ case 164
	b _022F04C4 @ case 165
	b _022F04C4 @ case 166
	b _022F04C4 @ case 167
	b _022F04C4 @ case 168
	b _022F04C4 @ case 169
	b _022F04C4 @ case 170
	b _022F04C4 @ case 171
	b _022F04C4 @ case 172
	b _022F04C4 @ case 173
	b _022F04C4 @ case 174
	b _022F04C4 @ case 175
	b _022F04C4 @ case 176
	b _022F04C4 @ case 177
	b _022F04C4 @ case 178
	b _022F04C4 @ case 179
	b _022F04C4 @ case 180
	b _022F04C4 @ case 181
	b _022F04C4 @ case 182
	b _022F04C4 @ case 183
	b _022F04C4 @ case 184
	b _022F04C4 @ case 185
	b _022F04C4 @ case 186
	b _022F04C4 @ case 187
	b _022F04DC @ case 188
	b _022F04DC @ case 189
	b _022F04DC @ case 190
	b _022F04C4 @ case 191
	b _022F04DC @ case 192
	b _022F04C4 @ case 193
	b _022F04DC @ case 194
	b _022F04DC @ case 195
	b _022F04DC @ case 196
	b _022F04C4 @ case 197
_022F016C:
	cmp r0, #0xf
	bgt _022F0188
	cmp r0, #0xc
	blt _022F04DC
	cmpne r0, #0xf
	beq _022F04C4
	b _022F04DC
_022F0188:
	cmp r0, #0x16
	beq _022F04C4
	b _022F04DC
_022F0194:
	cmp r0, #0x104
	bgt _022F01D4
	subs r1, r0, #0xfa
	addpl pc, pc, r1, lsl #2
	b _022F04DC
_022F01A8: @ jump table
	b _022F04C4 @ case 0
	b _022F04DC @ case 1
	b _022F04DC @ case 2
	b _022F04C4 @ case 3
	b _022F04CC @ case 4
	b _022F04DC @ case 5
	b _022F04DC @ case 6
	b _022F04C4 @ case 7
	b _022F04DC @ case 8
	b _022F04DC @ case 9
	b _022F04C4 @ case 10
_022F01D4:
	ldr r1, _022F04E8 @ =0x00000112
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F01E4:
	sub r2, r1, #0x37
	cmp r0, r2
	bgt _022F0220
	bge _022F04C4
	sub r2, r1, #0x39
	cmp r0, r2
	bgt _022F0210
	sub r1, r1, #0x39
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0210:
	sub r1, r1, #0x38
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0220:
	sub r2, r1, #0x2c
	cmp r0, r2
	bgt _022F023C
	sub r1, r1, #0x2c
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F023C:
	sub r1, r1, #0x2b
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F024C:
	sub r2, r1, #0x14
	cmp r0, r2
	bgt _022F02BC
	bge _022F04CC
	sub r2, r1, #0x20
	cmp r0, r2
	bgt _022F0294
	bge _022F04C4
	sub r2, r1, #0x27
	cmp r0, r2
	bgt _022F0288
	sub r1, r1, #0x27
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0288:
	cmp r0, #0x1d8
	beq _022F04CC
	b _022F04DC
_022F0294:
	sub r2, r1, #0x1f
	cmp r0, r2
	bgt _022F02B0
	sub r1, r1, #0x1f
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F02B0:
	cmp r0, #0x1e4
	beq _022F04C4
	b _022F04DC
_022F02BC:
	sub r2, r1, #0xb
	cmp r0, r2
	bgt _022F02F8
	bge _022F04C4
	sub r2, r1, #0xd
	cmp r0, r2
	bgt _022F02E8
	sub r1, r1, #0xd
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F02E8:
	sub r1, r1, #0xc
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F02F8:
	cmp r0, #0x1f4
	bgt _022F0308
	beq _022F04C4
	b _022F04DC
_022F0308:
	cmp r0, #0x1f8
	beq _022F04C4
	b _022F04DC
_022F0314:
	add r2, r1, #0x9b
	cmp r0, r2
	bgt _022F03FC
	bge _022F04D4
	add r2, r1, #0x10
	cmp r0, r2
	bgt _022F0398
	bge _022F04CC
	cmp r0, #0x204
	bgt _022F036C
	bge _022F04C4
	add r2, r1, #1
	cmp r0, r2
	bgt _022F035C
	add r1, r1, #1
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F035C:
	add r1, r1, #4
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F036C:
	add r2, r1, #0xb
	cmp r0, r2
	bgt _022F0388
	add r1, r1, #0xb
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0388:
	add r1, r1, #0xf
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F0398:
	add r2, r1, #0x17
	cmp r0, r2
	bgt _022F03D0
	bge _022F04C4
	add r2, r1, #0x15
	cmp r0, r2
	bgt _022F03C4
	add r1, r1, #0x15
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F03C4:
	cmp r0, #0x214
	beq _022F04C4
	b _022F04DC
_022F03D0:
	add r2, r1, #0x37
	cmp r0, r2
	bgt _022F03EC
	add r1, r1, #0x37
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F03EC:
	add r1, r1, #0x38
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F03FC:
	ldr r2, _022F04EC @ =0x0000037F
	cmp r0, r2
	bgt _022F0464
	bge _022F04C4
	sub r1, r2, #0x82
	cmp r0, r1
	bgt _022F0440
	bge _022F04C4
	sub r1, r2, #0xa6
	cmp r0, r1
	bgt _022F0430
	beq _022F04C4
	b _022F04DC
_022F0430:
	sub r1, r2, #0xa5
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0440:
	sub r1, r2, #0x81
	cmp r0, r1
	bgt _022F0454
	beq _022F04C4
	b _022F04DC
_022F0454:
	sub r1, r2, #0x61
	cmp r0, r1
	beq _022F04CC
	b _022F04DC
_022F0464:
	add r1, r2, #0x9f
	cmp r0, r1
	bgt _022F0498
	bge _022F04C4
	add r1, r2, #0x5a
	cmp r0, r1
	bgt _022F0488
	beq _022F04C4
	b _022F04DC
_022F0488:
	add r1, r2, #0x6a
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F0498:
	add r1, r2, #0xcb
	cmp r0, r1
	bgt _022F04B8
	bge _022F04C4
	add r1, r2, #0xab
	cmp r0, r1
	beq _022F04C4
	b _022F04DC
_022F04B8:
	add r1, r2, #0xcc
	cmp r0, r1
	bne _022F04DC
_022F04C4:
	mov r0, #0
	bx lr
_022F04CC:
	mov r0, #1
	bx lr
_022F04D4:
	mov r0, #0
	bx lr
_022F04DC:
	mov r0, #1
	bx lr
	.align 2, 0
_022F04E4: .4byte 0x000001FE
_022F04E8: .4byte 0x00000112
_022F04EC: .4byte 0x0000037F
	arm_func_end ov29_022EFBAC

	arm_func_start ov29_022F04F0
ov29_022F04F0: @ 0x022F04F0
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrsh r0, [r4, #4]
	bl ov29_022EFBAC
	cmp r0, #0
	movne r0, #1
	strbne r0, [r5, #0xb3]
	strbne r0, [r4, #0x171]
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022F04F0

	arm_func_start ov29_022F0518
ov29_022F0518: @ 0x022F0518
	ldr r2, [r0, #0xb4]
	mov r1, #0
	ldr ip, _022F0530 @ =FUN_0201D198
	add r0, r0, #0x2c
	strb r1, [r2, #0x171]
	bx ip
	.align 2, 0
_022F0530: .4byte FUN_0201D198
	arm_func_end ov29_022F0518

	arm_func_start ov29_022F0534
ov29_022F0534: @ 0x022F0534
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _022F058C @ =0x02353538
	mov r7, r0
	mov r5, #0
_022F0544:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022F057C
	cmp r7, #0
	mov r0, r6
	bne _022F0578
	bl ov29_022F0518
	b _022F057C
_022F0578:
	bl ov29_022F04F0
_022F057C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022F0544
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F058C: .4byte 0x02353538
	arm_func_end ov29_022F0534

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022F0590
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022F05B4
ov29_022F05B4: @ 0x022F05B4
	push {r4, lr}
	mov r4, r1
	cmp r2, #0
	bne _022F05D4
	bl ov29_022F0518
	mov r0, r4
	bl ov29_022F0518
	pop {r4, pc}
_022F05D4:
	bl ov29_022F04F0
	mov r0, r4
	bl ov29_022F04F0
	pop {r4, pc}
	arm_func_end ov29_022F05B4

	arm_func_start ov29_022F05E4
ov29_022F05E4: @ 0x022F05E4
	push {r3, lr}
	bl ov29_022F0AE0
	bl ov29_0234D668
	bl ov29_0234D838
	mov r0, #0x20
	mov r1, #0x62
	bl ov29_022EA370
	pop {r3, pc}
	arm_func_end ov29_022F05E4

	arm_func_start ov29_022F0604
ov29_022F0604: @ 0x022F0604
	push {r3, lr}
	mov r3, #0
	str r3, [sp]
	bl ov29_022F0984
	pop {r3, pc}
	arm_func_end ov29_022F0604

	arm_func_start ov29_022F0618
ov29_022F0618: @ 0x022F0618
	push {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl ov29_022F0984
	pop {r3, pc}
	arm_func_end ov29_022F0618

	arm_func_start ov29_022F062C
ov29_022F062C: @ 0x022F062C
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov29_022F0984
	mov r4, r0
	bl ov29_022F0AE0
	mov r0, r4
	add sp, sp, #4
	pop {r3, r4, pc}
	arm_func_end ov29_022F062C

	arm_func_start ov29_022F0654
ov29_022F0654: @ 0x022F0654
	push {r4, lr}
	mov r4, r0
	add r0, r4, #4
	add r1, r1, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r4
	and r1, r1, #0xff
	bl ov29_022FA360
	pop {r4, pc}
	arm_func_end ov29_022F0654

	arm_func_start ov29_022F067C
ov29_022F067C: @ 0x022F067C
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x24
	mov r7, r0
	mov r6, r2
	cmp r1, #0
	bne _022F06F4
	mov r5, #0
	ldr r8, _022F077C @ =0x02353538
	mov r4, r5
	add sb, sp, #0x10
_022F06A4:
	ldr r0, [r8]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	strne sl, [sb, r5, lsl #2]
	add r4, r4, #1
	addne r5, r5, #1
	cmp r4, #4
	blt _022F06A4
	cmp r5, #4
	addlt r0, sp, #0x10
	movlt r1, #0
	strlt r1, [r0, r5, lsl #2]
	blt _022F0700
	moveq r0, #0
	streq r0, [sp, #0x20]
	b _022F0700
_022F06F4:
	mov r0, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
_022F0700:
	mov r2, #0
	mov r4, #1
	strb r4, [sp, #8]
	strh r2, [sp, #0xa]
	strh r6, [sp, #0xc]
	strb r4, [sp, #0xe]
	strb r2, [sp, #0xf]
	add r1, sp, #8
	add r3, sp, #0x10
	mov r0, r7
	stm sp, {r2, r4}
	bl ov29_02322DDC
	mov r0, r4
	bl ov29_022E38E0
	mov r3, #0
	add r0, sp, #0x10
	add r2, sp, #8
	mov r1, r7
	str r3, [sp]
	bl ExecuteMoveEffect
	bl ov29_022E81F8
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_0234B1A4
	bl GetLeader
	mov r1, r4
	mov r2, r1
	bl ov29_022F98B4
	add sp, sp, #0x24
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F077C: .4byte 0x02353538
	arm_func_end ov29_022F067C

	arm_func_start ov29_022F0780
ov29_022F0780: @ 0x022F0780
	push {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov29_0234D668
	bl ov29_0234B034
	mov r2, #0
	mov r1, r0
	mov ip, #1
	mov r0, r4
	mov r3, r2
	str ip, [sp]
	bl ov29_0234D690
	bl ov29_0234D9C0
	add sp, sp, #4
	pop {r3, r4, pc}
	arm_func_end ov29_022F0780

	arm_func_start ov29_022F07BC
ov29_022F07BC: @ 0x022F07BC
	push {r3, lr}
	rsb r0, r0, #0
	bl FUN_0200ED58
	ldr r0, _022F07D4 @ =0x00001308
	bl FUN_02017C80
	pop {r3, pc}
	.align 2, 0
_022F07D4: .4byte 0x00001308
	arm_func_end ov29_022F07BC

	arm_func_start ov29_022F07D8
ov29_022F07D8: @ 0x022F07D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _022F0844 @ =0x02353538
	mov r4, r0
	mov r6, #0
_022F07E8:
	ldr r0, [r5]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022F082C
	mov r0, r7
	bl ov29_022FBDF0
	cmp r0, #0
	beq _022F082C
	mov r0, r7
	mov r1, r4
	bl ov29_022FA360
	mov r0, r7
	bl UpdateAiTargetPos
_022F082C:
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	cmp r6, #0x14
	blt _022F07E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F0844: .4byte 0x02353538
	arm_func_end ov29_022F07D8

	arm_func_start ov29_022F0848
ov29_022F0848: @ 0x022F0848
	ldr ip, _022F0858 @ =ov29_022EA428
	mov r0, #0
	mov r1, r0
	bx ip
	.align 2, 0
_022F0858: .4byte ov29_022EA428
	arm_func_end ov29_022F0848

	arm_func_start ov29_022F085C
ov29_022F085C: @ 0x022F085C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r8, r1
	mov r1, #1
	lsl r1, r1, r8
	str r1, [sp, #4]
	lsl r1, r1, #8
	mov fp, r0
	mov r0, #0x100
	str r1, [sp]
	bl FUN_02001AB0
	ldr r1, _022F0980 @ =0x02353538
	mov r0, #0x400
	ldr r2, [r1]
	mov r1, #0
	add r5, r2, #0x1e0
	bl FUN_02001170
	mov r6, r0
	mov r4, #0
_022F08A8:
	add r3, r5, r4, lsl #2
	add r2, r6, r4, lsl #2
	mov r1, #4
_022F08B4:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _022F08B4
	add r4, r4, #1
	cmp r4, #0x100
	blt _022F08A8
	mov r4, #0
	b _022F0964
_022F08D8:
	mov r0, #0x25
	lsl r7, r4, #8
	bl AdvanceFrame
	ldr r0, [sp]
	mov sl, #0
	sub sb, r0, r4, lsl #8
_022F08F0:
	add r1, r6, sl, lsl #2
	ldrb r0, [r6, sl, lsl #2]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	mul r0, sb, r0
	add r1, fp, sl, lsl #2
	mul ip, sb, r3
	mul r2, sb, r2
	ldrb lr, [r1, #1]
	ldrb r3, [r1, #2]
	ldrb r1, [fp, sl, lsl #2]
	mla ip, r7, lr, ip
	mla r2, r7, r3, r2
	mla r0, r7, r1, r0
	asr r0, r0, #8
	asr r0, r0, r8
	asr r3, ip, #8
	asr r1, r2, #8
	asr r3, r3, r8
	strb r0, [r5, sl, lsl #2]
	add r2, r5, sl, lsl #2
	add sl, sl, #1
	strb r3, [r2, #1]
	asr r0, r1, r8
	strb r0, [r2, #2]
	cmp sl, #0x100
	blt _022F08F0
	bl ov29_022DE608
	add r4, r4, #1
_022F0964:
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _022F08D8
	mov r0, r6
	bl FUN_02001188
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F0980: .4byte 0x02353538
	arm_func_end ov29_022F085C

	arm_func_start ov29_022F0984
ov29_022F0984: @ 0x022F0984
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r1
	ldr r4, [r6, #0xb4]
	mov r7, r0
	ldrsh r1, [r4, #2]
	add r0, sp, #0xc
	mov r5, r3
	bl ov29_0234BAC0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _022F09E0
	mov r0, r6
	bl ov29_022F9C4C
	cmp r0, #0
	bne _022F09E0
	mov r1, r6
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrsh r0, [r4, #0xc]
	bl ov29_0234B118
	b _022F09F4
_022F09E0:
	ldrsh r1, [r4, #2]
	mov r0, #1
	bl ov29_0234B0CC
	ldrsh r0, [r4, #2]
	bl ov29_0234B104
_022F09F4:
	cmp r5, #0
	beq _022F0A6C
	mov r1, #1
	add r0, sp, #4
	mov r2, r5
	mov r3, r1
	str r1, [sp]
	bl ov29_0234D860
	ldrb r0, [sp, #0x30]
	cmp r0, #0
	beq _022F0A28
	ldr r0, _022F0AA0 @ =ov29_022F0AA4
	bl ov29_0234D878
_022F0A28:
	add r0, sp, #0xc
	bl ov29_0234DBE0
	bl ov29_0234B034
	mov r1, r0
	mov ip, #0
	add r2, sp, #4
	mov r0, r7
	mov r3, #1
	str ip, [sp]
	bl ov29_0234D690
	bl ov29_0234D9C0
	bl ov29_0234D88C
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	b _022F0A98
_022F0A6C:
	add r0, sp, #0xc
	bl ov29_0234DBE0
	bl ov29_0234B034
	mov r1, r0
	mov r3, #1
	mov r0, r7
	mov r2, #0
	str r3, [sp]
	bl ov29_0234D690
	bl ov29_0234D9C0
	mov r0, #1
_022F0A98:
	add sp, sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022F0AA0: .4byte ov29_022F0AA4
	arm_func_end ov29_022F0984

	arm_func_start ov29_022F0AA4
ov29_022F0AA4: @ 0x022F0AA4
	push {r3, lr}
	ldr r1, _022F0AD4 @ =0x023535A4
	mvn r0, #1
	ldrsb r1, [r1]
	cmp r1, r0
	popne {r3, pc}
	ldr r0, _022F0AD8 @ =0x023526A8
	ldr r1, _022F0ADC @ =ov29_022F0B10
	bl FUN_0202F8C4
	ldr r1, _022F0AD4 @ =0x023535A4
	strb r0, [r1]
	pop {r3, pc}
	.align 2, 0
_022F0AD4: .4byte 0x023535A4
_022F0AD8: .4byte 0x023526A8
_022F0ADC: .4byte ov29_022F0B10
	arm_func_end ov29_022F0AA4

	arm_func_start ov29_022F0AE0
ov29_022F0AE0: @ 0x022F0AE0
	push {r3, lr}
	ldr r0, _022F0B0C @ =0x023535A4
	mvn r1, #1
	ldrsb r0, [r0]
	cmp r0, r1
	popeq {r3, pc}
	bl FUN_0202F8FC
	ldr r0, _022F0B0C @ =0x023535A4
	mvn r1, #1
	strb r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022F0B0C: .4byte 0x023535A4
	arm_func_end ov29_022F0AE0

	arm_func_start ov29_022F0B10
ov29_022F0B10: @ 0x022F0B10
	push {r3, r4, lr}
	sub sp, sp, #0xd4
	mov r4, r0
	bl FUN_02027B1C
	add r0, sp, #4
	bl FUN_02023690
	bl FUN_0200ECFC
	str r0, [sp, #0x28]
	add r1, sp, #4
	str r1, [sp]
	ldr r2, _022F0B84 @ =0x023526B8
	add r0, sp, #0x54
	mov r1, #0x80
	mov r3, #0x400
	bl FUN_020223F0
	mov r1, #4
	ldr r3, _022F0B88 @ =0x00000225
	mov r0, r4
	mov r2, r1
	bl FUN_02026268
	mov r0, r4
	mov r1, #0xa
	mov r2, #0x14
	add r3, sp, #0x54
	bl FUN_02026214
	mov r0, r4
	bl FUN_02027AF0
	add sp, sp, #0xd4
	pop {r3, r4, pc}
	.align 2, 0
_022F0B84: .4byte 0x023526B8
_022F0B88: .4byte 0x00000225
	arm_func_end ov29_022F0B10

	arm_func_start ov29_022F0B8C
ov29_022F0B8C: @ 0x022F0B8C
	push {r3, lr}
	bl ov29_022E9618
	add r0, r0, #0x4a
	pop {r3, pc}
	arm_func_end ov29_022F0B8C

	arm_func_start ov29_022F0B9C
ov29_022F0B9C: @ 0x022F0B9C
	push {r3, lr}
	bl ov29_022E9618
	ldrh r0, [r0, #0x4a]
	pop {r3, pc}
	arm_func_end ov29_022F0B9C

	arm_func_start ov29_022F0BAC
ov29_022F0BAC: @ 0x022F0BAC
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r3, r0
	mov r6, r1
	add r0, sp, #0
	add r1, r3, #0x2c
	mov r2, #3
	ldrsh r4, [r3, #0x48]
	ldrsh r5, [r3, #0x4a]
	bl FUN_0201CF90
	ldrsh r0, [sp]
	add r0, r4, r0
	sub r0, r0, #0xc
	str r0, [r6, #8]
	ldrsh r0, [sp, #2]
	add r0, r5, r0
	sub r0, r0, #0xc
	str r0, [r6]
	ldrsh r0, [sp]
	add r0, r4, r0
	add r0, r0, #0xc
	str r0, [r6, #0xc]
	ldrsh r0, [sp, #2]
	add r0, r5, r0
	add r0, r0, #0xc
	str r0, [r6, #4]
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov29_022F0BAC

	arm_func_start ov29_022F0C1C
ov29_022F0C1C: @ 0x022F0C1C
	push {r3, lr}
	cmp r0, #0
	moveq r0, #0
	popeq {r3, pc}
	ldr r1, [r0, #0xb4]
	mov r2, #0
	bl ov29_022F3B98
	pop {r3, pc}
	arm_func_end ov29_022F0C1C

	arm_func_start ov29_022F0C3C
ov29_022F0C3C: @ 0x022F0C3C
	push {r4, lr}
	sub sp, sp, #8
	movs r4, r0
	moveq r0, #0
	beq _022F0C90
	cmp r1, #0
	beq _022F0C74
	add r3, sp, #0
	mov r2, #4
_022F0C60:
	ldrh r0, [r1], #2
	subs r2, r2, #1
	strh r0, [r3], #2
	bne _022F0C60
	b _022F0C80
_022F0C74:
	add r0, sp, #0
	mov r1, #0x160
	bl FUN_020137B8
_022F0C80:
	ldr r1, [r4, #0xb4]
	add r2, sp, #0
	mov r0, r4
	bl ov29_022F3B98
_022F0C90:
	add sp, sp, #8
	pop {r4, pc}
	arm_func_end ov29_022F0C3C

	arm_func_start ov29_022F0C98
ov29_022F0C98: @ 0x022F0C98
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl FUN_0204AEA0
	mov r7, r0
	mov r0, #4
	mov r1, #0x2f
	mov r8, #0
	bl ov29_022EA370
	mov r0, r8
	mov r1, r0
	bl ov29_02009194
	mov r0, #2
	mov r1, r8
	bl ov29_02009194
	mov r0, #3
	mov r1, r8
	bl ov29_02009194
	mov r0, #4
	mov r1, r8
	bl ov29_02009194
	ldr r1, _022F0EC8 @ =0x02353538
	ldr r2, _022F0ECC @ =0x0237CFBB
	ldr r1, [r1]
	mov r0, #1
	strb r0, [r2]
	add r1, r1, #0x1a000
	strb r0, [r1, #0x249]
	bl ov29_0234B1A4
	mov r0, #1
	bl ov29_02338F58
	cmp sl, #0
	bne _022F0D24
	bl FUN_0204AEC0
	cmp r0, #0
	bne _022F0D44
_022F0D24:
	mov r0, #0
	mov r1, r0
	bl ov29_02339D7C
	cmp sl, #0
	beq _022F0D44
	mov r0, #0xc
	mov r1, #0
	bl ov29_022EA428
_022F0D44:
	bl ov29_023391C0
	mov sb, r0
	mov r0, #0
	mov r1, r0
	bl ov29_02339190
	bl ov29_02339CE8
	mov r0, #4
	mov r1, #0x2f
	bl ov29_022EA370
	ldr r4, _022F0ED0 @ =0x0237C6A4
	ldr r5, _022F0ECC @ =0x0237CFBB
	ldr r6, _022F0ED4 @ =0x0237C694
	mov fp, #0x2f
_022F0D78:
	mov r0, fp
	bl AdvanceFrame
	ldrh r3, [r6, #2]
	tst r3, #6
	beq _022F0D98
	ldr r0, _022F0ED8 @ =0x00003F03
	bl FUN_02017C80
	b _022F0E30
_022F0D98:
	ldrb r0, [r5]
	cmp r0, #0
	bne _022F0DDC
	ldrh r2, [r4]
	mov r1, #0
	tst r2, #0x40
	beq _022F0DBC
	tst r2, #2
	movne r1, #1
_022F0DBC:
	cmp r1, #0
	movne r8, #1
	cmp r8, #0
	beq _022F0DE0
	tst r2, #4
	beq _022F0DE0
	bl ov29_022E0C4C
	b _022F0E30
_022F0DDC:
	mov r8, #0
_022F0DE0:
	tst r3, #1
	bne _022F0E18
	tst r3, #0x400
	bne _022F0E18
	cmp r0, #0
	beq _022F0D78
	ldrh r1, [r4]
	mov r2, #0
	tst r1, #0x40
	beq _022F0E10
	tst r1, #2
	movne r2, #1
_022F0E10:
	cmp r2, #0
	beq _022F0D78
_022F0E18:
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	strb r0, [r5]
	bl ov29_02339CE8
	b _022F0D78
_022F0E30:
	cmp sl, #0
	bne _022F0E44
	bl FUN_0204AEC0
	cmp r0, #0
	bne _022F0E64
_022F0E44:
	mov r0, #0
	mov r1, r0
	bl ov29_0233A0E8
	cmp sl, #0
	beq _022F0E64
	mov r0, #0xb
	mov r1, #0
	bl ov29_022EA428
_022F0E64:
	mov r0, sb
	mov r1, #0
	bl ov29_02339190
	mov r0, #0
	bl ov29_02338F58
	ldr r1, _022F0EC8 @ =0x02353538
	mov r0, r7
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0x1a000
	strb r2, [r1, #0x249]
	bl FUN_0204AEB0
	ldr r0, _022F0ECC @ =0x0237CFBB
	mov r1, #1
	strb r1, [r0]
	bl ov29_02339CE8
	mov r0, #0
	bl ov29_020091CC
	mov r0, #0x2f
	bl AdvanceFrame
	mov r0, #0x2f
	bl AdvanceFrame
	bl FUN_02006B70
	bl ov29_022E0B44
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F0EC8: .4byte 0x02353538
_022F0ECC: .4byte 0x0237CFBB
_022F0ED0: .4byte 0x0237C6A4
_022F0ED4: .4byte 0x0237C694
_022F0ED8: .4byte 0x00003F03
	arm_func_end ov29_022F0C98

	arm_func_start ov29_022F0EDC
ov29_022F0EDC: @ 0x022F0EDC
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xdc
	ldr r1, _022F1DDC @ =0x02353538
	add r0, sp, #0xb6
	ldr r2, [r1]
	mov r1, #5
	add r2, r2, #0x21c
	add r5, r2, #0x1a000
	mov r2, #3
	str r2, [sp, #0x68]
	mov r2, #0
	str r2, [sp, #0x64]
	bl FUN_02003250
	ldr r0, _022F1DDC @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strh r1, [r0, #0x1c]
	bl GetLeader
	mov r1, #1
	mov r2, r1
	bl ov29_022F98B4
	bl GetLeader
	bl ov29_022FB538
	bl GetLeader
	bl ov29_022FF3F4
	cmp r0, #0
	beq _022F0F58
	mov r0, #0x3c
	mov r1, #0x10
	bl ov29_022EA370
	b _022F2B34
_022F0F58:
	ldr r0, _022F1DDC @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	bl ov29_02339CD4
	ldr r0, _022F1DDC @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _022F1000
	mov r0, #0
	strb r0, [r1, #5]
	bl IsGoldenChamber
	cmp r0, #0
	beq _022F0FAC
	bl ov29_0234A980
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _022F2B34
_022F0FAC:
	bl GetLeader
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	bne _022F1000
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #1
	bl ov29_022EB398
	bl ov29_022F2FE4
	mov r0, #0
	bl ov29_0233A248
	bl GetLeader
	mov r1, #0
	bl ov29_0234E8F8
	bl ov29_022E0B44
	bl FUN_02006B70
	bl ov29_022E9618
	ldrh r0, [r0, #0x4a]
	cmp r0, #0
	bne _022F2B34
_022F1000:
	mov r0, #1
	mov r1, r0
	mov r2, r0
	bl ov29_022FA2F0
	ldr r1, _022F1DE0 @ =0x0235171C
	ldrsh r0, [r1, #0x12]
	str r0, [sp, #8]
	ldrsh r0, [r1, #0x10]
	str r0, [sp, #4]
_022F1024:
	bl GetLeader
	ldr r1, _022F1DDC @ =0x02353538
	mov r6, r0
	ldr r0, [r1]
	ldr sb, [r6, #0xb4]
	ldrb r0, [r0, #0x78b]
	cmp r0, #0
	beq _022F1064
	bl ov29_022F308C
	cmp r0, #0
	movne r0, #2
	strhne r0, [sb, #0x4a]
	movne r0, #0
	strbne r0, [sb, #0x4e]
	bne _022F2B34
	bl ov29_022F2FE4
_022F1064:
	ldr r1, _022F1DE4 @ =0x0237C9A4
	mov r2, #0
	strb r2, [r1, #2]
	ldr r0, _022F1DDC @ =0x02353538
	strb r2, [r1, #1]
	ldr r0, [r0]
	ldr r0, [r0, #0x614]
	cmp r0, #0
	strblt r2, [sp, #0xb6]
	strblt r2, [sp, #0xb7]
	strblt r2, [sp, #0xb8]
	strblt r2, [sp, #0xba]
	blt _022F10AC
	mov r0, #1
	strb r0, [sp, #0xb6]
	strb r2, [sp, #0xb7]
	strb r2, [sp, #0xb8]
	strb r2, [sp, #0xba]
_022F10AC:
	mov r0, #0
	str r0, [sp, #0x6c]
	bl ov29_022EB3C8
	ldr r0, _022F1DE4 @ =0x0237C9A4
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #3]
	sub r0, sp, #4
	str r0, [sp, #0x70]
	ldr r0, _022F1DE8 @ =0x00000BA3
	mvn r4, #0
	sub r0, r0, #1
	str r0, [sp, #0x88]
	ldr r0, _022F1DE8 @ =0x00000BA3
	sub r0, r0, #2
	str r0, [sp, #0x84]
	ldr r0, _022F1DE8 @ =0x00000BA3
	sub r0, r0, #5
	str r0, [sp, #0x80]
	ldr r0, _022F1DE8 @ =0x00000BA3
	sub r0, r0, #4
	str r0, [sp, #0x7c]
	add r0, sb, #0x100
	str r0, [sp, #0x8c]
_022F110C:
	mov r7, #0
	mov r0, r7
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	str r0, [sp, #0x2c]
	ldrb r0, [sp, #0xb6]
	cmp r0, #0
	bne _022F2970
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrsh r0, [r0, #4]
	add r1, r0, #1
	ldr r0, _022F1DE4 @ =0x0237C9A4
	strh r1, [r0, #4]
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	movne r0, r7
	strne r0, [sp, #0x6c]
	ldreq r0, [sp, #0x6c]
	addeq r0, r0, #1
	streq r0, [sp, #0x6c]
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _022F117C
	subs r0, r0, #1
	str r0, [sp, #0x68]
	bne _022F117C
	mov r0, #0
	bl ov29_023055B0
_022F117C:
	mov r0, r6
	bl ov29_022F2B74
	ldr r0, _022F1DEC @ =0x0237C6A4
	mov r8, #0
	ldrh r1, [r0]
	tst r1, #0x40
	movne r0, #1
	moveq r0, #0
	and sl, r0, #0xff
	tst r1, #0x10
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp, #0x58]
	tst r1, #0x20
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	tst r1, #0x200
	str r0, [sp, #0x54]
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp, #0x50]
	mov r0, r8
	str r0, [sp, #0x5c]
	bl ov29_022E0C3C
	cmp r0, #0
	beq _022F1208
	cmp sl, #0
	bne _022F1200
	mov r0, r8
	bl ov29_022E0C2C
_022F1200:
	mov sl, #0
	b _022F1228
_022F1208:
	mov r0, r8
	bl ov29_022E0C2C
	ldr r0, _022F1DEC @ =0x0237C6A4
	ldrh r0, [r0]
	tst r0, #0x100
	movne r0, #1
	moveq r0, r8
	and sl, r0, #0xff
_022F1228:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _022F1268
	mov r0, r6
	add r1, sp, #0xae
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0xae]
	cmp r1, r0
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0xb0]
	cmpeq r1, r0
	moveq r0, #0
	streq r0, [sp, #0x50]
_022F1268:
	ldr r0, _022F1DEC @ =0x0237C6A4
	mov r1, #0
	ldrh r0, [r0]
	tst r0, #0x80
	beq _022F1284
	tst r0, #0x1000
	movne r1, #1
_022F1284:
	cmp r1, #0
	beq _022F12E0
	mov r0, r6
	add r1, sp, #0xae
	mov r2, #0x66
	mov r3, #0
	bl ov29_022F3EA0
	mov r0, r6
	add r1, sp, #0xaa
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r2, [r6, #4]
	ldrsh r0, [sp, #0xae]
	cmp r2, r0
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0xb0]
	cmpeq r1, r0
	ldrsheq r0, [sp, #0xaa]
	cmpeq r2, r0
	ldrsheq r0, [sp, #0xac]
	cmpeq r1, r0
	moveq r8, #1
_022F12E0:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _022F1344
	mov r0, r6
	add r1, sp, #0xae
	mov r2, #0x66
	mov r3, #0
	bl ov29_022F3EA0
	mov r0, r6
	add r1, sp, #0xaa
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r2, [r6, #4]
	ldrsh r0, [sp, #0xae]
	cmp r2, r0
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0xb0]
	cmpeq r1, r0
	ldrsheq r0, [sp, #0xaa]
	cmpeq r2, r0
	ldrsheq r0, [sp, #0xac]
	cmpeq r1, r0
	moveq r0, #1
	streq r0, [sp, #0x5c]
_022F1344:
	cmp r8, #0
	bne _022F1364
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #1
	beq _022F13B0
	tst r0, #2
	beq _022F13B0
_022F1364:
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x46]
	ldr r0, [sp, #0x70]
	strh r1, [r0]
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x48]
	ldr r0, [sp, #0x70]
	strh r1, [r0, #2]
	ldr r0, [r0]
	bl FUN_02051064
	cmp r0, #0
	beq _022F13B0
	mov r0, #1
	bl ov29_022EB3C8
	ldr r0, _022F1DDC @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	b _022F2970
_022F13B0:
	mov r0, #0
	strh r4, [sp, #0xb2]
	strh r4, [sp, #0xb4]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	str r0, [sp, #0x38]
	mov fp, r0
	mov r8, r0
	str r0, [sp, #0x60]
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _022F1440
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _022F1408
	mov r8, #1
	bl FUN_0200F208
	cmp r0, #0
	movge r0, r8
	strge r0, [sp, #0x60]
	b _022F1440
_022F1408:
	ldr r0, _022F1DEC @ =0x0237C6A4
	mov r1, r8
	ldrh r0, [r0]
	tst r0, #0x80
	beq _022F1424
	tst r0, #2
	movne r1, #1
_022F1424:
	cmp r1, #0
	movne r8, #2
	bne _022F1440
	cmp sl, #0
	ldreq r0, [sp, #0x50]
	cmpeq r0, #0
	movne r8, #3
_022F1440:
	cmp r8, #0
	beq _022F16F4
	cmp r8, #1
	mov r0, r6
	add r1, sp, #0xa6
	mov r3, #0
	bne _022F1468
	mov r2, #0x65
	bl ov29_022F3EA0
	b _022F1470
_022F1468:
	mov r2, #0x64
	bl ov29_022F3EA0
_022F1470:
	mov r7, r0
	cmp r7, #0
	blt _022F16F4
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0xa6]
	cmp r1, r0
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0xa8]
	cmpeq r1, r0
	beq _022F16F4
	mov r0, r6
	add r1, sp, #0xa6
	bl ov29_022F426C
	cmp r0, #0
	bne _022F16F4
	ldrh r0, [sp, #0xa8]
	ldrh r1, [sp, #0xa6]
	mov r3, #0
	strh r0, [sp, #0x94]
	strh r0, [sp, #0xa4]
	add r0, r7, #4
	strh r1, [sp, #0xa2]
	strh r1, [sp, #0x92]
	lsl r0, r0, #0x1d
	ldr r1, _022F1DE0 @ =0x0235171C
	lsr ip, r0, #0x1b
	ldrsh r1, [r1, ip]
	ldrsh r2, [sp, #0xa2]
	ldr ip, _022F1DE0 @ =0x0235171C
	add r0, ip, r0, lsr #27
	add r1, r2, r1
	strh r1, [sp, #0xa2]
	ldrsh r0, [r0, #2]
	ldrsh ip, [sp, #0xa4]
	ldrsh r2, [r6, #4]
	ldrsh r1, [sp, #0xa2]
	add r0, ip, r0
	strh r0, [sp, #0xa4]
	cmp r2, r1
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0xa4]
	cmpeq r1, r0
	ldrh r1, [sp, #0x92]
	ldrh r0, [sp, #0x94]
	moveq r3, #1
	cmp r8, #2
	strh r1, [sp, #0xb2]
	strh r0, [sp, #0xb4]
	beq _022F1548
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _022F15C0
	cmp r3, #0
	bne _022F15C0
_022F1548:
	add r0, sp, #0xa6
	bl ov29_02337B68
	cmp r0, #0
	beq _022F16F4
	ldr r1, [sp, #0x60]
	ldr r0, [r0, #0xb4]
	cmp r1, #1
	bne _022F1584
	bl ov29_022F2B3C
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x38]
	moveq r0, #0
	streq r0, [sp, #0x38]
	b _022F16F4
_022F1584:
	cmp r1, #2
	bne _022F15A8
	bl ov29_022F2B3C
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x38]
	moveq r0, #0
	streq r0, [sp, #0x38]
	b _022F16F4
_022F15A8:
	cmp r8, #2
	moveq r0, #0
	streq r0, [sp, #0x30]
	moveq fp, #1
	streq r0, [sp, #0x34]
	b _022F16F4
_022F15C0:
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0xa2]
	cmp r1, r0
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0xa4]
	cmpeq r1, r0
	bne _022F16F4
	add r0, sp, #0xa6
	bl ov29_02337B68
	str r0, [sp, #0x74]
	cmp r0, #0
	beq _022F16A4
	cmp r8, #1
	ldr r0, [r0, #0xb4]
	bne _022F166C
	mov r1, #0
	str r1, [sp, #0x30]
	mov fp, r1
	bl ov29_022F2B3C
	cmp r0, #0
	beq _022F163C
	ldr r0, [sp, #0x60]
	cmp r0, #1
	mov r0, #1
	streq r0, [sp, #0x38]
	strne r0, [sp, #0x30]
	movne r0, fp
	strne r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x34]
	b _022F1698
_022F163C:
	mov r1, fp
	str r1, [sp, #0x38]
	ldr r0, [sp, #0x74]
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	mov r0, #1
	strne r0, [sp, #0x30]
	movne r0, fp
	strne r0, [sp, #0x34]
	streq r0, [sp, #0x34]
	b _022F1698
_022F166C:
	cmp r8, #3
	bne _022F1698
	bl ov29_022F2B3C
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x30]
	moveq r0, #0
	mov fp, #0
	streq r0, [sp, #0x30]
	mov r0, fp
	str r0, [sp, #0x34]
_022F1698:
	and r0, r7, #7
	strb r0, [sb, #0x4c]
	b _022F16F4
_022F16A4:
	ldrsh r1, [r6, #4]
	ldr r0, [sp, #4]
	ldrsh r2, [r6, #6]
	add r0, r1, r0
	ldr r1, [sp, #8]
	add r1, r2, r1
	bl GetTile
	ldrh r0, [r0]
	tst r0, #0x2000
	beq _022F16F4
	mov r0, #4
	strb r0, [sb, #0x4c]
	mov r0, #1
	str r0, [sp, #0x4c]
	mov r0, r6
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r6
	mov r2, #4
	bl ov29_023049A8
_022F16F4:
	bl FUN_0204AF10
	cmp r0, #0
	moveq r1, #0
	beq _022F17E0
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	movne r1, #0
	bne _022F17E0
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	and r0, r0, #0xf0
	lsl r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmpeq r0, #0
	moveq r1, #0
	beq _022F17E0
	cmp r0, #0x50
	moveq r1, #3
	streq r1, [sp, #0x20]
	cmp r0, #0x60
	moveq r1, #5
	streq r1, [sp, #0x20]
	cmp r0, #0x90
	moveq r1, #1
	streq r1, [sp, #0x20]
	cmp r0, #0xa0
	moveq r1, #7
	streq r1, [sp, #0x20]
	cmp r0, #0x40
	moveq r1, #4
	streq r1, [sp, #0x20]
	cmp r0, #0x80
	moveq r1, #0
	streq r1, [sp, #0x20]
	cmp r0, #0x10
	moveq r1, #2
	streq r1, [sp, #0x20]
	cmp r0, #0x20
	moveq r0, #6
	streq r0, [sp, #0x20]
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _022F17B8
	ldr r0, [sp, #0x20]
	tst r0, #1
	moveq r1, #0
	beq _022F17E0
_022F17B8:
	ldr r0, [sp, #0x20]
	ldrb r8, [sb, #0x4c]
	and r1, r0, #7
	mov r0, r6
	strb r1, [sb, #0x4c]
	bl ov29_022F87C0
	cmp r0, #0
	moveq r1, #0
	strbeq r8, [sb, #0x4c]
	movne r1, #1
_022F17E0:
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _022F1884
	cmp r1, #0
	beq _022F1884
	ldr r0, [sp, #0x64]
	cmp r0, #0
	bne _022F18B4
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #2
	beq _022F1868
	mov r0, r6
	bl ov29_022F87C0
	cmp r0, #0
	beq _022F1838
	mov r0, r6
	mov r1, sb
	bl ov29_022F37D0
	cmp r0, #0
	beq _022F1844
_022F1838:
	mov r0, #0
	str r0, [sp, #0x48]
	b _022F18B4
_022F1844:
	mov r0, #1
	str r0, [sp, #0x48]
	ldr r0, _022F1DDC @ =0x02353538
	ldr r1, [r0]
	mov r0, #1
	str r0, [sp, #0x2c]
	mov r0, #0
	strb r0, [r1, #0x78c]
	b _022F18B4
_022F1868:
	mov r0, #1
	str r0, [sp, #0x48]
	ldr r0, _022F1DDC @ =0x02353538
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1, #0x78c]
	b _022F18B4
_022F1884:
	cmp r0, #0
	bne _022F18A0
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x48]
	bne _022F18B4
_022F18A0:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #1
	movne r0, #1
	strne r0, [sp, #0x48]
_022F18B4:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #0x64]
	cmpeq fp, #0
	ldreq r0, [sp, #0x38]
	cmpeq r0, #0
	beq _022F19DC
	ldrsh r0, [sp, #0xb2]
	ldrsh r1, [sp, #0xb4]
	bl GetTileSafe
	str r0, [sp, #0x78]
	mov r0, #7
	bl FUN_02017CCC
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _022F198C
	ldrsh r1, [sp, #0xb2]
	ldrsh r0, [r6, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	ldrsh r1, [sp, #0xb4]
	ldrsh r0, [r6, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _022F19DC
	ldr r0, [sp, #0x60]
	cmp r0, #2
	bne _022F1968
	add r0, r6, #4
	add r1, sp, #0xb2
	bl GetDirectionTowardsPosition
	strb r0, [sb, #0x4c]
	ldrsh r0, [sp, #0xb2]
	strh r0, [sb, #0x5a]
	ldrsh r0, [sp, #0xb4]
	strh r0, [sb, #0x5c]
	b _022F19DC
_022F1968:
	cmp r8, #0
	cmpne r1, #0
	cmpne r8, r1
	bne _022F19DC
	add r0, r6, #4
	add r1, sp, #0xb2
	bl GetDirectionTowardsPosition
	strb r0, [sb, #0x4c]
	b _022F19DC
_022F198C:
	ldrsh r1, [sp, #0xb2]
	ldrsh r0, [r6, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _022F19DC
	ldrsh r1, [sp, #0xb4]
	ldrsh r0, [r6, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _022F19DC
	ldr r0, [sp, #0x78]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _022F19DC
	add r0, r6, #4
	add r1, sp, #0xb2
	bl GetDirectionTowardsPosition
	strb r0, [sb, #0x4c]
_022F19DC:
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ldreq r0, [sp, #0x34]
	cmpeq r0, #0
	ldreq r0, [sp, #0x30]
	cmpeq r0, #0
	cmpeq fp, #0
	beq _022F1CC0
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _022F1A64
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #2
	beq _022F1A64
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x46]
	ldr r0, [sp, #0x70]
	strh r1, [r0]
	ldr r0, [sp, #0x8c]
	ldrh r1, [r0, #0x48]
	ldr r0, [sp, #0x70]
	strh r1, [r0, #2]
	ldr r0, [r0]
	bl FUN_02051064
	cmp r0, #0
	beq _022F1CE0
	mov r0, #1
	bl ov29_022EB3C8
	ldr r0, _022F1DDC @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	b _022F2970
_022F1A64:
	mov r0, r6
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	beq _022F1AA0
	ldr r1, _022F1DF4 @ =0x00000B9A
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	bl ov29_022EB3C8
	ldr r0, _022F1DDC @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x78e]
	b _022F2970
_022F1AA0:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x200
	cmpeq fp, #0
	beq _022F1C48
	mov r4, #0
	mov r1, r4
	mov r2, #1
	b _022F1AF4
_022F1AC4:
	add r0, sb, r4, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	beq _022F1AF0
	add r0, sb, r4, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #8
	bne _022F1AFC
_022F1AF0:
	add r4, r4, #1
_022F1AF4:
	cmp r4, #4
	blt _022F1AC4
_022F1AFC:
	cmp r4, #4
	bne _022F1B20
	ldr r1, _022F1DF8 @ =0x00000B9B
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	cmp fp, #0
	beq _022F2970
	bl FUN_02006B70
	b _022F2970
_022F1B20:
	mov r3, #0
	mov r1, r3
	mov r2, #1
	b _022F1B5C
_022F1B30:
	add r0, sb, r3, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	addne r0, sb, r3, lsl #3
	ldrbne r0, [r0, #0x12a]
	cmpne r0, #0
	bne _022F1B64
	add r3, r3, #1
_022F1B5C:
	cmp r3, #4
	blt _022F1B30
_022F1B64:
	cmp r3, #4
	bne _022F1B9C
	bl FUN_0204AF20
	cmp r0, #0
	beq _022F1B8C
	mov r0, r6
	mov r1, #0
	bl ov29_022F0C3C
	cmp r0, #0
	beq _022F2970
_022F1B8C:
	add r0, sb, #0x4a
	mov r1, #0x17
	bl SetMonsterActionFields
	b _022F2970
_022F1B9C:
	mov r7, r4
	mov r1, #0
	b _022F1BD8
_022F1BA8:
	cmp r7, r4
	beq _022F1BC0
	add r0, sb, r7, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #2
	beq _022F1BE0
_022F1BC0:
	add r0, sb, r7, lsl #3
	ldrb r0, [r0, #0x12a]
	cmp r0, #0
	movne r1, #1
	bne _022F1BE0
	add r7, r7, #1
_022F1BD8:
	cmp r7, #4
	blt _022F1BA8
_022F1BE0:
	cmp r1, #0
	bne _022F1C04
	ldr r1, _022F1DFC @ =0x00000B9C
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	cmp fp, #0
	beq _022F2970
	bl FUN_02006B70
	b _022F2970
_022F1C04:
	bl FUN_0204AF20
	cmp r0, #0
	beq _022F1C28
	add r1, sb, #0x124
	mov r0, r6
	add r1, r1, r7, lsl #3
	bl ov29_022F0C3C
	cmp r0, #0
	beq _022F2970
_022F1C28:
	mov r0, r6
	bl ov29_022E2A38
	lsl r2, r4, #0x10
	mov r1, r0
	add r0, sb, #0x4a
	asr r2, r2, #0x10
	bl ov29_022EBC98
	b _022F2970
_022F1C48:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _022F1C74
	mov r0, r6
	mov r1, sb
	bl ov29_022F37D0
	cmp r0, #0
	beq _022F1CE0
	mov r0, #1
	str r0, [sp, #0x64]
	b _022F2970
_022F1C74:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _022F1C9C
	mov r0, r6
	mov r1, sb
	bl ov29_022F37D0
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x64]
	bne _022F2970
_022F1C9C:
	mov r0, r6
	mov r1, sb
	bl ov29_022F3AFC
	cmp r0, #0
	bne _022F2970
	add r0, sb, #0x4a
	mov r1, #0x32
	bl SetMonsterActionFields
	b _022F2970
_022F1CC0:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _022F1CE0
	mov r0, r6
	mov r1, sb
	bl ov29_022F3AFC
	cmp r0, #0
	bne _022F2970
_022F1CE0:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #0x400
	beq _022F1D10
	mov r0, #0
	mov r1, #1
	strb r1, [sp, #0xb6]
	strb r0, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r0, [sp, #0xb9]
	strb r0, [sp, #0xba]
	b _022F2970
_022F1D10:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _022F1D84
	mov r0, r6
	add r1, sp, #0xcc
	bl ov29_022F0BAC
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xcc]
	ldr r2, [sp, #0xd8]
	ldr r3, [sp, #0xd0]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov29_022E0CB8
	cmp r0, #0
	beq _022F1D84
	mov r0, #0
	mov r1, #1
	strb r1, [sp, #0xb6]
	strb r0, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r0, [sp, #0xb9]
	strb r0, [sp, #0xba]
	b _022F2970
_022F1D84:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0, #6]
	tst r0, #2
	beq _022F1DB0
	mov r1, #1
	mov r0, #0
	strb r1, [sp, #0xb6]
	strb r0, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r1, [sp, #0xb9]
	b _022F2970
_022F1DB0:
	ldr r1, [sp, #0x6c]
	ldr r0, _022F1E00 @ =0x00000708
	cmp r1, r0
	blt _022F1E04
	mov r1, #1
	mov r0, #0
	strb r1, [sp, #0xb6]
	strb r1, [sp, #0xb7]
	strb r0, [sp, #0xb8]
	strb r0, [sp, #0xb9]
	b _022F2970
	.align 2, 0
_022F1DDC: .4byte 0x02353538
_022F1DE0: .4byte 0x0235171C
_022F1DE4: .4byte 0x0237C9A4
_022F1DE8: .4byte 0x00000BA3
_022F1DEC: .4byte 0x0237C6A4
_022F1DF0: .4byte 0x0237C694
_022F1DF4: .4byte 0x00000B9A
_022F1DF8: .4byte 0x00000B9B
_022F1DFC: .4byte 0x00000B9C
_022F1E00: .4byte 0x00000708
_022F1E04:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x800
	bne _022F1E3C
	tst r0, #8
	cmpeq sl, #0
	bne _022F1E3C
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F1E3C
	bl ov29_0233779C
	ldr r0, _022F1DE4 @ =0x0237C9A4
	mov r1, #0
	strb r1, [r0, #2]
_022F1E3C:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x200
	beq _022F1E90
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #2
	beq _022F1E90
	bl FUN_0204AF78
	mov r0, #4
	bl FUN_02017CCC
	mov r0, #0
	mov r1, #1
	bl OpenMessageLog
	bl FUN_0204AF78
	cmp r0, #0
	beq _022F1E88
	bl ov29_02048134
	bl ov29_022E81F8
_022F1E88:
	bl ov29_022E0B44
	bl FUN_02006B70
_022F1E90:
	mov r0, #0
	str r0, [sp, #0x44]
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x100
	beq _022F1ECC
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldreq r0, _022F1DE4 @ =0x0237C9A4
	moveq r1, #0
	strheq r1, [r0, #4]
	mov r1, #1
	ldr r0, _022F1DE4 @ =0x0237C9A4
	b _022F1ED4
_022F1ECC:
	ldr r0, _022F1DE4 @ =0x0237C9A4
	mov r1, #0
_022F1ED4:
	strb r1, [r0, #1]
	ldr r0, _022F1DF0 @ =0x0237C694
	mov r8, #0
	ldrh r0, [r0, #2]
	tst r0, #0x800
	bne _022F1EF4
	tst r0, #8
	beq _022F1EF8
_022F1EF4:
	mov r8, #1
_022F1EF8:
	cmp sl, #0
	beq _022F1F68
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _022F1F68
	mov r0, r6
	add r1, sp, #0xbc
	bl ov29_022F0BAC
	ldr r0, _022F1DEC @ =0x0237C6A4
	ldrh r0, [r0]
	tst r0, #0x100
	beq _022F1F68
	ldr r0, [sp, #0xc4]
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xc8]
	ldr r3, [sp, #0xc0]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov29_022E0CB8
	cmp r0, #0
	movne r8, #1
_022F1F68:
	cmp r8, #0
	beq _022F20B8
	ldr r0, [r6, #0xb4]
	str r0, [sp, #0x10]
	ldrb r0, [r0, #0xf1]
	cmp r0, #2
	beq _022F2098
	mov r0, r6
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	bne _022F2098
	mov fp, #0
	b _022F2090
_022F1FA0:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldrb r1, [r0, #0x4c]
	mov r0, #1
	str r0, [sp, #0x1c]
	add r8, r1, #1
	b _022F204C
_022F1FC0:
	and r8, r8, #7
	ldr r1, _022F1DE0 @ =0x0235171C
	lsl r2, r8, #2
	ldrsh r3, [r1, r2]
	ldr r2, _022F1DE0 @ =0x0235171C
	ldrsh r0, [r6, #4]
	add r2, r2, r8, lsl #2
	ldrsh r1, [r6, #6]
	ldrsh r2, [r2, #2]
	add r0, r0, r3
	add r1, r1, r2
	bl GetTile
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _022F203C
	ldr r0, [r1]
	cmp r0, #1
	bne _022F203C
	ldr r0, [r1, #0xb4]
	str r0, [sp, #0xc]
	mov r0, r6
	bl ov29_022E274C
	cmp r0, #0
	beq _022F203C
	cmp fp, #0
	ldreq r0, [sp, #0xc]
	ldrbeq r0, [r0, #6]
	cmpeq r0, #0
	movne r0, #1
	strne r0, [sp, #0x18]
	bne _022F2058
_022F203C:
	ldr r0, [sp, #0x1c]
	add r8, r8, #1
	add r0, r0, #1
	str r0, [sp, #0x1c]
_022F204C:
	ldr r0, [sp, #0x1c]
	cmp r0, #8
	blt _022F1FC0
_022F2058:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _022F208C
	and r2, r8, #7
	ldr r1, [r6, #0xb4]
	mov r0, r6
	strb r2, [r1, #0x4c]
	bl GetSleepAnimationId
	mov r2, r8
	mov r1, r0
	mov r0, r6
	bl ov29_023049A8
	b _022F2098
_022F208C:
	add fp, fp, #1
_022F2090:
	cmp fp, #1
	blt _022F1FA0
_022F2098:
	ldr r0, _022F1DE4 @ =0x0237C9A4
	mov r1, #1
	strb r1, [r0, #2]
	ldrb r0, [sb, #0x4c]
	strb r0, [r5, #0x36]
	mov r0, #0xff
	strb r0, [r5, #0x37]
	bl ov29_022E0B44
_022F20B8:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _022F20E4
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x200
	beq _022F20EC
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #0x100
	beq _022F20EC
_022F20E4:
	mov r0, #1
	str r0, [sp, #0x44]
_022F20EC:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _022F2118
	mov r0, r6
	bl ov29_023186CC
	cmp r0, #0
	beq _022F2118
	mov r0, r6
	bl ov29_02318700
	mov r0, #0
	str r0, [sp, #0x44]
_022F2118:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _022F2180
	bl FUN_0200F208
	movs fp, r0
	bmi _022F2180
	mov r8, #1
	bl FUN_0204AF20
	cmp r0, #0
	beq _022F2150
	mov r0, r6
	bl ov29_022F0C1C
	cmp r0, #0
	moveq r8, #0
_022F2150:
	cmp r8, #0
	beq _022F2970
	mov r0, #0xb
	bl ov29_022EB3C8
	add r0, fp, #1
	strb r0, [sb, #0x4e]
	mov r0, #0
	strh r0, [sb, #0x50]
	strh r0, [sb, #0x52]
	ldrh r0, [sb, #0x4a]
	cmp r0, #0
	bne _022F2970
_022F2180:
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	bne _022F21B4
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #4
	beq _022F21B4
	mov r0, #0
	bl ov29_022F0C98
	mov sl, #0
_022F21B4:
	strh r4, [sp, #0xb2]
	strh r4, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r1, r0, #0x100
	ldrsh r3, [r1, #0xd8]
	cmp r3, #0
	blt _022F2210
	ldrsh r2, [r6, #4]
	cmp r2, r3
	ldrsheq r1, [r1, #0xda]
	ldrsheq r2, [r6, #6]
	cmpeq r2, r1
	moveq r7, r4
	beq _022F23C4
	add r1, r0, #0x1d8
	mov r0, r6
	bl ov29_022F40B8
	mov r7, r0
	b _022F23C4
_022F2210:
	ldr r1, _022F1DE4 @ =0x0237C9A4
	ldrb r1, [r1, #2]
	cmp r1, #0
	bne _022F2324
	ldr r1, [sp, #0x58]
	cmp r1, #0
	cmpeq sl, #0
	ldreq r1, [sp, #0x50]
	cmpeq r1, #0
	beq _022F2324
	cmp sl, #0
	beq _022F225C
	mov r0, r6
	add r1, sp, #0x9e
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
	b _022F22A8
_022F225C:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _022F2284
	mov r0, r6
	add r1, sp, #0x9e
	mov r2, #0x66
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
	b _022F22A8
_022F2284:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _022F22A8
	mov r0, r6
	add r1, sp, #0x9e
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
_022F22A8:
	cmp r7, #0
	blt _022F23C4
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0x9e]
	cmp r1, r0
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0xa0]
	cmpeq r1, r0
	beq _022F231C
	mov r0, r6
	add r1, sp, #0x9e
	bl ov29_022F426C
	cmp r0, #0
	beq _022F23C4
	mov r0, r6
	add r1, sp, #0x9e
	bl ov29_022F40B8
	ldr r1, [sp, #0x50]
	mov r7, r0
	mov r0, #1
	str r0, [sp, #0x40]
	cmp r1, #0
	ldrh r1, [sp, #0x9e]
	ldrh r0, [sp, #0xa0]
	strh r1, [sp, #0xb2]
	strh r0, [sp, #0xb4]
	movne r0, #1
	strne r0, [sp, #0x3c]
	b _022F23C4
_022F231C:
	ldrb r7, [sb, #0x4c]
	b _022F23C4
_022F2324:
	ldrb r0, [r0, #0x78c]
	cmp r0, #0
	beq _022F234C
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldreq r0, _022F1DF0 @ =0x0237C694
	ldrheq r1, [r0, #2]
	moveq r2, r1
	beq _022F2368
_022F234C:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r1, [r0]
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	ldrne r0, _022F1DF0 @ =0x0237C694
	ldrhne r2, [r0, #2]
	moveq r2, r1
_022F2368:
	and r0, r1, #0xf0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r7, r4
	cmp r1, #0x50
	moveq r7, #3
	and r0, r2, #0xf0
	cmp r1, #0x60
	moveq r7, #5
	lsl r0, r0, #0x10
	cmp r1, #0x90
	moveq r7, #1
	cmp r1, #0xa0
	lsr r2, r0, #0x10
	moveq r7, #7
	cmp r2, #0x40
	moveq r7, #4
	cmp r2, #0x80
	moveq r7, #0
	cmp r2, #0x10
	moveq r7, #2
	cmp r2, #0x20
	moveq r7, #6
_022F23C4:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _022F243C
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _022F243C
	mov r0, r6
	add r1, sp, #0x9a
	mov r2, #2
	mov r3, #0
	bl ov29_022F3EA0
	movs r7, r0
	bmi _022F243C
	ldrsh r1, [r6, #4]
	ldrsh r0, [sp, #0x9a]
	cmp r1, r0
	ldrsheq r1, [r6, #6]
	ldrsheq r0, [sp, #0x9c]
	cmpeq r1, r0
	beq _022F243C
	strb r7, [sb, #0x4c]
	mov r0, #1
	str r0, [sp, #0x3c]
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F243C
	bl ov29_0233779C
	ldr r0, _022F1DE4 @ =0x0237C9A4
	mov r1, #0
	strb r1, [r0, #2]
_022F243C:
	ldr r0, _022F1DDC @ =0x02353538
	cmp sl, #0
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xdc]
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xde]
	ldrne r0, _022F1DE4 @ =0x0237C9A4
	ldrbne r0, [r0, #2]
	cmpne r0, #0
	beq _022F248C
	mov r0, r6
	add r1, sp, #0x96
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	mov r7, r0
	strb r7, [r5, #0x36]
_022F248C:
	cmp r7, #0
	blt _022F2944
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _022F24AC
	tst r7, #1
	beq _022F2964
_022F24AC:
	ldrb r0, [sb, #0x4c]
	cmp r0, r7
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp, #0x28]
	and r0, r7, #7
	strb r0, [sb, #0x4c]
	ldr r0, _022F1DE4 @ =0x0237C9A4
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _022F251C
	mov r0, r6
	strb r7, [r5, #0x36]
	bl GetSleepAnimationId
	mov r1, r0
	mov r2, r7
	mov r0, r6
	bl ov29_023049A8
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xd8]
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xda]
	b _022F2964
_022F251C:
	mov r8, #0
	mov r0, r8
	str r0, [sp, #0x24]
	add r1, sp, #0x90
	bl FUN_0200625C
	ldr fp, [r6, #0xb4]
	ldr r1, _022F1DE0 @ =0x0235171C
	ldrb r3, [fp, #0x4c]
	ldrsh r2, [r6, #4]
	ldrsh r0, [r6, #6]
	lsl sl, r3, #2
	ldrsh r1, [r1, sl]
	ldr sl, _022F1DE0 @ =0x0235171C
	add r3, sl, r3, lsl #2
	add r1, r2, r1
	ldrsh r3, [r3, #2]
	lsl r1, r1, #0x10
	add r2, r0, r3
	asr r0, r1, #0x10
	lsl r1, r2, #0x10
	asr r1, r1, #0x10
	bl GetTile
	ldr r0, [r0, #0xc]
	str r0, [sp, #0x14]
	cmp r0, #0
	moveq r0, r8
	beq _022F2748
	ldr r0, [r0]
	cmp r0, #1
	movne r0, r8
	bne _022F2748
	ldr r0, [sp, #0x14]
	ldr sl, [r0, #0xb4]
	ldrb r0, [sl, #6]
	cmp r0, #0
	ldrbne r0, [sl, #9]
	cmpne r0, #1
	cmpne r0, #2
	beq _022F25D8
	mov r0, sl
	bl IsExperienceLocked
	cmp r0, #0
	bne _022F25D8
	ldrb r0, [sl, #0xbc]
	cmp r0, #7
	movne r0, r8
	bne _022F2748
_022F25D8:
	mov r0, fp
	bl ov29_022F35E0
	cmp r0, #0
	moveq r0, #0
	beq _022F2748
	mov r0, sl
	bl ov29_022F35E0
	cmp r0, #0
	moveq r0, #0
	beq _022F2748
	ldrb r0, [fp, #0xd0]
	cmp r0, #2
	moveq r0, #0
	beq _022F2748
	ldrb r0, [sl, #0xd0]
	cmp r0, #2
	moveq r0, #0
	beq _022F2748
	ldrb r0, [sl, #0xbd]
	cmp r0, #0
	cmpne r0, #2
	cmpne r0, #4
	movne r0, #0
	bne _022F2748
	ldrb r0, [fp, #0xbd]
	cmp r0, #0
	cmpne r0, #2
	cmpne r0, #4
	movne r0, #0
	bne _022F2748
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #0
	bne _022F2748
	ldrb r1, [fp, #0x4c]
	mov r0, r6
	bl ov29_0230105C
	cmp r0, #0
	moveq r0, #0
	beq _022F2748
	ldr r0, [sp, #0x14]
	add r1, r6, #4
	bl ov29_022FF958
	cmp r0, #0
	beq _022F26B8
	mov r0, #0
	ldr r1, _022F1DE8 @ =0x00000BA3
	mov r2, #1
	mov r3, r0
	str r0, [sp]
	bl ov29_0234D518
	cmp r0, #2
	moveq r0, #0
	beq _022F2748
_022F26B8:
	add r0, fp, #0x4a
	mov r1, #2
	bl SetMonsterActionFields
	ldr r0, _022F1DF0 @ =0x0237C694
	mov r1, #2
	ldrh r0, [r0]
	tst r0, #2
	movne r0, #0
	moveq r0, #1
	strb r0, [fp, #0x4e]
	ldrh r2, [fp]
	add r0, sl, #0x4a
	orr r2, r2, #0x8000
	strh r2, [fp]
	bl SetMonsterActionFields
	mov r0, #0
	strb r0, [sl, #0x4e]
	ldrb r1, [fp, #0x4c]
	add r2, sl, #0x100
	mov r0, #1
	add r1, r1, #4
	and r1, r1, #7
	strb r1, [sl, #0x4c]
	ldrh r1, [sl]
	orr r1, r1, #0x8000
	strh r1, [sl]
	ldr r1, [sp, #0x14]
	ldrsh r1, [r1, #4]
	strh r1, [r2, #0x7e]
	ldr r1, [sp, #0x14]
	ldrsh r1, [r1, #6]
	strh r1, [r2, #0x80]
	ldr r1, _022F1DDC @ =0x02353538
	ldr r2, [r1]
	mov r1, r0
	strb r1, [r2, #0x10]
_022F2748:
	cmp r0, #0
	bne _022F2970
	ldrb r0, [sb, #0xc4]
	cmp r0, #2
	ldreq r0, [sp, #0x7c]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #7
	ldreq r0, [sp, #0x80]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #5
	moveq r0, #0xba0
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #3
	ldreq r0, [sp, #0x84]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
	beq _022F27C8
	cmp r0, #4
	ldreq r0, [sp, #0x88]
	streq r0, [sp, #0x24]
	orreq r0, r8, #1
	andeq r8, r0, #0xff
_022F27C8:
	mov r0, r6
	mov r1, r7
	bl ov29_02300E78
	cmp r0, #0
	orreq r0, r8, #2
	andeq r8, r0, #0xff
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _022F2804
	mov r0, r6
	bl GetSleepAnimationId
	mov r2, r7
	mov r1, r0
	mov r0, r6
	bl ov29_023049A8
_022F2804:
	tst r8, #2
	bne _022F2910
	tst r8, #1
	beq _022F2864
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _022F282C
	ldr r1, [sp, #0x24]
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022F282C:
	mov r0, #1
	bl ov29_022EB3C8
	ldr r1, _022F1DDC @ =0x02353538
	mov r3, #1
	ldr r0, [r1]
	sub r2, r3, #2
	strb r3, [r0, #0x78e]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022F2970
_022F2864:
	mov r0, #2
	bl ov29_022EB3C8
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _022F289C
	ldr r0, _022F1DDC @ =0x02353538
	ldrh r2, [sp, #0xb2]
	ldr r1, [r0]
	mov r0, #7
	add r1, r1, #0x100
	strh r2, [r1, #0xd8]
	ldrh r2, [sp, #0xb4]
	strh r2, [r1, #0xda]
	bl FUN_02017CCC
_022F289C:
	ldr r0, _022F1DF0 @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #2
	ldreq r0, [sp, #0x3c]
	cmpeq r0, #0
	beq _022F2904
	add r0, sb, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_02051064
	cmp r0, #0
	beq _022F2904
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #0xd0]
	cmp r0, #2
	ldrne r0, _022F1DDC @ =0x02353538
	movne r1, #1
	ldrne r0, [r0]
	strbne r1, [r0, #0x78b]
	mov r0, #0
	strb r0, [sb, #0x4e]
	b _022F2970
_022F2904:
	mov r0, #1
	strb r0, [sb, #0x4e]
	b _022F2970
_022F2910:
	tst r8, #1
	beq _022F2920
	mov r0, #0x23
	bl ov29_022EA3B4
_022F2920:
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xd8]
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xda]
	b _022F2964
_022F2944:
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xd8]
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	strh r4, [r0, #0xda]
_022F2964:
	mov r0, #0xf
	bl AdvanceFrame
	b _022F110C
_022F2970:
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F2980
	bl ov29_0233779C
_022F2980:
	ldrh r0, [sb, #0x4a]
	cmp r0, #0x2d
	cmpne r0, #0x13
	bne _022F29B0
	mov r0, r6
	bl ov29_022F59C4
	bl IsFloorOver
	cmp r0, #0
	bne _022F2B34
	mov r0, #0
	bl ov29_022EB3C8
	b _022F1024
_022F29B0:
	ldrb r0, [sp, #0xb6]
	cmp r0, #0
	bne _022F2A00
	ldr r0, _022F1DDC @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x78c]
	ldrh r0, [sb, #0x4a]
	cmp r0, #0
	beq _022F29F4
	mov r0, r6
	bl ov29_022EB944
	cmp r0, #0
	bne _022F2B34
	mov r0, #0xf
	bl AdvanceFrame
	b _022F2B34
_022F29F4:
	mov r0, #0xf
	bl AdvanceFrame
	b _022F1024
_022F2A00:
	mov r0, #0xf
	bl AdvanceFrame
	bl ov29_02346E5C
	mov r0, #0
	bl ov29_0233A248
	mov r0, #1
	mov r1, #0
	bl ov29_022EA428
	ldrb r0, [sp, #0xb9]
	cmp r0, #0
	beq _022F2A70
	bl GetLeader
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	bne _022F2A70
	mov r0, #4
	bl FUN_02017CCC
	ldrb r0, [sp, #0xb7]
	ldrb r1, [sp, #0xb8]
	mov r2, #1
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl ov29_0234DDF4
	bl FUN_02006B70
	b _022F2A9C
_022F2A70:
	mov r0, #4
	bl FUN_02017CCC
	ldrb r0, [sp, #0xb7]
	ldrb r1, [sp, #0xb8]
	mov r2, #0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bl ov29_0234DDF4
	bl FUN_02006B70
_022F2A9C:
	bl ov29_022E0B44
	ldr r0, _022F1DE4 @ =0x0237C9A4
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r5, #0x35]
	bl ov29_0233779C
	bl IsFloorOver
	cmp r0, #0
	bne _022F2B34
	ldrh r0, [sb, #0x4a]
	cmp r0, #0
	beq _022F2B18
	cmp r0, #0x2b
	bne _022F2AEC
	ldr r0, _022F1DDC @ =0x02353538
	mov r2, #1
	ldr r1, [r0]
	strb r2, [r1, #8]
	ldr r0, [r0]
	strb r2, [r0, #7]
_022F2AEC:
	ldrh r0, [sb, #0x4a]
	cmp r0, #0x2e
	bne _022F2B34
	ldr r0, _022F1DDC @ =0x02353538
	mov r3, #1
	ldr r2, [r0]
	mov r1, #0
	strb r3, [r2, #8]
	ldr r0, [r0]
	strb r1, [r0, #7]
	b _022F2B34
_022F2B18:
	mov r0, #0xf
	bl AdvanceFrame
	ldr r0, _022F1DDC @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _022F1024
_022F2B34:
	add sp, sp, #0xdc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_022F0EDC

	arm_func_start ov29_022F2B3C
ov29_022F2B3C: @ 0x022F2B3C
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _022F2B6C
	ldrb r1, [r0, #8]
	cmp r1, #0
	ldrbeq r1, [r0, #9]
	cmpeq r1, #0
	bne _022F2B6C
	ldrb r0, [r0, #0xbc]
	cmp r0, #7
	movne r0, #1
	bxne lr
_022F2B6C:
	mov r0, #0
	bx lr
	arm_func_end ov29_022F2B3C

	arm_func_start ov29_022F2B74
ov29_022F2B74: @ 0x022F2B74
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r1, _022F2FBC @ =0x02353538
	ldr r8, _022F2FC0 @ =0x0237C9A4
	ldr r1, [r1]
	ldrb r2, [r8, #1]
	add r1, r1, #0x21c
	str r0, [sp]
	cmp r2, #0
	add r5, r1, #0x1a000
	beq _022F2D58
	ldr r0, _022F2FC4 @ =0x0000013F
	mov r6, #0x400
	rsb r6, r6, #0
	add r0, r0, #0x9c
	mov r4, #0
	str r0, [sp, #8]
	add r7, r6, #0x200
_022F2BBC:
	ldr r0, _022F2FC8 @ =0x023526D8
	mov r1, #6
	ldrh r2, [sp, #0x10]
	mla r0, r4, r1, r0
	bic r1, r2, #0x100
	strh r1, [sp, #0x10]
	ldrh r2, [sp, #0x10]
	ldrb r1, [r0, #5]
	bic r2, r2, #0x200
	strh r2, [sp, #0x10]
	cmp r1, #0
	ldrh r1, [sp, #0x10]
	movne r2, #0x10
	moveq r2, #0
	bic r1, r1, #0xc00
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	orr r1, r1, #0x400
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	bic r1, r1, #0x1000
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	bic r1, r1, #0x2000
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	orr r1, r1, #0x2000
	strh r1, [sp, #0x10]
	ldrh r1, [sp, #0x10]
	bic r1, r1, #0xc000
	strh r1, [sp, #0x10]
	ldrb r1, [r0, #4]
	cmp r1, #0
	movne r1, #8
	moveq r1, #0
	add r1, r1, r2
	ldrh r3, [sp, #0x12]
	lsl sb, r1, #0x1b
	ldrh r1, [sp, #0x16]
	ldrh r2, [sp, #0x14]
	bic r3, r3, #0x3e00
	bic r1, r1, #1
	and r2, r2, r6
	strh r3, [sp, #0x12]
	strh r1, [sp, #0x16]
	strh r2, [sp, #0x14]
	ldrh r1, [sp, #0x12]
	ldrh r3, [sp, #0x14]
	ldrh r2, [sp, #0x16]
	orr r1, r1, sb, lsr #18
	strh r1, [sp, #0x12]
	ldr r1, [sp, #8]
	ldrsh fp, [r0]
	orr r1, r3, r1
	strh r1, [sp, #0x14]
	bic r1, r2, #2
	strh r1, [sp, #0x16]
	ldrh r1, [sp, #0x14]
	ldrh r2, [sp, #0x12]
	ldrsh sb, [r0, #2]
	bic r1, r1, #0xc00
	bic r2, r2, #0xc000
	strh r1, [sp, #0x14]
	strh r2, [sp, #0x12]
	ldrh r2, [sp, #0x14]
	ldrh r0, [sp, #0x12]
	ldrh r1, [sp, #0x16]
	orr r2, r2, #0x800
	strh r2, [sp, #0x14]
	ldrh r2, [sp, #0x14]
	and sl, r0, r7
	ldr r0, _022F2FCC @ =0xFFFF000F
	bic r2, r2, #0xf000
	strh r2, [sp, #0x14]
	ldrsh ip, [r8, #4]
	and r3, r1, r0
	ldr r0, _022F2FD0 @ =0x020AFC4C
	add ip, ip, ip, lsr #31
	strh r3, [sp, #0x16]
	asr r3, ip, #1
	and r3, r3, #7
	add r3, r3, #0xa
	strh sl, [sp, #0x12]
	mul sl, fp, r3
	mul r3, sb, r3
	add sb, sl, #0x7c
	and sl, sb, r6, lsr #23
	ldrh fp, [sp, #0x12]
	add r3, r3, #0x62
	ldrh sb, [sp, #0x16]
	lsl r3, r3, #0x14
	orr sl, fp, sl
	orr r3, sb, r3, lsr #16
	ldr r0, [r0]
	ldr r2, _022F2FC4 @ =0x0000013F
	add r1, sp, #0x10
	strh sl, [sp, #0x12]
	strh r3, [sp, #0x16]
	bl FUN_0201B9F8
	add r4, r4, #1
	cmp r4, #4
	blt _022F2BBC
	b _022F2F7C
_022F2D58:
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _022F2F7C
	ldrb r3, [r5, #0x36]
	cmp r3, #0
	blt _022F2F7C
	cmp r3, #8
	bge _022F2F7C
	ldrb r0, [r8, #3]
	ldr r2, _022F2FC0 @ =0x0237C9A4
	cmp r0, #0
	ldrbne r0, [r8]
	ldrsh r2, [r2, #4]
	cmpne r0, #0
	mov r0, #0xc
	mul r1, r3, r0
	add r2, r2, r2, lsr #31
	ldr r0, _022F2FD4 @ =0x023526F0
	asr r2, r2, #1
	and r2, r2, #7
	ldr r3, _022F2FD8 @ =0x023526F2
	add r7, r2, #0xa
	ldrsh r4, [r0, r1]
	ldrsh r2, [r3, r1]
	movne sl, #3
	moveq sl, #1
	mul r3, r2, r7
	mul r6, r4, r7
	add r7, r6, #0x7c
	cmp sl, #0
	add r8, r3, #0x62
	mov r6, #0
	ble _022F2F7C
	ldr r3, _022F2FDC @ =0x023526F4
	mov r4, #0x400
	ldr r2, _022F2FE0 @ =0x000003FF
	ldr r3, [r3, r1]
	add sb, r0, r1
	sub r0, r2, #0x2c0
	rsb r4, r4, #0
	str r0, [sp, #4]
	add r0, r4, #0x200
	and fp, r3, r2
	str r0, [sp, #0xc]
	b _022F2F74
_022F2E0C:
	ldrh r1, [sp, #0x10]
	ldrb r0, [sb, #9]
	ldrh r3, [sp, #0x12]
	bic r1, r1, #0x100
	strh r1, [sp, #0x10]
	cmp r0, #0
	ldrh r0, [sp, #0x10]
	movne r1, #0x10
	ldrh r2, [sp, #0x14]
	bic r0, r0, #0x200
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	bic r3, r3, #0x3e00
	strh r3, [sp, #0x12]
	bic r0, r0, #0xc00
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	and r2, r2, r4
	strh r2, [sp, #0x14]
	orr r0, r0, #0x400
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	moveq r1, #0
	ldrh r3, [sp, #0x12]
	bic r0, r0, #0x1000
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	ldrh r2, [sp, #0x14]
	bic r0, r0, #0x2000
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	orr r0, r0, #0x2000
	strh r0, [sp, #0x10]
	ldrh r0, [sp, #0x10]
	bic r0, r0, #0xc000
	strh r0, [sp, #0x10]
	ldrb r0, [sb, #8]
	cmp r0, #0
	movne r0, #8
	moveq r0, #0
	add r0, r0, r1
	ldrh r1, [sp, #0x16]
	lsl r0, r0, #0x1b
	orr r0, r3, r0, lsr #18
	bic r1, r1, #1
	strh r1, [sp, #0x16]
	strh r0, [sp, #0x12]
	orr r0, r2, fp
	ldrh r2, [sp, #0x12]
	ldrh r1, [sp, #0x16]
	strh r0, [sp, #0x14]
	bic r2, r2, #0xc000
	bic r0, r1, #2
	ldrh r1, [sp, #0x14]
	strh r2, [sp, #0x12]
	strh r0, [sp, #0x16]
	bic r1, r1, #0xc00
	strh r1, [sp, #0x14]
	ldrh r1, [sp, #0x14]
	ldrh r3, [sp, #0x12]
	ldrh r2, [sp, #0x16]
	orr r1, r1, #0x800
	strh r1, [sp, #0x14]
	ldr r1, [sp, #0xc]
	and r0, r7, r4, lsr #23
	and r1, r3, r1
	strh r1, [sp, #0x12]
	ldr r1, _022F2FCC @ =0xFFFF000F
	ldrh r3, [sp, #0x14]
	and r1, r2, r1
	ldrh r2, [sp, #0x12]
	strh r1, [sp, #0x16]
	bic r3, r3, #0xf000
	orr r0, r2, r0
	strh r0, [sp, #0x12]
	ldrh r1, [sp, #0x16]
	lsl r0, r8, #0x14
	ldr r2, [sp, #4]
	orr r0, r1, r0, lsr #16
	strh r0, [sp, #0x16]
	ldr r0, _022F2FD0 @ =0x020AFC4C
	add r1, sp, #0x10
	ldr r0, [r0]
	strh r3, [sp, #0x14]
	bl FUN_0201B9F8
	ldrsh r1, [sb]
	ldrsh r0, [sb, #2]
	add r6, r6, #1
	add r7, r7, r1, lsl #2
	add r8, r8, r0, lsl #2
_022F2F74:
	cmp r6, sl
	blt _022F2E0C
_022F2F7C:
	ldr r0, _022F2FC0 @ =0x0237C9A4
	ldrb r1, [r0, #2]
	cmp r1, #0
	ldrbne r2, [r5, #0x36]
	ldrbne r1, [r5, #0x37]
	cmpne r1, r2
	beq _022F2FB4
	strb r2, [r5, #0x37]
	ldrb r3, [r0, #2]
	ldr r0, [sp]
	ldrb r1, [r5, #0x36]
	add r0, r0, #4
	mov r2, #0
	bl ov29_02337428
_022F2FB4:
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F2FBC: .4byte 0x02353538
_022F2FC0: .4byte 0x0237C9A4
_022F2FC4: .4byte 0x0000013F
_022F2FC8: .4byte 0x023526D8
_022F2FCC: .4byte 0xFFFF000F
_022F2FD0: .4byte 0x020AFC4C
_022F2FD4: .4byte 0x023526F0
_022F2FD8: .4byte 0x023526F2
_022F2FDC: .4byte 0x023526F4
_022F2FE0: .4byte 0x000003FF
	arm_func_end ov29_022F2B74

	arm_func_start ov29_022F2FE4
ov29_022F2FE4: @ 0x022F2FE4
	push {r4, r5, r6, r7, r8, lr}
	ldr r1, _022F3084 @ =0x02353538
	ldr r2, _022F3088 @ =0x0237C694
	ldr r6, [r1]
	mov r4, #0
	ldrb r5, [r6, #0x78c]
	ldrb r0, [r6, #0x78b]
	ldrh r7, [r2]
	sub r3, r4, #1
	orr r0, r5, r0
	strb r0, [r6, #0x78c]
	ldr r0, [r1]
	and r5, r7, #0xf0
	strb r4, [r0, #0x78b]
	ldr r0, [r1]
	mov r8, #0x54
	add r0, r0, #0x100
	strh r3, [r0, #0xd8]
	ldr r0, [r1]
	ldr r7, _022F3088 @ =0x0237C694
	add r0, r0, #0x100
	strh r3, [r0, #0xda]
	ldrh r0, [r2]
	ldr r6, _022F3084 @ =0x02353538
	tst r0, #0x100
	movne r4, #1
	b _022F3070
_022F3050:
	cmp r4, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r7]
	and r0, r0, #0xf0
	tst r5, r0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl AdvanceFrame
_022F3070:
	ldr r0, [r6]
	ldrb r0, [r0, #0x78c]
	cmp r0, #0
	bne _022F3050
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F3084: .4byte 0x02353538
_022F3088: .4byte 0x0237C694
	arm_func_end ov29_022F2FE4

	arm_func_start ov29_022F308C
ov29_022F308C: @ 0x022F308C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	ldr r0, _022F35D4 @ =0x02353538
	ldr r5, [r0]
	bl GetLeader
	mov r4, r0
	ldrsh sl, [r4, #4]
	ldrsh sb, [r4, #6]
	ldr r2, [r4, #0xb4]
	mov r0, sl
	mov r1, sb
	ldrb r7, [r2, #0x4c]
	bl GetTile
	ldrb r1, [r5, #0x78b]
	ldr r3, _022F35D8 @ =0x0235171C
	lsl r5, r7, #2
	ldr r2, _022F35DC @ =0x0235171E
	ldrsh r6, [r3, r5]
	mov r8, r0
	cmp r1, #0
	ldrsh r5, [r2, r5]
	moveq r0, #0
	beq _022F35CC
	ldr r0, [r8, #0x10]
	cmp r0, #0
	movne r0, #0
	bne _022F35CC
	add r1, sp, #0x4c
	mov r0, r4
	strh sl, [sp, #0x4c]
	strh sb, [sp, #0x4e]
	bl ov29_022FFA94
	cmp r0, #0
	movne r0, #0
	bne _022F35CC
	mov r0, r4
	mov r1, r7
	bl ov29_02300FCC
	cmp r0, #0
	moveq r0, #0
	beq _022F35CC
	ldrb r0, [r8, #7]
	str r0, [sp, #0x10]
	cmp r0, #0xff
	bne _022F3160
	add r0, sl, r6
	add r1, sb, r5
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r0, #0xff
	beq _022F3170
	mov r0, #0
	b _022F35CC
_022F3160:
	ldrh r0, [r8]
	tst r0, #8
	movne r0, #0
	bne _022F35CC
_022F3170:
	mvn r6, #0
	ldr r5, _022F35D8 @ =0x0235171C
	b _022F31C4
_022F317C:
	add r0, r7, r6
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1b
	add r0, r5, r0, lsr #27
	ldrsh r2, [r5, r1]
	ldrsh r1, [r0, #2]
	add r0, sl, r2
	add r1, sb, r1
	bl GetTile
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r0, #0
	bne _022F35CC
	ldrh r0, [r0]
	tst r0, #0x200
	movne r0, #0
	bne _022F35CC
	add r6, r6, #1
_022F31C4:
	cmp r6, #1
	ble _022F317C
	add r1, r7, #4
	add r0, r7, #5
	lsl r1, r1, #0x1d
	lsl r0, r0, #0x1d
	add r2, r7, #3
	lsl r2, r2, #0x1d
	ldr r6, _022F35D8 @ =0x0235171C
	lsr r5, r1, #0x1b
	lsr fp, r0, #0x1b
	ldrsh r1, [r6, r5]
	ldr r8, _022F35DC @ =0x0235171E
	lsr r3, r2, #0x1b
	add r1, sl, r1
	ldrsh r2, [r6, r3]
	ldrsh r0, [r6, fp]
	ldrsh r6, [r8, r3]
	add r2, sl, r2
	ldrsh r5, [r8, r5]
	ldrsh r3, [r8, fp]
	add r8, sl, r0
	add r0, sb, r5
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r6, sb, r6
	str r0, [sp, #0x60]
	ldr r0, [sp, #4]
	add r1, sb, r3
	str r0, [sp, #0x54]
	and r0, r7, #1
	str r2, [sp, #0x5c]
	str r8, [sp, #0x64]
	str r6, [sp, #0x50]
	str r1, [sp, #0x58]
	str r0, [sp]
	mvn r5, #0
	b _022F33E4
_022F3260:
	add r8, sl, r5
	lsl r0, r8, #0x10
	asr r0, r0, #0x10
	mvn r6, #0
	str r0, [sp, #0x14]
	b _022F33D8
_022F3278:
	add fp, sb, r6
	mov r0, r8
	mov r1, fp
	bl GetTile
	ldr r1, [r0, #0x10]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _022F32DC
	mov r0, #0
	b _022F32C0
_022F32A0:
	add r2, sp, #0x5c
	ldr r2, [r2, r0, lsl #2]
	cmp r8, r2
	addeq r2, sp, #0x50
	ldreq r2, [r2, r0, lsl #2]
	cmpeq fp, r2
	beq _022F32C8
	add r0, r0, #1
_022F32C0:
	cmp r0, #3
	blt _022F32A0
_022F32C8:
	cmp r0, #3
	ldreq r0, [r1]
	cmpeq r0, #3
	moveq r0, #0
	beq _022F35CC
_022F32DC:
	ldr r0, [sp]
	cmp r0, #0
	beq _022F3324
	cmp r1, #0
	beq _022F3368
	ldr r0, [r1]
	cmp r0, #2
	bne _022F3368
	ldrb r0, [r1, #0x20]
	cmp r0, #0
	ldreq r0, _022F35D4 @ =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x1a000
	ldrbeq r0, [r0, #0x244]
	cmpeq r0, #0
	beq _022F3368
	mov r0, #0
	b _022F35CC
_022F3324:
	cmp r5, #0
	cmpne r6, #0
	bne _022F3368
	cmp r1, #0
	beq _022F3368
	ldr r0, [r1]
	cmp r0, #2
	bne _022F3368
	ldrb r0, [r1, #0x20]
	cmp r0, #0
	ldreq r0, _022F35D4 @ =0x02353538
	ldreq r0, [r0]
	addeq r0, r0, #0x1a000
	ldrbeq r0, [r0, #0x244]
	cmpeq r0, #0
	movne r0, #0
	bne _022F35CC
_022F3368:
	cmp r5, #0
	cmpne r6, #0
	bne _022F33D4
	cmp r5, #0
	cmpeq r6, #0
	beq _022F33D4
	ldr r0, [sp, #8]
	cmp r0, r8
	ldreq r0, [sp, #4]
	cmpeq r0, fp
	beq _022F33D4
	ldr r0, [sp, #0x14]
	add r1, sp, #0x48
	strh r0, [sp, #0x48]
	mov r0, r4
	strh fp, [sp, #0x4a]
	bl ov29_022FFA94
	cmp r0, #0
	bne _022F33D4
	ldr r0, [sp, #0x10]
	cmp r0, #0xff
	ldrne r0, [sp, #0xc]
	ldrbne r1, [r0, #7]
	ldrne r0, [sp, #0x10]
	cmpne r0, r1
	movne r0, #0
	bne _022F35CC
_022F33D4:
	add r6, r6, #1
_022F33D8:
	cmp r6, #1
	ble _022F3278
	add r5, r5, #1
_022F33E4:
	cmp r5, #1
	ble _022F3260
	ldr r0, [sp]
	cmp r0, #0
	bne _022F35C8
	cmp r7, #0
	cmpne r7, #4
	bne _022F34E8
	sub r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x44
	mov r0, r4
	strh r3, [sp, #0x44]
	strh r2, [sp, #0x46]
	bl ov29_022FFA94
	mov r5, r0
	sub r2, sl, #1
	add r1, sp, #0x40
	mov r0, r4
	strh r2, [sp, #0x40]
	strh sb, [sp, #0x42]
	bl ov29_022FFA94
	mov r6, r0
	sub r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x3c
	mov r0, r4
	strh r3, [sp, #0x3c]
	strh r2, [sp, #0x3e]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F3474
	cmp r5, r6
	cmpeq r6, r0
	movne r0, #0
	bne _022F35CC
_022F3474:
	add r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x38
	mov r0, r4
	strh r3, [sp, #0x38]
	strh r2, [sp, #0x3a]
	bl ov29_022FFA94
	mov r5, r0
	add r2, sl, #1
	add r1, sp, #0x34
	mov r0, r4
	strh r2, [sp, #0x34]
	strh sb, [sp, #0x36]
	bl ov29_022FFA94
	mov r6, r0
	add r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x30
	mov r0, r4
	strh r3, [sp, #0x30]
	strh r2, [sp, #0x32]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F35C8
	cmp r5, r6
	cmpeq r6, r0
	beq _022F35C8
	mov r0, #0
	b _022F35CC
_022F34E8:
	sub r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x2c
	mov r0, r4
	strh r3, [sp, #0x2c]
	strh r2, [sp, #0x2e]
	bl ov29_022FFA94
	mov r5, r0
	sub r2, sb, #1
	add r1, sp, #0x28
	mov r0, r4
	strh sl, [sp, #0x28]
	strh r2, [sp, #0x2a]
	bl ov29_022FFA94
	mov r6, r0
	add r3, sl, #1
	sub r2, sb, #1
	add r1, sp, #0x24
	mov r0, r4
	strh r3, [sp, #0x24]
	strh r2, [sp, #0x26]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F3558
	cmp r5, r6
	cmpeq r6, r0
	movne r0, #0
	bne _022F35CC
_022F3558:
	sub r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x20
	mov r0, r4
	strh r3, [sp, #0x20]
	strh r2, [sp, #0x22]
	bl ov29_022FFA94
	mov r5, r0
	add r2, sb, #1
	add r1, sp, #0x1c
	mov r0, r4
	strh sl, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	bl ov29_022FFA94
	mov r6, r0
	add r3, sl, #1
	add r2, sb, #1
	add r1, sp, #0x18
	mov r0, r4
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl ov29_022FFA94
	cmp r6, #0
	bne _022F35C8
	cmp r5, r6
	cmpeq r6, r0
	movne r0, #0
	bne _022F35CC
_022F35C8:
	mov r0, #1
_022F35CC:
	add sp, sp, #0x68
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F35D4: .4byte 0x02353538
_022F35D8: .4byte 0x0235171C
_022F35DC: .4byte 0x0235171E
	arm_func_end ov29_022F308C

	arm_func_start ov29_022F35E0
ov29_022F35E0: @ 0x022F35E0
	ldrb r0, [r0, #0xc4]
	cmp r0, #2
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	moveq r0, #0
	bxeq lr
	cmp r0, #7
	moveq r0, #0
	bxeq lr
	cmp r0, #5
	moveq r0, #0
	bxeq lr
	cmp r0, #3
	moveq r0, #0
	bxeq lr
	cmp r0, #4
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_022F35E0

	arm_func_start ov29_022F3634
ov29_022F3634: @ 0x022F3634
	push {r4, r5, r6, r7, r8, lr}
	bl GetLeader
	movs r4, r0
	popeq {r4, r5, r6, r7, r8, pc}
	bl IsFloorOver
	cmp r0, #0
	popne {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl GetTileAtEntity
	mov r5, r0
	mov r0, r4
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r0, [r4, #0xb4]
	ldrbne r0, [r0, #0xef]
	cmpne r0, #3
	beq _022F3698
	mov r0, r4
	mov r1, #0x10
	bl HasHeldItem
	cmp r0, #0
	bne _022F3698
	add r0, r4, #4
	bl ov29_02337D68
_022F3698:
	ldrh r0, [r5]
	tst r0, #0x200
	ldrne r0, _022F37CC @ =0x02353538
	movne r1, #1
	ldrne r0, [r0]
	strbne r1, [r0, #5]
	ldr r5, [r5, #0x10]
	cmp r5, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	pop {r4, r5, r6, r7, r8, pc}
_022F36CC: @ jump table
	pop {r4, r5, r6, r7, r8, pc} @ case 0
	pop {r4, r5, r6, r7, r8, pc} @ case 1
	b _022F36E8 @ case 2
	b _022F3778 @ case 3
	pop {r4, r5, r6, r7, r8, pc} @ case 4
	b _022F37C0 @ case 5
	pop {r4, r5, r6, r7, r8, pc} @ case 6
_022F36E8:
	mov r0, r5
	bl ov29_022E1608
	mov r6, r0
	mov r7, #0
	mov r0, r4
	mov r1, #0x13
	mov r8, r7
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022F372C
	ldrb r0, [r5, #0x20]
	cmp r0, #0
	bne _022F372C
	mov r0, #1
	strb r0, [r5, #0x20]
	bl ov29_02336F4C
	mov r8, #1
_022F372C:
	ldrb r0, [r6, #1]
	cmp r0, #0
	moveq r7, #1
	beq _022F3750
	cmp r0, #1
	moveq r7, #0
	beq _022F3750
	cmp r0, #2
	moveq r7, #1
_022F3750:
	cmp r7, #0
	popeq {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	popne {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov29_022EDFA0
	pop {r4, r5, r6, r7, r8, pc}
_022F3778:
	mov r0, r5
	bl ov29_022E1610
	ldrb r0, [r0]
	tst r0, #2
	bne _022F37A0
	add r0, r4, #4
	mov r1, #1
	bl ov29_02345058
	bl ov29_022FB920
	pop {r4, r5, r6, r7, r8, pc}
_022F37A0:
	mov r0, r4
	bl ShouldMonsterRunAway
	cmp r0, #0
	ldreq r0, _022F37CC @ =0x02353538
	moveq r1, #4
	ldreq r0, [r0]
	streq r1, [r0, #0x614]
	pop {r4, r5, r6, r7, r8, pc}
_022F37C0:
	mov r0, #1
	bl ov29_02338794
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F37CC: .4byte 0x02353538
	arm_func_end ov29_022F3634

	arm_func_start ov29_022F37D0
ov29_022F37D0: @ 0x022F37D0
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, r1
	bl ov29_022F87C0
	movs r5, r0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	cmp r0, #1
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl ov29_023009CC
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0xb4]
	mov r6, #1
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _022F3850
	ldrb r0, [r1, #0xbc]
	cmp r0, #7
	cmpne r0, #0x10
	cmpne r0, #0x11
	cmpne r0, #0x12
	cmpne r0, #0x13
	cmpne r0, #0x14
	ldrbne r0, [r1, #9]
	cmpne r0, #1
	movne r6, #0
	b _022F3874
_022F3850:
	mov r2, #0
	mov r0, r7
	mov r1, r5
	mov r3, r2
	bl ov29_0230175C
	cmp r0, #1
	movne r0, r6
	moveq r0, #0
	and r6, r0, #0xff
_022F3874:
	cmp r6, #0
	beq _022F3888
	add r0, r4, #0x4a
	mov r1, #0x13
	bl SetMonsterActionFields
_022F3888:
	mov r0, r6
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022F37D0

	arm_func_start ov29_022F3890
ov29_022F3890: @ 0x022F3890
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r5, r1
	mov r6, r0
	bl ov29_022E9618
	mov r4, r0
	cmp r5, #0
	beq _022F38D0
	ldrb r0, [r4, #0xd0]
	cmp r0, #4
	bne _022F38D0
	ldrb r0, [r4, #0x4c]
	add r1, r0, #4
	and r0, r1, #0xff
	and r0, r0, #7
	strb r0, [r4, #0x4c]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022F38D0:
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #8
	bl DungeonRandInt
	mov sb, r0
	mov r8, #0
	mov r7, #1
	b _022F3928
_022F38F4:
	cmp r5, #0
	movne r0, r7
	bne _022F390C
	mov r0, r6
	mov r1, sb
	bl ov29_02300E78
_022F390C:
	cmp r0, #0
	andne r0, sb, #7
	strbne r0, [r4, #0x4c]
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, sb, #1
	and sb, r0, #7
	add r8, r8, #1
_022F3928:
	cmp r8, #8
	blt _022F38F4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022F3890

	arm_func_start ov29_022F3934
ov29_022F3934: @ 0x022F3934
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _022F3AE4 @ =0x02353538
	ldr r0, [r0]
	ldr r6, [r0, #0xc8]
	bl GetLeader
	ldr sb, [r6, #0xb4]
	mov fp, r0
	ldrb r0, [sb, #7]
	ldr sl, [fp, #0xb4]
	cmp r0, #0
	beq _022F3970
	ldr r1, _022F3AE8 @ =0x00000BA4
	mov r0, r6
	bl LogMessageByIdWithPopup
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F3970:
	mov r0, #2
	bl ov29_02346BD8
	cmp r0, #0
	bne _022F398C
	bl ov29_022F670C
	cmp r0, #0
	beq _022F399C
_022F398C:
	ldr r1, _022F3AEC @ =0x00000BA5
	mov r0, r6
	bl LogMessageByIdWithPopup
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F399C:
	ldr r0, _022F3AE4 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x790]
	cmp r0, #0
	beq _022F39C0
	ldr r1, _022F3AF0 @ =0x00000BA6
	mov r0, r6
	bl LogMessageByIdWithPopup
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F39C0:
	mov r5, #0
	strb r5, [r1, #0x799]
	mov r0, #1
	strb r0, [sb, #7]
	strb r5, [sl, #7]
	mvn r4, #0
_022F39D8:
	mov r0, r5
	bl FUN_0205638C
	mov r7, r0
	ldrb r0, [r7]
	mov r8, r4
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F3A40
	ldrsh r0, [r7, #8]
	bl CheckTeamMemberIdx
	cmp r0, #0
	ldrsh r0, [sb, #0xc]
	ldrsheq r8, [r7, #8]
	cmp r5, r0
	bne _022F3A38
	mov r0, #1
	strb r0, [r7, #1]
	cmp r8, r4
	beq _022F3A40
	mov r0, r8
	bl FUN_02056754
	b _022F3A40
_022F3A38:
	mov r0, #0
	strb r0, [r7, #1]
_022F3A40:
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	cmp r5, #4
	blt _022F39D8
	ldr r0, _022F3AF4 @ =0x0235355C
	mov r1, #0
	str r1, [r0]
	add r3, sl, #0x4a
	add r2, sb, #0x4a
	mov r1, #0xa
_022F3A6C:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022F3A6C
	mov r0, r6
	mov r1, #1
	bl ov29_022E2E54
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, fp
	bl ov29_022E3DD8
	bl GetLeader
	bl ov29_022E3E24
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	ldr r1, _022F3AF8 @ =0x00000BA7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0
	bl ov29_022F62CC
	mov r0, fp
	mov r1, #0
	strh r1, [sb, #0x68]
	strh r1, [sl, #0x68]
	bl ov29_022F9EA0
	mov r0, r6
	bl ov29_022F9EA0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F3AE4: .4byte 0x02353538
_022F3AE8: .4byte 0x00000BA4
_022F3AEC: .4byte 0x00000BA5
_022F3AF0: .4byte 0x00000BA6
_022F3AF4: .4byte 0x0235355C
_022F3AF8: .4byte 0x00000BA7
	arm_func_end ov29_022F3934

	arm_func_start ov29_022F3AFC
ov29_022F3AFC: @ 0x022F3AFC
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov29_022F89AC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	ldrh r0, [r0]
	tst r0, #0x2000
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	bl ov29_02349A70
	movs r4, r0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023009CC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl ov29_022E28D4
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, r4
	bl ov29_023009CC
	cmp r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, pc}
	add r0, r5, #0x4a
	mov r1, #0x42
	bl SetMonsterActionFields
	mov r0, #1
	pop {r4, r5, r6, pc}
	arm_func_end ov29_022F3AFC

	arm_func_start ov29_022FBAB4
ov29_022FBAB4: @ 0x022F3B8C
	ldr ip, _022F3B94 @ =ov29_022FBAB4
	bx ip
	.align 2, 0
_022F3B94: .4byte ov29_022FBAB4
	arm_func_end ov29_022FBAB4

	arm_func_start ov29_022F3B98
ov29_022F3B98: @ 0x022F3B98
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r4, #0
	str r4, [sp, #4]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov fp, r4
	str r4, [sp]
	bl FUN_0204AF20
	cmp r0, #0
	moveq r0, r4
	beq _022F3E88
	cmp r8, #0
	ldrb r5, [sl, #0xb0]
	beq _022F3C4C
	mov r6, r4
	mov r0, sl
	mov r1, r8
	mov r2, r6
	bl GetEntityMoveTargetAndRange
	and r0, r0, #0xf0
	lsl r1, r0, #0x10
	asr r7, r1, #0x10
	mov r0, sl
	mov r1, r8
	mov r2, r4
	bl GetEntityMoveTargetAndRange
	cmp r7, #0
	cmpne r7, #0x10
	cmpne r7, #0x40
	cmpne r7, #0x50
	cmpne r7, #0x80
	and r0, r0, #0xf
	cmpne r7, #0x90
	beq _022F3C3C
	cmp r0, #4
	bne _022F3C40
	ldrh r0, [r8, #4]
	cmp r0, #0x80
	beq _022F3C40
_022F3C3C:
	mov r6, #1
_022F3C40:
	cmp r6, #0
	moveq r0, #1
	beq _022F3E88
_022F3C4C:
	bl ov29_022F2FE4
	ldr r1, _022F3E90 @ =0x0237C9A4
	mov r2, #0
	strb r2, [r1, #1]
	mov r0, #1
	strh r2, [r1, #4]
	bl ov29_0234B4CC
	mov r0, #0
	bl ov29_0234B1A4
	ldr r0, _022F3E94 @ =0x00000BA8
	bl ov29_0234FC50
	bl ov29_022E0B44
	ldr r6, _022F3E90 @ =0x0237C9A4
	mvn r8, #0
_022F3C84:
	mov r0, #0x62
	bl AdvanceFrame
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _022F3CAC
	mov r0, sl
	bl ov29_022F2B74
	ldrsh r0, [r6, #4]
	add r0, r0, #1
	strh r0, [r6, #4]
_022F3CAC:
	ldr r0, _022F3E98 @ =0x0237C6A4
	mov r1, #0
	ldrh r0, [r0]
	tst r0, #0x40
	beq _022F3CC8
	tst r0, #2
	movne r1, #1
_022F3CC8:
	cmp r1, #0
	beq _022F3D10
	add r1, sp, #8
	mov r0, sl
	mov r2, #0x64
	mov r3, #0
	bl ov29_022F3EA0
	ldrsh r2, [sl, #4]
	ldrsh r1, [sp, #8]
	mov r7, r0
	cmp r2, r1
	ldrsheq r1, [sl, #6]
	ldrsheq r0, [sp, #0xa]
	cmpeq r1, r0
	movne r0, #1
	moveq r4, #1
	strne r0, [sp, #4]
	b _022F3DE0
_022F3D10:
	ldr r0, _022F3E9C @ =0x0237C694
	ldrh r0, [r0]
	tst r0, #0x100
	and r0, r0, #0xf0
	lsl r0, r0, #0x10
	movne r1, #1
	lsr r0, r0, #0x10
	strbne r1, [r6, #1]
	bne _022F3D4C
	mov r1, #0
	strb r1, [r6, #1]
	strh r1, [r6, #4]
	ldr r1, _022F3E9C @ =0x0237C694
	ldrh r1, [r1, #2]
	and r0, r0, r1
_022F3D4C:
	mov r7, r8
	cmp r0, #0x50
	moveq r7, #3
	cmp r0, #0x60
	moveq r7, #5
	cmp r0, #0x90
	moveq r7, #1
	cmp r0, #0xa0
	moveq r7, #7
	cmp r0, #0x40
	moveq r7, #4
	cmp r0, #0x80
	moveq r7, #0
	cmp r0, #0x10
	moveq r7, #2
	cmp r0, #0x20
	ldrb r0, [r6, #1]
	moveq r7, #6
	cmp r0, #0
	beq _022F3DB0
	cmp r7, #0
	blt _022F3DC0
	tst r7, #1
	bne _022F3DE0
	b _022F3DC0
_022F3DB0:
	cmp r7, #0
	blt _022F3DC0
	tst r7, #1
	beq _022F3DE0
_022F3DC0:
	ldr r0, _022F3E9C @ =0x0237C694
	ldrh r0, [r0, #2]
	tst r0, #2
	movne r4, #1
	bne _022F3DE0
	tst r0, #1
	beq _022F3C84
	mov fp, #1
_022F3DE0:
	bl ov29_0234FCA8
	cmp r0, #0
	beq _022F3DFC
	mov r0, #0x62
	bl AdvanceFrame
	mov r0, #0x62
	bl AdvanceFrame
_022F3DFC:
	cmp r4, #0
	bne _022F3E5C
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _022F3E28
	mvn r0, #0
	cmp r7, r0
	beq _022F3E24
	cmp fp, #0
	beq _022F3E28
_022F3E24:
	ldrb r7, [sb, #0x4c]
_022F3E28:
	and r1, r7, #7
	mov r0, sl
	strb r1, [sb, #0x4c]
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, sl
	mov r2, r7
	bl ov29_023049A8
	mov r0, #0x62
	bl AdvanceFrame
	mov r0, #1
	str r0, [sp]
	b _022F3E68
_022F3E5C:
	mov r0, #1
	strb r5, [sb, #0x4c]
	bl FUN_02017CCC
_022F3E68:
	ldr r1, _022F3E90 @ =0x0237C9A4
	mov r0, #0
	strb r0, [r1, #1]
	strh r0, [r1, #4]
	bl ov29_0234B4CC
	bl ov29_022E0B44
	bl FUN_02006B70
	ldr r0, [sp]
_022F3E88:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F3E90: .4byte 0x0237C9A4
_022F3E94: .4byte 0x00000BA8
_022F3E98: .4byte 0x0237C6A4
_022F3E9C: .4byte 0x0237C694
	arm_func_end ov29_022F3B98

	arm_func_start ov29_022F3EA0
ov29_022F3EA0: @ 0x022F3EA0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r5, r0
	mov sb, r1
	mov r4, r3
	cmp r2, #0x64
	mov r6, #0
	add r0, sp, #0
	bne _022F3ECC
	bl ov29_022E0C64
	b _022F3EE0
_022F3ECC:
	cmp r2, #0x65
	bne _022F3EDC
	bl ov29_022E0C80
	b _022F3EE0
_022F3EDC:
	bl ov29_022E0C9C
_022F3EE0:
	ldr r1, _022F40AC @ =0x02353538
	ldr r0, _022F40B0 @ =0x0001A224
	ldr r7, [r1]
	ldr r2, [sp]
	ldrsh r0, [r7, r0]
	mov r1, #0x18
	add r0, r2, r0
	bl FUN_0208FEA4
	ldr r1, _022F40B4 @ =0x0001A226
	ldr r3, [sp, #4]
	ldrsh r2, [r7, r1]
	mov r7, r0
	mov r1, #0x18
	add r0, r3, r2
	bl FUN_0208FEA4
	mov r8, r0
	strh r7, [sb]
	strh r8, [sb, #2]
	ldrsh r1, [sb]
	ldrsh r0, [r5, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #2
	ble _022F3F58
	ldrsh r1, [sb, #2]
	ldrsh r0, [r5, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #2
	bgt _022F3F5C
_022F3F58:
	mov r6, #1
_022F3F5C:
	mov r0, sb
	bl ov29_022E2CA0
	cmp r0, #0
	cmpeq r6, #0
	beq _022F40A0
	ldrsh r0, [r5, #4]
	mvn r6, #0
	cmp r0, r7
	ldrsheq r1, [r5, #6]
	cmpeq r1, r8
	moveq r6, #0
	cmp r0, r7
	bne _022F3F9C
	ldrsh r1, [r5, #6]
	cmp r1, r8
	movlt r6, #0
_022F3F9C:
	cmp r0, r7
	ldrshlt r1, [r5, #6]
	cmplt r1, r8
	movlt r6, #1
	cmp r0, r7
	bge _022F3FC0
	ldrsh r1, [r5, #6]
	cmp r1, r8
	moveq r6, #2
_022F3FC0:
	cmp r0, r7
	bge _022F3FD4
	ldrsh r1, [r5, #6]
	cmp r1, r8
	movgt r6, #3
_022F3FD4:
	cmp r0, r7
	bne _022F3FE8
	ldrsh r1, [r5, #6]
	cmp r1, r8
	movgt r6, #4
_022F3FE8:
	cmp r0, r7
	ldrshgt r1, [r5, #6]
	cmpgt r1, r8
	movgt r6, #5
	cmp r0, r7
	ble _022F400C
	ldrsh r1, [r5, #6]
	cmp r1, r8
	moveq r6, #6
_022F400C:
	cmp r0, r7
	ble _022F4020
	ldrsh r0, [r5, #6]
	cmp r0, r8
	movlt r6, #7
_022F4020:
	cmp r6, #0
	movlt r0, r6
	blt _022F40A4
	cmp r4, #0
	beq _022F4098
	mov r0, r5
	mov r1, r6
	bl ov29_02301158
	cmp r0, #0
	movne r0, r6
	bne _022F40A4
	tst r6, #1
	moveq r0, r6
	beq _022F40A4
	sub r1, r6, #1
	mov r0, r5
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	subne r0, r6, #1
	andne r0, r0, #7
	bne _022F40A4
	add r1, r6, #1
	mov r0, r5
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	addne r0, r6, #1
	andne r0, r0, #7
	bne _022F40A4
_022F4098:
	mov r0, r6
	b _022F40A4
_022F40A0:
	mvn r0, #0
_022F40A4:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F40AC: .4byte 0x02353538
_022F40B0: .4byte 0x0001A224
_022F40B4: .4byte 0x0001A226
	arm_func_end ov29_022F3EA0

	arm_func_start ov29_022F40B8
ov29_022F40B8: @ 0x022F40B8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	ldrsh r2, [sb]
	mov sl, r0
	cmp r2, #0
	movlt r0, #0
	blt _022F425C
	ldrsh r0, [sb, #2]
	cmp r0, #0
	movlt r0, #0
	blt _022F425C
	add r0, sl, #4
	bl GetDirectionTowardsPosition
	mov r5, r0
	mov r0, sl
	mov r1, r5
	bl ov29_02301158
	cmp r0, #0
	movne r0, r5
	bne _022F425C
	tst r5, #1
	beq _022F4218
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb]
	sub r0, r1, r0
	bl FUN_0208655C
	ldrsh r2, [sl, #6]
	ldrsh r1, [sb, #2]
	mov r6, r0
	sub r0, r2, r1
	bl FUN_0208655C
	mov r7, r0
	cmp r6, r7
	movgt r1, #1
	ldr r0, _022F4264 @ =0x023526C8
	movle r1, #0
	add r0, r0, r1, lsl #3
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _022F4178
	sub r1, r5, #1
	add r0, r5, #1
	and r1, r1, #7
	and r0, r0, #7
	str r1, [sp]
	str r0, [sp, #4]
	b _022F4190
_022F4178:
	add r1, r5, #1
	sub r0, r5, #1
	and r1, r1, #7
	and r0, r0, #7
	str r1, [sp]
	str r0, [sp, #4]
_022F4190:
	mov r4, #0
	b _022F420C
_022F4198:
	add r0, sp, #0
	ldr r8, [r0, r4, lsl #2]
	ldr r0, _022F4268 @ =0x0235171C
	lsl r1, r8, #2
	ldrsh r1, [r0, r1]
	ldrsh r2, [sl, #4]
	ldrsh r0, [sb]
	add r1, r2, r1
	sub r0, r1, r0
	bl FUN_0208655C
	ldr r1, _022F4268 @ =0x0235171C
	ldrsh r3, [sl, #6]
	add r1, r1, r8, lsl #2
	ldrsh r2, [r1, #2]
	mov fp, r0
	ldrsh r1, [sb, #2]
	add r0, r3, r2
	sub r0, r0, r1
	bl FUN_0208655C
	cmp fp, r6
	cmple r0, r7
	bgt _022F4208
	mov r0, sl
	mov r1, r8
	bl ov29_02301158
	cmp r0, #0
	movne r0, r8
	bne _022F425C
_022F4208:
	add r4, r4, #1
_022F420C:
	cmp r4, #2
	blt _022F4198
	b _022F4258
_022F4218:
	sub r1, r5, #1
	mov r0, sl
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	subne r0, r5, #1
	andne r0, r0, #7
	bne _022F425C
	add r1, r5, #1
	mov r0, sl
	and r1, r1, #7
	bl ov29_02301158
	cmp r0, #0
	addne r0, r5, #1
	andne r0, r0, #7
	bne _022F425C
_022F4258:
	mov r0, r5
_022F425C:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F4264: .4byte 0x023526C8
_022F4268: .4byte 0x0235171C
	arm_func_end ov29_022F40B8

	arm_func_start ov29_022F426C
ov29_022F426C: @ 0x022F426C
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl GetTileSafe
	ldr r1, _022F42D4 @ =0x02353538
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x1a000
	ldrb r0, [r0, #0x23e]
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl ov29_022FF958
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r4, r5, r6, pc}
	.align 2, 0
_022F42D4: .4byte 0x02353538
	arm_func_end ov29_022F426C

	arm_func_start ov29_022F42D8
ov29_022F42D8: @ 0x022F42D8
	push {r3, lr}
	bl FUN_02055770
	cmp r0, #0
	moveq r0, #1
	popeq {r3, pc}
	ldrsh r0, [r0, #4]
	bl FUN_02054760
	pop {r3, pc}
	arm_func_end ov29_022F42D8

	arm_func_start ov29_022F42F8
ov29_022F42F8: @ 0x022F42F8
	cmp r0, #0
	moveq r1, #0
	beq _022F4318
	ldr r1, [r0]
	cmp r1, #0
	movne r1, #1
	moveq r1, #0
	and r1, r1, #0xff
_022F4318:
	cmp r1, #0
	ldrne r0, [r0, #0xb4]
	ldrbne r0, [r0, #7]
	cmpne r0, #0
	bxeq lr
	ldr r0, _022F434C @ =0x02353538
	mov r3, #0
	ldr r2, [r0]
	sub r1, r3, #1
	strb r3, [r2, #5]
	ldr r0, [r0]
	str r1, [r0, #0x614]
	bx lr
	.align 2, 0
_022F434C: .4byte 0x02353538
	arm_func_end ov29_022F42F8

	arm_func_start ov29_022F4350
ov29_022F4350: @ 0x022F4350
	ldr r2, [r0, #0xb4]
	mov r3, #1
	ldr ip, _022F436C @ =ov29_02345058
	add r0, r0, #4
	mov r1, #0
	strb r3, [r2, #0x4e]
	bx ip
	.align 2, 0
_022F436C: .4byte ov29_02345058
	arm_func_end ov29_022F4350

	arm_func_start ov29_022F4370
ov29_022F4370: @ 0x022F4370
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r1
	mov r1, #0
	mov r2, #0xfe
	mov r6, r0
	bl ov29_022EB54C
	mov sb, #0
	mov lr, #1
	mov r4, r0
	mov ip, sb
	mov fp, sb
	mov r2, lr
	ldr r1, _022F44D4 @ =0x020AF6B8
	mov r0, #6
	b _022F441C
_022F43AC:
	mul r7, sb, r0
	ldr r3, [r1]
	ldr r8, [r3, #0x384]
	ldrb sl, [r8, r7]
	tst sl, #1
	movne r3, lr
	moveq r3, ip
	tst r3, #0xff
	beq _022F4418
	ldrb r3, [r8, r7]
	tst r3, #0x10
	beq _022F4418
	tst sl, #8
	movne r3, r2
	moveq r3, fp
	tst r3, #0xff
	beq _022F440C
	add r1, r8, r7
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F44D8 @ =0x00000BA9
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F440C:
	ldrb r3, [r8, r7]
	bic r3, r3, #0x10
	strb r3, [r8, r7]
_022F4418:
	add sb, sb, #1
_022F441C:
	cmp sb, #0x32
	blt _022F43AC
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r0, _022F44DC @ =0x00003F07
	bl ov29_022EACCC
	cmp r5, #0
	beq _022F4494
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4468
	ldr r1, _022F44E0 @ =0x00000BAA
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022F4494
_022F4468:
	ldrsh r0, [r4, #4]
	bl FUN_0200CAF0
	cmp r0, #0
	bne _022F4488
	ldr r1, _022F44E4 @ =0x00000BAB
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022F4494
_022F4488:
	ldr r1, _022F44E8 @ =0x00000BAC
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022F4494:
	ldrb r0, [r4]
	orr r0, r0, #0x10
	strb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	cmpne r5, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F44EC @ =0x00000BAE
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F44D4: .4byte 0x020AF6B8
_022F44D8: .4byte 0x00000BA9
_022F44DC: .4byte 0x00003F07
_022F44E0: .4byte 0x00000BAA
_022F44E4: .4byte 0x00000BAB
_022F44E8: .4byte 0x00000BAC
_022F44EC: .4byte 0x00000BAE
	arm_func_end ov29_022F4370

	arm_func_start ov29_022F44F0
ov29_022F44F0: @ 0x022F44F0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
	mov r7, #1
	mov sl, r0
	mov sb, r1
	mov r6, r8
	mov fp, r7
	ldr r5, _022F45BC @ =0x020AF6B8
	mov r4, #6
	b _022F45B0
_022F4518:
	mul r2, r8, r4
	ldr r0, [r5]
	ldr r3, [r0, #0x384]
	ldrb r1, [r3, r2]
	tst r1, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	beq _022F45AC
	ldrb r0, [r3, r2]
	tst r0, #0x10
	beq _022F45AC
	tst r1, #8
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022F4578
	add r1, r3, r2
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F45C0 @ =0x00000BA9
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022F4578:
	ldrb ip, [r3, r2]
	mov r0, #0
	add r1, r3, r2
	bic ip, ip, #0x10
	strb ip, [r3, r2]
	bl ov29_02344B44
	ldr r0, _022F45C4 @ =0x00003F07
	bl ov29_022EACCC
	cmp sb, #0
	beq _022F45AC
	ldr r1, _022F45C8 @ =0x00000BAD
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022F45AC:
	add r8, r8, #1
_022F45B0:
	cmp r8, #0x32
	blt _022F4518
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F45BC: .4byte 0x020AF6B8
_022F45C0: .4byte 0x00000BA9
_022F45C4: .4byte 0x00003F07
_022F45C8: .4byte 0x00000BAD
	arm_func_end ov29_022F44F0

	arm_func_start ov29_022F45CC
ov29_022F45CC: @ 0x022F45CC
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14
	mov sl, r0
	mov r1, #1
	bl ov29_022EB568
	mov r4, r0
	ldr r8, [sl, #0xb4]
	mov r0, sl
	mov r1, #0
	mov r2, #2
	ldr sb, [r4, #0xb4]
	bl ov29_022EB54C
	ldrb r1, [r8, #0x4e]
	mov r5, r0
	mov r0, r5
	cmp r1, #0x80
	moveq r1, #1
	movne r1, #0
	and r6, r1, #0xff
	bl FUN_0200F14C
	mov r7, r0
	cmp r6, #0
	bne _022F4668
	ldrb r0, [r5]
	tst r0, #0x10
	beq _022F4668
	ldrb r0, [r5]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4668
	mov r1, r5
	mov r0, #1
	bl ov29_02344B44
	mov r0, sl
	mov r1, #0xbb0
	bl LogMessageByIdWithPopupCheckUser
	b _022F48B8
_022F4668:
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [sb, #0x62]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _022F47CC
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F46C0
	add r1, sb, #0x62
	mov r0, #1
	bl ov29_02344B44
	ldr r1, _022F48C0 @ =0x00000BAF
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F48B8
_022F46C0:
	ldrh r0, [sb, #0x62]
	cmp r6, #0
	add r1, sp, #0xc
	strh r0, [sp, #0xc]
	ldrh r2, [sb, #0x64]
	ldrb r0, [sp, #0xc]
	ldrb r3, [sp, #0xd]
	strh r2, [sp, #0xe]
	ldrh r6, [sb, #0x66]
	bic r2, r0, #0x10
	strh r6, [sp, #0x10]
	ldrh r0, [r5]
	strh r0, [sp, #6]
	ldrh r6, [r5, #2]
	ldrb r0, [sp, #6]
	strh r6, [sp, #8]
	ldrh r5, [r5, #4]
	bic r0, r0, #0x10
	strh r5, [sp, #0xa]
	strb r3, [sp, #7]
	strb r2, [sp, #0xc]
	strb r0, [sp, #6]
	beq _022F472C
	add r0, sl, #4
	mov r2, #1
	bl ov29_02345538
	b _022F4734
_022F472C:
	mov r0, r1
	bl FUN_0200FB54
_022F4734:
	ldrh r0, [sp, #6]
	cmp r7, #0
	strh r0, [sb, #0x62]
	ldrh r0, [sp, #8]
	strh r0, [sb, #0x64]
	ldrh r0, [sp, #0xa]
	strh r0, [sb, #0x66]
	blt _022F4770
	ldrb r0, [r8, #0x54]
	bl ov29_022EB594
	mov r2, r0
	add r1, sp, #6
	mov r0, r7
	bl FUN_0200FBE0
	b _022F4778
_022F4770:
	mov r0, sb
	bl ov29_02346F14
_022F4778:
	add r1, sp, #6
	mov r0, #0
	bl ov29_02344B44
	add r1, sp, #0xc
	mov r0, #1
	bl ov29_02344B44
	ldr r0, _022F48C4 @ =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F48C8 @ =0x00000BB2
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	ldrb r0, [sp, #6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4878
	ldr r1, _022F48CC @ =0x00000BAE
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F4878
_022F47CC:
	ldrh r0, [r5]
	cmp r7, #0
	strh r0, [sp]
	ldrh r1, [r5, #2]
	ldrb r0, [sp]
	strh r1, [sp, #2]
	ldrh r1, [r5, #4]
	bic r0, r0, #0x10
	strb r0, [sp]
	ldrh r0, [sp]
	strh r1, [sp, #4]
	strh r0, [sb, #0x62]
	ldrh r0, [sp, #2]
	strh r0, [sb, #0x64]
	ldrh r0, [sp, #4]
	strh r0, [sb, #0x66]
	blt _022F482C
	ldrb r0, [r8, #0x54]
	bl ov29_022EB594
	mov r2, r0
	mov r0, r7
	add r1, sb, #0x62
	bl FUN_0200FBE0
	b _022F4834
_022F482C:
	mov r0, sb
	bl ov29_02346F14
_022F4834:
	add r1, sp, #0
	mov r0, #0
	bl ov29_02344B44
	ldr r0, _022F48C4 @ =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F48D0 @ =0x00000BB3
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	ldrb r0, [sp]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4878
	ldr r1, _022F48CC @ =0x00000BAE
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022F4878:
	mov r0, r4
	bl ov29_022F9EA0
	mov r0, sl
	mov r1, r4
	bl ov29_02321164
	ldrb r0, [sb, #7]
	ldr r1, _022F48D4 @ =0x02353538
	cmp r0, #0
	ldrheq r0, [sb]
	orreq r0, r0, #0x4000
	strheq r0, [sb]
	ldr r1, [r1]
	mov r0, sl
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F48B8:
	add sp, sp, #0x14
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F48C0: .4byte 0x00000BAF
_022F48C4: .4byte 0x00001317
_022F48C8: .4byte 0x00000BB2
_022F48CC: .4byte 0x00000BAE
_022F48D0: .4byte 0x00000BB3
_022F48D4: .4byte 0x02353538
	arm_func_end ov29_022F45CC

	arm_func_start ov29_022F48D8
ov29_022F48D8: @ 0x022F48D8
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r1, #0
	mov r6, r0
	bl ov29_022EB568
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldrb r0, [r5, #0x62]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	mov r0, #0
	beq _022F4928
	add r1, r5, #0x62
	bl ov29_02344B44
	ldr r1, _022F49D0 @ =0x00000BAE
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	b _022F49C8
_022F4928:
	ldrh r2, [r5, #0x62]
	add r1, sp, #0
	strh r2, [sp]
	ldrh r3, [r5, #0x64]
	ldrb r2, [sp]
	strh r3, [sp, #2]
	ldrh r3, [r5, #0x66]
	bic r2, r2, #0x10
	strh r3, [sp, #4]
	strb r2, [sp]
	bl ov29_02344B44
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r0, r5, #0x62
	bl FUN_0200D81C
	add r0, sp, #0
	bl FUN_0200FB54
	ldr r0, _022F49D4 @ =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F49D8 @ =0x00000BB5
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r4
	bl ov29_022F9EA0
	mov r1, r4
	mov r0, r6
	bl ov29_02321164
	ldrb r0, [r5, #7]
	ldr r1, _022F49DC @ =0x02353538
	cmp r0, #0
	ldrheq r0, [r5]
	orreq r0, r0, #0x4000
	strheq r0, [r5]
	ldr r1, [r1]
	mov r0, r6
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F49C8:
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_022F49D0: .4byte 0x00000BAE
_022F49D4: .4byte 0x00001317
_022F49D8: .4byte 0x00000BB5
_022F49DC: .4byte 0x02353538
	arm_func_end ov29_022F48D8

	arm_func_start ov29_022F49E0
ov29_022F49E0: @ 0x022F49E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r1, #0
	mov r7, r0
	bl ov29_022EB568
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldr r2, _022F4BC8 @ =0x00001565
	mov r0, r7
	mov r1, #1
	bl ov29_022EB54C
	ldrb r1, [r5, #0x62]
	mov r6, r0
	tst r1, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4A44
	add r1, r5, #0x62
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F4BCC @ =0x00000BAE
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F4BC0
_022F4A44:
	ldrb r0, [r6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4A84
	ldrb r0, [r6]
	tst r0, #0x10
	beq _022F4A84
	mov r1, r6
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F4BCC @ =0x00000BAE
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F4BC0
_022F4A84:
	ldrb r2, [r5, #0x62]
	add r1, r5, #0x62
	mov r0, #0
	bic r2, r2, #0x10
	strb r2, [r5, #0x62]
	ldrb r2, [r6]
	bic r2, r2, #0x10
	strb r2, [r6]
	bl ov29_02344B44
	mov r1, r6
	mov r0, #1
	bl ov29_02344B44
	mov r1, r4
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldrh r3, [r5, #0x62]
	ldrh r2, [r5, #0x64]
	ldrh r1, [r5, #0x66]
	ldrb r0, [r5, #6]
	strh r3, [sp]
	strh r2, [sp, #2]
	strh r1, [sp, #4]
	cmp r0, #0
	bne _022F4AF0
	add r0, r5, #0x62
	bl FUN_0200F600
_022F4AF0:
	ldrh r0, [r6]
	strh r0, [r5, #0x62]
	ldrh r0, [r6, #2]
	strh r0, [r5, #0x64]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x66]
	ldrb r0, [r5, #6]
	cmp r0, #0
	movne r0, #0
	strbne r0, [r5, #0x63]
	bne _022F4B24
	mov r0, r5
	bl ov29_02346F14
_022F4B24:
	ldrh r2, [sp]
	ldrh r0, [sp, #2]
	ldrh r1, [sp, #4]
	strh r2, [r6]
	strh r0, [r6, #2]
	mov r0, r6
	strh r1, [r6, #4]
	bl ov29_02346FB8
	cmp r0, #0
	movlt r0, #0
	strblt r0, [r6, #1]
	blt _022F4B70
	ldr r2, _022F4BD0 @ =0x02353538
	add r1, r0, r0, lsl #3
	ldr r0, [r2]
	add r0, r0, #0x3f4
	add r0, r0, #0x400
	add r0, r0, r1, lsl #6
	bl ov29_02346F14
_022F4B70:
	bl ov29_02347030
	ldr r0, _022F4BD4 @ =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F4BD8 @ =0x00000BB6
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r7
	mov r1, r4
	bl ov29_02321164
	ldrb r0, [r5, #7]
	ldr r1, _022F4BD0 @ =0x02353538
	cmp r0, #0
	ldrheq r0, [r5]
	orreq r0, r0, #0x4000
	strheq r0, [r5]
	ldr r1, [r1]
	mov r0, r7
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F4BC0:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F4BC8: .4byte 0x00001565
_022F4BCC: .4byte 0x00000BAE
_022F4BD0: .4byte 0x02353538
_022F4BD4: .4byte 0x00001317
_022F4BD8: .4byte 0x00000BB6
	arm_func_end ov29_022F49E0

	arm_func_start ov29_022F4BDC
ov29_022F4BDC: @ 0x022F4BDC
	push {r3, lr}
	mov r1, #0
	bl ov29_022EB568
	ldr r0, [r0, #0xb4]
	mov r1, #1
	strb r1, [r0, #0x109]
	pop {r3, pc}
	arm_func_end ov29_022F4BDC

	arm_func_start ov29_022F4BF8
ov29_022F4BF8: @ 0x022F4BF8
	push {r4, r5, r6, lr}
	mov r5, r0
	mov r1, #0
	mov r2, #4
	ldr r6, [r5, #0xb4]
	bl ov29_022EB54C
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldrb r1, [r6, #0x4e]
	cmp r1, #0x80
	bne _022F4C3C
	ldr r1, _022F4D94 @ =0x00000BB7
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022F4C3C:
	cmp r1, #0x33
	bhs _022F4C78
	ldrb r0, [r4]
	tst r0, #0x10
	beq _022F4C78
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4C78
	ldr r1, _022F4D98 @ =0x00000BAE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022F4C78:
	cmp r1, #0x81
	bne _022F4CA8
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4CA8
	ldr r1, _022F4D98 @ =0x00000BAE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022F4CA8:
	ldrsh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x200
	beq _022F4CD0
	ldr r1, _022F4D9C @ =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022F4CD0:
	and r1, r1, #3
	cmp r1, #1
	beq _022F4CEC
	ldr r1, _022F4D9C @ =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022F4CEC:
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022F4D08
	ldr r1, _022F4D9C @ =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022F4D08:
	ldrb r2, [r4]
	mov r1, r4
	mov r0, #0
	bic r2, r2, #0x10
	strb r2, [r4]
	bl ov29_02344B44
	mov r1, r4
	add r0, r5, #4
	mov r2, #1
	bl ov29_02345538
	cmp r0, #0
	bne _022F4D48
	ldr r1, _022F4D9C @ =0x00000BB8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r4, r5, r6, pc}
_022F4D48:
	mov r0, r4
	bl FUN_0200D81C
	bl ov29_02347030
	ldr r0, _022F4DA0 @ =0x00001317
	bl ov29_022EACCC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022F4DA4 @ =0x00000BB9
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r5
	ldr r1, _022F4DA8 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
	pop {r4, r5, r6, pc}
	.align 2, 0
_022F4D94: .4byte 0x00000BB7
_022F4D98: .4byte 0x00000BAE
_022F4D9C: .4byte 0x00000BB8
_022F4DA0: .4byte 0x00001317
_022F4DA4: .4byte 0x00000BB9
_022F4DA8: .4byte 0x02353538
	arm_func_end ov29_022F4BF8

	arm_func_start ov29_022F4DAC
ov29_022F4DAC: @ 0x022F4DAC
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r6, [r8, #0xb4]
	mov r1, #0
	mov r2, #5
	bl ov29_022EB54C
	mov r4, r0
	mov r0, r8
	mov r1, #1
	mov r2, #6
	bl ov29_022EB54C
	ldrb r1, [r6, #0x4e]
	mov r7, r0
	cmp r1, #0x80
	beq _022F4DFC
	ldr r1, _022F503C @ =0x00000BBA
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4DFC:
	ldrb r1, [r6, #0x54]
	cmp r1, #0x33
	bhs _022F4E48
	ldrb r0, [r7]
	tst r0, #0x10
	beq _022F4E48
	ldrb r0, [r7]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4E48
	mov r1, r7
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F5040 @ =0x00000BAE
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4E48:
	cmp r1, #0x81
	bne _022F4E84
	ldrb r0, [r7]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F4E84
	mov r1, r7
	mov r0, #1
	bl ov29_02344B44
	ldr r1, _022F5044 @ =0x00000BB1
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4E84:
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTile
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #3
	beq _022F4EB4
	ldr r1, _022F5048 @ =0x00000BBB
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _022F5034
_022F4EB4:
	mov r0, r4
	bl ov29_02348D3C
	ldrh r1, [r4]
	mov r5, r0
	add r0, r6, #0x50
	strh r1, [sp]
	ldrh r2, [r4, #2]
	ldrb r1, [sp]
	mov ip, #0
	strh r2, [sp, #2]
	ldrh r2, [r4, #4]
	bic r3, r1, #0x10
	mov r1, #1
	strh r2, [sp, #4]
	ldrh r2, [r7]
	strh r2, [sp, #6]
	ldrh lr, [r7, #2]
	ldrb r2, [sp, #6]
	ldrb r4, [sp, #7]
	strh lr, [sp, #8]
	ldrh lr, [r7, #4]
	bic r2, r2, #0x10
	strh lr, [sp, #0xa]
	strb ip, [sp, #7]
	strb r3, [sp]
	strb r2, [sp, #6]
	bl ov29_023456BC
	mov r0, r7
	bl FUN_0200F600
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _022F4F3C
	mov r0, r7
	bl FUN_0200D81C
_022F4F3C:
	add r1, sp, #6
	add r0, r6, #0x50
	mov r2, #1
	bl ov29_02345538
	cmp r0, #0
	bne _022F4F68
	ldr r1, _022F504C @ =0x00000BBC
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	bl ov29_02347030
	b _022F5034
_022F4F68:
	strb r4, [sp, #1]
	ldrb r0, [r6, #0x54]
	cmp r0, #0x81
	bne _022F4F94
	ldrh r0, [sp]
	strh r0, [r6, #0x62]
	ldrh r0, [sp, #2]
	strh r0, [r6, #0x64]
	ldrh r0, [sp, #4]
	strh r0, [r6, #0x66]
	b _022F4FDC
_022F4F94:
	mov r0, r7
	bl ov29_02346FB8
	cmp r0, #0
	blt _022F4FD0
	ldr r1, _022F5050 @ =0x02353538
	add r0, r0, r0, lsl #3
	ldr r2, [r1]
	ldrh r1, [sp]
	add r0, r2, r0, lsl #6
	add r0, r0, #0x800
	strh r1, [r0, #0x56]
	ldrh r1, [sp, #2]
	strh r1, [r0, #0x58]
	ldrh r1, [sp, #4]
	strh r1, [r0, #0x5a]
_022F4FD0:
	add r0, sp, #0
	mov r1, r4
	bl FUN_0200F884
_022F4FDC:
	bl ov29_02347030
	add r1, sp, #6
	mov r0, #0
	bl ov29_02344B44
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	ldr r0, _022F5054 @ =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F5058 @ =0x00000BBD
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	ldr r1, _022F5050 @ =0x02353538
	mov r0, r8
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
	add r0, sp, #0
	mov r1, r5
	bl ov29_02348ECC
	cmp r0, #0
_022F5034:
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F503C: .4byte 0x00000BBA
_022F5040: .4byte 0x00000BAE
_022F5044: .4byte 0x00000BB1
_022F5048: .4byte 0x00000BBB
_022F504C: .4byte 0x00000BBC
_022F5050: .4byte 0x02353538
_022F5054: .4byte 0x00001317
_022F5058: .4byte 0x00000BBD
	arm_func_end ov29_022F4DAC

	arm_func_start ov29_022F505C
ov29_022F505C: @ 0x022F505C
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldrsh r0, [r7, #4]
	ldrsh r1, [r7, #6]
	ldr r5, [r7, #0xb4]
	bl GetTile
	mov r4, r0
	mov r0, r7
	mov r1, #0
	mov r2, #7
	bl ov29_022EB54C
	mov r6, r0
	mov r1, r6
	mov r0, #0
	bl ov29_02344B44
	ldrb r1, [r5, #0x4e]
	cmp r1, #0x33
	bhs _022F50E8
	ldrb r0, [r6]
	tst r0, #0x10
	beq _022F50E8
	ldrb r0, [r6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F50E8
	mov r1, r6
	mov r0, #1
	bl ov29_02344B44
	ldr r1, _022F5274 @ =0x00000BB1
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F526C
_022F50E8:
	cmp r1, #0x81
	bne _022F5118
	ldrb r0, [r6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F5118
	mov r0, r7
	mov r1, #0xbb0
	bl LogMessageByIdWithPopupCheckUser
	b _022F526C
_022F5118:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #3
	beq _022F513C
	ldr r1, _022F5278 @ =0x00000BBB
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022F526C
_022F513C:
	bl ov29_022E1610
	mov r4, r0
	mov r1, r4
	mov r0, #1
	bl ov29_02344B44
	ldrh r2, [r6]
	add r0, r7, #4
	mov r1, #1
	strh r2, [sp]
	ldrh r3, [r6, #2]
	ldrb r2, [sp]
	strh r3, [sp, #2]
	ldrh ip, [r6, #4]
	bic r3, r2, #0x10
	strh ip, [sp, #4]
	ldrh r2, [r4]
	strh r2, [sp, #6]
	ldrh ip, [r4, #2]
	ldrb r2, [sp, #6]
	strh ip, [sp, #8]
	ldrh r4, [r4, #4]
	bic r2, r2, #0x10
	strh r4, [sp, #0xa]
	strb r3, [sp]
	strb r2, [sp, #6]
	bl ov29_023456BC
	mov r0, r6
	bl FUN_0200F600
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _022F51C0
	mov r0, r6
	bl FUN_0200D81C
_022F51C0:
	add r1, sp, #0
	add r0, r7, #4
	mov r2, #1
	bl ov29_02345538
	cmp r0, #0
	bne _022F51EC
	ldr r1, _022F527C @ =0x00000BBC
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	bl ov29_02347030
	b _022F526C
_022F51EC:
	add r0, sp, #6
	bl ov29_02348D3C
	ldrb r1, [r5, #0x4e]
	mov r4, r0
	add r0, sp, #6
	cmp r1, #0x81
	bne _022F5228
	ldrh r1, [sp, #6]
	strh r1, [r5, #0x62]
	ldrh r1, [sp, #8]
	strh r1, [r5, #0x64]
	ldrh r1, [sp, #0xa]
	strh r1, [r5, #0x66]
	bl FUN_0200F874
	b _022F522C
_022F5228:
	bl FUN_0200F874
_022F522C:
	bl ov29_02347030
	ldr r0, _022F5280 @ =0x00001317
	bl ov29_022EACCC
	ldr r1, _022F5284 @ =0x00000BBD
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	ldr r1, _022F5288 @ =0x02353538
	mov r0, r7
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
	add r0, sp, #6
	mov r1, r4
	bl ov29_02348ECC
	cmp r0, #0
_022F526C:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022F5274: .4byte 0x00000BB1
_022F5278: .4byte 0x00000BBB
_022F527C: .4byte 0x00000BBC
_022F5280: .4byte 0x00001317
_022F5284: .4byte 0x00000BBD
_022F5288: .4byte 0x02353538
	arm_func_end ov29_022F505C

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022F528C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_02343D30
ov29_02343D30: @ 0x022F52B0
	ldr ip, _022F52B8 @ =ov29_02343D30
	bx ip
	.align 2, 0
_022F52B8: .4byte ov29_02343D30
	arm_func_end ov29_02343D30

	arm_func_start ov29_022F52BC
ov29_022F52BC: @ 0x022F52BC
	ldr ip, _022F52C8 @ =FUN_022F52F8
	mov r1, r0
	bx ip
	.align 2, 0
_022F52C8: .4byte FUN_022F52F8
	arm_func_end ov29_022F52BC

	arm_func_start ov29_022F52CC
ov29_022F52CC: @ 0x022F52CC
	ldr r2, [r0, #0xb4]
	ldr r1, _022F52F0 @ =0x02353538
	ldrb r2, [r2, #0x54]
	ldr r1, [r1]
	ldr ip, _022F52F4 @ =FUN_022F52F8
	add r1, r1, r2, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	bx ip
	.align 2, 0
_022F52F0: .4byte 0x02353538
_022F52F4: .4byte FUN_022F52F8
	arm_func_end ov29_022F52CC

	arm_func_start FUN_022F52F8
FUN_022F52F8: @ 0x022F52F8
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r8, r1
	mov sb, r0
	mov r0, r8
	ldr r5, [r8, #0xb4]
	bl ov29_023186CC
	cmp r0, #0
	beq _022F5334
	mov r0, r8
	bl ov29_02318700
	mov r0, #0x14
	mov r1, #9
	bl ov29_022EA370
	b _022F54B0
_022F5334:
	mov r0, sb
	bl ov29_022FBAB4
	mov r0, sb
	mov r1, #0
	mov r2, #8
	bl ov29_022EB54C
	mov r4, r0
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	bl ov29_0234B034
	mov r2, r5
	mov r1, #0
	str r1, [sp]
	mov r3, r1
	bl ov29_0230040C
	mov r0, r8
	mov r1, r4
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022F54B0
	mov r0, r4
	bl ov29_022EB378
	mov r1, r0
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	ldrh r2, [r4]
	mov r0, sb
	mov r1, #0
	strh r2, [sp, #8]
	ldrh r3, [r4, #2]
	mov r2, #0x66
	strh r3, [sp, #0xa]
	ldrh r3, [r4, #4]
	strh r3, [sp, #0xc]
	bl ov29_022EB60C
	mov r0, #0x1e
	mov r1, #0x11
	bl ov29_022EA370
	mov r0, #0
	str r8, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r1, r0
	mov r2, r0
	mov r3, r8
	bl ApplyItemEffect
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r8, #0xb4]
	ldrbne r0, [r0, #7]
	cmpne r0, #0
	beq _022F5498
	mov r0, r8
	mov r1, #0x33
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022F5498
	ldrsh r0, [sp, #0xc]
	bl ov29_02347000
	cmp r0, #0
	beq _022F5498
	mov r7, #0
	ldr r4, _022F54B8 @ =0x02353538
	add r6, sp, #8
	mov r5, r7
_022F5440:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	cmp sl, r8
	beq _022F5484
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022F5484
	str sl, [sp]
	mov r0, r5
	mov r1, r5
	mov r2, r5
	mov r3, r8
	str r6, [sp, #4]
	bl ApplyItemEffect
_022F5484:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	blt _022F5440
_022F5498:
	ldr r1, _022F54B8 @ =0x02353538
	mov r0, sb
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F54B0:
	add sp, sp, #0x10
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F54B8: .4byte 0x02353538
	arm_func_end FUN_022F52F8

	arm_func_start ov29_022F54BC
ov29_022F54BC: @ 0x022F54BC
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14
	mov sb, r0
	ldr r8, [sb, #0xb4]
	bl ov29_022FBAB4
	mov r0, sb
	mov r1, #0
	mov r2, #9
	bl ov29_022EB54C
	mov r4, r0
	mov r0, sb
	bl ov29_023186CC
	cmp r0, #0
	beq _022F550C
	mov r0, sb
	bl ov29_02318700
	mov r0, #0x14
	mov r1, #9
	bl ov29_022EA370
	b _022F5978
_022F550C:
	ldrb r0, [r8, #0x4e]
	cmp r0, #0x81
	bne _022F5558
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F5558
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F5980 @ =0x00000BAE
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x14
	mov r1, #0x4c
	bl ov29_022EA370
	b _022F5978
_022F5558:
	ldrsh r0, [r4, #4]
	bl FUN_0200CAF0
	cmp r0, #0
	beq _022F5578
	ldrsh r0, [r4, #4]
	bl FUN_0200CAF0
	cmp r0, #1
	bne _022F55B8
_022F5578:
	ldrb r0, [r4]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022F55B8
	mov r1, r4
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _022F5980 @ =0x00000BAE
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x14
	mov r1, #0x4c
	bl ov29_022EA370
	b _022F5978
_022F55B8:
	mov r0, sb
	mov r1, #1
	bl ShouldMonsterRunAwayVariation
	cmp r0, #0
	beq _022F55E8
	ldr r1, _022F5984 @ =0x00000BBE
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x14
	mov r1, #0x4c
	bl ov29_022EA370
	b _022F5978
_022F55E8:
	ldrh r0, [r4]
	mov r2, #0
	add r1, sp, #0xc
	strh r0, [sp, #0xc]
	ldrh r5, [r4, #2]
	ldrb r3, [sp, #0xc]
	mov r0, sb
	strh r5, [sp, #0xe]
	ldrh r5, [r4, #4]
	bic r3, r3, #0x10
	strh r5, [sp, #0x10]
	strb r3, [sp, #0xc]
	strb r2, [sp, #0xd]
	bl ov29_0230F9A4
	ldrb r0, [r8, #0x4e]
	cmp r0, #0x80
	bne _022F563C
	add r0, r8, #0x50
	mov r1, #1
	mov r4, #0
	bl ov29_023456BC
_022F563C:
	ldrsh r0, [sp, #0x10]
	mov r5, #1
	bl FUN_0200CAF0
	cmp r0, #0
	beq _022F5660
	ldrsh r0, [sp, #0x10]
	bl FUN_0200CAF0
	cmp r0, #1
	bne _022F566C
_022F5660:
	ldrh r0, [sp, #0xe]
	cmp r0, #1
	movhi r5, #0
_022F566C:
	cmp r5, #0
	ldrb r0, [r8, #0x4e]
	beq _022F56A8
	cmp r0, #0x80
	beq _022F56F4
	mov r0, r4
	bl ov29_02346FB8
	cmp r0, #0
	blt _022F5698
	mov r0, r4
	bl FUN_0200F600
_022F5698:
	mov r0, r4
	bl FUN_0200D81C
	bl ov29_02347030
	b _022F56F4
_022F56A8:
	cmp r0, #0x80
	bne _022F56D0
	ldrh r2, [sp, #0xe]
	add r1, sp, #0xc
	add r0, r8, #0x50
	sub r3, r2, #1
	mov r2, #1
	strh r3, [sp, #0xe]
	bl ov29_02345538
	b _022F56F4
_022F56D0:
	mov r0, r4
	bl ov29_02346FB8
	cmp r0, #0
	blt _022F56E8
	mov r0, r4
	bl FUN_0200F694
_022F56E8:
	ldrh r0, [r4, #2]
	sub r0, r0, #1
	strh r0, [r4, #2]
_022F56F4:
	mov r0, sb
	mov r1, #0x30
	bl ItemIsActive
	cmp r0, #0
	beq _022F5714
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r8, #0x4c]
_022F5714:
	mov r0, sb
	bl ov29_022E272C
	cmp r0, #0
	beq _022F577C
	ldr r1, _022F5988 @ =0x00000103
	mov r0, sb
	ldrb r7, [r8, #0x4c]
	bl ov29_022E56A0
	mov r6, #0
	mov r5, r6
	mov r4, #2
	mov sl, #0x15
_022F5744:
	sub r0, r7, #1
	and r7, r0, #7
	mov r0, sb
	mov r1, r5
	mov r2, r7
	bl ov29_023049A8
	mov r0, r4
	mov r1, sl
	bl ov29_022EA370
	add r6, r6, #1
	cmp r6, #8
	blt _022F5744
	mov r0, #4
	strb r0, [r8, #0x179]
_022F577C:
	ldrsh r0, [sp, #0x10]
	bl FUN_0200CAF0
	cmp r0, #0
	beq _022F579C
	ldrsh r0, [sp, #0x10]
	bl FUN_0200CAF0
	cmp r0, #1
	bne _022F57A4
_022F579C:
	mov r0, #1
	strh r0, [sp, #0xe]
_022F57A4:
	add r1, sp, #0xc
	mov r0, #0
	bl ov29_02344B70
	bl ov29_0234B034
	mov r1, #0
	mov r2, r8
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldrsh r0, [sp, #0x10]
	bl FUN_0200CAF0
	cmp r0, #0
	bne _022F57E8
	mov r0, sb
	mov r1, #0xbc0
	bl LogMessageByIdWithPopupCheckUser
	b _022F57F4
_022F57E8:
	ldr r1, _022F598C @ =0x00000BBF
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
_022F57F4:
	ldrsh r0, [sp, #0x10]
	bl FUN_0200CAF0
	mov r1, r0
	mov r0, sb
	bl ov29_022E5728
	mov r0, sb
	mov r1, #0x2e
	bl ItemIsActive
	cmp r0, #0
	movne r0, #1
	strbne r0, [sp, #9]
	moveq r0, #0
	strbeq r0, [sp, #9]
	ldrb r0, [r8, #0xee]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022F5880
_022F5838: @ jump table
	b _022F5848 @ case 0
	b _022F585C @ case 1
	b _022F5870 @ case 2
	b _022F5880 @ case 3
_022F5848:
	mov r1, #0
	mov r0, #0xa
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
	b _022F5880
_022F585C:
	mov r1, #0
	mov r0, #0x63
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
	b _022F5880
_022F5870:
	mov r1, #1
	mov r0, #0x63
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
_022F5880:
	ldr r1, [sb, #0xb4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	movne r0, #0
	bne _022F58A0
	add r0, r1, #0x228
	mov r1, #0x24
	bl FUN_02010FA4
_022F58A0:
	cmp r0, #0
	movne r1, #0
	movne r0, #0x63
	strbne r1, [sp, #8]
	strhne r0, [sp, #0xa]
	mov r0, sb
	mov r1, #0x16
	bl ItemIsActive
	cmp r0, #0
	bne _022F58DC
	mov r0, sb
	mov r1, #0x42
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022F58EC
_022F58DC:
	mov r1, #1
	mov r0, #0x63
	strb r1, [sp, #8]
	strh r0, [sp, #0xa]
_022F58EC:
	ldrsh r0, [sp, #0x10]
	bl FUN_0200CAF0
	cmp r0, #1
	bne _022F5928
	add r0, sp, #4
	mov r1, sb
	bl ov29_022E9A9C
	add r4, sp, #8
	add r1, sp, #0xc
	add r3, sp, #4
	mov r0, sb
	add r2, sb, #4
	str r4, [sp]
	bl ov29_02347BC8
	b _022F5944
_022F5928:
	add r0, sp, #8
	str r0, [sp]
	ldrb r3, [r8, #0x4c]
	add r1, sp, #0xc
	mov r0, sb
	add r2, sb, #4
	bl ov29_02347518
_022F5944:
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022F5978
	ldrb r1, [r8, #0x4c]
	mov r0, sb
	bl ov29_02304A48
	ldr r1, _022F5990 @ =0x02353538
	mov r0, sb
	ldr r1, [r1]
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02307F4C
_022F5978:
	add sp, sp, #0x14
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F5980: .4byte 0x00000BAE
_022F5984: .4byte 0x00000BBE
_022F5988: .4byte 0x00000103
_022F598C: .4byte 0x00000BBF
_022F5990: .4byte 0x02353538
	arm_func_end ov29_022F54BC

	arm_func_start ItemIsActive
ItemIsActive: @ 0x022F5994
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	pop {r3, r4, r5, pc}
	arm_func_end ItemIsActive

	arm_func_start ov29_022F59C4
ov29_022F59C4: @ 0x022F59C4
	push {r4, lr}
	mov r4, r0
	bl ov29_022F87C0
	movs r1, r0
	moveq r1, #0
	beq _022F59FC
	ldr r0, [r1]
	cmp r0, #1
	movne r1, #0
	bne _022F59FC
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r1, #0
_022F59FC:
	mov r0, r4
	mvn r2, #0
	bl ov29_022F5A40
	pop {r4, pc}
	arm_func_end ov29_022F59C4

	arm_func_start ov29_022F5A0C
ov29_022F5A0C: @ 0x022F5A0C
	push {r4, lr}
	mov r4, r0
	bl GetLeader
	ldr r1, _022F5A3C @ =0x02353538
	ldrb r3, [r4, #4]
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, r3, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	bl ov29_022F5A40
	pop {r4, pc}
	.align 2, 0
_022F5A3C: .4byte 0x02353538
	arm_func_end ov29_022F5A0C

	arm_func_start ov29_022F5A40
ov29_022F5A40: @ 0x022F5A40
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov r6, r0
	movs sl, r1
	mov r5, r2
	ldr r8, [r6, #0xb4]
	bne _022F5A70
	ldr r1, _022F5D9C @ =0x00000BC1
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5A70:
	bl ov29_023009CC
	cmp r0, #0
	bne _022F5A90
	ldr r1, _022F5D9C @ =0x00000BC1
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5A90:
	ldr r0, [sl, #0xb4]
	ldrb r0, [r0, #0xbc]
	bl ov29_022EFB04
	movs r4, r0
	bne _022F5ADC
	mov r0, r6
	mov r1, sl
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #1
	beq _022F5D84
	mov r0, sl
	mov r1, r6
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #1
	beq _022F5D84
_022F5ADC:
	ldr sb, [sl, #0xb4]
	bl ov29_0234B034
	mov r1, #0
	mov r2, sb
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	bl ov29_0234B034
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	mov r2, sb
	mov r3, #7
	bl ov29_0230040C
	mov r0, #3
	bl ov29_02348C64
	mov r0, r6
	mov r1, sl
	bl ov29_02307BDC
	mov r0, sl
	bl ov29_023009CC
	cmp r0, #0
	beq _022F5B4C
	mov r0, sl
	mov r1, #1
	bl ov29_02300818
	cmp r0, #0
	beq _022F5B78
_022F5B4C:
	add r0, r6, #4
	add r1, sl, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r6
	bl ov29_02304AFC
	ldr r1, _022F5DA0 @ =0x00000BC2
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5B78:
	add r0, r6, #4
	add r1, sl, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r6
	bl ov29_02304AFC
	cmp r5, #0
	blt _022F5BA8
	mov r0, sl
	mov r1, r5
	bl ov29_02304AFC
	b _022F5BB8
_022F5BA8:
	ldrb r1, [r8, #0x4c]
	mov r0, sl
	add r1, r1, #4
	bl ov29_02304AFC
_022F5BB8:
	cmp r4, #0
	beq _022F5BD0
	mov r0, r6
	mov r1, sl
	bl ov29_02344544
	b _022F5D94
_022F5BD0:
	ldrb r0, [sb, #9]
	cmp r0, #1
	bne _022F5BE4
	bl ov29_022F6748
	b _022F5D94
_022F5BE4:
	ldrb r0, [sb, #0xbc]
	cmp r0, #7
	bne _022F5C3C
	ldr r0, _022F5DA4 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x790]
	cmp r0, #0
	beq _022F5C18
	ldr r1, _022F5DA8 @ =0x00000BC3
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F5D94
_022F5C18:
	bl ov29_023491A4
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	mov r0, sl
	beq _022F5C34
	bl ov29_0234A5E4
	b _022F5D94
_022F5C34:
	bl ov29_0234A2D4
	b _022F5D94
_022F5C3C:
	ldrsh r2, [sb, #0x12]
	ldrsh r1, [sb, #0x16]
	ldr r0, _022F5DAC @ =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	lsl r0, r1, #3
	mov r1, #0xa
	bl FUN_0208FEA4
	ldrsh r1, [sb, #0x10]
	cmp r1, r0
	movge r4, #0
	bge _022F5C84
	mov r0, sl
	bl HasLowHealth
	cmp r0, #0
	moveq r4, #1
	movne r4, #2
_022F5C84:
	bl FUN_02025888
	ldrb r1, [sb, #0x48]
	mov r5, r0
	cmp r1, #0xd6
	bne _022F5CA4
	ldr r1, _022F5DB0 @ =0x0000025E
	bl FUN_020258B8
	b _022F5D3C
_022F5CA4:
	mov r0, sl
	mov r6, #0x14
	bl ov29_0231AE3C
	str r0, [sp, #4]
	ldr r0, _022F5DB4 @ =0x000004D3
	sub fp, r0, #0x1b
_022F5CBC:
	mov r0, sb
	bl ov29_0234CFEC
	mov r7, r0
	cmp r7, fp
	ldrne r0, _022F5DB4 @ =0x000004D3
	cmpne r7, r0
	moveq r2, #0
	beq _022F5CE8
	ldrb r0, [r8, #0x48]
	bl ov29_0234CFA0
	mov r2, r0
_022F5CE8:
	mov r0, r7
	mov r1, r4
	bl FUN_0202598C
	mov r1, r0
	mov r0, r5
	bl FUN_020258B8
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _022F5D3C
	ldr r1, _022F5DB8 @ =0x02352750
	mov r0, r5
	bl FUN_02020880
	cmp r0, #0
	beq _022F5D3C
	subs r6, r6, #1
	bne _022F5D34
	ldr r1, _022F5DBC @ =0x02352758
	mov r0, r5
	bl FUN_02089694
_022F5D34:
	cmp r6, #0
	bne _022F5CBC
_022F5D3C:
	ldrb r0, [sb, #0x48]
	cmp r0, #0xd7
	bne _022F5D5C
	mov r0, sl
	bl HasLowHealth
	cmp r0, #0
	movne r2, #2
	bne _022F5D60
_022F5D5C:
	mov r2, #0
_022F5D60:
	ldrsh r1, [sb, #4]
	add r0, sp, #8
	bl ov29_0234BAC0
	add r1, sp, #8
	mov r0, sl
	mov r2, r5
	mov r3, #1
	bl ov29_0234D304
	b _022F5D94
_022F5D84:
	ldr r1, _022F5D9C @ =0x00000BC1
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022F5D94:
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F5D9C: .4byte 0x00000BC1
_022F5DA0: .4byte 0x00000BC2
_022F5DA4: .4byte 0x02353538
_022F5DA8: .4byte 0x00000BC3
_022F5DAC: .4byte 0x000003E7
_022F5DB0: .4byte 0x0000025E
_022F5DB4: .4byte 0x000004D3
_022F5DB8: .4byte 0x02352750
_022F5DBC: .4byte 0x02352758
	arm_func_end ov29_022F5A40

	arm_func_start ov29_022F5DC0
ov29_022F5DC0: @ 0x022F5DC0
	push {r4, lr}
	mov r4, r0
	bl GetLeader
	ldr r1, _022F5DF0 @ =0x02353538
	ldrb r3, [r4, #4]
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, r3, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb28]
	bl ov29_022F5DF4
	pop {r4, pc}
	.align 2, 0
_022F5DF0: .4byte 0x02353538
	arm_func_end ov29_022F5DC0

	arm_func_start ov29_022F5DF4
ov29_022F5DF4: @ 0x022F5DF4
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	movs r7, r1
	ldr r4, [r7, #0xb4]
	mov r0, #0
	bne _022F5E1C
	ldr r1, _022F5F0C @ =0x00000BC4
	mov r2, #1
	bl DisplayMessage2
	b _022F5F04
_022F5E1C:
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrsh r0, [r4, #0xc]
	ldr r5, _022F5F10 @ =0x00000BC5
	cmp r0, #0
	add r6, r5, #4
	blt _022F5E84
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bl FUN_0205638C
	mov r4, r0
	ldrsh r0, [r4, #8]
	bl ov29_02056264
	cmp r0, #0
	addne r5, r5, #3
	addne r6, r5, #3
	bne _022F5E84
	ldrsh r0, [r4, #8]
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _022F5E84
	bl ov29_022E08A0
	cmp r0, #0
	addne r5, r5, #2
	ldr r6, _022F5F14 @ =0x00000BCA
	addeq r5, r5, #1
_022F5E84:
	mov r2, #1
	mov r1, r5
	mov r3, r2
	mov r0, #0
	str r2, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F5F04
	mov r0, #0
	bl ov29_0233A248
	mov r0, #0
	bl FUN_02024FB8
	mov r1, r0
	add r0, sp, #4
	mov r2, #0x40
	bl FUN_0208975C
	mov r0, r7
	bl ov29_022E690C
	mov r0, r7
	mov r1, #0x25c
	mov r2, #0
	bl HandleFaint
	bl UpdateMapSurveyorFlag
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, #0
	add r1, sp, #4
	bl ov29_0234B0B4
	mov r1, r6
	mov r0, #0
	mov r2, #1
	bl DisplayMessage
_022F5F04:
	add sp, sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022F5F0C: .4byte 0x00000BC4
_022F5F10: .4byte 0x00000BC5
_022F5F14: .4byte 0x00000BCA
	arm_func_end ov29_022F5DF4

	arm_func_start ov29_022F5F18
ov29_022F5F18: @ 0x022F5F18
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r7, #0
	bl EntityIsValid
	cmp r0, #0
	beq _022F5F88
	ldr r0, _022F6050 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	bl ov29_02344160
	cmp r0, #0
	bne _022F5F60
	ldr r1, _022F6054 @ =0x00000DFD
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	b _022F6048
_022F5F60:
	ldr r4, [sb, #0xb4]
	mov r1, r7
	mov r0, sb
	strb r1, [r4, #0x23f]
	bl ov29_0231A7A0
	cmp r0, #0
	movne r7, #1
	strbne r7, [r4, #0x23f]
	mov r0, #0
	strb r0, [r4, #0x23e]
_022F5F88:
	mov r6, #0
	mov r4, #1
	mov r5, r6
	mov sl, r4
	b _022F5FD8
_022F5F9C:
	ldr r8, [sb, #0xb4]
	mov r0, sb
	str r5, [sp]
	ldrb r1, [r8, #0x54]
	mov r2, r4
	mov r3, r5
	bl ov29_0232145C
	bl IsFloorOver
	cmp r0, #0
	ldrbeq r0, [r8, #0x23e]
	cmpeq r0, #0
	ldrbeq r0, [r8, #0x163]
	cmpeq r0, #0
	bne _022F5FEC
	add r6, r6, #1
_022F5FD8:
	mov r0, sb
	mov r1, sl
	bl GetNumberOfAttacks
	cmp r6, r0
	blt _022F5F9C
_022F5FEC:
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022F6014
	cmp r7, #0
	moveq r1, #1
	movne r1, #0
	mov r0, sb
	and r1, r1, #0xff
	bl UpdateMovePp
_022F6014:
	bl IsFloorOver
	cmp r0, #0
	bne _022F6048
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022F6040
	ldr r1, [sb, #0xb4]
	mov r0, sb
	ldrb r1, [r1, #0x54]
	bl ov29_022FA574
_022F6040:
	mov r0, sb
	bl TryActivateTruant
_022F6048:
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F6050: .4byte 0x02353538
_022F6054: .4byte 0x00000DFD
	arm_func_end ov29_022F5F18

	arm_func_start ov29_022F6058
ov29_022F6058: @ 0x022F6058
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r7, [sl, #0xb4]
	ldr r2, _022F61F8 @ =0x0237CA80
	mov r3, #0
	add r0, sp, #0xc
	str r3, [r2]
	mov sb, r1
	bl FUN_020137B8
	ldrb r0, [r7, #0xd0]
	cmp r0, #1
	bne _022F60AC
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022F61FC @ =0x00000BCC
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F61F0
_022F60AC:
	ldrb r0, [r7, #0xbf]
	cmp r0, #4
	bne _022F60D8
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022F6200 @ =0x00000BCD
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
	b _022F61F0
_022F60D8:
	mov r6, #0
	cmp sb, #0x160
	moveq r8, #1
	movne r8, #0
	strb r6, [r7, #0x163]
	mov fp, r6
	mov r5, #0xa
	add r4, sp, #0xc
	b _022F6154
_022F60FC:
	mov r0, sl
	bl ov29_022FBAB4
	str fp, [r7, #0x18c]
	ldrb r1, [sp, #0xc]
	strb r5, [sp, #0x12]
	mov r0, sl
	orr r1, r1, #0xc
	strb r1, [sp, #0xc]
	str fp, [sp]
	mov r1, r8
	mov r2, fp
	mov r3, fp
	str r4, [sp, #4]
	bl ov29_02322374
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022F6168
	ldrb r0, [r7, #0x163]
	cmp r0, #0
	bne _022F6168
	add r6, r6, #1
_022F6154:
	mov r0, sl
	mov r1, #1
	bl GetNumberOfAttacks
	cmp r6, r0
	blt _022F60FC
_022F6168:
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022F61F0
	cmp sb, #0x160
	ldreq r0, _022F61F8 @ =0x0237CA80
	ldreq r0, [r0]
	cmpeq r0, #0
	bne _022F6198
	ldr r1, _022F6204 @ =0x00000BCE
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_022F6198:
	ldrb r0, [r7, #7]
	cmp r0, #0
	cmpne sb, #0x160
	beq _022F61E8
	ldrb r1, [r7, #0x4c]
	ldr r0, _022F6208 @ =0x0235171C
	ldrsh r3, [sl, #4]
	lsl r1, r1, #2
	ldrsh r2, [r0, r1]
	ldr r1, _022F620C @ =0x0235171E
	add r0, sp, #8
	add r2, r3, r2
	strh r2, [sp, #8]
	ldrb r2, [r7, #0x4c]
	ldrsh r3, [sl, #6]
	lsl r2, r2, #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [sp, #0xa]
	bl ov29_02338430
_022F61E8:
	mov r0, sl
	bl EnemyEvolution
_022F61F0:
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F61F8: .4byte 0x0237CA80
_022F61FC: .4byte 0x00000BCC
_022F6200: .4byte 0x00000BCD
_022F6204: .4byte 0x00000BCE
_022F6208: .4byte 0x0235171C
_022F620C: .4byte 0x0235171E
	arm_func_end ov29_022F6058

	arm_func_start ov29_022F6210
ov29_022F6210: @ 0x022F6210
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	ldr r7, _022F62A4 @ =0x02353538
	b _022F6294
_022F6234:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb38]
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _022F6288
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _022F6288
	mov r0, r5
	bl ov29_023009CC
	cmp r0, #0
	beq _022F6288
	ldrb r1, [r6, #0x25]
	ldrb r0, [r5, #0x25]
	cmp r1, r0
	moveq r0, r5
	popeq {r3, r4, r5, r6, r7, pc}
_022F6288:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_022F6294:
	cmp r4, #0x10
	blt _022F6234
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F62A4: .4byte 0x02353538
	arm_func_end ov29_022F6210

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022F62A8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022F62CC
ov29_022F62CC: @ 0x022F62CC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov sl, r0
	bl IsFloorOver
	cmp r0, #0
	bne _022F66F4
	bl GetLeader
	ldr r1, _022F66FC @ =0x02353538
	mov r4, r0
	ldr r1, [r1]
	ldr r6, [r4, #0xb4]
	ldrb fp, [r1, #0x7c8]
	bl GetTileAtEntity
	ldrh r0, [r0]
	ldr r7, _022F66FC @ =0x02353538
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	and r5, r0, #0xff
	ldr r0, [r7]
	strb r5, [r0, #0x7c8]
	ldr r0, [r7]
	strb r5, [r0, #0x7c9]
	ldr r1, [r7]
	ldrb r0, [r1, #0x790]
	cmp r0, #0
	bne _022F66F4
	ldr r0, [r1, #0x7c4]
	cmp r0, #0
	beq _022F66F4
	ldrb r0, [r6, #0xef]
	cmp r0, #1
	bne _022F6380
	ldrb r0, [r1, #0x7c9]
	cmp r0, #0
	beq _022F6364
	mov r0, #0
	bl ov29_022E38E0
_022F6364:
	ldr r0, _022F66FC @ =0x02353538
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x7c8]
	ldr r0, [r0]
	strb r2, [r0, #0x7c9]
	b _022F66F4
_022F6380:
	mov r6, #0
	mov r8, r6
_022F6388:
	ldr r0, [r7]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb38]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022F63D8
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _022F63D8
	mov r0, sb
	bl ov29_023009CC
	cmp r0, #0
	beq _022F63D8
	ldrb r1, [r4, #0x25]
	ldrb r0, [sb, #0x25]
	cmp r1, r0
	moveq r6, #1
_022F63D8:
	add r8, r8, #1
	cmp r8, #0x10
	blt _022F6388
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #0x18
	mov r2, #0
	bl ov29_0234BAC0
	cmp fp, #0
	cmpeq r5, #1
	bne _022F6448
	cmp r6, #0
	beq _022F66F4
	mov r0, r4
	bl ov29_022F6210
	movs r5, r0
	beq _022F6434
	add r0, r5, #4
	add r1, r4, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r5
	bl ov29_02304A48
_022F6434:
	ldr r1, _022F6700 @ =0x00000E53
	add r0, sp, #0x18
	mov r2, #1
	bl DisplayMessage2
	b _022F66F4
_022F6448:
	cmp r5, #1
	beq _022F66F4
	cmp fp, #1
	cmpeq r5, #0
	beq _022F6464
	cmp sl, #0
	beq _022F66F4
_022F6464:
	mov r7, #0
	str r7, [sp]
	bl ov29_022F670C
	cmp r0, #0
	beq _022F6620
	mov r0, #1
	str r0, [sp]
	mov r8, r7
	ldr sb, _022F66FC @ =0x02353538
	b _022F6618
_022F648C:
	ldr r0, [sb]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb38]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022F6614
	ldr r0, [sl, #0xb4]
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _022F6614
	mov r0, sl
	bl ov29_023009CC
	cmp r0, #0
	beq _022F6614
	ldrb r1, [r4, #0x25]
	ldrb r0, [sl, #0x25]
	cmp r1, r0
	bne _022F6614
	ldrsh r1, [r4, #4]
	ldrsh r0, [sl, #4]
	mov r7, #1
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _022F6510
	ldrsh r1, [r4, #6]
	ldrsh r0, [sl, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	ble _022F65CC
_022F6510:
	ldr r0, _022F6704 @ =0x02352760
	mvn r8, #0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	str r8, [sp, #4]
	strh r1, [sp, #0x10]
	strh r0, [sp, #0x12]
	ldrh r0, [sp, #0x10]
	str r0, [sp, #8]
	ldrh r0, [sp, #0x12]
	str r0, [sp, #0xc]
	b _022F65C4
_022F6540:
	ldr sb, [sp, #4]
	b _022F65B8
_022F6548:
	ldr r0, [sp, #8]
	strh r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	strh r0, [sp, #0x16]
	ldrsh r0, [r4, #4]
	add r0, r8, r0
	strh r0, [sp, #0x14]
	ldrsh r1, [r4, #6]
	ldrsh r0, [sp, #0x14]
	add r1, sb, r1
	strh r1, [sp, #0x16]
	ldrsh r1, [sp, #0x16]
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r0, #0xff
	beq _022F65B4
	mov r0, sl
	add r1, sp, #0x14
	bl ov29_022FF764
	cmp r0, #0
	bne _022F65B4
	add r3, sp, #0x14
	mov r0, r4
	mov r1, sl
	mov r2, #3
	bl TryWarp
	b _022F65CC
_022F65B4:
	add sb, sb, #1
_022F65B8:
	cmp sb, #1
	ble _022F6548
	add r8, r8, #1
_022F65C4:
	cmp r8, #1
	ble _022F6540
_022F65CC:
	mov r0, r4
	bl ov29_023009CC
	cmp r0, #0
	moveq r7, #0
	beq _022F65F8
	add r0, r4, #4
	add r1, sl, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r4
	bl ov29_02304A00
_022F65F8:
	add r0, sl, #4
	add r1, r4, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, sl
	bl ov29_02304A48
	b _022F6620
_022F6614:
	add r8, r8, #1
_022F6618:
	cmp r8, #0x10
	blt _022F648C
_022F6620:
	ldr r0, [sp]
	cmp r0, #0
	beq _022F6654
	cmp r7, #0
	bne _022F6654
	ldr r0, _022F66FC @ =0x02353538
	ldr r0, [r0]
	ldr r1, [r0, #0x7c4]
	ldr r0, [r0, #0x7bc]
	cmp r1, r0
	ble _022F66F4
	bl ov29_022F6CAC
	b _022F66F4
_022F6654:
	ldr r0, [sp]
	cmp r0, #0
	beq _022F6688
	cmp r6, #0
	bne _022F6688
	ldr r0, _022F66FC @ =0x02353538
	ldr r0, [r0]
	ldr r1, [r0, #0x7c4]
	ldr r0, [r0, #0x7bc]
	cmp r1, r0
	ble _022F66F4
	bl ov29_022F6CAC
	b _022F66F4
_022F6688:
	mov r0, r7
	bl ov29_022F67D0
	mov r0, r7
	bl ov29_022F6A0C
	cmp r0, #0
	beq _022F66A8
	bl ov29_022F6CAC
	b _022F66F4
_022F66A8:
	cmp fp, #1
	cmpeq r5, #0
	bne _022F66F4
	cmp r6, #0
	beq _022F66F4
	mov r0, r4
	bl ov29_022F6210
	movs r5, r0
	beq _022F66E4
	add r0, r5, #4
	add r1, r4, #4
	bl GetDirectionTowardsPosition
	mov r1, r0
	mov r0, r5
	bl ov29_02304A48
_022F66E4:
	ldr r1, _022F6708 @ =0x00000E52
	add r0, sp, #0x18
	mov r2, #1
	bl DisplayMessage2
_022F66F4:
	add sp, sp, #0x28
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F66FC: .4byte 0x02353538
_022F6700: .4byte 0x00000E53
_022F6704: .4byte 0x02352760
_022F6708: .4byte 0x00000E52
	arm_func_end ov29_022F62CC

	arm_func_start ov29_022F670C
ov29_022F670C: @ 0x022F670C
	ldr r0, _022F6744 @ =0x02353538
	ldr r2, [r0]
	ldr r1, [r2, #0x7c4]
	ldr r0, [r2, #0x7bc]
	sub r0, r1, r0
	cmp r0, #0
	movgt r0, #1
	bxgt lr
	ldr r0, [r2, #0x7c0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	.align 2, 0
_022F6744: .4byte 0x02353538
	arm_func_end ov29_022F670C

	arm_func_start ov29_022F6748
ov29_022F6748: @ 0x022F6748
	push {r4, lr}
	sub sp, sp, #0x10
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #0
	mov r2, #0
	bl ov29_0234BAC0
	mov r0, #1
	bl ov29_022F67D0
	mov r0, #1
	bl ov29_022F6A0C
	movs r4, r0
	beq _022F67B4
	bl GetLeader
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x20
	beq _022F67AC
	cmp r4, #2
	beq _022F67C4
	ldr r1, _022F67CC @ =0x00000E51
	add r0, sp, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F67C4
_022F67AC:
	bl ov29_022F6CAC
	b _022F67C4
_022F67B4:
	add r0, sp, #0
	mov r1, #0xe50
	mov r2, #1
	bl DisplayMessage2
_022F67C4:
	add sp, sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022F67CC: .4byte 0x00000E51
	arm_func_end ov29_022F6748

	arm_func_start ov29_022F67D0
ov29_022F67D0: @ 0x022F67D0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r1, _022F69EC @ =0x02353538
	mov r4, r0
	ldr r0, [r1]
	mov r5, #0
	ldr r0, [r0, #0x7c0]
	cmp r0, #0
	beq _022F69E4
	mov r0, #0x3e
	bl TeamLeaderIqSkillIsEnabled
	cmp r0, #0
	movne r5, #1
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #0x14
	mov r2, #0
	bl ov29_0234BAC0
	ldr r0, _022F69EC @ =0x02353538
	cmp r4, #0
	ldr r0, [r0]
	ldr r4, [r0, #0x7c0]
	beq _022F69E4
	ldr r0, _022F69F0 @ =0x023535A8
	cmp r5, #0
	str r4, [r0]
	beq _022F6870
	ldr r0, _022F69F4 @ =0x022C4800
	lsl r1, r4, #8
	ldr r3, [r0]
	mov r2, #0x64
	smull r0, r1, r3, r1
	mov r3, #0
	bl FUN_0208FC8C
	bl FUN_020018A4
	mov r4, r0
	ldr r1, _022F69F8 @ =0x00000E4F
	add r0, sp, #0x14
	mov r2, #1
	bl DisplayMessage2
_022F6870:
	mov r1, r4
	mov r0, #0
	bl ov29_0234B09C
	mov r2, #0
	ldr r1, _022F69FC @ =0x00000E4D
	add r0, sp, #0x14
	mov r3, r2
	str r2, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F69E4
	ldr r0, _022F6A00 @ =0x00001308
	bl ov29_022EACCC
	mov r0, r4
	bl FUN_0200ED58
	ldr r1, _022F6A04 @ =0x02352760
	ldr r0, _022F69EC @ =0x02353538
	ldrh r3, [r1, #4]
	ldr r0, [r0]
	ldrh r2, [r1, #6]
	add r1, r0, #0xc000
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	ldr sl, [r0, #0x7bc]
	ldr sb, [r1, #0xd14]
	b _022F69A8
_022F68D8:
	add r0, r0, #0xc000
	ldr r8, [r0, #0xd18]
	lsl r0, sb, #0x10
	asr r7, r0, #0x10
	add r6, sp, #0xc
	add r5, sp, #8
	mov fp, #1
	ldr r4, _022F69EC @ =0x02353538
	b _022F6990
_022F68FC:
	mov r0, sb
	mov r1, r8
	strh r7, [sp, #8]
	strh r8, [sp, #0xa]
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x20
	ldrne r0, [r0, #0x10]
	cmpne r0, #0
	beq _022F698C
	ldr r1, [r0]
	cmp r1, #3
	bne _022F698C
	bl ov29_022E1610
	ldrb r1, [r0]
	tst r1, #2
	bne _022F698C
	ldrh r2, [r0]
	mov r1, fp
	strh r2, [sp, #0xc]
	ldrh r2, [r0, #2]
	strh r2, [sp, #0xe]
	ldrh r2, [r0, #4]
	mov r0, r5
	strh r2, [sp, #0x10]
	bl ov29_023456BC
	ldrsh r0, [sp, #0x10]
	bl FUN_0200CCE0
	cmp r0, #0
	ldrbne r0, [sp, #0xc]
	mov r1, r6
	mov r2, #1
	orrne r0, r0, #2
	strbne r0, [sp, #0xc]
	mov r0, r5
	bl ov29_02345538
_022F698C:
	add r8, r8, #1
_022F6990:
	ldr r0, [r4]
	add r1, r0, #0xc000
	ldr r1, [r1, #0xd20]
	cmp r8, r1
	ble _022F68FC
	add sb, sb, #1
_022F69A8:
	add r1, r0, #0xc000
	ldr r1, [r1, #0xd1c]
	cmp sb, r1
	ble _022F68D8
	ldr r1, _022F69EC @ =0x02353538
	add r0, sp, #0x14
	ldr r4, [r1]
	ldr r1, _022F6A08 @ =0x00000E4A
	ldr r2, [r4, #0x7bc]
	ldr r3, [r4, #0x7c4]
	sub r2, r2, sl
	add r3, r3, r2
	mov r2, #1
	str r3, [r4, #0x7c4]
	bl DisplayMessage2
_022F69E4:
	add sp, sp, #0x24
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F69EC: .4byte 0x02353538
_022F69F0: .4byte 0x023535A8
_022F69F4: .4byte 0x022C4800
_022F69F8: .4byte 0x00000E4F
_022F69FC: .4byte 0x00000E4D
_022F6A00: .4byte 0x00001308
_022F6A04: .4byte 0x02352760
_022F6A08: .4byte 0x00000E4A
	arm_func_end ov29_022F67D0

	arm_func_start ov29_022F6A0C
ov29_022F6A0C: @ 0x022F6A0C
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r0, #0x3e
	mov r4, #0
	bl TeamLeaderIqSkillIsEnabled
	cmp r0, #0
	movne r4, #1
	bl GetKecleonIdToSpawnByFloor
	mov r1, r0
	add r0, sp, #4
	mov r2, #0
	bl ov29_0234BAC0
	ldr r0, _022F6C8C @ =0x02353538
	cmp r4, #0
	ldr r0, [r0]
	ldr r1, [r0, #0x7c4]
	ldr r0, [r0, #0x7bc]
	sub r6, r1, r0
	beq _022F6A80
	ldr r0, _022F6C90 @ =0x022C473C
	lsl r3, r6, #8
	ldr r0, [r0]
	mov r2, #0x64
	smull r0, r1, r3, r0
	mov r3, #0
	bl FUN_0208FC8C
	bl FUN_020018A4
	mov r6, r0
_022F6A80:
	cmp r6, #0
	movle r0, #0
	ble _022F6C84
	cmp r5, #0
	beq _022F6AE0
	cmp r4, #0
	beq _022F6AAC
	ldr r1, _022F6C94 @ =0x00000E4E
	add r0, sp, #4
	mov r2, #1
	bl DisplayMessage2
_022F6AAC:
	mov r1, r6
	mov r0, #0
	bl ov29_0234B09C
	mov r2, #0
	ldr r1, _022F6C98 @ =0x00000E4C
	add r0, sp, #4
	mov r3, #1
	str r2, [sp]
	bl ov29_0234D518
	cmp r0, #1
	beq _022F6AE8
	mov r0, #1
	b _022F6C84
_022F6AE0:
	mov r0, #1
	b _022F6C84
_022F6AE8:
	bl FUN_0200ECFC
	cmp r0, r6
	bge _022F6B0C
	ldr r1, _022F6C9C @ =0x00000E4B
	add r0, sp, #4
	mov r2, #1
	bl DisplayMessage2
	mov r0, #2
	b _022F6C84
_022F6B0C:
	ldr r0, _022F6CA0 @ =0x00001308
	bl ov29_022EACCC
	rsb r0, r6, #0
	bl FUN_0200ED58
	mov r6, #0
	mov r4, r6
_022F6B24:
	mov r5, r4
_022F6B28:
	mov r0, r6
	mov r1, r5
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x20
	bne _022F6B78
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022F6B78
	ldr r1, [r0]
	cmp r1, #3
	bne _022F6B78
	bl ov29_022E1610
	mov r7, r0
	ldrsh r0, [r7, #4]
	bl FUN_0200CCE0
	cmp r0, #0
	ldrbne r0, [r7]
	bicne r0, r0, #2
	strbne r0, [r7]
_022F6B78:
	add r5, r5, #1
	cmp r5, #0x20
	blt _022F6B28
	add r6, r6, #1
	cmp r6, #0x38
	blt _022F6B24
	mov r6, #0
	ldr sb, _022F6CA4 @ =0x020AF6B8
	mov r4, r6
	mov r5, #1
	mov r8, #6
_022F6BA4:
	mul r1, r6, r8
	ldr r0, [sb]
	ldr r2, [r0, #0x384]
	ldrb r0, [r2, r1]
	add r7, r2, r1
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022F6BE4
	ldrsh r0, [r7, #4]
	bl FUN_0200CCE0
	cmp r0, #0
	ldrbne r0, [r7]
	bicne r0, r0, #2
	strbne r0, [r7]
_022F6BE4:
	add r6, r6, #1
	cmp r6, #0x32
	blt _022F6BA4
	mov r7, #0
	ldr r8, _022F6C8C @ =0x02353538
	mov r4, r7
	mov r5, #1
_022F6C00:
	ldr r0, [r8]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022F6C54
	ldr r6, [r6, #0xb4]
	ldrb r0, [r6, #0x62]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022F6C54
	ldrsh r0, [r6, #0x66]
	bl FUN_0200CCE0
	cmp r0, #0
	ldrbne r0, [r6, #0x62]
	bicne r0, r0, #2
	strbne r0, [r6, #0x62]
_022F6C54:
	add r7, r7, #1
	cmp r7, #0x14
	blt _022F6C00
	ldr r1, _022F6C8C @ =0x02353538
	add r0, sp, #4
	ldr r4, [r1]
	ldr r1, _022F6CA8 @ =0x00000E49
	ldr r3, [r4, #0x7bc]
	mov r2, #1
	str r3, [r4, #0x7c4]
	bl DisplayMessage2
	mov r0, #0
_022F6C84:
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F6C8C: .4byte 0x02353538
_022F6C90: .4byte 0x022C473C
_022F6C94: .4byte 0x00000E4E
_022F6C98: .4byte 0x00000E4C
_022F6C9C: .4byte 0x00000E4B
_022F6CA0: .4byte 0x00001308
_022F6CA4: .4byte 0x020AF6B8
_022F6CA8: .4byte 0x00000E49
	arm_func_end ov29_022F6A0C

	arm_func_start ov29_022F6CAC
ov29_022F6CAC: @ 0x022F6CAC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _022F6E0C @ =0x02353538
	mov r2, #1
	ldr r1, [r0]
	strb r2, [r1, #0x790]
	ldr r0, [r0]
	strb r2, [r0, #0x791]
	bl GetLeader
	ldr r1, _022F6E10 @ =0x00000E54
	bl LogMessageByIdWithPopupCheckUser
	mov r6, #0
	mov r4, r6
_022F6CDC:
	mov r5, r4
_022F6CE0:
	mov r0, r6
	mov r1, r5
	bl GetTile
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _022F6D14
	ldr r1, [r0]
	cmp r1, #3
	bne _022F6D14
	bl ov29_022E1610
	ldrb r1, [r0]
	bic r1, r1, #2
	strb r1, [r0]
_022F6D14:
	add r5, r5, #1
	cmp r5, #0x20
	blt _022F6CE0
	add r6, r6, #1
	cmp r6, #0x38
	blt _022F6CDC
	mov r7, #0
	ldr r1, _022F6E14 @ =0x020AF6B8
	mov r3, r7
	mov r4, #1
	mov r0, #6
_022F6D40:
	mul r5, r7, r0
	ldr r2, [r1]
	add r7, r7, #1
	ldr r6, [r2, #0x384]
	ldrb r2, [r6, r5]
	tst r2, #1
	movne r2, r4
	moveq r2, r3
	tst r2, #0xff
	ldrbne r2, [r6, r5]
	bicne r2, r2, #2
	strbne r2, [r6, r5]
	cmp r7, #0x32
	blt _022F6D40
	mov r8, #0
	ldr sb, _022F6E0C @ =0x02353538
	mov r6, r8
	mov r4, r8
	mov r5, #1
_022F6D8C:
	ldr r0, [sb]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022F6DDC
	ldr r7, [sl, #0xb4]
	mov r0, sl
	strb r6, [r7, #9]
	bl CalcSpeedStageWrapper
	ldrb r0, [r7, #0x62]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	ldrbne r0, [r7, #0x62]
	bicne r0, r0, #2
	strbne r0, [r7, #0x62]
_022F6DDC:
	add r8, r8, #1
	cmp r8, #0x14
	blt _022F6D8C
	ldr r0, _022F6E0C @ =0x02353538
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0x7c4]
	ldr r1, [r0]
	str r2, [r1, #0x7bc]
	ldr r0, [r0]
	str r2, [r0, #0x7c0]
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022F6E0C: .4byte 0x02353538
_022F6E10: .4byte 0x00000E54
_022F6E14: .4byte 0x020AF6B8
	arm_func_end ov29_022F6CAC

	arm_func_start ResetDamageDesc
ResetDamageDesc: @ 0x022F6E18
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	strb r1, [r0, #0x10]
	bx lr
	arm_func_end ResetDamageDesc

	arm_func_start ov29_022F6E40
ov29_022F6E40: @ 0x022F6E40
	push {r4, lr}
	ldr r0, _022F6ED8 @ =0x0001A002
	mov r1, #0
	bl FUN_02001170
	ldr r2, _022F6EDC @ =0x0237C9AC
	ldr r1, _022F6ED8 @ =0x0001A002
	str r0, [r2]
	bl FUN_02003250
	ldr r0, _022F6EDC @ =0x0237C9AC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strh r1, [r0]
	bl ov29_0231B490
	mov r2, #0
	ldr r0, _022F6EE0 @ =0x0237C9B0
	mov r1, r2
_022F6E84:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #2
	blt _022F6E84
	ldr r0, _022F6EE4 @ =0x00000216
	bl FUN_0205281C
	mov r4, r0
	ldr r0, _022F6EE8 @ =0x00000217
	bl FUN_0205281C
	cmp r4, r0
	bne _022F6EC0
	mov r0, #0x218
	bl FUN_0205281C
	ldr r0, _022F6EEC @ =0x00000211
	bl FUN_0205281C
_022F6EC0:
	ldr r0, _022F6EF0 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x3000
	str r1, [r0, #0xe1c]
	pop {r4, pc}
	.align 2, 0
_022F6ED8: .4byte 0x0001A002
_022F6EDC: .4byte 0x0237C9AC
_022F6EE0: .4byte 0x0237C9B0
_022F6EE4: .4byte 0x00000216
_022F6EE8: .4byte 0x00000217
_022F6EEC: .4byte 0x00000211
_022F6EF0: .4byte 0x02353538
	arm_func_end ov29_022F6E40

	arm_func_start ov29_022F6EF4
ov29_022F6EF4: @ 0x022F6EF4
	ldr r1, _022F6F08 @ =0x0000FFFF
	ldr r0, _022F6F0C @ =0x023535AC
	strh r1, [r0, #2]
	strh r1, [r0]
	bx lr
	.align 2, 0
_022F6F08: .4byte 0x0000FFFF
_022F6F0C: .4byte 0x023535AC
	arm_func_end ov29_022F6EF4

	arm_func_start ov29_022F6F10
ov29_022F6F10: @ 0x022F6F10
	push {r4, r5, r6, lr}
	bl ov29_022F7008
	ldr r0, _022F6F60 @ =0x0237C9AC
	ldr r0, [r0]
	bl FUN_02001188
	mov r6, #0
	ldr r5, _022F6F64 @ =0x0237C9B0
	mov r4, r6
_022F6F30:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq _022F6F44
	bl FUN_02001188
	str r4, [r5, r6, lsl #2]
_022F6F44:
	add r6, r6, #1
	cmp r6, #2
	blt _022F6F30
	ldr r0, _022F6F60 @ =0x0237C9AC
	mov r1, #0
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022F6F60: .4byte 0x0237C9AC
_022F6F64: .4byte 0x0237C9B0
	arm_func_end ov29_022F6F10

	arm_func_start ov29_022F6F68
ov29_022F6F68: @ 0x022F6F68
	push {r3, r4, r5, lr}
	ldr r2, _022F6FFC @ =0x023535AC
	mov r5, r0
	ldrh r0, [r2, #2]
	mov r4, r1
	cmp r0, r5
	ldrheq r0, [r2]
	cmpeq r0, r4
	beq _022F6FE8
	ldr r0, _022F7000 @ =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r0, [r0]
	cmp r0, #0
	beq _022F6FA8
	bl ov29_022F7008
_022F6FA8:
	mov r1, #1
	ldr r0, _022F7004 @ =0x020AFC68
	str r1, [sp]
	ldr r1, _022F7000 @ =0x0237C9AC
	ldr r0, [r0]
	ldr r3, [r1]
	mov r1, r5
	mov r2, r4
	bl FUN_0201D590
	ldr r1, _022F7000 @ =0x0237C9AC
	ldr r2, _022F6FFC @ =0x023535AC
	ldr r1, [r1]
	add r1, r1, #0x1a000
	strh r0, [r1]
	strh r5, [r2, #2]
	strh r4, [r2]
_022F6FE8:
	ldr r0, _022F7000 @ =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r0, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F6FFC: .4byte 0x023535AC
_022F7000: .4byte 0x0237C9AC
_022F7004: .4byte 0x020AFC68
	arm_func_end ov29_022F6F68

	arm_func_start ov29_022F7008
ov29_022F7008: @ 0x022F7008
	push {r3, lr}
	ldr r0, _022F7048 @ =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r1, [r0]
	cmp r1, #0
	popeq {r3, pc}
	ldr r0, _022F704C @ =0x020AFC68
	ldr r0, [r0]
	bl FUN_0201D72C
	ldr r0, _022F7048 @ =0x0237C9AC
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strh r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022F7048: .4byte 0x0237C9AC
_022F704C: .4byte 0x020AFC68
	arm_func_end ov29_022F7008

	arm_func_start ov29_022F7050
ov29_022F7050: @ 0x022F7050
	ldr r0, _022F7064 @ =0x0237C9AC
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldrsh r0, [r0]
	bx lr
	.align 2, 0
_022F7064: .4byte 0x0237C9AC
	arm_func_end ov29_022F7050

	arm_func_start ov29_022F7068
ov29_022F7068: @ 0x022F7068
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl FUN_02054AD4
	cmp r0, #0
	beq _022F70B4
	ldr r0, _022F70F4 @ =0x0000017B
	bl FUN_0205281C
	add r4, r4, r0
	mov r0, #0x17c
	bl FUN_0205281C
	add r4, r4, r0
	ldr r0, _022F70F8 @ =0x0000017D
	bl FUN_0205281C
	add r4, r4, r0
	ldr r0, _022F70FC @ =0x0000017E
	bl FUN_0205281C
	add r4, r4, r0
	b _022F70EC
_022F70B4:
	mov r0, r5
	bl FUN_02054B2C
	cmp r0, #0
	beq _022F70E0
	mov r0, #0x1cc
	bl FUN_0205281C
	add r4, r4, r0
	ldr r0, _022F7100 @ =0x000001CD
	bl FUN_0205281C
	add r4, r4, r0
	b _022F70EC
_022F70E0:
	mov r0, r5
	bl FUN_0205281C
	add r4, r4, r0
_022F70EC:
	mov r0, r4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F70F4: .4byte 0x0000017B
_022F70F8: .4byte 0x0000017D
_022F70FC: .4byte 0x0000017E
_022F7100: .4byte 0x000001CD
	arm_func_end ov29_022F7068

	arm_func_start ov29_022F7104
ov29_022F7104: @ 0x022F7104
	ldr r1, _022F712C @ =0x02353538
	mov r3, #0x400
	ldr r0, [r1]
	mov r2, #0xa
	add r0, r0, #0x3000
	str r3, [r0, #0xe2c]
	ldr r0, [r1]
	add r0, r0, #0x3000
	str r2, [r0, #0xe30]
	bx lr
	.align 2, 0
_022F712C: .4byte 0x02353538
	arm_func_end ov29_022F7104

	arm_func_start ov29_022F7130
ov29_022F7130: @ 0x022F7130
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _022F72F8 @ =0x02353538
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	add r0, r0, #0x114
	add r4, r0, #0x19800
	ldr r0, _022F72FC @ =0x00000483
_022F7150:
	lsl r1, r2, #1
	add r2, r2, #1
	strh r3, [r4, r1]
	cmp r2, r0
	blt _022F7150
	ldr r1, _022F72F8 @ =0x02353538
	ldr r0, _022F7300 @ =0x00000229
	ldr r2, [r1]
	mov r1, #1
	add r2, r2, #0x2c000
	str r3, [r2, #0xb0c]
	bl LoadMonsterSprite
	mov r6, #0
	mov r5, #1
	ldr r4, _022F72F8 @ =0x02353538
	b _022F71AC
_022F7190:
	add r0, r1, #0x174
	add r0, r0, #0x3800
	add r0, r0, r6, lsl #3
	bl FUN_02054480
	mov r1, r5
	bl LoadMonsterSprite
	add r6, r6, #1
_022F71AC:
	ldr r1, [r4]
	add r0, r1, #0x3000
	ldr r0, [r0, #0xe20]
	cmp r6, r0
	blt _022F7190
	bl LoadMissionMonsterSprites
	ldr r0, _022F72F8 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsh r1, [r0, #0xa8]
	cmp r1, #0
	beq _022F71E8
	ldrsh r0, [r0, #0xa8]
	mov r1, #1
	bl LoadMonsterSprite
_022F71E8:
	mov sb, #0
	mov r8, #1
	ldr fp, _022F7304 @ =0x00000217
	mov r7, sb
	mov r5, sb
	mov r6, r8
	mov r4, sb
_022F7204:
	mov r0, sb
	bl FUN_0205638C
	mov sl, r0
	ldrb r0, [sl]
	tst r0, #1
	movne r1, r8
	moveq r1, r7
	tst r1, #0xff
	beq _022F7278
	tst r0, #2
	movne r0, r6
	moveq r0, r5
	tst r0, #0xff
	beq _022F7278
	ldrsh r0, [sl, #0xc]
	bl FUN_02054AA4
	cmp r0, #0
	beq _022F726C
	mov r0, r4
	bl ov29_0231B4AC
	cmp r0, #0
	beq _022F726C
	mov r0, fp
	mov r1, #0
	bl LoadMonsterSprite
	b _022F7278
_022F726C:
	ldrsh r0, [sl, #0xc]
	mov r1, #0
	bl LoadMonsterSprite
_022F7278:
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
	cmp sb, #4
	blt _022F7204
	ldr r0, _022F72F8 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrb r0, [r0, #0xda]
	cmp r0, #0x6e
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, #0
	mov r6, #1
	mov r5, r7
	mov r4, r6
_022F72B4:
	mov r0, r7
	bl FUN_020590F8
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r6
	moveq r1, r5
	tst r1, #0xff
	beq _022F72E0
	ldrsh r0, [r0, #4]
	mov r1, r4
	bl LoadMonsterSprite
_022F72E0:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	blt _022F72B4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F72F8: .4byte 0x02353538
_022F72FC: .4byte 0x00000483
_022F7300: .4byte 0x00000229
_022F7304: .4byte 0x00000217
	arm_func_end ov29_022F7130

	arm_func_start ov29_022F7308
ov29_022F7308: @ 0x022F7308
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r4, _022F7360 @ =0x02353538
	mov r5, r6
_022F7318:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	cmp r7, #0
	beq _022F7350
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022F7350
	ldr r0, [r7, #0xb4]
	mov r1, r5
	ldrsh r0, [r0, #4]
	bl LoadMonsterSprite
_022F7350:
	add r6, r6, #1
	cmp r6, #0x14
	blt _022F7318
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F7360: .4byte 0x02353538
	arm_func_end ov29_022F7308

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022F7364
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start GetSpriteIndex
GetSpriteIndex: @ 0x022F7388
	ldr r2, _022F73A0 @ =0x02353538
	ldr r1, _022F73A4 @ =0x00019914
	ldr r2, [r2]
	add r0, r2, r0, lsl #1
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_022F73A0: .4byte 0x02353538
_022F73A4: .4byte 0x00019914
	arm_func_end GetSpriteIndex

	arm_func_start JoinedAtRangeCheck2Veneer
JoinedAtRangeCheck2Veneer: @ 0x022F73A8
	ldr ip, _022F73B0 @ =FUN_02051760
	bx ip
	.align 2, 0
_022F73B0: .4byte FUN_02051760
	arm_func_end JoinedAtRangeCheck2Veneer

	arm_func_start FloorNumberIsEven
FloorNumberIsEven: @ 0x022F73B4
	ldr r0, _022F73E8 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x748]
	cmp r0, #0x5b
	ldrbeq r0, [r1, #0x749]
	cmpeq r0, #0xa
	moveq r0, #0
	bxeq lr
	ldrb r0, [r1, #0x749]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022F73E8: .4byte 0x02353538
	arm_func_end FloorNumberIsEven

	arm_func_start GetKecleonIdToSpawnByFloor
GetKecleonIdToSpawnByFloor: @ 0x022F73EC
	push {r3, lr}
	bl FloorNumberIsEven
	cmp r0, #0
	ldrne r0, _022F7404 @ =0x000003D7
	ldreq r0, _022F7408 @ =0x0000017F
	pop {r3, pc}
	.align 2, 0
_022F7404: .4byte 0x000003D7
_022F7408: .4byte 0x0000017F
	arm_func_end GetKecleonIdToSpawnByFloor

	arm_func_start ov29_022F740C
ov29_022F740C: @ 0x022F740C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _022F74D0 @ =0x02353538
	mov r7, r0
	ldr r2, [r2]
	mov r6, r1
	add r1, r2, #0x114
	add r5, r1, #0x19800
	bl FUN_020526EC
	mov r4, r0
	lsl r1, r7, #1
	mov r0, r7
	strh r6, [r5, r1]
	bl FUN_020527A8
	cmp r0, #3
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r7, #0x258
	bge _022F7490
	add r6, r7, #0x258
	lsl r1, r6, #0x10
	mov r0, r7
	asr r1, r1, #0x10
	bl FUN_02054E78
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	bl FUN_020526EC
	cmp r4, r0
	lsleq r0, r7, #1
	ldrsheq r1, [r5, r0]
	lsleq r0, r6, #1
	strheq r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022F7490:
	sub r6, r7, #0x258
	lsl r1, r6, #0x10
	mov r0, r7
	asr r1, r1, #0x10
	bl FUN_02054E78
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	bl FUN_020526EC
	cmp r4, r0
	lsleq r0, r7, #1
	ldrsheq r1, [r5, r0]
	lsleq r0, r6, #1
	strheq r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F74D0: .4byte 0x02353538
	arm_func_end ov29_022F740C

	arm_func_start ov29_022F74D4
ov29_022F74D4: @ 0x022F74D4
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _022F75C4 @ =0x02353538
	mov r6, r0
	ldr r2, [r1]
	ldr r1, _022F75C8 @ =0x00019914
	add r2, r2, r6, lsl #1
	ldrsh r1, [r2, r1]
	cmp r1, #0
	bne _022F75BC
	bl FUN_020526EC
	mov r4, r0
	mov r0, r6
	bl FUN_02054AA4
	cmp r0, #0
	beq _022F756C
	mov r0, r6
	bl FUN_02054AA4
	cmp r0, #0
	mov r0, r6
	movne r5, #0
	bl FUN_0205281C
	mov r1, #0
	bl FUN_02001170
	ldr r2, _022F75CC @ =0x0237C9B0
	mov r1, #1
	str r0, [r2, r5, lsl #2]
	str r1, [sp]
	ldr r0, _022F75D0 @ =0x020AFC68
	ldr r3, [r2, r5, lsl #2]
	ldr r0, [r0]
	mov r2, r4
	mov r1, #0
	bl FUN_0201D590
	mov r1, r0
	mov r0, r6
	bl ov29_022F740C
	b _022F7598
_022F756C:
	mov r1, #1
	ldr r0, _022F75D0 @ =0x020AFC68
	str r1, [sp]
	mov r1, #0
	ldr r0, [r0]
	mov r2, r4
	mov r3, r1
	bl FUN_0201D484
	mov r1, r0
	mov r0, r6
	bl ov29_022F740C
_022F7598:
	mov r1, r4
	mov r0, #0
	bl FUN_0200C33C
	ldr r1, _022F75C4 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x2c000
	ldr r2, [r1, #0xb0c]
	add r0, r2, r0
	str r0, [r1, #0xb0c]
_022F75BC:
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022F75C4: .4byte 0x02353538
_022F75C8: .4byte 0x00019914
_022F75CC: .4byte 0x0237C9B0
_022F75D0: .4byte 0x020AFC68
	arm_func_end ov29_022F74D4

	arm_func_start ov29_022F75D4
ov29_022F75D4: @ 0x022F75D4
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r2, _022F764C @ =0x02353538
	mov r5, r1
	ldr r1, [r2]
	mov r6, r0
	add r1, r1, #0x114
	mov r0, r5
	add r4, r1, #0x19800
	bl FUN_020526EC
	mov r1, #1
	str r1, [sp]
	lsl r1, r6, #1
	ldr r2, _022F7650 @ =0x020AFC68
	mov r3, r0
	ldrsh r1, [r4, r1]
	ldr r0, [r2]
	mov r2, #0
	bl FUN_0201D684
	mov r1, r0
	mov r0, r5
	bl ov29_022F740C
	lsl r3, r6, #1
	ldrsh r2, [r4, r3]
	lsl r1, r5, #1
	mov r0, #0
	strh r2, [r4, r1]
	strh r0, [r4, r3]
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022F764C: .4byte 0x02353538
_022F7650: .4byte 0x020AFC68
	arm_func_end ov29_022F75D4

	arm_func_start LoadMonsterSprite
LoadMonsterSprite: @ 0x022F7654
	push {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _022F769C
	ldr r0, _022F7748 @ =0xFFFFFE5E
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #3
	bhi _022F769C
	ldr r0, _022F774C @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x3e00
	ldrsh r0, [r0, #0x3a]
	bl ov29_022F74D4
	pop {r4, pc}
_022F769C:
	mov r0, r4
	bl ov29_022F74D4
	ldr r1, _022F7750 @ =0x0000017B
	cmp r4, r1
	cmpne r4, #0x17c
	addne r0, r1, #2
	cmpne r4, r0
	addne r0, r1, #3
	cmpne r4, r0
	beq _022F76E4
	ldr r0, _022F7754 @ =0xFFFFFC2D
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #3
	bhi _022F7704
_022F76E4:
	ldr r0, _022F7750 @ =0x0000017B
	bl ov29_022F74D4
	mov r0, #0x17c
	bl ov29_022F74D4
	ldr r0, _022F7758 @ =0x0000017D
	bl ov29_022F74D4
	ldr r0, _022F775C @ =0x0000017E
	bl ov29_022F74D4
_022F7704:
	cmp r4, #0x1cc
	ldrne r0, _022F7760 @ =0x000001CD
	cmpne r4, r0
	beq _022F7734
	ldr r0, _022F7764 @ =0xFFFFFBDC
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	pophi {r4, pc}
_022F7734:
	mov r0, #0x1cc
	bl ov29_022F74D4
	ldr r0, _022F7760 @ =0x000001CD
	bl ov29_022F74D4
	pop {r4, pc}
	.align 2, 0
_022F7748: .4byte 0xFFFFFE5E
_022F774C: .4byte 0x02353538
_022F7750: .4byte 0x0000017B
_022F7754: .4byte 0xFFFFFC2D
_022F7758: .4byte 0x0000017D
_022F775C: .4byte 0x0000017E
_022F7760: .4byte 0x000001CD
_022F7764: .4byte 0xFFFFFBDC
	arm_func_end LoadMonsterSprite

	arm_func_start ov29_022F7768
ov29_022F7768: @ 0x022F7768
	push {r3, r4, r5, lr}
	ldr r1, _022F77F4 @ =0x02353538
	mov r5, r0
	ldr r1, [r1]
	ldr r0, _022F77F8 @ =0x00019914
	add r1, r1, r5, lsl #1
	ldrsh r1, [r1, r0]
	cmp r1, #0
	popeq {r3, r4, r5, pc}
	ldr r0, _022F77FC @ =0x020AFC68
	ldr r0, [r0]
	bl FUN_0201D72C
	ldr r0, _022F77F4 @ =0x02353538
	ldr r1, _022F77F8 @ =0x00019914
	ldr r2, [r0]
	mov r3, #0
	add r2, r2, r5, lsl #1
	mov r0, r5
	strh r3, [r2, r1]
	bl FUN_02054AA4
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_02054AA4
	cmp r0, #0
	ldr r0, _022F7800 @ =0x0237C9B0
	movne r4, #0
	ldr r0, [r0, r4, lsl #2]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	bl FUN_02001188
	ldr r0, _022F7800 @ =0x0237C9B0
	mov r1, #0
	str r1, [r0, r4, lsl #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F77F4: .4byte 0x02353538
_022F77F8: .4byte 0x00019914
_022F77FC: .4byte 0x020AFC68
_022F7800: .4byte 0x0237C9B0
	arm_func_end ov29_022F7768

	arm_func_start ov29_022F7804
ov29_022F7804: @ 0x022F7804
	push {r3, r4, r5, lr}
	ldr r4, _022F7830 @ =0x00000483
	mov r5, #0
_022F7810:
	mov r0, r5
	bl ov29_022F7768
	add r0, r5, #1
	lsl r0, r0, #0x10
	cmp r4, r0, asr #16
	asr r5, r0, #0x10
	bgt _022F7810
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F7830: .4byte 0x00000483
	arm_func_end ov29_022F7804

	arm_func_start ov29_022F7834
ov29_022F7834: @ 0x022F7834
	push {r4, r5, r6, r7, r8, lr}
	mov r4, #0
	mov r5, r0
	mov r8, r4
	mov r6, r4
	mov r7, #1
_022F784C:
	mov r0, r8
	bl FUN_0205638C
	ldrb r0, [r0]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	addne r4, r4, #1
	cmp r8, #4
	blt _022F784C
	cmp r4, #4
	moveq r0, #1
	movne r0, #0
	tst r0, #0xff
	movne r0, #1
	popne {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r8, r7
	mov r4, r7
	mov r6, #1
_022F78A8:
	mov r0, r8
	bl FUN_0205638C
	ldrb r1, [r0]
	tst r1, #1
	movne r1, r6
	moveq r1, r4
	tst r1, #0xff
	beq _022F78D4
	ldrsh r0, [r0, #0xc]
	bl FUN_020527C4
	add r7, r7, r0
_022F78D4:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022F78A8
	ldrsh r0, [r5, #4]
	bl FUN_020527C4
	add r0, r7, r0
	cmp r0, #6
	movgt r0, #1
	movle r0, #0
	tst r0, #0xff
	movne r0, #1
	moveq r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022F7834

	arm_func_start ov29_022F7910
ov29_022F7910: @ 0x022F7910
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov sl, r0
	ldrb r0, [sl]
	mov r5, #0
	tst r0, #1
	movne r0, #1
	moveq r0, r5
	tst r0, #0xff
	ldrshne r0, [sl, #4]
	cmpne r0, #0
	moveq r0, #0
	beq _022F7BCC
	ldrb r0, [sl, #2]
	cmp r0, #0xfa
	movne r0, #0
	bne _022F7BCC
	b _022F7AA4
_022F7958:
	mov r0, sl
	bl ov29_022F7834
	cmp r0, #0
	beq _022F7AA0
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7BD4 @ =0x00000C0D
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	mov sb, #0
	mov r7, sb
	bl StoryRestrictionsEnabled
	cmp r0, #0
	movne sb, #1
	mov r8, #0
	mov fp, #1
	add r4, sp, #0x44
_022F79A4:
	mov r0, r8
	bl FUN_0205638C
	mov r6, r0
	ldrb r0, [r6]
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022F7A14
	ldrb r0, [r6, #1]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _022F7A14
	cmp sb, #0
	beq _022F7A0C
	ldrb r0, [r6, #3]
	cmp r0, #0xd6
	moveq r1, #1
	movne r1, #0
	tst r1, #0xff
	bne _022F7A14
	bl FUN_02051760
	cmp r0, #0
	bne _022F7A14
_022F7A0C:
	str r6, [r4, r7, lsl #2]
	add r7, r7, #1
_022F7A14:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022F79A4
	cmp r7, #0
	beq _022F7AAC
	add r0, sp, #0x44
	mov r1, r7
	bl ov29_0234EF24
	movs r4, r0
	beq _022F7AA4
	add r0, sp, #4
	mov r1, r4
	bl FUN_020585B4
	add r1, sp, #4
	mov r0, #1
	bl ov29_0234B0B4
	mov r0, #0
	mov r3, #1
	ldr r1, _022F7BD8 @ =0x00000C0E
	mov r2, r0
	str r3, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F7AA4
	ldr r1, _022F7BDC @ =0x00000C0F
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	ldrsh r0, [r4, #8]
	bl FUN_020566C4
	mov r0, #0
	strb r0, [r4]
	b _022F7AA4
_022F7AA0:
	mov r5, #1
_022F7AA4:
	cmp r5, #0
	beq _022F7958
_022F7AAC:
	cmp r5, #0
	bne _022F7AD8
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7BE0 @ =0x00000C0C
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	mov r0, #0
	b _022F7BCC
_022F7AD8:
	mov r4, #0
	mov r6, r4
	mov r7, #1
	b _022F7BA4
_022F7AE8:
	mov r0, r4
	bl FUN_0205638C
	mov r5, r0
	ldrb r0, [r5]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	bne _022F7B98
	ldr r2, _022F7BE4 @ =0x000055AA
	mov r0, r5
	mov r1, sl
	mov r3, r4
	bl FUN_02053250
	ldr r0, _022F7BE8 @ =0x020B0A48
	lsl r1, r4, #1
	ldr r0, [r0]
	mvn r3, #0
	add r0, r0, #0x9000
	ldr r2, [r0, #0x870]
	ldr r0, _022F7BEC @ =0x020A1C7C
	strh r3, [r2, r1]
	ldrb r2, [r5]
	ldr r1, [r0, #0x20]
	orr r0, r2, #1
	strb r0, [r5]
	ldrsh r0, [r5, #6]
	cmp r0, r1
	bge _022F7B70
	strh r1, [r5, #6]
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #6]
	add r0, r5, #0x4c
	bl FUN_02058EB0
_022F7B70:
	ldrb r1, [r5]
	add r0, r5, #0x3e
	orr r1, r1, #2
	strb r1, [r5]
	strh r4, [r5, #0xa]
	bl FUN_0200D81C
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	b _022F7BAC
_022F7B98:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_022F7BA4:
	cmp r4, #4
	blt _022F7AE8
_022F7BAC:
	ldrsh r1, [sl, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7BF0 @ =0x00000C12
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	mov r0, #1
_022F7BCC:
	add sp, sp, #0x54
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F7BD4: .4byte 0x00000C0D
_022F7BD8: .4byte 0x00000C0E
_022F7BDC: .4byte 0x00000C0F
_022F7BE0: .4byte 0x00000C0C
_022F7BE4: .4byte 0x000055AA
_022F7BE8: .4byte 0x020B0A48
_022F7BEC: .4byte 0x020A1C7C
_022F7BF0: .4byte 0x00000C12
	arm_func_end ov29_022F7910

	arm_func_start ov29_022F7BF4
ov29_022F7BF4: @ 0x022F7BF4
	push {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldrb r0, [r6]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrshne r0, [r6, #4]
	cmpne r0, #0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, _022F7E18 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051398
	cmp r0, #0
	ldrne r0, _022F7E18 @ =0x02353538
	ldrne r0, [r0]
	ldrbne r0, [r0, #0x759]
	cmpne r0, #0
	bne _022F7C7C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7C5C
	cmp r0, #0xe4
	blo _022F7C7C
_022F7C5C:
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldr r1, _022F7E1C @ =0x00000C0B
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7C7C:
	mov r0, r6
	bl ov29_022F7834
	cmp r0, #0
	beq _022F7CD4
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7CC0
	cmp r0, #0xe4
	bhs _022F7CC0
	mov r0, #0
	mov r1, #0xc10
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7CC0:
	ldr r1, _022F7E20 @ =0x00000C0A
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7CD4:
	mov r4, #0
	mov r7, r4
	mov r8, #1
	b _022F7DC4
_022F7CE4:
	mov r0, r4
	bl FUN_0205638C
	mov r5, r0
	ldrb r0, [r5]
	tst r0, #1
	movne r0, r8
	moveq r0, r7
	tst r0, #0xff
	bne _022F7DB8
	ldr r2, _022F7E24 @ =0x000055AA
	mov r0, r5
	mov r1, r6
	mov r3, r4
	bl FUN_02053250
	ldr r0, _022F7E28 @ =0x020B0A48
	lsl r1, r4, #1
	ldr r0, [r0]
	mvn r3, #0
	add r0, r0, #0x9000
	ldr r2, [r0, #0x870]
	ldr r0, _022F7E2C @ =0x020A1C7C
	strh r3, [r2, r1]
	ldrb r2, [r5]
	ldr r1, [r0, #0x20]
	orr r0, r2, #1
	strb r0, [r5]
	ldrsh r0, [r5, #6]
	cmp r0, r1
	bge _022F7D6C
	strh r1, [r5, #6]
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #6]
	add r0, r5, #0x4c
	bl FUN_02058EB0
_022F7D6C:
	ldrb r1, [r5]
	add r0, r5, #0x3e
	orr r1, r1, #2
	strb r1, [r5]
	strh r4, [r5, #0xa]
	bl FUN_0200D81C
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7DA4
	cmp r0, #0xe4
	blo _022F7E10
_022F7DA4:
	ldr r1, _022F7E30 @ =0x00000C11
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7DB8:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_022F7DC4:
	cmp r4, #4
	blt _022F7CE4
	ldrsh r1, [r6, #4]
	mov r0, #0
	bl ov29_0234B06C
	ldrb r0, [r6, #2]
	cmp r0, #0xd9
	blo _022F7E00
	cmp r0, #0xe4
	bhs _022F7E00
	mov r0, #0
	mov r1, #0xc10
	mov r2, #1
	bl DisplayMessage2
	b _022F7E10
_022F7E00:
	ldr r1, _022F7E20 @ =0x00000C0A
	mov r0, #0
	mov r2, #1
	bl DisplayMessage2
_022F7E10:
	mov r0, #1
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F7E18: .4byte 0x02353538
_022F7E1C: .4byte 0x00000C0B
_022F7E20: .4byte 0x00000C0A
_022F7E24: .4byte 0x000055AA
_022F7E28: .4byte 0x020B0A48
_022F7E2C: .4byte 0x020A1C7C
_022F7E30: .4byte 0x00000C11
	arm_func_end ov29_022F7BF4

	arm_func_start ov29_022F7E34
ov29_022F7E34: @ 0x022F7E34
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #0
	mov r6, r8
	mov r7, #1
	mov r4, r8
	mov r5, r8
_022F7E4C:
	mov r0, r8
	bl FUN_0205638C
	mov sb, r0
	ldrb r0, [sb]
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	beq _022F7E94
	ldrsh r0, [sb, #8]
	bl FUN_02056264
	cmp r0, #0
	strbne r5, [sb]
	bne _022F7E94
	ldrsh r0, [sb, #8]
	bl FUN_02056228
	cmp r0, #0
	strbne r4, [sb]
_022F7E94:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022F7E4C
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022F7E34

	arm_func_start ov29_022F7EAC
ov29_022F7EAC: @ 0x022F7EAC
	push {r3, r4, r5, lr}
	bl GetLeader
	ldr r1, _022F7F04 @ =0x02353538
	mov r2, #0
	ldr r5, [r1]
	movs r4, r0
	strb r2, [r5, #0x78b]
	strb r2, [r5, #0x78c]
	strb r2, [r5, #0x78e]
	str r2, [r5, #0xcc]
	popeq {r3, r4, r5, pc}
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	strb r0, [r5, #0x7c8]
	and r1, r0, #0xff
	add r0, r4, #4
	strb r1, [r5, #0x7c9]
	bl ov29_02337A3C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F7F04: .4byte 0x02353538
	arm_func_end ov29_022F7EAC

	arm_func_start ov29_022F7F08
ov29_022F7F08: @ 0x022F7F08
	push {r3, lr}
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _022F7F28
	bl GetForcedLossReason
	cmp r0, #1
	moveq r0, #1
	popeq {r3, pc}
_022F7F28:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov29_022F7F08

	arm_func_start HandleFaint
HandleFaint: @ 0x022F7F30
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xbc
	mov sl, r0
	mov r8, r2
	mov sb, r1
	ldr r7, [sl, #0xb4]
	bl GetTileAtEntity
	mov r4, r0
	cmp r8, #0
	bne _022F7F64
	add r0, sp, #4
	bl ov29_022E2470
	add r8, sp, #4
_022F7F64:
	ldr r0, [r4, #0xc]
	cmp r0, sl
	moveq r0, #0
	streq r0, [r4, #0xc]
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl ov29_023391EC
	mov r5, #0
	ldr fp, _022F85D0 @ =0x02353538
	mov r4, r5
_022F7F8C:
	ldr r0, [fp]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	cmp r6, #0
	beq _022F7FC4
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022F7FC4
	ldr r1, [r6, #0xb4]
	ldr r0, [r1, #0x84]
	cmp r0, sl
	streq r4, [r1, #0x84]
_022F7FC4:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022F7F8C
	ldrb r0, [r7, #0xd8]
	cmp r0, #2
	ldreq r0, _022F85D0 @ =0x02353538
	moveq r1, #0
	ldreq r0, [r0]
	addeq r0, r0, #0x3000
	strbeq r1, [r0, #0xe38]
	ldrb r0, [r7, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022F8008
	ldr r0, [r7, #0xb4]
	bl FreeOtherWrappedMonsters
_022F8008:
	mov r0, sl
	bl ov29_023159D4
	mov r1, #0
	strb r1, [sl, #0x22]
	ldr r0, _022F85D4 @ =0x0235355C
	strb r1, [sl, #0x20]
	str r1, [r0]
	ldrb r0, [r7, #7]
	cmp r0, #0
	bne _022F8098
	ldrb r0, [r7, #0x48]
	bl FUN_02051760
	cmp r0, #0
	beq _022F8098
	bl StoryRestrictionsEnabled
	cmp r0, #0
	beq _022F8098
	mov r0, #1
	bl SetForcedLossReason
	mov r2, #0
	ldr r0, _022F85D0 @ =0x02353538
	strh r2, [r7, #0x10]
	ldr r0, [r0]
	mov r1, sl
	add r0, r0, #0x248
	add r0, r0, #0x400
	bl ov29_022E2A78
	ldr r0, _022F85D0 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75f]
	cmp r0, #0
	moveq r0, #1
	strbeq r0, [r7, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	b _022F85C8
_022F8098:
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _022F83B4
	mov r0, #0
	bl ov29_0234B1A4
	ldr r0, _022F85D0 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75f]
	cmp r0, #0
	bne _022F80F4
	bl GetForcedLossReason
	cmp r0, #1
	mov r0, #1
	strbeq r0, [sl, #0x20]
	strbne r0, [r7, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, #0x3c
	mov r1, #0x49
	bl ov29_022EA370
	mov r0, #0
	mov r1, r0
	bl OpenMessageLog
_022F80F4:
	ldr r1, _022F85D0 @ =0x02353538
	ldr r2, [r1]
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _022F825C
	mov r4, #0
	bl IsOutlawOrChallengeRequestFloor
	cmp r0, #0
	bne _022F8234
	bl GetForcedLossReason
	cmp r0, #4
	beq _022F8234
	ldr r0, _022F85D0 @ =0x02353538
	ldr r2, [r0]
	ldrb r0, [r2, #0x790]
	cmp r0, #0
	bne _022F8234
	ldr r1, _022F85D8 @ =0x0000025B
	cmp sb, r1
	addne r0, r1, #6
	cmpne sb, r0
	addne r0, r1, #0xb
	cmpne sb, r0
	addne r0, r1, #2
	cmpne sb, r0
	beq _022F8234
	add r0, r2, #0x4000
	ldrb r0, [r0, #0xca]
	cmp r0, #0
	bne _022F8234
	add r0, r2, #0x700
	ldrsb r2, [r0, #0x9b]
	cmp r2, #0
	blt _022F8234
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	cmpne r0, #2
	beq _022F8234
	cmp r2, #0
	ble _022F8220
	mov r0, r4
	mov r3, #1
	ldr r1, _022F85DC @ =0x00000C13
	mov r2, r0
	str r3, [sp]
	bl ov29_0234D518
	cmp r0, #1
	bne _022F8208
	ldr r1, _022F85E0 @ =0x00000C14
	mov r0, r4
	mov r2, #1
	bl DisplayMessage
	ldr r1, _022F85D0 @ =0x02353538
	mov r0, #1
	ldr r2, [r1]
	strb r0, [r2, #8]
	ldr r2, [r1]
	strb r0, [r2, #0xa]
	ldr r2, [r1]
	strb r0, [r2, #0x758]
	ldr r2, [r1]
	add r1, r2, #0x700
	ldrsb r1, [r1, #0x9b]
	sub r1, r1, #1
	strb r1, [r2, #0x79b]
	bl ov29_0234B010
	bl ov29_022E8104
	bl ov29_022E81F8
	b _022F85C8
_022F8208:
	cmp r0, #2
	bne _022F8240
	mov r0, r7
	bl ov29_022F7F08
	mov r4, r0
	b _022F8240
_022F8220:
	rsb r1, r1, #0xe70
	mov r0, r4
	mov r2, #1
	bl DisplayMessage2
	b _022F8240
_022F8234:
	mov r0, r7
	bl ov29_022F7F08
	mov r4, r0
_022F8240:
	mov r0, #1
	bl ov29_0234B010
	cmp r4, #0
	beq _022F8284
	mov r0, sl
	bl ov29_022E68BC
	b _022F8284
_022F825C:
	mov r0, #1
	strb r0, [r2, #8]
	ldr r2, [r1]
	strb r0, [r2, #0xa]
	ldr r1, [r1]
	strb r0, [r1, #0x758]
	bl ov29_0234B010
	bl ov29_022E8104
	bl ov29_022E81F8
	b _022F85C8
_022F8284:
	ldr r0, _022F85E4 @ =0x00000266
	cmp sb, r0
	bne _022F82B4
	ldr r1, _022F85D0 @ =0x02353538
	mov r0, sb
	ldr r2, [r1]
	mov r1, r8
	add r3, r2, #0x248
	mov r2, sl
	add r3, r3, #0x400
	bl ov29_022ECDE4
	b _022F82C8
_022F82B4:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #0
	bl ov29_022ECDE4
_022F82C8:
	ldr r0, _022F85E8 @ =0x0000025E
	cmp sb, r0
	bne _022F83B4
	mov r5, #0
	mov r4, r5
	ldr r6, _022F85D0 @ =0x02353538
	b _022F8328
_022F82E4:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022F8324
	ldr r5, [r8, #0xb4]
	ldrsh r0, [r5, #0x10]
	cmp r0, #0
	bne _022F8324
	ldrb r0, [r5, #0x48]
	bl FUN_02051760
	cmp r0, #0
	bne _022F8330
_022F8324:
	add r4, r4, #1
_022F8328:
	cmp r4, #4
	blt _022F82E4
_022F8330:
	cmp r5, #0
	beq _022F83B4
	ldrsh r0, [r5, #0xc]
	bl FUN_0205638C
	mov r4, r0
	ldrsh r0, [r5, #0xc]
	mov r1, r5
	bl ov29_022FE048
	ldrsh r0, [r4, #8]
	bl FUN_02056294
	cmp r0, #0
	beq _022F83A8
	ldr r0, _022F85D0 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051318
	cmp r0, #0
	bne _022F83A8
	ldr r0, _022F85D0 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	beq _022F83A8
	ldrsh r0, [r5, #0xc]
	mvn r1, #0
	bl FUN_02058674
	ldrsh r0, [r4, #8]
	mov r1, r4
	bl FUN_0205349C
_022F83A8:
	ldrb r0, [r4]
	orr r0, r0, #8
	strb r0, [r4]
_022F83B4:
	mov r0, sl
	mov r1, #1
	bl ov29_022E1C0C
	ldrb r0, [r7, #6]
	cmp r0, #0
	ldrne r0, _022F85D8 @ =0x0000025B
	cmpne sb, r0
	beq _022F83F4
	ldrb r0, [r7, #0xbc]
	bl ov29_022EFAE8
	cmp r0, #0
	beq _022F83F4
	mov r0, #1
	bl SetMissionTargetEnemyDefeated
	mov r0, #1
	bl ov29_02349688
_022F83F4:
	ldrb r0, [r7, #0x48]
	cmp r0, #0xfa
	bne _022F8428
	mov r0, #2
	bl SetForcedLossReason
	ldr r0, _022F85D0 @ =0x02353538
	mov r1, sl
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x248
	add r0, r0, #0x400
	bl ov29_022E2A78
	b _022F8460
_022F8428:
	cmp r0, #0xe3
	beq _022F8460
	bl FUN_02051490
	cmp r0, #0
	beq _022F8460
	mov r0, #3
	bl SetForcedLossReason
	ldr r0, _022F85D0 @ =0x02353538
	mov r1, sl
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #0x248
	add r0, r0, #0x400
	bl ov29_022E2A78
_022F8460:
	bl GetLeader
	cmp r0, #0
	ldrne r0, _022F85D8 @ =0x0000025B
	cmpne sb, r0
	beq _022F84AC
	ldrb r0, [r7, #7]
	cmp r0, #0
	bne _022F84AC
	bl GetForcedLossReason
	cmp r0, #0
	bne _022F84AC
	ldr r0, _022F85EC @ =0x00000233
	ldrb r1, [r7, #0xbc]
	cmp sb, r0
	moveq r2, #1
	movne r2, #0
	mov r0, sl
	and r2, r2, #0xff
	bl ov29_022EF7C4
_022F84AC:
	ldrb r0, [r7, #6]
	cmp r0, #0
	bne _022F8594
	ldrsh r0, [r7, #0xc]
	bl FUN_0205638C
	mov r4, r0
	ldrsh r0, [r7, #0xc]
	mov r1, r7
	bl ov29_022FE048
	ldrsh r0, [r4, #8]
	bl FUN_02056294
	cmp r0, #0
	beq _022F856C
	ldr r0, _022F85D0 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051318
	cmp r0, #0
	bne _022F8528
	ldr r0, _022F85D0 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x700
	ldrsb r0, [r0, #0x98]
	cmp r0, #3
	beq _022F8528
	ldrsh r0, [r7, #0xc]
	mvn r1, #0
	bl FUN_02058674
	ldrsh r0, [r4, #8]
	mov r1, r4
	bl FUN_0205349C
_022F8528:
	ldrb r0, [r7, #7]
	mov r5, #0
	cmp r0, #0
	ldr r0, _022F85D0 @ =0x02353538
	movne r5, #1
	ldr r0, [r0]
	ldrb r0, [r0, #0x75c]
	cmp r0, #0
	bne _022F855C
	ldrb r0, [r7, #0x48]
	bl FUN_02051760
	cmp r0, #0
	movne r5, #1
_022F855C:
	cmp r5, #0
	bne _022F856C
	ldrsh r0, [r4, #8]
	bl FUN_020566C4
_022F856C:
	ldrb r0, [r7, #7]
	cmp r0, #0
	ldrbne r0, [r4]
	orrne r0, r0, #8
	strbne r0, [r4]
	bne _022F8594
	add r0, r7, #0x62
	bl FUN_0200FB54
	mov r0, #0
	strb r0, [r4]
_022F8594:
	ldr r0, [r7, #0xb0]
	bl ov29_022DDB68
	ldr r0, _022F85D0 @ =0x02353538
	ldr r1, _022F85D4 @ =0x0235355C
	mov r2, #0
	ldr r0, [r0]
	str r2, [r1]
	mov r1, #1
	strb r1, [r0, #0xe]
	str r2, [sl]
	bl ov29_022E2978
	bl ov29_022E8104
	bl ov29_022E81F8
_022F85C8:
	add sp, sp, #0xbc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F85D0: .4byte 0x02353538
_022F85D4: .4byte 0x0235355C
_022F85D8: .4byte 0x0000025B
_022F85DC: .4byte 0x00000C13
_022F85E0: .4byte 0x00000C14
_022F85E4: .4byte 0x00000266
_022F85E8: .4byte 0x0000025E
_022F85EC: .4byte 0x00000233
	arm_func_end HandleFaint

	arm_func_start ov29_022F85F0
ov29_022F85F0: @ 0x022F85F0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov r7, r2
	mov sb, r0
	mov r0, r8
	mov r1, r7
	mov r6, r3
	bl GetTileSafe
	ldr r5, [sb, #0xb4]
	mov r4, r0
	ldrb r0, [r5, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022F8634
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
_022F8634:
	ldrb r0, [r5, #0xc4]
	cmp r0, #7
	cmpne r0, #5
	cmpne r0, #2
	bne _022F8658
	mov r0, sb
	mov r1, sb
	mov r2, #1
	bl EndFrozenClassStatus
_022F8658:
	ldrsh r1, [sb, #4]
	cmp r8, r1
	ldrsheq r0, [sb, #6]
	cmpeq r7, r0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r1, #0
	ldrshge r2, [sb, #6]
	cmpge r2, #0
	blt _022F8690
	mov r0, sb
	bl ov29_02337EC0
	ldrsh r0, [sb, #4]
	ldrsh r1, [sb, #6]
	bl ov29_023391EC
_022F8690:
	ldrsh r2, [sb, #4]
	lsl r0, r8, #0x10
	lsl r1, r7, #0x10
	strh r2, [sb, #8]
	ldrsh r2, [sb, #6]
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	strh r2, [sb, #0xa]
	strh r0, [sb, #4]
	strh r1, [sb, #6]
	ldrb r2, [r5, #7]
	cmp r2, #0
	beq _022F86C8
	bl ov29_02338F24
_022F86C8:
	str sb, [r4, #0xc]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _022F86FC
	lsl r0, r8, #0x10
	lsl r1, r7, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	bl ov29_02338F24
	ldr r0, _022F87BC @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #5]
_022F86FC:
	mov r0, r8
	mov r1, r7
	bl ov29_023391EC
	cmp r6, #0
	beq _022F871C
	cmp r6, #1
	beq _022F8768
	b _022F87A8
_022F871C:
	ldrh r0, [r5, #0x72]
	strh r0, [r5, #0x76]
	ldrh r0, [r5, #0x74]
	strh r0, [r5, #0x78]
	ldrh r0, [r5, #0x6e]
	strh r0, [r5, #0x72]
	ldrh r0, [r5, #0x70]
	strh r0, [r5, #0x74]
	ldrh r0, [r5, #0x6a]
	strh r0, [r5, #0x6e]
	ldrh r0, [r5, #0x6c]
	strh r0, [r5, #0x70]
	ldrb r0, [r5, #0xef]
	cmp r0, #1
	ldrhne r0, [sb, #8]
	strhne r0, [r5, #0x6a]
	ldrhne r0, [sb, #0xa]
	strhne r0, [r5, #0x6c]
	b _022F87A8
_022F8768:
	ldrh r0, [sb, #4]
	strh r0, [r5, #0x6a]
	ldrh r0, [sb, #6]
	strh r0, [r5, #0x6c]
	ldrh r0, [r5, #0x6a]
	strh r0, [r5, #0x6e]
	ldrh r0, [r5, #0x6c]
	strh r0, [r5, #0x70]
	ldrh r0, [r5, #0x6e]
	strh r0, [r5, #0x72]
	ldrh r0, [r5, #0x70]
	strh r0, [r5, #0x74]
	ldrh r0, [r5, #0x72]
	strh r0, [r5, #0x76]
	ldrh r0, [r5, #0x74]
	strh r0, [r5, #0x78]
_022F87A8:
	ldrb r1, [r4, #7]
	mov r0, sb
	strb r1, [sb, #0x25]
	bl ov29_02304BAC
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F87BC: .4byte 0x02353538
	arm_func_end ov29_022F85F0

	arm_func_start ov29_022F87C0
ov29_022F87C0: @ 0x022F87C0
	push {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldrb r1, [r5, #0x4c]
	bl CanAttackInDirection
	cmp r0, #0
	beq _022F8820
	ldrb r2, [r5, #0x4c]
	ldr r1, _022F8828 @ =0x0235171C
	ldr r0, _022F882C @ =0x0235171E
	lsl ip, r2, #2
	ldrsh lr, [r4, #4]
	ldrsh r3, [r1, ip]
	ldrsh r2, [r4, #6]
	ldrsh r1, [r0, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _022F8820
	ldr r1, [r0]
	cmp r1, #1
	popeq {r3, r4, r5, pc}
_022F8820:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F8828: .4byte 0x0235171C
_022F882C: .4byte 0x0235171E
	arm_func_end ov29_022F87C0

	arm_func_start ov29_022F8830
ov29_022F8830: @ 0x022F8830
	push {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #0xb4]
	ldr r0, _022F88B8 @ =0x0235171C
	ldrb r2, [r5, #0x4c]
	ldrsh r3, [r4, #4]
	ldr r1, _022F88BC @ =0x0235171E
	lsl r2, r2, #2
	ldrsh r0, [r0, r2]
	add r0, r3, r0
	strh r0, [sp]
	ldrb r2, [r5, #0x4c]
	ldrsh r3, [r4, #6]
	ldrsh r0, [sp]
	lsl r2, r2, #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [sp, #2]
	ldrsh r1, [sp, #2]
	bl GetTile
	mov r5, r0
	add r1, sp, #0
	mov r0, r4
	bl ov29_022FFB90
	cmp r0, #0
	bne _022F88B0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _022F88B0
	ldr r1, [r0]
	cmp r1, #1
	popeq {r3, r4, r5, pc}
_022F88B0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F88B8: .4byte 0x0235171C
_022F88BC: .4byte 0x0235171E
	arm_func_end ov29_022F8830

	arm_func_start ov29_022F88C0
ov29_022F88C0: @ 0x022F88C0
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldr r0, _022F89A4 @ =0x0235171C
	ldrb r2, [r4, #0x4c]
	ldrsh r3, [r5, #4]
	ldr r1, _022F89A8 @ =0x0235171E
	lsl r2, r2, #2
	ldrsh r0, [r0, r2]
	add r0, r3, r0
	strh r0, [sp]
	ldrb r2, [r4, #0x4c]
	ldrsh r3, [r5, #6]
	ldrsh r0, [sp]
	lsl r2, r2, #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1
	strh r1, [sp, #2]
	ldrsh r1, [sp, #2]
	bl GetTile
	add r1, sp, #0
	mov r0, r5
	bl ov29_022FFB90
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldrb r1, [r4, #0x4c]
	ldr r0, _022F89A4 @ =0x0235171C
	ldrsh r2, [r5, #4]
	lsl r1, r1, #2
	ldrsh r0, [r0, r1]
	ldr r1, _022F89A8 @ =0x0235171E
	add r0, r2, r0, lsl #1
	strh r0, [sp]
	ldrb r2, [r4, #0x4c]
	ldrsh r3, [r5, #6]
	ldrsh r0, [sp]
	lsl r2, r2, #2
	ldrsh r1, [r1, r2]
	add r1, r3, r1, lsl #1
	strh r1, [sp, #2]
	ldrsh r1, [sp, #2]
	bl GetTile
	mov r4, r0
	add r1, sp, #0
	mov r0, r5
	bl ov29_022FFB90
	cmp r0, #0
	bne _022F899C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022F899C
	ldr r1, [r0]
	cmp r1, #1
	popeq {r3, r4, r5, pc}
_022F899C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F89A4: .4byte 0x0235171C
_022F89A8: .4byte 0x0235171E
	arm_func_end ov29_022F88C0

	arm_func_start ov29_022F89AC
ov29_022F89AC: @ 0x022F89AC
	push {r3, lr}
	mov r1, r0
	add r0, sp, #0
	bl ov29_022F8FF8
	ldrsh r0, [sp]
	ldrsh r1, [sp, #2]
	bl GetTile
	pop {r3, pc}
	arm_func_end ov29_022F89AC

	arm_func_start ov29_022F89CC
ov29_022F89CC: @ 0x022F89CC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r5, [r6, #0xb4]
	mov r7, r0
	mov r1, r5
	add r0, r7, #2
	bl ov29_02300164
	ldrsh r1, [r5, #2]
	ldr r0, _022F8FF0 @ =0x000003E7
	mov r3, #0
	strh r1, [r7]
	ldrsh r1, [r5, #0x10]
	str r1, [r7, #0x24]
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	str r1, [r7, #0x28]
	ldrb r0, [r5, #0xa]
	str r0, [r7, #0x2c]
	ldr r0, [r5, #0x20]
	str r0, [r7, #0x30]
_022F8A28:
	add r2, r5, r3
	ldrb r0, [r2, #0x1a]
	add r1, r7, r3
	add r3, r3, #1
	strb r0, [r1, #0x34]
	ldrb r0, [r2, #0x1c]
	cmp r3, #2
	strb r0, [r1, #0x36]
	ldrb r0, [r2, #0x5e]
	strb r0, [r1, #0x16]
	ldrb r0, [r2, #0x60]
	strb r0, [r1, #0x18]
	blt _022F8A28
	ldrb r0, [r5, #7]
	mov r1, #0
	strb r0, [r7, #0x38]
	strb r1, [r7, #0x39]
	strb r1, [r7, #0x3a]
	strb r1, [r7, #0x3b]
	strb r1, [r7, #0x3c]
	ldrb r0, [r5, #0xd8]
	cmp r0, #4
	moveq r0, #1
	strbeq r0, [r7, #0x45]
	strbne r1, [r7, #0x45]
	mov r0, r6
	mov r1, #0x6f
	bl AbilityIsActive
	str r0, [sp]
	ldrsh r1, [r5, #2]
	ldrsh r3, [r5, #0xe]
	mov r0, r7
	add r2, r5, #0x62
	bl FUN_0205A450
	ldrb r2, [r5, #0xa8]
	mov r1, #0
	add r0, r5, #0x90
	strb r2, [r7, #0x54]
	ldrh r2, [r5, #0x62]
	add r4, r7, #0x48
	ldr r3, _022F8FF4 @ =0x02353538
	strh r2, [r7, #0x1c]
	ldrh r2, [r5, #0x64]
	strh r2, [r7, #0x1e]
	ldrh r2, [r5, #0x66]
	strh r2, [r7, #0x20]
	ldrsh r2, [r5, #0xe]
	strh r2, [r7, #0x3e]
	ldrb r2, [r5, #0x48]
	strb r2, [r7, #0x1a]
	ldrb r2, [r5, #0x49]
	strb r2, [r7, #0x1b]
	strb r1, [r7, #0x42]
	strb r1, [r7, #0x43]
	ldm r0, {r0, r1, r2}
	stm r4, {r0, r1, r2}
	ldr r0, [r3]
	ldrb r0, [r0, #0x75a]
	cmp r0, #0
	moveq r0, #3
	beq _022F8B24
	mov r0, r5
	bl ov29_022F9B8C
_022F8B24:
	strb r0, [r7, #0x44]
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022F8FF0 @ =0x000003E7
	mov r4, #0
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	asr r0, r2, #1
	add r0, r2, r0, lsr #30
	ldrsh r1, [r5, #0x10]
	sub r2, sp, #4
	cmp r1, r0, asr #2
	movle r0, #6
	strble r0, [r7, #0x58]
	ldr r0, _022F8FF4 @ =0x02353538
	addle r4, r4, #1
	ldr r0, [r0]
	ldrb r0, [r0, #0x78d]
	cmp r0, #0
	addne r0, r7, r4
	movne r1, #0xb
	strbne r1, [r0, #0x58]
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	addne r4, r4, #1
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_02051064
	cmp r0, #0
	bne _022F8BC4
	ldrb r0, [r5, #7]
	cmp r0, #0
	movne r1, #0x13
	add r0, r7, r4
	moveq r1, #0x42
	strb r1, [r0, #0x58]
	add r4, r4, #1
_022F8BC4:
	ldr r0, [r6, #0xb4]
	ldr r0, [r0, #0x110]
	cmp r0, #1
	addgt r0, r7, r4
	movgt r1, #0x1b
	strbgt r1, [r0, #0x58]
	ldr r0, [r6, #0xb4]
	addgt r4, r4, #1
	ldr r0, [r0, #0x110]
	cmp r0, #1
	addlt r0, r7, r4
	movlt r1, #0x29
	strblt r1, [r0, #0x58]
	ldr r0, [r5, #0x34]
	addlt r4, r4, #1
	cmp r0, #0x100
	ldrge r0, [r5, #0x38]
	cmpge r0, #0x100
	ldrge r0, [r5, #0x3c]
	cmpge r0, #0x100
	ldrge r0, [r5, #0x40]
	cmpge r0, #0x100
	ldrshge r0, [r5, #0x24]
	cmpge r0, #0xa
	ldrshge r0, [r5, #0x26]
	cmpge r0, #0xa
	ldrshge r0, [r5, #0x28]
	cmpge r0, #0xa
	ldrshge r0, [r5, #0x2a]
	cmpge r0, #0xa
	ldrshge r0, [r5, #0x2c]
	cmpge r0, #0xa
	ldrshge r0, [r5, #0x2e]
	cmpge r0, #0xa
	addlt r0, r7, r4
	movlt r1, #0x3b
	strblt r1, [r0, #0x58]
	ldr r0, [r5, #0x34]
	addlt r4, r4, #1
	cmp r0, #0x100
	ldrle r0, [r5, #0x38]
	cmple r0, #0x100
	ldrle r0, [r5, #0x3c]
	cmple r0, #0x100
	ldrle r0, [r5, #0x40]
	cmple r0, #0x100
	ldrshle r0, [r5, #0x24]
	cmple r0, #0xa
	ldrshle r0, [r5, #0x26]
	cmple r0, #0xa
	ldrshle r0, [r5, #0x28]
	cmple r0, #0xa
	ldrshle r0, [r5, #0x2a]
	cmple r0, #0xa
	ldrshle r0, [r5, #0x2c]
	cmple r0, #0xa
	ldrshle r0, [r5, #0x2e]
	cmple r0, #0xa
	addgt r0, r7, r4
	movgt r1, #0x45
	strbgt r1, [r0, #0x58]
	ldrb r1, [r5, #0xbd]
	addgt r4, r4, #1
	cmp r1, #0
	beq _022F8CD8
	cmp r4, #0x1e
	addlt r0, r7, r4
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8CD8:
	ldrb r1, [r5, #0xbf]
	cmp r1, #0
	beq _022F8CF8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #6
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8CF8:
	ldrb r1, [r5, #0xc4]
	cmp r1, #0
	beq _022F8D18
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0xb
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D18:
	ldrb r1, [r5, #0xd0]
	cmp r1, #0
	beq _022F8D38
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x13
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D38:
	ldrb r1, [r5, #0xd2]
	cmp r1, #0
	beq _022F8D58
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x1b
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D58:
	ldrb r1, [r5, #0xd5]
	cmp r1, #0
	beq _022F8D78
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x29
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D78:
	ldrb r1, [r5, #0xd8]
	cmp r1, #0
	beq _022F8D98
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x3b
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8D98:
	ldrb r1, [r5, #0xe0]
	cmp r1, #0
	beq _022F8DB8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x42
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8DB8:
	ldrb r1, [r5, #0xec]
	cmp r1, #0
	beq _022F8DD8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x45
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8DD8:
	ldrb r1, [r5, #0xee]
	cmp r1, #0
	beq _022F8DF8
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x4a
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8DF8:
	ldrb r1, [r5, #0xef]
	cmp r1, #0
	beq _022F8E18
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x4d
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E18:
	ldrb r1, [r5, #0xf1]
	cmp r1, #0
	beq _022F8E38
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x52
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E38:
	ldrb r1, [r5, #0xf3]
	cmp r1, #0
	beq _022F8E58
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x57
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E58:
	ldrb r1, [r5, #0xf5]
	cmp r1, #0
	beq _022F8E78
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x59
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E78:
	ldrb r1, [r5, #0xf7]
	cmp r1, #0
	beq _022F8E98
	cmp r4, #0x1e
	addlt r0, r7, r4
	addlt r1, r1, #0x5b
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8E98:
	ldrb r0, [r5, #0x11e]
	cmp r0, #0
	beq _022F8EB8
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x5d
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8EB8:
	ldrb r0, [r5, #0xf9]
	cmp r0, #0
	beq _022F8ED8
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x5e
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8ED8:
	ldrb r0, [r5, #0xfa]
	cmp r0, #0
	beq _022F8EF8
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x5f
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8EF8:
	ldrb r0, [r5, #0xfd]
	cmp r0, #0
	beq _022F8F18
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x60
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F18:
	ldrb r0, [r5, #0xfe]
	cmp r0, #0
	beq _022F8F38
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x61
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F38:
	mov r0, r6
	bl ShouldMonsterRunAway
	cmp r0, #0
	beq _022F8F5C
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x62
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F5C:
	ldrb r0, [r5, #0x106]
	cmp r0, #0
	beq _022F8F7C
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x63
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8F7C:
	mov r0, r6
	mov r1, #0
	bl GetNumberOfAttacks
	cmp r0, #2
	blt _022F8FA4
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x64
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8FA4:
	ldrb r0, [r5, #0xfb]
	cmp r0, #0
	beq _022F8FC4
	cmp r4, #0x1e
	addlt r0, r7, r4
	movlt r1, #0x65
	strblt r1, [r0, #0x58]
	addlt r4, r4, #1
_022F8FC4:
	mov r1, #0
	b _022F8FD8
_022F8FCC:
	add r0, r7, r4
	strb r1, [r0, #0x58]
	add r4, r4, #1
_022F8FD8:
	cmp r4, #0x1e
	blt _022F8FCC
	add r0, r7, r4
	mov r1, #0
	strb r1, [r0, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F8FF0: .4byte 0x000003E7
_022F8FF4: .4byte 0x02353538
	arm_func_end ov29_022F89CC

	arm_func_start ov29_022F8FF8
ov29_022F8FF8: @ 0x022F8FF8
	push {r4, lr}
	ldr r2, [r1, #0xb4]
	ldr ip, _022F9050 @ =0x0235171C
	ldrb lr, [r2, #0x4c]
	ldrsh r4, [r1, #4]
	ldr r3, _022F9054 @ =0x0235171E
	lsl lr, lr, #2
	ldrsh ip, [ip, lr]
	add r4, r4, ip
	strh r4, [r0]
	ldrb ip, [r2, #0x4c]
	ldrsh lr, [r1, #6]
	lsl r1, ip, #2
	ldrsh r1, [r3, r1]
	add r1, lr, r1
	strh r1, [r0, #2]
	ldrb r0, [r2, #0x4c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	.align 2, 0
_022F9050: .4byte 0x0235171C
_022F9054: .4byte 0x0235171E
	arm_func_end ov29_022F8FF8

	arm_func_start ov29_022F9058
ov29_022F9058: @ 0x022F9058
	push {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r4, [r1, #0xb4]
	mov r5, r0
	ldrsh r0, [r4, #2]
	strh r0, [r5]
	ldrh r0, [r1, #4]
	strh r0, [r5, #2]
	ldrh r0, [r1, #6]
	strh r0, [r5, #4]
	ldrb r0, [r4, #0x100]
	cmp r0, #0
	ldrshne r0, [r4, #0x14]
	ldrsheq r0, [r4, #0x12]
	strh r0, [r5, #6]
	ldrb r1, [r4, #0xa]
	add r0, sp, #0
	strh r1, [r5, #0xc]
	ldrsh r1, [r4, #2]
	ldrb r2, [r4, #0xa]
	bl FUN_0205379C
	ldr r0, [sp]
	add r3, r4, #0x124
	str r0, [r5, #0x10]
	ldrb r0, [r4, #0x1a]
	add r2, r5, #0x22
	mov r1, #0x11
	strb r0, [r5, #8]
	ldrb r0, [r4, #0x1b]
	strb r0, [r5, #9]
	ldrb r0, [r4, #0x1c]
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #0x1d]
	strb r0, [r5, #0xb]
	ldrh r0, [r4, #0x62]
	strh r0, [r5, #0x1c]
	ldrh r0, [r4, #0x64]
	strh r0, [r5, #0x1e]
	ldrh r0, [r4, #0x66]
	strh r0, [r5, #0x20]
_022F90F8:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022F90F8
	add r0, r4, #0x100
	ldrh r1, [r0, #0x46]
	strh r1, [r5, #0x14]
	ldrh r1, [r0, #0x48]
	strh r1, [r5, #0x16]
	ldrh r1, [r0, #0x4a]
	strh r1, [r5, #0x18]
	ldrh r0, [r0, #0x4c]
	strh r0, [r5, #0x1a]
	ldrh r0, [r4, #0x44]
	strh r0, [r5, #0x44]
	ldrh r0, [r4, #0x46]
	strh r0, [r5, #0x46]
	add sp, sp, #0xc
	pop {r4, r5, pc}
	arm_func_end ov29_022F9058

	arm_func_start UpdateAiTargetPos
UpdateAiTargetPos: @ 0x022F9144
	push {r3, lr}
	ldr lr, [r0, #0xb4]
	ldr r2, _022F918C @ =0x0235171C
	ldrb r3, [lr, #0x4c]
	ldrsh ip, [r0, #4]
	add r1, lr, #0x100
	lsl r3, r3, #2
	ldrsh r3, [r2, r3]
	ldr r2, _022F9190 @ =0x0235171E
	add r3, ip, r3
	strh r3, [r1, #0x7e]
	ldrb r3, [lr, #0x4c]
	ldrsh ip, [r0, #6]
	lsl r0, r3, #2
	ldrsh r0, [r2, r0]
	add r0, ip, r0
	strh r0, [r1, #0x80]
	pop {r3, pc}
	.align 2, 0
_022F918C: .4byte 0x0235171C
_022F9190: .4byte 0x0235171E
	arm_func_end UpdateAiTargetPos

	arm_func_start ov29_022F9194
ov29_022F9194: @ 0x022F9194
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r1, #0x25
	ldr r4, [r5, #0xb4]
	bl AbilityIsActive
	cmp r0, #0
	beq _022F91D8
	mov r0, r5
	bl GetApparentWeather
	mov r1, #6
	mul r2, r0, r1
	ldr r1, _022F9234 @ =0x022C4C6C
	mov r0, #0
	ldrb r1, [r1, r2]
	strb r1, [r4, #0x5e]
	strb r0, [r4, #0x5f]
	b _022F91FC
_022F91D8:
	mov r5, #0
_022F91DC:
	ldrsh r0, [r4, #2]
	mov r1, r5
	bl FUN_02052A04
	add r1, r4, r5
	add r5, r5, #1
	strb r0, [r1, #0x5e]
	cmp r5, #2
	blt _022F91DC
_022F91FC:
	mov r5, #0
_022F9200:
	ldrsh r0, [r4, #2]
	mov r1, r5
	bl FUN_02052A24
	add r1, r4, r5
	add r5, r5, #1
	strb r0, [r1, #0x60]
	cmp r5, #2
	blt _022F9200
	ldr r0, _022F9238 @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0xe]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022F9234: .4byte 0x022C4C6C
_022F9238: .4byte 0x02353538
	arm_func_end ov29_022F9194

	arm_func_start TryActivateSlowStart
TryActivateSlowStart: @ 0x022F923C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, #0
	mov r7, #1
	ldr r5, _022F92D0 @ =0x00000C17
	ldr r4, _022F92D4 @ =0x02353538
	mov r6, sb
	mov fp, r7
	mov r8, #0x5e
_022F925C:
	ldr r0, [r4]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022F92C0
	mov r0, sl
	mov r1, r8
	bl AbilityIsActive
	cmp r0, #0
	beq _022F92C0
	mov r0, r7
	mov r1, sl
	mov r2, r6
	bl SubstitutePlaceholderStringTags
	mov r0, sl
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, sl
	mov r1, sl
	mov r2, fp
	mov r3, #0
	bl LowerSpeed
_022F92C0:
	add sb, sb, #1
	cmp sb, #0x14
	blt _022F925C
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F92D0: .4byte 0x00000C17
_022F92D4: .4byte 0x02353538
	arm_func_end TryActivateSlowStart

	arm_func_start TryActivateArtificialWeatherAbilities
TryActivateArtificialWeatherAbilities: @ 0x022F92D8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bl IsSecretFloor
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _022F9404 @ =0x02353538
	ldr r1, [r4]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov sb, #0
	strb sb, [r1, #0xe]
	ldr r0, [r4]
	mov r5, #1
	add r0, r0, #0xc000
	strb sb, [r0, #0xd5d]
	mov r6, r5
	mov r7, r5
	mov r8, r5
	mov fp, r5
_022F9324:
	ldr r0, [r4]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022F93F4
	mov r0, sl
	mov r1, #4
	bl AbilityIsActive
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strhne r8, [r0, #0x52]
	bne _022F93C0
	mov r0, sl
	mov r1, #0x1c
	bl AbilityIsActive
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strhne r7, [r0, #0x4e]
	bne _022F93C0
	mov r0, sl
	mov r1, #0x31
	bl AbilityIsActive
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strhne r6, [r0, #0x4c]
	bne _022F93C0
	mov r0, sl
	mov r1, #0x78
	bl AbilityIsActive
	cmp r0, #0
	ldrne r0, [r4]
	addne r0, r0, #0xcd00
	strhne r5, [r0, #0x54]
_022F93C0:
	mov r0, sl
	mov r1, #8
	bl AbilityIsActive
	cmp r0, #0
	bne _022F93E8
	mov r0, sl
	mov r1, #0x2d
	bl AbilityIsActive
	cmp r0, #0
	beq _022F93F4
_022F93E8:
	ldr r0, [r4]
	add r0, r0, #0xc000
	strb fp, [r0, #0xd5d]
_022F93F4:
	add sb, sb, #1
	cmp sb, #0x14
	blt _022F9324
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022F9404: .4byte 0x02353538
	arm_func_end TryActivateArtificialWeatherAbilities

	arm_func_start ov29_022F9408
ov29_022F9408: @ 0x022F9408
	push {r4, lr}
	movs r4, r0
	beq _022F94A8
	ldr r2, _022F94E0 @ =0x0000017B
	cmp r1, r2
	blt _022F945C
	add r2, r2, #3
	cmp r1, r2
	bgt _022F945C
	mov r1, #0x25
	bl AbilityIsActive
	cmp r0, #0
	ldreq r0, _022F94E0 @ =0x0000017B
	popeq {r4, pc}
	mov r0, r4
	bl GetApparentWeather
	mov r1, #6
	mul r1, r0, r1
	ldr r0, _022F94E4 @ =0x022C4C6E
	ldrsh r0, [r0, r1]
	pop {r4, pc}
_022F945C:
	ldr r0, _022F94E8 @ =0x000003D3
	cmp r1, r0
	blt _022F94D8
	add r0, r0, #3
	cmp r1, r0
	bgt _022F94D8
	mov r0, r4
	mov r1, #0x25
	bl AbilityIsActive
	cmp r0, #0
	ldreq r0, _022F94E8 @ =0x000003D3
	popeq {r4, pc}
	mov r0, r4
	bl GetApparentWeather
	mov r1, #6
	mul r1, r0, r1
	ldr r0, _022F94EC @ =0x022C4C70
	ldrsh r0, [r0, r1]
	pop {r4, pc}
_022F94A8:
	ldr r0, _022F94E0 @ =0x0000017B
	cmp r1, r0
	blt _022F94C0
	add r2, r0, #3
	cmp r1, r2
	pople {r4, pc}
_022F94C0:
	ldr r0, _022F94E8 @ =0x000003D3
	cmp r1, r0
	blt _022F94D8
	add r2, r0, #3
	cmp r1, r2
	pople {r4, pc}
_022F94D8:
	mov r0, r1
	pop {r4, pc}
	.align 2, 0
_022F94E0: .4byte 0x0000017B
_022F94E4: .4byte 0x022C4C6E
_022F94E8: .4byte 0x000003D3
_022F94EC: .4byte 0x022C4C70
	arm_func_end ov29_022F9408

	arm_func_start ov29_022F94F0
ov29_022F94F0: @ 0x022F94F0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	cmpne sb, r8
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r5, [sb, #0xb4]
	ldr r6, [r8, #0xb4]
	ldrb r0, [r5, #0xbc]
	bl ov29_022EFB04
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r6, #0x60]
	mvn r4, #0
	cmp r0, #0x28
	ldrb r0, [r6, #0x61]
	moveq r4, #0
	cmp r0, #0x28
	moveq r4, #1
	cmp r4, #0
	blt _022F95FC
	ldrb r1, [r5, #0x60]
	ldrb r2, [r5, #0x61]
	mov r0, #0
	cmp r1, #0
	strbne r1, [sp]
	addne r0, r0, #1
	cmp r2, #0
	addne r1, sp, #0
	strbne r2, [r1, r0]
	addne r0, r0, #1
	cmp r0, #0
	mvneq r0, #0
	beq _022F95A0
	cmp r0, #1
	moveq r0, #0
	beq _022F95A0
	bl DungeonRandInt
_022F95A0:
	cmp r0, #0
	blt _022F95FC
	add r1, sp, #0
	ldrb r3, [r1, r0]
	ldr r1, _022F96BC @ =0x02353538
	add r2, r6, r4
	strb r3, [r2, #0x60]
	mov r0, #0
	ldr r3, [r1]
	mov r4, #1
	mov r1, r8
	mov r2, r0
	strb r4, [r3, #0xe]
	bl SubstitutePlaceholderStringTags
	ldr r2, _022F96C0 @ =0x00000C18
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	bl ov29_022E6260
	mov r0, sb
	mov r1, r8
	bl ov29_022FA7DC
_022F95FC:
	ldrb r0, [r6, #0x164]
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r4, #0
	mov r0, sb
	mov r1, r8
	mov r2, #0x3b
	mov r3, #1
	strb r4, [r6, #0x164]
	bl DefenderAbilityIsActive
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	mov r1, r7
	bl GetMoveTypeForMonster
	ldrh r1, [r7, #4]
	mov r4, r0
	cmp r1, #0x1f
	bne _022F9658
	mov r0, sb
	bl GetApparentWeather
	ldr r1, _022F96C4 @ =0x022C48DC
	ldrb r4, [r1, r0]
_022F9658:
	cmp r4, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	mov r1, r4
	bl MonsterIsType
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	strb r4, [r6, #0x5e]
	strb r0, [r6, #0x5f]
	mov r3, #1
	mov r1, r8
	mov r2, r0
	strb r3, [r6, #0xff]
	bl SubstitutePlaceholderStringTags
	ldrb r1, [r6, #0x5e]
	mov r0, #0
	bl ov29_0234B084
	ldr r2, _022F96C8 @ =0x00000C19
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	bl ov29_022E647C
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022F96BC: .4byte 0x02353538
_022F96C0: .4byte 0x00000C18
_022F96C4: .4byte 0x022C48DC
_022F96C8: .4byte 0x00000C19
	arm_func_end ov29_022F94F0

	arm_func_start DefenderAbilityIsActive
DefenderAbilityIsActive: @ 0x022F96CC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r7, r6
	beq _022F9710
	bl IsMonster
	cmp r0, #0
	cmpne r4, #0
	beq _022F9710
	mov r0, r7
	mov r1, #0x53
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
_022F9710:
	mov r0, r6
	mov r1, r5
	bl AbilityIsActive
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end DefenderAbilityIsActive

	arm_func_start IsMonster
IsMonster: @ 0x022F9720
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMonster

	arm_func_start ov29_022F9744
ov29_022F9744: @ 0x022F9744
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r4, r2
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	cmpne r7, r6
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r5, [r6, #0xb4]
	mov r0, r6
	bl Conversion2IsActive
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r4
	bl GetMoveTypeForMonster
	bl FUN_02050964
	movs r4, r0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl ov29_02307CE0
	mov r0, r6
	strb r4, [r5, #0x5e]
	mov r1, #0
	strb r1, [r5, #0x5f]
	bl ov29_022E4160
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r4
	mov r0, #0
	bl ov29_0234B084
	mov r0, r7
	mov r1, r6
	ldr r2, _022F97EC @ =0x00000C16
	bl LogMessageByIdWithPopupCheckUserTarget
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F97EC: .4byte 0x00000C16
	arm_func_end ov29_022F9744

	arm_func_start TryActivateTruant
TryActivateTruant: @ 0x022F97F0
	push {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	beq _022F9838
	mov r0, r4
	mov r1, #0x2a
	bl AbilityIsActive
	cmp r0, #0
	beq _022F9838
	mov r2, #0
	str r2, [sp]
	mov r0, r4
	mov r1, r4
	mov r3, #1
	str r2, [sp, #4]
	bl TryInflictPausedStatus
_022F9838:
	add sp, sp, #8
	pop {r4, pc}
	arm_func_end TryActivateTruant

	arm_func_start ov29_022F9840
ov29_022F9840: @ 0x022F9840
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r5]
	cmp r0, #1
	bne _022F987C
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, r4
	and r4, r0, #0xff
_022F987C:
	bl FUN_0204AEF0
	cmp r0, #0
	moveq r4, #0
	cmp r4, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_022E272C
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r1, #1
	mov r0, r5
	mov r2, r1
	bl ov29_022F98B4
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022F9840

	arm_func_start ov29_022F98B4
ov29_022F98B4: @ 0x022F98B4
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6]
	cmp r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, _022F9968 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1a000
	ldr r0, [r0, #0x22c]
	cmp r0, r6
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _022F9928
	mov r0, #1
	bl ov29_022E38E0
	mov r7, #0x34
	ldr r5, _022F9968 @ =0x02353538
	b _022F9918
_022F9910:
	mov r0, r7
	bl AdvanceFrame
_022F9918:
	ldr r0, [r5]
	ldrsh r0, [r0, #0x1c]
	cmp r0, #0x3c
	blt _022F9910
_022F9928:
	mov r0, #4
	mov r1, #0x44
	bl ov29_022EA370
	mov r0, r6
	mov r1, r4
	bl ov29_022E2E54
	cmp r4, #0
	beq _022F9950
	add r0, r6, #4
	bl ov29_02337A3C
_022F9950:
	ldr r0, _022F9968 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	strh r1, [r0, #0x1c]
	bl ov29_022E81F8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022F9968: .4byte 0x02353538
	arm_func_end ov29_022F98B4

	arm_func_start ov29_022F996C
ov29_022F996C: @ 0x022F996C
	bx lr
	arm_func_end ov29_022F996C

	arm_func_start ov29_022F9970
ov29_022F9970: @ 0x022F9970
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _022F99E8 @ =0x02353538
	b _022F99DC
_022F9980:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _022F99D8
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #3
	bne _022F99D8
	ldr r1, _022F99E8 @ =0x02353538
	ldr r0, [r1]
	add r0, r0, #0x19000
	str r5, [r0, #0x904]
	ldr r2, [r5, #0xb4]
	ldr r0, [r1]
	ldr r1, [r2, #0xb0]
	add r0, r0, #0x19000
	str r1, [r0, #0x90c]
	pop {r4, r5, r6, pc}
_022F99D8:
	add r4, r4, #1
_022F99DC:
	cmp r4, #0x14
	blt _022F9980
	pop {r4, r5, r6, pc}
	.align 2, 0
_022F99E8: .4byte 0x02353538
	arm_func_end ov29_022F9970

	arm_func_start ov29_022F99EC
ov29_022F99EC: @ 0x022F99EC
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r4, #0
	ldr r6, _022F9A70 @ =0x02353538
	mov r5, r4
	add r7, sp, #0
_022F9A04:
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb38]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022F9A40
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xbc]
	cmp r0, #0xb
	blo _022F9A40
	cmp r0, #0xe
	strls r8, [r7, r4, lsl #2]
	addls r4, r4, #1
_022F9A40:
	add r5, r5, #1
	cmp r5, #0x10
	blt _022F9A04
	cmp r4, #0
	movle r0, #0
	ble _022F9A68
	mov r0, r4
	bl DungeonRandInt
	add r1, sp, #0
	ldr r0, [r1, r0, lsl #2]
_022F9A68:
	add sp, sp, #0x40
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022F9A70: .4byte 0x02353538
	arm_func_end ov29_022F99EC

	arm_func_start RestorePpAllMovesSetFlags
RestorePpAllMovesSetFlags: @ 0x022F9A74
	push {r4, r5, r6, r7, r8, lr}
	ldr r0, [r0, #0xb4]
	mov r7, #0
	add r6, r0, #0x124
	mov r4, r7
	mov r5, #1
_022F9A8C:
	ldrb r0, [r6, r7, lsl #3]
	add r8, r6, r7, lsl #3
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022F9AE4
	ldrh r1, [r8, #2]
	mov r0, r8
	bic r1, r1, #8
	strh r1, [r8, #2]
	ldrh r1, [r8, #2]
	bic r1, r1, #0x10
	strh r1, [r8, #2]
	ldrh r1, [r8, #2]
	bic r1, r1, #0x40
	strh r1, [r8, #2]
	ldrh r1, [r8, #2]
	orr r1, r1, #4
	strh r1, [r8, #2]
	bl GetMaxPpWrapper
	strb r0, [r8, #6]
_022F9AE4:
	add r7, r7, #1
	cmp r7, #4
	blt _022F9A8C
	pop {r4, r5, r6, r7, r8, pc}
	arm_func_end RestorePpAllMovesSetFlags

	arm_func_start ov29_022F9AF4
ov29_022F9AF4: @ 0x022F9AF4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r1, [sb, #0xb4]
	mov r5, #0
	ldrb r8, [r1, #6]
	bl ov29_022F87C0
	cmp r0, #0
	moveq r0, r5
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mvn r7, #0
	mov r4, r7
_022F9B20:
	mov r6, r4
_022F9B24:
	ldrsh r0, [sb, #4]
	ldrsh r1, [sb, #6]
	add r0, r0, r6
	add r1, r1, r7
	bl GetTileSafe
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _022F9B60
	ldr r0, [r1]
	cmp r0, #1
	bne _022F9B60
	ldr r0, [r1, #0xb4]
	ldrb r0, [r0, #6]
	cmp r8, r0
	addne r5, r5, #1
_022F9B60:
	add r6, r6, #1
	cmp r6, #1
	ble _022F9B24
	add r7, r7, #1
	cmp r7, #1
	ble _022F9B20
	cmp r5, #2
	movge r0, #1
	movlt r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022F9AF4

	arm_func_start ov29_022F9B8C
ov29_022F9B8C: @ 0x022F9B8C
	push {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r2, #0
	mov r1, #1
	mov r4, r0
	strb r2, [sp, #4]
	strb r1, [sp, #5]
	str r2, [sp]
	ldrsh r1, [r4, #2]
	add r0, sp, #8
	add r3, sp, #4
	bl FUN_02052E2C
	ldrsh r0, [r4, #2]
	mov r1, #0
	mov r2, #6
	strh r0, [sp, #0xc]
	ldrb r0, [r4, #0xa]
	strb r0, [sp, #9]
	ldrsh r0, [r4, #0xe]
	strh r0, [sp, #0x10]
	ldrb r0, [r4, #0x1a]
	strb r0, [sp, #0x14]
	ldrb r0, [r4, #0x1c]
	strb r0, [sp, #0x16]
	ldrb r0, [r4, #0x48]
	strb r0, [sp, #0xa]
	ldrb r0, [r4, #0x49]
	strb r0, [sp, #0xb]
	add r0, sp, #8
_022F9C00:
	mla lr, r1, r2, r0
	add r3, r4, r1, lsl #3
	ldrb ip, [r3, #0x124]
	add r3, r3, #0x100
	add r1, r1, #1
	strb ip, [lr, #0x22]
	ldrh r3, [r3, #0x28]
	cmp r1, #4
	strh r3, [lr, #0x24]
	blt _022F9C00
	bl FUN_0205A210
	add sp, sp, #0x4c
	pop {r3, r4, pc}
	arm_func_end ov29_022F9B8C

	arm_func_start CheckTeamMemberIdx
CheckTeamMemberIdx: @ 0x022F9C34
	ldr ip, _022F9C3C @ =FUN_02056228
	bx ip
	.align 2, 0
_022F9C3C: .4byte FUN_02056228
	arm_func_end CheckTeamMemberIdx

	arm_func_start ov29_02056264
ov29_02056264: @ 0x022F9C40
	ldr ip, _022F9C48 @ =FUN_02056264
	bx ip
	.align 2, 0
_022F9C48: .4byte FUN_02056264
	arm_func_end ov29_02056264

	arm_func_start ov29_022F9C4C
ov29_022F9C4C: @ 0x022F9C4C
	push {r3, lr}
	ldr r0, [r0, #0xb4]
	ldrsh r0, [r0, #0xc]
	bl FUN_0205638C
	ldrsh r0, [r0, #8]
	bl FUN_02056264
	pop {r3, pc}
	arm_func_end ov29_022F9C4C

	arm_func_start IsMonsterIdInNormalRange
IsMonsterIdInNormalRange: @ 0x022F9C68
	ldr ip, _022F9C70 @ =FUN_02056294
	bx ip
	.align 2, 0
_022F9C70: .4byte FUN_02056294
	arm_func_end IsMonsterIdInNormalRange

	arm_func_start ov29_022F9C74
ov29_022F9C74: @ 0x022F9C74
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	bl EntityIsValid
	cmp r0, #0
	beq _022F9E80
	ldr r5, [r6, #0xb4]
	ldrb r0, [r5, #0x103]
	cmp r0, #0
	beq _022F9E78
	mov r0, r6
	bl GetTileAtEntity
	ldrh r0, [r0]
	and r0, r0, #3
	cmp r0, #2
	bne _022F9D50
	ldr r0, _022F9E88 @ =0x02353538
	ldr r1, _022F9E8C @ =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _022F9D34
	ldrb r0, [r5, #0xc4]
	cmp r0, #1
	bne _022F9CF0
	mov r0, r6
	mov r1, r6
	mov r2, #1
	bl EndFrozenClassStatus
_022F9CF0:
	ldrsh r0, [r5, #2]
	bl FUN_02052874
	cmp r0, #4
	ldrshne r1, [r5, #2]
	ldrne r0, _022F9E90 @ =0x00000115
	cmpne r1, r0
	cmpne r1, #0x92
	ldrbne r0, [r5, #0xbf]
	cmpne r0, #1
	beq _022F9E78
	mov r3, #0
	mov r0, r6
	mov r1, r6
	mov r2, #1
	str r3, [sp]
	bl TryInflictBurnStatus
	b _022F9E78
_022F9D34:
	ldrb r0, [r5, #0xbf]
	cmp r0, #1
	bne _022F9E78
	mov r0, r6
	mov r1, r6
	bl ov29_023061A8
	b _022F9E78
_022F9D50:
	cmp r0, #0
	bne _022F9E78
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _022F9E78
	add r0, r5, #0x100
	ldrh r1, [r0, #0x48]
	ldrh r4, [r0, #0x46]
	sub r3, sp, #4
	strh r1, [sp, #0xa]
	mov r0, r1
	strh r4, [r3]
	strh r0, [r3, #2]
	ldr r1, _022F9E94 @ =0x02352768
	ldr r0, [r3]
	ldrh r2, [r1]
	strh r4, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_02050F10
	strh r0, [sp, #4]
	lsr r0, r0, #0x10
	strh r0, [sp, #6]
	ldrh r1, [sp, #4]
	add r0, r5, #0x100
	ldrh r3, [sp, #6]
	strh r1, [r0, #0x46]
	ldrh r2, [sp, #8]
	strh r3, [r0, #0x48]
	sub r0, sp, #4
	ldrh r1, [sp, #0xa]
	strh r2, [r0]
	mov r4, #0
	strh r1, [r0, #2]
	ldr r0, [r0]
	bl FUN_02051064
	cmp r0, #0x14
	blt _022F9E18
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_02051064
	cmp r0, #0x14
	ldrlt r4, _022F9E98 @ =0x00000C1A
_022F9E18:
	ldrh r1, [sp, #8]
	ldrh r0, [sp, #0xa]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_02051064
	cmp r0, #0xa
	blt _022F9E64
	add r0, r5, #0x100
	ldrh r1, [r0, #0x46]
	sub r2, sp, #4
	strh r1, [r2]
	ldrh r0, [r0, #0x48]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_02051064
	cmp r0, #0xa
	ldrlt r4, _022F9E9C @ =0x00000C1B
_022F9E64:
	cmp r4, #0
	beq _022F9E78
	mov r0, r6
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUser
_022F9E78:
	mov r0, #0
	strb r0, [r5, #0x103]
_022F9E80:
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022F9E88: .4byte 0x02353538
_022F9E8C: .4byte 0x020A1AE8
_022F9E90: .4byte 0x00000115
_022F9E94: .4byte 0x02352768
_022F9E98: .4byte 0x00000C1A
_022F9E9C: .4byte 0x00000C1B
	arm_func_end ov29_022F9C74

	arm_func_start ov29_022F9EA0
ov29_022F9EA0: @ 0x022F9EA0
	push {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r1, #0x6f
	ldr r4, [r5, #0xb4]
	bl AbilityIsActive
	cmp r0, #0
	bne _022F9FEC
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _022F9FBC
	mov r0, r5
	mov r1, #0x11
	bl HasHeldItem
	cmp r0, #0
	bne _022F9EF4
	mov r0, r5
	mov r1, #0x32
	bl HasHeldItem
	cmp r0, #0
	beq _022F9F60
_022F9EF4:
	mov r0, #0xa
	bl FUN_02050FF8
	add r1, r4, #0x100
	ldrh r2, [r1, #0x46]
	sub r3, sp, #4
	strh r0, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #0x48]
	lsr r0, r0, #0x10
	strh r0, [sp, #0xa]
	strh r1, [r3, #2]
	ldrh r2, [sp, #8]
	ldr r0, [r3]
	ldrh r1, [sp, #0xa]
	strh r2, [r3]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_02050F10
	strh r0, [sp, #4]
	lsr r0, r0, #0x10
	strh r0, [sp, #6]
	ldrh r2, [sp, #4]
	add r0, r4, #0x100
	ldrh r1, [sp, #6]
	strh r2, [r0, #0x46]
	strh r1, [r0, #0x48]
	b _022F9F9C
_022F9F60:
	mov r0, r5
	mov r1, #0x22
	bl HasHeldItem
	cmp r0, #0
	beq _022F9F9C
	mov r0, #0
	bl FUN_02050FF8
	strh r0, [sp]
	lsr r0, r0, #0x10
	strh r0, [sp, #2]
	ldrh r2, [sp]
	add r0, r4, #0x100
	ldrh r1, [sp, #2]
	strh r2, [r0, #0x46]
	strh r1, [r0, #0x48]
_022F9F9C:
	ldr r0, _022FA028 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x78d]
	cmp r0, #0
	beq _022F9FEC
	mov r0, r5
	bl UpdateStatusIconFlags
	b _022F9FEC
_022F9FBC:
	ldrsh r1, [r4, #0x66]
	ldrsh r0, [r4, #0x68]
	cmp r0, r1
	beq _022F9FEC
	cmp r1, #0x18
	cmpne r0, #0x18
	cmpne r1, #0xe
	cmpne r0, #0xe
	bne _022F9FEC
	mov r0, #1
	bl ov29_022E2EC4
	bl ov29_02339CE8
_022F9FEC:
	ldrsh r1, [r4, #0x68]
	ldrsh r0, [r4, #0x66]
	cmp r1, r0
	beq _022FA000
	bl ov29_02307DD0
_022FA000:
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrshne r0, [r4, #0x66]
	moveq r0, #0
	strh r0, [r4, #0x68]
	add sp, sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022FA028: .4byte 0x02353538
	arm_func_end ov29_022F9EA0

	arm_func_start ov29_022FA02C
ov29_022FA02C: @ 0x022FA02C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x90
	mov sl, r0
	mov r3, r1
	ldrsh r1, [sl, #2]
	mov sb, r2
	add r0, sp, #4
	mov r2, r3
	bl FUN_02058D04
	mov r6, r0
	ldrsh r1, [sl, #2]
	ldrsh r2, [sl, #0xe]
	add r0, sp, #0x49
	bl FUN_02058D04
	mov r7, r0
	bl ov29_0234B034
	mov r1, #0
	mov r2, sl
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r8, #1
	add r5, sp, #4
	mov r4, r8
	mov fp, #0
_022FA090:
	mov r1, #0
	mov r2, r1
	mov r3, r1
	b _022FA0B4
_022FA0A0:
	ldrb r0, [r5, r3]
	cmp r0, r8
	moveq r1, r4
	beq _022FA0BC
	add r3, r3, #1
_022FA0B4:
	cmp r3, r6
	blt _022FA0A0
_022FA0BC:
	mov r3, fp
	b _022FA0DC
_022FA0C4:
	add r0, r5, r3
	ldrb r0, [r0, #0x45]
	cmp r8, r0
	moveq r2, #1
	beq _022FA0E4
	add r3, r3, #1
_022FA0DC:
	cmp r3, r7
	blt _022FA0C4
_022FA0E4:
	cmp r1, r2
	beq _022FA12C
	add r0, sl, #0x90
	and r1, r8, #0xff
	bl FUN_02058DF4
	add r0, sl, #0x9c
	and r1, r8, #0xff
	bl FUN_02058DF4
	cmp sb, #0
	bne _022FA12C
	mov r0, #4
	bl FUN_02017C50
	mov r0, #0
	and r1, r8, #0xff
	bl ov29_0234B084
	ldr r1, _022FA140 @ =0x00000C1C
	mov r0, #0
	bl LogMessageByIdWithPopup
_022FA12C:
	add r8, r8, #1
	cmp r8, #0x45
	blt _022FA090
	add sp, sp, #0x90
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FA140: .4byte 0x00000C1C
	arm_func_end ov29_022FA02C

	arm_func_start ov29_022FA144
ov29_022FA144: @ 0x022FA144
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r5, [r7, #0xb4]
	ldr r0, _022FA1CC @ =0x000003E7
	ldrsh r4, [r5, #0xe]
	mov r6, r2
	add r1, r4, r1
	strh r1, [r5, #0xe]
	ldrsh r1, [r5, #0xe]
	cmp r1, r0
	strhgt r0, [r5, #0xe]
	cmp r6, #0
	bne _022FA1B0
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrsh r0, [r5, #0xe]
	cmp r4, r0
	bne _022FA1A4
	ldr r1, _022FA1D0 @ =0x00000C27
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022FA1B0
_022FA1A4:
	ldr r1, _022FA1D4 @ =0x00000C26
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_022FA1B0:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl ov29_022FA02C
	mov r0, r7
	bl ov29_023021F0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FA1CC: .4byte 0x000003E7
_022FA1D0: .4byte 0x00000C27
_022FA1D4: .4byte 0x00000C26
	arm_func_end ov29_022FA144

	arm_func_start ov29_022FA1D8
ov29_022FA1D8: @ 0x022FA1D8
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb4]
	mov r5, r1
	ldrb r1, [r4, #7]
	cmp r1, #0
	beq _022FA210
	ldrsh r1, [r6, #4]
	add r0, r4, #0x100
	strh r1, [r0, #0x7e]
	ldrsh r1, [r6, #6]
	add r1, r1, #1
	strh r1, [r0, #0x80]
	b _022FA27C
_022FA210:
	ldrb r1, [r4, #0x16a]
	cmp r1, #0xff
	beq _022FA274
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	ldrb r2, [r4, #0x16a]
	ldr r1, _022FA2E8 @ =0x0235171C
	add r0, r4, #0x100
	strb r2, [r4, #0x4c]
	lsl r2, r2, #2
	ldrsh r3, [r1, r2]
	ldrsh ip, [r6, #4]
	ldr r2, _022FA2EC @ =0x0235171E
	mov r1, #0xff
	add r3, ip, r3
	strh r3, [r0, #0x7e]
	ldrb r3, [r4, #0x4c]
	ldrsh ip, [r6, #6]
	lsl r3, r3, #2
	ldrsh r2, [r2, r3]
	add r2, ip, r2
	strh r2, [r0, #0x80]
	strb r1, [r4, #0x16a]
	b _022FA27C
_022FA274:
	mov r1, r2
	bl FUN_01FFA3C4
_022FA27C:
	add r0, r4, #0x100
	ldrsh r1, [r0, #0x7e]
	cmp r1, #0
	ldrsheq r0, [r0, #0x80]
	cmpeq r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, r6
	mov r1, #1
	bl ov29_02300818
	cmp r0, #0
	beq _022FA2B8
	mov r0, r6
	bl ov29_02300CB0
	cmp r0, #0
	popne {r4, r5, r6, pc}
_022FA2B8:
	add r1, r4, #0x7e
	add r0, r6, #4
	add r1, r1, #0x100
	bl GetDirectionTowardsPosition
	mov r1, r0
	and r0, r1, #7
	strb r0, [r4, #0x4c]
	cmp r5, #0
	popeq {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02304A48
	pop {r4, r5, r6, pc}
	.align 2, 0
_022FA2E8: .4byte 0x0235171C
_022FA2EC: .4byte 0x0235171E
	arm_func_end ov29_022FA1D8

	arm_func_start ov29_022FA2F0
ov29_022FA2F0: @ 0x022FA2F0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr sb, _022FA35C @ =0x02353538
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
_022FA308:
	ldr r0, [sb]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb78]
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	beq _022FA34C
	cmp r7, #0
	ldrne r0, [r4, #0xb4]
	ldrbne r0, [r0, #0xbc]
	cmpne r0, #7
	bne _022FA34C
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl ov29_022FA1D8
_022FA34C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022FA308
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FA35C: .4byte 0x02353538
	arm_func_end ov29_022FA2F0

	arm_func_start ov29_022FA360
ov29_022FA360: @ 0x022FA360
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	ldr r4, [r6, #0xb4]
	and r1, r5, #7
	mov r0, r6
	strb r1, [r4, #0x4c]
	bl GetSleepAnimationId
	mov r1, r0
	ldrb r2, [r4, #0x4c]
	mov r0, r6
	bl ov29_023049A8
	pop {r4, r5, r6, pc}
	arm_func_end ov29_022FA360

	arm_func_start ov29_022FA3A0
ov29_022FA3A0: @ 0x022FA3A0
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #4
	bl GetDirectionTowardsPosition
	and r1, r0, #0xff
	mov r0, r5
	bl ov29_022FA360
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022FA3A0

	arm_func_start ov29_022FA3D4
ov29_022FA3D4: @ 0x022FA3D4
	push {r4, r5, r6, lr}
	ldr r1, _022FA414 @ =0x02353538
	mov r4, r0
	ldr r0, [r1]
	mov r6, #0
	add r0, r0, #0x328
	add r5, r0, #0x12800
_022FA3F0:
	ldr r0, [r5, r6, lsl #2]
	mov r1, r4
	bl ov29_022FA3A0
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	cmp r6, #4
	blt _022FA3F0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022FA414: .4byte 0x02353538
	arm_func_end ov29_022FA3D4

	arm_func_start ov29_022FA418
ov29_022FA418: @ 0x022FA418
	push {r3, lr}
	bl ov29_023361D4
	cmp r0, #0
	popeq {r3, pc}
	bl ov29_022EF938
	pop {r3, pc}
	arm_func_end ov29_022FA418

	arm_func_start ShouldMonsterHeadToStairs
ShouldMonsterHeadToStairs: @ 0x022FA430
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	bl GetStairsRoom
	mov r5, r0
	ldrsh r0, [sl, #4]
	ldrsh r1, [sl, #6]
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r5, r0
	bne _022FA514
	ldr r1, _022FA51C @ =0x02353538
	add r0, sl, #4
	ldr r1, [r1]
	add r1, r1, #0xe4
	add r1, r1, #0xcc00
	bl GetChebyshevDistance
	ldr r7, _022FA520 @ =0x00002710
	ldr r4, _022FA51C @ =0x02353538
	mov r6, r0
	mov r8, #0
_022FA480:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022FA4E8
	mov r0, sl
	mov r1, sb
	bl ov29_023018AC
	cmp r0, #1
	bne _022FA4E8
	ldrsh r0, [sb, #4]
	ldrsh r1, [sb, #6]
	bl GetTile
	ldrb r0, [r0, #7]
	cmp r5, r0
	bne _022FA4E8
	ldr r1, [r4]
	add r0, sb, #4
	add r1, r1, #0xe4
	add r1, r1, #0xcc00
	bl GetChebyshevDistance
	cmp r0, r7
	movlt r7, r0
_022FA4E8:
	add r8, r8, #1
	cmp r8, #0x14
	blt _022FA480
	ldr r0, _022FA520 @ =0x00002710
	cmp r7, r0
	beq _022FA50C
	beq _022FA514
	cmp r7, r6
	ble _022FA514
_022FA50C:
	mov r0, #1
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_022FA514:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FA51C: .4byte 0x02353538
_022FA520: .4byte 0x00002710
	arm_func_end ShouldMonsterHeadToStairs

	arm_func_start ov29_022FA524
ov29_022FA524: @ 0x022FA524
	push {r4, r5, r6, lr}
	ldr r4, _022FA570 @ =0x02353538
	mov r5, #0
_022FA530:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022FA560
	ldr r1, [r6, #0xb4]
	mov r0, r6
	ldrb r1, [r1, #0x4c]
	bl ov29_02304A48
_022FA560:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022FA530
	pop {r4, r5, r6, pc}
	.align 2, 0
_022FA570: .4byte 0x02353538
	arm_func_end ov29_022FA524

	arm_func_start ov29_022FA574
ov29_022FA574: @ 0x022FA574
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r5, #0xb4]
	mov r1, r4
	add r0, r0, #0x124
	bl FUN_0201405C
	cmp r0, #0
	bne _022FA5B4
	ldr r1, _022FA5E4 @ =0x00000C1D
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, pc}
_022FA5B4:
	cmp r0, #1
	bne _022FA5CC
	ldr r1, _022FA5E8 @ =0x00000C1E
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, pc}
_022FA5CC:
	cmp r0, #2
	popne {r3, r4, r5, pc}
	ldr r1, _022FA5EC @ =0x00000C1F
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FA5E4: .4byte 0x00000C1D
_022FA5E8: .4byte 0x00000C1E
_022FA5EC: .4byte 0x00000C1F
	arm_func_end ov29_022FA574

	arm_func_start MewSpawnCheck
MewSpawnCheck: @ 0x022FA5F0
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_0204D360
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r5, #0x97
	bne _022FA63C
	ldr r0, _022FA644 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xe39]
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	cmp r4, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
_022FA63C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FA644: .4byte 0x02353538
	arm_func_end MewSpawnCheck

	arm_func_start ov29_022FA648
ov29_022FA648: @ 0x022FA648
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, #0
	mov r6, #1
	mov fp, r6
	mov r5, r7
_022FA65C:
	ldr r0, _022FA74C @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022FA730
	ldr sl, [r8, #0xb4]
	ldrb r1, [sl, #7]
	ldrsh r0, [sl, #0xc]
	cmp r1, #0
	beq _022FA6C4
	strb r6, [sl, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	bl ov29_022E0A04
	cmp r0, #1
	mov r0, r8
	bne _022FA6B8
	bl ov29_022E68D8
	b _022FA6BC
_022FA6B8:
	bl ov29_022E68BC
_022FA6BC:
	strb r5, [r8, #0x20]
	b _022FA730
_022FA6C4:
	cmp r0, #0
	blt _022FA730
	mov sb, #0
	bl FUN_0205638C
	mov r4, r0
	bl ov29_022E0A04
	cmp r0, #0
	movne sb, #1
	bne _022FA70C
	ldrsh r0, [r4, #8]
	bl FUN_02056264
	cmp r0, #0
	movne sb, #1
	bne _022FA70C
	ldrsh r0, [r4, #8]
	bl FUN_02056294
	cmp r0, #0
	movne sb, #1
_022FA70C:
	cmp sb, #0
	beq _022FA730
	strb fp, [sl, #0x165]
	bl ov29_022E8104
	bl ov29_022E81F8
	mov r0, r8
	bl ov29_022E68BC
	mov r0, #0
	strb r0, [r8, #0x20]
_022FA730:
	add r7, r7, #1
	cmp r7, #4
	blt _022FA65C
	mov r0, #0x1e
	mov r1, #0x4a
	bl ov29_022EA370
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FA74C: .4byte 0x02353538
	arm_func_end ov29_022FA648

	arm_func_start ov29_022FA750
ov29_022FA750: @ 0x022FA750
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r6, #0
	ldr r4, _022FA7D8 @ =0x02353538
	mov r5, r6
_022FA760:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022FA7C8
	ldr sb, [r8, #0xb4]
	mov r7, r5
_022FA788:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb78]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	cmpne r8, sl
	beq _022FA7BC
	ldrh r1, [sb, #0x80]
	ldrh r0, [sl, #0x26]
	cmp r1, r0
	streq sl, [sb, #0x84]
_022FA7BC:
	add r7, r7, #1
	cmp r7, #0x14
	blt _022FA788
_022FA7C8:
	add r6, r6, #1
	cmp r6, #0x14
	blt _022FA760
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FA7D8: .4byte 0x02353538
	arm_func_end ov29_022FA750

	arm_func_start ov29_022FA7DC
ov29_022FA7DC: @ 0x022FA7DC
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r2, #0x16
	mov r3, #1
	mov r6, r0
	ldr r4, [r5, #0xb4]
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _022FA81C
	ldrb r0, [r4, #0xbf]
	cmp r0, #4
	bne _022FA81C
	mov r0, r6
	mov r1, r5
	bl ov29_023061A8
_022FA81C:
	mov r0, r6
	mov r1, r5
	mov r2, #0x40
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _022FA850
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	bne _022FA850
	mov r0, r6
	mov r1, r5
	bl EndCringeClassStatus
_022FA850:
	mov r0, r6
	mov r1, r5
	mov r2, #0x42
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _022FA884
	ldrb r0, [r4, #0xbf]
	cmp r0, #1
	bne _022FA884
	mov r0, r6
	mov r1, r5
	bl ov29_023061A8
_022FA884:
	mov r0, r6
	mov r1, r5
	mov r2, #0x29
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _022FA8B8
	ldrb r0, [r4, #0xd0]
	cmp r0, #7
	bne _022FA8B8
	mov r0, r6
	mov r1, r5
	bl EndCringeClassStatus
_022FA8B8:
	mov r0, r6
	mov r1, r5
	mov r2, #0x36
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	bne _022FA8F0
	mov r0, r6
	mov r1, r5
	mov r2, #0x49
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _022FA924
_022FA8F0:
	mov r0, r5
	bl ov29_023007A8
	cmp r0, #0
	bne _022FA90C
	ldrb r0, [r4, #0xbd]
	cmp r0, #4
	bne _022FA924
_022FA90C:
	mov r3, #1
	mov r0, r6
	mov r1, r5
	mov r2, #0
	str r3, [sp]
	bl ov29_02305FDC
_022FA924:
	mov r0, r6
	mov r1, r5
	mov r2, #0x41
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _022FA95C
	ldrb r0, [r4, #0xc4]
	cmp r0, #1
	bne _022FA95C
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl EndFrozenClassStatus
_022FA95C:
	mov r0, r6
	mov r1, r5
	mov r2, #0x45
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _022FA998
	ldrb r0, [r4, #0xbf]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022FA998
	mov r0, r6
	mov r1, r5
	bl ov29_023061A8
_022FA998:
	mov r0, r5
	mov r1, #0x25
	bl AbilityIsActive
	cmp r0, #0
	beq _022FA9CC
	mov r0, #0
	strb r0, [r4, #0xff]
	ldrb r0, [r4, #0xd5]
	cmp r0, #0xc
	bne _022FA9CC
	mov r0, r6
	mov r1, r5
	bl ov29_023064F4
_022FA9CC:
	mov r0, r5
	mov r1, #0x2b
	bl AbilityIsActive
	cmp r0, #0
	beq _022FA9FC
	ldrb r0, [r4, #0xc4]
	cmp r0, #2
	bne _022FA9FC
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl EndFrozenClassStatus
_022FA9FC:
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov29_022FA7DC

	arm_func_start ov29_022FAA04
ov29_022FAA04: @ 0x022FAA04
	ldr ip, [r0, #0xb4]
	mov r3, #0
_022FAA0C:
	add r2, ip, r3, lsl #3
	ldrb r0, [r2, #0x124]
	add r3, r3, #1
	cmp r3, #4
	bic r0, r0, #0x10
	strb r0, [r2, #0x124]
	blt _022FAA0C
	ldrb r0, [ip, #0x144]
	bic r0, r0, #0x10
	strb r0, [ip, #0x144]
	ldrh r0, [r1, #4]
	cmp r0, #0x160
	ldrbeq r0, [ip, #0x144]
	orreq r0, r0, #0x10
	strbeq r0, [ip, #0x144]
	ldrbne r0, [r1]
	orrne r0, r0, #0x10
	strbne r0, [r1]
	bx lr
	arm_func_end ov29_022FAA04

	arm_func_start ov29_022FAA58
ov29_022FAA58: @ 0x022FAA58
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r1, _022FAC90 @ =0x02353538
	mov sl, r0
	ldr r0, [r1]
	mov r6, #0
	add r0, r0, #0x328
	add r4, r0, #0x12800
_022FAA78:
	ldr r5, [r4, r6, lsl #2]
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _022FAB98
	mov r0, r5
	mov r1, #0x37
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _022FAB98
	ldr sb, [r5, #0xb4]
	mov r8, #0
	mov r7, r8
	add fp, sb, #0x124
_022FAAB0:
	ldrb r1, [fp, r7, lsl #3]
	add r0, fp, r7, lsl #3
	str r0, [sp]
	tst r1, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022FAB00
	ldr r0, [sp]
	bl GetMaxPpWrapper
	ldr r1, [sp]
	ldrb r1, [r1, #6]
	cmp r1, r0
	beq _022FAB00
	add r0, r8, #1
	lsl r1, r0, #0x10
	lsl r2, r8, #1
	add r0, sp, #4
	strh r7, [r0, r2]
	asr r8, r1, #0x10
_022FAB00:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	blt _022FAAB0
	cmp r8, #0
	ble _022FAB4C
	mov r0, r8
	bl DungeonRandInt
	lsl r0, r0, #0x10
	add r1, sp, #4
	asr r0, r0, #0xf
	ldrsh r0, [r1, r0]
	add r1, sb, #0x124
	add r1, r1, r0, lsl #3
	ldrb r0, [r1, #6]
	add r0, r0, #1
	strb r0, [r1, #6]
	b _022FAB54
_022FAB4C:
	mov r0, #0
	b _022FAB58
_022FAB54:
	mov r0, #1
_022FAB58:
	cmp r0, #0
	beq _022FAB98
	mov r0, r5
	bl ov29_022E4964
	cmp sl, #0
	bne _022FAB98
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, #1
	mov r1, #0x37
	bl ov29_0234B084
	mov r0, r5
	mov r1, #0xc20
	bl LogMessageByIdWithPopupCheckUser
_022FAB98:
	add r0, r6, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	cmp r6, #4
	blt _022FAA78
	mov r8, #0
	mov fp, r8
_022FABB4:
	ldr sb, [r4, r8, lsl #2]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022FAC74
	ldr r6, [sb, #0xb4]
	mov r7, fp
	add r5, r6, #0x124
	b _022FABFC
_022FABD8:
	add r0, r5, r7, lsl #3
	bl FUN_02013A50
	add r1, r6, r7, lsl #3
	ldrb r1, [r1, #0x12a]
	cmp r1, r0
	blt _022FAC04
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_022FABFC:
	cmp r7, #4
	blt _022FABD8
_022FAC04:
	cmp r7, #4
	beq _022FAC74
	mov r0, sb
	mov r1, #0x47
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _022FAC74
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, sb
	mov r1, #0x47
	add r2, sp, #0xc
	bl ov29_0230F654
	mov r0, #1
	add r1, sp, #0xc
	bl ov29_02344B44
	cmp sl, #0
	bne _022FAC60
	ldr r1, _022FAC94 @ =0x00000C23
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
_022FAC60:
	mov r0, sb
	mov r1, sb
	mov r2, #1
	mov r3, sl
	bl RestoreMovePP
_022FAC74:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022FABB4
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FAC90: .4byte 0x02353538
_022FAC94: .4byte 0x00000C23
	arm_func_end ov29_022FAA58

	arm_func_start ExclusiveItemEffectIsActive
ExclusiveItemEffectIsActive: @ 0x022FAC98
	push {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	popne {r3, pc}
	add r0, r2, #0x228
	bl FUN_02010FA4
	pop {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive

	arm_func_start ov29_022FACBC
ov29_022FACBC: @ 0x022FACBC
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	ldr r1, _022FAD44 @ =0x02353538
	mov sb, r0
	ldr r0, [r1]
	mov r8, #0
	add r0, r0, #0x328
	ldr r5, _022FAD48 @ =0x000003E7
	add r7, r0, #0x12800
	mov r4, r8
	mov r6, #0x48
_022FACE8:
	ldr sl, [r7, r8, lsl #2]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _022FAD28
	mov r0, sl
	mov r1, r6
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _022FAD28
	mov r0, sl
	mov r1, sl
	mov r2, r5
	mov r3, r4
	str sb, [sp]
	bl TryIncreaseHp
_022FAD28:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022FACE8
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FAD44: .4byte 0x02353538
_022FAD48: .4byte 0x000003E7
	arm_func_end ov29_022FACBC

	arm_func_start ov29_022FAD4C
ov29_022FAD4C: @ 0x022FAD4C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _022FAF00 @ =0x02353538
	mov r8, #0
	ldr r1, [r1]
	sub r3, r8, #1
	add r2, r1, #0xcc00
	ldrsh r4, [r2, #0xe4]
	add r1, r1, #0x328
	add r5, r1, #0x12800
	cmp r4, r3
	ldrsheq r1, [r2, #0xe6]
	mov sb, r0
	moveq r0, r3
	cmpeq r1, r0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r7, #0
	mov r4, #0x1a
	b _022FADE4
_022FAD94:
	ldr r6, [r5, r7, lsl #2]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _022FADD8
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #0x48]
	cmp r0, #0xd9
	blo _022FADC0
	cmp r0, #0xe4
	blo _022FADD8
_022FADC0:
	mov r0, r6
	mov r1, r4
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r8, #1
	bne _022FADEC
_022FADD8:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_022FADE4:
	cmp r7, #4
	blt _022FAD94
_022FADEC:
	cmp r8, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	bl GetFloorType
	cmp r0, #0
	bne _022FAEEC
	cmp sb, #0
	bne _022FAE14
	ldr r1, _022FAF04 @ =0x00000C21
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
_022FAE14:
	bl GetLeader
	mov r5, r0
	add r0, sp, #0
	add r1, sp, #2
	mov r4, #0
	bl ov29_023363C0
	ldrsh r1, [sp]
	ldrsh r3, [r5, #4]
	ldrsh r2, [sp, #2]
	cmp r3, r1
	ldrsheq r0, [r5, #6]
	cmpeq r0, r2
	cmp r3, r1
	bne _022FAE58
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movlt r4, #0
_022FAE58:
	cmp r3, r1
	ldrshlt r0, [r5, #6]
	cmplt r0, r2
	movlt r4, #1
	cmp r3, r1
	bge _022FAE7C
	ldrsh r0, [r5, #6]
	cmp r0, r2
	moveq r4, #2
_022FAE7C:
	cmp r3, r1
	bge _022FAE90
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movgt r4, #3
_022FAE90:
	cmp r3, r1
	bne _022FAEA4
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movgt r4, #4
_022FAEA4:
	cmp r3, r1
	ldrshgt r0, [r5, #6]
	cmpgt r0, r2
	movgt r4, #5
	cmp r3, r1
	ble _022FAEC8
	ldrsh r0, [r5, #6]
	cmp r0, r2
	moveq r4, #6
_022FAEC8:
	cmp r3, r1
	ble _022FAEDC
	ldrsh r0, [r5, #6]
	cmp r0, r2
	movlt r4, #7
_022FAEDC:
	mov r0, r5
	mov r1, r4
	bl ov29_022E6928
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FAEEC:
	bl GetFloorType
	cmp r0, #1
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	bl GetFloorType
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FAF00: .4byte 0x02353538
_022FAF04: .4byte 0x00000C21
	arm_func_end ov29_022FAD4C

	arm_func_start ov29_022FAF08
ov29_022FAF08: @ 0x022FAF08
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _022FAFC8 @ =0x02353538
	mov r6, r0
	ldr r0, [r1]
	mov r5, #0
	add r0, r0, #0x328
	add r8, r0, #0x12800
	bl ov29_022E0880
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	mov sb, r5
	mov r7, #0x36
	b _022FAF74
_022FAF3C:
	ldr r4, [r8, sb, lsl #2]
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	beq _022FAF68
	mov r0, r4
	mov r1, r7
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r5, #1
	bne _022FAF7C
_022FAF68:
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
_022FAF74:
	cmp sb, #4
	blt _022FAF3C
_022FAF7C:
	cmp r5, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _022FAFC8 @ =0x02353538
	ldr r0, _022FAFCC @ =0x00012AF8
	ldr r1, [r1]
	ldrsh r1, [r1, r0]
	cmp r1, #0
	pople {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	bl ov29_0234B09C
	ldr r1, _022FAFD0 @ =0x00000C22
	mov r0, r4
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #0x78
	mov r1, #0xa
	bl ov29_022EA370
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FAFC8: .4byte 0x02353538
_022FAFCC: .4byte 0x00012AF8
_022FAFD0: .4byte 0x00000C22
	arm_func_end ov29_022FAF08

	arm_func_start ov29_022FAFD4
ov29_022FAFD4: @ 0x022FAFD4
	push {r3, lr}
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov29_022FAFD4

	arm_func_start GetTeamMemberWithIqSkill
GetTeamMemberWithIqSkill: @ 0x022FAFF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _022FB060 @ =0x02353538
	mov r4, #0
	ldr r1, [r1]
	mov r5, r0
	add r0, r1, #0x328
	mov r7, r4
	add r6, r0, #0x12800
	b _022FB050
_022FB01C:
	ldr r0, [r6, r7, lsl #2]
	bl EntityIsValid
	cmp r0, #0
	beq _022FB044
	ldr r0, [r6, r7, lsl #2]
	mov r1, r5
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r4, [r6, r7, lsl #2]
	bne _022FB058
_022FB044:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_022FB050:
	cmp r7, #4
	blt _022FB01C
_022FB058:
	mov r0, r4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FB060: .4byte 0x02353538
	arm_func_end GetTeamMemberWithIqSkill

	arm_func_start TeamMemberHasEnabledIqSkill
TeamMemberHasEnabledIqSkill: @ 0x022FB064
	push {r3, lr}
	bl GetTeamMemberWithIqSkill
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end TeamMemberHasEnabledIqSkill

	arm_func_start TeamLeaderIqSkillIsEnabled
TeamLeaderIqSkillIsEnabled: @ 0x022FB080
	push {r4, lr}
	mov r4, r0
	bl GetLeader
	mov r1, r4
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end TeamLeaderIqSkillIsEnabled

	arm_func_start ov29_022FB0A8
ov29_022FB0A8: @ 0x022FB0A8
	push {r3, lr}
	ldr ip, [r0, #0xb4]
	mov r0, #0
	mov lr, r0
	mov r2, r0
	mov r3, #1
_022FB0C0:
	add r1, ip, lr, lsl #3
	ldrb r1, [r1, #0x124]
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	beq _022FB0F4
	add r1, ip, lr, lsl #3
	ldrb r1, [r1, #0x12a]
	cmp r1, #0
	addeq r0, r0, #1
	lsleq r0, r0, #0x10
	asreq r0, r0, #0x10
_022FB0F4:
	add r1, lr, #1
	lsl r1, r1, #0x10
	asr lr, r1, #0x10
	cmp lr, #4
	blt _022FB0C0
	pop {r3, pc}
	arm_func_end ov29_022FB0A8

	arm_func_start ov29_022FB10C
ov29_022FB10C: @ 0x022FB10C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldr r6, [sb, #0xb4]
	mov r7, #0
	mov sl, r0
	mov r8, r2
	add r4, r6, #0x124
	mov fp, r7
	mov r5, #1
	b _022FB198
_022FB134:
	add r0, r6, r7, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r5
	moveq r0, fp
	tst r0, #0xff
	beq _022FB18C
	cmp r8, #0
	beq _022FB168
	add r0, r4, r7, lsl #3
	bl ov29_02324798
	cmp r0, #0
	beq _022FB18C
_022FB168:
	add r0, r4, r7, lsl #3
	bl FUN_02013864
	mov r2, r0
	mov r0, sb
	mov r1, sl
	bl ov29_0230AA8C
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022FB18C:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_022FB198:
	cmp r7, #4
	blt _022FB134
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_022FB10C

	arm_func_start ov29_022FB1A8
ov29_022FB1A8: @ 0x022FB1A8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, [r0, #0xb4]
	mov r4, r7
	mov r5, #1
	b _022FB204
_022FB1C0:
	add r0, r6, r7, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022FB1F8
	add r0, r6, r7, lsl #3
	add r0, r0, #0x100
	ldrh r0, [r0, #0x28]
	bl FUN_02014E00
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
_022FB1F8:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_022FB204:
	cmp r7, #4
	blt _022FB1C0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FB1A8

	arm_func_start ov29_022FB214
ov29_022FB214: @ 0x022FB214
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	mov sl, r0
	mov sb, r1
	mov r5, #0
	bl EntityIsValid
	cmp r0, #0
	beq _022FB244
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	bne _022FB24C
_022FB244:
	mov r0, #0
	b _022FB508
_022FB24C:
	ldr r4, [sb, #0xb4]
	ldrb r0, [r4, #6]
	cmp r0, #0
	ldrsh r0, [r4, #0x66]
	beq _022FB31C
	cmp r0, #0
	beq _022FB504
	ldrsh r0, [r4, #0x66]
	bl ov29_0231E990
	cmp r0, #0
	beq _022FB504
	mov r0, sl
	add r1, r4, #0x62
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022FB504
	mov r0, r5
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r5
	bl SubstitutePlaceholderStringTags
	add r1, r4, #0x62
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _022FB510 @ =0x00000C24
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrh r2, [r4, #0x62]
	mov r0, sl
	add r1, r4, #0x62
	strh r2, [sp, #8]
	ldrh r2, [r4, #0x64]
	strh r2, [sp, #0xa]
	ldrh r2, [r4, #0x66]
	strh r2, [sp, #0xc]
	bl ov29_0230F9A4
	add r0, r4, #0x62
	bl FUN_0200D81C
	mov r0, r5
	str sl, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r3, sb
	mov r1, r0
	mov r2, r0
	bl ApplyItemEffect
	mov r5, #1
	b _022FB504
_022FB31C:
	bl ov29_0231E990
	cmp r0, #0
	beq _022FB3D4
	mov r0, sl
	add r1, r4, #0x62
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022FB504
	mov r0, r5
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r5
	bl SubstitutePlaceholderStringTags
	add r1, r4, #0x62
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _022FB510 @ =0x00000C24
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrh r2, [r4, #0x62]
	mov r0, sl
	add r1, r4, #0x62
	strh r2, [sp, #8]
	ldrh r2, [r4, #0x64]
	strh r2, [sp, #0xa]
	ldrh r2, [r4, #0x66]
	strh r2, [sp, #0xc]
	bl ov29_0230F9A4
	add r0, r4, #0x62
	bl FUN_0200F558
	add r0, r4, #0x62
	bl FUN_0200D81C
	mov r0, r5
	str sl, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	mov r3, sb
	mov r1, r0
	mov r2, r0
	bl ApplyItemEffect
	mov r5, #1
	b _022FB504
_022FB3D4:
	bl FUN_0200EDFC
	mov r7, r0
	mov r6, r5
	add r4, sp, #0xe
	b _022FB3F8
_022FB3E8:
	mov r0, r7
	bl FUN_02002274
	strb r0, [r4, r6]
	add r6, r6, #1
_022FB3F8:
	cmp r6, r7
	blt _022FB3E8
	add r0, sp, #0xe
	mov r1, #0
	add r0, r0, r7
	b _022FB418
_022FB410:
	strb r1, [r0, r1]
	add r1, r1, #1
_022FB418:
	cmp r1, r7
	blt _022FB410
	mov r8, #0
	add r4, sp, #0xe
	ldr fp, _022FB514 @ =0x020AF6B8
	b _022FB4FC
_022FB430:
	ldrb r1, [r4, r8]
	ldr r3, [fp]
	mov r0, #6
	smulbb r2, r1, r0
	ldr r1, [r3, #0x384]
	ldrb r0, [r1, r2]
	add r6, r1, r2
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022FB4F8
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _022FB4F8
	ldrsh r0, [r6, #4]
	bl ov29_0231E990
	cmp r0, #0
	beq _022FB4F8
	mov r0, sl
	mov r1, r6
	bl ov29_0231D4A4
	cmp r0, #0
	beq _022FB504
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r1, r6
	mov r0, #1
	bl ov29_02344B44
	mov r0, sl
	mov r1, sb
	ldr r2, _022FB518 @ =0x00000C25
	bl LogMessageByIdWithPopupCheckUserTarget
	str sl, [sp]
	mov r3, sb
	str r6, [sp, #4]
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl ApplyItemEffect
	mov r0, r6
	bl FUN_0200F558
	mov r5, #1
	b _022FB504
_022FB4F8:
	add r8, r8, #1
_022FB4FC:
	cmp r8, r7, lsl #1
	blt _022FB430
_022FB504:
	mov r0, r5
_022FB508:
	add sp, sp, #0x74
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FB510: .4byte 0x00000C24
_022FB514: .4byte 0x020AF6B8
_022FB518: .4byte 0x00000C25
	arm_func_end ov29_022FB214

	arm_func_start ov29_022FB51C
ov29_022FB51C: @ 0x022FB51C
	push {r3, lr}
	bl FUN_0204CB94
	cmp r0, #2
	movhs r0, #1
	movlo r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov29_022FB51C

	arm_func_start ov29_022FB538
ov29_022FB538: @ 0x022FB538
	push {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r5, [r6, #0xb4]
	mov r4, #0
	ldr r7, _022FB5E8 @ =0x02353538
	strb r4, [r5, #0x10c]
	ldr r0, [r7]
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xe38]
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	b _022FB5DC
_022FB574:
	ldr r0, [r7]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	cmpne r8, r6
	beq _022FB5D8
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #2
	bne _022FB5D8
	mov r0, r6
	mov r1, r8
	bl ov29_022E274C
	cmp r0, #0
	beq _022FB5D8
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xd9]
	cmp r0, #0
	movne r0, #2
	moveq r0, #1
	strb r0, [r5, #0x10c]
	pop {r4, r5, r6, r7, r8, pc}
_022FB5D8:
	add r4, r4, #1
_022FB5DC:
	cmp r4, #0x14
	blt _022FB574
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FB5E8: .4byte 0x02353538
	arm_func_end ov29_022FB538

	arm_func_start ov29_022FB5EC
ov29_022FB5EC: @ 0x022FB5EC
	push {r4, lr}
	bl FUN_02052B44
	mov r4, r0
	bl GetScenarioBalance
	cmp r4, r0
	movls r0, #1
	movhi r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end ov29_022FB5EC

	arm_func_start HasLowHealth
HasLowHealth: @ 0x022FB610
	push {r4, lr}
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldr r0, [r4]
	cmp r0, #1
	movne r0, #0
	popne {r4, pc}
	ldr r3, [r4, #0xb4]
	ldr r0, _022FB674 @ =0x000003E7
	ldrsh r2, [r3, #0x12]
	ldrsh r1, [r3, #0x16]
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	asr r0, r2, #1
	ldrsh r1, [r3, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movlt r0, #1
	movge r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	.align 2, 0
_022FB674: .4byte 0x000003E7
	arm_func_end HasLowHealth

	arm_func_start ov29_022FB678
ov29_022FB678: @ 0x022FB678
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
	ldr r4, _022FB6E0 @ =0x0235171C
	b _022FB6D0
_022FB690:
	lsl r1, r5, #2
	add r0, r4, r5, lsl #2
	ldrsh r3, [r4, r1]
	ldrsh ip, [r7, #4]
	ldrsh r1, [r0, #2]
	ldrsh r2, [r7, #6]
	add r0, ip, r3
	add r1, r2, r1
	bl GetTile
	ldr r0, [r0, #0xc]
	cmp r0, r6
	moveq r0, #1
	popeq {r3, r4, r5, r6, r7, pc}
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_022FB6D0:
	cmp r5, #8
	blt _022FB690
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FB6E0: .4byte 0x0235171C
	arm_func_end ov29_022FB678

	arm_func_start ov29_022FB6E4
ov29_022FB6E4: @ 0x022FB6E4
	push {r4, lr}
	mov r4, r0
	bl IsMonster
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0x48]
	cmp r0, #0xd6
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end ov29_022FB6E4

	arm_func_start ov29_022FB718
ov29_022FB718: @ 0x022FB718
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr sb, [sl, #0xb4]
	mov r1, #0
	mov r0, sl
	strh r1, [sb, #0x16]
	bl Conversion2IsActive
	mov r6, r0
	mov r0, sl
	mov r1, #0x38
	ldr r4, [sl, #0xb4]
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrne r0, _022FB834 @ =0x020A1870
	mov r8, #0
	ldrshne r1, [r4, #0x16]
	ldrshne r0, [r0]
	add r5, r4, #0x124
	mov fp, r8
	addne r0, r1, r0
	strhne r0, [r4, #0x16]
	mov r4, #1
_022FB77C:
	ldrb r0, [r5, r8, lsl #3]
	add r7, r5, r8, lsl #3
	tst r0, #1
	movne r0, r4
	moveq r0, fp
	tst r0, #0xff
	beq _022FB7C0
	ldrh r2, [r7, #2]
	mov r0, sl
	mov r1, #0x39
	bic r2, r2, #0x100
	strh r2, [r7, #2]
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrhne r0, [r7, #2]
	orrne r0, r0, #0x100
	strhne r0, [r7, #2]
_022FB7C0:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022FB77C
	mov r0, sl
	bl ov29_02348100
	cmp r6, #2
	bne _022FB7FC
	mov r0, sl
	bl Conversion2IsActive
	cmp r0, #0
	bne _022FB7FC
	mov r0, sl
	bl ov29_02307CE0
_022FB7FC:
	ldrsh r1, [sb, #0x12]
	ldrsh r0, [sb, #0x16]
	ldr r2, _022FB838 @ =0x000003E7
	add r1, r1, r0
	cmp r1, r2
	ldrsh r0, [sb, #0x10]
	movle r2, r1
	cmp r0, r2
	pople {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022FB838 @ =0x000003E7
	cmp r1, r0
	movgt r1, r0
	strh r1, [sb, #0x10]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FB834: .4byte 0x020A1870
_022FB838: .4byte 0x000003E7
	arm_func_end ov29_022FB718

	arm_func_start ov29_022FB83C
ov29_022FB83C: @ 0x022FB83C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov sb, r1
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r8, [sl, #0xb4]
	mov r7, #0
	add r6, r8, #0x124
	mov r4, r7
	mov r5, #1
_022FB868:
	ldrb r0, [r6, r7, lsl #3]
	lsl r1, r7, #3
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022FB88C
	add r0, r6, r1
	bl FUN_02013A30
_022FB88C:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	blt _022FB868
	mov r0, sl
	bl ov29_022FB718
	cmp sb, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrsh r2, [r8, #0x12]
	ldrsh r1, [r8, #0x16]
	ldr r0, _022FB91C @ =0x000003E7
	mov sb, #0
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r8, #0x10]
	add r6, r8, #0x124
	mov r4, sb
	mov r5, #1
_022FB8DC:
	ldrb r0, [r6, sb, lsl #3]
	add r7, r6, sb, lsl #3
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	beq _022FB904
	mov r0, r7
	bl FUN_02013A50
	strb r0, [r7, #6]
_022FB904:
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
	cmp sb, #4
	blt _022FB8DC
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FB91C: .4byte 0x000003E7
	arm_func_end ov29_022FB83C

	arm_func_start ov29_022FB920
ov29_022FB920: @ 0x022FB920
	push {r3, r4, r5, lr}
	ldr r4, _022FB980 @ =0x02353538
	mov r5, #0
_022FB92C:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl ov29_022FB718
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	cmp r5, #4
	blt _022FB92C
	mov r0, #0x41
	bl TeamMemberHasEnabledIqSkill
	cmp r0, #0
	ldrne r0, _022FB980 @ =0x02353538
	movne r1, #1
	ldreq r0, _022FB980 @ =0x02353538
	moveq r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1a000
	strb r1, [r0, #0x241]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FB980: .4byte 0x02353538
	arm_func_end ov29_022FB920

	arm_func_start ov29_022FB984
ov29_022FB984: @ 0x022FB984
	mov r0, #0
	bx lr
	arm_func_end ov29_022FB984

	arm_func_start ov29_022FB98C
ov29_022FB98C: @ 0x022FB98C
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #1
	ldr r0, _022FB9B8 @ =0x0000270F
	mov r4, r1
	sub r3, r2, #2
	bl ov29_022EA718
	mov r0, r5
	mov r1, r4
	bl ov29_022E576C
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FB9B8: .4byte 0x0000270F
	arm_func_end ov29_022FB98C

	arm_func_start ov29_022FB9BC
ov29_022FB9BC: @ 0x022FB9BC
	push {r3, lr}
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbc]
	bl ov29_022EFB04
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov29_022FB9BC

	arm_func_start ov29_022FB9E0
ov29_022FB9E0: @ 0x022FB9E0
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsMonster
	cmp r0, #0
	beq _022FBA4C
	ldr r1, [r5, #0xb4]
	mov r0, #0
	add ip, r1, #0x124
	mov r2, r0
	mov r3, #1
	b _022FBA44
_022FBA10:
	ldrb r1, [ip, r0, lsl #3]
	add lr, ip, r0, lsl #3
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	beq _022FBA38
	ldrh r1, [lr, #4]
	cmp r1, r4
	popeq {r3, r4, r5, pc}
_022FBA38:
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_022FBA44:
	cmp r0, #4
	blt _022FBA10
_022FBA4C:
	mvn r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022FB9E0

	arm_func_start ov29_022FBA54
ov29_022FBA54: @ 0x022FBA54
	push {r3, lr}
	bl ov29_022FB9E0
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov29_022FBA54

	arm_func_start ov29_022FBA70
ov29_022FBA70: @ 0x022FBA70
	push {r4, lr}
	mov r4, r0
	bl IsMonster
	cmp r0, #0
	beq _022FBAAC
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0x48]
	cmp r0, #0xfa
	moveq r0, #1
	popeq {r4, pc}
	cmp r0, #0xd9
	blo _022FBAAC
	cmp r0, #0xe4
	movlo r0, #1
	poplo {r4, pc}
_022FBAAC:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov29_022FBA70

	arm_func_start ov29_022FBAB4
ov29_022FBAB4: @ 0x022FBAB4
	ldr r2, [r0, #0xb4]
	cmp r2, #0
	addne r0, r2, #0x100
	movne r1, #0
	strhne r1, [r0, #0x92]
	strne r1, [r2, #0x18c]
	bx lr
	arm_func_end ov29_022FBAB4

	arm_func_start IsSpecialStoryAlly
IsSpecialStoryAlly: @ 0x022FBAD0
	ldrb r0, [r0, #0x48]
	cmp r0, #0xd9
	blo _022FBAE8
	cmp r0, #0xe4
	movlo r0, #1
	bxlo lr
_022FBAE8:
	mov r0, #0
	bx lr
	arm_func_end IsSpecialStoryAlly

	arm_func_start IsExperienceLocked
IsExperienceLocked: @ 0x022FBAF0
	push {r3, lr}
	ldrb r1, [r0, #0x48]
	cmp r1, #0xfa
	moveq r0, #1
	popeq {r3, pc}
	bl IsSpecialStoryAlly
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end IsExperienceLocked

	arm_func_start ov29_022FBB1C
ov29_022FBB1C: @ 0x022FBB1C
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	ldr r4, _022FBBE4 @ =0x02353538
	ldr sl, _022FBBE8 @ =0x00019914
	mov r7, #0
	add r6, sp, #0
	mov r5, #3
_022FBB38:
	ldr r0, [r4]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _022FBBD0
	ldr sb, [r8, #0xb4]
	ldr r2, [r4]
	ldrsh r1, [sb, #4]
	add r0, r8, #0x2c
	add r1, r2, r1, lsl #1
	ldrsh r1, [r1, sl]
	strh r1, [r8, #0xa8]
	bl FUN_0201C0CC
	ldrsh r1, [r8, #0xa8]
	add r0, r8, #0x2c
	bl FUN_0201C0E8
	mov r0, r8
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r8
	bl ov29_02304830
	ldrh r0, [r8, #4]
	mov r2, r6
	mov r3, r5
	strh r0, [sp]
	ldrh r0, [r8, #6]
	strh r0, [sp, #2]
	ldr r0, [sb, #0xb0]
	ldrsh r1, [sb, #4]
	bl ov29_022DDA54
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTileSafe
	ldrb r0, [r0, #7]
	strb r0, [r8, #0x25]
_022FBBD0:
	add r7, r7, #1
	cmp r7, #0x14
	blt _022FBB38
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FBBE4: .4byte 0x02353538
_022FBBE8: .4byte 0x00019914
	arm_func_end ov29_022FBB1C

	arm_func_start ov29_022FBBEC
ov29_022FBBEC: @ 0x022FBBEC
	push {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	ldr r6, _022FBC48 @ =0x02353538
	b _022FBC38
_022FBC00:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _022FBC34
	ldr r0, [r7, #0xb4]
	ldrb r0, [r0, #0xbc]
	cmp r5, r0
	moveq r0, r7
	popeq {r3, r4, r5, r6, r7, pc}
_022FBC34:
	add r4, r4, #1
_022FBC38:
	cmp r4, #0x14
	blt _022FBC00
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FBC48: .4byte 0x02353538
	arm_func_end ov29_022FBBEC

	arm_func_start ov29_022FBC4C
ov29_022FBC4C: @ 0x022FBC4C
	push {r3, r4, r5, lr}
	mov r5, #0
	ldr r4, _022FBC90 @ =0x02353538
	b _022FBC80
_022FBC5C:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	add r5, r5, #1
_022FBC80:
	cmp r5, #4
	blt _022FBC5C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FBC90: .4byte 0x02353538
	arm_func_end ov29_022FBC4C

	arm_func_start ov29_022FBC94
ov29_022FBC94: @ 0x022FBC94
	push {r4, r5, r6, lr}
	bl FUN_020527C4
	ldr r6, _022FBD04 @ =0x02353538
	mov r4, r0
	mov r5, #0
_022FBCA8:
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl EntityIsValid
	cmp r0, #0
	beq _022FBCE4
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	ldr r0, [r0, #0xb4]
	ldrsh r0, [r0, #2]
	bl FUN_020527C4
	add r4, r4, r0
_022FBCE4:
	add r5, r5, #1
	cmp r5, #4
	blt _022FBCA8
	cmp r4, #6
	movle r0, #1
	movgt r0, #0
	and r0, r0, #0xff
	pop {r4, r5, r6, pc}
	.align 2, 0
_022FBD04: .4byte 0x02353538
	arm_func_end ov29_022FBC94

	arm_func_start ov29_022FBD08
ov29_022FBD08: @ 0x022FBD08
	ldr r0, _022FBD20 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x3000
	str r1, [r0, #0xe1c]
	bx lr
	.align 2, 0
_022FBD20: .4byte 0x02353538
	arm_func_end ov29_022FBD08

	arm_func_start ov29_022FBD24
ov29_022FBD24: @ 0x022FBD24
	push {r4, lr}
	mov r4, r0
	bl IsMonster
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldr r0, _022FBD7C @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x1cc
	add r3, r0, #0x3c00
	ldr r2, [r3, #0x50]
	cmp r2, #0x14
	moveq r0, #0
	popeq {r4, pc}
	ldr r1, [r4, #0xb4]
	mov r0, #1
	ldr r1, [r1, #0xb0]
	str r1, [r3, r2, lsl #2]
	ldr r1, [r3, #0x50]
	add r1, r1, #1
	str r1, [r3, #0x50]
	pop {r4, pc}
	.align 2, 0
_022FBD7C: .4byte 0x02353538
	arm_func_end ov29_022FBD24

	arm_func_start ov29_022FBD80
ov29_022FBD80: @ 0x022FBD80
	push {r4, lr}
	mov r4, r0
	bl IsMonster
	cmp r0, #0
	beq _022FBDD4
	ldr r0, _022FBDDC @ =0x02353538
	ldr r1, [r4, #0xb4]
	ldr r0, [r0]
	ldr r2, [r1, #0xb0]
	add r0, r0, #0x1cc
	add r1, r0, #0x3c00
	ldr ip, [r1, #0x50]
	mov r3, #0
	b _022FBDCC
_022FBDB8:
	ldr r0, [r1, r3, lsl #2]
	cmp r2, r0
	moveq r0, #1
	popeq {r4, pc}
	add r3, r3, #1
_022FBDCC:
	cmp r3, ip
	blt _022FBDB8
_022FBDD4:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022FBDDC: .4byte 0x02353538
	arm_func_end ov29_022FBD80

	arm_func_start ov29_022FBDE0
ov29_022FBDE0: @ 0x022FBDE0
	ldr ip, _022FBDEC @ =ov29_022EFAE8
	ldrb r0, [r0, #0xbc]
	bx ip
	.align 2, 0
_022FBDEC: .4byte ov29_022EFAE8
	arm_func_end ov29_022FBDE0

	arm_func_start ov29_022FBDF0
ov29_022FBDF0: @ 0x022FBDF0
	ldr r0, [r0, #0xb4]
	ldr ip, _022FBE00 @ =ov29_022EFB04
	ldrb r0, [r0, #0xbc]
	bx ip
	.align 2, 0
_022FBE00: .4byte ov29_022EFB04
	arm_func_end ov29_022FBDF0

	arm_func_start ov29_022FBE04
ov29_022FBE04: @ 0x022FBE04
	push {r3, lr}
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _022FBE4C
	ldr r0, _022FBE54 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_020512B0
	ldr r1, _022FBE54 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x700
	ldrsh r1, [r1, #0x84]
	cmp r1, r0
	bne _022FBE4C
	bl ov29_023361D4
	cmp r0, #0
	movne r0, #1
	popne {r3, pc}
_022FBE4C:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_022FBE54: .4byte 0x02353538
	arm_func_end ov29_022FBE04

	arm_func_start ov29_022FBE58
ov29_022FBE58: @ 0x022FBE58
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr ip, [r4, #0xb4]
	mov r6, #1
	strb r6, [ip, #0x100]
	ldrsh r5, [ip, #0x12]
	ldrsh r3, [ip, #0x16]
	ldr r7, _022FBF04 @ =0x022C5938
	mov r0, #0xc
	add r5, r5, r3
	smlabb r3, r1, r0, r7
	rsb lr, r6, #0x3e8
	cmp r5, lr
	movgt r5, lr
	strh r5, [ip, #0x14]
	mov r0, #0
	strh r0, [ip, #0x16]
	strh r0, [ip, #0x18]
	ldrsh r5, [r3, #2]
	add lr, ip, #0x100
	add r0, ip, #0x90
	strh r5, [ip, #0x12]
	ldrsh r5, [r3, #2]
	strh r5, [ip, #0x10]
	ldrb r5, [r3, #6]
	strb r5, [ip, #0x1a]
	ldrb r5, [r3, #7]
	strb r5, [ip, #0x1b]
	ldrb r5, [r3, #8]
	strb r5, [ip, #0x1c]
	ldrb r3, [r3, #9]
	strb r3, [ip, #0x1d]
	strh r1, [lr, #0x68]
	strb r2, [ip, #0x16a]
	ldrsh r1, [ip, #2]
	ldrsh r2, [ip, #0xe]
	bl FUN_02058EB0
	mov r0, r4
	bl ov29_023021F0
	mov r0, r4
	mov r1, #1
	bl ov29_022FB83C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FBF04: .4byte 0x022C5938
	arm_func_end ov29_022FBE58

	arm_func_start ov29_022FBF08
ov29_022FBF08: @ 0x022FBF08
	push {r3, lr}
	ldr r0, _022FBF2C @ =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x7cc]
	sub r0, r0, #1
	cmp r0, #1
	pophi {r3, pc}
	bl FUN_020133EC
	pop {r3, pc}
	.align 2, 0
_022FBF2C: .4byte 0x02353538
	arm_func_end ov29_022FBF08

	arm_func_start ov29_022FBF30
ov29_022FBF30: @ 0x022FBF30
	push {r3, lr}
	ldr r0, _022FBF54 @ =0x02353538
	ldr r0, [r0]
	ldr r0, [r0, #0x7cc]
	sub r0, r0, #1
	cmp r0, #1
	pophi {r3, pc}
	bl FUN_02013414
	pop {r3, pc}
	.align 2, 0
_022FBF54: .4byte 0x02353538
	arm_func_end ov29_022FBF30

	arm_func_start ov29_022FBF58
ov29_022FBF58: @ 0x022FBF58
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x218
	ldr r1, _022FC230 @ =0x02353538
	mov r0, #0
	ldr r1, [r1]
	add r1, r1, #0xf4
	add r5, r1, #0x3400
	bl DungeonRngSetSecondary
	bl ov29_022FBF08
	add r0, sp, #0x16
	mov r1, #0
	bl ov29_022E7BE8
	mov r4, r0
	mov r6, #0
	b _022FC028
_022FBF94:
	add r0, sp, #0x16
	add r7, r0, r6, lsl #3
	mov r0, r7
	bl FUN_02054480
	strh r0, [r5]
	mov r0, r7
	bl FUN_020544B8
	strh r0, [r5, #2]
	ldrsh r1, [r5]
	ldrsh r2, [r5, #2]
	add r0, r5, #4
	bl ov29_02303B18
	ldrh r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0x170
	strheq r0, [r5, #4]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl ov29_022FE2FC
	strh r0, [r5, #0xc]
	mov r7, #0
_022FBFE8:
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r7
	add r8, r5, r7
	bl ov29_022FE350
	strb r0, [r8, #0xe]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r7
	bl ov29_022FE3B8
	add r7, r7, #1
	strb r0, [r8, #0x10]
	cmp r7, #2
	blt _022FBFE8
	add r5, r5, #0x12
	add r6, r6, #1
_022FC028:
	cmp r6, r4
	blt _022FBF94
	mov r0, #0
	b _022FC040
_022FC038:
	strh r0, [r5], #0x12
	add r6, r6, #1
_022FC040:
	cmp r6, #0x40
	blt _022FC038
	cmp r4, #0x40
	bge _022FC0A8
	bl IsDestinationFloorWithFixedRoom
	cmp r0, #0
	bne _022FC0A8
	bl IsDestinationFloorWithMonster
	cmp r0, #0
	beq _022FC0A8
	mov r0, #0xa
	bl IsCurrentMissionType
	cmp r0, #0
	bne _022FC088
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _022FC0A8
_022FC088:
	add r0, sp, #8
	bl ov29_022FE420
	add r0, sp, #0x16
	ldrsh r1, [sp, #0xc]
	ldrsh r2, [sp, #8]
	add r0, r0, r4, lsl #3
	bl FUN_020544A8
	add r4, r4, #1
_022FC0A8:
	cmp r4, #0x40
	bge _022FC0E0
	ldr r0, _022FC230 @ =0x02353538
	ldr r2, [r0]
	add r0, r2, #0x700
	ldrsh r1, [r0, #0xa8]
	cmp r1, #0
	beq _022FC0E0
	ldrb r1, [r2, #0x7aa]
	ldrsh r2, [r0, #0xa8]
	add r3, sp, #0x16
	add r0, r3, r4, lsl #3
	bl FUN_020544A8
	add r4, r4, #1
_022FC0E0:
	mov r2, #0
	ldr r1, _022FC230 @ =0x02353538
	mov sl, r2
_022FC0EC:
	ldr r0, [r1]
	add r0, r0, r2
	add r0, r0, #0x3000
	add r2, r2, #1
	strb sl, [r0, #0xb74]
	cmp r2, #0x258
	blt _022FC0EC
	mvn r0, #0
	mov r5, #1
	str r0, [sp]
	b _022FC1E8
_022FC118:
	ldr r6, [sp]
	mov r8, #0
	mov r7, r6
	b _022FC194
_022FC128:
	add r0, sp, #0x16
	add sb, r0, r8, lsl #3
	mov r0, sb
	bl FUN_02054480
	mov fp, r0
	mov r0, sb
	bl FUN_020544B8
	str r0, [sp, #4]
	mov r0, fp
	mov r1, #0x258
	bl FUN_0208FEA4
	ldr r0, _022FC230 @ =0x02353538
	lsl r1, r1, #0x10
	ldr r0, [r0]
	asr sb, r1, #0x10
	add r0, r0, r1, asr #16
	add r0, r0, #0x3000
	ldrb r0, [r0, #0xb74]
	cmp r0, #0
	bne _022FC190
	ldr r1, [sp, #4]
	mov r0, sb
	bl FUN_02052A7C
	cmp r7, r0
	movlt r7, r0
	movlt r6, sb
_022FC190:
	add r8, r8, #1
_022FC194:
	cmp r8, r4
	blt _022FC128
	cmp r6, #0
	blt _022FC1F0
	cmp r5, #0x100
	ble _022FC1C8
	ldr r0, _022FC230 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r6
	add r1, r0, #0x3000
	mov r0, #1
	strb r0, [r1, #0xb74]
	b _022FC1E4
_022FC1C8:
	ldr r0, _022FC230 @ =0x02353538
	rsb r1, r5, #0x100
	ldr r0, [r0]
	add r5, r5, #2
	add r0, r0, r6
	add r0, r0, #0x3000
	strb r1, [r0, #0xb74]
_022FC1E4:
	add sl, sl, #1
_022FC1E8:
	cmp sl, r4
	blt _022FC118
_022FC1F0:
	ldr r1, _022FC230 @ =0x02353538
	mov r4, #0
	mov r2, #1
_022FC1FC:
	ldr r0, [r1]
	add r0, r0, r4
	add r0, r0, #0x3000
	ldrb r3, [r0, #0xb74]
	add r4, r4, #1
	cmp r3, #0
	strbeq r2, [r0, #0xb74]
	cmp r4, #0x258
	blt _022FC1FC
	bl ov29_022FBF30
	bl DungeonRngSetPrimary
	add sp, sp, #0x218
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FC230: .4byte 0x02353538
	arm_func_end ov29_022FBF58

	arm_func_start ov29_022FC234
ov29_022FC234: @ 0x022FC234
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldrsh r0, [sp, #0x30]
	mov sb, r1
	mov r1, #0x258
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x34]
	bl FUN_0208FEA4
	lsl r0, r1, #0x10
	ldr r2, _022FC464 @ =0x02353538
	asr r4, r0, #0x10
	ldr r1, [r2]
	mov fp, #0
	add r0, r1, #0xf4
	add r5, r0, #0x3400
	mov r3, r5
	mov r0, #0x12
	b _022FC314
_022FC284:
	mul r2, fp, r0
	ldrsh r1, [r3, r2]
	add r5, r3, r2
	cmp r1, #0
	beq _022FC31C
	cmp r1, r4
	ldrsheq r1, [r5, #2]
	cmpeq r1, r6
	bne _022FC310
	mov r1, r4
	mov r2, r6
	add r0, r5, #4
	bl ov29_02303B18
	mov r4, #0
_022FC2BC:
	add r0, r5, r4, lsl #1
	ldrh r1, [r0, #4]
	add r0, sl, r4, lsl #3
	bl FUN_020137E8
	add r4, r4, #1
	cmp r4, #4
	blt _022FC2BC
	ldrsh r0, [r5, #0xc]
	mov r2, #0
	strh r0, [sb]
_022FC2E4:
	add r1, r5, r2
	ldrb r0, [r1, #0xe]
	strb r0, [r8, r2]
	ldrb r0, [r1, #0x10]
	strb r0, [r7, r2]
	add r2, r2, #1
	cmp r2, #2
	blt _022FC2E4
	mov r0, #0
	strb r0, [sl, #0x20]
	b _022FC45C
_022FC310:
	add fp, fp, #1
_022FC314:
	cmp fp, #0x40
	blt _022FC284
_022FC31C:
	cmp fp, #0x40
	bne _022FC3A4
	add r0, sp, #0
	mov r1, r4
	mov r2, r6
	bl ov29_02303B18
	mov r5, #0
	add fp, sp, #0
_022FC33C:
	lsl r0, r5, #1
	ldrh r1, [fp, r0]
	add r0, sl, r5, lsl #3
	bl FUN_020137E8
	add r5, r5, #1
	cmp r5, #4
	blt _022FC33C
	mov r0, r4
	mov r1, r6
	bl ov29_022FE2FC
	strh r0, [sb]
	mov r5, #0
_022FC36C:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov29_022FE350
	strb r0, [r8, r5]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov29_022FE3B8
	strb r0, [r7, r5]
	add r5, r5, #1
	cmp r5, #2
	blt _022FC36C
	b _022FC454
_022FC3A4:
	strh r4, [r5]
	mov r1, r4
	mov r2, r6
	strh r6, [r5, #2]
	add r0, r5, #4
	bl ov29_02303B18
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	bl ov29_022FE2FC
	strh r0, [r5, #0xc]
	mov r6, #0
_022FC3D0:
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r6
	add r4, r5, r6
	bl ov29_022FE350
	strb r0, [r4, #0xe]
	ldrsh r0, [r5]
	ldrsh r1, [r5, #2]
	mov r2, r6
	bl ov29_022FE3B8
	add r6, r6, #1
	strb r0, [r4, #0x10]
	cmp r6, #2
	blt _022FC3D0
	mov r4, #0
_022FC40C:
	add r0, r5, r4, lsl #1
	ldrh r1, [r0, #4]
	add r0, sl, r4, lsl #3
	bl FUN_020137E8
	add r4, r4, #1
	cmp r4, #4
	blt _022FC40C
	ldrsh r0, [r5, #0xc]
	mov r2, #0
	strh r0, [sb]
_022FC434:
	add r1, r5, r2
	ldrb r0, [r1, #0xe]
	strb r0, [r8, r2]
	ldrb r0, [r1, #0x10]
	strb r0, [r7, r2]
	add r2, r2, #1
	cmp r2, #2
	blt _022FC434
_022FC454:
	mov r0, #0
	strb r0, [sl, #0x20]
_022FC45C:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FC464: .4byte 0x02353538
	arm_func_end ov29_022FC234

	arm_func_start ov29_022FC468
ov29_022FC468: @ 0x022FC468
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, [sp, #0x24]
	mov sb, r0
	cmp r4, #0xb
	mov r0, #0
	cmp r4, #0xc
	moveq r0, #1
	cmp r4, #0xd
	moveq r0, #2
	cmp r4, #0xe
	moveq r0, #3
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x20]
	bl FUN_020590F8
	mov r4, r0
	mov r0, sb
	add r1, r4, #0x22
	bl FUN_020146E4
	ldrsh r0, [r4, #0xa]
	mov r2, #0
	strh r0, [r8]
_022FC4C4:
	add r1, r4, r2
	ldrb r0, [r1, #0xc]
	strb r0, [r7, r2]
	ldrb r0, [r1, #0xe]
	strb r0, [r6, r2]
	add r2, r2, #1
	cmp r2, #2
	blt _022FC4C4
	ldrsh r1, [r4, #8]
	ldr r0, _022FC508 @ =0x020A1C7C
	ldr r0, [r0, #0x20]
	strh r1, [r5]
	cmp r1, r0
	strhlt r0, [r5]
	mov r0, #0
	strb r0, [sb, #0x20]
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FC508: .4byte 0x020A1C7C
	arm_func_end ov29_022FC468

	arm_func_start InitTeam
InitTeam: @ 0x022FC50C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x44
	mov sl, r0
	mov r0, #0
	bl DungeonRngSetSecondary
	ldr r0, _022FC98C @ =0x02353538
	ldr r0, [r0]
	add r1, r0, #0xcc00
	ldrsh r0, [r1, #0xe0]
	ldrsh r1, [r1, #0xe2]
	bl GetTile
	ldrb fp, [r0, #7]
	mov r4, #0
_022FC540:
	mov r0, r4
	bl FUN_0205638C
	add r1, r4, #1
	lsl r1, r1, #0x10
	strh r4, [r0, #0xa]
	asr r4, r1, #0x10
	cmp r4, #4
	blt _022FC540
	mov r7, #0
	mov r6, #1
	mov r8, r7
	mov r5, r7
	mov sb, r6
	add r4, sp, #0x34
_022FC578:
	mov r0, r8
	bl FUN_0205638C
	ldrb r1, [r0]
	tst r1, #1
	movne r2, r6
	moveq r2, r5
	tst r2, #0xff
	beq _022FC5B0
	tst r1, #2
	movne r1, sb
	moveq r1, #0
	tst r1, #0xff
	strne r0, [r4, r7, lsl #2]
	addne r7, r7, #1
_022FC5B0:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022FC578
	mov r1, #0
	add r0, sp, #0x34
	b _022FC5D8
_022FC5D0:
	str r1, [r0, r7, lsl #2]
	add r7, r7, #1
_022FC5D8:
	cmp r7, #4
	blt _022FC5D0
	mov r8, #0
	mov r7, r8
	mov r3, r8
	mov r4, #1
	mov r2, r8
	add r5, sp, #0x34
	add r1, sp, #0x24
_022FC5FC:
	ldr r6, [r5, r7, lsl #2]
	cmp r6, #0
	beq _022FC628
	ldrb r0, [r6, #1]
	cmp r0, #0
	movne r0, r4
	moveq r0, r3
	tst r0, #0xff
	strne r6, [r1, r8, lsl #2]
	strne r2, [r5, r7, lsl #2]
	addne r8, r8, #1
_022FC628:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	blt _022FC5FC
	ldr r0, _022FC98C @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75c]
	cmp r0, #0
	bne _022FC698
	mov r7, #0
	mov r4, r7
	add r5, sp, #0x34
	add sb, sp, #0x24
_022FC660:
	ldr r6, [r5, r7, lsl #2]
	cmp r6, #0
	beq _022FC684
	ldrb r0, [r6, #3]
	bl JoinedAtRangeCheck2Veneer
	cmp r0, #0
	strne r6, [sb, r8, lsl #2]
	strne r4, [r5, r7, lsl #2]
	addne r8, r8, #1
_022FC684:
	add r0, r7, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #4
	blt _022FC660
_022FC698:
	mov r4, #0
	mov r2, r4
	add r1, sp, #0x24
	add r3, sp, #0x34
_022FC6A8:
	ldr r0, [r3, r4, lsl #2]
	cmp r0, #0
	strne r0, [r1, r8, lsl #2]
	add r0, r4, #1
	lsl r0, r0, #0x10
	strne r2, [r3, r4, lsl #2]
	asr r4, r0, #0x10
	addne r8, r8, #1
	cmp r4, #4
	blt _022FC6A8
	mov r1, #0
	add r0, sp, #0x24
	b _022FC6E4
_022FC6DC:
	str r1, [r0, r8, lsl #2]
	add r8, r8, #1
_022FC6E4:
	cmp r8, #4
	blt _022FC6DC
	mov sb, #0
_022FC6F0:
	add r0, sp, #0x24
	ldr r5, [r0, sb, lsl #2]
	mov r6, #0
	cmp r5, #0
	beq _022FC8BC
	ldrsh r1, [r5, #0xc]
	sub r0, r1, #0x17c
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #2
	ldrls r0, _022FC990 @ =0x0000017B
	strhls r0, [r5, #0xc]
	bls _022FC74C
	sub r0, r1, #0x3d4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #2
	ldrls r0, _022FC994 @ =0x000003D3
	strhls r0, [r5, #0xc]
_022FC74C:
	mov r4, #0
_022FC750:
	ldr r0, _022FC998 @ =0x02351E28
	lsl r1, r4, #2
	ldrh r1, [r0, r1]
	add r0, r0, r4, lsl #2
	ldrh r0, [r0, #2]
	strh r1, [sp, #0x1e]
	ldrsh r8, [sp, #0x1e]
	strh r0, [sp, #0x20]
	cmp r8, #0x63
	beq _022FC808
	ldr r0, _022FC98C @ =0x02353538
	ldrsh r7, [sp, #0x20]
	ldr r0, [r0]
	add r0, r0, #0xcc00
	ldrsh r1, [r0, #0xe2]
	ldrsh r2, [r0, #0xe0]
	add r1, r7, r1
	add r0, r8, r2
	bl GetTile
	mov r1, r0
	ldrb r0, [r1, #7]
	cmp r0, fp
	bne _022FC800
	ldrsh r0, [r5, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FC800
	ldr r0, _022FC98C @ =0x02353538
	mov r1, #0
	ldr r2, [r0]
	mov r0, #1
	str r1, [sp]
	stmib sp, {r0, r1, sl}
	str r1, [sp, #0x10]
	add r0, r2, #0xcc00
	ldrsh r1, [r0, #0xe0]
	ldrsh r2, [r0, #0xe2]
	ldrsh r0, [r5, #0xc]
	mov r3, r5
	add r1, r8, r1
	add r2, r7, r2
	bl InitTeamMember
	mov r6, #1
	b _022FC808
_022FC800:
	add r4, r4, #1
	b _022FC750
_022FC808:
	cmp r6, #0
	bne _022FC8BC
	ldr r8, _022FC998 @ =0x02351E28
	mov r7, #0
_022FC818:
	lsl r0, r7, #2
	ldrh r1, [r8, r0]
	add r0, r8, r7, lsl #2
	ldrh r0, [r0, #2]
	strh r1, [sp, #0x14]
	ldrsh r6, [sp, #0x14]
	strh r0, [sp, #0x16]
	cmp r6, #0x63
	beq _022FC8BC
	ldr r0, _022FC98C @ =0x02353538
	ldrsh r4, [sp, #0x16]
	ldr r0, [r0]
	add r0, r0, #0xcc00
	ldrsh r1, [r0, #0xe2]
	ldrsh r2, [r0, #0xe0]
	add r1, r4, r1
	add r0, r6, r2
	bl GetTile
	mov r1, r0
	ldrsh r0, [r5, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FC8B4
	ldr r0, _022FC98C @ =0x02353538
	mov r1, #0
	ldr r2, [r0]
	mov r0, #1
	str r1, [sp]
	stmib sp, {r0, r1, sl}
	str r1, [sp, #0x10]
	add r0, r2, #0xcc00
	ldrsh r1, [r0, #0xe0]
	ldrsh r2, [r0, #0xe2]
	ldrsh r0, [r5, #0xc]
	mov r3, r5
	add r1, r6, r1
	add r2, r4, r2
	bl InitTeamMember
	b _022FC8BC
_022FC8B4:
	add r7, r7, #1
	b _022FC818
_022FC8BC:
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
	cmp sb, #4
	blt _022FC6F0
	bl ov29_022FCD04
	mov r2, #0
	mov r8, r2
	add r1, sp, #0x18
_022FC8E0:
	add r0, r2, #1
	lsl r0, r0, #0x10
	strb r8, [r1, r2]
	asr r2, r0, #0x10
	cmp r2, #5
	blt _022FC8E0
	ldr r4, _022FC98C @ =0x02353538
	mov r6, #0
	mov r7, #1
	add r5, sp, #0x18
_022FC908:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	bl EntityIsValid
	cmp r0, #0
	beq _022FC964
	ldr r0, [r4]
	add r1, r8, r8, lsl #3
	add r0, r0, #0x56
	add r2, r0, #0x800
	ldrb r0, [r2, r1, lsl #6]
	add r2, r2, r1, lsl #6
	tst r0, #1
	movne r0, r7
	moveq r0, r6
	tst r0, #0xff
	ldrbne r1, [r2, #1]
	cmpne r1, #0
	addne r0, r8, #1
	andne r0, r0, #0xff
	strbne r0, [r5, r1]
	strbne r0, [r2, #1]
_022FC964:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #4
	blt _022FC908
	add r0, sp, #0x18
	bl FUN_0200F9B4
	bl DungeonRngSetPrimary
	add sp, sp, #0x44
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FC98C: .4byte 0x02353538
_022FC990: .4byte 0x0000017B
_022FC994: .4byte 0x000003D3
_022FC998: .4byte 0x02351E28
	arm_func_end InitTeam

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022FC99C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022FC9C0
ov29_022FC9C0: @ 0x022FC9C0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r0, #0
	bl DungeonRngSetSecondary
	mov sl, #0
	mov r8, #1
	mov sb, sl
	mov r7, sl
	mov r5, sl
	mov r6, r8
	ldr r4, _022FCCF0 @ =0x000055AA
	b _022FCA44
_022FC9F0:
	mov r0, sb
	bl FUN_0205638C
	ldrb r1, [r0]
	tst r1, #1
	movne r2, r8
	moveq r2, r7
	tst r2, #0xff
	beq _022FCA38
	tst r1, #2
	movne r1, r6
	moveq r1, r5
	tst r1, #0xff
	beq _022FCA38
	ldrsh r1, [r0, #8]
	cmp r1, r4
	streq r0, [sp, #0x18]
	addeq sl, sl, #1
	beq _022FCA4C
_022FCA38:
	add r0, sb, #1
	lsl r0, r0, #0x10
	asr sb, r0, #0x10
_022FCA44:
	cmp sb, #4
	blt _022FC9F0
_022FCA4C:
	mov r1, #0
	add r0, sp, #0x18
	b _022FCA60
_022FCA58:
	str r1, [r0, sl, lsl #2]
	add sl, sl, #1
_022FCA60:
	cmp sl, #4
	blt _022FCA58
	ldr r0, _022FCCF4 @ =0x0235355C
	mov r1, #0
	str r1, [r0]
	bl GetLeader
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	ldreq r0, _022FCCF8 @ =0x02353538
	ldrshne sb, [r4, #4]
	ldreq r0, [r0]
	ldrshne r8, [r4, #6]
	addeq r0, r0, #0xcc00
	ldrsheq sb, [r0, #0xe0]
	ldrsheq r8, [r0, #0xe2]
	mov r0, sb
	mov r1, r8
	bl GetTile
	ldrb r4, [r0, #7]
	mov sl, #0
_022FCAB4:
	add r0, sp, #0x18
	ldr r6, [r0, sl, lsl #2]
	mov r7, #0
	cmp r6, #0
	beq _022FCCD0
	ldrb r0, [r6]
	tst r0, #1
	movne r1, #1
	moveq r1, r7
	tst r1, #0xff
	beq _022FCCD0
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _022FCCD0
	ldrsh r1, [r6, #8]
	ldr r0, _022FCCF0 @ =0x000055AA
	cmp r1, r0
	bne _022FCCD0
	ldr r0, _022FCCFC @ =0x00005AA5
	ldr fp, _022FCD00 @ =0x02351E28
	mov r5, #0
	strh r0, [r6, #8]
_022FCB14:
	lsl r0, r5, #2
	ldrh r0, [fp, r0]
	add r1, fp, r5, lsl #2
	ldrh r1, [r1, #2]
	strh r0, [sp, #0x14]
	ldrsh r0, [sp, #0x14]
	strh r1, [sp, #0x16]
	cmp r0, #0x63
	beq _022FCBAC
	ldrsh r1, [sp, #0x16]
	add r0, r0, sb
	add r1, r1, r8
	bl GetTile
	mov r1, r0
	ldrb r0, [r1, #7]
	cmp r0, r4
	bne _022FCBA4
	ldrsh r0, [r6, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FCBA4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrsh r1, [sp, #0x14]
	ldrsh r2, [sp, #0x16]
	ldrsh r0, [r6, #0xc]
	mov r3, r6
	add r1, r1, sb
	add r2, r2, r8
	bl InitTeamMember
	mov r7, #1
	b _022FCBAC
_022FCBA4:
	add r5, r5, #1
	b _022FCB14
_022FCBAC:
	cmp r7, #0
	bne _022FCC48
	ldr fp, _022FCD00 @ =0x02351E28
	mov r5, #0
_022FCBBC:
	lsl r0, r5, #2
	ldrh r0, [fp, r0]
	add r1, fp, r5, lsl #2
	ldrh r1, [r1, #2]
	strh r0, [sp, #0x14]
	ldrsh r0, [sp, #0x14]
	strh r1, [sp, #0x16]
	cmp r0, #0x63
	beq _022FCC48
	ldrsh r1, [sp, #0x16]
	add r0, r0, sb
	add r1, r1, r8
	bl GetTile
	mov r1, r0
	ldrsh r0, [r6, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FCC40
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrsh r1, [sp, #0x14]
	ldrsh r2, [sp, #0x16]
	ldrsh r0, [r6, #0xc]
	mov r3, r6
	add r1, r1, sb
	add r2, r2, r8
	bl InitTeamMember
	mov r7, #1
	b _022FCC48
_022FCC40:
	add r5, r5, #1
	b _022FCBBC
_022FCC48:
	cmp r7, #0
	bne _022FCCD0
	mov r7, #0
	add r5, sp, #0x14
	mov fp, r7
	b _022FCCC8
_022FCC60:
	mov r0, r5
	mov r1, fp
	bl ov29_022E9628
	cmp r0, #0
	beq _022FCCC4
	ldrsh r0, [sp, #0x14]
	ldrsh r1, [sp, #0x16]
	bl GetTile
	mov r1, r0
	ldrsh r0, [r6, #0xc]
	bl ov29_022FF6C4
	cmp r0, #0
	bne _022FCCC4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrsh r0, [r6, #0xc]
	ldrsh r1, [sp, #0x14]
	ldrsh r2, [sp, #0x16]
	mov r3, r6
	bl InitTeamMember
	b _022FCCD0
_022FCCC4:
	add r7, r7, #1
_022FCCC8:
	cmp r7, #0x64
	blt _022FCC60
_022FCCD0:
	add r0, sl, #1
	lsl r0, r0, #0x10
	asr sl, r0, #0x10
	cmp sl, #4
	blt _022FCAB4
	bl DungeonRngSetPrimary
	add sp, sp, #0x28
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FCCF0: .4byte 0x000055AA
_022FCCF4: .4byte 0x0235355C
_022FCCF8: .4byte 0x02353538
_022FCCFC: .4byte 0x00005AA5
_022FCD00: .4byte 0x02351E28
	arm_func_end ov29_022FC9C0

	arm_func_start ov29_022FCD04
ov29_022FCD04: @ 0x022FCD04
	push {r4, r5, r6, lr}
	mov r5, #0
	ldr r4, _022FCD70 @ =0x02353538
	b _022FCD64
_022FCD14:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb28]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r6, #0xb4]
	ldrbne r0, [r0, #7]
	cmpne r0, #0
	beq _022FCD60
	mov r0, r6
	bl ov29_022E2DFC
	ldrh r1, [r6, #4]
	ldr r0, _022FCD74 @ =0x0237C690
	strh r1, [r0]
	ldrh r1, [r6, #6]
	strh r1, [r0, #2]
	pop {r4, r5, r6, pc}
_022FCD60:
	add r5, r5, #1
_022FCD64:
	cmp r5, #4
	blt _022FCD14
	pop {r4, r5, r6, pc}
	.align 2, 0
_022FCD70: .4byte 0x02353538
_022FCD74: .4byte 0x0237C690
	arm_func_end ov29_022FCD04

	arm_func_start ov29_022FCD78
ov29_022FCD78: @ 0x022FCD78
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	add r0, sp, #0x24
	mov r1, #0xe
	bl FUN_02003250
	mov r0, #0
	strb r0, [sp, #0x2c]
	mov r7, #1
	bl IsDestinationFloorWithFixedRoom
	cmp r0, #0
	bne _022FCE00
	bl IsDestinationFloorWithMonster
	cmp r0, #0
	beq _022FCE00
	mov r0, #0xa
	bl IsCurrentMissionType
	cmp r0, #0
	bne _022FCDD0
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _022FCDDC
_022FCDD0:
	add r0, sp, #0x24
	bl ov29_022FE420
	b _022FCE34
_022FCDDC:
	bl ov29_023491A4
	ldrsh r2, [r0, #0xc]
	mov r0, r7
	mov r1, #7
	strh r2, [sp, #0x24]
	strb r1, [sp, #0x26]
	strh r0, [sp, #0x28]
	strb r0, [sp, #0x2a]
	b _022FCE34
_022FCE00:
	ldr r0, _022FD080 @ =0x02353538
	ldr r2, [r0]
	add r0, r2, #0x700
	ldrsh r0, [r0, #0xa8]
	cmp r0, #0
	moveq r7, #0
	beq _022FCE34
	mov r1, #0
	strb r1, [sp, #0x26]
	strh r0, [sp, #0x24]
	ldrb r0, [r2, #0x7aa]
	strh r0, [sp, #0x28]
	strb r1, [sp, #0x2a]
_022FCE34:
	ldr r0, _022FD080 @ =0x02353538
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0x38
	add r1, r1, #0x3000
	strb r2, [r1, #0xe39]
	bl DungeonRandInt
	mov r6, r0
	mov r0, #0x20
	bl DungeonRandInt
	mov sl, r0
	mov r0, #0
	bl DungeonRngSetSecondary
	bl ov29_022FBF08
	mov sb, #0
	mov fp, sb
_022FCE74:
	add sl, sl, #1
	cmp sl, #0x20
	moveq sl, #0
	lsl r0, sl, #0x10
	mov r5, #0
	asr r4, r0, #0x10
_022FCE8C:
	add r6, r6, #1
	cmp r6, #0x38
	moveq r6, #0
	mov r0, r6
	mov r1, sl
	bl GetTile
	ldrh r0, [r0, #2]
	tst r0, #8
	beq _022FCF48
	cmp sb, #0
	mov r8, #0
	add sb, sb, #1
	bne _022FCED0
	cmp r7, #0
	beq _022FCF48
	mov r8, #1
	b _022FCEE8
_022FCED0:
	mov r0, r8
	bl GetMonsterIdToSpawn
	strh r0, [sp, #0x14]
	mov r0, r8
	strh r0, [sp, #0x1c]
	strb r0, [sp, #0x16]
_022FCEE8:
	mov r0, #0
	str r0, [sp, #0x18]
	strb r0, [sp, #0x22]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	cmp r8, #0
	strh r4, [sp, #0x20]
	strh r0, [sp, #0x1e]
	cmpne r7, #0
	beq _022FCF28
	strh r0, [sp, #0x2e]
	mov r0, #1
	strb r0, [sp, #0x2c]
	strh r4, [sp, #0x30]
	mov r7, #0
	b _022FCF48
_022FCF28:
	ldrsh r0, [sp, #0x14]
	mov r1, #1
	bl MewSpawnCheck
	cmp r0, #0
	beq _022FCF48
	add r0, sp, #0x14
	mov r1, #0
	bl SpawnMonster
_022FCF48:
	add r5, r5, #1
	cmp r5, #0x38
	blt _022FCE8C
	add fp, fp, #1
	cmp fp, #0x20
	blt _022FCE74
	bl DungeonRngSetPrimary
	mov r0, #0
	bl DungeonRngSetSecondary
	ldrb r0, [sp, #0x2c]
	cmp r0, #0
	beq _022FD060
	ldrsh r3, [sp, #0x24]
	ldrb r2, [sp, #0x26]
	ldrsh r1, [sp, #0x28]
	ldrb r0, [sp, #0x2b]
	strh r3, [sp, #4]
	strb r2, [sp, #6]
	strh r1, [sp, #0xc]
	cmp r0, #0
	beq _022FD020
	bl IsOutlawMonsterHouseFloor
	cmp r0, #0
	bne _022FCFB4
	bl IsDestinationFloorWithFleeingOutlaw
	cmp r0, #0
	beq _022FCFEC
_022FCFB4:
	ldr r1, _022FD080 @ =0x02353538
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0xce0
	add r1, r1, #0xc000
	bl ov29_022E9A0C
	cmp r0, #0
	ldrshne r1, [sp]
	ldrshne r0, [sp, #2]
	moveq r7, #1
	strhne r1, [sp, #0x2e]
	strhne r0, [sp, #0x30]
	b _022FD020
_022FCFEC:
	ldr r1, _022FD080 @ =0x02353538
	add r0, sp, #0
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0xce0
	add r1, r1, #0xc000
	bl ov29_022E99F0
	cmp r0, #0
	ldrshne r1, [sp]
	ldrshne r0, [sp, #2]
	moveq r7, #1
	strhne r1, [sp, #0x2e]
	strhne r0, [sp, #0x30]
_022FD020:
	cmp r7, #0
	bne _022FD060
	ldrsh r3, [sp, #0x2e]
	ldrsh r2, [sp, #0x30]
	mov r1, #0
	add r0, sp, #4
	str r1, [sp, #8]
	strb r1, [sp, #0x12]
	strh r3, [sp, #0xe]
	strh r2, [sp, #0x10]
	bl SpawnMonster
	cmp r0, #0
	bne _022FD060
	ldrb r0, [sp, #0x2a]
	cmp r0, #0
	movne r7, #1
_022FD060:
	cmp r7, #0
	beq _022FD070
	mov r0, #1
	bl SetTargetMonsterNotFoundFlag
_022FD070:
	bl ov29_022FBF30
	bl DungeonRngSetPrimary
	add sp, sp, #0x34
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FD080: .4byte 0x02353538
	arm_func_end ov29_022FCD78

	arm_func_start SpawnMonster
SpawnMonster: @ 0x022FD084
	push {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	ldrsh r0, [r7, #0xa]
	ldrsh r1, [r7, #0xc]
	bl GetTile
	mov r1, r0
	ldrsh r0, [r7]
	bl ov29_022FF6C4
	cmp r0, #0
	movne r0, #0
	bne _022FD2F8
	ldrsh r0, [r7]
	bl ov29_022E20C0
	movs r4, r0
	mov r0, #0
	beq _022FD2F8
	ldr r3, _022FD300 @ =0x0237C690
	mov r1, r4
	mov r2, r7
	bl ov29_022FD9D4
	ldr r5, [r4, #0xb4]
	mov r0, #1
	strb r0, [r5, #6]
	mov r1, #0
	strb r1, [r5, #8]
	ldr r0, _022FD304 @ =0x02353538
	ldr r1, _022FD308 @ =0x0002CB08
	ldr r2, [r0]
	mov r0, r4
	ldrsh r1, [r2, r1]
	strh r1, [r5, #0xe]
	bl ov29_023021F0
	ldrb r0, [r7, #2]
	bl ov29_022EFAE8
	cmp r0, #0
	beq _022FD154
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _022FD150
	mov r0, #0x49
	strb r0, [r5, #0x62]
	mov r0, #1
	strh r0, [r5, #0x64]
	bl GetItemToRetrieve
	strh r0, [r5, #0x66]
	mov r0, #0
	strb r0, [r5, #0x63]
	b _022FD154
_022FD150:
	bl IsDestinationFloorWithFleeingOutlaw
_022FD154:
	ldrb ip, [r7, #2]
	add r0, ip, #0xf5
	and r0, r0, #0xff
	cmp r0, #3
	bhi _022FD194
	add r0, r5, #0xe
	str r0, [sp]
	add r0, r5, #0x124
	add r1, r5, #0x12
	add r2, r5, #0x1a
	add r3, r5, #0x1c
	str ip, [sp, #4]
	bl ov29_022FC468
	mov r0, r4
	bl ov29_023021F0
	b _022FD1F0
_022FD194:
	ldrsh r2, [r5, #2]
	add r0, r5, #0x124
	add r1, r5, #0x12
	str r2, [sp]
	ldrb ip, [r5, #0xa]
	add r2, r5, #0x1a
	add r3, r5, #0x1c
	str ip, [sp, #4]
	bl ov29_022FC234
	ldrb r1, [r5, #6]
	cmp r1, #0
	beq _022FD1D0
	ldrb r0, [r7, #2]
	cmp r0, #0xa
	beq _022FD1E8
_022FD1D0:
	cmp r1, #0
	beq _022FD1F0
	ldrb r0, [r7, #2]
	bl ov29_022EFB04
	cmp r0, #0
	beq _022FD1F0
_022FD1E8:
	mov r0, #1
	strb r0, [r5, #8]
_022FD1F0:
	ldrb r0, [r7, #2]
	bl ov29_022EFAE8
	cmp r0, #0
	beq _022FD224
	ldr r0, _022FD30C @ =0x022C45A4
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r0]
	ldr r0, _022FD310 @ =0x000003E7
	add r1, r2, r1
	strh r1, [r5, #0x12]
	ldrsh r1, [r5, #0x12]
	cmp r1, r0
	strhgt r0, [r5, #0x12]
_022FD224:
	ldr r0, _022FD304 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	cmp r0, #0x67
	bne _022FD278
	ldr r1, _022FD314 @ =0x022C489C
	add r0, r5, #0x1a
	ldrb r1, [r1]
	bl FUN_02054FEC
	ldr r1, _022FD314 @ =0x022C489C
	add r0, r5, #0x1b
	ldrb r1, [r1, #1]
	bl FUN_02054FEC
	ldr r1, _022FD314 @ =0x022C489C
	add r0, r5, #0x1c
	ldrb r1, [r1, #2]
	bl FUN_02055020
	ldr r1, _022FD314 @ =0x022C489C
	add r0, r5, #0x1d
	ldrb r1, [r1, #3]
	bl FUN_02055020
_022FD278:
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022FD310 @ =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r7, #4]
	mov r0, r4
	str r1, [r5, #0x120]
	mov r1, #1
	bl ov29_022FB83C
	ldrb r0, [r7, #2]
	cmp r0, #0
	cmpeq r6, #0
	ldrbeq r0, [r7, #0xe]
	cmpeq r0, #0
	bne _022FD2F4
	mov r0, #0x64
	bl DungeonRandInt
	mov r5, r0
	ldrsh r0, [r7]
	bl FUN_020528E0
	cmp r0, r5
	ble _022FD2F4
	mov r0, r4
	mov r1, #0x7f
	bl InflictSleepStatusSingle
	mov r0, r4
	mov r1, #8
	bl ov29_02304A48
_022FD2F4:
	mov r0, r4
_022FD2F8:
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FD300: .4byte 0x0237C690
_022FD304: .4byte 0x02353538
_022FD308: .4byte 0x0002CB08
_022FD30C: .4byte 0x022C45A4
_022FD310: .4byte 0x000003E7
_022FD314: .4byte 0x022C489C
	arm_func_end SpawnMonster

	arm_func_start ov29_022FD318
ov29_022FD318: @ 0x022FD318
	push {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov29_022FBC4C
	cmp r0, #0
	moveq r0, #0
	beq _022FD3AC
	cmp r4, #0
	bne _022FD36C
	mov r0, r6
	mov r1, r5
	bl GetTile
	mov r1, r0
	mov r0, r7
	bl ov29_022FF6C4
	cmp r0, #0
	movne r0, #0
	bne _022FD3AC
_022FD36C:
	mov r1, r7
	mov r0, #0
	bl ov29_022F9408
	bl GetSpriteIndex
	mov r4, r0
	mov r0, #1
	bl ov29_022DE968
	str r0, [sp]
	add r0, sp, #8
	mov r2, r7
	mov r3, r4
	add r1, sp, #4
	bl ov29_022E1C84
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
_022FD3AC:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, pc}
	arm_func_end ov29_022FD318

	arm_func_start InitTeamMember
InitTeamMember: @ 0x022FD3B4
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x14
	mov r5, r3
	ldrb r3, [r5, #1]
	mov r7, r0
	ldr r4, [sp, #0x38]
	cmp r3, #0
	movne r0, #1
	moveq r0, #0
	and r6, r0, #0xff
	cmp r4, #0
	movne r0, #0
	strne r0, [r4]
	mov r0, r7
	mov sl, r1
	mov sb, r2
	bl FUN_02054024
	ldr r1, _022FD77C @ =0x000001A2
	cmp r0, r1
	bne _022FD420
	ldrb r0, [sp, #0x3c]
	cmp r0, #0
	ldrne r0, _022FD780 @ =0x02353538
	ldrne r0, [r0]
	addne r0, r0, #0x3e00
	ldrshne r7, [r0, #0x3a]
	moveq r7, r1
_022FD420:
	ldrb r0, [sp, #0x48]
	mov r1, sl
	mov r2, sb
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	mov r0, r7
	and r3, r3, #0xff
	bl ov29_022FD318
	cmp r0, #0
	moveq r0, #0
	beq _022FD774
	mov r0, r7
	bl ov29_022E1D2C
	ldr r1, _022FD784 @ =0x0237C9C0
	strh r7, [sp, #4]
	ldrb r3, [r1]
	ldr r2, _022FD788 @ =0x0235171C
	ldr r1, _022FD78C @ =0x0235171E
	lsl r3, r3, #2
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r3]
	mov r7, r0
	strh sl, [sp, #0xe]
	strh sb, [sp, #0x10]
	ldrb r8, [r5, #2]
	mov r3, #0
	add r2, sl, r2
	add r1, sb, r1
	strh r2, [sp]
	strh r1, [sp, #2]
	strb r3, [sp, #6]
	str r3, [sp, #8]
	strb r3, [sp, #0x12]
	cmp r6, #0
	addne r3, sp, #0
	ldreq r3, _022FD790 @ =0x0237C690
	add r2, sp, #4
	mov r1, r7
	mov r0, #1
	strh r8, [sp, #0xc]
	bl ov29_022FD9D4
	ldr r8, [r7, #0xb4]
	mov r2, #0
	strb r2, [r8, #6]
	strb r2, [r8, #8]
	strb r2, [r8, #9]
	ldrb r1, [sp, #0x40]
	strb r6, [r8, #7]
	ldr r0, _022FD794 @ =0x0235355C
	strb r1, [r8, #0x102]
	str r2, [r0]
	cmp r6, #0
	ldrne r0, _022FD790 @ =0x0237C690
	mov r3, #0
	strhne sl, [r0]
	strhne sb, [r0, #2]
	ldrsh r0, [r5, #0xe]
	strh r0, [r8, #0x10]
	ldrsh r0, [r5, #0x10]
	strh r0, [r8, #0x12]
	strh r3, [r8, #0x16]
	ldr r0, [r5, #0x18]
	str r0, [r8, #0x20]
_022FD520:
	add r2, r5, r3
	ldrb r0, [r2, #0x12]
	add r1, r8, r3
	add r3, r3, #1
	strb r0, [r1, #0x1a]
	ldrb r0, [r2, #0x14]
	cmp r3, #2
	strb r0, [r1, #0x1c]
	blt _022FD520
	add r3, r5, #0x1c
	add r2, r8, #0x124
	mov r1, #0x11
_022FD550:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022FD550
	mov r2, #0
	add r1, r8, #0x124
	mov sb, r2
	mov sl, #1
_022FD570:
	ldrb r3, [r1, r2, lsl #3]
	lsl r0, r2, #3
	add r2, r2, #1
	tst r3, #1
	movne r3, sl
	moveq r3, sb
	tst r3, #0xff
	ldrbne r3, [r1, r0]
	bicne r6, r3, #0x10
	andne r3, r6, #0xff
	bicne r3, r3, #0x20
	strbne r3, [r1, r0]
	cmp r2, #4
	blt _022FD570
	ldrb r1, [r8, #0x144]
	add r0, r5, #0x4c
	add sb, r8, #0x90
	bic r2, r1, #0x10
	and r1, r2, #0xff
	bic r1, r1, #0x20
	strb r1, [r8, #0x144]
	ldrb r1, [r5, #2]
	add r3, r8, #0x100
	mov r6, #0
	strb r1, [r8, #0xa]
	ldrsh r1, [r5, #6]
	strh r1, [r8, #0xe]
	ldrb r1, [r5, #0x58]
	strb r1, [r8, #0xa8]
	ldm r0, {r0, r1, r2}
	stm sb, {r0, r1, r2}
	ldrh r1, [r5, #0x5a]
	mov r0, r7
	strh r1, [r8, #0x44]
	ldrh r1, [r5, #0x5c]
	strh r1, [r8, #0x46]
	ldrb r1, [r5, #3]
	strb r1, [r8, #0x48]
	ldrb r1, [r5, #4]
	strb r1, [r8, #0x49]
	ldrh r1, [r5, #0x44]
	strh r1, [r3, #0x46]
	ldrh r1, [r5, #0x46]
	strh r1, [r3, #0x48]
	ldrh r1, [r5, #0x48]
	strh r1, [r3, #0x4a]
	ldrh r1, [r5, #0x4a]
	strh r1, [r3, #0x4c]
	ldrsh r1, [r5, #0xa]
	strh r1, [r8, #0xc]
	ldrh r1, [r5, #0x3e]
	strh r1, [r8, #0x62]
	ldrh r1, [r5, #0x40]
	strh r1, [r8, #0x64]
	ldrh r1, [r5, #0x42]
	strh r1, [r8, #0x66]
	strb r6, [r8, #0xfc]
	strb r6, [r8, #0x103]
	strb r6, [r8, #0x23c]
	strb r6, [r8, #0x23d]
	strh r6, [r8, #0x68]
	bl ov29_023021F0
	ldrb r1, [sp, #0x44]
	mov r0, r7
	bl ov29_022FB83C
	bl FUN_0200ED84
	cmp r0, #1
	beq _022FD760
	bl ov29_022E0880
	cmp r0, #0
	bne _022FD760
	mov r0, r7
	bl ov29_022FBA70
	cmp r0, #0
	bne _022FD760
	ldrb r0, [r8, #0x60]
	cmp r0, #0x47
	ldrbne r0, [r8, #0x61]
	cmpne r0, #0x47
	bne _022FD760
	ldr r2, [r7, #0xb4]
	ldr r0, _022FD798 @ =0x022C4520
	ldrb r1, [r2, #6]
	ldrsh r5, [r0]
	cmp r1, #0
	movne r0, #0
	bne _022FD6D8
	add r0, r2, #0x228
	mov r1, #0x61
	bl FUN_02010FA4
_022FD6D8:
	cmp r0, #0
	beq _022FD6FC
	ldr r1, _022FD79C @ =0x022C4858
	lsl r0, r5, #8
	ldr r1, [r1]
	bl FUN_02001A54
	asr r1, r0, #7
	add r0, r0, r1, lsr #24
	asr r5, r0, #8
_022FD6FC:
	mov r0, r5
	bl DungeonRandOutcome
	cmp r0, #0
	beq _022FD760
	ldrb r0, [r8, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _022FD760
	bl FUN_0200EDC0
	cmp r0, #0
	bne _022FD760
	mov r0, #0
	bl ov29_022E7AC4
	mov r1, r0
	cmp r1, #0xb7
	beq _022FD760
	add r0, r8, #0x62
	mov r2, #0
	bl FUN_0200CF58
	mov r0, r8
	bl ov29_02346F14
	mov r0, #1
	strb r0, [r8, #0xfc]
_022FD760:
	mov r0, r7
	bl ov29_022F9EA0
	cmp r4, #0
	strne r7, [r4]
	mov r0, #1
_022FD774:
	add sp, sp, #0x14
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022FD77C: .4byte 0x000001A2
_022FD780: .4byte 0x02353538
_022FD784: .4byte 0x0237C9C0
_022FD788: .4byte 0x0235171C
_022FD78C: .4byte 0x0235171E
_022FD790: .4byte 0x0237C690
_022FD794: .4byte 0x0235355C
_022FD798: .4byte 0x022C4520
_022FD79C: .4byte 0x022C4858
	arm_func_end InitTeamMember

	arm_func_start ov29_022FD7A0
ov29_022FD7A0: @ 0x022FD7A0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r6, r1
	ldrb r1, [r7, #0xaa]
	mov r0, r6
	mov r4, #0
	bl ov29_022E1AAC
	mov sb, r0
	mov r0, r7
	bl ov29_022E1AD4
	ldr r5, [r7, #0xb4]
	mov r8, r0
	ldr r0, [r5, #0xb0]
	bl ov29_022DDB68
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _022FD864
	cmp sb, r8
	ble _022FD864
	mov r1, r6
	mov r0, r4
	bl ov29_022F9408
	mov r8, r0
	bl GetSpriteIndex
	mov r4, r0
	mov r0, r7
	mov r1, #1
	bl ov29_022E1C0C
	mov r0, #1
	bl ov29_022E1F34
	mov r3, r4
	ldrb r4, [r7, #0xaa]
	mov r2, r8
	add r0, sp, #0xc
	add r1, sp, #8
	str r4, [sp]
	bl ov29_022E2018
	cmp r0, #0
	bne _022FD860
	ldrb r2, [r7, #0xaa]
	add r0, sp, #0xc
	add r1, sp, #8
	str r2, [sp]
	ldr r2, [r7, #0xb4]
	ldrsh r3, [r7, #0xa8]
	ldrsh r2, [r2, #4]
	bl ov29_022E2018
_022FD860:
	mov r4, #1
_022FD864:
	mov r0, #0
	strh r6, [sp, #0x10]
	strh r0, [sp, #0x18]
	strb r0, [sp, #0x12]
	ldrh r2, [r7, #4]
	mov r1, r6
	strh r2, [sp, #0x1a]
	ldrh r2, [r7, #6]
	strh r2, [sp, #0x1c]
	str r0, [sp, #0x14]
	bl ov29_022F9408
	mov r1, #0
	strb r1, [r7, #0x22]
	ldr r1, [r7, #0xb4]
	strh r0, [r1, #4]
	ldr r1, [r7, #0xb4]
	strh r6, [r1, #2]
	bl GetSpriteIndex
	strh r0, [r7, #0xa8]
	cmp r4, #0
	beq _022FD904
	ldr r0, [sp, #0xc]
	add r0, r0, #0x62
	strh r0, [r7, #0xac]
	ldr r1, [sp, #0xc]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17a]
	ldr r1, [sp, #8]
	ldr r0, [r7, #0xb4]
	strb r1, [r0, #0x17b]
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _022FD904
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov29_022E1EC4
_022FD904:
	mov r0, #7
	strb r0, [r7, #0xae]
	mov r1, #0
	strb r1, [r7, #0xb0]
	mov r0, #0xff
	strb r0, [r7, #0xaf]
	mov r0, #1
	strb r0, [r7, #0xb1]
	strb r0, [r7, #0xb3]
	strb r1, [r7, #0x28]
	str r1, [r7, #0x1c]
	ldrb r0, [r5, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _022FD94C
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
_022FD94C:
	ldrb r0, [r5, #6]
	add r2, sp, #0x10
	mov r1, r7
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	mov r3, #0
	bl ov29_022FD9D4
	ldrsh r2, [r5, #2]
	add r0, r5, #0x124
	add r1, r5, #0x12
	str r2, [sp]
	ldrb r4, [r5, #0xa]
	add r2, r5, #0x1a
	add r3, r5, #0x1c
	str r4, [sp, #4]
	bl ov29_022FC234
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _022FD9D0 @ =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r5, #0x10]
	mov r1, #0
	mov r0, r7
	strb r1, [r5, #9]
	bl ov29_022E6644
	mov r0, r7
	bl UpdateStatusIconFlags
	add sp, sp, #0x20
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FD9D0: .4byte 0x000003E7
	arm_func_end ov29_022FD7A0

	arm_func_start ov29_022FD9D4
ov29_022FD9D4: @ 0x022FD9D4
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r4, _022FDDB0 @ =0x02353538
	mov r7, r1
	ldr r4, [r4]
	mov r1, #1
	strb r1, [r4, #0xe]
	ldr r4, [r7, #0xb4]
	mov r8, r0
	mov r6, r2
	mov r0, r4
	mov r5, r3
	bl ov29_022FDDC0
	mov r0, #0
	ldrb r2, [r6, #2]
	mov r3, #1
	sub r1, r0, #1
	strb r2, [r4, #0xbc]
	strb r3, [r7, #0x20]
	strb r0, [r7, #0x22]
	sub r0, r0, #2
	strh r1, [r7, #8]
	strh r1, [r7, #0xa]
	strh r0, [r7, #4]
	strh r0, [r7, #6]
	mov r0, r7
	ldrsh r1, [r6, #0xa]
	ldrsh r2, [r6, #0xc]
	bl ov29_022F85F0
	mov r0, r7
	mov r1, #0
	bl ov29_022E1A40
	cmp r8, #0
	bne _022FDAD4
	ldrsh r1, [r6]
	ldr r0, _022FDDB4 @ =0x0000017F
	cmp r1, r0
	addne r0, r0, #0x258
	cmpne r1, r0
	bne _022FDAAC
	ldr r0, _022FDDB0 @ =0x02353538
	ldr r1, [r0]
	ldrb r0, [r1, #0x790]
	cmp r0, #0
	bne _022FDAAC
	add r0, r1, #0x4000
	ldrb r0, [r0, #0xc6]
	cmp r0, #0
	beq _022FDAAC
	ldrb r0, [r6, #2]
	cmp r0, #0
	moveq r0, #1
	strbeq r0, [r4, #9]
	beq _022FDAB4
_022FDAAC:
	mov r0, #0
	strb r0, [r4, #9]
_022FDAB4:
	ldrsh r0, [r4, #2]
	bl FUN_02054024
	cmp r0, #0x97
	ldreq r0, _022FDDB0 @ =0x02353538
	moveq r1, #1
	ldreq r0, [r0]
	addeq r0, r0, #0x3000
	strbeq r1, [r0, #0xe39]
_022FDAD4:
	ldr r1, _022FDDB0 @ =0x02353538
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x3000
	ldr r0, [r0, #0xe2c]
	str r0, [r4, #0xb0]
	ldr r0, [r1]
	add r0, r0, #0x3000
	ldr r1, [r0, #0xe2c]
	add r1, r1, #1
	str r1, [r0, #0xe2c]
	str r2, [r4, #0xb4]
	ldrsh r0, [r6, #8]
	cmp r0, #0
	bne _022FDB18
	ldrsh r0, [r6]
	bl GetMonsterLevelToSpawn
_022FDB18:
	strb r0, [r4, #0xa]
	ldr r0, [r6, #4]
	mov r2, #1
	str r0, [r4, #0x120]
	strh r2, [r4, #0xe]
	ldrsh r1, [r4, #2]
	add r0, r4, #0x90
	bl FUN_02058EB0
	add r0, r4, #0x44
	bl FUN_02053FC8
	mov r1, #1
	strh r1, [r4, #0x12]
	mov r0, #0x64
	strh r1, [r4, #0x10]
	bl FUN_02050FF8
	strh r0, [sp, #4]
	lsr r0, r0, #0x10
	strh r0, [sp, #6]
	ldrh r0, [sp, #4]
	add r1, r4, #0x100
	ldrh r2, [sp, #6]
	strh r0, [r1, #0x46]
	mov r0, #0x64
	strh r2, [r1, #0x48]
	bl FUN_02050FF8
	strh r0, [sp]
	lsr r0, r0, #0x10
	strh r0, [sp, #2]
	ldrh r2, [sp]
	add r0, r4, #0x100
	ldrh r1, [sp, #2]
	strh r2, [r0, #0x4a]
	cmp r5, #0
	strh r1, [r0, #0x4c]
	ldrhne r1, [r5]
	strhne r1, [r0, #0x7e]
	ldrhne r1, [r5, #2]
	moveq r1, #0
	strheq r1, [r0, #0x7e]
	strh r1, [r0, #0x80]
	mov r3, #0
	strh r3, [r4]
	strb r3, [r4, #0x14e]
	strb r3, [r4, #0x14f]
	add r0, r4, #0x200
	strh r3, [r0, #0xc]
	strh r3, [r0, #0xe]
	strb r3, [r4, #0x7c]
	ldrh r2, [r7, #4]
	mov r0, r4
	mov r1, #1
	strh r2, [r4, #0x8c]
	ldrh r2, [r7, #6]
	strh r2, [r4, #0x8e]
	str r3, [r4, #0x84]
	str r3, [r4, #0x88]
	strh r3, [r4, #0x80]
	strb r3, [r4, #0x10b]
	str r3, [r4, #0x188]
	strb r3, [r4, #0x10c]
	strb r3, [r4, #0x23c]
	strb r3, [r4, #0x23d]
	strb r3, [r4, #0x23f]
	bl ov29_022FDDC0
	add r0, r4, #0x62
	bl FUN_0200D81C
	mov r2, #0
	strh r2, [r4, #0x68]
	str r2, [r4, #0x218]
	str r2, [r4, #0x21c]
	mov r0, #0xff
	strb r0, [r4, #0x177]
	strb r0, [r4, #0x178]
	str r2, [r4, #0x214]
	strb r2, [r4, #0x151]
	strb r2, [r4, #0x150]
	strb r2, [r4, #0x179]
	add r0, r4, #0x200
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strb r2, [r4, #0x152]
	strb r2, [r4, #0x153]
	add r0, r4, #0x100
	strh r2, [r0, #0x92]
	str r2, [r4, #0x18c]
	strb r2, [r4, #0x105]
	strb r2, [r4, #0x104]
	strb r2, [r4, #0x109]
	strb r2, [r4, #0x155]
	mov r1, #1
	strb r1, [r4, #0x156]
	strh r2, [r0, #0x58]
	strh r2, [r0, #0x5a]
	strb r2, [r4, #0x15c]
	strb r2, [r4, #0x15d]
	strb r2, [r4, #0x15e]
	strb r2, [r4, #0x15f]
	strb r2, [r4, #0x17c]
	strb r2, [r4, #0x106]
	strb r2, [r4, #0x107]
	mov r0, #0x63
	strb r0, [r4, #0x10a]
	strb r2, [r4, #0x162]
	strb r2, [r4, #0x163]
	strb r2, [r4, #0x164]
	strb r2, [r4, #0x165]
	strb r2, [r4, #0x170]
	mov r0, r7
	strb r2, [r4, #0x171]
	bl CalcSpeedStageWrapper
	mov r0, #1
	strb r0, [r4, #0x160]
	mov r0, #0
	strb r0, [r4, #0x172]
	strb r0, [r4, #0x174]
	strb r0, [r4, #0x173]
	strb r0, [r4, #0x175]
	strb r0, [r4, #0x176]
	ldrsh r1, [r4, #4]
	cmp r1, #0x32
	ldrne r0, _022FDDB8 @ =0x0000028A
	cmpne r1, r0
	cmpne r1, #0x33
	addne r0, r0, #1
	cmpne r1, r0
	moveq r0, #0
	strbeq r0, [r4, #0x160]
	ldr r1, _022FDDBC @ =0x0235276C
	ldr r0, _022FDDB0 @ =0x02353538
	ldrh r3, [r1]
	ldr r0, [r0]
	add r2, sp, #8
	strh r3, [sp, #8]
	ldrh r1, [r1, #2]
	add r0, r0, #0x1a000
	strh r1, [sp, #0xa]
	ldrsh r1, [r7, #4]
	strh r1, [sp, #8]
	ldrsh r1, [r7, #6]
	strh r1, [sp, #0xa]
	ldrb r3, [r0, #0x23c]
	ldrsh r1, [r4, #4]
	ldr r0, [r4, #0xb0]
	bl ov29_022DDA54
	mov r0, r7
	bl ov29_023021F0
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl ov29_022FA1D8
	mov r1, #0
	strh r1, [r4, #0xac]
	str r1, [r4, #0x18c]
	add r0, r4, #0x100
	strh r1, [r0, #0x90]
	strb r1, [r4, #0x166]
	strb r1, [r4, #0x167]
	strb r1, [r4, #0x221]
	strh r1, [r0, #0x68]
	mov r2, #0xff
	add r0, r4, #0x224
	mov r1, #0x18
	strb r2, [r4, #0x16a]
	bl FUN_02003250
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FDDB0: .4byte 0x02353538
_022FDDB4: .4byte 0x0000017F
_022FDDB8: .4byte 0x0000028A
_022FDDBC: .4byte 0x0235276C
	arm_func_end ov29_022FD9D4

	arm_func_start ov29_022FDDC0
ov29_022FDDC0: @ 0x022FDDC0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov r2, #0
	strb r2, [sl, #0xbd]
	strb r2, [sl, #0xbe]
	strb r2, [sl, #0xbf]
	strb r2, [sl, #0xc0]
	strb r2, [sl, #0xc1]
	strb r2, [sl, #0xc2]
	strb r2, [sl, #0xc4]
	strb r2, [sl, #0xcc]
	strb r2, [sl, #0xcd]
	mov r0, #0x22
	str r0, [sl, #0xc8]
	strb r2, [sl, #0xd0]
	strb r2, [sl, #0xd1]
	strb r2, [sl, #0xd2]
	strb r2, [sl, #0xd5]
	strb r2, [sl, #0xd6]
	strb r2, [sl, #0xd8]
	strb r2, [sl, #0xdb]
	strb r2, [sl, #0xdc]
	strb r2, [sl, #0xe0]
	strb r2, [sl, #0xe9]
	strb r2, [sl, #0xea]
	strb r2, [sl, #0xec]
	strb r2, [sl, #0xed]
	strb r2, [sl, #0xee]
	strb r2, [sl, #0xef]
	strb r2, [sl, #0xf0]
	strb r2, [sl, #0xf1]
	strb r2, [sl, #0xf2]
	strb r2, [sl, #0xf3]
	strb r2, [sl, #0xf4]
	strb r2, [sl, #0xf5]
	strb r2, [sl, #0xf6]
	strb r2, [sl, #0xf7]
	strb r2, [sl, #0xf8]
	strb r2, [sl, #0xf9]
	strb r2, [sl, #0xfa]
	strb r2, [sl, #0xfb]
	mov r0, #0xff
	strb r0, [sl, #0x177]
	mov sb, r1
	strb r0, [sl, #0x178]
	mov r6, r2
_022FDE78:
	add r0, sl, r2
	strb r6, [r0, #0x114]
	add r2, r2, #1
	strb r6, [r0, #0x119]
	cmp r2, #5
	blt _022FDE78
	mov r8, r6
	mov r5, #1
	mov fp, #0xa
	mov r4, #0x100
_022FDEA0:
	ldrsh r0, [sl, #2]
	mov r1, r8
	add r7, sl, r8
	bl FUN_02052A24
	and r1, r0, #0xff
	cmp r1, #0x25
	strb r0, [r7, #0x60]
	moveq r6, #1
	cmp sb, #0
	strbne r5, [r7, #0x1a]
	strbne r5, [r7, #0x1c]
	add r1, sl, r8, lsl #1
	strh fp, [r1, #0x24]
	strh fp, [r1, #0x28]
	add r0, sl, r8, lsl #2
	strh fp, [r1, #0x2c]
	str r4, [r0, #0x34]
	add r8, r8, #1
	str r4, [r0, #0x3c]
	cmp r8, #2
	blt _022FDEA0
	cmp r6, #0
	beq _022FDF24
	mov r0, #0
	bl GetApparentWeather
	mov r1, #6
	mul r2, r0, r1
	ldr r1, _022FDF9C @ =0x022C4C6C
	mov r0, #0
	ldrb r1, [r1, r2]
	strb r1, [sl, #0x5e]
	strb r0, [sl, #0x5f]
	b _022FDF48
_022FDF24:
	mov r4, #0
_022FDF28:
	ldrsh r0, [sl, #2]
	mov r1, r4
	bl FUN_02052A04
	add r1, sl, r4
	add r4, r4, #1
	strb r0, [r1, #0x5e]
	cmp r4, #2
	blt _022FDF28
_022FDF48:
	mov r2, #0
	strb r2, [sl, #0xaa]
	strb r2, [sl, #0xab]
	ldr r0, _022FDFA0 @ =0x02353538
	strb r2, [sl, #0xa9]
	ldr r0, [r0]
	mov r1, #1
	strb r1, [r0, #0xe]
	strh r2, [sl, #0x30]
	strb r2, [sl, #0x11e]
	strb r2, [sl, #0x106]
	strb r2, [sl, #0x11f]
	strb r2, [sl, #0xfd]
	strb r2, [sl, #0x108]
	strb r2, [sl, #0xfe]
	strb r2, [sl, #0xff]
	strb r2, [sl, #0x100]
	mov r0, sl
	strb r2, [sl, #0x10b]
	bl ov29_02307DC0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FDF9C: .4byte 0x022C4C6C
_022FDFA0: .4byte 0x02353538
	arm_func_end ov29_022FDDC0

	arm_func_start ov29_022FDFA4
ov29_022FDFA4: @ 0x022FDFA4
	push {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r4, r7
	mov r5, #1
	mov r6, r7
_022FDFB8:
	ldr r0, _022FE044 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb28]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	ldrne r1, [r8, #0xb4]
	mvnne r0, #0
	ldrshne r3, [r1, #0xc]
	cmpne r3, r0
	beq _022FE034
	mov r8, r6
_022FDFF0:
	add r0, r1, r8, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #1
	movne r0, r5
	moveq r0, r4
	tst r0, #0xff
	addne r0, r1, r8, lsl #3
	addne r0, r0, #0x100
	ldrhne r2, [r0, #0x26]
	add r8, r8, #1
	bicne r2, r2, #1
	strhne r2, [r0, #0x26]
	cmp r8, #4
	blt _022FDFF0
	lsl r0, r3, #0x10
	asr r0, r0, #0x10
	bl ov29_022FE048
_022FE034:
	add r7, r7, #1
	cmp r7, #4
	blt _022FDFB8
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FE044: .4byte 0x02353538
	arm_func_end ov29_022FDFA4

	arm_func_start ov29_022FE048
ov29_022FE048: @ 0x022FE048
	push {r3, r4, r5, lr}
	mov r4, r1
	bl FUN_0205638C
	ldrsh r1, [r4, #0x10]
	mov r3, r0
	mov r5, #0
	strh r1, [r3, #0xe]
	ldrsh r0, [r4, #0x12]
	strh r0, [r3, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [r3, #0x18]
_022FE074:
	add r2, r4, r5
	ldrb r0, [r2, #0x1a]
	add r1, r3, r5
	add r5, r5, #1
	strb r0, [r1, #0x12]
	ldrb r0, [r2, #0x1c]
	cmp r5, #2
	strb r0, [r1, #0x14]
	blt _022FE074
	ldrsh r1, [r4, #4]
	sub r0, r1, #0x17c
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #2
	ldrls r0, _022FE188 @ =0x0000017B
	strhls r0, [r3, #0xc]
	bls _022FE0E0
	sub r0, r1, #0x3d4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #2
	ldrls r0, _022FE18C @ =0x000003D3
	strhls r0, [r3, #0xc]
_022FE0E0:
	add r5, r4, #0x124
	add r2, r3, #0x1c
	mov r1, #0x11
_022FE0EC:
	ldrh r0, [r5], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022FE0EC
	ldrb r1, [r4, #0xa]
	add r0, r4, #0x90
	add r5, r3, #0x4c
	strb r1, [r3, #2]
	ldrsh r1, [r4, #0xe]
	add ip, r4, #0x100
	ldr lr, _022FE190 @ =0x000055AA
	strh r1, [r3, #6]
	ldm r0, {r0, r1, r2}
	stm r5, {r0, r1, r2}
	ldrb r0, [r4, #0xa8]
	strb r0, [r3, #0x58]
	ldrh r0, [r4, #0x44]
	strh r0, [r3, #0x5a]
	ldrh r0, [r4, #0x46]
	strh r0, [r3, #0x5c]
	ldrh r0, [ip, #0x46]
	strh r0, [r3, #0x44]
	ldrh r0, [ip, #0x48]
	strh r0, [r3, #0x46]
	ldrh r0, [ip, #0x4a]
	strh r0, [r3, #0x48]
	ldrh r0, [ip, #0x4c]
	strh r0, [r3, #0x4a]
	ldrh r0, [r4, #0x62]
	strh r0, [r3, #0x3e]
	ldrh r0, [r4, #0x64]
	strh r0, [r3, #0x40]
	ldrh r0, [r4, #0x66]
	strh r0, [r3, #0x42]
	ldrsh r0, [r3, #8]
	cmp r0, lr
	ldreq r0, _022FE194 @ =0x00005AA5
	strheq r0, [r3, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FE188: .4byte 0x0000017B
_022FE18C: .4byte 0x000003D3
_022FE190: .4byte 0x000055AA
_022FE194: .4byte 0x00005AA5
	arm_func_end ov29_022FE048

	arm_func_start ov29_022FE198
ov29_022FE198: @ 0x022FE198
	push {r3, r4, r5, r6, r7, lr}
	ldr ip, _022FE248 @ =0x02353538
	mov r6, #0
	ldr r4, [ip]
	mov lr, #6
	add ip, r4, #0x5e0
	ldr r7, [ip, #0x30]
	b _022FE1E8
_022FE1B8:
	mla r5, r6, lr, ip
	ldrb r4, [r5, #3]
	cmp r4, #0
	beq _022FE1E4
	ldrb r4, [r5, #4]
	cmp r0, r4
	ldrbeq r4, [r5, #5]
	cmpeq r1, r4
	strheq r2, [r5]
	strbeq r3, [r5, #2]
	popeq {r3, r4, r5, r6, r7, pc}
_022FE1E4:
	add r6, r6, #1
_022FE1E8:
	cmp r6, r7
	blt _022FE1B8
	cmp r7, #8
	popge {r3, r4, r5, r6, r7, pc}
	mov lr, #6
	mla r4, r7, lr, ip
	mov r5, #1
	strb r5, [r4, #3]
	ldr r5, [ip, #0x30]
	mla r4, r5, lr, ip
	strb r0, [r4, #4]
	ldr r4, [ip, #0x30]
	mla r0, r4, lr, ip
	strb r1, [r0, #5]
	ldr r0, [ip, #0x30]
	mul r1, r0, lr
	strh r2, [ip, r1]
	ldr r1, [ip, #0x30]
	mla r0, r1, lr, ip
	strb r3, [r0, #2]
	ldr r0, [ip, #0x30]
	add r0, r0, #1
	str r0, [ip, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FE248: .4byte 0x02353538
	arm_func_end ov29_022FE198

	arm_func_start ov29_022FE24C
ov29_022FE24C: @ 0x022FE24C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	ldr r0, _022FE2E0 @ =0x02353538
	ldr r0, [r0]
	add r6, r0, #0x5e0
	bl ov29_022FBF08
	mov r5, #0
	mov r4, r5
	add sb, sp, #0
	mov r8, #1
	mov r7, #6
	b _022FE2C8
_022FE27C:
	mla r3, r5, r7, r6
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _022FE2C4
	ldrsh r2, [r3]
	mov r0, sb
	mov r1, r8
	strh r2, [sp]
	strh r4, [sp, #8]
	ldrb r2, [r3, #4]
	strh r2, [sp, #0xa]
	ldrb r2, [r3, #5]
	strh r2, [sp, #0xc]
	ldrb r2, [r3, #2]
	strb r2, [sp, #2]
	str r4, [sp, #4]
	strb r4, [sp, #0xe]
	bl SpawnMonster
_022FE2C4:
	add r5, r5, #1
_022FE2C8:
	ldr r0, [r6, #0x30]
	cmp r5, r0
	blt _022FE27C
	bl ov29_022FBF30
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FE2E0: .4byte 0x02353538
	arm_func_end ov29_022FE24C

	arm_func_start ov29_022FE2E4
ov29_022FE2E4: @ 0x022FE2E4
	ldr r0, _022FE2F8 @ =0x02353538
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x610]
	bx lr
	.align 2, 0
_022FE2F8: .4byte 0x02353538
	arm_func_end ov29_022FE2E4

	arm_func_start ov29_022FE2FC
ov29_022FE2FC: @ 0x022FE2FC
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r7, r1
	bl FUN_02052934
	mov r6, r0
	mov r5, #2
	add r4, sp, #0
	b _022FE33C
_022FE320:
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl FUN_0205379C
	ldrh r0, [sp, #4]
	add r5, r5, #1
	add r6, r6, r0
_022FE33C:
	cmp r5, r7
	ble _022FE320
	mov r0, r6
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov29_022FE2FC

	arm_func_start ov29_022FE350
ov29_022FE350: @ 0x022FE350
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r7, r2
	mov r4, r1
	mov r1, r7
	mov r5, r0
	bl FUN_020529C4
	add r6, sp, #0
	add sb, r6, r7
	mov r8, r0
	mov r7, #2
	b _022FE39C
_022FE380:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_0205379C
	ldrb r0, [sb, #6]
	add r7, r7, #1
	add r8, r8, r0
_022FE39C:
	cmp r7, r4
	ble _022FE380
	cmp r8, #0xff
	movgt r8, #0xff
	mov r0, r8
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022FE350

	arm_func_start ov29_022FE3B8
ov29_022FE3B8: @ 0x022FE3B8
	push {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r7, r2
	mov r4, r1
	mov r1, r7
	mov r5, r0
	bl FUN_020529E4
	add r6, sp, #0
	add sb, r6, r7
	mov r8, r0
	mov r7, #2
	b _022FE404
_022FE3E8:
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_0205379C
	ldrb r0, [sb, #8]
	add r7, r7, #1
	add r8, r8, r0
_022FE404:
	cmp r7, r4
	ble _022FE3E8
	cmp r8, #0xff
	movgt r8, #0xff
	mov r0, r8
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_022FE3B8

	arm_func_start ov29_022FE420
ov29_022FE420: @ 0x022FE420
	push {r3, r4, r5, lr}
	ldr r1, _022FE4A0 @ =0x02353538
	mov r4, r0
	ldr r0, [r1]
	add r0, r0, #0x348
	add r0, r0, #0x400
	bl FUN_0204F814
	mov r5, r0
	bl ov29_023491A4
	ldrsh r2, [r0, #0xe]
	ldr r0, _022FE4A4 @ =0x020A1998
	lsl r1, r5, #1
	ldrsh r1, [r0, r1]
	strh r2, [r4]
	mov r0, #1
	strh r1, [r4, #4]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	bl IsDestinationFloorWithHiddenOutlaw
	cmp r0, #0
	movne r0, #2
	strbne r0, [r4, #2]
	movne r0, #0
	strbne r0, [r4, #7]
	popne {r3, r4, r5, pc}
	bl IsDestinationFloorWithFleeingOutlaw
	cmp r0, #0
	movne r0, #3
	strbne r0, [r4, #2]
	moveq r0, #1
	strbeq r0, [r4, #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FE4A0: .4byte 0x02353538
_022FE4A4: .4byte 0x020A1998
	arm_func_end ov29_022FE420

	arm_func_start ov29_022FE4A8
ov29_022FE4A8: @ 0x022FE4A8
	ldr r0, _022FE4B8 @ =0x0237C9C0
	mov r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_022FE4B8: .4byte 0x0237C9C0
	arm_func_end ov29_022FE4A8

	arm_func_start ExecuteMonsterAction
ExecuteMonsterAction: @ 0x022FE4BC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r0, #1
	bl ov29_022E38E0
	bl ov29_022FBD08
	mov r0, #1
	bl ov29_0234B024
	ldr r6, [sb, #0xb4]
	mov r1, #0
	strb r1, [r6, #0x109]
	ldr r0, _022FED70 @ =0x02353538
	strb r1, [r6, #0xfc]
	ldr r1, [r0]
	ldr r0, _022FED74 @ =0x022C4F3C
	str sb, [r1, #0xc4]
	ldrh r2, [r6, #0x4a]
	ldrb r0, [r0, r2, lsl #1]
	cmp r0, #0
	beq _022FE538
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _022FE528
	ldr r1, _022FED78 @ =0x022C4F3D
	mov r0, sb
	ldrb r1, [r1, r2, lsl #1]
	bl ov29_022F3890
	b _022FE538
_022FE528:
	ldr r1, _022FED78 @ =0x022C4F3D
	mov r0, sb
	ldrb r1, [r1, r2, lsl #1]
	bl ov29_023085DC
_022FE538:
	mov r0, sb
	mov r1, #0
	bl ov29_02300DCC
	cmp r0, #0
	beq _022FE568
	mov r0, sb
	mov r1, #1
	bl ov29_0232461C
	cmp r0, #0
	beq _022FE568
	mov r0, sb
	bl ov29_02318D58
_022FE568:
	mov r4, #0
	add r3, r6, #0x124
	mov r1, r4
	mov r2, #1
_022FE578:
	ldrb r0, [r3, r4, lsl #3]
	add r5, r3, r4, lsl #3
	add r4, r4, #1
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	ldrhne r0, [r5, #2]
	bicne r0, r0, #4
	strhne r0, [r5, #2]
	cmp r4, #4
	blt _022FE578
	bl ov29_022E81F8
	mov r0, sb
	mov r1, #0
	bl ov29_022EB944
	cmp r0, #0
	bne _022FE638
	mov r0, sb
	bl DisplayActions
	cmp r0, #0
	beq _022FE608
	bl IsFloorOver
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _022FED7C @ =0x0237C9C0
	ldrb r0, [r0, #1]
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
_022FE608:
	ldrb r0, [r6, #7]
	cmp r0, #0
	bne _022FE61C
	mov r0, #0xa
	bl ov29_0234BA54
_022FE61C:
	ldrb r0, [r6, #0x23c]
	cmp r0, #0
	bne _022FE630
	mov r0, sb
	bl ov29_022F9840
_022FE630:
	mov r0, #0xa
	bl AdvanceFrame
_022FE638:
	mov r0, #0
	strb r0, [r6, #0x23c]
	ldrh r0, [r6, #0x4a]
	mov r4, #0
	ldr r1, _022FED80 @ =0x0237CA6C
	cmp r0, #1
	cmpne r0, #0
	cmpne r0, #4
	cmpne r0, #2
	movne r0, #1
	strbne r0, [r6, #0x152]
	strb r4, [r6, #0x154]
	ldr r0, _022FED84 @ =0x0237CA68
	strb r4, [r1]
	strb r4, [r0]
	mov r1, #1
	strb r1, [r6, #0x103]
	ldrh r0, [r6, #0x4a]
	cmp r0, #0x42
	addls pc, pc, r0, lsl #2
	b _022FEBAC
_022FE68C: @ jump table
	b _022FEBAC @ case 0
	b _022FEBAC @ case 1
	b _022FE798 @ case 2
	b _022FEBAC @ case 3
	b _022FEBAC @ case 4
	b _022FEBAC @ case 5
	b _022FEBAC @ case 6
	b _022FEBAC @ case 7
	b _022FEAA4 @ case 8
	b _022FEA30 @ case 9
	b _022FEAB0 @ case 10
	b _022FEAC8 @ case 11
	b _022FEBAC @ case 12
	b _022FEA08 @ case 13
	b _022FEA08 @ case 14
	b _022FEBAC @ case 15
	b _022FEA20 @ case 16
	b _022FEBAC @ case 17
	b _022FEA08 @ case 18
	b _022FEB0C @ case 19
	b _022FEB18 @ case 20
	b _022FE99C @ case 21
	b _022FEBAC @ case 22
	b _022FEB24 @ case 23
	b _022FEBAC @ case 24
	b _022FEBAC @ case 25
	b _022FEBAC @ case 26
	b _022FEBAC @ case 27
	b _022FEBAC @ case 28
	b _022FEBAC @ case 29
	b _022FEBAC @ case 30
	b _022FEBAC @ case 31
	b _022FEBAC @ case 32
	b _022FEBAC @ case 33
	b _022FEBAC @ case 34
	b _022FEB68 @ case 35
	b _022FEB74 @ case 36
	b _022FEB44 @ case 37
	b _022FE9A8 @ case 38
	b _022FEAC8 @ case 39
	b _022FEBAC @ case 40
	b _022FEBAC @ case 41
	b _022FEBAC @ case 42
	b _022FEBAC @ case 43
	b _022FEA28 @ case 44
	b _022FEBAC @ case 45
	b _022FEBAC @ case 46
	b _022FEBAC @ case 47
	b _022FEBAC @ case 48
	b _022FEA14 @ case 49
	b _022FEB34 @ case 50
	b _022FEBAC @ case 51
	b _022FEBAC @ case 52
	b _022FEBAC @ case 53
	b _022FEA3C @ case 54
	b _022FEA48 @ case 55
	b _022FEA60 @ case 56
	b _022FEB80 @ case 57
	b _022FEABC @ case 58
	b _022FEA84 @ case 59
	b _022FEA6C @ case 60
	b _022FEA78 @ case 61
	b _022FEA54 @ case 62
	b _022FEB5C @ case 63
	b _022FEBAC @ case 64
	b _022FEAC8 @ case 65
	b _022FEBA0 @ case 66
_022FE798:
	ldrb r0, [r6, #0xc4]
	cmp r0, #2
	cmpne r0, #7
	beq _022FE7B8
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #2
	bhi _022FE818
_022FE7B8:
	mov r0, #0
	strh r0, [r6, #0x4a]
	mov r0, #1
	strb r0, [r6, #0x151]
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _022FEBB4
	ldr r0, _022FED70 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0xd8]
	cmp r0, #0
	blt _022FE7F4
	mov r0, #0x56
	bl AdvanceFrame
_022FE7F4:
	ldr r1, _022FED70 @ =0x02353538
	mvn r2, #0
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022FEBB4
_022FE818:
	ldrb r1, [r6, #0x4c]
	ldrh r3, [r6]
	ldr r2, _022FED88 @ =0x0235171C
	lsl r8, r1, #2
	ldr r0, _022FED8C @ =0x0235171E
	ldrsh ip, [sb, #4]
	ldrsh r7, [r2, r8]
	ldrsh r5, [sb, #6]
	ldrsh r2, [r0, r8]
	add r0, ip, r7
	lsl r0, r0, #0x10
	add r2, r5, r2
	lsl r2, r2, #0x10
	mov r5, r4
	tst r3, #0x8000
	asr r7, r0, #0x10
	asr r8, r2, #0x10
	bne _022FE870
	mov r0, sb
	bl ov29_02300E78
	cmp r0, #0
	moveq r5, #1
_022FE870:
	cmp r5, #0
	beq _022FE8D8
	mov r0, #0
	strh r0, [r6, #0x4a]
	mov r0, #1
	strb r0, [r6, #0x151]
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _022FEBB4
	ldr r0, _022FED70 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsh r0, [r0, #0xd8]
	cmp r0, #0
	blt _022FE8B4
	mov r0, #0x56
	bl AdvanceFrame
_022FE8B4:
	ldr r1, _022FED70 @ =0x02353538
	mvn r2, #0
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022FEBB4
_022FE8D8:
	ldrsh r2, [sb, #4]
	mov r0, sb
	mov r1, r7
	strh r2, [sp]
	ldrsh r4, [sb, #6]
	mov r2, r8
	mov r3, #0
	strh r4, [sp, #2]
	bl ov29_022F85F0
	ldrb r1, [r6, #0x4c]
	add r2, sp, #0
	mov r0, sb
	bl ov29_02304D20
	mov r0, sb
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrbne r0, [r6, #0xef]
	cmpne r0, #3
	beq _022FE95C
	mov r0, sb
	mov r1, #0x6f
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	bne _022FE94C
	mov r0, sb
	mov r1, #0x10
	bl HasHeldItem
_022FE94C:
	cmp r0, #0
	bne _022FE95C
	add r0, sb, #4
	bl ov29_02337CCC
_022FE95C:
	ldrb r0, [r6, #7]
	mov r4, #1
	cmp r0, #0
	beq _022FEBB4
	ldrb r0, [r6, #0xd0]
	cmp r0, #2
	bne _022FEBB4
	ldr r1, _022FED70 @ =0x02353538
	sub r2, r4, #2
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xd8]
	ldr r0, [r1]
	add r0, r0, #0x100
	strh r2, [r0, #0xda]
	b _022FEBB4
_022FE99C:
	mov r0, sb
	bl ov29_0231A8A0
	b _022FEBB4
_022FE9A8:
	bl ov29_022E5D68
	ldr r0, _022FED70 @ =0x02353538
	mov r2, #1
	ldr r0, [r0]
	ldr r1, _022FED7C @ =0x0237C9C0
	strb r2, [r0, #6]
	ldrb r2, [r6, #0x4c]
	add r0, sb, #4
	strb r2, [r1]
	bl ov29_02338708
	cmp r0, #0
	beq _022FEBB4
	bl ov29_02338850
	cmp r0, #1
	bne _022FE9F0
	mov r0, #1
	bl ov29_02338898
	b _022FEBB4
_022FE9F0:
	bl ov29_02338850
	cmp r0, #2
	bne _022FEBB4
	mov r0, #2
	bl ov29_02338898
	b _022FEBB4
_022FEA08:
	mov r0, sb
	bl ov29_022F52CC
	b _022FEBB4
_022FEA14:
	mov r0, sb
	bl ov29_0231A9F8
	b _022FEBB4
_022FEA20:
	strh r1, [r6, #0x4a]
	b _022FEBB4
_022FEA28:
	strh r1, [r6, #0x4a]
	b _022FEBB4
_022FEA30:
	mov r0, sb
	bl ov29_022F4350
	b _022FEBB4
_022FEA3C:
	mov r0, sb
	bl ov29_022F45CC
	b _022FEBB4
_022FEA48:
	mov r0, sb
	bl ov29_022F48D8
	b _022FEBB4
_022FEA54:
	mov r0, sb
	bl ov29_022F49E0
	b _022FEBB4
_022FEA60:
	mov r0, sb
	bl ov29_022F4BDC
	b _022FEBB4
_022FEA6C:
	mov r0, sb
	bl ov29_022F4370
	b _022FEBB4
_022FEA78:
	mov r0, sb
	bl ov29_022F44F0
	b _022FEBB4
_022FEA84:
	ldr r0, _022FED70 @ =0x02353538
	ldrb r1, [r6, #0x4e]
	ldr r2, [r0]
	add r0, r2, r1, lsl #2
	add r0, r0, #0x12000
	ldr r0, [r0, #0xb28]
	str r0, [r2, #0xc8]
	b _022FEBB4
_022FEAA4:
	mov r0, sb
	bl ov29_022F4BF8
	b _022FEBB4
_022FEAB0:
	mov r0, sb
	bl ov29_022F4DAC
	b _022FEBB4
_022FEABC:
	mov r0, sb
	bl ov29_022F505C
	b _022FEBB4
_022FEAC8:
	mov r0, r6
	bl ov29_02302368
	cmp r0, #0
	beq _022FEAEC
	mov r0, sb
	bl ov29_022F996C
	mov r0, sb
	bl ov29_022F54BC
	b _022FEBB4
_022FEAEC:
	mov r0, r4
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, sb
	mov r1, #0xdf0
	bl LogMessageByIdWithPopupCheckUser
	b _022FEBB4
_022FEB0C:
	mov r0, sb
	bl ov29_022F59C4
	b _022FEBB4
_022FEB18:
	mov r0, sb
	bl ov29_022F5F18
	b _022FEBB4
_022FEB24:
	mov r0, sb
	mov r1, #0x160
	bl ov29_022F6058
	b _022FEBB4
_022FEB34:
	mov r0, sb
	rsb r1, r1, #0x164
	bl ov29_022F6058
	b _022FEBB4
_022FEB44:
	mov r0, sb
	mov r2, r4
	mov r3, r4
	add r1, sb, #4
	bl ov29_022EDFA0
	b _022FEBB4
_022FEB5C:
	mov r0, sb
	bl ov29_0230F164
	b _022FEBB4
_022FEB68:
	mov r0, sb
	bl ov29_022F52BC
	b _022FEBB4
_022FEB74:
	mov r0, sb
	bl ov29_022F54BC
	b _022FEBB4
_022FEB80:
	mov r0, r4
	mov r1, sb
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldr r1, _022FED90 @ =0x00000DF1
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
	b _022FEBB4
_022FEBA0:
	mov r0, sb
	bl ov29_02343D30
	b _022FEBB4
_022FEBAC:
	mov r0, #1
	strh r0, [r6, #0x4a]
_022FEBB4:
	mov r0, sb
	bl ov29_022EDDD4
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r2, [sb, #0xb4]
	ldrb r0, [r2, #0x154]
	cmp r0, #0
	bne _022FEBF0
	mov r1, #0
	mov r0, sb
	strb r1, [r2, #0x154]
	bl ov29_02318D58
_022FEBF0:
	mov r0, #0
	bl ov29_022E3A58
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov29_02348F20
	ldrb r0, [r6, #0x155]
	cmp r0, #0
	beq _022FEC88
	mov ip, #0
	mov r5, #1
	mov r8, ip
	strb ip, [r6, #0x155]
	add r7, r6, #0x124
	mov r3, ip
	mov r1, ip
	mov r0, r5
_022FEC3C:
	ldrb r2, [r7, r8, lsl #3]
	add lr, r7, r8, lsl #3
	tst r2, #1
	movne r2, r5
	moveq r2, r3
	tst r2, #0xff
	beq _022FEC68
	ldrb r2, [lr]
	tst r2, #0x10
	movne ip, r0
	strbne r1, [lr, #6]
_022FEC68:
	add r8, r8, #1
	cmp r8, #4
	blt _022FEC3C
	cmp ip, #0
	beq _022FEC88
	ldr r1, _022FED94 @ =0x00000DF2
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUser
_022FEC88:
	bl ov29_022FF168
	bl ov29_022EC85C
	cmp r0, #0
	bne _022FECB4
	bl ov29_022FEFC8
	bl ov29_022FEDBC
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
_022FECB4:
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	bl ov29_022EC85C
	cmp r0, #0
	bne _022FECD8
	bl ov29_02346888
_022FECD8:
	mov r0, #0
	bl ov29_022E3A58
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r6, #0x14e]
	cmp r0, #0
	cmpeq r4, #0
	bne _022FED68
	mov r0, sb
	add r1, sb, #4
	bl ov29_022FFC9C
	cmp r0, #0
	beq _022FED58
	ldr r0, [r6, #0x110]
	cmp r0, #1
	ble _022FED50
	mov r0, #0
	bl DisplayActions
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _022FED48
	bl IsFloorOver
	cmp r0, #0
	beq _022FED50
_022FED48:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FED50:
	mov r0, sb
	bl ov29_02321104
_022FED58:
	mov r0, sb
	bl ov29_0230FC24
	mov r0, sb
	bl EnemyEvolution
_022FED68:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FED70: .4byte 0x02353538
_022FED74: .4byte 0x022C4F3C
_022FED78: .4byte 0x022C4F3D
_022FED7C: .4byte 0x0237C9C0
_022FED80: .4byte 0x0237CA6C
_022FED84: .4byte 0x0237CA68
_022FED88: .4byte 0x0235171C
_022FED8C: .4byte 0x0235171E
_022FED90: .4byte 0x00000DF1
_022FED94: .4byte 0x00000DF2
	arm_func_end ExecuteMonsterAction

	arm_func_start EntityIsValid
EntityIsValid: @ 0x022FED98
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_022FEDBC
ov29_022FEDBC: @ 0x022FEDBC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r4, #0
_022FEDC8:
	ldr r0, _022FEFB8 @ =0x02353538
	mov r6, #0
	ldr r0, [r0]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	ldrne r8, [r7, #0xb4]
	ldrbne r5, [r8, #0x177]
	cmpne r5, #0xff
	beq _022FEFA4
	mov r0, r7
	mov r1, #1
	bl ov29_02300DCC
	cmp r0, #0
	movne r0, #0xff
	strbne r0, [r8, #0x177]
	bne _022FEFA4
	mov r0, r7
	bl ov29_023007A8
	cmp r0, #0
	moveq r0, #0xff
	strbeq r0, [r8, #0x177]
	beq _022FEFA4
	ldrb r0, [r8, #0xf3]
	cmp r0, #1
	moveq r0, #0xff
	strbeq r0, [r8, #0x177]
	beq _022FEFA4
	mov r0, #4
	bl DungeonRandInt
	ldr fp, _022FEFBC @ =0x0000020D
	mov sb, r6
	add lr, r8, #0x124
	sub r1, fp, #0xc6
	b _022FEF80
_022FEE60:
	ldrb r2, [lr, r0, lsl #3]
	add sl, lr, r0, lsl #3
	tst r2, #1
	movne r2, #1
	moveq r2, #0
	tst r2, #0xff
	beq _022FEF70
	add ip, sp, #8
	mov r3, #4
_022FEE84:
	ldrh r2, [sl], #2
	subs r3, r3, #1
	strh r2, [ip], #2
	bne _022FEE84
	ldrh r2, [sp, #0xc]
	cmp r2, #0x8a
	cmpne r2, r1
	cmpne r2, fp
	beq _022FEF70
	mov sb, #0
	add r6, r8, #0x124
	mov fp, #1
	b _022FEF20
_022FEEB8:
	ldrb r0, [r6, sb, lsl #3]
	add sl, r6, sb, lsl #3
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022FEF1C
	ldrb r0, [r8, #7]
	cmp r0, #0
	bne _022FEEEC
	ldrb r0, [sl]
	tst r0, #4
	beq _022FEF1C
_022FEEEC:
	ldrh r0, [sl, #4]
	cmp r0, #0xe3
	bne _022FEF1C
	mov r0, r7
	mov r1, sl
	mov r2, #1
	bl CanMonsterUseMove
	cmp r0, #0
	beq _022FEF1C
	add r0, sl, #6
	bl TickStatusTurnCounter
	b _022FEF28
_022FEF1C:
	add sb, sb, #1
_022FEF20:
	cmp sb, #4
	blt _022FEEB8
_022FEF28:
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022FEFC0 @ =0x00000DF3
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	and r0, r5, #7
	strb r0, [r8, #0x4c]
	mov r1, #0
	add r2, sp, #8
	stm sp, {r1, r2}
	mov r0, r7
	mov r2, r1
	mov r3, #1
	bl ov29_02322374
	mov r6, #1
	b _022FEF88
_022FEF70:
	add r0, r0, #1
	cmp r0, #4
	moveq r0, #0
	add sb, sb, #1
_022FEF80:
	cmp sb, #4
	blt _022FEE60
_022FEF88:
	mov r0, #0xff
	strb r0, [r8, #0x177]
	cmp r6, #0
	beq _022FEFA4
	ldr r1, _022FEFC4 @ =0x00001204
	mov r0, r7
	bl ov29_022E56A0
_022FEFA4:
	add r4, r4, #1
	cmp r4, #0x14
	blt _022FEDC8
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FEFB8: .4byte 0x02353538
_022FEFBC: .4byte 0x0000020D
_022FEFC0: .4byte 0x00000DF3
_022FEFC4: .4byte 0x00001204
	arm_func_end ov29_022FEDBC

	arm_func_start ov29_022FEFC8
ov29_022FEFC8: @ 0x022FEFC8
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov r5, #0
_022FEFD4:
	ldr r0, _022FF160 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	ldrne sl, [r8, #0xb4]
	ldrbne r7, [sl, #0x178]
	cmpne r7, #0xff
	beq _022FF14C
	mov r0, r8
	mov r1, #1
	bl ov29_02300DCC
	cmp r0, #0
	movne r0, #0xff
	strbne r0, [sl, #0x178]
	strbne r0, [sl, #0x177]
	bne _022FF14C
	mov r0, r8
	bl ov29_023007A8
	cmp r0, #0
	moveq r0, #0xff
	strbeq r0, [sl, #0x178]
	strbeq r0, [sl, #0x177]
	beq _022FF14C
	ldrb r0, [sl, #0xf3]
	cmp r0, #1
	moveq r0, #0xff
	strbeq r0, [sl, #0x178]
	strbeq r0, [sl, #0x177]
	beq _022FF14C
	mov r6, #0
	add r4, sl, #0x124
	mov fp, #1
	b _022FF0F8
_022FF068:
	ldrb r0, [r4, r6, lsl #3]
	add sb, r4, r6, lsl #3
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	beq _022FF0F4
	ldrb r0, [sl, #7]
	cmp r0, #0
	bne _022FF09C
	ldrb r0, [sb]
	tst r0, #4
	beq _022FF0F4
_022FF09C:
	ldrh r0, [sb, #4]
	cmp r0, #0x19
	bne _022FF0F4
	mov r0, r8
	mov r1, sb
	mov r2, #1
	bl CanMonsterUseMove
	cmp r0, #0
	beq _022FF0F4
	add r2, sp, #8
	mov r3, sb
	mov r1, #4
_022FF0CC:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _022FF0CC
	add r0, sb, #6
	bl TickStatusTurnCounter
	mov r0, r8
	mov r1, sb
	bl ov29_022FAA04
	b _022FF100
_022FF0F4:
	add r6, r6, #1
_022FF0F8:
	cmp r6, #4
	blt _022FF068
_022FF100:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _022FF164 @ =0x00000DF4
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	and r0, r7, #7
	mov r1, #0
	strb r0, [sl, #0x4c]
	add r3, sp, #8
	stm sp, {r1, r3}
	mov r0, r8
	mov r2, r1
	mov r3, #1
	bl ov29_02322374
	mov r0, #0xff
	strb r0, [sl, #0x178]
	strb r0, [sl, #0x177]
_022FF14C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _022FEFD4
	add sp, sp, #0x10
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022FF160: .4byte 0x02353538
_022FF164: .4byte 0x00000DF4
	arm_func_end ov29_022FEFC8

	arm_func_start ov29_022FF168
ov29_022FF168: @ 0x022FF168
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r5, _022FF1C4 @ =0x02353538
	mov r6, r4
_022FF178:
	ldr r0, [r5]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	ldrne r2, [r7, #0xb4]
	ldrbne r0, [r2, #0x15c]
	cmpne r0, #0
	beq _022FF1B4
	mov r0, r7
	mov r1, r7
	strb r6, [r2, #0x15c]
	bl ov29_02313CE4
_022FF1B4:
	add r4, r4, #1
	cmp r4, #0x14
	blt _022FF178
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022FF1C4: .4byte 0x02353538
	arm_func_end ov29_022FF168

	arm_func_start HasStatusThatPreventsActing
HasStatusThatPreventsActing: @ 0x022FF1C8
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r0, r4, #0x4a
	mov r1, #1
	bl SetMonsterActionFields
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	cmpne r0, #3
	cmpne r0, #5
	bne _022FF20C
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF20C:
	ldrb r0, [r4, #0xc4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022FF27C
_022FF21C: @ jump table
	b _022FF27C @ case 0
	b _022FF238 @ case 1
	b _022FF27C @ case 2
	b _022FF24C @ case 3
	b _022FF260 @ case 4
	b _022FF27C @ case 5
	b _022FF274 @ case 6
_022FF238:
	ldr r1, _022FF3DC @ =0x00000C28
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF24C:
	ldr r1, _022FF3E0 @ =0x00000C29
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF260:
	ldr r1, _022FF3E4 @ =0x00000C2A
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF274:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF27C:
	ldrb r0, [r4, #0xd0]
	cmp r0, #3
	beq _022FF294
	cmp r0, #7
	beq _022FF2A8
	b _022FF2BC
_022FF294:
	ldr r1, _022FF3E8 @ =0x00000C2B
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF2A8:
	ldr r1, _022FF3EC @ =0x00000C2C
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF2BC:
	ldrb r0, [r4, #0xd2]
	cmp r0, #1
	bne _022FF2DC
	ldr r1, _022FF3F0 @ =0x00000C2D
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF2DC:
	ldrb r0, [r4, #0xd8]
	cmp r0, #2
	bne _022FF320
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	ldrsh r2, [r5, #4]
	add r1, r4, #0x100
	mov r0, #1
	strh r2, [r1, #0x7e]
	ldrsh r2, [r5, #6]
	sub r2, r2, #1
	strh r2, [r1, #0x80]
	pop {r3, r4, r5, pc}
_022FF320:
	ldrb r0, [r4, #9]
	cmp r0, #1
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	beq _022FF3AC
	ldrb r1, [r4, #0x4c]
	mov r0, r5
	bl ov29_02300E78
	cmp r0, #0
	beq _022FF368
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	b _022FF3A4
_022FF368:
	mov r0, #2
	bl DungeonRandInt
	cmp r0, #0
	beq _022FF39C
	mov r0, #8
	bl DungeonRandInt
	and r1, r0, #0xff
	and r0, r1, #7
	strb r0, [r4, #0x4c]
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	b _022FF3A4
_022FF39C:
	mov r0, r5
	bl FUN_01FFB658
_022FF3A4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022FF3AC:
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_022FF3DC: .4byte 0x00000C28
_022FF3E0: .4byte 0x00000C29
_022FF3E4: .4byte 0x00000C2A
_022FF3E8: .4byte 0x00000C2B
_022FF3EC: .4byte 0x00000C2C
_022FF3F0: .4byte 0x00000C2D
	arm_func_end HasStatusThatPreventsActing

	arm_func_start ov29_022FF3F4
ov29_022FF3F4: @ 0x022FF3F4
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r4, #0
	ldr r6, [r7, #0xb4]
	mov r0, r4
	mov r1, r7
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	add r0, r6, #0x4a
	mov r1, #1
	bl SetMonsterActionFields
	ldrb r0, [r6, #0xbd]
	cmp r0, #1
	cmpne r0, #3
	cmpne r0, #5
	bne _022FF448
	ldr r1, _022FF60C @ =0x00000C2E
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF448:
	ldrb r0, [r6, #0xc4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _022FF4B8
_022FF458: @ jump table
	b _022FF4B8 @ case 0
	b _022FF474 @ case 1
	b _022FF4B8 @ case 2
	b _022FF488 @ case 3
	b _022FF49C @ case 4
	b _022FF4B8 @ case 5
	b _022FF4B0 @ case 6
_022FF474:
	ldr r1, _022FF610 @ =0x00000C28
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF488:
	ldr r1, _022FF614 @ =0x00000C29
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF49C:
	ldr r1, _022FF618 @ =0x00000C2A
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF4B0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF4B8:
	ldrb r0, [r6, #0xd0]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _022FF51C
_022FF4C8: @ jump table
	b _022FF51C @ case 0
	b _022FF51C @ case 1
	b _022FF4EC @ case 2
	b _022FF4F4 @ case 3
	b _022FF51C @ case 4
	b _022FF51C @ case 5
	b _022FF51C @ case 6
	b _022FF508 @ case 7
	b _022FF51C @ case 8
_022FF4EC:
	mov r4, #1
	b _022FF51C
_022FF4F4:
	ldr r1, _022FF61C @ =0x00000C2B
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF508:
	ldr r1, _022FF620 @ =0x00000C2C
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF51C:
	ldrb r0, [r6, #0xd2]
	cmp r0, #1
	bne _022FF53C
	ldr r1, _022FF624 @ =0x00000C2D
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF53C:
	cmp r0, #0
	cmpne r0, #0xb
	cmpne r0, #0xc
	beq _022FF604
	cmp r4, #0
	beq _022FF564
	ldr r1, _022FF628 @ =0x00000C2F
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _022FF5FC
_022FF564:
	mov r5, #0
	add r4, r6, #0x124
	mov r8, r5
	mov sb, #1
	b _022FF5F4
_022FF578:
	ldrb r0, [r4, r5, lsl #3]
	lsl r1, r5, #3
	tst r0, #1
	movne r0, sb
	moveq r0, r8
	tst r0, #0xff
	beq _022FF5F0
	mov r0, r7
	add r1, r4, r1
	bl ov29_023245A4
	cmp r0, #0
	beq _022FF5F0
	ldrb r0, [r6, #0xd4]
	cmp r0, r5
	bne _022FF5F0
	b _022FF5CC
_022FF5B8:
	add r0, r6, r5, lsl #3
	ldrb r0, [r0, #0x124]
	tst r0, #2
	beq _022FF5D4
	sub r5, r5, #1
_022FF5CC:
	cmp r5, #0
	bgt _022FF5B8
_022FF5D4:
	ldrb r1, [r6, #0x4e]
	lsl r2, r5, #0x10
	add r0, r6, #0x4a
	asr r2, r2, #0x10
	bl ov29_022EBC98
	mov r0, #1
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_022FF5F0:
	add r5, r5, #1
_022FF5F4:
	cmp r5, #4
	blt _022FF578
_022FF5FC:
	mov r0, r7
	bl ov29_02318D58
_022FF604:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022FF60C: .4byte 0x00000C2E
_022FF610: .4byte 0x00000C28
_022FF614: .4byte 0x00000C29
_022FF618: .4byte 0x00000C2A
_022FF61C: .4byte 0x00000C2B
_022FF620: .4byte 0x00000C2C
_022FF624: .4byte 0x00000C2D
_022FF628: .4byte 0x00000C2F
	arm_func_end ov29_022FF3F4

	arm_func_start ov29_022FF62C
ov29_022FF62C: @ 0x022FF62C
	push {r4, lr}
	mov r4, r1
	bl FUN_02052874
	cmp r4, #0
	beq _022FF660
	cmp r0, #0
	cmpne r0, #4
	moveq r1, #1
	movne r1, #0
	tst r1, #0xff
	ldrne r0, _022FF670 @ =0x0237C9B8
	ldrbne r0, [r0, #5]
	popne {r4, pc}
_022FF660:
	cmp r0, #4
	ldrhs r1, _022FF670 @ =0x0237C9B8
	ldrbhs r0, [r1, r0]
	pop {r4, pc}
	.align 2, 0
_022FF670: .4byte 0x0237C9B8
	arm_func_end ov29_022FF62C

	arm_func_start ov29_022FF674
ov29_022FF674: @ 0x022FF674
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #4
	moveq r2, #1
	movne r2, #0
	mov r0, r1
	and r1, r2, #0xff
	bl ov29_022FF62C
	mov r4, r0
	cmp r4, #3
	beq _022FF6BC
	mov r0, r5
	bl HasConditionalGroundImmunity
	cmp r0, #0
	movne r0, #2
	popne {r3, r4, r5, pc}
_022FF6BC:
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022FF674

	arm_func_start ov29_022FF6C4
ov29_022FF6C4: @ 0x022FF6C4
	push {r4, lr}
	mov r4, r1
	ldr r1, [r4, #0xc]
	cmp r1, #0
	movne r0, #1
	popne {r4, pc}
	ldrh r1, [r4]
	tst r1, #0x10
	movne r0, #1
	popne {r4, pc}
	mov r1, #0
	bl ov29_022FF62C
	ldrh r1, [r4]
	cmp r0, #3
	and r1, r1, #3
	addls pc, pc, r0, lsl #2
	b _022FF754
_022FF708: @ jump table
	b _022FF718 @ case 0
	b _022FF728 @ case 1
	b _022FF744 @ case 2
	b _022FF754 @ case 3
_022FF718:
	cmp r1, #1
	bne _022FF75C
	mov r0, #0
	pop {r4, pc}
_022FF728:
	cmp r1, #2
	moveq r0, #0
	popeq {r4, pc}
	cmp r1, #1
	bne _022FF75C
	mov r0, #0
	pop {r4, pc}
_022FF744:
	cmp r1, #0
	beq _022FF75C
	mov r0, #0
	pop {r4, pc}
_022FF754:
	mov r0, #0
	pop {r4, pc}
_022FF75C:
	mov r0, #1
	pop {r4, pc}
	arm_func_end ov29_022FF6C4

	arm_func_start ov29_022FF764
ov29_022FF764: @ 0x022FF764
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	bl ov29_02336204
	cmp r0, #0
	bne _022FF810
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
_022FF810:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FF888
_022FF83C: @ jump table
	b _022FF84C @ case 0
	b _022FF85C @ case 1
	b _022FF878 @ case 2
	b _022FF888 @ case 3
_022FF84C:
	cmp r4, #1
	bne _022FF890
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FF85C:
	cmp r4, #2
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r4, #1
	bne _022FF890
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FF878:
	cmp r4, #0
	beq _022FF890
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FF888:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FF890:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FF764

	arm_func_start ItemIsActive
ItemIsActive: @ 0x022FF898
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	pop {r3, r4, r5, pc}
	arm_func_end ItemIsActive

	arm_func_start ov29_022FF8C8
ov29_022FF8C8: @ 0x022FF8C8
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _022FF8EC
	mov r1, #0xc
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #2
_022FF8EC:
	mov r0, r5
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #3
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022FF8C8

	arm_func_start ov29_022FF908
ov29_022FF908: @ 0x022FF908
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrb r1, [r4, #0xef]
	cmp r1, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	mov r1, #0x10
	bl ItemIsActive
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrsh r1, [r4, #2]
	mov r0, r5
	bl ov29_022FF674
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	arm_func_end ov29_022FF908

	arm_func_start ov29_022FF958
ov29_022FF958: @ 0x022FF958
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	bl ov29_02336204
	cmp r0, #0
	bne _022FFA0C
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
_022FFA0C:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FFA84
_022FFA38: @ jump table
	b _022FFA48 @ case 0
	b _022FFA58 @ case 1
	b _022FFA74 @ case 2
	b _022FFA84 @ case 3
_022FFA48:
	cmp r4, #1
	bne _022FFA8C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFA58:
	cmp r4, #2
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r4, #1
	bne _022FFA8C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFA74:
	cmp r4, #0
	beq _022FFA8C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFA84:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFA8C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FF958

	arm_func_start ov29_022FFA94
ov29_022FFA94: @ 0x022FFA94
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r1, [r4]
	cmp r0, #3
	and r1, r1, #3
	addls pc, pc, r0, lsl #2
	b _022FFB80
_022FFB34: @ jump table
	b _022FFB44 @ case 0
	b _022FFB54 @ case 1
	b _022FFB70 @ case 2
	b _022FFB70 @ case 3
_022FFB44:
	cmp r1, #1
	bne _022FFB88
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFB54:
	cmp r1, #2
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r1, #1
	bne _022FFB88
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFB70:
	cmp r1, #0
	beq _022FFB88
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFB80:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFB88:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FFA94

	arm_func_start ov29_022FFB90
ov29_022FFB90: @ 0x022FFB90
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	bl ov29_02336204
	cmp r0, #0
	bne _022FFC44
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
_022FFC44:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FFC94
_022FFC70: @ jump table
	b _022FFC80 @ case 0
	b _022FFC80 @ case 1
	b _022FFC80 @ case 2
	b _022FFC94 @ case 3
_022FFC80:
	cmp r4, #0
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_022FFC94:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FFB90

	arm_func_start ov29_022FFC9C
ov29_022FFC9C: @ 0x022FFC9C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r0
	ldrsh r0, [r7]
	ldrsh r1, [r7, #2]
	ldr r5, [r6, #0xb4]
	bl GetTile
	ldrsh r1, [r7]
	mov r4, r0
	cmp r1, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	ldrsh r0, [r7, #2]
	cmp r0, #0
	movlt r0, #1
	poplt {r3, r4, r5, r6, r7, pc}
	cmp r1, #0x38
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	cmp r0, #0x20
	movge r0, #1
	popge {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _022FFD38
	ldr r0, [r1]
	cmp r0, #1
	bne _022FFD30
	ldr r0, [r1, #0xb4]
	cmp r0, r5
	beq _022FFD38
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022FFD30:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022FFD38:
	bl ov29_02336204
	cmp r0, #0
	bne _022FFD6C
	ldrb r0, [r5, #0xef]
	cmp r0, #3
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
_022FFD6C:
	ldrsh r1, [r5, #2]
	mov r0, r6
	bl ov29_022FF674
	ldrh r2, [r4]
	mov r1, r0
	mov r0, r6
	and r4, r2, #3
	bl ov29_022FF8C8
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _022FFDE4
_022FFD98: @ jump table
	b _022FFDA8 @ case 0
	b _022FFDB8 @ case 1
	b _022FFDD4 @ case 2
	b _022FFDE4 @ case 3
_022FFDA8:
	cmp r4, #1
	bne _022FFDEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFDB8:
	cmp r4, #2
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	cmp r4, #1
	bne _022FFDEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFDD4:
	cmp r4, #0
	beq _022FFDEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFDE4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022FFDEC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_022FFC9C

	arm_func_start CalcSpeedStage
CalcSpeedStage: @ 0x022FFDF4
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	ldr r6, [r8, #0xb4]
	bl GetApparentWeather
	mov r4, #0
	mov r5, r0
	mov r1, r4
_022FFE14:
	add r2, r6, r1
	ldrb r0, [r2, #0x119]
	add r1, r1, #1
	cmp r0, #0
	ldrb r0, [r2, #0x114]
	subne r4, r4, r7
	cmp r0, #0
	addne r4, r4, r7
	cmp r1, #5
	blt _022FFE14
	ldrb r0, [r6, #0xbf]
	cmp r0, #4
	ldrsh r0, [r6, #2]
	subeq r4, r4, #1
	bl FUN_02052858
	add r4, r4, r0
	mov r0, r8
	mov r1, #6
	bl MonsterIsType
	cmp r0, #0
	beq _022FFE78
	mov r0, r8
	bl GetApparentWeather
	cmp r0, #7
	addeq r4, r4, #1
_022FFE78:
	mov r0, r8
	mov r1, #0x3a
	bl IqSkillIsEnabled
	cmp r0, #0
	ldr r1, _022FFF18 @ =0x023535B8
	addne r4, r4, #1
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _022FFEB0
	ldrb r1, [r1, r5]
	mov r0, r8
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	addne r4, r4, #1
_022FFEB0:
	ldrsh r1, [r6, #4]
	ldr r0, _022FFF1C @ =0x000001A5
	cmp r1, r0
	addne r0, r0, #0x72
	cmpne r1, r0
	ldrsh r1, [r6, #2]
	ldr r0, _022FFF20 @ =0x0000017F
	addeq r4, r4, #1
	cmp r1, r0
	addne r0, r0, #0x258
	cmpne r1, r0
	bne _022FFEFC
	ldrb r0, [r6, #6]
	cmp r0, #0
	ldrne r0, _022FFF24 @ =0x02353538
	ldrne r0, [r0]
	ldrbne r0, [r0, #0x790]
	cmpne r0, #0
	addne r4, r4, #1
_022FFEFC:
	cmp r4, #0
	movlt r4, #0
	cmp r4, #5
	movge r4, #4
	mov r0, r4
	str r4, [r6, #0x110]
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022FFF18: .4byte 0x023535B8
_022FFF1C: .4byte 0x000001A5
_022FFF20: .4byte 0x0000017F
_022FFF24: .4byte 0x02353538
	arm_func_end CalcSpeedStage

	arm_func_start ExclusiveItemEffectIsActive
ExclusiveItemEffectIsActive: @ 0x022FFF28
	push {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	movne r0, #0
	popne {r3, pc}
	add r0, r2, #0x228
	bl FUN_02010FA4
	pop {r3, pc}
	arm_func_end ExclusiveItemEffectIsActive

	arm_func_start CalcSpeedStageWrapper
CalcSpeedStageWrapper: @ 0x022FFF4C
	ldr ip, _022FFF58 @ =CalcSpeedStage
	mov r1, #1
	bx ip
	.align 2, 0
_022FFF58: .4byte CalcSpeedStage
	arm_func_end CalcSpeedStageWrapper

	arm_func_start GetNumberOfAttacks
GetNumberOfAttacks: @ 0x022FFF5C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, #0
	mov sl, r0
	mov sb, r1
	mov r6, r5
	mov r7, r5
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r5
	beq _023000D4
	mov r0, sl
	bl GetApparentWeather
	mov r8, r0
	cmp r8, #4
	bne _022FFFB8
	mov r0, sl
	mov r1, #0x1b
	bl AbilityIsActive
	cmp r0, #0
	movne r5, #1
	movne r6, r5
	b _022FFFD8
_022FFFB8:
	cmp r8, #1
	bne _022FFFD8
	mov r0, sl
	mov r1, #0x4a
	bl AbilityIsActive
	cmp r0, #0
	movne r5, #1
	movne r6, r5
_022FFFD8:
	ldr r4, _023000DC @ =0x023535B0
	ldrb r0, [r4, r8]
	cmp r0, #0
	beq _02300000
	ldrb r1, [r4, r8]
	mov r0, sl
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	ldrbne r7, [r4, r8]
	movne r5, #1
_02300000:
	mov r0, sl
	mov r1, #0x54
	bl AbilityIsActive
	cmp r0, #0
	beq _02300028
	ldr r0, [sl, #0xb4]
	ldrsh r0, [r0, #0x66]
	cmp r0, #0
	moveq r5, #1
	moveq r6, r5
_02300028:
	cmp sb, #0
	beq _023000C8
	cmp r6, #0
	beq _02300068
	ldr r0, [sl, #0xb4]
	mov r2, r5
	mov r1, #0x40
	bl ov29_023023C0
	cmp r0, #0
	beq _023000C8
	mov r0, sl
	bl ov29_022E655C
	mov r0, sl
	mov r1, #0xc30
	bl LogMessageByIdWithPopupCheckUser
	b _023000C8
_02300068:
	cmp r7, #0
	beq _023000C8
	ldr r0, [sl, #0xb4]
	mov r2, r5
	mov r1, #0x40
	bl ov29_023023C0
	cmp r0, #0
	beq _023000C8
	mov r0, sl
	bl ov29_022E655C
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r2, sp, #0
	mov r0, sl
	mov r1, r7
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #0
	bl ov29_02344B44
	ldr r1, _023000E0 @ =0x00000C31
	mov r0, sl
	bl LogMessageByIdWithPopupCheckUser
_023000C8:
	cmp r5, #0
	movne r0, #2
	moveq r0, #1
_023000D4:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023000DC: .4byte 0x023535B0
_023000E0: .4byte 0x00000C31
	arm_func_end GetNumberOfAttacks

	arm_func_start EntityIsValid
EntityIsValid: @ 0x023000E4
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_02300108
ov29_02300108: @ 0x02300108
	ldr r1, _02300160 @ =0x02353538
	ldr r1, [r1]
	add r1, r1, #0x1a000
	ldrb r2, [r1, #0x23e]
	cmp r2, #0
	ldrbeq r2, [r1, #0x245]
	cmpeq r2, #0
	bne _0230013C
	ldrb r1, [r1, #0x244]
	cmp r1, #0
	ldrbeq r1, [r0, #0xef]
	cmpeq r1, #1
	bne _0230014C
_0230013C:
	ldrb r1, [r0, #6]
	cmp r1, #0
	movne r0, #1
	bxne lr
_0230014C:
	ldrb r0, [r0, #0xd8]
	cmp r0, #2
	moveq r0, #2
	movne r0, #0
	bx lr
	.align 2, 0
_02300160: .4byte 0x02353538
	arm_func_end ov29_02300108

	arm_func_start ov29_02300164
ov29_02300164: @ 0x02300164
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl ov29_02300108
	cmp r0, #1
	bne _02300190
	ldr r1, _02300274 @ =0x00000C34
	mov r0, r5
	bl FUN_020258E4
	pop {r3, r4, r5, pc}
_02300190:
	cmp r0, #2
	bne _023001A8
	ldr r1, _02300278 @ =0x00000C32
	mov r0, r5
	bl FUN_020258E4
	pop {r3, r4, r5, pc}
_023001A8:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230025C
	ldrb r0, [r4, #0xbc]
	cmp r0, #0xb
	bne _023001DC
	mov r0, #0
	bl FUN_020590F8
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl FUN_02056084
	pop {r3, r4, r5, pc}
_023001DC:
	cmp r0, #0xc
	bne _02300200
	mov r0, #1
	bl FUN_020590F8
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl FUN_02056084
	pop {r3, r4, r5, pc}
_02300200:
	cmp r0, #0xd
	bne _02300224
	mov r0, #2
	bl FUN_020590F8
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl FUN_02056084
	pop {r3, r4, r5, pc}
_02300224:
	cmp r0, #0xe
	bne _02300248
	mov r0, #3
	bl FUN_020590F8
	mov r1, r0
	mov r0, r5
	mov r2, #0x4e
	bl FUN_02056084
	pop {r3, r4, r5, pc}
_02300248:
	ldrsh r1, [r4, #4]
	mov r0, r5
	mov r2, #0x4e
	bl FUN_02052440
	pop {r3, r4, r5, pc}
_0230025C:
	ldrsh r0, [r4, #0xc]
	bl FUN_0205638C
	mov r1, r0
	mov r0, r5
	bl FUN_020585B4
	pop {r3, r4, r5, pc}
	.align 2, 0
_02300274: .4byte 0x00000C34
_02300278: .4byte 0x00000C32
	arm_func_end ov29_02300164

	arm_func_start ov29_0230027C
ov29_0230027C: @ 0x0230027C
	push {r4, lr}
	sub sp, sp, #0x100
	ldrb r2, [r1, #0xd8]
	mov r4, r0
	cmp r2, #2
	bne _023002B4
	ldr r1, _023002C0 @ =0x00000C32
	add r0, sp, #0
	bl FUN_020258E4
	ldr r1, _023002C4 @ =0x023527C0
	add r2, sp, #0
	mov r0, r4
	bl SprintfStatic
	b _023002B8
_023002B4:
	bl ov29_02300164
_023002B8:
	add sp, sp, #0x100
	pop {r4, pc}
	.align 2, 0
_023002C0: .4byte 0x00000C32
_023002C4: .4byte 0x023527C0
	arm_func_end ov29_0230027C

	arm_func_start SprintfStatic
SprintfStatic: @ 0x023002C8
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl FUN_02089544
	pop {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end SprintfStatic

	arm_func_start ov29_023002F0
ov29_023002F0: @ 0x023002F0
	push {r3, r4, r5, lr}
	ldrb r3, [r1, #0xd8]
	mov r5, r0
	mov r4, r2
	cmp r3, #2
	bne _02300328
	ldr r0, _02300350 @ =0x00000C33
	bl FUN_020258C4
	mov r3, r0
	ldr r1, _02300354 @ =0x023527D0
	mov r0, r5
	mov r2, r4
	bl SprintfStatic
	pop {r3, r4, r5, pc}
_02300328:
	ldrb r3, [r1, #6]
	cmp r3, #0
	beq _02300344
	ldrsh r1, [r1, #4]
	mov r2, #0x4e
	bl FUN_020523D0
	pop {r3, r4, r5, pc}
_02300344:
	ldrsh r1, [r1, #0xc]
	bl FUN_02058534
	pop {r3, r4, r5, pc}
	.align 2, 0
_02300350: .4byte 0x00000C33
_02300354: .4byte 0x023527D0
	arm_func_end ov29_023002F0

	arm_func_start ov29_02300358
ov29_02300358: @ 0x02300358
	push {r4, lr}
	ldr r2, _02300400 @ =0x02353538
	mov r4, r0
	ldr r0, [r2]
	add r0, r0, #0x1a000
	ldrb r2, [r0, #0x23e]
	cmp r2, #0
	ldrbeq r0, [r0, #0x245]
	cmpeq r0, #0
	bne _0230038C
	ldrb r0, [r1, #0xef]
	cmp r0, #1
	bne _023003B0
_0230038C:
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _023003B0
	ldr r0, _02300404 @ =0x00000C35
	bl FUN_020258C4
	mov r1, r0
	mov r0, r4
	bl FUN_02089694
	pop {r4, pc}
_023003B0:
	ldrb r0, [r1, #0xd8]
	cmp r0, #2
	bne _023003D4
	ldr r0, _02300408 @ =0x00000C33
	bl FUN_020258C4
	mov r1, r0
	mov r0, r4
	bl FUN_02089694
	pop {r4, pc}
_023003D4:
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _023003F0
	ldrsh r1, [r1, #4]
	mov r0, r4
	bl FUN_02052394
	pop {r4, pc}
_023003F0:
	ldrsh r1, [r1, #0xc]
	mov r0, r4
	bl FUN_0205858C
	pop {r4, pc}
	.align 2, 0
_02300400: .4byte 0x02353538
_02300404: .4byte 0x00000C35
_02300408: .4byte 0x00000C33
	arm_func_end ov29_02300358

	arm_func_start ov29_0230040C
ov29_0230040C: @ 0x0230040C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl FUN_02024FB8
	ldrsh r1, [sp, #0x18]
	mov r4, r0
	cmp r1, #0
	beq _02300448
	cmp r1, #1
	beq _02300454
	cmp r1, #2
	beq _02300488
	b _02300490
_02300448:
	mov r1, r5
	bl ov29_02300164
	b _02300490
_02300454:
	mov r0, r5
	bl ov29_02300108
	cmp r0, #0
	bne _02300478
	ldrsh r1, [r5, #4]
	mov r0, r4
	mov r2, #0x6a
	bl FUN_02052440
	b _02300490
_02300478:
	mov r0, r4
	mov r1, r5
	bl ov29_02300164
	b _02300490
_02300488:
	mov r1, r5
	bl ov29_02300358
_02300490:
	cmp r7, #0
	addne r0, r7, r6, lsl #2
	strne r4, [r0, #0x38]
	popne {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	bl ov29_0234B0B4
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_0230040C

	arm_func_start ov29_023004B0
ov29_023004B0: @ 0x023004B0
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbd]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #3
	moveq r0, #1
	bxeq lr
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023004B0

	arm_func_start ov29_023004E4
ov29_023004E4: @ 0x023004E4
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbf]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023004E4

	arm_func_start ov29_02300500
ov29_02300500: @ 0x02300500
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xc4]
	cmp r0, #3
	cmpne r0, #5
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov29_02300500

	arm_func_start ov29_02300520
ov29_02300520: @ 0x02300520
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xd0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300520

	arm_func_start ov29_0230053C
ov29_0230053C: @ 0x0230053C
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #2
	moveq r0, #1
	bxeq lr
	cmp r0, #4
	moveq r0, #1
	bxeq lr
	cmp r0, #5
	moveq r0, #1
	bxeq lr
	cmp r0, #6
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_0230053C

	arm_func_start ov29_02300588
ov29_02300588: @ 0x02300588
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xe0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300588

	arm_func_start ov29_023005A4
ov29_023005A4: @ 0x023005A4
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xec]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023005A4

	arm_func_start ov29_023005C0
ov29_023005C0: @ 0x023005C0
	push {r4, lr}
	ldr r4, [r0, #0xb4]
	bl IsBlinded
	cmp r0, #0
	movne r0, #1
	popne {r4, pc}
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	moveq r0, #1
	popeq {r4, pc}
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end ov29_023005C0

	arm_func_start ov29_023005FC
ov29_023005FC: @ 0x023005FC
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xf3]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023005FC

	arm_func_start ov29_02300618
ov29_02300618: @ 0x02300618
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xf5]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300618

	arm_func_start ov29_02300634
ov29_02300634: @ 0x02300634
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb4]
	mov r5, r1
	bl ov29_023004B0
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023004E4
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300500
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300520
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_0230053C
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300588
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023005A4
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl ov29_023005C0
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_023005FC
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02300618
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	ldrb r0, [r4, #0xfe]
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	ldrb r0, [r4, #0x106]
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	mov ip, #0
	add r3, r4, #0x124
	mov r1, ip
	mov r2, #1
	b _02300770
_02300740:
	ldrb r0, [r3, ip, lsl #3]
	add lr, r3, ip, lsl #3
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	beq _0230076C
	ldrh r0, [lr, #2]
	tst r0, #1
	movne r0, #1
	popne {r4, r5, r6, pc}
_0230076C:
	add ip, ip, #1
_02300770:
	cmp ip, #4
	blt _02300740
	mov r1, #0
	b _02300798
_02300780:
	add r0, r4, r1
	ldrb r0, [r0, #0x119]
	cmp r0, #0
	movne r0, #1
	popne {r4, r5, r6, pc}
	add r1, r1, #1
_02300798:
	cmp r1, #5
	blt _02300780
	mov r0, #0
	pop {r4, r5, r6, pc}
	arm_func_end ov29_02300634

	arm_func_start ov29_023007A8
ov29_023007A8: @ 0x023007A8
	ldr r0, [r0, #0xb4]
	ldrb r0, [r0, #0xbd]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #5
	moveq r0, #1
	bxeq lr
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_023007A8

	arm_func_start ov29_023007DC
ov29_023007DC: @ 0x023007DC
	ldr r3, [r0, #0xb4]
	ldr r0, _02300814 @ =0x000003E7
	ldrsh r2, [r3, #0x12]
	ldrsh r1, [r3, #0x16]
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	asr r0, r2, #1
	ldrsh r1, [r3, #0x10]
	add r0, r2, r0, lsr #30
	cmp r1, r0, asr #2
	movle r0, #1
	movgt r0, #0
	bx lr
	.align 2, 0
_02300814: .4byte 0x000003E7
	arm_func_end ov29_023007DC

	arm_func_start ov29_02300818
ov29_02300818: @ 0x02300818
	push {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldr r4, [r5, #0xb4]
	beq _02300840
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_02300840:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #5
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #7
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300CB0
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #6
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0x105]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	arm_func_end ov29_02300818

	arm_func_start ov29_023008DC
ov29_023008DC: @ 0x023008DC
	push {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldr r4, [r5, #0xb4]
	beq _02300904
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_02300904:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #5
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #7
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300D00
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #6
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0x105]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	arm_func_end ov29_023008DC

	arm_func_start ov29_023009A0
ov29_023009A0: @ 0x023009A0
	push {r4, lr}
	mov r1, #0
	mov r4, r0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #1
	popne {r4, pc}
	mov r0, r4
	mov r1, #0
	bl ov29_02300818
	pop {r4, pc}
	arm_func_end ov29_023009A0

	arm_func_start ov29_023009CC
ov29_023009CC: @ 0x023009CC
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xbd]
	cmp r0, #4
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r0, #3
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xf3]
	cmp r0, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r3, [r4, #0xc4]
	cmp r3, #6
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r3, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r2, [r4, #0xd0]
	cmp r2, #2
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r1, [r4, #0xbd]
	cmp r1, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0xef]
	cmp r0, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r1, #5
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r2, #1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r3, #3
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r3, #4
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd8]
	cmp r0, #2
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #7
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r0, #3
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	arm_func_end ov29_023009CC

	arm_func_start ov29_02300B04
ov29_02300B04: @ 0x02300B04
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	beq _02300B30
	ldrb r0, [r1, #0xc4]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #6
	bhi _02300B38
_02300B30:
	mov r0, #0
	bx lr
_02300B38:
	mov r0, #1
	bx lr
	arm_func_end ov29_02300B04

	arm_func_start ov29_02300B40
ov29_02300B40: @ 0x02300B40
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _02300B90
	mov r0, r5
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_02300B90:
	mov r0, r5
	mov r1, #0
	bl ov29_02300818
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300CB0
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	arm_func_end ov29_02300B40

	arm_func_start ov29_02300BF8
ov29_02300BF8: @ 0x02300BF8
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _02300C48
	mov r0, r5
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_02300C48:
	mov r0, r5
	mov r1, #0
	bl ov29_023008DC
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_02300D00
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0
	bl ov29_0232461C
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xc4]
	cmp r0, #3
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	arm_func_end ov29_02300BF8

	arm_func_start ov29_02300CB0
ov29_02300CB0: @ 0x02300CB0
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #2
	cmpne r0, #4
	cmpne r0, #0
	movne r0, #1
	bxne lr
	ldrb r0, [r1, #0xc4]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #6
	moveq r0, #1
	bxeq lr
	ldrb r0, [r1, #0xd2]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300CB0

	arm_func_start ov29_02300D00
ov29_02300D00: @ 0x02300D00
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #2
	cmpne r0, #4
	cmpne r0, #0
	movne r0, #1
	bxne lr
	ldrb r0, [r1, #0xc4]
	cmp r0, #1
	moveq r0, #1
	bxeq lr
	cmp r0, #6
	moveq r0, #1
	bxeq lr
	ldrb r0, [r1, #0xd2]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02300D00

	arm_func_start ov29_02300D50
ov29_02300D50: @ 0x02300D50
	push {r3, lr}
	ldr r1, [r0, #0xb4]
	ldrb r3, [r1, #0xc4]
	cmp r3, #3
	moveq r0, #1
	popeq {r3, pc}
	cmp r3, #4
	moveq r0, #1
	popeq {r3, pc}
	ldrb r2, [r1, #0xd0]
	cmp r2, #7
	moveq r0, #1
	popeq {r3, pc}
	cmp r2, #3
	moveq r0, #1
	popeq {r3, pc}
	ldrb r1, [r1, #0xbf]
	cmp r1, #4
	moveq r0, #1
	popeq {r3, pc}
	cmp r3, #6
	moveq r0, #1
	popeq {r3, pc}
	cmp r2, #1
	moveq r0, #1
	popeq {r3, pc}
	bl ov29_02300CB0
	pop {r3, pc}
	arm_func_end ov29_02300D50

	arm_func_start ov29_02300D50
ov29_02300D50: @ 0x02300DC0
	ldr ip, _02300DC8 @ =ov29_02300D50
	bx ip
	.align 2, 0
_02300DC8: .4byte ov29_02300D50
	arm_func_end ov29_02300D50

	arm_func_start ov29_02300DCC
ov29_02300DCC: @ 0x02300DCC
	push {r3, lr}
	cmp r1, #0
	ldr r2, [r0, #0xb4]
	bne _02300DF4
	ldrb r1, [r2, #0xbd]
	cmp r1, #2
	cmpne r1, #4
	cmpne r1, #0
	movne r0, #1
	popne {r3, pc}
_02300DF4:
	ldrb r1, [r2, #0xc4]
	cmp r1, #1
	moveq r0, #1
	popeq {r3, pc}
	cmp r1, #3
	moveq r0, #1
	popeq {r3, pc}
	cmp r1, #4
	moveq r0, #1
	popeq {r3, pc}
	cmp r1, #6
	moveq r0, #1
	popeq {r3, pc}
	ldrb r1, [r2, #0xd0]
	cmp r1, #1
	moveq r0, #1
	popeq {r3, pc}
	cmp r1, #3
	moveq r0, #1
	popeq {r3, pc}
	cmp r1, #7
	moveq r0, #1
	popeq {r3, pc}
	ldrb r1, [r2, #0xbf]
	cmp r1, #4
	moveq r0, #1
	popeq {r3, pc}
	bl ShouldMonsterRunAway
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov29_02300DCC

	arm_func_start ov29_02300E78
ov29_02300E78: @ 0x02300E78
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	ldr r2, _02300F24 @ =0x0235171C
	lsl ip, r5, #2
	ldr r1, _02300F28 @ =0x0235171E
	ldrsh r3, [r2, ip]
	ldrsh lr, [r6, #4]
	mov r4, r0
	ldrsh r2, [r6, #6]
	ldrsh r1, [r1, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	popne {r4, r5, r6, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _02300F2C @ =0x02352798
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r4, r5, r6, pc}
	.align 2, 0
_02300F24: .4byte 0x0235171C
_02300F28: .4byte 0x0235171E
_02300F2C: .4byte 0x02352798
	arm_func_end ov29_02300E78

	arm_func_start ov29_02300F30
ov29_02300F30: @ 0x02300F30
	push {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov29_02336204
	cmp r0, #0
	bne _02300FC4
	ldr r0, [r6, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #3
	moveq r5, #3
	beq _02300FC4
	mov r0, r6
	mov r1, #0x10
	bl ItemIsActive
	cmp r0, #0
	movne r5, #3
	bne _02300FC4
	cmp r5, #3
	beq _02300F98
	mov r0, r6
	mov r1, #0xc
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r5, #2
	bne _02300FC4
_02300F98:
	mov r0, r6
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _02300FC4
	cmp r4, #0xff
	moveq r5, #3
	beq _02300FC4
	tst r4, #1
	movne r5, #2
	moveq r5, #3
_02300FC4:
	mov r0, r5
	pop {r4, r5, r6, pc}
	arm_func_end ov29_02300F30

	arm_func_start ov29_02300FCC
ov29_02300FCC: @ 0x02300FCC
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, _02301050 @ =0x0235171C
	lsl ip, r4, #2
	ldr r0, _02301054 @ =0x0235171E
	ldrsh r3, [r1, ip]
	ldrsh lr, [r5, #4]
	ldrsh r1, [r0, ip]
	ldrsh r2, [r5, #6]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	ldrsh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	bl GetTile
	ldr r1, _02301058 @ =0x02352790
	and r2, r4, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	.align 2, 0
_02301050: .4byte 0x0235171C
_02301054: .4byte 0x0235171E
_02301058: .4byte 0x02352790
	arm_func_end ov29_02300FCC

	arm_func_start ov29_0230105C
ov29_0230105C: @ 0x0230105C
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	ldr r2, _0230110C @ =0x0235171C
	lsl ip, r5, #2
	ldr r1, _02301110 @ =0x0235171E
	ldrsh r3, [r2, ip]
	ldrsh lr, [r6, #4]
	mov r4, r0
	ldrsh r2, [r6, #6]
	ldrsh r1, [r1, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	popne {r4, r5, r6, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _02301114 @ =0x02352788
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	moveq r0, #0
	movne r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0230110C: .4byte 0x0235171C
_02301110: .4byte 0x0235171E
_02301114: .4byte 0x02352788
	arm_func_end ov29_0230105C

	arm_func_start IsMonsterCornered
IsMonsterCornered: @ 0x02301118
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	b _02301148
_02301128:
	mov r0, r5
	mov r1, r4
	bl ov29_02301158
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	add r0, r4, #1
	and r4, r0, #0xff
_02301148:
	cmp r4, #8
	blo _02301128
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end IsMonsterCornered

	arm_func_start ov29_02301158
ov29_02301158: @ 0x02301158
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	ldr r2, _02301228 @ =0x0235171C
	lsl ip, r5, #2
	ldr r1, _0230122C @ =0x0235171E
	ldrsh r3, [r2, ip]
	ldrsh lr, [r6, #4]
	mov r4, r0
	ldrsh r2, [r6, #6]
	ldrsh r1, [r1, ip]
	add r0, lr, r3
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	popne {r4, r5, r6, pc}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _023011E0
	ldr r0, [r1]
	cmp r0, #1
	bne _023011E0
	mov r0, r6
	mov r2, #1
	mov r3, #0
	bl ov29_0230175C
	cmp r0, #1
	moveq r0, #0
	popeq {r4, r5, r6, pc}
_023011E0:
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _02301230 @ =0x02352780
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r4, r5, r6, pc}
	.align 2, 0
_02301228: .4byte 0x0235171C
_0230122C: .4byte 0x0235171E
_02301230: .4byte 0x02352780
	arm_func_end ov29_02301158

	arm_func_start CanAttackInDirection
CanAttackInDirection: @ 0x02301234
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r2, [r6, #0xb4]
	mov r5, r1
	ldrsh r1, [r2, #2]
	bl ov29_022FF674
	mov r4, r0
	ldr r1, _023012EC @ =0x0235171C
	lsl ip, r5, #2
	cmp r4, #1
	ldr r0, _023012F0 @ =0x0235171E
	ldrsh r3, [r1, ip]
	ldrsh lr, [r6, #4]
	ldrsh r1, [r0, ip]
	ldrsh r2, [r6, #6]
	add r0, lr, r3
	movls r4, #2
	add r1, r2, r1
	bl GetTile
	ldrh r1, [r0]
	tst r1, #0x10
	movne r0, #0
	popne {r4, r5, r6, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrne r0, [r0]
	cmpne r0, #1
	movne r0, #0
	popne {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	and r2, r5, #0xff
	bl ov29_02300F30
	mov r4, r0
	ldrsh r0, [r6, #4]
	ldrsh r1, [r6, #6]
	bl GetTile
	add r0, r0, r4
	ldr r1, _023012F4 @ =0x02352778
	and r2, r5, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	moveq r0, #0
	movne r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_023012EC: .4byte 0x0235171C
_023012F0: .4byte 0x0235171E
_023012F4: .4byte 0x02352778
	arm_func_end CanAttackInDirection

	arm_func_start CanAiMonsterMoveInDirection
CanAiMonsterMoveInDirection: @ 0x023012F8
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0xb4]
	mov r7, r1
	ldrsh r1, [r3, #2]
	mov r6, r2
	bl ov29_022FF674
	mov r1, #0
	strb r1, [r6]
	ldr r2, _02301484 @ =0x0235171C
	lsl r4, r7, #2
	ldr r1, _02301488 @ =0x0235171E
	ldrsh r3, [r2, r4]
	ldrsh ip, [r8, #4]
	mov r5, r0
	ldrsh r2, [r8, #6]
	ldrsh r1, [r1, r4]
	add r0, ip, r3
	add r1, r2, r1
	bl GetTile
	mov r4, r0
	ldrh r0, [r4]
	tst r0, #0x10
	movne r0, #0
	popne {r4, r5, r6, r7, r8, pc}
	tst r0, #0x40
	beq _02301390
	ldr r0, _0230148C @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x793]
	cmp r0, #0
	bne _02301390
	mov r0, r8
	mov r1, #0xf
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, r7, r8, pc}
_02301390:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _023013E4
	mov r0, r8
	mov r1, #0xe
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023013E4
	ldr r1, [r4, #0x10]
	ldr r0, [r1]
	cmp r0, #2
	bne _023013E4
	ldrb r0, [r1, #0x20]
	cmp r0, #0
	bne _023013DC
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xf1]
	cmp r0, #3
	bne _023013E4
_023013DC:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, pc}
_023013E4:
	ldrh r0, [r4]
	and r0, r0, #3
	cmp r0, #2
	bne _0230142C
	ldr r0, _0230148C @ =0x02353538
	ldr r1, _02301490 @ =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0230142C
	mov r0, r8
	mov r1, #0x14
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #0
	popne {r4, r5, r6, r7, r8, pc}
_0230142C:
	mov r0, r8
	mov r1, r5
	and r2, r7, #0xff
	bl ov29_02300F30
	mov r5, r0
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTile
	add r0, r0, r5
	ldr r1, _02301494 @ =0x02352770
	and r2, r7, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	moveq r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	mov r0, #1
	strbne r0, [r6]
	movne r0, #0
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02301484: .4byte 0x0235171C
_02301488: .4byte 0x0235171E
_0230148C: .4byte 0x02353538
_02301490: .4byte 0x020A1AE8
_02301494: .4byte 0x02352770
	arm_func_end CanAiMonsterMoveInDirection

	arm_func_start ov29_02301498
ov29_02301498: @ 0x02301498
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xb4]
	ldrsh r1, [r1, #2]
	bl ov29_022FF674
	mov r1, r0
	mov r0, r5
	mov r2, #0xff
	bl ov29_02300F30
	mov r4, r0
	cmp r4, #3
	bne _023014FC
	ldr r4, [r5, #0xb4]
	mov r0, #0x64
	bl DungeonRandInt
	add r1, r4, #0x200
	ldrsh r2, [r1, #0x12]
	add r0, r2, r0
	strh r0, [r1, #0x12]
	ldrsh r0, [r1, #0x12]
	cmp r0, #0xc8
	mov r0, #0
	strhge r0, [r1, #0x12]
	movge r0, #1
	pop {r3, r4, r5, pc}
_023014FC:
	ldr r0, _0230158C @ =0x02353538
	ldr r1, _02301590 @ =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	cmpeq r4, #1
	bne _02301534
	mov r0, r5
	mov r1, #0x14
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #0
_02301534:
	ldrsh r0, [r5, #4]
	ldrsh r1, [r5, #6]
	bl GetTile
	add r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0x54
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #0x51
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #0x45
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #0x15
	moveq r0, #1
	popeq {r3, r4, r5, pc}
	cmp r0, #0x55
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	pop {r3, r4, r5, pc}
	.align 2, 0
_0230158C: .4byte 0x02353538
_02301590: .4byte 0x020A1AE8
	arm_func_end ov29_02301498

	arm_func_start ov29_02301594
ov29_02301594: @ 0x02301594
	push {r4, lr}
	mov r4, r1
	mov r1, #3
	bl ov29_02301F20
	cmp r0, #0
	cmpne r4, #0
	movne r0, #1
	moveq r0, #0
	pop {r4, pc}
	arm_func_end ov29_02301594

	arm_func_start ShouldMonsterRunAway
ShouldMonsterRunAway: @ 0x023015B8
	push {r3, r4, r5, lr}
	mov r5, r0
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldr r4, [r5, #0xb4]
	ldrb r0, [r4, #0x104]
	cmp r0, #0
	ldrbne r0, [r4, #0x105]
	cmpne r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0230169C
	mov r0, r5
	mov r1, #0x2b
	bl AbilityIsActive
	cmp r0, #0
	beq _02301644
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _023016A4 @ =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	ldrsh r1, [r4, #0x10]
	add r0, r2, r2, lsr #31
	cmp r1, r0, asr #1
	movlt r0, #1
	movge r0, #0
	tst r0, #0xff
	movne r0, #1
	popne {r3, r4, r5, pc}
_02301644:
	mov r0, r5
	mov r1, #0xa
	bl ov29_02301F20
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #6
	bl ov29_02301F20
	cmp r0, #0
	beq _0230169C
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _023016A4 @ =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	ldrsh r1, [r4, #0x10]
	add r0, r2, r2, lsr #31
	cmp r1, r0, asr #1
	movle r0, #1
	pople {r3, r4, r5, pc}
_0230169C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_023016A4: .4byte 0x000003E7
	arm_func_end ShouldMonsterRunAway

	arm_func_start ShouldMonsterRunAwayVariation
ShouldMonsterRunAwayVariation: @ 0x023016A8
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ShouldMonsterRunAway
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov29_023016D8
	mov r0, #1
	pop {r3, r4, r5, pc}
	arm_func_end ShouldMonsterRunAwayVariation

	arm_func_start ov29_023016D8
ov29_023016D8: @ 0x023016D8
	push {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb4]
	mov r5, r1
	ldrb r1, [r4, #7]
	cmp r1, #0
	popne {r4, r5, r6, pc}
	mov r1, #0x2b
	bl AbilityIsActive
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02301758 @ =0x000003E7
	add r2, r2, r1
	cmp r2, r0
	movgt r2, r0
	ldrsh r1, [r4, #0x10]
	add r0, r2, r2, lsr #31
	cmp r1, r0, asr #1
	movle r1, #1
	movgt r1, #0
	and r2, r1, #0xff
	mov r0, r4
	mov r1, #4
	bl ov29_023023C0
	cmp r5, #0
	cmpne r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_022E62A8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02301758: .4byte 0x000003E7
	arm_func_end ov29_023016D8

	arm_func_start ov29_0230175C
ov29_0230175C: @ 0x0230175C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0xb4]
	ldr r5, [r1, #0xb4]
	cmp r0, r1
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r1, [r4, #9]
	cmp r1, #1
	ldrbne r1, [r5, #9]
	cmpne r1, #1
	moveq r0, #2
	popeq {r3, r4, r5, pc}
	ldrb r1, [r4, #0xbc]
	cmp r1, #7
	ldrbne r1, [r5, #0xbc]
	cmpne r1, #7
	moveq r0, #2
	popeq {r3, r4, r5, pc}
	cmp r3, #0
	beq _023017C4
	ldrb r1, [r4, #6]
	cmp r1, #0
	ldrbeq r1, [r5, #0xc4]
	cmpeq r1, #6
	moveq r0, #2
	popeq {r3, r4, r5, pc}
_023017C4:
	cmp r2, #0
	ldrbeq r1, [r5, #0xef]
	cmpeq r1, #1
	bne _023017E4
	bl CanSeeInvisibleMonsters
	cmp r0, #0
	moveq r0, #2
	popeq {r3, r4, r5, pc}
_023017E4:
	ldrb r0, [r4, #0x10c]
	cmp r0, #0
	bne _02301804
	ldrb r0, [r4, #7]
	cmp r0, #0
	movne r1, #0
	moveq r1, #1
	b _02301810
_02301804:
	cmp r0, #1
	moveq r1, #2
	movne r1, #3
_02301810:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _02301828
	cmp r0, #3
	moveq r2, #1
	b _02301844
_02301828:
	ldrb r0, [r4, #6]
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	cmp r0, #0
	ldrbne r0, [r4, #8]
	cmpne r0, #0
_02301844:
	ldrb r0, [r5, #9]
	movne r2, #0
	cmp r0, #0
	beq _02301860
	cmp r0, #3
	moveq r3, #1
	b _0230187C
_02301860:
	ldrb r0, [r5, #6]
	cmp r0, #0
	movne r3, #1
	moveq r3, #0
	cmp r0, #0
	ldrbne r0, [r5, #8]
	cmpne r0, #0
_0230187C:
	ldrb r0, [r5, #0xd8]
	movne r3, #0
	cmp r0, #2
	ldr r0, _023018A8 @ =0x023527A0
	moveq r4, #1
	add r0, r0, r1, lsl #3
	add r0, r0, r2, lsl #2
	movne r4, #0
	add r0, r0, r3, lsl #1
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_023018A8: .4byte 0x023527A0
	arm_func_end ov29_0230175C

	arm_func_start ov29_023018AC
ov29_023018AC: @ 0x023018AC
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0xb4]
	ldr r5, [r1, #0xb4]
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	moveq r0, #2
	popeq {r3, r4, r5, pc}
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #2
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	cmpne r0, #3
	movne r0, #2
	popne {r3, r4, r5, pc}
	ldrb r0, [r5, #0xbc]
	cmp r0, #7
	moveq r0, #2
	popeq {r3, r4, r5, pc}
	mov r0, r5
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #2
	popne {r3, r4, r5, pc}
	ldrb r0, [r5, #9]
	cmp r0, #0
	cmpne r0, #3
	movne r0, #2
	popne {r3, r4, r5, pc}
	ldrb r1, [r4, #6]
	ldrb r0, [r5, #6]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov29_023018AC

	arm_func_start ov29_02301940
ov29_02301940: @ 0x02301940
	push {r3, r4, r5, lr}
	mov r4, r1
	ldr r3, [r4, #0xb4]
	mov r5, r0
	ldrb r0, [r3, #0xd5]
	cmp r0, #2
	bne _02301988
	cmp r2, #0
	beq _02301980
	mov r0, #0
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02301990 @ =0x00000C36
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02301980:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02301988:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02301990: .4byte 0x00000C36
	arm_func_end ov29_02301940

	arm_func_start ov29_02301994
ov29_02301994: @ 0x02301994
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	mov r4, r2
	bl GetApparentWeather
	cmp r0, #1
	bne _02301A00
	mov r0, r6
	mov r1, r5
	mov r2, #0x7b
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02301A00
	cmp r4, #0
	beq _023019F8
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02301A08 @ =0x00000C37
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023019F8:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02301A00:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02301A08: .4byte 0x00000C37
	arm_func_end ov29_02301994

	arm_func_start DefenderAbilityIsActive
DefenderAbilityIsActive: @ 0x02301A0C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r7, r6
	beq _02301A50
	bl IsMonster
	cmp r0, #0
	cmpne r4, #0
	beq _02301A50
	mov r0, r7
	mov r1, #0x53
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
_02301A50:
	mov r0, r6
	mov r1, r5
	bl AbilityIsActive
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end DefenderAbilityIsActive

	arm_func_start IsMonster
IsMonster: @ 0x02301A60
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end IsMonster

	arm_func_start ov29_02301A84
ov29_02301A84: @ 0x02301A84
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov sb, r2
	bl GetApparentWeather
	ldr r6, _02301B24 @ =0x023535C0
	mov r7, r0
	ldrb r0, [r6, r7]
	mov r8, #0
	cmp r0, #0
	beq _02301B18
	ldrb r1, [r6, r7]
	mov r0, r4
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _02301B18
	cmp sb, #0
	ldrb r6, [r6, r7]
	beq _02301B14
	mov r0, r8
	mov r1, r4
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r2, sp, #0
	mov r0, r4
	mov r1, r6
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _02301B28 @ =0x00000C39
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02301B14:
	mov r8, #1
_02301B18:
	mov r0, r8
	add sp, sp, #8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02301B24: .4byte 0x023535C0
_02301B28: .4byte 0x00000C39
	arm_func_end ov29_02301A84

	arm_func_start ov29_02301B2C
ov29_02301B2C: @ 0x02301B2C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0
	mov r5, r2
	mov r6, r1
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, r6
	bl ov29_023197CC
	movs r4, r0
	beq _02301BB0
	cmp r5, #0
	beq _02301BA8
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r4, #1
	bne _02301B8C
	ldr r2, _02301C20 @ =0x00000C38
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02301BA8
_02301B8C:
	cmp r4, #2
	bne _02301BA8
	ldr r2, _02301C24 @ =0x00000C39
	mov r0, r7
	mov r1, r6
	mov r3, #0x26
	bl ov29_02314DC4
_02301BA8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02301BB0:
	mov r0, r7
	mov r1, r6
	mov r2, #0xf
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	bne _02301BE8
	mov r0, r7
	mov r1, r6
	mov r2, #0x18
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02301C18
_02301BE8:
	cmp r5, #0
	beq _02301C10
	mov r0, #0
	mov r1, r6
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02301C28 @ =0x00000C3A
	mov r0, r7
	mov r1, r6
	bl LogMessageByIdWithPopupCheckUserTarget
_02301C10:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02301C18:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02301C20: .4byte 0x00000C38
_02301C24: .4byte 0x00000C39
_02301C28: .4byte 0x00000C3A
	arm_func_end ov29_02301B2C

	arm_func_start ov29_02301C2C
ov29_02301C2C: @ 0x02301C2C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r8, [sl, #0xb4]
	mov sb, r1
	ldrb r0, [r8, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	movne r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0
	add r5, r8, #0x124
	mov fp, r6
	mov r4, #1
	b _02301CCC
_02301C68:
	ldrb r1, [r5, r6, lsl #3]
	add r7, r5, r6, lsl #3
	tst r1, #1
	movne r0, r4
	moveq r0, fp
	tst r0, #0xff
	beq _02301CC8
	ldrb r0, [r8, #7]
	cmp r0, #0
	bne _02301C98
	tst r1, #4
	beq _02301CC8
_02301C98:
	mov r0, sl
	mov r1, r7
	mov r2, #1
	bl ov29_02324BE8
	cmp r0, #0
	ldrbne r0, [r7, #6]
	cmpne r0, #0
	beq _02301CC8
	ldrh r0, [r7, #4]
	cmp r0, sb
	moveq r0, #1
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02301CC8:
	add r6, r6, #1
_02301CCC:
	cmp r6, #4
	blt _02301C68
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov29_02301C2C

	arm_func_start NoGastroAcidStatus
NoGastroAcidStatus: @ 0x02301CDC
	push {r4, lr}
	mov r4, r0
	bl IsMonster
	cmp r0, #0
	moveq r0, #0
	popeq {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #4
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end NoGastroAcidStatus

	arm_func_start AbilityIsActive
AbilityIsActive: @ 0x02301D10
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl IsMonster
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	cmp r4, #0
	ldr r1, [r5, #0xb4]
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	ldrb r0, [r1, #0x60]
	cmp r0, r4
	bne _02301D58
	mov r0, r5
	mov r1, r4
	bl NoGastroAcidStatus
	pop {r3, r4, r5, pc}
_02301D58:
	ldrb r0, [r1, #0x61]
	cmp r0, r4
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl NoGastroAcidStatus
	pop {r3, r4, r5, pc}
	arm_func_end AbilityIsActive

	arm_func_start AbilityIsActive
AbilityIsActive: @ 0x02301D78
	ldr ip, _02301D80 @ =AbilityIsActive
	bx ip
	.align 2, 0
_02301D80: .4byte AbilityIsActive
	arm_func_end AbilityIsActive

	arm_func_start ov29_02301D84
ov29_02301D84: @ 0x02301D84
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0
	mov r4, #1
	ldr r8, _02301E14 @ =0x02353538
	b _02301E04
_02301DA0:
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	cmpne r7, sb
	beq _02301DF8
	mov r0, r7
	mov r1, sb
	bl ov29_022FAFD4
	cmp r0, #0
	beq _02301DF8
	mov r0, r7
	mov r1, sb
	mov r2, r6
	mov r3, r4
	bl DefenderAbilityIsActive
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
_02301DF8:
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_02301E04:
	cmp r5, #0x14
	blt _02301DA0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02301E14: .4byte 0x02353538
	arm_func_end ov29_02301D84

	arm_func_start LevitateIsActive
LevitateIsActive: @ 0x02301E18
	push {r4, lr}
	mov r4, r0
	bl GravityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r4, pc}
	mov r0, r4
	mov r1, #0x37
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r4, pc}
	arm_func_end LevitateIsActive

	arm_func_start MonsterIsType
MonsterIsType: @ 0x02301E50
	cmp r1, #0
	ldr r2, [r0, #0xb4]
	moveq r0, #0
	bxeq lr
	ldrb r0, [r2, #0x5e]
	cmp r0, r1
	moveq r0, #1
	bxeq lr
	ldrb r0, [r2, #0x5f]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end MonsterIsType

	arm_func_start ov29_02301E88
ov29_02301E88: @ 0x02301E88
	push {r3, lr}
	cmp r1, #0xa
	bne _02301EA4
	bl GravityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, pc}
_02301EA4:
	mov r0, #1
	pop {r3, pc}
	arm_func_end ov29_02301E88

	arm_func_start ov29_02301EAC
ov29_02301EAC: @ 0x02301EAC
	push {r3, lr}
	ldr r3, [r0, #0xb4]
	cmp r1, #0
	moveq r0, #0
	popeq {r3, pc}
	ldrb r2, [r3, #0x5e]
	cmp r2, r1
	bne _02301ED4
	bl ov29_02301E88
	pop {r3, pc}
_02301ED4:
	ldrb r2, [r3, #0x5f]
	cmp r2, r1
	movne r0, #0
	popne {r3, pc}
	bl ov29_02301E88
	pop {r3, pc}
	arm_func_end ov29_02301EAC

	arm_func_start CanSeeInvisibleMonsters
CanSeeInvisibleMonsters: @ 0x02301EEC
	push {r3, lr}
	ldr r1, [r0, #0xb4]
	ldrb r1, [r1, #0xf1]
	cmp r1, #3
	moveq r0, #1
	popeq {r3, pc}
	mov r1, #0x21
	bl ItemIsActive
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end CanSeeInvisibleMonsters

	arm_func_start ov29_02301F20
ov29_02301F20: @ 0x02301F20
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq _02301F38
	cmp r1, #1
	b _02301F40
_02301F38:
	ldrb r0, [r2, #0xa8]
	cmp r0, r1
_02301F40:
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end ov29_02301F20

	arm_func_start HasDropeyeStatus
HasDropeyeStatus: @ 0x02301F50
	push {r4, lr}
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	beq _02301F78
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xf1]
	cmp r0, #4
	moveq r0, #1
	popeq {r4, pc}
_02301F78:
	mov r0, #0
	pop {r4, pc}
	arm_func_end HasDropeyeStatus

	arm_func_start IqSkillIsEnabled
IqSkillIsEnabled: @ 0x02301F80
	push {r3, lr}
	ldr r2, [r0, #0xb4]
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _02301FAC
	ldr r0, _02301FB8 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	movne r0, #0
	popne {r3, pc}
_02301FAC:
	add r0, r2, #0x9c
	bl FUN_02058F04
	pop {r3, pc}
	.align 2, 0
_02301FB8: .4byte 0x02353538
	arm_func_end IqSkillIsEnabled

	arm_func_start FUN_02301FBC
FUN_02301FBC: @ 0x02301FBC
	push {r4, r5, r6, lr}
	mov r4, r0
	ldrb r0, [r4, #6]
	mov r6, #0
	cmp r0, #0
	str r6, [r4, #0x9c]
	beq _02302118
	str r6, [r4, #0xa0]
	str r6, [r4, #0xa4]
	b _0230202C
_02301FE4:
	ldrsh r0, [r4, #2]
	and r1, r6, #0xff
	bl FUN_02058E68
	mov r5, r0
	cmp r5, #0xff
	beq _02302034
	ldrsh r0, [r4, #0xe]
	mov r1, r5
	bl FUN_02058CD8
	cmp r0, #0
	beq _02302028
	mov r1, r5
	add r0, r4, #0x90
	bl FUN_02058DF4
	mov r1, r5
	add r0, r4, #0x9c
	bl FUN_02058DF4
_02302028:
	add r6, r6, #1
_0230202C:
	cmp r6, #0x19
	blt _02301FE4
_02302034:
	ldr r0, _023021E8 @ =0x020A188C
	ldrsh r1, [r4, #0xe]
	ldrsh r0, [r0]
	cmp r1, r0
	bge _02302068
	add r0, r4, #0x9c
	mov r1, #0x17
	bl FUN_02058F04
	cmp r0, #0
	beq _02302068
	add r0, r4, #0x9c
	mov r1, #0x17
	bl FUN_02058DA4
_02302068:
	mov r0, r4
	bl ov29_022FBDE0
	cmp r0, #0
	bne _0230208C
	ldr r0, _023021EC @ =0x020A18A4
	ldrsh r1, [r4, #0xe]
	ldrsh r0, [r0]
	cmp r1, r0
	bge _023020AC
_0230208C:
	add r0, r4, #0x9c
	mov r1, #0x16
	bl FUN_02058F04
	cmp r0, #0
	beq _023020AC
	add r0, r4, #0x9c
	mov r1, #0x16
	bl FUN_02058DA4
_023020AC:
	add r0, r4, #0x9c
	mov r1, #0x15
	bl FUN_02058F04
	cmp r0, #0
	beq _023020CC
	add r0, r4, #0x9c
	mov r1, #0x15
	bl FUN_02058DA4
_023020CC:
	add r0, r4, #0x9c
	mov r1, #0x14
	bl FUN_02058F04
	cmp r0, #0
	beq _023020EC
	add r0, r4, #0x9c
	mov r1, #0x14
	bl FUN_02058DA4
_023020EC:
	add r0, r4, #0x9c
	mov r1, #0xb
	bl FUN_02058F04
	cmp r0, #0
	beq _0230210C
	add r0, r4, #0x9c
	mov r1, #0xb
	bl FUN_02058DA4
_0230210C:
	mov r0, #2
	strb r0, [r4, #0xa8]
	pop {r4, r5, r6, pc}
_02302118:
	str r6, [r4, #0xa0]
	str r6, [r4, #0xa4]
	b _02302174
_02302124:
	ldrsh r0, [r4, #2]
	and r1, r6, #0xff
	bl FUN_02058E68
	mov r5, r0
	cmp r5, #0xff
	beq _0230217C
	ldrsh r0, [r4, #0xe]
	mov r1, r5
	bl FUN_02058CD8
	cmp r0, #0
	beq _02302170
	mov r1, r5
	add r0, r4, #0x90
	bl FUN_02058F04
	cmp r0, #0
	beq _02302170
	mov r1, r5
	add r0, r4, #0x9c
	bl FUN_02058DF4
_02302170:
	add r6, r6, #1
_02302174:
	cmp r6, #0x19
	blt _02302124
_0230217C:
	mov r0, #3
	bl FUN_0204CA94
	cmp r0, #0
	beq _023021A4
	add r0, r4, #0x90
	mov r1, #0x18
	bl FUN_02058DF4
	add r0, r4, #0x9c
	mov r1, #0x18
	bl FUN_02058DF4
_023021A4:
	add r0, r4, #0x90
	mov r1, #0x38
	bl FUN_02058F04
	cmp r0, #0
	beq _023021C4
	add r0, r4, #0x9c
	mov r1, #0x38
	bl FUN_02058DF4
_023021C4:
	add r0, r4, #0x90
	mov r1, #0x39
	bl FUN_02058F04
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	add r0, r4, #0x9c
	mov r1, #0x39
	bl FUN_02058DF4
	pop {r4, r5, r6, pc}
	.align 2, 0
_023021E8: .4byte 0x020A188C
_023021EC: .4byte 0x020A18A4
	arm_func_end FUN_02301FBC

	arm_func_start ov29_023021F0
ov29_023021F0: @ 0x023021F0
	ldr ip, _023021FC @ =FUN_02301FBC
	ldr r0, [r0, #0xb4]
	bx ip
	.align 2, 0
_023021FC: .4byte FUN_02301FBC
	arm_func_end ov29_023021F0

	arm_func_start ov29_02302200
ov29_02302200: @ 0x02302200
	push {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	mov r6, #0
	ldr r5, _02302278 @ =0x02353538
	b _02302268
_02302228:
	ldr r1, [r5]
	mov r0, r4
	add r1, r1, r6, lsl #2
	add r1, r1, #0x12000
	ldr r7, [r1, #0xb28]
	bl EntityIsValid
	cmp r0, #0
	cmpne r4, r7
	beq _02302264
	mov r0, r4
	mov r1, r7
	bl ov29_022E274C
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, r6, r7, pc}
_02302264:
	add r6, r6, #1
_02302268:
	cmp r6, #4
	blt _02302228
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02302278: .4byte 0x02353538
	arm_func_end ov29_02302200

	arm_func_start GetMoveTypeForMonster
GetMoveTypeForMonster: @ 0x0230227C
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldrh r0, [r4, #4]
	bl FUN_02014CEC
	cmp r0, #0
	bne _023022C0
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _023022C0
	mov r0, r5
	mov r1, #0x6b
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #1
	popne {r3, r4, r5, pc}
_023022C0:
	ldrh r1, [r4, #4]
	cmp r1, #0x144
	ldreq r0, [r5, #0xb4]
	ldrbeq r0, [r0, #0x46]
	popeq {r3, r4, r5, pc}
	ldr r0, _02302318 @ =0x000001D7
	cmp r1, r0
	bne _023022F4
	mov r0, r5
	bl ov29_0231AE90
	cmp r0, #0
	ldrbne r0, [r0, #2]
	popne {r3, r4, r5, pc}
_023022F4:
	ldrh r0, [r4, #4]
	cmp r0, #0x1f
	bne _0230230C
	mov r0, r5
	bl ov29_0231AF0C
	pop {r3, r4, r5, pc}
_0230230C:
	mov r0, r4
	bl FUN_02013864
	pop {r3, r4, r5, pc}
	.align 2, 0
_02302318: .4byte 0x000001D7
	arm_func_end GetMoveTypeForMonster

	arm_func_start GetMovePower
GetMovePower: @ 0x0230231C
	push {r3, r4, r5, lr}
	ldrh r2, [r1, #4]
	mov r5, r0
	ldrb r4, [r1, #7]
	cmp r2, #0x144
	ldreq r0, [r5, #0xb4]
	ldrsheq r0, [r0, #0x44]
	addeq r0, r4, r0
	popeq {r3, r4, r5, pc}
	mov r0, r1
	bl FUN_020139CC
	add r4, r4, r0
	mov r0, r5
	mov r1, #0x2b
	bl ItemIsActive
	cmp r0, #0
	lslne r4, r4, #1
	mov r0, r4
	pop {r3, r4, r5, pc}
	arm_func_end GetMovePower

	arm_func_start ov29_02302368
ov29_02302368: @ 0x02302368
	push {r3, lr}
	ldrsh r0, [r0, #2]
	bl FUN_02052950
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	pop {r3, pc}
	arm_func_end ov29_02302368

	arm_func_start ov29_02302388
ov29_02302388: @ 0x02302388
	push {r4, lr}
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	ldrne r0, [r4, #0xb4]
	ldrbne r1, [r0, #0xbc]
	cmpne r1, #7
	beq _023023B8
	bl IsExperienceLocked
	cmp r0, #0
	moveq r0, #1
	popeq {r4, pc}
_023023B8:
	mov r0, #0
	pop {r4, pc}
	arm_func_end ov29_02302388

	arm_func_start ov29_023023C0
ov29_023023C0: @ 0x023023C0
	push {r3, lr}
	add r3, r0, #0x100
	ldrh ip, [r3, #0x58]
	tst ip, r1
	ldrhne ip, [r3, #0x5a]
	ldrheq lr, [r3, #0x5a]
	orrne ip, ip, r1
	mvneq ip, r1
	andeq ip, lr, ip
	cmp r2, #0
	add r2, r0, #0x100
	strh ip, [r3, #0x5a]
	ldrhne r3, [r2, #0x58]
	ldrheq ip, [r2, #0x58]
	add r0, r0, #0x100
	orrne r3, r3, r1
	mvneq r3, r1
	andeq r3, ip, r3
	strh r3, [r2, #0x58]
	ldrh r2, [r0, #0x5a]
	tst r2, r1
	bne _02302428
	ldrh r0, [r0, #0x58]
	tst r0, r1
	movne r0, #1
	popne {r3, pc}
_02302428:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov29_023023C0

	arm_func_start ov29_02302430
ov29_02302430: @ 0x02302430
	push {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov29_02301994
	cmp r0, #0
	movne r0, #1
	bne _023024D4
	mov r0, r5
	mov r1, #0x59
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _023024B4
	cmp r4, #0
	beq _023024AC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	add r2, sp, #0
	mov r0, r5
	mov r1, #0x59
	bl ov29_0230F654
	add r1, sp, #0
	mov r0, #1
	bl ov29_02344B44
	ldr r2, _023024DC @ =0x00000C39
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023024AC:
	mov r0, #1
	b _023024D4
_023024B4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov29_02301A84
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
_023024D4:
	add sp, sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_023024DC: .4byte 0x00000C39
	arm_func_end ov29_02302430

	arm_func_start ov29_023024E0
ov29_023024E0: @ 0x023024E0
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #7
	mov r5, r0
	bl IqSkillIsEnabled
	cmp r0, #0
	bne _02302534
	cmp r4, #0
	beq _02302518
	mov r0, r5
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	bne _0230252C
_02302518:
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xd0]
	cmp r0, #2
	cmpne r0, #4
	bne _02302534
_0230252C:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02302534:
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov29_023024E0

	arm_func_start AddExpSpecial
AddExpSpecial: @ 0x0230253C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	ldr r5, [r7, #0xb4]
	mov r6, r2
	mov r0, r5
	bl IsExperienceLocked
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r5, #0xa]
	cmp r0, #0x64
	bne _02302580
	cmp r6, #0
	ldrgt r0, _023026B4 @ =0x02353538
	movgt r1, #1
	ldrgt r0, [r0]
	strbgt r1, [r0, #0xf]
	pop {r3, r4, r5, r6, r7, pc}
_02302580:
	ldr r2, [r5, #0x20]
	mov r0, r7
	mov r1, #0x1c
	add r4, r2, r6
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023025C0
	ldr r0, _023026B8 @ =0x022C44A8
	mov r1, #0x64
	ldrsh r0, [r0]
	lsl r0, r0, #8
	bl FUN_0208FEA4
	mov r1, r0
	lsl r0, r6, #8
	bl FUN_02001A54
	add r4, r4, r0, asr #8
_023025C0:
	mov r0, r7
	mov r1, #0x43
	bl ItemIsActive
	cmp r0, #0
	beq _023025F8
	ldr r0, _023026BC @ =0x022C469C
	mov r1, #0x64
	ldrsh r0, [r0]
	lsl r0, r0, #8
	bl FUN_0208FEA4
	mov r1, r0
	lsl r0, r6, #8
	bl FUN_02001A54
	add r4, r4, r0, asr #8
_023025F8:
	mov r0, r7
	mov r1, #0x42
	bl ItemIsActive
	cmp r0, #0
	beq _02302630
	ldr r0, _023026C0 @ =0x022C4698
	mov r1, #0x64
	ldrsh r0, [r0]
	lsl r0, r0, #8
	bl FUN_0208FEA4
	mov r1, r0
	lsl r0, r6, #8
	bl FUN_02001A54
	add r4, r4, r0, asr #8
_02302630:
	ldr r1, [r7, #0xb4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	movne r0, #0
	bne _02302650
	add r0, r1, #0x228
	mov r1, #0x4f
	bl FUN_02010FA4
_02302650:
	cmp r0, #0
	beq _0230267C
	ldr r0, _023026C4 @ =0x022C458C
	mov r1, #0x64
	ldrsh r0, [r0]
	lsl r0, r0, #8
	bl FUN_0208FEA4
	mov r1, r0
	lsl r0, r6, #8
	bl FUN_02001A54
	add r4, r4, r0, asr #8
_0230267C:
	ldr r0, _023026C8 @ =0x0098967F
	cmp r4, r0
	movge r4, r0
	ldr r0, [r5, #0x20]
	subs r2, r4, r0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x214]
	ldr r0, _023026B4 @ =0x02353538
	add r1, r1, r2
	str r1, [r5, #0x214]
	ldr r0, [r0]
	mov r1, #1
	strb r1, [r0, #0xf]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023026B4: .4byte 0x02353538
_023026B8: .4byte 0x022C44A8
_023026BC: .4byte 0x022C469C
_023026C0: .4byte 0x022C4698
_023026C4: .4byte 0x022C458C
_023026C8: .4byte 0x0098967F
	arm_func_end AddExpSpecial

	arm_func_start ItemIsActive
ItemIsActive: @ 0x023026CC
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	pop {r3, r4, r5, pc}
	arm_func_end ItemIsActive

	arm_func_start EnemyEvolution
EnemyEvolution: @ 0x023026FC
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x168
	mov sl, r0
	bl FUN_02025888
	ldr r0, _02302A28 @ =0x02353538
	ldr r2, [r0]
	ldrb r1, [r2, #0xf]
	ldrb r0, [r2, #0x748]
	cmp r1, #0
	str r0, [sp, #8]
	beq _02302A20
	mov r0, #0
	strb r0, [r2, #0xf]
	bl GetForcedLossReason
	cmp r0, #0
	bne _02302A20
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	bne _02302758
	add r0, sp, #0xb0
	bl ov29_022E2470
	add sl, sp, #0xb0
_02302758:
	ldr r0, _02302A2C @ =0x023527F8
	mov r4, #0
	ldr r3, [r0]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_02302780:
	ldr r0, _02302A28 @ =0x02353538
	ldr r3, [sp, #0x14]
	ldr r0, [r0]
	ldr r2, [sp, #0x18]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r6, #0
	str r6, [sp, #4]
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	cmp r5, #0
	beq _02302A14
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	ldrne sb, [r5, #0xb4]
	ldrshne r0, [sb, #0x10]
	cmpne r0, #0
	beq _02302A14
	ldrb r0, [sb, #0x102]
	cmp r0, #0
	movne r0, r6
	strbne r0, [sb, #0x102]
	bne _02302A08
	ldr fp, [sb, #0x214]
	cmp fp, #0
	beq _023028C4
	ldrb r0, [sb, #7]
	cmp r0, #0
	beq _02302818
	ldrb r1, [sb, #0xa]
	add r0, sp, #0x54
	bl FUN_02058C9C
_02302818:
	ldrsh r2, [sb, #0x12]
	ldrsh r0, [sb, #0x16]
	ldrb r7, [sb, #0x1a]
	ldr r1, _02302A30 @ =0x000003E7
	add r0, r2, r0
	ldrb r3, [sb, #0x1b]
	ldrb r2, [sb, #0x1c]
	str r0, [sp, #4]
	cmp r0, r1
	strgt r1, [sp, #4]
	ldrb r1, [sb, #0x1d]
	ldrb r0, [sb, #0xa]
	str r7, [sp, #0x24]
	str r3, [sp, #0x28]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	cmp r0, #0x64
	beq _023028C4
	ldr r0, [sp, #8]
	bl FUN_0205171C
	cmp r0, #0
	beq _023028C4
	ldr r0, [sb, #0x20]
	mov r1, fp
	add r2, r0, fp
	mov r0, #0
	str r2, [sb, #0x20]
	bl ov29_0234B09C
	bl ov29_0234B034
	mov r1, #0
	str r1, [sp]
	mov r2, sb
	mov r3, r1
	bl ov29_0230040C
	mov r0, sl
	ldr r1, _02302A34 @ =0x00000F1F
	bl LogMessageByIdWithPopup
	mov r0, sl
	mov r1, r5
	mov r2, #1
	mov r3, r2
	bl ov29_0230303C
	orr r6, r6, r0
_023028C4:
	ldrb r0, [sb, #0x153]
	cmp r0, #0
	beq _02302968
	ldrsh r0, [sb, #2]
	mov r2, #0
	add r1, sp, #0x2c
	mov r3, r2
	bl FUN_02053E88
	movs r6, r0
	beq _02302964
	bl DungeonRandInt
	mov r8, r0
	mov r7, #0
	b _0230293C
_023028FC:
	lsl r1, r8, #1
	add r0, sp, #0x2c
	ldrsh r0, [r0, r1]
	bl IsOnMonsterSpawnList
	cmp r0, #0
	beq _0230292C
	lsl r1, r8, #1
	add r0, sp, #0x2c
	ldrsh r0, [r0, r1]
	bl GetSpriteIndex
	cmp r0, #0
	bne _02302944
_0230292C:
	add r8, r8, #1
	cmp r8, r6
	movge r8, #0
	add r7, r7, #1
_0230293C:
	cmp r7, r6
	blt _023028FC
_02302944:
	cmp r7, r6
	bge _02302964
	add r0, sp, #0x2c
	lsl r1, r8, #1
	ldrsh r2, [r0, r1]
	mov r0, sl
	mov r1, r5
	bl EvolveMonster
_02302964:
	mov r6, #0
_02302968:
	cmp r6, #0
	beq _023029EC
	ldrb r0, [sb, #6]
	cmp r0, #0
	bne _023029EC
	ldrsh r2, [sb, #0x12]
	ldrsh r1, [sb, #0x16]
	ldr r0, _02302A30 @ =0x000003E7
	ldr r3, [sp, #0x28]
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x84]
	ldrb r2, [sb, #0x1a]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	sub r1, r2, r1
	str r1, [sp, #0x88]
	ldrb r1, [sb, #0x1c]
	ldr r2, [sp, #0x20]
	sub r0, r1, r0
	str r0, [sp, #0x8c]
	ldrb r6, [sb, #0x1b]
	add r1, sp, #0x60
	mov r0, r5
	sub r3, r6, r3
	str r3, [sp, #0x90]
	ldrb r3, [sb, #0x1d]
	sub r2, r3, r2
	str r2, [sp, #0x94]
	bl ov29_02302CC8
_023029EC:
	cmp fp, #0
	beq _02302A08
	add r2, sp, #0x54
	mov r0, sl
	mov r1, r5
	mov r3, #1
	bl ov29_02302C04
_02302A08:
	mov r0, #0
	str r0, [sb, #0x214]
	strb r0, [sb, #0x153]
_02302A14:
	add r4, r4, #1
	cmp r4, #0x14
	blt _02302780
_02302A20:
	add sp, sp, #0x168
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02302A28: .4byte 0x02353538
_02302A2C: .4byte 0x023527F8
_02302A30: .4byte 0x000003E7
_02302A34: .4byte 0x00000F1F
	arm_func_end EnemyEvolution

	arm_func_start EntityIsValid
EntityIsValid: @ 0x02302A38
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_02302A5C
ov29_02302A5C: @ 0x02302A5C
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	mov sb, r1
	mov sl, r0
	mov r0, sb
	str r2, [sp]
	mov r8, r3
	bl EntityIsValid
	cmp r0, #0
	beq _02302BF4
	ldr r5, [sb, #0xb4]
	mov r4, #0
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _02302AA4
	ldrb r1, [r5, #0xa]
	add r0, sp, #0xc
	bl FUN_02058C9C
_02302AA4:
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _02302BFC @ =0x000003E7
	ldrb fp, [r5, #0x1c]
	add r7, r2, r1
	ldrb r1, [r5, #0x1a]
	cmp r7, r0
	movgt r7, r0
	str r1, [sp, #8]
	ldrb r1, [r5, #0x1b]
	mov r0, r5
	ldrb r6, [r5, #0x1d]
	str r1, [sp, #4]
	bl IsExperienceLocked
	cmp r0, #0
	bne _02302BA8
	ldrb r1, [r5, #0xa]
	ldr r0, [sp]
	add r2, r1, r0
	cmp r2, #0x64
	movge r2, #0x64
	cmp r2, r1
	beq _02302BA8
	ldrsh r1, [r5, #2]
	add r0, sp, #0x18
	bl FUN_0205379C
	ldr r1, [sp, #0x18]
	ldrb r3, [sp, #0x98]
	str r1, [r5, #0x20]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	bl ov29_0230303C
	orrs r4, r4, r0
	beq _02302BA8
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _02302BA8
	ldrsh r2, [r5, #0x12]
	ldrsh r1, [r5, #0x16]
	ldr r0, _02302BFC @ =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	sub r0, r1, r7
	str r0, [sp, #0x48]
	ldrb r1, [r5, #0x1a]
	ldr r0, [sp, #8]
	cmp r8, #0
	sub r0, r1, r0
	str r0, [sp, #0x4c]
	ldrb r0, [r5, #0x1c]
	sub r0, r0, fp
	str r0, [sp, #0x50]
	ldrb r1, [r5, #0x1b]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x54]
	ldrb r0, [r5, #0x1d]
	sub r0, r0, r6
	str r0, [sp, #0x58]
	beq _02302BA8
	add r1, sp, #0x24
	mov r0, sb
	bl ov29_02302CC8
_02302BA8:
	add r2, sp, #0xc
	mov r0, sl
	mov r1, sb
	mov r3, r8
	bl ov29_02302C04
	mov r0, #0
	str r0, [r5, #0x214]
	strb r0, [r5, #0x153]
	cmp r4, #0
	bne _02302BF4
	cmp r8, #0
	beq _02302BF4
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02302C00 @ =0x00000F1D
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02302BF4:
	add sp, sp, #0x74
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02302BFC: .4byte 0x000003E7
_02302C00: .4byte 0x00000F1D
	arm_func_end ov29_02302A5C

	arm_func_start ov29_02302C04
ov29_02302C04: @ 0x02302C04
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	ldr r1, [sb, #0xb4]
	mov sl, r0
	ldrb r0, [r1, #7]
	mov r8, r2
	mov r4, r3
	cmp r0, #0
	beq _02302CB8
	ldrb r1, [r1, #0xa]
	add r0, sp, #0
	bl FUN_02058C9C
	ldr r0, _02302CC0 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_0204F610
	cmp r0, #0
	bne _02302CB8
	cmp r4, #0
	beq _02302CB8
	mov r7, #0
	ldr r4, _02302CC4 @ =0x00000F2A
	mov fp, r7
	mov r5, #1
	add r6, sp, #0
_02302C6C:
	ldrb r0, [r8, r7]
	cmp r0, #0
	ldrbeq r0, [r6, r7]
	cmpeq r0, #1
	bne _02302CAC
	mov r0, fp
	mov r1, sb
	mov r2, fp
	bl SubstitutePlaceholderStringTags
	mov r0, r5
	and r1, r7, #0xff
	bl ov29_0234B084
	mov r0, sl
	mov r1, sb
	mov r2, r4
	bl LogMessageByIdWithPopupCheckUserTarget
_02302CAC:
	add r7, r7, #1
	cmp r7, #0xc
	blt _02302C6C
_02302CB8:
	add sp, sp, #0xc
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02302CC0: .4byte 0x02353538
_02302CC4: .4byte 0x00000F2A
	arm_func_end ov29_02302C04

	arm_func_start ov29_02302CC8
ov29_02302CC8: @ 0x02302CC8
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x58
	mov sb, r0
	mov r8, r1
	mov r4, #0
	bl FUN_02025888
	mov r5, r0
	ldr r7, [sb, #0xb4]
	mov r0, sb
	mov r1, r4
	mov r2, #1
	bl ov29_022F98B4
	add r0, sp, #0x18
	mov r1, r7
	bl ov29_02300164
	add r1, sp, #0x18
	mov r0, sb
	str r1, [r8, #0x38]
	bl ov29_023009CC
	cmp r0, #0
	beq _02302DBC
	mov r0, sb
	mov r6, r4
	bl ov29_022FB6E4
	cmp r0, #0
	bne _02302D40
	ldrb r0, [r7, #7]
	cmp r0, #0
	moveq r6, #1
	b _02302D58
_02302D40:
	ldr r0, _02302F64 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_020514E8
	cmp r0, #0
	movne r6, #1
_02302D58:
	cmp r6, #0
	beq _02302DEC
	mov r0, r7
	bl ov29_0234CFEC
	mov r6, r0
	ldrb r0, [r7, #0x48]
	bl ov29_0234CFA0
	mov r2, r0
	mov r0, r6
	mov r1, #3
	bl FUN_0202598C
	mov r6, r0
	ldrsh r1, [r7, #4]
	add r0, sp, #8
	mov r2, #0
	bl ov29_0234BAC0
	mov r1, r6
	mov r0, r5
	bl FUN_020258B8
	mov r0, sb
	add r1, sp, #8
	mov r2, r5
	mov r3, #1
	bl ov29_0234D304
	b _02302DEC
_02302DBC:
	ldr r0, _02302F68 @ =0x00000F27
	bl FUN_020258C4
	mov r1, r0
	mov r0, r5
	bl FUN_02089694
	mov r2, r4
	mov r0, r5
	mov r3, r2
	str r8, [sp]
	mov r1, #1
	str r1, [sp, #4]
	bl ov29_0234D234
_02302DEC:
	mov r0, #0
	strb r0, [r5]
	ldr r0, [r8, #0x24]
	cmp r0, #0
	ble _02302E18
	ldr r0, _02302F6C @ =0x00000F18
	bl FUN_020258C4
	mov r1, r0
	mov r0, r5
	bl FUN_020897AC
	add r4, r4, #1
_02302E18:
	ldr r0, [r8, #0x28]
	cmp r0, #0
	ble _02302E5C
	ldr r0, _02302F70 @ =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302E44
	ldr r1, _02302F74 @ =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl FUN_020897AC
_02302E44:
	ldr r0, _02302F78 @ =0x00000F19
	bl FUN_020258C4
	mov r1, r0
	mov r0, r5
	bl FUN_020897AC
	add r4, r4, #1
_02302E5C:
	ldr r0, [r8, #0x2c]
	cmp r0, #0
	ble _02302EA0
	ldr r0, _02302F70 @ =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302E88
	ldr r1, _02302F74 @ =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl FUN_020897AC
_02302E88:
	ldr r0, _02302F7C @ =0x00000F1A
	bl FUN_020258C4
	mov r1, r0
	mov r0, r5
	bl FUN_020897AC
	add r4, r4, #1
_02302EA0:
	ldr r0, [r8, #0x30]
	cmp r0, #0
	ble _02302EE4
	ldr r0, _02302F70 @ =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302ECC
	ldr r1, _02302F74 @ =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl FUN_020897AC
_02302ECC:
	ldr r0, _02302F80 @ =0x00000F1B
	bl FUN_020258C4
	mov r1, r0
	mov r0, r5
	bl FUN_020897AC
	add r4, r4, #1
_02302EE4:
	ldr r0, [r8, #0x34]
	cmp r0, #0
	ble _02302F24
	ldr r0, _02302F70 @ =0x023527F0
	ldrb r2, [r0, r4]
	cmp r2, #0
	beq _02302F10
	ldr r1, _02302F74 @ =0x023535C8
	mov r0, r5
	ldr r1, [r1, r2, lsl #2]
	bl FUN_020897AC
_02302F10:
	ldr r0, _02302F84 @ =0x00000F1C
	bl FUN_020258C4
	mov r1, r0
	mov r0, r5
	bl FUN_020897AC
_02302F24:
	ldrb r0, [r5]
	cmp r0, #0
	beq _02302F4C
	mov r2, #0
	mov r0, r5
	mov r3, r2
	str r8, [sp]
	mov r1, #1
	str r1, [sp, #4]
	bl ov29_0234D234
_02302F4C:
	bl GetLeader
	mov r1, #0
	mov r2, #1
	bl ov29_022F98B4
	add sp, sp, #0x58
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02302F64: .4byte 0x02353538
_02302F68: .4byte 0x00000F27
_02302F6C: .4byte 0x00000F18
_02302F70: .4byte 0x023527F0
_02302F74: .4byte 0x023535C8
_02302F78: .4byte 0x00000F19
_02302F7C: .4byte 0x00000F1A
_02302F80: .4byte 0x00000F1B
_02302F84: .4byte 0x00000F1C
	arm_func_end ov29_02302CC8

	arm_func_start ov29_02302F88
ov29_02302F88: @ 0x02302F88
	push {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	bl EntityIsValid
	cmp r0, #0
	beq _02303030
	ldr r5, [r7, #0xb4]
	mov r4, #0
	mov r0, r5
	bl IsExperienceLocked
	cmp r0, #0
	bne _02303000
	ldrb r0, [r5, #0xa]
	sub r2, r0, r6
	cmp r2, #1
	movlt r2, #1
	cmp r2, r0
	beq _02303000
	ldrsh r1, [r5, #2]
	add r0, sp, #0
	bl FUN_0205379C
	ldr r2, [sp]
	mov r0, r8
	mov r1, r7
	str r2, [r5, #0x20]
	bl ov29_02303284
	orr r4, r4, r0
_02303000:
	mov r0, #0
	str r0, [r5, #0x214]
	strb r0, [r5, #0x153]
	cmp r4, #0
	bne _02303030
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02303038 @ =0x00000F1E
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02303030:
	add sp, sp, #0xc
	pop {r3, r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02303038: .4byte 0x00000F1E
	arm_func_end ov29_02302F88

	arm_func_start ov29_0230303C
ov29_0230303C: @ 0x0230303C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r1
	str r0, [sp, #4]
	mov r0, sl
	mov r6, #0
	mov sb, r2
	str r3, [sp, #8]
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r6
	beq _02303268
	ldr r7, [sl, #0xb4]
	mov r0, r7
	ldrsh fp, [r7, #2]
	ldr r8, [r7, #0x20]
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, r6
	bne _02303268
	ldrb r0, [r7, #0xa]
	ldr r4, _02303270 @ =0x0237C9C4
	add r5, r0, #1
	b _0230325C
_0230309C:
	add r0, sp, #0xc
	mov r1, fp
	mov r2, r5
	bl FUN_0205379C
	ldr r0, [sp, #0xc]
	cmp r0, r8
	bgt _02303264
	strb r5, [r7, #0xa]
	str r8, [r7, #0x20]
	cmp sb, #0
	beq _02303160
	ldrb r0, [r7, #6]
	cmp r0, #0
	bne _02303124
	mov r0, sl
	mov r1, #0
	mov r2, #1
	bl ov29_022F98B4
	cmp r6, #0
	bne _023030F0
	bl ov29_022EAC7C
_023030F0:
	mov r0, #0
	mov r1, r5
	bl ov29_0234B09C
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r0, sl
	mov r1, #0xf20
	bl ov29_0234D484
	b _02303160
_02303124:
	cmp r6, #0
	bne _02303130
	bl ov29_022EAC7C
_02303130:
	mov r0, #0
	mov r1, r5
	bl ov29_0234B09C
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r0, sl
	mov r1, #0xf20
	bl LogMessageByIdWithPopup
_02303160:
	ldrh r1, [sp, #0x10]
	add r0, r7, #0x12
	mov r6, #1
	bl FUN_02054FB8
	ldrsh r1, [r7, #0x10]
	ldrh r0, [sp, #0x10]
	add r0, r1, r0
	strh r0, [r7, #0x10]
	ldrsh r1, [r7, #0x12]
	ldrsh r0, [r7, #0x16]
	add r2, r1, r0
	ldr r0, _02303274 @ =0x000003E7
	cmp r2, r0
	movgt r1, r0
	ldrsh r0, [r7, #0x10]
	movle r1, r2
	cmp r0, r1
	blt _023031B8
	ldr r0, _02303274 @ =0x000003E7
	cmp r2, r0
	movgt r2, r0
	strh r2, [r7, #0x10]
_023031B8:
	ldr r0, _02303278 @ =0x0237C9C8
	ldrb r2, [r7, #0x1a]
	mov r1, r0
	strb r2, [r1]
	ldrb r2, [r7, #0x1b]
	strb r2, [r1, #1]
	ldrb r1, [r7, #0x1c]
	strb r1, [r4]
	ldrb r1, [r7, #0x1d]
	strb r1, [r4, #1]
	ldrb r1, [sp, #0x12]
	bl FUN_02054FEC
	ldrb r1, [sp, #0x13]
	ldr r0, _0230327C @ =0x0237C9C9
	bl FUN_02054FEC
	ldrb r1, [sp, #0x14]
	mov r0, r4
	bl FUN_02055020
	ldrb r1, [sp, #0x15]
	ldr r0, _02303280 @ =0x0237C9C5
	bl FUN_02055020
	mov r0, sl
	bl ov29_023021F0
	mov r0, sl
	bl ov29_02318D58
	ldr r0, _02303278 @ =0x0237C9C8
	mov r1, sl
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	strb r2, [r7, #0x1a]
	ldr r2, _02303278 @ =0x0237C9C8
	ldr r3, [sp, #8]
	ldrb ip, [r2, #1]
	mov r2, sb
	strb ip, [r7, #0x1b]
	ldrb ip, [r4]
	strb ip, [r7, #0x1c]
	ldrb ip, [r4, #1]
	strb ip, [r7, #0x1d]
	bl ov29_023034E0
	add r5, r5, #1
_0230325C:
	cmp r5, #0x64
	ble _0230309C
_02303264:
	mov r0, r6
_02303268:
	add sp, sp, #0x18
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02303270: .4byte 0x0237C9C4
_02303274: .4byte 0x000003E7
_02303278: .4byte 0x0237C9C8
_0230327C: .4byte 0x0237C9C9
_02303280: .4byte 0x0237C9C5
	arm_func_end ov29_0230303C

	arm_func_start ov29_02303284
ov29_02303284: @ 0x02303284
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r1
	str r0, [sp, #4]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	beq _023034BC
	ldr r7, [sl, #0xb4]
	mov r0, r7
	ldrsh r5, [r7, #2]
	ldr r8, [r7, #0x20]
	ldrb r6, [r7, #0xa]
	bl IsExperienceLocked
	cmp r0, #0
	movne r0, #0
	bne _023034BC
	mov sb, #1
	add r4, sp, #8
	b _023032F8
_023032D8:
	mov r0, r4
	mov r1, r5
	mov r2, sb
	bl FUN_0205379C
	ldr r0, [sp, #8]
	cmp r0, r8
	bge _02303304
	add sb, sb, #1
_023032F8:
	ldrb r0, [r7, #0xa]
	cmp sb, r0
	blt _023032D8
_02303304:
	sub r4, sb, #1
	ldrb sb, [r7, #0xa]
	ldr fp, _023034C4 @ =0x0237C9C4
	b _02303450
_02303314:
	cmp sb, #0x64
	strge r8, [r7, #0x20]
	bge _0230333C
	add r0, sp, #8
	mov r1, r5
	add r2, sb, #1
	bl FUN_0205379C
	ldr r0, [sp, #8]
	sub r0, r0, #1
	str r0, [r7, #0x20]
_0230333C:
	cmp r6, sb
	ble _0230344C
	add r0, sp, #8
	mov r1, r5
	add r2, sb, #1
	bl FUN_0205379C
	strb sb, [r7, #0xa]
	ldrh r1, [sp, #0xc]
	add r0, r7, #0x10
	rsb r1, r1, #0
	bl FUN_02054FB8
	ldrh r1, [sp, #0xc]
	add r0, r7, #0x12
	rsb r1, r1, #0
	bl FUN_02054FB8
	ldrsh r1, [r7, #0x12]
	ldrsh r0, [r7, #0x16]
	add r2, r1, r0
	ldr r0, _023034C8 @ =0x000003E7
	cmp r2, r0
	movgt r1, r0
	ldrsh r0, [r7, #0x10]
	movle r1, r2
	cmp r0, r1
	blt _023033B0
	ldr r0, _023034C8 @ =0x000003E7
	cmp r2, r0
	movgt r2, r0
	strh r2, [r7, #0x10]
_023033B0:
	ldr r0, _023034CC @ =0x0237C9C8
	ldrb r2, [r7, #0x1a]
	mov r1, r0
	strb r2, [r1]
	ldrb r2, [r7, #0x1b]
	strb r2, [r1, #1]
	ldrb r1, [r7, #0x1c]
	strb r1, [fp]
	ldrb r1, [r7, #0x1d]
	strb r1, [fp, #1]
	ldrb r1, [sp, #0xe]
	rsb r1, r1, #0
	bl FUN_02054FEC
	ldrb r1, [sp, #0xf]
	ldr r0, _023034D0 @ =0x0237C9C9
	rsb r1, r1, #0
	bl FUN_02054FEC
	ldrb r1, [sp, #0x10]
	mov r0, fp
	rsb r1, r1, #0
	bl FUN_02055020
	ldrb r1, [sp, #0x11]
	ldr r0, _023034D4 @ =0x0237C9C5
	rsb r1, r1, #0
	bl FUN_02055020
	mov r0, sl
	bl ov29_023021F0
	mov r0, sl
	bl ov29_02318D58
	ldr r0, _023034CC @ =0x0237C9C8
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	ldr r0, _023034CC @ =0x0237C9C8
	ldrb r0, [r0, #1]
	strb r0, [r7, #0x1b]
	ldrb r0, [fp]
	strb r0, [r7, #0x1c]
	ldrb r0, [fp, #1]
	strb r0, [r7, #0x1d]
_0230344C:
	sub sb, sb, #1
_02303450:
	cmp sb, r4
	bgt _02303314
	bl ov29_0234B034
	mov r1, #0
	mov r2, r7
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	ldrb r1, [r7, #0xa]
	cmp r1, r6
	bne _02303494
	ldr r2, _023034D8 @ =0x00000F22
	ldr r0, [sp, #4]
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #0
	b _023034BC
_02303494:
	mov r0, #0
	bl ov29_0234B09C
	mov r0, sl
	mov r1, #0x204
	bl ov29_022E56A0
	ldr r2, _023034DC @ =0x00000F21
	ldr r0, [sp, #4]
	mov r1, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, #1
_023034BC:
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023034C4: .4byte 0x0237C9C4
_023034C8: .4byte 0x000003E7
_023034CC: .4byte 0x0237C9C8
_023034D0: .4byte 0x0237C9C9
_023034D4: .4byte 0x0237C9C5
_023034D8: .4byte 0x00000F22
_023034DC: .4byte 0x00000F21
	arm_func_end ov29_02303284

	arm_func_start ov29_023034E0
ov29_023034E0: @ 0x023034E0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x78
	mov sb, r1
	ldr r5, [sb, #0xb4]
	mov r4, #0
	ldrb r0, [r5, #6]
	mov r8, r2
	mov fp, r4
	str r3, [sp, #8]
	cmp r0, #0
	str r4, [sp, #0xc]
	add r0, r5, #0x4a
	strne r4, [sp, #8]
	movne r8, r4
	bl ov29_022EBCE8
	mov sl, #0
	mov r6, r0
	mvn r0, #0
	cmp r6, r0
	addne r0, r5, r6, lsl #3
	addne r0, r0, #0x100
	ldrhne r7, [r0, #0x28]
	mov ip, sl
	mov lr, sl
	moveq r7, #0
	mov r3, #1
	add r0, sp, #0x10
_0230354C:
	add r1, r5, ip, lsl #3
	ldrb r1, [r1, #0x124]
	tst r1, #1
	movne r1, r3
	moveq r1, lr
	tst r1, #0xff
	beq _02303588
	add r1, r5, ip, lsl #3
	add r1, r1, #0x100
	ldrh r2, [r1, #0x28]
	lsl r1, sl, #1
	add sl, sl, #1
	strh r2, [r0, r1]
	lsl r1, sl, #0x10
	asr sl, r1, #0x10
_02303588:
	add r1, ip, #1
	lsl r1, r1, #0x10
	asr ip, r1, #0x10
	cmp ip, #4
	blt _0230354C
	mov r2, sl
	mov r3, #0
	add r1, sp, #0x10
	b _023035C0
_023035AC:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsl r2, r2, #1
	strh r3, [r1, r2]
	asr r2, r0, #0x10
_023035C0:
	cmp r2, #4
	blt _023035AC
	add r1, sp, #0x10
	stm sp, {r1, sl}
	ldrsh r1, [r5, #2]
	ldrb r2, [r5, #0xa]
	ldrsh r3, [r5, #0xe]
	add r0, sp, #0x58
	bl FUN_02053904
	mov sl, r0
	add r0, sp, #0x18
	add r1, r5, #0x124
	bl FUN_020149C0
	cmp sl, #0
	beq _02303670
	mov r0, sl
	bl DungeonRandInt
	mov sl, #0
	add ip, sp, #0x18
	mov r1, sl
	mov r2, #1
	b _02303668
_02303618:
	ldrb r3, [ip, sl, lsl #3]
	tst r3, #1
	movne r3, r2
	moveq r3, r1
	tst r3, #0xff
	bne _02303664
	add r1, sp, #0x58
	lsl r0, r0, #1
	ldrh r2, [r1, r0]
	add r3, sp, #0x18
	mov r0, sb
	add r1, r3, sl, lsl #3
	bl ov29_0231EA04
	add r2, sp, #0x1a
	lsl r1, sl, #3
	ldrh r0, [r2, r1]
	orr r0, r0, #4
	strh r0, [r2, r1]
	b _02303670
_02303664:
	add sl, sl, #1
_02303668:
	cmp sl, #8
	blt _02303618
_02303670:
	add sl, sp, #0x18
_02303674:
	mov lr, #0
	mov r1, lr
_0230367C:
	ldrb r0, [sl, r1, lsl #3]
	add r1, r1, #1
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	addne lr, lr, #1
	cmp r1, #8
	blt _0230367C
	cmp lr, #4
	bgt _02303770
	mov sl, #0
	mov ip, sl
	b _023036FC
_023036B4:
	add r1, r5, ip, lsl #3
	add r0, sp, #0x18
	add r2, r1, #0x124
	add r3, r0, ip, lsl #3
	mov r1, #4
_023036C8:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _023036C8
	add r0, r5, ip, lsl #3
	add r0, r0, #0x100
	ldrh r1, [r0, #0x26]
	add ip, ip, #1
	tst r1, #4
	bicne r1, r1, #4
	strhne r1, [r0, #0x26]
	ldrhne r4, [r0, #0x28]
	movne sl, #1
_023036FC:
	cmp ip, lr
	blt _023036B4
	mov r1, #0
	b _02303718
_0230370C:
	add r0, r5, ip, lsl #3
	strb r1, [r0, #0x124]
	add ip, ip, #1
_02303718:
	cmp ip, #4
	blt _0230370C
	cmp sl, #0
	cmpne r8, #0
	beq _02303818
	bl ov29_0234B034
	mov r1, #0
	mov r2, r5
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r1, r4
	mov r0, #0
	bl ov29_0234B084
	ldr r1, _023038C4 @ =0x0000131B
	mov r0, sb
	bl ov29_022E56A0
	ldr r1, _023038C8 @ =0x00000F23
	mov r0, sb
	bl ov29_0234D484
	mov fp, #1
	b _02303818
_02303770:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _02303808
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02303808
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _023037E8
	cmp r8, #0
	beq _023037E8
	mov r0, #0xa
	mov r1, #6
	bl ov29_022EA370
	ldrsh r1, [r5, #2]
	ldr r0, _023038CC @ =0xFFFFFE5E
	mov r2, #1
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #3
	mov r0, #0
	ldr r1, _023038D0 @ =0x00000F25
	bhi _023037E4
	add r1, r1, #1
	bl DisplayMessage2
	b _023037E8
_023037E4:
	bl DisplayMessage2
_023037E8:
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, sb
	mov r1, sl
	mov r2, #1
	mov r3, #0
	bl ov29_0234FAEC
	b _02303674
_02303808:
	mov r0, sb
	mov r1, sl
	bl ov29_02303BEC
	b _02303674
_02303818:
	cmp fp, #0
	cmpne r7, #0
	mvnne r0, #0
	cmpne r6, r0
	beq _023038BC
	mov r2, #0
	mov r4, r6
	mov r0, r2
	mov r1, #1
	b _0230389C
_02303840:
	add r3, r5, r4, lsl #3
	ldrb r3, [r3, #0x124]
	tst r3, #1
	movne r3, r1
	moveq r3, r0
	tst r3, #0xff
	beq _02303870
	add r3, r5, r4, lsl #3
	add r3, r3, #0x100
	ldrh r3, [r3, #0x28]
	cmp r7, r3
	beq _023038A4
_02303870:
	add r3, r4, #1
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	lsr r4, r3, #0x1f
	rsb r3, r4, r3, lsl #30
	add r4, r4, r3, ror #30
	add r3, r2, #1
	lsl r2, r4, #0x10
	lsl r3, r3, #0x10
	asr r4, r2, #0x10
	asr r2, r3, #0x10
_0230389C:
	cmp r2, #4
	blt _02303840
_023038A4:
	cmp r2, #4
	beq _023038B4
	cmp r4, r6
	beq _023038BC
_023038B4:
	mov r0, #1
	strb r0, [r5, #0x23e]
_023038BC:
	add sp, sp, #0x78
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_023038C4: .4byte 0x0000131B
_023038C8: .4byte 0x00000F23
_023038CC: .4byte 0xFFFFFE5E
_023038D0: .4byte 0x00000F25
	arm_func_end ov29_023034E0

	arm_func_start ov29_023038D4
ov29_023038D4: @ 0x023038D4
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xa4
	mov sl, r0
	ldr r8, [sl, #0xb4]
	mov r6, r1
	mov r5, #0
	add r0, sp, #0
	add r1, r8, #0x124
	mov r7, r5
	bl FUN_020149C0
	mov r4, r5
	add r3, sp, #0
	mov r0, r5
	mov r1, #1
	b _02303958
_02303910:
	ldrb r2, [r3, r4, lsl #3]
	tst r2, #1
	movne r2, r1
	moveq r2, r0
	tst r2, #0xff
	bne _02303954
	add r1, sp, #0
	mov r0, sl
	mov r2, r6
	add r1, r1, r4, lsl #3
	bl ov29_0231EA04
	add r2, sp, #2
	lsl r1, r4, #3
	ldrh r0, [r2, r1]
	orr r0, r0, #4
	strh r0, [r2, r1]
	b _02303960
_02303954:
	add r4, r4, #1
_02303958:
	cmp r4, #8
	blt _02303910
_02303960:
	mov sb, #0
	mov fp, #1
	add r4, sp, #0
	b _02303AC8
_02303970:
	mov r6, #0
	mov r1, r6
_02303978:
	ldrb r0, [r4, r1, lsl #3]
	add r1, r1, #1
	tst r0, #1
	movne r0, fp
	moveq r0, #0
	tst r0, #0xff
	addne r6, r6, #1
	cmp r1, #8
	blt _02303978
	cmp r6, #4
	bgt _02303A84
	mov sb, #0
	add r4, r8, #0x124
	add fp, sp, #0
	b _02303A14
_023039B4:
	add r0, r8, sb, lsl #3
	add r3, fp, sb, lsl #3
	add r2, r0, #0x124
	mov r1, #4
_023039C4:
	ldrh r0, [r3], #2
	subs r1, r1, #1
	strh r0, [r2], #2
	bne _023039C4
	add r0, r8, sb, lsl #3
	add r3, r0, #0x100
	ldrh r0, [r3, #0x26]
	tst r0, #4
	beq _02303A10
	bic r5, r0, #4
	add r0, sp, #0x40
	mov r2, #0
	add r1, r4, sb, lsl #3
	strh r5, [r3, #0x26]
	bl FUN_02013478
	add r0, r8, sb, lsl #3
	add r0, r0, #0x100
	ldrh r5, [r0, #0x28]
	mov r7, #1
_02303A10:
	add sb, sb, #1
_02303A14:
	cmp sb, r6
	blt _023039B4
	mov r1, #0
	b _02303A30
_02303A24:
	add r0, r8, sb, lsl #3
	strb r1, [r0, #0x124]
	add sb, sb, #1
_02303A30:
	cmp sb, #4
	blt _02303A24
	cmp r7, #0
	beq _02303AD0
	ldrb r0, [r8, #6]
	cmp r0, #0
	bne _02303AD0
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r5
	mov r0, #0
	bl ov29_0234B084
	ldr r1, _02303B08 @ =0x0000131B
	mov r0, sl
	bl ov29_022E56A0
	ldr r1, _02303B0C @ =0x00000F23
	mov r0, sl
	bl ov29_0234D484
	b _02303AD0
_02303A84:
	ldrb r0, [r8, #6]
	mov r7, #0
	cmp r0, #0
	bne _02303AC4
	ldr r1, _02303B10 @ =0x00000F28
	mov r0, r7
	mov r2, #1
	bl DisplayMessage
	mov r2, #1
	mov r0, sl
	mov r1, r4
	mov r3, r2
	bl ov29_0234FAEC
	cmp r0, #0
	moveq r0, r7
	beq _02303B00
_02303AC4:
	add sb, sb, #1
_02303AC8:
	cmp sb, #0x1e
	blt _02303970
_02303AD0:
	cmp r7, #0
	ldrbeq r0, [r8, #6]
	cmpeq r0, #0
	bne _02303AFC
	mov r0, #0
	mov r1, sl
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02303B14 @ =0x00000F24
	mov r0, sl
	bl ov29_0234D484
_02303AFC:
	mov r0, #1
_02303B00:
	add sp, sp, #0xa4
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02303B08: .4byte 0x0000131B
_02303B0C: .4byte 0x00000F23
_02303B10: .4byte 0x00000F28
_02303B14: .4byte 0x00000F24
	arm_func_end ov29_023038D4

	arm_func_start ov29_02303B18
ov29_02303B18: @ 0x02303B18
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sb, r2
	mov r2, #0
	mov sl, r0
	mov r8, r2
_02303B30:
	lsl r0, r2, #1
	add r2, r2, #1
	strh r8, [sl, r0]
	cmp r2, #4
	blt _02303B30
	mov r0, r1
	bl FUN_02013884
	mov r7, r0
	add r6, sp, #0
	mov r5, #0
	mov r4, #4
	b _02303BD8
_02303B60:
	mov r0, r7
	mov r1, r6
	bl FUN_0205384C
	ldrb r1, [r0]
	add r7, r0, #1
	cmp r1, sb
	bgt _02303BE4
	mov r1, r5
	ldrh r2, [sp]
	b _02303BA4
_02303B88:
	lsl r0, r1, #1
	ldrh r0, [sl, r0]
	cmp r2, r0
	beq _02303BAC
	add r0, r1, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_02303BA4:
	cmp r1, #4
	blt _02303B88
_02303BAC:
	cmp r1, #4
	bne _02303BD8
	cmp r8, #4
	movne r0, r8
	addne r8, r8, #1
	bne _02303BCC
	mov r0, r4
	bl DungeonRandInt
_02303BCC:
	ldrh r1, [sp]
	lsl r0, r0, #1
	strh r1, [sl, r0]
_02303BD8:
	ldrb r0, [r7]
	cmp r0, #0
	bne _02303B60
_02303BE4:
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02303B18

	arm_func_start ov29_02303BEC
ov29_02303BEC: @ 0x02303BEC
	push {r4, lr}
	mov r0, #0
	mov r4, r1
	mov ip, r0
	mov r2, r0
	mov r3, #1
_02303C04:
	ldrb r1, [r4, ip, lsl #3]
	tst r1, #1
	movne r1, r3
	moveq r1, r2
	tst r1, #0xff
	ldrbne r1, [r4, ip, lsl #3]
	addne r0, r0, #1
	bicne r1, r1, #2
	strbne r1, [r4, ip, lsl #3]
	add ip, ip, #1
	cmp ip, #8
	blt _02303C04
	bl DungeonRandInt
	add r1, r4, r0, lsl #3
	ldrh lr, [r1, #4]
	b _02303C64
_02303C44:
	add ip, r4, r0, lsl #3
	add r3, ip, #8
	mov r2, #4
_02303C50:
	ldrh r1, [r3], #2
	subs r2, r2, #1
	strh r1, [ip], #2
	bne _02303C50
	add r0, r0, #1
_02303C64:
	cmp r0, #7
	blt _02303C44
	mov r1, #0
	mov r0, lr
	strb r1, [r4, #0x38]
	pop {r4, pc}
	arm_func_end ov29_02303BEC

	arm_func_start EvolveMonster
EvolveMonster: @ 0x02303C7C
	push {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r7, r1
	ldr r6, [r7, #0xb4]
	mov r8, r0
	mov r5, r2
	bl ov29_0234B034
	mov r1, #0
	mov r2, r6
	mov r3, r1
	str r1, [sp]
	bl ov29_0230040C
	mov r1, r5
	mov r0, #1
	bl ov29_0234B06C
	mov r0, r5
	bl GetSpriteIndex
	strh r5, [r6, #4]
	strh r5, [r6, #2]
	mov r4, r0
	ldrb r2, [r6, #0xa]
	add r0, sp, #0x14
	mov r1, r5
	bl FUN_0205379C
	ldr r1, [sp, #0x14]
	mov r0, r6
	str r1, [r6, #0x20]
	mov r1, #0
	strh r4, [r7, #0xa8]
	bl ov29_022FDDC0
	mov r0, r7
	bl ov29_022F9194
	mov r0, r7
	mov r1, #7
	bl ov29_02304830
	ldr r2, _02303DFC @ =0x00000F29
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r7
	bl ov29_022E6724
	bl ov29_022EAC9C
	ldr r0, _02303E00 @ =0x0000013F
	cmp r5, r0
	addne r0, r0, #0x258
	cmpne r5, r0
	bne _02303DF4
	mov r5, #0
	ldr r4, _02303E04 @ =0x0235171C
	mov r8, #0x140
	b _02303D84
_02303D48:
	lsl r1, r5, #2
	add r0, r4, r5, lsl #2
	ldrsh ip, [r7, #4]
	ldrsh r3, [r4, r1]
	ldrsh r2, [r7, #6]
	ldrsh r1, [r0, #2]
	add r0, ip, r3
	add r1, r2, r1
	bl GetTile
	mov r1, r0
	mov r0, r8
	bl ov29_022FF6C4
	cmp r0, #0
	beq _02303D8C
	add r5, r5, #1
_02303D84:
	cmp r5, #8
	blt _02303D48
_02303D8C:
	mov r0, #0x140
	bl IsOnMonsterSpawnList
	cmp r0, #0
	beq _02303DF4
	mov r0, #0x140
	strh r0, [sp, #4]
	ldrb r1, [r6, #0xa]
	mov r2, #0
	ldr r0, _02303E04 @ =0x0235171C
	lsl r5, r5, #2
	strh r1, [sp, #0xc]
	strb r2, [sp, #6]
	ldrsh r3, [r0, r5]
	ldrsh r4, [r7, #4]
	ldr r1, _02303E08 @ =0x0235171E
	add r0, sp, #4
	add r3, r4, r3
	strh r3, [sp, #0xe]
	ldrsh r4, [r7, #6]
	ldrsh r3, [r1, r5]
	mov r1, #1
	str r2, [sp, #8]
	add r3, r4, r3
	strh r3, [sp, #0x10]
	strb r2, [sp, #0x12]
	bl SpawnMonster
_02303DF4:
	add sp, sp, #0x20
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02303DFC: .4byte 0x00000F29
_02303E00: .4byte 0x0000013F
_02303E04: .4byte 0x0235171C
_02303E08: .4byte 0x0235171E
	arm_func_end EvolveMonster

	arm_func_start ov29_02303E0C
ov29_02303E0C: @ 0x02303E0C
	push {r3, lr}
	ldrb r1, [r0, #0xbc]
	cmp r1, #1
	cmpne r1, #2
	cmpne r1, #3
	cmpne r1, #0xb
	cmpne r1, #0xc
	cmpne r1, #0xd
	cmpne r1, #0xe
	beq _02303E4C
	cmp r1, #4
	bne _02303E54
	ldrsh r0, [r0, #2]
	bl FUN_02052B60
	cmp r0, #0
	beq _02303E54
_02303E4C:
	mov r0, #1
	pop {r3, pc}
_02303E54:
	mov r0, #0
	pop {r3, pc}
	arm_func_end ov29_02303E0C

	arm_func_start ov29_02303E5C
ov29_02303E5C: @ 0x02303E5C
	push {r3, r4, r5, lr}
	mvn r4, #0x1f
	cmp r3, r4
	ldrshgt ip, [sp, #0x10]
	cmpgt ip, r4
	pople {r3, r4, r5, pc}
	rsb lr, r4, #0xff
	cmp r3, lr
	cmplt ip, #0xe0
	popge {r3, r4, r5, pc}
	cmp r1, #6
	popeq {r3, r4, r5, pc}
	ldr r5, _02303F0C @ =0x0237C888
	mov lr, #0x48
	smlabb r5, r2, lr, r5
	mov r2, #0xc
	mla r1, r2, r1, r5
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldrh lr, [r1, #2]
	ldrsh r5, [r1, #8]
	sub r0, r2, #0x20c
	and r0, lr, r0
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	add r0, r3, r5
	and r0, r0, r4, lsr #23
	orr r0, r2, r0
	strh r0, [r1, #2]
	ldrh r3, [r1, #6]
	ldrsh r4, [r1, #0xa]
	ldr r0, _02303F10 @ =0xFFFF000F
	ldr r2, _02303F14 @ =0x020AFC4C
	and r0, r3, r0
	strh r0, [r1, #6]
	add r0, ip, r4
	ldrh r4, [r1, #6]
	lsl r3, r0, #0x14
	ldr r0, [r2]
	orr r3, r4, r3, lsr #16
	mov r2, #0
	strh r3, [r1, #6]
	bl FUN_0201B9F8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02303F0C: .4byte 0x0237C888
_02303F10: .4byte 0xFFFF000F
_02303F14: .4byte 0x020AFC4C
	arm_func_end ov29_02303E5C

	arm_func_start ov29_02303F18
ov29_02303F18: @ 0x02303F18
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x38
	ldr r1, _023046C8 @ =0x02353538
	mov r7, r0
	ldr r0, [r1]
	ldr r5, [r7, #0xb4]
	add r0, r0, #0x1a000
	ldr r1, [r0, #0x22c]
	cmp r1, r7
	moveq r4, #0
	ldrbne r4, [r0, #0x245]
	ldrb r0, [r5, #0xd8]
	ldrb r1, [r7, #0xaf]
	cmp r0, #2
	ldrb r0, [r7, #0xae]
	moveq r4, #1
	cmp r1, r0
	ldrbeq r1, [r7, #0xb1]
	ldrbeq r0, [r7, #0xb0]
	cmpeq r1, r0
	ldrbeq r0, [r7, #0xb3]
	cmpeq r0, #0
	bne _02304044
	add r0, r7, #0x2c
	mov r6, #0
	bl FUN_0201D1B0
	cmp r0, #0
	moveq r6, #1
	cmp r6, #0
	beq _02304044
	mov r0, r7
	bl GetSleepAnimationId
	mov r3, #1
	strb r3, [r7, #0x21]
	ldrb r1, [r5, #0x10a]
	cmp r1, #0x63
	bne _02303FF4
	ldrb r6, [r7, #0xaf]
	cmp r6, #0xd
	bhs _02303FF0
	ldrb r1, [r5, #0xd2]
	cmp r1, #1
	moveq r3, #2
	beq _02303FD4
	ldrb r1, [r7, #0x23]
	cmp r1, #3
	movlo r3, #0
_02303FD4:
	ldr r2, _023046CC @ =0x02352810
	mov r1, #0xd
	mla r1, r3, r1, r2
	ldrb r1, [r6, r1]
	cmp r1, #7
	moveq r1, r0
	b _02303FF4
_02303FF0:
	mov r1, #0x63
_02303FF4:
	cmp r1, #0x63
	beq _02304044
	strb r1, [r7, #0xae]
	mov r1, #0
	strb r1, [r7, #0x28]
	ldrb r2, [r7, #0xb1]
	mov r1, #1
	and r2, r2, #7
	strb r2, [r7, #0xb0]
	strb r1, [r7, #0xb3]
	ldrb r1, [r5, #0x23d]
	cmp r1, #0
	ldrbeq r1, [r7, #0xae]
	cmpeq r1, #6
	ldrbeq r1, [r7, #0xb2]
	addeq r2, r1, #1
	andeq r1, r2, #0xff
	strbeq r2, [r7, #0xb2]
	cmpeq r1, #0x10
	strbeq r0, [r7, #0xae]
_02304044:
	ldrh r0, [r7, #0x2e]
	orr r0, r0, #0x10
	strh r0, [r7, #0x2e]
	ldrb r2, [r7, #0xae]
	ldrb r0, [r7, #0xaf]
	cmp r0, r2
	ldrbeq r1, [r7, #0xb1]
	ldrbeq r0, [r7, #0xb0]
	cmpeq r1, r0
	ldrbeq r0, [r7, #0xb3]
	cmpeq r0, #0
	beq _023041F4
	strb r2, [r7, #0xaf]
	ldrb r1, [r7, #0xb0]
	mov r0, #0
	strb r1, [r7, #0xb1]
	strb r0, [r7, #0xb3]
	ldrb r0, [r7, #0x28]
	cmp r0, #0
	movne r6, #2
	ldrsheq r6, [r7, #0xac]
	cmp r4, #0
	bne _0230414C
	cmp r0, #0
	beq _023040EC
	bl ov29_022F7050
	mov r1, r0
	add r0, r7, #0x2c
	bl FUN_0201C0E8
	bl FUN_0200224C
	lsl r1, r6, #0x10
	asr r3, r1, #0x10
	mov r1, #0
	str r1, [sp]
	and r0, r0, #3
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	add r0, r7, #0x2c
	bl FUN_0201C418
	b _023041E4
_023040EC:
	ldrsh r1, [r7, #0xa8]
	add r0, r7, #0x2c
	bl FUN_0201C0E8
	bl FUN_0200224C
	ldrb r1, [r7, #0xaa]
	and r0, r0, #3
	lsl r3, r6, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	add r0, r7, #0x2c
	asr r3, r3, #0x10
	bl FUN_0201C418
	ldrb r0, [r5, #0x171]
	cmp r0, #0
	beq _023041E4
	add r0, r7, #0x2c
	mov r1, #1
	bl FUN_0201D198
	b _023041E4
_0230414C:
	cmp r0, #0
	beq _02304198
	bl ov29_022F7050
	mov r1, r0
	add r0, r7, #0x2c
	bl FUN_0201C0E8
	bl FUN_0200224C
	lsl r1, r6, #0x10
	asr r3, r1, #0x10
	mov r1, #0
	str r1, [sp]
	and r0, r0, #3
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	add r0, r7, #0x2c
	bl FUN_0201C418
	b _023041E4
_02304198:
	ldr r0, _023046D0 @ =0x00000229
	bl GetSpriteIndex
	mov r1, r0
	add r0, r7, #0x2c
	bl FUN_0201C0E8
	bl FUN_0200224C
	lsl r1, r6, #0x10
	asr r3, r1, #0x10
	ldrb r2, [r7, #0xaa]
	and r1, r0, #3
	mov r0, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0x2c
	ldrb r1, [r7, #0xae]
	ldrb r2, [r7, #0xb0]
	bl FUN_0201C418
_023041E4:
	ldrb r0, [r7, #0xae]
	cmp r0, #6
	movne r0, #0
	strbne r0, [r7, #0xb2]
_023041F4:
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x14]
	cmp r1, r0
	ldreq r1, [r7, #0x10]
	ldreq r0, [r7, #0x18]
	cmpeq r1, r0
	bne _02304224
	ldrb r0, [r7, #0x23]
	cmp r0, #0xa
	addlo r0, r0, #1
	strblo r0, [r7, #0x23]
	b _0230422C
_02304224:
	mov r0, #0
	strb r0, [r7, #0x23]
_0230422C:
	ldr r1, [r7, #0xc]
	ldr r0, _023046D4 @ =0x0001A224
	str r1, [r7, #0x14]
	ldr r2, [r7, #0x10]
	ldr r1, _023046C8 @ =0x02353538
	str r2, [r7, #0x18]
	ldr r8, [r1]
	add r1, r0, #2
	ldrsh r4, [r8, r1]
	ldr r6, [r7, #0x10]
	ldr r3, [r7, #0x1c]
	ldrb r2, [r5, #0x160]
	rsb r1, r4, r6, asr #8
	ldrsh r8, [r8, r0]
	add r1, r1, r1, lsr #31
	ldr sb, [r7, #0xc]
	ldr r0, [r5, #0x188]
	sub r3, r6, r3
	sub r0, r3, r0
	rsb r8, r8, sb, asr #8
	asr sl, r1, #1
	cmp r2, #0
	rsb sb, r4, r0, asr #8
	subeq sl, sl, #1
	bl ov29_022ECB38
	cmp r0, #0
	beq _023042B0
	ldr r0, _023046D8 @ =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	mvnne r0, #1
	moveq r0, #2
	add r8, r8, r0
_023042B0:
	ldrb r0, [r5, #0x172]
	cmp r0, #0
	bne _023042D8
	mov r0, r7
	bl ov29_022E273C
	ldrb r1, [r5, #0x170]
	mov r4, r0
	cmp r1, #0
	movne r4, #0
	b _02304310
_023042D8:
	ldrb r0, [r5, #0x173]
	cmp r0, #0
	beq _023042FC
	ldr r0, _023046D8 @ =0x0237C850
	ldr r0, [r0]
	tst r0, #4
	movne r0, #1
	mvneq r0, #0
	add r8, r8, r0
_023042FC:
	ldrb r0, [r5, #0x174]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	and r4, r0, #0xff
_02304310:
	ldr r3, _023046DC @ =0x0235280C
	add r0, sp, #0x28
	ldrh r6, [r3]
	add r2, r7, #0x2c
	mov r1, #4
	strh r6, [sp, #0x18]
	ldrh r3, [r3, #2]
	strh r3, [sp, #0x1a]
	ldr r3, [r7, #0xc]
	asr r3, r3, #8
	strh r3, [sp, #0x18]
	ldr ip, [r7, #0x10]
	ldr r6, [r7, #0x1c]
	ldr r3, [r5, #0x188]
	sub r6, ip, r6
	sub r3, r6, r3
	asr r3, r3, #8
	strh r3, [sp, #0x1a]
	bl FUN_0201D034
	ldr r1, _023046C8 @ =0x02353538
	ldr r0, [r5, #0xb0]
	ldr r2, [r1]
	add r1, sp, #0x18
	add r2, r2, #0x1a000
	ldrb r3, [r2, #0x23c]
	add r2, sp, #0x28
	bl ov29_022DDB98
	add r0, sp, #0x10
	mov r1, r7
	bl ov29_022E3A40
	cmp r4, #0
	ldrbne r0, [r5, #0x156]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	str r0, [sp]
	ldrsh r1, [r5, #4]
	ldr r0, [r5, #0xb0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ov29_022DD7D8
	mov r0, r7
	mov r1, sl
	bl ov29_022E6E80
	mov r0, r7
	bl ov29_023046E8
	cmp r4, #0
	beq _0230464C
	ldr r0, [r7, #0xb4]
	ldr r1, _023046C8 @ =0x02353538
	ldr r3, _023046E0 @ =0x0000F3FF
	ldrb r6, [r0, #0x220]
	mov r0, #0
	ldr r1, [r1]
	add r2, r3, #0xc00
	strh r3, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	strh r3, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r0, [sp, #0x24]
	add r2, r1, #0x1a000
	ldrb r2, [r2, #0x23c]
	lsl r2, r2, #0xa
	strh r2, [sp, #0x26]
	ldrb r2, [r5, #6]
	cmp r2, #0
	beq _02304458
	ldrb r2, [r5, #0xbc]
	cmp r2, #0xb
	blo _02304434
	cmp r2, #0xe
	bls _02304458
_02304434:
	ldrsh r3, [r5, #4]
	ldr r2, _023046E4 @ =0xFFFFFE5D
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #2
	movls r0, #1
_02304458:
	ldrb r2, [r5, #0xef]
	cmp r2, #1
	addeq r1, r1, #0x1a000
	ldrbeq r1, [r1, #0x244]
	cmpeq r1, #0
	moveq r0, #1
	cmp r0, #0
	beq _023044B8
	bl ov29_02338988
	cmp r0, #0
	beq _02304498
	ldr r0, _023046D8 @ =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	beq _023044B8
	b _023046C0
_02304498:
	bl ov29_022E3580
	cmp r0, #0
	bne _023044B8
	bl ov29_022E3570
	cmp r0, #0
	ldrheq r0, [sp, #0x22]
	orreq r0, r0, #0x400
	strheq r0, [sp, #0x22]
_023044B8:
	ldrh r2, [r7, #0x2e]
	add r1, sp, #0x1c
	add r0, r7, #0x2c
	orr r2, r2, #0x20
	strh r2, [r7, #0x2e]
	bl FUN_0201D110
	ldrb r0, [r5, #6]
	cmp r0, #0
	ldrbne r0, [r5, #0xd8]
	cmpne r0, #2
	moveq r0, #1
	movne r0, #0
	lsl r1, r0, #0x10
	mov r0, r5
	asr r4, r1, #0x10
	bl IsExperienceLocked
	cmp r0, #0
	bne _0230450C
	ldrb r0, [r5, #0xbc]
	cmp r0, #7
	bne _02304510
_0230450C:
	mov r4, #1
_02304510:
	strh sl, [r7, #0x64]
	strh r8, [r7, #0x48]
	strh sb, [r7, #0x4a]
	ldrb r0, [r5, #0x10b]
	cmp r0, #2
	beq _02304590
	ldrb r1, [r5, #0xc4]
	cmp r1, #6
	ldrbne r0, [r5, #0xbf]
	cmpne r0, #4
	cmpne r1, #2
	bne _02304558
	ldr r0, _023046D8 @ =0x0237C850
	ldr r0, [r0]
	and r0, r0, #2
	add r0, r8, r0
	strh r0, [r7, #0x48]
	strh sb, [r7, #0x4a]
_02304558:
	ldrb r0, [r7, #0x22]
	cmp r0, #0
	bne _02304570
	add r0, r7, #0x2c
	bl FUN_0201CF5C
	b _02304590
_02304570:
	cmp r0, #1
	bne _02304590
	ldr r0, _023046D8 @ =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	beq _02304590
	add r0, r7, #0x2c
	bl FUN_0201CF5C
_02304590:
	ldrsh r2, [r7, #0x50]
	add r1, r5, #0x100
	ldr r0, _023046D4 @ =0x0001A224
	strh r2, [r1, #0x82]
	ldrsh r8, [r7, #0x52]
	ldr r3, _023046C8 @ =0x02353538
	add r2, r0, #2
	strh r8, [r1, #0x84]
	ldrsh sb, [r1, #0x82]
	ldr r8, [r7, #0xc]
	add r8, sb, r8, asr #8
	strh r8, [r1, #0x82]
	ldrsh sb, [r1, #0x84]
	ldr r8, [r7, #0x10]
	add r8, sb, r8, asr #8
	strh r8, [r1, #0x84]
	ldr sb, [r3]
	ldrsh r8, [r1, #0x82]
	ldrsh r0, [sb, r0]
	ldrsh r3, [r1, #0x84]
	ldrsh r1, [sb, r2]
	sub r0, r8, r0
	lsl r0, r0, #0x10
	sub r1, r3, r1
	lsl r1, r1, #0x10
	asr r8, r0, #0x10
	asr sb, r1, #0x10
	bl ov29_022ECB38
	cmp r0, #0
	beq _02304628
	ldr r0, _023046D8 @ =0x0237C850
	ldr r0, [r0]
	tst r0, #1
	mvnne r0, #1
	moveq r0, #2
	add r0, r8, r0
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
_02304628:
	ldrb r0, [r7, #0x22]
	cmp r0, #0
	bne _0230464C
	str sb, [sp]
	ldrb r0, [r5, #0x160]
	mov r1, r6
	mov r2, r4
	mov r3, r8
	bl ov29_02303E5C
_0230464C:
	ldrb r0, [r5, #0xc4]
	cmp r0, #1
	cmpne r0, #6
	beq _023046C0
	ldr r0, _023046C8 @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x78b]
	cmp r0, #0
	beq _02304690
	bl ov29_0234B4E0
	cmp r0, #0
	bne _02304690
	add r0, r7, #0x2c
	bl FUN_0201C458
	add r0, r7, #0x2c
	bl FUN_0201C458
	b _023046B8
_02304690:
	ldrb r0, [r7, #0xaf]
	cmp r0, #0
	cmpne r0, #7
	bne _023046B8
	ldr r0, [r7, #0xb4]
	ldr r0, [r0, #0x110]
	cmp r0, #1
	ble _023046B8
	add r0, r7, #0x2c
	bl FUN_0201C458
_023046B8:
	add r0, r7, #0x2c
	bl FUN_0201C458
_023046C0:
	add sp, sp, #0x38
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023046C8: .4byte 0x02353538
_023046CC: .4byte 0x02352810
_023046D0: .4byte 0x00000229
_023046D4: .4byte 0x0001A224
_023046D8: .4byte 0x0237C850
_023046DC: .4byte 0x0235280C
_023046E0: .4byte 0x0000F3FF
_023046E4: .4byte 0xFFFFFE5D
	arm_func_end ov29_02303F18

	arm_func_start ov29_023046E8
ov29_023046E8: @ 0x023046E8
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0x172]
	cmp r0, #0
	bxne lr
	ldrb r0, [r1, #0x10b]
	cmp r0, #1
	ldr r0, [r1, #0x188]
	bne _02304728
	cmp r0, #0xc800
	bxge lr
	add r0, r0, #0x800
	str r0, [r1, #0x188]
	cmp r0, #0xc800
	movgt r0, #0xc800
	strgt r0, [r1, #0x188]
	bx lr
_02304728:
	subs r0, r0, #0xc00
	str r0, [r1, #0x188]
	movmi r0, #0
	strmi r0, [r1, #0x188]
	bx lr
	arm_func_end ov29_023046E8

	arm_func_start ov29_0230473C
ov29_0230473C: @ 0x0230473C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	ldr r6, _023047B4 @ =0x02353538
	mov r7, r5
_0230474C:
	ldr r0, [r6]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r4, [r0, #0xb78]
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	ldrne r2, [r4, #0xb4]
	ldrbne r0, [r2, #0x179]
	cmpne r0, #0
	beq _023047A4
	sub r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r2, #0x179]
	tst r0, #1
	bne _023047A4
	ldrb r2, [r2, #0x4c]
	mov r0, r4
	mov r1, r7
	sub r2, r2, #1
	and r2, r2, #7
	bl ov29_023049A8
_023047A4:
	add r5, r5, #1
	cmp r5, #0x14
	blt _0230474C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_023047B4: .4byte 0x02353538
	arm_func_end ov29_0230473C

	arm_func_start EntityIsValid
EntityIsValid: @ 0x023047B8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_023047DC
ov29_023047DC: @ 0x023047DC
	push {r4, r5, r6, lr}
	ldr r4, _0230482C @ =0x02353538
	mov r5, #0
_023047E8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _0230481C
	mov r0, r6
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r6
	bl ov29_02304830
_0230481C:
	add r5, r5, #1
	cmp r5, #0x14
	blt _023047E8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0230482C: .4byte 0x02353538
	arm_func_end ov29_023047DC

	arm_func_start ov29_02304830
ov29_02304830: @ 0x02304830
	push {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r2, _0230494C @ =0x02353538
	mov r5, r0
	ldr r0, [r2]
	ldr r4, [r5, #0xb4]
	add r0, r0, #0x1a000
	ldr r2, [r0, #0x22c]
	ldrb r3, [r0, #0x245]
	cmp r5, r2
	mov r2, #0
	strb r2, [r5, #0x28]
	strb r1, [r5, #0xaf]
	and r0, r1, #0xff
	strb r0, [r5, #0xae]
	ldrb r0, [r4, #0x4c]
	moveq r3, #0
	strb r0, [r5, #0xb1]
	strb r0, [r5, #0xb0]
	strb r2, [r5, #0xb3]
	ldrb r0, [r4, #0xd8]
	ldrsh r6, [r5, #0xac]
	cmp r0, #2
	beq _023048E0
	cmp r3, #0
	bne _023048E0
	ldrsh r1, [r5, #0xa8]
	add r0, r5, #0x2c
	bl FUN_0201C0E8
	bl FUN_0200224C
	ldrb r1, [r5, #0xaa]
	and r0, r0, #3
	lsl r3, r6, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r5, #0xae]
	ldrb r2, [r5, #0xb0]
	add r0, r5, #0x2c
	asr r3, r3, #0x10
	bl FUN_0201C418
	b _0230492C
_023048E0:
	ldr r0, _02304950 @ =0x00000229
	bl GetSpriteIndex
	mov r1, r0
	add r0, r5, #0x2c
	bl FUN_0201C0E8
	bl FUN_0200224C
	lsl r1, r6, #0x10
	asr r3, r1, #0x10
	ldrb r2, [r5, #0xaa]
	and r1, r0, #3
	mov r0, #0
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0x2c
	ldrb r1, [r5, #0xae]
	ldrb r2, [r5, #0xb0]
	bl FUN_0201C418
_0230492C:
	mov r0, #0
	strb r0, [r5, #0xb2]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _02304944
	bl ov29_022E8104
_02304944:
	add sp, sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0230494C: .4byte 0x02353538
_02304950: .4byte 0x00000229
	arm_func_end ov29_02304830

	arm_func_start ov29_02304954
ov29_02304954: @ 0x02304954
	push {r4, r5, r6, lr}
	ldr r4, _023049A4 @ =0x02353538
	mov r5, #0
_02304960:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _02304994
	mov r0, r6
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r6
	bl ov29_02304830
_02304994:
	add r5, r5, #1
	cmp r5, #0x14
	blt _02304960
	pop {r4, r5, r6, pc}
	.align 2, 0
_023049A4: .4byte 0x02353538
	arm_func_end ov29_02304954

	arm_func_start ov29_023049A8
ov29_023049A8: @ 0x023049A8
	ldr r3, [r0]
	cmp r3, #1
	bxne lr
	mov r3, #0
	strb r3, [r0, #0x28]
	strb r1, [r0, #0xae]
	cmp r2, #0
	bxlt lr
	cmp r2, #8
	strblt r2, [r0, #0xb0]
	bx lr
	arm_func_end ov29_023049A8

	arm_func_start ov29_023049D4
ov29_023049D4: @ 0x023049D4
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #1
	popne {r3, pc}
	ldrb r3, [r0, #0xaf]
	cmp r3, r1
	ldrbeq r3, [r0, #0xb1]
	cmpeq r3, r2
	popeq {r3, pc}
	bl ov29_023049A8
	pop {r3, pc}
	arm_func_end ov29_023049D4

	arm_func_start ov29_02304A00
ov29_02304A00: @ 0x02304A00
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5]
	mov r4, r1
	cmp r2, #1
	popne {r3, r4, r5, pc}
	bl GetSleepAnimationId
	strb r0, [r5, #0xae]
	mov r0, #0
	strb r0, [r5, #0x28]
	cmp r4, #0
	poplt {r3, r4, r5, pc}
	cmp r4, #8
	ldrlt r0, [r5, #0xb4]
	andlt r1, r4, #7
	strblt r1, [r0, #0x4c]
	strblt r1, [r5, #0xb0]
	pop {r3, r4, r5, pc}
	arm_func_end ov29_02304A00

	arm_func_start ov29_02304A48
ov29_02304A48: @ 0x02304A48
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5]
	mov r4, r1
	cmp r2, #1
	popne {r3, r4, r5, pc}
	bl GetSleepAnimationId
	strb r0, [r5, #0xae]
	mov r0, #0
	strb r0, [r5, #0x28]
	cmp r4, #0
	poplt {r3, r4, r5, pc}
	cmp r4, #8
	strblt r4, [r5, #0xb0]
	pop {r3, r4, r5, pc}
	arm_func_end ov29_02304A48

	arm_func_start ov29_02304A84
ov29_02304A84: @ 0x02304A84
	ldr r2, [r0]
	cmp r2, #1
	bxne lr
	mov r2, #6
	strb r2, [r0, #0xae]
	mov r2, #0
	strb r2, [r0, #0x28]
	cmp r1, #0
	bxlt lr
	cmp r1, #8
	strblt r1, [r0, #0xb0]
	bx lr
	arm_func_end ov29_02304A84

	arm_func_start GetSleepAnimationId
GetSleepAnimationId: @ 0x02304AB4
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	bne _02304AE8
	ldrsh r0, [r1, #4]
	cmp r0, #0xb9
	ldrbeq r0, [r1, #0xbe]
	cmpeq r0, #0x7f
	moveq r0, #7
	movne r0, #5
	bx lr
_02304AE8:
	ldrb r0, [r1, #0xd2]
	cmp r0, #1
	moveq r0, #0xb
	movne r0, #7
	bx lr
	arm_func_end GetSleepAnimationId

	arm_func_start ov29_02304AFC
ov29_02304AFC: @ 0x02304AFC
	ldr r2, [r0, #0xb4]
	and r1, r1, #7
	ldr ip, _02304B10 @ =ov29_02304A48
	strb r1, [r2, #0x4c]
	bx ip
	.align 2, 0
_02304B10: .4byte ov29_02304A48
	arm_func_end ov29_02304AFC

	arm_func_start ov29_02304B14
ov29_02304B14: @ 0x02304B14
	push {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	ldr r6, [r7, #0xb4]
	mov r5, #0
	mov r4, #0x21
	b _02304B58
_02304B38:
	mov r0, r4
	bl AdvanceFrame
	ldrsh r0, [r6, #4]
	ldrb r1, [r7, #0xaf]
	bl FUN_02053038
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
_02304B58:
	cmp r5, #0x64
	blt _02304B38
	pop {r3, r4, r5, r6, r7, pc}
	arm_func_end ov29_02304B14

	arm_func_start ov29_02304B64
ov29_02304B64: @ 0x02304B64
	push {r4, r5, r6, lr}
	ldr r4, _02304BA8 @ =0x02353538
	mov r5, #0
_02304B70:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb78]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _02304B98
	mov r0, r6
	bl ov29_02304BAC
_02304B98:
	add r5, r5, #1
	cmp r5, #0x14
	blt _02304B70
	pop {r4, r5, r6, pc}
	.align 2, 0
_02304BA8: .4byte 0x02353538
	arm_func_end ov29_02304B64

	arm_func_start ov29_02304BAC
ov29_02304BAC: @ 0x02304BAC
	push {r4, r5, r6, lr}
	mov r4, r0
	bl GetTileAtEntity
	ldrh r1, [r0]
	ldr r5, [r4, #0xb4]
	ldrsh r0, [r5, #4]
	and r6, r1, #3
	bl FUN_0205283C
	mov r4, r0
	cmp r6, #3
	moveq r0, #6
	popeq {r4, r5, r6, pc}
	cmp r6, #1
	bne _02304BF8
	bl ov29_02337E94
	cmp r0, #0
	ldrne r0, _02304C30 @ =0x02352808
	ldrbne r4, [r0, r4]
	b _02304C24
_02304BF8:
	cmp r6, #2
	bne _02304C24
	ldr r0, _02304C34 @ =0x02353538
	ldr r1, _02304C38 @ =0x020A1AE8
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd4]
	ldrb r0, [r1, r0]
	cmp r0, #1
	ldrne r0, _02304C30 @ =0x02352808
	ldrbne r4, [r0, r4]
_02304C24:
	mov r0, r4
	strb r4, [r5, #0x220]
	pop {r4, r5, r6, pc}
	.align 2, 0
_02304C30: .4byte 0x02352808
_02304C34: .4byte 0x02353538
_02304C38: .4byte 0x020A1AE8
	arm_func_end ov29_02304BAC

	arm_func_start ov29_02304C3C
ov29_02304C3C: @ 0x02304C3C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	mov sl, r1
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r4]
	cmp r0, #1
	popne {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [r4, #0xb4]
	mov r0, r4
	ldrb r7, [r1, #0x4c]
	mov r8, r7
	bl ov29_022E272C
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov sb, #0
	mov r6, #2
	mov r5, #0x43
	b _02304CC0
_02304C8C:
	mov r0, r4
	mov r1, r8
	bl ov29_02304A48
	mov r0, r6
	mov r1, r5
	bl ov29_022EA370
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, sb, #1
	lsl r0, r0, #0x10
	and r8, r1, #7
	asr sb, r0, #0x10
_02304CC0:
	cmp sb, sl, lsl #3
	blt _02304C8C
	mov r6, #2
	mov r5, #0x43
	b _02304CFC
_02304CD4:
	mov r0, r4
	mov r1, r8
	bl ov29_02304A48
	mov r0, r6
	mov r1, r5
	bl ov29_022EA370
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	and r8, r0, #7
_02304CFC:
	cmp r8, r7
	bne _02304CD4
	mov r0, r4
	mov r1, r8
	bl ov29_02304A48
	mov r0, #2
	mov r1, #0x43
	bl ov29_022EA370
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02304C3C

	arm_func_start ov29_02304D20
ov29_02304D20: @ 0x02304D20
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, r0
	ldr sb, [r6, #0xb4]
	mov r5, r1
	add r0, sb, #0x200
	ldrsh r0, [r0, #0xc]
	mov r4, r2
	cmp r0, #4
	movge r0, #0
	strhge r0, [sb, #0x4a]
	popge {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_0204AEE0
	cmp r0, #0
	movne r1, #2
	ldr r2, _02304FD4 @ =0x0237C9CC
	moveq r1, #1
	str r1, [r2]
	add r0, sb, #0x200
	ldrsh r3, [r0, #0xc]
	mov r1, #0x1c
	add r0, sb, #0x19c
	smulbb sl, r3, r1
	add r7, r0, sl
	mov r1, #0
	strb r1, [r7, #0x1a]
	str r5, [r7, #0xc]
	ldrsh r8, [r6, #4]
	lsl r3, r5, #2
	ldr r1, _02304FD8 @ =0x0235173C
	strh r8, [r0, sl]
	ldrsh r5, [r6, #6]
	ldr r0, _02304FDC @ =0x0235173E
	ldrsh r1, [r1, r3]
	strh r5, [r7, #2]
	ldrsh r5, [r4]
	ldrsh r0, [r0, r3]
	str r5, [r7, #4]
	ldrsh r3, [r4, #2]
	str r3, [r7, #8]
	ldr r3, [r2]
	mul r1, r3, r1
	str r1, [r7, #0x10]
	ldr r1, [r2]
	mul r0, r1, r0
	str r0, [r7, #0x14]
	bl FUN_0204AEE0
	cmp r0, #0
	movne r1, #2
	ldr r5, _02304FD4 @ =0x0237C9CC
	moveq r1, #1
	add r0, sb, #0x200
	str r1, [r5]
	ldrsh r1, [r0, #0xc]
	add r1, r1, #1
	strh r1, [r0, #0xc]
	ldrsh r0, [r0, #0xc]
	cmp r0, #2
	bne _02304E6C
	ldr r1, [r5]
	mov r0, #0x18
	lsl r1, r1, #1
	bl FUN_0208FEA4
	add r1, sb, #0x100
	strh r0, [r1, #0xb4]
	ldr r0, [sb, #0x1ac]
	mov r1, r5
	lsl r0, r0, #1
	str r0, [sb, #0x1ac]
	ldr r2, [sb, #0x1b0]
	mov r0, #0x18
	lsl r2, r2, #1
	str r2, [sb, #0x1b0]
	ldr r1, [r1]
	lsl r1, r1, #1
	bl FUN_0208FEA4
	strh r0, [r7, #0x18]
	ldr r0, [r7, #0x10]
	lsl r0, r0, #1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsl r0, r0, #1
	str r0, [r7, #0x14]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02304E6C:
	cmp r0, #3
	bne _02304F14
	mov r6, #0
	mov r4, #0x18
	mov sl, #0x1c
_02304E80:
	mla r8, r6, sl, sb
	ldr r1, [r5]
	mov r0, r4
	add r1, r1, r1, lsl #1
	bl FUN_0208FEA4
	add r1, r8, #0x100
	strh r0, [r1, #0xb4]
	ldr r0, [r8, #0x1ac]
	add r6, r6, #1
	add r0, r0, r0, lsl #1
	str r0, [r8, #0x1ac]
	ldr r0, [r8, #0x1b0]
	cmp r6, #2
	add r0, r0, r0, lsl #1
	str r0, [r8, #0x1b0]
	ldr r0, [r8, #0x1ac]
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	str r0, [r8, #0x1ac]
	ldr r0, [r8, #0x1b0]
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	str r0, [r8, #0x1b0]
	blt _02304E80
	ldr r1, _02304FD4 @ =0x0237C9CC
	mov r0, #0x18
	ldr r1, [r1]
	add r1, r1, r1, lsl #1
	bl FUN_0208FEA4
	strh r0, [r7, #0x18]
	ldr r0, [r7, #0x10]
	add r0, r0, r0, lsl #1
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	add r0, r0, r0, lsl #1
	str r0, [r7, #0x14]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02304F14:
	cmp r0, #4
	bne _02304FC0
	mov r8, #0
	mov r6, #0x18
	mov fp, #3
	mov r4, #0x1c
_02304F2C:
	mla sl, r8, r4, sb
	ldr r1, [r5]
	mov r0, r6
	lsl r1, r1, #2
	bl FUN_0208FEA4
	add r1, sl, #0x100
	strh r0, [r1, #0xb4]
	ldr r0, [sl, #0x1ac]
	mov r1, fp
	lsl r0, r0, #2
	str r0, [sl, #0x1ac]
	ldr r0, [sl, #0x1b0]
	lsl r0, r0, #2
	str r0, [sl, #0x1b0]
	ldr r0, [sl, #0x1ac]
	bl FUN_0208FEA4
	str r0, [sl, #0x1ac]
	ldr r0, [sl, #0x1b0]
	mov r1, #3
	bl FUN_0208FEA4
	add r8, r8, #1
	str r0, [sl, #0x1b0]
	cmp r8, #3
	blt _02304F2C
	ldr r1, _02304FD4 @ =0x0237C9CC
	mov r0, #0x18
	ldr r1, [r1]
	lsl r1, r1, #2
	bl FUN_0208FEA4
	strh r0, [r7, #0x18]
	ldr r0, [r7, #0x10]
	lsl r0, r0, #2
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsl r0, r0, #2
	str r0, [r7, #0x14]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02304FC0:
	ldr r1, [r5]
	mov r0, #0x18
	bl FUN_0208FEA4
	strh r0, [r7, #0x18]
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02304FD4: .4byte 0x0237C9CC
_02304FD8: .4byte 0x0235173C
_02304FDC: .4byte 0x0235173E
	arm_func_end ov29_02304D20

	arm_func_start DisplayActions
DisplayActions: @ 0x02304FE0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r1, _02305580 @ =0x0237C9C1
	mov r6, #0
	mov sl, r0
	mov r7, r6
	strb r6, [r1]
	bl FUN_0204AEE0
	cmp r0, #0
	mov r5, #0
	movne r1, #2
	ldr r0, _02305584 @ =0x0237C9CC
	moveq r1, #1
	str r1, [r0]
	mov r4, r5
	mov fp, r5
_02305020:
	ldr r0, _02305588 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr r8, [r0, #0xb78]
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _02305160
	ldr sb, [r8, #0xb4]
	add r0, sb, #0x200
	ldrsh r0, [r0, #0xc]
	cmp r0, #0
	bne _023050EC
	ldrb r0, [sb, #0x151]
	cmp r0, #0
	beq _02305160
	strb r4, [sb, #0x151]
	add r0, sb, #0x100
	ldrsh r1, [r0, #0x7e]
	cmp r1, #0
	ldrsheq r0, [r0, #0x80]
	cmpeq r0, #0
	beq _02305160
	ldrsh r0, [r8, #4]
	cmp r1, r0
	addeq r0, sb, #0x100
	ldrsheq r1, [r0, #0x80]
	ldrsheq r0, [r8, #6]
	cmpeq r1, r0
	beq _02305160
	mov r0, r8
	mov r1, #1
	bl ov29_02300818
	cmp r0, #0
	beq _023050C0
	mov r0, r8
	bl ov29_02300CB0
	cmp r0, #0
	bne _02305160
_023050C0:
	add r0, r8, #4
	add r1, sb, #0x7e
	add r1, r1, #0x100
	bl GetDirectionTowardsPosition
	mov r1, r0
	ldrb r0, [sb, #0x4c]
	cmp r1, r0
	beq _02305160
	mov r0, r8
	bl ov29_02304A48
	b _02305160
_023050EC:
	ldrh r2, [sb]
	mov r0, r8
	add r1, sp, #0xc
	orr r2, r2, #0x2000
	strh r2, [sb]
	ldr r3, [sb, #0x1a0]
	mov r2, #0x18
	mul r2, r3, r2
	add r2, r2, #0xc
	lsl r2, r2, #8
	str r2, [sp, #0xc]
	ldr r3, [sb, #0x1a4]
	mov r2, #0x18
	mul r2, r3, r2
	add r2, r2, #0x10
	lsl r2, r2, #8
	str r2, [sp, #0x10]
	bl ov29_022E1A40
	ldr r2, [sb, #0x1a8]
	mov r0, r8
	mov r1, #0
	bl ov29_023049D4
	add r0, sb, #0x200
	strh fp, [r0, #0xe]
	mov r0, r8
	mov r6, #1
	bl ov29_022E272C
	cmp r0, #0
	movne r7, r6
_02305160:
	add r5, r5, #1
	cmp r5, #0x14
	blt _02305020
	cmp r6, #0
	moveq r0, #0
	beq _02305578
	ldr r0, _02305588 @ =0x02353538
	ldr r1, [r0]
	ldr r6, [r1, #0xc4]
	str sl, [r1, #0xc4]
	ldr r0, [r0]
	ldrb r0, [r0, #0x78b]
	cmp r0, #0
	bne _0230532C
	cmp r7, #0
	beq _0230532C
	mov r0, #0x35
	bl ov29_0234BA18
	mov r5, #0
	b _02305314
_023051B0:
	mov r0, #7
	bl AdvanceFrame
	mov sl, #0
	ldr r4, _02305588 @ =0x02353538
	mov fp, sl
_023051C4:
	ldr r0, [r4]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _02305304
	ldr sb, [r7, #0xb4]
	add r0, sb, #0x200
	ldrsh r2, [r0, #0xe]
	ldrsh r1, [r0, #0xc]
	add r3, sb, #0x19c
	mov r0, #0x1c
	smlabb r8, r2, r0, r3
	cmp r1, #0
	beq _02305304
	mov r0, r7
	ldr r1, [r8, #0x10]
	ldr r2, [r8, #0x14]
	bl ov29_022E1A90
	ldrb r0, [sb, #7]
	cmp r0, #0
	beq _02305258
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xdc]
	cmp r1, #0
	blt _02305258
	ldr r1, [r7, #0xc]
	asr r1, r1, #8
	strh r1, [r0, #0xdc]
	ldr r1, [r7, #0x10]
	ldr r0, [r4]
	asr r1, r1, #8
	add r0, r0, #0x100
	strh r1, [r0, #0xde]
_02305258:
	ldrsh r0, [r8, #0x18]
	sub r0, r0, #1
	strh r0, [r8, #0x18]
	ldrsh r0, [r8, #0x18]
	cmp r0, #0
	bne _02305304
	add r2, sb, #0x200
	ldrsh r0, [r2, #0xe]
	add r0, r0, #1
	strh r0, [r2, #0xe]
	ldrsh r1, [r2, #0xe]
	ldrsh r0, [r2, #0xc]
	cmp r1, r0
	strheq fp, [r2, #0xc]
	beq _02305304
	mov r0, #0x1c
	smlabb r0, r1, r0, sb
	ldr r3, [r0, #0x1a0]
	mov r1, #0x18
	mul r1, r3, r1
	add r1, r1, #0xc
	lsl r1, r1, #8
	str r1, [sp, #4]
	ldrsh r3, [r2, #0xe]
	mov r2, #0x1c
	mov r0, r7
	smlabb r2, r3, r2, sb
	ldr r3, [r2, #0x1a4]
	mov r2, #0x18
	mul r2, r3, r2
	add r2, r2, #0x10
	lsl r2, r2, #8
	add r1, sp, #4
	str r2, [sp, #8]
	bl ov29_022E1A40
	add r2, sb, #0x200
	ldrsh r3, [r2, #0xe]
	mov r2, #0x1c
	mov r0, r7
	smlabb r2, r3, r2, sb
	ldr r2, [r2, #0x1a8]
	mov r1, #0
	bl ov29_023049D4
_02305304:
	add sl, sl, #1
	cmp sl, #0x14
	blt _023051C4
	add r5, r5, #1
_02305314:
	ldr r1, _02305584 @ =0x0237C9CC
	mov r0, #0x18
	ldr r1, [r1]
	bl FUN_0208FEA4
	cmp r5, r0
	blt _023051B0
_0230532C:
	mov r7, #0
	ldr r8, _02305588 @ =0x02353538
	mov r4, r7
_02305338:
	ldr r0, [r8]
	add r0, r0, r7, lsl #2
	add r0, r0, #0x12000
	ldr r5, [r0, #0xb78]
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	beq _0230537C
	ldr r1, [r5, #0xb4]
	add r0, r1, #0x200
	strh r4, [r0, #0xc]
	ldrh r0, [r1]
	tst r0, #0x2000
	beq _0230537C
	mov r0, r5
	mov r1, r4
	bl ov29_022E1A40
_0230537C:
	add r7, r7, #1
	cmp r7, #0x14
	blt _02305338
	bl ov29_02307DD0
	mov r8, #0
_02305390:
	mov sl, #0
	mov fp, sl
	mov r7, #1
	ldr r5, _02305588 @ =0x02353538
	ldr r4, _02305580 @ =0x0237C9C1
	b _02305530
_023053A8:
	ldr r0, [r5]
	add r0, r0, sl, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb78]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	ldr r0, [sb, #0xb4]
	cmp r8, #0
	ldrb r1, [r0, #7]
	bne _023053F0
	cmp r1, #0
	beq _0230552C
	b _023053F8
_023053F0:
	cmp r1, #0
	bne _0230552C
_023053F8:
	ldrh r3, [sb, #4]
	ldrh r2, [sb, #6]
	ldrh r1, [r0]
	strh r3, [sp]
	strh r2, [sp, #2]
	tst r1, #0x2000
	bne _02305430
	mov r0, sb
	bl ov29_0234AD10
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _0230552C
	b _023054E4
_02305430:
	bic r1, r1, #0x2000
	strh r1, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0230545C
	add r0, sb, #4
	bl ov29_02337A3C
	mov r0, fp
	bl ov29_022F62CC
	bl ov29_022F3634
	b _0230547C
_0230545C:
	mov r0, sb
	bl ov29_0234AD10
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _0230552C
	mov r0, sb
	bl ov29_02305694
_0230547C:
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	mov r0, #0
	bl TryForcedLoss
	mov r0, sb
	bl ov29_0230FC24
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	mov r0, sb
	bl EnemyEvolution
	bl ov29_02346888
	ldr r1, [r5]
	mov r0, sb
	add r1, r1, #0x4000
	ldrb r1, [r1, #0xc4]
	bl ov29_02305814
_023054E4:
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _0230552C
	bl IsFloorOver
	cmp r0, #0
	bne _02305538
	ldrsh r1, [sp]
	ldrsh r0, [sb, #4]
	cmp r1, r0
	ldrsheq r1, [sp, #2]
	ldrsheq r0, [sb, #6]
	cmpeq r1, r0
	mov r0, sb
	strbne r7, [r4]
	bl ov29_022F9C74
	mov r0, sb
	bl ov29_02321104
_0230552C:
	add sl, sl, #1
_02305530:
	cmp sl, #0x14
	blt _023053A8
_02305538:
	add r8, r8, #1
	cmp r8, #2
	blt _02305390
	bl ov29_022EF9C8
	bl IsFloorOver
	cmp r0, #0
	ldrne r1, _02305588 @ =0x02353538
	movne r0, #1
	ldrne r1, [r1]
	strne r6, [r1, #0xc4]
	bne _02305578
	bl ov29_02348F20
	ldr r1, _02305588 @ =0x02353538
	mov r0, #1
	ldr r1, [r1]
	str r6, [r1, #0xc4]
_02305578:
	add sp, sp, #0x14
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02305580: .4byte 0x0237C9C1
_02305584: .4byte 0x0237C9CC
_02305588: .4byte 0x02353538
	arm_func_end DisplayActions

	arm_func_start EntityIsValid
EntityIsValid: @ 0x0230558C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_023055B0
ov29_023055B0: @ 0x023055B0
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, #0
	mov r5, #1
	ldr r4, _02305690 @ =0x02353538
	b _02305684
_023055C4:
	ldr r0, [r4]
	add r0, r0, r6, lsl #2
	add r0, r0, #0x12000
	ldr r7, [r0, #0xb78]
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _02305680
	ldr r8, [r7, #0xb4]
	ldrb r0, [r8, #7]
	cmp r0, #0
	bne _02305680
	mov r0, r8
	bl ov29_022FBE04
	cmp r0, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r8, #0x100
	ldrsh r1, [r0, #0x7e]
	cmp r1, #0
	ldrsheq r0, [r0, #0x80]
	cmpeq r0, #0
	beq _02305680
	ldrsh r0, [r7, #4]
	cmp r1, r0
	addeq r0, r8, #0x100
	ldrsheq r1, [r0, #0x80]
	ldrsheq r0, [r7, #6]
	cmpeq r1, r0
	beq _02305680
	mov r0, r7
	mov r1, r5
	bl ov29_02300818
	cmp r0, #0
	bne _02305680
	add r1, r8, #0x7e
	add r0, r7, #4
	add r1, r1, #0x100
	bl GetDirectionTowardsPosition
	mov sb, r0
	and r1, sb, #7
	mov r0, r7
	strb r1, [r8, #0x4c]
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	mov r2, sb
	bl ov29_023049A8
_02305680:
	add r6, r6, #1
_02305684:
	cmp r6, #0x14
	blt _023055C4
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02305690: .4byte 0x02353538
	arm_func_end ov29_023055B0

	arm_func_start ov29_02305694
ov29_02305694: @ 0x02305694
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r8, [sb, #0xb4]
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	bl GetTileAtEntity
	mov r4, r0
	mov r0, sb
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	ldrbne r0, [r8, #0xef]
	cmpne r0, #3
	beq _02305708
	mov r0, sb
	mov r1, #0x6f
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	bne _023056F8
	mov r0, sb
	mov r1, #0x10
	bl HasHeldItem
_023056F8:
	cmp r0, #0
	bne _02305708
	add r0, sb, #4
	bl ov29_02337D68
_02305708:
	ldr r4, [r4, #0x10]
	cmp r4, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r4]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_02305724: @ jump table
	pop {r3, r4, r5, r6, r7, r8, sb, pc} @ case 0
	pop {r3, r4, r5, r6, r7, r8, sb, pc} @ case 1
	b _02305740 @ case 2
	b _02305808 @ case 3
	pop {r3, r4, r5, r6, r7, r8, sb, pc} @ case 4
	pop {r3, r4, r5, r6, r7, r8, sb, pc} @ case 5
	pop {r3, r4, r5, r6, r7, r8, sb, pc} @ case 6
_02305740:
	mov r0, r4
	bl ov29_022E1608
	ldrb r1, [r8, #6]
	mov r6, #0
	mov r5, r0
	mov r7, r6
	cmp r1, #0
	bne _02305790
	mov r0, sb
	mov r1, #0x13
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _02305790
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	bne _02305790
	mov r0, #1
	strb r0, [r4, #0x20]
	bl ov29_02336F4C
	mov r7, #1
_02305790:
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _023057B8
	ldrb r0, [r4, #0x20]
	cmp r0, #0
	beq _023057E0
	ldrb r0, [r8, #6]
	cmp r0, #0
	moveq r6, #1
	b _023057E0
_023057B8:
	cmp r0, #1
	bne _023057D0
	ldrb r0, [r8, #6]
	cmp r0, #0
	movne r6, #1
	b _023057E0
_023057D0:
	cmp r0, #2
	ldrbeq r0, [r8, #6]
	cmpeq r0, #0
	moveq r6, #1
_023057E0:
	cmp r6, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r7, #0
	popne {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	add r1, sb, #4
	mov r2, #0
	mov r3, #1
	bl ov29_022EDFA0
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_02305808:
	mov r0, sb
	bl ov29_0230F164
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov29_02305694

	arm_func_start ov29_02305814
ov29_02305814: @ 0x02305814
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	popne {r3, r4, r5, pc}
	bl IsFloorOver
	cmp r0, #0
	ldreq r0, _023058BC @ =0x02353538
	ldreq r0, [r0]
	ldrbeq r0, [r0, #0x793]
	cmpeq r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x40
	popeq {r3, r4, r5, pc}
	bl GetLeader
	ldr r1, _023058C0 @ =0x00000C82
	bl LogMessageByIdWithPopupCheckUser
	ldr r1, _023058BC @ =0x02353538
	mov r0, r5
	ldr r2, [r1]
	mov r3, #1
	mov r1, r4
	strb r3, [r2, #0x794]
	bl ov29_02307F4C
	mov r0, #0
	bl ov29_022E3A58
	add r0, r5, #4
	bl ov29_022E2CA0
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0x78
	mov r1, #0x39
	bl ov29_022EA370
	pop {r3, r4, r5, pc}
	.align 2, 0
_023058BC: .4byte 0x02353538
_023058C0: .4byte 0x00000C82
	arm_func_end ov29_02305814

	arm_func_start ov29_023058C4
ov29_023058C4: @ 0x023058C4
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, #0
	mov sb, r1
	mov sl, r0
	mov r0, sb
	mov r8, r2
	mov r7, r3
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	mov r1, r4
	ldr r6, [sb, #0xb4]
	bl ov29_02300634
	cmp r0, #0
	beq _02305AD8
	mov r0, sb
	mov r4, #1
	bl ov29_023004B0
	cmp r0, #0
	beq _0230593C
	mov r2, r5
	mov fp, r4
	mov r0, sl
	mov r1, sb
	mov r3, r2
	str fp, [sp]
	bl ov29_02305FDC
_0230593C:
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	moveq r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	bl ov29_023004E4
	cmp r0, #0
	beq _0230596C
	mov r0, sl
	mov r1, sb
	bl ov29_023061A8
_0230596C:
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	mov r0, sb
	beq _0230599C
	bl ov29_02300500
	cmp r0, #0
	beq _023059C0
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl EndFrozenClassStatus
	b _023059C0
_0230599C:
	bl ov29_02300500
	cmp r0, #0
	ldrbne r0, [r6, #0xc4]
	cmpne r0, #3
	beq _023059C0
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl EndFrozenClassStatus
_023059C0:
	mov r0, sb
	bl ov29_02300520
	cmp r0, #0
	beq _023059DC
	mov r0, sl
	mov r1, sb
	bl EndCringeClassStatus
_023059DC:
	mov r0, sb
	bl ov29_0230053C
	cmp r0, #0
	beq _02305A00
	mov r0, sl
	mov r1, sb
	mov r2, #0
	mov r3, #1
	bl ov29_02306728
_02305A00:
	mov r0, sb
	bl ov29_02300588
	cmp r0, #0
	beq _02305A1C
	mov r0, sl
	mov r1, sb
	bl ov29_023068C4
_02305A1C:
	mov r0, sb
	bl ov29_023005A4
	cmp r0, #0
	beq _02305A38
	mov r0, sl
	mov r1, sb
	bl ov29_02306950
_02305A38:
	mov r0, sb
	mov r1, #0
	bl ov29_023005C0
	cmp r0, #0
	beq _02305A58
	mov r0, sl
	mov r1, sb
	bl ov29_02306B28
_02305A58:
	mov r0, sb
	bl ov29_023005FC
	cmp r0, #0
	beq _02305A74
	mov r0, sl
	mov r1, sb
	bl ov29_02306BF8
_02305A74:
	mov r0, sb
	bl ov29_02300618
	cmp r0, #0
	beq _02305A90
	mov r0, sl
	mov r1, sb
	bl ov29_02306C64
_02305A90:
	ldrb r0, [r6, #0x106]
	cmp r0, #0
	beq _02305AB4
	ldr r2, _02305BF0 @ =0x00000C83
	mov r3, #0
	mov r0, sl
	mov r1, sb
	strb r3, [r6, #0x106]
	bl LogMessageByIdWithPopupCheckUserTarget
_02305AB4:
	ldrb r0, [r6, #0xfe]
	cmp r0, #0
	beq _02305AD8
	ldr r2, _02305BF4 @ =0x00000C84
	mov r3, #0
	mov r0, sl
	mov r1, sb
	strb r3, [r6, #0xfe]
	bl LogMessageByIdWithPopupCheckUserTarget
_02305AD8:
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r2, #0
	mov fp, r0
	mov r1, r2
_02305AEC:
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #0x119]
	cmp r2, #5
	blt _02305AEC
	mov r0, sb
	bl CalcSpeedStageWrapper
	cmp fp, r0
	beq _02305B40
	mov r0, #0
	mov r1, sb
	mov r2, r0
	mov r4, #1
	bl SubstitutePlaceholderStringTags
	ldr r1, [r6, #0x110]
	ldr r0, _02305BF8 @ =0x02353318
	lsl r1, r1, #1
	ldrh r2, [r0, r1]
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02305B40:
	mov fp, #0
	mov r1, #1
	add r2, r6, #0x124
	mov r0, fp
	mov ip, r1
_02305B54:
	ldrb r6, [r2, fp, lsl #3]
	add r3, r2, fp, lsl #3
	tst r6, #1
	movne r6, r1
	moveq r6, r0
	tst r6, #0xff
	beq _02305B88
	ldrh r6, [r3, #2]
	tst r6, #1
	bicne r6, r6, #1
	movne r4, ip
	movne r5, ip
	strhne r6, [r3, #2]
_02305B88:
	add fp, fp, #1
	cmp fp, #4
	blt _02305B54
	cmp r4, #0
	beq _02305BC8
	cmp r8, #0
	beq _02305BAC
	mov r0, sb
	bl ov29_022E543C
_02305BAC:
	cmp r5, #0
	beq _02305BE0
	ldr r2, _02305BFC @ =0x00000C85
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02305BE0
_02305BC8:
	cmp r7, #0
	bne _02305BE0
	ldr r2, _02305C00 @ =0x00000C86
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02305BE0:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02305BF0: .4byte 0x00000C83
_02305BF4: .4byte 0x00000C84
_02305BF8: .4byte 0x02353318
_02305BFC: .4byte 0x00000C85
_02305C00: .4byte 0x00000C86
	arm_func_end ov29_023058C4

	arm_func_start EntityIsValid
EntityIsValid: @ 0x02305C04
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_02305C28
ov29_02305C28: @ 0x02305C28
	push {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl ov29_023058C4
	pop {r3, pc}
	arm_func_end ov29_02305C28

	arm_func_start ov29_02305C3C
ov29_02305C3C: @ 0x02305C3C
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xb8
	mov sb, r0
	mov r8, r1
	bl EntityIsValid
	cmp r0, #0
	beq _02305F4C
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _02305F4C
	mov r5, #0
	mov r0, sb
	mov r1, r5
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl ov29_02300634
	cmp r0, #0
	beq _02305D28
	mov r0, sb
	mov r1, r8
	bl ov29_02306DCC
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02306F00
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307078
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307198
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_0230737C
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_023076C0
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_023077FC
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_023078EC
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307A2C
	orr r5, r5, r0
	mov r0, sb
	mov r1, r8
	bl ov29_02307B0C
	orr r5, r5, r0
_02305D28:
	ldrb r0, [r6, #0x106]
	cmp r0, #0
	beq _02305D68
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_0231662C
	cmp r0, #0
	ldrbne r1, [r6, #0x106]
	orrne r0, r5, #0x11
	andne r5, r0, #0xff
	orreq r0, r5, #1
	andeq r5, r0, #0xff
	strbne r1, [r7, #0x106]
	mov r0, #0
	strb r0, [r6, #0x106]
_02305D68:
	ldrb r0, [r6, #0xfe]
	cmp r0, #0
	beq _02305DAC
	mov r0, sb
	mov r1, r8
	mov r2, #0
	mov r3, #1
	bl ov29_023174C8
	cmp r0, #0
	ldrbne r1, [r6, #0xfe]
	orrne r0, r5, #0x11
	andne r5, r0, #0xff
	orreq r0, r5, #1
	andeq r5, r0, #0xff
	strbne r1, [r7, #0xfe]
	mov r0, #0
	strb r0, [r6, #0xfe]
_02305DAC:
	mov r0, sb
	mov r1, r8
	mov r2, #0
	bl ov29_02301940
	cmp r0, #0
	bne _02305E08
	mov r0, sb
	mov r1, r8
	mov r2, #0
	bl ov29_02302430
	cmp r0, #0
	bne _02305E08
	mov r2, #0
_02305DE0:
	add r0, r6, r2
	ldrb r0, [r0, #0x119]
	add r1, r7, r2
	add r2, r2, #1
	strb r0, [r1, #0x119]
	cmp r0, #0
	orrne r0, r5, #0x11
	andne r5, r0, #0xff
	cmp r2, #5
	blt _02305DE0
_02305E08:
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r2, #0
	mov r4, r0
	mov r1, r2
_02305E1C:
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #0x119]
	cmp r2, #5
	blt _02305E1C
	mov r0, sb
	bl CalcSpeedStageWrapper
	cmp r4, r0
	orrne r0, r5, #1
	andne r5, r0, #0xff
	mov r0, #0
	add r6, r6, #0x124
	mov r3, r0
	mov r4, #1
_02305E54:
	ldrb r1, [r6, r0, lsl #3]
	add ip, r6, r0, lsl #3
	tst r1, #1
	movne r1, r4
	moveq r1, r3
	tst r1, #0xff
	beq _02305E88
	ldrh r1, [ip, #2]
	tst r1, #1
	orrne r2, r5, #1
	bicne r1, r1, #1
	strhne r1, [ip, #2]
	andne r5, r2, #0xff
_02305E88:
	add r0, r0, #1
	cmp r0, #4
	blt _02305E54
	mov r0, #0
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xd8]
	mov r2, #0
	cmp r0, #2
	mov r0, #1
	bne _02305ED0
	mov r1, r8
	strb r2, [r7, #0xd8]
	bl SubstitutePlaceholderStringTags
	mov r0, #2
	strb r0, [r7, #0xd8]
	b _02305ED8
_02305ED0:
	mov r1, r8
	bl SubstitutePlaceholderStringTags
_02305ED8:
	cmp r5, #0
	beq _02305EF4
	cmp r5, #1
	beq _02305F08
	cmp r5, #0x11
	beq _02305F24
	b _02305F3C
_02305EF4:
	ldr r2, _02305F54 @ =0x00000CCC
	add r1, sp, #0
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02305F3C
_02305F08:
	mov r0, sb
	bl ov29_022E543C
	ldr r2, _02305F58 @ =0x00000CCB
	add r1, sp, #0
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02305F3C
_02305F24:
	mov r0, sb
	bl ov29_022E543C
	ldr r2, _02305F5C @ =0x00000CCA
	add r1, sp, #0
	mov r0, sb
	bl LogMessageByIdWithPopupCheckUserTarget
_02305F3C:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
_02305F4C:
	add sp, sp, #0xb8
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02305F54: .4byte 0x00000CCC
_02305F58: .4byte 0x00000CCB
_02305F5C: .4byte 0x00000CCA
	arm_func_end ov29_02305C3C

	arm_func_start ov29_02305F60
ov29_02305F60: @ 0x02305F60
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r5, [r4, #0xb4]
	mov r1, #0
	mov r0, r5
	bl ov29_022FDDC0
	mov ip, #0
	strb ip, [r5, #0x106]
	strb ip, [r5, #0xfe]
	add r3, r5, #0x124
	mov r1, ip
	mov r2, #1
_02305FA0:
	ldrb r0, [r3, ip, lsl #3]
	add lr, r3, ip, lsl #3
	add ip, ip, #1
	tst r0, #1
	movne r0, r2
	moveq r0, r1
	tst r0, #0xff
	ldrhne r0, [lr, #2]
	bicne r0, r0, #1
	strhne r0, [lr, #2]
	cmp ip, #4
	blt _02305FA0
	mov r0, r4
	bl UpdateStatusIconFlags
	pop {r3, r4, r5, pc}
	arm_func_end ov29_02305F60

	arm_func_start ov29_02305FDC
ov29_02305FDC: @ 0x02305FDC
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r1
	mov sb, r0
	mov r0, r8
	mov r7, r2
	mov r6, r3
	mov r4, #0
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r4
	ldr r5, [r8, #0xb4]
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xbd]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02306164
_02306028: @ jump table
	b _02306164 @ case 0
	b _02306044 @ case 1
	b _0230605C @ case 2
	b _02306070 @ case 3
	b _02306118 @ case 4
	b _023060A8 @ case 5
	b _02306164 @ case 6
_02306044:
	ldr r2, _0230618C @ =0x00000C8D
	mov r0, sb
	mov r1, r8
	mov r4, #1
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306164
_0230605C:
	ldr r2, _02306190 @ =0x00000C8E
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306164
_02306070:
	mov r4, #1
	mov r0, sb
	mov r1, r8
	rsb r2, r4, #0xc90
	bl LogMessageByIdWithPopupCheckUserTarget
	cmp r6, #0
	beq _02306164
	ldr r0, _02306194 @ =0x022C45A8
	ldr r3, _02306198 @ =0x0000024E
	ldrsh r1, [r0]
	mov r0, r8
	mov r2, #8
	bl ov29_0230D11C
	b _02306164
_023060A8:
	mov r0, sb
	mov r1, r8
	mov r2, #0xc90
	mov r4, #1
	bl LogMessageByIdWithPopupCheckUserTarget
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	beq _023060E8
	ldr r0, _0230619C @ =0x022C45A0
	mov r6, r4
	ldrsh r2, [r0]
	mov r0, sb
	mov r1, r8
	mov r3, #0
	str r6, [sp]
	bl TryIncreaseHp
_023060E8:
	ldrb r0, [sp, #0x20]
	mov r6, #0
	strb r6, [r5, #0xbd]
	cmp r0, #0
	beq _02306164
	mov r2, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r6, [sp]
	bl ov29_023058C4
	b _02306164
_02306118:
	cmp r7, #0
	beq _02306154
	ldr r1, _023061A0 @ =0x022C4868
	mov r3, r4
	mov r0, r8
	mov r2, #1
	strb r3, [r5, #0xbd]
	bl CalcStatusDuration
	mov r2, r0
	mov r0, sb
	mov r1, r8
	add r2, r2, #1
	mov r3, #1
	bl TryInflictSleepStatus
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
_02306154:
	ldr r2, _023061A4 @ =0x00000C91
	mov r0, sb
	mov r1, r8
	bl LogMessageByIdWithPopupCheckUserTarget
_02306164:
	mov r1, #0
	mov r0, r8
	strb r1, [r5, #0xbd]
	bl UpdateStatusIconFlags
	cmp r4, #0
	popeq {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	mov r1, #8
	bl ov29_02304A48
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_0230618C: .4byte 0x00000C8D
_02306190: .4byte 0x00000C8E
_02306194: .4byte 0x022C45A8
_02306198: .4byte 0x0000024E
_0230619C: .4byte 0x022C45A0
_023061A0: .4byte 0x022C4868
_023061A4: .4byte 0x00000C91
	arm_func_end ov29_02305FDC

	arm_func_start ov29_023061A8
ov29_023061A8: @ 0x023061A8
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	arm_func_end ov29_023061A8

	arm_func_start ov29_023061CC
ov29_023061CC: @ 0x023061CC
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xbf]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	arm_func_end ov29_023061CC

	arm_func_start caseD_6
caseD_6: @ 0x023061E4
	b _02306238
_023061E8: @ jump table
	b _02306238 @ case 0
	b _02306228 @ case 1
	b _02306200 @ case 2
	b _02306200 @ case 3
	b _02306214 @ case 4
	b _02306238 @ case 5
_02306200:
	ldr r2, _0230624C @ =0x00000C9E
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306238
_02306214:
	ldr r2, _02306250 @ =0x00000C9C
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306238
_02306228:
	ldr r2, _02306254 @ =0x00000C9D
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	arm_func_end caseD_6
_02306238:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xbf]
	bl UpdateStatusIconFlags
	pop {r4, r5, r6, pc}
	.align 2, 0
_0230624C: .4byte 0x00000C9E
_02306250: .4byte 0x00000C9C
_02306254: .4byte 0x00000C9D

	arm_func_start EndFrozenClassStatus
EndFrozenClassStatus: @ 0x02306258
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r4, #0
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	ldr r5, [r7, #0xb4]
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xc4]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02306398
_023062A0: @ jump table
	b _02306398 @ case 0
	b _023062C4 @ case 1
	b _02306300 @ case 2
	b _02306338 @ case 3
	b _0230635C @ case 4
	b _0230631C @ case 5
	b _02306380 @ case 6
	b _023062E4 @ case 7
	b _02306398 @ case 8
_023062C4:
	cmp r6, #0
	beq _023062DC
	ldr r2, _023063BC @ =0x00000C9F
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_023062DC:
	mov r4, #1
	b _02306398
_023062E4:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063C0 @ =0x00000C99
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306398
_02306300:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063C4 @ =0x00000C9A
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306398
_0230631C:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063C8 @ =0x00000C9B
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02306398
_02306338:
	cmp r6, #0
	beq _02306350
	ldr r2, _023063CC @ =0x00000C98
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02306350:
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
	b _02306398
_0230635C:
	cmp r6, #0
	beq _02306374
	ldr r2, _023063CC @ =0x00000C98
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02306374:
	ldr r0, [r5, #0xb4]
	bl FreeOtherWrappedMonsters
	b _02306398
_02306380:
	cmp r6, #0
	beq _02306398
	ldr r2, _023063D0 @ =0x00000CBB
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02306398:
	mov r1, #0
	mov r0, r7
	strb r1, [r5, #0xc4]
	bl UpdateStatusIconFlags
	cmp r4, #0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl ov29_022E6798
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023063BC: .4byte 0x00000C9F
_023063C0: .4byte 0x00000C99
_023063C4: .4byte 0x00000C9A
_023063C8: .4byte 0x00000C9B
_023063CC: .4byte 0x00000C98
_023063D0: .4byte 0x00000CBB
	arm_func_end EndFrozenClassStatus

	arm_func_start EndCringeClassStatus
EndCringeClassStatus: @ 0x023063D4
	push {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd0]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _023064C0
_02306414: @ jump table
	b _023064C0 @ case 0
	b _023064B0 @ case 1
	b _02306438 @ case 2
	b _02306474 @ case 3
	b _0230644C @ case 4
	b _02306460 @ case 5
	b _0230649C @ case 6
	b _02306488 @ case 7
	b _023064C0 @ case 8
_02306438:
	ldr r2, _023064DC @ =0x00000C97
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_0230644C:
	ldr r2, _023064E0 @ =0x00000CA4
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_02306460:
	ldr r2, _023064E4 @ =0x00000CA7
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_02306474:
	ldr r2, _023064E8 @ =0x00000CBD
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_02306488:
	ldr r2, _023064EC @ =0x00000CB7
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_0230649C:
	mov r0, r6
	mov r1, r5
	mov r2, #0xcb0
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023064C0
_023064B0:
	ldr r2, _023064F0 @ =0x00000CBC
	mov r0, r6
	mov r1, r5
	bl LogMessageByIdWithPopupCheckUserTarget
_023064C0:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xd0]
	bl UpdateStatusIconFlags
	mov r0, r5
	bl CalcSpeedStageWrapper
	pop {r4, r5, r6, pc}
	.align 2, 0
_023064DC: .4byte 0x00000C97
_023064E0: .4byte 0x00000CA4
_023064E4: .4byte 0x00000CA7
_023064E8: .4byte 0x00000CBD
_023064EC: .4byte 0x00000CB7
_023064F0: .4byte 0x00000CBC
	arm_func_end EndCringeClassStatus

	arm_func_start ov29_023064F4
ov29_023064F4: @ 0x023064F4
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd5]
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _02306688
_02306530: @ jump table
	b _02306688 @ case 0
	b _0230657C @ case 1
	b _0230658C @ case 2
	b _0230659C @ case 3
	b _023065AC @ case 4
	b _023065BC @ case 5
	b _023065CC @ case 6
	b _023065DC @ case 7
	b _023065EC @ case 8
	b _023065FC @ case 9
	b _023065AC @ case 10
	b _0230660C @ case 11
	b _0230661C @ case 12
	b _0230663C @ case 13
	b _0230664C @ case 14
	b _0230665C @ case 15
	b _0230666C @ case 16
	b _0230667C @ case 17
	b _02306688 @ case 18
_0230657C:
	ldr r1, _0230669C @ =0x00000C87
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230658C:
	ldr r1, _023066A0 @ =0x00000C8A
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230659C:
	ldr r1, _023066A4 @ =0x00000C88
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065AC:
	ldr r1, _023066A8 @ =0x00000C89
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065BC:
	ldr r1, _023066AC @ =0x00000C8B
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065CC:
	ldr r1, _023066B0 @ =0x00000C8C
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065DC:
	ldr r1, _023066B4 @ =0x00000CA6
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065EC:
	ldr r1, _023066B8 @ =0x00000CAE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_023065FC:
	ldr r1, _023066BC @ =0x00000CB1
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230660C:
	ldr r1, _023066C0 @ =0x00000CB2
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230661C:
	ldr r1, _023066C4 @ =0x00000CB3
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r5
	bl ov29_022E65F4
	mov r0, r5
	bl ov29_02307CE0
	b _02306688
_0230663C:
	ldr r1, _023066C8 @ =0x00000CB4
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230664C:
	ldr r1, _023066CC @ =0x00000CB5
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230665C:
	ldr r1, _023066D0 @ =0x00000CBE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230666C:
	mov r0, r5
	mov r1, #0xcc0
	bl LogMessageByIdWithPopupCheckUser
	b _02306688
_0230667C:
	ldr r1, _023066D4 @ =0x00000CC1
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306688:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xd5]
	bl UpdateStatusIconFlags
	pop {r3, r4, r5, pc}
	.align 2, 0
_0230669C: .4byte 0x00000C87
_023066A0: .4byte 0x00000C8A
_023066A4: .4byte 0x00000C88
_023066A8: .4byte 0x00000C89
_023066AC: .4byte 0x00000C8B
_023066B0: .4byte 0x00000C8C
_023066B4: .4byte 0x00000CA6
_023066B8: .4byte 0x00000CAE
_023066BC: .4byte 0x00000CB1
_023066C0: .4byte 0x00000CB2
_023066C4: .4byte 0x00000CB3
_023066C8: .4byte 0x00000CB4
_023066CC: .4byte 0x00000CB5
_023066D0: .4byte 0x00000CBE
_023066D4: .4byte 0x00000CC1
	arm_func_end ov29_023064F4

	arm_func_start ov29_023066D8
ov29_023066D8: @ 0x023066D8
	push {r4, lr}
	mov r4, r1
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #3
	popne {r4, pc}
	ldr r1, _02306724 @ =0x02353538
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x19000
	str r2, [r0, #0x904]
	ldr r0, [r1]
	add r0, r0, #0x19000
	str r2, [r0, #0x90c]
	pop {r4, pc}
	.align 2, 0
_02306724: .4byte 0x02353538
	arm_func_end ov29_023066D8

	arm_func_start ov29_02306728
ov29_02306728: @ 0x02306728
	push {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, #0
	ldr r4, [r7, #0xb4]
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xd8]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _02306894
_02306770: @ jump table
	b _02306894 @ case 0
	b _02306790 @ case 1
	b _023067D4 @ case 2
	b _023067AC @ case 3
	b _02306830 @ case 4
	b _02306868 @ case 5
	b _02306880 @ case 6
	b _02306894 @ case 7
_02306790:
	cmp r6, #1
	cmpne r5, #0
	beq _02306894
	ldr r1, _023068A8 @ =0x00000C95
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _02306894
_023067AC:
	cmp r6, #3
	cmpne r5, #0
	beq _023067C4
	ldr r1, _023068AC @ =0x00000C96
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_023067C4:
	mov r0, r8
	mov r1, r7
	bl ov29_023066D8
	b _02306894
_023067D4:
	mov r1, #0
	mov r0, r7
	strb r1, [r4, #0xd8]
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	ldr r1, _023068B0 @ =0x02353538
	mov r0, #0
	ldr r1, [r1]
	cmp r6, #2
	add r1, r1, #0x3000
	strb r0, [r1, #0xe38]
	beq _02306894
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	cmp r5, #0
	beq _02306894
	ldr r1, _023068B4 @ =0x00000CA5
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _02306894
_02306830:
	mov r1, #0
	mov r0, r7
	strb r1, [r4, #0xd8]
	bl ov29_022FB984
	cmp r5, #0
	beq _02306854
	ldr r1, _023068B8 @ =0x00000CBF
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_02306854:
	ldr r0, _023068B0 @ =0x02353538
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0xe]
	b _02306894
_02306868:
	cmp r5, #0
	beq _02306894
	ldr r1, _023068BC @ =0x00000CC2
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	b _02306894
_02306880:
	cmp r5, #0
	beq _02306894
	ldr r1, _023068C0 @ =0x00000CC3
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
_02306894:
	mov r1, #0
	mov r0, r7
	strb r1, [r4, #0xd8]
	bl UpdateStatusIconFlags
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_023068A8: .4byte 0x00000C95
_023068AC: .4byte 0x00000C96
_023068B0: .4byte 0x02353538
_023068B4: .4byte 0x00000CA5
_023068B8: .4byte 0x00000CBF
_023068BC: .4byte 0x00000CC2
_023068C0: .4byte 0x00000CC3
	arm_func_end ov29_02306728

	arm_func_start ov29_023068C4
ov29_023068C4: @ 0x023068C4
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xe0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0230692C
_02306900: @ jump table
	b _0230692C @ case 0
	b _02306910 @ case 1
	b _02306920 @ case 2
	b _0230692C @ case 3
_02306910:
	ldr r1, _02306948 @ =0x00000C94
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _0230692C
_02306920:
	ldr r1, _0230694C @ =0x00000CAF
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_0230692C:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xe0]
	mov r1, #0xff
	strb r1, [r4, #0xe8]
	bl UpdateStatusIconFlags
	pop {r3, r4, r5, pc}
	.align 2, 0
_02306948: .4byte 0x00000C94
_0230694C: .4byte 0x00000CAF
	arm_func_end ov29_023068C4

	arm_func_start ov29_02306950
ov29_02306950: @ 0x02306950
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xec]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _023069E0
_0230698C: @ jump table
	b _023069E0 @ case 0
	b _023069A4 @ case 1
	b _023069B4 @ case 2
	b _023069C4 @ case 3
	b _023069D4 @ case 4
	b _023069E0 @ case 5
_023069A4:
	mov r0, r5
	mov r1, #0xca0
	bl LogMessageByIdWithPopupCheckUser
	b _023069E0
_023069B4:
	ldr r1, _023069F4 @ =0x00000CA1
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _023069E0
_023069C4:
	ldr r1, _023069F8 @ =0x00000CA2
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _023069E0
_023069D4:
	ldr r1, _023069FC @ =0x00000CA3
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_023069E0:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xec]
	bl UpdateStatusIconFlags
	pop {r3, r4, r5, pc}
	.align 2, 0
_023069F4: .4byte 0x00000CA1
_023069F8: .4byte 0x00000CA2
_023069FC: .4byte 0x00000CA3
	arm_func_end ov29_02306950

	arm_func_start ov29_02306A00
ov29_02306A00: @ 0x02306A00
	push {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r4, #0
	mov r0, r8
	mov r7, r2
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	ldr r6, [r8, #0xb4]
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xef]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02306ADC
_02306A48: @ jump table
	b _02306ADC @ case 0
	b _02306A60 @ case 1
	b _02306A84 @ case 2
	b _02306A74 @ case 3
	b _02306AC4 @ case 4
	b _02306ADC @ case 5
_02306A60:
	ldr r1, _02306B18 @ =0x00000CA8
	mov r0, r8
	mov r4, #1
	bl LogMessageByIdWithPopupCheckUser
	b _02306ADC
_02306A74:
	ldr r1, _02306B1C @ =0x00000CB8
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _02306ADC
_02306A84:
	ldrsh r1, [r6, #2]
	mov r0, r8
	bl ov29_022F9408
	strh r0, [r6, #4]
	ldrsh r0, [r6, #4]
	bl GetSpriteIndex
	strh r0, [r8, #0xa8]
	mov r0, r8
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r8
	bl ov29_02304830
	ldr r1, _02306B20 @ =0x00000CB6
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
	b _02306ADC
_02306AC4:
	cmp r7, #0
	bne _02306AD8
	ldr r1, _02306B24 @ =0x00000CAC
	mov r0, r8
	bl LogMessageByIdWithPopupCheckUser
_02306AD8:
	mov r5, #1
_02306ADC:
	mov r1, #0
	mov r0, r8
	strb r1, [r6, #0xef]
	bl UpdateStatusIconFlags
	cmp r4, #0
	beq _02306AFC
	mov r0, #1
	bl ov29_022F62CC
_02306AFC:
	cmp r7, #0
	popne {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	popeq {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl ov29_02321104
	pop {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02306B18: .4byte 0x00000CA8
_02306B1C: .4byte 0x00000CB8
_02306B20: .4byte 0x00000CB6
_02306B24: .4byte 0x00000CAC
	arm_func_end ov29_02306A00

	arm_func_start ov29_02306B28
ov29_02306B28: @ 0x02306B28
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf1]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02306BB8
_02306B64: @ jump table
	b _02306BB8 @ case 0
	b _02306B7C @ case 1
	b _02306B8C @ case 2
	b _02306B9C @ case 3
	b _02306BAC @ case 4
	b _02306BB8 @ case 5
_02306B7C:
	ldr r1, _02306BE8 @ =0x00000CA9
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306BB8
_02306B8C:
	ldr r1, _02306BEC @ =0x00000CAA
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306BB8
_02306B9C:
	ldr r1, _02306BF0 @ =0x00000CAB
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	b _02306BB8
_02306BAC:
	ldr r1, _02306BF4 @ =0x00000CAD
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306BB8:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xf1]
	bl UpdateStatusIconFlags
	ldrb r0, [r4, #7]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0x31
	bl AdvanceFrame
	bl ov29_02336F4C
	bl ov29_02339CE8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02306BE8: .4byte 0x00000CA9
_02306BEC: .4byte 0x00000CAA
_02306BF0: .4byte 0x00000CAB
_02306BF4: .4byte 0x00000CAD
	arm_func_end ov29_02306B28

	arm_func_start ov29_02306BF8
ov29_02306BF8: @ 0x02306BF8
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf3]
	cmp r0, #0
	beq _02306C4C
	cmp r0, #1
	beq _02306C40
	cmp r0, #2
	b _02306C4C
_02306C40:
	ldr r1, _02306C60 @ =0x00000CB9
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306C4C:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xf3]
	bl UpdateStatusIconFlags
	pop {r3, r4, r5, pc}
	.align 2, 0
_02306C60: .4byte 0x00000CB9
	arm_func_end ov29_02306BF8

	arm_func_start ov29_02306C64
ov29_02306C64: @ 0x02306C64
	push {r3, r4, r5, lr}
	mov r5, r1
	mov r0, r5
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0
	ldr r4, [r5, #0xb4]
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	beq _02306CB8
	arm_func_end ov29_02306C64

	arm_func_start ov29_02306C9C
ov29_02306C9C: @ 0x02306C9C
	cmp r0, #1
	beq _02306CAC
	cmp r0, #2
	b _02306CB8
_02306CAC:
	ldr r1, _02306CCC @ =0x00000CC4
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_02306CB8:
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xf5]
	bl UpdateStatusIconFlags
	pop {r3, r4, r5, pc}
	.align 2, 0
_02306CCC: .4byte 0x00000CC4
	arm_func_end ov29_02306C9C

	arm_func_start ov29_02306CD0
ov29_02306CD0: @ 0x02306CD0
	push {r4, r5, r6, lr}
	mov r6, r1
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	popeq {r4, r5, r6, pc}
	mov r4, #0
	ldr r5, [r6, #0xb4]
	mov r0, r4
	mov r1, r6
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r5, #0xf7]
	cmp r0, #0
	beq _02306D2C
	cmp r0, #1
	beq _02306D1C
	cmp r0, #2
	b _02306D2C
_02306D1C:
	ldr r1, _02306D50 @ =0x00000CC5
	mov r0, r6
	bl LogMessageByIdWithPopupCheckUser
	mov r4, #1
_02306D2C:
	mov r1, #0
	mov r0, r6
	strb r1, [r5, #0xf7]
	bl UpdateStatusIconFlags
	cmp r4, #0
	popeq {r4, r5, r6, pc}
	mov r0, r6
	bl ov29_02321134
	pop {r4, r5, r6, pc}
	.align 2, 0
_02306D50: .4byte 0x00000CC5
	arm_func_end ov29_02306CD0

	arm_func_start ov29_02306D54
ov29_02306D54: @ 0x02306D54
	push {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #0
	ldr r4, _02306DC8 @ =0x02353538
	mov sb, r0
	mov r5, r8
	mov r6, #1
	mov r7, r8
_02306D70:
	ldr r0, [r4]
	add r0, r0, r8, lsl #2
	add r0, r0, #0x12000
	ldr r1, [r0, #0xb78]
	cmp r1, #0
	moveq r0, r7
	beq _02306DA0
	ldr r0, [r1]
	cmp r0, #1
	moveq r0, r6
	movne r0, r5
	and r0, r0, #0xff
_02306DA0:
	cmp r0, #0
	beq _02306DB0
	mov r0, sb
	bl ov29_02306CD0
_02306DB0:
	add r0, r8, #1
	lsl r0, r0, #0x10
	asr r8, r0, #0x10
	cmp r8, #0x14
	blt _02306D70
	pop {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02306DC8: .4byte 0x02353538
	arm_func_end ov29_02306D54

	arm_func_start ov29_02306DCC
ov29_02306DCC: @ 0x02306DCC
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r8, r1
	mov r4, #0
	mov sb, r0
	mov r0, r8
	mov sl, r4
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	mov r0, r4
	beq _02306EF8
	mov r1, sb
	mov r2, r0
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xbd]
	cmp r0, #0
	moveq r0, r4
	beq _02306EF8
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02306E9C
_02306E3C: @ jump table
	b _02306E9C @ case 0
	b _02306E58 @ case 1
	b _02306E9C @ case 2
	b _02306E58 @ case 3
	b _02306E58 @ case 4
	b _02306E7C @ case 5
	b _02306E9C @ case 6
_02306E58:
	mov r2, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r4, [sp]
	bl ov29_02311C28
	mov sl, r0
	mov r4, #1
	b _02306E9C
_02306E7C:
	mov r2, r4
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r2, [sp]
	bl ov29_02311C28
	mov sl, r0
	mov r4, #1
_02306E9C:
	cmp sl, #0
	beq _02306EBC
	ldrb r1, [r6, #0xbd]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xbd]
	ldrb r0, [r6, #0xbe]
	strb r0, [r7, #0xbe]
_02306EBC:
	cmp r4, #0
	orrne r1, r5, #1
	movne r0, #0
	strbne r0, [r6, #0xbd]
	andne r5, r1, #0xff
	cmp r4, #0
	beq _02306EE4
	mov r0, sb
	mov r1, #0x378
	bl ov29_02304A48
_02306EE4:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
_02306EF8:
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02306DCC

	arm_func_start ov29_02306F00
ov29_02306F00: @ 0x02306F00
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov sl, #0
	mov sb, r0
	mov r8, r1
	mov r4, sl
	mov r5, sl
	bl EntityIsValid
	cmp r0, #0
	moveq r0, sl
	beq _02307070
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	moveq r0, sl
	beq _02307070
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r0, [r6, #0xbf]
	cmp r0, #0
	mov r0, sl
	beq _02307070
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, sl
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xbf]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0230701C
_02306F84: @ jump table
	b _0230701C @ case 0
	b _02306FFC @ case 1
	b _02306F9C @ case 2
	b _02306FBC @ case 3
	b _02306FDC @ case 4
	b _0230701C @ case 5
_02306F9C:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #1
	bl TryInflictPoisonedStatus
	mov sl, r0
	mov r4, #1
	b _0230701C
_02306FBC:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #1
	bl TryInflictBadlyPoisonedStatus
	mov sl, r0
	mov r4, #1
	b _0230701C
_02306FDC:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	mov r3, #1
	bl TryInflictParalysisStatus
	mov sl, r0
	mov r4, #1
	b _0230701C
_02306FFC:
	mov r2, sl
	mov r4, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r4, [sp]
	bl TryInflictBurnStatus
	mov sl, r0
_0230701C:
	cmp sl, #0
	beq _02307048
	add r3, r6, #0xbf
	add r2, r7, #0xbf
	mov r1, #4
_02307030:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _02307030
	orr r0, r5, #0x11
	and r5, r0, #0xff
_02307048:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strbne r1, [r6, #0xbf]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
_02307070:
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02306F00

	arm_func_start ov29_02307078
ov29_02307078: @ 0x02307078
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r1, [r6, #0xc4]
	cmp r1, #3
	cmpne r1, #4
	beq _023070E0
	ldrb r0, [r7, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _023070E8
_023070E0:
	mov r0, #0
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
_023070E8:
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0230714C
_023070F4: @ jump table
	b _0230714C @ case 0
	b _0230714C @ case 1
	b _02307114 @ case 2
	b _0230714C @ case 3
	b _0230714C @ case 4
	b _0230714C @ case 5
	b _0230714C @ case 6
	b _02307130 @ case 7
_02307114:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl TryInflictShadowHoldStatus
	mov sl, r0
	mov r4, #1
	b _0230714C
_02307130:
	mov r0, sb
	mov r1, r8
	mov r2, #0x7e
	mov r3, #1
	bl TryInflictConstrictionStatus
	mov sl, r0
	mov r4, #1
_0230714C:
	cmp sl, #0
	beq _0230716C
	add r0, r6, #0xc4
	add r7, r7, #0xc4
	ldm r0, {r0, r1, r2}
	orr r3, r5, #0x11
	stm r7, {r0, r1, r2}
	and r5, r3, #0xff
_0230716C:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strbne r1, [r6, #0xc4]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307078

	arm_func_start ov29_02307198
ov29_02307198: @ 0x02307198
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	beq _02307374
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	beq _02307374
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r0, [r6, #0xd0]
	cmp r0, #0
	mov r0, r4
	beq _02307374
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xd0]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _0230731C
_0230721C: @ jump table
	b _0230731C @ case 0
	b _02307300 @ case 1
	b _02307240 @ case 2
	b _0230729C @ case 3
	b _02307260 @ case 4
	b _02307280 @ case 5
	b _023072E4 @ case 6
	b _023072C4 @ case 7
	b _0230731C @ case 8
_02307240:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictConfusedStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_02307260:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictCoweringStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_02307280:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_023163A8
	mov sl, r0
	mov r4, #1
	b _0230731C
_0230729C:
	mov r3, r4
	mov r0, sb
	mov r1, r8
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	bl TryInflictPausedStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_023072C4:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictInfatuatedStatus
	mov sl, r0
	mov r4, #1
	b _0230731C
_023072E4:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_02316720
	mov sl, r0
	mov r4, #1
	b _0230731C
_02307300:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictCringeStatus
	mov sl, r0
	mov r4, #1
_0230731C:
	cmp sl, #0
	beq _0230733C
	ldrb r1, [r6, #0xd0]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xd0]
	ldrb r0, [r6, #0xd1]
	strb r0, [r7, #0xd1]
_0230733C:
	cmp r4, #0
	movne r0, #0
	orrne r1, r5, #1
	strbne r0, [r6, #0xd0]
	mov r0, sb
	andne r5, r1, #0xff
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, sb
	bl CalcSpeedStageWrapper
	mov r0, r8
	bl CalcSpeedStageWrapper
	mov r0, r5
_02307374:
	add sp, sp, #8
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307198

	arm_func_start ov29_0230737C
ov29_0230737C: @ 0x0230737C
	push {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov r5, r4
	mov r6, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	beq _023076B4
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	mov r0, r4
	beq _023076B4
	mov r1, sb
	mov r2, r0
	ldr r7, [sb, #0xb4]
	ldr sl, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xd8]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _0230749C
_023073F0: @ jump table
	b _0230749C @ case 0
	b _02307410 @ case 1
	b _0230741C @ case 2
	b _0230749C @ case 3
	b _02307440 @ case 4
	b _02307460 @ case 5
	b _02307480 @ case 6
	b _0230749C @ case 7
_02307410:
	mov r5, #1
	mov r4, r5
	b _0230749C
_0230741C:
	mov r2, r4
	mov r4, #1
	mov r0, sb
	mov r1, r8
	mov r3, r2
	str r4, [sp]
	bl ov29_02315E24
	mov r5, r0
	b _0230749C
_02307440:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_0231827C
	mov r5, r0
	mov r4, #1
	b _0230749C
_02307460:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_023185A8
	mov r5, r0
	mov r4, #1
	b _0230749C
_02307480:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_0231872C
	mov r5, r0
	mov r4, #1
_0230749C:
	ldrb r0, [r7, #0xd8]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _023076A0
_023074AC: @ jump table
	b _023076A0 @ case 0
	b _023074C8 @ case 1
	b _02307528 @ case 2
	b _023076A0 @ case 3
	b _02307554 @ case 4
	b _023075D4 @ case 5
	b _0230763C @ case 6
_023074C8:
	cmp r5, #0
	beq _02307500
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_023074E8:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _023074E8
	orr r0, r6, #0x11
	and r6, r0, #0xff
_02307500:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #1
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
	b _023076A0
_02307528:
	cmp r5, #0
	beq _023076A0
	mov r3, #0
	mov r0, sb
	mov r1, r8
	mov r2, #1
	str r3, [sp]
	bl ov29_02315E24
	orr r0, r6, #0x11
	and r6, r0, #0xff
	b _023076A0
_02307554:
	cmp r5, #0
	beq _023075AC
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_02307574:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _02307574
	ldr r1, _023076BC @ =0x02353538
	mov r0, r8
	ldr r1, [r1]
	mov r2, #1
	strb r2, [r1, #0xe]
	bl ov29_022FB984
	mov r0, r8
	bl UpdateStatusIconFlags
	orr r0, r6, #0x11
	and r6, r0, #0xff
_023075AC:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #4
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
	b _023076A0
_023075D4:
	cmp r5, #0
	beq _02307614
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_023075F4:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _023075F4
	mov r0, r8
	bl UpdateStatusIconFlags
	orr r0, r6, #0x11
	and r6, r0, #0xff
_02307614:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #5
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
	b _023076A0
_0230763C:
	cmp r5, #0
	beq _0230767C
	mov r0, sb
	mov r1, r8
	bl ov29_023066D8
	add r3, r7, #0xd8
	add r2, sl, #0xd8
	mov r1, #5
_0230765C:
	ldrb r0, [r3], #1
	subs r1, r1, #1
	strb r0, [r2], #1
	bne _0230765C
	mov r0, r8
	bl UpdateStatusIconFlags
	orr r0, r6, #0x11
	and r6, r0, #0xff
_0230767C:
	cmp r4, #0
	beq _023076A0
	mov r0, r8
	mov r1, sb
	mov r2, #6
	mov r3, #0
	bl ov29_02306728
	orr r0, r6, #1
	and r6, r0, #0xff
_023076A0:
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r6
_023076B4:
	add sp, sp, #4
	pop {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023076BC: .4byte 0x02353538
	arm_func_end ov29_0230737C

	arm_func_start ov29_023076C0
ov29_023076C0: @ 0x023076C0
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	ldrb r0, [r6, #0xe0]
	cmp r0, #0
	mov r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sb
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xe0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0230776C
_02307740: @ jump table
	b _0230776C @ case 0
	b _02307750 @ case 1
	b _0230776C @ case 2
	b _0230776C @ case 3
_02307750:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl TryInflictLeechSeedStatus
	mov sl, r0
	mov r4, #1
_0230776C:
	cmp sl, #0
	beq _023077CC
	add r0, r6, #0xe0
	add r3, r7, #0xe0
	ldm r0, {r0, r1, r2}
	stm r3, {r0, r1, r2}
	mov r0, #0xff
	strb r0, [r7, #0xe8]
	ldr r2, _023077F8 @ =0x02353538
	mov r0, #0
_02307794:
	ldr r1, [r2]
	add r1, r1, r0, lsl #2
	add r1, r1, #0x12000
	ldr r1, [r1, #0xb78]
	cmp sb, r1
	strbeq r0, [r7, #0xe8]
	ldreq r1, [sb, #0xb4]
	add r0, r0, #1
	ldreq r1, [r1, #0xb0]
	streq r1, [r7, #0xe4]
	cmp r0, #0x14
	blt _02307794
	orr r0, r5, #0x11
	and r5, r0, #0xff
_023077CC:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strbne r1, [r6, #0xe0]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_023077F8: .4byte 0x02353538
	arm_func_end ov29_023076C0

	arm_func_start ov29_023077FC
ov29_023077FC: @ 0x023077FC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	mov r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sb
	mov r2, r0
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xec]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _023078A0
_0230786C: @ jump table
	b _023078A0 @ case 0
	b _023078A0 @ case 1
	b _02307884 @ case 2
	b _023078A0 @ case 3
	b _023078A0 @ case 4
	b _023078A0 @ case 5
_02307884:
	mov r0, sb
	mov r1, r8
	mov r2, r4
	mov r3, #1
	bl ov29_02315C00
	mov sl, r0
	mov r4, #1
_023078A0:
	cmp sl, #0
	beq _023078C0
	ldrb r1, [r6, #0xec]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xec]
	ldrb r0, [r6, #0xed]
	strb r0, [r7, #0xed]
_023078C0:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strbne r1, [r6, #0xec]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	mov r0, r5
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_023077FC

	arm_func_start ov29_023078EC
ov29_023078EC: @ 0x023078EC
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sb, r0
	mov r8, r1
	mov sl, r4
	mov r5, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	mov r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sb
	mov r2, r0
	ldr r6, [sb, #0xb4]
	ldr r7, [r8, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, r8
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r6, #0xf1]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _023079C4
_0230795C: @ jump table
	b _023079C4 @ case 0
	b _02307974 @ case 1
	b _02307994 @ case 2
	b _023079C4 @ case 3
	b _023079B0 @ case 4
	b _023079C4 @ case 5
_02307974:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	mov r3, r4
	bl ov29_023176CC
	mov sl, r0
	mov r4, #1
	b _023079C4
_02307994:
	mov r0, sb
	mov r1, r8
	mov r2, #1
	bl ov29_02317844
	mov sl, r0
	mov r4, #1
	b _023079C4
_023079B0:
	mov r0, sb
	mov r1, r8
	bl ov29_02317AF4
	mov sl, r0
	mov r4, #1
_023079C4:
	cmp sl, #0
	beq _023079E4
	ldrb r1, [r6, #0xf1]
	orr r0, r5, #0x11
	and r5, r0, #0xff
	strb r1, [r7, #0xf1]
	ldrb r0, [r6, #0xf2]
	strb r0, [r7, #0xf2]
_023079E4:
	cmp r4, #0
	orrne r0, r5, #1
	movne r1, #0
	andne r5, r0, #0xff
	mov r0, sb
	strbne r1, [r6, #0xf1]
	bl UpdateStatusIconFlags
	mov r0, r8
	bl UpdateStatusIconFlags
	ldrb r0, [r6, #7]
	cmp r0, #0
	beq _02307A24
	mov r0, #0x31
	bl AdvanceFrame
	bl ov29_02336F4C
	bl ov29_02339CE8
_02307A24:
	mov r0, r5
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_023078EC

	arm_func_start ov29_02307A2C
ov29_02307A2C: @ 0x02307A2C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sl, r0
	mov sb, r1
	mov r5, r4
	mov r6, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	mov r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sl
	mov r2, r0
	ldr r7, [sl, #0xb4]
	ldr r8, [sb, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xf3]
	cmp r0, #0
	beq _02307AC0
	cmp r0, #1
	beq _02307AA8
	cmp r0, #2
	b _02307AC0
_02307AA8:
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl ov29_02317124
	mov r5, r0
	mov r4, #1
_02307AC0:
	cmp r5, #0
	beq _02307AE0
	ldrb r1, [r7, #0xf3]
	orr r0, r6, #0x11
	and r6, r0, #0xff
	strb r1, [r8, #0xf3]
	ldrb r0, [r7, #0xf4]
	strb r0, [r8, #0xf4]
_02307AE0:
	cmp r4, #0
	orrne r0, r6, #1
	movne r1, #0
	andne r6, r0, #0xff
	mov r0, sl
	strbne r1, [r7, #0xf3]
	bl UpdateStatusIconFlags
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r6
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307A2C

	arm_func_start ov29_02307B0C
ov29_02307B0C: @ 0x02307B0C
	push {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, #0
	mov sl, r0
	mov sb, r1
	mov r5, r4
	mov r6, r4
	bl EntityIsValid
	cmp r0, #0
	moveq r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	mov r0, r4
	popeq {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, sl
	mov r2, r0
	ldr r7, [sl, #0xb4]
	ldr r8, [sb, #0xb4]
	bl SubstitutePlaceholderStringTags
	mov r1, sb
	mov r0, #1
	mov r2, r4
	bl SubstitutePlaceholderStringTags
	ldrb r0, [r7, #0xf5]
	cmp r0, #1
	bne _02307B90
	mov r0, sl
	mov r1, sb
	mov r2, #1
	bl ov29_02318850
	mov r5, r0
	mov r4, #1
_02307B90:
	cmp r5, #0
	beq _02307BB0
	ldrb r1, [r7, #0xf5]
	orr r0, r6, #0x11
	and r6, r0, #0xff
	strb r1, [r8, #0xf5]
	ldrb r0, [r7, #0xf6]
	strb r0, [r8, #0xf6]
_02307BB0:
	cmp r4, #0
	orrne r0, r6, #1
	movne r1, #0
	andne r6, r0, #0xff
	mov r0, sl
	strbne r1, [r7, #0xf5]
	bl UpdateStatusIconFlags
	mov r0, sb
	bl UpdateStatusIconFlags
	mov r0, r6
	pop {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov29_02307B0C

	arm_func_start ov29_02307BDC
ov29_02307BDC: @ 0x02307BDC
	push {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r4, [r5, #0xb4]
	mov r6, r0
	ldrb r2, [r4, #0xc4]
	mov r3, #0
	cmp r2, #6
	bne _02307C0C
	mov r2, #1
	bl EndFrozenClassStatus
	mov r3, #1
_02307C0C:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	ldrbeq r0, [r4, #0xbe]
	cmpeq r0, #0x7f
	bne _02307C3C
	mov r3, #1
	mov r0, r6
	mov r1, r5
	mov r2, #0
	str r3, [sp]
	bl ov29_02305FDC
	mov r3, #1
_02307C3C:
	mov r0, r3
	add sp, sp, #4
	pop {r3, r4, r5, r6, pc}
	arm_func_end ov29_02307BDC

	arm_func_start ov29_02307C48
ov29_02307C48: @ 0x02307C48
	push {r4, lr}
	mov r4, r0
	ldr ip, [r4, #0xb4]
	mov r3, #0
	mov r1, #1
	strb r3, [ip, #0xbd]
	mov r2, r1
	strb r3, [ip, #0xbe]
	bl ov29_022FA1D8
	mov r0, r4
	bl UpdateStatusIconFlags
	pop {r4, pc}
	arm_func_end ov29_02307C48

	arm_func_start ov29_02307C78
ov29_02307C78: @ 0x02307C78
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r3, [r4, #0xb4]
	ldrb r0, [r3, #0xc4]
	cmp r0, #1
	popne {r3, r4, r5, pc}
	mov r0, #0
	strb r0, [r3, #0xc4]
	strb r0, [r3, #0xcc]
	mov r1, r4
	mov r2, r0
	strb r0, [r3, #0xcd]
	bl SubstitutePlaceholderStringTags
	ldr r2, _02307CDC @ =0x00000C9F
	mov r0, r5
	mov r1, r4
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r4
	bl UpdateStatusIconFlags
	pop {r3, r4, r5, pc}
	.align 2, 0
_02307CDC: .4byte 0x00000C9F
	arm_func_end ov29_02307C78

	arm_func_start ov29_02307CE0
ov29_02307CE0: @ 0x02307CE0
	push {r4, lr}
	ldr r4, [r0, #0xb4]
	mov r1, #0
	bl ov29_02307D54
	mov r1, #0
	strb r1, [r4, #0xff]
	ldrsh r0, [r4, #2]
	bl FUN_02052A04
	strb r0, [r4, #0x5e]
	ldrsh r0, [r4, #2]
	mov r1, #1
	bl FUN_02052A04
	strb r0, [r4, #0x5f]
	pop {r4, pc}
	arm_func_end ov29_02307CE0

	arm_func_start ov29_02307D18
ov29_02307D18: @ 0x02307D18
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl EntityIsValid
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #7
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov29_023064F4
	pop {r3, r4, r5, pc}
	arm_func_end ov29_02307D18

	arm_func_start ov29_02307D54
ov29_02307D54: @ 0x02307D54
	push {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl EntityIsValid
	cmp r0, #0
	ldrne r2, [r5, #0xb4]
	ldrbne r0, [r2, #0xa9]
	cmpne r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, #0
	strb r0, [r2, #0xa9]
	ldrb r1, [r2, #0xaa]
	cmp r4, #0
	strb r1, [r2, #0x5e]
	ldrb r1, [r2, #0xab]
	strb r1, [r2, #0x5f]
	strb r0, [r2, #0xaa]
	strb r0, [r2, #0xab]
	popeq {r3, r4, r5, pc}
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02307DBC @ =0x00000CC8
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, pc}
	.align 2, 0
_02307DBC: .4byte 0x00000CC8
	arm_func_end ov29_02307D54

	arm_func_start ov29_02307DC0
ov29_02307DC0: @ 0x02307DC0
	mov r1, #0
	strb r1, [r0, #0x104]
	strb r1, [r0, #0x105]
	bx lr
	arm_func_end ov29_02307DC0

	arm_func_start ov29_02307DD0
ov29_02307DD0: @ 0x02307DD0
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, #0
_02307DD8:
	ldr r0, _02307EF4 @ =0x02353538
	ldr r0, [r0]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr r6, [r0, #0xb38]
	mov r0, r6
	bl EntityIsValid
	cmp r0, #0
	beq _02307EE4
	ldr r1, [r6, #0xb4]
	ldrb r0, [r1, #0xbd]
	cmp r0, #1
	ldrbeq r0, [r1, #0xbe]
	cmpeq r0, #0x7f
	bne _02307EE4
	mov r8, #0
	mov r7, r8
	mov r5, r8
	ldrb sl, [r6, #0x25]
	ldr fp, _02307EF4 @ =0x02353538
	b _02307EBC
_02307E2C:
	ldr r0, [fp]
	add r0, r0, r5, lsl #2
	add r0, r0, #0x12000
	ldr sb, [r0, #0xb28]
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _02307EB8
	mov r0, sb
	mov r1, #0x1f
	bl ItemIsActive
	cmp r0, #0
	bne _02307EB8
	ldrsh r1, [sb, #4]
	ldrsh r0, [r6, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _02307E94
	ldrsh r1, [sb, #6]
	ldrsh r0, [r6, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	movle r8, #1
	ble _02307EC4
_02307E94:
	mov r0, sb
	mov r1, #0x24
	bl ItemIsActive
	cmp r0, #0
	beq _02307EB8
	ldrb r0, [sb, #0x25]
	cmp sl, r0
	moveq r7, #1
	beq _02307EC4
_02307EB8:
	add r5, r5, #1
_02307EBC:
	cmp r5, #4
	blt _02307E2C
_02307EC4:
	cmp r7, #0
	bne _02307ED4
	cmp r8, #0
	movne r7, #1
_02307ED4:
	cmp r7, #0
	beq _02307EE4
	mov r0, r6
	bl ov29_02307C48
_02307EE4:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02307DD8
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02307EF4: .4byte 0x02353538
	arm_func_end ov29_02307DD0

	arm_func_start EntityIsValid
EntityIsValid: @ 0x02307EF8
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ItemIsActive
ItemIsActive: @ 0x02307F1C
	push {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #0x6f
	mov r5, r0
	bl AbilityIsActive
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl HasHeldItem
	pop {r3, r4, r5, pc}
	arm_func_end ItemIsActive

	arm_func_start ov29_02307F4C
ov29_02307F4C: @ 0x02307F4C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1a0
	mov r4, r0
	mov r5, r1
	bl EntityIsValid
	cmp r0, #0
	beq _02308268
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _02308268
	mov r0, r4
	bl GetTileAtEntity
	ldrh r0, [r0]
	tst r0, #0x40
	beq _02308268
	ldr r0, _02308270 @ =0x02353538
	ldr r2, [r0]
	ldrb r1, [r2, #0x793]
	cmp r1, #0
	bne _02308268
	mov r1, #1
	strb r1, [r2, #0x793]
	ldr r1, [r0]
	add r0, r1, #0x4000
	ldrb r2, [r0, #0xc9]
	cmp r2, #0xff
	beq _02308268
	add r0, r1, #0x2e8
	add r1, r0, #0xec00
	mov r0, #0x1c
	mla r1, r2, r0, r1
	cmp r5, #0
	mov r5, #0
	beq _02308064
	ldrsh r0, [r4, #6]
	add r7, sp, #0x10
	sub sb, r0, #4
	b _02308050
_02307FE8:
	ldrsh r0, [r4, #4]
	sub r8, r0, #4
	lsl r0, sb, #0x10
	asr r6, r0, #0x10
	b _0230803C
_02307FFC:
	mov r0, r8
	mov r1, sb
	bl GetTileSafe
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrheq r0, [r0]
	andeq r0, r0, #3
	cmpeq r0, #1
	bne _02308038
	cmp r5, #0x64
	lsllt r1, r5, #2
	addlt r0, r7, r5, lsl #2
	strhlt r8, [r7, r1]
	strhlt r6, [r0, #2]
	addlt r5, r5, #1
_02308038:
	add r8, r8, #1
_0230803C:
	ldrsh r0, [r4, #4]
	add r0, r0, #4
	cmp r8, r0
	ble _02307FFC
	add sb, sb, #1
_02308050:
	ldrsh r0, [r4, #6]
	add r0, r0, #4
	cmp sb, r0
	ble _02307FE8
	b _02308124
_02308064:
	ldrsh r2, [r4, #4]
	ldrsh r0, [r1, #2]
	add fp, sp, #0x10
	sub r7, r2, #4
	cmp r7, r0
	movle r7, r0
	add r8, r2, #5
	ldrsh r2, [r4, #6]
	ldrsh r0, [r1, #6]
	sub sb, r2, #4
	cmp r8, r0
	movge r8, r0
	ldrsh r0, [r1, #4]
	add sl, r2, #5
	cmp sb, r0
	movle sb, r0
	ldrsh r0, [r1, #8]
	cmp sl, r0
	movge sl, r0
	b _0230811C
_023080B4:
	lsl r0, sb, #0x10
	mov r6, r7
	asr r4, r0, #0x10
	b _02308110
_023080C4:
	mov r0, r6
	mov r1, sb
	bl GetTileSafe
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrheq r1, [r0]
	andeq r1, r1, #3
	cmpeq r1, #1
	bne _0230810C
	ldrh r0, [r0]
	tst r0, #0x40
	beq _0230810C
	cmp r5, #0x64
	lsllt r1, r5, #2
	addlt r0, fp, r5, lsl #2
	strhlt r6, [fp, r1]
	strhlt r4, [r0, #2]
	addlt r5, r5, #1
_0230810C:
	add r6, r6, #1
_02308110:
	cmp r6, r8
	blt _023080C4
	add sb, sb, #1
_0230811C:
	cmp sb, sl
	blt _023080B4
_02308124:
	ldr r0, _02308274 @ =0x022C4560
	ldr r1, _02308278 @ =0x022C4660
	ldrsh r0, [r0]
	ldrsh r1, [r1]
	bl DungeonRandRange
	mov r6, r0
	cmp r6, r5
	movge r6, r5
	mov r8, #0
	b _02308258
_0230814C:
	mov r0, r5
	bl DungeonRandInt
	mov r3, #0
	mov r4, r0
	add r2, sp, #0x10
	mov r0, r3
	b _02308188
_02308168:
	lsl r1, r4, #2
	ldrsh r1, [r2, r1]
	cmp r1, #0
	bne _02308190
	add r4, r4, #1
	cmp r4, r5
	movge r4, r0
	add r3, r3, #1
_02308188:
	cmp r3, r5
	blt _02308168
_02308190:
	add r0, sp, #0x10
	lsl r1, r4, #2
	ldrsh r7, [r0, r1]
	cmp r7, #0
	beq _02308260
	mov r0, #1
	bl GetMonsterIdToSpawn
	add r1, sp, #0x10
	mov r3, #0
	strh r0, [sp]
	add r0, r1, r4, lsl #2
	ldrsh r2, [r0, #2]
	mov r1, #1
	ldrsh r0, [sp]
	strh r3, [sp, #8]
	strb r3, [sp, #2]
	str r3, [sp, #4]
	strb r1, [sp, #0xe]
	strh r7, [sp, #0xa]
	strh r2, [sp, #0xc]
	bl MewSpawnCheck
	cmp r0, #0
	beq _02308254
	add r0, sp, #0
	mov r1, #0
	bl SpawnMonster
	mov r4, r0
	bl EntityIsValid
	cmp r0, #0
	beq _02308254
	mov r0, #0xc800
	str r0, [r4, #0x1c]
	mov sl, #0
	mov sb, #0xaa
	mov r7, #0x57
	b _02308244
_02308220:
	ldr r0, [r4, #0x1c]
	mov r1, sb
	bl FUN_02001A54
	str r0, [r4, #0x1c]
	cmp r0, #0x100
	blt _0230824C
	mov r0, r7
	bl AdvanceFrame
	add sl, sl, #1
_02308244:
	cmp sl, #0x64
	blt _02308220
_0230824C:
	mov r0, #0
	str r0, [r4, #0x1c]
_02308254:
	add r8, r8, #1
_02308258:
	cmp r8, r6
	blt _0230814C
_02308260:
	mov r0, #1
	bl ov29_022E38E0
_02308268:
	add sp, sp, #0x1a0
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02308270: .4byte 0x02353538
_02308274: .4byte 0x022C4560
_02308278: .4byte 0x022C4660
	arm_func_end ov29_02307F4C

	arm_func_start EntityIsValid
EntityIsValid: @ 0x0230827C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ov29_023082A0
ov29_023082A0: @ 0x023082A0
	push {r3, lr}
	ldr r1, [r0, #0xb4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	movne r0, #0
	popne {r3, pc}
	ldrb r0, [r1, #0xa8]
	bl FUN_02058C3C
	pop {r3, pc}
	arm_func_end ov29_023082A0

	arm_func_start ov29_023082C4
ov29_023082C4: @ 0x023082C4
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #6]
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	bl GetLeader
	movs r4, r0
	beq _02308338
	ldr r0, [r4, #0xb4]
	ldrb r0, [r0, #0xd8]
	cmp r0, #2
	moveq r0, #0
	popeq {r3, r4, r5, pc}
	mov r2, #0
	mov r0, r5
	mov r1, r4
	mov r3, r2
	bl ov29_0230175C
	cmp r0, #0
	movne r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl CanTargetEntity
	cmp r0, #0
	movne r0, r4
	popne {r3, r4, r5, pc}
_02308338:
	mov r0, #0
	pop {r3, r4, r5, pc}
	arm_func_end ov29_023082C4

	arm_func_start RunMonsterAi
RunMonsterAi: @ 0x02308340
	push {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xb4]
	ldrh r1, [r4]
	tst r1, #0x8000
	beq _02308374
	ldrb r1, [r4, #0xc4]
	cmp r1, #6
	popne {r3, r4, r5, pc}
	mov r1, r5
	mov r2, #1
	bl EndFrozenClassStatus
	pop {r3, r4, r5, pc}
_02308374:
	mov r1, #0
	strb r1, [r4, #0x10c]
	ldrb r1, [r4, #0xbc]
	cmp r1, #6
	bls _02308394
	bl ov29_022EF9EC
	cmp r0, #0
	popeq {r3, r4, r5, pc}
_02308394:
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	ldrbne r0, [r4, #0x109]
	cmpne r0, #0
	beq _023083F0
	mov r0, r5
	bl ov29_02300B40
	cmp r0, #0
	beq _023083DC
	mov r0, #0
	mov r1, r5
	mov r2, r0
	strb r0, [r4, #0x109]
	bl SubstitutePlaceholderStringTags
	ldr r1, _023085D4 @ =0x00000DED
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, pc}
_023083DC:
	mov r0, r5
	bl ov29_0230E914
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	popne {r3, r4, r5, pc}
_023083F0:
	mov r0, r5
	bl HasStatusThatPreventsActing
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	bl ov29_022FB538
	add r0, r4, #0x4a
	bl ClearMonsterActionFields
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	bne _02308450
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	ldrsh r1, [r5, #4]
	add r0, r4, #0x100
	strh r1, [r0, #0x7e]
	ldrsh r1, [r5, #6]
	sub r1, r1, #1
	strh r1, [r0, #0x80]
	pop {r3, r4, r5, pc}
_02308450:
	mov r0, r5
	bl ov29_0230E914
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	popne {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0x15
	bl IqSkillIsEnabled
	cmp r0, #0
	bne _02308510
	mov r0, r5
	bl FUN_01FFB658
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	popne {r3, r4, r5, pc}
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	bne _023084A8
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	pop {r3, r4, r5, pc}
_023084A8:
	ldrsh r0, [r4, #2]
	bl FUN_020528B4
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #1
	bl FUN_01FFA3C4
	ldrb r0, [r4, #6]
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #0x17
	bl IqSkillIsEnabled
	cmp r0, #0
	popeq {r3, r4, r5, pc}
	ldrh r0, [r4, #0x4a]
	cmp r0, #1
	pophi {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _023085D8 @ =0x00000DEE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
	pop {r3, r4, r5, pc}
_02308510:
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	bne _0230852C
	ldrsh r1, [r4, #2]
	add r0, r4, #0x4a
	bl SetActionPassTurnOrWalk
	pop {r3, r4, r5, pc}
_0230852C:
	ldrsh r0, [r4, #2]
	bl FUN_020528B4
	cmp r0, #0
	beq _02308548
	mov r0, r5
	mov r1, #1
	bl FUN_01FFA3C4
_02308548:
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	cmpne r0, #1
	popne {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_01FFB658
	ldrsh r0, [r4, #2]
	bl FUN_020528B4
	cmp r0, #0
	ldrbne r0, [r4, #6]
	cmpne r0, #0
	beq _023085B4
	mov r0, r5
	mov r1, #0x17
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023085B4
	ldrh r0, [r4, #0x4a]
	cmp r0, #1
	bhi _023085B4
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldr r1, _023085D8 @ =0x00000DEE
	mov r0, r5
	bl LogMessageByIdWithPopupCheckUser
_023085B4:
	ldrh r0, [r4, #0x4a]
	cmp r0, #0
	cmpne r0, #1
	movne r0, #0
	strbne r0, [r4, #0x7d]
	strbne r0, [r4, #0x14e]
	strbne r0, [r4, #0x151]
	pop {r3, r4, r5, pc}
	.align 2, 0
_023085D4: .4byte 0x00000DED
_023085D8: .4byte 0x00000DEE
	arm_func_end RunMonsterAi

	arm_func_start ov29_023085DC
ov29_023085DC: @ 0x023085DC
	push {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0
	ldr r4, [r5, #0xb4]
	beq _02308618
	ldrb r1, [r4, #0xd0]
	cmp r1, #4
	bne _02308618
	ldrb r1, [r4, #0x4c]
	add r2, r1, #4
	and r1, r2, #0xff
	and r1, r1, #7
	strb r1, [r4, #0x4c]
	bl UpdateAiTargetPos
	pop {r3, r4, r5, pc}
_02308618:
	ldrb r0, [r4, #0xd0]
	cmp r0, #2
	popne {r3, r4, r5, pc}
	mov r0, #8
	bl DungeonRandInt
	strb r0, [r4, #0x4c]
	mov r0, r5
	bl UpdateAiTargetPos
	pop {r3, r4, r5, pc}
	arm_func_end ov29_023085DC

	arm_func_start ov29_0230863C
ov29_0230863C: @ 0x0230863C
	push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldr r7, [sp, #0x68]
	ldrsh r4, [sp, #0x6c]
	ldr r6, [sp, #0x74]
	str r7, [sp]
	stmib sp, {r4, r6}
	mov r8, r2
	mov sl, r0
	mov sb, r1
	bl ApplyDamage
	cmp r0, #0
	ldrbeq r0, [r8, #0x10]
	cmpeq r0, #0
	bne _02308F68
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	beq _02308F68
	mov r0, sb
	bl EntityIsValid
	cmp r0, #0
	beq _02308F68
	ldr r0, [sl]
	cmp r0, #1
	ldreq r0, [sb]
	cmpeq r0, #1
	bne _02308F68
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd2]
	cmp r0, #0xc
	bne _023086D4
	ldr r1, _02308F70 @ =0x02352AEC
	mov r0, sl
	ldr r2, [r1]
	mov r1, sb
	mov r3, #1
	bl BoostOffensiveStat
_023086D4:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _02308F68
	mov r0, sb
	bl ov29_02300D50
	cmp r0, #0
	ldreq r0, [sb, #0xb4]
	ldrbeq r0, [r0, #0xd2]
	cmpeq r0, #0
	movne r0, #0
	bne _02308F64
	mov r0, sl
	mov r1, #0x29
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _02308730
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F74 @ =0x022C442C
	ldrsh r1, [r1]
	cmp r0, r1
	movlt r0, #0
	blt _02308F64
_02308730:
	ldrb r0, [r8, #0xd]
	bl ov29_0231EA30
	cmp r0, #0
	bne _02308778
	cmp sl, sb
	beq _02308778
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _02308778
	ldrsh r1, [sl, #6]
	ldrsh r0, [sb, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	ble _02308780
_02308778:
	mov r0, #0
	b _023087B4
_02308780:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xd
	bne _023087A8
	mov r0, sb
	mov r1, sl
	bl ov29_022E5E84
	mov r0, sb
	mov r1, sl
	bl ov29_0231EDFC
_023087A8:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
_023087B4:
	cmp r0, #0
	movne r0, #1
	bne _02308F64
	ldrb r0, [r8, #0xd]
	bl ov29_0231EA30
	mov r4, r0
	cmp sl, sb
	mov r5, #0
	beq _02308808
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _02308808
	ldrsh r1, [sl, #6]
	ldrsh r0, [sb, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	ble _02308810
_02308808:
	mov r0, #0
	b _02308A28
_02308810:
	add r0, sp, #0x2c
	bl ResetDamageDesc
	ldr r0, [sb, #0xb4]
	cmp r4, #0
	ldrb r0, [r0, #0xd5]
	bne _023088E4
	cmp r0, #4
	bne _0230883C
	mov r0, sb
	bl ov29_022E3F24
	add r5, r5, #4
_0230883C:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xa
	bne _02308858
	mov r0, sb
	bl ov29_022E3F24
	add r5, r5, #1
_02308858:
	mov r0, sb
	mov r1, #0x20
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	mov r0, sb
	mov r1, #0x23
	addne r5, r5, #4
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	mov r0, sb
	mov r1, #0x31
	addne r5, r5, #1
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023088B0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F78 @ =0x022C44C0
	lsl r0, r0, #0x10
	ldrsh r1, [r1]
	cmp r1, r0, asr #16
	addgt r5, r5, #4
_023088B0:
	mov r0, sb
	mov r1, #0x27
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _023088F8
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F7C @ =0x022C4464
	lsl r0, r0, #0x10
	ldrsh r1, [r1]
	cmp r1, r0, asr #16
	addgt r5, r5, #1
	b _023088F8
_023088E4:
	cmp r0, #8
	bne _023088F8
	mov r0, sb
	bl ov29_022E40C0
	add r5, r5, #4
_023088F8:
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xf
	bne _02308914
	mov r0, sb
	bl ov29_022E57D4
	add r5, r5, #2
_02308914:
	mov r0, sl
	mov r1, sb
	mov r2, #0x12
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	addne r5, r5, #2
	cmp r5, #0
	beq _02308A1C
	ldr r2, _02308F80 @ =0x00000C3F
	mov r0, sl
	mov r1, sb
	bl LogMessageByIdWithPopupCheckUserTarget
	ldr r0, [r8]
	mov r1, #6
	mul r2, r0, r5
	asr r0, r2, #1
	add r0, r2, r0, lsr #30
	asr r0, r0, #2
	str r0, [sp, #0x2c]
	ldrb r2, [r8, #0xc]
	mov r0, #2
	mov r3, #0
	strb r2, [sp, #0x38]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	ldrb r0, [r8, #0xd]
	strb r0, [sp, #0x39]
	strb r3, [sp, #0x3a]
	strb r3, [sp, #0x3b]
	strb r3, [sp, #0x3c]
	ldr r0, [sb, #0xb4]
	ldrb r0, [r0, #0xd5]
	cmp r0, #0xf
	bne _023089FC
	mov r2, #1
	add r1, sp, #0xc
	mov r0, sb
	strb r2, [sp, #0x39]
	bl ov29_023380FC
	mov fp, r0
	ldrsh r5, [sp, #0x6c]
	mov r4, #0
	b _023089F0
_023089C4:
	str r7, [sp]
	stmib sp, {r5, r6}
	add r0, sp, #0xc
	ldr r1, [r0, r4, lsl #2]
	mov r0, sb
	add r2, sp, #0x2c
	mov r3, #0
	bl ApplyDamage
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_023089F0:
	cmp r4, fp
	blt _023089C4
	b _02308A1C
_023089FC:
	ldrsh r0, [sp, #0x6c]
	str r7, [sp]
	add r2, sp, #0x2c
	str r0, [sp, #4]
	mov r0, sb
	mov r1, sl
	str r6, [sp, #8]
	bl ApplyDamage
_02308A1C:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
_02308A28:
	cmp r0, #0
	movne r0, #1
	bne _02308F64
	cmp sl, sb
	beq _02308A6C
	ldrsh r1, [sl, #4]
	ldrsh r0, [sb, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _02308A6C
	ldrsh r1, [sl, #6]
	ldrsh r0, [sb, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	ble _02308A74
_02308A6C:
	mov r0, #0
	b _02308ECC
_02308A74:
	ldrb r0, [r8, #0xd]
	bl ov29_0231EA30
	mov r4, r0
	mov r0, sb
	mov r1, #0xb
	ldr r6, [sl, #0xb4]
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _02308B04
	cmp r4, #0
	bne _02308B04
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F84 @ =0x022C45B4
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308B04
	mov r0, #0x12c
	bl DungeonRandInt
	cmp r0, #0x64
	mov r2, #0xb
	bge _02308AE0
	mov r0, sl
	mov r1, sb
	mov r3, #0x40
	bl ov29_0230F728
	b _02308B04
_02308AE0:
	cmp r0, #0xc8
	mov r0, sl
	mov r1, sb
	bge _02308AFC
	mov r3, #0x10
	bl ov29_0230F728
	b _02308B04
_02308AFC:
	mov r3, #0x80
	bl ov29_0230F728
_02308B04:
	ldr r5, _02308F88 @ =0x023535DC
	b _02308B54
_02308B0C:
	ldrb r1, [r5]
	mov r0, sb
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _02308B50
	ldr r3, [r5, #8]
	mov r0, sl
	mov r1, sb
	mov r2, r4
	blx r3
	cmp r0, #0
	beq _02308B50
	ldrb r2, [r5]
	ldr r3, [r5, #4]
	mov r0, sl
	mov r1, sb
	bl ov29_0230F728
_02308B50:
	add r5, r5, #0x10
_02308B54:
	ldrb r0, [r5]
	cmp r0, #0
	bne _02308B0C
	mov r0, sb
	mov r1, #0x1b
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _02308BB0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F8C @ =0x022C45B0
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308BB0
	mov r0, sb
	bl HasLowHealth
	cmp r0, #0
	beq _02308BB0
	mov r0, sl
	mov r1, sb
	mov r2, #0x1b
	mov r3, #0x40000
	bl ov29_0230F728
_02308BB0:
	mov r0, sl
	mov r1, sb
	mov r2, #5
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308C38
	ldrb r0, [r6, #0xf7]
	mov r5, #0
	cmp r0, #1
	beq _02308C00
	mov r0, sl
	mov r1, #0xa
	bl ov29_02301EAC
	cmp r0, #0
	bne _02308C00
	mov r0, sl
	bl LevitateIsActive
	cmp r0, #0
	beq _02308C0C
_02308C00:
	bl GravityIsActive
	cmp r0, #0
	moveq r5, #1
_02308C0C:
	cmp r5, #0
	bne _02308C38
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F90 @ =0x022C4564
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #1
	strhlt r1, [r0, #0x92]
_02308C38:
	mov r0, sl
	mov r1, sb
	mov r2, #0xa
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308C88
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F94 @ =0x022C468C
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308C88
	add r0, r6, #0x100
	ldrh r3, [r0, #0x92]
	ldr r1, _02308F98 @ =0x0237CA6D
	mov r2, #0
	orr r3, r3, #2
	strh r3, [r0, #0x92]
	strb r2, [r1]
_02308C88:
	mov r0, sl
	mov r1, sb
	mov r2, #0x17
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308CDC
	mov r0, sl
	mov r1, #0x11
	bl MonsterIsType
	cmp r0, #0
	beq _02308CDC
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308F9C @ =0x022C4460
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #4
	strhlt r1, [r0, #0x92]
_02308CDC:
	mov r0, sl
	mov r1, sb
	mov r2, #0x20
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308D24
	cmp r4, #0
	bne _02308D24
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FA0 @ =0x022C4550
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #8
	strhlt r1, [r0, #0x92]
_02308D24:
	mov r0, sl
	mov r1, sb
	mov r2, #0x27
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308D64
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FA4 @ =0x022C45C0
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #0x20
	strhlt r1, [r0, #0x92]
_02308D64:
	mov r0, sl
	mov r1, sb
	mov r2, #0x3d
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308DE0
	cmp r4, #0
	bne _02308DE0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FA8 @ =0x022C45AC
	ldrsh r1, [r1]
	cmp r0, r1
	bge _02308DE0
	mov r0, #3
	bl DungeonRandInt
	cmp r0, #1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #0x40
	strhlt r1, [r0, #0x92]
	blt _02308DE0
	cmp r0, #2
	add r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #0x10
	strhlt r1, [r0, #0x92]
	ldrhge r1, [r0, #0x92]
	orrge r1, r1, #0x80
	strhge r1, [r0, #0x92]
_02308DE0:
	mov r0, sl
	mov r1, sb
	mov r2, #0x3e
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308E20
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FAC @ =0x022C467C
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #0x100
	strhlt r1, [r0, #0x92]
_02308E20:
	mov r0, sl
	mov r1, sb
	mov r2, #0x44
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308E80
	ldr r1, [sb, #0xb4]
	ldrsh r0, [r6, #2]
	ldrsh r1, [r1, #2]
	bl FUN_02054EC8
	cmp r0, #0
	beq _02308E80
	cmp r4, #0
	bne _02308E80
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FB0 @ =0x022C4524
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #0x200
	strhlt r1, [r0, #0x92]
_02308E80:
	mov r2, #1
	mov r0, sl
	mov r1, sb
	mov r3, r2
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02308EC0
	mov r0, #0x64
	bl DungeonRandInt
	ldr r1, _02308FB4 @ =0x022C4638
	ldrsh r1, [r1]
	cmp r0, r1
	addlt r0, r6, #0x100
	ldrhlt r1, [r0, #0x92]
	orrlt r1, r1, #0x400
	strhlt r1, [r0, #0x92]
_02308EC0:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
_02308ECC:
	cmp r0, #0
	movne r0, #1
	bne _02308F64
	ldr r0, [sb, #0xb4]
	ldrb r1, [r0, #0xe0]
	cmp r1, #2
	bne _02308F4C
	ldr r1, _02308FB8 @ =0x02353538
	ldrb r2, [r0, #0xe8]
	ldr r1, [r1]
	add r1, r1, r2, lsl #2
	add r1, r1, #0x12000
	ldr r4, [r1, #0xb78]
	cmp r4, #0
	moveq r1, #0
	strbeq r1, [r0, #0xe0]
	beq _02308F4C
	ldr r1, [r4, #0xb4]
	ldr r2, [r0, #0xe4]
	ldr r1, [r1, #0xb0]
	cmp r2, r1
	movne r1, #0
	strbne r1, [r0, #0xe0]
	bne _02308F4C
	mov r0, r4
	mov r1, sb
	bl ov29_022E45D0
	ldr r1, [r8]
	mov r0, r4
	mov r2, #0xc
	mov r3, #0x238
	bl ov29_0230D11C
_02308F4C:
	mov r0, sl
	mov r1, sb
	bl ov29_0230D654
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
_02308F64:
	cmp r0, #0
_02308F68:
	add sp, sp, #0x40
	pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02308F70: .4byte 0x02352AEC
_02308F74: .4byte 0x022C442C
_02308F78: .4byte 0x022C44C0
_02308F7C: .4byte 0x022C4464
_02308F80: .4byte 0x00000C3F
_02308F84: .4byte 0x022C45B4
_02308F88: .4byte 0x023535DC
_02308F8C: .4byte 0x022C45B0
_02308F90: .4byte 0x022C4564
_02308F94: .4byte 0x022C468C
_02308F98: .4byte 0x0237CA6D
_02308F9C: .4byte 0x022C4460
_02308FA0: .4byte 0x022C4550
_02308FA4: .4byte 0x022C45C0
_02308FA8: .4byte 0x022C45AC
_02308FAC: .4byte 0x022C467C
_02308FB0: .4byte 0x022C4524
_02308FB4: .4byte 0x022C4638
_02308FB8: .4byte 0x02353538
	arm_func_end ov29_0230863C

	arm_func_start EntityIsValid
EntityIsValid: @ 0x02308FBC
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end EntityIsValid

	arm_func_start ApplyDamage
ApplyDamage: @ 0x02308FE0
	push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x64
	ldr r5, [sp, #0x8c]
	mov sb, #0
	mov r6, r2
	mov r7, r1
	strb sb, [r6, #0x10]
	ldr r1, [r7]
	mov r8, r0
	str r3, [sp, #0x10]
	mov fp, sb
	str sb, [sp, #0x14]
	cmp r1, #1
	bne _0230902C
	ldr r0, [r7, #0xb4]
	ldrb r0, [r0, #0xbc]
	bl ov29_022EFB04
	cmp r0, #0
	beq _0230903C
_0230902C:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_0230903C:
	ldr r4, [r7, #0xb4]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230905C
	ldrb r0, [r4, #8]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x14]
_0230905C:
	mov r0, r8
	mov r1, r7
	bl ov29_02307BDC
	mov r0, r8
	mov r1, r7
	bl ov29_0230D440
	ldr r0, [r8]
	cmp r0, #1
	ldreq r0, [r8, #0xb4]
	ldrbeq r0, [r0, #0xec]
	cmpeq r0, #3
	ldrbeq r0, [r6, #0xf]
	cmpeq r0, #0
	ldreq r0, _02309F98 @ =0x022C4598
	ldrsheq r0, [r0]
	streq r0, [r6]
	ldr r0, [r8]
	cmp r0, #1
	bne _02309134
	mov r0, r8
	mov r1, r7
	mov r2, #0x73
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	ldrne r0, [r6, #4]
	cmpne r0, #4
	cmpne r0, #0xe
	cmpne r0, #0
	cmpne r0, #0x17
	beq _023091A4
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02309F9C @ =0x00000C46
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	bl ov29_022E272C
	cmp r0, #0
	beq _02309124
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309124
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
_02309124:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309134:
	cmp r0, #6
	bne _023091A4
	mov r0, r7
	mov r1, #0x73
	bl AbilityIsActive
	cmp r0, #0
	ldrne r0, [r6, #4]
	cmpne r0, #4
	cmpne r0, #0xe
	cmpne r0, #0x17
	beq _023091A4
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r1, _02309F9C @ =0x00000C46
	mov r0, r7
	bl LogMessageByIdWithPopupCheckUser
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309194
	mov r0, r7
	bl ov29_022E57A0
_02309194:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023091A4:
	ldr r0, _02309FA0 @ =0x0000024D
	cmp r5, r0
	beq _02309224
	ldr r0, [r8]
	cmp r0, #1
	bne _02309224
	mov r0, r8
	mov r1, r7
	mov r2, #0xd
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02309224
	ldr r1, [r6]
	ldr r0, _02309FA4 @ =0x0000270F
	cmp r1, r0
	bne _02309224
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	mov r1, r7
	mov r2, #0xc40
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309224:
	ldrb r0, [r4, #0xc4]
	cmp r0, #1
	bne _02309274
	cmp r5, #0x250
	beq _02309264
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r2, _02309FA8 @ =0x00000C41
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
_02309264:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309274:
	ldrb r0, [r4, #0xbd]
	cmp r0, #1
	cmpne r0, #5
	cmpne r0, #3
	bne _0230929C
	ldrb r0, [r4, #0xbe]
	cmp r0, #0x7f
	bne _0230929C
	mov r0, r7
	bl ov29_02307C48
_0230929C:
	ldr r0, [r8]
	cmp r0, #1
	bne _023093D8
	mov r0, r8
	mov r1, r7
	mov r2, #0x23
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _023092F8
	ldrb r0, [r6, #0xc]
	cmp r0, #5
	bne _023092F8
	mov r3, #0
	str r3, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	bl TryIncreaseHp
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023092F8:
	mov r0, r8
	mov r1, r7
	mov r2, #0x24
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02309348
	ldrb r0, [r6, #0xc]
	cmp r0, #3
	bne _02309348
	mov r3, #0
	str r3, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	bl TryIncreaseHp
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309348:
	mov r0, r8
	mov r1, r7
	mov r2, #0x55
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _02309398
	ldrb r0, [r6, #0xc]
	cmp r0, #3
	bne _02309398
	mov r3, #0
	str r3, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	bl TryIncreaseHp
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309398:
	mov r0, r8
	mov r1, r7
	mov r2, #0x66
	mov r3, #1
	bl DefenderAbilityIsActive
	cmp r0, #0
	beq _023093D8
	ldrb r0, [r6, #0xc]
	cmp r0, #5
	bne _023093D8
	mov r0, r7
	bl ov29_0231B060
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023093D8:
	ldr sl, _02309FAC @ =0x023528A4
	b _0230944C
_023093E0:
	ldrb r0, [r6, #0xc]
	cmp r1, r0
	bne _02309448
	ldr r1, [sl, #4]
	mov r0, r8
	and r2, r1, #0xff
	str r2, [sp]
	mov r2, #0
	mov r1, r7
	mov r3, r2
	bl ov29_02314D40
	cmp r0, #0
	beq _02309448
	ldr r0, [sl, #4]
	cmp r0, #0x71
	mov r0, #1
	strble r0, [r6, #0x10]
	ble _02309440
	str r0, [sp]
	ldr r2, [r6]
	mov r0, r8
	mov r1, r7
	mov r3, #0
	bl TryIncreaseHp
_02309440:
	mov r0, #0
	b _0230945C
_02309448:
	add sl, sl, #8
_0230944C:
	ldrb r1, [sl]
	cmp r1, #0x12
	bne _023093E0
	mov r0, #1
_0230945C:
	cmp r0, #0
	bne _023094D8
	ldrb r0, [r6, #0x10]
	cmp r0, #0
	beq _023094C8
	ldr r0, [r8]
	cmp r0, #1
	bne _023094AC
	mov r0, r8
	bl ov29_022E272C
	cmp r0, #0
	beq _023094C8
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _023094C8
	mov r0, r8
	mov r1, r7
	bl ov29_022FB98C
	b _023094C8
_023094AC:
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _023094C8
	mov r0, r8
	mov r1, r7
	bl ov29_022FB98C
_023094C8:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_023094D8:
	ldr r0, [r6]
	cmp r0, #0
	ble _02309520
	mov r0, r7
	mov r1, #0x51
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _02309520
	ldr r0, _02309FB0 @ =0x022C45C4
	ldrsh r0, [r0]
	bl DungeonRandOutcome
	cmp r0, #0
	beq _02309520
	mov r0, r7
	mov r1, r7
	mov r2, #1
	mov r3, #0
	bl ov29_02317E88
_02309520:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _023095A0
	ldrb r0, [r6, #0xe]
	cmp r0, #0
	beq _02309548
	ldr r2, _02309FB4 @ =0x00000C42
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309548:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _02309568
	cmp r0, #1
	beq _0230957C
	cmp r0, #3
	beq _02309590
	b _023095A0
_02309568:
	ldr r2, _02309FB8 @ =0x00000C43
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023095A0
_0230957C:
	ldr r2, _02309FBC @ =0x00000C44
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _023095A0
_02309590:
	ldr r2, _02309FC0 @ =0x00000C45
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_023095A0:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r1, [r6]
	cmp r1, #0
	bne _02309650
	mov r0, r8
	bl ov29_022E272C
	cmp r0, #0
	beq _02309618
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309618
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309608
	ldr r2, _02309FC4 @ =0x00000C47
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309608:
	mov r0, r8
	mov r1, r7
	bl ov29_022E576C
	b _02309640
_02309618:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309634
	ldr r2, _02309FC4 @ =0x00000C47
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309634:
	mov r0, #0x1e
	mov r1, #0x18
	bl ov29_022EA370
_02309640:
	mov r0, #1
	strb r0, [r6, #0x10]
	mov r0, #0
	b _0230A918
_02309650:
	ldr r0, _02309FA4 @ =0x0000270F
	cmp r1, r0
	bne _02309740
	ldr r0, [sp, #0x90]
	cmp r0, #0
	beq _02309718
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _02309718
	mov r0, r7
	bl GetTileAtEntity
	mov r2, #0
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	add r1, r1, #0x2b4
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov fp, r0
	mov r0, r7
	mov r3, #3
	bl ov29_022E35E4
	lsl r0, r0, #0x10
	asr sl, r0, #0x10
	mvn r1, #0
	cmp sl, r1
	ldr r0, _02309FC8 @ =0x023535D4
	strh r1, [r0]
	beq _02309718
	b _023096D4
_023096CC:
	mov r0, #0x18
	bl AdvanceFrame
_023096D4:
	mov r0, sl
	bl FUN_022BF964
	cmp r0, #0
	bne _023096CC
	mov r0, sl
	bl FUN_022BDE50
	mov r2, #0
	str r2, [sp]
	mov r0, #1
	stmib sp, {r0, r2}
	ldr r1, _02309FCC @ =0x000002B6
	mov r0, r7
	mov r3, #3
	str r2, [sp, #0xc]
	bl ov29_022E35E4
	ldr r1, _02309FC8 @ =0x023535D4
	strh r0, [r1]
_02309718:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309734
	ldr r2, _02309FD0 @ =0x00000C48
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
_02309734:
	ldr r0, _02309FD4 @ =0x000003E7
	str r0, [r4, #0xb8]
	b _02309808
_02309740:
	mov r0, #0
	bl ov29_0234B09C
	ldr r1, [r6, #4]
	ldr r2, [r4, #0xb8]
	cmp r1, #0x1b
	ldrlt r0, _02309FD8 @ =0x02353330
	movge sl, #0
	lsllt r1, r1, #1
	ldrhlt sl, [r0, r1]
	ldr r1, [r6]
	ldr r0, _02309FD4 @ =0x000003E7
	add r1, r2, r1
	str r1, [r4, #0xb8]
	cmp r1, r0
	strgt r0, [r4, #0xb8]
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _023097E4
	ldr r0, [r6, #4]
	cmp r0, #0xe
	cmpne r0, #0x17
	ldrne r0, _02309FDC @ =0x0000025F
	cmpne r5, r0
	beq _023097BC
	ldr r0, [r6]
	mov r2, #1
	mov r1, r7
	rsb r0, r0, #0
	sub r3, r2, #2
	bl ov29_022EA718
_023097BC:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309808
	cmp sl, #0
	beq _02309808
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309808
_023097E4:
	ldrb r0, [r4, #0x15c]
	cmp r0, #0
	bne _02309808
	cmp sl, #0
	beq _02309808
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl LogMessageByIdWithPopupCheckUserTarget
_02309808:
	ldr r0, [r6, #4]
	cmp r0, #0xe
	bne _02309820
	ldrsh r0, [r4, #0x10]
	cmp r0, #1
	bgt _0230991C
_02309820:
	cmp fp, #0
	bne _0230991C
	mov r0, r7
	bl ov29_022E272C
	cmp r0, #0
	beq _0230991C
	ldrsh r1, [r8, #4]
	ldrsh r0, [r7, #4]
	cmp r1, r0
	ldrsheq r1, [r8, #6]
	ldrsheq r0, [r7, #6]
	cmpeq r1, r0
	beq _023098EC
	ldr r0, [r8]
	cmp r0, #1
	bne _023098EC
	ldrb r0, [r4, #7]
	mov sl, #0
	cmp r0, #0
	beq _023098A0
	bl FUN_0204AF00
	cmp r0, #0
	beq _023098A0
	mov r0, r7
	bl ov29_022F9AF4
	cmp r0, #0
	bne _023098A0
	mov r0, r7
	mov r1, r8
	bl ov29_022E274C
	cmp r0, #0
	movne sl, #1
_023098A0:
	ldrb r0, [r4, #0xf1]
	cmp r0, #2
	beq _023098C0
	mov r0, r7
	mov r1, #1
	bl IsBlinded
	cmp r0, #0
	beq _023098C4
_023098C0:
	mov sl, #0
_023098C4:
	cmp sl, #0
	beq _023098E4
	add r0, r7, #4
	add r1, r8, #4
	ldr sl, [r7, #0xb4]
	bl GetDirectionTowardsPosition
	and r0, r0, #7
	strb r0, [sl, #0x4c]
_023098E4:
	mov r0, r7
	bl UpdateAiTargetPos
_023098EC:
	ldr r0, _02309FDC @ =0x0000025F
	cmp r5, r0
	beq _0230991C
	ldr r1, [r7, #0xb4]
	mov r0, r7
	ldrb r2, [r1, #0x4c]
	mov r1, #6
	bl ov29_023049A8
	mov r0, r7
	mov r1, r6
	bl ov29_022E5478
	mov sb, #1
_0230991C:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230995C
	ldr r0, [r6]
	cmp r0, #0
	ble _0230995C
	ldr r0, [r8]
	cmp r0, #1
	ldreq r0, [r8, #0xb4]
	ldrbeq r0, [r0, #6]
	cmpeq r0, #0
	bne _0230995C
	ldrsh r0, [r4, #2]
	bl FUN_0204D1C4
	ldrsh r0, [r4, #2]
	bl FUN_0204FE58
_0230995C:
	ldrsh sl, [r4, #0x10]
	ldr r0, [r6]
	cmp sl, r0
	subgt r0, sl, r0
	movle r0, #0
	strh r0, [r4, #0x10]
	ldrb r0, [r4, #0xd5]
	cmp r0, #9
	bne _023099A8
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	bne _02309A28
	ldr r2, _02309FE0 @ =0x00000C49
	mov r3, #1
	mov r0, r8
	mov r1, r7
	strh r3, [r4, #0x10]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309A28
_023099A8:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _023099DC
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	bne _02309A28
	ldr r2, _02309FE4 @ =0x00000C4A
	mov r3, #1
	mov r0, r8
	mov r1, r7
	strh r3, [r4, #0x10]
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309A28
_023099DC:
	mov r0, r7
	mov r1, #0x22
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _02309A28
	ldr r0, _02309FE8 @ =0x022C4834
	ldr r0, [r0]
	bl DungeonRandOutcome
	cmp r0, #0
	beq _02309A28
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	bne _02309A28
	ldr r2, _02309FE0 @ =0x00000C49
	mov r3, #1
	mov r0, r8
	mov r1, r7
	strh r3, [r4, #0x10]
	bl LogMessageByIdWithPopupCheckUserTarget
_02309A28:
	bl ov29_022E81F8
	ldrsh r0, [r4, #0x10]
	subs sl, sl, r0
	movmi sl, #0
	cmp sb, #0
	cmpeq fp, #0
	beq _02309A50
	mov r0, #0xa
	mov r1, #0x18
	bl ov29_022EA370
_02309A50:
	mov r0, r7
	bl UpdateStatusIconFlags
	ldrsh r0, [r4, #0x10]
	cmp r0, #0
	beq _02309B20
	cmp sb, #0
	beq _02309A78
	mov r0, r7
	mov r1, #8
	bl ov29_02304A48
_02309A78:
	ldr r0, [r6, #4]
	cmp r0, #0xe
	beq _02309B04
	mov r0, r7
	mov r1, #0x17
	bl ItemIsActive
	cmp r0, #0
	beq _02309AC4
	cmp sl, #0
	ble _02309AC4
	ldr r1, [r6]
	ldr r0, _02309FA4 @ =0x0000270F
	cmp r1, r0
	beq _02309AC4
	ldr r1, _02309FEC @ =0x022C45FC
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	bl AddExpSpecial
_02309AC4:
	mov r0, r7
	mov r1, #0x50
	bl ExclusiveItemEffectIsActive
	cmp r0, #0
	beq _02309B04
	cmp sl, #0
	ble _02309B04
	ldr r1, [r6]
	ldr r0, _02309FA4 @ =0x0000270F
	cmp r1, r0
	beq _02309B04
	ldr r1, _02309FEC @ =0x022C45FC
	mov r0, r8
	ldrsh r2, [r1]
	mov r1, r7
	bl AddExpSpecial
_02309B04:
	cmp fp, #0
	beq _02309B18
	mov r0, r7
	bl ov29_0230D7D4
	bl ov29_02336F4C
_02309B18:
	mov r0, #0
	b _0230A918
_02309B20:
	ldr r0, _02309FDC @ =0x0000025F
	cmp r5, r0
	bne _02309B5C
	ldr r1, [r7, #0xb4]
	mov r0, r7
	ldrb r2, [r1, #0x4c]
	mov r1, #6
	bl ov29_023049A8
	mov r0, r7
	mov r1, r6
	bl ov29_022E5478
	mov r0, #0xa
	mov r1, #0x18
	bl ov29_022EA370
	mov sb, #1
_02309B5C:
	ldrb r0, [r4, #0xef]
	cmp r0, #2
	bne _02309B78
	mov r0, r8
	mov r1, r7
	mov r2, #0
	bl ov29_02306A00
_02309B78:
	cmp fp, #0
	beq _02309BA4
	mov r0, #0x14
	mov r1, #0x18
	bl ov29_022EA370
	mov r1, #2
	mov r0, r7
	strb r1, [r7, #0x22]
	bl ov29_0230D7D4
	bl ov29_02336F4C
	b _02309BC0
_02309BA4:
	cmp sb, #0
	beq _02309BC0
	mov r2, #1
	mov r0, #0x1e
	mov r1, #0x18
	strb r2, [r7, #0x22]
	bl ov29_022EA370
_02309BC0:
	mov r0, r8
	mov sb, #1
	bl EntityIsValid
	cmp r0, #0
	beq _02309BE8
	ldr r0, [r8]
	cmp r0, #1
	bne _02309BE8
	cmp r8, r7
	movne sb, #0
_02309BE8:
	mov r0, #0
	mov r1, r8
	mov r2, r0
	strb r0, [r4, #0x156]
	bl SubstitutePlaceholderStringTags
	mov r1, r7
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	ldr r0, [r6, #4]
	cmp r0, #0x13
	cmpne r0, #4
	cmpne r0, #0x14
	ldrb r0, [r4, #6]
	bne _02309C50
	cmp r0, #0
	beq _02309C40
	ldr r2, _02309FF0 @ =0x00000C4B
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309DC8
_02309C40:
	ldr r1, _02309FF0 @ =0x00000C4B
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309C50:
	cmp r0, #0
	beq _02309C98
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	bne _02309C7C
	ldr r0, _02309FF4 @ =0x02353220
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309C7C:
	ldr r0, _02309FF8 @ =0x0235321C
	lsl r1, sb, #1
	ldrh r2, [r0, r1]
	mov r0, r8
	mov r1, r7
	bl LogMessageByIdWithPopupCheckUserTarget
	b _02309DC8
_02309C98:
	ldrsh r0, [r4, #0xc]
	bl FUN_0205638C
	ldrb r1, [r4, #7]
	mov r6, r0
	cmp r1, #0
	bne _02309CD4
	ldrb r0, [r4, #0x48]
	bl JoinedAtRangeCheck2Veneer
	cmp r0, #0
	beq _02309CEC
	ldr r0, _02309FFC @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75c]
	cmp r0, #0
	bne _02309CEC
_02309CD4:
	ldr r0, _0230A000 @ =0x02353228
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309CEC:
	mov r0, r4
	bl IsExperienceLocked
	cmp r0, #0
	beq _02309D3C
	mov r0, r4
	bl IsSpecialStoryAlly
	cmp r0, #0
	beq _02309D24
	ldr r0, _0230A004 @ =0x02353234
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D24:
	ldr r0, _0230A008 @ =0x0235322C
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D3C:
	ldrb r0, [r4, #0xbc]
	cmp r0, #7
	bne _02309D60
	ldr r0, _02309FF4 @ =0x02353220
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D60:
	ldrsh r0, [r6, #8]
	bl IsMonsterIdInNormalRange
	cmp r0, #0
	beq _02309DB4
	ldr r0, _02309FFC @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x75d]
	cmp r0, #0
	beq _02309D9C
	ldr r0, _0230A00C @ =0x02353224
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309D9C:
	ldr r0, _0230A010 @ =0x02353230
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
	b _02309DC8
_02309DB4:
	ldr r0, _0230A014 @ =0x02353218
	lsl r1, sb, #1
	ldrh r1, [r0, r1]
	mov r0, r8
	bl LogMessageByIdWithPopup
_02309DC8:
	ldrb r0, [r4, #0xc4]
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02309DE4
	ldr r0, [r4, #0xb4]
	bl FreeOtherWrappedMonsters
_02309DE4:
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _02309F44
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _02309F44
	ldrb r0, [r4, #0x62]
	tst r0, #2
	ldrsheq r1, [r4, #0x66]
	ldreq r0, _0230A018 @ =0x00000153
	cmpeq r1, r0
	bne _02309F44
	mov r0, r7
	bl ov29_022E550C
	mov r0, #0
	strb r0, [r7, #0x22]
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02309FD4 @ =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x10]
	mov r2, #0
	strb r2, [r4, #0x162]
	mov r0, #1
	strb r0, [r4, #0x156]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x4c]
	strh r1, [r0, #0x48]
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrne r0, _02309FFC @ =0x02353538
	ldrne r1, [r0]
	strbne r2, [r1, #0x799]
	ldrne r0, [r0]
	strbne r2, [r0, #0x78d]
	add r0, r4, #0x62
	bl FUN_0200D81C
	ldrb r0, [r4, #0xd8]
	cmp r0, #3
	bne _02309EC0
	mov r0, r8
	mov r1, r7
	mov r2, #3
	mov r3, #1
	bl ov29_02306728
	b _02309EDC
_02309EC0:
	cmp r0, #2
	bne _02309EDC
	mov r0, r8
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl ov29_02306728
_02309EDC:
	mov r0, r7
	bl ov29_023159D4
	mov r0, r4
	mov r1, #0
	bl ov29_022FDDC0
	bl FUN_022BDC68
	mov r0, r7
	bl RestorePpAllMovesSetFlags
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #1
	mov r1, r7
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A01C @ =0x00000C4C
	bl LogMessageByIdWithPopup
	mov r0, r7
	bl ov29_0230D628
	mov r0, #0
	b _0230A918
_02309F44:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0230A224
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r1, #1
	moveq r1, #0
	tst r1, #0xff
	beq _0230A224
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	ldrsheq r1, [r4, #0x66]
	ldreq r0, _0230A020 @ =0x00000159
	cmpeq r1, r0
	bne _0230A224
	mov sl, #0
	mov sb, sl
	ldr r6, _02309FFC @ =0x02353538
	b _0230A090
	.align 2, 0
_02309F98: .4byte 0x022C4598
_02309F9C: .4byte 0x00000C46
_02309FA0: .4byte 0x0000024D
_02309FA4: .4byte 0x0000270F
_02309FA8: .4byte 0x00000C41
_02309FAC: .4byte 0x023528A4
_02309FB0: .4byte 0x022C45C4
_02309FB4: .4byte 0x00000C42
_02309FB8: .4byte 0x00000C43
_02309FBC: .4byte 0x00000C44
_02309FC0: .4byte 0x00000C45
_02309FC4: .4byte 0x00000C47
_02309FC8: .4byte 0x023535D4
_02309FCC: .4byte 0x000002B6
_02309FD0: .4byte 0x00000C48
_02309FD4: .4byte 0x000003E7
_02309FD8: .4byte 0x02353330
_02309FDC: .4byte 0x0000025F
_02309FE0: .4byte 0x00000C49
_02309FE4: .4byte 0x00000C4A
_02309FE8: .4byte 0x022C4834
_02309FEC: .4byte 0x022C45FC
_02309FF0: .4byte 0x00000C4B
_02309FF4: .4byte 0x02353220
_02309FF8: .4byte 0x0235321C
_02309FFC: .4byte 0x02353538
_0230A000: .4byte 0x02353228
_0230A004: .4byte 0x02353234
_0230A008: .4byte 0x0235322C
_0230A00C: .4byte 0x02353224
_0230A010: .4byte 0x02353230
_0230A014: .4byte 0x02353218
_0230A018: .4byte 0x00000153
_0230A01C: .4byte 0x00000C4C
_0230A020: .4byte 0x00000159
_0230A024:
	ldr r0, [r6]
	add r0, r0, sb, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	cmpne sl, r7
	beq _0230A08C
	mov r0, r7
	mov r1, sl
	bl ov29_022E274C
	cmp r0, #0
	beq _0230A08C
	ldrsh r1, [sl, #4]
	ldrsh r0, [r7, #4]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	bgt _0230A08C
	ldrsh r1, [sl, #6]
	ldrsh r0, [r7, #6]
	sub r0, r1, r0
	bl FUN_0208655C
	cmp r0, #1
	ble _0230A098
_0230A08C:
	add sb, sb, #1
_0230A090:
	cmp sb, #4
	blt _0230A024
_0230A098:
	cmp sb, #4
	beq _0230A224
	mov r0, r7
	bl ov29_022E550C
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	ldrh r2, [sl, #4]
	ldrh r1, [sl, #6]
	mov r0, sl
	strh r2, [sp, #0x18]
	strh r1, [sp, #0x1a]
	mov r2, r7
	mov r1, #0x260
	bl HandleFaint
	ldrsh r1, [sp, #0x18]
	ldrsh r2, [sp, #0x1a]
	mov r0, r7
	mov r3, #1
	bl ov29_022F85F0
	mov r0, r7
	mov r1, #0
	bl ov29_022E1A40
	mov r0, #0
	strb r0, [r7, #0x22]
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02309FD4 @ =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	mov r0, r7
	strh r1, [r4, #0x10]
	bl ov29_022E66D8
	mov r2, #0
	strb r2, [r4, #0x162]
	mov r0, #1
	strb r0, [r4, #0x156]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x4c]
	strh r1, [r0, #0x48]
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrne r0, _02309FFC @ =0x02353538
	ldrne r1, [r0]
	strbne r2, [r1, #0x799]
	ldrne r0, [r0]
	strbne r2, [r0, #0x78d]
	add r0, r4, #0x62
	bl FUN_0200D81C
	ldrb r0, [r4, #0xd8]
	cmp r0, #3
	bne _0230A190
	mov r0, r8
	mov r1, r7
	mov r2, #3
	mov r3, #1
	bl ov29_02306728
	b _0230A1AC
_0230A190:
	cmp r0, #2
	bne _0230A1AC
	mov r0, r8
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl ov29_02306728
_0230A1AC:
	mov r0, r7
	bl ov29_023159D4
	mov r0, r4
	mov r1, #0
	bl ov29_022FDDC0
	bl FUN_022BDC68
	mov r0, r7
	bl RestorePpAllMovesSetFlags
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r1, sl
	mov r0, #1
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A920 @ =0x00000C4D
	bl LogMessageByIdWithPopup
	mov r0, r7
	bl ov29_0230D628
	mov r0, #0
	b _0230A918
_0230A224:
	mov r0, r7
	mov r1, #0x16
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230A5E0
	ldrb r0, [r4, #0x62]
	mov r6, #0
	mov sb, r6
	tst r0, #1
	movne r0, #1
	moveq r0, r6
	tst r0, #0xff
	beq _0230A29C
	mov r0, r7
	mov r1, #0x6f
	bl AbilityIsActive
	cmp r0, #0
	bne _0230A29C
	ldrb r0, [r4, #0x62]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	bne _0230A29C
	ldrsh r0, [r4, #0x66]
	cmp r0, #0x49
	addeq r6, r4, #0x62
	beq _0230A29C
	cmp r0, #0x69
	addeq sb, r4, #0x62
_0230A29C:
	cmp r6, #0
	ldrbeq r0, [r4, #6]
	cmpeq r0, #0
	bne _0230A330
	ldr r0, _0230A924 @ =0x020AF6B8
	mov sl, #0
	ldr ip, [r0]
	mov lr, sl
	mov r1, #1
	mov r0, #6
	b _0230A328
_0230A2C8:
	mul r2, sl, r0
	ldr r3, [ip, #0x384]
	add fp, r3, r2
	ldrb r2, [r3, r2]
	tst r2, #1
	movne r3, r1
	moveq r3, lr
	tst r3, #0xff
	beq _0230A324
	tst r2, #8
	movne r2, #1
	moveq r2, #0
	tst r2, #0xff
	ldrbeq r2, [fp, #1]
	cmpeq r2, #0
	bne _0230A324
	ldrsh r2, [fp, #4]
	cmp r2, #0x49
	moveq r6, fp
	beq _0230A330
	cmp sb, #0
	cmpeq r2, #0x69
	moveq sb, fp
_0230A324:
	add sl, sl, #1
_0230A328:
	cmp sl, #0x32
	blt _0230A2C8
_0230A330:
	cmp r6, #0
	beq _0230A45C
	mov r0, r7
	bl ov29_022FBD24
	mov r0, r7
	bl ov29_022E550C
	mov r0, r6
	bl ov29_0230D688
	mov r0, #0
	strb r0, [r7, #0x22]
	ldrsh r2, [r4, #0x12]
	ldrsh r1, [r4, #0x16]
	ldr r0, _02309FD4 @ =0x000003E7
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	strh r1, [r4, #0x10]
	mov r2, #0
	strb r2, [r4, #0x162]
	mov r0, #1
	strb r0, [r4, #0x156]
	add r0, r4, #0x100
	ldrh r1, [r0, #0x4a]
	strh r1, [r0, #0x46]
	ldrh r1, [r0, #0x4c]
	strh r1, [r0, #0x48]
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrne r0, _02309FFC @ =0x02353538
	ldrne r1, [r0]
	strbne r2, [r1, #0x799]
	ldrne r0, [r0]
	strbne r2, [r0, #0x78d]
	ldrb r0, [r4, #0xd8]
	cmp r0, #3
	bne _0230A3D8
	mov r0, r8
	mov r1, r7
	mov r2, #3
	mov r3, #1
	bl ov29_02306728
	b _0230A3F4
_0230A3D8:
	cmp r0, #2
	bne _0230A3F4
	mov r0, r8
	mov r1, r7
	mov r2, #2
	mov r3, #1
	bl ov29_02306728
_0230A3F4:
	mov r0, r7
	bl ov29_023159D4
	mov r0, r4
	mov r1, #0
	bl ov29_022FDDC0
	bl FUN_022BDC68
	mov r0, r7
	bl RestorePpAllMovesSetFlags
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, r7
	bl UpdateStatusIconFlags
	mov r0, #1
	mov r1, r7
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A01C @ =0x00000C4C
	bl LogMessageByIdWithPopup
	mov r0, r7
	bl ov29_0230D628
	mov r0, #0
	b _0230A918
_0230A45C:
	ldr r0, _02309FFC @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0230A5E0
	cmp sb, #0
	beq _0230A5E0
	bl ov29_022EAF20
	ldrb r1, [r4, #0xd8]
	mov r6, r0
	cmp r1, #2
	bne _0230A4A0
	ldrb r2, [r4, #0xd8]
	mov r0, r7
	mov r1, r7
	mov r3, #0
	bl ov29_02306728
_0230A4A0:
	mov r0, #0
	mov r1, #0x69
	bl ov29_0234B084
	mov r0, #1
	mov r1, #0x49
	bl ov29_0234B084
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl SubstitutePlaceholderStringTags
	mov r0, #1
	bl ov29_022EFB20
	mov r0, r7
	bl ov29_022E550C
	mov r0, sb
	bl ov29_0230D688
	mov r0, #0
	strb r0, [r7, #0x22]
	mov r0, #1
	strb r0, [r4, #0x23d]
	mov r0, r7
	bl GetSleepAnimationId
	mov r1, r0
	mov r0, r7
	bl ov29_02304830
	mov r0, #1
	mov r1, r7
	mov r2, #0
	bl SubstitutePlaceholderStringTags
	mov r0, r8
	ldr r1, _0230A01C @ =0x00000C4C
	bl LogMessageByIdWithPopup
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_0234B1A4
	mov r0, #1
	bl ov29_022F0534
	ldr r0, _0230A928 @ =0x00000C6A
	bl ov29_022F0780
	mov r0, r7
	mov r1, #0xb
	bl ov29_02304830
	ldr r0, _0230A92C @ =0x00000C6B
	mov r1, r7
	mov r2, #0
	bl ov29_022F0604
	mov r0, #4
	bl ov29_022EAF34
	mov r0, r7
	bl ov29_022F0518
	mov r0, r7
	mov r1, #6
	bl ov29_02304830
	ldr r0, _0230A930 @ =0x00000C6C
	bl ov29_022F0780
	bl ov29_022F05E4
	mov r0, #1
	bl ov29_022EFB84
	mov r0, #1
	strb r0, [r7, #0x22]
	mov r0, #0
	strb r0, [r4, #0x23d]
	mov r0, r8
	ldr r1, _0230A934 @ =0x00000C6D
	bl LogMessageByIdWithPopup
	mov r0, #0xa
	bl ov29_0234BA54
	mov r0, #0
	bl ov29_022F0534
	ldr r0, _02309FFC @ =0x02353538
	ldr r0, [r0]
	add r0, r0, #0x4000
	ldrsh r0, [r0, #0xd6]
	bl ov29_022EAD00
	bl ov29_022EAE14
	mov r0, r6
	bl ov29_022EAF34
	mov r0, r7
	bl ov29_0230D628
_0230A5E0:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0230A69C
	ldrb r0, [r4, #0x62]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	tst r0, #0xff
	beq _0230A690
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230A67C
	mov r0, #9
	bl IsCurrentMissionType
	cmp r0, #0
	beq _0230A648
	mov r0, r4
	bl ov29_022FBDE0
	cmp r0, #0
	beq _0230A648
	ldrb r0, [r4, #0x62]
	tst r0, #0x40
	bicne r1, r0, #0x40
	andne r0, r1, #0xff
	orrne r0, r0, #0x80
	strbne r0, [r4, #0x62]
_0230A648:
	mov r0, r7
	add r1, r7, #4
	add r2, r4, #0x62
	mov r3, #1
	bl ov29_02345A3C
	cmp r0, #0
	beq _0230A684
	ldrb r0, [r4, #0x62]
	tst r0, #0x80
	beq _0230A684
	mov r0, #1
	bl ov29_0234969C
	b _0230A684
_0230A67C:
	add r0, r4, #0x62
	bl FUN_0200FB54
_0230A684:
	add r0, r4, #0x62
	bl FUN_0200D81C
	b _0230A69C
_0230A690:
	mov r0, r8
	mov r1, r7
	bl ov29_0230F9D8
_0230A69C:
	ldrb r0, [r4, #0x100]
	mov r6, #0
	cmp r0, #0
	ldrne r0, _02309FFC @ =0x02353538
	ldrne r1, _02309FD4 @ =0x000003E7
	ldrne r0, [r0]
	addne r0, r0, #0x700
	strhne r1, [r0, #0x96]
	ldr r0, [r8]
	cmp r0, #1
	bne _0230A7FC
	ldrsh r0, [r4, #2]
	ldrb r1, [r4, #0xa]
	ldr sl, [r8, #0xb4]
	bl FUN_02052A7C
	mov sb, r0
	mov r0, r4
	bl ov29_02303E0C
	cmp r0, #0
	bne _0230A7FC
	ldrb r0, [r4, #0x100]
	cmp r0, #0
	beq _0230A714
	add r0, r4, #0x100
	ldrsh r2, [r0, #0x68]
	mov r0, #0xc
	ldr r1, _0230A938 @ =0x022C593C
	smulbb r0, r2, r0
	ldrsh sb, [r1, r0]
	b _0230A740
_0230A714:
	ldrb r0, [r4, #0x108]
	cmp r0, #0
	addeq r0, sb, sb, lsr #31
	asreq sb, r0, #1
	beq _0230A738
	cmp r0, #2
	addeq r0, sb, sb, lsl #1
	addeq r0, r0, r0, lsr #31
	asreq sb, r0, #1
_0230A738:
	cmp sb, #0
	moveq sb, #1
_0230A740:
	ldrb r0, [r4, #0xfd]
	cmp r0, #0
	movne r0, #1
	strbne r0, [sl, #0x155]
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne _0230A7FC
	ldrb r0, [sl, #6]
	cmp r0, #0
	bne _0230A7D4
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0230A7FC
	mov r0, r8
	mov r1, r8
	mov r2, sb
	bl AddExpSpecial
	ldr r6, _02309FFC @ =0x02353538
	mov r4, #0
_0230A78C:
	ldr r0, [r6]
	add r0, r0, r4, lsl #2
	add r0, r0, #0x12000
	ldr sl, [r0, #0xb28]
	mov r0, sl
	bl EntityIsValid
	cmp r0, #0
	cmpne sl, r8
	beq _0230A7C0
	mov r0, r8
	mov r1, sl
	mov r2, sb
	bl AddExpSpecial
_0230A7C0:
	add r4, r4, #1
	cmp r4, #4
	blt _0230A78C
	mov r6, #1
	b _0230A7FC
_0230A7D4:
	ldr r0, _02309FFC @ =0x02353538
	ldr r0, [r0]
	ldrb r0, [r0, #0x748]
	bl FUN_02051400
	cmp r0, #0
	movne r1, #1
	ldrne r0, _02309FFC @ =0x02353538
	strbne r1, [sl, #0x153]
	ldrne r0, [r0]
	strbne r1, [r0, #0xf]
_0230A7FC:
	mov r0, r8
	bl EntityIsValid
	cmp r0, #0
	beq _0230A824
	ldr r0, [r8]
	cmp r0, #1
	ldreq r0, [r8, #0xb4]
	ldrbeq r0, [r0, #7]
	cmpeq r0, #0
	moveq r6, #0
_0230A824:
	cmp r6, #0
	beq _0230A8CC
	add r0, sp, #0x1c
	mov r1, r7
	bl ov29_022F9058
	mov r0, r8
	mov r1, r7
	bl ov29_0230DBD0
	cmp r0, #0
	beq _0230A8A8
	add r2, sp, #0x1c
	mov r0, r8
	mov r1, r7
	bl ov29_0230E064
	cmp r0, #0
	bne _0230A898
	mov r0, r7
	bl EntityIsValid
	cmp r0, #0
	beq _0230A8F4
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov29_0230AA0C
	mov r0, r7
	mov r2, r8
	mov r1, #0x234
	bl HandleFaint
	b _0230A8F4
_0230A898:
	ldr r0, _0230A93C @ =0x0237CA6C
	mov r1, #1
	strb r1, [r0]
	b _0230A8F4
_0230A8A8:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov29_0230AA0C
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl HandleFaint
	b _0230A8F4
_0230A8CC:
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl ov29_0230AA0C
	mov r0, r8
	bl ov29_022ECD84
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl HandleFaint
_0230A8F4:
	ldr r0, _0230A93C @ =0x0237CA6C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0230A914
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0230A914
	bl ov29_0233847C
_0230A914:
	mov r0, #1
_0230A918:
	add sp, sp, #0x64
	pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0230A920: .4byte 0x00000C4D
_0230A924: .4byte 0x020AF6B8
_0230A928: .4byte 0x00000C6A
_0230A92C: .4byte 0x00000C6B
_0230A930: .4byte 0x00000C6C
_0230A934: .4byte 0x00000C6D
_0230A938: .4byte 0x022C593C
_0230A93C: .4byte 0x0237CA6C

	mov r7, r0

