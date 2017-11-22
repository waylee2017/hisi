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
	.file	"sw_main.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(sw_main)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/.sw_main.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.o
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
	.weak	HI_DRV_PROC_EchoHelper
	.type	HI_DRV_PROC_EchoHelper, %function
HI_DRV_PROC_EchoHelper:
	.fnstart
	@ args = 4, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 1
	@ link register save eliminated.
	stmfd	sp!, {r0, r1, r2, r3}	@,
	.save {r0, r1, r2, r3}
	add	sp, sp, #16	@,,
	bx	lr	@
	.fnend
	.size	HI_DRV_PROC_EchoHelper, .-HI_DRV_PROC_EchoHelper
	.align	2
	.weak	HI_DRV_PROC_EchoHelperVargs
	.type	HI_DRV_PROC_EchoHelperVargs, %function
HI_DRV_PROC_EchoHelperVargs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	HI_DRV_PROC_EchoHelperVargs, .-HI_DRV_PROC_EchoHelperVargs
	.align	2
	.global	SYS_GetLocalCurPts
	.type	SYS_GetLocalCurPts, %function
SYS_GetLocalCurPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	bl	sched_clock	@
	ldr	ip, .L10	@ tmp138,
	ldrd	r2, [ip]	@ u64TimeLast, u64TimeLast
	cmp	r1, r3	@ __n, u64TimeLast
	cmpeq	r0, r2	@ __n, u64TimeLast
	bcs	.L9	@,
	ldrd	r2, [ip, #8]	@ u64TimeBase, tmp138,
	mvn	r8, #0	@ tmp124,
	movw	r9, #65535	@,
	adds	r8, r8, r2	@ D.23831, tmp124, u64TimeBase
	movt	r9, 63	@,
	adc	r9, r9, r3	@ D.23831,, u64TimeBase
	strd	r8, [ip, #8]	@ D.23831, tmp138,
.L6:
	mov	r10, #0	@ tmp129,
	movw	r6, #57147	@ tmp128,
	movw	r7, #28311	@,
	movt	r6, 36175	@ tmp128,
	movt	r7, 33554	@,
	mov	lr, r10	@ __z, tmp129
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r2, r3, r6, r0	@ __res, tmp128, __n
	cmn	r2, r6	@ __res, tmp128
	adcs	r3, r3, r7	@ __res, tmp128
	adc	r2, r10, #0	@ __res, tmp129
@ 0 "" 2
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r3, r2, r7, r0	@ __res, tmp128, __n
	umlal	r3, lr, r6, r1	@ __res, __z, tmp128, __n
	mov	r3, #0	@ __res
	adds	r2, lr, r2	@ __res, __z
	adc	r3, r3, #0	@ __res
	umlal	r2, r3, r7, r1	@ __res, tmp128, __n
@ 0 "" 2
	mov	r4, r2, lsr #9	@ u64TimeNow, __res,
	strd	r0, [ip]	@ __n, u64TimeLast
	orr	r4, r4, r3, asl #23	@ u64TimeNow, u64TimeNow, __res,
	mov	r5, r3, lsr #9	@ u64TimeNow, __res,
	adds	r0, r4, r8	@, u64TimeNow, D.23831
	adc	r1, r5, r9	@, u64TimeNow, D.23831
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L9:
	ldrd	r8, [ip, #8]	@ D.23831, tmp138,
	b	.L6	@
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.fnend
	.size	SYS_GetLocalCurPts, .-SYS_GetLocalCurPts
	.align	2
	.global	SYS_GetTimeStampUs
	.type	SYS_GetTimeStampUs, %function
SYS_GetTimeStampUs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	bl	sched_clock	@
	ldr	ip, .L17	@ tmp138,
	ldrd	r2, [ip]	@ u64TimeLast, u64TimeLast
	cmp	r1, r3	@ __n, u64TimeLast
	cmpeq	r0, r2	@ __n, u64TimeLast
	bcs	.L16	@,
	ldrd	r2, [ip, #8]	@ u64TimeBase, tmp138,
	mvn	r8, #0	@ tmp124,
	movw	r9, #65535	@,
	adds	r8, r8, r2	@ D.23838, tmp124, u64TimeBase
	movt	r9, 63	@,
	adc	r9, r9, r3	@ D.23838,, u64TimeBase
	strd	r8, [ip, #8]	@ D.23838, tmp138,
.L14:
	mov	r10, #0	@ tmp129,
	movw	r6, #57147	@ tmp128,
	movw	r7, #28311	@,
	movt	r6, 36175	@ tmp128,
	movt	r7, 33554	@,
	mov	lr, r10	@ __z, tmp129
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r2, r3, r6, r0	@ __res, tmp128, __n
	cmn	r2, r6	@ __res, tmp128
	adcs	r3, r3, r7	@ __res, tmp128
	adc	r2, r10, #0	@ __res, tmp129
@ 0 "" 2
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r3, r2, r7, r0	@ __res, tmp128, __n
	umlal	r3, lr, r6, r1	@ __res, __z, tmp128, __n
	mov	r3, #0	@ __res
	adds	r2, lr, r2	@ __res, __z
	adc	r3, r3, #0	@ __res
	umlal	r2, r3, r7, r1	@ __res, tmp128, __n
@ 0 "" 2
	mov	r4, r2, lsr #9	@ u64TimeNow, __res,
	strd	r0, [ip]	@ __n, u64TimeLast
	orr	r4, r4, r3, asl #23	@ u64TimeNow, u64TimeNow, __res,
	mov	r5, r3, lsr #9	@ u64TimeNow, __res,
	adds	r0, r4, r8	@, u64TimeNow, D.23838
	adc	r1, r5, r9	@, u64TimeNow, D.23838
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L16:
	ldrd	r8, [ip, #8]	@ D.23838, tmp138,
	b	.L14	@
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.fnend
	.size	SYS_GetTimeStampUs, .-SYS_GetTimeStampUs
	.align	2
	.global	SchedStatisticsInit
	.type	SchedStatisticsInit, %function
SchedStatisticsInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L20	@ tmp110,
	mov	r2, #0	@ tmp116,
	mov	r0, #0	@ tmp111,
	mov	r1, #0	@,
	strh	r2, [r3, #32]	@ movhi	@ tmp116, g_u16SchTimeoutCnt
	strd	r0, [r3, #16]	@ tmp111, tmp110,
	strd	r0, [r3, #24]	@ tmp111, tmp110,
	strh	r2, [r3, #34]	@ movhi	@ tmp116, g_u16ExcuteTimeoutCnt
	str	r2, [r3, #36]	@ tmp116, g_u32cnt
	b	AOE_SchedStatisticsInit	@
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.fnend
	.size	SchedStatisticsInit, .-SchedStatisticsInit
	.align	2
	.global	SchedStatisticsStart
	.type	SchedStatisticsStart, %function
SchedStatisticsStart:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	bl	sched_clock	@
	ldr	ip, .L27	@ tmp139,
	ldrd	r2, [ip]	@ u64TimeLast, u64TimeLast
	cmp	r1, r3	@ __n, u64TimeLast
	cmpeq	r0, r2	@ __n, u64TimeLast
	bcs	.L26	@,
	ldrd	r2, [ip, #8]	@ u64TimeBase, tmp139,
	mvn	r8, #0	@ tmp124,
	movw	r9, #65535	@,
	adds	r8, r8, r2	@ D.23847, tmp124, u64TimeBase
	movt	r9, 63	@,
	adc	r9, r9, r3	@ D.23847,, u64TimeBase
	strd	r8, [ip, #8]	@ D.23847, tmp139,
.L24:
	mov	r10, #0	@ tmp129,
	movw	r6, #57147	@ tmp128,
	movw	r7, #28311	@,
	movt	r6, 36175	@ tmp128,
	movt	r7, 33554	@,
	mov	lr, r10	@ __z, tmp129
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r2, r3, r6, r0	@ __res, tmp128, __n
	cmn	r2, r6	@ __res, tmp128
	adcs	r3, r3, r7	@ __res, tmp128
	adc	r2, r10, #0	@ __res, tmp129
@ 0 "" 2
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r3, r2, r7, r0	@ __res, tmp128, __n
	umlal	r3, lr, r6, r1	@ __res, __z, tmp128, __n
	mov	r3, #0	@ __res
	adds	r2, lr, r2	@ __res, __z
	adc	r3, r3, #0	@ __res
	umlal	r2, r3, r7, r1	@ __res, tmp128, __n
@ 0 "" 2
	mov	r4, r2, lsr #9	@ u64TimeNow, __res,
	mov	r5, r3, lsr #9	@ u64TimeNow, __res,
	orr	r4, r4, r3, asl #23	@ u64TimeNow, u64TimeNow, __res,
	strd	r0, [ip]	@ __n, u64TimeLast
	adds	r4, r4, r8	@ D.23848, u64TimeNow, D.23847
	adc	r5, r5, r9	@ D.23848, u64TimeNow, D.23847
	strd	r4, [ip, #16]	@ D.23848, tmp139,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L26:
	ldrd	r8, [ip, #8]	@ D.23847, tmp139,
	b	.L24	@
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.fnend
	.size	SchedStatisticsStart, .-SchedStatisticsStart
	.align	2
	.global	SchedStatisticsStop
	.type	SchedStatisticsStop, %function
SchedStatisticsStop:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	str	r0, [sp, #4]	@ enStatistics, %sfp
	bl	sched_clock	@
	mov	r7, r1	@ __n,
	ldr	r1, .L41	@ tmp172,
	mov	r6, r0	@ __n,
	ldrd	r2, [r1]	@ u64TimeLast, u64TimeLast
	cmp	r7, r3	@ __n, u64TimeLast
	cmpeq	r6, r2	@ __n, u64TimeLast
	bcc	.L30	@,
	ldrd	r10, [r1, #8]	@ D.23855, tmp172,
.L31:
	mov	ip, #0	@ tmp141,
	movw	r8, #57147	@ tmp140,
	movw	r9, #28311	@,
	movt	r8, 36175	@ tmp140,
	movt	r9, 33554	@,
	mov	r0, ip	@ __z, tmp141
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r2, r3, r8, r6	@ __res, tmp140, __n
	cmn	r2, r8	@ __res, tmp140
	adcs	r3, r3, r9	@ __res, tmp140
	adc	r2, ip, #0	@ __res, tmp141
@ 0 "" 2
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r3, r2, r9, r6	@ __res, tmp140, __n
	umlal	r3, r0, r8, r7	@ __res, __z, tmp140, __n
	mov	r3, #0	@ __res
	adds	r2, r0, r2	@ __res, __z
	adc	r3, r3, #0	@ __res
	umlal	r2, r3, r9, r7	@ __res, tmp140, __n
@ 0 "" 2
	mov	r4, r2, lsr #9	@ u64TimeNow, __res,
	ldr	ip, [r1, #16]	@ g_u64BeginPts, g_u64BeginPts
	orr	r4, r4, r3, asl #23	@ u64TimeNow, u64TimeNow, __res,
	mov	r5, r3, lsr #9	@ u64TimeNow, __res,
	ldr	r3, [sp, #4]	@ enStatistics, %sfp
	adds	r4, r4, r10	@ D.23857, u64TimeNow, D.23855
	adc	r5, r5, fp	@ D.23857, u64TimeNow, D.23855
	movw	r2, #19923	@ tmp154,
	cmp	r3, #0	@ enStatistics,
	rsb	r3, ip, r4	@ D.23854, g_u64BeginPts, D.23857
	movt	r2, 4194	@ tmp154,
	strd	r6, [r1]	@ __n, u64TimeLast
	umull	r2, r3, r3, r2	@ tmp153, D.23854, tmp154
	strd	r4, [r1, #24]	@ D.23857, tmp172,
	ldr	ip, .L41	@ tmp138,
	mov	r3, r3, lsr #6	@ u32Time,,
	beq	.L39	@,
	cmp	r3, #41	@ u32Time,
	ldr	r2, [sp, #4]	@ enStatistics, %sfp
	movls	r3, #0	@ tmp166,
	movhi	r3, #1	@ tmp166,
	cmp	r2, #1	@ enStatistics,
	movne	r3, #0	@ tmp166,
	cmp	r3, #0	@ tmp166,
	bne	.L40	@,
.L29:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L39:
	cmp	r3, #4	@ u32Time,
	bls	.L29	@,
	ldrh	r1, [ip, #34]	@ g_u16ExcuteTimeoutCnt, g_u16ExcuteTimeoutCnt
	ldr	r0, [sp, #4]	@, %sfp
	add	r1, r1, #1	@ tmp158, g_u16ExcuteTimeoutCnt,
	uxth	r1, r1	@ D.23856, tmp158
	strh	r1, [ip, #34]	@ movhi	@ D.23856, g_u16ExcuteTimeoutCnt
.L38:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	AOE_SchedStatisticsShow	@
.L30:
	ldrd	r2, [r1, #8]	@ u64TimeBase, tmp172,
	mvn	r4, #0	@ tmp136,
	movw	r5, #65535	@,
	adds	r10, r2, r4	@ D.23855, u64TimeBase, tmp136
	movt	r5, 63	@,
	adc	fp, r3, r5	@ D.23855, u64TimeBase,
	strd	r10, [r1, #8]	@ D.23855, tmp172,
	b	.L31	@
.L40:
	ldrh	r1, [ip, #32]	@ g_u16SchTimeoutCnt, g_u16SchTimeoutCnt
	mov	r0, #1	@,
	add	r1, r1, r0	@ tmp170, g_u16SchTimeoutCnt,
	uxth	r1, r1	@ D.23856, tmp170
	strh	r1, [ip, #32]	@ movhi	@ D.23856, g_u16SchTimeoutCnt
	b	.L38	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.fnend
	.size	SchedStatisticsStop, .-SchedStatisticsStop
	.align	2
	.type	AoEngineTask, %function
AoEngineTask:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	add	r2, sp, #16	@ tmp140,,
	mov	r0, #99	@ tmp139,
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r3, r3, #8128	@ D.23869, current_stack_pointer,
	bic	r3, r3, #63	@ D.23869, D.23869,
	str	r0, [r2, #-12]!	@ tmp139, param.sched_priority
	mov	r1, #1	@,
	ldr	r0, [r3, #12]	@, _45->task
	bl	sched_setscheduler	@
	mov	r0, #2	@ tmp147,
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r3, r3, #8128	@ D.23870, current_stack_pointer,
	bic	r3, r3, #63	@ D.23870, D.23870,
	ldr	r1, [r3, #12]	@ D.23865, _48->task
	ldr	r2, [r1, #12]	@ _6->flags, _6->flags
	orr	r2, r2, #32768	@ D.23866, _6->flags,
	str	r2, [r1, #12]	@ D.23866, _6->flags
	ldr	r3, [r3, #12]	@ D.23865, _48->task
	str	r0, [r3]	@ tmp147, MEM[(volatile __u32 *)_11]
	bl	AOE_Init	@
	ldr	r5, .L51	@ tmp163,
	bl	SchedStatisticsInit	@
	movw	r6, #19264	@ tmp165,
	movw	r3, #42405	@ tmp151,
	bfi	r3, r3, #16, #16	@ tmp151, tmp151,,
	str	r3, [r5, #44]	@ tmp151, g_AoeRunningFlag
	movt	r6, 76	@ tmp165,
	mov	r7, #0	@,
	mov	r2, #0	@ tmp149,
	str	r2, [r5, #40]	@ tmp149, task_bug
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r8, r3, #8128	@ tmp167, current_stack_pointer,
.L45:
	ldr	r4, [r5, #48]	@ g_AoeTaskstate, g_AoeTaskstate
	mov	r0, #0	@,
	cmp	r4, #1	@ g_AoeTaskstate,
	bne	.L50	@,
.L46:
	bl	SchedStatisticsStart	@
	bl	AOE_ProcThread_Sw	@
	mov	r0, #0	@,
	bl	SchedStatisticsStop	@
	bl	AOE_GetThreadStatus	@
	cmp	r0, #1	@,
	mov	r0, r4	@, g_AoeTaskstate
	beq	.L45	@,
	bl	SchedStatisticsStart	@
	bic	r3, r8, #63	@ D.23869, tmp167,
	mov	r2, #2	@ tmp155,
	ldr	r3, [r3, #12]	@ D.23865, _53->task
	add	r0, sp, #16	@ tmp156,,
	strd	r6, [r0, #-8]!	@ tmp165, MEM[(union ktime *)&stWaitTime]
	str	r2, [r3]	@ tmp155, MEM[(volatile __u32 *)_28]
	mov	r1, r4	@, g_AoeTaskstate
	bl	schedule_hrtimeout	@
	mov	r0, r4	@, g_AoeTaskstate
	bl	SchedStatisticsStop	@
	ldr	r4, [r5, #48]	@ g_AoeTaskstate, g_AoeTaskstate
	mov	r0, #0	@,
	cmp	r4, #1	@ g_AoeTaskstate,
	beq	.L46	@,
.L50:
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r3, r3, #8128	@ D.23869, current_stack_pointer,
	bic	r3, r3, #63	@ D.23869, D.23869,
	mov	r4, r0	@ tmp161,
	ldr	r3, [r3, #12]	@ D.23865, _57->task
	str	r0, [r3]	@ tmp161, MEM[(volatile __u32 *)_36]
	bl	AOE_DeInit	@
	mov	r0, r4	@, tmp161
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L52:
	.align	2
.L51:
	.word	.LANCHOR0
	.fnend
	.size	AoEngineTask, .-AoEngineTask
	.align	2
	.global	AOE_SwEngineCreate
	.type	AOE_SwEngineCreate, %function
AOE_SwEngineCreate:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	ip, #0	@ tmp120,
	ldr	r5, .L63	@ tmp132,
	mov	r1, ip	@, tmp120
	ldr	r3, .L63+4	@,
	mvn	r2, #0	@,
	ldr	r0, .L63+8	@,
	mov	r4, #1	@ tmp118,
	str	ip, [r5, #44]	@ tmp120, g_AoeRunningFlag
	str	r4, [r5, #48]	@ tmp118, g_AoeTaskstate
	bl	kthread_create_on_node	@
	cmn	r0, #4096	@ D.23881,
	str	r0, [r5, #52]	@ D.23881, g_pstAOEThread
	bhi	.L58	@,
	bl	wake_up_process	@
	ldr	r2, [r5, #44]	@ g_AoeRunningFlag, g_AoeRunningFlag
	movw	r3, #42405	@ tmp126,
	movt	r3, 42405	@ tmp126,
	cmp	r2, r3	@ g_AoeRunningFlag, tmp126
	beq	.L56	@,
	mov	r0, r4	@, tmp118
	movw	r4, #511	@ D.23884,
	bl	msleep	@
	b	.L57	@
.L62:
	bl	msleep	@
	subs	r4, r4, #1	@ D.23884, D.23884,
	beq	.L56	@,
.L57:
	ldr	r2, [r5, #44]	@ g_AoeRunningFlag, g_AoeRunningFlag
	movw	r3, #42405	@ tmp129,
	movt	r3, 42405	@ tmp129,
	mov	r0, #1	@,
	cmp	r2, r3	@ g_AoeRunningFlag, tmp129
	bne	.L62	@,
.L56:
	mov	r0, #0	@ D.23880,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L58:
	mvn	r0, #0	@ D.23880,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.word	.LC0
	.word	AoEngineTask
	.fnend
	.size	AOE_SwEngineCreate, .-AOE_SwEngineCreate
	.align	2
	.global	AOE_SwEngineDestory
	.type	AOE_SwEngineDestory, %function
AOE_SwEngineDestory:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L67	@ tmp111,
	mov	r0, #10	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, #0	@ tmp112,
	str	r4, [r3, #48]	@ tmp112, g_AoeTaskstate
	bl	msleep	@
	mov	r0, r4	@, tmp112
	ldmfd	sp!, {r4, pc}	@
.L68:
	.align	2
.L67:
	.word	.LANCHOR0
	.fnend
	.size	AOE_SwEngineDestory, .-AOE_SwEngineDestory
	.global	g_u32cnt
	.global	g_u16ExcuteTimeoutCnt
	.global	g_u16SchTimeoutCnt
	.global	g_u64EndPts
	.global	g_u64BeginPts
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"AoEngineTask\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
	.type	u64TimeLast.23464, %object
	.size	u64TimeLast.23464, 8
u64TimeLast.23464:
	.space	8
	.type	u64TimeBase.23463, %object
	.size	u64TimeBase.23463, 8
u64TimeBase.23463:
	.space	8
	.type	g_u64BeginPts, %object
	.size	g_u64BeginPts, 8
g_u64BeginPts:
	.space	8
	.type	g_u64EndPts, %object
	.size	g_u64EndPts, 8
g_u64EndPts:
	.space	8
	.type	g_u16SchTimeoutCnt, %object
	.size	g_u16SchTimeoutCnt, 2
g_u16SchTimeoutCnt:
	.space	2
	.type	g_u16ExcuteTimeoutCnt, %object
	.size	g_u16ExcuteTimeoutCnt, 2
g_u16ExcuteTimeoutCnt:
	.space	2
	.type	g_u32cnt, %object
	.size	g_u32cnt, 4
g_u32cnt:
	.space	4
	.type	task_bug.23511, %object
	.size	task_bug.23511, 4
task_bug.23511:
	.space	4
	.type	g_AoeRunningFlag, %object
	.size	g_AoeRunningFlag, 4
g_AoeRunningFlag:
	.space	4
	.type	g_AoeTaskstate, %object
	.size	g_AoeTaskstate, 4
g_AoeTaskstate:
	.space	4
	.type	g_pstAOEThread, %object
	.size	g_pstAOEThread, 4
g_pstAOEThread:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
