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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(vfmw) -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
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
	ldr	r2, [r3]	@ D.34024, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34025, _2->PERI_CRG30.u32
	orr	r3, r3, #3	@ u32TmpValue, D.34025,
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
	ldr	r2, [r3]	@ D.34028, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34029, _2->PERI_CRG30.u32
	orr	r3, r3, #80	@ u32TmpValue, D.34029,
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
	ldr	r2, [r3]	@ D.34032, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34033, _2->PERI_CRG30.u32
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
	ldr	r2, [r3]	@ D.34036, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34037, _2->PERI_CRG30.u32
	orr	r3, r3, #32	@ u32TmpValue, D.34037,
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
	ldr	r2, [r3]	@ D.34040, g_pstRegCrg
	ldr	r3, [r2, #112]	@ D.34041, _2->PERI_CRG28.u32
	orr	r3, r3, #1	@ u32TmpValue, D.34041,
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
	.global	VDEC_CID_SetFrameRate
	.type	VDEC_CID_SetFrameRate, %function
VDEC_CID_SetFrameRate:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pArgs
	ldrne	r1, [r1]	@ D.34047, MEM[(HI_S32 *)pArgs_3(D)]
	movne	r3, #0	@ D.34046,
	ldrne	r2, .L20	@ tmp115,
	mvneq	r3, #0	@ D.34046,
	strne	r1, [r2, r0, asl #2]	@ D.34047, g_FrameRate
	mov	r0, r3	@, D.34046
	bx	lr	@
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.fnend
	.size	VDEC_CID_SetFrameRate, .-VDEC_CID_SetFrameRate
	.align	2
	.global	VDEC_CID_GetSCDBufferVirAddr
	.type	VDEC_CID_GetSCDBufferVirAddr, %function
VDEC_CID_GetSCDBufferVirAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pArgs
	ldrne	r2, .L25	@ tmp115,
	movne	r3, #0	@ D.34050,
	mvneq	r3, #0	@ D.34050,
	ldrne	r2, [r2, r0, asl #2]	@ D.34051, g_scd_vir
	mov	r0, r3	@, D.34050
	strne	r2, [r1]	@ D.34051, MEM[(HI_U32 *)pArgs_3(D)]
	bx	lr	@
.L26:
	.align	2
.L25:
	.word	g_scd_vir
	.fnend
	.size	VDEC_CID_GetSCDBufferVirAddr, .-VDEC_CID_GetSCDBufferVirAddr
	.align	2
	.global	VDEC_Control
	.type	VDEC_Control, %function
VDEC_Control:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L44	@ tmp152,
	ldr	r3, [r3]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	bne	.L40	@,
	cmp	r1, #10	@ eCmdID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldrne	r3, .L44+4	@ ivtmp.131,
	bne	.L31	@,
	b	.L43	@
.L32:
	ldr	lr, [r3, #12]	@ pTargetHandler, MEM[base: _3, offset: 12B]
	add	r3, r3, #8	@ ivtmp.131, ivtmp.131,
	cmp	lr, #0	@ pTargetHandler,
	beq	.L36	@,
	cmp	ip, r1	@ D.34064, eCmdID
	beq	.L29	@,
.L31:
	ldr	ip, [r3, #8]	@ D.34064, MEM[base: _3, offset: 8B]
	cmp	ip, #41	@ D.34064,
	bne	.L32	@,
.L36:
	mvn	r0, #0	@,
	ldr	pc, [sp], #4	@
.L43:
	ldr	lr, .L44+8	@ pTargetHandler,
.L29:
	mov	r3, lr	@ pTargetHandler, pTargetHandler
	mov	r1, r2	@, pArgs
	ldr	lr, [sp], #4	@,
	bx	r3	@ pTargetHandler
.L40:
	mvn	r0, #0	@,
	bx	lr	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	VDEC_CID_GetChanState
	.fnend
	.size	VDEC_Control, .-VDEC_Control
	.align	2
	.global	VDEC_CID_GetChanState
	.type	VDEC_CID_GetChanState, %function
VDEC_CID_GetChanState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L48	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L51	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanState	@
	ldr	r0, .L51	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34067,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L48:
	mvn	r0, #0	@ D.34067,
	bx	lr	@
.L52:
	.align	2
.L51:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetChanState, .-VDEC_CID_GetChanState
	.align	2
	.global	VDEC_CID_GetUsrDecFrame
	.type	VDEC_CID_GetUsrDecFrame, %function
VDEC_CID_GetUsrDecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	beq	.L55	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L57	@,
	mov	r4, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r2, [sp]	@ stMem.PhyAddr, stMem.PhyAddr
	ldr	r3, [sp, #8]	@ stMem.Length, stMem.Length
	stmia	r4, {r2, r3}	@ pArgs,,
	adds	r0, r0, #0	@ D.34072,,
	movne	r0, #1	@ D.34072,
	rsb	r4, r0, #0	@ D.34070, D.34072
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L57	@,
	bl	OSAL_SpinUnLockIRQ	@
.L54:
	mov	r0, r4	@, D.34070
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L55:
	mvn	r4, #0	@ D.34070,
	b	.L54	@
.L58:
	.align	2
.L57:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetUsrDecFrame, .-VDEC_CID_GetUsrDecFrame
	.align	2
	.global	VDEC_CID_RWZBState
	.type	VDEC_CID_RWZBState, %function
VDEC_CID_RWZBState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L65	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L66	@,
	mov	r5, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, .L66+4	@ tmp115,
	movw	r3, #11160	@ tmp117,
	ldr	r2, [r5]	@ D.34075, MEM[(HI_U32 *)pArgs_2(D)]
	movt	r3, 1	@ tmp117,
	mla	r0, r3, r4, r0	@ tmp118, tmp117, ChanID, tmp115
	str	r2, [r0, #24]	@ D.34075, s_DnrChan[ChanID_6(D)].userSetRwzb_state
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L66	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L65:
	mvn	r0, #0	@,
	bx	lr	@
.L67:
	.align	2
.L66:
	.word	g_TaskLock
	.word	s_DnrChan
	.fnend
	.size	VDEC_CID_RWZBState, .-VDEC_CID_RWZBState
	.align	2
	.global	VDEC_CID_PutUsrDecFrame
	.type	VDEC_CID_PutUsrDecFrame, %function
VDEC_CID_PutUsrDecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L70	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L72	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_PutUsrdecFrame	@
	adds	r0, r0, #0	@ D.34079,,
	movne	r0, #1	@ D.34079,
	rsb	r4, r0, #0	@ D.34078, D.34079
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L72	@,
	bl	OSAL_SpinUnLockIRQ	@
.L69:
	mov	r0, r4	@, D.34078
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L70:
	mvn	r4, #0	@ D.34078,
	b	.L69	@
.L73:
	.align	2
.L72:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_PutUsrDecFrame, .-VDEC_CID_PutUsrDecFrame
	.align	2
	.global	VDEC_CID_GetChanMemSize
	.type	VDEC_CID_GetChanMemSize, %function
VDEC_CID_GetChanMemSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L77	@,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L81	@,
	bl	OSAL_SpinLockIRQ	@
	add	r2, sp, #12	@,,
	mov	r1, sp	@,
	ldr	r0, [r5]	@, MEM[(HI_S32 *)pArgs_5(D)]
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@ D.34084
	mvnne	r4, #0	@ ret,
	bne	.L76	@,
	ldr	r3, [sp]	@ VdmMem, VdmMem
	mov	r4, r0	@ ret, D.34084
	ldr	r1, [sp, #12]	@ ScdMem, ScdMem
	ldr	r2, [sp, #4]	@ VdmMem, VdmMem
	add	r1, r3, r1	@ D.34084, VdmMem, ScdMem
	ldr	ip, [sp, #16]	@ ScdMem, ScdMem
	ldr	r3, [sp, #8]	@ VdmMem, VdmMem
	ldr	r0, [sp, #20]	@ ScdMem, ScdMem
	add	r2, r2, ip	@ D.34084, VdmMem, ScdMem
	stmia	r5, {r1, r2}	@ pArgs,,
	add	r3, r3, r0	@ D.34084, VdmMem, ScdMem
	str	r3, [r5, #8]	@ D.34084, MEM[(struct CHAN_MEM_BUDGET_S *)pArgs_5(D)].FluentMemSize
.L76:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L81	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34083, ret
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L77:
	mvn	r0, #0	@ D.34083,
	bx	lr	@
.L82:
	.align	2
.L81:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetChanMemSize, .-VDEC_CID_GetChanMemSize
	.align	2
	.global	VDEC_CID_GetChanDetailMemSizeWithOption
	.type	VDEC_CID_GetChanDetailMemSizeWithOption, %function
VDEC_CID_GetChanDetailMemSizeWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L86	@,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L90	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r3, #1	@,
	mov	r2, sp	@,
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_GetChanMemSizeWithOption	@
	cmp	r0, #0	@ D.34089
	ldmeqib	sp, {r1, r2, r3}	@,,,
	moveq	r5, r0	@ ret, D.34089
	ldreq	ip, [sp]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	mvnne	r5, #0	@ ret,
	streq	ip, [r4]	@ DetailMemSize.VdhDetailMem, MEM[(HI_S32 *)pArgs_5(D)]
	stmeqib	r4, {r1, r2, r3}	@ pArgs,,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L90	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@ D.34088, ret
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L86:
	mvn	r0, #0	@ D.34088,
	bx	lr	@
.L91:
	.align	2
.L90:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetChanDetailMemSizeWithOption, .-VDEC_CID_GetChanDetailMemSizeWithOption
	.align	2
	.global	VDEC_CID_CreateChan
	.type	VDEC_CID_CreateChan, %function
VDEC_CID_CreateChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L94	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_4(D)]
	add	r1, r1, #4	@, pArgs,
	bl	VCTRL_CreateChan	@
	mov	r3, r0	@ ret,
	mov	r0, r0, asr #31	@ D.34094, ret,
	str	r3, [r4]	@ ret, MEM[(HI_S32 *)pArgs_4(D)]
	ldmfd	sp!, {r4, pc}	@
.L94:
	mvn	r0, #0	@ D.34094,
	bx	lr	@
	.fnend
	.size	VDEC_CID_CreateChan, .-VDEC_CID_CreateChan
	.align	2
	.global	VDEC_CID_CreateChanWithOption
	.type	VDEC_CID_CreateChanWithOption, %function
VDEC_CID_CreateChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L99	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r3, #0	@,
	mov	r4, r1	@ pArgs, pArgs
	mov	r2, #2	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	bl	VCTRL_CreateChanWithOption	@
	mov	r3, r0	@ ret,
	mov	r0, r0, asr #31	@ D.34101, ret,
	str	r3, [r4]	@ ret, MEM[(HI_S32 *)pArgs_4(D)]
	ldmfd	sp!, {r4, pc}	@
.L99:
	mvn	r0, #0	@ D.34101,
	bx	lr	@
	.fnend
	.size	VDEC_CID_CreateChanWithOption, .-VDEC_CID_CreateChanWithOption
	.align	2
	.global	VDEC_CID_DestroyChan
	.type	VDEC_CID_DestroyChan, %function
VDEC_CID_DestroyChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_DestroyChan	@
	adds	r0, r0, #0	@ D.34108,,
	movne	r0, #1	@ D.34108,
	rsb	r0, r0, #0	@, D.34108
	ldmfd	sp!, {r4, pc}	@
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
	bl	VCTRL_DestroyChanWithOption	@
	adds	r0, r0, #0	@ D.34112,,
	movne	r0, #1	@ D.34112,
	rsb	r0, r0, #0	@, D.34112
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_DestroyChanWithOption, .-VDEC_CID_DestroyChanWithOption
	.align	2
	.global	VDEC_CID_GetChanCfg
	.type	VDEC_CID_GetChanCfg, %function
VDEC_CID_GetChanCfg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L108	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L110	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanCfg	@
	adds	r0, r0, #0	@ D.34117,,
	movne	r0, #1	@ D.34117,
	rsb	r4, r0, #0	@ D.34116, D.34117
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L110	@,
	bl	OSAL_SpinUnLockIRQ	@
.L107:
	mov	r0, r4	@, D.34116
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L108:
	mvn	r4, #0	@ D.34116,
	b	.L107	@
.L111:
	.align	2
.L110:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetChanCfg, .-VDEC_CID_GetChanCfg
	.align	2
	.global	VDEC_CID_CfgChan
	.type	VDEC_CID_CfgChan, %function
VDEC_CID_CfgChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L114	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L116	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigChan	@
	adds	r0, r0, #0	@ D.34122,,
	movne	r0, #1	@ D.34122,
	rsb	r5, r0, #0	@ D.34121, D.34122
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L116	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_LoadDspCode	@
.L113:
	mov	r0, r5	@, D.34121
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L114:
	mvn	r5, #0	@ D.34121,
	b	.L113	@
.L117:
	.align	2
.L116:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_CfgChan, .-VDEC_CID_CfgChan
	.align	2
	.global	VDEC_CID_StartChan
	.type	VDEC_CID_StartChan, %function
VDEC_CID_StartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r5, .L120	@ tmp117,
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_EnableEsBuf	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34126, ret,
	movne	r0, #1	@ D.34126,
	rsb	r0, r0, #0	@, D.34126
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L121:
	.align	2
.L120:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_StartChan, .-VDEC_CID_StartChan
	.align	2
	.global	VDEC_CID_StartChanWithOption
	.type	VDEC_CID_StartChanWithOption, %function
VDEC_CID_StartChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L124	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L126	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChanWithOption	@
	adds	r0, r0, #0	@ D.34131,,
	movne	r0, #1	@ D.34131,
	rsb	r4, r0, #0	@ D.34130, D.34131
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L126	@,
	bl	OSAL_SpinUnLockIRQ	@
.L123:
	mov	r0, r4	@, D.34130
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L124:
	mvn	r4, #0	@ D.34130,
	b	.L123	@
.L127:
	.align	2
.L126:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_StartChanWithOption, .-VDEC_CID_StartChanWithOption
	.align	2
	.global	VDEC_CID_StopChan
	.type	VDEC_CID_StopChan, %function
VDEC_CID_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r5, .L130	@ tmp117,
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34135, ret,
	movne	r0, #1	@ D.34135,
	rsb	r0, r0, #0	@, D.34135
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L131:
	.align	2
.L130:
	.word	g_TaskLock
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
	mov	r4, r0	@ ChanID, ChanID
	ldr	r5, .L134	@ tmp117,
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34139, ret,
	movne	r0, #1	@ D.34139,
	rsb	r0, r0, #0	@, D.34139
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L135:
	.align	2
.L134:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_ResetChan, .-VDEC_CID_ResetChan
	.align	2
	.global	VDEC_CID_ResetChanWithOption
	.type	VDEC_CID_ResetChanWithOption, %function
VDEC_CID_ResetChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L138	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L140	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.34144,,
	movne	r0, #1	@ D.34144,
	rsb	r4, r0, #0	@ D.34143, D.34144
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L140	@,
	bl	OSAL_SpinUnLockIRQ	@
.L137:
	mov	r0, r4	@, D.34143
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L138:
	mvn	r4, #0	@ D.34143,
	b	.L137	@
.L141:
	.align	2
.L140:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_ResetChanWithOption, .-VDEC_CID_ResetChanWithOption
	.align	2
	.global	VDEC_CID_SetStreamIntf
	.type	VDEC_CID_SetStreamIntf, %function
VDEC_CID_SetStreamIntf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L144	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L146	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_SetStreamInterface	@
	adds	r0, r0, #0	@ D.34149,,
	movne	r0, #1	@ D.34149,
	rsb	r4, r0, #0	@ D.34148, D.34149
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L146	@,
	bl	OSAL_SpinUnLockIRQ	@
.L143:
	mov	r0, r4	@, D.34148
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L144:
	mvn	r4, #0	@ D.34148,
	b	.L143	@
.L147:
	.align	2
.L146:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_SetStreamIntf, .-VDEC_CID_SetStreamIntf
	.align	2
	.global	VDEC_CID_GetImageIntf
	.type	VDEC_CID_GetImageIntf, %function
VDEC_CID_GetImageIntf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L150	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L153	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4]	@ ChanID, MEM[(struct IMAGE_INTF_S *)pArgs_4(D)].image_provider_inst_id
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDSDFlag	@
	ldr	r2, .L153+4	@ tmp115,
	ldr	r3, .L153+8	@ tmp116,
	stmib	r4, {r2, r3}	@ pArgs,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L153	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34153,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L150:
	mvn	r0, #0	@ D.34153,
	bx	lr	@
.L154:
	.align	2
.L153:
	.word	g_TaskLock
	.word	DNR_ReceiveImage
	.word	DNR_ReleaseImage
	.fnend
	.size	VDEC_CID_GetImageIntf, .-VDEC_CID_GetImageIntf
	.align	2
	.global	VDEC_CID_ReleaseStream
	.type	VDEC_CID_ReleaseStream, %function
VDEC_CID_ReleaseStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r5, .L157	@ tmp117,
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ReleaseStream	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34156, ret,
	movne	r0, #1	@ D.34156,
	rsb	r0, r0, #0	@, D.34156
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L158:
	.align	2
.L157:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_ReleaseStream, .-VDEC_CID_ReleaseStream
	.align	2
	.global	VDEC_CID_CfgExtra
	.type	VDEC_CID_CfgExtra, %function
VDEC_CID_CfgExtra:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L161	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L164	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L164	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34160,
	ldmfd	sp!, {r4, pc}	@
.L161:
	mvn	r0, #0	@ D.34160,
	bx	lr	@
.L165:
	.align	2
.L164:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_CfgExtra, .-VDEC_CID_CfgExtra
	.align	2
	.global	VDEC_CID_GetStreamSize
	.type	VDEC_CID_GetStreamSize, %function
VDEC_CID_GetStreamSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L168	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L171	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetStreamSize	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L171	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34164, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L168:
	mvn	r0, #0	@ D.34164,
	bx	lr	@
.L172:
	.align	2
.L171:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetStreamSize, .-VDEC_CID_GetStreamSize
	.align	2
	.global	VDEC_CID_GetChanIDByMem
	.type	VDEC_CID_GetChanIDByMem, %function
VDEC_CID_GetChanIDByMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L175	@,
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L177	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_4(D)]
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.34168,
	str	r0, [r4]	@ D.34168, MEM[(HI_S32 *)pArgs_4(D)]
	movne	r0, #0	@ D.34169,
	moveq	r0, #1	@ D.34169,
	rsb	r4, r0, #0	@ D.34167, D.34169
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L177	@,
	bl	OSAL_SpinUnLockIRQ	@
.L174:
	mov	r0, r4	@, D.34167
	ldmfd	sp!, {r4, pc}	@
.L175:
	mvn	r4, #0	@ D.34167,
	b	.L174	@
.L178:
	.align	2
.L177:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetChanIDByMem, .-VDEC_CID_GetChanIDByMem
	.align	2
	.global	VDEC_CID_SetDiscardPicParam
	.type	VDEC_CID_SetDiscardPicParam, %function
VDEC_CID_SetDiscardPicParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L181	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L184	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_SetDiscardPicParam	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L184	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34172, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L181:
	mvn	r0, #0	@ D.34172,
	bx	lr	@
.L185:
	.align	2
.L184:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_SetDiscardPicParam, .-VDEC_CID_SetDiscardPicParam
	.align	2
	.global	VDEC_CID_SetPTSToSeek
	.type	VDEC_CID_SetPTSToSeek, %function
VDEC_CID_SetPTSToSeek:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L189	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L193	@,
	mov	r6, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	mov	r2, #1	@ tmp122,
	mov	r3, #0	@ tmp123,
	stmia	sp, {r2, r3}	@,,
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.34176,,
	movne	r0, #1	@ D.34176,
	rsb	r4, r0, #0	@ ret, D.34176
	cmp	r4, #0	@ ret,
	beq	.L192	@,
.L188:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L193	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34175, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L192:
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SeekPts	@
	adds	r0, r0, #0	@ D.34176,,
	movne	r0, #1	@ D.34176,
	rsb	r4, r0, #0	@ ret, D.34176
	b	.L188	@
.L189:
	mvn	r0, #0	@ D.34175,
	bx	lr	@
.L194:
	.align	2
.L193:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_SetPTSToSeek, .-VDEC_CID_SetPTSToSeek
	.align	2
	.global	VDEC_CID_SetTrickMode
	.type	VDEC_CID_SetTrickMode, %function
VDEC_CID_SetTrickMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L198	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L201	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	DNR_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	beq	.L200	@,
.L197:
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	adds	r0, r0, #0	@ D.34181,,
	movne	r0, #1	@ D.34181,
	rsb	r4, r0, #0	@ D.34180, D.34181
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L201	@,
	bl	OSAL_SpinUnLockIRQ	@
.L196:
	mov	r0, r4	@, D.34180
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L200:
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	b	.L197	@
.L198:
	mvn	r4, #0	@ D.34180,
	b	.L196	@
.L202:
	.align	2
.L201:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_SetTrickMode, .-VDEC_CID_SetTrickMode
	.align	2
	.global	VDEC_CID_SetCTRLInfo
	.type	VDEC_CID_SetCTRLInfo, %function
VDEC_CID_SetCTRLInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L206	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pArgs, pArgs
	ldr	r0, .L210	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	DNR_ConfigBackOptimizeFlag	@
	adds	r0, r0, #0	@ D.34186,,
	movne	r0, #1	@ D.34186,
	rsb	r4, r0, #0	@ ret, D.34186
	cmp	r4, #0	@ ret,
	beq	.L209	@,
.L205:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L210	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34185, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L209:
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigPVRInfo	@
	adds	r0, r0, #0	@ D.34186,,
	movne	r0, #1	@ D.34186,
	rsb	r4, r0, #0	@ ret, D.34186
	b	.L205	@
.L206:
	mvn	r0, #0	@ D.34185,
	bx	lr	@
.L211:
	.align	2
.L210:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_SetCTRLInfo, .-VDEC_CID_SetCTRLInfo
	.align	2
	.global	VDEC_CID_FrameDNR
	.type	VDEC_CID_FrameDNR, %function
VDEC_CID_FrameDNR:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L214	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L216	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r2, r5	@, pArgs
	mov	r0, r4	@, ChanID
	mov	r1, #1	@,
	bl	DNR_SetDataSource	@
	adds	r0, r0, #0	@ D.34191,,
	movne	r0, #1	@ D.34191,
	rsb	r4, r0, #0	@ D.34190, D.34191
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L216	@,
	bl	OSAL_SpinUnLockIRQ	@
.L213:
	mov	r0, r4	@, D.34190
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L214:
	mvn	r4, #0	@ D.34190,
	b	.L213	@
.L217:
	.align	2
.L216:
	.word	g_TaskLock
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
	cmp	r1, #0	@ pArgs
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, #0	@ tmp119,
	str	r4, [sp, #4]	@ tmp119, RefNum
	str	r4, [sp, #8]	@ tmp119, ReadNum
	str	r4, [sp, #12]	@ tmp119, NewNum
	beq	.L220	@,
	ldr	ip, .L222	@ tmp122,
	mov	r6, r1	@ pArgs, pArgs
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r7, [ip, r0, asl #2]	@ pFsp, s_pFspInst
	bl	VCTRL_GetChanImgNum	@
	ldr	r1, .L222+4	@ tmp128,
	movw	r3, #11160	@ tmp130,
	movt	r3, 1	@ tmp130,
	ldr	r2, [sp, #4]	@ RefNum, RefNum
	mov	r0, r4	@ D.34195, tmp119
	mla	r5, r3, r5, r1	@ tmp131, tmp130, ChanID, tmp128
	str	r2, [r6]	@ RefNum, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].u32RefNum
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.34198, pFsp_9->s32DecFsNum
	strb	r3, [r6, #8]	@ D.34198, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s8DecFsNum
	ldr	r3, [r5, #448]	@ D.34196, MEM[(struct DNR_CHAN_S *)&s_DnrChan][ChanID_8(D)].s32ValidImgNum
	str	r3, [r6, #4]	@ D.34196, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s32DisFsNum
.L219:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L220:
	mvn	r0, #0	@ D.34195,
	b	.L219	@
.L223:
	.align	2
.L222:
	.word	s_pFspInst
	.word	s_DnrChan
	.fnend
	.size	VDEC_CID_GetVFMWInfo, .-VDEC_CID_GetVFMWInfo
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
	ldr	r0, .L230	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_IsEsBufEnable	@
	cmp	r0, #0	@,
	beq	.L225	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_DisableEsBuf	@
.L225:
	ldr	r0, .L230	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L231:
	.align	2
.L230:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_ReportDmxBufRls, .-VDEC_CID_ReportDmxBufRls
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
	bne	.L235	@,
	ldr	r5, .L237	@ tmp118,
	ldr	r3, [r5, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r3, #1	@ D.34207, g_VfmwInitCount,
	str	r3, [r5, #4]	@ D.34207, g_VfmwInitCount
	cmp	r3, #0	@ D.34207,
	ble	.L234	@,
	bl	OSAL_UP	@
	mov	r0, r4	@ D.34206, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L234:
	bl	VCTRL_CloseVfmw	@
	mov	r6, r0	@ ret,
	bl	MEM_ManagerClearOperation	@
	str	r4, [r5]	@ ret, g_VfmwEnableFlag
	bl	OSAL_UP	@
	adds	r0, r6, #0	@ D.34208, ret,
	movne	r0, #1	@ D.34208,
	rsb	r0, r0, #0	@ D.34206, D.34208
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L235:
	mvn	r0, #0	@ D.34206,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L238:
	.align	2
.L237:
	.word	.LANCHOR1
	.fnend
	.size	VDEC_Exit, .-VDEC_Exit
	.align	2
	.global	VDEC_CID_GetChanMemAddr
	.type	VDEC_CID_GetChanMemAddr, %function
VDEC_CID_GetChanMemAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	beq	.L242	@,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L245	@,
	mov	r5, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanMemInfo	@
	cmp	r0, #0	@,
	bne	.L244	@,
	ldr	r0, [sp, #8]	@ D.34220, MemRec.PhyAddr
	ldr	r3, [sp, #4]	@ D.34221, MemRec.VirAddr
	ldr	r2, [sp, #12]	@ MemRec.Length, MemRec.Length
	cmp	r0, #0	@ D.34220,
	cmpne	r3, #0	@, D.34221,
	str	r0, [r5]	@ D.34220, MEM[(struct MEM_DESC_S *)pArgs_4(D)].PhyAddr
	str	r3, [r5, #4]	@ D.34221, MEM[(struct MEM_DESC_S *)pArgs_4(D)].VirAddr
	str	r2, [r5, #8]	@ MemRec.Length, MEM[(struct MEM_DESC_S *)pArgs_4(D)].Length
	moveq	r0, #1	@ D.34220,
	movne	r0, #0	@ D.34220,
	rsb	r4, r0, #0	@ D.34218, D.34220
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L245	@,
	bl	OSAL_SpinUnLockIRQ	@
.L240:
	mov	r0, r4	@, D.34218
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L242:
	mvn	r4, #0	@ D.34218,
	b	.L240	@
.L244:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L245	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ D.34218,
	b	.L240	@
.L246:
	.align	2
.L245:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetChanMemAddr, .-VDEC_CID_GetChanMemAddr
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
	ldr	r0, .L252	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L252+4	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L252+8	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L252+12	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L252+16	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L252+20	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L252+24	@,
	ldmfd	sp!, {r4, lr}	@
	b	OSAL_SpinLockIRQInit	@
.L253:
	.align	2
.L252:
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
	beq	.L268	@,
	ldr	r4, .L270	@ tmp226,
	ldr	r3, [r4]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L269	@,
	mov	r1, #8	@,
	ldr	r0, .L270+4	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L270+8	@,
	mov	fp, #0	@ tmp140,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L270+12	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L270+16	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L270+20	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L270+24	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L270+28	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L270+32	@,
	bl	__memzero	@
	ldr	r10, .L270+36	@ tmp139,
	ldr	r9, .L270+40	@ tmp142,
	ldr	r8, .L270+44	@ tmp144,
	ldr	r7, .L270+48	@ tmp146,
	ldr	r6, .L270+52	@ tmp148,
	ldr	lr, .L270+56	@ tmp150,
	ldr	ip, .L270+60	@ tmp152,
	ldr	r0, .L270+64	@ tmp154,
	ldr	r1, .L270+68	@ tmp156,
	ldr	r2, .L270+72	@ tmp158,
	ldr	r3, .L270+76	@ tmp160,
	str	fp, [r10]	@ tmp140, AcceleratorCharacter
	str	r9, [r4, #8]	@ tmp142, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	ldr	r10, .L270+80	@ tmp164,
	ldr	fp, .L270+84	@ tmp166,
	ldr	r9, .L270+88	@ tmp168,
	str	r8, [r4, #12]	@ tmp144, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	str	r7, [r4, #16]	@ tmp146, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	ldr	r8, .L270+92	@ tmp170,
	ldr	r7, .L270+96	@ tmp172,
	str	r6, [r4, #20]	@ tmp148, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	str	lr, [r4, #24]	@ tmp150, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	ldr	r6, .L270+100	@ tmp174,
	ldr	lr, .L270+104	@ tmp176,
	str	ip, [r4, #32]	@ tmp152, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	str	r0, [r4, #36]	@ tmp154, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	ldr	ip, .L270+108	@ tmp178,
	ldr	r0, .L270+112	@ tmp180,
	str	r1, [r4, #40]	@ tmp156, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	str	r2, [r4, #44]	@ tmp158, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r1, .L270+116	@ tmp182,
	str	r3, [r4, #48]	@ tmp160, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	ldr	r2, .L270+120	@ tmp227,
	ldr	r3, .L270+124	@ tmp228,
	str	r10, [r4, #52]	@ tmp164, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	str	r2, [r4, #108]	@ tmp227, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	str	fp, [r4, #56]	@ tmp166, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	ldr	r2, .L270+128	@ tmp188,
	str	r9, [r4, #60]	@ tmp168, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	str	r8, [r4, #64]	@ tmp170, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	str	r7, [r4, #68]	@ tmp172, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	str	r6, [r4, #72]	@ tmp174, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	str	lr, [r4, #76]	@ tmp176, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	str	ip, [r4, #80]	@ tmp178, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	ldr	lr, .L270+132	@ tmp202,
	ldr	ip, .L270+136	@ tmp204,
	str	r0, [r4, #84]	@ tmp180, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	str	r1, [r4, #88]	@ tmp182, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	ldr	r0, .L270+140	@ tmp206,
	ldr	r1, .L270+144	@ tmp208,
	str	r3, [r4, #92]	@ tmp228, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	ldr	r10, .L270+148	@ tmp190,
	ldr	r3, .L270+152	@ tmp229,
	ldr	fp, .L270+156	@ tmp192,
	ldr	r9, .L270+160	@ tmp194,
	ldr	r8, .L270+164	@ tmp196,
	ldr	r7, .L270+168	@ tmp198,
	ldr	r6, .L270+172	@ tmp200,
	str	r3, [r4, #96]	@ tmp229, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	str	r2, [r4, #100]	@ tmp188, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	str	lr, [r4, #128]	@ tmp202, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	str	ip, [r4, #132]	@ tmp204, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	str	r10, [r4, #28]	@ tmp190, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	str	fp, [r4, #104]	@ tmp192, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	str	r9, [r4, #112]	@ tmp194, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	str	r8, [r4, #116]	@ tmp196, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	str	r7, [r4, #120]	@ tmp198, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	str	r6, [r4, #124]	@ tmp200, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r0, [r4, #136]	@ tmp206, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	str	r1, [r4, #140]	@ tmp208, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #28]	@ D.34232, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.34232,
	beq	.L259	@,
	blx	r3	@ D.34232
.L259:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	mov	r0, #0	@,
	bl	VCTRL_OpenVfmw	@
	subs	r6, r0, #0	@ ret,
	moveq	r3, #1	@ tmp211,
	movne	r3, #0	@ tmp215,
	str	r3, [r4]	@ tmp215, g_VfmwEnableFlag
	str	r3, [r4, #4]	@ tmp215, g_VfmwInitCount
	ldr	r3, [r4, #52]	@ D.34232, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	cmp	r3, #0	@ D.34232,
	beq	.L267	@,
	blx	r3	@ D.34232
.L267:
	adds	r6, r6, #0	@ D.34235, ret,
	movne	r6, #1	@ D.34235,
	rsb	r6, r6, #0	@ D.34230, D.34235
.L258:
	ldmia	r5, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
.L256:
	mov	r0, r6	@, D.34230
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L269:
	ldr	r3, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	mov	r6, #0	@ D.34230,
	add	r3, r3, #1	@ D.34231, g_VfmwInitCount,
	str	r3, [r4, #4]	@ D.34231, g_VfmwInitCount
	b	.L258	@
.L268:
	bl	OSAL_UP	@
	mvn	r6, #0	@ D.34230,
	b	.L256	@
.L271:
	.align	2
.L270:
	.word	.LANCHOR1
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
	adds	r0, r0, #0	@ D.34238,,
	movne	r0, #1	@ D.34238,
	rsb	r0, r0, #0	@, D.34238
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
	cmp	r1, #0	@ pArgs
	beq	.L278	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L281	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L281	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34244,
	ldmfd	sp!, {r4, pc}	@
.L278:
	mvn	r0, #0	@ D.34244,
	bx	lr	@
.L282:
	.align	2
.L281:
	.word	g_TaskLock
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
	ldmfd	sp!, {r4, pc}	@
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
	ldmfd	sp!, {r4, pc}	@
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
.LANCHOR2 = . + 0
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
.LANCHOR0 = . + 0
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
	.bss
	.align	2
.LANCHOR1 = . + 0
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
