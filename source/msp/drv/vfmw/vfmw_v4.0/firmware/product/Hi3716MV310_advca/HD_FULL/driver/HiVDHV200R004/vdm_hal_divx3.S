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
	.file	"vdm_hal_divx3.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_divx3.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V200R004_StartVDH
	.type	DIVX3HAL_V200R004_StartVDH, %function
DIVX3HAL_V200R004_StartVDH:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vfmw_dprint_nothing	@
	.fnend
	.size	DIVX3HAL_V200R004_StartVDH, .-DIVX3HAL_V200R004_StartVDH
	.align	2
	.global	DIVX3HAL_V200R004_WriteSliceMsg
	.type	DIVX3HAL_V200R004_WriteSliceMsg, %function
DIVX3HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, [r0, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	bic	r5, r5, #15	@ MsgBlockPhy, <variable>.MsgSlotAddr,
	mov	r0, r5	@, MsgBlockPhy
	bl	MEM_Phy2Vir	@
	subs	r9, r0, #0	@ pMsgBase,
	beq	.L26	@,
	ldr	r3, [r4, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r3, #0	@ <variable>.slice_start_mbn,
	streq	r3, [sp, #4]	@ <variable>.slice_start_mbn, %sfp
	bne	.L27	@,
.L7:
	ldr	r3, [r4, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r3, #0	@ <variable>.TotalSliceNum,
	beq	.L16	@,
	add	fp, sp, #12	@ tmp241,,
	mov	r7, #0	@ i,
.L15:
	cmp	r7, #0	@ i,
	moveq	r8, #14	@ tmp239,
	beq	.L8	@,
	add	r8, r7, #14	@ tmp239, i,
	add	r2, r7, #13	@ tmp206, i,
	ldr	r0, [r4, r8, asl #2]	@ tmp207, <variable>.slice_start_mbn
	ldr	r1, [r4, r2, asl #2]	@ tmp208, <variable>.slice_start_mbn
	cmp	r0, r1	@ tmp207, tmp208
	bls	.L9	@,
.L8:
	ldr	r6, [sp, #4]	@, %sfp
	mov	r3, #0	@ tmp212,
	ldr	lr, [r4, r8, asl #2]	@ tmp213, <variable>.slice_start_mbn
	add	sl, r7, r6	@ D.34355, i,
	add	r6, r7, #1	@ j, i,
	bfi	r3, lr, #0, #20	@ tmp212, tmp213,,
	str	r3, [fp, #0]	@ tmp212,
	mov	ip, sl, asl #8	@, D.34355,
	str	ip, [sp, #0]	@, %sfp
	str	r3, [r9, sl, asl #8]	@ D32.616,* pMsgBase
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #52]	@ temp.624, <variable>.TotalSliceNum
	cmp	r6, r1	@ j, temp.624
	bcs	.L10	@,
	add	r7, r7, #15	@ tmp215, i,
	ldr	r2, [r4, r8, asl #2]	@ temp.625, <variable>.slice_start_mbn
	ldr	r3, [r4, r7, asl #2]	@ tmp216, <variable>.slice_start_mbn
	cmp	r2, r3	@ temp.625, tmp216
	bcc	.L10	@,
	mvn	r0, r6	@ tmp243, j
	add	r3, r0, r1	@ tmp242, tmp243, temp.624
	tst	r3, #1	@ tmp242,
	add	r8, r4, r8, asl #2	@, ivtmp.605, pDivx3DecParam, tmp239,
	beq	.L11	@,
	add	r6, r6, #1	@ j, j,
	cmp	r6, r1	@ j, temp.624
	bcs	.L10	@,
	ldr	r3, [r8, #8]	@ D.34386, <variable>.slice_start_mbn
	add	r8, r8, #4	@ ivtmp.605, ivtmp.605,
	cmp	r3, r2	@ D.34386, temp.625
	bls	.L11	@,
	b	.L10	@
.L12:
	ldr	ip, [r8, #8]	@ D.34386, <variable>.slice_start_mbn
	add	r8, r3, #4	@ ivtmp.605, tmp245,
	cmp	ip, r2	@ D.34386, temp.625
	bhi	.L10	@,
	ldr	r3, [r3, #8]	@ D.34386, <variable>.slice_start_mbn
	add	r6, r6, #1	@ j, j,
	cmp	r3, r2	@ D.34386, temp.625
	bhi	.L10	@,
.L11:
	add	r6, r6, #1	@ j, j,
	add	r3, r8, #4	@ tmp245, ivtmp.605,
	cmp	r6, r1	@ j, temp.624
	bcc	.L12	@,
.L10:
	cmp	r6, r1	@ j, temp.624
	mov	sl, sl, asl #6	@ tmp230, D.34355,
	addne	r3, r6, #14	@ tmp222, j,
	add	sl, sl, #1	@ tmp231, tmp230,
	ldreq	r2, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	moveq	r8, #0	@ prephitmp.588,
	ldreq	r3, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	sub	r7, r6, #1	@ i, j,
	ldrne	r2, [sp, #4]	@, %sfp
	muleq	r2, r2, r3	@ tmp219, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r8, r2, r6, asl #2	@, tmp225,, j,
	ldrne	r2, [r4, r3, asl #2]	@ tmp223, <variable>.slice_start_mbn
	mov	r3, #0	@ tmp229,
	addne	r8, r5, r8, asl #6	@, prephitmp.588, MsgBlockPhy, tmp225,
	sub	lr, r2, #1	@ last_mb_in_slice, tmp223,
	bfi	r3, lr, #0, #20	@ tmp229, last_mb_in_slice,,
	str	r3, [fp, #0]	@ tmp229,
	str	r3, [r9, sl, asl #2]	@ D32.622,* pMsgBase
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #0]	@, %sfp
	str	r8, [fp, #0]	@ prephitmp.588, <variable>.next_slice_para_addr
	add	r1, r2, #252	@ tmp235,,
	str	r8, [r9, r1]	@ D32.629,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
.L9:
	add	r7, r7, #1	@ i, i,
	cmp	r3, r7	@ <variable>.TotalSliceNum, i
	bhi	.L15	@,
.L16:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	mov	r6, #0	@ tmp193,
	mov	lr, #1	@,
	mov	ip, r6	@ tmp195, tmp193
	str	lr, [sp, #4]	@, %sfp
	bfi	ip, r6, #0, #20	@ tmp195, tmp193,,
	str	ip, [sp, #12]	@ tmp195,
	str	ip, [r9, #0]	@ tmp195,* pMsgBase
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r1, r2, #1	@ tmp198, <variable>.slice_start_mbn,
	bfi	r6, r1, #0, #20	@ tmp200, tmp198,,
	str	r6, [sp, #12]	@ tmp200,
	str	r6, [r9, #4]	@ tmp200,
	bl	vfmw_dprint_nothing	@
	add	r0, r5, #256	@ tmp203, MsgBlockPhy,
	str	r0, [sp, #12]	@ tmp203, <variable>.next_slice_para_addr
	str	r0, [r9, #252]	@ tmp203,
	bl	vfmw_dprint_nothing	@
	b	.L7	@
.L26:
	bl	vfmw_dprint_nothing	@
	b	.L16	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteSliceMsg, .-DIVX3HAL_V200R004_WriteSliceMsg
	.align	2
	.global	DIVX3HAL_V200R004_WritePicMsg
	.type	DIVX3HAL_V200R004_WritePicMsg, %function
DIVX3HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ pHwMem, pHwMem
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ pDivx3DecParam, pDivx3DecParam
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ D.34233,
	beq	.L32	@,
	ldr	lr, [r5, #4]	@ <variable>.prediction_type, <variable>.prediction_type
	mov	r8, #0	@ tmp188,
	mov	r7, r6	@ p32, D.34233
	mov	sl, r8	@ tmp191, tmp188
	bfi	sl, lr, #0, #1	@ tmp191, <variable>.prediction_type,,
	str	sl, [sp, #4]	@ tmp191,
	str	sl, [r7], #4	@ tmp191,
	add	sl, r7, #4	@ p32.659, p32,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r2, [r5, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	sub	r1, r3, #1	@ tmp195, <variable>.PicWidthInMb,
	sub	ip, r2, #1	@ tmp199, <variable>.PicHeightInMb,
	mov	r0, r1, asl #23	@ tmp200, tmp195,
	mov	r3, r0, lsr #23	@ tmp200, tmp200,
	bfi	r3, ip, #16, #9	@ tmp200, tmp199,,
	str	r3, [sp, #4]	@ tmp200,
	str	r3, [r6, #4]	@ tmp200,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #16]	@ <variable>.quantizer, <variable>.quantizer
	ldr	r2, [r5, #20]	@ <variable>.rounding_type, <variable>.rounding_type
	ldr	r0, [r5, #24]	@ <variable>.has_skips, <variable>.has_skips
	and	ip, r1, #31	@ tmp205, <variable>.quantizer,
	bfi	ip, r2, #5, #1	@ tmp205, <variable>.rounding_type,,
	bfi	ip, r0, #6, #1	@ tmp207, <variable>.has_skips,,
	str	ip, [sp, #4]	@ tmp207,
	str	ip, [r7, #4]	@ tmp207,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #28]	@ <variable>.alternative_I_AC_chrom_DCT, <variable>.alternative_I_AC_chrom_DCT
	ldr	r1, [r5, #32]	@ <variable>.alternative_I_AC_lum_DCT, <variable>.alternative_I_AC_lum_DCT
	ldr	r2, [r5, #36]	@ <variable>.alternative_I_DC_DCT, <variable>.alternative_I_DC_DCT
	and	ip, r3, #3	@ tmp212, <variable>.alternative_I_AC_chrom_DCT,
	ldr	r0, [r5, #40]	@ <variable>.alternative_P_AC_DCT, <variable>.alternative_P_AC_DCT
	bfi	ip, r1, #2, #2	@ tmp212, <variable>.alternative_I_AC_lum_DCT,,
	bfi	ip, r2, #4, #1	@ tmp214, <variable>.alternative_I_DC_DCT,,
	ldr	r1, [r5, #44]	@ <variable>.alternative_P_DC_DCT, <variable>.alternative_P_DC_DCT
	ldr	r2, [r5, #48]	@ <variable>.alternative_MV, <variable>.alternative_MV
	bfi	ip, r0, #5, #2	@ tmp216, <variable>.alternative_P_AC_DCT,,
	bfi	ip, r1, #7, #1	@ tmp218, <variable>.alternative_P_DC_DCT,,
	bfi	ip, r2, #8, #1	@ tmp220, <variable>.alternative_MV,,
	str	ip, [sp, #4]	@ tmp220,
	str	ip, [sl, #4]	@ tmp220,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #100]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	str	r3, [sp, #4]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_0
	str	r3, [r6, #64]	@ <variable>.StreamPhyAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #108]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r8	@ tmp227, tmp188
	bfi	ip, r0, #0, #7	@ tmp227, <variable>.StreamBitOffset,,
	str	ip, [sp, #4]	@ tmp227,
	str	ip, [r6, #68]	@ tmp227,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #116]	@ <variable>.StreamLength, <variable>.StreamLength
	str	r2, [sp, #4]	@ <variable>.StreamLength, <variable>.bit_len_0
	str	r2, [r6, #72]	@ <variable>.StreamLength,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #104]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	str	r1, [sp, #4]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_1
	str	r1, [r6, #76]	@ <variable>.StreamPhyAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #112]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r8, r3, #0, #7	@ tmp237, <variable>.StreamBitOffset,,
	str	r8, [sp, #4]	@ tmp237,
	str	r8, [r6, #80]	@ tmp237,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #120]	@ <variable>.StreamLength, <variable>.StreamLength
	str	r0, [sp, #4]	@ <variable>.StreamLength, <variable>.bit_len_1
	str	r0, [r6, #84]	@ <variable>.StreamLength,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #132]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r2, ip, #15	@ tmp244, <variable>.DispFramePhyAddr,
	str	r2, [sp, #4]	@ tmp244, <variable>.curr_rcn_addr
	str	r2, [r6, #128]	@ tmp244,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	r3, r1, #15	@ tmp248, <variable>.FwdRefPhyAddr,
	str	r3, [sp, #4]	@ tmp248, <variable>.fwd_ref_addr
	str	r3, [r6, #132]	@ tmp248,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	ip, r0, #15	@ tmp252, <variable>.SedTopAddr,
	str	ip, [sp, #4]	@ tmp252, <variable>.sed_top_addr
	str	ip, [r6, #136]	@ tmp252,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r1, r2, #15	@ tmp256, <variable>.PmvTopAddr,
	str	r1, [sp, #4]	@ tmp256, <variable>.pmv_top_addr
	str	r1, [r6, #140]	@ tmp256,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #1092]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	bic	r0, r3, #15	@ tmp260, <variable>.ItransTopAddr,
	str	r0, [sp, #4]	@ tmp260, <variable>.it_top_addr
	str	r0, [r6, #144]	@ tmp260,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #148]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	bic	r2, ip, #15	@ tmp264, <variable>.CurrPmvPhyAddr,
	str	r2, [sp, #4]	@ tmp264, <variable>.pmv_colmb_addr
	str	r2, [r6, #148]	@ tmp264,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r3, r1, #15	@ tmp268, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp268, <variable>.next_slice_para_addr
	str	r3, [r6, #252]	@ tmp268,
.L32:
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
	.fnend
	.size	DIVX3HAL_V200R004_WritePicMsg, .-DIVX3HAL_V200R004_WritePicMsg
	.align	2
	.global	DIVX3HAL_V200R004_WriteReg
	.type	DIVX3HAL_V200R004_WriteReg, %function
DIVX3HAL_V200R004_WriteReg:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pHwMem, pHwMem
	mov	r7, r2	@ VdhId, VdhId
	movw	r8, #1140	@ tmp196,
	bl	vfmw_dprint_nothing	@
	ldr	sl, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	ip, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r6, #:lower16:g_HwMem	@ tmp353,
	mul	r8, r8, r7	@ tmp195, tmp196, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp353,
	mul	r1, ip, sl	@ tmp183, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	sl, #0	@ tmp182,
	sub	r0, r1, #1	@ tmp186, tmp183,
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, r0, #-16777216	@ tmp193, tmp186,
	bic	r2, r3, #15728640	@ tmp193, tmp193,
	bfi	r2, sl, #25, #1	@ tmp193, tmp182,,
	str	r2, [sp, #4]	@ tmp193,
	str	r2, [ip, #8]	@ tmp193,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	mov	r3, #5	@ tmp204,
	ldr	r2, [r4, #156]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r1, lsr #6	@ tmp202, <variable>.DDRStride,
	bfi	r3, r0, #4, #10	@ tmp204, tmp202,,
	orr	r1, r3, #49152	@ tmp209, tmp204,
	bfi	r1, sl, #16, #12	@ tmp209, tmp182,,
	bic	r0, r1, #805306368	@ tmp210, tmp209,
	orr	r3, r0, #536870912	@ tmp214, tmp210,
	bfi	r3, r2, #30, #1	@ tmp214, <variable>.Compress_en,,
	bfi	r3, sl, #31, #1	@ tmp215, tmp182,,
	str	r3, [sp, #4]	@ tmp215,
	str	r3, [ip, #12]	@ tmp215,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r5, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r1, #15	@ tmp224, <variable>.MsgSlotAddr,
	str	r0, [sp, #4]	@ tmp224, <variable>.av_msg_addr
	str	r0, [r2, #16]	@ tmp224,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp233, <variable>.MsgSlotAddr,
	str	ip, [sp, #4]	@ tmp233, <variable>.va_msg_addr
	str	ip, [r1, #20]	@ tmp233,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #96]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [sp, #4]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r0, [r2, #24]	@ <variable>.StreamBaseAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	sl, [sp, #4]	@ tmp182, D32
	movls	r3, #65536	@ tmp249,
	strls	r3, [sp, #4]	@ tmp249, D32
	cmp	r7, #0	@ VdhId,
	bne	.L44	@,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp252,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp252,
	ldr	r1, [sp, #4]	@ D32, D32
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@ D.34176,, D32
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L39:
	movw	r8, #1140	@ tmp263,
	movw	lr, #:lower16:3148803	@ tmp260,
	mul	r7, r8, r7	@ tmp262, tmp263, VdhId
	movt	lr, #:upper16:3148803	@ tmp260,
	str	lr, [sp, #4]	@ tmp260, D32
	mov	r8, #0	@ tmp317,
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r0, #60]	@ tmp260,
	ldr	r1, [sp, #4]	@ D32.776, D32
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r2, #64]	@ D32.776,
	ldr	sl, [sp, #4]	@ D32.780, D32
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	sl, [ip, #68]	@ D32.780,
	ldr	lr, [sp, #4]	@ D32.784, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r3, #72]	@ D32.784,
	ldr	r2, [sp, #4]	@ D32.788, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r0, #76]	@ D32.788,
	ldr	ip, [sp, #4]	@ D32.792, D32
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #80]	@ D32.792,
	ldr	lr, [sp, #4]	@ D32.796, D32
	ldr	sl, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [sl, #84]	@ D32.796,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r3, #15	@ D32.511, <variable>.CurPicPhyAddr,
	str	r0, [sp, #4]	@ D32.511, D32
	str	r0, [r2, #96]	@ D32.511,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #136]	@ D32.800, <variable>.DDRStride
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	sl, [r4, #12]	@ height_in_mb, <variable>.PicHeightInMb
	str	r1, [sp, #4]	@ D32.800, D32
	str	r1, [ip, #100]	@ D32.800,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	add	r0, sl, #1	@ tmp310, height_in_mb,
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r3, asl #1	@ tmp308, <variable>.DDRStride,
	mov	sl, r0, lsr #1	@ tmp311, tmp310,
	mul	sl, sl, r2	@ D32.513, tmp311, tmp308
	str	sl, [sp, #4]	@ D32.513, D32
	str	sl, [r1, #104]	@ D32.513,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [ip, #108]	@ tmp317,
	ldr	r3, [r5, #1120]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [r0, #144]	@ <variable>.DnrMbInfoAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [sp, #4]	@ tmp317, D32
	str	r8, [r1, #148]	@ tmp317,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r8	@ tmp341, tmp317
	bfi	r2, r8, #0, #1	@ tmp341, tmp317,,
	str	r2, [sp, #4]	@ tmp341,
	str	r2, [ip, #152]	@ tmp341,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r0, #0	@ tmp352,
	str	r0, [r3, #32]	@ tmp352,
.L42:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L44:
	cmp	r7, #1	@ VdhId,
	beq	.L45	@,
	cmp	r7, #0	@ VdhId,
	ble	.L39	@,
	bl	vfmw_dprint_nothing	@
	b	.L42	@
.L45:
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr_1	@ tmp257,
	movt	r1, #:upper16:s_RegPhyBaseAddr_1	@ tmp257,
	ldr	r2, [sp, #4]	@ D32, D32
	ldr	ip, [r1, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	orr	r1, r0, r2	@ temp.769,, D32
	add	r0, ip, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	bl	vfmw_dprint_nothing	@
	b	.L42	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteReg, .-DIVX3HAL_V200R004_WriteReg
	.align	2
	.global	DIVX3HAL_V200R004_StartDec
	.type	DIVX3HAL_V200R004_StartDec, %function
DIVX3HAL_V200R004_StartDec:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pDivx3DecParam, pDivx3DecParam
	bls	.L54	@,
.L52:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34109,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L54:
	beq	.L52	@,
	movw	r5, #:lower16:g_HwMem	@ tmp140,
	movt	r5, #:upper16:g_HwMem	@ tmp140,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L55	@,
.L51:
	mov	r2, #0	@,
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WriteReg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WritePicMsg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.34109,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L55:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.34115
	strne	r0, [r5, #0]	@ D.34115, <variable>.pVdmRegVirAddr
	bne	.L51	@,
	b	.L52	@
	.fnend
	.size	DIVX3HAL_V200R004_StartDec, .-DIVX3HAL_V200R004_StartDec
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
