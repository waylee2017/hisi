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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	.global	MP2HAL_V200R004_WriteSliceMsg
	.type	MP2HAL_V200R004_WriteSliceMsg, %function
MP2HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	ip, [r0, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	.pad #48
	sub	sp, sp, #48	@,,
	cmp	ip, #0	@ <variable>.slice_start_mbn,
	str	r3, [sp, #24]	@ StreamBaseAddr, %sfp
	movw	r3, #45308	@ tmp232,
	str	r2, [sp, #36]	@ SlcDnMsgPhyAddr, %sfp
	ldr	r2, [r0, r3]	@ SliceNum, <variable>.SlcNum
	mov	r3, #0	@ tmp231,
	streq	ip, [sp, #32]	@ <variable>.slice_start_mbn, %sfp
	str	r3, [sp, #44]	@ tmp231, D32
	beq	.L3	@,
	ldr	r8, [r0, #252]	@ D.30635, <variable>.BsPhyAddr
	mov	sl, r3	@ tmp245, tmp231
	ldr	r5, [r0, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	fp, #1	@ tmp240,
	and	r7, r8, #15	@ tmp235, D.30635,
	ldr	r9, [sp, #24]	@, %sfp
	bic	ip, r8, #15	@ tmp243, D.30635,
	add	r4, r5, r7, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp235,
	rsb	r8, r9, ip	@ tmp244,, tmp243
	bfi	fp, r4, #24, #7	@ tmp240, bit_offset_0,,
	bfi	sl, r8, #0, #24	@ tmp245, tmp244,,
	str	fp, [r1, #0]	@ tmp240,* SlcDnMsgVirAddr
	mov	ip, #0	@ tmp251,
	str	sl, [r1, #4]	@ tmp245,
	ldr	fp, [r0, #256]	@ D.30661, <variable>.BsPhyAddr
	ldr	r5, [r0, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	and	r6, fp, #15	@ tmp247, D.30661,
	add	r4, r5, r6, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp247,
	bfi	ip, r4, #24, #7	@ tmp251, bit_offset_1,,
	str	ip, [r1, #8]	@ tmp251,
	ldr	sl, [r0, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	bicne	sl, fp, #15	@ tmp255, D.30661,
	streq	sl, [sp, #44]	@ <variable>.BsPhyAddr,
	rsbne	sl, r9, sl	@ tmp256,, tmp255
	ldr	fp, [sp, #36]	@, %sfp
	bfine	r3, sl, #0, #24	@ tmp257, tmp256,,
	strne	r3, [sp, #44]	@ tmp257,
	ldr	r6, [sp, #44]	@ D32.564, D32
	mov	sl, #1	@,
	str	sl, [sp, #32]	@, %sfp
	mov	r3, #0	@ tmp260,
	mov	r4, r3	@ tmp267, tmp260
	add	ip, fp, #32	@ tmp275,,
	str	r6, [r1, #12]	@ D32.564,
	bfi	r4, r3, #0, #20	@ tmp267, tmp260,,
	ldr	r5, [r0, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r6, [r0, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	and	r5, r5, #63	@ tmp264, <variable>.quantiser_scale_code,
	str	ip, [sp, #44]	@ tmp275, <variable>.next_slice_para_addr
	bfi	r5, r6, #6, #1	@ tmp264, <variable>.intra_slice,,
	str	r5, [r1, #16]	@ tmp264,
	str	r4, [r1, #20]	@ tmp267,
	ldr	r4, [r0, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r4, r4, #1	@ tmp270, <variable>.slice_start_mbn,
	bfi	r3, r4, #0, #20	@ tmp272, tmp270,,
	str	r3, [r1, #24]	@ tmp272,
	str	ip, [r1, #28]	@ tmp275,
.L3:
	cmp	r2, #0	@ SliceNum,
	ble	.L6	@,
	ldr	r5, [sp, #32]	@, %sfp
	add	ip, sp, #44	@ tmp427,,
	mov	r3, #0	@ i,
	ldr	r6, [r0, #284]	@ prephitmp.537, <variable>.slice_start_mbn
	ldr	r4, [r0, #240]	@ prephitmp.579, <variable>.slice_start_mbn
	mov	r7, r5, asl #2	@,,
	mov	r5, #44	@ tmp426,
	str	r7, [sp, #28]	@, %sfp
.L15:
	cmp	r3, #0	@ i,
	movle	r7, #0	@,
	movgt	r7, #1	@,
	cmp	r6, r4	@ prephitmp.537, prephitmp.579
	movhi	r7, #0	@,,
	cmp	r7, #0	@ tmp282,
	mov	r6, r7	@ tmp282,
	bne	.L7	@,
	mla	r4, r5, r3, r0	@ tmp287, tmp426, i, pMp2DecParam
	ldr	r8, [sp, #28]	@, %sfp
	str	r7, [sp, #44]	@ tmp282, D32
	add	r7, r3, r8	@ D.30733, i,
	ldr	sl, [ip, #0]	@ tmp302,
	mov	r6, r7, asl #3	@ tmp310, D.30733,
	mov	fp, r7, asl #2	@ tmp335, D.30733,
	add	r9, r6, #1	@, tmp310,
	add	r8, fp, #1	@, tmp335,
	str	r9, [sp, #16]	@, %sfp
	str	r8, [sp, #20]	@, %sfp
	mov	r8, r7, asl #5	@ D.30734, D.30733,
	ldr	r6, [r4, #252]	@, <variable>.BsPhyAddr
	and	fp, r6, #15	@,,
	str	fp, [sp, #12]	@, %sfp
	ldr	r9, [r4, #260]	@, <variable>.BsLenInBit
	ldr	r6, [r4, #252]	@, <variable>.BsPhyAddr
	bfi	sl, r9, #0, #24	@ tmp302,,,
	ldr	r9, [sp, #12]	@, %sfp
	bic	fp, r6, #15	@,,
	str	fp, [sp, #4]	@, %sfp
	ldr	r6, [r4, #268]	@, <variable>.BsBitOffset
	add	fp, r6, r9, asl #3	@,,,,
	ldr	r6, [sp, #4]	@, %sfp
	ldr	r9, [sp, #24]	@, %sfp
	str	fp, [sp, #12]	@, %sfp
	rsb	fp, r9, r6	@,,
	str	fp, [sp, #4]	@, %sfp
	ldr	fp, [sp, #16]	@, %sfp
	ldr	r6, [sp, #12]	@, %sfp
	ldr	r9, [sp, #4]	@, %sfp
	bfi	sl, r6, #24, #7	@ tmp304,,,
	str	sl, [r1, r7, asl #5]	@ D32.588,* SlcDnMsgVirAddr
	bic	r6, r9, #-16777216	@ D32.594,,
	str	r6, [r1, fp, asl #2]	@ D32.594,* SlcDnMsgVirAddr
	ldr	fp, [r4, #256]	@ temp.595, <variable>.BsPhyAddr
	mov	r7, r7, asl #1	@ tmp367, D.30733,
	ldr	sl, [ip, #0]	@ tmp332,
	and	r9, fp, #15	@, temp.595,
	str	r9, [sp, #12]	@, %sfp
	ldr	r6, [r4, #272]	@, <variable>.BsBitOffset
	str	r6, [sp, #16]	@, %sfp
	ldr	r9, [r4, #264]	@, <variable>.BsLenInBit
	ldr	r6, [sp, #16]	@, %sfp
	bfi	sl, r9, #0, #24	@ tmp332,,,
	ldr	r9, [sp, #12]	@, %sfp
	add	r6, r6, r9, asl #3	@,,,,
	str	r6, [sp, #12]	@, %sfp
	bfi	sl, r6, #24, #7	@ tmp334,,,
	ldr	r6, [sp, #20]	@, %sfp
	str	sl, [r1, r6, asl #3]	@ D32.608,* SlcDnMsgVirAddr
	ldr	sl, [r4, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r4, #0	@,
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	bicne	fp, fp, #15	@ tmp346, temp.595,
	ldrne	sl, [ip, #0]	@ tmp348,
	ldrne	r9, [sp, #24]	@, %sfp
	rsbne	fp, r9, fp	@ tmp347,, tmp346
	bfine	sl, fp, #0, #24	@ tmp348, tmp347,,
	strne	sl, [ip, #0]	@ tmp348,
	ldreq	r6, [ip, #0]	@ tmp350,
	add	fp, r8, #12	@ tmp351, D.30734,
	bfieq	r6, sl, #0, #24	@ tmp350, <variable>.BsPhyAddr,,
	mul	sl, r5, r3	@ tmp354, tmp426, i
	streq	r6, [ip, #0]	@ tmp350,
	ldr	r9, [sp, #44]	@ D32.616, D32
	add	r3, r3, #1	@ j, i,
	str	r4, [sp, #44]	@, D32
	cmp	r2, r3	@ SliceNum, j
	add	r4, sl, r0	@ tmp356, tmp354, pMp2DecParam
	ldr	r6, [ip, #0]	@ tmp359,
	str	r9, [r1, fp]	@ D32.616,
	add	fp, r7, #1	@, tmp367,
	str	fp, [sp, #12]	@, %sfp
	mov	r7, #0	@ tmp377,
	ldr	r9, [r4, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	add	fp, r8, #20	@, D.30734,
	bfi	r6, r9, #0, #6	@ tmp359, <variable>.quantiser_scale_code,,
	str	r6, [ip, #0]	@ tmp359,
	ldr	r9, [r4, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	str	r7, [sp, #44]	@ tmp377, D32
	bfi	r6, r9, #6, #1	@ tmp366, <variable>.intra_slice,,
	ldr	r9, [sp, #12]	@, %sfp
	str	r6, [r1, r9, asl #4]	@ D32.625,* SlcDnMsgVirAddr
	ldr	r6, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	bfi	r7, r6, #0, #20	@ tmp377, <variable>.slice_start_mbn,,
	str	r7, [ip, #0]	@ tmp377,
	str	r7, [r1, fp]	@ D32.628,
	ble	.L10	@,
	mla	r7, r5, r3, r0	@ tmp388, tmp426, j, pMp2DecParam
	ldr	r6, [r4, #284]	@ temp.637, <variable>.slice_start_mbn
	ldr	r4, [r7, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r4, r6	@ <variable>.slice_start_mbn, temp.637
	bhi	.L10	@,
	mvn	r7, r3	@ tmp430, j
	add	r4, r7, r2	@ tmp429, tmp430, SliceNum
	tst	r4, #1	@ tmp429,
	add	r7, sl, #248	@ tmp393, tmp354,
	add	sl, r0, r7	@ tmp394, pMp2DecParam, tmp393
	add	r4, sl, #4	@ ivtmp.555, tmp394,
	beq	.L11	@,
	ldr	r7, [r4, #120]	@ D.30768, <variable>.slice_start_mbn
	add	r3, r3, #1	@ j, j,
	add	r4, sl, #48	@ ivtmp.555, tmp394,
	cmp	r7, r6	@ D.30768, temp.637
	bls	.L11	@,
	b	.L10	@
.L12:
	ldr	sl, [r4, #120]	@ D.30768, <variable>.slice_start_mbn
	add	r4, r4, #88	@ ivtmp.555, ivtmp.555,
	cmp	sl, r6	@ D.30768, temp.637
	bhi	.L10	@,
	ldr	r7, [r7, #120]	@ D.30768, <variable>.slice_start_mbn
	add	r3, r3, #1	@ j, j,
	cmp	r7, r6	@ D.30768, temp.637
	bhi	.L10	@,
.L11:
	add	r3, r3, #1	@ j, j,
	add	r7, r4, #44	@ tmp432, ivtmp.555,
	cmp	r2, r3	@ SliceNum, j
	bgt	.L12	@,
.L10:
	cmp	r3, r2	@ j, SliceNum
	mlane	r4, r5, r3, r0	@ tmp401, tmp426, j, pMp2DecParam
	ldreqh	r4, [r0, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldreqh	r7, [r0, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	moveq	r6, #0	@ prephitmp.535,
	ldrne	sl, [sp, #32]	@, %sfp
	ldrne	fp, [sp, #36]	@, %sfp
	muleq	r4, r7, r4	@ tmp397, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r6, r3, sl	@ tmp404, j,
	ldrne	r4, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r7, r8, #28	@ tmp412, D.30734,
	addne	r6, fp, r6, asl #5	@, prephitmp.535,, tmp404,
	add	r8, r8, #24	@ tmp409, D.30734,
	sub	r4, r4, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	sub	r3, r3, #1	@ i, j,
	bic	sl, r4, #-16777216	@ D32.635, slice_end_mbn,
	bic	r4, sl, #15728640	@ D32.635, D32.635,
	mov	sl, r6	@ D32.639, prephitmp.535
	str	r4, [r1, r8]	@ D32.635,
	str	r6, [r1, r7]	@ D32.639,
	str	r6, [ip, #0]	@ prephitmp.535, <variable>.next_slice_para_addr
.L7:
	add	r3, r3, #1	@ i, i,
	cmp	r2, r3	@ SliceNum, i
	ble	.L6	@,
	sub	r4, r3, #1	@ tmp418, i,
	mla	r6, r5, r3, r0	@ tmp416, tmp426, i, pMp2DecParam
	mla	r7, r5, r4, r0	@ tmp422, tmp426, tmp418, pMp2DecParam
	ldr	r6, [r6, #284]	@ prephitmp.537, <variable>.slice_start_mbn
	ldr	r4, [r7, #284]	@ prephitmp.579, <variable>.slice_start_mbn
	b	.L15	@
.L6:
	mov	r0, #0	@,
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.fnend
	.size	MP2HAL_V200R004_WriteSliceMsg, .-MP2HAL_V200R004_WriteSliceMsg
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
	ldrh	r1, [r0, #152]	@ D.30797, <variable>.PicWidthInMb
	.pad #88
	sub	sp, sp, #88	@,,
	cmp	r2, #3	@ <variable>.PictureStructure,
	mov	r3, #0	@ tmp139,
	mov	ip, #3	@ tmp145,
	strb	r3, [sp, #6]	@ tmp139, DnrCfg.dr_en
	str	ip, [sp, #20]	@ tmp145, DnrCfg.video_standard
	strb	r3, [sp, #4]	@ tmp139, DnrCfg.dc_en
	strb	r3, [sp, #5]	@ tmp139, DnrCfg.db_en
	strb	r2, [sp, #7]	@ <variable>.PictureStructure, DnrCfg.pic_structure
	str	r1, [sp, #28]	@ D.30797, DnrCfg.pic_width_in_mb
	beq	.L31	@,
	ldrh	r3, [r0, #150]	@ <variable>.FrameHeightInMb, <variable>.FrameHeightInMb
	sub	r2, r2, #1	@ tmp148, <variable>.PictureStructure,
	add	r4, r3, #1	@ tmp151, <variable>.FrameHeightInMb,
	uxtb	ip, r2	@ tmp149, tmp148
	cmp	ip, #1	@ tmp149,
	mov	r2, r4, asr #1	@ tmp152, tmp151,
	movhi	r2, r2, asl #1	@ tmp156, tmp155,
	sub	r3, r2, #1	@ prephitmp.653, tmp156,
	str	r3, [sp, #32]	@ prephitmp.653, DnrCfg.pic_height_in_mb
.L27:
	mul	r4, r1, r3	@ tmp157, D.30797, prephitmp.653
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp164,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp164,
	mov	r2, #45312	@ tmp162,
	ldr	ip, [r0, r2]	@ <variable>.DnrMbInfoStAddr, <variable>.DnrMbInfoStAddr
	ldr	r3, [r3, #8]	@ D.30828, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	ldr	r2, [r0, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	ldr	r1, [r0, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	cmp	r3, #0	@ D.30828,
	str	ip, [sp, #76]	@ <variable>.DnrMbInfoStAddr, DnrCfg.dnr_info_addr
	bic	ip, r2, #15	@ tmp161, <variable>.DispFramePhyAddr,
	str	r4, [sp, #24]	@ tmp157, DnrCfg.mbtodec
	bic	r1, r1, #15	@ tmp159, <variable>.CurPicPhyAddr,
	str	ip, [sp, #40]	@ tmp161, DnrCfg.dnr_ystaddr_2d
	str	r1, [sp, #36]	@ tmp159, DnrCfg.dnr_ystaddr_1d
	ldr	r2, [r0, #228]	@ D.30823, <variable>.VahbStride
	beq	.L30	@,
	mov	lr, #8	@ tmp170,
	mov	r0, #1	@ tmp168,
	mov	r1, r2, lsr #6	@ tmp165, D.30823,
	mov	ip, #0	@ tmp166,
	strb	r0, [sp, #8]	@ tmp168, DnrCfg.chroma_format_idc
	add	r0, sp, #4	@,,
	str	r1, [sp, #64]	@ tmp165, DnrCfg.ddr_stride
	str	lr, [sp, #56]	@ tmp170, DnrCfg.QP_U
	str	lr, [sp, #52]	@ tmp170, DnrCfg.QP_Y
	strb	ip, [sp, #14]	@ tmp166, DnrCfg.use_pic_qp_en
	str	lr, [sp, #60]	@ tmp170, DnrCfg.QP_V
	blx	r3	@ D.30828
.L30:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, pc}
.L31:
	ldrh	r3, [r0, #150]	@ prephitmp.653, <variable>.FrameHeightInMb
	str	r3, [sp, #32]	@ prephitmp.653, DnrCfg.pic_height_in_mb
	b	.L27	@
	.fnend
	.size	MP2Hal_V200R004_OnlineDnr, .-MP2Hal_V200R004_OnlineDnr
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
	ldrh	r3, [r2, #148]	@ temp.706, <variable>.PicHeightInMb
	sub	ip, r5, #1	@ tmp195, <variable>.PictureStructure,
	ldr	r4, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r5, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	ip, ip	@ tmp196, tmp195
	cmp	ip, #1	@ tmp196,
	str	r5, [r4, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	ip, #2	@ iftmp.453,
	movhi	ip, #1	@ iftmp.453,
	mul	ip, r3, ip	@ tmp200, temp.706, iftmp.453
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
	.global	MP2HAL_V200R004_CfgDnMsg
	.type	MP2HAL_V200R004_CfgDnMsg, %function
MP2HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	mov	r5, r3	@ StreamBaseAddr, StreamBaseAddr
	mov	r4, #0	@ tmp231,
	str	r4, [sp, #4]	@ tmp231, D32
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ D.31109,
	bne	.L48	@,
.L39:
	mvn	r0, #0	@ D.31112,
.L44:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L48:
	ldrh	r3, [r7, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L39	@,
	ldrh	r2, [r7, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L39	@,
	sub	lr, r3, #1	@ tmp238, <variable>.PicWidthInMb,
	ldr	r1, [r7, #180]	@ <variable>.Mpeg1Flag, <variable>.Mpeg1Flag
	sub	r0, r2, #1	@ tmp242, <variable>.PicHeightInMb,
	mov	sl, lr, asl #23	@ tmp243, tmp238,
	mov	ip, sl, lsr #23	@ tmp243, tmp243,
	bfi	ip, r0, #16, #9	@ tmp243, tmp242,,
	bfi	ip, r1, #25, #1	@ tmp245, <variable>.Mpeg1Flag,,
	str	ip, [r8, #0]	@ tmp245,* D.31109
	ldrb	r3, [r7, #5]	@ zero_extendqisi2	@ <variable>.FramePredFrameDct, <variable>.FramePredFrameDct
	ldrb	lr, [r7, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrb	sl, [r7, #4]	@ zero_extendqisi2	@ <variable>.SecondFieldFlag, <variable>.SecondFieldFlag
	and	ip, r3, #1	@ tmp251, <variable>.FramePredFrameDct,
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@ <variable>.ConcealmentMotionVectors, <variable>.ConcealmentMotionVectors
	bfi	ip, lr, #8, #2	@ tmp251, <variable>.PictureStructure,,
	ldrb	r0, [r7, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	ip, sl, #10, #1	@ tmp255, <variable>.SecondFieldFlag,,
	ldrb	r1, [r7, #2]	@ zero_extendqisi2	@ <variable>.Mp1FwdmvFullPel, <variable>.Mp1FwdmvFullPel
	bfi	ip, r2, #16, #1	@ tmp259, <variable>.ConcealmentMotionVectors,,
	ldrb	lr, [r7, #1]	@ zero_extendqisi2	@ <variable>.Mp1BwdmvFullPel, <variable>.Mp1BwdmvFullPel
	bfi	ip, r0, #24, #3	@ tmp263, <variable>.PicCodingType,,
	bfi	ip, r1, #27, #1	@ tmp267, <variable>.Mp1FwdmvFullPel,,
	bfi	ip, lr, #28, #1	@ tmp271, <variable>.Mp1BwdmvFullPel,,
	str	ip, [r8, #4]	@ tmp271,
	ldrb	r3, [r7, #15]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	sl, [r7, #14]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	ldrb	r0, [r7, #13]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	and	lr, r3, #15	@ tmp280, <variable>.Fcode,
	ldrb	r1, [r7, #12]	@ zero_extendqisi2	@ <variable>.Fcode, <variable>.Fcode
	bfi	lr, sl, #8, #4	@ tmp280, <variable>.Fcode,,
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	lr, r0, #16, #4	@ tmp284, <variable>.Fcode,,
	bfi	lr, r1, #24, #4	@ tmp288, <variable>.Fcode,,
	bfi	lr, r2, #31, #1	@ tmp292, <variable>.TopFieldFirst,,
	str	lr, [r8, #8]	@ tmp292,
	ldrb	ip, [r7, #11]	@ zero_extendqisi2	@ <variable>.IntraDcPrecision, <variable>.IntraDcPrecision
	ldrb	sl, [r7, #10]	@ zero_extendqisi2	@ <variable>.QuantType, <variable>.QuantType
	ldrb	r1, [r7, #9]	@ zero_extendqisi2	@ <variable>.IntraVlcFormat, <variable>.IntraVlcFormat
	and	r0, ip, #3	@ tmp301, <variable>.IntraDcPrecision,
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@ <variable>.AlternateScan, <variable>.AlternateScan
	bfi	r0, sl, #8, #1	@ tmp301, <variable>.QuantType,,
	bfi	r0, r1, #16, #1	@ tmp305, <variable>.IntraVlcFormat,,
	bfi	r0, r2, #24, #1	@ tmp309, <variable>.AlternateScan,,
	str	r0, [r8, #12]	@ tmp309,
	ldr	r3, [r7, #192]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	lr, r3, #15	@ tmp316, <variable>.BwdRefPhyAddr,
	str	lr, [r8, #16]	@ tmp316,
	ldr	ip, [r7, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	sl, ip, #15	@ tmp320, <variable>.FwdRefPhyAddr,
	str	sl, [r8, #20]	@ tmp320,
	ldr	r2, [r7, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r2, #15	@ tmp324, <variable>.DispFramePhyAddr,
	str	r1, [r8, #24]	@ tmp324,
	ldr	r0, [r7, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	bic	r3, r0, #15	@ tmp328, <variable>.PmvColmbPhyAddr,
	str	r3, [sp, #4]	@ tmp328, <variable>.current_pmv_addr
	str	r3, [r8, #28]	@ tmp328,
	ldr	r0, [r7, #156]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r0, [r7, #160]	@, <variable>.StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r7, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r3, r4	@ <variable>.StreamLength,
	bne	.L40	@,
	ldr	ip, [r7, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r2, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r1, [r7, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r2, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	str	r2, [r8, #32]	@ <variable>.StreamLength,
	mov	r2, r3	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r0, [r7, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	add	sl, r1, ip, lsr #3	@, BytePos0, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	ldr	r4, [r7, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	and	ip, sl, #15	@ tmp341, BytePos0,
	add	lr, r0, #24	@ tmp337, <variable>.StreamLength,
	mov	r1, r3	@ <variable>.StreamLength, <variable>.StreamLength
	and	sl, r4, #7	@ tmp346, <variable>.StreamBitOffset,
	bfi	r2, lr, #0, #24	@ <variable>.StreamLength, tmp337,,
	add	r0, sl, ip, asl #3	@, tmp349, tmp346, tmp341,
	bfi	r1, r3, #0, #24	@ <variable>.StreamLength, <variable>.StreamLength,,
	bfi	r2, r0, #24, #7	@ <variable>.StreamLength, tmp349,,
	mov	r4, r3	@ <variable>.StreamLength, <variable>.StreamLength
	str	r2, [r8, #36]	@ <variable>.StreamLength,
	bfi	r4, r3, #24, #7	@ <variable>.StreamLength, <variable>.StreamLength,,
	str	r1, [r8, #40]	@ <variable>.StreamLength,
	str	r4, [r8, #44]	@ <variable>.StreamLength,
.L41:
	add	r3, sp, #4	@ pretmp.731,,
	add	r0, r8, #64	@ ivtmp.759, D.31109,
	add	sl, r8, #192	@ D.31578, D.31109,
	mov	r2, r7	@ ivtmp.755, pMp2DecParam
	mov	r4, #0	@ tmp426,
.L42:
	str	r4, [sp, #4]	@ tmp426, D32
	add	r1, r2, #2	@ tmp427, ivtmp.755,
	ldrb	lr, [r2, #80]	@ zero_extendqisi2	@ tmp402, <variable>.IntraQuantTab
	mov	ip, r0	@ tmp428, ivtmp.759
	strb	lr, [r3, #0]	@ tmp402, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r2, #81]	@ zero_extendqisi2	@ tmp404, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp404, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r2, #16]	@ zero_extendqisi2	@ tmp406, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp406, <variable>.non_Intra_quantiser_matrix_even
	ldrb	lr, [r2, #17]	@ zero_extendqisi2	@ tmp408, <variable>.NonIntraQuantTab
	add	r2, r1, #2	@ ivtmp.755, tmp427,
	strb	lr, [r3, #3]	@ tmp408, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #4]	@ D32.821, D32
	str	lr, [ip], #4	@ D32.821,
	str	r4, [sp, #4]	@ tmp426, D32
	ldrb	lr, [r1, #80]	@ zero_extendqisi2	@ tmp432, <variable>.IntraQuantTab
	strb	lr, [r3, #0]	@ tmp432, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r1, #81]	@ zero_extendqisi2	@ tmp433, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp433, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r1, #16]	@ zero_extendqisi2	@ tmp434, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp434, <variable>.non_Intra_quantiser_matrix_even
	ldrb	r1, [r1, #17]	@ zero_extendqisi2	@ tmp435, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ tmp435, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #4]	@ D32.821, D32
	str	lr, [r0, #4]	@ D32.821,
	add	r0, ip, #4	@ ivtmp.759, tmp428,
	cmp	r0, sl	@ ivtmp.759, D.31578
	bne	.L42	@,
	ldr	r0, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r2, r0, #15	@ tmp413, <variable>.PmvTopAddr,
	str	r2, [sp, #4]	@ tmp413, <variable>.pmv_top_addr
	str	r2, [r8, #192]	@ tmp413,
	ldr	r3, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r6, r3, #15	@ tmp414, <variable>.MsgSlotAddr,
	add	r6, r6, #256	@ SlcDnMsgPhyAddr, tmp414,
	mov	r0, r6	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31275,
	beq	.L39	@,
	mov	r2, r6	@, SlcDnMsgPhyAddr
	str	r6, [sp, #4]	@ SlcDnMsgPhyAddr, <variable>.first_slc_dnmsg_addr
	mov	r0, r7	@, pMp2DecParam
	str	r6, [r8, #252]	@ SlcDnMsgPhyAddr,
	mov	r3, r5	@, StreamBaseAddr
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	movw	r1, #:lower16:g_PrintEnable	@ tmp418,
	movt	r1, #:upper16:g_PrintEnable	@ tmp418,
	ldr	ip, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	tst	ip, #16	@ g_PrintEnable,
	movwne	ip, #:lower16:.LANCHOR0	@ tmp421,
	movtne	ip, #:upper16:.LANCHOR0	@ tmp421,
	moveq	r0, r4	@ D.31112, tmp426
	movne	r0, r4	@ D.31112, tmp426
	ldrne	r2, [ip, #0]	@ num, num
	addne	r2, r2, #1	@ tmp424, num,
	strne	r2, [ip, #0]	@ tmp424, num
	b	.L44	@
.L40:
	ldr	sl, [r7, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r2, r4	@ tmp368, tmp231
	ldr	ip, [r7, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r3, r4	@ tmp385, tmp231
	ldr	r1, [r7, #160]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r3, r4, #0, #24	@ tmp385, tmp231,,
	ldr	r4, [r7, #156]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	r1, r1, sl, lsr #3	@, BytePos1, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r0, r4, ip, lsr #3	@, BytePos0.792, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	sl, r1, #15	@ tmp366, BytePos1,
	bic	lr, r0, #15	@ tmp365, BytePos0.792,
	and	r0, r0, #15	@ tmp373, BytePos0.792,
	rsb	ip, sl, lr	@ tmp367, tmp366, tmp365
	and	sl, r1, #15	@ tmp391, BytePos1,
	bfi	r2, ip, #0, #24	@ tmp368, tmp367,,
	str	r2, [r8, #32]	@ tmp368,
	ldr	r4, [r7, #164]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r2, [r7, #172]	@ <variable>.StreamLength, <variable>.StreamLength
	and	ip, r4, #7	@ tmp378, <variable>.StreamBitOffset,
	add	lr, ip, r0, asl #3	@, tmp381, tmp378, tmp373,
	bic	r4, r2, #-16777216	@ tmp382, <variable>.StreamLength,
	bfi	r4, lr, #24, #7	@ tmp382, tmp381,,
	str	r4, [r8, #36]	@ tmp382,
	str	r3, [r8, #40]	@ tmp385,
	ldr	r2, [r7, #176]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	ip, [r7, #168]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r0, r2, #24	@ tmp387, <variable>.StreamLength,
	and	lr, ip, #7	@ tmp396, <variable>.StreamBitOffset,
	bic	r3, r0, #-16777216	@ tmp400, tmp387,
	add	r4, lr, sl, asl #3	@, tmp399, tmp396, tmp391,
	bfi	r3, r4, #24, #7	@ tmp400, tmp399,,
	str	r3, [r8, #44]	@ tmp400,
	b	.L41	@
	.fnend
	.size	MP2HAL_V200R004_CfgDnMsg, .-MP2HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r5, r2, #0	@ VdhId, VdhId
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	beq	.L52	@,
	cmp	r5, #1	@ VdhId,
	beq	.L52	@,
.L50:
	mvn	r0, #0	@ D.30951,
.L61:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L52:
	movw	r2, #:lower16:269680640	@ tmp198,
	movt	r2, #:upper16:269680640	@ tmp198,
	str	r2, [sp, #24]	@ tmp198,
	mov	ip, #0	@ tmp408,
	ldr	r0, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [sp, #28]	@ tmp408, D32
	cmp	r0, ip	@ <variable>.pVdmRegVirAddr,
	ldr	r0, [sp, #24]	@ vdm_reg_phy_addr.457, vdm_reg_phy_addr
	beq	.L94	@,
.L69:
	movw	ip, #1140	@ tmp201,
	movw	r6, #:lower16:g_HwMem	@ tmp410,
	mul	r2, ip, r5	@ tmp200, tmp201, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp410,
	mvn	ip, #0	@ tmp204,
	mov	r0, #0	@ tmp205,
	mov	sl, r0	@ tmp210, tmp205
	mov	r7, #3	@ tmp227,
	mov	r8, r7	@ tmp230, tmp227
	ldr	r9, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r9, #32]	@ tmp204,
	ldrh	fp, [r4, #152]	@, <variable>.PicWidthInMb
	ldrh	r9, [r4, #148]	@, <variable>.PicHeightInMb
	mul	r9, fp, r9	@,,
	ldr	fp, [r2, r6]	@, <variable>.pVdmRegVirAddr
	str	r9, [sp, #12]	@, %sfp
	add	r9, r9, ip	@ tmp209,,
	bfi	sl, r9, #0, #20	@ tmp210, tmp209,,
	orr	sl, sl, #1090519040	@ tmp219, tmp210,
	orr	r9, sl, #4194304	@ tmp219, tmp219,
	movw	sl, #45316	@ tmp240,
	bfi	r9, r0, #25, #1	@ tmp219, tmp205,,
	str	r9, [fp, #8]	@ tmp219,
	ldr	r9, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	fp, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	sl, [r4, sl]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r9, r9, lsr #6	@ tmp228, <variable>.VahbStride,
	bfi	r8, r9, #4, #10	@ tmp230, tmp228,,
	orr	r8, r8, #16384	@ tmp233, tmp230,
	bic	r8, r8, #32768	@ tmp234, tmp233,
	bfi	r8, r7, #16, #12	@ tmp234, tmp227,,
	orr	r7, r8, #536870912	@ tmp238, tmp234,
	bic	r7, r7, #-1879048192	@ tmp242, tmp238,
	bfi	r7, sl, #30, #1	@ tmp242, <variable>.Compress_en,,
	str	r7, [fp, #12]	@ tmp242,
	ldr	r7, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r8, r8, #15	@ tmp251, <variable>.MsgSlotAddr,
	str	r8, [r7, #16]	@ tmp251,
	ldr	r1, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	ldr	r2, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r7, r1, #15	@ tmp260, <variable>.MsgSlotAddr,
	movw	r1, #45308	@ tmp267,
	str	r7, [r2, #20]	@ tmp260,
	ldr	r7, [r4, r1]	@ D.31005, <variable>.SlcNum
	str	r0, [sp, #28]	@ tmp205, D32
	cmp	r7, r0	@ D.31005,
	beq	.L54	@,
	ldr	r2, [r4, #252]	@ D.30998, <variable>.BsPhyAddr
	add	r0, r7, ip	@ tmp411, D.31005,
	and	r0, r0, #1	@ tmp413, tmp411,
	cmp	r2, #0	@ D.30998,
	beq	.L72	@,
	ldr	r1, [r4, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r1, #0	@ <variable>.BsLenInBit,
	ble	.L72	@,
	bic	r2, r2, #15	@ tmp423, D.30998,
	cmp	ip, r2	@ stream_base_addr, tmp423
	movcs	ip, r2	@ stream_base_addr, tmp423
.L72:
	ldr	r2, [r4, #256]	@ temp.881, <variable>.BsPhyAddr
	cmp	r2, #0	@ temp.881,
	bne	.L95	@,
.L74:
	mov	r1, #1	@ i,
	cmp	r1, r7	@ i, D.31005
	add	r2, r4, #44	@ ivtmp.866, pMp2DecParam,
	beq	.L71	@,
	cmp	r0, #0	@ tmp413,
	beq	.L55	@,
	ldr	r0, [r2, #252]	@ D.30998, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.30998,
	bne	.L84	@,
.L79:
	ldr	r0, [r2, #256]	@ temp.881, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.881,
	beq	.L81	@,
.L96:
	ldr	r8, [r2, #264]	@ tmp436, <variable>.BsLenInBit
	cmp	r8, #0	@ tmp436,
	ble	.L81	@,
	bic	r0, r0, #15	@ tmp437, temp.881,
	cmp	ip, r0	@ stream_base_addr, tmp437
	movcs	ip, r0	@ stream_base_addr, tmp437
.L81:
	add	r1, r1, #1	@ i, tmp414,
	add	r2, r2, #44	@ ivtmp.866, tmp415,
	cmp	r1, r7	@ i, D.31005
	beq	.L71	@,
.L55:
	ldr	r0, [r2, #252]	@ D.30998, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.30998,
	beq	.L58	@,
	ldr	r8, [r2, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r8, #0	@ <variable>.BsLenInBit,
	ble	.L58	@,
	bic	r0, r0, #15	@ tmp271, D.30998,
	cmp	ip, r0	@ stream_base_addr, tmp271
	movcs	ip, r0	@ stream_base_addr, tmp271
.L58:
	ldr	r0, [r2, #256]	@ temp.881, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.881,
	beq	.L56	@,
	ldr	r8, [r2, #264]	@ tmp268, <variable>.BsLenInBit
	cmp	r8, #0	@ tmp268,
	ble	.L56	@,
	bic	r0, r0, #15	@ tmp269, temp.881,
	cmp	ip, r0	@ stream_base_addr, tmp269
	movcs	ip, r0	@ stream_base_addr, tmp269
.L56:
	add	r2, r2, #44	@ tmp415, ivtmp.866,
	add	r1, r1, #1	@ tmp414, i,
	ldr	r0, [r2, #252]	@ D.30998, <variable>.BsPhyAddr
	cmp	r0, #0	@ D.30998,
	beq	.L79	@,
.L84:
	ldr	r8, [r2, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r8, #0	@ <variable>.BsLenInBit,
	ble	.L79	@,
	bic	r0, r0, #15	@ tmp434, D.30998,
	cmp	ip, r0	@ stream_base_addr, tmp434
	movcs	ip, r0	@ stream_base_addr, tmp434
	ldr	r0, [r2, #256]	@ temp.881, <variable>.BsPhyAddr
	cmp	r0, #0	@ temp.881,
	beq	.L81	@,
	b	.L96	@
.L71:
	cmn	ip, #1	@ stream_base_addr,
	beq	.L54	@,
	movw	r7, #1140	@ tmp276,
	str	ip, [r3, #0]	@ stream_base_addr,* StreamBaseAddr
	mul	r7, r7, r5	@ tmp275, tmp276, VdhId
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp280,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp280,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #24]	@ stream_base_addr,
	ldrh	lr, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r8, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	cmp	lr, #120	@ <variable>.PicWidthInMb,
	add	r8, r8, #4	@ D.31016, s_RegPhyBaseAddr,
	movls	lr, #65536	@ iftmp.470,
	movhi	lr, #0	@ iftmp.470,
	str	lr, [sp, #28]	@ iftmp.470, D32
	bl	MEM_ReadPhyWord	@
	ldr	r2, [sp, #28]	@ D32, D32
	orr	r1, r0, r2	@ tmp283,, D32
	mov	r0, r8	@, D.31016
	bl	MEM_WritePhyWord	@
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:3148803	@ tmp285,
	movt	r0, #:upper16:3148803	@ tmp285,
	str	r0, [sp, #28]	@ tmp285, D32
	movw	r2, #:lower16:-1431655765	@ tmp360,
	str	r0, [r1, #60]	@ tmp285,
	movt	r2, #:upper16:-1431655765	@ tmp360,
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [sp, #28]	@ D32.894, D32
	str	ip, [r3, #64]	@ D32.894,
	ldr	r1, [sp, #28]	@ D32.897, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #68]	@ D32.897,
	ldr	ip, [sp, #28]	@ D32.900, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.900,
	ldr	r1, [sp, #28]	@ D32.903, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #76]	@ D32.903,
	ldr	ip, [sp, #28]	@ D32.906, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.906,
	ldr	r1, [sp, #28]	@ D32.909, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #84]	@ D32.909,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r3, #15	@ tmp325, <variable>.CurPicPhyAddr,
	str	r0, [ip, #96]	@ tmp325,
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	ldrh	r0, [r4, #148]	@ temp.913, <variable>.PicHeightInMb
	sub	r3, r1, #1	@ tmp334, <variable>.PictureStructure,
	ldr	ip, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	uxtb	r3, r3	@ tmp335, tmp334
	cmp	r3, #1	@ tmp335,
	str	ip, [r1, #100]	@ <variable>.VahbStride,
	movls	r3, #2	@ iftmp.473,
	movhi	r3, #1	@ iftmp.473,
	mul	r0, r0, r3	@ tmp347, temp.913, iftmp.473
	ldr	r1, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r0, r0, #1	@ tmp348, tmp347,
	mov	r3, r1, asl #1	@ tmp345, <variable>.VahbStride,
	mov	r0, r0, lsr #1	@ tmp349, tmp348,
	mul	r1, r0, r3	@ tmp350, tmp349, tmp345
	str	r1, [ip, #104]	@ tmp350,
	ldrb	r0, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	umull	r1, r2, r2, r0	@, tmp359, tmp360, <variable>.PictureStructure
	mov	r3, r2, lsr #1	@ tmp357, tmp359,
	add	r2, r3, r3, asl #1	@, tmp363, tmp357, tmp357,
	rsb	ip, r2, r0	@ tmp364, tmp363, <variable>.PictureStructure
	movw	r0, #1140	@ tmp379,
	mul	r5, r0, r5	@ tmp378, tmp379, VdhId
	uxtb	r3, ip	@ tmp365, tmp364
	cmp	r3, #2	@ tmp365,
	ldreqh	r2, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r1, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldreq	r3, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	ldrne	r3, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	muleq	r2, r1, r2	@ tmp371, <variable>.PicHeightInMb, <variable>.PicWidthInMb
	addeq	r3, r3, #127	@ tmp367, <variable>.DnrMbinfoStaddr,
	addeq	r3, r3, r2, asl #3	@, tmp373, tmp367, tmp371,
	biceq	r3, r3, #127	@ tmp374, tmp373,
	str	r3, [sp, #28]	@ <variable>.DnrMbinfoStaddr, <variable>.dnr_mbinfo_staddr
	ldr	r1, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #0	@ tmp382,
	ldr	ip, [sp, #28]	@ D32.933, D32
	mov	r2, r3	@ tmp394, tmp382
	bfi	r2, r3, #0, #1	@ tmp394, tmp382,,
	mov	r0, r3	@ D.30951, tmp382
	str	ip, [r1, #144]	@ D32.933,
	ldr	r1, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	ip, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r4, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	r1, r1, #3	@ tmp386, <variable>.FwdRefIsFldSave,
	bfi	r1, r4, #2, #2	@ tmp386, <variable>.BwdRefIsFldSave,,
	str	r1, [ip, #148]	@ tmp386,
	ldr	ip, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #152]	@ tmp394,
	ldr	r2, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #108]	@ tmp382,
	b	.L61	@
.L95:
	ldr	r1, [r4, #264]	@ tmp425, <variable>.BsLenInBit
	cmp	r1, #0	@ tmp425,
	ble	.L74	@,
	bic	r2, r2, #15	@ tmp426, temp.881,
	cmp	ip, r2	@ stream_base_addr, tmp426
	movcs	ip, r2	@ stream_base_addr, tmp426
	b	.L74	@
.L94:
	str	r1, [sp, #20]	@,
	str	r3, [sp, #16]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #20]	@,
	ldr	r3, [sp, #16]	@,
	cmp	r0, #0	@ D.31310
	beq	.L50	@,
	str	r0, [r1, #0]	@ D.31310, <variable>.pVdmRegVirAddr
	b	.L69	@
.L54:
	mov	r1, #0	@ tmp272,
	mvn	r0, #0	@ D.30951,
	str	r1, [r3, #0]	@ tmp272,* StreamBaseAddr
	b	.L61	@
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
	bhi	.L98	@,
	bne	.L103	@,
.L98:
	mvn	r0, #0	@ D.30589,
.L101:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L103:
	movw	r5, #:lower16:g_HwMem	@ tmp141,
	movt	r5, #:upper16:g_HwMem	@ tmp141,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L104	@,
.L100:
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	add	r3, sp, #4	@,,
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.30599,
	bne	.L98	@,
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, r5	@, D.30599
	movt	r1, #:upper16:g_HwMem	@,
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
	mov	r0, r5	@ D.30589, D.30599
	b	.L101	@
.L104:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.30595
	beq	.L98	@,
	str	r0, [r5, #0]	@ D.30595, <variable>.pVdmRegVirAddr
	b	.L100	@
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.31104, %object
	.size	num.31104, 4
num.31104:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
