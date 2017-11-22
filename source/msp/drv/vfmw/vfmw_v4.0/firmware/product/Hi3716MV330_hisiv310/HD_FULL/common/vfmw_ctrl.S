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
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_VP6_SUPPORT -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4
@ -D CFG_MAX_CHAN_NUM=4 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
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
	add	r3, r3, #26	@ tmp114, *p_args_2(D),
	ldr	r3, [r1, r3, asl #2]	@ D.38583, s_SmIIS.pSmInstArray
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
	add	r3, r3, #26	@ tmp114, *p_args_2(D),
	ldr	r3, [r1, r3, asl #2]	@ D.38586, s_SmIIS.pSmInstArray
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L24	@,
	ldr	ip, .L28	@ tmp124,
	ldr	r3, [ip, r0, asl #2]	@ D.38591, s_pstVfmwChan
	cmp	r3, #0	@ D.38591,
	beq	.L25	@,
	ldr	r3, [r3, #20]	@ eType, _9->eAdapterType
	cmp	r3, #0	@ eType,
	beq	.L16	@,
	cmp	r3, #1	@ eType,
	bne	.L26	@,
	ldr	r3, [ip, #164]	@ D.38592, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.38592,
	beq	.L27	@,
.L19:
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ D.38592
.L26:
	ldr	r2, .L28+4	@,
	mov	r0, #0	@,
	ldr	r1, .L28+8	@,
	bl	dprint_vfmw	@
.L13:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L16:
	ldr	r3, [ip, #160]	@ D.38592, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.38592,
	bne	.L19	@,
	mov	r0, r3	@, D.38592
	ldr	r1, .L28+12	@,
	bl	dprint_vfmw	@
	b	.L13	@
.L27:
	mov	r0, r3	@, D.38592
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
	mov	r0, r3	@, D.38591
	movw	r2, #677	@,
	ldr	r3, .L28+28	@,
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
	ldr	r3, [r0]	@ D.38601, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L31	@ tmp113,
	ldr	r1, .L31+4	@,
	mov	r2, r3	@, D.38601
	str	r3, [ip]	@ D.38601, g_NoStreamReportPeriod
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
	ldr	r3, [r0]	@ D.38605, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L34	@ tmp113,
	ldr	r1, .L34+4	@,
	mov	r2, r3	@, D.38605
	str	r3, [ip]	@ D.38605, g_TraceImgPeriod
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
	ldr	r3, [r0]	@ D.38609, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L37	@ tmp113,
	ldr	r1, .L37+4	@,
	mov	r2, r3	@, D.38609
	str	r3, [ip]	@ D.38609, g_TraceFramePeriod
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
	ldr	r3, [r0]	@ D.38613, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L40	@ tmp113,
	ldr	r1, .L40+4	@,
	mov	r2, r3	@, D.38613
	str	r3, [ip]	@ D.38613, g_TraceBsPeriod
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
	ldr	r3, [r0]	@ D.38617, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L43	@ tmp113,
	ldr	r1, .L43+4	@,
	mov	r2, r3	@, D.38617
	str	r3, [ip]	@ D.38617, g_TraceCtrl
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
	ldr	r3, [r0]	@ D.38621, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L46	@ tmp113,
	ldr	r1, .L46+4	@,
	mov	r2, r3	@, D.38621
	str	r3, [ip, #168]	@ D.38621, g_StopDec
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
	ldr	r3, [r0]	@ D.38625, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L49	@ tmp113,
	ldr	r1, .L49+4	@,
	mov	r2, r3	@, D.38625
	str	r3, [ip, #172]	@ D.38625, g_DnrSleepTime
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
	ldr	r3, [r0]	@ D.38629, *p_args_2(D)
	mov	r0, #32	@,
	ldr	ip, .L52	@ tmp113,
	ldr	r1, .L52+4	@,
	mov	r2, r3	@, D.38629
	str	r3, [ip, #176]	@ D.38629, g_SleepTime
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
	cmp	r3, #4	@ dat,
	bhi	.L56	@,
	ldr	ip, .L57	@ tmp114,
	mov	r2, r3	@, dat
	ldr	r1, .L57+4	@,
	mov	r0, #32	@,
	str	r3, [ip, #180]	@ dat, g_CurProcChan
	b	dprint_vfmw	@
.L56:
	mov	r2, r3	@, dat
	ldr	r1, .L57+8	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.word	.LC19
	.word	.LC18
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
	bls	.L61	@,
	mov	r2, r3	@, dat
	ldr	r1, .L62	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L61:
	ldr	ip, .L62+4	@ tmp112,
	mov	r2, r3	@, dat
	ldr	r1, .L62+8	@,
	mov	r0, #32	@,
	str	r3, [ip, #184]	@ dat, g_ResetCreateNewSave
	b	dprint_vfmw	@
.L63:
	.align	2
.L62:
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
	bls	.L66	@,
	mov	r2, r3	@, dat
	ldr	r1, .L67	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L66:
	ldr	ip, .L67+4	@ tmp112,
	mov	r2, r3	@, dat
	ldr	r1, .L67+8	@,
	mov	r0, #32	@,
	str	r3, [ip]	@ dat, USE_FF_APT_EN
	b	dprint_vfmw	@
.L68:
	.align	2
.L67:
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
	ldr	r2, .L77	@ tmp125,
	and	lr, r3, #15	@ D.38646, dat,
	ldr	r4, .L77+4	@ tmp151,
	cmp	lr, #3	@ D.38646,
	ubfx	ip, r3, #4, #4	@ D.38646, dat,,
	ldmia	r2, {r0, r1, r2}	@ tmp125,,,
	movcs	lr, #0	@ D.38646,
	cmp	ip, #3	@ D.38646,
	ubfx	r3, r3, #8, #4	@ D.38646, dat,,
	ldr	r5, .L77+8	@ tmp150,
	ldr	r6, .L77+12	@ tmp130,
	movcs	ip, #0	@ D.38646,
	str	lr, [r4]	@ D.38646, g_DREnable
	add	lr, sp, #16	@ tmp152,,
	cmp	r3, #3	@ D.38646,
	str	ip, [r5]	@ D.38646, g_DBEnable
	stmdb	lr, {r0, r1, r2}	@ tmp152,,,
	mov	r0, #32	@,
	ldr	r1, .L77+16	@,
	movcs	r3, #0	@ D.38646,
	str	r3, [r6]	@ D.38646, g_DCEnable
	bl	dprint_vfmw	@
	ldr	r3, [r6]	@ g_DCEnable, g_DCEnable
	add	r2, sp, #16	@ tmp153,,
	ldr	r1, .L77+20	@,
	mov	r0, #32	@,
	add	r3, r2, r3, lsl #2	@ tmp134, tmp153, g_DCEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	r3, [r5]	@ g_DBEnable, g_DBEnable
	add	r2, sp, #16	@ tmp154,,
	ldr	r1, .L77+24	@,
	mov	r0, #32	@,
	add	r3, r2, r3, lsl #2	@ tmp140, tmp154, g_DBEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	r3, [r4]	@ g_DREnable, g_DREnable
	add	r2, sp, #16	@ tmp155,,
	ldr	r1, .L77+28	@,
	mov	r0, #32	@,
	add	r3, r2, r3, lsl #2	@ tmp146, tmp155, g_DREnable,
	ldr	r2, [r3, #-12]	@, opt
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L78:
	.align	2
.L77:
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
	mov	r0, r2, lsr #27	@ D.38662, dat,
	cmp	r0, #4	@ D.38662,
	bhi	.L93	@,
	mov	r1, sp	@,
	ubfx	ip, r2, #26, #1	@ tmp132, dat,,
	ubfx	r3, r2, #25, #1	@ tmp136, dat,,
	strb	ip, [sp]	@ tmp132, DnrChanCfgArgs.s32MirrorEn
	strb	r3, [sp, #1]	@ tmp136, DnrChanCfgArgs.s32VcmpEn
	ubfx	ip, r2, #24, #1	@ tmp140, dat,,
	ubfx	r3, r2, #12, #12	@ D.38664, dat,,
	strb	ip, [sp, #2]	@ tmp140, DnrChanCfgArgs.s32WmEn
	ubfx	r2, r2, #0, #12	@ D.38664, dat,,
	str	r3, [sp, #4]	@ D.38664, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #8]	@ D.38664, DnrChanCfgArgs.s32VcmpWmEndLine
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L94	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L93:
	ldr	r1, .L95	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L94:
	ldr	r1, .L95+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L96:
	.align	2
.L95:
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
	beq	.L104	@,
	str	r2, [sp]	@ dat,
	mov	r1, #50	@,
	ldr	r3, .L105	@,
	add	r0, sp, #14	@ tmp132,,
	ldr	r2, .L105+4	@,
	bl	snprintf	@
	add	r0, sp, #14	@ tmp133,,
	mov	r2, #0	@,
	mov	r1, #66	@,
	bl	klib_fopen	@
	subs	r5, r0, #0	@ fp,
	beq	.L100	@,
	ldr	r3, .L105+8	@ tmp124,
	ldr	ip, [r3, #96]	@ D.38669, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.38669,
	beq	.L101	@,
	mov	lr, #1	@ tmp125,
	mov	r3, r7	@, D.38668
	mov	r2, r6	@, D.38668
	mov	r1, r4	@, t
	str	lr, [sp]	@ tmp125,
	blx	ip	@ D.38669
.L102:
	mov	r0, r5	@, fp
	bl	klib_fclose	@
	add	r2, sp, #14	@ tmp134,,
	ldr	r1, .L105+12	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L99:
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L101:
	mov	r0, ip	@, D.38669
	movw	r2, #7639	@,
	ldr	r1, .L105+16	@,
	bl	dprint_vfmw	@
	b	.L102	@
.L104:
	ldr	r1, .L105+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L100:
	add	r2, sp, #14	@ tmp135,,
	ldr	r1, .L105+24	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L99	@
.L106:
	.align	2
.L105:
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
	beq	.L112	@,
	str	r2, [sp]	@ dat,
	mov	r1, #50	@,
	ldr	r3, .L113	@,
	add	r0, sp, #14	@ tmp125,,
	ldr	r2, .L113+4	@,
	bl	snprintf	@
	add	r0, sp, #14	@ tmp126,,
	mov	r2, #0	@,
	mov	r1, #66	@,
	bl	klib_fopen	@
	subs	r5, r0, #0	@ fp,
	beq	.L110	@,
	mov	r2, r5	@, fp
	mov	r1, #3145728	@,
	mov	r0, r4	@, t
	bl	klib_fwrite	@
	mov	r0, r5	@, fp
	bl	klib_fclose	@
	add	r2, sp, #14	@ tmp127,,
	ldr	r1, .L113+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L110:
	add	r2, sp, #14	@ tmp128,,
	ldr	r1, .L113+12	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L112:
	ldr	r1, .L113+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L114:
	.align	2
.L113:
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
	ldr	r5, .L133	@ tmp233,
	mov	r6, r0	@ ChanID, ChanID
	ldr	lr, [sp, #536]	@ D.38687, ChanMemFlag.SelfAllocChanMem_ctx
	ldr	r4, [sp, #528]	@ D.38687, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	ip, [r5, r0, asl #2]	@ D.38686, s_pstVfmwChan
	ldr	r8, [sp, #532]	@ D.38687, ChanMemFlag.SelfAllocChanMem_scd
	ldr	r7, [sp, #540]	@ ChanMemFlag.SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	add	r0, ip, #208896	@ tmp168, D.38686,
	str	lr, [ip, #224]	@ D.38687, _7->s32SelfAllocChanMem_ctx
	str	r4, [ip, #216]	@ D.38687, _7->s32SelfAllocChanMem_vdh
	str	r8, [ip, #220]	@ D.38687, _7->s32SelfAllocChanMem_scd
	str	r7, [r0, #2912]	@ ChanMemFlag.SelfAllocChanMem_pmv, _7->s32SelfAllocChanMem_pmv
	ldr	r0, [r3, #8]	@ pChanOption_12(D)->MemAllocMode, pChanOption_12(D)->MemAllocMode
	ldr	r7, [sp, #480]	@ ISRA.219, ISRA.219
	cmp	r0, #3	@ pChanOption_12(D)->MemAllocMode,
	cmpeq	lr, #1	@, D.38687,
	ldr	fp, [sp, #484]	@ ISRA.220, ISRA.220
	ldr	r9, [sp, #492]	@ ISRA.222, ISRA.222
	moveq	lr, #1	@ tmp175,
	movne	lr, #0	@ tmp175,
	cmp	r4, #0	@ D.38687,
	movne	r0, #0	@, tmp179
	andeq	r0, lr, #1	@,, tmp179, tmp175
	ldr	r10, [sp, #504]	@ ISRA.225, ISRA.225
	cmp	r8, #0	@ D.38687,
	movne	r0, #0	@, tmp185
	andeq	r0, r0, #1	@,, tmp185, tmp179
	ldr	r4, [sp, #488]	@ ISRA.221, ISRA.221
	cmp	r0, #0	@ tmp185,
	ldr	lr, [sp, #496]	@ ISRA.223, ISRA.223
	ldr	r8, [sp, #500]	@ ISRA.224, ISRA.224
	beq	.L116	@,
	add	r0, r9, r8	@ D.38687, ISRA.222, ISRA.224
	cmp	r2, #1	@ OneChanMemFlag,
	cmpeq	r0, r7	@, D.38687, ISRA.219
	beq	.L132	@,
.L116:
	mov	r2, #0	@ tmp196,
	str	r2, [ip, #148]	@ tmp196, _7->s32OneChanMem
.L117:
	add	ip, r5, r6, lsl #2	@ tmp205, tmp233, ChanID,
	ldr	r2, [r5, r6, asl #2]	@ D.38686, s_pstVfmwChan
	str	lr, [ip, #188]	@ ISRA.223, g_scd_vir
	add	r0, r2, #208896	@ tmp199, D.38686,
	ldr	ip, [sp, #508]	@ tmp235, ISRA.226
	str	r7, [r2, #176]	@ ISRA.219, _17->stChanMem_vdh.PhyAddr
	str	fp, [r2, #172]	@ ISRA.220, _17->stChanMem_vdh.VirAddr
	str	ip, [r2, #204]	@ tmp235, _17->stChanMem_ctx.VirAddr
	ldr	ip, [sp, #512]	@ tmp236, ISRA.227
	str	r4, [r2, #180]	@ ISRA.221, _17->stChanMem_vdh.Length
	str	r9, [r2, #192]	@ ISRA.222, _17->stChanMem_scd.PhyAddr
	str	ip, [r2, #212]	@ tmp236, _17->stChanMem_ctx.Length
	ldr	ip, [sp, #516]	@ tmp237, ISRA.228
	str	lr, [r2, #188]	@ ISRA.223, _17->stChanMem_scd.VirAddr
	str	r8, [r2, #196]	@ ISRA.224, _17->stChanMem_scd.Length
	str	r10, [r2, #208]	@ ISRA.225, _17->stChanMem_ctx.PhyAddr
	str	ip, [r0, #2924]	@ tmp237, _17->stChanMem_pmv.PhyAddr
	ldr	ip, [sp, #520]	@ tmp238, ISRA.229
	str	ip, [r0, #2920]	@ tmp238, _17->stChanMem_pmv.VirAddr
	ldr	ip, [sp, #524]	@ tmp239, ISRA.230
	str	ip, [r0, #2928]	@ tmp239, _17->stChanMem_pmv.Length
	ldr	r0, [r2, #1580]	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r7, [r2, #248]	@ ISRA.219, _17->s32SdecMemAddr
	cmp	r0, #1	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	str	r4, [r2, #252]	@ ISRA.221, _17->s32SdecMemSize
	beq	.L118	@,
	str	r7, [r2, #236]	@ ISRA.219, _17->s32OffLineDnrMemAddr
	cmp	r1, #24	@ eCapLevel,
	ldr	r2, .L133+4	@ tmp208,
	ldrne	r1, [r3, #60]	@ DnrImgNum, pChanOption_12(D)->s32DisplayFrameNum
	moveq	r1, #1	@ DnrImgNum,
	ldr	ip, [r2, #36]	@ D.38690, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38690,
	beq	.L122	@,
	ldr	r10, [r3, #16]	@ pChanOption_12(D)->s32MaxHeight, pChanOption_12(D)->s32MaxHeight
	mov	lr, #16	@ tmp212,
	ldr	r2, [r3, #12]	@ pChanOption_12(D)->s32MaxWidth, pChanOption_12(D)->s32MaxWidth
	add	r0, sp, #24	@ tmp213,,
	str	r1, [sp, #4]	@ DnrImgNum,
	mvn	r1, #0	@ tmp214,
	str	r0, [sp, #16]	@ tmp213,
	mov	r3, r10	@, pChanOption_12(D)->s32MaxHeight
	mov	r0, #0	@ tmp215,
	str	r1, [sp, #12]	@ tmp214,
	str	r0, [sp, #8]	@ tmp215,
	mov	r1, r4	@, ISRA.221
	str	r0, [sp]	@ tmp215,
	mov	r0, r7	@, ISRA.219
	str	lr, [sp, #20]	@ tmp212,
	blx	ip	@ D.38690
	cmp	r0, #0	@,
	bne	.L122	@,
	ldr	r3, [r5, r6, asl #2]	@ tmp218, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, _34->s32OffLineDNRMemSize
.L123:
	ldr	r2, [r5, r6, asl #2]	@ D.38686, s_pstVfmwChan
	mov	ip, #14336	@ tmp227,
	mov	r0, #0	@ D.38691,
	mov	r1, #32768	@ tmp231,
	ldr	r3, [r2, #240]	@ D.38687, _36->s32OffLineDNRMemSize
	str	r9, [r2, #244]	@ ISRA.222, _36->s32ScdChanMemAddr
	rsb	r4, r3, r4	@ D.38687, D.38687, ISRA.221
	add	r7, r3, r7	@ D.38687, D.38687, ISRA.219
	sub	r4, r4, #47104	@ D.38687, D.38687,
	str	r7, [r2, #228]	@ D.38687, _36->s32VdmChanMemAddr
	sub	r4, r4, #16	@ D.38687, D.38687,
	str	r8, [r2, #256]	@ ISRA.224, _36->s32ScdChanMemSize
	add	r7, r7, r4	@ D.38687, D.38687, D.38687
	str	r4, [r2, #232]	@ D.38687, _36->s32VdmChanMemSize
	add	r3, r7, ip	@ D.38687, D.38687,
	add	r7, r7, #15	@ D.38687, D.38687,
	add	r3, r3, #15	@ D.38687, D.38687,
	bic	r7, r7, #15	@ D.38687, D.38687,
	bic	r3, r3, #15	@ D.38687, D.38687,
	str	r7, [r2, #260]	@ D.38687, _36->s32BpdChanMemAddr
	str	r3, [r2, #268]	@ D.38687, _36->s32Vp8SegIdChanMemAddr
	str	ip, [r2, #264]	@ tmp227, _36->s32BpdChanMemSize
	str	r1, [r2, #272]	@ tmp231, _36->s32Vp8SegIdChanMemSize
.L121:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L118:
	mov	r3, #0	@ tmp220,
	str	r3, [r2, #236]	@ tmp220, _17->s32OffLineDnrMemAddr
	str	r3, [r2, #240]	@ tmp220, _17->s32OffLineDNRMemSize
	b	.L123	@
.L132:
	add	r0, r4, r8	@ D.38687, ISRA.221, ISRA.224
	mov	r2, #1	@ tmp195,
	str	r9, [ip, #160]	@ ISRA.222, _7->stChanMem.PhyAddr
	str	lr, [ip, #156]	@ ISRA.223, _7->stChanMem.VirAddr
	str	r0, [ip, #164]	@ D.38687, _7->stChanMem.Length
	str	r2, [ip, #148]	@ tmp195, _7->s32OneChanMem
	b	.L117	@
.L122:
	ldr	r1, .L133+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38691,
	b	.L121	@
.L134:
	.align	2
.L133:
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
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #3	@ dat,
	bhi	.L138	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r2, r3	@, dat
	ldr	lr, .L139	@ tmp114,
	mov	ip, #0	@ tmp116,
	ldr	r1, .L139+4	@,
	mov	r0, #32	@,
	ldr	r3, [lr, r3, asl #2]	@ tmp115, s_pstVfmwChan
	str	ip, [r3, #1420]	@ tmp116, _6->stSynExtraData.s32ModuleLowlyEnable
	ldr	lr, [sp], #4	@,
	b	dprint_vfmw	@
.L138:
	ldr	r1, .L139+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L140:
	.align	2
.L139:
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
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #3	@ dat,
	bhi	.L144	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r2, r3	@, dat
	ldr	lr, .L145	@ tmp114,
	mov	ip, #1	@ tmp116,
	ldr	r1, .L145+4	@,
	mov	r0, #32	@,
	ldr	r3, [lr, r3, asl #2]	@ tmp115, s_pstVfmwChan
	str	ip, [r3, #1420]	@ tmp116, _6->stSynExtraData.s32ModuleLowlyEnable
	ldr	lr, [sp], #4	@,
	b	dprint_vfmw	@
.L144:
	ldr	r1, .L145+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L146:
	.align	2
.L145:
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
	ldr	r5, [r0]	@ dat, *p_args_3(D)
	cmp	r5, #3	@ dat,
	bhi	.L147	@,
	ldr	r4, .L154	@ tmp117,
	ldr	r6, [r4, #204]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r6, #0	@ vfmw_save_yuv_file,
	beq	.L153	@,
	ldr	r1, .L154+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #204]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #204]	@ tmp136, vfmw_save_yuv_file
.L147:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L153:
	ldr	ip, [r4, #208]	@ D.38711, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L154+8	@,
	add	r0, sp, #14	@ tmp137,,
	ldr	r2, .L154+12	@,
	str	ip, [sp]	@ D.38711,
	add	ip, ip, #1	@ D.38711, D.38711,
	str	ip, [r4, #208]	@ D.38711, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_yuv_file
	add	r0, sp, #14	@ tmp138,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #212]	@ dat, save_yuv_chan_num
	cmp	r0, #0	@ D.38712,
	str	r0, [r4, #204]	@ D.38712, vfmw_save_yuv_file
	beq	.L150	@,
	mov	r3, r5	@, dat
	add	r2, sp, #14	@ tmp139,,
	ldr	r1, .L154+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L147	@
.L150:
	add	r2, sp, #14	@ tmp140,,
	ldr	r1, .L154+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L147	@
.L155:
	.align	2
.L154:
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
	ldr	r5, [r0]	@ dat, *p_args_3(D)
	cmp	r5, #3	@ dat,
	bhi	.L156	@,
	ldr	r4, .L163	@ tmp117,
	ldr	r6, [r4, #216]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r6, #0	@ vfmw_save_seg_file,
	beq	.L162	@,
	ldr	r1, .L163+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #216]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #216]	@ tmp136, vfmw_save_seg_file
.L156:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L162:
	ldr	ip, [r4, #220]	@ D.38723, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L163+8	@,
	add	r0, sp, #14	@ tmp137,,
	ldr	r2, .L163+12	@,
	str	ip, [sp]	@ D.38723,
	add	ip, ip, #1	@ D.38723, D.38723,
	str	ip, [r4, #220]	@ D.38723, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_seg_file
	add	r0, sp, #14	@ tmp138,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #224]	@ dat, save_seg_chan_num
	cmp	r0, #0	@ D.38724,
	str	r0, [r4, #216]	@ D.38724, vfmw_save_seg_file
	beq	.L159	@,
	mov	r3, r5	@, dat
	add	r2, sp, #14	@ tmp139,,
	ldr	r1, .L163+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L156	@
.L159:
	add	r2, sp, #14	@ tmp140,,
	ldr	r1, .L163+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L156	@
.L164:
	.align	2
.L163:
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
	ldr	r5, [r0]	@ dat, *p_args_3(D)
	cmp	r5, #3	@ dat,
	bhi	.L165	@,
	ldr	r4, .L172	@ tmp117,
	ldr	r6, [r4, #228]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r6, #0	@ vfmw_save_str_file,
	beq	.L171	@,
	ldr	r1, .L172+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #228]	@, vfmw_save_str_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #228]	@ tmp136, vfmw_save_str_file
.L165:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L171:
	ldr	ip, [r4, #232]	@ D.38735, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L172+8	@,
	add	r0, sp, #14	@ tmp137,,
	ldr	r2, .L172+12	@,
	str	ip, [sp]	@ D.38735,
	add	ip, ip, #1	@ D.38735, D.38735,
	str	ip, [r4, #232]	@ D.38735, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, vfmw_save_str_file
	add	r0, sp, #14	@ tmp138,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #236]	@ dat, save_str_chan_num
	cmp	r0, #0	@ D.38736,
	str	r0, [r4, #228]	@ D.38736, vfmw_save_str_file
	beq	.L168	@,
	mov	r3, r5	@, dat
	add	r2, sp, #14	@ tmp139,,
	ldr	r1, .L172+16	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L165	@
.L168:
	add	r2, sp, #14	@ tmp140,,
	ldr	r1, .L172+20	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L165	@
.L173:
	.align	2
.L172:
	.word	.LANCHOR0
	.word	.LC51
	.word	.LANCHOR2
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.fnend
	.size	VfmwProc_Savestream, .-VfmwProc_Savestream
	.align	2
	.type	VCTRL_StopVfmw.part.15, %function
VCTRL_StopVfmw.part.15:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L187	@ tmp122,
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L177	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.38751,
	bl	msleep	@
	b	.L178	@
.L186:
	bl	msleep	@
	subs	r4, r4, #1	@ D.38751, D.38751,
	beq	.L185	@,
.L178:
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L186	@,
.L177:
	mov	r0, #0	@ ret,
.L176:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #48]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L185:
	mvn	r0, #0	@ ret,
	b	.L176	@
.L188:
	.align	2
.L187:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopVfmw.part.15, .-VCTRL_StopVfmw.part.15
	.align	2
	.type	VCTRL_StartVfmw.part.16, %function
VCTRL_StartVfmw.part.16:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L202	@ tmp122,
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L192	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.38761,
	bl	msleep	@
	b	.L193	@
.L201:
	bl	msleep	@
	subs	r4, r4, #1	@ D.38761, D.38761,
	beq	.L200	@,
.L193:
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L201	@,
.L192:
	mov	r0, #0	@ ret,
.L191:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #48]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L200:
	mvn	r0, #0	@ ret,
	b	.L191	@
.L203:
	.align	2
.L202:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StartVfmw.part.16, .-VCTRL_StartVfmw.part.16
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
	beq	.L214	@,
	ldr	r0, [r1, #4]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy,
	beq	.L215	@,
	ldr	r0, [r1, #8]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init,
	beq	.L216	@,
	ldr	r0, [r1, #12]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode,
	beq	.L217	@,
	ldr	r0, [r1, #16]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage,
	beq	.L218	@,
	ldr	r0, [r1, #20]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L219	@,
	ldr	r0, [r1, #24]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r0, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L220	@,
	mov	r2, #28	@,
	ldr	r0, .L221	@,
	bl	memcpy	@
	mov	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L220:
	ldr	r2, .L221+4	@,
	ldr	r1, .L221+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L219:
	ldr	r2, .L221+12	@,
	ldr	r1, .L221+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L218:
	ldr	r2, .L221+16	@,
	ldr	r1, .L221+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L217:
	ldr	r2, .L221+20	@,
	ldr	r1, .L221+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L216:
	ldr	r2, .L221+24	@,
	ldr	r1, .L221+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L215:
	ldr	r2, .L221+28	@,
	ldr	r1, .L221+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L214:
	ldr	r2, .L221+32	@,
	ldr	r1, .L221+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38764,
	ldmfd	sp!, {r4, pc}	@
.L222:
	.align	2
.L221:
	.word	.LANCHOR0+240
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
	mov	r4, #50	@ D.38800,
	mov	r6, r0	@ BeginTime,
	mov	r0, #0	@,
	mvn	r7, r6	@ D.38799, BeginTime
	bl	VDMDRV_PrepareSleep	@
	b	.L230	@
.L229:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.38800, D.38800,
	beq	.L231	@,
.L230:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L231	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r6, r0	@ BeginTime, CurTime
	add	r5, r7, r0	@ WaitTime, D.38799, CurTime
	rsbls	r5, r6, r0	@ WaitTime, BeginTime, CurTime
	cmp	r5, #200	@ WaitTime,
	bls	.L229	@,
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r5	@, WaitTime
	ldr	r1, .L265	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.38800, D.38800,
	bne	.L230	@,
.L231:
	ldr	r9, .L265+4	@ tmp154,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r9, #4]	@ D.38802, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.38802,
	beq	.L262	@,
	mov	r0, #0	@,
	blx	r3	@ D.38802
.L232:
	bl	SCDDRV_PrepareSleep	@
	mov	r4, #50	@ D.38800,
	bl	OSAL_GetTimeInMs	@
	mov	r7, r0	@ BeginTime,
	mvn	r8, r0	@ D.38799, BeginTime
	b	.L239	@
.L238:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.38800, D.38800,
	beq	.L240	@,
.L239:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L240	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r7, r0	@ BeginTime, CurTime
	add	r5, r8, r0	@ WaitTime, D.38799, CurTime
	rsbls	r5, r7, r0	@ WaitTime, BeginTime, CurTime
	cmp	r5, #200	@ WaitTime,
	bls	.L238	@,
	bl	SCDDRV_ForceSleep	@
	mov	r2, r5	@, WaitTime
	ldr	r1, .L265+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.38800, D.38800,
	bne	.L239	@,
.L240:
	ldr	r0, [r9, #12]	@ D.38804, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r0, #0	@ D.38804,
	beq	.L263	@,
	blx	r0	@ D.38804
.L241:
	bl	DNRDRV_PrepareSleep	@
	mov	r4, #50	@ D.38800,
	bl	OSAL_GetTimeInMs	@
	mov	r7, r0	@ BeginTime,
	mvn	r8, r0	@ D.38799, BeginTime
	b	.L248	@
.L247:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.38800, D.38800,
	beq	.L249	@,
.L248:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L249	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r7, r0	@ BeginTime, CurTime
	add	r5, r8, r0	@ WaitTime, D.38799, CurTime
	rsbls	r5, r7, r0	@ WaitTime, BeginTime, CurTime
	cmp	r5, #200	@ WaitTime,
	bls	.L247	@,
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r5	@, WaitTime
	ldr	r1, .L265+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.38800, D.38800,
	bne	.L248	@,
.L249:
	ldr	r3, .L265+16	@ tmp144,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L264	@,
.L243:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L265+20	@,
	cmp	r6, r0	@ BeginTime, CurTime
	rsbls	r2, r6, r0	@ D.38799, BeginTime, CurTime
	mvnhi	r6, r6	@ D.38799, BeginTime
	addhi	r2, r6, r0	@ D.38799, D.38799, CurTime
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L262:
	mov	r0, r3	@, D.38802
	movw	r2, #283	@,
	ldr	r1, .L265+24	@,
	bl	dprint_vfmw	@
	b	.L232	@
.L263:
	movw	r2, #309	@,
	ldr	r1, .L265+24	@,
	bl	dprint_vfmw	@
	b	.L241	@
.L264:
	mov	r2, #2	@ tmp150,
	str	r2, [r3, #48]	@ tmp150, s_VfmwCTrl.eTaskCommand
	bl	VCTRL_StopVfmw.part.15	@
	b	.L243	@
.L266:
	.align	2
.L265:
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
	ldr	r1, .L269	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Suspend	@
.L270:
	.align	2
.L269:
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
	subs	r4, r0, #0	@ D.38818,
	bne	.L272	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L279	@,
	bl	BPD_OpenHardware	@
	ldr	r3, .L280	@ tmp117,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	ldmnefd	sp!, {r4, pc}	@
	str	r2, [r3, #48]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw.part.16	@
.L279:
	bl	SCDDRV_GetSleepStage	@
	ldr	r1, .L280+4	@,
	mov	r2, r0	@,
	mov	r0, r4	@, D.38818
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L272:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	ldr	r1, .L280+8	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r2, r0	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L281:
	.align	2
.L280:
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
	ldr	r0, .L284	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L285:
	.align	2
.L284:
	.word	.LANCHOR0+240
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
	ldr	r1, .L288	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L289:
	.align	2
.L288:
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
	mov	r1, #48	@,
	ldr	r4, .L292	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	mvn	r3, #0	@ tmp112,
	str	r3, [r4, #16]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 16B]
	str	r3, [r4, #20]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 20B]
	str	r3, [r4, #24]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 24B]
	str	r3, [r4, #28]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 28B]
	ldmfd	sp!, {r4, pc}	@
.L293:
	.align	2
.L292:
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
	ldr	r5, .L301	@ tmp120,
	ldr	r3, [r5, #268]	@ D.38833, LastEventTime
	cmp	r0, r3	@ CurTime, D.38833
	mov	r4, r0	@ CurTime,
	bls	.L297	@,
	rsb	r3, r3, r0	@ Period, D.38833, CurTime
	cmp	r3, #9	@ Period,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	b	.L298	@
.L297:
	str	r0, [r5, #268]	@ CurTime, LastEventTime
.L298:
	ldr	r0, .L301+4	@,
	bl	OSAL_GiveEvent	@
	str	r4, [r5, #268]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L302:
	.align	2
.L301:
	.word	.LANCHOR0
	.word	.LANCHOR0+272
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
	beq	.L312	@,
	cmp	r0, #0	@ eType,
	beq	.L307	@,
	cmp	r0, #1	@ eType,
	bne	.L313	@,
	ldr	r3, .L314	@ tmp117,
	mov	r0, #0	@ D.38836,
	str	r1, [r3, #164]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r4, pc}	@
.L313:
	mov	r3, r0	@, eType
	ldr	r2, .L314+4	@,
	ldr	r1, .L314+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38836,
	ldmfd	sp!, {r4, pc}	@
.L307:
	ldr	r3, .L314	@ tmp116,
	str	r1, [r3, #160]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmfd	sp!, {r4, pc}	@
.L312:
	mov	r0, r1	@, event_report
	ldr	r3, .L314+12	@,
	movw	r2, #715	@,
	ldr	r1, .L314+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38836,
	ldmfd	sp!, {r4, pc}	@
.L315:
	.align	2
.L314:
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
	ldr	r3, .L318	@ tmp113,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L317	@,
	mov	r2, #2	@ tmp116,
	str	r2, [r3, #48]	@ tmp116, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StopVfmw.part.15	@
.L317:
	mvn	r0, #0	@,
	bx	lr	@
.L319:
	.align	2
.L318:
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
	ldr	r3, .L322	@ tmp113,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L321	@,
	str	r2, [r3, #48]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StartVfmw.part.16	@
.L321:
	mvn	r0, #0	@,
	bx	lr	@
.L323:
	.align	2
.L322:
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
	beq	.L329	@,
	ldr	r3, .L331	@ tmp118,
	ldr	r0, [r3, r0, asl #2]	@ D.38849, s_pstVfmwChan
	cmp	r0, #0	@ D.38849,
	beq	.L330	@,
	mov	r2, #12	@,
	add	r0, r0, #104	@, D.38849,
	bl	memcpy	@
	mov	r0, #0	@ D.38848,
	ldmfd	sp!, {r4, pc}	@
.L330:
	ldr	r3, .L331+4	@,
	movw	r2, #1151	@,
	ldr	r1, .L331+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38848,
	ldmfd	sp!, {r4, pc}	@
.L329:
	mov	r0, r3	@, pstStreamIntf
	movw	r2, #1150	@,
	ldr	r3, .L331+12	@,
	ldr	r1, .L331+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38848,
	ldmfd	sp!, {r4, pc}	@
.L332:
	.align	2
.L331:
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
	ldr	r3, .L336	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.38858, s_pstVfmwChan
	cmp	r0, #0	@ D.38858,
	addne	r0, r0, #104	@ D.38857, D.38858,
	bx	lr	@
.L337:
	.align	2
.L336:
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
	beq	.L343	@,
	ldr	r3, .L345	@ tmp118,
	ldr	r0, [r3, r0, asl #2]	@ D.38862, s_pstVfmwChan
	cmp	r0, #0	@ D.38862,
	beq	.L344	@,
	mov	r2, #12	@,
	add	r0, r0, #128	@, D.38862,
	bl	memcpy	@
	mov	r0, #0	@ D.38861,
	ldmfd	sp!, {r4, pc}	@
.L344:
	ldr	r3, .L345+4	@,
	movw	r2, #1176	@,
	ldr	r1, .L345+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38861,
	ldmfd	sp!, {r4, pc}	@
.L343:
	mov	r0, r3	@, pstFrameIntf
	movw	r2, #1175	@,
	ldr	r3, .L345+12	@,
	ldr	r1, .L345+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38861,
	ldmfd	sp!, {r4, pc}	@
.L346:
	.align	2
.L345:
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
	ldr	r3, .L350	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.38870, s_pstVfmwChan
	cmp	r0, #0	@ D.38870,
	addne	r0, r0, #128	@ D.38869, D.38870,
	bx	lr	@
.L351:
	.align	2
.L350:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L358	@,
	ldr	r3, .L361	@ tmp121,
	ldr	r0, [r3, r0, asl #2]	@ D.38875, s_pstVfmwChan
	cmp	r0, #0	@ D.38875,
	beq	.L359	@,
	ldr	r3, [r0, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L360	@,
	add	r0, r0, #74752	@, D.38875,
	add	r0, r0, #680	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L360:
	ldr	r3, .L361+4	@,
	mov	r2, #1216	@,
	ldr	r1, .L361+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L354:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L358:
	ldr	r3, .L361+12	@,
	movw	r2, #1214	@,
	ldr	r1, .L361+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L354	@
.L359:
	ldr	r3, .L361+16	@,
	movw	r2, #1215	@,
	ldr	r1, .L361+8	@,
	bl	dprint_vfmw	@
	b	.L354	@
.L362:
	.align	2
.L361:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L370	@,
	cmp	r1, #0	@ pArgs,
	beq	.L371	@,
	ldr	r3, .L373	@ tmp124,
	ldr	r4, [r3, r0, asl #2]	@ D.38885, s_pstVfmwChan
	cmp	r4, #0	@ D.38885,
	beq	.L372	@,
	add	r0, r4, #1584	@, D.38885,
	mov	r2, #8	@,
	add	r0, r0, #12	@,,
	bl	memcpy	@
	ldr	r3, [r4, #1596]	@ _9->stSynExtraData.stDisParams.s32Mode, _9->stSynExtraData.stDisParams.s32Mode
	mov	r0, #0	@ tmp135,
	sub	r3, r3, #1	@ D.38884, _9->stSynExtraData.stDisParams.s32Mode,
	cmp	r3, #1	@ D.38884,
	strhi	r0, [r4, #1596]	@ tmp135, _9->stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r4, pc}	@
.L370:
	ldr	r3, .L373+4	@,
	movw	r2, #1228	@,
	ldr	r1, .L373+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38883,
	ldmfd	sp!, {r4, pc}	@
.L372:
	mov	r0, r4	@, D.38885
	ldr	r3, .L373+12	@,
	movw	r2, #1230	@,
	ldr	r1, .L373+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38883,
	ldmfd	sp!, {r4, pc}	@
.L371:
	mov	r0, r1	@, pArgs
	ldr	r3, .L373+16	@,
	movw	r2, #1229	@,
	ldr	r1, .L373+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38883,
	ldmfd	sp!, {r4, pc}	@
.L374:
	.align	2
.L373:
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
	add	r3, r3, r2	@ D.38894, DnrChanState.read_out_frame_num, DnrChanState.new_frame_num
	str	r3, [r4, #88]	@ D.38894, pstChanState_8(D)->wait_disp_frame_num
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
	ldr	r3, .L387	@ tmp162,
	movw	ip, #4058	@ tmp166,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r3, [r3, r0, asl #2]	@ D.38908, s_pstVfmwChan
	add	r5, r3, #172032	@ tmp179, D.38908,
	ldrsb	lr, [r5, ip]	@ D.38906, _32->FspInst.s32DecFsNum
	cmp	lr, #0	@ D.38906,
	ble	.L383	@,
	add	r3, r3, #203776	@ ivtmp.544, D.38908,
	mov	r4, #0	@ s32DecodedFrameNum,
	add	r3, r3, #102	@ ivtmp.544, ivtmp.544,
	mov	r0, r4	@ i, s32DecodedFrameNum
.L380:
	ldrsb	ip, [r3]	@ MEM[base: _39, offset: 0B], MEM[base: _39, offset: 0B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.544, ivtmp.544,
	cmp	ip, #3	@ MEM[base: _39, offset: 0B],
	addeq	r4, r4, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r0, lr	@ i, D.38906
	bne	.L380	@,
.L378:
	str	r4, [r1, #88]	@ D.38904, pstChanState_15(D)->wait_disp_frame_num
	ldrb	r3, [r5, #4058]	@ zero_extendqisi2	@ D.38905, _32->FspInst.s32DecFsNum
	cmp	r3, #0	@ D.38905,
	moveq	r3, #4	@ D.38903,
	mvnne	r0, r2	@ D.38906, RefNum
	sxtabne	r3, r0, r3	@ D.38903, D.38906, D.38905
	str	r3, [r1, #96]	@ D.38903, pstChanState_15(D)->total_disp_frame_num
	ldrb	r3, [r5, #4058]	@ zero_extendqisi2	@ D.38905, _32->FspInst.s32DecFsNum
	sxtb	r3, r3	@ D.38905, D.38905
	cmp	r3, #0	@ D.38905,
	ldmlefd	sp!, {r4, r5, pc}	@
	add	r2, r2, #1	@ D.38906, RefNum,
	cmp	r3, r2	@ D.38905, D.38906
	movle	r3, #0	@ tmp178,
	strle	r3, [r1, #96]	@ tmp178, pstChanState_15(D)->total_disp_frame_num
	ldmfd	sp!, {r4, r5, pc}	@
.L383:
	mov	r4, #0	@ D.38904,
	b	.L378	@
.L388:
	.align	2
.L387:
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
	ldr	r3, .L392	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.38913, s_pstVfmwChan
	cmp	r0, #0	@ D.38913,
	addne	r0, r0, #116	@ D.38912, D.38913,
	bx	lr	@
.L393:
	.align	2
.L392:
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
	ldr	r4, .L412	@ tmp170,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r6, r2	@ MaxHeight, MaxHeight
	mov	r8, r1	@ MaxWidth, MaxWidth
	movle	r2, #1	@ tmp177,
	movgt	r2, #0	@ tmp177,
	mov	r9, r0	@ ChanID, ChanID
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ldr	r10, [sp, #80]	@ MemSize, MemSize
	ble	.L408	@,
	cmp	r10, #0	@ MemSize,
	cmpne	r3, #0	@, MemAddr,
	mov	fp, r3	@ MemAddr, MemAddr
	moveq	r7, #1	@ tmp185,
	movne	r7, #0	@ tmp185,
	beq	.L409	@,
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
	subs	r6, r0, #0	@ D.38930,
	bne	.L398	@,
	mov	r2, r10	@, MemSize
	mov	r1, fp	@, MemAddr
	mov	r3, sp	@,
	mov	r0, r9	@, ChanID
	bl	FSP_PartitionFsMemory	@
	subs	r7, r0, #0	@ Ret,
	bne	.L410	@,
	mov	r0, r9	@, ChanID
	add	r1, r4, #284	@, tmp170,
	bl	FSP_GetInstInfo	@
	movw	r3, #285	@ tmp207,
	ldrsb	r3, [r4, r3]	@ D.38933, FspInstInfo.s32DecFsNum
	cmp	r3, #16	@ D.38933,
	movge	r3, #16	@ D.38933,
	cmp	r3, #2	@ D.38933,
	str	r3, [r5, #820]	@ D.38933, pstChan_8->s32UsrdecFrameNum
	ble	.L411	@,
	ldr	r3, [r4, #3620]	@ D.38933, FspInstInfo.s32DecFsSize
	mov	r1, #64	@,
	add	r0, r5, #752	@, pstChan,
	str	r3, [r5, #816]	@ D.38933, pstChan_8->s32UsrdecFrameSize
	bl	__memzero	@
	mov	r1, #64	@,
	add	r0, r5, #688	@, pstChan,
	bl	__memzero	@
	ldr	lr, [r5, #820]	@ D.38933, pstChan_8->s32UsrdecFrameNum
	cmp	lr, #0	@ D.38933,
	ble	.L396	@,
	add	r3, r4, #284	@ ivtmp.555, tmp170,
	add	r1, r5, #748	@ ivtmp.557, pstChan,
	mov	r2, r6	@ i, D.38930
.L403:
	ldr	ip, [r3, #20]	@ D.38933, MEM[base: _66, offset: 20B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, lr	@ i, D.38933
	add	r3, r3, #52	@ ivtmp.555, ivtmp.555,
	str	ip, [r1, #4]!	@ D.38933, MEM[base: _67, offset: 0B]
	bne	.L403	@,
.L396:
	mov	r0, r6	@, D.38930
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L409:
	mov	r0, r2	@, tmp177
	ldr	r1, .L412+4	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.38930,
	b	.L396	@
.L398:
	mov	r0, r7	@, tmp185
	ldr	r1, .L412+8	@,
	bl	dprint_vfmw	@
.L407:
	mvn	r6, #0	@ D.38930,
	mov	r0, r6	@, D.38930
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L410:
	mov	r0, r6	@, D.38930
	ldr	r1, .L412+12	@,
	bl	dprint_vfmw	@
	b	.L407	@
.L411:
	mov	r0, r7	@, Ret
	movw	r3, #1403	@,
	ldr	r2, .L412+16	@,
	ldr	r1, .L412+20	@,
	bl	dprint_vfmw	@
	b	.L407	@
.L408:
	mov	r3, r6	@, MaxHeight
	mov	r2, r1	@, MaxWidth
	mov	r0, #0	@,
	ldr	r1, .L412+24	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.38930,
	b	.L396	@
.L413:
	.align	2
.L412:
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
	beq	.L446	@,
.L417:
	ldr	r3, [r4, #28]	@ pstChan_7(D)->stChanMem_vdh.Length, pstChan_7(D)->stChanMem_vdh.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_vdh.Length,
	bne	.L447	@,
.L418:
	ldr	r2, [r4, #44]	@ D.38945, pstChan_7(D)->stChanMem_scd.Length
	cmp	r2, #0	@ D.38945,
	bne	.L448	@,
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L449	@,
.L421:
	ldr	r2, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r1, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #72]	@ pstChan_7(D)->s32SelfAllocChanMem_ctx, pstChan_7(D)->s32SelfAllocChanMem_ctx
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_ctx,
	beq	.L450	@,
.L424:
	ldr	r0, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L425:
	ldr	r2, [r4, #60]	@, pstChan_7(D)->stChanMem_ctx.Length
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	ldr	r0, [r4, #56]	@, pstChan_7(D)->stChanMem_ctx.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ pstChan_7(D)->s32SelfAllocChanMem_pmv, pstChan_7(D)->s32SelfAllocChanMem_pmv
	ldr	r0, [r4, #100]	@ D.38950, pstChan_7(D)->stChanMem_pmv.PhyAddr
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_pmv,
	beq	.L451	@,
.L427:
	ldr	r2, [r4, #104]	@, pstChan_7(D)->stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L447:
	ldrsb	r3, [r4, #16]	@ pstChan_7(D)->stChanMem_vdh.IsCached, pstChan_7(D)->stChanMem_vdh.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_vdh.IsCached,
	bne	.L418	@,
	ldr	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	mov	r3, #0	@ tmp162,
	strb	r3, [r4, #16]	@ tmp162, pstChan_7(D)->stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	b	.L418	@
.L450:
	ldr	r0, [r4, #56]	@ D.38945, pstChan_7(D)->stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.38945,
	beq	.L424	@,
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L425	@
.L451:
	cmp	r0, #0	@ D.38950,
	beq	.L427	@,
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #100]	@ D.38950, pstChan_7(D)->stChanMem_pmv.PhyAddr
	b	.L427	@
.L448:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L452	@,
.L420:
	ldr	r3, [r4, #44]	@ pstChan_7(D)->stChanMem_scd.Length, pstChan_7(D)->stChanMem_scd.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_scd.Length,
	beq	.L421	@,
	ldrsb	r3, [r4, #32]	@ pstChan_7(D)->stChanMem_scd.IsCached, pstChan_7(D)->stChanMem_scd.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_scd.IsCached,
	bne	.L421	@,
	ldr	r0, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, pstChan_7(D)->stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	ldr	r3, .L453	@ tmp173,
	mov	r2, #0	@ tmp176,
	strb	r2, [r4, #32]	@ tmp176, pstChan_7(D)->stChanMem_scd.IsCached
	add	r5, r3, r5, lsl #2	@ tmp174, tmp173, ChanID,
	str	r0, [r4, #36]	@ D.38949, pstChan_7(D)->stChanMem_scd.VirAddr
	str	r0, [r5, #188]	@ D.38949, g_scd_vir
	b	.L421	@
.L446:
	ldr	r0, [r1, #24]	@ D.38945, pstChan_7(D)->stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.38945,
	beq	.L417	@,
	ldr	r1, [r1, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L418	@
.L452:
	ldr	r0, [r4, #40]	@ D.38945, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.38945,
	beq	.L420	@,
.L428:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L421	@
.L449:
	ldr	r0, [r4, #40]	@ D.38945, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.38945,
	beq	.L421	@,
	b	.L428	@
.L454:
	.align	2
.L453:
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
	movw	r3, #9160	@ tmp112,
	movt	r3, 8	@ tmp112,
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L472	@,
	ldr	r5, .L476	@ tmp166,
	ldr	r3, [r5, r0, asl #2]	@ D.38970, s_pstVfmwChan
	cmp	r3, #0	@ D.38970,
	beq	.L473	@,
	ldr	r6, [r3, #4]	@ _12->s32IsOpen, _12->s32IsOpen
	cmp	r6, #1	@ _12->s32IsOpen,
	bne	.L474	@,
	ldr	r3, [r3, #880]	@ _12->eVidStd, _12->eVidStd
	cmp	r3, #19	@ _12->eVidStd,
	beq	.L475	@,
	bl	SM_Start	@
	ldr	r3, [r5, r4, asl #2]	@ D.38970, s_pstVfmwChan
	mov	r1, #0	@ tmp148,
	str	r6, [r3, #8]	@ _12->s32IsOpen, _19->s32IsRun
	ldr	r2, [r5, r4, asl #2]	@ D.38970, s_pstVfmwChan
	ldr	r3, [r2, #12]	@ _21->s32Priority, _21->s32Priority
	str	r1, [r2, #16]	@ tmp148, _21->s32StopSyntax
	cmp	r3, r1	@ _21->s32Priority,
	bne	.L462	@,
	ldr	r3, .L476+4	@ ivtmp.584,
	mov	r0, r5	@ ivtmp.580, tmp166
	ldr	r1, .L476+8	@ ivtmp.585,
	add	lr, r3, #16	@ D.38969,,
	str	r6, [r2, #12]	@ _12->s32IsOpen, _21->s32Priority
.L465:
	ldr	r2, [r0], #4	@ D.38970, MEM[base: _50, offset: 0B]
	add	r3, r3, #4	@ ivtmp.584, ivtmp.584,
	add	r1, r1, #4	@ ivtmp.585, ivtmp.585,
	cmp	r2, #0	@ D.38970,
	streq	r2, [r3, #-4]	@ D.38970, MEM[base: _54, offset: 0B]
	ldrne	ip, [r2, #12]	@ D.38971, _25->s32Priority
	strne	ip, [r3, #-4]	@ D.38971, MEM[base: _52, offset: 0B]
	ldrne	r2, [r2, #12]	@ D.38971, _25->s32Priority
	cmp	r3, lr	@ ivtmp.584, D.38969
	str	r2, [r1, #-4]	@ D.38970,
	bne	.L465	@,
	ldr	r0, .L476+4	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
.L462:
	ldr	r3, [r5, r4, asl #2]	@ tmp163, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _35->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _35->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _35->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L466	@,
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
.L466:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.38968,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L474:
	ldr	r3, .L476+12	@,
	movw	r2, #2698	@,
	ldr	r1, .L476+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38968,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L472:
	ldr	r3, .L476+20	@,
	movw	r2, #2696	@,
	ldr	r1, .L476+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38968,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L475:
	ldr	r3, .L476+24	@,
	movw	r2, #2699	@,
	ldr	r1, .L476+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38968,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L473:
	mov	r0, r3	@, D.38970
	movw	r2, #2697	@,
	ldr	r3, .L476+28	@,
	ldr	r1, .L476+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38968,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L477:
	.align	2
.L476:
	.word	.LANCHOR0
	.word	.LANCHOR0+3624
	.word	g_ChanCtx
	.word	.LC78
	.word	.LC5
	.word	.LC69
	.word	.LC79
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
	ldr	r1, .L480	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L481:
	.align	2
.L480:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L489	@,
	ldr	r6, .L492	@ tmp120,
	ldr	r3, [r6, r0, asl #2]	@ D.38987, s_pstVfmwChan
	cmp	r3, #0	@ D.38987,
	beq	.L490	@,
	ldr	r2, [r3, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r2, #1	@ _7->s32IsOpen,
	bne	.L491	@,
	str	r2, [r3, #16]	@ _7->s32IsOpen, _7->s32StopSyntax
	mov	r2, #0	@ tmp127,
	str	r2, [r3, #8]	@ tmp127, _7->s32IsRun
	bl	SM_Stop	@
	subs	r5, r0, #0	@ s32Ret,
	bne	.L487	@,
	mov	r1, r5	@, s32Ret
	mov	r0, r4	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, ChanID
	bl	DNR_StopChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r6, r4, asl #2]	@ tmp129, s_pstVfmwChan
	mov	r0, r5	@ D.38985, s32Ret
	str	r5, [r3, #16]	@ s32Ret, _18->s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L491:
	ldr	r3, .L492+4	@,
	movw	r2, #2825	@,
	ldr	r1, .L492+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38985,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L487:
	mvn	r0, #0	@ D.38985,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L489:
	ldr	r3, .L492+12	@,
	movw	r2, #2823	@,
	ldr	r1, .L492+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38985,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L490:
	mov	r0, r3	@, D.38987
	movw	r2, #2824	@,
	ldr	r3, .L492+16	@,
	ldr	r1, .L492+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38985,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L493:
	.align	2
.L492:
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
	ldr	r1, .L496	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L497:
	.align	2
.L496:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L504	@,
	cmp	r1, #0	@ pstCfg,
	mov	r3, r1	@ pstCfg, pstCfg
	beq	.L505	@,
	ldr	r2, .L507	@ tmp121,
	ldr	r1, [r2, r0, asl #2]	@ D.39002, s_pstVfmwChan
	cmp	r1, #0	@ D.39002,
	beq	.L506	@,
	add	r1, r1, #32	@, D.39002,
	mov	r0, r3	@, pstCfg
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, #0	@ D.39000,
	ldmfd	sp!, {r4, pc}	@
.L504:
	ldr	r3, .L507+4	@,
	movw	r2, #2874	@,
	ldr	r1, .L507+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39000,
	ldmfd	sp!, {r4, pc}	@
.L506:
	mov	r0, r1	@, D.39002
	ldr	r3, .L507+12	@,
	movw	r2, #2876	@,
	ldr	r1, .L507+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39000,
	ldmfd	sp!, {r4, pc}	@
.L505:
	mov	r0, r1	@, pstCfg
	ldr	r3, .L507+16	@,
	movw	r2, #2875	@,
	ldr	r1, .L507+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39000,
	ldmfd	sp!, {r4, pc}	@
.L508:
	.align	2
.L507:
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
	ldr	r4, .L531	@ tmp172,
	ldr	ip, [r4, r0, asl #2]	@ D.39011, s_pstVfmwChan
	ldr	r3, [ip, #880]	@ _8->eVidStd, _8->eVidStd
	ldr	r2, [ip, #1624]	@ eOldDecCore, _8->eDecCore
	sub	r3, r3, #4	@ tmp137, _8->eVidStd,
	cmp	r3, #10	@ tmp137,
	ldrls	pc, [pc, r3, asl #2]	@ tmp137
	b	.L510	@
.L512:
	.word	.L511
	.word	.L510
	.word	.L510
	.word	.L510
	.word	.L510
	.word	.L510
	.word	.L513
	.word	.L514
	.word	.L515
	.word	.L510
	.word	.L516
.L515:
	ldr	r3, [r4, #3640]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	moveq	r3, #5	@ tmp153,
	streq	r3, [ip, #1624]	@ tmp153, _8->eDecCore
	beq	.L517	@,
.L510:
	mov	r3, #0	@ tmp155,
	str	r3, [ip, #1624]	@ tmp155, _8->eDecCore
.L517:
	cmp	r2, r3	@ eOldDecCore, D.39020
	beq	.L524	@,
	sub	r2, r2, #1	@ D.39014, eOldDecCore,
	mov	r6, r1	@ pstSoftDecMem, pstSoftDecMem
	cmp	r2, #4	@ D.39014,
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L523	@,
	ldr	r3, [r4, #244]	@ D.39015, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.39015,
	beq	.L523	@,
	add	r0, ip, #210944	@, D.39011,
	add	r0, r0, #896	@,,
	blx	r3	@ D.39015
.L523:
	ldr	r3, [r4, r5, asl #2]	@ D.39011, s_pstVfmwChan
	ldr	r1, .L531	@ tmp160,
	ldr	r2, [r3, #1624]	@ _31->eDecCore, _31->eDecCore
	sub	r2, r2, #1	@ D.39014, _31->eDecCore,
	cmp	r2, #4	@ D.39014,
	bhi	.L524	@,
	ldr	ip, [r1, #240]	@ D.39019, g_SdecFunc.pfun_iMediaSoftDEC_Create
	add	r2, r3, #208896	@ tmp164, D.39011,
	ldr	r1, [r3, #24]	@ _31->eChanCapLevel, _31->eChanCapLevel
	cmp	ip, #0	@ D.39019,
	str	r1, [r2, #2956]	@ _31->eChanCapLevel, _31->stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	beq	.L526	@,
	add	r0, r3, #210944	@, D.39011,
	mov	r1, r6	@, pstSoftDecMem
	add	r0, r0, #896	@,,
	ldr	r2, [r3, #880]	@, _31->eVidStd
	blx	ip	@ D.39019
	cmp	r0, #0	@,
	bne	.L526	@,
.L524:
	mov	r0, #0	@ D.39010,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L516:
	mov	r3, #2	@ tmp139,
	str	r3, [ip, #1624]	@ tmp139, _8->eDecCore
	b	.L517	@
.L511:
	mov	r3, #1	@ tmp138,
	str	r3, [ip, #1624]	@ tmp138, _8->eDecCore
	b	.L517	@
.L513:
	ldr	r3, [r4, #3640]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	moveq	r3, #3	@ tmp143,
	streq	r3, [ip, #1624]	@ tmp143, _8->eDecCore
	beq	.L517	@,
	b	.L510	@
.L514:
	ldr	r3, [r4, #3640]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	moveq	r3, #4	@ tmp148,
	streq	r3, [ip, #1624]	@ tmp148, _8->eDecCore
	beq	.L517	@,
	b	.L510	@
.L526:
	ldr	r1, .L531+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39010,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L532:
	.align	2
.L531:
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
	ldr	r3, .L547	@ tmp143,
	ldr	r2, [r1]	@ pstCfg_6(D)->eVidStd, pstCfg_6(D)->eVidStd
	ldr	r3, [r3, r0, asl #2]	@ D.39025, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ _4->stChanCfg.eVidStd, _4->stChanCfg.eVidStd
	cmp	r0, r2	@ _4->stChanCfg.eVidStd, pstCfg_6(D)->eVidStd
	bne	.L546	@,
	ldr	r0, [r3, #48]	@ _4->stChanCfg.s32ChanErrThr, _4->stChanCfg.s32ChanErrThr
	ldr	r2, [r1, #16]	@ pstCfg_6(D)->s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	bne	.L546	@,
	ldr	r0, [r3, #44]	@ _4->stChanCfg.s32ChanPriority, _4->stChanCfg.s32ChanPriority
	ldr	r2, [r1, #12]	@ pstCfg_6(D)->s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	cmp	r0, r2	@ _4->stChanCfg.s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	bne	.L546	@,
	ldr	r0, [r3, #52]	@ _4->stChanCfg.s32ChanStrmOFThr, _4->stChanCfg.s32ChanStrmOFThr
	ldr	r2, [r1, #20]	@ pstCfg_6(D)->s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	bne	.L546	@,
	ldr	r0, [r3, #56]	@ _4->stChanCfg.s32DecMode, _4->stChanCfg.s32DecMode
	ldr	r2, [r1, #24]	@ pstCfg_6(D)->s32DecMode, pstCfg_6(D)->s32DecMode
	cmp	r0, r2	@ _4->stChanCfg.s32DecMode, pstCfg_6(D)->s32DecMode
	bne	.L546	@,
	ldr	r0, [r3, #60]	@ _4->stChanCfg.s32DecOrderOutput, _4->stChanCfg.s32DecOrderOutput
	ldr	r2, [r1, #28]	@ pstCfg_6(D)->s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	cmp	r0, r2	@ _4->stChanCfg.s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	bne	.L546	@,
	ldr	r0, [r3, #68]	@ _4->stChanCfg.s32DnrDispOutEnable, _4->stChanCfg.s32DnrDispOutEnable
	ldr	r2, [r1, #36]	@ pstCfg_6(D)->s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	bne	.L546	@,
	ldr	r0, [r3, #64]	@ _4->stChanCfg.s32DnrTfEnable, _4->stChanCfg.s32DnrTfEnable
	ldr	r2, [r1, #32]	@ pstCfg_6(D)->s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	bne	.L546	@,
	ldr	r0, [r3, #76]	@ _4->stChanCfg.s32VcmpEn, _4->stChanCfg.s32VcmpEn
	ldr	r2, [r1, #44]	@ pstCfg_6(D)->s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	bne	.L546	@,
	ldr	r0, [r3, #88]	@ _4->stChanCfg.s32VcmpWmEndLine, _4->stChanCfg.s32VcmpWmEndLine
	ldr	r2, [r1, #56]	@ pstCfg_6(D)->s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	bne	.L546	@,
	ldr	r0, [r3, #84]	@ _4->stChanCfg.s32VcmpWmStartLine, _4->stChanCfg.s32VcmpWmStartLine
	ldr	r2, [r1, #52]	@ pstCfg_6(D)->s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	bne	.L546	@,
	ldr	r0, [r3, #80]	@ _4->stChanCfg.s32WmEn, _4->stChanCfg.s32WmEn
	ldr	r2, [r1, #48]	@ pstCfg_6(D)->s32WmEn, pstCfg_6(D)->s32WmEn
	cmp	r0, r2	@ _4->stChanCfg.s32WmEn, pstCfg_6(D)->s32WmEn
	bne	.L546	@,
	ldr	r3, [r3, #92]	@ _4->stChanCfg.s32SupportAllP, _4->stChanCfg.s32SupportAllP
	ldr	r0, [r1, #60]	@ pstCfg_6(D)->s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	subs	r0, r3, r0	@ D.39024, _4->stChanCfg.s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	mvnne	r0, #0	@ D.39024,
	bx	lr	@
.L546:
	mvn	r0, #0	@ D.39024,
	bx	lr	@
.L548:
	.align	2
.L547:
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
	ldr	r2, .L557	@ tmp129,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2, r0, asl #2]	@ D.39032, s_pstVfmwChan
	ldr	r2, [r5, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #19	@ _4->eVidStd,
	beq	.L554	@,
	mov	r4, r1	@ pstCfg, pstCfg
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@ D.39031
	bne	.L554	@,
	ldr	r3, [r5, #32]	@ D.39034, _4->stChanCfg.eVidStd
	cmp	r3, #1	@ D.39034,
	beq	.L556	@,
	sub	r3, r3, #10	@ D.39035, D.39034,
	cmp	r3, #2	@ D.39035,
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #36]	@ _4->stChanCfg.StdExt.Vp6Ext.bReversed, _4->stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r4, #4]	@ pstCfg_6(D)->StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	subs	r0, r3, r0	@ D.39031, _4->stChanCfg.StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	mvnne	r0, #0	@ D.39031,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L556:
	ldr	r2, [r5, #36]	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r3, [r4, #4]	@ pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, r3	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	bne	.L554	@,
	ldr	r3, [r5, #40]	@ _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r0, [r4, #8]	@ pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	subs	r0, r3, r0	@ D.39031, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	mvnne	r0, #0	@ D.39031,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L554:
	mvn	r0, #0	@ D.39031,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L558:
	.align	2
.L557:
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
	ldr	r2, .L575	@ tmp136,
	ldr	r3, .L575+4	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	ip, [r2]	@ D.39040, g_chipID
	ldr	r3, [r3, r0, asl #2]	@ D.39039, s_pstVfmwChan
	cmp	ip, #16	@ D.39040,
	ldr	lr, [r3, #1456]	@ ChanMaxWidth, _5->stSynExtraData.stChanOption.s32MaxWidth
	ldr	r4, [r3, #1460]	@ ChanMaxHeight, _5->stSynExtraData.stChanOption.s32MaxHeight
	bhi	.L560	@,
	mov	r2, #1	@ tmp137,
	movw	r0, #36832	@ tmp138,
	mov	r3, r2, asl ip	@ D.39042, tmp137,
	bfi	r0, r2, #16, #16	@ tmp138, tmp137,,
	ands	r0, r3, r0	@ D.39042, D.39042, tmp138
	bne	.L561	@,
	tst	r3, #31	@ D.39042,
	beq	.L560	@,
	ldr	r3, .L575+8	@ tmp141,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	lr, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L562	@,
	ldr	r3, .L575+12	@ tmp143,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L563	@,
.L562:
	ldr	r3, [r1]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	bne	.L573	@,
.L567:
	mov	r0, #0	@ ret,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L561:
	ldr	r3, .L575+8	@ tmp147,
	ldr	r2, [r3]	@ D.39040, g_ChipMaxWidth
	cmp	lr, r2	@ ChanMaxWidth, D.39040
	bgt	.L564	@,
	ldr	r3, .L575+12	@ tmp148,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L567	@,
.L564:
	ldr	r0, [r1]	@ D.39040, pstCfg_11(D)->eVidStd
	cmp	r0, #18	@ D.39040,
	cmpne	r0, #0	@, D.39040,
	bic	r0, r0, #2	@ D.39040, D.39040,
	movne	r3, #1	@ tmp154,
	moveq	r3, #0	@ tmp154,
	cmp	r0, #13	@ D.39040,
	moveq	r0, #0	@, tmp161
	andne	r0, r3, #1	@,, tmp161, tmp154
	cmp	r0, #0	@ tmp161,
	bne	.L574	@,
.L563:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L560:
	mov	r2, ip	@, D.39040
	ldr	r1, .L575+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L563	@
.L573:
	mov	r2, ip	@, D.39040
	ldr	r1, .L575+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L563	@
.L574:
	ldr	r3, .L575+12	@ tmp162,
	mov	r0, #0	@,
	str	ip, [sp]	@ D.39040,
	ldr	r1, .L575+24	@,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L563	@
.L576:
	.align	2
.L575:
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
	ldr	r3, .L583	@ tmp122,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ D.39050, s_pstVfmwChan
	cmp	r3, #0	@ D.39050,
	beq	.L582	@,
	ldr	r3, [r3, #880]	@ D.39051, _5->eVidStd
	cmp	r3, #4	@ D.39051,
	cmpne	r3, #14	@, D.39051,
	beq	.L580	@,
	bl	SM_SeekPts	@
	adds	r0, r0, #0	@ D.39052,,
	movne	r0, #1	@ D.39052,
	rsb	r0, r0, #0	@ D.39049, D.39052
	ldmfd	sp!, {r4, pc}	@
.L580:
	mvn	r0, #0	@ D.39049,
	ldmfd	sp!, {r4, pc}	@
.L582:
	mov	r0, r3	@, D.39050
	movw	r2, #3659	@,
	ldr	r3, .L583+4	@,
	ldr	r1, .L583+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39049,
	ldmfd	sp!, {r4, pc}	@
.L584:
	.align	2
.L583:
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
	mov	r6, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	add	r0, sp, #8	@ tmp171,,
	bl	__memzero	@
	add	r1, sp, #8	@ tmp172,,
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetChanCfg	@
	subs	ip, r0, #0	@ ret,
	bne	.L604	@,
	ldr	r0, [sp, #8]	@ D.39057, stCfgInfo.eVidStd
	ldr	r5, .L608	@ tmp170,
	cmp	r0, #0	@ D.39057,
	beq	.L605	@,
	ldr	r1, [r5, #3644]	@ D.39059, g_DSPState
	cmp	r1, #0	@ D.39059,
	bne	.L600	@,
	mov	ip, r1	@ D.39058, D.39059
	mov	r2, r1	@ ScdLowdlyEnable, D.39058
.L596:
	ldr	r1, [r5, #3648]	@ D.39059, g_DSPState
	ldr	r3, .L608	@ tmp134,
	cmp	r1, #0	@ D.39059,
	bne	.L589	@,
	ldr	r1, [r3, #3652]	@ D.39059, g_DSPState
	cmp	r1, #0	@ D.39059,
	bne	.L589	@,
	ldr	r1, [r3, #3656]	@ D.39059, g_DSPState
	cmp	r1, #0	@ D.39059,
	subeq	r3, r0, #6	@ D.39058, D.39057,
	clzeq	r3, r3	@ D.39058, D.39058
	moveq	r3, r3, lsr #5	@ D.39058, D.39058,
	bne	.L589	@,
.L594:
	clz	r1, r1	@ D.39058, D.39059
	mov	r1, r1, lsr #5	@ D.39058, D.39058,
	ands	r4, r1, ip	@ tmp156, D.39058, D.39058
	bne	.L606	@,
	ands	r1, r1, r3	@ tmp163, D.39058, D.39058
	moveq	r0, r1	@ D.39056, tmp163
	bne	.L607	@,
.L602:
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L605:
	ldr	r2, [sp, #48]	@ ScdLowdlyEnable, stCfgInfo.s32LowdlyEnable
	ldr	r1, [r5, #3644]	@ D.39059, g_DSPState
	sub	ip, r2, #1	@ D.39058, ScdLowdlyEnable,
	clz	ip, ip	@ D.39058, D.39058
	cmp	r1, #0	@ D.39059,
	mov	ip, ip, lsr #5	@ D.39058, D.39058,
	beq	.L596	@,
.L589:
	cmp	r1, #2	@ D.39059,
	movne	r3, #0	@, tmp141
	andeq	r3, ip, #1	@,, tmp141, D.39058
	cmp	r3, #0	@ tmp141,
	bne	.L592	@,
.L593:
	sub	r3, r0, #6	@ D.39058, D.39057,
	cmp	r1, #1	@ D.39059,
	cmpeq	r0, #6	@, D.39057,
	clz	r3, r3	@ D.39058, D.39058
	mov	r3, r3, lsr #5	@ D.39058, D.39058,
	bne	.L594	@,
.L592:
	str	r1, [sp]	@ D.39059,
	mov	r3, r0	@, D.39057
	ldr	r1, .L608+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39056,
	b	.L602	@
.L606:
	bl	WriteHexFile	@
	add	r5, r5, r6, lsl #2	@ tmp158, tmp170, ChanID,
	mov	r3, #1	@ tmp160,
	mov	r0, #0	@ D.39056,
	str	r3, [r5, #3644]	@ tmp160, g_DSPState
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L607:
	add	r5, r5, r6, lsl #2	@ tmp165, tmp170, ChanID,
	bl	WriteHexFile	@
	mov	r3, #2	@ tmp167,
	mov	r0, r4	@ D.39056, tmp156
	str	r3, [r5, #3644]	@ tmp167, g_DSPState
	b	.L602	@
.L600:
	mov	r2, ip	@ ScdLowdlyEnable, D.39058
	b	.L593	@
.L604:
	movw	r2, #3699	@,
	ldr	r1, .L608+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39056,
	b	.L602	@
.L609:
	.align	2
.L608:
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
	ldr	r3, .L615	@ tmp117,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	cmp	r3, #0	@ tmp118,
	beq	.L614	@,
	bl	SM_Reset	@
	adds	r0, r0, #0	@ D.39065,,
	movne	r0, #1	@ D.39065,
	rsb	r0, r0, #0	@ D.39064, D.39065
	ldmfd	sp!, {r4, pc}	@
.L614:
	mov	r0, r3	@, tmp118
	movw	r2, #3843	@,
	ldr	r3, .L615+4	@,
	ldr	r1, .L615+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39064,
	ldmfd	sp!, {r4, pc}	@
.L616:
	.align	2
.L615:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	mov	r0, #2	@,
	ldr	r1, .L630	@,
	bl	dprint_vfmw	@
	cmp	r4, #3	@ ChanID,
	bhi	.L625	@,
	ldr	r5, .L630+4	@ tmp128,
	ldr	r0, [r5, r4, asl #2]	@ D.39072, s_pstVfmwChan
	cmp	r0, #0	@ D.39072,
	beq	.L626	@,
	ldr	r3, [r0, #4]	@ _9->s32IsOpen, _9->s32IsOpen
	cmp	r3, #1	@ _9->s32IsOpen,
	bne	.L627	@,
	ldr	r0, .L630+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ D.39072, s_pstVfmwChan
	cmp	r0, #0	@ D.39072,
	beq	.L628	@,
	ldr	r3, [r0, #4]	@ _14->s32IsOpen, _14->s32IsOpen
	cmp	r3, #1	@ _14->s32IsOpen,
	bne	.L629	@,
	add	r0, r0, #210944	@, D.39072,
	mov	r1, r6	@, pImage
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReceiveImage	@
	subs	r7, r0, #1	@ D.39070,,
	ldr	r0, .L630+8	@,
	mvnne	r7, #0	@ D.39070,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	add	r3, r3, #225280	@ tmp149, tmp147,
	ldrb	r3, [r3, #2644]	@ zero_extendqisi2	@ D.39075, _25->stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r3, [r6, #336]	@ D.39075, pImage_21(D)->optm_inf.bAvsPlus
.L619:
	mov	r0, r7	@, D.39070
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L627:
	ldr	r3, .L630+12	@,
	movw	r2, #4079	@,
	ldr	r1, .L630+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ D.39070,
	b	.L619	@
.L629:
	movw	r2, #4093	@,
	ldr	r1, .L630+20	@,
	mov	r0, #0	@,
	mvn	r7, #0	@ D.39070,
	bl	dprint_vfmw	@
	ldr	r0, .L630+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L619	@
.L625:
	ldr	r3, .L630+24	@,
	movw	r2, #4075	@,
	ldr	r1, .L630+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ D.39070,
	b	.L619	@
.L626:
	ldr	r3, .L630+28	@,
	movw	r2, #4076	@,
	ldr	r1, .L630+16	@,
	mvn	r7, #0	@ D.39070,
	bl	dprint_vfmw	@
	b	.L619	@
.L628:
	movw	r2, #4086	@,
	ldr	r1, .L630+32	@,
	bl	dprint_vfmw	@
	ldr	r0, .L630+8	@,
	mvn	r7, #0	@ D.39070,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L619	@
.L631:
	.align	2
.L630:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L641	@,
	ldr	r6, .L647	@ tmp126,
	ldr	r0, [r6, r0, asl #2]	@ D.39085, s_pstVfmwChan
	cmp	r0, #0	@ D.39085,
	beq	.L642	@,
	ldr	r3, [r0, #4]	@ _8->s32IsOpen, _8->s32IsOpen
	cmp	r3, #1	@ _8->s32IsOpen,
	bne	.L643	@,
	cmp	r1, #0	@ pImage,
	mov	r5, r1	@ pImage, pImage
	beq	.L644	@,
	ldr	r3, [r1, #176]	@, pImage_12(D)->image_id
	mov	r2, r4	@, ChanID
	ldr	r1, .L647+4	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r0, .L647+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, r4, asl #2]	@ D.39085, s_pstVfmwChan
	cmp	r0, #0	@ D.39085,
	beq	.L645	@,
	ldr	r3, [r0, #4]	@ _17->s32IsOpen, _17->s32IsOpen
	cmp	r3, #1	@ _17->s32IsOpen,
	bne	.L646	@,
	add	r0, r0, #210944	@, D.39085,
	mov	r1, r5	@, pImage
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReleaseImage	@
	subs	r4, r0, #1	@ D.39083,,
	ldr	r0, .L647+8	@,
	mvnne	r4, #0	@ D.39083,
	bl	OSAL_SpinUnLockIRQ	@
.L634:
	mov	r0, r4	@, D.39083
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L646:
	movw	r2, #4187	@,
	ldr	r1, .L647+12	@,
	mov	r0, #0	@,
	mvn	r4, #0	@ D.39083,
	bl	dprint_vfmw	@
	ldr	r0, .L647+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L634	@
.L643:
	ldr	r3, .L647+16	@,
	movw	r2, #4172	@,
	ldr	r1, .L647+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.39083,
	b	.L634	@
.L641:
	ldr	r3, .L647+24	@,
	movw	r2, #4170	@,
	ldr	r1, .L647+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.39083,
	b	.L634	@
.L644:
	mov	r0, r1	@, pImage
	ldr	r3, .L647+28	@,
	movw	r2, #4173	@,
	ldr	r1, .L647+20	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.39083,
	b	.L634	@
.L642:
	ldr	r3, .L647+32	@,
	movw	r2, #4171	@,
	ldr	r1, .L647+20	@,
	mvn	r4, #0	@ D.39083,
	bl	dprint_vfmw	@
	b	.L634	@
.L645:
	movw	r2, #4180	@,
	ldr	r1, .L647+36	@,
	bl	dprint_vfmw	@
	ldr	r0, .L647+8	@,
	mvn	r4, #0	@ D.39083,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L634	@
.L648:
	.align	2
.L647:
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L650	@,
	ldr	r3, .L655	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.39096, s_pstVfmwChan
	cmp	r3, #0	@ D.39096,
	beq	.L650	@,
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	beq	.L653	@,
	mov	r3, r0	@, ChanId
	movw	r2, #4248	@,
	ldr	r1, .L655+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.39094,
	ldmfd	sp!, {r4, pc}	@
.L650:
	movw	r2, #4241	@,
	ldr	r1, .L655+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.39094,
	ldmfd	sp!, {r4, pc}	@
.L653:
	ldr	r0, [r3, #880]	@ D.39094, _6->eVidStd
	ldmfd	sp!, {r4, pc}	@
.L656:
	.align	2
.L655:
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
	cmp	r0, #3	@ ChanId,
	bhi	.L669	@,
	ldr	r3, .L679	@ tmp120,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r3, r0, asl #2]	@ D.39107, s_pstVfmwChan
	cmp	r5, #0	@ D.39107,
	moveq	r3, r5	@ D.39104, D.39107
	beq	.L658	@,
	ldr	r3, [r5, #4]	@ _21->s32IsOpen, _21->s32IsOpen
	cmp	r3, #1	@ _21->s32IsOpen,
	beq	.L678	@,
.L674:
	mov	r3, #0	@ D.39104,
.L658:
	mov	r0, r3	@, D.39104
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L669:
	mov	r3, #0	@ D.39104,
	mov	r0, r3	@, D.39104
	bx	lr	@
.L678:
	ldr	r3, [r5, #8]	@ _21->s32IsRun, _21->s32IsRun
	cmp	r3, #1	@ _21->s32IsRun,
	bne	.L674	@,
	ldr	r3, [r5, #880]	@ _21->eVidStd, _21->eVidStd
	cmp	r3, #13	@ _21->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _21->eVidStd
	b	.L674	@
.L661:
	.word	.L660
	.word	.L667
	.word	.L663
	.word	.L667
	.word	.L674
	.word	.L667
	.word	.L667
	.word	.L674
	.word	.L674
	.word	.L674
	.word	.L667
	.word	.L667
	.word	.L667
	.word	.L667
.L667:
	add	r3, r5, #208896	@ tmp139, D.39107,
	ldr	r4, [r3, #2948]	@ pDecParam,
.L659:
	cmp	r4, #0	@ pDecParam,
	beq	.L674	@,
	bl	OSAL_GetTimeInMs	@
	mov	r3, r4	@ D.39104, pDecParam
	str	r0, [r5, #28]	@, _21->u32timeLastDecParamReady
	mov	r0, r3	@, D.39104
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L660:
	add	r3, r5, #208896	@ tmp125, D.39107,
	ldr	r4, [r3, #3304]	@ pDecParam, _21->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	b	.L659	@
.L663:
	add	r3, r5, #208896	@ tmp129, D.39107,
	ldr	r4, [r3, #3980]	@ pDecParam, _21->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	b	.L659	@
.L680:
	.align	2
.L679:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	mov	r2, r0	@ ChanId, ChanId
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	bhi	.L682	@,
	ldr	r5, .L694	@ tmp125,
	ldr	r3, [r5, r0, asl #2]	@ D.39113, s_pstVfmwChan
	cmp	r3, #0	@ D.39113,
	beq	.L682	@,
	ldr	r1, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r1, #1	@ _6->s32IsOpen,
	bne	.L685	@,
	ldr	r6, [r3, #8]	@ D.39114, _6->s32IsRun
	cmp	r6, #1	@ D.39114,
	beq	.L686	@,
.L685:
	ldr	r1, .L694+4	@,
	mov	r0, #22	@,
	mov	r4, #0	@ D.39111,
	bl	dprint_vfmw	@
.L684:
	mov	r0, r4	@, D.39111
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L682:
	mov	r3, r2	@, ChanId
	ldr	r1, .L694+8	@,
	movw	r2, #4375	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ D.39111,
	mov	r0, r4	@, D.39111
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L686:
	str	r0, [sp, #4]	@ ChanId, %sfp
	bl	VCTRL_GetDecParam	@
	ldr	r2, [sp, #4]	@ ChanId, %sfp
	subs	r7, r0, #0	@ pDecParam,
	beq	.L692	@,
	ldr	r2, [r5, r2, asl #2]	@ D.39113, s_pstVfmwChan
	mov	r3, #0	@ tmp132,
	mov	r4, r3	@ D.39111, tmp132
	str	r3, [r2, #680]	@ tmp132, _17->s32CountNoDecparamFlag
	str	r3, [r2, #684]	@ tmp132, _17->u32NoDecparamStartTime
	b	.L684	@
.L692:
	ldr	r8, [r5, r2, asl #2]	@ D.39113, s_pstVfmwChan
	ldr	r4, [r8, #680]	@ D.39111, _11->s32CountNoDecparamFlag
	cmp	r4, #0	@ D.39111,
	beq	.L693	@,
	str	r2, [sp, #4]	@ ChanId, %sfp
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sp, #4]	@ ChanId, %sfp
	ldr	r3, [r5, r2, asl #2]	@ D.39113, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.39115, _24->u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.39115
	bls	.L689	@,
	rsb	r0, r2, r0	@ D.39115, D.39115, tmp
	cmp	r0, #40	@ D.39115,
	movls	r4, r7	@ D.39111, pDecParam
	bls	.L684	@,
.L689:
	str	r7, [r3, #680]	@ pDecParam, _24->s32CountNoDecparamFlag
	mov	r4, r6	@ D.39111, D.39114
	str	r7, [r3, #684]	@ pDecParam, _24->u32NoDecparamStartTime
	b	.L684	@
.L693:
	str	r6, [r8, #680]	@ D.39114, _11->s32CountNoDecparamFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r8, #684]	@, _11->u32NoDecparamStartTime
	b	.L684	@
.L695:
	.align	2
.L694:
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L703	@,
	ldr	r3, .L705	@ tmp128,
	ldr	r3, [r3, r0, asl #2]	@ D.39123, s_pstVfmwChan
	cmp	r3, #0	@ D.39123,
	beq	.L704	@,
	cmn	r3, #152	@ D.39123,
	cmpne	r1, #0	@, pstMemRec,
	beq	.L701	@,
	ldr	r2, [r3, #148]	@ _7->s32OneChanMem, _7->s32OneChanMem
	cmp	r2, #1	@ _7->s32OneChanMem,
	bne	.L701	@,
	ldr	r2, [r3, #160]	@ D.39125, MEM[(struct MEM_RECORD_S *)_7 + 152B].PhyAddr
	str	r2, [r1, #8]	@ D.39125, pstMemRec_11(D)->PhyAddr
	ldr	r2, [r3, #156]	@ D.39126, MEM[(struct MEM_RECORD_S *)_7 + 152B].VirAddr
	clz	r0, r2	@ D.39124, D.39126
	str	r2, [r1, #4]	@ D.39126, pstMemRec_11(D)->VirAddr
	ldr	r3, [r3, #164]	@ D.39125, MEM[(struct MEM_RECORD_S *)_7 + 152B].Length
	mov	r0, r0, lsr #5	@ D.39124, D.39124,
	rsb	r0, r0, #0	@ D.39121, D.39124
	str	r3, [r1, #12]	@ D.39125, pstMemRec_11(D)->Length
	ldmfd	sp!, {r4, pc}	@
.L701:
	mvn	r0, #0	@ D.39121,
	ldmfd	sp!, {r4, pc}	@
.L703:
	ldr	r3, .L705+4	@,
	movw	r2, #4433	@,
	ldr	r1, .L705+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39121,
	ldmfd	sp!, {r4, pc}	@
.L704:
	mov	r0, r3	@, D.39123
	movw	r2, #4434	@,
	ldr	r3, .L705+12	@,
	ldr	r1, .L705+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39121,
	ldmfd	sp!, {r4, pc}	@
.L706:
	.align	2
.L705:
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
	ldr	r3, .L718	@ tmp113,
	ldr	r3, [r3, r0, asl #2]	@ D.39132, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #13	@ _4->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _4->eVidStd
	b	.L707	@
.L710:
	.word	.L709
	.word	.L717
	.word	.L712
	.word	.L717
	.word	.L707
	.word	.L717
	.word	.L717
	.word	.L707
	.word	.L707
	.word	.L707
	.word	.L717
	.word	.L717
	.word	.L717
	.word	.L717
.L717:
	add	r3, r3, #208896	@ tmp137, D.39132,
	mov	r2, #0	@ tmp138,
	str	r2, [r3, #2948]	@ tmp138,
.L707:
	bx	lr	@
.L712:
	add	r3, r3, #208896	@ tmp122, D.39132,
	mov	r2, #0	@ tmp123,
	str	r2, [r3, #3980]	@ tmp123, _4->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	bx	lr	@
.L709:
	add	r3, r3, #208896	@ tmp116, D.39132,
	mov	r2, #0	@ tmp117,
	str	r2, [r3, #3304]	@ tmp117, _4->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	bx	lr	@
.L719:
	.align	2
.L718:
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L740	@,
	ldr	r1, .L743	@ tmp162,
	ldr	r3, [r1, r0, asl #2]	@ D.39140, s_pstVfmwChan
	cmp	r3, #0	@ D.39140,
	beq	.L741	@,
	ldr	r0, [r3, #8]	@ D.39138, _9->s32IsRun
	cmp	r0, #1	@ D.39138,
	bne	.L742	@,
	ldr	r2, [r3, #880]	@ _9->eVidStd, _9->eVidStd
	cmp	r2, #14	@ _9->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _9->eVidStd
	b	.L735	@
.L726:
	.word	.L725
	.word	.L727
	.word	.L728
	.word	.L729
	.word	.L722
	.word	.L731
	.word	.L732
	.word	.L735
	.word	.L735
	.word	.L735
	.word	.L733
	.word	.L733
	.word	.L733
	.word	.L734
	.word	.L722
.L735:
	mov	r0, #0	@ D.39138,
.L722:
	ldmfd	sp!, {r4, pc}	@
.L729:
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L731:
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_GetImageBuffer	@
.L732:
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_GetImageBuffer	@
.L733:
	ldr	r2, [r1, #3640]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	ldmeqfd	sp!, {r4, pc}	@
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_GetImageBuffer	@
.L734:
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_GetImageBuffer	@
.L725:
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L727:
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_GetImageBuffer	@
.L728:
	add	r0, r3, #210944	@, D.39140,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L742:
	ldr	r3, .L743+4	@,
	movw	r2, #4878	@,
	ldr	r1, .L743+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39138,
	ldmfd	sp!, {r4, pc}	@
.L740:
	ldr	r3, .L743+12	@,
	movw	r2, #4876	@,
	ldr	r1, .L743+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39138,
	ldmfd	sp!, {r4, pc}	@
.L741:
	mov	r0, r3	@, D.39140
	movw	r2, #4877	@,
	ldr	r3, .L743+16	@,
	ldr	r1, .L743+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39138,
	ldmfd	sp!, {r4, pc}	@
.L744:
	.align	2
.L743:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L751	@,
	ldr	r3, .L754	@ tmp120,
	ldr	r3, [r3, r0, asl #2]	@ D.39155, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r2, #1	@ _7->s32IsOpen,
	bne	.L752	@,
	cmp	r1, #0	@ pArgs,
	beq	.L753	@,
	ldr	r2, [r1]	@ D.39156, *pArgs_10(D)
	mov	r0, #0	@ D.39153,
	str	r2, [r3, #1408]	@ D.39156, _7->stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L752:
	ldr	r3, .L754+4	@,
	movw	r2, #4983	@,
	ldr	r1, .L754+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39153,
	ldmfd	sp!, {r4, pc}	@
.L751:
	ldr	r3, .L754+12	@,
	movw	r2, #4982	@,
	ldr	r1, .L754+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39153,
	ldmfd	sp!, {r4, pc}	@
.L753:
	mov	r0, r1	@, pArgs
	ldr	r3, .L754+16	@,
	movw	r2, #4984	@,
	ldr	r1, .L754+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39153,
	ldmfd	sp!, {r4, pc}	@
.L755:
	.align	2
.L754:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L762	@,
	ldr	r3, .L765	@ tmp120,
	ldr	r0, [r3, r0, asl #2]	@ D.39162, s_pstVfmwChan
	ldr	r3, [r0, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L763	@,
	cmp	r1, #0	@ pArgs,
	beq	.L764	@,
	mov	r2, #20	@,
	add	r0, r0, #1424	@, D.39162,
	bl	memcpy	@
	mov	r0, #0	@ D.39160,
	ldmfd	sp!, {r4, pc}	@
.L763:
	ldr	r3, .L765+4	@,
	movw	r2, #4995	@,
	ldr	r1, .L765+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39160,
	ldmfd	sp!, {r4, pc}	@
.L762:
	ldr	r3, .L765+12	@,
	movw	r2, #4994	@,
	ldr	r1, .L765+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39160,
	ldmfd	sp!, {r4, pc}	@
.L764:
	mov	r0, r1	@, pArgs
	ldr	r3, .L765+16	@,
	movw	r2, #4996	@,
	ldr	r1, .L765+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39160,
	ldmfd	sp!, {r4, pc}	@
.L766:
	.align	2
.L765:
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
	ldr	r5, .L774	@ tmp141,
	ldr	r2, [r5, r0, asl #2]	@ tmp128, s_pstVfmwChan
	cmp	r2, #0	@ tmp128,
	beq	.L770	@,
	mov	r1, sp	@,
	mov	r4, r0	@ ChanID, ChanID
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L770	@,
	ldr	r3, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r3, #16	@ SmInstInfo.SegNum,
	bgt	.L771	@,
	ldr	r3, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r3, #524288	@ SmInstInfo.TotalSegSize,
	ble	.L770	@,
.L771:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	subs	r0, r0, #1	@ ret,,
	mvnne	r0, #0	@ ret,
	cmp	r0, #0	@ ret,
	bne	.L769	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, r4, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #28]	@ _18->u32timeLastDecParamReady, _18->u32timeLastDecParamReady
	rsb	r0, r3, r0	@ timePeriod, _18->u32timeLastDecParamReady,
	cmp	r0, #50	@ timePeriod,
	movls	r0, #0	@ D.39171,
	mvnhi	r0, #0	@ D.39171,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L770:
	mvn	r0, #0	@ D.39171,
.L769:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L775:
	.align	2
.L774:
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
	ldr	r3, .L777	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ _4->s32NoStreamFlag, _4->s32NoStreamFlag
	subs	r0, r0, #1	@, _4->s32NoStreamFlag,
	movne	r0, #1	@,
	bx	lr	@
.L778:
	.align	2
.L777:
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
	cmp	r0, #3	@ ChanID,
	bhi	.L785	@,
	ldr	r3, .L786	@ tmp121,
	ldr	r3, [r3, r0, asl #2]	@ D.39184, s_pstVfmwChan
	cmp	r3, #0	@ D.39184,
	beq	.L785	@,
	ldr	r2, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r2, #0	@ _5->s32IsOpen,
	beq	.L785	@,
	ldr	r2, [r3, #8]	@ _5->s32IsRun, _5->s32IsRun
	cmp	r2, #0	@ _5->s32IsRun,
	beq	.L785	@,
	ldr	r2, [r3, #12]	@ _5->s32Priority, _5->s32Priority
	cmp	r2, #0	@ _5->s32Priority,
	beq	.L785	@,
	ldr	r0, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r0, #19	@ _5->eVidStd,
	movne	r0, #0	@ D.39182,
	mvneq	r0, #0	@ D.39182,
	bx	lr	@
.L785:
	mvn	r0, #0	@ D.39182,
	bx	lr	@
.L787:
	.align	2
.L786:
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
	ldr	r6, [r0, #352]	@ D.39210, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.39210, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	ldr	r0, .L806	@ ivtmp.643,
	mov	r2, #0	@ i,
	str	r5, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
.L792:
	ldr	r1, [r0], #4	@ D.39212, MEM[base: _26, offset: 0B]
	cmp	r1, #0	@ D.39212,
	add	r3, r1, #210944	@ D.39213, D.39212,
	add	r3, r3, #896	@ D.39213, D.39213,
	beq	.L789	@,
	cmp	r4, r3	@ pCtx, D.39213
	beq	.L805	@,
.L789:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #4	@ i,
	bne	.L792	@,
	mvn	r3, #0	@ tmp127,
	str	r3, [r4, #360]	@ tmp127, pCtx_4(D)->ChanID
.L790:
	ldr	r1, .L806+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.39209,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L805:
	cmn	r2, #1	@ i,
	str	r2, [r4, #360]	@ i, pCtx_4(D)->ChanID
	beq	.L790	@,
	mov	r0, #1	@ D.39209,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L807:
	.align	2
.L806:
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
	beq	.L809	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp125,
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp125, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp125, pImg_10->p_usrdat
.L809:
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
	beq	.L846	@,
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	beq	.L817	@,
	mov	r1, r0	@, PicBufID
	mov	r2, #0	@,
	mov	r0, r8	@, ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.39240,
.L816:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L817:
	ldr	r0, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pSrc,
	beq	.L847	@,
.L818:
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L848	@,
	str	r7, [r4, #176]	@ PicBufID, pLogic_31->image_id
	mov	r9, #0	@ tmp205,
	ldrd	r2, [r6, #8]	@ D.39243, pstUsrdecFrame,
	mov	r10, #1	@ tmp204,
	strd	r2, [r4]	@ D.39243, pLogic_31->SrcPts
	ldrd	r2, [r6, #8]	@ D.39243, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ D.39243, pLogic,
	ldrd	r2, [r6, #8]	@ D.39243, pstUsrdecFrame,
	strd	r2, [r4, #16]	@ D.39243, pLogic,
	ldrd	r2, [r6, #8]	@ D.39243, pstUsrdecFrame,
	str	r10, [r4, #68]	@ tmp204, pLogic_31->DispEnableFlag
	str	r9, [r4, #72]	@ tmp205, pLogic_31->DispFrameDistance
	strd	r2, [r4, #24]	@ D.39243, pLogic,
	str	r9, [r4, #76]	@ tmp205, pLogic_31->DistanceBeforeFirstFrame
	str	r9, [r4, #80]	@ tmp205, pLogic_31->GopNum
	ldr	r3, [r6, #28]	@ D.39241, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	str	r3, [r4, #88]	@ D.39241, pLogic_31->top_luma_phy_addr
	mov	r0, r3	@, D.39241
	str	r3, [r4, #120]	@ D.39241, pLogic_31->luma_2d_phy_addr
	str	r3, [r4, #104]	@ D.39241, pLogic_31->luma_phy_addr
	ldr	r3, [r6, #36]	@ D.39241, pstUsrdecFrame_15(D)->s32CbPhyAddr
	str	r3, [r4, #92]	@ D.39241, pLogic_31->top_chrom_phy_addr
	str	r3, [r4, #124]	@ D.39241, pLogic_31->chrom_2d_phy_addr
	str	r3, [r4, #108]	@ D.39241, pLogic_31->chrom_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r3, r0	@ D.39244,
	ldr	r0, [r4, #92]	@, pLogic_31->top_chrom_phy_addr
	str	r3, [r4, #48]	@ D.39244, pLogic_31->luma_2d_vir_addr
	str	r3, [r4, #32]	@ D.39244, pLogic_31->luma_vir_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #88]	@ pLogic_31->top_luma_phy_addr, pLogic_31->top_luma_phy_addr
	ldr	r3, [r4, #92]	@ pLogic_31->top_chrom_phy_addr, pLogic_31->top_chrom_phy_addr
	movw	r1, #11296	@ tmp224,
	str	r0, [r4, #52]	@ __p, pLogic_31->chrom_2d_vir_addr
	mov	ip, r0	@ __p,
	str	r0, [r4, #36]	@ __p, pLogic_31->chrom_vir_addr
	cmp	r0, r9	@ __p,
	ldr	r0, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	add	r2, r2, r0	@ D.39241, pLogic_31->top_luma_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r2, [r4, #96]	@ D.39241, pLogic_31->btm_luma_phy_addr
	ldr	r2, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #128]	@ tmp205, pLogic_31->is_fld_save
	add	r3, r3, r2	@ D.39241, pLogic_31->top_chrom_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r3, [r4, #100]	@ D.39241, pLogic_31->btm_chrom_phy_addr
	ldr	r3, [r6, #20]	@ pstUsrdecFrame_15(D)->s32YWidth, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #144]	@ pstUsrdecFrame_15(D)->s32YWidth, pLogic_31->image_width
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	str	r3, [r4, #148]	@ pstUsrdecFrame_15(D)->s32YHeight, pLogic_31->image_height
	ldr	r3, [r6, #20]	@ D.39242, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #152]	@ D.39242, pLogic_31->disp_width
	mov	r2, r3, lsr r10	@ D.39242, D.39242,
	ldr	r3, [r6, #24]	@ D.39242, pstUsrdecFrame_15(D)->s32YHeight
	str	r2, [r4, #160]	@ D.39242, pLogic_31->disp_center_x
	str	r3, [r4, #156]	@ D.39242, pLogic_31->disp_height
	mov	r3, r3, lsr r10	@ D.39242, D.39242,
	str	r3, [r4, #164]	@ D.39242, pLogic_31->disp_center_y
	ldr	r3, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #168]	@ tmp205, pLogic_31->frame_rate
	str	r9, [r4, #180]	@ tmp205, pLogic_31->error_level
	str	r3, [r4, #172]	@ pstUsrdecFrame_15(D)->s32LumaStride, pLogic_31->image_stride
	str	r10, [r4, #208]	@ tmp204, pLogic_31->chroma_idc
	str	r9, [r4, #256]	@ tmp205, pLogic_31->line_num_phy_addr
	str	r9, [r4, #56]	@ tmp205, pLogic_31->line_num_vir_addr
	str	r1, [r4, #140]	@ tmp224, pLogic_31->format
	beq	.L820	@,
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	cmp	r3, r10	@ pstUsrdecFrame_15(D)->s32YHeight,
	bgt	.L833	@,
	b	.L834	@
.L850:
	ldr	r2, [r4, #144]	@ __n, pLogic_31->image_width
	cmp	r2, #0	@ __n,
	bne	.L849	@,
.L824:
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	add	r9, r9, #1	@ y, y,
	ldr	r2, [r4, #172]	@ pLogic_31->image_stride, pLogic_31->image_stride
	add	r3, r3, r3, lsr #31	@ tmp258, pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight,
	add	ip, ip, r2	@ __p, __p, pLogic_31->image_stride
	cmp	r9, r3, asr #1	@ y, tmp258,
	bge	.L834	@,
.L833:
	ldr	r3, [r6]	@ D.39245, pstUsrdecFrame_15(D)->enFmt
	cmp	r3, #0	@ D.39245,
	beq	.L850	@,
	cmp	r3, #1	@ D.39245,
	beq	.L824	@,
	cmp	r3, #3	@ D.39245,
	beq	.L851	@,
	cmp	r3, #2	@ D.39245,
	beq	.L852	@,
	cmp	r3, #4	@ D.39245,
	bne	.L835	@,
	ldr	r3, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, #0	@ pLogic_31->image_width,
	movne	r1, r5	@ ivtmp.662, pSrc
	movne	r3, #0	@ x,
	beq	.L832	@,
.L831:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.39246, MEM[base: pSrc_190, index: _119, step: 2, offset: 0B]
	mov	r2, ip	@ D.39244, __p
	add	r1, r1, #4	@ ivtmp.662, ivtmp.662,
	strb	r0, [r2, r3]!	@ D.39246, MEM[base: __p_191, index: _119, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.39246, MEM[base: _120, offset: 1B]
	strb	r0, [r2, #1]	@ D.39246, MEM[base: _114, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, r2	@ x, pLogic_31->image_width
	bcc	.L831	@,
.L832:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	b	.L824	@
.L849:
	mov	r0, ip	@, __p
	mov	r1, #128	@,
	bl	memset	@
	mov	ip, r0	@ __p,
	b	.L824	@
.L851:
	ldr	r3, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, #0	@ pLogic_31->image_width,
	movne	r1, r5	@ ivtmp.654, pSrc
	movne	r3, #0	@ x,
	beq	.L828	@,
.L827:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.39246, MEM[base: pSrc_190, index: _205, step: 2, offset: 0B]
	mov	r2, ip	@ D.39244, __p
	add	r1, r1, #4	@ ivtmp.654, ivtmp.654,
	strb	r0, [r2, r3]!	@ D.39246, MEM[base: __p_191, index: _205, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.39246, MEM[base: _203, offset: 1B]
	strb	r0, [r2, #1]	@ D.39246, MEM[base: _201, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_31->image_width, pLogic_31->image_width
	cmp	r3, r2	@ x, pLogic_31->image_width
	bcc	.L827	@,
.L828:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride
	b	.L824	@
.L834:
	mov	r5, #18	@ tmp228,
	mov	r2, #1	@,
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	str	r5, [r4, #300]	@ tmp228, pLogic_31->ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	ldr	r3, .L853	@ tmp229,
	str	r4, [sp]	@ pLogic,
	mov	r1, r5	@, tmp228
	mov	r0, r8	@, ChanID
	ldr	r2, [r3, r8, asl #2]	@ D.39248, s_pstVfmwChan
	add	r2, r2, #210944	@ tmp231, D.39248,
	add	r3, r2, #904	@, tmp231,
	add	r2, r2, #896	@, tmp231,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L822	@,
	mov	r0, #0	@ D.39240,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L852:
	mov	r1, r5	@, pSrc
	mov	r0, ip	@, __p
	ldr	r2, [r4, #144]	@, pLogic_31->image_width
	bl	memcpy	@
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	mov	ip, r0	@ __p,
	b	.L824	@
.L847:
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	bne	.L818	@,
	ldr	r2, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	ldr	r1, .L853+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39240,
	b	.L816	@
.L835:
	mvn	r0, #0	@ D.39240,
	b	.L816	@
.L822:
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
	mvn	r0, #0	@ D.39240,
	b	.L816	@
.L846:
	ldr	r2, [r6, #28]	@, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	mov	r0, #0	@,
	ldr	r1, .L853+8	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.39240, PicBufID
	b	.L816	@
.L848:
	movw	r2, #5171	@,
	ldr	r1, .L853+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39240,
	b	.L816	@
.L820:
	mov	r0, r10	@, tmp204
	ldr	r1, .L853+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39240,
	b	.L816	@
.L854:
	.align	2
.L853:
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
	ldr	r7, .L880	@ tmp130,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r7, r0, asl #2]	@ D.39262, s_pstVfmwChan
	cmp	r3, #0	@ D.39262,
	beq	.L874	@,
	ldr	r6, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r6, #18	@ _5->eVidStd,
	bne	.L875	@,
	ldr	r3, [r3, #820]	@ _5->s32UsrdecFrameNum, _5->s32UsrdecFrameNum
	cmp	r3, #2	@ _5->s32UsrdecFrameNum,
	ble	.L876	@,
	mov	r8, r1	@ pMem, pMem
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.39264,
	bne	.L877	@,
	mov	r1, r0	@, D.39264
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r9, r0, #0	@ id,
	blt	.L878	@,
	mov	r1, r9	@, id
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, r9	@, id
	ldr	r1, .L880+4	@,
	mov	r4, r0	@ pLf,
	mov	r0, r6	@, _5->eVidStd
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pLf,
	beq	.L879	@,
	ldr	r2, [r4, #408]	@ D.39265, pLf_18->pstDecodeFs
	cmp	r2, #0	@ D.39265,
	beq	.L863	@,
	ldr	r3, [r4, #412]	@ D.39265, pLf_18->pstDispOutFs
	cmp	r3, #0	@ D.39265,
	beq	.L863	@,
	ldr	r1, [r4, #416]	@ D.39265, pLf_18->pstTfOutFs
	cmp	r1, #0	@ D.39265,
	beq	.L863	@,
	ldr	ip, [r1, #12]	@ _23->PhyAddr, _23->PhyAddr
	mov	r0, r6	@, _5->eVidStd
	ldr	r3, [r3, #12]	@ _22->PhyAddr, _22->PhyAddr
	ldr	r2, [r2, #12]	@ _21->PhyAddr, _21->PhyAddr
	ldr	r1, .L880+8	@,
	str	ip, [sp]	@ _23->PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #408]	@ pLf_18->pstDecodeFs, pLf_18->pstDecodeFs
	mov	r0, #0	@ D.39261,
	ldr	r3, [r3, #12]	@ D.39264, _28->PhyAddr
	str	r3, [r8]	@ D.39264, pMem_30(D)->PhyAddr
	ldr	r3, [r7, r5, asl #2]	@ tmp147, s_pstVfmwChan
	ldr	r3, [r3, #816]	@ D.39264, _32->s32UsrdecFrameSize
	str	r3, [r8, #8]	@ D.39264, pMem_30(D)->Length
.L857:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L877:
	ldr	r1, .L880+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39261,
	b	.L857	@
.L875:
	ldr	r1, .L880+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39261,
	b	.L857	@
.L876:
	ldr	r1, .L880+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39261,
	b	.L857	@
.L863:
	ldr	r1, .L880+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39261,
	b	.L857	@
.L878:
	ldr	r1, .L880+28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39261,
	b	.L857	@
.L874:
	mov	r0, r3	@, D.39262
	movw	r2, #5331	@,
	ldr	r3, .L880+32	@,
	ldr	r1, .L880+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39261,
	b	.L857	@
.L879:
	movw	r2, #5367	@,
	ldr	r1, .L880+40	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39261,
	b	.L857	@
.L881:
	.align	2
.L880:
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
	ldr	r3, .L894	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, [r3, r0, asl #2]	@ D.39277, s_pstVfmwChan
	cmp	r0, #0	@ D.39277,
	beq	.L891	@,
	cmp	r1, #0	@ pUsrdecFrame,
	mov	r5, r1	@ pUsrdecFrame, pUsrdecFrame
	beq	.L892	@,
	ldr	r2, [r0, #880]	@ D.39278, _5->eVidStd
	cmp	r2, #18	@ D.39278,
	bne	.L893	@,
	mov	r2, #56	@,
	add	r0, r0, #824	@, D.39277,
	bl	memcpy	@
	mov	r1, r5	@, pUsrdecFrame
	mov	r0, r4	@, ChanID
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.39276
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, .L894+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39276,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L893:
	ldr	r1, .L894+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39276,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L892:
	mov	r0, r1	@, pUsrdecFrame
	ldr	r3, .L894+12	@,
	movw	r2, #5421	@,
	ldr	r1, .L894+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39276,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L891:
	ldr	r3, .L894+20	@,
	movw	r2, #5420	@,
	ldr	r1, .L894+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39276,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L895:
	.align	2
.L894:
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
	ldr	r2, .L921	@ tmp181,
	ldr	r1, [r2, r0, asl #2]	@ D.39290, s_pstVfmwChan
	cmp	r1, #0	@ D.39290,
	beq	.L919	@,
	ldr	r3, [r1, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r3, #18	@ _4->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _4->eVidStd
	b	.L896	@
.L900:
	.word	.L899
	.word	.L901
	.word	.L902
	.word	.L903
	.word	.L904
	.word	.L905
	.word	.L906
	.word	.L896
	.word	.L896
	.word	.L896
	.word	.L907
	.word	.L907
	.word	.L907
	.word	.L908
	.word	.L904
	.word	.L896
	.word	.L896
	.word	.L896
	.word	.L909
.L907:
	ldr	r3, [r2, #3640]	@ g_VdmCharacter, g_VdmCharacter
	ldr	r2, .L921	@ tmp161,
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L920	@,
.L904:
	ldr	r3, [r2, #248]	@ D.39295, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ D.39295,
	bxeq	lr	@
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	bx	r3	@ D.39295
.L905:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	DIVX3DEC_Init	@
.L906:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	AVSDEC_Init	@
.L908:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	VP8DEC_Init	@
.L909:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	USERDEC_Init	@
.L899:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	H264DEC_Init	@
.L901:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	VC1DEC_Init	@
.L902:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	MPEG4DEC_Init	@
.L903:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	MPEG2DEC_Init	@
.L896:
	bx	lr	@
.L920:
	add	r0, r1, #210944	@, D.39290,
	add	r1, r1, #888	@, D.39290,
	add	r0, r0, #896	@,,
	b	VP6DEC_Init	@
.L919:
	mov	r0, r1	@, D.39290
	ldr	r3, .L921+4	@,
	movw	r2, #5448	@,
	ldr	r1, .L921+8	@,
	b	dprint_vfmw	@
.L922:
	.align	2
.L921:
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
	ldr	r0, [r1, #64]	@ D.39314, pChanOption_4(D)->s32SlotWidth
	cmp	r0, #0	@ D.39314,
	beq	.L924	@,
	ldr	r3, [r1, #68]	@ D.39314, pChanOption_4(D)->s32SlotHeight
	cmp	r3, #0	@ D.39314,
	beq	.L924	@,
	mul	r3, r3, r0	@ D.39314, D.39314, D.39314
	ldr	lr, [r1, #60]	@ pChanOption_4(D)->s32DisplayFrameNum, pChanOption_4(D)->s32DisplayFrameNum
	movw	ip, #9160	@ tmp129,
	mov	r1, #0	@ tmp128,
	movt	ip, 8	@ tmp129,
	mov	r0, r1	@ D.39313, tmp128
	stmib	r2, {r1, ip}	@ pDetailMemSize,,
	str	r1, [r2, #12]	@ tmp128, pDetailMemSize_14(D)->PmvDetailMem
	mla	r3, lr, r3, r3	@ D.39314, pChanOption_4(D)->s32DisplayFrameNum, D.39314, D.39314
	mov	r3, r3, asl #1	@ D.39314, D.39314,
	str	r3, [r2]	@ D.39314, pDetailMemSize_14(D)->VdhDetailMem
	ldmfd	sp!, {r4, pc}	@
.L924:
	ldr	r1, .L931	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39313,
	ldmfd	sp!, {r4, pc}	@
.L932:
	.align	2
.L931:
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
	blt	.L934	@,
	ldr	r3, [r0, #12]	@ pChanOption_4(D)->s32MaxWidth, pChanOption_4(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxWidth,
	ble	.L934	@,
	ldr	r3, [r0, #16]	@ pChanOption_4(D)->s32MaxHeight, pChanOption_4(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxHeight,
	ble	.L934	@,
	ldr	r3, [r0, #56]	@ pChanOption_4(D)->s32SCDBufSize, pChanOption_4(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_4(D)->s32SCDBufSize,
	blt	.L934	@,
	ldr	r3, [r0, #44]	@ pChanOption_4(D)->s32SupportH264, pChanOption_4(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_4(D)->s32SupportH264,
	beq	.L939	@,
.L937:
	mov	r0, #0	@ D.39320,
	ldmfd	sp!, {r4, pc}	@
.L939:
	ldr	r3, [r0, #20]	@ pChanOption_4(D)->s32MaxSliceNum, pChanOption_4(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSliceNum,
	ble	.L934	@,
	ldr	r3, [r0, #24]	@ pChanOption_4(D)->s32MaxSpsNum, pChanOption_4(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSpsNum,
	ble	.L934	@,
	ldr	r3, [r0, #28]	@ pChanOption_4(D)->s32MaxPpsNum, pChanOption_4(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxPpsNum,
	bgt	.L937	@,
.L934:
	ldr	r1, .L940	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39320,
	ldmfd	sp!, {r4, pc}	@
.L941:
	.align	2
.L940:
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
	ldr	ip, .L946	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ FrmNum, FrmNum
	ldr	ip, [ip, #100]	@ D.39326, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.39326,
	mvneq	r0, #0	@ D.39325,
	beq	.L943	@,
	mov	r0, r1	@ Width, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.39326
.L943:
	mul	r4, r4, r0	@ D.39327, FrmNum, D.39325
	str	r4, [r5]	@ D.39327, *pChanPmvSize_11(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L947:
	.align	2
.L946:
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
	subs	r6, r0, #0	@ D.39330,
	bne	.L956	@,
	ldr	r3, [r4, #40]	@ pChanOption_7(D)->s32SupportBFrame, pChanOption_7(D)->s32SupportBFrame
	ldr	r10, [r4, #32]	@ D.39331, pChanOption_7(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_7(D)->s32SupportBFrame,
	moveq	r7, #1	@ PmvNum,
	addeq	fp, r10, r7	@ D.39330, D.39331,
	bne	.L959	@,
.L951:
	ldr	r9, .L961	@ tmp183,
	ldr	r0, [r4, #12]	@ D.39331, pChanOption_7(D)->s32MaxWidth
	ldr	r8, [r4, #60]	@ D.39331, pChanOption_7(D)->s32DisplayFrameNum
	ldr	r2, [r9, #100]	@ D.39334, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	ldr	r1, [r4, #16]	@ D.39331, pChanOption_7(D)->s32MaxHeight
	cmp	r2, #0	@ D.39334,
	mvneq	r0, #0	@ D.39330,
	beq	.L952	@,
	blx	r2	@ D.39334
.L952:
	mul	r3, r0, fp	@ ChanPmvSize, D.39330, D.39330
	str	r3, [r5, #12]	@ ChanPmvSize, pDetailMemSize_23(D)->PmvDetailMem
	ldr	ip, [r9, #36]	@ D.39332, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39332,
	beq	.L954	@,
	ldr	r3, [r4, #16]	@ pChanOption_7(D)->s32MaxHeight, pChanOption_7(D)->s32MaxHeight
	mov	r0, #16	@ tmp158,
	ldr	r2, [r4, #12]	@ pChanOption_7(D)->s32MaxWidth, pChanOption_7(D)->s32MaxWidth
	add	r1, sp, #24	@ tmp159,,
	str	r0, [sp, #20]	@ tmp158,
	add	r8, r8, r10	@ FrameNum, D.39331, D.39331
	str	r1, [sp, #16]	@ tmp159,
	mvn	r0, #0	@ tmp160,
	mov	r1, #0	@ tmp161,
	str	r0, [sp, #12]	@ tmp160,
	str	r1, [sp, #8]	@ tmp161,
	mov	r0, #1	@,
	str	r8, [sp, #4]	@ FrameNum,
	mvn	r1, #-2147483648	@,
	str	r7, [sp]	@ PmvNum,
	blx	ip	@ D.39332
	cmp	r0, #0	@,
	bne	.L954	@,
	ldr	r3, [sp, #28]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #47104	@ D.39331, MemArrange.TotalMemUsed,
	add	r3, r3, #16	@ D.39331, D.39331,
	str	r3, [r5]	@ D.39331, pDetailMemSize_23(D)->VdhDetailMem
	ldr	r3, [r4, #56]	@ pChanOption_7(D)->s32SCDBufSize, pChanOption_7(D)->s32SCDBufSize
	add	r3, r3, #32768	@ D.39331, pChanOption_7(D)->s32SCDBufSize,
	str	r3, [r5, #4]	@ D.39331, pDetailMemSize_23(D)->ScdDetailMem
	ldr	r3, [r4, #44]	@ D.39331, pChanOption_7(D)->s32SupportH264
	cmp	r3, #0	@ D.39331,
	beq	.L960	@,
	ldr	lr, [r4, #24]	@ pChanOption_7(D)->s32MaxSpsNum, pChanOption_7(D)->s32MaxSpsNum
	mov	r0, #4000	@ tmp174,
	ldr	r2, [r4, #20]	@ pChanOption_7(D)->s32MaxSliceNum, pChanOption_7(D)->s32MaxSliceNum
	movw	r3, #4060	@ tmp171,
	ldr	r1, [r4, #28]	@ pChanOption_7(D)->s32MaxPpsNum, pChanOption_7(D)->s32MaxPpsNum
	mov	ip, #2208	@ tmp180,
	mul	r0, r0, lr	@ D.39333, tmp174, pChanOption_7(D)->s32MaxSpsNum
	mla	r3, r3, r2, r0	@ D.39333, tmp171, pChanOption_7(D)->s32MaxSliceNum, D.39333
	add	r3, r3, #532480	@ D.39333, D.39333,
	add	r3, r3, #968	@ D.39333, D.39333,
	mla	r3, ip, r1, r3	@ D.39333, tmp180, pChanOption_7(D)->s32MaxPpsNum, D.39333
	str	r3, [r5, #8]	@ D.39333, pDetailMemSize_23(D)->ChanCtxDetailMem
.L949:
	mov	r0, r6	@, D.39330
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L959:
	add	r7, r10, #1	@ PmvNum, D.39331,
	cmp	r7, #17	@ PmvNum,
	mov	fp, r7	@ D.39330, PmvNum
	movge	r7, #17	@ PmvNum,
	b	.L951	@
.L960:
	mov	r6, r3	@ D.39330, D.39331
	movw	r2, #9160	@ tmp168,
	movt	r2, 8	@ tmp168,
	mov	r0, r6	@, D.39330
	str	r2, [r5, #8]	@ tmp168, pDetailMemSize_23(D)->ChanCtxDetailMem
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L954:
	movw	r3, #5638	@,
	ldr	r2, .L961+4	@,
	ldr	r1, .L961+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.39330,
	mov	r0, r6	@, D.39330
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L956:
	mvn	r6, #0	@ D.39330,
	b	.L949	@
.L962:
	.align	2
.L961:
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
	beq	.L964	@,
	ldr	ip, .L982	@ tmp132,
	ldr	r4, [r1, #32]	@ D.39339, pChanOption_8(D)->s32MaxRefFrameNum
	ldr	r5, [r1, #60]	@ D.39339, pChanOption_8(D)->s32DisplayFrameNum
	ldr	r6, [ip, #3660]	@ D.39339, extra_ref
	ldr	r7, [ip, #3664]	@ D.39339, extra_disp
	add	ip, r4, r6	@ TempRefNum, D.39339, D.39339
	cmp	ip, #16	@ TempRefNum,
	add	lr, r5, r7	@ TempDispNum, D.39339, D.39339
	movge	ip, #16	@ TempRefNum,
	orrs	r8, ip, lr	@ tmp154, TempRefNum, TempDispNum
	bmi	.L977	@,
	clz	r3, r3	@ tmp150, flag
	cmp	r0, #25	@ eCapLevel,
	str	ip, [r1, #32]	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum
	mov	r3, r3, lsr #5	@ tmp150, tmp150,
	moveq	r3, #0	@ tmp150,
	cmp	r3, #0	@ tmp150,
	str	lr, [r1, #60]	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum
	bne	.L978	@,
.L964:
	ldr	r3, [r1, #4]	@ D.39341, pChanOption_8(D)->Purpose
	cmp	r3, #2	@ D.39341,
	bhi	.L979	@,
	beq	.L980	@,
	cmp	r3, #1	@ D.39341,
	beq	.L981	@,
.L966:
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L980:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VCTRL_GetMemSize_onFramePath	@
.L981:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VCTRL_GetMemSize_onDecode	@
.L978:
	ldr	r1, .L982+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L966	@
.L979:
	ldr	r1, .L982+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L966	@
.L977:
	str	r7, [sp, #4]	@ D.39339,
	mov	r3, r6	@, D.39339
	str	r5, [sp]	@ D.39339,
	mov	r2, r4	@, D.39339
	ldr	r1, .L982+12	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	b	.L966	@
.L983:
	.align	2
.L982:
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
	mov	r3, r0, asl #5	@ tmp312, eCapLevel,
	mov	r5, r0, asl #2	@ tmp311, eCapLevel,
	ldr	r10, .L1008	@ tmp314,
	mov	fp, r2	@ ScdMemSize, ScdMemSize
	str	r3, [sp, #52]	@ tmp312, %sfp
	rsb	r3, r5, r3	@ tmp166, tmp311, tmp312
	add	r3, r10, r3	@ tmp167, tmp314, tmp166
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
	b	.L985	@
.L987:
	.word	.L1001
	.word	.L1001
	.word	.L1001
	.word	.L1001
	.word	.L1001
	.word	.L988
	.word	.L988
	.word	.L988
.L1001:
	mov	r3, #3	@ MinDnrFspNum,
.L986:
	ldr	r8, .L1008+4	@ tmp313,
	rsb	r3, r3, r9	@ s32MaxRefFrameNum, MinDnrFspNum, nMinFrame
	cmp	r3, #15	@ s32MaxRefFrameNum,
	ldr	r4, [r8, #3660]	@ extra_ref, extra_ref
	bic	r4, r4, r4, asr #31	@ extra_ref_tmp, extra_ref
	str	r4, [r8, #3660]	@ extra_ref_tmp, extra_ref
	movgt	r4, #0	@ extra_ref_tmp,
	bgt	.L989	@,
	add	r3, r3, r4	@ D.39350, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r3, #16	@ D.39350,
	rsbgt	r3, r3, #16	@ D.39350, D.39350,
	addgt	r4, r4, r3	@ extra_ref_tmp, extra_ref_tmp, D.39350
.L989:
	add	r3, ip, r4	@ TempPmv, nPmv, extra_ref_tmp
	ldr	r7, [r8, #3664]	@ D.39350, extra_disp
	cmp	r3, #0	@ TempPmv,
	ble	.L1005	@,
	cmp	r3, #17	@ TempPmv,
	movge	r3, #17	@ nPmv,
	str	r3, [sp, #40]	@ nPmv, %sfp
.L991:
	cmp	r6, #23	@ eCapLevel,
	bhi	.L992	@,
	ldr	r3, [sp, #44]	@ nMiddleFrame, %sfp
	add	r7, r4, r7	@ D.39350, extra_ref_tmp, D.39350
	add	r2, r7, r9	@ nMinFrame, D.39350, nMinFrame
	add	r1, r3, r7	@ nMiddleFrame, nMiddleFrame, D.39350
	ldr	r3, [sp, #48]	@ nFluentFrame, %sfp
	cmp	r2, #0	@ nMinFrame,
	cmpgt	r1, #0	@, nMiddleFrame,
	add	r7, r3, r7	@ nFluentFrame, nFluentFrame, D.39350
	movle	r3, #1	@ tmp201,
	movgt	r3, #0	@ tmp201,
	cmp	r7, #0	@ nFluentFrame,
	orrle	r3, r3, #1	@,, tmp207, tmp201
	cmp	r3, #0	@ tmp207,
	streq	r7, [sp, #48]	@ nFluentFrame, %sfp
	streq	r1, [sp, #44]	@ nMiddleFrame, %sfp
	moveq	r9, r2	@ nMinFrame, nMinFrame
	bne	.L1006	@,
.L992:
	cmp	r6, #32	@ eCapLevel,
	bhi	.L1007	@,
	ldr	r6, .L1008+8	@ tmp211,
	ldr	ip, [r6, #36]	@ D.39352, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39352,
	beq	.L996	@,
	ldr	r3, [sp, #52]	@ tmp312, %sfp
	mov	r0, #0	@ tmp231,
	str	r9, [sp, #4]	@ nMinFrame,
	add	r8, sp, #56	@ tmp229,,
	rsb	r5, r5, r3	@ tmp217, tmp311, tmp312
	ldr	r3, [sp, #40]	@ nPmv, %sfp
	add	r4, r10, r5	@ tmp218, tmp314, tmp217
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
	blx	ip	@ D.39352
	ldr	r10, .L1008	@ tmp213,
	cmp	r0, #0	@ ret
	bne	.L996	@,
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	add	r3, r3, #47104	@ D.39350, MemArrange.TotalMemUsed,
	add	r3, r3, r9	@ D.39350, D.39350,
	str	r3, [r2]	@ D.39350, *VdmMemSize_53(D)
	ldr	r3, [r4, #24]	@ tmp243, CapItem
	add	r3, r3, #32768	@ D.39350, tmp243,
	str	r3, [fp]	@ D.39350, *ScdMemSize_61(D)
	ldr	ip, [r6, #36]	@ D.39352, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39352,
	beq	.L998	@,
	ldr	lr, [sp, #44]	@ nMiddleFrame, %sfp
	mvn	r1, #-2147483648	@,
	ldr	r3, [r4, #4]	@ tmp253, CapItem
	ldr	r2, [r10, r5]	@ tmp260, CapItem
	str	lr, [sp, #4]	@ nMiddleFrame,
	ldr	lr, [sp, #40]	@ nPmv, %sfp
	str	r0, [sp, #8]	@ ret,
	mov	r0, #1	@,
	str	r9, [sp, #20]	@ tmp228,
	str	lr, [sp]	@ nPmv,
	str	r8, [sp, #16]	@ tmp229,
	str	r7, [sp, #12]	@ tmp230,
	blx	ip	@ D.39352
	subs	lr, r0, #0	@ ret,
	bne	.L998	@,
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	add	r3, r3, #47104	@ D.39350, MemArrange.TotalMemUsed,
	add	r3, r3, #16	@ D.39350, D.39350,
	str	r3, [r2, #4]	@ D.39350, MEM[(HI_S32 *)VdmMemSize_53(D) + 4B]
	ldr	r3, [r4, #24]	@ tmp276, CapItem
	add	r3, r3, #32768	@ D.39350, tmp276,
	str	r3, [fp, #4]	@ D.39350, MEM[(HI_S32 *)ScdMemSize_61(D) + 4B]
	ldr	ip, [r6, #36]	@ D.39352, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39352,
	beq	.L1000	@,
	ldr	r3, [r4, #4]	@ tmp286, CapItem
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ ret,
	mov	r0, #1	@,
	ldr	lr, [sp, #48]	@ nFluentFrame, %sfp
	ldr	r2, [r10, r5]	@ tmp293, CapItem
	str	r9, [sp, #20]	@ tmp228,
	str	lr, [sp, #4]	@ nFluentFrame,
	ldr	lr, [sp, #40]	@ nPmv, %sfp
	str	r8, [sp, #16]	@ tmp229,
	str	r7, [sp, #12]	@ tmp230,
	str	lr, [sp]	@ nPmv,
	blx	ip	@ D.39352
	cmp	r0, #0	@ ret
	bne	.L1000	@,
	ldr	r3, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [sp, #36]	@ VdmMemSize, %sfp
	add	r3, r3, #47104	@ D.39350, MemArrange.TotalMemUsed,
	add	r3, r3, #16	@ D.39350, D.39350,
	str	r3, [r2, #8]	@ D.39350, MEM[(HI_S32 *)VdmMemSize_53(D) + 8B]
	ldr	r3, [r4, #24]	@ tmp309, CapItem
	add	r3, r3, #32768	@ D.39350, tmp309,
	str	r3, [fp, #8]	@ D.39350, MEM[(HI_S32 *)ScdMemSize_61(D) + 8B]
.L994:
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L988:
	mov	r3, #1	@ MinDnrFspNum,
	b	.L986	@
.L1006:
	ldr	r1, [r8, #3664]	@ D.39350, extra_disp
	mov	r3, r4	@, extra_ref_tmp
	ldr	r0, [sp, #48]	@ nFluentFrame, %sfp
	mov	r2, r9	@, nMinFrame
	str	r4, [sp, #20]	@ extra_ref_tmp,
	str	r1, [sp, #24]	@ D.39350,
	str	r1, [sp, #12]	@ D.39350,
	str	r1, [sp]	@ D.39350,
	ldr	r1, [sp, #44]	@ nMiddleFrame, %sfp
	str	r0, [sp, #16]	@ nFluentFrame,
	mov	r0, #32	@,
	str	r4, [sp, #8]	@ extra_ref_tmp,
	str	r1, [sp, #4]	@ nMiddleFrame,
	ldr	r1, .L1008+12	@,
	bl	dprint_vfmw	@
	b	.L992	@
.L985:
	mov	r3, #6	@ MinDnrFspNum,
	b	.L986	@
.L996:
	movw	r2, #5837	@,
	ldr	r1, .L1008+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39349,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L998:
	movw	r2, #5855	@,
	ldr	r1, .L1008+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39349,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1000:
	movw	r2, #5873	@,
	ldr	r1, .L1008+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39349,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1005:
	mov	r3, r4	@, extra_ref_tmp
	mov	r2, ip	@, nPmv
	ldr	r1, .L1008+20	@,
	mov	r0, #32	@,
	str	ip, [sp, #40]	@ nPmv, %sfp
	bl	dprint_vfmw	@
	ldr	ip, [sp, #40]	@ nPmv, %sfp
	cmp	ip, #17	@ nPmv,
	movlt	r3, ip	@ nPmv, nPmv
	movge	r3, #17	@ nPmv,
	str	r3, [sp, #40]	@ nPmv, %sfp
	b	.L991	@
.L1007:
	mov	r2, r6	@, eCapLevel
	ldr	r1, .L1008+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39349,
	b	.L994	@
.L1009:
	.align	2
.L1008:
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
	beq	.L1011	@,
	ldr	r3, .L1046	@ tmp141,
	ldr	r3, [r3, #32]	@ D.39361, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.39361,
	beq	.L1041	@,
	mov	r0, #0	@,
	blx	r3	@ D.39361
.L1014:
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
.L1011:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].Length
	ldr	r6, [r4, #24]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #20]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	bne	.L1042	@,
.L1015:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].Length
	ldr	r6, [r4, #40]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #36]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].VirAddr
	bne	.L1043	@,
.L1016:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].Length
	ldr	r6, [r4, #72]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #68]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].VirAddr
	bne	.L1044	@,
.L1017:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].Length
	ldr	r6, [r4, #56]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #52]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].VirAddr
	bne	.L1045	@,
.L1018:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #92]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].Length
	ldr	r6, [r4, #88]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #84]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].VirAddr
	beq	.L1019	@,
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L1019:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r2, .L1046+4	@,
	ldr	r1, .L1046+8	@,
	mov	r0, #70	@,
	bl	osal_free_irq	@
	ldr	r2, .L1046+4	@,
	ldr	r1, .L1046+12	@,
	mov	r0, #73	@,
	bl	osal_free_irq	@
	ldr	r2, .L1046+4	@,
	ldr	r1, .L1046+16	@,
	mov	r0, #93	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1045:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #48	@, pstDrvMem,
	bl	__memzero	@
	b	.L1018	@
.L1044:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #64	@, pstDrvMem,
	bl	__memzero	@
	b	.L1017	@
.L1043:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #32	@, pstDrvMem,
	bl	__memzero	@
	b	.L1016	@
.L1042:
	bl	SM_CloseSCDDrv	@
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, r4, r1	@, pstDrvMem,
	bl	__memzero	@
	b	.L1015	@
.L1041:
	mov	r0, r3	@, D.39361
	movw	r2, #6131	@,
	ldr	r1, .L1046+20	@,
	bl	dprint_vfmw	@
	b	.L1014	@
.L1047:
	.align	2
.L1046:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+3668
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
	bne	.L1049	@,
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
	bne	.L1081	@,
	ldr	r5, .L1083	@ tmp165,
	ldr	r3, [r5, #16]	@ D.39382, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.39382,
	beq	.L1081	@,
	blx	r3	@ D.39382
	cmp	r0, #0	@,
	bne	.L1081	@,
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
	bne	.L1062	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #20600	@,
	mov	r2, r7	@, __p
	mov	r1, #4096	@,
	movt	r0, 4127	@,
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.39381,
	bne	.L1062	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.39381
	add	r0, sp, #12	@ tmp214,,
	ldr	r2, .L1083+4	@,
	mov	r1, #20	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.39382, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.39382,
	beq	.L1058	@,
	blx	r3	@ D.39382
	subs	r2, r0, #0	@ Size,
	ble	.L1058	@,
	str	r6, [sp]	@ D.39381,
	mov	r1, r6	@, D.39381
	add	r0, sp, #12	@ tmp215,,
	mov	r3, r4	@, pstDrvMem
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1062	@,
	ldr	r2, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.39385, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.39385,
	beq	.L1062	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	blx	r3	@ D.39385
	subs	r5, r0, #0	@ D.39381,
	bne	.L1062	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ __p, pstDrvMem,
	bl	get_scd_msg_size	@
	str	r5, [sp]	@ D.39381,
	mov	r1, r5	@, D.39381
	mov	r3, r6	@, __p
	mov	r2, r0	@,
	ldr	r0, .L1083+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1081	@,
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
	bne	.L1081	@,
	ldr	r5, .L1083+12	@ tmp201,
	mov	r2, #128	@,
	ldr	r3, .L1083+16	@,
	mov	r0, #70	@,
	ldr	r1, .L1083+20	@,
	str	r5, [sp]	@ tmp201,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L1081	@,
	str	r5, [sp]	@ tmp201,
	mov	r2, #128	@,
	ldr	r3, .L1083+24	@,
	mov	r0, #73	@,
	ldr	r1, .L1083+28	@,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.39381,
	bne	.L1081	@,
	str	r5, [sp]	@ tmp201,
	mov	r2, #128	@,
	ldr	r3, .L1083+32	@,
	mov	r0, #93	@,
	ldr	r1, .L1083+36	@,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.39380
	bne	.L1082	@,
.L1069:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1082:
	bl	DNR_Close	@
	mov	r0, r7	@ D.39380, D.39381
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1081:
	mov	r0, r6	@, __p
.L1080:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39380,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1058:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L1062:
	mov	r0, r7	@, __p
	b	.L1080	@
.L1049:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39380,
	b	.L1069	@
.L1084:
	.align	2
.L1083:
	.word	g_vdm_hal_fun_ptr
	.word	.LC134
	.word	.LC135
	.word	.LANCHOR0+3668
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
	ldr	r5, .L1120	@ tmp301,
	ldr	r4, [r5, #16]	@ D.39402, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.39402,
	bne	.L1106	@,
	ldr	r7, .L1120+4	@ tmp300,
	mov	r2, #1024	@,
	mov	r6, r0	@ event_report, event_report
	ldr	r0, .L1120+8	@,
	str	r4, [sp, #4]	@ D.39402, p
	ldr	r1, [r7]	@, saved_command_line
	bl	strlcpy	@
	ldr	r1, .L1120+12	@,
	ldr	r0, .L1120+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.39400,
	str	r0, [sp, #4]	@ D.39400, p
	beq	.L1088	@,
	ldr	r1, .L1120+16	@,
	add	r0, sp, #4	@ tmp304,,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1108	@,
	add	r0, sp, #4	@ tmp305,,
	ldr	r1, .L1120+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1117	@,
	mov	r2, r4	@, D.39402
	mov	r1, r4	@, D.39402
	bl	simple_strtol	@
	mov	r2, r0	@ D.39399, D.39403
	str	r0, [r5, #3660]	@ D.39403, extra_ref
.L1092:
	add	r3, r2, #4992	@ D.39404, D.39399,
	movw	r1, #10000	@ tmp183,
	add	r3, r3, #8	@ D.39404, D.39404,
	movw	r8, #5000	@ tmp181,
	cmp	r3, r1	@ D.39404, tmp183
	bhi	.L1093	@,
	cmp	r2, r8	@ D.39399, tmp181
	movw	r3, #60536	@ tmp185,
.L1116:
	movt	r3, 65535	@ tmp190,
	movge	r2, r8	@ D.39402, tmp181
	cmp	r2, r3	@ D.39402, tmp190
	movlt	r2, r3	@ D.39402, tmp190
.L1089:
	str	r2, [r5, #3660]	@ D.39402, extra_ref
.L1091:
	mov	r2, #1024	@,
	ldr	r1, [r7]	@, saved_command_line
	ldr	r0, .L1120+8	@,
	mov	r8, #0	@ tmp192,
	str	r8, [sp, #4]	@ tmp192, p
	bl	strlcpy	@
	ldr	r1, .L1120+24	@,
	ldr	r0, .L1120+8	@,
	bl	strstr	@
	ldr	r9, .L1120	@ tmp195,
	cmp	r0, r8	@ D.39400,
	str	r0, [sp, #4]	@ D.39400, p
	beq	.L1094	@,
	ldr	r1, .L1120+16	@,
	add	r0, sp, #4	@ tmp306,,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1095	@,
	add	r0, sp, #4	@ tmp307,,
	ldr	r1, .L1120+20	@,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1118	@,
	mov	r2, r8	@, tmp192
	mov	r1, r8	@, tmp2
	bl	simple_strtol	@
	mov	r2, r0	@ D.39399, D.39403
	str	r0, [r9, #3664]	@ D.39403, extra_disp
.L1098:
	add	r3, r2, #4992	@ D.39404, D.39399,
	movw	r1, #10000	@ tmp213,
	add	r3, r3, #8	@ D.39404, D.39404,
	movw	r8, #5000	@ tmp211,
	cmp	r3, r1	@ D.39404, tmp213
	bhi	.L1099	@,
	cmp	r2, r8	@ D.39399, tmp211
	movw	r3, #60536	@ tmp215,
	movt	r3, 65535	@ tmp215,
	movlt	r4, r2	@ D.39402, D.39399
	movge	r4, r8	@ D.39402, tmp211
	cmp	r4, r3	@ D.39402, tmp215
	movlt	r4, r3	@ D.39402, tmp215
.L1095:
	str	r4, [r5, #3664]	@ D.39402, extra_disp
.L1097:
	ldr	r5, .L1120+28	@ tmp302,
	mov	r3, #0	@ tmp222,
	str	r3, [sp, #4]	@ tmp222, p
	ldr	r4, [r5, #-3488]	@ D.39401, extra_cmd
	cmp	r4, r3	@ D.39401,
	beq	.L1100	@,
	ldr	r3, .L1120+32	@ tmp228,
	ubfx	r2, r4, #1, #1	@ tmp231, D.39401,,
	and	r1, r4, #1	@ tmp226, D.39401,
	ubfx	r4, r4, #2, #1	@ tmp236, D.39401,,
	strb	r1, [r5, #-3484]	@ tmp226, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp231, g_not_direct_8x8_inference_flag
	strb	r4, [r5, #-3483]	@ tmp236, g_not_allow_H264FullPictureRepair_flag
.L1101:
	mov	r1, #152	@,
	ldr	r0, .L1120+36	@,
	bl	__memzero	@
	mov	r1, #16	@,
	ldr	r0, .L1120	@,
	bl	__memzero	@
	mov	r1, #16	@,
	ldr	r0, .L1120+40	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	ldr	r3, .L1120+28	@ tmp273,
	mov	r1, #75497472	@,
	ldreq	r2, .L1120+44	@ tmp277,
	mov	r0, #-2013265920	@,
	ldr	r4, .L1120	@ tmp278,
	streq	r2, [r3, #-3464]	@ tmp277, g_event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	mov	r1, #16	@,
	ldr	r0, .L1120+48	@,
	bl	__memzero	@
	add	r0, r4, #64	@, tmp278,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1106	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	add	r0, r4, #272	@, tmp278,
	bl	OSAL_InitEvent	@
	ldr	r2, .L1120+52	@,
	ldr	r1, .L1120+56	@,
	add	r0, r4, #52	@, tmp278,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.39399,
	bne	.L1107	@,
	add	r0, r4, #52	@, tmp278,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp295,
	str	r3, [r4, #16]	@ tmp295, s_VfmwCTrl.s32IsVCTRLOpen
.L1087:
	mov	r0, r5	@, D.39399
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1100:
	ldr	r1, [r7]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1120+8	@,
	bl	strlcpy	@
	ldr	r1, .L1120+60	@,
	ldr	r0, .L1120+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.39400,
	str	r0, [sp, #4]	@ D.39400, p
	beq	.L1101	@,
	ldr	r1, .L1120+16	@,
	add	r0, sp, #4	@ tmp308,,
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r5, #-3488]	@ D.39401, extra_cmd
	beq	.L1103	@,
	add	r0, sp, #4	@ tmp309,,
	ldr	r1, .L1120+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1119	@,
	mov	r2, r4	@, D.39401
	mov	r1, r4	@, tmp2
	bl	simple_strtol	@
	str	r0, [r5, #-3488]	@ D.39401, extra_cmd
.L1103:
	ldr	r3, .L1120+32	@ tmp260,
	ubfx	r2, r0, #1, #1	@ tmp263, D.39401,,
	and	r1, r0, #1	@ tmp258, D.39401,
	ubfx	r0, r0, #2, #1	@ tmp268, D.39401,,
	strb	r1, [r5, #-3484]	@ tmp258, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp263, g_not_direct_8x8_inference_flag
	strb	r0, [r5, #-3483]	@ tmp268, g_not_allow_H264FullPictureRepair_flag
	b	.L1101	@
.L1094:
	ldr	r2, [r9, #3664]	@ D.39399, extra_disp
	b	.L1098	@
.L1088:
	ldr	r2, [r5, #3660]	@ D.39399, extra_ref
	b	.L1092	@
.L1099:
	ldr	r1, .L1120+64	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r4, [r5, #3664]	@ extra_disp, extra_disp
	movw	r3, #60536	@ tmp220,
	cmp	r4, r8	@ extra_disp, tmp211
	movt	r3, 65535	@ tmp220,
	movge	r4, r8	@ D.39402, tmp211
	cmp	r4, r3	@ D.39402, tmp220
	movlt	r4, r3	@ D.39402, tmp220
	b	.L1095	@
.L1093:
	ldr	r1, .L1120+68	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #3660]	@ extra_ref, extra_ref
	movw	r3, #60536	@ tmp190,
	cmp	r2, r8	@ extra_ref, tmp181
	b	.L1116	@
.L1108:
	mov	r2, r4	@ D.39402, D.39402
	b	.L1089	@
.L1106:
	mvn	r5, #0	@ D.39399,
	mov	r0, r5	@, D.39399
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1117:
	movw	r3, #7132	@,
	ldr	r2, .L1120+72	@,
	ldr	r1, .L1120+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1091	@
.L1118:
	movw	r3, #7173	@,
	ldr	r2, .L1120+80	@,
	ldr	r1, .L1120+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1097	@
.L1107:
	add	r0, r4, #64	@, tmp278,
	mvn	r5, #0	@ D.39399,
	bl	CloseDrivers	@
	b	.L1087	@
.L1119:
	movw	r3, #7223	@,
	ldr	r2, .L1120+84	@,
	ldr	r1, .L1120+76	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1101	@
.L1121:
	.align	2
.L1120:
	.word	.LANCHOR0
	.word	saved_command_line
	.word	.LANCHOR0+3672
	.word	.LC136
	.word	.LC137
	.word	.LC138
	.word	.LC141
	.word	.LANCHOR3
	.word	.LANCHOR2
	.word	.LANCHOR0+16
	.word	.LANCHOR3-3480
	.word	VCTRL_EventReport
	.word	.LANCHOR0+3644
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
	mov	r3, r2, asl #1	@ D.39418, Threshould,
	movw	r6, #21846	@ tmp124,
	cmp	r2, #0	@ Threshould,
	movt	r6, 21845	@ tmp124,
	add	r5, r2, #7	@ tmp119, Threshould,
	smull	r6, r7, r3, r6	@ tmp123, D.39418, tmp124
	movge	r5, r2	@ Threshould, Threshould
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r5, asr #3	@ tmp120, Threshould,
	mov	r6, r0	@ CurMode, CurMode
	mov	r4, r2	@ Threshould, Threshould
	str	r2, [sp]	@ Threshould,
	mov	r8, r1	@ StreamAmount, StreamAmount
	str	r1, [sp, #4]	@ StreamAmount,
	sub	r3, r7, r3, asr #31	@,, D.39418,
	ldr	r1, .L1131	@,
	mov	r2, r5	@, tmp120
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	cmp	r6, #3	@ CurMode,
	beq	.L1129	@,
	cmp	r4, r8	@ Threshould, StreamAmount
	movge	r4, r6	@ CurMode, CurMode
	blt	.L1130	@,
.L1124:
	mov	r2, r6	@, CurMode
	mov	r3, r4	@, CurMode
	ldr	r1, .L1131+4	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, CurMode
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1130:
	ldr	r1, .L1131+8	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
.L1128:
	mov	r4, #3	@ CurMode,
	b	.L1124	@
.L1129:
	cmp	r5, r8	@ tmp120, StreamAmount
	ble	.L1128	@,
	ldr	r1, .L1131+12	@,
	mov	r0, #30	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ CurMode,
	b	.L1124	@
.L1132:
	.align	2
.L1131:
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
	ldr	ip, .L1142	@ ivtmp.704,
	mov	r2, #0	@ i,
.L1136:
	ldr	r1, [ip], #4	@ D.39437, MEM[base: _14, offset: 0B]
	cmp	r1, #0	@ D.39437,
	add	r3, r1, #210944	@ D.39438, D.39437,
	add	r3, r3, #896	@ D.39438, D.39438,
	beq	.L1134	@,
	cmp	r0, r3	@ pCtx, D.39438
	beq	.L1137	@,
.L1134:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #4	@ i,
	bne	.L1136	@,
	mvn	r0, #0	@ D.39436,
	bx	lr	@
.L1137:
	mov	r0, r2	@ D.39436, i
	bx	lr	@
.L1143:
	.align	2
.L1142:
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
	ldr	ip, .L1156	@ ivtmp.717,
	mov	r2, #0	@ i,
	str	lr, [sp, #-4]!	@,
	.save {lr}
.L1148:
	ldr	r3, [ip], #4	@ D.39454, MEM[base: _20, offset: 0B]
	cmp	r3, #0	@ D.39454,
	beq	.L1145	@,
	ldr	r1, [r3, #176]	@ D.39455, _4->stChanMem_vdh.PhyAddr
	cmp	r1, r0	@ D.39455, PhyAddr
	bgt	.L1146	@,
	ldr	lr, [r3, #180]	@ _4->stChanMem_vdh.Length, _4->stChanMem_vdh.Length
	add	r1, r1, lr	@ D.39455, D.39455, _4->stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, D.39455
	blt	.L1150	@,
.L1146:
	ldr	r1, [r3, #192]	@ D.39455, _4->stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, D.39455
	blt	.L1145	@,
	ldr	r3, [r3, #196]	@ _4->stChanMem_scd.Length, _4->stChanMem_scd.Length
	add	r1, r1, r3	@ D.39455, D.39455, _4->stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, D.39455
	blt	.L1150	@,
.L1145:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #4	@ i,
	bne	.L1148	@,
	mvn	r0, #0	@ D.39453,
	ldr	pc, [sp], #4	@
.L1150:
	mov	r0, r2	@ D.39453, i
	ldr	pc, [sp], #4	@
.L1157:
	.align	2
.L1156:
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
	ldr	r6, .L1182	@ tmp240,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	ip, [r6, r0, asl #2]	@ D.39459, s_pstVfmwChan
	ldr	r1, [ip, #32]	@ D.39460, _10->stChanCfg.eVidStd
	cmp	r1, #1	@ D.39460,
	beq	.L1177	@,
	sub	r3, r1, #2	@ D.39466, D.39466,
	cmp	r1, #6	@ D.39466,
	cmpne	r3, #1	@, D.39466,
	bls	.L1170	@,
.L1160:
	ldrd	r2, [r4, #32]	@ D.39462, pSegMan,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp220,
	cmp	r3, r1	@ D.39462,
	cmpeq	r2, r0	@ D.39462, tmp220
	beq	.L1178	@,
	add	r1, ip, #944	@ tmp224, D.39459,
	strd	r2, [r1]	@ D.39462, _10->stSynExtraData.pts
.L1169:
	ldrd	r8, [r4, #48]	@ D.39462, pSegMan,
	add	r5, ip, #960	@ tmp226, D.39459,
	add	lr, ip, #976	@ tmp228, D.39459,
	ldr	r1, .L1182+4	@,
	mov	r0, #29	@,
	strd	r8, [r5]	@ D.39462, _10->stSynExtraData.Usertag
	ldrd	r6, [r4, #56]	@ D.39462, pSegMan,
	strd	r6, [lr]	@ D.39462, _10->stSynExtraData.DispTime
	ldr	lr, [r4, #64]	@ D.39463, pSegMan_20(D)->CurrSeg.DispEnableFlag
	str	lr, [ip, #992]	@ D.39463, _10->stSynExtraData.DispEnableFlag
	ldr	lr, [r4, #68]	@ D.39463, pSegMan_20(D)->CurrSeg.DispFrameDistance
	str	lr, [ip, #996]	@ D.39463, _10->stSynExtraData.DispFrameDistance
	ldr	lr, [r4, #72]	@ D.39463, pSegMan_20(D)->CurrSeg.DistanceBeforeFirstFrame
	str	lr, [ip, #1000]	@ D.39463, _10->stSynExtraData.DistanceBeforeFirstFrame
	ldr	lr, [r4, #76]	@ D.39463, pSegMan_20(D)->CurrSeg.GopNum
	str	lr, [ip, #1016]	@ D.39463, _10->stSynExtraData.GopNum
	strd	r8, [sp]	@ D.39462,
	bl	dprint_vfmw	@
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1177:
	add	r3, ip, #208896	@ tmp161, D.39459,
	ldr	r3, [r3, #2944]	@ MEM[(struct VC1_CTX_S *)_10 + 211840B].pstExtraData, MEM[(struct VC1_CTX_S *)_10 + 211840B].pstExtraData
	ldr	r1, [r3, #388]	@ _12->StdExt.Vc1Ext.IsAdvProfile, _12->StdExt.Vc1Ext.IsAdvProfile
	sxtb	r1, r1	@ _12->StdExt.Vc1Ext.IsAdvProfile, _12->StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #1	@ _12->StdExt.Vc1Ext.IsAdvProfile,
	bne	.L1160	@,
.L1170:
	add	r0, ip, #1264	@, D.39459,
	add	r2, r4, #8	@, pSegMan,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L1161	@,
	ldr	ip, [r6, r5, asl #2]	@ D.39459, s_pstVfmwChan
	add	lr, ip, #960	@ tmp238, D.39459,
	ldr	r3, [ip, #32]	@ _41->stChanCfg.eVidStd, _41->stChanCfg.eVidStd
	cmp	r3, #3	@ _41->stChanCfg.eVidStd,
	beq	.L1179	@,
	ldrd	r2, [lr, #-8]	@ D.39462, tmp238,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp176,
	cmp	r3, r1	@ D.39462,
	cmpeq	r2, r0	@ D.39462, tmp176
	beq	.L1180	@,
	add	r1, ip, #944	@ tmp180, D.39459,
	strd	r2, [r1]	@ D.39462, _41->stSynExtraData.pts
.L1163:
	add	r7, ip, #976	@ tmp187, D.39459,
	mvn	r0, #0	@ tmp183,
	mvn	r1, #0	@,
	strd	r0, [lr, #-8]	@ tmp183, tmp238,
	ldrd	r10, [r7, #-8]	@ _41->stSynExtraData.NextUsertag, tmp187,
	add	r8, ip, #992	@ tmp192, D.39459,
	ldr	r1, .L1182+8	@,
	mov	r0, #29	@,
	strd	r10, [lr]	@ _41->stSynExtraData.NextUsertag, _41->stSynExtraData.Usertag
	ldrd	r8, [r8, #-8]	@ _41->stSynExtraData.NextDispTime, tmp192,
	strd	r8, [r7]	@ _41->stSynExtraData.NextDispTime, _41->stSynExtraData.DispTime
	ldr	r9, [ip, #1004]	@ _41->stSynExtraData.NextDispEnableFlag, _41->stSynExtraData.NextDispEnableFlag
	ldr	r8, [ip, #1008]	@ _41->stSynExtraData.NextDispFrameDistance, _41->stSynExtraData.NextDispFrameDistance
	ldr	r7, [ip, #1012]	@ _41->stSynExtraData.NextDistanceBeforeFirstFrame, _41->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	lr, [ip, #1020]	@ _41->stSynExtraData.NextGopNum, _41->stSynExtraData.NextGopNum
	str	r9, [ip, #992]	@ _41->stSynExtraData.NextDispEnableFlag, _41->stSynExtraData.DispEnableFlag
	str	r8, [ip, #996]	@ _41->stSynExtraData.NextDispFrameDistance, _41->stSynExtraData.DispFrameDistance
	str	r7, [ip, #1000]	@ _41->stSynExtraData.NextDistanceBeforeFirstFrame, _41->stSynExtraData.DistanceBeforeFirstFrame
	str	lr, [ip, #1016]	@ _41->stSynExtraData.NextGopNum, _41->stSynExtraData.GopNum
	bl	dprint_vfmw	@
	ldr	r1, [r6, r5, asl #2]	@ D.39459, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _62->stChanCfg.eVidStd, _62->stChanCfg.eVidStd
	cmp	r3, #3	@ _62->stChanCfg.eVidStd,
	beq	.L1181	@,
.L1165:
	ldrd	r2, [r4, #32]	@ D.39462, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp209,
	add	r0, r1, #960	@ tmp239, D.39459,
	cmp	r3, r7	@ D.39462,
	cmpeq	r2, r6	@ D.39462, tmp209
	strned	r2, [r0, #-8]	@ D.39462, tmp239,
.L1167:
	ldrd	r2, [r4, #48]	@ D.39462, pSegMan,
	add	lr, r1, #976	@ tmp213, D.39459,
	add	ip, r1, #992	@ tmp215, D.39459,
	strd	r2, [lr, #-8]	@ D.39462, tmp213,
	ldrd	r2, [r4, #56]	@ D.39462, pSegMan,
	strd	r2, [ip, #-8]	@ D.39462, tmp215,
	ldr	r3, [r4, #64]	@ D.39463, pSegMan_20(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.39463, _119->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.39463, pSegMan_20(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.39463, _119->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.39463, pSegMan_20(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.39463, _119->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.39463, pSegMan_20(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.39463, _119->stSynExtraData.NextGopNum
.L1166:
	ldrd	r2, [r0]	@, _120->stSynExtraData.Usertag
	mov	r0, #29	@,
	ldr	r1, .L1182+12	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L1181:
	ldrd	r2, [r4, #32]	@ D.39462, pSegMan,
	add	lr, r1, #960	@ tmp202, D.39459,
	add	ip, r1, #976	@ tmp204, D.39459,
	add	r0, r1, #992	@ tmp206, D.39459,
	strd	r2, [lr, #-8]	@ D.39462, tmp202,
	ldrd	r2, [r4, #48]	@ D.39462, pSegMan,
	strd	r2, [ip, #-8]	@ D.39462, tmp204,
	ldrd	r2, [r4, #56]	@ D.39462, pSegMan,
	strd	r2, [r0, #-8]	@ D.39462, tmp206,
	ldr	r3, [r4, #64]	@ D.39463, pSegMan_20(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.39463, _62->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.39463, pSegMan_20(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.39463, _62->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.39463, pSegMan_20(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.39463, _62->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.39463, pSegMan_20(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.39463, _62->stSynExtraData.NextGopNum
.L1161:
	ldr	r1, [r6, r5, asl #2]	@ D.39459, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _78->stChanCfg.eVidStd, _78->stChanCfg.eVidStd
	cmp	r3, #3	@ _78->stChanCfg.eVidStd,
	addeq	r0, r1, #960	@ tmp239, D.39459,
	bne	.L1165	@,
	b	.L1166	@
.L1178:
	add	r3, ip, #944	@ tmp222, D.39459,
	ldrd	r2, [r3]	@ D.39462, _10->stSynExtraData.pts
	b	.L1169	@
.L1179:
	ldrd	r2, [lr, #-8]	@ D.39462, tmp238,
	add	r1, ip, #944	@ tmp173, D.39459,
	strd	r2, [r1]	@ D.39462, _41->stSynExtraData.pts
	b	.L1163	@
.L1180:
	add	r3, ip, #944	@ tmp178, D.39459,
	ldrd	r2, [r3]	@ D.39462, _41->stSynExtraData.pts
	b	.L1163	@
.L1183:
	.align	2
.L1182:
	.word	.LANCHOR0
	.word	.LC151
	.word	.LC149
	.word	.LC150
	.fnend
	.size	DecChanProcessPts, .-DecChanProcessPts
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1194	@ tmp123,
	ldr	r2, [r3, r0, asl #2]	@ tmp124, s_pstVfmwChan
	ldr	r1, [r2, #880]	@ D.39478, _5->eVidStd
	sub	r2, r1, #10	@ D.39479, D.39478,
	cmp	r2, #2	@ D.39479,
	bhi	.L1185	@,
	ldr	r2, [r3, #3640]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r2, #1	@ D.39476, g_VdmCharacter,
	beq	.L1193	@,
.L1185:
	sub	r3, r1, #14	@ D.39478, D.39478,
	bics	r3, r3, #4	@ tmp139, D.39478,
	movne	r3, #1	@ tmp131,
	moveq	r3, #0	@ tmp131,
	cmp	r1, #4	@ D.39478,
	moveq	r3, #0	@, tmp136
	andne	r3, r3, #1	@,, tmp136, tmp131
	cmp	r3, #0	@ tmp136,
	beq	.L1193	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r3, #1	@ D.39476,
	moveq	r3, #0	@ D.39476,
	mov	r0, r3	@, D.39476
	ldmfd	sp!, {r4, pc}	@
.L1193:
	mov	r0, r3	@, D.39476
	bx	lr	@
.L1195:
	.align	2
.L1194:
	.word	.LANCHOR0
	.fnend
	.size	DecChanCheckDecParam, .-DecChanCheckDecParam
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #8
	sub	sp, sp, #8	@,,
	bhi	.L1227	@,
	ldr	r5, .L1233	@ tmp215,
	ldr	r0, [r5, r0, asl #2]	@ D.39486, s_pstVfmwChan
	cmp	r0, #0	@ D.39486,
	beq	.L1228	@,
	ldr	r2, [r0, #8]	@ _14->s32IsRun, _14->s32IsRun
	cmp	r2, #1	@ _14->s32IsRun,
	bne	.L1229	@,
	ldr	r6, [r0, #16]	@ D.39487, _14->s32StopSyntax
	cmp	r6, #0	@ D.39487,
	bne	.L1230	@,
	str	r6, [r0, #672]	@ D.39487, _14->s32NoStreamFlag
	mov	r8, r4, asl #2	@ tmp214, ChanID,
	bl	OSAL_GetTimeInMs	@
	ldr	r9, .L1233+4	@ tmp216,
	ldr	r1, .L1233+8	@ tmp165,
	add	r2, r9, r8	@ tmp161, tmp216, tmp214
	ldr	r3, [r2, #-3460]	@ tmp164, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.39488, tmp164, currtime
	mov	r7, r0	@ currtime,
	cmp	r3, r1	@ D.39488, g_TraceBsPeriod
	mov	r0, r4	@, ChanID
	bls	.L1202	@,
	str	r7, [r2, #-3460]	@ currtime, last_rec_pos_time
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.39484,
	mov	r10, r0	@ D.39484,
	bne	.L1203	@,
	mov	r2, r4	@, ChanID
	ldr	r1, .L1233+12	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
.L1217:
	mov	r0, r10	@, D.39484
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1202:
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.39484,
	mov	r10, r0	@ D.39484,
	beq	.L1217	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	mvnne	r10, #2	@ D.39484,
	bne	.L1217	@,
.L1212:
	ldr	r3, [r5, r4, asl #2]	@ D.39486, s_pstVfmwChan
	add	r10, r3, #1024	@ tmp217, D.39486,
	ldrb	r2, [r3, #1025]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].IsCurrSegWaitDec, MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].IsCurrSegWaitDec
	cmp	r2, #0	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].IsCurrSegWaitDec,
	bne	.L1204	@,
	ldr	r3, [r3, #1616]	@ _34->stSynExtraData.s32DSDWaitFlag, _34->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _34->stSynExtraData.s32DSDWaitFlag,
	beq	.L1231	@,
.L1204:
	ldrd	r6, [r10, #48]	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].CurrSeg.Usertag, tmp217,
	mov	r0, #29	@,
	ldrd	r2, [r10, #32]	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].CurrSeg.Pts, tmp217,
	ldr	r1, .L1233+16	@,
	strd	r6, [sp]	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].CurrSeg.Usertag,
	bl	dprint_vfmw	@
	mov	r1, r10	@, tmp217
	mov	r0, r4	@, ChanID
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r5, r4, asl #2]	@ D.39486, s_pstVfmwChan
	mov	r0, r10	@, tmp217
	add	r2, r3, #210944	@, D.39486,
	add	r2, r2, #896	@,,
	ldr	r1, [r3, #880]	@, _56->eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1208	@,
.L1209:
	mov	r10, #0	@ D.39484,
	b	.L1217	@
.L1203:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@ D.39487,
	moveq	r6, r0	@ rec_pos_print_flag, D.39487
	beq	.L1212	@,
	mov	r2, r4	@, ChanID
	ldr	r1, .L1233+20	@,
	mov	r0, #23	@,
	mvn	r10, #2	@ D.39484,
	bl	dprint_vfmw	@
	b	.L1217	@
.L1231:
	add	r1, r10, #8	@, tmp217,
	mov	r0, r4	@, ChanID
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L1204	@,
	cmp	r6, #1	@ rec_pos_print_flag,
	beq	.L1232	@,
.L1205:
	add	r3, r9, r8	@ tmp179, tmp216, tmp214
	ldr	r2, .L1233+24	@ tmp183,
	ldr	r1, .L1233+4	@ tmp178,
	ldr	r3, [r3, #-3444]	@ tmp182, last_rec_pos_report_time
	ldr	r2, [r2]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r3, r3, r7	@ D.39488, tmp182, currtime
	cmp	r3, r2	@ D.39488, g_NoStreamReportPeriod
	bls	.L1206	@,
	ldr	r3, [r1, #-3464]	@ D.39491, g_event_report
	cmp	r3, #0	@ D.39491,
	beq	.L1207	@,
	mov	r2, #0	@,
	mov	r1, #117	@,
	mov	r0, r4	@, ChanID
	blx	r3	@ D.39491
.L1207:
	add	r8, r9, r8	@ tmp187, tmp216, tmp214
	str	r7, [r8, #-3444]	@ currtime, last_rec_pos_report_time
.L1206:
	ldr	r3, [r5, r4, asl #2]	@ tmp190, s_pstVfmwChan
	mov	r2, #1	@ tmp191,
	mvn	r10, #3	@ D.39484,
	str	r2, [r3, #672]	@ tmp191, _49->s32NoStreamFlag
	b	.L1217	@
.L1208:
	bl	OSAL_GetTimeInMs	@
	add	r8, r9, r8	@ tmp204, tmp216, tmp214
	ldr	r1, .L1233+28	@ tmp208,
	ldr	r3, [r8, #-3428]	@ tmp207, last_rec_pos_decparam_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.39488, tmp207, currtime
	mov	r2, r0	@ currtime,
	cmp	r3, r1	@ D.39488, g_TraceFramePeriod
	bls	.L1209	@,
	mov	r0, r4	@, ChanID
	str	r2, [r8, #-3428]	@ currtime, last_rec_pos_decparam_time
	mov	r10, #0	@ D.39484,
	bl	VCTRL_GetDecParam	@
	b	.L1217	@
.L1229:
	ldr	r3, .L1233+32	@,
	movw	r2, #6597	@,
	ldr	r1, .L1233+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.39484,
	b	.L1217	@
.L1230:
	ldr	r3, .L1233+40	@,
	movw	r2, #6598	@,
	ldr	r1, .L1233+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.39484,
	b	.L1217	@
.L1227:
	ldr	r3, .L1233+44	@,
	movw	r2, #6595	@,
	ldr	r1, .L1233+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r10, #0	@ D.39484,
	b	.L1217	@
.L1228:
	ldr	r3, .L1233+48	@,
	movw	r2, #6596	@,
	ldr	r1, .L1233+36	@,
	mvn	r10, #0	@ D.39484,
	bl	dprint_vfmw	@
	b	.L1217	@
.L1232:
	mov	r2, r4	@, ChanID
	ldr	r1, .L1233+52	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L1205	@
.L1234:
	.align	2
.L1233:
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
	ldr	r7, .L1263	@ tmp174,
	ldr	r3, .L1263+4	@ ivtmp.745,
	add	r0, r3, #16	@ D.39520, ivtmp.745,
	mov	r1, r7	@ ivtmp.741, tmp174
.L1238:
	ldr	r2, [r1], #4	@ D.39521, MEM[base: _1, offset: 0B]
	add	r3, r3, #4	@ ivtmp.745, ivtmp.745,
	cmp	r2, #0	@ D.39521,
	ldrne	r2, [r2, #12]	@ D.39522, _17->s32Priority
	str	r2, [r3, #-4]	@ D.39521,
	cmp	r3, r0	@ ivtmp.745, D.39520
	bne	.L1238	@,
	ldr	r6, .L1263+8	@ tmp175,
	mvn	r0, #0	@ ret,
	ldr	r8, .L1263	@ tmp178,
	mov	r9, #0	@ MaxPriChan,
.L1239:
	ldr	r3, [r6, #-3412]	@ MaxPri, ChanPriTab
	mov	r1, #0	@ tmp154,
	ldr	r2, [r6, #-3408]	@ MaxPri, ChanPriTab
	cmp	r3, r2	@ MaxPri, MaxPri
	movlt	r3, r2	@ MaxPri, MaxPri
	ldr	r2, [r6, #-3404]	@ MaxPri, ChanPriTab
	movlt	r5, #1	@ MaxPriChan,
	movge	r5, #0	@ MaxPriChan,
	cmp	r3, r2	@ MaxPri, MaxPri
	movlt	r3, r2	@ MaxPri, MaxPri
	ldr	r2, [r6, #-3400]	@ MaxPri, ChanPriTab
	movlt	r5, #2	@ MaxPriChan,
	cmp	r3, r2	@ MaxPri, MaxPri
	movlt	r5, #3	@ MaxPriChan,
	movlt	r3, r2	@ MaxPri, MaxPri
	cmp	r3, #0	@ MaxPri,
	add	r3, r6, r5, lsl #2	@ tmp152, tmp175, MaxPriChan,
	add	r2, r5, #1	@ D.39522, MaxPriChan,
	str	r2, [r7, #60]	@ D.39522, s_VfmwCTrl.s32ThisChanIDPlus1
	str	r9, [r3, #-3412]	@ MaxPriChan, ChanPriTab
	ldr	r3, .L1263	@ tmp155,
	ble	.L1243	@,
	ldr	r3, [r8, r5, asl #2]	@ D.39521, s_pstVfmwChan
	cmp	r3, r1	@ D.39521,
	beq	.L1239	@,
	ldr	r2, [r3, #8]	@ _28->s32IsRun, _28->s32IsRun
	cmp	r2, #1	@ _28->s32IsRun,
	bne	.L1239	@,
	ldr	r2, [r3, #52]	@ _28->stChanCfg.s32ChanStrmOFThr, _28->stChanCfg.s32ChanStrmOFThr
	cmp	r2, r1	@ _28->stChanCfg.s32ChanStrmOFThr,
	ble	.L1245	@,
	ldr	r3, [r3, #56]	@ _28->stChanCfg.s32DecMode, _28->stChanCfg.s32DecMode
	cmp	r3, r1	@ _28->stChanCfg.s32DecMode,
	beq	.L1260	@,
.L1245:
	mov	r4, #200	@ D.39520,
	b	.L1248	@
.L1261:
	subs	r4, r4, #1	@ D.39520, D.39520,
	beq	.L1239	@,
.L1248:
	mov	r0, r5	@, MaxPriChan
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	beq	.L1261	@,
	b	.L1239	@
.L1243:
	str	r1, [r3, #60]	@ tmp154, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1260:
	mov	r0, r5	@, MaxPriChan
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1262	@,
.L1246:
	ldr	r4, [r7, r5, asl #2]	@ D.39521, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [r4, #52]	@, _35->stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	bl	GetNextDecodeMode	@
	ldr	r3, [r7, r5, asl #2]	@ D.39521, s_pstVfmwChan
	str	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	ldr	r2, [r3, #896]	@ _42->stSynExtraData.s32DecMode, _42->stSynExtraData.s32DecMode
	cmp	r2, #0	@ _42->stSynExtraData.s32DecMode,
	strne	r9, [r3, #892]	@ MaxPriChan, _42->stSynExtraData.s32OutErrThr
	strne	r9, [r3, #888]	@ MaxPriChan, _42->stSynExtraData.s32RefErrThr
	ldreq	r2, [r3, #48]	@ D.39522, _42->stChanCfg.s32ChanErrThr
	streq	r2, [r3, #892]	@ D.39522, _42->stSynExtraData.s32OutErrThr
	streq	r2, [r3, #888]	@ D.39522, _42->stSynExtraData.s32RefErrThr
	b	.L1245	@
.L1262:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L1246	@
.L1264:
	.align	2
.L1263:
	.word	.LANCHOR0
	.word	.LANCHOR3-3412
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
	mov	r3, #100	@ tmp119,
	ldr	r5, .L1281	@ tmp142,
	ldr	r0, [r5, #176]	@ D.39531, g_SleepTime
	str	r3, [r5, #56]	@ tmp119, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ D.39531,
	ble	.L1266	@,
	bl	msleep	@
.L1266:
	ldr	r0, .L1281+4	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r3, [r5, #168]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp125,
	str	r2, [r5, #56]	@ tmp125, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #0	@ g_StopDec,
	movne	r6, #0	@ ret,
	beq	.L1279	@,
.L1267:
	mov	r3, #102	@ tmp129,
	str	r3, [r5, #56]	@ tmp129, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	ldr	r3, .L1281+8	@ tmp130,
	ldr	r0, [r3, #28]	@ D.39533, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.39533,
	beq	.L1268	@,
	blx	r0	@ D.39533
.L1271:
	ldr	r3, .L1281+12	@ tmp131,
	ldr	r3, [r3, #56]	@ D.39534, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.39534,
	beq	.L1280	@,
	mov	r0, #0	@,
	blx	r3	@ D.39534
.L1270:
	mov	r4, #0	@ i,
.L1272:
	mov	r0, r4	@, i
	mov	r1, #0	@,
	add	r4, r4, #1	@ i, i,
	bl	DeleteRawPacketInBuffer	@
	cmp	r4, #4	@ i,
	bne	.L1272	@,
	ldr	r0, .L1281+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1281+16	@,
	mov	r3, #105	@ tmp138,
	str	r3, [r5, #56]	@ tmp138, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r6	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1279:
	bl	DecSyntax	@
	mov	r6, r0	@ ret,
	b	.L1267	@
.L1280:
	mov	r0, r3	@, D.39534
	mov	r2, #556	@,
	ldr	r1, .L1281+20	@,
	bl	dprint_vfmw	@
	b	.L1270	@
.L1268:
	movw	r2, #549	@,
	ldr	r1, .L1281+24	@,
	bl	dprint_vfmw	@
	b	.L1271	@
.L1282:
	.align	2
.L1281:
	.word	.LANCHOR0
	.word	.LANCHOR3-3396
	.word	g_dnr_hal_fun_ptr
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+272
	.word	.LC32
	.word	.LC157
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
	ldr	r4, .L1316	@ tmp193,
	mov	r6, #12288	@ tmp201,
	movt	r7, 9	@ tmp200,
	movt	r6, 65056	@ tmp201,
.L1284:
	ldr	r1, .L1316+4	@,
	mov	r0, #2	@,
	mov	r3, #0	@ tmp137,
	str	r3, [r4, #56]	@ tmp137, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@ D.39539, s_VfmwCTrl.eTaskCommand
	mov	r1, #2	@ tmp140,
	mov	r2, #1	@ tmp142,
	cmp	r3, r1	@ D.39539,
	str	r1, [r4, #44]	@ tmp140, s_VfmwCTrl.eTaskState
	str	r2, [r4, #56]	@ tmp142, s_VfmwCTrl.s32ThreadPos
	bne	.L1291	@,
	b	.L1285	@
.L1289:
	mov	r3, #2	@ tmp173,
	str	r3, [r4, #56]	@ tmp173, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	ldr	r1, .L1316+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@ D.39539, s_VfmwCTrl.eTaskCommand
	mov	r2, #1	@ tmp176,
	str	r2, [r4, #56]	@ tmp176, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.39539,
	beq	.L1285	@,
.L1291:
	cmp	r3, #3	@ D.39539,
	beq	.L1286	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sp, #4]	@ enChipVersion, enChipVersion
	cmp	r3, #5	@ enChipVersion,
	bne	.L1289	@,
	clz	r3, r5	@ tmp150, time2
	rsb	r2, r5, r0	@ D.39541, time2, time2
	mov	r3, r3, lsr #5	@ tmp150, tmp150,
	cmp	r2, r7	@ D.39541, tmp200
	orrhi	r3, r3, #1	@,, tmp153, tmp150
	cmp	r3, #0	@ tmp153,
	beq	.L1289	@,
	ldr	r3, [r6, #92]	@ reg_val, MEM[(volatile unsigned int *)4263522396B]
	mov	r5, r0	@ time2, time2
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.39541, reg_val,
	strne	r3, [r6, #92]	@ D.39541, MEM[(volatile unsigned int *)4263522396B]
	ldr	r3, [r6, #96]	@ reg_val, MEM[(volatile unsigned int *)4263522400B]
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.39541, reg_val,
	strne	r3, [r6, #96]	@ D.39541, MEM[(volatile unsigned int *)4263522400B]
	movne	r5, r0	@ time2, time2
	b	.L1289	@
.L1285:
	ldr	r1, .L1316+12	@,
	mov	r0, #2	@,
	mov	r3, #4	@ tmp179,
	mov	r8, #5	@ tmp194,
	str	r3, [r4, #56]	@ tmp179, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r3, #1	@ tmp182,
	str	r3, [r4, #44]	@ tmp182, s_VfmwCTrl.eTaskState
	b	.L1292	@
.L1315:
	bl	msleep	@
.L1292:
	ldr	r1, .L1316+16	@,
	mov	r0, #22	@,
	str	r8, [r4, #56]	@ tmp194, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@ D.39539, s_VfmwCTrl.eTaskCommand
	mov	r0, #10	@,
	cmp	r3, #1	@ D.39539,
	beq	.L1284	@,
	cmp	r3, #3	@ D.39539,
	bne	.L1315	@,
.L1286:
	ldr	r1, .L1316+20	@,
	mov	r0, #2	@,
	mov	r3, #6	@ tmp188,
	str	r3, [r4, #56]	@ tmp188, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp191,
	mov	r0, r3	@, tmp191
	str	r3, [r4, #44]	@ tmp191, s_VfmwCTrl.eTaskState
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1317:
	.align	2
.L1316:
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
	ldr	r1, .L1335	@ tmp145,
	ldr	r3, [r1, r0, asl #2]	@ D.39553, s_pstVfmwChan
	cmp	r3, #0	@ D.39553,
	beq	.L1332	@,
	ldr	r2, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r2, #18	@ _5->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _5->eVidStd
	b	.L1333	@
.L1321:
	.word	.L1330
	.word	.L1322
	.word	.L1323
	.word	.L1324
	.word	.L1325
	.word	.L1326
	.word	.L1327
	.word	.L1333
	.word	.L1333
	.word	.L1333
	.word	.L1328
	.word	.L1328
	.word	.L1328
	.word	.L1329
	.word	.L1325
	.word	.L1333
	.word	.L1333
	.word	.L1333
	.word	.L1330
.L1330:
	add	r0, r3, #210944	@ D.39552, D.39553,
	add	r0, r0, #904	@ D.39552, D.39552,
	bx	lr	@
.L1328:
	ldr	r2, [r1, #3640]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1334	@,
.L1325:
	add	r0, r3, #231424	@ D.39552, D.39553,
	add	r0, r0, #904	@ D.39552, D.39552,
	bx	lr	@
.L1324:
	add	r0, r3, #282624	@ D.39552, D.39553,
	add	r0, r0, #2560	@ D.39552, D.39552,
	bx	lr	@
.L1322:
	movw	r0, #63064	@ D.39552,
	movt	r0, 4	@ D.39552,
	add	r0, r3, r0	@ D.39552, D.39553, D.39552
	bx	lr	@
.L1323:
	add	r0, r3, #233472	@ D.39552, D.39553,
	add	r0, r0, #976	@ D.39552, D.39552,
	bx	lr	@
.L1326:
	add	r0, r3, #237568	@ D.39552, D.39553,
	add	r0, r0, #912	@ D.39552, D.39552,
	bx	lr	@
.L1327:
	add	r0, r3, #227328	@ D.39552, D.39553,
	add	r0, r0, #600	@ D.39552, D.39552,
	bx	lr	@
.L1329:
	add	r0, r3, #219136	@ D.39552, D.39553,
	add	r0, r0, #872	@ D.39552, D.39552,
	bx	lr	@
.L1333:
	mov	r0, #0	@ D.39552,
	bx	lr	@
.L1334:
	add	r0, r3, #224256	@ D.39552, D.39553,
	add	r0, r0, #232	@ D.39552, D.39552,
	bx	lr	@
.L1332:
	mov	r0, r3	@ D.39552, D.39553
	bx	lr	@
.L1336:
	.align	2
.L1335:
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
	ldr	r7, .L1346	@ tmp120,
	ldr	lr, [r7, r0, asl #2]	@ tmp121, s_pstVfmwChan
	cmp	lr, #0	@ tmp121,
	beq	.L1344	@,
	mov	r6, r3	@ pNewImgNum, pNewImgNum
	mov	r5, r2	@ pReadImgNum, pReadImgNum
	mov	r8, r1	@ pRefImgNum, pRefImgNum
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	beq	.L1339	@,
	mov	r2, r6	@, pNewImgNum
	mov	r1, r5	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r3, [r7, r4, asl #2]	@ D.39563, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ D.39564, _14->eVidStd
	cmp	r2, #0	@ D.39564,
	beq	.L1345	@,
	cmp	r2, #15	@ D.39564,
	movne	r3, #2	@ tmp129,
	strne	r3, [r8]	@ tmp129, *pRefImgNum_11(D)
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L1346+4	@,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L1345:
	add	r3, r3, #237568	@ tmp126, D.39563,
	ldr	r3, [r3, #896]	@ _14->stSynCtx.unSyntax.stH264Ctx.DPB.size, _14->stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r8]	@ _14->stSynCtx.unSyntax.stH264Ctx.DPB.size, *pRefImgNum_11(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1339:
	str	r3, [r6]	@ pstVoQue, *pNewImgNum_7(D)
	str	r3, [r5]	@ pstVoQue, *pReadImgNum_9(D)
	str	r3, [r8]	@ pstVoQue, *pRefImgNum_11(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1344:
	mov	r0, lr	@, tmp121
	ldr	r3, .L1346+8	@,
	movw	r2, #6816	@,
	ldr	r1, .L1346+12	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L1347:
	.align	2
.L1346:
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
	cmp	r0, #3	@ ChanID,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r0, #0	@ tmp132,
	str	r0, [sp, #12]	@ tmp132, NewNum
	str	r0, [sp, #8]	@ tmp132, ReadNum
	str	r0, [sp, #4]	@ tmp132, RefNum
	bhi	.L1357	@,
	cmp	r1, #0	@ pstChanState,
	mov	r4, r1	@ pstChanState, pstChanState
	beq	.L1358	@,
	ldr	r6, .L1361	@ tmp193,
	ldr	r0, [r6, r5, asl #2]	@ D.39571, s_pstVfmwChan
	cmp	r0, #0	@ D.39571,
	beq	.L1359	@,
	add	r1, r0, #1280	@, D.39571,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r6, r5, asl #2]	@ D.39571, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1360	@,
.L1353:
	mov	r1, r4	@, pstChanState
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDispStateWithDNR	@
.L1355:
	ldr	r2, .L1361+4	@ tmp157,
	mov	r3, r5, asl #5	@ tmp160, ChanID,
	sub	r3, r3, r5, asl #3	@ tmp161, tmp160, ChanID,
	ldr	ip, [sp, #8]	@ ReadNum, ReadNum
	add	r3, r2, r3	@ tmp162, tmp157, tmp161
	ldr	r2, [sp, #12]	@ NewNum, NewNum
	add	r1, sp, #16	@,,
	mov	r0, r5	@, ChanID
	add	r2, ip, r2	@ D.39573, ReadNum, NewNum
	str	r2, [r4, #52]	@ D.39573, pstChanState_10(D)->decoded_1d_frame_num
	ldr	r2, [r3, #-3368]	@ g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag, g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag
	ldr	r3, [r3, #-3380]	@ D.39574, g_VfmwChanStat[ChanID_7(D)].u32FrFrameRate
	str	r2, [r4, #100]	@ g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag, pstChanState_10(D)->is_field_flg
	str	r3, [r4, #24]	@ D.39574, pstChanState_10(D)->frame_rate
	bl	SM_GetInfo	@
	ldr	r2, [sp, #36]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	ldr	r3, [r6, r5, asl #2]	@ tmp181, s_pstVfmwChan
	ldr	r0, [sp, #32]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	cmp	r2, #10	@ ScdInstInfo.numReadSegFail,
	ldr	r1, [sp, #24]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	add	r3, r3, #225280	@ tmp188, tmp181,
	movle	r2, #0	@ D.39575,
	movgt	r2, #1	@ D.39575,
	str	r0, [r4, #56]	@ ScdInstInfo.TotalSegSize, pstChanState_10(D)->buffered_stream_size
	str	r1, [r4, #60]	@ ScdInstInfo.SegNum, pstChanState_10(D)->buffered_stream_num
	str	r2, [r4, #84]	@ D.39575, pstChanState_10(D)->stream_not_enough
	ldrb	r3, [r3, #2424]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)_40 + 211840B], MEM[(struct MP4_CTX_S *)_40 + 211840B]
	and	r3, r3, #1	@ D.39576, MEM[(struct MP4_CTX_S *)_40 + 211840B],
	str	r3, [r4, #92]	@ D.39576, pstChanState_10(D)->mpeg4_shorthead
.L1348:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1360:
	ldr	r3, [r3, #1604]	@ _17->stSynExtraData.s32DnrEnable, _17->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _17->stSynExtraData.s32DnrEnable,
	beq	.L1353	@,
	ldr	r2, [sp, #4]	@, RefNum
	mov	r1, r4	@, pstChanState
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDispState	@
	b	.L1355	@
.L1357:
	mov	r2, r5	@, ChanID
	ldr	r1, .L1361+8	@,
	bl	dprint_vfmw	@
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1359:
	ldr	r3, .L1361+12	@,
	movw	r2, #1293	@,
	ldr	r1, .L1361+16	@,
	bl	dprint_vfmw	@
	b	.L1348	@
.L1358:
	mov	r0, r1	@, pstChanState
	ldr	r3, .L1361+20	@,
	movw	r2, #1292	@,
	ldr	r1, .L1361+16	@,
	bl	dprint_vfmw	@
	b	.L1348	@
.L1362:
	.align	2
.L1361:
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
	ldr	r3, .L1364	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	sub	r0, r0, #1	@, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
.L1365:
	.align	2
.L1364:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ ChanID, ChanID
	bhi	.L1383	@,
	ldr	r4, .L1388	@ tmp132,
	ldr	r0, [r4, r0, asl #2]	@ D.39607, s_pstVfmwChan
	cmp	r0, #0	@ D.39607,
	beq	.L1384	@,
	ldr	r3, [r0, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L1385	@,
	cmp	r1, #0	@ pImage,
	beq	.L1386	@,
	ldr	r0, .L1388+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, r7, asl #2]	@ D.39607, s_pstVfmwChan
	cmp	r3, #0	@ D.39607,
	movweq	r2, #6929	@,
	beq	.L1382	@,
	ldr	r3, [r3, #4]	@ _14->s32IsOpen, _14->s32IsOpen
	cmp	r3, #1	@ _14->s32IsOpen,
	bne	.L1387	@,
	ldr	r0, .L1388+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r4, [r4, r7, asl #2]	@ D.39607, s_pstVfmwChan
	movw	r3, #4058	@ tmp154,
	add	r2, r4, #172032	@ tmp152, D.39607,
	ldrsb	r6, [r2, r3]	@ s32AllDecFrameNum, _25->FspInst.s32DecFsNum
	cmp	r6, #0	@ s32AllDecFrameNum,
	addgt	r4, r4, #209920	@ ivtmp.766, D.39607,
	movgt	r5, #0	@ i,
	addgt	r4, r4, #840	@ ivtmp.766, ivtmp.766,
	bgt	.L1378	@,
	b	.L1379	@
.L1376:
	cmp	r6, r5	@ s32AllDecFrameNum, i
	add	r4, r4, #16	@ ivtmp.766, ivtmp.766,
	beq	.L1379	@,
.L1378:
	ldr	r3, [r4, #-16]	@ MEM[base: _40, offset: 4294967280B], MEM[base: _40, offset: 4294967280B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #1	@ MEM[base: _40, offset: 4294967280B],
	bne	.L1376	@,
	ldr	r2, [r4, #-8]	@, MEM[base: _40, offset: 4294967288B]
	mov	r0, r7	@, ChanID
	ldr	r1, [r4, #-12]	@, MEM[base: _40, offset: 4294967284B]
	add	r4, r4, #16	@ ivtmp.766, ivtmp.766,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-20]	@ s32UsingCount, MEM[base: _40, offset: 4294967292B]
	streq	r0, [r4, #-32]	@ s32UsingCount, MEM[base: _40, offset: 4294967280B]
	cmp	r6, r5	@ s32AllDecFrameNum, i
	bne	.L1378	@,
.L1379:
	ldr	r0, .L1388+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1388+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.39605,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1387:
	movw	r2, #6936	@,
.L1382:
	ldr	r1, .L1388+12	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r0, .L1388+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39605,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1385:
	ldr	r3, .L1388+16	@,
	movw	r2, #6923	@,
	ldr	r1, .L1388+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39605,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1383:
	ldr	r3, .L1388+24	@,
	movw	r2, #6921	@,
	ldr	r1, .L1388+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39605,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1386:
	mov	r0, r1	@, pImage
	ldr	r3, .L1388+28	@,
	movw	r2, #6924	@,
	ldr	r1, .L1388+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39605,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1384:
	ldr	r3, .L1388+32	@,
	movw	r2, #6922	@,
	ldr	r1, .L1388+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39605,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1389:
	.align	2
.L1388:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.word	.LANCHOR3-3292
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L1395	@,
	ldr	r3, .L1397	@ tmp117,
	ldr	r0, [r3, r0, asl #2]	@ D.39621, s_pstVfmwChan
	cmp	r0, #0	@ D.39621,
	beq	.L1396	@,
	ldr	r0, [r0, #1456]	@ D.39619, _7->stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r4, pc}	@
.L1395:
	ldr	r3, .L1397+4	@,
	movw	r2, #6951	@,
	ldr	r1, .L1397+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39619,
	ldmfd	sp!, {r4, pc}	@
.L1396:
	ldr	r3, .L1397+12	@,
	movw	r2, #6952	@,
	ldr	r1, .L1397+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39619,
	ldmfd	sp!, {r4, pc}	@
.L1398:
	.align	2
.L1397:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L1404	@,
	ldr	r3, .L1406	@ tmp117,
	ldr	r0, [r3, r0, asl #2]	@ D.39626, s_pstVfmwChan
	cmp	r0, #0	@ D.39626,
	beq	.L1405	@,
	ldr	r0, [r0, #1460]	@ D.39624, _7->stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r4, pc}	@
.L1404:
	ldr	r3, .L1406+4	@,
	movw	r2, #6959	@,
	ldr	r1, .L1406+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39624,
	ldmfd	sp!, {r4, pc}	@
.L1405:
	ldr	r3, .L1406+12	@,
	movw	r2, #6960	@,
	ldr	r1, .L1406+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39624,
	ldmfd	sp!, {r4, pc}	@
.L1407:
	.align	2
.L1406:
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
	cmp	r0, #3	@ ChanID,
	bhi	.L1414	@,
	ldr	r3, .L1415	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ D.39631, s_pstVfmwChan
	cmp	r3, #0	@ D.39631,
	ldrne	r0, [r3, #24]	@ D.39629, _7->eChanCapLevel
	moveq	r0, #33	@ D.39629,
	bx	lr	@
.L1414:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #6967	@,
	ldr	r3, .L1415+4	@,
	mov	r0, #0	@,
	ldr	r1, .L1415+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39629,
	ldmfd	sp!, {r4, pc}	@
.L1416:
	.align	2
.L1415:
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
	add	r3, r0, #4992	@ D.39634, new_extra_ref,
	movw	r2, #10000	@ tmp125,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r3, #8	@ D.39634, D.39634,
	ldr	r5, .L1425	@ tmp144,
	cmp	r3, r2	@ D.39634, tmp125
	mov	r4, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r5, #3660]	@ new_extra_ref, extra_ref
	bhi	.L1423	@,
.L1418:
	movw	r1, #5000	@ tmp130,
	cmp	r0, r1	@ D.39636, tmp130
	movw	r2, #60536	@ tmp132,
	add	r3, r4, #4992	@ D.39634, new_extra_disp,
	movge	r0, r1	@ D.39635, tmp130
	movt	r2, 65535	@ tmp132,
	cmp	r0, r2	@ D.39635, tmp132
	add	r3, r3, #8	@ D.39634, D.39634,
	movw	r1, #10000	@ tmp136,
	str	r4, [r5, #3664]	@ new_extra_disp, extra_disp
	movlt	r0, r2	@ D.39635, tmp132
	cmp	r3, r1	@ D.39634, tmp136
	str	r0, [r5, #3660]	@ D.39635, extra_ref
	ldr	r6, .L1425	@ tmp128,
	bhi	.L1424	@,
.L1419:
	movw	r2, #5000	@ tmp141,
	cmp	r4, r2	@ D.39636, tmp141
	movw	r3, #60536	@ tmp143,
	movge	r4, r2	@ D.39635, tmp141
	movt	r3, 65535	@ tmp143,
	cmp	r4, r3	@ D.39635, tmp143
	movlt	r4, r3	@ D.39635, tmp143
	str	r4, [r5, #3664]	@ D.39635, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1423:
	mov	r2, r0	@, new_extra_ref
	ldr	r1, .L1425+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #3660]	@ D.39636, extra_ref
	b	.L1418	@
.L1424:
	mov	r2, r4	@, new_extra_disp
	ldr	r1, .L1425+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	ldr	r4, [r6, #3664]	@ D.39636, extra_disp
	b	.L1419	@
.L1426:
	.align	2
.L1425:
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
	ldr	r3, .L1433	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.39643, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.39643,
	beq	.L1432	@,
	mov	r0, #0	@,
	blx	r3	@ D.39643
.L1429:
	bl	SCDDRV_MaskInt	@
	ldr	r3, .L1433+4	@ tmp114,
	ldr	r0, [r3, #24]	@ D.39642, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r0, #0	@ D.39642,
	beq	.L1430	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r0	@ indirect register sibling call	@ D.39642
.L1430:
	movw	r2, #7013	@,
	ldr	r1, .L1433+8	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1432:
	mov	r0, r3	@, D.39643
	movw	r2, #7005	@,
	ldr	r1, .L1433+12	@,
	bl	dprint_vfmw	@
	b	.L1429	@
.L1434:
	.align	2
.L1433:
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
	ldr	r3, .L1441	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.39648, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.39648,
	beq	.L1440	@,
	mov	r0, #0	@,
	blx	r3	@ D.39648
.L1437:
	bl	SCDDRV_EnableInt	@
	ldr	r3, .L1441+4	@ tmp114,
	ldr	r0, [r3, #28]	@ D.39647, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.39647,
	beq	.L1438	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r0	@ indirect register sibling call	@ D.39647
.L1438:
	movw	r2, #7035	@,
	ldr	r1, .L1441+8	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1440:
	mov	r0, r3	@, D.39648
	movw	r2, #7027	@,
	ldr	r1, .L1441+12	@,
	bl	dprint_vfmw	@
	b	.L1437	@
.L1442:
	.align	2
.L1441:
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
	mov	r3, r2, asl #1	@ D.39686, Width,
	mov	r4, r2	@ Width, Width
	mov	r8, r1	@ ChromOfst, ChromOfst
	str	r2, [sp, #8]	@ Width, %sfp
	mov	r2, #0	@,
	mul	r1, r10, r3	@, Height, D.39686
	ldr	r7, [sp, #56]	@ Stride, Stride
	ldr	r6, [sp, #60]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r5, r0, #0	@ pLuma,
	beq	.L1443	@,
	mul	fp, r10, r4	@ D.39686, Height, Width
	add	r8, r5, r8	@ pChrom, pLuma, ChromOfst
	add	r3, fp, fp, lsr #31	@ tmp153, D.39686, D.39686,
	mov	r3, r3, asr #1	@ D.39686, tmp153,
	str	r3, [sp, #12]	@ D.39686, %sfp
	add	r0, r3, #1024	@, D.39686,
	bl	OSAL_AllocVirMem	@
	subs	r3, r0, #0	@ pUV,
	str	r3, [sp, #4]	@ pUV, %sfp
	beq	.L1445	@,
	cmp	fp, #0	@ D.39686,
	add	r9, fp, #3	@ tmp158, D.39686,
	movge	r9, fp	@ D.39686, D.39686
	cmp	r10, #0	@ Height,
	add	r9, r3, r9, asr #2	@ pV, pUV, D.39686,
	movgt	r4, #0	@ y,
	ble	.L1450	@,
.L1449:
	add	r4, r4, #1	@ y, y,
	mov	r2, r6	@, fp
	mov	r1, fp	@, D.39686
	mov	r0, r5	@, pLuma
	bl	klib_fwrite	@
	cmp	r4, r10	@ y, Height
	bne	.L1449	@,
.L1450:
	add	r10, r10, r10, lsr #31	@ tmp161, Height, Height,
	mov	r10, r10, asr #1	@ D.39686, tmp161,
	cmp	r10, #0	@ D.39686,
	ble	.L1448	@,
	ldr	r3, [sp, #8]	@ Width, %sfp
	mov	r0, #0	@ y,
	ldr	fp, [sp, #4]	@ pUV, %sfp
	add	r4, r3, r3, lsr #31	@ tmp164, Width, Width,
	mov	r2, r4, asr #1	@ D.39686, tmp164,
.L1451:
	cmp	r2, #0	@ D.39686,
	ble	.L1453	@,
	sub	ip, fp, #1	@ ivtmp.798, pUV,
	sub	r1, r9, #1	@ ivtmp.809, pV,
	add	r4, r8, r2	@ D.39692, pChrom, D.39686
	mov	r3, r8	@ ivtmp.795, pChrom
.L1452:
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.39691, MEM[base: _51, offset: 0B]
	strb	lr, [ip, #1]!	@ D.39691, MEM[base: _37, offset: 0B]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2	@ D.39691, MEM[base: _7, offset: 0B]
	cmp	r4, r3	@ D.39692, ivtmp.795
	strb	lr, [r1, #1]!	@ D.39691, MEM[base: _11, offset: 0B]
	bne	.L1452	@,
	add	fp, fp, r2	@ pUV, pUV, D.39686
	add	r9, r9, r2	@ pV, pV, D.39686
.L1453:
	add	r0, r0, #1	@ y, y,
	add	r8, r8, r7	@ pChrom, pChrom, Stride
	cmp	r0, r10	@ y, D.39686
	bne	.L1451	@,
.L1448:
	mov	r2, r6	@, fp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L1445:
	mov	r0, r5	@, pLuma
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@ pUV, %sfp
	cmp	r3, #0	@ pUV,
	beq	.L1443	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_FreeVirMem	@
.L1443:
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
	ldrne	r3, .L1477	@ ivtmp.827,
	bne	.L1469	@,
	b	.L1475	@
.L1470:
	ldr	r2, [r3, #8]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r2, r1	@ MEM[base: _14, offset: 0B], cmd
	beq	.L1476	@,
.L1469:
	ldr	r0, [r3, #12]	@ pTargetHandler, MEM[base: _9, offset: 12B]
	cmp	r0, #0	@ pTargetHandler,
	bne	.L1470	@,
	bx	lr	@
.L1476:
	bx	lr	@
.L1475:
	ldr	r0, .L1477+4	@ pTargetHandler,
	bx	lr	@
.L1478:
	.align	2
.L1477:
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
	beq	.L1486	@,
	mov	r2, r0	@ opt, opt
	cmp	r2, #0	@ opt,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@ p_args, p_args
	ldrne	r3, .L1493	@ ivtmp.835,
	bne	.L1484	@,
	b	.L1492	@
.L1485:
	ldr	lr, [r3, #8]!	@ MEM[base: _5, offset: 0B], MEM[base: _5, offset: 0B]
	cmp	r2, lr	@ opt, MEM[base: _5, offset: 0B]
	beq	.L1482	@,
.L1484:
	ldr	ip, [r3, #12]	@ pCommandHandler, MEM[base: _10, offset: 12B]
	cmp	ip, #0	@ pCommandHandler,
	bne	.L1485	@,
	ldr	r1, .L1493+4	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.39719,
	ldmfd	sp!, {r4, pc}	@
.L1492:
	ldr	ip, .L1493+8	@ pCommandHandler,
.L1482:
	blx	ip	@ pCommandHandler
	mov	r0, #1	@ D.39719,
	ldmfd	sp!, {r4, pc}	@
.L1486:
	mvn	r0, #1	@ D.39719,
	bx	lr	@
.L1494:
	.align	2
.L1493:
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
	ldr	r5, .L1521	@ tmp180,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, r0, asl #2]	@ D.39726, s_pstVfmwChan
	cmp	r3, #0	@ D.39726,
	beq	.L1517	@,
	ldr	r2, [r1]	@ pOption_13(D)->s32KeepBS, pOption_13(D)->s32KeepBS
	mov	r6, r1	@ pOption, pOption
	cmp	r2, #1	@ pOption_13(D)->s32KeepBS,
	bhi	.L1518	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _11->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ D.39726, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp146, ChanID,
	ldr	r0, .L1521+4	@ tmp142,
	sub	r3, r3, r4, asl #3	@ tmp147, tmp146, ChanID,
	mov	r8, #0	@ tmp139,
	mov	r1, #24	@,
	add	r0, r0, r3	@, tmp142, tmp147
	str	r8, [r2, #680]	@ tmp139, _19->s32CountNoDecparamFlag
	str	r8, [r2, #684]	@ tmp139, _19->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r2, [r6, #4]	@ D.39727, pOption_13(D)->s32KeepSPSPPS
	ldr	r3, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r2, [r3, #1412]	@ D.39727, _25->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ D.39726, s_pstVfmwChan
	add	r1, r3, #210944	@, D.39726,
	ldr	r0, [r3, #880]	@, _29->eVidStd
	add	r1, r1, #896	@,,
	bl	ReleaseCurPic	@
	ldr	r0, [r5, r4, asl #2]	@ tmp157, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp157,
	bl	__memzero	@
	ldr	r3, [r5, r4, asl #2]	@ D.39726, s_pstVfmwChan
	mvn	r0, #0	@ tmp161,
	mvn	r1, #0	@,
	add	r2, r3, #960	@ tmp163, D.39726,
	add	ip, r3, #944	@ tmp160, D.39726,
	strd	r0, [ip]	@ tmp161, _36->stSynExtraData.pts
	strd	r0, [r2, #-8]	@ tmp161, tmp163,
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #880]	@ _36->eVidStd, _36->eVidStd
	str	r8, [r3, #1272]	@ tmp139, _36->stSynExtraData.s32NewPicSegDetector
	cmp	r2, #18	@ _36->eVidStd,
	str	r8, [r3, #1620]	@ tmp139, _36->stSynExtraData.s32firstIdecodedflag
	beq	.L1499	@,
	bl	FSP_ResetInstance	@
.L1500:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r3, [r6]	@ pOption_13(D)->s32KeepBS, pOption_13(D)->s32KeepBS
	cmp	r3, #0	@ pOption_13(D)->s32KeepBS,
	beq	.L1519	@,
.L1501:
	ldr	r3, [r5, #184]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	ldr	r5, .L1521	@ tmp169,
	cmp	r3, #0	@ g_ResetCreateNewSave,
	beq	.L1502	@,
	ldr	r3, [r5, #228]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp171,
	add	r6, sp, #4	@ tmp181,,
	str	r2, [sp, #4]	@ tmp171, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1505	@,
	mov	r0, #512	@,
	mov	r1, r6	@, tmp181
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #228]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1505	@,
.L1504:
	ldr	r1, .L1521+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L1502:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1520	@,
.L1506:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.39725,
.L1497:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1519:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L1501	@
.L1520:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1506	@
.L1499:
	bl	FSP_EmptyInstance	@
	b	.L1500	@
.L1505:
	mov	r1, r6	@, tmp181
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1504	@
.L1518:
	movw	r2, #3757	@,
	ldr	r1, .L1521+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39725,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1517:
	mov	r0, r3	@, D.39726
	movw	r2, #3753	@,
	ldr	r3, .L1521+16	@,
	ldr	r1, .L1521+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39725,
	b	.L1497	@
.L1522:
	.align	2
.L1521:
	.word	.LANCHOR0
	.word	.LANCHOR3-3388
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
	ldr	r6, .L1549	@ tmp183,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r6, r0, asl #2]	@ D.39738, s_pstVfmwChan
	cmp	r3, #0	@ D.39738,
	beq	.L1545	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _12->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r6, r4, asl #2]	@ D.39738, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp139, ChanID,
	ldr	r0, .L1549+4	@ tmp135,
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
	ldr	r3, [r6, r4, asl #2]	@ D.39738, s_pstVfmwChan
	mvn	r0, #0	@ tmp151,
	mvn	r1, #0	@,
	add	r2, r3, #208896	@ tmp158, D.39738,
	add	lr, r3, #944	@ tmp150, D.39738,
	add	ip, r3, #960	@ tmp153, D.39738,
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
	beq	.L1527	@,
	bl	FSP_ResetInstance	@
.L1528:
	mov	r0, r4	@, ChanID
	ldr	r5, .L1549	@ tmp169,
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r6, #184]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L1546	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1547	@,
.L1533:
	ldr	r3, [r6, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1548	@,
.L1534:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.39737,
.L1525:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1546:
	ldr	r3, [r5, #228]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp171,
	add	r8, sp, #4	@ tmp184,,
	str	r2, [sp, #4]	@ tmp171, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1532	@,
	mov	r0, #512	@,
	mov	r1, r8	@, tmp184
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #228]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L1532	@,
.L1531:
	ldr	r1, .L1549+8	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L1533	@,
.L1547:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r3, [r6, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _52->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1534	@,
.L1548:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L1534	@
.L1527:
	bl	FSP_EmptyInstance	@
	b	.L1528	@
.L1532:
	mov	r1, r8	@, tmp184
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1531	@
.L1545:
	mov	r0, r3	@, D.39738
	mov	r2, #3856	@,
	ldr	r3, .L1549+12	@,
	ldr	r1, .L1549+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39737,
	b	.L1525	@
.L1550:
	.align	2
.L1549:
	.word	.LANCHOR0
	.word	.LANCHOR3-3388
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
	add	r5, sp, #92	@ tmp878,,
	mov	r6, r0	@ eCapLevel, eCapLevel
	mov	r4, r1	@ pChanOption, pChanOption
	add	r0, sp, #124	@ tmp895,,
	mov	r1, #64	@,
	mov	r9, r2	@ flag, flag
	mov	r8, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, r5	@, tmp878
	mov	r1, #16	@,
	bl	__memzero	@
	subs	r0, r6, #25	@ tmp404, eCapLevel,
	ldr	r7, .L1726	@ tmp883,
	movne	r0, #1	@ tmp404,
	cmp	r9, #0	@ flag,
	movne	r0, #0	@ tmp404,
	cmp	r0, #0	@ tmp404,
	str	r4, [r7, #-3284]	@ pChanOption, pOption
	bne	.L1700	@,
	ldr	r3, [r4, #4]	@ D.39843, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.39843,
	bhi	.L1701	@,
	beq	.L1702	@,
	cmp	r3, #1	@ D.39843,
	bne	.L1557	@,
	ldr	r3, [r4, #32]	@ pChanOption_14(D)->s32MaxRefFrameNum, pChanOption_14(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxRefFrameNum,
	blt	.L1558	@,
	ldr	r3, [r4, #12]	@ pChanOption_14(D)->s32MaxWidth, pChanOption_14(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxWidth,
	ble	.L1558	@,
	ldr	r3, [r4, #16]	@ pChanOption_14(D)->s32MaxHeight, pChanOption_14(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxHeight,
	ble	.L1558	@,
	ldr	r3, [r4, #56]	@ pChanOption_14(D)->s32SCDBufSize, pChanOption_14(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_14(D)->s32SCDBufSize,
	blt	.L1558	@,
	ldr	r3, [r4, #44]	@ pChanOption_14(D)->s32SupportH264, pChanOption_14(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_14(D)->s32SupportH264,
	beq	.L1703	@,
.L1557:
	ldr	r3, [r4, #136]	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r2, sp, #108	@,,
	mov	r1, r4	@, pChanOption
	mov	r0, r6	@, eCapLevel
	cmp	r3, #1	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r3, #0	@ tmp421,
	strne	r3, [r4, #136]	@ tmp421, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r9	@, flag
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	ip, r0, #0	@ D.39831,
	bne	.L1704	@,
	ldr	r3, [r4, #8]	@ D.39845, pChanOption_14(D)->MemAllocMode
	ldr	r2, [sp, #120]	@ DetailMemSize$12, MEM[(struct  *)&DetailMemSize + 12B]
	cmp	r3, #1	@ D.39845,
	ldr	r9, [sp, #108]	@ DetailMemSize, MEM[(struct  *)&DetailMemSize]
	ldr	fp, [sp, #112]	@ DetailMemSize$4, MEM[(struct  *)&DetailMemSize + 4B]
	ldr	r10, [sp, #116]	@ DetailMemSize$8, MEM[(struct  *)&DetailMemSize + 8B]
	str	r2, [sp, #68]	@ DetailMemSize$12, %sfp
	beq	.L1705	@,
	cmp	r3, #2	@ D.39845,
	beq	.L1706	@,
	cmp	r3, #3	@ D.39845,
	bne	.L1577	@,
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp906,,
	bl	__memzero	@
	ldr	r3, [r4, #108]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr,
	beq	.L1578	@,
	ldr	r3, [r4, #112]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length,
	bne	.L1579	@,
.L1578:
	mov	r2, r10	@, DetailMemSize$8
	add	r3, sp, #188	@ tmp907,,
	mov	r10, #1	@ tmp516,
	mov	r1, #0	@,
	str	r10, [sp]	@ tmp516,
	ldr	r0, .L1726+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1707	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r10, [sp, #100]	@ tmp516, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	r1, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	r2, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r3, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
.L1582:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp916,,
	bl	__memzero	@
	ldr	r3, [r4, #76]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr,
	beq	.L1626	@,
	ldr	r3, [r4, #80]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length,
	bne	.L1584	@,
.L1626:
	mov	r1, #0	@ tmp539,
	mov	r2, r9	@, DetailMemSize
	str	r1, [sp]	@ tmp539,
	add	r3, sp, #188	@ tmp908,,
	ldr	r0, .L1726+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1708	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp553,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #124]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r1, [sp, #128]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r2, [sp, #132]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	str	r3, [sp, #92]	@ tmp553, MEM[(HI_S32 *)&ChanMemFlag]
.L1588:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp917,,
	bl	__memzero	@
	ldr	r3, [r4, #92]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr,
	beq	.L1628	@,
	ldr	r3, [r4, #96]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length,
	bne	.L1591	@,
.L1628:
	ldr	r3, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1592	@,
	mov	r1, #0	@ tmp573,
	mov	r2, fp	@, DetailMemSize$4
	str	r1, [sp]	@ tmp573,
	add	r3, sp, #188	@ tmp910,,
	ldr	r0, .L1726+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1709	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp593,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #140]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r1, [sp, #144]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r2, [sp, #148]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r3, [sp, #96]	@ tmp593, MEM[(HI_S32 *)&ChanMemFlag + 4B]
.L1597:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp918,,
	bl	__memzero	@
	ldr	r3, [r4, #124]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr,
	beq	.L1630	@,
	ldr	r3, [r4, #128]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length,
	bne	.L1603	@,
.L1630:
	ldr	r3, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1604	@,
	mov	r1, #0	@ tmp623,
	add	r3, sp, #188	@ tmp911,,
	ldr	r2, [sp, #68]	@, %sfp
	str	r1, [sp]	@ tmp623,
	ldr	r0, .L1726+16	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1710	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp649,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #172]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r1, [sp, #176]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	str	r2, [sp, #180]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r3, [sp, #104]	@ tmp649, MEM[(HI_S32 *)&ChanMemFlag + 12B]
.L1672:
	ldr	r10, .L1726+20	@ tmp882,
	ldr	r0, .L1726+24	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r3, [r10]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1635	@,
	ldr	r3, [r10, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1636	@,
	ldr	r3, [r10, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1637	@,
	ldr	r3, [r10, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	moveq	r9, #3	@ ChanID,
	beq	.L1617	@,
	mov	r2, #4	@,
	ldr	r1, .L1726+28	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1726+24	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39829,
.L1692:
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1702:
	ldr	r3, [r4, #64]	@ pChanOption_14(D)->s32SlotWidth, pChanOption_14(D)->s32SlotWidth
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotWidth,
	beq	.L1556	@,
	ldr	r3, [r4, #68]	@ pChanOption_14(D)->s32SlotHeight, pChanOption_14(D)->s32SlotHeight
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotHeight,
	bne	.L1557	@,
.L1556:
	ldr	r1, .L1726+32	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1579:
	mov	r2, #16	@,
	add	r1, r4, #104	@, pChanOption,
	add	r0, sp, #156	@,,
	bl	memcpy	@
	ldr	r2, [sp, #164]	@ D.39831, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r2, r10	@ D.39831, DetailMemSize$8
	blt	.L1711	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1582	@
.L1703:
	ldr	r3, [r4, #20]	@ pChanOption_14(D)->s32MaxSliceNum, pChanOption_14(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSliceNum,
	ble	.L1558	@,
	ldr	r3, [r4, #24]	@ pChanOption_14(D)->s32MaxSpsNum, pChanOption_14(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSpsNum,
	ble	.L1558	@,
	ldr	r3, [r4, #28]	@ pChanOption_14(D)->s32MaxPpsNum, pChanOption_14(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxPpsNum,
	bgt	.L1557	@,
.L1558:
	ldr	r1, .L1726+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L1625:
	mvn	r0, #0	@ D.39829,
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1592:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp596,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #148]	@ tmp596, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r2, [sp, #140]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	b	.L1597	@
.L1584:
	mov	r2, #16	@,
	add	r0, sp, #124	@ tmp909,,
	add	r1, r4, #72	@, pChanOption,
	bl	memcpy	@
	ldr	r2, [sp, #132]	@ D.39829, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r9, r2	@ DetailMemSize, D.39829
	bgt	.L1712	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1588	@
.L1604:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp652,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #180]	@ tmp652, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r2, [sp, #172]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	b	.L1672	@
.L1591:
	mov	r2, #16	@,
	add	r1, r4, #88	@, pChanOption,
	add	r0, sp, #140	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.39843, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.39843,
	beq	.L1597	@,
	ldr	r1, [sp, #144]	@ D.39833, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r1, #0	@ D.39833,
	beq	.L1598	@,
	ldr	r2, [sp, #148]	@ D.39829, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	fp, r2	@ DetailMemSize$4, D.39829
	ble	.L1599	@,
.L1598:
	cmp	r3, #1	@ D.39843,
	beq	.L1600	@,
	ldr	r2, [sp, #148]	@ D.39829, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
.L1599:
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1597	@
.L1603:
	mov	r2, #16	@,
	add	r1, r4, #120	@, pChanOption,
	add	r0, sp, #172	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.39843, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.39843,
	beq	.L1672	@,
	ldr	r1, [sp, #176]	@ D.39833, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	cmp	r1, #0	@ D.39833,
	beq	.L1610	@,
	ldr	r2, [sp, #180]	@ D.39829, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	ldr	r0, [sp, #68]	@ DetailMemSize$12, %sfp
	cmp	r0, r2	@ DetailMemSize$12, D.39829
	ble	.L1611	@,
.L1610:
	cmp	r3, #1	@ D.39843,
	beq	.L1612	@,
	ldr	r2, [sp, #180]	@ D.39829, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
.L1611:
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1672	@
.L1705:
	mov	r2, #16	@,
	add	r1, r4, #72	@, pChanOption,
	add	r0, sp, #124	@ tmp897,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, r4, #88	@, pChanOption,
	add	r0, sp, #140	@,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, r4, #104	@, pChanOption,
	add	r0, sp, #156	@,,
	bl	memcpy	@
	ldr	r3, [sp, #160]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr,
	beq	.L1563	@,
	ldr	r3, [sp, #164]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r3, r10	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, DetailMemSize$8
	blt	.L1563	@,
	ldr	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr,
	beq	.L1566	@,
	ldr	r3, [sp, #148]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	fp, r3	@ DetailMemSize$4, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ble	.L1567	@,
.L1566:
	ldr	r0, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r0, #1	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1713	@,
.L1567:
	ldr	r1, [sp, #128]	@ D.39833, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	cmp	r1, #0	@ D.39833,
	beq	.L1568	@,
	ldr	r2, [sp, #132]	@ D.39831, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r9, r2	@ DetailMemSize, D.39831
	bgt	.L1568	@,
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	ldr	r3, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1672	@,
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	b	.L1672	@
.L1706:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp898,,
	str	ip, [sp, #68]	@ D.39831, %sfp
	bl	__memzero	@
	ldr	ip, [sp, #68]	@ D.39831, %sfp
	mov	r2, r10	@, DetailMemSize$8
	mov	r0, #1	@ tmp900,
	add	r3, sp, #188	@ tmp899,,
	str	r0, [sp]	@ tmp900,
	mov	r1, ip	@, D.39831
	ldr	r0, .L1726+4	@,
	bl	MEM_AllocMemBlock	@
	subs	r10, r0, #0	@ D.39831,
	bne	.L1714	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	ip, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r2, r9	@, DetailMemSize
	ldr	lr, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	mov	r1, r10	@, D.39831
	str	r0, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	add	r3, sp, #188	@ tmp901,,
	str	r10, [sp]	@ D.39831,
	mov	r9, #1	@ tmp902,
	ldr	r0, .L1726+8	@,
	str	ip, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r9, [sp, #100]	@ tmp902, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	lr, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bl	MEM_AllocMemBlock	@
	subs	ip, r0, #0	@ D.39831,
	bne	.L1715	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	str	ip, [sp, #68]	@ D.39831, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r1, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	mov	r0, #1	@ tmp903,
	ldr	r2, [sp, #196]	@ D.39831, MemRecord.PhyAddr
	ldr	r3, [sp, #192]	@ D.39839, MemRecord.VirAddr
	cmp	r1, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	ldr	r1, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #92]	@ tmp903, MEM[(HI_S32 *)&ChanMemFlag]
	str	r2, [sp, #124]	@ D.39831, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r3, [sp, #128]	@ D.39839, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #132]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	ldr	ip, [sp, #68]	@ D.39831, %sfp
	beq	.L1575	@,
	str	ip, [sp]	@ D.39831,
	add	r3, sp, #188	@ tmp904,,
	mov	r2, fp	@, DetailMemSize$4
	mov	r1, ip	@, D.39831
	ldr	r0, .L1726+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1716	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r0, #1	@ tmp905,
	ldr	r3, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #96]	@ tmp905, MEM[(HI_S32 *)&ChanMemFlag + 4B]
	str	r1, [sp, #140]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r2, [sp, #144]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r3, [sp, #148]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1672	@
.L1637:
	mov	r9, #2	@ ChanID,
.L1617:
	uxtb	fp, r9	@ D.39844, ChanID
.L1616:
	add	ip, r7, r9, lsl #2	@ tmp829, tmp883, ChanID,
	ldr	r2, [sp, #160]	@ D.39833, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	lr, .L1726+40	@ tmp826,
	movw	r1, #63424	@,
	ldr	r7, .L1726+44	@ tmp824,
	movt	r1, 4	@,
	ldr	r3, [ip, #-3480]	@ tmp835, g_ChanTick
	mov	r0, r2	@, D.39833
	str	ip, [sp, #68]	@ tmp829, %sfp
	add	r3, r3, #1	@ D.39832, tmp835,
	str	r2, [r10, r9, asl #2]	@ D.39833, s_pstVfmwChan
	str	r3, [ip, #-3480]	@ D.39832, g_ChanTick
	mov	r2, #30	@ tmp825,
	str	r2, [lr, r9, asl #2]	@ tmp825, g_LastFrameRate
	str	r2, [r7, r9, asl #2]	@ tmp825, g_FrameRate
	bl	__memzero	@
	ldr	r7, [r10, r9, asl #2]	@ D.39830, s_pstVfmwChan
	mov	r2, #152	@,
	mov	r1, r4	@, pChanOption
	add	r0, r7, #1440	@, D.39830,
	add	r0, r0, #4	@,,
	bl	memcpy	@
	ldr	r1, .L1726+48	@ tmp869,
	movw	r2, #11160	@ tmp871,
	str	r9, [r7]	@ ChanID, _43->s32ChanID
	movt	r2, 1	@ tmp871,
	ldr	r3, [r10, r9, asl #2]	@ D.39830, s_pstVfmwChan
	mla	r2, r2, r9, r1	@ tmp872, tmp871, ChanID, tmp869
	ldr	ip, [sp, #68]	@ tmp829, %sfp
	add	r0, r3, #172032	@ tmp849, D.39830,
	movw	r1, #9160	@ tmp845,
	str	r6, [r7, #24]	@ eCapLevel, _43->eChanCapLevel
	movt	r1, 8	@ tmp845,
	str	r6, [r7, #920]	@ eCapLevel, _43->stSynExtraData.eCapLevel
	add	r2, r2, #75776	@ tmp873, tmp872,
	str	r1, [r7, #1388]	@ tmp845, _43->stSynExtraData.s32BasicCtxSize
	mov	r1, #0	@ tmp846,
	ldr	ip, [ip, #-3480]	@ tmp868, g_ChanTick
	add	lr, r3, #208896	@ tmp853, D.39830,
	str	r1, [r7, #1404]	@ tmp846, _43->stSynExtraData.s32MoreGapEnable
	add	r2, r2, #912	@ tmp873, tmp873,
	strb	fp, [r0, #4048]	@ D.39844, _51->FspInst.s32InstID
	add	fp, r3, #163840	@ tmp859, D.39830,
	ldr	r0, [r4]	@ D.39835, pChanOption_14(D)->eAdapterType
	mov	r1, #19	@ tmp851,
	ldr	r7, .L1726+52	@ tmp860,
	str	r1, [r3, #880]	@ tmp851, _51->eVidStd
	str	r0, [r3, #20]	@ D.39835, _51->eAdapterType
	add	r0, r9, #26	@ tmp856, ChanID,
	str	r1, [lr, #2936]	@ tmp851, _51->stSynCtx.eVidStd
	add	r1, r3, #175104	@ D.39837, D.39830,
	str	r9, [fp, #3860]	@ ChanID, MEM[(struct SM_INSTANCE_S *)_51 + 1632B].InstID
	add	r1, r1, #976	@ D.39837, D.39837,
	str	ip, [lr, #2932]	@ tmp868, _51->u32ChanTick
	add	ip, r3, #1632	@ D.39836, D.39830,
	ldr	r2, [r2, #4]	@ D.39831, s_DnrChan[ChanID_576].s32DnrEnable
	str	r1, [r7, r9, asl #2]	@ D.39837, s_pFspInst
	ldr	lr, .L1726+56	@ tmp855,
	str	r2, [r3, #1604]	@ D.39831, _51->stSynExtraData.s32DnrEnable
	ldr	r1, [r4, #140]	@ D.39838, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	str	ip, [lr, r0, asl #2]	@ D.39836, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ D.39838,
	streq	r1, [r3, #1608]	@ D.39838, _51->stSynExtraData.s32DSDThrWidth
	streq	r1, [r3, #1612]	@ D.39838, _51->stSynExtraData.s32DSDThrHeight
	beq	.L1619	@,
	mov	r0, r1, asl #5	@ tmp702, D.39838,
	ldr	r2, .L1726+60	@ tmp699,
	sub	r1, r0, r1, asl #2	@ tmp703, tmp702, D.39838,
	ldr	r1, [r2, r1]	@ D.39831, CapItem
	str	r1, [r3, #1608]	@ D.39831, _51->stSynExtraData.s32DSDThrWidth
	ldr	r0, [r4, #140]	@ pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	mov	r1, r0, asl #5	@ tmp709, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	sub	r1, r1, r0, asl #2	@ tmp710, tmp709, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r2, r2, r1	@ tmp711, tmp699, tmp710
	ldr	r2, [r2, #4]	@ D.39831, CapItem
	str	r2, [r3, #1612]	@ D.39831, _51->stSynExtraData.s32DSDThrHeight
.L1619:
	ldr	r0, [r10, r9, asl #2]	@ D.39830, s_pstVfmwChan
	mov	r2, #0	@ tmp884,
	mov	ip, #-2147483648	@ tmp885,
	add	r3, r0, #209920	@ ivtmp.852, D.39830,
	add	r0, r0, #210944	@ tmp880, D.39830,
	add	r3, r3, #824	@ ivtmp.852, ivtmp.852,
	add	r1, r0, #824	@ D.39848, tmp880,
.L1620:
	str	r2, [r3, #8]	@ tmp884, MEM[base: _269, offset: 8B]
	str	r2, [r3, #12]	@ tmp884, MEM[base: _269, offset: 12B]
	stmia	r3, {r2, ip}	@ ivtmp.852,,
	add	r3, r3, #16	@ ivtmp.852, ivtmp.852,
	cmp	r3, r1	@ ivtmp.852, D.39848
	bne	.L1620	@,
	add	r0, r0, #824	@, tmp880,
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	ip, [r10, r9, asl #2]	@ D.39830, s_pstVfmwChan
	ldr	r1, .L1726+64	@,
	mov	r0, #31	@,
	ldr	r7, .L1726+20	@ tmp719,
	ldr	lr, [ip, #1588]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum, _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r3, [ip, #1608]	@ _84->stSynExtraData.s32DSDThrWidth, _84->stSynExtraData.s32DSDThrWidth
	ldr	r2, [ip, #1580]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	lr, [sp, #4]	@ _84->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum,
	ldr	ip, [ip, #1612]	@ _84->stSynExtraData.s32DSDThrHeight, _84->stSynExtraData.s32DSDThrHeight
	str	ip, [sp]	@ _84->stSynExtraData.s32DSDThrHeight,
	bl	dprint_vfmw	@
	mov	r0, r9	@, ChanID
	bl	VCTRL_ResetChan	@
	ldmia	r5, {r0, r1, r2, r3}	@ tmp878,,,,
	add	ip, sp, #48	@ tmp725,,
	ldr	fp, [sp, #124]	@ MEM[(struct  *)&ChanMemDetail], MEM[(struct  *)&ChanMemDetail]
	ldr	r5, [sp, #180]	@ MEM[(struct  *)&ChanMemDetail + 56B], MEM[(struct  *)&ChanMemDetail + 56B]
	ldr	lr, [sp, #176]	@ MEM[(struct  *)&ChanMemDetail + 52B], MEM[(struct  *)&ChanMemDetail + 52B]
	stmia	ip, {r0, r1, r2, r3}	@ tmp725,,,,
	mov	r2, r8	@, OneChanMemFlag
	ldr	ip, [sp, #160]	@ MEM[(struct  *)&ChanMemDetail + 36B], MEM[(struct  *)&ChanMemDetail + 36B]
	mov	r1, r6	@, eCapLevel
	ldr	r8, [sp, #172]	@ MEM[(struct  *)&ChanMemDetail + 48B], MEM[(struct  *)&ChanMemDetail + 48B]
	mov	r3, r4	@, pChanOption
	ldr	r6, [sp, #164]	@ MEM[(struct  *)&ChanMemDetail + 40B], MEM[(struct  *)&ChanMemDetail + 40B]
	mov	r0, r9	@, ChanID
	str	fp, [sp]	@ MEM[(struct  *)&ChanMemDetail],
	str	r5, [sp, #44]	@ MEM[(struct  *)&ChanMemDetail + 56B],
	ldr	fp, [sp, #156]	@ MEM[(struct  *)&ChanMemDetail + 32B], MEM[(struct  *)&ChanMemDetail + 32B]
	ldr	r5, [sp, #144]	@ MEM[(struct  *)&ChanMemDetail + 20B], MEM[(struct  *)&ChanMemDetail + 20B]
	str	lr, [sp, #40]	@ MEM[(struct  *)&ChanMemDetail + 52B],
	str	r8, [sp, #36]	@ MEM[(struct  *)&ChanMemDetail + 48B],
	ldr	lr, [sp, #140]	@ MEM[(struct  *)&ChanMemDetail + 16B], MEM[(struct  *)&ChanMemDetail + 16B]
	ldr	r8, [sp, #132]	@ MEM[(struct  *)&ChanMemDetail + 8B], MEM[(struct  *)&ChanMemDetail + 8B]
	str	r6, [sp, #32]	@ MEM[(struct  *)&ChanMemDetail + 40B],
	str	ip, [sp, #28]	@ MEM[(struct  *)&ChanMemDetail + 36B],
	ldr	r6, [sp, #128]	@ MEM[(struct  *)&ChanMemDetail + 4B], MEM[(struct  *)&ChanMemDetail + 4B]
	ldr	ip, [sp, #148]	@ tmp913, MEM[(struct  *)&ChanMemDetail + 24B]
	str	fp, [sp, #24]	@ MEM[(struct  *)&ChanMemDetail + 32B],
	str	r5, [sp, #16]	@ MEM[(struct  *)&ChanMemDetail + 20B],
	str	ip, [sp, #20]	@ tmp913,
	stmib	sp, {r6, r8, lr}	@,,,
	bl	VCTRL_ConfigMemInfo.isra.1	@
	cmp	r0, #0	@,
	bne	.L1621	@,
	ldr	r3, [r7, r9, asl #2]	@ tmp740, s_pstVfmwChan
	mov	r0, r9	@, ChanID
	str	r9, [r3, #140]	@ ChanID, _106->s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1717	@,
	ldr	r3, [r7, r9, asl #2]	@ D.39830, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _110->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1623	@,
	ldr	r3, [r3, #236]	@ D.39831, _110->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.39831
	str	r3, [sp, #76]	@ D.39831, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r7, r9, asl #2]	@ tmp745, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _117->s32OffLineDNRMemSize, _117->s32OffLineDNRMemSize
	str	r3, [sp, #84]	@ _117->s32OffLineDNRMemSize, DnrMem.Length
	str	r0, [sp, #80]	@, DnrMem.VirAddr
	mov	r0, r9	@, ChanID
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1624	@,
	ldr	r3, [r4, #16]	@, pChanOption_14(D)->s32MaxHeight
	add	r1, sp, #76	@,,
	ldr	r2, [r4, #12]	@, pChanOption_14(D)->s32MaxWidth
	mov	r0, r9	@, ChanID
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1718	@,
.L1624:
	mov	r0, r9	@, ChanID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1719	@,
.L1623:
	mov	r0, r9	@, ChanID
	bl	SM_ClearInst	@
	ldr	r3, [r10, r9, asl #2]	@ tmp753, s_pstVfmwChan
	mov	r0, r9	@, ChanID
	ldr	r1, [r3, #204]	@ _131->stChanMem_ctx.VirAddr, _131->stChanMem_ctx.VirAddr
	add	r1, r1, #323584	@, _131->stChanMem_ctx.VirAddr,
	add	r1, r1, #4032	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r10, r9, asl #2]	@ D.39830, s_pstVfmwChan
	mov	r2, #1	@ tmp758,
	mov	r0, r9	@, ChanID
	str	r2, [r3, #4]	@ tmp758, _135->s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1726+24	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r9	@ D.39829, ChanID
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1577:
	ldr	r1, .L1726+68	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39829,
	b	.L1692	@
.L1717:
	ldr	r1, .L1726+72	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1621:
	mov	r0, r9	@, ChanID
	bl	VCTRL_UnInstallChan	@
	ldr	r4, [r10, r9, asl #2]	@ D.39830, s_pstVfmwChan
	mov	r2, #16	@,
	add	r0, sp, #188	@ tmp914,,
	add	r3, r4, #208896	@ tmp767, D.39830,
	add	r1, r4, #152	@, D.39830,
	ldr	ip, [r4, #224]	@ _143->s32SelfAllocChanMem_ctx, _143->s32SelfAllocChanMem_ctx
	str	ip, [sp, #260]	@ _143->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	ldr	ip, [r4, #216]	@ _143->s32SelfAllocChanMem_vdh, _143->s32SelfAllocChanMem_vdh
	str	ip, [sp, #252]	@ _143->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	ip, [r4, #220]	@ _143->s32SelfAllocChanMem_scd, _143->s32SelfAllocChanMem_scd
	str	ip, [sp, #256]	@ _143->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r3, [r3, #2912]	@ _143->s32SelfAllocChanMem_pmv, _143->s32SelfAllocChanMem_pmv
	str	r3, [sp, #264]	@ _143->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r4, #200	@, D.39830,
	mov	r2, #16	@,
	add	r0, sp, #236	@,,
	bl	memcpy	@
	add	r1, r4, #168	@, D.39830,
	mov	r2, #16	@,
	add	r0, sp, #204	@,,
	bl	memcpy	@
	add	r1, r4, #184	@, D.39830,
	mov	r2, #16	@,
	add	r0, sp, #220	@,,
	bl	memcpy	@
	add	r1, r4, #104	@, D.39830,
	mov	r2, #12	@,
	add	r0, sp, #268	@,,
	bl	memcpy	@
	add	r1, r4, #210944	@, D.39830,
	add	r1, r1, #868	@,,
	mov	r2, #16	@,
	add	r0, sp, #280	@,,
	bl	memcpy	@
	mov	r0, r9	@, ChanID
	mov	r3, #0	@ tmp812,
	str	r3, [r10, r9, asl #2]	@ tmp812, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1726+24	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #188	@ tmp915,,
	mov	r0, r9	@, ChanID
	bl	VCTRL_FreeChanResource	@
	mvn	r0, #0	@ D.39829,
	b	.L1692	@
.L1575:
	str	r2, [sp, #140]	@ D.39831, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ D.39839, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	ip, [sp, #148]	@ D.39831, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1672	@
.L1708:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1720	@,
.L1586:
	movw	r2, #1979	@,
	ldr	r1, .L1726+76	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1704:
	mov	r2, #2400	@,
	ldr	r1, .L1726+80	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39829,
	b	.L1692	@
.L1636:
	mov	r9, #1	@ ChanID,
	b	.L1617	@
.L1635:
	mov	fp, r3	@ D.39844, s_pstVfmwChan
	mov	r9, r3	@ ChanID, D.39844
	b	.L1616	@
.L1709:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1721	@,
.L1594:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1722	@,
.L1595:
	movw	r2, #2045	@,
	ldr	r1, .L1726+84	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1710:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1723	@,
.L1606:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1724	@,
.L1607:
	ldr	r3, [sp, #96]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	beq	.L1725	@,
.L1608:
	movw	r2, #2136	@,
	ldr	r1, .L1726+88	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1701:
	ldr	r1, .L1726+92	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1707:
	mov	r0, r10	@, tmp516
	movw	r2, #1930	@,
	ldr	r1, .L1726+96	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1712:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1590	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	ldr	r2, [sp, #132]	@ D.39829, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
.L1590:
	mov	r3, r2	@, D.39829
	str	r9, [sp]	@ DetailMemSize,
	movw	r2, #2002	@,
	ldr	r1, .L1726+100	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1700:
	ldr	r1, .L1726+104	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1719:
	ldr	r1, .L1726+108	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1621	@
.L1720:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1586	@
.L1568:
	movw	r2, #1827	@,
	ldr	r1, .L1726+112	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1724:
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1607	@
.L1723:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1606	@
.L1725:
	ldr	r1, [sp, #144]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1608	@
.L1715:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	mov	r0, r9	@, tmp902
	movw	r2, #1876	@,
	ldr	r1, .L1726+76	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1714:
	movw	r2, #1860	@,
	ldr	r1, .L1726+116	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1718:
	ldr	r1, .L1726+120	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1621	@
.L1563:
	movw	r2, #1812	@,
	ldr	r1, .L1726+124	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1711:
	movw	r2, #1946	@,
	ldr	r1, .L1726+128	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1722:
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1595	@
.L1721:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1594	@
.L1713:
	movw	r2, #1819	@,
	ldr	r1, .L1726+132	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1716:
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
	ldr	r1, .L1726+84	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1612:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1613	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1613:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1614	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1614:
	ldr	r3, [sp, #96]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	bne	.L1615	@,
	ldr	r1, [sp, #144]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1615:
	movw	r2, #2181	@,
	ldr	r1, .L1726+136	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1600:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1601	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1601:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1602	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1602:
	movw	r2, #2084	@,
	ldr	r1, .L1726+132	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1625	@
.L1727:
	.align	2
.L1726:
	.word	.LANCHOR3
	.word	.LC181
	.word	.LC183
	.word	.LC185
	.word	.LC190
	.word	.LANCHOR0
	.word	.LANCHOR3-3396
	.word	.LC194
	.word	.LC121
	.word	.LC122
	.word	g_LastFrameRate
	.word	g_FrameRate
	.word	s_DnrChan
	.word	s_pFspInst
	.word	s_SmIIS
	.word	CapItem
	.word	.LC195
	.word	.LC193
	.word	.LC196
	.word	.LC184
	.word	.LC177
	.word	.LC186
	.word	.LC191
	.word	.LC126
	.word	.LC187
	.word	.LC189
	.word	.LC176
	.word	.LC198
	.word	.LC180
	.word	.LC182
	.word	.LC197
	.word	.LC178
	.word	.LC188
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
	bhi	.L1751	@,
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
	ldr	r2, .L1753	@ tmp218,
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
	b	.L1731	@
.L1733:
	.word	.L1741
	.word	.L1741
	.word	.L1741
	.word	.L1741
	.word	.L1741
	.word	.L1734
	.word	.L1734
	.word	.L1734
.L1741:
	mov	r0, #3	@ MinDispFspNum,
.L1732:
	rsb	r3, r1, ip	@ tmp169, tmp215, tmp216
	rsb	ip, r1, ip	@ tmp181, tmp215, tmp216
	add	r3, r2, r3	@ tmp170, tmp218, tmp169
	add	r2, r2, ip	@ tmp182, tmp218, tmp181
	mov	r1, #0	@ tmp185,
	str	r0, [sp, #124]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	ldr	r3, [r3, #12]	@ D.39920, CapItem
	ldr	r2, [r2, #24]	@ tmp184, CapItem
	cmp	r0, r3	@ MinDispFspNum, D.39920
	str	r1, [sp, #128]	@ tmp185, stChanOption.s32SlotWidth
	rsblt	r3, r0, r3	@ D.39920, MinDispFspNum, D.39920
	str	r1, [sp, #132]	@ tmp185, stChanOption.s32SlotHeight
	movge	r3, #1	@ tmp172,
	str	r2, [sp, #120]	@ tmp184, stChanOption.s32SCDBufSize
	cmp	r4, #24	@ eCapLevel,
	str	r3, [sp, #96]	@ D.39920, stChanOption.s32MaxRefFrameNum
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
	bne	.L1752	@,
	cmp	r5, #0	@ pChanMem,
	beq	.L1742	@,
	ldr	ip, [r5, #8]	@ D.39920, pChanMem_40(D)->Length
	cmp	ip, #0	@ D.39920,
	beq	.L1739	@,
	ldr	r2, [r5]	@ D.39920, pChanMem_40(D)->PhyAddr
	cmp	r2, #0	@ D.39920,
	beq	.L1740	@,
	ldr	r1, [r5, #4]	@ D.39921, pChanMem_40(D)->VirAddr
	cmp	r1, #0	@ D.39921,
	beq	.L1740	@,
	ldr	r3, [sp, #8]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r0, [sp, #20]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r3, r0	@ D.39920, VdmChanMemSize, ScdChanMemSize
	cmp	ip, r3	@ D.39920, D.39920
	blt	.L1740	@,
	ldr	r5, [sp, #24]	@ D.39920, ScdChanMemSize
	add	r8, sp, #152	@ tmp199,,
	str	r2, [sp, #48]	@ D.39920, scd_MemRecord.PhyAddr
	add	lr, sp, #136	@ tmp201,,
	add	r9, r2, r5	@ D.39920, D.39920, D.39920
	add	r10, r1, r5	@ D.39921, D.39921, D.39920
	str	r5, [sp, #56]	@ D.39920, scd_MemRecord.Length
	rsb	r5, r5, ip	@ D.39920, D.39920, D.39920
	str	r1, [sp, #52]	@ D.39921, scd_MemRecord.VirAddr
	mov	ip, #1	@ OneChanMemFlag,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp219,,,,
	mov	r7, #3	@ tmp195,
	str	r9, [sp, #32]	@ D.39920, vdh_MemRecord.PhyAddr
	str	r10, [sp, #36]	@ D.39921, vdh_MemRecord.VirAddr
	str	r5, [sp, #40]	@ D.39920, vdh_MemRecord.Length
	stmia	r8, {r0, r1, r2, r3}	@ tmp199,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp217,,,,
	str	r7, [sp, #72]	@ tmp195, stChanOption.MemAllocMode
	stmia	lr, {r0, r1, r2, r3}	@ tmp201,,,,
.L1739:
	mov	r3, ip	@, OneChanMemFlag
	add	r1, sp, #64	@ tmp229,,
	mov	r0, r4	@, eCapLevel
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.39919,
.L1730:
	add	sp, sp, #216	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1734:
	mov	r0, #1	@ MinDispFspNum,
	b	.L1732	@
.L1731:
	mov	r0, #6	@ MinDispFspNum,
	b	.L1732	@
.L1742:
	mov	ip, r5	@ OneChanMemFlag, pChanMem
	b	.L1739	@
.L1751:
	mov	r2, r0	@, eCapLevel
	ldr	r1, .L1753+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39919,
	b	.L1730	@
.L1740:
	ldr	r1, .L1753+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #8]	@ pChanMem_40(D)->Length, pChanMem_40(D)->Length
	ldmia	r5, {r2, r3}	@ pChanMem,,
	mov	r0, #1	@,
	ldr	r1, .L1753+12	@,
	str	ip, [sp]	@ pChanMem_40(D)->Length,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #8]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r3, [sp, #20]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	ldr	r1, .L1753+16	@,
	add	r2, r2, r3	@, VdmChanMemSize, ScdChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39919,
	b	.L1730	@
.L1752:
	ldr	r1, .L1753+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39919,
	b	.L1730	@
.L1754:
	.align	2
.L1753:
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
	mov	r4, r0	@ ChanID, ChanID
	.pad #112
	sub	sp, sp, #112	@,,
	ldr	r0, .L1780	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #3	@ ChanID,
	bhi	.L1775	@,
	ldr	r7, .L1780+4	@ tmp244,
	ldr	r5, [r7, r4, asl #2]	@ D.39932, s_pstVfmwChan
	cmp	r5, #0	@ D.39932,
	beq	.L1776	@,
	ldr	r3, [r5, #4]	@ _11->s32IsOpen, _11->s32IsOpen
	cmp	r3, #1	@ _11->s32IsOpen,
	bne	.L1777	@,
	ldr	r1, .L1780+8	@ tmp156,
	mov	r3, #30	@ tmp157,
	ldr	r2, .L1780+12	@ tmp158,
	ldr	r0, .L1780+16	@,
	str	r3, [r1, r4, asl #2]	@ tmp157, g_FrameRate
	str	r3, [r2, r4, asl #2]	@ tmp157, g_LastFrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	cmp	r0, #0	@,
	ldr	r0, .L1780+16	@,
	bne	.L1778	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r0, .L1780+16	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, .L1780+20	@ tmp169,
	movw	r3, #11160	@ tmp171,
	ldr	r2, [r7, r4, asl #2]	@ tmp168, s_pstVfmwChan
	movt	r3, 1	@ tmp171,
	mla	r3, r3, r4, r1	@ tmp172, tmp171, ChanID, tmp169
	ldr	r2, [r2, #1604]	@ D.39933, _29->stSynExtraData.s32DnrEnable
	add	r3, r3, #75776	@ tmp173, tmp172,
	str	r2, [r3, #916]	@ D.39933, s_DnrChan[ChanID_6(D)].s32DnrEnable
	ldr	r3, [r5, #880]	@ D.39934, _11->eVidStd
	cmp	r3, #4	@ D.39934,
	beq	.L1761	@,
	sub	r2, r3, #10	@ D.39935, D.39934,
	cmp	r2, #2	@ D.39935,
	bhi	.L1762	@,
	ldr	r2, [r7, #3640]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1762	@,
.L1761:
	ldr	r3, [r7, #244]	@ D.39936, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.39936,
	beq	.L1763	@,
.L1779:
	add	r0, r5, #210944	@, D.39932,
	add	r0, r0, #896	@,,
	blx	r3	@ D.39936
.L1763:
	mov	r0, r4	@, ChanID
	mov	r6, #0	@ tmp233,
	bl	VCTRL_UnInstallChan	@
	ldr	r5, [r7, r4, asl #2]	@ D.39932, s_pstVfmwChan
	mov	r2, #16	@,
	add	r0, sp, #4	@ tmp245,,
	add	r3, r5, #208896	@ tmp187, D.39932,
	add	r1, r5, #152	@, D.39932,
	ldr	lr, [r5, #224]	@ _40->s32SelfAllocChanMem_ctx, _40->s32SelfAllocChanMem_ctx
	ldr	ip, [r5, #216]	@ _40->s32SelfAllocChanMem_vdh, _40->s32SelfAllocChanMem_vdh
	ldr	r8, [r3, #2912]	@ _40->s32SelfAllocChanMem_pmv, _40->s32SelfAllocChanMem_pmv
	ldr	r3, [r5, #220]	@ _40->s32SelfAllocChanMem_scd, _40->s32SelfAllocChanMem_scd
	str	lr, [sp, #76]	@ _40->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	str	ip, [sp, #68]	@ _40->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	str	r3, [sp, #72]	@ _40->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	str	r8, [sp, #80]	@ _40->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r5, #200	@, D.39932,
	mov	r2, #16	@,
	add	r0, sp, #52	@,,
	bl	memcpy	@
	add	r1, r5, #168	@, D.39932,
	mov	r2, #16	@,
	add	r0, sp, #20	@,,
	bl	memcpy	@
	add	r1, r5, #184	@, D.39932,
	mov	r2, #16	@,
	add	r0, sp, #36	@,,
	bl	memcpy	@
	add	r1, r5, #104	@, D.39932,
	mov	r2, #12	@,
	add	r0, sp, #84	@,,
	bl	memcpy	@
	add	r1, r5, #210944	@, D.39932,
	add	r1, r1, #868	@,,
	mov	r2, #16	@,
	add	r0, sp, #96	@,,
	bl	memcpy	@
	ldr	r2, .L1780+24	@ tmp231,
	ldr	r3, .L1780+28	@ tmp234,
	add	r1, r4, #26	@ tmp232, ChanID,
	mov	r0, r4	@, ChanID
	str	r6, [r7, r4, asl #2]	@ tmp233, s_pstVfmwChan
	str	r6, [r2, r1, asl #2]	@ tmp233, s_SmIIS.pSmInstArray
	str	r6, [r3, r4, asl #2]	@ tmp233, s_pFspInst
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, ChanID
	bl	DNR_CloseChan	@
	ldr	r0, .L1780+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1780	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #4	@ tmp246,,
	mov	r0, r4	@, ChanID
	bl	VCTRL_FreeChanResource	@
	mov	r0, r6	@ D.39930, tmp233
.L1757:
	add	sp, sp, #112	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1762:
	cmp	r3, #14	@ D.39934,
	bne	.L1763	@,
	ldr	r3, [r7, #244]	@ D.39936, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.39936,
	bne	.L1779	@,
	b	.L1763	@
.L1777:
	ldr	r3, .L1780+32	@,
	movw	r2, #2619	@,
	ldr	r1, .L1780+36	@,
	mov	r0, #0	@,
.L1774:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1780	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39930,
	add	sp, sp, #112	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1778:
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1780	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39930,
	b	.L1757	@
.L1775:
	ldr	r3, .L1780+40	@,
	movw	r2, #2599	@,
	ldr	r1, .L1780+36	@,
	mov	r0, #0	@,
	b	.L1774	@
.L1776:
	mov	r0, r5	@, D.39932
	ldr	r3, .L1780+44	@,
	movw	r2, #2607	@,
	ldr	r1, .L1780+36	@,
	b	.L1774	@
.L1781:
	.align	2
.L1780:
	.word	.LANCHOR3-3396
	.word	.LANCHOR0
	.word	g_FrameRate
	.word	g_LastFrameRate
	.word	g_SpinLockIrq_Destroy
	.word	s_DnrChan
	.word	s_SmIIS
	.word	s_pFspInst
	.word	.LC82
	.word	.LC5
	.word	.LC69
	.word	.LC81
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
	ldr	r3, .L1784	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r3, r3, r4, lsl #2	@ tmp114, tmp113, ChanID,
	str	r2, [r3, #3644]	@ tmp116, g_DSPState
	ldmfd	sp!, {r4, pc}	@
.L1785:
	.align	2
.L1784:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L1805	@ tmp147,
	ldr	r3, [r5, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L1793	@,
	ldr	r8, .L1805+4	@ tmp149,
	mov	r4, #0	@ i,
	mov	r7, r4	@ tmp150, i
	mov	r6, r5	@ ivtmp.879, tmp147
.L1789:
	ldr	r3, [r6], #4	@ D.39984, MEM[base: _2, offset: 0B]
	mov	r0, r4	@, i
	cmp	r3, #0	@ D.39984,
	beq	.L1788	@,
	bl	VCTRL_DestroyChanWithOption	@
	str	r7, [r8, r4, asl #2]	@ tmp150, MEM[symbol: g_DSPState, index: _34, offset: 0B]
.L1788:
	add	r4, r4, #1	@ i, i,
	cmp	r4, #4	@ i,
	bne	.L1789	@,
	bl	FSP_Exit	@
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r2, #3	@ tmp131,
	str	r2, [r5, #48]	@ tmp131, s_VfmwCTrl.eTaskCommand
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1791	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.39986,
	bl	msleep	@
	b	.L1792	@
.L1804:
	bl	msleep	@
	subs	r4, r4, #1	@ D.39986, D.39986,
	beq	.L1791	@,
.L1792:
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1804	@,
.L1791:
	mov	r1, #16	@,
	ldr	r0, .L1805+4	@,
	mov	r4, #0	@ tmp135,
	str	r4, [r5, #48]	@ tmp135, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1805+8	@,
	bl	CloseDrivers	@
	str	r4, [r5, #16]	@ tmp135, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r0, r4	@ D.39981, tmp135
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1793:
	mvn	r0, #0	@ D.39981,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1806:
	.align	2
.L1805:
	.word	.LANCHOR0
	.word	.LANCHOR0+3644
	.word	.LANCHOR0+64
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L1823	@,
	ldr	r5, .L1827	@ tmp186,
	ldr	r3, [r5, r0, asl #2]	@ D.40004, s_pstVfmwChan
	cmp	r3, #0	@ D.40004,
	beq	.L1824	@,
	ldr	r7, [r3, #4]	@ _12->s32IsOpen, _12->s32IsOpen
	cmp	r7, #1	@ _12->s32IsOpen,
	bne	.L1825	@,
	ldr	r3, [r3, #880]	@ _12->eVidStd, _12->eVidStd
	cmp	r3, #19	@ _12->eVidStd,
	beq	.L1826	@,
	mov	r8, r1	@ pChanMemVdh, pChanMemVdh
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5, r4, asl #2]	@ D.40004, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _19->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _19->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _19->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r6, [r5, r4, asl #2]	@ D.40004, s_pstVfmwChan
	mov	r1, r8	@, pChanMemVdh
	mov	r2, #16	@,
	add	r0, r6, #168	@, D.40004,
	bl	memcpy	@
	ldr	r2, [r6, #180]	@, _24->stChanMem_vdh.Length
	ldr	r1, [r6, #172]	@, _24->stChanMem_vdh.VirAddr
	ldr	r0, [r6, #176]	@, _24->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r4	@, ChanID
	bl	SM_Start	@
	ldr	r3, [r5, r4, asl #2]	@ D.40004, s_pstVfmwChan
	mov	r1, #0	@ tmp171,
	str	r7, [r3, #8]	@ _12->s32IsOpen, _33->s32IsRun
	ldr	r2, [r5, r4, asl #2]	@ D.40004, s_pstVfmwChan
	ldr	r3, [r2, #12]	@ _35->s32Priority, _35->s32Priority
	str	r1, [r2, #16]	@ tmp171, _35->s32StopSyntax
	cmp	r3, r1	@ _35->s32Priority,
	bne	.L1813	@,
	ldr	r3, .L1827+4	@ ivtmp.897,
	mov	r0, r5	@ ivtmp.893, tmp186
	ldr	r1, .L1827+8	@ ivtmp.898,
	add	lr, r3, #16	@ D.40003, ivtmp.897,
	str	r7, [r2, #12]	@ _12->s32IsOpen, _35->s32Priority
.L1816:
	ldr	r2, [r0], #4	@ D.40004, MEM[base: _64, offset: 0B]
	add	r3, r3, #4	@ ivtmp.897, ivtmp.897,
	add	r1, r1, #4	@ ivtmp.898, ivtmp.898,
	cmp	r2, #0	@ D.40004,
	streq	r2, [r3, #-4]	@ D.40004, MEM[base: _68, offset: 0B]
	ldrne	ip, [r2, #12]	@ D.40005, _39->s32Priority
	strne	ip, [r3, #-4]	@ D.40005, MEM[base: _66, offset: 0B]
	ldrne	r2, [r2, #12]	@ D.40005, _39->s32Priority
	cmp	r3, lr	@ ivtmp.897, D.40003
	str	r2, [r1, #-4]	@ D.40004,
	bne	.L1816	@,
	ldr	r0, .L1827+4	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
.L1813:
	ldr	r3, [r5, r4, asl #2]	@ tmp183, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1817	@,
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
.L1817:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40002,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1825:
	ldr	r3, .L1827+12	@,
	movw	r2, #2759	@,
	ldr	r1, .L1827+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40002,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1823:
	ldr	r3, .L1827+20	@,
	movw	r2, #2757	@,
	ldr	r1, .L1827+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40002,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1826:
	ldr	r3, .L1827+24	@,
	movw	r2, #2760	@,
	ldr	r1, .L1827+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40002,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1824:
	mov	r0, r3	@, D.40004
	movw	r2, #2758	@,
	ldr	r3, .L1827+28	@,
	ldr	r1, .L1827+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40002,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1828:
	.align	2
.L1827:
	.word	.LANCHOR0
	.word	.LANCHOR3-3280
	.word	g_ChanCtx
	.word	.LC78
	.word	.LC5
	.word	.LC69
	.word	.LC79
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0	@ tmp358,
	.pad #92
	sub	sp, sp, #92	@,,
	mov	r6, r0	@ ChanID, ChanID
	mov	r5, r1	@ pstCfg, pstCfg
	str	r4, [r1, #44]	@ tmp358, pstCfg_12(D)->s32VcmpEn
	bhi	.L1919	@,
	ldr	r7, .L1937	@ tmp670,
	ldr	r3, [r7, r0, asl #2]	@ D.40059, s_pstVfmwChan
	cmp	r3, #0	@ D.40059,
	beq	.L1920	@,
	ldr	r3, [r3, #4]	@ _17->s32IsOpen, _17->s32IsOpen
	cmp	r3, #1	@ _17->s32IsOpen,
	bne	.L1921	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@,
	bne	.L1922	@,
	ldr	r8, [r5]	@ D.40060, pstCfg_12(D)->eVidStd
	cmp	r8, #18	@ D.40060,
	bgt	.L1918	@,
	mov	r1, r5	@, pstCfg
	mov	r0, r6	@, ChanID
	bl	VCTRL_CmpConfigParameter	@
	subs	r4, r0, #0	@ D.40057,
	beq	.L1923	@,
	ldr	r4, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
	cmp	r8, #4	@ D.40060,
	cmpne	r8, #14	@, D.40060,
	moveq	r8, #1	@ tmp380,
	movne	r8, #0	@ tmp380,
	ldr	r3, [r4, #32]	@ D.40060, _30->stChanCfg.eVidStd
	cmp	r3, #4	@ D.40060,
	cmpne	r3, #14	@, D.40060,
	moveq	r3, #1	@ tmp381,
	movne	r3, #0	@ tmp381,
	cmp	r8, r3	@ tmp380, tmp381
	beq	.L1837	@,
	ldr	r3, [r4, #148]	@ _30->s32OneChanMem, _30->s32OneChanMem
	ldr	r0, .L1937+4	@,
	cmp	r3, #0	@ _30->s32OneChanMem,
	bne	.L1838	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r4, #196]	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].Length, MEM[(struct MEM_RECORD_S *)_30 + 184B].Length
	ldr	r8, [r5]	@ D.40060, MEM[(HI_S32 *)pstCfg_12(D)]
	cmp	r3, #0	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].Length,
	bne	.L1924	@,
.L1839:
	ldr	r0, [r4, #172]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].VirAddr
	bl	KernelMunmap	@
	cmp	r8, #4	@ D.40060,
	cmpne	r8, #14	@, D.40060,
	ldr	r1, [r4, #180]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].Length
	moveq	r8, #1	@ tmp395,
	movne	r8, #0	@ tmp395,
	bne	.L1840	@,
	ldr	r0, [r4, #176]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].PhyAddr
	mov	r8, #1	@ tmp398,
	bl	KernelMmapCache	@
	ldr	r1, [r4, #196]	@ D.40060, MEM[(struct MEM_RECORD_S *)_30 + 184B].Length
	strb	r8, [r4, #168]	@ tmp398, MEM[(struct MEM_RECORD_S *)_30 + 168B].IsCached
	cmp	r1, #0	@ D.40060,
	mov	r10, r0	@ pVir_vdh,
	bne	.L1925	@,
.L1882:
	mov	r9, r1	@ pVir_scd, D.40060
.L1841:
	ldr	r0, .L1937+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r7, r6, asl #2]	@ tmp414, s_pstVfmwChan
	cmp	r0, #0	@ tmp414,
	beq	.L1926	@,
	cmp	r10, #0	@ pVir_vdh,
	beq	.L1844	@,
	ldr	r3, [r4, #196]	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].Length, MEM[(struct MEM_RECORD_S *)_30 + 184B].Length
	clz	r8, r9	@ tmp425, pVir_scd
	cmp	r3, #0	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].Length,
	mov	r8, r8, lsr #5	@ tmp425, tmp425,
	moveq	r8, #0	@ tmp425,
	cmp	r8, #0	@ tmp425,
	bne	.L1844	@,
	ldr	r2, [r4, #180]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].Length
	ldr	r1, [r4, #172]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].VirAddr
	ldr	r0, [r4, #176]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].PhyAddr
	bl	MEM_DelMemRecord	@
	subs	fp, r0, #0	@ D.40060,
	ldrne	r3, [r4, #172]	@ MEM[(struct MEM_RECORD_S *)_30 + 168B].VirAddr, MEM[(struct MEM_RECORD_S *)_30 + 168B].VirAddr
	movne	r0, r8	@, tmp425
	bne	.L1913	@,
	str	r10, [r4, #172]	@ pVir_vdh, MEM[(struct MEM_RECORD_S *)_30 + 168B].VirAddr
	mov	r1, r10	@, pVir_vdh
	ldr	r2, [r4, #180]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].Length
	ldr	r0, [r4, #176]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].PhyAddr
	bl	MEM_AddMemRecord	@
	subs	r8, r0, #0	@ D.40060,
	bne	.L1927	@,
	ldr	r2, [r4, #196]	@ D.40060, MEM[(struct MEM_RECORD_S *)_30 + 184B].Length
	cmp	r2, #0	@ D.40060,
	bne	.L1928	@,
.L1859:
	ldr	r3, [r5]	@ D.40060, MEM[(HI_S32 *)pstCfg_12(D)]
	cmp	r3, #4	@ D.40060,
	cmpne	r3, #14	@, D.40060,
	moveq	r4, #1	@ tmp526,
	movne	r4, #0	@ tmp526,
	bne	.L1860	@,
	ldr	r2, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
	add	r1, sp, #16	@,,
	mov	r0, r6	@, ChanID
	ldr	r3, [r2, #1460]	@ _198->stSynExtraData.stChanOption.s32MaxHeight, _198->stSynExtraData.stChanOption.s32MaxHeight
	ldr	ip, [r2, #252]	@ D.40060, _198->s32SdecMemSize
	ldr	lr, [r2, #248]	@ _198->s32SdecMemAddr, _198->s32SdecMemAddr
	mov	r3, r3, asl #1	@, _198->stSynExtraData.stChanOption.s32MaxHeight,
	ldr	r2, [r2, #1456]	@, _198->stSynExtraData.stChanOption.s32MaxWidth
	str	ip, [sp, #20]	@ D.40060, stMem.VirAddr
	str	lr, [sp, #16]	@ _198->s32SdecMemAddr, stMem.PhyAddr
	str	ip, [sp, #24]	@ D.40060, stMem.Length
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1929	@,
.L1861:
	ldr	r4, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
.L1837:
	mov	r2, #72	@,
	mov	r1, r5	@, pstCfg
	add	r0, r4, #32	@, D.40059,
	add	r9, r5, #4	@ D.40067, pstCfg,
	bl	memcpy	@
	ldr	r3, [r5, #12]	@ D.40060, pstCfg_12(D)->s32ChanPriority
	mov	r1, #40	@,
	add	r0, sp, #48	@ tmp677,,
	str	r3, [r4, #12]	@ D.40060, _193->s32Priority
	ldr	r2, [r5]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	ldr	r3, [r7, r6, asl #2]	@ tmp548, s_pstVfmwChan
	str	r2, [r3, #880]	@ pstCfg_12(D)->eVidStd, _42->eVidStd
	bl	__memzero	@
	ldr	r3, [r7, r6, asl #2]	@ tmp552, s_pstVfmwChan
	ldr	r3, [r3, #244]	@ D.40060, _47->s32ScdChanMemAddr
	mov	r0, r3	@, D.40060
	str	r3, [sp, #60]	@ D.40060, ScdInstCfg.BufPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r7, r6, asl #2]	@ tmp554, s_pstVfmwChan
	ldr	lr, [r5, #68]	@ pstCfg_12(D)->s32LowdBufEnable, pstCfg_12(D)->s32LowdBufEnable
	mov	r1, r9	@, D.40067
	ldr	ip, [r5, #12]	@ pstCfg_12(D)->s32ChanPriority, pstCfg_12(D)->s32ChanPriority
	mov	r3, #49152	@ tmp559,
	ldr	r8, [r2, #256]	@ _54->s32ScdChanMemSize, _54->s32ScdChanMemSize
	mov	r2, #8	@,
	ldr	r4, [r5]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	movt	r3, 4115	@ tmp559,
	str	lr, [sp, #84]	@ pstCfg_12(D)->s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	str	r3, [sp, #68]	@ tmp559, ScdInstCfg.RegPhyBaseAddr
	strb	ip, [sp, #52]	@ pstCfg_12(D)->s32ChanPriority, ScdInstCfg.Priority
	mov	ip, #0	@ tmp561,
	str	r8, [sp, #64]	@ _54->s32ScdChanMemSize, ScdInstCfg.BufSize
	str	ip, [sp, #80]	@ tmp561, ScdInstCfg.ScdLowdlyEnable
	str	r4, [sp, #56]	@ pstCfg_12(D)->eVidStd, ScdInstCfg.VidStd
	str	r0, [sp, #48]	@, ScdInstCfg.pBufVirAddr
	add	r0, sp, #72	@,,
	bl	memcpy	@
	add	r1, sp, #48	@ tmp678,,
	mov	r0, r6	@, ChanID
	bl	SM_Config	@
	add	r0, sp, #15	@ tmp679,,
	mov	r1, #1	@,
	bl	__memzero	@
	ldr	r3, [r5, #68]	@ pstCfg_12(D)->s32LowdBufEnable, pstCfg_12(D)->s32LowdBufEnable
	cmp	r3, #0	@ pstCfg_12(D)->s32LowdBufEnable,
	bne	.L1930	@,
.L1862:
	ldr	r4, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
	mov	r8, #0	@ tmp584,
	mov	r1, r9	@, D.40067
	mov	r2, #8	@,
	add	r0, r4, #1264	@, D.40059,
	ldr	r9, .L1937	@ tmp574,
	ldr	fp, [r4, #208]	@ _75->stChanMem_ctx.PhyAddr, _75->stChanMem_ctx.PhyAddr
	add	r0, r0, #12	@,,
	ldr	r10, [r4, #212]	@ _75->stChanMem_ctx.Length, _75->stChanMem_ctx.Length
	ldr	r3, [r4, #260]	@ _75->s32BpdChanMemAddr, _75->s32BpdChanMemAddr
	str	fp, [r4, #1392]	@ _75->stChanMem_ctx.PhyAddr, _75->stSynExtraData.s32ContextMemAddr
	str	r10, [r4, #1396]	@ _75->stChanMem_ctx.Length, _75->stSynExtraData.s32ContextMemSize
	str	r3, [r4, #924]	@ _75->s32BpdChanMemAddr, _75->stSynExtraData.s32BpdMemAddr
	ldr	lr, [r4, #228]	@ _75->s32VdmChanMemAddr, _75->s32VdmChanMemAddr
	ldr	ip, [r4, #232]	@ _75->s32VdmChanMemSize, _75->s32VdmChanMemSize
	ldr	r3, [r4, #264]	@ tmp681, _75->s32BpdChanMemSize
	ldr	fp, [r4, #268]	@ _75->s32Vp8SegIdChanMemAddr, _75->s32Vp8SegIdChanMemAddr
	ldr	r10, [r4, #272]	@ _75->s32Vp8SegIdChanMemSize, _75->s32Vp8SegIdChanMemSize
	str	lr, [r4, #912]	@ _75->s32VdmChanMemAddr, _75->stSynExtraData.s32SyntaxMemAddr
	str	ip, [r4, #916]	@ _75->s32VdmChanMemSize, _75->stSynExtraData.s32SyntaxMemSize
	str	r3, [r4, #928]	@ tmp681, _75->stSynExtraData.s32BpdMemSize
	str	fp, [r4, #932]	@ _75->s32Vp8SegIdChanMemAddr, _75->stSynExtraData.s32Vp8SegIdMemAddr
	str	r10, [r4, #936]	@ _75->s32Vp8SegIdChanMemSize, _75->stSynExtraData.s32Vp8SegIdMemSize
	ldr	r3, [r5, #16]	@ D.40060, pstCfg_12(D)->s32ChanErrThr
	str	r3, [r4, #892]	@ D.40060, _75->stSynExtraData.s32OutErrThr
	ldr	r3, [r5, #16]	@ D.40060, pstCfg_12(D)->s32ChanErrThr
	str	r3, [r4, #888]	@ D.40060, _75->stSynExtraData.s32RefErrThr
	ldr	r3, [r5, #24]	@ pstCfg_12(D)->s32DecMode, pstCfg_12(D)->s32DecMode
	str	r3, [r4, #896]	@ pstCfg_12(D)->s32DecMode, _75->stSynExtraData.s32DecMode
	ldr	r3, [r5, #28]	@ D.40060, pstCfg_12(D)->s32DecOrderOutput
	str	r3, [r4, #900]	@ D.40060, _75->stSynExtraData.s32DecOrderOutput
	ldr	r3, [r5, #32]	@ D.40060, pstCfg_12(D)->s32DnrTfEnable
	str	r3, [r4, #904]	@ D.40060, _75->stSynExtraData.s32DnrTfEnable
	ldr	r3, [r5, #44]	@ D.40060, pstCfg_12(D)->s32VcmpEn
	str	r8, [r4, #1616]	@ tmp584, _75->stSynExtraData.s32DSDWaitFlag
	str	r3, [r4, #1400]	@ D.40060, _75->stSynExtraData.s32Compress_en
	ldr	r3, [r5, #60]	@ pstCfg_12(D)->s32SupportAllP, pstCfg_12(D)->s32SupportAllP
	sub	r3, r3, #1	@ D.40061, pstCfg_12(D)->s32SupportAllP,
	clz	r3, r3	@ D.40061, D.40061
	mov	r3, r3, lsr #5	@ D.40061, D.40061,
	str	r3, [r4, #1416]	@ D.40061, _75->stSynExtraData.s32SupportAllP
	ldr	r3, [r5, #64]	@ D.40060, pstCfg_12(D)->s32ModuleLowlyEnable
	str	r3, [r4, #1420]	@ D.40060, _75->stSynExtraData.s32ModuleLowlyEnable
	bl	memcpy	@
	add	r2, r4, #208896	@ tmp596, D.40059,
	str	r8, [r4, #908]	@ tmp584, _75->stSynExtraData.s32DnrDispOutEnable
	ldr	r3, [r4, #880]	@ _75->eVidStd, _75->eVidStd
	ldr	r2, [r2, #2936]	@ _75->stSynCtx.eVidStd, _75->stSynCtx.eVidStd
	cmp	r2, r3	@ _75->stSynCtx.eVidStd, _75->eVidStd
	beq	.L1863	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	ldr	r0, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	cmp	r3, #18	@ pstCfg_12(D)->eVidStd,
	beq	.L1931	@,
.L1864:
	ldr	r2, [r0, #880]	@ _389->eVidStd, _389->eVidStd
	add	r3, r0, #208896	@ tmp608, D.40059,
	ldr	r8, .L1937	@ tmp610,
	str	r2, [r3, #2936]	@ _389->eVidStd, _389->stSynCtx.eVidStd
	ldr	r3, [r0, #248]	@ D.40060, _389->s32SdecMemAddr
	mov	r0, r3	@, D.40060
	str	r3, [sp, #16]	@ D.40060, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r7, r6, asl #2]	@ tmp611, s_pstVfmwChan
	add	r1, sp, #16	@,,
	ldr	r3, [r3, #252]	@ _138->s32SdecMemSize, _138->s32SdecMemSize
	str	r3, [sp, #24]	@ _138->s32SdecMemSize, stMem.Length
	str	r0, [sp, #20]	@, stMem.VirAddr
	mov	r0, r6	@, ChanID
	bl	RefreshDecCore	@
	subs	r4, r0, #0	@ D.40057,
	bne	.L1918	@,
	mov	r1, #16	@,
	add	r0, sp, #32	@ tmp682,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.40060, pstCfg_12(D)->eVidStd
	sub	r2, r3, #10	@ D.40058, D.40060,
	cmp	r2, #2	@ D.40058,
	bhi	.L1869	@,
	ldr	r2, [r8, #3640]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1870	@,
.L1872:
	ldr	r3, [r5, #4]	@ pstCfg_12(D)->StdExt.Vp6Ext.bReversed, pstCfg_12(D)->StdExt.Vp6Ext.bReversed
	and	r3, r3, #1	@ D.40070, pstCfg_12(D)->StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #32]	@ D.40070, DnrChanCfgArgs.s32MirrorEn
.L1871:
	cmp	r3, #0	@ D.40070,
	ldr	r3, [r5, #44]	@ D.40060, pstCfg_12(D)->s32VcmpEn
	movne	r3, #0	@ tmp632,
	b	.L1917	@
.L1869:
	ldr	r3, [r5, #44]	@ D.40060, pstCfg_12(D)->s32VcmpEn
	strb	r4, [sp, #32]	@ D.40057, DnrChanCfgArgs.s32MirrorEn
.L1917:
	ldr	r0, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
	ldr	ip, [r5, #48]	@ pstCfg_12(D)->s32WmEn, pstCfg_12(D)->s32WmEn
	ldr	r1, [r5, #52]	@ pstCfg_12(D)->s32VcmpWmStartLine, pstCfg_12(D)->s32VcmpWmStartLine
	ldr	lr, [r0, #1580]	@ _343->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _343->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r2, [r5, #56]	@ pstCfg_12(D)->s32VcmpWmEndLine, pstCfg_12(D)->s32VcmpWmEndLine
	strb	r3, [sp, #33]	@ tmp632, DnrChanCfgArgs.s32VcmpEn
	mov	r3, #1	@ tmp638,
	cmp	lr, r3	@ _343->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	strb	ip, [sp, #34]	@ pstCfg_12(D)->s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r1, [sp, #36]	@ pstCfg_12(D)->s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #40]	@ pstCfg_12(D)->s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	str	r3, [sp, #44]	@ tmp638, DnrChanCfgArgs.s32NeedConfigDnrChan
	beq	.L1876	@,
	add	r1, sp, #32	@ tmp683,,
	mov	r0, r6	@, ChanID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1918	@,
.L1877:
	ldr	r2, .L1937+8	@ tmp654,
	add	r1, r6, #26	@ tmp655, ChanID,
	ldr	ip, [r7, r6, asl #2]	@ tmp650, s_pstVfmwChan
	ldr	r3, .L1937	@ ivtmp.908,
	ldr	r0, [r2, r1, asl #2]	@ tmp656, s_SmIIS.pSmInstArray
	add	ip, ip, #172032	@ tmp652, tmp650,
	ldr	r1, .L1937+12	@ ivtmp.912,
	add	lr, r3, #16	@ D.40058, ivtmp.908,
	ldr	r2, .L1937+16	@ ivtmp.913,
	add	r0, r0, #163840	@ tmp658, tmp656,
	strb	r6, [ip, #4048]	@ ChanID, _146->FspInst.s32InstID
	str	r6, [r0, #2228]	@ ChanID, _149->InstID
.L1880:
	ldr	r0, [r3], #4	@ D.40059, MEM[base: _320, offset: 0B]
	add	r1, r1, #4	@ ivtmp.912, ivtmp.912,
	add	r2, r2, #4	@ ivtmp.913, ivtmp.913,
	cmp	r0, #0	@ D.40059,
	streq	r0, [r1, #-4]	@ D.40059, MEM[base: _200, offset: 0B]
	ldrne	ip, [r0, #12]	@ D.40060, _151->s32Priority
	ldrne	r0, [r3, #-4]	@ MEM[base: _204, offset: 4294967292B], MEM[base: _204, offset: 4294967292B]
	strne	ip, [r1, #-4]	@ D.40060, MEM[base: _219, offset: 0B]
	ldrne	r0, [r0, #12]	@ D.40060, _154->s32Priority
	cmp	r3, lr	@ ivtmp.908, D.40058
	str	r0, [r2, #-4]	@ D.40059,
	bne	.L1880	@,
	ldr	r0, .L1937+12	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r6	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
.L1911:
	mov	r0, r4	@, D.40057
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1838:
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, [r4, #156]	@, MEM[(struct MEM_RECORD_S *)_30 + 152B].VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r5]	@ D.40060, MEM[(HI_S32 *)pstCfg_12(D)]
	ldr	r1, [r4, #164]	@, MEM[(struct MEM_RECORD_S *)_30 + 152B].Length
	cmp	r3, #4	@ D.40060,
	cmpne	r3, #14	@, D.40060,
	ldr	r0, [r4, #160]	@, MEM[(struct MEM_RECORD_S *)_30 + 152B].PhyAddr
	beq	.L1932	@,
	bl	KernelMmap	@
	mov	r8, r0	@ pVir,
.L1852:
	ldr	r0, .L1937+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
	ldr	r9, .L1937	@ tmp470,
	cmp	r0, #0	@ D.40059,
	beq	.L1933	@,
	cmp	r8, #0	@ pVir,
	beq	.L1934	@,
	ldr	r2, [r0, #196]	@, _191->stChanMem_scd.Length
	ldr	r1, [r0, #188]	@, _191->stChanMem_scd.VirAddr
	ldr	r0, [r0, #192]	@, _191->stChanMem_scd.PhyAddr
	bl	MEM_DelMemRecord	@
	subs	fp, r0, #0	@ D.40060,
	ldrne	ip, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	movne	r0, #0	@,
	bne	.L1916	@,
	ldr	r3, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _282->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _282->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _282->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	subs	r10, r0, #0	@ D.40060,
	ldrne	ip, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	movne	r0, fp	@, D.40060
	bne	.L1915	@,
	ldr	r3, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	str	r8, [r4, #156]	@ pVir, MEM[(struct MEM_RECORD_S *)_30 + 152B].VirAddr
	ldr	r2, [r3, #196]	@ _291->stChanMem_scd.Length, _291->stChanMem_scd.Length
	str	r8, [r3, #188]	@ pVir, _291->stChanMem_scd.VirAddr
	add	r8, r8, r2	@ D.40072, pVir, _291->stChanMem_scd.Length
	str	r8, [r3, #172]	@ D.40072, _291->stChanMem_vdh.VirAddr
	ldr	r2, [r4, #164]	@, MEM[(struct MEM_RECORD_S *)_30 + 152B].Length
	ldr	r1, [r4, #156]	@, MEM[(struct MEM_RECORD_S *)_30 + 152B].VirAddr
	ldr	r0, [r4, #160]	@, MEM[(struct MEM_RECORD_S *)_30 + 152B].PhyAddr
	bl	MEM_AddMemRecord	@
	subs	r8, r0, #0	@ D.40060,
	bne	.L1935	@,
	ldr	r3, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	ldr	r2, [r3, #196]	@, _302->stChanMem_scd.Length
	ldr	r1, [r3, #188]	@, _302->stChanMem_scd.VirAddr
	ldr	r0, [r3, #192]	@, _302->stChanMem_scd.PhyAddr
	bl	MEM_AddMemRecord	@
	subs	r4, r0, #0	@ D.40060,
	bne	.L1936	@,
	ldr	r3, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _311->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _311->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _311->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1859	@,
	ldr	ip, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	mov	r0, r4	@, D.40060
.L1915:
	ldr	r3, [ip, #172]	@ _316->stChanMem_vdh.VirAddr,
	ldr	r2, [ip, #176]	@ _316->stChanMem_vdh.PhyAddr,
	ldr	ip, [ip, #180]	@ _316->stChanMem_vdh.Length,
	ldr	r1, .L1937+20	@,
	str	ip, [sp]	@ _316->stChanMem_vdh.Length,
	bl	dprint_vfmw	@
.L1918:
	mvn	r4, #0	@ D.40057,
	mov	r0, r4	@, D.40057
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1930:
	add	r1, sp, #15	@ tmp680,,
	mov	r0, r6	@, ChanID
	mov	r3, #1	@ tmp571,
	strb	r3, [sp, #15]	@ tmp571, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1862	@
.L1863:
	ldr	r0, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	b	.L1864	@
.L1870:
	cmp	r3, #12	@ D.40060,
	beq	.L1872	@,
	ldr	r3, [r5, #4]	@ pstCfg_12(D)->StdExt.Vp6Ext.bReversed, pstCfg_12(D)->StdExt.Vp6Ext.bReversed
	eor	r3, r3, #1	@ tmp623, pstCfg_12(D)->StdExt.Vp6Ext.bReversed,
	and	r3, r3, #1	@ D.40070, tmp623,
	strb	r3, [sp, #32]	@ D.40070, DnrChanCfgArgs.s32MirrorEn
	b	.L1871	@
.L1932:
	bl	KernelMmapCache	@
	mov	r8, r0	@ pVir,
	b	.L1852	@
.L1840:
	ldr	r0, [r4, #176]	@, MEM[(struct MEM_RECORD_S *)_30 + 168B].PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r4, #196]	@ D.40060, MEM[(struct MEM_RECORD_S *)_30 + 184B].Length
	strb	r8, [r4, #168]	@ tmp395, MEM[(struct MEM_RECORD_S *)_30 + 168B].IsCached
	cmp	r1, #0	@ D.40060,
	mov	r10, r0	@ pVir_vdh,
	beq	.L1882	@,
	ldr	r0, [r4, #192]	@, MEM[(struct MEM_RECORD_S *)_30 + 184B].PhyAddr
	bl	KernelMmap	@
	strb	r8, [r4, #184]	@ tmp395, MEM[(struct MEM_RECORD_S *)_30 + 184B].IsCached
	mov	r9, r0	@ pVir_scd,
	b	.L1841	@
.L1924:
	ldr	r0, [r4, #188]	@, MEM[(struct MEM_RECORD_S *)_30 + 184B].VirAddr
	bl	KernelMunmap	@
	b	.L1839	@
.L1860:
	ldr	r3, [r7, r6, asl #2]	@ tmp535, s_pstVfmwChan
	ldr	r3, [r3, #236]	@ D.40060, _210->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.40060
	str	r3, [sp, #16]	@ D.40060, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
	add	r1, sp, #16	@,,
	ldr	ip, [r2, #240]	@ _213->s32OffLineDNRMemSize, _213->s32OffLineDNRMemSize
	ldr	r3, [r2, #1460]	@, _213->stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, _213->stSynExtraData.stChanOption.s32MaxWidth
	str	ip, [sp, #24]	@ _213->s32OffLineDNRMemSize, stMem.Length
	str	r0, [sp, #20]	@, stMem.VirAddr
	mov	r0, r6	@, ChanID
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L1861	@,
	mov	r0, r4	@, tmp526
	ldr	r1, .L1937+24	@,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1923:
	ldr	r1, .L1937+28	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.40057
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1876:
	add	r0, r0, #210944	@, D.40059,
	add	r1, sp, #32	@ tmp684,,
	mov	r2, #16	@,
	add	r0, r0, #824	@,,
	bl	memcpy	@
	b	.L1877	@
.L1931:
	ldr	r3, [r0, #1448]	@ MEM[(struct VDEC_CHAN_OPTION_S *)_118 + 1444B].Purpose, MEM[(struct VDEC_CHAN_OPTION_S *)_118 + 1444B].Purpose
	ldr	ip, [r0, #252]	@ _118->s32SdecMemSize, _118->s32SdecMemSize
	cmp	r3, #2	@ MEM[(struct VDEC_CHAN_OPTION_S *)_118 + 1444B].Purpose,
	ldr	r3, [r0, #248]	@ _118->s32SdecMemAddr, _118->s32SdecMemAddr
	ldrne	r1, [r0, #1456]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_118 + 1444B].s32MaxWidth
	ldrne	r2, [r0, #1460]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_118 + 1444B].s32MaxHeight
	ldreq	r1, [r0, #1508]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_118 + 1444B].s32SlotWidth
	ldreq	r2, [r0, #1512]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_118 + 1444B].s32SlotHeight
	mov	r0, r6	@, ChanID
	str	ip, [sp]	@ _118->s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1867	@,
	ldr	r0, [r7, r6, asl #2]	@ D.40059, s_pstVfmwChan
	b	.L1864	@
.L1921:
	mov	r0, r4	@, tmp358
	ldr	r3, .L1937+32	@,
	movw	r2, #3475	@,
	ldr	r1, .L1937+36	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.40057,
	b	.L1911	@
.L1928:
	ldr	r1, [r4, #188]	@, MEM[(struct MEM_RECORD_S *)_30 + 184B].VirAddr
	ldr	r0, [r4, #192]	@, MEM[(struct MEM_RECORD_S *)_30 + 184B].PhyAddr
	bl	MEM_DelMemRecord	@
	subs	r10, r0, #0	@ D.40060,
	ldrne	r3, [r4, #188]	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].VirAddr, MEM[(struct MEM_RECORD_S *)_30 + 184B].VirAddr
	movne	r0, r8	@, D.40060
	bne	.L1914	@,
	str	r9, [r4, #188]	@ pVir_scd, MEM[(struct MEM_RECORD_S *)_30 + 184B].VirAddr
	mov	r1, r9	@, pVir_scd
	ldr	r2, [r4, #196]	@, MEM[(struct MEM_RECORD_S *)_30 + 184B].Length
	ldr	r0, [r4, #192]	@, MEM[(struct MEM_RECORD_S *)_30 + 184B].PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1859	@,
	ldr	r3, [r4, #188]	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].VirAddr, MEM[(struct MEM_RECORD_S *)_30 + 184B].VirAddr
	mov	r0, r10	@, D.40060
.L1914:
	ldr	ip, [r4, #196]	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].Length, MEM[(struct MEM_RECORD_S *)_30 + 184B].Length
	ldr	r2, [r4, #192]	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].PhyAddr, MEM[(struct MEM_RECORD_S *)_30 + 184B].PhyAddr
	ldr	r1, .L1937+20	@,
	str	ip, [sp]	@ MEM[(struct MEM_RECORD_S *)_30 + 184B].Length,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1925:
	ldr	r0, [r4, #192]	@, MEM[(struct MEM_RECORD_S *)_30 + 184B].PhyAddr
	bl	KernelMmapCache	@
	strb	r8, [r4, #184]	@ tmp398, MEM[(struct MEM_RECORD_S *)_30 + 184B].IsCached
	mov	r9, r0	@ pVir_scd,
	b	.L1841	@
.L1936:
	ldr	ip, [r9, r6, asl #2]	@ D.40059, s_pstVfmwChan
	mov	r0, r8	@, D.40060
.L1916:
	ldr	r3, [ip, #188]	@ _307->stChanMem_scd.VirAddr,
	ldr	r2, [ip, #192]	@ _307->stChanMem_scd.PhyAddr,
	ldr	ip, [ip, #196]	@ _307->stChanMem_scd.Length,
	ldr	r1, .L1937+20	@,
	str	ip, [sp]	@ _307->stChanMem_scd.Length,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1919:
	mov	r0, r4	@, tmp358
	ldr	r3, .L1937+40	@,
	movw	r2, #3473	@,
	ldr	r1, .L1937+36	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.40057,
	b	.L1911	@
.L1922:
	mov	r0, r4	@, tmp358
	ldr	r1, .L1937+44	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.40057,
	b	.L1911	@
.L1927:
	ldr	r3, [r4, #172]	@ MEM[(struct MEM_RECORD_S *)_30 + 168B].VirAddr, MEM[(struct MEM_RECORD_S *)_30 + 168B].VirAddr
	mov	r0, fp	@, D.40060
.L1913:
	ldr	ip, [r4, #180]	@ MEM[(struct MEM_RECORD_S *)_30 + 168B].Length, MEM[(struct MEM_RECORD_S *)_30 + 168B].Length
	ldr	r2, [r4, #176]	@ MEM[(struct MEM_RECORD_S *)_30 + 168B].PhyAddr, MEM[(struct MEM_RECORD_S *)_30 + 168B].PhyAddr
	ldr	r1, .L1937+20	@,
	str	ip, [sp]	@ MEM[(struct MEM_RECORD_S *)_30 + 168B].Length,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1935:
	ldr	ip, [r4, #164]	@ MEM[(struct MEM_RECORD_S *)_30 + 152B].Length, MEM[(struct MEM_RECORD_S *)_30 + 152B].Length
	mov	r0, r10	@, D.40060
	ldr	r3, [r4, #156]	@ MEM[(struct MEM_RECORD_S *)_30 + 152B].VirAddr, MEM[(struct MEM_RECORD_S *)_30 + 152B].VirAddr
	ldr	r2, [r4, #160]	@ MEM[(struct MEM_RECORD_S *)_30 + 152B].PhyAddr, MEM[(struct MEM_RECORD_S *)_30 + 152B].PhyAddr
	ldr	r1, .L1937+20	@,
	str	ip, [sp]	@ MEM[(struct MEM_RECORD_S *)_30 + 152B].Length,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1929:
	ldr	r1, .L1937+48	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1920:
	mov	r0, r3	@, D.40059
	movw	r2, #3474	@,
	ldr	r3, .L1937+52	@,
	mvn	r4, #0	@ D.40057,
	ldr	r1, .L1937+36	@,
	bl	dprint_vfmw	@
	b	.L1911	@
.L1867:
	ldr	r1, .L1937+56	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1844:
	mov	r2, r6	@, ChanID
	ldr	r1, .L1937+60	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1926:
	movw	r3, #3361	@,
	ldr	r2, .L1937+64	@,
	ldr	r1, .L1937+68	@,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1934:
	mov	r2, r6	@, ChanID
	mov	r0, r8	@, pVir
	ldr	r1, .L1937+72	@,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1933:
	movw	r3, #3399	@,
	ldr	r2, .L1937+64	@,
	ldr	r1, .L1937+68	@,
	bl	dprint_vfmw	@
	b	.L1918	@
.L1938:
	.align	2
.L1937:
	.word	.LANCHOR0
	.word	.LANCHOR3-3396
	.word	s_SmIIS
	.word	.LANCHOR3-3264
	.word	g_ChanCtx
	.word	.LC209
	.word	.LC212
	.word	.LC206
	.word	.LC204
	.word	.LC5
	.word	.LC69
	.word	.LC205
	.word	.LC211
	.word	.LC6
	.word	.LC213
	.word	.LC208
	.word	.LANCHOR1+448
	.word	.LC207
	.word	.LC210
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
	ldr	r1, .L1942	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Thr
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1939	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #20]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L1939:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1943:
	.align	2
.L1942:
	.word	.LC214
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
	ldr	r1, .L1947	@,
	and	r5, r4, #3	@ Mode, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Mode
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1944	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #24]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L1944:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1948:
	.align	2
.L1947:
	.word	.LC215
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
	ldr	r1, .L1952	@,
	and	r5, r4, #3	@ DecOrderOutput, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, DecOrderOutput
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1949	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #28]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L1949:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1953:
	.align	2
.L1952:
	.word	.LC216
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
	ldr	r1, .L1957	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	mov	r3, r5	@, Thr
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1954	@,
	mov	r1, sp	@,
	mov	r0, r4	@, ChanID
	str	r5, [sp, #16]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L1954:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L1958:
	.align	2
.L1957:
	.word	.LC217
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
	ldr	r1, .L1961	@,
	mov	r3, r0	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1961+4	@,
	mov	r3, r0	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	ldr	r1, .L1961+8	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L1962:
	.align	2
.L1961:
	.word	.LC83
	.word	.LC218
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
	ldr	r1, .L1965	@,
	ldmfd	sp!, {r4, lr}	@
	mov	r3, r0	@,
	mov	r0, #32	@,
	b	dprint_vfmw	@
.L1966:
	.align	2
.L1965:
	.word	.LC218
	.fnend
	.size	VfmwProc_TestResetChan, .-VfmwProc_TestResetChan
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	bhi	.L1973	@,
	ldr	r3, .L1974	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ D.40129, s_pstVfmwChan
	cmp	r3, #0	@ D.40129,
	ldrne	r0, [r3, #676]	@ D.40127, _7->s32LastFrameIdPlus2
	mvneq	r0, #0	@ D.40127,
	bx	lr	@
.L1973:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #7997	@,
	ldr	r3, .L1974+4	@,
	mov	r0, #0	@,
	ldr	r1, .L1974+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40127,
	ldmfd	sp!, {r4, pc}	@
.L1975:
	.align	2
.L1974:
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
	cmp	r0, #3	@ ChanID,
	bhi	.L1982	@,
	ldr	r3, .L1983	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.40135, s_pstVfmwChan
	cmp	r3, #0	@ D.40135,
	strne	r1, [r3, #676]	@ Value, _6->s32LastFrameIdPlus2
	bx	lr	@
.L1982:
	ldr	r3, .L1983+4	@,
	movw	r2, #8009	@,
	ldr	r1, .L1983+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L1984:
	.align	2
.L1983:
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
	ldr	r6, .L2017	@ tmp174,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r6, r0, asl #2]	@ D.40142, s_pstVfmwChan
	add	r3, r0, #208896	@ tmp137, D.40142,
	ldr	r3, [r3, #2936]	@ _7->stSynCtx.eVidStd, _7->stSynCtx.eVidStd
	cmp	r3, #13	@ _7->stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _7->stSynCtx.eVidStd
	b	.L2004	@
.L1988:
	.word	.L1987
	.word	.L1989
	.word	.L1990
	.word	.L1991
	.word	.L2004
	.word	.L1992
	.word	.L1993
	.word	.L2004
	.word	.L2004
	.word	.L2004
	.word	.L1994
	.word	.L1994
	.word	.L1994
	.word	.L1995
.L1995:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L1986:
	add	r3, r4, #1	@ tmp155, ret,
	cmp	r3, #1	@ tmp155,
	bhi	.L1996	@,
.L2015:
	ldr	r3, .L2017+4	@ tmp156,
	ldr	r3, [r3, #-3464]	@ D.40153, g_event_report
	cmp	r3, #0	@ D.40153,
	beq	.L1998	@,
	add	r2, sp, #8	@ tmp158,,
	mov	ip, #1	@ tmp157,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp157, para
	blx	r3	@ D.40153
.L1998:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1987:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	add	r3, r4, #1	@ tmp155, ret,
	cmp	r3, #1	@ tmp155,
	bls	.L2015	@,
.L1996:
	ldr	r3, .L2017+8	@ tmp159,
	ldr	r3, [r3]	@ D.40155, g_chipID
	cmp	r3, #16	@ D.40155,
	bhi	.L1998	@,
	mov	r1, #1	@ tmp160,
	movw	r2, #32831	@ tmp161,
	mov	r3, r1, asl r3	@ D.40149, tmp160,
	bfi	r2, r1, #16, #16	@ tmp161, tmp160,,
	tst	r3, r2	@ D.40149, tmp161
	bne	.L1999	@,
	tst	r3, #3904	@ D.40149,
	beq	.L1998	@,
	ldr	r3, .L2017+4	@ tmp169,
	ldr	r3, [r3, #-3464]	@ D.40153, g_event_report
	cmp	r3, #0	@ D.40153,
	beq	.L2003	@,
	add	r2, sp, #8	@ tmp170,,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ D.40153
.L2003:
	sub	r2, r4, #2	@, ret,
	ldr	r1, .L2017+12	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L1998	@
.L1989:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1986	@
.L1990:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1986	@
.L1991:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1986	@
.L1992:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1986	@
.L1993:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1986	@
.L1994:
	add	r0, r0, #210944	@, D.40142,
	add	r0, r0, #896	@,,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1986	@
.L2004:
	mvn	r4, #0	@ ret,
	b	.L1986	@
.L1999:
	cmp	r5, #3	@ ChanId,
	bhi	.L2016	@,
	ldr	r3, [r6, r5, asl #2]	@ D.40142, s_pstVfmwChan
	cmp	r3, #0	@ D.40142,
	strne	r4, [r3, #676]	@ ret, _56->s32LastFrameIdPlus2
.L2002:
	sub	r2, r4, #2	@, ret,
	ldr	r1, .L2017+16	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2016:
	ldr	r3, .L2017+20	@,
	movw	r2, #8009	@,
	ldr	r1, .L2017+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L2002	@
.L2018:
	.align	2
.L2017:
	.word	.LANCHOR0
	.word	.LANCHOR3
	.word	g_chipID
	.word	.LC220
	.word	.LC219
	.word	.LC69
	.word	.LC120
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r5, .L2041	@ tmp252,
	ldr	ip, [r5, r0, asl #2]	@ D.40182, s_pstVfmwChan
	cmp	ip, #0	@ D.40182,
	beq	.L2037	@,
	ldr	r3, [ip, #880]	@ _4->eVidStd, _4->eVidStd
	mov	r4, r0	@ ChanId, ChanId
	cmp	r3, #13	@ _4->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _4->eVidStd
	b	.L2019	@
.L2023:
	.word	.L2022
	.word	.L2024
	.word	.L2025
	.word	.L2026
	.word	.L2019
	.word	.L2027
	.word	.L2028
	.word	.L2019
	.word	.L2019
	.word	.L2019
	.word	.L2029
	.word	.L2029
	.word	.L2029
	.word	.L2030
.L2025:
	add	r0, ip, #210944	@, D.40182,
	add	r0, r0, #896	@,,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.40182, s_pstVfmwChan
	ldr	r5, .L2041	@ tmp183,
	add	r2, r3, #233472	@ tmp185, D.40182,
	ldrb	r2, [r2, #1364]	@ zero_extendqisi2	@ _42->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, _42->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _42->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L2038	@,
.L2033:
	add	r3, r3, #208896	@ tmp195, D.40182,
	mov	r2, #0	@ tmp196,
	str	r2, [r3, #3980]	@ tmp196, _80->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
.L2019:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2030:
	add	r0, ip, #210944	@, D.40182,
	add	r0, r0, #896	@,,
	bl	VP8DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ tmp248, s_pstVfmwChan
	mov	r2, #0	@ tmp251,
	add	r3, r3, #208896	@ tmp250, tmp248,
	str	r2, [r3, #2948]	@ tmp251,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2022:
	add	r0, ip, #210944	@, D.40182,
	mov	r3, r2	@, pLumaInfo
	add	r0, r0, #896	@,,
	mov	r2, #1	@,
	mov	r6, #0	@ tmp150,
	str	r6, [sp]	@ tmp150,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.40182, s_pstVfmwChan
	ldr	r5, .L2041	@ tmp151,
	add	r2, r3, #225280	@ tmp153, D.40182,
	ldrb	r2, [r2, #116]	@ zero_extendqisi2	@ _32->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, _32->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _32->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L2039	@,
.L2031:
	add	r3, r3, #208896	@ tmp163, D.40182,
	mov	r2, #0	@ tmp164,
	str	r2, [r3, #3304]	@ tmp164, _84->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2024:
	add	r0, ip, #210944	@, D.40182,
	ldr	r6, .L2041	@ tmp224,
	add	r0, r0, #896	@,,
	bl	VC1DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.40182, s_pstVfmwChan
	add	r2, r3, #286720	@ tmp226, D.40182,
	ldrb	r2, [r2, #3399]	@ zero_extendqisi2	@ _52->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag, _52->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag
	cmp	r2, #1	@ _52->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	beq	.L2040	@,
.L2035:
	add	r3, r3, #208896	@ tmp236, D.40182,
	mov	r2, #0	@ tmp237,
	str	r2, [r3, #2948]	@ tmp237,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2026:
	add	r0, ip, #210944	@, D.40182,
	ldr	r6, .L2041	@ tmp167,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.40182, s_pstVfmwChan
	add	r2, r3, #282624	@ tmp169, D.40182,
	ldrb	r2, [r2, #2929]	@ zero_extendqisi2	@ _37->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, _37->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _37->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	bne	.L2035	@,
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp172, s_pstVfmwChan
	mov	r1, #0	@ tmp175,
	add	r2, r3, #282624	@ tmp174, tmp172,
	strb	r1, [r2, #2929]	@ tmp175, _39->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	b	.L2035	@
.L2027:
	mov	r0, #0	@,
	str	r1, [sp, #12]	@ ErrRatio, %sfp
	bl	VDMDRV_GetSwitchRounding	@
	ldr	r3, [r5, r4, asl #2]	@ tmp215, s_pstVfmwChan
	ldr	r1, [sp, #12]	@ ErrRatio, %sfp
	mov	r2, r0	@,
	add	r0, r3, #210944	@, tmp215,
	add	r0, r0, #896	@,,
	bl	DIVX3DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ tmp218, s_pstVfmwChan
	mov	r2, #0	@ tmp221,
	add	r3, r3, #208896	@ tmp220, tmp218,
	str	r2, [r3, #2948]	@ tmp221,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2028:
	add	r0, ip, #210944	@, D.40182,
	ldr	r6, .L2041	@ tmp199,
	add	r0, r0, #896	@,,
	bl	AVSDEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ D.40182, s_pstVfmwChan
	add	r2, r3, #225280	@ tmp201, D.40182,
	ldrb	r2, [r2, #3684]	@ zero_extendqisi2	@ _47->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag, _47->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	cmp	r2, #1	@ _47->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag,
	bne	.L2035	@,
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp204, s_pstVfmwChan
	mov	r1, #0	@ tmp207,
	add	r2, r3, #225280	@ tmp206, tmp204,
	strb	r1, [r2, #3684]	@ tmp207, _49->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	b	.L2035	@
.L2029:
	add	r0, ip, #210944	@, D.40182,
	add	r0, r0, #896	@,,
	bl	VP6DEC_VDMPostProc	@
	ldr	r3, [r5, r4, asl #2]	@ tmp241, s_pstVfmwChan
	mov	r2, #0	@ tmp244,
	add	r3, r3, #208896	@ tmp243, tmp241,
	str	r2, [r3, #2948]	@ tmp244,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2037:
	mov	r0, ip	@, D.40182
	ldr	r3, .L2041+4	@,
	movw	r2, #4639	@,
	ldr	r1, .L2041+8	@,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L2038:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r5, r4, asl #2]	@ tmp188, s_pstVfmwChan
	mov	r1, #0	@ tmp191,
	add	r2, r3, #233472	@ tmp190, tmp188,
	strb	r1, [r2, #1364]	@ tmp191, _44->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	b	.L2033	@
.L2040:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp229, s_pstVfmwChan
	mov	r1, #0	@ tmp232,
	add	r2, r3, #286720	@ tmp231, tmp229,
	strb	r1, [r2, #3399]	@ tmp232, _54->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag
	b	.L2035	@
.L2039:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r5, r4, asl #2]	@ tmp156, s_pstVfmwChan
	add	r2, r3, #225280	@ tmp158, tmp156,
	strb	r6, [r2, #116]	@ tmp150, _34->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	b	.L2031	@
.L2042:
	.align	2
.L2041:
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
	cmp	r0, #3	@ ChanId,
	bhi	.L2049	@,
	ldr	ip, .L2051	@ tmp119,
	ldr	ip, [ip, r0, asl #2]	@ D.40196, s_pstVfmwChan
	cmp	ip, #0	@ D.40196,
	beq	.L2050	@,
	ldr	ip, [ip, #8]	@ _6->s32IsRun, _6->s32IsRun
	cmp	ip, #1	@ _6->s32IsRun,
	beq	.L2046	@,
	ldr	r3, .L2051+4	@,
	movw	r2, #4758	@,
	ldr	r1, .L2051+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L2046:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r2	@ pLumaInfo, pLumaInfo
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r4, r0	@ ChanId, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r6	@, pLumaInfo
	mov	r1, r5	@, ErrRatio
	mov	r0, r4	@, ChanId
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_PostProc	@
.L2049:
	ldr	r3, .L2051+12	@,
	movw	r2, #4756	@,
	ldr	r1, .L2051+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L2050:
	mov	r0, ip	@, D.40196
	ldr	r3, .L2051+16	@,
	movw	r2, #4757	@,
	ldr	r1, .L2051+8	@,
	b	dprint_vfmw	@
.L2052:
	.align	2
.L2051:
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
	ldr	r3, .L2060	@ tmp114,
	ldr	ip, [r3, #-3464]	@ D.40201, g_event_report
	cmp	ip, #0	@ D.40201,
	bxeq	lr	@
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r2, sp, #8	@ tmp116,,
	add	r3, r1, #2	@ D.40202, LastFrameID,
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ D.40202, para
	blx	ip	@ D.40201
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L2061:
	.align	2
.L2060:
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
	ldr	r3, .L2063	@ tmp111,
	mov	r2, #1	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3248]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L2064:
	.align	2
.L2063:
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
	ldr	r3, .L2066	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3248]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L2067:
	.align	2
.L2066:
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
	ldr	r3, .L2069	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp114, ChanID,
	ldr	r0, [r0, #-3248]	@, g_EsBufValidFlag
	bx	lr	@
.L2070:
	.align	2
.L2069:
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
	b	.L2072	@
.L2074:
	.word	.L2073
	.word	.L2075
	.word	.L2076
	.word	.L2077
	.word	.L2078
	.word	.L2079
	.word	.L2080
.L2080:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #1	@ eYuvFormat,
	movne	r0, #7	@ eYuvFormat,
	bx	lr	@
.L2073:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #0	@ eYuvFormat,
	movne	r0, #6	@ eYuvFormat,
	bx	lr	@
.L2075:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	bx	lr	@
.L2076:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	bx	lr	@
.L2077:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	bx	lr	@
.L2078:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	bx	lr	@
.L2079:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	bx	lr	@
.L2072:
	mov	r3, r1	@ enFmt, enFmt
	movw	r2, #8330	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #1	@,
	ldr	r1, .L2091	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r4, pc}	@
.L2092:
	.align	2
.L2091:
	.word	.LC221
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
	.type	__func__.33243, %object
	.size	__func__.33243, 18
__func__.33243:
	.ascii	"VCTRL_EventReport\000"
	.space	2
.LC24:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.type	__func__.33255, %object
	.size	__func__.33255, 18
__func__.33255:
	.ascii	"VCTRL_SetCallBack\000"
	.space	2
	.type	__func__.33369, %object
	.size	__func__.33369, 29
__func__.33369:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.34006, %object
	.size	__func__.34006, 26
__func__.34006:
	.ascii	"VCTRL_GetMemSize_onDecode\000"
	.space	2
	.type	__func__.34314, %object
	.size	__func__.34314, 18
__func__.34314:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.34320, %object
	.size	__func__.34320, 19
__func__.34320:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.34326, %object
	.size	__func__.34326, 16
__func__.34326:
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
	.type	__func__.33689, %object
	.size	__func__.33689, 19
__func__.33689:
	.ascii	"VCTRL_RemapVirAddr\000"
	.space	1
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
	.ascii	"%s %d: s_pstVfmwChan has been destroyed!!\012\000"
	.space	1
.LC208:
	.ascii	"====== Fatal Error0: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC209:
	.ascii	"fatal error: can not del mem record(phy=0x%x,vir=%p"
	.ascii	",len=%d)\012\000"
	.space	3
.LC210:
	.ascii	"====== Fatal Error1: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC211:
	.ascii	"can NOT enable DNR instancen(as soft dec)\012\000"
	.space	1
.LC212:
	.ascii	"can NOT enable DNR instancen\012\000"
	.space	2
.LC213:
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC214:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC215:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC216:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC217:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC218:
	.ascii	"reset chan %d: VCTRL_ResetChan return %d\012\000"
	.space	2
.LC219:
	.ascii	"Last frame already output, vdhQ ID: %d\012\000"
.LC220:
	.ascii	"Last frame already output, image id: %d!\012\000"
	.space	2
.LC221:
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
	.size	s_pstVfmwChan, 16
s_pstVfmwChan:
	.space	16
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
	.size	g_scd_vir, 16
g_scd_vir:
	.space	16
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.34401, %object
	.size	save_file_cnt.34401, 4
save_file_cnt.34401:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.34395, %object
	.size	save_file_cnt.34395, 4
save_file_cnt.34395:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.34389, %object
	.size	save_file_cnt.34389, 4
save_file_cnt.34389:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	LastEventTime.33229, %object
	.size	LastEventTime.33229, 4
LastEventTime.33229:
	.space	4
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	FspInstInfo.33362, %object
	.size	FspInstInfo.33362, 3340
FspInstInfo.33362:
	.space	3340
	.type	PrioArray.33584, %object
	.size	PrioArray.33584, 16
PrioArray.33584:
	.space	16
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_DSPState, %object
	.size	g_DSPState, 16
g_DSPState:
	.space	16
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
	.size	g_ChanTick, 16
g_ChanTick:
	.space	16
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	last_rec_pos_time.34204, %object
	.size	last_rec_pos_time.34204, 16
last_rec_pos_time.34204:
	.space	16
	.type	last_rec_pos_report_time.34205, %object
	.size	last_rec_pos_report_time.34205, 16
last_rec_pos_report_time.34205:
	.space	16
	.type	last_rec_pos_decparam_time.34206, %object
	.size	last_rec_pos_decparam_time.34206, 16
last_rec_pos_decparam_time.34206:
	.space	16
	.type	ChanPriTab.34154, %object
	.size	ChanPriTab.34154, 16
ChanPriTab.34154:
	.space	16
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 96
g_VfmwChanStat:
	.space	96
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	PrioArray.33593, %object
	.size	PrioArray.33593, 16
PrioArray.33593:
	.space	16
	.type	PrioArray.33699, %object
	.size	PrioArray.33699, 16
PrioArray.33699:
	.space	16
	.type	g_EsBufValidFlag, %object
	.size	g_EsBufValidFlag, 16
g_EsBufValidFlag:
	.space	16
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
