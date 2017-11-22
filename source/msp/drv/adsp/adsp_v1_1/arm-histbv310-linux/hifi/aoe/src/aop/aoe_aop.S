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
	.file	"aoe_aop.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -I arch/arm/include/generated -I include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -I include/generated/uapi -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/component/ha_codec/include
@ -I -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_SND_AOE_SWSIMULATE_SUPPORT -D INTERLEAVED_OUTPUT
@ -D HI_SND_AVC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(aoe_aop)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aop/.aoe_aop.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_aop.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_aop.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fverbose-asm
@ -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
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
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -funit-at-a-time
@ -funwind-tables -fverbose-asm -fzero-initialized-in-bss -marm -mglibc
@ -mlittle-endian -mlra -mpic-data-is-text-relative -msched-prolog
@ -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.global	AOPGetChnCreateAttr
	.type	AOPGetChnCreateAttr, %function
AOPGetChnCreateAttr:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9	@ tmp153,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstAttr, pstAttr
	ldr	r5, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	mov	r0, r1	@, pstAttr
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, [r5]	@ *pAopReg_6, *pAopReg_6
	and	r1, r1, #3	@, *pAopReg_6,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	bne	.L4	@,
	ldr	r1, [r5]	@ *pAopReg_6, *pAopReg_6
	add	r0, r4, #4	@, pstAttr,
	ubfx	r1, r1, #2, #2	@, *pAopReg_6,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L4	@,
	ldr	r1, [r5]	@ *pAopReg_6, *pAopReg_6
	add	r0, r4, #8	@, pstAttr,
	ubfx	r1, r1, #4, #4	@, *pAopReg_6,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L4	@,
	ldr	r1, [r5]	@ *pAopReg_6, *pAopReg_6
	add	r0, r4, #12	@, pstAttr,
	ubfx	r1, r1, #8, #2	@, *pAopReg_6,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L4	@,
	ldr	r1, [r5]	@ *pAopReg_6, *pAopReg_6
	add	r0, sp, #4	@,,
	ubfx	r1, r1, #20, #8	@, *pAopReg_6,,
	bl	AOE_REG_ReadBufLatencyMs	@
	subs	r6, r0, #0	@ D.14608,
	bne	.L4	@,
	ldr	r3, [r5]	@ *pAopReg_6, *pAopReg_6
	ldr	r1, [r4]	@, pstAttr_7(D)->u32BitPerSample
	ubfx	r3, r3, #10, #1	@ D.14615, *pAopReg_6,,
	ldr	r0, [r4, #4]	@, pstAttr_7(D)->u32Channels
	str	r3, [r4, #16]	@ D.14615, pstAttr_7(D)->Priority
	bl	UTIL_CalcFrameSize	@
	mov	r3, #1	@ tmp183,
	str	r3, [r4, #20]	@ tmp183, pstAttr_7(D)->stRbfAttr.bExtMem
	ldr	r3, [r5, #20]	@ tmp185,
	ldr	r2, [r4, #8]	@, pstAttr_7(D)->u32SampleRate
	ubfx	r3, r3, #24, #1	@ D.14615, tmp185,,
	str	r3, [r4, #40]	@ D.14615, pstAttr_7(D)->stRbfAttr.uBufFlag
	ldr	r3, [r5, #16]	@ D.14611, pAopReg_6->AOP_BUF_ADDR
	str	r3, [r4, #24]	@ D.14611, pstAttr_7(D)->stRbfAttr.uBufAddr
	ldr	r3, [r5, #20]	@ tmp188,
	bic	r3, r3, #-16777216	@ D.14616, tmp188,
	str	r3, [r4, #28]	@ D.14616, pstAttr_7(D)->stRbfAttr.uBufSize
	ldr	r3, [r5, #20]	@ tmp190,
	tst	r3, #16777216	@ tmp190,
	addeq	r3, r5, #24	@ D.14617, pAopReg,
	streq	r3, [r4, #32]	@ D.14617, pstAttr_7(D)->stRbfAttr.uBufWptr
	ldrne	r3, [r5, #24]	@ D.14611, pAopReg_6->AOP_BUF_WPTR
	addeq	r5, r5, #28	@ D.14617, pAopReg,
	streq	r5, [r4, #36]	@ D.14617, pstAttr_7(D)->stRbfAttr.uBufRptr
	strne	r3, [r4, #32]	@ D.14611, pstAttr_7(D)->stRbfAttr.uBufWptr
	ldrne	r3, [r5, #28]	@ D.14611, pAopReg_6->AOP_BUF_RPTR
	strne	r3, [r4, #36]	@ D.14611, pstAttr_7(D)->stRbfAttr.uBufRptr
	ldr	r3, [sp, #4]	@ D.14611, uLatencyMs
	str	r3, [r4, #52]	@ D.14611, pstAttr_7(D)->stRbfAttr.uLatencyMs
	mov	r1, r0	@, u32FrameSize
	str	r0, [r4, #44]	@ u32FrameSize, pstAttr_7(D)->stRbfAttr.uFrameSize
	mov	r0, r3	@, D.14611
	bl	UTIL_LatencyMs2ByteSize	@
	str	r0, [r4, #48]	@, pstAttr_7(D)->stRbfAttr.uLatencySize
	mov	r0, r6	@, D.14608
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L4:
	mvn	r6, #0	@ D.14608,
	mov	r0, r6	@, D.14608
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.fnend
	.size	AOPGetChnCreateAttr, .-AOPGetChnCreateAttr
	.align	2
	.global	AOPGetChnCmd
	.type	AOPGetChnCmd, %function
AOPGetChnCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19	@ tmp118,
	ldr	r3, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ tmp120,
	tst	r2, #8	@ tmp120,
	movne	r0, #2	@ eNewCmd,
	beq	.L18	@,
.L12:
	str	r0, [r1]	@ eNewCmd, *newcmd_11(D)
	bx	lr	@
.L18:
	ldr	r0, [r3, #4]	@ tmp124,
	ands	r0, r0, #3	@ D.14623, tmp124,
	beq	.L12	@,
	cmp	r0, #1	@ D.14623,
	beq	.L12	@,
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
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.fnend
	.size	AOPGetChnCmd, .-AOPGetChnCmd
	.align	2
	.global	AOPAckChnCmd
	.type	AOPAckChnCmd, %function
AOPAckChnCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
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
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.fnend
	.size	AOPAckChnCmd, .-AOPAckChnCmd
	.align	2
	.global	AOPCreateChn
	.type	AOPCreateChn, %function
AOPCreateChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #68
	sub	sp, sp, #68	@,,
	add	r1, sp, #8	@ tmp130,,
	mov	r3, #0	@ tmp118,
	str	r3, [sp, #4]	@ tmp118, hRingOut
	bl	AOPGetChnCreateAttr	@
	cmp	r0, #0	@,
	beq	.L26	@,
.L28:
	mov	r4, #0	@ D.14632,
.L27:
	mov	r0, r4	@, D.14632
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L26:
	add	r1, sp, #28	@,,
	add	r0, sp, #4	@,,
	bl	RBUF_Create	@
	ldr	r3, [sp, #4]	@ hRingOut, hRingOut
	cmp	r3, #0	@ hRingOut,
	beq	.L28	@,
	mov	r1, #80	@,
	mov	r0, #17	@,
	bl	HI_ADSP_MALLOC	@
	subs	r5, r0, #0	@ __p,
	beq	.L29	@,
	mov	r1, #80	@,
	mov	r4, r5	@ D.14632, __p
	bl	__memzero	@
	add	ip, sp, #8	@ tmp131,,
	add	lr, r5, #12	@ tmp124, __p,
	ldr	r7, [sp, #4]	@ hRingOut, hRingOut
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp125,,,,
	mov	r6, #1	@ tmp127,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp124,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp125,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp124,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp125,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp124,,,,
	ldmia	ip, {r0, r1}	@ tmp125,,
	stmia	lr, {r0, r1}	@ tmp124,,
	mov	r0, r4	@, D.14632
	str	r7, [r5, #72]	@ hRingOut, MEM[(struct AOP_STATE_S *)__p_11].hRingOut
	str	r6, [r5, #76]	@ tmp127, MEM[(struct AOP_STATE_S *)__p_11].CurnStatus
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L29:
	ldr	r0, [sp, #4]	@, hRingOut
	mov	r4, r5	@ D.14632, __p
	bl	RBUF_Destroy	@
	b	.L27	@
	.fnend
	.size	AOPCreateChn, .-AOPCreateChn
	.align	2
	.global	AOP_DestroyChn
	.type	AOP_DestroyChn, %function
AOP_DestroyChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L37	@ tmp114,
	add	r0, r0, #8	@ tmp115, Id,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r3, r0, asl #2]	@ inst, g_stAopRm.hAop
	cmp	r4, #0	@ inst,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r0, [r4, #72]	@, state_5->hRingOut
	bl	RBUF_Destroy	@
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.fnend
	.size	AOP_DestroyChn, .-AOP_DestroyChn
	.align	2
	.global	AOPUpdateChnState
	.type	AOPUpdateChnState, %function
AOPUpdateChnState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L44	@ tmp120,
	add	r3, r0, #8	@ tmp122, Id,
	ldr	r3, [r2, r3, asl #2]	@ state, g_stAopRm.hAop
	ldr	r2, [r2, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state,
	bxeq	lr	@
	mov	r1, #0	@ tmp123,
	str	r1, [r3]	@ tmp123, state_6->stGain.bLinearMode
	ldr	r1, [r2, #12]	@ tmp125,
	uxtb	r1, r1	@ D.14641, tmp125
	strh	r1, [r3, #4]	@ movhi	@ D.14641, state_6->stGain.u16LGain
	ldr	r1, [r2, #12]	@ tmp128,
	ubfx	r1, r1, #8, #8	@ D.14641, tmp128,,
	strh	r1, [r3, #6]	@ movhi	@ D.14641, state_6->stGain.u16RGain
	ldr	r2, [r2, #12]	@ tmp132,
	ubfx	r2, r2, #16, #1	@ D.14643, tmp132,,
	str	r2, [r3, #8]	@ D.14643, state_6->bMute
	bx	lr	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.fnend
	.size	AOPUpdateChnState, .-AOPUpdateChnState
	.align	2
	.global	AOPProcChnlCmd
	.type	AOPProcChnlCmd, %function
AOPProcChnlCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, .L55	@ tmp154,
	ldr	r3, [r6, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r4, [r3, #4]	@ tmp122,
	ubfx	r4, r4, #3, #1	@ D.14650, tmp122,,
	cmp	r4, #0	@ D.14650,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r2, [r3, #4]	@ tmp126,
	mov	r5, r0	@ Id, Id
	ands	r2, r2, #3	@ D.14651, tmp126,
	beq	.L49	@,
	cmp	r2, #1	@ D.14651,
	bne	.L54	@,
	bl	AOP_DestroyChn	@
	add	r3, r5, #8	@ tmp144, Id,
	str	r4, [r6, r3, asl #2]	@ D.14650, g_stAopRm.hAop
.L51:
	ldr	r2, [r6, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r3, [r2, #4]	@ tmp148,
	ubfx	r3, r3, #3, #1	@ D.14650, tmp148,,
	cmp	r3, #0	@ D.14650,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, [r2, #4]	@ tmp151,
	bfi	r1, r3, #4, #4	@ tmp151, D.14650,,
	str	r1, [r2, #4]	@ tmp151,
	ldr	r3, [r2, #4]	@ tmp152,
	orr	r3, r3, #8	@ tmp152, tmp152,
	str	r3, [r2, #4]	@ tmp152,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L49:
	bl	AOPCreateChn	@
	add	r3, r5, #8	@ tmp133, Id,
	cmp	r0, #0	@ D.14649,
	str	r0, [r6, r3, asl #2]	@ D.14649, g_stAopRm.hAop
	bne	.L51	@,
	ldr	r3, [r6, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ tmp136,
	tst	r2, #8	@ tmp136,
	bne	.L51	@,
	ldr	r2, [r3, #4]	@ tmp139,
	mov	r1, #1	@ tmp140,
	bfi	r2, r1, #4, #4	@ tmp139, tmp140,,
	str	r2, [r3, #4]	@ tmp139,
	ldr	r2, [r3, #4]	@ tmp141,
	orr	r2, r2, #8	@ tmp141, tmp141,
	str	r2, [r3, #4]	@ tmp141,
	b	.L51	@
.L54:
	ldr	r2, [r3, #4]	@ tmp128,
	mov	r1, #4	@ tmp129,
	bfi	r2, r1, #4, #4	@ tmp128, tmp129,,
	str	r2, [r3, #4]	@ tmp128,
	ldr	r2, [r3, #4]	@ tmp130,
	orr	r2, r2, #8	@ tmp130, tmp130,
	str	r2, [r3, #4]	@ tmp130,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.fnend
	.size	AOPProcChnlCmd, .-AOPProcChnlCmd
	.align	2
	.global	AOPSwResetReg
	.type	AOPSwResetReg, %function
AOPSwResetReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #32	@,
	mov	r4, r0	@ pAopReg, pAopReg
	bl	__memzero	@
	ldr	r3, [r4, #4]	@ tmp111,
	orr	r3, r3, #8	@ tmp111, tmp111,
	str	r3, [r4, #4]	@ tmp111,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AOPSwResetReg, .-AOPSwResetReg
	.align	2
	.global	AOP_Init
	.type	AOP_Init, %function
AOP_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ivtmp.44, u32AopRegBase
	ldr	r5, .L63	@ ivtmp.47,
	mov	r7, #0	@ tmp153,
	add	r6, r5, #32	@ D.14680, ivtmp.47,
.L60:
	mov	r0, r4	@, ivtmp.44
	mov	r1, #32	@,
	str	r4, [r5, #4]!	@ ivtmp.44, MEM[base: _21, offset: 0B]
	bl	__memzero	@
	ldr	r3, [r4, #4]	@ tmp149,
	cmp	r5, r6	@ ivtmp.47, D.14680
	add	r4, r4, #32	@ ivtmp.44, ivtmp.44,
	orr	r3, r3, #8	@ tmp149, tmp149,
	str	r3, [r4, #-28]	@ tmp149,
	str	r7, [r5, #32]	@ tmp153, MEM[base: _21, offset: 32B]
	bne	.L60	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L64:
	.align	2
.L63:
	.word	.LANCHOR0-4
	.fnend
	.size	AOP_Init, .-AOP_Init
	.align	2
	.global	AOP_DeInit
	.type	AOP_DeInit, %function
AOP_DeInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, #0	@ Id,
	ldr	r5, .L69	@ ivtmp.68,
	mov	r6, r4	@ tmp115, Id
.L66:
	mov	r0, r4	@, Id
	add	r4, r4, #1	@ Id, Id,
	bl	AOP_DestroyChn	@
	cmp	r4, #8	@ Id,
	str	r6, [r5, #4]!	@ tmp115, MEM[base: _12, offset: 0B]
	bne	.L66	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L70:
	.align	2
.L69:
	.word	.LANCHOR0+28
	.fnend
	.size	AOP_DeInit, .-AOP_DeInit
	.align	2
	.global	AOP_Process
	.type	AOP_Process, %function
AOP_Process:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, #0	@ Id,
	ldr	r5, .L79	@ ivtmp.84,
	mov	r6, r4	@ tmp137, Id
.L73:
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, r4	@, Id
	bl	TRACE_AOE_FSM	@
	ldr	r2, [r5, #4]!	@ pAopReg, MEM[base: _27, offset: 0B]
	mov	r0, r4	@, Id
	ldr	r3, [r5, #32]	@ state, MEM[base: _27, offset: 32B]
	cmp	r3, #0	@ state,
	beq	.L72	@,
	str	r6, [r3]	@ tmp137, state_11->stGain.bLinearMode
	ldr	r1, [r2, #12]	@ tmp125,
	uxtb	r1, r1	@ D.14719, tmp125
	strh	r1, [r3, #4]	@ movhi	@ D.14719, state_11->stGain.u16LGain
	ldr	r1, [r2, #12]	@ tmp128,
	ubfx	r1, r1, #8, #8	@ D.14719, tmp128,,
	strh	r1, [r3, #6]	@ movhi	@ D.14719, state_11->stGain.u16RGain
	ldr	r2, [r2, #12]	@ tmp132,
	ubfx	r2, r2, #16, #1	@ D.14721, tmp132,,
	str	r2, [r3, #8]	@ D.14721, state_11->bMute
.L72:
	bl	AOPProcChnlCmd	@
	mov	r1, r4	@, Id
	mov	r2, #64	@,
	mov	r0, #3	@,
	add	r4, r4, #1	@ Id, Id,
	bl	TRACE_AOE_FSM	@
	cmp	r4, #8	@ Id,
	bne	.L73	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L80:
	.align	2
.L79:
	.word	.LANCHOR0-4
	.fnend
	.size	AOP_Process, .-AOP_Process
	.align	2
	.global	AOP_GetChnStatus
	.type	AOP_GetChnStatus, %function
AOP_GetChnStatus:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L84	@ tmp118,
	add	r0, r0, #8	@ tmp119, Id,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	streq	r3, [r1]	@ state, pstStatus_6(D)->CurnStatus
	ldrne	r2, [r3, #76]	@ D.14727, state_5->CurnStatus
	strne	r2, [r1]	@ D.14727, pstStatus_6(D)->CurnStatus
	ldrne	r2, [r3, #28]	@ D.14728, state_5->stAttr.Priority
	strne	r2, [r1, #4]	@ D.14728, pstStatus_6(D)->Priority
	ldrne	r2, [r3, #56]	@ D.14726, state_5->stAttr.stRbfAttr.uFrameSize
	strne	r2, [r1, #12]	@ D.14726, pstStatus_6(D)->uFrameSize
	ldrne	r3, [r3, #12]	@ D.14726, state_5->stAttr.u32BitPerSample
	strne	r3, [r1, #8]	@ D.14726, pstStatus_6(D)->u32BitPerSample
	bx	lr	@
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.fnend
	.size	AOP_GetChnStatus, .-AOP_GetChnStatus
	.align	2
	.global	AOP_GetChnAttr
	.type	AOP_GetChnAttr, %function
AOP_GetChnAttr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstAttr, pstAttr
	mov	r5, r0	@ Id, Id
	mov	r1, #56	@,
	mov	r0, r4	@, pstAttr
	add	r5, r5, #8	@ tmp115, Id,
	bl	__memzero	@
	ldr	r3, .L92	@ tmp114,
	ldr	lr, [r3, r5, asl #2]	@ state, g_stAopRm.hAop
	cmp	lr, #0	@ state,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	add	lr, lr, #12	@ tmp117, state,
	mov	ip, r4	@ pstAttr, pstAttr
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	ldmia	lr, {r0, r1}	@ tmp117,,
	stmia	ip, {r0, r1}	@ pstAttr,,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L93:
	.align	2
.L92:
	.word	.LANCHOR0
	.fnend
	.size	AOP_GetChnAttr, .-AOP_GetChnAttr
	.align	2
	.global	AOP_WriteRbfData
	.type	AOP_WriteRbfData, %function
AOP_WriteRbfData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L101	@ tmp120,
	add	r0, r0, #8	@ tmp121, Id,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	beq	.L95	@,
	ldr	r0, [r3, #76]	@ state_6->CurnStatus, state_6->CurnStatus
	cmp	r0, #0	@ state_6->CurnStatus,
	bne	.L100	@,
.L95:
	mov	r0, #0	@,
	bx	lr	@
.L100:
	ldr	r0, [r3, #72]	@, state_6->hRingOut
	b	RBUF_WriteDataDma	@
.L102:
	.align	2
.L101:
	.word	.LANCHOR0
	.fnend
	.size	AOP_WriteRbfData, .-AOP_WriteRbfData
	.align	2
	.global	AOP_QueryRbfInfo
	.type	AOP_QueryRbfInfo, %function
AOP_QueryRbfInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ pstBufInfo, pstBufInfo
	mov	r4, r0	@ Id, Id
	mov	r1, #36	@,
	mov	r0, r5	@, pstBufInfo
	add	r4, r4, #8	@ tmp117, Id,
	bl	__memzero	@
	ldr	r3, .L112	@ tmp116,
	ldr	r3, [r3, r4, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r2, [r3, #76]	@ state_7->CurnStatus, state_7->CurnStatus
	cmp	r2, #0	@ state_7->CurnStatus,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r5	@, pstBufInfo
	ldr	r0, [r3, #72]	@, state_7->hRingOut
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	RBUF_QueryInfo	@
.L113:
	.align	2
.L112:
	.word	.LANCHOR0
	.fnend
	.size	AOP_QueryRbfInfo, .-AOP_QueryRbfInfo
	.align	2
	.global	AOP_QueryRbfFree
	.type	AOP_QueryRbfFree, %function
AOP_QueryRbfFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L123	@ tmp118,
	add	r0, r0, #8	@ tmp119, Id,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	beq	.L115	@,
	ldr	r2, [r3, #76]	@ state_6->CurnStatus, state_6->CurnStatus
	cmp	r2, #0	@ state_6->CurnStatus,
	beq	.L115	@,
	ldr	r0, [r3, #72]	@ D.14744, state_6->hRingOut
	cmp	r0, #0	@ D.14744,
	bne	.L122	@,
.L115:
	mov	r0, #0	@,
	bx	lr	@
.L122:
	b	RBUF_CheckFree	@
.L124:
	.align	2
.L123:
	.word	.LANCHOR0
	.fnend
	.size	AOP_QueryRbfFree, .-AOP_QueryRbfFree
	.align	2
	.global	AOP_WriteBuffProcTryCnt
	.type	AOP_WriteBuffProcTryCnt, %function
AOP_WriteBuffProcTryCnt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	AOP_WriteBuffProcTryCnt, .-AOP_WriteBuffProcTryCnt
	.align	2
	.global	AOP_WriteBuffProcOKCnt
	.type	AOP_WriteBuffProcOKCnt, %function
AOP_WriteBuffProcOKCnt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	AOP_WriteBuffProcOKCnt, .-AOP_WriteBuffProcOKCnt
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stAopRm, %object
	.size	g_stAopRm, 64
g_stAopRm:
	.space	64
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
