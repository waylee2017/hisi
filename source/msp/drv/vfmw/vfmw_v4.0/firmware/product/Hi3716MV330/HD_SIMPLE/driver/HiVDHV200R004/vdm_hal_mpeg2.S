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
	.file	"vdm_hal_mpeg2.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV330
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg2.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm
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
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce -ftree-ccp
@ -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-pre -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
@ -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	MP2HAL_V200R004_MakeReg
	.type	MP2HAL_V200R004_MakeReg, %function
MP2HAL_V200R004_MakeReg:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldrh	r5, [r2, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mul	ip, r4, r5	@ tmp142, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldr	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	sub	ip, ip, #1	@ tmp143, tmp142,
	bfi	r5, ip, #0, #20	@ tmp144, tmp143,,
	str	r5, [r3, #0]	@ tmp144,* <variable>.basic_cfg0
	ldr	r5, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	ldr	r4, [r5, #0]	@ tmp146,* <variable>.basic_cfg0
	orr	ip, r4, #1073741824	@ tmp220, tmp146,
	str	ip, [r5, #0]	@ tmp220,* <variable>.basic_cfg0
	ldr	r4, [r0, #8]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	mov	ip, #3	@ tmp152,
	ldr	r3, [r4, #0]	@ tmp149,* <variable>.basic_cfg0
	bfc	r3, #31, #1	@ tmp149,,
	str	r3, [r4, #0]	@ tmp149,* <variable>.basic_cfg0
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r5, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	bfi	r5, ip, #0, #4	@ tmp151, tmp152,,
	str	r5, [r3, #0]	@ tmp151,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r2, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r5, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	mov	ip, r4, lsr #6	@ tmp154, <variable>.VahbStride,
	bfi	r5, ip, #4, #10	@ tmp156, tmp154,,
	str	r5, [r3, #0]	@ tmp156,* <variable>.basic_cfg1
	ldr	r5, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r5, #0]	@ tmp158,* <variable>.basic_cfg1
	orr	ip, r4, #16384	@ tmp221, tmp158,
	str	ip, [r5, #0]	@ tmp221,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	mov	ip, #1	@ tmp164,
	ldr	r3, [r4, #0]	@ tmp161,* <variable>.basic_cfg1
	bfc	r3, #15, #1	@ tmp161,,
	str	r3, [r4, #0]	@ tmp161,* <variable>.basic_cfg1
	ldr	r3, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r5, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	bfi	r5, ip, #16, #12	@ tmp163, tmp164,,
	str	r5, [r3, #0]	@ tmp163,* <variable>.basic_cfg1
	ldr	r5, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r4, [r5, #0]	@ tmp166,* <variable>.basic_cfg1
	orr	ip, r4, #536870912	@ tmp222, tmp166,
	str	ip, [r5, #0]	@ tmp222,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r3, [r4, #0]	@ tmp169,* <variable>.basic_cfg1
	bfc	r3, #31, #1	@ tmp169,,
	str	r3, [r4, #0]	@ tmp169,* <variable>.basic_cfg1
	ldr	r5, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	ip, [r5, #0]	@ tmp171,* <variable>.basic_cfg1
	bfc	ip, #28, #1	@ tmp171,,
	str	ip, [r5, #0]	@ tmp171,* <variable>.basic_cfg1
	ldr	r4, [r0, #12]	@ <variable>.basic_cfg1, <variable>.basic_cfg1
	ldr	r3, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	bfc	r3, #30, #1	@ tmp173,,
	str	r3, [r4, #0]	@ tmp173,* <variable>.basic_cfg1
	ldr	r5, [r0, #64]	@ <variable>.FfAptEn, <variable>.FfAptEn
	mov	r3, #0	@ tmp177,
	ldr	ip, [r5, #0]	@ tmp175,* <variable>.FfAptEn
	bfc	ip, #0, #1	@ tmp175,,
	str	ip, [r5, #0]	@ tmp175,* <variable>.FfAptEn
	ldr	r4, [r0, #60]	@ <variable>.RefPicType, <variable>.RefPicType
	str	r3, [r4, #0]	@ tmp177,* <variable>.RefPicType
	ldr	r3, [r0, #60]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	ip, [r2, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	r5, [r3, #0]	@ tmp180,* <variable>.RefPicType
	bfi	r5, ip, #0, #2	@ tmp180, <variable>.FwdRefIsFldSave,,
	str	r5, [r3, #0]	@ tmp180,* <variable>.RefPicType
	ldr	r5, [r0, #60]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r2, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	ldr	ip, [r5, #0]	@ tmp183,* <variable>.RefPicType
	bfi	ip, r4, #2, #2	@ tmp183, <variable>.BwdRefIsFldSave,,
	str	ip, [r5, #0]	@ tmp183,* <variable>.RefPicType
	ldr	r5, [r0, #16]	@ <variable>.avm_addr, <variable>.avm_addr
	ldr	r3, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp186, <variable>.MsgSlotAddr,
	str	ip, [r5, #0]	@ tmp186, <variable>.av_msg_addr
	ldr	r5, [r0, #20]	@ <variable>.vam_addr, <variable>.vam_addr
	ldr	r4, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r3, r4, #15	@ tmp189, <variable>.MsgSlotAddr,
	str	r3, [r5, #0]	@ tmp189, <variable>.va_msg_addr
	ldr	r3, [r0, #28]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	ldr	ip, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r4, ip, #255	@ tmp192, <variable>.CurPicPhyAddr,
	str	r4, [r3, #0]	@ tmp192, <variable>.ystaddr_1d
	ldrb	r5, [r2, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r3, [r2, #148]	@ temp.540, <variable>.PicHeightInMb
	sub	ip, r5, #1	@ tmp195, <variable>.PictureStructure,
	ldr	r4, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r5, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	ip, ip	@ tmp196, tmp195
	cmp	ip, #1	@ tmp196,
	str	r5, [r4, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	ip, #2	@ iftmp.453,
	movhi	ip, #1	@ iftmp.453,
	mul	ip, r3, ip	@ tmp200, temp.540, iftmp.453
	ldrh	r4, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r3, [r0, #36]	@ <variable>.uvoffset_1d, <variable>.uvoffset_1d
	mul	ip, r4, ip	@ tmp202, <variable>.PicWidthInMb, tmp200
	mov	ip, ip, asl #8	@ tmp203, tmp202,
	str	ip, [r3, #0]	@ tmp203, <variable>.uvoffset_1d
	ldr	r1, [r1, #1120]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r3, [r0, #56]	@ <variable>.DnrMbInfoStAddr, <variable>.DnrMbInfoStAddr
	str	r1, [r3, #0]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	ldr	ip, [r2, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r3, [r0, #24]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	cmp	ip, #0	@ <variable>.StreamLength,
	ldreq	r1, [r2, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldrne	r1, [r2, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldreq	r2, [r2, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldrne	r2, [r2, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	r0, r2, r1, lsr #3	@, tmp216, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r2, r0, #15	@ tmp218, tmp216,
	mov	r0, #0	@,
	str	r2, [r3, #0]	@ tmp218, <variable>.stream_base_addr
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	MP2HAL_V200R004_MakeReg, .-MP2HAL_V200R004_MakeReg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r2, #0	@ VdhId
	add	ip, sp, #24	@ vdm_reg_phy_addr.455,,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	mov	r0, #0	@ tmp221,
	str	r0, [ip, #-8]!	@ tmp221, vdm_reg_phy_addr
	str	r0, [sp, #20]	@ tmp221, D32
	movweq	r0, #:lower16:269680640	@ tmp223,
	movteq	r0, #:upper16:269680640	@ tmp223,
	streq	r0, [sp, #16]	@ tmp223,
	bne	.L48	@,
.L11:
	ldr	ip, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [sp, #16]	@ vdm_reg_phy_addr.457, vdm_reg_phy_addr
	cmp	ip, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L49	@,
.L13:
	movw	r7, #1144	@ tmp230,
	movw	ip, #:lower16:g_HwMem	@ tmp425,
	mul	r0, r7, r2	@ tmp229, tmp230, VdhId
	movt	ip, #:upper16:g_HwMem	@ tmp425,
	mvn	lr, #0	@ tmp233,
	mov	r7, #0	@ tmp234,
	mov	r5, r7	@ tmp239, tmp234
	mov	r6, #3	@ tmp256,
	mov	r8, r6	@ tmp259, tmp256
	ldr	fp, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [fp, #32]	@ tmp233,
	ldrh	r9, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	fp, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	sl, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mul	r9, fp, r9	@ tmp237, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	r9, r9, lr	@ tmp238, tmp237,
	bfi	r5, r9, #0, #20	@ tmp239, tmp238,,
	orr	r9, r5, #1090519040	@ tmp248, tmp239,
	orr	r5, r9, #4194304	@ tmp248, tmp248,
	movw	r9, #45316	@ tmp269,
	bfi	r5, r7, #25, #1	@ tmp248, tmp234,,
	str	r5, [sl, #8]	@ tmp248,
	ldr	r5, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	sl, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r9, [r4, r9]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r5, r5, lsr #6	@ tmp257, <variable>.VahbStride,
	bfi	r8, r5, #4, #10	@ tmp259, tmp257,,
	orr	r5, r8, #16384	@ tmp262, tmp259,
	bic	r5, r5, #32768	@ tmp263, tmp262,
	bfi	r5, r6, #16, #12	@ tmp263, tmp256,,
	orr	r6, r5, #536870912	@ tmp267, tmp263,
	bic	r5, r6, #-1879048192	@ tmp271, tmp267,
	bfi	r5, r9, #30, #1	@ tmp271, <variable>.Compress_en,,
	str	r5, [sl, #12]	@ tmp271,
	ldr	r5, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r6, r6, #15	@ tmp280, <variable>.MsgSlotAddr,
	str	r6, [r5, #16]	@ tmp280,
	ldr	r6, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r1, r1, #15	@ tmp289, <variable>.MsgSlotAddr,
	str	r1, [r6, #20]	@ tmp289,
	movw	r1, #45308	@ tmp296,
	ldr	r6, [r4, r1]	@ D.31021, <variable>.SlcNum
	str	r7, [sp, #20]	@ tmp234, D32
	cmp	r6, r7	@ D.31021,
	beq	.L15	@,
	ldr	r1, [r4, #252]	@ D.31014, <variable>.BsPhyAddr
	add	r0, r6, lr	@ tmp426, D.31021,
	and	r5, r0, #1	@ tmp428, tmp426,
	cmp	r1, r7	@ D.31014,
	beq	.L26	@,
	ldr	r0, [r4, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r0, #0	@ <variable>.BsLenInBit,
	ble	.L26	@,
	bic	r1, r1, #15	@ tmp438, D.31014,
	cmp	lr, r1	@ stream_base_addr, tmp438
	movcs	lr, r1	@ stream_base_addr, tmp438
.L26:
	ldr	r1, [r4, #256]	@ temp.598, <variable>.BsPhyAddr
	cmp	r1, #0	@ temp.598,
	bne	.L50	@,
.L28:
	mov	r0, #1	@ i,
	cmp	r0, r6	@ i, D.31021
	add	r1, r4, #44	@ ivtmp.582, pMp2DecParam,
	beq	.L25	@,
	cmp	r5, #0	@ tmp428,
	beq	.L16	@,
	ldr	r5, [r1, #252]	@ D.31014, <variable>.BsPhyAddr
	cmp	r5, #0	@ D.31014,
	bne	.L39	@,
.L33:
	ldr	r5, [r1, #256]	@ temp.598, <variable>.BsPhyAddr
	cmp	r5, #0	@ temp.598,
	beq	.L35	@,
.L51:
	ldr	r7, [r1, #264]	@ tmp451, <variable>.BsLenInBit
	cmp	r7, #0	@ tmp451,
	ble	.L35	@,
	bic	r5, r5, #15	@ tmp452, temp.598,
	cmp	lr, r5	@ stream_base_addr, tmp452
	movcs	lr, r5	@ stream_base_addr, tmp452
.L35:
	add	r0, r0, #1	@ i, tmp430,
	add	r1, r1, #44	@ ivtmp.582, tmp429,
	cmp	r0, r6	@ i, D.31021
	beq	.L25	@,
.L16:
	ldr	r5, [r1, #252]	@ D.31014, <variable>.BsPhyAddr
	cmp	r5, #0	@ D.31014,
	beq	.L19	@,
	ldr	r7, [r1, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r7, #0	@ <variable>.BsLenInBit,
	ble	.L19	@,
	bic	r5, r5, #15	@ tmp300, D.31014,
	cmp	lr, r5	@ stream_base_addr, tmp300
	movcs	lr, r5	@ stream_base_addr, tmp300
.L19:
	ldr	r5, [r1, #256]	@ temp.598, <variable>.BsPhyAddr
	cmp	r5, #0	@ temp.598,
	beq	.L17	@,
	ldr	r7, [r1, #264]	@ tmp297, <variable>.BsLenInBit
	cmp	r7, #0	@ tmp297,
	ble	.L17	@,
	bic	r5, r5, #15	@ tmp298, temp.598,
	cmp	lr, r5	@ stream_base_addr, tmp298
	movcs	lr, r5	@ stream_base_addr, tmp298
.L17:
	add	r1, r1, #44	@ tmp429, ivtmp.582,
	add	r0, r0, #1	@ tmp430, i,
	ldr	r5, [r1, #252]	@ D.31014, <variable>.BsPhyAddr
	cmp	r5, #0	@ D.31014,
	beq	.L33	@,
.L39:
	ldr	r7, [r1, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r7, #0	@ <variable>.BsLenInBit,
	ble	.L33	@,
	bic	r5, r5, #15	@ tmp449, D.31014,
	cmp	lr, r5	@ stream_base_addr, tmp449
	movcs	lr, r5	@ stream_base_addr, tmp449
	ldr	r5, [r1, #256]	@ temp.598, <variable>.BsPhyAddr
	cmp	r5, #0	@ temp.598,
	beq	.L35	@,
	b	.L51	@
.L48:
	cmp	r2, #1	@ VdhId,
	beq	.L52	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30967,
.L12:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L52:
	movw	r0, #:lower16:269680640	@ tmp224,
	movt	r0, #:upper16:269680640	@ tmp224,
	str	r0, [ip, #0]	@ tmp224,* vdm_reg_phy_addr.455
	b	.L11	@
.L25:
	cmn	lr, #1	@ stream_base_addr,
	beq	.L15	@,
	movw	r0, #1144	@ tmp306,
	str	lr, [r3, #0]	@ stream_base_addr,* StreamBaseAddr
	mul	r6, r0, r2	@ tmp305, tmp306, VdhId
	movw	r1, #:lower16:3148803	@ tmp309,
	movt	r1, #:upper16:3148803	@ tmp309,
	movw	r0, #:lower16:-1431655765	@ tmp375,
	movt	r0, #:upper16:-1431655765	@ tmp375,
	ldr	r5, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r5, #24]	@ stream_base_addr,
	ldr	r5, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [sp, #20]	@ tmp309, D32
	str	r1, [r5, #60]	@ tmp309,
	ldr	lr, [sp, #20]	@ D32.608, D32
	ldr	r1, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r1, #64]	@ D32.608,
	ldr	r5, [sp, #20]	@ D32.611, D32
	ldr	r1, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r1, #68]	@ D32.611,
	ldr	lr, [sp, #20]	@ D32.614, D32
	ldr	r5, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r5, #72]	@ D32.614,
	ldr	r1, [sp, #20]	@ D32.617, D32
	ldr	r5, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r5, #76]	@ D32.617,
	ldr	lr, [sp, #20]	@ D32.620, D32
	ldr	r1, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r1, #80]	@ D32.620,
	ldr	r5, [sp, #20]	@ D32.623, D32
	ldr	r1, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r1, #84]	@ D32.623,
	ldr	r1, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	lr, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r5, lr, #15	@ tmp349, <variable>.CurPicPhyAddr,
	str	r5, [r1, #96]	@ tmp349,
	ldr	lr, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r5, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r5, #100]	@ <variable>.VahbStride,
	ldr	r3, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r4, #232]	@ <variable>.uv_offset, <variable>.uv_offset
	str	r6, [r3, #104]	@ <variable>.uv_offset,
	ldrb	r5, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	umull	lr, r1, r0, r5	@, tmp374, tmp375, <variable>.PictureStructure
	mov	lr, r1, lsr #1	@ tmp372, tmp374,
	movw	r1, #1144	@ tmp394,
	mul	r2, r1, r2	@ tmp393, tmp394, VdhId
	add	r6, lr, lr, asl #1	@, tmp378, tmp372, tmp372,
	rsb	r3, r6, r5	@ tmp379, tmp378, <variable>.PictureStructure
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	uxtb	r5, r3	@ tmp380, tmp379
	cmp	r5, #2	@ tmp380,
	ldreqh	r6, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r0, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldreq	r5, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	ldrne	r5, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	muleq	r6, r0, r6	@ tmp386, <variable>.PicHeightInMb, <variable>.PicWidthInMb
	addeq	r5, r5, #127	@ tmp382, <variable>.DnrMbinfoStaddr,
	mov	r0, #3	@,
	addeq	r5, r5, r6, asl #3	@, tmp388, tmp382, tmp386,
	biceq	r5, r5, #127	@ tmp389, tmp388,
	str	r5, [sp, #20]	@ <variable>.DnrMbinfoStaddr, <variable>.dnr_mbinfo_staddr
	ldr	lr, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r5, #0	@ tmp397,
	ldr	r6, [sp, #20]	@ D32.643, D32
	mov	r3, r5	@ tmp409, tmp397
	bfi	r3, r5, #0, #1	@ tmp409, tmp397,,
	str	r6, [lr, #144]	@ D32.643,
	ldr	lr, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	r6, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r4, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	lr, lr, r0	@ tmp401, <variable>.FwdRefIsFldSave,
	bfi	lr, r4, #2, #2	@ tmp401, <variable>.BwdRefIsFldSave,,
	str	lr, [r6, #148]	@ tmp401,
	ldr	lr, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [lr, #152]	@ tmp409,
	ldr	lr, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [sp, #20]	@ tmp397, D32
	str	r5, [lr, #108]	@ tmp397,
	ldr	r2, [sp, #20]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.30967, tmp397
	b	.L12	@
.L50:
	ldr	r0, [r4, #264]	@ tmp440, <variable>.BsLenInBit
	cmp	r0, #0	@ tmp440,
	ble	.L28	@,
	bic	r1, r1, #15	@ tmp441, temp.598,
	cmp	lr, r1	@ stream_base_addr, tmp441
	movcs	lr, r1	@ stream_base_addr, tmp441
	b	.L28	@
.L49:
	str	r1, [sp, #12]	@,
	str	r2, [sp, #8]	@,
	str	r3, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #12]	@,
	ldr	r2, [sp, #8]	@,
	ldr	r3, [sp, #4]	@,
	subs	ip, r0, #0	@ D.31417,
	strne	ip, [r1, #0]	@ D.31417, <variable>.pVdmRegVirAddr
	bne	.L13	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30967,
	b	.L12	@
.L15:
	mvn	r2, #0	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	str	r3, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #4]	@,
	mov	r2, #0	@ tmp302,
	mvn	r0, #0	@ D.30967,
	str	r2, [r3, #0]	@ tmp302,* StreamBaseAddr
	b	.L12	@
	.fnend
	.size	MP2HAL_V200R004_CfgReg, .-MP2HAL_V200R004_CfgReg
	.align	2
	.global	MP2Hal_V200R004_OnlineDnr
	.type	MP2Hal_V200R004_OnlineDnr, %function
MP2Hal_V200R004_OnlineDnr:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r1, [r0, #152]	@ D.30810, <variable>.PicWidthInMb
	.pad #88
	sub	sp, sp, #88	@,,
	cmp	r2, #3	@ <variable>.PictureStructure,
	mov	r3, #0	@ tmp138,
	mov	ip, #3	@ tmp144,
	strb	r3, [sp, #6]	@ tmp138, DnrCfg.dr_en
	str	ip, [sp, #20]	@ tmp144, DnrCfg.video_standard
	strb	r3, [sp, #4]	@ tmp138, DnrCfg.dc_en
	strb	r3, [sp, #5]	@ tmp138, DnrCfg.db_en
	strb	r2, [sp, #7]	@ <variable>.PictureStructure, DnrCfg.pic_structure
	str	r1, [sp, #28]	@ D.30810, DnrCfg.pic_width_in_mb
	beq	.L60	@,
	ldrh	lr, [r0, #150]	@ <variable>.FrameHeightInMb, <variable>.FrameHeightInMb
	sub	ip, r2, #1	@ tmp147, <variable>.PictureStructure,
	add	r4, lr, #1	@ tmp150, <variable>.FrameHeightInMb,
	uxtb	r3, ip	@ tmp148, tmp147
	cmp	r3, #1	@ tmp148,
	mov	r2, r4, asr #1	@ tmp151, tmp150,
	movhi	r2, r2, asl #1	@ tmp155, tmp154,
	sub	r3, r2, #1	@ prephitmp.667, tmp155,
	str	r3, [sp, #32]	@ prephitmp.667, DnrCfg.pic_height_in_mb
.L55:
	mul	r4, r1, r3	@ tmp156, D.30810, prephitmp.667
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp172,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp172,
	mov	r2, #45312	@ tmp161,
	ldr	lr, [r0, r2]	@ <variable>.DnrMbInfoStAddr, <variable>.DnrMbInfoStAddr
	mov	r2, #8	@ tmp169,
	ldr	r3, [r3, #8]	@ D.30841, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	ldr	ip, [r0, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r1, [r0, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	cmp	r3, #0	@ D.30841,
	ldr	r0, [r0, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r1, #15	@ tmp158, <variable>.CurPicPhyAddr,
	str	lr, [sp, #76]	@ <variable>.DnrMbInfoStAddr, DnrCfg.dnr_info_addr
	bic	r0, r0, #15	@ tmp160, <variable>.DispFramePhyAddr,
	str	r1, [sp, #36]	@ tmp158, DnrCfg.dnr_ystaddr_1d
	mov	lr, ip, lsr #6	@ tmp164, <variable>.VahbStride,
	str	r0, [sp, #40]	@ tmp160, DnrCfg.dnr_ystaddr_2d
	mov	r1, #1	@ tmp167,
	mov	r0, #0	@ tmp165,
	str	r4, [sp, #24]	@ tmp156, DnrCfg.mbtodec
	str	lr, [sp, #64]	@ tmp164, DnrCfg.ddr_stride
	strb	r0, [sp, #14]	@ tmp165, DnrCfg.use_pic_qp_en
	strb	r1, [sp, #8]	@ tmp167, DnrCfg.chroma_format_idc
	str	r2, [sp, #56]	@ tmp169, DnrCfg.QP_U
	str	r2, [sp, #52]	@ tmp169, DnrCfg.QP_Y
	str	r2, [sp, #60]	@ tmp169, DnrCfg.QP_V
	beq	.L57	@,
	add	r0, sp, #4	@,,
	blx	r3	@ D.30841
.L59:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, pc}
.L60:
	ldrh	r3, [r0, #150]	@ prephitmp.667, <variable>.FrameHeightInMb
	str	r3, [sp, #32]	@ prephitmp.667, DnrCfg.pic_height_in_mb
	b	.L55	@
.L57:
	mov	r0, r3	@, D.30841
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #315	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	b	.L59	@
	.fnend
	.size	MP2Hal_V200R004_OnlineDnr, .-MP2Hal_V200R004_OnlineDnr
	.align	2
	.global	MP2HAL_V200R004_WriteSliceMsg
	.type	MP2HAL_V200R004_WriteSliceMsg, %function
MP2HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r0, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r5, #0	@ tmp201,
	mov	fp, r1	@ SlcDnMsgVirAddr, SlcDnMsgVirAddr
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	str	r3, [sp, #16]	@ StreamBaseAddr, %sfp
	movw	r3, #45308	@ tmp202,
	str	r2, [sp, #28]	@ SlcDnMsgPhyAddr, %sfp
	ldr	r7, [r4, r3]	@ SliceNum, <variable>.SlcNum
	str	r5, [sp, #36]	@ tmp201, D32
	streq	r0, [sp, #20]	@ <variable>.slice_start_mbn, %sfp
	bne	.L84	@,
.L63:
	cmp	r7, #0	@ SliceNum,
	ble	.L66	@,
	ldr	r8, [r4, #284]	@ prephitmp.716, <variable>.slice_start_mbn
	mov	r5, #0	@ i,
	ldr	sl, [sp, #20]	@, %sfp
	add	r6, sp, #36	@ tmp427,,
	ldr	r3, [r4, #240]	@ prephitmp.764, <variable>.slice_start_mbn
	mov	r9, sl, asl #2	@,,
	mov	sl, r8	@ prephitmp.716, prephitmp.716
	str	r9, [sp, #24]	@, %sfp
	mov	r9, #44	@ tmp426,
	b	.L75	@
.L67:
	add	r5, r5, #1	@ i, i,
	cmp	r7, r5	@ SliceNum, i
	ble	.L66	@,
.L85:
	sub	sl, r5, #1	@ tmp418, i,
	mla	r0, r9, r5, r4	@ tmp416, tmp426, i, pMp2DecParam
	mla	r1, r9, sl, r4	@ tmp422, tmp426, tmp418, pMp2DecParam
	ldr	sl, [r0, #284]	@ prephitmp.716, <variable>.slice_start_mbn
	ldr	r3, [r1, #284]	@ prephitmp.764, <variable>.slice_start_mbn
.L75:
	cmp	r5, #0	@ i,
	movle	r2, #0	@,
	movgt	r2, #1	@,
	cmp	sl, r3	@ prephitmp.716, prephitmp.764
	movhi	r2, #0	@,,
	cmp	r2, #0	@ tmp266,
	mov	sl, r2	@ tmp266,
	bne	.L67	@,
	mla	r8, r9, r5, r4	@ tmp271, tmp426, i, pMp2DecParam
	ldr	r1, [sp, #24]	@, %sfp
	str	r2, [sp, #36]	@ tmp266, D32
	mov	r0, #4	@,
	add	r3, r5, r1	@, i,
	ldr	r2, [r6, #0]	@ tmp286,
	str	r3, [sp, #4]	@, %sfp
	movw	r1, #:lower16:.LC5	@,
	mov	ip, r3, asl #5	@,,
	str	ip, [sp, #8]	@, %sfp
	ldr	ip, [r8, #252]	@ temp.759, <variable>.BsPhyAddr
	movt	r1, #:upper16:.LC5	@,
	ldr	lr, [r8, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	and	r3, ip, #15	@ tmp273, temp.759,
	bfi	r2, lr, #0, #24	@ tmp286, <variable>.BsLenInBit,,
	ldr	lr, [r8, #268]	@, <variable>.BsBitOffset
	add	r3, lr, r3, asl #3	@, bit_offset_0.768,, tmp273,
	bfi	r2, r3, #24, #7	@ tmp288, bit_offset_0.768,,
	str	r2, [r6, #0]	@ tmp288,
	ldr	r3, [sp, #4]	@, %sfp
	str	r2, [fp, r3, asl #5]	@ D32.773,* SlcDnMsgVirAddr
	str	ip, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #0]	@,
	ldr	r0, [sp, #4]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	bic	r3, ip, #15	@ tmp293, temp.759,
	rsb	r2, lr, r3	@ tmp294,, tmp293
	mov	r1, r0, asl #3	@ tmp296,,
	add	ip, r1, #1	@ tmp297, tmp296,
	mov	lr, sl	@ tmp295, tmp266
	bfi	lr, r2, #0, #24	@ tmp295, tmp294,,
	mov	r0, #4	@,
	str	lr, [fp, ip, asl #2]	@ D32.781,* SlcDnMsgVirAddr
	movw	r1, #:lower16:.LC6	@,
	mov	r2, lr	@ D32.781, tmp295
	movt	r1, #:upper16:.LC6	@,
	str	lr, [r6, #0]	@ tmp295,
	bl	dprint_vfmw	@
	str	sl, [sp, #36]	@ tmp266, D32
	ldr	r3, [r8, #256]	@, <variable>.BsPhyAddr
	ldr	r2, [sp, #4]	@, %sfp
	str	r3, [sp, #12]	@, %sfp
	ldr	r0, [sp, #12]	@, %sfp
	mov	lr, r2, asl #2	@ tmp323,,
	ldr	r1, [r8, #264]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	add	lr, lr, #1	@ tmp324, tmp323,
	and	ip, r0, #15	@ tmp307,,
	ldr	r3, [r8, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	ldr	r2, [r6, #0]	@ tmp320,
	mov	r0, #4	@,
	add	r3, r3, ip, asl #3	@, bit_offset_1.792, <variable>.BsBitOffset, tmp307,
	bfi	r2, r1, #0, #24	@ tmp320, <variable>.BsLenInBit,,
	movw	r1, #:lower16:.LC7	@,
	bfi	r2, r3, #24, #7	@ tmp322, bit_offset_1.792,,
	movt	r1, #:upper16:.LC7	@,
	str	r2, [r6, #0]	@ tmp322,
	str	r2, [fp, lr, asl #3]	@ D32.797,* SlcDnMsgVirAddr
	bl	dprint_vfmw	@
	str	sl, [sp, #36]	@ tmp266, D32
	ldr	sl, [r8, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	ldrne	lr, [sp, #12]	@, %sfp
	ldrne	sl, [r6, #0]	@ tmp338,
	ldrne	r0, [sp, #16]	@, %sfp
	ldreq	r2, [r6, #0]	@ tmp340,
	bicne	r2, lr, #15	@ tmp336,,
	bfieq	r2, sl, #0, #24	@ tmp340, <variable>.BsPhyAddr,,
	rsbne	r2, r0, r2	@ tmp337,, tmp336
	streq	r2, [r6, #0]	@ tmp340,
	bfine	sl, r2, #0, #24	@ tmp338, tmp337,,
	strne	sl, [r6, #0]	@ tmp338,
	ldr	r8, [sp, #8]	@, %sfp
	mov	r0, #4	@,
	ldr	r2, [sp, #36]	@ D32.807, D32
	add	lr, r8, #12	@ tmp341,,
	mul	sl, r9, r5	@ tmp346, tmp426, i
	str	r2, [fp, lr]	@ D32.807,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #4]	@, %sfp
	mov	r1, #0	@,
	str	r1, [sp, #36]	@, D32
	add	r8, sl, r4	@ tmp348, tmp346, pMp2DecParam
	mov	r0, #4	@,
	mov	r3, r2, asl #1	@ tmp359,,
	ldr	r2, [r6, #0]	@ tmp351,
	ldr	ip, [r8, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	add	lr, r3, #1	@ tmp360, tmp359,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bfi	r2, ip, #0, #6	@ tmp351, <variable>.quantiser_scale_code,,
	str	r2, [r6, #0]	@ tmp351,
	ldr	ip, [r8, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	add	r5, r5, #1	@ j, i,
	bfi	r2, ip, #6, #1	@ tmp358, <variable>.intra_slice,,
	str	r2, [r6, #0]	@ tmp358,
	str	r2, [fp, lr, asl #4]	@ D32.818,* SlcDnMsgVirAddr
	bl	dprint_vfmw	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	ip, #0	@,
	str	ip, [sp, #36]	@, D32
	add	r3, r0, #20	@ tmp373,,
	ldr	r1, [r8, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r2, ip	@ tmp371,
	mov	r0, #4	@,
	bfi	r2, r1, #0, #20	@ tmp371, <variable>.slice_start_mbn,,
	movw	r1, #:lower16:.LC10	@,
	str	r2, [r6, #0]	@ tmp371,
	movt	r1, #:upper16:.LC10	@,
	str	r2, [fp, r3]	@ D32.823,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, j
	ble	.L70	@,
	mla	lr, r9, r5, r4	@ tmp384, tmp426, j, pMp2DecParam
	ldr	r2, [r8, #284]	@ temp.836, <variable>.slice_start_mbn
	ldr	r3, [lr, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, r2	@ <variable>.slice_start_mbn, temp.836
	bhi	.L70	@,
	mvn	r3, r5	@ tmp436, j
	add	ip, r3, r7	@ tmp435, tmp436, SliceNum
	add	sl, sl, #248	@ tmp389, tmp346,
	tst	ip, #1	@ tmp435,
	add	sl, r4, sl	@ tmp390, pMp2DecParam, tmp389
	add	r3, sl, #4	@ ivtmp.734, tmp390,
	beq	.L71	@,
	ldr	r1, [r3, #120]	@ D.30780, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	add	r3, sl, #48	@ ivtmp.734, tmp390,
	cmp	r1, r2	@ D.30780, temp.836
	bls	.L71	@,
	b	.L70	@
.L72:
	ldr	r0, [r3, #120]	@ D.30780, <variable>.slice_start_mbn
	add	r3, r3, #88	@ ivtmp.734, ivtmp.734,
	cmp	r0, r2	@ D.30780, temp.836
	bhi	.L70	@,
	ldr	r1, [r1, #120]	@ D.30780, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	cmp	r1, r2	@ D.30780, temp.836
	bhi	.L70	@,
.L71:
	add	r5, r5, #1	@ j, j,
	add	r1, r3, #44	@ tmp438, ivtmp.734,
	cmp	r7, r5	@ SliceNum, j
	bgt	.L72	@,
.L70:
	cmp	r5, r7	@ j, SliceNum
	mov	lr, #0	@ tmp404,
	mlane	r3, r9, r5, r4	@ tmp397, tmp426, j, pMp2DecParam
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r3, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r8, #0	@ prephitmp.714,
	ldrne	r0, [sp, #20]	@, %sfp
	ldrne	r1, [sp, #28]	@, %sfp
	muleq	r2, r2, r3	@ tmp393, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r2, [r3, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	addne	r8, r5, r0	@ tmp400, j,
	mov	r0, #4	@,
	sub	r5, r5, #1	@ i, j,
	sub	r3, r2, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	ldr	r2, [sp, #8]	@, %sfp
	bfi	lr, r3, #0, #20	@ tmp404, slice_end_mbn,,
	addne	r8, r1, r8, asl #5	@, prephitmp.714,, tmp400,
	add	ip, r2, #24	@ tmp405,,
	movw	r1, #:lower16:.LC11	@,
	mov	r2, lr	@ D32.832, tmp404
	movt	r1, #:upper16:.LC11	@,
	str	lr, [fp, ip]	@ D32.832,
	add	r5, r5, #1	@ i, i,
	str	lr, [r6, #0]	@ tmp404,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	r2, r8	@ D32.838, prephitmp.714
	add	r1, r0, #28	@ tmp410,,
	mov	r0, #4	@,
	str	r8, [fp, r1]	@ D32.838,
	movw	r1, #:lower16:.LC12	@,
	str	r8, [r6, #0]	@ prephitmp.714, <variable>.next_slice_para_addr
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, i
	bgt	.L85	@,
.L66:
	mov	r0, #0	@,
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L84:
	ldr	r6, [r4, #252]	@ D.30640, <variable>.BsPhyAddr
	mov	r2, #1	@ tmp210,
	ldr	r3, [r4, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r0, #4	@,
	and	ip, r6, #15	@ tmp205, D.30640,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	lr, r3, ip, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp205,
	bfi	r2, lr, #24, #7	@ tmp210, bit_offset_0,,
	str	r2, [fp, #0]	@ tmp210,* SlcDnMsgVirAddr
	str	r2, [sp, #36]	@ tmp210,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #16]	@, %sfp
	bic	r1, r6, #15	@ tmp215, D.30640,
	mov	r6, r5	@ tmp217, tmp201
	rsb	r2, r0, r1	@ tmp216,, tmp215
	mov	r0, #4	@,
	bfi	r6, r2, #0, #24	@ tmp217, tmp216,,
	movw	r1, #:lower16:.LC6	@,
	str	r6, [fp, #4]	@ tmp217,
	movt	r1, #:upper16:.LC6	@,
	mov	r2, r6	@, tmp217
	str	r6, [sp, #36]	@ tmp217,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #256]	@ D.30668, <variable>.BsPhyAddr
	ldr	r3, [r4, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r2, #0	@ tmp225,
	and	ip, r6, #15	@ tmp221, D.30668,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	add	r3, r3, ip, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp221,
	bfi	r2, r3, #24, #7	@ tmp225, bit_offset_1,,
	str	r2, [fp, #8]	@ tmp225,
	str	r2, [sp, #36]	@ tmp225,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r3, #1	@,
	str	r3, [sp, #20]	@, %sfp
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	bicne	r0, r6, #15	@ tmp231, D.30668,
	streq	r0, [sp, #36]	@ <variable>.BsPhyAddr,
	ldrne	r1, [sp, #16]	@, %sfp
	rsbne	r0, r1, r0	@ tmp232,, tmp231
	movw	r1, #:lower16:.LC8	@,
	bfine	r5, r0, #0, #24	@ tmp233, tmp232,,
	strne	r5, [sp, #36]	@ tmp233,
	ldr	ip, [sp, #36]	@ D32.745, D32
	movt	r1, #:upper16:.LC8	@,
	mov	r0, #4	@,
	mov	r5, #0	@ tmp238,
	mov	r2, ip	@, D32.745
	str	ip, [fp, #12]	@ D32.745,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r4, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	mov	r0, #4	@,
	and	r3, r1, #63	@ tmp242, <variable>.quantiser_scale_code,
	movw	r1, #:lower16:.LC9	@,
	bfi	r3, r2, #6, #1	@ tmp242, <variable>.intra_slice,,
	movt	r1, #:upper16:.LC9	@,
	str	r3, [fp, #16]	@ tmp242,
	mov	r2, r3	@, tmp242
	str	r3, [sp, #36]	@ tmp242,
	bl	dprint_vfmw	@
	mov	ip, r5	@ tmp247, tmp238
	bfi	ip, r5, #0, #20	@ tmp247, tmp238,,
	mov	r0, #4	@,
	str	ip, [fp, #20]	@ tmp247,
	movw	r1, #:lower16:.LC10	@,
	mov	r2, ip	@, tmp247
	movt	r1, #:upper16:.LC10	@,
	str	ip, [sp, #36]	@ tmp247,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r2, r5	@ tmp254, tmp238
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC11	@,
	sub	ip, r3, #1	@ tmp252, <variable>.slice_start_mbn,
	movt	r1, #:upper16:.LC11	@,
	bfi	r2, ip, #0, #20	@ tmp254, tmp252,,
	str	r2, [fp, #24]	@ tmp254,
	str	r2, [sp, #36]	@ tmp254,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #28]	@, %sfp
	add	r1, r2, #32	@ tmp259,,
	str	r1, [fp, #28]	@ tmp259,
	str	r1, [sp, #36]	@ tmp259, <variable>.next_slice_para_addr
	b	.L63	@
	.fnend
	.size	MP2HAL_V200R004_WriteSliceMsg, .-MP2HAL_V200R004_WriteSliceMsg
	.align	2
	.global	MP2HAL_V200R004_CfgDnMsg
	.type	MP2HAL_V200R004_CfgDnMsg, %function
MP2HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r5, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r7, r1	@ pHwMem, pHwMem
	mov	r9, r3	@ StreamBaseAddr, StreamBaseAddr
	mov	sl, #0	@ tmp243,
	str	sl, [sp, #28]	@ tmp243, D32
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ D.31120,
	beq	.L102	@,
	ldrh	r3, [r5, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L103	@,
	ldrh	r2, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L104	@,
	sub	lr, r3, #1	@ tmp258, <variable>.PicWidthInMb,
	ldr	r8, [r5, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	sub	r2, r2, #1	@ tmp262, <variable>.PicHeightInMb,
	mov	ip, lr, asl #23	@ tmp263, tmp258,
	mov	r6, ip, lsr #23	@ tmp263, tmp263,
	bfi	r6, r2, #16, #9	@ tmp263, tmp262,,
	bfi	r6, r8, #25, #1	@ tmp265, <variable>.Mpeg1Flag,,
	str	r6, [r4, #0]	@ tmp265,* D.31120
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrb	r0, [r5, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	and	r6, r3, #1	@ tmp271, <variable>.FramePredFrameDct,
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	bfi	r6, r1, #8, #2	@ tmp271, <variable>.PictureStructure,,
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r6, r0, #10, #1	@ tmp275, <variable>.SecondFieldFlag,,
	ldrb	r8, [r5, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	bfi	r6, lr, #16, #1	@ tmp279, <variable>.ConcealmentMotionVectors,,
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	bfi	r6, ip, #24, #3	@ tmp283, <variable>.PicCodingType,,
	bfi	r6, r8, #27, #1	@ tmp287, <variable>.Mp1FwdmvFullPel,,
	bfi	r6, r2, #28, #1	@ tmp291, <variable>.Mp1BwdmvFullPel,,
	str	r6, [r4, #4]	@ tmp291,
	ldrb	r3, [r5, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r0, [r5, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	and	r8, r3, #15	@ tmp300, <variable>.Fcode,
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	bfi	r8, r1, #8, #4	@ tmp300, <variable>.Fcode,,
	ldrb	ip, [r5, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r8, r0, #16, #4	@ tmp304, <variable>.Fcode,,
	bfi	r8, lr, #24, #4	@ tmp308, <variable>.Fcode,,
	bfi	r8, ip, #31, #1	@ tmp312, <variable>.TopFieldFirst,,
	str	r8, [r4, #8]	@ tmp312,
	ldrb	r6, [r5, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	and	r3, r6, #3	@ tmp321, <variable>.IntraDcPrecision,
	ldrb	r0, [r5, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	bfi	r3, r2, #8, #1	@ tmp321, <variable>.QuantType,,
	bfi	r3, r1, #16, #1	@ tmp325, <variable>.IntraVlcFormat,,
	bfi	r3, r0, #24, #1	@ tmp329, <variable>.AlternateScan,,
	str	r3, [r4, #12]	@ tmp329,
	ldr	lr, [r5, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	ip, lr, #15	@ tmp336, <variable>.BwdRefPhyAddr,
	str	ip, [r4, #16]	@ tmp336,
	ldr	r8, [r5, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	r6, r8, #15	@ tmp340, <variable>.FwdRefPhyAddr,
	str	r6, [r4, #20]	@ tmp340,
	ldr	r2, [r5, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r2, #15	@ tmp344, <variable>.DispFramePhyAddr,
	str	r1, [r4, #24]	@ tmp344,
	ldr	r0, [r5, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r3, r0, #15	@ tmp348, <variable>.PmvColmbPhyAddr,
	str	r3, [sp, #28]	@ tmp348, <variable>.current_pmv_addr
	str	r3, [r4, #28]	@ tmp348,
	ldr	r0, [r5, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	r6, r0	@ D.31199,
	ldr	r0, [r5, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r8, r0	@ D.31203,
	beq	.L105	@,
	ldr	ip, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, sl	@ tmp419, tmp243
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r6, #0	@ D.31199,
	ldr	r0, [r5, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	sl, r0, ip, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r2, lr, r1, lsr #3	@, BytePos0.962, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	ip, sl, #15	@ tmp417, BytePos1,
	bic	r0, r2, #15	@ tmp416, BytePos0.962,
	and	lr, r2, #15	@ tmp424, BytePos0.962,
	rsb	r1, ip, r0	@ tmp418, tmp417, tmp416
	bfi	r3, r1, #0, #24	@ tmp419, tmp418,,
	str	r3, [r4, #32]	@ tmp419,
	ldr	r0, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	and	r3, r0, #7	@ tmp429, <variable>.StreamBitOffset,
	add	r2, r3, lr, asl #3	@, tmp432, tmp429, tmp424,
	bic	lr, ip, #-16777216	@ tmp433, <variable>.StreamLength,
	bfi	lr, r2, #24, #7	@ tmp433, tmp432,,
	str	lr, [sp, #28]	@ tmp433,
	str	lr, [r4, #36]	@ tmp433,
	beq	.L94	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	add	ip, r6, r3, lsr #3	@, rp, D.31199, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp437,* D.31199
	ldrb	lr, [ip, #2]	@ zero_extendqisi2	@ tmp439,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp438,
	str	lr, [sp, #0]	@ tmp439,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp440,
	str	lr, [sp, #4]	@ tmp440,
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ tmp441,
	str	lr, [sp, #8]	@ tmp441,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp442,
	str	lr, [sp, #12]	@ tmp442,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp443,
	str	lr, [sp, #16]	@ tmp443,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp444,
	str	lr, [sp, #20]	@ tmp444,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #9	@,
	ldr	r2, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movw	r1, #:lower16:.LC20	@,
	add	ip, r3, #7	@ tmp451, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC20	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp451
	mov	ip, r2, lsr #3	@ tmp445, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp447, tmp445,
	add	r3, r2, r3, asr #3	@, tmp453, tmp447, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.991, D.31199, tmp453
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp455,
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ tmp457,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp456,
	str	r6, [sp, #0]	@ tmp457,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp458,
	str	lr, [sp, #4]	@ tmp458,
	ldrb	r6, [ip, #4]	@ zero_extendqisi2	@ tmp459,
	str	r6, [sp, #8]	@ tmp459,
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ tmp460,
	str	lr, [sp, #12]	@ tmp460,
	ldrb	r6, [ip, #6]	@ zero_extendqisi2	@ tmp461,
	str	r6, [sp, #16]	@ tmp461,
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ tmp462,
	str	lr, [sp, #20]	@ tmp462,
	bl	dprint_vfmw	@
	ldr	r6, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC21	@,
	ldr	r3, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC21	@,
	mov	r0, #22	@,
	add	r2, r6, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L94:
	mov	r1, #0	@ tmp467,
	and	sl, sl, #15	@ tmp475, BytePos1,
	mov	r3, r1	@ tmp469, tmp467
	bfi	r3, r1, #0, #24	@ tmp469, tmp467,,
	str	r3, [r4, #40]	@ tmp469,
	cmp	r8, r1	@ D.31203,
	ldr	lr, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	ip, lr, #24	@ tmp471, <variable>.StreamLength,
	and	r6, r2, #7	@ tmp480, <variable>.StreamBitOffset,
	bic	r1, ip, #-16777216	@ tmp484, tmp471,
	add	r0, r6, sl, asl #3	@, tmp483, tmp480, tmp475,
	bfi	r1, r0, #24, #7	@ tmp484, tmp483,,
	str	r1, [sp, #28]	@ tmp484,
	str	r1, [r4, #44]	@ tmp484,
	beq	.L93	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	r6, r8, r3, lsr #3	@, rp, D.31203, <variable>.StreamBitOffset,
	ldrb	r2, [r8, r3, lsr #3]	@ zero_extendqisi2	@ tmp488,* D.31203
	ldrb	ip, [r6, #2]	@ zero_extendqisi2	@ tmp490,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp489,
	str	ip, [sp, #0]	@ tmp490,
	ldrb	lr, [r6, #3]	@ zero_extendqisi2	@ tmp491,
	str	lr, [sp, #4]	@ tmp491,
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ tmp492,
	str	ip, [sp, #8]	@ tmp492,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp493,
	str	lr, [sp, #12]	@ tmp493,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp494,
	str	ip, [sp, #16]	@ tmp494,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ tmp495,
	str	lr, [sp, #20]	@ tmp495,
	bl	dprint_vfmw	@
	ldr	r6, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC23	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC23	@,
	add	r2, r6, #7	@ tmp502, <variable>.StreamLength,
	cmp	r6, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp496, <variable>.StreamBitOffset,
	movlt	r6, r2	@ <variable>.StreamLength, tmp502
	sub	r2, ip, #8	@ tmp498, tmp496,
	add	r3, r2, r6, asr #3	@, tmp504, tmp498, <variable>.StreamLength,
	add	r6, r8, r3	@ rp.1032, D.31203, tmp504
	ldrb	r2, [r8, r3]	@ zero_extendqisi2	@ tmp506,
	ldrb	lr, [r6, #2]	@ zero_extendqisi2	@ tmp508,
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ tmp507,
	str	lr, [sp, #0]	@ tmp508,
	ldrb	ip, [r6, #3]	@ zero_extendqisi2	@ tmp509,
	str	ip, [sp, #4]	@ tmp509,
	ldrb	r8, [r6, #4]	@ zero_extendqisi2	@ tmp510,
	str	r8, [sp, #8]	@ tmp510,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ tmp511,
	str	lr, [sp, #12]	@ tmp511,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ tmp512,
	str	ip, [sp, #16]	@ tmp512,
	ldrb	r8, [r6, #7]	@ zero_extendqisi2	@ tmp513,
	str	r8, [sp, #20]	@ tmp513,
	bl	dprint_vfmw	@
.L93:
	add	r3, sp, #28	@ pretmp.866,,
	add	r0, r4, #64	@ ivtmp.898, D.31120,
	add	r8, r4, #192	@ D.31827, D.31120,
	mov	r2, r5	@ ivtmp.894, pMp2DecParam
	mov	r6, #0	@ tmp608,
.L95:
	str	r6, [sp, #28]	@ tmp608, D32
	add	r1, r2, #2	@ tmp609, ivtmp.894,
	ldrb	lr, [r2, #80]	@ zero_extendqisi2	@ tmp515, <variable>.IntraQuantTab
	mov	ip, r0	@ tmp610, ivtmp.898
	strb	lr, [r3, #0]	@ tmp515, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r2, #81]	@ zero_extendqisi2	@ tmp517, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp517, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r2, #16]	@ zero_extendqisi2	@ tmp519, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp519, <variable>.non_Intra_quantiser_matrix_even
	ldrb	lr, [r2, #17]	@ zero_extendqisi2	@ tmp521, <variable>.NonIntraQuantTab
	add	r2, r1, #2	@ ivtmp.894, tmp609,
	strb	lr, [r3, #3]	@ tmp521, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #28]	@ D32.1057, D32
	str	lr, [ip], #4	@ D32.1057,
	str	r6, [sp, #28]	@ tmp608, D32
	ldrb	lr, [r1, #80]	@ zero_extendqisi2	@ tmp614, <variable>.IntraQuantTab
	strb	lr, [r3, #0]	@ tmp614, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r1, #81]	@ zero_extendqisi2	@ tmp615, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp615, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r1, #16]	@ zero_extendqisi2	@ tmp616, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp616, <variable>.non_Intra_quantiser_matrix_even
	ldrb	lr, [r1, #17]	@ zero_extendqisi2	@ tmp617, <variable>.NonIntraQuantTab
	strb	lr, [r3, #3]	@ tmp617, <variable>.non_Intra_quantiser_matrix_odd
	ldr	r1, [sp, #28]	@ D32.1057, D32
	str	r1, [r0, #4]	@ D32.1057,
	add	r0, ip, #4	@ ivtmp.898, tmp610,
	cmp	r0, r8	@ ivtmp.898, D.31827
	bne	.L95	@,
	ldr	r3, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r2, r3, #15	@ tmp526, <variable>.PmvTopAddr,
	str	r2, [sp, #28]	@ tmp526, <variable>.pmv_top_addr
	str	r2, [r4, #192]	@ tmp526,
	ldr	r8, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r8, #15	@ tmp527, <variable>.MsgSlotAddr,
	add	r8, r0, #256	@ SlcDnMsgPhyAddr, tmp527,
	mov	r0, r8	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31365,
	beq	.L106	@,
	str	r8, [sp, #28]	@ SlcDnMsgPhyAddr, <variable>.first_slc_dnmsg_addr
	mov	r0, r5	@, pMp2DecParam
	str	r8, [r4, #252]	@ SlcDnMsgPhyAddr,
	mov	r2, r8	@, SlcDnMsgPhyAddr
	mov	r3, r9	@, StreamBaseAddr
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	movw	r1, #:lower16:g_PrintEnable	@ tmp534,
	movt	r1, #:upper16:g_PrintEnable	@ tmp534,
	ldr	ip, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	tst	ip, #16	@ g_PrintEnable,
	bne	.L97	@,
.L101:
	mov	r0, r6	@ D.31124, tmp608
.L88:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L105:
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r2, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r8, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r2, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	str	r2, [r4, #32]	@ <variable>.StreamLength,
	cmp	r6, #0	@ D.31199,
	ldr	lr, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	add	r0, r8, r1, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	ldr	r2, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	r1, r0, #15	@ tmp363, BytePos0,
	add	ip, lr, #24	@ tmp359, <variable>.StreamLength,
	and	r8, r2, #7	@ tmp368, <variable>.StreamBitOffset,
	bfi	r3, ip, #0, #24	@ <variable>.StreamLength, tmp359,,
	add	r0, r8, r1, asl #3	@, tmp371, tmp368, tmp363,
	bfi	r3, r0, #24, #7	@ <variable>.StreamLength, tmp371,,
	str	r3, [sp, #28]	@ <variable>.StreamLength,
	str	r3, [r4, #36]	@ <variable>.StreamLength,
	beq	.L92	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	add	r8, r6, r3, lsr #3	@, rp, D.31199, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp376,* D.31199
	ldrb	ip, [r8, #2]	@ zero_extendqisi2	@ tmp378,
	ldrb	r3, [r8, #1]	@ zero_extendqisi2	@ tmp377,
	str	ip, [sp, #0]	@ tmp378,
	ldrb	lr, [r8, #3]	@ zero_extendqisi2	@ tmp379,
	str	lr, [sp, #4]	@ tmp379,
	ldrb	ip, [r8, #4]	@ zero_extendqisi2	@ tmp380,
	str	ip, [sp, #8]	@ tmp380,
	ldrb	lr, [r8, #5]	@ zero_extendqisi2	@ tmp381,
	str	lr, [sp, #12]	@ tmp381,
	ldrb	ip, [r8, #6]	@ zero_extendqisi2	@ tmp382,
	str	ip, [sp, #16]	@ tmp382,
	ldrb	lr, [r8, #7]	@ zero_extendqisi2	@ tmp383,
	str	lr, [sp, #20]	@ tmp383,
	bl	dprint_vfmw	@
	ldr	r8, [r5, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	movw	r1, #:lower16:.LC18	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC18	@,
	add	r2, r8, #7	@ tmp390, <variable>.StreamLength,
	cmp	r8, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp384, <variable>.StreamBitOffset,
	movlt	r8, r2	@ <variable>.StreamLength, tmp390
	sub	r2, ip, #8	@ tmp386, tmp384,
	add	r3, r2, r8, asr #3	@, tmp392, tmp386, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.930, D.31199, tmp392
	ldrb	r2, [r6, r3]	@ zero_extendqisi2	@ tmp394,
	ldrb	r8, [ip, #2]	@ zero_extendqisi2	@ tmp396,
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp395,
	str	r8, [sp, #0]	@ tmp396,
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ tmp397,
	str	lr, [sp, #4]	@ tmp397,
	ldrb	r6, [ip, #4]	@ zero_extendqisi2	@ tmp398,
	str	r6, [sp, #8]	@ tmp398,
	ldrb	r8, [ip, #5]	@ zero_extendqisi2	@ tmp399,
	str	r8, [sp, #12]	@ tmp399,
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ tmp400,
	str	lr, [sp, #16]	@ tmp400,
	ldrb	r6, [ip, #7]	@ zero_extendqisi2	@ tmp401,
	str	r6, [sp, #20]	@ tmp401,
	bl	dprint_vfmw	@
.L92:
	mov	r6, #0	@ tmp402,
	mov	r0, r6	@ tmp407, tmp402
	mov	r1, r6	@ tmp404, tmp402
	bfi	r0, r6, #24, #7	@ tmp407, tmp402,,
	bfi	r1, r6, #0, #24	@ tmp404, tmp402,,
	str	r1, [r4, #40]	@ tmp404,
	str	r0, [r4, #44]	@ tmp407,
	b	.L93	@
.L97:
	movw	lr, #:lower16:.LANCHOR0	@ tmp537,
	movt	lr, #:upper16:.LANCHOR0	@ tmp537,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [lr, #0]	@ num, num
	movt	r1, #:upper16:.LC24	@,
	add	r2, r2, #1	@ num.501, num,
	str	r2, [lr, #0]	@ num.501, num
	ldr	r3, [r7, #44]	@, <variable>.MsgSlotAddr
	bl	dprint_vfmw	@
	ldmia	r4, {r3, ip}	@ phole ldm
	mov	r2, r6	@, tmp608
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	str	ip, [sp, #0]	@ tmp543,
	movt	r1, #:upper16:.LC25	@,
	ldr	ip, [r4, #8]	@ tmp544,
	str	ip, [sp, #4]	@ tmp544,
	ldr	ip, [r4, #12]	@ tmp545,
	str	ip, [sp, #8]	@ tmp545,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #20]	@ tmp547,
	mov	r0, #4	@,
	ldr	r3, [r4, #16]	@ tmp546,
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp547,
	ldr	ip, [r4, #24]	@ tmp548,
	str	ip, [sp, #4]	@ tmp548,
	ldr	ip, [r4, #28]	@ tmp549,
	str	ip, [sp, #8]	@ tmp549,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #36]	@ tmp551,
	mov	r2, #8	@,
	ldr	r3, [r4, #32]	@ tmp550,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp551,
	ldr	ip, [r4, #40]	@ tmp552,
	str	ip, [sp, #4]	@ tmp552,
	ldr	ip, [r4, #44]	@ tmp553,
	str	ip, [sp, #8]	@ tmp553,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #52]	@ tmp555,
	mov	r2, #12	@,
	ldr	r3, [r4, #48]	@ tmp554,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp555,
	ldr	ip, [r4, #56]	@ tmp556,
	str	ip, [sp, #4]	@ tmp556,
	ldr	ip, [r4, #60]	@ tmp557,
	str	ip, [sp, #8]	@ tmp557,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #68]	@ tmp559,
	mov	r2, #16	@,
	ldr	r3, [r4, #64]	@ tmp558,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp559,
	ldr	ip, [r4, #72]	@ tmp560,
	str	ip, [sp, #4]	@ tmp560,
	ldr	ip, [r4, #76]	@ tmp561,
	str	ip, [sp, #8]	@ tmp561,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #84]	@ tmp563,
	mov	r2, #20	@,
	ldr	r3, [r4, #80]	@ tmp562,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp563,
	ldr	ip, [r4, #88]	@ tmp564,
	str	ip, [sp, #4]	@ tmp564,
	ldr	ip, [r4, #92]	@ tmp565,
	str	ip, [sp, #8]	@ tmp565,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #100]	@ tmp567,
	mov	r2, #24	@,
	ldr	r3, [r4, #96]	@ tmp566,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp567,
	ldr	ip, [r4, #104]	@ tmp568,
	str	ip, [sp, #4]	@ tmp568,
	ldr	ip, [r4, #108]	@ tmp569,
	str	ip, [sp, #8]	@ tmp569,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #116]	@ tmp571,
	mov	r2, #28	@,
	ldr	r3, [r4, #112]	@ tmp570,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp571,
	ldr	ip, [r4, #120]	@ tmp572,
	str	ip, [sp, #4]	@ tmp572,
	ldr	ip, [r4, #124]	@ tmp573,
	str	ip, [sp, #8]	@ tmp573,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #132]	@ tmp575,
	mov	r2, #32	@,
	ldr	r3, [r4, #128]	@ tmp574,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp575,
	ldr	ip, [r4, #136]	@ tmp576,
	str	ip, [sp, #4]	@ tmp576,
	ldr	ip, [r4, #140]	@ tmp577,
	str	ip, [sp, #8]	@ tmp577,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #148]	@ tmp579,
	mov	r2, #36	@,
	ldr	r3, [r4, #144]	@ tmp578,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp579,
	ldr	ip, [r4, #152]	@ tmp580,
	str	ip, [sp, #4]	@ tmp580,
	ldr	ip, [r4, #156]	@ tmp581,
	str	ip, [sp, #8]	@ tmp581,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #164]	@ tmp583,
	mov	r2, #40	@,
	ldr	r3, [r4, #160]	@ tmp582,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp583,
	ldr	ip, [r4, #168]	@ tmp584,
	str	ip, [sp, #4]	@ tmp584,
	ldr	ip, [r4, #172]	@ tmp585,
	str	ip, [sp, #8]	@ tmp585,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #180]	@ tmp587,
	mov	r2, #44	@,
	ldr	r3, [r4, #176]	@ tmp586,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp587,
	ldr	ip, [r4, #184]	@ tmp588,
	str	ip, [sp, #4]	@ tmp588,
	ldr	ip, [r4, #188]	@ tmp589,
	str	ip, [sp, #8]	@ tmp589,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #196]	@ tmp591,
	mov	r2, #48	@,
	ldr	r3, [r4, #192]	@ tmp590,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp591,
	ldr	ip, [r4, #200]	@ tmp592,
	str	ip, [sp, #4]	@ tmp592,
	ldr	ip, [r4, #204]	@ tmp593,
	str	ip, [sp, #8]	@ tmp593,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #212]	@ tmp595,
	mov	r2, #52	@,
	ldr	r3, [r4, #208]	@ tmp594,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp595,
	ldr	ip, [r4, #216]	@ tmp596,
	str	ip, [sp, #4]	@ tmp596,
	ldr	ip, [r4, #220]	@ tmp597,
	str	ip, [sp, #8]	@ tmp597,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #228]	@ tmp599,
	mov	r2, #56	@,
	ldr	r3, [r4, #224]	@ tmp598,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp599,
	ldr	ip, [r4, #232]	@ tmp600,
	str	ip, [sp, #4]	@ tmp600,
	ldr	ip, [r4, #236]	@ tmp601,
	str	ip, [sp, #8]	@ tmp601,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #244]	@ tmp603,
	mov	r2, #60	@,
	ldr	r3, [r4, #240]	@ tmp602,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	ip, [sp, #0]	@ tmp603,
	ldr	ip, [r4, #248]	@ tmp604,
	str	ip, [sp, #4]	@ tmp604,
	ldr	ip, [r4, #252]	@ tmp605,
	str	ip, [sp, #8]	@ tmp605,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	b	.L101	@
.L104:
	mov	r0, sl	@, tmp243
	movw	r1, #:lower16:.LC13	@,
	mov	r2, #592	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31124,
	b	.L88	@
.L103:
	mov	r0, sl	@, tmp243
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #591	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31124,
	b	.L88	@
.L106:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #739	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31124,
	b	.L88	@
.L102:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #589	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31124,
	b	.L88	@
	.fnend
	.size	MP2HAL_V200R004_CfgDnMsg, .-MP2HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP2HAL_V200R004_StartDec
	.type	MP2HAL_V200R004_StartDec, %function
MP2HAL_V200R004_StartDec:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	bls	.L116	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30591,
.L110:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L116:
	beq	.L117	@,
	movw	r5, #:lower16:g_HwMem	@ tmp143,
	movt	r5, #:upper16:g_HwMem	@ tmp143,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L118	@,
.L112:
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	add	r3, sp, #4	@,,
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.30603,
	bne	.L119	@,
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, r5	@, D.30603
	movt	r1, #:upper16:g_HwMem	@,
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
	mov	r0, r5	@ D.30591, D.30603
	b	.L110	@
.L118:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.30598,
	strne	r1, [r5, #0]	@ D.30598, <variable>.pVdmRegVirAddr
	bne	.L112	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30591,
	b	.L110	@
.L117:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	mov	r2, #69	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30591,
	b	.L110	@
.L119:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30591,
	b	.L110	@
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC1:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC2:
	.ascii	"stream_base_addr = %#x\012\000"
.LC3:
	.ascii	"HEAD_INF_OFFSET = 0x%x\012\000"
.LC4:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC5:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC6:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC7:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC8:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC9:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC10:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC11:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC12:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC13:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC14:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC15:
	.ascii	"picture width out of range\000"
	.space	1
.LC16:
	.ascii	"picture height out of range\000"
.LC17:
	.ascii	"Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC18:
	.ascii	"Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC19:
	.ascii	"1p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC20:
	.ascii	"1p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC21:
	.ascii	"1p last phy addr = 0x%x\012\000"
	.space	3
.LC22:
	.ascii	"2p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC23:
	.ascii	"2p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC24:
	.ascii	"\012*****No.%2d Down Msg (phy addr: %#8x) *****\012"
	.ascii	"\000"
	.space	2
.LC25:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC26:
	.ascii	"\012***** Down Msg print finished *****\012\000"
	.space	2
.LC27:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_StartDec\012\000"
	.space	2
.LC28:
	.ascii	"line: %d\012\000"
	.space	2
.LC29:
	.ascii	"MP2HAL_V200R003_CfgReg ERROR!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.31115, %object
	.size	num.31115, 4
num.31115:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
