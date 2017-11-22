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
	.file	"vfmw.c"
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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vfmw)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/.vfmw.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/vfmw.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/vfmw.o
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
	.global	VDM_OpenHardware
	.type	VDM_OpenHardware, %function
VDM_OpenHardware:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2	@ tmp115,
	ldr	r2, [r3]	@ D.34582, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34583, _2->PERI_CRG30.u32
	orr	r3, r3, #3	@ u32TmpValue, D.34583,
	bfc	r3, #4, #1	@ u32TmpValue,,
	bfc	r3, #6, #1	@ u32TmpValue,,
	bfc	r3, #8, #2	@ u32TmpValue,,
	bfc	r3, #12, #5	@ u32TmpValue,,
	bfc	r3, #17, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	g_pstRegCrg
	.fnend
	.size	VDM_OpenHardware, .-VDM_OpenHardware
	.align	2
	.global	VDM_CloseHardware
	.type	VDM_CloseHardware, %function
VDM_CloseHardware:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5	@ tmp115,
	ldr	r2, [r3]	@ D.34586, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34587, _2->PERI_CRG30.u32
	orr	r3, r3, #80	@ u32TmpValue, D.34587,
	bfc	r3, #0, #1	@ u32TmpValue,,
	bfc	r3, #1, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	bx	lr	@
.L6:
	.align	2
.L5:
	.word	g_pstRegCrg
	.fnend
	.size	VDM_CloseHardware, .-VDM_CloseHardware
	.align	2
	.global	SCD_OpenHardware
	.type	SCD_OpenHardware, %function
SCD_OpenHardware:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8	@ tmp114,
	ldr	r2, [r3]	@ D.34590, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34591, _2->PERI_CRG30.u32
	bfc	r3, #5, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	bx	lr	@
.L9:
	.align	2
.L8:
	.word	g_pstRegCrg
	.fnend
	.size	SCD_OpenHardware, .-SCD_OpenHardware
	.align	2
	.global	SCD_CloseHardware
	.type	SCD_CloseHardware, %function
