	.include "asm/macros.inc"
	.include "main_0204B018.inc"

	.text

	arm_func_start sub_0204B018
sub_0204B018: ; 0x0204B018
	ldr r1, _0204B024 ; =GAME_MODE
	strb r0, [r1]
	bx lr
	.align 2, 0
_0204B024: .word GAME_MODE
	arm_func_end sub_0204B018

	arm_func_start sub_0204B028
sub_0204B028: ; 0x0204B028
	ldr r1, _0204B040 ; =_0209DF70
	ldr ip, _0204B044 ; =Debug_Print0
	ldr r0, _0204B048 ; =_0209CF0C
	ldrsh r1, [r1, #0x24]
	mov r2, #0x400
	bx ip
	.align 2, 0
_0204B040: .word _0209DF70
_0204B044: .word Debug_Print0
_0204B048: .word _0209CF0C
	arm_func_end sub_0204B028

	arm_func_start InitScriptVariableValues
InitScriptVariableValues: ; 0x0204B04C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r1, #0
	ldr r0, _0204B2F8 ; =SCRIPT_VARS_VALUES
	mov r7, r1
_0204B05C:
	strb r7, [r0, r1]
	add r1, r1, #1
	cmp r1, #0x400
	blt _0204B05C
	mov r4, #0
	ldr r6, _0204B2FC ; =SCRIPT_VARS
	mov r5, r4
_0204B078:
	mov r0, r7, lsl #4
	ldrsh r0, [r6, r0]
	add r8, r6, r7, lsl #4
	cmp r0, #0
	cmpne r0, #9
	beq _0204B0C4
	mov sb, r5
	b _0204B0B8
_0204B098:
	ldrsh r3, [r8, #0xa]
	mov r0, r4
	mov r1, r7
	mov r2, sb
	bl SaveScriptVariableValueAtIndex
	add r0, sb, #1
	mov r0, r0, lsl #0x10
	mov sb, r0, lsr #0x10
_0204B0B8:
	ldrsh r0, [r8, #8]
	cmp sb, r0
	blt _0204B098
_0204B0C4:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x72
	blt _0204B078
	mov r0, #0
	mov r2, r0
	mov r1, #0x46
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #1
	bl ZinitScriptVariable
	bl InitEventFlagScriptVars
	mov sl, #0
#ifdef JAPAN
	mov sb, sl
	mov r8, #0x21
	mov r7, #0x13c
	mov r6, sl
	mov r5, #0x22
	mov fp, sl
	mvn r4, #0
#else
	ldr r7, _0204B300 ; =0x00000137
	mov sb, sl
#ifdef EUROPE
	sub r4, r7, #0x144
#else
	sub r4, r7, #0x138
#endif
	mov r8, #0x21
	mov r6, sl
	mov r5, #0x22
	mov fp, sl
#endif
_0204B118:
	mov r2, sl, lsl #0x10
	mov r0, sb
	mov r1, r8
	mov r2, r2, lsr #0x10
	mov r3, r7
	bl SaveScriptVariableValueAtIndex
	mov r2, sl, lsl #0x10
	mov r0, r6
	mov r1, r5
	mov r2, r2, lsr #0x10
	mov r3, r6
	bl SaveScriptVariableValueAtIndex
	mov r2, sl, lsl #0x10
	mov r0, fp
	mov r1, #0x23
	mov r2, r2, lsr #0x10
#ifdef JAPAN
	mov r3, #0x13c
#else
	mov r3, r7
#endif
	bl SaveScriptVariableValueAtIndex
	mov r2, sl, lsl #0x10
	mov r0, #0
	mov r1, #0x24
	mov r2, r2, lsr #0x10
	mov r3, r4
	bl SaveScriptVariableValueAtIndex
	mov r2, sl, lsl #0x10
	mov r0, #0
	mov r1, #0x25
	mov r2, r2, lsr #0x10
	mov r3, #0xbb
	bl SaveScriptVariableValueAtIndex
	mov r0, #0
	mov r2, sl, lsl #0x10
	mov r1, #0x2d
	mov r2, r2, lsr #0x10
	mov r3, r0
	bl SaveScriptVariableValueAtIndex
	mov r2, sl, lsl #0x10
	mov r0, #0
	mov r1, #0x2f
	mov r2, r2, lsr #0x10
	mov r3, r4
	bl SaveScriptVariableValueAtIndex
	mov r0, #0
	mov r2, sl, lsl #0x10
	mov r1, #0x31
	mov r2, r2, lsr #0x10
	mov r3, r0
	bl SaveScriptVariableValueAtIndex
	mov r0, #0
	mov r2, sl, lsl #0x10
	mov r1, #0x32
	mov r2, r2, lsr #0x10
	mov r3, r0
	bl SaveScriptVariableValueAtIndex
	mov r0, #0
	mov r2, sl, lsl #0x10
	mov r1, #0x37
	mov r2, r2, lsr #0x10
	mov r3, r0
	bl SaveScriptVariableValueAtIndex
	mov r2, sl, lsl #0x10
	mov r0, #0
	mov r1, #0x38
	mov r2, r2, lsr #0x10
	mov r3, #2
	bl SaveScriptVariableValueAtIndex
	mov r0, #0
	mov r2, sl, lsl #0x10
	mov r1, #0x39
	mov r2, r2, lsr #0x10
	mov r3, r0
	bl SaveScriptVariableValueAtIndex
	add sl, sl, #1
	cmp sl, #4
	blt _0204B118
	mov r1, #0x26
	sub r2, r1, #0x27
	mov r0, #0
	bl SaveScriptVariableValue
	mov r0, #0
	mov r2, r0
	mov r1, #0x33
	bl SaveScriptVariableValue
	mov r0, #0
	mov r2, r0
	mov r1, #0x6e
	bl SaveScriptVariableValue
	mov r0, #0
	mov r2, r0
	mov r1, #0x3e
	bl SaveScriptVariableValue
	mov r0, #0
	mov r2, r0
	mov r1, #0x40
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x42
	mov r2, #4
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x43
	mov r2, #1
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x4a
	sub r2, r1, #0x4b
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x4b
	bl ZinitScriptVariable
	mov r0, #0
	mov r1, #0x4c
	bl ZinitScriptVariable
	mov r0, #0
	mov r1, #0x4d
	bl ZinitScriptVariable
	bl InitScenarioScriptVars
	bl InitWorldMapScriptVars
	bl InitDungeonListScriptVars
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0204B2F8: .word SCRIPT_VARS_VALUES
_0204B2FC: .word SCRIPT_VARS
#if defined(EUROPE)
_0204B300: .word 0x00000143
#elif !defined(JAPAN)
_0204B300: .word 0x00000137
#endif
	arm_func_end InitScriptVariableValues

	arm_func_start InitEventFlagScriptVars
InitEventFlagScriptVars: ; 0x0204B304
	stmdb sp!, {r3, lr}
#ifdef JAPAN
	mov r0, #0
	mov r1, #0x1c
	mov r2, #0x13c
#else
	ldr r2, _0204B3CC ; =0x00000137
	mov r0, #0
	mov r1, #0x1c
#endif
	bl SaveScriptVariableValue
	mov r0, #0
	mov r2, r0
	mov r1, #0x1d
	bl SaveScriptVariableValue
#ifdef JAPAN
	mov r0, #0
	mov r1, #0x1e
	mov r2, #0x13c
#else
	ldr r2, _0204B3CC ; =0x00000137
	mov r0, #0
	mov r1, #0x1e
#endif
	bl SaveScriptVariableValue
	mov r1, #0x1f
	sub r2, r1, #0x20
	mov r0, #0
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x20
	mov r2, #0xbb
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x27
	mov r2, r0
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x29
	sub r2, r1, #0x2a
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x2b
	mov r2, r0
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x2c
	mov r2, r0
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x34
	mov r2, r0
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x35
	mov r2, #2
	bl SaveScriptVariableValue
	mov r0, #0
	mov r1, #0x36
	mov r2, r0
	bl SaveScriptVariableValue
	ldmia sp!, {r3, pc}
	.align 2, 0
#if defined(EUROPE)
_0204B3CC: .word 0x00000143
#elif !defined(JAPAN)
_0204B3CC: .word 0x00000137
#endif
	arm_func_end InitEventFlagScriptVars

	arm_func_start sub_0204B3D0
sub_0204B3D0: ; 0x0204B3D0
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	cmp r4, #0x400
	mov r5, r0
	ldrlt r0, _0204B42C ; =SCRIPT_VARS
	ldrge r1, _0204B430 ; =SCRIPT_VARS_LOCALS
	addlt r7, r0, r4, lsl #4
	subge r0, r4, #0x400
	addge r7, r1, r0, lsl #4
	mov r6, #0
	b _0204B41C
_0204B3FC:
	ldrsh r3, [r7, #0xa]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl SaveScriptVariableValueAtIndex
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
_0204B41C:
	ldrsh r0, [r7, #8]
	cmp r6, r0
	blt _0204B3FC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204B42C: .word SCRIPT_VARS
_0204B430: .word SCRIPT_VARS_LOCALS
	arm_func_end sub_0204B3D0

	arm_func_start ZinitScriptVariable
ZinitScriptVariable: ; 0x0204B434
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r1
	cmp r5, #0x400
	mov r6, r0
	ldrlt r0, _0204B494 ; =SCRIPT_VARS
	mov r8, #0
	addlt r4, r0, r5, lsl #4
	ldrge r1, _0204B498 ; =SCRIPT_VARS_LOCALS
	subge r0, r5, #0x400
	addge r4, r1, r0, lsl #4
	mov r7, r8
	b _0204B484
_0204B464:
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl SaveScriptVariableValueAtIndex
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_0204B484:
	ldrsh r0, [r4, #8]
	cmp r8, r0
	blt _0204B464
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_0204B494: .word SCRIPT_VARS
_0204B498: .word SCRIPT_VARS_LOCALS
	arm_func_end ZinitScriptVariable
