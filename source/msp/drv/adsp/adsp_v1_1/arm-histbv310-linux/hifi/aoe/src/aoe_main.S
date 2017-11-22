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
	.file	"aoe_main.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(aoe_main)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/.aoe_main.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aoe_main.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aoe_main.o
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
	.global	TRACE_AOE_FSM
	.type	TRACE_AOE_FSM, %function
TRACE_AOE_FSM:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6	@ tmp119,
	ldr	r3, [r3]	@ D.21239, g_pstAOEComReg
	cmp	r3, #0	@ D.21239,
	uxtbne	r2, r2	@ D.21240, eFsm
	orrne	r1, r2, r1, asl #8	@ D.21240, D.21240, ch,
	orrne	r0, r1, r0, asl #16	@ D.21240, D.21240, ModId,
	strne	r0, [r3, #8]	@ D.21240, _3->AOE_STATUS0
	bx	lr	@
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.fnend
	.size	TRACE_AOE_FSM, .-TRACE_AOE_FSM
	.align	2
	.global	AOE_Reset
	.type	AOE_Reset, %function
AOE_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9	@ tmp110,
	mov	r2, #0	@ tmp111,
	str	r2, [r3, #4]	@ tmp111, g_stAoeInitFlag
	bx	lr	@
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.fnend
	.size	AOE_Reset, .-AOE_Reset
	.align	2
	.global	AOE_InitWKBuf
	.type	AOE_InitWKBuf, %function
AOE_InitWKBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ u32WKBufNum, u32WKBufNum
	ldr	r4, .L20	@ tmp118,
	mov	r6, r0	@ u32WKBufSize, u32WKBufSize
	mov	r1, #20	@,
	mov	r7, r2	@ u32AlignToBytes, u32AlignToBytes
	add	r0, r4, #8	@, tmp118,
	bl	__memzero	@
	sub	r3, r5, #1	@ D.21251, u32WKBufNum,
	cmp	r3, #1	@ D.21251,
	ldmhifd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, u32AlignToBytes
	mov	r0, #17	@,
	mul	r1, r6, r5	@, u32WKBufSize, u32WKBufNum
	bl	HI_ADSP_VMALLOC_Aligned	@
	cmp	r0, #0	@ ptr
	strne	r0, [r4, #20]	@ ptr, g_stWkbuf.uWkBufBase
	strne	r5, [r4, #16]	@ u32WKBufNum, g_stWkbuf.uWkBufBlockNumber
	strne	r6, [r4, #12]	@ u32WKBufSize, g_stWkbuf.uWkBufBlockSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.fnend
	.size	AOE_InitWKBuf, .-AOE_InitWKBuf
	.align	2
	.global	AOE_Init
	.type	AOE_Init, %function
AOE_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, .L42	@ tmp150,
	ldr	r5, [r4, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r5, #0	@ g_stAoeInitFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r5	@, g_stAoeInitFlag
	mov	r1, #2048	@,
	mov	r0, #20480	@,
	bl	__arm_ioremap	@
	mov	r1, #2048	@,
	str	r0, [r4, #28]	@, g_u32RegMapAddr
	bl	__memzero	@
	ldr	r0, [r4, #28]	@ D.21257, g_u32RegMapAddr
	cmp	r0, #0	@ D.21257,
	str	r0, [r4]	@ D.21257, g_pstAOEComReg
	add	r0, r0, #256	@, D.21257,
	strne	r5, [r0, #-248]	@ g_stAoeInitFlag, _10->AOE_STATUS0
	bl	AIP_Init	@
	ldr	r3, [r4]	@ D.21258, g_pstAOEComReg
	ldr	r0, [r4, #28]	@ g_u32RegMapAddr, g_u32RegMapAddr
	cmp	r3, #0	@ D.21258,
	add	r0, r0, #768	@, g_u32RegMapAddr,
	movne	r2, #1	@ tmp132,
	strne	r2, [r3, #8]	@ tmp132, _12->AOE_STATUS0
	bl	AOP_Init	@
	ldr	r3, [r4]	@ D.21258, g_pstAOEComReg
	ldr	r0, [r4, #28]	@ g_u32RegMapAddr, g_u32RegMapAddr
	cmp	r3, #0	@ D.21258,
	add	r0, r0, #64	@, g_u32RegMapAddr,
	movne	r2, #2	@ tmp137,
	strne	r2, [r3, #8]	@ tmp137, _15->AOE_STATUS0
	bl	ENGINE_Init	@
	ldr	r3, [r4]	@ D.21258, g_pstAOEComReg
	mov	r1, #2	@,
	mov	r0, #61440	@,
	cmp	r3, #0	@ D.21258,
	movne	r2, #3	@ tmp142,
	strne	r2, [r3, #8]	@ tmp142, _19->AOE_STATUS0
	mov	r2, #32	@,
	bl	AOE_InitWKBuf	@
	ldr	r3, [r4]	@ D.21258, g_pstAOEComReg
	ldr	r2, .L42	@ tmp143,
	cmp	r3, #0	@ D.21258,
	movne	r1, #4	@ tmp144,
	movne	r0, #1	@ tmp146,
	moveq	r3, #1	@ tmp149,
	streq	r3, [r2, #4]	@ tmp149, g_stAoeInitFlag
	strne	r1, [r3, #8]	@ tmp144, _23->AOE_STATUS0
	movne	r1, #6	@ tmp147,
	strne	r0, [r2, #4]	@ tmp146, g_stAoeInitFlag
	strne	r1, [r3, #8]	@ tmp147, _23->AOE_STATUS0
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.fnend
	.size	AOE_Init, .-AOE_Init
	.align	2
	.global	AOE_DeInitWKBuf
	.type	AOE_DeInitWKBuf, %function
AOE_DeInitWKBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #17	@,
	ldr	r4, .L46	@ tmp112,
	ldr	r1, [r4, #20]	@, g_stWkbuf.uWkBufBase
	bl	HI_ADSP_VFREE_Aligned	@
	add	r0, r4, #8	@, tmp112,
	mov	r1, #20	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.fnend
	.size	AOE_DeInitWKBuf, .-AOE_DeInitWKBuf
	.align	2
	.global	AOE_DeInit
	.type	AOE_DeInit, %function
AOE_DeInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, .L76	@ tmp135,
	ldr	r3, [r4, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r3, #0	@ g_stAoeInitFlag,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, [r4]	@ D.21266, g_pstAOEComReg
	cmp	r3, #0	@ D.21266,
	movne	r2, #7	@ tmp121,
	strne	r2, [r3, #8]	@ tmp121, _18->AOE_STATUS0
	bl	AIP_DeInit	@
	ldr	r3, [r4]	@ D.21266, g_pstAOEComReg
	cmp	r3, #0	@ D.21266,
	movne	r2, #8	@ tmp123,
	strne	r2, [r3, #8]	@ tmp123, _4->AOE_STATUS0
	bl	AOP_DeInit	@
	ldr	r3, [r4]	@ D.21266, g_pstAOEComReg
	cmp	r3, #0	@ D.21266,
	movne	r2, #9	@ tmp125,
	strne	r2, [r3, #8]	@ tmp125, _6->AOE_STATUS0
	bl	ENGINE_DeInit	@
	ldr	r3, [r4]	@ D.21266, g_pstAOEComReg
	cmp	r3, #0	@ D.21266,
	movne	r2, #10	@ tmp127,
	strne	r2, [r3, #8]	@ tmp127, _8->AOE_STATUS0
	bl	AOE_DeInitWKBuf	@
	ldr	r3, [r4]	@ D.21266, g_pstAOEComReg
	ldr	r0, [r4, #28]	@ D.21267, g_u32RegMapAddr
	cmp	r3, #0	@ D.21266,
	movne	r2, #11	@ tmp129,
	strne	r2, [r3, #8]	@ tmp129, _10->AOE_STATUS0
	mov	r3, #0	@ tmp131,
	cmp	r0, r3	@ D.21267,
	str	r3, [r4]	@ tmp131, g_pstAOEComReg
	str	r3, [r4, #4]	@ tmp131, g_stAoeInitFlag
	ldmeqfd	sp!, {r4, pc}	@
	ldmfd	sp!, {r4, lr}	@
	b	__arm_iounmap	@
.L77:
	.align	2
.L76:
	.word	.LANCHOR0
	.fnend
	.size	AOE_DeInit, .-AOE_DeInit
	.align	2
	.global	AOE_FlushWKBuf
	.type	AOE_FlushWKBuf, %function
AOE_FlushWKBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L79	@ tmp110,
	mov	r2, #0	@ tmp111,
	str	r2, [r3, #8]	@ tmp111, g_stWkbuf.uWkBufIdx
	bx	lr	@
.L80:
	.align	2
.L79:
	.word	.LANCHOR0
	.fnend
	.size	AOE_FlushWKBuf, .-AOE_FlushWKBuf
	.align	2
	.global	AOE_GetWKBuf
	.type	AOE_GetWKBuf, %function
AOE_GetWKBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L84	@ tmp129,
	ldr	r2, [r3, #8]	@ D.21273, g_stWkbuf.uWkBufIdx
	ldr	r1, [r3, #16]	@ g_stWkbuf.uWkBufBlockNumber, g_stWkbuf.uWkBufBlockNumber
	ldr	r0, [r3, #12]	@ g_stWkbuf.uWkBufBlockSize, g_stWkbuf.uWkBufBlockSize
	cmp	r2, r1	@ D.21273, g_stWkbuf.uWkBufBlockNumber
	ldr	r1, [r3, #20]	@ g_stWkbuf.uWkBufBase, g_stWkbuf.uWkBufBase
	addlt	ip, r2, #1	@ D.21273, D.21274,
	movge	r2, #0	@ D.21274,
	movge	ip, #1	@ D.21273,
	mla	r0, r0, r2, r1	@, g_stWkbuf.uWkBufBlockSize, D.21274, g_stWkbuf.uWkBufBase
	str	ip, [r3, #8]	@ D.21273, g_stWkbuf.uWkBufIdx
	bx	lr	@
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.fnend
	.size	AOE_GetWKBuf, .-AOE_GetWKBuf
	.align	2
	.global	AOE_ReleaseWKBuf
	.type	AOE_ReleaseWKBuf, %function
AOE_ReleaseWKBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L90	@ tmp114,
	ldr	r2, [r3, #8]	@ D.21277, g_stWkbuf.uWkBufIdx
	cmp	r2, #0	@ D.21277,
	ldreq	r2, [r3, #16]	@ g_stWkbuf.uWkBufBlockNumber, g_stWkbuf.uWkBufBlockNumber
	sub	r2, r2, #1	@ D.21277, g_stWkbuf.uWkBufBlockNumber,
	str	r2, [r3, #8]	@ D.21277, g_stWkbuf.uWkBufIdx
	bx	lr	@
.L91:
	.align	2
.L90:
	.word	.LANCHOR0
	.fnend
	.size	AOE_ReleaseWKBuf, .-AOE_ReleaseWKBuf
	.align	2
	.global	AOE_GetWKBufSize
	.type	AOE_GetWKBufSize, %function
AOE_GetWKBufSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L93	@ tmp113,
	ldr	r0, [r3, #12]	@, g_stWkbuf.uWkBufBlockSize
	bx	lr	@
.L94:
	.align	2
.L93:
	.word	.LANCHOR0
	.fnend
	.size	AOE_GetWKBufSize, .-AOE_GetWKBufSize
	.align	2
	.global	AOE_SchedStatisticsInit
	.type	AOE_SchedStatisticsInit, %function
AOE_SchedStatisticsInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L100	@ tmp112,
	ldr	r2, [r3, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r2, #0	@ g_stAoeInitFlag,
	ldrne	r3, [r3]	@ D.21284, g_pstAOEComReg
	movne	r2, #0	@ tmp115,
	strne	r2, [r3, #12]	@ tmp115, _4->AOE_STATUS1.u32
	bx	lr	@
.L101:
	.align	2
.L100:
	.word	.LANCHOR0
	.fnend
	.size	AOE_SchedStatisticsInit, .-AOE_SchedStatisticsInit
	.align	2
	.global	AOE_SchedStatisticsShow
	.type	AOE_SchedStatisticsShow, %function
AOE_SchedStatisticsShow:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L109	@ tmp115,
	ldr	r2, [r3, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r2, #0	@ g_stAoeInitFlag,
	bxeq	lr	@
	cmp	r0, #0	@ enStatistics,
	beq	.L108	@,
	cmp	r0, #1	@ enStatistics,
	ldreq	r3, [r3]	@ D.21288, g_pstAOEComReg
	ldreq	r2, [r3, #12]	@ tmp120,
	bfieq	r2, r1, #16, #16	@ tmp120, u16TimeOutCnt,,
	streq	r2, [r3, #12]	@ tmp120,
	bx	lr	@
.L108:
	ldr	r3, [r3]	@ D.21288, g_pstAOEComReg
	ldr	r2, [r3, #12]	@ tmp118,
	bfi	r2, r1, #0, #16	@ tmp118, u16TimeOutCnt,,
	str	r2, [r3, #12]	@ tmp118,
	bx	lr	@
.L110:
	.align	2
.L109:
	.word	.LANCHOR0
	.fnend
	.size	AOE_SchedStatisticsShow, .-AOE_SchedStatisticsShow
	.align	2
	.global	AOE_ProcThread_Sw
	.type	AOE_ProcThread_Sw, %function
AOE_ProcThread_Sw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, #0	@ tmp115,
	ldr	r4, .L116	@ tmp114,
	ldr	r3, [r4, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	str	r2, [r4, #32]	@ tmp115, g_enAoeTaskStatus
	cmp	r3, r2	@ g_stAoeInitFlag,
	ldmeqfd	sp!, {r4, pc}	@
	bl	AIP_Process	@
	bl	AOP_Process	@
	bl	ENGINE_Process	@
	ldr	r3, [r4, #36]	@ g_u32AoeTaskTicks, g_u32AoeTaskTicks
	mov	r2, #1	@ tmp119,
	str	r2, [r4, #32]	@ tmp119, g_enAoeTaskStatus
	add	r3, r3, r2	@ D.21292, g_u32AoeTaskTicks,
	str	r3, [r4, #36]	@ D.21292, g_u32AoeTaskTicks
	ands	r3, r3, #3	@ D.21292, D.21292,
	streq	r3, [r4, #32]	@ D.21292, g_enAoeTaskStatus
	ldmfd	sp!, {r4, pc}	@
.L117:
	.align	2
.L116:
	.word	.LANCHOR0
	.fnend
	.size	AOE_ProcThread_Sw, .-AOE_ProcThread_Sw
	.align	2
	.global	AOE_GetThreadStatus
	.type	AOE_GetThreadStatus, %function
AOE_GetThreadStatus:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L119	@ tmp113,
	ldr	r0, [r3, #32]	@, g_enAoeTaskStatus
	bx	lr	@
.L120:
	.align	2
.L119:
	.word	.LANCHOR0
	.fnend
	.size	AOE_GetThreadStatus, .-AOE_GetThreadStatus
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_pstAOEComReg, %object
	.size	g_pstAOEComReg, 4
g_pstAOEComReg:
	.space	4
	.type	g_stAoeInitFlag, %object
	.size	g_stAoeInitFlag, 4
g_stAoeInitFlag:
	.space	4
	.type	g_stWkbuf, %object
	.size	g_stWkbuf, 20
g_stWkbuf:
	.space	20
	.type	g_u32RegMapAddr, %object
	.size	g_u32RegMapAddr, 4
g_u32RegMapAddr:
	.space	4
	.type	g_enAoeTaskStatus, %object
	.size	g_enAoeTaskStatus, 4
g_enAoeTaskStatus:
	.space	4
	.type	g_u32AoeTaskTicks, %object
	.size	g_u32AoeTaskTicks, 4
g_u32AoeTaskTicks:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
