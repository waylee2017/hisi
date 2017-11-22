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
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vfmw)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/.vfmw.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/vfmw.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/vfmw.o
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
	ldr	r2, [r3]	@ D.37086, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.37087, _2->PERI_CRG30.u32
	orr	r3, r3, #3	@ u32TmpValue, D.37087,
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
	ldr	r2, [r3]	@ D.37090, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.37091, _2->PERI_CRG30.u32
	orr	r3, r3, #80	@ u32TmpValue, D.37091,
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
	ldr	r2, [r3]	@ D.37094, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.37095, _2->PERI_CRG30.u32
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
	ldr	r2, [r3]	@ D.37098, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.37099, _2->PERI_CRG30.u32
	orr	r3, r3, #32	@ u32TmpValue, D.37099,
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
	ldr	r2, [r3]	@ D.37102, g_pstRegCrg
	ldr	r3, [r2, #112]	@ D.37103, _2->PERI_CRG28.u32
	orr	r3, r3, #1	@ u32TmpValue, D.37103,
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
	ldr	r3, .L17	@ tmp115,
	mov	r0, #0	@,
	ldr	r2, [r3]	@ D.37106, g_pstRegCrg
	ldr	r3, [r2, #136]	@ D.37107, _2->PERI_CRG34.u32
	orr	r3, r3, #1	@ u32TmpValue, D.37107,
	bfc	r3, #4, #1	@ u32TmpValue,,
	str	r3, [r2, #136]	@ u32TmpValue, _2->PERI_CRG34.u32
	bx	lr	@
.L18:
	.align	2
.L17:
	.word	g_pstRegCrg
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
	ldr	r1, .L21	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_DestroyChan	@
	adds	r0, r0, #0	@ D.37110,,
	movne	r0, #1	@ D.37110,
	rsb	r0, r0, #0	@, D.37110
	ldmfd	sp!, {r4, pc}	@
.L22:
	.align	2
.L21:
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
	ldr	r1, .L25	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	adds	r0, r0, #0	@ D.37115,,
	movne	r0, #1	@ D.37115,
	rsb	r0, r0, #0	@, D.37115
	ldmfd	sp!, {r4, pc}	@
.L26:
	.align	2
.L25:
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
	ldr	r5, .L29	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L29+4	@,
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
	adds	r0, r4, #0	@ D.37119, ret,
	movne	r0, #1	@ D.37119,
	rsb	r0, r0, #0	@, D.37119
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L30:
	.align	2
.L29:
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
	ldr	r5, .L33	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L33+4	@,
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
	adds	r0, r4, #0	@ D.37123, ret,
	movne	r0, #1	@ D.37123,
	rsb	r0, r0, #0	@, D.37123
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L34:
	.align	2
.L33:
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
	ldr	r5, .L37	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L37+4	@,
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
	adds	r0, r4, #0	@ D.37127, ret,
	movne	r0, #1	@ D.37127,
	rsb	r0, r0, #0	@, D.37127
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L38:
	.align	2
.L37:
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
	ldr	r5, .L41	@ tmp118,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r1, .L41+4	@,
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
	adds	r0, r4, #0	@ D.37131, ret,
	movne	r0, #1	@ D.37131,
	rsb	r0, r0, #0	@, D.37131
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L42:
	.align	2
.L41:
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
	ldr	r0, .L50	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_IsEsBufEnable	@
	cmp	r0, #0	@,
	beq	.L44	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_DisableEsBuf	@
.L44:
	ldr	r0, .L50	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L51:
	.align	2
.L50:
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
	beq	.L57	@,
	ldr	r1, [r1]	@ D.37142, MEM[(HI_S32 *)pArgs_3(D)]
	mov	r3, #0	@ D.37141,
	ldr	r2, .L58	@ tmp118,
	str	r1, [r2, r0, asl #2]	@ D.37142, g_FrameRate
	mov	r0, r3	@, D.37141
	bx	lr	@
.L57:
	ldr	ip, .L58+4	@ tmp117,
	mov	r0, r1	@ pArgs, pArgs
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	movw	r3, #1019	@,
	ldr	r2, .L58+8	@,
	ldr	r1, .L58+12	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.37141,
	mov	r0, r3	@, D.37141
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L59:
	.align	2
.L58:
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
	beq	.L65	@,
	ldr	r2, .L66	@ tmp119,
	mov	r3, #0	@ D.37150,
	ldr	r2, [r2, r0, asl #2]	@ D.37151, g_scd_vir
	mov	r0, r3	@, D.37150
	str	r2, [r1]	@ D.37151, MEM[(HI_U32 *)pArgs_3(D)]
	bx	lr	@
.L65:
	ldr	ip, .L66+4	@ tmp118,
	mov	r0, r1	@ pArgs, pArgs
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	movw	r3, #1028	@,
	ldr	r2, .L66+8	@,
	ldr	r1, .L66+12	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r3, #0	@ D.37150,
	mov	r0, r3	@, D.37150
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L67:
	.align	2
.L66:
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
	ldr	r3, .L88	@ tmp152,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	bne	.L86	@,
	cmp	r1, #10	@ eCmdID,
	ldrne	r3, .L88+4	@ ivtmp.147,
	bne	.L75	@,
	b	.L87	@
.L76:
	ldr	lr, [r3, #12]	@ pTargetHandler, MEM[base: _3, offset: 12B]
	add	r3, r3, #8	@ ivtmp.147, ivtmp.147,
	cmp	lr, #0	@ pTargetHandler,
	beq	.L70	@,
	cmp	ip, r1	@ D.37171, eCmdID
	beq	.L73	@,
.L75:
	ldr	ip, [r3, #8]	@ D.37171, MEM[base: _3, offset: 8B]
	cmp	ip, #41	@ D.37171,
	bne	.L76	@,
.L70:
	mov	r2, r1	@, eCmdID
	mov	r0, #1	@,
	ldr	r1, .L88+8	@,
	bl	dprint_vfmw	@
.L82:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L87:
	ldr	lr, .L88+12	@ pTargetHandler,
.L73:
	mov	r3, lr	@ pTargetHandler, pTargetHandler
	mov	r1, r2	@, pArgs
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ pTargetHandler
.L86:
	ldr	r1, .L88+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L82	@
.L89:
	.align	2
.L88:
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
	bne	.L93	@,
	ldr	r5, .L95	@ tmp118,
	ldr	r3, [r5, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r3, #1	@ D.37179, g_VfmwInitCount,
	str	r3, [r5, #4]	@ D.37179, g_VfmwInitCount
	cmp	r3, #0	@ D.37179,
	ble	.L92	@,
	bl	OSAL_UP	@
	mov	r0, r4	@ D.37178, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L92:
	bl	VCTRL_CloseVfmw	@
	mov	r6, r0	@ ret,
	bl	MEM_ManagerClearOperation	@
	str	r4, [r5]	@ ret, g_VfmwEnableFlag
	bl	OSAL_UP	@
	adds	r0, r6, #0	@ D.37180, ret,
	movne	r0, #1	@ D.37180,
	rsb	r0, r0, #0	@ D.37178, D.37180
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L93:
	mvn	r0, #0	@ D.37178,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L96:
	.align	2
.L95:
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
	beq	.L101	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L102	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanState	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L102	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.37186,
.L99:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L101:
	ldr	ip, .L102+4	@ tmp117,
	mov	r0, r4	@, pArgs
	movw	r3, #445	@,
	ldr	r2, .L102+8	@,
	ldr	r1, .L102+12	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37186,
	b	.L99	@
.L103:
	.align	2
.L102:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+336
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetChanState, .-VDEC_CID_GetChanState
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
	beq	.L108	@,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L109	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, .L109+4	@ tmp119,
	movw	r3, #11160	@ tmp121,
	ldr	r2, [r5]	@ D.37193, MEM[(HI_U32 *)pArgs_2(D)]
	movt	r3, 1	@ tmp121,
	mla	r4, r3, r4, r1	@ tmp122, tmp121, ChanID, tmp119
	str	r2, [r4, #24]	@ D.37193, s_DnrChan[ChanID_7(D)].userSetRwzb_state
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L109	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L108:
	ldr	ip, .L109+8	@ tmp117,
	mov	r0, r5	@, pArgs
	movw	r3, #909	@,
	ldr	r2, .L109+12	@,
	ldr	r1, .L109+16	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L110:
	.align	2
.L109:
	.word	g_TaskLock
	.word	s_DnrChan
	.word	.LC2
	.word	.LANCHOR0+360
	.word	.LC1
	.fnend
	.size	VDEC_CID_RWZBState, .-VDEC_CID_RWZBState
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
	beq	.L115	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L116	@,
	bl	OSAL_SpinLockIRQ	@
	add	r1, sp, #8	@,,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r2, [sp, #8]	@ stMem.PhyAddr, stMem.PhyAddr
	ldr	r3, [sp, #16]	@ stMem.Length, stMem.Length
	stmia	r4, {r2, r3}	@ pArgs,,
	adds	r0, r0, #0	@ D.37203,,
	movne	r0, #1	@ D.37203,
	rsb	r4, r0, #0	@ D.37202, D.37203
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L116	@,
	bl	OSAL_SpinUnLockIRQ	@
.L113:
	mov	r0, r4	@, D.37202
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L115:
	ldr	ip, .L116+4	@ tmp122,
	mov	r0, r4	@, pArgs
	movw	r3, #462	@,
	ldr	r2, .L116+8	@,
	ldr	r1, .L116+12	@,
	mvn	r4, #0	@ D.37202,
	str	ip, [sp]	@ tmp122,
	bl	dprint_vfmw	@
	b	.L113	@
.L117:
	.align	2
.L116:
	.word	g_TaskLock
	.word	.LC2
	.word	.LANCHOR0+380
	.word	.LC1
	.fnend
	.size	VDEC_CID_GetUsrDecFrame, .-VDEC_CID_GetUsrDecFrame
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
	beq	.L122	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L123	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_PutUsrdecFrame	@
	adds	r0, r0, #0	@ D.37212,,
	movne	r0, #1	@ D.37212,
	rsb	r4, r0, #0	@ D.37211, D.37212
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L123	@,
	bl	OSAL_SpinUnLockIRQ	@
.L120:
	mov	r0, r4	@, D.37211
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L122:
	ldr	ip, .L123+4	@ tmp120,
	mov	r0, r4	@, pArgs
	mov	r3, #480	@,
	ldr	r2, .L123+8	@,
	ldr	r1, .L123+12	@,
	mvn	r4, #0	@ D.37211,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L120	@
.L124:
	.align	2
.L123:
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
	ldr	r1, .L133	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r5, #0	@ pArgs,
	beq	.L131	@,
	ldr	r0, .L133+4	@,
	bl	OSAL_SpinLockIRQ	@
	add	r2, sp, #20	@,,
	add	r1, sp, #8	@,,
	ldr	r0, [r5]	@, MEM[(HI_S32 *)pArgs_8(D)]
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@ D.37225
	mvnne	r4, #0	@ ret,
	beq	.L132	@,
.L128:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L133+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.37224, ret
.L127:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L132:
	ldr	r3, [sp, #8]	@ VdmMem, VdmMem
	mov	r4, r0	@ ret, D.37225
	ldr	r1, [sp, #20]	@ ScdMem, ScdMem
	ldr	r2, [sp, #12]	@ VdmMem, VdmMem
	add	r1, r3, r1	@ D.37225, VdmMem, ScdMem
	ldr	ip, [sp, #24]	@ ScdMem, ScdMem
	ldr	r3, [sp, #16]	@ VdmMem, VdmMem
	ldr	r0, [sp, #28]	@ ScdMem, ScdMem
	add	r2, r2, ip	@ D.37225, VdmMem, ScdMem
	stmia	r5, {r1, r2}	@ pArgs,,
	add	r3, r3, r0	@ D.37225, VdmMem, ScdMem
	str	r3, [r5, #8]	@ D.37225, MEM[(struct CHAN_MEM_BUDGET_S *)pArgs_8(D)].FluentMemSize
	b	.L128	@
.L131:
	ldr	ip, .L133+8	@ tmp131,
	mov	r0, r5	@, pArgs
	mov	r3, #512	@,
	ldr	r2, .L133+12	@,
	ldr	r1, .L133+16	@,
	str	ip, [sp]	@ tmp131,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37224,
	b	.L127	@
.L134:
	.align	2
.L133:
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
	ldr	r1, .L142	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L141	@,
	ldr	r0, .L142+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ pArgs,,
	mov	r3, #1	@,
	add	r2, sp, #8	@,,
	bl	VCTRL_GetChanMemSizeWithOption	@
	cmp	r0, #0	@ D.37237
	addeq	r1, sp, #12	@,,
	ldreq	ip, [sp, #8]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	moveq	r5, r0	@ ret, D.37237
	ldmeqia	r1, {r1, r2, r3}	@,,,
	mvnne	r5, #0	@ ret,
	streq	ip, [r4]	@ DetailMemSize.VdhDetailMem, MEM[(HI_S32 *)pArgs_8(D)]
	stmeqib	r4, {r1, r2, r3}	@ pArgs,,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L142+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@ D.37236, ret
.L137:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L141:
	ldr	ip, .L142+8	@ tmp128,
	mov	r0, r4	@, pArgs
	movw	r3, #543	@,
	ldr	r2, .L142+12	@,
	ldr	r1, .L142+16	@,
	str	ip, [sp]	@ tmp128,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37236,
	b	.L137	@
.L143:
	.align	2
.L142:
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
	ldr	r1, .L149	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L148	@,
	add	r1, r4, #4	@, pArgs,
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_7(D)]
	bl	VCTRL_CreateChan	@
	ldr	r1, .L149+4	@,
	mov	r5, r0	@ ret,
	mov	r2, r0	@, ret
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, r5, asr #31	@ D.37247, ret,
	str	r5, [r4]	@ ret, MEM[(HI_S32 *)pArgs_7(D)]
.L146:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L148:
	ldr	ip, .L149+8	@ tmp124,
	mov	r0, r4	@, pArgs
	movw	r3, #573	@,
	ldr	r2, .L149+12	@,
	ldr	r1, .L149+16	@,
	str	ip, [sp]	@ tmp124,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37247,
	b	.L146	@
.L150:
	.align	2
.L149:
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
	ldr	r1, .L156	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L155	@,
	mov	r3, #0	@,
	mov	r2, #2	@,
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_CreateChanWithOption	@
	mov	r3, r0	@ ret,
	mov	r0, r0, asr #31	@ D.37260, ret,
	str	r3, [r4]	@ ret, MEM[(HI_S32 *)pArgs_7(D)]
.L153:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L155:
	ldr	ip, .L156+4	@ tmp125,
	mov	r0, r4	@, pArgs
	movw	r3, #594	@,
	ldr	r2, .L156+8	@,
	ldr	r1, .L156+12	@,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37260,
	b	.L153	@
.L157:
	.align	2
.L156:
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
	beq	.L162	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L163	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	adds	r0, r0, #0	@ D.37272,,
	movne	r0, #1	@ D.37272,
	rsb	r4, r0, #0	@ D.37271, D.37272
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L163	@,
	bl	OSAL_SpinUnLockIRQ	@
.L160:
	mov	r0, r4	@, D.37271
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L162:
	ldr	ip, .L163+4	@ tmp120,
	mov	r0, r4	@, pArgs
	mov	r3, #632	@,
	ldr	r2, .L163+8	@,
	ldr	r1, .L163+12	@,
	mvn	r4, #0	@ D.37271,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L160	@
.L164:
	.align	2
.L163:
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
	beq	.L169	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L170	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigChan	@
	adds	r0, r0, #0	@ D.37281,,
	movne	r0, #1	@ D.37281,
	rsb	r4, r0, #0	@ D.37280, D.37281
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L170	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_LoadDspCode	@
.L167:
	mov	r0, r4	@, D.37280
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L169:
	ldr	ip, .L170+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #647	@,
	ldr	r2, .L170+8	@,
	ldr	r1, .L170+12	@,
	mvn	r4, #0	@ D.37280,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L167	@
.L171:
	.align	2
.L170:
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
	beq	.L176	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L177	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_StartChanWithOption	@
	adds	r0, r0, #0	@ D.37290,,
	movne	r0, #1	@ D.37290,
	rsb	r4, r0, #0	@ D.37289, D.37290
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L177	@,
	bl	OSAL_SpinUnLockIRQ	@
.L174:
	mov	r0, r4	@, D.37289
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L176:
	ldr	ip, .L177+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #681	@,
	ldr	r2, .L177+8	@,
	ldr	r1, .L177+12	@,
	mvn	r4, #0	@ D.37289,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L174	@
.L178:
	.align	2
.L177:
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
	beq	.L183	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L184	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.37299,,
	movne	r0, #1	@ D.37299,
	rsb	r4, r0, #0	@ D.37298, D.37299
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L184	@,
	bl	OSAL_SpinUnLockIRQ	@
.L181:
	mov	r0, r4	@, D.37298
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L183:
	ldr	ip, .L184+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #726	@,
	ldr	r2, .L184+8	@,
	ldr	r1, .L184+12	@,
	mvn	r4, #0	@ D.37298,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L181	@
.L185:
	.align	2
.L184:
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
	beq	.L190	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L191	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetStreamInterface	@
	adds	r0, r0, #0	@ D.37308,,
	movne	r0, #1	@ D.37308,
	rsb	r4, r0, #0	@ D.37307, D.37308
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L191	@,
	bl	OSAL_SpinUnLockIRQ	@
.L188:
	mov	r0, r4	@, D.37307
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L190:
	ldr	ip, .L191+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #741	@,
	ldr	r2, .L191+8	@,
	ldr	r1, .L191+12	@,
	mvn	r4, #0	@ D.37307,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L188	@
.L192:
	.align	2
.L191:
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
	beq	.L197	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L198	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4]	@ ChanID, MEM[(struct IMAGE_INTF_S *)pArgs_4(D)].image_provider_inst_id
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDSDFlag	@
	ldr	r2, .L198+4	@ tmp119,
	ldr	r3, .L198+8	@ tmp120,
	stmib	r4, {r2, r3}	@ pArgs,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L198	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.37316,
.L195:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L197:
	ldr	ip, .L198+12	@ tmp117,
	mov	r0, r4	@, pArgs
	mov	r3, #756	@,
	ldr	r2, .L198+16	@,
	ldr	r1, .L198+20	@,
	str	ip, [sp]	@ tmp117,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37316,
	b	.L195	@
.L199:
	.align	2
.L198:
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
	ldr	r1, .L205	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L204	@,
	ldr	r0, .L205+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L205+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.37323,
.L202:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L204:
	ldr	ip, .L205+8	@ tmp120,
	mov	r0, r4	@, pArgs
	mov	r3, #804	@,
	ldr	r2, .L205+12	@,
	ldr	r1, .L205+16	@,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37323,
	b	.L202	@
.L206:
	.align	2
.L205:
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
	beq	.L211	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L212	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetStreamSize	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L212	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.37331, ret
.L209:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L211:
	ldr	ip, .L212+4	@ tmp118,
	mov	r0, r4	@, pArgs
	movw	r3, #819	@,
	ldr	r2, .L212+8	@,
	ldr	r1, .L212+12	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37331,
	b	.L209	@
.L213:
	.align	2
.L212:
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
	beq	.L219	@,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L221	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	add	r1, sp, #8	@,,
	bl	VCTRL_GetChanMemInfo	@
	cmp	r0, #0	@,
	bne	.L220	@,
	ldr	r3, [sp, #16]	@ D.37343, MemRec.PhyAddr
	ldr	r2, [sp, #12]	@ D.37344, MemRec.VirAddr
	ldr	r1, [sp, #20]	@ MemRec.Length, MemRec.Length
	cmp	r3, #0	@ D.37343,
	cmpne	r2, #0	@, D.37344,
	str	r3, [r5]	@ D.37343, MEM[(struct MEM_DESC_S *)pArgs_4(D)].PhyAddr
	str	r2, [r5, #4]	@ D.37344, MEM[(struct MEM_DESC_S *)pArgs_4(D)].VirAddr
	str	r1, [r5, #8]	@ MemRec.Length, MEM[(struct MEM_DESC_S *)pArgs_4(D)].Length
	moveq	r3, #1	@ D.37343,
	movne	r3, #0	@ D.37343,
	rsb	r4, r3, #0	@ D.37341, D.37343
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L221	@,
	bl	OSAL_SpinUnLockIRQ	@
.L216:
	mov	r0, r4	@, D.37341
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L220:
	mvn	r2, #0	@,
	ldr	r1, .L221+4	@,
	mov	r0, #22	@,
	mov	r4, r2	@ D.37341,
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L221	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L216	@
.L219:
	ldr	ip, .L221+8	@ tmp125,
	mov	r0, r5	@, pArgs
	movw	r3, #837	@,
	ldr	r2, .L221+12	@,
	ldr	r1, .L221+16	@,
	mvn	r4, #0	@ D.37341,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	b	.L216	@
.L222:
	.align	2
.L221:
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
	ldr	r1, .L228	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L227	@,
	ldr	r0, .L228+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_7(D)]
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.37355,
	str	r0, [r4]	@ D.37355, MEM[(HI_S32 *)pArgs_7(D)]
	movne	r0, #0	@ D.37354,
	moveq	r0, #1	@ D.37354,
	rsb	r4, r0, #0	@ D.37353, D.37354
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L228+4	@,
	bl	OSAL_SpinUnLockIRQ	@
.L225:
	mov	r0, r4	@, D.37353
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L227:
	ldr	ip, .L228+8	@ tmp122,
	mov	r0, r4	@, pArgs
	movw	r3, #879	@,
	ldr	r2, .L228+12	@,
	ldr	r1, .L228+16	@,
	mvn	r4, #0	@ D.37353,
	str	ip, [sp]	@ tmp122,
	bl	dprint_vfmw	@
	b	.L225	@
.L229:
	.align	2
.L228:
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
	beq	.L234	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L235	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetDiscardPicParam	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L235	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.37362, ret
.L232:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L234:
	ldr	ip, .L235+4	@ tmp118,
	mov	r0, r4	@, pArgs
	movw	r3, #895	@,
	ldr	r2, .L235+8	@,
	ldr	r1, .L235+12	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37362,
	b	.L232	@
.L236:
	.align	2
.L235:
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
	beq	.L242	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L244	@,
	bl	OSAL_SpinLockIRQ	@
	add	r1, sp, #8	@,,
	mov	r0, r5	@, ChanID
	mov	r2, #1	@ tmp126,
	mov	r3, #0	@ tmp127,
	str	r2, [sp, #8]	@ tmp126, option.s32KeepBS
	str	r3, [sp, #12]	@ tmp127, option.s32KeepSPSPPS
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.37372,,
	movne	r0, #1	@ D.37372,
	rsb	r4, r0, #0	@ ret, D.37372
	cmp	r4, #0	@ ret,
	beq	.L243	@,
.L240:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L244	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.37371, ret
.L239:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L243:
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SeekPts	@
	adds	r0, r0, #0	@ D.37372,,
	movne	r0, #1	@ D.37372,
	rsb	r4, r0, #0	@ ret, D.37372
	b	.L240	@
.L242:
	ldr	ip, .L244+4	@ tmp124,
	mov	r0, r6	@, pArgs
	movw	r3, #925	@,
	ldr	r2, .L244+8	@,
	ldr	r1, .L244+12	@,
	str	ip, [sp]	@ tmp124,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37371,
	b	.L239	@
.L245:
	.align	2
.L244:
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
	beq	.L251	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L253	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	DNR_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	beq	.L252	@,
.L249:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	adds	r0, r0, #0	@ D.37381,,
	movne	r0, #1	@ D.37381,
	rsb	r4, r0, #0	@ D.37380, D.37381
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L253	@,
	bl	OSAL_SpinUnLockIRQ	@
.L248:
	mov	r0, r4	@, D.37380
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L252:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	mov	r3, #960	@,
	ldr	r2, .L253+4	@,
	ldr	r1, .L253+8	@,
	adds	ip, r0, #0	@ D.37381,,
	mov	r0, #22	@,
	movne	ip, #1	@ D.37381,
	rsb	ip, ip, #0	@ D.37382, D.37381
	str	ip, [sp]	@ D.37382,
	bl	dprint_vfmw	@
	b	.L249	@
.L251:
	ldr	ip, .L253+12	@ tmp125,
	mov	r0, r4	@, pArgs
	movw	r3, #949	@,
	ldr	r2, .L253+4	@,
	ldr	r1, .L253+16	@,
	mvn	r4, #0	@ D.37380,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	b	.L248	@
.L254:
	.align	2
.L253:
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
	beq	.L260	@,
	mov	r6, r0	@ ChanID, ChanID
	ldr	r0, .L262	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r6	@, ChanID
	bl	DNR_ConfigBackOptimizeFlag	@
	adds	r0, r0, #0	@ D.37391,,
	movne	r0, #1	@ D.37391,
	rsb	r4, r0, #0	@ ret, D.37391
	cmp	r4, #0	@ ret,
	beq	.L261	@,
.L258:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L262	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.37390, ret
.L257:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L261:
	mov	r1, r5	@, pArgs
	mov	r0, r6	@, ChanID
	bl	VCTRL_ConfigPVRInfo	@
	adds	r0, r0, #0	@ D.37391,,
	movne	r0, #1	@ D.37391,
	rsb	r4, r0, #0	@ ret, D.37391
	b	.L258	@
.L260:
	ldr	ip, .L262+4	@ tmp124,
	mov	r0, r5	@, pArgs
	movw	r3, #977	@,
	ldr	r2, .L262+8	@,
	ldr	r1, .L262+12	@,
	str	ip, [sp]	@ tmp124,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37390,
	b	.L257	@
.L263:
	.align	2
.L262:
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
	beq	.L268	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L269	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r2, r4	@, pArgs
	mov	r1, #1	@,
	mov	r0, r5	@, ChanID
	bl	DNR_SetDataSource	@
	adds	r0, r0, #0	@ D.37400,,
	movne	r0, #1	@ D.37400,
	rsb	r4, r0, #0	@ D.37399, D.37400
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L269	@,
	bl	OSAL_SpinUnLockIRQ	@
.L266:
	mov	r0, r4	@, D.37399
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L268:
	ldr	ip, .L269+4	@ tmp120,
	mov	r0, r4	@, pArgs
	movw	r3, #1005	@,
	ldr	r2, .L269+8	@,
	ldr	r1, .L269+12	@,
	mvn	r4, #0	@ D.37399,
	str	ip, [sp]	@ tmp120,
	bl	dprint_vfmw	@
	b	.L266	@
.L270:
	.align	2
.L269:
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
	beq	.L275	@,
	ldr	ip, .L276	@ tmp126,
	add	r3, sp, #20	@,,
	add	r2, sp, #16	@,,
	add	r1, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r7, [ip, r0, asl #2]	@ pFsp, s_pFspInst
	bl	VCTRL_GetChanImgNum	@
	ldr	r1, .L276+4	@ tmp132,
	movw	r3, #11160	@ tmp134,
	movt	r3, 1	@ tmp134,
	ldr	r2, [sp, #12]	@ RefNum, RefNum
	mov	r0, r4	@ D.37412, tmp119
	mla	r5, r3, r5, r1	@ tmp135, tmp134, ChanID, tmp132
	str	r2, [r6]	@ RefNum, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].u32RefNum
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.37415, pFsp_10->s32DecFsNum
	strb	r3, [r6, #8]	@ D.37415, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s8DecFsNum
	ldr	r3, [r5, #448]	@ D.37413, MEM[(struct DNR_CHAN_S *)&s_DnrChan][ChanID_9(D)].s32ValidImgNum
	str	r3, [r6, #4]	@ D.37413, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s32DisFsNum
.L273:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L275:
	ldr	ip, .L276+8	@ tmp125,
	mov	r0, r6	@, pArgs
	movw	r3, #1041	@,
	ldr	r2, .L276+12	@,
	ldr	r1, .L276+16	@,
	str	ip, [sp]	@ tmp125,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37412,
	b	.L273	@
.L277:
	.align	2
.L276:
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
	ldr	r0, .L283	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L283+4	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L283+8	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L283+12	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L283+16	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L283+20	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L283+24	@,
	ldmfd	sp!, {r4, lr}	@
	b	OSAL_SpinLockIRQInit	@
.L284:
	.align	2
.L283:
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
	beq	.L298	@,
	ldr	r4, .L300	@ tmp231,
	ldr	r3, [r4]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L299	@,
	mov	r1, #8	@,
	ldr	r0, .L300+4	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L300+8	@,
	mov	fp, #0	@ tmp141,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L300+12	@,
	mov	r9, #15	@ tmp143,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L300+16	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L300+20	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L300+24	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L300+28	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L300+32	@,
	bl	__memzero	@
	ldr	r3, .L300+36	@ tmp159,
	ldr	r10, .L300+40	@ tmp140,
	ldr	r8, .L300+44	@ tmp142,
	str	r3, [r4, #40]	@ tmp159, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	ldr	r3, .L300+48	@ tmp232,
	ldr	r7, .L300+52	@ tmp145,
	ldr	r6, .L300+56	@ tmp147,
	ldr	lr, .L300+60	@ tmp149,
	ldr	ip, .L300+64	@ tmp151,
	ldr	r0, .L300+68	@ tmp153,
	ldr	r1, .L300+72	@ tmp155,
	ldr	r2, .L300+76	@ tmp157,
	str	r3, [r4, #44]	@ tmp232, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r3, .L300+80	@ tmp235,
	str	fp, [r10]	@ tmp141, AcceleratorCharacter
	str	r9, [r8, #16]	@ tmp143, g_chipID
	ldr	r10, .L300+84	@ tmp163,
	ldr	fp, .L300+88	@ tmp165,
	ldr	r8, .L300+92	@ tmp167,
	ldr	r9, .L300+96	@ tmp169,
	str	r7, [r4, #8]	@ tmp145, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	str	r6, [r4, #12]	@ tmp147, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	ldr	r7, .L300+100	@ tmp171,
	ldr	r6, .L300+104	@ tmp173,
	str	lr, [r4, #16]	@ tmp149, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	str	ip, [r4, #20]	@ tmp151, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	ldr	lr, .L300+108	@ tmp175,
	ldr	ip, .L300+112	@ tmp177,
	str	r0, [r4, #24]	@ tmp153, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	str	r1, [r4, #32]	@ tmp155, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	ldr	r0, .L300+116	@ tmp179,
	ldr	r1, .L300+120	@ tmp181,
	str	r2, [r4, #36]	@ tmp157, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	str	r3, [r4, #88]	@ tmp235, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	ldr	r2, .L300+124	@ tmp183,
	ldr	r3, .L300+128	@ tmp233,
	str	r10, [r4, #48]	@ tmp163, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	str	fp, [r4, #108]	@ tmp165, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	str	r8, [r4, #52]	@ tmp167, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	str	r9, [r4, #56]	@ tmp169, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	str	r7, [r4, #60]	@ tmp171, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	str	r6, [r4, #64]	@ tmp173, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	str	lr, [r4, #68]	@ tmp175, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	str	ip, [r4, #72]	@ tmp177, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	ldr	lr, .L300+132	@ tmp201,
	ldr	ip, .L300+136	@ tmp203,
	str	r0, [r4, #76]	@ tmp179, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	str	r1, [r4, #80]	@ tmp181, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	ldr	r0, .L300+140	@ tmp205,
	ldr	r1, .L300+144	@ tmp207,
	str	r2, [r4, #84]	@ tmp183, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	str	r3, [r4, #92]	@ tmp233, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	ldr	r2, .L300+148	@ tmp209,
	ldr	r3, .L300+152	@ tmp234,
	ldr	r10, .L300+156	@ tmp189,
	ldr	fp, .L300+160	@ tmp191,
	ldr	r8, .L300+164	@ tmp193,
	ldr	r9, .L300+168	@ tmp195,
	ldr	r7, .L300+172	@ tmp197,
	ldr	r6, .L300+176	@ tmp199,
	str	lr, [r4, #120]	@ tmp201, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	str	ip, [r4, #124]	@ tmp203, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r0, [r4, #128]	@ tmp205, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	str	r10, [r4, #96]	@ tmp189, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	str	fp, [r4, #100]	@ tmp191, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	str	r8, [r4, #28]	@ tmp193, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	str	r9, [r4, #104]	@ tmp195, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	str	r7, [r4, #112]	@ tmp197, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	str	r6, [r4, #116]	@ tmp199, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	str	r1, [r4, #132]	@ tmp207, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	str	r3, [r4, #140]	@ tmp234, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	str	r2, [r4, #136]	@ tmp209, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #28]	@ D.37426, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.37426,
	beq	.L290	@,
	blx	r3	@ D.37426
.L290:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	mov	r0, #0	@,
	bl	VCTRL_OpenVfmw	@
	ldr	r1, .L300+180	@,
	mov	r6, r0	@ ret,
	mov	r2, r0	@, ret
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ ret,
	ldr	r0, [r4, #52]	@ D.37426, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	moveq	r3, #1	@ tmp215,
	movne	r3, #0	@ tmp219,
	cmp	r0, #0	@ D.37426,
	str	r3, [r4]	@ tmp219, g_VfmwEnableFlag
	str	r3, [r4, #4]	@ tmp219, g_VfmwInitCount
	beq	.L293	@,
	blx	r0	@ D.37426
	adds	r6, r6, #0	@ D.37429, ret,
	movne	r6, #1	@ D.37429,
	rsb	r6, r6, #0	@ D.37424, D.37429
.L289:
	ldmia	r5, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
.L287:
	mov	r0, r6	@, D.37424
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L299:
	ldr	r3, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	mov	r6, #0	@ D.37424,
	add	r3, r3, #1	@ D.37425, g_VfmwInitCount,
	str	r3, [r4, #4]	@ D.37425, g_VfmwInitCount
	b	.L289	@
.L293:
	movw	r2, #405	@,
	ldr	r1, .L300+184	@,
	bl	dprint_vfmw	@
	adds	r6, r6, #0	@ D.37429, ret,
	movne	r6, #1	@ D.37429,
	rsb	r6, r6, #0	@ D.37424, D.37429
	b	.L289	@
.L298:
	bl	OSAL_UP	@
	ldr	r1, .L300+188	@,
	mov	r0, #1	@,
	mvn	r6, #0	@ D.37424,
	bl	dprint_vfmw	@
	b	.L287	@
.L301:
	.align	2
.L300:
	.word	.LANCHOR2
	.word	g_TaskLock
	.word	g_RecordLock
	.word	g_SpinLock
	.word	g_SpinLock_fsp
	.word	g_SpinLockIsr_Image2D
	.word	g_SpinLockIrq_Destroy
	.word	g_ActivateLock
	.word	g_DSDLock
	.word	VDMHAL_V200R004_CloseHAL
	.word	AcceleratorCharacter
	.word	.LANCHOR1
	.word	VDMHAL_V200R004_ArrangeMem
	.word	VDM_OpenHardware
	.word	VDM_CloseHardware
	.word	SCD_OpenHardware
	.word	SCD_CloseHardware
	.word	BPD_OpenHardware
	.word	VDMHAL_V200R004_GetHalMemSize
	.word	VDMHAL_V200R004_OpenHAL
	.word	VDMHAL_V200R004_IsVdmRun
	.word	VDMHAL_V200R004_ResetVdm
	.word	VDMHAL_V200R400_GetPmvSize
	.word	VDMHAL_V200R004_GlbReset
	.word	VDMHAL_V200R004_ClearIntState
	.word	VDMHAL_V200R004_MaskInt
	.word	VDMHAL_V200R004_EnableInt
	.word	VDMHAL_V200R004_CheckReg
	.word	VDMHAL_V200R004_StartHwRepair
	.word	VDMHAL_V200R004_StartHwDecode
	.word	VDMHAL_V200R004_PrepareDec
	.word	VDMHAL_V200R004_IsVdmReady
	.word	VDMHAL_V200R004_PrepareRepair
	.word	DNRHAL_V200_CfgReg
	.word	DNRHAL_V200_Reset
	.word	DNRHAL_V200_Start
	.word	DNRHAL_V200_ClearIntState
	.word	DNRHAL_V200_MaskInt
	.word	DNRHAL_V200_EnableInt
	.word	VDMHAL_V200R004_MakeDecReport
	.word	VDMHAL_V200R004_UpdateHardwareInfo
	.word	VDMHAL_V200R004_GetCharacter
	.word	VDMHAL_V200R004_WriteBigTitle1DYuv
	.word	DNR_OpenHardware
	.word	DNRHAL_V200_Init
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
	adds	r0, r0, #0	@ D.37435,,
	movne	r0, #1	@ D.37435,
	rsb	r0, r0, #0	@, D.37435
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
	mov	r3, #5	@ tmp123,
	str	r2, [r4, #36]	@ tmp120, pCap_1(D)->SupportedStd
	mov	r2, #1	@ tmp122,
	str	r3, [r4, #48]	@ tmp123, pCap_1(D)->SupportedStd
	mov	r3, #14	@ tmp126,
	str	r2, [r4, #44]	@ tmp122, pCap_1(D)->SupportedStd
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
	mov	r3, #4	@ tmp111,
	str	r2, [r4, #80]	@ tmp131, pCap_1(D)->SupportedStd
	mov	r2, #19	@ tmp133,
	str	r1, [r4, #8]	@ tmp113, pCap_1(D)->s32MaxFrameWidth
	str	r2, [r4, #88]	@ tmp133, pCap_1(D)->SupportedStd
	str	r3, [r4]	@ tmp111, pCap_1(D)->s32MaxChanNum
	str	r3, [r4, #52]	@ tmp111, pCap_1(D)->SupportedStd
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
	ldr	r1, .L311	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L310	@,
	ldr	r0, .L311+4	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L311+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.37444,
.L308:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L310:
	ldr	ip, .L311+8	@ tmp118,
	mov	r0, r4	@, pArgs
	movw	r3, #495	@,
	ldr	r2, .L311+12	@,
	ldr	r1, .L311+16	@,
	str	ip, [sp]	@ tmp118,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37444,
	b	.L308	@
.L312:
	.align	2
.L311:
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
	ldr	r1, .L315	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L316:
	.align	2
.L315:
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
	ldr	r1, .L319	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L320:
	.align	2
.L319:
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
	.type	__func__.36260, %object
	.size	__func__.36260, 22
__func__.36260:
	.ascii	"VDEC_CID_SetFrameRate\000"
	.space	2
	.type	__func__.36265, %object
	.size	__func__.36265, 29
__func__.36265:
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
	.type	__func__.36072, %object
	.size	__func__.36072, 22
__func__.36072:
	.ascii	"VDEC_CID_GetChanState\000"
	.space	2
	.type	__func__.36229, %object
	.size	__func__.36229, 19
__func__.36229:
	.ascii	"VDEC_CID_RWZBState\000"
	.space	1
	.type	__func__.36080, %object
	.size	__func__.36080, 24
__func__.36080:
	.ascii	"VDEC_CID_GetUsrDecFrame\000"
	.type	__func__.36086, %object
	.size	__func__.36086, 24
__func__.36086:
	.ascii	"VDEC_CID_PutUsrDecFrame\000"
	.type	__func__.36100, %object
	.size	__func__.36100, 24
__func__.36100:
	.ascii	"VDEC_CID_GetChanMemSize\000"
	.type	__func__.36109, %object
	.size	__func__.36109, 40
__func__.36109:
	.ascii	"VDEC_CID_GetChanDetailMemSizeWithOption\000"
	.type	__func__.36116, %object
	.size	__func__.36116, 20
__func__.36116:
	.ascii	"VDEC_CID_CreateChan\000"
	.type	__func__.36123, %object
	.size	__func__.36123, 30
__func__.36123:
	.ascii	"VDEC_CID_CreateChanWithOption\000"
	.space	2
	.type	__func__.36139, %object
	.size	__func__.36139, 20
__func__.36139:
	.ascii	"VDEC_CID_GetChanCfg\000"
	.type	__func__.36145, %object
	.size	__func__.36145, 17
__func__.36145:
	.ascii	"VDEC_CID_CfgChan\000"
	.space	3
	.type	__func__.36156, %object
	.size	__func__.36156, 29
__func__.36156:
	.ascii	"VDEC_CID_StartChanWithOption\000"
	.space	3
	.type	__func__.36172, %object
	.size	__func__.36172, 29
__func__.36172:
	.ascii	"VDEC_CID_ResetChanWithOption\000"
	.space	3
	.type	__func__.36178, %object
	.size	__func__.36178, 23
__func__.36178:
	.ascii	"VDEC_CID_SetStreamIntf\000"
	.space	1
	.type	__func__.36184, %object
	.size	__func__.36184, 22
__func__.36184:
	.ascii	"VDEC_CID_GetImageIntf\000"
	.space	2
	.type	__func__.36195, %object
	.size	__func__.36195, 18
__func__.36195:
	.ascii	"VDEC_CID_CfgExtra\000"
	.space	2
	.type	__func__.36201, %object
	.size	__func__.36201, 23
__func__.36201:
	.ascii	"VDEC_CID_GetStreamSize\000"
	.space	1
	.type	__func__.36210, %object
	.size	__func__.36210, 24
__func__.36210:
	.ascii	"VDEC_CID_GetChanMemAddr\000"
	.type	__func__.36217, %object
	.size	__func__.36217, 24
__func__.36217:
	.ascii	"VDEC_CID_GetChanIDByMem\000"
	.type	__func__.36223, %object
	.size	__func__.36223, 28
__func__.36223:
	.ascii	"VDEC_CID_SetDiscardPicParam\000"
	.type	__func__.36237, %object
	.size	__func__.36237, 22
__func__.36237:
	.ascii	"VDEC_CID_SetPTSToSeek\000"
	.space	2
	.type	__func__.36243, %object
	.size	__func__.36243, 22
__func__.36243:
	.ascii	"VDEC_CID_SetTrickMode\000"
	.space	2
	.type	__func__.36249, %object
	.size	__func__.36249, 21
__func__.36249:
	.ascii	"VDEC_CID_SetCTRLInfo\000"
	.space	3
	.type	__func__.36255, %object
	.size	__func__.36255, 18
__func__.36255:
	.ascii	"VDEC_CID_FrameDNR\000"
	.space	2
	.type	__func__.36275, %object
	.size	__func__.36275, 21
__func__.36275:
	.ascii	"VDEC_CID_GetVFMWInfo\000"
	.space	3
	.type	__func__.36091, %object
	.size	__func__.36091, 23
__func__.36091:
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
	.size	g_FrameRate, 16
g_FrameRate:
	.word	30
	.space	12
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	15
	.type	g_LastFrameRate, %object
	.size	g_LastFrameRate, 16
g_LastFrameRate:
	.word	30
	.space	12
	.type	g_ChipMaxHeight, %object
	.size	g_ChipMaxHeight, 4
g_ChipMaxHeight:
	.word	8192
	.type	g_ChipMaxWidth, %object
	.size	g_ChipMaxWidth, 4
g_ChipMaxWidth:
	.word	8192
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
