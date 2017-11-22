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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
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
	ldr	r8, [r0, #252]	@ D.30539, <variable>.BsPhyAddr
	mov	sl, r3	@ tmp245, tmp231
	ldr	r5, [r0, #268]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	mov	fp, #1	@ tmp240,
	and	r7, r8, #15	@ tmp235, D.30539,
	ldr	r9, [sp, #24]	@, %sfp
	bic	ip, r8, #15	@ tmp243, D.30539,
	add	r4, r5, r7, asl #3	@, bit_offset_0, <variable>.BsBitOffset, tmp235,
	rsb	r8, r9, ip	@ tmp244,, tmp243
	bfi	fp, r4, #24, #7	@ tmp240, bit_offset_0,,
	bfi	sl, r8, #0, #24	@ tmp245, tmp244,,
	str	fp, [r1, #0]	@ tmp240,* SlcDnMsgVirAddr
	mov	ip, #0	@ tmp251,
	str	sl, [r1, #4]	@ tmp245,
	ldr	fp, [r0, #256]	@ D.30565, <variable>.BsPhyAddr
	ldr	r5, [r0, #272]	@ <variable>.BsBitOffset, <variable>.BsBitOffset
	and	r6, fp, #15	@ tmp247, D.30565,
	add	r4, r5, r6, asl #3	@, bit_offset_1, <variable>.BsBitOffset, tmp247,
	bfi	ip, r4, #24, #7	@ tmp251, bit_offset_1,,
	str	ip, [r1, #8]	@ tmp251,
	ldr	sl, [r0, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	bicne	sl, fp, #15	@ tmp255, D.30565,
	streq	sl, [sp, #44]	@ <variable>.BsPhyAddr,
	rsbne	sl, r9, sl	@ tmp256,, tmp255
	ldr	fp, [sp, #36]	@, %sfp
	bfine	r3, sl, #0, #24	@ tmp257, tmp256,,
	strne	r3, [sp, #44]	@ tmp257,
	ldr	r6, [sp, #44]	@ D32.563, D32
	mov	sl, #1	@,
	str	sl, [sp, #32]	@, %sfp
	mov	r3, #0	@ tmp260,
	mov	r4, r3	@ tmp267, tmp260
	add	ip, fp, #32	@ tmp275,,
	str	r6, [r1, #12]	@ D32.563,
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
	ldr	r6, [r0, #284]	@ prephitmp.536, <variable>.slice_start_mbn
	ldr	r4, [r0, #240]	@ prephitmp.578, <variable>.slice_start_mbn
	mov	r7, r5, asl #2	@,,
	mov	r5, #44	@ tmp426,
	str	r7, [sp, #28]	@, %sfp
.L15:
	cmp	r3, #0	@ i,
	movle	r7, #0	@,
	movgt	r7, #1	@,
	cmp	r6, r4	@ prephitmp.536, prephitmp.578
	movhi	r7, #0	@,,
	cmp	r7, #0	@ tmp282,
	mov	r6, r7	@ tmp282,
	bne	.L7	@,
	mla	r4, r5, r3, r0	@ tmp287, tmp426, i, pMp2DecParam
	ldr	r8, [sp, #28]	@, %sfp
	str	r7, [sp, #44]	@ tmp282, D32
	add	r7, r3, r8	@ D.30637, i,
	ldr	sl, [ip, #0]	@ tmp302,
	mov	r6, r7, asl #3	@ tmp310, D.30637,
	mov	fp, r7, asl #2	@ tmp335, D.30637,
	add	r9, r6, #1	@, tmp310,
	add	r8, fp, #1	@, tmp335,
	str	r9, [sp, #16]	@, %sfp
	str	r8, [sp, #20]	@, %sfp
	mov	r8, r7, asl #5	@ D.30638, D.30637,
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
	str	sl, [r1, r7, asl #5]	@ D32.587,* SlcDnMsgVirAddr
	bic	r6, r9, #-16777216	@ D32.593,,
	str	r6, [r1, fp, asl #2]	@ D32.593,* SlcDnMsgVirAddr
	ldr	fp, [r4, #256]	@ temp.594, <variable>.BsPhyAddr
	mov	r7, r7, asl #1	@ tmp367, D.30637,
	ldr	sl, [ip, #0]	@ tmp332,
	and	r9, fp, #15	@, temp.594,
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
	str	sl, [r1, r6, asl #3]	@ D32.607,* SlcDnMsgVirAddr
	ldr	sl, [r4, #256]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	mov	r4, #0	@,
	cmp	sl, #0	@ <variable>.BsPhyAddr,
	bicne	fp, fp, #15	@ tmp346, temp.594,
	ldrne	sl, [ip, #0]	@ tmp348,
	ldrne	r9, [sp, #24]	@, %sfp
	rsbne	fp, r9, fp	@ tmp347,, tmp346
	bfine	sl, fp, #0, #24	@ tmp348, tmp347,,
	strne	sl, [ip, #0]	@ tmp348,
	ldreq	r6, [ip, #0]	@ tmp350,
	add	fp, r8, #12	@ tmp351, D.30638,
	bfieq	r6, sl, #0, #24	@ tmp350, <variable>.BsPhyAddr,,
	mul	sl, r5, r3	@ tmp354, tmp426, i
	streq	r6, [ip, #0]	@ tmp350,
	ldr	r9, [sp, #44]	@ D32.615, D32
	add	r3, r3, #1	@ j, i,
	str	r4, [sp, #44]	@, D32
	cmp	r2, r3	@ SliceNum, j
	add	r4, sl, r0	@ tmp356, tmp354, pMp2DecParam
	ldr	r6, [ip, #0]	@ tmp359,
	str	r9, [r1, fp]	@ D32.615,
	add	fp, r7, #1	@, tmp367,
	str	fp, [sp, #12]	@, %sfp
	mov	r7, #0	@ tmp377,
	ldr	r9, [r4, #292]	@ <variable>.quantiser_scale_code, <variable>.quantiser_scale_code
	add	fp, r8, #20	@, D.30638,
	bfi	r6, r9, #0, #6	@ tmp359, <variable>.quantiser_scale_code,,
	str	r6, [ip, #0]	@ tmp359,
	ldr	r9, [r4, #288]	@ <variable>.intra_slice, <variable>.intra_slice
	str	r7, [sp, #44]	@ tmp377, D32
	bfi	r6, r9, #6, #1	@ tmp366, <variable>.intra_slice,,
	ldr	r9, [sp, #12]	@, %sfp
	str	r6, [r1, r9, asl #4]	@ D32.624,* SlcDnMsgVirAddr
	ldr	r6, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	bfi	r7, r6, #0, #20	@ tmp377, <variable>.slice_start_mbn,,
	str	r7, [ip, #0]	@ tmp377,
	str	r7, [r1, fp]	@ D32.627,
	ble	.L10	@,
	mla	r7, r5, r3, r0	@ tmp388, tmp426, j, pMp2DecParam
	ldr	r6, [r4, #284]	@ temp.636, <variable>.slice_start_mbn
	ldr	r4, [r7, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r4, r6	@ <variable>.slice_start_mbn, temp.636
	bhi	.L10	@,
	mvn	r7, r3	@ tmp430, j
	add	r4, r7, r2	@ tmp429, tmp430, SliceNum
	tst	r4, #1	@ tmp429,
	add	r7, sl, #248	@ tmp393, tmp354,
	add	sl, r0, r7	@ tmp394, pMp2DecParam, tmp393
	add	r4, sl, #4	@ ivtmp.554, tmp394,
	beq	.L11	@,
	ldr	r7, [r4, #120]	@ D.30672, <variable>.slice_start_mbn
	add	r3, r3, #1	@ j, j,
	add	r4, sl, #48	@ ivtmp.554, tmp394,
	cmp	r7, r6	@ D.30672, temp.636
	bls	.L11	@,
	b	.L10	@
.L12:
	ldr	sl, [r4, #120]	@ D.30672, <variable>.slice_start_mbn
	add	r4, r4, #88	@ ivtmp.554, ivtmp.554,
	cmp	sl, r6	@ D.30672, temp.636
	bhi	.L10	@,
	ldr	r7, [r7, #120]	@ D.30672, <variable>.slice_start_mbn
	add	r3, r3, #1	@ j, j,
	cmp	r7, r6	@ D.30672, temp.636
	bhi	.L10	@,
.L11:
	add	r3, r3, #1	@ j, j,
	add	r7, r4, #44	@ tmp432, ivtmp.554,
	cmp	r2, r3	@ SliceNum, j
	bgt	.L12	@,
.L10:
	cmp	r3, r2	@ j, SliceNum
	mlane	r4, r5, r3, r0	@ tmp401, tmp426, j, pMp2DecParam
	ldreqh	r4, [r0, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldreqh	r7, [r0, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	moveq	r6, #0	@ prephitmp.534,
	ldrne	sl, [sp, #32]	@, %sfp
	ldrne	fp, [sp, #36]	@, %sfp
	muleq	r4, r7, r4	@ tmp397, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r6, r3, sl	@ tmp404, j,
	ldrne	r4, [r4, #284]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r7, r8, #28	@ tmp412, D.30638,
	addne	r6, fp, r6, asl #5	@, prephitmp.534,, tmp404,
	add	r8, r8, #24	@ tmp409, D.30638,
	sub	r4, r4, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
	sub	r3, r3, #1	@ i, j,
	bic	sl, r4, #-16777216	@ D32.634, slice_end_mbn,
	bic	r4, sl, #15728640	@ D32.634, D32.634,
	mov	sl, r6	@ D32.638, prephitmp.534
	str	r4, [r1, r8]	@ D32.634,
	str	r6, [r1, r7]	@ D32.638,
	str	r6, [ip, #0]	@ prephitmp.534, <variable>.next_slice_para_addr
.L7:
	add	r3, r3, #1	@ i, i,
	cmp	r2, r3	@ SliceNum, i
	ble	.L6	@,
	sub	r4, r3, #1	@ tmp418, i,
	mla	r6, r5, r3, r0	@ tmp416, tmp426, i, pMp2DecParam
	mla	r7, r5, r4, r0	@ tmp422, tmp426, tmp418, pMp2DecParam
	ldr	r6, [r6, #284]	@ prephitmp.536, <variable>.slice_start_mbn
	ldr	r4, [r7, #284]	@ prephitmp.578, <variable>.slice_start_mbn
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
	ldrh	r1, [r0, #152]	@ D.30701, <variable>.PicWidthInMb
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
	str	r1, [sp, #28]	@ D.30701, DnrCfg.pic_width_in_mb
	beq	.L31	@,
	ldrh	r3, [r0, #150]	@ <variable>.FrameHeightInMb, <variable>.FrameHeightInMb
	sub	r2, r2, #1	@ tmp148, <variable>.PictureStructure,
	add	r4, r3, #1	@ tmp151, <variable>.FrameHeightInMb,
	uxtb	ip, r2	@ tmp149, tmp148
	cmp	ip, #1	@ tmp149,
	mov	r2, r4, asr #1	@ tmp152, tmp151,
	movhi	r2, r2, asl #1	@ tmp156, tmp155,
	sub	r3, r2, #1	@ prephitmp.652, tmp156,
	str	r3, [sp, #32]	@ prephitmp.652, DnrCfg.pic_height_in_mb
.L27:
	mul	r4, r1, r3	@ tmp157, D.30701, prephitmp.652
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp164,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp164,
	mov	r2, #45312	@ tmp162,
	ldr	ip, [r0, r2]	@ <variable>.DnrMbInfoStAddr, <variable>.DnrMbInfoStAddr
	ldr	r3, [r3, #8]	@ D.30732, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	ldr	r2, [r0, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	ldr	r1, [r0, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	cmp	r3, #0	@ D.30732,
	str	ip, [sp, #76]	@ <variable>.DnrMbInfoStAddr, DnrCfg.dnr_info_addr
	bic	ip, r2, #15	@ tmp161, <variable>.DispFramePhyAddr,
	str	r4, [sp, #24]	@ tmp157, DnrCfg.mbtodec
	bic	r1, r1, #15	@ tmp159, <variable>.CurPicPhyAddr,
	str	ip, [sp, #40]	@ tmp161, DnrCfg.dnr_ystaddr_2d
	str	r1, [sp, #36]	@ tmp159, DnrCfg.dnr_ystaddr_1d
	ldr	r2, [r0, #228]	@ D.30727, <variable>.VahbStride
	beq	.L30	@,
	mov	lr, #8	@ tmp170,
	mov	r0, #1	@ tmp168,
	mov	r1, r2, lsr #6	@ tmp165, D.30727,
	mov	ip, #0	@ tmp166,
	strb	r0, [sp, #8]	@ tmp168, DnrCfg.chroma_format_idc
	add	r0, sp, #4	@,,
	str	r1, [sp, #64]	@ tmp165, DnrCfg.ddr_stride
	str	lr, [sp, #56]	@ tmp170, DnrCfg.QP_U
	str	lr, [sp, #52]	@ tmp170, DnrCfg.QP_Y
	strb	ip, [sp, #14]	@ tmp166, DnrCfg.use_pic_qp_en
	str	lr, [sp, #60]	@ tmp170, DnrCfg.QP_V
	blx	r3	@ D.30732
.L30:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, pc}
.L31:
	ldrh	r3, [r0, #150]	@ prephitmp.652, <variable>.FrameHeightInMb
	str	r3, [sp, #32]	@ prephitmp.652, DnrCfg.pic_height_in_mb
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
	ldrh	r3, [r2, #148]	@ temp.705, <variable>.PicHeightInMb
	sub	ip, r5, #1	@ tmp195, <variable>.PictureStructure,
	ldr	r4, [r0, #32]	@ <variable>.ystride_1d, <variable>.ystride_1d
	ldrh	r5, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	uxtb	ip, ip	@ tmp196, tmp195
	cmp	ip, #1	@ tmp196,
	str	r5, [r4, #0]	@ <variable>.PicWidthInMb, <variable>.ystride_1d
	movls	ip, #2	@ iftmp.453,
	movhi	ip, #1	@ iftmp.453,
	mul	ip, r3, ip	@ tmp200, temp.705, iftmp.453
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
	subs	r8, r0, #0	@ D.31006,
	bne	.L48	@,
.L39:
	mvn	r0, #0	@ D.31009,
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
	str	ip, [r8, #0]	@ tmp245,* D.31006
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
	add	r3, sp, #4	@ pretmp.730,,
	add	r0, r8, #64	@ ivtmp.758, D.31006,
	add	sl, r8, #192	@ D.31475, D.31006,
	mov	r2, r7	@ ivtmp.754, pMp2DecParam
	mov	r4, #0	@ tmp426,
.L42:
	str	r4, [sp, #4]	@ tmp426, D32
	add	r1, r2, #2	@ tmp427, ivtmp.754,
	ldrb	lr, [r2, #80]	@ zero_extendqisi2	@ tmp402, <variable>.IntraQuantTab
	mov	ip, r0	@ tmp428, ivtmp.758
	strb	lr, [r3, #0]	@ tmp402, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r2, #81]	@ zero_extendqisi2	@ tmp404, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp404, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r2, #16]	@ zero_extendqisi2	@ tmp406, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp406, <variable>.non_Intra_quantiser_matrix_even
	ldrb	lr, [r2, #17]	@ zero_extendqisi2	@ tmp408, <variable>.NonIntraQuantTab
	add	r2, r1, #2	@ ivtmp.754, tmp427,
	strb	lr, [r3, #3]	@ tmp408, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #4]	@ D32.820, D32
	str	lr, [ip], #4	@ D32.820,
	str	r4, [sp, #4]	@ tmp426, D32
	ldrb	lr, [r1, #80]	@ zero_extendqisi2	@ tmp432, <variable>.IntraQuantTab
	strb	lr, [r3, #0]	@ tmp432, <variable>.intra_quantiser_matrix_even
	ldrb	lr, [r1, #81]	@ zero_extendqisi2	@ tmp433, <variable>.IntraQuantTab
	strb	lr, [r3, #2]	@ tmp433, <variable>.intra_quantiser_matrix_odd
	ldrb	lr, [r1, #16]	@ zero_extendqisi2	@ tmp434, <variable>.NonIntraQuantTab
	strb	lr, [r3, #1]	@ tmp434, <variable>.non_Intra_quantiser_matrix_even
	ldrb	r1, [r1, #17]	@ zero_extendqisi2	@ tmp435, <variable>.NonIntraQuantTab
	strb	r1, [r3, #3]	@ tmp435, <variable>.non_Intra_quantiser_matrix_odd
	ldr	lr, [sp, #4]	@ D32.820, D32
	str	lr, [r0, #4]	@ D32.820,
	add	r0, ip, #4	@ ivtmp.758, tmp428,
	cmp	r0, sl	@ ivtmp.758, D.31475
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
	subs	r1, r0, #0	@ D.31172,
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
	moveq	r0, r4	@ D.31009, tmp426
	movne	r0, r4	@ D.31009, tmp426
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
	add	r0, r4, ip, lsr #3	@, BytePos0.791, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	sl, r1, #15	@ tmp366, BytePos1,
	bic	lr, r0, #15	@ tmp365, BytePos0.791,
	and	r0, r0, #15	@ tmp373, BytePos0.791,
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ VdhId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	.pad #44
	sub	sp, sp, #44	@,,
	beq	.L52	@,
	cmp	r2, #1	@ VdhId,
	beq	.L52	@,
.L50:
	mvn	r0, #0	@ D.30855,
.L61:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L52:
	movw	r0, #:lower16:269680640	@ tmp193,
	movt	r0, #:upper16:269680640	@ tmp193,
	str	r0, [sp, #32]	@ tmp193,
	mov	ip, #0	@ tmp388,
	ldr	r0, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [sp, #36]	@ tmp388, D32
	cmp	r0, ip	@ <variable>.pVdmRegVirAddr,
	ldr	r0, [sp, #32]	@ vdm_reg_phy_addr.457, vdm_reg_phy_addr
	beq	.L90	@,
.L65:
	movw	r5, #1144	@ tmp196,
	movw	ip, #:lower16:g_HwMem	@ tmp390,
	mul	r0, r5, r2	@ tmp195, tmp196, VdhId
	movt	ip, #:upper16:g_HwMem	@ tmp390,
	mvn	r6, #0	@ tmp199,
	mov	r5, #0	@ tmp200,
	mov	sl, r5	@ tmp205, tmp200
	mov	r7, #3	@ tmp222,
	mov	r8, r7	@ tmp225, tmp222
	ldr	r9, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r9, #32]	@ tmp199,
	ldrh	fp, [r4, #152]	@, <variable>.PicWidthInMb
	ldrh	r9, [r4, #148]	@, <variable>.PicHeightInMb
	mul	r9, fp, r9	@,,
	str	r9, [sp, #12]	@, %sfp
	add	r9, r9, r6	@ tmp204,,
	ldr	fp, [r0, ip]	@, <variable>.pVdmRegVirAddr
	bfi	sl, r9, #0, #20	@ tmp205, tmp204,,
	orr	sl, sl, #1090519040	@ tmp214, tmp205,
	orr	r9, sl, #4194304	@ tmp214, tmp214,
	movw	sl, #45316	@ tmp235,
	bfi	r9, r5, #25, #1	@ tmp214, tmp200,,
	str	r9, [fp, #8]	@ tmp214,
	ldr	r9, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	fp, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	sl, [r4, sl]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r9, r9, lsr #6	@ tmp223, <variable>.VahbStride,
	bfi	r8, r9, #4, #10	@ tmp225, tmp223,,
	orr	r8, r8, #16384	@ tmp228, tmp225,
	bic	r8, r8, #32768	@ tmp229, tmp228,
	bfi	r8, r7, #16, #12	@ tmp229, tmp222,,
	orr	r7, r8, #536870912	@ tmp233, tmp229,
	bic	r7, r7, #-1879048192	@ tmp237, tmp233,
	bfi	r7, sl, #30, #1	@ tmp237, <variable>.Compress_en,,
	str	r7, [fp, #12]	@ tmp237,
	ldr	r7, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r1, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r8, r8, #15	@ tmp246, <variable>.MsgSlotAddr,
	str	r8, [r7, #16]	@ tmp246,
	ldr	r7, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r1, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r1, r1, #15	@ tmp255, <variable>.MsgSlotAddr,
	str	r1, [r7, #20]	@ tmp255,
	movw	r1, #45308	@ tmp262,
	ldr	r7, [r4, r1]	@ D.30909, <variable>.SlcNum
	str	r5, [sp, #36]	@ tmp200, D32
	cmp	r7, r5	@ D.30909,
	beq	.L54	@,
	ldr	r1, [r4, #252]	@ D.30902, <variable>.BsPhyAddr
	add	r0, r7, r6	@ tmp391, D.30909,
	and	r5, r0, #1	@ tmp393, tmp391,
	cmp	r1, #0	@ D.30902,
	beq	.L68	@,
	ldr	r0, [r4, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r0, #0	@ <variable>.BsLenInBit,
	ble	.L68	@,
	bic	r1, r1, #15	@ tmp403, D.30902,
	cmp	r6, r1	@ stream_base_addr, tmp403
	movcs	r6, r1	@ stream_base_addr, tmp403
.L68:
	ldr	r1, [r4, #256]	@ temp.876, <variable>.BsPhyAddr
	cmp	r1, #0	@ temp.876,
	bne	.L91	@,
.L70:
	mov	r0, #1	@ i,
	cmp	r0, r7	@ i, D.30909
	add	r1, r4, #44	@ ivtmp.861, pMp2DecParam,
	beq	.L67	@,
	cmp	r5, #0	@ tmp393,
	beq	.L55	@,
	ldr	r5, [r1, #252]	@ D.30902, <variable>.BsPhyAddr
	cmp	r5, #0	@ D.30902,
	bne	.L80	@,
.L75:
	ldr	r5, [r1, #256]	@ temp.876, <variable>.BsPhyAddr
	cmp	r5, #0	@ temp.876,
	beq	.L77	@,
.L92:
	ldr	r8, [r1, #264]	@ tmp416, <variable>.BsLenInBit
	cmp	r8, #0	@ tmp416,
	ble	.L77	@,
	bic	r5, r5, #15	@ tmp417, temp.876,
	cmp	r6, r5	@ stream_base_addr, tmp417
	movcs	r6, r5	@ stream_base_addr, tmp417
.L77:
	add	r0, r0, #1	@ i, tmp394,
	add	r1, r1, #44	@ ivtmp.861, tmp395,
	cmp	r0, r7	@ i, D.30909
	beq	.L67	@,
.L55:
	ldr	r5, [r1, #252]	@ D.30902, <variable>.BsPhyAddr
	cmp	r5, #0	@ D.30902,
	beq	.L58	@,
	ldr	r8, [r1, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r8, #0	@ <variable>.BsLenInBit,
	ble	.L58	@,
	bic	r5, r5, #15	@ tmp266, D.30902,
	cmp	r6, r5	@ stream_base_addr, tmp266
	movcs	r6, r5	@ stream_base_addr, tmp266
.L58:
	ldr	r5, [r1, #256]	@ temp.876, <variable>.BsPhyAddr
	cmp	r5, #0	@ temp.876,
	beq	.L56	@,
	ldr	r8, [r1, #264]	@ tmp263, <variable>.BsLenInBit
	cmp	r8, #0	@ tmp263,
	ble	.L56	@,
	bic	r5, r5, #15	@ tmp264, temp.876,
	cmp	r6, r5	@ stream_base_addr, tmp264
	movcs	r6, r5	@ stream_base_addr, tmp264
.L56:
	add	r1, r1, #44	@ tmp395, ivtmp.861,
	add	r0, r0, #1	@ tmp394, i,
	ldr	r5, [r1, #252]	@ D.30902, <variable>.BsPhyAddr
	cmp	r5, #0	@ D.30902,
	beq	.L75	@,
.L80:
	ldr	r8, [r1, #260]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r8, #0	@ <variable>.BsLenInBit,
	ble	.L75	@,
	bic	r5, r5, #15	@ tmp414, D.30902,
	cmp	r6, r5	@ stream_base_addr, tmp414
	movcs	r6, r5	@ stream_base_addr, tmp414
	ldr	r5, [r1, #256]	@ temp.876, <variable>.BsPhyAddr
	cmp	r5, #0	@ temp.876,
	beq	.L77	@,
	b	.L92	@
.L67:
	cmn	r6, #1	@ stream_base_addr,
	beq	.L54	@,
	movw	r7, #1144	@ tmp271,
	str	r6, [r3, #0]	@ stream_base_addr,* StreamBaseAddr
	mul	r0, r7, r2	@ tmp270, tmp271, VdhId
	movw	r1, #:lower16:3148803	@ tmp274,
	movt	r1, #:upper16:3148803	@ tmp274,
	movw	r7, #:lower16:-1431655765	@ tmp340,
	movt	r7, #:upper16:-1431655765	@ tmp340,
	ldr	r5, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r5, #24]	@ stream_base_addr,
	ldr	r5, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [sp, #36]	@ tmp274, D32
	str	r1, [r5, #60]	@ tmp274,
	ldr	r6, [sp, #36]	@ D32.887, D32
	ldr	r1, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r1, #64]	@ D32.887,
	ldr	r5, [sp, #36]	@ D32.890, D32
	ldr	r6, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r6, #68]	@ D32.890,
	ldr	r1, [sp, #36]	@ D32.893, D32
	ldr	r6, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r6, #72]	@ D32.893,
	ldr	r5, [sp, #36]	@ D32.896, D32
	ldr	r1, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r1, #76]	@ D32.896,
	ldr	r6, [sp, #36]	@ D32.899, D32
	ldr	r1, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r1, #80]	@ D32.899,
	ldr	r5, [sp, #36]	@ D32.902, D32
	ldr	r6, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r6, #84]	@ D32.902,
	ldr	r6, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r4, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r5, r1, #15	@ tmp314, <variable>.CurPicPhyAddr,
	str	r5, [r6, #96]	@ tmp314,
	ldr	r1, [r4, #228]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r6, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r6, #100]	@ <variable>.VahbStride,
	ldr	r5, [r4, #232]	@ <variable>.uv_offset, <variable>.uv_offset
	ldr	r3, [r0, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r3, #104]	@ <variable>.uv_offset,
	ldrb	r6, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	umull	r5, r1, r7, r6	@, tmp339, tmp340, <variable>.PictureStructure
	mov	r0, r1, lsr #1	@ tmp337, tmp339,
	add	r1, r0, r0, asl #1	@, tmp343, tmp337, tmp337,
	movw	r0, #1144	@ tmp359,
	rsb	r3, r1, r6	@ tmp344, tmp343, <variable>.PictureStructure
	mul	r2, r0, r2	@ tmp358, tmp359, VdhId
	uxtb	r5, r3	@ tmp345, tmp344
	cmp	r5, #2	@ tmp345,
	mov	r3, #0	@ tmp362,
	mov	r0, r3	@ D.30855, tmp362
	ldreqh	r1, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r7, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldreq	r5, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	ldrne	r5, [r4, #236]	@ <variable>.DnrMbinfoStaddr, <variable>.DnrMbinfoStaddr
	muleq	r1, r7, r1	@ tmp351, <variable>.PicHeightInMb, <variable>.PicWidthInMb
	addeq	r5, r5, #127	@ tmp347, <variable>.DnrMbinfoStaddr,
	addeq	r5, r5, r1, asl #3	@, tmp353, tmp347, tmp351,
	mov	r1, r3	@ tmp374, tmp362
	biceq	r5, r5, #127	@ tmp354, tmp353,
	str	r5, [sp, #36]	@ <variable>.DnrMbinfoStaddr, <variable>.dnr_mbinfo_staddr
	ldr	r7, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	r1, r3, #0, #1	@ tmp374, tmp362,,
	ldr	r6, [sp, #36]	@ D32.922, D32
	str	r6, [r7, #144]	@ D32.922,
	ldr	r7, [r4, #208]	@ <variable>.FwdRefIsFldSave, <variable>.FwdRefIsFldSave
	ldr	r5, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [r4, #204]	@ <variable>.BwdRefIsFldSave, <variable>.BwdRefIsFldSave
	and	r4, r7, #3	@ tmp366, <variable>.FwdRefIsFldSave,
	bfi	r4, r6, #2, #2	@ tmp366, <variable>.BwdRefIsFldSave,,
	str	r4, [r5, #148]	@ tmp366,
	ldr	r4, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r4, #152]	@ tmp374,
	ldr	r1, [r2, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r1, #108]	@ tmp362,
	b	.L61	@
.L91:
	ldr	r0, [r4, #264]	@ tmp405, <variable>.BsLenInBit
	cmp	r0, #0	@ tmp405,
	ble	.L70	@,
	bic	r1, r1, #15	@ tmp406, temp.876,
	cmp	r6, r1	@ stream_base_addr, tmp406
	movcs	r6, r1	@ stream_base_addr, tmp406
	b	.L70	@
.L90:
	str	r1, [sp, #28]	@,
	str	r2, [sp, #24]	@,
	str	r3, [sp, #20]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #28]	@,
	ldr	r2, [sp, #24]	@,
	ldr	r3, [sp, #20]	@,
	cmp	r0, #0	@ D.31207
	beq	.L50	@,
	str	r0, [r1, #0]	@ D.31207, <variable>.pVdmRegVirAddr
	b	.L65	@
.L54:
	mov	r2, #0	@ tmp267,
	mvn	r0, #0	@ D.30855,
	str	r2, [r3, #0]	@ tmp267,* StreamBaseAddr
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
	bhi	.L94	@,
	bne	.L99	@,
.L94:
	mvn	r0, #0	@ D.30493,
.L97:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L99:
	movw	r5, #:lower16:g_HwMem	@ tmp141,
	movt	r5, #:upper16:g_HwMem	@ tmp141,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L100	@,
.L96:
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	add	r3, sp, #4	@,,
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.30503,
	bne	.L94	@,
	mov	r0, r4	@, pMp2DecParam
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, r5	@, D.30503
	movt	r1, #:upper16:g_HwMem	@,
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
	mov	r0, r5	@ D.30493, D.30503
	b	.L97	@
.L100:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.30499
	beq	.L94	@,
	str	r0, [r5, #0]	@ D.30499, <variable>.pVdmRegVirAddr
	b	.L96	@
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.31001, %object
	.size	num.31001, 4
num.31001:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
