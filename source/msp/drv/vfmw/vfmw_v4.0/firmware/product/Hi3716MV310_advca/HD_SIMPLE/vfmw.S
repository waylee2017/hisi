	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"vfmw.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/drv/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV310
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -DCHIP_TYPE_hi3716mv310 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050
@ -DHI_LOG_SUPPORT=0 -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_ADVCA_SUPPORT -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/.vfmw.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/vfmw.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/vfmw.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fno-pic -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdefer-pop -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
@ -fira-share-save-slots -fira-share-spill-slots -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
@ -foptimize-register-move -foptimize-sibling-calls -fpeephole -fpeephole2
@ -fpromote-loop-indices -freg-struct-return -fregmove -frename-registers
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-interblock -fsched-spec -fsched-stalled-insns-dep
@ -fschedule-insns -fschedule-insns2 -fsection-anchors -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-pre -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
@ -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	VDM_OpenHardware
	.type	VDM_OpenHardware, %function
VDM_OpenHardware:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r2, [r1, #0]	@ g_pstRegCrg.497, g_pstRegCrg
	ldr	r0, [r2, #120]	@ D.38303, <variable>.PERI_CRG30.u32
	orr	r3, r0, #3	@ u32TmpValue, D.38303,
	bfc	r3, #4, #1	@ u32TmpValue,,
	bfc	r3, #6, #1	@ u32TmpValue,,
	bfc	r3, #8, #2	@ u32TmpValue,,
	bfc	r3, #12, #5	@ u32TmpValue,,
	bfc	r3, #17, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	VDM_OpenHardware, .-VDM_OpenHardware
	.align	2
	.global	VDM_CloseHardware
	.type	VDM_CloseHardware, %function
VDM_CloseHardware:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r2, [r1, #0]	@ g_pstRegCrg.498, g_pstRegCrg
	ldr	r0, [r2, #120]	@ D.38310, <variable>.PERI_CRG30.u32
	orr	r3, r0, #80	@ u32TmpValue, D.38310,
	bfc	r3, #0, #1	@ u32TmpValue,,
	bfc	r3, #1, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	VDM_CloseHardware, .-VDM_CloseHardware
	.align	2
	.global	SCD_OpenHardware
	.type	SCD_OpenHardware, %function
SCD_OpenHardware:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r0, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r0, #0]	@ g_pstRegCrg.499, g_pstRegCrg
	ldr	r2, [r3, #120]	@ D.38317, <variable>.PERI_CRG30.u32
	bfc	r2, #5, #1	@ u32TmpValue,,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	SCD_OpenHardware, .-SCD_OpenHardware
	.align	2
	.global	SCD_CloseHardware
	.type	SCD_CloseHardware, %function
SCD_CloseHardware:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r1, #0]	@ g_pstRegCrg.500, g_pstRegCrg
	ldr	r0, [r3, #120]	@ D.38324, <variable>.PERI_CRG30.u32
	orr	r2, r0, #32	@ u32TmpValue, D.38324,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	SCD_CloseHardware, .-SCD_CloseHardware
	.align	2
	.global	DNR_OpenHardware
	.type	DNR_OpenHardware, %function
DNR_OpenHardware:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r1, #0]	@ g_pstRegCrg.501, g_pstRegCrg
	ldr	r0, [r3, #112]	@ D.38331, <variable>.PERI_CRG28.u32
	orr	r2, r0, #1	@ u32TmpValue, D.38331,
	bfc	r2, #1, #1	@ u32TmpValue,,
	str	r2, [r3, #112]	@ u32TmpValue, <variable>.PERI_CRG28.u32
	bx	lr	@
	.fnend
	.size	DNR_OpenHardware, .-DNR_OpenHardware
	.align	2
	.global	BPD_OpenHardware
	.type	BPD_OpenHardware, %function
BPD_OpenHardware:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:g_pstRegCrg	@ tmp138,
	movt	ip, #:upper16:g_pstRegCrg	@ tmp138,
	mov	r0, #0	@,
	ldr	r3, [ip, #0]	@ g_pstRegCrg.502, g_pstRegCrg
	ldr	r1, [r3, #136]	@ D.38338, <variable>.PERI_CRG34.u32
	orr	r2, r1, #1	@ u32TmpValue, D.38338,
	bfc	r2, #4, #1	@ u32TmpValue,,
	str	r2, [r3, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	bx	lr	@
	.fnend
	.size	BPD_OpenHardware, .-BPD_OpenHardware
	.align	2
	.global	VFMW_set_dbgopt
	.type	VFMW_set_dbgopt, %function
VFMW_set_dbgopt:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	VCTRL_SetDbgOption	@
	.fnend
	.size	VFMW_set_dbgopt, .-VFMW_set_dbgopt
	.align	2
	.global	VDEC_Resume
	.type	VDEC_Resume, %function
VDEC_Resume:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	VCTRL_Resume	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDEC_Resume, .-VDEC_Resume
	.align	2
	.global	VDEC_Suspend
	.type	VDEC_Suspend, %function
VDEC_Suspend:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	VCTRL_Suspend	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDEC_Suspend, .-VDEC_Suspend
	.align	2
	.global	GetVdecCapability
	.type	GetVdecCapability, %function
GetVdecCapability:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #148	@,
	mov	r4, r0	@ pCap, pCap
	bl	__memzero	@
	mov	r2, #1	@ tmp134,
	mov	r0, #50	@ tmp135,
	mov	r3, #1920	@ tmp136,
	mov	ip, #1088	@ tmp137,
	str	r2, [r4, #44]	@ tmp134, <variable>.SupportedStd
	movw	r1, #:lower16:94003200	@ tmp157,
	str	r0, [r4, #4]	@ tmp135, <variable>.s32MaxBitRate
	movt	r1, #:upper16:94003200	@ tmp157,
	mov	r0, #0	@ tmp139,
	str	r3, [r4, #8]	@ tmp136, <variable>.s32MaxFrameWidth
	str	ip, [r4, #12]	@ tmp137, <variable>.s32MaxFrameHeight
	mov	r3, #3	@ tmp140,
	mov	ip, #2	@ tmp141,
	str	r2, [r4, #0]	@ tmp134, <variable>.s32MaxChanNum
	str	r1, [r4, #16]	@ tmp157, <variable>.s32MaxPixelPerSec
	mov	r2, #6	@ tmp142,
	mov	r1, #8	@ tmp143,
	str	r0, [r4, #20]	@ tmp139, <variable>.SupportedStd
	str	r3, [r4, #24]	@ tmp140, <variable>.SupportedStd
	mov	r0, #9	@ tmp144,
	mov	r3, #5	@ tmp146,
	str	ip, [r4, #28]	@ tmp141, <variable>.SupportedStd
	str	r2, [r4, #32]	@ tmp142, <variable>.SupportedStd
	mov	ip, #4	@ tmp147,
	mov	r2, #10	@ tmp148,
	str	r1, [r4, #36]	@ tmp143, <variable>.SupportedStd
	str	r0, [r4, #40]	@ tmp144, <variable>.SupportedStd
	mov	r1, #14	@ tmp149,
	mov	r0, #11	@ tmp150,
	str	r3, [r4, #48]	@ tmp146, <variable>.SupportedStd
	str	ip, [r4, #52]	@ tmp147, <variable>.SupportedStd
	mov	r3, #12	@ tmp151,
	str	r2, [r4, #56]	@ tmp148, <variable>.SupportedStd
	mov	ip, #13	@ tmp152,
	str	r1, [r4, #60]	@ tmp149, <variable>.SupportedStd
	mov	r2, #15	@ tmp153,
	str	r0, [r4, #64]	@ tmp150, <variable>.SupportedStd
	mov	r1, #17	@ tmp154,
	str	r3, [r4, #68]	@ tmp151, <variable>.SupportedStd
	mov	r0, #18	@ tmp155,
	mov	r3, #19	@ tmp156,
	str	ip, [r4, #72]	@ tmp152, <variable>.SupportedStd
	str	r2, [r4, #76]	@ tmp153, <variable>.SupportedStd
	str	r1, [r4, #80]	@ tmp154, <variable>.SupportedStd
	str	r0, [r4, #84]	@ tmp155, <variable>.SupportedStd
	str	r3, [r4, #88]	@ tmp156, <variable>.SupportedStd
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	GetVdecCapability, .-GetVdecCapability
	.align	2
	.global	VDEC_Control
	.type	VDEC_Control, %function
VDEC_Control:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp168,
	movt	r4, #:upper16:.LANCHOR0	@ tmp168,
	.pad #76
	sub	sp, sp, #76	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	mov	r4, r2	@ pArgs, pArgs
	mov	r2, #0	@ tmp165,
	str	r2, [sp, #60]	@ tmp165, NewNum
	cmp	r3, #1	@ g_VfmwEnableFlag,
	str	r2, [sp, #68]	@ tmp165, RefNum
	str	r2, [sp, #64]	@ tmp165, ReadNum
	beq	.L22	@,
.L130:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #0	@ ret,
.L23:
	mov	r0, r7	@, ret
	add	sp, sp, #76	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L22:
	cmp	r1, #61	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L81	@
.L52:
	.word	.L25
	.word	.L26
	.word	.L25
	.word	.L25
	.word	.L27
	.word	.L28
	.word	.L25
	.word	.L25
	.word	.L29
	.word	.L30
	.word	.L25
	.word	.L25
	.word	.L25
	.word	.L25
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L81
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L25
	.word	.L25
	.word	.L38
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L39
	.word	.L40
	.word	.L81
	.word	.L41
	.word	.L42
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L25
	.word	.L25
	.word	.L43
	.word	.L44
	.word	.L45
	.word	.L46
	.word	.L25
	.word	.L47
	.word	.L48
	.word	.L49
	.word	.L50
	.word	.L51
.L85:
	bl	VCTRL_DestroyChan	@
	subs	r7, r0, #0	@ ret,
	beq	.L23	@,
.L81:
	mvn	r7, #0	@ ret,
	b	.L23	@
.L26:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L53:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	mov	r7, #0	@ ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L51:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #0]	@,* pArgs
	bl	VDEC_SETDNR_ENABLE	@
.L133:
	subs	r7, r0, #0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	mvnne	r7, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L50:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	add	r1, sp, #72	@ tmp284,,
	mov	ip, #0	@ tmp283,
	mov	r0, r5	@, ChanID
	str	ip, [r1, #-16]!	@ tmp283, enable
	bl	VDEC_GETDNR_ENABLE	@
	ldr	r7, [sp, #56]	@ enable, enable
	str	r7, [r4, #0]	@ enable,* pArgs
	b	.L133	@
.L27:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
	ldr	r0, [r4, #0]	@ prephitmp.844,* pArgs
	cmp	r0, #33	@ prephitmp.844,
	bgt	.L130	@,
.L56:
	add	r1, r4, #4	@, pArgs,
	bl	VCTRL_CreateChan	@
	mov	r5, r0	@ ret.862,
	bl	vfmw_dprint_nothing	@
	cmp	r5, #0	@ ret.862,
	str	r5, [r4, #0]	@ ret.862,* pArgs
	blt	.L81	@,
.L82:
	mov	r7, #0	@ ret,
	b	.L23	@
.L28:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
	ldr	r0, [r4, #0]	@ prephitmp.840,* pArgs
	cmp	r0, #33	@ prephitmp.840,
	bgt	.L130	@,
.L58:
	ldr	r1, [r4, #4]	@,
	mov	r2, #2	@,
	mov	r3, #0	@,
	bl	VCTRL_CreateChanWithOption	@
	cmp	r0, #0	@ ret.866,
	str	r0, [r4, #0]	@ ret.866,* pArgs
	blt	.L81	@,
	mov	r7, #0	@ ret,
	b	.L23	@
.L49:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:s_DnrChan	@ tmp238,
	movw	r2, #:lower16:76696	@ tmp241,
	movt	r0, #:upper16:s_DnrChan	@ tmp238,
	movt	r2, #:upper16:76696	@ tmp241,
	ldr	ip, [r4, #0]	@ tmp244,* pArgs
	mov	r7, #0	@ ret,
	mla	r1, r2, r5, r0	@ tmp242, tmp241, ChanID, tmp238
	str	ip, [r1, #24]	@ tmp244, <variable>.userSetRwzb_state
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L48:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
	movw	lr, #:lower16:s_pFspInst	@ tmp270,
	movt	lr, #:upper16:s_pFspInst	@ tmp270,
	add	r1, sp, #68	@,,
	add	r2, sp, #64	@,,
	add	r3, sp, #60	@,,
	ldr	r6, [lr, r5, asl #2]	@ pFsp, s_pFspInst
	bl	VCTRL_GetChanImgNum	@
	movw	r2, #:lower16:76696	@ tmp278,
	movw	r3, #:lower16:s_DnrChan	@ tmp280,
	movt	r2, #:upper16:76696	@ tmp278,
	movt	r3, #:upper16:s_DnrChan	@ tmp280,
	ldr	ip, [sp, #68]	@ RefNum, RefNum
	mov	r7, #0	@ ret,
	mla	r1, r2, r5, r3	@ tmp279, tmp278, ChanID, tmp280
	str	ip, [r4, #0]	@ RefNum, <variable>.u32RefNum
	ldrb	r0, [r6, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	strb	r0, [r4, #8]	@ <variable>.s32DecFsNum, <variable>.s8DecFsNum
	ldr	r2, [r1, #448]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	str	r2, [r4, #4]	@ <variable>.s32ValidImgNum, <variable>.s32DisFsNum
	b	.L23	@
.L29:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L59:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetChanCfg	@
.L138:
	cmp	r0, #0	@ ret
	moveq	r7, r0	@, ret, ret
	mvnne	r7, #0	@, ret,
.L141:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L30:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L60:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigChan	@
	cmp	r0, #0	@ ret
	moveq	r7, r0	@, ret, ret
	mvnne	r7, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_LoadDspCode	@
	b	.L23	@
.L47:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
	movw	ip, #:lower16:g_scd_vir	@ tmp268,
	movt	ip, #:upper16:g_scd_vir	@ tmp268,
	mov	r7, #0	@ ret,
	ldr	r3, [ip, r0, asl #2]	@ tmp269, g_scd_vir
	str	r3, [r4, #0]	@ tmp269,* pArgs
	b	.L23	@
.L46:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L76:
	ldr	r1, [r4, #0]	@ tmp267,* pArgs
	movw	r0, #:lower16:.LANCHOR1	@ tmp266,
	movt	r0, #:upper16:.LANCHOR1	@ tmp266,
	mov	r7, #0	@ ret,
	str	r1, [r0, r5, asl #2]	@ tmp267, g_FrameRate
	b	.L23	@
.L45:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L74:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	DNR_ConfigBackOptimizeFlag	@
	cmp	r0, #0	@,
	bne	.L120	@,
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ConfigPVRInfo	@
	subs	r7, r0, #0	@ ret,
	beq	.L141	@,
.L120:
	mvn	r7, #0	@ ret,
	b	.L141	@
.L44:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L73:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	DNR_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	bne	.L118	@,
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	bl	vfmw_dprint_nothing	@
.L118:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	b	.L138	@
.L36:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L66:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanMemInfo	@
	subs	r7, r0, #0	@ ret,
	bne	.L145	@,
	ldr	r3, [sp, #4]	@ D.38760, MemRec.VirAddr
	ldr	r2, [sp, #8]	@ D.38759, MemRec.PhyAddr
	ldr	lr, [sp, #12]	@ MemRec.Length, MemRec.Length
	cmp	r3, #0	@ D.38760,
	stmia	r4, {r2, r3, lr}	@ phole stm
	beq	.L120	@,
	cmp	r2, #0	@ D.38759,
	mvneq	r7, #0	@ ret,
	b	.L141	@
.L37:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L67:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.38768,
	str	r0, [r4, #0]	@ D.38768,* pArgs
	moveq	r7, r0	@, ret, D.38768
	movne	r7, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L43:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L72:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, sp	@,
	mov	r2, #1	@ tmp254,
	mov	ip, #0	@ tmp255,
	stmia	sp, {r2, ip}	@ phole stm
	bl	VCTRL_ResetChanWithOption	@
	cmp	r0, #0	@,
	bne	.L120	@,
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SeekPts	@
	subs	r7, r0, #0	@ ret,
	mvnne	r7, #0	@ ret,
	b	.L141	@
.L42:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L75:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r2, r4	@, pArgs
	mov	r1, #1	@,
	bl	DNR_SetDataSource	@
	b	.L138	@
.L38:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L54:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	mov	r7, #0	@ ret,
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L39:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L70:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r7, [sp, #8]	@ stMem.Length, stMem.Length
	ldr	r3, [sp, #0]	@ stMem.PhyAddr, stMem.PhyAddr
	stmia	r4, {r3, r7}	@ phole stm
	b	.L138	@
.L40:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L71:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_PutUsrdecFrame	@
	b	.L138	@
.L41:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L68:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetDiscardPicParam	@
	mov	r7, r0	@ ret,
	b	.L141	@
.L32:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L62:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4, #0]	@ ChanID, <variable>.image_provider_inst_id
	mov	r0, r5	@, ChanID
	mov	r7, #0	@ ret,
	bl	VCTRL_GetDSDFlag	@
	movw	r1, #:lower16:DNR_ReceiveImage	@ tmp199,
	movw	r0, #:lower16:DNR_ReleaseImage	@ tmp200,
	movt	r1, #:upper16:DNR_ReceiveImage	@ tmp199,
	movt	r0, #:upper16:DNR_ReleaseImage	@ tmp200,
	str	r1, [r4, #4]	@ tmp199, <variable>.read_image
	str	r0, [r4, #8]	@ tmp200, <variable>.release_image
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L31:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L61:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_SetStreamInterface	@
	b	.L138	@
.L34:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L64:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	add	r1, sp, #44	@,,
	add	r2, sp, #32	@,,
	bl	VCTRL_GetChanMemSize	@
	subs	r7, r0, #0	@ D.38733,
	bne	.L120	@,
	ldr	r2, [sp, #44]	@ VdmMem, VdmMem
	ldr	lr, [sp, #32]	@ ScdMem, ScdMem
	ldr	ip, [sp, #36]	@ ScdMem, ScdMem
	ldr	r1, [sp, #40]	@ ScdMem, ScdMem
	add	r0, lr, r2	@ tmp210, ScdMem, VdmMem
	ldr	r3, [sp, #48]	@ VdmMem, VdmMem
	ldr	r2, [sp, #52]	@ VdmMem, VdmMem
	add	lr, ip, r3	@ tmp213, ScdMem, VdmMem
	str	r0, [r4, #0]	@ tmp210, <variable>.MinMemSize
	add	ip, r1, r2	@ tmp216, ScdMem, VdmMem
	str	lr, [r4, #4]	@ tmp213, <variable>.NormalMemSize
	str	ip, [r4, #8]	@ tmp216, <variable>.FluentMemSize
	b	.L141	@
.L35:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L65:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	add	r2, sp, #16	@,,
	mov	r3, #1	@,
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r7, r0, #0	@ D.38746,
	bne	.L120	@,
	add	r0, sp, #16
	ldmia	r0, {r0, r1, r3, ip}	@ phole ldm
	stmia	r4, {r0, r1, r3, ip}	@ phole stm
	b	.L141	@
.L33:
	cmp	r4, #0	@ pArgs,
	beq	.L130	@,
.L63:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetStreamSize	@
	mov	r7, r0	@ ret,
	b	.L141	@
.L25:
	cmp	r1, #56	@ eCmdID,
	ldrls	pc, [pc, r1, asl #2]	@ eCmdID
	b	.L81	@
.L94:
	.word	.L82
	.word	.L53
	.word	.L82
	.word	.L82
	.word	.L83
	.word	.L84
	.word	.L85
	.word	.L86
	.word	.L59
	.word	.L60
	.word	.L87
	.word	.L88
	.word	.L89
	.word	.L90
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L81
	.word	.L64
	.word	.L65
	.word	.L66
	.word	.L67
	.word	.L91
	.word	.L92
	.word	.L54
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L70
	.word	.L71
	.word	.L81
	.word	.L68
	.word	.L75
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L82
	.word	.L82
	.word	.L72
	.word	.L73
	.word	.L74
	.word	.L76
	.word	.L93
.L92:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_ResetChanWithOption	@
	b	.L138	@
.L91:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_ReleaseStream	@
	b	.L138	@
.L90:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChan	@
	b	.L138	@
.L89:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	b	.L138	@
.L88:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L138	@
.L87:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	mov	r7, #0	@ ret,
	bl	VCTRL_GetChanState	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L86:
	bl	VCTRL_DestroyChanWithOption	@
	subs	r7, r0, #0	@ ret,
	beq	.L23	@,
	b	.L81	@
.L93:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_StartChanWithOption	@
	b	.L138	@
.L145:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #0	@ ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L23	@
.L83:
	ldr	r0, [r4, #0]	@ prephitmp.844,* pArgs
	b	.L56	@
.L84:
	ldr	r0, [r4, #0]	@ prephitmp.840,* pArgs
	b	.L58	@
	.fnend
	.size	VDEC_Control, .-VDEC_Control
	.align	2
	.global	VDEC_Exit
	.type	VDEC_Exit, %function
VDEC_Exit:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	subs	r5, r0, #0	@ ret,
	bne	.L147	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r0, #1	@ g_VfmwInitCount.513, g_VfmwInitCount,
	str	r3, [r4, #4]	@ g_VfmwInitCount.513, g_VfmwInitCount
	cmp	r3, #0	@ g_VfmwInitCount.513,
	ble	.L148	@,
	bl	OSAL_UP	@
	mov	r0, r5	@ D.38472, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L148:
	bl	VCTRL_CloseVfmw	@
	mov	r6, r0	@ ret.912,
	bl	MEM_ManagerClearOperation	@
	str	r5, [r4, #0]	@ ret, g_VfmwEnableFlag
	bl	OSAL_UP	@
	cmp	r6, #0	@ ret.912,
	moveq	r0, r6	@ D.38472, ret.912
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L147:
	mvn	r0, #0	@ D.38472,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDEC_Exit, .-VDEC_Exit
	.align	2
	.global	VDEC_SpinLockInit
	.type	VDEC_SpinLockInit, %function
VDEC_SpinLockInit:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLockIsr_Image2D	@,
	movt	r0, #:upper16:g_SpinLockIsr_Image2D	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	ldmfd	sp!, {r4, lr}	@
	b	OSAL_SpinLockIRQInit	@
	.fnend
	.size	VDEC_SpinLockInit, .-VDEC_SpinLockInit
	.align	2
	.global	VDEC_InitWithOperation
	.type	VDEC_InitWithOperation, %function
VDEC_InitWithOperation:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pArgs, pArgs
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	cmp	r5, #0	@ pArgs,
	beq	.L164	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp240,
	movt	r4, #:upper16:.LANCHOR0	@ tmp240,
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L165	@,
	mov	r1, #8	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	movw	r6, #:lower16:.LANCHOR1	@ tmp157,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLockIsr_Image2D	@,
	movt	r0, #:upper16:g_SpinLockIsr_Image2D	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	__memzero	@
	movt	r6, #:upper16:.LANCHOR1	@ tmp157,
	movw	r2, #:lower16:AcceleratorCharacter	@ tmp155,
	movt	r2, #:upper16:AcceleratorCharacter	@ tmp155,
	mov	r1, #0	@ tmp156,
	mov	r0, #15	@ tmp158,
	str	r1, [r2, #0]	@ tmp156, AcceleratorCharacter
	movw	r3, #:lower16:VDM_OpenHardware	@ tmp160,
	str	r0, [r6, #4]	@ tmp158, g_chipID
	movt	r3, #:upper16:VDM_OpenHardware	@ tmp160,
	movw	ip, #:lower16:VDM_CloseHardware	@ tmp162,
	str	r3, [r4, #8]	@ tmp160, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	movt	ip, #:upper16:VDM_CloseHardware	@ tmp162,
	movw	r6, #:lower16:SCD_OpenHardware	@ tmp164,
	str	ip, [r4, #12]	@ tmp162, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	movt	r6, #:upper16:SCD_OpenHardware	@ tmp164,
	movw	r2, #:lower16:SCD_CloseHardware	@ tmp166,
	str	r6, [r4, #16]	@ tmp164, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movt	r2, #:upper16:SCD_CloseHardware	@ tmp166,
	movw	r1, #:lower16:BPD_OpenHardware	@ tmp168,
	str	r2, [r4, #20]	@ tmp166, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	movt	r1, #:upper16:BPD_OpenHardware	@ tmp168,
	movw	r0, #:lower16:VDMHAL_V200R004_GetHalMemSize	@ tmp170,
	str	r1, [r4, #24]	@ tmp168, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	movt	r0, #:upper16:VDMHAL_V200R004_GetHalMemSize	@ tmp170,
	movw	r3, #:lower16:VDMHAL_V200R004_OpenHAL	@ tmp172,
	str	r0, [r4, #32]	@ tmp170, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	movt	r3, #:upper16:VDMHAL_V200R004_OpenHAL	@ tmp172,
	movw	ip, #:lower16:VDMHAL_V200R004_CloseHAL	@ tmp174,
	str	r3, [r4, #36]	@ tmp172, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	movt	ip, #:upper16:VDMHAL_V200R004_CloseHAL	@ tmp174,
	movw	r6, #:lower16:VDMHAL_V200R004_ArrangeMem	@ tmp176,
	str	ip, [r4, #40]	@ tmp174, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	movt	r6, #:upper16:VDMHAL_V200R004_ArrangeMem	@ tmp176,
	movw	r2, #:lower16:VDMHAL_V200R004_ResetVdm	@ tmp178,
	str	r6, [r4, #44]	@ tmp176, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	movt	r2, #:upper16:VDMHAL_V200R004_ResetVdm	@ tmp178,
	movw	r1, #:lower16:VDMHAL_V200R400_GetPmvSize	@ tmp180,
	str	r2, [r4, #48]	@ tmp178, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	movt	r1, #:upper16:VDMHAL_V200R400_GetPmvSize	@ tmp180,
	movw	r0, #:lower16:VDMHAL_V200R004_GlbReset	@ tmp182,
	str	r1, [r4, #108]	@ tmp180, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	movt	r0, #:upper16:VDMHAL_V200R004_GlbReset	@ tmp182,
	movw	r3, #:lower16:VDMHAL_V200R004_ClearIntState	@ tmp184,
	str	r0, [r4, #52]	@ tmp182, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	movt	r3, #:upper16:VDMHAL_V200R004_ClearIntState	@ tmp184,
	movw	ip, #:lower16:VDMHAL_V200R004_MaskInt	@ tmp186,
	str	r3, [r4, #56]	@ tmp184, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	movt	ip, #:upper16:VDMHAL_V200R004_MaskInt	@ tmp186,
	movw	r6, #:lower16:VDMHAL_V200R004_EnableInt	@ tmp188,
	str	ip, [r4, #60]	@ tmp186, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	movt	r6, #:upper16:VDMHAL_V200R004_EnableInt	@ tmp188,
	movw	r2, #:lower16:VDMHAL_V200R004_CheckReg	@ tmp190,
	str	r6, [r4, #64]	@ tmp188, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	movt	r2, #:upper16:VDMHAL_V200R004_CheckReg	@ tmp190,
	movw	r1, #:lower16:VDMHAL_V200R004_StartHwRepair	@ tmp192,
	str	r2, [r4, #68]	@ tmp190, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	movt	r1, #:upper16:VDMHAL_V200R004_StartHwRepair	@ tmp192,
	movw	r0, #:lower16:VDMHAL_V200R004_StartHwDecode	@ tmp194,
	str	r1, [r4, #72]	@ tmp192, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	movt	r0, #:upper16:VDMHAL_V200R004_StartHwDecode	@ tmp194,
	movw	r3, #:lower16:VDMHAL_V200R004_PrepareDec	@ tmp196,
	str	r0, [r4, #76]	@ tmp194, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	movt	r3, #:upper16:VDMHAL_V200R004_PrepareDec	@ tmp196,
	movw	ip, #:lower16:VDMHAL_V200R004_IsVdmReady	@ tmp198,
	str	r3, [r4, #80]	@ tmp196, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	movt	ip, #:upper16:VDMHAL_V200R004_IsVdmReady	@ tmp198,
	movw	r6, #:lower16:VDMHAL_V200R004_IsVdmRun	@ tmp200,
	str	ip, [r4, #84]	@ tmp198, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	movt	r6, #:upper16:VDMHAL_V200R004_IsVdmRun	@ tmp200,
	movw	r2, #:lower16:VDMHAL_V200R004_PrepareRepair	@ tmp202,
	str	r6, [r4, #88]	@ tmp200, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	movt	r2, #:upper16:VDMHAL_V200R004_PrepareRepair	@ tmp202,
	movw	r1, #:lower16:VDMHAL_V200R004_MakeDecReport	@ tmp204,
	str	r2, [r4, #92]	@ tmp202, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movt	r1, #:upper16:VDMHAL_V200R004_MakeDecReport	@ tmp204,
	movw	r0, #:lower16:VDMHAL_V200R004_BackupInfo	@ tmp206,
	str	r1, [r4, #96]	@ tmp204, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	movt	r0, #:upper16:VDMHAL_V200R004_BackupInfo	@ tmp206,
	movw	r3, #:lower16:VDMHAL_V200R004_GetCharacter	@ tmp208,
	str	r0, [r4, #100]	@ tmp206, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	movt	r3, #:upper16:VDMHAL_V200R004_GetCharacter	@ tmp208,
	movw	ip, #:lower16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp210,
	str	r3, [r4, #28]	@ tmp208, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	movt	ip, #:upper16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp210,
	movw	r6, #:lower16:DNR_OpenHardware	@ tmp212,
	str	ip, [r4, #104]	@ tmp210, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	movt	r6, #:upper16:DNR_OpenHardware	@ tmp212,
	movw	r2, #:lower16:DNRHAL_V200_Init	@ tmp214,
	str	r6, [r4, #112]	@ tmp212, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	movt	r2, #:upper16:DNRHAL_V200_Init	@ tmp214,
	movw	r1, #:lower16:DNRHAL_V200_CfgReg	@ tmp216,
	str	r2, [r4, #116]	@ tmp214, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	movt	r1, #:upper16:DNRHAL_V200_CfgReg	@ tmp216,
	movw	r0, #:lower16:DNRHAL_V200_Reset	@ tmp218,
	str	r1, [r4, #120]	@ tmp216, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	movt	r0, #:upper16:DNRHAL_V200_Reset	@ tmp218,
	movw	r3, #:lower16:DNRHAL_V200_Start	@ tmp220,
	str	r0, [r4, #124]	@ tmp218, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	movt	r3, #:upper16:DNRHAL_V200_Start	@ tmp220,
	movw	ip, #:lower16:DNRHAL_V200_ClearIntState	@ tmp222,
	str	r3, [r4, #128]	@ tmp220, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	movt	ip, #:upper16:DNRHAL_V200_ClearIntState	@ tmp222,
	movw	r6, #:lower16:DNRHAL_V200_MaskInt	@ tmp224,
	str	ip, [r4, #132]	@ tmp222, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	movt	r6, #:upper16:DNRHAL_V200_MaskInt	@ tmp224,
	movw	r2, #:lower16:DNRHAL_V200_EnableInt	@ tmp226,
	str	r6, [r4, #136]	@ tmp224, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	movt	r2, #:upper16:DNRHAL_V200_EnableInt	@ tmp226,
	str	r2, [r4, #140]	@ tmp226, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #28]	@ D.38447, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.38447,
	beq	.L157	@,
	blx	r3	@ D.38447
.L157:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	mov	r0, #0	@,
	bl	VCTRL_OpenVfmw	@
	mov	r6, r0	@ ret,
	bl	vfmw_dprint_nothing	@
	cmp	r6, #0	@ ret,
	moveq	r3, #1	@ tmp229,
	movne	r3, #0	@ tmp233,
	str	r3, [r4, #4]	@ tmp233, g_VfmwInitCount
	str	r3, [r4, #0]	@ tmp233, g_VfmwEnableFlag
	ldr	r3, [r4, #52]	@ D.38455, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	cmp	r3, #0	@ D.38455,
	beq	.L160	@,
	blx	r3	@ D.38455
.L161:
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	cmp	r6, #0	@ ret,
	moveq	r0, r6	@, D.38400, ret
	mvnne	r0, #0	@, D.38400,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L165:
	ldr	r1, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	add	r0, r1, #1	@ tmp144, g_VfmwInitCount,
	str	r0, [r4, #4]	@ tmp144, g_VfmwInitCount
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	mov	r0, #0	@ D.38400,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L160:
	bl	vfmw_dprint_nothing	@
	b	.L161	@
.L164:
	bl	OSAL_UP	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38400,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDEC_InitWithOperation, .-VDEC_InitWithOperation
	.align	2
	.global	VDEC_Init
	.type	VDEC_Init, %function
VDEC_Init:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ VdecCallback, VdecCallback
	mov	r1, #16	@,
	mov	r0, sp	@,
	mov	r4, sp	@ tmp137,
	bl	__memzero	@
	mov	r0, sp	@,
	mov	r3, #0	@ tmp138,
	str	r5, [sp, #4]	@ VdecCallback, Args.VdecCallback
	str	r3, [sp, #12]	@ tmp138, Args.mem_free
	str	r3, [sp, #8]	@ tmp138, Args.mem_malloc
	bl	VDEC_InitWithOperation	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VDEC_Init, .-VDEC_Init
	.align	2
	.global	VDEC_ExitModule
	.type	VDEC_ExitModule, %function
VDEC_ExitModule:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vfmw_proc_exit	@
	.fnend
	.size	VDEC_ExitModule, .-VDEC_ExitModule
	.align	2
	.global	VDEC_OpenModule
	.type	VDEC_OpenModule, %function
VDEC_OpenModule:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	OSAL_SEMA_INTIT	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_proc_init	@
	.fnend
	.size	VDEC_OpenModule, .-VDEC_OpenModule
	.global	g_VfmwEnableFlag
	.global	g_VfmwInitCount
	.global	g_chipID
	.global	g_ChipMaxWidth
	.global	g_ChipMaxHeight
	.global	g_vdm_hal_fun_ptr
	.global	g_dnr_hal_fun_ptr
	.global	g_FrameRate
	.global	g_LastFrameRate
	.global	__ksymtab_VDEC_Init
	.global	__ksymtab_VDEC_Exit
	.global	__ksymtab_VDEC_Control
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_VDEC_Init, %object
	.size	__kstrtab_VDEC_Init, 10
__kstrtab_VDEC_Init:
	.ascii	"VDEC_Init\000"
	.type	__kstrtab_VDEC_Exit, %object
	.size	__kstrtab_VDEC_Exit, 10
__kstrtab_VDEC_Exit:
	.ascii	"VDEC_Exit\000"
	.type	__kstrtab_VDEC_Control, %object
	.size	__kstrtab_VDEC_Control, 13
__kstrtab_VDEC_Control:
	.ascii	"VDEC_Control\000"
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
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_FrameRate, %object
	.size	g_FrameRate, 4
g_FrameRate:
	.word	30
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	15
	.type	g_ChipMaxWidth, %object
	.size	g_ChipMaxWidth, 4
g_ChipMaxWidth:
	.word	8192
	.type	g_ChipMaxHeight, %object
	.size	g_ChipMaxHeight, 4
g_ChipMaxHeight:
	.word	8192
	.type	g_LastFrameRate, %object
	.size	g_LastFrameRate, 4
g_LastFrameRate:
	.word	30
	.bss
	.align	2
.LANCHOR0 = . + 0
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
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
