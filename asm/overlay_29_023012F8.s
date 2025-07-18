	.include "asm/macros.inc"
	.include "overlay_29_023012F8.inc"

	.text

	arm_func_start CanAiMonsterMoveInDirection
CanAiMonsterMoveInDirection: ; 0x023012F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0xb4]
	mov r7, r1
	ldrsh r1, [r3, #2]
	mov r6, r2
	bl GetMobilityTypeCheckSlipAndFloating
	mov r1, #0
	strb r1, [r6]
	ldr r2, _02301484 ; =DIRECTIONS_XY
	mov r4, r7, lsl #2
	ldr r1, _02301488 ; =DIRECTIONS_XY + 2
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
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	tst r0, #0x40
	beq _02301390
	ldr r0, _0230148C ; =DUNGEON_PTR
	ldr r0, [r0]
	ldrb r0, [r0, #0x793]
	cmp r0, #0
	bne _02301390
	mov r0, r8
	mov r1, #0xf
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
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
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_023013E4:
	ldrh r0, [r4]
	and r0, r0, #3
	cmp r0, #2
	bne _0230142C
	ldr r0, _0230148C ; =DUNGEON_PTR
	ldr r1, _02301490 ; =SECONDARY_TERRAIN_TYPES
	ldr r0, [r0]
	add r0, r0, #0x4000
#ifdef JAPAN
	ldrsh r0, [r0, #0x30]
#else
	ldrsh r0, [r0, #0xd4]
#endif
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0230142C
	mov r0, r8
	mov r1, #0x14
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0230142C:
#ifdef JAPAN
	bl IsCurrentTilesetBackground
	cmp r0, #0
	bne _0230295C
	ldr r0, [r8, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #3
	moveq r5, #3
	beq _0230295C
	mov r0, r8
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r5, #3
	bne _0230295C
	mov r0, r8
	mov r1, #0xc
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r5, #2
	bne _0230295C
	mov r0, r8
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	beq _0230295C
	tst r7, #1
	movne r5, #2
	moveq r5, #3
_0230295C:
#else
	mov r0, r8
	mov r1, r5
	and r2, r7, #0xff
	bl GetDirectionalMobilityType
	mov r5, r0
#endif
	ldrsh r0, [r8, #4]
	ldrsh r1, [r8, #6]
	bl GetTile
	add r0, r0, r5
	ldr r1, _02301494 ; =DIRECTIONAL_BIT_MASKS__02352770
	and r2, r7, #7
	ldrb r1, [r1, r2]
	ldrb r0, [r0, #8]
	tst r1, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	mov r0, #1
	strneb r0, [r6]
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02301484: .word DIRECTIONS_XY
_02301488: .word DIRECTIONS_XY + 2
_0230148C: .word DUNGEON_PTR
_02301490: .word SECONDARY_TERRAIN_TYPES
_02301494: .word DIRECTIONAL_BIT_MASKS__02352770
	arm_func_end CanAiMonsterMoveInDirection

	arm_func_start ov29_02301498
ov29_02301498: ; 0x02301498
#ifdef JAPAN
#define OV29_02301498_OFFSET -4
#else
#define OV29_02301498_OFFSET 0
#endif
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xb4]
	ldrsh r1, [r1, #2]
	bl GetMobilityTypeCheckSlipAndFloating
#ifdef JAPAN
	mov r4, r0
	bl IsCurrentTilesetBackground
	cmp r0, #0
	bne _02302A30_JP
	ldr r0, [r5, #0xb4]
	ldrb r0, [r0, #0xef]
	cmp r0, #3
	moveq r4, #3
	beq _02302A30_JP
	mov r0, r5
	mov r1, #0x10
	bl ItemIsActive__022FF898
	cmp r0, #0
	movne r4, #3
	bne _02302A30_JP
	mov r0, r5
	mov r1, #0xc
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #2
	bne _02302A30_JP
	mov r0, r5
	mov r1, #0xd
	bl IqSkillIsEnabled
	cmp r0, #0
	movne r4, #3
_02302A30_JP:
#else
	mov r1, r0
	mov r0, r5
	mov r2, #0xff
	bl GetDirectionalMobilityType
	mov r4, r0
#endif
	cmp r4, #3
	bne _023014FC
	ldr r4, [r5, #0xb4]
	mov r0, #0x64
	bl DungeonRandInt
	add r1, r4, #0x200
	ldrsh r2, [r1, #0x12 + OV29_02301498_OFFSET]
	add r0, r2, r0
	strh r0, [r1, #0x12 + OV29_02301498_OFFSET]
	ldrsh r0, [r1, #0x12 + OV29_02301498_OFFSET]
	cmp r0, #0xc8
	mov r0, #0
	strgeh r0, [r1, #0x12 + OV29_02301498_OFFSET]
	movge r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_023014FC:
	ldr r0, _0230158C ; =DUNGEON_PTR
	ldr r1, _02301590 ; =SECONDARY_TERRAIN_TYPES
	ldr r0, [r0]
	add r0, r0, #0x4000
#ifdef JAPAN
	ldrsh r0, [r0, #0x30]
#else
	ldrsh r0, [r0, #0xd4]
#endif
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
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x51
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x45
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x15
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x55
	moveq r0, #1
	movne r0, #0
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0230158C: .word DUNGEON_PTR
_02301590: .word SECONDARY_TERRAIN_TYPES
	arm_func_end ov29_02301498

	arm_func_start ov29_02301594
ov29_02301594: ; 0x02301594
	stmdb sp!, {r4, lr}
	mov r4, r1
	mov r1, #3
	bl IsTacticSet
	cmp r0, #0
	cmpne r4, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov29_02301594
