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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
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
	ldr	r0, [r3, r0, asl #2]	@ D.38721, s_pstVfmwChan
	cmp	r0, #0	@ D.38721,
	addne	r0, r0, #104	@ D.38724, D.38721,
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
	ldr	r0, [r3, r0, asl #2]	@ D.38741, s_pstVfmwChan
	cmp	r0, #0	@ D.38741,
	addne	r0, r0, #128	@ D.38744, D.38741,
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
	ldr	r0, [r3, r0, asl #2]	@ D.38865, s_pstVfmwChan
	cmp	r0, #0	@ D.38865,
	addne	r0, r0, #116	@ D.38868, D.38865,
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
	movw	r3, #:lower16:539128	@ tmp135,
	movt	r3, #:upper16:539128	@ tmp135,
	str	r3, [r1, #0]	@ tmp135,* s32ChanCtxSize
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
	ldr	r3, [r3, r0, asl #2]	@ D.39659, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #19	@ <variable>.eVidStd,
	bne	.L22	@,
.L16:
	mvn	r0, #0	@ D.39712,
	bx	lr	@
.L22:
	ldr	r2, [r3, #32]	@ D.39664, <variable>.stChanCfg.eVidStd
	ldr	r0, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, r0	@ D.39664, <variable>.eVidStd
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
	cmp	r2, #1	@ D.39664,
	beq	.L23	@,
	sub	r0, r2, #10	@ tmp170, D.39664,
	cmp	r0, #2	@ tmp170,
	bhi	.L18	@,
	ldr	r2, [r3, #36]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	ip, [r1, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, ip	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L16	@,
.L18:
	mov	r0, #0	@ D.39712,
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
	cmp	r0, #3	@ ChanID,
	bls	.L30	@,
.L27:
	mvn	r0, #0	@ D.40656,
	bx	lr	@
.L30:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.40655, s_pstVfmwChan
	cmp	r3, #0	@ D.40655,
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
	movne	r0, #0	@ D.40656,
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
	ldr	ip, [ip, #100]	@ D.40933, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r4, r0	@ FrmNum, FrmNum
	mov	r5, r3	@ s32ChanPmvSize, s32ChanPmvSize
	cmp	ip, #0	@ D.40933,
	mvneq	r0, #0	@ iftmp.675,
	beq	.L33	@,
	mov	r0, r1	@, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.40933
.L33:
	mul	r4, r4, r0	@ tmp140, FrmNum, iftmp.675
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
	ldr	ip, [ip, #36]	@ D.41052, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	.pad #444
	sub	sp, sp, #444	@,,
	mov	r5, r2	@ VdmMemSize, VdmMemSize
	cmp	ip, #0	@ D.41052,
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
	blx	ip	@ D.41052
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
	mvn	r0, #0	@ D.41065,
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r2, [r3, #0]	@ temp.1045, s_pstVfmwChan
	cmp	r2, #0	@ temp.1045,
	beq	.L40	@,
	add	r1, r2, #217088	@ tmp141, temp.1045,
	add	r2, r1, #432	@ tmp141, tmp141,
	cmp	r2, r0	@ tmp141, pCtx
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L40:
	ldr	r2, [r3, #4]	@ temp.1047, s_pstVfmwChan
	cmp	r2, #0	@ temp.1047,
	beq	.L42	@,
	add	r2, r2, #217088	@ tmp144, temp.1047,
	add	ip, r2, #432	@ tmp144, tmp144,
	cmp	ip, r0	@ tmp144, pCtx
	moveq	r0, #1	@ i,
	bxeq	lr	@
.L42:
	ldr	r2, [r3, #8]	@ temp.1049, s_pstVfmwChan
	cmp	r2, #0	@ temp.1049,
	beq	.L43	@,
	add	ip, r2, #217088	@ tmp147, temp.1049,
	add	r1, ip, #432	@ tmp147, tmp147,
	cmp	r1, r0	@ tmp147, pCtx
	moveq	r0, #2	@ i,
	bxeq	lr	@
.L43:
	ldr	r3, [r3, #12]	@ D.41551, s_pstVfmwChan
	cmp	r3, #0	@ D.41551,
	beq	.L44	@,
	add	r2, r3, #217088	@ tmp150, D.41551,
	add	r3, r2, #432	@ tmp150, tmp150,
	cmp	r3, r0	@ tmp150, pCtx
	moveq	r0, #3	@ i,
	bxeq	lr	@
.L44:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp169,
	movt	r3, #:upper16:.LANCHOR0	@ tmp169,
	ldr	r2, [r3, #0]	@ temp.1075, s_pstVfmwChan
	cmp	r2, #0	@ temp.1075,
	beq	.L47	@,
	ldr	r1, [r2, #176]	@ temp.1077, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1077
	bge	.L48	@,
.L50:
	ldr	r1, [r2, #192]	@ temp.1076, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1076
	blt	.L47	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp149, temp.1076, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp149
	blt	.L60	@,
.L47:
	ldr	r2, [r3, #4]	@ temp.1082, s_pstVfmwChan
	cmp	r2, #0	@ temp.1082,
	beq	.L51	@,
	ldr	r1, [r2, #176]	@ temp.1083, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1083
	bge	.L52	@,
.L53:
	ldr	r1, [r2, #192]	@ temp.1084, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1084
	blt	.L51	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp154, temp.1084, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp154
	blt	.L62	@,
.L51:
	ldr	r2, [r3, #8]	@ temp.1089, s_pstVfmwChan
	cmp	r2, #0	@ temp.1089,
	beq	.L54	@,
	ldr	r1, [r2, #176]	@ temp.1090, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1090
	bge	.L55	@,
.L56:
	ldr	r1, [r2, #192]	@ temp.1091, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1091
	blt	.L54	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp159, temp.1091, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp159
	blt	.L63	@,
.L54:
	ldr	r3, [r3, #12]	@ D.41567, s_pstVfmwChan
	cmp	r3, #0	@ D.41567,
	beq	.L57	@,
	ldr	r2, [r3, #176]	@ D.41570, <variable>.stChanMem_vdh.PhyAddr
	cmp	r2, r0	@ D.41570, PhyAddr
	ble	.L64	@,
.L58:
	ldr	r2, [r3, #192]	@ D.41578, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.41578
	blt	.L57	@,
	ldr	r3, [r3, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, r2, r3	@ tmp166, D.41578, <variable>.stChanMem_scd.Length
	cmp	r0, ip	@ PhyAddr, tmp166
	blt	.L61	@,
.L57:
	mvn	r0, #0	@ i,
	bx	lr	@
.L48:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp151, temp.1077, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp151
	bge	.L50	@,
.L60:
	mov	r0, #0	@ i,
	bx	lr	@
.L52:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp156, temp.1083, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp156
	bge	.L53	@,
.L62:
	mov	r0, #1	@ i,
	bx	lr	@
.L55:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp161, temp.1090, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp161
	bge	.L56	@,
.L63:
	mov	r0, #2	@ i,
	bx	lr	@
.L64:
	ldr	r1, [r3, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r2, r2, r1	@ tmp164, D.41570, <variable>.stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, tmp164
	bge	.L58	@,
.L61:
	mov	r0, #3	@ i,
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r2, [r3, r0, asl #2]	@ D.41760, s_pstVfmwChan
	cmp	r2, #0	@ D.41760,
	beq	.L66	@,
	ldr	r1, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L66	@
.L79:
	.word	.L78
	.word	.L68
	.word	.L69
	.word	.L70
	.word	.L71
	.word	.L72
	.word	.L73
	.word	.L66
	.word	.L74
	.word	.L75
	.word	.L76
	.word	.L76
	.word	.L76
	.word	.L77
	.word	.L71
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L78
.L78:
	add	ip, r2, #217088	@ pstVoQue, D.41760,
	add	r0, ip, #440	@ pstVoQue, pstVoQue,
	bx	lr	@
.L66:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L76:
	ldr	r1, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	addne	r0, r2, #229376	@ pstVoQue, D.41760,
	addne	r0, r0, #792	@ pstVoQue, pstVoQue,
	bxne	lr	@
.L71:
	add	r0, r2, #237568	@ pstVoQue, D.41760,
	add	r0, r0, #440	@ pstVoQue, pstVoQue,
	bx	lr	@
.L72:
	add	r3, r2, #243712	@ pstVoQue, D.41760,
	add	r0, r3, #448	@ pstVoQue, pstVoQue,
	bx	lr	@
.L73:
	add	ip, r2, #233472	@ pstVoQue, D.41760,
	add	r0, ip, #136	@ pstVoQue, pstVoQue,
	bx	lr	@
.L74:
	add	r1, r2, #256000	@ pstVoQue, D.41760,
	add	r0, r1, #488	@ pstVoQue, pstVoQue,
	bx	lr	@
.L77:
	add	r3, r2, #225280	@ pstVoQue, D.41760,
	add	r0, r3, #408	@ pstVoQue, pstVoQue,
	bx	lr	@
.L70:
	add	r0, r2, #290816	@ pstVoQue, D.41760,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L75:
	add	r0, r2, #256000	@ pstVoQue, D.41760,
	add	r0, r0, #472	@ pstVoQue, pstVoQue,
	bx	lr	@
.L68:
	movw	ip, #:lower16:330888	@ pstVoQue,
	movt	ip, #:upper16:330888	@ pstVoQue,
	add	r0, r2, ip	@ pstVoQue, D.41760, pstVoQue
	bx	lr	@
.L69:
	add	r3, r2, #239616	@ pstVoQue, D.41760,
	add	r0, r3, #512	@ pstVoQue, pstVoQue,
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
	ldr	r3, [r3, #20]	@ g_event_report.794, g_event_report
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ g_event_report.794,
	beq	.L89	@,
	add	r2, sp, #8	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.794
.L89:
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
	b	.L91	@
.L99:
	.word	.L92
	.word	.L93
	.word	.L94
	.word	.L95
	.word	.L96
	.word	.L97
	.word	.L98
.L98:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L91:
	bl	vfmw_dprint_nothing	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L92:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L93:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L94:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L95:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L96:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L97:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ enable, enable
	bhi	.L114	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r5, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r3, #0	@ tmp138,
	beq	.L114	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, r4, asl #2]	@ tmp140, s_pstVfmwChan
	mov	r0, #0	@ D.42226,
	str	r6, [r1, #1604]	@ enable, <variable>.stSynExtraData.s32DnrEnable
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L114:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42226,
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ enable, enable
	bhi	.L120	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r5, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r3, #0	@ tmp138,
	beq	.L120	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, r4, asl #2]	@ tmp140, s_pstVfmwChan
	mov	r0, #0	@ D.42213,
	ldr	r1, [r2, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	str	r1, [r6, #0]	@ <variable>.stSynExtraData.s32DnrEnable,* enable
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L120:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42213,
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
	cmp	r0, #3	@ ChanID,
	bhi	.L125	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r2, r0, asl #2]	@ D.42124, s_pstVfmwChan
	cmp	r3, #0	@ D.42124,
	strne	r1, [r3, #676]	@ Value, <variable>.s32LastFrameIdPlus2
	bx	lr	@
.L125:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L131	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, r0, asl #2]	@ D.42113, s_pstVfmwChan
	cmp	r3, #0	@ D.42113,
	mvneq	r0, #0	@ D.42111,
	ldrne	r0, [r3, #676]	@ D.42111, <variable>.s32LastFrameIdPlus2
	ldmfd	sp!, {r3, pc}	@
.L131:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42111,
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
	str	r0, [r4, #24]	@ new_extra_ref, extra_ref
	bhi	.L136	@,
.L133:
	add	r2, r5, #4992	@ tmp147, new_extra_disp,
	movw	ip, #5000	@ tmp142,
	add	r1, r2, #8	@ tmp147, tmp147,
	cmp	r0, ip	@ new_extra_ref, tmp142
	movge	r0, ip	@ iftmp.734, tmp142
	movw	r6, #:lower16:-5000	@ tmp144,
	movt	r6, #:upper16:-5000	@ tmp144,
	cmp	r0, r6	@ iftmp.734, tmp144
	strge	r0, [r4, #24]	@, iftmp.734, extra_ref
	strlt	r6, [r4, #24]	@, tmp144, extra_ref
	movw	r0, #10000	@ tmp149,
	cmp	r1, r0	@ tmp147, tmp149
	movw	r6, #:lower16:.LANCHOR0	@ tmp143,
	str	r5, [r4, #28]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp143,
	bhi	.L137	@,
.L134:
	movw	r0, #5000	@ tmp151,
	movw	r3, #:lower16:-5000	@ tmp153,
	cmp	r5, r0	@ new_extra_disp, tmp151
	movge	r5, r0	@ iftmp.1328, tmp151
	movt	r3, #:upper16:-5000	@ tmp153,
	cmp	r5, r3	@ iftmp.1328, tmp153
	strge	r5, [r4, #28]	@, iftmp.1328, extra_disp
	strlt	r3, [r4, #28]	@, tmp153, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L136:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #24]	@ new_extra_ref, extra_ref
	b	.L133	@
.L137:
	bl	vfmw_dprint_nothing	@
	ldr	r5, [r6, #28]	@ new_extra_disp, extra_disp
	b	.L134	@
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L143	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, r0, asl #2]	@ D.41888, s_pstVfmwChan
	cmp	r3, #0	@ D.41888,
	moveq	r0, #33	@ D.41886,
	ldrne	r0, [r3, #24]	@ D.41886, <variable>.eChanCapLevel
	ldmfd	sp!, {r3, pc}	@
.L143:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41886,
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L149	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.41877, s_pstVfmwChan
	cmp	r3, #0	@ D.41877,
	beq	.L149	@,
	ldr	r0, [r3, #1460]	@ D.41875, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r3, pc}	@
.L149:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41875,
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L155	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.41866, s_pstVfmwChan
	cmp	r3, #0	@ D.41866,
	beq	.L155	@,
	ldr	r0, [r3, #1456]	@ D.41864, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r3, pc}	@
.L155:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41864,
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
	beq	.L162	@,
	cmp	r6, r5	@ Threshould, StreamAmount
	blt	.L163	@,
.L159:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, NextMode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L163:
	mov	r4, #3	@ NextMode,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, NextMode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L162:
	cmp	r6, #0	@ Threshould,
	add	r3, r6, #7	@ tmp140, Threshould,
	movlt	r6, r3	@ Threshould, tmp140
	cmp	r5, r6, asr #3	@ StreamAmount, Threshould,
	bge	.L159	@,
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ NextMode,
	b	.L159	@
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
	sub	r3, r0, #18	@ D.42429, eCapLevel,
	cmp	r3, #7	@ D.42429,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movwls	ip, #:lower16:.LANCHOR1	@ tmp196,
	mov	r7, r0, asl #3	@ tmp308, eCapLevel,
	movtls	ip, #:upper16:.LANCHOR1	@ tmp196,
	rsb	r5, r0, r7	@ tmp168, eCapLevel, tmp308
	movw	r4, #:lower16:CapItem	@ tmp307,
	ldrls	ip, [ip, r3, asl #2]	@ MinDnrFspNum, CSWTCH.807
	movt	r4, #:upper16:CapItem	@ tmp307,
	movw	r3, #:lower16:.LANCHOR0	@ tmp309,
	movt	r3, #:upper16:.LANCHOR0	@ tmp309,
	mov	r6, r0	@ eCapLevel, eCapLevel
	add	r0, r4, r5, asl #2	@, tmp170, tmp307, tmp168,
	ldr	r5, [r3, #24]	@ extra_ref, extra_ref
	movhi	ip, #6	@ MinDnrFspNum,
	ldr	r9, [r0, #12]	@ TempMinFrame, CapItem
	mov	sl, r1	@ VdmMemSize, VdmMemSize
	cmp	r5, #0	@ extra_ref,
	mov	r8, r2	@ ScdMemSize, ScdMemSize
	rsb	ip, ip, r9	@ s32MaxRefFrameNum, MinDnrFspNum, TempMinFrame
	ldr	r1, [r0, #8]	@ TempPmv, CapItem
	movlt	r5, #0	@ tmp200,
	strlt	r5, [r3, #24]	@ tmp200, extra_ref
	cmp	ip, #15	@ s32MaxRefFrameNum,
	ldr	r2, [r0, #16]	@ TempMiddleFrame, CapItem
	.pad #468
	sub	sp, sp, #468	@,,
	ldr	r0, [r0, #20]	@ TempFluentFrame, CapItem
	movgt	r5, #0	@ extra_ref_tmp,
	bgt	.L169	@,
	ldr	r5, [r3, #24]	@ extra_ref_tmp, extra_ref
	add	ip, ip, r5	@ D.41104, s32MaxRefFrameNum, extra_ref_tmp
	cmp	ip, #16	@ D.41104,
	addgt	r5, r5, #16	@ D.41107, extra_ref_tmp,
	rsbgt	r5, ip, r5	@ extra_ref_tmp, D.41104, D.41107
.L169:
	add	fp, r5, r1	@ TempPmv.1447, extra_ref_tmp, TempPmv
	ldr	r3, [r3, #28]	@ extra_disp.685, extra_disp
	cmp	fp, #0	@ TempPmv.1447,
	ble	.L185	@,
	cmp	fp, #17	@ TempPmv.1447,
	movge	fp, #17	@ nPmv,
.L171:
	cmp	r6, #23	@ eCapLevel,
	bhi	.L172	@,
	add	r5, r5, r3	@ D.41110, extra_ref_tmp, extra_disp.685
	add	r1, r5, r9	@ TempMinFrame.1444, D.41110, TempMinFrame
	add	ip, r5, r2	@ TempMiddleFrame.1445, D.41110, TempMiddleFrame
	cmp	r1, #0	@ TempMinFrame.1444,
	cmpgt	ip, #0	@, TempMiddleFrame.1445,
	ble	.L173	@,
	add	lr, r5, r0	@ TempFluentFrame.1446, D.41110, TempFluentFrame
	cmp	lr, #0	@ TempFluentFrame.1446,
	strgt	lr, [sp, #44]	@ TempFluentFrame.1446, %sfp
	strgt	ip, [sp, #40]	@ TempMiddleFrame.1445, %sfp
	movgt	r9, r1	@ nMinFrame, TempMinFrame.1444
	ble	.L173	@,
.L175:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp210,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp210,
	ldr	ip, [r5, #36]	@ D.41126, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.41126,
	beq	.L180	@,
.L186:
	rsb	r7, r6, r7	@ tmp214, eCapLevel, tmp308
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
	blx	ip	@ D.41126
	movw	r6, #:lower16:CapItem	@ tmp211,
	add	r4, r4, r7, asl #2	@, tmp216, tmp307, tmp214,
	movt	r6, #:upper16:CapItem	@ tmp211,
	subs	r3, r0, #0	@ ret,
	bne	.L180	@,
	ldr	lr, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r0, lr, #47104	@ tmp230, MemArrange.TotalMemUsed,
	add	r1, r0, #16	@ tmp230, tmp230,
	str	r1, [sl, #0]	@ tmp230,* VdmMemSize
	ldr	ip, [r4, #24]	@ tmp240, CapItem
	add	r2, ip, #32768	@ tmp241, tmp240,
	str	r2, [r8, #0]	@ tmp241,* ScdMemSize
	ldr	ip, [r5, #36]	@ temp.1448, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1448,
	beq	.L180	@,
	ldr	lr, [r6, r9, asl #2]	@ tmp255, CapItem
	mov	r0, #1	@,
	ldr	r2, [sp, #40]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	mov	r3, lr	@, tmp255
	mvn	lr, #0	@,
	str	r2, [sp, #4]	@,
	ldr	r2, [r6, r7, asl #2]	@, CapItem
	str	lr, [sp, #12]	@,
	add	lr, sp, #48	@,,
	str	fp, [sp, #0]	@ nPmv,
	str	lr, [sp, #16]	@,
	mov	lr, #64	@,
	str	lr, [sp, #20]	@,
	blx	ip	@ temp.1448
	subs	lr, r0, #0	@ ret.1451,
	bne	.L180	@,
	ldr	r2, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r0, r2, #47104	@ tmp262, MemArrange.TotalMemUsed,
	add	r1, r0, #16	@ tmp262, tmp262,
	str	r1, [sl, #4]	@ tmp262,
	ldr	ip, [r4, #24]	@ tmp272, CapItem
	add	r3, ip, #32768	@ tmp273, tmp272,
	str	r3, [r8, #4]	@ tmp273,
	ldr	ip, [r5, #36]	@ temp.1455, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1455,
	beq	.L182	@,
	ldr	r5, [sp, #44]	@, %sfp
	mov	r0, #1	@,
	ldr	r3, [r6, r9, asl #2]	@ tmp287, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r6, r7, asl #2]	@ tmp281, CapItem
	str	r5, [sp, #4]	@,
	mvn	r5, #0	@,
	str	lr, [sp, #8]	@ ret.1451,
	mov	lr, #64	@,
	str	r5, [sp, #12]	@,
	add	r5, sp, #48	@,,
	str	fp, [sp, #0]	@ nPmv,
	str	r5, [sp, #16]	@,
	str	lr, [sp, #20]	@,
	blx	ip	@ temp.1455
	cmp	r0, #0	@ ret.1458
	bne	.L182	@,
	ldr	r3, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r2, r3, #47104	@ tmp294, MemArrange.TotalMemUsed,
	add	r1, r2, #16	@ tmp294, tmp294,
	str	r1, [sl, #8]	@ tmp294,
	ldr	ip, [r4, #24]	@ tmp304, CapItem
	add	r3, ip, #32768	@ tmp305, tmp304,
	str	r3, [r8, #8]	@ tmp305,
	b	.L177	@
.L172:
	cmp	r6, #32	@ eCapLevel,
	bls	.L176	@,
.L184:
	mvn	r0, #0	@ D.41143,
.L177:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L173:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp210,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp210,
	str	r0, [sp, #44]	@ TempFluentFrame, %sfp
	str	r2, [sp, #40]	@ TempMiddleFrame, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #36]	@ D.41126, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.41126,
	bne	.L186	@,
.L180:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41143,
	b	.L177	@
.L176:
	str	r0, [sp, #44]	@ TempFluentFrame, %sfp
	str	r2, [sp, #40]	@ TempMiddleFrame, %sfp
	b	.L175	@
.L185:
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
	b	.L171	@
.L182:
	bl	vfmw_dprint_nothing	@
	b	.L184	@
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
	beq	.L188	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r2, [r4, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	ldr	r8, [r3, #28]	@ extra_disp, extra_disp
	ldr	r1, [r1, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	ldr	ip, [r3, #24]	@ extra_ref, extra_ref
	add	r8, r8, r2	@ TempDispNum, extra_disp, <variable>.s32DisplayFrameNum
	add	r3, ip, r1	@ TempRefNum, extra_ref, <variable>.s32MaxRefFrameNum
	orrs	r2, r8, r3	@, TempDispNum, TempRefNum
	bmi	.L202	@,
	cmp	r3, #16	@ TempRefNum,
	strle	r3, [r4, #32]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	strle	r8, [r4, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bgt	.L206	@,
.L192:
	rsbs	r6, r6, #1	@ tmp175, flag
	movcc	r6, #0	@ tmp175
	cmp	r7, #25	@ eCapLevel,
	moveq	r6, #0	@, tmp175,
	cmp	r6, #0	@ tmp175,
	bne	.L202	@,
.L188:
	ldr	r3, [r4, #4]	@ D.40974, <variable>.Purpose
	cmp	r3, #2	@ D.40974,
	bhi	.L202	@,
	bne	.L194	@,
	ldr	r3, [r4, #64]	@ D.40981, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.40981,
	beq	.L202	@,
	ldr	r2, [r4, #68]	@ D.40983, <variable>.s32SlotHeight
	cmp	r2, #0	@ D.40983,
	beq	.L202	@,
	mul	r2, r2, r3	@ tmp176, D.40983, D.40981
	ldr	r1, [r4, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r0, #0	@ tmp181,
	movw	r3, #:lower16:539128	@ tmp182,
	str	r0, [r5, #12]	@ tmp181, <variable>.PmvDetailMem
	movt	r3, #:upper16:539128	@ tmp182,
	stmib	r5, {r0, r3}	@ phole stm
	mov	ip, r2, asl #1	@ tmp177, tmp176,
	mla	r2, r1, ip, ip	@ tmp180, <variable>.s32DisplayFrameNum, tmp177, tmp177
	str	r2, [r5, #0]	@ tmp180, <variable>.VdhDetailMem
.L190:
	add	sp, sp, #448	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L206:
	bl	vfmw_dprint_nothing	@
	mov	r0, #16	@ tmp168,
	str	r8, [r4, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	str	r0, [r4, #32]	@ tmp168, <variable>.s32MaxRefFrameNum
	b	.L192	@
.L207:
	ldr	r3, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r3, #0	@ <variable>.s32MaxSliceNum,
	ble	.L202	@,
	ldr	lr, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	lr, #0	@ <variable>.s32MaxSpsNum,
	ble	.L202	@,
	ldr	ip, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L199	@,
.L202:
	bl	vfmw_dprint_nothing	@
.L205:
	mvn	r0, #0	@ D.40965,
	b	.L190	@
.L194:
	cmp	r3, #1	@ D.40974,
	bne	.L205	@,
	ldr	r6, [r4, #32]	@ temp.1488, <variable>.s32MaxRefFrameNum
	cmp	r6, #0	@ temp.1488,
	blt	.L202	@,
	ldr	r1, [r4, #12]	@ D.40994, <variable>.s32MaxWidth
	cmp	r1, #31	@ D.40994,
	ble	.L202	@,
	ldr	r2, [r4, #16]	@ D.40996, <variable>.s32MaxHeight
	cmp	r2, #31	@ D.40996,
	ble	.L202	@,
	ldr	lr, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	lr, #262144	@ <variable>.s32SCDBufSize,
	blt	.L202	@,
	ldr	ip, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	ip, #1	@ <variable>.s32SupportH264,
	beq	.L207	@,
.L199:
	ldr	r7, [r4, #40]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r7, #0	@ <variable>.s32SupportBFrame,
	addeq	r0, r6, #1	@ PmvNum.1489, temp.1488,
	moveq	r8, #1	@ PmvNum,
	beq	.L201	@,
	add	r0, r6, #1	@ PmvNum.1489, temp.1488,
	cmp	r0, #17	@ PmvNum.1489,
	movlt	r8, r0	@ PmvNum, PmvNum.1489
	movge	r8, #17	@ PmvNum,
.L201:
	add	r3, sp, #444	@,,
	ldr	r7, [r4, #60]	@ temp.1490, <variable>.s32DisplayFrameNum
	bl	VCTRL_GetChanPmvSize	@
	ldr	r1, [sp, #444]	@ s32ChanPmvSize, s32ChanPmvSize
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp193,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp193,
	str	r1, [r5, #12]	@ s32ChanPmvSize, <variable>.PmvDetailMem
	ldr	ip, [r0, #36]	@ D.41014, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.41014,
	beq	.L202	@,
	ldr	r2, [r4, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp197,
	ldr	r3, [r4, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r1, #0	@ tmp198,
	str	lr, [sp, #8]	@ tmp197,
	add	r0, sp, #28	@ tmp200,,
	str	r1, [sp, #12]	@ tmp198,
	mov	lr, #64	@ tmp201,
	str	r0, [sp, #16]	@ tmp200,
	add	r6, r7, r6	@ tmp196, temp.1490, temp.1488
	str	r8, [sp, #0]	@ PmvNum,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ tmp196,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp201,
	blx	ip	@ D.41014
	cmp	r0, #0	@ ret
	bne	.L202	@,
	ldr	lr, [sp, #32]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r1, lr, #47104	@ tmp203, MemArrange.TotalMemUsed,
	add	ip, r1, #16	@ tmp203, tmp203,
	str	ip, [r5, #0]	@ tmp203, <variable>.VdhDetailMem
	ldr	r3, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	r2, r3, #32768	@ tmp206, <variable>.s32SCDBufSize,
	str	r2, [r5, #4]	@ tmp206, <variable>.ScdDetailMem
	ldr	r3, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	bne	.L203	@,
	movw	r2, #:lower16:539128	@ tmp208,
	mov	r0, r3	@ D.40965, <variable>.s32SupportH264
	movt	r2, #:upper16:539128	@ tmp208,
	str	r2, [r5, #8]	@ tmp208, <variable>.ChanCtxDetailMem
	b	.L190	@
.L203:
	ldr	r3, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	movw	r2, #:lower16:539128	@ tmp216,
	ldr	r1, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	movt	r2, #:upper16:539128	@ tmp216,
	ldr	lr, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	mov	r4, #4000	@ tmp214,
	mul	ip, r4, r3	@ tmp212, tmp214, <variable>.s32MaxSpsNum
	movw	r4, #4060	@ tmp211,
	mla	r3, r4, r1, ip	@ tmp215, tmp211, <variable>.s32MaxSliceNum, tmp212
	mov	r1, #2208	@ tmp220,
	add	ip, r3, r2	@ tmp216, tmp215, tmp216
	mla	r3, r1, lr, ip	@ tmp221, tmp220, <variable>.s32MaxPpsNum, tmp216
	str	r3, [r5, #8]	@ tmp221, <variable>.ChanCtxDetailMem
	b	.L190	@
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L214	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.40584, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L214	@,
	cmp	r1, #0	@ pArgs,
	beq	.L214	@,
	ldr	ip, [r1, #0]	@ tmp140,* pArgs
	mov	r0, #0	@ D.40582,
	str	ip, [r3, #1408]	@ tmp140, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L214:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40582,
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L221	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ D.40427, s_pstVfmwChan
	cmp	r3, #0	@ D.40427,
	beq	.L221	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L222	@,
.L219:
	mvn	r0, #0	@ D.40425,
	ldmfd	sp!, {r3, pc}	@
.L221:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40425,
	ldmfd	sp!, {r3, pc}	@
.L222:
	ldr	r2, [r3, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L219	@,
	ldr	r2, [r3, #156]	@ D.40439, <variable>.stChanMem.VirAddr
	ldr	r0, [r3, #164]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	ldr	ip, [r3, #160]	@ <variable>.stChanMem.PhyAddr, <variable>.stChanMem.PhyAddr
	cmp	r2, #0	@ D.40439,
	str	r2, [r1, #4]	@ D.40439, <variable>.VirAddr
	str	r0, [r1, #12]	@ <variable>.stChanMem.Length, <variable>.Length
	movne	r0, #0	@ D.40425,
	str	ip, [r1, #8]	@ <variable>.stChanMem.PhyAddr, <variable>.PhyAddr
	ldmnefd	sp!, {r3, pc}	@
	b	.L219	@
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L229	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.40333, s_pstVfmwChan
	cmp	r3, #0	@ D.40333,
	beq	.L229	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L227	@,
.L229:
	bl	vfmw_dprint_nothing	@
	mov	r0, #19	@ D.40334,
	ldmfd	sp!, {r3, pc}	@
.L227:
	ldr	r0, [r3, #880]	@ D.40334, <variable>.eVidStd
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
	ldr	r3, [ip, r0, asl #2]	@ D.39747, s_pstVfmwChan
	cmp	r2, #16	@ g_chipID,
	ldr	ip, [r3, #1460]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r0, [r3, #1456]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bls	.L240	@,
.L231:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L240:
	mov	r4, #1	@ tmp145,
	movw	r3, #:lower16:102368	@ tmp147,
	mov	r2, r4, asl r2	@ tmp144, tmp145,
	movt	r3, #:upper16:102368	@ tmp147,
	and	r3, r2, r3	@ tmp147, tmp144, tmp147
	cmp	r3, #0	@ tmp147,
	beq	.L241	@,
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp155,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp155,
	ldr	r3, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r0, r3	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L242	@,
	ldr	r3, [r1, #0]	@ D.39760, <variable>.eVidStd
	cmp	r3, #13	@ D.39760,
	cmpne	r3, #0	@, D.39760,
	beq	.L235	@,
.L244:
	cmp	r3, #15	@ D.39760,
	beq	.L235	@,
	cmp	r3, #18	@ D.39760,
	bne	.L231	@,
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L241:
	tst	r2, #31	@ tmp144,
	beq	.L231	@,
	movw	r3, #:lower16:g_ChipMaxWidth	@ tmp150,
	movt	r3, #:upper16:g_ChipMaxWidth	@ tmp150,
	ldr	r2, [r3, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r0, r2	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L243	@,
.L234:
	ldr	ip, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #18	@ <variable>.eVidStd,
	bne	.L231	@,
.L235:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L243:
	movw	r2, #:lower16:g_ChipMaxHeight	@ tmp152,
	movt	r2, #:upper16:g_ChipMaxHeight	@ tmp152,
	ldr	r0, [r2, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	ip, r0	@ ChanMaxHeight, g_ChipMaxHeight
	bgt	.L234	@,
	b	.L235	@
.L242:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp157,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp157,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	ip, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L235	@,
	ldr	r3, [r1, #0]	@ D.39760, <variable>.eVidStd
	cmp	r3, #13	@ D.39760,
	cmpne	r3, #0	@, D.39760,
	bne	.L244	@,
	b	.L235	@
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp182,
	movt	r4, #:upper16:.LANCHOR0	@ tmp182,
	mov	r5, r0	@ ChanID, ChanID
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.39618, s_pstVfmwChan
	ldr	r0, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r3, #1624]	@ eOldDecCore, <variable>.eDecCore
	sub	r2, r0, #4	@ tmp148, <variable>.eVidStd,
	cmp	r2, #10	@ tmp148,
	ldrls	pc, [pc, r2, asl #2]	@ tmp148
	b	.L246	@
.L252:
	.word	.L247
	.word	.L246
	.word	.L246
	.word	.L246
	.word	.L246
	.word	.L246
	.word	.L248
	.word	.L249
	.word	.L250
	.word	.L246
	.word	.L251
.L248:
	ldr	r0, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	moveq	r0, #3	@ tmp154,
	streq	r0, [r3, #1624]	@ tmp154, <variable>.eDecCore
	beq	.L253	@,
.L246:
	mov	r0, #0	@ tmp166,
	str	r0, [r3, #1624]	@ tmp166, <variable>.eDecCore
.L253:
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.1608, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp167,
	movt	r6, #:upper16:.LANCHOR0	@ tmp167,
	ldr	r2, [r0, #1624]	@ prephitmp.1610, <variable>.eDecCore
	cmp	r2, ip	@ prephitmp.1610, eOldDecCore
	beq	.L257	@,
	sub	ip, ip, #1	@ tmp168, eOldDecCore,
	cmp	ip, #4	@ tmp168,
	bhi	.L258	@,
	ldr	r3, [r6, #36]	@ D.39638, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.39638,
	beq	.L258	@,
	add	lr, r0, #217088	@, prephitmp.1608,
	str	r1, [sp, #4]	@,
	add	r0, lr, #432	@,,
	blx	r3	@ D.39638
	ldr	r0, [r6, r5, asl #2]	@ prephitmp.1608, s_pstVfmwChan
	ldr	r1, [sp, #4]	@,
	ldr	r2, [r0, #1624]	@ prephitmp.1610, <variable>.eDecCore
.L258:
	sub	r3, r2, #1	@ tmp173, prephitmp.1610,
	cmp	r3, #4	@ tmp173,
	bhi	.L257	@,
	ldr	ip, [r0, #24]	@ <variable>.eChanCapLevel, <variable>.eChanCapLevel
	movw	lr, #:lower16:217532	@ tmp174,
	movt	lr, #:upper16:217532	@ tmp174,
	movw	r2, #:lower16:.LANCHOR0	@ tmp176,
	movt	r2, #:upper16:.LANCHOR0	@ tmp176,
	str	ip, [r0, lr]	@ <variable>.eChanCapLevel, <variable>.stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	ldr	r3, [r4, #32]	@ D.39650, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.39650,
	beq	.L259	@,
	ldr	r2, [r2, r5, asl #2]	@ temp.1625, s_pstVfmwChan
	add	r0, r2, #217088	@, temp.1625,
	add	r0, r0, #432	@,,
	ldr	r2, [r2, #880]	@, <variable>.eVidStd
	blx	r3	@ D.39650
	cmp	r0, #0	@,
	bne	.L259	@,
.L257:
	mov	r0, #0	@ D.39653,
.L260:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L251:
	mov	r2, #2	@ tmp150,
	str	r2, [r3, #1624]	@ tmp150, <variable>.eDecCore
	b	.L253	@
.L247:
	mov	r6, #1	@ tmp149,
	str	r6, [r3, #1624]	@ tmp149, <variable>.eDecCore
	b	.L253	@
.L249:
	ldr	r6, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r6, #1	@ g_VdmCharacter,
	moveq	r6, #4	@ tmp159,
	streq	r6, [r3, #1624]	@ tmp159, <variable>.eDecCore
	beq	.L253	@,
	b	.L246	@
.L250:
	ldr	r2, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	moveq	r2, #5	@ tmp164,
	streq	r2, [r3, #1624]	@ tmp164, <variable>.eDecCore
	beq	.L253	@,
	b	.L246	@
.L259:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39653,
	b	.L260	@
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
	beq	.L270	@,
	cmp	r0, #0	@ eType,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp137,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp137,
	streq	r1, [r3, #204]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #1	@ eType,
	beq	.L271	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38594,
	ldmfd	sp!, {r3, pc}	@
.L271:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	mov	r0, #0	@ D.38594,
	str	r1, [r3, #208]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r3, pc}	@
.L270:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38594,
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
	bne	.L279	@,
	ldr	r3, [r3, #204]	@ s_VfmwCTrl.event_report_vdec, s_VfmwCTrl.event_report_vdec
	blx	r3	@ s_VfmwCTrl.event_report_vdec
	ldmfd	sp!, {r3, pc}	@
.L279:
	cmp	ip, #1	@ <variable>.eAdapterType,
	beq	.L280	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38576,
	ldmfd	sp!, {r3, pc}	@
.L280:
	ldr	ip, [r3, #208]	@ s_VfmwCTrl.event_report_omxvdec, s_VfmwCTrl.event_report_omxvdec
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
	beq	.L292	@,
	ldr	r1, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r1, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L292	@,
	ldr	r2, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r2, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L292	@,
	ldr	r5, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r5, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L292	@,
	ldr	ip, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	ip, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L292	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L292	@,
	ldr	r1, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r1, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L292	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L293	@ tmp144,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.38324,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp144,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp147,,,
.L283:
	mov	r0, r5	@, D.38324
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L292:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #0	@ D.38324,
	b	.L283	@
.L294:
	.align	2
.L293:
	.word	.LANCHOR0+32
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
	movw	r5, #:lower16:.LANCHOR0	@ tmp177,
	movt	r5, #:upper16:.LANCHOR0	@ tmp177,
	mov	r6, r0	@ ChanId, ChanId
	movw	r1, #:lower16:217512	@ tmp140,
	movt	r1, #:upper16:217512	@ tmp140,
	ldr	r0, [r5, r0, asl #2]	@ D.42167, s_pstVfmwChan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, r1]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #13	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L296	@
.L307:
	.word	.L297
	.word	.L298
	.word	.L299
	.word	.L300
	.word	.L296
	.word	.L301
	.word	.L302
	.word	.L296
	.word	.L303
	.word	.L304
	.word	.L305
	.word	.L305
	.word	.L305
	.word	.L306
.L306:
	add	r4, r0, #217088	@, D.42167,
	add	r0, r4, #432	@,,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L308:
	add	ip, r4, #1	@ tmp162, ret,
	cmp	ip, #1	@ tmp162,
	bhi	.L309	@,
	ldr	r3, [r5, #20]	@ g_event_report.791, g_event_report
	cmp	r3, #0	@ g_event_report.791,
	beq	.L311	@,
	add	r2, sp, #8	@ tmp165,,
	mov	lr, #1	@ tmp164,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	lr, [r2, #-4]!	@ tmp164, para
	blx	r3	@ g_event_report.791
.L311:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L296:
	mvn	r4, #0	@ ret,
	b	.L308	@
.L297:
	add	r4, r0, #217088	@, D.42167,
	add	r0, r4, #432	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L298:
	add	r0, r0, #217088	@, D.42167,
	add	r0, r0, #432	@,,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L299:
	add	r2, r0, #217088	@, D.42167,
	add	r0, r2, #432	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L300:
	add	r0, r0, #217088	@, D.42167,
	add	r0, r0, #432	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L301:
	add	r1, r0, #217088	@, D.42167,
	add	r0, r1, #432	@,,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L302:
	add	ip, r0, #217088	@, D.42167,
	add	r0, ip, #432	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L303:
	add	lr, r0, #217088	@, D.42167,
	add	r0, lr, #432	@,,
	bl	REAL8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L304:
	add	r3, r0, #217088	@, D.42167,
	add	r0, r3, #432	@,,
	bl	REAL9DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L305:
	add	r2, r0, #217088	@, D.42167,
	add	r0, r2, #432	@,,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L308	@
.L309:
	movw	r3, #:lower16:g_chipID	@ tmp166,
	movt	r3, #:upper16:g_chipID	@ tmp166,
	ldr	r3, [r3, #0]	@ g_chipID, g_chipID
	cmp	r3, #16	@ g_chipID,
	bhi	.L311	@,
	mov	r1, #1	@ tmp169,
	mov	r3, r1, asl r3	@ tmp168, tmp169,
	tst	r3, #3904	@ tmp168,
	bne	.L313	@,
	movw	r2, #:lower16:98367	@ tmp172,
	movt	r2, #:upper16:98367	@ tmp172,
	and	r0, r3, r2	@ tmp172, tmp168, tmp172
	cmp	r0, #0	@ tmp172,
	beq	.L311	@,
	mov	r0, r6	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_SetLastFrameIdPlus2	@
	bl	vfmw_dprint_nothing	@
	b	.L311	@
.L313:
	ldr	r3, [r5, #20]	@ g_event_report.1720, g_event_report
	cmp	r3, #0	@ g_event_report.1720,
	beq	.L314	@,
	add	r2, sp, #8	@ tmp175,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.1720
.L314:
	bl	vfmw_dprint_nothing	@
	b	.L311	@
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
	beq	.L327	@,
	mul	r4, r9, r6	@ D.41976, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp189, D.41976, D.41976,
	mov	r1, r0, asr #1	@, tmp189,
	str	r1, [sp, #8]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [sp, #4]	@, %sfp
	beq	.L318	@,
	cmp	r6, #0	@ Height,
	ble	.L319	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.41976
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp213, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	fp, r5, #1	@ tmp215, tmp213,
	mov	r5, #1	@ y,
	ble	.L319	@,
	cmp	fp, #0	@ tmp215,
	beq	.L320	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.41976
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L319	@,
.L320:
	mov	r1, r4	@, D.41976
	mov	r2, r8	@, fp
	add	fp, r5, #1	@ tmp216, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, fp, #1	@ y, tmp216,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.41976
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L320	@,
.L319:
	add	r6, r6, r6, lsr #31	@, tmp193, Height, Height,
	mov	fp, r6, asr #1	@ D.41991, tmp193,
	cmp	fp, #0	@ D.41991,
	ble	.L321	@,
	add	r2, r4, #3	@ tmp197, D.41976,
	cmp	r4, #0	@ D.41976,
	ldr	r5, [sp, #4]	@ pU, %sfp
	add	r9, r9, r9, lsr #31	@, tmp200, Width, Width,
	movlt	r4, r2	@ D.41976, tmp197
	ldr	r6, [sp, #12]	@, %sfp
	add	lr, r5, r4, asr #2	@, pV, pU, D.41976,
	add	r2, r7, r6	@ pChrom, pFrameStore,
	mov	r6, r9, asr #1	@ pretmp.1738, tmp200,
	mov	r9, #0	@ y.1772,
.L322:
	cmp	r6, #0	@ pretmp.1738,
	ble	.L325	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp202,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.1738
	sub	ip, r6, #1	@ tmp208, pretmp.1738,
	and	ip, ip, r3	@ tmp210, tmp208,
	mov	r0, #2	@ ivtmp.1754,
	strb	r1, [r5, #0]	@ tmp202,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp204,
	strb	r1, [lr, #0]	@ tmp204,* pV
	beq	.L340	@,
	cmp	ip, #0	@ tmp210,
	beq	.L323	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp227,* x
	cmp	r0, r6	@ x, pretmp.1738
	strb	ip, [r5, r3]	@ tmp227,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp228,* ivtmp.1754
	strb	r1, [lr, r3]	@ tmp228,* x
	mov	r3, r0	@ x, ivtmp.1754
	mov	r0, #3	@ ivtmp.1754,
	beq	.L340	@,
.L323:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp221,* x
	add	r1, r3, #1	@ tmp211, x,
	add	ip, r0, #1	@ tmp212, ivtmp.1754,
	strb	r4, [r5, r3]	@ tmp221,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp222,* ivtmp.1754
	add	r0, ip, #1	@ ivtmp.1754, tmp212,
	strb	r4, [lr, r3]	@ tmp222,* x
	add	r3, r1, #1	@ x, tmp211,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp225,
	cmp	r3, r6	@ x, pretmp.1738
	strb	r4, [r5, r1]	@ tmp225,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp226,
	strb	ip, [lr, r1]	@ tmp226,
	bne	.L323	@,
.L340:
	add	r5, r5, r6	@ pU, pU, pretmp.1738
	add	lr, lr, r6	@ pV, pV, pretmp.1738
.L325:
	add	r9, r9, #1	@ y.1772, y.1772,
	cmp	r9, fp	@ y.1772, D.41991
	addne	r2, r2, sl	@ pChrom, pChrom, Stride
	bne	.L322	@
.L321:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L318:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r3, #0	@,
	beq	.L327	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_FreeVirMem	@
.L327:
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
	ldr	r3, [r3, #56]	@ D.41935, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.41935,
	beq	.L352	@,
	mov	r0, #0	@,
	blx	r3	@ D.41935
.L348:
	bl	SCDDRV_EnableInt	@
	movw	r0, #:lower16:g_dnr_hal_fun_ptr	@ tmp136,
	movt	r0, #:upper16:g_dnr_hal_fun_ptr	@ tmp136,
	ldr	r3, [r0, #28]	@ D.41939, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.41939,
	beq	.L349	@,
	blx	r3	@ D.41939
	ldmfd	sp!, {r4, pc}	@
.L349:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L352:
	bl	vfmw_dprint_nothing	@
	b	.L348	@
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
	ldr	r3, [r3, #52]	@ D.41920, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.41920,
	beq	.L359	@,
	mov	r0, #0	@,
	blx	r3	@ D.41920
.L355:
	bl	SCDDRV_MaskInt	@
	movw	r0, #:lower16:g_dnr_hal_fun_ptr	@ tmp136,
	movt	r0, #:upper16:g_dnr_hal_fun_ptr	@ tmp136,
	ldr	r3, [r0, #24]	@ D.41924, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r3, #0	@ D.41924,
	beq	.L356	@,
	blx	r3	@ D.41924
	ldmfd	sp!, {r4, pc}	@
.L356:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L359:
	bl	vfmw_dprint_nothing	@
	b	.L355	@
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r0	@ ChanID, ChanID
	bhi	.L383	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp173,
	movt	r4, #:upper16:.LANCHOR0	@ tmp173,
	ldr	r3, [r4, r0, asl #2]	@ D.41845, s_pstVfmwChan
	cmp	r3, #0	@ D.41845,
	beq	.L383	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L383	@,
	cmp	r1, #0	@ pImage,
	beq	.L383	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, r8, asl #2]	@ temp.1861, s_pstVfmwChan
	cmp	r3, #0	@ temp.1861,
	beq	.L384	@,
	ldr	r0, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L384	@,
	add	r0, r4, #212	@, tmp173,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, r8, asl #2]	@ D.43523, s_pstVfmwChan
	movw	r1, #:lower16:181770	@ tmp183,
	movt	r1, #:upper16:181770	@ tmp183,
	add	r5, r2, #216064	@ pDSDFrame, D.43523,
	ldrsb	r7, [r2, r1]	@ s32AllDecFrameNum, <variable>.FspInst.s32DecFsNum
	add	r5, r5, #360	@ pDSDFrame, pDSDFrame,
	cmp	r7, #0	@ s32AllDecFrameNum,
	ble	.L368	@,
	ldr	r6, [r5], #16	@ <variable>.eFrameState, <variable>.eFrameState
	sub	r4, r7, #1	@ tmp197, s32AllDecFrameNum,
	and	r4, r4, #1	@ tmp199, tmp197,
	cmp	r6, #1	@ <variable>.eFrameState,
	beq	.L385	@,
.L373:
	mov	r6, #1	@ i,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	add	r5, r5, #16	@ ivtmp.1845, ivtmp.1845,
	ble	.L368	@,
	cmp	r4, #0	@ tmp199,
	beq	.L370	@,
	ldr	r3, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r3, r6	@ <variable>.eFrameState,
	beq	.L386	@,
.L375:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #16	@ ivtmp.1845, ivtmp.1845,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L370	@,
	b	.L368	@
.L369:
	ldr	lr, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	lr, #1	@ <variable>.eFrameState,
	beq	.L387	@,
.L378:
	add	r6, r6, #1	@ i, tmp200,
	add	r5, r4, #16	@ ivtmp.1845, tmp201,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	ble	.L368	@,
.L370:
	ldr	ip, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	mov	r4, r5	@ tmp201, ivtmp.1845
	add	r6, r6, #1	@ tmp200, i,
	cmp	ip, #1	@ <variable>.eFrameState,
	bne	.L369	@,
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	mov	r0, r8	@, ChanID
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	ldr	lr, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	lr, #1	@ <variable>.eFrameState,
	bne	.L378	@,
.L387:
	mov	r0, r8	@, ChanID
	ldr	r1, [r4, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r4, #-8]	@, <variable>.s32FrameSize
	add	r6, r6, #1	@ i, tmp200,
	bl	DNR_FsIsInImgQue	@
	add	r5, r4, #16	@ ivtmp.1845, tmp201,
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r4, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L370	@,
.L368:
	ldr	r0, .L388	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L385:
	mov	r0, r8	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L373	@
.L386:
	mov	r0, r8	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L375	@
.L384:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L383:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L389:
	.align	2
.L388:
	.word	.LANCHOR0+212
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r7, r2	@ pReadImgNum, pReadImgNum
	ldr	ip, [r4, r0, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r8, r3	@ pNewImgNum, pNewImgNum
	cmp	ip, #0	@ tmp141,
	beq	.L397	@,
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	streq	r3, [r8, #0]	@ pstVoQue,* pNewImgNum
	streq	r3, [r7, #0]	@ pstVoQue,* pReadImgNum
	streq	r3, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r8	@, pNewImgNum
	mov	r1, r7	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.1886, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ D.41785, <variable>.eVidStd
	cmp	r3, #0	@ D.41785,
	beq	.L398	@,
	cmp	r3, #15	@ D.41785,
	movne	r3, #2	@ tmp145,
	strne	r3, [r6, #0]	@ tmp145,* pRefImgNum
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L397:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L398:
	movw	r1, #:lower16:244144	@ tmp143,
	movt	r1, #:upper16:244144	@ tmp143,
	ldr	r0, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size, <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r0, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bhi	.L400	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r4, [r3, r0, asl #2]	@ D.40364, s_pstVfmwChan
	cmp	r4, #0	@ D.40364,
	beq	.L400	@,
	ldr	r2, [r4, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L419	@,
.L403:
	mov	r5, #0	@ pDecParam,
.L402:
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L400:
	mov	r5, #0	@ pDecParam,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L419:
	ldr	r0, [r4, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r0, #1	@ <variable>.s32IsRun,
	bne	.L403	@,
	ldr	r1, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L403	@
.L415:
	.word	.L405
	.word	.L418
	.word	.L407
	.word	.L418
	.word	.L403
	.word	.L418
	.word	.L418
	.word	.L403
	.word	.L418
	.word	.L418
	.word	.L413
	.word	.L413
	.word	.L413
	.word	.L418
.L413:
	ldr	r5, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r5, #1	@ g_VdmCharacter,
	beq	.L403	@,
.L418:
	movw	r2, #:lower16:217524	@ tmp154,
	movt	r2, #:upper16:217524	@ tmp154,
	ldr	r5, [r4, r2]	@ pDecParam,
.L416:
	cmp	r5, #0	@ pDecParam,
	beq	.L402	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #28]	@, <variable>.u32timeLastDecParamReady
	b	.L402	@
.L407:
	movw	ip, #:lower16:218556	@ tmp144,
	movt	ip, #:upper16:218556	@ tmp144,
	ldr	r5, [r4, ip]	@ pDecParam,
	b	.L416	@
.L405:
	movw	r3, #:lower16:217880	@ tmp142,
	movt	r3, #:upper16:217880	@ tmp142,
	ldr	r5, [r4, r3]	@ pDecParam,
	b	.L416	@
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ ChanId, ChanId
	bhi	.L424	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, r0, asl #2]	@ D.40390, s_pstVfmwChan
	cmp	r3, #0	@ D.40390,
	beq	.L424	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L424	@,
	ldr	r6, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r6, #1	@ <variable>.s32IsRun,
	beq	.L425	@,
.L424:
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ D.40391,
.L423:
	mov	r0, r3	@, D.40391
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L425:
	bl	VCTRL_GetDecParam	@
	subs	r7, r0, #0	@ pDecParam,
	beq	.L431	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp152, s_pstVfmwChan
	mov	r0, #0	@ tmp153,
	mov	r3, r0	@ D.40391, tmp153
	str	r0, [ip, #680]	@ tmp153, <variable>.s32CountNoDecparamFlag
	ldr	r1, [r4, r5, asl #2]	@ tmp155, s_pstVfmwChan
	str	r0, [r1, #684]	@ tmp153, <variable>.u32NoDecparamStartTime
	b	.L423	@
.L431:
	ldr	r3, [r4, r5, asl #2]	@ temp.1933, s_pstVfmwChan
	ldr	r8, [r3, #680]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r8, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L432	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ temp.1937, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.40411, <variable>.u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.40411
	bls	.L428	@,
	rsb	lr, r2, r0	@ tmp158, D.40411, tmp
	cmp	lr, #40	@ tmp158,
	movls	r3, r7	@ D.40391, pDecParam
	bls	.L423	@,
.L428:
	str	r7, [r3, #680]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r3, r6	@ D.40391, <variable>.s32IsRun
	ldr	r2, [r4, r5, asl #2]	@ tmp165, s_pstVfmwChan
	str	r7, [r2, #684]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L423	@
.L432:
	str	r6, [r3, #680]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, r5, asl #2]	@ temp.1934, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r3, r8	@ D.40391, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #684]	@, <variable>.u32NoDecparamStartTime
	b	.L423	@
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
	mov	r1, #48	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #28]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #16]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #20]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #24]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
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
	beq	.L436	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp154,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp154,
	ldr	r3, [r3, #32]	@ D.41410, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.41410,
	beq	.L437	@,
	mov	r0, #0	@,
	blx	r3	@ D.41410
.L438:
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #16	@,
	bl	__memzero	@
.L436:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length.1994, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #24]	@ PhyAddr.1992, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.1994,
	ldr	r6, [r4, #20]	@ VirAddr.1993, <variable>.stScdCmnMem.VirAddr
	bne	.L445	@,
.L439:
	mov	r0, r7	@, PhyAddr.1992
	mov	r1, r6	@, VirAddr.1993
	mov	r2, r5	@, Length.1994
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.2001, <variable>.Length
	ldr	r7, [r4, #40]	@ PhyAddr.1999, <variable>.PhyAddr
	cmp	r5, #0	@ Length.2001,
	ldr	r6, [r4, #36]	@ VirAddr.2000, <variable>.VirAddr
	bne	.L446	@,
.L440:
	mov	r0, r7	@, PhyAddr.1999
	mov	r1, r6	@, VirAddr.2000
	mov	r2, r5	@, Length.2001
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length.2006, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.2004, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.2006,
	ldr	r6, [r4, #68]	@ VirAddr.2005, <variable>.stBpdReg.VirAddr
	bne	.L447	@,
.L441:
	mov	r0, r7	@, PhyAddr.2004
	mov	r1, r6	@, VirAddr.2005
	mov	r2, r5	@, Length.2006
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length.2011, <variable>.Length
	ldr	r7, [r4, #56]	@ PhyAddr.2009, <variable>.PhyAddr
	cmp	r5, #0	@ Length.2011,
	ldr	r6, [r4, #52]	@ VirAddr.2010, <variable>.VirAddr
	bne	.L448	@,
.L442:
	mov	r0, r7	@, PhyAddr.2009
	mov	r1, r6	@, VirAddr.2010
	mov	r2, r5	@, Length.2011
	bl	MEM_DelMemRecord	@
	ldr	r7, [r4, #92]	@ Length.2016, <variable>.stSystemReg.Length
	ldr	r5, [r4, #88]	@ PhyAddr.2014, <variable>.stSystemReg.PhyAddr
	cmp	r7, #0	@ Length.2016,
	ldr	r6, [r4, #84]	@ VirAddr.2015, <variable>.stSystemReg.VirAddr
	beq	.L443	@,
	mov	r0, r5	@, PhyAddr.2014
	mov	r1, r6	@, VirAddr.2015
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L443:
	mov	r2, r7	@, Length.2016
	mov	r1, r6	@, VirAddr.2015
	mov	r0, r5	@, PhyAddr.2014
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
.L448:
	mov	r0, r7	@, PhyAddr.2009
	mov	r1, r6	@, VirAddr.2010
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L442	@
.L447:
	mov	r0, r7	@, PhyAddr.2004
	mov	r1, r6	@, VirAddr.2005
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #64	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L441	@
.L446:
	mov	r0, r7	@, PhyAddr.1999
	mov	r1, r6	@, VirAddr.2000
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #32	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L440	@
.L445:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L439	@
.L437:
	bl	vfmw_dprint_nothing	@
	b	.L438	@
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
	str	r3, [sp, #28]	@ __stack_chk_guard, D.43776
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L450	@,
	add	r7, r4, #64	@ pstMem.2042, pstDrvMem,
	ldr	r1, [r4, #36]	@, <variable>.VirAddr
	ldr	r2, [r4, #44]	@, <variable>.Length
	ldr	r0, [r4, #40]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269746176	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269746176	@,
	mov	r2, r7	@, pstMem.2042
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L478	@,
	movw	r6, #:lower16:g_vdm_hal_fun_ptr	@ tmp165,
	movt	r6, #:upper16:g_vdm_hal_fun_ptr	@ tmp165,
	ldr	r3, [r6, #16]	@ D.41265, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.41265,
	beq	.L478	@,
	blx	r3	@ D.41265
	cmp	r0, #0	@,
	bne	.L478	@,
	add	r8, r4, #48	@ pstMem.2046, pstDrvMem,
	ldr	r1, [r4, #68]	@, <variable>.stBpdReg.VirAddr
	ldr	r2, [r4, #76]	@, <variable>.stBpdReg.Length
	ldr	r0, [r4, #72]	@, <variable>.stBpdReg.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269729792	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269729792	@,
	mov	r2, r8	@, pstMem.2046
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L461	@,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:270487672	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487672	@,
	mov	r2, r8	@, pstMem.2046
	bl	MEM_MapRegisterAddr	@
	subs	r7, r0, #0	@ D.41288,
	bne	.L461	@,
	add	sl, sp, #8	@ tmp177,,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r7	@, D.41288
	mov	r0, sl	@, tmp177
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	bl	snprintf	@
	ldr	r3, [r6, #24]	@ D.41299, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.41299,
	beq	.L461	@,
	blx	r3	@ D.41299
	subs	r2, r0, #0	@ Size,
	ble	.L461	@,
	mov	r0, sl	@, tmp177
	mov	r1, r7	@, D.41288
	mov	r3, r4	@, pstDrvMem
	str	r7, [sp, #0]	@ D.41288,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L463	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r2, [r4, #12]	@, <variable>.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [r6, #28]	@ D.41317, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.41317,
	beq	.L463	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, <variable>.Length
	blx	r3	@ D.41317
	subs	r6, r0, #0	@ D.41319,
	bne	.L463	@,
	bl	VDMDRV_Init	@
	add	r7, r4, #16	@ pstMem.2060, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r6	@, D.41319
	mov	r3, r7	@, pstMem.2060
	str	r6, [sp, #0]	@ D.41319,
	mov	r2, r0	@ D.41331,
	movw	r0, #:lower16:.LC1	@,
	movt	r0, #:upper16:.LC1	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L478	@,
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
	subs	ip, r0, #0	@ D.41336,
	bne	.L478	@,
	mov	r2, ip	@, D.41336
	mov	r0, #70	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	str	ip, [sp, #4]	@ D.41336,
	movw	ip, #:lower16:.LC2	@ tmp198,
	movt	ip, #:upper16:.LC2	@ tmp198,
	str	ip, [sp, #0]	@ tmp198,
	bl	request_threaded_irq	@
	subs	ip, r0, #0	@ D.42443,
	bne	.L478	@,
	mov	r2, ip	@, D.42443
	mov	r0, #73	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r3, #32	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	str	ip, [sp, #4]	@ D.42443,
	movw	r6, #:lower16:.LC3	@ tmp201,
	movt	r6, #:upper16:.LC3	@ tmp201,
	str	r6, [sp, #0]	@ tmp201,
	bl	request_threaded_irq	@
	subs	r6, r0, #0	@ D.42450,
	bne	.L478	@,
	mov	r0, #93	@,
	movw	r1, #:lower16:VCTRL_Dnr_Isr	@,
	mov	r2, r6	@, D.42450
	movt	r1, #:upper16:VCTRL_Dnr_Isr	@,
	mov	r3, #32	@,
	str	r6, [sp, #4]	@ D.42450,
	movw	lr, #:lower16:.LC4	@ tmp204,
	movt	lr, #:upper16:.LC4	@ tmp204,
	str	lr, [sp, #0]	@ tmp204,
	bl	request_threaded_irq	@
	cmp	r0, #0	@ D.42457
	beq	.L453	@,
	bl	DNR_Close	@
	mov	r0, r6	@ D.41239, D.42450
.L453:
	ldr	r2, [sp, #28]	@ D.43776, D.43776
	ldr	r1, [r5, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r1	@ D.43776, __stack_chk_guard
	bne	.L480	@,
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L461:
	mov	r0, r8	@, pstMem.2046
.L479:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.41239,
	b	.L453	@
.L478:
	mov	r0, r7	@, pstMem.2060
	b	.L479	@
.L463:
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.41239,
	b	.L453	@
.L450:
	mov	r0, r6	@, pstMem
	b	.L479	@
.L480:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bhi	.L488	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	ldr	ip, [r2, r0, asl #2]	@ D.40600, s_pstVfmwChan
	ldr	r3, [ip, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L488	@,
	cmp	r1, #0	@ pArgs,
	beq	.L488	@,
	mov	r5, r1	@ pArgs, pArgs
	add	ip, ip, #1424	@ tmp140, D.40600,
	ldmia	r5!, {r0, r1, r2, r3}	@ pArgs,,,,
	mov	r4, #0	@ D.40598,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp140,,,,
	ldr	r0, [r5, #0]	@ tmp143,* pArgs
	str	r0, [ip, #0]	@ tmp143, <variable>.stSynExtraData.stPvrInfo
.L483:
	mov	r0, r4	@, D.40598
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L488:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ D.40598,
	b	.L483	@
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L495	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L495	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.39601, s_pstVfmwChan
	cmp	r3, #0	@ D.39601,
	beq	.L495	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #72	@,
	add	r1, r3, #32	@, D.39601,
	bl	memcpy	@
	mov	r0, #0	@ D.39597,
	ldmfd	sp!, {r3, pc}	@
.L495:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39597,
	ldmfd	sp!, {r3, pc}	@
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
	cmp	r0, #3	@ ChanID,
	mov	ip, r0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L503	@,
	cmp	r1, #0	@ pArgs,
	beq	.L503	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r2, [r3, r0, asl #2]	@ D.38775, s_pstVfmwChan
	cmp	r2, #0	@ D.38775,
	beq	.L503	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	add	r2, r2, #1584	@ tmp140, D.38775,
	add	r2, r2, #12	@ tmp140, tmp140,
	stmia	r2, {r0, r1}	@ tmp140,,
	ldr	r3, [r3, ip, asl #2]	@ temp.2135, s_pstVfmwChan
	ldr	r0, [r3, #1596]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp145, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, #0	@ D.38771,
	cmp	r2, #1	@ tmp145,
	strhi	r0, [r3, #1596]	@ tmp147, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r3, pc}	@
.L503:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38771,
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
	beq	.L509	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.38733, s_pstVfmwChan
	cmp	r3, #0	@ D.38733,
	beq	.L509	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #128	@ tmp139, D.38733,
	mov	ip, #0	@ D.38731,
	stmia	r3, {r0, r1, r2}	@ tmp139,,,
.L506:
	mov	r0, ip	@, D.38731
	ldmfd	sp!, {r3, pc}	@
.L509:
	bl	vfmw_dprint_nothing	@
	mvn	ip, #0	@ D.38731,
	b	.L506	@
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
	beq	.L515	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.38713, s_pstVfmwChan
	cmp	r3, #0	@ D.38713,
	beq	.L515	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	r3, r3, #104	@ tmp139, D.38713,
	mov	ip, #0	@ D.38711,
	stmia	r3, {r0, r1, r2}	@ tmp139,,,
.L512:
	mov	r0, ip	@, D.38711
	ldmfd	sp!, {r3, pc}	@
.L515:
	bl	vfmw_dprint_nothing	@
	mvn	ip, #0	@ D.38711,
	b	.L512	@
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
	ldr	r3, [r4, r0, asl #2]	@ D.40824, s_pstVfmwChan
	cmp	r3, #0	@ D.40824,
	beq	.L526	@,
	ldr	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	bne	.L526	@,
	ldr	r3, [r3, #820]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L526	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.40834,
	bne	.L526	@,
	mov	r1, r0	@, D.40834
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r1, r0, #0	@ id,
	blt	.L526	@,
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r7, r0	@ pLf,
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ pLf,
	beq	.L526	@,
	ldr	r0, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L524	@,
	ldr	r1, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r1, #0	@ <variable>.pstDispOutFs,
	beq	.L524	@,
	ldr	ip, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L524	@,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.40827,
	ldr	r1, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r6, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r4, r5, asl #2]	@ tmp150, s_pstVfmwChan
	ldr	r2, [r3, #816]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r2, [r6, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L526:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40827,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L524:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40827,
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
	beq	.L552	@,
	ldr	r3, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L530	@,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.40727,
.L529:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L530:
	ldr	r0, [r7, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ D.40732,
	beq	.L553	@,
.L531:
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L533	@,
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
	ldr	lr, [r7, #28]	@ temp.2296, <variable>.s32LumaPhyAddr
	str	lr, [r4, #88]	@ temp.2296, <variable>.top_luma_phy_addr
	mov	r0, lr	@, temp.2296
	str	lr, [r4, #120]	@ temp.2296, <variable>.luma_2d_phy_addr
	str	lr, [r4, #104]	@ temp.2296, <variable>.luma_phy_addr
	ldr	r8, [r7, #36]	@ temp.2297, <variable>.s32CbPhyAddr
	str	r8, [r4, #108]	@ temp.2297, <variable>.chrom_phy_addr
	str	r8, [r4, #92]	@ temp.2297, <variable>.top_chrom_phy_addr
	str	r8, [r4, #124]	@ temp.2297, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.40748, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.40748, <variable>.luma_2d_vir_addr
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
	ldr	r1, [r7, #20]	@ temp.2302, <variable>.s32YWidth
	str	r1, [r4, #152]	@ temp.2302, <variable>.disp_width
	mov	r0, r1, lsr fp	@ tmp188, temp.2302,
	ldr	r3, [r7, #24]	@ temp.2304, <variable>.s32YHeight
	str	r0, [r4, #160]	@ tmp188, <variable>.disp_center_x
	str	r3, [r4, #156]	@ temp.2304, <variable>.disp_height
	mov	ip, r3, lsr fp	@ tmp189, temp.2304,
	str	ip, [r4, #164]	@ tmp189, <variable>.disp_center_y
	ldr	r1, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	fp, [r4, #208]	@ tmp174, <variable>.chroma_idc
	str	r2, [r4, #140]	@ tmp194, <variable>.format
	str	r1, [r4, #172]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r6, [r4, #168]	@ tmp175, <variable>.frame_rate
	str	r6, [r4, #180]	@ tmp175, <variable>.error_level
	str	r6, [r4, #256]	@ tmp175, <variable>.line_num_phy_addr
	str	r6, [r4, #56]	@ tmp175, <variable>.line_num_vir_addr
	beq	.L533	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	cmp	r1, fp	@ <variable>.s32YHeight,
	bgt	.L545	@,
	b	.L535	@
.L555:
	ldr	r2, [r4, #144]	@ __n, <variable>.image_width
	cmp	r2, #0	@ __n,
	bne	.L554	@,
.L537:
	add	r0, r1, r1, lsr #31	@, tmp228, <variable>.s32YHeight, <variable>.s32YHeight,
	add	r6, r6, #1	@ y, y,
	ldr	r2, [r4, #172]	@ D.40806, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp228,
	bge	.L535	@,
.L557:
	add	r8, r8, r2	@ pDst, pDst, D.40806
.L545:
	ldr	r3, [r7, #0]	@ D.40768, <variable>.enFmt
	cmp	r3, #0	@ D.40768,
	beq	.L555	@,
	cmp	r3, #1	@ D.40768,
	beq	.L537	@,
	cmp	r3, #3	@ D.40768,
	beq	.L556	@,
	cmp	r3, #2	@ D.40768,
	bne	.L541	@,
	mov	r1, sl	@, pSrc
	ldr	r2, [r4, #144]	@, <variable>.image_width
	mov	r0, r8	@, pDst
	add	r6, r6, #1	@ y, y,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	ldr	r2, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	r0, r1, r1, lsr #31	@, tmp228, <variable>.s32YHeight, <variable>.s32YHeight,
	add	sl, sl, r2, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	ldr	r2, [r4, #172]	@ D.40806, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp228,
	blt	.L557	@,
.L535:
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
	ldr	r2, [r3, r9, asl #2]	@ D.40809, s_pstVfmwChan
	add	ip, r2, #217088	@, D.40809,
	add	r2, ip, #432	@, tmp2,
	add	r3, ip, #440	@,,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ D.40727,
	beq	.L529	@,
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
.L550:
	mvn	r0, #0	@ D.40727,
	b	.L529	@
.L554:
	mov	r1, #128	@,
	mov	r0, r8	@, pDst
	bl	memset	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	b	.L537	@
.L556:
	ldr	ip, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #0	@ <variable>.image_width,
	beq	.L539	@,
	mov	r0, #0	@ x.2320,
	mov	r2, sl	@ ivtmp.2279, pSrc
	mov	r3, r0	@ x, x.2320
.L540:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp199,* ivtmp.2279
	mov	lr, r0	@ tmp202, x.2320
	add	r3, r3, #2	@ x, x,
	strb	r1, [lr, r8]!	@ tmp199,
	mov	r0, r3	@ x.2320, x
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp204,
	add	r2, r2, #4	@ ivtmp.2279, ivtmp.2279,
	strb	ip, [lr, #1]	@ tmp204,
	ldr	r1, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, x
	bhi	.L540	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L539:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3	@ pSrc, pSrc, <variable>.s32ChromStride
	b	.L537	@
.L541:
	cmp	r3, #4	@ D.40768,
	bne	.L550	@,
	ldr	r0, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L543	@,
	mov	r0, #0	@ x.665,
	mov	r2, sl	@ ivtmp.2285, pSrc
	mov	r3, r0	@ x.2316, x.665
.L544:
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ tmp215,* ivtmp.2285
	mov	r1, r8	@ tmp218, pDst
	add	r3, r3, #2	@ x.2316, x.2316,
	strb	lr, [r1, r0]!	@ tmp215,
	mov	r0, r3	@ x.665, x.2316
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp220,
	add	r2, r2, #4	@ ivtmp.2285, ivtmp.2285,
	strb	ip, [r1, #1]	@ tmp220,
	ldr	lr, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r3, lr	@ x.2316, <variable>.image_width
	bcc	.L544	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L543:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	b	.L537	@
.L553:
	ldr	r0, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r0, #1	@ <variable>.s32IsFrameValid,
	bne	.L531	@,
.L533:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40727,
	b	.L529	@
.L552:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.40727, PicBufID
	b	.L529	@
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
	ldr	lr, [r3, r0, asl #2]	@ D.40858, s_pstVfmwChan
	mov	r6, r0	@ ChanID, ChanID
	mov	ip, r1	@ pUsrdecFrame, pUsrdecFrame
	cmp	lr, #0	@ D.40858,
	beq	.L565	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L565	@,
	ldr	r0, [lr, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #18	@ <variable>.eVidStd,
	bne	.L565	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #824	@ tmp141, D.40858,
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
	cmp	r0, #0	@ D.40868
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40861,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L565:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40861,
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
	beq	.L567	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp142, <variable>.p_usrdat
.L567:
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
	ldr	r6, [r0, #352]	@ D.40674, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.40674, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp158,
	movt	r3, #:upper16:.LANCHOR0	@ tmp158,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #0]	@ temp.2399, s_pstVfmwChan
	cmp	r2, #0	@ temp.2399,
	beq	.L570	@,
	add	r0, r2, #217088	@ tmp145, temp.2399,
	add	r2, r0, #432	@ tmp145, tmp145,
	cmp	r4, r2	@ pCtx, tmp145
	moveq	r3, #0	@ i,
	beq	.L571	@,
.L570:
	ldr	r2, [r3, #4]	@ temp.2401, s_pstVfmwChan
	cmp	r2, #0	@ temp.2401,
	beq	.L572	@,
	add	ip, r2, #217088	@ tmp148, temp.2401,
	add	r1, ip, #432	@ tmp148, tmp148,
	cmp	r4, r1	@ pCtx, tmp148
	moveq	r3, #1	@ i,
	beq	.L571	@,
.L572:
	ldr	r2, [r3, #8]	@ temp.2403, s_pstVfmwChan
	cmp	r2, #0	@ temp.2403,
	beq	.L573	@,
	add	r2, r2, #217088	@ tmp151, temp.2403,
	add	lr, r2, #432	@ tmp151, tmp151,
	cmp	r4, lr	@ pCtx, tmp151
	moveq	r3, #2	@ i,
	beq	.L571	@,
.L573:
	ldr	r3, [r3, #12]	@ D.42464, s_pstVfmwChan
	cmp	r3, #0	@ D.42464,
	beq	.L574	@,
	add	r0, r3, #217088	@ tmp154, D.42464,
	add	r3, r0, #432	@ tmp154, tmp154,
	cmp	r4, r3	@ pCtx, tmp154
	beq	.L575	@,
.L574:
	mvn	r1, #0	@ tmp156,
	str	r1, [r4, #360]	@ tmp156, <variable>.ChanID
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.40686,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L575:
	mov	r3, #3	@ i,
.L571:
	mov	r0, #1	@ D.40686,
	str	r3, [r4, #360]	@ i, <variable>.ChanID
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp185,
	movt	r3, #:upper16:.LANCHOR0	@ tmp185,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r1, [r3, r0, asl #2]	@ D.40892, s_pstVfmwChan
	cmp	r1, #0	@ D.40892,
	beq	.L598	@,
	ldr	r2, [r1, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L595	@
.L593:
	.word	.L581
	.word	.L582
	.word	.L583
	.word	.L584
	.word	.L585
	.word	.L586
	.word	.L587
	.word	.L595
	.word	.L588
	.word	.L589
	.word	.L590
	.word	.L590
	.word	.L590
	.word	.L591
	.word	.L585
	.word	.L595
	.word	.L595
	.word	.L595
	.word	.L592
.L595:
	ldmfd	sp!, {r4, pc}	@
.L590:
	ldr	r0, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	movw	r3, #:lower16:.LANCHOR0	@ tmp165,
	movt	r3, #:upper16:.LANCHOR0	@ tmp165,
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L599	@,
.L585:
	ldr	r3, [r3, #40]	@ temp.2437, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ temp.2437,
	ldmeqfd	sp!, {r4, pc}	@
	add	lr, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, lr, #432	@,,
	blx	r3	@ temp.2437
	ldmfd	sp!, {r4, pc}	@
.L581:
	add	ip, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_Init	@
.L582:
	add	r2, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_Init	@
.L583:
	add	r3, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_Init	@
.L584:
	add	r0, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_Init	@
.L587:
	add	r2, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_Init	@
.L588:
	add	r0, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL8DEC_Init	@
.L586:
	add	ip, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_Init	@
.L589:
	add	r3, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL9DEC_Init	@
.L591:
	add	ip, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_Init	@
.L592:
	add	r2, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	USERDEC_Init	@
.L599:
	add	r3, r1, #217088	@, D.40892,
	add	r1, r1, #888	@, D.40892,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_Init	@
.L598:
	ldmfd	sp!, {r4, lr}	@
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L619	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	ldr	r0, [r3, r0, asl #2]	@ D.40543, s_pstVfmwChan
	cmp	r0, #0	@ D.40543,
	beq	.L619	@,
	ldr	r2, [r0, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L619	@,
	ldr	r1, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #14	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L605	@
.L617:
	.word	.L606
	.word	.L607
	.word	.L608
	.word	.L609
	.word	.L610
	.word	.L611
	.word	.L612
	.word	.L605
	.word	.L613
	.word	.L614
	.word	.L615
	.word	.L615
	.word	.L615
	.word	.L616
	.word	.L610
.L615:
	ldr	r2, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L620	@,
.L610:
	mov	r0, #1	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L611:
	add	r3, r0, #217088	@, D.40543,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_GetImageBuffer	@
.L612:
	add	r2, r0, #217088	@, D.40543,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_GetImageBuffer	@
.L613:
	add	r1, r0, #217088	@, D.40543,
	add	r0, r1, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL8DEC_GetImageBuffer	@
.L614:
	add	r0, r0, #217088	@, D.40543,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL9DEC_GetImageBuffer	@
.L616:
	add	r0, r0, #217088	@, D.40543,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_GetImageBuffer	@
.L605:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L606:
	add	r0, r0, #217088	@, D.40543,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L607:
	add	ip, r0, #217088	@, D.40543,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_GetImageBuffer	@
.L608:
	add	ip, r0, #217088	@, D.40543,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L609:
	add	r3, r0, #217088	@, D.40543,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L619:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L620:
	add	r1, r0, #217088	@, D.40543,
	add	r0, r1, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_GetImageBuffer	@
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
.LFB1994:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #28
	sub	sp, sp, #28	@,,
	bhi	.L659	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp359,
	movt	r5, #:upper16:.LANCHOR0	@ tmp359,
	ldr	r3, [r5, r0, asl #2]	@ D.41602, s_pstVfmwChan
	cmp	r3, #0	@ D.41602,
	beq	.L659	@,
	ldr	r9, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r9, #1	@ <variable>.s32IsRun,
	bne	.L659	@,
	ldr	r6, [r3, #16]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r6, #0	@ <variable>.s32StopSyntax,
	bne	.L659	@,
	str	r6, [r3, #672]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	mov	r7, r0, asl #2	@ tmp362, ChanID,
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_TraceBsPeriod	@ tmp175,
	movt	r2, #:upper16:g_TraceBsPeriod	@ tmp175,
	ldr	r3, [r2, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [r5, r4, asl #2]	@ tmp183, s_pstVfmwChan
	mov	sl, r0	@ currtime,
	add	r0, r7, r5	@ tmp171, tmp362, tmp359
	ldr	r1, [r0, #220]	@ tmp174, last_rec_pos_time
	rsb	ip, r1, sl	@ tmp173, tmp174, currtime
	cmp	ip, r3	@ tmp173, g_TraceBsPeriod
	strhi	sl, [r0, #220]	@ currtime, last_rec_pos_time
	ldr	r2, [r2, #880]	@ D.41621, <variable>.eVidStd
	movw	r3, #:lower16:.LANCHOR0	@ tmp182,
	movls	r9, r6	@ rec_pos_print_flag, <variable>.s32StopSyntax
	movt	r3, #:upper16:.LANCHOR0	@ tmp182,
	sub	r1, r2, #10	@ tmp184, D.41621,
	cmp	r1, #2	@ tmp184,
	bls	.L662	@,
	cmp	r2, #14	@ D.41621,
	beq	.L631	@,
	cmp	r2, #4	@ D.41621,
	bne	.L630	@,
.L631:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L663	@,
	ldr	r6, [r5, r4, asl #2]	@ temp.2505, s_pstVfmwChan
	ldrb	r8, [r6, #1025]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	r8, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	bne	.L657	@,
	ldr	r0, [r6, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r0, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	beq	.L656	@,
.L657:
	add	r8, r6, #1024	@ tmp361, temp.2505,
.L635:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.2491, s_pstVfmwChan
	ldr	r1, [r0, #32]	@ D.41668, <variable>.stChanCfg.eVidStd
	cmp	r1, #1	@ D.41668,
	beq	.L664	@,
	sub	ip, r1, #2	@ tmp221, D.41668,
	cmp	r1, #6	@ D.41668,
	cmpne	ip, #1	@, tmp221,
	bls	.L641	@,
.L640:
	mov	r3, #1056	@ tmp315,
	mvn	sl, #0	@ tmp316,
	ldrd	r2, [r3, r6]	@ D.41652, tmp315, temp.2505
	mvn	fp, #0	@,
	cmp	r3, fp	@ D.41652, tmp316
	cmpeq	r2, sl	@ D.41652, tmp316
	movne	r1, #944	@ tmp317,
	strned	r2, [r0, r1]	@ D.41652, prephitmp.2491, tmp317
	ldrne	r0, [r5, r4, asl #2]	@ prephitmp.2491, s_pstVfmwChan
.L649:
	mov	ip, #1072	@ tmp320,
	movw	r3, #1080	@ tmp325,
	ldrd	sl, [r6, ip]	@, temp.2505, tmp320
	mov	r1, #960	@ tmp319,
	mov	lr, #976	@ tmp324,
	strd	sl, [sp, #8]	@,,
	ldrd	sl, [r6, r3]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, temp.2505, tmp325
	ldrd	r2, [sp, #8]	@,,
	ldr	ip, [r6, #1088]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	strd	r2, [r0, r1]	@, prephitmp.2491, tmp319
	ldr	r2, [r5, r4, asl #2]	@ tmp323, s_pstVfmwChan
	ldr	r0, [r6, #1092]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	ldr	r1, [r6, #1096]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	strd	sl, [r2, lr]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, tmp323, tmp324
	ldr	r3, [r5, r4, asl #2]	@ tmp328, s_pstVfmwChan
	ldr	lr, [r6, #1100]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	str	ip, [r3, #992]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	ip, [r5, r4, asl #2]	@ tmp331, s_pstVfmwChan
	str	r0, [ip, #996]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r0, [r5, r4, asl #2]	@ tmp334, s_pstVfmwChan
	str	r1, [r0, #1000]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	r6, [r5, r4, asl #2]	@ tmp337, s_pstVfmwChan
	str	lr, [r6, #1016]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
.L658:
	bl	vfmw_dprint_nothing	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r5, r4, asl #2]	@ temp.2551, s_pstVfmwChan
	mov	r0, r8	@, tmp361
	movw	r6, #:lower16:.LANCHOR0	@ tmp339,
	add	r2, r3, #217088	@, temp.2551,
	movt	r6, #:upper16:.LANCHOR0	@ tmp339,
	add	r2, r2, #432	@,,
	ldr	r1, [r3, #880]	@, <variable>.eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L665	@,
.L650:
	mov	r0, #0	@ D.41600,
.L623:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L662:
	ldr	lr, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L631	@,
.L630:
	cmp	r2, #18	@ D.41621,
	beq	.L631	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L631	@,
	cmp	r9, #1	@ rec_pos_print_flag,
	beq	.L632	@,
	mvn	r0, #1	@ D.41600,
	b	.L623	@
.L665:
	bl	OSAL_GetTimeInMs	@
	add	r7, r7, r6	@ tmp347, tmp362, tmp339
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp351,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp351,
	ldr	r1, [r7, #252]	@ tmp350, last_rec_pos_decparam_time
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.2553,
	rsb	r0, r1, r0	@ tmp349, tmp350, currtime.2553
	cmp	r0, ip	@ tmp349, g_TraceFramePeriod
	bls	.L650	@,
	mov	r0, r4	@, ChanID
	str	r3, [r7, #252]	@ currtime.2553, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	mov	r0, #0	@ D.41600,
	b	.L623	@
.L664:
	movw	r2, #:lower16:217520	@ tmp213,
	movt	r2, #:upper16:217520	@ tmp213,
	ldr	lr, [r0, r2]	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData, <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData
	ldrb	r3, [lr, #388]	@ zero_extendqisi2	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ <variable>.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L640	@,
.L641:
	add	r0, r0, #1264	@, prephitmp.2491,
	add	r2, r8, #8	@, tmp361,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L642	@,
	ldr	r2, [r5, r4, asl #2]	@ prephitmp.2487, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp233,
	movt	r3, #:upper16:.LANCHOR0	@ tmp233,
	ldr	r9, [r2, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r9, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L666	@,
	mov	r1, #952	@ tmp239,
	mvn	sl, #0	@ tmp240,
	ldrd	r0, [r1, r2]	@ temp.2516, tmp239, prephitmp.2487
	mvn	fp, #0	@,
	cmp	r1, fp	@ temp.2516, tmp240
	cmpeq	r0, sl	@ temp.2516, tmp240
	movne	sl, #944	@ tmp241,
	strned	r0, [r2, sl]	@ temp.2516, prephitmp.2487, tmp241
	ldrne	r2, [r3, r4, asl #2]	@ prephitmp.2487, s_pstVfmwChan
.L644:
	mov	lr, #952	@ tmp243,
	mvn	r0, #0	@ tmp244,
	mvn	r1, #0	@,
	strd	r0, [r2, lr]	@ tmp244, prephitmp.2487, tmp243
	ldr	r3, [r5, r4, asl #2]	@ temp.2517, s_pstVfmwChan
	mov	fp, #968	@ tmp247,
	mov	r2, #960	@ tmp246,
	mov	r9, #984	@ tmp251,
	mov	ip, #976	@ tmp250,
	movw	sl, #:lower16:.LANCHOR0	@ tmp245,
	ldrd	r0, [r3, fp]	@, temp.2517, tmp247
	movt	sl, #:upper16:.LANCHOR0	@ tmp245,
	strd	r0, [r3, r2]	@, temp.2517, tmp246
	ldr	r2, [r5, r4, asl #2]	@ temp.2518, s_pstVfmwChan
	ldrd	r0, [r2, r9]	@, temp.2518, tmp251
	strd	r0, [r2, ip]	@, temp.2518, tmp250
	ldr	r3, [r5, r4, asl #2]	@ temp.2519, s_pstVfmwChan
	ldr	r1, [r3, #1004]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	str	r1, [r3, #992]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r2, [r5, r4, asl #2]	@ temp.2520, s_pstVfmwChan
	ldr	ip, [r2, #1008]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	ip, [r2, #996]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r3, [r5, r4, asl #2]	@ temp.2521, s_pstVfmwChan
	ldr	r1, [r3, #1012]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	str	r1, [r3, #1000]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	r2, [r5, r4, asl #2]	@ temp.2522, s_pstVfmwChan
	ldr	ip, [r2, #1020]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	ip, [r2, #1016]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	str	lr, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, r4, asl #2]	@ temp.2507, s_pstVfmwChan
	ldr	r3, [r2, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r3, #3	@ <variable>.stChanCfg.eVidStd,
	ldr	r3, [sp, #4]	@,
	bne	.L645	@,
	mov	lr, #1056	@ tmp264,
	mov	ip, #1072	@ tmp269,
	ldrd	r0, [r6, lr]	@, temp.2505, tmp264
	movw	lr, #1080	@ tmp274,
	strd	r0, [r2, r3]	@, temp.2507, tmp243
	ldrd	r2, [r6, ip]	@, temp.2505, tmp269
	strd	r2, [sp, #16]	@,,
	ldrd	r0, [r6, lr]	@, temp.2505, tmp274
	ldr	r2, [sl, r4, asl #2]	@ tmp267, s_pstVfmwChan
	strd	r0, [sp, #8]	@,,
	ldrd	r0, [sp, #16]	@,,
	ldr	r3, [r6, #1088]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	ldr	ip, [r6, #1092]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	strd	r0, [r2, fp]	@, tmp267, tmp247
	ldrd	r0, [sp, #8]	@,,
	ldr	fp, [sl, r4, asl #2]	@ tmp272, s_pstVfmwChan
	ldr	lr, [r6, #1096]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	ldr	r2, [r6, #1100]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	strd	r0, [fp, r9]	@, tmp272, tmp251
	ldr	r1, [sl, r4, asl #2]	@ tmp277, s_pstVfmwChan
	str	r3, [r1, #1004]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r3, [sl, r4, asl #2]	@ tmp280, s_pstVfmwChan
	str	ip, [r3, #1008]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r1, [sl, r4, asl #2]	@ tmp283, s_pstVfmwChan
	str	lr, [r1, #1012]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	lr, [sl, r4, asl #2]	@ tmp286, s_pstVfmwChan
	str	r2, [lr, #1020]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
.L642:
	ldr	r2, [r5, r4, asl #2]	@ temp.2507, s_pstVfmwChan
	ldr	r1, [r2, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L658	@,
.L645:
	mov	fp, #1056	@ tmp290,
	mvn	sl, #0	@ tmp291,
	ldrd	r0, [r6, fp]	@ temp.2538, temp.2505, tmp290
	mvn	fp, #0	@,
	cmp	r1, fp	@ temp.2538, tmp291
	cmpeq	r0, sl	@ temp.2538, tmp291
	movne	sl, #952	@ tmp292,
	strned	r0, [r2, sl]	@ temp.2538, temp.2507, tmp292
.L647:
	mov	fp, #1072	@ tmp296,
	ldr	ip, [r5, r4, asl #2]	@ tmp294, s_pstVfmwChan
	ldrd	r0, [r6, fp]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, temp.2505, tmp296
	movw	r2, #1080	@ tmp301,
	mov	r3, #968	@ tmp295,
	ldrd	sl, [r6, r2]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, temp.2505, tmp301
	mov	lr, #984	@ tmp300,
	strd	r0, [ip, r3]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, tmp294, tmp295
	ldr	r2, [r5, r4, asl #2]	@ tmp299, s_pstVfmwChan
	ldr	ip, [r6, #1088]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag
	ldr	r0, [r6, #1092]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance
	strd	sl, [r2, lr]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispTime, tmp299, tmp300
	ldr	r3, [r5, r4, asl #2]	@ tmp304, s_pstVfmwChan
	ldr	lr, [r6, #1096]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame
	ldr	r2, [r6, #1100]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum
	str	ip, [r3, #1004]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	ip, [r5, r4, asl #2]	@ tmp307, s_pstVfmwChan
	str	r0, [ip, #1008]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r3, [r5, r4, asl #2]	@ tmp310, s_pstVfmwChan
	str	lr, [r3, #1012]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r6, [r5, r4, asl #2]	@ tmp313, s_pstVfmwChan
	str	r2, [r6, #1020]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	b	.L658	@
.L656:
	add	r8, r6, #1024	@ tmp361, temp.2505,
	mov	r0, r4	@, ChanID
	add	r1, r8, #8	@, tmp361,
	bl	SM_ReadStreamSeg	@
	cmp	r0, #0	@,
	beq	.L635	@,
	cmp	r9, #1	@ rec_pos_print_flag,
	beq	.L667	@,
.L636:
	add	r0, r7, r5	@ tmp196, tmp362, tmp359
	movw	lr, #:lower16:g_NoStreamReportPeriod	@ tmp200,
	movt	lr, #:upper16:g_NoStreamReportPeriod	@ tmp200,
	movw	r2, #:lower16:.LANCHOR0	@ tmp193,
	ldr	r1, [r0, #236]	@ tmp199, last_rec_pos_report_time
	movt	r2, #:upper16:.LANCHOR0	@ tmp193,
	ldr	r3, [lr, #0]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	ip, r1, sl	@ tmp198, tmp199, currtime
	cmp	ip, r3	@ tmp198, g_NoStreamReportPeriod
	bls	.L637	@,
	ldr	r3, [r2, #20]	@ g_event_report.711, g_event_report
	cmp	r3, #0	@ g_event_report.711,
	beq	.L638	@,
	mov	r0, r4	@, ChanID
	mov	r1, #117	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.711
.L638:
	add	r7, r7, r5	@ tmp206, tmp362, tmp359
	str	sl, [r7, #236]	@ currtime, last_rec_pos_report_time
.L637:
	ldr	ip, [r5, r4, asl #2]	@ tmp209, s_pstVfmwChan
	mov	r2, #1	@ tmp210,
	mvn	r0, #3	@ D.41600,
	str	r2, [ip, #672]	@ tmp210, <variable>.s32NoStreamFlag
	b	.L623	@
.L666:
	mov	lr, #952	@ tmp236,
	mov	r1, #944	@ tmp235,
	ldrd	sl, [r2, lr]	@ <variable>.stSynExtraData.NextPts, prephitmp.2487, tmp236
	strd	sl, [r2, r1]	@ <variable>.stSynExtraData.NextPts, prephitmp.2487, tmp235
	ldr	r2, [r3, r4, asl #2]	@ prephitmp.2487, s_pstVfmwChan
	b	.L644	@
.L659:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41600,
	b	.L623	@
.L663:
	cmp	r9, #1	@ rec_pos_print_flag,
	mvnne	r0, #2	@ D.41600,
	bne	.L623	@
.L634:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #2	@ D.41600,
	b	.L623	@
.L632:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.41600,
	b	.L623	@
.L667:
	bl	vfmw_dprint_nothing	@
	b	.L636	@
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp203,
	movt	r4, #:upper16:.LANCHOR0	@ tmp203,
	movw	r8, #:lower16:.LANCHOR0	@ tmp158,
	movt	r8, #:upper16:.LANCHOR0	@ tmp158,
	movw	r6, #:lower16:.LANCHOR0	@ tmp163,
	ldr	ip, [r4, #0]	@ D.41501, s_pstVfmwChan
	movt	r6, #:upper16:.LANCHOR0	@ tmp163,
	ldr	r7, [r4, #4]	@ temp.2602, s_pstVfmwChan
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	ip, #0	@ D.41501,
	ldr	r0, [r4, #8]	@ temp.2604, s_pstVfmwChan
	ldr	r2, [r4, #12]	@ temp.2589, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp168,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r7, #0	@ temp.2602,
	movt	r3, #:upper16:.LANCHOR0	@ tmp168,
	str	ip, [r4, #268]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r7, [r7, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.2604,
	str	r7, [r8, #272]	@ <variable>.s32Priority, ChanPriTab
	mov	r8, sp	@ tmp210,
	ldrne	r0, [r0, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.2589,
	mov	r7, #0	@ MaxPriChan,
	str	r0, [r6, #276]	@ <variable>.s32Priority, ChanPriTab
	movw	r6, #:lower16:.LANCHOR0	@ tmp209,
	ldrne	r2, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movt	r6, #:upper16:.LANCHOR0	@ tmp209,
	mvn	r0, #0	@ ret,
	str	r2, [r3, #280]	@ temp.2589, ChanPriTab
.L692:
	ldr	r3, [r4, #268]	@ MaxPri, ChanPriTab
	ldr	ip, [r4, #272]	@ MaxPri.2598, ChanPriTab
	ldr	r2, [r4, #276]	@ MaxPri.2599, ChanPriTab
	cmp	r3, ip	@ MaxPri, MaxPri.2598
	movlt	r3, ip	@ MaxPri, MaxPri.2598
	movlt	r5, #1	@ MaxPriChan,
	movge	r5, #0	@ MaxPriChan,
	ldr	ip, [r4, #280]	@ MaxPri.2600, ChanPriTab
	cmp	r3, r2	@ MaxPri, MaxPri.2599
	movlt	r3, r2	@ MaxPri, MaxPri.2599
	movlt	r5, #2	@ MaxPriChan,
	cmp	r3, ip	@ MaxPri, MaxPri.2600
	addge	r1, r5, #1	@ prephitmp.2570, MaxPriChan,
	movlt	r5, #3	@ MaxPriChan,
	movlt	r3, ip	@ MaxPri, MaxPri.2600
	movlt	r1, #4	@ prephitmp.2570,
	add	r2, r4, r5, asl #2	@, tmp180, tmp203, MaxPriChan,
	cmp	r3, #0	@ MaxPri,
	movw	r3, #:lower16:.LANCHOR0	@ tmp177,
	str	r7, [r2, #268]	@ MaxPriChan, ChanPriTab
	movt	r3, #:upper16:.LANCHOR0	@ tmp177,
	ble	.L682	@,
	ldr	r3, [r6, r5, asl #2]	@ D.41512, s_pstVfmwChan
	cmp	r3, #0	@ D.41512,
	beq	.L692	@,
	str	r1, [r6, #104]	@ prephitmp.2570, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r2, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L692	@,
	ldr	r1, [r3, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	r1, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L684	@,
	ldr	sl, [r3, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	sl, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L696	@,
.L684:
	mov	sl, #0	@ i,
.L687:
	mov	r0, r5	@, MaxPriChan
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	bne	.L692	@,
	add	sl, sl, #1	@ i, i,
	cmp	sl, #200	@ i,
	beq	.L692	@,
	b	.L687	@
.L682:
	str	r7, [r3, #104]	@ MaxPriChan, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L696:
	mov	r0, r5	@, MaxPriChan
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L697	@,
.L685:
	ldr	sl, [r4, r5, asl #2]	@ temp.2590, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r2, [sl, #52]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	bl	GetNextDecodeMode	@
	str	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r4, r5, asl #2]	@ temp.2592, s_pstVfmwChan
	ldr	r0, [r3, #896]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r0, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [r3, #892]	@ MaxPriChan, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r0, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	r3, [r6, r5, asl #2]	@ tmp195, s_pstVfmwChan
	streq	r0, [r3, #892]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r3, [r6, r5, asl #2]	@ temp.2596, s_pstVfmwChan
	strne	r7, [r3, #888]	@ MaxPriChan, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r0, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r0, [r3, #888]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L684	@
.L697:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L685	@
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
	beq	.L701	@,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L701	@,
	ldr	r0, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L702	@,
	ldr	r1, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L702	@,
.L701:
	mvn	r0, #0	@ ret,
.L700:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L702:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L701	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #28]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L700	@,
	b	.L701	@
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp241,
	movt	r4, #:upper16:.LANCHOR0	@ tmp241,
	mov	r5, r0	@ ChanId, ChanId
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r4, r0, asl #2]	@ D.40467, s_pstVfmwChan
	cmp	r0, #0	@ D.40467,
	beq	.L731	@,
	ldr	ip, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, ip, asl #2]	@ <variable>.eVidStd
	b	.L724	@
.L718:
	.word	.L708
	.word	.L709
	.word	.L710
	.word	.L711
	.word	.L724
	.word	.L712
	.word	.L713
	.word	.L724
	.word	.L714
	.word	.L715
	.word	.L716
	.word	.L716
	.word	.L716
	.word	.L717
.L717:
	add	ip, r0, #217088	@, D.40467,
	add	r0, ip, #432	@,,
	bl	VP8DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ tmp238, s_pstVfmwChan
.L725:
	movw	r3, #:lower16:217524	@ tmp239,
	movt	r3, #:upper16:217524	@ tmp239,
	mov	r0, #0	@ tmp240,
	str	r0, [r2, r3]	@ tmp240,
.L724:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L708:
	add	r0, r0, #217088	@, D.40467,
	mov	r2, #1	@,
	add	r0, r0, #432	@,,
	mov	r6, #0	@ tmp147,
	str	r6, [sp, #0]	@ tmp147,
	bl	H264DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.2654, s_pstVfmwChan
	movw	r4, #:lower16:231076	@ tmp149,
	movt	r4, #:upper16:231076	@ tmp149,
	movw	r7, #:lower16:.LANCHOR0	@ tmp148,
	movt	r7, #:upper16:.LANCHOR0	@ tmp148,
	ldrb	r3, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L732	@,
.L719:
	movw	ip, #:lower16:217880	@ tmp157,
	movt	ip, #:upper16:217880	@ tmp157,
	mov	lr, #0	@ tmp158,
	str	lr, [r2, ip]	@ tmp158,
	b	.L724	@
.L709:
	add	r6, r0, #217088	@, D.40467,
	add	r0, r6, #432	@,,
	movw	r6, #:lower16:295799	@ tmp219,
	bl	VC1DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.2686, s_pstVfmwChan
	movt	r6, #:upper16:295799	@ tmp219,
.L729:
	ldrb	r1, [r2, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	movw	r4, #:lower16:.LANCHOR0	@ tmp218,
	movt	r4, #:upper16:.LANCHOR0	@ tmp218,
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	bne	.L725	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r2, [r4, r5, asl #2]	@ tmp222, s_pstVfmwChan
	mov	ip, #0	@ tmp224,
	strb	ip, [r2, r6]	@ tmp224,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.2686, s_pstVfmwChan
	b	.L725	@
.L710:
	add	r6, r0, #217088	@, D.40467,
	mov	r2, r3	@, pLumaInfo
	add	r0, r6, #432	@,,
	movw	r6, #:lower16:.LANCHOR0	@ tmp174,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.2680, s_pstVfmwChan
	movw	r4, #:lower16:240516	@ tmp175,
	movt	r4, #:upper16:240516	@ tmp175,
	movt	r6, #:upper16:.LANCHOR0	@ tmp174,
	ldrb	r3, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L733	@,
.L721:
	movw	ip, #:lower16:218556	@ tmp183,
	movt	ip, #:upper16:218556	@ tmp183,
	mov	lr, #0	@ tmp184,
	str	lr, [r2, ip]	@ tmp184,
	b	.L724	@
.L711:
	add	r2, r0, #217088	@, D.40467,
	movw	r6, #:lower16:291233	@ tmp162,
	add	r0, r2, #432	@,,
	movt	r6, #:upper16:291233	@ tmp162,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.2677, s_pstVfmwChan
	b	.L729	@
.L712:
	add	lr, r0, #217088	@, D.40467,
	add	r0, lr, #432	@,,
	bl	DIVX3DEC_VDMPostProc	@
.L726:
	ldr	lr, [r4, r5, asl #2]	@ tmp232, s_pstVfmwChan
	movw	r1, #:lower16:217524	@ tmp233,
	movt	r1, #:upper16:217524	@ tmp233,
	mov	r0, #0	@ tmp234,
	str	r0, [lr, r1]	@ tmp234,
	b	.L724	@
.L713:
	add	r2, r0, #217088	@, D.40467,
	movw	r6, #:lower16:234644	@ tmp188,
	add	r0, r2, #432	@,,
	movt	r6, #:upper16:234644	@ tmp188,
	bl	AVSDEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.2683, s_pstVfmwChan
	b	.L729	@
.L714:
	add	r3, r0, #217088	@, D.40467,
	add	r0, r3, #432	@,,
	bl	REAL8DEC_VDMPostProc	@
	b	.L726	@
.L715:
	add	r0, r0, #217088	@, D.40467,
	add	r0, r0, #432	@,,
	bl	REAL9DEC_VDMPostProc	@
	b	.L726	@
.L716:
	add	r3, r0, #217088	@, D.40467,
	add	r0, r3, #432	@,,
	bl	VP6DEC_VDMPostProc	@
	b	.L726	@
.L731:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	vfmw_dprint_nothing	@
.L733:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r6, r5, asl #2]	@ tmp178, s_pstVfmwChan
	mov	r0, #0	@ tmp180,
	strb	r0, [r1, r4]	@ tmp180, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r2, [r6, r5, asl #2]	@ prephitmp.2680, s_pstVfmwChan
	b	.L721	@
.L732:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r7, r5, asl #2]	@ tmp152, s_pstVfmwChan
	strb	r6, [r1, r4]	@ tmp147, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r2, [r7, r5, asl #2]	@ prephitmp.2654, s_pstVfmwChan
	b	.L719	@
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
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanId, ChanId
	mov	r7, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r5, r3	@ pLumaInfo, pLumaInfo
	bhi	.L741	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ D.40507, s_pstVfmwChan
	cmp	r3, #0	@ D.40507,
	beq	.L741	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	beq	.L737	@,
.L741:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L737:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bhi	.L756	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp140,
	movt	r5, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r5, r0, asl #2]	@ D.40307, s_pstVfmwChan
	cmp	r3, #0	@ D.40307,
	beq	.L756	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L756	@,
	cmp	r1, #0	@ pImage,
	beq	.L756	@,
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ temp.2735, s_pstVfmwChan
	cmp	r0, #0	@ temp.2735,
	beq	.L755	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L755	@,
	add	r0, r0, #217088	@, temp.2735,
	mov	r1, r6	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReleaseImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L744:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L755:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L744	@
.L756:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ ret,
	b	.L744	@
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bl	vfmw_dprint_nothing	@
	cmp	r5, #3	@ ChanID,
	bhi	.L768	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp156,
	movt	r4, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r3, [r4, r5, asl #2]	@ D.40280, s_pstVfmwChan
	cmp	r3, #0	@ D.40280,
	beq	.L768	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L768	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, r5, asl #2]	@ temp.2761, s_pstVfmwChan
	cmp	r0, #0	@ temp.2761,
	beq	.L769	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L769	@,
	add	r7, r0, #217088	@, temp.2761,
	mov	r1, r6	@, pImage
	add	r0, r7, #424	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r7, #0	@, ret,
	mvnne	r7, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r4, r5, asl #2]	@ tmp151, s_pstVfmwChan
	movw	ip, #:lower16:233604	@ tmp152,
	movt	ip, #:upper16:233604	@ tmp152,
	ldrb	r0, [r2, ip]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r0, [r6, #336]	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.optm_inf.bAvsPlus
.L759:
	mov	r0, r7	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L768:
	mvn	r7, #0	@ ret,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L769:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r7, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L759	@
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
	beq	.L775	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@, D.40216,
	ldmfd	sp!, {r3, pc}	@
.L775:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40216,
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
	bne	.L783	@,
	ldr	r0, [sp, #0]	@ D.40129, stCfgInfo.eVidStd
	cmp	r0, #0	@ D.40129,
	movne	r2, r6	@ prephitmp.2800, ret
	beq	.L788	@,
.L780:
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #284]	@ prephitmp.2801, g_DSPState
	cmp	r3, #0	@ prephitmp.2801,
	bne	.L781	@,
	ldr	r3, [r4, #288]	@ prephitmp.2801, g_DSPState
	cmp	r3, #0	@ prephitmp.2801,
	bne	.L781	@,
	ldr	r3, [r4, #292]	@ prephitmp.2801, g_DSPState
	cmp	r3, #0	@ prephitmp.2801,
	bne	.L781	@,
	ldr	r3, [r4, #296]	@ prephitmp.2801, g_DSPState
	cmp	r3, #0	@ prephitmp.2801,
	bne	.L781	@,
	cmp	r0, #6	@ D.40129,
	movne	r3, #0	@, temp.2812
	moveq	r3, #1	@, temp.2812
	tst	r2, #1	@ prephitmp.2800,
	bne	.L789	@,
	cmp	r3, #0	@ temp.2812,
	bne	.L790	@,
.L778:
	mov	r0, r6	@, ret
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L788:
	ldr	r2, [sp, #40]	@ stCfgInfo.s32LowdlyEnable, stCfgInfo.s32LowdlyEnable
	cmp	r2, #1	@ stCfgInfo.s32LowdlyEnable,
	movne	r2, #0	@, prephitmp.2800
	moveq	r2, #1	@, prephitmp.2800
	b	.L780	@
.L790:
	add	r5, r4, r5, asl #2	@, tmp173, tmp145, ChanID,
	mov	r0, #6	@,
	bl	WriteHexFile	@
	mov	r0, #2	@ tmp175,
	str	r0, [r5, #284]	@ tmp175, g_DSPState
	b	.L778	@
.L789:
	add	r4, r4, r5, asl #2	@, tmp164, tmp145, ChanID,
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp166,
	str	r3, [r4, #284]	@ tmp166, g_DSPState
	b	.L778	@
.L781:
	cmp	r3, #2	@ prephitmp.2801,
	movne	r2, #0	@, tmp153
	andeq	r2, r2, #1	@,, tmp153, prephitmp.2800
	cmp	r2, #0	@ tmp153,
	bne	.L783	@,
	cmp	r3, #1	@ prephitmp.2801,
	cmpeq	r0, #6	@, D.40129,
	bne	.L778	@,
.L783:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ ret,
	b	.L778	@
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
	ldr	r2, [r3, r0, asl #2]	@ D.40089, s_pstVfmwChan
	cmp	r2, #0	@ D.40089,
	beq	.L798	@,
	ldr	r2, [r2, #880]	@ D.40096, <variable>.eVidStd
	sub	ip, r2, #10	@ tmp141, D.40096,
	cmp	ip, #2	@ tmp141,
	bls	.L799	@,
	cmp	r2, #4	@ D.40096,
	bne	.L800	@,
.L795:
	mvn	r0, #0	@ D.40092,
	ldmfd	sp!, {r3, pc}	@
.L799:
	ldr	r3, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L795	@,
.L796:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp!, {r3, pc}	@
	b	.L795	@
.L800:
	cmp	r2, #14	@ D.40096,
	beq	.L795	@,
	b	.L796	@
.L798:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40092,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
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
	beq	.L814	@,
.L802:
	ldr	r0, [r4, #28]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	cmp	r0, #0	@ <variable>.stChanMem_vdh.Length,
	bne	.L815	@,
.L803:
	ldr	r2, [r4, #44]	@ D.38963, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ D.38963,
	bne	.L816	@,
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L817	@,
.L805:
	ldr	lr, [r4, #44]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L818	@,
.L806:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #72]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L819	@,
.L807:
	ldr	r0, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L808:
	ldr	r0, [r4, #56]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.stChanMem_ctx.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_pmv,
	beq	.L809	@,
.L813:
	ldr	r0, [r4, #100]	@ prephitmp.2850, <variable>.stChanMem_pmv.PhyAddr
.L810:
	ldr	r2, [r4, #104]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L818:
	ldrsb	r3, [r4, #32]	@ <variable>.stChanMem_scd.IsCached, <variable>.stChanMem_scd.IsCached
	cmp	r3, #1	@ <variable>.stChanMem_scd.IsCached,
	bne	.L806	@,
	ldr	r0, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp163,
	movt	r2, #:upper16:.LANCHOR0	@ tmp163,
	add	r1, r2, r5, asl #2	@, tmp166, tmp163, ChanID,
	str	r0, [r4, #36]	@ D.38981, <variable>.stChanMem_scd.VirAddr
	str	r0, [r1, #300]	@ D.38981, g_scd_vir
	mov	r0, #0	@ tmp168,
	strb	r0, [r4, #32]	@ tmp168, <variable>.stChanMem_scd.IsCached
	b	.L806	@
.L815:
	ldrsb	r1, [r4, #16]	@ <variable>.stChanMem_vdh.IsCached, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #1	@ <variable>.stChanMem_vdh.IsCached,
	bne	.L803	@,
	ldr	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	KernelMmap	@
	mov	r2, #0	@ tmp152,
	strb	r2, [r4, #16]	@ tmp152, <variable>.stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	b	.L803	@
.L809:
	ldr	r0, [r4, #100]	@ D.38997, <variable>.stChanMem_pmv.PhyAddr
	cmp	r0, #0	@ D.38997,
	beq	.L810	@,
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L813	@
.L819:
	ldr	r0, [r4, #56]	@ D.38989, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.38989,
	beq	.L807	@,
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L808	@
.L816:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L805	@,
.L817:
	ldr	r0, [r4, #40]	@ temp.2865, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ temp.2865,
	beq	.L805	@,
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L806	@
.L814:
	ldr	r0, [r1, #24]	@ D.38949, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.38949,
	beq	.L802	@,
	ldr	r1, [r1, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L803	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1953:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L827	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r4, r0, asl #2]	@ D.39581, s_pstVfmwChan
	cmp	r3, #0	@ D.39581,
	beq	.L827	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L824	@,
.L827:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39579,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L824:
	str	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	mov	r2, #0	@ tmp143,
	ldr	r3, [r4, r0, asl #2]	@ tmp142, s_pstVfmwChan
	str	r2, [r3, #8]	@ tmp143, <variable>.s32IsRun
	bl	SM_Stop	@
	subs	r6, r0, #0	@ s32Ret,
	mvnne	r0, #0	@ D.39579,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r6	@, s32Ret
	mov	r0, r5	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@, ChanID
	bl	DNR_StopChan	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r1, [r4, r5, asl #2]	@ tmp145, s_pstVfmwChan
	mov	r0, r6	@ D.39579, s32Ret
	str	r6, [r1, #16]	@ s32Ret, <variable>.s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L845	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp195,
	movt	r4, #:upper16:.LANCHOR0	@ tmp195,
	ldr	r3, [r4, r0, asl #2]	@ D.39512, s_pstVfmwChan
	cmp	r3, #0	@ D.39512,
	beq	.L845	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L845	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L845	@,
	bl	SM_Start	@
	ldr	ip, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	mov	r0, #0	@ tmp150,
	str	r6, [ip, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r4, r5, asl #2]	@ tmp149, s_pstVfmwChan
	str	r0, [r1, #16]	@ tmp150, <variable>.s32StopSyntax
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.2919, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L834	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	movw	r2, #:lower16:.LANCHOR0	@ tmp163,
	ldr	ip, [r4, #0]	@ temp.2935, s_pstVfmwChan
	movt	r2, #:upper16:.LANCHOR0	@ tmp163,
	ldr	lr, [r4, #4]	@ temp.2938, s_pstVfmwChan
	cmp	ip, #0	@ temp.2935,
	streq	ip, [r4, #316]	@ temp.2935, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp196,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp196,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp196,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp196,
	strne	r1, [r4, #316]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp172,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.2938,
	streq	lr, [r2, #320]	@ temp.2938, PrioArray
	movt	r1, #:upper16:.LANCHOR0	@ tmp172,
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	ip, [r4, #8]	@ temp.2941, s_pstVfmwChan
	strne	r0, [r2, #320]	@ <variable>.s32Priority, PrioArray
	movw	r2, #:lower16:.LANCHOR0	@ tmp181,
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.2941,
	streq	ip, [r1, #324]	@ temp.2941, PrioArray
	movt	r2, #:upper16:.LANCHOR0	@ tmp181,
	str	lr, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	lr, [r4, #12]	@ D.39525, s_pstVfmwChan
	strne	r0, [r1, #324]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ D.39525,
	streq	lr, [r3, #12]	@ D.39525, g_ChanCtx.PriorByChanId
	streq	lr, [r2, #328]	@ D.39525, PrioArray
	str	ip, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r2, #328]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L846	@,
	strne	r2, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.2919, s_pstVfmwChan
.L834:
	ldr	r3, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L843	@,
	mov	r0, r5	@, ChanID
	bl	DNR_StartChan	@
.L843:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.39510,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L845:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39510,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L847:
	.align	2
.L846:
	.word	.LANCHOR0+316
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
	ldr	r3, [r5, r0, asl #2]	@ D.40234, s_pstVfmwChan
	cmp	r3, #0	@ D.40234,
	beq	.L858	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r6, #0	@ tmp142,
	add	r0, r4, r4, asl #1	@, tmp150, ChanID, ChanID,
	add	r3, r5, #332	@ tmp147, tmp196,
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
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.2958, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r6, [r0, #1616]	@ tmp142, <variable>.stSynExtraData.s32DSDWaitFlag
	ldreq	r0, [r5, r4, asl #2]	@ prephitmp.2958, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L852	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L853:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r1, [r5, #428]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r1, #0	@ g_ResetCreateNewSave,
	bne	.L859	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L860	@,
.L855:
	ldr	ip, [r5, r4, asl #2]	@ tmp193, s_pstVfmwChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L861	@,
.L856:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40237,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L859:
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L855	@,
.L860:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	ip, [r5, r4, asl #2]	@ tmp193, s_pstVfmwChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L856	@,
.L861:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40237,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L852:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L853	@
.L858:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40237,
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
	ldr	r3, [r5, r0, asl #2]	@ D.40169, s_pstVfmwChan
	cmp	r3, #0	@ D.40169,
	beq	.L872	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L872	@,
	ldr	r8, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp143, s_pstVfmwChan
	mov	r6, #0	@ tmp144,
	add	r0, r4, r4, asl #1	@, tmp152, ChanID, ChanID,
	add	ip, r5, #332	@ tmp149, tmp186,
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
	ldr	r3, [r5, r4, asl #2]	@ temp.3008, s_pstVfmwChan
	add	r1, r3, #217088	@, temp.3008,
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
	beq	.L866	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L867:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r7, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L873	@,
	ldr	lr, [r5, #428]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	lr, #0	@ g_ResetCreateNewSave,
	bne	.L874	@,
.L869:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L875	@,
.L870:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40172,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L873:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	lr, [r5, #428]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L869	@,
.L874:
	bl	vfmw_dprint_nothing	@
	cmp	r8, #0	@ ChanIsRun,
	beq	.L870	@,
.L875:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40172,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L866:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L867	@
.L872:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40172,
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bhi	.L893	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp212,
	movt	r4, #:upper16:.LANCHOR0	@ tmp212,
	ldr	r3, [r4, r0, asl #2]	@ D.39547, s_pstVfmwChan
	cmp	r3, #0	@ D.39547,
	beq	.L893	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L893	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L893	@,
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4, r5, asl #2]	@ temp.3044, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldmia	r7, {r0, r1, r2, r3}	@ pChanMemVdh,,,,
	ldr	ip, [r4, r5, asl #2]	@ tmp154, s_pstVfmwChan
	add	ip, ip, #168	@ tmp153, tmp154,
	stmia	ip, {r0, r1, r2, r3}	@ tmp153,,,,
	ldr	r3, [r4, r5, asl #2]	@ temp.3046, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r5	@, ChanID
	bl	SM_Start	@
	ldr	ip, [r4, r5, asl #2]	@ tmp162, s_pstVfmwChan
	mov	r0, #0	@ tmp166,
	str	r6, [ip, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r4, r5, asl #2]	@ tmp165, s_pstVfmwChan
	str	r0, [r1, #16]	@ tmp166, <variable>.s32StopSyntax
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.3031, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L882	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	movw	r2, #:lower16:.LANCHOR0	@ tmp179,
	ldr	ip, [r4, #0]	@ D.39564, s_pstVfmwChan
	movt	r2, #:upper16:.LANCHOR0	@ tmp179,
	ldr	lr, [r4, #4]	@ temp.3056, s_pstVfmwChan
	cmp	ip, #0	@ D.39564,
	streq	ip, [r4, #432]	@ D.39564, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp211,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp211,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp211,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp211,
	strne	r1, [r4, #432]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp188,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.3056,
	streq	lr, [r2, #436]	@ temp.3056, PrioArray
	movt	r1, #:upper16:.LANCHOR0	@ tmp188,
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	ip, [r4, #8]	@ temp.3059, s_pstVfmwChan
	strne	r0, [r2, #436]	@ <variable>.s32Priority, PrioArray
	movw	r2, #:lower16:.LANCHOR0	@ tmp197,
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.3059,
	streq	ip, [r1, #440]	@ temp.3059, PrioArray
	movt	r2, #:upper16:.LANCHOR0	@ tmp197,
	str	lr, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	lr, [r4, #12]	@ temp.3052, s_pstVfmwChan
	strne	r0, [r1, #440]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.3052,
	streq	lr, [r3, #12]	@ temp.3052, g_ChanCtx.PriorByChanId
	streq	lr, [r2, #444]	@ temp.3052, PrioArray
	str	ip, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r2, #444]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L894	@,
	strne	r2, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.3031, s_pstVfmwChan
.L882:
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L891	@,
	mov	r0, r5	@, ChanID
	bl	DNR_StartChan	@
.L891:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.39545,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L893:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39545,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L895:
	.align	2
.L894:
	.word	.LANCHOR0+432
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
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
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp204,
	movt	r5, #:upper16:.LANCHOR0	@ tmp204,
	mov	r4, r0	@ ChanID, ChanID
	.pad #148
	sub	sp, sp, #148	@,,
	add	r0, r5, #448	@, tmp204,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #3	@ ChanID,
	bhi	.L909	@,
	ldr	r6, [r5, r4, asl #2]	@ D.39470, s_pstVfmwChan
	cmp	r6, #0	@ D.39470,
	beq	.L909	@,
	ldr	r3, [r6, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L909	@,
	movw	ip, #:lower16:g_FrameRate	@ tmp152,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp154,
	movt	ip, #:upper16:g_FrameRate	@ tmp152,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp154,
	mov	r1, #30	@ tmp153,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r1, [r2, r4, asl #2]	@ tmp153, g_LastFrameRate
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [ip, r4, asl #2]	@ tmp153, g_FrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	cmp	r0, #0	@,
	bne	.L910	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r6, #880]	@ D.39482, <variable>.eVidStd
	cmp	r3, #4	@ D.39482,
	beq	.L904	@,
	sub	r0, r3, #10	@ tmp162, D.39482,
	cmp	r0, #2	@ tmp162,
	bhi	.L905	@,
	ldr	r7, [r5, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r7, #1	@ g_VdmCharacter,
	beq	.L904	@,
.L906:
	mov	r0, r4	@, ChanID
	add	r6, sp, #36	@ tmp175,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r5, r4, asl #2]	@ temp.3107, s_pstVfmwChan
	add	lr, sp, #116	@,,
	movw	r1, #:lower16:217488	@ tmp173,
	add	fp, r3, #184	@, temp.3107,
	add	r7, r3, #104	@, temp.3107,
	ldr	r0, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	movt	r1, #:upper16:217488	@ tmp173,
	str	fp, [sp, #20]	@, %sfp
	add	r2, r3, #152	@ tmp176, temp.3107,
	str	r7, [sp, #24]	@, %sfp
	add	r7, sp, #128	@,,
	str	r0, [sp, #108]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r0, sp, #68	@,,
	str	r0, [sp, #12]	@, %sfp
	add	r8, r3, #200	@ tmp178, temp.3107,
	ldr	r0, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r9, r3, #168	@ tmp180, temp.3107,
	str	lr, [sp, #8]	@, %sfp
	add	lr, r4, #58	@ tmp189, ChanID,
	str	r7, [sp, #4]	@, %sfp
	add	ip, r3, #217088	@ tmp187, temp.3107,
	str	r0, [sp, #100]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	movw	r0, #:lower16:s_SmIIS	@ tmp188,
	movt	r0, #:upper16:s_SmIIS	@ tmp188,
	add	sl, sp, #84	@ tmp177,,
	add	r7, r0, lr, asl #2	@,, tmp188, tmp189,
	str	r7, [sp, #28]	@, %sfp
	ldr	r0, [r3, #220]	@, <variable>.s32SelfAllocChanMem_scd
	add	fp, sp, #52	@ tmp179,,
	add	ip, ip, #404	@ tmp187, tmp187,
	movw	lr, #:lower16:s_pFspInst	@ tmp195,
	movt	lr, #:upper16:s_pFspInst	@ tmp195,
	mov	r7, #0	@ tmp194,
	str	r0, [sp, #104]	@, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #112]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp176,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp175,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp178,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp177,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp180,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp179,,,,
	ldr	r8, [sp, #20]	@, %sfp
	ldmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #12]	@, %sfp
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r3, [sp, #24]	@, %sfp
	ldr	r8, [sp, #8]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	stmia	r8, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp187,,,,
	ldr	ip, [sp, #28]	@, %sfp
	str	r7, [lr, r4, asl #2]	@ tmp194, s_pFspInst
	ldr	lr, [sp, #4]	@, %sfp
	str	r7, [ip, #4]	@ tmp194, s_SmIIS.pSmInstArray
	str	r7, [r5, r4, asl #2]	@ tmp194, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L911	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp175
	bl	VCTRL_FreeChanResource	@
	mov	r0, r7	@ D.39468, tmp194
.L900:
	add	sp, sp, #148	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L905:
	cmp	r3, #14	@ D.39482,
	bne	.L906	@,
.L904:
	ldr	r3, [r5, #36]	@ D.39489, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.39489,
	beq	.L906	@,
	add	r8, r6, #217088	@, D.39470,
	add	r0, r8, #432	@,,
	blx	r3	@ D.39489
	b	.L906	@
.L909:
	bl	vfmw_dprint_nothing	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r5, #448	@, tmp204,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39468,
	b	.L900	@
.L910:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r5, #448	@, tmp204,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39468,
	b	.L900	@
.L912:
	.align	2
.L911:
	.word	.LANCHOR0+448
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
	str	r2, [r3, #284]	@ tmp141, g_DSPState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 688
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #716
	sub	sp, sp, #716	@,,
	add	r8, sp, #680	@ tmp690,,
	add	r9, sp, #664	@ tmp689,,
	mov	r7, r0	@ eCapLevel, eCapLevel
	mov	r5, r1	@ pChanOption, pChanOption
	mov	r0, r8	@, tmp690
	mov	r1, #16	@,
	add	r6, sp, #648	@ tmp688,,
	mov	sl, r2	@ flag, flag
	str	r3, [sp, #60]	@ OneChanMemFlag, %sfp
	add	fp, sp, #632	@ tmp684,,
	bl	__memzero	@
	mov	r0, r9	@, tmp689
	mov	r1, #16	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp687,
	bl	__memzero	@
	mov	r0, r6	@, tmp688
	mov	r1, #16	@,
	movt	r4, #:upper16:.LANCHOR0	@ tmp687,
	bl	__memzero	@
	mov	r0, fp	@, tmp684
	mov	r1, #16	@,
	bl	__memzero	@
	rsbs	r3, sl, #1	@ tmp201, flag
	movcc	r3, #0	@ tmp201
	cmp	r7, #25	@ eCapLevel,
	str	r5, [r4, #456]	@ pChanOption, pOption
	moveq	r3, #0	@, tmp201,
	cmp	r3, #0	@ tmp201,
	bne	.L939	@,
	ldr	r3, [r5, #4]	@ D.39170, <variable>.Purpose
	cmp	r3, #2	@ D.39170,
	bhi	.L939	@,
	beq	.L1011	@,
	cmp	r3, #1	@ D.39170,
	beq	.L1012	@,
.L921:
	ldr	lr, [r5, #136]	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, sl	@, flag
	mov	r0, r7	@, eCapLevel
	mov	r1, r5	@, pChanOption
	cmp	lr, #1	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	add	r2, sp, #600	@,,
	movne	lr, #0	@ tmp214,
	strne	lr, [r5, #136]	@ tmp214, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	ip, r0, #0	@ D.39202,
	bne	.L939	@,
	ldr	r3, [r5, #8]	@ D.39205, <variable>.MemAllocMode
	cmp	r3, #1	@ D.39205,
	beq	.L1013	@,
	cmp	r3, #2	@ D.39205,
	beq	.L1014	@,
	cmp	r3, #3	@ D.39205,
	bne	.L939	@,
	ldr	r3, [r5, #108]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L940	@,
	ldr	r1, [r5, #112]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	bne	.L941	@,
.L940:
	movw	r0, #:lower16:.LC5	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC5	@,
	add	r3, sp, #616	@,,
	ldr	r2, [sp, #608]	@, DetailMemSize.ChanCtxDetailMem
	mov	r6, #1	@ tmp269,
	str	r6, [sp, #0]	@ tmp269,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L939	@,
	ldr	r2, [sp, #628]	@, MemRecord.Length
	ldr	r0, [sp, #624]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #620]	@, MemRecord.VirAddr
	str	r6, [sp, #48]	@ tmp269, %sfp
	bl	MEM_AddMemRecord	@
	add	r0, sp, #620
	ldmia	r0, {r0, r2, ip}	@ phole ldm
	str	r2, [sp, #648]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	str	r0, [sp, #652]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	str	ip, [sp, #656]	@ MemRecord.Length, ChanMemCtx.Length
.L943:
	ldr	r1, [r5, #76]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L945	@,
	ldr	ip, [r5, #80]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	beq	.L945	@,
	add	ip, r5, #72	@ tmp294, pChanOption,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp294,,,,
	stmia	r8, {r0, r1, r2, r3}	@ tmp690,,,,
	ldr	r1, [sp, #600]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	ldr	r2, [sp, #688]	@ temp.3223, ChanMemVDH.Length
	cmp	r2, r1	@ temp.3223, DetailMemSize.VdhDetailMem
	blt	.L1015	@,
	ldr	r0, [sp, #680]	@, ChanMemVDH.PhyAddr
	mov	r8, #0	@ s32SelfAllocChanMem_vdh,
	ldr	r1, [sp, #684]	@, ChanMemVDH.VirAddr
	bl	MEM_AddMemRecord	@
.L949:
	ldr	r0, [r5, #92]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L952	@,
	ldr	r2, [r5, #96]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	beq	.L952	@,
	add	lr, r5, #88	@ tmp315, pChanOption,
	ldr	ip, [r5, #4]	@ temp.3286, <variable>.Purpose
	ldmia	lr, {r0, r1, r2, r3}	@ tmp315,,,,
	cmp	ip, #2	@ temp.3286,
	moveq	lr, #0	@,
	streq	lr, [sp, #52]	@, %sfp
	stmia	r9, {r0, r1, r2, r3}	@ tmp689,,,,
	beq	.L958	@,
	ldr	r1, [sp, #668]	@ temp.3248, ChanMemScd.VirAddr
	cmp	r1, #0	@ temp.3248,
	beq	.L960	@,
	ldr	r2, [sp, #672]	@ prephitmp.3365, ChanMemScd.Length
	ldr	r0, [sp, #604]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	cmp	r2, r0	@ prephitmp.3365, DetailMemSize.ScdDetailMem
	bge	.L961	@,
.L960:
	cmp	ip, #1	@ temp.3286,
	ldrne	r2, [sp, #672]	@ prephitmp.3365, ChanMemScd.Length
	beq	.L1016	@,
.L961:
	ldr	r0, [sp, #664]	@, ChanMemScd.PhyAddr
	mov	r3, #0	@,
	str	r3, [sp, #52]	@, %sfp
	bl	MEM_AddMemRecord	@
	ldr	ip, [r5, #4]	@ temp.3286, <variable>.Purpose
.L958:
	ldr	r2, [r5, #124]	@ <variable>.MemDetail.ChanMemPmv.VirAddr, <variable>.MemDetail.ChanMemPmv.VirAddr
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemPmv.VirAddr,
	beq	.L965	@,
	ldr	r1, [r5, #128]	@ <variable>.MemDetail.ChanMemPmv.Length, <variable>.MemDetail.ChanMemPmv.Length
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemPmv.Length,
	beq	.L965	@,
	add	r3, r5, #120	@ tmp335, pChanOption,
	cmp	ip, #2	@ temp.3286,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp335,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp684,,,,
	beq	.L972	@,
	ldr	r1, [sp, #636]	@ D.39337, ChanMemPmv.VirAddr
	cmp	r1, #0	@ D.39337,
	beq	.L973	@,
	ldr	r2, [sp, #640]	@ prephitmp.3153, ChanMemPmv.Length
	ldr	r0, [sp, #612]	@ DetailMemSize.PmvDetailMem, DetailMemSize.PmvDetailMem
	cmp	r2, r0	@ prephitmp.3153, DetailMemSize.PmvDetailMem
	bge	.L974	@,
.L973:
	cmp	ip, #1	@ temp.3286,
	ldrne	r2, [sp, #640]	@ prephitmp.3153, ChanMemPmv.Length
	beq	.L1017	@,
.L974:
	ldr	r0, [sp, #632]	@, ChanMemPmv.PhyAddr
	mov	r9, #0	@,
	str	r9, [sp, #56]	@, %sfp
	bl	MEM_AddMemRecord	@
.L933:
	movw	sl, #:lower16:.LANCHOR0	@ tmp338,
	movt	sl, #:upper16:.LANCHOR0	@ tmp338,
	add	r0, sl, #448	@, tmp338,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r9, #0	@ s_pstVfmwChan,
	beq	.L1003	@,
	ldr	r2, [sl, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r9, #1	@ prephitmp.3149,
	moveq	r6, r9	@ ChanID, prephitmp.3149
	beq	.L980	@,
	ldr	r1, [sl, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	moveq	r9, #2	@ prephitmp.3149,
	moveq	r6, r9	@ ChanID, prephitmp.3149
	beq	.L980	@,
	ldr	lr, [sl, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L1018	@,
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ ChanID,
	bl	VCTRL_EnableAllInt	@
	add	r0, sl, #448	@, tmp338,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L917	@
.L1012:
	ldr	r2, [r5, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L939	@,
	ldr	ip, [r5, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	ip, #31	@ <variable>.s32MaxWidth,
	ble	.L939	@,
	ldr	lr, [r5, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	lr, #31	@ <variable>.s32MaxHeight,
	ble	.L939	@,
	ldr	r3, [r5, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	r3, #262144	@ <variable>.s32SCDBufSize,
	blt	.L939	@,
	ldr	r0, [r5, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r0, #1	@ <variable>.s32SupportH264,
	bne	.L921	@,
	ldr	r1, [r5, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L939	@,
	ldr	r2, [r5, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r2, #0	@ <variable>.s32MaxSpsNum,
	ble	.L939	@,
	ldr	ip, [r5, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L921	@,
.L939:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ ChanID,
.L917:
	mov	r0, r6	@, ChanID
	add	sp, sp, #716	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L941:
	add	r3, r5, #104	@ tmp277, pChanOption,
	ldr	lr, [sp, #608]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldmia	r3, {r0, r1, r2, r3}	@ tmp277,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp688,,,,
	ldr	r2, [sp, #656]	@ temp.3211, ChanMemCtx.Length
	cmp	r2, lr	@ temp.3211, DetailMemSize.ChanCtxDetailMem
	blt	.L939	@,
	ldr	r0, [sp, #648]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #652]	@, ChanMemCtx.VirAddr
	str	ip, [sp, #48]	@ D.39202, %sfp
	bl	MEM_AddMemRecord	@
	b	.L943	@
.L965:
	cmp	ip, #2	@ temp.3286,
	beq	.L967	@,
	mov	lr, #0	@ tmp324,
	movw	r0, #:lower16:.LC8	@,
	mov	r1, lr	@, tmp324
	movt	r0, #:upper16:.LC8	@,
	add	r3, sp, #616	@,,
	ldr	r2, [sp, #612]	@, DetailMemSize.PmvDetailMem
	str	lr, [sp, #0]	@ tmp324,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1019	@,
	ldr	r0, [sp, #624]	@, MemRecord.PhyAddr
	mov	r3, #1	@,
	ldr	r1, [sp, #620]	@, MemRecord.VirAddr
	ldr	r2, [sp, #628]	@, MemRecord.Length
	str	r3, [sp, #56]	@, %sfp
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #624]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	sl, [sp, #620]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r9, [sp, #628]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #632]	@ MemRecord.PhyAddr, ChanMemPmv.PhyAddr
	str	sl, [sp, #636]	@ MemRecord.VirAddr, ChanMemPmv.VirAddr
	str	r9, [sp, #640]	@ MemRecord.Length, ChanMemPmv.Length
	b	.L933	@
.L945:
	mov	lr, #0	@ tmp286,
	movw	r0, #:lower16:.LC6	@,
	mov	r1, lr	@, tmp286
	movt	r0, #:upper16:.LC6	@,
	add	r3, sp, #616	@,,
	ldr	r2, [sp, #600]	@, DetailMemSize.VdhDetailMem
	str	lr, [sp, #0]	@ tmp286,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1020	@,
	ldr	r2, [sp, #628]	@, MemRecord.Length
	mov	r8, #1	@ s32SelfAllocChanMem_vdh,
	ldr	r0, [sp, #624]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #620]	@, MemRecord.VirAddr
	bl	MEM_AddMemRecord	@
	ldr	r3, [sp, #624]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #620]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r0, [sp, #628]	@ MemRecord.Length, MemRecord.Length
	str	r3, [sp, #680]	@ MemRecord.PhyAddr, ChanMemVDH.PhyAddr
	str	r2, [sp, #684]	@ MemRecord.VirAddr, ChanMemVDH.VirAddr
	str	r0, [sp, #688]	@ MemRecord.Length, ChanMemVDH.Length
	b	.L949	@
.L952:
	ldr	ip, [r5, #4]	@ temp.3286, <variable>.Purpose
	cmp	ip, #2	@ temp.3286,
	beq	.L954	@,
	mov	ip, #0	@ tmp304,
	movw	r0, #:lower16:.LC7	@,
	mov	r1, ip	@, tmp304
	movt	r0, #:upper16:.LC7	@,
	add	r3, sp, #616	@,,
	ldr	r2, [sp, #604]	@, DetailMemSize.ScdDetailMem
	str	ip, [sp, #0]	@ tmp304,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1021	@,
	ldr	r1, [sp, #620]	@, MemRecord.VirAddr
	mov	lr, #1	@,
	ldr	r0, [sp, #624]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #628]	@, MemRecord.Length
	str	lr, [sp, #52]	@, %sfp
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #624]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #620]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #628]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #664]	@ MemRecord.PhyAddr, ChanMemScd.PhyAddr
	str	r1, [sp, #668]	@ MemRecord.VirAddr, ChanMemScd.VirAddr
	str	r3, [sp, #672]	@ MemRecord.Length, ChanMemScd.Length
	ldr	ip, [r5, #4]	@ temp.3286, <variable>.Purpose
	b	.L958	@
.L1011:
	ldr	r0, [r5, #64]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r0, #0	@ <variable>.s32SlotWidth,
	beq	.L939	@,
	ldr	r1, [r5, #68]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r1, #0	@ <variable>.s32SlotHeight,
	bne	.L921	@,
	b	.L939	@
.L1013:
	add	r3, r5, #72	@ tmp217, pChanOption,
	add	lr, r5, #88	@ tmp219, pChanOption,
	add	ip, r5, #104	@ tmp221, pChanOption,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp217,,,,
	stmia	r8, {r0, r1, r2, r3}	@ tmp690,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp219,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp689,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp221,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp688,,,,
	ldr	r3, [sp, #652]	@ ChanMemCtx.VirAddr, ChanMemCtx.VirAddr
	cmp	r3, #0	@ ChanMemCtx.VirAddr,
	beq	.L939	@,
	ldr	r1, [sp, #608]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldr	r0, [sp, #656]	@ ChanMemCtx.Length, ChanMemCtx.Length
	cmp	r0, r1	@ ChanMemCtx.Length, DetailMemSize.ChanCtxDetailMem
	blt	.L939	@,
	ldr	r2, [sp, #668]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	cmp	r2, #0	@ ChanMemScd.VirAddr,
	beq	.L928	@,
	ldr	lr, [sp, #604]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldr	ip, [sp, #672]	@ ChanMemScd.Length, ChanMemScd.Length
	cmp	ip, lr	@ ChanMemScd.Length, DetailMemSize.ScdDetailMem
	blt	.L928	@,
.L929:
	ldr	r1, [sp, #684]	@ D.39224, ChanMemVDH.VirAddr
	cmp	r1, #0	@ D.39224,
	beq	.L939	@,
	ldr	r2, [sp, #688]	@ D.39226, ChanMemVDH.Length
	ldr	r0, [sp, #600]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	cmp	r2, r0	@ D.39226, DetailMemSize.VdhDetailMem
	blt	.L939	@,
	ldr	r0, [sp, #680]	@, ChanMemVDH.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r8, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r8, #2	@ <variable>.Purpose,
	beq	.L1022	@,
	ldr	r0, [sp, #664]	@, ChanMemScd.PhyAddr
	mov	r8, #0	@ s32SelfAllocChanMem_vdh,
	ldr	r1, [sp, #668]	@, ChanMemScd.VirAddr
	ldr	r2, [sp, #672]	@, ChanMemScd.Length
	str	r8, [sp, #56]	@ s32SelfAllocChanMem_vdh, %sfp
	str	r8, [sp, #48]	@ s32SelfAllocChanMem_vdh, %sfp
	bl	MEM_AddMemRecord	@
	str	r8, [sp, #52]	@ s32SelfAllocChanMem_vdh, %sfp
	b	.L933	@
.L954:
	ldr	r3, [sp, #680]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	r1, #0	@ tmp313,
	ldr	r2, [sp, #684]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	str	r1, [sp, #52]	@ tmp313, %sfp
	str	r1, [sp, #672]	@ tmp313, ChanMemScd.Length
	str	r3, [sp, #664]	@ ChanMemVDH.PhyAddr, ChanMemScd.PhyAddr
	str	r2, [sp, #668]	@ ChanMemVDH.VirAddr, ChanMemScd.VirAddr
	b	.L958	@
.L967:
	ldr	r1, [sp, #680]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	mov	lr, #0	@ tmp333,
	ldr	r2, [sp, #684]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	str	lr, [sp, #56]	@ tmp333, %sfp
	str	lr, [sp, #640]	@ tmp333, ChanMemPmv.Length
	str	r1, [sp, #632]	@ ChanMemVDH.PhyAddr, ChanMemPmv.PhyAddr
	str	r2, [sp, #636]	@ ChanMemVDH.VirAddr, ChanMemPmv.VirAddr
	b	.L933	@
.L928:
	ldr	r3, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r3, #1	@ <variable>.Purpose,
	bne	.L929	@,
	b	.L939	@
.L1022:
	mov	r8, #0	@ s32SelfAllocChanMem_vdh,
	str	r8, [sp, #56]	@ s32SelfAllocChanMem_vdh, %sfp
	str	r8, [sp, #48]	@ s32SelfAllocChanMem_vdh, %sfp
	str	r8, [sp, #52]	@ s32SelfAllocChanMem_vdh, %sfp
	b	.L933	@
.L1014:
	add	r8, sp, #616	@ tmp240,,
	mov	r1, ip	@, D.39202
	movw	r0, #:lower16:.LC5	@,
	ldr	r2, [sp, #608]	@, DetailMemSize.ChanCtxDetailMem
	movt	r0, #:upper16:.LC5	@,
	mov	r3, r8	@, tmp240
	mov	sl, #1	@ tmp241,
	str	sl, [sp, #0]	@ tmp241,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.39237,
	bne	.L939	@,
	ldr	r1, [sp, #620]	@, MemRecord.VirAddr
	ldr	r2, [sp, #628]	@, MemRecord.Length
	ldr	r0, [sp, #624]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #624]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, r6	@, D.39237
	movw	r0, #:lower16:.LC6	@,
	ldr	r2, [sp, #600]	@, DetailMemSize.VdhDetailMem
	movt	r0, #:upper16:.LC6	@,
	str	ip, [sp, #648]	@ MemRecord.PhyAddr, ChanMemCtx.PhyAddr
	mov	r3, r8	@, tmp240
	ldr	ip, [sp, #620]	@ MemRecord.VirAddr, MemRecord.VirAddr
	str	r6, [sp, #0]	@ D.39237,
	str	ip, [sp, #652]	@ MemRecord.VirAddr, ChanMemCtx.VirAddr
	ldr	ip, [sp, #628]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #656]	@ MemRecord.Length, ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.39244,
	bne	.L1023	@,
	ldr	r1, [sp, #620]	@, MemRecord.VirAddr
	ldr	r2, [sp, #628]	@, MemRecord.Length
	ldr	r0, [sp, #624]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [sp, #624]	@ temp.3189, MemRecord.PhyAddr
	ldr	r3, [sp, #620]	@ temp.3190, MemRecord.VirAddr
	cmp	r0, #2	@ <variable>.Purpose,
	ldr	r1, [sp, #628]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #680]	@ temp.3189, ChanMemVDH.PhyAddr
	str	r3, [sp, #684]	@ temp.3190, ChanMemVDH.VirAddr
	str	r1, [sp, #688]	@ MemRecord.Length, ChanMemVDH.Length
	beq	.L937	@,
	mov	r3, r8	@, tmp240
	mov	r1, r6	@, D.39244
	movw	r0, #:lower16:.LC7	@,
	ldr	r2, [sp, #604]	@, DetailMemSize.ScdDetailMem
	movt	r0, #:upper16:.LC7	@,
	str	r6, [sp, #0]	@ D.39244,
	bl	MEM_AllocMemBlock	@
	subs	r3, r0, #0	@ D.39251,
	bne	.L1024	@,
	ldr	r2, [sp, #628]	@, MemRecord.Length
	mov	r8, sl	@ s32SelfAllocChanMem_vdh, tmp241
	ldr	r0, [sp, #624]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #620]	@, MemRecord.VirAddr
	str	sl, [sp, #48]	@ s32SelfAllocChanMem_vdh, %sfp
	str	r3, [sp, #56]	@ D.39251, %sfp
	bl	MEM_AddMemRecord	@
	str	sl, [sp, #52]	@ s32SelfAllocChanMem_vdh, %sfp
	ldr	r2, [sp, #624]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	sl, [sp, #620]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r9, [sp, #628]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #664]	@ MemRecord.PhyAddr, ChanMemScd.PhyAddr
	str	sl, [sp, #668]	@ MemRecord.VirAddr, ChanMemScd.VirAddr
	str	r9, [sp, #672]	@ MemRecord.Length, ChanMemScd.Length
	b	.L933	@
.L1018:
	mov	r9, #3	@ prephitmp.3149,
.L1003:
	mov	r6, r9	@ ChanID, prephitmp.3149
.L980:
	mov	r0, r6, asl #2	@, ChanID,
	ldr	lr, [sp, #652]	@ D.39357, ChanMemCtx.VirAddr
	add	fp, r0, r4	@ tmp355,, tmp687
	movw	ip, #:lower16:g_FrameRate	@ tmp348,
	movw	sl, #:lower16:g_LastFrameRate	@ tmp350,
	movt	ip, #:upper16:g_FrameRate	@ tmp348,
	ldr	r3, [fp, #460]	@ tmp362, g_ChanTick
	movt	sl, #:upper16:g_LastFrameRate	@ tmp350,
	str	r0, [sp, #64]	@, %sfp
	movw	r1, #:lower16:331248	@,
	mov	r0, lr	@, D.39357
	add	r2, r3, #1	@ tmp363, tmp362,
	movt	r1, #:upper16:331248	@,
	mov	r3, #30	@ tmp349,
	str	r2, [fp, #460]	@ tmp363, g_ChanTick
	str	r3, [sl, r6, asl #2]	@ tmp349, g_LastFrameRate
	movw	sl, #:lower16:.LANCHOR0	@ tmp352,
	str	r3, [ip, r6, asl #2]	@ tmp349, g_FrameRate
	movt	sl, #:upper16:.LANCHOR0	@ tmp352,
	str	lr, [r4, r6, asl #2]	@ D.39357, s_pstVfmwChan
	bl	__memzero	@
	ldr	ip, [r4, r6, asl #2]	@ tmp369, s_pstVfmwChan
	mov	r1, r5	@, pChanOption
	mov	r2, #152	@,
	add	r3, ip, #1440	@, tmp369,
	add	r0, r3, #4	@,,
	bl	memcpy	@
	ldr	r0, [r4, r6, asl #2]	@ tmp375, s_pstVfmwChan
	movw	r1, #:lower16:539128	@ tmp376,
	movt	r1, #:upper16:539128	@ tmp376,
	movw	ip, #:lower16:217512	@,
	movt	ip, #:upper16:217512	@,
	str	r1, [r0, #1388]	@ tmp376, <variable>.stSynExtraData.s32BasicCtxSize
	movw	r1, #:lower16:s_SmIIS	@ tmp401,
	ldr	r2, [r4, r6, asl #2]	@ tmp378, s_pstVfmwChan
	movt	r1, #:upper16:s_SmIIS	@ tmp401,
	str	ip, [sp, #36]	@, %sfp
	add	r0, r1, r6, asl #2	@,, tmp401, ChanID,
	movw	ip, #:lower16:s_pFspInst	@,
	movt	ip, #:upper16:s_pFspInst	@,
	str	r7, [r2, #24]	@ eCapLevel, <variable>.eChanCapLevel
	mov	r1, #0	@,
	ldr	r2, [r4, r6, asl #2]	@ tmp380, s_pstVfmwChan
	movw	r3, #:lower16:181760	@ tmp388,
	str	r0, [sp, #68]	@, %sfp
	movt	r3, #:upper16:181760	@ tmp388,
	str	ip, [sp, #28]	@, %sfp
	movw	r0, #:lower16:167880	@ tmp408,
	str	r7, [r2, #920]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	movt	r0, #:upper16:167880	@ tmp408,
	ldr	ip, [r4, r6, asl #2]	@, s_pstVfmwChan
	movw	lr, #:lower16:217508	@ tmp417,
	movt	lr, #:upper16:217508	@ tmp417,
	str	r1, [ip, #1404]	@, <variable>.stSynExtraData.s32MoreGapEnable
	ldr	r2, [r4, r6, asl #2]	@ tmp385, s_pstVfmwChan
	str	r6, [r2, #0]	@ ChanID, <variable>.s32ChanID
	ldr	r1, [r4, r6, asl #2]	@ tmp387, s_pstVfmwChan
	strb	r9, [r1, r3]	@ prephitmp.3149, <variable>.FspInst.s32InstID
	ldr	ip, [r5, #0]	@, <variable>.eAdapterType
	ldr	r2, [r4, r6, asl #2]	@, s_pstVfmwChan
	str	ip, [r2, #20]	@, <variable>.eAdapterType
	mov	ip, #19	@,
	ldr	r1, [r4, r6, asl #2]	@, s_pstVfmwChan
	str	ip, [r1, #880]	@, <variable>.eVidStd
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r2, [r4, r6, asl #2]	@, s_pstVfmwChan
	str	ip, [r2, r1]	@, <variable>.stSynCtx.eVidStd
	ldr	r1, [sp, #68]	@, %sfp
	ldr	ip, [r4, r6, asl #2]	@ temp.3342, s_pstVfmwChan
	add	r2, ip, #1632	@ tmp407, temp.3342,
	str	r2, [r1, #236]	@ tmp407, s_SmIIS.pSmInstArray
	str	r6, [ip, r0]	@ ChanID, <variable>.SmInstArray.InstID
	ldr	r0, [sp, #28]	@, %sfp
	ldr	r1, [r4, r6, asl #2]	@ temp.3343, s_pstVfmwChan
	add	ip, r1, #181248	@ tmp412, temp.3343,
	add	r2, ip, #512	@ tmp412, tmp412,
	str	r2, [r0, r6, asl #2]	@ tmp412, s_pFspInst
	strb	r9, [r1, r3]	@ prephitmp.3149, <variable>.FspInst.s32InstID
	ldr	r0, [fp, #460]	@ tmp423, g_ChanTick
	mov	fp, #0	@,
	ldr	ip, [r4, r6, asl #2]	@ tmp416, s_pstVfmwChan
	str	r0, [ip, lr]	@ tmp423, <variable>.u32ChanTick
	ldr	r3, [r4, r6, asl #2]	@ tmp425, s_pstVfmwChan
	str	fp, [r3, #1604]	@, <variable>.stSynExtraData.s32DnrEnable
	ldr	r3, [r5, #140]	@ D.39372, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	cmp	r3, fp	@ D.39372,
	beq	.L1025	@,
	rsb	fp, r3, r3, asl #3	@, tmp438, D.39372, D.39372,
	movw	ip, #:lower16:CapItem	@ tmp435,
	movt	ip, #:upper16:CapItem	@ tmp435,
	ldr	r9, [sl, r6, asl #2]	@ tmp434, s_pstVfmwChan
	ldr	r0, [ip, fp, asl #2]	@ tmp441, CapItem
	str	r0, [r9, #1608]	@ tmp441, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r5, #140]	@ <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	r1, [sl, r6, asl #2]	@ tmp443, s_pstVfmwChan
	rsb	r2, r3, r3, asl #3	@, tmp448, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	sl, r2, #1	@ tmp449, tmp448,
	ldr	lr, [ip, sl, asl #2]	@ tmp450, CapItem
	str	lr, [r1, #1612]	@ tmp450, <variable>.stSynExtraData.s32DSDThrHeight
.L985:
	mov	r2, #0	@ s32i,
	mov	r9, #-2147483648	@ tmp695,
	mov	r3, r2	@ tmp694, s32i
.L986:
	ldr	sl, [r4, r6, asl #2]	@ tmp452, s_pstVfmwChan
	mov	lr, r2, asl #4	@ tmp454, s32i,
	add	r0, r2, #13504	@ tmp467, s32i,
	add	r2, r2, #1	@ tmp696, s32i,
	add	ip, lr, sl	@ tmp455, tmp454, tmp452
	add	fp, r2, #13504	@ tmp711, tmp696,
	add	r1, ip, #216064	@ tmp456, tmp455,
	add	r0, r0, #23	@ tmp467, tmp467,
	add	sl, r1, #360	@ tmp456, tmp456,
	add	r1, fp, #23	@ tmp711, tmp711,
	mov	ip, r2, asl #4	@ tmp701, tmp696,
	add	r2, r2, #1	@ s32i, tmp696,
	str	r3, [sl, #0]	@ tmp694, <variable>.eFrameState
	cmp	r2, #64	@ s32i,
	ldr	fp, [r4, r6, asl #2]	@ tmp459, s_pstVfmwChan
	movw	sl, #:lower16:.LANCHOR0	@ tmp698,
	movt	sl, #:upper16:.LANCHOR0	@ tmp698,
	add	lr, lr, fp	@ tmp462, tmp454, tmp459
	add	lr, lr, #216064	@ tmp463, tmp462,
	add	lr, lr, #360	@ tmp463, tmp463,
	str	r9, [lr, #4]	@ tmp695, <variable>.s32FrameAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp466, s_pstVfmwChan
	str	r3, [lr, r0, asl #4]	@ tmp694, <variable>.s32FrameSize
	ldr	lr, [r4, r6, asl #2]	@ tmp471, s_pstVfmwChan
	add	r0, lr, r0, asl #4	@, tmp476, tmp471, tmp467,
	str	r3, [r0, #4]	@ tmp694, <variable>.s32UsingCount
	ldr	r0, [r4, r6, asl #2]	@ tmp699, s_pstVfmwChan
	add	lr, ip, r0	@ tmp702, tmp701, tmp699
	add	r0, lr, #216064	@ tmp703, tmp702,
	add	lr, r0, #360	@ tmp703, tmp703,
	str	r3, [lr, #0]	@ tmp694, <variable>.eFrameState
	ldr	r0, [r4, r6, asl #2]	@ tmp705, s_pstVfmwChan
	add	ip, ip, r0	@ tmp706, tmp701, tmp705
	add	lr, ip, #216064	@ tmp707, tmp706,
	add	r0, lr, #360	@ tmp707, tmp707,
	str	r9, [r0, #4]	@ tmp695, <variable>.s32FrameAddr
	ldr	ip, [r4, r6, asl #2]	@ tmp709, s_pstVfmwChan
	str	r3, [ip, r1, asl #4]	@ tmp694, <variable>.s32FrameSize
	ldr	lr, [r4, r6, asl #2]	@ tmp712, s_pstVfmwChan
	add	r1, lr, r1, asl #4	@, tmp714, tmp712, tmp711,
	str	r3, [r1, #4]	@ tmp694, <variable>.s32UsingCount
	bne	.L986	@,
	ldr	r3, [sl, r6, asl #2]	@ tmp482, s_pstVfmwChan
	mov	r1, #16	@,
	add	lr, r3, #217088	@, tmp482,
	add	r0, lr, #360	@,,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r2, [sl, r6, asl #2]	@ tmp484, s_pstVfmwChan
	movw	r3, #:lower16:217488	@ tmp491,
	movt	r3, #:upper16:217488	@ tmp491,
	str	r8, [r2, #216]	@ s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	ldr	r0, [sp, #52]	@, %sfp
	ldr	r8, [sl, r6, asl #2]	@ tmp486, s_pstVfmwChan
	str	r0, [r8, #220]	@, <variable>.s32SelfAllocChanMem_scd
	ldr	r1, [sp, #48]	@, %sfp
	ldr	ip, [sl, r6, asl #2]	@ tmp488, s_pstVfmwChan
	str	r1, [ip, #224]	@, <variable>.s32SelfAllocChanMem_ctx
	ldr	r2, [sp, #56]	@, %sfp
	ldr	r8, [sl, r6, asl #2]	@ tmp490, s_pstVfmwChan
	str	r2, [r8, r3]	@, <variable>.s32SelfAllocChanMem_pmv
	ldr	r3, [r5, #8]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r3, #3	@ <variable>.MemAllocMode,
	ldrne	r3, [sl, r6, asl #2]	@ prephitmp.3151, s_pstVfmwChan
	beq	.L1026	@,
.L988:
	mov	r2, #0	@ tmp519,
	str	r2, [r3, #148]	@ tmp519, <variable>.s32OneChanMem
.L989:
	ldr	r8, [r4, r6, asl #2]	@ tmp521, s_pstVfmwChan
	movw	r1, #:lower16:217500	@ tmp549,
	ldr	ip, [sp, #680]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	movt	r1, #:upper16:217500	@ tmp549,
	movw	r2, #:lower16:217496	@ tmp553,
	movt	r2, #:upper16:217496	@ tmp553,
	movw	r3, #:lower16:217504	@ tmp557,
	movt	r3, #:upper16:217504	@ tmp557,
	str	ip, [r8, #176]	@ ChanMemVDH.PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	ldr	r8, [sp, #684]	@ ChanMemVDH.VirAddr, ChanMemVDH.VirAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp524, s_pstVfmwChan
	ldr	r0, [sp, #64]	@, %sfp
	str	r8, [lr, #172]	@ ChanMemVDH.VirAddr, <variable>.stChanMem_vdh.VirAddr
	add	ip, r0, r4	@ tmp562,, tmp687
	ldr	lr, [r4, r6, asl #2]	@ tmp527, s_pstVfmwChan
	movw	r0, #:lower16:.LANCHOR0	@ tmp520,
	ldr	r8, [sp, #688]	@ ChanMemVDH.Length, ChanMemVDH.Length
	movt	r0, #:upper16:.LANCHOR0	@ tmp520,
	str	r8, [lr, #180]	@ ChanMemVDH.Length, <variable>.stChanMem_vdh.Length
	ldr	r8, [sp, #664]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp530, s_pstVfmwChan
	str	r8, [lr, #192]	@ ChanMemScd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	ldr	r8, [sp, #668]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp533, s_pstVfmwChan
	str	r8, [lr, #188]	@ ChanMemScd.VirAddr, <variable>.stChanMem_scd.VirAddr
	ldr	r8, [sp, #672]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	lr, [r4, r6, asl #2]	@ tmp536, s_pstVfmwChan
	str	r8, [lr, #196]	@ ChanMemScd.Length, <variable>.stChanMem_scd.Length
	ldr	r8, [sp, #648]	@ ChanMemCtx.PhyAddr, ChanMemCtx.PhyAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp539, s_pstVfmwChan
	str	r8, [lr, #208]	@ ChanMemCtx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	ldr	r8, [sp, #652]	@ ChanMemCtx.VirAddr, ChanMemCtx.VirAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp542, s_pstVfmwChan
	str	r8, [lr, #204]	@ ChanMemCtx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	ldr	r8, [sp, #656]	@ ChanMemCtx.Length, ChanMemCtx.Length
	ldr	lr, [r4, r6, asl #2]	@ tmp545, s_pstVfmwChan
	str	r8, [lr, #212]	@ ChanMemCtx.Length, <variable>.stChanMem_ctx.Length
	ldr	r8, [sp, #632]	@ ChanMemPmv.PhyAddr, ChanMemPmv.PhyAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp548, s_pstVfmwChan
	str	r8, [lr, r1]	@ ChanMemPmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	ldr	lr, [sp, #636]	@ ChanMemPmv.VirAddr, ChanMemPmv.VirAddr
	ldr	r1, [r4, r6, asl #2]	@ tmp552, s_pstVfmwChan
	str	lr, [r1, r2]	@ ChanMemPmv.VirAddr, <variable>.stChanMem_pmv.VirAddr
	ldr	r2, [r4, r6, asl #2]	@ tmp556, s_pstVfmwChan
	ldr	r1, [sp, #640]	@ ChanMemPmv.Length, ChanMemPmv.Length
	str	r1, [r2, r3]	@ ChanMemPmv.Length, <variable>.stChanMem_pmv.Length
	ldr	r3, [sp, #668]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	lr, [r4, r6, asl #2]	@ tmp566, s_pstVfmwChan
	ldr	r2, [sp, #680]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	str	r3, [ip, #300]	@ ChanMemScd.VirAddr, g_scd_vir
	str	r2, [lr, #248]	@ ChanMemVDH.PhyAddr, <variable>.s32SdecMemAddr
	ldr	ip, [sp, #688]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r3, [r4, r6, asl #2]	@ tmp569, s_pstVfmwChan
	str	ip, [r3, #252]	@ ChanMemVDH.Length, <variable>.s32SdecMemSize
	ldr	r3, [r4, r6, asl #2]	@ temp.3401, s_pstVfmwChan
	ldr	lr, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L990	@,
	ldr	r2, [sp, #680]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	cmp	r7, #24	@ eCapLevel,
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp574,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp574,
	moveq	r1, #1	@ DnrImgNum,
	str	r2, [r3, #236]	@ ChanMemVDH.PhyAddr, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [r7, #36]	@ D.39413, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldrne	r1, [r5, #60]	@ DnrImgNum, <variable>.s32DisplayFrameNum
	cmp	ip, #0	@ D.39413,
	beq	.L1004	@,
	ldr	r2, [r5, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp579,
	ldr	r3, [r5, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r7, #0	@ tmp581,
	str	r1, [sp, #4]	@ DnrImgNum,
	str	r7, [sp, #12]	@ tmp581,
	add	r7, sp, #76	@ tmp583,,
	ldr	r0, [sp, #680]	@, ChanMemVDH.PhyAddr
	str	r7, [sp, #16]	@ tmp583,
	mov	r7, #64	@ tmp584,
	ldr	r1, [sp, #688]	@, ChanMemVDH.Length
	str	lr, [sp, #8]	@ tmp579,
	str	r7, [sp, #20]	@ tmp584,
	str	lr, [sp, #0]	@ tmp579,
	blx	ip	@ D.39413
	cmp	r0, #0	@,
	bne	.L1004	@,
	ldr	r3, [r4, r6, asl #2]	@ tmp586, s_pstVfmwChan
	ldr	r1, [sp, #80]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r1, [r3, #240]	@ stMemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
.L996:
	ldr	r3, [r4, r6, asl #2]	@ temp.3410, s_pstVfmwChan
	mov	r0, r6	@, ChanID
	ldr	r2, [sp, #680]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	movw	r7, #:lower16:.LANCHOR0	@ tmp592,
	movt	r7, #:upper16:.LANCHOR0	@ tmp592,
	ldr	r1, [r3, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	add	lr, r1, r2	@ tmp595, <variable>.s32OffLineDNRMemSize, ChanMemVDH.PhyAddr
	str	lr, [r3, #228]	@ tmp595, <variable>.s32VdmChanMemAddr
	ldr	r3, [r4, r6, asl #2]	@ temp.3412, s_pstVfmwChan
	ldr	ip, [sp, #688]	@ ChanMemVDH.Length, ChanMemVDH.Length
	ldr	r2, [r3, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	sub	r1, ip, #16	@ tmp597, ChanMemVDH.Length,
	rsb	lr, r2, r1	@ tmp600, <variable>.s32OffLineDNRMemSize, tmp597
	str	lr, [r3, #232]	@ tmp600, <variable>.s32VdmChanMemSize
	ldr	r3, [r4, r6, asl #2]	@ temp.3414, s_pstVfmwChan
	ldr	ip, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	r2, ip, #14336	@ tmp604, <variable>.s32VdmChanMemSize,
	str	r2, [r3, #232]	@ tmp604, <variable>.s32VdmChanMemSize
	ldr	r1, [r4, r6, asl #2]	@ temp.3415, s_pstVfmwChan
	ldr	lr, [r1, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	ip, lr, #32768	@ tmp608, <variable>.s32VdmChanMemSize,
	str	ip, [r1, #232]	@ tmp608, <variable>.s32VdmChanMemSize
	ldr	ip, [r4, r6, asl #2]	@ temp.3417, s_pstVfmwChan
	ldr	r2, [ip, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r3, [ip, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	add	lr, r2, r3	@ tmp610, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	r1, lr, #15	@ tmp613, tmp610,
	mov	lr, #14336	@ tmp617,
	bic	r2, r1, #15	@ tmp614, tmp613,
	str	r2, [ip, #260]	@ tmp614, <variable>.s32BpdChanMemAddr
	ldr	r3, [r4, r6, asl #2]	@ tmp616, s_pstVfmwChan
	str	lr, [r3, #264]	@ tmp617, <variable>.s32BpdChanMemSize
	ldr	r3, [r4, r6, asl #2]	@ temp.3420, s_pstVfmwChan
	ldr	ip, [r3, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r1, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	ldr	lr, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	add	r2, ip, r1	@ tmp619, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	r1, r2, #15	@ tmp622, tmp619,
	add	r2, r1, lr	@ tmp623, tmp622, <variable>.s32BpdChanMemSize
	mov	lr, #32768	@ tmp628,
	bic	ip, r2, #15	@ tmp625, tmp623,
	str	ip, [r3, #268]	@ tmp625, <variable>.s32Vp8SegIdChanMemAddr
	ldr	r1, [r4, r6, asl #2]	@ tmp627, s_pstVfmwChan
	str	lr, [r1, #272]	@ tmp628, <variable>.s32Vp8SegIdChanMemSize
	ldr	ip, [sp, #664]	@ ChanMemScd.PhyAddr, ChanMemScd.PhyAddr
	ldr	r2, [r4, r6, asl #2]	@ tmp630, s_pstVfmwChan
	str	ip, [r2, #244]	@ ChanMemScd.PhyAddr, <variable>.s32ScdChanMemAddr
	ldr	r1, [sp, #672]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r3, [r4, r6, asl #2]	@ tmp633, s_pstVfmwChan
	str	r1, [r3, #256]	@ ChanMemScd.Length, <variable>.s32ScdChanMemSize
	ldr	lr, [r4, r6, asl #2]	@ tmp636, s_pstVfmwChan
	str	r6, [lr, #140]	@ ChanID, <variable>.s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1004	@,
	ldr	r3, [r7, r6, asl #2]	@ temp.3430, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L998	@,
	ldr	lr, [r3, #236]	@ D.39438, <variable>.s32OffLineDnrMemAddr
	mov	r0, lr	@, D.39438
	str	lr, [sp, #696]	@ D.39438, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r7, r6, asl #2]	@ tmp640, s_pstVfmwChan
	ldr	r3, [r5, #16]	@, <variable>.s32MaxHeight
	add	r1, sp, #696	@,,
	ldr	r2, [r5, #12]	@, <variable>.s32MaxWidth
	str	r0, [sp, #700]	@, DnrMem.VirAddr
	mov	r0, r6	@, ChanID
	ldr	ip, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [sp, #704]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1004	@,
	mov	r0, r6	@, ChanID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1004	@,
.L998:
	mov	r0, r6	@, ChanID
	bl	SM_ClearInst	@
	ldr	r2, [r4, r6, asl #2]	@ tmp646, s_pstVfmwChan
	mov	r0, r6	@, ChanID
	ldr	ip, [r2, #204]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	r1, ip, #331776	@, <variable>.stChanMem_ctx.VirAddr,
	add	r1, r1, #1520	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r4, r6, asl #2]	@ tmp651, s_pstVfmwChan
	mov	r0, r6	@, ChanID
	mov	r2, #1	@ tmp652,
	str	r2, [r3, #4]	@ tmp652, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1029	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L917	@
.L1025:
	ldr	fp, [sl, r6, asl #2]	@ tmp428, s_pstVfmwChan
	str	r3, [fp, #1608]	@ D.39372, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r9, [sl, r6, asl #2]	@ tmp431, s_pstVfmwChan
	str	r3, [r9, #1612]	@ D.39372, <variable>.stSynExtraData.s32DSDThrHeight
	b	.L985	@
.L990:
	mov	ip, #0	@ tmp588,
	str	ip, [r3, #236]	@ tmp588, <variable>.s32OffLineDnrMemAddr
	ldr	r2, [r0, r6, asl #2]	@ tmp590, s_pstVfmwChan
	str	ip, [r2, #240]	@ tmp588, <variable>.s32OffLineDNRMemSize
	b	.L996	@
.L1026:
	ldr	r3, [sl, r6, asl #2]	@ prephitmp.3151, s_pstVfmwChan
	ldr	r2, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r2, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L988	@,
	ldr	r1, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r1, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L988	@,
	ldr	ip, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L988	@,
	ldr	r1, [sp, #664]	@ temp.3362, ChanMemScd.PhyAddr
	ldr	ip, [sp, #672]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r0, [sp, #680]	@ ChanMemVDH.PhyAddr, ChanMemVDH.PhyAddr
	ldr	lr, [sp, #60]	@, %sfp
	add	r8, r1, ip	@ tmp499, temp.3362, ChanMemScd.Length
	cmp	lr, #1	@,
	cmpeq	r8, r0	@, tmp499, ChanMemVDH.PhyAddr
	bne	.L988	@,
	str	r1, [r3, #160]	@ temp.3362, <variable>.stChanMem.PhyAddr
	ldr	ip, [sp, #668]	@ ChanMemScd.VirAddr, ChanMemScd.VirAddr
	ldr	r3, [sl, r6, asl #2]	@ tmp508, s_pstVfmwChan
	str	ip, [r3, #156]	@ ChanMemScd.VirAddr, <variable>.stChanMem.VirAddr
	ldr	r8, [sl, r6, asl #2]	@ tmp511, s_pstVfmwChan
	ldr	lr, [sp, #672]	@ ChanMemScd.Length, ChanMemScd.Length
	ldr	r0, [sp, #688]	@ ChanMemVDH.Length, ChanMemVDH.Length
	add	r1, r0, lr	@ tmp514, ChanMemVDH.Length, ChanMemScd.Length
	str	r1, [r8, #164]	@ tmp514, <variable>.stChanMem.Length
	ldr	r3, [sl, r6, asl #2]	@ tmp516, s_pstVfmwChan
	str	r2, [r3, #148]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L989	@
.L1004:
.L995:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r4, r6, asl #2]	@ temp.3438, s_pstVfmwChan
	movw	r1, #:lower16:217488	@ tmp659,
	movt	r1, #:upper16:217488	@ tmp659,
	add	r0, r3, #104	@, temp.3438,
	add	r2, r3, #152	@ tmp662, temp.3438,
	ldr	fp, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r7, r3, #200	@ tmp664, temp.3438,
	str	r0, [sp, #48]	@, %sfp
	add	r0, sp, #572	@,,
	str	r0, [sp, #44]	@, %sfp
	add	r0, sp, #584	@,,
	str	fp, [sp, #564]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r8, r3, #168	@ tmp666, temp.3438,
	str	r0, [sp, #40]	@, %sfp
	add	r9, r3, #184	@ tmp668, temp.3438,
	ldr	r0, [r3, #216]	@, <variable>.s32SelfAllocChanMem_vdh
	add	ip, r3, #217088	@ tmp673, temp.3438,
	add	r5, sp, #492	@ tmp661,,
	add	lr, sp, #540	@ tmp663,,
	add	sl, sp, #508	@ tmp665,,
	add	fp, sp, #524	@ tmp667,,
	str	r0, [sp, #556]	@, ChanMem.s32SelfAllocChanMem_vdh
	add	ip, ip, #404	@ tmp673, tmp673,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	str	r0, [sp, #560]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #568]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp662,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp661,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp664,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp663,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp666,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp665,,,,
	ldr	lr, [sp, #48]	@, %sfp
	ldmia	r9, {r0, r1, r2, r3}	@ tmp668,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp667,,,,
	ldr	r3, [sp, #44]	@, %sfp
	ldmia	lr, {r0, r1, r2}	@,,,
	ldr	lr, [sp, #40]	@, %sfp
	stmia	r3, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp673,,,,
	mov	ip, #0	@ tmp675,
	str	ip, [r4, r6, asl #2]	@ tmp675, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r6	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1029	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, tmp661
	mvn	r6, #0	@ ChanID,
	bl	VCTRL_FreeChanResource	@
	b	.L917	@
.L972:
	mov	sl, #0	@,
	str	sl, [sp, #56]	@, %sfp
	b	.L933	@
.L937:
	mov	r8, sl	@ s32SelfAllocChanMem_vdh, tmp241
	str	r6, [sp, #56]	@ D.39244, %sfp
	str	r2, [sp, #664]	@ temp.3189, ChanMemScd.PhyAddr
	str	sl, [sp, #48]	@ s32SelfAllocChanMem_vdh, %sfp
	str	r3, [sp, #668]	@ temp.3190, ChanMemScd.VirAddr
	str	r6, [sp, #52]	@ tmp14, %sfp
	str	r6, [sp, #672]	@ D.39244, ChanMemScd.Length
	b	.L933	@
.L1015:
	ldr	lr, [sp, #48]	@, %sfp
	cmp	lr, #1	@,
	bne	.L939	@,
.L1008:
	ldr	r0, [sp, #648]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #652]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L939	@
.L1020:
	ldr	r6, [sp, #48]	@, %sfp
	cmp	r6, #1	@,
	bne	.L939	@,
	b	.L1008	@
.L1019:
	ldr	r6, [sp, #48]	@, %sfp
	cmp	r6, #1	@,
	beq	.L1027	@,
.L969:
	cmp	r8, #1	@ s32SelfAllocChanMem_vdh,
	beq	.L1028	@,
.L970:
	ldr	r0, [sp, #52]	@, %sfp
	cmp	r0, #1	@,
	bne	.L939	@,
.L1006:
	ldr	r0, [sp, #664]	@, ChanMemScd.PhyAddr
	ldr	r1, [sp, #668]	@, ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #664
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L939	@
.L1021:
	ldr	r6, [sp, #48]	@, %sfp
	cmp	r6, #1	@,
	beq	.L1010	@,
.L963:
	cmp	r8, #1	@ s32SelfAllocChanMem_vdh,
	bne	.L939	@,
	ldr	r0, [sp, #680]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #684]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #680
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L939	@
.L1023:
	ldr	r0, [sp, #648]	@, ChanMemCtx.PhyAddr
	mvn	r6, #0	@ ChanID,
	ldr	r1, [sp, #652]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	bl	vfmw_dprint_nothing	@
	b	.L917	@
.L1028:
	ldr	r0, [sp, #680]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #684]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #680
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L970	@
.L1027:
	ldr	r0, [sp, #648]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #652]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L969	@
.L1017:
	ldr	r6, [sp, #48]	@, %sfp
	cmp	r6, #1	@,
	bne	.L976	@,
	ldr	r0, [sp, #648]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #652]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L976:
	cmp	r8, #1	@ s32SelfAllocChanMem_vdh,
	bne	.L977	@,
	ldr	r0, [sp, #680]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #684]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #680
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L977:
	ldr	ip, [sp, #52]	@, %sfp
	cmp	ip, #1	@,
	bne	.L939	@,
	b	.L1006	@
.L1024:
	ldr	r0, [sp, #648]	@, ChanMemCtx.PhyAddr
	mvn	r6, #0	@ ChanID,
	ldr	r1, [sp, #652]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [sp, #680]	@, ChanMemVDH.PhyAddr
	ldr	r1, [sp, #684]	@, ChanMemVDH.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	add	r0, sp, #680
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	bl	vfmw_dprint_nothing	@
	b	.L917	@
.L1016:
	ldr	ip, [sp, #48]	@, %sfp
	cmp	ip, #1	@,
	bne	.L963	@,
.L1010:
	ldr	r0, [sp, #648]	@, ChanMemCtx.PhyAddr
	ldr	r1, [sp, #652]	@, ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #648
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L963	@
.L1030:
	.align	2
.L1029:
	.word	.LANCHOR0+448
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
	bhi	.L1045	@,
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
	sub	r0, r4, #18	@ D.42481, eCapLevel,
	cmp	r0, #7	@ D.42481,
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
	addls	r0, lr, r0, asl #2	@, tmp169, tmp166, D.42481,
	ldr	ip, [r3, ip, asl #2]	@ tmp162, CapItem
	ldr	r1, [r3, r1, asl #2]	@ tmp156, CapItem
	movhi	lr, #6	@ MinDispFspNum,
	ldrls	lr, [r0, #32]	@ MinDispFspNum, CSWTCH.810
	rsb	r0, r4, r2	@ tmp175, eCapLevel, tmp221
	str	ip, [sp, #16]	@ tmp162, stChanOption.s32MaxHeight
	add	ip, r3, r0, asl #2	@, tmp177, tmp222, tmp175,
	rsb	r0, r4, r2	@ tmp188, eCapLevel, tmp221
	str	r1, [sp, #12]	@ tmp156, stChanOption.s32MaxWidth
	mov	r1, #136	@ tmp163,
	str	r1, [sp, #20]	@ tmp163, stChanOption.s32MaxSliceNum
	mov	r2, #1	@ tmp181,
	ldr	r1, [ip, #12]	@ D.39061, CapItem
	add	ip, r3, r0, asl #2	@, tmp190, tmp222, tmp188,
	str	lr, [sp, #60]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r0, r4	@, eCapLevel
	cmp	lr, r1	@ MinDispFspNum, D.39061
	ldr	r3, [ip, #24]	@ tmp192, CapItem
	rsblt	r1, lr, r1	@ tmp180, MinDispFspNum, D.39061
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
	bne	.L1045	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L1040	@,
	ldr	sl, [r8, #8]	@ D.39074, <variable>.Length
	cmp	sl, #0	@ D.39074,
	beq	.L1040	@,
	ldr	lr, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	beq	.L1041	@,
	ldr	ip, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L1041	@,
	ldr	r0, [sp, #196]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [sp, #184]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r2, r0	@ tmp201, ScdChanMemSize, VdmChanMemSize
	cmp	sl, r3	@ D.39074, tmp201
	blt	.L1041	@,
	ldr	r8, [sp, #188]	@ D.39087, ScdChanMemSize
	add	r9, sp, #88	@ tmp213,,
	str	lr, [sp, #152]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	add	fp, sp, #72	@ tmp215,,
	str	ip, [sp, #156]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, lr, r8	@ tmp208, <variable>.PhyAddr, D.39087
	str	r8, [sp, #160]	@ D.39087, scd_MemRecord.Length
	add	ip, ip, r8	@ tmp210, <variable>.VirAddr, D.39087
	ldmia	r7, {r0, r1, r2, r3}	@ tmp224,,,,
	str	lr, [sp, #168]	@ tmp208, vdh_MemRecord.PhyAddr
	str	ip, [sp, #172]	@ tmp210, vdh_MemRecord.VirAddr
	rsb	sl, r8, sl	@ tmp212, D.39087, D.39074
	str	sl, [sp, #176]	@ tmp212, vdh_MemRecord.Length
	mov	lr, #3	@ tmp204,
	mov	ip, #1	@ OneChanMemFlag,
	str	lr, [sp, #8]	@ tmp204, stChanOption.MemAllocMode
	stmia	r9, {r0, r1, r2, r3}	@ tmp213,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp220,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp215,,,,
	b	.L1042	@
.L1040:
	mov	ip, #0	@ OneChanMemFlag,
.L1042:
	mov	r0, r4	@, eCapLevel
	mov	r1, sp	@,
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.39042,
.L1033:
	add	sp, sp, #212	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1041:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L1045:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39042,
	b	.L1033	@
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
	ble	.L1050	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	sl, #0	@, tmp169
	moveq	sl, #1	@, tmp169
	beq	.L1050	@,
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
	bne	.L1050	@,
	mov	r1, r9	@, MemAddr
	mov	r0, r6	@, ChanID
	add	r3, sp, #44	@,,
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L1050	@,
	mov	r0, r6	@, ChanID
	add	r1, r4, #476	@, tmp155,
	bl	FSP_GetInstInfo	@
	ldrb	r1, [r4, #477]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r0, r1	@ D.38920, FspInstInfo.s32DecFsNum
	cmp	r0, #16	@ D.38920,
	movge	r0, #16	@ D.38920,
	str	r0, [r5, #820]	@ D.38920, <variable>.s32UsrdecFrameNum
	cmp	r0, #2	@ D.38920,
	ble	.L1050	@,
	ldr	r2, [r4, #3812]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r5, #752	@, pstChan,
	mov	r1, #64	@,
	str	r2, [r5, #816]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r5, #688	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r6, [r5, #820]	@ D.38919, <variable>.s32UsrdecFrameNum
	cmp	r6, #0	@ D.38919,
	ble	.L1053	@,
	ldr	ip, [r4, #496]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #1	@ i,
	cmp	r2, r6	@ i, D.38919
	sub	lr, r6, #1	@ tmp198, D.38919,
	and	r0, lr, r2	@ tmp200, tmp198,
	add	r1, r5, #4	@ ivtmp.3505, pstChan,
	str	ip, [r5, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r3, r4, #528	@ ivtmp.3502, tmp155,
	bge	.L1053	@,
	cmp	r0, #0	@ tmp200,
	beq	.L1054	@,
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, r6	@ i, D.38919
	add	r3, r4, #580	@ ivtmp.3502, tmp155,
	str	r0, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r1, #4	@ ivtmp.3505, ivtmp.3505,
	bge	.L1053	@,
.L1054:
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	r0, r1, #4	@ tmp203, ivtmp.3505,
	cmp	r2, r6	@ i, D.38919
	str	lr, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r0, #4	@ ivtmp.3505, tmp203,
	ldr	ip, [r3, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #104	@ ivtmp.3502, ivtmp.3502,
	str	ip, [r0, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L1054	@,
.L1053:
	mov	r0, #0	@ D.38900,
.L1048:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1050:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38900,
	b	.L1048	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #3	@ ChanID,
	.pad #180
	sub	sp, sp, #180	@,,
	mov	r3, #0	@ tmp202,
	mov	r4, r0	@ ChanID, ChanID
	str	r3, [r1, #44]	@ tmp202, <variable>.s32VcmpEn
	mov	r6, r1	@ pstCfg, pstCfg
	str	r3, [sp, #168]	@ tmp202, s32supportFlag
	bhi	.L1116	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp540,
	movt	r5, #:upper16:.LANCHOR0	@ tmp540,
	ldr	r3, [r5, r0, asl #2]	@ D.39810, s_pstVfmwChan
	cmp	r3, #0	@ D.39810,
	beq	.L1116	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1116	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	ldr	r3, [r6, #0]	@ prephitmp.3531, <variable>.eVidStd
	cmp	r3, #18	@ prephitmp.3531,
	bgt	.L1069	@,
	cmp	r3, #8	@ prephitmp.3531,
	beq	.L1136	@,
.L1070:
	cmp	r3, #9	@ prephitmp.3531,
	beq	.L1137	@,
.L1071:
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r7, r0, #0	@ D.39831,
	beq	.L1138	@,
	ldr	r3, [r6, #0]	@ D.39819, <variable>.eVidStd
	sub	r7, r3, #10	@ tmp210, D.39819,
	cmp	r7, #2	@ tmp210,
	bls	.L1139	@,
	cmp	r3, #4	@ D.39819,
	beq	.L1074	@,
.L1075:
	ldr	r7, [r5, r4, asl #2]	@ prephitmp.3535, s_pstVfmwChan
	cmp	r3, #14	@ D.39819,
	movne	r0, #0	@, prephitmp.3533
	moveq	r0, #1	@, prephitmp.3533
	movw	r3, #:lower16:.LANCHOR0	@ tmp216,
	movt	r3, #:upper16:.LANCHOR0	@ tmp216,
	ldr	r2, [r7, #32]	@ D.39851, <variable>.stChanCfg.eVidStd
	sub	sl, r2, #10	@ tmp217, D.39851,
	cmp	sl, #2	@ tmp217,
	bhi	.L1077	@,
.L1145:
	ldr	ip, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	beq	.L1078	@,
.L1079:
	cmp	r2, #14	@ D.39851,
	movne	r2, #0	@, prephitmp.3652
	moveq	r2, #1	@, prephitmp.3652
.L1080:
	cmp	r2, r0	@ prephitmp.3652, prephitmp.3533
	beq	.L1081	@,
	ldr	lr, [r7, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	lr, #0	@ <variable>.s32OneChanMem,
	bne	.L1082	@,
	ldr	r0, .L1146	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r9, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	r9, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1140	@,
.L1083:
	ldr	r0, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r6, #0]	@ temp.3553, <variable>.eVidStd
	sub	r2, r3, #10	@ tmp232, temp.3553,
	cmp	r2, #2	@ tmp232,
	bhi	.L1084	@,
	ldr	r3, [r5, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L1086	@,
.L1085:
	ldr	r1, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	mov	r9, #1	@ tmp238,
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmapCache	@
	ldr	r1, [r7, #196]	@ temp.3563, <variable>.stChanMem_scd.Length
	strb	r9, [r7, #168]	@ tmp238, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #0	@ temp.3563,
	mov	r8, r0	@ pVir_vdh,
	bne	.L1141	@,
.L1087:
	mov	sl, #0	@ pVir_scd,
.L1088:
	ldr	r0, .L1146	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ tmp253, s_pstVfmwChan
	cmp	r0, #0	@ tmp253,
	beq	.L1116	@,
	cmp	r8, #0	@ pVir_vdh,
	beq	.L1116	@,
	ldr	lr, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	rsbs	ip, sl, #1	@, pVir_scd
	movcc	ip, #0	@
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp261,
	bne	.L1116	@,
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	str	r8, [r7, #172]	@ pVir_vdh, <variable>.stChanMem_vdh.VirAddr
	mov	r1, r8	@, pVir_vdh
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r2, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	ldr	r2, [r7, #196]	@ temp.3575, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.3575,
	bne	.L1142	@,
.L1094:
	ldr	r3, [r6, #0]	@ temp.3605, <variable>.eVidStd
	sub	r7, r3, #10	@ tmp308, temp.3605,
	cmp	r7, #2	@ tmp308,
	bhi	.L1106	@,
	ldr	r0, [r5, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L1108	@,
.L1107:
	ldr	r2, [r5, r4, asl #2]	@ tmp313, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	add	r1, sp, #152	@,,
	movw	r7, #:lower16:.LANCHOR0	@ tmp312,
	movt	r7, #:upper16:.LANCHOR0	@ tmp312,
	ldr	r3, [r2, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	str	r3, [sp, #152]	@ <variable>.s32SdecMemAddr, stMem.PhyAddr
	ldr	ip, [r2, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	ip, [sp, #156]	@ <variable>.s32SdecMemSize, stMem.VirAddr
	ldr	lr, [r2, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	lr, [sp, #160]	@ <variable>.s32SdecMemSize, stMem.Length
	ldr	r3, [r2, #1460]	@ <variable>.stSynExtraData.stChanOption.s32MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	mov	r3, r3, asl #1	@, <variable>.stSynExtraData.stChanOption.s32MaxHeight,
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1116	@,
.L1133:
	ldr	r7, [r7, r4, asl #2]	@ prephitmp.3535, s_pstVfmwChan
.L1081:
	add	r0, r7, #32	@, prephitmp.3535,
	mov	r2, #72	@,
	mov	r1, r6	@, pstCfg
	add	r7, sp, #16	@ tmp348,,
	bl	memcpy	@
	ldr	ip, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	fp, [r5, r4, asl #2]	@ tmp343, s_pstVfmwChan
	mov	r1, #120	@,
	mov	r0, r7	@, tmp348
	add	r8, r6, #4	@ tmp544, pstCfg,
	add	sl, sp, #172	@ tmp369,,
	str	ip, [fp, #12]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	ldr	r3, [r5, r4, asl #2]	@ tmp346, s_pstVfmwChan
	ldr	r2, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	fp, [r5, r4, asl #2]	@ tmp350, s_pstVfmwChan
	ldr	r9, [fp, #244]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	r9, [sp, #28]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	add	r9, sp, #40	@ tmp366,,
	ldr	r0, [fp, #244]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r6, #68]	@, <variable>.s32LowdBufEnable
	ldr	lr, [r5, r4, asl #2]	@ tmp356, s_pstVfmwChan
	mov	r2, #0	@ tmp362,
	ldr	ip, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	movw	r3, #:lower16:269729792	@ tmp361,
	ldr	fp, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	movt	r3, #:upper16:269729792	@ tmp361,
	str	r1, [sp, #12]	@, %sfp
	str	r0, [sp, #16]	@, ScdInstCfg.pBufVirAddr
	ldr	lr, [lr, #256]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	ldmia	r8, {r0, r1}	@ tmp544,,
	strb	ip, [sp, #20]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	str	lr, [sp, #32]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	ldr	lr, [sp, #12]	@, %sfp
	stmia	r9, {r0, r1}	@ tmp366,,
	mov	r1, r7	@, tmp348
	mov	r0, r4	@, ChanID
	str	r3, [sp, #36]	@ tmp361, ScdInstCfg.RegPhyBaseAddr
	str	lr, [sp, #60]	@, ScdInstCfg.ScdLowBufEnable
	mvn	r3, #0	@ tmp363,
	str	r2, [sp, #56]	@ tmp362, ScdInstCfg.ScdLowdlyEnable
	str	r3, [sp, #48]	@ tmp363, ScdInstCfg.LastRawDisContinueCount
	str	r2, [sp, #52]	@ tmp362, ScdInstCfg.DisContinueRawPacketFlag
	str	fp, [sp, #24]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	bl	SM_Config	@
	mov	r0, sl	@, tmp369
	mov	r1, #1	@,
	bl	__memzero	@
	ldr	r7, [r6, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	cmp	r7, #0	@ <variable>.s32LowdBufEnable,
	bne	.L1143	@,
.L1111:
	ldr	r0, [r5, r4, asl #2]	@ temp.3631, s_pstVfmwChan
	mov	ip, #0	@ tmp410,
	movw	r2, #:lower16:217512	@ tmp429,
	movt	r2, #:upper16:217512	@ tmp429,
	movw	r7, #:lower16:.LANCHOR0	@ tmp374,
	movt	r7, #:upper16:.LANCHOR0	@ tmp374,
	ldr	r1, [r0, #208]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	str	r1, [r0, #1392]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.3632, s_pstVfmwChan
	ldr	lr, [r3, #212]	@ <variable>.stChanMem_ctx.Length, <variable>.stChanMem_ctx.Length
	str	lr, [r3, #1396]	@ <variable>.stChanMem_ctx.Length, <variable>.stSynExtraData.s32ContextMemSize
	ldr	r0, [r5, r4, asl #2]	@ temp.3633, s_pstVfmwChan
	ldr	r1, [r0, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	str	r1, [r0, #912]	@ <variable>.s32VdmChanMemAddr, <variable>.stSynExtraData.s32SyntaxMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.3634, s_pstVfmwChan
	ldr	lr, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	lr, [r3, #916]	@ <variable>.s32VdmChanMemSize, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r0, [r5, r4, asl #2]	@ temp.3635, s_pstVfmwChan
	ldr	r1, [r0, #260]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r1, [r0, #924]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.3636, s_pstVfmwChan
	ldr	lr, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	lr, [r3, #928]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r0, [r5, r4, asl #2]	@ temp.3637, s_pstVfmwChan
	ldr	r1, [r0, #268]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	r1, [r0, #932]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.3638, s_pstVfmwChan
	ldr	lr, [r3, #272]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	lr, [r3, #936]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r0, [r5, r4, asl #2]	@ tmp391, s_pstVfmwChan
	ldr	r1, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r1, [r0, #892]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	r3, [r5, r4, asl #2]	@ tmp394, s_pstVfmwChan
	ldr	lr, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	lr, [r3, #888]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r0, [r5, r4, asl #2]	@ tmp397, s_pstVfmwChan
	ldr	r1, [r6, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r1, [r0, #896]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r5, r4, asl #2]	@ tmp400, s_pstVfmwChan
	ldr	lr, [r6, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	lr, [r3, #900]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r0, [r5, r4, asl #2]	@ tmp403, s_pstVfmwChan
	ldr	r1, [r6, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r1, [r0, #904]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	r3, [r5, r4, asl #2]	@ tmp406, s_pstVfmwChan
	ldr	lr, [r6, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	lr, [r3, #1400]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r0, [r5, r4, asl #2]	@ tmp409, s_pstVfmwChan
	str	ip, [r0, #1616]	@ tmp410, <variable>.stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r5, r4, asl #2]	@ tmp412, s_pstVfmwChan
	ldr	r1, [r6, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r1, #1	@ <variable>.s32SupportAllP,
	movne	lr, #0	@, tmp414
	moveq	lr, #1	@, tmp414
	str	lr, [r3, #1416]	@ tmp414, <variable>.stSynExtraData.s32SupportAllP
	ldr	r0, [r5, r4, asl #2]	@ tmp416, s_pstVfmwChan
	ldr	r1, [r6, #64]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	str	r1, [r0, #1420]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r3, [r5, r4, asl #2]	@ tmp420, s_pstVfmwChan
	ldmia	r8, {r0, r1}	@ tmp544,,
	add	lr, r3, #1264	@ tmp419, tmp420,
	add	r3, lr, #12	@ tmp419, tmp419,
	stmia	r3, {r0, r1}	@ tmp419,,
	ldr	r0, [r5, r4, asl #2]	@ tmp426, s_pstVfmwChan
	str	ip, [r0, #908]	@ tmp410, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.3573, s_pstVfmwChan
	ldr	r3, [r0, r2]	@ prephitmp.3537, <variable>.stSynCtx.eVidStd
	ldr	lr, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, lr	@ prephitmp.3537, <variable>.eVidStd
	beq	.L1112	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r2, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r7, r4, asl #2]	@ prephitmp.3573, s_pstVfmwChan
	cmp	r2, #18	@ <variable>.eVidStd,
	bne	.L1134	@,
	ldr	lr, [r0, #1448]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	ip, [r0, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	cmp	lr, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	ldr	r3, [r0, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	ldrne	r1, [r0, #1456]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r2, [r0, #1460]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldreq	r1, [r0, #1508]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32SlotWidth
	ldreq	r2, [r0, #1512]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32SlotHeight
	mov	r0, r4	@, ChanID
	str	ip, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.3573, s_pstVfmwChan
.L1134:
	ldr	r3, [r0, #880]	@ prephitmp.3537, <variable>.eVidStd
.L1112:
	movw	r2, #:lower16:217512	@ tmp437,
	movt	r2, #:upper16:217512	@ tmp437,
	movw	r7, #:lower16:.LANCHOR0	@ tmp438,
	movt	r7, #:upper16:.LANCHOR0	@ tmp438,
	str	r3, [r0, r2]	@ prephitmp.3537, <variable>.stSynCtx.eVidStd
	ldr	r0, [r5, r4, asl #2]	@ tmp439, s_pstVfmwChan
	ldr	r1, [r0, #248]	@ temp.3656, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.3656
	str	r1, [sp, #152]	@ temp.3656, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r4, asl #2]	@ tmp441, s_pstVfmwChan
	add	r1, sp, #152	@,,
	str	r0, [sp, #156]	@, stMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	sl, [r3, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	sl, [sp, #160]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	sl, r0, #0	@ D.40036,
	bne	.L1069	@,
	add	r8, sp, #136	@ tmp542,,
	mov	r1, #16	@,
	mov	r0, r8	@, tmp542
	bl	__memzero	@
	ldr	r3, [r6, #0]	@ temp.3659, <variable>.eVidStd
	sub	ip, r3, #10	@ tmp445, temp.3659,
	cmp	ip, #2	@ tmp445,
	strhib	sl, [sp, #136]	@ D.40036, DnrChanCfgArgs.s32MirrorEn
	bhi	.L1119	@,
	ldr	lr, [r7, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L1135	@,
	cmp	r3, #12	@ temp.3659,
	beq	.L1135	@,
	ldr	ip, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	eor	r2, ip, #1	@ tmp457, <variable>.StdExt.Vp6Ext.bReversed,
	and	r0, r2, #1	@ tmp460, tmp457,
	strb	r0, [sp, #136]	@ tmp460, DnrChanCfgArgs.s32MirrorEn
.L1119:
	ldrsb	lr, [sp, #136]	@ DnrChanCfgArgs.s32MirrorEn, DnrChanCfgArgs.s32MirrorEn
	mov	r3, #1	@ tmp473,
	ldr	ip, [r6, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	lr, #1	@ DnrChanCfgArgs.s32MirrorEn,
	strb	ip, [sp, #137]	@ <variable>.s32VcmpEn, DnrChanCfgArgs.s32VcmpEn
	moveq	ip, #0	@ tmp467,
	streqb	ip, [sp, #137]	@ tmp467, DnrChanCfgArgs.s32VcmpEn
	ldr	ip, [r5, r4, asl #2]	@ temp.3669, s_pstVfmwChan
	ldr	r0, [r6, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldr	r1, [r6, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldr	r2, [r6, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [sp, #144]	@ <variable>.s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	strb	r1, [sp, #138]	@ <variable>.s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #140]	@ <variable>.s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r3, [sp, #148]	@ tmp473, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1144	@,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp542,,,,
	add	lr, ip, #217088	@ tmp478, temp.3669,
	add	ip, lr, #360	@ tmp478, tmp478,
	stmia	ip, {r0, r1, r2, r3}	@ tmp478,,,,
.L1123:
	ldr	r1, [r5, r4, asl #2]	@ tmp481, s_pstVfmwChan
	movw	r3, #:lower16:s_SmIIS	@ tmp484,
	movt	r3, #:upper16:s_SmIIS	@ tmp484,
	movw	ip, #:lower16:181760	@ tmp482,
	add	r0, r3, r4, asl #2	@, tmp488, tmp484, ChanID,
	movt	ip, #:upper16:181760	@ tmp482,
	movw	r3, #:lower16:166248	@ tmp491,
	movt	r3, #:upper16:166248	@ tmp491,
	strb	r4, [r1, ip]	@ ChanID, <variable>.FspInst.s32InstID
	movw	lr, #:lower16:.LANCHOR0	@ tmp480,
	ldr	r2, [r0, #236]	@ tmp490, s_SmIIS.pSmInstArray
	movt	lr, #:upper16:.LANCHOR0	@ tmp480,
	movw	r1, #:lower16:.LANCHOR0	@ tmp503,
	movt	r1, #:upper16:.LANCHOR0	@ tmp503,
	str	r4, [r2, r3]	@ ChanID, <variable>.InstID
	ldr	ip, [r5, #0]	@ D.40078, s_pstVfmwChan
	ldr	r2, [r5, #4]	@ temp.3677, s_pstVfmwChan
	cmp	ip, #0	@ D.40078,
	streq	ip, [lr, #3816]	@ D.40078, PrioArray
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp545,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp545,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp545,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp545,
	strne	r0, [lr, #3816]	@ <variable>.s32Priority, PrioArray
	movw	lr, #:lower16:.LANCHOR0	@ tmp514,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.3677,
	streq	r2, [r1, #3820]	@ temp.3677, PrioArray
	movt	lr, #:upper16:.LANCHOR0	@ tmp514,
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	ip, [r5, #8]	@ temp.3681, s_pstVfmwChan
	strne	r0, [r1, #3820]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.3681,
	ldr	r1, [r5, #12]	@ temp.3671, s_pstVfmwChan
	streq	ip, [lr, #3824]	@ temp.3681, PrioArray
	str	r2, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	movw	r2, #:lower16:.LANCHOR0	@ tmp525,
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movt	r2, #:upper16:.LANCHOR0	@ tmp525,
	strne	r0, [lr, #3824]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r1, #0	@ temp.3671,
	streq	r1, [r3, #12]	@ temp.3671, g_ChanCtx.PriorByChanId
	streq	r1, [r2, #3828]	@ temp.3671, PrioArray
	str	ip, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [r1, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r2, #3828]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r1, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1146+4	@,
	strne	r2, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.39808,
	b	.L1065	@
.L1137:
	add	r0, sp, #168	@,,
	bl	REAL9DEC_Support	@
	ldr	r1, [sp, #168]	@ s32supportFlag, s32supportFlag
	cmp	r1, #0	@ s32supportFlag,
	bne	.L1071	@,
.L1069:
	mvn	r0, #0	@ D.39808,
.L1065:
	add	sp, sp, #180	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1082:
	movw	r8, #:lower16:.LANCHOR0	@ tmp271,
	movt	r8, #:upper16:.LANCHOR0	@ tmp271,
	add	r0, r8, #448	@, tmp271,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, [r7, #156]	@, <variable>.stChanMem.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r6, #0]	@ temp.3580, <variable>.eVidStd
	sub	sl, r3, #10	@ tmp274, temp.3580,
	cmp	sl, #2	@ tmp274,
	bhi	.L1096	@,
	ldr	r2, [r8, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1098	@,
.L1097:
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmapCache	@
	mov	sl, r0	@ pVir,
.L1099:
	movw	r8, #:lower16:.LANCHOR0	@ tmp282,
	movt	r8, #:upper16:.LANCHOR0	@ tmp282,
	add	r0, r8, #448	@, tmp282,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, r4, asl #2]	@ temp.3589, s_pstVfmwChan
	cmp	r3, #0	@ temp.3589,
	beq	.L1116	@,
	cmp	sl, #0	@ pVir,
	beq	.L1116	@,
	ldr	r2, [r3, #196]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r3, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r3, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	ldr	r3, [r8, r4, asl #2]	@ temp.3590, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	str	sl, [r7, #156]	@ pVir, <variable>.stChanMem.VirAddr
	mov	r1, sl	@, pVir
	ldr	r3, [r8, r4, asl #2]	@ tmp293, s_pstVfmwChan
	ldr	r2, [r7, #164]	@, <variable>.stChanMem.Length
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	str	sl, [r3, #188]	@ pVir, <variable>.stChanMem_scd.VirAddr
	ldr	lr, [r8, r4, asl #2]	@ temp.3592, s_pstVfmwChan
	ldr	ip, [lr, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	sl, sl, ip	@ tmp296, pVir, <variable>.stChanMem_scd.Length
	str	sl, [lr, #172]	@ tmp296, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	ldr	lr, [r8, r4, asl #2]	@ temp.3597, s_pstVfmwChan
	ldr	r2, [lr, #196]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [lr, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [lr, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	ldr	ip, [r8, r4, asl #2]	@ temp.3601, s_pstVfmwChan
	ldr	r2, [ip, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [ip, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [ip, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1094	@,
.L1116:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39808,
	b	.L1065	@
.L1139:
	ldr	r8, [r5, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r8, #1	@ g_VdmCharacter,
	bne	.L1075	@,
.L1074:
	ldr	r7, [r5, r4, asl #2]	@ prephitmp.3535, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp216,
	mov	r0, #1	@ prephitmp.3533,
	movt	r3, #:upper16:.LANCHOR0	@ tmp216,
	ldr	r2, [r7, #32]	@ D.39851, <variable>.stChanCfg.eVidStd
	sub	sl, r2, #10	@ tmp217, D.39851,
	cmp	sl, #2	@ tmp217,
	bls	.L1145	@,
.L1077:
	cmp	r2, #4	@ D.39851,
	bne	.L1079	@,
.L1078:
	mov	r2, #1	@ prephitmp.3652,
	b	.L1080	@
.L1106:
	cmp	r3, #4	@ temp.3605,
	beq	.L1107	@,
	cmp	r3, #14	@ temp.3605,
	beq	.L1107	@,
.L1108:
	ldr	r0, [r5, r4, asl #2]	@ tmp328, s_pstVfmwChan
	movw	r7, #:lower16:.LANCHOR0	@ tmp327,
	movt	r7, #:upper16:.LANCHOR0	@ tmp327,
	ldr	r1, [r0, #236]	@ D.39973, <variable>.s32OffLineDnrMemAddr
	mov	r0, r1	@, D.39973
	str	r1, [sp, #152]	@ D.39973, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r5, r4, asl #2]	@ tmp330, s_pstVfmwChan
	add	r1, sp, #152	@,,
	str	r0, [sp, #156]	@, stMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	ip, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [sp, #160]	@ <variable>.s32OffLineDNRMemSize, stMem.Length
	ldr	r3, [r2, #1460]	@, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L1133	@,
	b	.L1116	@
.L1138:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.39808, D.39831
	b	.L1065	@
.L1143:
	mov	r1, sl	@, tmp369
	mov	r0, r4	@, ChanID
	mov	r7, #1	@ tmp371,
	strb	r7, [sp, #172]	@ tmp371, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1111	@
.L1096:
	cmp	r3, #4	@ temp.3580,
	beq	.L1097	@,
	cmp	r3, #14	@ temp.3580,
	beq	.L1097	@,
.L1098:
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmap	@
	mov	sl, r0	@ pVir,
	b	.L1099	@
.L1084:
	cmp	r3, #4	@ temp.3553,
	beq	.L1085	@,
	cmp	r3, #14	@ temp.3553,
	beq	.L1085	@,
.L1086:
	ldr	r1, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	mov	r9, #0	@ tmp245,
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r7, #196]	@ temp.3558, <variable>.stChanMem_scd.Length
	strb	r9, [r7, #168]	@ tmp245, <variable>.stChanMem_vdh.IsCached
	cmp	r1, r9	@ temp.3558,
	mov	r8, r0	@ pVir_vdh,
	beq	.L1087	@,
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	strb	r9, [r7, #184]	@ tmp245, <variable>.stChanMem_scd.IsCached
	mov	sl, r0	@ pVir_scd,
	b	.L1088	@
.L1141:
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmapCache	@
	strb	r9, [r7, #184]	@ tmp238, <variable>.stChanMem_scd.IsCached
	mov	sl, r0	@ pVir_scd,
	b	.L1088	@
.L1140:
	ldr	r0, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	b	.L1083	@
.L1142:
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	str	sl, [r7, #188]	@ pVir_scd, <variable>.stChanMem_scd.VirAddr
	mov	r1, sl	@, pVir_scd
	ldr	r2, [r7, #196]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1094	@,
	b	.L1116	@
.L1135:
	ldr	r1, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	and	r3, r1, #1	@ tmp455, <variable>.StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #136]	@ tmp455, DnrChanCfgArgs.s32MirrorEn
	b	.L1119	@
.L1144:
	mov	r1, r8	@, tmp542
	mov	r0, r4	@, ChanID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	beq	.L1123	@,
	b	.L1069	@
.L1136:
	add	r0, sp, #168	@,,
	bl	REAL8DEC_Support	@
	ldr	r0, [sp, #168]	@ s32supportFlag, s32supportFlag
	cmp	r0, #0	@ s32supportFlag,
	beq	.L1069	@,
	ldr	r3, [r6, #0]	@ prephitmp.3531, <variable>.eVidStd
	b	.L1070	@
.L1147:
	.align	2
.L1146:
	.word	.LANCHOR0+448
	.word	.LANCHOR0+3816
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r0, #3	@ ChanID,
	.pad #144
	sub	sp, sp, #144	@,,
	mov	r7, #0	@ tmp145,
	mov	r5, r0	@ ChanID, ChanID
	mov	r4, r1	@ pstChanState, pstChanState
	str	r7, [sp, #132]	@ tmp145, NewNum
	str	r7, [sp, #136]	@ tmp145, ReadNum
	str	r7, [sp, #140]	@ tmp145, RefNum
	bhi	.L1172	@,
	cmp	r1, #0	@ pstChanState,
	beq	.L1159	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp224,
	movt	r6, #:upper16:.LANCHOR0	@ tmp224,
	mov	r0, r1	@, pstChanState
	mov	r1, #104	@,
	bl	__memzero	@
	ldr	r1, [r6, r5, asl #2]	@ D.38815, s_pstVfmwChan
	cmp	r1, #0	@ D.38815,
	beq	.L1159	@,
	add	r1, r1, #1280	@, D.38815,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	mov	r0, r5	@, ChanID
	add	r2, sp, #136	@,,
	add	r1, sp, #140	@,,
	add	r3, sp, #132	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r0, [r6, r5, asl #2]	@ temp.3717, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1151	@,
	ldr	r3, [r0, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L1151	@,
	movw	ip, #:lower16:181770	@ tmp161,
	movt	ip, #:upper16:181770	@ tmp161,
	ldrsb	r1, [r0, ip]	@ temp.3721, <variable>.FspInst.s32DecFsNum
	cmp	r1, #0	@ temp.3721,
	ble	.L1153	@,
	movw	lr, #:lower16:209558	@ tmp171,
	movt	lr, #:upper16:209558	@ tmp171,
	add	r3, r0, lr	@ tmp171, temp.3717, tmp171
	mov	r8, #52	@ tmp169,
	mul	r8, r8, r1	@ D.45456, tmp169, temp.3721
	ldrsb	ip, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #3	@ <variable>.DispState,
	sub	lr, r8, #52	@ tmp229, D.45456,
	ubfx	r1, lr, #2, #1	@ tmp242, tmp229,,
	beq	.L1173	@,
.L1161:
	mov	r3, #52	@ ivtmp.3715,
	cmp	r3, r8	@ ivtmp.3715, D.45456
	beq	.L1153	@,
	cmp	r1, #0	@ tmp242,
	beq	.L1156	@,
	movw	r2, #:lower16:209610	@ tmp256,
	movt	r2, #:upper16:209610	@ tmp256,
	add	lr, r0, r2	@ tmp256, temp.3717, tmp256
	add	r3, r3, #52	@ ivtmp.3715, ivtmp.3715,
	ldrsb	r1, [lr, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, r8	@ ivtmp.3715, D.45456
	bne	.L1156	@,
	b	.L1153	@
.L1166:
	add	r3, r1, #52	@ ivtmp.3715, tmp243,
	cmp	r3, r8	@ ivtmp.3715, D.45456
	beq	.L1153	@,
.L1156:
	movw	r2, #:lower16:209558	@ tmp247,
	movt	r2, #:upper16:209558	@ tmp247,
	add	r1, r3, #52	@ tmp243, ivtmp.3715,
	add	lr, r0, r3	@ tmp245, temp.3717, ivtmp.3715
	add	ip, r0, r1	@ tmp250, temp.3717, tmp243
	mov	r3, r2	@ tmp252, tmp247
	add	r2, lr, r2	@ tmp247, tmp245, tmp247
	add	r3, ip, r3	@ tmp252, tmp250, tmp252
	ldrsb	ip, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r2, #3	@ <variable>.DispState,
	bne	.L1166	@,
	add	r3, r1, #52	@ ivtmp.3715, tmp243,
	add	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r3, r8	@ ivtmp.3715, D.45456
	bne	.L1156	@,
.L1153:
	str	r7, [r4, #88]	@ prephitmp.3700, <variable>.wait_disp_frame_num
	movw	r2, #:lower16:181770	@ tmp176,
	ldr	ip, [r6, r5, asl #2]	@ tmp175, s_pstVfmwChan
	movt	r2, #:upper16:181770	@ tmp176,
	movw	r0, #:lower16:181770	@ tmp182,
	movt	r0, #:upper16:181770	@ tmp182,
	ldrb	r3, [ip, r2]	@ zero_extendqisi2	@ D.38836, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ D.38836,
	ldrne	ip, [sp, #140]	@ RefNum, RefNum
	moveq	r3, #4	@ iftmp.537,
	mvnne	ip, ip	@ tmp177, RefNum
	sxtabne	r3, ip, r3	@ iftmp.537, tmp177, D.38836
	str	r3, [r4, #96]	@ iftmp.537, <variable>.total_disp_frame_num
	ldr	r1, [r6, r5, asl #2]	@ tmp181, s_pstVfmwChan
	ldrsb	r3, [r1, r0]	@ temp.3720, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ temp.3720,
	ble	.L1154	@,
	ldr	r0, [sp, #140]	@ RefNum, RefNum
	add	lr, r0, #1	@ tmp185, RefNum,
	cmp	r3, lr	@ temp.3720, tmp185
	movle	r3, #0	@ tmp187,
	strle	r3, [r4, #96]	@ tmp187, <variable>.total_disp_frame_num
	b	.L1154	@
.L1151:
	mov	r0, r5	@, ChanID
	add	r1, sp, #4	@,,
	bl	DNR_GetState	@
	add	r1, sp, #72
	ldmia	r1, {r1, r2, r3}	@ phole ldm
	str	r1, [r4, #96]	@ DnrChanState.total_frame_num, <variable>.total_disp_frame_num
	add	r0, r2, r3	@ tmp166, DnrChanState.new_frame_num, DnrChanState.read_out_frame_num
	str	r0, [r4, #88]	@ tmp166, <variable>.wait_disp_frame_num
.L1154:
	add	r3, r5, r5, asl #1	@, tmp195, ChanID, ChanID,
	ldr	r2, [sp, #136]	@ ReadNum, ReadNum
	ldr	ip, [sp, #132]	@ NewNum, NewNum
	add	r1, sp, #84	@,,
	add	lr, r6, r3, asl #3	@, tmp197, tmp224, tmp195,
	add	r0, ip, r2	@ tmp190, NewNum, ReadNum
	str	r0, [r4, #52]	@ tmp190, <variable>.decoded_1d_frame_num
	ldr	r2, [lr, #352]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	mov	r0, r5	@, ChanID
	str	r2, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	lr, [lr, #340]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	lr, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r3, [sp, #92]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	ldr	ip, [sp, #100]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	add	r1, sp, #108	@,,
	mov	r0, r5	@, ChanID
	str	r3, [r4, #60]	@ SmInstInfo.SegNum, <variable>.buffered_stream_num
	str	ip, [r4, #56]	@ SmInstInfo.TotalSegSize, <variable>.buffered_stream_size
	bl	SM_GetInfo	@
	ldr	r1, [sp, #128]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movw	ip, #:lower16:233384	@ tmp218,
	movt	ip, #:upper16:233384	@ tmp218,
	cmp	r1, #10	@ ScdInstInfo.numReadSegFail,
	movle	r0, #0	@, tmp215
	movgt	r0, #1	@, tmp215
	str	r0, [r4, #84]	@ tmp215, <variable>.stream_not_enough
	ldr	r2, [r6, r5, asl #2]	@ tmp217, s_pstVfmwChan
	ldrb	r3, [r2, ip]	@ zero_extendqisi2	@ tmp220,
	and	r1, r3, #1	@ tmp222, tmp220,
	str	r1, [r4, #92]	@ tmp222, <variable>.mpeg4_shorthead
.L1159:
	add	sp, sp, #144	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1172:
	bl	vfmw_dprint_nothing	@
	b	.L1159	@
.L1173:
	mov	r7, r2	@ s32DecodedFrameNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L1161	@
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L1180	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r3, r0, asl #2]	@ D.38756, s_pstVfmwChan
	cmp	r0, #0	@ D.38756,
	beq	.L1180	@,
	ldr	r2, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1180	@,
	add	r0, r0, #74752	@, D.38756,
	add	r0, r0, #800	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L1180:
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp160,
	movt	r4, #:upper16:.LANCHOR0	@ tmp160,
	ldr	r3, [r4, #60]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.38693,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1184	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChan	@
.L1184:
	ldr	r1, [r4, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L1185	@,
	mov	r0, #1	@,
	bl	VCTRL_DestroyChan	@
.L1185:
	ldr	r2, [r4, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L1186	@,
	mov	r0, #2	@,
	bl	VCTRL_DestroyChan	@
.L1186:
	ldr	r5, [r4, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r5, #0	@ s_pstVfmwChan,
	beq	.L1187	@,
	mov	r0, #3	@,
	bl	VCTRL_DestroyChan	@
.L1187:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	ip, #3	@ tmp147,
	str	ip, [r4, #92]	@ tmp147, s_VfmwCTrl.eTaskCommand
	b	.L1189	@
.L1194:
	bl	msleep	@
	ldr	r1, [r4, #88]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1188	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1188	@,
.L1189:
	ldr	lr, [r4, #88]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r3, r5, #1	@ tmp162, i,
	mov	r0, #10	@,
	add	r5, r3, #1	@ i, tmp162,
	cmp	lr, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1194	@,
.L1188:
	mov	r1, #16	@,
	ldr	r0, .L1195	@,
	mov	r5, #0	@ tmp151,
	str	r5, [r4, #92]	@ tmp151, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1195+4	@,
	bl	CloseDrivers	@
	mov	r0, r5	@ D.38693, tmp151
	str	r5, [r4, #60]	@ tmp151, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1196:
	.align	2
.L1195:
	.word	.LANCHOR0+284
	.word	.LANCHOR0+108
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
	ldr	r3, [r4, #60]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #92]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L1202	@
.L1200:
	bl	msleep	@
	ldr	r1, [r4, #88]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L1207	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1209	@,
.L1202:
	ldr	r3, [r4, #88]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L1200	@,
.L1207:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #92]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1209:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #92]	@ tmp143, s_VfmwCTrl.eTaskCommand
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
	ldr	r3, [r4, #60]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #92]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L1215	@
.L1213:
	bl	msleep	@
	ldr	r2, [r4, #88]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1220	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1222	@,
.L1215:
	ldr	r1, [r4, #88]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L1213	@,
.L1220:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #92]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1222:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #92]	@ tmp143, s_VfmwCTrl.eTaskCommand
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
	ldr	r5, [r4, #60]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r5, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1248	@,
.L1224:
	mvn	r0, #0	@ D.38616,
.L1246:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1248:
	movw	r7, #:lower16:saved_command_line	@ tmp278,
	movt	r7, #:upper16:saved_command_line	@ tmp278,
	add	r1, r4, #3824	@, tmp276,
	mov	r2, #1024	@,
	add	r0, r1, #8	@,,
	ldr	r1, [r7, #0]	@, saved_command_line
	str	r5, [sp, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #3824	@, tmp276,
	movw	r1, #:lower16:.LC9	@,
	add	r0, r0, #8	@,,
	movt	r1, #:upper16:.LC9	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp173,
	str	r0, [sp, #4]	@ tmp173, p
	beq	.L1225	@,
	add	r8, sp, #4	@ p.747,,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, r8	@, p.747
	bl	strsep	@
	subs	r3, r0, #0	@ D.45590,
	beq	.L1230	@,
	mov	r0, r8	@, p.747
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1249	@,
	mov	r1, r5	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #24]	@ prephitmp.3905, extra_ref
.L1229:
	add	r5, r0, #4992	@ tmp180, prephitmp.3905,
	movw	r2, #10000	@ tmp182,
	add	r3, r5, #8	@ tmp180, tmp180,
	cmp	r3, r2	@ tmp180, tmp182
	bhi	.L1231	@,
	movw	lr, #5000	@ tmp183,
	movw	ip, #:lower16:-5000	@ tmp184,
	cmp	r0, lr	@ prephitmp.3905, tmp183
	movge	r0, lr	@ pretmp.3902, tmp183
	movt	ip, #:upper16:-5000	@ tmp184,
	cmp	r0, ip	@ pretmp.3902, tmp184
	movge	r3, r0	@ prephitmp.3904, pretmp.3902
	movlt	r3, ip	@ prephitmp.3904, tmp184
.L1230:
	str	r3, [r4, #24]	@ prephitmp.3904, extra_ref
.L1228:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1252	@,
	mov	r5, #0	@ tmp189,
	str	r5, [sp, #4]	@ tmp189, p
	bl	strlcpy	@
	ldr	r0, .L1252	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	strstr	@
	cmp	r0, r5	@ tmp193,
	str	r0, [sp, #4]	@ tmp193, p
	beq	.L1232	@,
	add	r8, sp, #4	@ p.758,,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, r8	@, p.758
	bl	strsep	@
	subs	r3, r0, #0	@ D.45608,
	beq	.L1237	@,
	mov	r0, r8	@, p.758
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	strsep	@
	cmp	r0, r5	@,
	beq	.L1250	@,
	mov	r1, r5	@, tmp189
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #28]	@ prephitmp.3900, extra_disp
.L1236:
	add	lr, r0, #4992	@ tmp200, prephitmp.3900,
	movw	r5, #10000	@ tmp202,
	add	ip, lr, #8	@ tmp200, tmp200,
	cmp	ip, r5	@ tmp200, tmp202
	bhi	.L1238	@,
	movw	r3, #5000	@ tmp203,
	movw	r2, #:lower16:-5000	@ tmp204,
	cmp	r0, r3	@ prephitmp.3900, tmp203
	movge	r0, r3	@ pretmp.3887, tmp203
	movt	r2, #:upper16:-5000	@ tmp204,
	cmp	r0, r2	@ pretmp.3887, tmp204
	movge	r3, r0	@ prephitmp.3876, pretmp.3887
	movlt	r3, r2	@ prephitmp.3876, tmp204
.L1237:
	str	r3, [r4, #28]	@ prephitmp.3876, extra_disp
.L1235:
	movw	r4, #:lower16:.LANCHOR2	@ tmp277,
	movt	r4, #:upper16:.LANCHOR2	@ tmp277,
	mov	lr, #0	@ tmp209,
	str	lr, [sp, #4]	@ tmp209, p
	ldr	r5, [r4, #-3328]	@ extra_cmd.764, extra_cmd
	cmp	r5, lr	@ extra_cmd.764,
	beq	.L1239	@,
	ubfx	r3, r5, #2, #1	@ tmp223, extra_cmd.764,,
	and	r2, r5, #1	@ tmp213, extra_cmd.764,
	strb	r3, [r4, #-3322]	@ tmp223, g_not_allow_H264FullPictureRepair_flag
	ubfx	r5, r5, #1, #1	@ tmp218, extra_cmd.764,,
	strb	r2, [r4, #-3324]	@ tmp213, g_allow_B_before_P
	strb	r5, [r4, #-3323]	@ tmp218, g_not_direct_8x8_inference_flag
.L1240:
	movw	r4, #:lower16:.LANCHOR0	@ tmp247,
	movt	r4, #:upper16:.LANCHOR0	@ tmp247,
	add	r0, r4, #60	@, tmp247,
	mov	r1, #152	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp247
	mov	r1, #16	@,
	bl	__memzero	@
	add	r0, r4, #460	@, tmp247,
	mov	r1, #16	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	mov	r0, #-2013265920	@,
	mov	r1, #75497472	@,
	movweq	r3, #:lower16:VCTRL_EventReport	@ tmp253,
	movteq	r3, #:upper16:VCTRL_EventReport	@ tmp253,
	streq	r3, [r4, #20]	@ tmp253, g_event_report
	movw	r4, #:lower16:.LANCHOR0	@ tmp254,
	movt	r4, #:upper16:.LANCHOR0	@ tmp254,
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	add	r0, r4, #284	@, tmp254,
	mov	r1, #16	@,
	bl	__memzero	@
	add	r0, r4, #108	@, tmp254,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1224	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	ldr	r0, .L1252+4	@,
	bl	OSAL_InitEvent	@
	add	r0, r4, #96	@, tmp254,
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC14	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.38643,
	bne	.L1245	@,
	add	r0, r4, #96	@, tmp254,
	bl	OSAL_WakeupTask	@
	mov	r2, #1	@ tmp271,
	mov	r0, r5	@ D.38616, D.38643
	str	r2, [r4, #60]	@ tmp271, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1246	@
.L1239:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1252	@,
	bl	strlcpy	@
	ldr	r0, .L1252	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp228,
	str	r0, [sp, #4]	@ tmp228, p
	beq	.L1240	@,
	add	r7, sp, #4	@ p.773,,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r0, r7	@, p.773
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r4, #-3328]	@ prephitmp.3874, extra_cmd
	beq	.L1242	@,
	mov	r0, r7	@, p.773
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1251	@,
	mov	r1, r5	@, extra_cmd.764
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #-3328]	@ prephitmp.3874, extra_cmd
.L1242:
	ubfx	r1, r0, #2, #1	@ tmp245, prephitmp.3874,,
	and	ip, r0, #1	@ tmp235, prephitmp.3874,
	strb	r1, [r4, #-3322]	@ tmp245, g_not_allow_H264FullPictureRepair_flag
	ubfx	r0, r0, #1, #1	@ tmp240, prephitmp.3874,,
	strb	ip, [r4, #-3324]	@ tmp235, g_allow_B_before_P
	strb	r0, [r4, #-3323]	@ tmp240, g_not_direct_8x8_inference_flag
	b	.L1240	@
.L1232:
	ldr	r0, [r4, #28]	@ prephitmp.3900, extra_disp
	b	.L1236	@
.L1225:
	ldr	r0, [r4, #24]	@ prephitmp.3905, extra_ref
	b	.L1229	@
.L1231:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #24]	@ pretmp.3901, extra_ref
	movw	r3, #5000	@ tmp186,
	movw	r0, #:lower16:-5000	@ tmp187,
	cmp	r1, r3	@ pretmp.3901, tmp186
	movlt	r2, r1	@ prephitmp.3904, pretmp.3901
	movge	r2, r3	@ prephitmp.3904, tmp186
	movt	r0, #:upper16:-5000	@ tmp187,
	cmp	r2, r0	@ prephitmp.3904, tmp187
	movge	r3, r2	@ prephitmp.3904, prephitmp.3904
	movlt	r3, r0	@ prephitmp.3904, tmp187
	b	.L1230	@
.L1238:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #28]	@ pretmp.3899, extra_disp
	movw	r0, #:lower16:-5000	@ tmp207,
	movw	ip, #5000	@ tmp206,
	movt	r0, #:upper16:-5000	@ tmp207,
	cmp	r1, ip	@ pretmp.3899, tmp206
	movlt	r5, r1	@ prephitmp.3876, pretmp.3899
	movge	r5, ip	@ prephitmp.3876, tmp206
	cmp	r5, r0	@ prephitmp.3876, tmp207
	movge	r3, r5	@ prephitmp.3876, prephitmp.3876
	movlt	r3, r0	@ prephitmp.3876, tmp207
	b	.L1237	@
.L1249:
	bl	vfmw_dprint_nothing	@
	b	.L1228	@
.L1250:
	bl	vfmw_dprint_nothing	@
	b	.L1235	@
.L1251:
	bl	vfmw_dprint_nothing	@
	b	.L1240	@
.L1245:
	add	r0, r4, #108	@, tmp254,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.38616,
	b	.L1246	@
.L1253:
	.align	2
.L1252:
	.word	.LANCHOR0+3832
	.word	.LANCHOR2-3320
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
	ldr	r3, [r4, #-3308]	@ LastEventTime.519, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.519
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #-3308]	@ CurTime, LastEventTime
	bhi	.L1259	@,
.L1256:
	ldr	r0, .L1260	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-3308]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1259:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.519, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L1256	@
.L1261:
	.align	2
.L1260:
	.word	.LANCHOR2-3320
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r5, #:lower16:.LANCHOR2	@ tmp172,
	movt	r5, #:upper16:.LANCHOR2	@ tmp172,
	movw	r4, #:lower16:.LANCHOR0	@ tmp171,
	movt	r4, #:upper16:.LANCHOR0	@ tmp171,
	mov	r3, #100	@ tmp151,
	ldr	r0, [r5, #-3304]	@ g_SleepTime.513, g_SleepTime
	str	r3, [r4, #100]	@ tmp151, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.513,
	ble	.L1271	@,
	bl	msleep	@
.L1271:
	ldr	r0, .L1295	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r5, #-3300]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp156,
	str	r2, [r4, #100]	@ tmp156, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1290	@,
.L1273:
	mov	r6, #102	@ tmp160,
	str	r6, [r4, #100]	@ tmp160, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp161,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp161,
	ldr	r3, [r1, #28]	@ D.38515, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.38515,
	beq	.L1274	@,
	blx	r3	@ D.38515
.L1275:
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp162,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp162,
	ldr	r3, [ip, #56]	@ D.38519, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.38519,
	beq	.L1276	@,
	mov	r0, #0	@,
	blx	r3	@ D.38519
.L1277:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #1	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #2	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #3	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L1291	@,
.L1278:
	mov	r0, #1	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@ temp.4045,
	mov	r6, r0	@ temp.4045,
	beq	.L1292	@,
.L1281:
	mov	r0, #2	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L1293	@,
.L1284:
	mov	r0, #3	@,
	bl	SM_GetInstanceRawDiscontinue	@
	cmp	r0, #1	@,
	beq	.L1294	@,
.L1287:
	ldr	r0, .L1295	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1295+4	@,
	mov	r3, #105	@ tmp166,
	str	r3, [r4, #100]	@ tmp166, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1276:
	bl	vfmw_dprint_nothing	@
	b	.L1277	@
.L1290:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1273	@
.L1274:
	bl	vfmw_dprint_nothing	@
	b	.L1275	@
.L1292:
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r7, r0	@ tmp.4046,
	mov	r0, r6	@, temp.4045
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1283	@,
	cmp	r7, #1	@ tmp.4046,
	bne	.L1281	@,
.L1283:
	mov	r1, #3	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #1	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #1	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1281	@
.L1293:
	mov	r0, #2	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.4049,
	mov	r0, #2	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1286	@,
	cmp	r6, #1	@ tmp.4049,
	bne	.L1284	@,
.L1286:
	mov	r1, #3	@,
	mov	r0, #2	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #2	@,
	bl	VCTRL_ResetChan	@
	mov	r0, #2	@,
	mov	r1, r0	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1284	@
.L1291:
	mov	r0, #0	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp.4043,
	mov	r0, #0	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1280	@,
	cmp	r6, #1	@ tmp.4043,
	bne	.L1278	@,
.L1280:
	mov	r1, #3	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #0	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1278	@
.L1294:
	mov	r0, #3	@,
	bl	VCTRL_ChanDecparamInValidFlag	@
	mov	r6, r0	@ tmp,
	mov	r0, #3	@,
	bl	SM_GetInstanceStreamEmptyFlag	@
	cmp	r0, #1	@,
	beq	.L1288	@,
	cmp	r6, #1	@ tmp,
	bne	.L1287	@,
.L1288:
	mov	r0, #3	@,
	mov	r1, r0	@,
	bl	SM_SetRawDiscontinueFlag	@
	mov	r0, #3	@,
	bl	VCTRL_ResetChan	@
	mov	r1, #2	@,
	mov	r0, #3	@,
	bl	SM_SetRawDiscontinueFlag	@
	b	.L1287	@
.L1296:
	.align	2
.L1295:
	.word	.LANCHOR0+448
	.word	.LANCHOR2-3320
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
.L1298:
	str	r9, [r5, #100]	@ tmp208, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #92]	@ temp.4073, s_VfmwCTrl.eTaskCommand
	str	r7, [r5, #88]	@ tmp209, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ temp.4073,
	str	r6, [r5, #100]	@ tmp210, s_VfmwCTrl.s32ThreadPos
	bne	.L1305	@,
	b	.L1299	@
.L1302:
	str	r7, [r5, #100]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #92]	@ D.38463, s_VfmwCTrl.eTaskCommand
	str	r6, [r5, #100]	@ tmp210, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.38463,
	beq	.L1299	@,
.L1305:
	cmp	r3, #3	@ D.38463,
	beq	.L1300	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #0]	@ enChipVersion, enChipVersion
	cmp	r1, #5	@ enChipVersion,
	bne	.L1302	@,
	rsbs	ip, r4, #1	@ tmp161, time2
	movcc	ip, #0	@ tmp161
	rsb	r2, r4, r0	@ tmp156, time2, time1
	cmp	r2, sl	@ tmp156, tmp211
	orrhi	ip, ip, #1	@,, tmp164, tmp161
	cmp	ip, #0	@ tmp164,
	beq	.L1302	@,
	ldr	ip, [r8, #92]	@ reg_val,
	mov	r4, r0	@ time2, time1
	cmp	ip, #3	@ reg_val,
	cmpne	ip, #0	@, reg_val,
	bic	r1, ip, #7	@ D.38482, reg_val,
	strne	r1, [r8, #92]	@ D.38482,
	ldr	r3, [r8, #96]	@ reg_val.4074,
	cmp	r3, #3	@ reg_val.4074,
	cmpne	r3, #0	@, reg_val.4074,
	bic	lr, r3, #7	@ temp.4078, reg_val.4074,
	strne	lr, [r8, #96]	@ temp.4078,
	movne	r4, r0	@ time2, time1
	str	r7, [r5, #100]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #92]	@ D.38463, s_VfmwCTrl.eTaskCommand
	str	r6, [r5, #100]	@ tmp210, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.38463,
	bne	.L1305	@,
.L1299:
	mov	fp, #5	@ tmp202,
	mov	r0, #4	@ tmp189,
	str	r0, [r5, #100]	@ tmp189, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	str	r6, [r5, #88]	@ tmp210, s_VfmwCTrl.eTaskState
.L1306:
	str	fp, [r5, #100]	@ tmp202, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #92]	@ temp.4079, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.4079,
	beq	.L1298	@,
	cmp	r3, #3	@ temp.4079,
	mov	r0, #10	@,
	beq	.L1300	@,
	bl	msleep	@
	b	.L1306	@
.L1300:
	mov	r2, #6	@ tmp196,
	str	r2, [r5, #100]	@ tmp196, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ tmp198,
	str	r0, [r5, #88]	@ tmp198, s_VfmwCTrl.eTaskState
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
	bne	.L1312	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L1312	@,
	bl	BPD_OpenHardware	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw	@
.L1312:
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
	b	.L1321	@
.L1320:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp165, i,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1317	@,
.L1349:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r0, r0, r6	@ WaitTime, CurTime, tmp161
	rsbls	r0, r4, r0	@ WaitTime, EntrTime, CurTime
	cmp	r0, #200	@ WaitTime,
	bhi	.L1358	@,
.L1347:
	add	r5, r5, #1	@ i, tmp165,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1317	@,
.L1321:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1317	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r0, r4, r0	@ WaitTime, EntrTime, CurTime
	addhi	r0, r0, r6	@ WaitTime, CurTime, tmp161
	cmp	r0, #200	@ WaitTime,
	bls	.L1320	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp165, i,
	bl	VDMDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1349	@,
.L1317:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp155,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp155,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #4]	@ D.38389, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.38389,
	beq	.L1322	@,
	mov	r0, #0	@,
	blx	r3	@ D.38389
.L1323:
	bl	SCDDRV_PrepareSleep	@
	mov	r5, #0	@ i.4147,
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ BeginTime,
	mvn	r6, r0	@ tmp158, BeginTime
	b	.L1328	@
.L1327:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp164, i.4147,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1324	@,
.L1350:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime, CurTime.4145
	addhi	r0, r0, r6	@ WaitTime.4143, CurTime.4145, tmp158
	rsbls	r0, r4, r0	@ WaitTime.4143, BeginTime, CurTime.4145
	cmp	r0, #200	@ WaitTime.4143,
	bhi	.L1359	@,
.L1344:
	add	r5, r5, #1	@ i.4147, tmp164,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i.4147,
	beq	.L1324	@,
.L1328:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1324	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime, CurTime.4145
	rsbls	r0, r4, r0	@ WaitTime.4143, BeginTime, CurTime.4145
	addhi	r0, r0, r6	@ WaitTime.4143, CurTime.4145, tmp158
	cmp	r0, #200	@ WaitTime.4143,
	bls	.L1327	@,
	bl	SCDDRV_ForeceSleep	@
	add	r5, r5, #1	@ tmp164, i.4147,
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1350	@,
.L1324:
	ldr	r3, [r7, #12]	@ D.38403, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r3, #0	@ D.38403,
	beq	.L1329	@,
	blx	r3	@ D.38403
.L1330:
	bl	DNRDRV_PrepareSleep	@
	mov	r5, #0	@ i.4151,
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ BeginTime.4148,
	mvn	r6, r0	@ tmp156, BeginTime.4148
	b	.L1335	@
.L1334:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp163, i.4151,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1331	@,
.L1351:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime.4148, CurTime.4149
	addhi	r0, r0, r6	@ WaitTime.4144, CurTime.4149, tmp156
	rsbls	r0, r4, r0	@ WaitTime.4144, BeginTime.4148, CurTime.4149
	cmp	r0, #200	@ WaitTime.4144,
	bhi	.L1360	@,
.L1341:
	add	r5, r5, #1	@ i.4151, tmp163,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i.4151,
	beq	.L1331	@,
.L1335:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1331	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime.4148, CurTime.4149
	rsbls	r0, r4, r0	@ WaitTime.4144, BeginTime.4148, CurTime.4149
	addhi	r0, r0, r6	@ WaitTime.4144, CurTime.4149, tmp156
	cmp	r0, #200	@ WaitTime.4144,
	bls	.L1334	@,
	bl	DNRDRV_ForeceSleep	@
	add	r5, r5, #1	@ tmp163, i.4151,
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1351	@,
.L1331:
	bl	VCTRL_StopVfmw	@
	bl	OSAL_GetTimeInMs	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L1358:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	b	.L1347	@
.L1359:
	bl	SCDDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	b	.L1344	@
.L1360:
	bl	DNRDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	b	.L1341	@
.L1322:
	bl	vfmw_dprint_nothing	@
	b	.L1323	@
.L1329:
	bl	vfmw_dprint_nothing	@
	b	.L1330	@
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
	ldr	r0, .L1363	@,
	mov	r1, #28	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L1364:
	.align	2
.L1363:
	.word	.LANCHOR0+32
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
	.type	CSWTCH.807, %object
	.size	CSWTCH.807, 32
CSWTCH.807:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	CSWTCH.810, %object
	.size	CSWTCH.810, 32
CSWTCH.810:
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
	.size	s_pstVfmwChan, 16
s_pstVfmwChan:
	.space	16
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
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
	.type	last_rec_pos_time.41591, %object
	.size	last_rec_pos_time.41591, 16
last_rec_pos_time.41591:
	.space	16
	.type	last_rec_pos_report_time.41592, %object
	.size	last_rec_pos_report_time.41592, 16
last_rec_pos_report_time.41592:
	.space	16
	.type	last_rec_pos_decparam_time.41593, %object
	.size	last_rec_pos_decparam_time.41593, 16
last_rec_pos_decparam_time.41593:
	.space	16
	.type	ChanPriTab.41480, %object
	.size	ChanPriTab.41480, 16
ChanPriTab.41480:
	.space	16
	.type	g_DSPState, %object
	.size	g_DSPState, 16
g_DSPState:
	.space	16
	.type	g_scd_vir, %object
	.size	g_scd_vir, 16
g_scd_vir:
	.space	16
	.type	PrioArray.39503, %object
	.size	PrioArray.39503, 16
PrioArray.39503:
	.space	16
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 96
g_VfmwChanStat:
	.space	96
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	PrioArray.39538, %object
	.size	PrioArray.39538, 16
PrioArray.39538:
	.space	16
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_ChanTick, %object
	.size	g_ChanTick, 16
g_ChanTick:
	.space	16
	.type	FspInstInfo.38878, %object
	.size	FspInstInfo.38878, 3340
FspInstInfo.38878:
	.space	3340
	.type	PrioArray.39778, %object
	.size	PrioArray.39778, 16
PrioArray.39778:
	.space	16
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
	.type	LastEventTime.38555, %object
	.size	LastEventTime.38555, 4
LastEventTime.38555:
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
