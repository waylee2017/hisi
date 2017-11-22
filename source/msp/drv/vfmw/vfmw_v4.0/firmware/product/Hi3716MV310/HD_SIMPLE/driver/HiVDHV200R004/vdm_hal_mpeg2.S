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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
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
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	ldrh	r3, [r2, #148]	@ temp.541, <variable>.PicHeightInMb
	sub	ip, r5, #1	@ tmp195, <variable>.PictureStructure,
	ldr	r4, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r5, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	ip, ip	@ tmp196, tmp195
	cmp	ip, #1	@ tmp196,
	str	r5, [r4, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	ip, #2	@ iftmp.453,
	movhi	ip, #1	@ iftmp.453,
	mul	ip, r3, ip	@ tmp200, temp.541, iftmp.453
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
	ldrh	r1, [r0, #152]	@ D.30906, <variable>.PicWidthInMb
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
	str	r1, [sp, #28]	@ D.30906, DnrCfg.pic_width_in_mb
	beq	.L15	@,
	ldrh	lr, [r0, #150]	@ <variable>.FrameHeightInMb, <variable>.FrameHeightInMb
	sub	ip, r2, #1	@ tmp147, <variable>.PictureStructure,
	add	r4, lr, #1	@ tmp150, <variable>.FrameHeightInMb,
	uxtb	r3, ip	@ tmp148, tmp147
	cmp	r3, #1	@ tmp148,
	mov	r2, r4, asr #1	@ tmp151, tmp150,
	movhi	r2, r2, asl #1	@ tmp155, tmp154,
	sub	r3, r2, #1	@ prephitmp.561, tmp155,
	str	r3, [sp, #32]	@ prephitmp.561, DnrCfg.pic_height_in_mb
.L9:
	mul	r4, r1, r3	@ tmp156, D.30906, prephitmp.561
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp172,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp172,
	mov	r2, #45312	@ tmp161,
	ldr	lr, [r0, r2]	@ <variable>.DnrMbInfoStAddr, <variable>.DnrMbInfoStAddr
	mov	r2, #8	@ tmp169,
	ldr	r3, [r3, #8]	@ D.30937, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	ldr	ip, [r0, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r1, [r0, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	cmp	r3, #0	@ D.30937,
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
	beq	.L11	@,
	add	r0, sp, #4	@,,
	blx	r3	@ D.30937
.L13:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, pc}
.L15:
	ldrh	r3, [r0, #150]	@ prephitmp.561, <variable>.FrameHeightInMb
	str	r3, [sp, #32]	@ prephitmp.561, DnrCfg.pic_height_in_mb
	b	.L9	@
.L11:
	mov	r0, r3	@, D.30937
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #315	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L13	@
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
	mov	r5, #0	@ tmp231,
	mov	fp, r1	@ SlcDnMsgVirAddr, SlcDnMsgVirAddr
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	str	r3, [sp, #16]	@ StreamBaseAddr, %sfp
	movw	r3, #45308	@ tmp232,
	str	r2, [sp, #28]	@ SlcDnMsgPhyAddr, %sfp
	ldr	r7, [r4, r3]	@ SliceNum, <variable>.SlcNum
	str	r5, [sp, #36]	@ tmp231, D32
	streq	r0, [sp, #20]	@ <variable>.slice_start_mbn, %sfp
	bne	.L39	@,
.L18:
	cmp	r7, #0	@ SliceNum,
	ble	.L21	@,
	ldr	r8, [r4, #284]	@ prephitmp.610, <variable>.slice_start_mbn
	mov	r5, #0	@ i,
	ldr	sl, [sp, #20]	@, %sfp
	add	r6, sp, #36	@ tmp457,,
	ldr	r3, [r4, #240]	@ prephitmp.659, <variable>.slice_start_mbn
	mov	r9, sl, asl #2	@,,
	mov	sl, r8	@ prephitmp.610, prephitmp.610
	str	r9, [sp, #24]	@, %sfp
	mov	r9, #44	@ tmp456,
	b	.L30	@
.L22:
	add	r5, r5, #1	@ i, i,
	cmp	r7, r5	@ SliceNum, i
	ble	.L21	@,
.L40:
	sub	sl, r5, #1	@ tmp448, i,
	mla	r0, r9, r5, r4	@ tmp446, tmp456, i, pMp2DecParam
	mla	r1, r9, sl, r4	@ tmp452, tmp456, tmp448, pMp2DecParam
	ldr	sl, [r0, #284]	@ prephitmp.610, <variable>.slice_start_mbn
	ldr	r3, [r1, #284]	@ prephitmp.659, <variable>.slice_start_mbn
.L30:
	cmp	r5, #0	@ i,
	movle	r2, #0	@,
	movgt	r2, #1	@,
	cmp	sl, r3	@ prephitmp.610, prephitmp.659
	movhi	r2, #0	@,,
	cmp	r2, #0	@ tmp296,
	mov	sl, r2	@ tmp296,
	bne	.L22	@,
	mla	r8, r9, r5, r4	@ tmp301, tmp456, i, pMp2DecParam
	ldr	r1, [sp, #24]	@, %sfp
	str	r2, [sp, #36]	@ tmp296, D32
	mov	r0, #4	@,
	add	r3, r5, r1	@, i,
	ldr	r2, [r6, #0]	@ tmp316,
	str	r3, [sp, #4]	@, %sfp
	movw	r1, #:lower16:.LC1	@,
	mov	ip, r3, asl #5	@,,
	str	ip, [sp, #8]	@, %sfp
	ldr	ip, [r8, #252]	@ temp.654, <variable>.BsPhyAddr
	movt	r1, #:upper16:.LC1	@,
	ldr	lr, [r8, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	and	r3, ip, #15	@ tmp303, temp.654,
	bfi	r2, lr, #0, #24	@ tmp316, <variable>.BsLenInBit,,
	ldr	lr, [r8, #268]	@, <variable>.BsBitOffset
	add	r3, lr, r3, asl #3	@, bit_offset_0.663,, tmp303,
	bfi	r2, r3, #24, #7	@ tmp318, bit_offset_0.663,,
	str	r2, [r6, #0]	@ tmp318,
	ldr	r3, [sp, #4]	@, %sfp
	str	r2, [fp, r3, asl #5]	@ D32.668,* SlcDnMsgVirAddr
	str	ip, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #0]	@,
	ldr	r0, [sp, #4]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	bic	r3, ip, #15	@ tmp323, temp.654,
	rsb	r2, lr, r3	@ tmp324,, tmp323
	mov	r1, r0, asl #3	@ tmp326,,
	add	ip, r1, #1	@ tmp327, tmp326,
	mov	lr, sl	@ tmp325, tmp296
	bfi	lr, r2, #0, #24	@ tmp325, tmp324,,
	mov	r0, #4	@,
	str	lr, [fp, ip, asl #2]	@ D32.676,* SlcDnMsgVirAddr
	movw	r1, #:lower16:.LC2	@,
	mov	r2, lr	@ D32.676, tmp325
	movt	r1, #:upper16:.LC2	@,
	str	lr, [r6, #0]	@ tmp325,
	bl	dprint_vfmw	@
	str	sl, [sp, #36]	@ tmp296, D32
	ldr	r3, [r8, #256]	@, <variable>.BsPhyAddr
	ldr	r2, [sp, #4]	@, %sfp
	str	r3, [sp, #12]	@, %sfp
	ldr	r0, [sp, #12]	@, %sfp
	mov	lr, r2, asl #2	@ tmp353,,
	ldr	r1, [r8, #264]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	add	lr, lr, #1	@ tmp354, tmp353,
	and	ip, r0, #15	@ tmp337,,
	ldr	r3, [r8, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	ldr	r2, [r6, #0]	@ tmp350,
	mov	r0, #4	@,
	add	r3, r3, ip, asl #3	@, bit_offset_1.687, <variable>.BsBitOffset, tmp337,
	bfi	r2, r1, #0, #24	@ tmp350, <variable>.BsLenInBit,,
	movw	r1, #:lower16:.LC3	@,
	bfi	r2, r3, #24, #7	@ tmp352, bit_offset_1.687,,
	movt	r1, #:upper16:.LC3	@,
	str	r2, [r6, #0]	@ tmp352,
	str	r2, [fp, lr, asl #3]	@ D32.692,* SlcDnMsgVirAddr
	bl	dprint_vfmw	@
	str	sl, [sp, #36]	@ tmp296, D32
	ldr	sl, [r8, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	ldrne	lr, [sp, #12]	@, %sfp
	ldrne	sl, [r6, #0]	@ tmp368,
	ldrne	r0, [sp, #16]	@, %sfp
	ldreq	r2, [r6, #0]	@ tmp370,
	bicne	r2, lr, #15	@ tmp366,,
	bfieq	r2, sl, #0, #24	@ tmp370, <variable>.BsPhyAddr,,
	rsbne	r2, r0, r2	@ tmp367,, tmp366
	streq	r2, [r6, #0]	@ tmp370,
	bfine	sl, r2, #0, #24	@ tmp368, tmp367,,
	strne	sl, [r6, #0]	@ tmp368,
	ldr	r8, [sp, #8]	@, %sfp
	mov	r0, #4	@,
	ldr	r2, [sp, #36]	@ D32.702, D32
	add	lr, r8, #12	@ tmp371,,
	mul	sl, r9, r5	@ tmp376, tmp456, i
	str	r2, [fp, lr]	@ D32.702,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #4]	@, %sfp
	mov	r1, #0	@,
	str	r1, [sp, #36]	@, D32
	add	r8, sl, r4	@ tmp378, tmp376, pMp2DecParam
	mov	r0, #4	@,
	mov	r3, r2, asl #1	@ tmp389,,
	ldr	r2, [r6, #0]	@ tmp381,
	ldr	ip, [r8, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	add	lr, r3, #1	@ tmp390, tmp389,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bfi	r2, ip, #0, #6	@ tmp381, <variable>.quantiser_scale_code,,
	str	r2, [r6, #0]	@ tmp381,
	ldr	ip, [r8, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	add	r5, r5, #1	@ j, i,
	bfi	r2, ip, #6, #1	@ tmp388, <variable>.intra_slice,,
	str	r2, [r6, #0]	@ tmp388,
	str	r2, [fp, lr, asl #4]	@ D32.713,* SlcDnMsgVirAddr
	bl	dprint_vfmw	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	ip, #0	@,
	str	ip, [sp, #36]	@, D32
	add	r3, r0, #20	@ tmp403,,
	ldr	r1, [r8, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r2, ip	@ tmp401,
	mov	r0, #4	@,
	bfi	r2, r1, #0, #20	@ tmp401, <variable>.slice_start_mbn,,
	movw	r1, #:lower16:.LC6	@,
	str	r2, [r6, #0]	@ tmp401,
	movt	r1, #:upper16:.LC6	@,
	str	r2, [fp, r3]	@ D32.718,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, j
	ble	.L25	@,
	mla	lr, r9, r5, r4	@ tmp414, tmp456, j, pMp2DecParam
	ldr	r2, [r8, #284]	@ temp.731, <variable>.slice_start_mbn
	ldr	r3, [lr, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, r2	@ <variable>.slice_start_mbn, temp.731
	bhi	.L25	@,
	mvn	r3, r5	@ tmp466, j
	add	ip, r3, r7	@ tmp465, tmp466, SliceNum
	add	sl, sl, #248	@ tmp419, tmp376,
	tst	ip, #1	@ tmp465,
	add	sl, r4, sl	@ tmp420, pMp2DecParam, tmp419
	add	r3, sl, #4	@ ivtmp.628, tmp420,
	beq	.L26	@,
	ldr	r1, [r3, #120]	@ D.30876, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	add	r3, sl, #48	@ ivtmp.628, tmp420,
	cmp	r1, r2	@ D.30876, temp.731
	bls	.L26	@,
	b	.L25	@
.L27:
	ldr	r0, [r3, #120]	@ D.30876, <variable>.slice_start_mbn
	add	r3, r3, #88	@ ivtmp.628, ivtmp.628,
	cmp	r0, r2	@ D.30876, temp.731
	bhi	.L25	@,
	ldr	r1, [r1, #120]	@ D.30876, <variable>.slice_start_mbn
	add	r5, r5, #1	@ j, j,
	cmp	r1, r2	@ D.30876, temp.731
	bhi	.L25	@,
.L26:
	add	r5, r5, #1	@ j, j,
	add	r1, r3, #44	@ tmp468, ivtmp.628,
	cmp	r7, r5	@ SliceNum, j
	bgt	.L27	@,
.L25:
	cmp	r5, r7	@ j, SliceNum
	mov	lr, #0	@ tmp434,
	mlane	r3, r9, r5, r4	@ tmp427, tmp456, j, pMp2DecParam
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r3, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r8, #0	@ prephitmp.608,
	ldrne	r0, [sp, #20]	@, %sfp
	ldrne	r1, [sp, #28]	@, %sfp
	muleq	r2, r2, r3	@ tmp423, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r2, [r3, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	addne	r8, r5, r0	@ tmp430, j,
	mov	r0, #4	@,
	sub	r5, r5, #1	@ i, j,
	sub	r3, r2, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	ldr	r2, [sp, #8]	@, %sfp
	bfi	lr, r3, #0, #20	@ tmp434, slice_end_mbn,,
	addne	r8, r1, r8, asl #5	@, prephitmp.608,, tmp430,
	add	ip, r2, #24	@ tmp435,,
	movw	r1, #:lower16:.LC7	@,
	mov	r2, lr	@ D32.727, tmp434
	movt	r1, #:upper16:.LC7	@,
	str	lr, [fp, ip]	@ D32.727,
	add	r5, r5, #1	@ i, i,
	str	lr, [r6, #0]	@ tmp434,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	r2, r8	@ D32.733, prephitmp.608
	add	r1, r0, #28	@ tmp440,,
	mov	r0, #4	@,
	str	r8, [fp, r1]	@ D32.733,
	movw	r1, #:lower16:.LC8	@,
	str	r8, [r6, #0]	@ prephitmp.608, <variable>.next_slice_para_addr
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	cmp	r7, r5	@ SliceNum, i
	bgt	.L40	@,
.L21:
	mov	r0, #0	@,
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L39:
	ldr	r6, [r4, #252]	@ D.30736, <variable>.BsPhyAddr
	mov	r2, #1	@ tmp240,
	ldr	r3, [r4, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r0, #4	@,
	and	ip, r6, #15	@ tmp235, D.30736,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	add	lr, r3, ip, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp235,
	bfi	r2, lr, #24, #7	@ tmp240, bit_offset_0,,
	str	r2, [fp, #0]	@ tmp240,* SlcDnMsgVirAddr
	str	r2, [sp, #36]	@ tmp240,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #16]	@, %sfp
	bic	r1, r6, #15	@ tmp245, D.30736,
	mov	r6, r5	@ tmp247, tmp231
	rsb	r2, r0, r1	@ tmp246,, tmp245
	mov	r0, #4	@,
	bfi	r6, r2, #0, #24	@ tmp247, tmp246,,
	movw	r1, #:lower16:.LC2	@,
	str	r6, [fp, #4]	@ tmp247,
	movt	r1, #:upper16:.LC2	@,
	mov	r2, r6	@, tmp247
	str	r6, [sp, #36]	@ tmp247,
	bl	dprint_vfmw	@
	ldr	r6, [r4, #256]	@ D.30764, <variable>.BsPhyAddr
	ldr	r3, [r4, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	r2, #0	@ tmp255,
	and	ip, r6, #15	@ tmp251, D.30764,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r3, r3, ip, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp251,
	bfi	r2, r3, #24, #7	@ tmp255, bit_offset_1,,
	str	r2, [fp, #8]	@ tmp255,
	str	r2, [sp, #36]	@ tmp255,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r3, #1	@,
	str	r3, [sp, #20]	@, %sfp
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	bicne	r0, r6, #15	@ tmp261, D.30764,
	streq	r0, [sp, #36]	@ <variable>.BsPhyAddr,
	ldrne	r1, [sp, #16]	@, %sfp
	rsbne	r0, r1, r0	@ tmp262,, tmp261
	movw	r1, #:lower16:.LC4	@,
	bfine	r5, r0, #0, #24	@ tmp263, tmp262,,
	strne	r5, [sp, #36]	@ tmp263,
	ldr	ip, [sp, #36]	@ D32.640, D32
	movt	r1, #:upper16:.LC4	@,
	mov	r0, #4	@,
	mov	r5, #0	@ tmp268,
	mov	r2, ip	@, D32.640
	str	ip, [fp, #12]	@ D32.640,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r4, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	mov	r0, #4	@,
	and	r3, r1, #63	@ tmp272, <variable>.quantiser_scale_code,
	movw	r1, #:lower16:.LC5	@,
	bfi	r3, r2, #6, #1	@ tmp272, <variable>.intra_slice,,
	movt	r1, #:upper16:.LC5	@,
	str	r3, [fp, #16]	@ tmp272,
	mov	r2, r3	@, tmp272
	str	r3, [sp, #36]	@ tmp272,
	bl	dprint_vfmw	@
	mov	ip, r5	@ tmp277, tmp268
	bfi	ip, r5, #0, #20	@ tmp277, tmp268,,
	mov	r0, #4	@,
	str	ip, [fp, #20]	@ tmp277,
	movw	r1, #:lower16:.LC6	@,
	mov	r2, ip	@, tmp277
	movt	r1, #:upper16:.LC6	@,
	str	ip, [sp, #36]	@ tmp277,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r2, r5	@ tmp284, tmp268
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC7	@,
	sub	ip, r3, #1	@ tmp282, <variable>.slice_start_mbn,
	movt	r1, #:upper16:.LC7	@,
	bfi	r2, ip, #0, #20	@ tmp284, tmp282,,
	str	r2, [fp, #24]	@ tmp284,
	str	r2, [sp, #36]	@ tmp284,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #28]	@, %sfp
	add	r1, r2, #32	@ tmp289,,
	str	r1, [fp, #28]	@ tmp289,
	str	r1, [sp, #36]	@ tmp289, <variable>.next_slice_para_addr
	b	.L18	@
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
	subs	r4, r0, #0	@ D.31223,
	beq	.L57	@,
	ldrh	r3, [r5, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L58	@,
	ldrh	r2, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L59	@,
	sub	lr, r3, #1	@ tmp258, <variable>.PicWidthInMb,
	ldr	r8, [r5, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	sub	r2, r2, #1	@ tmp262, <variable>.PicHeightInMb,
	mov	ip, lr, asl #23	@ tmp263, tmp258,
	mov	r6, ip, lsr #23	@ tmp263, tmp263,
	bfi	r6, r2, #16, #9	@ tmp263, tmp262,,
	bfi	r6, r8, #25, #1	@ tmp265, <variable>.Mpeg1Flag,,
	str	r6, [r4, #0]	@ tmp265,* D.31223
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
	mov	r6, r0	@ D.31302,
	ldr	r0, [r5, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r8, r0	@ D.31306,
	beq	.L60	@,
	ldr	ip, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, sl	@ tmp419, tmp243
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	r6, #0	@ D.31302,
	ldr	r0, [r5, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	lr, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	sl, r0, ip, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r2, lr, r1, lsr #3	@, BytePos0.857, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	ip, sl, #15	@ tmp417, BytePos1,
	bic	r0, r2, #15	@ tmp416, BytePos0.857,
	and	lr, r2, #15	@ tmp424, BytePos0.857,
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
	beq	.L49	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	add	ip, r6, r3, lsr #3	@, rp, D.31302, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp437,* D.31302
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
	movw	r1, #:lower16:.LC16	@,
	add	ip, r3, #7	@ tmp451, <variable>.StreamLength,
	cmp	r3, #0	@ <variable>.StreamLength,
	movt	r1, #:upper16:.LC16	@,
	movlt	r3, ip	@ <variable>.StreamLength, tmp451
	mov	ip, r2, lsr #3	@ tmp445, <variable>.StreamBitOffset,
	sub	r2, ip, #8	@ tmp447, tmp445,
	add	r3, r2, r3, asr #3	@, tmp453, tmp447, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.886, D.31302, tmp453
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
	movw	r1, #:lower16:.LC17	@,
	ldr	r3, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	movt	r1, #:upper16:.LC17	@,
	mov	r0, #22	@,
	add	r2, r6, r3	@, <variable>.StreamLength, <variable>.StreamPhyAddr
	bl	dprint_vfmw	@
.L49:
	mov	r1, #0	@ tmp467,
	and	sl, sl, #15	@ tmp475, BytePos1,
	mov	r3, r1	@ tmp469, tmp467
	bfi	r3, r1, #0, #24	@ tmp469, tmp467,,
	str	r3, [r4, #40]	@ tmp469,
	cmp	r8, r1	@ D.31306,
	ldr	lr, [r5, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	ip, lr, #24	@ tmp471, <variable>.StreamLength,
	and	r6, r2, #7	@ tmp480, <variable>.StreamBitOffset,
	bic	r1, ip, #-16777216	@ tmp484, tmp471,
	add	r0, r6, sl, asl #3	@, tmp483, tmp480, tmp475,
	bfi	r1, r0, #24, #7	@ tmp484, tmp483,,
	str	r1, [sp, #28]	@ tmp484,
	str	r1, [r4, #44]	@ tmp484,
	beq	.L48	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	add	r6, r8, r3, lsr #3	@, rp, D.31306, <variable>.StreamBitOffset,
	ldrb	r2, [r8, r3, lsr #3]	@ zero_extendqisi2	@ tmp488,* D.31306
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
	movw	r1, #:lower16:.LC19	@,
	ldr	r3, [r5, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC19	@,
	add	r2, r6, #7	@ tmp502, <variable>.StreamLength,
	cmp	r6, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp496, <variable>.StreamBitOffset,
	movlt	r6, r2	@ <variable>.StreamLength, tmp502
	sub	r2, ip, #8	@ tmp498, tmp496,
	add	r3, r2, r6, asr #3	@, tmp504, tmp498, <variable>.StreamLength,
	add	r6, r8, r3	@ rp.927, D.31306, tmp504
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
.L48:
	add	r3, sp, #28	@ pretmp.761,,
	add	r0, r4, #64	@ ivtmp.793, D.31223,
	add	r8, r4, #192	@ D.31823, D.31223,
	mov	r2, r5	@ ivtmp.789, pMp2DecParam
	mov	r6, #0	@ tmp608,
.L50:
	str	r6, [sp, #28]	@ tmp608, D32
	add	r1, r2, #2	@ tmp609, ivtmp.789,
	ldrb	lr, [r2, #80]	@ zero_extendqisi2	@ tmp515, <variable>.IntraQuantTab
	mov	ip, r0	@ tmp610, ivtmp.793
	strb	lr, [r3, #0]	@ tmp515, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r2, #81]	@ zero_extendqisi2	@ tmp517, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp517, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r2, #16]	@ zero_extendqisi2	@ tmp519, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp519, <variable>.non_Intra_quantiser_matrix_even
	ldrb	lr, [r2, #17]	@ zero_extendqisi2	@ tmp521, <variable>.NonIntraQuantTab
	add	r2, r1, #2	@ ivtmp.789, tmp609,
	strb	lr, [r3, #3]	@ tmp521, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #28]	@ D32.952, D32
	str	lr, [ip], #4	@ D32.952,
	str	r6, [sp, #28]	@ tmp608, D32
	ldrb	lr, [r1, #80]	@ zero_extendqisi2	@ tmp614, <variable>.IntraQuantTab
	strb	lr, [r3, #0]	@ tmp614, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r1, #81]	@ zero_extendqisi2	@ tmp615, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp615, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r1, #16]	@ zero_extendqisi2	@ tmp616, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp616, <variable>.non_Intra_quantiser_matrix_even
	ldrb	lr, [r1, #17]	@ zero_extendqisi2	@ tmp617, <variable>.NonIntraQuantTab
	strb	lr, [r3, #3]	@ tmp617, <variable>.non_Intra_quantiser_matrix_odd
	ldr	r1, [sp, #28]	@ D32.952, D32
	str	r1, [r0, #4]	@ D32.952,
	add	r0, ip, #4	@ ivtmp.793, tmp610,
	cmp	r0, r8	@ ivtmp.793, D.31823
	bne	.L50	@,
	ldr	r3, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r2, r3, #15	@ tmp526, <variable>.PmvTopAddr,
	str	r2, [sp, #28]	@ tmp526, <variable>.pmv_top_addr
	str	r2, [r4, #192]	@ tmp526,
	ldr	r8, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r8, #15	@ tmp527, <variable>.MsgSlotAddr,
	add	r8, r0, #256	@ SlcDnMsgPhyAddr, tmp527,
	mov	r0, r8	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31468,
	beq	.L61	@,
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
	bne	.L52	@,
.L56:
	mov	r0, r6	@ D.31227, tmp608
.L43:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L60:
	ldr	r1, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r2, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r8, [r5, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r2, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	str	r2, [r4, #32]	@ <variable>.StreamLength,
	cmp	r6, #0	@ D.31302,
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
	beq	.L47	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #8	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	add	r8, r6, r3, lsr #3	@, rp, D.31302, <variable>.StreamBitOffset,
	ldrb	r2, [r6, r3, lsr #3]	@ zero_extendqisi2	@ tmp376,* D.31302
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
	movw	r1, #:lower16:.LC14	@,
	ldr	r3, [r5, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	movt	r1, #:upper16:.LC14	@,
	add	r2, r8, #7	@ tmp390, <variable>.StreamLength,
	cmp	r8, #0	@ <variable>.StreamLength,
	mov	r0, #9	@,
	mov	ip, r3, lsr #3	@ tmp384, <variable>.StreamBitOffset,
	movlt	r8, r2	@ <variable>.StreamLength, tmp390
	sub	r2, ip, #8	@ tmp386, tmp384,
	add	r3, r2, r8, asr #3	@, tmp392, tmp386, <variable>.StreamLength,
	add	ip, r6, r3	@ rp.825, D.31302, tmp392
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
.L47:
	mov	r6, #0	@ tmp402,
	mov	r0, r6	@ tmp407, tmp402
	mov	r1, r6	@ tmp404, tmp402
	bfi	r0, r6, #24, #7	@ tmp407, tmp402,,
	bfi	r1, r6, #0, #24	@ tmp404, tmp402,,
	str	r1, [r4, #40]	@ tmp404,
	str	r0, [r4, #44]	@ tmp407,
	b	.L48	@
.L52:
	movw	lr, #:lower16:.LANCHOR0	@ tmp537,
	movt	lr, #:upper16:.LANCHOR0	@ tmp537,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, [lr, #0]	@ num, num
	movt	r1, #:upper16:.LC20	@,
	add	r2, r2, #1	@ num.502, num,
	str	r2, [lr, #0]	@ num.502, num
	ldr	r3, [r7, #44]	@, <variable>.MsgSlotAddr
	bl	dprint_vfmw	@
	ldmia	r4, {r3, ip}	@ phole ldm
	mov	r2, r6	@, tmp608
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	str	ip, [sp, #0]	@ tmp543,
	movt	r1, #:upper16:.LC21	@,
	ldr	ip, [r4, #8]	@ tmp544,
	str	ip, [sp, #4]	@ tmp544,
	ldr	ip, [r4, #12]	@ tmp545,
	str	ip, [sp, #8]	@ tmp545,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #20]	@ tmp547,
	mov	r0, #4	@,
	ldr	r3, [r4, #16]	@ tmp546,
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
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
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ tmp603,
	ldr	ip, [r4, #248]	@ tmp604,
	str	ip, [sp, #4]	@ tmp604,
	ldr	ip, [r4, #252]	@ tmp605,
	str	ip, [sp, #8]	@ tmp605,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	b	.L56	@
.L59:
	mov	r0, sl	@, tmp243
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #592	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31227,
	b	.L43	@
.L58:
	mov	r0, sl	@, tmp243
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #591	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31227,
	b	.L43	@
.L61:
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #739	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31227,
	b	.L43	@
.L57:
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #589	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31227,
	b	.L43	@
	.fnend
	.size	MP2HAL_V200R004_CfgDnMsg, .-MP2HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	subs	r5, r2, #0	@ VdhId, VdhId
	add	r2, sp, #16	@ vdm_reg_phy_addr.455,,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	mov	r0, #0	@ tmp196,
	str	r0, [r2, #-8]!	@ tmp196, vdm_reg_phy_addr
	movweq	r2, #:lower16:269680640	@ tmp198,
	str	r0, [sp, #12]	@ tmp196, D32
	movteq	r2, #:upper16:269680640	@ tmp198,
	streq	r2, [sp, #8]	@ tmp198,
	bne	.L106	@,
.L66:
	ldr	r2, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [sp, #8]	@ vdm_reg_phy_addr.457, vdm_reg_phy_addr
	cmp	r2, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L107	@,
.L68:
	movw	r7, #1140	@ tmp205,
	movw	r6, #:lower16:g_HwMem	@ tmp415,
	mul	r0, r7, r5	@ tmp204, tmp205, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp415,
	mvn	r2, #0	@ tmp208,
	mov	r7, #0	@ tmp209,
	mov	ip, r7	@ tmp214, tmp209
	mov	lr, #3	@ tmp231,
	mov	r8, lr	@ tmp234, tmp231
	ldr	fp, [r0, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [fp, #32]	@ tmp208,
	ldrh	r9, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	fp, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	sl, [r0, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mul	r9, fp, r9	@ tmp212, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	r9, r9, r2	@ tmp213, tmp212,
	bfi	ip, r9, #0, #20	@ tmp214, tmp213,,
	orr	r9, ip, #1090519040	@ tmp223, tmp214,
	orr	ip, r9, #4194304	@ tmp223, tmp223,
	movw	r9, #45316	@ tmp244,
	bfi	ip, r7, #25, #1	@ tmp223, tmp209,,
	str	ip, [sl, #8]	@ tmp223,
	ldr	ip, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	sl, [r0, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r9, [r4, r9]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	ip, ip, lsr #6	@ tmp232, <variable>.VahbStride,
	bfi	r8, ip, #4, #10	@ tmp234, tmp232,,
	orr	ip, r8, #16384	@ tmp237, tmp234,
	bic	ip, ip, #32768	@ tmp238, tmp237,
	bfi	ip, lr, #16, #12	@ tmp238, tmp231,,
	orr	lr, ip, #536870912	@ tmp242, tmp238,
	bic	ip, lr, #-1879048192	@ tmp246, tmp242,
	bfi	ip, r9, #30, #1	@ tmp246, <variable>.Compress_en,,
	str	ip, [sl, #12]	@ tmp246,
	ldr	ip, [r0, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	lr, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	lr, lr, #15	@ tmp255, <variable>.MsgSlotAddr,
	str	lr, [ip, #16]	@ tmp255,
	ldr	r1, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	ldr	lr, [r0, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	ip, r1, #15	@ tmp264, <variable>.MsgSlotAddr,
	movw	r1, #45308	@ tmp271,
	str	ip, [lr, #20]	@ tmp264,
	ldr	lr, [r4, r1]	@ D.31117, <variable>.SlcNum
	str	r7, [sp, #12]	@ tmp209, D32
	cmp	lr, r7	@ D.31117,
	beq	.L70	@,
	ldr	r1, [r4, #252]	@ D.31110, <variable>.BsPhyAddr
	add	r0, lr, r2	@ tmp416, D.31117,
	and	ip, r0, #1	@ tmp418, tmp416,
	cmp	r1, r7	@ D.31110,
	beq	.L85	@,
	ldr	r0, [r4, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r0, #0	@ <variable>.BsLenInBit,
	ble	.L85	@,
	bic	r1, r1, #15	@ tmp428, D.31110,
	cmp	r2, r1	@ stream_base_addr, tmp428
	movcs	r2, r1	@ stream_base_addr, tmp428
.L85:
	ldr	r1, [r4, #256]	@ temp.1133, <variable>.BsPhyAddr
	cmp	r1, #0	@ temp.1133,
	bne	.L108	@,
.L87:
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.31117
	add	r1, r4, #44	@ ivtmp.1118, pMp2DecParam,
	beq	.L84	@,
	cmp	ip, #0	@ tmp418,
	beq	.L71	@,
	ldr	ip, [r1, #252]	@ D.31110, <variable>.BsPhyAddr
	cmp	ip, #0	@ D.31110,
	bne	.L98	@,
.L92:
	ldr	ip, [r1, #256]	@ temp.1133, <variable>.BsPhyAddr
	cmp	ip, #0	@ temp.1133,
	beq	.L94	@,
.L109:
	ldr	r7, [r1, #264]	@ tmp441, <variable>.BsLenInBit
	cmp	r7, #0	@ tmp441,
	ble	.L94	@,
	bic	ip, ip, #15	@ tmp442, temp.1133,
	cmp	r2, ip	@ stream_base_addr, tmp442
	movcs	r2, ip	@ stream_base_addr, tmp442
.L94:
	add	r0, r0, #1	@ i, tmp419,
	add	r1, r1, #44	@ ivtmp.1118, tmp420,
	cmp	r0, lr	@ i, D.31117
	beq	.L84	@,
.L71:
	ldr	ip, [r1, #252]	@ D.31110, <variable>.BsPhyAddr
	cmp	ip, #0	@ D.31110,
	beq	.L74	@,
	ldr	r7, [r1, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r7, #0	@ <variable>.BsLenInBit,
	ble	.L74	@,
	bic	ip, ip, #15	@ tmp275, D.31110,
	cmp	r2, ip	@ stream_base_addr, tmp275
	movcs	r2, ip	@ stream_base_addr, tmp275
.L74:
	ldr	ip, [r1, #256]	@ temp.1133, <variable>.BsPhyAddr
	cmp	ip, #0	@ temp.1133,
	beq	.L72	@,
	ldr	r7, [r1, #264]	@ tmp272, <variable>.BsLenInBit
	cmp	r7, #0	@ tmp272,
	ble	.L72	@,
	bic	ip, ip, #15	@ tmp273, temp.1133,
	cmp	r2, ip	@ stream_base_addr, tmp273
	movcs	r2, ip	@ stream_base_addr, tmp273
.L72:
	add	r1, r1, #44	@ tmp420, ivtmp.1118,
	add	r0, r0, #1	@ tmp419, i,
	ldr	ip, [r1, #252]	@ D.31110, <variable>.BsPhyAddr
	cmp	ip, #0	@ D.31110,
	beq	.L92	@,
.L98:
	ldr	r7, [r1, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r7, #0	@ <variable>.BsLenInBit,
	ble	.L92	@,
	bic	ip, ip, #15	@ tmp439, D.31110,
	cmp	r2, ip	@ stream_base_addr, tmp439
	movcs	r2, ip	@ stream_base_addr, tmp439
	ldr	ip, [r1, #256]	@ temp.1133, <variable>.BsPhyAddr
	cmp	ip, #0	@ temp.1133,
	beq	.L94	@,
	b	.L109	@
.L106:
	cmp	r5, #1	@ VdhId,
	beq	.L110	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31063,
.L67:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L110:
	movw	r0, #:lower16:269680640	@ tmp199,
	movt	r0, #:upper16:269680640	@ tmp199,
	str	r0, [r2, #0]	@ tmp199,* vdm_reg_phy_addr.455
	b	.L66	@
.L84:
	cmn	r2, #1	@ stream_base_addr,
	beq	.L70	@,
	movw	r7, #1140	@ tmp281,
	str	r2, [r3, #0]	@ stream_base_addr,* StreamBaseAddr
	mul	r7, r7, r5	@ tmp280, tmp281, VdhId
	movw	ip, #:lower16:s_RegPhyBaseAddr	@ tmp285,
	movt	ip, #:upper16:s_RegPhyBaseAddr	@ tmp285,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #24]	@ stream_base_addr,
	ldrh	lr, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r8, [ip, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	cmp	lr, #120	@ <variable>.PicWidthInMb,
	add	r8, r8, #4	@ D.31129, s_RegPhyBaseAddr,
	movls	lr, #65536	@ iftmp.470,
	movhi	lr, #0	@ iftmp.470,
	str	lr, [sp, #12]	@ iftmp.470, D32
	bl	MEM_ReadPhyWord	@
	ldr	r2, [sp, #12]	@ D32, D32
	orr	r1, r0, r2	@ tmp288,, D32
	mov	r0, r8	@, D.31129
	bl	MEM_WritePhyWord	@
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:3148803	@ tmp290,
	movt	r0, #:upper16:3148803	@ tmp290,
	str	r0, [sp, #12]	@ tmp290, D32
	movw	r2, #:lower16:-1431655765	@ tmp365,
	str	r0, [r1, #60]	@ tmp290,
	movt	r2, #:upper16:-1431655765	@ tmp365,
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [sp, #12]	@ D32.1146, D32
	str	ip, [r3, #64]	@ D32.1146,
	ldr	r1, [sp, #12]	@ D32.1149, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #68]	@ D32.1149,
	ldr	ip, [sp, #12]	@ D32.1152, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.1152,
	ldr	r1, [sp, #12]	@ D32.1155, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #76]	@ D32.1155,
	ldr	ip, [sp, #12]	@ D32.1158, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.1158,
	ldr	r1, [sp, #12]	@ D32.1161, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #84]	@ D32.1161,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r3, #15	@ tmp330, <variable>.CurPicPhyAddr,
	str	r0, [ip, #96]	@ tmp330,
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r0, [r4, #148]	@ temp.1165, <variable>.PicHeightInMb
	sub	r3, r1, #1	@ tmp339, <variable>.PictureStructure,
	ldr	ip, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	uxtb	r3, r3	@ tmp340, tmp339
	cmp	r3, #1	@ tmp340,
	str	ip, [r1, #100]	@ <variable>.VahbStride,
	movls	r3, #2	@ iftmp.473,
	movhi	r3, #1	@ iftmp.473,
	mul	r0, r0, r3	@ tmp352, temp.1165, iftmp.473
	ldr	r1, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	ip, r0, #1	@ tmp353, tmp352,
	mov	r1, r1, asl #1	@ tmp350, <variable>.VahbStride,
	mov	r0, ip, lsr #1	@ tmp354, tmp353,
	mul	ip, r0, r1	@ tmp355, tmp354, tmp350
	str	ip, [r3, #104]	@ tmp355,
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	umull	ip, r2, r2, r1	@, tmp364, tmp365, <variable>.PictureStructure
	mov	r0, r2, lsr #1	@ tmp362, tmp364,
	add	r2, r0, r0, asl #1	@, tmp368, tmp362, tmp362,
	rsb	r3, r2, r1	@ tmp369, tmp368, <variable>.PictureStructure
	movw	r1, #1140	@ tmp384,
	uxtb	r0, r3	@ tmp370, tmp369
	cmp	r0, #2	@ tmp370,
	mul	r3, r1, r5	@ tmp383, tmp384, VdhId
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	ip, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r5, #0	@ tmp387,
	ldreq	r0, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	movw	r1, #:lower16:.LC26	@,
	ldrne	r0, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	movt	r1, #:upper16:.LC26	@,
	muleq	r2, ip, r2	@ tmp376, <variable>.PicHeightInMb, <variable>.PicWidthInMb
	addeq	r0, r0, #127	@ tmp372, <variable>.DnrMbinfoStaddr,
	addeq	r0, r0, r2, asl #3	@, tmp378, tmp372, tmp376,
	mov	r2, r5	@ tmp399, tmp387
	biceq	r0, r0, #127	@ tmp379, tmp378,
	str	r0, [sp, #12]	@ <variable>.DnrMbinfoStaddr, <variable>.dnr_mbinfo_staddr
	ldr	lr, [sp, #12]	@ D32.1185, D32
	mov	r0, #3	@,
	ldr	ip, [r3, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	r2, r5, #0, #1	@ tmp399, tmp387,,
	str	lr, [ip, #144]	@ D32.1185,
	ldr	ip, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	lr, [r3, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r4, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	ip, ip, r0	@ tmp391, <variable>.FwdRefIsFldSave,
	bfi	ip, r4, #2, #2	@ tmp391, <variable>.BwdRefIsFldSave,,
	str	ip, [lr, #148]	@ tmp391,
	ldr	ip, [r3, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #152]	@ tmp399,
	ldr	lr, [r3, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [sp, #12]	@ tmp387, D32
	str	r5, [lr, #108]	@ tmp387,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.31063, tmp387
	b	.L67	@
.L108:
	ldr	r0, [r4, #264]	@ tmp430, <variable>.BsLenInBit
	cmp	r0, #0	@ tmp430,
	ble	.L87	@,
	bic	r1, r1, #15	@ tmp431, temp.1133,
	cmp	r2, r1	@ stream_base_addr, tmp431
	movcs	r2, r1	@ stream_base_addr, tmp431
	b	.L87	@
.L107:
	str	r1, [sp, #4]	@,
	str	r3, [sp, #0]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	ldr	r3, [sp, #0]	@,
	subs	ip, r0, #0	@ D.31522,
	strne	ip, [r1, #0]	@ D.31522, <variable>.pVdmRegVirAddr
	bne	.L68	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31063,
	b	.L67	@
.L70:
	mvn	r2, #0	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	r3, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #0]	@,
	mov	r2, #0	@ tmp277,
	mvn	r0, #0	@ D.31063,
	str	r2, [r3, #0]	@ tmp277,* StreamBaseAddr
	b	.L67	@
	.fnend
	.size	MP2HAL_V200R004_CfgReg, .-MP2HAL_V200R004_CfgReg
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
	bls	.L120	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30687,
.L114:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L120:
	beq	.L121	@,
	movw	r5, #:lower16:g_HwMem	@ tmp143,
	movt	r5, #:upper16:g_HwMem	@ tmp143,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L122	@,
.L116:
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	add	r3, sp, #4	@,,
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.30699,
	bne	.L123	@,
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, r5	@, D.30699
	movt	r1, #:upper16:g_HwMem	@,
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
	mov	r0, r5	@ D.30687, D.30699
	b	.L114	@
.L122:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.30694,
	strne	r1, [r5, #0]	@ D.30694, <variable>.pVdmRegVirAddr
	bne	.L116	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30687,
	b	.L114	@
.L121:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	mov	r2, #69	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30687,
	b	.L114	@
.L123:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30687,
	b	.L114	@
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC1:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC2:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC3:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC4:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC5:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC6:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC7:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC8:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC9:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC10:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC11:
	.ascii	"picture width out of range\000"
	.space	1
.LC12:
	.ascii	"picture height out of range\000"
.LC13:
	.ascii	"Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC14:
	.ascii	"Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC15:
	.ascii	"1p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC16:
	.ascii	"1p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC17:
	.ascii	"1p last phy addr = 0x%x\012\000"
	.space	3
.LC18:
	.ascii	"2p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC19:
	.ascii	"2p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC20:
	.ascii	"\012*****No.%2d Down Msg (phy addr: %#8x) *****\012"
	.ascii	"\000"
	.space	2
.LC21:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC22:
	.ascii	"\012***** Down Msg print finished *****\012\000"
	.space	2
.LC23:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC24:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC25:
	.ascii	"stream_base_addr = %#x\012\000"
.LC26:
	.ascii	"HEAD_INF_OFFSET = 0x%x\012\000"
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
	.type	num.31218, %object
	.size	num.31218, 4
num.31218:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
