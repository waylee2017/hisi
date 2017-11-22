	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"aoe_engine.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I arch/arm/include/generated/uapi -I arch/arm/include/generated
@ -I include -I ./arch/arm/include/uapi -I arch/arm/include/generated/uapi
@ -I ./include/uapi -I include/generated/uapi
@ -I arch/arm/mach-hi3716mv310/include -I ./../../../source/common/include
@ -I ./../../../source/common/api/include
@ -I ./../../../source/common/drv/include -I ./../../../source/msp/include
@ -I ./../../../source/msp/api/include -I ./../../../source/msp/drv/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I ./../../../source/component/ha_codec/include
@ -I -I./../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D HI_SND_AOE_SWSIMULATE_SUPPORT -D INTERLEAVED_OUTPUT
@ -D HI_SND_AVC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(aoe_engine)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/engine/.aoe_engine.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/engine/aoe_engine.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/engine/aoe_engine.o
@ -g0 -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-maybe-uninitialized
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Wformat=1 -Wformat-security -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-PIE -fno-dwarf2-cfi-asm
@ -fno-ipa-sra -funwind-tables -fomit-frame-pointer
@ -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
@ -fstack-protector -fverbose-asm -fno-delete-null-pointer-checks
@ -fdiagnostics-color=auto -fno-aggressive-loop-optimizations -fno-tree-vrp
@ --param allow-store-data-races=0 --param ssp-buffer-size=4
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
@ -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fshow-column -fshrink-wrap
@ -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstack-protector -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
@ -marm -mglibc -mlittle-endian -mlra -mpic-data-is-text-relative
@ -msched-prolog -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.type	ENGINEDestroyChn.part.2, %function
ENGINEDestroyChn.part.2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, inst
	ldr	r3, [r0, #12]	@ state_2->stAttr.u32DataFormat, state_2->stAttr.u32DataFormat
	cmp	r3, #0	@ state_2->stAttr.u32DataFormat,
	bne	.L2	@,
	ldr	r1, [r0, #96]	@ D.17032, state_2->pAVCStrBuf
	cmp	r1, #0	@ D.17032,
	beq	.L2	@,
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
.L2:
	mov	r1, r4	@, state
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
	.fnend
	.size	ENGINEDestroyChn.part.2, .-ENGINEDestroyChn.part.2
	.align	2
	.global	ENGINECreateAVC
	.type	ENGINECreateAVC, %function
ENGINECreateAVC:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #52
	sub	sp, sp, #52	@,,
	ldr	r6, .L27	@ tmp186,
	mov	r4, r0	@ state, state
	mov	r5, r1	@ pEneReg, pEneReg
	add	r0, sp, #4	@,,
	add	r1, sp, #28	@,,
	movw	ip, #48000	@ tmp140,
	ldr	r3, [r6]	@ __stack_chk_guard, __stack_chk_guard
	mov	r2, #2	@ tmp141,
	str	ip, [sp, #28]	@ tmp140, stAvcMemConf.iSampleRate
	str	r2, [sp, #32]	@ tmp141, stAvcMemConf.iChannels
	str	r3, [sp, #44]	@ __stack_chk_guard, D.17045
	bl	iMedia_AVC_GetSize	@
	mov	r0, #17	@,
	ldr	r1, [sp, #4]	@ D.17036, stAvcMemSize.uiStrSize
	str	r1, [r4, #100]	@ D.17036, state_10(D)->u32AVCStrBufSize
	bl	HI_ADSP_MALLOC	@
	cmp	r0, #0	@ D.17037,
	mov	r7, r0	@ D.17037,
	str	r0, [r4, #96]	@ D.17037, state_10(D)->pAVCStrBuf
	beq	.L24	@,
	ldr	r1, [sp, #4]	@ __n, stAvcMemSize.uiStrSize
	cmp	r1, #0	@ __n,
	bne	.L25	@,
.L11:
	ldr	lr, [r5, #32]	@ tmp145,
	ldr	ip, [r5, #32]	@ tmp148,
	ldr	r1, [r5, #36]	@ tmp152,
	ubfx	lr, lr, #0, #13	@ D.17038, tmp145,,
	ldr	r0, [r5, #36]	@ tmp158,
	ubfx	ip, ip, #13, #13	@ D.17038, tmp148,,
	ubfx	r1, r1, #6, #6	@ D.17041, tmp152,,
	ldr	r2, [r5, #36]	@ tmp162,
	rsb	r3, r1, #0	@ tmp156, D.17041
	ubfx	r0, r0, #12, #4	@ D.17042, tmp158,,
	and	r2, r2, #63	@ D.17040, tmp162,
	strh	r0, [sp, #24]	@ movhi	@ D.17042, stAvcParams.sMaxGain
	uxth	r3, r3	@ D.17039, tmp156
	strh	r3, [sp, #22]	@ movhi	@ D.17039, stAvcParams.sCornerLevel
	rsb	r2, r2, #0	@ tmp165, D.17040
	add	r0, r4, #108	@, state,
	sxth	r3, r3	@ D.17039, D.17039
	strh	r2, [sp, #26]	@ movhi	@ tmp165, stAvcParams.sTargetLevel
	cmn	r3, #31	@ D.17039,
	mov	r2, #12	@,
	strh	lr, [sp, #16]	@ movhi	@ D.17038, stAvcParams.sAttackTime
	movwge	r3, #65528	@ tmp169,
	mvnlt	r3, #39	@ tmp171,
	movtge	r3, 65535	@ tmp169,
	rsbge	r3, r1, r3	@ tmp169, D.17041, tmp169
	add	r1, sp, #16	@ tmp187,,
	strh	ip, [sp, #18]	@ movhi	@ D.17038, stAvcParams.sReleaseTime
	strh	r3, [sp, #20]	@ movhi	@ tmp171, stAvcParams.sStartLevel
	bl	memcpy	@
	mov	r1, r7	@, D.17037
	ldr	r2, [r4, #100]	@, state_10(D)->u32AVCStrBufSize
	add	r0, r4, #92	@, state,
	add	r3, sp, #16	@ tmp188,,
	bl	iMedia_AVC_Init	@
	cmp	r0, #0	@ ret
	streq	r0, [r4, #104]	@ ret, state_10(D)->bAVCEnable
	beq	.L10	@,
.L14:
	ldr	r1, [r4, #96]	@ D.17037, state_10(D)->pAVCStrBuf
	cmp	r1, #0	@ D.17037,
	beq	.L24	@,
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
.L24:
	mvn	r0, #0	@ D.17035,
.L10:
	ldr	r2, [sp, #44]	@ D.17045, D.17045
	ldr	r3, [r6]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.17045, __stack_chk_guard
	bne	.L26	@,
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L25:
	bl	__memzero	@
	ldr	r7, [r4, #96]	@ D.17037, state_10(D)->pAVCStrBuf
	b	.L11	@
.L26:
	bl	__stack_chk_fail	@
.L28:
	.align	2
.L27:
	.word	__stack_chk_guard
	.fnend
	.size	ENGINECreateAVC, .-ENGINECreateAVC
	.align	2
	.global	ENGINEUpdateChnPreGainState
	.type	ENGINEUpdateChnPreGainState, %function
ENGINEUpdateChnPreGainState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #4]	@ tmp124,
	ubfx	r3, r3, #10, #1	@ D.17056, tmp124,,
	str	r3, [r0, #80]	@ D.17056, state_5(D)->stPregain.bPreGainEnable
	ldr	r3, [r1, #4]	@ tmp128,
	ubfx	r3, r3, #11, #8	@ D.17058, tmp128,,
	str	r3, [r0, #84]	@ D.17058, state_5(D)->stPregain.u32PreGainInt
	ldr	r3, [r1, #4]	@ tmp132,
	tst	r3, #134217728	@ tmp132,
	ldr	r3, [r1, #4]	@ tmp136,
	ubfxeq	r3, r3, #19, #8	@ D.17058, tmp136,,
	streq	r3, [r0, #88]	@ D.17058, state_5(D)->stPregain.s32PreGainDec
	bxeq	lr	@
	tst	r3, #134217728	@ tmp140,
	ldrne	r3, [r1, #4]	@ tmp144,
	ubfxne	r3, r3, #19, #8	@ D.17058, tmp144,,
	rsbne	r3, r3, #0	@ D.17060, D.17058
	strne	r3, [r0, #88]	@ D.17060, state_5(D)->stPregain.s32PreGainDec
	bx	lr	@
	.fnend
	.size	ENGINEUpdateChnPreGainState, .-ENGINEUpdateChnPreGainState
	.align	2
	.global	ENGINEGainPcmData
	.type	ENGINEGainPcmData, %function
ENGINEGainPcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #12]	@ state_2(D)->stAttr.u32DataFormat, state_2(D)->stAttr.u32DataFormat
	mov	r3, r0	@ state, state
	cmp	r2, #0	@ state_2(D)->stAttr.u32DataFormat,
	bxne	lr	@
	ldr	r2, [r0, #80]	@ state_2(D)->stPregain.bPreGainEnable, state_2(D)->stPregain.bPreGainEnable
	cmp	r2, #0	@ state_2(D)->stPregain.bPreGainEnable,
	bxeq	lr	@
	mov	r0, r1	@, pstFrame
	ldr	r2, [r3, #88]	@, state_2(D)->stPregain.s32PreGainDec
	ldr	r1, [r3, #84]	@, state_2(D)->stPregain.u32PreGainInt
	b	UTIL_PreLRGainProcess	@
	.fnend
	.size	ENGINEGainPcmData, .-ENGINEGainPcmData
	.align	2
	.global	ENGINE_GetChnCmd
	.type	ENGINE_GetChnCmd, %function
ENGINE_GetChnCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L45	@ tmp118,
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r2, [r3, #4]	@ tmp120,
	tst	r2, #8	@ tmp120,
	movne	r0, #2	@ eNewCmd,
	beq	.L44	@,
.L38:
	str	r0, [r1]	@ eNewCmd, *newcmd_11(D)
	bx	lr	@
.L44:
	ldr	r0, [r3, #4]	@ tmp124,
	ands	r0, r0, #3	@ D.17073, tmp124,
	beq	.L38	@,
	cmp	r0, #1	@ D.17073,
	beq	.L38	@,
	ldr	r2, [r3, #4]	@ tmp126,
	mov	ip, #4	@ tmp127,
	mov	r0, #2	@ eNewCmd,
	bfi	r2, ip, #4, #4	@ tmp126, tmp127,,
	str	r2, [r3, #4]	@ tmp126,
	ldr	r2, [r3, #4]	@ tmp128,
	orr	r2, r2, #8	@ tmp128, tmp128,
	str	r2, [r3, #4]	@ tmp128,
	str	r0, [r1]	@ eNewCmd, *newcmd_11(D)
	bx	lr	@
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.fnend
	.size	ENGINE_GetChnCmd, .-ENGINE_GetChnCmd
	.align	2
	.global	ENGINEAckCmd
	.type	ENGINEAckCmd, %function
ENGINEAckCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r2, [r3, #4]	@ tmp118,
	tst	r2, #8	@ tmp118,
	bxne	lr	@
	ldr	r2, [r3, #4]	@ tmp123,
	bfi	r2, r1, #4, #4	@ tmp123, Ack,,
	str	r2, [r3, #4]	@ tmp123,
	ldr	r2, [r3, #4]	@ tmp124,
	orr	r2, r2, #8	@ tmp124, tmp124,
	str	r2, [r3, #4]	@ tmp124,
	bx	lr	@
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
	.fnend
	.size	ENGINEAckCmd, .-ENGINEAckCmd
	.global	__aeabi_uidiv
	.align	2
	.global	ENGINECreateChn
	.type	ENGINECreateChn, %function
ENGINECreateChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L77	@ tmp146,
	mov	r1, #16	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r4, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	mov	r7, r0	@ Id, Id
	mov	r0, sp	@,
	bl	__memzero	@
	ldr	r1, [r4]	@ *pEneReg_6, *pEneReg_6
	and	r1, r1, #3	@, *pEneReg_6,
	mov	r0, sp	@,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	bne	.L52	@,
	ldr	r1, [r4]	@ *pEneReg_6, *pEneReg_6
	add	r0, sp, #4	@,,
	ubfx	r1, r1, #2, #2	@, *pEneReg_6,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L52	@,
	ldr	r1, [r4]	@ *pEneReg_6, *pEneReg_6
	add	r0, sp, #8	@,,
	ubfx	r1, r1, #4, #4	@, *pEneReg_6,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L52	@,
	ldr	r1, [r4]	@ *pEneReg_6, *pEneReg_6
	add	r0, sp, #12	@,,
	ubfx	r1, r1, #8, #2	@, *pEneReg_6,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L52	@,
	mov	r1, #120	@,
	mov	r0, #17	@,
	bl	HI_ADSP_MALLOC	@
	subs	r5, r0, #0	@ __p,
	beq	.L52	@,
	mov	r1, #120	@,
	movw	r8, #19923	@ tmp182,
	bl	__memzero	@
	mov	r2, #16	@,
	mov	r0, r5	@, __p
	movt	r8, 4194	@ tmp182,
	mov	r1, sp	@,
	bl	memcpy	@
	ldr	r1, [r5]	@, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32BitPerSample
	ldr	r0, [r5, #4]	@, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r2, [r5, #8]	@ MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32SampleRate, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32SampleRate
	ldr	r1, [r5]	@, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32BitPerSample
	add	r2, r2, r2, lsl #2	@ D.17092, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32SampleRate, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32SampleRate,
	umull	r8, r9, r2, r8	@ tmp181, D.17092, tmp182
	mov	r3, r9, lsr #6	@ samples,,
	tst	r3, #255	@ samples
	movne	r3, r9, lsr #14	@ D.17092,,
	addne	r3, r3, #1	@ D.17092, D.17092,
	movne	r3, r3, asl #8	@ samples, D.17092,
	tst	r3, #3	@ samples,
	addne	r3, r3, #3	@ D.17092, samples,
	bicne	r3, r3, #3	@ samples, D.17092,
	mul	r3, r0, r3	@ blocksize, framesize, samples
	ldr	r0, [r5, #4]	@, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32Channels
	str	r3, [r5, #64]	@ blocksize, MEM[(struct ENGINE_STATE_S *)__p_10].BlockSize
	bl	UTIL_CalcFrameSize	@
	cmp	r0, #0	@ D.17091,
	mov	r6, r0	@ D.17091,
	str	r0, [r5, #68]	@ D.17091, MEM[(struct ENGINE_STATE_S *)__p_10].FrameSize
	beq	.L75	@,
	mov	r1, r0	@, D.17091
	ldr	r0, [r5, #64]	@, MEM[(struct ENGINE_STATE_S *)__p_10].BlockSize
	bl	__aeabi_uidiv	@
	ldr	r6, [r5, #12]	@ D.17091, MEM[(struct ENGINE_STATE_S *)__p_10].stAttr.u32DataFormat
	cmp	r6, #0	@ D.17091,
	str	r0, [r5, #72]	@, MEM[(struct ENGINE_STATE_S *)__p_10].SamplePerFrame
	beq	.L76	@,
.L60:
	mov	r6, r5	@ D.17091, __p
	mov	r3, #1	@ tmp193,
	mov	r0, r6	@, D.17091
	str	r7, [r5, #60]	@ Id, MEM[(struct ENGINE_STATE_S *)__p_10].EngineId
	str	r3, [r5, #76]	@ tmp193, MEM[(struct ENGINE_STATE_S *)__p_10].CurStatus
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L52:
	mov	r6, #0	@ D.17091,
.L73:
	mov	r0, r6	@, D.17091
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L76:
	mov	r1, r4	@, pEneReg
	mov	r0, r5	@, __p
	bl	ENGINECreateAVC	@
	cmp	r0, #0	@,
	beq	.L60	@,
.L75:
	mov	r1, r5	@, __p
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	b	.L73	@
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.fnend
	.size	ENGINECreateChn, .-ENGINECreateChn
	.align	2
	.global	ENGINEDestroyChn
	.type	ENGINEDestroyChn, %function
ENGINEDestroyChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ inst,
	bxeq	lr	@
	b	ENGINEDestroyChn.part.2	@
	.fnend
	.size	ENGINEDestroyChn, .-ENGINEDestroyChn
	.align	2
	.global	ENGINEProcChnData
	.type	ENGINEProcChnData, %function
ENGINEProcChnData:
	.fnstart
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #34	@,
	mov	r4, r0	@ state, state
	ldr	r1, [r0, #60]	@, state_2(D)->EngineId
	.pad #108
	sub	sp, sp, #108	@,,
	mov	r0, #2	@,
	bl	TRACE_AOE_FSM	@
	ldr	lr, [r4, #20]	@ D.17209, state_2(D)->AipHiPriorityMask
	ldr	ip, [r4, #24]	@ D.17209, state_2(D)->AipLoPriorityMask
	adds	r2, lr, #0	@ D.17218, D.17209,
	ldr	r3, [r4, #28]	@ BufFreeFlag, state_2(D)->AipBufDataFlag
	movne	r2, #1	@ D.17218,
	adds	r5, ip, #0	@ D.17218, D.17209,
	movne	r5, #1	@ D.17218,
	tst	r2, r5	@ D.17218, D.17218
	beq	.L82	@,
	cmp	r2, #0	@ D.17218,
	beq	.L83	@,
	mov	r1, #0	@ Aip,
	mov	r6, #1	@ tmp385,
	mov	r2, r1	@ Flag, Aip
.L85:
	mov	r0, r6, asl r1	@ D.17212, tmp385,
	tst	r0, lr	@ D.17212, D.17209
	beq	.L86	@,
	ands	r0, r0, r3	@ D.17212, D.17212, BufFreeFlag
	mov	r2, #1	@ Flag,
	beq	.L182	@,
.L86:
	add	r1, r1, #1	@ Aip, Aip,
	cmp	r1, #8	@ Aip,
	bne	.L85	@,
.L83:
	cmp	r5, #0	@ D.17218,
	beq	.L89	@,
	mov	r1, #0	@ Aip,
	mov	lr, #1	@ tmp384,
.L88:
	mov	r0, lr, asl r1	@ D.17212, tmp384,
	tst	r0, ip	@ D.17212, D.17209
	beq	.L91	@,
	tst	r0, r3	@ D.17212, BufFreeFlag
	beq	.L183	@,
	orr	r2, r2, #2	@ Flag, Flag,
.L91:
	add	r1, r1, #1	@ Aip, Aip,
	cmp	r1, #8	@ Aip,
	bne	.L88	@,
.L89:
	and	r3, r2, #1	@ D.17211, Flag,
	cmp	r3, #0	@ D.17211,
	bne	.L184	@,
.L81:
	add	sp, sp, #108	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L82:
	adds	r3, r3, #0	@ D.17211, BufFreeFlag,
	movne	r3, #1	@ D.17211,
	cmp	r3, #0	@ D.17211,
	beq	.L81	@,
.L184:
	ldr	r0, [r4, #52]	@ BufFreeFlag, state_2(D)->AopBufFreeFlag
	ldr	ip, [r4, #36]	@ D.17209, state_2(D)->AopHiPriorityMask
	cmp	r0, #0	@ BufFreeFlag,
	ldr	lr, [r4, #40]	@ D.17209, state_2(D)->AopLoPriorityMask
	beq	.L81	@,
	cmp	ip, #0	@ D.17209,
	bne	.L185	@,
	cmp	lr, #0	@ D.17209,
	beq	.L81	@,
	mov	r1, ip	@ Flag, D.17209
.L138:
	mov	r3, #0	@ Aop,
	mov	r5, #1	@ tmp382,
.L102:
	mov	r2, r5, asl r3	@ D.17212, tmp382,
	tst	r2, lr	@ D.17212, D.17209
	beq	.L105	@,
	tst	r2, r0	@ D.17212, BufFreeFlag
	beq	.L186	@,
	orr	r1, r1, #2	@ Flag, Flag,
.L105:
	add	r3, r3, #1	@ Aop, Aop,
	cmp	r3, #8	@ Aop,
	bne	.L102	@,
.L103:
	cmp	ip, #0	@ D.17209,
	bne	.L134	@,
	ubfx	r1, r1, #1, #1	@ D.17211, Flag,,
.L106:
	cmp	r1, #0	@ D.17211,
	beq	.L81	@,
	bl	AOE_FlushWKBuf	@
	mov	r2, #35	@,
	ldr	r1, [r4, #60]	@, state_2(D)->EngineId
	mov	r0, #2	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #4]	@ Ch, state_2(D)->stAttr.u32Channels
	mov	r1, #32	@,
	ldr	fp, [r4]	@ BitDepth, state_2(D)->stAttr.u32BitPerSample
	add	r0, sp, #36	@ tmp402,,
	str	r3, [sp]	@ Ch, %sfp
	bl	__memzero	@
	bl	AOE_GetWKBuf	@
	ldr	r1, [r4, #64]	@ __n, state_2(D)->BlockSize
	cmp	r1, #0	@ __n,
	mov	r9, r0	@ __p,
	bne	.L187	@,
.L108:
	mov	r7, #0	@ u32UnderFlag,
	mov	r6, #1	@ tmp379,
	mov	r8, r7	@ MixCnt, u32UnderFlag
	mov	r5, r7	@ Aip, u32UnderFlag
	b	.L114	@
.L109:
	add	r5, r5, #1	@ Aip, Aip,
	cmp	r5, #8	@ Aip,
	beq	.L188	@,
.L114:
	ldr	r2, [r4, #16]	@ state_2(D)->AipMask, state_2(D)->AipMask
	mov	r10, r6, asl r5	@ D.17212, tmp379,
	tst	r10, r2	@ D.17212, state_2(D)->AipMask
	beq	.L109	@,
	add	r1, sp, #68	@ tmp404,,
	mov	r0, r5	@, Aip
	bl	AIP_QueryFiFoInfo	@
	ldr	r2, [r4, #64]	@ D.17209, state_2(D)->BlockSize
	ldr	r1, [sp, #88]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	ip, [sp, #84]	@ TailBytes, stRbfIn.u32ContiguousDataSize
	cmp	r1, r2	@ stRbfIn.u32TotalDataSize, D.17209
	bcc	.L110	@,
	cmp	ip, r2	@ TailBytes, D.17209
	mov	r0, ip	@, TailBytes
	bcs	.L111	@,
	ldr	r1, [r4, #68]	@, state_2(D)->FrameSize
	str	ip, [sp, #4]	@ TailBytes, %sfp
	bl	__aeabi_uidiv	@
	mov	r3, fp	@, BitDepth
	ldr	r10, [sp]	@ Ch, %sfp
	ldr	r2, [sp, #72]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r1, [sp, #68]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	r1, r1, r2	@, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	mul	r2, r10, r0	@, Ch,
	mov	r0, r9	@, __p
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ state_2(D)->BlockSize, state_2(D)->BlockSize
	ldr	r1, [r4, #68]	@, state_2(D)->FrameSize
	ldr	ip, [sp, #4]	@ TailBytes, %sfp
	rsb	r0, ip, r0	@, TailBytes, state_2(D)->BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, fp	@, BitDepth
	ldr	ip, [sp, #4]	@ TailBytes, %sfp
	mul	r2, r10, r0	@, Ch,
	ldr	r1, [sp, #68]	@, stRbfIn.u32BasePtr
	add	r0, r9, ip	@, __p, TailBytes
	bl	UTIL_MixerPro	@
.L112:
	mov	r0, r5	@, Aip
	ldr	r1, [r4, #64]	@, state_2(D)->BlockSize
	add	r5, r5, #1	@ Aip, Aip,
	bl	AIP_ReadFiFoComplete	@
	cmp	r5, #8	@ Aip,
	add	r8, r8, #1	@ MixCnt, MixCnt,
	bne	.L114	@,
.L188:
	cmp	r8, #0	@ MixCnt,
	ldreq	r3, [sp, #48]	@ D.17209, stFrame.u32SamplesPerFrame
	beq	.L137	@,
	mov	r5, #0	@ Aip,
	mov	r6, #1	@ tmp378,
	b	.L117	@
.L116:
	add	r5, r5, #1	@ Aip, Aip,
	cmp	r5, #8	@ Aip,
	beq	.L189	@,
.L117:
	ands	r3, r7, r6, asl r5	@, tmp398, u32UnderFlag, tmp378,
	beq	.L116	@,
	mov	r0, r5	@, Aip
	add	r5, r5, #1	@ Aip, Aip,
	bl	AIP_UnderFlowCalc	@
	cmp	r5, #8	@ Aip,
	bne	.L117	@,
.L189:
	ldmia	r4, {r0, ip}	@ state,,
	ldr	lr, [r4, #64]	@ state_2(D)->BlockSize, state_2(D)->BlockSize
	ldr	r3, [r4, #72]	@ D.17209, state_2(D)->SamplePerFrame
	ldr	r1, [r4, #8]	@ state_2(D)->stAttr.u32SampleRate, state_2(D)->stAttr.u32SampleRate
	ldr	r2, [r4, #12]	@ state_2(D)->stAttr.u32DataFormat, state_2(D)->stAttr.u32DataFormat
	str	r9, [sp, #36]	@ __p, stFrame.pDataBuf
	str	lr, [sp, #44]	@ state_2(D)->BlockSize, stFrame.u32DataBytes
	str	r3, [sp, #48]	@ D.17209, stFrame.u32SamplesPerFrame
	str	ip, [sp, #56]	@ state_2(D)->stAttr.u32Channels, stFrame.u32Channels
	str	r0, [sp, #52]	@ state_2(D)->stAttr.u32BitPerSample, stFrame.u32BitPerSample
	str	r1, [sp, #60]	@ state_2(D)->stAttr.u32SampleRate, stFrame.u32SampleRate
	str	r2, [sp, #64]	@ state_2(D)->stAttr.u32DataFormat, stFrame.u32DataFormat
.L137:
	cmp	r3, #0	@ D.17209,
	bne	.L190	@,
.L118:
	bl	AOE_FlushWKBuf	@
	add	sp, sp, #108	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L185:
	mov	r1, #0	@ Flag,
	mov	r5, #1	@ tmp383,
	mov	r3, r1	@ Aop, Flag
.L98:
	mov	r2, r5, asl r3	@ D.17212, tmp383,
	tst	r2, ip	@ D.17212, D.17209
	beq	.L100	@,
	ands	r2, r2, r0	@ D.17212, D.17212, BufFreeFlag
	mov	r1, #1	@ Flag,
	beq	.L191	@,
.L100:
	add	r3, r3, #1	@ Aop, Aop,
	cmp	r3, #8	@ Aop,
	bne	.L98	@,
.L99:
	cmp	lr, #0	@ D.17209,
	bne	.L138	@,
.L134:
	and	r1, r1, #1	@ D.17211, Flag,
	b	.L106	@
.L111:
	ldr	r1, [r4, #68]	@, state_2(D)->FrameSize
	mov	r0, r2	@, D.17209
	bl	__aeabi_uidiv	@
	mov	r3, fp	@, BitDepth
	ldr	r2, [sp, #72]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r1, [sp, #68]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	r1, r1, r2	@, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	ldr	r2, [sp]	@ Ch, %sfp
	mul	r2, r2, r0	@, Ch,
	mov	r0, r9	@, __p
	bl	UTIL_MixerPro	@
	b	.L112	@
.L110:
	add	r1, sp, #16	@ tmp408,,
	mov	r0, r5	@, Aip
	bl	AIP_GetChnStatus	@
	ldr	r2, [sp, #16]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	cmp	r2, #1	@ stChnStatus.CurnStatus,
	orreq	r7, r7, r10	@ u32UnderFlag, u32UnderFlag, D.17212
	b	.L109	@
.L190:
	mov	r2, #36	@,
	ldr	r1, [r4, #60]	@, state_2(D)->EngineId
	mov	r0, #2	@,
	bl	TRACE_AOE_FSM	@
	ldr	r2, [r4, #12]	@ state_2(D)->stAttr.u32DataFormat, state_2(D)->stAttr.u32DataFormat
	ldr	r7, [r4, #36]	@ D.17213, state_2(D)->AopHiPriorityMask
	ldr	r3, [r4, #40]	@ state_2(D)->AopLoPriorityMask, state_2(D)->AopLoPriorityMask
	cmp	r2, #0	@ state_2(D)->stAttr.u32DataFormat,
	ldr	r5, [sp, #36]	@ D.17215, stFrame.pDataBuf
	str	r7, [sp, #8]	@ D.17213, PriorityMaskTab
	str	r3, [sp, #12]	@ state_2(D)->AopLoPriorityMask, PriorityMaskTab
	bne	.L119	@,
	ldr	r3, [r4, #104]	@ state_2(D)->bAVCEnable, state_2(D)->bAVCEnable
	cmp	r3, #0	@ state_2(D)->bAVCEnable,
	bne	.L120	@,
.L124:
	ldr	r3, [r4, #80]	@ state_2(D)->stPregain.bPreGainEnable, state_2(D)->stPregain.bPreGainEnable
	cmp	r3, #0	@ state_2(D)->stPregain.bPreGainEnable,
	bne	.L192	@,
.L119:
	mov	r9, #0	@ Priority,
	mov	r8, #1	@ tmp376,
.L132:
	mov	r5, #0	@ Aop,
	b	.L130	@
.L127:
	add	r5, r5, #1	@ Aop, Aop,
	cmp	r5, #8	@ Aop,
	beq	.L193	@,
.L130:
	mov	r6, r8, asl r5	@ D.17212, tmp376,
	tst	r6, r7	@ D.17212, D.17213
	beq	.L127	@,
	mov	r0, r5	@, Aop
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r3, [r4, #52]	@ state_2(D)->AopBufFreeFlag, state_2(D)->AopBufFreeFlag
	tst	r6, r3	@ D.17212, state_2(D)->AopBufFreeFlag
	beq	.L127	@,
	mov	r0, r5	@, Aop
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r0, r5	@, Aop
	add	r1, sp, #16	@ tmp410,,
	bl	AOP_GetChnStatus	@
	ldr	r3, [r4, #44]	@ state_2(D)->AopNoneUnifyMask, state_2(D)->AopNoneUnifyMask
	mov	r0, r5	@, Aop
	tst	r6, r3	@ D.17212, state_2(D)->AopNoneUnifyMask
	add	lr, sp, #36	@ tmp411,,
	add	ip, sp, #68	@ tmp363,,
	beq	.L129	@,
	ldr	r2, [sp, #44]	@, stFrame.u32DataBytes
	ldr	r1, [sp, #36]	@, stFrame.pDataBuf
	bl	AOP_WriteRbfData	@
	b	.L127	@
.L187:
	bl	__memzero	@
	b	.L108	@
.L193:
	add	r9, r9, #1	@ Priority, Priority,
	cmp	r9, #2	@ Priority,
	addne	r3, sp, #8	@ tmp415,,
	ldrne	r7, [r3, r9, asl #2]	@ D.17213, MEM[symbol: PriorityMaskTab, index: Priority_160, step: 4, offset: 0B]
	bne	.L132	@
.L131:
	ldr	r1, [r4, #60]	@, state_2(D)->EngineId
	mov	r0, r9	@, Priority
	mov	r2, #32	@,
	bl	TRACE_AOE_FSM	@
	b	.L118	@
.L129:
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp364,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp363,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp364,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp363,,,,
	bl	AOE_GetWKBuf	@
	mov	r1, r0	@,
	add	r2, sp, #68	@,,
	ldr	r0, [sp, #24]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	mov	r0, r5	@, Aop
	ldr	r2, [sp, #76]	@, stUnfFrame.u32DataBytes
	ldr	r1, [sp, #68]	@, stUnfFrame.pDataBuf
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L127	@
.L191:
	mov	r1, r2	@ Flag, D.17212
	b	.L99	@
.L186:
	bic	r1, r1, #2	@ Flag, Flag,
	b	.L103	@
.L183:
	bic	r2, r2, #2	@ Flag, Flag,
	b	.L89	@
.L182:
	mov	r2, r0	@ Flag, D.17212
	b	.L83	@
.L120:
	bl	AOE_GetWKBuf	@
	mov	r1, r5	@, D.17215
	mov	r2, r0	@, D.17209
	mov	r6, r0	@ D.17209,
	ldr	r0, [r4, #92]	@, state_2(D)->pAVCHandle
	bl	iMedia_AVC_Apply	@
	cmp	r0, #0	@,
	bne	.L123	@,
	mov	r1, r6	@, D.17209
	ldr	r2, [r4, #64]	@, state_2(D)->BlockSize
	mov	r0, r5	@, D.17215
	bl	memcpy	@
	bl	AOE_ReleaseWKBuf	@
.L123:
	ldr	r3, [r4, #12]	@ state_2(D)->stAttr.u32DataFormat, state_2(D)->stAttr.u32DataFormat
	cmp	r3, #0	@ state_2(D)->stAttr.u32DataFormat,
	beq	.L124	@,
	b	.L119	@
.L192:
	ldr	r2, [r4, #88]	@, state_2(D)->stPregain.s32PreGainDec
	add	r0, sp, #36	@ tmp409,,
	ldr	r1, [r4, #84]	@, state_2(D)->stPregain.u32PreGainInt
	bl	UTIL_PreLRGainProcess	@
	b	.L119	@
	.fnend
	.size	ENGINEProcChnData, .-ENGINEProcChnData
	.align	2
	.global	ENGINEProcChnStopCmd
	.type	ENGINEProcChnStopCmd, %function
ENGINEProcChnStopCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L199	@ tmp128,
	add	r3, r0, #6	@ tmp117, Id,
	ldr	r3, [r2, r3, asl #2]	@ state, g_stEneRm.hEne
	cmp	r3, #0	@ state,
	bxeq	lr	@
	ldr	r1, [r3, #76]	@ state_6->CurStatus, state_6->CurStatus
	ldr	r2, [r2, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	cmp	r1, #1	@ state_6->CurStatus,
	moveq	r1, #0	@ tmp119,
	streq	r1, [r3, #76]	@ tmp119, state_6->CurStatus
	ldr	r3, [r2, #4]	@ tmp122,
	ubfx	r3, r3, #3, #1	@ D.17228, tmp122,,
	cmp	r3, #0	@ D.17228,
	bxne	lr	@
	ldr	r1, [r2, #4]	@ tmp125,
	bfi	r1, r3, #4, #4	@ tmp125, D.17228,,
	str	r1, [r2, #4]	@ tmp125,
	ldr	r3, [r2, #4]	@ tmp126,
	orr	r3, r3, #8	@ tmp126, tmp126,
	str	r3, [r2, #4]	@ tmp126,
	bx	lr	@
.L200:
	.align	2
.L199:
	.word	.LANCHOR0
	.fnend
	.size	ENGINEProcChnStopCmd, .-ENGINEProcChnStopCmd
	.align	2
	.global	ENGINEProcChnStartCmd
	.type	ENGINEProcChnStartCmd, %function
ENGINEProcChnStartCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r6, r0, #6	@ tmp158, Id,
	ldr	r4, .L217	@ tmp159,
	mov	r5, r0	@ Id, Id
	ldr	r3, [r4, r6, asl #2]	@ state, g_stEneRm.hEne
	cmp	r3, #0	@ state,
	beq	.L215	@,
	ldr	r2, [r3, #76]	@ state_8->CurStatus, state_8->CurStatus
	cmp	r2, #0	@ state_8->CurStatus,
	bne	.L207	@,
	mov	r0, r3	@, state
	bl	ENGINEDestroyChn.part.2	@
	mov	r0, r5	@, Id
	bl	ENGINECreateChn	@
	cmp	r0, #0	@ D.17231,
	str	r0, [r4, r6, asl #2]	@ D.17231, g_stEneRm.hEne
	beq	.L214	@,
	mov	r3, r0	@ state, D.17231
.L207:
	mov	r2, #1	@ tmp149,
	str	r2, [r3, #76]	@ tmp149, state_1->CurStatus
.L206:
	ldr	r2, [r4, r5, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r3, [r2, #4]	@ tmp152,
	ubfx	r3, r3, #3, #1	@ D.17232, tmp152,,
	cmp	r3, #0	@ D.17232,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, [r2, #4]	@ tmp155,
	bfi	r1, r3, #4, #4	@ tmp155, D.17232,,
	str	r1, [r2, #4]	@ tmp155,
	ldr	r3, [r2, #4]	@ tmp156,
	orr	r3, r3, #8	@ tmp156, tmp156,
	str	r3, [r2, #4]	@ tmp156,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L215:
	bl	ENGINECreateChn	@
	cmp	r0, #0	@ D.17231,
	str	r0, [r4, r6, asl #2]	@ D.17231, g_stEneRm.hEne
	bne	.L216	@,
.L214:
	ldr	r3, [r4, r5, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r2, [r3, #4]	@ tmp142,
	tst	r2, #8	@ tmp142,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r2, [r3, #4]	@ tmp145,
	mov	r1, #3	@ tmp146,
	bfi	r2, r1, #4, #4	@ tmp145, tmp146,,
	str	r2, [r3, #4]	@ tmp145,
	ldr	r2, [r3, #4]	@ tmp147,
	orr	r2, r2, #8	@ tmp147, tmp147,
	str	r2, [r3, #4]	@ tmp147,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L216:
	mov	r3, #1	@ tmp136,
	str	r3, [r0, #76]	@ tmp136, state_13->CurStatus
	b	.L206	@
.L218:
	.align	2
.L217:
	.word	.LANCHOR0
	.fnend
	.size	ENGINEProcChnStartCmd, .-ENGINEProcChnStartCmd
	.align	2
	.global	ENGINEProcChnCmd
	.type	ENGINEProcChnCmd, %function
ENGINEProcChnCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, .L230	@ tmp119,
	ldr	r2, [lr, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r3, [r2, #4]	@ tmp121,
	ubfx	r3, r3, #3, #1	@ D.17247, tmp121,,
	cmp	r3, #0	@ D.17247,
	ldrne	pc, [sp], #4	@
	ldr	ip, [r2, #4]	@ tmp125,
	ands	ip, ip, #3	@ D.17248, tmp125,
	beq	.L222	@,
	cmp	ip, #1	@ D.17248,
	bne	.L229	@,
	add	r1, r0, #6	@ tmp132, Id,
	ldr	r1, [lr, r1, asl #2]	@ state, g_stEneRm.hEne
	cmp	r1, #0	@ state,
	ldreq	pc, [sp], #4	@
	ldr	r0, [r1, #76]	@ state_11->CurStatus, state_11->CurStatus
	cmp	r0, #1	@ state_11->CurStatus,
	streq	r3, [r1, #76]	@ D.17247, state_11->CurStatus
	ldr	r3, [r2, #4]	@ tmp136,
	ubfx	r3, r3, #3, #1	@ D.17247, tmp136,,
	cmp	r3, #0	@ D.17247,
	ldrne	pc, [sp], #4	@
	ldr	r1, [r2, #4]	@ tmp139,
	bfi	r1, r3, #4, #4	@ tmp139, D.17247,,
	str	r1, [r2, #4]	@ tmp139,
	ldr	r3, [r2, #4]	@ tmp140,
	orr	r3, r3, #8	@ tmp140, tmp140,
	str	r3, [r2, #4]	@ tmp140,
	ldr	pc, [sp], #4	@
.L222:
	ldr	lr, [sp], #4	@,
	b	ENGINEProcChnStartCmd	@
.L229:
	ldr	r3, [r2, #4]	@ tmp127,
	mov	r1, #4	@ tmp128,
	bfi	r3, r1, #4, #4	@ tmp127, tmp128,,
	str	r3, [r2, #4]	@ tmp127,
	ldr	r3, [r2, #4]	@ tmp129,
	orr	r3, r3, #8	@ tmp129, tmp129,
	str	r3, [r2, #4]	@ tmp129,
	ldr	pc, [sp], #4	@
.L231:
	.align	2
.L230:
	.word	.LANCHOR0
	.fnend
	.size	ENGINEProcChnCmd, .-ENGINEProcChnCmd
	.align	2
	.global	ENGINEUpdateChnAipState
	.type	ENGINEUpdateChnAipState, %function
ENGINEUpdateChnAipState:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #0	@ AipBufDataFlag,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r9, r0	@ state, state
	mov	r6, r1	@ AipFlag, AipFlag
	mov	fp, r8	@ AipHiPriorityFlag, AipBufDataFlag
	mov	r10, r8	@ AipLoPriorityFlag, AipBufDataFlag
	mov	r4, r8	@ Aip, AipBufDataFlag
	mov	r7, #1	@ tmp133,
	b	.L238	@
.L233:
	add	r4, r4, #1	@ Aip, Aip,
	cmp	r4, #8	@ Aip,
	beq	.L250	@,
.L238:
	mov	r5, r7, asl r4	@ D.17260, tmp133,
	tst	r5, r6	@ D.17260, AipFlag
	beq	.L233	@,
	add	r1, sp, #8	@,,
	mov	r0, r4	@, Aip
	bl	AIP_GetChnStatus	@
	ldr	r3, [sp, #8]	@ status.CurnStatus, status.CurnStatus
	cmp	r3, #1	@ status.CurnStatus,
	bne	.L234	@,
	ldr	r3, [sp, #12]	@ status.Priority, status.Priority
	mov	r0, r4	@, Aip
	cmp	r3, #1	@ status.Priority,
	ldr	r3, [r9, #64]	@ D.17262, state_23(D)->BlockSize
	orreq	fp, fp, r5	@ AipHiPriorityFlag, AipHiPriorityFlag, D.17260
	orrne	r10, r10, r5	@ AipLoPriorityFlag, AipLoPriorityFlag, D.17260
	str	r3, [sp, #4]	@ D.17262, %sfp
	bl	AIP_QueryFiFoBusy	@
	ldr	r3, [sp, #4]	@ D.17262, %sfp
	cmp	r3, r0	@ D.17262,
	bcs	.L233	@,
	cmp	r3, #0	@ D.17262,
	beq	.L233	@,
	add	r4, r4, #1	@ Aip, Aip,
	orr	r8, r8, r5	@ AipBufDataFlag, AipBufDataFlag, D.17260
	cmp	r4, #8	@ Aip,
	bne	.L238	@,
.L250:
	str	r6, [r9, #16]	@ AipFlag, state_23(D)->AipMask
	str	fp, [r9, #20]	@ AipHiPriorityFlag, state_23(D)->AipHiPriorityMask
	str	r10, [r9, #24]	@ AipLoPriorityFlag, state_23(D)->AipLoPriorityMask
	str	r8, [r9, #28]	@ AipBufDataFlag, state_23(D)->AipBufDataFlag
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L234:
	ldr	r3, [r9, #64]	@ D.17262, state_23(D)->BlockSize
	mov	r0, r4	@, Aip
	str	r3, [sp, #4]	@ D.17262, %sfp
	bl	AIP_QueryFiFoBusy	@
	ldr	r3, [sp, #4]	@ D.17262, %sfp
	cmp	r0, r3	@, D.17262
	bls	.L233	@,
	cmp	r3, #0	@ D.17262,
	beq	.L233	@,
	ldr	r3, [sp, #12]	@ status.Priority, status.Priority
	orr	r8, r8, r5	@ AipBufDataFlag, AipBufDataFlag, D.17260
	cmp	r3, #1	@ status.Priority,
	orreq	fp, fp, r5	@ AipHiPriorityFlag, AipHiPriorityFlag, D.17260
	orrne	r10, r10, r5	@ AipLoPriorityFlag, AipLoPriorityFlag, D.17260
	b	.L233	@
	.fnend
	.size	ENGINEUpdateChnAipState, .-ENGINEUpdateChnAipState
	.align	2
	.global	ENGINEUpdateChnAopState
	.type	ENGINEUpdateChnAopState, %function
ENGINEUpdateChnAopState:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r3, [r0]	@ SourceBitPerSample, state_19(D)->stAttr.u32BitPerSample
	mov	r9, #0	@ AopBufFreeFlag,
	mov	fp, r0	@ state, state
	mov	r6, r1	@ AopFlag, AopFlag
	mov	r7, r9	@ AopNeedUnifyMask, AopBufFreeFlag
	str	r9, [sp, #4]	@ AopBufFreeFlag, %sfp
	str	r3, [sp, #8]	@ SourceBitPerSample, %sfp
	mov	r8, r9	@ AopLoPriorityFlag, AopBufFreeFlag
	ldr	r3, [r0, #72]	@ SourceSamplePerFrame, state_19(D)->SamplePerFrame
	mov	r4, r9	@ Aop, AopBufFreeFlag
	str	r9, [sp]	@ AopBufFreeFlag, %sfp
	mov	r10, #1	@ tmp138,
	str	r3, [sp, #12]	@ SourceSamplePerFrame, %sfp
	b	.L257	@
.L252:
	add	r4, r4, #1	@ Aop, Aop,
	cmp	r4, #8	@ Aop,
	beq	.L266	@,
.L257:
	mov	r5, r10, asl r4	@ D.17272, tmp138,
	tst	r5, r6	@ D.17272, AopFlag
	beq	.L252	@,
	add	r1, sp, #20	@ tmp149,,
	mov	r0, r4	@, Aop
	bl	AOP_GetChnStatus	@
	ldr	r3, [sp, #20]	@ status.CurnStatus, status.CurnStatus
	cmp	r3, #1	@ status.CurnStatus,
	bne	.L252	@,
	ldr	r3, [sp, #24]	@ status.Priority, status.Priority
	mov	r0, r4	@, Aop
	ldr	r2, [sp, #8]	@ SourceBitPerSample, %sfp
	add	r4, r4, #1	@ Aop, Aop,
	cmp	r3, #1	@ status.Priority,
	ldr	r1, [sp, #32]	@ status.uFrameSize, status.uFrameSize
	orrne	r8, r8, r5	@ AopLoPriorityFlag, AopLoPriorityFlag, D.17272
	ldreq	r3, [sp]	@ AopHiPriorityFlag, %sfp
	orreq	r3, r3, r5	@ AopHiPriorityFlag, AopHiPriorityFlag, D.17272
	streq	r3, [sp]	@ AopHiPriorityFlag, %sfp
	ldr	r3, [sp, #28]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	r3, r2	@ status.u32BitPerSample, SourceBitPerSample
	orrne	r7, r7, r5	@ AopNeedUnifyMask, AopNeedUnifyMask, D.17272
	ldreq	r3, [sp, #4]	@ AopNoneUnifyMask, %sfp
	orreq	r3, r3, r5	@ AopNoneUnifyMask, AopNoneUnifyMask, D.17272
	streq	r3, [sp, #4]	@ AopNoneUnifyMask, %sfp
	ldr	r3, [sp, #12]	@ SourceSamplePerFrame, %sfp
	mul	r1, r1, r3	@, status.uFrameSize, SourceSamplePerFrame
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r9, r9, r5	@ AopBufFreeFlag, AopBufFreeFlag, D.17272
	cmp	r4, #8	@ Aop,
	bne	.L257	@,
.L266:
	ldr	r3, [sp]	@ AopHiPriorityFlag, %sfp
	str	r6, [fp, #32]	@ AopFlag, state_19(D)->AopMask
	str	r8, [fp, #40]	@ AopLoPriorityFlag, state_19(D)->AopLoPriorityMask
	str	r3, [fp, #36]	@ AopHiPriorityFlag, state_19(D)->AopHiPriorityMask
	ldr	r3, [sp, #4]	@ AopNoneUnifyMask, %sfp
	str	r7, [fp, #48]	@ AopNeedUnifyMask, state_19(D)->AopNeedUnifyMask
	str	r9, [fp, #52]	@ AopBufFreeFlag, state_19(D)->AopBufFreeFlag
	str	r3, [fp, #44]	@ AopNoneUnifyMask, state_19(D)->AopNoneUnifyMask
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	ENGINEUpdateChnAopState, .-ENGINEUpdateChnAopState
	.align	2
	.global	ENGINEGetCunrStatus
	.type	ENGINEGetCunrStatus, %function
ENGINEGetCunrStatus:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L270	@ tmp115,
	add	r0, r0, #6	@ tmp116, Id,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stEneRm.hEne
	cmp	r3, #0	@ state,
	ldrne	r0, [r3, #76]	@ D.17278, state_5->CurStatus
	moveq	r0, #2	@ D.17278,
	bx	lr	@
.L271:
	.align	2
.L270:
	.word	.LANCHOR0
	.fnend
	.size	ENGINEGetCunrStatus, .-ENGINEGetCunrStatus
	.align	2
	.global	ENGINEProcChn
	.type	ENGINEProcChn, %function
ENGINEProcChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, #33	@,
	mov	r4, r0	@ Id, Id
	mov	r1, r0	@, Id
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r0, #2	@,
	bl	TRACE_AOE_FSM	@
	mov	r0, r4	@, Id
	bl	ENGINEProcChnCmd	@
	ldr	r3, .L289	@ tmp148,
	add	r2, r4, #6	@ tmp149, Id,
	ldr	r5, [r3, r2, asl #2]	@ state, g_stEneRm.hEne
	cmp	r5, #0	@ state,
	beq	.L273	@,
	ldr	r2, [r5, #76]	@ state_17->CurStatus, state_17->CurStatus
	cmp	r2, #1	@ state_17->CurStatus,
	beq	.L287	@,
.L273:
	mov	r0, #0	@,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L287:
	ldr	r4, [r3, r4, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	mov	r0, r5	@, state
	ldr	r1, [r4, #12]	@ tmp153,
	uxth	r1, r1	@, tmp153
	bl	ENGINEUpdateChnAopState	@
	ldr	r1, [r4, #8]	@ tmp156,
	mov	r0, r5	@, state
	uxth	r1, r1	@, tmp156
	bl	ENGINEUpdateChnAipState	@
	ldr	r3, [r4, #4]	@ tmp159,
	tst	r3, #268435456	@ tmp159,
	beq	.L279	@,
	ldr	r3, [r4, #4]	@ tmp162,
	bfc	r3, #28, #1	@ tmp162,,
	str	r3, [r4, #4]	@ tmp162,
	ldr	r1, [r4, #32]	@ tmp164,
	ubfx	r1, r1, #0, #13	@ D.17290, tmp164,,
	strh	r1, [sp, #4]	@ movhi	@ D.17290, stAVCNewAttr.sAttackTime
	ldr	ip, [r4, #32]	@ tmp167,
	ubfx	ip, ip, #13, #13	@ D.17290, tmp167,,
	strh	ip, [sp, #6]	@ movhi	@ D.17290, stAVCNewAttr.sReleaseTime
	ldr	r0, [r4, #36]	@ tmp171,
	ubfx	r0, r0, #6, #6	@ D.17292, tmp171,,
	rsb	r3, r0, #0	@ tmp175, D.17292
	uxth	r3, r3	@ D.17290, tmp175
	strh	r3, [sp, #10]	@ movhi	@ D.17290, stAVCNewAttr.sCornerLevel
	ldr	lr, [r4, #36]	@ tmp177,
	sxth	r2, r3	@ D.17290, D.17290
	cmn	r2, #31	@ D.17290,
	ubfx	lr, lr, #12, #4	@ D.17290, tmp177,,
	strh	lr, [sp, #12]	@ movhi	@ D.17290, stAVCNewAttr.sMaxGain
	ldr	r3, [r4, #36]	@ tmp181,
	movwge	r6, #65528	@ tmp188,
	movtge	r6, 65535	@ tmp188,
	rsbge	r6, r0, r6	@ tmp188, D.17292, tmp188
	and	r3, r3, #63	@ D.17291, tmp181,
	strgeh	r6, [sp, #8]	@ movhi	@ tmp188, stAVCNewAttr.sStartLevel
	rsb	r3, r3, #0	@ tmp184, D.17291
	ldrsh	r6, [r5, #108]	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sAttackTime, MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sAttackTime
	mvnlt	r0, #39	@ tmp190,
	strlth	r0, [sp, #8]	@ movhi	@ tmp190, stAVCNewAttr.sStartLevel
	uxth	r3, r3	@ D.17290, tmp184
	cmp	r6, r1	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sAttackTime, D.17290
	strh	r3, [sp, #14]	@ movhi	@ D.17290, stAVCNewAttr.sTargetLevel
	ldr	r0, [r4, #4]	@ tmp192,
	ubfx	r1, r0, #9, #1	@ D.17288, tmp192,,
	str	r1, [r5, #104]	@ D.17288, state_17->bAVCEnable
	beq	.L288	@,
.L277:
	add	r3, r5, #108	@ D.17295, state,
	mov	r2, #12	@,
	add	r1, sp, #4	@,,
	mov	r0, r3	@, D.17295
	bl	memcpy	@
	ldr	r2, [r5, #100]	@, state_17->u32AVCStrBufSize
	ldr	r1, [r5, #96]	@, state_17->pAVCStrBuf
	mov	r3, r0	@ D.17295,
	add	r0, r5, #92	@, state,
	bl	iMedia_AVC_Init	@
.L279:
	mov	r1, r4	@, pEneReg
	mov	r0, r5	@, state
	bl	ENGINEUpdateChnPreGainState	@
	mov	r0, r5	@, state
	bl	ENGINEProcChnData	@
	mov	r0, #0	@,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L288:
	ldrsh	r1, [r5, #110]	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sReleaseTime, MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sReleaseTime
	cmp	r1, ip	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sReleaseTime, D.17290
	bne	.L277	@,
	ldrsh	r1, [r5, #114]	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sCornerLevel, MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sCornerLevel
	cmp	r1, r2	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sCornerLevel, D.17290
	bne	.L277	@,
	ldrh	r2, [r5, #118]	@ D.17290, MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sTargetLevel
	cmp	r3, r2	@ D.17290, D.17290
	bne	.L277	@,
	ldrsh	r3, [r5, #116]	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sMaxGain, MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sMaxGain
	cmp	r3, lr	@ MEM[(struct iMedia_AVC_STRU_PARAMS *)state_17 + 108B].sMaxGain, D.17290
	beq	.L279	@,
	b	.L277	@
.L290:
	.align	2
.L289:
	.word	.LANCHOR0
	.fnend
	.size	ENGINEProcChn, .-ENGINEProcChn
	.align	2
	.global	ENGINESwResetReg
	.type	ENGINESwResetReg, %function
ENGINESwResetReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #40	@,
	mov	r4, r0	@ pEneReg, pEneReg
	bl	__memzero	@
	ldr	r3, [r4, #4]	@ tmp111,
	mov	r2, #1	@ tmp114,
	orr	r3, r3, #8	@ tmp111, tmp111,
	str	r3, [r4, #4]	@ tmp111,
	ldr	r3, [r4, #4]	@ tmp113,
	bfi	r3, r2, #0, #2	@ tmp113, tmp114,,
	str	r3, [r4, #4]	@ tmp113,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ENGINESwResetReg, .-ENGINESwResetReg
	.align	2
	.global	ENGINE_Process
	.type	ENGINE_Process, %function
ENGINE_Process:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, #0	@ Id,
.L294:
	mov	r0, r4	@, Id
	add	r4, r4, #1	@ Id, Id,
	bl	ENGINEProcChn	@
	cmp	r4, #6	@ Id,
	bne	.L294	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ENGINE_Process, .-ENGINE_Process
	.align	2
	.global	ENGINE_Init
	.type	ENGINE_Init, %function
ENGINE_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ivtmp.157, u32EngineRegBase
	ldr	r5, .L301	@ ivtmp.161,
	mov	r8, #1	@ tmp125,
	mov	r7, #0	@ tmp126,
	add	r6, r5, #24	@ D.17334, ivtmp.161,
.L298:
	mov	r0, r4	@, ivtmp.157
	mov	r1, #40	@,
	str	r4, [r5], #4	@ ivtmp.157, MEM[base: _22, offset: 0B]
	bl	__memzero	@
	ldr	r3, [r4, #4]	@ tmp119,
	cmp	r5, r6	@ ivtmp.161, D.17334
	add	r4, r4, #40	@ ivtmp.157, ivtmp.157,
	orr	r3, r3, #8	@ tmp119, tmp119,
	str	r3, [r4, #-36]	@ tmp119,
	ldr	r3, [r4, #-36]	@ tmp121,
	bfi	r3, r8, #0, #2	@ tmp121, tmp125,,
	str	r3, [r4, #-36]	@ tmp121,
	str	r7, [r5, #20]	@ tmp126, MEM[base: _23, offset: 20B]
	bne	.L298	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L302:
	.align	2
.L301:
	.word	.LANCHOR0
	.fnend
	.size	ENGINE_Init, .-ENGINE_Init
	.align	2
	.global	ENGINE_DeInit
	.type	ENGINE_DeInit, %function
ENGINE_DeInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, #0	@ tmp117,
	ldr	r4, .L312	@ ivtmp.180,
	add	r5, r4, #24	@ D.17359, ivtmp.180,
	b	.L305	@
.L304:
	cmp	r4, r5	@ ivtmp.180, D.17359
	str	r6, [r4]	@ tmp117, MEM[base: _14, offset: 0B]
	beq	.L311	@,
.L305:
	ldr	r0, [r4, #4]!	@ D.17357, MEM[base: _14, offset: 0B]
	cmp	r0, #0	@ D.17357,
	beq	.L304	@,
	bl	ENGINEDestroyChn.part.2	@
	cmp	r4, r5	@ ivtmp.180, D.17359
	str	r6, [r4]	@ tmp117, MEM[base: _14, offset: 0B]
	bne	.L305	@,
.L311:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L313:
	.align	2
.L312:
	.word	.LANCHOR0+20
	.fnend
	.size	ENGINE_DeInit, .-ENGINE_DeInit
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stEneRm, %object
	.size	g_stEneRm, 48
g_stEneRm:
	.space	48
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