SCD_CloseHardware:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11	@ tmp114,
	ldr	r2, [r3]	@ D.34594, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34595, _2->PERI_CRG30.u32
	orr	r3, r3, #32	@ u32TmpValue, D.34595,
	str	r3, [r2, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	bx	lr	@
.L12:
	.align	2
.L11:
	.word	g_pstRegCrg
	.fnend
	.size	SCD_CloseHardware, .-SCD_CloseHardware
	.align	2
	.global	DNR_OpenHardware
	.type	DNR_OpenHardware, %function
DNR_OpenHardware:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L14	@ tmp114,
	ldr	r2, [r3]	@ D.34598, g_pstRegCrg
	ldr	r3, [r2, #112]	@ D.34599, _2->PERI_CRG28.u32
	orr	r3, r3, #1	@ u32TmpValue, D.34599,
	bfc	r3, #1, #1	@ u32TmpValue,,
	str	r3, [r2, #112]	@ u32TmpValue, _2->PERI_CRG28.u32
	bx	lr	@
.L15:
	.align	2
.L14:
	.word	g_pstRegCrg
	.fnend
	.size	DNR_OpenHardware, .-DNR_OpenHardware
	.align	2
	.global	BPD_OpenHardware
	.type	BPD_OpenHardware, %function
BPD_OpenHardware:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	BPD_OpenHardware, .-BPD_OpenHardware
	.align	2
	.global	VDEC_CID_DestroyChan
	.type	VDEC_CID_DestroyChan, %function
VDEC_CID_DestroyChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@, pArgs
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L19	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_DestroyChan	@
	adds	r0, r0, #0	@ D.34604,,
	movne	r0, #1	@ D.34604,
	rsb	r0, r0, #0	@, D.34604
	ldmfd	sp!, {r4, pc}	@
.L20:
	.align	2
.L19:
	.word	.LC0
	.fnend
	.size	VDEC_CID_DestroyChan, .-VDEC_CID_DestroyChan
	.align	2
	.global	VDEC_CID_DestroyChanWithOption
	.type	VDEC_CID_DestroyChanWithOption, %function
VDEC_CID_DestroyChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@, pArgs
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L23	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	adds	r0, r0, #0	@ D.34609,,
	movne	r0, #1	@ D.34609,
	rsb	r0, r0, #0	@, D.34609
	ldmfd	sp!, {r4, pc}	@
.L24:
	.align	2
.L23:
	.word	.LC0
	.fnend
	.size	VDEC_CID_DestroyChanWithOption, .-VDEC_CID_DestroyChanWithOption
	.align	2
	.global	VDEC_CID_StartChan
	.type	VDEC_CID_StartChan, %function
VDEC_CID_StartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r1	@, pArgs
	ldr	r5, .L27	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L27+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_EnableEsBuf	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34613, ret,
	movne	r0, #1	@ D.34613,
	rsb	r0, r0, #0	@, D.34613
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L28:
	.align	2
.L27:
	.word	g_TaskLock
	.word	.LC0
	.fnend
	.size	VDEC_CID_StartChan, .-VDEC_CID_StartChan
	.align	2
	.global	VDEC_CID_StopChan
	.type	VDEC_CID_StopChan, %function
VDEC_CID_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r1	@, pArgs
	ldr	r5, .L31	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L31+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34617, ret,
	movne	r0, #1	@ D.34617,
	rsb	r0, r0, #0	@, D.34617
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L32:
	.align	2
.L31:
	.word	g_TaskLock
	.word	.LC0
	.fnend
	.size	VDEC_CID_StopChan, .-VDEC_CID_StopChan
	.align	2
	.global	VDEC_CID_ResetChan
	.type	VDEC_CID_ResetChan, %function
VDEC_CID_ResetChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r1	@, pArgs
	ldr	r5, .L35	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L35+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34621, ret,
	movne	r0, #1	@ D.34621,
	rsb	r0, r0, #0	@, D.34621
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L36:
	.align	2
.L35:
	.word	g_TaskLock
	.word	.LC0
	.fnend
	.size	VDEC_CID_ResetChan, .-VDEC_CID_ResetChan
	.align	2
	.global	VDEC_CID_ReleaseStream
	.type	VDEC_CID_ReleaseStream, %function
VDEC_CID_ReleaseStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, r1	@, pArgs
	ldr	r5, .L39	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L39+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ReleaseStream	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp118
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34625, ret,
	movne	r0, #1	@ D.34625,
	rsb	r0, r0, #0	@, D.34625
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L40:
	.align	2
.L39:
	.word	g_TaskLock
	.word	.LC0
	.fnend
	.size	VDEC_CID_ReleaseStream, .-VDEC_CID_ReleaseStream
	.align	2
	.global	VDEC_CID_ReportDmxBufRls
	.type	VDEC_CID_ReportDmxBufRls, %function
VDEC_CID_ReportDmxBufRls:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L48	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_IsEsBufEnable	@
	cmp	r0, #0	@,
	beq	.L42	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_DisableEsBuf	@
.L42:
	ldr	r0, .L48	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L49:
	.align	2
.L48:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_ReportDmxBufRls, .-VDEC_CID_ReportDmxBufRls
	.align	2
	.global	VDEC_CID_SetFrameRate
	.type	VDEC_CID_SetFrameRate, %function
VDEC_CID_SetFrameRate:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L55	@,
	ldr	r1, [r1]	@ D.34636, MEM[(HI_S32 *)pArgs_3(D)]
	mov	r3, #0	@ D.34635,
	ldr	r2, .L56	@ tmp118,
	str	r1, [r2, r0, asl #2]	@ D.34636, g_FrameRate
	mov	r0, r3	@, D.34635
	bx	lr	@
.L55:
	ldr	ip, .L56+4	@ tmp117,
	mov	r0, r1	@ pArgs, pArgs
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	movw	r3, #995	@,
	ldr	r2, .L56+8	@,
	ldr	r1, .L56+12	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.34635,
	mov	r0, r3	@, D.34635
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L57:
	.align	2
.L56:
	.word	.LANCHOR1
	.word	.LC2
	.word	.LANCHOR0
	.word	.LC1
	.fnend
	.size	VDEC_CID_SetFrameRate, .-VDEC_CID_SetFrameRate
	.align	2
	.global	VDEC_CID_GetSCDBufferVirAddr
	.type	VDEC_CID_GetSCDBufferVirAddr, %function
VDEC_CID_GetSCDBufferVirAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L63	@,
	ldr	r2, .L64	@ tmp119,
	mov	r3, #0	@ D.34644,
	ldr	r2, [r2, r0, asl #2]	@ D.34645, g_scd_vir
	mov	r0, r3	@, D.34644
	str	r2, [r1]	@ D.34645, MEM[(HI_U32 *)pArgs_3(D)]
	bx	lr	@
.L63:
	ldr	ip, .L64+4	@ tmp118,
	mov	r0, r1	@ pArgs, pArgs
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r3, #1004	@,
	ldr	r2, .L64+8	@,
	ldr	r1, .L64+12	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.34644,
	mov	r0, r3	@, D.34644
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L65:
	.align	2
.L64:
	.word	g_scd_vir
	.word	.LC2
	.word	.LANCHOR0+24
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetSCDBufferVirAddr, .-VDEC_CID_GetSCDBufferVirAddr
	.align	2
	.global	VDEC_Control
	.type	VDEC_Control, %function
VDEC_Control:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L86	@ tmp152,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	bne	.L84	@,
	cmp	r1, #10	@ eCmdID,
	ldrne	r3, .L86+4	@ ivtmp.145,
	bne	.L73	@,
	b	.L85	@
.L74:
	ldr	lr, [r3, #12]	@ pTargetHandler, MEM[base: _3, offset: 12B]
	add	r3, r3, #8	@ ivtmp.145, ivtmp.145,
	cmp	lr, #0	@ pTargetHandler,
	beq	.L68	@,
	cmp	ip, r1	@ D.34665, eCmdID
	beq	.L71	@,
.L73:
	ldr	ip, [r3, #8]	@ D.34665, MEM[base: _3, offset: 8B]
	cmp	ip, #41	@ D.34665,
	bne	.L74	@,
.L68:
	mov	r2, r1	@, eCmdID
	mov	r0, #1	@,
	ldr	r1, .L86+8	@,
	bl	dprint_vfmw	@
.L80:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L85:
	ldr	lr, .L86+12	@ pTargetHandler,
.L71:
	mov	r3, lr	@ pTargetHandler, pTargetHandler
	mov	r1, r2	@, pArgs
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ pTargetHandler
.L84:
	ldr	r1, .L86+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L80	@
.L87:
	.align	2
.L86:
	.word	.LANCHOR2
	.word	.LANCHOR0+56
	.word	.LC4
	.word	VDEC_CID_GetChanState
	.word	.LC3
	.fnend
	.size	VDEC_Control, .-VDEC_Control
	.align	2
	.global	VDEC_Exit
	.type	VDEC_Exit, %function
VDEC_Exit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	subs	r4, r0, #0	@ ret,
	bne	.L91	@,
	ldr	r5, .L93	@ tmp118,
	ldr	r3, [r5, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r3, #1	@ D.34673, g_VfmwInitCount,
	str	r3, [r5, #4]	@ D.34673, g_VfmwInitCount
	cmp	r3, #0	@ D.34673,
	ble	.L90	@,
	bl	OSAL_UP	@
	mov	r0, r4	@ D.34672, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L90:
	bl	VCTRL_CloseVfmw	@
	mov	r6, r0	@ ret,
	bl	MEM_ManagerClearOperation	@
	str	r4, [r5]	@ ret, g_VfmwEnableFlag
	bl	OSAL_UP	@
	adds	r0, r6, #0	@ D.34674, ret,
	movne	r0, #1	@ D.34674,
	rsb	r0, r0, #0	@ D.34672, D.34674
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L91:
	mvn	r0, #0	@ D.34672,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L94:
	.align	2
.L93:
	.word	.LANCHOR2
	.fnend
	.size	VDEC_Exit, .-VDEC_Exit
	.align	2
	.global	VDEC_CID_GetChanState
	.type	VDEC_CID_GetChanState, %function
VDEC_CID_GetChanState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L99	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L100	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanState	@
	ldr	r0, .L100	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34680,
.L97:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L99:
	ldr	ip, .L100+4	@ tmp117,
	mov	r0, r4	@, pArgs
	movw	r3, #422	@,
	ldr	r2, .L100+8	@,
	ldr	r1, .L100+12	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34680,
	b	.L97	@
.L101:
	.align	2
.L100:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+336
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetChanState, .-VDEC_CID_GetChanState
	.align	2
	.global	VDEC_CID_GetUsrDecFrame
	.type	VDEC_CID_GetUsrDecFrame, %function
VDEC_CID_GetUsrDecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L106	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L107	@,
	bl	OSAL_SpinLockIRQ	@
	add	r1, sp, #8	@,,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r2, [sp, #8]	@ stMem.PhyAddr, stMem.PhyAddr
	ldr	r3, [sp, #16]	@ stMem.Length, stMem.Length
	stmia	r4, {r2, r3}	@ pArgs,,
	adds	r0, r0, #0	@ D.34690,,
	movne	r0, #1	@ D.34690,
	rsb	r4, r0, #0	@ D.34689, D.34690
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L107	@,
	bl	OSAL_SpinUnLockIRQ	@
.L104:
	mov	r0, r4	@, D.34689
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L106:
	ldr	ip, .L107+4	@ tmp122,
	mov	r0, r4	@, pArgs
	movw	r3, #438	@,
	ldr	r2, .L107+8	@,
	ldr	r1, .L107+12	@,
	mvn	r4, #0	@ D.34689,
	str	ip, [sp]	@ tmp122,
	bl	dprint_vfmw	@
	b	.L104	@
.L108:
	.align	2
.L107:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+360
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetUsrDecFrame, .-VDEC_CID_GetUsrDecFrame
	.align	2
	.global	VDEC_CID_RWZBState
	.type	VDEC_CID_RWZBState, %function
VDEC_CID_RWZBState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L113	@,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L114	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, .L114+4	@ tmp119,
	movw	r3, #11160	@ tmp121,
	ldr	r2, [r5]	@ D.34698, MEM[(HI_U32 *)pArgs_2(D)]
	movt	r3, 1	@ tmp121,
	mla	r4, r3, r4, r1	@ tmp122, tmp121, ChanID, tmp119
	str	r2, [r4, #24]	@ D.34698, s_DnrChan[ChanID_7(D)].userSetRwzb_state
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L114	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L113:
	ldr	ip, .L114+8	@ tmp117,
	mov	r0, r5	@, pArgs
	movw	r3, #885	@,
	ldr	r2, .L114+12	@,
	ldr	r1, .L114+16	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L115:
	.align	2
.L114:
	.word	g_TaskLock
	.word	s_DnrChan
	.word	.LC2
	.word	.LANCHOR0+384
	.word	.LC1
	.fnend
	.size	VDEC_CID_RWZBState, .-VDEC_CID_RWZBState
	.align	2
	.global	VDEC_CID_PutUsrDecFrame
	.type	VDEC_CID_PutUsrDecFrame, %function
VDEC_CID_PutUsrDecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L120	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L121	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_PutUsrdecFrame	@
	adds	r0, r0, #0	@ D.34706,,
	movne	r0, #1	@ D.34706,
	rsb	r4, r0, #0	@ D.34705, D.34706
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L121	@,
	bl	OSAL_SpinUnLockIRQ	@
.L118:
	mov	r0, r4	@, D.34705
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L120:
	ldr	ip, .L121+4	@ tmp120,
	mov	r0, r4	@, pArgs
	mov	r3, #456	@,
	ldr	r2, .L121+8	@,
	ldr	r1, .L121+12	@,
	mvn	r4, #0	@ D.34705,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L118	@
.L122:
	.align	2
.L121:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+404
	.word	.LC1
	.fnend
	.size	VDEC_CID_PutUsrDecFrame, .-VDEC_CID_PutUsrDecFrame
	.align	2
	.global	VDEC_CID_GetChanMemSize
	.type	VDEC_CID_GetChanMemSize, %function
VDEC_CID_GetChanMemSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r2, r0	@, ChanID
	mov	r5, r1	@ pArgs, pArgs
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r1, .L131	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r5, #0	@ pArgs,
	beq	.L129	@,
	ldr	r0, .L131+4	@,
	bl	OSAL_SpinLockIRQ	@
	add	r2, sp, #20	@,,
	add	r1, sp, #8	@,,
	ldr	r0, [r5]	@, MEM[(HI_S32 *)pArgs_8(D)]
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@ D.34719
	mvnne	r4, #0	@ ret,
	beq	.L130	@,
.L126:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L131+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34718, ret
.L125:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L130:
	ldr	r3, [sp, #8]	@ VdmMem, VdmMem
	mov	r4, r0	@ ret, D.34719
	ldr	r1, [sp, #20]	@ ScdMem, ScdMem
	ldr	r2, [sp, #12]	@ VdmMem, VdmMem
	add	r1, r3, r1	@ D.34719, VdmMem, ScdMem
	ldr	ip, [sp, #24]	@ ScdMem, ScdMem
	ldr	r3, [sp, #16]	@ VdmMem, VdmMem
	ldr	r0, [sp, #28]	@ ScdMem, ScdMem
	add	r2, r2, ip	@ D.34719, VdmMem, ScdMem
	stmia	r5, {r1, r2}	@ pArgs,,
	add	r3, r3, r0	@ D.34719, VdmMem, ScdMem
	str	r3, [r5, #8]	@ D.34719, MEM[(struct CHAN_MEM_BUDGET_S *)pArgs_8(D)].FluentMemSize
	b	.L126	@
.L129:
	ldr	ip, .L131+8	@ tmp131,
	mov	r0, r5	@, pArgs
	mov	r3, #488	@,
	ldr	r2, .L131+12	@,
	ldr	r1, .L131+16	@,
	str	ip, [sp]	@ tmp131,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34718,
	b	.L125	@
.L132:
	.align	2
.L131:
	.word	.LC5
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+428
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetChanMemSize, .-VDEC_CID_GetChanMemSize
	.align	2
	.global	VDEC_CID_GetChanDetailMemSizeWithOption
	.type	VDEC_CID_GetChanDetailMemSizeWithOption, %function
VDEC_CID_GetChanDetailMemSizeWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r1, .L140	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L139	@,
	ldr	r0, .L140+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ pArgs,,
	mov	r3, #1	@,
	add	r2, sp, #8	@,,
	bl	VCTRL_GetChanMemSizeWithOption	@
	cmp	r0, #0	@ D.34731
	addeq	r1, sp, #12	@,,
	ldreq	ip, [sp, #8]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	moveq	r5, r0	@ ret, D.34731
	ldmeqia	r1, {r1, r2, r3}	@,,,
	mvnne	r5, #0	@ ret,
	streq	ip, [r4]	@ DetailMemSize.VdhDetailMem, MEM[(HI_S32 *)pArgs_8(D)]
	stmeqib	r4, {r1, r2, r3}	@ pArgs,,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L140+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@ D.34730, ret
.L135:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L139:
	ldr	ip, .L140+8	@ tmp128,
	mov	r0, r4	@, pArgs
	movw	r3, #519	@,
	ldr	r2, .L140+12	@,
	ldr	r1, .L140+16	@,
	str	ip, [sp]	@ tmp128,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34730,
	b	.L135	@
.L141:
	.align	2
.L140:
	.word	.LC5
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+452
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetChanDetailMemSizeWithOption, .-VDEC_CID_GetChanDetailMemSizeWithOption
	.align	2
	.global	VDEC_CID_CreateChan
	.type	VDEC_CID_CreateChan, %function
VDEC_CID_CreateChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, .L147	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L146	@,
	add	r1, r4, #4	@, pArgs,
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_7(D)]
	bl	VCTRL_CreateChan	@
	ldr	r1, .L147+4	@,
	mov	r5, r0	@ ret,
	mov	r2, r0	@, ret
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, r5, asr #31	@ D.34741, ret,
	str	r5, [r4]	@ ret, MEM[(HI_S32 *)pArgs_7(D)]
.L144:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L146:
	ldr	ip, .L147+8	@ tmp124,
	mov	r0, r4	@, pArgs
	movw	r3, #549	@,
	ldr	r2, .L147+12	@,
	ldr	r1, .L147+16	@,
	str	ip, [sp]	@ tmp124,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34741,
	b	.L144	@
.L148:
	.align	2
.L147:
	.word	.LC5
	.word	.LC6
	.word	.LC2
	.word	.LANCHOR0+492
	.word	.LC1
	.fnend
	.size	VDEC_CID_CreateChan, .-VDEC_CID_CreateChan
	.align	2
	.global	VDEC_CID_CreateChanWithOption
	.type	VDEC_CID_CreateChanWithOption, %function
VDEC_CID_CreateChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, .L154	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L153	@,
	mov	r3, #0	@,
	mov	r2, #2	@,
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_CreateChanWithOption	@
	mov	r3, r0	@ ret,
	mov	r0, r0, asr #31	@ D.34754, ret,
	str	r3, [r4]	@ ret, MEM[(HI_S32 *)pArgs_7(D)]
.L151:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L153:
	ldr	ip, .L154+4	@ tmp125,
	mov	r0, r4	@, pArgs
	movw	r3, #570	@,
	ldr	r2, .L154+8	@,
	ldr	r1, .L154+12	@,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34754,
	b	.L151	@
.L155:
	.align	2
.L154:
	.word	.LC5
	.word	.LC2
	.word	.LANCHOR0+512
	.word	.LC1
	.fnend
	.size	VDEC_CID_CreateChanWithOption, .-VDEC_CID_CreateChanWithOption
	.align	2
	.global	VDEC_CID_GetChanCfg
	.type	VDEC_CID_GetChanCfg, %function
VDEC_CID_GetChanCfg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L160	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L161	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	adds	r0, r0, #0	@ D.34766,,
	movne	r0, #1	@ D.34766,
	rsb	r4, r0, #0	@ D.34765, D.34766
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L161	@,
	bl	OSAL_SpinUnLockIRQ	@
.L158:
	mov	r0, r4	@, D.34765
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L160:
	ldr	ip, .L161+4	@ tmp120,
	mov	r0, r4	@, pArgs
	mov	r3, #608	@,
	ldr	r2, .L161+8	@,
	ldr	r1, .L161+12	@,
	mvn	r4, #0	@ D.34765,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L158	@
.L162:
	.align	2
.L161:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+544
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetChanCfg, .-VDEC_CID_GetChanCfg
	.align	2
	.global	VDEC_CID_CfgChan
	.type	VDEC_CID_CfgChan, %function
VDEC_CID_CfgChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L167	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L168	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigChan	@
	adds	r0, r0, #0	@ D.34775,,
	movne	r0, #1	@ D.34775,
	rsb	r4, r0, #0	@ D.34774, D.34775
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L168	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_LoadDspCode	@
.L165:
	mov	r0, r4	@, D.34774
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L167:
	ldr	ip, .L168+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #623	@,
	ldr	r2, .L168+8	@,
	ldr	r1, .L168+12	@,
	mvn	r4, #0	@ D.34774,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L165	@
.L169:
	.align	2
.L168:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+564
	.word	.LC1
	.fnend
	.size	VDEC_CID_CfgChan, .-VDEC_CID_CfgChan
	.align	2
	.global	VDEC_CID_StartChanWithOption
	.type	VDEC_CID_StartChanWithOption, %function
VDEC_CID_StartChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L174	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L175	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_StartChanWithOption	@
	adds	r0, r0, #0	@ D.34784,,
	movne	r0, #1	@ D.34784,
	rsb	r4, r0, #0	@ D.34783, D.34784
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L175	@,
	bl	OSAL_SpinUnLockIRQ	@
.L172:
	mov	r0, r4	@, D.34783
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L174:
	ldr	ip, .L175+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #657	@,
	ldr	r2, .L175+8	@,
	ldr	r1, .L175+12	@,
	mvn	r4, #0	@ D.34783,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L172	@
.L176:
	.align	2
.L175:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+584
	.word	.LC1
	.fnend
	.size	VDEC_CID_StartChanWithOption, .-VDEC_CID_StartChanWithOption
	.align	2
	.global	VDEC_CID_ResetChanWithOption
	.type	VDEC_CID_ResetChanWithOption, %function
VDEC_CID_ResetChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L181	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L182	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.34793,,
	movne	r0, #1	@ D.34793,
	rsb	r4, r0, #0	@ D.34792, D.34793
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L182	@,
	bl	OSAL_SpinUnLockIRQ	@
.L179:
	mov	r0, r4	@, D.34792
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L181:
	ldr	ip, .L182+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #702	@,
	ldr	r2, .L182+8	@,
	ldr	r1, .L182+12	@,
	mvn	r4, #0	@ D.34792,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L179	@
.L183:
	.align	2
.L182:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+616
	.word	.LC1
	.fnend
	.size	VDEC_CID_ResetChanWithOption, .-VDEC_CID_ResetChanWithOption
	.align	2
	.global	VDEC_CID_SetStreamIntf
	.type	VDEC_CID_SetStreamIntf, %function
VDEC_CID_SetStreamIntf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L188	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L189	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetStreamInterface	@
	adds	r0, r0, #0	@ D.34802,,
	movne	r0, #1	@ D.34802,
	rsb	r4, r0, #0	@ D.34801, D.34802
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L189	@,
	bl	OSAL_SpinUnLockIRQ	@
.L186:
	mov	r0, r4	@, D.34801
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L188:
	ldr	ip, .L189+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #717	@,
	ldr	r2, .L189+8	@,
	ldr	r1, .L189+12	@,
	mvn	r4, #0	@ D.34801,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L186	@
.L190:
	.align	2
.L189:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+648
	.word	.LC1
	.fnend
	.size	VDEC_CID_SetStreamIntf, .-VDEC_CID_SetStreamIntf
	.align	2
	.global	VDEC_CID_GetImageIntf
	.type	VDEC_CID_GetImageIntf, %function
VDEC_CID_GetImageIntf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L195	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L196	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4]	@ ChanID, MEM[(struct IMAGE_INTF_S *)pArgs_4(D)].image_provider_inst_id
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDSDFlag	@
	ldr	r2, .L196+4	@ tmp119,
	ldr	r3, .L196+8	@ tmp120,
	stmib	r4, {r2, r3}	@ pArgs,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L196	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34810,
.L193:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L195:
	ldr	ip, .L196+12	@ tmp117,
	mov	r0, r4	@, pArgs
	mov	r3, #732	@,
	ldr	r2, .L196+16	@,
	ldr	r1, .L196+20	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34810,
	b	.L193	@
.L197:
	.align	2
.L196:
	.word	g_TaskLock
	.word	DNR_ReceiveImage
	.word	DNR_ReleaseImage
	.word	.LC2
	.word	.LANCHOR0+672
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetImageIntf, .-VDEC_CID_GetImageIntf
	.align	2
	.global	VDEC_CID_CfgExtra
	.type	VDEC_CID_CfgExtra, %function
VDEC_CID_CfgExtra:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, .L203	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L202	@,
	ldr	r0, .L203+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L203+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34817,
.L200:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L202:
	ldr	ip, .L203+8	@ tmp120,
	mov	r0, r4	@, pArgs
	mov	r3, #780	@,
	ldr	r2, .L203+12	@,
	ldr	r1, .L203+16	@,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34817,
	b	.L200	@
.L204:
	.align	2
.L203:
	.word	.LC5
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+696
	.word	.LC1
	.fnend
	.size	VDEC_CID_CfgExtra, .-VDEC_CID_CfgExtra
	.align	2
	.global	VDEC_CID_GetStreamSize
	.type	VDEC_CID_GetStreamSize, %function
VDEC_CID_GetStreamSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L209	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L210	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetStreamSize	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L210	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34825, ret
.L207:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L209:
	ldr	ip, .L210+4	@ tmp118,
	mov	r0, r4	@, pArgs
	movw	r3, #795	@,
	ldr	r2, .L210+8	@,
	ldr	r1, .L210+12	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34825,
	b	.L207	@
.L211:
	.align	2
.L210:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+716
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetStreamSize, .-VDEC_CID_GetStreamSize
	.align	2
	.global	VDEC_CID_GetChanMemAddr
	.type	VDEC_CID_GetChanMemAddr, %function
VDEC_CID_GetChanMemAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L217	@,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L219	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	add	r1, sp, #8	@,,
	bl	VCTRL_GetChanMemInfo	@
	cmp	r0, #0	@,
	bne	.L218	@,
	ldr	r3, [sp, #16]	@ D.34837, MemRec.PhyAddr
	ldr	r2, [sp, #12]	@ D.34838, MemRec.VirAddr
	ldr	r1, [sp, #20]	@ MemRec.Length, MemRec.Length
	cmp	r3, #0	@ D.34837,
	cmpne	r2, #0	@, D.34838,
	str	r3, [r5]	@ D.34837, MEM[(struct MEM_DESC_S *)pArgs_4(D)].PhyAddr
	str	r2, [r5, #4]	@ D.34838, MEM[(struct MEM_DESC_S *)pArgs_4(D)].VirAddr
	str	r1, [r5, #8]	@ MemRec.Length, MEM[(struct MEM_DESC_S *)pArgs_4(D)].Length
	moveq	r3, #1	@ D.34837,
	movne	r3, #0	@ D.34837,
	rsb	r4, r3, #0	@ D.34835, D.34837
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L219	@,
	bl	OSAL_SpinUnLockIRQ	@
.L214:
	mov	r0, r4	@, D.34835
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L218:
	mvn	r2, #0	@,
	ldr	r1, .L219+4	@,
	mov	r0, #22	@,
	mov	r4, r2	@ D.34835,
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L219	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L214	@
.L217:
	ldr	ip, .L219+8	@ tmp125,
	mov	r0, r5	@, pArgs
	movw	r3, #813	@,
	ldr	r2, .L219+12	@,
	ldr	r1, .L219+16	@,
	mvn	r4, #0	@ D.34835,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	b	.L214	@
.L220:
	.align	2
.L219:
	.word	g_TaskLock
	.word	.LC7
	.word	.LC2
	.word	.LANCHOR0+740
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetChanMemAddr, .-VDEC_CID_GetChanMemAddr
	.align	2
	.global	VDEC_CID_GetChanIDByMem
	.type	VDEC_CID_GetChanIDByMem, %function
VDEC_CID_GetChanIDByMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, .L226	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L225	@,
	ldr	r0, .L226+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_7(D)]
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.34849,
	str	r0, [r4]	@ D.34849, MEM[(HI_S32 *)pArgs_7(D)]
	movne	r0, #0	@ D.34848,
	moveq	r0, #1	@ D.34848,
	rsb	r4, r0, #0	@ D.34847, D.34848
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L226+4	@,
	bl	OSAL_SpinUnLockIRQ	@
.L223:
	mov	r0, r4	@, D.34847
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L225:
	ldr	ip, .L226+8	@ tmp122,
	mov	r0, r4	@, pArgs
	movw	r3, #855	@,
	ldr	r2, .L226+12	@,
	ldr	r1, .L226+16	@,
	mvn	r4, #0	@ D.34847,
	str	ip, [sp]	@ tmp122,
	bl	dprint_vfmw	@
	b	.L223	@
.L227:
	.align	2
.L226:
	.word	.LC5
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+764
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetChanIDByMem, .-VDEC_CID_GetChanIDByMem
	.align	2
	.global	VDEC_CID_SetDiscardPicParam
	.type	VDEC_CID_SetDiscardPicParam, %function
VDEC_CID_SetDiscardPicParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L232	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L233	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetDiscardPicParam	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L233	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34856, ret
.L230:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L232:
	ldr	ip, .L233+4	@ tmp118,
	mov	r0, r4	@, pArgs
	movw	r3, #871	@,
	ldr	r2, .L233+8	@,
	ldr	r1, .L233+12	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34856,
	b	.L230	@
.L234:
	.align	2
.L233:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+788
	.word	.LC1
	.fnend
	.size	VDEC_CID_SetDiscardPicParam, .-VDEC_CID_SetDiscardPicParam
	.align	2
	.global	VDEC_CID_SetPTSToSeek
	.type	VDEC_CID_SetPTSToSeek, %function
VDEC_CID_SetPTSToSeek:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r1, #0	@ pArgs, pArgs
	.pad #16
	sub	sp, sp, #16	@,,
	beq	.L240	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L242	@,
	bl	OSAL_SpinLockIRQ	@
	add	r1, sp, #8	@,,
	mov	r0, r5	@, ChanID
	mov	r2, #1	@ tmp126,
	mov	r3, #0	@ tmp127,
	str	r2, [sp, #8]	@ tmp126, option.s32KeepBS
	str	r3, [sp, #12]	@ tmp127, option.s32KeepSPSPPS
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.34866,,
	movne	r0, #1	@ D.34866,
	rsb	r4, r0, #0	@ ret, D.34866
	cmp	r4, #0	@ ret,
	beq	.L241	@,
.L238:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L242	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34865, ret
.L237:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L241:
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SeekPts	@
	adds	r0, r0, #0	@ D.34866,,
	movne	r0, #1	@ D.34866,
	rsb	r4, r0, #0	@ ret, D.34866
	b	.L238	@
.L240:
	ldr	ip, .L242+4	@ tmp124,
	mov	r0, r6	@, pArgs
	movw	r3, #901	@,
	ldr	r2, .L242+8	@,
	ldr	r1, .L242+12	@,
	str	ip, [sp]	@ tmp124,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34865,
	b	.L237	@
.L243:
	.align	2
.L242:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+816
	.word	.LC1
	.fnend
	.size	VDEC_CID_SetPTSToSeek, .-VDEC_CID_SetPTSToSeek
	.align	2
	.global	VDEC_CID_SetTrickMode
	.type	VDEC_CID_SetTrickMode, %function
VDEC_CID_SetTrickMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L249	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L251	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	DNR_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	beq	.L250	@,
.L247:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	adds	r0, r0, #0	@ D.34875,,
	movne	r0, #1	@ D.34875,
	rsb	r4, r0, #0	@ D.34874, D.34875
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L251	@,
	bl	OSAL_SpinUnLockIRQ	@
.L246:
	mov	r0, r4	@, D.34874
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L250:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	mov	r3, #936	@,
	ldr	r2, .L251+4	@,
	ldr	r1, .L251+8	@,
	adds	ip, r0, #0	@ D.34875,,
	mov	r0, #22	@,
	movne	ip, #1	@ D.34875,
	rsb	ip, ip, #0	@ D.34876, D.34875
	str	ip, [sp]	@ D.34876,
	bl	dprint_vfmw	@
	b	.L247	@
.L249:
	ldr	ip, .L251+12	@ tmp125,
	mov	r0, r4	@, pArgs
	movw	r3, #925	@,
	ldr	r2, .L251+4	@,
	ldr	r1, .L251+16	@,
	mvn	r4, #0	@ D.34874,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	b	.L246	@
.L252:
	.align	2
.L251:
	.word	g_TaskLock
	.word	.LANCHOR0+840
	.word	.LC8
	.word	.LC2
	.word	.LC1
	.fnend
	.size	VDEC_CID_SetTrickMode, .-VDEC_CID_SetTrickMode
	.align	2
	.global	VDEC_CID_SetCTRLInfo
	.type	VDEC_CID_SetCTRLInfo, %function
VDEC_CID_SetCTRLInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L258	@,
	mov	r6, r0	@ ChanID, ChanID
	ldr	r0, .L260	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r6	@, ChanID
	bl	DNR_ConfigBackOptimizeFlag	@
	adds	r0, r0, #0	@ D.34885,,
	movne	r0, #1	@ D.34885,
	rsb	r4, r0, #0	@ ret, D.34885
	cmp	r4, #0	@ ret,
	beq	.L259	@,
.L256:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L260	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34884, ret
.L255:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L259:
	mov	r1, r5	@, pArgs
	mov	r0, r6	@, ChanID
	bl	VCTRL_ConfigPVRInfo	@
	adds	r0, r0, #0	@ D.34885,,
	movne	r0, #1	@ D.34885,
	rsb	r4, r0, #0	@ ret, D.34885
	b	.L256	@
.L258:
	ldr	ip, .L260+4	@ tmp124,
	mov	r0, r5	@, pArgs
	movw	r3, #953	@,
	ldr	r2, .L260+8	@,
	ldr	r1, .L260+12	@,
	str	ip, [sp]	@ tmp124,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34884,
	b	.L255	@
.L261:
	.align	2
.L260:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+864
	.word	.LC1
	.fnend
	.size	VDEC_CID_SetCTRLInfo, .-VDEC_CID_SetCTRLInfo
	.align	2
	.global	VDEC_CID_FrameDNR
	.type	VDEC_CID_FrameDNR, %function
VDEC_CID_FrameDNR:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L266	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L267	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r2, r4	@, pArgs
	mov	r1, #1	@,
	mov	r0, r5	@, ChanID
	bl	DNR_SetDataSource	@
	adds	r0, r0, #0	@ D.34894,,
	movne	r0, #1	@ D.34894,
	rsb	r4, r0, #0	@ D.34893, D.34894
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L267	@,
	bl	OSAL_SpinUnLockIRQ	@
.L264:
	mov	r0, r4	@, D.34893
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L266:
	ldr	ip, .L267+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #981	@,
	ldr	r2, .L267+8	@,
	ldr	r1, .L267+12	@,
	mvn	r4, #0	@ D.34893,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L264	@
.L268:
	.align	2
.L267:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+888
	.word	.LC1
	.fnend
	.size	VDEC_CID_FrameDNR, .-VDEC_CID_FrameDNR
	.align	2
	.global	VDEC_CID_GetVFMWInfo
	.type	VDEC_CID_GetVFMWInfo, %function
VDEC_CID_GetVFMWInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	subs	r6, r1, #0	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, #0	@ tmp119,
	str	r4, [sp, #12]	@ tmp119, RefNum
	str	r4, [sp, #16]	@ tmp119, ReadNum
	str	r4, [sp, #20]	@ tmp119, NewNum
	beq	.L273	@,
	ldr	ip, .L274	@ tmp126,
	add	r3, sp, #20	@,,
	add	r2, sp, #16	@,,
	add	r1, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r7, [ip, r0, asl #2]	@ pFsp, s_pFspInst
	bl	VCTRL_GetChanImgNum	@
	ldr	r1, .L274+4	@ tmp132,
	movw	r3, #11160	@ tmp134,
	movt	r3, 1	@ tmp134,
	ldr	r2, [sp, #12]	@ RefNum, RefNum
	mov	r0, r4	@ D.34906, tmp119
	mla	r5, r3, r5, r1	@ tmp135, tmp134, ChanID, tmp132
	str	r2, [r6]	@ RefNum, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].u32RefNum
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.34909, pFsp_10->s32DecFsNum
	strb	r3, [r6, #8]	@ D.34909, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s8DecFsNum
	ldr	r3, [r5, #448]	@ D.34907, MEM[(struct DNR_CHAN_S *)&s_DnrChan][ChanID_9(D)].s32ValidImgNum
	str	r3, [r6, #4]	@ D.34907, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s32DisFsNum
.L271:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L273:
	ldr	ip, .L274+8	@ tmp125,
	mov	r0, r6	@, pArgs
	movw	r3, #1017	@,
	ldr	r2, .L274+12	@,
	ldr	r1, .L274+16	@,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34906,
	b	.L271	@
.L275:
	.align	2
.L274:
	.word	s_pFspInst
	.word	s_DnrChan
	.word	.LC2
	.word	.LANCHOR0+908
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetVFMWInfo, .-VDEC_CID_GetVFMWInfo
	.align	2
	.global	VDEC_OpenModule
	.type	VDEC_OpenModule, %function
VDEC_OpenModule:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	OSAL_SEMA_INTIT	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_proc_init	@
	.fnend
	.size	VDEC_OpenModule, .-VDEC_OpenModule
	.align	2
	.global	VDEC_ExitModule
	.type	VDEC_ExitModule, %function
VDEC_ExitModule:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vfmw_proc_exit	@
	.fnend
	.size	VDEC_ExitModule, .-VDEC_ExitModule
	.align	2
	.global	VDEC_SpinLockInit
	.type	VDEC_SpinLockInit, %function
VDEC_SpinLockInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, .L281	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L281+4	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L281+8	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L281+12	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L281+16	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L281+20	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L281+24	@,
	ldmfd	sp!, {r4, lr}	@
	b	OSAL_SpinLockIRQInit	@
.L282:
	.align	2
.L281:
	.word	g_TaskLock
	.word	g_RecordLock
	.word	g_SpinLock
	.word	g_SpinLock_fsp
	.word	g_SpinLockIsr_Image2D
	.word	g_SpinLockIrq_Destroy
	.word	g_ActivateLock
	.fnend
	.size	VDEC_SpinLockInit, .-VDEC_SpinLockInit
	.align	2
	.global	VDEC_InitWithOperation
	.type	VDEC_InitWithOperation, %function
VDEC_InitWithOperation:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pArgs, pArgs
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	cmp	r5, #0	@ pArgs,
	beq	.L296	@,
	ldr	r4, .L298	@ tmp229,
	ldr	r3, [r4]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L297	@,
	mov	r1, #8	@,
	ldr	r0, .L298+4	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L298+8	@,
	mov	fp, #0	@ tmp141,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L298+12	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L298+16	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L298+20	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L298+24	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L298+28	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L298+32	@,
	bl	__memzero	@
	ldr	r10, .L298+36	@ tmp140,
	ldr	r9, .L298+40	@ tmp143,
	ldr	r8, .L298+44	@ tmp145,
	ldr	r7, .L298+48	@ tmp147,
	ldr	r6, .L298+52	@ tmp149,
	ldr	lr, .L298+56	@ tmp151,
	ldr	ip, .L298+60	@ tmp153,
	ldr	r0, .L298+64	@ tmp155,
	ldr	r1, .L298+68	@ tmp157,
	ldr	r2, .L298+72	@ tmp159,
	ldr	r3, .L298+76	@ tmp161,
	str	fp, [r10]	@ tmp141, AcceleratorCharacter
	str	r9, [r4, #8]	@ tmp143, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	ldr	r10, .L298+80	@ tmp165,
	ldr	fp, .L298+84	@ tmp167,
	ldr	r9, .L298+88	@ tmp169,
	str	r8, [r4, #12]	@ tmp145, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	str	r7, [r4, #16]	@ tmp147, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	ldr	r8, .L298+92	@ tmp171,
	ldr	r7, .L298+96	@ tmp173,
	str	r6, [r4, #20]	@ tmp149, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	str	lr, [r4, #24]	@ tmp151, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	ldr	r6, .L298+100	@ tmp175,
	ldr	lr, .L298+104	@ tmp177,
	str	ip, [r4, #32]	@ tmp153, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	str	r0, [r4, #36]	@ tmp155, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	ldr	ip, .L298+108	@ tmp179,
	ldr	r0, .L298+112	@ tmp181,
	str	r1, [r4, #40]	@ tmp157, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	str	r2, [r4, #44]	@ tmp159, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r1, .L298+116	@ tmp183,
	str	r3, [r4, #48]	@ tmp161, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	ldr	r2, .L298+120	@ tmp230,
	ldr	r3, .L298+124	@ tmp231,
	str	r10, [r4, #52]	@ tmp165, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	str	r2, [r4, #108]	@ tmp230, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	str	fp, [r4, #56]	@ tmp167, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	ldr	r2, .L298+128	@ tmp189,
	str	r9, [r4, #60]	@ tmp169, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	str	r8, [r4, #64]	@ tmp171, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	str	r7, [r4, #68]	@ tmp173, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	str	r6, [r4, #72]	@ tmp175, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	str	lr, [r4, #76]	@ tmp177, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	str	ip, [r4, #80]	@ tmp179, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	ldr	lr, .L298+132	@ tmp203,
	ldr	ip, .L298+136	@ tmp205,
	str	r0, [r4, #84]	@ tmp181, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	str	r1, [r4, #88]	@ tmp183, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	ldr	r0, .L298+140	@ tmp207,
	ldr	r1, .L298+144	@ tmp209,
	str	r3, [r4, #92]	@ tmp231, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	ldr	r10, .L298+148	@ tmp191,
	ldr	r3, .L298+152	@ tmp232,
	ldr	fp, .L298+156	@ tmp193,
	ldr	r9, .L298+160	@ tmp195,
	ldr	r8, .L298+164	@ tmp197,
	ldr	r7, .L298+168	@ tmp199,
	ldr	r6, .L298+172	@ tmp201,
	str	r3, [r4, #96]	@ tmp232, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	str	r2, [r4, #100]	@ tmp189, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	str	lr, [r4, #128]	@ tmp203, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	str	ip, [r4, #132]	@ tmp205, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	str	r10, [r4, #28]	@ tmp191, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	str	fp, [r4, #104]	@ tmp193, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	str	r9, [r4, #112]	@ tmp195, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	str	r8, [r4, #116]	@ tmp197, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	str	r7, [r4, #120]	@ tmp199, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	str	r6, [r4, #124]	@ tmp201, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r0, [r4, #136]	@ tmp207, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	str	r1, [r4, #140]	@ tmp209, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #28]	@ D.34920, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.34920,
	beq	.L288	@,
	blx	r3	@ D.34920
.L288:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	mov	r0, #0	@,
	bl	VCTRL_OpenVfmw	@
	ldr	r1, .L298+176	@,
	mov	r6, r0	@ ret,
	mov	r2, r0	@, ret
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ ret,
	ldr	r0, [r4, #52]	@ D.34920, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	moveq	r3, #1	@ tmp213,
	movne	r3, #0	@ tmp217,
	cmp	r0, #0	@ D.34920,
	str	r3, [r4]	@ tmp217, g_VfmwEnableFlag
	str	r3, [r4, #4]	@ tmp217, g_VfmwInitCount
	beq	.L291	@,
	blx	r0	@ D.34920
	adds	r6, r6, #0	@ D.34923, ret,
	movne	r6, #1	@ D.34923,
	rsb	r6, r6, #0	@ D.34918, D.34923
.L287:
	ldmia	r5, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
.L285:
	mov	r0, r6	@, D.34918
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L297:
	ldr	r3, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	mov	r6, #0	@ D.34918,
	add	r3, r3, #1	@ D.34919, g_VfmwInitCount,
	str	r3, [r4, #4]	@ D.34919, g_VfmwInitCount
	b	.L287	@
.L291:
	movw	r2, #382	@,
	ldr	r1, .L298+180	@,
	bl	dprint_vfmw	@
	adds	r6, r6, #0	@ D.34923, ret,
	movne	r6, #1	@ D.34923,
	rsb	r6, r6, #0	@ D.34918, D.34923
	b	.L287	@
.L296:
	bl	OSAL_UP	@
	ldr	r1, .L298+184	@,
	mov	r0, #1	@,
	mvn	r6, #0	@ D.34918,
	bl	dprint_vfmw	@
	b	.L285	@
.L299:
	.align	2
.L298:
	.word	.LANCHOR2
	.word	g_TaskLock
	.word	g_RecordLock
	.word	g_SpinLock
	.word	g_SpinLock_fsp
	.word	g_SpinLockIsr_Image2D
	.word	g_SpinLockIrq_Destroy
	.word	g_ActivateLock
	.word	g_DSDLock
	.word	AcceleratorCharacter
	.word	VDM_OpenHardware
	.word	VDM_CloseHardware
	.word	SCD_OpenHardware
	.word	SCD_CloseHardware
	.word	BPD_OpenHardware
	.word	VDMHAL_V200R004_GetHalMemSize
	.word	VDMHAL_V200R004_OpenHAL
	.word	VDMHAL_V200R004_CloseHAL
	.word	VDMHAL_V200R004_ArrangeMem
	.word	VDMHAL_V200R004_ResetVdm
	.word	VDMHAL_V200R004_GlbReset
	.word	VDMHAL_V200R004_ClearIntState
	.word	VDMHAL_V200R004_MaskInt
	.word	VDMHAL_V200R004_EnableInt
	.word	VDMHAL_V200R004_CheckReg
	.word	VDMHAL_V200R004_StartHwRepair
	.word	VDMHAL_V200R004_StartHwDecode
	.word	VDMHAL_V200R004_PrepareDec
	.word	VDMHAL_V200R004_IsVdmReady
	.word	VDMHAL_V200R004_IsVdmRun
	.word	VDMHAL_V200R400_GetPmvSize
	.word	VDMHAL_V200R004_PrepareRepair
	.word	VDMHAL_V200R004_UpdateHardwareInfo
	.word	DNRHAL_V200_Start
	.word	DNRHAL_V200_ClearIntState
	.word	DNRHAL_V200_MaskInt
	.word	DNRHAL_V200_EnableInt
	.word	VDMHAL_V200R004_GetCharacter
	.word	VDMHAL_V200R004_MakeDecReport
	.word	VDMHAL_V200R004_WriteBigTitle1DYuv
	.word	DNR_OpenHardware
	.word	DNRHAL_V200_Init
	.word	DNRHAL_V200_CfgReg
	.word	DNRHAL_V200_Reset
	.word	.LC10
	.word	.LC11
	.word	.LC9
	.fnend
	.size	VDEC_InitWithOperation, .-VDEC_InitWithOperation
	.align	2
	.global	VDEC_Init
	.type	VDEC_Init, %function
VDEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ VdecCallback, VdecCallback
	mov	r1, #16	@,
	mov	r0, sp	@,
	bl	__memzero	@
	mov	r0, sp	@,
	mov	r3, #0	@ tmp117,
	str	r4, [sp, #4]	@ VdecCallback, Args.VdecCallback
	str	r3, [sp, #8]	@ tmp117, Args.mem_malloc
	str	r3, [sp, #12]	@ tmp117, Args.mem_free
	bl	VDEC_InitWithOperation	@
	adds	r0, r0, #0	@ D.34929,,
	movne	r0, #1	@ D.34929,
	rsb	r0, r0, #0	@, D.34929
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_Init, .-VDEC_Init
	.align	2
	.global	GetVdecCapability
	.type	GetVdecCapability, %function
GetVdecCapability:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #148	@,
	mov	r4, r0	@ pCap, pCap
	bl	__memzero	@
	mov	r3, #24576	@ tmp115,
	mov	r2, #50	@ tmp112,
	movt	r3, 1434	@ tmp115,
	mov	r1, #1920	@ tmp113,
	str	r2, [r4, #4]	@ tmp112, pCap_1(D)->s32MaxBitRate
	mov	r2, #1088	@ tmp114,
	str	r3, [r4, #16]	@ tmp115, pCap_1(D)->s32MaxPixelPerSec
	mov	r3, #3	@ tmp117,
	str	r2, [r4, #12]	@ tmp114, pCap_1(D)->s32MaxFrameHeight
	mov	r2, #0	@ tmp116,
	str	r3, [r4, #24]	@ tmp117, pCap_1(D)->SupportedStd
	mov	r3, #6	@ tmp119,
	str	r2, [r4, #20]	@ tmp116, pCap_1(D)->SupportedStd
	mov	r2, #2	@ tmp118,
	str	r3, [r4, #32]	@ tmp119, pCap_1(D)->SupportedStd
	mov	r3, #9	@ tmp121,
	str	r2, [r4, #28]	@ tmp118, pCap_1(D)->SupportedStd
	mov	r2, #8	@ tmp120,
	str	r3, [r4, #40]	@ tmp121, pCap_1(D)->SupportedStd
	mov	r3, #4	@ tmp124,
	str	r2, [r4, #36]	@ tmp120, pCap_1(D)->SupportedStd
	mov	r2, #5	@ tmp123,
	str	r3, [r4, #52]	@ tmp124, pCap_1(D)->SupportedStd
	mov	r3, #14	@ tmp126,
	str	r2, [r4, #48]	@ tmp123, pCap_1(D)->SupportedStd
	mov	r2, #10	@ tmp125,
	str	r3, [r4, #60]	@ tmp126, pCap_1(D)->SupportedStd
	mov	r3, #12	@ tmp128,
	str	r2, [r4, #56]	@ tmp125, pCap_1(D)->SupportedStd
	mov	r2, #11	@ tmp127,
	str	r3, [r4, #68]	@ tmp128, pCap_1(D)->SupportedStd
	mov	r3, #15	@ tmp130,
	str	r2, [r4, #64]	@ tmp127, pCap_1(D)->SupportedStd
	mov	r2, #13	@ tmp129,
	str	r3, [r4, #76]	@ tmp130, pCap_1(D)->SupportedStd
	mov	r3, #18	@ tmp132,
	str	r2, [r4, #72]	@ tmp129, pCap_1(D)->SupportedStd
	mov	r2, #17	@ tmp131,
	str	r3, [r4, #84]	@ tmp132, pCap_1(D)->SupportedStd
	mov	r3, #1	@ tmp111,
	str	r2, [r4, #80]	@ tmp131, pCap_1(D)->SupportedStd
	mov	r2, #19	@ tmp133,
	str	r1, [r4, #8]	@ tmp113, pCap_1(D)->s32MaxFrameWidth
	str	r2, [r4, #88]	@ tmp133, pCap_1(D)->SupportedStd
	str	r3, [r4]	@ tmp111, pCap_1(D)->s32MaxChanNum
	str	r3, [r4, #44]	@ tmp111, pCap_1(D)->SupportedStd
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	GetVdecCapability, .-GetVdecCapability
	.align	2
	.global	VDEC_CID_GetCapability
	.type	VDEC_CID_GetCapability, %function
VDEC_CID_GetCapability:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, .L309	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L308	@,
	ldr	r0, .L309+4	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L309+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34938,
.L306:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L308:
	ldr	ip, .L309+8	@ tmp118,
	mov	r0, r4	@, pArgs
	movw	r3, #471	@,
	ldr	r2, .L309+12	@,
	ldr	r1, .L309+16	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34938,
	b	.L306	@
.L310:
	.align	2
.L309:
	.word	.LC5
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+932
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetCapability, .-VDEC_CID_GetCapability
	.align	2
	.global	VDEC_Suspend
	.type	VDEC_Suspend, %function
VDEC_Suspend:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_Suspend	@
	mov	r0, #0	@,
	ldr	r1, .L313	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L314:
	.align	2
.L313:
	.word	.LC12
	.fnend
	.size	VDEC_Suspend, .-VDEC_Suspend
	.align	2
	.global	VDEC_Resume
	.type	VDEC_Resume, %function
VDEC_Resume:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_Resume	@
	mov	r0, #0	@,
	ldr	r1, .L317	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L318:
	.align	2
.L317:
	.word	.LC13
	.fnend
	.size	VDEC_Resume, .-VDEC_Resume
	.align	2
	.global	VFMW_set_dbgopt
	.type	VFMW_set_dbgopt, %function
VFMW_set_dbgopt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	VCTRL_SetDbgOption	@
	.fnend
	.size	VFMW_set_dbgopt, .-VFMW_set_dbgopt
	.global	g_LastFrameRate
	.global	g_FrameRate
	.global	g_dnr_hal_fun_ptr
	.global	g_vdm_hal_fun_ptr
	.global	g_ChipMaxHeight
	.global	g_ChipMaxWidth
	.global	g_chipID
	.global	g_VfmwInitCount
	.global	g_VfmwEnableFlag
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.33761, %object
	.size	__func__.33761, 22
__func__.33761:
	.ascii	"VDEC_CID_SetFrameRate\000"
	.space	2
	.type	__func__.33766, %object
	.size	__func__.33766, 29
__func__.33766:
	.ascii	"VDEC_CID_GetSCDBufferVirAddr\000"
	.space	3
	.type	g_VDEC_CID_HandlerTable, %object
	.size	g_VDEC_CID_HandlerTable, 280
g_VDEC_CID_HandlerTable:
@ eCmdID:
	.word	10
@ pHandler:
	.word	VDEC_CID_GetChanState
@ eCmdID:
	.word	25
@ pHandler:
	.word	VDEC_CID_GetUsrDecFrame
@ eCmdID:
	.word	26
@ pHandler:
	.word	VDEC_CID_PutUsrDecFrame
@ eCmdID:
	.word	1
@ pHandler:
	.word	VDEC_CID_GetCapability
@ eCmdID:
	.word	18
@ pHandler:
	.word	VDEC_CID_GetChanMemSize
@ eCmdID:
	.word	19
@ pHandler:
	.word	VDEC_CID_GetChanDetailMemSizeWithOption
@ eCmdID:
	.word	4
@ pHandler:
	.word	VDEC_CID_CreateChan
@ eCmdID:
	.word	5
@ pHandler:
	.word	VDEC_CID_CreateChanWithOption
@ eCmdID:
	.word	6
@ pHandler:
	.word	VDEC_CID_DestroyChan
@ eCmdID:
	.word	7
@ pHandler:
	.word	VDEC_CID_DestroyChanWithOption
@ eCmdID:
	.word	8
@ pHandler:
	.word	VDEC_CID_GetChanCfg
@ eCmdID:
	.word	9
@ pHandler:
	.word	VDEC_CID_CfgChan
@ eCmdID:
	.word	11
@ pHandler:
	.word	VDEC_CID_StartChan
@ eCmdID:
	.word	36
@ pHandler:
	.word	VDEC_CID_StartChanWithOption
@ eCmdID:
	.word	12
@ pHandler:
	.word	VDEC_CID_StopChan
@ eCmdID:
	.word	13
@ pHandler:
	.word	VDEC_CID_ResetChan
@ eCmdID:
	.word	23
@ pHandler:
	.word	VDEC_CID_ResetChanWithOption
@ eCmdID:
	.word	14
@ pHandler:
	.word	VDEC_CID_SetStreamIntf
@ eCmdID:
	.word	15
@ pHandler:
	.word	VDEC_CID_GetImageIntf
@ eCmdID:
	.word	22
@ pHandler:
	.word	VDEC_CID_ReleaseStream
@ eCmdID:
	.word	24
@ pHandler:
	.word	VDEC_CID_CfgExtra
@ eCmdID:
	.word	16
@ pHandler:
	.word	VDEC_CID_GetStreamSize
@ eCmdID:
	.word	20
@ pHandler:
	.word	VDEC_CID_GetChanMemAddr
@ eCmdID:
	.word	21
@ pHandler:
	.word	VDEC_CID_GetChanIDByMem
@ eCmdID:
	.word	28
@ pHandler:
	.word	VDEC_CID_SetDiscardPicParam
@ eCmdID:
	.word	39
@ pHandler:
	.word	VDEC_CID_RWZBState
@ eCmdID:
	.word	32
@ pHandler:
	.word	VDEC_CID_SetPTSToSeek
@ eCmdID:
	.word	33
@ pHandler:
	.word	VDEC_CID_SetTrickMode
@ eCmdID:
	.word	34
@ pHandler:
	.word	VDEC_CID_SetCTRLInfo
@ eCmdID:
	.word	29
@ pHandler:
	.word	VDEC_CID_FrameDNR
@ eCmdID:
	.word	35
@ pHandler:
	.word	VDEC_CID_SetFrameRate
@ eCmdID:
	.word	37
@ pHandler:
	.word	VDEC_CID_GetSCDBufferVirAddr
@ eCmdID:
	.word	38
@ pHandler:
	.word	VDEC_CID_GetVFMWInfo
@ eCmdID:
	.word	40
@ pHandler:
	.word	VDEC_CID_ReportDmxBufRls
@ eCmdID:
	.word	41
@ pHandler:
	.word	0
	.type	__func__.33573, %object
	.size	__func__.33573, 22
__func__.33573:
	.ascii	"VDEC_CID_GetChanState\000"
	.space	2
	.type	__func__.33581, %object
	.size	__func__.33581, 24
__func__.33581:
	.ascii	"VDEC_CID_GetUsrDecFrame\000"
	.type	__func__.33730, %object
	.size	__func__.33730, 19
__func__.33730:
	.ascii	"VDEC_CID_RWZBState\000"
	.space	1
	.type	__func__.33587, %object
	.size	__func__.33587, 24
__func__.33587:
	.ascii	"VDEC_CID_PutUsrDecFrame\000"
	.type	__func__.33601, %object
	.size	__func__.33601, 24
__func__.33601:
	.ascii	"VDEC_CID_GetChanMemSize\000"
	.type	__func__.33610, %object
	.size	__func__.33610, 40
__func__.33610:
	.ascii	"VDEC_CID_GetChanDetailMemSizeWithOption\000"
	.type	__func__.33617, %object
	.size	__func__.33617, 20
__func__.33617:
	.ascii	"VDEC_CID_CreateChan\000"
	.type	__func__.33624, %object
	.size	__func__.33624, 30
__func__.33624:
	.ascii	"VDEC_CID_CreateChanWithOption\000"
	.space	2
	.type	__func__.33640, %object
	.size	__func__.33640, 20
__func__.33640:
	.ascii	"VDEC_CID_GetChanCfg\000"
	.type	__func__.33646, %object
	.size	__func__.33646, 17
__func__.33646:
	.ascii	"VDEC_CID_CfgChan\000"
	.space	3
	.type	__func__.33657, %object
	.size	__func__.33657, 29
__func__.33657:
	.ascii	"VDEC_CID_StartChanWithOption\000"
	.space	3
	.type	__func__.33673, %object
	.size	__func__.33673, 29
__func__.33673:
	.ascii	"VDEC_CID_ResetChanWithOption\000"
	.space	3
	.type	__func__.33679, %object
	.size	__func__.33679, 23
__func__.33679:
	.ascii	"VDEC_CID_SetStreamIntf\000"
	.space	1
	.type	__func__.33685, %object
	.size	__func__.33685, 22
__func__.33685:
	.ascii	"VDEC_CID_GetImageIntf\000"
	.space	2
	.type	__func__.33696, %object
	.size	__func__.33696, 18
__func__.33696:
	.ascii	"VDEC_CID_CfgExtra\000"
	.space	2
	.type	__func__.33702, %object
	.size	__func__.33702, 23
__func__.33702:
	.ascii	"VDEC_CID_GetStreamSize\000"
	.space	1
	.type	__func__.33711, %object
	.size	__func__.33711, 24
__func__.33711:
	.ascii	"VDEC_CID_GetChanMemAddr\000"
	.type	__func__.33718, %object
	.size	__func__.33718, 24
__func__.33718:
	.ascii	"VDEC_CID_GetChanIDByMem\000"
	.type	__func__.33724, %object
	.size	__func__.33724, 28
__func__.33724:
	.ascii	"VDEC_CID_SetDiscardPicParam\000"
	.type	__func__.33738, %object
	.size	__func__.33738, 22
__func__.33738:
	.ascii	"VDEC_CID_SetPTSToSeek\000"
	.space	2
	.type	__func__.33744, %object
	.size	__func__.33744, 22
__func__.33744:
	.ascii	"VDEC_CID_SetTrickMode\000"
	.space	2
	.type	__func__.33750, %object
	.size	__func__.33750, 21
__func__.33750:
	.ascii	"VDEC_CID_SetCTRLInfo\000"
	.space	3
	.type	__func__.33756, %object
	.size	__func__.33756, 18
__func__.33756:
	.ascii	"VDEC_CID_FrameDNR\000"
	.space	2
	.type	__func__.33776, %object
	.size	__func__.33776, 21
__func__.33776:
	.ascii	"VDEC_CID_GetVFMWInfo\000"
	.space	3
	.type	__func__.33592, %object
	.size	__func__.33592, 23
__func__.33592:
	.ascii	"VDEC_CID_GetCapability\000"
	.section	___ksymtab+VDEC_Control,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Control, %object
	.size	__ksymtab_VDEC_Control, 8
__ksymtab_VDEC_Control:
@ value:
	.word	VDEC_Control
@ name:
	.word	__kstrtab_VDEC_Control
	.section	___ksymtab+VDEC_Exit,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Exit, %object
	.size	__ksymtab_VDEC_Exit, 8
__ksymtab_VDEC_Exit:
@ value:
	.word	VDEC_Exit
@ name:
	.word	__kstrtab_VDEC_Exit
	.section	___ksymtab+VDEC_Init,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Init, %object
	.size	__ksymtab_VDEC_Init, 8
__ksymtab_VDEC_Init:
@ value:
	.word	VDEC_Init
@ name:
	.word	__kstrtab_VDEC_Init
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_VDEC_Control, %object
	.size	__kstrtab_VDEC_Control, 13
__kstrtab_VDEC_Control:
	.ascii	"VDEC_Control\000"
	.type	__kstrtab_VDEC_Exit, %object
	.size	__kstrtab_VDEC_Exit, 10
__kstrtab_VDEC_Exit:
	.ascii	"VDEC_Exit\000"
	.type	__kstrtab_VDEC_Init, %object
	.size	__kstrtab_VDEC_Init, 10
__kstrtab_VDEC_Init:
	.ascii	"VDEC_Init\000"
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_FrameRate, %object
	.size	g_FrameRate, 4
g_FrameRate:
	.word	30
	.type	g_LastFrameRate, %object
	.size	g_LastFrameRate, 4
g_LastFrameRate:
	.word	30
	.type	g_ChipMaxHeight, %object
	.size	g_ChipMaxHeight, 4
g_ChipMaxHeight:
	.word	8192
	.type	g_ChipMaxWidth, %object
	.size	g_ChipMaxWidth, 4
g_ChipMaxWidth:
	.word	8192
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	16
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Not care param %p\012\000"
	.space	1
.LC1:
	.ascii	"%s %d: %s\012\000"
	.space	1
.LC2:
	.ascii	"pArgs = null!\000"
	.space	2
.LC3:
	.ascii	"VFMW has been destroyed, so any operation is unusef"
	.ascii	"ul!\012\000"
.LC4:
	.ascii	"Unsupport eCmdID %d\012\000"
	.space	3
.LC5:
	.ascii	"Not care param %d\012\000"
	.space	1
.LC6:
	.ascii	"VCTRL_CreateChan() return %d\012\000"
	.space	2
.LC7:
	.ascii	"VCTRL_GetChanMemInfo return %d!\012\000"
	.space	3
.LC8:
	.ascii	"[%s][%d] %d!\012\000"
	.space	2
.LC9:
	.ascii	"VDEC_InitWithOperation has NULL parameter, error!\012"
	.ascii	"\000"
	.space	1
.LC10:
	.ascii	"VCTRL_OpenVfmw() return %d\012\000"
.LC11:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC12:
	.ascii	"VDEC_Suspend ok !\012\000"
	.space	1
.LC13:
	.ascii	"VDEC_Resume ok !\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	g_VfmwEnableFlag, %object
	.size	g_VfmwEnableFlag, 4
g_VfmwEnableFlag:
	.space	4
	.type	g_VfmwInitCount, %object
	.size	g_VfmwInitCount, 4
g_VfmwInitCount:
	.space	4
	.type	g_vdm_hal_fun_ptr, %object
	.size	g_vdm_hal_fun_ptr, 104
g_vdm_hal_fun_ptr:
	.space	104
	.type	g_dnr_hal_fun_ptr, %object
	.size	g_dnr_hal_fun_ptr, 36
g_dnr_hal_fun_ptr:
	.space	36
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
