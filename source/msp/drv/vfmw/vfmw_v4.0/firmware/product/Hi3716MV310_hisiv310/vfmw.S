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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(vfmw) -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
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
	ldr	r2, [r3]	@ D.34346, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34347, _2->PERI_CRG30.u32
	orr	r3, r3, #3	@ u32TmpValue, D.34347,
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
	ldr	r2, [r3]	@ D.34350, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34351, _2->PERI_CRG30.u32
	orr	r3, r3, #80	@ u32TmpValue, D.34351,
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
	ldr	r2, [r3]	@ D.34354, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34355, _2->PERI_CRG30.u32
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
	ldr	r2, [r3]	@ D.34358, g_pstRegCrg
	ldr	r3, [r2, #120]	@ D.34359, _2->PERI_CRG30.u32
	orr	r3, r3, #32	@ u32TmpValue, D.34359,
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
	ldr	r2, [r3]	@ D.34362, g_pstRegCrg
	ldr	r3, [r2, #112]	@ D.34363, _2->PERI_CRG28.u32
	orr	r3, r3, #1	@ u32TmpValue, D.34363,
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
	ldr	r2, [r3]	@ D.34366, g_pstRegCrg
	ldr	r3, [r2, #136]	@ D.34367, _2->PERI_CRG34.u32
	orr	r3, r3, #1	@ u32TmpValue, D.34367,
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
	.global	VDEC_CID_SetFrameRate
	.type	VDEC_CID_SetFrameRate, %function
VDEC_CID_SetFrameRate:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pArgs
	ldrne	r1, [r1]	@ D.34371, MEM[(HI_S32 *)pArgs_3(D)]
	movne	r3, #0	@ D.34370,
	ldrne	r2, .L22	@ tmp115,
	mvneq	r3, #0	@ D.34370,
	strne	r1, [r2, r0, asl #2]	@ D.34371, g_FrameRate
	mov	r0, r3	@, D.34370
	bx	lr	@
.L23:
	.align	2
.L22:
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
	ldrne	r2, .L27	@ tmp115,
	movne	r3, #0	@ D.34374,
	mvneq	r3, #0	@ D.34374,
	ldrne	r2, [r2, r0, asl #2]	@ D.34375, g_scd_vir
	mov	r0, r3	@, D.34374
	strne	r2, [r1]	@ D.34375, MEM[(HI_U32 *)pArgs_3(D)]
	bx	lr	@
.L28:
	.align	2
.L27:
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
	ldr	r3, .L46	@ tmp152,
	ldr	r3, [r3]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	bne	.L42	@,
	cmp	r1, #10	@ eCmdID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldrne	r3, .L46+4	@ ivtmp.133,
	bne	.L33	@,
	b	.L45	@
.L34:
	ldr	lr, [r3, #12]	@ pTargetHandler, MEM[base: _3, offset: 12B]
	add	r3, r3, #8	@ ivtmp.133, ivtmp.133,
	cmp	lr, #0	@ pTargetHandler,
	beq	.L38	@,
	cmp	ip, r1	@ D.34388, eCmdID
	beq	.L31	@,
.L33:
	ldr	ip, [r3, #8]	@ D.34388, MEM[base: _3, offset: 8B]
	cmp	ip, #41	@ D.34388,
	bne	.L34	@,
.L38:
	mvn	r0, #0	@,
	ldr	pc, [sp], #4	@
.L45:
	ldr	lr, .L46+8	@ pTargetHandler,
.L31:
	mov	r3, lr	@ pTargetHandler, pTargetHandler
	mov	r1, r2	@, pArgs
	ldr	lr, [sp], #4	@,
	bx	r3	@ pTargetHandler
.L42:
	mvn	r0, #0	@,
	bx	lr	@
.L47:
	.align	2
.L46:
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
	beq	.L50	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L53	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanState	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L53	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34391,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L50:
	mvn	r0, #0	@ D.34391,
	bx	lr	@
.L54:
	.align	2
.L53:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetChanState, .-VDEC_CID_GetChanState
	.align	2
	.global	VDEC_CID_RWZBState
	.type	VDEC_CID_RWZBState, %function
VDEC_CID_RWZBState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	beq	.L61	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L62	@,
	mov	r5, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, .L62+4	@ tmp115,
	movw	r3, #11160	@ tmp117,
	ldr	r2, [r5]	@ D.34394, MEM[(HI_U32 *)pArgs_2(D)]
	movt	r3, 1	@ tmp117,
	mla	r0, r3, r4, r0	@ tmp118, tmp117, ChanID, tmp115
	str	r2, [r0, #24]	@ D.34394, s_DnrChan[ChanID_6(D)].userSetRwzb_state
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L62	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L61:
	mvn	r0, #0	@,
	bx	lr	@
.L63:
	.align	2
.L62:
	.word	g_TaskLock
	.word	s_DnrChan
	.fnend
	.size	VDEC_CID_RWZBState, .-VDEC_CID_RWZBState
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
	beq	.L66	@,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L68	@,
	mov	r4, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r2, [sp]	@ stMem.PhyAddr, stMem.PhyAddr
	ldr	r3, [sp, #8]	@ stMem.Length, stMem.Length
	stmia	r4, {r2, r3}	@ pArgs,,
	adds	r0, r0, #0	@ D.34399,,
	movne	r0, #1	@ D.34399,
	rsb	r4, r0, #0	@ D.34397, D.34399
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L68	@,
	bl	OSAL_SpinUnLockIRQ	@
.L65:
	mov	r0, r4	@, D.34397
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L66:
	mvn	r4, #0	@ D.34397,
	b	.L65	@
.L69:
	.align	2
.L68:
	.word	g_TaskLock
	.fnend
	.size	VDEC_CID_GetUsrDecFrame, .-VDEC_CID_GetUsrDecFrame
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
	beq	.L72	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L74	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_PutUsrdecFrame	@
	adds	r0, r0, #0	@ D.34403,,
	movne	r0, #1	@ D.34403,
	rsb	r4, r0, #0	@ D.34402, D.34403
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L74	@,
	bl	OSAL_SpinUnLockIRQ	@
.L71:
	mov	r0, r4	@, D.34402
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L72:
	mvn	r4, #0	@ D.34402,
	b	.L71	@
.L75:
	.align	2
.L74:
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
	beq	.L79	@,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L83	@,
	bl	OSAL_SpinLockIRQ	@
	add	r2, sp, #12	@,,
	mov	r1, sp	@,
	ldr	r0, [r5]	@, MEM[(HI_S32 *)pArgs_5(D)]
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@ D.34408
	mvnne	r4, #0	@ ret,
	bne	.L78	@,
	ldr	r3, [sp]	@ VdmMem, VdmMem
	mov	r4, r0	@ ret, D.34408
	ldr	r1, [sp, #12]	@ ScdMem, ScdMem
	ldr	r2, [sp, #4]	@ VdmMem, VdmMem
	add	r1, r3, r1	@ D.34408, VdmMem, ScdMem
	ldr	ip, [sp, #16]	@ ScdMem, ScdMem
	ldr	r3, [sp, #8]	@ VdmMem, VdmMem
	ldr	r0, [sp, #20]	@ ScdMem, ScdMem
	add	r2, r2, ip	@ D.34408, VdmMem, ScdMem
	stmia	r5, {r1, r2}	@ pArgs,,
	add	r3, r3, r0	@ D.34408, VdmMem, ScdMem
	str	r3, [r5, #8]	@ D.34408, MEM[(struct CHAN_MEM_BUDGET_S *)pArgs_5(D)].FluentMemSize
.L78:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L83	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34407, ret
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L79:
	mvn	r0, #0	@ D.34407,
	bx	lr	@
.L84:
	.align	2
.L83:
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
	beq	.L88	@,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L92	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r3, #1	@,
	mov	r2, sp	@,
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_GetChanMemSizeWithOption	@
	cmp	r0, #0	@ D.34413
	ldmeqib	sp, {r1, r2, r3}	@,,,
	moveq	r5, r0	@ ret, D.34413
	ldreq	ip, [sp]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	mvnne	r5, #0	@ ret,
	streq	ip, [r4]	@ DetailMemSize.VdhDetailMem, MEM[(HI_S32 *)pArgs_5(D)]
	stmeqib	r4, {r1, r2, r3}	@ pArgs,,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L92	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@ D.34412, ret
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L88:
	mvn	r0, #0	@ D.34412,
	bx	lr	@
.L93:
	.align	2
.L92:
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
	beq	.L96	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_4(D)]
	add	r1, r1, #4	@, pArgs,
	bl	VCTRL_CreateChan	@
	mov	r3, r0	@ ret,
	mov	r0, r0, asr #31	@ D.34418, ret,
	str	r3, [r4]	@ ret, MEM[(HI_S32 *)pArgs_4(D)]
	ldmfd	sp!, {r4, pc}	@
.L96:
	mvn	r0, #0	@ D.34418,
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
	beq	.L101	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r3, #0	@,
	mov	r4, r1	@ pArgs, pArgs
	mov	r2, #2	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	bl	VCTRL_CreateChanWithOption	@
	mov	r3, r0	@ ret,
	mov	r0, r0, asr #31	@ D.34425, ret,
	str	r3, [r4]	@ ret, MEM[(HI_S32 *)pArgs_4(D)]
	ldmfd	sp!, {r4, pc}	@
.L101:
	mvn	r0, #0	@ D.34425,
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
	adds	r0, r0, #0	@ D.34432,,
	movne	r0, #1	@ D.34432,
	rsb	r0, r0, #0	@, D.34432
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
	adds	r0, r0, #0	@ D.34436,,
	movne	r0, #1	@ D.34436,
	rsb	r0, r0, #0	@, D.34436
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
	beq	.L110	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L112	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanCfg	@
	adds	r0, r0, #0	@ D.34441,,
	movne	r0, #1	@ D.34441,
	rsb	r4, r0, #0	@ D.34440, D.34441
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L112	@,
	bl	OSAL_SpinUnLockIRQ	@
.L109:
	mov	r0, r4	@, D.34440
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L110:
	mvn	r4, #0	@ D.34440,
	b	.L109	@
.L113:
	.align	2
.L112:
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
	beq	.L116	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L118	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigChan	@
	adds	r0, r0, #0	@ D.34446,,
	movne	r0, #1	@ D.34446,
	rsb	r5, r0, #0	@ D.34445, D.34446
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L118	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_LoadDspCode	@
.L115:
	mov	r0, r5	@, D.34445
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L116:
	mvn	r5, #0	@ D.34445,
	b	.L115	@
.L119:
	.align	2
.L118:
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
	ldr	r5, .L122	@ tmp117,
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
	adds	r0, r4, #0	@ D.34450, ret,
	movne	r0, #1	@ D.34450,
	rsb	r0, r0, #0	@, D.34450
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L123:
	.align	2
.L122:
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
	beq	.L126	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L128	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChanWithOption	@
	adds	r0, r0, #0	@ D.34455,,
	movne	r0, #1	@ D.34455,
	rsb	r4, r0, #0	@ D.34454, D.34455
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L128	@,
	bl	OSAL_SpinUnLockIRQ	@
.L125:
	mov	r0, r4	@, D.34454
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L126:
	mvn	r4, #0	@ D.34454,
	b	.L125	@
.L129:
	.align	2
.L128:
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
	ldr	r5, .L132	@ tmp117,
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34459, ret,
	movne	r0, #1	@ D.34459,
	rsb	r0, r0, #0	@, D.34459
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L133:
	.align	2
.L132:
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
	ldr	r5, .L136	@ tmp117,
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34463, ret,
	movne	r0, #1	@ D.34463,
	rsb	r0, r0, #0	@, D.34463
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L137:
	.align	2
.L136:
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
	beq	.L140	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L142	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.34468,,
	movne	r0, #1	@ D.34468,
	rsb	r4, r0, #0	@ D.34467, D.34468
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L142	@,
	bl	OSAL_SpinUnLockIRQ	@
.L139:
	mov	r0, r4	@, D.34467
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L140:
	mvn	r4, #0	@ D.34467,
	b	.L139	@
.L143:
	.align	2
.L142:
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
	beq	.L146	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L148	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_SetStreamInterface	@
	adds	r0, r0, #0	@ D.34473,,
	movne	r0, #1	@ D.34473,
	rsb	r4, r0, #0	@ D.34472, D.34473
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L148	@,
	bl	OSAL_SpinUnLockIRQ	@
.L145:
	mov	r0, r4	@, D.34472
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L146:
	mvn	r4, #0	@ D.34472,
	b	.L145	@
.L149:
	.align	2
.L148:
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
	beq	.L152	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L155	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4]	@ ChanID, MEM[(struct IMAGE_INTF_S *)pArgs_4(D)].image_provider_inst_id
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDSDFlag	@
	ldr	r2, .L155+4	@ tmp115,
	ldr	r3, .L155+8	@ tmp116,
	stmib	r4, {r2, r3}	@ pArgs,,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L155	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34477,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L152:
	mvn	r0, #0	@ D.34477,
	bx	lr	@
.L156:
	.align	2
.L155:
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
	ldr	r5, .L159	@ tmp117,
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ReleaseStream	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	mov	r0, r5	@, tmp117
	bl	OSAL_SpinUnLockIRQ	@
	adds	r0, r4, #0	@ D.34480, ret,
	movne	r0, #1	@ D.34480,
	rsb	r0, r0, #0	@, D.34480
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L160:
	.align	2
.L159:
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
	beq	.L163	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L166	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L166	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34484,
	ldmfd	sp!, {r4, pc}	@
.L163:
	mvn	r0, #0	@ D.34484,
	bx	lr	@
.L167:
	.align	2
.L166:
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
	beq	.L170	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L173	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetStreamSize	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L173	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34488, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L170:
	mvn	r0, #0	@ D.34488,
	bx	lr	@
.L174:
	.align	2
.L173:
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
	beq	.L177	@,
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L179	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4]	@, MEM[(HI_S32 *)pArgs_4(D)]
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.34492,
	str	r0, [r4]	@ D.34492, MEM[(HI_S32 *)pArgs_4(D)]
	movne	r0, #0	@ D.34493,
	moveq	r0, #1	@ D.34493,
	rsb	r4, r0, #0	@ D.34491, D.34493
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L179	@,
	bl	OSAL_SpinUnLockIRQ	@
.L176:
	mov	r0, r4	@, D.34491
	ldmfd	sp!, {r4, pc}	@
.L177:
	mvn	r4, #0	@ D.34491,
	b	.L176	@
.L180:
	.align	2
.L179:
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
	beq	.L183	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L186	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_SetDiscardPicParam	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L186	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34496, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L183:
	mvn	r0, #0	@ D.34496,
	bx	lr	@
.L187:
	.align	2
.L186:
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
	beq	.L191	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r0, .L195	@,
	mov	r6, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	mov	r2, #1	@ tmp122,
	mov	r3, #0	@ tmp123,
	stmia	sp, {r2, r3}	@,,
	bl	VCTRL_ResetChanWithOption	@
	adds	r0, r0, #0	@ D.34500,,
	movne	r0, #1	@ D.34500,
	rsb	r4, r0, #0	@ ret, D.34500
	cmp	r4, #0	@ ret,
	beq	.L194	@,
.L190:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L195	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34499, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L194:
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SeekPts	@
	adds	r0, r0, #0	@ D.34500,,
	movne	r0, #1	@ D.34500,
	rsb	r4, r0, #0	@ ret, D.34500
	b	.L190	@
.L191:
	mvn	r0, #0	@ D.34499,
	bx	lr	@
.L196:
	.align	2
.L195:
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
	beq	.L200	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L203	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	DNR_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	beq	.L202	@,
.L199:
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	adds	r0, r0, #0	@ D.34505,,
	movne	r0, #1	@ D.34505,
	rsb	r4, r0, #0	@ D.34504, D.34505
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L203	@,
	bl	OSAL_SpinUnLockIRQ	@
.L198:
	mov	r0, r4	@, D.34504
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L202:
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	b	.L199	@
.L200:
	mvn	r4, #0	@ D.34504,
	b	.L198	@
.L204:
	.align	2
.L203:
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
	beq	.L208	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pArgs, pArgs
	ldr	r0, .L212	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	DNR_ConfigBackOptimizeFlag	@
	adds	r0, r0, #0	@ D.34510,,
	movne	r0, #1	@ D.34510,
	rsb	r4, r0, #0	@ ret, D.34510
	cmp	r4, #0	@ ret,
	beq	.L211	@,
.L207:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L212	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34509, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L211:
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigPVRInfo	@
	adds	r0, r0, #0	@ D.34510,,
	movne	r0, #1	@ D.34510,
	rsb	r4, r0, #0	@ ret, D.34510
	b	.L207	@
.L208:
	mvn	r0, #0	@ D.34509,
	bx	lr	@
.L213:
	.align	2
.L212:
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
	beq	.L216	@,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pArgs, pArgs
	ldr	r0, .L218	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r2, r5	@, pArgs
	mov	r0, r4	@, ChanID
	mov	r1, #1	@,
	bl	DNR_SetDataSource	@
	adds	r0, r0, #0	@ D.34515,,
	movne	r0, #1	@ D.34515,
	rsb	r4, r0, #0	@ D.34514, D.34515
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L218	@,
	bl	OSAL_SpinUnLockIRQ	@
.L215:
	mov	r0, r4	@, D.34514
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L216:
	mvn	r4, #0	@ D.34514,
	b	.L215	@
.L219:
	.align	2
.L218:
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
	beq	.L222	@,
	ldr	ip, .L224	@ tmp122,
	mov	r6, r1	@ pArgs, pArgs
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r7, [ip, r0, asl #2]	@ pFsp, s_pFspInst
	bl	VCTRL_GetChanImgNum	@
	ldr	r1, .L224+4	@ tmp128,
	movw	r3, #11160	@ tmp130,
	movt	r3, 1	@ tmp130,
	ldr	r2, [sp, #4]	@ RefNum, RefNum
	mov	r0, r4	@ D.34519, tmp119
	mla	r5, r3, r5, r1	@ tmp131, tmp130, ChanID, tmp128
	str	r2, [r6]	@ RefNum, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].u32RefNum
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.34522, pFsp_9->s32DecFsNum
	strb	r3, [r6, #8]	@ D.34522, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s8DecFsNum
	ldr	r3, [r5, #448]	@ D.34520, MEM[(struct DNR_CHAN_S *)&s_DnrChan][ChanID_8(D)].s32ValidImgNum
	str	r3, [r6, #4]	@ D.34520, MEM[(struct VFMW_INFO_S *)pArgs_7(D)].s32DisFsNum
.L221:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L222:
	mvn	r0, #0	@ D.34519,
	b	.L221	@
.L225:
	.align	2
.L224:
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
	ldr	r0, .L232	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_IsEsBufEnable	@
	cmp	r0, #0	@,
	beq	.L227	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_DisableEsBuf	@
.L227:
	ldr	r0, .L232	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L233:
	.align	2
.L232:
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
	bne	.L237	@,
	ldr	r5, .L239	@ tmp118,
	ldr	r3, [r5, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r3, #1	@ D.34531, g_VfmwInitCount,
	str	r3, [r5, #4]	@ D.34531, g_VfmwInitCount
	cmp	r3, #0	@ D.34531,
	ble	.L236	@,
	bl	OSAL_UP	@
	mov	r0, r4	@ D.34530, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L236:
	bl	VCTRL_CloseVfmw	@
	mov	r6, r0	@ ret,
	bl	MEM_ManagerClearOperation	@
	str	r4, [r5]	@ ret, g_VfmwEnableFlag
	bl	OSAL_UP	@
	adds	r0, r6, #0	@ D.34532, ret,
	movne	r0, #1	@ D.34532,
	rsb	r0, r0, #0	@ D.34530, D.34532
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L237:
	mvn	r0, #0	@ D.34530,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L240:
	.align	2
.L239:
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
	beq	.L244	@,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, .L247	@,
	mov	r5, r1	@ pArgs, pArgs
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanMemInfo	@
	cmp	r0, #0	@,
	bne	.L246	@,
	ldr	r0, [sp, #8]	@ D.34544, MemRec.PhyAddr
	ldr	r3, [sp, #4]	@ D.34545, MemRec.VirAddr
	ldr	r2, [sp, #12]	@ MemRec.Length, MemRec.Length
	cmp	r0, #0	@ D.34544,
	cmpne	r3, #0	@, D.34545,
	str	r0, [r5]	@ D.34544, MEM[(struct MEM_DESC_S *)pArgs_4(D)].PhyAddr
	str	r3, [r5, #4]	@ D.34545, MEM[(struct MEM_DESC_S *)pArgs_4(D)].VirAddr
	str	r2, [r5, #8]	@ MemRec.Length, MEM[(struct MEM_DESC_S *)pArgs_4(D)].Length
	moveq	r0, #1	@ D.34544,
	movne	r0, #0	@ D.34544,
	rsb	r4, r0, #0	@ D.34542, D.34544
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L247	@,
	bl	OSAL_SpinUnLockIRQ	@
.L242:
	mov	r0, r4	@, D.34542
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L244:
	mvn	r4, #0	@ D.34542,
	b	.L242	@
.L246:
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L247	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ D.34542,
	b	.L242	@
.L248:
	.align	2
.L247:
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
	ldr	r0, .L254	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L254+4	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L254+8	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L254+12	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L254+16	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L254+20	@,
	bl	OSAL_SpinLockIRQInit	@
	ldr	r0, .L254+24	@,
	ldmfd	sp!, {r4, lr}	@
	b	OSAL_SpinLockIRQInit	@
.L255:
	.align	2
.L254:
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
	beq	.L270	@,
	ldr	r4, .L272	@ tmp228,
	ldr	r3, [r4]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L271	@,
	mov	r1, #8	@,
	ldr	r0, .L272+4	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L272+8	@,
	mov	fp, #0	@ tmp140,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L272+12	@,
	mov	r9, #15	@ tmp142,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L272+16	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L272+20	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L272+24	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L272+28	@,
	bl	__memzero	@
	mov	r1, #8	@,
	ldr	r0, .L272+32	@,
	bl	__memzero	@
	ldr	r3, .L272+36	@ tmp158,
	ldr	r10, .L272+40	@ tmp139,
	ldr	r8, .L272+44	@ tmp141,
	str	r3, [r4, #40]	@ tmp158, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	ldr	r3, .L272+48	@ tmp229,
	ldr	r7, .L272+52	@ tmp144,
	ldr	r6, .L272+56	@ tmp146,
	ldr	lr, .L272+60	@ tmp148,
	ldr	ip, .L272+64	@ tmp150,
	ldr	r0, .L272+68	@ tmp152,
	ldr	r1, .L272+72	@ tmp154,
	ldr	r2, .L272+76	@ tmp156,
	str	r3, [r4, #44]	@ tmp229, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r3, .L272+80	@ tmp232,
	str	fp, [r10]	@ tmp140, AcceleratorCharacter
	str	r9, [r8, #4]	@ tmp142, g_chipID
	ldr	r10, .L272+84	@ tmp162,
	ldr	fp, .L272+88	@ tmp164,
	ldr	r8, .L272+92	@ tmp166,
	ldr	r9, .L272+96	@ tmp168,
	str	r7, [r4, #8]	@ tmp144, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	str	r6, [r4, #12]	@ tmp146, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	ldr	r7, .L272+100	@ tmp170,
	ldr	r6, .L272+104	@ tmp172,
	str	lr, [r4, #16]	@ tmp148, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	str	ip, [r4, #20]	@ tmp150, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	ldr	lr, .L272+108	@ tmp174,
	ldr	ip, .L272+112	@ tmp176,
	str	r0, [r4, #24]	@ tmp152, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	str	r1, [r4, #32]	@ tmp154, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	ldr	r0, .L272+116	@ tmp178,
	ldr	r1, .L272+120	@ tmp180,
	str	r2, [r4, #36]	@ tmp156, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	str	r3, [r4, #88]	@ tmp232, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	ldr	r2, .L272+124	@ tmp182,
	ldr	r3, .L272+128	@ tmp230,
	str	r10, [r4, #48]	@ tmp162, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	str	fp, [r4, #108]	@ tmp164, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	str	r8, [r4, #52]	@ tmp166, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	str	r9, [r4, #56]	@ tmp168, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	str	r7, [r4, #60]	@ tmp170, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	str	r6, [r4, #64]	@ tmp172, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	str	lr, [r4, #68]	@ tmp174, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	str	ip, [r4, #72]	@ tmp176, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	ldr	lr, .L272+132	@ tmp200,
	ldr	ip, .L272+136	@ tmp202,
	str	r0, [r4, #76]	@ tmp178, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	str	r1, [r4, #80]	@ tmp180, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	ldr	r0, .L272+140	@ tmp204,
	ldr	r1, .L272+144	@ tmp206,
	str	r2, [r4, #84]	@ tmp182, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	str	r3, [r4, #92]	@ tmp230, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	ldr	r2, .L272+148	@ tmp208,
	ldr	r3, .L272+152	@ tmp231,
	ldr	r10, .L272+156	@ tmp188,
	ldr	fp, .L272+160	@ tmp190,
	ldr	r8, .L272+164	@ tmp192,
	ldr	r9, .L272+168	@ tmp194,
	ldr	r7, .L272+172	@ tmp196,
	ldr	r6, .L272+176	@ tmp198,
	str	lr, [r4, #120]	@ tmp200, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	str	ip, [r4, #124]	@ tmp202, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r0, [r4, #128]	@ tmp204, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	str	r10, [r4, #96]	@ tmp188, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	str	fp, [r4, #100]	@ tmp190, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	str	r8, [r4, #28]	@ tmp192, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	str	r9, [r4, #104]	@ tmp194, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	str	r7, [r4, #112]	@ tmp196, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	str	r6, [r4, #116]	@ tmp198, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	str	r1, [r4, #132]	@ tmp206, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	str	r3, [r4, #140]	@ tmp231, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	str	r2, [r4, #136]	@ tmp208, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #28]	@ D.34556, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.34556,
	beq	.L261	@,
	blx	r3	@ D.34556
.L261:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	mov	r0, #0	@,
	bl	VCTRL_OpenVfmw	@
	subs	r6, r0, #0	@ ret,
	moveq	r3, #1	@ tmp213,
	movne	r3, #0	@ tmp217,
	str	r3, [r4]	@ tmp217, g_VfmwEnableFlag
	str	r3, [r4, #4]	@ tmp217, g_VfmwInitCount
	ldr	r3, [r4, #52]	@ D.34556, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	cmp	r3, #0	@ D.34556,
	beq	.L269	@,
	blx	r3	@ D.34556
.L269:
	adds	r6, r6, #0	@ D.34559, ret,
	movne	r6, #1	@ D.34559,
	rsb	r6, r6, #0	@ D.34554, D.34559
.L260:
	ldmia	r5, {r0, r1}	@ pArgs,,
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
.L258:
	mov	r0, r6	@, D.34554
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L271:
	ldr	r3, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	mov	r6, #0	@ D.34554,
	add	r3, r3, #1	@ D.34555, g_VfmwInitCount,
	str	r3, [r4, #4]	@ D.34555, g_VfmwInitCount
	b	.L260	@
.L270:
	bl	OSAL_UP	@
	mvn	r6, #0	@ D.34554,
	b	.L258	@
.L273:
	.align	2
.L272:
	.word	.LANCHOR1
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
	.word	.LANCHOR0
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
	adds	r0, r0, #0	@ D.34562,,
	movne	r0, #1	@ D.34562,
	rsb	r0, r0, #0	@, D.34562
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
	beq	.L280	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pArgs, pArgs
	ldr	r0, .L283	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L283	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.34568,
	ldmfd	sp!, {r4, pc}	@
.L280:
	mvn	r0, #0	@ D.34568,
	bx	lr	@
.L284:
	.align	2
.L283:
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
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	15
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
