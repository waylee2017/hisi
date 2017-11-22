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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg2.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.o
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
	.global	MP2HAL_V200R004_MakeReg
	.type	MP2HAL_V200R004_MakeReg, %function
MP2HAL_V200R004_MakeReg:
	.fnstart
.LFB1916:
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
	ldrh	r3, [r2, #148]	@ temp.604, <variable>.PicHeightInMb
	sub	ip, r5, #1	@ tmp195, <variable>.PictureStructure,
	ldr	r4, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r5, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	ip, ip	@ tmp196, tmp195
	cmp	ip, #1	@ tmp196,
	str	r5, [r4, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	ip, #2	@ iftmp.520,
	movhi	ip, #1	@ iftmp.520,
	mul	ip, r3, ip	@ tmp200, temp.604, iftmp.520
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
.LFB1915:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r1, [r0, #152]	@ D.33797, <variable>.PicWidthInMb
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
	str	r1, [sp, #28]	@ D.33797, DnrCfg.pic_width_in_mb
	beq	.L15	@,
	ldrh	lr, [r0, #150]	@ <variable>.FrameHeightInMb, <variable>.FrameHeightInMb
	sub	ip, r2, #1	@ tmp147, <variable>.PictureStructure,
	add	r4, lr, #1	@ tmp150, <variable>.FrameHeightInMb,
	uxtb	r3, ip	@ tmp148, tmp147
	cmp	r3, #1	@ tmp148,
	mov	r2, r4, asr #1	@ tmp151, tmp150,
	movhi	r2, r2, asl #1	@ tmp155, tmp154,
	sub	r3, r2, #1	@ prephitmp.624, tmp155,
	str	r3, [sp, #32]	@ prephitmp.624, DnrCfg.pic_height_in_mb
.L9:
	mul	r4, r1, r3	@ tmp156, D.33797, prephitmp.624
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp172,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp172,
	mov	r2, #45312	@ tmp161,
	ldr	lr, [r0, r2]	@ <variable>.DnrMbInfoStAddr, <variable>.DnrMbInfoStAddr
	mov	r2, #8	@ tmp169,
	ldr	r3, [r3, #8]	@ D.33828, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	ldr	ip, [r0, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r1, [r0, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	cmp	r3, #0	@ D.33828,
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
	blx	r3	@ D.33828
.L13:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, pc}
.L15:
	ldrh	r3, [r0, #150]	@ prephitmp.624, <variable>.FrameHeightInMb
	str	r3, [sp, #32]	@ prephitmp.624, DnrCfg.pic_height_in_mb
	b	.L9	@
.L11:
	bl	vfmw_dprint_nothing	@
	b	.L13	@
	.fnend
	.size	MP2Hal_V200R004_OnlineDnr, .-MP2Hal_V200R004_OnlineDnr
	.align	2
	.global	MP2HAL_V200R004_WriteSliceMsg
	.type	MP2HAL_V200R004_WriteSliceMsg, %function
MP2HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r0, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r6, #0	@ tmp231,
	mov	r5, r1	@ SlcDnMsgVirAddr, SlcDnMsgVirAddr
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	str	r3, [sp, #16]	@ StreamBaseAddr, %sfp
	movw	r3, #45308	@ tmp232,
	str	r2, [sp, #28]	@ SlcDnMsgPhyAddr, %sfp
	ldr	r8, [r4, r3]	@ SliceNum, <variable>.SlcNum
	str	r6, [sp, #36]	@ tmp231, D32
	streq	r0, [sp, #20]	@ <variable>.slice_start_mbn, %sfp
	bne	.L39	@,
.L18:
	cmp	r8, #0	@ SliceNum,
	ble	.L21	@,
	ldr	ip, [sp, #20]	@, %sfp
	mov	r6, #0	@ i,
	ldr	sl, [r4, #284]	@ prephitmp.673, <variable>.slice_start_mbn
	add	r7, sp, #36	@ tmp427,,
	ldr	r3, [r4, #240]	@ prephitmp.715, <variable>.slice_start_mbn
	mov	r9, ip, asl #2	@,,
	str	r9, [sp, #24]	@, %sfp
	mov	r9, #44	@ tmp426,
	b	.L30	@
.L22:
	add	r6, r6, #1	@ i, i,
	cmp	r8, r6	@ SliceNum, i
	ble	.L21	@,
.L40:
	sub	sl, r6, #1	@ tmp418, i,
	mla	r1, r9, r6, r4	@ tmp416, tmp426, i, pMp2DecParam
	mla	r3, r9, sl, r4	@ tmp422, tmp426, tmp418, pMp2DecParam
	ldr	sl, [r1, #284]	@ prephitmp.673, <variable>.slice_start_mbn
	ldr	r3, [r3, #284]	@ prephitmp.715, <variable>.slice_start_mbn
.L30:
	cmp	r6, #0	@ i,
	movle	r0, #0	@,
	movgt	r0, #1	@,
	cmp	sl, r3	@ prephitmp.673, prephitmp.715
	movhi	r0, #0	@,,
	cmp	r0, #0	@ tmp282,
	mov	sl, r0	@ tmp282,
	bne	.L22	@,
	mla	fp, r9, r6, r4	@ tmp287, tmp426, i, pMp2DecParam
	ldr	r3, [sp, #24]	@, %sfp
	str	r0, [sp, #36]	@ tmp282, D32
	add	r1, r6, r3	@, i,
	ldr	r2, [r7, #0]	@ tmp302,
	str	r1, [sp, #8]	@, %sfp
	mov	lr, r1, asl #5	@,,
	str	lr, [sp, #12]	@, %sfp
	ldr	lr, [fp, #252]	@ temp.710, <variable>.BsPhyAddr
	ldr	r0, [fp, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	ldr	ip, [fp, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	and	r3, lr, #15	@ tmp289, temp.710,
	bfi	r2, r0, #0, #24	@ tmp302, <variable>.BsLenInBit,,
	add	r1, ip, r3, asl #3	@, bit_offset_0.719, <variable>.BsBitOffset, tmp289,
	bfi	r2, r1, #24, #7	@ tmp304, bit_offset_0.719,,
	str	r2, [r7, #0]	@ tmp304,
	ldr	ip, [sp, #8]	@, %sfp
	str	r2, [r5, ip, asl #5]	@ D32.724,* SlcDnMsgVirAddr
	str	lr, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldmib	sp, {r3, ip}	@ phole ldm
	ldr	r0, [sp, #16]	@, %sfp
	mov	r2, ip, asl #3	@ tmp310,,
	bic	r1, r3, #15	@ tmp307, temp.710,
	rsb	r3, r0, r1	@ tmp308,, tmp307
	add	r1, r2, #1	@ tmp311, tmp310,
	mov	r0, sl	@ tmp309, tmp282
	bfi	r0, r3, #0, #24	@ tmp309, tmp308,,
	str	r0, [r7, #0]	@ tmp309,
	str	r0, [r5, r1, asl #2]	@ D32.730,* SlcDnMsgVirAddr
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #8]	@, %sfp
	str	sl, [sp, #36]	@ tmp282, D32
	ldr	r3, [fp, #256]	@ temp.731, <variable>.BsPhyAddr
	mov	r2, ip, asl #2	@ tmp335,,
	ldr	lr, [fp, #264]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	and	r0, r3, #15	@ tmp319, temp.731,
	ldr	r1, [fp, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	add	ip, r2, #1	@ tmp336, tmp335,
	ldr	r2, [r7, #0]	@ tmp332,
	bfi	r2, lr, #0, #24	@ tmp332, <variable>.BsLenInBit,,
	add	lr, r1, r0, asl #3	@, bit_offset_1.739, <variable>.BsBitOffset, tmp319,
	bfi	r2, lr, #24, #7	@ tmp334, bit_offset_1.739,,
	str	r2, [r7, #0]	@ tmp334,
	str	r2, [r5, ip, asl #3]	@ D32.744,* SlcDnMsgVirAddr
	str	r3, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	str	sl, [sp, #36]	@ tmp282, D32
	ldr	r1, [fp, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	ldr	sl, [sp, #4]	@,
	cmp	r1, #0	@ <variable>.BsPhyAddr,
	bicne	sl, sl, #15	@ tmp346, temp.731,
	ldrne	r1, [r7, #0]	@ tmp348,
	ldrne	r0, [sp, #16]	@, %sfp
	ldreq	sl, [r7, #0]	@ tmp350,
	bfieq	sl, r1, #0, #24	@ tmp350, <variable>.BsPhyAddr,,
	streq	sl, [r7, #0]	@ tmp350,
	rsbne	sl, r0, sl	@ tmp347,, tmp346
	bfine	r1, sl, #0, #24	@ tmp348, tmp347,,
	strne	r1, [r7, #0]	@ tmp348,
	mul	sl, r9, r6	@ tmp354, tmp426, i
	ldr	fp, [sp, #12]	@, %sfp
	ldr	r2, [sp, #36]	@ D32.752, D32
	add	r6, r6, #1	@ j, i,
	add	ip, fp, #12	@ tmp351,,
	add	fp, sl, r4	@ tmp356, tmp354, pMp2DecParam
	str	r2, [r5, ip]	@ D32.752,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #8]	@, %sfp
	mov	r3, #0	@,
	str	r3, [sp, #36]	@, D32
	ldr	ip, [fp, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r3, [r7, #0]	@ tmp359,
	mov	r0, r1, asl #1	@ tmp367,,
	add	r1, r0, #1	@ tmp368, tmp367,
	bfi	r3, ip, #0, #6	@ tmp359, <variable>.quantiser_scale_code,,
	str	r3, [r7, #0]	@ tmp359,
	ldr	r2, [fp, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	bfi	r3, r2, #6, #1	@ tmp366, <variable>.intra_slice,,
	str	r3, [r7, #0]	@ tmp366,
	str	r3, [r5, r1, asl #4]	@ D32.761,* SlcDnMsgVirAddr
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #12]	@, %sfp
	mov	r0, #0	@,
	str	r0, [sp, #36]	@, D32
	ldr	r1, [fp, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r2, ip, #20	@ tmp379,,
	mov	r3, r0	@ tmp377,
	bfi	r3, r1, #0, #20	@ tmp377, <variable>.slice_start_mbn,,
	str	r3, [r7, #0]	@ tmp377,
	str	r3, [r5, r2]	@ D32.764,
	bl	vfmw_dprint_nothing	@
	cmp	r8, r6	@ SliceNum, j
	ble	.L25	@,
	mla	ip, r9, r6, r4	@ tmp388, tmp426, j, pMp2DecParam
	ldr	r2, [fp, #284]	@ temp.773, <variable>.slice_start_mbn
	ldr	r3, [ip, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, r2	@ <variable>.slice_start_mbn, temp.773
	bhi	.L25	@,
	mvn	lr, r6	@ tmp430, j
	add	r0, lr, r8	@ tmp429, tmp430, SliceNum
	add	sl, sl, #248	@ tmp393, tmp354,
	tst	r0, #1	@ tmp429,
	add	sl, r4, sl	@ tmp394, pMp2DecParam, tmp393
	add	r3, sl, #4	@ ivtmp.691, tmp394,
	beq	.L26	@,
	ldr	r1, [r3, #120]	@ D.33768, <variable>.slice_start_mbn
	add	r6, r6, #1	@ j, j,
	add	r3, sl, #48	@ ivtmp.691, tmp394,
	cmp	r1, r2	@ D.33768, temp.773
	bls	.L26	@,
	b	.L25	@
.L27:
	ldr	ip, [r3, #120]	@ D.33768, <variable>.slice_start_mbn
	add	r3, r3, #88	@ ivtmp.691, ivtmp.691,
	cmp	ip, r2	@ D.33768, temp.773
	bhi	.L25	@,
	ldr	r1, [r1, #120]	@ D.33768, <variable>.slice_start_mbn
	add	r6, r6, #1	@ j, j,
	cmp	r1, r2	@ D.33768, temp.773
	bhi	.L25	@,
.L26:
	add	r6, r6, #1	@ j, j,
	add	r1, r3, #44	@ tmp432, ivtmp.691,
	cmp	r8, r6	@ SliceNum, j
	bgt	.L27	@,
.L25:
	cmp	r6, r8	@ j, SliceNum
	ldr	r0, [sp, #12]	@, %sfp
	mov	lr, #0	@ tmp408,
	mlane	r3, r9, r6, r4	@ tmp401, tmp426, j, pMp2DecParam
	ldreqh	r3, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	add	ip, r0, #24	@ tmp409,,
	ldrne	r1, [sp, #20]	@, %sfp
	moveq	sl, #0	@ prephitmp.671,
	ldrne	r2, [sp, #28]	@, %sfp
	muleq	r3, r2, r3	@ tmp397, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	sl, r6, r1	@ tmp404, j,
	ldrne	r3, [r3, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r6, r6, #1	@ i, j,
	addne	sl, r2, sl, asl #5	@, prephitmp.671,, tmp404,
	add	r6, r6, #1	@ i, i,
	sub	r2, r3, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	bfi	lr, r2, #0, #20	@ tmp408, slice_end_mbn,,
	str	lr, [r7, #0]	@ tmp408,
	str	lr, [r5, ip]	@ D32.771,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #12]	@, %sfp
	str	sl, [r7, #0]	@ prephitmp.671, <variable>.next_slice_para_addr
	add	r3, r1, #28	@ tmp412,,
	str	sl, [r5, r3]	@ D32.775,
	bl	vfmw_dprint_nothing	@
	cmp	r8, r6	@ SliceNum, i
	bgt	.L40	@,
.L21:
	mov	r0, #0	@,
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L39:
	ldr	r7, [r4, #252]	@ D.33635, <variable>.BsPhyAddr
	mov	lr, #1	@ tmp240,
	ldr	r2, [r4, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	and	r1, r7, #15	@ tmp235, D.33635,
	add	r3, r2, r1, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp235,
	bfi	lr, r3, #24, #7	@ tmp240, bit_offset_0,,
	str	lr, [r5, #0]	@ tmp240,* SlcDnMsgVirAddr
	str	lr, [sp, #36]	@ tmp240,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #16]	@, %sfp
	bic	ip, r7, #15	@ tmp243, D.33635,
	mov	r7, r6	@ tmp245, tmp231
	rsb	r2, r0, ip	@ tmp244,, tmp243
	bfi	r7, r2, #0, #24	@ tmp245, tmp244,,
	str	r7, [r5, #4]	@ tmp245,
	str	r7, [sp, #36]	@ tmp245,
	bl	vfmw_dprint_nothing	@
	ldr	r7, [r4, #256]	@ D.33661, <variable>.BsPhyAddr
	mov	ip, #0	@ tmp251,
	ldr	r3, [r4, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	and	r1, r7, #15	@ tmp247, D.33661,
	add	r0, r3, r1, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp247,
	bfi	ip, r0, #24, #7	@ tmp251, bit_offset_1,,
	str	ip, [r5, #8]	@ tmp251,
	str	ip, [sp, #36]	@ tmp251,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r3, #1	@,
	str	r3, [sp, #20]	@, %sfp
	cmp	r2, #0	@ <variable>.BsPhyAddr,
	bicne	r2, r7, #15	@ tmp255, D.33661,
	streq	r2, [sp, #36]	@ <variable>.BsPhyAddr,
	ldrne	r1, [sp, #16]	@, %sfp
	rsbne	r2, r1, r2	@ tmp256,, tmp255
	bfine	r6, r2, #0, #24	@ tmp257, tmp256,,
	strne	r6, [sp, #36]	@ tmp257,
	ldr	r0, [sp, #36]	@ D32.700, D32
	mov	r6, #0	@ tmp260,
	str	r0, [r5, #12]	@ D32.700,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r4, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	and	r1, ip, #63	@ tmp264, <variable>.quantiser_scale_code,
	bfi	r1, r2, #6, #1	@ tmp264, <variable>.intra_slice,,
	str	r1, [r5, #16]	@ tmp264,
	str	r1, [sp, #36]	@ tmp264,
	bl	vfmw_dprint_nothing	@
	mov	r3, r6	@ tmp267, tmp260
	bfi	r3, r6, #0, #20	@ tmp267, tmp260,,
	str	r3, [r5, #20]	@ tmp267,
	str	r3, [sp, #36]	@ tmp267,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	ip, r0, #1	@ tmp270, <variable>.slice_start_mbn,
	bfi	r6, ip, #0, #20	@ tmp272, tmp270,,
	str	r6, [r5, #24]	@ tmp272,
	str	r6, [sp, #36]	@ tmp272,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #28]	@, %sfp
	add	r1, r2, #32	@ tmp275,,
	str	r1, [r5, #28]	@ tmp275,
	str	r1, [sp, #36]	@ tmp275, <variable>.next_slice_para_addr
	b	.L18	@
	.fnend
	.size	MP2HAL_V200R004_WriteSliceMsg, .-MP2HAL_V200R004_WriteSliceMsg
	.align	2
	.global	MP2HAL_V200R004_CfgDnMsg
	.type	MP2HAL_V200R004_CfgDnMsg, %function
MP2HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r7, r1	@ pHwMem, pHwMem
	mov	r5, r3	@ StreamBaseAddr, StreamBaseAddr
	mov	r4, #0	@ tmp234,
	str	r4, [sp, #4]	@ tmp234, D32
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ D.34094,
	beq	.L56	@,
	ldrh	r3, [r6, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L56	@,
	ldrh	r2, [r6, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L56	@,
	sub	lr, r3, #1	@ tmp241, <variable>.PicWidthInMb,
	ldr	sl, [r6, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	sub	r2, r2, #1	@ tmp245, <variable>.PicHeightInMb,
	mov	ip, lr, asl #23	@ tmp246, tmp241,
	mov	r9, ip, lsr #23	@ tmp246, tmp246,
	bfi	r9, r2, #16, #9	@ tmp246, tmp245,,
	bfi	r9, sl, #25, #1	@ tmp248, <variable>.Mpeg1Flag,,
	str	r9, [r8, #0]	@ tmp248,* D.34094
	ldrb	r3, [r6, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrb	r0, [r6, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	and	r9, r3, #1	@ tmp254, <variable>.FramePredFrameDct,
	ldrb	lr, [r6, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	bfi	r9, r1, #8, #2	@ tmp254, <variable>.PictureStructure,,
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r9, r0, #10, #1	@ tmp258, <variable>.SecondFieldFlag,,
	ldrb	sl, [r6, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	bfi	r9, lr, #16, #1	@ tmp262, <variable>.ConcealmentMotionVectors,,
	ldrb	r2, [r6, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	bfi	r9, ip, #24, #3	@ tmp266, <variable>.PicCodingType,,
	bfi	r9, sl, #27, #1	@ tmp270, <variable>.Mp1FwdmvFullPel,,
	bfi	r9, r2, #28, #1	@ tmp274, <variable>.Mp1BwdmvFullPel,,
	str	r9, [r8, #4]	@ tmp274,
	ldrb	r3, [r6, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r1, [r6, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r0, [r6, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	and	sl, r3, #15	@ tmp283, <variable>.Fcode,
	ldrb	lr, [r6, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	bfi	sl, r1, #8, #4	@ tmp283, <variable>.Fcode,,
	ldrb	ip, [r6, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	sl, r0, #16, #4	@ tmp287, <variable>.Fcode,,
	bfi	sl, lr, #24, #4	@ tmp291, <variable>.Fcode,,
	bfi	sl, ip, #31, #1	@ tmp295, <variable>.TopFieldFirst,,
	str	sl, [r8, #8]	@ tmp295,
	ldrb	r9, [r6, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldrb	r2, [r6, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldrb	r1, [r6, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	and	r3, r9, #3	@ tmp304, <variable>.IntraDcPrecision,
	ldrb	r0, [r6, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	bfi	r3, r2, #8, #1	@ tmp304, <variable>.QuantType,,
	bfi	r3, r1, #16, #1	@ tmp308, <variable>.IntraVlcFormat,,
	bfi	r3, r0, #24, #1	@ tmp312, <variable>.AlternateScan,,
	str	r3, [r8, #12]	@ tmp312,
	ldr	lr, [r6, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	ip, lr, #15	@ tmp319, <variable>.BwdRefPhyAddr,
	str	ip, [r8, #16]	@ tmp319,
	ldr	sl, [r6, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	r9, sl, #15	@ tmp323, <variable>.FwdRefPhyAddr,
	str	r9, [r8, #20]	@ tmp323,
	ldr	r2, [r6, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r2, #15	@ tmp327, <variable>.DispFramePhyAddr,
	str	r1, [r8, #24]	@ tmp327,
	ldr	r0, [r6, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r3, r0, #15	@ tmp331, <variable>.PmvColmbPhyAddr,
	str	r3, [sp, #4]	@ tmp331, <variable>.current_pmv_addr
	str	r3, [r8, #28]	@ tmp331,
	ldr	r0, [r6, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	mov	sl, r0	@ D.34172,
	ldr	r0, [r6, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, #0	@ <variable>.StreamLength,
	mov	r9, r0	@ D.34176,
	beq	.L58	@,
	ldr	lr, [r6, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	cmp	sl, #0	@ D.34172,
	ldr	r2, [r6, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r1, [r6, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r3, [r6, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	sl, r1, lr, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	ip, r3, r2, lsr #3	@, BytePos0.856, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r0, sl, #15	@ tmp371, BytePos1,
	bic	lr, ip, #15	@ tmp370, BytePos0.856,
	and	r1, ip, #15	@ tmp378, BytePos0.856,
	rsb	r3, r0, lr	@ tmp372, tmp371, tmp370
	bfi	r4, r3, #0, #24	@ tmp373, tmp372,,
	str	r4, [r8, #32]	@ tmp373,
	ldr	r2, [r6, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r0, [r6, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	and	ip, r2, #7	@ tmp383, <variable>.StreamBitOffset,
	add	r4, ip, r1, asl #3	@, tmp386, tmp383, tmp378,
	bic	lr, r0, #-16777216	@ tmp387, <variable>.StreamLength,
	bfi	lr, r4, #24, #7	@ tmp387, tmp386,,
	str	lr, [sp, #4]	@ tmp387,
	str	lr, [r8, #36]	@ tmp387,
	beq	.L49	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L49:
	mov	r1, #0	@ tmp388,
	and	sl, sl, #15	@ tmp396, BytePos1,
	mov	r4, r1	@ tmp390, tmp388
	bfi	r4, r1, #0, #24	@ tmp390, tmp388,,
	str	r4, [r8, #40]	@ tmp390,
	cmp	r9, r1	@ D.34176,
	ldr	lr, [r6, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [r6, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r3, lr, #24	@ tmp392, <variable>.StreamLength,
	and	ip, r2, #7	@ tmp401, <variable>.StreamBitOffset,
	bic	r4, r3, #-16777216	@ tmp405, tmp392,
	add	r0, ip, sl, asl #3	@, tmp404, tmp401, tmp396,
	bfi	r4, r0, #24, #7	@ tmp405, tmp404,,
	str	r4, [sp, #4]	@ tmp405,
	str	r4, [r8, #44]	@ tmp405,
	beq	.L48	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L48:
	add	r3, sp, #4	@ pretmp.794,,
	add	r0, r8, #64	@ ivtmp.823, D.34094,
	add	sl, r8, #192	@ D.34546, D.34094,
	mov	r2, r6	@ ivtmp.819, pMp2DecParam
	mov	r4, #0	@ tmp431,
.L50:
	str	r4, [sp, #4]	@ tmp431, D32
	add	r1, r2, #2	@ tmp432, ivtmp.819,
	ldrb	lr, [r2, #80]	@ zero_extendqisi2	@ tmp407, <variable>.IntraQuantTab
	mov	ip, r0	@ tmp433, ivtmp.823
	strb	lr, [r3, #0]	@ tmp407, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r2, #81]	@ zero_extendqisi2	@ tmp409, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp409, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r2, #16]	@ zero_extendqisi2	@ tmp411, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp411, <variable>.non_Intra_quantiser_matrix_even
	ldrb	lr, [r2, #17]	@ zero_extendqisi2	@ tmp413, <variable>.NonIntraQuantTab
	add	r2, r1, #2	@ ivtmp.819, tmp432,
	strb	lr, [r3, #3]	@ tmp413, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #4]	@ D32.885, D32
	str	lr, [ip], #4	@ D32.885,
	str	r4, [sp, #4]	@ tmp431, D32
	ldrb	lr, [r1, #80]	@ zero_extendqisi2	@ tmp437, <variable>.IntraQuantTab
	strb	lr, [r3, #0]	@ tmp437, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r1, #81]	@ zero_extendqisi2	@ tmp438, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp438, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r1, #16]	@ zero_extendqisi2	@ tmp439, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp439, <variable>.non_Intra_quantiser_matrix_even
	ldrb	r1, [r1, #17]	@ zero_extendqisi2	@ tmp440, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ tmp440, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #4]	@ D32.885, D32
	str	lr, [r0, #4]	@ D32.885,
	add	r0, ip, #4	@ ivtmp.823, tmp433,
	cmp	r0, sl	@ ivtmp.823, D.34546
	bne	.L50	@,
	ldr	r2, [r7, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r3, r2, #15	@ tmp418, <variable>.PmvTopAddr,
	str	r3, [sp, #4]	@ tmp418, <variable>.pmv_top_addr
	str	r3, [r8, #192]	@ tmp418,
	ldr	r0, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r7, r0, #15	@ tmp419, <variable>.MsgSlotAddr,
	add	r7, r7, #256	@ SlcDnMsgPhyAddr, tmp419,
	mov	r0, r7	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.34260,
	beq	.L56	@,
	str	r7, [sp, #4]	@ SlcDnMsgPhyAddr, <variable>.first_slc_dnmsg_addr
	mov	r0, r6	@, pMp2DecParam
	str	r7, [r8, #252]	@ SlcDnMsgPhyAddr,
	mov	r2, r7	@, SlcDnMsgPhyAddr
	mov	r3, r5	@, StreamBaseAddr
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	movw	r1, #:lower16:g_PrintEnable	@ tmp423,
	movt	r1, #:upper16:g_PrintEnable	@ tmp423,
	ldr	ip, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	tst	ip, #16	@ g_PrintEnable,
	bne	.L52	@,
.L57:
	mov	r0, r4	@ D.34097, tmp431
.L43:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L58:
	ldr	ip, [r6, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r1, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r0, [r6, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r1, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	cmp	sl, #0	@ D.34172,
	str	r1, [r8, #32]	@ <variable>.StreamLength,
	add	r4, r0, ip, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	ldr	lr, [r6, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	sl, [r6, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	r1, r4, #15	@ tmp346, BytePos0,
	add	r2, lr, #24	@ tmp342, <variable>.StreamLength,
	and	r0, sl, #7	@ tmp351, <variable>.StreamBitOffset,
	bfi	r3, r2, #0, #24	@ <variable>.StreamLength, tmp342,,
	add	r4, r0, r1, asl #3	@, tmp354, tmp351, tmp346,
	bfi	r3, r4, #24, #7	@ <variable>.StreamLength, tmp354,,
	str	r3, [sp, #4]	@ <variable>.StreamLength,
	str	r3, [r8, #36]	@ <variable>.StreamLength,
	beq	.L47	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L47:
	mov	r3, #0	@ tmp356,
	mov	sl, r3	@ tmp361, tmp356
	mov	r2, r3	@ tmp358, tmp356
	bfi	sl, r3, #24, #7	@ tmp361, tmp356,,
	bfi	r2, r3, #0, #24	@ tmp358, tmp356,,
	str	r2, [r8, #40]	@ tmp358,
	str	sl, [r8, #44]	@ tmp361,
	b	.L48	@
.L52:
	movw	r0, #:lower16:.LANCHOR0	@ tmp426,
	movt	r0, #:upper16:.LANCHOR0	@ tmp426,
	ldr	r3, [r0, #0]	@ num, num
	add	lr, r3, #1	@ tmp429, num,
	str	lr, [r0, #0]	@ tmp429, num
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	b	.L57	@
.L56:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34097,
	b	.L43	@
	.fnend
	.size	MP2HAL_V200R004_CfgDnMsg, .-MP2HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	cmp	r2, #1	@ VdhId,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r3	@ StreamBaseAddr, StreamBaseAddr
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	mov	r3, #0	@ tmp192,
	str	r3, [sp, #12]	@ tmp192, D32
	bls	.L92	@,
.L65:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33931,
.L62:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L92:
	beq	.L65	@,
	ldr	r0, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L104	@,
.L64:
	movw	r5, #:lower16:g_HwMem	@ tmp348,
	movt	r5, #:upper16:g_HwMem	@ tmp348,
	mvn	r0, #0	@ tmp198,
	mov	r2, #0	@ tmp199,
	ldr	sl, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, r2	@ tmp204, tmp199
	mov	ip, #3	@ tmp218,
	mov	lr, ip	@ tmp221, tmp218
	str	r0, [sl, #32]	@ tmp198,
	ldrh	r8, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldrh	sl, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r7, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mul	r8, sl, r8	@ tmp202, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	r8, r8, r0	@ tmp203, tmp202,
	bfi	r3, r8, #0, #20	@ tmp204, tmp203,,
	orr	r8, r3, #1090519040	@ tmp213, tmp204,
	orr	r3, r8, #4194304	@ tmp213, tmp213,
	movw	r8, #45316	@ tmp231,
	bfi	r3, r2, #25, #1	@ tmp213, tmp199,,
	str	r3, [r7, #8]	@ tmp213,
	ldr	r3, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r7, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r4, r8]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r3, r3, lsr #6	@ tmp219, <variable>.VahbStride,
	bfi	lr, r3, #4, #10	@ tmp221, tmp219,,
	orr	r3, lr, #16384	@ tmp224, tmp221,
	bic	r3, r3, #32768	@ tmp225, tmp224,
	bfi	r3, ip, #16, #12	@ tmp225, tmp218,,
	orr	ip, r3, #536870912	@ tmp229, tmp225,
	bic	lr, ip, #-1879048192	@ tmp233, tmp229,
	bfi	lr, r8, #30, #1	@ tmp233, <variable>.Compress_en,,
	str	lr, [r7, #12]	@ tmp233,
	ldr	lr, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp239, <variable>.MsgSlotAddr,
	str	ip, [lr, #16]	@ tmp239,
	ldr	lr, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #45308	@ tmp249,
	bic	ip, r3, #15	@ tmp245, <variable>.MsgSlotAddr,
	str	ip, [lr, #20]	@ tmp245,
	ldr	ip, [r4, r1]	@ D.33989, <variable>.SlcNum
	str	r2, [sp, #12]	@ tmp199, D32
	cmp	ip, r2	@ D.33989,
	beq	.L66	@,
	ldr	r3, [r4, #252]	@ temp.950, <variable>.BsPhyAddr
	add	r2, ip, r0	@ tmp349, D.33989,
	mov	r1, r0	@ stream_base_addr.1003, tmp198
	and	r0, r2, #1	@ tmp351, tmp349,
	cmp	r3, #0	@ temp.950,
	beq	.L81	@,
	ldr	r2, [r4, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r2, #0	@ <variable>.BsLenInBit,
	ble	.L81	@,
	bic	r3, r3, #15	@ tmp361, temp.950,
	cmp	r1, r3	@ stream_base_addr.1003, tmp361
	movcs	r1, r3	@ stream_base_addr.1003, tmp361
.L81:
	ldr	r3, [r4, #256]	@ D.33982, <variable>.BsPhyAddr
	cmp	r3, #0	@ D.33982,
	bne	.L105	@,
.L83:
	mov	r2, #1	@ i,
	cmp	r2, ip	@ i, D.33989
	add	r3, r4, #44	@ ivtmp.929, pMp2DecParam,
	beq	.L80	@,
	cmp	r0, #0	@ tmp351,
	beq	.L67	@,
	ldr	r0, [r3, #252]	@ temp.950, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.950,
	bne	.L94	@,
.L88:
	ldr	r0, [r3, #256]	@ D.33982, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.33982,
	beq	.L90	@,
.L106:
	ldr	lr, [r3, #264]	@ tmp374, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp374,
	ble	.L90	@,
	bic	r0, r0, #15	@ tmp375, D.33982,
	cmp	r1, r0	@ stream_base_addr.1003, tmp375
	movcs	r1, r0	@ stream_base_addr.1003, tmp375
.L90:
	add	r2, r2, #1	@ i, tmp352,
	add	r3, r3, #44	@ ivtmp.929, tmp353,
	cmp	r2, ip	@ i, D.33989
	beq	.L80	@,
.L67:
	ldr	r0, [r3, #252]	@ temp.950, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.950,
	beq	.L70	@,
	ldr	lr, [r3, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L70	@,
	bic	r0, r0, #15	@ tmp253, temp.950,
	cmp	r1, r0	@ stream_base_addr.1003, tmp253
	movcs	r1, r0	@ stream_base_addr.1003, tmp253
.L70:
	ldr	r0, [r3, #256]	@ D.33982, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.33982,
	beq	.L68	@,
	ldr	lr, [r3, #264]	@ tmp250, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp250,
	ble	.L68	@,
	bic	r0, r0, #15	@ tmp251, D.33982,
	cmp	r1, r0	@ stream_base_addr.1003, tmp251
	movcs	r1, r0	@ stream_base_addr.1003, tmp251
.L68:
	add	r3, r3, #44	@ tmp353, ivtmp.929,
	add	r2, r2, #1	@ tmp352, i,
	ldr	r0, [r3, #252]	@ temp.950, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.950,
	beq	.L88	@,
.L94:
	ldr	lr, [r3, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	lr, #0	@ <variable>.BsLenInBit,
	ble	.L88	@,
	bic	r0, r0, #15	@ tmp372, temp.950,
	cmp	r1, r0	@ stream_base_addr.1003, tmp372
	movcs	r1, r0	@ stream_base_addr.1003, tmp372
	ldr	r0, [r3, #256]	@ D.33982, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.33982,
	bne	.L106	@,
	add	r2, r2, #1	@ i, tmp352,
	add	r3, r3, #44	@ ivtmp.929, tmp353,
	cmp	r2, ip	@ i, D.33989
	bne	.L67	@,
.L80:
	cmn	r1, #1	@ stream_base_addr.1003,
	beq	.L66	@,
	str	r1, [r6, #0]	@ stream_base_addr.1003,* StreamBaseAddr
	ldr	r0, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #24]	@ stream_base_addr.1003,
	movw	r0, #:lower16:269729796	@,
	ldrh	lr, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r0, #:upper16:269729796	@,
	cmp	lr, #120	@ <variable>.PicWidthInMb,
	movhi	lr, #0	@ tmp259,
	movls	lr, #65536	@ tmp260,
	str	lr, [sp, #12]	@ tmp260, D32
	bl	MEM_ReadPhyWord	@
	movw	ip, #:lower16:s_RegPhyBaseAddr	@ tmp262,
	movt	ip, #:upper16:s_RegPhyBaseAddr	@ tmp262,
	ldr	r1, [sp, #12]	@ D32, D32
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@ tmp265,, D32
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r6, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r3, #:lower16:3148803	@ tmp267,
	movt	r3, #:upper16:3148803	@ tmp267,
	str	r3, [sp, #12]	@ tmp267, D32
	movw	r2, #:lower16:-1431655765	@ tmp312,
	str	r3, [r6, #60]	@ tmp267,
	movt	r2, #:upper16:-1431655765	@ tmp312,
	ldr	r0, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [sp, #12]	@ D32.955, D32
	str	ip, [r0, #64]	@ D32.955,
	ldr	r6, [sp, #12]	@ D32.958, D32
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r1, #68]	@ D32.958,
	ldr	r0, [sp, #12]	@ D32.961, D32
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r3, #72]	@ D32.961,
	ldr	r1, [sp, #12]	@ D32.964, D32
	ldr	ip, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #76]	@ D32.964,
	ldr	r0, [sp, #12]	@ D32.967, D32
	ldr	r6, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r6, #80]	@ D32.967,
	ldr	ip, [sp, #12]	@ D32.970, D32
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #84]	@ D32.970,
	ldr	r6, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r1, #15	@ tmp286, <variable>.CurPicPhyAddr,
	str	r0, [r6, #96]	@ tmp286,
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r0, [r4, #148]	@ temp.974, <variable>.PicHeightInMb
	sub	ip, r3, #1	@ tmp292, <variable>.PictureStructure,
	ldr	r1, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r6, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	uxtb	r3, ip	@ tmp293, tmp292
	cmp	r3, #1	@ tmp293,
	str	r1, [r6, #100]	@ <variable>.VahbStride,
	movls	r3, #2	@ iftmp.536,
	movhi	r3, #1	@ iftmp.536,
	mul	ip, r0, r3	@ tmp302, temp.974, iftmp.536
	ldr	r1, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r6, ip, #1	@ tmp303, tmp302,
	mov	ip, r1, asl #1	@ tmp300, <variable>.VahbStride,
	mov	r0, r6, lsr #1	@ tmp304, tmp303,
	mul	r1, r0, ip	@ tmp305, tmp304, tmp300
	str	r1, [r3, #104]	@ tmp305,
	ldrb	ip, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	umull	r1, r6, r2, ip	@, tmp311, tmp312, <variable>.PictureStructure
	mov	r2, r6, lsr #1	@ tmp309, tmp311,
	add	r0, r2, r2, asl #1	@, tmp315, tmp309, tmp309,
	rsb	r3, r0, ip	@ tmp316, tmp315, <variable>.PictureStructure
	uxtb	r6, r3	@ tmp317, tmp316
	cmp	r6, #2	@ tmp317,
	ldreqh	r0, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r1, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldreq	r6, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	ldrne	r6, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	muleq	r0, r1, r0	@ tmp323, <variable>.PicHeightInMb, <variable>.PicWidthInMb
	addeq	r6, r6, #127	@ tmp319, <variable>.DnrMbinfoStaddr,
	addeq	r6, r6, r0, asl #3	@, tmp325, tmp319, tmp323,
	biceq	r6, r6, #127	@ tmp326, tmp325,
	str	r6, [sp, #12]	@ <variable>.DnrMbinfoStaddr, <variable>.dnr_mbinfo_staddr
	ldr	r1, [sp, #12]	@ D32.994, D32
	mov	r6, #0	@ tmp331,
	ldr	ip, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, r6	@ tmp340, tmp331
	bfi	r3, r6, #0, #1	@ tmp340, tmp331,,
	str	r1, [ip, #144]	@ D32.994,
	ldr	r2, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	ip, r2, #3	@ tmp335, <variable>.FwdRefIsFldSave,
	bfi	ip, r0, #2, #2	@ tmp335, <variable>.BwdRefIsFldSave,,
	str	ip, [r1, #148]	@ tmp335,
	ldr	r2, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #152]	@ tmp340,
	ldr	ip, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [sp, #12]	@ tmp331, D32
	str	r6, [ip, #108]	@ tmp331,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.33931, tmp331
	b	.L62	@
.L105:
	ldr	lr, [r4, #264]	@ tmp363, <variable>.BsLenInBit
	cmp	lr, #0	@ tmp363,
	ble	.L83	@,
	bic	r2, r3, #15	@ tmp364, D.33982,
	cmp	r1, r2	@ stream_base_addr.1003, tmp364
	movcs	r1, r2	@ stream_base_addr.1003, tmp364
	b	.L83	@
.L104:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r1, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ D.33937
	strne	r0, [r1, #0]	@ D.33937, <variable>.pVdmRegVirAddr
	bne	.L64	@,
	b	.L65	@
.L66:
	bl	vfmw_dprint_nothing	@
	mov	r1, #0	@ tmp254,
	mvn	r0, #0	@ D.33931,
	str	r1, [r6, #0]	@ tmp254,* StreamBaseAddr
	b	.L62	@
	.fnend
	.size	MP2HAL_V200R004_CfgReg, .-MP2HAL_V200R004_CfgReg
	.align	2
	.global	MP2HAL_V200R004_StartDec
	.type	MP2HAL_V200R004_StartDec, %function
MP2HAL_V200R004_StartDec:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	bls	.L116	@,
.L118:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33589,
.L110:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L116:
	beq	.L118	@,
	movw	r5, #:lower16:g_HwMem	@ tmp141,
	movt	r5, #:upper16:g_HwMem	@ tmp141,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L119	@,
.L112:
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	add	r3, sp, #4	@,,
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.33599,
	bne	.L118	@,
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, r5	@, D.33599
	movt	r1, #:upper16:g_HwMem	@,
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
	mov	r0, r5	@ D.33589, D.33599
	b	.L110	@
.L119:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.33595
	beq	.L118	@,
	str	r0, [r5, #0]	@ D.33595, <variable>.pVdmRegVirAddr
	b	.L112	@
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.34089, %object
	.size	num.34089, 4
num.34089:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
