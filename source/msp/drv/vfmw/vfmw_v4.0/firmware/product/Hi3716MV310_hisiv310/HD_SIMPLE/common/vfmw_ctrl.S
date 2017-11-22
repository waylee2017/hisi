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
	.file	"vfmw_ctrl.c"
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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV310 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
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
	.type	VfmwProc_SetPrintLevel, %function
VfmwProc_SetPrintLevel:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ dat, *p_args_2(D)
	ldr	r3, .L2	@ tmp112,
	str	r2, [r3]	@ dat, g_PrintEnable
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	g_PrintEnable
	.fnend
	.size	VfmwProc_SetPrintLevel, .-VfmwProc_SetPrintLevel
	.align	2
	.type	VfmwProc_PrintTracer, %function
VfmwProc_PrintTracer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	VfmwProc_PrintTracer, .-VfmwProc_PrintTracer
	.align	2
	.type	VfmwProc_OpenScdLowdly, %function
VfmwProc_OpenScdLowdly:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0]	@ *p_args_2(D), *p_args_2(D)
	mov	r2, #1	@ tmp118,
	ldr	r3, .L6	@ tmp113,
	add	r3, r3, r1, lsl #2	@ tmp116, tmp113, *p_args_2(D),
	ldr	r3, [r3, #116]	@ D.36563, s_SmIIS.pSmInstArray
	str	r2, [r3, #88]	@ tmp118, _4->Config.ScdLowdlyEnable
	bx	lr	@
.L7:
	.align	2
.L6:
	.word	s_SmIIS
	.fnend
	.size	VfmwProc_OpenScdLowdly, .-VfmwProc_OpenScdLowdly
	.align	2
	.type	VfmwProc_CloseScdLowdly, %function
VfmwProc_CloseScdLowdly:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0]	@ *p_args_2(D), *p_args_2(D)
	mov	r2, #0	@ tmp118,
	ldr	r3, .L9	@ tmp113,
	add	r3, r3, r1, lsl #2	@ tmp116, tmp113, *p_args_2(D),
	ldr	r3, [r3, #116]	@ D.36566, s_SmIIS.pSmInstArray
	str	r2, [r3, #88]	@ tmp118, _4->Config.ScdLowdlyEnable
	bx	lr	@
.L10:
	.align	2
.L9:
	.word	s_SmIIS
	.fnend
	.size	VfmwProc_CloseScdLowdly, .-VfmwProc_CloseScdLowdly
	.align	2
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L24	@,
	ldr	ip, .L28	@ tmp123,
	ldr	r3, [ip]	@ D.36570, s_pstVfmwChan
	cmp	r3, #0	@ D.36570,
	beq	.L25	@,
	ldr	r3, [r3, #20]	@ eType, _8->eAdapterType
	cmp	r3, #0	@ eType,
	beq	.L16	@,
	cmp	r3, #1	@ eType,
	bne	.L26	@,
	ldr	r3, [ip, #152]	@ D.36571, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.36571,
	beq	.L27	@,
.L19:
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ D.36571
.L26:
	ldr	r2, .L28+4	@,
	ldr	r1, .L28+8	@,
	bl	dprint_vfmw	@
.L13:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L16:
	ldr	r3, [ip, #148]	@ D.36571, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.36571,
	bne	.L19	@,
	ldr	r1, .L28+12	@,
	bl	dprint_vfmw	@
	b	.L13	@
.L27:
	ldr	r1, .L28+16	@,
	bl	dprint_vfmw	@
	b	.L13	@
.L24:
	ldr	r3, .L28+20	@,
	mov	r2, #676	@,
	ldr	r1, .L28+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L13	@
.L25:
	ldr	r3, .L28+28	@,
	movw	r2, #677	@,
	ldr	r1, .L28+24	@,
	bl	dprint_vfmw	@
	b	.L13	@
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC9
	.word	.LC7
	.word	.LC8
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.type	VfmwProc_SetNoStreamReportPeriod, %function
VfmwProc_SetNoStreamReportPeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36580, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L31	@ tmp113,
	ldr	r1, .L31+4	@,
	mov	r2, r3	@, D.36580
	str	r3, [ip]	@ D.36580, g_NoStreamReportPeriod
	b	dprint_vfmw	@
.L32:
	.align	2
.L31:
	.word	g_NoStreamReportPeriod
	.word	.LC10
	.fnend
	.size	VfmwProc_SetNoStreamReportPeriod, .-VfmwProc_SetNoStreamReportPeriod
	.align	2
	.type	VfmwProc_SetTraceImgPeriod, %function
VfmwProc_SetTraceImgPeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36584, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L34	@ tmp113,
	ldr	r1, .L34+4	@,
	mov	r2, r3	@, D.36584
	str	r3, [ip]	@ D.36584, g_TraceImgPeriod
	b	dprint_vfmw	@
.L35:
	.align	2
.L34:
	.word	g_TraceImgPeriod
	.word	.LC11
	.fnend
	.size	VfmwProc_SetTraceImgPeriod, .-VfmwProc_SetTraceImgPeriod
	.align	2
	.type	VfmwProc_SetTraceFramePeriod, %function
VfmwProc_SetTraceFramePeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36588, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L37	@ tmp113,
	ldr	r1, .L37+4	@,
	mov	r2, r3	@, D.36588
	str	r3, [ip]	@ D.36588, g_TraceFramePeriod
	b	dprint_vfmw	@
.L38:
	.align	2
.L37:
	.word	g_TraceFramePeriod
	.word	.LC12
	.fnend
	.size	VfmwProc_SetTraceFramePeriod, .-VfmwProc_SetTraceFramePeriod
	.align	2
	.type	VfmwProc_SetTraceBSPeriod, %function
VfmwProc_SetTraceBSPeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36592, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L40	@ tmp113,
	ldr	r1, .L40+4	@,
	mov	r2, r3	@, D.36592
	str	r3, [ip]	@ D.36592, g_TraceBsPeriod
	b	dprint_vfmw	@
.L41:
	.align	2
.L40:
	.word	g_TraceBsPeriod
	.word	.LC13
	.fnend
	.size	VfmwProc_SetTraceBSPeriod, .-VfmwProc_SetTraceBSPeriod
	.align	2
	.type	VfmwProc_SetTraceCtrl, %function
VfmwProc_SetTraceCtrl:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36596, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L43	@ tmp113,
	ldr	r1, .L43+4	@,
	mov	r2, r3	@, D.36596
	str	r3, [ip]	@ D.36596, g_TraceCtrl
	b	dprint_vfmw	@
.L44:
	.align	2
.L43:
	.word	g_TraceCtrl
	.word	.LC14
	.fnend
	.size	VfmwProc_SetTraceCtrl, .-VfmwProc_SetTraceCtrl
	.align	2
	.type	VfmwProc_TestStopDec, %function
VfmwProc_TestStopDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36600, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L46	@ tmp113,
	ldr	r1, .L46+4	@,
	mov	r2, r3	@, D.36600
	str	r3, [ip, #156]	@ D.36600, g_StopDec
	b	dprint_vfmw	@
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	.LC15
	.fnend
	.size	VfmwProc_TestStopDec, .-VfmwProc_TestStopDec
	.align	2
	.type	VfmwProc_SetDnrSleepTime, %function
VfmwProc_SetDnrSleepTime:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36604, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L49	@ tmp113,
	ldr	r1, .L49+4	@,
	mov	r2, r3	@, D.36604
	str	r3, [ip, #160]	@ D.36604, g_DnrSleepTime
	b	dprint_vfmw	@
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
	.word	.LC16
	.fnend
	.size	VfmwProc_SetDnrSleepTime, .-VfmwProc_SetDnrSleepTime
	.align	2
	.type	VfmwProc_TestTimeSequence, %function
VfmwProc_TestTimeSequence:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.36608, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L52	@ tmp113,
	ldr	r1, .L52+4	@,
	mov	r2, r3	@, D.36608
	str	r3, [ip, #164]	@ D.36608, g_SleepTime
	b	dprint_vfmw	@
.L53:
	.align	2
.L52:
	.word	.LANCHOR0
	.word	.LC17
	.fnend
	.size	VfmwProc_TestTimeSequence, .-VfmwProc_TestTimeSequence
	.align	2
	.type	VfmwProc_SetCurProcChan, %function
VfmwProc_SetCurProcChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #1	@ dat,
	bls	.L55	@,
	mov	r2, r3	@, dat
	ldr	r1, .L56	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L55:
	ldr	ip, .L56+4	@ tmp114,
	mov	r2, r3	@, dat
	ldr	r1, .L56+8	@,
	mov	r0, #32	@,
	str	r3, [ip, #168]	@ dat, g_CurProcChan
	b	dprint_vfmw	@
.L57:
	.align	2
.L56:
	.word	.LC18
	.word	.LANCHOR0
	.word	.LC19
	.fnend
	.size	VfmwProc_SetCurProcChan, .-VfmwProc_SetCurProcChan
	.align	2
	.type	VfmwProc_SetSaveFileAfterReset, %function
VfmwProc_SetSaveFileAfterReset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #1	@ dat,
	bls	.L60	@,
	mov	r2, r3	@, dat
	ldr	r1, .L61	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L60:
	ldr	ip, .L61+4	@ tmp112,
	mov	r2, r3	@, dat
	ldr	r1, .L61+8	@,
	mov	r0, #32	@,
	str	r3, [ip, #172]	@ dat, g_ResetCreateNewSave
	b	dprint_vfmw	@
.L62:
	.align	2
.L61:
	.word	.LC21
	.word	.LANCHOR0
	.word	.LC20
	.fnend
	.size	VfmwProc_SetSaveFileAfterReset, .-VfmwProc_SetSaveFileAfterReset
	.align	2
	.type	VfmwProc_SetUSE_FF_APT_EN, %function
VfmwProc_SetUSE_FF_APT_EN:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #1	@ dat,
	bls	.L65	@,
	mov	r2, r3	@, dat
	ldr	r1, .L66	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L65:
	ldr	ip, .L66+4	@ tmp112,
	mov	r2, r3	@, dat
	ldr	r1, .L66+8	@,
	mov	r0, #32	@,
	str	r3, [ip]	@ dat, USE_FF_APT_EN
	b	dprint_vfmw	@
.L67:
	.align	2
.L66:
	.word	.LC23
	.word	USE_FF_APT_EN
	.word	.LC22
	.fnend
	.size	VfmwProc_SetUSE_FF_APT_EN, .-VfmwProc_SetUSE_FF_APT_EN
	.align	2
	.type	VfmwProc_SetDNR, %function
VfmwProc_SetDNR:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r3, [r0]	@ dat, *p_args_5(D)
	ldr	r2, .L76	@ tmp125,
	and	lr, r3, #15	@ D.36625, dat,
	ldr	r4, .L76+4	@ tmp151,
	cmp	lr, #3	@ D.36625,
	ubfx	ip, r3, #4, #4	@ D.36625, dat,,
	ldmia	r2, {r0, r1, r2}	@ tmp125,,,
	movcs	lr, #0	@ D.36625,
	cmp	ip, #3	@ D.36625,
	ubfx	r3, r3, #8, #4	@ D.36625, dat,,
	ldr	r5, .L76+8	@ tmp150,
	ldr	r6, .L76+12	@ tmp130,
	movcs	ip, #0	@ D.36625,
	str	lr, [r4]	@ D.36625, g_DREnable
	add	lr, sp, #16	@ tmp152,,
	cmp	r3, #3	@ D.36625,
	str	ip, [r5]	@ D.36625, g_DBEnable
	stmdb	lr, {r0, r1, r2}	@ tmp152,,,
	mov	r0, #32	@,
	ldr	r1, .L76+16	@,
	movcs	r3, #0	@ D.36625,
	str	r3, [r6]	@ D.36625, g_DCEnable
	bl	dprint_vfmw	@
	ldr	r3, [r6]	@ g_DCEnable, g_DCEnable
	add	r2, sp, #16	@ tmp153,,
	ldr	r1, .L76+20	@,
	mov	r0, #32	@,
	add	r3, r2, r3, lsl #2	@ tmp134, tmp153, g_DCEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	r3, [r5]	@ g_DBEnable, g_DBEnable
	add	r2, sp, #16	@ tmp154,,
	ldr	r1, .L76+24	@,
	mov	r0, #32	@,
	add	r3, r2, r3, lsl #2	@ tmp140, tmp154, g_DBEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	r3, [r4]	@ g_DREnable, g_DREnable
	add	r2, sp, #16	@ tmp155,,
	ldr	r1, .L76+28	@,
	mov	r0, #32	@,
	add	r3, r2, r3, lsl #2	@ tmp146, tmp155, g_DREnable,
	ldr	r2, [r3, #-12]	@, opt
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L77:
	.align	2
.L76:
	.word	.LANCHOR1+20
	.word	g_DREnable
	.word	g_DBEnable
	.word	g_DCEnable
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.fnend
	.size	VfmwProc_SetDNR, .-VfmwProc_SetDNR
	.align	2
	.global	VCTRL_Isr_0
	.type	VCTRL_Isr_0, %function
VCTRL_Isr_0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Isr_0, .-VCTRL_Isr_0
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr, .-VCTRL_Scd_Isr
	.align	2
	.global	VCTRL_Dnr_Isr
	.type	VCTRL_Dnr_Isr, %function
VCTRL_Dnr_Isr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	DNR_IntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Dnr_Isr, .-VCTRL_Dnr_Isr
	.align	2
	.type	VfmwProc_SetDNRCfg, %function
VfmwProc_SetDNRCfg:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r2, [r0]	@ dat, *p_args_4(D)
	mov	r0, r2, lsr #27	@ D.36641, dat,
	cmp	r0, #1	@ D.36641,
	bls	.L85	@,
	ldr	r1, .L92	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L84:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L85:
	mov	r1, sp	@,
	ubfx	ip, r2, #26, #1	@ tmp132, dat,,
	ubfx	r3, r2, #25, #1	@ tmp136, dat,,
	strb	ip, [sp]	@ tmp132, DnrChanCfgArgs.s32MirrorEn
	strb	r3, [sp, #1]	@ tmp136, DnrChanCfgArgs.s32VcmpEn
	ubfx	ip, r2, #24, #1	@ tmp140, dat,,
	ubfx	r3, r2, #12, #12	@ D.36643, dat,,
	strb	ip, [sp, #2]	@ tmp140, DnrChanCfgArgs.s32WmEn
	ubfx	r2, r2, #0, #12	@ D.36643, dat,,
	str	r3, [sp, #4]	@ D.36643, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #8]	@ D.36643, DnrChanCfgArgs.s32VcmpWmEndLine
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	beq	.L84	@,
	ldr	r1, .L92+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L93:
	.align	2
.L92:
	.word	.LC18
	.word	.LC29
	.fnend
	.size	VfmwProc_SetDNRCfg, .-VfmwProc_SetDNRCfg
	.align	2
	.type	VfmwProc_Save1DYUV, %function
VfmwProc_Save1DYUV:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r2, [r0]	@ dat, *p_args_4(D)
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, r2, #-2130706432	@ t, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ t,
	ldmib	r0, {r6, r7}	@ p_args,,
	beq	.L101	@,
	str	r2, [sp]	@ dat,
	mov	r1, #50	@,
	ldr	r3, .L102	@,
	add	r0, sp, #14	@ tmp132,,
	ldr	r2, .L102+4	@,
	bl	snprintf	@
	add	r0, sp, #14	@ tmp133,,
	mov	r2, #0	@,
	mov	r1, #66	@,
	bl	klib_fopen	@
	subs	r5, r0, #0	@ fp,
	beq	.L97	@,
	ldr	r3, .L102+8	@ tmp124,
	ldr	ip, [r3, #96]	@ D.36648, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.36648,
	beq	.L98	@,
	mov	lr, #1	@ tmp125,
	mov	r3, r7	@, D.36647
	mov	r2, r6	@, D.36647
	mov	r1, r4	@, t
	str	lr, [sp]	@ tmp125,
	blx	ip	@ D.36648
.L99:
	mov	r0, r5	@, fp
	bl	klib_fclose	@
	add	r2, sp, #14	@ tmp134,,
	ldr	r1, .L102+12	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L96:
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L98:
	mov	r0, ip	@, D.36648
	movw	r2, #7639	@,
	ldr	r1, .L102+16	@,
	bl	dprint_vfmw	@
	b	.L99	@
.L101:
	ldr	r1, .L102+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L97:
	add	r2, sp, #14	@ tmp135,,
	ldr	r1, .L102+24	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L96	@
.L103:
	.align	2
.L102:
	.word	.LANCHOR2
	.word	.LC31
	.word	g_vdm_hal_fun_ptr
	.word	.LC33
	.word	.LC32
	.word	.LC30
	.word	.LC34
	.fnend
	.size	VfmwProc_Save1DYUV, .-VfmwProc_Save1DYUV
	.align	2
	.type	VfmwProc_SaveOneYUV, %function
VfmwProc_SaveOneYUV:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r2, [r0]	@ dat, *p_args_3(D)
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, r2, #-2130706432	@ t, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ t,
	beq	.L109	@,
	str	r2, [sp]	@ dat,
	mov	r1, #50	@,
	ldr	r3, .L110	@,
	add	r0, sp, #14	@ tmp125,,
	ldr	r2, .L110+4	@,
	bl	snprintf	@
	add	r0, sp, #14	@ tmp126,,
	mov	r2, #0	@,
	mov	r1, #66	@,
	bl	klib_fopen	@
	subs	r5, r0, #0	@ fp,
	beq	.L107	@,
	mov	r2, r5	@, fp
	mov	r1, #3145728	@,
	mov	r0, r4	@, t
	bl	klib_fwrite	@
	mov	r0, r5	@, fp
	bl	klib_fclose	@
	add	r2, sp, #14	@ tmp127,,
	ldr	r1, .L110+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L107:
	add	r2, sp, #14	@ tmp128,,
	ldr	r1, .L110+12	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L109:
	ldr	r1, .L110+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L111:
	.align	2
.L110:
	.word	.LANCHOR2
	.word	.LC35
	.word	.LC36
	.word	.LC34
	.word	.LC30
	.fnend
	.size	VfmwProc_SaveOneYUV, .-VfmwProc_SaveOneYUV
	.align	2
	.type	VCTRL_ConfigMemInfo.isra.1, %function
VCTRL_ConfigMemInfo.isra.1:
	.fnstart
	@ args = 64, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #444
	sub	sp, sp, #444	@,,
	ldr	r5, .L130	@ tmp226,
	mov	r6, r0	@ ChanID, ChanID
	ldr	r4, [sp, #528]	@ D.36666, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	lr, [sp, #532]	@ D.36666, ChanMemFlag.SelfAllocChanMem_scd
	ldr	ip, [r5, r0, asl #2]	@ D.36665, s_pstVfmwChan
	ldr	r8, [sp, #540]	@ ChanMemFlag.SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	r0, [sp, #536]	@ D.36666, ChanMemFlag.SelfAllocChanMem_ctx
	add	r7, ip, #217088	@ tmp163, D.36665,
	str	r4, [ip, #216]	@ D.36666, _7->s32SelfAllocChanMem_vdh
	str	lr, [ip, #220]	@ D.36666, _7->s32SelfAllocChanMem_scd
	str	r0, [ip, #224]	@ D.36666, _7->s32SelfAllocChanMem_ctx
	str	r8, [r7, #400]	@ ChanMemFlag.SelfAllocChanMem_pmv, _7->s32SelfAllocChanMem_pmv
	ldr	r8, [r3, #8]	@ pChanOption_12(D)->MemAllocMode, pChanOption_12(D)->MemAllocMode
	ldr	r7, [sp, #480]	@ ISRA.182, ISRA.182
	cmp	r0, #1	@ D.36666,
	cmpeq	r8, #3	@, pChanOption_12(D)->MemAllocMode,
	ldr	fp, [sp, #484]	@ ISRA.183, ISRA.183
	ldr	r9, [sp, #492]	@ ISRA.185, ISRA.185
	moveq	r0, #1	@ tmp170,
	movne	r0, #0	@ tmp170,
	cmp	r4, #0	@ D.36666,
	movne	r0, #0	@, tmp174
	andeq	r0, r0, #1	@,, tmp174, tmp170
	ldr	r8, [sp, #500]	@ ISRA.187, ISRA.187
	cmp	lr, #0	@ D.36666,
	movne	r0, #0	@, tmp180
	andeq	r0, r0, #1	@,, tmp180, tmp174
	ldr	r4, [sp, #488]	@ ISRA.184, ISRA.184
	cmp	r0, #0	@ tmp180,
	ldr	lr, [sp, #496]	@ ISRA.186, ISRA.186
	ldr	r10, [sp, #504]	@ ISRA.188, ISRA.188
	beq	.L113	@,
	add	r0, r9, r8	@ D.36666, ISRA.185, ISRA.187
	cmp	r2, #1	@ OneChanMemFlag,
	cmpeq	r0, r7	@, D.36666, ISRA.182
	beq	.L129	@,
.L113:
	mov	r2, #0	@ tmp191,
	str	r2, [ip, #148]	@ tmp191, _7->s32OneChanMem
.L114:
	add	ip, r5, r6, lsl #2	@ tmp200, tmp226, ChanID,
	ldr	r2, [r5, r6, asl #2]	@ D.36665, s_pstVfmwChan
	str	lr, [ip, #176]	@ ISRA.186, g_scd_vir
	add	r0, r2, #217088	@ tmp194, D.36665,
	ldr	ip, [sp, #508]	@ tmp228, ISRA.189
	str	r7, [r2, #176]	@ ISRA.182, _17->stChanMem_vdh.PhyAddr
	str	fp, [r2, #172]	@ ISRA.183, _17->stChanMem_vdh.VirAddr
	str	ip, [r2, #204]	@ tmp228, _17->stChanMem_ctx.VirAddr
	ldr	ip, [sp, #512]	@ tmp229, ISRA.190
	str	r4, [r2, #180]	@ ISRA.184, _17->stChanMem_vdh.Length
	str	r9, [r2, #192]	@ ISRA.185, _17->stChanMem_scd.PhyAddr
	str	ip, [r2, #212]	@ tmp229, _17->stChanMem_ctx.Length
	ldr	ip, [sp, #516]	@ tmp230, ISRA.191
	str	lr, [r2, #188]	@ ISRA.186, _17->stChanMem_scd.VirAddr
	str	r8, [r2, #196]	@ ISRA.187, _17->stChanMem_scd.Length
	str	r10, [r2, #208]	@ ISRA.188, _17->stChanMem_ctx.PhyAddr
	str	ip, [r0, #412]	@ tmp230, _17->stChanMem_pmv.PhyAddr
	ldr	ip, [sp, #520]	@ tmp231, ISRA.192
	str	ip, [r0, #408]	@ tmp231, _17->stChanMem_pmv.VirAddr
	ldr	ip, [sp, #524]	@ tmp232, ISRA.193
	str	ip, [r0, #416]	@ tmp232, _17->stChanMem_pmv.Length
	ldr	r0, [r2, #1580]	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r7, [r2, #248]	@ ISRA.182, _17->s32SdecMemAddr
	cmp	r0, #1	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	str	r4, [r2, #252]	@ ISRA.184, _17->s32SdecMemSize
	beq	.L115	@,
	str	r7, [r2, #236]	@ ISRA.182, _17->s32OffLineDnrMemAddr
	cmp	r1, #24	@ eCapLevel,
	ldr	r2, .L130+4	@ tmp203,
	ldrne	r1, [r3, #60]	@ DnrImgNum, pChanOption_12(D)->s32DisplayFrameNum
	moveq	r1, #1	@ DnrImgNum,
	ldr	ip, [r2, #36]	@ D.36669, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36669,
	beq	.L119	@,
	ldr	r10, [r3, #16]	@ pChanOption_12(D)->s32MaxHeight, pChanOption_12(D)->s32MaxHeight
	mov	lr, #64	@ tmp207,
	ldr	r2, [r3, #12]	@ pChanOption_12(D)->s32MaxWidth, pChanOption_12(D)->s32MaxWidth
	add	r0, sp, #24	@ tmp208,,
	str	r1, [sp, #4]	@ DnrImgNum,
	mvn	r1, #0	@ tmp209,
	str	r0, [sp, #16]	@ tmp208,
	mov	r3, r10	@, pChanOption_12(D)->s32MaxHeight
	mov	r0, #0	@ tmp210,
	str	r1, [sp, #12]	@ tmp209,
	str	r0, [sp, #8]	@ tmp210,
	mov	r1, r4	@, ISRA.184
	str	r0, [sp]	@ tmp210,
	mov	r0, r7	@, ISRA.182
	str	lr, [sp, #20]	@ tmp207,
	blx	ip	@ D.36669
	cmp	r0, #0	@,
	bne	.L119	@,
	ldr	r3, [r5, r6, asl #2]	@ tmp213, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, _34->s32OffLineDNRMemSize
.L120:
	ldr	r3, [r5, r6, asl #2]	@ D.36665, s_pstVfmwChan
	mov	r2, #0	@ tmp221,
	mov	r0, r2	@ D.36670, tmp221
	ldr	r1, [r3, #240]	@ D.36666, _36->s32OffLineDNRMemSize
	str	r9, [r3, #244]	@ ISRA.185, _36->s32ScdChanMemAddr
	rsb	r4, r1, r4	@ D.36666, D.36666, ISRA.184
	add	r7, r1, r7	@ D.36666, D.36666, ISRA.182
	sub	r4, r4, #16	@ D.36666, D.36666,
	str	r8, [r3, #256]	@ ISRA.187, _36->s32ScdChanMemSize
	str	r7, [r3, #228]	@ D.36666, _36->s32VdmChanMemAddr
	str	r4, [r3, #232]	@ D.36666, _36->s32VdmChanMemSize
	str	r2, [r3, #260]	@ tmp221, _36->s32BpdChanMemAddr
	str	r2, [r3, #264]	@ tmp221, _36->s32BpdChanMemSize
	str	r2, [r3, #268]	@ tmp221, _36->s32Vp8SegIdChanMemAddr
	str	r2, [r3, #272]	@ tmp221, _36->s32Vp8SegIdChanMemSize
.L118:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L115:
	mov	r3, #0	@ tmp215,
	str	r3, [r2, #236]	@ tmp215, _17->s32OffLineDnrMemAddr
	str	r3, [r2, #240]	@ tmp215, _17->s32OffLineDNRMemSize
	b	.L120	@
.L129:
	add	r0, r4, r8	@ D.36666, ISRA.184, ISRA.187
	mov	r2, #1	@ tmp190,
	str	r9, [ip, #160]	@ ISRA.185, _7->stChanMem.PhyAddr
	str	lr, [ip, #156]	@ ISRA.186, _7->stChanMem.VirAddr
	str	r0, [ip, #164]	@ D.36666, _7->stChanMem.Length
	str	r2, [ip, #148]	@ tmp190, _7->s32OneChanMem
	b	.L114	@
.L119:
	ldr	r1, .L130+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36670,
	b	.L118	@
.L131:
	.align	2
.L130:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.word	.LC37
	.fnend
	.size	VCTRL_ConfigMemInfo.isra.1, .-VCTRL_ConfigMemInfo.isra.1
	.align	2
	.type	VfmwProc_CloseModuleLowly, %function
VfmwProc_CloseModuleLowly:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r3, #0	@ *p_args_3(D),
	bne	.L134	@,
	ldr	ip, .L135	@ tmp115,
	mov	r2, r3	@, *p_args_3(D)
	ldr	r1, .L135+4	@,
	mov	r0, #32	@,
	ldr	ip, [ip]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r3, [ip, #1420]	@ *p_args_3(D), _6->stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L134:
	ldr	r1, .L135+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L136:
	.align	2
.L135:
	.word	.LANCHOR0
	.word	.LC39
	.word	.LC38
	.fnend
	.size	VfmwProc_CloseModuleLowly, .-VfmwProc_CloseModuleLowly
	.align	2
	.type	VfmwProc_OpenModuleLowly, %function
VfmwProc_OpenModuleLowly:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r2, #0	@ *p_args_3(D),
	bne	.L139	@,
	ldr	r3, .L140	@ tmp115,
	mov	ip, #1	@ tmp117,
	ldr	r1, .L140+4	@,
	mov	r0, #32	@,
	ldr	r3, [r3]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r3, #1420]	@ tmp117, _6->stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L139:
	ldr	r1, .L140+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L141:
	.align	2
.L140:
	.word	.LANCHOR0
	.word	.LC39
	.word	.LC38
	.fnend
	.size	VfmwProc_OpenModuleLowly, .-VfmwProc_OpenModuleLowly
	.align	2
	.type	VfmwProc_SaveYUV, %function
VfmwProc_SaveYUV:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #64
	sub	sp, sp, #64	@,,
	ldr	r5, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r5, #0	@ *p_args_3(D),
	bne	.L142	@,
	ldr	r4, .L149	@ tmp118,
	ldr	r6, [r4, #180]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r6, #0	@ vfmw_save_yuv_file,
	beq	.L148	@,
	ldr	r1, .L149+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #180]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	str	r5, [r4, #180]	@ *p_args_3(D), vfmw_save_yuv_file
.L142:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L148:
	ldr	ip, [r4, #184]	@ D.36690, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L149+8	@,
	add	r0, sp, #14	@ tmp139,,
	ldr	r2, .L149+12	@,
	str	ip, [sp]	@ D.36690,
	add	ip, ip, #1	@ D.36690, D.36690,
	str	ip, [r4, #184]	@ D.36690, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_yuv_file
	add	r0, sp, #14	@ tmp140,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #188]	@ vfmw_save_yuv_file, save_yuv_chan_num
	cmp	r0, #0	@ D.36691,
	str	r0, [r4, #180]	@ D.36691, vfmw_save_yuv_file
	beq	.L145	@,
	mov	r3, r6	@, vfmw_save_yuv_file
	add	r2, sp, #14	@ tmp141,,
	ldr	r1, .L149+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L142	@
.L145:
	add	r2, sp, #14	@ tmp142,,
	ldr	r1, .L149+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L142	@
.L150:
	.align	2
.L149:
	.word	.LANCHOR0
	.word	.LC43
	.word	.LANCHOR2
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.fnend
	.size	VfmwProc_SaveYUV, .-VfmwProc_SaveYUV
	.align	2
	.type	VfmwProc_SaveSeg, %function
VfmwProc_SaveSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #64
	sub	sp, sp, #64	@,,
	ldr	r5, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r5, #0	@ *p_args_3(D),
	bne	.L151	@,
	ldr	r4, .L158	@ tmp118,
	ldr	r6, [r4, #192]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r6, #0	@ vfmw_save_seg_file,
	beq	.L157	@,
	ldr	r1, .L158+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #192]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	str	r5, [r4, #192]	@ *p_args_3(D), vfmw_save_seg_file
.L151:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L157:
	ldr	ip, [r4, #196]	@ D.36702, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L158+8	@,
	add	r0, sp, #14	@ tmp139,,
	ldr	r2, .L158+12	@,
	str	ip, [sp]	@ D.36702,
	add	ip, ip, #1	@ D.36702, D.36702,
	str	ip, [r4, #196]	@ D.36702, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_seg_file
	add	r0, sp, #14	@ tmp140,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #200]	@ vfmw_save_seg_file, save_seg_chan_num
	cmp	r0, #0	@ D.36703,
	str	r0, [r4, #192]	@ D.36703, vfmw_save_seg_file
	beq	.L154	@,
	mov	r3, r6	@, vfmw_save_seg_file
	add	r2, sp, #14	@ tmp141,,
	ldr	r1, .L158+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L151	@
.L154:
	add	r2, sp, #14	@ tmp142,,
	ldr	r1, .L158+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L151	@
.L159:
	.align	2
.L158:
	.word	.LANCHOR0
	.word	.LC47
	.word	.LANCHOR2
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.fnend
	.size	VfmwProc_SaveSeg, .-VfmwProc_SaveSeg
	.align	2
	.type	VfmwProc_Savestream, %function
VfmwProc_Savestream:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #64
	sub	sp, sp, #64	@,,
	ldr	r5, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r5, #0	@ *p_args_3(D),
	bne	.L160	@,
	ldr	r4, .L167	@ tmp118,
	ldr	r6, [r4, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r6, #0	@ vfmw_save_str_file,
	beq	.L166	@,
	ldr	r1, .L167+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #204]	@, vfmw_save_str_file
	bl	klib_fclose	@
	str	r5, [r4, #204]	@ *p_args_3(D), vfmw_save_str_file
.L160:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L166:
	ldr	ip, [r4, #208]	@ D.36714, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L167+8	@,
	add	r0, sp, #14	@ tmp139,,
	ldr	r2, .L167+12	@,
	str	ip, [sp]	@ D.36714,
	add	ip, ip, #1	@ D.36714, D.36714,
	str	ip, [r4, #208]	@ D.36714, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_str_file
	add	r0, sp, #14	@ tmp140,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #212]	@ vfmw_save_str_file, save_str_chan_num
	cmp	r0, #0	@ D.36715,
	str	r0, [r4, #204]	@ D.36715, vfmw_save_str_file
	beq	.L163	@,
	mov	r3, r6	@, vfmw_save_str_file
	add	r2, sp, #14	@ tmp141,,
	ldr	r1, .L167+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L160	@
.L163:
	add	r2, sp, #14	@ tmp142,,
	ldr	r1, .L167+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L160	@
.L168:
	.align	2
.L167:
	.word	.LANCHOR0
	.word	.LC51
	.word	.LANCHOR2
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.fnend
	.size	VfmwProc_Savestream, .-VfmwProc_Savestream
	.align	2
	.type	VCTRL_StopVfmw.part.14, %function
VCTRL_StopVfmw.part.14:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L182	@ tmp122,
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L172	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.36730,
	bl	msleep	@
	b	.L173	@
.L181:
	bl	msleep	@
	subs	r4, r4, #1	@ D.36730, D.36730,
	beq	.L180	@,
.L173:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L181	@,
.L172:
	mov	r0, #0	@ ret,
.L171:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #36]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L180:
	mvn	r0, #0	@ ret,
	b	.L171	@
.L183:
	.align	2
.L182:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopVfmw.part.14, .-VCTRL_StopVfmw.part.14
	.align	2
	.type	VCTRL_StartVfmw.part.15, %function
VCTRL_StartVfmw.part.15:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L197	@ tmp122,
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L187	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.36740,
	bl	msleep	@
	b	.L188	@
.L196:
	bl	msleep	@
	subs	r4, r4, #1	@ D.36740, D.36740,
	beq	.L195	@,
.L188:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L196	@,
.L187:
	mov	r0, #0	@ ret,
.L186:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #36]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L195:
	mvn	r0, #0	@ ret,
	b	.L186	@
.L198:
	.align	2
.L197:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StartVfmw.part.15, .-VCTRL_StartVfmw.part.15
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, r0	@ pstSdecFunc, pstSdecFunc
	ldr	r0, [r0]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create,
	beq	.L209	@,
	ldr	r0, [r1, #4]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy,
	beq	.L210	@,
	ldr	r0, [r1, #8]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init,
	beq	.L211	@,
	ldr	r0, [r1, #12]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode,
	beq	.L212	@,
	ldr	r0, [r1, #16]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage,
	beq	.L213	@,
	ldr	r0, [r1, #20]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L214	@,
	ldr	r0, [r1, #24]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L215	@,
	mov	r2, #28	@,
	ldr	r0, .L216	@,
	bl	memcpy	@
	mov	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L215:
	ldr	r2, .L216+4	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L214:
	ldr	r2, .L216+12	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L213:
	ldr	r2, .L216+16	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L212:
	ldr	r2, .L216+20	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L211:
	ldr	r2, .L216+24	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L210:
	ldr	r2, .L216+28	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L209:
	ldr	r2, .L216+32	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36743,
	ldmfd	sp!, {r4, pc}	@
.L217:
	.align	2
.L216:
	.word	.LANCHOR0+216
	.word	.LC59
	.word	.LC53
	.word	.LC58
	.word	.LC57
	.word	.LC56
	.word	.LC55
	.word	.LC54
	.word	.LC52
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, #50	@ D.36779,
	mov	r6, r0	@ BeginTime,
	mov	r0, #0	@,
	mvn	r7, r6	@ D.36778, BeginTime
	bl	VDMDRV_PrepareSleep	@
	b	.L225	@
.L224:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36779, D.36779,
	beq	.L226	@,
.L225:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L226	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r6, r0	@ BeginTime, CurTime
	add	r5, r7, r0	@ WaitTime, D.36778, CurTime
	rsbls	r5, r6, r0	@ WaitTime, BeginTime, CurTime
	cmp	r5, #200	@ WaitTime,
	bls	.L224	@,
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r5	@, WaitTime
	ldr	r1, .L260	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36779, D.36779,
	bne	.L225	@,
.L226:
	ldr	r9, .L260+4	@ tmp154,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r9, #4]	@ D.36781, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.36781,
	beq	.L257	@,
	mov	r0, #0	@,
	blx	r3	@ D.36781
.L227:
	bl	SCDDRV_PrepareSleep	@
	mov	r4, #50	@ D.36779,
	bl	OSAL_GetTimeInMs	@
	mov	r7, r0	@ BeginTime,
	mvn	r8, r0	@ D.36778, BeginTime
	b	.L234	@
.L233:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36779, D.36779,
	beq	.L235	@,
.L234:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L235	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r7, r0	@ BeginTime, CurTime
	add	r5, r8, r0	@ WaitTime, D.36778, CurTime
	rsbls	r5, r7, r0	@ WaitTime, BeginTime, CurTime
	cmp	r5, #200	@ WaitTime,
	bls	.L233	@,
	bl	SCDDRV_ForceSleep	@
	mov	r2, r5	@, WaitTime
	ldr	r1, .L260+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36779, D.36779,
	bne	.L234	@,
.L235:
	ldr	r0, [r9, #12]	@ D.36783, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r0, #0	@ D.36783,
	beq	.L258	@,
	blx	r0	@ D.36783
.L236:
	bl	DNRDRV_PrepareSleep	@
	mov	r4, #50	@ D.36779,
	bl	OSAL_GetTimeInMs	@
	mov	r7, r0	@ BeginTime,
	mvn	r8, r0	@ D.36778, BeginTime
	b	.L243	@
.L242:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36779, D.36779,
	beq	.L244	@,
.L243:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L244	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r7, r0	@ BeginTime, CurTime
	add	r5, r8, r0	@ WaitTime, D.36778, CurTime
	rsbls	r5, r7, r0	@ WaitTime, BeginTime, CurTime
	cmp	r5, #200	@ WaitTime,
	bls	.L242	@,
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r5	@, WaitTime
	ldr	r1, .L260+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36779, D.36779,
	bne	.L243	@,
.L244:
	ldr	r3, .L260+16	@ tmp144,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L259	@,
.L238:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L260+20	@,
	cmp	r6, r0	@ BeginTime, CurTime
	rsbls	r2, r6, r0	@ D.36778, BeginTime, CurTime
	mvnhi	r6, r6	@ D.36778, BeginTime
	addhi	r2, r6, r0	@ D.36778, D.36778, CurTime
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L257:
	mov	r0, r3	@, D.36781
	movw	r2, #283	@,
	ldr	r1, .L260+24	@,
	bl	dprint_vfmw	@
	b	.L227	@
.L258:
	movw	r2, #309	@,
	ldr	r1, .L260+24	@,
	bl	dprint_vfmw	@
	b	.L236	@
.L259:
	mov	r2, #2	@ tmp150,
	str	r2, [r3, #36]	@ tmp150, s_VfmwCTrl.eTaskCommand
	bl	VCTRL_StopVfmw.part.14	@
	b	.L238	@
.L261:
	.align	2
.L260:
	.word	.LC60
	.word	g_vdm_hal_fun_ptr
	.word	.LC61
	.word	.LC62
	.word	.LANCHOR0
	.word	.LC63
	.word	.LC32
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.type	VfmwProc_TestSuspend, %function
VfmwProc_TestSuspend:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@, p_args
	ldr	r1, .L264	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Suspend	@
.L265:
	.align	2
.L264:
	.word	.LC64
	.fnend
	.size	VfmwProc_TestSuspend, .-VfmwProc_TestSuspend
	.align	2
	.global	VCTRL_Resume
	.type	VCTRL_Resume, %function
VCTRL_Resume:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SCDDRV_ExitSleep	@
	bl	DNRDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	subs	r4, r0, #0	@ D.36797,
	bne	.L267	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L274	@,
	bl	BPD_OpenHardware	@
	ldr	r3, .L275	@ tmp117,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	ldmnefd	sp!, {r4, pc}	@
	str	r2, [r3, #36]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw.part.15	@
.L274:
	bl	SCDDRV_GetSleepStage	@
	ldr	r1, .L275+4	@,
	mov	r2, r0	@,
	mov	r0, r4	@, D.36797
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L267:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	ldr	r1, .L275+8	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r2, r0	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L276:
	.align	2
.L275:
	.word	.LANCHOR0
	.word	.LC66
	.word	.LC65
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_Suspend	@
	mov	r1, #28	@,
	ldr	r0, .L279	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L280:
	.align	2
.L279:
	.word	.LANCHOR0+216
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.align	2
	.type	VfmwProc_TestResume, %function
VfmwProc_TestResume:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@, p_args
	ldr	r1, .L283	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L284:
	.align	2
.L283:
	.word	.LC64
	.fnend
	.size	VfmwProc_TestResume, .-VfmwProc_TestResume
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #12	@,
	ldr	r4, .L287	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	mvn	r3, #0	@ tmp112,
	str	r3, [r4, #4]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 4B]
	ldmfd	sp!, {r4, pc}	@
.L288:
	.align	2
.L287:
	.word	g_ChanCtx
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	VCTRL_Isr_1
	.type	VCTRL_Isr_1, %function
VCTRL_Isr_1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #1	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Isr_1, .-VCTRL_Isr_1
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bl	OSAL_GetTimeInMs	@
	ldr	r5, .L296	@ tmp120,
	ldr	r3, [r5, #244]	@ D.36812, LastEventTime
	cmp	r0, r3	@ CurTime, D.36812
	mov	r4, r0	@ CurTime,
	bls	.L292	@,
	rsb	r3, r3, r0	@ Period, D.36812, CurTime
	cmp	r3, #9	@ Period,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	b	.L293	@
.L292:
	str	r0, [r5, #244]	@ CurTime, LastEventTime
.L293:
	ldr	r0, .L296+4	@,
	bl	OSAL_GiveEvent	@
	str	r4, [r5, #244]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L297:
	.align	2
.L296:
	.word	.LANCHOR0
	.word	.LANCHOR0+248
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_SetCallBack
	.type	VCTRL_SetCallBack, %function
VCTRL_SetCallBack:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ event_report
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L307	@,
	cmp	r0, #0	@ eType,
	beq	.L302	@,
	cmp	r0, #1	@ eType,
	bne	.L308	@,
	ldr	r3, .L309	@ tmp117,
	mov	r0, #0	@ D.36815,
	str	r1, [r3, #152]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r4, pc}	@
.L308:
	mov	r3, r0	@, eType
	ldr	r2, .L309+4	@,
	ldr	r1, .L309+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36815,
	ldmfd	sp!, {r4, pc}	@
.L302:
	ldr	r3, .L309	@ tmp116,
	str	r1, [r3, #148]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmfd	sp!, {r4, pc}	@
.L307:
	mov	r0, r1	@, event_report
	ldr	r3, .L309+12	@,
	movw	r2, #715	@,
	ldr	r1, .L309+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36815,
	ldmfd	sp!, {r4, pc}	@
.L310:
	.align	2
.L309:
	.word	.LANCHOR0
	.word	.LANCHOR1+32
	.word	.LC9
	.word	.LC67
	.word	.LC5
	.fnend
	.size	VCTRL_SetCallBack, .-VCTRL_SetCallBack
	.align	2
	.global	VCTRL_StopVfmw
	.type	VCTRL_StopVfmw, %function
VCTRL_StopVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L313	@ tmp113,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L312	@,
	mov	r2, #2	@ tmp116,
	str	r2, [r3, #36]	@ tmp116, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StopVfmw.part.14	@
.L312:
	mvn	r0, #0	@,
	bx	lr	@
.L314:
	.align	2
.L313:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopVfmw, .-VCTRL_StopVfmw
	.align	2
	.global	VCTRL_StartVfmw
	.type	VCTRL_StartVfmw, %function
VCTRL_StartVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L317	@ tmp113,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L316	@,
	str	r2, [r3, #36]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StartVfmw.part.15	@
.L316:
	mvn	r0, #0	@,
	bx	lr	@
.L318:
	.align	2
.L317:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StartVfmw, .-VCTRL_StartVfmw
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r1, #0	@ pstStreamIntf, pstStreamIntf
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L324	@,
	ldr	r3, .L326	@ tmp118,
	ldr	r0, [r3, r0, asl #2]	@ D.36828, s_pstVfmwChan
	cmp	r0, #0	@ D.36828,
	beq	.L325	@,
	mov	r2, #12	@,
	add	r0, r0, #104	@, D.36828,
	bl	memcpy	@
	mov	r0, #0	@ D.36827,
	ldmfd	sp!, {r4, pc}	@
.L325:
	ldr	r3, .L326+4	@,
	movw	r2, #1151	@,
	ldr	r1, .L326+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36827,
	ldmfd	sp!, {r4, pc}	@
.L324:
	mov	r0, r3	@, pstStreamIntf
	movw	r2, #1150	@,
	ldr	r3, .L326+12	@,
	ldr	r1, .L326+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36827,
	ldmfd	sp!, {r4, pc}	@
.L327:
	.align	2
.L326:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC5
	.word	.LC68
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L331	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.36837, s_pstVfmwChan
	cmp	r0, #0	@ D.36837,
	addne	r0, r0, #104	@ D.36836, D.36837,
	bx	lr	@
.L332:
	.align	2
.L331:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r1, #0	@ pstFrameIntf, pstFrameIntf
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L338	@,
	ldr	r3, .L340	@ tmp118,
	ldr	r0, [r3, r0, asl #2]	@ D.36841, s_pstVfmwChan
	cmp	r0, #0	@ D.36841,
	beq	.L339	@,
	mov	r2, #12	@,
	add	r0, r0, #128	@, D.36841,
	bl	memcpy	@
	mov	r0, #0	@ D.36840,
	ldmfd	sp!, {r4, pc}	@
.L339:
	ldr	r3, .L340+4	@,
	movw	r2, #1176	@,
	ldr	r1, .L340+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36840,
	ldmfd	sp!, {r4, pc}	@
.L338:
	mov	r0, r3	@, pstFrameIntf
	movw	r2, #1175	@,
	ldr	r3, .L340+12	@,
	ldr	r1, .L340+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36840,
	ldmfd	sp!, {r4, pc}	@
.L341:
	.align	2
.L340:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC5
	.word	.LC68
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L345	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.36849, s_pstVfmwChan
	cmp	r0, #0	@ D.36849,
	addne	r0, r0, #128	@ D.36848, D.36849,
	bx	lr	@
.L346:
	.align	2
.L345:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L353	@,
	ldr	r3, .L356	@ tmp120,
	ldr	r3, [r3]	@ D.36853, s_pstVfmwChan
	cmp	r3, #0	@ D.36853,
	beq	.L354	@,
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L355	@,
	add	r0, r3, #74752	@, D.36853,
	add	r0, r0, #800	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L355:
	ldr	r3, .L356+4	@,
	mov	r2, #1216	@,
	ldr	r1, .L356+8	@,
	bl	dprint_vfmw	@
.L349:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L353:
	ldr	r3, .L356+12	@,
	movw	r2, #1214	@,
	ldr	r1, .L356+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L349	@
.L354:
	ldr	r3, .L356+16	@,
	movw	r2, #1215	@,
	ldr	r1, .L356+8	@,
	bl	dprint_vfmw	@
	b	.L349	@
.L357:
	.align	2
.L356:
	.word	.LANCHOR0
	.word	.LC71
	.word	.LC5
	.word	.LC69
	.word	.LC70
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L365	@,
	cmp	r1, #0	@ pArgs,
	beq	.L366	@,
	ldr	r3, .L368	@ tmp123,
	ldr	r5, [r3]	@ D.36862, s_pstVfmwChan
	cmp	r5, #0	@ D.36862,
	beq	.L367	@,
	add	r0, r5, #1584	@, D.36862,
	mov	r2, #8	@,
	add	r0, r0, #12	@,,
	bl	memcpy	@
	ldr	r3, [r5, #1596]	@ _8->stSynExtraData.stDisParams.s32Mode, _8->stSynExtraData.stDisParams.s32Mode
	mov	r0, r4	@ D.36861, ChanID
	sub	r3, r3, #1	@ D.36865, _8->stSynExtraData.stDisParams.s32Mode,
	cmp	r3, #1	@ D.36865,
	strhi	r4, [r5, #1596]	@ ChanID, _8->stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L365:
	ldr	r3, .L368+4	@,
	movw	r2, #1228	@,
	ldr	r1, .L368+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36861,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L367:
	ldr	r3, .L368+12	@,
	movw	r2, #1230	@,
	ldr	r1, .L368+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36861,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L366:
	ldr	r3, .L368+16	@,
	movw	r2, #1229	@,
	ldr	r1, .L368+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36861,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L369:
	.align	2
.L368:
	.word	.LANCHOR0
	.word	.LC69
	.word	.LC5
	.word	.LC6
	.word	.LC72
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_GetDispStateWithDNR
	.type	VCTRL_GetDispStateWithDNR, %function
VCTRL_GetDispStateWithDNR:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	mov	r4, r1	@ pstChanState, pstChanState
	mov	r1, sp	@,
	bl	DNR_GetState	@
	add	r1, sp, #68	@,,
	ldmia	r1, {r1, r2, r3}	@,,,
	add	r3, r3, r2	@ D.36872, DnrChanState.read_out_frame_num, DnrChanState.new_frame_num
	str	r3, [r4, #88]	@ D.36872, pstChanState_8(D)->wait_disp_frame_num
	str	r1, [r4, #96]	@ DnrChanState.total_frame_num, pstChanState_8(D)->total_disp_frame_num
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetDispStateWithDNR, .-VCTRL_GetDispStateWithDNR
	.align	2
	.global	VCTRL_GetDispState
	.type	VCTRL_GetDispState, %function
VCTRL_GetDispState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L382	@ tmp162,
	movw	r3, #1546	@ tmp166,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r0, [ip, r0, asl #2]	@ D.36886, s_pstVfmwChan
	add	r5, r0, #180224	@ tmp179, D.36886,
	ldrsb	lr, [r5, r3]	@ D.36884, _32->FspInst.s32DecFsNum
	cmp	lr, #0	@ D.36884,
	ble	.L378	@,
	movw	r3, #12950	@ ivtmp.500,
	mov	r4, #0	@ s32DecodedFrameNum,
	movt	r3, 3	@ ivtmp.500,
	add	r3, r0, r3	@ ivtmp.500, D.36886, ivtmp.500
	mov	r0, r4	@ i, s32DecodedFrameNum
.L375:
	ldrsb	ip, [r3]	@ MEM[base: _39, offset: 0B], MEM[base: _39, offset: 0B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.500, ivtmp.500,
	cmp	ip, #3	@ MEM[base: _39, offset: 0B],
	addeq	r4, r4, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r0, lr	@ i, D.36884
	bne	.L375	@,
.L373:
	str	r4, [r1, #88]	@ D.36882, pstChanState_15(D)->wait_disp_frame_num
	ldrb	r3, [r5, #1546]	@ zero_extendqisi2	@ D.36883, _32->FspInst.s32DecFsNum
	cmp	r3, #0	@ D.36883,
	moveq	r3, #4	@ D.36881,
	mvnne	r0, r2	@ D.36884, RefNum
	sxtabne	r3, r0, r3	@ D.36881, D.36884, D.36883
	str	r3, [r1, #96]	@ D.36881, pstChanState_15(D)->total_disp_frame_num
	ldrb	r3, [r5, #1546]	@ zero_extendqisi2	@ D.36883, _32->FspInst.s32DecFsNum
	sxtb	r3, r3	@ D.36883, D.36883
	cmp	r3, #0	@ D.36883,
	ldmlefd	sp!, {r4, r5, pc}	@
	add	r2, r2, #1	@ D.36884, RefNum,
	cmp	r3, r2	@ D.36883, D.36884
	movle	r3, #0	@ tmp178,
	strle	r3, [r1, #96]	@ tmp178, pstChanState_15(D)->total_disp_frame_num
	ldmfd	sp!, {r4, r5, pc}	@
.L378:
	mov	r4, #0	@ D.36882,
	b	.L373	@
.L383:
	.align	2
.L382:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetDispState, .-VCTRL_GetDispState
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L387	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.36891, s_pstVfmwChan
	cmp	r0, #0	@ D.36891,
	addne	r0, r0, #116	@ D.36890, D.36891,
	bx	lr	@
.L388:
	.align	2
.L387:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_PartitionMemForStdUser
	.type	VCTRL_PartitionMemForStdUser, %function
VCTRL_PartitionMemForStdUser:
	.fnstart
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #31	@ MaxHeight,
	cmpgt	r1, #31	@, MaxWidth,
	ldr	r4, .L407	@ tmp170,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r6, r2	@ MaxHeight, MaxHeight
	mov	r8, r1	@ MaxWidth, MaxWidth
	movle	r2, #1	@ tmp177,
	movgt	r2, #0	@ tmp177,
	mov	r9, r0	@ ChanID, ChanID
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ldr	r10, [sp, #80]	@ MemSize, MemSize
	ble	.L403	@,
	cmp	r10, #0	@ MemSize,
	cmpne	r3, #0	@, MemAddr,
	mov	fp, r3	@ MemAddr, MemAddr
	moveq	r7, #1	@ tmp185,
	movne	r7, #0	@ tmp185,
	beq	.L404	@,
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp219,,
	bl	__memzero	@
	add	r1, sp, #4	@ tmp220,,
	mov	r0, r9	@, ChanID
	mov	r3, #1	@ tmp198,
	str	r6, [sp, #20]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	str	r6, [sp, #36]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	r7, [sp, #4]	@ tmp185, FspInstCfg.s32DispLoopEnable
	strb	r7, [sp, #6]	@ tmp185, FspInstCfg.s32RprEnable
	str	r8, [sp, #16]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	str	r8, [sp, #32]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	strb	r7, [sp, #9]	@ tmp185, FspInstCfg.s32ExpectedDecFsNum
	strb	r7, [sp, #11]	@ tmp185, FspInstCfg.s32ExpectedDispFsNum
	strb	r7, [sp, #12]	@ tmp185, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [sp, #8]	@ tmp198, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.36908,
	bne	.L393	@,
	mov	r2, r10	@, MemSize
	mov	r1, fp	@, MemAddr
	mov	r3, sp	@,
	mov	r0, r9	@, ChanID
	bl	FSP_PartitionFsMemory	@
	subs	r7, r0, #0	@ Ret,
	bne	.L405	@,
	mov	r0, r9	@, ChanID
	add	r1, r4, #260	@, tmp170,
	bl	FSP_GetInstInfo	@
	movw	r3, #261	@ tmp207,
	ldrsb	r3, [r4, r3]	@ D.36911, FspInstInfo.s32DecFsNum
	cmp	r3, #16	@ D.36911,
	movge	r3, #16	@ D.36911,
	cmp	r3, #2	@ D.36911,
	str	r3, [r5, #820]	@ D.36911, pstChan_8->s32UsrdecFrameNum
	ble	.L406	@,
	ldr	r3, [r4, #3596]	@ D.36911, FspInstInfo.s32DecFsSize
	mov	r1, #64	@,
	add	r0, r5, #752	@, pstChan,
	str	r3, [r5, #816]	@ D.36911, pstChan_8->s32UsrdecFrameSize
	bl	__memzero	@
	mov	r1, #64	@,
	add	r0, r5, #688	@, pstChan,
	bl	__memzero	@
	ldr	lr, [r5, #820]	@ D.36911, pstChan_8->s32UsrdecFrameNum
	cmp	lr, #0	@ D.36911,
	ble	.L391	@,
	add	r3, r4, #260	@ ivtmp.511, tmp170,
	add	r1, r5, #748	@ ivtmp.513, pstChan,
	mov	r2, r6	@ i, D.36908
.L398:
	ldr	ip, [r3, #20]	@ D.36911, MEM[base: _66, offset: 20B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, lr	@ i, D.36911
	add	r3, r3, #52	@ ivtmp.511, ivtmp.511,
	str	ip, [r1, #4]!	@ D.36911, MEM[base: _67, offset: 0B]
	bne	.L398	@,
.L391:
	mov	r0, r6	@, D.36908
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L404:
	mov	r0, r2	@, tmp177
	ldr	r1, .L407+4	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.36908,
	b	.L391	@
.L393:
	mov	r0, r7	@, tmp185
	ldr	r1, .L407+8	@,
	bl	dprint_vfmw	@
.L402:
	mvn	r6, #0	@ D.36908,
	mov	r0, r6	@, D.36908
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L405:
	mov	r0, r6	@, D.36908
	ldr	r1, .L407+12	@,
	bl	dprint_vfmw	@
	b	.L402	@
.L406:
	mov	r0, r7	@, Ret
	movw	r3, #1403	@,
	ldr	r2, .L407+16	@,
	ldr	r1, .L407+20	@,
	bl	dprint_vfmw	@
	b	.L402	@
.L403:
	mov	r3, r6	@, MaxHeight
	mov	r2, r1	@, MaxWidth
	mov	r0, #0	@,
	ldr	r1, .L407+24	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.36908,
	b	.L391	@
.L408:
	.align	2
.L407:
	.word	.LANCHOR0
	.word	.LC74
	.word	.LC77
	.word	.LC75
	.word	.LANCHOR1+52
	.word	.LC76
	.word	.LC73
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	DNR_DisableChan	@
	mov	r0, r4	@, ChanID
	bl	FSP_DisableInstance	@
	mov	r0, r4	@, ChanID
	bl	CloseUsdPool_WithMem	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_UnInstallChan, .-VCTRL_UnInstallChan
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstChan, pstChan
	ldr	r3, [r1, #64]	@ pstChan_7(D)->s32SelfAllocChanMem_vdh, pstChan_7(D)->s32SelfAllocChanMem_vdh
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_vdh,
	beq	.L441	@,
.L412:
	ldr	r3, [r4, #28]	@ pstChan_7(D)->stChanMem_vdh.Length, pstChan_7(D)->stChanMem_vdh.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_vdh.Length,
	bne	.L442	@,
.L413:
	ldr	r2, [r4, #44]	@ D.36923, pstChan_7(D)->stChanMem_scd.Length
	cmp	r2, #0	@ D.36923,
	bne	.L443	@,
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L444	@,
.L416:
	ldr	r2, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r1, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #72]	@ pstChan_7(D)->s32SelfAllocChanMem_ctx, pstChan_7(D)->s32SelfAllocChanMem_ctx
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_ctx,
	beq	.L445	@,
.L419:
	ldr	r0, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L420:
	ldr	r2, [r4, #60]	@, pstChan_7(D)->stChanMem_ctx.Length
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	ldr	r0, [r4, #56]	@, pstChan_7(D)->stChanMem_ctx.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ pstChan_7(D)->s32SelfAllocChanMem_pmv, pstChan_7(D)->s32SelfAllocChanMem_pmv
	ldr	r0, [r4, #100]	@ D.36928, pstChan_7(D)->stChanMem_pmv.PhyAddr
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_pmv,
	beq	.L446	@,
.L422:
	ldr	r2, [r4, #104]	@, pstChan_7(D)->stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L442:
	ldrsb	r3, [r4, #16]	@ pstChan_7(D)->stChanMem_vdh.IsCached, pstChan_7(D)->stChanMem_vdh.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_vdh.IsCached,
	bne	.L413	@,
	ldr	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	mov	r3, #0	@ tmp162,
	strb	r3, [r4, #16]	@ tmp162, pstChan_7(D)->stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	b	.L413	@
.L445:
	ldr	r0, [r4, #56]	@ D.36923, pstChan_7(D)->stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.36923,
	beq	.L419	@,
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L420	@
.L446:
	cmp	r0, #0	@ D.36928,
	beq	.L422	@,
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #100]	@ D.36928, pstChan_7(D)->stChanMem_pmv.PhyAddr
	b	.L422	@
.L443:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L447	@,
.L415:
	ldr	r3, [r4, #44]	@ pstChan_7(D)->stChanMem_scd.Length, pstChan_7(D)->stChanMem_scd.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_scd.Length,
	beq	.L416	@,
	ldrsb	r3, [r4, #32]	@ pstChan_7(D)->stChanMem_scd.IsCached, pstChan_7(D)->stChanMem_scd.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_scd.IsCached,
	bne	.L416	@,
	ldr	r0, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, pstChan_7(D)->stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	ldr	r3, .L448	@ tmp173,
	mov	r2, #0	@ tmp176,
	strb	r2, [r4, #32]	@ tmp176, pstChan_7(D)->stChanMem_scd.IsCached
	add	r5, r3, r5, lsl #2	@ tmp174, tmp173, ChanID,
	str	r0, [r4, #36]	@ D.36927, pstChan_7(D)->stChanMem_scd.VirAddr
	str	r0, [r5, #176]	@ D.36927, g_scd_vir
	b	.L416	@
.L441:
	ldr	r0, [r1, #24]	@ D.36923, pstChan_7(D)->stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.36923,
	beq	.L412	@,
	ldr	r1, [r1, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L413	@
.L447:
	ldr	r0, [r4, #40]	@ D.36923, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.36923,
	beq	.L415	@,
.L423:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L416	@
.L444:
	ldr	r0, [r4, #40]	@ D.36923, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.36923,
	beq	.L416	@,
	b	.L423	@
.L449:
	.align	2
.L448:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_GetChanCtxSize
	.type	VCTRL_GetChanCtxSize, %function
VCTRL_GetChanCtxSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #40368	@ tmp112,
	movt	r3, 7	@ tmp112,
	str	r3, [r1]	@ tmp112, *s32ChanCtxSize_2(D)
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanCtxSize, .-VCTRL_GetChanCtxSize
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L465	@,
	ldr	r5, .L468	@ tmp148,
	ldr	r3, [r5]	@ D.36937, s_pstVfmwChan
	cmp	r3, #0	@ D.36937,
	beq	.L466	@,
	ldr	r4, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r4, #1	@ _6->s32IsOpen,
	bne	.L467	@,
	ldr	r3, [r3, #880]	@ _6->eVidStd, _6->eVidStd
	cmp	r3, #19	@ _6->eVidStd,
	bne	.L456	@,
	ldr	r3, .L468+4	@,
	movw	r2, #2699	@,
	ldr	r1, .L468+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36936,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L456:
	bl	SM_Start	@
	ldr	r3, [r5]	@ D.36937, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _14->s32Priority, _14->s32Priority
	str	r4, [r3, #8]	@ _6->s32IsOpen, _14->s32IsRun
	cmp	r2, #0	@ _14->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _14->s32StopSyntax
	bne	.L457	@,
	cmp	r3, #0	@ D.36937,
	str	r4, [r3, #12]	@ _6->s32IsOpen, _14->s32Priority
	ldr	r0, .L468+12	@,
	ldrne	r3, .L468+16	@ tmp141,
	ldreq	r2, .L468+16	@ tmp137,
	streq	r3, [r5, #3600]	@ D.36937, PrioArray
	strne	r4, [r3]	@ _6->s32IsOpen, g_ChanCtx.PriorByChanId
	streq	r3, [r2]	@ D.36937, g_ChanCtx.PriorByChanId
	strne	r4, [r5, #3600]	@ _6->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5]	@ D.36937, s_pstVfmwChan
.L457:
	ldr	r3, [r3, #1580]	@ _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L460	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L460:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36936,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L467:
	ldr	r3, .L468+20	@,
	movw	r2, #2698	@,
	ldr	r1, .L468+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36936,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L465:
	ldr	r3, .L468+24	@,
	movw	r2, #2696	@,
	ldr	r1, .L468+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36936,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L466:
	ldr	r3, .L468+28	@,
	movw	r2, #2697	@,
	ldr	r1, .L468+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36936,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L469:
	.align	2
.L468:
	.word	.LANCHOR0
	.word	.LC79
	.word	.LC5
	.word	.LANCHOR0+3600
	.word	g_ChanCtx
	.word	.LC78
	.word	.LC69
	.word	.LC70
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.type	VfmwProc_TestStartChan, %function
VfmwProc_TestStartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0]	@ dat, *p_args_2(D)
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L472	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L473:
	.align	2
.L472:
	.word	.LC80
	.fnend
	.size	VfmwProc_TestStartChan, .-VfmwProc_TestStartChan
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L481	@,
	ldr	r5, .L484	@ tmp119,
	ldr	r3, [r5]	@ D.36952, s_pstVfmwChan
	cmp	r3, #0	@ D.36952,
	beq	.L482	@,
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L483	@,
	str	r2, [r3, #16]	@ _6->s32IsOpen, _6->s32StopSyntax
	str	r1, [r3, #8]	@ ChanID, _6->s32IsRun
	bl	SM_Stop	@
	subs	r4, r0, #0	@ s32Ret,
	bne	.L479	@,
	mov	r1, r4	@, s32Ret
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, s32Ret
	bl	DNR_StopChan	@
	mov	r0, r4	@, s32Ret
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r4	@ D.36951, s32Ret
	str	r4, [r3, #16]	@ s32Ret, _17->s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L483:
	ldr	r3, .L484+4	@,
	movw	r2, #2825	@,
	ldr	r1, .L484+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36951,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L479:
	mvn	r0, #0	@ D.36951,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L481:
	ldr	r3, .L484+12	@,
	movw	r2, #2823	@,
	ldr	r1, .L484+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36951,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L482:
	ldr	r3, .L484+16	@,
	movw	r2, #2824	@,
	ldr	r1, .L484+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36951,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L485:
	.align	2
.L484:
	.word	.LANCHOR0
	.word	.LC82
	.word	.LC5
	.word	.LC69
	.word	.LC81
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.type	VfmwProc_TestStopChan, %function
VfmwProc_TestStopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0]	@ dat, *p_args_2(D)
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L488	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L489:
	.align	2
.L488:
	.word	.LC83
	.fnend
	.size	VfmwProc_TestStopChan, .-VfmwProc_TestStopChan
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L496	@,
	cmp	r1, #0	@ pstCfg,
	mov	r3, r1	@ pstCfg, pstCfg
	beq	.L497	@,
	ldr	r2, .L499	@ tmp120,
	ldr	r1, [r2]	@ D.36966, s_pstVfmwChan
	cmp	r1, #0	@ D.36966,
	beq	.L498	@,
	add	r1, r1, #32	@, D.36966,
	mov	r0, r3	@, pstCfg
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.36965, ChanID
	ldmfd	sp!, {r4, pc}	@
.L496:
	ldr	r3, .L499+4	@,
	movw	r2, #2874	@,
	ldr	r1, .L499+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36965,
	ldmfd	sp!, {r4, pc}	@
.L498:
	ldr	r3, .L499+12	@,
	movw	r2, #2876	@,
	ldr	r1, .L499+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36965,
	ldmfd	sp!, {r4, pc}	@
.L497:
	ldr	r3, .L499+16	@,
	movw	r2, #2875	@,
	ldr	r1, .L499+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36965,
	ldmfd	sp!, {r4, pc}	@
.L500:
	.align	2
.L499:
	.word	.LANCHOR0
	.word	.LC69
	.word	.LC5
	.word	.LC6
	.word	.LC84
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	ip, #0	@ tmp128,
	ldr	r5, .L512	@ tmp145,
	ldr	r2, [r5, r0, asl #2]	@ D.36979, s_pstVfmwChan
	ldr	r3, [r2, #1624]	@ eOldDecCore, _7->eDecCore
	str	ip, [r2, #1624]	@ tmp128, _7->eDecCore
	cmp	r3, ip	@ eOldDecCore,
	beq	.L505	@,
	sub	r3, r3, #1	@ D.36980, eOldDecCore,
	mov	r6, r1	@ pstSoftDecMem, pstSoftDecMem
	cmp	r3, #4	@ D.36980,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L504	@,
	ldr	r3, [r5, #220]	@ D.36981, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.36981,
	beq	.L504	@,
	add	r0, r2, #217088	@, D.36979,
	add	r0, r0, #432	@,,
	blx	r3	@ D.36981
.L504:
	ldr	r2, [r5, r4, asl #2]	@ D.36979, s_pstVfmwChan
	ldr	r1, .L512	@ tmp133,
	ldr	r3, [r2, #1624]	@ _15->eDecCore, _15->eDecCore
	sub	r3, r3, #1	@ D.36980, _15->eDecCore,
	cmp	r3, #4	@ D.36980,
	bhi	.L505	@,
	ldr	r3, [r1, #216]	@ D.36985, g_SdecFunc.pfun_iMediaSoftDEC_Create
	add	r0, r2, #217088	@ tmp137, D.36979,
	ldr	r1, [r2, #24]	@ _15->eChanCapLevel, _15->eChanCapLevel
	cmp	r3, #0	@ D.36985,
	str	r1, [r0, #444]	@ _15->eChanCapLevel, _15->stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	beq	.L507	@,
	ldr	r2, [r2, #880]	@, _15->eVidStd
	mov	r1, r6	@, pstSoftDecMem
	add	r0, r0, #432	@, tmp137,
	blx	r3	@ D.36985
	cmp	r0, #0	@,
	bne	.L507	@,
.L505:
	mov	r0, #0	@ D.36978,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L507:
	ldr	r1, .L512+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36978,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L513:
	.align	2
.L512:
	.word	.LANCHOR0
	.word	.LC85
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.global	VCTRL_CheckCommonParameter
	.type	VCTRL_CheckCommonParameter, %function
VCTRL_CheckCommonParameter:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L528	@ tmp143,
	ldr	r2, [r1]	@ pstCfg_6(D)->eVidStd, pstCfg_6(D)->eVidStd
	ldr	r3, [r3, r0, asl #2]	@ D.36992, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ _4->stChanCfg.eVidStd, _4->stChanCfg.eVidStd
	cmp	r0, r2	@ _4->stChanCfg.eVidStd, pstCfg_6(D)->eVidStd
	bne	.L527	@,
	ldr	r0, [r3, #48]	@ _4->stChanCfg.s32ChanErrThr, _4->stChanCfg.s32ChanErrThr
	ldr	r2, [r1, #16]	@ pstCfg_6(D)->s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	bne	.L527	@,
	ldr	r0, [r3, #44]	@ _4->stChanCfg.s32ChanPriority, _4->stChanCfg.s32ChanPriority
	ldr	r2, [r1, #12]	@ pstCfg_6(D)->s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	cmp	r0, r2	@ _4->stChanCfg.s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	bne	.L527	@,
	ldr	r0, [r3, #52]	@ _4->stChanCfg.s32ChanStrmOFThr, _4->stChanCfg.s32ChanStrmOFThr
	ldr	r2, [r1, #20]	@ pstCfg_6(D)->s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	bne	.L527	@,
	ldr	r0, [r3, #56]	@ _4->stChanCfg.s32DecMode, _4->stChanCfg.s32DecMode
	ldr	r2, [r1, #24]	@ pstCfg_6(D)->s32DecMode, pstCfg_6(D)->s32DecMode
	cmp	r0, r2	@ _4->stChanCfg.s32DecMode, pstCfg_6(D)->s32DecMode
	bne	.L527	@,
	ldr	r0, [r3, #60]	@ _4->stChanCfg.s32DecOrderOutput, _4->stChanCfg.s32DecOrderOutput
	ldr	r2, [r1, #28]	@ pstCfg_6(D)->s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	cmp	r0, r2	@ _4->stChanCfg.s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	bne	.L527	@,
	ldr	r0, [r3, #68]	@ _4->stChanCfg.s32DnrDispOutEnable, _4->stChanCfg.s32DnrDispOutEnable
	ldr	r2, [r1, #36]	@ pstCfg_6(D)->s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	bne	.L527	@,
	ldr	r0, [r3, #64]	@ _4->stChanCfg.s32DnrTfEnable, _4->stChanCfg.s32DnrTfEnable
	ldr	r2, [r1, #32]	@ pstCfg_6(D)->s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	bne	.L527	@,
	ldr	r0, [r3, #76]	@ _4->stChanCfg.s32VcmpEn, _4->stChanCfg.s32VcmpEn
	ldr	r2, [r1, #44]	@ pstCfg_6(D)->s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	bne	.L527	@,
	ldr	r0, [r3, #88]	@ _4->stChanCfg.s32VcmpWmEndLine, _4->stChanCfg.s32VcmpWmEndLine
	ldr	r2, [r1, #56]	@ pstCfg_6(D)->s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	bne	.L527	@,
	ldr	r0, [r3, #84]	@ _4->stChanCfg.s32VcmpWmStartLine, _4->stChanCfg.s32VcmpWmStartLine
	ldr	r2, [r1, #52]	@ pstCfg_6(D)->s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	bne	.L527	@,
	ldr	r0, [r3, #80]	@ _4->stChanCfg.s32WmEn, _4->stChanCfg.s32WmEn
	ldr	r2, [r1, #48]	@ pstCfg_6(D)->s32WmEn, pstCfg_6(D)->s32WmEn
	cmp	r0, r2	@ _4->stChanCfg.s32WmEn, pstCfg_6(D)->s32WmEn
	bne	.L527	@,
	ldr	r3, [r3, #92]	@ _4->stChanCfg.s32SupportAllP, _4->stChanCfg.s32SupportAllP
	ldr	r0, [r1, #60]	@ pstCfg_6(D)->s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	subs	r0, r3, r0	@ D.36991, _4->stChanCfg.s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	mvnne	r0, #0	@ D.36991,
	bx	lr	@
.L527:
	mvn	r0, #0	@ D.36991,
	bx	lr	@
.L529:
	.align	2
.L528:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_CheckCommonParameter, .-VCTRL_CheckCommonParameter
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L538	@ tmp129,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2, r0, asl #2]	@ D.36999, s_pstVfmwChan
	ldr	r2, [r5, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #19	@ _4->eVidStd,
	beq	.L535	@,
	mov	r4, r1	@ pstCfg, pstCfg
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@ D.36998
	bne	.L535	@,
	ldr	r3, [r5, #32]	@ D.37001, _4->stChanCfg.eVidStd
	cmp	r3, #1	@ D.37001,
	beq	.L537	@,
	sub	r3, r3, #10	@ D.37002, D.37001,
	cmp	r3, #2	@ D.37002,
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #36]	@ _4->stChanCfg.StdExt.Vp6Ext.bReversed, _4->stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r4, #4]	@ pstCfg_6(D)->StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	subs	r0, r3, r0	@ D.36998, _4->stChanCfg.StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	mvnne	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L537:
	ldr	r2, [r5, #36]	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r3, [r4, #4]	@ pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, r3	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	bne	.L535	@,
	ldr	r3, [r5, #40]	@ _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r0, [r4, #8]	@ pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	subs	r0, r3, r0	@ D.36998, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	mvnne	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L535:
	mvn	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L539:
	.align	2
.L538:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L556	@ tmp136,
	ldr	r3, .L556+4	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	ip, [r2]	@ D.37007, g_chipID
	ldr	r3, [r3, r0, asl #2]	@ D.37006, s_pstVfmwChan
	cmp	ip, #16	@ D.37007,
	ldr	lr, [r3, #1456]	@ ChanMaxWidth, _5->stSynExtraData.stChanOption.s32MaxWidth
	ldr	r4, [r3, #1460]	@ ChanMaxHeight, _5->stSynExtraData.stChanOption.s32MaxHeight
	bhi	.L541	@,
	mov	r2, #1	@ tmp137,
	movw	r0, #36832	@ tmp138,
	mov	r3, r2, asl ip	@ D.37009, tmp137,
	bfi	r0, r2, #16, #16	@ tmp138, tmp137,,
	ands	r0, r3, r0	@ D.37009, D.37009, tmp138
	bne	.L542	@,
	tst	r3, #31	@ D.37009,
	beq	.L541	@,
	ldr	r3, .L556+8	@ tmp141,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	lr, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L543	@,
	ldr	r3, .L556+12	@ tmp143,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L544	@,
.L543:
	ldr	r3, [r1]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	bne	.L554	@,
.L548:
	mov	r0, #0	@ ret,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L542:
	ldr	r3, .L556+8	@ tmp147,
	ldr	r2, [r3]	@ D.37007, g_ChipMaxWidth
	cmp	lr, r2	@ ChanMaxWidth, D.37007
	bgt	.L545	@,
	ldr	r3, .L556+12	@ tmp148,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L548	@,
.L545:
	ldr	r0, [r1]	@ D.37007, pstCfg_11(D)->eVidStd
	cmp	r0, #18	@ D.37007,
	cmpne	r0, #0	@, D.37007,
	bic	r0, r0, #2	@ D.37007, D.37007,
	movne	r3, #1	@ tmp154,
	moveq	r3, #0	@ tmp154,
	cmp	r0, #13	@ D.37007,
	moveq	r0, #0	@, tmp161
	andne	r0, r3, #1	@,, tmp161, tmp154
	cmp	r0, #0	@ tmp161,
	bne	.L555	@,
.L544:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L541:
	mov	r2, ip	@, D.37007
	ldr	r1, .L556+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L544	@
.L554:
	mov	r2, ip	@, D.37007
	ldr	r1, .L556+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L544	@
.L555:
	ldr	r3, .L556+12	@ tmp162,
	mov	r0, #0	@,
	str	ip, [sp]	@ D.37007,
	ldr	r1, .L556+24	@,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L544	@
.L557:
	.align	2
.L556:
	.word	g_chipID
	.word	.LANCHOR0
	.word	g_ChipMaxWidth
	.word	g_ChipMaxHeight
	.word	.LC88
	.word	.LC86
	.word	.LC87
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L564	@ tmp122,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ D.37017, s_pstVfmwChan
	cmp	r3, #0	@ D.37017,
	beq	.L563	@,
	ldr	r3, [r3, #880]	@ D.37018, _5->eVidStd
	cmp	r3, #4	@ D.37018,
	cmpne	r3, #14	@, D.37018,
	beq	.L561	@,
	bl	SM_SeekPts	@
	adds	r0, r0, #0	@ D.37019,,
	movne	r0, #1	@ D.37019,
	rsb	r0, r0, #0	@ D.37016, D.37019
	ldmfd	sp!, {r4, pc}	@
.L561:
	mvn	r0, #0	@ D.37016,
	ldmfd	sp!, {r4, pc}	@
.L563:
	mov	r0, r3	@, D.37017
	movw	r2, #3659	@,
	ldr	r3, .L564+4	@,
	ldr	r1, .L564+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37016,
	ldmfd	sp!, {r4, pc}	@
.L565:
	.align	2
.L564:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC5
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_LoadDspCode
	.type	VCTRL_LoadDspCode, %function
VCTRL_LoadDspCode:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	add	r0, sp, #8	@ tmp165,,
	bl	__memzero	@
	add	r1, sp, #8	@ tmp166,,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	subs	r2, r0, #0	@ ret,
	bne	.L579	@,
	ldr	r4, [sp, #8]	@ D.37023, stCfgInfo.eVidStd
	ldr	r6, .L581	@ tmp129,
	cmp	r4, #0	@ D.37023,
	beq	.L580	@,
	sub	r3, r4, #6	@ D.37024, D.37023,
	ldr	r1, [r6, #3604]	@ D.37025, g_DSPState
	clz	r3, r3	@ D.37024, D.37024
	mov	r3, r3, lsr #5	@ D.37024, D.37024,
	cmp	r1, #1	@ D.37025,
	movne	ip, #0	@, tmp154
	andeq	ip, r3, #1	@,, tmp154, D.37024
	cmp	ip, #0	@ tmp154,
	bne	.L571	@,
	cmp	r1, #0	@ D.37025,
	movne	r3, #0	@, tmp164
	andeq	r3, r3, #1	@,, tmp164, D.37024
	cmp	r3, #0	@ tmp164,
	bne	.L574	@,
	mov	r4, r3	@ D.37023, tmp164
.L576:
	mov	r0, r4	@, D.37023
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L580:
	ldr	r2, [sp, #48]	@ ScdLowdlyEnable, stCfgInfo.s32LowdlyEnable
	ldr	r1, [r6, #3604]	@ D.37025, g_DSPState
	sub	r3, r2, #1	@ D.37024, ScdLowdlyEnable,
	clz	r3, r3	@ D.37024, D.37024
	cmp	r1, #2	@ D.37025,
	cmpeq	r2, #1	@, ScdLowdlyEnable,
	mov	r3, r3, lsr #5	@ D.37024, D.37024,
	beq	.L571	@,
	cmp	r1, #0	@ D.37025,
	movne	r3, #0	@, tmp159
	andeq	r3, r3, #1	@,, tmp159, D.37024
	cmp	r3, #0	@ tmp159,
	beq	.L576	@,
	bl	WriteHexFile	@
	add	r5, r6, r5, lsl #2	@ tmp139, tmp129, ChanID,
	mov	r3, #1	@ tmp141,
	mov	r0, r4	@, D.37023
	str	r3, [r5, #3604]	@ tmp141, g_DSPState
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L574:
	add	r5, r6, r5, lsl #2	@ tmp143, tmp147, ChanID,
	mov	r0, r4	@, D.37023
	mov	r4, ip	@ D.37023, tmp154
	bl	WriteHexFile	@
	mov	r3, #2	@ tmp145,
	str	r3, [r5, #3604]	@ tmp145, g_DSPState
	b	.L576	@
.L571:
	str	r1, [sp]	@ D.37025,
	mov	r3, r4	@, D.37023
	ldr	r1, .L581+4	@,
	mov	r0, #32	@,
	mvn	r4, #0	@ D.37023,
	bl	dprint_vfmw	@
	b	.L576	@
.L579:
	movw	r2, #3699	@,
	ldr	r1, .L581+8	@,
	mov	r0, #0	@,
	mvn	r4, #0	@ D.37023,
	bl	dprint_vfmw	@
	b	.L576	@
.L582:
	.align	2
.L581:
	.word	.LANCHOR0
	.word	.LC90
	.word	.LC89
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L588	@ tmp117,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	cmp	r3, #0	@ tmp118,
	beq	.L587	@,
	bl	SM_Reset	@
	adds	r0, r0, #0	@ D.37031,,
	movne	r0, #1	@ D.37031,
	rsb	r0, r0, #0	@ D.37030, D.37031
	ldmfd	sp!, {r4, pc}	@
.L587:
	mov	r0, r3	@, tmp118
	movw	r2, #3843	@,
	ldr	r3, .L588+4	@,
	ldr	r1, .L588+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37030,
	ldmfd	sp!, {r4, pc}	@
.L589:
	.align	2
.L588:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC5
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	mov	r0, #2	@,
	ldr	r1, .L603	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ ChanID,
	bne	.L598	@,
	ldr	r5, .L603+4	@ tmp125,
	ldr	r0, [r5]	@ D.37037, s_pstVfmwChan
	cmp	r0, #0	@ D.37037,
	beq	.L599	@,
	ldr	r3, [r0, #4]	@ _8->s32IsOpen, _8->s32IsOpen
	cmp	r3, #1	@ _8->s32IsOpen,
	bne	.L600	@,
	ldr	r0, .L603+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5]	@ D.37037, s_pstVfmwChan
	cmp	r0, #0	@ D.37037,
	beq	.L601	@,
	ldr	r2, [r0, #4]	@ _13->s32IsOpen, _13->s32IsOpen
	cmp	r2, #1	@ _13->s32IsOpen,
	bne	.L602	@,
	add	r0, r0, #217088	@, D.37037,
	mov	r1, r6	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReceiveImage	@
	subs	r4, r0, #1	@ D.37036,,
	ldr	r0, .L603+8	@,
	mvnne	r4, #0	@ D.37036,
	bl	OSAL_SpinUnLockIRQ	@
.L592:
	mov	r0, r4	@, D.37036
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L600:
	mov	r0, r4	@, ChanID
	ldr	r3, .L603+12	@,
	movw	r2, #4079	@,
	ldr	r1, .L603+16	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.37036,
	b	.L592	@
.L602:
	mov	r0, r4	@, ChanID
	movw	r2, #4093	@,
	ldr	r1, .L603+20	@,
	mvn	r4, #0	@ D.37036,
	bl	dprint_vfmw	@
	ldr	r0, .L603+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L592	@
.L598:
	ldr	r3, .L603+24	@,
	movw	r2, #4075	@,
	ldr	r1, .L603+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.37036,
	b	.L592	@
.L599:
	ldr	r3, .L603+28	@,
	movw	r2, #4076	@,
	ldr	r1, .L603+16	@,
	mvn	r4, #0	@ D.37036,
	bl	dprint_vfmw	@
	b	.L592	@
.L601:
	movw	r2, #4086	@,
	ldr	r1, .L603+32	@,
	bl	dprint_vfmw	@
	ldr	r0, .L603+8	@,
	mvn	r4, #0	@ D.37036,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L592	@
.L604:
	.align	2
.L603:
	.word	.LC91
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.word	.LC92
	.word	.LC5
	.word	.LC94
	.word	.LC69
	.word	.LC6
	.word	.LC93
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L614	@,
	ldr	r5, .L620	@ tmp125,
	ldr	r3, [r5]	@ D.37048, s_pstVfmwChan
	cmp	r3, #0	@ D.37048,
	beq	.L615	@,
	ldr	r3, [r3, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L616	@,
	cmp	r1, #0	@ pImage,
	mov	r4, r1	@ pImage, pImage
	beq	.L617	@,
	ldr	r3, [r1, #176]	@, pImage_11(D)->image_id
	mov	r2, r6	@, ChanID
	ldr	r1, .L620+4	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r0, .L620+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5]	@ D.37048, s_pstVfmwChan
	cmp	r0, #0	@ D.37048,
	beq	.L618	@,
	ldr	r2, [r0, #4]	@ _16->s32IsOpen, _16->s32IsOpen
	cmp	r2, #1	@ _16->s32IsOpen,
	bne	.L619	@,
	add	r0, r0, #217088	@, D.37048,
	mov	r1, r4	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReleaseImage	@
	subs	r4, r0, #1	@ D.37047,,
	ldr	r0, .L620+8	@,
	mvnne	r4, #0	@ D.37047,
	bl	OSAL_SpinUnLockIRQ	@
.L607:
	mov	r0, r4	@, D.37047
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L619:
	mov	r0, r6	@, ChanID
	movw	r2, #4187	@,
	ldr	r1, .L620+12	@,
	mvn	r4, #0	@ D.37047,
	bl	dprint_vfmw	@
	ldr	r0, .L620+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L607	@
.L616:
	ldr	r3, .L620+16	@,
	movw	r2, #4172	@,
	ldr	r1, .L620+20	@,
	mvn	r4, #0	@ D.37047,
	bl	dprint_vfmw	@
	b	.L607	@
.L614:
	ldr	r3, .L620+24	@,
	movw	r2, #4170	@,
	ldr	r1, .L620+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.37047,
	b	.L607	@
.L617:
	ldr	r3, .L620+28	@,
	movw	r2, #4173	@,
	ldr	r1, .L620+20	@,
	mvn	r4, #0	@ D.37047,
	bl	dprint_vfmw	@
	b	.L607	@
.L615:
	ldr	r3, .L620+32	@,
	movw	r2, #4171	@,
	ldr	r1, .L620+20	@,
	mvn	r4, #0	@ D.37047,
	bl	dprint_vfmw	@
	b	.L607	@
.L618:
	movw	r2, #4180	@,
	ldr	r1, .L620+36	@,
	bl	dprint_vfmw	@
	ldr	r0, .L620+8	@,
	mvn	r4, #0	@ D.37047,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L607	@
.L621:
	.align	2
.L620:
	.word	.LANCHOR0
	.word	.LC96
	.word	g_SpinLockIrq_Destroy
	.word	.LC94
	.word	.LC92
	.word	.LC5
	.word	.LC69
	.word	.LC95
	.word	.LC6
	.word	.LC93
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ ChanId, ChanId
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L623	@,
	ldr	r2, .L628	@ tmp115,
	ldr	r2, [r2]	@ D.37058, s_pstVfmwChan
	cmp	r2, #0	@ D.37058,
	beq	.L623	@,
	ldr	r1, [r2, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r1, #1	@ _5->s32IsOpen,
	beq	.L626	@,
	movw	r2, #4248	@,
	ldr	r1, .L628+4	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.37057,
	ldmfd	sp!, {r4, pc}	@
.L623:
	movw	r2, #4241	@,
	ldr	r1, .L628+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.37057,
	ldmfd	sp!, {r4, pc}	@
.L626:
	ldr	r0, [r2, #880]	@ D.37057, _5->eVidStd
	ldmfd	sp!, {r4, pc}	@
.L629:
	.align	2
.L628:
	.word	.LANCHOR0
	.word	.LC98
	.word	.LC97
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanId
	bne	.L636	@,
	ldr	r2, .L646	@ tmp119,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2]	@ D.37068, s_pstVfmwChan
	cmp	r5, #0	@ D.37068,
	moveq	r3, r5	@ D.37066, D.37068
	beq	.L631	@,
	ldr	r2, [r5, #4]	@ _15->s32IsOpen, _15->s32IsOpen
	cmp	r2, #1	@ _15->s32IsOpen,
	beq	.L645	@,
.L639:
	mov	r3, r0	@ D.37066, ChanId
.L631:
	mov	r0, r3	@, D.37066
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L636:
	mov	r3, #0	@ D.37066,
	mov	r0, r3	@, D.37066
	bx	lr	@
.L645:
	ldr	r2, [r5, #8]	@ _15->s32IsRun, _15->s32IsRun
	cmp	r2, #1	@ _15->s32IsRun,
	bne	.L639	@,
	ldr	r3, [r5, #880]	@ VidStd, _15->eVidStd
	cmp	r3, #2	@ VidStd,
	beq	.L633	@,
	cmp	r3, #3	@ VidStd,
	beq	.L634	@,
	cmp	r3, #0	@ VidStd,
	addeq	r3, r5, #217088	@ tmp124, D.37068,
	ldreq	r4, [r3, #792]	@ pDecParam, _15->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	beq	.L632	@,
.L641:
	mov	r3, #0	@ D.37066,
	mov	r0, r3	@, D.37066
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L633:
	add	r3, r5, #217088	@ tmp128, D.37068,
	ldr	r4, [r3, #1468]	@ pDecParam, _15->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
.L632:
	cmp	r4, #0	@ pDecParam,
	beq	.L641	@,
	bl	OSAL_GetTimeInMs	@
	mov	r3, r4	@ D.37066, pDecParam
	str	r0, [r5, #28]	@, _15->u32timeLastDecParamReady
	mov	r0, r3	@, D.37066
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L634:
	add	r3, r5, #217088	@ tmp126, D.37068,
	ldr	r4, [r3, #436]	@ pDecParam, _15->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	b	.L632	@
.L647:
	.align	2
.L646:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r0, #0	@ ChanId, ChanId
	bne	.L649	@,
	ldr	r5, .L661	@ tmp124,
	ldr	r2, [r5]	@ D.37073, s_pstVfmwChan
	cmp	r2, #0	@ D.37073,
	beq	.L649	@,
	ldr	r3, [r2, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r3, #1	@ _5->s32IsOpen,
	bne	.L652	@,
	ldr	r7, [r2, #8]	@ D.37074, _5->s32IsRun
	cmp	r7, #1	@ D.37074,
	beq	.L653	@,
.L652:
	mov	r2, #0	@,
	ldr	r1, .L661+4	@,
	mov	r0, #22	@,
	mov	r4, r2	@ D.37072,
	bl	dprint_vfmw	@
.L651:
	mov	r0, r4	@, D.37072
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L649:
	mov	r3, r6	@, ChanId
	movw	r2, #4375	@,
	ldr	r1, .L661+8	@,
	mov	r4, #0	@ D.37072,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.37072
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L653:
	bl	VCTRL_GetDecParam	@
	subs	r8, r0, #0	@ pDecParam,
	beq	.L659	@,
	ldr	r3, [r5]	@ D.37073, s_pstVfmwChan
	mov	r4, r6	@ D.37072, ChanId
	str	r6, [r3, #680]	@ ChanId, _16->s32CountNoDecparamFlag
	str	r6, [r3, #684]	@ ChanId, _16->u32NoDecparamStartTime
	b	.L651	@
.L659:
	ldr	r6, [r5]	@ D.37073, s_pstVfmwChan
	ldr	r4, [r6, #680]	@ D.37072, _10->s32CountNoDecparamFlag
	cmp	r4, #0	@ D.37072,
	beq	.L660	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5]	@ D.37073, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.37075, _23->u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.37075
	bls	.L656	@,
	rsb	r0, r2, r0	@ D.37075, D.37075, tmp
	cmp	r0, #40	@ D.37075,
	movls	r4, r8	@ D.37072, pDecParam
	bls	.L651	@,
.L656:
	str	r8, [r3, #680]	@ pDecParam, _23->s32CountNoDecparamFlag
	mov	r4, r7	@ D.37072, D.37074
	str	r8, [r3, #684]	@ pDecParam, _23->u32NoDecparamStartTime
	b	.L651	@
.L660:
	str	r7, [r6, #680]	@ D.37074, _10->s32CountNoDecparamFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #684]	@, _10->u32NoDecparamStartTime
	b	.L651	@
.L662:
	.align	2
.L661:
	.word	.LANCHOR0
	.word	.LC100
	.word	.LC99
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L670	@,
	ldr	r3, .L672	@ tmp127,
	ldr	r3, [r3]	@ D.37081, s_pstVfmwChan
	cmp	r3, #0	@ D.37081,
	beq	.L671	@,
	cmn	r3, #152	@ D.37081,
	cmpne	r1, #0	@, pstMemRec,
	beq	.L668	@,
	ldr	r2, [r3, #148]	@ _6->s32OneChanMem, _6->s32OneChanMem
	cmp	r2, #1	@ _6->s32OneChanMem,
	bne	.L668	@,
	ldr	r2, [r3, #160]	@ D.37083, MEM[(struct MEM_RECORD_S *)_6 + 152B].PhyAddr
	str	r2, [r1, #8]	@ D.37083, pstMemRec_10(D)->PhyAddr
	ldr	r2, [r3, #156]	@ D.37084, MEM[(struct MEM_RECORD_S *)_6 + 152B].VirAddr
	clz	r0, r2	@ D.37082, D.37084
	str	r2, [r1, #4]	@ D.37084, pstMemRec_10(D)->VirAddr
	ldr	r3, [r3, #164]	@ D.37083, MEM[(struct MEM_RECORD_S *)_6 + 152B].Length
	mov	r0, r0, lsr #5	@ D.37082, D.37082,
	rsb	r0, r0, #0	@ D.37080, D.37082
	str	r3, [r1, #12]	@ D.37083, pstMemRec_10(D)->Length
	ldmfd	sp!, {r4, pc}	@
.L668:
	mvn	r0, #0	@ D.37080,
	ldmfd	sp!, {r4, pc}	@
.L670:
	ldr	r3, .L672+4	@,
	movw	r2, #4433	@,
	ldr	r1, .L672+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37080,
	ldmfd	sp!, {r4, pc}	@
.L671:
	ldr	r3, .L672+12	@,
	movw	r2, #4434	@,
	ldr	r1, .L672+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37080,
	ldmfd	sp!, {r4, pc}	@
.L673:
	.align	2
.L672:
	.word	.LANCHOR0
	.word	.LC101
	.word	.LC5
	.word	.LC6
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_ClearDecparam
	.type	VCTRL_ClearDecparam, %function
VCTRL_ClearDecparam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L679	@ tmp113,
	ldr	r3, [r3, r0, asl #2]	@ D.37090, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ VidStd, _4->eVidStd
	cmp	r2, #2	@ VidStd,
	beq	.L676	@,
	cmp	r2, #3	@ VidStd,
	beq	.L677	@,
	cmp	r2, #0	@ VidStd,
	addeq	r3, r3, #217088	@ tmp116, D.37090,
	streq	r2, [r3, #792]	@ VidStd, _4->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	bx	lr	@
.L676:
	add	r3, r3, #217088	@ tmp122, D.37090,
	mov	r2, #0	@ tmp123,
	str	r2, [r3, #1468]	@ tmp123, _4->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	bx	lr	@
.L677:
	add	r3, r3, #217088	@ tmp119, D.37090,
	mov	r2, #0	@ tmp120,
	str	r2, [r3, #436]	@ tmp120, _4->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	bx	lr	@
.L680:
	.align	2
.L679:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ClearDecparam, .-VCTRL_ClearDecparam
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r0, #0	@ ChanId, ChanId
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L692	@,
	ldr	r3, .L696	@ tmp124,
	ldr	r3, [r3]	@ D.37101, s_pstVfmwChan
	cmp	r3, #0	@ D.37101,
	beq	.L693	@,
	ldr	r2, [r3, #8]	@ _8->s32IsRun, _8->s32IsRun
	cmp	r2, #1	@ _8->s32IsRun,
	bne	.L694	@,
	ldr	r2, [r3, #880]	@ VidStd, _8->eVidStd
	cmp	r2, #2	@ VidStd,
	beq	.L686	@,
	cmp	r2, #3	@ VidStd,
	beq	.L687	@,
	cmp	r2, #0	@ VidStd,
	beq	.L695	@,
	mov	r0, r1	@ D.37100, ChanId
	ldmfd	sp!, {r4, pc}	@
.L687:
	add	r0, r3, #217088	@, D.37101,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L695:
	add	r0, r3, #217088	@, D.37101,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L686:
	add	r0, r3, #217088	@, D.37101,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L694:
	ldr	r3, .L696+4	@,
	movw	r2, #4878	@,
	ldr	r1, .L696+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37100,
	ldmfd	sp!, {r4, pc}	@
.L692:
	ldr	r3, .L696+12	@,
	movw	r2, #4876	@,
	ldr	r1, .L696+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37100,
	ldmfd	sp!, {r4, pc}	@
.L693:
	ldr	r3, .L696+16	@,
	movw	r2, #4877	@,
	ldr	r1, .L696+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37100,
	ldmfd	sp!, {r4, pc}	@
.L697:
	.align	2
.L696:
	.word	.LANCHOR0
	.word	.LC102
	.word	.LC5
	.word	.LC101
	.word	.LC92
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L704	@,
	ldr	r2, .L707	@ tmp119,
	ldr	r2, [r2]	@ D.37110, s_pstVfmwChan
	ldr	ip, [r2, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	ip, #1	@ _6->s32IsOpen,
	bne	.L705	@,
	cmp	r1, #0	@ pArgs,
	beq	.L706	@,
	ldr	r1, [r1]	@ D.37111, *pArgs_9(D)
	mov	r0, r3	@ D.37109, ChanID
	str	r1, [r2, #1408]	@ D.37111, _6->stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L705:
	ldr	r3, .L707+4	@,
	movw	r2, #4983	@,
	ldr	r1, .L707+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37109,
	ldmfd	sp!, {r4, pc}	@
.L704:
	ldr	r3, .L707+12	@,
	movw	r2, #4982	@,
	ldr	r1, .L707+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37109,
	ldmfd	sp!, {r4, pc}	@
.L706:
	ldr	r3, .L707+16	@,
	movw	r2, #4984	@,
	ldr	r1, .L707+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37109,
	ldmfd	sp!, {r4, pc}	@
.L708:
	.align	2
.L707:
	.word	.LANCHOR0
	.word	.LC78
	.word	.LC5
	.word	.LC69
	.word	.LC103
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L715	@,
	ldr	r3, .L718	@ tmp119,
	ldr	r3, [r3]	@ D.37116, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L716	@,
	cmp	r1, #0	@ pArgs,
	beq	.L717	@,
	add	r0, r3, #1424	@, D.37116,
	mov	r2, #20	@,
	bl	memcpy	@
	mov	r0, r4	@ D.37115, ChanID
	ldmfd	sp!, {r4, pc}	@
.L716:
	ldr	r3, .L718+4	@,
	movw	r2, #4995	@,
	ldr	r1, .L718+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37115,
	ldmfd	sp!, {r4, pc}	@
.L715:
	ldr	r3, .L718+12	@,
	movw	r2, #4994	@,
	ldr	r1, .L718+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37115,
	ldmfd	sp!, {r4, pc}	@
.L717:
	ldr	r3, .L718+16	@,
	movw	r2, #4996	@,
	ldr	r1, .L718+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37115,
	ldmfd	sp!, {r4, pc}	@
.L719:
	.align	2
.L718:
	.word	.LANCHOR0
	.word	.LC78
	.word	.LC5
	.word	.LC69
	.word	.LC103
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, .L727	@ tmp141,
	ldr	r2, [r5, r0, asl #2]	@ tmp128, s_pstVfmwChan
	cmp	r2, #0	@ tmp128,
	beq	.L723	@,
	mov	r1, sp	@,
	mov	r4, r0	@ ChanID, ChanID
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L723	@,
	ldr	r3, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r3, #16	@ SmInstInfo.SegNum,
	bgt	.L724	@,
	ldr	r3, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r3, #524288	@ SmInstInfo.TotalSegSize,
	ble	.L723	@,
.L724:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	subs	r0, r0, #1	@ ret,,
	mvnne	r0, #0	@ ret,
	cmp	r0, #0	@ ret,
	bne	.L722	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, r4, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #28]	@ _18->u32timeLastDecParamReady, _18->u32timeLastDecParamReady
	rsb	r0, r3, r0	@ timePeriod, _18->u32timeLastDecParamReady,
	cmp	r0, #50	@ timePeriod,
	movls	r0, #0	@ D.37125,
	mvnhi	r0, #0	@ D.37125,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L723:
	mvn	r0, #0	@ D.37125,
.L722:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L728:
	.align	2
.L727:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L730	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ _4->s32NoStreamFlag, _4->s32NoStreamFlag
	subs	r0, r0, #1	@, _4->s32NoStreamFlag,
	movne	r0, #1	@,
	bx	lr	@
.L731:
	.align	2
.L730:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_IsChanSegEnough, .-VCTRL_IsChanSegEnough
	.align	2
	.global	VCTRL_IsChanActive
	.type	VCTRL_IsChanActive, %function
VCTRL_IsChanActive:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L738	@,
	ldr	r3, .L739	@ tmp120,
	ldr	r3, [r3]	@ D.37137, s_pstVfmwChan
	cmp	r3, #0	@ D.37137,
	beq	.L738	@,
	ldr	r2, [r3, #4]	@ _4->s32IsOpen, _4->s32IsOpen
	cmp	r2, #0	@ _4->s32IsOpen,
	beq	.L738	@,
	ldr	r2, [r3, #8]	@ _4->s32IsRun, _4->s32IsRun
	cmp	r2, #0	@ _4->s32IsRun,
	beq	.L738	@,
	ldr	r2, [r3, #12]	@ _4->s32Priority, _4->s32Priority
	cmp	r2, #0	@ _4->s32Priority,
	beq	.L738	@,
	ldr	r0, [r3, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r0, #19	@ _4->eVidStd,
	movne	r0, #0	@ D.37136,
	mvneq	r0, #0	@ D.37136,
	bx	lr	@
.L738:
	mvn	r0, #0	@ D.37136,
	bx	lr	@
.L740:
	.align	2
.L739:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r6, [r0, #352]	@ D.37152, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.37152, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	ldr	r3, .L748	@ tmp122,
	str	r5, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
	ldr	r3, [r3]	@ D.37154, s_pstVfmwChan
	cmp	r3, #0	@ D.37154,
	beq	.L742	@,
	add	r3, r3, #217088	@ D.37156, D.37154,
	add	r3, r3, #432	@ D.37156, D.37156,
	subs	r3, r4, r3	@ D.37157, pCtx, D.37156
	mvnne	r3, #0	@ D.37157,
	cmn	r3, #1	@ D.37157,
	str	r3, [r4, #360]	@ D.37157, pCtx_4(D)->ChanID
	beq	.L744	@,
	mov	r0, #1	@ D.37151,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L742:
	mvn	r3, #0	@ tmp129,
	str	r3, [r4, #360]	@ tmp129, pCtx_4(D)->ChanID
.L744:
	ldr	r1, .L748+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37151,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L749:
	.align	2
.L748:
	.word	.LANCHOR0
	.word	.LC104
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, #0	@,
	mov	r5, r1	@ ImgID, ImgID
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #360]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L751	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp125,
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp125, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp125, pImg_10->p_usrdat
.L751:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1	@ pstUsrdecFrame, pstUsrdecFrame
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, [r1, #28]	@, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	mov	r8, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r7, r0	@ PicBufID,
	beq	.L788	@,
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	beq	.L759	@,
	mov	r1, r0	@, PicBufID
	mov	r2, #0	@,
	mov	r0, r8	@, ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.37183,
.L758:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L759:
	ldr	r0, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pSrc,
	beq	.L789	@,
.L760:
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L790	@,
	str	r7, [r4, #176]	@ PicBufID, pLogic_31->image_id
	mov	r9, #0	@ tmp205,
	ldrd	r2, [r6, #8]	@ D.37186, pstUsrdecFrame,
	mov	r10, #1	@ tmp204,
	strd	r2, [r4]	@ D.37186, pLogic_31->SrcPts
	ldrd	r2, [r6, #8]	@ D.37186, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ D.37186, pLogic,
	ldrd	r2, [r6, #8]	@ D.37186, pstUsrdecFrame,
	strd	r2, [r4, #16]	@ D.37186, pLogic,
	ldrd	r2, [r6, #8]	@ D.37186, pstUsrdecFrame,
	str	r10, [r4, #68]	@ tmp204, pLogic_31->DispEnableFlag
	str	r9, [r4, #72]	@ tmp205, pLogic_31->DispFrameDistance
	strd	r2, [r4, #24]	@ D.37186, pLogic,
	str	r9, [r4, #76]	@ tmp205, pLogic_31->DistanceBeforeFirstFrame
	str	r9, [r4, #80]	@ tmp205, pLogic_31->GopNum
	ldr	r3, [r6, #28]	@ D.37184, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	str	r3, [r4, #88]	@ D.37184, pLogic_31->top_luma_phy_addr
	mov	r0, r3	@, D.37184
	str	r3, [r4, #120]	@ D.37184, pLogic_31->luma_2d_phy_addr
	str	r3, [r4, #104]	@ D.37184, pLogic_31->luma_phy_addr
	ldr	r3, [r6, #36]	@ D.37184, pstUsrdecFrame_15(D)->s32CbPhyAddr
	str	r3, [r4, #92]	@ D.37184, pLogic_31->top_chrom_phy_addr
	str	r3, [r4, #124]	@ D.37184, pLogic_31->chrom_2d_phy_addr
	str	r3, [r4, #108]	@ D.37184, pLogic_31->chrom_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r3, r0	@ D.37187,
	ldr	r0, [r4, #92]	@, pLogic_31->top_chrom_phy_addr
	str	r3, [r4, #48]	@ D.37187, pLogic_31->luma_2d_vir_addr
	str	r3, [r4, #32]	@ D.37187, pLogic_31->luma_vir_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #88]	@ pLogic_31->top_luma_phy_addr, pLogic_31->top_luma_phy_addr
	ldr	r3, [r4, #92]	@ pLogic_31->top_chrom_phy_addr, pLogic_31->top_chrom_phy_addr
	movw	r1, #11296	@ tmp224,
	str	r0, [r4, #52]	@ __p, pLogic_31->chrom_2d_vir_addr
	mov	ip, r0	@ __p,
	str	r0, [r4, #36]	@ __p, pLogic_31->chrom_vir_addr
	cmp	r0, r9	@ __p,
	ldr	r0, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	add	r2, r2, r0	@ D.37184, pLogic_31->top_luma_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r2, [r4, #96]	@ D.37184, pLogic_31->btm_luma_phy_addr
	ldr	r2, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #128]	@ tmp205, pLogic_31->is_fld_save
	add	r3, r3, r2	@ D.37184, pLogic_31->top_chrom_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r3, [r4, #100]	@ D.37184, pLogic_31->btm_chrom_phy_addr
	ldr	r3, [r6, #20]	@ pstUsrdecFrame_15(D)->s32YWidth, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #144]	@ pstUsrdecFrame_15(D)->s32YWidth, pLogic_31->image_width
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	str	r3, [r4, #148]	@ pstUsrdecFrame_15(D)->s32YHeight, pLogic_31->image_height
	ldr	r3, [r6, #20]	@ D.37185, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #152]	@ D.37185, pLogic_31->disp_width
	mov	r2, r3, lsr r10	@ D.37185, D.37185,
	ldr	r3, [r6, #24]	@ D.37185, pstUsrdecFrame_15(D)->s32YHeight
	str	r2, [r4, #160]	@ D.37185, pLogic_31->disp_center_x
	str	r3, [r4, #156]	@ D.37185, pLogic_31->disp_height
	mov	r3, r3, lsr r10	@ D.37185, D.37185,
	str	r3, [r4, #164]	@ D.37185, pLogic_31->disp_center_y
	ldr	r3, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #168]	@ tmp205, pLogic_31->frame_rate
	str	r9, [r4, #180]	@ tmp205, pLogic_31->error_level
	str	r3, [r4, #172]	@ pstUsrdecFrame_15(D)->s32LumaStride, pLogic_31->image_stride
	str	r10, [r4, #208]	@ tmp204, pLogic_31->chroma_idc
	str	r9, [r4, #256]	@ tmp205, pLogic_31->line_num_phy_addr
	str	r9, [r4, #56]	@ tmp205, pLogic_31->line_num_vir_addr
	str	r1, [r4, #140]	@ tmp224, pLogic_31->format
	beq	.L762	@,
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	cmp	r3, r10	@ pstUsrdecFrame_15(D)->s32YHeight,
	bgt	.L775	@,
	b	.L776	@
.L792:
	ldr	r2, [r4, #144]	@ __n, pLogic_31->image_width
	cmp	r2, #0	@ __n,
	bne	.L791	@,
.L766:
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	add	r9, r9, #1	@ y, y,
	ldr	r2, [r4, #172]	@ pLogic_31->image_stride, pLogic_31->image_stride
	add	r3, r3, r3, lsr #31	@ tmp258, pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight,
	add	ip, ip, r2	@ __p, __p, pLogic_31->image_stride
	cmp	r9, r3, asr #1	@ y, tmp258,
	bge	.L776	@,
.L775:
	ldr	r3, [r6]	@ D.37188, pstUsrdecFrame_15(D)->enFmt
	cmp	r3, #0	@ D.37188,
	beq	.L792	@,
	cmp	r3, #1	@ D.37188,
	beq	.L766	@,
	cmp	r3, #3	@ D.37188,
	beq	.L793	@,
	cmp	r3, #2	@ D.37188,
	beq	.L794	@,
	cmp	r3, #4	@ D.37188,
	bne	.L777	@,
	ldr	r3, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, #0	@ pLogic_31->image_width,
	movne	r1, r5	@ ivtmp.594, pSrc
	movne	r3, #0	@ x,
	beq	.L774	@,
.L773:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.37189, MEM[base: pSrc_190, index: _119, step: 2, offset: 0B]
	mov	r2, ip	@ D.37187, __p
	add	r1, r1, #4	@ ivtmp.594, ivtmp.594,
	strb	r0, [r2, r3]!	@ D.37189, MEM[base: __p_191, index: _119, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.37189, MEM[base: _120, offset: 1B]
	strb	r0, [r2, #1]	@ D.37189, MEM[base: _114, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, r2	@ x, pLogic_31->image_width
	bcc	.L773	@,
.L774:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	b	.L766	@
.L791:
	mov	r0, ip	@, __p
	mov	r1, #128	@,
	bl	memset	@
	mov	ip, r0	@ __p,
	b	.L766	@
.L793:
	ldr	r3, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, #0	@ pLogic_31->image_width,
	movne	r1, r5	@ ivtmp.586, pSrc
	movne	r3, #0	@ x,
	beq	.L770	@,
.L769:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.37189, MEM[base: pSrc_190, index: _205, step: 2, offset: 0B]
	mov	r2, ip	@ D.37187, __p
	add	r1, r1, #4	@ ivtmp.586, ivtmp.586,
	strb	r0, [r2, r3]!	@ D.37189, MEM[base: __p_191, index: _205, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.37189, MEM[base: _203, offset: 1B]
	strb	r0, [r2, #1]	@ D.37189, MEM[base: _201, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, r2	@ x, pLogic_31->image_width
	bcc	.L769	@,
.L770:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride
	b	.L766	@
.L776:
	mov	r5, #18	@ tmp228,
	mov	r2, #1	@,
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	str	r5, [r4, #300]	@ tmp228, pLogic_31->ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	ldr	r3, .L795	@ tmp229,
	str	r4, [sp]	@ pLogic,
	mov	r1, r5	@, tmp228
	mov	r0, r8	@, ChanID
	ldr	r2, [r3, r8, asl #2]	@ D.37191, s_pstVfmwChan
	add	r2, r2, #217088	@ tmp231, D.37191,
	add	r3, r2, #440	@, tmp231,
	add	r2, r2, #432	@, tmp231,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L764	@,
	mov	r0, #0	@ D.37183,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L794:
	mov	r1, r5	@, pSrc
	mov	r0, ip	@, __p
	ldr	r2, [r4, #144]	@, pLogic_31->image_width
	bl	memcpy	@
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	mov	ip, r0	@ __p,
	b	.L766	@
.L789:
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	bne	.L760	@,
	ldr	r2, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	ldr	r1, .L795+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37183,
	b	.L758	@
.L777:
	mvn	r0, #0	@ D.37183,
	b	.L758	@
.L764:
	ldr	r1, [r4, #192]	@, pLogic_31->p_usrdat
	mov	r0, r8	@, ChanID
	bl	FreeUsdByDec	@
	mov	r5, #0	@ tmp261,
	ldr	r1, [r4, #196]	@, pLogic_31->p_usrdat
	mov	r0, r8	@, ChanID
	str	r5, [r4, #192]	@ tmp261, pLogic_31->p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r8	@, ChanID
	str	r5, [r4, #196]	@ tmp261, pLogic_31->p_usrdat
	mov	r2, r5	@, tmp261
	mov	r1, r7	@, PicBufID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.37183,
	b	.L758	@
.L788:
	ldr	r2, [r6, #28]	@, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	mov	r0, #0	@,
	ldr	r1, .L795+8	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.37183, PicBufID
	b	.L758	@
.L790:
	movw	r2, #5171	@,
	ldr	r1, .L795+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37183,
	b	.L758	@
.L762:
	mov	r0, r10	@, tmp204
	ldr	r1, .L795+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37183,
	b	.L758	@
.L796:
	.align	2
.L795:
	.word	.LANCHOR0
	.word	.LC106
	.word	.LC105
	.word	.LC107
	.word	.LC108
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0	@ ChanID, ChanID
	ldr	r7, .L822	@ tmp130,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r7, r0, asl #2]	@ D.37205, s_pstVfmwChan
	cmp	r3, #0	@ D.37205,
	beq	.L816	@,
	ldr	r6, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r6, #18	@ _5->eVidStd,
	bne	.L817	@,
	ldr	r3, [r3, #820]	@ _5->s32UsrdecFrameNum, _5->s32UsrdecFrameNum
	cmp	r3, #2	@ _5->s32UsrdecFrameNum,
	ble	.L818	@,
	mov	r8, r1	@ pMem, pMem
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37207,
	bne	.L819	@,
	mov	r1, r0	@, D.37207
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r9, r0, #0	@ id,
	blt	.L820	@,
	mov	r1, r9	@, id
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, r9	@, id
	ldr	r1, .L822+4	@,
	mov	r4, r0	@ pLf,
	mov	r0, r6	@, _5->eVidStd
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pLf,
	beq	.L821	@,
	ldr	r2, [r4, #408]	@ D.37208, pLf_18->pstDecodeFs
	cmp	r2, #0	@ D.37208,
	beq	.L805	@,
	ldr	r3, [r4, #412]	@ D.37208, pLf_18->pstDispOutFs
	cmp	r3, #0	@ D.37208,
	beq	.L805	@,
	ldr	r1, [r4, #416]	@ D.37208, pLf_18->pstTfOutFs
	cmp	r1, #0	@ D.37208,
	beq	.L805	@,
	ldr	ip, [r1, #12]	@ _23->PhyAddr, _23->PhyAddr
	mov	r0, r6	@, _5->eVidStd
	ldr	r3, [r3, #12]	@ _22->PhyAddr, _22->PhyAddr
	ldr	r2, [r2, #12]	@ _21->PhyAddr, _21->PhyAddr
	ldr	r1, .L822+8	@,
	str	ip, [sp]	@ _23->PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #408]	@ pLf_18->pstDecodeFs, pLf_18->pstDecodeFs
	mov	r0, #0	@ D.37204,
	ldr	r3, [r3, #12]	@ D.37207, _28->PhyAddr
	str	r3, [r8]	@ D.37207, pMem_30(D)->PhyAddr
	ldr	r3, [r7, r5, asl #2]	@ tmp147, s_pstVfmwChan
	ldr	r3, [r3, #816]	@ D.37207, _32->s32UsrdecFrameSize
	str	r3, [r8, #8]	@ D.37207, pMem_30(D)->Length
.L799:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L819:
	ldr	r1, .L822+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37204,
	b	.L799	@
.L817:
	ldr	r1, .L822+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37204,
	b	.L799	@
.L818:
	ldr	r1, .L822+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37204,
	b	.L799	@
.L805:
	ldr	r1, .L822+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37204,
	b	.L799	@
.L820:
	ldr	r1, .L822+28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37204,
	b	.L799	@
.L816:
	mov	r0, r3	@, D.37205
	movw	r2, #5331	@,
	ldr	r3, .L822+32	@,
	ldr	r1, .L822+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37204,
	b	.L799	@
.L821:
	movw	r2, #5367	@,
	ldr	r1, .L822+40	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37204,
	b	.L799	@
.L823:
	.align	2
.L822:
	.word	.LANCHOR0
	.word	.LC113
	.word	.LC115
	.word	.LC111
	.word	.LC109
	.word	.LC110
	.word	.LC116
	.word	.LC112
	.word	.LC6
	.word	.LC5
	.word	.LC114
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L836	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, [r3, r0, asl #2]	@ D.37220, s_pstVfmwChan
	cmp	r0, #0	@ D.37220,
	beq	.L833	@,
	cmp	r1, #0	@ pUsrdecFrame,
	mov	r5, r1	@ pUsrdecFrame, pUsrdecFrame
	beq	.L834	@,
	ldr	r2, [r0, #880]	@ D.37221, _5->eVidStd
	cmp	r2, #18	@ D.37221,
	bne	.L835	@,
	mov	r2, #56	@,
	add	r0, r0, #824	@, D.37220,
	bl	memcpy	@
	mov	r1, r5	@, pUsrdecFrame
	mov	r0, r4	@, ChanID
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.37219
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, .L836+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37219,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L835:
	ldr	r1, .L836+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37219,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L834:
	mov	r0, r1	@, pUsrdecFrame
	ldr	r3, .L836+12	@,
	movw	r2, #5421	@,
	ldr	r1, .L836+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37219,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L833:
	ldr	r3, .L836+20	@,
	movw	r2, #5420	@,
	ldr	r1, .L836+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37219,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L837:
	.align	2
.L836:
	.word	.LANCHOR0
	.word	.LC119
	.word	.LC118
	.word	.LC117
	.word	.LC5
	.word	.LC6
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L847	@ tmp121,
	ldr	r1, [r3, r0, asl #2]	@ D.37235, s_pstVfmwChan
	cmp	r1, #0	@ D.37235,
	beq	.L846	@,
	ldr	r3, [r1, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r3, #18	@ _4->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _4->eVidStd
	b	.L838	@
.L842:
	.word	.L841
	.word	.L838
	.word	.L843
	.word	.L844
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L838
	.word	.L845
.L845:
	add	r0, r1, #217088	@, D.37235,
	add	r1, r1, #888	@, D.37235,
	add	r0, r0, #432	@,,
	b	USERDEC_Init	@
.L841:
	add	r0, r1, #217088	@, D.37235,
	add	r1, r1, #888	@, D.37235,
	add	r0, r0, #432	@,,
	b	H264DEC_Init	@
.L843:
	add	r0, r1, #217088	@, D.37235,
	add	r1, r1, #888	@, D.37235,
	add	r0, r0, #432	@,,
	b	MPEG4DEC_Init	@
.L844:
	add	r0, r1, #217088	@, D.37235,
	add	r1, r1, #888	@, D.37235,
	add	r0, r0, #432	@,,
	b	MPEG2DEC_Init	@
.L838:
	bx	lr	@
.L846:
	mov	r0, r1	@, D.37235
	ldr	r3, .L847+4	@,
	movw	r2, #5448	@,
	ldr	r1, .L847+8	@,
	b	dprint_vfmw	@
.L848:
	.align	2
.L847:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC120
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetMemSize_onFramePath
	.type	VCTRL_GetMemSize_onFramePath, %function
VCTRL_GetMemSize_onFramePath:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r1, #64]	@ D.37251, pChanOption_4(D)->s32SlotWidth
	cmp	r0, #0	@ D.37251,
	beq	.L850	@,
	ldr	r3, [r1, #68]	@ D.37251, pChanOption_4(D)->s32SlotHeight
	cmp	r3, #0	@ D.37251,
	beq	.L850	@,
	mul	r3, r3, r0	@ D.37251, D.37251, D.37251
	ldr	lr, [r1, #60]	@ pChanOption_4(D)->s32DisplayFrameNum, pChanOption_4(D)->s32DisplayFrameNum
	movw	ip, #40368	@ tmp129,
	mov	r1, #0	@ tmp128,
	movt	ip, 7	@ tmp129,
	mov	r0, r1	@ D.37250, tmp128
	stmib	r2, {r1, ip}	@ pDetailMemSize,,
	str	r1, [r2, #12]	@ tmp128, pDetailMemSize_14(D)->PmvDetailMem
	mla	r3, lr, r3, r3	@ D.37251, pChanOption_4(D)->s32DisplayFrameNum, D.37251, D.37251
	mov	r3, r3, asl #1	@ D.37251, D.37251,
	str	r3, [r2]	@ D.37251, pDetailMemSize_14(D)->VdhDetailMem
	ldmfd	sp!, {r4, pc}	@
.L850:
	ldr	r1, .L857	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37250,
	ldmfd	sp!, {r4, pc}	@
.L858:
	.align	2
.L857:
	.word	.LC121
	.fnend
	.size	VCTRL_GetMemSize_onFramePath, .-VCTRL_GetMemSize_onFramePath
	.align	2
	.global	VCTRL_VarifyOption_onDecode
	.type	VCTRL_VarifyOption_onDecode, %function
VCTRL_VarifyOption_onDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #32]	@ pChanOption_4(D)->s32MaxRefFrameNum, pChanOption_4(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxRefFrameNum,
	blt	.L860	@,
	ldr	r3, [r0, #12]	@ pChanOption_4(D)->s32MaxWidth, pChanOption_4(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxWidth,
	ble	.L860	@,
	ldr	r3, [r0, #16]	@ pChanOption_4(D)->s32MaxHeight, pChanOption_4(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxHeight,
	ble	.L860	@,
	ldr	r3, [r0, #56]	@ pChanOption_4(D)->s32SCDBufSize, pChanOption_4(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_4(D)->s32SCDBufSize,
	blt	.L860	@,
	ldr	r3, [r0, #44]	@ pChanOption_4(D)->s32SupportH264, pChanOption_4(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_4(D)->s32SupportH264,
	beq	.L865	@,
.L863:
	mov	r0, #0	@ D.37257,
	ldmfd	sp!, {r4, pc}	@
.L865:
	ldr	r3, [r0, #20]	@ pChanOption_4(D)->s32MaxSliceNum, pChanOption_4(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSliceNum,
	ble	.L860	@,
	ldr	r3, [r0, #24]	@ pChanOption_4(D)->s32MaxSpsNum, pChanOption_4(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSpsNum,
	ble	.L860	@,
	ldr	r3, [r0, #28]	@ pChanOption_4(D)->s32MaxPpsNum, pChanOption_4(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxPpsNum,
	bgt	.L863	@,
.L860:
	ldr	r1, .L866	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37257,
	ldmfd	sp!, {r4, pc}	@
.L867:
	.align	2
.L866:
	.word	.LC122
	.fnend
	.size	VCTRL_VarifyOption_onDecode, .-VCTRL_VarifyOption_onDecode
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L872	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ FrmNum, FrmNum
	ldr	ip, [ip, #100]	@ D.37263, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.37263,
	mvneq	r0, #0	@ D.37262,
	beq	.L869	@,
	mov	r0, r1	@ Width, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.37263
.L869:
	mul	r4, r4, r0	@ D.37264, FrmNum, D.37262
	str	r4, [r5]	@ D.37264, *pChanPmvSize_11(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L873:
	.align	2
.L872:
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VCTRL_GetChanPmvSize, .-VCTRL_GetChanPmvSize
	.align	2
	.global	VCTRL_GetMemSize_onDecode
	.type	VCTRL_GetMemSize_onDecode, %function
VCTRL_GetMemSize_onDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, r1	@, pChanOption
	.pad #444
	sub	sp, sp, #444	@,,
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	bl	VCTRL_VarifyOption_onDecode	@
	subs	r8, r0, #0	@ D.37267,
	bne	.L882	@,
	ldr	r3, [r4, #40]	@ pChanOption_7(D)->s32SupportBFrame, pChanOption_7(D)->s32SupportBFrame
	ldr	r6, [r4, #32]	@ D.37267, pChanOption_7(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_7(D)->s32SupportBFrame,
	moveq	r10, #1	@ PmvNum,
	addeq	r7, r6, r10	@ D.37267, D.37267,
	bne	.L885	@,
.L877:
	ldr	r9, .L887	@ tmp182,
	ldr	r0, [r4, #12]	@ D.37268, pChanOption_7(D)->s32MaxWidth
	ldr	fp, [r4, #60]	@ D.37268, pChanOption_7(D)->s32DisplayFrameNum
	ldr	r3, [r9, #100]	@ D.37271, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	ldr	r1, [r4, #16]	@ D.37268, pChanOption_7(D)->s32MaxHeight
	cmp	r3, #0	@ D.37271,
	mvneq	r0, #0	@ D.37267,
	beq	.L878	@,
	blx	r3	@ D.37271
.L878:
	mul	r7, r7, r0	@ ChanPmvSize, D.37267, D.37267
	str	r7, [r5, #12]	@ ChanPmvSize, pDetailMemSize_23(D)->PmvDetailMem
	ldr	ip, [r9, #36]	@ D.37269, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37269,
	beq	.L880	@,
	ldr	r3, [r4, #16]	@ pChanOption_7(D)->s32MaxHeight, pChanOption_7(D)->s32MaxHeight
	mov	r0, #64	@ tmp158,
	ldr	r2, [r4, #12]	@ pChanOption_7(D)->s32MaxWidth, pChanOption_7(D)->s32MaxWidth
	add	r1, sp, #24	@ tmp159,,
	str	r0, [sp, #20]	@ tmp158,
	add	r6, r6, fp	@ FrameNum, D.37267, D.37268
	str	r1, [sp, #16]	@ tmp159,
	mvn	r0, #0	@ tmp160,
	mov	r1, #0	@ tmp161,
	str	r0, [sp, #12]	@ tmp160,
	str	r1, [sp, #8]	@ tmp161,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ FrameNum,
	mvn	r1, #-2147483648	@,
	str	r10, [sp]	@ PmvNum,
	blx	ip	@ D.37269
	cmp	r0, #0	@,
	bne	.L880	@,
	ldr	r3, [sp, #28]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.37268, MemArrange.TotalMemUsed,
	str	r3, [r5]	@ D.37268, pDetailMemSize_23(D)->VdhDetailMem
	ldr	r3, [r4, #56]	@ pChanOption_7(D)->s32SCDBufSize, pChanOption_7(D)->s32SCDBufSize
	add	r3, r3, #32768	@ D.37268, pChanOption_7(D)->s32SCDBufSize,
	str	r3, [r5, #4]	@ D.37268, pDetailMemSize_23(D)->ScdDetailMem
	ldr	r3, [r4, #44]	@ D.37268, pChanOption_7(D)->s32SupportH264
	cmp	r3, #0	@ D.37268,
	beq	.L886	@,
	ldr	lr, [r4, #24]	@ pChanOption_7(D)->s32MaxSpsNum, pChanOption_7(D)->s32MaxSpsNum
	mov	r0, #4000	@ tmp173,
	ldr	r2, [r4, #20]	@ pChanOption_7(D)->s32MaxSliceNum, pChanOption_7(D)->s32MaxSliceNum
	movw	r3, #4060	@ tmp170,
	ldr	r1, [r4, #28]	@ pChanOption_7(D)->s32MaxPpsNum, pChanOption_7(D)->s32MaxPpsNum
	mov	ip, #2208	@ tmp179,
	mul	r0, r0, lr	@ D.37270, tmp173, pChanOption_7(D)->s32MaxSpsNum
	mla	r3, r3, r2, r0	@ D.37270, tmp170, pChanOption_7(D)->s32MaxSliceNum, D.37270
	add	r3, r3, #495616	@ D.37270, D.37270,
	add	r3, r3, #3504	@ D.37270, D.37270,
	mla	r3, ip, r1, r3	@ D.37270, tmp179, pChanOption_7(D)->s32MaxPpsNum, D.37270
	str	r3, [r5, #8]	@ D.37270, pDetailMemSize_23(D)->ChanCtxDetailMem
.L875:
	mov	r0, r8	@, D.37267
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L885:
	add	r3, r6, #1	@ PmvNum, D.37267,
	cmp	r3, #17	@ PmvNum,
	mov	r7, r3	@ D.37267, PmvNum
	movlt	r10, r3	@ PmvNum, PmvNum
	movge	r10, #17	@ PmvNum,
	b	.L877	@
.L886:
	mov	r8, r3	@ D.37267, D.37268
	movw	r2, #40368	@ tmp167,
	movt	r2, 7	@ tmp167,
	mov	r0, r8	@, D.37267
	str	r2, [r5, #8]	@ tmp167, pDetailMemSize_23(D)->ChanCtxDetailMem
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L880:
	movw	r3, #5638	@,
	ldr	r2, .L887+4	@,
	ldr	r1, .L887+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.37267,
	mov	r0, r8	@, D.37267
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L882:
	mvn	r8, #0	@ D.37267,
	b	.L875	@
.L888:
	.align	2
.L887:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR1+84
	.word	.LC123
	.fnend
	.size	VCTRL_GetMemSize_onDecode, .-VCTRL_GetMemSize_onDecode
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #2	@ flag,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L890	@,
	ldr	ip, .L908	@ tmp132,
	ldr	r4, [r1, #32]	@ D.37276, pChanOption_8(D)->s32MaxRefFrameNum
	ldr	r5, [r1, #60]	@ D.37276, pChanOption_8(D)->s32DisplayFrameNum
	ldr	r6, [ip, #3608]	@ D.37276, extra_ref
	ldr	r7, [ip, #3612]	@ D.37276, extra_disp
	add	ip, r4, r6	@ TempRefNum, D.37276, D.37276
	cmp	ip, #16	@ TempRefNum,
	add	lr, r5, r7	@ TempDispNum, D.37276, D.37276
	movge	ip, #16	@ TempRefNum,
	orrs	r8, ip, lr	@ tmp154, TempRefNum, TempDispNum
	bmi	.L903	@,
	clz	r3, r3	@ tmp150, flag
	cmp	r0, #25	@ eCapLevel,
	str	ip, [r1, #32]	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum
	mov	r3, r3, lsr #5	@ tmp150, tmp150,
	moveq	r3, #0	@ tmp150,
	cmp	r3, #0	@ tmp150,
	str	lr, [r1, #60]	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum
	bne	.L904	@,
.L890:
	ldr	r3, [r1, #4]	@ D.37278, pChanOption_8(D)->Purpose
	cmp	r3, #2	@ D.37278,
	bhi	.L905	@,
	beq	.L906	@,
	cmp	r3, #1	@ D.37278,
	beq	.L907	@,
.L892:
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L906:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VCTRL_GetMemSize_onFramePath	@
.L907:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VCTRL_GetMemSize_onDecode	@
.L904:
	ldr	r1, .L908+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L892	@
.L905:
	ldr	r1, .L908+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L892	@
.L903:
	str	r7, [sp, #4]	@ D.37276,
	mov	r3, r6	@, D.37276
	str	r5, [sp]	@ D.37276,
	mov	r2, r4	@, D.37276
	ldr	r1, .L908+12	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L892	@
.L909:
	.align	2
.L908:
	.word	.LANCHOR0
	.word	.LC125
	.word	.LC126
	.word	.LC124
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #476
	sub	sp, sp, #476	@,,
	mov	r3, r0, asl #5	@ tmp309, eCapLevel,
	mov	r5, r0, asl #2	@ tmp308, eCapLevel,
	ldr	r10, .L934	@ tmp311,
	mov	fp, r2	@ ScdMemSize, ScdMemSize
	str	r3, [sp, #52]	@ tmp309, %sfp
	rsb	r3, r5, r3	@ tmp166, tmp308, tmp309
	add	r3, r10, r3	@ tmp167, tmp311, tmp166
	mov	r6, r0	@ eCapLevel, eCapLevel
	sub	r0, r0, #18	@ tmp190, eCapLevel,
	str	r1, [sp, #36]	@ VdmMemSize, %sfp
	ldr	r2, [r3, #16]	@ nMiddleFrame, CapItem
	ldr	r9, [r3, #12]	@ nMinFrame, CapItem
	ldr	ip, [r3, #8]	@ nPmv, CapItem
	str	r2, [sp, #44]	@ nMiddleFrame, %sfp
	ldr	r2, [r3, #20]	@ nFluentFrame, CapItem
	str	r2, [sp, #48]	@ nFluentFrame, %sfp
	cmp	r0, #7	@ tmp190,
	ldrls	pc, [pc, r0, asl #2]	@ tmp190
	b	.L911	@
.L913:
	.word	.L927
	.word	.L927
	.word	.L927
	.word	.L927
	.word	.L927
	.word	.L914
	.word	.L914
	.word	.L914
.L927:
	mov	r3, #3	@ MinDnrFspNum,
.L912:
	ldr	r8, .L934+4	@ tmp310,
	rsb	r3, r3, r9	@ s32MaxRefFrameNum, MinDnrFspNum, nMinFrame
	cmp	r3, #15	@ s32MaxRefFrameNum,
	ldr	r4, [r8, #3608]	@ extra_ref, extra_ref
	bic	r4, r4, r4, asr #31	@ extra_ref_tmp, extra_ref
	str	r4, [r8, #3608]	@ extra_ref_tmp, extra_ref
	movgt	r4, #0	@ extra_ref_tmp,
	bgt	.L915	@,
	add	r3, r3, r4	@ D.37287, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r3, #16	@ D.37287,
	rsbgt	r3, r3, #16	@ D.37287, D.37287,
	addgt	r4, r4, r3	@ extra_ref_tmp, extra_ref_tmp, D.37287
.L915:
	add	r3, ip, r4	@ TempPmv, nPmv, extra_ref_tmp
	ldr	r7, [r8, #3612]	@ D.37287, extra_disp
	cmp	r3, #0	@ TempPmv,
	ble	.L931	@,
	cmp	r3, #17	@ TempPmv,
	movge	r3, #17	@ nPmv,
	str	r3, [sp, #40]	@ nPmv, %sfp
.L917:
	cmp	r6, #23	@ eCapLevel,
	bhi	.L918	@,
	ldr	r3, [sp, #44]	@ nMiddleFrame, %sfp
	add	r7, r4, r7	@ D.37287, extra_ref_tmp, D.37287
	add	r2, r7, r9	@ nMinFrame, D.37287, nMinFrame
	add	r1, r3, r7	@ nMiddleFrame, nMiddleFrame, D.37287
	ldr	r3, [sp, #48]	@ nFluentFrame, %sfp
	cmp	r2, #0	@ nMinFrame,
	cmpgt	r1, #0	@, nMiddleFrame,
	add	r7, r3, r7	@ nFluentFrame, nFluentFrame, D.37287
	movle	r3, #1	@ tmp201,
	movgt	r3, #0	@ tmp201,
	cmp	r7, #0	@ nFluentFrame,
	orrle	r3, r3, #1	@,, tmp207, tmp201
	cmp	r3, #0	@ tmp207,
	streq	r7, [sp, #48]	@ nFluentFrame, %sfp
	streq	r1, [sp, #44]	@ nMiddleFrame, %sfp
	moveq	r9, r2	@ nMinFrame, nMinFrame
	bne	.L932	@,
.L918:
	cmp	r6, #32	@ eCapLevel,
	bhi	.L933	@,
	ldr	r6, .L934+8	@ tmp211,
	ldr	ip, [r6, #36]	@ D.37289, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37289,
	beq	.L922	@,
	ldr	r3, [sp, #52]	@ tmp309, %sfp
	mov	r0, #0	@ tmp231,
	str	r9, [sp, #4]	@ nMinFrame,
	add	r8, sp, #56	@ tmp229,,
	rsb	r5, r5, r3	@ tmp217, tmp308, tmp309
	ldr	r3, [sp, #40]	@ nPmv, %sfp
	add	r4, r10, r5	@ tmp218, tmp311, tmp217
	mov	r9, #64	@ tmp228,
	ldr	r2, [r10, r5]	@ tmp227, CapItem
	mvn	r7, #0	@ tmp230,
	str	r3, [sp]	@ nPmv,
	mvn	r1, #-2147483648	@,
	ldr	r3, [r4, #4]	@ tmp220, CapItem
	str	r0, [sp, #8]	@ tmp231,
	mov	r0, #1	@,
	str	r9, [sp, #20]	@ tmp228,
	str	r8, [sp, #16]	@ tmp229,
	str	r7, [sp, #12]	@ tmp230,
	blx	ip	@ D.37289
	ldr	r10, .L934	@ tmp213,
	cmp	r0, #0	@ ret
	bne	.L922	@,
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.37287, MemArrange.TotalMemUsed,
	str	r3, [r2]	@ D.37287, *VdmMemSize_53(D)
	ldr	r3, [r4, #24]	@ tmp242, CapItem
	add	r3, r3, #32768	@ D.37287, tmp242,
	str	r3, [fp]	@ D.37287, *ScdMemSize_57(D)
	ldr	ip, [r6, #36]	@ D.37289, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37289,
	beq	.L924	@,
	ldr	lr, [sp, #44]	@ nMiddleFrame, %sfp
	mvn	r1, #-2147483648	@,
	ldr	r3, [r4, #4]	@ tmp252, CapItem
	ldr	r2, [r10, r5]	@ tmp259, CapItem
	str	lr, [sp, #4]	@ nMiddleFrame,
	ldr	lr, [sp, #40]	@ nPmv, %sfp
	str	r0, [sp, #8]	@ ret,
	mov	r0, #1	@,
	str	r9, [sp, #20]	@ tmp228,
	str	lr, [sp]	@ nPmv,
	str	r8, [sp, #16]	@ tmp229,
	str	r7, [sp, #12]	@ tmp230,
	blx	ip	@ D.37289
	subs	lr, r0, #0	@ ret,
	bne	.L924	@,
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.37287, MemArrange.TotalMemUsed,
	str	r3, [r2, #4]	@ D.37287, MEM[(HI_S32 *)VdmMemSize_53(D) + 4B]
	ldr	r3, [r4, #24]	@ tmp274, CapItem
	add	r3, r3, #32768	@ D.37287, tmp274,
	str	r3, [fp, #4]	@ D.37287, MEM[(HI_S32 *)ScdMemSize_57(D) + 4B]
	ldr	ip, [r6, #36]	@ D.37289, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37289,
	beq	.L926	@,
	ldr	r3, [r4, #4]	@ tmp284, CapItem
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ ret,
	mov	r0, #1	@,
	ldr	lr, [sp, #48]	@ nFluentFrame, %sfp
	ldr	r2, [r10, r5]	@ tmp291, CapItem
	str	r9, [sp, #20]	@ tmp228,
	str	lr, [sp, #4]	@ nFluentFrame,
	ldr	lr, [sp, #40]	@ nPmv, %sfp
	str	r8, [sp, #16]	@ tmp229,
	str	r7, [sp, #12]	@ tmp230,
	str	lr, [sp]	@ nPmv,
	blx	ip	@ D.37289
	cmp	r0, #0	@ ret
	bne	.L926	@,
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.37287, MemArrange.TotalMemUsed,
	str	r3, [r2, #8]	@ D.37287, MEM[(HI_S32 *)VdmMemSize_53(D) + 8B]
	ldr	r3, [r4, #24]	@ tmp306, CapItem
	add	r3, r3, #32768	@ D.37287, tmp306,
	str	r3, [fp, #8]	@ D.37287, MEM[(HI_S32 *)ScdMemSize_57(D) + 8B]
.L920:
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L914:
	mov	r3, #1	@ MinDnrFspNum,
	b	.L912	@
.L932:
	ldr	r1, [r8, #3612]	@ D.37287, extra_disp
	mov	r3, r4	@, extra_ref_tmp
	ldr	r0, [sp, #48]	@ nFluentFrame, %sfp
	mov	r2, r9	@, nMinFrame
	str	r4, [sp, #20]	@ extra_ref_tmp,
	str	r1, [sp, #24]	@ D.37287,
	str	r1, [sp, #12]	@ D.37287,
	str	r1, [sp]	@ D.37287,
	ldr	r1, [sp, #44]	@ nMiddleFrame, %sfp
	str	r0, [sp, #16]	@ nFluentFrame,
	mov	r0, #32	@,
	str	r4, [sp, #8]	@ extra_ref_tmp,
	str	r1, [sp, #4]	@ nMiddleFrame,
	ldr	r1, .L934+12	@,
	bl	dprint_vfmw	@
	b	.L918	@
.L911:
	mov	r3, #6	@ MinDnrFspNum,
	b	.L912	@
.L922:
	movw	r2, #5837	@,
	ldr	r1, .L934+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37286,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L924:
	movw	r2, #5855	@,
	ldr	r1, .L934+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37286,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L926:
	movw	r2, #5873	@,
	ldr	r1, .L934+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37286,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L931:
	mov	r3, r4	@, extra_ref_tmp
	mov	r2, ip	@, nPmv
	ldr	r1, .L934+20	@,
	mov	r0, #32	@,
	str	ip, [sp, #40]	@ nPmv, %sfp
	bl	dprint_vfmw	@
	ldr	ip, [sp, #40]	@ nPmv, %sfp
	cmp	ip, #17	@ nPmv,
	movlt	r3, ip	@ nPmv, nPmv
	movge	r3, #17	@ nPmv,
	str	r3, [sp, #40]	@ nPmv, %sfp
	b	.L917	@
.L933:
	mov	r2, r6	@, eCapLevel
	ldr	r1, .L934+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37286,
	b	.L920	@
.L935:
	.align	2
.L934:
	.word	CapItem
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.word	.LC128
	.word	.LC130
	.word	.LC127
	.word	.LC129
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r5, [r0, #12]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].Length
	ldr	r6, [r0, #8]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r0, #4]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
	beq	.L937	@,
	ldr	r3, .L972	@ tmp141,
	ldr	r3, [r3, #32]	@ D.37299, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.37299,
	beq	.L967	@,
	mov	r0, #0	@,
	blx	r3	@ D.37299
.L940:
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
.L937:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].Length
	ldr	r6, [r4, #24]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #20]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	bne	.L968	@,
.L941:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].Length
	ldr	r6, [r4, #40]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #36]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].VirAddr
	bne	.L969	@,
.L942:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].Length
	ldr	r6, [r4, #72]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #68]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].VirAddr
	bne	.L970	@,
.L943:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].Length
	ldr	r6, [r4, #56]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #52]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].VirAddr
	bne	.L971	@,
.L944:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #92]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].Length
	ldr	r6, [r4, #88]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #84]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].VirAddr
	beq	.L945	@,
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L945:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r2, .L972+4	@,
	ldr	r1, .L972+8	@,
	mov	r0, #70	@,
	bl	osal_free_irq	@
	ldr	r2, .L972+4	@,
	ldr	r1, .L972+12	@,
	mov	r0, #73	@,
	bl	osal_free_irq	@
	ldr	r2, .L972+4	@,
	ldr	r1, .L972+16	@,
	mov	r0, #93	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L971:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #48	@, pstDrvMem,
	bl	__memzero	@
	b	.L944	@
.L970:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #64	@, pstDrvMem,
	bl	__memzero	@
	b	.L943	@
.L969:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #32	@, pstDrvMem,
	bl	__memzero	@
	b	.L942	@
.L968:
	bl	SM_CloseSCDDrv	@
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, r4, r1	@, pstDrvMem,
	bl	__memzero	@
	b	.L941	@
.L967:
	mov	r0, r3	@, D.37299
	movw	r2, #6131	@,
	ldr	r1, .L972+20	@,
	bl	dprint_vfmw	@
	b	.L940	@
.L973:
	.align	2
.L972:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+3616
	.word	.LC131
	.word	.LC132
	.word	.LC133
	.word	.LC32
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	mov	r0, #0	@,
	.pad #36
	sub	sp, sp, #36	@,,
	add	r2, r4, #32	@, pstDrvMem,
	movt	r0, 4115	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L975	@,
	ldr	r2, [r4, #44]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].Length
	add	r6, r4, #64	@ __p, pstDrvMem,
	ldr	r1, [r4, #36]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].VirAddr
	ldr	r0, [r4, #40]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, #0	@,
	mov	r2, r6	@, __p
	movt	r0, 4116	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L1007	@,
	ldr	r5, .L1009	@ tmp165,
	ldr	r3, [r5, #16]	@ D.37320, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.37320,
	beq	.L1007	@,
	blx	r3	@ D.37320
	cmp	r0, #0	@,
	bne	.L1007	@,
	ldr	r2, [r4, #76]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 64B].Length
	add	r7, r4, #48	@ __p, pstDrvMem,
	ldr	r1, [r4, #68]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 64B].VirAddr
	ldr	r0, [r4, #72]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 64B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, #49152	@,
	mov	r2, r7	@, __p
	movt	r0, 4115	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L988	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #20600	@,
	mov	r2, r7	@, __p
	mov	r1, #4096	@,
	movt	r0, 4127	@,
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.37319,
	bne	.L988	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.37319
	add	r0, sp, #12	@ tmp211,,
	ldr	r2, .L1009+4	@,
	mov	r1, #20	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.37320, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.37320,
	beq	.L984	@,
	blx	r3	@ D.37320
	subs	r2, r0, #0	@ Size,
	ble	.L984	@,
	str	r6, [sp]	@ D.37319,
	mov	r1, r6	@, D.37319
	add	r0, sp, #12	@ tmp212,,
	mov	r3, r4	@, pstDrvMem
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L988	@,
	ldr	r2, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.37323, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.37323,
	beq	.L988	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	blx	r3	@ D.37323
	subs	r5, r0, #0	@ D.37319,
	bne	.L988	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ __p, pstDrvMem,
	bl	get_scd_msg_size	@
	str	r5, [sp]	@ D.37319,
	mov	r1, r5	@, D.37319
	mov	r3, r6	@, __p
	mov	r2, r0	@,
	ldr	r0, .L1009+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1007	@,
	ldr	r2, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].Length
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r3, #20600	@,
	mov	r2, #49152	@,
	movt	r3, 4127	@,
	movt	r2, 4115	@,
	ldr	r1, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].Length
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].PhyAddr
	bl	SM_OpenSCDDrv	@
	cmp	r0, #0	@,
	bne	.L1007	@,
	ldr	r5, .L1009+12	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L1009+16	@,
	mov	r0, #70	@,
	ldr	r1, .L1009+20	@,
	str	r5, [sp]	@ tmp200,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L1007	@,
	str	r5, [sp]	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L1009+24	@,
	mov	r0, #73	@,
	ldr	r1, .L1009+28	@,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.37319,
	bne	.L1007	@,
	str	r5, [sp]	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L1009+32	@,
	mov	r0, #93	@,
	ldr	r1, .L1009+36	@,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.37318
	bne	.L1008	@,
.L995:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1008:
	bl	DNR_Close	@
	mov	r0, r7	@ D.37318, D.37319
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1007:
	mov	r0, r6	@, __p
.L1006:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.37318,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L984:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L988:
	mov	r0, r7	@, __p
	b	.L1006	@
.L975:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.37318,
	b	.L995	@
.L1010:
	.align	2
.L1009:
	.word	g_vdm_hal_fun_ptr
	.word	.LC134
	.word	.LC135
	.word	.LANCHOR0+3616
	.word	.LC131
	.word	VCTRL_Isr_0
	.word	.LC132
	.word	VCTRL_Scd_Isr
	.word	.LC133
	.word	VCTRL_Dnr_Isr
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r5, .L1046	@ tmp301,
	ldr	r4, [r5, #4]	@ D.37340, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.37340,
	bne	.L1032	@,
	ldr	r7, .L1046+4	@ tmp300,
	mov	r2, #1024	@,
	mov	r6, r0	@ event_report, event_report
	ldr	r0, .L1046+8	@,
	str	r4, [sp, #4]	@ D.37340, p
	ldr	r1, [r7]	@, saved_command_line
	bl	strlcpy	@
	ldr	r1, .L1046+12	@,
	ldr	r0, .L1046+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.37338,
	str	r0, [sp, #4]	@ D.37338, p
	beq	.L1014	@,
	ldr	r1, .L1046+16	@,
	add	r0, sp, #4	@ tmp304,,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1034	@,
	add	r0, sp, #4	@ tmp305,,
	ldr	r1, .L1046+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1043	@,
	mov	r2, r4	@, D.37340
	mov	r1, r4	@, D.37340
	bl	simple_strtol	@
	mov	r2, r0	@ D.37337, D.37341
	str	r0, [r5, #3608]	@ D.37341, extra_ref
.L1018:
	add	r3, r2, #4992	@ D.37342, D.37337,
	movw	r1, #10000	@ tmp183,
	add	r3, r3, #8	@ D.37342, D.37342,
	movw	r8, #5000	@ tmp181,
	cmp	r3, r1	@ D.37342, tmp183
	bhi	.L1019	@,
	cmp	r2, r8	@ D.37337, tmp181
	movw	r3, #60536	@ tmp185,
.L1042:
	movt	r3, 65535	@ tmp190,
	movge	r2, r8	@ D.37340, tmp181
	cmp	r2, r3	@ D.37340, tmp190
	movlt	r2, r3	@ D.37340, tmp190
.L1015:
	str	r2, [r5, #3608]	@ D.37340, extra_ref
.L1017:
	mov	r2, #1024	@,
	ldr	r1, [r7]	@, saved_command_line
	ldr	r0, .L1046+8	@,
	mov	r8, #0	@ tmp192,
	str	r8, [sp, #4]	@ tmp192, p
	bl	strlcpy	@
	ldr	r1, .L1046+24	@,
	ldr	r0, .L1046+8	@,
	bl	strstr	@
	ldr	r9, .L1046	@ tmp195,
	cmp	r0, r8	@ D.37338,
	str	r0, [sp, #4]	@ D.37338, p
	beq	.L1020	@,
	ldr	r1, .L1046+16	@,
	add	r0, sp, #4	@ tmp306,,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1021	@,
	add	r0, sp, #4	@ tmp307,,
	ldr	r1, .L1046+20	@,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1044	@,
	mov	r2, r8	@, tmp192
	mov	r1, r8	@, tmp2
	bl	simple_strtol	@
	mov	r2, r0	@ D.37337, D.37341
	str	r0, [r9, #3612]	@ D.37341, extra_disp
.L1024:
	add	r3, r2, #4992	@ D.37342, D.37337,
	movw	r1, #10000	@ tmp213,
	add	r3, r3, #8	@ D.37342, D.37342,
	movw	r8, #5000	@ tmp211,
	cmp	r3, r1	@ D.37342, tmp213
	bhi	.L1025	@,
	cmp	r2, r8	@ D.37337, tmp211
	movw	r3, #60536	@ tmp215,
	movt	r3, 65535	@ tmp215,
	movlt	r4, r2	@ D.37340, D.37337
	movge	r4, r8	@ D.37340, tmp211
	cmp	r4, r3	@ D.37340, tmp215
	movlt	r4, r3	@ D.37340, tmp215
.L1021:
	str	r4, [r5, #3612]	@ D.37340, extra_disp
.L1023:
	ldr	r5, .L1046+28	@ tmp302,
	mov	r3, #0	@ tmp222,
	str	r3, [sp, #4]	@ tmp222, p
	ldr	r4, [r5, #-3540]	@ D.37339, extra_cmd
	cmp	r4, r3	@ D.37339,
	beq	.L1026	@,
	ldr	r3, .L1046+32	@ tmp228,
	ubfx	r2, r4, #1, #1	@ tmp231, D.37339,,
	and	r1, r4, #1	@ tmp226, D.37339,
	ubfx	r4, r4, #2, #1	@ tmp236, D.37339,,
	strb	r1, [r5, #-3536]	@ tmp226, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp231, g_not_direct_8x8_inference_flag
	strb	r4, [r5, #-3535]	@ tmp236, g_not_allow_H264FullPictureRepair_flag
.L1027:
	mov	r1, #152	@,
	ldr	r0, .L1046+36	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L1046	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L1046+40	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	ldr	r3, .L1046+28	@ tmp273,
	mov	r1, #75497472	@,
	ldreq	r2, .L1046+44	@ tmp277,
	mov	r0, #-2013265920	@,
	ldr	r4, .L1046	@ tmp278,
	streq	r2, [r3, #-3528]	@ tmp277, g_event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	mov	r1, #4	@,
	ldr	r0, .L1046+48	@,
	bl	__memzero	@
	add	r0, r4, #52	@, tmp278,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1032	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	add	r0, r4, #248	@, tmp278,
	bl	OSAL_InitEvent	@
	ldr	r2, .L1046+52	@,
	ldr	r1, .L1046+56	@,
	add	r0, r4, #40	@, tmp278,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.37337,
	bne	.L1033	@,
	add	r0, r4, #40	@, tmp278,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp295,
	str	r3, [r4, #4]	@ tmp295, s_VfmwCTrl.s32IsVCTRLOpen
.L1013:
	mov	r0, r5	@, D.37337
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1026:
	ldr	r1, [r7]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1046+8	@,
	bl	strlcpy	@
	ldr	r1, .L1046+60	@,
	ldr	r0, .L1046+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.37338,
	str	r0, [sp, #4]	@ D.37338, p
	beq	.L1027	@,
	ldr	r1, .L1046+16	@,
	add	r0, sp, #4	@ tmp308,,
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r5, #-3540]	@ D.37339, extra_cmd
	beq	.L1029	@,
	add	r0, sp, #4	@ tmp309,,
	ldr	r1, .L1046+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1045	@,
	mov	r2, r4	@, D.37339
	mov	r1, r4	@, tmp2
	bl	simple_strtol	@
	str	r0, [r5, #-3540]	@ D.37339, extra_cmd
.L1029:
	ldr	r3, .L1046+32	@ tmp260,
	ubfx	r2, r0, #1, #1	@ tmp263, D.37339,,
	and	r1, r0, #1	@ tmp258, D.37339,
	ubfx	r0, r0, #2, #1	@ tmp268, D.37339,,
	strb	r1, [r5, #-3536]	@ tmp258, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp263, g_not_direct_8x8_inference_flag
	strb	r0, [r5, #-3535]	@ tmp268, g_not_allow_H264FullPictureRepair_flag
	b	.L1027	@
.L1020:
	ldr	r2, [r9, #3612]	@ D.37337, extra_disp
	b	.L1024	@
.L1014:
	ldr	r2, [r5, #3608]	@ D.37337, extra_ref
	b	.L1018	@
.L1025:
	ldr	r1, .L1046+64	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r4, [r5, #3612]	@ extra_disp, extra_disp
	movw	r3, #60536	@ tmp220,
	cmp	r4, r8	@ extra_disp, tmp211
	movt	r3, 65535	@ tmp220,
	movge	r4, r8	@ D.37340, tmp211
	cmp	r4, r3	@ D.37340, tmp220
	movlt	r4, r3	@ D.37340, tmp220
	b	.L1021	@
.L1019:
	ldr	r1, .L1046+68	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #3608]	@ extra_ref, extra_ref
	movw	r3, #60536	@ tmp190,
	cmp	r2, r8	@ extra_ref, tmp181
	b	.L1042	@
.L1034:
	mov	r2, r4	@ D.37340, D.37340
	b	.L1015	@
.L1032:
	mvn	r5, #0	@ D.37337,
	mov	r0, r5	@, D.37337
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1043:
	movw	r3, #7132	@,
	ldr	r2, .L1046+72	@,
	ldr	r1, .L1046+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1017	@
.L1044:
	movw	r3, #7173	@,
	ldr	r2, .L1046+80	@,
	ldr	r1, .L1046+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1023	@
.L1033:
	add	r0, r4, #52	@, tmp278,
	mvn	r5, #0	@ D.37337,
	bl	CloseDrivers	@
	b	.L1013	@
.L1045:
	movw	r3, #7223	@,
	ldr	r2, .L1046+84	@,
	ldr	r1, .L1046+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1027	@
.L1047:
	.align	2
.L1046:
	.word	.LANCHOR0
	.word	saved_command_line
	.word	.LANCHOR0+3620
	.word	.LC136
	.word	.LC137
	.word	.LC138
	.word	.LC141
	.word	.LANCHOR3
	.word	.LANCHOR2
	.word	.LANCHOR0+4
	.word	.LANCHOR3-3532
	.word	VCTRL_EventReport
	.word	.LANCHOR0+3604
	.word	VFMW_CTRL_thread_proc
	.word	.LC144
	.word	.LC143
	.word	.LC142
	.word	.LC140
	.word	.LANCHOR1+112
	.word	.LC139
	.word	.LANCHOR1+132
	.word	.LANCHOR1+152
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r3, r2, asl #1	@ D.37356, Threshould,
	movw	r6, #21846	@ tmp124,
	cmp	r2, #0	@ Threshould,
	movt	r6, 21845	@ tmp124,
	add	r5, r2, #7	@ tmp119, Threshould,
	smull	r6, r7, r3, r6	@ tmp123, D.37356, tmp124
	movge	r5, r2	@ Threshould, Threshould
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r5, asr #3	@ tmp120, Threshould,
	mov	r6, r0	@ CurMode, CurMode
	mov	r4, r2	@ Threshould, Threshould
	str	r2, [sp]	@ Threshould,
	mov	r8, r1	@ StreamAmount, StreamAmount
	str	r1, [sp, #4]	@ StreamAmount,
	sub	r3, r7, r3, asr #31	@,, D.37356,
	ldr	r1, .L1057	@,
	mov	r2, r5	@, tmp120
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	cmp	r6, #3	@ CurMode,
	beq	.L1055	@,
	cmp	r4, r8	@ Threshould, StreamAmount
	movge	r4, r6	@ CurMode, CurMode
	blt	.L1056	@,
.L1050:
	mov	r2, r6	@, CurMode
	mov	r3, r4	@, CurMode
	ldr	r1, .L1057+4	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, CurMode
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1056:
	ldr	r1, .L1057+8	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
.L1054:
	mov	r4, #3	@ CurMode,
	b	.L1050	@
.L1055:
	cmp	r5, r8	@ tmp120, StreamAmount
	ble	.L1054	@,
	ldr	r1, .L1057+12	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ CurMode,
	b	.L1050	@
.L1058:
	.align	2
.L1057:
	.word	.LC145
	.word	.LC148
	.word	.LC147
	.word	.LC146
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1062	@ tmp117,
	ldr	r3, [r3]	@ D.37365, s_pstVfmwChan
	cmp	r3, #0	@ D.37365,
	beq	.L1061	@,
	add	r3, r3, #217088	@ D.37366, D.37365,
	add	r3, r3, #432	@ D.37366, D.37366,
	subs	r0, r0, r3	@ D.37363, pCtx, D.37366
	mvnne	r0, #0	@ D.37363,
	bx	lr	@
.L1061:
	mvn	r0, #0	@ D.37363,
	bx	lr	@
.L1063:
	.align	2
.L1062:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1071	@ tmp122,
	ldr	r3, [r3]	@ D.37373, s_pstVfmwChan
	cmp	r3, #0	@ D.37373,
	beq	.L1069	@,
	ldr	r2, [r3, #176]	@ D.37371, _16->stChanMem_vdh.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.37371
	blt	.L1067	@,
	ldr	r1, [r3, #180]	@ _16->stChanMem_vdh.Length, _16->stChanMem_vdh.Length
	add	r2, r2, r1	@ D.37371, D.37371, _16->stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, D.37371
	blt	.L1070	@,
.L1067:
	ldr	r2, [r3, #192]	@ D.37371, _16->stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.37371
	blt	.L1069	@,
	ldr	r3, [r3, #196]	@ _16->stChanMem_scd.Length, _16->stChanMem_scd.Length
	add	r2, r2, r3	@ D.37371, D.37371, _16->stChanMem_scd.Length
	cmp	r0, r2	@ PhyAddr, D.37371
	movlt	r0, #0	@ D.37370,
	mvnge	r0, #0	@ D.37370,
	bx	lr	@
.L1069:
	mvn	r0, #0	@ D.37370,
	bx	lr	@
.L1070:
	mov	r0, #0	@ D.37370,
	bx	lr	@
.L1072:
	.align	2
.L1071:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	DecChanProcessPts
	.type	DecChanProcessPts, %function
DecChanProcessPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1	@ pSegMan, pSegMan
	ldr	r5, .L1093	@ tmp232,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ ChanID, ChanID
	ldr	ip, [r5, r0, asl #2]	@ D.37376, s_pstVfmwChan
	ldr	r1, [ip, #32]	@ D.37377, _9->stChanCfg.eVidStd
	sub	r3, r1, #2	@ D.37378, D.37377,
	cmp	r1, #6	@ D.37377,
	cmpne	r3, #1	@, D.37378,
	bls	.L1074	@,
	ldrd	r2, [r4, #32]	@ D.37380, pSegMan,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp165,
	cmp	r3, r1	@ D.37380,
	cmpeq	r2, r0	@ D.37380, tmp165
	beq	.L1089	@,
	add	r1, ip, #944	@ tmp224, D.37376,
	strd	r2, [r1]	@ D.37380, _9->stSynExtraData.pts
.L1076:
	ldrd	r8, [r4, #48]	@ D.37380, pSegMan,
	add	r5, ip, #960	@ tmp226, D.37376,
	add	lr, ip, #976	@ tmp228, D.37376,
	ldr	r1, .L1093+4	@,
	mov	r0, #29	@,
	strd	r8, [r5]	@ D.37380, _9->stSynExtraData.Usertag
	ldrd	r6, [r4, #56]	@ D.37380, pSegMan,
	strd	r6, [lr]	@ D.37380, _9->stSynExtraData.DispTime
	ldr	lr, [r4, #64]	@ D.37381, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	lr, [ip, #992]	@ D.37381, _9->stSynExtraData.DispEnableFlag
	ldr	lr, [r4, #68]	@ D.37381, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	lr, [ip, #996]	@ D.37381, _9->stSynExtraData.DispFrameDistance
	ldr	lr, [r4, #72]	@ D.37381, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	lr, [ip, #1000]	@ D.37381, _9->stSynExtraData.DistanceBeforeFirstFrame
	ldr	lr, [r4, #76]	@ D.37381, pSegMan_16(D)->CurrSeg.GopNum
	str	lr, [ip, #1016]	@ D.37381, _9->stSynExtraData.GopNum
	strd	r8, [sp]	@ D.37380,
	bl	dprint_vfmw	@
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1074:
	add	r0, ip, #1264	@, D.37376,
	add	r2, r4, #8	@, pSegMan,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	beq	.L1090	@,
.L1077:
	ldr	r1, [r5, r6, asl #2]	@ D.37376, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _74->stChanCfg.eVidStd, _74->stChanCfg.eVidStd
	cmp	r3, #3	@ _74->stChanCfg.eVidStd,
	addeq	r0, r1, #960	@ tmp231, D.37376,
	beq	.L1082	@,
.L1081:
	ldrd	r2, [r4, #32]	@ D.37380, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp212,
	add	r0, r1, #960	@ tmp231, D.37376,
	cmp	r3, r7	@ D.37380,
	cmpeq	r2, r6	@ D.37380, tmp212
	strned	r2, [r0, #-8]	@ D.37380, tmp231,
.L1083:
	ldrd	r2, [r4, #48]	@ D.37380, pSegMan,
	add	lr, r1, #976	@ tmp216, D.37376,
	add	ip, r1, #992	@ tmp218, D.37376,
	strd	r2, [lr, #-8]	@ D.37380, tmp216,
	ldrd	r2, [r4, #56]	@ D.37380, pSegMan,
	strd	r2, [ip, #-8]	@ D.37380, tmp218,
	ldr	r3, [r4, #64]	@ D.37381, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.37381, _96->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.37381, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.37381, _96->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.37381, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.37381, _96->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.37381, pSegMan_16(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.37381, _96->stSynExtraData.NextGopNum
.L1082:
	ldrd	r2, [r0]	@, _97->stSynExtraData.Usertag
	mov	r0, #29	@,
	ldr	r1, .L1093+8	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L1090:
	ldr	ip, [r5, r6, asl #2]	@ D.37376, s_pstVfmwChan
	add	lr, ip, #960	@ tmp230, D.37376,
	ldr	r3, [ip, #32]	@ _37->stChanCfg.eVidStd, _37->stChanCfg.eVidStd
	cmp	r3, #3	@ _37->stChanCfg.eVidStd,
	beq	.L1091	@,
	ldrd	r2, [lr, #-8]	@ D.37380, tmp230,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp179,
	cmp	r3, r1	@ D.37380,
	cmpeq	r2, r0	@ D.37380, tmp179
	beq	.L1092	@,
	add	r1, ip, #944	@ tmp183, D.37376,
	strd	r2, [r1]	@ D.37380, _37->stSynExtraData.pts
.L1079:
	add	r7, ip, #976	@ tmp190, D.37376,
	mvn	r0, #0	@ tmp186,
	mvn	r1, #0	@,
	strd	r0, [lr, #-8]	@ tmp186, tmp230,
	ldrd	r10, [r7, #-8]	@ _37->stSynExtraData.NextUsertag, tmp190,
	add	r8, ip, #992	@ tmp195, D.37376,
	ldr	r1, .L1093+12	@,
	mov	r0, #29	@,
	strd	r10, [lr]	@ _37->stSynExtraData.NextUsertag, _37->stSynExtraData.Usertag
	ldrd	r8, [r8, #-8]	@ _37->stSynExtraData.NextDispTime, tmp195,
	strd	r8, [r7]	@ _37->stSynExtraData.NextDispTime, _37->stSynExtraData.DispTime
	ldr	r9, [ip, #1004]	@ _37->stSynExtraData.NextDispEnableFlag, _37->stSynExtraData.NextDispEnableFlag
	ldr	r8, [ip, #1008]	@ _37->stSynExtraData.NextDispFrameDistance, _37->stSynExtraData.NextDispFrameDistance
	ldr	r7, [ip, #1012]	@ _37->stSynExtraData.NextDistanceBeforeFirstFrame, _37->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	lr, [ip, #1020]	@ _37->stSynExtraData.NextGopNum, _37->stSynExtraData.NextGopNum
	str	r9, [ip, #992]	@ _37->stSynExtraData.NextDispEnableFlag, _37->stSynExtraData.DispEnableFlag
	str	r8, [ip, #996]	@ _37->stSynExtraData.NextDispFrameDistance, _37->stSynExtraData.DispFrameDistance
	str	r7, [ip, #1000]	@ _37->stSynExtraData.NextDistanceBeforeFirstFrame, _37->stSynExtraData.DistanceBeforeFirstFrame
	str	lr, [ip, #1016]	@ _37->stSynExtraData.NextGopNum, _37->stSynExtraData.GopNum
	bl	dprint_vfmw	@
	ldr	r1, [r5, r6, asl #2]	@ D.37376, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _58->stChanCfg.eVidStd, _58->stChanCfg.eVidStd
	cmp	r3, #3	@ _58->stChanCfg.eVidStd,
	bne	.L1081	@,
	ldrd	r2, [r4, #32]	@ D.37380, pSegMan,
	add	lr, r1, #960	@ tmp205, D.37376,
	add	ip, r1, #976	@ tmp207, D.37376,
	add	r0, r1, #992	@ tmp209, D.37376,
	strd	r2, [lr, #-8]	@ D.37380, tmp205,
	ldrd	r2, [r4, #48]	@ D.37380, pSegMan,
	strd	r2, [ip, #-8]	@ D.37380, tmp207,
	ldrd	r2, [r4, #56]	@ D.37380, pSegMan,
	strd	r2, [r0, #-8]	@ D.37380, tmp209,
	ldr	r3, [r4, #64]	@ D.37381, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.37381, _58->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.37381, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.37381, _58->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.37381, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.37381, _58->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.37381, pSegMan_16(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.37381, _58->stSynExtraData.NextGopNum
	b	.L1077	@
.L1089:
	add	r3, ip, #944	@ tmp167, D.37376,
	ldrd	r2, [r3]	@ D.37380, _9->stSynExtraData.pts
	b	.L1076	@
.L1091:
	ldrd	r2, [lr, #-8]	@ D.37380, tmp230,
	add	r1, ip, #944	@ tmp176, D.37376,
	strd	r2, [r1]	@ D.37380, _37->stSynExtraData.pts
	b	.L1079	@
.L1092:
	add	r3, ip, #944	@ tmp181, D.37376,
	ldrd	r2, [r3]	@ D.37380, _37->stSynExtraData.pts
	b	.L1079	@
.L1094:
	.align	2
.L1093:
	.word	.LANCHOR0
	.word	.LC151
	.word	.LC150
	.word	.LC149
	.fnend
	.size	DecChanProcessPts, .-DecChanProcessPts
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1105	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ tmp124, s_pstVfmwChan
	ldr	r1, [r3, #880]	@ D.37394, _5->eVidStd
	sub	r3, r1, #10	@ D.37395, D.37394,
	cmp	r3, #2	@ D.37395,
	bhi	.L1096	@,
	ldr	r3, .L1105+4	@ tmp126,
	ldr	r2, [r3, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r2, #1	@ D.37392, g_VdmCharacter,
	beq	.L1104	@,
.L1096:
	sub	r3, r1, #14	@ D.37394, D.37394,
	bics	r3, r3, #4	@ tmp139, D.37394,
	movne	r3, #1	@ tmp131,
	moveq	r3, #0	@ tmp131,
	cmp	r1, #4	@ D.37394,
	moveq	r3, #0	@, tmp136
	andne	r3, r3, #1	@,, tmp136, tmp131
	cmp	r3, #0	@ tmp136,
	beq	.L1104	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r3, #1	@ D.37392,
	moveq	r3, #0	@ D.37392,
	mov	r0, r3	@, D.37392
	ldmfd	sp!, {r4, pc}	@
.L1104:
	mov	r0, r3	@, D.37392
	bx	lr	@
.L1106:
	.align	2
.L1105:
	.word	.LANCHOR0
	.word	.LANCHOR3
	.fnend
	.size	DecChanCheckDecParam, .-DecChanCheckDecParam
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	bne	.L1138	@,
	ldr	r7, .L1144	@ tmp201,
	ldr	r3, [r7]	@ D.37401, s_pstVfmwChan
	cmp	r3, #0	@ D.37401,
	beq	.L1139	@,
	ldr	r2, [r3, #8]	@ _13->s32IsRun, _13->s32IsRun
	cmp	r2, #1	@ _13->s32IsRun,
	bne	.L1140	@,
	ldr	r4, [r3, #16]	@ D.37402, _13->s32StopSyntax
	cmp	r4, #0	@ D.37402,
	bne	.L1141	@,
	str	r4, [r3, #672]	@ D.37402, _13->s32NoStreamFlag
	bl	OSAL_GetTimeInMs	@
	ldr	r6, .L1144+4	@ tmp203,
	ldr	r2, .L1144+8	@ tmp162,
	ldr	r3, [r6, #-3520]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.37403, last_rec_pos_time, currtime
	mov	r8, r0	@ currtime,
	cmp	r3, r2	@ D.37403, g_TraceBsPeriod
	mov	r0, r4	@, D.37402
	bls	.L1113	@,
	str	r8, [r6, #-3520]	@ currtime, last_rec_pos_time
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.37400,
	mov	r5, r0	@ D.37400,
	bne	.L1114	@,
	mov	r2, r4	@, D.37402
	ldr	r1, .L1144+12	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
.L1128:
	mov	r0, r5	@, D.37400
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1113:
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.37400,
	mov	r5, r0	@ D.37400,
	beq	.L1128	@,
	mov	r0, r4	@, D.37402
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	mvnne	r5, #2	@ D.37400,
	bne	.L1128	@,
.L1123:
	ldr	r3, [r7]	@ D.37401, s_pstVfmwChan
	add	r9, r3, #1024	@ tmp202, D.37401,
	ldrb	r2, [r3, #1025]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec, MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec
	cmp	r2, #0	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec,
	bne	.L1115	@,
	ldr	r5, [r3, #1616]	@ _33->stSynExtraData.s32DSDWaitFlag, _33->stSynExtraData.s32DSDWaitFlag
	cmp	r5, #0	@ _33->stSynExtraData.s32DSDWaitFlag,
	beq	.L1142	@,
.L1115:
	ldrd	r4, [r9, #48]	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].CurrSeg.Usertag, tmp202,
	mov	r0, #29	@,
	ldrd	r2, [r9, #32]	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].CurrSeg.Pts, tmp202,
	ldr	r1, .L1144+16	@,
	strd	r4, [sp]	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].CurrSeg.Usertag,
	bl	dprint_vfmw	@
	mov	r1, r9	@, tmp202
	mov	r0, #0	@,
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r7]	@ D.37401, s_pstVfmwChan
	mov	r0, r9	@, tmp202
	add	r2, r3, #217088	@, D.37401,
	add	r2, r2, #432	@,,
	ldr	r1, [r3, #880]	@, _55->eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1119	@,
.L1120:
	mov	r5, #0	@ D.37400,
	b	.L1128	@
.L1114:
	mov	r0, r4	@, D.37402
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@ D.37402,
	moveq	r4, r0	@ rec_pos_print_flag, D.37402
	beq	.L1123	@,
	mov	r2, r4	@, D.37402
	ldr	r1, .L1144+20	@,
	mov	r0, #23	@,
	mvn	r5, #2	@ D.37400,
	bl	dprint_vfmw	@
	b	.L1128	@
.L1142:
	add	r1, r9, #8	@, tmp202,
	mov	r0, r5	@, _33->stSynExtraData.s32DSDWaitFlag
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L1115	@,
	cmp	r4, #1	@ rec_pos_print_flag,
	beq	.L1143	@,
.L1116:
	ldr	r2, .L1144+24	@ tmp176,
	ldr	r3, [r6, #-3516]	@ last_rec_pos_report_time, last_rec_pos_report_time
	ldr	r1, .L1144+4	@ tmp173,
	ldr	r2, [r2]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r3, r3, r8	@ D.37403, last_rec_pos_report_time, currtime
	cmp	r3, r2	@ D.37403, g_NoStreamReportPeriod
	bls	.L1117	@,
	ldr	r3, [r1, #-3528]	@ D.37406, g_event_report
	cmp	r3, #0	@ D.37406,
	beq	.L1118	@,
	mov	r2, #0	@,
	mov	r1, #117	@,
	mov	r0, r2	@,
	blx	r3	@ D.37406
.L1118:
	str	r8, [r6, #-3516]	@ currtime, last_rec_pos_report_time
.L1117:
	ldr	r3, [r7]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp182,
	mvn	r5, #3	@ D.37400,
	str	r2, [r3, #672]	@ tmp182, _48->s32NoStreamFlag
	b	.L1128	@
.L1119:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L1144+28	@ tmp197,
	ldr	r3, [r6, #-3512]	@ last_rec_pos_decparam_time, last_rec_pos_decparam_time
	ldr	ip, .L1144+4	@ tmp194,
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.37403, last_rec_pos_decparam_time, currtime
	mov	r2, r0	@ currtime,
	cmp	r3, r1	@ D.37403, g_TraceFramePeriod
	bls	.L1120	@,
	mov	r0, #0	@,
	str	r2, [ip, #-3512]	@ currtime, last_rec_pos_decparam_time
	mov	r5, r0	@ D.37400,
	bl	VCTRL_GetDecParam	@
	b	.L1128	@
.L1140:
	ldr	r3, .L1144+32	@,
	movw	r2, #6597	@,
	ldr	r1, .L1144+36	@,
	mvn	r5, #0	@ D.37400,
	bl	dprint_vfmw	@
	b	.L1128	@
.L1141:
	ldr	r3, .L1144+40	@,
	movw	r2, #6598	@,
	ldr	r1, .L1144+36	@,
	mvn	r5, #0	@ D.37400,
	bl	dprint_vfmw	@
	b	.L1128	@
.L1138:
	ldr	r3, .L1144+44	@,
	movw	r2, #6595	@,
	ldr	r1, .L1144+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.37400,
	b	.L1128	@
.L1139:
	ldr	r3, .L1144+48	@,
	movw	r2, #6596	@,
	ldr	r1, .L1144+36	@,
	mvn	r5, #0	@ D.37400,
	bl	dprint_vfmw	@
	b	.L1128	@
.L1143:
	mov	r2, r5	@, _33->stSynExtraData.s32DSDWaitFlag
	ldr	r1, .L1144+52	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L1116	@
.L1145:
	.align	2
.L1144:
	.word	.LANCHOR0
	.word	.LANCHOR3
	.word	g_TraceBsPeriod
	.word	.LC153
	.word	.LC156
	.word	.LC154
	.word	g_NoStreamReportPeriod
	.word	g_TraceFramePeriod
	.word	.LC102
	.word	.LC5
	.word	.LC152
	.word	.LC69
	.word	.LC92
	.word	.LC155
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, .L1169	@ tmp152,
	mvn	r0, #0	@ ret,
	ldr	r6, .L1169+4	@ tmp153,
	mov	r7, #0	@ tmp155,
	ldr	r9, .L1169	@ tmp156,
	mov	r8, #1	@ tmp157,
	ldr	r3, [r5]	@ D.37423, s_pstVfmwChan
	cmp	r3, #0	@ D.37423,
	ldrne	r3, [r3, #12]	@ D.37426, _69->s32Priority
.L1148:
	cmp	r3, #0	@ D.37426,
	str	r7, [r6, #-3508]	@ tmp155, ChanPriTab
	str	r8, [r5, #48]	@ tmp157, s_VfmwCTrl.s32ThisChanIDPlus1
	mov	r3, #0	@ tmp130,
	ldr	r2, .L1169	@ tmp131,
	ble	.L1150	@,
	ldr	r2, [r9]	@ D.37423, s_pstVfmwChan
	cmp	r2, r3	@ D.37423,
	moveq	r3, r2	@ D.37426, D.37423
	beq	.L1148	@,
	ldr	r1, [r2, #8]	@ _28->s32IsRun, _28->s32IsRun
	cmp	r1, #1	@ _28->s32IsRun,
	bne	.L1148	@,
	ldr	r3, [r2, #52]	@ _28->stChanCfg.s32ChanStrmOFThr, _28->stChanCfg.s32ChanStrmOFThr
	cmp	r3, #0	@ _28->stChanCfg.s32ChanStrmOFThr,
	ble	.L1152	@,
	ldr	r0, [r2, #56]	@ _28->stChanCfg.s32DecMode, _28->stChanCfg.s32DecMode
	cmp	r0, #0	@ _28->stChanCfg.s32DecMode,
	beq	.L1166	@,
.L1152:
	mov	r4, #200	@ D.37422,
	b	.L1156	@
.L1167:
	subs	r4, r4, #1	@ D.37422, D.37422,
	beq	.L1165	@,
.L1156:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	beq	.L1167	@,
.L1165:
	ldr	r3, [r6, #-3508]	@ D.37426, ChanPriTab
	b	.L1148	@
.L1150:
	str	r3, [r2, #48]	@ tmp130, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1166:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1168	@,
.L1153:
	ldr	r4, [r5]	@ D.37423, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [r4, #52]	@, _35->stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	bl	GetNextDecodeMode	@
	ldr	r3, [r5]	@ D.37423, s_pstVfmwChan
	str	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	ldr	r2, [r3, #896]	@ _42->stSynExtraData.s32DecMode, _42->stSynExtraData.s32DecMode
	cmp	r2, #0	@ _42->stSynExtraData.s32DecMode,
	strne	r7, [r3, #892]	@ tmp155, _42->stSynExtraData.s32OutErrThr
	strne	r7, [r3, #888]	@ tmp155, _42->stSynExtraData.s32RefErrThr
	ldreq	r2, [r3, #48]	@ D.37424, _42->stChanCfg.s32ChanErrThr
	streq	r2, [r3, #892]	@ D.37424, _42->stSynExtraData.s32OutErrThr
	streq	r2, [r3, #888]	@ D.37424, _42->stSynExtraData.s32RefErrThr
	b	.L1152	@
.L1168:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L1153	@
.L1170:
	.align	2
.L1169:
	.word	.LANCHOR0
	.word	.LANCHOR3
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, #100	@ tmp118,
	ldr	r4, .L1183	@ tmp139,
	ldr	r0, [r4, #164]	@ D.37429, g_SleepTime
	str	r3, [r4, #44]	@ tmp118, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ D.37429,
	ble	.L1172	@,
	bl	msleep	@
.L1172:
	ldr	r0, .L1183+4	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r3, [r4, #156]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp123,
	str	r2, [r4, #44]	@ tmp123, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1181	@,
.L1173:
	mov	r3, #102	@ tmp127,
	str	r3, [r4, #44]	@ tmp127, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	ldr	r3, .L1183+8	@ tmp128,
	ldr	r0, [r3, #28]	@ D.37431, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.37431,
	beq	.L1174	@,
	blx	r0	@ D.37431
	ldr	r3, .L1183+12	@ tmp129,
	ldr	r3, [r3, #56]	@ D.37432, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.37432,
	beq	.L1182	@,
.L1175:
	mov	r0, #0	@,
	blx	r3	@ D.37432
.L1176:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1183+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1183+16	@,
	mov	r3, #105	@ tmp134,
	str	r3, [r4, #44]	@ tmp134, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1181:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1173	@
.L1174:
	movw	r2, #549	@,
	ldr	r1, .L1183+20	@,
	bl	dprint_vfmw	@
	ldr	r3, .L1183+12	@ tmp129,
	ldr	r3, [r3, #56]	@ D.37432, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.37432,
	bne	.L1175	@,
.L1182:
	mov	r0, r3	@, D.37432
	mov	r2, #556	@,
	ldr	r1, .L1183+24	@,
	bl	dprint_vfmw	@
	b	.L1176	@
.L1184:
	.align	2
.L1183:
	.word	.LANCHOR0
	.word	.LANCHOR3-3504
	.word	g_dnr_hal_fun_ptr
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+248
	.word	.LC157
	.word	.LC32
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r1, sp, #8	@ tmp134,,
	mov	r3, #4	@ tmp133,
	mov	r0, sp	@,
	mov	r5, #0	@ tmp132,
	str	r3, [r1, #-4]!	@ tmp133, enChipVersion
	movw	r7, #10175	@ tmp200,
	str	r5, [sp]	@ tmp132, enChipType
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r4, .L1218	@ tmp193,
	mov	r6, #12288	@ tmp201,
	movt	r7, 9	@ tmp200,
	movt	r6, 65056	@ tmp201,
.L1186:
	ldr	r1, .L1218+4	@,
	mov	r0, #2	@,
	mov	r3, #0	@ tmp137,
	str	r3, [r4, #44]	@ tmp137, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@ D.37437, s_VfmwCTrl.eTaskCommand
	mov	r1, #2	@ tmp140,
	mov	r2, #1	@ tmp142,
	cmp	r3, r1	@ D.37437,
	str	r1, [r4, #32]	@ tmp140, s_VfmwCTrl.eTaskState
	str	r2, [r4, #44]	@ tmp142, s_VfmwCTrl.s32ThreadPos
	bne	.L1193	@,
	b	.L1187	@
.L1191:
	mov	r3, #2	@ tmp173,
	str	r3, [r4, #44]	@ tmp173, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	ldr	r1, .L1218+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@ D.37437, s_VfmwCTrl.eTaskCommand
	mov	r2, #1	@ tmp176,
	str	r2, [r4, #44]	@ tmp176, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.37437,
	beq	.L1187	@,
.L1193:
	cmp	r3, #3	@ D.37437,
	beq	.L1188	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sp, #4]	@ enChipVersion, enChipVersion
	cmp	r3, #5	@ enChipVersion,
	bne	.L1191	@,
	clz	r3, r5	@ tmp150, time2
	rsb	r2, r5, r0	@ D.37439, time2, time2
	mov	r3, r3, lsr #5	@ tmp150, tmp150,
	cmp	r2, r7	@ D.37439, tmp200
	orrhi	r3, r3, #1	@,, tmp153, tmp150
	cmp	r3, #0	@ tmp153,
	beq	.L1191	@,
	ldr	r3, [r6, #92]	@ reg_val, MEM[(volatile unsigned int *)4263522396B]
	mov	r5, r0	@ time2, time2
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.37439, reg_val,
	strne	r3, [r6, #92]	@ D.37439, MEM[(volatile unsigned int *)4263522396B]
	ldr	r3, [r6, #96]	@ reg_val, MEM[(volatile unsigned int *)4263522400B]
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.37439, reg_val,
	strne	r3, [r6, #96]	@ D.37439, MEM[(volatile unsigned int *)4263522400B]
	movne	r5, r0	@ time2, time2
	b	.L1191	@
.L1187:
	ldr	r1, .L1218+12	@,
	mov	r0, #2	@,
	mov	r3, #4	@ tmp179,
	mov	r8, #5	@ tmp194,
	str	r3, [r4, #44]	@ tmp179, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r3, #1	@ tmp182,
	str	r3, [r4, #32]	@ tmp182, s_VfmwCTrl.eTaskState
	b	.L1194	@
.L1217:
	bl	msleep	@
.L1194:
	ldr	r1, .L1218+16	@,
	mov	r0, #22	@,
	str	r8, [r4, #44]	@ tmp194, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@ D.37437, s_VfmwCTrl.eTaskCommand
	mov	r0, #10	@,
	cmp	r3, #1	@ D.37437,
	beq	.L1186	@,
	cmp	r3, #3	@ D.37437,
	bne	.L1217	@,
.L1188:
	ldr	r1, .L1218+20	@,
	mov	r0, #2	@,
	mov	r3, #6	@ tmp188,
	str	r3, [r4, #44]	@ tmp188, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp191,
	mov	r0, r3	@, tmp191
	str	r3, [r4, #32]	@ tmp191, s_VfmwCTrl.eTaskState
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1219:
	.align	2
.L1218:
	.word	.LANCHOR0
	.word	.LC158
	.word	.LC159
	.word	.LC160
	.word	.LC161
	.word	.LC162
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1229	@ tmp119,
	ldr	r0, [r3, r0, asl #2]	@ D.37451, s_pstVfmwChan
	cmp	r0, #0	@ D.37451,
	bxeq	lr	@
	ldr	r3, [r0, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r3, #18	@ _5->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _5->eVidStd
	b	.L1228	@
.L1223:
	.word	.L1226
	.word	.L1228
	.word	.L1224
	.word	.L1225
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1228
	.word	.L1226
.L1226:
	add	r0, r0, #217088	@ D.37450, D.37451,
	add	r0, r0, #440	@ D.37450, D.37450,
	bx	lr	@
.L1225:
	add	r0, r0, #290816	@ D.37450, D.37451,
	add	r0, r0, #48	@ D.37450, D.37450,
	bx	lr	@
.L1224:
	add	r0, r0, #239616	@ D.37450, D.37451,
	add	r0, r0, #512	@ D.37450, D.37450,
	bx	lr	@
.L1228:
	mov	r0, #0	@ D.37450,
	bx	lr	@
.L1230:
	.align	2
.L1229:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L1249	@ tmp142,
	ldr	ip, [r5, r0, asl #2]	@ D.37457, s_pstVfmwChan
	cmp	ip, #0	@ D.37457,
	beq	.L1247	@,
	ldr	lr, [ip, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	lr, #18	@ _4->eVidStd,
	ldrls	pc, [pc, lr, asl #2]	@ _4->eVidStd
	b	.L1243	@
.L1235:
	.word	.L1238
	.word	.L1243
	.word	.L1236
	.word	.L1237
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1243
	.word	.L1238
.L1238:
	add	ip, ip, #217088	@ D.37461, D.37457,
	add	ip, ip, #440	@ D.37461, D.37461,
.L1233:
	cmp	ip, #0	@ D.37461,
	beq	.L1239	@,
	mov	lr, r2	@ pReadImgNum, pReadImgNum
	mov	r4, r0	@ ChanID, ChanID
	mov	r2, r3	@, pNewImgNum
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r0, ip	@, D.37461
	mov	r1, lr	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r3, [r5, r4, asl #2]	@ D.37457, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ D.37458, _13->eVidStd
	cmp	r2, #0	@ D.37458,
	beq	.L1248	@,
	cmp	r2, #15	@ D.37458,
	movne	r3, #2	@ tmp138,
	strne	r3, [r6]	@ tmp138, *pRefImgNum_10(D)
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, .L1249+4	@,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L1243:
	mov	ip, #0	@ D.37461,
.L1239:
	str	ip, [r3]	@ D.37461, *pNewImgNum_6(D)
	str	ip, [r2]	@ D.37461, *pReadImgNum_8(D)
	str	ip, [r1]	@ D.37461, *pRefImgNum_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1248:
	add	r3, r3, #241664	@ tmp135, D.37457,
	ldr	r3, [r3, #2480]	@ _13->stSynCtx.unSyntax.stH264Ctx.DPB.size, _13->stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r6]	@ _13->stSynCtx.unSyntax.stH264Ctx.DPB.size, *pRefImgNum_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1237:
	add	ip, ip, #290816	@ D.37461, D.37457,
	add	ip, ip, #48	@ D.37461, D.37461,
	b	.L1233	@
.L1236:
	add	ip, ip, #239616	@ D.37461, D.37457,
	add	ip, ip, #512	@ D.37461, D.37461,
	b	.L1233	@
.L1247:
	mov	r0, ip	@, D.37457
	ldr	r3, .L1249+8	@,
	movw	r2, #6816	@,
	ldr	r1, .L1249+12	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L1250:
	.align	2
.L1249:
	.word	.LANCHOR0
	.word	.LC163
	.word	.LC6
	.word	.LC120
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r3, #0	@ tmp131,
	str	r3, [sp, #12]	@ tmp131, NewNum
	str	r3, [sp, #8]	@ tmp131, ReadNum
	str	r3, [sp, #4]	@ tmp131, RefNum
	bne	.L1260	@,
	cmp	r1, #0	@ pstChanState,
	mov	r4, r1	@ pstChanState, pstChanState
	beq	.L1261	@,
	ldr	r5, .L1264	@ tmp179,
	ldr	r1, [r5]	@ D.37465, s_pstVfmwChan
	cmp	r1, #0	@ D.37465,
	beq	.L1262	@,
	add	r1, r1, #1280	@, D.37465,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5]	@ D.37465, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1263	@,
.L1256:
	mov	r1, r4	@, pstChanState
	mov	r0, #0	@,
	bl	VCTRL_GetDispStateWithDNR	@
.L1258:
	ldr	r2, .L1264+4	@ tmp156,
	add	r1, sp, #16	@,,
	ldr	r3, [sp, #8]	@ ReadNum, ReadNum
	mov	r0, #0	@,
	ldr	lr, [sp, #12]	@ NewNum, NewNum
	ldr	ip, [r2, #-3476]	@ g_VfmwChanStat[0].u32IsFieldFlag, g_VfmwChanStat[0].u32IsFieldFlag
	ldr	r2, [r2, #-3488]	@ g_VfmwChanStat[0].u32FrFrameRate, g_VfmwChanStat[0].u32FrFrameRate
	add	r3, r3, lr	@ D.37467, ReadNum, NewNum
	str	r3, [r4, #52]	@ D.37467, pstChanState_9(D)->decoded_1d_frame_num
	str	ip, [r4, #100]	@ g_VfmwChanStat[0].u32IsFieldFlag, pstChanState_9(D)->is_field_flg
	str	r2, [r4, #24]	@ g_VfmwChanStat[0].u32FrFrameRate, pstChanState_9(D)->frame_rate
	bl	SM_GetInfo	@
	ldr	r2, [sp, #36]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [sp, #32]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	cmp	r2, #10	@ ScdInstInfo.numReadSegFail,
	ldr	r1, [sp, #24]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	add	r3, r3, #229376	@ tmp174, s_pstVfmwChan,
	movle	r2, #0	@ D.37469,
	movgt	r2, #1	@ D.37469,
	str	r0, [r4, #56]	@ ScdInstInfo.TotalSegSize, pstChanState_9(D)->buffered_stream_size
	str	r1, [r4, #60]	@ ScdInstInfo.SegNum, pstChanState_9(D)->buffered_stream_num
	str	r2, [r4, #84]	@ D.37469, pstChanState_9(D)->stream_not_enough
	ldrb	r3, [r3, #4008]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)_39 + 217520B], MEM[(struct MP4_CTX_S *)_39 + 217520B]
	and	r3, r3, #1	@ D.37470, MEM[(struct MP4_CTX_S *)_39 + 217520B],
	str	r3, [r4, #92]	@ D.37470, pstChanState_9(D)->mpeg4_shorthead
.L1251:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1263:
	ldr	r3, [r3, #1604]	@ _16->stSynExtraData.s32DnrEnable, _16->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _16->stSynExtraData.s32DnrEnable,
	beq	.L1256	@,
	mov	r0, r6	@, ChanID
	ldr	r2, [sp, #4]	@, RefNum
	mov	r1, r4	@, pstChanState
	bl	VCTRL_GetDispState	@
	b	.L1258	@
.L1260:
	mov	r2, r6	@, ChanID
	mov	r0, r3	@, tmp131
	ldr	r1, .L1264+8	@,
	bl	dprint_vfmw	@
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1262:
	ldr	r3, .L1264+12	@,
	movw	r2, #1293	@,
	ldr	r1, .L1264+16	@,
	bl	dprint_vfmw	@
	b	.L1251	@
.L1261:
	ldr	r3, .L1264+20	@,
	movw	r2, #1292	@,
	ldr	r1, .L1264+16	@,
	bl	dprint_vfmw	@
	b	.L1251	@
.L1265:
	.align	2
.L1264:
	.word	.LANCHOR0
	.word	.LANCHOR3
	.word	.LC164
	.word	.LC166
	.word	.LC120
	.word	.LC165
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	VCTRL_GetDSDFlag
	.type	VCTRL_GetDSDFlag, %function
VCTRL_GetDSDFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1267	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	sub	r0, r0, #1	@, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
.L1268:
	.align	2
.L1267:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetDSDFlag, .-VCTRL_GetDSDFlag
	.align	2
	.global	VCTRL_RlsDSDFrame
	.type	VCTRL_RlsDSDFrame, %function
VCTRL_RlsDSDFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r0, #0	@ ChanID, ChanID
	bne	.L1286	@,
	ldr	r4, .L1291	@ tmp131,
	ldr	r3, [r4]	@ D.37500, s_pstVfmwChan
	cmp	r3, #0	@ D.37500,
	beq	.L1287	@,
	ldr	r3, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r3, #1	@ _6->s32IsOpen,
	bne	.L1288	@,
	cmp	r1, #0	@ pImage,
	beq	.L1289	@,
	ldr	r0, .L1291+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4]	@ D.37500, s_pstVfmwChan
	cmp	r3, #0	@ D.37500,
	movweq	r2, #6929	@,
	beq	.L1285	@,
	ldr	r3, [r3, #4]	@ _13->s32IsOpen, _13->s32IsOpen
	cmp	r3, #1	@ _13->s32IsOpen,
	bne	.L1290	@,
	ldr	r0, .L1291+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r4, [r4]	@ D.37500, s_pstVfmwChan
	movw	r3, #1546	@ tmp152,
	add	r2, r4, #180224	@ tmp150, D.37500,
	ldrsb	r6, [r2, r3]	@ s32AllDecFrameNum, _23->FspInst.s32DecFsNum
	cmp	r6, #0	@ s32AllDecFrameNum,
	addgt	r4, r4, #216064	@ ivtmp.659, D.37500,
	addgt	r4, r4, #376	@ ivtmp.659, ivtmp.659,
	bgt	.L1281	@,
	b	.L1282	@
.L1279:
	cmp	r6, r5	@ s32AllDecFrameNum, i
	add	r4, r4, #16	@ ivtmp.659, ivtmp.659,
	beq	.L1282	@,
.L1281:
	ldr	r3, [r4, #-16]	@ MEM[base: _38, offset: 4294967280B], MEM[base: _38, offset: 4294967280B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #1	@ MEM[base: _38, offset: 4294967280B],
	bne	.L1279	@,
	ldr	r2, [r4, #-8]	@, MEM[base: _38, offset: 4294967288B]
	mov	r0, #0	@,
	ldr	r1, [r4, #-12]	@, MEM[base: _38, offset: 4294967284B]
	add	r4, r4, #16	@ ivtmp.659, ivtmp.659,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-20]	@ s32UsingCount, MEM[base: _38, offset: 4294967292B]
	streq	r0, [r4, #-32]	@ s32UsingCount, MEM[base: _38, offset: 4294967280B]
	cmp	r6, r5	@ s32AllDecFrameNum, i
	bne	.L1281	@,
.L1282:
	ldr	r0, .L1291+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1291+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.37499,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1290:
	movw	r2, #6936	@,
.L1285:
	ldr	r1, .L1291+12	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r0, .L1291+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37499,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1288:
	ldr	r3, .L1291+16	@,
	movw	r2, #6923	@,
	ldr	r1, .L1291+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37499,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1286:
	ldr	r3, .L1291+24	@,
	movw	r2, #6921	@,
	ldr	r1, .L1291+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37499,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1289:
	ldr	r3, .L1291+28	@,
	movw	r2, #6924	@,
	ldr	r1, .L1291+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37499,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1287:
	ldr	r3, .L1291+32	@,
	movw	r2, #6922	@,
	ldr	r1, .L1291+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37499,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1292:
	.align	2
.L1291:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.word	.LANCHOR3-3472
	.word	.LC93
	.word	.LC169
	.word	.LC5
	.word	.LC167
	.word	.LC170
	.word	.LC168
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L1298	@,
	ldr	r3, .L1300	@ tmp116,
	ldr	r3, [r3]	@ D.37513, s_pstVfmwChan
	cmp	r3, #0	@ D.37513,
	beq	.L1299	@,
	ldr	r0, [r3, #1456]	@ D.37512, _6->stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r4, pc}	@
.L1298:
	ldr	r3, .L1300+4	@,
	movw	r2, #6951	@,
	ldr	r1, .L1300+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37512,
	ldmfd	sp!, {r4, pc}	@
.L1299:
	ldr	r3, .L1300+12	@,
	movw	r2, #6952	@,
	ldr	r1, .L1300+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37512,
	ldmfd	sp!, {r4, pc}	@
.L1301:
	.align	2
.L1300:
	.word	.LANCHOR0
	.word	.LC69
	.word	.LC5
	.word	.LC6
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L1307	@,
	ldr	r3, .L1309	@ tmp116,
	ldr	r3, [r3]	@ D.37517, s_pstVfmwChan
	cmp	r3, #0	@ D.37517,
	beq	.L1308	@,
	ldr	r0, [r3, #1460]	@ D.37516, _6->stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r4, pc}	@
.L1307:
	ldr	r3, .L1309+4	@,
	movw	r2, #6959	@,
	ldr	r1, .L1309+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37516,
	ldmfd	sp!, {r4, pc}	@
.L1308:
	ldr	r3, .L1309+12	@,
	movw	r2, #6960	@,
	ldr	r1, .L1309+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37516,
	ldmfd	sp!, {r4, pc}	@
.L1310:
	.align	2
.L1309:
	.word	.LANCHOR0
	.word	.LC69
	.word	.LC5
	.word	.LC6
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	bne	.L1317	@,
	ldr	r3, .L1318	@ tmp116,
	ldr	r3, [r3]	@ D.37521, s_pstVfmwChan
	cmp	r3, #0	@ D.37521,
	ldrne	r0, [r3, #24]	@ D.37520, _6->eChanCapLevel
	moveq	r0, #33	@ D.37520,
	bx	lr	@
.L1317:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #6967	@,
	ldr	r3, .L1318+4	@,
	mov	r0, #0	@,
	ldr	r1, .L1318+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37520,
	ldmfd	sp!, {r4, pc}	@
.L1319:
	.align	2
.L1318:
	.word	.LANCHOR0
	.word	.LC69
	.word	.LC5
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #4992	@ D.37524, new_extra_ref,
	movw	r2, #10000	@ tmp125,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r3, #8	@ D.37524, D.37524,
	ldr	r5, .L1328	@ tmp144,
	cmp	r3, r2	@ D.37524, tmp125
	mov	r4, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r5, #3608]	@ new_extra_ref, extra_ref
	bhi	.L1326	@,
.L1321:
	movw	r1, #5000	@ tmp130,
	cmp	r0, r1	@ D.37526, tmp130
	movw	r2, #60536	@ tmp132,
	add	r3, r4, #4992	@ D.37524, new_extra_disp,
	movge	r0, r1	@ D.37525, tmp130
	movt	r2, 65535	@ tmp132,
	cmp	r0, r2	@ D.37525, tmp132
	add	r3, r3, #8	@ D.37524, D.37524,
	movw	r1, #10000	@ tmp136,
	str	r4, [r5, #3612]	@ new_extra_disp, extra_disp
	movlt	r0, r2	@ D.37525, tmp132
	cmp	r3, r1	@ D.37524, tmp136
	str	r0, [r5, #3608]	@ D.37525, extra_ref
	ldr	r6, .L1328	@ tmp128,
	bhi	.L1327	@,
.L1322:
	movw	r2, #5000	@ tmp141,
	cmp	r4, r2	@ D.37526, tmp141
	movw	r3, #60536	@ tmp143,
	movge	r4, r2	@ D.37525, tmp141
	movt	r3, 65535	@ tmp143,
	cmp	r4, r3	@ D.37525, tmp143
	movlt	r4, r3	@ D.37525, tmp143
	str	r4, [r5, #3612]	@ D.37525, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1326:
	mov	r2, r0	@, new_extra_ref
	ldr	r1, .L1328+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #3608]	@ D.37526, extra_ref
	b	.L1321	@
.L1327:
	mov	r2, r4	@, new_extra_disp
	ldr	r1, .L1328+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r4, [r6, #3612]	@ D.37526, extra_disp
	b	.L1322	@
.L1329:
	.align	2
.L1328:
	.word	.LANCHOR0
	.word	.LC171
	.word	.LC172
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1336	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.37533, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.37533,
	beq	.L1335	@,
	mov	r0, #0	@,
	blx	r3	@ D.37533
.L1332:
	bl	SCDDRV_MaskInt	@
	ldr	r3, .L1336+4	@ tmp114,
	ldr	r0, [r3, #24]	@ D.37532, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r0, #0	@ D.37532,
	beq	.L1333	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r0	@ indirect register sibling call	@ D.37532
.L1333:
	movw	r2, #7013	@,
	ldr	r1, .L1336+8	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1335:
	mov	r0, r3	@, D.37533
	movw	r2, #7005	@,
	ldr	r1, .L1336+12	@,
	bl	dprint_vfmw	@
	b	.L1332	@
.L1337:
	.align	2
.L1336:
	.word	g_vdm_hal_fun_ptr
	.word	g_dnr_hal_fun_ptr
	.word	.LC157
	.word	.LC32
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1344	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.37538, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.37538,
	beq	.L1343	@,
	mov	r0, #0	@,
	blx	r3	@ D.37538
.L1340:
	bl	SCDDRV_EnableInt	@
	ldr	r3, .L1344+4	@ tmp114,
	ldr	r0, [r3, #28]	@ D.37537, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.37537,
	beq	.L1341	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r0	@ indirect register sibling call	@ D.37537
.L1341:
	movw	r2, #7035	@,
	ldr	r1, .L1344+8	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1343:
	mov	r0, r3	@, D.37538
	movw	r2, #7027	@,
	ldr	r1, .L1344+12	@,
	bl	dprint_vfmw	@
	b	.L1340	@
.L1345:
	.align	2
.L1344:
	.word	g_vdm_hal_fun_ptr
	.word	g_dnr_hal_fun_ptr
	.word	.LC157
	.word	.LC32
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r3	@ Height, Height
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r3, r2, asl #1	@ D.37576, Width,
	mov	r4, r2	@ Width, Width
	mov	r8, r1	@ ChromOfst, ChromOfst
	str	r2, [sp, #8]	@ Width, %sfp
	mov	r2, #0	@,
	mul	r1, r10, r3	@, Height, D.37576
	ldr	r7, [sp, #56]	@ Stride, Stride
	ldr	r6, [sp, #60]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r5, r0, #0	@ pLuma,
	beq	.L1346	@,
	mul	fp, r10, r4	@ D.37576, Height, Width
	add	r8, r5, r8	@ pChrom, pLuma, ChromOfst
	add	r3, fp, fp, lsr #31	@ tmp153, D.37576, D.37576,
	mov	r3, r3, asr #1	@ D.37576, tmp153,
	str	r3, [sp, #12]	@ D.37576, %sfp
	add	r0, r3, #1024	@, D.37576,
	bl	OSAL_AllocVirMem	@
	subs	r3, r0, #0	@ pUV,
	str	r3, [sp, #4]	@ pUV, %sfp
	beq	.L1348	@,
	cmp	fp, #0	@ D.37576,
	add	r9, fp, #3	@ tmp158, D.37576,
	movge	r9, fp	@ D.37576, D.37576
	cmp	r10, #0	@ Height,
	add	r9, r3, r9, asr #2	@ pV, pUV, D.37576,
	movgt	r4, #0	@ y,
	ble	.L1353	@,
.L1352:
	add	r4, r4, #1	@ y, y,
	mov	r2, r6	@, fp
	mov	r1, fp	@, D.37576
	mov	r0, r5	@, pLuma
	bl	klib_fwrite	@
	cmp	r4, r10	@ y, Height
	bne	.L1352	@,
.L1353:
	add	r10, r10, r10, lsr #31	@ tmp161, Height, Height,
	mov	r10, r10, asr #1	@ D.37576, tmp161,
	cmp	r10, #0	@ D.37576,
	ble	.L1351	@,
	ldr	r3, [sp, #8]	@ Width, %sfp
	mov	r0, #0	@ y,
	ldr	fp, [sp, #4]	@ pUV, %sfp
	add	r4, r3, r3, lsr #31	@ tmp164, Width, Width,
	mov	r2, r4, asr #1	@ D.37576, tmp164,
.L1354:
	cmp	r2, #0	@ D.37576,
	ble	.L1356	@,
	sub	ip, fp, #1	@ ivtmp.691, pUV,
	sub	r1, r9, #1	@ ivtmp.702, pV,
	add	r4, r8, r2	@ D.37582, pChrom, D.37576
	mov	r3, r8	@ ivtmp.688, pChrom
.L1355:
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.37581, MEM[base: _51, offset: 0B]
	strb	lr, [ip, #1]!	@ D.37581, MEM[base: _37, offset: 0B]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2	@ D.37581, MEM[base: _7, offset: 0B]
	cmp	r4, r3	@ D.37582, ivtmp.688
	strb	lr, [r1, #1]!	@ D.37581, MEM[base: _11, offset: 0B]
	bne	.L1355	@,
	add	fp, fp, r2	@ pUV, pUV, D.37576
	add	r9, r9, r2	@ pV, pV, D.37576
.L1356:
	add	r0, r0, #1	@ y, y,
	add	r8, r8, r7	@ pChrom, pChrom, Stride
	cmp	r0, r10	@ y, D.37576
	bne	.L1354	@,
.L1351:
	mov	r2, r6	@, fp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L1348:
	mov	r0, r5	@, pLuma
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@ pUV, %sfp
	cmp	r3, #0	@ pUV,
	beq	.L1346	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_FreeVirMem	@
.L1346:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VfmwProcGetHandler
	.type	VfmwProcGetHandler, %function
VfmwProcGetHandler:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ cmd, cmd
	ldrne	r3, .L1380	@ ivtmp.720,
	bne	.L1372	@,
	b	.L1378	@
.L1373:
	ldr	r2, [r3, #8]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r2, r1	@ MEM[base: _14, offset: 0B], cmd
	beq	.L1379	@,
.L1372:
	ldr	r0, [r3, #12]	@ pTargetHandler, MEM[base: _9, offset: 12B]
	cmp	r0, #0	@ pTargetHandler,
	bne	.L1373	@,
	bx	lr	@
.L1379:
	bx	lr	@
.L1378:
	ldr	r0, .L1380+4	@ pTargetHandler,
	bx	lr	@
.L1381:
	.align	2
.L1380:
	.word	.LANCHOR1+168
	.word	VfmwProc_SetPrintLevel
	.fnend
	.size	VfmwProcGetHandler, .-VfmwProcGetHandler
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_args
	beq	.L1389	@,
	mov	r2, r0	@ opt, opt
	cmp	r2, #0	@ opt,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@ p_args, p_args
	ldrne	r3, .L1396	@ ivtmp.728,
	bne	.L1387	@,
	b	.L1395	@
.L1388:
	ldr	lr, [r3, #8]!	@ MEM[base: _5, offset: 0B], MEM[base: _5, offset: 0B]
	cmp	r2, lr	@ opt, MEM[base: _5, offset: 0B]
	beq	.L1385	@,
.L1387:
	ldr	ip, [r3, #12]	@ pCommandHandler, MEM[base: _10, offset: 12B]
	cmp	ip, #0	@ pCommandHandler,
	bne	.L1388	@,
	ldr	r1, .L1396+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.37609,
	ldmfd	sp!, {r4, pc}	@
.L1395:
	ldr	ip, .L1396+8	@ pCommandHandler,
.L1385:
	blx	ip	@ pCommandHandler
	mov	r0, #1	@ D.37609,
	ldmfd	sp!, {r4, pc}	@
.L1389:
	mvn	r0, #1	@ D.37609,
	bx	lr	@
.L1397:
	.align	2
.L1396:
	.word	.LANCHOR1+168
	.word	.LC173
	.word	VfmwProc_SetPrintLevel
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r5, .L1424	@ tmp180,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, r0, asl #2]	@ D.37616, s_pstVfmwChan
	cmp	r3, #0	@ D.37616,
	beq	.L1420	@,
	ldr	r2, [r1]	@ pOption_13(D)->s32KeepBS, pOption_13(D)->s32KeepBS
	mov	r6, r1	@ pOption, pOption
	cmp	r2, #1	@ pOption_13(D)->s32KeepBS,
	bhi	.L1421	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _11->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ D.37616, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp146, ChanID,
	ldr	r0, .L1424+4	@ tmp142,
	sub	r3, r3, r4, asl #3	@ tmp147, tmp146, ChanID,
	mov	r8, #0	@ tmp139,
	mov	r1, #24	@,
	add	r0, r0, r3	@, tmp142, tmp147
	str	r8, [r2, #680]	@ tmp139, _19->s32CountNoDecparamFlag
	str	r8, [r2, #684]	@ tmp139, _19->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r2, [r6, #4]	@ D.37617, pOption_13(D)->s32KeepSPSPPS
	ldr	r3, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r2, [r3, #1412]	@ D.37617, _25->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ D.37616, s_pstVfmwChan
	add	r1, r3, #217088	@, D.37616,
	ldr	r0, [r3, #880]	@, _29->eVidStd
	add	r1, r1, #432	@,,
	bl	ReleaseCurPic	@
	ldr	r0, [r5, r4, asl #2]	@ tmp157, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp157,
	bl	__memzero	@
	ldr	r3, [r5, r4, asl #2]	@ D.37616, s_pstVfmwChan
	mvn	r0, #0	@ tmp161,
	mvn	r1, #0	@,
	add	r2, r3, #960	@ tmp163, D.37616,
	add	ip, r3, #944	@ tmp160, D.37616,
	strd	r0, [ip]	@ tmp161, _36->stSynExtraData.pts
	strd	r0, [r2, #-8]	@ tmp161, tmp163,
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #880]	@ _36->eVidStd, _36->eVidStd
	str	r8, [r3, #1272]	@ tmp139, _36->stSynExtraData.s32NewPicSegDetector
	cmp	r2, #18	@ _36->eVidStd,
	str	r8, [r3, #1620]	@ tmp139, _36->stSynExtraData.s32firstIdecodedflag
	beq	.L1402	@,
	bl	FSP_ResetInstance	@
.L1403:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r3, [r6]	@ pOption_13(D)->s32KeepBS, pOption_13(D)->s32KeepBS
	cmp	r3, #0	@ pOption_13(D)->s32KeepBS,
	beq	.L1422	@,
.L1404:
	ldr	r3, [r5, #172]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	ldr	r5, .L1424	@ tmp169,
	cmp	r3, #0	@ g_ResetCreateNewSave,
	beq	.L1405	@,
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp171,
	add	r6, sp, #4	@ tmp181,,
	str	r2, [sp, #4]	@ tmp171, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1408	@,
	mov	r0, #512	@,
	mov	r1, r6	@, tmp181
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1408	@,
.L1407:
	ldr	r1, .L1424+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1405:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1423	@,
.L1409:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37615,
.L1400:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1422:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L1404	@
.L1423:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1409	@
.L1402:
	bl	FSP_EmptyInstance	@
	b	.L1403	@
.L1408:
	mov	r1, r6	@, tmp181
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1407	@
.L1421:
	movw	r2, #3757	@,
	ldr	r1, .L1424+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37615,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1420:
	mov	r0, r3	@, D.37616
	movw	r2, #3753	@,
	ldr	r3, .L1424+16	@,
	ldr	r1, .L1424+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37615,
	b	.L1400	@
.L1425:
	.align	2
.L1424:
	.word	.LANCHOR0
	.word	.LANCHOR3-3496
	.word	.LC175
	.word	.LC174
	.word	.LC6
	.word	.LC5
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r6, .L1452	@ tmp183,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r6, r0, asl #2]	@ D.37628, s_pstVfmwChan
	cmp	r3, #0	@ D.37628,
	beq	.L1448	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _12->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r6, r4, asl #2]	@ D.37628, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp139, ChanID,
	ldr	r0, .L1452+4	@ tmp135,
	sub	r3, r3, r4, asl #3	@ tmp140, tmp139, ChanID,
	mov	r5, #0	@ tmp132,
	mov	r1, #24	@,
	str	r5, [r2, #680]	@ tmp132, _16->s32CountNoDecparamFlag
	add	r0, r0, r3	@, tmp135, tmp140
	str	r5, [r2, #684]	@ tmp132, _16->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r3, [r6, r4, asl #2]	@ tmp143, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1412]	@ tmp132, _22->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r0, [r6, r4, asl #2]	@ tmp147, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp147,
	bl	__memzero	@
	ldr	r3, [r6, r4, asl #2]	@ D.37628, s_pstVfmwChan
	mvn	r0, #0	@ tmp151,
	mvn	r1, #0	@,
	add	r2, r3, #217088	@ tmp158, D.37628,
	add	lr, r3, #944	@ tmp150, D.37628,
	add	ip, r3, #960	@ tmp153, D.37628,
	strd	r0, [lr]	@ tmp151, _28->stSynExtraData.pts
	strd	r0, [ip, #-8]	@ tmp151, tmp153,
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1272]	@ tmp132, _28->stSynExtraData.s32NewPicSegDetector
	str	r5, [r3, #1620]	@ tmp132, _28->stSynExtraData.s32firstIdecodedflag
	str	r5, [r2, #384]	@ tmp132, _28->s32FindStartCodeCnt
	str	r5, [r2, #376]	@ tmp132, _28->s32H264Score
	str	r5, [r2, #380]	@ tmp132, _28->s32Mpeg2Score
	ldr	r2, [r3, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r5, [r3, #1616]	@ tmp132, _28->stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r3, #880]	@ _28->eVidStd, _28->eVidStd
	cmp	r3, #18	@ _28->eVidStd,
	beq	.L1430	@,
	bl	FSP_ResetInstance	@
.L1431:
	mov	r0, r4	@, ChanID
	ldr	r5, .L1452	@ tmp169,
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r6, #172]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L1449	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1450	@,
.L1436:
	ldr	r3, [r6, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1451	@,
.L1437:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37627,
.L1428:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1449:
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp171,
	add	r8, sp, #4	@ tmp184,,
	str	r2, [sp, #4]	@ tmp171, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1435	@,
	mov	r0, #512	@,
	mov	r1, r8	@, tmp184
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1435	@,
.L1434:
	ldr	r1, .L1452+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L1436	@,
.L1450:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r3, [r6, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1437	@,
.L1451:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L1437	@
.L1430:
	bl	FSP_EmptyInstance	@
	b	.L1431	@
.L1435:
	mov	r1, r8	@, tmp184
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1434	@
.L1448:
	mov	r0, r3	@, D.37628
	mov	r2, #3856	@,
	ldr	r3, .L1452+12	@,
	ldr	r1, .L1452+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37627,
	b	.L1428	@
.L1453:
	.align	2
.L1452:
	.word	.LANCHOR0
	.word	.LANCHOR3-3496
	.word	.LC175
	.word	.LC6
	.word	.LC5
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 232
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #300
	sub	sp, sp, #300	@,,
	add	r5, sp, #92	@ tmp804,,
	mov	r4, r0	@ eCapLevel, eCapLevel
	mov	r10, r1	@ pChanOption, pChanOption
	add	r0, sp, #124	@ tmp816,,
	mov	r1, #64	@,
	mov	r6, r2	@ flag, flag
	mov	r7, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, r5	@, tmp804
	mov	r1, #16	@,
	bl	__memzero	@
	subs	r0, r4, #25	@ tmp401, eCapLevel,
	ldr	r3, .L1620	@ tmp802,
	movne	r0, #1	@ tmp401,
	cmp	r6, #0	@ flag,
	movne	r0, #0	@ tmp401,
	cmp	r0, #0	@ tmp401,
	str	r10, [r3, #-3464]	@ pChanOption, pOption
	bne	.L1594	@,
	ldr	r3, [r10, #4]	@ D.37735, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.37735,
	bhi	.L1595	@,
	beq	.L1596	@,
	cmp	r3, #1	@ D.37735,
	bne	.L1460	@,
	ldr	r3, [r10, #32]	@ pChanOption_14(D)->s32MaxRefFrameNum, pChanOption_14(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxRefFrameNum,
	blt	.L1461	@,
	ldr	r3, [r10, #12]	@ pChanOption_14(D)->s32MaxWidth, pChanOption_14(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxWidth,
	ble	.L1461	@,
	ldr	r3, [r10, #16]	@ pChanOption_14(D)->s32MaxHeight, pChanOption_14(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxHeight,
	ble	.L1461	@,
	ldr	r3, [r10, #56]	@ pChanOption_14(D)->s32SCDBufSize, pChanOption_14(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_14(D)->s32SCDBufSize,
	blt	.L1461	@,
	ldr	r3, [r10, #44]	@ pChanOption_14(D)->s32SupportH264, pChanOption_14(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_14(D)->s32SupportH264,
	beq	.L1597	@,
.L1460:
	ldr	r3, [r10, #136]	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r2, sp, #108	@,,
	mov	r1, r10	@, pChanOption
	mov	r0, r4	@, eCapLevel
	cmp	r3, #1	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r3, #0	@ tmp418,
	strne	r3, [r10, #136]	@ tmp418, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r6	@, flag
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r6, r0, #0	@ D.37722,
	beq	.L1463	@,
	mov	r2, #2400	@,
	ldr	r1, .L1620+4	@,
	mov	r0, #0	@,
	mvn	r8, #0	@ D.37719,
	bl	dprint_vfmw	@
.L1589:
	mov	r0, r8	@, D.37719
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1596:
	ldr	r3, [r10, #64]	@ pChanOption_14(D)->s32SlotWidth, pChanOption_14(D)->s32SlotWidth
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotWidth,
	beq	.L1459	@,
	ldr	r3, [r10, #68]	@ pChanOption_14(D)->s32SlotHeight, pChanOption_14(D)->s32SlotHeight
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotHeight,
	bne	.L1460	@,
.L1459:
	ldr	r1, .L1620+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L1527:
	mvn	r8, #0	@ D.37719,
	mov	r0, r8	@, D.37719
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1597:
	ldr	r3, [r10, #20]	@ pChanOption_14(D)->s32MaxSliceNum, pChanOption_14(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSliceNum,
	ble	.L1461	@,
	ldr	r3, [r10, #24]	@ pChanOption_14(D)->s32MaxSpsNum, pChanOption_14(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSpsNum,
	ble	.L1461	@,
	ldr	r3, [r10, #28]	@ pChanOption_14(D)->s32MaxPpsNum, pChanOption_14(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxPpsNum,
	bgt	.L1460	@,
.L1461:
	ldr	r1, .L1620+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1463:
	ldr	r3, [r10, #8]	@ D.37736, pChanOption_14(D)->MemAllocMode
	ldr	r2, [sp, #112]	@ DetailMemSize$4, MEM[(struct  *)&DetailMemSize + 4B]
	cmp	r3, #1	@ D.37736,
	ldr	r8, [sp, #108]	@ DetailMemSize, MEM[(struct  *)&DetailMemSize]
	ldr	r9, [sp, #116]	@ DetailMemSize$8, MEM[(struct  *)&DetailMemSize + 8B]
	str	r2, [sp, #68]	@ DetailMemSize$4, %sfp
	ldr	fp, [sp, #120]	@ DetailMemSize$12, MEM[(struct  *)&DetailMemSize + 12B]
	beq	.L1598	@,
	cmp	r3, #2	@ D.37736,
	beq	.L1599	@,
	cmp	r3, #3	@ D.37736,
	bne	.L1480	@,
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp824,,
	bl	__memzero	@
	ldr	r3, [r10, #108]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr,
	beq	.L1481	@,
	ldr	r3, [r10, #112]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length,
	bne	.L1482	@,
.L1481:
	mov	r2, r9	@, DetailMemSize$8
	add	r3, sp, #188	@ tmp825,,
	mov	r9, #1	@ tmp498,
	mov	r1, #0	@,
	str	r9, [sp]	@ tmp498,
	ldr	r0, .L1620+16	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1600	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r9, [sp, #100]	@ tmp498, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	r1, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	r2, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r3, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
.L1485:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp834,,
	bl	__memzero	@
	ldr	r3, [r10, #76]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr,
	beq	.L1528	@,
	ldr	r3, [r10, #80]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length,
	bne	.L1487	@,
.L1528:
	mov	r1, #0	@ tmp521,
	mov	r2, r8	@, DetailMemSize
	str	r1, [sp]	@ tmp521,
	add	r3, sp, #188	@ tmp826,,
	ldr	r0, .L1620+20	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1601	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp535,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #124]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r1, [sp, #128]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r2, [sp, #132]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	str	r3, [sp, #92]	@ tmp535, MEM[(HI_S32 *)&ChanMemFlag]
.L1491:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp835,,
	bl	__memzero	@
	ldr	r3, [r10, #92]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr,
	beq	.L1530	@,
	ldr	r3, [r10, #96]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length,
	bne	.L1494	@,
.L1530:
	ldr	r3, [r10, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1495	@,
	mov	r1, #0	@ tmp550,
	ldr	r2, [sp, #68]	@, %sfp
	str	r1, [sp]	@ tmp550,
	add	r3, sp, #188	@ tmp828,,
	ldr	r0, .L1620+24	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1602	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp560,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #140]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r1, [sp, #144]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r2, [sp, #148]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r3, [sp, #96]	@ tmp560, MEM[(HI_S32 *)&ChanMemFlag + 4B]
.L1500:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp836,,
	bl	__memzero	@
	ldr	r3, [r10, #124]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr,
	beq	.L1532	@,
	ldr	r3, [r10, #128]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length,
	bne	.L1506	@,
.L1532:
	ldr	r3, [r10, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1507	@,
	mov	r1, #0	@ tmp580,
	add	r3, sp, #188	@ tmp830,,
	mov	r2, fp	@, DetailMemSize$12
	str	r1, [sp]	@ tmp580,
	ldr	r0, .L1620+28	@,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37722,
	bne	.L1603	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp591,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #172]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r1, [sp, #176]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	str	r2, [sp, #180]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r3, [sp, #104]	@ tmp591, MEM[(HI_S32 *)&ChanMemFlag + 12B]
.L1569:
	ldr	fp, .L1620	@ tmp609,
	ldr	r9, .L1620+32	@ tmp801,
	sub	r0, fp, #3504	@, tmp609,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r8, [r9]	@ s_pstVfmwChan, s_pstVfmwChan
	adds	r8, r8, #0	@ D.37719, s_pstVfmwChan,
	movne	r8, #1	@ D.37719,
	cmp	r8, #0	@ D.37719,
	bgt	.L1604	@,
	add	ip, fp, r8, lsl #2	@ tmp623, tmp609, D.37719,
	ldr	r2, [sp, #160]	@ D.37724, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	lr, .L1620+36	@ tmp620,
	movw	r1, #29096	@,
	ldr	fp, .L1620+40	@ tmp618,
	movt	r1, 4	@,
	ldr	r3, [ip, #-3532]	@ tmp629, g_ChanTick
	mov	r0, r2	@, D.37724
	str	ip, [sp, #68]	@ tmp623, %sfp
	add	r3, r3, #1	@ D.37723, tmp629,
	str	r2, [r9, r8, asl #2]	@ D.37724, s_pstVfmwChan
	str	r3, [ip, #-3532]	@ D.37723, g_ChanTick
	mov	r2, #30	@ tmp619,
	str	r2, [lr, r8, asl #2]	@ tmp619, g_LastFrameRate
	str	r2, [fp, r8, asl #2]	@ tmp619, g_FrameRate
	bl	__memzero	@
	ldr	fp, [r9, r8, asl #2]	@ D.37721, s_pstVfmwChan
	mov	r2, #152	@,
	mov	r1, r10	@, pChanOption
	add	r0, fp, #1440	@, D.37721,
	add	r0, r0, #4	@,,
	bl	memcpy	@
	ldr	r1, .L1620+44	@ tmp665,
	movw	r2, #11160	@ tmp667,
	str	r8, [fp]	@ D.37719, _43->s32ChanID
	movt	r2, 1	@ tmp667,
	ldr	r3, [r9, r8, asl #2]	@ D.37721, s_pstVfmwChan
	mla	r2, r2, r8, r1	@ tmp668, tmp667, D.37719, tmp665
	add	r0, r3, #180224	@ tmp643, D.37721,
	ldr	ip, [sp, #68]	@ tmp623, %sfp
	movw	r1, #40368	@ tmp639,
	str	r4, [fp, #24]	@ eCapLevel, _43->eChanCapLevel
	movt	r1, 7	@ tmp639,
	str	r4, [fp, #920]	@ eCapLevel, _43->stSynExtraData.eCapLevel
	add	r2, r2, #75776	@ tmp669, tmp668,
	str	r1, [fp, #1388]	@ tmp639, _43->stSynExtraData.s32BasicCtxSize
	add	r2, r2, #912	@ tmp669, tmp669,
	str	r6, [fp, #1404]	@ D.37722, _43->stSynExtraData.s32MoreGapEnable
	add	r1, r3, #217088	@ tmp647, D.37721,
	strb	r8, [r0, #1536]	@ D.37719, _51->FspInst.s32InstID
	mov	r0, #19	@ tmp645,
	ldr	fp, [r10]	@ D.37727, pChanOption_14(D)->eAdapterType
	ldr	lr, [ip, #-3532]	@ tmp664, g_ChanTick
	add	ip, r3, #163840	@ tmp655, D.37721,
	str	r0, [r3, #880]	@ tmp645, _51->eVidStd
	str	fp, [r3, #20]	@ D.37727, _51->eAdapterType
	add	fp, r3, #181248	@ D.37729, D.37721,
	ldr	r2, [r2, #4]	@ D.37722, s_DnrChan[_361].s32DnrEnable
	add	fp, fp, #512	@ D.37729, D.37729,
	str	r0, [r1, #424]	@ tmp645, _51->stSynCtx.eVidStd
	add	r0, r3, #1632	@ D.37728, D.37721,
	str	r8, [ip, #4040]	@ D.37719, MEM[(struct SM_INSTANCE_S *)_51 + 1632B].InstID
	str	lr, [r1, #420]	@ tmp664, _51->u32ChanTick
	ldr	r1, .L1620+48	@ tmp649,
	str	r2, [r3, #1604]	@ D.37722, _51->stSynExtraData.s32DnrEnable
	ldr	lr, [r10, #140]	@ D.37730, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	add	r2, r1, r8, lsl #2	@ tmp651, tmp649, D.37719,
	ldr	r1, .L1620+52	@ tmp656,
	cmp	lr, #0	@ D.37730,
	str	r0, [r2, #116]	@ D.37728, s_SmIIS.pSmInstArray
	streq	r6, [r3, #1608]	@ D.37722, _51->stSynExtraData.s32DSDThrWidth
	str	fp, [r1, r8, asl #2]	@ D.37729, s_pFspInst
	streq	r6, [r3, #1612]	@ D.37722, _51->stSynExtraData.s32DSDThrHeight
	beq	.L1521	@,
	mov	r1, lr, asl #5	@ tmp676, D.37730,
	ldr	r2, .L1620+56	@ tmp673,
	sub	lr, r1, lr, asl #2	@ tmp677, tmp676, D.37730,
	ldr	r1, [r2, lr]	@ D.37722, CapItem
	str	r1, [r3, #1608]	@ D.37722, _51->stSynExtraData.s32DSDThrWidth
	ldr	r0, [r10, #140]	@ pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	mov	r1, r0, asl #5	@ tmp683, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	sub	r1, r1, r0, asl #2	@ tmp684, tmp683, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r2, r2, r1	@ tmp685, tmp673, tmp684
	ldr	r2, [r2, #4]	@ D.37722, CapItem
	str	r2, [r3, #1612]	@ D.37722, _51->stSynExtraData.s32DSDThrHeight
.L1521:
	ldr	r0, [r9, r8, asl #2]	@ D.37721, s_pstVfmwChan
	mov	r2, #0	@ tmp806,
	mov	lr, #-2147483648	@ tmp807,
	add	r3, r0, #216064	@ ivtmp.745, D.37721,
	add	r0, r0, #217088	@ tmp803, D.37721,
	add	r3, r3, #360	@ ivtmp.745, ivtmp.745,
	add	r1, r0, #360	@ D.37720, tmp803,
.L1522:
	str	r2, [r3, #8]	@ tmp806, MEM[base: _571, offset: 8B]
	str	r2, [r3, #12]	@ tmp806, MEM[base: _571, offset: 12B]
	stmia	r3, {r2, lr}	@ ivtmp.745,,
	add	r3, r3, #16	@ ivtmp.745, ivtmp.745,
	cmp	r3, r1	@ ivtmp.745, D.37720
	bne	.L1522	@,
	add	r0, r0, #360	@, tmp803,
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	lr, [r9, r8, asl #2]	@ D.37721, s_pstVfmwChan
	ldr	r1, .L1620+60	@,
	mov	r0, #31	@,
	ldr	r6, .L1620+32	@ tmp693,
	ldr	ip, [lr, #1588]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum, _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r3, [lr, #1608]	@ _84->stSynExtraData.s32DSDThrWidth, _84->stSynExtraData.s32DSDThrWidth
	ldr	r2, [lr, #1580]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	ip, [sp, #4]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum,
	ldr	lr, [lr, #1612]	@ _84->stSynExtraData.s32DSDThrHeight, _84->stSynExtraData.s32DSDThrHeight
	str	lr, [sp]	@ _84->stSynExtraData.s32DSDThrHeight,
	bl	dprint_vfmw	@
	mov	r0, r8	@, D.37719
	bl	VCTRL_ResetChan	@
	ldmia	r5, {r0, r1, r2, r3}	@ tmp804,,,,
	add	lr, sp, #48	@ tmp699,,
	ldr	fp, [sp, #124]	@ MEM[(struct  *)&ChanMemDetail], MEM[(struct  *)&ChanMemDetail]
	ldr	ip, [sp, #180]	@ MEM[(struct  *)&ChanMemDetail + 56B], MEM[(struct  *)&ChanMemDetail + 56B]
	ldr	r5, [sp, #176]	@ MEM[(struct  *)&ChanMemDetail + 52B], MEM[(struct  *)&ChanMemDetail + 52B]
	stmia	lr, {r0, r1, r2, r3}	@ tmp699,,,,
	mov	r2, r7	@, OneChanMemFlag
	ldr	lr, [sp, #160]	@ MEM[(struct  *)&ChanMemDetail + 36B], MEM[(struct  *)&ChanMemDetail + 36B]
	mov	r1, r4	@, eCapLevel
	ldr	r7, [sp, #172]	@ MEM[(struct  *)&ChanMemDetail + 48B], MEM[(struct  *)&ChanMemDetail + 48B]
	mov	r3, r10	@, pChanOption
	ldr	r4, [sp, #164]	@ MEM[(struct  *)&ChanMemDetail + 40B], MEM[(struct  *)&ChanMemDetail + 40B]
	mov	r0, r8	@, D.37719
	str	fp, [sp]	@ MEM[(struct  *)&ChanMemDetail],
	str	ip, [sp, #44]	@ MEM[(struct  *)&ChanMemDetail + 56B],
	ldr	fp, [sp, #156]	@ MEM[(struct  *)&ChanMemDetail + 32B], MEM[(struct  *)&ChanMemDetail + 32B]
	ldr	ip, [sp, #144]	@ MEM[(struct  *)&ChanMemDetail + 20B], MEM[(struct  *)&ChanMemDetail + 20B]
	str	r5, [sp, #40]	@ MEM[(struct  *)&ChanMemDetail + 52B],
	str	r7, [sp, #36]	@ MEM[(struct  *)&ChanMemDetail + 48B],
	ldr	r5, [sp, #140]	@ MEM[(struct  *)&ChanMemDetail + 16B], MEM[(struct  *)&ChanMemDetail + 16B]
	ldr	r7, [sp, #132]	@ MEM[(struct  *)&ChanMemDetail + 8B], MEM[(struct  *)&ChanMemDetail + 8B]
	str	r4, [sp, #32]	@ MEM[(struct  *)&ChanMemDetail + 40B],
	str	lr, [sp, #28]	@ MEM[(struct  *)&ChanMemDetail + 36B],
	ldr	r4, [sp, #128]	@ MEM[(struct  *)&ChanMemDetail + 4B], MEM[(struct  *)&ChanMemDetail + 4B]
	ldr	lr, [sp, #148]	@ tmp831, MEM[(struct  *)&ChanMemDetail + 24B]
	str	fp, [sp, #24]	@ MEM[(struct  *)&ChanMemDetail + 32B],
	str	ip, [sp, #16]	@ MEM[(struct  *)&ChanMemDetail + 20B],
	str	lr, [sp, #20]	@ tmp831,
	str	r5, [sp, #12]	@ MEM[(struct  *)&ChanMemDetail + 16B],
	stmib	sp, {r4, r7}	@,,
	bl	VCTRL_ConfigMemInfo.isra.1	@
	cmp	r0, #0	@,
	bne	.L1523	@,
	ldr	r3, [r6, r8, asl #2]	@ tmp714, s_pstVfmwChan
	mov	r0, r8	@, D.37719
	str	r8, [r3, #140]	@ D.37719, _106->s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1605	@,
	ldr	r3, [r6, r8, asl #2]	@ D.37721, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1525	@,
	ldr	r3, [r3, #236]	@ D.37722, _110->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.37722
	str	r3, [sp, #76]	@ D.37722, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6, r8, asl #2]	@ tmp719, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _117->s32OffLineDNRMemSize, _117->s32OffLineDNRMemSize
	str	r3, [sp, #84]	@ _117->s32OffLineDNRMemSize, DnrMem.Length
	str	r0, [sp, #80]	@, DnrMem.VirAddr
	mov	r0, r8	@, D.37719
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1526	@,
	ldr	r3, [r10, #16]	@, pChanOption_14(D)->s32MaxHeight
	add	r1, sp, #76	@,,
	ldr	r2, [r10, #12]	@, pChanOption_14(D)->s32MaxWidth
	mov	r0, r8	@, D.37719
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1606	@,
.L1526:
	mov	r0, r8	@, D.37719
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1607	@,
.L1525:
	mov	r0, r8	@, D.37719
	bl	SM_ClearInst	@
	ldr	r3, [r9, r8, asl #2]	@ tmp727, s_pstVfmwChan
	movw	r1, #31144	@,
	mov	r0, r8	@, D.37719
	movt	r1, 4	@,
	ldr	r3, [r3, #204]	@ _131->stChanMem_ctx.VirAddr, _131->stChanMem_ctx.VirAddr
	add	r1, r3, r1	@, _131->stChanMem_ctx.VirAddr,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r9, r8, asl #2]	@ tmp732, s_pstVfmwChan
	mov	r2, #1	@ tmp733,
	mov	r0, r8	@, D.37719
	str	r2, [r3, #4]	@ tmp733, _135->s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1620+64	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1589	@
.L1482:
	mov	r2, #16	@,
	add	r1, r10, #104	@, pChanOption,
	add	r0, sp, #156	@,,
	bl	memcpy	@
	ldr	r2, [sp, #164]	@ D.37722, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r9, r2	@ DetailMemSize$8, D.37722
	bgt	.L1608	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1485	@
.L1594:
	ldr	r1, .L1620+68	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1595:
	ldr	r1, .L1620+72	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1495:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp563,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #148]	@ tmp563, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r2, [sp, #140]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	b	.L1500	@
.L1487:
	mov	r2, #16	@,
	add	r0, sp, #124	@ tmp827,,
	add	r1, r10, #72	@, pChanOption,
	bl	memcpy	@
	ldr	r2, [sp, #132]	@ D.37719, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r8, r2	@ DetailMemSize, D.37719
	bgt	.L1609	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1491	@
.L1507:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp594,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #180]	@ tmp594, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r2, [sp, #172]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	b	.L1569	@
.L1494:
	mov	r2, #16	@,
	add	r1, r10, #88	@, pChanOption,
	add	r0, sp, #140	@,,
	bl	memcpy	@
	ldr	r3, [r10, #4]	@ D.37735, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.37735,
	beq	.L1500	@,
	ldr	r1, [sp, #144]	@ D.37724, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r1, #0	@ D.37724,
	beq	.L1501	@,
	ldr	r2, [sp, #148]	@ D.37719, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ldr	r0, [sp, #68]	@ DetailMemSize$4, %sfp
	cmp	r0, r2	@ DetailMemSize$4, D.37719
	ble	.L1502	@,
.L1501:
	cmp	r3, #1	@ D.37735,
	beq	.L1503	@,
	ldr	r2, [sp, #148]	@ D.37719, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
.L1502:
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1500	@
.L1506:
	mov	r2, #16	@,
	add	r1, r10, #120	@, pChanOption,
	add	r0, sp, #172	@,,
	bl	memcpy	@
	ldr	r3, [r10, #4]	@ D.37735, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.37735,
	beq	.L1569	@,
	ldr	r1, [sp, #176]	@ D.37724, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	cmp	r1, #0	@ D.37724,
	beq	.L1513	@,
	ldr	r2, [sp, #180]	@ D.37722, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	cmp	r2, fp	@ D.37722, DetailMemSize$12
	bge	.L1514	@,
.L1513:
	cmp	r3, #1	@ D.37735,
	beq	.L1515	@,
	ldr	r2, [sp, #180]	@ D.37722, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
.L1514:
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1569	@
.L1598:
	mov	r2, #16	@,
	add	r1, r10, #72	@, pChanOption,
	add	r0, sp, #124	@ tmp818,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, r10, #88	@, pChanOption,
	add	r0, sp, #140	@,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, r10, #104	@, pChanOption,
	add	r0, sp, #156	@,,
	bl	memcpy	@
	ldr	r3, [sp, #160]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr,
	beq	.L1466	@,
	ldr	r3, [sp, #164]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r9, r3	@ DetailMemSize$8, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bgt	.L1466	@,
	ldr	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr,
	beq	.L1469	@,
	ldr	r3, [sp, #148]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ldr	r2, [sp, #68]	@ DetailMemSize$4, %sfp
	cmp	r2, r3	@ DetailMemSize$4, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ble	.L1470	@,
.L1469:
	ldr	r0, [r10, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r0, #1	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1610	@,
.L1470:
	ldr	r1, [sp, #128]	@ D.37724, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	cmp	r1, #0	@ D.37724,
	beq	.L1471	@,
	ldr	r2, [sp, #132]	@ D.37722, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r8, r2	@ DetailMemSize, D.37722
	bgt	.L1471	@,
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	ldr	r3, [r10, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1569	@,
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	b	.L1569	@
.L1599:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp820,,
	bl	__memzero	@
	mov	fp, #1	@ tmp462,
	mov	r1, r6	@, D.37722
	mov	r2, r9	@, DetailMemSize$8
	add	r3, sp, #188	@ tmp821,,
	str	fp, [sp]	@ tmp462,
	ldr	r0, .L1620+16	@,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37722,
	bne	.L1611	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r9, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	lr, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r2, r8	@, DetailMemSize
	ldr	r8, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	mov	r1, r6	@, D.37722
	str	r6, [sp]	@ D.37722,
	add	r3, sp, #188	@ tmp822,,
	ldr	r0, .L1620+20	@,
	str	fp, [sp, #100]	@ tmp462, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	r9, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	lr, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r8, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37722,
	bne	.L1612	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r10, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	ldr	r2, [sp, #196]	@ D.37722, MemRecord.PhyAddr
	ldr	r3, [sp, #192]	@ D.37731, MemRecord.VirAddr
	cmp	r1, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	ldr	r1, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	fp, [sp, #92]	@ tmp462, MEM[(HI_S32 *)&ChanMemFlag]
	str	r2, [sp, #124]	@ D.37722, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r3, [sp, #128]	@ D.37731, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #132]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	beq	.L1478	@,
	str	r6, [sp]	@ D.37722,
	mov	r1, r6	@, D.37722
	add	r3, sp, #188	@ tmp823,,
	ldr	r2, [sp, #68]	@, %sfp
	ldr	r0, .L1620+24	@,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37722,
	bne	.L1613	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	fp, [sp, #96]	@ tmp462, MEM[(HI_S32 *)&ChanMemFlag + 4B]
	str	r1, [sp, #140]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r2, [sp, #144]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r3, [sp, #148]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1569	@
.L1604:
	mov	r2, #1	@,
	ldr	r1, .L1620+76	@,
	mov	r0, r2	@,
	mvn	r8, #0	@ D.37719,
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	sub	r0, fp, #3504	@, tmp609,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1589	@
.L1480:
	ldr	r1, .L1620+80	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.37719,
	b	.L1589	@
.L1605:
	ldr	r1, .L1620+84	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1523:
	mov	r0, r8	@, D.37719
	bl	VCTRL_UnInstallChan	@
	ldr	r4, [r9, r8, asl #2]	@ D.37721, s_pstVfmwChan
	add	r0, sp, #188	@ tmp832,,
	mov	r2, #16	@,
	add	r5, r4, #217088	@ tmp741, D.37721,
	add	r1, r4, #152	@, D.37721,
	ldr	r3, [r4, #224]	@ _143->s32SelfAllocChanMem_ctx, _143->s32SelfAllocChanMem_ctx
	str	r3, [sp, #260]	@ _143->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	ldr	r3, [r4, #216]	@ _143->s32SelfAllocChanMem_vdh, _143->s32SelfAllocChanMem_vdh
	str	r3, [sp, #252]	@ _143->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r3, [r4, #220]	@ _143->s32SelfAllocChanMem_scd, _143->s32SelfAllocChanMem_scd
	str	r3, [sp, #256]	@ _143->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r3, [r5, #400]	@ _143->s32SelfAllocChanMem_pmv, _143->s32SelfAllocChanMem_pmv
	str	r3, [sp, #264]	@ _143->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r4, #200	@, D.37721,
	mov	r2, #16	@,
	add	r0, sp, #236	@,,
	bl	memcpy	@
	add	r1, r4, #168	@, D.37721,
	mov	r2, #16	@,
	add	r0, sp, #204	@,,
	bl	memcpy	@
	add	r1, r4, #184	@, D.37721,
	mov	r2, #16	@,
	add	r0, sp, #220	@,,
	bl	memcpy	@
	add	r1, r4, #104	@, D.37721,
	mov	r2, #12	@,
	add	r0, sp, #268	@,,
	bl	memcpy	@
	add	r1, r5, #404	@, tmp741,
	mov	r2, #16	@,
	add	r0, sp, #280	@,,
	bl	memcpy	@
	mov	r0, r8	@, D.37719
	mov	r3, #0	@ tmp786,
	str	r3, [r9, r8, asl #2]	@ tmp786, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1620+64	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #188	@ tmp833,,
	mov	r0, r8	@, D.37719
	mvn	r8, #0	@ D.37719,
	bl	VCTRL_FreeChanResource	@
	b	.L1589	@
.L1478:
	str	r2, [sp, #140]	@ D.37722, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ D.37731, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r6, [sp, #148]	@ D.37722, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1569	@
.L1601:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1614	@,
.L1489:
	movw	r2, #1979	@,
	ldr	r1, .L1620+88	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1602:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1615	@,
.L1497:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1616	@,
.L1498:
	movw	r2, #2045	@,
	ldr	r1, .L1620+92	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1603:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1617	@,
.L1509:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1618	@,
.L1510:
	ldr	r3, [sp, #96]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	beq	.L1619	@,
.L1511:
	movw	r2, #2136	@,
	ldr	r1, .L1620+96	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1600:
	mov	r0, r9	@, tmp498
	movw	r2, #1930	@,
	ldr	r1, .L1620+100	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1609:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1493	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	ldr	r2, [sp, #132]	@ D.37719, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
.L1493:
	mov	r3, r2	@, D.37719
	str	r8, [sp]	@ DetailMemSize,
	movw	r2, #2002	@,
	ldr	r1, .L1620+104	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1614:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1489	@
.L1471:
	movw	r2, #1827	@,
	ldr	r1, .L1620+108	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1607:
	ldr	r1, .L1620+112	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1523	@
.L1608:
	movw	r2, #1946	@,
	ldr	r1, .L1620+116	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1619:
	ldr	r1, [sp, #144]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1511	@
.L1618:
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1510	@
.L1617:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1509	@
.L1466:
	movw	r2, #1812	@,
	ldr	r1, .L1620+120	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1606:
	ldr	r1, .L1620+124	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1523	@
.L1616:
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1498	@
.L1615:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1497	@
.L1612:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	mov	r0, fp	@, tmp462
	movw	r2, #1876	@,
	ldr	r1, .L1620+88	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1611:
	mov	r0, fp	@, tmp462
	movw	r2, #1860	@,
	ldr	r1, .L1620+128	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1610:
	movw	r2, #1819	@,
	ldr	r1, .L1620+132	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1515:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1516	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1516:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1517	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1517:
	ldr	r3, [sp, #96]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	bne	.L1518	@,
	ldr	r1, [sp, #144]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1518:
	movw	r2, #2181	@,
	ldr	r1, .L1620+136	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1613:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	mov	r0, fp	@, tmp462
	movw	r2, #1896	@,
	ldr	r1, .L1620+92	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1503:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1504	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1504:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1505	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1505:
	movw	r2, #2084	@,
	ldr	r1, .L1620+132	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1527	@
.L1621:
	.align	2
.L1620:
	.word	.LANCHOR3
	.word	.LC177
	.word	.LC121
	.word	.LC122
	.word	.LC181
	.word	.LC183
	.word	.LC185
	.word	.LC190
	.word	.LANCHOR0
	.word	g_LastFrameRate
	.word	g_FrameRate
	.word	s_DnrChan
	.word	s_SmIIS
	.word	s_pFspInst
	.word	CapItem
	.word	.LC195
	.word	.LANCHOR3-3504
	.word	.LC176
	.word	.LC126
	.word	.LC194
	.word	.LC193
	.word	.LC196
	.word	.LC184
	.word	.LC186
	.word	.LC191
	.word	.LC187
	.word	.LC189
	.word	.LC180
	.word	.LC198
	.word	.LC188
	.word	.LC178
	.word	.LC197
	.word	.LC182
	.word	.LC179
	.word	.LC192
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #24	@ eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ eCapLevel, eCapLevel
	.pad #216
	sub	sp, sp, #216	@,,
	bhi	.L1645	@,
	add	r6, sp, #32	@ tmp217,,
	add	r0, sp, #64	@ tmp228,,
	mov	r5, r1	@ pChanMem, pChanMem
	add	r7, sp, #48	@ tmp219,,
	mov	r1, #152	@,
	mov	r9, #2	@ tmp145,
	bl	__memzero	@
	mov	r0, r6	@, tmp217
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r7	@, tmp219
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	r2, .L1647	@ tmp218,
	mov	r1, r4, asl #2	@ tmp215, eCapLevel,
	mov	ip, r4, asl #5	@ tmp216, eCapLevel,
	rsb	r0, r1, ip	@ tmp150, tmp215, tmp216
	sub	r3, r4, #18	@ tmp164, eCapLevel,
	add	r8, r2, r0	@ tmp151, tmp218, tmp150
	mov	lr, #1	@ tmp144,
	ldr	r0, [r2, r0]	@ tmp152, CapItem
	ldr	r10, [r8, #4]	@ tmp160, CapItem
	mov	r8, #136	@ tmp161,
	str	lr, [sp, #68]	@ tmp144, stChanOption.Purpose
	mov	lr, #32	@ tmp162,
	str	r0, [sp, #76]	@ tmp152, stChanOption.s32MaxWidth
	mov	r0, #256	@ tmp163,
	str	r10, [sp, #80]	@ tmp160, stChanOption.s32MaxHeight
	str	r9, [sp, #72]	@ tmp145, stChanOption.MemAllocMode
	str	r8, [sp, #84]	@ tmp161, stChanOption.s32MaxSliceNum
	str	lr, [sp, #88]	@ tmp162, stChanOption.s32MaxSpsNum
	str	r0, [sp, #92]	@ tmp163, stChanOption.s32MaxPpsNum
	cmp	r3, #7	@ tmp164,
	ldrls	pc, [pc, r3, asl #2]	@ tmp164
	b	.L1625	@
.L1627:
	.word	.L1635
	.word	.L1635
	.word	.L1635
	.word	.L1635
	.word	.L1635
	.word	.L1628
	.word	.L1628
	.word	.L1628
.L1635:
	mov	r0, #3	@ MinDispFspNum,
.L1626:
	rsb	r3, r1, ip	@ tmp169, tmp215, tmp216
	rsb	ip, r1, ip	@ tmp181, tmp215, tmp216
	add	r3, r2, r3	@ tmp170, tmp218, tmp169
	add	r2, r2, ip	@ tmp182, tmp218, tmp181
	mov	r1, #0	@ tmp185,
	str	r0, [sp, #124]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	ldr	r3, [r3, #12]	@ D.37810, CapItem
	ldr	r2, [r2, #24]	@ tmp184, CapItem
	cmp	r0, r3	@ MinDispFspNum, D.37810
	str	r1, [sp, #128]	@ tmp185, stChanOption.s32SlotWidth
	rsblt	r3, r0, r3	@ D.37810, MinDispFspNum, D.37810
	str	r1, [sp, #132]	@ tmp185, stChanOption.s32SlotHeight
	movge	r3, #1	@ tmp172,
	str	r2, [sp, #120]	@ tmp184, stChanOption.s32SCDBufSize
	cmp	r4, #24	@ eCapLevel,
	str	r3, [sp, #96]	@ D.37810, stChanOption.s32MaxRefFrameNum
	add	r2, sp, #20	@,,
	streq	r1, [sp, #96]	@ tmp185, stChanOption.s32MaxRefFrameNum
	mov	r0, r4	@, eCapLevel
	add	r1, sp, #8	@,,
	mov	r3, #1	@ tmp174,
	streq	r3, [sp, #124]	@ tmp174, stChanOption.s32DisplayFrameNum
	str	r3, [sp, #104]	@ tmp174, stChanOption.s32SupportBFrame
	str	r3, [sp, #108]	@ tmp174, stChanOption.s32SupportH264
	str	r3, [sp, #116]	@ tmp174, stChanOption.s32ReRangeEn
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L1646	@,
	cmp	r5, #0	@ pChanMem,
	beq	.L1636	@,
	ldr	ip, [r5, #8]	@ D.37810, pChanMem_40(D)->Length
	cmp	ip, #0	@ D.37810,
	beq	.L1633	@,
	ldr	r2, [r5]	@ D.37810, pChanMem_40(D)->PhyAddr
	cmp	r2, #0	@ D.37810,
	beq	.L1634	@,
	ldr	r1, [r5, #4]	@ D.37811, pChanMem_40(D)->VirAddr
	cmp	r1, #0	@ D.37811,
	beq	.L1634	@,
	ldr	r3, [sp, #8]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r0, [sp, #20]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r3, r0	@ D.37810, VdmChanMemSize, ScdChanMemSize
	cmp	ip, r3	@ D.37810, D.37810
	blt	.L1634	@,
	ldr	r5, [sp, #24]	@ D.37810, ScdChanMemSize
	add	r8, sp, #152	@ tmp199,,
	str	r2, [sp, #48]	@ D.37810, scd_MemRecord.PhyAddr
	add	lr, sp, #136	@ tmp201,,
	add	r9, r2, r5	@ D.37810, D.37810, D.37810
	add	r10, r1, r5	@ D.37811, D.37811, D.37810
	str	r5, [sp, #56]	@ D.37810, scd_MemRecord.Length
	rsb	r5, r5, ip	@ D.37810, D.37810, D.37810
	str	r1, [sp, #52]	@ D.37811, scd_MemRecord.VirAddr
	mov	ip, #1	@ OneChanMemFlag,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp219,,,,
	mov	r7, #3	@ tmp195,
	str	r9, [sp, #32]	@ D.37810, vdh_MemRecord.PhyAddr
	str	r10, [sp, #36]	@ D.37811, vdh_MemRecord.VirAddr
	str	r5, [sp, #40]	@ D.37810, vdh_MemRecord.Length
	stmia	r8, {r0, r1, r2, r3}	@ tmp199,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp217,,,,
	str	r7, [sp, #72]	@ tmp195, stChanOption.MemAllocMode
	stmia	lr, {r0, r1, r2, r3}	@ tmp201,,,,
.L1633:
	mov	r3, ip	@, OneChanMemFlag
	add	r1, sp, #64	@ tmp229,,
	mov	r0, r4	@, eCapLevel
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.37809,
.L1624:
	add	sp, sp, #216	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1628:
	mov	r0, #1	@ MinDispFspNum,
	b	.L1626	@
.L1625:
	mov	r0, #6	@ MinDispFspNum,
	b	.L1626	@
.L1636:
	mov	ip, r5	@ OneChanMemFlag, pChanMem
	b	.L1633	@
.L1645:
	mov	r2, r0	@, eCapLevel
	ldr	r1, .L1647+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37809,
	b	.L1624	@
.L1634:
	ldr	r1, .L1647+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #8]	@ pChanMem_40(D)->Length, pChanMem_40(D)->Length
	ldmia	r5, {r2, r3}	@ pChanMem,,
	mov	r0, #1	@,
	ldr	r1, .L1647+12	@,
	str	ip, [sp]	@ pChanMem_40(D)->Length,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #8]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r3, [sp, #20]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	ldr	r1, .L1647+16	@,
	add	r2, r2, r3	@, VdmChanMemSize, ScdChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37809,
	b	.L1624	@
.L1646:
	ldr	r1, .L1647+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37809,
	b	.L1624	@
.L1648:
	.align	2
.L1647:
	.word	CapItem
	.word	.LC199
	.word	.LC201
	.word	.LC202
	.word	.LC203
	.word	.LC200
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ ChanID, ChanID
	ldr	r7, .L1674	@ tmp135,
	.pad #112
	sub	sp, sp, #112	@,,
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinLockIRQ	@
	cmp	r5, #0	@ ChanID,
	bne	.L1670	@,
	ldr	r6, .L1674+4	@ tmp233,
	ldr	r4, [r6]	@ D.37821, s_pstVfmwChan
	cmp	r4, #0	@ D.37821,
	beq	.L1671	@,
	ldr	r3, [r4, #4]	@ _10->s32IsOpen, _10->s32IsOpen
	cmp	r3, #1	@ _10->s32IsOpen,
	movne	r0, r5	@, ChanID
	ldrne	r3, .L1674+8	@,
	movwne	r2, #2619	@,
	bne	.L1669	@,
	ldr	r1, .L1674+12	@ tmp151,
	mov	r3, #30	@ tmp152,
	ldr	r2, .L1674+16	@ tmp153,
	ldr	r0, .L1674+20	@,
	str	r3, [r1]	@ tmp152, g_FrameRate
	str	r3, [r2]	@ tmp152, g_LastFrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r5, r0, #0	@ ret,
	ldr	r0, .L1674+20	@,
	bne	.L1672	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ret
	bl	VCTRL_ResetChan	@
	ldr	r0, .L1674+20	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, .L1674+24	@ tmp165,
	ldr	r2, [r2, #1604]	@ D.37822, _28->stSynExtraData.s32DnrEnable
	str	r2, [r3, #2964]	@ D.37822, s_DnrChan[0].s32DnrEnable
	ldr	r3, [r4, #880]	@ D.37823, _10->eVidStd
	cmp	r3, #4	@ D.37823,
	beq	.L1655	@,
	sub	r2, r3, #10	@ D.37824, D.37823,
	cmp	r2, #2	@ D.37824,
	bhi	.L1656	@,
	ldr	r2, [r7, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1656	@,
.L1655:
	ldr	r3, [r6, #220]	@ D.37825, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37825,
	beq	.L1657	@,
.L1673:
	add	r0, r4, #217088	@, D.37821,
	add	r0, r0, #432	@,,
	blx	r3	@ D.37825
.L1657:
	mov	r0, #0	@,
	mov	r4, #0	@ tmp223,
	bl	VCTRL_UnInstallChan	@
	ldr	r5, [r6]	@ D.37821, s_pstVfmwChan
	mov	r2, #16	@,
	add	r0, sp, #4	@ tmp234,,
	add	r7, r5, #217088	@ tmp178, D.37821,
	add	r1, r5, #152	@, D.37821,
	ldr	lr, [r5, #224]	@ _39->s32SelfAllocChanMem_ctx, _39->s32SelfAllocChanMem_ctx
	ldr	ip, [r5, #216]	@ _39->s32SelfAllocChanMem_vdh, _39->s32SelfAllocChanMem_vdh
	ldr	r3, [r5, #220]	@ _39->s32SelfAllocChanMem_scd, _39->s32SelfAllocChanMem_scd
	ldr	r8, [r7, #400]	@ _39->s32SelfAllocChanMem_pmv, _39->s32SelfAllocChanMem_pmv
	str	lr, [sp, #76]	@ _39->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	str	ip, [sp, #68]	@ _39->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	str	r3, [sp, #72]	@ _39->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	str	r8, [sp, #80]	@ _39->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r5, #200	@, D.37821,
	mov	r2, #16	@,
	add	r0, sp, #52	@,,
	bl	memcpy	@
	add	r1, r5, #168	@, D.37821,
	mov	r2, #16	@,
	add	r0, sp, #20	@,,
	bl	memcpy	@
	add	r1, r5, #184	@, D.37821,
	mov	r2, #16	@,
	add	r0, sp, #36	@,,
	bl	memcpy	@
	add	r1, r5, #104	@, D.37821,
	mov	r2, #12	@,
	add	r0, sp, #84	@,,
	bl	memcpy	@
	add	r1, r7, #404	@, tmp178,
	mov	r2, #16	@,
	add	r0, sp, #96	@,,
	bl	memcpy	@
	ldr	r2, .L1674+28	@ tmp222,
	ldr	r3, .L1674+32	@ tmp224,
	mov	r0, r4	@, tmp223
	str	r4, [r6]	@ tmp223, s_pstVfmwChan
	str	r4, [r2, #116]	@ tmp223, s_SmIIS.pSmInstArray
	str	r4, [r3]	@ tmp223, s_pFspInst
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, tmp223
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, tmp223
	bl	DNR_CloseChan	@
	ldr	r0, .L1674+20	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1674+36	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #4	@ tmp235,,
	mov	r0, r4	@, tmp223
	bl	VCTRL_FreeChanResource	@
	mov	r0, r4	@ D.37820, tmp223
.L1651:
	add	sp, sp, #112	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1656:
	cmp	r3, #14	@ D.37823,
	bne	.L1657	@,
	ldr	r3, [r6, #220]	@ D.37825, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37825,
	bne	.L1673	@,
	b	.L1657	@
.L1671:
	ldr	r3, .L1674+40	@,
	mov	r0, r4	@, D.37821
	movw	r2, #2607	@,
.L1669:
	ldr	r1, .L1674+44	@,
.L1668:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37820,
	add	sp, sp, #112	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1672:
	bl	OSAL_SpinUnLockIRQ	@
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37820,
	b	.L1651	@
.L1670:
	ldr	r3, .L1674+48	@,
	movw	r2, #2599	@,
	ldr	r1, .L1674+44	@,
	mov	r0, #0	@,
	b	.L1668	@
.L1675:
	.align	2
.L1674:
	.word	.LANCHOR3
	.word	.LANCHOR0
	.word	.LC82
	.word	g_FrameRate
	.word	g_LastFrameRate
	.word	g_SpinLockIrq_Destroy
	.word	s_DnrChan+73728
	.word	s_SmIIS
	.word	s_pFspInst
	.word	.LANCHOR3-3504
	.word	.LC81
	.word	.LC5
	.word	.LC69
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	ldr	r3, .L1678	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r3, r3, r4, lsl #2	@ tmp114, tmp113, ChanID,
	str	r2, [r3, #3604]	@ tmp116, g_DSPState
	ldmfd	sp!, {r4, pc}	@
.L1679:
	.align	2
.L1678:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L1697	@ tmp140,
	ldr	r3, [r5, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L1686	@,
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1682	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChanWithOption	@
	mov	r3, #0	@ tmp122,
	str	r3, [r5, #3604]	@ tmp122, g_DSPState
.L1682:
	bl	FSP_Exit	@
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r2, #3	@ tmp124,
	str	r2, [r5, #36]	@ tmp124, s_VfmwCTrl.eTaskCommand
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1684	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.37857,
	bl	msleep	@
	b	.L1685	@
.L1696:
	bl	msleep	@
	subs	r4, r4, #1	@ D.37857, D.37857,
	beq	.L1684	@,
.L1685:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1696	@,
.L1684:
	mov	r1, #4	@,
	ldr	r0, .L1697+4	@,
	mov	r4, #0	@ tmp128,
	str	r4, [r5, #36]	@ tmp128, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1697+8	@,
	bl	CloseDrivers	@
	str	r4, [r5, #4]	@ tmp128, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r0, r4	@ D.37858, tmp128
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1686:
	mvn	r0, #0	@ D.37858,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1698:
	.align	2
.L1697:
	.word	.LANCHOR0
	.word	.LANCHOR0+3604
	.word	.LANCHOR0+52
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L1713	@,
	ldr	r4, .L1716	@ tmp172,
	ldr	r3, [r4]	@ D.37865, s_pstVfmwChan
	cmp	r3, #0	@ D.37865,
	beq	.L1714	@,
	ldr	r5, [r3, #4]	@ _11->s32IsOpen, _11->s32IsOpen
	cmp	r5, #1	@ _11->s32IsOpen,
	bne	.L1715	@,
	ldr	r3, [r3, #880]	@ _11->eVidStd, _11->eVidStd
	cmp	r3, #19	@ _11->eVidStd,
	bne	.L1704	@,
	ldr	r3, .L1716+4	@,
	movw	r2, #2760	@,
	ldr	r1, .L1716+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37864,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1704:
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4]	@ D.37865, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _18->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _18->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _18->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r8, [r4]	@ D.37865, s_pstVfmwChan
	mov	r1, r7	@, pChanMemVdh
	mov	r2, #16	@,
	add	r0, r8, #168	@, D.37865,
	bl	memcpy	@
	ldr	r2, [r8, #180]	@, _23->stChanMem_vdh.Length
	ldr	r1, [r8, #172]	@, _23->stChanMem_vdh.VirAddr
	ldr	r0, [r8, #176]	@, _23->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r6	@, ChanID
	bl	SM_Start	@
	ldr	r3, [r4]	@ D.37865, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _32->s32Priority, _32->s32Priority
	str	r5, [r3, #8]	@ _11->s32IsOpen, _32->s32IsRun
	cmp	r2, #0	@ _32->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _32->s32StopSyntax
	bne	.L1705	@,
	cmp	r3, #0	@ D.37865,
	str	r5, [r3, #12]	@ _11->s32IsOpen, _32->s32Priority
	ldr	r0, .L1716+12	@,
	ldrne	r3, .L1716+16	@ tmp164,
	ldreq	r1, .L1716+20	@ tmp158,
	ldreq	r2, .L1716+16	@ tmp160,
	ldrne	r2, .L1716+20	@ tmp162,
	streq	r3, [r1, #-3460]	@ D.37865, PrioArray
	streq	r3, [r2]	@ D.37865, g_ChanCtx.PriorByChanId
	strne	r5, [r3]	@ _11->s32IsOpen, g_ChanCtx.PriorByChanId
	strne	r5, [r2, #-3460]	@ _11->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4]	@ D.37865, s_pstVfmwChan
.L1705:
	ldr	r3, [r3, #1580]	@ _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1708	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L1708:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37864,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1715:
	ldr	r3, .L1716+24	@,
	movw	r2, #2759	@,
	ldr	r1, .L1716+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37864,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1713:
	ldr	r3, .L1716+28	@,
	movw	r2, #2757	@,
	ldr	r1, .L1716+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37864,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1714:
	ldr	r3, .L1716+32	@,
	movw	r2, #2758	@,
	ldr	r1, .L1716+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37864,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1717:
	.align	2
.L1716:
	.word	.LANCHOR0
	.word	.LC79
	.word	.LC5
	.word	.LANCHOR3-3460
	.word	g_ChanCtx
	.word	.LANCHOR3
	.word	.LC78
	.word	.LC69
	.word	.LC70
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	mov	r3, #0	@ tmp192,
	.pad #172
	sub	sp, sp, #172	@,,
	mov	r5, r1	@ pstCfg, pstCfg
	str	r3, [r1, #44]	@ tmp192, pstCfg_11(D)->s32VcmpEn
	bne	.L1753	@,
	ldr	r6, .L1760	@ tmp326,
	ldr	r3, [r6]	@ D.37882, s_pstVfmwChan
	cmp	r3, #0	@ D.37882,
	beq	.L1754	@,
	ldr	r7, [r3, #4]	@ _15->s32IsOpen, _15->s32IsOpen
	cmp	r7, #1	@ _15->s32IsOpen,
	bne	.L1755	@,
	bl	VCTRL_CheckChanWH	@
	subs	r8, r0, #0	@ D.37883,
	bne	.L1756	@,
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	bgt	.L1752	@,
	mov	r1, r5	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r4, r0, #0	@ D.37879,
	beq	.L1757	@,
	ldr	r4, [r6]	@ D.37882, s_pstVfmwChan
	mov	r2, #72	@,
	mov	r1, r5	@, pstCfg
	add	r9, r5, #4	@ D.37888, pstCfg,
	add	r0, r4, #32	@, D.37882,
	bl	memcpy	@
	ldr	r3, [r5, #12]	@ D.37883, pstCfg_11(D)->s32ChanPriority
	mov	r1, #120	@,
	add	r0, sp, #48	@ tmp330,,
	str	r3, [r4, #12]	@ D.37883, _25->s32Priority
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	str	r3, [r4, #880]	@ pstCfg_11(D)->eVidStd, _25->eVidStd
	bl	__memzero	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #244]	@ D.37883, _34->s32ScdChanMemAddr
	mov	r0, r3	@, D.37883
	str	r3, [sp, #60]	@ D.37883, ScdInstCfg.BufPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	mov	r1, r9	@, D.37888
	ldr	ip, [r5, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	mov	r3, #49152	@ tmp220,
	ldr	r10, [r2, #256]	@ _40->s32ScdChanMemSize, _40->s32ScdChanMemSize
	mov	r2, #8	@,
	ldr	r4, [r5, #12]	@ pstCfg_11(D)->s32ChanPriority, pstCfg_11(D)->s32ChanPriority
	movt	r3, 4115	@ tmp220,
	str	lr, [sp, #56]	@ pstCfg_11(D)->eVidStd, ScdInstCfg.VidStd
	str	r3, [sp, #68]	@ tmp220, ScdInstCfg.RegPhyBaseAddr
	str	ip, [sp, #92]	@ pstCfg_11(D)->s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	str	r8, [sp, #88]	@ D.37883, ScdInstCfg.ScdLowdlyEnable
	str	r10, [sp, #64]	@ _40->s32ScdChanMemSize, ScdInstCfg.BufSize
	strb	r4, [sp, #52]	@ pstCfg_11(D)->s32ChanPriority, ScdInstCfg.Priority
	str	r0, [sp, #48]	@, ScdInstCfg.pBufVirAddr
	add	r0, sp, #72	@,,
	bl	memcpy	@
	add	r1, sp, #48	@ tmp331,,
	mov	r0, r8	@, D.37883
	bl	SM_Config	@
	add	r0, sp, #15	@ tmp332,,
	mov	r1, r7	@, _15->s32IsOpen
	bl	__memzero	@
	ldr	r3, [r5, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	cmp	r3, #0	@ pstCfg_11(D)->s32LowdBufEnable,
	bne	.L1758	@,
.L1726:
	ldr	r4, [r6]	@ D.37882, s_pstVfmwChan
	mov	r1, r9	@, D.37888
	mov	r7, #0	@ tmp245,
	mov	r2, #8	@,
	add	r0, r4, #1264	@, D.37882,
	ldr	r8, .L1760	@ tmp235,
	ldr	fp, [r4, #208]	@ _60->stChanMem_ctx.PhyAddr, _60->stChanMem_ctx.PhyAddr
	add	r0, r0, #12	@,,
	ldr	r3, [r4, #264]	@ _60->s32BpdChanMemSize, _60->s32BpdChanMemSize
	ldr	lr, [r4, #232]	@ _60->s32VdmChanMemSize, _60->s32VdmChanMemSize
	str	fp, [r4, #1392]	@ _60->stChanMem_ctx.PhyAddr, _60->stSynExtraData.s32ContextMemAddr
	str	r3, [r4, #928]	@ _60->s32BpdChanMemSize, _60->stSynExtraData.s32BpdMemSize
	ldr	ip, [r4, #260]	@ _60->s32BpdChanMemAddr, _60->s32BpdChanMemAddr
	ldr	r3, [r4, #268]	@ tmp334, _60->s32Vp8SegIdChanMemAddr
	ldr	r10, [r4, #212]	@ _60->stChanMem_ctx.Length, _60->stChanMem_ctx.Length
	ldr	r9, [r4, #228]	@ _60->s32VdmChanMemAddr, _60->s32VdmChanMemAddr
	ldr	fp, [r4, #272]	@ _60->s32Vp8SegIdChanMemSize, _60->s32Vp8SegIdChanMemSize
	str	lr, [r4, #916]	@ _60->s32VdmChanMemSize, _60->stSynExtraData.s32SyntaxMemSize
	str	ip, [r4, #924]	@ _60->s32BpdChanMemAddr, _60->stSynExtraData.s32BpdMemAddr
	str	r10, [r4, #1396]	@ _60->stChanMem_ctx.Length, _60->stSynExtraData.s32ContextMemSize
	str	r9, [r4, #912]	@ _60->s32VdmChanMemAddr, _60->stSynExtraData.s32SyntaxMemAddr
	str	r3, [r4, #932]	@ tmp334, _60->stSynExtraData.s32Vp8SegIdMemAddr
	str	fp, [r4, #936]	@ _60->s32Vp8SegIdChanMemSize, _60->stSynExtraData.s32Vp8SegIdMemSize
	ldr	r3, [r5, #16]	@ D.37883, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r4, #892]	@ D.37883, _60->stSynExtraData.s32OutErrThr
	ldr	r3, [r5, #16]	@ D.37883, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r4, #888]	@ D.37883, _60->stSynExtraData.s32RefErrThr
	ldr	r3, [r5, #24]	@ pstCfg_11(D)->s32DecMode, pstCfg_11(D)->s32DecMode
	str	r3, [r4, #896]	@ pstCfg_11(D)->s32DecMode, _60->stSynExtraData.s32DecMode
	ldr	r3, [r5, #28]	@ D.37883, pstCfg_11(D)->s32DecOrderOutput
	str	r3, [r4, #900]	@ D.37883, _60->stSynExtraData.s32DecOrderOutput
	ldr	r3, [r5, #32]	@ D.37883, pstCfg_11(D)->s32DnrTfEnable
	str	r3, [r4, #904]	@ D.37883, _60->stSynExtraData.s32DnrTfEnable
	ldr	r3, [r5, #44]	@ D.37883, pstCfg_11(D)->s32VcmpEn
	str	r7, [r4, #1616]	@ tmp245, _60->stSynExtraData.s32DSDWaitFlag
	str	r3, [r4, #1400]	@ D.37883, _60->stSynExtraData.s32Compress_en
	ldr	r3, [r5, #60]	@ pstCfg_11(D)->s32SupportAllP, pstCfg_11(D)->s32SupportAllP
	sub	r3, r3, #1	@ D.37890, pstCfg_11(D)->s32SupportAllP,
	clz	r3, r3	@ D.37890, D.37890
	mov	r3, r3, lsr #5	@ D.37890, D.37890,
	str	r3, [r4, #1416]	@ D.37890, _60->stSynExtraData.s32SupportAllP
	ldr	r3, [r5, #64]	@ D.37883, pstCfg_11(D)->s32ModuleLowlyEnable
	str	r3, [r4, #1420]	@ D.37883, _60->stSynExtraData.s32ModuleLowlyEnable
	bl	memcpy	@
	add	r3, r4, #217088	@ tmp328, D.37882,
	str	r7, [r4, #908]	@ tmp245, _60->stSynExtraData.s32DnrDispOutEnable
	ldr	r2, [r4, #880]	@ D.37881, _60->eVidStd
	ldr	r1, [r3, #424]	@ _60->stSynCtx.eVidStd, _60->stSynCtx.eVidStd
	cmp	r1, r2	@ _60->stSynCtx.eVidStd, D.37881
	beq	.L1727	@,
	mov	r0, r7	@, tmp245
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	ldr	r4, [r8]	@ D.37882, s_pstVfmwChan
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	beq	.L1728	@,
	ldr	r2, [r4, #880]	@ D.37881, _103->eVidStd
	add	r3, r4, #217088	@ tmp328, D.37882,
.L1727:
	str	r2, [r3, #424]	@ D.37881, _179->stSynCtx.eVidStd
	ldr	r3, [r4, #248]	@ D.37883, _179->s32SdecMemAddr
	mov	r0, r3	@, D.37883
	str	r3, [sp, #16]	@ D.37883, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, sp, #16	@,,
	ldr	r3, [r3, #252]	@ _123->s32SdecMemSize, _123->s32SdecMemSize
	str	r3, [sp, #24]	@ _123->s32SdecMemSize, stMem.Length
	str	r0, [sp, #20]	@, stMem.VirAddr
	mov	r0, #0	@,
	bl	RefreshDecCore	@
	subs	r4, r0, #0	@ D.37879,
	beq	.L1759	@,
.L1752:
	mvn	r4, #0	@ D.37879,
.L1720:
	mov	r0, r4	@, D.37879
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1757:
	ldr	r1, .L1760+4	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.37879
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1758:
	add	r1, sp, #15	@ tmp333,,
	mov	r0, r8	@, D.37883
	strb	r7, [sp, #15]	@ _15->s32IsOpen, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1726	@
.L1728:
	ldr	r3, [r4, #1448]	@ MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].Purpose, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].Purpose
	mov	r0, #0	@,
	ldr	ip, [r4, #252]	@ _103->s32SdecMemSize, _103->s32SdecMemSize
	cmp	r3, #2	@ MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].Purpose,
	ldr	r3, [r4, #248]	@ _103->s32SdecMemAddr, _103->s32SdecMemAddr
	ldrne	r1, [r4, #1456]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32MaxWidth
	ldrne	r2, [r4, #1460]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32MaxHeight
	ldreq	r1, [r4, #1508]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32SlotWidth
	ldreq	r2, [r4, #1512]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32SlotHeight
	str	ip, [sp]	@ _103->s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1731	@,
	ldr	r4, [r6]	@ D.37882, s_pstVfmwChan
	add	r3, r4, #217088	@ tmp328, D.37882,
	ldr	r2, [r4, #880]	@ D.37881, _132->eVidStd
	b	.L1727	@
.L1755:
	ldr	r3, .L1760+8	@,
	movw	r2, #3475	@,
	ldr	r1, .L1760+12	@,
	mvn	r4, #0	@ D.37879,
	bl	dprint_vfmw	@
	b	.L1720	@
.L1759:
	mov	r1, #16	@,
	add	r0, sp, #32	@ tmp335,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.37883, pstCfg_11(D)->eVidStd
	sub	r2, r3, #10	@ D.37893, D.37883,
	cmp	r2, #2	@ D.37893,
	bhi	.L1733	@,
	ldr	r2, .L1760+16	@ tmp274,
	ldr	r2, [r2, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L1736	@,
	cmp	r3, #12	@ D.37883,
	beq	.L1736	@,
	ldr	r3, [r5, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	eor	r3, r3, #1	@ tmp281, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	and	r3, r3, #1	@ D.37880, tmp281,
	strb	r3, [sp, #32]	@ D.37880, DnrChanCfgArgs.s32MirrorEn
.L1735:
	cmp	r3, #0	@ D.37880,
	ldr	r3, [r5, #44]	@ D.37883, pstCfg_11(D)->s32VcmpEn
	movne	r3, #0	@ tmp290,
.L1751:
	ldr	r6, [r6]	@ D.37882, s_pstVfmwChan
	ldr	r0, [r5, #48]	@ pstCfg_11(D)->s32WmEn, pstCfg_11(D)->s32WmEn
	ldr	r1, [r5, #52]	@ pstCfg_11(D)->s32VcmpWmStartLine, pstCfg_11(D)->s32VcmpWmStartLine
	ldr	ip, [r6, #1580]	@ _173->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _173->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r2, [r5, #56]	@ pstCfg_11(D)->s32VcmpWmEndLine, pstCfg_11(D)->s32VcmpWmEndLine
	strb	r3, [sp, #33]	@ tmp290, DnrChanCfgArgs.s32VcmpEn
	mov	r3, #1	@ tmp296,
	cmp	ip, r3	@ _173->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	strb	r0, [sp, #34]	@ pstCfg_11(D)->s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r1, [sp, #36]	@ pstCfg_11(D)->s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #40]	@ pstCfg_11(D)->s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	str	r3, [sp, #44]	@ tmp296, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	r5, .L1760	@ tmp297,
	beq	.L1740	@,
	add	r1, sp, #32	@ tmp336,,
	mov	r0, #0	@,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1752	@,
	ldr	r6, [r5]	@ D.37882, s_pstVfmwChan
.L1741:
	ldr	r3, .L1760+20	@ tmp312,
	cmp	r6, #0	@ D.37882,
	add	r2, r6, #180224	@ tmp309, D.37882,
	mov	r1, #0	@ tmp310,
	ldr	r0, .L1760+24	@,
	ldr	r3, [r3, #116]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	strb	r1, [r2, #1536]	@ tmp310, _142->FspInst.s32InstID
	add	r3, r3, #163840	@ tmp315, s_SmIIS.pSmInstArray,
	ldreq	r2, .L1760+16	@ tmp317,
	ldrne	r2, .L1760+28	@ tmp322,
	str	r1, [r3, #2408]	@ tmp310, _134->InstID
	ldreq	r3, .L1760+28	@ tmp319,
	ldrne	r3, [r6, #12]	@ D.37883, _142->s32Priority
	ldrne	r1, .L1760+16	@ tmp321,
	streq	r6, [r2, #-3456]	@ D.37882, PrioArray
	streq	r6, [r3]	@ D.37882, g_ChanCtx.PriorByChanId
	strne	r3, [r1, #-3456]	@ D.37883, PrioArray
	strne	r3, [r2]	@ D.37883, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	b	.L1720	@
.L1733:
	strb	r4, [sp, #32]	@ D.37879, DnrChanCfgArgs.s32MirrorEn
	ldr	r3, [r5, #44]	@ D.37883, pstCfg_11(D)->s32VcmpEn
	b	.L1751	@
.L1753:
	mov	r0, r3	@, tmp192
	movw	r2, #3473	@,
	ldr	r3, .L1760+32	@,
	mvn	r4, #0	@ D.37879,
	ldr	r1, .L1760+12	@,
	bl	dprint_vfmw	@
	b	.L1720	@
.L1756:
	mov	r0, r4	@, ChanID
	ldr	r1, .L1760+36	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.37879,
	b	.L1720	@
.L1736:
	ldr	r3, [r5, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	and	r3, r3, #1	@ D.37880, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #32]	@ D.37880, DnrChanCfgArgs.s32MirrorEn
	b	.L1735	@
.L1740:
	add	r0, r6, #217088	@, D.37882,
	add	r1, sp, #32	@ tmp337,,
	mov	r2, #16	@,
	add	r0, r0, #360	@,,
	bl	memcpy	@
	b	.L1741	@
.L1754:
	ldr	r3, .L1760+40	@,
	movw	r2, #3474	@,
	ldr	r1, .L1760+12	@,
	mvn	r4, #0	@ D.37879,
	bl	dprint_vfmw	@
	b	.L1720	@
.L1731:
	ldr	r1, .L1760+44	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1752	@
.L1761:
	.align	2
.L1760:
	.word	.LANCHOR0
	.word	.LC206
	.word	.LC204
	.word	.LC5
	.word	.LANCHOR3
	.word	s_SmIIS
	.word	.LANCHOR3-3456
	.word	g_ChanCtx
	.word	.LC69
	.word	.LC205
	.word	.LC6
	.word	.LC207
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.type	VfmwProc_SetDropStreamThread, %function
VfmwProc_SetDropStreamThread:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #76
	sub	sp, sp, #76	@,,
	ldr	r4, [r0]	@ dat, *p_args_3(D)
	mov	r0, #32	@,
	ldr	r1, .L1765	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Thr
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1762	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #20]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L1762:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1766:
	.align	2
.L1765:
	.word	.LC208
	.fnend
	.size	VfmwProc_SetDropStreamThread, .-VfmwProc_SetDropStreamThread
	.align	2
	.type	VfmwProc_SetDecMode, %function
VfmwProc_SetDecMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #76
	sub	sp, sp, #76	@,,
	ldr	r4, [r0]	@ dat, *p_args_3(D)
	mov	r0, #32	@,
	ldr	r1, .L1770	@,
	and	r5, r4, #3	@ Mode, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Mode
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1767	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #24]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L1767:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1771:
	.align	2
.L1770:
	.word	.LC209
	.fnend
	.size	VfmwProc_SetDecMode, .-VfmwProc_SetDecMode
	.align	2
	.type	VfmwProc_SetDecOrderOutput, %function
VfmwProc_SetDecOrderOutput:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #76
	sub	sp, sp, #76	@,,
	ldr	r4, [r0]	@ dat, *p_args_3(D)
	mov	r0, #32	@,
	ldr	r1, .L1775	@,
	and	r5, r4, #3	@ DecOrderOutput, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, DecOrderOutput
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1772	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #28]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L1772:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1776:
	.align	2
.L1775:
	.word	.LC210
	.fnend
	.size	VfmwProc_SetDecOrderOutput, .-VfmwProc_SetDecOrderOutput
	.align	2
	.type	VfmwProc_SetErrorThread, %function
VfmwProc_SetErrorThread:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #76
	sub	sp, sp, #76	@,,
	ldr	r4, [r0]	@ dat, *p_args_3(D)
	mov	r0, #32	@,
	ldr	r1, .L1780	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Thr
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1777	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #16]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L1777:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1781:
	.align	2
.L1780:
	.word	.LC211
	.fnend
	.size	VfmwProc_SetErrorThread, .-VfmwProc_SetErrorThread
	.align	2
	.type	VfmwProc_TestRestartChan, %function
VfmwProc_TestRestartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0]	@ dat, *p_args_2(D)
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1784	@,
	mov	r3, r0	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1784+4	@,
	mov	r3, r0	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1784+8	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L1785:
	.align	2
.L1784:
	.word	.LC83
	.word	.LC212
	.word	.LC80
	.fnend
	.size	VfmwProc_TestRestartChan, .-VfmwProc_TestRestartChan
	.align	2
	.type	VfmwProc_TestResetChan, %function
VfmwProc_TestResetChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0]	@ dat, *p_args_2(D)
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1788	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L1789:
	.align	2
.L1788:
	.word	.LC212
	.fnend
	.size	VfmwProc_TestResetChan, .-VfmwProc_TestResetChan
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	bne	.L1796	@,
	ldr	r3, .L1797	@ tmp116,
	ldr	r3, [r3]	@ D.37943, s_pstVfmwChan
	cmp	r3, #0	@ D.37943,
	ldrne	r0, [r3, #676]	@ D.37942, _6->s32LastFrameIdPlus2
	mvneq	r0, #0	@ D.37942,
	bx	lr	@
.L1796:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #7997	@,
	ldr	r3, .L1797+4	@,
	mov	r0, #0	@,
	ldr	r1, .L1797+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37942,
	ldmfd	sp!, {r4, pc}	@
.L1798:
	.align	2
.L1797:
	.word	.LANCHOR0
	.word	.LC69
	.word	.LC5
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L1805	@,
	ldr	r3, .L1806	@ tmp115,
	ldr	r3, [r3]	@ D.37948, s_pstVfmwChan
	cmp	r3, #0	@ D.37948,
	strne	r1, [r3, #676]	@ Value, _5->s32LastFrameIdPlus2
	bx	lr	@
.L1805:
	ldr	r3, .L1806+4	@,
	movw	r2, #8009	@,
	ldr	r1, .L1806+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L1807:
	.align	2
.L1806:
	.word	.LANCHOR0
	.word	.LC69
	.word	.LC120
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanId, ChanId
	ldr	r6, .L1836	@ tmp158,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r6, r0, asl #2]	@ D.37955, s_pstVfmwChan
	add	r0, r3, #217088	@ tmp131, D.37955,
	ldr	r2, [r0, #424]	@ D.37956, _8->stSynCtx.eVidStd
	cmp	r2, #2	@ D.37956,
	beq	.L1810	@,
	cmp	r2, #3	@ D.37956,
	beq	.L1811	@,
	cmp	r2, #0	@ D.37956,
	mvnne	r4, #0	@ ret,
	beq	.L1834	@,
.L1809:
	add	r3, r4, #1	@ tmp139, ret,
	cmp	r3, #1	@ tmp139,
	bhi	.L1813	@,
	ldr	r3, .L1836+4	@ tmp140,
	ldr	r3, [r3, #-3528]	@ D.37961, g_event_report
	cmp	r3, #0	@ D.37961,
	beq	.L1815	@,
	add	r2, sp, #8	@ tmp142,,
	mov	ip, #1	@ tmp141,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp141, para
	blx	r3	@ D.37961
.L1815:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1813:
	ldr	r3, .L1836+8	@ tmp143,
	ldr	r3, [r3]	@ D.37963, g_chipID
	cmp	r3, #16	@ D.37963,
	bhi	.L1815	@,
	mov	r1, #1	@ tmp144,
	movw	r2, #32831	@ tmp145,
	mov	r3, r1, asl r3	@ D.37957, tmp144,
	bfi	r2, r1, #16, #16	@ tmp145, tmp144,,
	tst	r3, r2	@ D.37957, tmp145
	bne	.L1816	@,
	tst	r3, #3904	@ D.37957,
	beq	.L1815	@,
	ldr	r3, .L1836+4	@ tmp153,
	ldr	r3, [r3, #-3528]	@ D.37961, g_event_report
	cmp	r3, #0	@ D.37961,
	beq	.L1820	@,
	add	r2, sp, #8	@ tmp154,,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ D.37961
.L1820:
	sub	r2, r4, #2	@, ret,
	ldr	r1, .L1836+12	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L1815	@
.L1834:
	add	r0, r0, #432	@, tmp131,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1809	@
.L1810:
	add	r0, r0, #432	@, tmp131,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1809	@
.L1811:
	add	r0, r0, #432	@, tmp131,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1809	@
.L1816:
	cmp	r5, #0	@ ChanId,
	bne	.L1835	@,
	ldr	r3, [r6]	@ D.37955, s_pstVfmwChan
	cmp	r3, #0	@ D.37955,
	strne	r4, [r3, #676]	@ ret, _40->s32LastFrameIdPlus2
.L1819:
	sub	r2, r4, #2	@, ret,
	ldr	r1, .L1836+16	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1835:
	ldr	r3, .L1836+20	@,
	movw	r2, #8009	@,
	ldr	r1, .L1836+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1819	@
.L1837:
	.align	2
.L1836:
	.word	.LANCHOR0
	.word	.LANCHOR3
	.word	g_chipID
	.word	.LC214
	.word	.LC213
	.word	.LC69
	.word	.LC120
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r6, .L1853	@ tmp127,
	ldr	ip, [r6, r0, asl #2]	@ D.37990, s_pstVfmwChan
	cmp	ip, #0	@ D.37990,
	beq	.L1848	@,
	ldr	r4, [ip, #880]	@ VidStd, _4->eVidStd
	mov	r5, r0	@ ChanId, ChanId
	cmp	r4, #2	@ VidStd,
	beq	.L1841	@,
	cmp	r4, #3	@ VidStd,
	beq	.L1842	@,
	cmp	r4, #0	@ VidStd,
	beq	.L1849	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1842:
	add	r0, ip, #217088	@, D.37990,
	add	r0, r0, #432	@,,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r6, r5, asl #2]	@ D.37990, s_pstVfmwChan
	add	r2, r3, #290816	@ tmp152, D.37990,
	ldrb	r2, [r2, #417]	@ zero_extendqisi2	@ _18->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, _18->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _18->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	beq	.L1850	@,
.L1845:
	add	r3, r3, #217088	@ tmp162, D.37990,
	mov	r2, #0	@ tmp163,
	str	r2, [r3, #436]	@ tmp163, _42->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1849:
	add	r0, ip, #217088	@, D.37990,
	mov	r3, r2	@ pLumaInfo, pLumaInfo
	str	r4, [sp]	@ VidStd,
	mov	r2, #1	@,
	add	r0, r0, #432	@,,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r6, r5, asl #2]	@ D.37990, s_pstVfmwChan
	add	r2, r3, #229376	@ tmp136, D.37990,
	ldrb	r2, [r2, #1700]	@ zero_extendqisi2	@ _13->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, _13->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _13->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L1851	@,
.L1844:
	add	r3, r3, #217088	@ tmp146, D.37990,
	mov	r2, #0	@ tmp147,
	str	r2, [r3, #792]	@ tmp147, _44->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1841:
	add	r0, ip, #217088	@, D.37990,
	add	r0, r0, #432	@,,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r3, [r6, r5, asl #2]	@ D.37990, s_pstVfmwChan
	add	r2, r3, #237568	@ tmp168, D.37990,
	ldrb	r2, [r2, #2948]	@ zero_extendqisi2	@ _23->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, _23->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _23->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L1852	@,
.L1846:
	add	r3, r3, #217088	@ tmp178, D.37990,
	mov	r2, #0	@ tmp179,
	str	r2, [r3, #1468]	@ tmp179, _10->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1852:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp171, s_pstVfmwChan
	mov	r1, #0	@ tmp174,
	add	r2, r3, #237568	@ tmp173, tmp171,
	strb	r1, [r2, #2948]	@ tmp174, _25->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	b	.L1846	@
.L1850:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp155, s_pstVfmwChan
	mov	r1, #0	@ tmp158,
	add	r2, r3, #290816	@ tmp157, tmp155,
	strb	r1, [r2, #417]	@ tmp158, _20->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	b	.L1845	@
.L1848:
	mov	r0, ip	@, D.37990
	ldr	r3, .L1853+4	@,
	movw	r2, #4639	@,
	ldr	r1, .L1853+8	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L1851:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp139, s_pstVfmwChan
	add	r2, r3, #229376	@ tmp141, tmp139,
	strb	r4, [r2, #1700]	@ VidStd, _15->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	b	.L1844	@
.L1854:
	.align	2
.L1853:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC120
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0	@ ChanId, ChanId
	bne	.L1861	@,
	ldr	r3, .L1863	@ tmp118,
	ldr	r3, [r3]	@ D.37997, s_pstVfmwChan
	cmp	r3, #0	@ D.37997,
	beq	.L1862	@,
	ldr	r3, [r3, #8]	@ _5->s32IsRun, _5->s32IsRun
	cmp	r3, #1	@ _5->s32IsRun,
	beq	.L1858	@,
	ldr	r3, .L1863+4	@,
	movw	r2, #4758	@,
	ldr	r1, .L1863+8	@,
	b	dprint_vfmw	@
.L1858:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r2	@ pLumaInfo, pLumaInfo
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r4, ip	@ ChanId, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r6	@, pLumaInfo
	mov	r1, r5	@, ErrRatio
	mov	r0, r4	@, ChanId
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_PostProc	@
.L1861:
	ldr	r3, .L1863+12	@,
	movw	r2, #4756	@,
	ldr	r1, .L1863+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L1862:
	ldr	r3, .L1863+16	@,
	movw	r2, #4757	@,
	ldr	r1, .L1863+8	@,
	b	dprint_vfmw	@
.L1864:
	.align	2
.L1863:
	.word	.LANCHOR0
	.word	.LC102
	.word	.LC120
	.word	.LC101
	.word	.LC92
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1872	@ tmp114,
	ldr	ip, [r3, #-3528]	@ D.38002, g_event_report
	cmp	ip, #0	@ D.38002,
	bxeq	lr	@
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r2, sp, #8	@ tmp116,,
	add	r3, r1, #2	@ D.38003, LastFrameID,
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ D.38003, para
	blx	ip	@ D.38002
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L1873:
	.align	2
.L1872:
	.word	.LANCHOR3
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	VCTRL_EnableEsBuf
	.type	VCTRL_EnableEsBuf, %function
VCTRL_EnableEsBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1875	@ tmp111,
	mov	r2, #1	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3452]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1876:
	.align	2
.L1875:
	.word	.LANCHOR3
	.fnend
	.size	VCTRL_EnableEsBuf, .-VCTRL_EnableEsBuf
	.align	2
	.global	VCTRL_DisableEsBuf
	.type	VCTRL_DisableEsBuf, %function
VCTRL_DisableEsBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1878	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3452]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1879:
	.align	2
.L1878:
	.word	.LANCHOR3
	.fnend
	.size	VCTRL_DisableEsBuf, .-VCTRL_DisableEsBuf
	.align	2
	.global	VCTRL_IsEsBufEnable
	.type	VCTRL_IsEsBufEnable, %function
VCTRL_IsEsBufEnable:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1881	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp114, ChanID,
	ldr	r0, [r0, #-3452]	@, g_EsBufValidFlag
	bx	lr	@
.L1882:
	.align	2
.L1881:
	.word	.LANCHOR3
	.fnend
	.size	VCTRL_IsEsBufEnable, .-VCTRL_IsEsBufEnable
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L1884	@
.L1886:
	.word	.L1885
	.word	.L1887
	.word	.L1888
	.word	.L1889
	.word	.L1890
	.word	.L1891
	.word	.L1892
.L1892:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #1	@ eYuvFormat,
	movne	r0, #7	@ eYuvFormat,
	bx	lr	@
.L1885:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #0	@ eYuvFormat,
	movne	r0, #6	@ eYuvFormat,
	bx	lr	@
.L1887:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	bx	lr	@
.L1888:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	bx	lr	@
.L1889:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	bx	lr	@
.L1890:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	bx	lr	@
.L1891:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	bx	lr	@
.L1884:
	mov	r3, r1	@ enFmt, enFmt
	movw	r2, #8330	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #1	@,
	ldr	r1, .L1903	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r4, pc}	@
.L1904:
	.align	2
.L1903:
	.word	.LC215
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.global	g_DnrIrqHandle
	.global	g_VdecIrqHandle
	.global	g_StopDec
	.global	g_DnrSleepTime
	.global	g_SleepTime
	.global	pOption
	.global	g_eVdmVersion
	.global	g_VdmCharacter
	.global	g_CurProcChan
	.global	g_ResetCreateNewSave
	.global	save_yuv_chan_num
	.global	vfmw_save_yuv_file
	.global	save_seg_chan_num
	.global	vfmw_save_seg_file
	.global	save_str_chan_num
	.global	vfmw_save_str_file
	.global	g_pDbgMemVir
	.global	g_DbgMemPhy
	.global	g_not_allow_H264FullPictureRepair_flag
	.global	g_not_direct_8x8_inference_flag
	.global	g_allow_B_before_P
	.global	extra_cmd
	.global	extra_disp
	.global	extra_ref
	.global	g_VfmwGlobalStat
	.global	g_VfmwChanStat
	.global	s_pstVfmwChan
	.global	AcceleratorCharacter
	.global	g_event_report
	.global	g_ActivateLock
	.global	g_IntEvent
	.global	g_DSDLock
	.global	g_TaskLock
	.global	g_SdecFunc
	.global	g_ChanTick
	.global	g_scd_vir
	.global	g_DSPState
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.31572, %object
	.size	__func__.31572, 18
__func__.31572:
	.ascii	"VCTRL_EventReport\000"
	.space	2
.LC24:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.type	__func__.31584, %object
	.size	__func__.31584, 18
__func__.31584:
	.ascii	"VCTRL_SetCallBack\000"
	.space	2
	.type	__func__.31698, %object
	.size	__func__.31698, 29
__func__.31698:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.32282, %object
	.size	__func__.32282, 26
__func__.32282:
	.ascii	"VCTRL_GetMemSize_onDecode\000"
	.space	2
	.type	__func__.32581, %object
	.size	__func__.32581, 18
__func__.32581:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.32587, %object
	.size	__func__.32587, 19
__func__.32587:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.32593, %object
	.size	__func__.32593, 16
__func__.32593:
	.ascii	"GetExtraCtrlCmd\000"
	.type	g_ProcCommandTable, %object
	.size	g_ProcCommandTable, 280
g_ProcCommandTable:
@ CmdName:
	.word	0
@ pHandler:
	.word	VfmwProc_SetPrintLevel
@ CmdName:
	.word	2
@ pHandler:
	.word	VfmwProc_SetErrorThread
@ CmdName:
	.word	4
@ pHandler:
	.word	VfmwProc_SetDecOrderOutput
@ CmdName:
	.word	5
@ pHandler:
	.word	VfmwProc_SetDecMode
@ CmdName:
	.word	7
@ pHandler:
	.word	VfmwProc_SetDropStreamThread
@ CmdName:
	.word	10
@ pHandler:
	.word	VfmwProc_SetDNR
@ CmdName:
	.word	11
@ pHandler:
	.word	VfmwProc_SetUSE_FF_APT_EN
@ CmdName:
	.word	12
@ pHandler:
	.word	VfmwProc_SetSaveFileAfterReset
@ CmdName:
	.word	13
@ pHandler:
	.word	VfmwProc_SetCurProcChan
@ CmdName:
	.word	14
@ pHandler:
	.word	VfmwProc_SetDNRCfg
@ CmdName:
	.word	256
@ pHandler:
	.word	VfmwProc_PrintTracer
@ CmdName:
	.word	512
@ pHandler:
	.word	VfmwProc_Savestream
@ CmdName:
	.word	513
@ pHandler:
	.word	VfmwProc_SaveSeg
@ CmdName:
	.word	514
@ pHandler:
	.word	VfmwProc_SaveYUV
@ CmdName:
	.word	515
@ pHandler:
	.word	VfmwProc_SaveOneYUV
@ CmdName:
	.word	516
@ pHandler:
	.word	VfmwProc_Save1DYUV
@ CmdName:
	.word	768
@ pHandler:
	.word	VfmwProc_TestSuspend
@ CmdName:
	.word	769
@ pHandler:
	.word	VfmwProc_TestResume
@ CmdName:
	.word	896
@ pHandler:
	.word	VfmwProc_TestStopChan
@ CmdName:
	.word	897
@ pHandler:
	.word	VfmwProc_TestResetChan
@ CmdName:
	.word	898
@ pHandler:
	.word	VfmwProc_TestStartChan
@ CmdName:
	.word	899
@ pHandler:
	.word	VfmwProc_TestRestartChan
@ CmdName:
	.word	1024
@ pHandler:
	.word	VfmwProc_TestTimeSequence
@ CmdName:
	.word	1025
@ pHandler:
	.word	VfmwProc_SetDnrSleepTime
@ CmdName:
	.word	1026
@ pHandler:
	.word	VfmwProc_TestStopDec
@ CmdName:
	.word	1280
@ pHandler:
	.word	VfmwProc_SetTraceCtrl
@ CmdName:
	.word	1281
@ pHandler:
	.word	VfmwProc_SetTraceBSPeriod
@ CmdName:
	.word	1282
@ pHandler:
	.word	VfmwProc_SetTraceFramePeriod
@ CmdName:
	.word	1283
@ pHandler:
	.word	VfmwProc_SetTraceImgPeriod
@ CmdName:
	.word	1284
@ pHandler:
	.word	VfmwProc_SetNoStreamReportPeriod
@ CmdName:
	.word	1536
@ pHandler:
	.word	VfmwProc_OpenModuleLowly
@ CmdName:
	.word	1537
@ pHandler:
	.word	VfmwProc_CloseModuleLowly
@ CmdName:
	.word	1539
@ pHandler:
	.word	VfmwProc_OpenScdLowdly
@ CmdName:
	.word	1540
@ pHandler:
	.word	VfmwProc_CloseScdLowdly
@ CmdName:
	.word	65535
@ pHandler:
	.word	0
	.type	__param_str_extra_cmd, %object
	.size	__param_str_extra_cmd, 10
__param_str_extra_cmd:
	.ascii	"extra_cmd\000"
	.space	2
	.type	__param_str_extra_disp, %object
	.size	__param_str_extra_disp, 11
__param_str_extra_disp:
	.ascii	"extra_disp\000"
	.space	1
	.type	__param_str_extra_ref, %object
	.size	__param_str_extra_ref, 10
__param_str_extra_ref:
	.ascii	"extra_ref\000"
	.section	.modinfo,"a",%progbits
	.type	__UNIQUE_ID_extra_cmdtype2, %object
	.size	__UNIQUE_ID_extra_cmdtype2, 23
__UNIQUE_ID_extra_cmdtype2:
	.ascii	"parmtype=extra_cmd:int\000"
	.type	__UNIQUE_ID_extra_disptype1, %object
	.size	__UNIQUE_ID_extra_disptype1, 24
__UNIQUE_ID_extra_disptype1:
	.ascii	"parmtype=extra_disp:int\000"
	.type	__UNIQUE_ID_extra_reftype0, %object
	.size	__UNIQUE_ID_extra_reftype0, 23
__UNIQUE_ID_extra_reftype0:
	.ascii	"parmtype=extra_ref:int\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	s_VfmwSavePath, %object
	.size	s_VfmwSavePath, 64
s_VfmwSavePath:
	.byte	47
	.byte	109
	.byte	110
	.byte	116
	.byte	0
	.space	59
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC4:
	.ascii	"InstID out of range\000"
.LC5:
	.ascii	"vdm_ctrl.c,L%d: %s\012\000"
.LC6:
	.ascii	"Chan inactive\000"
	.space	2
.LC7:
	.ascii	"s_VfmwCTrl.event_report_vdec = NULL\012\000"
	.space	3
.LC8:
	.ascii	"s_VfmwCTrl.event_report_omxvdec = NULL\012\000"
.LC9:
	.ascii	"%s Unkown Adapter Type: %d\012\000"
.LC10:
	.ascii	"------ g_NoStreamReportPeriod = %x ------\012\000"
	.space	1
.LC11:
	.ascii	"------ g_TraceImgPeriod = %x ------\012\000"
	.space	3
.LC12:
	.ascii	"------ g_TraceFramePeriod = %x ------\012\000"
	.space	1
.LC13:
	.ascii	"------ g_TraceBsPeriod = %x ------\012\000"
.LC14:
	.ascii	"------ g_TraceCtrl = %x ------\012\000"
.LC15:
	.ascii	"------ dec stop = %d ------\012\000"
	.space	3
.LC16:
	.ascii	"------ dnr active per %d ms ------\012\000"
.LC17:
	.ascii	"------ dec task delay %d ms ------\012\000"
.LC18:
	.ascii	"NO SUCH CHANNEL : %d\012\000"
	.space	2
.LC19:
	.ascii	"Pay attention to  CHANNEL : %d\012\000"
.LC20:
	.ascii	"ResetCreateNewSave = %d\012\000"
	.space	3
.LC21:
	.ascii	"ResetCreateNewSave can NOT be set to %d, must be 0 "
	.ascii	"or 1\012\000"
	.space	3
.LC22:
	.ascii	"USE_FF_APT_EN = %d\012\000"
.LC23:
	.ascii	"USE_FF_APT_EN can NOT be set to %d, must be 0 or 1\012"
	.ascii	"\000"
.LC25:
	.ascii	"manually set postprocess options:\012\000"
	.space	1
.LC26:
	.ascii	"De-counter(DC)     %s\012\000"
	.space	1
.LC27:
	.ascii	"De-blocking(DB)    %s\012\000"
	.space	1
.LC28:
	.ascii	"De-ringing(DR)     %s\012\000"
	.space	1
.LC29:
	.ascii	"DNR_ConfigChan ERROR\012\000"
	.space	2
.LC30:
	.ascii	"address '0x%x' is not valid!\012\000"
	.space	2
.LC31:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC32:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC33:
	.ascii	"1d image has been saved to '%s'\012\000"
	.space	3
.LC34:
	.ascii	"open file '%s' fail!\012\000"
	.space	2
.LC35:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC36:
	.ascii	"2d image has been saved to '%s'\012\000"
	.space	3
.LC37:
	.ascii	"CreateChanWidthOption: arrange mem for dnr failed\012"
	.ascii	"\000"
	.space	1
.LC38:
	.ascii	"The channel number is to Large.\012\000"
	.space	3
.LC39:
	.ascii	"------ s_pstVfmwChan[%d]->stSynExtraData.s32ModuleL"
	.ascii	"owlyEnable = 1 ------\012\000"
	.space	2
.LC40:
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC41:
	.ascii	"OK create file '%s' for channel %d yuv save\012\000"
	.space	3
.LC42:
	.ascii	"failed create file '%s' for yuv save!\012\000"
	.space	1
.LC43:
	.ascii	">>>> close yuv saving >>>>\012\000"
.LC44:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC45:
	.ascii	"OK create file '%s' for channel %d seg stream save\012"
	.ascii	"\000"
.LC46:
	.ascii	"failed create file '%s' for seg stream save!\012\000"
	.space	2
.LC47:
	.ascii	">>>> close seg stream saving >>>>\012\000"
	.space	1
.LC48:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC49:
	.ascii	"OK create file '%s' for channel %d raw stream save\012"
	.ascii	"\000"
.LC50:
	.ascii	"failed create file '%s' for raw stream save!\012\000"
	.space	2
.LC51:
	.ascii	">>>> close raw stream saving >>>>\012\000"
	.space	1
.LC52:
	.ascii	"pfun_iMediaSoftDEC_Create\000"
	.space	2
.LC53:
	.ascii	"register soft decoder fail: '%s' can not be NULL\012"
	.ascii	"\000"
	.space	2
.LC54:
	.ascii	"pfun_iMediaSoftDEC_Destroy\000"
	.space	1
.LC55:
	.ascii	"pfun_iMediaSoftDEC_Init\000"
.LC56:
	.ascii	"pfun_iMediaSoftDEC_Decode\000"
	.space	2
.LC57:
	.ascii	"pfun_iMediaSoftDEC_RecycleImage\000"
.LC58:
	.ascii	"pfun_iMediaSoftDEC_GetRemainImg\000"
.LC59:
	.ascii	"pfun_iMediaSoftDEC_GetImageBuffer\000"
	.space	2
.LC60:
	.ascii	"wait vdm overtime(%d), force it sleep!\012\000"
.LC61:
	.ascii	"wait scd overtime(%d), force it sleep!\012\000"
.LC62:
	.ascii	"wait dnr overtime(%d), force it sleep!\012\000"
.LC63:
	.ascii	"*** vfmw sleep totally take %d ms\012\000"
	.space	1
.LC64:
	.ascii	"proc cmd need no param:%p\012\000"
	.space	1
.LC65:
	.ascii	"*** vdm can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC66:
	.ascii	"*** scd can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC67:
	.ascii	"event_report null!\000"
	.space	1
.LC68:
	.ascii	"pstStreamIntf is NULL\000"
	.space	2
.LC69:
	.ascii	"ChanID out of range\000"
.LC70:
	.ascii	"This Chan has not been created!!!\000"
	.space	2
.LC71:
	.ascii	"can NOT get a not-opened Chan's information of bits"
	.ascii	"tream\000"
	.space	3
.LC72:
	.ascii	"pArgs is null\000"
	.space	2
.LC73:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC74:
	.ascii	"no mem to arrange for soft dec\012\000"
.LC75:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC76:
	.ascii	"%s: L%d : vdm chan memory is too small to support u"
	.ascii	"ser decoder\012\000"
.LC77:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC78:
	.ascii	"can NOT start a not-opened Chan\000"
.LC79:
	.ascii	"WARNING: vidio std not setted!\000"
	.space	1
.LC80:
	.ascii	"start chan %d: VCTRL_StartChan return %d\012\000"
	.space	2
.LC81:
	.ascii	"This Chan has not been created or has been destroye"
	.ascii	"d !!!\000"
	.space	3
.LC82:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC83:
	.ascii	"stop chan %d: VCTRL_StopChan return %d\012\000"
.LC84:
	.ascii	"pstCfg is null\000"
	.space	1
.LC85:
	.ascii	"create soft-decoder fail!\012\000"
	.space	1
.LC86:
	.ascii	"Chip(id: %d) not support beyond 2032x2032 when Std "
	.ascii	"!= USER.\012\000"
	.space	3
.LC87:
	.ascii	"Chip(id: %d) not support beyond %dx%d when Std != H"
	.ascii	"264/VP8/MVC/USER.\012\000"
	.space	2
.LC88:
	.ascii	"Unknow Chip ID: %d\012\000"
.LC89:
	.ascii	"vfmw_ctrl.c,L%d: VCTRL_GetChanCfg error\012\000"
	.space	3
.LC90:
	.ascii	"WARNNING: ScdLowdlyEnable = %d, VidStd = %d, eDSPSt"
	.ascii	"ate = %d AVS(+) and LOWDLY  cannot supported in the"
	.ascii	" same time!!!\012\000"
	.space	3
.LC91:
	.ascii	"call VCTRL_GetChanImage, ChanID = %d,\012\000"
	.space	1
.LC92:
	.ascii	"This channel is not opened\000"
	.space	1
.LC93:
	.ascii	"vdm_ctrl.c,L%d: Chan inactive\012\000"
	.space	1
.LC94:
	.ascii	"vdm_ctrl.c,L%d: This channel is not opened\012\000"
.LC95:
	.ascii	"pImage is NULL\000"
	.space	1
.LC96:
	.ascii	"call VCTRL_ReleaseChanImage, ChanID, ImgID = %d,%d\012"
	.ascii	"\000"
.LC97:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range\012\000"
	.space	1
.LC98:
	.ascii	"vfmw_ctrl.c, line %d: Chan %d is not open or not ru"
	.ascii	"nning\012\000"
	.space	2
.LC99:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range is %d\012"
	.ascii	"\000"
	.space	3
.LC100:
	.ascii	"Chan %d is not open or not running\012\000"
.LC101:
	.ascii	"ChanId out of range\000"
.LC102:
	.ascii	"This channel is not running\000"
.LC103:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC104:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC105:
	.ascii	"userdec frame(phy=%#x) address error!\012\000"
	.space	1
.LC106:
	.ascii	"can not map vir addr for usrdat frame(cbphy=%#x)\012"
	.ascii	"\000"
	.space	2
.LC107:
	.ascii	"line: %d, pLogic is Null!\012\000"
	.space	1
.LC108:
	.ascii	"pDst is NULL !!!!!!\012\000"
	.space	3
.LC109:
	.ascii	"VCTRL_GetUsrdecFrame but VFMW_USER != s_pstVfmwChan"
	.ascii	"[ChanID]->eVidStd!\012\000"
	.space	1
.LC110:
	.ascii	"VCTRL_GetUsrdecFrame but s_pstVfmwChan[ChanID]->s32"
	.ascii	"UsrdecFrameNum < MIN_USERDEC_FRAME_NUM!\012\000"
.LC111:
	.ascii	"VCTRL_GetUsrdecFrame but FSP_IsNewFsAvalible(ChanID"
	.ascii	") != 1!\012\000"
.LC112:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC113:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC114:
	.ascii	"line: %d, pLf is NULL!\012\000"
.LC115:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC116:
	.ascii	"VCTRL_GetUsrdecFrame get LogicFs fail!\012\000"
.LC117:
	.ascii	"pUsrdecFrame == NULL\000"
	.space	3
.LC118:
	.ascii	"VCTRL_PutUsrdecFrame: VidStd is %d\012\000"
.LC119:
	.ascii	"VCTRL_PutUsrdecFrame return err\012\000"
	.space	3
.LC120:
	.ascii	"vfmw_ctrl.c,L%d: %s\012\000"
	.space	3
.LC121:
	.ascii	"s32SlotWidth or s32SlotHeight is 0.\012\000"
	.space	3
.LC122:
	.ascii	"CAP_LEVEL_USER_DEFINE_WITH_OPTION option is illegal"
	.ascii	".\012\000"
	.space	2
.LC123:
	.ascii	"%s %d: arrange return failure\012\000"
	.space	1
.LC124:
	.ascii	"ERROR: s32MaxRefFrameNum(%d), extra_ref(%d), s32Dis"
	.ascii	"playFrameNum(%d), extra_disp(%d)\012\000"
	.space	3
.LC125:
	.ascii	"VDEC_CID_GET_CHAN_DETAIL_MEMSIZE_BY_OPTION is desig"
	.ascii	"ned for CAP_LEVEL_USER_DEFINE_WITH_OPTION, please c"
	.ascii	"hange channel's capability or use VDEC_CID_GET_CHAN"
	.ascii	"_MEMSIZE.\012\000"
.LC126:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION the purpose of cre"
	.ascii	"ating the channel is not clear.\012\000"
.LC127:
	.ascii	"ERROR: (nPmv(%d) + extra_ref(%d)) <= 0\012\000"
.LC128:
	.ascii	"ERROR: TempMinFrame(%d + %d + %d), TempMiddleFrame("
	.ascii	"%d + %d + %d), TempFluentFrame(%d + %d + %d)\012\000"
	.space	3
.LC129:
	.ascii	"ERROR: eCapLevel %d invalid\012\000"
	.space	3
.LC130:
	.ascii	"VCTRL_GetChanMemSize L%d: arrange return failure\012"
	.ascii	"\000"
	.space	2
.LC131:
	.ascii	"vdec_vdh\000"
	.space	3
.LC132:
	.ascii	"vdec_scd\000"
	.space	3
.LC133:
	.ascii	"vdec_dnr\000"
	.space	3
.LC134:
	.ascii	"VFMW_Hal_%d\000"
.LC135:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC136:
	.ascii	"extra_ref=\000"
	.space	1
.LC137:
	.ascii	"=\000"
	.space	2
.LC138:
	.ascii	" \000"
	.space	2
.LC139:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC140:
	.ascii	"ERROR: extra_ref = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	2
.LC141:
	.ascii	"extra_disp=\000"
.LC142:
	.ascii	"ERROR: extra_disp = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	1
.LC143:
	.ascii	"extra_cmd=\000"
	.space	1
.LC144:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC145:
	.ascii	"(safe,warn,danger) :amount = %d,%d,%d,%d\012\000"
	.space	2
.LC146:
	.ascii	"strm_ctrl: I->IPB\012\000"
	.space	1
.LC147:
	.ascii	"strm_ctrl: IPB->I\012\000"
	.space	1
.LC148:
	.ascii	"(CurrMode,NextMode) = %d,%d\012\000"
	.space	3
.LC149:
	.ascii	"pic_pts: %lld\012\000"
	.space	1
.LC150:
	.ascii	"pic_usertag: %lld\012\000"
	.space	1
.LC151:
	.ascii	"pic_pts: %lld pic_usertag = %lld\012\000"
	.space	2
.LC152:
	.ascii	"Syntax is stopped from This channel\000"
.LC153:
	.ascii	"[%d] vdm busy\012\000"
	.space	1
.LC154:
	.ascii	"[%d] no frame\012\000"
	.space	1
.LC155:
	.ascii	"[%d] no stream\012\000"
.LC156:
	.ascii	"seg_pts: %lld, seg_usertag = %lld\012\000"
	.space	1
.LC157:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC158:
	.ascii	"Thread running...\012\000"
	.space	1
.LC159:
	.ascii	"thread running...\012\000"
	.space	1
.LC160:
	.ascii	"Thread stopped!\012\000"
	.space	3
.LC161:
	.ascii	"thread stopped...\012\000"
	.space	1
.LC162:
	.ascii	"Thread killed!\012\000"
.LC163:
	.ascii	">>>>>line %d cannot support mvc\012\000"
	.space	3
.LC164:
	.ascii	"ChanID %d is out of range!\012\000"
.LC165:
	.ascii	"pstChanState = NULL\000"
.LC166:
	.ascii	"s_pstVfmwChan = NULL\000"
	.space	3
.LC167:
	.ascii	"VCTRL_ReleaseImage ChanID out of range\000"
	.space	1
.LC168:
	.ascii	"VCTRL_ReleaseImage Chan inactive\000"
	.space	3
.LC169:
	.ascii	"VCTRL_ReleaseImage This channel is not opened\000"
	.space	2
.LC170:
	.ascii	"VCTRL_ReleaseImage pImage is NULL\000"
	.space	2
.LC171:
	.ascii	"SetVdecExtra ERROR: extra_ref = %d is out of [ -500"
	.ascii	"0, 5000 ]!\012\000"
	.space	1
.LC172:
	.ascii	"SetVdecExtra ERROR: extra_disp = %d is out of [ -50"
	.ascii	"00, 5000 ]!\012\000"
.LC173:
	.ascii	"Command \"%d\" not registerd!\012\000"
	.space	3
.LC174:
	.ascii	"vdm_ctrl.c,L%d: pOption->s32KeepBS error\012\000"
	.space	2
.LC175:
	.ascii	"---------------------------------------------------"
	.ascii	"----------------------\012\000"
	.space	1
.LC176:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION is designed for CA"
	.ascii	"P_LEVEL_USER_DEFINE_WITH_OPTION, please change chan"
	.ascii	"nel's capability.\012\000"
	.space	3
.LC177:
	.ascii	"line %d VCTRL_GetChanMemSizeWithOption failed!\012\000"
.LC178:
	.ascii	"L: %d : sdk can NOT alloc buffer for channel contex"
	.ascii	"t\012\000"
	.space	2
.LC179:
	.ascii	"L: %d : can NOT alloc buffer for SCD\012\000"
	.space	2
.LC180:
	.ascii	"L: %d : can NOT alloc buffer for VDH\012\000"
	.space	2
.LC181:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC182:
	.ascii	"L: %d : we can NOT alloc buffer for channel context"
	.ascii	"\012\000"
	.space	3
.LC183:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC184:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh\012\000"
	.space	2
.LC185:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC186:
	.ascii	"L: %d : can NOT alloc buffer for channel scd\012\000"
	.space	2
.LC187:
	.ascii	"L: %d : part we can NOT alloc buffer for channel co"
	.ascii	"ntext\012\000"
	.space	2
.LC188:
	.ascii	"L: %d : can NOT alloc buffer for channel context\012"
	.ascii	"\000"
	.space	2
.LC189:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh, %#x <"
	.ascii	" %#x\012\000"
	.space	3
.LC190:
	.ascii	"VFMW_Chan_Pmv\000"
	.space	2
.LC191:
	.ascii	"L: %d : can NOT alloc buffer for channel PMV\012\000"
	.space	2
.LC192:
	.ascii	"L: %d : can NOT alloc buffer for PMV\012\000"
	.space	2
.LC193:
	.ascii	"mem alloc mode is not supportted\012\000"
	.space	2
.LC194:
	.ascii	"vfmw have max(%d) channels opened, can NOT crerate "
	.ascii	"more channels\012\000"
	.space	2
.LC195:
	.ascii	"Dynamic Switch DNR Enable: %d, Threshold: %d x %d, "
	.ascii	"Dnr Num: %d\012\000"
.LC196:
	.ascii	"can NOT enable FSP instance\012\000"
	.space	3
.LC197:
	.ascii	"can NOT enable DNR instance\012\000"
	.space	3
.LC198:
	.ascii	"can NOT start DNR instance\012\000"
.LC199:
	.ascii	"VCTRL_CreateChan eCapLevel = %d error! Try to use V"
	.ascii	"CTRL_CreateChanWithOption(CAP_LEVEL_USER_DEFINE_WIT"
	.ascii	"H_OPTION, ...)\012\000"
	.space	2
.LC200:
	.ascii	"VCTRL_GetChanMemSize ERROR\012\000"
.LC201:
	.ascii	"channel memory have been allocated outside, but the"
	.ascii	" mem-info is not correct!\012\000"
	.space	2
.LC202:
	.ascii	"mem-info(phy, vir, size) = (%#x, %p, %d)\012\000"
	.space	2
.LC203:
	.ascii	"this channel totally need %d bytes memory\012\000"
	.space	1
.LC204:
	.ascii	"can NOT config a not-opened Chan\000"
	.space	3
.LC205:
	.ascii	"VCTRL_CheckChanWH return err.\012\000"
	.space	1
.LC206:
	.ascii	"VCTRL_ConfigChan with same config paramater.\012\000"
	.space	2
.LC207:
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC208:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC209:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC210:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC211:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC212:
	.ascii	"reset chan %d: VCTRL_ResetChan return %d\012\000"
	.space	2
.LC213:
	.ascii	"Last frame already output, vdhQ ID: %d\012\000"
.LC214:
	.ascii	"Last frame already output, image id: %d!\012\000"
	.space	2
.LC215:
	.ascii	"line %d can not know YuvFormat = %d\012\000"
	.space	3
.LC0:
	.ascii	"auto\000"
	.space	3
.LC1:
	.ascii	"force on\000"
	.space	3
.LC2:
	.ascii	"force off\000"
	.section	__param,"a",%progbits
	.align	2
	.type	__param_extra_cmd, %object
	.size	__param_extra_cmd, 16
__param_extra_cmd:
@ name:
	.word	__param_str_extra_cmd
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_cmd
	.type	__param_extra_disp, %object
	.size	__param_extra_disp, 16
__param_extra_disp:
@ name:
	.word	__param_str_extra_disp
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_disp
	.type	__param_extra_ref, %object
	.size	__param_extra_ref, 16
__param_extra_ref:
@ name:
	.word	__param_str_extra_ref
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_ref
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR3 = . + 8184
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 4
s_pstVfmwChan:
	.space	4
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	g_scd_vir, %object
	.size	g_scd_vir, 4
g_scd_vir:
	.space	4
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.32668, %object
	.size	save_file_cnt.32668, 4
save_file_cnt.32668:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.32662, %object
	.size	save_file_cnt.32662, 4
save_file_cnt.32662:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.32656, %object
	.size	save_file_cnt.32656, 4
save_file_cnt.32656:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	LastEventTime.31558, %object
	.size	LastEventTime.31558, 4
LastEventTime.31558:
	.space	4
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	FspInstInfo.31691, %object
	.size	FspInstInfo.31691, 3340
FspInstInfo.31691:
	.space	3340
	.type	PrioArray.31913, %object
	.size	PrioArray.31913, 4
PrioArray.31913:
	.space	4
	.type	g_DSPState, %object
	.size	g_DSPState, 4
g_DSPState:
	.space	4
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_VfmwIrqHandle, %object
	.size	g_VfmwIrqHandle, 4
g_VfmwIrqHandle:
	.space	4
	.type	cmdline, %object
	.size	cmdline, 1024
cmdline:
	.space	1024
	.type	extra_cmd, %object
	.size	extra_cmd, 4
extra_cmd:
	.space	4
	.type	g_allow_B_before_P, %object
	.size	g_allow_B_before_P, 1
g_allow_B_before_P:
	.space	1
	.type	g_not_allow_H264FullPictureRepair_flag, %object
	.size	g_not_allow_H264FullPictureRepair_flag, 1
g_not_allow_H264FullPictureRepair_flag:
	.space	1
	.space	2
	.type	g_ChanTick, %object
	.size	g_ChanTick, 4
g_ChanTick:
	.space	4
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	last_rec_pos_time.32480, %object
	.size	last_rec_pos_time.32480, 4
last_rec_pos_time.32480:
	.space	4
	.type	last_rec_pos_report_time.32481, %object
	.size	last_rec_pos_report_time.32481, 4
last_rec_pos_report_time.32481:
	.space	4
	.type	last_rec_pos_decparam_time.32482, %object
	.size	last_rec_pos_decparam_time.32482, 4
last_rec_pos_decparam_time.32482:
	.space	4
	.type	ChanPriTab.32430, %object
	.size	ChanPriTab.32430, 4
ChanPriTab.32430:
	.space	4
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 24
g_VfmwChanStat:
	.space	24
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	PrioArray.31922, %object
	.size	PrioArray.31922, 4
PrioArray.31922:
	.space	4
	.type	PrioArray.32023, %object
	.size	PrioArray.32023, 4
PrioArray.32023:
	.space	4
	.type	g_EsBufValidFlag, %object
	.size	g_EsBufValidFlag, 4
g_EsBufValidFlag:
	.space	4
	.type	g_DnrIrqHandle, %object
	.size	g_DnrIrqHandle, 4
g_DnrIrqHandle:
	.space	4
	.type	g_VdecIrqHandle, %object
	.size	g_VdecIrqHandle, 4
g_VdecIrqHandle:
	.space	4
	.type	g_eVdmVersion, %object
	.size	g_eVdmVersion, 4
g_eVdmVersion:
	.space	4
	.type	g_pDbgMemVir, %object
	.size	g_pDbgMemVir, 4
g_pDbgMemVir:
	.space	4
	.type	g_DbgMemPhy, %object
	.size	g_DbgMemPhy, 4
g_DbgMemPhy:
	.space	4
	.type	g_VfmwGlobalStat, %object
	.size	g_VfmwGlobalStat, 48
g_VfmwGlobalStat:
	.space	48
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 8
g_ActivateLock:
	.space	8
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
