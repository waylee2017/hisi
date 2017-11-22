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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
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
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bne	.L2	@,
	ldr	ip, .L15	@ tmp121,
	ldr	r3, [ip]	@ D.35989, s_pstVfmwChan
	cmp	r3, #0	@ D.35989,
	beq	.L2	@,
	ldr	r3, [r3, #20]	@ eType, _7->eAdapterType
	cmp	r3, #0	@ eType,
	beq	.L3	@,
	cmp	r3, #1	@ eType,
	bne	.L2	@,
	ldr	r3, [ip, #152]	@ D.35990, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.35990,
	beq	.L2	@,
.L13:
	bx	r3	@ D.35990
.L3:
	ldr	r3, [ip, #148]	@ D.35990, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.35990,
	bne	.L13	@,
.L2:
	mvn	r0, #0	@,
	bx	lr	@
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.type	VfmwProc_SetPrintLevel, %function
VfmwProc_SetPrintLevel:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ dat, *p_args_2(D)
	ldr	r3, .L18	@ tmp112,
	str	r2, [r3]	@ dat, g_PrintEnable
	bx	lr	@
.L19:
	.align	2
.L18:
	.word	g_PrintEnable
	.fnend
	.size	VfmwProc_SetPrintLevel, .-VfmwProc_SetPrintLevel
	.align	2
	.type	VfmwProc_SetDNR, %function
VfmwProc_SetDNR:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r0]	@ dat, *p_args_5(D)
	ldr	lr, .L28	@ tmp117,
	and	r1, r3, #15	@ D.35995, dat,
	ubfx	r2, r3, #4, #4	@ D.35995, dat,,
	cmp	r1, #3	@ D.35995,
	ubfx	r3, r3, #8, #4	@ D.35995, dat,,
	ldr	ip, .L28+4	@ tmp119,
	movcs	r1, #0	@ D.35995,
	cmp	r2, #3	@ D.35995,
	ldr	r0, .L28+8	@ tmp121,
	movcs	r2, #0	@ D.35995,
	cmp	r3, #3	@ D.35995,
	str	r1, [lr]	@ D.35995, g_DREnable
	movcs	r3, #0	@ D.35995,
	str	r2, [ip]	@ D.35995, g_DBEnable
	str	r3, [r0]	@ D.35995, g_DCEnable
	ldr	pc, [sp], #4	@
.L29:
	.align	2
.L28:
	.word	g_DREnable
	.word	g_DBEnable
	.word	g_DCEnable
	.fnend
	.size	VfmwProc_SetDNR, .-VfmwProc_SetDNR
	.align	2
	.type	VfmwProc_SetUSE_FF_APT_EN, %function
VfmwProc_SetUSE_FF_APT_EN:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #1	@ dat,
	ldrls	r2, .L32	@ tmp112,
	strls	r3, [r2]	@ dat, USE_FF_APT_EN
	bx	lr	@
.L33:
	.align	2
.L32:
	.word	USE_FF_APT_EN
	.fnend
	.size	VfmwProc_SetUSE_FF_APT_EN, .-VfmwProc_SetUSE_FF_APT_EN
	.align	2
	.type	VfmwProc_SetSaveFileAfterReset, %function
VfmwProc_SetSaveFileAfterReset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #1	@ dat,
	ldrls	r2, .L36	@ tmp112,
	strls	r3, [r2, #156]	@ dat, g_ResetCreateNewSave
	bx	lr	@
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.fnend
	.size	VfmwProc_SetSaveFileAfterReset, .-VfmwProc_SetSaveFileAfterReset
	.align	2
	.type	VfmwProc_SetCurProcChan, %function
VfmwProc_SetCurProcChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	cmp	r3, #1	@ dat,
	ldrls	r2, .L40	@ tmp113,
	strls	r3, [r2, #160]	@ dat, g_CurProcChan
	bx	lr	@
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.fnend
	.size	VfmwProc_SetCurProcChan, .-VfmwProc_SetCurProcChan
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
	.type	VfmwProc_TestTimeSequence, %function
VfmwProc_TestTimeSequence:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L44	@ tmp113,
	str	r2, [r3, #164]	@ *p_args_2(D), g_SleepTime
	bx	lr	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.fnend
	.size	VfmwProc_TestTimeSequence, .-VfmwProc_TestTimeSequence
	.align	2
	.type	VfmwProc_SetDnrSleepTime, %function
VfmwProc_SetDnrSleepTime:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L47	@ tmp113,
	str	r2, [r3, #168]	@ *p_args_2(D), g_DnrSleepTime
	bx	lr	@
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.fnend
	.size	VfmwProc_SetDnrSleepTime, .-VfmwProc_SetDnrSleepTime
	.align	2
	.type	VfmwProc_TestStopDec, %function
VfmwProc_TestStopDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L50	@ tmp113,
	str	r2, [r3, #172]	@ *p_args_2(D), g_StopDec
	bx	lr	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.fnend
	.size	VfmwProc_TestStopDec, .-VfmwProc_TestStopDec
	.align	2
	.type	VfmwProc_SetTraceCtrl, %function
VfmwProc_SetTraceCtrl:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L53	@ tmp113,
	str	r2, [r3]	@ *p_args_2(D), g_TraceCtrl
	bx	lr	@
.L54:
	.align	2
.L53:
	.word	g_TraceCtrl
	.fnend
	.size	VfmwProc_SetTraceCtrl, .-VfmwProc_SetTraceCtrl
	.align	2
	.type	VfmwProc_SetTraceBSPeriod, %function
VfmwProc_SetTraceBSPeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L56	@ tmp113,
	str	r2, [r3]	@ *p_args_2(D), g_TraceBsPeriod
	bx	lr	@
.L57:
	.align	2
.L56:
	.word	g_TraceBsPeriod
	.fnend
	.size	VfmwProc_SetTraceBSPeriod, .-VfmwProc_SetTraceBSPeriod
	.align	2
	.type	VfmwProc_SetTraceFramePeriod, %function
VfmwProc_SetTraceFramePeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L59	@ tmp113,
	str	r2, [r3]	@ *p_args_2(D), g_TraceFramePeriod
	bx	lr	@
.L60:
	.align	2
.L59:
	.word	g_TraceFramePeriod
	.fnend
	.size	VfmwProc_SetTraceFramePeriod, .-VfmwProc_SetTraceFramePeriod
	.align	2
	.type	VfmwProc_SetTraceImgPeriod, %function
VfmwProc_SetTraceImgPeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L62	@ tmp113,
	str	r2, [r3]	@ *p_args_2(D), g_TraceImgPeriod
	bx	lr	@
.L63:
	.align	2
.L62:
	.word	g_TraceImgPeriod
	.fnend
	.size	VfmwProc_SetTraceImgPeriod, .-VfmwProc_SetTraceImgPeriod
	.align	2
	.type	VfmwProc_SetNoStreamReportPeriod, %function
VfmwProc_SetNoStreamReportPeriod:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]	@ *p_args_2(D), *p_args_2(D)
	ldr	r3, .L65	@ tmp113,
	str	r2, [r3]	@ *p_args_2(D), g_NoStreamReportPeriod
	bx	lr	@
.L66:
	.align	2
.L65:
	.word	g_NoStreamReportPeriod
	.fnend
	.size	VfmwProc_SetNoStreamReportPeriod, .-VfmwProc_SetNoStreamReportPeriod
	.align	2
	.type	VfmwProc_OpenModuleLowly, %function
VfmwProc_OpenModuleLowly:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r3, #0	@ *p_args_3(D),
	ldreq	r3, .L69	@ tmp114,
	moveq	r2, #1	@ tmp116,
	ldreq	r3, [r3]	@ s_pstVfmwChan, s_pstVfmwChan
	streq	r2, [r3, #1420]	@ tmp116, _5->stSynExtraData.s32ModuleLowlyEnable
	bx	lr	@
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.fnend
	.size	VfmwProc_OpenModuleLowly, .-VfmwProc_OpenModuleLowly
	.align	2
	.type	VfmwProc_CloseModuleLowly, %function
VfmwProc_CloseModuleLowly:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r3, #0	@ *p_args_3(D),
	ldreq	r2, .L73	@ tmp114,
	ldreq	r2, [r2]	@ s_pstVfmwChan, s_pstVfmwChan
	streq	r3, [r2, #1420]	@ *p_args_3(D), _5->stSynExtraData.s32ModuleLowlyEnable
	bx	lr	@
.L74:
	.align	2
.L73:
	.word	.LANCHOR0
	.fnend
	.size	VfmwProc_CloseModuleLowly, .-VfmwProc_CloseModuleLowly
	.align	2
	.type	VfmwProc_OpenScdLowdly, %function
VfmwProc_OpenScdLowdly:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ *p_args_2(D), *p_args_2(D)
	mov	r2, #1	@ tmp116,
	ldr	r1, .L76	@ tmp113,
	add	r3, r3, #14	@ tmp114, *p_args_2(D),
	ldr	r3, [r1, r3, asl #2]	@ D.36038, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp116, _4->Config.ScdLowdlyEnable
	bx	lr	@
.L77:
	.align	2
.L76:
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
	ldr	r1, .L79	@ tmp113,
	add	r3, r3, #14	@ tmp114, *p_args_2(D),
	ldr	r3, [r1, r3, asl #2]	@ D.36041, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp116, _4->Config.ScdLowdlyEnable
	bx	lr	@
.L80:
	.align	2
.L79:
	.word	s_SmIIS
	.fnend
	.size	VfmwProc_CloseScdLowdly, .-VfmwProc_CloseScdLowdly
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
	ldr	r3, [r0]	@ dat, *p_args_3(D)
	mov	r0, r3, lsr #27	@ D.36050, dat,
	cmp	r0, #1	@ D.36050,
	bxhi	lr	@
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ubfx	ip, r3, #26, #1	@ tmp130, dat,,
	ubfx	r2, r3, #25, #1	@ tmp134, dat,,
	mov	r1, sp	@,
	strb	ip, [sp]	@ tmp130, DnrChanCfgArgs.s32MirrorEn
	strb	r2, [sp, #1]	@ tmp134, DnrChanCfgArgs.s32VcmpEn
	ubfx	ip, r3, #24, #1	@ tmp138, dat,,
	ubfx	r2, r3, #12, #12	@ D.36052, dat,,
	strb	ip, [sp, #2]	@ tmp138, DnrChanCfgArgs.s32WmEn
	ubfx	r3, r3, #0, #12	@ D.36052, dat,,
	stmib	sp, {r2, r3}	@,,
	bl	DNR_ConfigChan	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
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
	ldr	r1, [r0]	@ dat, *p_args_4(D)
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, r1, #-2130706432	@ t, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ t,
	ldmib	r0, {r5, r6}	@ p_args,,
	beq	.L93	@,
	str	r1, [sp]	@ dat,
	add	r0, sp, #14	@ tmp125,,
	ldr	r3, .L103	@,
	mov	r1, #50	@,
	ldr	r2, .L103+4	@,
	bl	snprintf	@
	add	r0, sp, #14	@ tmp126,,
	mov	r2, #0	@,
	mov	r1, #66	@,
	bl	klib_fopen	@
	subs	r7, r0, #0	@ fp,
	beq	.L93	@,
	ldr	r3, .L103+8	@ tmp123,
	ldr	ip, [r3, #96]	@ D.36056, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.36056,
	beq	.L95	@,
	mov	lr, #1	@ tmp124,
	mov	r3, r6	@, D.36055
	mov	r2, r5	@, D.36055
	mov	r1, r4	@, t
	str	lr, [sp]	@ tmp124,
	blx	ip	@ D.36056
.L95:
	mov	r0, r7	@, fp
	bl	klib_fclose	@
.L93:
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L104:
	.align	2
.L103:
	.word	.LANCHOR1
	.word	.LC0
	.word	g_vdm_hal_fun_ptr
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
	ldr	r3, [r0]	@ dat, *p_args_3(D)
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, r3, #-2130706432	@ t, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ t,
	beq	.L107	@,
	str	r3, [sp]	@ dat,
	mov	r1, #50	@,
	ldr	r3, .L113	@,
	add	r0, sp, #14	@ tmp120,,
	ldr	r2, .L113+4	@,
	bl	snprintf	@
	add	r0, sp, #14	@ tmp121,,
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
.L107:
	mov	r0, r4	@, t
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L114:
	.align	2
.L113:
	.word	.LANCHOR1
	.word	.LC1
	.fnend
	.size	VfmwProc_SaveOneYUV, .-VfmwProc_SaveOneYUV
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
	ldr	r4, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r4, #0	@ *p_args_3(D),
	bne	.L115	@,
	ldr	r5, .L120	@ tmp117,
	ldr	r6, [r5, #176]	@ D.36067, vfmw_save_yuv_file
	cmp	r6, #0	@ D.36067,
	beq	.L119	@,
	mov	r0, r6	@, D.36067
	bl	klib_fclose	@
	str	r4, [r5, #176]	@ *p_args_3(D), vfmw_save_yuv_file
.L115:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L119:
	ldr	ip, [r5, #180]	@ D.36068, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L120+4	@,
	add	r0, sp, #14	@ tmp130,,
	ldr	r2, .L120+8	@,
	str	ip, [sp]	@ D.36068,
	add	ip, ip, #1	@ D.36068, D.36068,
	str	ip, [r5, #180]	@ D.36068, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, D.36067
	add	r0, sp, #14	@ tmp131,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r5, #184]	@ D.36067, save_yuv_chan_num
	str	r0, [r5, #176]	@, vfmw_save_yuv_file
	b	.L115	@
.L121:
	.align	2
.L120:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC2
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
	ldr	r4, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r4, #0	@ *p_args_3(D),
	bne	.L122	@,
	ldr	r5, .L127	@ tmp117,
	ldr	r6, [r5, #188]	@ D.36073, vfmw_save_seg_file
	cmp	r6, #0	@ D.36073,
	beq	.L126	@,
	mov	r0, r6	@, D.36073
	bl	klib_fclose	@
	str	r4, [r5, #188]	@ *p_args_3(D), vfmw_save_seg_file
.L122:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L126:
	ldr	ip, [r5, #192]	@ D.36074, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L127+4	@,
	add	r0, sp, #14	@ tmp130,,
	ldr	r2, .L127+8	@,
	str	ip, [sp]	@ D.36074,
	add	ip, ip, #1	@ D.36074, D.36074,
	str	ip, [r5, #192]	@ D.36074, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, D.36073
	add	r0, sp, #14	@ tmp131,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r5, #196]	@ D.36073, save_seg_chan_num
	str	r0, [r5, #188]	@, vfmw_save_seg_file
	b	.L122	@
.L128:
	.align	2
.L127:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC3
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
	ldr	r4, [r0]	@ *p_args_3(D), *p_args_3(D)
	cmp	r4, #0	@ *p_args_3(D),
	bne	.L129	@,
	ldr	r5, .L134	@ tmp117,
	ldr	r6, [r5, #200]	@ D.36079, vfmw_save_str_file
	cmp	r6, #0	@ D.36079,
	beq	.L133	@,
	mov	r0, r6	@, D.36079
	bl	klib_fclose	@
	str	r4, [r5, #200]	@ *p_args_3(D), vfmw_save_str_file
.L129:
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L133:
	ldr	ip, [r5, #204]	@ D.36080, save_file_cnt
	mov	r1, #50	@,
	ldr	r3, .L134+4	@,
	add	r0, sp, #14	@ tmp130,,
	ldr	r2, .L134+8	@,
	str	ip, [sp]	@ D.36080,
	add	ip, ip, #1	@ D.36080, D.36080,
	str	ip, [r5, #204]	@ D.36080, save_file_cnt
	bl	snprintf	@
	mov	r2, r6	@, D.36079
	add	r0, sp, #14	@ tmp131,,
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r6, [r5, #208]	@ D.36079, save_str_chan_num
	str	r0, [r5, #200]	@, vfmw_save_str_file
	b	.L129	@
.L135:
	.align	2
.L134:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC4
	.fnend
	.size	VfmwProc_Savestream, .-VfmwProc_Savestream
	.align	2
	.type	VCTRL_ConfigMemInfo.isra.0, %function
VCTRL_ConfigMemInfo.isra.0:
	.fnstart
	@ args = 64, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #444
	sub	sp, sp, #444	@,,
	ldr	r5, .L154	@ tmp225,
	mov	r6, r0	@ ChanID, ChanID
	ldr	r4, [sp, #528]	@ D.36087, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	lr, [sp, #532]	@ D.36087, ChanMemFlag.SelfAllocChanMem_scd
	ldr	ip, [r5, r0, asl #2]	@ D.36086, s_pstVfmwChan
	ldr	r8, [sp, #540]	@ ChanMemFlag.SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	r0, [sp, #536]	@ D.36087, ChanMemFlag.SelfAllocChanMem_ctx
	add	r7, ip, #208896	@ tmp163, D.36086,
	str	r4, [ip, #216]	@ D.36087, _7->s32SelfAllocChanMem_vdh
	str	lr, [ip, #220]	@ D.36087, _7->s32SelfAllocChanMem_scd
	str	r0, [ip, #224]	@ D.36087, _7->s32SelfAllocChanMem_ctx
	str	r8, [r7, #2912]	@ ChanMemFlag.SelfAllocChanMem_pmv, _7->s32SelfAllocChanMem_pmv
	ldr	r8, [r3, #8]	@ pChanOption_12(D)->MemAllocMode, pChanOption_12(D)->MemAllocMode
	ldr	r7, [sp, #480]	@ ISRA.162, ISRA.162
	cmp	r0, #1	@ D.36087,
	cmpeq	r8, #3	@, pChanOption_12(D)->MemAllocMode,
	ldr	fp, [sp, #484]	@ ISRA.163, ISRA.163
	ldr	r9, [sp, #492]	@ ISRA.165, ISRA.165
	moveq	r0, #1	@ tmp170,
	movne	r0, #0	@ tmp170,
	cmp	r4, #0	@ D.36087,
	movne	r0, #0	@, tmp174
	andeq	r0, r0, #1	@,, tmp174, tmp170
	ldr	r8, [sp, #500]	@ ISRA.167, ISRA.167
	cmp	lr, #0	@ D.36087,
	movne	r0, #0	@, tmp180
	andeq	r0, r0, #1	@,, tmp180, tmp174
	ldr	r4, [sp, #488]	@ ISRA.164, ISRA.164
	cmp	r0, #0	@ tmp180,
	ldr	lr, [sp, #496]	@ ISRA.166, ISRA.166
	ldr	r10, [sp, #504]	@ ISRA.168, ISRA.168
	beq	.L137	@,
	add	r0, r9, r8	@ D.36087, ISRA.165, ISRA.167
	cmp	r2, #1	@ OneChanMemFlag,
	cmpeq	r0, r7	@, D.36087, ISRA.162
	beq	.L153	@,
.L137:
	mov	r2, #0	@ tmp191,
	str	r2, [ip, #148]	@ tmp191, _7->s32OneChanMem
.L138:
	add	ip, r5, r6, lsl #2	@ tmp200, tmp225, ChanID,
	ldr	r2, [r5, r6, asl #2]	@ D.36086, s_pstVfmwChan
	str	lr, [ip, #212]	@ ISRA.166, g_scd_vir
	add	r0, r2, #208896	@ tmp194, D.36086,
	ldr	ip, [sp, #508]	@ tmp227, ISRA.169
	str	r7, [r2, #176]	@ ISRA.162, _17->stChanMem_vdh.PhyAddr
	str	fp, [r2, #172]	@ ISRA.163, _17->stChanMem_vdh.VirAddr
	str	ip, [r2, #204]	@ tmp227, _17->stChanMem_ctx.VirAddr
	ldr	ip, [sp, #512]	@ tmp228, ISRA.170
	str	r4, [r2, #180]	@ ISRA.164, _17->stChanMem_vdh.Length
	str	r9, [r2, #192]	@ ISRA.165, _17->stChanMem_scd.PhyAddr
	str	ip, [r2, #212]	@ tmp228, _17->stChanMem_ctx.Length
	ldr	ip, [sp, #516]	@ tmp229, ISRA.171
	str	lr, [r2, #188]	@ ISRA.166, _17->stChanMem_scd.VirAddr
	str	r8, [r2, #196]	@ ISRA.167, _17->stChanMem_scd.Length
	str	r10, [r2, #208]	@ ISRA.168, _17->stChanMem_ctx.PhyAddr
	str	ip, [r0, #2924]	@ tmp229, _17->stChanMem_pmv.PhyAddr
	ldr	ip, [sp, #520]	@ tmp230, ISRA.172
	str	ip, [r0, #2920]	@ tmp230, _17->stChanMem_pmv.VirAddr
	ldr	ip, [sp, #524]	@ tmp231, ISRA.173
	str	ip, [r0, #2928]	@ tmp231, _17->stChanMem_pmv.Length
	ldr	r0, [r2, #1580]	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r7, [r2, #248]	@ ISRA.162, _17->s32SdecMemAddr
	cmp	r0, #1	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	str	r4, [r2, #252]	@ ISRA.164, _17->s32SdecMemSize
	beq	.L139	@,
	str	r7, [r2, #236]	@ ISRA.162, _17->s32OffLineDnrMemAddr
	cmp	r1, #24	@ eCapLevel,
	ldr	r2, .L154+4	@ tmp203,
	ldrne	r1, [r3, #60]	@ DnrImgNum, pChanOption_12(D)->s32DisplayFrameNum
	moveq	r1, #1	@ DnrImgNum,
	ldr	ip, [r2, #36]	@ D.36090, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36090,
	beq	.L143	@,
	ldr	r10, [r3, #16]	@ pChanOption_12(D)->s32MaxHeight, pChanOption_12(D)->s32MaxHeight
	mov	lr, #16	@ tmp206,
	ldr	r2, [r3, #12]	@ pChanOption_12(D)->s32MaxWidth, pChanOption_12(D)->s32MaxWidth
	add	r0, sp, #24	@ tmp207,,
	str	r1, [sp, #4]	@ DnrImgNum,
	mvn	r1, #0	@ tmp208,
	str	r0, [sp, #16]	@ tmp207,
	mov	r3, r10	@, pChanOption_12(D)->s32MaxHeight
	mov	r0, #0	@ tmp209,
	str	r1, [sp, #12]	@ tmp208,
	str	r0, [sp, #8]	@ tmp209,
	mov	r1, r4	@, ISRA.164
	str	r0, [sp]	@ tmp209,
	mov	r0, r7	@, ISRA.162
	str	lr, [sp, #20]	@ tmp206,
	blx	ip	@ D.36090
	cmp	r0, #0	@,
	bne	.L143	@,
	ldr	r3, [r5, r6, asl #2]	@ tmp212, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, _34->s32OffLineDNRMemSize
.L144:
	ldr	r3, [r5, r6, asl #2]	@ D.36086, s_pstVfmwChan
	mov	r2, #0	@ tmp220,
	mov	r0, r2	@ D.36091, tmp220
	ldr	r1, [r3, #240]	@ D.36087, _36->s32OffLineDNRMemSize
	str	r9, [r3, #244]	@ ISRA.165, _36->s32ScdChanMemAddr
	rsb	r4, r1, r4	@ D.36087, D.36087, ISRA.164
	add	r7, r1, r7	@ D.36087, D.36087, ISRA.162
	sub	r4, r4, #16	@ D.36087, D.36087,
	str	r8, [r3, #256]	@ ISRA.167, _36->s32ScdChanMemSize
	str	r7, [r3, #228]	@ D.36087, _36->s32VdmChanMemAddr
	str	r4, [r3, #232]	@ D.36087, _36->s32VdmChanMemSize
	str	r2, [r3, #260]	@ tmp220, _36->s32BpdChanMemAddr
	str	r2, [r3, #264]	@ tmp220, _36->s32BpdChanMemSize
	str	r2, [r3, #268]	@ tmp220, _36->s32Vp8SegIdChanMemAddr
	str	r2, [r3, #272]	@ tmp220, _36->s32Vp8SegIdChanMemSize
.L142:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L139:
	mov	r3, #0	@ tmp214,
	str	r3, [r2, #236]	@ tmp214, _17->s32OffLineDnrMemAddr
	str	r3, [r2, #240]	@ tmp214, _17->s32OffLineDNRMemSize
	b	.L144	@
.L153:
	add	r0, r4, r8	@ D.36087, ISRA.164, ISRA.167
	mov	r2, #1	@ tmp190,
	str	r9, [ip, #160]	@ ISRA.165, _7->stChanMem.PhyAddr
	str	lr, [ip, #156]	@ ISRA.166, _7->stChanMem.VirAddr
	str	r0, [ip, #164]	@ D.36087, _7->stChanMem.Length
	str	r2, [ip, #148]	@ tmp190, _7->s32OneChanMem
	b	.L138	@
.L143:
	mvn	r0, #0	@ D.36091,
	b	.L142	@
.L155:
	.align	2
.L154:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VCTRL_ConfigMemInfo.isra.0, .-VCTRL_ConfigMemInfo.isra.0
	.align	2
	.type	VCTRL_StopVfmw.part.9, %function
VCTRL_StopVfmw.part.9:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L169	@ tmp122,
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L159	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.36102,
	bl	msleep	@
	b	.L160	@
.L168:
	bl	msleep	@
	subs	r4, r4, #1	@ D.36102, D.36102,
	beq	.L167	@,
.L160:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L168	@,
.L159:
	mov	r0, #0	@ ret,
.L158:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #36]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L167:
	mvn	r0, #0	@ ret,
	b	.L158	@
.L170:
	.align	2
.L169:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopVfmw.part.9, .-VCTRL_StopVfmw.part.9
	.align	2
	.type	VCTRL_StartVfmw.part.10, %function
VCTRL_StartVfmw.part.10:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L184	@ tmp122,
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L174	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.36112,
	bl	msleep	@
	b	.L175	@
.L183:
	bl	msleep	@
	subs	r4, r4, #1	@ D.36112, D.36112,
	beq	.L182	@,
.L175:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L183	@,
.L174:
	mov	r0, #0	@ ret,
.L173:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #36]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L182:
	mvn	r0, #0	@ ret,
	b	.L173	@
.L185:
	.align	2
.L184:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StartVfmw.part.10, .-VCTRL_StartVfmw.part.10
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create,
	beq	.L194	@,
	ldr	r3, [r0, #4]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy,
	beq	.L194	@,
	ldr	r3, [r0, #8]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init,
	beq	.L194	@,
	ldr	r3, [r0, #12]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode,
	beq	.L194	@,
	ldr	r3, [r0, #16]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage,
	beq	.L194	@,
	ldr	r3, [r0, #20]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L194	@,
	ldr	r3, [r0, #24]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L194	@,
	mov	r1, r0	@ pstSdecFunc, pstSdecFunc
	mov	r2, #28	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, .L197	@,
	bl	memcpy	@
	mov	r0, #0	@ D.36115,
	ldmfd	sp!, {r4, pc}	@
.L194:
	mvn	r0, #0	@ D.36115,
	bx	lr	@
.L198:
	.align	2
.L197:
	.word	.LANCHOR0+216
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, #50	@ D.36142,
	mov	r5, r0	@ BeginTime,
	mov	r0, #0	@,
	mvn	r6, r5	@ D.36146, BeginTime
	bl	VDMDRV_PrepareSleep	@
	b	.L206	@
.L205:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36142, D.36142,
	beq	.L207	@,
.L206:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L207	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.36146, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L205	@,
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36142, D.36142,
	bne	.L206	@,
.L207:
	ldr	r7, .L231	@ tmp143,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #4]	@ D.36144, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.36144,
	beq	.L202	@,
	mov	r0, #0	@,
	blx	r3	@ D.36144
.L202:
	bl	SCDDRV_PrepareSleep	@
	mov	r4, #50	@ D.36142,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r6, r0	@ D.36146, BeginTime
	b	.L214	@
.L213:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36142, D.36142,
	beq	.L215	@,
.L214:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L215	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.36146, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L213	@,
	bl	SCDDRV_ForceSleep	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36142, D.36142,
	bne	.L214	@,
.L215:
	ldr	r3, [r7, #12]	@ D.36147, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r3, #0	@ D.36147,
	beq	.L210	@,
	blx	r3	@ D.36147
.L210:
	bl	DNRDRV_PrepareSleep	@
	mov	r4, #50	@ D.36142,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r6, r0	@ D.36146, BeginTime
	b	.L222	@
.L221:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36142, D.36142,
	beq	.L223	@,
.L222:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L223	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.36146, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L221	@,
	bl	DNRDRV_ForeceSleep	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.36142, D.36142,
	bne	.L222	@,
.L223:
	ldr	r3, .L231+4	@ tmp137,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L230	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	OSAL_GetTimeInMs	@
.L230:
	mov	r2, #2	@ tmp142,
	str	r2, [r3, #36]	@ tmp142, s_VfmwCTrl.eTaskCommand
	bl	VCTRL_StopVfmw.part.9	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	OSAL_GetTimeInMs	@
.L232:
	.align	2
.L231:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.type	VfmwProc_TestSuspend, %function
VfmwProc_TestSuspend:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	VCTRL_Suspend	@
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
	cmp	r0, #0	@,
	ldmnefd	sp!, {r4, pc}	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	ldmnefd	sp!, {r4, pc}	@
	bl	BPD_OpenHardware	@
	ldr	r3, .L239	@ tmp113,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	ldmnefd	sp!, {r4, pc}	@
	str	r2, [r3, #36]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw.part.10	@
.L240:
	.align	2
.L239:
	.word	.LANCHOR0
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
	ldr	r0, .L243	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L244:
	.align	2
.L243:
	.word	.LANCHOR0+216
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.align	2
	.type	VfmwProc_TestResume, %function
VfmwProc_TestResume:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	VCTRL_Resume	@
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
	ldr	r4, .L248	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	mvn	r3, #0	@ tmp112,
	str	r3, [r4, #4]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 4B]
	ldmfd	sp!, {r4, pc}	@
.L249:
	.align	2
.L248:
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
	ldr	r5, .L257	@ tmp120,
	ldr	r3, [r5, #244]	@ D.36169, LastEventTime
	cmp	r0, r3	@ CurTime, D.36169
	mov	r4, r0	@ CurTime,
	bls	.L253	@,
	rsb	r3, r3, r0	@ Period, D.36169, CurTime
	cmp	r3, #9	@ Period,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	b	.L254	@
.L253:
	str	r0, [r5, #244]	@ CurTime, LastEventTime
.L254:
	ldr	r0, .L257+4	@,
	bl	OSAL_GiveEvent	@
	str	r4, [r5, #244]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L258:
	.align	2
.L257:
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
	@ link register save eliminated.
	cmp	r1, #0	@ event_report
	beq	.L265	@,
	cmp	r0, #0	@ eType,
	beq	.L261	@,
	cmp	r0, #1	@ eType,
	bne	.L265	@,
	ldr	r3, .L266	@ tmp115,
	mov	r0, #0	@ D.36174,
	str	r1, [r3, #152]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	bx	lr	@
.L265:
	mvn	r0, #0	@ D.36174,
	bx	lr	@
.L261:
	ldr	r3, .L266	@ tmp114,
	str	r1, [r3, #148]	@ event_report, s_VfmwCTrl.event_report_vdec
	bx	lr	@
.L267:
	.align	2
.L266:
	.word	.LANCHOR0
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
	ldr	r3, .L270	@ tmp113,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L269	@,
	mov	r2, #2	@ tmp116,
	str	r2, [r3, #36]	@ tmp116, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StopVfmw.part.9	@
.L269:
	mvn	r0, #0	@,
	bx	lr	@
.L271:
	.align	2
.L270:
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
	ldr	r3, .L274	@ tmp113,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L273	@,
	str	r2, [r3, #36]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StartVfmw.part.10	@
.L273:
	mvn	r0, #0	@,
	bx	lr	@
.L275:
	.align	2
.L274:
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
	cmp	r1, #0	@ pstStreamIntf,
	beq	.L279	@,
	ldr	r3, .L282	@ tmp116,
	ldr	r0, [r3, r0, asl #2]	@ D.36186, s_pstVfmwChan
	cmp	r0, #0	@ D.36186,
	beq	.L279	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, #12	@,
	add	r0, r0, #104	@, D.36186,
	bl	memcpy	@
	mov	r0, #0	@ D.36185,
	ldmfd	sp!, {r4, pc}	@
.L279:
	mvn	r0, #0	@ D.36185,
	bx	lr	@
.L283:
	.align	2
.L282:
	.word	.LANCHOR0
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
	ldr	r3, .L287	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.36194, s_pstVfmwChan
	cmp	r0, #0	@ D.36194,
	addne	r0, r0, #104	@ D.36193, D.36194,
	bx	lr	@
.L288:
	.align	2
.L287:
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
	cmp	r1, #0	@ pstFrameIntf,
	beq	.L292	@,
	ldr	r3, .L295	@ tmp116,
	ldr	r0, [r3, r0, asl #2]	@ D.36198, s_pstVfmwChan
	cmp	r0, #0	@ D.36198,
	beq	.L292	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, #12	@,
	add	r0, r0, #128	@, D.36198,
	bl	memcpy	@
	mov	r0, #0	@ D.36197,
	ldmfd	sp!, {r4, pc}	@
.L292:
	mvn	r0, #0	@ D.36197,
	bx	lr	@
.L296:
	.align	2
.L295:
	.word	.LANCHOR0
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
	ldr	r3, .L300	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.36206, s_pstVfmwChan
	cmp	r0, #0	@ D.36206,
	addne	r0, r0, #128	@ D.36205, D.36206,
	bx	lr	@
.L301:
	.align	2
.L300:
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
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L303	@,
	ldr	r3, .L308	@ tmp118,
	ldr	r0, [r3]	@ D.36210, s_pstVfmwChan
	cmp	r0, #0	@ D.36210,
	beq	.L303	@,
	ldr	r3, [r0, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r3, #1	@ _5->s32IsOpen,
	bne	.L303	@,
	add	r0, r0, #74752	@, D.36210,
	add	r0, r0, #680	@,,
	b	GetSegStreamSize	@
.L303:
	mvn	r0, #0	@,
	bx	lr	@
.L309:
	.align	2
.L308:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r1	@ tmp125, pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ tmp125, tmp125,
	cmp	r0, #0	@ ChanID,
	moveq	r4, r3	@, tmp128, tmp125
	orrne	r4, r3, #1	@,, tmp128, tmp125
	cmp	r4, #0	@ tmp128,
	bne	.L313	@,
	ldr	r3, .L316	@ tmp129,
	ldr	r5, [r3, r0, asl #2]	@ D.36216, s_pstVfmwChan
	cmp	r5, #0	@ D.36216,
	beq	.L313	@,
	add	r0, r5, #1584	@, D.36216,
	mov	r2, #8	@,
	add	r0, r0, #12	@,,
	bl	memcpy	@
	ldr	r3, [r5, #1596]	@ _6->stSynExtraData.stDisParams.s32Mode, _6->stSynExtraData.stDisParams.s32Mode
	sub	r3, r3, #1	@ D.36219, _6->stSynExtraData.stDisParams.s32Mode,
	cmp	r3, #1	@ D.36219,
	bls	.L314	@,
	str	r4, [r5, #1596]	@ tmp128, _6->stSynExtraData.stDisParams.s32Mode
	mov	r0, r4	@ D.36215, tmp128
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L314:
	mov	r0, r4	@ D.36215, tmp128
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L313:
	mvn	r0, #0	@ D.36215,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L317:
	.align	2
.L316:
	.word	.LANCHOR0
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
	add	r3, r3, r2	@ D.36226, DnrChanState.read_out_frame_num, DnrChanState.new_frame_num
	str	r3, [r4, #88]	@ D.36226, pstChanState_8(D)->wait_disp_frame_num
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
	ldr	r3, .L330	@ tmp162,
	movw	ip, #4058	@ tmp166,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r3, [r3, r0, asl #2]	@ D.36240, s_pstVfmwChan
	add	r5, r3, #172032	@ tmp179, D.36240,
	ldrsb	lr, [r5, ip]	@ D.36238, _32->FspInst.s32DecFsNum
	cmp	lr, #0	@ D.36238,
	ble	.L326	@,
	add	r3, r3, #203776	@ ivtmp.485, D.36240,
	mov	r4, #0	@ s32DecodedFrameNum,
	add	r3, r3, #102	@ ivtmp.485, ivtmp.485,
	mov	r0, r4	@ i, s32DecodedFrameNum
.L323:
	ldrsb	ip, [r3]	@ MEM[base: _39, offset: 0B], MEM[base: _39, offset: 0B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.485, ivtmp.485,
	cmp	ip, #3	@ MEM[base: _39, offset: 0B],
	addeq	r4, r4, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r0, lr	@ i, D.36238
	bne	.L323	@,
.L321:
	str	r4, [r1, #88]	@ D.36236, pstChanState_15(D)->wait_disp_frame_num
	ldrb	r3, [r5, #4058]	@ zero_extendqisi2	@ D.36237, _32->FspInst.s32DecFsNum
	cmp	r3, #0	@ D.36237,
	moveq	r3, #4	@ D.36235,
	mvnne	r0, r2	@ D.36238, RefNum
	sxtabne	r3, r0, r3	@ D.36235, D.36238, D.36237
	str	r3, [r1, #96]	@ D.36235, pstChanState_15(D)->total_disp_frame_num
	ldrb	r3, [r5, #4058]	@ zero_extendqisi2	@ D.36237, _32->FspInst.s32DecFsNum
	sxtb	r3, r3	@ D.36237, D.36237
	cmp	r3, #0	@ D.36237,
	ldmlefd	sp!, {r4, r5, pc}	@
	add	r2, r2, #1	@ D.36238, RefNum,
	cmp	r3, r2	@ D.36237, D.36238
	movle	r3, #0	@ tmp178,
	strle	r3, [r1, #96]	@ tmp178, pstChanState_15(D)->total_disp_frame_num
	ldmfd	sp!, {r4, r5, pc}	@
.L326:
	mov	r4, #0	@ D.36236,
	b	.L321	@
.L331:
	.align	2
.L330:
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
	ldr	r3, .L335	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.36245, s_pstVfmwChan
	cmp	r0, #0	@ D.36245,
	addne	r0, r0, #116	@ D.36244, D.36245,
	bx	lr	@
.L336:
	.align	2
.L335:
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
	ldr	r4, .L347	@ tmp170,
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r9, [sp, #80]	@ MemSize, MemSize
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ble	.L341	@,
	cmp	r9, #0	@ MemSize,
	cmpne	r3, #0	@, MemAddr,
	moveq	fp, #1	@ tmp184,
	movne	fp, #0	@ tmp184,
	beq	.L341	@,
	mov	r10, r1	@ MaxWidth, MaxWidth
	mov	r7, r0	@ ChanID, ChanID
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp216,,
	mov	r6, r2	@ MaxHeight, MaxHeight
	mov	r8, r3	@ MemAddr, MemAddr
	bl	__memzero	@
	add	r1, sp, #4	@ tmp217,,
	mov	r0, r7	@, ChanID
	mov	r3, #1	@ tmp196,
	str	r6, [sp, #20]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	str	r6, [sp, #36]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	fp, [sp, #4]	@ tmp184, FspInstCfg.s32DispLoopEnable
	strb	fp, [sp, #6]	@ tmp184, FspInstCfg.s32RprEnable
	str	r10, [sp, #16]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	str	r10, [sp, #32]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	strb	fp, [sp, #9]	@ tmp184, FspInstCfg.s32ExpectedDecFsNum
	strb	fp, [sp, #11]	@ tmp184, FspInstCfg.s32ExpectedDispFsNum
	strb	fp, [sp, #12]	@ tmp184, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [sp, #8]	@ tmp196, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.36262,
	bne	.L341	@,
	mov	r2, r9	@, MemSize
	mov	r1, r8	@, MemAddr
	mov	r3, sp	@,
	mov	r0, r7	@, ChanID
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L341	@,
	mov	r0, r7	@, ChanID
	add	r1, r4, #260	@, tmp170,
	bl	FSP_GetInstInfo	@
	movw	r3, #261	@ tmp204,
	ldrsb	r3, [r4, r3]	@ D.36265, FspInstInfo.s32DecFsNum
	cmp	r3, #16	@ D.36265,
	movge	r3, #16	@ D.36265,
	cmp	r3, #2	@ D.36265,
	str	r3, [r5, #820]	@ D.36265, pstChan_8->s32UsrdecFrameNum
	ble	.L341	@,
	ldr	r3, [r4, #3596]	@ D.36265, FspInstInfo.s32DecFsSize
	mov	r1, #64	@,
	add	r0, r5, #752	@, pstChan,
	str	r3, [r5, #816]	@ D.36265, pstChan_8->s32UsrdecFrameSize
	bl	__memzero	@
	mov	r1, #64	@,
	add	r0, r5, #688	@, pstChan,
	bl	__memzero	@
	ldr	lr, [r5, #820]	@ D.36265, pstChan_8->s32UsrdecFrameNum
	cmp	lr, #0	@ D.36265,
	ble	.L339	@,
	add	r3, r4, #260	@ ivtmp.496, tmp170,
	add	r1, r5, #748	@ ivtmp.498, pstChan,
	mov	r2, r6	@ i, D.36262
.L343:
	ldr	ip, [r3, #20]	@ D.36265, MEM[base: _62, offset: 20B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, lr	@ i, D.36265
	add	r3, r3, #52	@ ivtmp.496, ivtmp.496,
	str	ip, [r1, #4]!	@ D.36265, MEM[base: _63, offset: 0B]
	bne	.L343	@,
.L339:
	mov	r0, r6	@, D.36262
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L341:
	mvn	r6, #0	@ D.36262,
	mov	r0, r6	@, D.36262
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L348:
	.align	2
.L347:
	.word	.LANCHOR0
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
	beq	.L381	@,
.L352:
	ldr	r3, [r4, #28]	@ pstChan_7(D)->stChanMem_vdh.Length, pstChan_7(D)->stChanMem_vdh.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_vdh.Length,
	bne	.L382	@,
.L353:
	ldr	r2, [r4, #44]	@ D.36272, pstChan_7(D)->stChanMem_scd.Length
	cmp	r2, #0	@ D.36272,
	bne	.L383	@,
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L384	@,
.L356:
	ldr	r2, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r1, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #72]	@ pstChan_7(D)->s32SelfAllocChanMem_ctx, pstChan_7(D)->s32SelfAllocChanMem_ctx
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_ctx,
	beq	.L385	@,
.L359:
	ldr	r0, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L360:
	ldr	r2, [r4, #60]	@, pstChan_7(D)->stChanMem_ctx.Length
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	ldr	r0, [r4, #56]	@, pstChan_7(D)->stChanMem_ctx.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ pstChan_7(D)->s32SelfAllocChanMem_pmv, pstChan_7(D)->s32SelfAllocChanMem_pmv
	ldr	r0, [r4, #100]	@ D.36277, pstChan_7(D)->stChanMem_pmv.PhyAddr
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_pmv,
	beq	.L386	@,
.L362:
	ldr	r2, [r4, #104]	@, pstChan_7(D)->stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L382:
	ldrsb	r3, [r4, #16]	@ pstChan_7(D)->stChanMem_vdh.IsCached, pstChan_7(D)->stChanMem_vdh.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_vdh.IsCached,
	bne	.L353	@,
	ldr	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	mov	r3, #0	@ tmp162,
	strb	r3, [r4, #16]	@ tmp162, pstChan_7(D)->stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	b	.L353	@
.L385:
	ldr	r0, [r4, #56]	@ D.36272, pstChan_7(D)->stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.36272,
	beq	.L359	@,
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L360	@
.L386:
	cmp	r0, #0	@ D.36277,
	beq	.L362	@,
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #100]	@ D.36277, pstChan_7(D)->stChanMem_pmv.PhyAddr
	b	.L362	@
.L383:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L387	@,
.L355:
	ldr	r3, [r4, #44]	@ pstChan_7(D)->stChanMem_scd.Length, pstChan_7(D)->stChanMem_scd.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_scd.Length,
	beq	.L356	@,
	ldrsb	r3, [r4, #32]	@ pstChan_7(D)->stChanMem_scd.IsCached, pstChan_7(D)->stChanMem_scd.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_scd.IsCached,
	bne	.L356	@,
	ldr	r0, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, pstChan_7(D)->stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	ldr	r3, .L388	@ tmp173,
	mov	r2, #0	@ tmp176,
	strb	r2, [r4, #32]	@ tmp176, pstChan_7(D)->stChanMem_scd.IsCached
	add	r5, r3, r5, lsl #2	@ tmp174, tmp173, ChanID,
	str	r0, [r4, #36]	@ D.36276, pstChan_7(D)->stChanMem_scd.VirAddr
	str	r0, [r5, #212]	@ D.36276, g_scd_vir
	b	.L356	@
.L381:
	ldr	r0, [r1, #24]	@ D.36272, pstChan_7(D)->stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.36272,
	beq	.L352	@,
	ldr	r1, [r1, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L353	@
.L387:
	ldr	r0, [r4, #40]	@ D.36272, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.36272,
	beq	.L355	@,
.L363:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L356	@
.L384:
	ldr	r0, [r4, #40]	@ D.36272, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.36272,
	beq	.L356	@,
	b	.L363	@
.L389:
	.align	2
.L388:
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
	subs	r2, r0, #0	@ ChanID, ChanID
	bne	.L397	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L406	@ tmp140,
	ldr	r3, [r5]	@ D.36286, s_pstVfmwChan
	cmp	r3, #0	@ D.36286,
	beq	.L400	@,
	ldr	r4, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r4, #1	@ _5->s32IsOpen,
	bne	.L400	@,
	ldr	r3, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r3, #19	@ _5->eVidStd,
	bne	.L405	@,
.L400:
	mvn	r0, #0	@ D.36285,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L405:
	mov	r6, r2	@ ChanID, ChanID
	bl	SM_Start	@
	ldr	r3, [r5]	@ D.36286, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _10->s32Priority, _10->s32Priority
	str	r4, [r3, #8]	@ _5->s32IsOpen, _10->s32IsRun
	cmp	r2, #0	@ _10->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _10->s32StopSyntax
	bne	.L393	@,
	cmp	r3, #0	@ D.36286,
	str	r4, [r3, #12]	@ _5->s32IsOpen, _10->s32Priority
	ldr	r0, .L406+4	@,
	ldrne	r3, .L406+8	@ tmp133,
	ldreq	r2, .L406+8	@ tmp129,
	streq	r3, [r5, #3600]	@ D.36286, PrioArray
	strne	r4, [r3]	@ _5->s32IsOpen, g_ChanCtx.PriorByChanId
	streq	r3, [r2]	@ D.36286, g_ChanCtx.PriorByChanId
	strne	r4, [r5, #3600]	@ _5->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5]	@ D.36286, s_pstVfmwChan
.L393:
	ldr	r3, [r3, #1580]	@ _42->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _42->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _42->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L396	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L396:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36285,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L397:
	mvn	r0, #0	@ D.36285,
	bx	lr	@
.L407:
	.align	2
.L406:
	.word	.LANCHOR0
	.word	.LANCHOR0+3600
	.word	g_ChanCtx
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.type	VfmwProc_TestStartChan, %function
VfmwProc_TestStartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@, *p_args_2(D)
	b	VCTRL_StartChan	@
	.fnend
	.size	VfmwProc_TestStartChan, .-VfmwProc_TestStartChan
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #0	@ ChanID, ChanID
	bne	.L419	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L420	@ tmp117,
	ldr	r3, [r5]	@ D.36298, s_pstVfmwChan
	cmp	r3, #0	@ D.36298,
	beq	.L412	@,
	ldr	r1, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r1, #1	@ _5->s32IsOpen,
	bne	.L412	@,
	str	r1, [r3, #16]	@ _5->s32IsOpen, _5->s32StopSyntax
	str	r2, [r3, #8]	@ ChanID, _5->s32IsRun
	bl	SM_Stop	@
	subs	r4, r0, #0	@ s32Ret,
	bne	.L412	@,
	mov	r1, r4	@, s32Ret
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, s32Ret
	bl	DNR_StopChan	@
	mov	r0, r4	@, s32Ret
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r4	@ D.36297, s32Ret
	str	r4, [r3, #16]	@ s32Ret, _13->s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L412:
	mvn	r0, #0	@ D.36297,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L419:
	mvn	r0, #0	@ D.36297,
	bx	lr	@
.L421:
	.align	2
.L420:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.type	VfmwProc_TestStopChan, %function
VfmwProc_TestStopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@, *p_args_2(D)
	b	VCTRL_StopChan	@
	.fnend
	.size	VfmwProc_TestStopChan, .-VfmwProc_TestStopChan
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r1	@ tmp122, pstCfg
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r3, r3, lsr #5	@ tmp122, tmp122,
	cmp	r0, #0	@ ChanID,
	moveq	r4, r3	@, tmp125, tmp122
	orrne	r4, r3, #1	@,, tmp125, tmp122
	cmp	r4, #0	@ tmp125,
	bne	.L426	@,
	ldr	r3, .L428	@ tmp126,
	ldr	r3, [r3, r0, asl #2]	@ D.36306, s_pstVfmwChan
	cmp	r3, #0	@ D.36306,
	beq	.L426	@,
	mov	r0, r1	@ pstCfg, pstCfg
	mov	r2, #72	@,
	add	r1, r3, #32	@, D.36306,
	bl	memcpy	@
	mov	r0, r4	@ D.36305, tmp125
	ldmfd	sp!, {r4, pc}	@
.L426:
	mvn	r0, #0	@ D.36305,
	ldmfd	sp!, {r4, pc}	@
.L429:
	.align	2
.L428:
	.word	.LANCHOR0
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
	mov	ip, #0	@ tmp130,
	ldr	r5, .L440	@ tmp148,
	ldr	r2, [r5, r0, asl #2]	@ D.36319, s_pstVfmwChan
	ldr	r3, [r2, #1624]	@ eOldDecCore, _6->eDecCore
	str	ip, [r2, #1624]	@ tmp130, _6->eDecCore
	cmp	r3, ip	@ eOldDecCore,
	beq	.L434	@,
	sub	r3, r3, #1	@ D.36320, eOldDecCore,
	mov	r6, r1	@ pstSoftDecMem, pstSoftDecMem
	cmp	r3, #4	@ D.36320,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L433	@,
	ldr	r3, [r5, #220]	@ D.36321, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.36321,
	beq	.L433	@,
	add	r0, r2, #210944	@, D.36319,
	add	r0, r0, #896	@,,
	blx	r3	@ D.36321
.L433:
	ldr	r3, [r5, r4, asl #2]	@ D.36319, s_pstVfmwChan
	ldr	r1, .L440	@ tmp135,
	ldr	r2, [r3, #1624]	@ _16->eDecCore, _16->eDecCore
	sub	r2, r2, #1	@ D.36320, _16->eDecCore,
	cmp	r2, #4	@ D.36320,
	bhi	.L434	@,
	ldr	ip, [r1, #216]	@ D.36326, g_SdecFunc.pfun_iMediaSoftDEC_Create
	add	r2, r3, #208896	@ tmp139, D.36319,
	ldr	r1, [r3, #24]	@ _16->eChanCapLevel, _16->eChanCapLevel
	cmp	ip, #0	@ D.36326,
	str	r1, [r2, #2956]	@ _16->eChanCapLevel, _16->stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	beq	.L435	@,
	add	r0, r3, #210944	@, D.36319,
	mov	r1, r6	@, pstSoftDecMem
	ldr	r2, [r3, #880]	@, _16->eVidStd
	add	r0, r0, #896	@,,
	blx	ip	@ D.36326
	adds	r0, r0, #0	@ D.36323,,
	movne	r0, #1	@ D.36323,
	rsb	r0, r0, #0	@ D.36318, D.36323
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L434:
	mov	r0, #0	@ D.36318,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L435:
	mvn	r0, #0	@ D.36318,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L441:
	.align	2
.L440:
	.word	.LANCHOR0
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
	ldr	r3, .L456	@ tmp143,
	ldr	r2, [r1]	@ pstCfg_6(D)->eVidStd, pstCfg_6(D)->eVidStd
	ldr	r3, [r3, r0, asl #2]	@ D.36332, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ _4->stChanCfg.eVidStd, _4->stChanCfg.eVidStd
	cmp	r0, r2	@ _4->stChanCfg.eVidStd, pstCfg_6(D)->eVidStd
	bne	.L455	@,
	ldr	r0, [r3, #48]	@ _4->stChanCfg.s32ChanErrThr, _4->stChanCfg.s32ChanErrThr
	ldr	r2, [r1, #16]	@ pstCfg_6(D)->s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	bne	.L455	@,
	ldr	r0, [r3, #44]	@ _4->stChanCfg.s32ChanPriority, _4->stChanCfg.s32ChanPriority
	ldr	r2, [r1, #12]	@ pstCfg_6(D)->s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	cmp	r0, r2	@ _4->stChanCfg.s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	bne	.L455	@,
	ldr	r0, [r3, #52]	@ _4->stChanCfg.s32ChanStrmOFThr, _4->stChanCfg.s32ChanStrmOFThr
	ldr	r2, [r1, #20]	@ pstCfg_6(D)->s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	bne	.L455	@,
	ldr	r0, [r3, #56]	@ _4->stChanCfg.s32DecMode, _4->stChanCfg.s32DecMode
	ldr	r2, [r1, #24]	@ pstCfg_6(D)->s32DecMode, pstCfg_6(D)->s32DecMode
	cmp	r0, r2	@ _4->stChanCfg.s32DecMode, pstCfg_6(D)->s32DecMode
	bne	.L455	@,
	ldr	r0, [r3, #60]	@ _4->stChanCfg.s32DecOrderOutput, _4->stChanCfg.s32DecOrderOutput
	ldr	r2, [r1, #28]	@ pstCfg_6(D)->s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	cmp	r0, r2	@ _4->stChanCfg.s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	bne	.L455	@,
	ldr	r0, [r3, #68]	@ _4->stChanCfg.s32DnrDispOutEnable, _4->stChanCfg.s32DnrDispOutEnable
	ldr	r2, [r1, #36]	@ pstCfg_6(D)->s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	bne	.L455	@,
	ldr	r0, [r3, #64]	@ _4->stChanCfg.s32DnrTfEnable, _4->stChanCfg.s32DnrTfEnable
	ldr	r2, [r1, #32]	@ pstCfg_6(D)->s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	bne	.L455	@,
	ldr	r0, [r3, #76]	@ _4->stChanCfg.s32VcmpEn, _4->stChanCfg.s32VcmpEn
	ldr	r2, [r1, #44]	@ pstCfg_6(D)->s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	bne	.L455	@,
	ldr	r0, [r3, #88]	@ _4->stChanCfg.s32VcmpWmEndLine, _4->stChanCfg.s32VcmpWmEndLine
	ldr	r2, [r1, #56]	@ pstCfg_6(D)->s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	bne	.L455	@,
	ldr	r0, [r3, #84]	@ _4->stChanCfg.s32VcmpWmStartLine, _4->stChanCfg.s32VcmpWmStartLine
	ldr	r2, [r1, #52]	@ pstCfg_6(D)->s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	bne	.L455	@,
	ldr	r0, [r3, #80]	@ _4->stChanCfg.s32WmEn, _4->stChanCfg.s32WmEn
	ldr	r2, [r1, #48]	@ pstCfg_6(D)->s32WmEn, pstCfg_6(D)->s32WmEn
	cmp	r0, r2	@ _4->stChanCfg.s32WmEn, pstCfg_6(D)->s32WmEn
	bne	.L455	@,
	ldr	r3, [r3, #92]	@ _4->stChanCfg.s32SupportAllP, _4->stChanCfg.s32SupportAllP
	ldr	r0, [r1, #60]	@ pstCfg_6(D)->s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	subs	r0, r3, r0	@ D.36331, _4->stChanCfg.s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	mvnne	r0, #0	@ D.36331,
	bx	lr	@
.L455:
	mvn	r0, #0	@ D.36331,
	bx	lr	@
.L457:
	.align	2
.L456:
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
	ldr	r2, .L466	@ tmp129,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2, r0, asl #2]	@ D.36339, s_pstVfmwChan
	ldr	r2, [r5, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #19	@ _4->eVidStd,
	beq	.L463	@,
	mov	r4, r1	@ pstCfg, pstCfg
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@ D.36338
	bne	.L463	@,
	ldr	r3, [r5, #32]	@ D.36341, _4->stChanCfg.eVidStd
	cmp	r3, #1	@ D.36341,
	beq	.L465	@,
	sub	r3, r3, #10	@ D.36342, D.36341,
	cmp	r3, #2	@ D.36342,
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #36]	@ _4->stChanCfg.StdExt.Vp6Ext.bReversed, _4->stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r4, #4]	@ pstCfg_6(D)->StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	subs	r0, r3, r0	@ D.36338, _4->stChanCfg.StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	mvnne	r0, #0	@ D.36338,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L465:
	ldr	r2, [r5, #36]	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r3, [r4, #4]	@ pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, r3	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	bne	.L463	@,
	ldr	r3, [r5, #40]	@ _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r0, [r4, #8]	@ pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	subs	r0, r3, r0	@ D.36338, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	mvnne	r0, #0	@ D.36338,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L463:
	mvn	r0, #0	@ D.36338,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L467:
	.align	2
.L466:
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
	ldr	r3, .L478	@ tmp138,
	ldr	r2, .L478+4	@ tmp137,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r3]	@ D.36357, g_chipID
	ldr	r2, [r2, r0, asl #2]	@ D.36354, s_pstVfmwChan
	cmp	r3, #16	@ D.36357,
	ldr	ip, [r2, #1456]	@ ChanMaxWidth, _5->stSynExtraData.stChanOption.s32MaxWidth
	ldr	lr, [r2, #1460]	@ ChanMaxHeight, _5->stSynExtraData.stChanOption.s32MaxHeight
	bhi	.L474	@,
	mov	r2, #1	@ tmp139,
	movw	r0, #36832	@ tmp140,
	mov	r3, r2, asl r3	@ D.36356, tmp139,
	bfi	r0, r2, #16, #16	@ tmp140, tmp139,,
	ands	r0, r3, r0	@ D.36356, D.36356, tmp140
	bne	.L470	@,
	tst	r3, #31	@ D.36356,
	beq	.L474	@,
	ldr	r3, .L478+8	@ tmp143,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	ip, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L471	@,
	ldr	r3, .L478+12	@ tmp145,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	lr, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ldrle	pc, [sp], #4	@
.L471:
	ldr	r0, [r1]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	subs	r0, r0, #18	@ ret, pstCfg_12(D)->eVidStd,
	mvnne	r0, #0	@ ret,
	ldr	pc, [sp], #4	@
.L470:
	ldr	r3, .L478+8	@ tmp150,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	ip, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L472	@,
	ldr	r3, .L478+12	@ tmp152,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	lr, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L476	@,
.L472:
	ldr	r0, [r1]	@ D.36355, pstCfg_12(D)->eVidStd
	cmp	r0, #18	@ D.36355,
	cmpne	r0, #0	@, D.36355,
	bic	r0, r0, #2	@ D.36355, D.36355,
	movne	r3, #1	@ tmp158,
	moveq	r3, #0	@ tmp158,
	cmp	r0, #13	@ D.36355,
	moveq	r0, #0	@, D.36355
	andne	r0, r3, #1	@,, D.36355, tmp158
	rsb	r0, r0, #0	@ ret, D.36355
	ldr	pc, [sp], #4	@
.L476:
	mov	r0, #0	@ ret,
	ldr	pc, [sp], #4	@
.L474:
	mvn	r0, #0	@ ret,
	ldr	pc, [sp], #4	@
.L479:
	.align	2
.L478:
	.word	g_chipID
	.word	.LANCHOR0
	.word	g_ChipMaxWidth
	.word	g_ChipMaxHeight
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L486	@ tmp122,
	ldr	r3, [r3, r0, asl #2]	@ D.36361, s_pstVfmwChan
	cmp	r3, #0	@ D.36361,
	beq	.L483	@,
	ldr	r3, [r3, #880]	@ D.36362, _5->eVidStd
	cmp	r3, #4	@ D.36362,
	cmpne	r3, #14	@, D.36362,
	beq	.L483	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SM_SeekPts	@
	adds	r0, r0, #0	@ D.36363,,
	movne	r0, #1	@ D.36363,
	rsb	r0, r0, #0	@ D.36360, D.36363
	ldmfd	sp!, {r4, pc}	@
.L483:
	mvn	r0, #0	@ D.36360,
	bx	lr	@
.L487:
	.align	2
.L486:
	.word	.LANCHOR0
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
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	mov	r0, sp	@,
	bl	__memzero	@
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L497	@,
	ldr	r4, [sp]	@ D.36367, stCfgInfo.eVidStd
	ldr	r6, .L503	@ tmp129,
	cmp	r4, #0	@ D.36367,
	beq	.L502	@,
	sub	r3, r4, #6	@ D.36368, D.36367,
	ldr	r2, [r6, #3604]	@ D.36369, g_DSPState
	clz	r3, r3	@ D.36368, D.36368
	mov	r3, r3, lsr #5	@ D.36368, D.36368,
	cmp	r2, #1	@ D.36369,
	movne	r1, #0	@, tmp154
	andeq	r1, r3, #1	@,, tmp154, D.36368
	cmp	r1, #0	@ tmp154,
	bne	.L497	@,
	cmp	r2, #0	@ D.36369,
	movne	r3, #0	@, tmp164
	andeq	r3, r3, #1	@,, tmp164, D.36368
	cmp	r3, #0	@ tmp164,
	bne	.L494	@,
	mov	r4, r3	@ D.36367, tmp164
.L499:
	mov	r0, r4	@, D.36367
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L502:
	ldr	r3, [sp, #40]	@ stCfgInfo.s32LowdlyEnable, stCfgInfo.s32LowdlyEnable
	ldr	r2, [r6, #3604]	@ D.36369, g_DSPState
	sub	r1, r3, #1	@ D.36368, stCfgInfo.s32LowdlyEnable,
	clz	r1, r1	@ D.36368, D.36368
	cmp	r2, #2	@ D.36369,
	cmpeq	r3, #1	@, stCfgInfo.s32LowdlyEnable,
	mov	r1, r1, lsr #5	@ D.36368, D.36368,
	beq	.L497	@,
	cmp	r2, #0	@ D.36369,
	movne	r2, #0	@, tmp159
	andeq	r2, r1, #1	@,, tmp159, D.36368
	cmp	r2, #0	@ tmp159,
	beq	.L499	@,
	bl	WriteHexFile	@
	add	r5, r6, r5, lsl #2	@ tmp139, tmp129, ChanID,
	mov	r3, #1	@ tmp141,
	mov	r0, r4	@, D.36367
	str	r3, [r5, #3604]	@ tmp141, g_DSPState
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L497:
	mvn	r4, #0	@ D.36367,
	b	.L499	@
.L494:
	add	r5, r6, r5, lsl #2	@ tmp143, tmp147, ChanID,
	mov	r0, r4	@, D.36367
	mov	r4, r1	@ D.36367, tmp154
	bl	WriteHexFile	@
	mov	r3, #2	@ tmp145,
	str	r3, [r5, #3604]	@ tmp145, g_DSPState
	b	.L499	@
.L504:
	.align	2
.L503:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L510	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	cmp	r3, #0	@ tmp118,
	beq	.L507	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SM_Reset	@
	adds	r0, r0, #0	@ D.36373,,
	movne	r0, #1	@ D.36373,
	rsb	r0, r0, #0	@ D.36372, D.36373
	ldmfd	sp!, {r4, pc}	@
.L507:
	mvn	r0, #0	@ D.36372,
	bx	lr	@
.L511:
	.align	2
.L510:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L518	@,
	ldr	r5, .L520	@ tmp122,
	ldr	r3, [r5]	@ D.36379, s_pstVfmwChan
	cmp	r3, #0	@ D.36379,
	beq	.L518	@,
	ldr	r3, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r3, #1	@ _6->s32IsOpen,
	bne	.L518	@,
	ldr	r0, .L520+4	@,
	mov	r4, r1	@ pImage, pImage
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5]	@ D.36379, s_pstVfmwChan
	cmp	r0, #0	@ D.36379,
	beq	.L515	@,
	ldr	r3, [r0, #4]	@ _9->s32IsOpen, _9->s32IsOpen
	cmp	r3, #1	@ _9->s32IsOpen,
	bne	.L515	@,
	add	r0, r0, #210944	@, D.36379,
	mov	r1, r4	@, pImage
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReceiveImage	@
	subs	r4, r0, #1	@ D.36378,,
	ldr	r0, .L520+4	@,
	mvnne	r4, #0	@ D.36378,
	bl	OSAL_SpinUnLockIRQ	@
.L513:
	mov	r0, r4	@, D.36378
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L518:
	mvn	r4, #0	@ D.36378,
	mov	r0, r4	@, D.36378
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L515:
	ldr	r0, .L520+4	@,
	mvn	r4, #0	@ D.36378,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L513	@
.L521:
	.align	2
.L520:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L528	@,
	ldr	r5, .L530	@ tmp125,
	ldr	r3, [r5]	@ D.36386, s_pstVfmwChan
	cmp	r3, #0	@ D.36386,
	beq	.L528	@,
	ldr	r3, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	subs	r3, r3, #1	@ tmp130, _6->s32IsOpen,
	movne	r3, #1	@ tmp130,
	cmp	r1, #0	@ pImage,
	orreq	r3, r3, #1	@,, tmp133, tmp130
	cmp	r3, #0	@ tmp133,
	bne	.L528	@,
	ldr	r0, .L530+4	@,
	mov	r4, r1	@ pImage, pImage
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5]	@ D.36386, s_pstVfmwChan
	cmp	r0, #0	@ D.36386,
	beq	.L525	@,
	ldr	r3, [r0, #4]	@ _10->s32IsOpen, _10->s32IsOpen
	cmp	r3, #1	@ _10->s32IsOpen,
	bne	.L525	@,
	add	r0, r0, #210944	@, D.36386,
	mov	r1, r4	@, pImage
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReleaseImage	@
	subs	r4, r0, #1	@ D.36385,,
	ldr	r0, .L530+4	@,
	mvnne	r4, #0	@ D.36385,
	bl	OSAL_SpinUnLockIRQ	@
.L523:
	mov	r0, r4	@, D.36385
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L525:
	ldr	r0, .L530+4	@,
	mvn	r4, #0	@ D.36385,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L523	@
.L528:
	mvn	r4, #0	@ D.36385,
	b	.L523	@
.L531:
	.align	2
.L530:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanId,
	beq	.L537	@,
.L536:
	mov	r0, #19	@ D.36392,
	bx	lr	@
.L537:
	ldr	r3, .L538	@ tmp115,
	ldr	r3, [r3]	@ D.36393, s_pstVfmwChan
	cmp	r3, #0	@ D.36393,
	beq	.L536	@,
	ldr	r2, [r3, #4]	@ _4->s32IsOpen, _4->s32IsOpen
	cmp	r2, #1	@ _4->s32IsOpen,
	bne	.L536	@,
	ldr	r0, [r3, #880]	@ D.36392, _4->eVidStd
	bx	lr	@
.L539:
	.align	2
.L538:
	.word	.LANCHOR0
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
	bne	.L545	@,
	ldr	r2, .L556	@ tmp119,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2]	@ D.36401, s_pstVfmwChan
	cmp	r5, #0	@ D.36401,
	moveq	r3, r5	@ D.36399, D.36401
	beq	.L541	@,
	ldr	r2, [r5, #4]	@ _14->s32IsOpen, _14->s32IsOpen
	cmp	r2, #1	@ _14->s32IsOpen,
	beq	.L554	@,
.L548:
	mov	r3, r0	@ D.36399, ChanId
.L541:
	mov	r0, r3	@, D.36399
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L545:
	mov	r3, #0	@ D.36399,
	mov	r0, r3	@, D.36399
	bx	lr	@
.L554:
	ldr	r2, [r5, #8]	@ _14->s32IsRun, _14->s32IsRun
	cmp	r2, #1	@ _14->s32IsRun,
	bne	.L548	@,
	ldr	r3, [r5, #880]	@ VidStd, _14->eVidStd
	cmp	r3, #0	@ VidStd,
	beq	.L543	@,
	cmp	r3, #3	@ VidStd,
	bne	.L550	@,
	add	r3, r5, #208896	@ tmp126, D.36401,
	ldr	r4, [r3, #2948]	@ pDecParam, _14->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	cmp	r4, #0	@ pDecParam,
	beq	.L550	@,
.L555:
	bl	OSAL_GetTimeInMs	@
	mov	r3, r4	@ D.36399, pDecParam
	str	r0, [r5, #28]	@, _14->u32timeLastDecParamReady
	mov	r0, r3	@, D.36399
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L543:
	add	r3, r5, #208896	@ tmp124, D.36401,
	ldr	r4, [r3, #3304]	@ pDecParam, _14->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	cmp	r4, #0	@ pDecParam,
	bne	.L555	@,
.L550:
	mov	r3, #0	@ D.36399,
	b	.L541	@
.L557:
	.align	2
.L556:
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
	subs	r2, r0, #0	@ ChanId, ChanId
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bne	.L561	@,
	ldr	r5, .L572	@ tmp124,
	ldr	r3, [r5]	@ D.36406, s_pstVfmwChan
	cmp	r3, #0	@ D.36406,
	beq	.L561	@,
	ldr	r1, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r1, #1	@ _5->s32IsOpen,
	beq	.L569	@,
.L561:
	mov	r4, #0	@ D.36405,
.L560:
	mov	r0, r4	@, D.36405
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L569:
	ldr	r7, [r3, #8]	@ D.36407, _5->s32IsRun
	cmp	r7, #1	@ D.36407,
	bne	.L561	@,
	mov	r6, r2	@ ChanId, ChanId
	bl	VCTRL_GetDecParam	@
	subs	r8, r0, #0	@ pDecParam,
	beq	.L570	@,
	ldr	r3, [r5]	@ D.36406, s_pstVfmwChan
	mov	r4, r6	@ D.36405, ChanId
	str	r6, [r3, #680]	@ ChanId, _16->s32CountNoDecparamFlag
	str	r6, [r3, #684]	@ ChanId, _16->u32NoDecparamStartTime
	b	.L560	@
.L570:
	ldr	r6, [r5]	@ D.36406, s_pstVfmwChan
	ldr	r4, [r6, #680]	@ D.36405, _10->s32CountNoDecparamFlag
	cmp	r4, #0	@ D.36405,
	beq	.L571	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5]	@ D.36406, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.36408, _23->u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.36408
	bls	.L564	@,
	rsb	r0, r2, r0	@ D.36408, D.36408, tmp
	cmp	r0, #40	@ D.36408,
	bls	.L561	@,
	str	r8, [r3, #680]	@ pDecParam, _23->s32CountNoDecparamFlag
	mov	r4, r7	@ D.36405, D.36407
	str	r8, [r3, #684]	@ pDecParam, _23->u32NoDecparamStartTime
	b	.L560	@
.L571:
	str	r7, [r6, #680]	@ D.36407, _10->s32CountNoDecparamFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #684]	@, _10->u32NoDecparamStartTime
	b	.L560	@
.L564:
	mov	r4, r7	@ D.36405, D.36407
	str	r8, [r3, #680]	@ pDecParam, _23->s32CountNoDecparamFlag
	str	r8, [r3, #684]	@ pDecParam, _23->u32NoDecparamStartTime
	b	.L560	@
.L573:
	.align	2
.L572:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanId,
	bne	.L579	@,
	ldr	r3, .L580	@ tmp125,
	ldr	r3, [r3]	@ D.36412, s_pstVfmwChan
	cmp	r3, #0	@ D.36412,
	beq	.L579	@,
	cmn	r3, #152	@ D.36412,
	cmpne	r1, #0	@, pstMemRec,
	beq	.L579	@,
	ldr	r2, [r3, #148]	@ _5->s32OneChanMem, _5->s32OneChanMem
	cmp	r2, #1	@ _5->s32OneChanMem,
	bne	.L579	@,
	ldr	r2, [r3, #160]	@ D.36414, MEM[(struct MEM_RECORD_S *)_5 + 152B].PhyAddr
	str	r2, [r1, #8]	@ D.36414, pstMemRec_8(D)->PhyAddr
	ldr	r2, [r3, #156]	@ D.36415, MEM[(struct MEM_RECORD_S *)_5 + 152B].VirAddr
	clz	r0, r2	@ D.36413, D.36415
	str	r2, [r1, #4]	@ D.36415, pstMemRec_8(D)->VirAddr
	ldr	r3, [r3, #164]	@ D.36414, MEM[(struct MEM_RECORD_S *)_5 + 152B].Length
	mov	r0, r0, lsr #5	@ D.36413, D.36413,
	rsb	r0, r0, #0	@ D.36411, D.36413
	str	r3, [r1, #12]	@ D.36414, pstMemRec_8(D)->Length
	bx	lr	@
.L579:
	mvn	r0, #0	@ D.36411,
	bx	lr	@
.L581:
	.align	2
.L580:
	.word	.LANCHOR0
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
	ldr	r3, .L587	@ tmp113,
	ldr	r3, [r3, r0, asl #2]	@ D.36420, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ VidStd, _4->eVidStd
	cmp	r2, #0	@ VidStd,
	beq	.L584	@,
	cmp	r2, #3	@ VidStd,
	addeq	r3, r3, #208896	@ tmp119, D.36420,
	moveq	r2, #0	@ tmp120,
	streq	r2, [r3, #2948]	@ tmp120, _4->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	bx	lr	@
.L584:
	add	r3, r3, #208896	@ tmp116, D.36420,
	str	r2, [r3, #3304]	@ VidStd, _4->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	bx	lr	@
.L588:
	.align	2
.L587:
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
	@ link register save eliminated.
	cmp	r0, #0	@ ChanId
	bne	.L595	@,
	ldr	r3, .L599	@ tmp120,
	ldr	r3, [r3]	@ D.36427, s_pstVfmwChan
	cmp	r3, #0	@ D.36427,
	beq	.L595	@,
	ldr	r2, [r3, #8]	@ _7->s32IsRun, _7->s32IsRun
	cmp	r2, #1	@ _7->s32IsRun,
	bne	.L595	@,
	ldr	r2, [r3, #880]	@ VidStd, _7->eVidStd
	cmp	r2, #0	@ VidStd,
	beq	.L591	@,
	cmp	r2, #3	@ VidStd,
	bne	.L598	@,
	add	r0, r3, #210944	@, D.36427,
	add	r0, r0, #896	@,,
	b	MPEG2DEC_GetImageBuffer	@
.L598:
	bx	lr	@
.L591:
	add	r0, r3, #210944	@, D.36427,
	add	r0, r0, #896	@,,
	b	H264DEC_GetImageBuffer	@
.L595:
	mvn	r0, #0	@ D.36426,
	bx	lr	@
.L600:
	.align	2
.L599:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L604	@,
	ldr	r3, .L605	@ tmp120,
	ldr	r3, [r3]	@ D.36434, s_pstVfmwChan
	ldr	r0, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	subs	r0, r0, #1	@ tmp125, _5->s32IsOpen,
	movne	r0, #1	@ tmp125,
	cmp	r1, #0	@ pArgs,
	orreq	r0, r0, #1	@,, tmp128, tmp125
	cmp	r0, #0	@ tmp128,
	bne	.L604	@,
	ldr	r2, [r1]	@ D.36435, *pArgs_7(D)
	str	r2, [r3, #1408]	@ D.36435, _5->stSynExtraData.s32FastForwardBackwardSpeed
	bx	lr	@
.L604:
	mvn	r0, #0	@ D.36433,
	bx	lr	@
.L606:
	.align	2
.L605:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	bne	.L609	@,
	ldr	r3, .L612	@ tmp120,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r3]	@ D.36440, s_pstVfmwChan
	ldr	r3, [r0, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	subs	r3, r3, #1	@ tmp125, _5->s32IsOpen,
	movne	r3, #1	@ tmp125,
	cmp	r1, #0	@ pArgs,
	movne	r4, r3	@, tmp128, tmp125
	orreq	r4, r3, #1	@,, tmp128, tmp125
	cmp	r4, #0	@ tmp128,
	bne	.L610	@,
	mov	r2, #20	@,
	add	r0, r0, #1424	@, D.36440,
	bl	memcpy	@
	mov	r0, r4	@ D.36439, tmp128
	ldmfd	sp!, {r4, pc}	@
.L609:
	mvn	r0, #0	@ D.36439,
	bx	lr	@
.L610:
	mvn	r0, #0	@ D.36439,
	ldmfd	sp!, {r4, pc}	@
.L613:
	.align	2
.L612:
	.word	.LANCHOR0
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
	ldr	r5, .L621	@ tmp141,
	ldr	r2, [r5, r0, asl #2]	@ tmp128, s_pstVfmwChan
	cmp	r2, #0	@ tmp128,
	beq	.L617	@,
	mov	r1, sp	@,
	mov	r4, r0	@ ChanID, ChanID
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L617	@,
	ldr	r3, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r3, #16	@ SmInstInfo.SegNum,
	bgt	.L618	@,
	ldr	r3, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r3, #524288	@ SmInstInfo.TotalSegSize,
	ble	.L617	@,
.L618:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	subs	r0, r0, #1	@ ret,,
	mvnne	r0, #0	@ ret,
	cmp	r0, #0	@ ret,
	bne	.L616	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, r4, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #28]	@ _18->u32timeLastDecParamReady, _18->u32timeLastDecParamReady
	rsb	r0, r3, r0	@ timePeriod, _18->u32timeLastDecParamReady,
	cmp	r0, #50	@ timePeriod,
	movls	r0, #0	@ D.36450,
	mvnhi	r0, #0	@ D.36450,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L617:
	mvn	r0, #0	@ D.36450,
.L616:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L622:
	.align	2
.L621:
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
	ldr	r3, .L624	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ _4->s32NoStreamFlag, _4->s32NoStreamFlag
	subs	r0, r0, #1	@, _4->s32NoStreamFlag,
	movne	r0, #1	@,
	bx	lr	@
.L625:
	.align	2
.L624:
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
	bne	.L632	@,
	ldr	r3, .L633	@ tmp120,
	ldr	r3, [r3]	@ D.36462, s_pstVfmwChan
	cmp	r3, #0	@ D.36462,
	beq	.L632	@,
	ldr	r2, [r3, #4]	@ _4->s32IsOpen, _4->s32IsOpen
	cmp	r2, #0	@ _4->s32IsOpen,
	beq	.L632	@,
	ldr	r2, [r3, #8]	@ _4->s32IsRun, _4->s32IsRun
	cmp	r2, #0	@ _4->s32IsRun,
	beq	.L632	@,
	ldr	r2, [r3, #12]	@ _4->s32Priority, _4->s32Priority
	cmp	r2, #0	@ _4->s32Priority,
	beq	.L632	@,
	ldr	r0, [r3, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r0, #19	@ _4->eVidStd,
	movne	r0, #0	@ D.36461,
	mvneq	r0, #0	@ D.36461,
	bx	lr	@
.L632:
	mvn	r0, #0	@ D.36461,
	bx	lr	@
.L634:
	.align	2
.L633:
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
	ldr	r6, [r0, #352]	@ D.36469, pCtx_3(D)->ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.36469, pCtx_3(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	ldr	r3, .L641	@ tmp122,
	str	r5, [r4]	@ pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3]	@ D.36472, s_pstVfmwChan
	cmp	r3, #0	@ D.36472,
	beq	.L636	@,
	add	r3, r3, #210944	@ D.36473, D.36472,
	add	r3, r3, #896	@ D.36473, D.36473,
	subs	r3, r4, r3	@ D.36474, pCtx, D.36473
	mvnne	r3, #0	@ D.36474,
	cmn	r3, #1	@ D.36474,
	str	r3, [r4, #360]	@ D.36474, pCtx_3(D)->ChanID
	mvneq	r0, #19	@ D.36468,
	movne	r0, #1	@ D.36468,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L636:
	mvn	r3, #0	@ tmp128,
	mvn	r0, #19	@ D.36468,
	str	r3, [r4, #360]	@ tmp128, pCtx_3(D)->ChanID
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L642:
	.align	2
.L641:
	.word	.LANCHOR0
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
	beq	.L644	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp125,
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp125, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp125, pImg_10->p_usrdat
.L644:
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
	beq	.L688	@,
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	beq	.L652	@,
	mov	r1, r0	@, PicBufID
	mov	r2, #0	@,
	mov	r0, r8	@, ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36499,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L652:
	ldr	r0, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pSrc,
	beq	.L689	@,
.L653:
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L688	@,
	str	r7, [r4, #176]	@ PicBufID, pLogic_27->image_id
	mov	r9, #0	@ tmp198,
	ldrd	r2, [r6, #8]	@ D.36502, pstUsrdecFrame,
	mov	r10, #1	@ tmp197,
	strd	r2, [r4]	@ D.36502, pLogic_27->SrcPts
	ldrd	r2, [r6, #8]	@ D.36502, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ D.36502, pLogic,
	ldrd	r2, [r6, #8]	@ D.36502, pstUsrdecFrame,
	strd	r2, [r4, #16]	@ D.36502, pLogic,
	ldrd	r2, [r6, #8]	@ D.36502, pstUsrdecFrame,
	str	r10, [r4, #68]	@ tmp197, pLogic_27->DispEnableFlag
	str	r9, [r4, #72]	@ tmp198, pLogic_27->DispFrameDistance
	strd	r2, [r4, #24]	@ D.36502, pLogic,
	str	r9, [r4, #76]	@ tmp198, pLogic_27->DistanceBeforeFirstFrame
	str	r9, [r4, #80]	@ tmp198, pLogic_27->GopNum
	ldr	r3, [r6, #28]	@ D.36500, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	str	r3, [r4, #88]	@ D.36500, pLogic_27->top_luma_phy_addr
	mov	r0, r3	@, D.36500
	str	r3, [r4, #120]	@ D.36500, pLogic_27->luma_2d_phy_addr
	str	r3, [r4, #104]	@ D.36500, pLogic_27->luma_phy_addr
	ldr	r3, [r6, #36]	@ D.36500, pstUsrdecFrame_15(D)->s32CbPhyAddr
	str	r3, [r4, #92]	@ D.36500, pLogic_27->top_chrom_phy_addr
	str	r3, [r4, #124]	@ D.36500, pLogic_27->chrom_2d_phy_addr
	str	r3, [r4, #108]	@ D.36500, pLogic_27->chrom_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r3, r0	@ D.36503,
	ldr	r0, [r4, #92]	@, pLogic_27->top_chrom_phy_addr
	str	r3, [r4, #48]	@ D.36503, pLogic_27->luma_2d_vir_addr
	str	r3, [r4, #32]	@ D.36503, pLogic_27->luma_vir_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #88]	@ pLogic_27->top_luma_phy_addr, pLogic_27->top_luma_phy_addr
	ldr	r3, [r4, #92]	@ pLogic_27->top_chrom_phy_addr, pLogic_27->top_chrom_phy_addr
	movw	r1, #11296	@ tmp217,
	str	r0, [r4, #52]	@ __p, pLogic_27->chrom_2d_vir_addr
	mov	ip, r0	@ __p,
	str	r0, [r4, #36]	@ __p, pLogic_27->chrom_vir_addr
	cmp	r0, r9	@ __p,
	ldr	r0, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	add	r2, r2, r0	@ D.36500, pLogic_27->top_luma_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r2, [r4, #96]	@ D.36500, pLogic_27->btm_luma_phy_addr
	ldr	r2, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #128]	@ tmp198, pLogic_27->is_fld_save
	add	r3, r3, r2	@ D.36500, pLogic_27->top_chrom_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r3, [r4, #100]	@ D.36500, pLogic_27->btm_chrom_phy_addr
	ldr	r3, [r6, #20]	@ pstUsrdecFrame_15(D)->s32YWidth, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #144]	@ pstUsrdecFrame_15(D)->s32YWidth, pLogic_27->image_width
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	str	r3, [r4, #148]	@ pstUsrdecFrame_15(D)->s32YHeight, pLogic_27->image_height
	ldr	r3, [r6, #20]	@ D.36501, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #152]	@ D.36501, pLogic_27->disp_width
	mov	r2, r3, lsr r10	@ D.36501, D.36501,
	ldr	r3, [r6, #24]	@ D.36501, pstUsrdecFrame_15(D)->s32YHeight
	str	r2, [r4, #160]	@ D.36501, pLogic_27->disp_center_x
	str	r3, [r4, #156]	@ D.36501, pLogic_27->disp_height
	mov	r3, r3, lsr r10	@ D.36501, D.36501,
	str	r3, [r4, #164]	@ D.36501, pLogic_27->disp_center_y
	ldr	r3, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r10, [r4, #208]	@ tmp197, pLogic_27->chroma_idc
	str	r9, [r4, #168]	@ tmp198, pLogic_27->frame_rate
	str	r3, [r4, #172]	@ pstUsrdecFrame_15(D)->s32LumaStride, pLogic_27->image_stride
	str	r9, [r4, #180]	@ tmp198, pLogic_27->error_level
	str	r9, [r4, #256]	@ tmp198, pLogic_27->line_num_phy_addr
	str	r9, [r4, #56]	@ tmp198, pLogic_27->line_num_vir_addr
	str	r1, [r4, #140]	@ tmp217, pLogic_27->format
	beq	.L688	@,
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	cmp	r3, r10	@ pstUsrdecFrame_15(D)->s32YHeight,
	bgt	.L667	@,
	b	.L668	@
.L691:
	ldr	r2, [r4, #144]	@ __n, pLogic_27->image_width
	cmp	r2, #0	@ __n,
	bne	.L690	@,
.L658:
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	add	r9, r9, #1	@ y, y,
	ldr	r2, [r4, #172]	@ pLogic_27->image_stride, pLogic_27->image_stride
	add	r3, r3, r3, lsr #31	@ tmp250, pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight,
	add	ip, ip, r2	@ __p, __p, pLogic_27->image_stride
	cmp	r9, r3, asr #1	@ y, tmp250,
	bge	.L668	@,
.L667:
	ldr	r3, [r6]	@ D.36504, pstUsrdecFrame_15(D)->enFmt
	cmp	r3, #0	@ D.36504,
	beq	.L691	@,
	cmp	r3, #1	@ D.36504,
	beq	.L658	@,
	cmp	r3, #3	@ D.36504,
	beq	.L692	@,
	cmp	r3, #2	@ D.36504,
	beq	.L693	@,
	cmp	r3, #4	@ D.36504,
	bne	.L688	@,
	ldr	r3, [r4, #144]	@ pLogic_27->image_width, pLogic_27->image_width
	cmp	r3, #0	@ pLogic_27->image_width,
	movne	r1, r5	@ ivtmp.579, pSrc
	movne	r3, #0	@ x,
	beq	.L666	@,
.L665:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.36505, MEM[base: pSrc_184, index: _113, step: 2, offset: 0B]
	mov	r2, ip	@ D.36503, __p
	add	r1, r1, #4	@ ivtmp.579, ivtmp.579,
	strb	r0, [r2, r3]!	@ D.36505, MEM[base: __p_185, index: _113, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.36505, MEM[base: _114, offset: 1B]
	strb	r0, [r2, #1]	@ D.36505, MEM[base: _108, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_27->image_width, pLogic_27->image_width
	cmp	r3, r2	@ x, pLogic_27->image_width
	bcc	.L665	@,
.L666:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	b	.L658	@
.L690:
	mov	r0, ip	@, __p
	mov	r1, #128	@,
	bl	memset	@
	mov	ip, r0	@ __p,
	b	.L658	@
.L692:
	ldr	r3, [r4, #144]	@ pLogic_27->image_width, pLogic_27->image_width
	cmp	r3, #0	@ pLogic_27->image_width,
	movne	r1, r5	@ ivtmp.571, pSrc
	movne	r3, #0	@ x,
	beq	.L662	@,
.L661:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.36505, MEM[base: pSrc_184, index: _198, step: 2, offset: 0B]
	mov	r2, ip	@ D.36503, __p
	add	r1, r1, #4	@ ivtmp.571, ivtmp.571,
	strb	r0, [r2, r3]!	@ D.36505, MEM[base: __p_185, index: _198, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.36505, MEM[base: _196, offset: 1B]
	strb	r0, [r2, #1]	@ D.36505, MEM[base: _194, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_27->image_width, pLogic_27->image_width
	cmp	r3, r2	@ x, pLogic_27->image_width
	bcc	.L661	@,
.L662:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride
	b	.L658	@
.L668:
	mov	r5, #18	@ tmp221,
	mov	r2, #1	@,
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	str	r5, [r4, #300]	@ tmp221, pLogic_27->ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	ldr	r3, .L694	@ tmp222,
	str	r4, [sp]	@ pLogic,
	mov	r1, r5	@, tmp221
	mov	r0, r8	@, ChanID
	ldr	r2, [r3, r8, asl #2]	@ D.36507, s_pstVfmwChan
	add	r2, r2, #210944	@ tmp224, D.36507,
	add	r3, r2, #904	@, tmp224,
	add	r2, r2, #896	@, tmp224,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L656	@,
	mov	r0, #0	@ D.36499,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L693:
	mov	r1, r5	@, pSrc
	mov	r0, ip	@, __p
	ldr	r2, [r4, #144]	@, pLogic_27->image_width
	bl	memcpy	@
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	mov	ip, r0	@ __p,
	b	.L658	@
.L689:
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	bne	.L653	@,
.L688:
	mvn	r0, #0	@ D.36499,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L656:
	ldr	r1, [r4, #192]	@, pLogic_27->p_usrdat
	mov	r0, r8	@, ChanID
	bl	FreeUsdByDec	@
	mov	r5, #0	@ tmp253,
	ldr	r1, [r4, #196]	@, pLogic_27->p_usrdat
	mov	r0, r8	@, ChanID
	str	r5, [r4, #192]	@ tmp253, pLogic_27->p_usrdat
	bl	FreeUsdByDec	@
	str	r5, [r4, #196]	@ tmp253, pLogic_27->p_usrdat
	mov	r2, r5	@, tmp253
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	bl	FSP_SetDisplay	@
	b	.L688	@
.L695:
	.align	2
.L694:
	.word	.LANCHOR0
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, .L713	@ tmp126,
	ldr	r3, [r6, r0, asl #2]	@ D.36517, s_pstVfmwChan
	cmp	r3, #0	@ D.36517,
	beq	.L699	@,
	ldr	ip, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	ip, #18	@ _5->eVidStd,
	bne	.L699	@,
	ldr	r3, [r3, #820]	@ _5->s32UsrdecFrameNum, _5->s32UsrdecFrameNum
	cmp	r3, #2	@ _5->s32UsrdecFrameNum,
	ble	.L699	@,
	mov	r5, r1	@ pMem, pMem
	mov	r4, r0	@ ChanID, ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36519,
	bne	.L699	@,
	mov	r1, r0	@, D.36519
	mov	r0, r4	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r1, r0, #0	@ id,
	blt	.L699	@,
	mov	r0, r4	@, ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pLf
	beq	.L699	@,
	ldr	r3, [r0, #408]	@ D.36520, pLf_13->pstDecodeFs
	cmp	r3, #0	@ D.36520,
	beq	.L699	@,
	ldr	r2, [r0, #412]	@ pLf_13->pstDispOutFs, pLf_13->pstDispOutFs
	cmp	r2, #0	@ pLf_13->pstDispOutFs,
	beq	.L699	@,
	ldr	r2, [r0, #416]	@ pLf_13->pstTfOutFs, pLf_13->pstTfOutFs
	cmp	r2, #0	@ pLf_13->pstTfOutFs,
	beq	.L699	@,
	ldr	r3, [r3, #12]	@ D.36519, _14->PhyAddr
	mov	r0, #0	@ D.36516,
	str	r3, [r5]	@ D.36519, pMem_18(D)->PhyAddr
	ldr	r3, [r6, r4, asl #2]	@ tmp132, s_pstVfmwChan
	ldr	r3, [r3, #816]	@ D.36519, _20->s32UsrdecFrameSize
	str	r3, [r5, #8]	@ D.36519, pMem_18(D)->Length
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L699:
	mvn	r0, #0	@ D.36516,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L714:
	.align	2
.L713:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L721	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ D.36524, s_pstVfmwChan
	cmp	r1, #0	@ pUsrdecFrame,
	cmpne	r3, #0	@, D.36524,
	beq	.L718	@,
	ldr	ip, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	ip, #18	@ _5->eVidStd,
	bne	.L718	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, #56	@,
	mov	r5, r1	@ pUsrdecFrame, pUsrdecFrame
	mov	r4, r0	@ ChanID, ChanID
	add	r0, r3, #824	@, D.36524,
	bl	memcpy	@
	mov	r1, r5	@, pUsrdecFrame
	mov	r0, r4	@, ChanID
	bl	VDH_PutUsrdecFrame	@
	adds	r0, r0, #0	@ D.36528,,
	movne	r0, #1	@ D.36528,
	rsb	r0, r0, #0	@ D.36523, D.36528
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L718:
	mvn	r0, #0	@ D.36523,
	bx	lr	@
.L722:
	.align	2
.L721:
	.word	.LANCHOR0
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
	ldr	r3, .L732	@ tmp119,
	ldr	r1, [r3, r0, asl #2]	@ D.36536, s_pstVfmwChan
	cmp	r1, #0	@ D.36536,
	bxeq	lr	@
	ldr	r3, [r1, #880]	@ D.36537, _4->eVidStd
	cmp	r3, #3	@ D.36537,
	beq	.L725	@,
	cmp	r3, #18	@ D.36537,
	beq	.L726	@,
	cmp	r3, #0	@ D.36537,
	bxne	lr	@
	add	r0, r1, #210944	@, D.36536,
	add	r1, r1, #888	@, D.36536,
	add	r0, r0, #896	@,,
	b	H264DEC_Init	@
.L726:
	add	r0, r1, #210944	@, D.36536,
	add	r1, r1, #888	@, D.36536,
	add	r0, r0, #896	@,,
	b	USERDEC_Init	@
.L725:
	add	r0, r1, #210944	@, D.36536,
	add	r1, r1, #888	@, D.36536,
	add	r0, r0, #896	@,,
	b	MPEG2DEC_Init	@
.L733:
	.align	2
.L732:
	.word	.LANCHOR0
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetMemSize_onFramePath
	.type	VCTRL_GetMemSize_onFramePath, %function
VCTRL_GetMemSize_onFramePath:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r1, #64]	@ D.36545, pChanOption_4(D)->s32SlotWidth
	cmp	r0, #0	@ D.36545,
	beq	.L737	@,
	ldr	r3, [r1, #68]	@ D.36545, pChanOption_4(D)->s32SlotHeight
	cmp	r3, #0	@ D.36545,
	beq	.L737	@,
	mul	r3, r3, r0	@ D.36545, D.36545, D.36545
	ldr	ip, [r1, #60]	@ pChanOption_4(D)->s32DisplayFrameNum, pChanOption_4(D)->s32DisplayFrameNum
	movw	r0, #34688	@ tmp128,
	mov	r1, #0	@ tmp127,
	movt	r0, 7	@ tmp128,
	str	r1, [r2, #4]	@ tmp127, pDetailMemSize_13(D)->ScdDetailMem
	str	r0, [r2, #8]	@ tmp128, pDetailMemSize_13(D)->ChanCtxDetailMem
	mov	r0, r1	@ D.36544, tmp127
	str	r1, [r2, #12]	@ tmp127, pDetailMemSize_13(D)->PmvDetailMem
	mla	r3, ip, r3, r3	@ D.36545, pChanOption_4(D)->s32DisplayFrameNum, D.36545, D.36545
	mov	r3, r3, asl #1	@ D.36545, D.36545,
	str	r3, [r2]	@ D.36545, pDetailMemSize_13(D)->VdhDetailMem
	bx	lr	@
.L737:
	mvn	r0, #0	@ D.36544,
	bx	lr	@
	.fnend
	.size	VCTRL_GetMemSize_onFramePath, .-VCTRL_GetMemSize_onFramePath
	.align	2
	.global	VCTRL_VarifyOption_onDecode
	.type	VCTRL_VarifyOption_onDecode, %function
VCTRL_VarifyOption_onDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]	@ pChanOption_3(D)->s32MaxRefFrameNum, pChanOption_3(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_3(D)->s32MaxRefFrameNum,
	blt	.L746	@,
	ldr	r3, [r0, #12]	@ pChanOption_3(D)->s32MaxWidth, pChanOption_3(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_3(D)->s32MaxWidth,
	ble	.L746	@,
	ldr	r3, [r0, #16]	@ pChanOption_3(D)->s32MaxHeight, pChanOption_3(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_3(D)->s32MaxHeight,
	ble	.L746	@,
	ldr	r3, [r0, #56]	@ pChanOption_3(D)->s32SCDBufSize, pChanOption_3(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_3(D)->s32SCDBufSize,
	blt	.L746	@,
	ldr	r3, [r0, #44]	@ pChanOption_3(D)->s32SupportH264, pChanOption_3(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_3(D)->s32SupportH264,
	beq	.L747	@,
	mov	r0, #0	@ D.36548,
	bx	lr	@
.L747:
	ldr	r3, [r0, #20]	@ pChanOption_3(D)->s32MaxSliceNum, pChanOption_3(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_3(D)->s32MaxSliceNum,
	ble	.L746	@,
	ldr	r3, [r0, #24]	@ pChanOption_3(D)->s32MaxSpsNum, pChanOption_3(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_3(D)->s32MaxSpsNum,
	ble	.L746	@,
	ldr	r0, [r0, #28]	@ pChanOption_3(D)->s32MaxPpsNum, pChanOption_3(D)->s32MaxPpsNum
	cmp	r0, #0	@ pChanOption_3(D)->s32MaxPpsNum,
	movgt	r0, #0	@ D.36548,
	mvnle	r0, #0	@ D.36548,
	bx	lr	@
.L746:
	mvn	r0, #0	@ D.36548,
	bx	lr	@
	.fnend
	.size	VCTRL_VarifyOption_onDecode, .-VCTRL_VarifyOption_onDecode
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L752	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ FrmNum, FrmNum
	ldr	ip, [ip, #100]	@ D.36554, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.36554,
	mvneq	r0, #0	@ D.36553,
	beq	.L749	@,
	mov	r0, r1	@ Width, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.36554
.L749:
	mul	r4, r4, r0	@ D.36555, FrmNum, D.36553
	str	r4, [r5]	@ D.36555, *pChanPmvSize_11(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L753:
	.align	2
.L752:
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
	subs	r8, r0, #0	@ D.36558,
	bne	.L760	@,
	ldr	r3, [r4, #40]	@ pChanOption_7(D)->s32SupportBFrame, pChanOption_7(D)->s32SupportBFrame
	ldr	r6, [r4, #32]	@ D.36558, pChanOption_7(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_7(D)->s32SupportBFrame,
	moveq	r10, #1	@ PmvNum,
	addeq	r7, r6, r10	@ D.36558, D.36558,
	bne	.L767	@,
.L758:
	ldr	r9, .L769	@ tmp179,
	ldr	r0, [r4, #12]	@ D.36559, pChanOption_7(D)->s32MaxWidth
	ldr	fp, [r4, #60]	@ D.36559, pChanOption_7(D)->s32DisplayFrameNum
	ldr	r3, [r9, #100]	@ D.36562, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	ldr	r1, [r4, #16]	@ D.36559, pChanOption_7(D)->s32MaxHeight
	cmp	r3, #0	@ D.36562,
	mvneq	r0, #0	@ D.36558,
	beq	.L759	@,
	blx	r3	@ D.36562
.L759:
	mul	r7, r7, r0	@ ChanPmvSize, D.36558, D.36558
	str	r7, [r5, #12]	@ ChanPmvSize, pDetailMemSize_22(D)->PmvDetailMem
	ldr	ip, [r9, #36]	@ D.36560, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36560,
	beq	.L760	@,
	ldr	r3, [r4, #16]	@ pChanOption_7(D)->s32MaxHeight, pChanOption_7(D)->s32MaxHeight
	mov	r0, #16	@ tmp155,
	ldr	r2, [r4, #12]	@ pChanOption_7(D)->s32MaxWidth, pChanOption_7(D)->s32MaxWidth
	add	r1, sp, #24	@ tmp156,,
	str	r0, [sp, #20]	@ tmp155,
	add	r6, r6, fp	@ FrameNum, D.36558, D.36559
	str	r1, [sp, #16]	@ tmp156,
	mvn	r0, #0	@ tmp157,
	mov	r1, #0	@ tmp158,
	str	r0, [sp, #12]	@ tmp157,
	str	r1, [sp, #8]	@ tmp158,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ FrameNum,
	mvn	r1, #-2147483648	@,
	str	r10, [sp]	@ PmvNum,
	blx	ip	@ D.36560
	cmp	r0, #0	@,
	bne	.L760	@,
	ldr	r3, [sp, #28]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.36559, MemArrange.TotalMemUsed,
	str	r3, [r5]	@ D.36559, pDetailMemSize_22(D)->VdhDetailMem
	ldr	r3, [r4, #56]	@ pChanOption_7(D)->s32SCDBufSize, pChanOption_7(D)->s32SCDBufSize
	add	r3, r3, #32768	@ D.36559, pChanOption_7(D)->s32SCDBufSize,
	str	r3, [r5, #4]	@ D.36559, pDetailMemSize_22(D)->ScdDetailMem
	ldr	r3, [r4, #44]	@ D.36559, pChanOption_7(D)->s32SupportH264
	cmp	r3, #0	@ D.36559,
	beq	.L768	@,
	ldr	lr, [r4, #24]	@ pChanOption_7(D)->s32MaxSpsNum, pChanOption_7(D)->s32MaxSpsNum
	mov	r0, #4000	@ tmp170,
	ldr	r2, [r4, #20]	@ pChanOption_7(D)->s32MaxSliceNum, pChanOption_7(D)->s32MaxSliceNum
	movw	r3, #4060	@ tmp167,
	ldr	r1, [r4, #28]	@ pChanOption_7(D)->s32MaxPpsNum, pChanOption_7(D)->s32MaxPpsNum
	mov	ip, #2208	@ tmp176,
	mul	r0, r0, lr	@ D.36561, tmp170, pChanOption_7(D)->s32MaxSpsNum
	mla	r3, r3, r2, r0	@ D.36561, tmp167, pChanOption_7(D)->s32MaxSliceNum, D.36561
	mov	r0, r8	@, D.36558
	add	r3, r3, #491520	@ D.36561, D.36561,
	add	r3, r3, #1920	@ D.36561, D.36561,
	mla	r3, ip, r1, r3	@ D.36561, tmp176, pChanOption_7(D)->s32MaxPpsNum, D.36561
	str	r3, [r5, #8]	@ D.36561, pDetailMemSize_22(D)->ChanCtxDetailMem
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L767:
	add	r3, r6, #1	@ PmvNum, D.36558,
	cmp	r3, #17	@ PmvNum,
	mov	r7, r3	@ D.36558, PmvNum
	movlt	r10, r3	@ PmvNum, PmvNum
	movge	r10, #17	@ PmvNum,
	b	.L758	@
.L768:
	mov	r8, r3	@ D.36558, D.36559
	movw	r2, #34688	@ tmp164,
	movt	r2, 7	@ tmp164,
	mov	r0, r8	@, D.36558
	str	r2, [r5, #8]	@ tmp164, pDetailMemSize_22(D)->ChanCtxDetailMem
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L760:
	mvn	r8, #0	@ D.36558,
	mov	r0, r8	@, D.36558
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L770:
	.align	2
.L769:
	.word	g_vdm_hal_fun_ptr
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
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	beq	.L777	@,
	ldr	r4, .L789	@ tmp138,
	ldr	ip, [r1, #32]	@ pChanOption_8(D)->s32MaxRefFrameNum, pChanOption_8(D)->s32MaxRefFrameNum
	ldr	lr, [r1, #60]	@ pChanOption_8(D)->s32DisplayFrameNum, pChanOption_8(D)->s32DisplayFrameNum
	ldr	r5, [r4, #3608]	@ extra_ref, extra_ref
	ldr	r4, [r4, #3612]	@ extra_disp, extra_disp
	add	ip, ip, r5	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum, extra_ref
	cmp	ip, #16	@ TempRefNum,
	add	lr, lr, r4	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum, extra_disp
	movge	ip, #16	@ TempRefNum,
	orrs	r4, ip, lr	@ tmp169, TempRefNum, TempDispNum
	bmi	.L773	@,
	clz	r3, r3	@ tmp159, flag
	cmp	r0, #25	@ eCapLevel,
	str	ip, [r1, #32]	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum
	mov	r3, r3, lsr #5	@ tmp159, tmp159,
	moveq	r3, #0	@ tmp159,
	cmp	r3, #0	@ tmp159,
	str	lr, [r1, #60]	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum
	bne	.L773	@,
.L777:
	ldr	r3, [r1, #4]	@ D.36568, pChanOption_8(D)->Purpose
	cmp	r3, #2	@ D.36568,
	bhi	.L773	@,
	beq	.L787	@,
	cmp	r3, #1	@ D.36568,
	beq	.L788	@,
.L773:
	mvn	r0, #0	@ D.36565,
	ldmfd	sp!, {r4, r5, pc}	@
.L787:
	ldr	r0, [r1, #64]	@ D.36566, pChanOption_8(D)->s32SlotWidth
	cmp	r0, #0	@ D.36566,
	beq	.L773	@,
	ldr	r3, [r1, #68]	@ D.36566, pChanOption_8(D)->s32SlotHeight
	cmp	r3, #0	@ D.36566,
	beq	.L773	@,
	mul	r3, r3, r0	@ D.36566, D.36566, D.36566
	ldr	ip, [r1, #60]	@ pChanOption_8(D)->s32DisplayFrameNum, pChanOption_8(D)->s32DisplayFrameNum
	movw	r0, #34688	@ tmp166,
	mov	r1, #0	@ tmp165,
	movt	r0, 7	@ tmp166,
	str	r1, [r2, #4]	@ tmp165, pDetailMemSize_26(D)->ScdDetailMem
	str	r0, [r2, #8]	@ tmp166, pDetailMemSize_26(D)->ChanCtxDetailMem
	mov	r0, r1	@ D.36565, tmp165
	str	r1, [r2, #12]	@ tmp165, pDetailMemSize_26(D)->PmvDetailMem
	mla	r3, ip, r3, r3	@ D.36566, pChanOption_8(D)->s32DisplayFrameNum, D.36566, D.36566
	mov	r3, r3, asl #1	@ D.36566, D.36566,
	str	r3, [r2]	@ D.36566, pDetailMemSize_26(D)->VdhDetailMem
	ldmfd	sp!, {r4, r5, pc}	@
.L788:
	ldmfd	sp!, {r4, r5, lr}	@
	b	VCTRL_GetMemSize_onDecode	@
.L790:
	.align	2
.L789:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0, asl #2	@ tmp301, eCapLevel,
	ldr	lr, .L816	@ tmp303,
	mov	r5, r0, asl #5	@ tmp302, eCapLevel,
	rsb	r3, r4, r5	@ tmp165, tmp301, tmp302
	sub	ip, r0, #18	@ tmp189, eCapLevel,
	add	r3, lr, r3	@ tmp166, tmp303, tmp165
	.pad #452
	sub	sp, sp, #452	@,,
	ldr	fp, [r3, #12]	@ nMinFrame, CapItem
	ldr	r9, [r3, #16]	@ nMiddleFrame, CapItem
	ldr	r10, [r3, #20]	@ nFluentFrame, CapItem
	ldr	r6, [r3, #8]	@ nPmv, CapItem
	cmp	ip, #7	@ tmp189,
	ldrls	pc, [pc, ip, asl #2]	@ tmp189
	b	.L792	@
.L794:
	.word	.L803
	.word	.L803
	.word	.L803
	.word	.L803
	.word	.L803
	.word	.L795
	.word	.L795
	.word	.L795
.L803:
	mov	ip, #3	@ MinDnrFspNum,
.L793:
	ldr	r7, .L816+4	@ tmp300,
	rsb	ip, ip, fp	@ s32MaxRefFrameNum, MinDnrFspNum, nMinFrame
	cmp	ip, #15	@ s32MaxRefFrameNum,
	ldr	r3, [r7, #3608]	@ extra_ref, extra_ref
	bic	r3, r3, r3, asr #31	@ extra_ref_tmp, extra_ref
	str	r3, [r7, #3608]	@ extra_ref_tmp, extra_ref
	movgt	r3, #0	@ extra_ref_tmp,
	bgt	.L796	@,
	add	ip, ip, r3	@ D.36574, s32MaxRefFrameNum, extra_ref_tmp
	cmp	ip, #16	@ D.36574,
	rsbgt	ip, ip, #16	@ D.36574, D.36574,
	addgt	r3, r3, ip	@ extra_ref_tmp, extra_ref_tmp, D.36574
.L796:
	add	ip, r6, r3	@ TempPmv, nPmv, extra_ref_tmp
	ldr	r7, [r7, #3612]	@ D.36574, extra_disp
	cmp	ip, #0	@ TempPmv,
	ble	.L815	@,
	cmp	ip, #17	@ TempPmv,
	movge	ip, #17	@ nPmv,
	str	ip, [sp, #28]	@ nPmv, %sfp
.L798:
	cmp	r0, #23	@ eCapLevel,
	bhi	.L799	@,
	add	r3, r3, r7	@ D.36574, extra_ref_tmp, D.36574
	add	ip, r3, fp	@ nMinFrame, D.36574, nMinFrame
	add	r6, r9, r3	@ nMiddleFrame, nMiddleFrame, D.36574
	cmp	ip, #0	@ nMinFrame,
	cmpgt	r6, #0	@, nMiddleFrame,
	add	r3, r10, r3	@ nFluentFrame, nFluentFrame, D.36574
	movle	r7, #1	@ tmp199,
	movgt	r7, #0	@ tmp199,
	cmp	r3, #0	@ nFluentFrame,
	orrle	r7, r7, #1	@,, tmp205, tmp199
	cmp	r7, #0	@ tmp205,
	moveq	r10, r3	@ nFluentFrame, nFluentFrame
	moveq	r9, r6	@ nMiddleFrame, nMiddleFrame
	moveq	fp, ip	@ nMinFrame, nMinFrame
.L799:
	cmp	r0, #32	@ eCapLevel,
	bhi	.L802	@,
	ldr	r8, .L816+8	@ tmp206,
	ldr	ip, [r8, #36]	@ D.36576, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36576,
	beq	.L802	@,
	ldr	r3, [sp, #28]	@ nPmv, %sfp
	rsb	r4, r4, r5	@ tmp211, tmp301, tmp302
	add	r5, lr, r4	@ tmp212, tmp303, tmp211
	str	fp, [sp, #4]	@ nMinFrame,
	mov	r0, #0	@ tmp225,
	mov	r6, r2	@ ScdMemSize, ScdMemSize
	str	r3, [sp]	@ nPmv,
	mov	r7, r1	@ VdmMemSize, VdmMemSize
	ldr	r2, [lr, r4]	@ tmp221, CapItem
	mov	r1, #16	@ tmp309,
	ldr	r3, [r5, #4]	@ tmp214, CapItem
	mvn	fp, #0	@ tmp224,
	str	r1, [sp, #20]	@ tmp309,
	add	r1, sp, #32	@ tmp310,,
	str	r0, [sp, #8]	@ tmp225,
	mov	r0, #1	@,
	str	r1, [sp, #16]	@ tmp310,
	mvn	r1, #-2147483648	@,
	str	fp, [sp, #12]	@ tmp224,
	blx	ip	@ D.36576
	cmp	r0, #0	@ ret
	bne	.L802	@,
	ldr	r3, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.36574, MemArrange.TotalMemUsed,
	str	r3, [r7]	@ D.36574, *VdmMemSize_46(D)
	ldr	r3, [r5, #24]	@ tmp236, CapItem
	add	r3, r3, #32768	@ D.36574, tmp236,
	str	r3, [r6]	@ D.36574, *ScdMemSize_50(D)
	ldr	ip, [r8, #36]	@ D.36576, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36576,
	beq	.L802	@,
	ldr	r2, .L816	@ tmp311,
	mov	lr, #16	@ tmp312,
	ldr	r3, [r5, #4]	@ tmp245, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r2, r4]	@ tmp252, CapItem
	str	r9, [sp, #4]	@ nMiddleFrame,
	ldr	r9, [sp, #28]	@ nPmv, %sfp
	str	lr, [sp, #20]	@ tmp312,
	add	lr, sp, #32	@ tmp313,,
	str	r0, [sp, #8]	@ ret,
	mov	r0, #1	@,
	str	lr, [sp, #16]	@ tmp313,
	str	fp, [sp, #12]	@ tmp224,
	str	r9, [sp]	@ nPmv,
	blx	ip	@ D.36576
	subs	lr, r0, #0	@ ret,
	bne	.L802	@,
	ldr	r3, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.36574, MemArrange.TotalMemUsed,
	str	r3, [r7, #4]	@ D.36574, MEM[(HI_S32 *)VdmMemSize_46(D) + 4B]
	ldr	r3, [r5, #24]	@ tmp267, CapItem
	add	r3, r3, #32768	@ D.36574, tmp267,
	str	r3, [r6, #4]	@ D.36574, MEM[(HI_S32 *)ScdMemSize_50(D) + 4B]
	ldr	ip, [r8, #36]	@ D.36576, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36576,
	beq	.L802	@,
	ldr	r3, .L816	@ tmp315,
	mvn	r1, #-2147483648	@,
	mov	r0, #1	@,
	ldr	r2, [r3, r4]	@ tmp283, CapItem
	mov	r4, #16	@ tmp316,
	ldr	r3, [r5, #4]	@ tmp276, CapItem
	str	r4, [sp, #20]	@ tmp316,
	add	r4, sp, #32	@ tmp317,,
	str	fp, [sp, #12]	@ tmp224,
	str	r4, [sp, #16]	@ tmp317,
	stmib	sp, {r10, lr}	@,,
	str	r9, [sp]	@ nPmv,
	blx	ip	@ D.36576
	cmp	r0, #0	@ ret
	bne	.L802	@,
	ldr	r3, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.36574, MemArrange.TotalMemUsed,
	str	r3, [r7, #8]	@ D.36574, MEM[(HI_S32 *)VdmMemSize_46(D) + 8B]
	ldr	r3, [r5, #24]	@ tmp298, CapItem
	add	r3, r3, #32768	@ D.36574, tmp298,
	str	r3, [r6, #8]	@ D.36574, MEM[(HI_S32 *)ScdMemSize_50(D) + 8B]
	add	sp, sp, #452	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L802:
	mvn	r0, #0	@ D.36573,
	add	sp, sp, #452	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L795:
	mov	ip, #1	@ MinDnrFspNum,
	b	.L793	@
.L792:
	mov	ip, #6	@ MinDnrFspNum,
	b	.L793	@
.L815:
	cmp	r6, #17	@ nPmv,
	movlt	ip, r6	@ nPmv, nPmv
	movge	ip, #17	@ nPmv,
	str	ip, [sp, #28]	@ nPmv, %sfp
	b	.L798	@
.L817:
	.align	2
.L816:
	.word	CapItem
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
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
	beq	.L819	@,
	ldr	r3, .L851	@ tmp141,
	ldr	r3, [r3, #32]	@ D.36583, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.36583,
	beq	.L846	@,
	mov	r0, #0	@,
	blx	r3	@ D.36583
	ldr	r0, [r4, #8]	@ D.36582, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	ldr	r1, [r4, #4]	@ D.36580, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
.L821:
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
.L819:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].Length
	ldr	r6, [r4, #24]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #20]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	bne	.L847	@,
.L822:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].Length
	ldr	r6, [r4, #40]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #36]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].VirAddr
	bne	.L848	@,
.L823:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].Length
	ldr	r6, [r4, #72]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #68]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].VirAddr
	bne	.L849	@,
.L824:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].Length
	ldr	r6, [r4, #56]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #52]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].VirAddr
	bne	.L850	@,
.L825:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #92]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].Length
	ldr	r6, [r4, #88]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #84]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].VirAddr
	beq	.L826	@,
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L826:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r2, .L851+4	@,
	ldr	r1, .L851+8	@,
	mov	r0, #70	@,
	bl	osal_free_irq	@
	ldr	r2, .L851+4	@,
	ldr	r1, .L851+12	@,
	mov	r0, #73	@,
	bl	osal_free_irq	@
	ldr	r2, .L851+4	@,
	ldr	r1, .L851+16	@,
	mov	r0, #93	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L850:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #48	@, pstDrvMem,
	bl	__memzero	@
	b	.L825	@
.L849:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #64	@, pstDrvMem,
	bl	__memzero	@
	b	.L824	@
.L848:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #32	@, pstDrvMem,
	bl	__memzero	@
	b	.L823	@
.L847:
	bl	SM_CloseSCDDrv	@
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, r4, r1	@, pstDrvMem,
	bl	__memzero	@
	b	.L822	@
.L846:
	mov	r1, r7	@ D.36580, VirAddr
	mov	r0, r6	@ D.36582, PhyAddr
	b	.L821	@
.L852:
	.align	2
.L851:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+3616
	.word	.LC5
	.word	.LC6
	.word	.LC7
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
	bne	.L854	@,
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
	bne	.L886	@,
	ldr	r5, .L888	@ tmp165,
	ldr	r3, [r5, #16]	@ D.36604, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.36604,
	beq	.L886	@,
	blx	r3	@ D.36604
	cmp	r0, #0	@,
	bne	.L886	@,
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
	bne	.L867	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #20600	@,
	mov	r2, r7	@, __p
	mov	r1, #4096	@,
	movt	r0, 4127	@,
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.36603,
	bne	.L867	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.36603
	add	r0, sp, #12	@ tmp211,,
	ldr	r2, .L888+4	@,
	mov	r1, #20	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.36604, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.36604,
	beq	.L863	@,
	blx	r3	@ D.36604
	subs	r2, r0, #0	@ Size,
	ble	.L863	@,
	str	r6, [sp]	@ D.36603,
	mov	r1, r6	@, D.36603
	add	r0, sp, #12	@ tmp212,,
	mov	r3, r4	@, pstDrvMem
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L867	@,
	ldr	r2, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.36607, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.36607,
	beq	.L867	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	blx	r3	@ D.36607
	subs	r5, r0, #0	@ D.36603,
	bne	.L867	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ __p, pstDrvMem,
	bl	get_scd_msg_size	@
	str	r5, [sp]	@ D.36603,
	mov	r1, r5	@, D.36603
	mov	r3, r6	@, __p
	mov	r2, r0	@,
	ldr	r0, .L888+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L886	@,
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
	bne	.L886	@,
	ldr	r5, .L888+12	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L888+16	@,
	mov	r0, #70	@,
	ldr	r1, .L888+20	@,
	str	r5, [sp]	@ tmp200,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L886	@,
	str	r5, [sp]	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L888+24	@,
	mov	r0, #73	@,
	ldr	r1, .L888+28	@,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.36603,
	bne	.L886	@,
	str	r5, [sp]	@ tmp200,
	mov	r2, #128	@,
	ldr	r3, .L888+32	@,
	mov	r0, #93	@,
	ldr	r1, .L888+36	@,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.36602
	bne	.L887	@,
.L874:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L887:
	bl	DNR_Close	@
	mov	r0, r7	@ D.36602, D.36603
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L886:
	mov	r0, r6	@, __p
.L885:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.36602,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L863:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L867:
	mov	r0, r7	@, __p
	b	.L885	@
.L854:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.36602,
	b	.L874	@
.L889:
	.align	2
.L888:
	.word	g_vdm_hal_fun_ptr
	.word	.LC8
	.word	.LC9
	.word	.LANCHOR0+3616
	.word	.LC5
	.word	VCTRL_Isr_0
	.word	.LC6
	.word	VCTRL_Scd_Isr
	.word	.LC7
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r5, .L924	@ tmp274,
	ldr	r4, [r5, #4]	@ D.36622, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.36622,
	bne	.L906	@,
	ldr	r7, .L924+4	@ tmp273,
	mov	r2, #1024	@,
	mov	r6, r0	@ event_report, event_report
	ldr	r0, .L924+8	@,
	str	r4, [sp, #4]	@ D.36622, p
	ldr	r1, [r7]	@, saved_command_line
	bl	strlcpy	@
	ldr	r1, .L924+12	@,
	ldr	r0, .L924+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.36623,
	str	r0, [sp, #4]	@ D.36623, p
	beq	.L922	@,
	ldr	r1, .L924+16	@,
	add	r0, sp, #4	@ tmp277,,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L908	@,
	add	r0, sp, #4	@ tmp278,,
	ldr	r1, .L924+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L895	@,
	mov	r2, r4	@, D.36622
	mov	r1, r4	@, D.36622
	bl	simple_strtol	@
	movw	r3, #5000	@ tmp174,
	movw	r2, #60536	@ tmp175,
	movt	r2, 65535	@ tmp175,
	cmp	r0, r3	@, tmp174
	movge	r0, r3	@ D.36622, tmp174
	cmp	r0, r2	@ D.36622, tmp175
	movlt	r0, r2	@ D.36622, tmp175
.L894:
	str	r0, [r5, #3608]	@ D.36622, extra_ref
.L895:
	mov	r2, #1024	@,
	ldr	r1, [r7]	@, saved_command_line
	ldr	r0, .L924+8	@,
	mov	r8, #0	@ tmp177,
	str	r8, [sp, #4]	@ tmp177, p
	bl	strlcpy	@
	ldr	r1, .L924+24	@,
	ldr	r0, .L924+8	@,
	bl	strstr	@
	ldr	r3, .L924	@ tmp180,
	cmp	r0, r8	@ D.36623,
	str	r0, [sp, #4]	@ D.36623, p
	beq	.L923	@,
	ldr	r1, .L924+16	@,
	add	r0, sp, #4	@ tmp279,,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L897	@,
	add	r0, sp, #4	@ tmp280,,
	ldr	r1, .L924+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L898	@,
	mov	r2, r8	@, tmp177
	mov	r1, r8	@, tmp2
	bl	simple_strtol	@
	movw	r2, #5000	@ tmp195,
	movw	r3, #60536	@ tmp196,
	movt	r3, 65535	@ tmp196,
	cmp	r0, r2	@, tmp195
	movlt	r4, r0	@ D.36622,
	movge	r4, r2	@ D.36622, tmp195
	cmp	r4, r3	@ D.36622, tmp196
	movlt	r4, r3	@ D.36622, tmp196
.L897:
	str	r4, [r5, #3612]	@ D.36622, extra_disp
.L898:
	ldr	r5, .L924+28	@ tmp275,
	mov	r3, #0	@ tmp198,
	str	r3, [sp, #4]	@ tmp198, p
	ldr	r4, [r5, #-3540]	@ D.36624, extra_cmd
	cmp	r4, r3	@ D.36624,
	beq	.L899	@,
	ldr	r3, .L924+32	@ tmp204,
	ubfx	r2, r4, #1, #1	@ tmp207, D.36624,,
	and	r1, r4, #1	@ tmp202, D.36624,
	ubfx	r4, r4, #2, #1	@ tmp212, D.36624,,
	strb	r1, [r5, #-3536]	@ tmp202, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp207, g_not_direct_8x8_inference_flag
	strb	r4, [r5, #-3535]	@ tmp212, g_not_allow_H264FullPictureRepair_flag
.L900:
	mov	r1, #152	@,
	ldr	r0, .L924+36	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L924	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L924+40	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	ldr	r3, .L924+28	@ tmp246,
	mov	r1, #75497472	@,
	ldreq	r2, .L924+44	@ tmp250,
	mov	r0, #-2013265920	@,
	ldr	r4, .L924	@ tmp251,
	streq	r2, [r3, #-3528]	@ tmp250, g_event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	mov	r1, #4	@,
	ldr	r0, .L924+48	@,
	bl	__memzero	@
	add	r0, r4, #52	@, tmp251,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L906	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	add	r0, r4, #248	@, tmp251,
	bl	OSAL_InitEvent	@
	ldr	r2, .L924+52	@,
	ldr	r1, .L924+56	@,
	add	r0, r4, #40	@, tmp251,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.36621,
	bne	.L907	@,
	add	r0, r4, #40	@, tmp251,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp268,
	str	r3, [r4, #4]	@ tmp268, s_VfmwCTrl.s32IsVCTRLOpen
.L892:
	mov	r0, r5	@, D.36621
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L899:
	ldr	r1, [r7]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L924+8	@,
	bl	strlcpy	@
	ldr	r1, .L924+60	@,
	ldr	r0, .L924+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.36623,
	str	r0, [sp, #4]	@ D.36623, p
	beq	.L900	@,
	ldr	r1, .L924+16	@,
	add	r0, sp, #4	@ tmp281,,
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r5, #-3540]	@ D.36624, extra_cmd
	beq	.L903	@,
	add	r0, sp, #4	@ tmp282,,
	ldr	r1, .L924+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L900	@,
	mov	r2, r4	@, D.36624
	mov	r1, r4	@, tmp2
	bl	simple_strtol	@
	str	r0, [r5, #-3540]	@ D.36624, extra_cmd
.L903:
	ldr	r3, .L924+32	@ tmp233,
	ubfx	r2, r0, #1, #1	@ tmp236, D.36624,,
	and	r1, r0, #1	@ tmp231, D.36624,
	ubfx	r0, r0, #2, #1	@ tmp241, D.36624,,
	strb	r1, [r5, #-3536]	@ tmp231, g_allow_B_before_P
	strb	r2, [r3, #64]	@ tmp236, g_not_direct_8x8_inference_flag
	strb	r0, [r5, #-3535]	@ tmp241, g_not_allow_H264FullPictureRepair_flag
	b	.L900	@
.L923:
	ldr	r4, [r3, #3612]	@ extra_disp, extra_disp
	movw	r2, #5000	@ tmp189,
	movw	r3, #60536	@ tmp190,
	cmp	r4, r2	@ extra_disp, tmp189
	movt	r3, 65535	@ tmp190,
	movge	r4, r2	@ D.36622, tmp189
	cmp	r4, r3	@ D.36622, tmp190
	movlt	r4, r3	@ D.36622, tmp190
	b	.L897	@
.L922:
	ldr	r3, [r5, #3608]	@ extra_ref, extra_ref
	movw	r1, #5000	@ tmp168,
	movw	r2, #60536	@ tmp169,
	cmp	r3, r1	@ extra_ref, tmp168
	movt	r2, 65535	@ tmp169,
	movlt	r0, r3	@ D.36622, extra_ref
	movge	r0, r1	@ D.36622, tmp168
	cmp	r0, r2	@ D.36622, tmp169
	movlt	r0, r2	@ D.36622, tmp169
	b	.L894	@
.L908:
	mov	r0, r4	@ D.36622, D.36622
	b	.L894	@
.L906:
	mvn	r5, #0	@ D.36621,
	mov	r0, r5	@, D.36621
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L907:
	add	r0, r4, #52	@, tmp251,
	mvn	r5, #0	@ D.36621,
	bl	CloseDrivers	@
	b	.L892	@
.L925:
	.align	2
.L924:
	.word	.LANCHOR0
	.word	saved_command_line
	.word	.LANCHOR0+3620
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	.LANCHOR0+4
	.word	.LANCHOR2-3532
	.word	VCTRL_EventReport
	.word	.LANCHOR0+3604
	.word	VFMW_CTRL_thread_proc
	.word	.LC15
	.word	.LC14
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ CurMode,
	beq	.L929	@,
	cmp	r2, r1	@ Threshould, StreamAmount
	movlt	r0, #3	@ CurMode,
	bx	lr	@
.L929:
	cmp	r2, #0	@ Threshould,
	add	r3, r2, #7	@ tmp117, Threshould,
	movlt	r2, r3	@ Threshould, tmp117
	cmp	r1, r2, asr #3	@ StreamAmount, Threshould,
	movlt	r0, #0	@ CurMode,
	bx	lr	@
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
	ldr	r3, .L933	@ tmp117,
	ldr	r3, [r3]	@ D.36640, s_pstVfmwChan
	cmp	r3, #0	@ D.36640,
	beq	.L932	@,
	add	r3, r3, #210944	@ D.36641, D.36640,
	add	r3, r3, #896	@ D.36641, D.36641,
	subs	r0, r0, r3	@ D.36638, pCtx, D.36641
	mvnne	r0, #0	@ D.36638,
	bx	lr	@
.L932:
	mvn	r0, #0	@ D.36638,
	bx	lr	@
.L934:
	.align	2
.L933:
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
	ldr	r3, .L942	@ tmp122,
	ldr	r3, [r3]	@ D.36648, s_pstVfmwChan
	cmp	r3, #0	@ D.36648,
	beq	.L940	@,
	ldr	r2, [r3, #176]	@ D.36646, _16->stChanMem_vdh.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.36646
	blt	.L938	@,
	ldr	r1, [r3, #180]	@ _16->stChanMem_vdh.Length, _16->stChanMem_vdh.Length
	add	r2, r2, r1	@ D.36646, D.36646, _16->stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, D.36646
	blt	.L941	@,
.L938:
	ldr	r2, [r3, #192]	@ D.36646, _16->stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.36646
	blt	.L940	@,
	ldr	r3, [r3, #196]	@ _16->stChanMem_scd.Length, _16->stChanMem_scd.Length
	add	r2, r2, r3	@ D.36646, D.36646, _16->stChanMem_scd.Length
	cmp	r0, r2	@ PhyAddr, D.36646
	movlt	r0, #0	@ D.36645,
	mvnge	r0, #0	@ D.36645,
	bx	lr	@
.L940:
	mvn	r0, #0	@ D.36645,
	bx	lr	@
.L941:
	mov	r0, #0	@ D.36645,
	bx	lr	@
.L943:
	.align	2
.L942:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r6, .L961	@ tmp160,
	ldr	r3, [r6, r0, asl #2]	@ D.36651, s_pstVfmwChan
	ldr	r2, [r3, #32]	@ D.36652, _8->stChanCfg.eVidStd
	sub	ip, r2, #2	@ D.36653, D.36652,
	cmp	r2, #6	@ D.36652,
	cmpne	ip, #1	@, D.36653,
	bls	.L945	@,
	ldrd	r4, [r1, #32]	@ D.36655, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp169,
	cmp	r5, r7	@ D.36655,
	cmpeq	r4, r6	@ D.36655, tmp169
	addne	r2, r3, #944	@ tmp218, D.36651,
	strned	r4, [r2]	@ D.36655, _8->stSynExtraData.pts
.L947:
	ldrd	r4, [r1, #48]	@ D.36655, pSegMan,
	add	r0, r3, #960	@ tmp220, D.36651,
	add	r2, r3, #976	@ tmp222, D.36651,
	strd	r4, [r0]	@ D.36655, _8->stSynExtraData.Usertag
	ldrd	r4, [r1, #56]	@ D.36655, pSegMan,
	strd	r4, [r2]	@ D.36655, _8->stSynExtraData.DispTime
	ldr	r2, [r1, #64]	@ D.36656, pSegMan_15(D)->CurrSeg.DispEnableFlag
	str	r2, [r3, #992]	@ D.36656, _8->stSynExtraData.DispEnableFlag
	ldr	r2, [r1, #68]	@ D.36656, pSegMan_15(D)->CurrSeg.DispFrameDistance
	str	r2, [r3, #996]	@ D.36656, _8->stSynExtraData.DispFrameDistance
	ldr	r2, [r1, #72]	@ D.36656, pSegMan_15(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r2, [r3, #1000]	@ D.36656, _8->stSynExtraData.DistanceBeforeFirstFrame
	ldr	r2, [r1, #76]	@ D.36656, pSegMan_15(D)->CurrSeg.GopNum
	str	r2, [r3, #1016]	@ D.36656, _8->stSynExtraData.GopNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L945:
	mov	r5, r0	@ ChanID, ChanID
	add	r0, r3, #1264	@, D.36651,
	mov	r4, r1	@ pSegMan, pSegMan
	add	r0, r0, #8	@,,
	mov	r1, r2	@, D.36652
	add	r2, r4, #8	@, pSegMan,
	bl	IsNewpicSeg	@
	ldr	r3, [r6, r5, asl #2]	@ D.36651, s_pstVfmwChan
	ldr	r2, [r3, #32]	@ _34->stChanCfg.eVidStd,
	cmp	r0, #0	@,
	beq	.L959	@,
	cmp	r2, #3	@ _53->stChanCfg.eVidStd,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r2, r3, #976	@ tmp241, D.36651,
	add	ip, r3, #992	@ tmp242, D.36651,
.L953:
	ldrd	r0, [r4, #32]	@ D.36655, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp210,
	cmp	r1, r7	@ D.36655,
	cmpeq	r0, r6	@ D.36655, tmp210
	addne	lr, r3, #960	@ tmp212, D.36651,
	strned	r0, [lr, #-8]	@ D.36655, tmp212,
.L952:
	ldrd	r0, [r4, #48]	@ D.36655, pSegMan,
	strd	r0, [r2, #-8]	@ D.36655, tmp241,
	ldrd	r0, [r4, #56]	@ D.36655, pSegMan,
	strd	r0, [ip, #-8]	@ D.36655, tmp242,
.L958:
	ldr	r2, [r4, #64]	@ D.36656, pSegMan_15(D)->CurrSeg.DispEnableFlag
	str	r2, [r3, #1004]	@ D.36656,
	ldr	r2, [r4, #68]	@ D.36656, pSegMan_15(D)->CurrSeg.DispFrameDistance
	str	r2, [r3, #1008]	@ D.36656,
	ldr	r2, [r4, #72]	@ D.36656, pSegMan_15(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r2, [r3, #1012]	@ D.36656,
	ldr	r2, [r4, #76]	@ D.36656, pSegMan_15(D)->CurrSeg.GopNum
	str	r2, [r3, #1020]	@ D.36656,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L959:
	cmp	r2, #3	@ _34->stChanCfg.eVidStd,
	beq	.L960	@,
	add	lr, r3, #960	@ tmp240, D.36651,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp205,
	ldrd	r0, [lr, #-8]	@ D.36655, tmp240,
	cmp	r1, r7	@ D.36655,
	cmpeq	r0, r6	@ D.36655, tmp205
	addne	r2, r3, #944	@ tmp207, D.36651,
	strned	r0, [r2]	@ D.36655, _34->stSynExtraData.pts
.L951:
	add	r2, r3, #976	@ tmp241, D.36651,
	mvn	r0, #0	@ tmp225,
	mvn	r1, #0	@,
	strd	r0, [lr, #-8]	@ tmp225, tmp240,
	ldrd	r0, [r2, #-8]	@ _34->stSynExtraData.NextUsertag, tmp241,
	add	ip, r3, #992	@ tmp242, D.36651,
	strd	r0, [lr]	@ _34->stSynExtraData.NextUsertag, _34->stSynExtraData.Usertag
	ldrd	r0, [ip, #-8]	@ _34->stSynExtraData.NextDispTime, tmp242,
	strd	r0, [r2]	@ _34->stSynExtraData.NextDispTime, _34->stSynExtraData.DispTime
	ldr	r5, [r3, #1004]	@ _34->stSynExtraData.NextDispEnableFlag, _34->stSynExtraData.NextDispEnableFlag
	ldr	lr, [r3, #1008]	@ _34->stSynExtraData.NextDispFrameDistance, _34->stSynExtraData.NextDispFrameDistance
	ldr	r0, [r3, #1012]	@ _34->stSynExtraData.NextDistanceBeforeFirstFrame, _34->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r1, [r3, #1020]	@ _34->stSynExtraData.NextGopNum, _34->stSynExtraData.NextGopNum
	str	r5, [r3, #992]	@ _34->stSynExtraData.NextDispEnableFlag, _34->stSynExtraData.DispEnableFlag
	str	lr, [r3, #996]	@ _34->stSynExtraData.NextDispFrameDistance, _34->stSynExtraData.DispFrameDistance
	str	r0, [r3, #1000]	@ _34->stSynExtraData.NextDistanceBeforeFirstFrame, _34->stSynExtraData.DistanceBeforeFirstFrame
	str	r1, [r3, #1016]	@ _34->stSynExtraData.NextGopNum, _34->stSynExtraData.GopNum
	b	.L953	@
.L960:
	add	r2, r3, #960	@ tmp178, D.36651,
	add	ip, r3, #976	@ tmp186, D.36651,
	add	r5, r3, #944	@ tmp176, D.36651,
	mvn	r6, #0	@ tmp182,
	ldrd	r0, [r2, #-8]	@ _34->stSynExtraData.NextPts, tmp178,
	mvn	r7, #0	@,
	add	lr, r3, #992	@ tmp191, D.36651,
	strd	r0, [r5]	@ _34->stSynExtraData.NextPts, _34->stSynExtraData.pts
	strd	r6, [r2, #-8]	@ tmp182, tmp178,
	ldrd	r0, [ip, #-8]	@ _34->stSynExtraData.NextUsertag, tmp186,
	strd	r0, [r2]	@ _34->stSynExtraData.NextUsertag, _34->stSynExtraData.Usertag
	ldrd	r0, [lr, #-8]	@ _34->stSynExtraData.NextDispTime, tmp191,
	strd	r0, [ip]	@ _34->stSynExtraData.NextDispTime, _34->stSynExtraData.DispTime
	ldr	r0, [r3, #1012]	@ _34->stSynExtraData.NextDistanceBeforeFirstFrame, _34->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r1, [r3, #1020]	@ _34->stSynExtraData.NextGopNum, _34->stSynExtraData.NextGopNum
	ldr	r6, [r3, #1004]	@ _34->stSynExtraData.NextDispEnableFlag, _34->stSynExtraData.NextDispEnableFlag
	ldr	r5, [r3, #1008]	@ _34->stSynExtraData.NextDispFrameDistance, _34->stSynExtraData.NextDispFrameDistance
	str	r0, [r3, #1000]	@ _34->stSynExtraData.NextDistanceBeforeFirstFrame, _34->stSynExtraData.DistanceBeforeFirstFrame
	str	r6, [r3, #992]	@ _34->stSynExtraData.NextDispEnableFlag, _34->stSynExtraData.DispEnableFlag
	str	r5, [r3, #996]	@ _34->stSynExtraData.NextDispFrameDistance, _34->stSynExtraData.DispFrameDistance
	str	r1, [r3, #1016]	@ _34->stSynExtraData.NextGopNum, _34->stSynExtraData.GopNum
	ldrd	r0, [r4, #32]	@ D.36655, pSegMan,
	strd	r0, [r2, #-8]	@ D.36655, tmp178,
	ldrd	r0, [r4, #48]	@ D.36655, pSegMan,
	strd	r0, [ip, #-8]	@ D.36655, tmp186,
	ldrd	r0, [r4, #56]	@ D.36655, pSegMan,
	strd	r0, [lr, #-8]	@ D.36655, tmp191,
	b	.L958	@
.L962:
	.align	2
.L961:
	.word	.LANCHOR0
	.fnend
	.size	DecChanProcessPts, .-DecChanProcessPts
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L973	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ tmp124, s_pstVfmwChan
	ldr	r1, [r3, #880]	@ D.36667, _5->eVidStd
	sub	r3, r1, #10	@ D.36668, D.36667,
	cmp	r3, #2	@ D.36668,
	bhi	.L964	@,
	ldr	r3, .L973+4	@ tmp126,
	ldr	r2, [r3, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r2, #1	@ D.36665, g_VdmCharacter,
	beq	.L972	@,
.L964:
	sub	r3, r1, #14	@ D.36667, D.36667,
	bics	r3, r3, #4	@ tmp139, D.36667,
	movne	r3, #1	@ tmp131,
	moveq	r3, #0	@ tmp131,
	cmp	r1, #4	@ D.36667,
	moveq	r3, #0	@, tmp136
	andne	r3, r3, #1	@,, tmp136, tmp131
	cmp	r3, #0	@ tmp136,
	beq	.L972	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r3, #1	@ D.36665,
	moveq	r3, #0	@ D.36665,
	mov	r0, r3	@, D.36665
	ldmfd	sp!, {r4, pc}	@
.L972:
	mov	r0, r3	@, D.36665
	bx	lr	@
.L974:
	.align	2
.L973:
	.word	.LANCHOR0
	.word	.LANCHOR2
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	bne	.L986	@,
	ldr	r5, .L998	@ tmp179,
	ldr	r3, [r5]	@ D.36674, s_pstVfmwChan
	cmp	r3, #0	@ D.36674,
	beq	.L986	@,
	ldr	r2, [r3, #8]	@ _10->s32IsRun, _10->s32IsRun
	cmp	r2, #1	@ _10->s32IsRun,
	bne	.L986	@,
	ldr	r4, [r3, #16]	@ D.36673, _10->s32StopSyntax
	cmp	r4, #0	@ D.36673,
	bne	.L986	@,
	str	r4, [r3, #672]	@ D.36673, _10->s32NoStreamFlag
	bl	OSAL_GetTimeInMs	@
	ldr	r6, .L998+4	@ tmp180,
	ldr	r2, .L998+8	@ tmp150,
	ldr	r3, [r6, #-3520]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36676, last_rec_pos_time, currtime
	mov	r7, r0	@ currtime,
	cmp	r3, r2	@ D.36676, g_TraceBsPeriod
	strhi	r0, [r6, #-3520]	@ currtime, last_rec_pos_time
	mov	r0, #0	@,
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.36675,
	beq	.L987	@,
	mov	r0, #0	@,
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L988	@,
	ldr	r3, [r5]	@ D.36674, s_pstVfmwChan
	add	r8, r3, #1024	@ pSegMan, D.36674,
	ldrb	r2, [r3, #1025]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_25 + 1024B].IsCurrSegWaitDec, MEM[(struct STREAM_SEG_PACKET_S *)_25 + 1024B].IsCurrSegWaitDec
	cmp	r2, #0	@ MEM[(struct STREAM_SEG_PACKET_S *)_25 + 1024B].IsCurrSegWaitDec,
	bne	.L978	@,
	ldr	r9, [r3, #1616]	@ _25->stSynExtraData.s32DSDWaitFlag, _25->stSynExtraData.s32DSDWaitFlag
	cmp	r9, #0	@ _25->stSynExtraData.s32DSDWaitFlag,
	beq	.L996	@,
.L978:
	mov	r1, r8	@, pSegMan
	mov	r0, #0	@,
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r5]	@ D.36674, s_pstVfmwChan
	mov	r0, r8	@, pSegMan
	add	r2, r3, #210944	@, D.36674,
	add	r2, r2, #896	@,,
	ldr	r1, [r3, #880]	@, _43->eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L997	@,
.L976:
	mov	r0, r4	@, D.36673
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L997:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L998+12	@ tmp175,
	ldr	r3, [r6, #-3512]	@ last_rec_pos_decparam_time, last_rec_pos_decparam_time
	ldr	ip, .L998+4	@ tmp172,
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.36676, last_rec_pos_decparam_time, currtime
	mov	r2, r0	@ currtime,
	cmp	r3, r1	@ D.36676, g_TraceFramePeriod
	bls	.L976	@,
	mov	r0, #0	@,
	str	r2, [ip, #-3512]	@ currtime, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	b	.L976	@
.L986:
	mvn	r4, #0	@ D.36673,
	mov	r0, r4	@, D.36673
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L996:
	add	r1, r8, #8	@, pSegMan,
	mov	r0, r9	@, _25->stSynExtraData.s32DSDWaitFlag
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L978	@,
	ldr	r2, .L998+16	@ tmp161,
	ldr	r3, [r6, #-3516]	@ last_rec_pos_report_time, last_rec_pos_report_time
	ldr	r1, .L998+4	@ tmp158,
	ldr	r2, [r2]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r3, r3, r7	@ D.36676, last_rec_pos_report_time, currtime
	cmp	r3, r2	@ D.36676, g_NoStreamReportPeriod
	bls	.L979	@,
	ldr	r3, [r1, #-3528]	@ D.36679, g_event_report
	cmp	r3, #0	@ D.36679,
	beq	.L980	@,
	mov	r2, r9	@, _25->stSynExtraData.s32DSDWaitFlag
	mov	r0, r9	@, tmp2
	mov	r1, #117	@,
	blx	r3	@ D.36679
.L980:
	str	r7, [r6, #-3516]	@ currtime, last_rec_pos_report_time
.L979:
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp167,
	mvn	r4, #3	@ D.36673,
	str	r2, [r3, #672]	@ tmp167, _39->s32NoStreamFlag
	b	.L976	@
.L988:
	mvn	r4, #2	@ D.36673,
	b	.L976	@
.L987:
	mov	r4, r0	@ D.36673, D.36675
	b	.L976	@
.L999:
	.align	2
.L998:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	g_TraceBsPeriod
	.word	g_TraceFramePeriod
	.word	g_NoStreamReportPeriod
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
	ldr	r5, .L1031	@ tmp151,
	mvn	r0, #0	@ ret,
	ldr	r6, .L1031+4	@ tmp152,
	mov	r7, #0	@ tmp154,
	ldr	r9, .L1031	@ tmp155,
	mov	r8, #1	@ tmp156,
	ldr	r3, [r5]	@ D.36691, s_pstVfmwChan
	cmp	r3, #0	@ D.36691,
	ldrne	r3, [r3, #12]	@ D.36690, _67->s32Priority
.L1002:
	cmp	r3, #0	@ D.36690,
	str	r7, [r6, #-3508]	@ tmp154, ChanPriTab
	str	r8, [r5, #48]	@ tmp156, s_VfmwCTrl.s32ThisChanIDPlus1
	mov	r3, #0	@ tmp128,
	ldr	r2, .L1031	@ tmp129,
	ble	.L1004	@,
	ldr	r2, [r9]	@ D.36691, s_pstVfmwChan
	cmp	r2, r3	@ D.36691,
	moveq	r3, r2	@ D.36690, D.36691
	beq	.L1002	@,
	ldr	r1, [r2, #8]	@ _28->s32IsRun, _28->s32IsRun
	cmp	r1, #1	@ _28->s32IsRun,
	bne	.L1002	@,
	ldr	r3, [r2, #52]	@ _28->stChanCfg.s32ChanStrmOFThr, _28->stChanCfg.s32ChanStrmOFThr
	cmp	r3, #0	@ _28->stChanCfg.s32ChanStrmOFThr,
	ble	.L1006	@,
	ldr	r0, [r2, #56]	@ _28->stChanCfg.s32DecMode, _28->stChanCfg.s32DecMode
	cmp	r0, #0	@ _28->stChanCfg.s32DecMode,
	beq	.L1027	@,
.L1006:
	mov	r4, #200	@ D.36689,
	b	.L1013	@
.L1028:
	subs	r4, r4, #1	@ D.36689, D.36689,
	beq	.L1026	@,
.L1013:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	beq	.L1028	@,
.L1026:
	ldr	r3, [r6, #-3508]	@ D.36690, ChanPriTab
	b	.L1002	@
.L1004:
	str	r3, [r2, #48]	@ tmp128, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1027:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1029	@,
.L1007:
	ldr	r3, [r5]	@ D.36691, s_pstVfmwChan
	ldr	r0, [sp, #12]	@ D.36692, stScdInstInfo.TotalRawSize
	ldr	r1, [r3, #896]	@ CurMode, _35->stSynExtraData.s32DecMode
	ldr	r2, [r3, #52]	@ D.36692, _35->stChanCfg.s32ChanStrmOFThr
	cmp	r1, #3	@ CurMode,
	beq	.L1030	@,
	cmp	r0, r2	@ D.36692, D.36692
	bgt	.L1010	@,
	cmp	r1, #0	@ CurMode,
	bne	.L1014	@,
.L1011:
	ldr	r2, [r3, #48]	@ D.36692, _35->stChanCfg.s32ChanErrThr
	str	r2, [r3, #892]	@ D.36692, _35->stSynExtraData.s32OutErrThr
	str	r2, [r3, #888]	@ D.36692, _35->stSynExtraData.s32RefErrThr
	b	.L1006	@
.L1029:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L1007	@
.L1030:
	cmp	r2, #0	@ D.36692,
	add	r1, r2, #7	@ tmp140, D.36692,
	movlt	r2, r1	@ D.36692, tmp140
	cmp	r0, r2, asr #3	@ D.36692, D.36692,
	blt	.L1009	@,
.L1010:
	mov	r2, #3	@ tmp150,
	str	r2, [r3, #896]	@ tmp150, _35->stSynExtraData.s32DecMode
.L1014:
	str	r7, [r3, #892]	@ tmp154, _35->stSynExtraData.s32OutErrThr
	str	r7, [r3, #888]	@ tmp154, _35->stSynExtraData.s32RefErrThr
	b	.L1006	@
.L1009:
	str	r7, [r3, #896]	@ tmp154, _35->stSynExtraData.s32DecMode
	b	.L1011	@
.L1032:
	.align	2
.L1031:
	.word	.LANCHOR0
	.word	.LANCHOR2
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
	ldr	r4, .L1047	@ tmp137,
	ldr	r0, [r4, #164]	@ D.36696, g_SleepTime
	str	r3, [r4, #44]	@ tmp118, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ D.36696,
	ble	.L1034	@,
	bl	msleep	@
.L1034:
	ldr	r0, .L1047+4	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r3, [r4, #172]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp123,
	str	r2, [r4, #44]	@ tmp123, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1046	@,
.L1035:
	mov	r3, #102	@ tmp127,
	str	r3, [r4, #44]	@ tmp127, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	ldr	r3, .L1047+8	@ tmp128,
	ldr	r3, [r3, #28]	@ D.36698, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.36698,
	beq	.L1036	@,
	blx	r3	@ D.36698
.L1036:
	ldr	r3, .L1047+12	@ tmp129,
	ldr	r3, [r3, #56]	@ D.36699, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.36699,
	beq	.L1037	@,
	mov	r0, #0	@,
	blx	r3	@ D.36699
.L1037:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1047+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1047+16	@,
	mov	r3, #105	@ tmp133,
	str	r3, [r4, #44]	@ tmp133, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1046:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1035	@
.L1048:
	.align	2
.L1047:
	.word	.LANCHOR0
	.word	.LANCHOR2-3504
	.word	g_dnr_hal_fun_ptr
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+248
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
	add	r1, sp, #8	@ tmp133,,
	ldr	r4, .L1089	@ tmp185,
	mov	r3, #4	@ tmp132,
	mov	r0, sp	@,
	str	r3, [r1, #-4]!	@ tmp132, enChipVersion
	mov	r5, #0	@ tmp131,
	str	r5, [sp]	@ tmp131, enChipType
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r3, [r4, #36]	@ D.36703, s_VfmwCTrl.eTaskCommand
	movw	r7, #10175	@ tmp191,
	mov	r6, #12288	@ tmp192,
	movt	r7, 9	@ tmp191,
	movt	r6, 65056	@ tmp192,
.L1050:
	cmp	r3, #2	@ D.36703,
	mov	r8, #2	@ tmp137,
	mov	r2, #1	@ tmp139,
	str	r8, [r4, #32]	@ tmp137, s_VfmwCTrl.eTaskState
	str	r2, [r4, #44]	@ tmp139, s_VfmwCTrl.s32ThreadPos
	bne	.L1085	@,
	b	.L1051	@
.L1055:
	str	r8, [r4, #44]	@ tmp190, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	ldr	r3, [r4, #36]	@ D.36704, s_VfmwCTrl.eTaskCommand
	mov	r2, #1	@ tmp171,
	str	r2, [r4, #44]	@ tmp171, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.36704,
	beq	.L1051	@,
.L1085:
	cmp	r3, #3	@ D.36704,
	beq	.L1052	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sp, #4]	@ enChipVersion, enChipVersion
	cmp	r3, #5	@ enChipVersion,
	bne	.L1055	@,
	clz	r3, r5	@ tmp146, time2
	rsb	r2, r5, r0	@ D.36706, time2, time2
	mov	r3, r3, lsr #5	@ tmp146, tmp146,
	cmp	r2, r7	@ D.36706, tmp191
	orrhi	r3, r3, #1	@,, tmp149, tmp146
	cmp	r3, #0	@ tmp149,
	beq	.L1055	@,
	ldr	r3, [r6, #92]	@ reg_val, MEM[(volatile unsigned int *)4263522396B]
	mov	r5, r0	@ time2, time2
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.36706, reg_val,
	strne	r3, [r6, #92]	@ D.36706, MEM[(volatile unsigned int *)4263522396B]
	ldr	r3, [r6, #96]	@ reg_val, MEM[(volatile unsigned int *)4263522400B]
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.36706, reg_val,
	strne	r3, [r6, #96]	@ D.36706, MEM[(volatile unsigned int *)4263522400B]
	movne	r5, r0	@ time2, time2
	b	.L1055	@
.L1051:
	mov	r8, #5	@ tmp184,
	mov	r3, #1	@ tmp182,
	str	r8, [r4, #44]	@ tmp184, s_VfmwCTrl.s32ThreadPos
	str	r3, [r4, #32]	@ tmp182, s_VfmwCTrl.eTaskState
.L1059:
	mov	r0, #10	@,
	bl	msleep	@
	ldr	r3, [r4, #36]	@ D.36703, s_VfmwCTrl.eTaskCommand
	str	r8, [r4, #44]	@ tmp187, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #1	@ D.36703,
	beq	.L1050	@,
	cmp	r3, #3	@ D.36703,
	bne	.L1059	@,
.L1052:
	mov	r0, #0	@ tmp179,
	mov	r3, #6	@ tmp177,
	str	r0, [r4, #32]	@ tmp179, s_VfmwCTrl.eTaskState
	str	r3, [r4, #44]	@ tmp177, s_VfmwCTrl.s32ThreadPos
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1090:
	.align	2
.L1089:
	.word	.LANCHOR0
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
	ldr	r3, .L1099	@ tmp118,
	ldr	r0, [r3, r0, asl #2]	@ D.36713, s_pstVfmwChan
	cmp	r0, #0	@ D.36713,
	bxeq	lr	@
	ldr	r3, [r0, #880]	@ D.36714, _5->eVidStd
	cmp	r3, #3	@ D.36714,
	beq	.L1093	@,
	cmp	r3, #18	@ D.36714,
	beq	.L1094	@,
	cmp	r3, #0	@ D.36714,
	beq	.L1094	@,
	mov	r0, #0	@ D.36712,
	bx	lr	@
.L1094:
	add	r0, r0, #210944	@ D.36712, D.36713,
	add	r0, r0, #904	@ D.36712, D.36712,
	bx	lr	@
.L1093:
	add	r0, r0, #282624	@ D.36712, D.36713,
	add	r0, r0, #2560	@ D.36712, D.36712,
	bx	lr	@
.L1100:
	.align	2
.L1099:
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
	ldr	r5, .L1120	@ tmp137,
	ldr	ip, [r5, r0, asl #2]	@ D.36719, s_pstVfmwChan
	cmp	ip, #0	@ D.36719,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	lr, [ip, #880]	@ D.36720, _4->eVidStd
	cmp	lr, #3	@ D.36720,
	beq	.L1105	@,
	cmp	lr, #18	@ D.36720,
	beq	.L1106	@,
	cmp	lr, #0	@ D.36720,
	movne	ip, #0	@ D.36723,
	beq	.L1106	@,
.L1108:
	str	ip, [r3]	@ D.36723, *pNewImgNum_5(D)
	str	ip, [r2]	@ D.36723, *pReadImgNum_7(D)
	str	ip, [r1]	@ D.36723, *pRefImgNum_9(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1106:
	add	ip, ip, #210944	@ D.36723, D.36719,
	add	ip, ip, #904	@ D.36723, D.36723,
.L1104:
	cmp	ip, #0	@ D.36723,
	beq	.L1108	@,
	mov	lr, r2	@ pReadImgNum, pReadImgNum
	mov	r4, r0	@ ChanID, ChanID
	mov	r2, r3	@, pNewImgNum
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r0, ip	@, D.36723
	mov	r1, lr	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r3, [r5, r4, asl #2]	@ D.36719, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ D.36720, _12->eVidStd
	cmp	r2, #0	@ D.36720,
	beq	.L1119	@,
	cmp	r2, #15	@ D.36720,
	movne	r3, #2	@ tmp133,
	strne	r3, [r6]	@ tmp133, *pRefImgNum_9(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1119:
	add	r3, r3, #237568	@ tmp131, D.36719,
	ldr	r3, [r3, #896]	@ _12->stSynCtx.unSyntax.stH264Ctx.DPB.size, _12->stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r6]	@ _12->stSynCtx.unSyntax.stH264Ctx.DPB.size, *pRefImgNum_9(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1105:
	add	ip, ip, #282624	@ D.36723, D.36719,
	add	ip, ip, #2560	@ D.36723, D.36723,
	b	.L1104	@
.L1121:
	.align	2
.L1120:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r1	@ tmp137, pstChanState
	mov	r2, #0	@ tmp131,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ tmp137, tmp137,
	cmp	r0, r2	@ ChanID,
	orrne	r3, r3, #1	@,, tmp140, tmp137
	.pad #40
	sub	sp, sp, #40	@,,
	cmp	r3, r2	@ tmp140,
	str	r2, [sp, #12]	@ tmp131, NewNum
	str	r2, [sp, #8]	@ tmp131, ReadNum
	str	r2, [sp, #4]	@ tmp131, RefNum
	bne	.L1122	@,
	ldr	r6, .L1131	@ tmp141,
	ldr	r3, [r6, r0, asl #2]	@ D.36726, s_pstVfmwChan
	cmp	r3, r2	@ D.36726,
	beq	.L1122	@,
	mov	r5, r1	@ pstChanState, pstChanState
	add	r1, r3, #1280	@, D.36726,
	mov	r4, r0	@ ChanID, ChanID
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r5	@, pstChanState
	bl	memcpy	@
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r6, r4, asl #2]	@ D.36726, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1124	@,
	ldr	r3, [r3, #1604]	@ _13->stSynExtraData.s32DnrEnable, _13->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _13->stSynExtraData.s32DnrEnable,
	beq	.L1124	@,
	ldr	r2, [sp, #4]	@, RefNum
	mov	r1, r5	@, pstChanState
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetDispState	@
	b	.L1126	@
.L1124:
	mov	r1, r5	@, pstChanState
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetDispStateWithDNR	@
.L1126:
	ldr	r2, .L1131+4	@ tmp158,
	mov	r3, r4, asl #5	@ tmp161, ChanID,
	sub	r3, r3, r4, asl #3	@ tmp162, tmp161, ChanID,
	ldr	ip, [sp, #8]	@ ReadNum, ReadNum
	add	r3, r2, r3	@ tmp163, tmp158, tmp162
	ldr	r2, [sp, #12]	@ NewNum, NewNum
	add	r1, sp, #16	@,,
	mov	r0, r4	@, ChanID
	ldr	lr, [r3, #-3476]	@ g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag, g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag
	add	r2, ip, r2	@ D.36728, ReadNum, NewNum
	ldr	r3, [r3, #-3488]	@ g_VfmwChanStat[ChanID_7(D)].u32FrFrameRate, g_VfmwChanStat[ChanID_7(D)].u32FrFrameRate
	str	r2, [r5, #52]	@ D.36728, pstChanState_8(D)->decoded_1d_frame_num
	str	lr, [r5, #100]	@ g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag, pstChanState_8(D)->is_field_flg
	str	r3, [r5, #24]	@ g_VfmwChanStat[ChanID_7(D)].u32FrFrameRate, pstChanState_8(D)->frame_rate
	bl	SM_GetInfo	@
	ldr	r3, [sp, #36]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	ldr	r1, [sp, #32]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	ldr	r2, [sp, #24]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	cmp	r3, #10	@ ScdInstInfo.numReadSegFail,
	str	r1, [r5, #56]	@ ScdInstInfo.TotalSegSize, pstChanState_8(D)->buffered_stream_size
	movle	r3, #0	@ D.36730,
	movgt	r3, #1	@ D.36730,
	str	r2, [r5, #60]	@ ScdInstInfo.SegNum, pstChanState_8(D)->buffered_stream_num
	str	r3, [r5, #84]	@ D.36730, pstChanState_8(D)->stream_not_enough
.L1122:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1132:
	.align	2
.L1131:
	.word	.LANCHOR0
	.word	.LANCHOR2
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
	ldr	r3, .L1134	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	sub	r0, r0, #1	@, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
.L1135:
	.align	2
.L1134:
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
	cmp	r0, #0	@ ChanID,
	bne	.L1146	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, .L1151	@ tmp132,
	ldr	r3, [r4]	@ D.36757, s_pstVfmwChan
	cmp	r3, #0	@ D.36757,
	beq	.L1148	@,
	ldr	r3, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	subs	r3, r3, #1	@ tmp137, _5->s32IsOpen,
	movne	r3, #1	@ tmp137,
	cmp	r1, #0	@ pImage,
	movne	r5, r3	@, tmp140, tmp137
	orreq	r5, r3, #1	@,, tmp140, tmp137
	cmp	r5, #0	@ tmp140,
	bne	.L1148	@,
	ldr	r0, .L1151+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4]	@ D.36757, s_pstVfmwChan
	cmp	r3, #0	@ D.36757,
	beq	.L1139	@,
	ldr	r3, [r3, #4]	@ _9->s32IsOpen, _9->s32IsOpen
	cmp	r3, #1	@ _9->s32IsOpen,
	bne	.L1139	@,
	ldr	r0, .L1151+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r4, [r4]	@ D.36757, s_pstVfmwChan
	movw	r3, #4058	@ tmp151,
	add	r2, r4, #172032	@ tmp149, D.36757,
	ldrsb	r6, [r2, r3]	@ s32AllDecFrameNum, _17->FspInst.s32DecFsNum
	cmp	r6, #0	@ s32AllDecFrameNum,
	addgt	r4, r4, #209920	@ ivtmp.644, D.36757,
	addgt	r4, r4, #840	@ ivtmp.644, ivtmp.644,
	bgt	.L1144	@,
	b	.L1145	@
.L1142:
	cmp	r6, r5	@ s32AllDecFrameNum, i
	add	r4, r4, #16	@ ivtmp.644, ivtmp.644,
	beq	.L1145	@,
.L1144:
	ldr	r3, [r4, #-16]	@ MEM[base: _30, offset: 4294967280B], MEM[base: _30, offset: 4294967280B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #1	@ MEM[base: _30, offset: 4294967280B],
	bne	.L1142	@,
	ldr	r2, [r4, #-8]	@, MEM[base: _30, offset: 4294967288B]
	mov	r0, #0	@,
	ldr	r1, [r4, #-12]	@, MEM[base: _30, offset: 4294967284B]
	add	r4, r4, #16	@ ivtmp.644, ivtmp.644,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-20]	@ s32UsingCount, MEM[base: _30, offset: 4294967292B]
	streq	r0, [r4, #-32]	@ s32UsingCount, MEM[base: _30, offset: 4294967280B]
	cmp	r6, r5	@ s32AllDecFrameNum, i
	bne	.L1144	@,
.L1145:
	ldr	r0, .L1151+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1151+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.36756,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1139:
	ldr	r0, .L1151+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.36756,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1146:
	mvn	r0, #0	@ D.36756,
	bx	lr	@
.L1148:
	mvn	r0, #0	@ D.36756,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1152:
	.align	2
.L1151:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.word	.LANCHOR2-3472
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L1156	@,
	ldr	r3, .L1157	@ tmp114,
	ldr	r3, [r3]	@ D.36767, s_pstVfmwChan
	cmp	r3, #0	@ D.36767,
	beq	.L1156	@,
	ldr	r0, [r3, #1456]	@ D.36766, _4->stSynExtraData.stChanOption.s32MaxWidth
	bx	lr	@
.L1156:
	mvn	r0, #0	@ D.36766,
	bx	lr	@
.L1158:
	.align	2
.L1157:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L1162	@,
	ldr	r3, .L1163	@ tmp114,
	ldr	r3, [r3]	@ D.36771, s_pstVfmwChan
	cmp	r3, #0	@ D.36771,
	beq	.L1162	@,
	ldr	r0, [r3, #1460]	@ D.36770, _4->stSynExtraData.stChanOption.s32MaxHeight
	bx	lr	@
.L1162:
	mvn	r0, #0	@ D.36770,
	bx	lr	@
.L1164:
	.align	2
.L1163:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	beq	.L1169	@,
	mvn	r0, #0	@ D.36774,
	bx	lr	@
.L1169:
	ldr	r3, .L1170	@ tmp114,
	ldr	r3, [r3]	@ D.36775, s_pstVfmwChan
	cmp	r3, #0	@ D.36775,
	beq	.L1168	@,
	ldr	r0, [r3, #24]	@ D.36774, _4->eChanCapLevel
	bx	lr	@
.L1168:
	mov	r0, #33	@ D.36774,
	bx	lr	@
.L1171:
	.align	2
.L1170:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #5000	@ tmp118,
	cmp	r0, r2	@ new_extra_ref, tmp118
	movw	r3, #60536	@ tmp120,
	ldr	ip, .L1173	@ tmp116,
	movt	r3, 65535	@ tmp120,
	movge	r0, r2	@ D.36778, tmp118
	cmp	r0, r3	@ D.36778, tmp120
	movlt	r0, r3	@ D.36778, tmp120
	cmp	r1, r2	@ new_extra_disp, tmp118
	str	r0, [ip, #3608]	@ D.36778, extra_ref
	movge	r1, r2	@ D.36778, tmp118
	cmp	r1, r3	@ D.36778, tmp120
	movlt	r1, r3	@ D.36778, tmp120
	str	r1, [ip, #3612]	@ D.36778, extra_disp
	bx	lr	@
.L1174:
	.align	2
.L1173:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1182	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.36782, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.36782,
	beq	.L1176	@,
	mov	r0, #0	@,
	blx	r3	@ D.36782
.L1176:
	bl	SCDDRV_MaskInt	@
	ldr	r3, .L1182+4	@ tmp113,
	ldr	r3, [r3, #24]	@ D.36781, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r3, #0	@ D.36781,
	ldmeqfd	sp!, {r4, pc}	@
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.36781
.L1183:
	.align	2
.L1182:
	.word	g_vdm_hal_fun_ptr
	.word	g_dnr_hal_fun_ptr
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1191	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.36786, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.36786,
	beq	.L1185	@,
	mov	r0, #0	@,
	blx	r3	@ D.36786
.L1185:
	bl	SCDDRV_EnableInt	@
	ldr	r3, .L1191+4	@ tmp113,
	ldr	r3, [r3, #28]	@ D.36785, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.36785,
	ldmeqfd	sp!, {r4, pc}	@
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.36785
.L1192:
	.align	2
.L1191:
	.word	g_vdm_hal_fun_ptr
	.word	g_dnr_hal_fun_ptr
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
	mov	r3, r2, asl #1	@ D.36824, Width,
	mov	r4, r2	@ Width, Width
	mov	r8, r1	@ ChromOfst, ChromOfst
	str	r2, [sp, #8]	@ Width, %sfp
	mov	r2, #0	@,
	mul	r1, r10, r3	@, Height, D.36824
	ldr	r7, [sp, #56]	@ Stride, Stride
	ldr	r6, [sp, #60]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r5, r0, #0	@ pLuma,
	beq	.L1193	@,
	mul	fp, r10, r4	@ D.36824, Height, Width
	add	r8, r5, r8	@ pChrom, pLuma, ChromOfst
	add	r3, fp, fp, lsr #31	@ tmp153, D.36824, D.36824,
	mov	r3, r3, asr #1	@ D.36824, tmp153,
	str	r3, [sp, #12]	@ D.36824, %sfp
	add	r0, r3, #1024	@, D.36824,
	bl	OSAL_AllocVirMem	@
	subs	r3, r0, #0	@ pUV,
	str	r3, [sp, #4]	@ pUV, %sfp
	beq	.L1195	@,
	cmp	fp, #0	@ D.36824,
	add	r9, fp, #3	@ tmp158, D.36824,
	movge	r9, fp	@ D.36824, D.36824
	cmp	r10, #0	@ Height,
	add	r9, r3, r9, asr #2	@ pV, pUV, D.36824,
	movgt	r4, #0	@ y,
	ble	.L1200	@,
.L1199:
	add	r4, r4, #1	@ y, y,
	mov	r2, r6	@, fp
	mov	r1, fp	@, D.36824
	mov	r0, r5	@, pLuma
	bl	klib_fwrite	@
	cmp	r4, r10	@ y, Height
	bne	.L1199	@,
.L1200:
	add	r10, r10, r10, lsr #31	@ tmp161, Height, Height,
	mov	r10, r10, asr #1	@ D.36824, tmp161,
	cmp	r10, #0	@ D.36824,
	ble	.L1198	@,
	ldr	r3, [sp, #8]	@ Width, %sfp
	mov	r0, #0	@ y,
	ldr	fp, [sp, #4]	@ pUV, %sfp
	add	r4, r3, r3, lsr #31	@ tmp164, Width, Width,
	mov	r2, r4, asr #1	@ D.36824, tmp164,
.L1201:
	cmp	r2, #0	@ D.36824,
	ble	.L1203	@,
	sub	ip, fp, #1	@ ivtmp.676, pUV,
	sub	r1, r9, #1	@ ivtmp.687, pV,
	add	r4, r8, r2	@ D.36830, pChrom, D.36824
	mov	r3, r8	@ ivtmp.673, pChrom
.L1202:
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.36829, MEM[base: _51, offset: 0B]
	strb	lr, [ip, #1]!	@ D.36829, MEM[base: _37, offset: 0B]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2	@ D.36829, MEM[base: _7, offset: 0B]
	cmp	r4, r3	@ D.36830, ivtmp.673
	strb	lr, [r1, #1]!	@ D.36829, MEM[base: _11, offset: 0B]
	bne	.L1202	@,
	add	fp, fp, r2	@ pUV, pUV, D.36824
	add	r9, r9, r2	@ pV, pV, D.36824
.L1203:
	add	r0, r0, #1	@ y, y,
	add	r8, r8, r7	@ pChrom, pChrom, Stride
	cmp	r0, r10	@ y, D.36824
	bne	.L1201	@,
.L1198:
	mov	r2, r6	@, fp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L1195:
	mov	r0, r5	@, pLuma
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@ pUV, %sfp
	cmp	r3, #0	@ pUV,
	beq	.L1193	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_FreeVirMem	@
.L1193:
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
	ldrne	r3, .L1227	@ ivtmp.705,
	bne	.L1219	@,
	b	.L1225	@
.L1220:
	ldr	r2, [r3, #8]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r2, r1	@ MEM[base: _14, offset: 0B], cmd
	beq	.L1226	@,
.L1219:
	ldr	r0, [r3, #12]	@ pTargetHandler, MEM[base: _9, offset: 12B]
	cmp	r0, #0	@ pTargetHandler,
	bne	.L1220	@,
	bx	lr	@
.L1226:
	bx	lr	@
.L1225:
	ldr	r0, .L1227+4	@ pTargetHandler,
	bx	lr	@
.L1228:
	.align	2
.L1227:
	.word	.LANCHOR3
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L1235	@,
	cmp	r0, #0	@ opt,
	ldrne	r3, .L1242	@ ivtmp.713,
	bne	.L1233	@,
	b	.L1241	@
.L1234:
	ldr	ip, [r3, #8]!	@ MEM[base: _14, offset: 0B], MEM[base: _14, offset: 0B]
	cmp	r0, ip	@ opt, MEM[base: _14, offset: 0B]
	beq	.L1231	@,
.L1233:
	ldr	r2, [r3, #12]	@ pCommandHandler, MEM[base: _8, offset: 12B]
	cmp	r2, #0	@ pCommandHandler,
	bne	.L1234	@,
.L1235:
	mvn	r0, #1	@ D.36849,
	ldmfd	sp!, {r4, pc}	@
.L1241:
	ldr	r2, .L1242+4	@ pCommandHandler,
.L1231:
	mov	r0, r1	@ p_args, p_args
	blx	r2	@ pCommandHandler
	mov	r0, #1	@ D.36849,
	ldmfd	sp!, {r4, pc}	@
.L1243:
	.align	2
.L1242:
	.word	.LANCHOR3
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
	ldr	r5, .L1269	@ tmp177,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, r0, asl #2]	@ D.36855, s_pstVfmwChan
	cmp	r3, #0	@ D.36855,
	beq	.L1255	@,
	ldr	r2, [r1]	@ pOption_12(D)->s32KeepBS, pOption_12(D)->s32KeepBS
	cmp	r2, #1	@ pOption_12(D)->s32KeepBS,
	bhi	.L1255	@,
	mov	r6, r1	@ pOption, pOption
	ldr	r8, [r3, #8]	@ ChanIsRun, _11->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ D.36855, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp143, ChanID,
	ldr	r0, .L1269+4	@ tmp139,
	sub	r3, r3, r4, asl #3	@ tmp144, tmp143, ChanID,
	mov	r7, #0	@ tmp136,
	mov	r1, #24	@,
	add	r0, r0, r3	@, tmp139, tmp144
	str	r7, [r2, #680]	@ tmp136, _17->s32CountNoDecparamFlag
	str	r7, [r2, #684]	@ tmp136, _17->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r2, [r6, #4]	@ D.36856, pOption_12(D)->s32KeepSPSPPS
	ldr	r3, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r2, [r3, #1412]	@ D.36856, _23->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ D.36855, s_pstVfmwChan
	add	r1, r3, #210944	@, D.36855,
	ldr	r0, [r3, #880]	@, _27->eVidStd
	add	r1, r1, #896	@,,
	bl	ReleaseCurPic	@
	ldr	r0, [r5, r4, asl #2]	@ tmp154, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp154,
	bl	__memzero	@
	ldr	r3, [r5, r4, asl #2]	@ D.36855, s_pstVfmwChan
	mvn	r0, #0	@ tmp158,
	mvn	r1, #0	@,
	add	r2, r3, #960	@ tmp160, D.36855,
	add	ip, r3, #944	@ tmp157, D.36855,
	strd	r0, [ip]	@ tmp158, _34->stSynExtraData.pts
	strd	r0, [r2, #-8]	@ tmp158, tmp160,
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #880]	@ _34->eVidStd, _34->eVidStd
	str	r7, [r3, #1272]	@ tmp136, _34->stSynExtraData.s32NewPicSegDetector
	cmp	r2, #18	@ _34->eVidStd,
	str	r7, [r3, #1620]	@ tmp136, _34->stSynExtraData.s32firstIdecodedflag
	beq	.L1246	@,
	bl	FSP_ResetInstance	@
.L1247:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r3, [r6]	@ pOption_12(D)->s32KeepBS, pOption_12(D)->s32KeepBS
	cmp	r3, #0	@ pOption_12(D)->s32KeepBS,
	beq	.L1266	@,
.L1248:
	ldr	r3, [r5, #156]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	ldr	r5, .L1269	@ tmp166,
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L1267	@,
.L1249:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L1268	@,
.L1253:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36854,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1267:
	ldr	r3, [r5, #200]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp168,
	add	r6, sp, #4	@ tmp176,,
	str	r2, [sp, #4]	@ tmp168, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1252	@,
	mov	r0, #512	@,
	mov	r1, r6	@, tmp176
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #200]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	bne	.L1249	@,
.L1252:
	mov	r1, r6	@, tmp176
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	cmp	r8, #0	@ ChanIsRun,
	beq	.L1253	@,
.L1268:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1253	@
.L1266:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L1248	@
.L1255:
	mvn	r0, #0	@ D.36854,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1246:
	bl	FSP_EmptyInstance	@
	b	.L1247	@
.L1270:
	.align	2
.L1269:
	.word	.LANCHOR0
	.word	.LANCHOR2-3496
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
	ldr	r6, .L1296	@ tmp181,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r6, r0, asl #2]	@ D.36865, s_pstVfmwChan
	cmp	r3, #0	@ D.36865,
	beq	.L1282	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _12->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r6, r4, asl #2]	@ D.36865, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp137, ChanID,
	ldr	r0, .L1296+4	@ tmp133,
	sub	r3, r3, r4, asl #3	@ tmp138, tmp137, ChanID,
	mov	r5, #0	@ tmp130,
	mov	r1, #24	@,
	str	r5, [r2, #680]	@ tmp130, _15->s32CountNoDecparamFlag
	add	r0, r0, r3	@, tmp133, tmp138
	str	r5, [r2, #684]	@ tmp130, _15->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r3, [r6, r4, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1412]	@ tmp130, _21->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r0, [r6, r4, asl #2]	@ tmp145, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp145,
	bl	__memzero	@
	ldr	r3, [r6, r4, asl #2]	@ D.36865, s_pstVfmwChan
	mvn	r0, #0	@ tmp149,
	mvn	r1, #0	@,
	add	r2, r3, #208896	@ tmp156, D.36865,
	add	lr, r3, #944	@ tmp148, D.36865,
	add	ip, r3, #960	@ tmp151, D.36865,
	strd	r0, [lr]	@ tmp149, _27->stSynExtraData.pts
	strd	r0, [ip, #-8]	@ tmp149, tmp151,
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1272]	@ tmp130, _27->stSynExtraData.s32NewPicSegDetector
	str	r5, [r3, #1620]	@ tmp130, _27->stSynExtraData.s32firstIdecodedflag
	str	r5, [r2, #2896]	@ tmp130, _27->s32FindStartCodeCnt
	str	r5, [r2, #2888]	@ tmp130, _27->s32H264Score
	str	r5, [r2, #2892]	@ tmp130, _27->s32Mpeg2Score
	ldr	r2, [r3, #1580]	@ _27->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _27->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _27->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r5, [r3, #1616]	@ tmp130, _27->stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r3, #880]	@ _27->eVidStd, _27->eVidStd
	cmp	r3, #18	@ _27->eVidStd,
	beq	.L1274	@,
	bl	FSP_ResetInstance	@
.L1275:
	mov	r0, r4	@, ChanID
	ldr	r5, .L1296	@ tmp167,
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r6, #156]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L1293	@,
.L1276:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1294	@,
.L1280:
	ldr	r3, [r6, r4, asl #2]	@ tmp177, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1295	@,
.L1281:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36864,
.L1272:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1293:
	ldr	r3, [r5, #200]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r2, #0	@ tmp169,
	add	r8, sp, #4	@ tmp180,,
	str	r2, [sp, #4]	@ tmp169, data
	cmp	r3, r2	@ vfmw_save_str_file,
	beq	.L1279	@,
	mov	r0, #512	@,
	mov	r1, r8	@, tmp180
	bl	VCTRL_SetDbgOption	@
	ldr	r3, [r5, #200]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	bne	.L1276	@,
.L1279:
	mov	r1, r8	@, tmp180
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L1280	@,
.L1294:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r3, [r6, r4, asl #2]	@ tmp177, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1281	@,
.L1295:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L1281	@
.L1274:
	bl	FSP_EmptyInstance	@
	b	.L1275	@
.L1282:
	mvn	r0, #0	@ D.36864,
	b	.L1272	@
.L1297:
	.align	2
.L1296:
	.word	.LANCHOR0
	.word	.LANCHOR2-3496
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
	add	r6, sp, #92	@ tmp793,,
	mov	r5, r0	@ eCapLevel, eCapLevel
	mov	r4, r1	@ pChanOption, pChanOption
	add	r0, sp, #124	@ tmp810,,
	mov	r1, #64	@,
	mov	r8, r2	@ flag, flag
	mov	r7, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, r6	@, tmp793
	mov	r1, #16	@,
	bl	__memzero	@
	subs	r2, r5, #25	@ tmp396, eCapLevel,
	ldr	r3, .L1448	@ tmp797,
	movne	r2, #1	@ tmp396,
	cmp	r8, #0	@ flag,
	movne	r2, #0	@ tmp396,
	cmp	r2, #0	@ tmp396,
	str	r4, [r3, #-3464]	@ pChanOption, pOption
	bne	.L1428	@,
	ldr	r3, [r4, #4]	@ D.36972, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.36972,
	bhi	.L1428	@,
	beq	.L1435	@,
	cmp	r3, #1	@ D.36972,
	beq	.L1436	@,
.L1303:
	ldr	r3, [r4, #136]	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r2, sp, #108	@,,
	mov	r1, r4	@, pChanOption
	mov	r0, r5	@, eCapLevel
	cmp	r3, #1	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r3, #0	@ tmp409,
	strne	r3, [r4, #136]	@ tmp409, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r8	@, flag
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	fp, r0, #0	@ D.36958,
	beq	.L1437	@,
.L1428:
	mvn	r8, #0	@ D.36956,
.L1416:
	mov	r0, r8	@, D.36956
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1435:
	ldr	r3, [r4, #64]	@ pChanOption_14(D)->s32SlotWidth, pChanOption_14(D)->s32SlotWidth
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotWidth,
	beq	.L1428	@,
	ldr	r3, [r4, #68]	@ pChanOption_14(D)->s32SlotHeight, pChanOption_14(D)->s32SlotHeight
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotHeight,
	bne	.L1303	@,
	b	.L1428	@
.L1436:
	ldr	r3, [r4, #32]	@ pChanOption_14(D)->s32MaxRefFrameNum, pChanOption_14(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxRefFrameNum,
	blt	.L1428	@,
	ldr	r3, [r4, #12]	@ pChanOption_14(D)->s32MaxWidth, pChanOption_14(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxWidth,
	ble	.L1428	@,
	ldr	r3, [r4, #16]	@ pChanOption_14(D)->s32MaxHeight, pChanOption_14(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxHeight,
	ble	.L1428	@,
	ldr	r3, [r4, #56]	@ pChanOption_14(D)->s32SCDBufSize, pChanOption_14(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_14(D)->s32SCDBufSize,
	blt	.L1428	@,
	ldr	r3, [r4, #44]	@ pChanOption_14(D)->s32SupportH264, pChanOption_14(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_14(D)->s32SupportH264,
	bne	.L1303	@,
	ldr	r3, [r4, #20]	@ pChanOption_14(D)->s32MaxSliceNum, pChanOption_14(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSliceNum,
	ble	.L1428	@,
	ldr	r3, [r4, #24]	@ pChanOption_14(D)->s32MaxSpsNum, pChanOption_14(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSpsNum,
	ble	.L1428	@,
	ldr	r3, [r4, #28]	@ pChanOption_14(D)->s32MaxPpsNum, pChanOption_14(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxPpsNum,
	bgt	.L1303	@,
	b	.L1428	@
.L1437:
	ldr	r3, [r4, #8]	@ D.36973, pChanOption_14(D)->MemAllocMode
	ldr	r2, [sp, #120]	@ DetailMemSize$12, MEM[(struct  *)&DetailMemSize + 12B]
	cmp	r3, #1	@ D.36973,
	ldr	r9, [sp, #108]	@ DetailMemSize, MEM[(struct  *)&DetailMemSize]
	ldr	r10, [sp, #112]	@ DetailMemSize$4, MEM[(struct  *)&DetailMemSize + 4B]
	ldr	r8, [sp, #116]	@ DetailMemSize$8, MEM[(struct  *)&DetailMemSize + 8B]
	str	r2, [sp, #68]	@ DetailMemSize$12, %sfp
	beq	.L1438	@,
	cmp	r3, #2	@ D.36973,
	beq	.L1439	@,
	cmp	r3, #3	@ D.36973,
	bne	.L1428	@,
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp821,,
	bl	__memzero	@
	ldr	r3, [r4, #108]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr,
	beq	.L1315	@,
	ldr	r3, [r4, #112]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length,
	bne	.L1316	@,
.L1315:
	mov	r2, r8	@, DetailMemSize$8
	add	r3, sp, #188	@ tmp822,,
	mov	r8, #1	@ tmp482,
	mov	r1, #0	@,
	str	r8, [sp]	@ tmp482,
	ldr	r0, .L1448+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1428	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r8, [sp, #100]	@ tmp482, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	r1, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	r2, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r3, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
.L1318:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp831,,
	bl	__memzero	@
	ldr	r3, [r4, #76]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr,
	beq	.L1359	@,
	ldr	r3, [r4, #80]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length,
	bne	.L1319	@,
.L1359:
	mov	r1, #0	@ tmp503,
	mov	r2, r9	@, DetailMemSize
	str	r1, [sp]	@ tmp503,
	add	r3, sp, #188	@ tmp823,,
	ldr	r0, .L1448+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	beq	.L1440	@,
.L1425:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1428	@,
.L1422:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1428	@
.L1316:
	mov	r2, #16	@,
	add	r1, r4, #104	@, pChanOption,
	add	r0, sp, #156	@,,
	bl	memcpy	@
	ldr	r2, [sp, #164]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r8, r2	@ DetailMemSize$8, D.36958
	bgt	.L1428	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1318	@
.L1319:
	mov	r2, #16	@,
	add	r0, sp, #124	@ tmp824,,
	add	r1, r4, #72	@, pChanOption,
	bl	memcpy	@
	ldr	r2, [sp, #132]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r9, r2	@ DetailMemSize, D.36958
	bgt	.L1425	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
.L1323:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp832,,
	bl	__memzero	@
	ldr	r3, [r4, #92]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr,
	beq	.L1361	@,
	ldr	r3, [r4, #96]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length,
	bne	.L1325	@,
.L1361:
	ldr	r3, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1326	@,
	mov	r1, #0	@ tmp535,
	mov	r2, r10	@, DetailMemSize$4
	str	r1, [sp]	@ tmp535,
	add	r3, sp, #188	@ tmp825,,
	ldr	r0, .L1448+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	beq	.L1441	@,
.L1334:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1442	@,
.L1335:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1428	@,
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1428	@
.L1326:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp557,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #148]	@ tmp557, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r2, [sp, #140]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
.L1331:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp833,,
	bl	__memzero	@
	ldr	r3, [r4, #124]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr,
	beq	.L1363	@,
	ldr	r3, [r4, #128]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length,
	bne	.L1336	@,
.L1363:
	ldr	r3, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1337	@,
	mov	r1, #0	@ tmp573,
	add	r3, sp, #188	@ tmp826,,
	ldr	r2, [sp, #68]	@, %sfp
	str	r1, [sp]	@ tmp573,
	ldr	r0, .L1448+16	@,
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.36958,
	beq	.L1443	@,
.L1345:
	ldr	r3, [sp, #100]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1444	@,
.L1346:
	ldr	r3, [sp, #92]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1445	@,
.L1347:
	ldr	r3, [sp, #96]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	bne	.L1428	@,
	ldr	r1, [sp, #144]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1428	@
.L1337:
	ldr	r2, [sp, #124]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp601,
	ldr	r3, [sp, #128]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #180]	@ tmp601, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r2, [sp, #172]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
.L1397:
	ldr	r10, .L1448	@ tmp614,
	ldr	r9, .L1448+20	@ tmp796,
	sub	r0, r10, #3504	@, tmp614,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r8, [r9]	@ s_pstVfmwChan, s_pstVfmwChan
	adds	r8, r8, #0	@ D.36956, s_pstVfmwChan,
	movne	r8, #1	@ D.36956,
	cmp	r8, #0	@ D.36956,
	bgt	.L1446	@,
	add	r10, r10, r8, lsl #2	@ tmp627, tmp614, D.36956,
	ldr	r2, [sp, #160]	@ D.36960, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	lr, .L1448+24	@ tmp624,
	movw	r1, #23416	@,
	ldr	ip, .L1448+28	@ tmp622,
	movt	r1, 4	@,
	ldr	r3, [r10, #-3532]	@ tmp633, g_ChanTick
	mov	r0, r2	@, D.36960
	str	r2, [r9, r8, asl #2]	@ D.36960, s_pstVfmwChan
	mov	r2, #30	@ tmp623,
	add	r3, r3, #1	@ D.36959, tmp633,
	str	r2, [lr, r8, asl #2]	@ tmp623, g_LastFrameRate
	str	r3, [r10, #-3532]	@ D.36959, g_ChanTick
	str	r2, [ip, r8, asl #2]	@ tmp623, g_FrameRate
	bl	__memzero	@
	ldr	ip, [r9, r8, asl #2]	@ D.36961, s_pstVfmwChan
	mov	r2, #152	@,
	mov	r1, r4	@, pChanOption
	add	r0, ip, #1440	@, D.36961,
	add	r0, r0, #4	@,,
	str	ip, [sp, #68]	@ D.36961, %sfp
	bl	memcpy	@
	ldr	ip, [sp, #68]	@ D.36961, %sfp
	ldr	r1, .L1448+32	@ tmp667,
	movw	r2, #11160	@ tmp669,
	movt	r2, 1	@ tmp669,
	str	r8, [ip]	@ D.36956, _40->s32ChanID
	mla	r2, r2, r8, r1	@ tmp670, tmp669, D.36956, tmp667
	ldr	r3, [r9, r8, asl #2]	@ D.36961, s_pstVfmwChan
	movw	r1, #34688	@ tmp643,
	str	r5, [ip, #24]	@ eCapLevel, _40->eChanCapLevel
	add	r0, r3, #172032	@ tmp647, D.36961,
	str	r5, [ip, #920]	@ eCapLevel, _40->stSynExtraData.eCapLevel
	str	fp, [ip, #1404]	@ D.36958, _40->stSynExtraData.s32MoreGapEnable
	movt	r1, 7	@ tmp643,
	add	r2, r2, #75776	@ tmp671, tmp670,
	str	r1, [ip, #1388]	@ tmp643, _40->stSynExtraData.s32BasicCtxSize
	strb	r8, [r0, #4048]	@ D.36956, _48->FspInst.s32InstID
	add	r2, r2, #912	@ tmp671, tmp671,
	ldr	ip, [r4]	@ D.36964, pChanOption_14(D)->eAdapterType
	mov	r0, #19	@ tmp649,
	ldr	lr, [r10, #-3532]	@ tmp666, g_ChanTick
	add	r1, r3, #208896	@ tmp651, D.36961,
	str	r0, [r3, #880]	@ tmp649, _48->eVidStd
	add	r10, r3, #163840	@ tmp657, D.36961,
	str	ip, [r3, #20]	@ D.36964, _48->eAdapterType
	add	ip, r8, #14	@ tmp654, D.36956,
	ldr	r2, [r2, #4]	@ D.36958, s_DnrChan[_349].s32DnrEnable
	str	r0, [r1, #2936]	@ tmp649, _48->stSynCtx.eVidStd
	add	r0, r3, #175104	@ D.36966, D.36961,
	str	r8, [r10, #3860]	@ D.36956, MEM[(struct SM_INSTANCE_S *)_48 + 1632B].InstID
	add	r0, r0, #976	@ D.36966, D.36966,
	str	lr, [r1, #2932]	@ tmp666, _48->u32ChanTick
	add	lr, r3, #1632	@ D.36965, D.36961,
	str	r2, [r3, #1604]	@ D.36958, _48->stSynExtraData.s32DnrEnable
	ldr	r1, [r4, #140]	@ D.36967, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	r2, .L1448+36	@ tmp658,
	ldr	r10, .L1448+40	@ tmp653,
	cmp	r1, #0	@ D.36967,
	streq	fp, [r3, #1608]	@ D.36958, _48->stSynExtraData.s32DSDThrWidth
	str	r0, [r2, r8, asl #2]	@ D.36966, s_pFspInst
	str	lr, [r10, ip, asl #2]	@ D.36965, s_SmIIS.pSmInstArray
	streq	fp, [r3, #1612]	@ D.36958, _48->stSynExtraData.s32DSDThrHeight
	beq	.L1351	@,
	mov	r0, r1, asl #5	@ tmp678, D.36967,
	ldr	r2, .L1448+44	@ tmp675,
	sub	r1, r0, r1, asl #2	@ tmp679, tmp678, D.36967,
	ldr	r1, [r2, r1]	@ D.36958, CapItem
	str	r1, [r3, #1608]	@ D.36958, _48->stSynExtraData.s32DSDThrWidth
	ldr	r0, [r4, #140]	@ pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	mov	r1, r0, asl #5	@ tmp685, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	sub	r1, r1, r0, asl #2	@ tmp686, tmp685, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r2, r2, r1	@ tmp687, tmp675, tmp686
	ldr	r2, [r2, #4]	@ D.36958, CapItem
	str	r2, [r3, #1612]	@ D.36958, _48->stSynExtraData.s32DSDThrHeight
.L1351:
	ldr	r0, [r9, r8, asl #2]	@ D.36961, s_pstVfmwChan
	mov	r2, #0	@ tmp799,
	mov	ip, #-2147483648	@ tmp800,
	add	r3, r0, #209920	@ ivtmp.730, D.36961,
	add	r0, r0, #210944	@ tmp798, D.36961,
	add	r3, r3, #824	@ ivtmp.730, ivtmp.730,
	add	r1, r0, #824	@ D.36957, tmp798,
.L1352:
	str	r2, [r3, #8]	@ tmp799, MEM[base: _505, offset: 8B]
	str	r2, [r3, #12]	@ tmp799, MEM[base: _505, offset: 12B]
	stmia	r3, {r2, ip}	@ ivtmp.730,,
	add	r3, r3, #16	@ ivtmp.730, ivtmp.730,
	cmp	r3, r1	@ ivtmp.730, D.36957
	bne	.L1352	@,
	mov	r1, #16	@,
	add	r0, r0, #824	@, tmp798,
	bl	__memzero	@
	mov	r0, r8	@, D.36956
	bl	VCTRL_ResetChan	@
	ldmia	r6, {r0, r1, r2, r3}	@ tmp793,,,,
	add	ip, sp, #48	@ tmp695,,
	ldr	fp, [sp, #124]	@ MEM[(struct  *)&ChanMemDetail], MEM[(struct  *)&ChanMemDetail]
	ldr	r10, [sp, #180]	@ MEM[(struct  *)&ChanMemDetail + 56B], MEM[(struct  *)&ChanMemDetail + 56B]
	ldr	r6, [sp, #176]	@ MEM[(struct  *)&ChanMemDetail + 52B], MEM[(struct  *)&ChanMemDetail + 52B]
	ldr	lr, [sp, #172]	@ MEM[(struct  *)&ChanMemDetail + 48B], MEM[(struct  *)&ChanMemDetail + 48B]
	stmia	ip, {r0, r1, r2, r3}	@ tmp695,,,,
	mov	r2, r7	@, OneChanMemFlag
	ldr	ip, [sp, #156]	@ MEM[(struct  *)&ChanMemDetail + 32B], MEM[(struct  *)&ChanMemDetail + 32B]
	mov	r1, r5	@, eCapLevel
	ldr	r7, [sp, #164]	@ MEM[(struct  *)&ChanMemDetail + 40B], MEM[(struct  *)&ChanMemDetail + 40B]
	mov	r3, r4	@, pChanOption
	ldr	r5, [sp, #160]	@ MEM[(struct  *)&ChanMemDetail + 36B], MEM[(struct  *)&ChanMemDetail + 36B]
	mov	r0, r8	@, D.36956
	str	fp, [sp]	@ MEM[(struct  *)&ChanMemDetail],
	str	r10, [sp, #44]	@ MEM[(struct  *)&ChanMemDetail + 56B],
	ldr	fp, [sp, #148]	@ MEM[(struct  *)&ChanMemDetail + 24B], MEM[(struct  *)&ChanMemDetail + 24B]
	ldr	r10, [sp, #140]	@ MEM[(struct  *)&ChanMemDetail + 16B], MEM[(struct  *)&ChanMemDetail + 16B]
	str	r6, [sp, #40]	@ MEM[(struct  *)&ChanMemDetail + 52B],
	str	lr, [sp, #36]	@ MEM[(struct  *)&ChanMemDetail + 48B],
	ldr	r6, [sp, #132]	@ MEM[(struct  *)&ChanMemDetail + 8B], MEM[(struct  *)&ChanMemDetail + 8B]
	ldr	lr, [sp, #128]	@ MEM[(struct  *)&ChanMemDetail + 4B], MEM[(struct  *)&ChanMemDetail + 4B]
	str	ip, [sp, #24]	@ MEM[(struct  *)&ChanMemDetail + 32B],
	ldr	ip, [sp, #144]	@ tmp828, MEM[(struct  *)&ChanMemDetail + 20B]
	str	r7, [sp, #32]	@ MEM[(struct  *)&ChanMemDetail + 40B],
	str	r5, [sp, #28]	@ MEM[(struct  *)&ChanMemDetail + 36B],
	str	fp, [sp, #20]	@ MEM[(struct  *)&ChanMemDetail + 24B],
	str	ip, [sp, #16]	@ tmp828,
	str	r10, [sp, #12]	@ MEM[(struct  *)&ChanMemDetail + 16B],
	str	r6, [sp, #8]	@ MEM[(struct  *)&ChanMemDetail + 8B],
	str	lr, [sp, #4]	@ MEM[(struct  *)&ChanMemDetail + 4B],
	bl	VCTRL_ConfigMemInfo.isra.0	@
	cmp	r0, #0	@,
	bne	.L1353	@,
	ldr	r3, [r9, r8, asl #2]	@ tmp710, s_pstVfmwChan
	mov	r0, r8	@, D.36956
	ldr	r5, .L1448+20	@ tmp709,
	str	r8, [r3, #140]	@ D.36956, _97->s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1353	@,
	ldr	r3, [r5, r8, asl #2]	@ D.36961, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _101->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _101->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _101->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1356	@,
	ldr	r3, [r3, #236]	@ D.36958, _101->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.36958
	str	r3, [sp, #76]	@ D.36958, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r8, asl #2]	@ tmp724, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _108->s32OffLineDNRMemSize, _108->s32OffLineDNRMemSize
	str	r3, [sp, #84]	@ _108->s32OffLineDNRMemSize, DnrMem.Length
	str	r0, [sp, #80]	@, DnrMem.VirAddr
	mov	r0, r8	@, D.36956
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1357	@,
	ldr	r3, [r4, #16]	@, pChanOption_14(D)->s32MaxHeight
	add	r1, sp, #76	@,,
	ldr	r2, [r4, #12]	@, pChanOption_14(D)->s32MaxWidth
	mov	r0, r8	@, D.36956
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1353	@,
.L1357:
	mov	r0, r8	@, D.36956
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1353	@,
.L1356:
	mov	r0, r8	@, D.36956
	bl	SM_ClearInst	@
	ldr	r3, [r9, r8, asl #2]	@ tmp714, s_pstVfmwChan
	mov	r0, r8	@, D.36956
	ldr	r1, [r3, #204]	@ _120->stChanMem_ctx.VirAddr, _120->stChanMem_ctx.VirAddr
	add	r1, r1, #286720	@, _120->stChanMem_ctx.VirAddr,
	add	r1, r1, #888	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r9, r8, asl #2]	@ tmp719, s_pstVfmwChan
	mov	r2, #1	@ tmp720,
	mov	r0, r8	@, D.36956
	str	r2, [r3, #4]	@ tmp720, _124->s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1448+48	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1416	@
.L1438:
	mov	r2, #16	@,
	add	r1, r4, #72	@, pChanOption,
	add	r0, sp, #124	@ tmp812,,
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
	beq	.L1428	@,
	ldr	r3, [sp, #164]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r8, r3	@ DetailMemSize$8, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bgt	.L1428	@,
	ldr	r3, [sp, #144]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr,
	beq	.L1307	@,
	ldr	r3, [sp, #148]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r10, r3	@ DetailMemSize$4, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ble	.L1308	@,
.L1307:
	ldr	r3, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #1	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1428	@,
.L1308:
	ldr	r1, [sp, #128]	@ D.36960, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	cmp	r1, #0	@ D.36960,
	beq	.L1428	@,
	ldr	r2, [sp, #132]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r9, r2	@ DetailMemSize, D.36958
	bgt	.L1428	@,
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	ldr	r3, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	beq	.L1397	@,
	add	r0, sp, #140	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	b	.L1397	@
.L1325:
	mov	r2, #16	@,
	add	r1, r4, #88	@, pChanOption,
	add	r0, sp, #140	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.36972, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.36972,
	beq	.L1331	@,
	ldr	r1, [sp, #144]	@ D.36960, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r1, #0	@ D.36960,
	beq	.L1332	@,
	ldr	r2, [sp, #148]	@ D.36956, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r10, r2	@ DetailMemSize$4, D.36956
	ble	.L1333	@,
.L1332:
	cmp	r3, #1	@ D.36972,
	beq	.L1334	@,
	ldr	r2, [sp, #148]	@ D.36956, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
.L1333:
	ldr	r0, [sp, #140]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1331	@
.L1336:
	mov	r2, #16	@,
	add	r1, r4, #120	@, pChanOption,
	add	r0, sp, #172	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.36972, MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	cmp	r3, #2	@ D.36972,
	beq	.L1397	@,
	ldr	r1, [sp, #176]	@ D.36960, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	cmp	r1, #0	@ D.36960,
	beq	.L1343	@,
	ldr	r2, [sp, #180]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	ldr	r0, [sp, #68]	@ DetailMemSize$12, %sfp
	cmp	r2, r0	@ D.36958, DetailMemSize$12
	bge	.L1344	@,
.L1343:
	cmp	r3, #1	@ D.36972,
	beq	.L1345	@,
	ldr	r2, [sp, #180]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
.L1344:
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1397	@
.L1439:
	mov	r1, #16	@,
	add	r0, sp, #188	@ tmp813,,
	bl	__memzero	@
	mov	r2, r8	@, DetailMemSize$8
	mov	r0, #1	@ tmp815,
	mov	r1, fp	@, D.36958
	str	r0, [sp]	@ tmp815,
	add	r3, sp, #188	@ tmp814,,
	ldr	r0, .L1448+4	@,
	bl	MEM_AllocMemBlock	@
	subs	r8, r0, #0	@ D.36958,
	bne	.L1428	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	lr, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	ip, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r2, r9	@, DetailMemSize
	ldr	r9, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	mov	r1, r8	@, D.36958
	str	r8, [sp]	@ D.36958,
	add	r3, sp, #188	@ tmp816,,
	ldr	r0, .L1448+8	@,
	mov	r8, #1	@ tmp817,
	str	lr, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	r8, [sp, #100]	@ tmp817, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	ip, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r9, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.36958,
	bne	.L1422	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r4, #4]	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B], MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B]
	ldr	r2, [sp, #196]	@ D.36958, MemRecord.PhyAddr
	mov	r0, #1	@ tmp818,
	ldr	r3, [sp, #192]	@ D.36968, MemRecord.VirAddr
	cmp	r1, #2	@ MEM[(VDEC_CHAN_PURPOSE_E *)pChanOption_14(D) + 4B],
	ldr	r1, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #92]	@ tmp818, MEM[(HI_S32 *)&ChanMemFlag]
	str	r2, [sp, #124]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r3, [sp, #128]	@ D.36968, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #132]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	beq	.L1313	@,
	str	fp, [sp]	@ D.36958,
	mov	r1, fp	@, D.36958
	add	r3, sp, #188	@ tmp819,,
	mov	r2, r10	@, DetailMemSize$4
	ldr	r0, .L1448+12	@,
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.36958,
	bne	.L1447	@,
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r0, #1	@ tmp820,
	ldr	r3, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #96]	@ tmp820, MEM[(HI_S32 *)&ChanMemFlag + 4B]
	str	r1, [sp, #140]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r2, [sp, #144]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r3, [sp, #148]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1397	@
.L1353:
	mov	r0, r8	@, D.36956
	bl	VCTRL_UnInstallChan	@
	ldr	r4, [r9, r8, asl #2]	@ D.36961, s_pstVfmwChan
	add	r0, sp, #188	@ tmp829,,
	mov	r2, #16	@,
	add	r3, r4, #208896	@ tmp734, D.36961,
	add	r1, r4, #152	@, D.36961,
	ldr	ip, [r4, #224]	@ _131->s32SelfAllocChanMem_ctx, _131->s32SelfAllocChanMem_ctx
	str	ip, [sp, #260]	@ _131->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	ldr	ip, [r4, #216]	@ _131->s32SelfAllocChanMem_vdh, _131->s32SelfAllocChanMem_vdh
	str	ip, [sp, #252]	@ _131->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	ip, [r4, #220]	@ _131->s32SelfAllocChanMem_scd, _131->s32SelfAllocChanMem_scd
	str	ip, [sp, #256]	@ _131->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r3, [r3, #2912]	@ _131->s32SelfAllocChanMem_pmv, _131->s32SelfAllocChanMem_pmv
	str	r3, [sp, #264]	@ _131->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r4, #200	@, D.36961,
	mov	r2, #16	@,
	add	r0, sp, #236	@,,
	bl	memcpy	@
	add	r1, r4, #168	@, D.36961,
	mov	r2, #16	@,
	add	r0, sp, #204	@,,
	bl	memcpy	@
	add	r1, r4, #184	@, D.36961,
	mov	r2, #16	@,
	add	r0, sp, #220	@,,
	bl	memcpy	@
	add	r1, r4, #104	@, D.36961,
	mov	r2, #12	@,
	add	r0, sp, #268	@,,
	bl	memcpy	@
	add	r1, r4, #210944	@, D.36961,
	add	r1, r1, #868	@,,
	mov	r2, #16	@,
	add	r0, sp, #280	@,,
	bl	memcpy	@
	mov	r0, r8	@, D.36956
	mov	r3, #0	@ tmp779,
	str	r3, [r9, r8, asl #2]	@ tmp779, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1448+48	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #188	@ tmp830,,
	mov	r0, r8	@, D.36956
	mvn	r8, #0	@ D.36956,
	bl	VCTRL_FreeChanResource	@
	b	.L1416	@
.L1446:
	bl	VCTRL_EnableAllInt	@
	sub	r0, r10, #3504	@, tmp614,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1428	@
.L1440:
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp516,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #124]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r1, [sp, #128]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r2, [sp, #132]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	str	r3, [sp, #92]	@ tmp516, MEM[(HI_S32 *)&ChanMemFlag]
	b	.L1323	@
.L1443:
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp598,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #172]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r1, [sp, #176]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	str	r2, [sp, #180]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r3, [sp, #104]	@ tmp598, MEM[(HI_S32 *)&ChanMemFlag + 12B]
	b	.L1397	@
.L1441:
	ldr	r2, [sp, #200]	@, MemRecord.Length
	ldr	r1, [sp, #192]	@, MemRecord.VirAddr
	ldr	r0, [sp, #196]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #196]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #192]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp554,
	ldr	r2, [sp, #200]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #140]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r1, [sp, #144]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r2, [sp, #148]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r3, [sp, #96]	@ tmp554, MEM[(HI_S32 *)&ChanMemFlag + 4B]
	b	.L1331	@
.L1313:
	str	r2, [sp, #140]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #144]	@ D.36968, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	fp, [sp, #148]	@ D.36958, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1397	@
.L1442:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1335	@
.L1445:
	ldr	r1, [sp, #128]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #124]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #124	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1347	@
.L1444:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1346	@
.L1447:
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
	b	.L1428	@
.L1449:
	.align	2
.L1448:
	.word	.LANCHOR2
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LANCHOR0
	.word	g_LastFrameRate
	.word	g_FrameRate
	.word	s_DnrChan
	.word	s_pFspInst
	.word	s_SmIIS
	.word	CapItem
	.word	.LANCHOR2-3504
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
	bhi	.L1474	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #208
	sub	sp, sp, #208	@,,
	add	r6, sp, #24	@ tmp198,,
	mov	r4, r0	@ eCapLevel, eCapLevel
	mov	r5, r1	@ pChanMem, pChanMem
	add	r0, sp, #56	@ tmp212,,
	mov	r1, #152	@,
	add	r7, sp, #40	@ tmp199,,
	bl	__memzero	@
	mov	r0, r6	@, tmp198
	mov	r1, #16	@,
	mov	r9, #2	@ tmp138,
	bl	__memzero	@
	mov	r0, r7	@, tmp199
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	r2, .L1475	@ tmp202,
	mov	r3, r4, asl #2	@ tmp200, eCapLevel,
	mov	ip, r4, asl #5	@ tmp201, eCapLevel,
	rsb	r0, r3, ip	@ tmp143, tmp200, tmp201
	sub	r1, r4, #18	@ tmp157, eCapLevel,
	add	r8, r2, r0	@ tmp144, tmp202, tmp143
	mov	lr, #1	@ tmp137,
	ldr	r0, [r2, r0]	@ tmp145, CapItem
	ldr	r10, [r8, #4]	@ tmp153, CapItem
	mov	r8, #136	@ tmp154,
	str	lr, [sp, #60]	@ tmp137, stChanOption.Purpose
	mov	lr, #32	@ tmp155,
	str	r0, [sp, #68]	@ tmp145, stChanOption.s32MaxWidth
	mov	r0, #256	@ tmp156,
	str	r10, [sp, #72]	@ tmp153, stChanOption.s32MaxHeight
	str	r9, [sp, #64]	@ tmp138, stChanOption.MemAllocMode
	str	r8, [sp, #76]	@ tmp154, stChanOption.s32MaxSliceNum
	str	lr, [sp, #80]	@ tmp155, stChanOption.s32MaxSpsNum
	str	r0, [sp, #84]	@ tmp156, stChanOption.s32MaxPpsNum
	cmp	r1, #7	@ tmp157,
	ldrls	pc, [pc, r1, asl #2]	@ tmp157
	b	.L1453	@
.L1455:
	.word	.L1462
	.word	.L1462
	.word	.L1462
	.word	.L1462
	.word	.L1462
	.word	.L1456
	.word	.L1456
	.word	.L1456
.L1462:
	mov	r0, #3	@ MinDispFspNum,
.L1454:
	rsb	r1, r3, ip	@ tmp162, tmp200, tmp201
	rsb	ip, r3, ip	@ tmp174, tmp200, tmp201
	add	r1, r2, r1	@ tmp163, tmp202, tmp162
	add	r2, r2, ip	@ tmp175, tmp202, tmp174
	str	r0, [sp, #116]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r3, #1	@ tmp167,
	ldr	r1, [r1, #12]	@ D.37028, CapItem
	ldr	r2, [r2, #24]	@ tmp177, CapItem
	cmp	r0, r1	@ MinDispFspNum, D.37028
	str	r3, [sp, #96]	@ tmp167, stChanOption.s32SupportBFrame
	rsblt	r1, r0, r1	@ D.37028, MinDispFspNum, D.37028
	mov	r0, r4	@, eCapLevel
	movge	r1, #1	@ tmp165,
	str	r2, [sp, #112]	@ tmp177, stChanOption.s32SCDBufSize
	cmp	r4, #24	@ eCapLevel,
	str	r1, [sp, #88]	@ D.37028, stChanOption.s32MaxRefFrameNum
	add	r2, sp, #12	@,,
	mov	r1, #0	@ tmp178,
	streq	r1, [sp, #88]	@ tmp178, stChanOption.s32MaxRefFrameNum
	str	r1, [sp, #120]	@ tmp178, stChanOption.s32SlotWidth
	str	r1, [sp, #124]	@ tmp178, stChanOption.s32SlotHeight
	mov	r1, sp	@,
	streq	r3, [sp, #116]	@ tmp167, stChanOption.s32DisplayFrameNum
	str	r3, [sp, #100]	@ tmp167, stChanOption.s32SupportH264
	str	r3, [sp, #108]	@ tmp167, stChanOption.s32ReRangeEn
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L1460	@,
	cmp	r5, #0	@ pChanMem,
	beq	.L1463	@,
	ldr	ip, [r5, #8]	@ D.37028, pChanMem_38(D)->Length
	cmp	ip, #0	@ D.37028,
	beq	.L1461	@,
	ldr	r3, [r5]	@ D.37028, pChanMem_38(D)->PhyAddr
	cmp	r3, #0	@ D.37028,
	beq	.L1460	@,
	ldr	r1, [r5, #4]	@ D.37029, pChanMem_38(D)->VirAddr
	cmp	r1, #0	@ D.37029,
	beq	.L1460	@,
	ldr	r2, [sp]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r0, [sp, #12]	@ ScdChanMemSize, ScdChanMemSize
	add	r2, r2, r0	@ D.37028, VdmChanMemSize, ScdChanMemSize
	cmp	ip, r2	@ D.37028, D.37028
	blt	.L1460	@,
	ldr	r5, [sp, #16]	@ D.37028, ScdChanMemSize
	add	r8, sp, #144	@ tmp191,,
	str	r3, [sp, #40]	@ D.37028, scd_MemRecord.PhyAddr
	add	lr, sp, #128	@ tmp193,,
	add	r9, r3, r5	@ D.37028, D.37028, D.37028
	add	r10, r1, r5	@ D.37029, D.37029, D.37028
	str	r5, [sp, #48]	@ D.37028, scd_MemRecord.Length
	rsb	r5, r5, ip	@ D.37028, D.37028, D.37028
	str	r1, [sp, #44]	@ D.37029, scd_MemRecord.VirAddr
	mov	ip, #1	@ OneChanMemFlag,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp199,,,,
	mov	r7, #3	@ tmp187,
	str	r9, [sp, #24]	@ D.37028, vdh_MemRecord.PhyAddr
	str	r10, [sp, #28]	@ D.37029, vdh_MemRecord.VirAddr
	str	r5, [sp, #32]	@ D.37028, vdh_MemRecord.Length
	stmia	r8, {r0, r1, r2, r3}	@ tmp191,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp198,,,,
	str	r7, [sp, #64]	@ tmp187, stChanOption.MemAllocMode
	stmia	lr, {r0, r1, r2, r3}	@ tmp193,,,,
.L1461:
	mov	r3, ip	@, OneChanMemFlag
	add	r1, sp, #56	@ tmp213,,
	mov	r0, r4	@, eCapLevel
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.37027,
.L1452:
	add	sp, sp, #208	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1456:
	mov	r0, #1	@ MinDispFspNum,
	b	.L1454	@
.L1453:
	mov	r0, #6	@ MinDispFspNum,
	b	.L1454	@
.L1474:
	mvn	r0, #0	@ D.37027,
	bx	lr	@
.L1460:
	mvn	r0, #0	@ D.37027,
	b	.L1452	@
.L1463:
	mov	ip, r5	@ OneChanMemFlag, pChanMem
	b	.L1461	@
.L1476:
	.align	2
.L1475:
	.word	CapItem
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
	ldr	r7, .L1500	@ tmp135,
	.pad #116
	sub	sp, sp, #116	@,,
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinLockIRQ	@
	cmp	r5, #0	@ ChanID,
	bne	.L1480	@,
	ldr	r6, .L1500+4	@ tmp223,
	ldr	r4, [r6]	@ D.37034, s_pstVfmwChan
	cmp	r4, #0	@ D.37034,
	beq	.L1480	@,
	ldr	r3, [r4, #4]	@ _9->s32IsOpen, _9->s32IsOpen
	cmp	r3, #1	@ _9->s32IsOpen,
	bne	.L1480	@,
	ldr	r1, .L1500+8	@ tmp141,
	mov	r3, #30	@ tmp142,
	ldr	r2, .L1500+12	@ tmp143,
	ldr	r0, .L1500+16	@,
	str	r3, [r1]	@ tmp142, g_FrameRate
	str	r3, [r2]	@ tmp142, g_LastFrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r5, r0, #0	@ ret,
	ldr	r0, .L1500+16	@,
	bne	.L1498	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ret
	bl	VCTRL_ResetChan	@
	ldr	r0, .L1500+16	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, .L1500+20	@ tmp155,
	ldr	r2, [r2, #1604]	@ D.37035, _25->stSynExtraData.s32DnrEnable
	str	r2, [r3, #2964]	@ D.37035, s_DnrChan[0].s32DnrEnable
	ldr	r3, [r4, #880]	@ D.37036, _9->eVidStd
	cmp	r3, #4	@ D.37036,
	beq	.L1482	@,
	sub	r2, r3, #10	@ D.37037, D.37036,
	cmp	r2, #2	@ D.37037,
	bhi	.L1483	@,
	ldr	r2, [r7, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1483	@,
.L1482:
	ldr	r3, [r6, #220]	@ D.37038, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37038,
	beq	.L1484	@,
.L1499:
	add	r0, r4, #210944	@, D.37034,
	add	r0, r0, #896	@,,
	blx	r3	@ D.37038
.L1484:
	mov	r0, #0	@,
	mov	r4, #0	@ tmp213,
	bl	VCTRL_UnInstallChan	@
	ldr	r5, [r6]	@ D.37034, s_pstVfmwChan
	mov	r2, #16	@,
	add	r0, sp, #4	@ tmp224,,
	add	r3, r5, #208896	@ tmp168, D.37034,
	add	r1, r5, #152	@, D.37034,
	ldr	lr, [r5, #224]	@ _36->s32SelfAllocChanMem_ctx, _36->s32SelfAllocChanMem_ctx
	ldr	ip, [r5, #216]	@ _36->s32SelfAllocChanMem_vdh, _36->s32SelfAllocChanMem_vdh
	ldr	r7, [r3, #2912]	@ _36->s32SelfAllocChanMem_pmv, _36->s32SelfAllocChanMem_pmv
	ldr	r3, [r5, #220]	@ _36->s32SelfAllocChanMem_scd, _36->s32SelfAllocChanMem_scd
	str	lr, [sp, #76]	@ _36->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	str	ip, [sp, #68]	@ _36->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	str	r3, [sp, #72]	@ _36->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	str	r7, [sp, #80]	@ _36->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r5, #200	@, D.37034,
	mov	r2, #16	@,
	add	r0, sp, #52	@,,
	bl	memcpy	@
	add	r1, r5, #168	@, D.37034,
	mov	r2, #16	@,
	add	r0, sp, #20	@,,
	bl	memcpy	@
	add	r1, r5, #184	@, D.37034,
	mov	r2, #16	@,
	add	r0, sp, #36	@,,
	bl	memcpy	@
	add	r1, r5, #104	@, D.37034,
	mov	r2, #12	@,
	add	r0, sp, #84	@,,
	bl	memcpy	@
	add	r1, r5, #210944	@, D.37034,
	add	r1, r1, #868	@,,
	mov	r2, #16	@,
	add	r0, sp, #96	@,,
	bl	memcpy	@
	ldr	r2, .L1500+24	@ tmp212,
	ldr	r3, .L1500+28	@ tmp214,
	mov	r0, r4	@, tmp213
	str	r4, [r6]	@ tmp213, s_pstVfmwChan
	str	r4, [r2, #56]	@ tmp213, s_SmIIS.pSmInstArray
	str	r4, [r3]	@ tmp213, s_pFspInst
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, tmp213
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, tmp213
	bl	DNR_CloseChan	@
	ldr	r0, .L1500+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1500+32	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, sp, #4	@ tmp225,,
	mov	r0, r4	@, tmp213
	bl	VCTRL_FreeChanResource	@
	mov	r0, r4	@ D.37033, tmp213
.L1479:
	add	sp, sp, #116	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1483:
	cmp	r3, #14	@ D.37036,
	bne	.L1484	@,
	ldr	r3, [r6, #220]	@ D.37038, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37038,
	bne	.L1499	@,
	b	.L1484	@
.L1480:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1500+32	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37033,
	add	sp, sp, #116	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L1498:
	bl	OSAL_SpinUnLockIRQ	@
	sub	r0, r7, #3504	@, tmp135,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37033,
	b	.L1479	@
.L1501:
	.align	2
.L1500:
	.word	.LANCHOR2
	.word	.LANCHOR0
	.word	g_FrameRate
	.word	g_LastFrameRate
	.word	g_SpinLockIrq_Destroy
	.word	s_DnrChan+73728
	.word	s_SmIIS
	.word	s_pFspInst
	.word	.LANCHOR2-3504
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
	ldr	r3, .L1504	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r3, r3, r4, lsl #2	@ tmp114, tmp113, ChanID,
	str	r2, [r3, #3604]	@ tmp116, g_DSPState
	ldmfd	sp!, {r4, pc}	@
.L1505:
	.align	2
.L1504:
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
	ldr	r5, .L1523	@ tmp140,
	ldr	r3, [r5, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L1512	@,
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1508	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChanWithOption	@
	mov	r3, #0	@ tmp122,
	str	r3, [r5, #3604]	@ tmp122, g_DSPState
.L1508:
	bl	FSP_Exit	@
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r2, #3	@ tmp124,
	str	r2, [r5, #36]	@ tmp124, s_VfmwCTrl.eTaskCommand
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1510	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.37070,
	bl	msleep	@
	b	.L1511	@
.L1522:
	bl	msleep	@
	subs	r4, r4, #1	@ D.37070, D.37070,
	beq	.L1510	@,
.L1511:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1522	@,
.L1510:
	mov	r1, #4	@,
	ldr	r0, .L1523+4	@,
	mov	r4, #0	@ tmp128,
	str	r4, [r5, #36]	@ tmp128, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1523+8	@,
	bl	CloseDrivers	@
	str	r4, [r5, #4]	@ tmp128, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r0, r4	@ D.37071, tmp128
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1512:
	mvn	r0, #0	@ D.37071,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1524:
	.align	2
.L1523:
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
	subs	r2, r0, #0	@ ChanID, ChanID
	bne	.L1531	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L1540	@ tmp164,
	ldr	r3, [r4]	@ D.37078, s_pstVfmwChan
	cmp	r3, #0	@ D.37078,
	beq	.L1534	@,
	ldr	r5, [r3, #4]	@ _10->s32IsOpen, _10->s32IsOpen
	cmp	r5, #1	@ _10->s32IsOpen,
	bne	.L1534	@,
	ldr	r3, [r3, #880]	@ _10->eVidStd, _10->eVidStd
	cmp	r3, #19	@ _10->eVidStd,
	bne	.L1539	@,
.L1534:
	mvn	r0, #0	@ D.37077,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1539:
	mov	r6, r2	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4]	@ D.37078, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _14->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _14->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _14->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r8, [r4]	@ D.37078, s_pstVfmwChan
	mov	r1, r7	@, pChanMemVdh
	mov	r2, #16	@,
	add	r0, r8, #168	@, D.37078,
	bl	memcpy	@
	ldr	r2, [r8, #180]	@, _19->stChanMem_vdh.Length
	ldr	r1, [r8, #172]	@, _19->stChanMem_vdh.VirAddr
	ldr	r0, [r8, #176]	@, _19->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r6	@, ChanID
	bl	SM_Start	@
	ldr	r3, [r4]	@ D.37078, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _28->s32Priority, _28->s32Priority
	str	r5, [r3, #8]	@ _10->s32IsOpen, _28->s32IsRun
	cmp	r2, #0	@ _28->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _28->s32StopSyntax
	bne	.L1527	@,
	cmp	r3, #0	@ D.37078,
	str	r5, [r3, #12]	@ _10->s32IsOpen, _28->s32Priority
	ldr	r0, .L1540+4	@,
	ldrne	r3, .L1540+8	@ tmp156,
	ldreq	r1, .L1540+12	@ tmp150,
	ldreq	r2, .L1540+8	@ tmp152,
	ldrne	r2, .L1540+12	@ tmp154,
	streq	r3, [r1, #-3460]	@ D.37078, PrioArray
	streq	r3, [r2]	@ D.37078, g_ChanCtx.PriorByChanId
	strne	r5, [r3]	@ _10->s32IsOpen, g_ChanCtx.PriorByChanId
	strne	r5, [r2, #-3460]	@ _10->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4]	@ D.37078, s_pstVfmwChan
.L1527:
	ldr	r3, [r3, #1580]	@ _56->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _56->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _56->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1530	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L1530:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37077,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1531:
	mvn	r0, #0	@ D.37077,
	bx	lr	@
.L1541:
	.align	2
.L1540:
	.word	.LANCHOR0
	.word	.LANCHOR2-3460
	.word	g_ChanCtx
	.word	.LANCHOR2
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	mov	r3, #0	@ tmp193,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1	@ pstCfg, pstCfg
	.pad #92
	sub	sp, sp, #92	@,,
	str	r3, [r1, #44]	@ tmp193, pstCfg_11(D)->s32VcmpEn
	bne	.L1545	@,
	ldr	r6, .L1579	@ tmp317,
	ldr	r5, [r6]	@ D.37095, s_pstVfmwChan
	cmp	r5, #0	@ D.37095,
	beq	.L1545	@,
	ldr	r8, [r5, #4]	@ _14->s32IsOpen, _14->s32IsOpen
	cmp	r8, #1	@ _14->s32IsOpen,
	bne	.L1545	@,
	bl	VCTRL_CheckChanWH	@
	subs	r9, r0, #0	@ D.37096,
	bne	.L1545	@,
	ldr	r3, [r4]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	bgt	.L1545	@,
	mov	r1, r4	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r7, r0, #0	@ D.37092,
	bne	.L1576	@,
.L1544:
	mov	r0, r7	@, D.37092
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1576:
	mov	r2, #72	@,
	mov	r1, r4	@, pstCfg
	add	r0, r5, #32	@, D.37095,
	add	r10, r4, #4	@ D.37102, pstCfg,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ D.37096, pstCfg_11(D)->s32ChanPriority
	mov	r1, #40	@,
	add	r0, sp, #48	@ tmp322,,
	str	r3, [r5, #12]	@ D.37096, _14->s32Priority
	ldr	r3, [r4]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	str	r3, [r5, #880]	@ pstCfg_11(D)->eVidStd, _14->eVidStd
	bl	__memzero	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #244]	@ D.37096, _27->s32ScdChanMemAddr
	mov	r0, r3	@, D.37096
	str	r3, [sp, #60]	@ D.37096, ScdInstCfg.BufPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r4]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	mov	r1, r10	@, D.37102
	ldr	ip, [r4, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	mov	r3, #49152	@ tmp212,
	ldr	r7, [r2, #256]	@ _34->s32ScdChanMemSize, _34->s32ScdChanMemSize
	mov	r2, #8	@,
	ldr	r5, [r4, #12]	@ pstCfg_11(D)->s32ChanPriority, pstCfg_11(D)->s32ChanPriority
	movt	r3, 4115	@ tmp212,
	str	lr, [sp, #56]	@ pstCfg_11(D)->eVidStd, ScdInstCfg.VidStd
	str	r3, [sp, #68]	@ tmp212, ScdInstCfg.RegPhyBaseAddr
	str	ip, [sp, #84]	@ pstCfg_11(D)->s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	str	r9, [sp, #80]	@ D.37096, ScdInstCfg.ScdLowdlyEnable
	str	r7, [sp, #64]	@ _34->s32ScdChanMemSize, ScdInstCfg.BufSize
	strb	r5, [sp, #52]	@ pstCfg_11(D)->s32ChanPriority, ScdInstCfg.Priority
	str	r0, [sp, #48]	@, ScdInstCfg.pBufVirAddr
	add	r0, sp, #72	@,,
	bl	memcpy	@
	add	r1, sp, #48	@ tmp323,,
	mov	r0, r9	@, D.37096
	bl	SM_Config	@
	add	r0, sp, #15	@ tmp324,,
	mov	r1, r8	@, _14->s32IsOpen
	bl	__memzero	@
	ldr	r3, [r4, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	cmp	r3, #0	@ pstCfg_11(D)->s32LowdBufEnable,
	bne	.L1577	@,
.L1546:
	ldr	r5, [r6]	@ D.37095, s_pstVfmwChan
	mov	r1, r10	@, D.37102
	mov	r7, #0	@ tmp237,
	mov	r2, #8	@,
	add	r0, r5, #1264	@, D.37095,
	ldr	r8, .L1579	@ tmp227,
	ldr	fp, [r5, #208]	@ _55->stChanMem_ctx.PhyAddr, _55->stChanMem_ctx.PhyAddr
	add	r0, r0, #12	@,,
	ldr	r3, [r5, #264]	@ _55->s32BpdChanMemSize, _55->s32BpdChanMemSize
	ldr	lr, [r5, #232]	@ _55->s32VdmChanMemSize, _55->s32VdmChanMemSize
	str	fp, [r5, #1392]	@ _55->stChanMem_ctx.PhyAddr, _55->stSynExtraData.s32ContextMemAddr
	str	r3, [r5, #928]	@ _55->s32BpdChanMemSize, _55->stSynExtraData.s32BpdMemSize
	ldr	ip, [r5, #260]	@ _55->s32BpdChanMemAddr, _55->s32BpdChanMemAddr
	ldr	r3, [r5, #268]	@ tmp326, _55->s32Vp8SegIdChanMemAddr
	ldr	r10, [r5, #212]	@ _55->stChanMem_ctx.Length, _55->stChanMem_ctx.Length
	ldr	r9, [r5, #228]	@ _55->s32VdmChanMemAddr, _55->s32VdmChanMemAddr
	ldr	fp, [r5, #272]	@ _55->s32Vp8SegIdChanMemSize, _55->s32Vp8SegIdChanMemSize
	str	lr, [r5, #916]	@ _55->s32VdmChanMemSize, _55->stSynExtraData.s32SyntaxMemSize
	str	ip, [r5, #924]	@ _55->s32BpdChanMemAddr, _55->stSynExtraData.s32BpdMemAddr
	str	r10, [r5, #1396]	@ _55->stChanMem_ctx.Length, _55->stSynExtraData.s32ContextMemSize
	str	r9, [r5, #912]	@ _55->s32VdmChanMemAddr, _55->stSynExtraData.s32SyntaxMemAddr
	str	r3, [r5, #932]	@ tmp326, _55->stSynExtraData.s32Vp8SegIdMemAddr
	str	fp, [r5, #936]	@ _55->s32Vp8SegIdChanMemSize, _55->stSynExtraData.s32Vp8SegIdMemSize
	ldr	r3, [r4, #16]	@ D.37096, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r5, #892]	@ D.37096, _55->stSynExtraData.s32OutErrThr
	ldr	r3, [r4, #16]	@ D.37096, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r5, #888]	@ D.37096, _55->stSynExtraData.s32RefErrThr
	ldr	r3, [r4, #24]	@ pstCfg_11(D)->s32DecMode, pstCfg_11(D)->s32DecMode
	str	r3, [r5, #896]	@ pstCfg_11(D)->s32DecMode, _55->stSynExtraData.s32DecMode
	ldr	r3, [r4, #28]	@ D.37096, pstCfg_11(D)->s32DecOrderOutput
	str	r3, [r5, #900]	@ D.37096, _55->stSynExtraData.s32DecOrderOutput
	ldr	r3, [r4, #32]	@ D.37096, pstCfg_11(D)->s32DnrTfEnable
	str	r3, [r5, #904]	@ D.37096, _55->stSynExtraData.s32DnrTfEnable
	ldr	r3, [r4, #44]	@ D.37096, pstCfg_11(D)->s32VcmpEn
	str	r7, [r5, #1616]	@ tmp237, _55->stSynExtraData.s32DSDWaitFlag
	str	r3, [r5, #1400]	@ D.37096, _55->stSynExtraData.s32Compress_en
	ldr	r3, [r4, #60]	@ pstCfg_11(D)->s32SupportAllP, pstCfg_11(D)->s32SupportAllP
	sub	r3, r3, #1	@ D.37104, pstCfg_11(D)->s32SupportAllP,
	clz	r3, r3	@ D.37104, D.37104
	mov	r3, r3, lsr #5	@ D.37104, D.37104,
	str	r3, [r5, #1416]	@ D.37104, _55->stSynExtraData.s32SupportAllP
	ldr	r3, [r4, #64]	@ D.37096, pstCfg_11(D)->s32ModuleLowlyEnable
	str	r3, [r5, #1420]	@ D.37096, _55->stSynExtraData.s32ModuleLowlyEnable
	bl	memcpy	@
	add	r3, r5, #208896	@ tmp319, D.37095,
	str	r7, [r5, #908]	@ tmp237, _55->stSynExtraData.s32DnrDispOutEnable
	ldr	r2, [r5, #880]	@ D.37094, _55->eVidStd
	ldr	r1, [r3, #2936]	@ _55->stSynCtx.eVidStd, _55->stSynCtx.eVidStd
	cmp	r1, r2	@ _55->stSynCtx.eVidStd, D.37094
	beq	.L1547	@,
	mov	r0, r7	@, tmp237
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	ldr	r5, [r8]	@ D.37095, s_pstVfmwChan
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	beq	.L1548	@,
	ldr	r2, [r5, #880]	@ D.37094, _98->eVidStd
	add	r3, r5, #208896	@ tmp319, D.37095,
.L1547:
	str	r2, [r3, #2936]	@ D.37094, _173->stSynCtx.eVidStd
	ldr	r3, [r5, #248]	@ D.37096, _173->s32SdecMemAddr
	mov	r0, r3	@, D.37096
	str	r3, [sp, #16]	@ D.37096, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, sp, #16	@,,
	ldr	r3, [r3, #252]	@ _117->s32SdecMemSize, _117->s32SdecMemSize
	str	r3, [sp, #24]	@ _117->s32SdecMemSize, stMem.Length
	str	r0, [sp, #20]	@, stMem.VirAddr
	mov	r0, #0	@,
	bl	RefreshDecCore	@
	subs	r7, r0, #0	@ D.37092,
	beq	.L1578	@,
.L1545:
	mvn	r7, #0	@ D.37092,
	mov	r0, r7	@, D.37092
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1548:
	ldr	r3, [r5, #1448]	@ MEM[(struct VDEC_CHAN_OPTION_S *)_98 + 1444B].Purpose, MEM[(struct VDEC_CHAN_OPTION_S *)_98 + 1444B].Purpose
	mov	r0, #0	@,
	ldr	ip, [r5, #252]	@ _98->s32SdecMemSize, _98->s32SdecMemSize
	cmp	r3, #2	@ MEM[(struct VDEC_CHAN_OPTION_S *)_98 + 1444B].Purpose,
	ldr	r3, [r5, #248]	@ _98->s32SdecMemAddr, _98->s32SdecMemAddr
	ldrne	r1, [r5, #1456]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_98 + 1444B].s32MaxWidth
	ldrne	r2, [r5, #1460]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_98 + 1444B].s32MaxHeight
	ldreq	r1, [r5, #1508]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_98 + 1444B].s32SlotWidth
	ldreq	r2, [r5, #1512]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_98 + 1444B].s32SlotHeight
	str	ip, [sp]	@ _98->s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1545	@,
	ldr	r5, [r6]	@ D.37095, s_pstVfmwChan
	add	r3, r5, #208896	@ tmp319, D.37095,
	ldr	r2, [r5, #880]	@ D.37094, _126->eVidStd
	b	.L1547	@
.L1577:
	add	r1, sp, #15	@ tmp325,,
	mov	r0, r9	@, D.37096
	strb	r8, [sp, #15]	@ _14->s32IsOpen, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1546	@
.L1578:
	mov	r1, #16	@,
	add	r0, sp, #32	@ tmp327,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.37096, pstCfg_11(D)->eVidStd
	sub	r2, r3, #10	@ D.37107, D.37096,
	cmp	r2, #2	@ D.37107,
	bhi	.L1551	@,
	ldr	r2, .L1579+4	@ tmp265,
	ldr	r2, [r2, #-3524]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L1554	@,
	cmp	r3, #12	@ D.37096,
	beq	.L1554	@,
	ldr	r3, [r4, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	eor	r3, r3, #1	@ tmp272, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	and	r3, r3, #1	@ D.37093, tmp272,
	strb	r3, [sp, #32]	@ D.37093, DnrChanCfgArgs.s32MirrorEn
.L1553:
	cmp	r3, #0	@ D.37093,
	ldr	r3, [r4, #44]	@ D.37096, pstCfg_11(D)->s32VcmpEn
	movne	r3, #0	@ tmp281,
.L1575:
	ldr	r5, [r6]	@ D.37095, s_pstVfmwChan
	ldr	r0, [r4, #48]	@ pstCfg_11(D)->s32WmEn, pstCfg_11(D)->s32WmEn
	ldr	r1, [r4, #52]	@ pstCfg_11(D)->s32VcmpWmStartLine, pstCfg_11(D)->s32VcmpWmStartLine
	ldr	ip, [r5, #1580]	@ _167->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _167->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r2, [r4, #56]	@ pstCfg_11(D)->s32VcmpWmEndLine, pstCfg_11(D)->s32VcmpWmEndLine
	strb	r3, [sp, #33]	@ tmp281, DnrChanCfgArgs.s32VcmpEn
	mov	r3, #1	@ tmp287,
	cmp	ip, r3	@ _167->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	strb	r0, [sp, #34]	@ pstCfg_11(D)->s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r1, [sp, #36]	@ pstCfg_11(D)->s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #40]	@ pstCfg_11(D)->s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	str	r3, [sp, #44]	@ tmp287, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	r4, .L1579	@ tmp288,
	beq	.L1558	@,
	add	r1, sp, #32	@ tmp328,,
	mov	r0, #0	@,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1545	@,
	ldr	r5, [r4]	@ D.37095, s_pstVfmwChan
.L1559:
	ldr	r3, .L1579+8	@ tmp303,
	cmp	r5, #0	@ D.37095,
	add	r2, r5, #172032	@ tmp300, D.37095,
	mov	r1, #0	@ tmp301,
	ldr	r0, .L1579+12	@,
	ldr	r3, [r3, #56]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	strb	r1, [r2, #4048]	@ tmp301, _136->FspInst.s32InstID
	add	r3, r3, #163840	@ tmp306, s_SmIIS.pSmInstArray,
	ldreq	r2, .L1579+4	@ tmp308,
	ldrne	r2, .L1579+16	@ tmp313,
	str	r1, [r3, #2228]	@ tmp301, _128->InstID
	ldreq	r3, .L1579+16	@ tmp310,
	ldrne	r3, [r5, #12]	@ D.37096, _136->s32Priority
	ldrne	r1, .L1579+4	@ tmp312,
	streq	r5, [r2, #-3456]	@ D.37095, PrioArray
	streq	r5, [r3]	@ D.37095, g_ChanCtx.PriorByChanId
	strne	r3, [r1, #-3456]	@ D.37096, PrioArray
	strne	r3, [r2]	@ D.37096, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	b	.L1544	@
.L1551:
	strb	r7, [sp, #32]	@ D.37092, DnrChanCfgArgs.s32MirrorEn
	ldr	r3, [r4, #44]	@ D.37096, pstCfg_11(D)->s32VcmpEn
	b	.L1575	@
.L1554:
	ldr	r3, [r4, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	and	r3, r3, #1	@ D.37093, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #32]	@ D.37093, DnrChanCfgArgs.s32MirrorEn
	b	.L1553	@
.L1558:
	add	r0, r5, #210944	@, D.37095,
	add	r1, sp, #32	@ tmp329,,
	mov	r2, #16	@,
	add	r0, r0, #824	@,,
	bl	memcpy	@
	b	.L1559	@
.L1580:
	.align	2
.L1579:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	s_SmIIS
	.word	.LANCHOR2-3456
	.word	g_ChanCtx
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
	mov	r1, sp	@,
	mov	r5, r4, lsr #24	@ ChanID, dat,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1581	@,
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	bic	r4, r4, #-16777216	@ Thr, dat,
	str	r4, [sp, #20]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L1581:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
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
	mov	r1, sp	@,
	mov	r5, r4, lsr #24	@ ChanID, dat,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1584	@,
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	and	r4, r4, #3	@ Mode, dat,
	str	r4, [sp, #24]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L1584:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
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
	mov	r1, sp	@,
	mov	r5, r4, lsr #24	@ ChanID, dat,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1587	@,
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	and	r4, r4, #3	@ DecOrderOutput, dat,
	str	r4, [sp, #28]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L1587:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
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
	mov	r1, sp	@,
	mov	r5, r4, lsr #24	@ ChanID, dat,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1590	@,
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	bic	r4, r4, #-16777216	@ Thr, dat,
	str	r4, [sp, #16]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L1590:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
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
	ldr	r4, [r0]	@ D.37141, *p_args_2(D)
	mov	r0, r4	@, D.37141
	bl	VCTRL_StopChan	@
	mov	r0, r4	@, D.37141
	bl	VCTRL_ResetChan	@
	mov	r0, r4	@, D.37141
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartChan	@
	.fnend
	.size	VfmwProc_TestRestartChan, .-VfmwProc_TestRestartChan
	.align	2
	.type	VfmwProc_TestResetChan, %function
VfmwProc_TestResetChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]	@, *p_args_2(D)
	b	VCTRL_ResetChan	@
	.fnend
	.size	VfmwProc_TestResetChan, .-VfmwProc_TestResetChan
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L1599	@,
	ldr	r3, .L1600	@ tmp114,
	ldr	r3, [r3]	@ D.37148, s_pstVfmwChan
	cmp	r3, #0	@ D.37148,
	beq	.L1599	@,
	ldr	r0, [r3, #676]	@ D.37147, _4->s32LastFrameIdPlus2
	bx	lr	@
.L1599:
	mvn	r0, #0	@ D.37147,
	bx	lr	@
.L1601:
	.align	2
.L1600:
	.word	.LANCHOR0
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
	bxne	lr	@
	ldr	r3, .L1607	@ tmp113,
	ldr	r3, [r3]	@ D.37151, s_pstVfmwChan
	cmp	r3, #0	@ D.37151,
	strne	r1, [r3, #676]	@ Value, _4->s32LastFrameIdPlus2
	bx	lr	@
.L1608:
	.align	2
.L1607:
	.word	.LANCHOR0
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
	ldr	r6, .L1632	@ tmp147,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r6, r0, asl #2]	@ D.37157, s_pstVfmwChan
	add	r2, r0, #208896	@ tmp128, D.37157,
	ldr	r2, [r2, #2936]	@ D.37158, _7->stSynCtx.eVidStd
	cmp	r2, #0	@ D.37158,
	beq	.L1611	@,
	cmp	r2, #3	@ D.37158,
	mvnne	r4, #0	@ ret,
	beq	.L1630	@,
.L1610:
	add	r3, r4, #1	@ tmp134, ret,
	cmp	r3, #1	@ tmp134,
	bhi	.L1613	@,
.L1631:
	ldr	r3, .L1632+4	@ tmp135,
	ldr	r3, [r3, #-3528]	@ D.37161, g_event_report
	cmp	r3, #0	@ D.37161,
	beq	.L1615	@,
	add	r2, sp, #8	@ tmp137,,
	mov	ip, #1	@ tmp136,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp136, para
	blx	r3	@ D.37161
.L1615:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1630:
	add	r0, r0, #210944	@, D.37157,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	add	r3, r4, #1	@ tmp134, ret,
	cmp	r3, #1	@ tmp134,
	bls	.L1631	@,
.L1613:
	ldr	r3, .L1632+8	@ tmp138,
	ldr	r3, [r3]	@ D.37163, g_chipID
	cmp	r3, #16	@ D.37163,
	bhi	.L1615	@,
	mov	r1, #1	@ tmp139,
	movw	r2, #32831	@ tmp140,
	mov	r3, r1, asl r3	@ D.37156, tmp139,
	bfi	r2, r1, #16, #16	@ tmp140, tmp139,,
	tst	r3, r2	@ D.37156, tmp140
	bne	.L1616	@,
	tst	r3, #3904	@ D.37156,
	beq	.L1615	@,
	ldr	r3, .L1632+4	@ tmp144,
	ldr	r3, [r3, #-3528]	@ D.37161, g_event_report
	cmp	r3, #0	@ D.37161,
	beq	.L1615	@,
	add	r2, sp, #8	@ tmp145,,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ D.37161
	b	.L1615	@
.L1611:
	add	r0, r0, #210944	@, D.37157,
	add	r0, r0, #896	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1610	@
.L1616:
	cmp	r5, #0	@ ChanId,
	bne	.L1615	@,
	ldr	r3, [r6]	@ D.37157, s_pstVfmwChan
	cmp	r3, #0	@ D.37157,
	strne	r4, [r3, #676]	@ ret, _31->s32LastFrameIdPlus2
	b	.L1615	@
.L1633:
	.align	2
.L1632:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	g_chipID
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
	ldr	r6, .L1646	@ tmp123,
	ldr	ip, [r6, r0, asl #2]	@ D.37178, s_pstVfmwChan
	cmp	ip, #0	@ D.37178,
	beq	.L1634	@,
	ldr	r5, [ip, #880]	@ VidStd, _4->eVidStd
	mov	r3, r2	@ pLumaInfo, pLumaInfo
	mov	r4, r0	@ ChanId, ChanId
	cmp	r5, #0	@ VidStd,
	beq	.L1636	@,
	cmp	r5, #3	@ VidStd,
	bne	.L1634	@,
	add	r0, ip, #210944	@, D.37178,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r6, r4, asl #2]	@ D.37178, s_pstVfmwChan
	add	r2, r3, #282624	@ tmp146, D.37178,
	ldrb	r2, [r2, #2929]	@ zero_extendqisi2	@ _17->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, _17->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _17->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	beq	.L1644	@,
.L1639:
	add	r3, r3, #208896	@ tmp156, D.37178,
	mov	r2, #0	@ tmp157,
	str	r2, [r3, #2948]	@ tmp157, _10->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
.L1634:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1636:
	add	r0, ip, #210944	@, D.37178,
	mov	r2, #1	@,
	str	r5, [sp]	@ VidStd,
	add	r0, r0, #896	@,,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r6, r4, asl #2]	@ D.37178, s_pstVfmwChan
	add	r2, r3, #225280	@ tmp130, D.37178,
	ldrb	r2, [r2, #116]	@ zero_extendqisi2	@ _12->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, _12->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _12->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L1645	@,
.L1638:
	add	r3, r3, #208896	@ tmp140, D.37178,
	mov	r2, #0	@ tmp141,
	str	r2, [r3, #3304]	@ tmp141, _31->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1644:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp149, s_pstVfmwChan
	mov	r1, #0	@ tmp152,
	add	r2, r3, #282624	@ tmp151, tmp149,
	strb	r1, [r2, #2929]	@ tmp152, _19->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	b	.L1639	@
.L1645:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp133, s_pstVfmwChan
	add	r2, r3, #225280	@ tmp135, tmp133,
	strb	r5, [r2, #116]	@ VidStd, _14->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	b	.L1638	@
.L1647:
	.align	2
.L1646:
	.word	.LANCHOR0
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
	bxne	lr	@
	ldr	r3, .L1660	@ tmp116,
	ldr	r3, [r3]	@ D.37184, s_pstVfmwChan
	cmp	r3, #0	@ D.37184,
	bxeq	lr	@
	ldr	r3, [r3, #8]	@ _4->s32IsRun, _4->s32IsRun
	cmp	r3, #1	@ _4->s32IsRun,
	bxne	lr	@
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
.L1661:
	.align	2
.L1660:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1669	@ tmp114,
	ldr	ip, [r3, #-3528]	@ D.37189, g_event_report
	cmp	ip, #0	@ D.37189,
	bxeq	lr	@
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r2, sp, #8	@ tmp116,,
	add	r3, r1, #2	@ D.37190, LastFrameID,
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ D.37190, para
	blx	ip	@ D.37189
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L1670:
	.align	2
.L1669:
	.word	.LANCHOR2
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
	ldr	r3, .L1672	@ tmp111,
	mov	r2, #1	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3452]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1673:
	.align	2
.L1672:
	.word	.LANCHOR2
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
	ldr	r3, .L1675	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3452]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1676:
	.align	2
.L1675:
	.word	.LANCHOR2
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
	ldr	r3, .L1678	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp114, ChanID,
	ldr	r0, [r0, #-3452]	@, g_EsBufValidFlag
	bx	lr	@
.L1679:
	.align	2
.L1678:
	.word	.LANCHOR2
	.fnend
	.size	VCTRL_IsEsBufEnable, .-VCTRL_IsEsBufEnable
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L1690	@
.L1683:
	.word	.L1682
	.word	.L1684
	.word	.L1685
	.word	.L1686
	.word	.L1687
	.word	.L1688
	.word	.L1689
.L1689:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #1	@ eYuvFormat,
	movne	r0, #7	@ eYuvFormat,
	bx	lr	@
.L1682:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #0	@ eYuvFormat,
	movne	r0, #6	@ eYuvFormat,
	bx	lr	@
.L1684:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	bx	lr	@
.L1685:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	bx	lr	@
.L1686:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	bx	lr	@
.L1687:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	bx	lr	@
.L1688:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	bx	lr	@
.L1690:
	mov	r0, #13	@ eYuvFormat,
	bx	lr	@
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
.LANCHOR3 = . + 0
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
.LANCHOR1 = . + 0
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
.LC0:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC1:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC2:
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC3:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC4:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC5:
	.ascii	"vdec_vdh\000"
	.space	3
.LC6:
	.ascii	"vdec_scd\000"
	.space	3
.LC7:
	.ascii	"vdec_dnr\000"
	.space	3
.LC8:
	.ascii	"VFMW_Hal_%d\000"
.LC9:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC10:
	.ascii	"extra_ref=\000"
	.space	1
.LC11:
	.ascii	"=\000"
	.space	2
.LC12:
	.ascii	" \000"
	.space	2
.LC13:
	.ascii	"extra_disp=\000"
.LC14:
	.ascii	"extra_cmd=\000"
	.space	1
.LC15:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC16:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC17:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC18:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC19:
	.ascii	"VFMW_Chan_Pmv\000"
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
.LANCHOR2 = . + 8184
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 4
s_pstVfmwChan:
	.space	4
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.32223, %object
	.size	save_file_cnt.32223, 4
save_file_cnt.32223:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.32217, %object
	.size	save_file_cnt.32217, 4
save_file_cnt.32217:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.32211, %object
	.size	save_file_cnt.32211, 4
save_file_cnt.32211:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_scd_vir, %object
	.size	g_scd_vir, 4
g_scd_vir:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	LastEventTime.31133, %object
	.size	LastEventTime.31133, 4
LastEventTime.31133:
	.space	4
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	FspInstInfo.31264, %object
	.size	FspInstInfo.31264, 3340
FspInstInfo.31264:
	.space	3340
	.type	PrioArray.31485, %object
	.size	PrioArray.31485, 4
PrioArray.31485:
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
	.type	last_rec_pos_time.32040, %object
	.size	last_rec_pos_time.32040, 4
last_rec_pos_time.32040:
	.space	4
	.type	last_rec_pos_report_time.32041, %object
	.size	last_rec_pos_report_time.32041, 4
last_rec_pos_report_time.32041:
	.space	4
	.type	last_rec_pos_decparam_time.32042, %object
	.size	last_rec_pos_decparam_time.32042, 4
last_rec_pos_decparam_time.32042:
	.space	4
	.type	ChanPriTab.31990, %object
	.size	ChanPriTab.31990, 4
ChanPriTab.31990:
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
	.type	PrioArray.31494, %object
	.size	PrioArray.31494, 4
PrioArray.31494:
	.space	4
	.type	PrioArray.31594, %object
	.size	PrioArray.31594, 4
PrioArray.31594:
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
