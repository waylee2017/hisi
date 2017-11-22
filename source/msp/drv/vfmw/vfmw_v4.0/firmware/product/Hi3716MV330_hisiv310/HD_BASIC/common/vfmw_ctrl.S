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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV330 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
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
	ldr	r3, [r0]	@ *p_args_2(D), *p_args_2(D)
	mov	r2, #1	@ tmp116,
	ldr	r1, .L6	@ tmp113,
	add	r3, r3, #14	@ tmp114, *p_args_2(D),
	ldr	r3, [r1, r3, asl #2]	@ D.36818, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp116, _4->Config.ScdLowdlyEnable
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
	ldr	r3, [r0]	@ *p_args_2(D), *p_args_2(D)
	mov	r2, #0	@ tmp116,
	ldr	r1, .L9	@ tmp113,
	add	r3, r3, #14	@ tmp114, *p_args_2(D),
	ldr	r3, [r1, r3, asl #2]	@ D.36821, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp116, _4->Config.ScdLowdlyEnable
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
	ldr	r3, [ip]	@ D.36825, s_pstVfmwChan
	cmp	r3, #0	@ D.36825,
	beq	.L25	@,
	ldr	r3, [r3, #20]	@ eType, _8->eAdapterType
	cmp	r3, #0	@ eType,
	beq	.L16	@,
	cmp	r3, #1	@ eType,
	bne	.L26	@,
	ldr	r3, [ip, #152]	@ D.36826, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.36826,
	beq	.L27	@,
.L19:
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ D.36826
.L26:
	ldr	r2, .L28+4	@,
	ldr	r1, .L28+8	@,
	bl	dprint_vfmw	@
.L13:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L16:
	ldr	r3, [ip, #148]	@ D.36826, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.36826,
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
	ldr	r3, [r0]	@ D.36835, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L31	@ tmp113,
	ldr	r1, .L31+4	@,
	mov	r2, r3	@, D.36835
	str	r3, [ip]	@ D.36835, g_NoStreamReportPeriod
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
	ldr	r3, [r0]	@ D.36839, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L34	@ tmp113,
	ldr	r1, .L34+4	@,
	mov	r2, r3	@, D.36839
	str	r3, [ip]	@ D.36839, g_TraceImgPeriod
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
	ldr	r3, [r0]	@ D.36843, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L37	@ tmp113,
	ldr	r1, .L37+4	@,
	mov	r2, r3	@, D.36843
	str	r3, [ip]	@ D.36843, g_TraceFramePeriod
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
	ldr	r3, [r0]	@ D.36847, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L40	@ tmp113,
	ldr	r1, .L40+4	@,
	mov	r2, r3	@, D.36847
	str	r3, [ip]	@ D.36847, g_TraceBsPeriod
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
	ldr	r3, [r0]	@ D.36851, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L43	@ tmp113,
	ldr	r1, .L43+4	@,
	mov	r2, r3	@, D.36851
	str	r3, [ip]	@ D.36851, g_TraceCtrl
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
	ldr	r3, [r0]	@ D.36855, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L46	@ tmp113,
	ldr	r1, .L46+4	@,
	mov	r2, r3	@, D.36855
	str	r3, [ip, #156]	@ D.36855, g_StopDec
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
	ldr	r3, [r0]	@ D.36859, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L49	@ tmp113,
	ldr	r1, .L49+4	@,
	mov	r2, r3	@, D.36859
	str	r3, [ip, #160]	@ D.36859, g_DnrSleepTime
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
	ldr	r3, [r0]	@ D.36863, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L52	@ tmp113,
	ldr	r1, .L52+4	@,
	mov	r2, r3	@, D.36863
	str	r3, [ip, #164]	@ D.36863, g_SleepTime
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
	and	lr, r3, #15	@ D.36880, dat,
	ldr	r4, .L76+4	@ tmp151,
	cmp	lr, #3	@ D.36880,
	ubfx	ip, r3, #4, #4	@ D.36880, dat,,
	ldmia	r2, {r0, r1, r2}	@ tmp125,,,
	movcs	lr, #0	@ D.36880,
	cmp	ip, #3	@ D.36880,
	ubfx	r3, r3, #8, #4	@ D.36880, dat,,
	ldr	r5, .L76+8	@ tmp150,
	ldr	r6, .L76+12	@ tmp130,
	movcs	ip, #0	@ D.36880,
	str	lr, [r4]	@ D.36880, g_DREnable
	add	lr, sp, #16	@ tmp152,,
	cmp	r3, #3	@ D.36880,
	str	ip, [r5]	@ D.36880, g_DBEnable
	stmdb	lr, {r0, r1, r2}	@ tmp152,,,
	mov	r0, #32	@,
	ldr	r1, .L76+16	@,
	movcs	r3, #0	@ D.36880,
	str	r3, [r6]	@ D.36880, g_DCEnable
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
	mov	r0, r2, lsr #27	@ D.36896, dat,
	cmp	r0, #1	@ D.36896,
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
	ubfx	r3, r2, #12, #12	@ D.36898, dat,,
	strb	ip, [sp, #2]	@ tmp140, DnrChanCfgArgs.s32WmEn
	ubfx	r2, r2, #0, #12	@ D.36898, dat,,
	str	r3, [sp, #4]	@ D.36898, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #8]	@ D.36898, DnrChanCfgArgs.s32VcmpWmEndLine
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
	ldr	ip, [r3, #96]	@ D.36903, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.36903,
	beq	.L98	@,
	mov	lr, #1	@ tmp125,
	mov	r3, r7	@, D.36902
	mov	r2, r6	@, D.36902
	mov	r1, r4	@, t
	str	lr, [sp]	@ tmp125,
	blx	ip	@ D.36903
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
	mov	r0, ip	@, D.36903
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
	ldr	r4, [sp, #528]	@ D.36921, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	lr, [sp, #532]	@ D.36921, ChanMemFlag.SelfAllocChanMem_scd
	ldr	ip, [r5, r0, asl #2]	@ D.36920, s_pstVfmwChan
	ldr	r8, [sp, #540]	@ ChanMemFlag.SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	r0, [sp, #536]	@ D.36921, ChanMemFlag.SelfAllocChanMem_ctx
	add	r7, ip, #208896	@ tmp163, D.36920,
	str	r4, [ip, #216]	@ D.36921, _7->s32SelfAllocChanMem_vdh
	str	lr, [ip, #220]	@ D.36921, _7->s32SelfAllocChanMem_scd
	str	r0, [ip, #224]	@ D.36921, _7->s32SelfAllocChanMem_ctx
	str	r8, [r7, #2912]	@ ChanMemFlag.SelfAllocChanMem_pmv, _7->s32SelfAllocChanMem_pmv
	ldr	r8, [r3, #8]	@ pChanOption_12(D)->MemAllocMode, pChanOption_12(D)->MemAllocMode
	ldr	r7, [sp, #480]	@ ISRA.182, ISRA.182
	cmp	r0, #1	@ D.36921,
	cmpeq	r8, #3	@, pChanOption_12(D)->MemAllocMode,
	ldr	fp, [sp, #484]	@ ISRA.183, ISRA.183
	ldr	r9, [sp, #492]	@ ISRA.185, ISRA.185
	moveq	r0, #1	@ tmp170,
	movne	r0, #0	@ tmp170,
	cmp	r4, #0	@ D.36921,
	movne	r0, #0	@, tmp174
	andeq	r0, r0, #1	@,, tmp174, tmp170
	ldr	r8, [sp, #500]	@ ISRA.187, ISRA.187
	cmp	lr, #0	@ D.36921,
	movne	r0, #0	@, tmp180
	andeq	r0, r0, #1	@,, tmp180, tmp174
	ldr	r4, [sp, #488]	@ ISRA.184, ISRA.184
	cmp	r0, #0	@ tmp180,
	ldr	lr, [sp, #496]	@ ISRA.186, ISRA.186
	ldr	r10, [sp, #504]	@ ISRA.188, ISRA.188
	beq	.L113	@,
	add	r0, r9, r8	@ D.36921, ISRA.185, ISRA.187
	cmp	r2, #1	@ OneChanMemFlag,
	cmpeq	r0, r7	@, D.36921, ISRA.182
	beq	.L129	@,
.L113:
	mov	r2, #0	@ tmp191,
	str	r2, [ip, #148]	@ tmp191, _7->s32OneChanMem
.L114:
	add	ip, r5, r6, lsl #2	@ tmp200, tmp226, ChanID,
	ldr	r2, [r5, r6, asl #2]	@ D.36920, s_pstVfmwChan
	str	lr, [ip, #176]	@ ISRA.186, g_scd_vir
	add	r0, r2, #208896	@ tmp194, D.36920,
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
	str	ip, [r0, #2924]	@ tmp230, _17->stChanMem_pmv.PhyAddr
	ldr	ip, [sp, #520]	@ tmp231, ISRA.192
	str	ip, [r0, #2920]	@ tmp231, _17->stChanMem_pmv.VirAddr
	ldr	ip, [sp, #524]	@ tmp232, ISRA.193
	str	ip, [r0, #2928]	@ tmp232, _17->stChanMem_pmv.Length
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
	ldr	ip, [r2, #36]	@ D.36924, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36924,
	beq	.L119	@,
	ldr	r10, [r3, #16]	@ pChanOption_12(D)->s32MaxHeight, pChanOption_12(D)->s32MaxHeight
	mov	lr, #16	@ tmp207,
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
	blx	ip	@ D.36924
	cmp	r0, #0	@,
	bne	.L119	@,
	ldr	r3, [r5, r6, asl #2]	@ tmp213, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, _34->s32OffLineDNRMemSize
.L120:
	ldr	r3, [r5, r6, asl #2]	@ D.36920, s_pstVfmwChan
	mov	r2, #0	@ tmp221,
	mov	r0, r2	@ D.36925, tmp221
	ldr	r1, [r3, #240]	@ D.36921, _36->s32OffLineDNRMemSize
	str	r9, [r3, #244]	@ ISRA.185, _36->s32ScdChanMemAddr
	rsb	r4, r1, r4	@ D.36921, D.36921, ISRA.184
	add	r7, r1, r7	@ D.36921, D.36921, ISRA.182
	sub	r4, r4, #16	@ D.36921, D.36921,
	str	r8, [r3, #256]	@ ISRA.187, _36->s32ScdChanMemSize
	str	r7, [r3, #228]	@ D.36921, _36->s32VdmChanMemAddr
	str	r4, [r3, #232]	@ D.36921, _36->s32VdmChanMemSize
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
	add	r0, r4, r8	@ D.36921, ISRA.184, ISRA.187
	mov	r2, #1	@ tmp190,
	str	r9, [ip, #160]	@ ISRA.185, _7->stChanMem.PhyAddr
	str	lr, [ip, #156]	@ ISRA.186, _7->stChanMem.VirAddr
	str	r0, [ip, #164]	@ D.36921, _7->stChanMem.Length
	str	r2, [ip, #148]	@ tmp190, _7->s32OneChanMem
	b	.L114	@
.L119:
	ldr	r1, .L130+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36925,
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
	ldr	ip, [r4, #184]	@ D.36945, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L149+8	@,
	add	r0, sp, #14	@ tmp139,,
	ldr	r2, .L149+12	@,
	str	ip, [sp]	@ D.36945,
	add	ip, ip, #1	@ D.36945, D.36945,
	str	ip, [r4, #184]	@ D.36945, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_yuv_file
	add	r0, sp, #14	@ tmp140,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #188]	@ vfmw_save_yuv_file, save_yuv_chan_num
	cmp	r0, #0	@ D.36946,
	str	r0, [r4, #180]	@ D.36946, vfmw_save_yuv_file
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
	ldr	ip, [r4, #196]	@ D.36957, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L158+8	@,
	add	r0, sp, #14	@ tmp139,,
	ldr	r2, .L158+12	@,
	str	ip, [sp]	@ D.36957,
	add	ip, ip, #1	@ D.36957, D.36957,
	str	ip, [r4, #196]	@ D.36957, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_seg_file
	add	r0, sp, #14	@ tmp140,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #200]	@ vfmw_save_seg_file, save_seg_chan_num
	cmp	r0, #0	@ D.36958,
	str	r0, [r4, #192]	@ D.36958, vfmw_save_seg_file
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
	ldr	ip, [r4, #208]	@ D.36969, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L167+8	@,
	add	r0, sp, #14	@ tmp139,,
	ldr	r2, .L167+12	@,
	str	ip, [sp]	@ D.36969,
	add	ip, ip, #1	@ D.36969, D.36969,
	str	ip, [r4, #208]	@ D.36969, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_str_file
	add	r0, sp, #14	@ tmp140,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r4, #212]	@ vfmw_save_str_file, save_str_chan_num
	cmp	r0, #0	@ D.36970,
	str	r0, [r4, #204]	@ D.36970, vfmw_save_str_file
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
	mov	r4, #49	@ D.36985,
	bl	msleep	@
	b	.L173	@
.L181:
	bl	msleep	@
	subs	r4, r4, #1	@ D.36985, D.36985,
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
	mov	r4, #49	@ D.36995,
	bl	msleep	@
	b	.L188	@
.L196:
	bl	msleep	@
	subs	r4, r4, #1	@ D.36995, D.36995,
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
	mov	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, pc}	@
.L215:
	ldr	r2, .L216+4	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, pc}	@
.L214:
	ldr	r2, .L216+12	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, pc}	@
.L213:
	ldr	r2, .L216+16	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, pc}	@
.L212:
	ldr	r2, .L216+20	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, pc}	@
.L211:
	ldr	r2, .L216+24	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, pc}	@
.L210:
	ldr	r2, .L216+28	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36998,
	ldmfd	sp!, {r4, pc}	@
.L209:
	ldr	r2, .L216+32	@,
	ldr	r1, .L216+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36998,
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
	mov	r4, #50	@ D.37034,
	mov	r6, r0	@ BeginTime,
	mov	r0, #0	@,
	mvn	r7, r6	@ D.37033, BeginTime
	bl	VDMDRV_PrepareSleep	@
	b	.L225	@
.L224:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.37034, D.37034,
	beq	.L226	@,
.L225:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L226	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r6, r0	@ BeginTime, CurTime
	add	r5, r7, r0	@ WaitTime, D.37033, CurTime
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
	subs	r4, r4, #1	@ D.37034, D.37034,
	bne	.L225	@,
.L226:
	ldr	r9, .L260+4	@ tmp154,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r9, #4]	@ D.37036, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.37036,
	beq	.L257	@,
	mov	r0, #0	@,
	blx	r3	@ D.37036
.L227:
	bl	SCDDRV_PrepareSleep	@
	mov	r4, #50	@ D.37034,
	bl	OSAL_GetTimeInMs	@
	mov	r7, r0	@ BeginTime,
	mvn	r8, r0	@ D.37033, BeginTime
	b	.L234	@
.L233:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.37034, D.37034,
	beq	.L235	@,
.L234:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L235	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r7, r0	@ BeginTime, CurTime
	add	r5, r8, r0	@ WaitTime, D.37033, CurTime
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
	subs	r4, r4, #1	@ D.37034, D.37034,
	bne	.L234	@,
.L235:
	ldr	r0, [r9, #12]	@ D.37038, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r0, #0	@ D.37038,
	beq	.L258	@,
	blx	r0	@ D.37038
.L236:
	bl	DNRDRV_PrepareSleep	@
	mov	r4, #50	@ D.37034,
	bl	OSAL_GetTimeInMs	@
	mov	r7, r0	@ BeginTime,
	mvn	r8, r0	@ D.37033, BeginTime
	b	.L243	@
.L242:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.37034, D.37034,
	beq	.L244	@,
.L243:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L244	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r7, r0	@ BeginTime, CurTime
	add	r5, r8, r0	@ WaitTime, D.37033, CurTime
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
	subs	r4, r4, #1	@ D.37034, D.37034,
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
	rsbls	r2, r6, r0	@ D.37033, BeginTime, CurTime
	mvnhi	r6, r6	@ D.37033, BeginTime
	addhi	r2, r6, r0	@ D.37033, D.37033, CurTime
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L257:
	mov	r0, r3	@, D.37036
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
	subs	r4, r0, #0	@ D.37052,
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
	mov	r0, r4	@, D.37052
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
	ldr	r3, [r5, #244]	@ D.37067, LastEventTime
	cmp	r0, r3	@ CurTime, D.37067
	mov	r4, r0	@ CurTime,
	bls	.L292	@,
	rsb	r3, r3, r0	@ Period, D.37067, CurTime
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
	mov	r0, #0	@ D.37070,
	str	r1, [r3, #152]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r4, pc}	@
.L308:
	mov	r3, r0	@, eType
	ldr	r2, .L309+4	@,
	ldr	r1, .L309+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37070,
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
	mvn	r0, #0	@ D.37070,
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
	ldr	r0, [r3, r0, asl #2]	@ D.37083, s_pstVfmwChan
	cmp	r0, #0	@ D.37083,
	beq	.L325	@,
	mov	r2, #12	@,
	add	r0, r0, #104	@, D.37083,
	bl	memcpy	@
	mov	r0, #0	@ D.37082,
	ldmfd	sp!, {r4, pc}	@
.L325:
	ldr	r3, .L326+4	@,
	movw	r2, #1151	@,
	ldr	r1, .L326+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37082,
	ldmfd	sp!, {r4, pc}	@
.L324:
	mov	r0, r3	@, pstStreamIntf
	movw	r2, #1150	@,
	ldr	r3, .L326+12	@,
	ldr	r1, .L326+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37082,
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
	ldr	r0, [r3, r0, asl #2]	@ D.37092, s_pstVfmwChan
	cmp	r0, #0	@ D.37092,
	addne	r0, r0, #104	@ D.37091, D.37092,
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
	ldr	r0, [r3, r0, asl #2]	@ D.37096, s_pstVfmwChan
	cmp	r0, #0	@ D.37096,
	beq	.L339	@,
	mov	r2, #12	@,
	add	r0, r0, #128	@, D.37096,
	bl	memcpy	@
	mov	r0, #0	@ D.37095,
	ldmfd	sp!, {r4, pc}	@
.L339:
	ldr	r3, .L340+4	@,
	movw	r2, #1176	@,
	ldr	r1, .L340+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37095,
	ldmfd	sp!, {r4, pc}	@
.L338:
	mov	r0, r3	@, pstFrameIntf
	movw	r2, #1175	@,
	ldr	r3, .L340+12	@,
	ldr	r1, .L340+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37095,
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
	ldr	r0, [r3, r0, asl #2]	@ D.37104, s_pstVfmwChan
	cmp	r0, #0	@ D.37104,
	addne	r0, r0, #128	@ D.37103, D.37104,
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
	ldr	r3, [r3]	@ D.37108, s_pstVfmwChan
	cmp	r3, #0	@ D.37108,
	beq	.L354	@,
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L355	@,
	add	r0, r3, #74752	@, D.37108,
	add	r0, r0, #680	@,,
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
	ldr	r5, [r3]	@ D.37117, s_pstVfmwChan
	cmp	r5, #0	@ D.37117,
	beq	.L367	@,
	add	r0, r5, #1584	@, D.37117,
	mov	r2, #8	@,
	add	r0, r0, #12	@,,
	bl	memcpy	@
	ldr	r3, [r5, #1596]	@ _8->stSynExtraData.stDisParams.s32Mode, _8->stSynExtraData.stDisParams.s32Mode
	mov	r0, r4	@ D.37116, ChanID
	sub	r3, r3, #1	@ D.37120, _8->stSynExtraData.stDisParams.s32Mode,
	cmp	r3, #1	@ D.37120,
	strhi	r4, [r5, #1596]	@ ChanID, _8->stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L365:
	ldr	r3, .L368+4	@,
	movw	r2, #1228	@,
	ldr	r1, .L368+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37116,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L367:
	ldr	r3, .L368+12	@,
	movw	r2, #1230	@,
	ldr	r1, .L368+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37116,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L366:
	ldr	r3, .L368+16	@,
	movw	r2, #1229	@,
	ldr	r1, .L368+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37116,
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
	add	r3, r3, r2	@ D.37127, DnrChanState.read_out_frame_num, DnrChanState.new_frame_num
	str	r3, [r4, #88]	@ D.37127, pstChanState_8(D)->wait_disp_frame_num
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
	ldr	r3, .L382	@ tmp162,
	movw	ip, #4058	@ tmp166,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r3, [r3, r0, asl #2]	@ D.37141, s_pstVfmwChan
	add	r5, r3, #172032	@ tmp179, D.37141,
	ldrsb	lr, [r5, ip]	@ D.37139, _32->FspInst.s32DecFsNum
	cmp	lr, #0	@ D.37139,
	ble	.L378	@,
	add	r3, r3, #203776	@ ivtmp.501, D.37141,
	mov	r4, #0	@ s32DecodedFrameNum,
	add	r3, r3, #102	@ ivtmp.501, ivtmp.501,
	mov	r0, r4	@ i, s32DecodedFrameNum
.L375:
	ldrsb	ip, [r3]	@ MEM[base: _39, offset: 0B], MEM[base: _39, offset: 0B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.501, ivtmp.501,
	cmp	ip, #3	@ MEM[base: _39, offset: 0B],
	addeq	r4, r4, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r0, lr	@ i, D.37139
	bne	.L375	@,
.L373:
	str	r4, [r1, #88]	@ D.37137, pstChanState_15(D)->wait_disp_frame_num
	ldrb	r3, [r5, #4058]	@ zero_extendqisi2	@ D.37138, _32->FspInst.s32DecFsNum
	cmp	r3, #0	@ D.37138,
	moveq	r3, #4	@ D.37136,
	mvnne	r0, r2	@ D.37139, RefNum
	sxtabne	r3, r0, r3	@ D.37136, D.37139, D.37138
	str	r3, [r1, #96]	@ D.37136, pstChanState_15(D)->total_disp_frame_num
	ldrb	r3, [r5, #4058]	@ zero_extendqisi2	@ D.37138, _32->FspInst.s32DecFsNum
	sxtb	r3, r3	@ D.37138, D.37138
	cmp	r3, #0	@ D.37138,
	ldmlefd	sp!, {r4, r5, pc}	@
	add	r2, r2, #1	@ D.37139, RefNum,
	cmp	r3, r2	@ D.37138, D.37139
	movle	r3, #0	@ tmp178,
	strle	r3, [r1, #96]	@ tmp178, pstChanState_15(D)->total_disp_frame_num
	ldmfd	sp!, {r4, r5, pc}	@
.L378:
	mov	r4, #0	@ D.37137,
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
	ldr	r0, [r3, r0, asl #2]	@ D.37146, s_pstVfmwChan
	cmp	r0, #0	@ D.37146,
	addne	r0, r0, #116	@ D.37145, D.37146,
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
	subs	r6, r0, #0	@ D.37163,
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
	ldrsb	r3, [r4, r3]	@ D.37166, FspInstInfo.s32DecFsNum
	cmp	r3, #16	@ D.37166,
	movge	r3, #16	@ D.37166,
	cmp	r3, #2	@ D.37166,
	str	r3, [r5, #820]	@ D.37166, pstChan_8->s32UsrdecFrameNum
	ble	.L406	@,
	ldr	r3, [r4, #3596]	@ D.37166, FspInstInfo.s32DecFsSize
	mov	r1, #64	@,
	add	r0, r5, #752	@, pstChan,
	str	r3, [r5, #816]	@ D.37166, pstChan_8->s32UsrdecFrameSize
	bl	__memzero	@
	mov	r1, #64	@,
	add	r0, r5, #688	@, pstChan,
	bl	__memzero	@
	ldr	lr, [r5, #820]	@ D.37166, pstChan_8->s32UsrdecFrameNum
	cmp	lr, #0	@ D.37166,
	ble	.L391	@,
	add	r3, r4, #260	@ ivtmp.512, tmp170,
	add	r1, r5, #748	@ ivtmp.514, pstChan,
	mov	r2, r6	@ i, D.37163
.L398:
	ldr	ip, [r3, #20]	@ D.37166, MEM[base: _66, offset: 20B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, lr	@ i, D.37166
	add	r3, r3, #52	@ ivtmp.512, ivtmp.512,
	str	ip, [r1, #4]!	@ D.37166, MEM[base: _67, offset: 0B]
	bne	.L398	@,
.L391:
	mov	r0, r6	@, D.37163
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L404:
	mov	r0, r2	@, tmp177
	ldr	r1, .L407+4	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.37163,
	b	.L391	@
.L393:
	mov	r0, r7	@, tmp185
	ldr	r1, .L407+8	@,
	bl	dprint_vfmw	@
.L402:
	mvn	r6, #0	@ D.37163,
	mov	r0, r6	@, D.37163
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L405:
	mov	r0, r6	@, D.37163
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
	mvn	r6, #0	@ D.37163,
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
	ldr	r2, [r4, #44]	@ D.37178, pstChan_7(D)->stChanMem_scd.Length
	cmp	r2, #0	@ D.37178,
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
	ldr	r0, [r4, #100]	@ D.37183, pstChan_7(D)->stChanMem_pmv.PhyAddr
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
	ldr	r0, [r4, #56]	@ D.37178, pstChan_7(D)->stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.37178,
	beq	.L419	@,
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L420	@
.L446:
	cmp	r0, #0	@ D.37183,
	beq	.L422	@,
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #100]	@ D.37183, pstChan_7(D)->stChanMem_pmv.PhyAddr
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
	str	r0, [r4, #36]	@ D.37182, pstChan_7(D)->stChanMem_scd.VirAddr
	str	r0, [r5, #176]	@ D.37182, g_scd_vir
	b	.L416	@
.L441:
	ldr	r0, [r1, #24]	@ D.37178, pstChan_7(D)->stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.37178,
	beq	.L412	@,
	ldr	r1, [r1, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L413	@
.L447:
	ldr	r0, [r4, #40]	@ D.37178, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.37178,
	beq	.L415	@,
.L423:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L416	@
.L444:
	ldr	r0, [r4, #40]	@ D.37178, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.37178,
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
	movw	r3, #34688	@ tmp112,
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
	ldr	r3, [r5]	@ D.37192, s_pstVfmwChan
	cmp	r3, #0	@ D.37192,
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
	mvn	r0, #0	@ D.37191,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L456:
	bl	SM_Start	@
	ldr	r3, [r5]	@ D.37192, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _14->s32Priority, _14->s32Priority
	str	r4, [r3, #8]	@ _6->s32IsOpen, _14->s32IsRun
	cmp	r2, #0	@ _14->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _14->s32StopSyntax
	bne	.L457	@,
	cmp	r3, #0	@ D.37192,
	str	r4, [r3, #12]	@ _6->s32IsOpen, _14->s32Priority
	ldr	r0, .L468+12	@,
	ldrne	r3, .L468+16	@ tmp141,
	ldreq	r2, .L468+16	@ tmp137,
	streq	r3, [r5, #3600]	@ D.37192, PrioArray
	strne	r4, [r3]	@ _6->s32IsOpen, g_ChanCtx.PriorByChanId
	streq	r3, [r2]	@ D.37192, g_ChanCtx.PriorByChanId
	strne	r4, [r5, #3600]	@ _6->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5]	@ D.37192, s_pstVfmwChan
.L457:
	ldr	r3, [r3, #1580]	@ _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L460	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L460:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37191,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L467:
	ldr	r3, .L468+20	@,
	movw	r2, #2698	@,
	ldr	r1, .L468+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37191,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L465:
	ldr	r3, .L468+24	@,
	movw	r2, #2696	@,
	ldr	r1, .L468+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37191,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L466:
	ldr	r3, .L468+28	@,
	movw	r2, #2697	@,
	ldr	r1, .L468+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37191,
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
	ldr	r3, [r5]	@ D.37207, s_pstVfmwChan
	cmp	r3, #0	@ D.37207,
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
	mov	r0, r4	@ D.37206, s32Ret
	str	r4, [r3, #16]	@ s32Ret, _17->s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L483:
	ldr	r3, .L484+4	@,
	movw	r2, #2825	@,
	ldr	r1, .L484+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37206,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L479:
	mvn	r0, #0	@ D.37206,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L481:
	ldr	r3, .L484+12	@,
	movw	r2, #2823	@,
	ldr	r1, .L484+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37206,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L482:
	ldr	r3, .L484+16	@,
	movw	r2, #2824	@,
	ldr	r1, .L484+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37206,
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
	ldr	r1, [r2]	@ D.37221, s_pstVfmwChan
	cmp	r1, #0	@ D.37221,
	beq	.L498	@,
	add	r1, r1, #32	@, D.37221,
	mov	r0, r3	@, pstCfg
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.37220, ChanID
	ldmfd	sp!, {r4, pc}	@
.L496:
	ldr	r3, .L499+4	@,
	movw	r2, #2874	@,
	ldr	r1, .L499+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37220,
	ldmfd	sp!, {r4, pc}	@
.L498:
	ldr	r3, .L499+12	@,
	movw	r2, #2876	@,
	ldr	r1, .L499+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37220,
	ldmfd	sp!, {r4, pc}	@
.L497:
	ldr	r3, .L499+16	@,
	movw	r2, #2875	@,
	ldr	r1, .L499+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37220,
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
	ldr	r2, [r5, r0, asl #2]	@ D.37234, s_pstVfmwChan
	ldr	r3, [r2, #1624]	@ eOldDecCore, _7->eDecCore
	str	ip, [r2, #1624]	@ tmp128, _7->eDecCore
	cmp	r3, ip	@ eOldDecCore,
	beq	.L505	@,
	sub	r3, r3, #1	@ D.37235, eOldDecCore,
	mov	r6, r1	@ pstSoftDecMem, pstSoftDecMem
	cmp	r3, #4	@ D.37235,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L504	@,
	ldr	r3, [r5, #220]	@ D.37236, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37236,
	beq	.L504	@,
	add	r0, r2, #210944	@, D.37234,
	add	r0, r0, #896	@,,
	blx	r3	@ D.37236
.L504:
	ldr	r3, [r5, r4, asl #2]	@ D.37234, s_pstVfmwChan
	ldr	r1, .L512	@ tmp133,
	ldr	r2, [r3, #1624]	@ _15->eDecCore, _15->eDecCore
	sub	r2, r2, #1	@ D.37235, _15->eDecCore,
	cmp	r2, #4	@ D.37235,
	bhi	.L505	@,
	ldr	ip, [r1, #216]	@ D.37240, g_SdecFunc.pfun_iMediaSoftDEC_Create
	add	r2, r3, #208896	@ tmp137, D.37234,
	ldr	r1, [r3, #24]	@ _15->eChanCapLevel, _15->eChanCapLevel
	cmp	ip, #0	@ D.37240,
	str	r1, [r2, #2956]	@ _15->eChanCapLevel, _15->stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	beq	.L507	@,
	add	r0, r3, #210944	@, D.37234,
	mov	r1, r6	@, pstSoftDecMem
	add	r0, r0, #896	@,,
	ldr	r2, [r3, #880]	@, _15->eVidStd
	blx	ip	@ D.37240
	cmp	r0, #0	@,
	bne	.L507	@,
.L505:
	mov	r0, #0	@ D.37233,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L507:
	ldr	r1, .L512+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37233,
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
	ldr	r3, [r3, r0, asl #2]	@ D.37247, s_pstVfmwChan
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
	subs	r0, r3, r0	@ D.37246, _4->stChanCfg.s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	mvnne	r0, #0	@ D.37246,
	bx	lr	@
.L527:
	mvn	r0, #0	@ D.37246,
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
	ldr	r5, [r2, r0, asl #2]	@ D.37254, s_pstVfmwChan
	ldr	r2, [r5, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #19	@ _4->eVidStd,
	beq	.L535	@,
	mov	r4, r1	@ pstCfg, pstCfg
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@ D.37253
	bne	.L535	@,
	ldr	r3, [r5, #32]	@ D.37256, _4->stChanCfg.eVidStd
	cmp	r3, #1	@ D.37256,
	beq	.L537	@,
	sub	r3, r3, #10	@ D.37257, D.37256,
	cmp	r3, #2	@ D.37257,
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #36]	@ _4->stChanCfg.StdExt.Vp6Ext.bReversed, _4->stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r4, #4]	@ pstCfg_6(D)->StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	subs	r0, r3, r0	@ D.37253, _4->stChanCfg.StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	mvnne	r0, #0	@ D.37253,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L537:
	ldr	r2, [r5, #36]	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r3, [r4, #4]	@ pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, r3	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	bne	.L535	@,
	ldr	r3, [r5, #40]	@ _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r0, [r4, #8]	@ pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	subs	r0, r3, r0	@ D.37253, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	mvnne	r0, #0	@ D.37253,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L535:
	mvn	r0, #0	@ D.37253,
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
	ldr	ip, [r2]	@ D.37262, g_chipID
	ldr	r3, [r3, r0, asl #2]	@ D.37261, s_pstVfmwChan
	cmp	ip, #16	@ D.37262,
	ldr	lr, [r3, #1456]	@ ChanMaxWidth, _5->stSynExtraData.stChanOption.s32MaxWidth
	ldr	r4, [r3, #1460]	@ ChanMaxHeight, _5->stSynExtraData.stChanOption.s32MaxHeight
	bhi	.L541	@,
	mov	r2, #1	@ tmp137,
	movw	r0, #36832	@ tmp138,
	mov	r3, r2, asl ip	@ D.37264, tmp137,
	bfi	r0, r2, #16, #16	@ tmp138, tmp137,,
	ands	r0, r3, r0	@ D.37264, D.37264, tmp138
	bne	.L542	@,
	tst	r3, #31	@ D.37264,
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
	ldr	r2, [r3]	@ D.37262, g_ChipMaxWidth
	cmp	lr, r2	@ ChanMaxWidth, D.37262
	bgt	.L545	@,
	ldr	r3, .L556+12	@ tmp148,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L548	@,
.L545:
	ldr	r0, [r1]	@ D.37262, pstCfg_11(D)->eVidStd
	cmp	r0, #18	@ D.37262,
	cmpne	r0, #0	@, D.37262,
	bic	r0, r0, #2	@ D.37262, D.37262,
	movne	r3, #1	@ tmp154,
	moveq	r3, #0	@ tmp154,
	cmp	r0, #13	@ D.37262,
	moveq	r0, #0	@, tmp161
	andne	r0, r3, #1	@,, tmp161, tmp154
	cmp	r0, #0	@ tmp161,
	bne	.L555	@,
.L544:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L541:
	mov	r2, ip	@, D.37262
	ldr	r1, .L556+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L544	@
.L554:
	mov	r2, ip	@, D.37262
	ldr	r1, .L556+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L544	@
.L555:
	ldr	r3, .L556+12	@ tmp162,
	mov	r0, #0	@,
	str	ip, [sp]	@ D.37262,
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
	ldr	r3, [r3, r0, asl #2]	@ D.37272, s_pstVfmwChan
	cmp	r3, #0	@ D.37272,
	beq	.L563	@,
	ldr	r3, [r3, #880]	@ D.37273, _5->eVidStd
	cmp	r3, #4	@ D.37273,
	cmpne	r3, #14	@, D.37273,
	beq	.L561	@,
	bl	SM_SeekPts	@
	adds	r0, r0, #0	@ D.37274,,
	movne	r0, #1	@ D.37274,
	rsb	r0, r0, #0	@ D.37271, D.37274
	ldmfd	sp!, {r4, pc}	@
.L561:
	mvn	r0, #0	@ D.37271,
	ldmfd	sp!, {r4, pc}	@
.L563:
	mov	r0, r3	@, D.37272
	movw	r2, #3659	@,
	ldr	r3, .L564+4	@,
	ldr	r1, .L564+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37271,
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
	ldr	r4, [sp, #8]	@ D.37278, stCfgInfo.eVidStd
	ldr	r6, .L581	@ tmp129,
	cmp	r4, #0	@ D.37278,
	beq	.L580	@,
	sub	r3, r4, #6	@ D.37279, D.37278,
	ldr	r1, [r6, #3604]	@ D.37280, g_DSPState
	clz	r3, r3	@ D.37279, D.37279
	mov	r3, r3, lsr #5	@ D.37279, D.37279,
	cmp	r1, #1	@ D.37280,
	movne	ip, #0	@, tmp154
	andeq	ip, r3, #1	@,, tmp154, D.37279
	cmp	ip, #0	@ tmp154,
	bne	.L571	@,
	cmp	r1, #0	@ D.37280,
	movne	r3, #0	@, tmp164
	andeq	r3, r3, #1	@,, tmp164, D.37279
	cmp	r3, #0	@ tmp164,
	bne	.L574	@,
	mov	r4, r3	@ D.37278, tmp164
.L576:
	mov	r0, r4	@, D.37278
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L580:
	ldr	r2, [sp, #48]	@ ScdLowdlyEnable, stCfgInfo.s32LowdlyEnable
	ldr	r1, [r6, #3604]	@ D.37280, g_DSPState
	sub	r3, r2, #1	@ D.37279, ScdLowdlyEnable,
	clz	r3, r3	@ D.37279, D.37279
	cmp	r1, #2	@ D.37280,
	cmpeq	r2, #1	@, ScdLowdlyEnable,
	mov	r3, r3, lsr #5	@ D.37279, D.37279,
	beq	.L571	@,
	cmp	r1, #0	@ D.37280,
	movne	r3, #0	@, tmp159
	andeq	r3, r3, #1	@,, tmp159, D.37279
	cmp	r3, #0	@ tmp159,
	beq	.L576	@,
	bl	WriteHexFile	@
	add	r5, r6, r5, lsl #2	@ tmp139, tmp129, ChanID,
	mov	r3, #1	@ tmp141,
	mov	r0, r4	@, D.37278
	str	r3, [r5, #3604]	@ tmp141, g_DSPState
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L574:
	add	r5, r6, r5, lsl #2	@ tmp143, tmp147, ChanID,
	mov	r0, r4	@, D.37278
	mov	r4, ip	@ D.37278, tmp154
	bl	WriteHexFile	@
	mov	r3, #2	@ tmp145,
	str	r3, [r5, #3604]	@ tmp145, g_DSPState
	b	.L576	@
.L571:
	str	r1, [sp]	@ D.37280,
	mov	r3, r4	@, D.37278
	ldr	r1, .L581+4	@,
	mov	r0, #32	@,
	mvn	r4, #0	@ D.37278,
	bl	dprint_vfmw	@
	b	.L576	@
.L579:
	movw	r2, #3699	@,
	ldr	r1, .L581+8	@,
	mov	r0, #0	@,
	mvn	r4, #0	@ D.37278,
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
	adds	r0, r0, #0	@ D.37286,,
	movne	r0, #1	@ D.37286,
	rsb	r0, r0, #0	@ D.37285, D.37286
	ldmfd	sp!, {r4, pc}	@
.L587:
	mov	r0, r3	@, tmp118
	movw	r2, #3843	@,
	ldr	r3, .L588+4	@,
	ldr	r1, .L588+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37285,
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
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	mov	r0, #2	@,
	ldr	r1, .L603	@,
	bl	dprint_vfmw	@
	cmp	r5, #0	@ ChanID,
	bne	.L598	@,
	ldr	r4, .L603+4	@ tmp127,
	ldr	r0, [r4]	@ D.37292, s_pstVfmwChan
	cmp	r0, #0	@ D.37292,
	beq	.L599	@,
	ldr	r3, [r0, #4]	@ _8->s32IsOpen, _8->s32IsOpen
	cmp	r3, #1	@ _8->s32IsOpen,
	bne	.L600	@,
	ldr	r0, .L603+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4]	@ D.37292, s_pstVfmwChan
	cmp	r0, #0	@ D.37292,
	beq	.L601	@,
	ldr	r2, [r0, #4]	@ _13->s32IsOpen, _13->s32IsOpen
	cmp	r2, #1	@ _13->s32IsOpen,
	bne	.L602	@,
	add	r0, r0, #210944	@, D.37292,
	mov	r1, r6	@, pImage
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReceiveImage	@
	subs	r5, r0, #1	@ D.37291,,
	ldr	r0, .L603+8	@,
	mvnne	r5, #0	@ D.37291,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r4]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r3, r3, #225280	@ tmp148, s_pstVfmwChan,
	ldrb	r3, [r3, #2644]	@ zero_extendqisi2	@ D.37295, _24->stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r3, [r6, #336]	@ D.37295, pImage_20(D)->optm_inf.bAvsPlus
.L592:
	mov	r0, r5	@, D.37291
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L600:
	mov	r0, r5	@, ChanID
	ldr	r3, .L603+12	@,
	movw	r2, #4079	@,
	ldr	r1, .L603+16	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.37291,
	b	.L592	@
.L602:
	mov	r0, r5	@, ChanID
	movw	r2, #4093	@,
	ldr	r1, .L603+20	@,
	mvn	r5, #0	@ D.37291,
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
	mvn	r5, #0	@ D.37291,
	b	.L592	@
.L599:
	ldr	r3, .L603+28	@,
	movw	r2, #4076	@,
	ldr	r1, .L603+16	@,
	mvn	r5, #0	@ D.37291,
	bl	dprint_vfmw	@
	b	.L592	@
.L601:
	movw	r2, #4086	@,
	ldr	r1, .L603+32	@,
	bl	dprint_vfmw	@
	ldr	r0, .L603+8	@,
	mvn	r5, #0	@ D.37291,
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
	ldr	r3, [r5]	@ D.37304, s_pstVfmwChan
	cmp	r3, #0	@ D.37304,
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
	ldr	r0, [r5]	@ D.37304, s_pstVfmwChan
	cmp	r0, #0	@ D.37304,
	beq	.L618	@,
	ldr	r2, [r0, #4]	@ _16->s32IsOpen, _16->s32IsOpen
	cmp	r2, #1	@ _16->s32IsOpen,
	bne	.L619	@,
	add	r0, r0, #210944	@, D.37304,
	mov	r1, r4	@, pImage
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReleaseImage	@
	subs	r4, r0, #1	@ D.37303,,
	ldr	r0, .L620+8	@,
	mvnne	r4, #0	@ D.37303,
	bl	OSAL_SpinUnLockIRQ	@
.L607:
	mov	r0, r4	@, D.37303
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L619:
	mov	r0, r6	@, ChanID
	movw	r2, #4187	@,
	ldr	r1, .L620+12	@,
	mvn	r4, #0	@ D.37303,
	bl	dprint_vfmw	@
	ldr	r0, .L620+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L607	@
.L616:
	ldr	r3, .L620+16	@,
	movw	r2, #4172	@,
	ldr	r1, .L620+20	@,
	mvn	r4, #0	@ D.37303,
	bl	dprint_vfmw	@
	b	.L607	@
.L614:
	ldr	r3, .L620+24	@,
	movw	r2, #4170	@,
	ldr	r1, .L620+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.37303,
	b	.L607	@
.L617:
	ldr	r3, .L620+28	@,
	movw	r2, #4173	@,
	ldr	r1, .L620+20	@,
	mvn	r4, #0	@ D.37303,
	bl	dprint_vfmw	@
	b	.L607	@
.L615:
	ldr	r3, .L620+32	@,
	movw	r2, #4171	@,
	ldr	r1, .L620+20	@,
	mvn	r4, #0	@ D.37303,
	bl	dprint_vfmw	@
	b	.L607	@
.L618:
	movw	r2, #4180	@,
	ldr	r1, .L620+36	@,
	bl	dprint_vfmw	@
	ldr	r0, .L620+8	@,
	mvn	r4, #0	@ D.37303,
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
	ldr	r2, [r2]	@ D.37314, s_pstVfmwChan
	cmp	r2, #0	@ D.37314,
	beq	.L623	@,
	ldr	r1, [r2, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r1, #1	@ _5->s32IsOpen,
	beq	.L626	@,
	movw	r2, #4248	@,
	ldr	r1, .L628+4	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.37313,
	ldmfd	sp!, {r4, pc}	@
.L623:
	movw	r2, #4241	@,
	ldr	r1, .L628+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.37313,
	ldmfd	sp!, {r4, pc}	@
.L626:
	ldr	r0, [r2, #880]	@ D.37313, _5->eVidStd
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
	bne	.L638	@,
	ldr	r2, .L649	@ tmp119,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2]	@ D.37324, s_pstVfmwChan
	cmp	r5, #0	@ D.37324,
	moveq	r3, r5	@ D.37322, D.37324
	beq	.L631	@,
	ldr	r2, [r5, #4]	@ _16->s32IsOpen, _16->s32IsOpen
	cmp	r2, #1	@ _16->s32IsOpen,
	beq	.L647	@,
.L641:
	mov	r3, r0	@ D.37322, ChanId
.L631:
	mov	r0, r3	@, D.37322
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L638:
	mov	r3, #0	@ D.37322,
	mov	r0, r3	@, D.37322
	bx	lr	@
.L647:
	ldr	r2, [r5, #8]	@ _16->s32IsRun, _16->s32IsRun
	cmp	r2, #1	@ _16->s32IsRun,
	bne	.L641	@,
	ldr	r3, [r5, #880]	@ _16->eVidStd, _16->eVidStd
	cmp	r3, #6	@ _16->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _16->eVidStd
	b	.L643	@
.L634:
	.word	.L633
	.word	.L643
	.word	.L635
	.word	.L637
	.word	.L643
	.word	.L643
	.word	.L637
.L637:
	add	r3, r5, #208896	@ tmp130, D.37324,
	ldr	r4, [r3, #2948]	@ pDecParam,
.L632:
	cmp	r4, #0	@ pDecParam,
	beq	.L643	@,
.L648:
	bl	OSAL_GetTimeInMs	@
	mov	r3, r4	@ D.37322, pDecParam
	str	r0, [r5, #28]	@, _16->u32timeLastDecParamReady
	mov	r0, r3	@, D.37322
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L635:
	add	r3, r5, #208896	@ tmp128, D.37324,
	ldr	r4, [r3, #3980]	@ pDecParam, _16->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	cmp	r4, #0	@ pDecParam,
	bne	.L648	@,
.L643:
	mov	r3, #0	@ D.37322,
	b	.L631	@
.L633:
	add	r3, r5, #208896	@ tmp124, D.37324,
	ldr	r4, [r3, #3304]	@ pDecParam, _16->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	b	.L632	@
.L650:
	.align	2
.L649:
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
	bne	.L652	@,
	ldr	r5, .L664	@ tmp124,
	ldr	r2, [r5]	@ D.37329, s_pstVfmwChan
	cmp	r2, #0	@ D.37329,
	beq	.L652	@,
	ldr	r3, [r2, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r3, #1	@ _5->s32IsOpen,
	bne	.L655	@,
	ldr	r7, [r2, #8]	@ D.37330, _5->s32IsRun
	cmp	r7, #1	@ D.37330,
	beq	.L656	@,
.L655:
	mov	r2, #0	@,
	ldr	r1, .L664+4	@,
	mov	r0, #22	@,
	mov	r4, r2	@ D.37328,
	bl	dprint_vfmw	@
.L654:
	mov	r0, r4	@, D.37328
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L652:
	mov	r3, r6	@, ChanId
	movw	r2, #4375	@,
	ldr	r1, .L664+8	@,
	mov	r4, #0	@ D.37328,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.37328
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L656:
	bl	VCTRL_GetDecParam	@
	subs	r8, r0, #0	@ pDecParam,
	beq	.L662	@,
	ldr	r3, [r5]	@ D.37329, s_pstVfmwChan
	mov	r4, r6	@ D.37328, ChanId
	str	r6, [r3, #680]	@ ChanId, _16->s32CountNoDecparamFlag
	str	r6, [r3, #684]	@ ChanId, _16->u32NoDecparamStartTime
	b	.L654	@
.L662:
	ldr	r6, [r5]	@ D.37329, s_pstVfmwChan
	ldr	r4, [r6, #680]	@ D.37328, _10->s32CountNoDecparamFlag
	cmp	r4, #0	@ D.37328,
	beq	.L663	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5]	@ D.37329, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.37331, _23->u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.37331
	bls	.L659	@,
	rsb	r0, r2, r0	@ D.37331, D.37331, tmp
	cmp	r0, #40	@ D.37331,
	movls	r4, r8	@ D.37328, pDecParam
	bls	.L654	@,
.L659:
	str	r8, [r3, #680]	@ pDecParam, _23->s32CountNoDecparamFlag
	mov	r4, r7	@ D.37328, D.37330
	str	r8, [r3, #684]	@ pDecParam, _23->u32NoDecparamStartTime
	b	.L654	@
.L663:
	str	r7, [r6, #680]	@ D.37330, _10->s32CountNoDecparamFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #684]	@, _10->u32NoDecparamStartTime
	b	.L654	@
.L665:
	.align	2
.L664:
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
	bne	.L673	@,
	ldr	r3, .L675	@ tmp127,
	ldr	r3, [r3]	@ D.37337, s_pstVfmwChan
	cmp	r3, #0	@ D.37337,
	beq	.L674	@,
	cmn	r3, #152	@ D.37337,
	cmpne	r1, #0	@, pstMemRec,
	beq	.L671	@,
	ldr	r2, [r3, #148]	@ _6->s32OneChanMem, _6->s32OneChanMem
	cmp	r2, #1	@ _6->s32OneChanMem,
	bne	.L671	@,
	ldr	r2, [r3, #160]	@ D.37339, MEM[(struct MEM_RECORD_S *)_6 + 152B].PhyAddr
	str	r2, [r1, #8]	@ D.37339, pstMemRec_10(D)->PhyAddr
	ldr	r2, [r3, #156]	@ D.37340, MEM[(struct MEM_RECORD_S *)_6 + 152B].VirAddr
	clz	r0, r2	@ D.37338, D.37340
	str	r2, [r1, #4]	@ D.37340, pstMemRec_10(D)->VirAddr
	ldr	r3, [r3, #164]	@ D.37339, MEM[(struct MEM_RECORD_S *)_6 + 152B].Length
	mov	r0, r0, lsr #5	@ D.37338, D.37338,
	rsb	r0, r0, #0	@ D.37336, D.37338
	str	r3, [r1, #12]	@ D.37339, pstMemRec_10(D)->Length
	ldmfd	sp!, {r4, pc}	@
.L671:
	mvn	r0, #0	@ D.37336,
	ldmfd	sp!, {r4, pc}	@
.L673:
	ldr	r3, .L675+4	@,
	movw	r2, #4433	@,
	ldr	r1, .L675+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37336,
	ldmfd	sp!, {r4, pc}	@
.L674:
	ldr	r3, .L675+12	@,
	movw	r2, #4434	@,
	ldr	r1, .L675+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37336,
	ldmfd	sp!, {r4, pc}	@
.L676:
	.align	2
.L675:
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
	ldr	r3, .L684	@ tmp113,
	ldr	r3, [r3, r0, asl #2]	@ D.37346, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #6	@ _4->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _4->eVidStd
	b	.L677	@
.L680:
	.word	.L679
	.word	.L677
	.word	.L681
	.word	.L683
	.word	.L677
	.word	.L677
	.word	.L683
.L683:
	add	r3, r3, #208896	@ tmp125, D.37346,
	mov	r2, #0	@ tmp126,
	str	r2, [r3, #2948]	@ tmp126,
.L677:
	bx	lr	@
.L681:
	add	r3, r3, #208896	@ tmp122, D.37346,
	mov	r2, #0	@ tmp123,
	str	r2, [r3, #3980]	@ tmp123, _4->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	bx	lr	@
.L679:
	add	r3, r3, #208896	@ tmp116, D.37346,
	mov	r2, #0	@ tmp117,
	str	r2, [r3, #3304]	@ tmp117, _4->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	bx	lr	@
.L685:
	.align	2
.L684:
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
	cmp	r0, #0	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L698	@,
	ldr	r3, .L701	@ tmp126,
	ldr	r3, [r3]	@ D.37353, s_pstVfmwChan
	cmp	r3, #0	@ D.37353,
	beq	.L699	@,
	ldr	r2, [r3, #8]	@ _8->s32IsRun, _8->s32IsRun
	cmp	r2, #1	@ _8->s32IsRun,
	bne	.L700	@,
	ldr	r2, [r3, #880]	@ _8->eVidStd, _8->eVidStd
	cmp	r2, #6	@ _8->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _8->eVidStd
	b	.L696	@
.L692:
	.word	.L691
	.word	.L696
	.word	.L693
	.word	.L694
	.word	.L696
	.word	.L696
	.word	.L695
.L695:
	add	r0, r3, #210944	@, D.37353,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_GetImageBuffer	@
.L691:
	add	r0, r3, #210944	@, D.37353,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L693:
	add	r0, r3, #210944	@, D.37353,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L694:
	add	r0, r3, #210944	@, D.37353,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L696:
	mov	r0, #0	@ D.37352,
	ldmfd	sp!, {r4, pc}	@
.L700:
	ldr	r3, .L701+4	@,
	movw	r2, #4878	@,
	ldr	r1, .L701+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37352,
	ldmfd	sp!, {r4, pc}	@
.L698:
	ldr	r3, .L701+12	@,
	movw	r2, #4876	@,
	ldr	r1, .L701+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37352,
	ldmfd	sp!, {r4, pc}	@
.L699:
	ldr	r3, .L701+16	@,
	movw	r2, #4877	@,
	ldr	r1, .L701+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37352,
	ldmfd	sp!, {r4, pc}	@
.L702:
	.align	2
.L701:
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
	bne	.L709	@,
	ldr	r2, .L712	@ tmp119,
	ldr	r2, [r2]	@ D.37363, s_pstVfmwChan
	ldr	ip, [r2, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	ip, #1	@ _6->s32IsOpen,
	bne	.L710	@,
	cmp	r1, #0	@ pArgs,
	beq	.L711	@,
	ldr	r1, [r1]	@ D.37364, *pArgs_9(D)
	mov	r0, r3	@ D.37362, ChanID
	str	r1, [r2, #1408]	@ D.37364, _6->stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L710:
	ldr	r3, .L712+4	@,
	movw	r2, #4983	@,
	ldr	r1, .L712+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37362,
	ldmfd	sp!, {r4, pc}	@
.L709:
	ldr	r3, .L712+12	@,
	movw	r2, #4982	@,
	ldr	r1, .L712+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37362,
	ldmfd	sp!, {r4, pc}	@
.L711:
	ldr	r3, .L712+16	@,
	movw	r2, #4984	@,
	ldr	r1, .L712+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37362,
	ldmfd	sp!, {r4, pc}	@
.L713:
	.align	2
.L712:
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
	bne	.L720	@,
	ldr	r3, .L723	@ tmp119,
	ldr	r3, [r3]	@ D.37369, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L721	@,
	cmp	r1, #0	@ pArgs,
	beq	.L722	@,
	add	r0, r3, #1424	@, D.37369,
	mov	r2, #20	@,
	bl	memcpy	@
	mov	r0, r4	@ D.37368, ChanID
	ldmfd	sp!, {r4, pc}	@
.L721:
	ldr	r3, .L723+4	@,
	movw	r2, #4995	@,
	ldr	r1, .L723+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37368,
	ldmfd	sp!, {r4, pc}	@
.L720:
	ldr	r3, .L723+12	@,
	movw	r2, #4994	@,
	ldr	r1, .L723+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37368,
	ldmfd	sp!, {r4, pc}	@
.L722:
	ldr	r3, .L723+16	@,
	movw	r2, #4996	@,
	ldr	r1, .L723+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37368,
	ldmfd	sp!, {r4, pc}	@
.L724:
	.align	2
.L723:
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
	ldr	r5, .L732	@ tmp141,
	ldr	r2, [r5, r0, asl #2]	@ tmp128, s_pstVfmwChan
	cmp	r2, #0	@ tmp128,
	beq	.L728	@,
	mov	r1, sp	@,
	mov	r4, r0	@ ChanID, ChanID
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L728	@,
	ldr	r3, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r3, #16	@ SmInstInfo.SegNum,
	bgt	.L729	@,
	ldr	r3, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r3, #524288	@ SmInstInfo.TotalSegSize,
	ble	.L728	@,
.L729:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	subs	r0, r0, #1	@ ret,,
	mvnne	r0, #0	@ ret,
	cmp	r0, #0	@ ret,
	bne	.L727	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, r4, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #28]	@ _18->u32timeLastDecParamReady, _18->u32timeLastDecParamReady
	rsb	r0, r3, r0	@ timePeriod, _18->u32timeLastDecParamReady,
	cmp	r0, #50	@ timePeriod,
	movls	r0, #0	@ D.37378,
	mvnhi	r0, #0	@ D.37378,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L728:
	mvn	r0, #0	@ D.37378,
.L727:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L733:
	.align	2
.L732:
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
	ldr	r3, .L735	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ _4->s32NoStreamFlag, _4->s32NoStreamFlag
	subs	r0, r0, #1	@, _4->s32NoStreamFlag,
	movne	r0, #1	@,
	bx	lr	@
.L736:
	.align	2
.L735:
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
	bne	.L743	@,
	ldr	r3, .L744	@ tmp120,
	ldr	r3, [r3]	@ D.37390, s_pstVfmwChan
	cmp	r3, #0	@ D.37390,
	beq	.L743	@,
	ldr	r2, [r3, #4]	@ _4->s32IsOpen, _4->s32IsOpen
	cmp	r2, #0	@ _4->s32IsOpen,
	beq	.L743	@,
	ldr	r2, [r3, #8]	@ _4->s32IsRun, _4->s32IsRun
	cmp	r2, #0	@ _4->s32IsRun,
	beq	.L743	@,
	ldr	r2, [r3, #12]	@ _4->s32Priority, _4->s32Priority
	cmp	r2, #0	@ _4->s32Priority,
	beq	.L743	@,
	ldr	r0, [r3, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r0, #19	@ _4->eVidStd,
	movne	r0, #0	@ D.37389,
	mvneq	r0, #0	@ D.37389,
	bx	lr	@
.L743:
	mvn	r0, #0	@ D.37389,
	bx	lr	@
.L745:
	.align	2
.L744:
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
	ldr	r6, [r0, #352]	@ D.37405, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.37405, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	ldr	r3, .L753	@ tmp122,
	str	r5, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
	ldr	r3, [r3]	@ D.37407, s_pstVfmwChan
	cmp	r3, #0	@ D.37407,
	beq	.L747	@,
	add	r3, r3, #210944	@ D.37409, D.37407,
	add	r3, r3, #896	@ D.37409, D.37409,
	subs	r3, r4, r3	@ D.37410, pCtx, D.37409
	mvnne	r3, #0	@ D.37410,
	cmn	r3, #1	@ D.37410,
	str	r3, [r4, #360]	@ D.37410, pCtx_4(D)->ChanID
	beq	.L749	@,
	mov	r0, #1	@ D.37404,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L747:
	mvn	r3, #0	@ tmp129,
	str	r3, [r4, #360]	@ tmp129, pCtx_4(D)->ChanID
.L749:
	ldr	r1, .L753+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37404,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L754:
	.align	2
.L753:
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
	beq	.L756	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp125,
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp125, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp125, pImg_10->p_usrdat
.L756:
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
	beq	.L793	@,
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	beq	.L764	@,
	mov	r1, r0	@, PicBufID
	mov	r2, #0	@,
	mov	r0, r8	@, ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.37436,
.L763:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L764:
	ldr	r0, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pSrc,
	beq	.L794	@,
.L765:
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L795	@,
	str	r7, [r4, #176]	@ PicBufID, pLogic_31->image_id
	mov	r9, #0	@ tmp205,
	ldrd	r2, [r6, #8]	@ D.37439, pstUsrdecFrame,
	mov	r10, #1	@ tmp204,
	strd	r2, [r4]	@ D.37439, pLogic_31->SrcPts
	ldrd	r2, [r6, #8]	@ D.37439, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ D.37439, pLogic,
	ldrd	r2, [r6, #8]	@ D.37439, pstUsrdecFrame,
	strd	r2, [r4, #16]	@ D.37439, pLogic,
	ldrd	r2, [r6, #8]	@ D.37439, pstUsrdecFrame,
	str	r10, [r4, #68]	@ tmp204, pLogic_31->DispEnableFlag
	str	r9, [r4, #72]	@ tmp205, pLogic_31->DispFrameDistance
	strd	r2, [r4, #24]	@ D.37439, pLogic,
	str	r9, [r4, #76]	@ tmp205, pLogic_31->DistanceBeforeFirstFrame
	str	r9, [r4, #80]	@ tmp205, pLogic_31->GopNum
	ldr	r3, [r6, #28]	@ D.37437, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	str	r3, [r4, #88]	@ D.37437, pLogic_31->top_luma_phy_addr
	mov	r0, r3	@, D.37437
	str	r3, [r4, #120]	@ D.37437, pLogic_31->luma_2d_phy_addr
	str	r3, [r4, #104]	@ D.37437, pLogic_31->luma_phy_addr
	ldr	r3, [r6, #36]	@ D.37437, pstUsrdecFrame_15(D)->s32CbPhyAddr
	str	r3, [r4, #92]	@ D.37437, pLogic_31->top_chrom_phy_addr
	str	r3, [r4, #124]	@ D.37437, pLogic_31->chrom_2d_phy_addr
	str	r3, [r4, #108]	@ D.37437, pLogic_31->chrom_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r3, r0	@ D.37440,
	ldr	r0, [r4, #92]	@, pLogic_31->top_chrom_phy_addr
	str	r3, [r4, #48]	@ D.37440, pLogic_31->luma_2d_vir_addr
	str	r3, [r4, #32]	@ D.37440, pLogic_31->luma_vir_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #88]	@ pLogic_31->top_luma_phy_addr, pLogic_31->top_luma_phy_addr
	ldr	r3, [r4, #92]	@ pLogic_31->top_chrom_phy_addr, pLogic_31->top_chrom_phy_addr
	movw	r1, #11296	@ tmp224,
	str	r0, [r4, #52]	@ __p, pLogic_31->chrom_2d_vir_addr
	mov	ip, r0	@ __p,
	str	r0, [r4, #36]	@ __p, pLogic_31->chrom_vir_addr
	cmp	r0, r9	@ __p,
	ldr	r0, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	add	r2, r2, r0	@ D.37437, pLogic_31->top_luma_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r2, [r4, #96]	@ D.37437, pLogic_31->btm_luma_phy_addr
	ldr	r2, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #128]	@ tmp205, pLogic_31->is_fld_save
	add	r3, r3, r2	@ D.37437, pLogic_31->top_chrom_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r3, [r4, #100]	@ D.37437, pLogic_31->btm_chrom_phy_addr
	ldr	r3, [r6, #20]	@ pstUsrdecFrame_15(D)->s32YWidth, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #144]	@ pstUsrdecFrame_15(D)->s32YWidth, pLogic_31->image_width
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	str	r3, [r4, #148]	@ pstUsrdecFrame_15(D)->s32YHeight, pLogic_31->image_height
	ldr	r3, [r6, #20]	@ D.37438, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #152]	@ D.37438, pLogic_31->disp_width
	mov	r2, r3, lsr r10	@ D.37438, D.37438,
	ldr	r3, [r6, #24]	@ D.37438, pstUsrdecFrame_15(D)->s32YHeight
	str	r2, [r4, #160]	@ D.37438, pLogic_31->disp_center_x
	str	r3, [r4, #156]	@ D.37438, pLogic_31->disp_height
	mov	r3, r3, lsr r10	@ D.37438, D.37438,
	str	r3, [r4, #164]	@ D.37438, pLogic_31->disp_center_y
	ldr	r3, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #168]	@ tmp205, pLogic_31->frame_rate
	str	r9, [r4, #180]	@ tmp205, pLogic_31->error_level
	str	r3, [r4, #172]	@ pstUsrdecFrame_15(D)->s32LumaStride, pLogic_31->image_stride
	str	r10, [r4, #208]	@ tmp204, pLogic_31->chroma_idc
	str	r9, [r4, #256]	@ tmp205, pLogic_31->line_num_phy_addr
	str	r9, [r4, #56]	@ tmp205, pLogic_31->line_num_vir_addr
	str	r1, [r4, #140]	@ tmp224, pLogic_31->format
	beq	.L767	@,
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	cmp	r3, r10	@ pstUsrdecFrame_15(D)->s32YHeight,
	bgt	.L780	@,
	b	.L781	@
.L797:
	ldr	r2, [r4, #144]	@ __n, pLogic_31->image_width
	cmp	r2, #0	@ __n,
	bne	.L796	@,
.L771:
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	add	r9, r9, #1	@ y, y,
	ldr	r2, [r4, #172]	@ pLogic_31->image_stride, pLogic_31->image_stride
	add	r3, r3, r3, lsr #31	@ tmp258, pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight,
	add	ip, ip, r2	@ __p, __p, pLogic_31->image_stride
	cmp	r9, r3, asr #1	@ y, tmp258,
	bge	.L781	@,
.L780:
	ldr	r3, [r6]	@ D.37441, pstUsrdecFrame_15(D)->enFmt
	cmp	r3, #0	@ D.37441,
	beq	.L797	@,
	cmp	r3, #1	@ D.37441,
	beq	.L771	@,
	cmp	r3, #3	@ D.37441,
	beq	.L798	@,
	cmp	r3, #2	@ D.37441,
	beq	.L799	@,
	cmp	r3, #4	@ D.37441,
	bne	.L782	@,
	ldr	r3, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, #0	@ pLogic_31->image_width,
	movne	r1, r5	@ ivtmp.595, pSrc
	movne	r3, #0	@ x,
	beq	.L779	@,
.L778:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.37442, MEM[base: pSrc_190, index: _119, step: 2, offset: 0B]
	mov	r2, ip	@ D.37440, __p
	add	r1, r1, #4	@ ivtmp.595, ivtmp.595,
	strb	r0, [r2, r3]!	@ D.37442, MEM[base: __p_191, index: _119, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.37442, MEM[base: _120, offset: 1B]
	strb	r0, [r2, #1]	@ D.37442, MEM[base: _114, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, r2	@ x, pLogic_31->image_width
	bcc	.L778	@,
.L779:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	b	.L771	@
.L796:
	mov	r0, ip	@, __p
	mov	r1, #128	@,
	bl	memset	@
	mov	ip, r0	@ __p,
	b	.L771	@
.L798:
	ldr	r3, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, #0	@ pLogic_31->image_width,
	movne	r1, r5	@ ivtmp.587, pSrc
	movne	r3, #0	@ x,
	beq	.L775	@,
.L774:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.37442, MEM[base: pSrc_190, index: _205, step: 2, offset: 0B]
	mov	r2, ip	@ D.37440, __p
	add	r1, r1, #4	@ ivtmp.587, ivtmp.587,
	strb	r0, [r2, r3]!	@ D.37442, MEM[base: __p_191, index: _205, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.37442, MEM[base: _203, offset: 1B]
	strb	r0, [r2, #1]	@ D.37442, MEM[base: _201, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, r2	@ x, pLogic_31->image_width
	bcc	.L774	@,
.L775:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride
	b	.L771	@
.L781:
	mov	r5, #18	@ tmp228,
	mov	r2, #1	@,
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	str	r5, [r4, #300]	@ tmp228, pLogic_31->ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	ldr	r3, .L800	@ tmp229,
	str	r4, [sp]	@ pLogic,
	mov	r1, r5	@, tmp228
	mov	r0, r8	@, ChanID
	ldr	r2, [r3, r8, asl #2]	@ D.37444, s_pstVfmwChan
	add	r2, r2, #210944	@ tmp231, D.37444,
	add	r3, r2, #904	@, tmp231,
	add	r2, r2, #896	@, tmp231,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L769	@,
	mov	r0, #0	@ D.37436,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L799:
	mov	r1, r5	@, pSrc
	mov	r0, ip	@, __p
	ldr	r2, [r4, #144]	@, pLogic_31->image_width
	bl	memcpy	@
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	mov	ip, r0	@ __p,
	b	.L771	@
.L794:
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	bne	.L765	@,
	ldr	r2, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	ldr	r1, .L800+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37436,
	b	.L763	@
.L782:
	mvn	r0, #0	@ D.37436,
	b	.L763	@
.L769:
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
	mvn	r0, #0	@ D.37436,
	b	.L763	@
.L793:
	ldr	r2, [r6, #28]	@, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	mov	r0, #0	@,
	ldr	r1, .L800+8	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.37436, PicBufID
	b	.L763	@
.L795:
	movw	r2, #5171	@,
	ldr	r1, .L800+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37436,
	b	.L763	@
.L767:
	mov	r0, r10	@, tmp204
	ldr	r1, .L800+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37436,
	b	.L763	@
.L801:
	.align	2
.L800:
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
	ldr	r7, .L827	@ tmp130,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r7, r0, asl #2]	@ D.37458, s_pstVfmwChan
	cmp	r3, #0	@ D.37458,
	beq	.L821	@,
	ldr	r6, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r6, #18	@ _5->eVidStd,
	bne	.L822	@,
	ldr	r3, [r3, #820]	@ _5->s32UsrdecFrameNum, _5->s32UsrdecFrameNum
	cmp	r3, #2	@ _5->s32UsrdecFrameNum,
	ble	.L823	@,
	mov	r8, r1	@ pMem, pMem
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37460,
	bne	.L824	@,
	mov	r1, r0	@, D.37460
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r9, r0, #0	@ id,
	blt	.L825	@,
	mov	r1, r9	@, id
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, r9	@, id
	ldr	r1, .L827+4	@,
	mov	r4, r0	@ pLf,
	mov	r0, r6	@, _5->eVidStd
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pLf,
	beq	.L826	@,
	ldr	r2, [r4, #408]	@ D.37461, pLf_18->pstDecodeFs
	cmp	r2, #0	@ D.37461,
	beq	.L810	@,
	ldr	r3, [r4, #412]	@ D.37461, pLf_18->pstDispOutFs
	cmp	r3, #0	@ D.37461,
	beq	.L810	@,
	ldr	r1, [r4, #416]	@ D.37461, pLf_18->pstTfOutFs
	cmp	r1, #0	@ D.37461,
	beq	.L810	@,
	ldr	ip, [r1, #12]	@ _23->PhyAddr, _23->PhyAddr
	mov	r0, r6	@, _5->eVidStd
	ldr	r3, [r3, #12]	@ _22->PhyAddr, _22->PhyAddr
	ldr	r2, [r2, #12]	@ _21->PhyAddr, _21->PhyAddr
	ldr	r1, .L827+8	@,
	str	ip, [sp]	@ _23->PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #408]	@ pLf_18->pstDecodeFs, pLf_18->pstDecodeFs
	mov	r0, #0	@ D.37457,
	ldr	r3, [r3, #12]	@ D.37460, _28->PhyAddr
	str	r3, [r8]	@ D.37460, pMem_30(D)->PhyAddr
	ldr	r3, [r7, r5, asl #2]	@ tmp147, s_pstVfmwChan
	ldr	r3, [r3, #816]	@ D.37460, _32->s32UsrdecFrameSize
	str	r3, [r8, #8]	@ D.37460, pMem_30(D)->Length
.L804:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L824:
	ldr	r1, .L827+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37457,
	b	.L804	@
.L822:
	ldr	r1, .L827+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37457,
	b	.L804	@
.L823:
	ldr	r1, .L827+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37457,
	b	.L804	@
.L810:
	ldr	r1, .L827+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37457,
	b	.L804	@
.L825:
	ldr	r1, .L827+28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37457,
	b	.L804	@
.L821:
	mov	r0, r3	@, D.37458
	movw	r2, #5331	@,
	ldr	r3, .L827+32	@,
	ldr	r1, .L827+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37457,
	b	.L804	@
.L826:
	movw	r2, #5367	@,
	ldr	r1, .L827+40	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37457,
	b	.L804	@
.L828:
	.align	2
.L827:
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
	ldr	r3, .L841	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, [r3, r0, asl #2]	@ D.37473, s_pstVfmwChan
	cmp	r0, #0	@ D.37473,
	beq	.L838	@,
	cmp	r1, #0	@ pUsrdecFrame,
	mov	r5, r1	@ pUsrdecFrame, pUsrdecFrame
	beq	.L839	@,
	ldr	r2, [r0, #880]	@ D.37474, _5->eVidStd
	cmp	r2, #18	@ D.37474,
	bne	.L840	@,
	mov	r2, #56	@,
	add	r0, r0, #824	@, D.37473,
	bl	memcpy	@
	mov	r1, r5	@, pUsrdecFrame
	mov	r0, r4	@, ChanID
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.37472
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, .L841+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37472,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L840:
	ldr	r1, .L841+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37472,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L839:
	mov	r0, r1	@, pUsrdecFrame
	ldr	r3, .L841+12	@,
	movw	r2, #5421	@,
	ldr	r1, .L841+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37472,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L838:
	ldr	r3, .L841+20	@,
	movw	r2, #5420	@,
	ldr	r1, .L841+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37472,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L842:
	.align	2
.L841:
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
	ldr	r3, .L853	@ tmp123,
	ldr	r1, [r3, r0, asl #2]	@ D.37488, s_pstVfmwChan
	cmp	r1, #0	@ D.37488,
	beq	.L852	@,
	ldr	r3, [r1, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r3, #18	@ _4->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _4->eVidStd
	b	.L843	@
.L847:
	.word	.L846
	.word	.L843
	.word	.L848
	.word	.L849
	.word	.L843
	.word	.L843
	.word	.L850
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L843
	.word	.L851
.L851:
	add	r0, r1, #210944	@, D.37488,
	add	r1, r1, #888	@, D.37488,
	add	r0, r0, #896	@,,
	b	USERDEC_Init	@
.L846:
	add	r0, r1, #210944	@, D.37488,
	add	r1, r1, #888	@, D.37488,
	add	r0, r0, #896	@,,
	b	H264DEC_Init	@
.L848:
	add	r0, r1, #210944	@, D.37488,
	add	r1, r1, #888	@, D.37488,
	add	r0, r0, #896	@,,
	b	MPEG4DEC_Init	@
.L849:
	add	r0, r1, #210944	@, D.37488,
	add	r1, r1, #888	@, D.37488,
	add	r0, r0, #896	@,,
	b	MPEG2DEC_Init	@
.L850:
	add	r0, r1, #210944	@, D.37488,
	add	r1, r1, #888	@, D.37488,
	add	r0, r0, #896	@,,
	b	AVSDEC_Init	@
.L843:
	bx	lr	@
.L852:
	mov	r0, r1	@, D.37488
	ldr	r3, .L853+4	@,
	movw	r2, #5448	@,
	ldr	r1, .L853+8	@,
	b	dprint_vfmw	@
.L854:
	.align	2
.L853:
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
	ldr	r0, [r1, #64]	@ D.37505, pChanOption_4(D)->s32SlotWidth
	cmp	r0, #0	@ D.37505,
	beq	.L856	@,
	ldr	r3, [r1, #68]	@ D.37505, pChanOption_4(D)->s32SlotHeight
	cmp	r3, #0	@ D.37505,
	beq	.L856	@,
	mul	r3, r3, r0	@ D.37505, D.37505, D.37505
	ldr	lr, [r1, #60]	@ pChanOption_4(D)->s32DisplayFrameNum, pChanOption_4(D)->s32DisplayFrameNum
	movw	ip, #34688	@ tmp129,
	mov	r1, #0	@ tmp128,
	movt	ip, 7	@ tmp129,
	mov	r0, r1	@ D.37504, tmp128
	stmib	r2, {r1, ip}	@ pDetailMemSize,,
	str	r1, [r2, #12]	@ tmp128, pDetailMemSize_14(D)->PmvDetailMem
	mla	r3, lr, r3, r3	@ D.37505, pChanOption_4(D)->s32DisplayFrameNum, D.37505, D.37505
	mov	r3, r3, asl #1	@ D.37505, D.37505,
	str	r3, [r2]	@ D.37505, pDetailMemSize_14(D)->VdhDetailMem
	ldmfd	sp!, {r4, pc}	@
.L856:
	ldr	r1, .L863	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37504,
	ldmfd	sp!, {r4, pc}	@
.L864:
	.align	2
.L863:
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
	blt	.L866	@,
	ldr	r3, [r0, #12]	@ pChanOption_4(D)->s32MaxWidth, pChanOption_4(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxWidth,
	ble	.L866	@,
	ldr	r3, [r0, #16]	@ pChanOption_4(D)->s32MaxHeight, pChanOption_4(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxHeight,
	ble	.L866	@,
	ldr	r3, [r0, #56]	@ pChanOption_4(D)->s32SCDBufSize, pChanOption_4(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_4(D)->s32SCDBufSize,
	blt	.L866	@,
	ldr	r3, [r0, #44]	@ pChanOption_4(D)->s32SupportH264, pChanOption_4(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_4(D)->s32SupportH264,
	beq	.L871	@,
.L869:
	mov	r0, #0	@ D.37511,
	ldmfd	sp!, {r4, pc}	@
.L871:
	ldr	r3, [r0, #20]	@ pChanOption_4(D)->s32MaxSliceNum, pChanOption_4(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSliceNum,
	ble	.L866	@,
	ldr	r3, [r0, #24]	@ pChanOption_4(D)->s32MaxSpsNum, pChanOption_4(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSpsNum,
	ble	.L866	@,
	ldr	r3, [r0, #28]	@ pChanOption_4(D)->s32MaxPpsNum, pChanOption_4(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxPpsNum,
	bgt	.L869	@,
.L866:
	ldr	r1, .L872	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37511,
	ldmfd	sp!, {r4, pc}	@
.L873:
	.align	2
.L872:
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
	ldr	ip, .L878	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ FrmNum, FrmNum
	ldr	ip, [ip, #100]	@ D.37517, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.37517,
	mvneq	r0, #0	@ D.37516,
	beq	.L875	@,
	mov	r0, r1	@ Width, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.37517
.L875:
	mul	r4, r4, r0	@ D.37518, FrmNum, D.37516
	str	r4, [r5]	@ D.37518, *pChanPmvSize_11(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L879:
	.align	2
.L878:
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
	subs	r8, r0, #0	@ D.37521,
	bne	.L888	@,
	ldr	r3, [r4, #40]	@ pChanOption_7(D)->s32SupportBFrame, pChanOption_7(D)->s32SupportBFrame
	ldr	r6, [r4, #32]	@ D.37521, pChanOption_7(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_7(D)->s32SupportBFrame,
	moveq	r10, #1	@ PmvNum,
	addeq	r7, r6, r10	@ D.37521, D.37521,
	bne	.L891	@,
.L883:
	ldr	r9, .L893	@ tmp182,
	ldr	r0, [r4, #12]	@ D.37522, pChanOption_7(D)->s32MaxWidth
	ldr	fp, [r4, #60]	@ D.37522, pChanOption_7(D)->s32DisplayFrameNum
	ldr	r3, [r9, #100]	@ D.37525, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	ldr	r1, [r4, #16]	@ D.37522, pChanOption_7(D)->s32MaxHeight
	cmp	r3, #0	@ D.37525,
	mvneq	r0, #0	@ D.37521,
	beq	.L884	@,
	blx	r3	@ D.37525
.L884:
	mul	r7, r7, r0	@ ChanPmvSize, D.37521, D.37521
	str	r7, [r5, #12]	@ ChanPmvSize, pDetailMemSize_23(D)->PmvDetailMem
	ldr	ip, [r9, #36]	@ D.37523, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37523,
	beq	.L886	@,
	ldr	r3, [r4, #16]	@ pChanOption_7(D)->s32MaxHeight, pChanOption_7(D)->s32MaxHeight
	mov	r0, #16	@ tmp158,
	ldr	r2, [r4, #12]	@ pChanOption_7(D)->s32MaxWidth, pChanOption_7(D)->s32MaxWidth
	add	r1, sp, #24	@ tmp159,,
	str	r0, [sp, #20]	@ tmp158,
	add	r6, r6, fp	@ FrameNum, D.37521, D.37522
	str	r1, [sp, #16]	@ tmp159,
	mvn	r0, #0	@ tmp160,
	mov	r1, #0	@ tmp161,
	str	r0, [sp, #12]	@ tmp160,
	str	r1, [sp, #8]	@ tmp161,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ FrameNum,
	mvn	r1, #-2147483648	@,
	str	r10, [sp]	@ PmvNum,
	blx	ip	@ D.37523
	cmp	r0, #0	@,
	bne	.L886	@,
	ldr	r3, [sp, #28]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.37522, MemArrange.TotalMemUsed,
	str	r3, [r5]	@ D.37522, pDetailMemSize_23(D)->VdhDetailMem
	ldr	r3, [r4, #56]	@ pChanOption_7(D)->s32SCDBufSize, pChanOption_7(D)->s32SCDBufSize
	add	r3, r3, #32768	@ D.37522, pChanOption_7(D)->s32SCDBufSize,
	str	r3, [r5, #4]	@ D.37522, pDetailMemSize_23(D)->ScdDetailMem
	ldr	r3, [r4, #44]	@ D.37522, pChanOption_7(D)->s32SupportH264
	cmp	r3, #0	@ D.37522,
	beq	.L892	@,
	ldr	lr, [r4, #24]	@ pChanOption_7(D)->s32MaxSpsNum, pChanOption_7(D)->s32MaxSpsNum
	mov	r0, #4000	@ tmp173,
	ldr	r2, [r4, #20]	@ pChanOption_7(D)->s32MaxSliceNum, pChanOption_7(D)->s32MaxSliceNum
	movw	r3, #4060	@ tmp170,
	ldr	r1, [r4, #28]	@ pChanOption_7(D)->s32MaxPpsNum, pChanOption_7(D)->s32MaxPpsNum
	mov	ip, #2208	@ tmp179,
	mul	r0, r0, lr	@ D.37524, tmp173, pChanOption_7(D)->s32MaxSpsNum
	mla	r3, r3, r2, r0	@ D.37524, tmp170, pChanOption_7(D)->s32MaxSliceNum, D.37524
	add	r3, r3, #491520	@ D.37524, D.37524,
	add	r3, r3, #1920	@ D.37524, D.37524,
	mla	r3, ip, r1, r3	@ D.37524, tmp179, pChanOption_7(D)->s32MaxPpsNum, D.37524
	str	r3, [r5, #8]	@ D.37524, pDetailMemSize_23(D)->ChanCtxDetailMem
.L881:
	mov	r0, r8	@, D.37521
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L891:
	add	r3, r6, #1	@ PmvNum, D.37521,
	cmp	r3, #17	@ PmvNum,
	mov	r7, r3	@ D.37521, PmvNum
	movlt	r10, r3	@ PmvNum, PmvNum
	movge	r10, #17	@ PmvNum,
	b	.L883	@
.L892:
	mov	r8, r3	@ D.37521, D.37522
	movw	r2, #34688	@ tmp167,
	movt	r2, 7	@ tmp167,
	mov	r0, r8	@, D.37521
	str	r2, [r5, #8]	@ tmp167, pDetailMemSize_23(D)->ChanCtxDetailMem
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L886:
	movw	r3, #5638	@,
	ldr	r2, .L893+4	@,
	ldr	r1, .L893+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.37521,
	mov	r0, r8	@, D.37521
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L888:
	mvn	r8, #0	@ D.37521,
	b	.L881	@
.L894:
	.align	2
.L893:
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
	beq	.L896	@,
	ldr	ip, .L914	@ tmp132,
	ldr	r4, [r1, #32]	@ D.37530, pChanOption_8(D)->s32MaxRefFrameNum
	ldr	r5, [r1, #60]	@ D.37530, pChanOption_8(D)->s32DisplayFrameNum
	ldr	r6, [ip, #3608]	@ D.37530, extra_ref
	ldr	r7, [ip, #3612]	@ D.37530, extra_disp
	add	ip, r4, r6	@ TempRefNum, D.37530, D.37530
	cmp	ip, #16	@ TempRefNum,
	add	lr, r5, r7	@ TempDispNum, D.37530, D.37530
	movge	ip, #16	@ TempRefNum,
	orrs	r8, ip, lr	@ tmp154, TempRefNum, TempDispNum
	bmi	.L909	@,
	clz	r3, r3	@ tmp150, flag
	cmp	r0, #25	@ eCapLevel,
	str	ip, [r1, #32]	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum
	mov	r3, r3, lsr #5	@ tmp150, tmp150,
	moveq	r3, #0	@ tmp150,
	cmp	r3, #0	@ tmp150,
	str	lr, [r1, #60]	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum
	bne	.L910	@,
.L896:
	ldr	r3, [r1, #4]	@ D.37532, pChanOption_8(D)->Purpose
	cmp	r3, #2	@ D.37532,
	bhi	.L911	@,
	beq	.L912	@,
	cmp	r3, #1	@ D.37532,
	beq	.L913	@,
.L898:
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L912:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VCTRL_GetMemSize_onFramePath	@
.L913:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VCTRL_GetMemSize_onDecode	@
.L910:
	ldr	r1, .L914+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L898	@
.L911:
	ldr	r1, .L914+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L898	@
.L909:
	str	r7, [sp, #4]	@ D.37530,
	mov	r3, r6	@, D.37530
	str	r5, [sp]	@ D.37530,
	mov	r2, r4	@, D.37530
	ldr	r1, .L914+12	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L898	@
.L915:
	.align	2
.L914:
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
	ldr	r10, .L940	@ tmp311,
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
	b	.L917	@
.L919:
	.word	.L933
	.word	.L933
	.word	.L933
	.word	.L933
	.word	.L933
	.word	.L920
	.word	.L920
	.word	.L920
.L933:
	mov	r3, #3	@ MinDnrFspNum,
.L918:
	ldr	r8, .L940+4	@ tmp310,
	rsb	r3, r3, r9	@ s32MaxRefFrameNum, MinDnrFspNum, nMinFrame
	cmp	r3, #15	@ s32MaxRefFrameNum,
	ldr	r4, [r8, #3608]	@ extra_ref, extra_ref
	bic	r4, r4, r4, asr #31	@ extra_ref_tmp, extra_ref
	str	r4, [r8, #3608]	@ extra_ref_tmp, extra_ref
	movgt	r4, #0	@ extra_ref_tmp,
	bgt	.L921	@,
	add	r3, r3, r4	@ D.37541, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r3, #16	@ D.37541,
	rsbgt	r3, r3, #16	@ D.37541, D.37541,
	addgt	r4, r4, r3	@ extra_ref_tmp, extra_ref_tmp, D.37541
.L921:
	add	r3, ip, r4	@ TempPmv, nPmv, extra_ref_tmp
	ldr	r7, [r8, #3612]	@ D.37541, extra_disp
	cmp	r3, #0	@ TempPmv,
	ble	.L937	@,
	cmp	r3, #17	@ TempPmv,
	movge	r3, #17	@ nPmv,
	str	r3, [sp, #40]	@ nPmv, %sfp
.L923:
	cmp	r6, #23	@ eCapLevel,
	bhi	.L924	@,
	ldr	r3, [sp, #44]	@ nMiddleFrame, %sfp
	add	r7, r4, r7	@ D.37541, extra_ref_tmp, D.37541
	add	r2, r7, r9	@ nMinFrame, D.37541, nMinFrame
	add	r1, r3, r7	@ nMiddleFrame, nMiddleFrame, D.37541
	ldr	r3, [sp, #48]	@ nFluentFrame, %sfp
	cmp	r2, #0	@ nMinFrame,
	cmpgt	r1, #0	@, nMiddleFrame,
	add	r7, r3, r7	@ nFluentFrame, nFluentFrame, D.37541
	movle	r3, #1	@ tmp201,
	movgt	r3, #0	@ tmp201,
	cmp	r7, #0	@ nFluentFrame,
	orrle	r3, r3, #1	@,, tmp207, tmp201
	cmp	r3, #0	@ tmp207,
	streq	r7, [sp, #48]	@ nFluentFrame, %sfp
	streq	r1, [sp, #44]	@ nMiddleFrame, %sfp
	moveq	r9, r2	@ nMinFrame, nMinFrame
	bne	.L938	@,
.L924:
	cmp	r6, #32	@ eCapLevel,
	bhi	.L939	@,
	ldr	r6, .L940+8	@ tmp211,
	ldr	ip, [r6, #36]	@ D.37543, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37543,
	beq	.L928	@,
	ldr	r3, [sp, #52]	@ tmp309, %sfp
	mov	r0, #0	@ tmp231,
	str	r9, [sp, #4]	@ nMinFrame,
	add	r8, sp, #56	@ tmp229,,
	rsb	r5, r5, r3	@ tmp217, tmp308, tmp309
	ldr	r3, [sp, #40]	@ nPmv, %sfp
	add	r4, r10, r5	@ tmp218, tmp311, tmp217
	mov	r9, #16	@ tmp228,
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
	blx	ip	@ D.37543
	ldr	r10, .L940	@ tmp213,
	cmp	r0, #0	@ ret
	bne	.L928	@,
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, r9	@ D.37541, MemArrange.TotalMemUsed,
	str	r3, [r2]	@ D.37541, *VdmMemSize_53(D)
	ldr	r3, [r4, #24]	@ tmp242, CapItem
	add	r3, r3, #32768	@ D.37541, tmp242,
	str	r3, [fp]	@ D.37541, *ScdMemSize_57(D)
	ldr	ip, [r6, #36]	@ D.37543, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37543,
	beq	.L930	@,
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
	blx	ip	@ D.37543
	subs	lr, r0, #0	@ ret,
	bne	.L930	@,
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.37541, MemArrange.TotalMemUsed,
	str	r3, [r2, #4]	@ D.37541, MEM[(HI_S32 *)VdmMemSize_53(D) + 4B]
	ldr	r3, [r4, #24]	@ tmp274, CapItem
	add	r3, r3, #32768	@ D.37541, tmp274,
	str	r3, [fp, #4]	@ D.37541, MEM[(HI_S32 *)ScdMemSize_57(D) + 4B]
	ldr	ip, [r6, #36]	@ D.37543, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37543,
	beq	.L932	@,
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
	blx	ip	@ D.37543
	cmp	r0, #0	@ ret
	bne	.L932	@,
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.37541, MemArrange.TotalMemUsed,
	str	r3, [r2, #8]	@ D.37541, MEM[(HI_S32 *)VdmMemSize_53(D) + 8B]
	ldr	r3, [r4, #24]	@ tmp306, CapItem
	add	r3, r3, #32768	@ D.37541, tmp306,
	str	r3, [fp, #8]	@ D.37541, MEM[(HI_S32 *)ScdMemSize_57(D) + 8B]
.L926:
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L920:
	mov	r3, #1	@ MinDnrFspNum,
	b	.L918	@
.L938:
	ldr	r1, [r8, #3612]	@ D.37541, extra_disp
	mov	r3, r4	@, extra_ref_tmp
	ldr	r0, [sp, #48]	@ nFluentFrame, %sfp
	mov	r2, r9	@, nMinFrame
	str	r4, [sp, #20]	@ extra_ref_tmp,
	str	r1, [sp, #24]	@ D.37541,
	str	r1, [sp, #12]	@ D.37541,
	str	r1, [sp]	@ D.37541,
	ldr	r1, [sp, #44]	@ nMiddleFrame, %sfp
	str	r0, [sp, #16]	@ nFluentFrame,
	mov	r0, #32	@,
	str	r4, [sp, #8]	@ extra_ref_tmp,
	str	r1, [sp, #4]	@ nMiddleFrame,
	ldr	r1, .L940+12	@,
	bl	dprint_vfmw	@
	b	.L924	@
.L917:
	mov	r3, #6	@ MinDnrFspNum,
	b	.L918	@
.L928:
	movw	r2, #5837	@,
	ldr	r1, .L940+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37540,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L930:
	movw	r2, #5855	@,
	ldr	r1, .L940+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37540,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L932:
	movw	r2, #5873	@,
	ldr	r1, .L940+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37540,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L937:
	mov	r3, r4	@, extra_ref_tmp
	mov	r2, ip	@, nPmv
	ldr	r1, .L940+20	@,
	mov	r0, #32	@,
	str	ip, [sp, #40]	@ nPmv, %sfp
	bl	dprint_vfmw	@
	ldr	ip, [sp, #40]	@ nPmv, %sfp
	cmp	ip, #17	@ nPmv,
	movlt	r3, ip	@ nPmv, nPmv
	movge	r3, #17	@ nPmv,
	str	r3, [sp, #40]	@ nPmv, %sfp
	b	.L923	@
.L939:
	mov	r2, r6	@, eCapLevel
	ldr	r1, .L940+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37540,
	b	.L926	@
.L941:
	.align	2
.L940:
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
	beq	.L943	@,
	ldr	r3, .L978	@ tmp141,
	ldr	r3, [r3, #32]	@ D.37553, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.37553,
	beq	.L973	@,
	mov	r0, #0	@,
	blx	r3	@ D.37553
.L946:
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
.L943:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].Length
	ldr	r6, [r4, #24]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #20]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	bne	.L974	@,
.L947:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].Length
	ldr	r6, [r4, #40]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #36]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].VirAddr
	bne	.L975	@,
.L948:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].Length
	ldr	r6, [r4, #72]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #68]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].VirAddr
	bne	.L976	@,
.L949:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].Length
	ldr	r6, [r4, #56]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #52]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].VirAddr
	bne	.L977	@,
.L950:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #92]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].Length
	ldr	r6, [r4, #88]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #84]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].VirAddr
	beq	.L951	@,
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L951:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r2, .L978+4	@,
	ldr	r1, .L978+8	@,
	mov	r0, #70	@,
	bl	osal_free_irq	@
	ldr	r2, .L978+4	@,
	ldr	r1, .L978+12	@,
	mov	r0, #73	@,
	bl	osal_free_irq	@
	ldr	r2, .L978+4	@,
	ldr	r1, .L978+16	@,
	mov	r0, #93	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L977:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #48	@, pstDrvMem,
	bl	__memzero	@
	b	.L950	@
.L976:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #64	@, pstDrvMem,
	bl	__memzero	@
	b	.L949	@
.L975:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #32	@, pstDrvMem,
	bl	__memzero	@
	b	.L948	@
.L974:
	bl	SM_CloseSCDDrv	@
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, r4, r1	@, pstDrvMem,
	bl	__memzero	@
	b	.L947	@
.L973:
	mov	r0, r3	@, D.37553
	movw	r2, #6131	@,
	ldr	r1, .L978+20	@,
	bl	dprint_vfmw	@
	b	.L946	@
.L979:
	.align	2
.L978:
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
	bne	.L981	@,
	ldr	r2, [r4, #44]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].Length
	add	r6, r4, #64	@ __p, pstDrvMem,
	ldr	r1, [r4, #36]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].VirAddr
	ldr	r0, [r4, #40]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, #53248	@,
	mov	r2, r6	@, __p
	movt	r0, 4115	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L1013	@,
	ldr	r5, .L1015	@ tmp165,
	ldr	r3, [r5, #16]	@ D.37574, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.37574,
	beq	.L1013	@,
	blx	r3	@ D.37574
	cmp	r0, #0	@,
	bne	.L1013	@,
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
	bne	.L994	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #20600	@,
	mov	r2, r7	@, __p
	mov	r1, #4096	@,
	movt	r0, 4127	@,
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.37573,
	bne	.L994	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.37573
	add	r0, sp, #12	@ tmp211,,
	ldr	r2, .L1015+4	@,
	mov	r1, #20	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.37574, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.37574,
	beq	.L990	@,
	blx	r3	@ D.37574
	subs	r2, r0, #0	@ Size,
	ble	.L990	@,
	str	r6, [sp]	@ D.37573,
	mov	r1, r6	@, D.37573
	add	r0, sp, #12	@ tmp212,,
	mov	r3, r4	@, pstDrvMem
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L994	@,
	ldr	r2, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.37577, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.37577,
	beq	.L994	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	blx	r3	@ D.37577
	subs	r5, r0, #0	@ D.37573,
	bne	.L994	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ __p, pstDrvMem,
	bl	get_scd_msg_size	@
	str	r5, [sp]	@ D.37573,
	mov	r1, r5	@, D.37573
	mov	r3, r6	@, __p
	mov	r2, r0	@,
	ldr	r0, .L1015+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1013	@,
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
	bne	.L1013	@,
	ldr	r5, .L1015+12	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L1015+16	@,
	mov	r0, #70	@,
	ldr	r1, .L1015+20	@,
	str	r5, [sp]	@ tmp200,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L1013	@,
	str	r5, [sp]	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L1015+24	@,
	mov	r0, #73	@,
	ldr	r1, .L1015+28	@,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.37573,
	bne	.L1013	@,
	str	r5, [sp]	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L1015+32	@,
	mov	r0, #93	@,
	ldr	r1, .L1015+36	@,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.37572
	bne	.L1014	@,
.L1001:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1014:
	bl	DNR_Close	@
	mov	r0, r7	@ D.37572, D.37573
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1013:
	mov	r0, r6	@, __p
.L1012:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.37572,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L990:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L994:
	mov	r0, r7	@, __p
	b	.L1012	@
.L981:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.37572,
	b	.L1001	@
.L1016:
	.align	2
.L1015:
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
	ldr	r5, .L1052	@ tmp301,
	ldr	r4, [r5, #4]	@ D.37594, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.37594,
	bne	.L1038	@,
	ldr	r7, .L1052+4	@ tmp300,
	mov	r2, #1024	@,
	mov	r6, r0	@ event_report, event_report
	ldr	r0, .L1052+8	@,
	str	r4, [sp, #4]	@ D.37594, p
	ldr	r1, [r7]	@, saved_command_line
	bl	strlcpy	@
	ldr	r1, .L1052+12	@,
	ldr	r0, .L1052+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.37592,
	str	r0, [sp, #4]	@ D.37592, p
	beq	.L1020	@,
	ldr	r1, .L1052+16	@,
	add	r0, sp, #4	@ tmp304,,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1040	@,
	add	r0, sp, #4	@ tmp305,,
	ldr	r1, .L1052+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1049	@,
	mov	r2, r4	@, D.37594
	mov	r1, r4	@, D.37594
	bl	simple_strtol	@
	mov	r2, r0	@ D.37591, D.37595
	str	r0, [r5, #3608]	@ D.37595, extra_ref
.L1024:
	add	r3, r2, #4992	@ D.37596, D.37591,
	movw	r1, #10000	@ tmp183,
	add	r3, r3, #8	@ D.37596, D.37596,
	movw	r8, #5000	@ tmp181,
	cmp	r3, r1	@ D.37596, tmp183
	bhi	.L1025	@,
	cmp	r2, r8	@ D.37591, tmp181
	movw	r3, #60536	@ tmp185,
.L1048:
	movt	r3, 65535	@ tmp190,
	movge	r2, r8	@ D.37594, tmp181
	cmp	r2, r3	@ D.37594, tmp190
	movlt	r2, r3	@ D.37594, tmp190
.L1021:
	str	r2, [r5, #3608]	@ D.37594, extra_ref
.L1023:
	mov	r2, #1024	@,
	ldr	r1, [r7]	@, saved_command_line
	ldr	r0, .L1052+8	@,
	mov	r8, #0	@ tmp192,
	str	r8, [sp, #4]	@ tmp192, p
	bl	strlcpy	@
	ldr	r1, .L1052+24	@,
	ldr	r0, .L1052+8	@,
	bl	strstr	@
	ldr	r9, .L1052	@ tmp195,
	cmp	r0, r8	@ D.37592,
	str	r0, [sp, #4]	@ D.37592, p
	beq	.L1026	@,
	ldr	r1, .L1052+16	@,
	add	r0, sp, #4	@ tmp306,,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1027	@,
	add	r0, sp, #4	@ tmp307,,
	ldr	r1, .L1052+20	@,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1050	@,
	mov	r2, r8	@, tmp192
	mov	r1, r8	@, tmp2
	bl	simple_strtol	@
	mov	r2, r0	@ D.37591, D.37595
	str	r0, [r9, #3612]	@ D.37595, extra_disp
.L1030:
	add	r3, r2, #4992	@ D.37596, D.37591,
	movw	r1, #10000	@ tmp213,
	add	r3, r3, #8	@ D.37596, D.37596,
	movw	r8, #5000	@ tmp211,
	cmp	r3, r1	@ D.37596, tmp213
	bhi	.L1031	@,
	cmp	r2, r8	@ D.37591, tmp211
	movw	r3, #60536	@ tmp215,
	movt	r3, 65535	@ tmp215,
	movlt	r4, r2	@ D.37594, D.37591
	movge	r4, r8	@ D.37594, tmp211
	cmp	r4, r3	@ D.37594, tmp215
	movlt	r4, r3	@ D.37594, tmp215
.L1027:
	str	r4, [r5, #3612]	@ D.37594, extra_disp
.L1029:
	ldr	r5, .L1052+28	@ tmp302,
	mov	r3, #0	@ tmp222,
	str	r3, [sp, #4]	@ tmp222, p
	ldr	r4, [r5, #-3540]	@ D.37593, extra_cmd
	cmp	r4, r3	@ D.37593,
	beq	.L1032	@,
	ldr	r3, .L1052+32	@ tmp228,
	ubfx	r2, r4, #1, #1	@ tmp231, D.37593,,
	and	r1, r4, #1	@ tmp226, D.37593,
	ubfx	r4, r4, #2, #1	@ tmp236, D.37593,,
	strb	r1, [r5, #-3536]	@ tmp226, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp231, g_not_direct_8x8_inference_flag
	strb	r4, [r5, #-3535]	@ tmp236, g_not_allow_H264FullPictureRepair_flag
.L1033:
	mov	r1, #152	@,
	ldr	r0, .L1052+36	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L1052	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L1052+40	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	ldr	r3, .L1052+28	@ tmp273,
	mov	r1, #75497472	@,
	ldreq	r2, .L1052+44	@ tmp277,
	mov	r0, #-2013265920	@,
	ldr	r4, .L1052	@ tmp278,
	streq	r2, [r3, #-3528]	@ tmp277, g_event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	mov	r1, #4	@,
	ldr	r0, .L1052+48	@,
	bl	__memzero	@
	add	r0, r4, #52	@, tmp278,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1038	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	add	r0, r4, #248	@, tmp278,
	bl	OSAL_InitEvent	@
	ldr	r2, .L1052+52	@,
	ldr	r1, .L1052+56	@,
	add	r0, r4, #40	@, tmp278,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.37591,
	bne	.L1039	@,
	add	r0, r4, #40	@, tmp278,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp295,
	str	r3, [r4, #4]	@ tmp295, s_VfmwCTrl.s32IsVCTRLOpen
.L1019:
	mov	r0, r5	@, D.37591
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1032:
	ldr	r1, [r7]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1052+8	@,
	bl	strlcpy	@
	ldr	r1, .L1052+60	@,
	ldr	r0, .L1052+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.37592,
	str	r0, [sp, #4]	@ D.37592, p
	beq	.L1033	@,
	ldr	r1, .L1052+16	@,
	add	r0, sp, #4	@ tmp308,,
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r5, #-3540]	@ D.37593, extra_cmd
	beq	.L1035	@,
	add	r0, sp, #4	@ tmp309,,
	ldr	r1, .L1052+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1051	@,
	mov	r2, r4	@, D.37593
	mov	r1, r4	@, tmp2
	bl	simple_strtol	@
	str	r0, [r5, #-3540]	@ D.37593, extra_cmd
.L1035:
	ldr	r3, .L1052+32	@ tmp260,
	ubfx	r2, r0, #1, #1	@ tmp263, D.37593,,
	and	r1, r0, #1	@ tmp258, D.37593,
	ubfx	r0, r0, #2, #1	@ tmp268, D.37593,,
	strb	r1, [r5, #-3536]	@ tmp258, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp263, g_not_direct_8x8_inference_flag
	strb	r0, [r5, #-3535]	@ tmp268, g_not_allow_H264FullPictureRepair_flag
	b	.L1033	@
.L1026:
	ldr	r2, [r9, #3612]	@ D.37591, extra_disp
	b	.L1030	@
.L1020:
	ldr	r2, [r5, #3608]	@ D.37591, extra_ref
	b	.L1024	@
.L1031:
	ldr	r1, .L1052+64	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r4, [r5, #3612]	@ extra_disp, extra_disp
	movw	r3, #60536	@ tmp220,
	cmp	r4, r8	@ extra_disp, tmp211
	movt	r3, 65535	@ tmp220,
	movge	r4, r8	@ D.37594, tmp211
	cmp	r4, r3	@ D.37594, tmp220
	movlt	r4, r3	@ D.37594, tmp220
	b	.L1027	@
.L1025:
	ldr	r1, .L1052+68	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #3608]	@ extra_ref, extra_ref
	movw	r3, #60536	@ tmp190,
	cmp	r2, r8	@ extra_ref, tmp181
	b	.L1048	@
.L1040:
	mov	r2, r4	@ D.37594, D.37594
	b	.L1021	@
.L1038:
	mvn	r5, #0	@ D.37591,
	mov	r0, r5	@, D.37591
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1049:
	movw	r3, #7132	@,
	ldr	r2, .L1052+72	@,
	ldr	r1, .L1052+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1023	@
.L1050:
	movw	r3, #7173	@,
	ldr	r2, .L1052+80	@,
	ldr	r1, .L1052+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1029	@
.L1039:
	add	r0, r4, #52	@, tmp278,
	mvn	r5, #0	@ D.37591,
	bl	CloseDrivers	@
	b	.L1019	@
.L1051:
	movw	r3, #7223	@,
	ldr	r2, .L1052+84	@,
	ldr	r1, .L1052+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1033	@
.L1053:
	.align	2
.L1052:
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
	mov	r3, r2, asl #1	@ D.37610, Threshould,
	movw	r6, #21846	@ tmp124,
	cmp	r2, #0	@ Threshould,
	movt	r6, 21845	@ tmp124,
	add	r5, r2, #7	@ tmp119, Threshould,
	smull	r6, r7, r3, r6	@ tmp123, D.37610, tmp124
	movge	r5, r2	@ Threshould, Threshould
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r5, asr #3	@ tmp120, Threshould,
	mov	r6, r0	@ CurMode, CurMode
	mov	r4, r2	@ Threshould, Threshould
	str	r2, [sp]	@ Threshould,
	mov	r8, r1	@ StreamAmount, StreamAmount
	str	r1, [sp, #4]	@ StreamAmount,
	sub	r3, r7, r3, asr #31	@,, D.37610,
	ldr	r1, .L1063	@,
	mov	r2, r5	@, tmp120
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	cmp	r6, #3	@ CurMode,
	beq	.L1061	@,
	cmp	r4, r8	@ Threshould, StreamAmount
	movge	r4, r6	@ CurMode, CurMode
	blt	.L1062	@,
.L1056:
	mov	r2, r6	@, CurMode
	mov	r3, r4	@, CurMode
	ldr	r1, .L1063+4	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, CurMode
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1062:
	ldr	r1, .L1063+8	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
.L1060:
	mov	r4, #3	@ CurMode,
	b	.L1056	@
.L1061:
	cmp	r5, r8	@ tmp120, StreamAmount
	ble	.L1060	@,
	ldr	r1, .L1063+12	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ CurMode,
	b	.L1056	@
.L1064:
	.align	2
.L1063:
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
	ldr	r3, .L1068	@ tmp117,
	ldr	r3, [r3]	@ D.37619, s_pstVfmwChan
	cmp	r3, #0	@ D.37619,
	beq	.L1067	@,
	add	r3, r3, #210944	@ D.37620, D.37619,
	add	r3, r3, #896	@ D.37620, D.37620,
	subs	r0, r0, r3	@ D.37617, pCtx, D.37620
	mvnne	r0, #0	@ D.37617,
	bx	lr	@
.L1067:
	mvn	r0, #0	@ D.37617,
	bx	lr	@
.L1069:
	.align	2
.L1068:
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
	ldr	r3, .L1077	@ tmp122,
	ldr	r3, [r3]	@ D.37627, s_pstVfmwChan
	cmp	r3, #0	@ D.37627,
	beq	.L1075	@,
	ldr	r2, [r3, #176]	@ D.37625, _16->stChanMem_vdh.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.37625
	blt	.L1073	@,
	ldr	r1, [r3, #180]	@ _16->stChanMem_vdh.Length, _16->stChanMem_vdh.Length
	add	r2, r2, r1	@ D.37625, D.37625, _16->stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, D.37625
	blt	.L1076	@,
.L1073:
	ldr	r2, [r3, #192]	@ D.37625, _16->stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.37625
	blt	.L1075	@,
	ldr	r3, [r3, #196]	@ _16->stChanMem_scd.Length, _16->stChanMem_scd.Length
	add	r2, r2, r3	@ D.37625, D.37625, _16->stChanMem_scd.Length
	cmp	r0, r2	@ PhyAddr, D.37625
	movlt	r0, #0	@ D.37624,
	mvnge	r0, #0	@ D.37624,
	bx	lr	@
.L1075:
	mvn	r0, #0	@ D.37624,
	bx	lr	@
.L1076:
	mov	r0, #0	@ D.37624,
	bx	lr	@
.L1078:
	.align	2
.L1077:
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
	ldr	r5, .L1099	@ tmp232,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ ChanID, ChanID
	ldr	ip, [r5, r0, asl #2]	@ D.37630, s_pstVfmwChan
	ldr	r1, [ip, #32]	@ D.37631, _9->stChanCfg.eVidStd
	sub	r3, r1, #2	@ D.37632, D.37631,
	cmp	r1, #6	@ D.37631,
	cmpne	r3, #1	@, D.37632,
	bls	.L1080	@,
	ldrd	r2, [r4, #32]	@ D.37634, pSegMan,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp165,
	cmp	r3, r1	@ D.37634,
	cmpeq	r2, r0	@ D.37634, tmp165
	beq	.L1095	@,
	add	r1, ip, #944	@ tmp224, D.37630,
	strd	r2, [r1]	@ D.37634, _9->stSynExtraData.pts
.L1082:
	ldrd	r8, [r4, #48]	@ D.37634, pSegMan,
	add	r5, ip, #960	@ tmp226, D.37630,
	add	lr, ip, #976	@ tmp228, D.37630,
	ldr	r1, .L1099+4	@,
	mov	r0, #29	@,
	strd	r8, [r5]	@ D.37634, _9->stSynExtraData.Usertag
	ldrd	r6, [r4, #56]	@ D.37634, pSegMan,
	strd	r6, [lr]	@ D.37634, _9->stSynExtraData.DispTime
	ldr	lr, [r4, #64]	@ D.37635, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	lr, [ip, #992]	@ D.37635, _9->stSynExtraData.DispEnableFlag
	ldr	lr, [r4, #68]	@ D.37635, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	lr, [ip, #996]	@ D.37635, _9->stSynExtraData.DispFrameDistance
	ldr	lr, [r4, #72]	@ D.37635, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	lr, [ip, #1000]	@ D.37635, _9->stSynExtraData.DistanceBeforeFirstFrame
	ldr	lr, [r4, #76]	@ D.37635, pSegMan_16(D)->CurrSeg.GopNum
	str	lr, [ip, #1016]	@ D.37635, _9->stSynExtraData.GopNum
	strd	r8, [sp]	@ D.37634,
	bl	dprint_vfmw	@
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1080:
	add	r0, ip, #1264	@, D.37630,
	add	r2, r4, #8	@, pSegMan,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	beq	.L1096	@,
.L1083:
	ldr	r1, [r5, r6, asl #2]	@ D.37630, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _74->stChanCfg.eVidStd, _74->stChanCfg.eVidStd
	cmp	r3, #3	@ _74->stChanCfg.eVidStd,
	addeq	r0, r1, #960	@ tmp231, D.37630,
	beq	.L1088	@,
.L1087:
	ldrd	r2, [r4, #32]	@ D.37634, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp212,
	add	r0, r1, #960	@ tmp231, D.37630,
	cmp	r3, r7	@ D.37634,
	cmpeq	r2, r6	@ D.37634, tmp212
	strned	r2, [r0, #-8]	@ D.37634, tmp231,
.L1089:
	ldrd	r2, [r4, #48]	@ D.37634, pSegMan,
	add	lr, r1, #976	@ tmp216, D.37630,
	add	ip, r1, #992	@ tmp218, D.37630,
	strd	r2, [lr, #-8]	@ D.37634, tmp216,
	ldrd	r2, [r4, #56]	@ D.37634, pSegMan,
	strd	r2, [ip, #-8]	@ D.37634, tmp218,
	ldr	r3, [r4, #64]	@ D.37635, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.37635, _96->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.37635, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.37635, _96->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.37635, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.37635, _96->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.37635, pSegMan_16(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.37635, _96->stSynExtraData.NextGopNum
.L1088:
	ldrd	r2, [r0]	@, _97->stSynExtraData.Usertag
	mov	r0, #29	@,
	ldr	r1, .L1099+8	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L1096:
	ldr	ip, [r5, r6, asl #2]	@ D.37630, s_pstVfmwChan
	add	lr, ip, #960	@ tmp230, D.37630,
	ldr	r3, [ip, #32]	@ _37->stChanCfg.eVidStd, _37->stChanCfg.eVidStd
	cmp	r3, #3	@ _37->stChanCfg.eVidStd,
	beq	.L1097	@,
	ldrd	r2, [lr, #-8]	@ D.37634, tmp230,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp179,
	cmp	r3, r1	@ D.37634,
	cmpeq	r2, r0	@ D.37634, tmp179
	beq	.L1098	@,
	add	r1, ip, #944	@ tmp183, D.37630,
	strd	r2, [r1]	@ D.37634, _37->stSynExtraData.pts
.L1085:
	add	r7, ip, #976	@ tmp190, D.37630,
	mvn	r0, #0	@ tmp186,
	mvn	r1, #0	@,
	strd	r0, [lr, #-8]	@ tmp186, tmp230,
	ldrd	r10, [r7, #-8]	@ _37->stSynExtraData.NextUsertag, tmp190,
	add	r8, ip, #992	@ tmp195, D.37630,
	ldr	r1, .L1099+12	@,
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
	ldr	r1, [r5, r6, asl #2]	@ D.37630, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _58->stChanCfg.eVidStd, _58->stChanCfg.eVidStd
	cmp	r3, #3	@ _58->stChanCfg.eVidStd,
	bne	.L1087	@,
	ldrd	r2, [r4, #32]	@ D.37634, pSegMan,
	add	lr, r1, #960	@ tmp205, D.37630,
	add	ip, r1, #976	@ tmp207, D.37630,
	add	r0, r1, #992	@ tmp209, D.37630,
	strd	r2, [lr, #-8]	@ D.37634, tmp205,
	ldrd	r2, [r4, #48]	@ D.37634, pSegMan,
	strd	r2, [ip, #-8]	@ D.37634, tmp207,
	ldrd	r2, [r4, #56]	@ D.37634, pSegMan,
	strd	r2, [r0, #-8]	@ D.37634, tmp209,
	ldr	r3, [r4, #64]	@ D.37635, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.37635, _58->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.37635, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.37635, _58->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.37635, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.37635, _58->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.37635, pSegMan_16(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.37635, _58->stSynExtraData.NextGopNum
	b	.L1083	@
.L1095:
	add	r3, ip, #944	@ tmp167, D.37630,
	ldrd	r2, [r3]	@ D.37634, _9->stSynExtraData.pts
	b	.L1082	@
.L1097:
	ldrd	r2, [lr, #-8]	@ D.37634, tmp230,
	add	r1, ip, #944	@ tmp176, D.37630,
	strd	r2, [r1]	@ D.37634, _37->stSynExtraData.pts
	b	.L1085	@
.L1098:
	add	r3, ip, #944	@ tmp181, D.37630,
	ldrd	r2, [r3]	@ D.37634, _37->stSynExtraData.pts
	b	.L1085	@
.L1100:
	.align	2
.L1099:
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
	ldr	r3, .L1111	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ tmp124, s_pstVfmwChan
	ldr	r1, [r3, #880]	@ D.37648, _5->eVidStd
	sub	r3, r1, #10	@ D.37649, D.37648,
	cmp	r3, #2	@ D.37649,
	bhi	.L1102	@,
	ldr	r3, .L1111+4	@ tmp126,
	ldr	r2, [r3, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r2, #1	@ D.37646, g_VdmCharacter,
	beq	.L1110	@,
.L1102:
	sub	r3, r1, #14	@ D.37648, D.37648,
	bics	r3, r3, #4	@ tmp139, D.37648,
	movne	r3, #1	@ tmp131,
	moveq	r3, #0	@ tmp131,
	cmp	r1, #4	@ D.37648,
	moveq	r3, #0	@, tmp136
	andne	r3, r3, #1	@,, tmp136, tmp131
	cmp	r3, #0	@ tmp136,
	beq	.L1110	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r3, #1	@ D.37646,
	moveq	r3, #0	@ D.37646,
	mov	r0, r3	@, D.37646
	ldmfd	sp!, {r4, pc}	@
.L1110:
	mov	r0, r3	@, D.37646
	bx	lr	@
.L1112:
	.align	2
.L1111:
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
	bne	.L1144	@,
	ldr	r7, .L1150	@ tmp201,
	ldr	r3, [r7]	@ D.37655, s_pstVfmwChan
	cmp	r3, #0	@ D.37655,
	beq	.L1145	@,
	ldr	r2, [r3, #8]	@ _13->s32IsRun, _13->s32IsRun
	cmp	r2, #1	@ _13->s32IsRun,
	bne	.L1146	@,
	ldr	r4, [r3, #16]	@ D.37656, _13->s32StopSyntax
	cmp	r4, #0	@ D.37656,
	bne	.L1147	@,
	str	r4, [r3, #672]	@ D.37656, _13->s32NoStreamFlag
	bl	OSAL_GetTimeInMs	@
	ldr	r6, .L1150+4	@ tmp203,
	ldr	r2, .L1150+8	@ tmp162,
	ldr	r3, [r6, #-3520]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.37657, last_rec_pos_time, currtime
	mov	r8, r0	@ currtime,
	cmp	r3, r2	@ D.37657, g_TraceBsPeriod
	mov	r0, r4	@, D.37656
	bls	.L1119	@,
	str	r8, [r6, #-3520]	@ currtime, last_rec_pos_time
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.37654,
	mov	r5, r0	@ D.37654,
	bne	.L1120	@,
	mov	r2, r4	@, D.37656
	ldr	r1, .L1150+12	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
.L1134:
	mov	r0, r5	@, D.37654
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1119:
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.37654,
	mov	r5, r0	@ D.37654,
	beq	.L1134	@,
	mov	r0, r4	@, D.37656
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	mvnne	r5, #2	@ D.37654,
	bne	.L1134	@,
.L1129:
	ldr	r3, [r7]	@ D.37655, s_pstVfmwChan
	add	r9, r3, #1024	@ tmp202, D.37655,
	ldrb	r2, [r3, #1025]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec, MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec
	cmp	r2, #0	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec,
	bne	.L1121	@,
	ldr	r5, [r3, #1616]	@ _33->stSynExtraData.s32DSDWaitFlag, _33->stSynExtraData.s32DSDWaitFlag
	cmp	r5, #0	@ _33->stSynExtraData.s32DSDWaitFlag,
	beq	.L1148	@,
.L1121:
	ldrd	r4, [r9, #48]	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].CurrSeg.Usertag, tmp202,
	mov	r0, #29	@,
	ldrd	r2, [r9, #32]	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].CurrSeg.Pts, tmp202,
	ldr	r1, .L1150+16	@,
	strd	r4, [sp]	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].CurrSeg.Usertag,
	bl	dprint_vfmw	@
	mov	r1, r9	@, tmp202
	mov	r0, #0	@,
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r7]	@ D.37655, s_pstVfmwChan
	mov	r0, r9	@, tmp202
	add	r2, r3, #210944	@, D.37655,
	add	r2, r2, #896	@,,
	ldr	r1, [r3, #880]	@, _55->eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1125	@,
.L1126:
	mov	r5, #0	@ D.37654,
	b	.L1134	@
.L1120:
	mov	r0, r4	@, D.37656
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@ D.37656,
	moveq	r4, r0	@ rec_pos_print_flag, D.37656
	beq	.L1129	@,
	mov	r2, r4	@, D.37656
	ldr	r1, .L1150+20	@,
	mov	r0, #23	@,
	mvn	r5, #2	@ D.37654,
	bl	dprint_vfmw	@
	b	.L1134	@
.L1148:
	add	r1, r9, #8	@, tmp202,
	mov	r0, r5	@, _33->stSynExtraData.s32DSDWaitFlag
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L1121	@,
	cmp	r4, #1	@ rec_pos_print_flag,
	beq	.L1149	@,
.L1122:
	ldr	r2, .L1150+24	@ tmp176,
	ldr	r3, [r6, #-3516]	@ last_rec_pos_report_time, last_rec_pos_report_time
	ldr	r1, .L1150+4	@ tmp173,
	ldr	r2, [r2]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r3, r3, r8	@ D.37657, last_rec_pos_report_time, currtime
	cmp	r3, r2	@ D.37657, g_NoStreamReportPeriod
	bls	.L1123	@,
	ldr	r3, [r1, #-3528]	@ D.37660, g_event_report
	cmp	r3, #0	@ D.37660,
	beq	.L1124	@,
	mov	r2, #0	@,
	mov	r1, #117	@,
	mov	r0, r2	@,
	blx	r3	@ D.37660
.L1124:
	str	r8, [r6, #-3516]	@ currtime, last_rec_pos_report_time
.L1123:
	ldr	r3, [r7]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp182,
	mvn	r5, #3	@ D.37654,
	str	r2, [r3, #672]	@ tmp182, _48->s32NoStreamFlag
	b	.L1134	@
.L1125:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L1150+28	@ tmp197,
	ldr	r3, [r6, #-3512]	@ last_rec_pos_decparam_time, last_rec_pos_decparam_time
	ldr	ip, .L1150+4	@ tmp194,
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.37657, last_rec_pos_decparam_time, currtime
	mov	r2, r0	@ currtime,
	cmp	r3, r1	@ D.37657, g_TraceFramePeriod
	bls	.L1126	@,
	mov	r0, #0	@,
	str	r2, [ip, #-3512]	@ currtime, last_rec_pos_decparam_time
	mov	r5, r0	@ D.37654,
	bl	VCTRL_GetDecParam	@
	b	.L1134	@
.L1146:
	ldr	r3, .L1150+32	@,
	movw	r2, #6597	@,
	ldr	r1, .L1150+36	@,
	mvn	r5, #0	@ D.37654,
	bl	dprint_vfmw	@
	b	.L1134	@
.L1147:
	ldr	r3, .L1150+40	@,
	movw	r2, #6598	@,
	ldr	r1, .L1150+36	@,
	mvn	r5, #0	@ D.37654,
	bl	dprint_vfmw	@
	b	.L1134	@
.L1144:
	ldr	r3, .L1150+44	@,
	movw	r2, #6595	@,
	ldr	r1, .L1150+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.37654,
	b	.L1134	@
.L1145:
	ldr	r3, .L1150+48	@,
	movw	r2, #6596	@,
	ldr	r1, .L1150+36	@,
	mvn	r5, #0	@ D.37654,
	bl	dprint_vfmw	@
	b	.L1134	@
.L1149:
	mov	r2, r5	@, _33->stSynExtraData.s32DSDWaitFlag
	ldr	r1, .L1150+52	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L1122	@
.L1151:
	.align	2
.L1150:
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
	ldr	r5, .L1175	@ tmp152,
	mvn	r0, #0	@ ret,
	ldr	r6, .L1175+4	@ tmp153,
	mov	r7, #0	@ tmp155,
	ldr	r9, .L1175	@ tmp156,
	mov	r8, #1	@ tmp157,
	ldr	r3, [r5]	@ D.37677, s_pstVfmwChan
	cmp	r3, #0	@ D.37677,
	ldrne	r3, [r3, #12]	@ D.37680, _69->s32Priority
.L1154:
	cmp	r3, #0	@ D.37680,
	str	r7, [r6, #-3508]	@ tmp155, ChanPriTab
	str	r8, [r5, #48]	@ tmp157, s_VfmwCTrl.s32ThisChanIDPlus1
	mov	r3, #0	@ tmp130,
	ldr	r2, .L1175	@ tmp131,
	ble	.L1156	@,
	ldr	r2, [r9]	@ D.37677, s_pstVfmwChan
	cmp	r2, r3	@ D.37677,
	moveq	r3, r2	@ D.37680, D.37677
	beq	.L1154	@,
	ldr	r1, [r2, #8]	@ _28->s32IsRun, _28->s32IsRun
	cmp	r1, #1	@ _28->s32IsRun,
	bne	.L1154	@,
	ldr	r3, [r2, #52]	@ _28->stChanCfg.s32ChanStrmOFThr, _28->stChanCfg.s32ChanStrmOFThr
	cmp	r3, #0	@ _28->stChanCfg.s32ChanStrmOFThr,
	ble	.L1158	@,
	ldr	r0, [r2, #56]	@ _28->stChanCfg.s32DecMode, _28->stChanCfg.s32DecMode
	cmp	r0, #0	@ _28->stChanCfg.s32DecMode,
	beq	.L1172	@,
.L1158:
	mov	r4, #200	@ D.37676,
	b	.L1162	@
.L1173:
	subs	r4, r4, #1	@ D.37676, D.37676,
	beq	.L1171	@,
.L1162:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	beq	.L1173	@,
.L1171:
	ldr	r3, [r6, #-3508]	@ D.37680, ChanPriTab
	b	.L1154	@
.L1156:
	str	r3, [r2, #48]	@ tmp130, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1172:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1174	@,
.L1159:
	ldr	r4, [r5]	@ D.37677, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [r4, #52]	@, _35->stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	bl	GetNextDecodeMode	@
	ldr	r3, [r5]	@ D.37677, s_pstVfmwChan
	str	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	ldr	r2, [r3, #896]	@ _42->stSynExtraData.s32DecMode, _42->stSynExtraData.s32DecMode
	cmp	r2, #0	@ _42->stSynExtraData.s32DecMode,
	strne	r7, [r3, #892]	@ tmp155, _42->stSynExtraData.s32OutErrThr
	strne	r7, [r3, #888]	@ tmp155, _42->stSynExtraData.s32RefErrThr
	ldreq	r2, [r3, #48]	@ D.37678, _42->stChanCfg.s32ChanErrThr
	streq	r2, [r3, #892]	@ D.37678, _42->stSynExtraData.s32OutErrThr
	streq	r2, [r3, #888]	@ D.37678, _42->stSynExtraData.s32RefErrThr
	b	.L1158	@
.L1174:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L1159	@
.L1176:
	.align	2
.L1175:
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
	ldr	r4, .L1189	@ tmp139,
	ldr	r0, [r4, #164]	@ D.37683, g_SleepTime
	str	r3, [r4, #44]	@ tmp118, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ D.37683,
	ble	.L1178	@,
	bl	msleep	@
.L1178:
	ldr	r0, .L1189+4	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r3, [r4, #156]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp123,
	str	r2, [r4, #44]	@ tmp123, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1187	@,
.L1179:
	mov	r3, #102	@ tmp127,
	str	r3, [r4, #44]	@ tmp127, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	ldr	r3, .L1189+8	@ tmp128,
	ldr	r0, [r3, #28]	@ D.37685, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.37685,
	beq	.L1180	@,
	blx	r0	@ D.37685
	ldr	r3, .L1189+12	@ tmp129,
	ldr	r3, [r3, #56]	@ D.37686, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.37686,
	beq	.L1188	@,
.L1181:
	mov	r0, #0	@,
	blx	r3	@ D.37686
.L1182:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1189+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1189+16	@,
	mov	r3, #105	@ tmp134,
	str	r3, [r4, #44]	@ tmp134, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1187:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1179	@
.L1180:
	movw	r2, #549	@,
	ldr	r1, .L1189+20	@,
	bl	dprint_vfmw	@
	ldr	r3, .L1189+12	@ tmp129,
	ldr	r3, [r3, #56]	@ D.37686, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.37686,
	bne	.L1181	@,
.L1188:
	mov	r0, r3	@, D.37686
	mov	r2, #556	@,
	ldr	r1, .L1189+24	@,
	bl	dprint_vfmw	@
	b	.L1182	@
.L1190:
	.align	2
.L1189:
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
	ldr	r4, .L1224	@ tmp193,
	mov	r6, #12288	@ tmp201,
	movt	r7, 9	@ tmp200,
	movt	r6, 65056	@ tmp201,
.L1192:
	ldr	r1, .L1224+4	@,
	mov	r0, #2	@,
	mov	r3, #0	@ tmp137,
	str	r3, [r4, #44]	@ tmp137, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@ D.37691, s_VfmwCTrl.eTaskCommand
	mov	r1, #2	@ tmp140,
	mov	r2, #1	@ tmp142,
	cmp	r3, r1	@ D.37691,
	str	r1, [r4, #32]	@ tmp140, s_VfmwCTrl.eTaskState
	str	r2, [r4, #44]	@ tmp142, s_VfmwCTrl.s32ThreadPos
	bne	.L1199	@,
	b	.L1193	@
.L1197:
	mov	r3, #2	@ tmp173,
	str	r3, [r4, #44]	@ tmp173, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	ldr	r1, .L1224+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@ D.37691, s_VfmwCTrl.eTaskCommand
	mov	r2, #1	@ tmp176,
	str	r2, [r4, #44]	@ tmp176, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.37691,
	beq	.L1193	@,
.L1199:
	cmp	r3, #3	@ D.37691,
	beq	.L1194	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sp, #4]	@ enChipVersion, enChipVersion
	cmp	r3, #5	@ enChipVersion,
	bne	.L1197	@,
	clz	r3, r5	@ tmp150, time2
	rsb	r2, r5, r0	@ D.37693, time2, time2
	mov	r3, r3, lsr #5	@ tmp150, tmp150,
	cmp	r2, r7	@ D.37693, tmp200
	orrhi	r3, r3, #1	@,, tmp153, tmp150
	cmp	r3, #0	@ tmp153,
	beq	.L1197	@,
	ldr	r3, [r6, #92]	@ reg_val, MEM[(volatile unsigned int *)4263522396B]
	mov	r5, r0	@ time2, time2
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.37693, reg_val,
	strne	r3, [r6, #92]	@ D.37693, MEM[(volatile unsigned int *)4263522396B]
	ldr	r3, [r6, #96]	@ reg_val, MEM[(volatile unsigned int *)4263522400B]
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.37693, reg_val,
	strne	r3, [r6, #96]	@ D.37693, MEM[(volatile unsigned int *)4263522400B]
	movne	r5, r0	@ time2, time2
	b	.L1197	@
.L1193:
	ldr	r1, .L1224+12	@,
	mov	r0, #2	@,
	mov	r3, #4	@ tmp179,
	mov	r8, #5	@ tmp194,
	str	r3, [r4, #44]	@ tmp179, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r3, #1	@ tmp182,
	str	r3, [r4, #32]	@ tmp182, s_VfmwCTrl.eTaskState
	b	.L1200	@
.L1223:
	bl	msleep	@
.L1200:
	ldr	r1, .L1224+16	@,
	mov	r0, #22	@,
	str	r8, [r4, #44]	@ tmp194, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #36]	@ D.37691, s_VfmwCTrl.eTaskCommand
	mov	r0, #10	@,
	cmp	r3, #1	@ D.37691,
	beq	.L1192	@,
	cmp	r3, #3	@ D.37691,
	bne	.L1223	@,
.L1194:
	ldr	r1, .L1224+20	@,
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
.L1225:
	.align	2
.L1224:
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
	ldr	r3, .L1236	@ tmp120,
	ldr	r0, [r3, r0, asl #2]	@ D.37705, s_pstVfmwChan
	cmp	r0, #0	@ D.37705,
	bxeq	lr	@
	ldr	r3, [r0, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r3, #18	@ _5->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _5->eVidStd
	b	.L1235	@
.L1229:
	.word	.L1233
	.word	.L1235
	.word	.L1230
	.word	.L1231
	.word	.L1235
	.word	.L1235
	.word	.L1232
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1235
	.word	.L1233
.L1233:
	add	r0, r0, #210944	@ D.37704, D.37705,
	add	r0, r0, #904	@ D.37704, D.37704,
	bx	lr	@
.L1232:
	add	r0, r0, #227328	@ D.37704, D.37705,
	add	r0, r0, #600	@ D.37704, D.37704,
	bx	lr	@
.L1230:
	add	r0, r0, #233472	@ D.37704, D.37705,
	add	r0, r0, #976	@ D.37704, D.37704,
	bx	lr	@
.L1231:
	add	r0, r0, #282624	@ D.37704, D.37705,
	add	r0, r0, #2560	@ D.37704, D.37704,
	bx	lr	@
.L1235:
	mov	r0, #0	@ D.37704,
	bx	lr	@
.L1237:
	.align	2
.L1236:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r7, .L1247	@ tmp120,
	ldr	lr, [r7, r0, asl #2]	@ tmp121, s_pstVfmwChan
	cmp	lr, #0	@ tmp121,
	beq	.L1245	@,
	mov	r6, r3	@ pNewImgNum, pNewImgNum
	mov	r5, r2	@ pReadImgNum, pReadImgNum
	mov	r8, r1	@ pRefImgNum, pRefImgNum
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	beq	.L1240	@,
	mov	r2, r6	@, pNewImgNum
	mov	r1, r5	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r3, [r7, r4, asl #2]	@ D.37714, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ D.37715, _14->eVidStd
	cmp	r2, #0	@ D.37715,
	beq	.L1246	@,
	cmp	r2, #15	@ D.37715,
	movne	r3, #2	@ tmp129,
	strne	r3, [r8]	@ tmp129, *pRefImgNum_11(D)
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L1247+4	@,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L1246:
	add	r3, r3, #237568	@ tmp126, D.37714,
	ldr	r3, [r3, #896]	@ _14->stSynCtx.unSyntax.stH264Ctx.DPB.size, _14->stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r8]	@ _14->stSynCtx.unSyntax.stH264Ctx.DPB.size, *pRefImgNum_11(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1240:
	str	r3, [r6]	@ pstVoQue, *pNewImgNum_7(D)
	str	r3, [r5]	@ pstVoQue, *pReadImgNum_9(D)
	str	r3, [r8]	@ pstVoQue, *pRefImgNum_11(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1245:
	mov	r0, lr	@, tmp121
	ldr	r3, .L1247+8	@,
	movw	r2, #6816	@,
	ldr	r1, .L1247+12	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L1248:
	.align	2
.L1247:
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
	bne	.L1258	@,
	cmp	r1, #0	@ pstChanState,
	mov	r4, r1	@ pstChanState, pstChanState
	beq	.L1259	@,
	ldr	r5, .L1262	@ tmp179,
	ldr	r1, [r5]	@ D.37721, s_pstVfmwChan
	cmp	r1, #0	@ D.37721,
	beq	.L1260	@,
	add	r1, r1, #1280	@, D.37721,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5]	@ D.37721, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1261	@,
.L1254:
	mov	r1, r4	@, pstChanState
	mov	r0, #0	@,
	bl	VCTRL_GetDispStateWithDNR	@
.L1256:
	ldr	r2, .L1262+4	@ tmp156,
	add	r1, sp, #16	@,,
	ldr	r3, [sp, #8]	@ ReadNum, ReadNum
	mov	r0, #0	@,
	ldr	lr, [sp, #12]	@ NewNum, NewNum
	ldr	ip, [r2, #-3476]	@ g_VfmwChanStat[0].u32IsFieldFlag, g_VfmwChanStat[0].u32IsFieldFlag
	ldr	r2, [r2, #-3488]	@ g_VfmwChanStat[0].u32FrFrameRate, g_VfmwChanStat[0].u32FrFrameRate
	add	r3, r3, lr	@ D.37723, ReadNum, NewNum
	str	r3, [r4, #52]	@ D.37723, pstChanState_9(D)->decoded_1d_frame_num
	str	ip, [r4, #100]	@ g_VfmwChanStat[0].u32IsFieldFlag, pstChanState_9(D)->is_field_flg
	str	r2, [r4, #24]	@ g_VfmwChanStat[0].u32FrFrameRate, pstChanState_9(D)->frame_rate
	bl	SM_GetInfo	@
	ldr	r2, [sp, #36]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [sp, #32]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	cmp	r2, #10	@ ScdInstInfo.numReadSegFail,
	ldr	r1, [sp, #24]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	add	r3, r3, #225280	@ tmp174, s_pstVfmwChan,
	movle	r2, #0	@ D.37725,
	movgt	r2, #1	@ D.37725,
	str	r0, [r4, #56]	@ ScdInstInfo.TotalSegSize, pstChanState_9(D)->buffered_stream_size
	str	r1, [r4, #60]	@ ScdInstInfo.SegNum, pstChanState_9(D)->buffered_stream_num
	str	r2, [r4, #84]	@ D.37725, pstChanState_9(D)->stream_not_enough
	ldrb	r3, [r3, #2424]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)_39 + 211840B], MEM[(struct MP4_CTX_S *)_39 + 211840B]
	and	r3, r3, #1	@ D.37726, MEM[(struct MP4_CTX_S *)_39 + 211840B],
	str	r3, [r4, #92]	@ D.37726, pstChanState_9(D)->mpeg4_shorthead
.L1249:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1261:
	ldr	r3, [r3, #1604]	@ _16->stSynExtraData.s32DnrEnable, _16->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _16->stSynExtraData.s32DnrEnable,
	beq	.L1254	@,
	mov	r0, r6	@, ChanID
	ldr	r2, [sp, #4]	@, RefNum
	mov	r1, r4	@, pstChanState
	bl	VCTRL_GetDispState	@
	b	.L1256	@
.L1258:
	mov	r2, r6	@, ChanID
	mov	r0, r3	@, tmp131
	ldr	r1, .L1262+8	@,
	bl	dprint_vfmw	@
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1260:
	ldr	r3, .L1262+12	@,
	movw	r2, #1293	@,
	ldr	r1, .L1262+16	@,
	bl	dprint_vfmw	@
	b	.L1249	@
.L1259:
	ldr	r3, .L1262+20	@,
	movw	r2, #1292	@,
	ldr	r1, .L1262+16	@,
	bl	dprint_vfmw	@
	b	.L1249	@
.L1263:
	.align	2
.L1262:
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
	ldr	r3, .L1265	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	sub	r0, r0, #1	@, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
.L1266:
	.align	2
.L1265:
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
	bne	.L1284	@,
	ldr	r4, .L1289	@ tmp131,
	ldr	r3, [r4]	@ D.37756, s_pstVfmwChan
	cmp	r3, #0	@ D.37756,
	beq	.L1285	@,
	ldr	r3, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r3, #1	@ _6->s32IsOpen,
	bne	.L1286	@,
	cmp	r1, #0	@ pImage,
	beq	.L1287	@,
	ldr	r0, .L1289+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4]	@ D.37756, s_pstVfmwChan
	cmp	r3, #0	@ D.37756,
	movweq	r2, #6929	@,
	beq	.L1283	@,
	ldr	r3, [r3, #4]	@ _13->s32IsOpen, _13->s32IsOpen
	cmp	r3, #1	@ _13->s32IsOpen,
	bne	.L1288	@,
	ldr	r0, .L1289+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r4, [r4]	@ D.37756, s_pstVfmwChan
	movw	r3, #4058	@ tmp152,
	add	r2, r4, #172032	@ tmp150, D.37756,
	ldrsb	r6, [r2, r3]	@ s32AllDecFrameNum, _23->FspInst.s32DecFsNum
	cmp	r6, #0	@ s32AllDecFrameNum,
	addgt	r4, r4, #209920	@ ivtmp.660, D.37756,
	addgt	r4, r4, #840	@ ivtmp.660, ivtmp.660,
	bgt	.L1279	@,
	b	.L1280	@
.L1277:
	cmp	r6, r5	@ s32AllDecFrameNum, i
	add	r4, r4, #16	@ ivtmp.660, ivtmp.660,
	beq	.L1280	@,
.L1279:
	ldr	r3, [r4, #-16]	@ MEM[base: _38, offset: 4294967280B], MEM[base: _38, offset: 4294967280B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #1	@ MEM[base: _38, offset: 4294967280B],
	bne	.L1277	@,
	ldr	r2, [r4, #-8]	@, MEM[base: _38, offset: 4294967288B]
	mov	r0, #0	@,
	ldr	r1, [r4, #-12]	@, MEM[base: _38, offset: 4294967284B]
	add	r4, r4, #16	@ ivtmp.660, ivtmp.660,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-20]	@ s32UsingCount, MEM[base: _38, offset: 4294967292B]
	streq	r0, [r4, #-32]	@ s32UsingCount, MEM[base: _38, offset: 4294967280B]
	cmp	r6, r5	@ s32AllDecFrameNum, i
	bne	.L1279	@,
.L1280:
	ldr	r0, .L1289+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1289+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.37755,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1288:
	movw	r2, #6936	@,
.L1283:
	ldr	r1, .L1289+12	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r0, .L1289+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37755,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1286:
	ldr	r3, .L1289+16	@,
	movw	r2, #6923	@,
	ldr	r1, .L1289+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37755,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1284:
	ldr	r3, .L1289+24	@,
	movw	r2, #6921	@,
	ldr	r1, .L1289+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37755,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1287:
	ldr	r3, .L1289+28	@,
	movw	r2, #6924	@,
	ldr	r1, .L1289+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37755,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1285:
	ldr	r3, .L1289+32	@,
	movw	r2, #6922	@,
	ldr	r1, .L1289+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37755,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1290:
	.align	2
.L1289:
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
	bne	.L1296	@,
	ldr	r3, .L1298	@ tmp116,
	ldr	r3, [r3]	@ D.37769, s_pstVfmwChan
	cmp	r3, #0	@ D.37769,
	beq	.L1297	@,
	ldr	r0, [r3, #1456]	@ D.37768, _6->stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r4, pc}	@
.L1296:
	ldr	r3, .L1298+4	@,
	movw	r2, #6951	@,
	ldr	r1, .L1298+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37768,
	ldmfd	sp!, {r4, pc}	@
.L1297:
	ldr	r3, .L1298+12	@,
	movw	r2, #6952	@,
	ldr	r1, .L1298+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37768,
	ldmfd	sp!, {r4, pc}	@
.L1299:
	.align	2
.L1298:
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
	bne	.L1305	@,
	ldr	r3, .L1307	@ tmp116,
	ldr	r3, [r3]	@ D.37773, s_pstVfmwChan
	cmp	r3, #0	@ D.37773,
	beq	.L1306	@,
	ldr	r0, [r3, #1460]	@ D.37772, _6->stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r4, pc}	@
.L1305:
	ldr	r3, .L1307+4	@,
	movw	r2, #6959	@,
	ldr	r1, .L1307+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37772,
	ldmfd	sp!, {r4, pc}	@
.L1306:
	ldr	r3, .L1307+12	@,
	movw	r2, #6960	@,
	ldr	r1, .L1307+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37772,
	ldmfd	sp!, {r4, pc}	@
.L1308:
	.align	2
.L1307:
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
	bne	.L1315	@,
	ldr	r3, .L1316	@ tmp116,
	ldr	r3, [r3]	@ D.37777, s_pstVfmwChan
	cmp	r3, #0	@ D.37777,
	ldrne	r0, [r3, #24]	@ D.37776, _6->eChanCapLevel
	moveq	r0, #33	@ D.37776,
	bx	lr	@
.L1315:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #6967	@,
	ldr	r3, .L1316+4	@,
	mov	r0, #0	@,
	ldr	r1, .L1316+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37776,
	ldmfd	sp!, {r4, pc}	@
.L1317:
	.align	2
.L1316:
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
	add	r3, r0, #4992	@ D.37780, new_extra_ref,
	movw	r2, #10000	@ tmp125,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r3, #8	@ D.37780, D.37780,
	ldr	r5, .L1326	@ tmp144,
	cmp	r3, r2	@ D.37780, tmp125
	mov	r4, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r5, #3608]	@ new_extra_ref, extra_ref
	bhi	.L1324	@,
.L1319:
	movw	r1, #5000	@ tmp130,
	cmp	r0, r1	@ D.37782, tmp130
	movw	r2, #60536	@ tmp132,
	add	r3, r4, #4992	@ D.37780, new_extra_disp,
	movge	r0, r1	@ D.37781, tmp130
	movt	r2, 65535	@ tmp132,
	cmp	r0, r2	@ D.37781, tmp132
	add	r3, r3, #8	@ D.37780, D.37780,
	movw	r1, #10000	@ tmp136,
	str	r4, [r5, #3612]	@ new_extra_disp, extra_disp
	movlt	r0, r2	@ D.37781, tmp132
	cmp	r3, r1	@ D.37780, tmp136
	str	r0, [r5, #3608]	@ D.37781, extra_ref
	ldr	r6, .L1326	@ tmp128,
	bhi	.L1325	@,
.L1320:
	movw	r2, #5000	@ tmp141,
	cmp	r4, r2	@ D.37782, tmp141
	movw	r3, #60536	@ tmp143,
	movge	r4, r2	@ D.37781, tmp141
	movt	r3, 65535	@ tmp143,
	cmp	r4, r3	@ D.37781, tmp143
	movlt	r4, r3	@ D.37781, tmp143
	str	r4, [r5, #3612]	@ D.37781, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1324:
	mov	r2, r0	@, new_extra_ref
	ldr	r1, .L1326+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #3608]	@ D.37782, extra_ref
	b	.L1319	@
.L1325:
	mov	r2, r4	@, new_extra_disp
	ldr	r1, .L1326+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r4, [r6, #3612]	@ D.37782, extra_disp
	b	.L1320	@
.L1327:
	.align	2
.L1326:
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
	ldr	r3, .L1334	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.37789, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.37789,
	beq	.L1333	@,
	mov	r0, #0	@,
	blx	r3	@ D.37789
.L1330:
	bl	SCDDRV_MaskInt	@
	ldr	r3, .L1334+4	@ tmp114,
	ldr	r0, [r3, #24]	@ D.37788, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r0, #0	@ D.37788,
	beq	.L1331	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r0	@ indirect register sibling call	@ D.37788
.L1331:
	movw	r2, #7013	@,
	ldr	r1, .L1334+8	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1333:
	mov	r0, r3	@, D.37789
	movw	r2, #7005	@,
	ldr	r1, .L1334+12	@,
	bl	dprint_vfmw	@
	b	.L1330	@
.L1335:
	.align	2
.L1334:
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
	ldr	r3, .L1342	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.37794, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.37794,
	beq	.L1341	@,
	mov	r0, #0	@,
	blx	r3	@ D.37794
.L1338:
	bl	SCDDRV_EnableInt	@
	ldr	r3, .L1342+4	@ tmp114,
	ldr	r0, [r3, #28]	@ D.37793, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.37793,
	beq	.L1339	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r0	@ indirect register sibling call	@ D.37793
.L1339:
	movw	r2, #7035	@,
	ldr	r1, .L1342+8	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1341:
	mov	r0, r3	@, D.37794
	movw	r2, #7027	@,
	ldr	r1, .L1342+12	@,
	bl	dprint_vfmw	@
	b	.L1338	@
.L1343:
	.align	2
.L1342:
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
	mov	r3, r2, asl #1	@ D.37832, Width,
	mov	r4, r2	@ Width, Width
	mov	r8, r1	@ ChromOfst, ChromOfst
	str	r2, [sp, #8]	@ Width, %sfp
	mov	r2, #0	@,
	mul	r1, r10, r3	@, Height, D.37832
	ldr	r7, [sp, #56]	@ Stride, Stride
	ldr	r6, [sp, #60]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r5, r0, #0	@ pLuma,
	beq	.L1344	@,
	mul	fp, r10, r4	@ D.37832, Height, Width
	add	r8, r5, r8	@ pChrom, pLuma, ChromOfst
	add	r3, fp, fp, lsr #31	@ tmp153, D.37832, D.37832,
	mov	r3, r3, asr #1	@ D.37832, tmp153,
	str	r3, [sp, #12]	@ D.37832, %sfp
	add	r0, r3, #1024	@, D.37832,
	bl	OSAL_AllocVirMem	@
	subs	r3, r0, #0	@ pUV,
	str	r3, [sp, #4]	@ pUV, %sfp
	beq	.L1346	@,
	cmp	fp, #0	@ D.37832,
	add	r9, fp, #3	@ tmp158, D.37832,
	movge	r9, fp	@ D.37832, D.37832
	cmp	r10, #0	@ Height,
	add	r9, r3, r9, asr #2	@ pV, pUV, D.37832,
	movgt	r4, #0	@ y,
	ble	.L1351	@,
.L1350:
	add	r4, r4, #1	@ y, y,
	mov	r2, r6	@, fp
	mov	r1, fp	@, D.37832
	mov	r0, r5	@, pLuma
	bl	klib_fwrite	@
	cmp	r4, r10	@ y, Height
	bne	.L1350	@,
.L1351:
	add	r10, r10, r10, lsr #31	@ tmp161, Height, Height,
	mov	r10, r10, asr #1	@ D.37832, tmp161,
	cmp	r10, #0	@ D.37832,
	ble	.L1349	@,
	ldr	r3, [sp, #8]	@ Width, %sfp
	mov	r0, #0	@ y,
	ldr	fp, [sp, #4]	@ pUV, %sfp
	add	r4, r3, r3, lsr #31	@ tmp164, Width, Width,
	mov	r2, r4, asr #1	@ D.37832, tmp164,
.L1352:
	cmp	r2, #0	@ D.37832,
	ble	.L1354	@,
	sub	ip, fp, #1	@ ivtmp.692, pUV,
	sub	r1, r9, #1	@ ivtmp.703, pV,
	add	r4, r8, r2	@ D.37838, pChrom, D.37832
	mov	r3, r8	@ ivtmp.689, pChrom
.L1353:
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.37837, MEM[base: _51, offset: 0B]
	strb	lr, [ip, #1]!	@ D.37837, MEM[base: _37, offset: 0B]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2	@ D.37837, MEM[base: _7, offset: 0B]
	cmp	r4, r3	@ D.37838, ivtmp.689
	strb	lr, [r1, #1]!	@ D.37837, MEM[base: _11, offset: 0B]
	bne	.L1353	@,
	add	fp, fp, r2	@ pUV, pUV, D.37832
	add	r9, r9, r2	@ pV, pV, D.37832
.L1354:
	add	r0, r0, #1	@ y, y,
	add	r8, r8, r7	@ pChrom, pChrom, Stride
	cmp	r0, r10	@ y, D.37832
	bne	.L1352	@,
.L1349:
	mov	r2, r6	@, fp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L1346:
	mov	r0, r5	@, pLuma
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@ pUV, %sfp
	cmp	r3, #0	@ pUV,
	beq	.L1344	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_FreeVirMem	@
.L1344:
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
	ldrne	r3, .L1378	@ ivtmp.721,
	bne	.L1370	@,
	b	.L1376	@
.L1371:
	ldr	r2, [r3, #8]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r2, r1	@ MEM[base: _14, offset: 0B], cmd
	beq	.L1377	@,
.L1370:
	ldr	r0, [r3, #12]	@ pTargetHandler, MEM[base: _9, offset: 12B]
	cmp	r0, #0	@ pTargetHandler,
	bne	.L1371	@,
	bx	lr	@
.L1377:
	bx	lr	@
.L1376:
	ldr	r0, .L1378+4	@ pTargetHandler,
	bx	lr	@
.L1379:
	.align	2
.L1378:
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
	beq	.L1387	@,
	mov	r2, r0	@ opt, opt
	cmp	r2, #0	@ opt,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@ p_args, p_args
	ldrne	r3, .L1394	@ ivtmp.729,
	bne	.L1385	@,
	b	.L1393	@
.L1386:
	ldr	lr, [r3, #8]!	@ MEM[base: _5, offset: 0B], MEM[base: _5, offset: 0B]
	cmp	r2, lr	@ opt, MEM[base: _5, offset: 0B]
	beq	.L1383	@,
.L1385:
	ldr	ip, [r3, #12]	@ pCommandHandler, MEM[base: _10, offset: 12B]
	cmp	ip, #0	@ pCommandHandler,
	bne	.L1386	@,
	ldr	r1, .L1394+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.37865,
	ldmfd	sp!, {r4, pc}	@
.L1393:
	ldr	ip, .L1394+8	@ pCommandHandler,
.L1383:
	blx	ip	@ pCommandHandler
	mov	r0, #1	@ D.37865,
	ldmfd	sp!, {r4, pc}	@
.L1387:
	mvn	r0, #1	@ D.37865,
	bx	lr	@
.L1395:
	.align	2
.L1394:
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
	ldr	r5, .L1422	@ tmp180,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, r0, asl #2]	@ D.37872, s_pstVfmwChan
	cmp	r3, #0	@ D.37872,
	beq	.L1418	@,
	ldr	r2, [r1]	@ pOption_13(D)->s32KeepBS, pOption_13(D)->s32KeepBS
	mov	r6, r1	@ pOption, pOption
	cmp	r2, #1	@ pOption_13(D)->s32KeepBS,
	bhi	.L1419	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _11->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ D.37872, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp146, ChanID,
	ldr	r0, .L1422+4	@ tmp142,
	sub	r3, r3, r4, asl #3	@ tmp147, tmp146, ChanID,
	mov	r8, #0	@ tmp139,
	mov	r1, #24	@,
	add	r0, r0, r3	@, tmp142, tmp147
	str	r8, [r2, #680]	@ tmp139, _19->s32CountNoDecparamFlag
	str	r8, [r2, #684]	@ tmp139, _19->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r2, [r6, #4]	@ D.37873, pOption_13(D)->s32KeepSPSPPS
	ldr	r3, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r2, [r3, #1412]	@ D.37873, _25->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ D.37872, s_pstVfmwChan
	add	r1, r3, #210944	@, D.37872,
	ldr	r0, [r3, #880]	@, _29->eVidStd
	add	r1, r1, #896	@,,
	bl	ReleaseCurPic	@
	ldr	r0, [r5, r4, asl #2]	@ tmp157, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp157,
	bl	__memzero	@
	ldr	r3, [r5, r4, asl #2]	@ D.37872, s_pstVfmwChan
	mvn	r0, #0	@ tmp161,
	mvn	r1, #0	@,
	add	r2, r3, #960	@ tmp163, D.37872,
	add	ip, r3, #944	@ tmp160, D.37872,
	strd	r0, [ip]	@ tmp161, _36->stSynExtraData.pts
	strd	r0, [r2, #-8]	@ tmp161, tmp163,
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #880]	@ _36->eVidStd, _36->eVidStd
	str	r8, [r3, #1272]	@ tmp139, _36->stSynExtraData.s32NewPicSegDetector
	cmp	r2, #18	@ _36->eVidStd,
	str	r8, [r3, #1620]	@ tmp139, _36->stSynExtraData.s32firstIdecodedflag
	beq	.L1400	@,
	bl	FSP_ResetInstance	@
.L1401:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r3, [r6]	@ pOption_13(D)->s32KeepBS, pOption_13(D)->s32KeepBS
	cmp	r3, #0	@ pOption_13(D)->s32KeepBS,
	beq	.L1420	@,
.L1402:
	ldr	r3, [r5, #172]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	ldr	r5, .L1422	@ tmp169,
	cmp	r3, #0	@ g_ResetCreateNewSave,
	beq	.L1403	@,
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp171,
	add	r6, sp, #4	@ tmp181,,
	str	r2, [sp, #4]	@ tmp171, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1406	@,
	mov	r0, #512	@,
	mov	r1, r6	@, tmp181
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1406	@,
.L1405:
	ldr	r1, .L1422+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1403:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1421	@,
.L1407:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37871,
.L1398:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1420:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L1402	@
.L1421:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1407	@
.L1400:
	bl	FSP_EmptyInstance	@
	b	.L1401	@
.L1406:
	mov	r1, r6	@, tmp181
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1405	@
.L1419:
	movw	r2, #3757	@,
	ldr	r1, .L1422+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37871,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1418:
	mov	r0, r3	@, D.37872
	movw	r2, #3753	@,
	ldr	r3, .L1422+16	@,
	ldr	r1, .L1422+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37871,
	b	.L1398	@
.L1423:
	.align	2
.L1422:
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
	ldr	r6, .L1450	@ tmp183,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r6, r0, asl #2]	@ D.37884, s_pstVfmwChan
	cmp	r3, #0	@ D.37884,
	beq	.L1446	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _12->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r6, r4, asl #2]	@ D.37884, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp139, ChanID,
	ldr	r0, .L1450+4	@ tmp135,
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
	ldr	r3, [r6, r4, asl #2]	@ D.37884, s_pstVfmwChan
	mvn	r0, #0	@ tmp151,
	mvn	r1, #0	@,
	add	r2, r3, #208896	@ tmp158, D.37884,
	add	lr, r3, #944	@ tmp150, D.37884,
	add	ip, r3, #960	@ tmp153, D.37884,
	strd	r0, [lr]	@ tmp151, _28->stSynExtraData.pts
	strd	r0, [ip, #-8]	@ tmp151, tmp153,
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1272]	@ tmp132, _28->stSynExtraData.s32NewPicSegDetector
	str	r5, [r3, #1620]	@ tmp132, _28->stSynExtraData.s32firstIdecodedflag
	str	r5, [r2, #2896]	@ tmp132, _28->s32FindStartCodeCnt
	str	r5, [r2, #2888]	@ tmp132, _28->s32H264Score
	str	r5, [r2, #2892]	@ tmp132, _28->s32Mpeg2Score
	ldr	r2, [r3, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r5, [r3, #1616]	@ tmp132, _28->stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r3, #880]	@ _28->eVidStd, _28->eVidStd
	cmp	r3, #18	@ _28->eVidStd,
	beq	.L1428	@,
	bl	FSP_ResetInstance	@
.L1429:
	mov	r0, r4	@, ChanID
	ldr	r5, .L1450	@ tmp169,
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r6, #172]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L1447	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1448	@,
.L1434:
	ldr	r3, [r6, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1449	@,
.L1435:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37883,
.L1426:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1447:
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp171,
	add	r8, sp, #4	@ tmp184,,
	str	r2, [sp, #4]	@ tmp171, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1433	@,
	mov	r0, #512	@,
	mov	r1, r8	@, tmp184
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #204]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1433	@,
.L1432:
	ldr	r1, .L1450+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L1434	@,
.L1448:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r3, [r6, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1435	@,
.L1449:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L1435	@
.L1428:
	bl	FSP_EmptyInstance	@
	b	.L1429	@
.L1433:
	mov	r1, r8	@, tmp184
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1432	@
.L1446:
	mov	r0, r3	@, D.37884
	mov	r2, #3856	@,
	ldr	r3, .L1450+12	@,
	ldr	r1, .L1450+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37883,
	b	.L1426	@
.L1451:
	.align	2
.L1450:
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
	add	r5, sp, #92	@ tmp801,,
	mov	r4, r0	@ eCapLevel, eCapLevel
	mov	fp, r1	@ pChanOption, pChanOption
	add	r0, sp, #124	@ tmp815,,
	mov	r1, #64	@,
	mov	r6, r2	@ flag, flag
	mov	r7, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, r5	@, tmp801
	mov	r1, #16	@,
	bl	__memzero	@
	subs	r0, r4, #25	@ tmp401, eCapLevel,
	ldr	r3, .L1618	@ tmp800,
	movne	r0, #1	@ tmp401,
	cmp	r6, #0	@ flag,
	movne	r0, #0	@ tmp401,
	cmp	r0, #0	@ tmp401,
	str	fp, [r3, #-3464]	@ pChanOption, pOption
	bne	.L1592	@,
	ldr	r3, [fp, #4]	@ D.37991, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.37991,
	bhi	.L1593	@,
	beq	.L1594	@,
	cmp	r3, #1	@ D.37991,
	bne	.L1458	@,
	ldr	r3, [fp, #32]	@ pChanOption_14(D)->s32MaxRefFrameNum, pChanOption_14(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxRefFrameNum,
	blt	.L1459	@,
	ldr	r3, [fp, #12]	@ pChanOption_14(D)->s32MaxWidth, pChanOption_14(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxWidth,
	ble	.L1459	@,
	ldr	r3, [fp, #16]	@ pChanOption_14(D)->s32MaxHeight, pChanOption_14(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxHeight,
	ble	.L1459	@,
	ldr	r3, [fp, #56]	@ pChanOption_14(D)->s32SCDBufSize, pChanOption_14(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_14(D)->s32SCDBufSize,
	blt	.L1459	@,
	ldr	r3, [fp, #44]	@ pChanOption_14(D)->s32SupportH264, pChanOption_14(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_14(D)->s32SupportH264,
	beq	.L1595	@,
.L1458:
	ldr	r3, [fp, #136]	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r2, sp, #108	@,,
	mov	r1, fp	@, pChanOption
	mov	r0, r4	@, eCapLevel
	cmp	r3, #1	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r3, #0	@ tmp418,
	strne	r3, [fp, #136]	@ tmp418, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r6	@, flag
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r6, r0, #0	@ D.37978,
	beq	.L1461	@,
	mov	r2, #2400	@,
	ldr	r1, .L1618+4	@,
	mov	r0, #0	@,
	mvn	r8, #0	@ D.37975,
	bl	dprint_vfmw	@
.L1587:
	mov	r0, r8	@, D.37975
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1594:
	ldr	r3, [fp, #64]	@ pChanOption_14(D)->s32SlotWidth, pChanOption_14(D)->s32SlotWidth
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotWidth,
	beq	.L1457	@,
	ldr	r3, [fp, #68]	@ pChanOption_14(D)->s32SlotHeight, pChanOption_14(D)->s32SlotHeight
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotHeight,
	bne	.L1458	@,
.L1457:
	ldr	r1, .L1618+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L1525:
	mvn	r8, #0	@ D.37975,
	mov	r0, r8	@, D.37975
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1595:
	ldr	r3, [fp, #20]	@ pChanOption_14(D)->s32MaxSliceNum, pChanOption_14(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSliceNum,
	ble	.L1459	@,
	ldr	r3, [fp, #24]	@ pChanOption_14(D)->s32MaxSpsNum, pChanOption_14(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSpsNum,
	ble	.L1459	@,
	ldr	r3, [fp, #28]	@ pChanOption_14(D)->s32MaxPpsNum, pChanOption_14(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxPpsNum,
	bgt	.L1458	@,
.L1459:
	ldr	r1, .L1618+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1461:
	ldr	r3, [fp, #8]	@ D.37992, pChanOption_14(D)->MemAllocMode
	ldr	r2, [sp, #120]	@ DetailMemSize$12, MEM[(struct  *)&DetailMemSize + 12B]
	cmp	r3, #1	@ D.37992,
	ldr	r8, [sp, #108]	@ DetailMemSize, MEM[(struct  *)&DetailMemSize]
	ldr	r10, [sp, #112]	@ DetailMemSize$4, MEM[(struct  *)&DetailMemSize + 4B]
	ldr	r9, [sp, #116]	@ DetailMemSize$8, MEM[(struct  *)&DetailMemSize + 8B]
	str	r2, [sp, #68]	@ DetailMemSize$12, %sfp
	beq	.L1596	@,
	cmp	r3, #2	@ D.37992,
	beq	.L1597	@,
	cmp	r3, #3	@ D.37992,
	bne	.L1478	@,
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp826,,
	bl	__memzero	@
	ldr	r3, [fp, #108]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr,
	beq	.L1479	@,
	ldr	r3, [fp, #112]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length,
	bne	.L1480	@,
.L1479:
	mov	r2, r9	@, DetailMemSize$8
	add	r3, sp, #188	@ tmp827,,
	mov	r9, #1	@ tmp498,
	mov	r1, #0	@,
	str	r9, [sp]	@ tmp498,
	ldr	r0, .L1618+16	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1598	@,
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
.L1483:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp836,,
	bl	__memzero	@
	ldr	r3, [fp, #76]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr,
	beq	.L1526	@,
	ldr	r3, [fp, #80]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length,
	bne	.L1485	@,
.L1526:
	mov	r1, #0	@ tmp521,
	mov	r2, r8	@, DetailMemSize
	str	r1, [sp]	@ tmp521,
	add	r3, sp, #188	@ tmp828,,
	ldr	r0, .L1618+20	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1599	@,
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
.L1489:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp837,,
	bl	__memzero	@
	ldr	r3, [fp, #92]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr,
	beq	.L1528	@,
	ldr	r3, [fp, #96]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length,
	bne	.L1492	@,
.L1528:
	ldr	r3, [fp, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1493	@,
	mov	r1, #0	@ tmp550,
	mov	r2, r10	@, DetailMemSize$4
	str	r1, [sp]	@ tmp550,
	add	r3, sp, #188	@ tmp830,,
	ldr	r0, .L1618+24	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1600	@,
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
.L1498:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp838,,
	bl	__memzero	@
	ldr	r3, [fp, #124]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr,
	beq	.L1530	@,
	ldr	r3, [fp, #128]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length,
	bne	.L1504	@,
.L1530:
	ldr	r3, [fp, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1505	@,
	mov	r1, #0	@ tmp580,
	add	r3, sp, #188	@ tmp831,,
	ldr	r2, [sp, #68]	@, %sfp
	str	r1, [sp]	@ tmp580,
	ldr	r0, .L1618+28	@,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37978,
	bne	.L1601	@,
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
.L1567:
	ldr	r10, .L1618	@ tmp609,
	ldr	r9, .L1618+32	@ tmp799,
	sub	r0, r10, #3504	@, tmp609,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r8, [r9]	@ s_pstVfmwChan, s_pstVfmwChan
	adds	r8, r8, #0	@ D.37975, s_pstVfmwChan,
	movne	r8, #1	@ D.37975,
	cmp	r8, #0	@ D.37975,
	bgt	.L1602	@,
	add	r10, r10, r8, lsl #2	@ tmp623, tmp609, D.37975,
	ldr	r2, [sp, #160]	@ D.37980, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	lr, .L1618+36	@ tmp620,
	movw	r1, #23416	@,
	ldr	ip, .L1618+40	@ tmp618,
	movt	r1, 4	@,
	ldr	r3, [r10, #-3532]	@ tmp629, g_ChanTick
	mov	r0, r2	@, D.37980
	str	r2, [r9, r8, asl #2]	@ D.37980, s_pstVfmwChan
	mov	r2, #30	@ tmp619,
	add	r3, r3, #1	@ D.37979, tmp629,
	str	r2, [lr, r8, asl #2]	@ tmp619, g_LastFrameRate
	str	r3, [r10, #-3532]	@ D.37979, g_ChanTick
	str	r2, [ip, r8, asl #2]	@ tmp619, g_FrameRate
	bl	__memzero	@
	ldr	ip, [r9, r8, asl #2]	@ D.37977, s_pstVfmwChan
	mov	r2, #152	@,
	mov	r1, fp	@, pChanOption
	add	r0, ip, #1440	@, D.37977,
	add	r0, r0, #4	@,,
	str	ip, [sp, #68]	@ D.37977, %sfp
	bl	memcpy	@
	ldr	ip, [sp, #68]	@ D.37977, %sfp
	ldr	r1, .L1618+44	@ tmp663,
	movw	r2, #11160	@ tmp665,
	movt	r2, 1	@ tmp665,
	str	r8, [ip]	@ D.37975, _43->s32ChanID
	ldr	r3, [r9, r8, asl #2]	@ D.37977, s_pstVfmwChan
	mla	r2, r2, r8, r1	@ tmp666, tmp665, D.37975, tmp663
	add	r0, r3, #172032	@ tmp643, D.37977,
	movw	r1, #34688	@ tmp639,
	str	r4, [ip, #24]	@ eCapLevel, _43->eChanCapLevel
	str	r4, [ip, #920]	@ eCapLevel, _43->stSynExtraData.eCapLevel
	movt	r1, 7	@ tmp639,
	str	r6, [ip, #1404]	@ D.37978, _43->stSynExtraData.s32MoreGapEnable
	add	r2, r2, #75776	@ tmp667, tmp666,
	str	r1, [ip, #1388]	@ tmp639, _43->stSynExtraData.s32BasicCtxSize
	add	r2, r2, #912	@ tmp667, tmp667,
	strb	r8, [r0, #4048]	@ D.37975, _51->FspInst.s32InstID
	mov	r0, #19	@ tmp645,
	ldr	ip, [fp]	@ D.37983, pChanOption_14(D)->eAdapterType
	add	r1, r3, #208896	@ tmp647, D.37977,
	str	r0, [r3, #880]	@ tmp645, _51->eVidStd
	ldr	lr, [r10, #-3532]	@ tmp662, g_ChanTick
	add	r10, r3, #163840	@ tmp653, D.37977,
	str	ip, [r3, #20]	@ D.37983, _51->eAdapterType
	add	ip, r8, #14	@ tmp650, D.37975,
	ldr	r2, [r2, #4]	@ D.37978, s_DnrChan[_361].s32DnrEnable
	str	r0, [r1, #2936]	@ tmp645, _51->stSynCtx.eVidStd
	add	r0, r3, #175104	@ D.37985, D.37977,
	str	r8, [r10, #3860]	@ D.37975, MEM[(struct SM_INSTANCE_S *)_51 + 1632B].InstID
	add	r0, r0, #976	@ D.37985, D.37985,
	str	lr, [r1, #2932]	@ tmp662, _51->u32ChanTick
	add	lr, r3, #1632	@ D.37984, D.37977,
	str	r2, [r3, #1604]	@ D.37978, _51->stSynExtraData.s32DnrEnable
	ldr	r1, [fp, #140]	@ D.37986, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	r2, .L1618+48	@ tmp654,
	ldr	r10, .L1618+52	@ tmp649,
	cmp	r1, #0	@ D.37986,
	streq	r6, [r3, #1608]	@ D.37978, _51->stSynExtraData.s32DSDThrWidth
	str	r0, [r2, r8, asl #2]	@ D.37985, s_pFspInst
	str	lr, [r10, ip, asl #2]	@ D.37984, s_SmIIS.pSmInstArray
	streq	r6, [r3, #1612]	@ D.37978, _51->stSynExtraData.s32DSDThrHeight
	beq	.L1519	@,
	mov	r0, r1, asl #5	@ tmp674, D.37986,
	ldr	r2, .L1618+56	@ tmp671,
	sub	r1, r0, r1, asl #2	@ tmp675, tmp674, D.37986,
	ldr	r1, [r2, r1]	@ D.37978, CapItem
	str	r1, [r3, #1608]	@ D.37978, _51->stSynExtraData.s32DSDThrWidth
	ldr	r0, [fp, #140]	@ pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	mov	r1, r0, asl #5	@ tmp681, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	sub	r1, r1, r0, asl #2	@ tmp682, tmp681, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r2, r2, r1	@ tmp683, tmp671, tmp682
	ldr	r2, [r2, #4]	@ D.37978, CapItem
	str	r2, [r3, #1612]	@ D.37978, _51->stSynExtraData.s32DSDThrHeight
.L1519:
	ldr	r0, [r9, r8, asl #2]	@ D.37977, s_pstVfmwChan
	mov	r2, #0	@ tmp804,
	mov	lr, #-2147483648	@ tmp805,
	add	r3, r0, #209920	@ ivtmp.746, D.37977,
	add	r0, r0, #210944	@ tmp802, D.37977,
	add	r3, r3, #824	@ ivtmp.746, ivtmp.746,
	add	r1, r0, #824	@ D.37976, tmp802,
.L1520:
	str	r2, [r3, #8]	@ tmp804, MEM[base: _571, offset: 8B]
	str	r2, [r3, #12]	@ tmp804, MEM[base: _571, offset: 12B]
	stmia	r3, {r2, lr}	@ ivtmp.746,,
	add	r3, r3, #16	@ ivtmp.746, ivtmp.746,
	cmp	r3, r1	@ ivtmp.746, D.37976
	bne	.L1520	@,
	add	r0, r0, #824	@, tmp802,
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	lr, [r9, r8, asl #2]	@ D.37977, s_pstVfmwChan
	ldr	r1, .L1618+60	@,
	mov	r0, #31	@,
	ldr	r6, .L1618+32	@ tmp691,
	ldr	r10, [lr, #1588]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum, _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r3, [lr, #1608]	@ _84->stSynExtraData.s32DSDThrWidth, _84->stSynExtraData.s32DSDThrWidth
	ldr	r2, [lr, #1580]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r10, [sp, #4]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum,
	ldr	lr, [lr, #1612]	@ _84->stSynExtraData.s32DSDThrHeight, _84->stSynExtraData.s32DSDThrHeight
	str	lr, [sp]	@ _84->stSynExtraData.s32DSDThrHeight,
	bl	dprint_vfmw	@
	mov	r0, r8	@, D.37975
	bl	VCTRL_ResetChan	@
	ldmia	r5, {r0, r1, r2, r3}	@ tmp801,,,,
	add	lr, sp, #48	@ tmp697,,
	ldr	ip, [sp, #124]	@ MEM[(struct  *)&ChanMemDetail], MEM[(struct  *)&ChanMemDetail]
	ldr	r10, [sp, #180]	@ MEM[(struct  *)&ChanMemDetail + 56B], MEM[(struct  *)&ChanMemDetail + 56B]
	ldr	r5, [sp, #176]	@ MEM[(struct  *)&ChanMemDetail + 52B], MEM[(struct  *)&ChanMemDetail + 52B]
	stmia	lr, {r0, r1, r2, r3}	@ tmp697,,,,
	mov	r2, r7	@, OneChanMemFlag
	mov	r1, r4	@, eCapLevel
	ldr	r7, [sp, #172]	@ MEM[(struct  *)&ChanMemDetail + 48B], MEM[(struct  *)&ChanMemDetail + 48B]
	ldr	r4, [sp, #164]	@ MEM[(struct  *)&ChanMemDetail + 40B], MEM[(struct  *)&ChanMemDetail + 40B]
	mov	r3, fp	@, pChanOption
	str	ip, [sp]	@ MEM[(struct  *)&ChanMemDetail],
	mov	r0, r8	@, D.37975
	ldr	ip, [sp, #156]	@ MEM[(struct  *)&ChanMemDetail + 32B], MEM[(struct  *)&ChanMemDetail + 32B]
	ldr	lr, [sp, #160]	@ MEM[(struct  *)&ChanMemDetail + 36B], MEM[(struct  *)&ChanMemDetail + 36B]
	str	r10, [sp, #44]	@ MEM[(struct  *)&ChanMemDetail + 56B],
	str	r5, [sp, #40]	@ MEM[(struct  *)&ChanMemDetail + 52B],
	ldr	r10, [sp, #144]	@ MEM[(struct  *)&ChanMemDetail + 20B], MEM[(struct  *)&ChanMemDetail + 20B]
	ldr	r5, [sp, #140]	@ MEM[(struct  *)&ChanMemDetail + 16B], MEM[(struct  *)&ChanMemDetail + 16B]
	str	r7, [sp, #36]	@ MEM[(struct  *)&ChanMemDetail + 48B],
	str	r4, [sp, #32]	@ MEM[(struct  *)&ChanMemDetail + 40B],
	ldr	r7, [sp, #132]	@ MEM[(struct  *)&ChanMemDetail + 8B], MEM[(struct  *)&ChanMemDetail + 8B]
	ldr	r4, [sp, #128]	@ MEM[(struct  *)&ChanMemDetail + 4B], MEM[(struct  *)&ChanMemDetail + 4B]
	str	ip, [sp, #24]	@ MEM[(struct  *)&ChanMemDetail + 32B],
	ldr	ip, [sp, #148]	@ tmp833, MEM[(struct  *)&ChanMemDetail + 24B]
	str	lr, [sp, #28]	@ MEM[(struct  *)&ChanMemDetail + 36B],
	str	r10, [sp, #16]	@ MEM[(struct  *)&ChanMemDetail + 20B],
	str	ip, [sp, #20]	@ tmp833,
	str	r5, [sp, #12]	@ MEM[(struct  *)&ChanMemDetail + 16B],
	stmib	sp, {r4, r7}	@,,
	bl	VCTRL_ConfigMemInfo.isra.1	@
	cmp	r0, #0	@,
	bne	.L1521	@,
	ldr	r3, [r6, r8, asl #2]	@ tmp712, s_pstVfmwChan
	mov	r0, r8	@, D.37975
	str	r8, [r3, #140]	@ D.37975, _106->s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1603	@,
	ldr	r3, [r6, r8, asl #2]	@ D.37977, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1523	@,
	ldr	r3, [r3, #236]	@ D.37978, _110->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.37978
	str	r3, [sp, #76]	@ D.37978, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6, r8, asl #2]	@ tmp717, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _117->s32OffLineDNRMemSize, _117->s32OffLineDNRMemSize
	str	r3, [sp, #84]	@ _117->s32OffLineDNRMemSize, DnrMem.Length
	str	r0, [sp, #80]	@, DnrMem.VirAddr
	mov	r0, r8	@, D.37975
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1524	@,
	ldr	r3, [fp, #16]	@, pChanOption_14(D)->s32MaxHeight
	add	r1, sp, #76	@,,
	ldr	r2, [fp, #12]	@, pChanOption_14(D)->s32MaxWidth
	mov	r0, r8	@, D.37975
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1604	@,
.L1524:
	mov	r0, r8	@, D.37975
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1605	@,
.L1523:
	mov	r0, r8	@, D.37975
	bl	SM_ClearInst	@
	ldr	r3, [r9, r8, asl #2]	@ tmp725, s_pstVfmwChan
	mov	r0, r8	@, D.37975
	ldr	r1, [r3, #204]	@ _131->stChanMem_ctx.VirAddr, _131->stChanMem_ctx.VirAddr
	add	r1, r1, #286720	@, _131->stChanMem_ctx.VirAddr,
	add	r1, r1, #888	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r9, r8, asl #2]	@ tmp730, s_pstVfmwChan
	mov	r2, #1	@ tmp731,
	mov	r0, r8	@, D.37975
	str	r2, [r3, #4]	@ tmp731, _135->s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1618+64	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1587	@
.L1480:
	mov	r2, #16	@,
	add	r1, fp, #104	@, pChanOption,
	add	r0, sp, #156	@,,
	bl	memcpy	@
	ldr	r2, [sp, #164]	@ D.37978, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r9, r2	@ DetailMemSize$8, D.37978
	bgt	.L1606	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1483	@
.L1592:
	ldr	r1, .L1618+68	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1593:
	ldr	r1, .L1618+72	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1493:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp563,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #148]	@ tmp563, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r2, [sp, #140]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	b	.L1498	@
.L1485:
	mov	r2, #16	@,
	add	r0, sp, #124	@ tmp829,,
	add	r1, fp, #72	@, pChanOption,
	bl	memcpy	@
	ldr	r2, [sp, #132]	@ D.37975, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r8, r2	@ DetailMemSize, D.37975
	bgt	.L1607	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1489	@
.L1505:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp594,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #180]	@ tmp594, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r2, [sp, #172]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	b	.L1567	@
.L1492:
	mov	r2, #16	@,
	add	r1, fp, #88	@, pChanOption,
	add	r0, sp, #140	@,,
	bl	memcpy	@
	ldr	r3, [fp, #4]	@ D.37991, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.37991,
	beq	.L1498	@,
	ldr	r1, [sp, #144]	@ D.37980, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r1, #0	@ D.37980,
	beq	.L1499	@,
	ldr	r2, [sp, #148]	@ D.37975, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r10, r2	@ DetailMemSize$4, D.37975
	ble	.L1500	@,
.L1499:
	cmp	r3, #1	@ D.37991,
	beq	.L1501	@,
	ldr	r2, [sp, #148]	@ D.37975, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
.L1500:
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1498	@
.L1504:
	mov	r2, #16	@,
	add	r1, fp, #120	@, pChanOption,
	add	r0, sp, #172	@,,
	bl	memcpy	@
	ldr	r3, [fp, #4]	@ D.37991, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.37991,
	beq	.L1567	@,
	ldr	r1, [sp, #176]	@ D.37980, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	cmp	r1, #0	@ D.37980,
	beq	.L1511	@,
	ldr	r2, [sp, #180]	@ D.37978, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	ldr	r0, [sp, #68]	@ DetailMemSize$12, %sfp
	cmp	r2, r0	@ D.37978, DetailMemSize$12
	bge	.L1512	@,
.L1511:
	cmp	r3, #1	@ D.37991,
	beq	.L1513	@,
	ldr	r2, [sp, #180]	@ D.37978, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
.L1512:
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1567	@
.L1596:
	mov	r2, #16	@,
	add	r1, fp, #72	@, pChanOption,
	add	r0, sp, #124	@ tmp817,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, fp, #88	@, pChanOption,
	add	r0, sp, #140	@,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, fp, #104	@, pChanOption,
	add	r0, sp, #156	@,,
	bl	memcpy	@
	ldr	r3, [sp, #160]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr,
	beq	.L1464	@,
	ldr	r3, [sp, #164]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r9, r3	@ DetailMemSize$8, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bgt	.L1464	@,
	ldr	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr,
	beq	.L1467	@,
	ldr	r3, [sp, #148]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r10, r3	@ DetailMemSize$4, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ble	.L1468	@,
.L1467:
	ldr	r0, [fp, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r0, #1	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1608	@,
.L1468:
	ldr	r1, [sp, #128]	@ D.37980, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	cmp	r1, #0	@ D.37980,
	beq	.L1469	@,
	ldr	r2, [sp, #132]	@ D.37978, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r8, r2	@ DetailMemSize, D.37978
	bgt	.L1469	@,
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	ldr	r3, [fp, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1567	@,
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	b	.L1567	@
.L1597:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp818,,
	bl	__memzero	@
	mov	r1, r6	@, D.37978
	mov	r0, #1	@ tmp820,
	mov	r2, r9	@, DetailMemSize$8
	str	r0, [sp]	@ tmp820,
	add	r3, sp, #188	@ tmp819,,
	ldr	r0, .L1618+16	@,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37978,
	bne	.L1609	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r9, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	lr, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r2, r8	@, DetailMemSize
	ldr	r8, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	mov	r1, r6	@, D.37978
	str	r6, [sp]	@ D.37978,
	add	r3, sp, #188	@ tmp821,,
	ldr	r0, .L1618+20	@,
	mov	ip, #1	@ tmp822,
	str	r9, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	ip, [sp, #100]	@ tmp822, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	lr, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r8, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37978,
	bne	.L1610	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [fp, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	ldr	r2, [sp, #196]	@ D.37978, MemRecord.PhyAddr
	mov	r0, #1	@ tmp823,
	ldr	r3, [sp, #192]	@ D.37987, MemRecord.VirAddr
	cmp	r1, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	ldr	r1, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #92]	@ tmp823, MEM[(HI_S32 *)&ChanMemFlag]
	str	r2, [sp, #124]	@ D.37978, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r3, [sp, #128]	@ D.37987, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #132]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	beq	.L1476	@,
	str	r6, [sp]	@ D.37978,
	mov	r1, r6	@, D.37978
	add	r3, sp, #188	@ tmp824,,
	mov	r2, r10	@, DetailMemSize$4
	ldr	r0, .L1618+24	@,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.37978,
	bne	.L1611	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r0, #1	@ tmp825,
	ldr	r3, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #96]	@ tmp825, MEM[(HI_S32 *)&ChanMemFlag + 4B]
	str	r1, [sp, #140]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r2, [sp, #144]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r3, [sp, #148]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1567	@
.L1602:
	mov	r2, #1	@,
	ldr	r1, .L1618+76	@,
	mov	r0, r2	@,
	mvn	r8, #0	@ D.37975,
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	sub	r0, r10, #3504	@, tmp609,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1587	@
.L1478:
	ldr	r1, .L1618+80	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ D.37975,
	b	.L1587	@
.L1603:
	ldr	r1, .L1618+84	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1521:
	mov	r0, r8	@, D.37975
	bl	VCTRL_UnInstallChan	@
	ldr	r4, [r9, r8, asl #2]	@ D.37977, s_pstVfmwChan
	add	r0, sp, #188	@ tmp834,,
	mov	r2, #16	@,
	add	r3, r4, #208896	@ tmp739, D.37977,
	add	r1, r4, #152	@, D.37977,
	ldr	ip, [r4, #224]	@ _143->s32SelfAllocChanMem_ctx, _143->s32SelfAllocChanMem_ctx
	str	ip, [sp, #260]	@ _143->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	ldr	ip, [r4, #216]	@ _143->s32SelfAllocChanMem_vdh, _143->s32SelfAllocChanMem_vdh
	str	ip, [sp, #252]	@ _143->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	ip, [r4, #220]	@ _143->s32SelfAllocChanMem_scd, _143->s32SelfAllocChanMem_scd
	str	ip, [sp, #256]	@ _143->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r3, [r3, #2912]	@ _143->s32SelfAllocChanMem_pmv, _143->s32SelfAllocChanMem_pmv
	str	r3, [sp, #264]	@ _143->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r4, #200	@, D.37977,
	mov	r2, #16	@,
	add	r0, sp, #236	@,,
	bl	memcpy	@
	add	r1, r4, #168	@, D.37977,
	mov	r2, #16	@,
	add	r0, sp, #204	@,,
	bl	memcpy	@
	add	r1, r4, #184	@, D.37977,
	mov	r2, #16	@,
	add	r0, sp, #220	@,,
	bl	memcpy	@
	add	r1, r4, #104	@, D.37977,
	mov	r2, #12	@,
	add	r0, sp, #268	@,,
	bl	memcpy	@
	add	r1, r4, #210944	@, D.37977,
	add	r1, r1, #868	@,,
	mov	r2, #16	@,
	add	r0, sp, #280	@,,
	bl	memcpy	@
	mov	r0, r8	@, D.37975
	mov	r3, #0	@ tmp784,
	str	r3, [r9, r8, asl #2]	@ tmp784, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1618+64	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #188	@ tmp835,,
	mov	r0, r8	@, D.37975
	mvn	r8, #0	@ D.37975,
	bl	VCTRL_FreeChanResource	@
	b	.L1587	@
.L1476:
	str	r2, [sp, #140]	@ D.37978, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ D.37987, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r6, [sp, #148]	@ D.37978, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1567	@
.L1599:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1612	@,
.L1487:
	movw	r2, #1979	@,
	ldr	r1, .L1618+88	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1600:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1613	@,
.L1495:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1614	@,
.L1496:
	movw	r2, #2045	@,
	ldr	r1, .L1618+92	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1601:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1615	@,
.L1507:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1616	@,
.L1508:
	ldr	r3, [sp, #96]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	beq	.L1617	@,
.L1509:
	movw	r2, #2136	@,
	ldr	r1, .L1618+96	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1598:
	mov	r0, r9	@, tmp498
	movw	r2, #1930	@,
	ldr	r1, .L1618+100	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1607:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1491	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	ldr	r2, [sp, #132]	@ D.37975, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
.L1491:
	mov	r3, r2	@, D.37975
	str	r8, [sp]	@ DetailMemSize,
	movw	r2, #2002	@,
	ldr	r1, .L1618+104	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1612:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1487	@
.L1469:
	movw	r2, #1827	@,
	ldr	r1, .L1618+108	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1605:
	ldr	r1, .L1618+112	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1521	@
.L1606:
	movw	r2, #1946	@,
	ldr	r1, .L1618+116	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1617:
	ldr	r1, [sp, #144]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1509	@
.L1616:
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1508	@
.L1615:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1507	@
.L1464:
	movw	r2, #1812	@,
	ldr	r1, .L1618+120	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1604:
	ldr	r1, .L1618+124	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1521	@
.L1614:
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1496	@
.L1613:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1495	@
.L1610:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	movw	r2, #1876	@,
	ldr	r1, .L1618+88	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1609:
	movw	r2, #1860	@,
	ldr	r1, .L1618+128	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1608:
	movw	r2, #1819	@,
	ldr	r1, .L1618+132	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1513:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1514	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1514:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1515	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1515:
	ldr	r3, [sp, #96]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	bne	.L1516	@,
	ldr	r1, [sp, #144]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1516:
	movw	r2, #2181	@,
	ldr	r1, .L1618+136	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1611:
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
	movw	r2, #1896	@,
	ldr	r1, .L1618+92	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1501:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1502	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1502:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1503	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1503:
	movw	r2, #2084	@,
	ldr	r1, .L1618+132	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1525	@
.L1619:
	.align	2
.L1618:
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
	.word	s_pFspInst
	.word	s_SmIIS
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
	bhi	.L1643	@,
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
	ldr	r2, .L1645	@ tmp218,
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
	b	.L1623	@
.L1625:
	.word	.L1633
	.word	.L1633
	.word	.L1633
	.word	.L1633
	.word	.L1633
	.word	.L1626
	.word	.L1626
	.word	.L1626
.L1633:
	mov	r0, #3	@ MinDispFspNum,
.L1624:
	rsb	r3, r1, ip	@ tmp169, tmp215, tmp216
	rsb	ip, r1, ip	@ tmp181, tmp215, tmp216
	add	r3, r2, r3	@ tmp170, tmp218, tmp169
	add	r2, r2, ip	@ tmp182, tmp218, tmp181
	mov	r1, #0	@ tmp185,
	str	r0, [sp, #124]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	ldr	r3, [r3, #12]	@ D.38066, CapItem
	ldr	r2, [r2, #24]	@ tmp184, CapItem
	cmp	r0, r3	@ MinDispFspNum, D.38066
	str	r1, [sp, #128]	@ tmp185, stChanOption.s32SlotWidth
	rsblt	r3, r0, r3	@ D.38066, MinDispFspNum, D.38066
	str	r1, [sp, #132]	@ tmp185, stChanOption.s32SlotHeight
	movge	r3, #1	@ tmp172,
	str	r2, [sp, #120]	@ tmp184, stChanOption.s32SCDBufSize
	cmp	r4, #24	@ eCapLevel,
	str	r3, [sp, #96]	@ D.38066, stChanOption.s32MaxRefFrameNum
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
	bne	.L1644	@,
	cmp	r5, #0	@ pChanMem,
	beq	.L1634	@,
	ldr	ip, [r5, #8]	@ D.38066, pChanMem_40(D)->Length
	cmp	ip, #0	@ D.38066,
	beq	.L1631	@,
	ldr	r2, [r5]	@ D.38066, pChanMem_40(D)->PhyAddr
	cmp	r2, #0	@ D.38066,
	beq	.L1632	@,
	ldr	r1, [r5, #4]	@ D.38067, pChanMem_40(D)->VirAddr
	cmp	r1, #0	@ D.38067,
	beq	.L1632	@,
	ldr	r3, [sp, #8]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r0, [sp, #20]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r3, r0	@ D.38066, VdmChanMemSize, ScdChanMemSize
	cmp	ip, r3	@ D.38066, D.38066
	blt	.L1632	@,
	ldr	r5, [sp, #24]	@ D.38066, ScdChanMemSize
	add	r8, sp, #152	@ tmp199,,
	str	r2, [sp, #48]	@ D.38066, scd_MemRecord.PhyAddr
	add	lr, sp, #136	@ tmp201,,
	add	r9, r2, r5	@ D.38066, D.38066, D.38066
	add	r10, r1, r5	@ D.38067, D.38067, D.38066
	str	r5, [sp, #56]	@ D.38066, scd_MemRecord.Length
	rsb	r5, r5, ip	@ D.38066, D.38066, D.38066
	str	r1, [sp, #52]	@ D.38067, scd_MemRecord.VirAddr
	mov	ip, #1	@ OneChanMemFlag,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp219,,,,
	mov	r7, #3	@ tmp195,
	str	r9, [sp, #32]	@ D.38066, vdh_MemRecord.PhyAddr
	str	r10, [sp, #36]	@ D.38067, vdh_MemRecord.VirAddr
	str	r5, [sp, #40]	@ D.38066, vdh_MemRecord.Length
	stmia	r8, {r0, r1, r2, r3}	@ tmp199,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp217,,,,
	str	r7, [sp, #72]	@ tmp195, stChanOption.MemAllocMode
	stmia	lr, {r0, r1, r2, r3}	@ tmp201,,,,
.L1631:
	mov	r3, ip	@, OneChanMemFlag
	add	r1, sp, #64	@ tmp229,,
	mov	r0, r4	@, eCapLevel
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.38065,
.L1622:
	add	sp, sp, #216	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1626:
	mov	r0, #1	@ MinDispFspNum,
	b	.L1624	@
.L1623:
	mov	r0, #6	@ MinDispFspNum,
	b	.L1624	@
.L1634:
	mov	ip, r5	@ OneChanMemFlag, pChanMem
	b	.L1631	@
.L1643:
	mov	r2, r0	@, eCapLevel
	ldr	r1, .L1645+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38065,
	b	.L1622	@
.L1632:
	ldr	r1, .L1645+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #8]	@ pChanMem_40(D)->Length, pChanMem_40(D)->Length
	ldmia	r5, {r2, r3}	@ pChanMem,,
	mov	r0, #1	@,
	ldr	r1, .L1645+12	@,
	str	ip, [sp]	@ pChanMem_40(D)->Length,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #8]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r3, [sp, #20]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	ldr	r1, .L1645+16	@,
	add	r2, r2, r3	@, VdmChanMemSize, ScdChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38065,
	b	.L1622	@
.L1644:
	ldr	r1, .L1645+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38065,
	b	.L1622	@
.L1646:
	.align	2
.L1645:
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r5, r0	@ ChanID, ChanID
	ldr	r7, .L1672	@ tmp135,
	.pad #116
	sub	sp, sp, #116	@,,
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinLockIRQ	@
	cmp	r5, #0	@ ChanID,
	bne	.L1668	@,
	ldr	r6, .L1672+4	@ tmp233,
	ldr	r4, [r6]	@ D.38077, s_pstVfmwChan
	cmp	r4, #0	@ D.38077,
	beq	.L1669	@,
	ldr	r3, [r4, #4]	@ _10->s32IsOpen, _10->s32IsOpen
	cmp	r3, #1	@ _10->s32IsOpen,
	movne	r0, r5	@, ChanID
	ldrne	r3, .L1672+8	@,
	movwne	r2, #2619	@,
	bne	.L1667	@,
	ldr	r1, .L1672+12	@ tmp151,
	mov	r3, #30	@ tmp152,
	ldr	r2, .L1672+16	@ tmp153,
	ldr	r0, .L1672+20	@,
	str	r3, [r1]	@ tmp152, g_FrameRate
	str	r3, [r2]	@ tmp152, g_LastFrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r5, r0, #0	@ ret,
	ldr	r0, .L1672+20	@,
	bne	.L1670	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ret
	bl	VCTRL_ResetChan	@
	ldr	r0, .L1672+20	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, .L1672+24	@ tmp165,
	ldr	r2, [r2, #1604]	@ D.38078, _28->stSynExtraData.s32DnrEnable
	str	r2, [r3, #2964]	@ D.38078, s_DnrChan[0].s32DnrEnable
	ldr	r3, [r4, #880]	@ D.38079, _10->eVidStd
	cmp	r3, #4	@ D.38079,
	beq	.L1653	@,
	sub	r2, r3, #10	@ D.38080, D.38079,
	cmp	r2, #2	@ D.38080,
	bhi	.L1654	@,
	ldr	r2, [r7, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1654	@,
.L1653:
	ldr	r3, [r6, #220]	@ D.38081, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.38081,
	beq	.L1655	@,
.L1671:
	add	r0, r4, #210944	@, D.38077,
	add	r0, r0, #896	@,,
	blx	r3	@ D.38081
.L1655:
	mov	r0, #0	@,
	mov	r4, #0	@ tmp223,
	bl	VCTRL_UnInstallChan	@
	ldr	r5, [r6]	@ D.38077, s_pstVfmwChan
	mov	r2, #16	@,
	add	r0, sp, #4	@ tmp234,,
	add	r3, r5, #208896	@ tmp178, D.38077,
	add	r1, r5, #152	@, D.38077,
	ldr	lr, [r5, #224]	@ _39->s32SelfAllocChanMem_ctx, _39->s32SelfAllocChanMem_ctx
	ldr	ip, [r5, #216]	@ _39->s32SelfAllocChanMem_vdh, _39->s32SelfAllocChanMem_vdh
	ldr	r7, [r3, #2912]	@ _39->s32SelfAllocChanMem_pmv, _39->s32SelfAllocChanMem_pmv
	ldr	r3, [r5, #220]	@ _39->s32SelfAllocChanMem_scd, _39->s32SelfAllocChanMem_scd
	str	lr, [sp, #76]	@ _39->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	str	ip, [sp, #68]	@ _39->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	str	r3, [sp, #72]	@ _39->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	str	r7, [sp, #80]	@ _39->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r5, #200	@, D.38077,
	mov	r2, #16	@,
	add	r0, sp, #52	@,,
	bl	memcpy	@
	add	r1, r5, #168	@, D.38077,
	mov	r2, #16	@,
	add	r0, sp, #20	@,,
	bl	memcpy	@
	add	r1, r5, #184	@, D.38077,
	mov	r2, #16	@,
	add	r0, sp, #36	@,,
	bl	memcpy	@
	add	r1, r5, #104	@, D.38077,
	mov	r2, #12	@,
	add	r0, sp, #84	@,,
	bl	memcpy	@
	add	r1, r5, #210944	@, D.38077,
	add	r1, r1, #868	@,,
	mov	r2, #16	@,
	add	r0, sp, #96	@,,
	bl	memcpy	@
	ldr	r2, .L1672+28	@ tmp222,
	ldr	r3, .L1672+32	@ tmp224,
	mov	r0, r4	@, tmp223
	str	r4, [r6]	@ tmp223, s_pstVfmwChan
	str	r4, [r2, #56]	@ tmp223, s_SmIIS.pSmInstArray
	str	r4, [r3]	@ tmp223, s_pFspInst
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, tmp223
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, tmp223
	bl	DNR_CloseChan	@
	ldr	r0, .L1672+20	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1672+36	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #4	@ tmp235,,
	mov	r0, r4	@, tmp223
	bl	VCTRL_FreeChanResource	@
	mov	r0, r4	@ D.38076, tmp223
.L1649:
	add	sp, sp, #116	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1654:
	cmp	r3, #14	@ D.38079,
	bne	.L1655	@,
	ldr	r3, [r6, #220]	@ D.38081, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.38081,
	bne	.L1671	@,
	b	.L1655	@
.L1669:
	ldr	r3, .L1672+40	@,
	mov	r0, r4	@, D.38077
	movw	r2, #2607	@,
.L1667:
	ldr	r1, .L1672+44	@,
.L1666:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.38076,
	add	sp, sp, #116	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1670:
	bl	OSAL_SpinUnLockIRQ	@
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.38076,
	b	.L1649	@
.L1668:
	ldr	r3, .L1672+48	@,
	movw	r2, #2599	@,
	ldr	r1, .L1672+44	@,
	mov	r0, #0	@,
	b	.L1666	@
.L1673:
	.align	2
.L1672:
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
	ldr	r3, .L1676	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r3, r3, r4, lsl #2	@ tmp114, tmp113, ChanID,
	str	r2, [r3, #3604]	@ tmp116, g_DSPState
	ldmfd	sp!, {r4, pc}	@
.L1677:
	.align	2
.L1676:
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
	ldr	r5, .L1695	@ tmp140,
	ldr	r3, [r5, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L1684	@,
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1680	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChanWithOption	@
	mov	r3, #0	@ tmp122,
	str	r3, [r5, #3604]	@ tmp122, g_DSPState
.L1680:
	bl	FSP_Exit	@
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r2, #3	@ tmp124,
	str	r2, [r5, #36]	@ tmp124, s_VfmwCTrl.eTaskCommand
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1682	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.38113,
	bl	msleep	@
	b	.L1683	@
.L1694:
	bl	msleep	@
	subs	r4, r4, #1	@ D.38113, D.38113,
	beq	.L1682	@,
.L1683:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1694	@,
.L1682:
	mov	r1, #4	@,
	ldr	r0, .L1695+4	@,
	mov	r4, #0	@ tmp128,
	str	r4, [r5, #36]	@ tmp128, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1695+8	@,
	bl	CloseDrivers	@
	str	r4, [r5, #4]	@ tmp128, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r0, r4	@ D.38114, tmp128
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1684:
	mvn	r0, #0	@ D.38114,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1696:
	.align	2
.L1695:
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
	bne	.L1711	@,
	ldr	r4, .L1714	@ tmp172,
	ldr	r3, [r4]	@ D.38121, s_pstVfmwChan
	cmp	r3, #0	@ D.38121,
	beq	.L1712	@,
	ldr	r5, [r3, #4]	@ _11->s32IsOpen, _11->s32IsOpen
	cmp	r5, #1	@ _11->s32IsOpen,
	bne	.L1713	@,
	ldr	r3, [r3, #880]	@ _11->eVidStd, _11->eVidStd
	cmp	r3, #19	@ _11->eVidStd,
	bne	.L1702	@,
	ldr	r3, .L1714+4	@,
	movw	r2, #2760	@,
	ldr	r1, .L1714+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38120,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1702:
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4]	@ D.38121, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _18->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _18->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _18->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r8, [r4]	@ D.38121, s_pstVfmwChan
	mov	r1, r7	@, pChanMemVdh
	mov	r2, #16	@,
	add	r0, r8, #168	@, D.38121,
	bl	memcpy	@
	ldr	r2, [r8, #180]	@, _23->stChanMem_vdh.Length
	ldr	r1, [r8, #172]	@, _23->stChanMem_vdh.VirAddr
	ldr	r0, [r8, #176]	@, _23->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r6	@, ChanID
	bl	SM_Start	@
	ldr	r3, [r4]	@ D.38121, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _32->s32Priority, _32->s32Priority
	str	r5, [r3, #8]	@ _11->s32IsOpen, _32->s32IsRun
	cmp	r2, #0	@ _32->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _32->s32StopSyntax
	bne	.L1703	@,
	cmp	r3, #0	@ D.38121,
	str	r5, [r3, #12]	@ _11->s32IsOpen, _32->s32Priority
	ldr	r0, .L1714+12	@,
	ldrne	r3, .L1714+16	@ tmp164,
	ldreq	r1, .L1714+20	@ tmp158,
	ldreq	r2, .L1714+16	@ tmp160,
	ldrne	r2, .L1714+20	@ tmp162,
	streq	r3, [r1, #-3460]	@ D.38121, PrioArray
	streq	r3, [r2]	@ D.38121, g_ChanCtx.PriorByChanId
	strne	r5, [r3]	@ _11->s32IsOpen, g_ChanCtx.PriorByChanId
	strne	r5, [r2, #-3460]	@ _11->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4]	@ D.38121, s_pstVfmwChan
.L1703:
	ldr	r3, [r3, #1580]	@ _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1706	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L1706:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.38120,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1713:
	ldr	r3, .L1714+24	@,
	movw	r2, #2759	@,
	ldr	r1, .L1714+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38120,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1711:
	ldr	r3, .L1714+28	@,
	movw	r2, #2757	@,
	ldr	r1, .L1714+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38120,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1712:
	ldr	r3, .L1714+32	@,
	movw	r2, #2758	@,
	ldr	r1, .L1714+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38120,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1715:
	.align	2
.L1714:
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
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	mov	r3, #0	@ tmp194,
	.pad #92
	sub	sp, sp, #92	@,,
	mov	r5, r1	@ pstCfg, pstCfg
	str	r3, [r1, #44]	@ tmp194, pstCfg_11(D)->s32VcmpEn
	bne	.L1751	@,
	ldr	r6, .L1758	@ tmp328,
	ldr	r3, [r6]	@ D.38138, s_pstVfmwChan
	cmp	r3, #0	@ D.38138,
	beq	.L1752	@,
	ldr	r7, [r3, #4]	@ _15->s32IsOpen, _15->s32IsOpen
	cmp	r7, #1	@ _15->s32IsOpen,
	bne	.L1753	@,
	bl	VCTRL_CheckChanWH	@
	subs	r8, r0, #0	@ D.38139,
	bne	.L1754	@,
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	bgt	.L1750	@,
	mov	r1, r5	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r4, r0, #0	@ D.38135,
	beq	.L1755	@,
	ldr	r4, [r6]	@ D.38138, s_pstVfmwChan
	mov	r2, #72	@,
	mov	r1, r5	@, pstCfg
	add	r9, r5, #4	@ D.38145, pstCfg,
	add	r0, r4, #32	@, D.38138,
	bl	memcpy	@
	ldr	r3, [r5, #12]	@ D.38139, pstCfg_11(D)->s32ChanPriority
	mov	r1, #40	@,
	add	r0, sp, #48	@ tmp332,,
	str	r3, [r4, #12]	@ D.38139, _25->s32Priority
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	str	r3, [r4, #880]	@ pstCfg_11(D)->eVidStd, _25->eVidStd
	bl	__memzero	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #244]	@ D.38139, _34->s32ScdChanMemAddr
	mov	r0, r3	@, D.38139
	str	r3, [sp, #60]	@ D.38139, ScdInstCfg.BufPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	mov	r1, r9	@, D.38145
	ldr	ip, [r5, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	mov	r3, #49152	@ tmp222,
	ldr	r10, [r2, #256]	@ _41->s32ScdChanMemSize, _41->s32ScdChanMemSize
	mov	r2, #8	@,
	ldr	r4, [r5, #12]	@ pstCfg_11(D)->s32ChanPriority, pstCfg_11(D)->s32ChanPriority
	movt	r3, 4115	@ tmp222,
	str	lr, [sp, #56]	@ pstCfg_11(D)->eVidStd, ScdInstCfg.VidStd
	str	r3, [sp, #68]	@ tmp222, ScdInstCfg.RegPhyBaseAddr
	str	ip, [sp, #84]	@ pstCfg_11(D)->s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	str	r8, [sp, #80]	@ D.38139, ScdInstCfg.ScdLowdlyEnable
	str	r10, [sp, #64]	@ _41->s32ScdChanMemSize, ScdInstCfg.BufSize
	strb	r4, [sp, #52]	@ pstCfg_11(D)->s32ChanPriority, ScdInstCfg.Priority
	str	r0, [sp, #48]	@, ScdInstCfg.pBufVirAddr
	add	r0, sp, #72	@,,
	bl	memcpy	@
	add	r1, sp, #48	@ tmp333,,
	mov	r0, r8	@, D.38139
	bl	SM_Config	@
	add	r0, sp, #15	@ tmp334,,
	mov	r1, r7	@, _15->s32IsOpen
	bl	__memzero	@
	ldr	r3, [r5, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	cmp	r3, #0	@ pstCfg_11(D)->s32LowdBufEnable,
	bne	.L1756	@,
.L1724:
	ldr	r4, [r6]	@ D.38138, s_pstVfmwChan
	mov	r1, r9	@, D.38145
	mov	r7, #0	@ tmp247,
	mov	r2, #8	@,
	add	r0, r4, #1264	@, D.38138,
	ldr	r8, .L1758	@ tmp237,
	ldr	fp, [r4, #208]	@ _62->stChanMem_ctx.PhyAddr, _62->stChanMem_ctx.PhyAddr
	add	r0, r0, #12	@,,
	ldr	r3, [r4, #264]	@ _62->s32BpdChanMemSize, _62->s32BpdChanMemSize
	ldr	lr, [r4, #232]	@ _62->s32VdmChanMemSize, _62->s32VdmChanMemSize
	str	fp, [r4, #1392]	@ _62->stChanMem_ctx.PhyAddr, _62->stSynExtraData.s32ContextMemAddr
	str	r3, [r4, #928]	@ _62->s32BpdChanMemSize, _62->stSynExtraData.s32BpdMemSize
	ldr	ip, [r4, #260]	@ _62->s32BpdChanMemAddr, _62->s32BpdChanMemAddr
	ldr	r3, [r4, #268]	@ tmp336, _62->s32Vp8SegIdChanMemAddr
	ldr	r10, [r4, #212]	@ _62->stChanMem_ctx.Length, _62->stChanMem_ctx.Length
	ldr	r9, [r4, #228]	@ _62->s32VdmChanMemAddr, _62->s32VdmChanMemAddr
	ldr	fp, [r4, #272]	@ _62->s32Vp8SegIdChanMemSize, _62->s32Vp8SegIdChanMemSize
	str	lr, [r4, #916]	@ _62->s32VdmChanMemSize, _62->stSynExtraData.s32SyntaxMemSize
	str	ip, [r4, #924]	@ _62->s32BpdChanMemAddr, _62->stSynExtraData.s32BpdMemAddr
	str	r10, [r4, #1396]	@ _62->stChanMem_ctx.Length, _62->stSynExtraData.s32ContextMemSize
	str	r9, [r4, #912]	@ _62->s32VdmChanMemAddr, _62->stSynExtraData.s32SyntaxMemAddr
	str	r3, [r4, #932]	@ tmp336, _62->stSynExtraData.s32Vp8SegIdMemAddr
	str	fp, [r4, #936]	@ _62->s32Vp8SegIdChanMemSize, _62->stSynExtraData.s32Vp8SegIdMemSize
	ldr	r3, [r5, #16]	@ D.38139, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r4, #892]	@ D.38139, _62->stSynExtraData.s32OutErrThr
	ldr	r3, [r5, #16]	@ D.38139, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r4, #888]	@ D.38139, _62->stSynExtraData.s32RefErrThr
	ldr	r3, [r5, #24]	@ pstCfg_11(D)->s32DecMode, pstCfg_11(D)->s32DecMode
	str	r3, [r4, #896]	@ pstCfg_11(D)->s32DecMode, _62->stSynExtraData.s32DecMode
	ldr	r3, [r5, #28]	@ D.38139, pstCfg_11(D)->s32DecOrderOutput
	str	r3, [r4, #900]	@ D.38139, _62->stSynExtraData.s32DecOrderOutput
	ldr	r3, [r5, #32]	@ D.38139, pstCfg_11(D)->s32DnrTfEnable
	str	r3, [r4, #904]	@ D.38139, _62->stSynExtraData.s32DnrTfEnable
	ldr	r3, [r5, #44]	@ D.38139, pstCfg_11(D)->s32VcmpEn
	str	r7, [r4, #1616]	@ tmp247, _62->stSynExtraData.s32DSDWaitFlag
	str	r3, [r4, #1400]	@ D.38139, _62->stSynExtraData.s32Compress_en
	ldr	r3, [r5, #60]	@ pstCfg_11(D)->s32SupportAllP, pstCfg_11(D)->s32SupportAllP
	sub	r3, r3, #1	@ D.38147, pstCfg_11(D)->s32SupportAllP,
	clz	r3, r3	@ D.38147, D.38147
	mov	r3, r3, lsr #5	@ D.38147, D.38147,
	str	r3, [r4, #1416]	@ D.38147, _62->stSynExtraData.s32SupportAllP
	ldr	r3, [r5, #64]	@ D.38139, pstCfg_11(D)->s32ModuleLowlyEnable
	str	r3, [r4, #1420]	@ D.38139, _62->stSynExtraData.s32ModuleLowlyEnable
	bl	memcpy	@
	add	r3, r4, #208896	@ tmp330, D.38138,
	str	r7, [r4, #908]	@ tmp247, _62->stSynExtraData.s32DnrDispOutEnable
	ldr	r2, [r4, #880]	@ D.38137, _62->eVidStd
	ldr	r1, [r3, #2936]	@ _62->stSynCtx.eVidStd, _62->stSynCtx.eVidStd
	cmp	r1, r2	@ _62->stSynCtx.eVidStd, D.38137
	beq	.L1725	@,
	mov	r0, r7	@, tmp247
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	ldr	r4, [r8]	@ D.38138, s_pstVfmwChan
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	beq	.L1726	@,
	ldr	r2, [r4, #880]	@ D.38137, _105->eVidStd
	add	r3, r4, #208896	@ tmp330, D.38138,
.L1725:
	str	r2, [r3, #2936]	@ D.38137, _181->stSynCtx.eVidStd
	ldr	r3, [r4, #248]	@ D.38139, _181->s32SdecMemAddr
	mov	r0, r3	@, D.38139
	str	r3, [sp, #16]	@ D.38139, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, sp, #16	@,,
	ldr	r3, [r3, #252]	@ _125->s32SdecMemSize, _125->s32SdecMemSize
	str	r3, [sp, #24]	@ _125->s32SdecMemSize, stMem.Length
	str	r0, [sp, #20]	@, stMem.VirAddr
	mov	r0, #0	@,
	bl	RefreshDecCore	@
	subs	r4, r0, #0	@ D.38135,
	beq	.L1757	@,
.L1750:
	mvn	r4, #0	@ D.38135,
.L1718:
	mov	r0, r4	@, D.38135
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1755:
	ldr	r1, .L1758+4	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.38135
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1756:
	add	r1, sp, #15	@ tmp335,,
	mov	r0, r8	@, D.38139
	strb	r7, [sp, #15]	@ _15->s32IsOpen, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1724	@
.L1726:
	ldr	r3, [r4, #1448]	@ MEM[(struct VDEC_CHAN_OPTION_S *)_105 + 1444B].Purpose, MEM[(struct VDEC_CHAN_OPTION_S *)_105 + 1444B].Purpose
	mov	r0, #0	@,
	ldr	ip, [r4, #252]	@ _105->s32SdecMemSize, _105->s32SdecMemSize
	cmp	r3, #2	@ MEM[(struct VDEC_CHAN_OPTION_S *)_105 + 1444B].Purpose,
	ldr	r3, [r4, #248]	@ _105->s32SdecMemAddr, _105->s32SdecMemAddr
	ldrne	r1, [r4, #1456]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_105 + 1444B].s32MaxWidth
	ldrne	r2, [r4, #1460]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_105 + 1444B].s32MaxHeight
	ldreq	r1, [r4, #1508]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_105 + 1444B].s32SlotWidth
	ldreq	r2, [r4, #1512]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_105 + 1444B].s32SlotHeight
	str	ip, [sp]	@ _105->s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1729	@,
	ldr	r4, [r6]	@ D.38138, s_pstVfmwChan
	add	r3, r4, #208896	@ tmp330, D.38138,
	ldr	r2, [r4, #880]	@ D.38137, _134->eVidStd
	b	.L1725	@
.L1753:
	ldr	r3, .L1758+8	@,
	movw	r2, #3475	@,
	ldr	r1, .L1758+12	@,
	mvn	r4, #0	@ D.38135,
	bl	dprint_vfmw	@
	b	.L1718	@
.L1757:
	mov	r1, #16	@,
	add	r0, sp, #32	@ tmp337,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.38139, pstCfg_11(D)->eVidStd
	sub	r2, r3, #10	@ D.38150, D.38139,
	cmp	r2, #2	@ D.38150,
	bhi	.L1731	@,
	ldr	r2, .L1758+16	@ tmp276,
	ldr	r2, [r2, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L1734	@,
	cmp	r3, #12	@ D.38139,
	beq	.L1734	@,
	ldr	r3, [r5, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	eor	r3, r3, #1	@ tmp283, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	and	r3, r3, #1	@ D.38136, tmp283,
	strb	r3, [sp, #32]	@ D.38136, DnrChanCfgArgs.s32MirrorEn
.L1733:
	cmp	r3, #0	@ D.38136,
	ldr	r3, [r5, #44]	@ D.38139, pstCfg_11(D)->s32VcmpEn
	movne	r3, #0	@ tmp292,
.L1749:
	ldr	r6, [r6]	@ D.38138, s_pstVfmwChan
	ldr	r0, [r5, #48]	@ pstCfg_11(D)->s32WmEn, pstCfg_11(D)->s32WmEn
	ldr	r1, [r5, #52]	@ pstCfg_11(D)->s32VcmpWmStartLine, pstCfg_11(D)->s32VcmpWmStartLine
	ldr	ip, [r6, #1580]	@ _175->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _175->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r2, [r5, #56]	@ pstCfg_11(D)->s32VcmpWmEndLine, pstCfg_11(D)->s32VcmpWmEndLine
	strb	r3, [sp, #33]	@ tmp292, DnrChanCfgArgs.s32VcmpEn
	mov	r3, #1	@ tmp298,
	cmp	ip, r3	@ _175->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	strb	r0, [sp, #34]	@ pstCfg_11(D)->s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r1, [sp, #36]	@ pstCfg_11(D)->s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #40]	@ pstCfg_11(D)->s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	str	r3, [sp, #44]	@ tmp298, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	r5, .L1758	@ tmp299,
	beq	.L1738	@,
	add	r1, sp, #32	@ tmp338,,
	mov	r0, #0	@,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1750	@,
	ldr	r6, [r5]	@ D.38138, s_pstVfmwChan
.L1739:
	ldr	r3, .L1758+20	@ tmp314,
	cmp	r6, #0	@ D.38138,
	add	r2, r6, #172032	@ tmp311, D.38138,
	mov	r1, #0	@ tmp312,
	ldr	r0, .L1758+24	@,
	ldr	r3, [r3, #56]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	strb	r1, [r2, #4048]	@ tmp312, _144->FspInst.s32InstID
	add	r3, r3, #163840	@ tmp317, s_SmIIS.pSmInstArray,
	ldreq	r2, .L1758+16	@ tmp319,
	ldrne	r2, .L1758+28	@ tmp324,
	str	r1, [r3, #2228]	@ tmp312, _136->InstID
	ldreq	r3, .L1758+28	@ tmp321,
	ldrne	r3, [r6, #12]	@ D.38139, _144->s32Priority
	ldrne	r1, .L1758+16	@ tmp323,
	streq	r6, [r2, #-3456]	@ D.38138, PrioArray
	streq	r6, [r3]	@ D.38138, g_ChanCtx.PriorByChanId
	strne	r3, [r1, #-3456]	@ D.38139, PrioArray
	strne	r3, [r2]	@ D.38139, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	b	.L1718	@
.L1731:
	strb	r4, [sp, #32]	@ D.38135, DnrChanCfgArgs.s32MirrorEn
	ldr	r3, [r5, #44]	@ D.38139, pstCfg_11(D)->s32VcmpEn
	b	.L1749	@
.L1751:
	mov	r0, r3	@, tmp194
	movw	r2, #3473	@,
	ldr	r3, .L1758+32	@,
	mvn	r4, #0	@ D.38135,
	ldr	r1, .L1758+12	@,
	bl	dprint_vfmw	@
	b	.L1718	@
.L1754:
	mov	r0, r4	@, ChanID
	ldr	r1, .L1758+36	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38135,
	b	.L1718	@
.L1734:
	ldr	r3, [r5, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	and	r3, r3, #1	@ D.38136, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #32]	@ D.38136, DnrChanCfgArgs.s32MirrorEn
	b	.L1733	@
.L1738:
	add	r0, r6, #210944	@, D.38138,
	add	r1, sp, #32	@ tmp339,,
	mov	r2, #16	@,
	add	r0, r0, #824	@,,
	bl	memcpy	@
	b	.L1739	@
.L1752:
	ldr	r3, .L1758+40	@,
	movw	r2, #3474	@,
	ldr	r1, .L1758+12	@,
	mvn	r4, #0	@ D.38135,
	bl	dprint_vfmw	@
	b	.L1718	@
.L1729:
	ldr	r1, .L1758+44	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1750	@
.L1759:
	.align	2
.L1758:
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
	ldr	r1, .L1763	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Thr
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1760	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #20]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L1760:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1764:
	.align	2
.L1763:
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
	ldr	r1, .L1768	@,
	and	r5, r4, #3	@ Mode, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Mode
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1765	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #24]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L1765:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1769:
	.align	2
.L1768:
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
	ldr	r1, .L1773	@,
	and	r5, r4, #3	@ DecOrderOutput, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, DecOrderOutput
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1770	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #28]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L1770:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1774:
	.align	2
.L1773:
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
	ldr	r1, .L1778	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Thr
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1775	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #16]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L1775:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1779:
	.align	2
.L1778:
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
	ldr	r1, .L1782	@,
	mov	r3, r0	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1782+4	@,
	mov	r3, r0	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1782+8	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L1783:
	.align	2
.L1782:
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
	ldr	r1, .L1786	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L1787:
	.align	2
.L1786:
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
	bne	.L1794	@,
	ldr	r3, .L1795	@ tmp116,
	ldr	r3, [r3]	@ D.38200, s_pstVfmwChan
	cmp	r3, #0	@ D.38200,
	ldrne	r0, [r3, #676]	@ D.38199, _6->s32LastFrameIdPlus2
	mvneq	r0, #0	@ D.38199,
	bx	lr	@
.L1794:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #7997	@,
	ldr	r3, .L1795+4	@,
	mov	r0, #0	@,
	ldr	r1, .L1795+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38199,
	ldmfd	sp!, {r4, pc}	@
.L1796:
	.align	2
.L1795:
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
	bne	.L1803	@,
	ldr	r3, .L1804	@ tmp115,
	ldr	r3, [r3]	@ D.38205, s_pstVfmwChan
	cmp	r3, #0	@ D.38205,
	strne	r1, [r3, #676]	@ Value, _5->s32LastFrameIdPlus2
	bx	lr	@
.L1803:
	ldr	r3, .L1804+4	@,
	movw	r2, #8009	@,
	ldr	r1, .L1804+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L1805:
	.align	2
.L1804:
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
	ldr	r6, .L1834	@ tmp161,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r6, r0, asl #2]	@ D.38212, s_pstVfmwChan
	add	r3, r0, #208896	@ tmp132, D.38212,
	ldr	r3, [r3, #2936]	@ _7->stSynCtx.eVidStd, _7->stSynCtx.eVidStd
	cmp	r3, #6	@ _7->stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _7->stSynCtx.eVidStd
	b	.L1821	@
.L1809:
	.word	.L1808
	.word	.L1821
	.word	.L1810
	.word	.L1811
	.word	.L1821
	.word	.L1821
	.word	.L1812
.L1812:
	add	r0, r0, #210944	@, D.38212,
	add	r0, r0, #896	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L1807:
	add	r3, r4, #1	@ tmp142, ret,
	cmp	r3, #1	@ tmp142,
	bhi	.L1813	@,
.L1832:
	ldr	r3, .L1834+4	@ tmp143,
	ldr	r3, [r3, #-3528]	@ D.38219, g_event_report
	cmp	r3, #0	@ D.38219,
	beq	.L1815	@,
	add	r2, sp, #8	@ tmp145,,
	mov	ip, #1	@ tmp144,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp144, para
	blx	r3	@ D.38219
.L1815:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1811:
	add	r0, r0, #210944	@, D.38212,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	add	r3, r4, #1	@ tmp142, ret,
	cmp	r3, #1	@ tmp142,
	bls	.L1832	@,
.L1813:
	ldr	r3, .L1834+8	@ tmp146,
	ldr	r3, [r3]	@ D.38221, g_chipID
	cmp	r3, #16	@ D.38221,
	bhi	.L1815	@,
	mov	r1, #1	@ tmp147,
	movw	r2, #32831	@ tmp148,
	mov	r3, r1, asl r3	@ D.38215, tmp147,
	bfi	r2, r1, #16, #16	@ tmp148, tmp147,,
	tst	r3, r2	@ D.38215, tmp148
	bne	.L1816	@,
	tst	r3, #3904	@ D.38215,
	beq	.L1815	@,
	ldr	r3, .L1834+4	@ tmp156,
	ldr	r3, [r3, #-3528]	@ D.38219, g_event_report
	cmp	r3, #0	@ D.38219,
	beq	.L1820	@,
	add	r2, sp, #8	@ tmp157,,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ D.38219
.L1820:
	sub	r2, r4, #2	@, ret,
	ldr	r1, .L1834+12	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L1815	@
.L1810:
	add	r0, r0, #210944	@, D.38212,
	add	r0, r0, #896	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1807	@
.L1808:
	add	r0, r0, #210944	@, D.38212,
	add	r0, r0, #896	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1807	@
.L1816:
	cmp	r5, #0	@ ChanId,
	bne	.L1833	@,
	ldr	r3, [r6]	@ D.38212, s_pstVfmwChan
	cmp	r3, #0	@ D.38212,
	strne	r4, [r3, #676]	@ ret, _43->s32LastFrameIdPlus2
.L1819:
	sub	r2, r4, #2	@, ret,
	ldr	r1, .L1834+16	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1821:
	mvn	r4, #0	@ ret,
	b	.L1807	@
.L1833:
	ldr	r3, .L1834+20	@,
	movw	r2, #8009	@,
	ldr	r1, .L1834+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1819	@
.L1835:
	.align	2
.L1834:
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
	ldr	r5, .L1853	@ tmp200,
	ldr	ip, [r5, r0, asl #2]	@ D.38251, s_pstVfmwChan
	cmp	ip, #0	@ D.38251,
	beq	.L1849	@,
	ldr	r3, [ip, #880]	@ _4->eVidStd, _4->eVidStd
	mov	r4, r0	@ ChanId, ChanId
	cmp	r3, #6	@ _4->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _4->eVidStd
	b	.L1836	@
.L1840:
	.word	.L1839
	.word	.L1836
	.word	.L1841
	.word	.L1842
	.word	.L1836
	.word	.L1836
	.word	.L1843
.L1843:
	add	r0, ip, #210944	@, D.38251,
	ldr	r6, .L1853	@ tmp186,
	add	r0, r0, #896	@,,
	bl	AVSDEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.38251, s_pstVfmwChan
	add	r2, r3, #225280	@ tmp188, D.38251,
	ldrb	r2, [r2, #3684]	@ zero_extendqisi2	@ _29->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag, _29->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	cmp	r2, #1	@ _29->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag,
	beq	.L1850	@,
.L1847:
	add	r3, r3, #208896	@ tmp198, D.38251,
	mov	r2, #0	@ tmp199,
	str	r2, [r3, #2948]	@ tmp199,
.L1836:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1839:
	add	r0, ip, #210944	@, D.38251,
	mov	r3, r2	@, pLumaInfo
	add	r0, r0, #896	@,,
	mov	r2, #1	@,
	mov	r6, #0	@ tmp137,
	str	r6, [sp]	@ tmp137,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.38251, s_pstVfmwChan
	ldr	r5, .L1853	@ tmp138,
	add	r2, r3, #225280	@ tmp140, D.38251,
	ldrb	r2, [r2, #116]	@ zero_extendqisi2	@ _14->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, _14->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _14->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L1851	@,
.L1844:
	add	r3, r3, #208896	@ tmp150, D.38251,
	mov	r2, #0	@ tmp151,
	str	r2, [r3, #3304]	@ tmp151, _56->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1841:
	add	r0, ip, #210944	@, D.38251,
	add	r0, r0, #896	@,,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.38251, s_pstVfmwChan
	ldr	r5, .L1853	@ tmp170,
	add	r2, r3, #233472	@ tmp172, D.38251,
	ldrb	r2, [r2, #1364]	@ zero_extendqisi2	@ _24->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, _24->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _24->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L1852	@,
.L1846:
	add	r3, r3, #208896	@ tmp182, D.38251,
	mov	r2, #0	@ tmp183,
	str	r2, [r3, #3980]	@ tmp183, _1->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1842:
	add	r0, ip, #210944	@, D.38251,
	ldr	r6, .L1853	@ tmp154,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.38251, s_pstVfmwChan
	add	r2, r3, #282624	@ tmp156, D.38251,
	ldrb	r2, [r2, #2929]	@ zero_extendqisi2	@ _19->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, _19->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _19->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	bne	.L1847	@,
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp159, s_pstVfmwChan
	mov	r1, #0	@ tmp162,
	add	r2, r3, #282624	@ tmp161, tmp159,
	strb	r1, [r2, #2929]	@ tmp162, _21->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	b	.L1847	@
.L1849:
	mov	r0, ip	@, D.38251
	ldr	r3, .L1853+4	@,
	movw	r2, #4639	@,
	ldr	r1, .L1853+8	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L1850:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp191, s_pstVfmwChan
	mov	r1, #0	@ tmp194,
	add	r2, r3, #225280	@ tmp193, tmp191,
	strb	r1, [r2, #3684]	@ tmp194, _31->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	b	.L1847	@
.L1852:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r5, r4, asl #2]	@ tmp175, s_pstVfmwChan
	mov	r1, #0	@ tmp178,
	add	r2, r3, #233472	@ tmp177, tmp175,
	strb	r1, [r2, #1364]	@ tmp178, _26->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	b	.L1846	@
.L1851:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r5, r4, asl #2]	@ tmp143, s_pstVfmwChan
	add	r2, r3, #225280	@ tmp145, tmp143,
	strb	r6, [r2, #116]	@ tmp137, _16->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
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
	ldr	r3, [r3]	@ D.38259, s_pstVfmwChan
	cmp	r3, #0	@ D.38259,
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
	ldr	ip, [r3, #-3528]	@ D.38264, g_event_report
	cmp	ip, #0	@ D.38264,
	bxeq	lr	@
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r2, sp, #8	@ tmp116,,
	add	r3, r1, #2	@ D.38265, LastFrameID,
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ D.38265, para
	blx	ip	@ D.38264
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
	.type	__func__.31809, %object
	.size	__func__.31809, 18
__func__.31809:
	.ascii	"VCTRL_EventReport\000"
	.space	2
.LC24:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.type	__func__.31821, %object
	.size	__func__.31821, 18
__func__.31821:
	.ascii	"VCTRL_SetCallBack\000"
	.space	2
	.type	__func__.31935, %object
	.size	__func__.31935, 29
__func__.31935:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.32528, %object
	.size	__func__.32528, 26
__func__.32528:
	.ascii	"VCTRL_GetMemSize_onDecode\000"
	.space	2
	.type	__func__.32828, %object
	.size	__func__.32828, 18
__func__.32828:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.32834, %object
	.size	__func__.32834, 19
__func__.32834:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.32840, %object
	.size	__func__.32840, 16
__func__.32840:
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
	.type	save_file_cnt.32915, %object
	.size	save_file_cnt.32915, 4
save_file_cnt.32915:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.32909, %object
	.size	save_file_cnt.32909, 4
save_file_cnt.32909:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.32903, %object
	.size	save_file_cnt.32903, 4
save_file_cnt.32903:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	LastEventTime.31795, %object
	.size	LastEventTime.31795, 4
LastEventTime.31795:
	.space	4
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	FspInstInfo.31928, %object
	.size	FspInstInfo.31928, 3340
FspInstInfo.31928:
	.space	3340
	.type	PrioArray.32150, %object
	.size	PrioArray.32150, 4
PrioArray.32150:
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
	.type	last_rec_pos_time.32726, %object
	.size	last_rec_pos_time.32726, 4
last_rec_pos_time.32726:
	.space	4
	.type	last_rec_pos_report_time.32727, %object
	.size	last_rec_pos_report_time.32727, 4
last_rec_pos_report_time.32727:
	.space	4
	.type	last_rec_pos_decparam_time.32728, %object
	.size	last_rec_pos_decparam_time.32728, 4
last_rec_pos_decparam_time.32728:
	.space	4
	.type	ChanPriTab.32676, %object
	.size	ChanPriTab.32676, 4
ChanPriTab.32676:
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
	.type	PrioArray.32159, %object
	.size	PrioArray.32159, 4
PrioArray.32159:
	.space	4
	.type	PrioArray.32260, %object
	.size	PrioArray.32260, 4
PrioArray.32260:
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
