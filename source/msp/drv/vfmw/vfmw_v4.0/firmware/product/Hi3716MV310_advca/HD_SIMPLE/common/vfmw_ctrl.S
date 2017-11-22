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
	.file	"vfmw_ctrl.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.o
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
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36561, s_pstVfmwChan
	cmp	r0, #0	@ D.36561,
	addne	r0, r0, #104	@ D.36564, D.36561,
	bx	lr	@
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36581, s_pstVfmwChan
	cmp	r0, #0	@ D.36581,
	addne	r0, r0, #128	@ D.36584, D.36581,
	bx	lr	@
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
	.fnstart
.LFB1942:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36702, s_pstVfmwChan
	cmp	r0, #0	@ D.36702,
	addne	r0, r0, #116	@ D.36705, D.36702,
	bx	lr	@
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_GetChanCtxSize
	.type	VCTRL_GetChanCtxSize, %function
VCTRL_GetChanCtxSize:
	.fnstart
.LFB1946:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:499120	@ tmp136,
	movt	r3, #:upper16:499120	@ tmp136,
	str	r3, [r1, #0]	@ tmp136,* s32ChanCtxSize
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanCtxSize, .-VCTRL_GetChanCtxSize
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
	.fnstart
.LFB1956:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ D.37464, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #19	@ <variable>.eVidStd,
	bne	.L22	@,
.L16:
	mvn	r0, #0	@ D.37517,
	bx	lr	@
.L22:
	ldr	r2, [r3, #32]	@ D.37469, <variable>.stChanCfg.eVidStd
	ldr	r0, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, r0	@ D.37469, <variable>.eVidStd
	bne	.L16	@,
	ldr	ip, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldr	r0, [r1, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.s32ChanErrThr
	bne	.L16	@,
	ldr	ip, [r3, #44]	@ <variable>.stChanCfg.s32ChanPriority, <variable>.stChanCfg.s32ChanPriority
	ldr	r0, [r1, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanPriority, <variable>.s32ChanPriority
	bne	.L16	@,
	ldr	ip, [r3, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r1, #20]	@ <variable>.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	bne	.L16	@,
	ldr	ip, [r3, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	ldr	r0, [r1, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecMode, <variable>.s32DecMode
	bne	.L16	@,
	ldr	ip, [r3, #60]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	ldr	r0, [r1, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.s32DecOrderOutput
	bne	.L16	@,
	ldr	ip, [r3, #68]	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.stChanCfg.s32DnrDispOutEnable
	ldr	r0, [r1, #36]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	cmp	ip, r0	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	bne	.L16	@,
	ldr	ip, [r3, #64]	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.stChanCfg.s32DnrTfEnable
	ldr	r0, [r1, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	cmp	ip, r0	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.s32DnrTfEnable
	bne	.L16	@,
	ldr	ip, [r3, #76]	@ <variable>.stChanCfg.s32VcmpEn, <variable>.stChanCfg.s32VcmpEn
	ldr	r0, [r1, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpEn, <variable>.s32VcmpEn
	bne	.L16	@,
	ldr	ip, [r3, #88]	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.stChanCfg.s32VcmpWmEndLine
	ldr	r0, [r1, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	bne	.L16	@,
	ldr	ip, [r3, #84]	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.stChanCfg.s32VcmpWmStartLine
	ldr	r0, [r1, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bne	.L16	@,
	ldr	ip, [r3, #80]	@ <variable>.stChanCfg.s32WmEn, <variable>.stChanCfg.s32WmEn
	ldr	r0, [r1, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	ip, r0	@ <variable>.stChanCfg.s32WmEn, <variable>.s32WmEn
	bne	.L16	@,
	ldr	ip, [r3, #92]	@ <variable>.stChanCfg.s32SupportAllP, <variable>.stChanCfg.s32SupportAllP
	ldr	r0, [r1, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	ip, r0	@ <variable>.stChanCfg.s32SupportAllP, <variable>.s32SupportAllP
	bne	.L16	@,
	cmp	r2, #1	@ D.37469,
	beq	.L23	@,
	sub	r0, r2, #10	@ tmp170, D.37469,
	cmp	r0, #2	@ tmp170,
	bhi	.L18	@,
	ldr	r2, [r3, #36]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	ip, [r1, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, ip	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L16	@,
.L18:
	mov	r0, #0	@ D.37517,
	bx	lr	@
.L23:
	ldr	r0, [r3, #36]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r2, [r1, #4]	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, r2	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	bne	.L16	@,
	ldr	ip, [r3, #40]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r3, [r1, #8]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	ip, r3	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	beq	.L18	@,
	b	.L16	@
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
	.fnstart
.LFB1976:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ <variable>.s32NoStreamFlag, <variable>.s32NoStreamFlag
	subs	r0, r0, #1	@, <variable>.s32NoStreamFlag,
	movne	r0, #1	@
	bx	lr	@
	.fnend
	.size	VCTRL_IsChanSegEnough, .-VCTRL_IsChanSegEnough
	.align	2
	.global	VCTRL_IsChanActive
	.type	VCTRL_IsChanActive, %function
VCTRL_IsChanActive:
	.fnstart
.LFB1977:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L30	@,
.L27:
	mvn	r0, #0	@ D.38222,
	bx	lr	@
.L30:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.38221, s_pstVfmwChan
	cmp	r3, #0	@ D.38221,
	beq	.L27	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L27	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #0	@ <variable>.s32IsRun,
	beq	.L27	@,
	ldr	ip, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L27	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	bxne	lr	@
	b	.L27	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
.LFB1984:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	ip, [ip, #100]	@ D.38463, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r4, r0	@ FrmNum, FrmNum
	mov	r5, r3	@ s32ChanPmvSize, s32ChanPmvSize
	cmp	ip, #0	@ D.38463,
	mvneq	r0, #0	@ iftmp.630,
	beq	.L33	@,
	mov	r0, r1	@, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.38463
.L33:
	mul	r4, r4, r0	@ tmp140, FrmNum, iftmp.630
	str	r4, [r5, #0]	@ tmp140,* s32ChanPmvSize
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_GetChanPmvSize, .-VCTRL_GetChanPmvSize
	.align	2
	.global	VCTRL_GetChanMemSizeByResolution
	.type	VCTRL_GetChanMemSizeByResolution, %function
VCTRL_GetChanMemSizeByResolution:
	.fnstart
.LFB1986:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp141,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp141,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	ip, [ip, #36]	@ D.38579, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	.pad #444
	sub	sp, sp, #444	@,,
	mov	r5, r2	@ VdmMemSize, VdmMemSize
	cmp	ip, #0	@ D.38579,
	mov	r4, r3	@ ScdMemSize, ScdMemSize
	beq	.L36	@,
	mov	r2, r0	@, MaxWidth
	mov	r3, r1	@, MaxHeight
	mov	lr, #6	@ tmp142,
	mov	r0, #16	@ tmp143,
	str	lr, [sp, #0]	@ tmp142,
	mov	r1, #0	@ tmp144,
	str	r0, [sp, #4]	@ tmp143,
	mvn	lr, #0	@ tmp145,
	str	r1, [sp, #8]	@ tmp144,
	add	r0, sp, #24	@ tmp147,,
	mov	r1, #64	@ tmp148,
	str	r0, [sp, #16]	@ tmp147,
	str	r1, [sp, #20]	@ tmp148,
	mov	r0, #1	@,
	str	lr, [sp, #12]	@ tmp145,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.38579
	cmp	r0, #0	@ ret
	bne	.L36	@,
	ldr	r2, [sp, #28]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r3, #2129920	@ tmp150,
	str	r2, [r5, #0]	@ MemArrange.TotalMemUsed,* VdmMemSize
	str	r3, [r4, #0]	@ tmp150,* ScdMemSize
	str	r2, [r5, #4]	@ MemArrange.TotalMemUsed,
	str	r3, [r4, #4]	@ tmp150,
	str	r2, [r5, #8]	@ MemArrange.TotalMemUsed,
	str	r3, [r4, #8]	@ tmp150,
.L37:
	add	sp, sp, #444	@,,
	ldmfd	sp!, {r4, r5, pc}
.L36:
	mvn	r0, #0	@ D.38592,
	b	.L37	@
	.fnend
	.size	VCTRL_GetChanMemSizeByResolution, .-VCTRL_GetChanMemSizeByResolution
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
.LFB1992:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.39069, s_pstVfmwChan
	cmp	r3, #0	@ D.39069,
	beq	.L40	@,
	add	r2, r3, #217088	@ tmp138, D.39069,
	add	r1, r2, #432	@ tmp138, tmp138,
	cmp	r1, r0	@ tmp138, pCtx
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L40:
	mvn	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
.LFB1993:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.39085, s_pstVfmwChan
	cmp	r3, #0	@ D.39085,
	beq	.L44	@,
	ldr	r2, [r3, #176]	@ D.39088, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.39088
	bge	.L45	@,
.L47:
	ldr	r2, [r3, #192]	@ D.39096, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.39096
	blt	.L44	@,
	ldr	r1, [r3, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r2, r2, r1	@ tmp140, D.39096, <variable>.stChanMem_scd.Length
	cmp	r0, r2	@ PhyAddr, tmp140
	blt	.L46	@,
.L44:
	mvn	r0, #0	@ i,
	bx	lr	@
.L45:
	ldr	r1, [r3, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	ip, r2, r1	@ tmp142, D.39088, <variable>.stChanMem_vdh.Length
	cmp	r0, ip	@ PhyAddr, tmp142
	bge	.L47	@,
.L46:
	mov	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
.LFB1995:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.39261, s_pstVfmwChan
	cmp	r0, #0	@ D.39261,
	beq	.L51	@,
	ldr	r1, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L51	@
.L56:
	.word	.L55
	.word	.L51
	.word	.L53
	.word	.L54
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L51
	.word	.L55
.L55:
	add	ip, r0, #217088	@ pstVoQue, D.39261,
	add	r0, ip, #440	@ pstVoQue, pstVoQue,
	bx	lr	@
.L51:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L54:
	add	r0, r0, #290816	@ pstVoQue, D.39261,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L53:
	add	r2, r0, #239616	@ pstVoQue, D.39261,
	add	r0, r2, #512	@ pstVoQue, pstVoQue,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_GetDSDFlag
	.type	VCTRL_GetDSDFlag, %function
VCTRL_GetDSDFlag:
	.fnstart
.LFB1997:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	VCTRL_GetDSDFlag, .-VCTRL_GetDSDFlag
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB2010:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #19	@,
	bx	lr	@
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB2014:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r3, #4]	@ g_event_report.733, g_event_report
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ g_event_report.733,
	beq	.L65	@,
	add	r2, sp, #8	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.733
.L65:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB2020:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L67	@
.L75:
	.word	.L68
	.word	.L69
	.word	.L70
	.word	.L71
	.word	.L72
	.word	.L73
	.word	.L74
.L74:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L67:
	bl	vfmw_dprint_nothing	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L68:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L69:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L70:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L71:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L72:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L73:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.align	2
	.global	VDEC_SETDNR_ENABLE
	.type	VDEC_SETDNR_ENABLE, %function
VDEC_SETDNR_ENABLE:
	.fnstart
.LFB2016:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	mov	r6, r1	@ enable, enable
	bne	.L90	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L90	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r4	@ D.39689, ChanID
	str	r6, [r1, #1604]	@ enable, <variable>.stSynExtraData.s32DnrEnable
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L90:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39689,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDEC_SETDNR_ENABLE, .-VDEC_SETDNR_ENABLE
	.align	2
	.global	VDEC_GETDNR_ENABLE
	.type	VDEC_GETDNR_ENABLE, %function
VDEC_GETDNR_ENABLE:
	.fnstart
.LFB2015:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	mov	r6, r1	@ enable, enable
	bne	.L96	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L96	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r4	@ D.39677, ChanID
	ldr	r1, [r2, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	str	r1, [r6, #0]	@ <variable>.stSynExtraData.s32DnrEnable,* enable
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L96:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39677,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDEC_GETDNR_ENABLE, .-VDEC_GETDNR_ENABLE
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
.LFB2012:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L101	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r0, #0]	@ D.39612, s_pstVfmwChan
	cmp	r3, #0	@ D.39612,
	strne	r1, [r3, #676]	@ Value, <variable>.s32LastFrameIdPlus2
	bx	lr	@
.L101:
	b	vfmw_dprint_nothing	@
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
.LFB2011:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L107	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, #0]	@ D.39602, s_pstVfmwChan
	cmp	r3, #0	@ D.39602,
	mvneq	r0, #0	@ D.39600,
	ldrne	r0, [r3, #676]	@ D.39600, <variable>.s32LastFrameIdPlus2
	ldmfd	sp!, {r3, pc}	@
.L107:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39600,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB2003:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #4992	@ tmp138, new_extra_ref,
	add	r3, r4, #8	@ tmp138, tmp138,
	movw	r2, #10000	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp156,
	cmp	r3, r2	@ tmp138, tmp140
	movt	r4, #:upper16:.LANCHOR0	@ tmp156,
	mov	r5, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r4, #8]	@ new_extra_ref, extra_ref
	bhi	.L112	@,
.L109:
	add	r2, r5, #4992	@ tmp147, new_extra_disp,
	movw	ip, #5000	@ tmp142,
	add	r1, r2, #8	@ tmp147, tmp147,
	cmp	r0, ip	@ new_extra_ref, tmp142
	movge	r0, ip	@ iftmp.682, tmp142
	movw	r6, #:lower16:-5000	@ tmp144,
	movt	r6, #:upper16:-5000	@ tmp144,
	cmp	r0, r6	@ iftmp.682, tmp144
	strge	r0, [r4, #8]	@, iftmp.682, extra_ref
	strlt	r6, [r4, #8]	@, tmp144, extra_ref
	movw	r0, #10000	@ tmp149,
	cmp	r1, r0	@ tmp147, tmp149
	movw	r6, #:lower16:.LANCHOR0	@ tmp143,
	str	r5, [r4, #12]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp143,
	bhi	.L113	@,
.L110:
	movw	r0, #5000	@ tmp151,
	movw	r3, #:lower16:-5000	@ tmp153,
	cmp	r5, r0	@ new_extra_disp, tmp151
	movge	r5, r0	@ iftmp.1236, tmp151
	movt	r3, #:upper16:-5000	@ tmp153,
	cmp	r5, r3	@ iftmp.1236, tmp153
	strge	r5, [r4, #12]	@, iftmp.1236, extra_disp
	strlt	r3, [r4, #12]	@, tmp153, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L112:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #8]	@ new_extra_ref, extra_ref
	b	.L109	@
.L113:
	bl	vfmw_dprint_nothing	@
	ldr	r5, [r6, #12]	@ new_extra_disp, extra_disp
	b	.L110	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB2002:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L119	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, #0]	@ D.39378, s_pstVfmwChan
	cmp	r3, #0	@ D.39378,
	moveq	r0, #33	@ D.39376,
	ldrne	r0, [r3, #24]	@ D.39376, <variable>.eChanCapLevel
	ldmfd	sp!, {r3, pc}	@
.L119:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39376,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB2001:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L125	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.39368, s_pstVfmwChan
	cmp	r3, #0	@ D.39368,
	beq	.L125	@,
	ldr	r0, [r3, #1460]	@ D.39366, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r3, pc}	@
.L125:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39366,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB2000:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L131	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.39358, s_pstVfmwChan
	cmp	r3, #0	@ D.39358,
	beq	.L131	@,
	ldr	r0, [r3, #1456]	@ D.39356, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r3, pc}	@
.L131:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39356,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1990:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ CurMode, CurMode
	mov	r5, r1	@ StreamAmount, StreamAmount
	mov	r6, r2	@ Threshould, Threshould
	bl	vfmw_dprint_nothing	@
	cmp	r4, #3	@ CurMode,
	beq	.L138	@,
	cmp	r6, r5	@ Threshould, StreamAmount
	blt	.L139	@,
.L135:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, NextMode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L139:
	mov	r4, #3	@ NextMode,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, NextMode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L138:
	cmp	r6, #0	@ Threshould,
	add	r3, r6, #7	@ tmp140, Threshould,
	movlt	r6, r3	@ Threshould, tmp140
	cmp	r5, r6, asr #3	@ StreamAmount, Threshould,
	bge	.L135	@,
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ NextMode,
	b	.L135	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1987:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r0, #18	@ D.39892, eCapLevel,
	cmp	r3, #7	@ D.39892,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movwls	ip, #:lower16:.LANCHOR1	@ tmp196,
	mov	r7, r0, asl #3	@ tmp305, eCapLevel,
	movtls	ip, #:upper16:.LANCHOR1	@ tmp196,
	rsb	r5, r0, r7	@ tmp168, eCapLevel, tmp305
	movw	r4, #:lower16:CapItem	@ tmp304,
	ldrls	ip, [ip, r3, asl #2]	@ MinDnrFspNum, CSWTCH.744
	movt	r4, #:upper16:CapItem	@ tmp304,
	movw	r3, #:lower16:.LANCHOR0	@ tmp306,
	movt	r3, #:upper16:.LANCHOR0	@ tmp306,
	mov	r6, r0	@ eCapLevel, eCapLevel
	add	r0, r4, r5, asl #2	@, tmp170, tmp304, tmp168,
	ldr	r5, [r3, #8]	@ extra_ref, extra_ref
	movhi	ip, #6	@ MinDnrFspNum,
	ldr	r9, [r0, #12]	@ TempMinFrame, CapItem
	mov	sl, r1	@ VdmMemSize, VdmMemSize
	cmp	r5, #0	@ extra_ref,
	mov	r8, r2	@ ScdMemSize, ScdMemSize
	rsb	ip, ip, r9	@ s32MaxRefFrameNum, MinDnrFspNum, TempMinFrame
	ldr	r1, [r0, #8]	@ TempPmv, CapItem
	movlt	r5, #0	@ tmp200,
	strlt	r5, [r3, #8]	@ tmp200, extra_ref
	cmp	ip, #15	@ s32MaxRefFrameNum,
	ldr	r2, [r0, #16]	@ TempMiddleFrame, CapItem
	.pad #468
	sub	sp, sp, #468	@,,
	ldr	r0, [r0, #20]	@ TempFluentFrame, CapItem
	movgt	r5, #0	@ extra_ref_tmp,
	bgt	.L145	@,
	ldr	r5, [r3, #8]	@ extra_ref_tmp, extra_ref
	add	ip, ip, r5	@ D.38631, s32MaxRefFrameNum, extra_ref_tmp
	cmp	ip, #16	@ D.38631,
	addgt	r5, r5, #16	@ D.38634, extra_ref_tmp,
	rsbgt	r5, ip, r5	@ extra_ref_tmp, D.38631, D.38634
.L145:
	add	fp, r5, r1	@ TempPmv.1355, extra_ref_tmp, TempPmv
	ldr	r3, [r3, #12]	@ extra_disp.640, extra_disp
	cmp	fp, #0	@ TempPmv.1355,
	ble	.L161	@,
	cmp	fp, #17	@ TempPmv.1355,
	movge	fp, #17	@ nPmv,
.L147:
	cmp	r6, #23	@ eCapLevel,
	bhi	.L148	@,
	add	r5, r5, r3	@ D.38637, extra_ref_tmp, extra_disp.640
	add	r1, r5, r9	@ TempMinFrame.1352, D.38637, TempMinFrame
	add	ip, r5, r2	@ TempMiddleFrame.1353, D.38637, TempMiddleFrame
	cmp	r1, #0	@ TempMinFrame.1352,
	cmpgt	ip, #0	@, TempMiddleFrame.1353,
	ble	.L149	@,
	add	lr, r5, r0	@ TempFluentFrame.1354, D.38637, TempFluentFrame
	cmp	lr, #0	@ TempFluentFrame.1354,
	strgt	lr, [sp, #44]	@ TempFluentFrame.1354, %sfp
	strgt	ip, [sp, #40]	@ TempMiddleFrame.1353, %sfp
	movgt	r9, r1	@ nMinFrame, TempMinFrame.1352
	ble	.L149	@,
.L151:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp210,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp210,
	ldr	ip, [r5, #36]	@ D.38653, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38653,
	beq	.L156	@,
.L162:
	rsb	r7, r6, r7	@ tmp214, eCapLevel, tmp305
	str	r9, [sp, #4]	@ nMinFrame,
	add	r9, r7, #1	@ tmp222, tmp214,
	str	fp, [sp, #0]	@ nPmv,
	mov	lr, #0	@ tmp224,
	ldr	r2, [r4, r7, asl #2]	@ tmp217, CapItem
	ldr	r3, [r4, r9, asl #2]	@ tmp223, CapItem
	mvn	r0, #0	@,
	add	r6, sp, #48	@,,
	str	r0, [sp, #12]	@,
	str	r6, [sp, #16]	@,
	mov	r1, #64	@,
	str	lr, [sp, #8]	@ tmp224,
	mov	r0, #1	@,
	str	r1, [sp, #20]	@,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.38653
	movw	r6, #:lower16:CapItem	@ tmp211,
	add	r4, r4, r7, asl #2	@, tmp216, tmp304, tmp214,
	movt	r6, #:upper16:CapItem	@ tmp211,
	subs	r3, r0, #0	@ ret,
	bne	.L156	@,
	ldr	r0, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r1, r0, #16	@ tmp230, MemArrange.TotalMemUsed,
	str	r1, [sl, #0]	@ tmp230,* VdmMemSize
	ldr	ip, [r4, #24]	@ tmp239, CapItem
	add	r2, ip, #32768	@ tmp240, tmp239,
	str	r2, [r8, #0]	@ tmp240,* ScdMemSize
	ldr	ip, [r5, #36]	@ temp.1356, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1356,
	beq	.L156	@,
	ldr	lr, [r6, r9, asl #2]	@ tmp254, CapItem
	mov	r0, #1	@,
	ldr	r2, [sp, #40]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	mov	r3, lr	@, tmp254
	mvn	lr, #0	@,
	str	r2, [sp, #4]	@,
	ldr	r2, [r6, r7, asl #2]	@, CapItem
	str	lr, [sp, #12]	@,
	add	lr, sp, #48	@,,
	str	fp, [sp, #0]	@ nPmv,
	str	lr, [sp, #16]	@,
	mov	lr, #64	@,
	str	lr, [sp, #20]	@,
	blx	ip	@ temp.1356
	subs	lr, r0, #0	@ ret.1359,
	bne	.L156	@,
	ldr	r0, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r1, r0, #16	@ tmp261, MemArrange.TotalMemUsed,
	str	r1, [sl, #4]	@ tmp261,
	ldr	ip, [r4, #24]	@ tmp270, CapItem
	add	r3, ip, #32768	@ tmp271, tmp270,
	str	r3, [r8, #4]	@ tmp271,
	ldr	ip, [r5, #36]	@ temp.1364, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1364,
	beq	.L158	@,
	ldr	r5, [sp, #44]	@, %sfp
	mov	r0, #1	@,
	ldr	r3, [r6, r9, asl #2]	@ tmp285, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r6, r7, asl #2]	@ tmp279, CapItem
	str	r5, [sp, #4]	@,
	mvn	r5, #0	@,
	str	lr, [sp, #8]	@ ret.1359,
	mov	lr, #64	@,
	str	r5, [sp, #12]	@,
	add	r5, sp, #48	@,,
	str	fp, [sp, #0]	@ nPmv,
	str	r5, [sp, #16]	@,
	str	lr, [sp, #20]	@,
	blx	ip	@ temp.1364
	cmp	r0, #0	@ ret.1367
	bne	.L158	@,
	ldr	r1, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	ip, r1, #16	@ tmp292, MemArrange.TotalMemUsed,
	str	ip, [sl, #8]	@ tmp292,
	ldr	r3, [r4, #24]	@ tmp301, CapItem
	add	r2, r3, #32768	@ tmp302, tmp301,
	str	r2, [r8, #8]	@ tmp302,
	b	.L153	@
.L148:
	cmp	r6, #32	@ eCapLevel,
	bls	.L152	@,
.L160:
	mvn	r0, #0	@ D.38667,
.L153:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L149:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp210,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp210,
	str	r0, [sp, #44]	@ TempFluentFrame, %sfp
	str	r2, [sp, #40]	@ TempMiddleFrame, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #36]	@ D.38653, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38653,
	bne	.L162	@,
.L156:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38667,
	b	.L153	@
.L152:
	str	r0, [sp, #44]	@ TempFluentFrame, %sfp
	str	r2, [sp, #40]	@ TempMiddleFrame, %sfp
	b	.L151	@
.L161:
	str	r0, [sp, #36]	@,
	cmp	r1, #17	@ TempPmv,
	movlt	fp, r1	@ nPmv, TempPmv
	movge	fp, #17	@ nPmv,
	str	r2, [sp, #32]	@,
	str	r3, [sp, #28]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #36]	@,
	ldr	r2, [sp, #32]	@,
	ldr	r3, [sp, #28]	@,
	b	.L147	@
.L158:
	bl	vfmw_dprint_nothing	@
	b	.L160	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1985:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r3, #2	@ flag,
	.pad #448
	sub	sp, sp, #448	@,,
	mov	r6, r3	@ flag, flag
	mov	r7, r0	@ eCapLevel, eCapLevel
	mov	r3, #0	@ tmp152,
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	str	r3, [sp, #444]	@ tmp152, s32ChanPmvSize
	beq	.L164	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r2, [r4, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	ldr	r8, [r3, #12]	@ extra_disp, extra_disp
	ldr	r1, [r1, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	ldr	ip, [r3, #8]	@ extra_ref, extra_ref
	add	r8, r8, r2	@ TempDispNum, extra_disp, <variable>.s32DisplayFrameNum
	add	r3, ip, r1	@ TempRefNum, extra_ref, <variable>.s32MaxRefFrameNum
	orrs	r2, r8, r3	@, TempDispNum, TempRefNum
	bmi	.L178	@,
	cmp	r3, #16	@ TempRefNum,
	strle	r3, [r4, #32]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	strle	r8, [r4, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bgt	.L182	@,
.L168:
	rsbs	r6, r6, #1	@ tmp175, flag
	movcc	r6, #0	@ tmp175
	cmp	r7, #25	@ eCapLevel,
	moveq	r6, #0	@, tmp175,
	cmp	r6, #0	@ tmp175,
	bne	.L178	@,
.L164:
	ldr	r3, [r4, #4]	@ D.38504, <variable>.Purpose
	cmp	r3, #2	@ D.38504,
	bhi	.L178	@,
	bne	.L170	@,
	ldr	r3, [r4, #64]	@ D.38511, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.38511,
	beq	.L178	@,
	ldr	r2, [r4, #68]	@ D.38513, <variable>.s32SlotHeight
	cmp	r2, #0	@ D.38513,
	beq	.L178	@,
	mul	r2, r2, r3	@ tmp176, D.38513, D.38511
	ldr	r1, [r4, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r0, #0	@ tmp181,
	movw	r3, #:lower16:499120	@ tmp182,
	str	r0, [r5, #12]	@ tmp181, <variable>.PmvDetailMem
	movt	r3, #:upper16:499120	@ tmp182,
	stmib	r5, {r0, r3}	@ phole stm
	mov	ip, r2, asl #1	@ tmp177, tmp176,
	mla	r2, r1, ip, ip	@ tmp180, <variable>.s32DisplayFrameNum, tmp177, tmp177
	str	r2, [r5, #0]	@ tmp180, <variable>.VdhDetailMem
.L166:
	add	sp, sp, #448	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L182:
	bl	vfmw_dprint_nothing	@
	mov	r0, #16	@ tmp168,
	str	r8, [r4, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	str	r0, [r4, #32]	@ tmp168, <variable>.s32MaxRefFrameNum
	b	.L168	@
.L183:
	ldr	r3, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r3, #0	@ <variable>.s32MaxSliceNum,
	ble	.L178	@,
	ldr	lr, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	lr, #0	@ <variable>.s32MaxSpsNum,
	ble	.L178	@,
	ldr	ip, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L175	@,
.L178:
	bl	vfmw_dprint_nothing	@
.L181:
	mvn	r0, #0	@ D.38495,
	b	.L166	@
.L170:
	cmp	r3, #1	@ D.38504,
	bne	.L181	@,
	ldr	r6, [r4, #32]	@ temp.1398, <variable>.s32MaxRefFrameNum
	cmp	r6, #0	@ temp.1398,
	blt	.L178	@,
	ldr	r1, [r4, #12]	@ D.38524, <variable>.s32MaxWidth
	cmp	r1, #31	@ D.38524,
	ble	.L178	@,
	ldr	r2, [r4, #16]	@ D.38526, <variable>.s32MaxHeight
	cmp	r2, #31	@ D.38526,
	ble	.L178	@,
	ldr	lr, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	lr, #262144	@ <variable>.s32SCDBufSize,
	blt	.L178	@,
	ldr	ip, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	ip, #1	@ <variable>.s32SupportH264,
	beq	.L183	@,
.L175:
	ldr	r7, [r4, #40]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r7, #0	@ <variable>.s32SupportBFrame,
	addeq	r0, r6, #1	@ PmvNum.1399, temp.1398,
	moveq	r8, #1	@ PmvNum,
	beq	.L177	@,
	add	r0, r6, #1	@ PmvNum.1399, temp.1398,
	cmp	r0, #17	@ PmvNum.1399,
	movlt	r8, r0	@ PmvNum, PmvNum.1399
	movge	r8, #17	@ PmvNum,
.L177:
	add	r3, sp, #444	@,,
	ldr	r7, [r4, #60]	@ temp.1400, <variable>.s32DisplayFrameNum
	bl	VCTRL_GetChanPmvSize	@
	ldr	r1, [sp, #444]	@ s32ChanPmvSize, s32ChanPmvSize
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp193,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp193,
	str	r1, [r5, #12]	@ s32ChanPmvSize, <variable>.PmvDetailMem
	ldr	ip, [r0, #36]	@ D.38544, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38544,
	beq	.L178	@,
	ldr	r2, [r4, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp197,
	ldr	r3, [r4, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r1, #0	@ tmp198,
	str	lr, [sp, #8]	@ tmp197,
	add	r0, sp, #28	@ tmp200,,
	str	r1, [sp, #12]	@ tmp198,
	mov	lr, #64	@ tmp201,
	str	r0, [sp, #16]	@ tmp200,
	add	r6, r7, r6	@ tmp196, temp.1400, temp.1398
	str	r8, [sp, #0]	@ PmvNum,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ tmp196,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp201,
	blx	ip	@ D.38544
	cmp	r0, #0	@ ret
	bne	.L178	@,
	ldr	r1, [sp, #32]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	ip, r1, #16	@ tmp203, MemArrange.TotalMemUsed,
	str	ip, [r5, #0]	@ tmp203, <variable>.VdhDetailMem
	ldr	r3, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	r2, r3, #32768	@ tmp205, <variable>.s32SCDBufSize,
	str	r2, [r5, #4]	@ tmp205, <variable>.ScdDetailMem
	ldr	r3, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	bne	.L179	@,
	movw	lr, #:lower16:499120	@ tmp207,
	mov	r0, r3	@ D.38495, <variable>.s32SupportH264
	movt	lr, #:upper16:499120	@ tmp207,
	str	lr, [r5, #8]	@ tmp207, <variable>.ChanCtxDetailMem
	b	.L166	@
.L179:
	ldr	r3, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	mov	ip, #4000	@ tmp213,
	ldr	lr, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	ldr	r2, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	mul	r1, ip, r3	@ tmp211, tmp213, <variable>.s32MaxSpsNum
	movw	ip, #4060	@ tmp210,
	mla	r3, ip, lr, r1	@ tmp214, tmp210, <variable>.s32MaxSliceNum, tmp211
	mov	r1, #2208	@ tmp219,
	add	lr, r3, #495616	@ tmp215, tmp214,
	add	ip, lr, #3504	@ tmp215, tmp215,
	mla	r3, r1, r2, ip	@ tmp220, tmp219, <variable>.s32MaxPpsNum, tmp215
	str	r3, [r5, #8]	@ tmp220, <variable>.ChanCtxDetailMem
	b	.L166	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
.LFB1973:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L190	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #0]	@ D.38152, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L190	@,
	cmp	r1, #0	@ pArgs,
	beq	.L190	@,
	ldr	ip, [r1, #0]	@ tmp140,* pArgs
	str	ip, [r3, #1408]	@ tmp140, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L190:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38150,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
.LFB1969:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanId
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L197	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.38051, s_pstVfmwChan
	cmp	r3, #0	@ D.38051,
	beq	.L197	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L198	@,
.L195:
	mvn	r0, #0	@ D.38049,
	ldmfd	sp!, {r3, pc}	@
.L197:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38049,
	ldmfd	sp!, {r3, pc}	@
.L198:
	ldr	r2, [r3, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L195	@,
	add	r2, r3, #156
	ldmia	r2, {r2, r3, ip}	@ phole ldm
	cmp	r2, #0	@ D.38063,
	stmib	r1, {r2, r3, ip}	@ phole stm
	ldmnefd	sp!, {r3, pc}	@
	b	.L195	@
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
.LFB1966:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanId,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L205	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.37977, s_pstVfmwChan
	cmp	r3, #0	@ D.37977,
	beq	.L205	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L203	@,
.L205:
	bl	vfmw_dprint_nothing	@
	mov	r0, #19	@ D.37978,
	ldmfd	sp!, {r3, pc}	@
.L203:
	ldr	r0, [r3, #880]	@ D.37978, <variable>.eVidStd
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
.LFB1957:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:g_chipID	@ tmp142,
	movt	r2, #:upper16:g_chipID	@ tmp142,
	movw	ip, #:lower16:.LANCHOR0	@ tmp141,
	movt	ip, #:upper16:.LANCHOR0	@ tmp141,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r2, [r2, #0]	@ g_chipID, g_chipID
	ldr	r3, [ip, r0, asl #2]	@ D.37552, s_pstVfmwChan
	cmp	r2, #16	@ g_chipID,
	ldr	ip, [r3, #1460]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r0, [r3, #1456]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bls	.L216	@,
.L207:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L216:
	mov	r4, #1	@ tmp145,
	movw	r3, #:lower16:102368	@ tmp147,
	mov	r2, r4, asl r2	@ tmp144, tmp145,
	movt	r3, #:upper16:102368	@ tmp147,
	and	r3, r2, r3	@ tmp147, tmp144, tmp147
	cmp	r3, #0	@ tmp147,
	beq	.L217	@,
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp155,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp155,
	ldr	r3, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r0, r3	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L218	@,
	ldr	r3, [r1, #0]	@ D.37565, <variable>.eVidStd
	cmp	r3, #13	@ D.37565,
	cmpne	r3, #0	@, D.37565,
	beq	.L211	@,
.L220:
	cmp	r3, #15	@ D.37565,
	beq	.L211	@,
	cmp	r3, #18	@ D.37565,
	bne	.L207	@,
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L217:
	tst	r2, #31	@ tmp144,
	beq	.L207	@,
	movw	r3, #:lower16:g_ChipMaxWidth	@ tmp150,
	movt	r3, #:upper16:g_ChipMaxWidth	@ tmp150,
	ldr	r2, [r3, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r0, r2	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L219	@,
.L210:
	ldr	ip, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #18	@ <variable>.eVidStd,
	bne	.L207	@,
.L211:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L219:
	movw	r2, #:lower16:g_ChipMaxHeight	@ tmp152,
	movt	r2, #:upper16:g_ChipMaxHeight	@ tmp152,
	ldr	r0, [r2, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	ip, r0	@ ChanMaxHeight, g_ChipMaxHeight
	bgt	.L210	@,
	b	.L211	@
.L218:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp157,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp157,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	ip, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L211	@,
	ldr	r3, [r1, #0]	@ D.37565, <variable>.eVidStd
	cmp	r3, #13	@ D.37565,
	cmpne	r3, #0	@, D.37565,
	bne	.L220	@,
	b	.L211	@
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
.LFB1955:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp163,
	movt	r4, #:upper16:.LANCHOR0	@ tmp163,
	mov	r2, #0	@ tmp147,
	mov	r5, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.37434, s_pstVfmwChan
	ldr	ip, [r3, #1624]	@ eOldDecCore, <variable>.eDecCore
	str	r2, [r3, #1624]	@ tmp147, <variable>.eDecCore
	ldr	r0, [r4, r0, asl #2]	@ prephitmp.1518, s_pstVfmwChan
	ldr	r2, [r0, #1624]	@ prephitmp.1520, <variable>.eDecCore
	cmp	r2, ip	@ prephitmp.1520, eOldDecCore
	beq	.L222	@,
	sub	ip, ip, #1	@ tmp149, eOldDecCore,
	cmp	ip, #4	@ tmp149,
	bhi	.L223	@,
	ldr	r3, [r4, #20]	@ D.37443, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37443,
	beq	.L223	@,
	add	r0, r0, #217088	@, prephitmp.1518,
	str	r1, [sp, #4]	@,
	add	r0, r0, #432	@,,
	blx	r3	@ D.37443
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.1518, s_pstVfmwChan
	ldr	r1, [sp, #4]	@,
	ldr	r2, [r0, #1624]	@ prephitmp.1520, <variable>.eDecCore
.L223:
	sub	r2, r2, #1	@ tmp154, prephitmp.1520,
	cmp	r2, #4	@ tmp154,
	bhi	.L222	@,
	ldr	r3, [r0, #24]	@ <variable>.eChanCapLevel, <variable>.eChanCapLevel
	movw	lr, #:lower16:217532	@ tmp155,
	movt	lr, #:upper16:217532	@ tmp155,
	movw	r2, #:lower16:.LANCHOR0	@ tmp157,
	movt	r2, #:upper16:.LANCHOR0	@ tmp157,
	str	r3, [r0, lr]	@ <variable>.eChanCapLevel, <variable>.stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	ldr	r3, [r4, #16]	@ D.37455, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.37455,
	beq	.L224	@,
	ldr	ip, [r2, r5, asl #2]	@ temp.1531, s_pstVfmwChan
	add	r0, ip, #217088	@, temp.1531,
	add	r0, r0, #432	@,,
	ldr	r2, [ip, #880]	@, <variable>.eVidStd
	blx	r3	@ D.37455
	cmp	r0, #0	@,
	bne	.L224	@,
.L222:
	mov	r0, #0	@ D.37458,
.L225:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L224:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37458,
	b	.L225	@
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.global	VCTRL_SetCallBack
	.type	VCTRL_SetCallBack, %function
VCTRL_SetCallBack:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ event_report
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L235	@,
	cmp	r0, #0	@ eType,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp137,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp137,
	streq	r1, [r3, #188]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #1	@ eType,
	beq	.L236	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36434,
	ldmfd	sp!, {r3, pc}	@
.L236:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	mov	r0, #0	@ D.36434,
	str	r1, [r3, #192]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r3, pc}	@
.L235:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36434,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SetCallBack, .-VCTRL_SetCallBack
	.align	2
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	ip, [r3, r0, asl #2]	@ tmp139, s_pstVfmwChan
	ldr	ip, [ip, #20]	@ <variable>.eAdapterType, <variable>.eAdapterType
	cmp	ip, #0	@ <variable>.eAdapterType,
	bne	.L244	@,
	ldr	r3, [r3, #188]	@ s_VfmwCTrl.event_report_vdec, s_VfmwCTrl.event_report_vdec
	blx	r3	@ s_VfmwCTrl.event_report_vdec
	ldmfd	sp!, {r3, pc}	@
.L244:
	cmp	ip, #1	@ <variable>.eAdapterType,
	beq	.L245	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36416,
	ldmfd	sp!, {r3, pc}	@
.L245:
	ldr	ip, [r3, #192]	@ s_VfmwCTrl.event_report_omxvdec, s_VfmwCTrl.event_report_omxvdec
	blx	ip	@ s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r3, [r0, #0]	@ <variable>.pfun_iMediaSoftDEC_Create, <variable>.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Create,
	beq	.L257	@,
	ldr	r1, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r1, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L257	@,
	ldr	r2, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r2, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L257	@,
	ldr	r5, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r5, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L257	@,
	ldr	ip, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	ip, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L257	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L257	@,
	ldr	r1, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r1, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L257	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L258	@ tmp144,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.36164,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp144,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp147,,,
.L248:
	mov	r0, r5	@, D.36164
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L257:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #0	@ D.36164,
	b	.L248	@
.L259:
	.align	2
.L258:
	.word	.LANCHOR0+16
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB2013:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp163,
	movt	r5, #:upper16:.LANCHOR0	@ tmp163,
	mov	r6, r0	@ ChanId, ChanId
	movw	r3, #:lower16:217512	@ tmp140,
	movt	r3, #:upper16:217512	@ tmp140,
	ldr	r0, [r5, r0, asl #2]	@ D.39646, s_pstVfmwChan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, r3]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #2	@ <variable>.stSynCtx.eVidStd,
	beq	.L263	@,
	cmp	r3, #3	@ <variable>.stSynCtx.eVidStd,
	beq	.L264	@,
	cmp	r3, #0	@ <variable>.stSynCtx.eVidStd,
	mvnne	r4, #0	@ ret,
	beq	.L273	@,
.L265:
	add	ip, r4, #1	@ tmp148, ret,
	cmp	ip, #1	@ tmp148,
	bhi	.L266	@,
	ldr	r3, [r5, #4]	@ g_event_report.730, g_event_report
	cmp	r3, #0	@ g_event_report.730,
	beq	.L268	@,
	add	r2, sp, #8	@ tmp151,,
	mov	lr, #1	@ tmp150,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	lr, [r2, #-4]!	@ tmp150, para
	blx	r3	@ g_event_report.730
.L268:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L266:
	movw	r3, #:lower16:g_chipID	@ tmp152,
	movt	r3, #:upper16:g_chipID	@ tmp152,
	ldr	r3, [r3, #0]	@ g_chipID, g_chipID
	cmp	r3, #16	@ g_chipID,
	bhi	.L268	@,
	mov	r0, #1	@ tmp155,
	mov	r3, r0, asl r3	@ tmp154, tmp155,
	tst	r3, #3904	@ tmp154,
	beq	.L274	@,
	ldr	r3, [r5, #4]	@ g_event_report.1625, g_event_report
	cmp	r3, #0	@ g_event_report.1625,
	beq	.L271	@,
	add	r2, sp, #8	@ tmp161,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.1625
.L271:
	bl	vfmw_dprint_nothing	@
	b	.L268	@
.L273:
	add	r2, r0, #217088	@, D.39646,
	add	r0, r2, #432	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L265	@
.L264:
	add	r0, r0, #217088	@, D.39646,
	add	r0, r0, #432	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L265	@
.L263:
	add	r1, r0, #217088	@, D.39646,
	add	r0, r1, #432	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L265	@
.L274:
	movw	r2, #:lower16:98367	@ tmp158,
	movt	r2, #:upper16:98367	@ tmp158,
	and	r1, r3, r2	@ tmp158, tmp154, tmp158
	cmp	r1, #0	@ tmp158,
	beq	.L268	@,
	mov	r0, r6	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_SetLastFrameIdPlus2	@
	bl	vfmw_dprint_nothing	@
	b	.L268	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
.LFB2006:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r3	@ Height, Height
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r3, r2, asl #1	@ tmp186, Width,
	mov	r9, r2	@ Width, Width
	mov	r2, #0	@,
	str	r1, [sp, #12]	@ ChromOfst, %sfp
	mul	r1, r6, r3	@, Height, tmp186
	ldr	sl, [sp, #56]	@ Stride, Stride
	ldr	r8, [sp, #60]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r7, r0, #0	@ pFrameStore,
	beq	.L286	@,
	mul	r4, r9, r6	@ D.39466, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp189, D.39466, D.39466,
	mov	r1, r0, asr #1	@, tmp189,
	str	r1, [sp, #8]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [sp, #4]	@, %sfp
	beq	.L277	@,
	cmp	r6, #0	@ Height,
	ble	.L278	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39466
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp213, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	fp, r5, #1	@ tmp215, tmp213,
	mov	r5, #1	@ y,
	ble	.L278	@,
	cmp	fp, #0	@ tmp215,
	beq	.L279	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39466
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L278	@,
.L279:
	mov	r1, r4	@, D.39466
	mov	r2, r8	@, fp
	add	fp, r5, #1	@ tmp216, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, fp, #1	@ y, tmp216,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39466
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L279	@,
.L278:
	add	r6, r6, r6, lsr #31	@, tmp193, Height, Height,
	mov	fp, r6, asr #1	@ D.39481, tmp193,
	cmp	fp, #0	@ D.39481,
	ble	.L280	@,
	add	r2, r4, #3	@ tmp197, D.39466,
	cmp	r4, #0	@ D.39466,
	ldr	r5, [sp, #4]	@ pU, %sfp
	add	r9, r9, r9, lsr #31	@, tmp200, Width, Width,
	movlt	r4, r2	@ D.39466, tmp197
	ldr	r6, [sp, #12]	@, %sfp
	add	lr, r5, r4, asr #2	@, pV, pU, D.39466,
	add	r2, r7, r6	@ pChrom, pFrameStore,
	mov	r6, r9, asr #1	@ pretmp.1643, tmp200,
	mov	r9, #0	@ y.1677,
.L281:
	cmp	r6, #0	@ pretmp.1643,
	ble	.L284	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp202,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.1643
	sub	ip, r6, #1	@ tmp208, pretmp.1643,
	and	ip, ip, r3	@ tmp210, tmp208,
	mov	r0, #2	@ ivtmp.1659,
	strb	r1, [r5, #0]	@ tmp202,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp204,
	strb	r1, [lr, #0]	@ tmp204,* pV
	beq	.L299	@,
	cmp	ip, #0	@ tmp210,
	beq	.L282	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp227,* x
	cmp	r0, r6	@ x, pretmp.1643
	strb	ip, [r5, r3]	@ tmp227,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp228,* ivtmp.1659
	strb	r1, [lr, r3]	@ tmp228,* x
	mov	r3, r0	@ x, ivtmp.1659
	mov	r0, #3	@ ivtmp.1659,
	beq	.L299	@,
.L282:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp221,* x
	add	r1, r3, #1	@ tmp211, x,
	add	ip, r0, #1	@ tmp212, ivtmp.1659,
	strb	r4, [r5, r3]	@ tmp221,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp222,* ivtmp.1659
	add	r0, ip, #1	@ ivtmp.1659, tmp212,
	strb	r4, [lr, r3]	@ tmp222,* x
	add	r3, r1, #1	@ x, tmp211,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp225,
	cmp	r3, r6	@ x, pretmp.1643
	strb	r4, [r5, r1]	@ tmp225,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp226,
	strb	ip, [lr, r1]	@ tmp226,
	bne	.L282	@,
.L299:
	add	r5, r5, r6	@ pU, pU, pretmp.1643
	add	lr, lr, r6	@ pV, pV, pretmp.1643
.L284:
	add	r9, r9, #1	@ y.1677, y.1677,
	cmp	r9, fp	@ y.1677, D.39481
	addne	r2, r2, sl	@ pChrom, pChrom, Stride
	bne	.L281	@
.L280:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L277:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r3, #0	@,
	beq	.L286	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_FreeVirMem	@
.L286:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB2005:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.39425, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.39425,
	beq	.L311	@,
	mov	r0, #0	@,
	blx	r3	@ D.39425
.L307:
	bl	SCDDRV_EnableInt	@
	movw	r0, #:lower16:g_dnr_hal_fun_ptr	@ tmp136,
	movt	r0, #:upper16:g_dnr_hal_fun_ptr	@ tmp136,
	ldr	r3, [r0, #28]	@ D.39429, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.39429,
	beq	.L308	@,
	blx	r3	@ D.39429
	ldmfd	sp!, {r4, pc}	@
.L308:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L311:
	bl	vfmw_dprint_nothing	@
	b	.L307	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
.LFB2004:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.39410, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.39410,
	beq	.L318	@,
	mov	r0, #0	@,
	blx	r3	@ D.39410
.L314:
	bl	SCDDRV_MaskInt	@
	movw	r0, #:lower16:g_dnr_hal_fun_ptr	@ tmp136,
	movt	r0, #:upper16:g_dnr_hal_fun_ptr	@ tmp136,
	ldr	r3, [r0, #24]	@ D.39414, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r3, #0	@ D.39414,
	beq	.L315	@,
	blx	r3	@ D.39414
	ldmfd	sp!, {r4, pc}	@
.L315:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L318:
	bl	vfmw_dprint_nothing	@
	b	.L314	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_RlsDSDFrame
	.type	VCTRL_RlsDSDFrame, %function
VCTRL_RlsDSDFrame:
	.fnstart
.LFB1999:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L342	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp173,
	movt	r4, #:upper16:.LANCHOR0	@ tmp173,
	ldr	r3, [r4, #0]	@ D.39338, s_pstVfmwChan
	cmp	r3, #0	@ D.39338,
	beq	.L342	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L342	@,
	cmp	r1, #0	@ pImage,
	beq	.L342	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #0]	@ temp.1766, s_pstVfmwChan
	cmp	r3, #0	@ temp.1766,
	beq	.L343	@,
	ldr	r0, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L343	@,
	add	r0, r4, #196	@, tmp173,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, #0]	@ D.40965, s_pstVfmwChan
	movw	r1, #:lower16:181770	@ tmp183,
	movt	r1, #:upper16:181770	@ tmp183,
	add	r5, r2, #216064	@ pDSDFrame, D.40965,
	ldrsb	r7, [r2, r1]	@ s32AllDecFrameNum, <variable>.FspInst.s32DecFsNum
	add	r5, r5, #360	@ pDSDFrame, pDSDFrame,
	cmp	r7, #0	@ s32AllDecFrameNum,
	ble	.L327	@,
	ldr	ip, [r5], #16	@ <variable>.eFrameState, <variable>.eFrameState
	sub	r4, r7, #1	@ tmp198, s32AllDecFrameNum,
	and	r4, r4, #1	@ tmp200, tmp198,
	cmp	ip, #1	@ <variable>.eFrameState,
	beq	.L344	@,
.L332:
	mov	r6, #1	@ i,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	add	r5, r5, #16	@ ivtmp.1750, ivtmp.1750,
	ble	.L327	@,
	cmp	r4, #0	@ tmp200,
	beq	.L329	@,
	ldr	r0, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, r6	@ <variable>.eFrameState,
	beq	.L345	@,
.L334:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #16	@ ivtmp.1750, ivtmp.1750,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L329	@,
	b	.L327	@
.L328:
	ldr	r3, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r3, #1	@ <variable>.eFrameState,
	beq	.L346	@,
.L337:
	add	r6, r6, #1	@ i, tmp201,
	add	r5, r4, #16	@ ivtmp.1750, tmp202,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	ble	.L327	@,
.L329:
	ldr	lr, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	mov	r4, r5	@ tmp202, ivtmp.1750
	add	r6, r6, #1	@ tmp201, i,
	cmp	lr, #1	@ <variable>.eFrameState,
	bne	.L328	@,
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	mov	r0, #0	@,
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	ldr	r3, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	r3, #1	@ <variable>.eFrameState,
	bne	.L337	@,
.L346:
	mov	r0, #0	@,
	ldr	r1, [r4, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r4, #-8]	@, <variable>.s32FrameSize
	add	r6, r6, #1	@ i, tmp201,
	bl	DNR_FsIsInImgQue	@
	add	r5, r4, #16	@ ivtmp.1750, tmp202,
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r4, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L329	@,
.L327:
	ldr	r0, .L347	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L344:
	mov	r0, r6	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L332	@
.L345:
	mov	r0, #0	@,
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L334	@
.L343:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L342:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L348:
	.align	2
.L347:
	.word	.LANCHOR0+196
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1996:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r1, r2	@ pReadImgNum, pReadImgNum
	ldr	r0, [r4, r0, asl #2]	@ D.39274, s_pstVfmwChan
	cmp	r0, #0	@ D.39274,
	beq	.L363	@,
	ldr	r2, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L351	@
.L356:
	.word	.L355
	.word	.L351
	.word	.L353
	.word	.L354
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L351
	.word	.L355
.L355:
	add	r2, r0, #217088	@ pstVoQue, D.39274,
	add	r0, r2, #440	@ pstVoQue, pstVoQue,
.L357:
	cmp	r0, #0	@ pstVoQue,
	beq	.L358	@,
	mov	r2, r3	@, pNewImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.1791, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ D.39280, <variable>.eVidStd
	cmp	r3, #0	@ D.39280,
	beq	.L364	@,
	cmp	r3, #15	@ D.39280,
	movne	r3, #2	@ tmp150,
	strne	r3, [r6, #0]	@ tmp150,* pRefImgNum
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L363:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L351:
	mov	r0, #0	@ pstVoQue,
.L358:
	str	r0, [r3, #0]	@ pstVoQue,* pNewImgNum
	str	r0, [r1, #0]	@ pstVoQue,* pReadImgNum
	str	r0, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L364:
	movw	r1, #:lower16:244144	@ tmp148,
	movt	r1, #:upper16:244144	@ tmp148,
	ldr	r3, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size, <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L353:
	add	ip, r0, #239616	@ pstVoQue, D.39274,
	add	r0, ip, #512	@ pstVoQue, pstVoQue,
	b	.L357	@
.L354:
	add	r0, r0, #290816	@ pstVoQue, D.39274,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	b	.L357	@
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
	.fnstart
.LFB1967:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanId
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bne	.L366	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r4, [r3, #0]	@ D.37996, s_pstVfmwChan
	cmp	r4, #0	@ D.37996,
	beq	.L366	@,
	ldr	r1, [r4, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	beq	.L376	@,
.L369:
	mov	r5, #0	@ pDecParam,
.L368:
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L366:
	mov	r5, #0	@ pDecParam,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L376:
	ldr	r2, [r4, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L369	@,
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #2	@ <variable>.eVidStd,
	beq	.L372	@,
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L373	@,
	cmp	r3, #0	@ <variable>.eVidStd,
	movne	r5, r0	@ pDecParam, ChanId
	bne	.L368	@,
	movw	r0, #:lower16:217880	@ tmp142,
	movt	r0, #:upper16:217880	@ tmp142,
	ldr	r5, [r4, r0]	@ pDecParam,
.L374:
	cmp	r5, #0	@ pDecParam,
	beq	.L368	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #28]	@, <variable>.u32timeLastDecParamReady
	b	.L368	@
.L372:
	movw	r3, #:lower16:218556	@ tmp144,
	movt	r3, #:upper16:218556	@ tmp144,
	ldr	r5, [r4, r3]	@ pDecParam,
	b	.L374	@
.L373:
	movw	ip, #:lower16:217524	@ tmp143,
	movt	ip, #:upper16:217524	@ tmp143,
	ldr	r5, [r4, ip]	@ pDecParam,
	b	.L374	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1968:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r5, r0, #0	@ ChanId, ChanId
	bne	.L381	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, #0]	@ D.38015, s_pstVfmwChan
	cmp	r3, #0	@ D.38015,
	beq	.L381	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L381	@,
	ldr	r6, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r6, #1	@ <variable>.s32IsRun,
	beq	.L382	@,
.L381:
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ D.38016,
.L380:
	mov	r0, r3	@, D.38016
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L382:
	bl	VCTRL_GetDecParam	@
	subs	r7, r0, #0	@ pDecParam,
	beq	.L388	@,
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r3, r5	@ D.38016, ChanId
	str	r5, [r1, #680]	@ ChanId, <variable>.s32CountNoDecparamFlag
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r0, #684]	@ ChanId, <variable>.u32NoDecparamStartTime
	b	.L380	@
.L388:
	ldr	r3, [r4, #0]	@ temp.1838, s_pstVfmwChan
	ldr	r5, [r3, #680]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r5, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L389	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #0]	@ temp.1842, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.38036, <variable>.u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.38036
	bls	.L385	@,
	rsb	ip, r2, r0	@ tmp158, D.38036, tmp
	cmp	ip, #40	@ tmp158,
	movls	r3, r7	@ D.38016, pDecParam
	bls	.L380	@,
.L385:
	str	r7, [r3, #680]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r3, r6	@ D.38016, <variable>.s32IsRun
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r7, [lr, #684]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L380	@
.L389:
	str	r6, [r3, #680]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, #0]	@ temp.1839, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r3, r5	@ D.38016, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #684]	@, <variable>.u32NoDecparamStartTime
	b	.L380	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:g_ChanCtx	@ tmp133,
	movt	r4, #:upper16:g_ChanCtx	@ tmp133,
	mov	r1, #12	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #4]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1989:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #12]	@ Length, <variable>.Length
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, [r0, #8]	@ PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r6, [r0, #4]	@ VirAddr, <variable>.VirAddr
	beq	.L393	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp154,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp154,
	ldr	r3, [r3, #32]	@ D.38928, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.38928,
	beq	.L394	@,
	mov	r0, #0	@,
	blx	r3	@ D.38928
.L395:
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #16	@,
	bl	__memzero	@
.L393:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length.1894, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #24]	@ PhyAddr.1892, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.1894,
	ldr	r6, [r4, #20]	@ VirAddr.1893, <variable>.stScdCmnMem.VirAddr
	bne	.L402	@,
.L396:
	mov	r0, r7	@, PhyAddr.1892
	mov	r1, r6	@, VirAddr.1893
	mov	r2, r5	@, Length.1894
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.1901, <variable>.Length
	ldr	r7, [r4, #40]	@ PhyAddr.1899, <variable>.PhyAddr
	cmp	r5, #0	@ Length.1901,
	ldr	r6, [r4, #36]	@ VirAddr.1900, <variable>.VirAddr
	bne	.L403	@,
.L397:
	mov	r0, r7	@, PhyAddr.1899
	mov	r1, r6	@, VirAddr.1900
	mov	r2, r5	@, Length.1901
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length.1906, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.1904, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.1906,
	ldr	r6, [r4, #68]	@ VirAddr.1905, <variable>.stBpdReg.VirAddr
	bne	.L404	@,
.L398:
	mov	r0, r7	@, PhyAddr.1904
	mov	r1, r6	@, VirAddr.1905
	mov	r2, r5	@, Length.1906
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length.1911, <variable>.Length
	ldr	r7, [r4, #56]	@ PhyAddr.1909, <variable>.PhyAddr
	cmp	r5, #0	@ Length.1911,
	ldr	r6, [r4, #52]	@ VirAddr.1910, <variable>.VirAddr
	bne	.L405	@,
.L399:
	mov	r0, r7	@, PhyAddr.1909
	mov	r1, r6	@, VirAddr.1910
	mov	r2, r5	@, Length.1911
	bl	MEM_DelMemRecord	@
	ldr	r7, [r4, #92]	@ Length.1916, <variable>.stSystemReg.Length
	ldr	r5, [r4, #88]	@ PhyAddr.1914, <variable>.stSystemReg.PhyAddr
	cmp	r7, #0	@ Length.1916,
	ldr	r6, [r4, #84]	@ VirAddr.1915, <variable>.stSystemReg.VirAddr
	beq	.L400	@,
	mov	r0, r5	@, PhyAddr.1914
	mov	r1, r6	@, VirAddr.1915
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L400:
	mov	r2, r7	@, Length.1916
	mov	r1, r6	@, VirAddr.1915
	mov	r0, r5	@, PhyAddr.1914
	bl	MEM_DelMemRecord	@
	mov	r0, #70	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #73	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #93	@,
	mov	r1, #0	@,
	bl	free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L405:
	mov	r0, r7	@, PhyAddr.1909
	mov	r1, r6	@, VirAddr.1910
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L399	@
.L404:
	mov	r0, r7	@, PhyAddr.1904
	mov	r1, r6	@, VirAddr.1905
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #64	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L398	@
.L403:
	mov	r0, r7	@, PhyAddr.1899
	mov	r1, r6	@, VirAddr.1900
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #32	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L397	@
.L402:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L396	@
.L394:
	bl	vfmw_dprint_nothing	@
	b	.L395	@
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1988:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #:lower16:__stack_chk_guard	@ tmp210,
	movt	r5, #:upper16:__stack_chk_guard	@ tmp210,
	add	r6, r0, #32	@ pstMem, pstDrvMem,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r3, [r5, #0]	@ __stack_chk_guard, __stack_chk_guard
	movw	r0, #:lower16:269680640	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269680640	@,
	mov	r2, r6	@, pstMem
	str	r3, [sp, #28]	@ __stack_chk_guard, D.41214
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L407	@,
	add	r7, r4, #64	@ pstMem.1942, pstDrvMem,
	ldr	r1, [r4, #36]	@, <variable>.VirAddr
	ldr	r2, [r4, #44]	@, <variable>.Length
	ldr	r0, [r4, #40]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269746176	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269746176	@,
	mov	r2, r7	@, pstMem.1942
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L435	@,
	movw	r6, #:lower16:g_vdm_hal_fun_ptr	@ tmp165,
	movt	r6, #:upper16:g_vdm_hal_fun_ptr	@ tmp165,
	ldr	r3, [r6, #16]	@ D.38783, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.38783,
	beq	.L435	@,
	blx	r3	@ D.38783
	cmp	r0, #0	@,
	bne	.L435	@,
	add	r8, r4, #48	@ pstMem.1946, pstDrvMem,
	ldr	r1, [r4, #68]	@, <variable>.stBpdReg.VirAddr
	ldr	r2, [r4, #76]	@, <variable>.stBpdReg.Length
	ldr	r0, [r4, #72]	@, <variable>.stBpdReg.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269729792	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269729792	@,
	mov	r2, r8	@, pstMem.1946
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L418	@,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:270487672	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487672	@,
	mov	r2, r8	@, pstMem.1946
	bl	MEM_MapRegisterAddr	@
	subs	r7, r0, #0	@ D.38806,
	bne	.L418	@,
	add	sl, sp, #8	@ tmp177,,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r7	@, D.38806
	mov	r0, sl	@, tmp177
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	bl	snprintf	@
	ldr	r3, [r6, #24]	@ D.38817, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.38817,
	beq	.L418	@,
	blx	r3	@ D.38817
	subs	r2, r0, #0	@ Size,
	ble	.L418	@,
	mov	r0, sl	@, tmp177
	mov	r1, r7	@, D.38806
	mov	r3, r4	@, pstDrvMem
	str	r7, [sp, #0]	@ D.38806,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L420	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r2, [r4, #12]	@, <variable>.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [r6, #28]	@ D.38835, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.38835,
	beq	.L420	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, <variable>.Length
	blx	r3	@ D.38835
	subs	r6, r0, #0	@ D.38837,
	bne	.L420	@,
	bl	VDMDRV_Init	@
	add	r7, r4, #16	@ pstMem.1960, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r6	@, D.38837
	mov	r3, r7	@, pstMem.1960
	str	r6, [sp, #0]	@ D.38837,
	mov	r2, r0	@ D.38849,
	movw	r0, #:lower16:.LC1	@,
	movt	r0, #:upper16:.LC1	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L435	@,
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stScdCmnMem.Length
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stScdCmnMem.Length
	movw	r2, #:lower16:269729792	@,
	movw	r3, #:lower16:270487672	@,
	movt	r2, #:upper16:269729792	@,
	movt	r3, #:upper16:270487672	@,
	bl	SM_OpenSCDDrv	@
	subs	ip, r0, #0	@ D.38854,
	bne	.L435	@,
	mov	r2, ip	@, D.38854
	mov	r0, #70	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	str	ip, [sp, #4]	@ D.38854,
	movw	ip, #:lower16:.LC2	@ tmp198,
	movt	ip, #:upper16:.LC2	@ tmp198,
	str	ip, [sp, #0]	@ tmp198,
	bl	request_threaded_irq	@
	subs	ip, r0, #0	@ D.39917,
	bne	.L435	@,
	mov	r2, ip	@, D.39917
	mov	r0, #73	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	str	ip, [sp, #4]	@ D.39917,
	movw	r6, #:lower16:.LC3	@ tmp201,
	movt	r6, #:upper16:.LC3	@ tmp201,
	str	r6, [sp, #0]	@ tmp201,
	bl	request_threaded_irq	@
	subs	r6, r0, #0	@ D.39924,
	bne	.L435	@,
	mov	r0, #93	@,
	movw	r1, #:lower16:VCTRL_Dnr_Isr	@,
	mov	r2, r6	@, D.39924
	movt	r1, #:upper16:VCTRL_Dnr_Isr	@,
	mov	r3, #32	@,
	str	r6, [sp, #4]	@ D.39924,
	movw	lr, #:lower16:.LC4	@ tmp204,
	movt	lr, #:upper16:.LC4	@ tmp204,
	str	lr, [sp, #0]	@ tmp204,
	bl	request_threaded_irq	@
	cmp	r0, #0	@ D.39931
	beq	.L410	@,
	bl	DNR_Close	@
	mov	r0, r6	@ D.38757, D.39924
.L410:
	ldr	r2, [sp, #28]	@ D.41214, D.41214
	ldr	r1, [r5, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r1	@ D.41214, __stack_chk_guard
	bne	.L437	@,
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L418:
	mov	r0, r8	@, pstMem.1946
.L436:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.38757,
	b	.L410	@
.L435:
	mov	r0, r7	@, pstMem.1960
	b	.L436	@
.L420:
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.38757,
	b	.L410	@
.L407:
	mov	r0, r6	@, pstMem
	b	.L436	@
.L437:
	bl	__stack_chk_fail	@
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
.LFB1974:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L445	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp138,
	movt	r0, #:upper16:.LANCHOR0	@ tmp138,
	ldr	ip, [r0, #0]	@ D.38167, s_pstVfmwChan
	ldr	r3, [ip, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L445	@,
	cmp	r1, #0	@ pArgs,
	beq	.L445	@,
	mov	r5, r1	@ pArgs, pArgs
	add	ip, ip, #1424	@ tmp140, D.38167,
	ldmia	r5!, {r0, r1, r2, r3}	@ pArgs,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp140,,,,
	ldr	r2, [r5, #0]	@ tmp143,* pArgs
	str	r2, [ip, #0]	@ tmp143, <variable>.stSynExtraData.stPvrInfo
.L440:
	mov	r0, r4	@, D.38165
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L445:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ D.38165,
	b	.L440	@
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
.LFB1954:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L452	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L452	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #0]	@ D.37422, s_pstVfmwChan
	cmp	r3, #0	@ D.37422,
	beq	.L452	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #72	@,
	add	r1, r3, #32	@, D.37422,
	bl	memcpy	@
	mov	r0, r4	@ D.37418, ChanID
	ldmfd	sp!, {r4, pc}	@
.L452:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37418,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
.LFB1940:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L460	@,
	cmp	r1, #0	@ pArgs,
	beq	.L460	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r2, [r3, #0]	@ D.36613, s_pstVfmwChan
	cmp	r2, #0	@ D.36613,
	beq	.L460	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	add	r2, r2, #1584	@ tmp140, D.36613,
	add	r2, r2, #12	@ tmp140, tmp140,
	stmia	r2, {r0, r1}	@ tmp140,,
	ldr	r3, [r3, #0]	@ temp.2035, s_pstVfmwChan
	ldr	r0, [r3, #1596]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp145, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, ip	@ D.36609, ChanID
	cmp	r2, #1	@ tmp145,
	strhi	ip, [r3, #1596]	@ ChanID, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r3, pc}	@
.L460:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36609,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstFrameIntf
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L466	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.36573, s_pstVfmwChan
	cmp	r3, #0	@ D.36573,
	beq	.L466	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #128	@ tmp139, D.36573,
	mov	ip, #0	@ D.36571,
	stmia	r3, {r0, r1, r2}	@ tmp139,,,
.L463:
	mov	r0, ip	@, D.36571
	ldmfd	sp!, {r3, pc}	@
.L466:
	bl	vfmw_dprint_nothing	@
	mvn	ip, #0	@ D.36571,
	b	.L463	@
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstStreamIntf
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L472	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.36553, s_pstVfmwChan
	cmp	r3, #0	@ D.36553,
	beq	.L472	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	r3, r3, #104	@ tmp139, D.36553,
	mov	ip, #0	@ D.36551,
	stmia	r3, {r0, r1, r2}	@ tmp139,,,
.L469:
	mov	r0, ip	@, D.36551
	ldmfd	sp!, {r3, pc}	@
.L472:
	bl	vfmw_dprint_nothing	@
	mvn	ip, #0	@ D.36551,
	b	.L469	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1981:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp141,
	movt	r4, #:upper16:.LANCHOR0	@ tmp141,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pMem, pMem
	ldr	r3, [r4, r0, asl #2]	@ D.38390, s_pstVfmwChan
	cmp	r3, #0	@ D.38390,
	beq	.L483	@,
	ldr	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	bne	.L483	@,
	ldr	r3, [r3, #820]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L483	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38400,
	bne	.L483	@,
	mov	r1, r0	@, D.38400
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r1, r0, #0	@ id,
	blt	.L483	@,
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r7, r0	@ pLf,
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ pLf,
	beq	.L483	@,
	ldr	r0, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L481	@,
	ldr	r1, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r1, #0	@ <variable>.pstDispOutFs,
	beq	.L481	@,
	ldr	ip, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L481	@,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.38393,
	ldr	r1, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r6, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r4, r5, asl #2]	@ tmp150, s_pstVfmwChan
	ldr	r2, [r3, #816]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r2, [r6, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L483:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38393,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L481:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38393,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1980:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r1	@ pstUsrdecFrame, pstUsrdecFrame
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, [r1, #28]	@, <variable>.s32LumaPhyAddr
	mov	r9, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r5, r0	@ PicBufID,
	beq	.L509	@,
	ldr	r3, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L487	@,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.38293,
.L486:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L487:
	ldr	r0, [r7, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ D.38298,
	beq	.L510	@,
.L488:
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L490	@,
	str	r5, [r4, #176]	@ PicBufID, <variable>.image_id
	mov	r6, #0	@ tmp175,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	mov	fp, #1	@ tmp174,
	strd	r0, [r4]	@ <variable>.Pts, <variable>.SrcPts
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ <variable>.Pts, pLogic,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r4, #16]	@ <variable>.Pts, pLogic,
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	str	fp, [r4, #68]	@ tmp174, <variable>.DispEnableFlag
	str	r6, [r4, #72]	@ tmp175, <variable>.DispFrameDistance
	strd	r2, [r4, #24]	@ <variable>.Pts, pLogic,
	str	r6, [r4, #76]	@ tmp175, <variable>.DistanceBeforeFirstFrame
	str	r6, [r4, #80]	@ tmp175, <variable>.GopNum
	ldr	lr, [r7, #28]	@ temp.2196, <variable>.s32LumaPhyAddr
	str	lr, [r4, #88]	@ temp.2196, <variable>.top_luma_phy_addr
	mov	r0, lr	@, temp.2196
	str	lr, [r4, #120]	@ temp.2196, <variable>.luma_2d_phy_addr
	str	lr, [r4, #104]	@ temp.2196, <variable>.luma_phy_addr
	ldr	r8, [r7, #36]	@ temp.2197, <variable>.s32CbPhyAddr
	str	r8, [r4, #108]	@ temp.2197, <variable>.chrom_phy_addr
	str	r8, [r4, #92]	@ temp.2197, <variable>.top_chrom_phy_addr
	str	r8, [r4, #124]	@ temp.2197, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.38314, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.38314, <variable>.luma_2d_vir_addr
	ldr	r0, [r4, #92]	@, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #52]	@ pDst, <variable>.chrom_2d_vir_addr
	mov	r8, r0	@ pDst,
	str	r0, [r4, #36]	@ pDst, <variable>.chrom_vir_addr
	cmp	r0, r6	@ pDst,
	ldr	r3, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	ldr	r0, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r3, ip	@ tmp181, <variable>.s32LumaStride, <variable>.top_luma_phy_addr
	str	r2, [r4, #96]	@ tmp181, <variable>.btm_luma_phy_addr
	ldr	r1, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r6, [r4, #128]	@ tmp175, <variable>.is_fld_save
	add	r3, r1, r0	@ tmp184, <variable>.s32LumaStride, <variable>.top_chrom_phy_addr
	str	r3, [r4, #100]	@ tmp184, <variable>.btm_chrom_phy_addr
	ldr	ip, [r7, #20]	@ <variable>.s32YWidth, <variable>.s32YWidth
	str	ip, [r4, #144]	@ <variable>.s32YWidth, <variable>.image_width
	ldr	r2, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	str	r2, [r4, #148]	@ <variable>.s32YHeight, <variable>.image_height
	movw	r2, #11296	@ tmp194,
	ldr	r1, [r7, #20]	@ temp.2202, <variable>.s32YWidth
	str	r1, [r4, #152]	@ temp.2202, <variable>.disp_width
	mov	r0, r1, lsr fp	@ tmp188, temp.2202,
	ldr	r3, [r7, #24]	@ temp.2204, <variable>.s32YHeight
	str	r0, [r4, #160]	@ tmp188, <variable>.disp_center_x
	str	r3, [r4, #156]	@ temp.2204, <variable>.disp_height
	mov	ip, r3, lsr fp	@ tmp189, temp.2204,
	str	ip, [r4, #164]	@ tmp189, <variable>.disp_center_y
	ldr	r1, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	fp, [r4, #208]	@ tmp174, <variable>.chroma_idc
	str	r2, [r4, #140]	@ tmp194, <variable>.format
	str	r1, [r4, #172]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r6, [r4, #168]	@ tmp175, <variable>.frame_rate
	str	r6, [r4, #180]	@ tmp175, <variable>.error_level
	str	r6, [r4, #256]	@ tmp175, <variable>.line_num_phy_addr
	str	r6, [r4, #56]	@ tmp175, <variable>.line_num_vir_addr
	beq	.L490	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	cmp	r1, fp	@ <variable>.s32YHeight,
	bgt	.L502	@,
	b	.L492	@
.L512:
	ldr	r2, [r4, #144]	@ __n, <variable>.image_width
	cmp	r2, #0	@ __n,
	bne	.L511	@,
.L494:
	add	r0, r1, r1, lsr #31	@, tmp228, <variable>.s32YHeight, <variable>.s32YHeight,
	add	r6, r6, #1	@ y, y,
	ldr	r2, [r4, #172]	@ D.38372, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp228,
	bge	.L492	@,
.L514:
	add	r8, r8, r2	@ pDst, pDst, D.38372
.L502:
	ldr	r3, [r7, #0]	@ D.38334, <variable>.enFmt
	cmp	r3, #0	@ D.38334,
	beq	.L512	@,
	cmp	r3, #1	@ D.38334,
	beq	.L494	@,
	cmp	r3, #3	@ D.38334,
	beq	.L513	@,
	cmp	r3, #2	@ D.38334,
	bne	.L498	@,
	mov	r1, sl	@, pSrc
	ldr	r2, [r4, #144]	@, <variable>.image_width
	mov	r0, r8	@, pDst
	add	r6, r6, #1	@ y, y,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	ldr	r2, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	r0, r1, r1, lsr #31	@, tmp228, <variable>.s32YHeight, <variable>.s32YHeight,
	add	sl, sl, r2, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	ldr	r2, [r4, #172]	@ D.38372, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp228,
	blt	.L514	@,
.L492:
	mov	r6, #18	@ tmp230,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #1	@,
	str	r6, [r4, #300]	@ tmp230, <variable>.ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp231,
	movt	r3, #:upper16:.LANCHOR0	@ tmp231,
	str	r4, [sp, #0]	@ pLogic,
	mov	r1, r6	@, tmp230
	mov	r0, r9	@, ChanID
	ldr	r2, [r3, r9, asl #2]	@ D.38375, s_pstVfmwChan
	add	ip, r2, #217088	@, D.38375,
	add	r2, ip, #432	@, tmp2,
	add	r3, ip, #440	@,,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ D.38293,
	beq	.L486	@,
	mov	r0, r9	@, ChanID
	ldr	r1, [r4, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r6, #0	@ tmp237,
	mov	r0, r9	@, ChanID
	ldr	r1, [r4, #196]	@, <variable>.p_usrdat
	str	r6, [r4, #192]	@ tmp237, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r4, #196]	@ tmp237, <variable>.p_usrdat
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, r6	@, tmp237
	bl	FSP_SetDisplay	@
.L507:
	mvn	r0, #0	@ D.38293,
	b	.L486	@
.L511:
	mov	r1, #128	@,
	mov	r0, r8	@, pDst
	bl	memset	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	b	.L494	@
.L513:
	ldr	ip, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #0	@ <variable>.image_width,
	beq	.L496	@,
	mov	r0, #0	@ x.2220,
	mov	r2, sl	@ ivtmp.2179, pSrc
	mov	r3, r0	@ x, x.2220
.L497:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp199,* ivtmp.2179
	mov	lr, r0	@ tmp202, x.2220
	add	r3, r3, #2	@ x, x,
	strb	r1, [lr, r8]!	@ tmp199,
	mov	r0, r3	@ x.2220, x
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp204,
	add	r2, r2, #4	@ ivtmp.2179, ivtmp.2179,
	strb	ip, [lr, #1]	@ tmp204,
	ldr	r1, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, x
	bhi	.L497	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L496:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3	@ pSrc, pSrc, <variable>.s32ChromStride
	b	.L494	@
.L498:
	cmp	r3, #4	@ D.38334,
	bne	.L507	@,
	ldr	r0, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L500	@,
	mov	r0, #0	@ x.623,
	mov	r2, sl	@ ivtmp.2185, pSrc
	mov	r3, r0	@ x.2216, x.623
.L501:
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ tmp215,* ivtmp.2185
	mov	r1, r8	@ tmp218, pDst
	add	r3, r3, #2	@ x.2216, x.2216,
	strb	lr, [r1, r0]!	@ tmp215,
	mov	r0, r3	@ x.623, x.2216
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp220,
	add	r2, r2, #4	@ ivtmp.2185, ivtmp.2185,
	strb	ip, [r1, #1]	@ tmp220,
	ldr	lr, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r3, lr	@ x.2216, <variable>.image_width
	bcc	.L501	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L500:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	b	.L494	@
.L510:
	ldr	r0, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r0, #1	@ <variable>.s32IsFrameValid,
	bne	.L488	@,
.L490:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38293,
	b	.L486	@
.L509:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.38293, PicBufID
	b	.L486	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1982:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	lr, [r3, r0, asl #2]	@ D.38424, s_pstVfmwChan
	mov	r6, r0	@ ChanID, ChanID
	mov	ip, r1	@ pUsrdecFrame, pUsrdecFrame
	cmp	lr, #0	@ D.38424,
	beq	.L522	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L522	@,
	ldr	r0, [lr, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #18	@ <variable>.eVidStd,
	bne	.L522	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #824	@ tmp141, D.38424,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	mov	r5, lr	@ tmp146, tmp141
	stmia	r5!, {r0, r1, r2, r3}	@ tmp146,,,,
	mov	lr, r5	@ tmp148, tmp146
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp148,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp148,,,,
	ldmia	r4, {r0, r1}	@ pUsrdecFrame,,
	stmia	lr, {r0, r1}	@ tmp150,,
	mov	r0, r6	@, ChanID
	mov	r1, ip	@, pUsrdecFrame
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.38434
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38427,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L522:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38427,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
.LFB1979:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, #0	@,
	mov	r5, r1	@ ImgID, ImgID
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #360]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L524	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp142, <variable>.p_usrdat
.L524:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1978:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #352]	@ D.38240, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.38240, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r3, [r3, #0]	@ D.39938, s_pstVfmwChan
	cmp	r3, #0	@ D.39938,
	beq	.L527	@,
	add	r1, r3, #217088	@ tmp141, D.39938,
	add	r0, r1, #432	@ tmp141, tmp141,
	cmp	r4, r0	@ pCtx, tmp141
	beq	.L530	@,
.L527:
	mvn	ip, #0	@ tmp145,
	str	ip, [r4, #360]	@ tmp145, <variable>.ChanID
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38252,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L530:
	mov	r2, #0	@ tmp143,
	mov	r0, #1	@ D.38252,
	str	r2, [r4, #360]	@ tmp143, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
.LFB1983:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r1, [r3, r0, asl #2]	@ D.38447, s_pstVfmwChan
	cmp	r1, #0	@ D.38447,
	beq	.L540	@,
	ldr	r0, [r1, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.eVidStd
	b	.L539	@
.L538:
	.word	.L534
	.word	.L539
	.word	.L535
	.word	.L536
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L539
	.word	.L537
.L537:
	add	r0, r1, #217088	@, D.38447,
	add	r1, r1, #888	@, D.38447,
	add	r0, r0, #432	@,,
	b	USERDEC_Init	@
.L534:
	add	r3, r1, #217088	@, D.38447,
	add	r1, r1, #888	@, D.38447,
	add	r0, r3, #432	@,,
	b	H264DEC_Init	@
.L535:
	add	ip, r1, #217088	@, D.38447,
	add	r1, r1, #888	@, D.38447,
	add	r0, ip, #432	@,,
	b	MPEG4DEC_Init	@
.L536:
	add	r2, r1, #217088	@, D.38447,
	add	r1, r1, #888	@, D.38447,
	add	r0, r2, #432	@,,
	b	MPEG2DEC_Init	@
.L539:
	bx	lr	@
.L540:
	b	vfmw_dprint_nothing	@
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
.LFB1972:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanId
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L551	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.38132, s_pstVfmwChan
	cmp	r3, #0	@ D.38132,
	beq	.L551	@,
	ldr	r2, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L551	@,
	ldr	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #2	@ <variable>.eVidStd,
	beq	.L548	@,
	cmp	r2, #3	@ <variable>.eVidStd,
	beq	.L549	@,
	cmp	r2, #0	@ <variable>.eVidStd,
	ldmnefd	sp!, {r4, pc}	@
	add	r0, r3, #217088	@, D.38132,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L549:
	add	r1, r3, #217088	@, D.38132,
	add	r0, r1, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L548:
	add	ip, r3, #217088	@, D.38132,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L551:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
.LFB1994:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	bne	.L587	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp326,
	movt	r4, #:upper16:.LANCHOR0	@ tmp326,
	ldr	r3, [r4, #0]	@ D.39119, s_pstVfmwChan
	cmp	r3, #0	@ D.39119,
	beq	.L587	@,
	ldr	r8, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r8, #1	@ <variable>.s32IsRun,
	bne	.L587	@,
	ldr	r5, [r3, #16]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r5, #0	@ <variable>.s32StopSyntax,
	bne	.L587	@,
	str	r5, [r3, #672]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp170,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp170,
	ldr	ip, [r4, #204]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r6, r0	@ currtime,
	rsb	r0, ip, r0	@ tmp168, last_rec_pos_time, currtime
	cmp	r0, r3	@ tmp168, g_TraceBsPeriod
	strhi	r6, [r4, #204]	@ currtime, last_rec_pos_time
	ldr	r2, [r2, #880]	@ D.39138, <variable>.eVidStd
	movw	r3, #:lower16:.LANCHOR0	@ tmp173,
	movls	r8, r5	@ rec_pos_print_flag, <variable>.s32StopSyntax
	movt	r3, #:upper16:.LANCHOR0	@ tmp173,
	sub	r1, r2, #10	@ tmp175, D.39138,
	cmp	r1, #2	@ tmp175,
	bls	.L590	@,
	cmp	r2, #14	@ D.39138,
	beq	.L562	@,
	cmp	r2, #4	@ D.39138,
	bne	.L561	@,
.L562:
	mov	r0, #0	@,
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L591	@,
	ldr	r5, [r4, #0]	@ temp.2380, s_pstVfmwChan
	ldrb	r7, [r5, #1025]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	r7, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	bne	.L585	@,
	ldr	r0, [r5, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r0, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	beq	.L584	@,
.L585:
	add	r7, r5, #1024	@ tmp325, temp.2380,
.L566:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #0]	@ prephitmp.2382, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp194,
	movt	r6, #:upper16:.LANCHOR0	@ tmp194,
	ldr	r1, [r0, #32]	@ D.39188, <variable>.stChanCfg.eVidStd
	sub	r3, r1, #2	@ tmp195, D.39188,
	cmp	r1, #6	@ D.39188,
	cmpne	r3, #1	@, tmp195,
	bls	.L592	@,
	mov	r3, #1056	@ tmp289,
	mvn	r8, #0	@ tmp290,
	ldrd	r2, [r3, r5]	@ D.39169, tmp289, temp.2380
	mvn	r9, #0	@,
	cmp	r3, r9	@ D.39169, tmp290
	cmpeq	r2, r8	@ D.39169, tmp290
	movne	sl, #944	@ tmp291,
	strned	r2, [r0, sl]	@ D.39169, prephitmp.2382, tmp291
	ldrne	r0, [r6, #0]	@ prephitmp.2382, s_pstVfmwChan
.L578:
	mov	r9, #1072	@ tmp294,
	movw	r3, #1080	@ tmp299,
	ldrd	sl, [r5, r9]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, temp.2380, tmp294
	mov	r1, #960	@ tmp293,
	ldrd	r8, [r5, r3]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, temp.2380, tmp299
	mov	lr, #976	@ tmp298,
	ldr	ip, [r5, #1088]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	strd	sl, [r0, r1]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, prephitmp.2382, tmp293
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #1092]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	ldr	r1, [r5, #1096]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	strd	r8, [r2, lr]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, s_pstVfmwChan, tmp298
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #1100]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	str	ip, [r3, #992]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r0, [ip, #996]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r5, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r5, #1000]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r1, #1016]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
.L586:
	bl	vfmw_dprint_nothing	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	ip, [r4, #0]	@ temp.2425, s_pstVfmwChan
	mov	r0, r7	@, tmp325
	movw	r5, #:lower16:.LANCHOR0	@ tmp313,
	add	r2, ip, #217088	@, temp.2425,
	movt	r5, #:upper16:.LANCHOR0	@ tmp313,
	add	r2, r2, #432	@,,
	ldr	r1, [ip, #880]	@, <variable>.eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L593	@,
.L579:
	mov	r0, #0	@ D.39117,
.L554:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L590:
	ldr	lr, [r3, #208]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L562	@,
.L561:
	cmp	r2, #18	@ D.39138,
	beq	.L562	@,
	mov	r0, #0	@,
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L562	@,
	cmp	r8, #1	@ rec_pos_print_flag,
	beq	.L563	@,
	mvn	r0, #1	@ D.39117,
	b	.L554	@
.L593:
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp321,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp321,
	ldr	r1, [r5, #216]	@ last_rec_pos_decparam_time, last_rec_pos_decparam_time
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.2427,
	rsb	r0, r1, r0	@ tmp319, last_rec_pos_decparam_time, currtime.2427
	cmp	r0, ip	@ tmp319, g_TraceFramePeriod
	bls	.L579	@,
	mov	r0, #0	@,
	str	r3, [r5, #216]	@ currtime.2427, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	mov	r0, #0	@ D.39117,
	b	.L554	@
.L592:
	add	r0, r0, #1264	@, prephitmp.2382,
	add	r2, r7, #8	@, tmp325,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L571	@,
	ldr	r3, [r6, #0]	@ prephitmp.2368, s_pstVfmwChan
	ldr	r8, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r8, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L594	@,
	mov	ip, #952	@ tmp213,
	mvn	r8, #0	@ tmp214,
	ldrd	r0, [r3, ip]	@ temp.2389, prephitmp.2368, tmp213
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2389, tmp214
	cmpeq	r0, r8	@ temp.2389, tmp214
	movne	r2, #944	@ tmp215,
	strned	r0, [r3, r2]	@ temp.2389, prephitmp.2368, tmp215
	ldrne	r3, [r6, #0]	@ prephitmp.2368, s_pstVfmwChan
.L573:
	mov	r9, #952	@ tmp217,
	mvn	r0, #0	@ tmp218,
	mvn	r1, #0	@,
	strd	r0, [r3, r9]	@ tmp218, prephitmp.2368, tmp217
	ldr	ip, [r4, #0]	@ temp.2390, s_pstVfmwChan
	mov	sl, #968	@ tmp221,
	mov	r2, #960	@ tmp220,
	mov	r8, #984	@ tmp225,
	mov	lr, #976	@ tmp224,
	movw	r6, #:lower16:.LANCHOR0	@ tmp219,
	ldrd	r0, [ip, sl]	@ <variable>.stSynExtraData.NextUsertag, temp.2390, tmp221
	movt	r6, #:upper16:.LANCHOR0	@ tmp219,
	strd	r0, [ip, r2]	@ <variable>.stSynExtraData.NextUsertag, temp.2390, tmp220
	ldr	r3, [r4, #0]	@ temp.2391, s_pstVfmwChan
	ldrd	r0, [r3, r8]	@ <variable>.stSynExtraData.NextDispTime, temp.2391, tmp225
	strd	r0, [r3, lr]	@ <variable>.stSynExtraData.NextDispTime, temp.2391, tmp224
	ldr	ip, [r4, #0]	@ temp.2392, s_pstVfmwChan
	ldr	r2, [ip, #1004]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	str	r2, [ip, #992]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r3, [r4, #0]	@ temp.2393, s_pstVfmwChan
	ldr	lr, [r3, #1008]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	lr, [r3, #996]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	ip, [r4, #0]	@ temp.2394, s_pstVfmwChan
	ldr	r2, [ip, #1012]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	str	r2, [ip, #1000]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	r3, [r4, #0]	@ temp.2395, s_pstVfmwChan
	ldr	lr, [r3, #1020]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	lr, [r3, #1016]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #0]	@ temp.2396, s_pstVfmwChan
	ldr	ip, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	ip, #3	@ <variable>.stChanCfg.eVidStd,
	bne	.L574	@,
	mov	ip, #1056	@ tmp238,
	mov	lr, #1072	@ tmp243,
	ldrd	r0, [r5, ip]	@, temp.2380, tmp238
	movw	r2, #1080	@ tmp248,
	strd	r0, [r3, r9]	@, temp.2396, tmp217
	ldrd	r0, [r5, lr]	@, temp.2380, tmp243
	ldr	fp, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	strd	r0, [sp]	@, %sfp
	ldrd	r0, [r5, r2]	@, temp.2380, tmp248
	ldrd	r2, [sp]	@, %sfp
	strd	r0, [sp, #8]	@,,
	strd	r2, [fp, sl]	@, s_pstVfmwChan, tmp221
	ldrd	sl, [sp, #8]	@,,
	ldr	r3, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	ip, [r5, #1088]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	ldr	r0, [r5, #1092]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	strd	sl, [r3, r8]	@, s_pstVfmwChan, tmp225
	ldr	r3, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r1, [r5, #1096]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	ldr	lr, [r5, #1100]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	str	ip, [r3, #1004]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	ip, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r0, [ip, #1008]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r3, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r3, #1012]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r1, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r1, #1020]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
.L571:
	ldr	r3, [r4, #0]	@ temp.2396, s_pstVfmwChan
	ldr	r1, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L586	@,
.L574:
	mov	r8, #1056	@ tmp264,
	mvn	r9, #0	@,
	ldrd	r0, [r5, r8]	@ temp.2412, temp.2380, tmp264
	mvn	r8, #0	@ tmp265,
	cmp	r1, r9	@ temp.2412, tmp265
	cmpeq	r0, r8	@ temp.2412, tmp265
	movne	r9, #952	@ tmp266,
	strned	r0, [r3, r9]	@ temp.2412, temp.2396, tmp266
.L576:
	mov	r8, #1072	@ tmp270,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldrd	r0, [r5, r8]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, temp.2380, tmp270
	movw	r2, #1080	@ tmp275,
	mov	r3, #968	@ tmp269,
	ldrd	r8, [r5, r2]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, temp.2380, tmp275
	mov	lr, #984	@ tmp274,
	strd	r0, [ip, r3]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, s_pstVfmwChan, tmp269
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	ip, [r5, #1088]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	ldr	r0, [r5, #1092]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	strd	r8, [r2, lr]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, s_pstVfmwChan, tmp274
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #1096]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	ldr	r2, [r5, #1100]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	str	ip, [r3, #1004]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r0, [ip, #1008]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r3, #1012]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r5, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r2, [r5, #1020]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	b	.L586	@
.L584:
	add	r7, r5, #1024	@ tmp325, temp.2380,
	add	r1, r7, #8	@, tmp325,
	bl	SM_ReadStreamSeg	@
	cmp	r0, #0	@,
	beq	.L566	@,
	cmp	r8, #1	@ rec_pos_print_flag,
	beq	.L595	@,
.L567:
	movw	r1, #:lower16:g_NoStreamReportPeriod	@ tmp187,
	movt	r1, #:upper16:g_NoStreamReportPeriod	@ tmp187,
	ldr	ip, [r4, #212]	@ last_rec_pos_report_time, last_rec_pos_report_time
	movw	r2, #:lower16:.LANCHOR0	@ tmp184,
	ldr	r3, [r1, #0]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	movt	r2, #:upper16:.LANCHOR0	@ tmp184,
	rsb	r0, ip, r6	@ tmp185, last_rec_pos_report_time, currtime
	cmp	r0, r3	@ tmp185, g_NoStreamReportPeriod
	bls	.L568	@,
	ldr	r3, [r2, #4]	@ g_event_report.665, g_event_report
	cmp	r3, #0	@ g_event_report.665,
	beq	.L569	@,
	mov	r0, #0	@,
	mov	r1, #117	@,
	mov	r2, r0	@,
	blx	r3	@ g_event_report.665
.L569:
	str	r6, [r4, #212]	@ currtime, last_rec_pos_report_time
.L568:
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp193,
	mvn	r0, #3	@ D.39117,
	str	r2, [lr, #672]	@ tmp193, <variable>.s32NoStreamFlag
	b	.L554	@
.L587:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39117,
	b	.L554	@
.L591:
	cmp	r8, #1	@ rec_pos_print_flag,
	mvnne	r0, #2	@ D.39117,
	bne	.L554	@
.L565:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #2	@ D.39117,
	b	.L554	@
.L563:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.39117,
	b	.L554	@
.L594:
	mov	sl, #952	@ tmp210,
	mov	r9, #944	@ tmp209,
	ldrd	r0, [r3, sl]	@ <variable>.stSynExtraData.NextPts, prephitmp.2368, tmp210
	strd	r0, [r3, r9]	@ <variable>.stSynExtraData.NextPts, prephitmp.2368, tmp209
	ldr	r3, [r6, #0]	@ prephitmp.2368, s_pstVfmwChan
	b	.L573	@
.L595:
	bl	vfmw_dprint_nothing	@
	b	.L567	@
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1991:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp178,
	movt	r4, #:upper16:.LANCHOR0	@ tmp178,
	.pad #28
	sub	sp, sp, #28	@,,
	movw	r6, #:lower16:.LANCHOR0	@ tmp180,
	movt	r6, #:upper16:.LANCHOR0	@ tmp180,
	ldr	r2, [r4, #0]	@ D.39019, s_pstVfmwChan
	mov	r8, sp	@ tmp183,
	mvn	r3, #0	@ ret,
	mov	r5, #1	@ tmp181,
	cmp	r2, #0	@ D.39019,
	mov	r7, #0	@ prephitmp.2442,
	ldrne	r2, [r2, #12]	@ prephitmp.2442, <variable>.s32Priority
	str	r2, [r4, #220]	@ prephitmp.2442, ChanPriTab
.L619:
	cmp	r2, #0	@ prephitmp.2442,
	ldr	r2, [r4, #0]	@ D.39030, s_pstVfmwChan
	ble	.L599	@,
	cmp	r2, #0	@ D.39030,
	bne	.L623	@,
.L599:
	mov	r1, #0	@ tmp174,
	mov	r0, r3	@, ret
	str	r1, [r4, #88]	@ tmp174, s_VfmwCTrl.s32ThisChanIDPlus1
	str	r1, [r4, #220]	@ tmp174, ChanPriTab
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L623:
	str	r5, [r4, #88]	@ tmp181, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r1, [r2, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	bne	.L599	@,
	str	r7, [r6, #220]	@ prephitmp.2442, ChanPriTab
	ldr	r3, [r2, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	r3, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L601	@,
	ldr	r0, [r2, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	r0, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L624	@,
.L601:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	beq	.L625	@,
.L620:
	ldr	r2, [r4, #220]	@ prephitmp.2442, ChanPriTab
	b	.L619	@
.L624:
	mov	r0, r7	@, prephitmp.2442
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L626	@,
.L602:
	ldr	sl, [r4, #0]	@ temp.2462, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [sl, #52]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	bl	GetNextDecodeMode	@
	str	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	ip, [r4, #0]	@ temp.2464, s_pstVfmwChan
	ldr	r2, [ip, #896]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r2, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [ip, #892]	@ prephitmp.2442, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r2, [ip, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	ip, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	streq	r2, [ip, #892]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	ip, [r6, #0]	@ temp.2467, s_pstVfmwChan
	strne	r7, [ip, #888]	@ prephitmp.2442, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r2, [ip, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r2, [ip, #888]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L601	@
.L625:
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	moveq	sl, #2	@ i,
	bne	.L620	@,
.L606:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	bne	.L620	@,
	bl	DecChanSyntax	@
	add	sl, sl, #1	@ tmp187, i,
	subs	r3, r0, #0	@ ret,
	bne	.L620	@,
	add	sl, sl, #1	@ i, tmp187,
	cmp	sl, #200	@ i,
	bne	.L606	@,
	ldr	r2, [r4, #220]	@ prephitmp.2442, ChanPriTab
	b	.L619	@
.L626:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L602	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1975:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, r0, asl #2]	@ tmp140, s_pstVfmwChan
	cmp	r3, #0	@ tmp140,
	beq	.L630	@,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L630	@,
	ldr	r0, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L631	@,
	ldr	r1, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L631	@,
.L630:
	mvn	r0, #0	@ ret,
.L629:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L631:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L630	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #28]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L629	@,
	b	.L630	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1970:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp141,
	movt	r4, #:upper16:.LANCHOR0	@ tmp141,
	mov	r6, r0	@ ChanId, ChanId
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r2, r3	@ pLumaInfo, pLumaInfo
	ldr	r0, [r4, r0, asl #2]	@ D.38082, s_pstVfmwChan
	cmp	r0, #0	@ D.38082,
	beq	.L644	@,
	ldr	r5, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r5, #2	@ <variable>.eVidStd,
	beq	.L638	@,
	cmp	r5, #3	@ <variable>.eVidStd,
	beq	.L639	@,
	cmp	r5, #0	@ <variable>.eVidStd,
	bne	.L643	@,
	add	r0, r0, #217088	@, D.38082,
	mov	r2, #1	@,
	add	r0, r0, #432	@,,
	str	r5, [sp, #0]	@ <variable>.eVidStd,
	bl	H264DEC_VDMPostProc	@
	ldr	r2, [r4, r6, asl #2]	@ prephitmp.2528, s_pstVfmwChan
	movw	r7, #:lower16:231076	@ tmp147,
	movt	r7, #:upper16:231076	@ tmp147,
	ldrb	r3, [r2, r7]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L645	@,
.L640:
	movw	lr, #:lower16:217880	@ tmp155,
	movt	lr, #:upper16:217880	@ tmp155,
	mov	ip, #0	@ tmp156,
	str	ip, [r2, lr]	@ tmp156,
	b	.L643	@
.L639:
	add	r2, r0, #217088	@, D.38082,
	movw	r5, #:lower16:291233	@ tmp160,
	add	r0, r2, #432	@,,
	movt	r5, #:upper16:291233	@ tmp160,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r2, [r4, r6, asl #2]	@ prephitmp.2510, s_pstVfmwChan
	ldrb	r3, [r2, r5]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	beq	.L646	@,
.L641:
	movw	lr, #:lower16:217524	@ tmp168,
	movt	lr, #:upper16:217524	@ tmp168,
	mov	ip, #0	@ tmp169,
	str	ip, [r2, lr]	@ tmp169,
.L643:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L638:
	add	r5, r0, #217088	@, D.38082,
	add	r0, r5, #432	@,,
	movw	r5, #:lower16:240516	@ tmp173,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r2, [r4, r6, asl #2]	@ prephitmp.2525, s_pstVfmwChan
	movt	r5, #:upper16:240516	@ tmp173,
	ldrb	r3, [r2, r5]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L647	@,
.L642:
	movw	ip, #:lower16:218556	@ tmp181,
	movt	ip, #:upper16:218556	@ tmp181,
	mov	r1, #0	@ tmp182,
	str	r1, [r2, ip]	@ tmp182,
	b	.L643	@
.L646:
	mov	r0, r6	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, r6, asl #2]	@ tmp163, s_pstVfmwChan
	mov	r0, #0	@ tmp165,
	strb	r0, [r1, r5]	@ tmp165, <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	ldr	r2, [r4, r6, asl #2]	@ prephitmp.2510, s_pstVfmwChan
	b	.L641	@
.L645:
	mov	r0, r6	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, r6, asl #2]	@ tmp150, s_pstVfmwChan
	strb	r5, [r1, r7]	@ <variable>.eVidStd, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r2, [r4, r6, asl #2]	@ prephitmp.2528, s_pstVfmwChan
	b	.L640	@
.L644:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	vfmw_dprint_nothing	@
.L647:
	mov	r0, r6	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r4, r6, asl #2]	@ tmp176, s_pstVfmwChan
	mov	r2, #0	@ tmp178,
	strb	r2, [r0, r5]	@ tmp178, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r2, [r4, r6, asl #2]	@ prephitmp.2525, s_pstVfmwChan
	b	.L642	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
.LFB1971:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ ChanId, ChanId
	mov	r7, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r5, r3	@ pLumaInfo, pLumaInfo
	bne	.L655	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.38108, s_pstVfmwChan
	cmp	r3, #0	@ D.38108,
	beq	.L655	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	beq	.L651	@,
.L655:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L651:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r4	@, ChanId
	mov	r1, r7	@, ErrRatio
	mov	r2, r6	@, Mb0QpInCurrPic
	mov	r3, r5	@, pLumaInfo
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VCTRL_PostProc	@
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
.LFB1965:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r1	@ pImage, pImage
	bne	.L670	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, #0]	@ D.37952, s_pstVfmwChan
	cmp	r3, #0	@ D.37952,
	beq	.L670	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L670	@,
	cmp	r1, #0	@ pImage,
	beq	.L670	@,
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@ temp.2575, s_pstVfmwChan
	cmp	r0, #0	@ temp.2575,
	beq	.L669	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L669	@,
	add	r0, r0, #217088	@, temp.2575,
	mov	r1, r5	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReleaseImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L658:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L669:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L658	@
.L670:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ ret,
	b	.L658	@
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
.LFB1964:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	bl	vfmw_dprint_nothing	@
	cmp	r4, #0	@ ChanID,
	bne	.L682	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, #0]	@ D.37927, s_pstVfmwChan
	cmp	r3, #0	@ D.37927,
	beq	.L682	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L682	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@ temp.2601, s_pstVfmwChan
	cmp	r0, #0	@ temp.2601,
	beq	.L683	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L683	@,
	add	r0, r0, #217088	@, temp.2601,
	mov	r1, r5	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L673:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L682:
	mvn	r4, #0	@ ret,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L683:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L673	@
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
.LFB1962:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r1, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r3, #0	@ tmp138,
	beq	.L689	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@, D.37864,
	ldmfd	sp!, {r3, pc}	@
.L689:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37864,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_LoadDspCode
	.type	VCTRL_LoadDspCode, %function
VCTRL_LoadDspCode:
	.fnstart
.LFB1960:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	mov	r0, sp	@,
	mov	r4, sp	@ tmp140,
	bl	__memzero	@
	mov	r0, r5	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	subs	r6, r0, #0	@ ret,
	bne	.L696	@,
	ldr	r0, [sp, #0]	@ D.37777, stCfgInfo.eVidStd
	cmp	r0, #0	@ D.37777,
	movne	r2, r6	@ prephitmp.2639, ret
	beq	.L701	@,
.L694:
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #224]	@ eDSPState, g_DSPState
	cmp	r3, #0	@ eDSPState,
	bne	.L702	@,
	cmp	r0, #6	@ D.37777,
	movne	r3, #0	@, temp.2650
	moveq	r3, #1	@, temp.2650
	tst	r2, #1	@ prephitmp.2639,
	bne	.L703	@,
	cmp	r3, #0	@ temp.2650,
	bne	.L704	@,
.L692:
	mov	r0, r6	@, ret
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L701:
	ldr	r2, [sp, #40]	@ stCfgInfo.s32LowdlyEnable, stCfgInfo.s32LowdlyEnable
	cmp	r2, #1	@ stCfgInfo.s32LowdlyEnable,
	movne	r2, #0	@, prephitmp.2639
	moveq	r2, #1	@, prephitmp.2639
	b	.L694	@
.L704:
	add	r5, r4, r5, asl #2	@, tmp170, tmp145, ChanID,
	mov	r0, #6	@,
	bl	WriteHexFile	@
	mov	r0, #2	@ tmp172,
	str	r0, [r5, #224]	@ tmp172, g_DSPState
	b	.L692	@
.L703:
	add	r5, r4, r5, asl #2	@, tmp161, tmp145, ChanID,
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp163,
	str	r3, [r5, #224]	@ tmp163, g_DSPState
	b	.L692	@
.L702:
	cmp	r3, #2	@ eDSPState,
	movne	r2, #0	@, tmp150
	andeq	r2, r2, #1	@,, tmp150, prephitmp.2639
	cmp	r2, #0	@ tmp150,
	bne	.L696	@,
	cmp	r3, #1	@ eDSPState,
	cmpeq	r0, #6	@, D.37777,
	bne	.L692	@,
.L696:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ ret,
	b	.L692	@
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
.LFB1959:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [r3, r0, asl #2]	@ D.37737, s_pstVfmwChan
	cmp	r2, #0	@ D.37737,
	beq	.L712	@,
	ldr	r2, [r2, #880]	@ D.37744, <variable>.eVidStd
	sub	ip, r2, #10	@ tmp141, D.37744,
	cmp	ip, #2	@ tmp141,
	bls	.L713	@,
	cmp	r2, #4	@ D.37744,
	bne	.L714	@,
.L709:
	mvn	r0, #0	@ D.37740,
	ldmfd	sp!, {r3, pc}	@
.L713:
	ldr	r3, [r3, #208]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L709	@,
.L710:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp!, {r3, pc}	@
	b	.L709	@
.L714:
	cmp	r2, #14	@ D.37744,
	beq	.L709	@,
	b	.L710	@
.L712:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37740,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1953:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bne	.L722	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r4, #0]	@ D.37403, s_pstVfmwChan
	cmp	r3, #0	@ D.37403,
	beq	.L722	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L719	@,
.L722:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37401,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L719:
	str	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r3, #8]	@ ChanID, <variable>.s32IsRun
	bl	SM_Stop	@
	subs	r5, r0, #0	@ s32Ret,
	mvnne	r0, #0	@ D.37401,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r1, r5	@, s32Ret
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@, s32Ret
	bl	DNR_StopChan	@
	mov	r0, r5	@, s32Ret
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r5	@ D.37401, s32Ret
	str	r5, [r1, #16]	@ s32Ret, <variable>.s32StopSyntax
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
.LFB1951:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L734	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp165,
	movt	r4, #:upper16:.LANCHOR0	@ tmp165,
	ldr	r3, [r4, #0]	@ D.37336, s_pstVfmwChan
	cmp	r3, #0	@ D.37336,
	beq	.L734	@,
	ldr	r5, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r5, #1	@ <variable>.s32IsOpen,
	bne	.L734	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L734	@,
	bl	SM_Start	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r0, #16]	@ ChanID, <variable>.s32StopSyntax
	ldr	r3, [r4, #0]	@ prephitmp.2713, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L729	@,
	str	r5, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	ip, [r4, #0]	@ D.37349, s_pstVfmwChan
	ldr	r0, .L735	@,
	cmp	ip, #0	@ D.37349,
	streq	ip, [r4, #228]	@ D.37349, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r2, #:lower16:g_ChanCtx	@ tmp154,
	movwne	r2, #:lower16:g_ChanCtx	@ tmp158,
	movteq	r2, #:upper16:g_ChanCtx	@ tmp154,
	movtne	r2, #:upper16:g_ChanCtx	@ tmp158,
	strne	r1, [r4, #228]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, #0]	@ prephitmp.2713, s_pstVfmwChan
.L729:
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L732	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L732:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37334,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L734:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37334,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L736:
	.align	2
.L735:
	.word	.LANCHOR0+228
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
.LFB1963:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp196,
	movt	r5, #:upper16:.LANCHOR0	@ tmp196,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r3, [r5, r0, asl #2]	@ D.37882, s_pstVfmwChan
	cmp	r3, #0	@ D.37882,
	beq	.L747	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r6, #0	@ tmp142,
	add	r0, r4, r4, asl #1	@, tmp150, ChanID, ChanID,
	add	r3, r5, #232	@ tmp147, tmp196,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp142, <variable>.s32CountNoDecparamFlag
	add	r0, r3, r0, asl #3	@,, tmp147, tmp150,
	ldr	ip, [r5, r4, asl #2]	@ tmp144, s_pstVfmwChan
	str	r6, [ip, #684]	@ tmp142, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r9, [r5, r4, asl #2]	@ tmp154, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r6, [r9, #1412]	@ tmp142, <variable>.stSynExtraData.s32KeepSPSPPS
	mvn	r9, #0	@,
	bl	InitSyntaxCtx	@
	ldr	r8, [r5, r4, asl #2]	@ tmp158, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r8, #1024	@, tmp158,
	mvn	r8, #0	@ tmp162,
	bl	__memzero	@
	ldr	r2, [r5, r4, asl #2]	@ tmp160, s_pstVfmwChan
	mov	r3, #944	@ tmp161,
	mov	r0, #952	@ tmp165,
	movw	r1, #:lower16:217472	@ tmp175,
	movt	r1, #:upper16:217472	@ tmp175,
	strd	r8, [r2, r3]	@ tmp162, tmp160, tmp161
	movw	r2, #:lower16:217464	@ tmp179,
	ldr	ip, [r5, r4, asl #2]	@ tmp164, s_pstVfmwChan
	movt	r2, #:upper16:217464	@ tmp179,
	movw	r3, #:lower16:217468	@ tmp183,
	movt	r3, #:upper16:217468	@ tmp183,
	strd	r8, [ip, r0]	@ tmp162, tmp164, tmp165
	ldr	r0, [r5, r4, asl #2]	@ tmp168, s_pstVfmwChan
	str	r6, [r0, #1272]	@ tmp142, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	ip, [r5, r4, asl #2]	@ tmp171, s_pstVfmwChan
	str	r6, [ip, #1620]	@ tmp142, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r5, r4, asl #2]	@ tmp174, s_pstVfmwChan
	str	r6, [r0, r1]	@ tmp142, <variable>.s32FindStartCodeCnt
	ldr	ip, [r5, r4, asl #2]	@ tmp178, s_pstVfmwChan
	str	r6, [ip, r2]	@ tmp142, <variable>.s32H264Score
	ldr	r1, [r5, r4, asl #2]	@ tmp182, s_pstVfmwChan
	str	r6, [r1, r3]	@ tmp142, <variable>.s32Mpeg2Score
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.2741, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r6, [r0, #1616]	@ tmp142, <variable>.stSynExtraData.s32DSDWaitFlag
	ldreq	r0, [r5, r4, asl #2]	@ prephitmp.2741, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L741	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L742:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r1, [r5, #256]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r1, #0	@ g_ResetCreateNewSave,
	bne	.L748	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L749	@,
.L744:
	ldr	ip, [r5, r4, asl #2]	@ tmp193, s_pstVfmwChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L750	@,
.L745:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37885,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L748:
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L744	@,
.L749:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	ip, [r5, r4, asl #2]	@ tmp193, s_pstVfmwChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L745	@,
.L750:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37885,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L741:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L742	@
.L747:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37885,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
.LFB1961:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp186,
	movt	r5, #:upper16:.LANCHOR0	@ tmp186,
	mov	r4, r0	@ ChanID, ChanID
	mov	r7, r1	@ pOption, pOption
	ldr	r3, [r5, r0, asl #2]	@ D.37817, s_pstVfmwChan
	cmp	r3, #0	@ D.37817,
	beq	.L761	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L761	@,
	ldr	r8, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp143, s_pstVfmwChan
	mov	r6, #0	@ tmp144,
	add	r0, r4, r4, asl #1	@, tmp152, ChanID, ChanID,
	add	ip, r5, #232	@ tmp149, tmp186,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp144, <variable>.s32CountNoDecparamFlag
	add	r0, ip, r0, asl #3	@,, tmp149, tmp152,
	ldr	r3, [r5, r4, asl #2]	@ tmp146, s_pstVfmwChan
	str	r6, [r3, #684]	@ tmp144, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	ip, [r7, #4]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	ldr	r2, [r5, r4, asl #2]	@ tmp156, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	ip, [r2, #1412]	@ <variable>.s32KeepSPSPPS, <variable>.stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ temp.2791, s_pstVfmwChan
	add	r1, r3, #217088	@, temp.2791,
	ldr	r0, [r3, #880]	@, <variable>.eVidStd
	add	r1, r1, #432	@,,
	bl	ReleaseCurPic	@
	ldr	r2, [r5, r4, asl #2]	@ tmp164, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r2, #1024	@, tmp164,
	bl	__memzero	@
	ldr	ip, [r5, r4, asl #2]	@ tmp166, s_pstVfmwChan
	mov	r0, #944	@ tmp167,
	mvn	r3, #0	@,
	mvn	r2, #0	@ tmp168,
	mov	r1, #952	@ tmp171,
	strd	r2, [ip, r0]	@ tmp168, tmp166, tmp167
	ldr	r0, [r5, r4, asl #2]	@ tmp170, s_pstVfmwChan
	strd	r2, [r0, r1]	@ tmp168, tmp170, tmp171
	ldr	ip, [r5, r4, asl #2]	@ tmp174, s_pstVfmwChan
	str	r6, [ip, #1272]	@ tmp144, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	r1, [r5, r4, asl #2]	@ tmp177, s_pstVfmwChan
	str	r6, [r1, #1620]	@ tmp144, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r5, r4, asl #2]	@ tmp180, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L755	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L756:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r7, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L762	@,
	ldr	lr, [r5, #256]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	lr, #0	@ g_ResetCreateNewSave,
	bne	.L763	@,
.L758:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L764	@,
.L759:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37820,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L762:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	lr, [r5, #256]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L758	@,
.L763:
	bl	vfmw_dprint_nothing	@
	cmp	r8, #0	@ ChanIsRun,
	beq	.L759	@,
.L764:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37820,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L755:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L756	@
.L761:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37820,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
.LFB1952:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bne	.L776	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp181,
	movt	r4, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r3, [r4, #0]	@ D.37370, s_pstVfmwChan
	cmp	r3, #0	@ D.37370,
	beq	.L776	@,
	ldr	r5, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r5, #1	@ <variable>.s32IsOpen,
	bne	.L776	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L776	@,
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4, #0]	@ temp.2825, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldmia	r7, {r0, r1, r2, r3}	@ pChanMemVdh,,,,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, ip, #168	@ tmp150, s_pstVfmwChan,
	stmia	ip, {r0, r1, r2, r3}	@ tmp150,,,,
	ldr	ip, [r4, #0]	@ temp.2827, s_pstVfmwChan
	ldr	r2, [ip, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [ip, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [ip, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r6	@, ChanID
	bl	SM_Start	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r0, #16]	@ ChanID, <variable>.s32StopSyntax
	ldr	r3, [r4, #0]	@ prephitmp.2814, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L771	@,
	str	r5, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	lr, [r4, #0]	@ D.37387, s_pstVfmwChan
	ldr	r0, .L777	@,
	cmp	lr, #0	@ D.37387,
	streq	lr, [r4, #260]	@ D.37387, PrioArray
	ldrne	r1, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r2, #:lower16:g_ChanCtx	@ tmp170,
	movwne	r2, #:lower16:g_ChanCtx	@ tmp174,
	movteq	r2, #:upper16:g_ChanCtx	@ tmp170,
	movtne	r2, #:upper16:g_ChanCtx	@ tmp174,
	strne	r1, [r4, #260]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	lr, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, #0]	@ prephitmp.2814, s_pstVfmwChan
.L771:
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L774	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L774:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37368,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L776:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37368,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L778:
	.align	2
.L777:
	.word	.LANCHOR0+260
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
	.fnstart
.LFB1945:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r3, [r1, #64]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	mov	r4, r1	@ pstChan, pstChan
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_vdh,
	beq	.L792	@,
.L780:
	ldr	r0, [r4, #28]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	cmp	r0, #0	@ <variable>.stChanMem_vdh.Length,
	bne	.L793	@,
.L781:
	ldr	r2, [r4, #44]	@ D.36800, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ D.36800,
	bne	.L794	@,
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L795	@,
.L783:
	ldr	lr, [r4, #44]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L796	@,
.L784:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #72]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L797	@,
.L785:
	ldr	r0, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L786:
	ldr	r0, [r4, #56]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.stChanMem_ctx.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_pmv,
	beq	.L787	@,
.L791:
	ldr	r0, [r4, #100]	@ prephitmp.2848, <variable>.stChanMem_pmv.PhyAddr
.L788:
	ldr	r2, [r4, #104]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L796:
	ldrsb	r3, [r4, #32]	@ <variable>.stChanMem_scd.IsCached, <variable>.stChanMem_scd.IsCached
	cmp	r3, #1	@ <variable>.stChanMem_scd.IsCached,
	bne	.L784	@,
	ldr	r0, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp163,
	movt	r2, #:upper16:.LANCHOR0	@ tmp163,
	add	r1, r2, r5, asl #2	@, tmp166, tmp163, ChanID,
	str	r0, [r4, #36]	@ D.36818, <variable>.stChanMem_scd.VirAddr
	str	r0, [r1, #264]	@ D.36818, g_scd_vir
	mov	r0, #0	@ tmp168,
	strb	r0, [r4, #32]	@ tmp168, <variable>.stChanMem_scd.IsCached
	b	.L784	@
.L793:
	ldrsb	r1, [r4, #16]	@ <variable>.stChanMem_vdh.IsCached, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #1	@ <variable>.stChanMem_vdh.IsCached,
	bne	.L781	@,
	ldr	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	KernelMmap	@
	mov	r2, #0	@ tmp152,
	strb	r2, [r4, #16]	@ tmp152, <variable>.stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	b	.L781	@
.L787:
	ldr	r0, [r4, #100]	@ D.36834, <variable>.stChanMem_pmv.PhyAddr
	cmp	r0, #0	@ D.36834,
	beq	.L788	@,
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L791	@
.L797:
	ldr	r0, [r4, #56]	@ D.36826, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.36826,
	beq	.L785	@,
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L786	@
.L794:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L783	@,
.L795:
	ldr	r0, [r4, #40]	@ temp.2863, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ temp.2863,
	beq	.L783	@,
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L784	@
.L792:
	ldr	r0, [r1, #24]	@ D.36786, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.36786,
	beq	.L780	@,
	ldr	r1, [r1, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L781	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
.LFB1944:
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
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
.LFB1950:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp201,
	movt	r4, #:upper16:.LANCHOR0	@ tmp201,
	mov	r6, r0	@ ChanID, ChanID
	.pad #140
	sub	sp, sp, #140	@,,
	add	r0, r4, #268	@, tmp201,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ChanID,
	bne	.L811	@,
	ldr	r5, [r4, #0]	@ D.37295, s_pstVfmwChan
	cmp	r5, #0	@ D.37295,
	beq	.L811	@,
	ldr	r3, [r5, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L811	@,
	movw	ip, #:lower16:g_FrameRate	@ tmp152,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp154,
	movt	ip, #:upper16:g_FrameRate	@ tmp152,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp154,
	mov	r1, #30	@ tmp153,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r1, [r2, #0]	@ tmp153, g_LastFrameRate
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [ip, #0]	@ tmp153, g_FrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r6, r0, #0	@ ret,
	bne	.L812	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ret
	bl	VCTRL_ResetChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #880]	@ D.37307, <variable>.eVidStd
	cmp	r3, #4	@ D.37307,
	beq	.L806	@,
	sub	r0, r3, #10	@ tmp162, D.37307,
	cmp	r0, #2	@ tmp162,
	bhi	.L807	@,
	ldr	r6, [r4, #208]	@ g_VdmCharacter, g_VdmCharacter
	tst	r6, #1	@ g_VdmCharacter,
	beq	.L806	@,
.L808:
	mov	r0, #0	@,
	add	r6, sp, #28	@ tmp175,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r4, #0]	@ temp.2923, s_pstVfmwChan
	add	r0, sp, #60	@,,
	add	lr, sp, #108	@,,
	add	fp, r3, #184	@, temp.2923,
	add	r5, r3, #104	@, temp.2923,
	ldr	r7, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	movw	r1, #:lower16:217488	@ tmp173,
	str	fp, [sp, #16]	@, %sfp
	movt	r1, #:upper16:217488	@ tmp173,
	str	r5, [sp, #20]	@, %sfp
	add	r5, sp, #120	@,,
	str	r7, [sp, #100]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r8, r3, #200	@ tmp178, temp.2923,
	str	r0, [sp, #12]	@, %sfp
	add	r2, r3, #152	@ tmp176, temp.2923,
	ldr	r7, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r9, r3, #168	@ tmp180, temp.2923,
	str	lr, [sp, #8]	@, %sfp
	add	ip, r3, #217088	@ tmp187, temp.2923,
	str	r5, [sp, #4]	@, %sfp
	add	sl, sp, #76	@ tmp177,,
	str	r7, [sp, #92]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	add	fp, sp, #44	@ tmp179,,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	add	ip, ip, #404	@ tmp187, tmp187,
	movw	lr, #:lower16:s_pFspInst	@ tmp190,
	movt	lr, #:upper16:s_pFspInst	@ tmp190,
	mov	r5, #0	@ tmp189,
	movw	r7, #:lower16:s_SmIIS	@ tmp188,
	str	r0, [sp, #96]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	movt	r7, #:upper16:s_SmIIS	@ tmp188,
	ldr	r3, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r3, [sp, #104]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp176,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp175,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp178,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp177,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp180,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp179,,,,
	ldr	r8, [sp, #16]	@, %sfp
	ldmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #12]	@, %sfp
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #20]	@, %sfp
	ldmia	r8, {r0, r1, r2}	@,,,
	ldr	r8, [sp, #8]	@, %sfp
	stmia	r8, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp187,,,,
	str	r5, [lr, #0]	@ tmp189, s_pFspInst
	ldr	lr, [sp, #4]	@, %sfp
	str	r5, [r7, #116]	@ tmp189, s_SmIIS.pSmInstArray
	str	r5, [r4, #0]	@ tmp189, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r5	@, tmp189
	bl	VDMDRV_ClearChanIsDec	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L813	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, tmp189
	mov	r1, r6	@, tmp175
	bl	VCTRL_FreeChanResource	@
	mov	r0, r5	@ D.37293, tmp189
.L802:
	add	sp, sp, #140	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L807:
	cmp	r3, #14	@ D.37307,
	bne	.L808	@,
.L806:
	ldr	r3, [r4, #20]	@ D.37314, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37314,
	beq	.L808	@,
	add	r7, r5, #217088	@, D.37295,
	add	r0, r7, #432	@,,
	blx	r3	@ D.37314
	b	.L808	@
.L811:
	bl	vfmw_dprint_nothing	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r4, #268	@, tmp201,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37293,
	b	.L802	@
.L812:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r4, #268	@, tmp201,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37293,
	b	.L802	@
.L814:
	.align	2
.L813:
	.word	.LANCHOR0+268
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
	.fnstart
.LFB1949:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r4, asl #2	@, tmp139, tmp136, ChanID,
	mov	r2, #0	@ tmp141,
	str	r2, [r3, #224]	@ tmp141, g_DSPState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 672
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #700
	sub	sp, sp, #700	@,,
	add	r8, sp, #664	@ tmp647,,
	add	r9, sp, #648	@ tmp646,,
	mov	r7, r0	@ eCapLevel, eCapLevel
	mov	r5, r1	@ pChanOption, pChanOption
	mov	r0, r8	@, tmp647
	mov	r1, #16	@,
	add	r6, sp, #632	@ tmp644,,
	mov	sl, r2	@ flag, flag
	str	r3, [sp, #52]	@ OneChanMemFlag, %sfp
	add	fp, sp, #616	@ tmp642,,
	bl	__memzero	@
	mov	r0, r9	@, tmp646
	mov	r1, #16	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp641,
	bl	__memzero	@
	mov	r0, r6	@, tmp644
	mov	r1, #16	@,
	movt	r4, #:upper16:.LANCHOR0	@ tmp641,
	bl	__memzero	@
	mov	r0, fp	@, tmp642
	mov	r1, #16	@,
	bl	__memzero	@
	rsbs	r3, sl, #1	@ tmp196, flag
	movcc	r3, #0	@ tmp196
	cmp	r7, #25	@ eCapLevel,
	str	r5, [r4, #276]	@ pChanOption, pOption
	moveq	r3, #0	@, tmp196,
	cmp	r3, #0	@ tmp196,
	bne	.L841	@,
	ldr	r3, [r5, #4]	@ D.37007, <variable>.Purpose
	cmp	r3, #2	@ D.37007,
	bhi	.L841	@,
	beq	.L908	@,
	cmp	r3, #1	@ D.37007,
	beq	.L909	@,
.L823:
	ldr	lr, [r5, #136]	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, sl	@, flag
	mov	r0, r7	@, eCapLevel
	mov	r1, r5	@, pChanOption
	cmp	lr, #1	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	add	r2, sp, #584	@,,
	movne	lr, #0	@ tmp209,
	strne	lr, [r5, #136]	@ tmp209, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	ip, r0, #0	@ D.37039,
	bne	.L841	@,
	ldr	r3, [r5, #8]	@ D.37042, <variable>.MemAllocMode
	cmp	r3, #1	@ D.37042,
	beq	.L910	@,
	cmp	r3, #2	@ D.37042,
	beq	.L911	@,
	cmp	r3, #3	@ D.37042,
	bne	.L841	@,
	ldr	lr, [r5, #108]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	lr, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L842	@,
	ldr	r3, [r5, #112]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	bne	.L843	@,
.L842:
	movw	r0, #:lower16:.LC5	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC5	@,
	add	r3, sp, #600	@,,
	ldr	r2, [sp, #592]	@, DetailMemSize.ChanCtxDetailMem
	mov	r6, #1	@ tmp264,
	str	r6, [sp, #0]	@ tmp264,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L841	@,
	ldr	r1, [sp, #604]	@, MemRecord.VirAddr
	ldr	r0, [sp, #608]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #612]	@, MemRecord.Length
	str	r6, [sp, #44]	@ tmp264, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #608]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	ip, [sp, #604]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r0, [sp, #612]	@ MemRecord.Length, MemRecord.Length
	str	r1, [sp, #632]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	str	ip, [sp, #636]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	str	r0, [sp, #640]	@ MemRecord.Length, ChanMemCtx.Length
.L845:
	ldr	r2, [r5, #76]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L847	@,
	ldr	r0, [r5, #80]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	beq	.L847	@,
	add	ip, r5, #72	@ tmp289, pChanOption,
	ldr	lr, [sp, #584]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	ldmia	ip, {r0, r1, r2, r3}	@ tmp289,,,,
	stmia	r8, {r0, r1, r2, r3}	@ tmp647,,,,
	ldr	r2, [sp, #672]	@ temp.3038, ChanMemVDH.Length
	cmp	r2, lr	@ temp.3038, DetailMemSize.VdhDetailMem
	blt	.L912	@,
	ldr	r0, [sp, #664]	@, ChanMemVDH.PhyAddr
	mov	r6, #0	@ s32SelfAllocChanMem_vdh,
	ldr	r1, [sp, #668]	@, ChanMemVDH.VirAddr
	bl	MEM_AddMemRecord	@
.L851:
	ldr	r3, [r5, #92]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L854	@,
	ldr	r2, [r5, #96]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	beq	.L854	@,
	add	r3, r5, #88	@ tmp310, pChanOption,
	ldr	ip, [r5, #4]	@ temp.3101, <variable>.Purpose
	ldmia	r3, {r0, r1, r2, r3}	@ tmp310,,,,
	cmp	ip, #2	@ temp.3101,
	moveq	lr, #0	@,
	streq	lr, [sp, #48]	@, %sfp
	stmia	r9, {r0, r1, r2, r3}	@ tmp646,,,,
	beq	.L860	@,
	ldr	r1, [sp, #652]	@ temp.3063, ChanMemScd.VirAddr
	cmp	r1, #0	@ temp.3063,
	beq	.L862	@,
	ldr	r2, [sp, #656]	@ prephitmp.2968, ChanMemScd.Length
	ldr	lr, [sp, #588]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	cmp	r2, lr	@ prephitmp.2968, DetailMemSize.ScdDetailMem
	bge	.L863	@,
.L862:
	cmp	ip, #1	@ temp.3101,
	ldrne	r2, [sp, #656]	@ prephitmp.2968, ChanMemScd.Length
	beq	.L913	@,
.L863:
	ldr	r0, [sp, #648]	@, ChanMemScd.PhyAddr
	mov	r3, #0	@,
	str	r3, [sp, #48]	@, %sfp
	bl	MEM_AddMemRecord	@
	ldr	ip, [r5, #4]	@ temp.3101, <variable>.Purpose
.L860:
	ldr	r2, [r5, #124]	@ <variable>.MemDetail.ChanMemPmv.VirAddr, <variable>.MemDetail.ChanMemPmv.VirAddr
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemPmv.VirAddr,
	beq	.L867	@,
	ldr	r0, [r5, #128]	@ <variable>.MemDetail.ChanMemPmv.Length, <variable>.MemDetail.ChanMemPmv.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemPmv.Length,
	beq	.L867	@,
	add	r3, r5, #120	@ tmp330, pChanOption,
	cmp	ip, #2	@ temp.3101,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp330,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp642,,,,
	beq	.L874	@,
	ldr	r1, [sp, #620]	@ D.37174, ChanMemPmv.VirAddr
	cmp	r1, #0	@ D.37174,
	beq	.L875	@,
	ldr	r2, [sp, #624]	@ prephitmp.3158, ChanMemPmv.Length
	ldr	r0, [sp, #596]	@ DetailMemSize.PmvDetailMem, DetailMemSize.PmvDetailMem
	cmp	r2, r0	@ prephitmp.3158, DetailMemSize.PmvDetailMem
	bge	.L876	@,
.L875:
	cmp	ip, #1	@ temp.3101,
	ldrne	r2, [sp, #624]	@ prephitmp.3158, ChanMemPmv.Length
	beq	.L914	@,
.L876:
	ldr	r0, [sp, #616]	@, ChanMemPmv.PhyAddr
	mov	fp, #0	@ s32SelfAllocChanMem_pmv,
	bl	MEM_AddMemRecord	@
.L835:
	movw	r8, #:lower16:.LANCHOR0	@ tmp333,
	movt	r8, #:upper16:.LANCHOR0	@ tmp333,
	add	r0, r8, #268	@, tmp333,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	sl, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	sl, #0	@ s_pstVfmwChan,
	beq	.L915	@,
	bl	vfmw_dprint_nothing	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r8, #268	@, tmp333,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ ChanID,
	b	.L819	@
.L909:
	ldr	r2, [r5, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L841	@,
	ldr	ip, [r5, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	ip, #31	@ <variable>.s32MaxWidth,
	ble	.L841	@,
	ldr	lr, [r5, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	lr, #31	@ <variable>.s32MaxHeight,
	ble	.L841	@,
	ldr	r3, [r5, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	r3, #262144	@ <variable>.s32SCDBufSize,
	blt	.L841	@,
	ldr	r0, [r5, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r0, #1	@ <variable>.s32SupportH264,
	bne	.L823	@,
	ldr	r1, [r5, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L841	@,
	ldr	r2, [r5, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r2, #0	@ <variable>.s32MaxSpsNum,
	ble	.L841	@,
	ldr	ip, [r5, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L823	@,
.L841:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ChanID,
.L819:
	add	sp, sp, #700	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L843:
	add	r3, r5, #104	@ tmp272, pChanOption,
	ldr	lr, [sp, #592]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldmia	r3, {r0, r1, r2, r3}	@ tmp272,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp644,,,,
	ldr	r2, [sp, #640]	@ temp.3026, ChanMemCtx.Length
	cmp	r2, lr	@ temp.3026, DetailMemSize.ChanCtxDetailMem
	blt	.L841	@,
	ldr	r0, [sp, #632]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #636]	@, ChanMemCtx.VirAddr
	str	ip, [sp, #44]	@ D.37039, %sfp
	bl	MEM_AddMemRecord	@
	b	.L845	@
.L867:
	cmp	ip, #2	@ temp.3101,
	beq	.L869	@,
	mov	lr, #0	@ tmp319,
	movw	r0, #:lower16:.LC8	@,
	mov	r1, lr	@, tmp319
	movt	r0, #:upper16:.LC8	@,
	add	r3, sp, #600	@,,
	ldr	r2, [sp, #596]	@, DetailMemSize.PmvDetailMem
	str	lr, [sp, #0]	@ tmp319,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L916	@,
	ldr	r0, [sp, #608]	@, MemRecord.PhyAddr
	mov	fp, #1	@ s32SelfAllocChanMem_pmv,
	ldr	r1, [sp, #604]	@, MemRecord.VirAddr
	ldr	r2, [sp, #612]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [sp, #608]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	sl, [sp, #604]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r8, [sp, #612]	@ MemRecord.Length, MemRecord.Length
	str	r3, [sp, #616]	@ MemRecord.PhyAddr, ChanMemPmv.PhyAddr
	str	sl, [sp, #620]	@ MemRecord.VirAddr, ChanMemPmv.VirAddr
	str	r8, [sp, #624]	@ MemRecord.Length, ChanMemPmv.Length
	b	.L835	@
.L847:
	mov	ip, #0	@ tmp281,
	movw	r0, #:lower16:.LC6	@,
	mov	r1, ip	@, tmp281
	movt	r0, #:upper16:.LC6	@,
	add	r3, sp, #600	@,,
	ldr	r2, [sp, #584]	@, DetailMemSize.VdhDetailMem
	str	ip, [sp, #0]	@ tmp281,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L917	@,
	ldr	r2, [sp, #612]	@, MemRecord.Length
	mov	r6, #1	@ s32SelfAllocChanMem_vdh,
	ldr	r0, [sp, #608]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #604]	@, MemRecord.VirAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #608]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #604]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #612]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #664]	@ MemRecord.PhyAddr, ChanMemVDH.PhyAddr
	str	r2, [sp, #668]	@ MemRecord.VirAddr, ChanMemVDH.VirAddr
	str	r3, [sp, #672]	@ MemRecord.Length, ChanMemVDH.Length
	b	.L851	@
.L854:
	ldr	ip, [r5, #4]	@ temp.3101, <variable>.Purpose
	cmp	ip, #2	@ temp.3101,
	beq	.L856	@,
	mov	lr, #0	@ tmp299,
	movw	r0, #:lower16:.LC7	@,
	mov	r1, lr	@, tmp299
	movt	r0, #:upper16:.LC7	@,
	add	r3, sp, #600	@,,
	ldr	r2, [sp, #588]	@, DetailMemSize.ScdDetailMem
	str	lr, [sp, #0]	@ tmp299,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L918	@,
	mov	r2, #1	@,
	ldr	r1, [sp, #604]	@, MemRecord.VirAddr
	str	r2, [sp, #48]	@, %sfp
	ldr	r0, [sp, #608]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #612]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	add	r1, sp, #604
	ldmia	r1, {r1, r3, ip}	@ phole ldm
	str	ip, [sp, #656]	@ MemRecord.Length, ChanMemScd.Length
	str	r3, [sp, #648]	@ MemRecord.PhyAddr, ChanMemScd.PhyAddr
	str	r1, [sp, #652]	@ MemRecord.VirAddr, ChanMemScd.VirAddr
	ldr	ip, [r5, #4]	@ temp.3101, <variable>.Purpose
	b	.L860	@
.L908:
	ldr	r0, [r5, #64]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r0, #0	@ <variable>.s32SlotWidth,
	beq	.L841	@,
	ldr	r1, [r5, #68]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r1, #0	@ <variable>.s32SlotHeight,
	bne	.L823	@,
	b	.L841	@
.L910:
	add	r3, r5, #72	@ tmp212, pChanOption,
	add	lr, r5, #88	@ tmp214, pChanOption,
	add	ip, r5, #104	@ tmp216, pChanOption,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp212,,,,
	stmia	r8, {r0, r1, r2, r3}	@ tmp647,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp214,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp646,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp216,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp644,,,,
	ldr	r3, [sp, #636]	@ ChanMemCtx.VirAddr, ChanMemCtx.VirAddr
	cmp	r3, #0	@ ChanMemCtx.VirAddr,
	beq	.L841	@,
	ldr	r1, [sp, #592]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r0, [sp, #640]	@ ChanMemCtx.Length, ChanMemCtx.Length
	cmp	r0, r1	@ ChanMemCtx.Length, DetailMemSize.ChanCtxDetailMem
	blt	.L841	@,
	ldr	r2, [sp, #652]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	cmp	r2, #0	@ ChanMemScd.VirAddr,
	beq	.L830	@,
	ldr	lr, [sp, #588]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	ip, [sp, #656]	@ ChanMemScd.Length, ChanMemScd.Length
	cmp	ip, lr	@ ChanMemScd.Length, DetailMemSize.ScdDetailMem
	blt	.L830	@,
.L831:
	ldr	r1, [sp, #668]	@ D.37061, ChanMemVDH.VirAddr
	cmp	r1, #0	@ D.37061,
	beq	.L841	@,
	ldr	r2, [sp, #672]	@ D.37063, ChanMemVDH.Length
	ldr	r0, [sp, #584]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	cmp	r2, r0	@ D.37063, DetailMemSize.VdhDetailMem
	blt	.L841	@,
	ldr	r0, [sp, #664]	@, ChanMemVDH.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #632
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r6, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r6, #2	@ <variable>.Purpose,
	beq	.L919	@,
	mov	r6, #0	@ s32SelfAllocChanMem_vdh,
	ldr	r0, [sp, #648]	@, ChanMemScd.PhyAddr
	ldr	r1, [sp, #652]	@, ChanMemScd.VirAddr
	mov	fp, r6	@ s32SelfAllocChanMem_pmv, s32SelfAllocChanMem_vdh
	ldr	r2, [sp, #656]	@, ChanMemScd.Length
	str	r6, [sp, #44]	@ s32SelfAllocChanMem_vdh, %sfp
	bl	MEM_AddMemRecord	@
	str	r6, [sp, #48]	@ s32SelfAllocChanMem_vdh, %sfp
	b	.L835	@
.L856:
	ldr	r0, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	r1, #0	@ tmp308,
	ldr	lr, [sp, #668]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	str	r1, [sp, #48]	@ tmp308, %sfp
	str	r1, [sp, #656]	@ tmp308, ChanMemScd.Length
	str	r0, [sp, #648]	@ ChanMemVDH.PhyAddr, ChanMemScd.PhyAddr
	str	lr, [sp, #652]	@ ChanMemVDH.VirAddr, ChanMemScd.VirAddr
	b	.L860	@
.L869:
	ldr	r0, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	lr, #0	@ tmp328,
	ldr	r2, [sp, #668]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	mov	fp, lr	@ s32SelfAllocChanMem_pmv, tmp328
	str	lr, [sp, #624]	@ tmp328, ChanMemPmv.Length
	str	r0, [sp, #616]	@ ChanMemVDH.PhyAddr, ChanMemPmv.PhyAddr
	str	r2, [sp, #620]	@ ChanMemVDH.VirAddr, ChanMemPmv.VirAddr
	b	.L835	@
.L830:
	ldr	r3, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r3, #1	@ <variable>.Purpose,
	bne	.L831	@,
	b	.L841	@
.L919:
	mov	r6, #0	@ s32SelfAllocChanMem_vdh,
	str	r6, [sp, #44]	@ s32SelfAllocChanMem_vdh, %sfp
	mov	fp, r6	@ s32SelfAllocChanMem_pmv, s32SelfAllocChanMem_vdh
	str	r6, [sp, #48]	@ s32SelfAllocChanMem_vdh, %sfp
	b	.L835	@
.L911:
	add	r6, sp, #600	@ tmp235,,
	mov	r1, ip	@, D.37039
	movw	r0, #:lower16:.LC5	@,
	ldr	r2, [sp, #592]	@, DetailMemSize.ChanCtxDetailMem
	movt	r0, #:upper16:.LC5	@,
	mov	r3, r6	@, tmp235
	mov	sl, #1	@ tmp236,
	str	sl, [sp, #0]	@ tmp236,
	bl	MEM_AllocMemBlock	@
	subs	r8, r0, #0	@ D.37074,
	bne	.L841	@,
	ldr	r1, [sp, #604]	@, MemRecord.VirAddr
	ldr	r2, [sp, #612]	@, MemRecord.Length
	ldr	r0, [sp, #608]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #608]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, r8	@, D.37074
	movw	r0, #:lower16:.LC6	@,
	ldr	r2, [sp, #584]	@, DetailMemSize.VdhDetailMem
	movt	r0, #:upper16:.LC6	@,
	str	ip, [sp, #632]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	mov	r3, r6	@, tmp235
	ldr	ip, [sp, #604]	@ MemRecord.VirAddr, MemRecord.VirAddr
	str	r8, [sp, #0]	@ D.37074,
	str	ip, [sp, #636]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	ldr	ip, [sp, #612]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #640]	@ MemRecord.Length, ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	r8, r0, #0	@ D.37081,
	bne	.L920	@,
	ldr	r1, [sp, #604]	@, MemRecord.VirAddr
	ldr	r2, [sp, #612]	@, MemRecord.Length
	ldr	r0, [sp, #608]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [sp, #608]	@ temp.3004, MemRecord.PhyAddr
	ldr	r3, [sp, #604]	@ temp.3005, MemRecord.VirAddr
	cmp	r1, #2	@ <variable>.Purpose,
	ldr	fp, [sp, #612]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #664]	@ temp.3004, ChanMemVDH.PhyAddr
	str	r3, [sp, #668]	@ temp.3005, ChanMemVDH.VirAddr
	str	fp, [sp, #672]	@ MemRecord.Length, ChanMemVDH.Length
	beq	.L839	@,
	mov	r1, r8	@, D.37081
	mov	r3, r6	@, tmp235
	movw	r0, #:lower16:.LC7	@,
	ldr	r2, [sp, #588]	@, DetailMemSize.ScdDetailMem
	movt	r0, #:upper16:.LC7	@,
	str	r8, [sp, #0]	@ D.37081,
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.37088,
	bne	.L921	@,
	ldr	r2, [sp, #612]	@, MemRecord.Length
	mov	r6, sl	@ s32SelfAllocChanMem_vdh, tmp236
	ldr	r0, [sp, #608]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #604]	@, MemRecord.VirAddr
	str	sl, [sp, #44]	@ s32SelfAllocChanMem_vdh, %sfp
	bl	MEM_AddMemRecord	@
	str	sl, [sp, #48]	@ s32SelfAllocChanMem_vdh, %sfp
	ldr	r2, [sp, #608]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	sl, [sp, #604]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r8, [sp, #612]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #648]	@ MemRecord.PhyAddr, ChanMemScd.PhyAddr
	str	sl, [sp, #652]	@ MemRecord.VirAddr, ChanMemScd.VirAddr
	str	r8, [sp, #656]	@ MemRecord.Length, ChanMemScd.Length
	b	.L835	@
.L874:
	mov	fp, #0	@ s32SelfAllocChanMem_pmv,
	b	.L835	@
.L839:
	mov	r6, sl	@ s32SelfAllocChanMem_vdh, tmp236
	mov	fp, r8	@ s32SelfAllocChanMem_pmv, D.37081
	str	r2, [sp, #648]	@ temp.3004, ChanMemScd.PhyAddr
	str	sl, [sp, #44]	@ s32SelfAllocChanMem_vdh, %sfp
	str	r3, [sp, #652]	@ temp.3005, ChanMemScd.VirAddr
	str	r8, [sp, #48]	@ s32SelfAllocChanMem_pmv, %sfp
	str	r8, [sp, #656]	@ D.37081, ChanMemScd.Length
	b	.L835	@
.L915:
	ldr	lr, [sp, #636]	@ D.37194, ChanMemCtx.VirAddr
	movw	ip, #:lower16:g_FrameRate	@ tmp337,
	ldr	r3, [r8, #280]	@ g_ChanTick, g_ChanTick
	movt	ip, #:upper16:g_FrameRate	@ tmp337,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp339,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp339,
	mov	r0, lr	@, D.37194
	add	r9, r3, #1	@ tmp344, g_ChanTick,
	str	lr, [r8, #0]	@ D.37194, s_pstVfmwChan
	mov	r3, #30	@ tmp338,
	str	r9, [r8, #280]	@ tmp344, g_ChanTick
	movw	r1, #:lower16:291240	@,
	str	r3, [ip, #0]	@ tmp338, g_FrameRate
	movt	r1, #:upper16:291240	@,
	str	r3, [r2, #0]	@ tmp338, g_LastFrameRate
	bl	__memzero	@
	ldr	r9, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, r5	@, pChanOption
	mov	r2, #152	@,
	add	r3, r9, #1440	@, s_pstVfmwChan,
	movw	r9, #:lower16:s_pFspInst	@,
	add	r0, r3, #4	@,,
	movt	r9, #:upper16:s_pFspInst	@,
	bl	memcpy	@
	ldr	ip, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r2, #:lower16:499120	@ tmp357,
	movt	r2, #:upper16:499120	@ tmp357,
	movw	r3, #:lower16:181760	@ tmp370,
	movt	r3, #:upper16:181760	@ tmp370,
	str	r2, [ip, #1388]	@ tmp357, <variable>.stSynExtraData.s32BasicCtxSize
	movw	r1, #:lower16:217512	@ tmp381,
	ldr	r0, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r1, #:upper16:217512	@ tmp381,
	movw	r2, #:lower16:s_SmIIS	@ tmp384,
	movw	ip, #:lower16:167880	@ tmp386,
	movt	r2, #:upper16:s_SmIIS	@ tmp384,
	movt	ip, #:upper16:167880	@ tmp386,
	str	r7, [r0, #24]	@ eCapLevel, <variable>.eChanCapLevel
	ldr	r0, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r9, [sp, #28]	@, %sfp
	movw	r9, #:lower16:217508	@ tmp397,
	movt	r9, #:upper16:217508	@ tmp397,
	str	r7, [r0, #920]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	ldr	r0, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [r0, #1404]	@ s_pstVfmwChan, <variable>.stSynExtraData.s32MoreGapEnable
	ldr	lr, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [lr, #0]	@ s_pstVfmwChan, <variable>.s32ChanID
	ldr	r0, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	strb	sl, [r0, r3]	@ s_pstVfmwChan, <variable>.FspInst.s32InstID
	ldr	r0, [r5, #0]	@, <variable>.eAdapterType
	ldr	lr, [r8, #0]	@, s_pstVfmwChan
	str	r0, [lr, #20]	@, <variable>.eAdapterType
	mov	lr, #19	@,
	ldr	r0, [r8, #0]	@, s_pstVfmwChan
	str	lr, [r0, #880]	@, <variable>.eVidStd
	ldr	r0, [r8, #0]	@, s_pstVfmwChan
	str	lr, [r0, r1]	@, <variable>.stSynCtx.eVidStd
	ldr	lr, [r8, #0]	@ temp.3157, s_pstVfmwChan
	add	r0, lr, #1632	@ tmp385, temp.3157,
	str	r0, [r2, #116]	@ tmp385, s_SmIIS.pSmInstArray
	str	sl, [lr, ip]	@ s_pstVfmwChan, <variable>.SmInstArray.InstID
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r0, [r8, #0]	@ temp.3159, s_pstVfmwChan
	add	r2, r0, #181248	@ tmp391, temp.3159,
	add	r1, r2, #512	@ tmp391, tmp391,
	str	r1, [ip, #0]	@ tmp391, s_pFspInst
	strb	sl, [r0, r3]	@ s_pstVfmwChan, <variable>.FspInst.s32InstID
	ldr	lr, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [r8, #280]	@ g_ChanTick, g_ChanTick
	str	r2, [lr, r9]	@ g_ChanTick, <variable>.u32ChanTick
	ldr	r9, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [r9, #1604]	@ s_pstVfmwChan, <variable>.stSynExtraData.s32DnrEnable
	ldr	r3, [r5, #140]	@ D.37209, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	cmp	r3, #0	@ D.37209,
	bne	.L882	@,
	ldr	r1, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r3, [r1, #1608]	@ D.37209, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	sl, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r3, [sl, #1612]	@ D.37209, <variable>.stSynExtraData.s32DSDThrHeight
.L883:
	mov	r3, #0	@ s32i,
	mov	lr, #-2147483648	@ tmp651,
	mov	r8, r3	@ tmp650, s32i
.L884:
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	ip, r3, asl #4	@ tmp430, s32i,
	add	r1, r3, #13504	@ tmp443, s32i,
	add	r3, r3, #1	@ tmp652, s32i,
	add	r0, ip, r9	@ tmp431, tmp430, s_pstVfmwChan
	add	r1, r1, #23	@ tmp443, tmp443,
	add	sl, r0, #216064	@ tmp432, tmp431,
	mov	r0, r3, asl #4	@ tmp657, tmp652,
	add	r9, sl, #360	@ tmp432, tmp432,
	add	r2, r3, #13504	@ tmp667, tmp652,
	add	r2, r2, #23	@ tmp667, tmp667,
	add	r3, r3, #1	@ s32i, tmp652,
	str	r8, [r9, #0]	@ tmp650, <variable>.eFrameState
	cmp	r3, #64	@ s32i,
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	sl, #:lower16:.LANCHOR0	@ tmp654,
	movt	sl, #:upper16:.LANCHOR0	@ tmp654,
	add	ip, ip, r9	@ tmp438, tmp430, s_pstVfmwChan
	add	ip, ip, #216064	@ tmp439, tmp438,
	add	ip, ip, #360	@ tmp439, tmp439,
	str	lr, [ip, #4]	@ tmp651, <variable>.s32FrameAddr
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r8, [ip, r1, asl #4]	@ tmp650, <variable>.s32FrameSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, ip, r1, asl #4	@, tmp452, s_pstVfmwChan, tmp443,
	str	r8, [r1, #4]	@ tmp650, <variable>.s32UsingCount
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r0, r1	@ tmp658, tmp657, s_pstVfmwChan
	add	r1, ip, #216064	@ tmp659, tmp658,
	add	ip, r1, #360	@ tmp659, tmp659,
	str	r8, [ip, #0]	@ tmp650, <variable>.eFrameState
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, r0, r1	@ tmp662, tmp657, s_pstVfmwChan
	add	ip, r0, #216064	@ tmp663, tmp662,
	add	r0, ip, #360	@ tmp663, tmp663,
	str	lr, [r0, #4]	@ tmp651, <variable>.s32FrameAddr
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r8, [r1, r2, asl #4]	@ tmp650, <variable>.s32FrameSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, ip, r2, asl #4	@, tmp670, s_pstVfmwChan, tmp667,
	str	r8, [r0, #4]	@ tmp650, <variable>.s32UsingCount
	bne	.L884	@,
	ldr	lr, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #16	@,
	add	ip, lr, #217088	@, s_pstVfmwChan,
	add	r0, ip, #360	@,,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@, tmp650
	bl	VCTRL_ResetChan	@
	ldr	r1, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	ip, #:lower16:217488	@ tmp467,
	movt	ip, #:upper16:217488	@ tmp467,
	str	r6, [r1, #216]	@ s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	ldr	r0, [sp, #48]	@, %sfp
	ldr	r2, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r0, [r2, #220]	@, <variable>.s32SelfAllocChanMem_scd
	ldr	lr, [sp, #44]	@, %sfp
	ldr	r3, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r3, #224]	@, <variable>.s32SelfAllocChanMem_ctx
	ldr	r6, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	fp, [r6, ip]	@ s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	ldr	r3, [r5, #8]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r3, #3	@ <variable>.MemAllocMode,
	ldrne	r3, [sl, #0]	@ prephitmp.2966, s_pstVfmwChan
	beq	.L922	@,
.L886:
	mov	r2, #0	@ tmp495,
	str	r2, [r3, #148]	@ tmp495, <variable>.s32OneChanMem
.L887:
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r6, #:lower16:217500	@ tmp525,
	ldr	ip, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	movt	r6, #:upper16:217500	@ tmp525,
	movw	r2, #:lower16:217496	@ tmp529,
	movt	r2, #:upper16:217496	@ tmp529,
	movw	r3, #:lower16:217504	@ tmp533,
	movt	r3, #:upper16:217504	@ tmp533,
	str	ip, [r0, #176]	@ ChanMemVDH.PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	movw	r0, #:lower16:.LANCHOR0	@ tmp496,
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r0, #:upper16:.LANCHOR0	@ tmp496,
	ldr	lr, [sp, #668]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	str	lr, [r1, #172]	@ ChanMemVDH.VirAddr, <variable>.stChanMem_vdh.VirAddr
	ldr	ip, [sp, #672]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r1, #180]	@ ChanMemVDH.Length, <variable>.stChanMem_vdh.Length
	ldr	lr, [sp, #648]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [ip, #192]	@ ChanMemScd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [sp, #652]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [ip, #188]	@ ChanMemScd.VirAddr, <variable>.stChanMem_scd.VirAddr
	ldr	lr, [sp, #656]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r1, #196]	@ ChanMemScd.Length, <variable>.stChanMem_scd.Length
	ldr	ip, [sp, #632]	@ ChanMemCtx.PhyAddr, ChanMemCtx.PhyAddr
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r1, #208]	@ ChanMemCtx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	ldr	lr, [sp, #636]	@ ChanMemCtx.VirAddr, ChanMemCtx.VirAddr
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [ip, #204]	@ ChanMemCtx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	ldr	r1, [sp, #640]	@ ChanMemCtx.Length, ChanMemCtx.Length
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [ip, #212]	@ ChanMemCtx.Length, <variable>.stChanMem_ctx.Length
	ldr	lr, [sp, #616]	@ ChanMemPmv.PhyAddr, ChanMemPmv.PhyAddr
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r1, r6]	@ ChanMemPmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	ldr	ip, [sp, #620]	@ ChanMemPmv.VirAddr, ChanMemPmv.VirAddr
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r1, r2]	@ ChanMemPmv.VirAddr, <variable>.stChanMem_pmv.VirAddr
	ldr	r1, [sp, #624]	@ ChanMemPmv.Length, ChanMemPmv.Length
	ldr	r6, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r6, r3]	@ ChanMemPmv.Length, <variable>.stChanMem_pmv.Length
	ldr	lr, [sp, #652]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	str	lr, [r4, #264]	@ ChanMemScd.VirAddr, g_scd_vir
	str	r2, [r3, #248]	@ ChanMemVDH.PhyAddr, <variable>.s32SdecMemAddr
	ldr	r6, [sp, #672]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [ip, #252]	@ ChanMemVDH.Length, <variable>.s32SdecMemSize
	ldr	r3, [r4, #0]	@ temp.3216, s_pstVfmwChan
	ldr	lr, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L888	@,
	ldr	r2, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	cmp	r7, #24	@ eCapLevel,
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp546,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp546,
	moveq	r1, #1	@ DnrImgNum,
	str	r2, [r3, #236]	@ ChanMemVDH.PhyAddr, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [r7, #36]	@ D.37250, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldrne	r1, [r5, #60]	@ DnrImgNum, <variable>.s32DisplayFrameNum
	cmp	ip, #0	@ D.37250,
	beq	.L901	@,
	ldr	r2, [r5, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp551,
	ldr	r3, [r5, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r6, #0	@ tmp553,
	str	r1, [sp, #4]	@ DnrImgNum,
	add	r7, sp, #60	@ tmp555,,
	str	r6, [sp, #12]	@ tmp553,
	mov	r6, #64	@ tmp556,
	ldr	r0, [sp, #664]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #672]	@, ChanMemVDH.Length
	str	lr, [sp, #8]	@ tmp551,
	str	r7, [sp, #16]	@ tmp555,
	str	r6, [sp, #20]	@ tmp556,
	str	lr, [sp, #0]	@ tmp551,
	blx	ip	@ D.37250
	cmp	r0, #0	@,
	bne	.L901	@,
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r1, [sp, #64]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r1, [r3, #240]	@ stMemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
.L894:
	ldr	r2, [r4, #0]	@ temp.3225, s_pstVfmwChan
	mov	r6, #0	@ tmp575,
	ldr	r1, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	r0, r6	@, tmp575
	movw	r7, #:lower16:.LANCHOR0	@ tmp564,
	movt	r7, #:upper16:.LANCHOR0	@ tmp564,
	ldr	r3, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	add	lr, r3, r1	@ tmp567, <variable>.s32OffLineDNRMemSize, ChanMemVDH.PhyAddr
	str	lr, [r2, #228]	@ tmp567, <variable>.s32VdmChanMemAddr
	ldr	r2, [r4, #0]	@ temp.3227, s_pstVfmwChan
	ldr	ip, [sp, #672]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r1, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	sub	r3, ip, #16	@ tmp569, ChanMemVDH.Length,
	rsb	lr, r1, r3	@ tmp572, <variable>.s32OffLineDNRMemSize, tmp569
	str	lr, [r2, #232]	@ tmp572, <variable>.s32VdmChanMemSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [ip, #260]	@ tmp575, <variable>.s32BpdChanMemAddr
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r3, #264]	@ tmp575, <variable>.s32BpdChanMemSize
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r1, #268]	@ tmp575, <variable>.s32Vp8SegIdChanMemAddr
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [lr, #272]	@ tmp575, <variable>.s32Vp8SegIdChanMemSize
	ldr	ip, [sp, #648]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r2, #244]	@ ChanMemScd.PhyAddr, <variable>.s32ScdChanMemAddr
	ldr	r1, [sp, #656]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r3, #256]	@ ChanMemScd.Length, <variable>.s32ScdChanMemSize
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [lr, #140]	@ tmp575, <variable>.s32SCDInstID
	bl	FSP_EnableInstance	@
	subs	r6, r0, #0	@ D.37259,
	bne	.L901	@,
	ldr	r3, [r7, #0]	@ temp.3238, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L896	@,
	ldr	lr, [r3, #236]	@ D.37264, <variable>.s32OffLineDnrMemAddr
	mov	r0, lr	@, D.37264
	str	lr, [sp, #680]	@ D.37264, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r7, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r5, #16]	@, <variable>.s32MaxHeight
	add	r1, sp, #680	@,,
	ldr	r2, [r5, #12]	@, <variable>.s32MaxWidth
	str	r0, [sp, #684]	@, DnrMem.VirAddr
	mov	r0, r6	@, D.37259
	ldr	ip, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [sp, #688]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L901	@,
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L901	@,
.L896:
	mov	r0, #0	@,
	bl	SM_ClearInst	@
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	ip, #:lower16:293288	@,
	movt	ip, #:upper16:293288	@,
	mov	r0, #0	@,
	ldr	r3, [r2, #204]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	r1, r3, ip	@, <variable>.stChanMem_ctx.VirAddr,
	bl	OpenUsdPool_WithMem	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp609,
	mov	r0, #0	@,
	str	r2, [r1, #4]	@ tmp609, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L925	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ ChanID,
	b	.L819	@
.L882:
	rsb	r1, r3, r3, asl #3	@, tmp414, D.37209, D.37209,
	movw	lr, #:lower16:CapItem	@ tmp411,
	movt	lr, #:upper16:CapItem	@ tmp411,
	ldr	sl, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [lr, r1, asl #2]	@ tmp417, CapItem
	str	r3, [sl, #1608]	@ tmp417, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r9, [r5, #140]	@ <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	r0, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	rsb	r2, r9, r9, asl #3	@, tmp424, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	ip, r2, #1	@ tmp425, tmp424,
	ldr	r8, [lr, ip, asl #2]	@ tmp426, CapItem
	str	r8, [r0, #1612]	@ tmp426, <variable>.stSynExtraData.s32DSDThrHeight
	b	.L883	@
.L922:
	ldr	r3, [sl, #0]	@ prephitmp.2966, s_pstVfmwChan
	ldr	r2, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r2, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L886	@,
	ldr	r6, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r6, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L886	@,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r0, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L886	@,
	ldr	r1, [sp, #648]	@ temp.3178, ChanMemScd.PhyAddr
	ldr	r0, [sp, #656]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	lr, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	r6, [sp, #52]	@, %sfp
	add	ip, r1, r0	@ tmp475, temp.3178, ChanMemScd.Length
	cmp	r6, #1	@,
	cmpeq	ip, lr	@, tmp475, ChanMemVDH.PhyAddr
	bne	.L886	@,
	str	r1, [r3, #160]	@ temp.3178, <variable>.stChanMem.PhyAddr
	ldr	r0, [sp, #652]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	r3, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r0, [r3, #156]	@ ChanMemScd.VirAddr, <variable>.stChanMem.VirAddr
	ldr	lr, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r6, [sp, #656]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	ip, [sp, #672]	@ ChanMemVDH.Length, ChanMemVDH.Length
	add	r1, ip, r6	@ tmp490, ChanMemVDH.Length, ChanMemScd.Length
	str	r1, [lr, #164]	@ tmp490, <variable>.stChanMem.Length
	ldr	r3, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r2, [r3, #148]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L887	@
.L888:
	mov	ip, #0	@ tmp560,
	str	ip, [r3, #236]	@ tmp560, <variable>.s32OffLineDnrMemAddr
	ldr	r2, [r0, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r2, #240]	@ tmp560, <variable>.s32OffLineDNRMemSize
	b	.L894	@
.L901:
.L893:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r4, #0]	@ temp.3246, s_pstVfmwChan
	add	r6, sp, #556	@,,
	movw	r1, #:lower16:217488	@ tmp616,
	add	r0, r3, #104	@, temp.3246,
	movt	r1, #:upper16:217488	@ tmp616,
	ldr	fp, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r2, r3, #152	@ tmp619, temp.3246,
	str	r0, [sp, #44]	@, %sfp
	add	r7, r3, #200	@ tmp621, temp.3246,
	add	r8, r3, #168	@ tmp623, temp.3246,
	add	r9, r3, #184	@ tmp625, temp.3246,
	str	fp, [sp, #548]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	ip, r3, #217088	@ tmp630, temp.3246,
	ldr	r0, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r5, sp, #476	@ tmp618,,
	str	r6, [sp, #36]	@, %sfp
	add	r6, sp, #568	@,,
	str	r6, [sp, #32]	@, %sfp
	add	lr, sp, #524	@ tmp620,,
	str	r0, [sp, #540]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	add	sl, sp, #492	@ tmp622,,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	add	fp, sp, #508	@ tmp624,,
	add	ip, ip, #404	@ tmp630, tmp630,
	mov	r6, #0	@ tmp632,
	str	r0, [sp, #544]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #552]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp619,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp618,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp621,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp620,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp623,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp622,,,,
	ldr	lr, [sp, #44]	@, %sfp
	ldmia	r9, {r0, r1, r2, r3}	@ tmp625,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp624,,,,
	ldr	r3, [sp, #36]	@, %sfp
	ldmia	lr, {r0, r1, r2}	@,,,
	ldr	lr, [sp, #32]	@, %sfp
	stmia	r3, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp630,,,,
	str	r6, [r4, #0]	@ tmp632, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r6	@, tmp632
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L925	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, tmp632
	mov	r1, r5	@, tmp618
	bl	VCTRL_FreeChanResource	@
	mvn	r0, #0	@ ChanID,
	b	.L819	@
.L917:
	ldr	r1, [sp, #44]	@, %sfp
	cmp	r1, #1	@,
	bne	.L841	@,
.L905:
	ldr	r0, [sp, #632]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #636]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #632
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L841	@
.L912:
	ldr	r1, [sp, #44]	@, %sfp
	cmp	r1, #1	@,
	bne	.L841	@,
	b	.L905	@
.L916:
	ldr	r1, [sp, #44]	@, %sfp
	cmp	r1, #1	@,
	beq	.L923	@,
.L871:
	cmp	r6, #1	@ s32SelfAllocChanMem_vdh,
	beq	.L924	@,
.L872:
	ldr	ip, [sp, #48]	@, %sfp
	cmp	ip, #1	@,
	bne	.L841	@,
.L903:
	ldr	r0, [sp, #648]	@, ChanMemScd.PhyAddr
	ldr	r1, [sp, #652]	@, ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L841	@
.L918:
	ldr	r0, [sp, #44]	@, %sfp
	cmp	r0, #1	@,
	beq	.L907	@,
.L865:
	cmp	r6, #1	@ s32SelfAllocChanMem_vdh,
	bne	.L841	@,
	ldr	r0, [sp, #664]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #668]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #664
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L841	@
.L920:
	ldr	r0, [sp, #632]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #636]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #632
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ChanID,
	b	.L819	@
.L913:
	ldr	ip, [sp, #44]	@, %sfp
	cmp	ip, #1	@,
	bne	.L865	@,
.L907:
	ldr	r0, [sp, #632]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #636]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #632
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L865	@
.L914:
	ldr	r1, [sp, #44]	@, %sfp
	cmp	r1, #1	@,
	bne	.L878	@,
	ldr	r0, [sp, #632]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #636]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #632
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L878:
	cmp	r6, #1	@ s32SelfAllocChanMem_vdh,
	bne	.L879	@,
	ldr	r0, [sp, #664]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #668]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #664
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L879:
	ldr	ip, [sp, #48]	@, %sfp
	cmp	ip, #1	@,
	bne	.L841	@,
	b	.L903	@
.L921:
	ldr	r0, [sp, #632]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #636]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [sp, #664]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #668]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #632
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	add	r0, sp, #664
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ChanID,
	b	.L819	@
.L924:
	ldr	r0, [sp, #664]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #668]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #664
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L872	@
.L923:
	ldr	r0, [sp, #632]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #636]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #632
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L871	@
.L926:
	.align	2
.L925:
	.word	.LANCHOR0+268
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
.LFB1947:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #24	@ eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ eCapLevel, eCapLevel
	.pad #212
	sub	sp, sp, #212	@,,
	mov	r8, r1	@ pChanMem, pChanMem
	bhi	.L941	@,
	add	r5, sp, #168	@ tmp220,,
	mov	r1, #152	@,
	mov	r0, sp	@,
	add	r7, sp, r1	@ tmp224,,
	bl	__memzero	@
	mov	r0, r5	@, tmp220
	mov	r1, #16	@,
	mov	r6, sp	@ tmp223,
	bl	__memzero	@
	mov	r0, r7	@, tmp224
	mov	r1, #16	@,
	bl	__memzero	@
	sub	r0, r4, #18	@ D.39955, eCapLevel,
	cmp	r0, #7	@ D.39955,
	mov	r2, r4, asl #3	@ tmp221, eCapLevel,
	rsb	r1, r4, r2	@ tmp153, eCapLevel, tmp221
	mov	lr, #1	@ tmp148,
	add	ip, r1, #1	@ tmp161, tmp153,
	str	lr, [sp, #4]	@ tmp148, stChanOption.Purpose
	movw	r3, #:lower16:CapItem	@ tmp222,
	mov	lr, #2	@ tmp149,
	movt	r3, #:upper16:CapItem	@ tmp222,
	str	lr, [sp, #8]	@ tmp149, stChanOption.MemAllocMode
	mov	lr, #32	@ tmp164,
	str	lr, [sp, #24]	@ tmp164, stChanOption.s32MaxSpsNum
	mov	lr, #256	@ tmp165,
	str	lr, [sp, #28]	@ tmp165, stChanOption.s32MaxPpsNum
	movwls	lr, #:lower16:.LANCHOR1	@ tmp166,
	movtls	lr, #:upper16:.LANCHOR1	@ tmp166,
	addls	r0, lr, r0, asl #2	@, tmp169, tmp166, D.39955,
	ldr	ip, [r3, ip, asl #2]	@ tmp162, CapItem
	ldr	r1, [r3, r1, asl #2]	@ tmp156, CapItem
	movhi	lr, #6	@ MinDispFspNum,
	ldrls	lr, [r0, #32]	@ MinDispFspNum, CSWTCH.747
	rsb	r0, r4, r2	@ tmp175, eCapLevel, tmp221
	str	ip, [sp, #16]	@ tmp162, stChanOption.s32MaxHeight
	add	ip, r3, r0, asl #2	@, tmp177, tmp222, tmp175,
	rsb	r0, r4, r2	@ tmp188, eCapLevel, tmp221
	str	r1, [sp, #12]	@ tmp156, stChanOption.s32MaxWidth
	mov	r1, #136	@ tmp163,
	str	r1, [sp, #20]	@ tmp163, stChanOption.s32MaxSliceNum
	mov	r2, #1	@ tmp181,
	ldr	r1, [ip, #12]	@ D.36898, CapItem
	add	ip, r3, r0, asl #2	@, tmp190, tmp222, tmp188,
	str	lr, [sp, #60]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r0, r4	@, eCapLevel
	cmp	lr, r1	@ MinDispFspNum, D.36898
	ldr	r3, [ip, #24]	@ tmp192, CapItem
	rsblt	r1, lr, r1	@ tmp180, MinDispFspNum, D.36898
	str	r2, [sp, #40]	@ tmp181, stChanOption.s32SupportBFrame
	movge	r1, #1	@ tmp179,
	str	r2, [sp, #44]	@ tmp181, stChanOption.s32SupportH264
	cmp	r4, #24	@ eCapLevel,
	str	r1, [sp, #32]	@ tmp180, stChanOption.s32MaxRefFrameNum
	streq	r2, [sp, #60]	@ tmp181, stChanOption.s32DisplayFrameNum
	mov	r1, #0	@ tmp193,
	str	r2, [sp, #52]	@ tmp181, stChanOption.s32ReRangeEn
	add	r2, sp, #184	@,,
	streq	r1, [sp, #32]	@ tmp193, stChanOption.s32MaxRefFrameNum
	str	r1, [sp, #64]	@ tmp193, stChanOption.s32SlotWidth
	str	r1, [sp, #68]	@ tmp193, stChanOption.s32SlotHeight
	add	r1, sp, #196	@,,
	str	r3, [sp, #56]	@ tmp192, stChanOption.s32SCDBufSize
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L941	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L936	@,
	ldr	sl, [r8, #8]	@ D.36911, <variable>.Length
	cmp	sl, #0	@ D.36911,
	beq	.L936	@,
	ldr	lr, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	beq	.L937	@,
	ldr	ip, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L937	@,
	ldr	r0, [sp, #196]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [sp, #184]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r2, r0	@ tmp201, ScdChanMemSize, VdmChanMemSize
	cmp	sl, r3	@ D.36911, tmp201
	blt	.L937	@,
	ldr	r8, [sp, #188]	@ D.36924, ScdChanMemSize
	add	r9, sp, #88	@ tmp213,,
	str	lr, [sp, #152]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	add	fp, sp, #72	@ tmp215,,
	str	ip, [sp, #156]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, lr, r8	@ tmp208, <variable>.PhyAddr, D.36924
	str	r8, [sp, #160]	@ D.36924, scd_MemRecord.Length
	add	ip, ip, r8	@ tmp210, <variable>.VirAddr, D.36924
	ldmia	r7, {r0, r1, r2, r3}	@ tmp224,,,,
	str	lr, [sp, #168]	@ tmp208, vdh_MemRecord.PhyAddr
	str	ip, [sp, #172]	@ tmp210, vdh_MemRecord.VirAddr
	rsb	sl, r8, sl	@ tmp212, D.36924, D.36911
	str	sl, [sp, #176]	@ tmp212, vdh_MemRecord.Length
	mov	lr, #3	@ tmp204,
	mov	ip, #1	@ OneChanMemFlag,
	str	lr, [sp, #8]	@ tmp204, stChanOption.MemAllocMode
	stmia	r9, {r0, r1, r2, r3}	@ tmp213,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp220,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp215,,,,
	b	.L938	@
.L936:
	mov	ip, #0	@ OneChanMemFlag,
.L938:
	mov	r0, r4	@, eCapLevel
	mov	r1, sp	@,
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.36879,
.L929:
	add	sp, sp, #212	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L937:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L941:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36879,
	b	.L929	@
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_PartitionMemForStdUser
	.type	VCTRL_PartitionMemForStdUser, %function
VCTRL_PartitionMemForStdUser:
	.fnstart
.LFB1943:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r1, #31	@ MaxWidth,
	cmpgt	r2, #31	@, MaxHeight,
	.pad #52
	sub	sp, sp, #52	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp155,
	movt	r4, #:upper16:.LANCHOR0	@ tmp155,
	mov	r8, r2	@ MaxHeight, MaxHeight
	mov	r7, r1	@ MaxWidth, MaxWidth
	mov	r6, r0	@ ChanID, ChanID
	mov	r9, r3	@ MemAddr, MemAddr
	ldr	r2, [sp, #88]	@ MemSize, MemSize
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ble	.L946	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	sl, #0	@, tmp169
	moveq	sl, #1	@, tmp169
	beq	.L946	@,
	add	fp, sp, #8	@ tmp170,,
	mov	r1, #36	@,
	str	r2, [sp, #4]	@,
	mov	r0, fp	@, tmp170
	bl	__memzero	@
	mov	r1, fp	@, tmp170
	mov	r0, r6	@, ChanID
	mov	r3, #1	@,
	str	r7, [sp, #36]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	str	r8, [sp, #40]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	sl, [sp, #16]	@ tmp169, FspInstCfg.s32ExpectedPmvNum
	strb	sl, [sp, #8]	@ tmp169, FspInstCfg.s32DispLoopEnable
	strb	sl, [sp, #10]	@ tmp169, FspInstCfg.s32RprEnable
	str	r7, [sp, #20]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	str	r8, [sp, #24]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	strb	sl, [sp, #13]	@ tmp169, FspInstCfg.s32ExpectedDecFsNum
	strb	sl, [sp, #15]	@ tmp169, FspInstCfg.s32ExpectedDispFsNum
	strb	r3, [sp, #12]	@, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	ldr	r2, [sp, #4]	@,
	cmp	r0, #0	@,
	bne	.L946	@,
	mov	r1, r9	@, MemAddr
	mov	r0, r6	@, ChanID
	add	r3, sp, #44	@,,
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L946	@,
	mov	r0, r6	@, ChanID
	add	r1, r4, #284	@, tmp155,
	bl	FSP_GetInstInfo	@
	ldrb	r1, [r4, #285]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r0, r1	@ D.36757, FspInstInfo.s32DecFsNum
	cmp	r0, #16	@ D.36757,
	movge	r0, #16	@ D.36757,
	str	r0, [r5, #820]	@ D.36757, <variable>.s32UsrdecFrameNum
	cmp	r0, #2	@ D.36757,
	ble	.L946	@,
	ldr	r2, [r4, #3620]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r5, #752	@, pstChan,
	mov	r1, #64	@,
	str	r2, [r5, #816]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r5, #688	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r6, [r5, #820]	@ D.36756, <variable>.s32UsrdecFrameNum
	cmp	r6, #0	@ D.36756,
	ble	.L949	@,
	ldr	ip, [r4, #304]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #1	@ i,
	cmp	r2, r6	@ i, D.36756
	sub	lr, r6, #1	@ tmp198, D.36756,
	and	r0, lr, r2	@ tmp200, tmp198,
	add	r1, r5, #4	@ ivtmp.3310, pstChan,
	str	ip, [r5, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r3, r4, #336	@ ivtmp.3307, tmp155,
	bge	.L949	@,
	cmp	r0, #0	@ tmp200,
	beq	.L950	@,
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, r6	@ i, D.36756
	add	r3, r4, #388	@ ivtmp.3307, tmp155,
	str	r0, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r1, #4	@ ivtmp.3310, ivtmp.3310,
	bge	.L949	@,
.L950:
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	r0, r1, #4	@ tmp203, ivtmp.3310,
	cmp	r2, r6	@ i, D.36756
	str	lr, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r0, #4	@ ivtmp.3310, tmp203,
	ldr	ip, [r3, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #104	@ ivtmp.3307, ivtmp.3307,
	str	ip, [r0, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L950	@,
.L949:
	mov	r0, #0	@ D.36737,
.L944:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L946:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36737,
	b	.L944	@
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1958:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	mov	r3, #0	@ tmp162,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r1	@ pstCfg, pstCfg
	.pad #180
	sub	sp, sp, #180	@,,
	str	r3, [r1, #44]	@ tmp162, <variable>.s32VcmpEn
	bne	.L972	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp331,
	movt	r4, #:upper16:.LANCHOR0	@ tmp331,
	ldr	r3, [r4, #0]	@ D.37606, s_pstVfmwChan
	cmp	r3, #0	@ D.37606,
	beq	.L972	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L972	@,
	bl	VCTRL_CheckChanWH	@
	subs	r7, r0, #0	@ D.37612,
	bne	.L972	@,
	ldr	r1, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	ble	.L985	@,
.L965:
	mvn	r0, #0	@ D.37604,
.L961:
	add	sp, sp, #180	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L985:
	mov	r1, r5	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r8, r0, #0	@ D.37618,
	beq	.L986	@,
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #72	@,
	mov	r1, r5	@, pstCfg
	add	sl, sp, #16	@ tmp179,,
	add	r0, r8, #32	@, s_pstVfmwChan,
	add	r8, r5, #4	@ tmp330, pstCfg,
	bl	memcpy	@
	ldr	ip, [r5, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #120	@,
	mov	r0, sl	@, tmp179
	add	r9, sp, #172	@ tmp197,,
	str	ip, [fp, #12]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	fp, [r4, #0]	@ temp.3344, s_pstVfmwChan
	ldr	r0, [fp, #244]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	r0, [sp, #28]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [fp, #244]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, #68]	@, <variable>.s32LowdBufEnable
	ldr	r2, [r5, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	add	lr, sp, #40	@ tmp194,,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:269729792	@ tmp189,
	ldr	fp, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	movt	r3, #:upper16:269729792	@ tmp189,
	str	r1, [sp, #12]	@, %sfp
	str	r0, [sp, #16]	@, ScdInstCfg.pBufVirAddr
	ldmia	r8, {r0, r1}	@ tmp330,,
	ldr	ip, [ip, #256]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	strb	r2, [sp, #20]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	ldr	r2, [sp, #12]	@, %sfp
	stmia	lr, {r0, r1}	@ tmp194,,
	mov	r1, sl	@, tmp179
	mov	r0, r7	@, D.37612
	str	ip, [sp, #32]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	str	r3, [sp, #36]	@ tmp189, ScdInstCfg.RegPhyBaseAddr
	mvn	ip, #0	@ tmp191,
	str	r2, [sp, #60]	@, ScdInstCfg.ScdLowBufEnable
	str	ip, [sp, #48]	@ tmp191, ScdInstCfg.LastRawDisContinueCount
	str	fp, [sp, #24]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	str	r7, [sp, #52]	@ D.37612, ScdInstCfg.DisContinueRawPacketFlag
	str	r7, [sp, #56]	@ D.37612, ScdInstCfg.ScdLowdlyEnable
	bl	SM_Config	@
	mov	r0, r9	@, tmp197
	mov	r1, r6	@, <variable>.s32IsOpen
	bl	__memzero	@
	ldr	r0, [r5, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	cmp	r0, #0	@ <variable>.s32LowdBufEnable,
	bne	.L987	@,
.L967:
	ldr	r1, [r4, #0]	@ temp.3351, s_pstVfmwChan
	mov	ip, #0	@ tmp238,
	movw	r2, #:lower16:217512	@ tmp257,
	movt	r2, #:upper16:217512	@ tmp257,
	movw	r6, #:lower16:.LANCHOR0	@ tmp202,
	movt	r6, #:upper16:.LANCHOR0	@ tmp202,
	ldr	r0, [r1, #208]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	str	r0, [r1, #1392]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	ldr	r3, [r4, #0]	@ temp.3352, s_pstVfmwChan
	ldr	lr, [r3, #212]	@ <variable>.stChanMem_ctx.Length, <variable>.stChanMem_ctx.Length
	str	lr, [r3, #1396]	@ <variable>.stChanMem_ctx.Length, <variable>.stSynExtraData.s32ContextMemSize
	ldr	r1, [r4, #0]	@ temp.3353, s_pstVfmwChan
	ldr	r0, [r1, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	str	r0, [r1, #912]	@ <variable>.s32VdmChanMemAddr, <variable>.stSynExtraData.s32SyntaxMemAddr
	ldr	r3, [r4, #0]	@ temp.3354, s_pstVfmwChan
	ldr	lr, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	lr, [r3, #916]	@ <variable>.s32VdmChanMemSize, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r1, [r4, #0]	@ temp.3355, s_pstVfmwChan
	ldr	r0, [r1, #260]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r0, [r1, #924]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	r3, [r4, #0]	@ temp.3356, s_pstVfmwChan
	ldr	lr, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	lr, [r3, #928]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r1, [r4, #0]	@ temp.3357, s_pstVfmwChan
	ldr	r0, [r1, #268]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	r0, [r1, #932]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	r3, [r4, #0]	@ temp.3358, s_pstVfmwChan
	ldr	lr, [r3, #272]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	lr, [r3, #936]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r0, [r1, #892]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	lr, [r3, #888]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r0, [r1, #896]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	lr, [r3, #900]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r0, [r1, #904]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	lr, [r3, #1400]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r1, #1616]	@ tmp238, <variable>.stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r0, #1	@ <variable>.s32SupportAllP,
	movne	lr, #0	@, tmp242
	moveq	lr, #1	@, tmp242
	str	lr, [r3, #1416]	@ tmp242, <variable>.stSynExtraData.s32SupportAllP
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #64]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	str	r0, [r1, #1420]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldmia	r8, {r0, r1}	@ tmp330,,
	add	lr, r3, #1264	@ tmp247, s_pstVfmwChan,
	add	r3, lr, #12	@ tmp247, tmp247,
	stmia	r3, {r0, r1}	@ tmp247,,
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r1, #908]	@ tmp238, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r4, #0]	@ prephitmp.3327, s_pstVfmwChan
	ldr	r3, [r0, r2]	@ prephitmp.3329, <variable>.stSynCtx.eVidStd
	ldr	lr, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, lr	@ prephitmp.3329, <variable>.eVidStd
	beq	.L968	@,
	mov	r0, ip	@, tmp238
	bl	VCTRL_ResetChan	@
	ldr	ip, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r6, #0]	@ prephitmp.3327, s_pstVfmwChan
	cmp	ip, #18	@ <variable>.eVidStd,
	bne	.L983	@,
	ldr	r2, [r0, #1448]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	lr, [r0, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	cmp	r2, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	ldr	r3, [r0, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	ldrne	r1, [r0, #1456]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r2, [r0, #1460]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldreq	r1, [r0, #1508]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32SlotWidth
	ldreq	r2, [r0, #1512]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32SlotHeight
	mov	r0, #0	@,
	str	lr, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L972	@,
	ldr	r0, [r4, #0]	@ prephitmp.3327, s_pstVfmwChan
.L983:
	ldr	r3, [r0, #880]	@ prephitmp.3329, <variable>.eVidStd
.L968:
	movw	ip, #:lower16:217512	@ tmp265,
	movt	ip, #:upper16:217512	@ tmp265,
	movw	r6, #:lower16:.LANCHOR0	@ tmp266,
	movt	r6, #:upper16:.LANCHOR0	@ tmp266,
	str	r3, [r0, ip]	@ prephitmp.3329, <variable>.stSynCtx.eVidStd
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r1, [r0, #248]	@ temp.3373, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.3373
	str	r1, [sp, #156]	@ temp.3373, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, sp, #156	@,,
	str	r0, [sp, #160]	@, stMem.VirAddr
	mov	r0, #0	@,
	ldr	r8, [r3, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r8, [sp, #164]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	r8, r0, #0	@ D.37680,
	bne	.L965	@,
	add	r7, sp, #140	@ tmp332,,
	mov	r1, #16	@,
	mov	r0, r7	@, tmp332
	bl	__memzero	@
	ldr	r3, [r5, #0]	@ temp.3376, <variable>.eVidStd
	sub	r2, r3, #10	@ tmp273, temp.3376,
	cmp	r2, #2	@ tmp273,
	strhib	r8, [sp, #140]	@ D.37680, DnrChanCfgArgs.s32MirrorEn
	bhi	.L975	@,
	ldr	lr, [r6, #208]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L984	@,
	cmp	r3, #12	@ temp.3376,
	beq	.L984	@,
	ldr	r2, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	eor	ip, r2, #1	@ tmp285, <variable>.StdExt.Vp6Ext.bReversed,
	and	r0, ip, #1	@ tmp288, tmp285,
	strb	r0, [sp, #140]	@ tmp288, DnrChanCfgArgs.s32MirrorEn
.L975:
	ldrsb	lr, [sp, #140]	@ DnrChanCfgArgs.s32MirrorEn, DnrChanCfgArgs.s32MirrorEn
	mov	r3, #1	@ tmp301,
	ldr	ip, [r5, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	lr, #1	@ DnrChanCfgArgs.s32MirrorEn,
	strb	ip, [sp, #141]	@ <variable>.s32VcmpEn, DnrChanCfgArgs.s32VcmpEn
	moveq	ip, #0	@ tmp295,
	streqb	ip, [sp, #141]	@ tmp295, DnrChanCfgArgs.s32VcmpEn
	ldr	ip, [r4, #0]	@ temp.3382, s_pstVfmwChan
	ldr	r0, [r5, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldr	r1, [r5, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldr	r2, [r5, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [sp, #148]	@ <variable>.s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	strb	r1, [sp, #142]	@ <variable>.s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #144]	@ <variable>.s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r3, [sp, #152]	@ tmp301, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L988	@,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp332,,,,
	add	lr, ip, #217088	@ tmp306, temp.3382,
	add	ip, lr, #360	@ tmp306, tmp306,
	stmia	ip, {r0, r1, r2, r3}	@ tmp306,,,,
.L979:
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:181760	@ tmp310,
	movw	lr, #:lower16:s_SmIIS	@ tmp313,
	movt	r3, #:upper16:181760	@ tmp310,
	movt	lr, #:upper16:s_SmIIS	@ tmp313,
	mov	r1, #0	@ tmp311,
	strb	r1, [r0, r3]	@ tmp311, <variable>.FspInst.s32InstID
	movw	ip, #:lower16:166248	@ tmp315,
	ldr	r0, [lr, #116]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	movt	ip, #:upper16:166248	@ tmp315,
	movw	r2, #:lower16:.LANCHOR0	@ tmp308,
	movt	r2, #:upper16:.LANCHOR0	@ tmp308,
	str	r1, [r0, ip]	@ tmp311, <variable>.InstID
	ldr	r3, [r4, #0]	@ D.37726, s_pstVfmwChan
	cmp	r3, r1	@ D.37726,
	streq	r3, [r2, #3624]	@ D.37726, PrioArray
	ldrne	r0, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r1, #:lower16:g_ChanCtx	@ tmp320,
	movwne	r1, #:lower16:g_ChanCtx	@ tmp324,
	movteq	r1, #:upper16:g_ChanCtx	@ tmp320,
	movtne	r1, #:upper16:g_ChanCtx	@ tmp324,
	strne	r0, [r2, #3624]	@ <variable>.s32Priority, PrioArray
	ldrne	r3, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L989	@,
	str	r3, [r1, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37604,
	b	.L961	@
.L972:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37604,
	b	.L961	@
.L986:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.37604, D.37618
	b	.L961	@
.L987:
	mov	r0, r7	@, D.37612
	mov	r1, r9	@, tmp197
	strb	r6, [sp, #172]	@ <variable>.s32IsOpen, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L967	@
.L984:
	ldr	r1, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	and	r3, r1, #1	@ tmp283, <variable>.StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #140]	@ tmp283, DnrChanCfgArgs.s32MirrorEn
	b	.L975	@
.L988:
	mov	r1, r7	@, tmp332
	mov	r0, #0	@,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	beq	.L979	@,
	b	.L965	@
.L990:
	.align	2
.L989:
	.word	.LANCHOR0+3624
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
.LFB1941:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	.pad #148
	sub	sp, sp, #148	@,,
	mov	r3, #0	@ tmp145,
	mov	r4, r1	@ pstChanState, pstChanState
	str	r3, [sp, #140]	@ tmp145, RefNum
	str	r3, [sp, #132]	@ tmp145, NewNum
	str	r3, [sp, #136]	@ tmp145, ReadNum
	bne	.L1015	@,
	cmp	r1, #0	@ pstChanState,
	beq	.L1002	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp210,
	movt	r5, #:upper16:.LANCHOR0	@ tmp210,
	mov	r0, r1	@, pstChanState
	mov	r1, #104	@,
	bl	__memzero	@
	ldr	r1, [r5, #0]	@ D.36652, s_pstVfmwChan
	cmp	r1, #0	@ D.36652,
	beq	.L1002	@,
	add	r1, r1, #1280	@, D.36652,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	mov	r0, r6	@, ChanID
	add	r2, sp, #136	@,,
	add	r1, sp, #140	@,,
	add	r3, sp, #132	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r0, [r5, #0]	@ temp.3417, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L994	@,
	ldr	ip, [r0, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L994	@,
	movw	lr, #:lower16:181770	@ tmp161,
	movt	lr, #:upper16:181770	@ tmp161,
	ldrsb	r1, [r0, lr]	@ temp.3421, <variable>.FspInst.s32DecFsNum
	cmp	r1, #0	@ temp.3421,
	ble	.L996	@,
	movw	ip, #:lower16:209558	@ tmp171,
	movt	ip, #:upper16:209558	@ tmp171,
	add	r3, r0, ip	@ tmp171, temp.3417, tmp171
	mov	r7, #52	@ tmp169,
	mul	r7, r7, r1	@ D.42691, tmp169, temp.3421
	ldrsb	lr, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #3	@ <variable>.DispState,
	sub	ip, r7, #52	@ tmp214, D.42691,
	ubfx	r1, ip, #2, #1	@ tmp227, tmp214,,
	beq	.L1016	@,
.L1004:
	mov	r3, #52	@ ivtmp.3415,
	cmp	r3, r7	@ ivtmp.3415, D.42691
	beq	.L996	@,
	cmp	r1, #0	@ tmp227,
	beq	.L999	@,
	movw	ip, #:lower16:209610	@ tmp241,
	movt	ip, #:upper16:209610	@ tmp241,
	add	r2, r0, ip	@ tmp241, temp.3417, tmp241
	add	r3, r3, #52	@ ivtmp.3415, ivtmp.3415,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #3	@ <variable>.DispState,
	addeq	r6, r6, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, r7	@ ivtmp.3415, D.42691
	bne	.L999	@,
	b	.L996	@
.L1009:
	add	r3, r1, #52	@ ivtmp.3415, tmp228,
	cmp	r3, r7	@ ivtmp.3415, D.42691
	beq	.L996	@,
.L999:
	movw	r2, #:lower16:209558	@ tmp232,
	movt	r2, #:upper16:209558	@ tmp232,
	add	lr, r0, r3	@ tmp230, temp.3417, ivtmp.3415
	add	r1, r3, #52	@ tmp228, ivtmp.3415,
	add	ip, r0, r1	@ tmp235, temp.3417, tmp228
	mov	r3, r2	@ tmp237, tmp232
	add	r2, lr, r2	@ tmp232, tmp230, tmp232
	add	lr, ip, r3	@ tmp237, tmp235, tmp237
	ldrsb	ip, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	ldrsb	r2, [lr, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #3	@ <variable>.DispState,
	addeq	r6, r6, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r2, #3	@ <variable>.DispState,
	bne	.L1009	@,
	add	r3, r1, #52	@ ivtmp.3415, tmp228,
	add	r6, r6, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, r7	@ ivtmp.3415, D.42691
	bne	.L999	@,
.L996:
	str	r6, [r4, #88]	@ prephitmp.3400, <variable>.wait_disp_frame_num
	movw	r2, #:lower16:181770	@ tmp176,
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r2, #:upper16:181770	@ tmp176,
	movw	r0, #:lower16:181770	@ tmp182,
	movt	r0, #:upper16:181770	@ tmp182,
	ldrb	r3, [ip, r2]	@ zero_extendqisi2	@ D.36673, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ D.36673,
	ldrne	ip, [sp, #140]	@ RefNum, RefNum
	moveq	r3, #4	@ iftmp.534,
	mvnne	ip, ip	@ tmp177, RefNum
	sxtabne	r3, ip, r3	@ iftmp.534, tmp177, D.36673
	str	r3, [r4, #96]	@ iftmp.534, <variable>.total_disp_frame_num
	ldr	r1, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldrsb	r3, [r1, r0]	@ temp.3420, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ temp.3420,
	ble	.L997	@,
	ldr	r0, [sp, #140]	@ RefNum, RefNum
	add	lr, r0, #1	@ tmp185, RefNum,
	cmp	r3, lr	@ temp.3420, tmp185
	movle	r3, #0	@ tmp187,
	strle	r3, [r4, #96]	@ tmp187, <variable>.total_disp_frame_num
	b	.L997	@
.L994:
	mov	r0, #0	@,
	add	r1, sp, #4	@,,
	bl	DNR_GetState	@
	add	r1, sp, #72
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	str	r1, [r4, #96]	@ DnrChanState.total_frame_num, <variable>.total_disp_frame_num
	add	r0, r2, r3	@ tmp166, DnrChanState.new_frame_num, DnrChanState.read_out_frame_num
	str	r0, [r4, #88]	@ tmp166, <variable>.wait_disp_frame_num
.L997:
	ldr	ip, [sp, #136]	@ ReadNum, ReadNum
	add	r1, sp, #84	@,,
	ldr	lr, [sp, #132]	@ NewNum, NewNum
	mov	r0, #0	@,
	add	r3, lr, ip	@ tmp190, NewNum, ReadNum
	str	r3, [r4, #52]	@ tmp190, <variable>.decoded_1d_frame_num
	ldr	r2, [r5, #252]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	str	r2, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	lr, [r5, #240]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	lr, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r3, [sp, #92]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	ldr	ip, [sp, #100]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	add	r1, sp, #108	@,,
	mov	r0, #0	@,
	str	r3, [r4, #60]	@ SmInstInfo.SegNum, <variable>.buffered_stream_num
	str	ip, [r4, #56]	@ SmInstInfo.TotalSegSize, <variable>.buffered_stream_size
	bl	SM_GetInfo	@
	ldr	r1, [sp, #128]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movw	ip, #:lower16:233384	@ tmp203,
	movt	ip, #:upper16:233384	@ tmp203,
	cmp	r1, #10	@ ScdInstInfo.numReadSegFail,
	movle	r0, #0	@, tmp200
	movgt	r0, #1	@, tmp200
	str	r0, [r4, #84]	@ tmp200, <variable>.stream_not_enough
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldrb	r3, [r2, ip]	@ zero_extendqisi2	@ tmp205,
	and	r1, r3, #1	@ tmp207, tmp205,
	str	r1, [r4, #92]	@ tmp207, <variable>.mpeg4_shorthead
.L1002:
	add	sp, sp, #148	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L1015:
	bl	vfmw_dprint_nothing	@
	b	.L1002	@
.L1016:
	mov	r6, r2	@ s32DecodedFrameNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L1004	@
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L1023	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r3, #0]	@ D.36595, s_pstVfmwChan
	cmp	r0, #0	@ D.36595,
	beq	.L1023	@,
	ldr	r2, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1023	@,
	add	r0, r0, #74752	@, D.36595,
	add	r0, r0, #800	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L1023:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r3, [r4, #44]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.36533,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1027	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChan	@
.L1027:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	r1, #3	@ tmp141,
	str	r1, [r4, #76]	@ tmp141, s_VfmwCTrl.eTaskCommand
	b	.L1029	@
.L1034:
	bl	msleep	@
	ldr	ip, [r4, #72]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	ip, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1028	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1028	@,
.L1029:
	ldr	r2, [r4, #72]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp156, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp156,
	cmp	r2, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1034	@,
.L1028:
	mov	r1, #4	@,
	ldr	r0, .L1035	@,
	mov	r5, #0	@ tmp145,
	str	r5, [r4, #76]	@ tmp145, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1035+4	@,
	bl	CloseDrivers	@
	mov	r0, r5	@ D.36533, tmp145
	str	r5, [r4, #44]	@ tmp145, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1036:
	.align	2
.L1035:
	.word	.LANCHOR0+224
	.word	.LANCHOR0+92
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_StartVfmw
	.type	VCTRL_StartVfmw, %function
VCTRL_StartVfmw:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #44]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #76]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L1042	@
.L1040:
	bl	msleep	@
	ldr	r1, [r4, #72]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L1047	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1049	@,
.L1042:
	ldr	r3, [r4, #72]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L1040	@,
.L1047:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #76]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1049:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #76]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StartVfmw, .-VCTRL_StartVfmw
	.align	2
	.global	VCTRL_StopVfmw
	.type	VCTRL_StopVfmw, %function
VCTRL_StopVfmw:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #44]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #76]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L1055	@
.L1053:
	bl	msleep	@
	ldr	r2, [r4, #72]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1060	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1062	@,
.L1055:
	ldr	r1, [r4, #72]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L1053	@,
.L1060:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #76]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1062:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #76]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StopVfmw, .-VCTRL_StopVfmw
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp276,
	movt	r4, #:upper16:.LANCHOR0	@ tmp276,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ event_report, event_report
	ldr	r5, [r4, #44]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r5, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1088	@,
.L1064:
	mvn	r0, #0	@ D.36456,
.L1086:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1088:
	movw	r7, #:lower16:saved_command_line	@ tmp278,
	movt	r7, #:upper16:saved_command_line	@ tmp278,
	add	r1, r4, #3616	@, tmp276,
	mov	r2, #1024	@,
	add	r0, r1, #12	@,,
	ldr	r1, [r7, #0]	@, saved_command_line
	str	r5, [sp, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #3616	@, tmp276,
	movw	r1, #:lower16:.LC9	@,
	add	r0, r0, #12	@,,
	movt	r1, #:upper16:.LC9	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp173,
	str	r0, [sp, #4]	@ tmp173, p
	beq	.L1065	@,
	add	r8, sp, #4	@ p.695,,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, r8	@, p.695
	bl	strsep	@
	subs	r3, r0, #0	@ D.42820,
	beq	.L1070	@,
	mov	r0, r8	@, p.695
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1089	@,
	mov	r1, r5	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #8]	@ prephitmp.3600, extra_ref
.L1069:
	add	r5, r0, #4992	@ tmp180, prephitmp.3600,
	movw	r2, #10000	@ tmp182,
	add	r3, r5, #8	@ tmp180, tmp180,
	cmp	r3, r2	@ tmp180, tmp182
	bhi	.L1071	@,
	movw	lr, #5000	@ tmp183,
	movw	ip, #:lower16:-5000	@ tmp184,
	cmp	r0, lr	@ prephitmp.3600, tmp183
	movge	r0, lr	@ pretmp.3597, tmp183
	movt	ip, #:upper16:-5000	@ tmp184,
	cmp	r0, ip	@ pretmp.3597, tmp184
	movge	r3, r0	@ prephitmp.3599, pretmp.3597
	movlt	r3, ip	@ prephitmp.3599, tmp184
.L1070:
	str	r3, [r4, #8]	@ prephitmp.3599, extra_ref
.L1068:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1092	@,
	mov	r5, #0	@ tmp189,
	str	r5, [sp, #4]	@ tmp189, p
	bl	strlcpy	@
	ldr	r0, .L1092	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	strstr	@
	cmp	r0, r5	@ tmp193,
	str	r0, [sp, #4]	@ tmp193, p
	beq	.L1072	@,
	add	r8, sp, #4	@ p.706,,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, r8	@, p.706
	bl	strsep	@
	subs	r3, r0, #0	@ D.42838,
	beq	.L1077	@,
	mov	r0, r8	@, p.706
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	strsep	@
	cmp	r0, r5	@,
	beq	.L1090	@,
	mov	r1, r5	@, tmp189
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #12]	@ prephitmp.3595, extra_disp
.L1076:
	add	lr, r0, #4992	@ tmp200, prephitmp.3595,
	movw	r5, #10000	@ tmp202,
	add	ip, lr, #8	@ tmp200, tmp200,
	cmp	ip, r5	@ tmp200, tmp202
	bhi	.L1078	@,
	movw	r3, #5000	@ tmp203,
	movw	r2, #:lower16:-5000	@ tmp204,
	cmp	r0, r3	@ prephitmp.3595, tmp203
	movge	r0, r3	@ pretmp.3582, tmp203
	movt	r2, #:upper16:-5000	@ tmp204,
	cmp	r0, r2	@ pretmp.3582, tmp204
	movge	r3, r0	@ prephitmp.3571, pretmp.3582
	movlt	r3, r2	@ prephitmp.3571, tmp204
.L1077:
	str	r3, [r4, #12]	@ prephitmp.3571, extra_disp
.L1075:
	movw	r4, #:lower16:.LANCHOR2	@ tmp277,
	movt	r4, #:upper16:.LANCHOR2	@ tmp277,
	mov	lr, #0	@ tmp209,
	str	lr, [sp, #4]	@ tmp209, p
	ldr	r5, [r4, #-3532]	@ extra_cmd.712, extra_cmd
	cmp	r5, lr	@ extra_cmd.712,
	beq	.L1079	@,
	ubfx	r3, r5, #2, #1	@ tmp223, extra_cmd.712,,
	and	r2, r5, #1	@ tmp213, extra_cmd.712,
	strb	r3, [r4, #-3526]	@ tmp223, g_not_allow_H264FullPictureRepair_flag
	ubfx	r5, r5, #1, #1	@ tmp218, extra_cmd.712,,
	strb	r2, [r4, #-3528]	@ tmp213, g_allow_B_before_P
	strb	r5, [r4, #-3527]	@ tmp218, g_not_direct_8x8_inference_flag
.L1080:
	movw	r4, #:lower16:.LANCHOR0	@ tmp247,
	movt	r4, #:upper16:.LANCHOR0	@ tmp247,
	add	r0, r4, #44	@, tmp247,
	mov	r1, #152	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp247
	mov	r1, #4	@,
	bl	__memzero	@
	add	r0, r4, #280	@, tmp247,
	mov	r1, #4	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	mov	r0, #-2013265920	@,
	mov	r1, #75497472	@,
	movweq	r3, #:lower16:VCTRL_EventReport	@ tmp253,
	movteq	r3, #:upper16:VCTRL_EventReport	@ tmp253,
	streq	r3, [r4, #4]	@ tmp253, g_event_report
	movw	r4, #:lower16:.LANCHOR0	@ tmp254,
	movt	r4, #:upper16:.LANCHOR0	@ tmp254,
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	add	r0, r4, #224	@, tmp254,
	mov	r1, #4	@,
	bl	__memzero	@
	add	r0, r4, #92	@, tmp254,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1064	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	ldr	r0, .L1092+4	@,
	bl	OSAL_InitEvent	@
	add	r0, r4, #80	@, tmp254,
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC14	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.36483,
	bne	.L1085	@,
	add	r0, r4, #80	@, tmp254,
	bl	OSAL_WakeupTask	@
	mov	r2, #1	@ tmp271,
	mov	r0, r5	@ D.36456, D.36483
	str	r2, [r4, #44]	@ tmp271, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1086	@
.L1079:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1092	@,
	bl	strlcpy	@
	ldr	r0, .L1092	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp228,
	str	r0, [sp, #4]	@ tmp228, p
	beq	.L1080	@,
	add	r7, sp, #4	@ p.721,,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, r7	@, p.721
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r4, #-3532]	@ prephitmp.3569, extra_cmd
	beq	.L1082	@,
	mov	r0, r7	@, p.721
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1091	@,
	mov	r1, r5	@, extra_cmd.712
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #-3532]	@ prephitmp.3569, extra_cmd
.L1082:
	ubfx	r1, r0, #2, #1	@ tmp245, prephitmp.3569,,
	and	ip, r0, #1	@ tmp235, prephitmp.3569,
	strb	r1, [r4, #-3526]	@ tmp245, g_not_allow_H264FullPictureRepair_flag
	ubfx	r0, r0, #1, #1	@ tmp240, prephitmp.3569,,
	strb	ip, [r4, #-3528]	@ tmp235, g_allow_B_before_P
	strb	r0, [r4, #-3527]	@ tmp240, g_not_direct_8x8_inference_flag
	b	.L1080	@
.L1072:
	ldr	r0, [r4, #12]	@ prephitmp.3595, extra_disp
	b	.L1076	@
.L1065:
	ldr	r0, [r4, #8]	@ prephitmp.3600, extra_ref
	b	.L1069	@
.L1071:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #8]	@ pretmp.3596, extra_ref
	movw	r3, #5000	@ tmp186,
	movw	r0, #:lower16:-5000	@ tmp187,
	cmp	r1, r3	@ pretmp.3596, tmp186
	movlt	r2, r1	@ prephitmp.3599, pretmp.3596
	movge	r2, r3	@ prephitmp.3599, tmp186
	movt	r0, #:upper16:-5000	@ tmp187,
	cmp	r2, r0	@ prephitmp.3599, tmp187
	movge	r3, r2	@ prephitmp.3599, prephitmp.3599
	movlt	r3, r0	@ prephitmp.3599, tmp187
	b	.L1070	@
.L1078:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #12]	@ pretmp.3594, extra_disp
	movw	r0, #:lower16:-5000	@ tmp207,
	movw	ip, #5000	@ tmp206,
	movt	r0, #:upper16:-5000	@ tmp207,
	cmp	r1, ip	@ pretmp.3594, tmp206
	movlt	r5, r1	@ prephitmp.3571, pretmp.3594
	movge	r5, ip	@ prephitmp.3571, tmp206
	cmp	r5, r0	@ prephitmp.3571, tmp207
	movge	r3, r5	@ prephitmp.3571, prephitmp.3571
	movlt	r3, r0	@ prephitmp.3571, tmp207
	b	.L1077	@
.L1089:
	bl	vfmw_dprint_nothing	@
	b	.L1068	@
.L1090:
	bl	vfmw_dprint_nothing	@
	b	.L1075	@
.L1091:
	bl	vfmw_dprint_nothing	@
	b	.L1080	@
.L1085:
	add	r0, r4, #92	@, tmp254,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.36456,
	b	.L1086	@
.L1093:
	.align	2
.L1092:
	.word	.LANCHOR0+3628
	.word	.LANCHOR2-3524
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bl	OSAL_GetTimeInMs	@
	movw	r4, #:lower16:.LANCHOR2	@ tmp143,
	movt	r4, #:upper16:.LANCHOR2	@ tmp143,
	ldr	r3, [r4, #-3512]	@ LastEventTime.519, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.519
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #-3512]	@ CurTime, LastEventTime
	bhi	.L1099	@,
.L1096:
	ldr	r0, .L1100	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-3512]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1099:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.519, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L1096	@
.L1101:
	.align	2
.L1100:
	.word	.LANCHOR2-3524
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_Dnr_Isr
	.type	VCTRL_Dnr_Isr, %function
VCTRL_Dnr_Isr:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	DNR_IntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Dnr_Isr, .-VCTRL_Dnr_Isr
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr, .-VCTRL_Scd_Isr
	.align	2
	.global	VCTRL_Isr_1
	.type	VCTRL_Isr_1, %function
VCTRL_Isr_1:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r0, #1	@,
	bl	VDMDRV_VdmIntServProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Isr_1, .-VCTRL_Isr_1
	.align	2
	.global	VCTRL_Isr_0
	.type	VCTRL_Isr_0, %function
VCTRL_Isr_0:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r0, #0	@,
	bl	VDMDRV_VdmIntServProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Isr_0, .-VCTRL_Isr_0
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR2	@ tmp163,
	movt	r5, #:upper16:.LANCHOR2	@ tmp163,
	movw	r4, #:lower16:.LANCHOR0	@ tmp162,
	movt	r4, #:upper16:.LANCHOR0	@ tmp162,
	mov	r3, #100	@ tmp142,
	ldr	r0, [r5, #-3508]	@ g_SleepTime.513, g_SleepTime
	str	r3, [r4, #84]	@ tmp142, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.513,
	ble	.L1111	@,
	bl	msleep	@
.L1111:
	ldr	r0, .L1123	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r5, #-3504]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp147,
	str	r2, [r4, #84]	@ tmp147, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1121	@,
.L1113:
	mov	ip, #102	@ tmp151,
	str	ip, [r4, #84]	@ tmp151, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp152,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp152,
	ldr	r3, [r1, #28]	@ D.36355, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.36355,
	beq	.L1114	@,
	blx	r3	@ D.36355
.L1115:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp153,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp153,
	ldr	r3, [lr, #56]	@ D.36359, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.36359,
	beq	.L1116	@,
	mov	r0, #0	@,
	blx	r3	@ D.36359
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L1122	@,
.L1118:
	ldr	r0, .L1123	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1123+4	@,
	mov	r3, #105	@ tmp157,
	str	r3, [r4, #84]	@ tmp157, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1116:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	bne	.L1118	@,
.L1122:
	mov	r0, #0	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp,
	mov	r0, #0	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1119	@,
	cmp	r6, #1	@ tmp,
	bne	.L1118	@,
.L1119:
	mov	r1, #3	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #0	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1118	@
.L1121:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1113	@
.L1114:
	bl	vfmw_dprint_nothing	@
	b	.L1115	@
.L1124:
	.align	2
.L1123:
	.word	.LANCHOR0+268
	.word	.LANCHOR2-3524
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r0, sp, #4	@,,
	mov	r4, #0	@ tmp144,
	mov	r1, sp	@,
	mov	r3, #4	@ tmp145,
	str	r4, [sp, #4]	@ tmp144, enChipType
	movw	r5, #:lower16:.LANCHOR0	@ tmp200,
	str	r3, [sp, #0]	@ tmp145, enChipVersion
	bl	HI_DRV_SYS_GetChipVersion	@
	movw	sl, #:lower16:599999	@ tmp211,
	movw	r8, #:lower16:-31444992	@ tmp212,
	movt	r5, #:upper16:.LANCHOR0	@ tmp200,
	movt	sl, #:upper16:599999	@ tmp211,
	movt	r8, #:upper16:-31444992	@ tmp212,
	mov	r9, r4	@ tmp208, time2
	mov	r7, #2	@ tmp209,
	mov	r6, #1	@ tmp210,
.L1126:
	str	r9, [r5, #84]	@ tmp208, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #76]	@ temp.3756, s_VfmwCTrl.eTaskCommand
	str	r7, [r5, #72]	@ tmp209, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ temp.3756,
	str	r6, [r5, #84]	@ tmp210, s_VfmwCTrl.s32ThreadPos
	bne	.L1133	@,
	b	.L1127	@
.L1130:
	str	r7, [r5, #84]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #76]	@ D.36303, s_VfmwCTrl.eTaskCommand
	str	r6, [r5, #84]	@ tmp210, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.36303,
	beq	.L1127	@,
.L1133:
	cmp	r3, #3	@ D.36303,
	beq	.L1128	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #0]	@ enChipVersion, enChipVersion
	cmp	r1, #5	@ enChipVersion,
	bne	.L1130	@,
	rsbs	ip, r4, #1	@ tmp161, time2
	movcc	ip, #0	@ tmp161
	rsb	r2, r4, r0	@ tmp156, time2, time1
	cmp	r2, sl	@ tmp156, tmp211
	orrhi	ip, ip, #1	@,, tmp164, tmp161
	cmp	ip, #0	@ tmp164,
	beq	.L1130	@,
	ldr	ip, [r8, #92]	@ reg_val,
	mov	r4, r0	@ time2, time1
	cmp	ip, #3	@ reg_val,
	cmpne	ip, #0	@, reg_val,
	bic	r1, ip, #7	@ D.36322, reg_val,
	strne	r1, [r8, #92]	@ D.36322,
	ldr	r3, [r8, #96]	@ reg_val.3757,
	cmp	r3, #3	@ reg_val.3757,
	cmpne	r3, #0	@, reg_val.3757,
	bic	lr, r3, #7	@ temp.3761, reg_val.3757,
	strne	lr, [r8, #96]	@ temp.3761,
	movne	r4, r0	@ time2, time1
	str	r7, [r5, #84]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #76]	@ D.36303, s_VfmwCTrl.eTaskCommand
	str	r6, [r5, #84]	@ tmp210, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.36303,
	bne	.L1133	@,
.L1127:
	mov	fp, #5	@ tmp202,
	mov	r0, #4	@ tmp189,
	str	r0, [r5, #84]	@ tmp189, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	str	r6, [r5, #72]	@ tmp210, s_VfmwCTrl.eTaskState
.L1134:
	str	fp, [r5, #84]	@ tmp202, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #76]	@ temp.3762, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.3762,
	beq	.L1126	@,
	cmp	r3, #3	@ temp.3762,
	mov	r0, #10	@,
	beq	.L1128	@,
	bl	msleep	@
	b	.L1134	@
.L1128:
	mov	r2, #6	@ tmp196,
	str	r2, [r5, #84]	@ tmp196, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ tmp198,
	str	r0, [r5, #72]	@ tmp198, s_VfmwCTrl.eTaskState
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_Resume
	.type	VCTRL_Resume, %function
VCTRL_Resume:
	.fnstart
.LFB1920:
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
	bne	.L1140	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L1140	@,
	bl	BPD_OpenHardware	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw	@
.L1140:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	mov	r0, #0	@,
	mov	r5, r0	@ i,
	mvn	r6, r4	@ tmp161, EntrTime
	bl	VDMDRV_PrepareSleep	@
	b	.L1149	@
.L1148:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp165, i,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1145	@,
.L1177:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r0, r0, r6	@ WaitTime.3827, CurTime, tmp161
	rsbls	r0, r4, r0	@ WaitTime.3827, EntrTime, CurTime
	cmp	r0, #200	@ WaitTime.3827,
	bhi	.L1186	@,
.L1175:
	add	r5, r5, #1	@ i, tmp165,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1145	@,
.L1149:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1145	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r0, r4, r0	@ WaitTime.3827, EntrTime, CurTime
	addhi	r0, r0, r6	@ WaitTime.3827, CurTime, tmp161
	cmp	r0, #200	@ WaitTime.3827,
	bls	.L1148	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp165, i,
	bl	VDMDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1177	@,
.L1145:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp155,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp155,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #4]	@ D.36229, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.36229,
	beq	.L1150	@,
	mov	r0, #0	@,
	blx	r3	@ D.36229
.L1151:
	bl	SCDDRV_PrepareSleep	@
	mov	r5, #0	@ i.3830,
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ BeginTime,
	mvn	r6, r0	@ tmp158, BeginTime
	b	.L1156	@
.L1155:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp164, i.3830,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1152	@,
.L1178:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime, CurTime.3828
	addhi	r0, r0, r6	@ WaitTime, CurTime.3828, tmp158
	rsbls	r0, r4, r0	@ WaitTime, BeginTime, CurTime.3828
	cmp	r0, #200	@ WaitTime,
	bhi	.L1187	@,
.L1172:
	add	r5, r5, #1	@ i.3830, tmp164,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i.3830,
	beq	.L1152	@,
.L1156:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1152	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime, CurTime.3828
	rsbls	r0, r4, r0	@ WaitTime, BeginTime, CurTime.3828
	addhi	r0, r0, r6	@ WaitTime, CurTime.3828, tmp158
	cmp	r0, #200	@ WaitTime,
	bls	.L1155	@,
	bl	SCDDRV_ForeceSleep	@
	add	r5, r5, #1	@ tmp164, i.3830,
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1178	@,
.L1152:
	ldr	r3, [r7, #12]	@ D.36243, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r3, #0	@ D.36243,
	beq	.L1157	@,
	blx	r3	@ D.36243
.L1158:
	bl	DNRDRV_PrepareSleep	@
	mov	r5, #0	@ i.3834,
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ BeginTime.3831,
	mvn	r6, r0	@ tmp156, BeginTime.3831
	b	.L1163	@
.L1162:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp163, i.3834,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1159	@,
.L1179:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime.3831, CurTime.3832
	addhi	r0, r0, r6	@ WaitTime.3826, CurTime.3832, tmp156
	rsbls	r0, r4, r0	@ WaitTime.3826, BeginTime.3831, CurTime.3832
	cmp	r0, #200	@ WaitTime.3826,
	bhi	.L1188	@,
.L1169:
	add	r5, r5, #1	@ i.3834, tmp163,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i.3834,
	beq	.L1159	@,
.L1163:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1159	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime.3831, CurTime.3832
	rsbls	r0, r4, r0	@ WaitTime.3826, BeginTime.3831, CurTime.3832
	addhi	r0, r0, r6	@ WaitTime.3826, CurTime.3832, tmp156
	cmp	r0, #200	@ WaitTime.3826,
	bls	.L1162	@,
	bl	DNRDRV_ForeceSleep	@
	add	r5, r5, #1	@ tmp163, i.3834,
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1179	@,
.L1159:
	bl	VCTRL_StopVfmw	@
	bl	OSAL_GetTimeInMs	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L1186:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	b	.L1175	@
.L1187:
	bl	SCDDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	b	.L1172	@
.L1188:
	bl	DNRDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	b	.L1169	@
.L1150:
	bl	vfmw_dprint_nothing	@
	b	.L1151	@
.L1157:
	bl	vfmw_dprint_nothing	@
	b	.L1158	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_Suspend	@
	ldr	r0, .L1191	@,
	mov	r1, #28	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L1192:
	.align	2
.L1191:
	.word	.LANCHOR0+16
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.global	g_DSPState
	.global	g_scd_vir
	.global	g_ChanTick
	.global	g_SdecFunc
	.global	s_pstVfmwChan
	.global	extra_ref
	.global	extra_disp
	.global	extra_cmd
	.global	g_allow_B_before_P
	.global	g_not_direct_8x8_inference_flag
	.global	g_not_allow_H264FullPictureRepair_flag
	.global	g_DbgMemPhy
	.global	g_pDbgMemVir
	.global	vfmw_save_str_file
	.global	save_str_chan_num
	.global	vfmw_save_seg_file
	.global	save_seg_chan_num
	.global	vfmw_save_yuv_file
	.global	save_yuv_chan_num
	.global	g_ResetCreateNewSave
	.global	g_CurProcChan
	.global	g_VdmCharacter
	.global	g_SleepTime
	.global	g_DnrSleepTime
	.global	g_StopDec
	.global	g_VdecIrqHandle
	.global	g_DnrIrqHandle
	.global	g_event_report
	.global	g_VfmwChanStat
	.global	g_VfmwGlobalStat
	.global	g_eVdmVersion
	.global	AcceleratorCharacter
	.global	g_TaskLock
	.global	g_DSDLock
	.global	g_IntEvent
	.global	g_ActivateLock
	.global	pOption
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	CSWTCH.744, %object
	.size	CSWTCH.744, 32
CSWTCH.744:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	CSWTCH.747, %object
	.size	CSWTCH.747, 32
CSWTCH.747:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VFMW_Hal_%d\000"
.LC1:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC2:
	.ascii	"hi_vdec_vdh_irq\000"
.LC3:
	.ascii	"hi_vdec_scd_irq\000"
.LC4:
	.ascii	"hi_vdec_dnr_irq\000"
.LC5:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC6:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC7:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC8:
	.ascii	"VFMW_Chan_Pmv\000"
	.space	2
.LC9:
	.ascii	"extra_ref=\000"
	.space	1
.LC10:
	.ascii	"=\000"
	.space	2
.LC11:
	.ascii	" \000"
	.space	2
.LC12:
	.ascii	"extra_disp=\000"
.LC13:
	.ascii	"extra_cmd=\000"
	.space	1
.LC14:
	.ascii	"HI_VFMW_VideoDecode\000"
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
	.byte	-1
@ flags:
	.byte	0
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
	.byte	-1
@ flags:
	.byte	0
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
	.byte	-1
@ flags:
	.byte	0
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
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	last_rec_pos_time.39109, %object
	.size	last_rec_pos_time.39109, 4
last_rec_pos_time.39109:
	.space	4
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	last_rec_pos_report_time.39110, %object
	.size	last_rec_pos_report_time.39110, 4
last_rec_pos_report_time.39110:
	.space	4
	.type	last_rec_pos_decparam_time.39111, %object
	.size	last_rec_pos_decparam_time.39111, 4
last_rec_pos_decparam_time.39111:
	.space	4
	.type	ChanPriTab.38998, %object
	.size	ChanPriTab.38998, 4
ChanPriTab.38998:
	.space	4
	.type	g_DSPState, %object
	.size	g_DSPState, 4
g_DSPState:
	.space	4
	.type	PrioArray.37328, %object
	.size	PrioArray.37328, 4
PrioArray.37328:
	.space	4
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 24
g_VfmwChanStat:
	.space	24
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	PrioArray.37362, %object
	.size	PrioArray.37362, 4
PrioArray.37362:
	.space	4
	.type	g_scd_vir, %object
	.size	g_scd_vir, 4
g_scd_vir:
	.space	4
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_ChanTick, %object
	.size	g_ChanTick, 4
g_ChanTick:
	.space	4
	.type	FspInstInfo.36715, %object
	.size	FspInstInfo.36715, 3340
FspInstInfo.36715:
	.space	3340
	.type	PrioArray.37583, %object
	.size	PrioArray.37583, 4
PrioArray.37583:
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
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.space	1
	.type	g_not_allow_H264FullPictureRepair_flag, %object
	.size	g_not_allow_H264FullPictureRepair_flag, 1
g_not_allow_H264FullPictureRepair_flag:
	.space	1
	.space	1
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	LastEventTime.36395, %object
	.size	LastEventTime.36395, 4
LastEventTime.36395:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	g_DbgMemPhy, %object
	.size	g_DbgMemPhy, 4
g_DbgMemPhy:
	.space	4
	.type	g_pDbgMemVir, %object
	.size	g_pDbgMemVir, 4
g_pDbgMemVir:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_VdecIrqHandle, %object
	.size	g_VdecIrqHandle, 4
g_VdecIrqHandle:
	.space	4
	.type	g_DnrIrqHandle, %object
	.size	g_DnrIrqHandle, 4
g_DnrIrqHandle:
	.space	4
	.type	g_VfmwGlobalStat, %object
	.size	g_VfmwGlobalStat, 48
g_VfmwGlobalStat:
	.space	48
	.type	g_eVdmVersion, %object
	.size	g_eVdmVersion, 4
g_eVdmVersion:
	.space	4
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 8
g_ActivateLock:
	.space	8
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
