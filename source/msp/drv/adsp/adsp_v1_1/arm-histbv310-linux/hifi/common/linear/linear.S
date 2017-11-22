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
	.file	"linear.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(linear)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/linear/.linear.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/linear/linear.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/linear/linear.o
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

	.global	__aeabi_idiv
	.text
	.align	2
	.global	LSRC_Create
	.type	LSRC_Create, %function
LSRC_Create:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	ip, #60927	@ tmp165,
	sub	r4, r1, #1	@ D.6411, inRate,
	movt	ip, 2	@ tmp165,
	cmp	r4, ip	@ D.6411, tmp165
	mov	lr, r1	@ inRate, inRate
	mov	r4, #0	@ tmp163,
	ldr	r5, [sp, #32]	@ Channels, Channels
	str	r4, [r0]	@ tmp163, *phLSRC_7(D)
	ldmhifd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	sub	r6, r2, #1	@ D.6411, outRate,
	cmp	r6, ip	@ D.6411, tmp165
	ldmhifd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r7, r0	@ phLSRC, phLSRC
	mov	r0, r2	@, outRate
	mov	r6, r3	@ BitPerSample, BitPerSample
	mov	r9, r2	@ outRate, outRate
	mov	r8, r1	@ inRate, inRate
	bl	__aeabi_idiv	@
	cmp	r0, #6	@,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, #76	@,
	mov	r0, #17	@,
	bl	HI_ADSP_MALLOC	@
	subs	r10, r0, #0	@ __p,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, #76	@,
	bl	__memzero	@
	cmp	r9, #8000	@ outRate,
	ldr	r1, .L19	@ tmp179,
	beq	.L11	@,
	mov	ip, #1	@ n,
	mov	r3, r1	@ ivtmp.40, tmp179
.L6:
	ldr	r2, [r3, #4]!	@ MEM[base: _51, offset: 0B], MEM[base: _51, offset: 0B]
	cmp	r2, r9	@ MEM[base: _51, offset: 0B], outRate
	beq	.L5	@,
	add	ip, ip, #1	@ n, n,
	cmp	ip, #13	@ n,
	bne	.L6	@,
.L10:
	cmp	r5, #0	@ Channels,
	addne	lr, r10, #32	@ ivtmp.24, __p,
	movne	ip, #0	@ n,
	movne	r3, ip	@ tmp180, n
	beq	.L9	@,
.L8:
	add	ip, ip, #1	@ n, n,
	str	r3, [lr, #4]!	@ tmp180, MEM[base: _23, offset: 0B]
	cmp	ip, r5	@ n, Channels
	bne	.L8	@,
.L9:
	str	r6, [r10]	@ BitPerSample, MEM[(struct SRC_Linear *)__p_17].BitPerSample
	stmib	r10, {r5, r8}	@ __p,,
	str	r8, [r10, #12]	@ inRate, MEM[(struct SRC_Linear *)__p_17].InRate
	str	r9, [r10, #16]	@ outRate, MEM[(struct SRC_Linear *)__p_17].OutRate
	str	r10, [r7]	@ __p, *phLSRC_7(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L11:
	mov	ip, r4	@ n, tmp163
.L5:
	add	ip, r1, ip, lsl #2	@ tmp176, tmp179, n,
	ldr	r3, [ip, #52]	@ tmp178, g_s32IvtSfTab
	str	r3, [r10, #32]	@ tmp178, MEM[(struct SRC_Linear *)__p_17].IvtSFFactor
	b	.L10	@
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.fnend
	.size	LSRC_Create, .-LSRC_Create
	.align	2
	.global	LSRC_Destroy
	.type	LSRC_Destroy, %function
LSRC_Destroy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ hLSRC, hLSRC
	bxeq	lr	@
	mov	r0, #17	@,
	b	HI_ADSP_FREE	@
	.fnend
	.size	LSRC_Destroy, .-LSRC_Destroy
	.align	2
	.global	LSRC_GetMaxOutputNum
	.type	LSRC_GetMaxOutputNum, %function
LSRC_GetMaxOutputNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ hLSRC, hLSRC
	beq	.L25	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@ insamps, insamps
	ldr	r2, [r3, #16]	@ pLinearSrc_3->OutRate, pLinearSrc_3->OutRate
	ldr	r1, [r3, #8]	@, pLinearSrc_3->AdjustInRate
	mul	r0, r2, r0	@, pLinearSrc_3->OutRate, insamps
	bl	__aeabi_idiv	@
	add	r0, r0, #1	@ D.6420,,
	ldmfd	sp!, {r4, pc}	@
.L25:
	mvn	r0, #0	@ D.6420,
	bx	lr	@
	.fnend
	.size	LSRC_GetMaxOutputNum, .-LSRC_GetMaxOutputNum
	.global	__aeabi_idivmod
	.align	2
	.global	LSRC_GetMinInputNum
	.type	LSRC_GetMinInputNum, %function
LSRC_GetMinInputNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ hLSRC
	beq	.L30	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r0, #8]	@ pLinearSrc_4->AdjustInRate, pLinearSrc_4->AdjustInRate
	ldr	r6, [r0, #16]	@ D.6425, pLinearSrc_4->OutRate
	mul	r4, r3, r1	@ D.6425, pLinearSrc_4->AdjustInRate, outsamps
	mov	r1, r6	@, D.6425
	mov	r0, r4	@, D.6425
	bl	__aeabi_idiv	@
	mov	r1, r6	@, D.6425
	mov	r5, r0	@ tmp124,
	mov	r0, r4	@, D.6425
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	beq	.L31	@,
	add	r0, r5, #1	@ D.6424, tmp124,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L31:
	mov	r0, r5	@ D.6424, tmp124
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L30:
	mvn	r0, #0	@ D.6424,
	bx	lr	@
	.fnend
	.size	LSRC_GetMinInputNum, .-LSRC_GetMinInputNum
	.align	2
	.global	LSRC_CheckUpdate
	.type	LSRC_CheckUpdate, %function
LSRC_CheckUpdate:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	ip, [sp, #12]	@ Channels, Channels
	ldmia	r0, {r5, lr}	@ hLSRC,,
	ldr	r4, [r0, #12]	@ pLinearSrc_3->InRate, pLinearSrc_3->InRate
	subs	ip, lr, ip	@ D.6429, pLinearSrc_3->Channels, Channels
	ldr	lr, [r0, #16]	@ pLinearSrc_3->OutRate, pLinearSrc_3->OutRate
	movne	ip, #1	@ D.6429,
	cmp	r5, r3	@ pLinearSrc_3->BitPerSample, BitPerSample
	moveq	r3, ip	@, change, D.6429
	addne	r3, ip, #1	@,, change, D.6429
	cmp	r4, r1	@ pLinearSrc_3->InRate, inRate
	moveq	r1, r3	@, change, change
	addne	r1, r3, #1	@,, change, change
	cmp	lr, r2	@ pLinearSrc_3->OutRate, outRate
	moveq	r2, r1	@, change, change
	addne	r2, r1, #1	@,, change, change
	adds	r0, r2, #0	@, change,
	movne	r0, #1	@,
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	LSRC_CheckUpdate, .-LSRC_CheckUpdate
	.align	2
	.global	LSRC_UpdateChange
	.type	LSRC_UpdateChange, %function
LSRC_UpdateChange:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [sp, #16]	@ Channels, Channels
	ldmia	r0, {r6, ip}	@ hLSRC,,
	ldr	r5, [r0, #12]	@ pLinearSrc_7->InRate, pLinearSrc_7->InRate
	subs	lr, ip, r4	@ D.6460, pLinearSrc_7->Channels, Channels
	movne	lr, #1	@ D.6460,
	cmp	r6, r3	@ pLinearSrc_7->BitPerSample, BitPerSample
	moveq	ip, lr	@, change, D.6460
	addne	ip, lr, #1	@,, change, D.6460
	ldr	lr, [r0, #16]	@ pLinearSrc_7->OutRate, pLinearSrc_7->OutRate
	cmp	r5, r1	@ pLinearSrc_7->InRate, inRate
	addne	ip, ip, #1	@,, change, change
	cmp	lr, r2	@ pLinearSrc_7->OutRate, outRate
	addne	ip, ip, #1	@,, change, change
	cmp	ip, #0	@ change,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	cmp	r2, #8000	@ outRate,
	stmia	r0, {r3, r4}	@ hLSRC,,
	ldr	lr, .L50	@ tmp164,
	mov	r3, #0	@ tmp154,
	str	r1, [r0, #8]	@ inRate, pLinearSrc_7->AdjustInRate
	str	r1, [r0, #12]	@ inRate, pLinearSrc_7->InRate
	str	r2, [r0, #16]	@ outRate, pLinearSrc_7->OutRate
	str	r3, [r0, #20]	@ tmp154, pLinearSrc_7->Remainder
	str	r3, [r0, #24]	@ tmp154, pLinearSrc_7->DisContinuity
	str	r3, [r0, #28]	@ tmp154, pLinearSrc_7->SpeedAdjust
	beq	.L37	@,
	mov	r3, #1	@ n,
	mov	r1, lr	@ ivtmp.76, tmp164
.L38:
	ldr	ip, [r1, #4]!	@ MEM[base: _57, offset: 0B], MEM[base: _57, offset: 0B]
	cmp	r2, ip	@ outRate, MEM[base: _57, offset: 0B]
	beq	.L37	@,
	add	r3, r3, #1	@ n, n,
	cmp	r3, #13	@ n,
	bne	.L38	@,
	cmp	r4, #0	@ Channels,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L49:
	mov	r3, #0	@ n,
	add	r0, r0, #32	@ ivtmp.61, hLSRC,
	mov	r2, r3	@ tmp165, n
.L40:
	add	r3, r3, #1	@ n, n,
	str	r2, [r0, #4]!	@ tmp165, MEM[base: _45, offset: 0B]
	cmp	r3, r4	@ n, Channels
	bne	.L40	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L37:
	add	r3, lr, r3, lsl #2	@ tmp161, tmp164, n,
	cmp	r4, #0	@ Channels,
	ldr	r3, [r3, #52]	@ tmp163, g_s32IvtSfTab
	str	r3, [r0, #32]	@ tmp163, pLinearSrc_7->IvtSFFactor
	bne	.L49	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.fnend
	.size	LSRC_UpdateChange, .-LSRC_UpdateChange
	.align	2
	.global	LSRC_Flush
	.type	LSRC_Flush, %function
LSRC_Flush:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r3, #0	@ tmp124,
	ldr	ip, [r0, #16]	@ D.6493, pLinearSrc_6->OutRate
	str	r3, [r0, #20]	@ tmp124, pLinearSrc_6->Remainder
	cmp	ip, #8000	@ D.6493,
	ldr	lr, .L63	@ tmp133,
	str	r3, [r0, #24]	@ tmp124, pLinearSrc_6->DisContinuity
	beq	.L53	@,
	mov	r3, #1	@ n,
	mov	r2, lr	@ ivtmp.104, tmp133
.L54:
	ldr	r1, [r2, #4]!	@ MEM[base: _34, offset: 0B], MEM[base: _34, offset: 0B]
	cmp	r1, ip	@ MEM[base: _34, offset: 0B], D.6493
	beq	.L53	@,
	add	r3, r3, #1	@ n, n,
	cmp	r3, #13	@ n,
	bne	.L54	@,
.L58:
	ldr	r2, [r0, #4]	@ D.6493, pLinearSrc_6->Channels
	cmp	r2, #0	@ D.6493,
	ldreq	pc, [sp], #4	@
	mov	r3, #0	@ n,
	add	r0, r0, #32	@ ivtmp.89, pLinearSrc,
	mov	r1, r3	@ tmp134, n
.L56:
	add	r3, r3, #1	@ n, n,
	str	r1, [r0, #4]!	@ tmp134, MEM[base: _4, offset: 0B]
	cmp	r3, r2	@ n, D.6493
	bne	.L56	@,
	ldr	pc, [sp], #4	@
.L53:
	add	r3, lr, r3, lsl #2	@ tmp130, tmp133, n,
	ldr	r3, [r3, #52]	@ tmp132, g_s32IvtSfTab
	str	r3, [r0, #32]	@ tmp132, pLinearSrc_6->IvtSFFactor
	b	.L58	@
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.fnend
	.size	LSRC_Flush, .-LSRC_Flush
	.align	2
	.global	LSRC_CheckDoSRC
	.type	LSRC_CheckDoSRC, %function
LSRC_CheckDoSRC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #8]	@ pLinearSrc_3->AdjustInRate, pLinearSrc_3->AdjustInRate
	ldr	r3, [r0, #16]	@ pLinearSrc_3->OutRate, pLinearSrc_3->OutRate
	cmp	r2, r3	@ pLinearSrc_3->AdjustInRate, pLinearSrc_3->OutRate
	beq	.L68	@,
	mov	r0, #1	@ D.6498,
	bx	lr	@
.L68:
	ldr	r0, [r0, #24]	@ pLinearSrc_3->DisContinuity, pLinearSrc_3->DisContinuity
	adds	r0, r0, #0	@ D.6498, pLinearSrc_3->DisContinuity,
	movne	r0, #1	@ D.6498,
	bx	lr	@
	.fnend
	.size	LSRC_CheckDoSRC, .-LSRC_CheckDoSRC
	.align	2
	.global	LSRC_SetSpeedAdjust
	.type	LSRC_SetSpeedAdjust, %function
LSRC_SetSpeedAdjust:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #28]	@ D.6503, pLinearSrc_5->SpeedAdjust
	add	ip, r1, #100	@ D.6505, SpeedAdjust,
	rsb	r3, r1, r2	@ tmp133, SpeedAdjust, D.6503
	clz	r3, r3	@ tmp133, tmp133
	mov	r3, r3, lsr #5	@ tmp133, tmp133,
	cmp	ip, #200	@ D.6505,
	orrhi	r3, r3, #1	@,, tmp136, tmp133
	cmp	r3, #0	@ tmp136,
	bxne	lr	@
	adds	r3, r1, #0	@ tmp143, SpeedAdjust,
	add	ip, r1, #1000	@ D.6503, SpeedAdjust,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movne	r3, #1	@ tmp143,
	cmp	r2, #0	@ D.6503,
	movw	r4, #19923	@ tmp157,
	movt	r4, 4194	@ tmp157,
	str	r1, [r0, #28]	@ SpeedAdjust, pLinearSrc_5->SpeedAdjust
	movne	r3, #0	@ tmp143,
	cmp	r3, #0	@ tmp143,
	movne	r3, #1	@ tmp144,
	strne	r3, [r0, #24]	@ tmp144, pLinearSrc_5->DisContinuity
	clz	r3, r1	@ tmp151, SpeedAdjust
	cmp	r2, #0	@ D.6503,
	mov	r2, #0	@ tmp161,
	str	r2, [r0, #20]	@ tmp161, pLinearSrc_5->Remainder
	mov	r3, r3, lsr #5	@ tmp151, tmp151,
	moveq	r3, #0	@ tmp151,
	cmp	r3, #0	@ tmp151,
	movne	r3, #1	@ tmp152,
	strne	r3, [r0, #24]	@ tmp152, pLinearSrc_5->DisContinuity
	ldr	r3, [r0, #12]	@ pLinearSrc_5->InRate, pLinearSrc_5->InRate
	mul	r3, r3, ip	@ D.6503, pLinearSrc_5->InRate, D.6503
	smull	r4, r5, r3, r4	@ tmp156, D.6503, tmp157
	mov	r3, r3, asr #31	@ tmp159, D.6503,
	rsb	r3, r3, r5, asr #6	@ D.6503, tmp159,,
	str	r3, [r0, #8]	@ D.6503, pLinearSrc_5->AdjustInRate
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
	.fnend
	.size	LSRC_SetSpeedAdjust, .-LSRC_SetSpeedAdjust
	.align	2
	.global	LSRC_ProcessFrame
	.type	LSRC_ProcessFrame, %function
LSRC_ProcessFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r10, r0	@ hLSRC, hLSRC
	str	r1, [sp, #28]	@ pInPcmBuf, %sfp
	ldr	r1, [r0]	@ pLinearSrc_4->BitPerSample, pLinearSrc_4->BitPerSample
	str	r2, [sp, #20]	@ pOutpcmBuf, %sfp
	cmp	r1, #16	@ pLinearSrc_4->BitPerSample,
	str	r3, [sp, #24]	@ InSamps, %sfp
	beq	.L166	@,
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	ldr	r2, [r0, #24]	@ pLinearSrc_4->DisContinuity, pLinearSrc_4->DisContinuity
	cmp	r3, #0	@ InSamps,
	ldr	fp, [r0, #4]	@ Channels, pLinearSrc_4->Channels
	movgt	r3, #1	@ tmp517,
	movle	r3, #0	@ tmp517,
	cmp	r2, #0	@ pLinearSrc_4->DisContinuity,
	moveq	r3, #0	@, tmp523
	andne	r3, r3, #1	@,, tmp523, tmp517
	cmp	r3, #0	@ tmp523,
	beq	.L167	@,
	ldr	r3, [r0, #8]	@ D.6859, pLinearSrc_4->AdjustInRate
	ldr	lr, [r0, #16]	@ D.6859, pLinearSrc_4->OutRate
	cmp	r3, lr	@ D.6859, D.6859
	beq	.L113	@,
	cmp	fp, #0	@ Channels,
	ble	.L119	@,
	ldr	r3, [sp, #28]	@ pInPcmBuf, %sfp
	add	r2, r0, #32	@ ivtmp.410, hLSRC,
	sub	r1, r3, #4	@ ivtmp.404, pInPcmBuf,
	mov	r3, #0	@ ch,
.L118:
	add	r3, r3, #1	@ ch, ch,
	ldr	r0, [r1, #4]!	@ D.6849, MEM[base: _175, offset: 0B]
	cmp	r3, fp	@ ch, Channels
	str	r0, [r2, #4]!	@ D.6849, MEM[base: _174, offset: 0B]
	bne	.L118	@,
.L119:
	mov	r3, #0	@ tmp524,
	ldr	r2, [sp, #24]	@ InSamps, %sfp
	mov	r8, r3	@ outsampls, tmp524
	mov	r9, #1	@ in,
	sub	r2, r2, #1	@ InSamps, InSamps,
	str	r3, [r10, #24]	@ tmp524, pLinearSrc_4->DisContinuity
	str	r2, [sp, #24]	@ InSamps, %sfp
.L115:
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	cmp	r3, #0	@ InSamps,
	ble	.L146	@,
	ldr	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	cmp	r2, lr	@ D.6849, D.6859
	bge	.L124	@,
	mov	r1, r8	@ outsampls, outsampls
	mov	r3, fp, asl #2	@ D.6853, Channels,
	mul	r8, r8, fp	@ D.6849, outsampls, Channels
	str	r3, [sp]	@ D.6853, %sfp
	mul	r3, r9, fp	@ D.6849, in, Channels
	ldr	r0, [sp, #20]	@ pOutpcmBuf, %sfp
	add	r8, r0, r8, lsl #2	@ ivtmp.383, pOutpcmBuf, D.6849,
	ldr	r0, [sp, #28]	@ pInPcmBuf, %sfp
	add	r3, r0, r3, lsl #2	@ ivtmp.359, pInPcmBuf, D.6849,
	stmib	sp, {r3, r9}	@,,
	mov	r9, r1	@ outsampls, outsampls
.L125:
	cmp	fp, #0	@ Channels,
	ble	.L128	@,
	ldr	r4, [sp, #4]	@ ivtmp.359, %sfp
	add	r6, r10, #32	@ ivtmp.366, hLSRC,
	mov	r5, r8	@ ivtmp.377, ivtmp.383
	mov	r0, #0	@ ch,
.L129:
	ldr	r7, [r10, #32]	@ D.6849, pLinearSrc_4->IvtSFFactor
	ldr	ip, [r4], #4	@ D.6849, MEM[base: _214, offset: 0B]
	mul	r3, r2, r7	@ D.6849, D.6849, D.6849
	mov	r1, r3	@ sum, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r3,r1,ip,r1	@ zlow, sum, D.6849, sum
@ 0 "" 2
	rsb	r2, r2, lr	@ D.6849, D.6849, D.6859
	ldr	ip, [r6, #4]!	@ MEM[base: _209, offset: 0B], MEM[base: _209, offset: 0B]
	mul	r3, r2, r7	@ D.6849, D.6849, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r2,r3,ip,r3	@ zlow, y, MEM[base: _209, offset: 0B], y
@ 0 "" 2
	add	r3, r1, r3	@ sum, sum, y
	add	r0, r0, #1	@ ch, ch,
	mov	r1, r3, asr #31	@ sign, sum,
	mov	r2, r3, asr #14	@ x, sum,
	cmp	r1, r3, asr #29	@ sign, sum,
	eorne	r2, r1, #32512	@ x, sign,
	eorne	r2, r2, #255	@ x, x,
	cmp	r0, fp	@ ch, Channels
	mov	r2, r2, asl #16	@ D.6849, x,
	str	r2, [r5], #4	@ D.6849, MEM[base: _207, offset: 0B]
	ldr	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	ldr	lr, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
	bne	.L129	@,
.L128:
	ldr	r3, [r10, #8]	@ pLinearSrc_4->AdjustInRate, pLinearSrc_4->AdjustInRate
	add	r9, r9, #1	@ outsampls, outsampls,
	ldr	r1, [sp]	@ D.6853, %sfp
	add	r2, r2, r3	@ D.6849, D.6849, pLinearSrc_4->AdjustInRate
	str	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	cmp	r2, lr	@ D.6849, D.6859
	add	r8, r8, r1	@ ivtmp.383, ivtmp.383, D.6853
	blt	.L125	@,
	mov	r8, r9	@ outsampls, outsampls
	ldr	r9, [sp, #8]	@ in, %sfp
.L124:
	ldr	r1, [sp, #24]	@ InSamps, %sfp
	rsb	r2, lr, r2	@ D.6849, D.6859, D.6849
	str	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	sub	r3, r1, #1	@ InSamps, InSamps,
	cmp	r3, #0	@ InSamps,
	ble	.L146	@,
	mul	r3, r9, fp	@ D.6849, in, Channels
	ldr	ip, [sp, #28]	@ pInPcmBuf, %sfp
	add	r1, r9, r1	@ D.6854, in, InSamps
	str	r1, [sp, #36]	@ D.6854, %sfp
	mov	r1, fp, asl #2	@ D.6853, Channels,
	str	r1, [sp, #4]	@ D.6853, %sfp
	str	r1, [sp, #32]	@ D.6854, %sfp
	mov	r1, r8	@ outsampls, outsampls
	add	r0, r9, #1	@ D.6849, in,
	str	r0, [sp, #40]	@ D.6849, %sfp
	add	r3, ip, r3, lsl #2	@ ivtmp.351, pInPcmBuf, D.6849,
	str	r0, [sp, #16]	@ D.6849, %sfp
	str	r3, [sp]	@ ivtmp.351, %sfp
.L130:
	ldr	lr, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
	cmp	lr, r2	@ D.6859, D.6849
	ble	.L133	@,
	mul	r9, r1, fp	@ D.6849, outsampls, Channels
	ldr	r3, [sp]	@ ivtmp.351, %sfp
	ldr	r0, [sp, #32]	@ D.6854, %sfp
	add	r3, r3, r0	@ D.6854, ivtmp.351, D.6854
	str	r3, [sp, #12]	@ D.6854, %sfp
	rsb	r3, r8, r1	@ D.6854, outsampls, outsampls
	str	r3, [sp, #8]	@ D.6854, %sfp
	ldr	r3, [sp, #20]	@ pOutpcmBuf, %sfp
	add	r9, r3, r9, lsl #2	@ ivtmp.340, pOutpcmBuf, D.6849,
.L136:
	cmp	fp, #0	@ Channels,
	ble	.L135	@,
	ldr	r5, [sp]	@ ivtmp.326, %sfp
	mov	r6, r9	@ ivtmp.332, ivtmp.340
	ldr	r4, [sp, #12]	@ ivtmp.318, %sfp
	mov	r0, #0	@ ch,
.L134:
	ldr	r7, [r10, #32]	@ D.6849, pLinearSrc_4->IvtSFFactor
	ldr	ip, [r4], #4	@ D.6849, MEM[base: _358, offset: 0B]
	mul	r3, r2, r7	@ D.6849, D.6849, D.6849
	mov	r1, r3	@ sum, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r3,r1,ip,r1	@ zlow, sum, D.6849, sum
@ 0 "" 2
	rsb	r2, r2, lr	@ D.6849, D.6849, D.6859
	ldr	ip, [r5], #4	@ D.6849, MEM[base: _357, offset: 0B]
	mul	r3, r2, r7	@ D.6849, D.6849, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r2,r3,ip,r3	@ zlow, y, D.6849, y
@ 0 "" 2
	add	r3, r1, r3	@ sum, sum, y
	add	r0, r0, #1	@ ch, ch,
	mov	r1, r3, asr #31	@ sign, sum,
	mov	r2, r3, asr #14	@ x, sum,
	cmp	r1, r3, asr #29	@ sign, sum,
	eorne	r2, r1, #32512	@ x, sign,
	eorne	r2, r2, #255	@ x, x,
	cmp	r0, fp	@ ch, Channels
	mov	r2, r2, asl #16	@ D.6849, x,
	str	r2, [r6], #4	@ D.6849, MEM[base: _356, offset: 0B]
	ldr	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	ldr	lr, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
	bne	.L134	@,
.L135:
	ldr	r3, [r10, #8]	@ pLinearSrc_4->AdjustInRate, pLinearSrc_4->AdjustInRate
	add	r8, r8, #1	@ outsampls, outsampls,
	ldr	r1, [sp, #4]	@ D.6853, %sfp
	add	r2, r2, r3	@ D.6849, D.6849, pLinearSrc_4->AdjustInRate
	str	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	add	r9, r9, r1	@ ivtmp.340, ivtmp.340, D.6853
	cmp	r2, lr	@ D.6849, D.6859
	ldr	r1, [sp, #8]	@ D.6854, %sfp
	add	r1, r1, r8	@ D.6854, D.6854, outsampls
	blt	.L136	@,
.L133:
	ldr	r3, [sp, #16]	@ ivtmp.346, %sfp
	rsb	r2, lr, r2	@ D.6849, D.6859, D.6849
	ldr	r0, [sp, #36]	@ D.6854, %sfp
	add	r3, r3, #1	@ ivtmp.346, ivtmp.346,
	str	r3, [sp, #16]	@ ivtmp.346, %sfp
	cmp	r3, r0	@ ivtmp.346, D.6854
	ldmia	sp, {r0, r3}	@,,
	str	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	add	r3, r3, r0	@ ivtmp.351, ivtmp.351, D.6853
	str	r3, [sp]	@ ivtmp.351, %sfp
	bne	.L130	@,
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	mov	r0, r8	@ outsampls, outsampls
	sub	r9, r3, #2	@ D.6849, InSamps,
	ldr	r3, [sp, #40]	@ D.6849, %sfp
	add	r9, r9, r3	@ in, D.6849, D.6849
.L123:
	cmp	fp, #0	@ Channels,
	ble	.L92	@,
	mul	r2, r9, fp	@ D.6849, in, Channels
	ldr	ip, [sp, #28]	@ pInPcmBuf, %sfp
	add	r3, r10, #32	@ ivtmp.304, hLSRC,
	mov	r1, #0	@ ch,
	add	r2, ip, r2, lsl #2	@ ivtmp.299, pInPcmBuf, D.6849,
.L137:
	add	r1, r1, #1	@ ch, ch,
	ldr	ip, [r2], #4	@ D.6849, MEM[base: _384, offset: 0B]
	cmp	r1, fp	@ ch, Channels
	str	ip, [r3, #4]!	@ D.6849, MEM[base: _225, offset: 0B]
	bne	.L137	@,
.L92:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L167:
	mov	r8, r3	@ outsampls, tmp523
	ldr	lr, [r0, #16]	@ D.6859, pLinearSrc_4->OutRate
	ldr	r3, [r0, #8]	@ D.6859, pLinearSrc_4->AdjustInRate
.L112:
	cmp	r3, lr	@ D.6859, D.6859
	movne	r9, #0	@ in,
	bne	.L115	@,
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	cmp	r3, #0	@ InSamps,
	ble	.L144	@,
	mul	lr, r8, fp	@ D.6849, outsampls, Channels
	ldr	r6, [sp, #28]	@ pInPcmBuf, %sfp
	ldr	r7, [sp, #20]	@ pOutpcmBuf, %sfp
	mov	r4, fp, asl #2	@ D.6853, Channels,
	mov	ip, r3	@ InSamps, InSamps
	mov	r0, #0	@ ivtmp.293,
	mov	lr, lr, asl #2	@ D.6854, D.6849,
.L120:
	cmp	fp, #0	@ Channels,
	ble	.L122	@,
	add	r2, r0, lr	@ D.6855, ivtmp.293, D.6854
	add	r1, r6, r0	@ ivtmp.275, pInPcmBuf, ivtmp.293
	add	r2, r7, r2	@ ivtmp.281, pOutpcmBuf, D.6855
	mov	r3, #0	@ ch,
.L121:
	add	r3, r3, #1	@ ch, ch,
	ldr	r5, [r1], #4	@ D.6849, MEM[base: _383, offset: 0B]
	cmp	r3, fp	@ ch, Channels
	str	r5, [r2], #4	@ D.6849, MEM[base: _382, offset: 0B]
	bne	.L121	@,
.L122:
	subs	ip, ip, #1	@ InSamps, InSamps,
	add	r0, r0, r4	@ ivtmp.293, ivtmp.293, D.6853
	bne	.L120	@,
	ldr	r2, [sp, #24]	@ InSamps, %sfp
	add	r0, r8, r2	@ outsampls, outsampls, InSamps
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L166:
	cmp	r3, #0	@ InSamps,
	ldr	r3, [r10, #4]	@ Channels, pLinearSrc_4->Channels
	ldr	r0, [r0, #24]	@ pLinearSrc_4->DisContinuity, pLinearSrc_4->DisContinuity
	ldr	fp, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
	str	r3, [sp]	@ Channels, %sfp
	movgt	r3, #1	@ tmp458,
	movle	r3, #0	@ tmp458,
	cmp	r0, #0	@ pLinearSrc_4->DisContinuity,
	moveq	r0, #0	@, tmp464
	andne	r0, r3, #1	@,, tmp464, tmp458
	cmp	r0, #0	@ tmp464,
	ldr	r3, [r10, #8]	@ D.6859, pLinearSrc_4->AdjustInRate
	beq	.L84	@,
	cmp	r3, fp	@ D.6859, D.6859
	beq	.L85	@,
	ldr	r3, [sp]	@ Channels, %sfp
	cmp	r3, #0	@ Channels,
	ble	.L91	@,
	ldr	r1, [sp]	@ Channels, %sfp
	add	r2, r10, #32	@ ivtmp.263, hLSRC,
	ldr	r3, [sp, #28]	@ pInPcmBuf, %sfp
	add	r1, r3, r1, lsl #1	@ D.6854, pInPcmBuf, Channels,
.L90:
	ldrsh	r0, [r3], #2	@ D.6850, MEM[base: _423, offset: 0B]
	cmp	r3, r1	@ ivtmp.258, D.6854
	str	r0, [r2, #4]!	@ D.6850, MEM[base: _421, offset: 0B]
	bne	.L90	@,
.L91:
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	mov	r0, #0	@ tmp465,
	mov	r7, #1	@ in,
	str	r0, [r10, #24]	@ tmp465, pLinearSrc_4->DisContinuity
	sub	r3, r3, #1	@ InSamps, InSamps,
	str	r3, [sp, #24]	@ InSamps, %sfp
	b	.L87	@
.L85:
	ldr	r1, [sp]	@ Channels, %sfp
	cmp	r1, #0	@ Channels,
	ble	.L138	@,
	ldr	r3, [sp, #20]	@ pOutpcmBuf, %sfp
	add	r2, r10, #32	@ ivtmp.240, hLSRC,
	add	r1, r3, r1, lsl #1	@ D.6854, pOutpcmBuf, Channels,
.L89:
	ldr	r0, [r2, #4]!	@ MEM[base: _435, offset: 0B], MEM[base: _435, offset: 0B]
	strh	r0, [r3], #2	@ movhi	@ MEM[base: _435, offset: 0B], MEM[base: _434, offset: 0B]
	cmp	r3, r1	@ ivtmp.250, D.6854
	bne	.L89	@,
	ldr	r3, [r10, #8]	@ D.6859, pLinearSrc_4->AdjustInRate
	ldr	fp, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
.L88:
	mov	r0, #1	@ outsampls,
	mov	r2, #0	@ tmp468,
	str	r2, [r10, #24]	@ tmp468, pLinearSrc_4->DisContinuity
.L84:
	cmp	r3, fp	@ D.6859, D.6859
	movne	r7, #0	@ in,
	beq	.L168	@,
.L87:
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	cmp	r3, #0	@ InSamps,
	ble	.L96	@,
	ldr	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	cmp	r2, fp	@ D.6849, D.6859
	bge	.L97	@,
	ldr	r3, [sp]	@ Channels, %sfp
	ldr	ip, [sp, #20]	@ pOutpcmBuf, %sfp
	str	r7, [sp, #12]	@ in, %sfp
	mul	r9, r0, r3	@ D.6849, outsampls, Channels
	mov	r1, r3, asl #1	@ D.6853, Channels,
	str	r1, [sp, #4]	@ D.6853, %sfp
	mov	r1, r3	@ Channels, Channels
	mul	r3, r7, r3	@ D.6849, in, Channels
	mov	r7, r1	@ Channels, Channels
	add	r9, ip, r9, lsl #1	@ ivtmp.235, pOutpcmBuf, D.6849,
	ldr	ip, [sp, #28]	@ pInPcmBuf, %sfp
	add	r3, ip, r3, lsl #1	@ ivtmp.209, pInPcmBuf, D.6849,
	str	r3, [sp, #8]	@ ivtmp.209, %sfp
.L98:
	cmp	r7, #0	@ Channels,
	ble	.L101	@,
	add	r6, r10, #32	@ ivtmp.216, hLSRC,
	mov	r5, r9	@ ivtmp.229, ivtmp.235
	ldr	r4, [sp, #8]	@ ivtmp.209, %sfp
	mov	ip, #0	@ ch,
	mov	r3, fp	@ D.6859, D.6859
	b	.L102	@
.L100:
	ldr	r3, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
.L102:
	ldr	r8, [r10, #32]	@ D.6849, pLinearSrc_4->IvtSFFactor
	ldrsh	lr, [r4], #2	@ D.6849, MEM[base: _441, offset: 0B]
	mul	r1, r2, r8	@ D.6849, D.6849, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull fp,r1,lr,r1	@ zlow, sum, D.6849, sum
@ 0 "" 2
	rsb	r2, r2, r3	@ D.6849, D.6849, D.6859
	ldr	lr, [r6, #4]!	@ MEM[base: _440, offset: 0B], MEM[base: _440, offset: 0B]
	mul	r3, r2, r8	@ D.6849, D.6849, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull r2,r3,lr,r3	@ zlow, y, MEM[base: _440, offset: 0B], y
@ 0 "" 2
	add	r3, r1, r3	@ sum, sum, y
	add	ip, ip, #1	@ ch, ch,
	mov	r3, r3, asl #2	@ x, sum,
	mov	r2, r3, asr #31	@ sign, x,
	cmp	r2, r3, asr #15	@ sign, x,
	eorne	r3, r2, #32512	@ x, sign,
	eorne	r3, r3, #255	@ x, x,
	cmp	ip, r7	@ ch, Channels
	strh	r3, [r5], #2	@ movhi	@ x, MEM[base: _439, offset: 0B]
	ldr	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	bne	.L100	@,
	ldr	fp, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
.L101:
	ldr	r3, [r10, #8]	@ pLinearSrc_4->AdjustInRate, pLinearSrc_4->AdjustInRate
	add	r0, r0, #1	@ outsampls, outsampls,
	ldr	r1, [sp, #4]	@ D.6853, %sfp
	add	r2, r2, r3	@ D.6849, D.6849, pLinearSrc_4->AdjustInRate
	str	r2, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	cmp	r2, fp	@ D.6849, D.6859
	add	r9, r9, r1	@ ivtmp.235, ivtmp.235, D.6853
	blt	.L98	@,
	ldr	r7, [sp, #12]	@ in, %sfp
.L97:
	ldr	lr, [sp, #24]	@ InSamps, %sfp
	rsb	fp, fp, r2	@ D.6849, D.6859, D.6849
	str	fp, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	sub	r3, lr, #1	@ InSamps, InSamps,
	cmp	r3, #0	@ InSamps,
	ble	.L96	@,
	ldr	r1, [sp]	@ Channels, %sfp
	add	ip, r7, #1	@ D.6849, in,
	str	ip, [sp, #44]	@ D.6849, %sfp
	mov	r8, r0	@ outsampls, outsampls
	mov	r4, ip	@ D.6849, D.6849
	str	r4, [sp, #16]	@ D.6849, %sfp
	mul	r3, r7, r1	@ D.6849, in, Channels
	mov	r2, r1	@ D.6854, Channels
	mov	ip, r1	@ Channels, Channels
	add	r1, r1, r1	@ D.6854, D.6854, Channels
	mov	r2, r2, asl #1	@ D.6854, D.6854,
	str	r2, [sp, #32]	@ D.6854, %sfp
	add	r2, r7, lr	@ D.6854, in, InSamps
	str	r2, [sp, #40]	@ D.6854, %sfp
	mov	r2, r1, asl #1	@ D.6854, D.6854,
	str	r2, [sp, #36]	@ D.6854, %sfp
	mov	r2, ip, asl #1	@ D.6853, Channels,
	str	r2, [sp, #4]	@ D.6853, %sfp
	ldr	r2, [sp, #28]	@ pInPcmBuf, %sfp
	add	r5, r2, r3, lsl #1	@ ivtmp.201, pInPcmBuf, D.6849,
	mov	r2, r0	@ outsampls, outsampls
.L103:
	ldr	ip, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
	cmp	ip, fp	@ D.6859, D.6849
	ble	.L106	@,
	ldr	r3, [sp]	@ Channels, %sfp
	mul	r9, r2, r3	@ D.6849, outsampls, Channels
	ldr	r3, [sp, #32]	@ D.6854, %sfp
	add	r3, r5, r3	@ D.6854, ivtmp.201, D.6854
	str	r3, [sp, #12]	@ D.6854, %sfp
	rsb	r3, r8, r2	@ D.6854, outsampls, outsampls
	str	r3, [sp, #8]	@ D.6854, %sfp
	ldr	r3, [sp, #36]	@ D.6854, %sfp
	add	r6, r5, r3	@ D.6854, ivtmp.201, D.6854
	ldr	r3, [sp, #20]	@ pOutpcmBuf, %sfp
	add	r9, r3, r9, lsl #1	@ ivtmp.189, pOutpcmBuf, D.6849,
.L109:
	ldr	r3, [sp]	@ Channels, %sfp
	cmp	r3, #0	@ Channels,
	ble	.L108	@,
	mov	r4, r9	@ ivtmp.181, ivtmp.189
	mov	lr, r5	@ ivtmp.175, ivtmp.201
	ldr	r1, [sp, #12]	@ ivtmp.167, %sfp
	mov	r3, ip	@ D.6859, D.6859
	b	.L107	@
.L105:
	ldr	r3, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
.L107:
	ldr	r7, [r10, #32]	@ D.6849, pLinearSrc_4->IvtSFFactor
	ldrsh	r0, [r1], #2	@ D.6849, MEM[base: _489, offset: 0B]
	mul	r2, fp, r7	@ D.6849, D.6849, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull ip,r2,r0,r2	@ zlow, sum, D.6849, sum
@ 0 "" 2
	rsb	fp, fp, r3	@ D.6849, D.6849, D.6859
	ldrsh	r0, [lr], #2	@ D.6849, MEM[base: _488, offset: 0B]
	mul	r3, fp, r7	@ D.6849, D.6849, D.6849
#APP
@ 592 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smull ip,r3,r0,r3	@ zlow, y, D.6849, y
@ 0 "" 2
	add	r3, r2, r3	@ sum, sum, y
	mov	r3, r3, asl #2	@ x, sum,
	mov	r2, r3, asr #31	@ sign, x,
	cmp	r2, r3, asr #15	@ sign, x,
	eorne	r3, r2, #32512	@ x, sign,
	eorne	r3, r3, #255	@ x, x,
	cmp	r1, r6	@ ivtmp.167, D.6854
	strh	r3, [r4], #2	@ movhi	@ x, MEM[base: _487, offset: 0B]
	ldr	fp, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	bne	.L105	@,
	ldr	ip, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
.L108:
	ldr	r3, [r10, #8]	@ pLinearSrc_4->AdjustInRate, pLinearSrc_4->AdjustInRate
	add	r8, r8, #1	@ outsampls, outsampls,
	ldr	r2, [sp, #4]	@ D.6853, %sfp
	add	fp, fp, r3	@ D.6849, D.6849, pLinearSrc_4->AdjustInRate
	str	fp, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	add	r9, r9, r2	@ ivtmp.189, ivtmp.189, D.6853
	cmp	fp, ip	@ D.6849, D.6859
	ldr	r2, [sp, #8]	@ D.6854, %sfp
	add	r2, r2, r8	@ D.6854, D.6854, outsampls
	blt	.L109	@,
.L106:
	ldr	r3, [sp, #16]	@ ivtmp.195, %sfp
	rsb	fp, ip, fp	@ D.6849, D.6859, D.6849
	ldr	r1, [sp, #40]	@ D.6854, %sfp
	add	r3, r3, #1	@ ivtmp.195, ivtmp.195,
	str	r3, [sp, #16]	@ ivtmp.195, %sfp
	cmp	r3, r1	@ ivtmp.195, D.6854
	ldr	r3, [sp, #4]	@ D.6853, %sfp
	str	fp, [r10, #20]	@ D.6849, pLinearSrc_4->Remainder
	add	r5, r5, r3	@ ivtmp.201, ivtmp.201, D.6853
	bne	.L103	@,
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	mov	r0, r8	@ outsampls, outsampls
	sub	r7, r3, #2	@ D.6849, InSamps,
	ldr	r3, [sp, #44]	@ D.6849, %sfp
	add	r7, r3, r7	@ in, D.6849, D.6849
.L96:
	ldr	r3, [sp]	@ Channels, %sfp
	cmp	r3, #0	@ Channels,
	ble	.L92	@,
	mul	r2, r7, r3	@ D.6853, in, Channels
	ldr	ip, [sp, #28]	@ pInPcmBuf, %sfp
	add	r1, r10, #32	@ ivtmp.152, hLSRC,
	add	r3, r3, r2	@ D.6855, Channels, D.6853
	add	r2, ip, r2, lsl #1	@ ivtmp.147, pInPcmBuf, D.6853,
	add	r3, ip, r3, lsl #1	@ D.6854, pInPcmBuf, D.6855,
.L110:
	ldrsh	ip, [r2], #2	@ D.6850, MEM[base: _36, offset: 0B]
	cmp	r2, r3	@ ivtmp.147, D.6854
	str	ip, [r1, #4]!	@ D.6850, MEM[base: _664, offset: 0B]
	bne	.L110	@,
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L113:
	cmp	fp, #0	@ Channels,
	ble	.L142	@,
	ldr	r3, [sp, #20]	@ pOutpcmBuf, %sfp
	add	r1, r0, #32	@ ivtmp.388, hLSRC,
	sub	r2, r3, #4	@ ivtmp.397, pOutpcmBuf,
	mov	r3, #0	@ ch,
.L117:
	add	r3, r3, #1	@ ch, ch,
	ldr	r0, [r1, #4]!	@ D.6849, MEM[base: _186, offset: 0B]
	cmp	r3, fp	@ ch, Channels
	str	r0, [r2, #4]!	@ D.6849, MEM[base: _184, offset: 0B]
	bne	.L117	@,
	ldr	r3, [r10, #8]	@ D.6859, pLinearSrc_4->AdjustInRate
	ldr	lr, [r10, #16]	@ D.6859, pLinearSrc_4->OutRate
.L116:
	mov	r1, #1	@ outsampls,
	mov	r2, #0	@ tmp525,
	mov	r8, r1	@ outsampls, outsampls
	str	r2, [r10, #24]	@ tmp525, pLinearSrc_4->DisContinuity
	b	.L112	@
.L146:
	mov	r0, r8	@ outsampls, outsampls
	b	.L123	@
.L168:
	ldr	r4, [sp, #24]	@ InSamps, %sfp
	cmp	r4, #0	@ InSamps,
	ble	.L92	@,
	ldr	r2, [sp]	@ Channels, %sfp
	ldr	r3, [sp, #28]	@ ivtmp.139, %sfp
	mul	lr, r0, r2	@ D.6849, outsampls, Channels
	mov	r5, r2, asl #1	@ D.6853, Channels,
	ldr	r2, [sp, #20]	@ pOutpcmBuf, %sfp
	add	lr, r2, lr, lsl #1	@ ivtmp.141, pOutpcmBuf, D.6849,
.L93:
	ldr	r2, [sp]	@ Channels, %sfp
	add	ip, r5, r3	@ ivtmp.139, D.6853, ivtmp.139
	cmp	r2, #0	@ Channels,
	movgt	r2, lr	@ ivtmp.128, ivtmp.141
	ble	.L95	@,
.L94:
	ldrh	r1, [r3], #2	@ D.6850, MEM[base: _155, offset: 0B]
	cmp	ip, r3	@ ivtmp.139, ivtmp.122
	strh	r1, [r2], #2	@ movhi	@ D.6850, MEM[base: _58, offset: 0B]
	bne	.L94	@,
.L95:
	subs	r4, r4, #1	@ InSamps, InSamps,
	mov	r3, ip	@ ivtmp.139, ivtmp.139
	add	lr, lr, r5	@ ivtmp.141, ivtmp.141, D.6853
	bne	.L93	@,
	ldr	r3, [sp, #24]	@ InSamps, %sfp
	add	r0, r0, r3	@ outsampls, outsampls, InSamps
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L138:
	mov	fp, r3	@ D.6859, D.6859
	b	.L88	@
.L142:
	mov	lr, r3	@ D.6859, D.6859
	b	.L116	@
.L144:
	mov	r0, r8	@ outsampls, outsampls
	b	.L92	@
	.fnend
	.size	LSRC_ProcessFrame, .-LSRC_ProcessFrame
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_s32SampleRateTab, %object
	.size	g_s32SampleRateTab, 52
g_s32SampleRateTab:
	.word	8000
	.word	11025
	.word	12000
	.word	16000
	.word	22050
	.word	24000
	.word	32000
	.word	44100
	.word	48000
	.word	88200
	.word	96000
	.word	176400
	.word	192000
	.type	g_s32IvtSfTab, %object
	.size	g_s32IvtSfTab, 52
g_s32IvtSfTab:
	.word	134217
	.word	97391
	.word	89478
	.word	67109
	.word	48696
	.word	44739
	.word	33554
	.word	24348
	.word	22369
	.word	12174
	.word	11185
	.word	6087
	.word	5592
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
