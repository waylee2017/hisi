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
	.file	"vdm_hal_real9.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_real9)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_real9.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.o
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
	.global	RV9HAL_V200R004_StartVDH
	.type	RV9HAL_V200R004_StartVDH, %function
RV9HAL_V200R004_StartVDH:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vfmw_dprint_nothing	@
	.fnend
	.size	RV9HAL_V200R004_StartVDH, .-RV9HAL_V200R004_StartVDH
	.align	2
	.global	RV9HAL_V200R004_WriteSliceMsg
	.type	RV9HAL_V200R004_WriteSliceMsg, %function
RV9HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ pHwMem, pHwMem
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r1	@ pRv9DecParam, pRv9DecParam
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r1, #15	@ tmp215, <variable>.MsgSlotAddr,
	add	r3, r0, #256	@, tmp215,
	str	r3, [sp, #20]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L26	@,
	ldr	r2, [r4, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r2, #0	@ <variable>.first_mb_in_slice,
	streq	r2, [sp, #16]	@ <variable>.first_mb_in_slice, %sfp
	bne	.L27	@,
.L7:
	ldr	r2, [r4, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r2, #0	@ <variable>.TotalSliceNum,
	beq	.L16	@,
	mov	r6, #0	@ i,
	add	r7, sp, #28	@ tmp393,,
	mov	r9, r6	@ tmp392, i
	mov	r3, #44	@ tmp394,
.L15:
	cmp	r6, #0	@ i,
	beq	.L8	@,
	sub	ip, r6, #1	@ tmp256, i,
	mla	r0, r3, r6, r4	@ tmp254, tmp394, i, pRv9DecParam
	mla	r1, r3, ip, r4	@ tmp260, tmp394, tmp256, pRv9DecParam
	ldr	ip, [r0, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r1, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r1	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ble	.L9	@,
.L8:
	mul	ip, r3, r6	@ tmp266, tmp394, i
	ldr	r5, [sp, #16]	@, %sfp
	str	r9, [sp, #28]	@ tmp392, D32
	mov	r1, #0	@ tmp270,
	add	fp, r6, r5	@ D.34406, i,
	add	r5, r6, #1	@ j, i,
	add	r8, ip, r4	@ tmp268, tmp266, pRv9DecParam
	mov	r2, fp, asl #8	@, D.34406,
	str	r2, [sp, #12]	@, %sfp
	ldr	r0, [r8, #96]	@ <variable>.StreamLength, <variable>.StreamLength
	bfi	r1, r0, #0, #24	@ tmp270, <variable>.StreamLength,,
	str	r1, [r7, #0]	@ tmp270,
	ldr	lr, [r8, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r1, lr, #24, #7	@ tmp278, <variable>.StreamBitOffset,,
	str	r1, [r7, #0]	@ tmp278,
	str	r1, [sl, fp, asl #8]	@ D32.627,* pMsgBase
	stmib	sp, {r3, ip}	@ phole stm
	bl	vfmw_dprint_nothing	@
	mov	r2, fp, asl #6	@ tmp288, D.34406,
	str	r9, [sp, #28]	@ tmp392, D32
	add	r0, r2, #1	@ tmp289, tmp288,
	ldr	r3, [r8, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, #0	@ tmp286,
	bfi	r1, r3, #0, #24	@ tmp286, <variable>.StreamPhyAddr,,
	str	r1, [r7, #0]	@ tmp286,
	str	r1, [sl, r0, asl #2]	@ D32.633,* pMsgBase
	bl	vfmw_dprint_nothing	@
	str	r9, [sp, #28]	@ tmp392, D32
	ldr	ip, [r8, #100]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r2, fp, asl #5	@ tmp306, D.34406,
	add	r0, r2, #1	@ tmp307, tmp306,
	mov	r1, #0	@ tmp297,
	bfi	r1, ip, #0, #24	@ tmp297, <variable>.StreamLength,,
	str	r1, [r7, #0]	@ tmp297,
	ldr	r3, [r8, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	fp, fp, asl #4	@ tmp341, D.34406,
	add	fp, fp, #1	@ tmp342, tmp341,
	bfi	r1, r3, #24, #7	@ tmp305, <variable>.StreamBitOffset,,
	str	r1, [r7, #0]	@ tmp305,
	str	r1, [sl, r0, asl #3]	@ D32.639,* pMsgBase
	bl	vfmw_dprint_nothing	@
	ldr	lr, [sp, #12]	@, %sfp
	str	r9, [sp, #28]	@ tmp392, D32
	mov	r2, #0	@ tmp316,
	ldr	ip, [r8, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	r3, lr, #12	@ tmp318,,
	bfi	r2, ip, #0, #24	@ tmp316, <variable>.StreamPhyAddr,,
	str	r2, [r7, #0]	@ tmp316,
	str	r2, [sl, r3]	@ D32.644,
	bl	vfmw_dprint_nothing	@
	str	r9, [sp, #28]	@ tmp392, D32
	ldr	r0, [r8, #104]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r3, [r7, #0]	@ tmp326,
	bfi	r3, r0, #16, #1	@ tmp326, <variable>.dblk_filter_passthrough,,
	str	r3, [r7, #0]	@ tmp326,
	ldr	r1, [r8, #108]	@ <variable>.osvquant, <variable>.osvquant
	bfi	r3, r1, #17, #2	@ tmp333, <variable>.osvquant,,
	str	r3, [r7, #0]	@ tmp333,
	ldr	r2, [r8, #112]	@ <variable>.sliceqp, <variable>.sliceqp
	bfi	r3, r2, #19, #5	@ tmp340, <variable>.sliceqp,,
	str	r3, [r7, #0]	@ tmp340,
	str	r3, [sl, fp, asl #4]	@ D32.656,* pMsgBase
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #32]	@ temp.662, <variable>.TotalSliceNum
	str	r9, [sp, #28]	@ tmp392, D32
	ldrh	r1, [r8, #116]	@, <variable>.first_mb_in_slice
	cmp	r5, r0	@ j, temp.662
	strh	r1, [r7, #0]	@ movhi	@, <variable>.slice_start_mbn
	ldr	r2, [sp, #8]	@,
	ldr	r3, [sp, #4]	@,
	bcs	.L10	@,
	mla	ip, r3, r5, r4	@ tmp359, tmp394, j, pRv9DecParam
	ldr	r1, [r8, #116]	@ temp.666, <variable>.first_mb_in_slice
	ldr	ip, [ip, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r1	@ <variable>.first_mb_in_slice, temp.666
	bgt	.L10	@,
	mvn	ip, r5	@ tmp396, j
	add	ip, ip, r0	@ tmp395, tmp396, temp.662
	tst	ip, #1	@ tmp395,
	add	r2, r2, #80	@ tmp364, tmp266,
	add	r2, r4, r2	@ ivtmp.607, pRv9DecParam, tmp364
	beq	.L11	@,
	add	r5, r5, #1	@ j, j,
	cmp	r5, r0	@ j, temp.662
	bcs	.L10	@,
	ldr	ip, [r2, #124]	@ D.34433, <variable>.first_mb_in_slice
	add	r2, r2, #44	@ ivtmp.607, ivtmp.607,
	cmp	ip, r1	@ D.34433, temp.666
	ble	.L11	@,
	b	.L10	@
.L12:
	ldr	lr, [r2, #124]	@ D.34433, <variable>.first_mb_in_slice
	add	r2, r2, #88	@ ivtmp.607, ivtmp.607,
	cmp	lr, r1	@ D.34433, temp.666
	bgt	.L10	@,
	ldr	ip, [ip, #124]	@ D.34433, <variable>.first_mb_in_slice
	add	r5, r5, #1	@ j, j,
	cmp	ip, r1	@ D.34433, temp.666
	bgt	.L10	@,
.L11:
	add	r5, r5, #1	@ j, j,
	add	ip, r2, #44	@ tmp398, ivtmp.607,
	cmp	r5, r0	@ j, temp.662
	bcc	.L12	@,
.L10:
	cmp	r5, r0	@ j, temp.662
	mla	ip, r3, r6, r4	@ tmp382, tmp394, i, pRv9DecParam
	ldreq	r2, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mlane	r2, r3, r5, r4	@ tmp372, tmp394, j, pRv9DecParam
	ldreq	r1, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrne	lr, [sp, #16]	@, %sfp
	moveq	r8, #0	@ prephitmp.590,
	ldrne	r0, [sp, #20]	@, %sfp
	muleq	r2, r1, r2	@ tmp365, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r8, lr, r5, asl #2	@, tmp377,, j,
	ldrne	r2, [r2, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	addne	r8, r0, r8, asl #6	@, prephitmp.590,, tmp377,
	sub	r1, r2, #1	@ tmp375, <variable>.first_mb_in_slice,
	str	r1, [r4, #120]	@ tmp375, <variable>.last_mb_in_slice
	ldrh	r2, [ip, #120]	@, <variable>.last_mb_in_slice
	ldr	r6, [sp, #12]	@, %sfp
	strh	r2, [r7, #2]	@ movhi	@, <variable>.slice_end_mbn
	add	r0, r6, #20	@ tmp385,,
	ldr	lr, [sp, #28]	@ D32.664, D32
	sub	r6, r5, #1	@ i, j,
	str	lr, [sl, r0]	@ D32.664,
	str	r3, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #12]	@, %sfp
	str	r8, [r7, #0]	@ prephitmp.590, <variable>.next_slice_para_addr
	add	r3, r1, #252	@ tmp388,,
	str	r8, [sl, r3]	@ D32.668,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	ldr	r3, [sp, #4]	@,
.L9:
	add	r6, r6, #1	@ i, i,
	cmp	r2, r6	@ <variable>.TotalSliceNum, i
	bhi	.L15	@,
.L16:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	ldr	r1, [r4, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	lr, #0	@ tmp221,
	mov	r5, lr	@ tmp218, tmp221
	mov	r0, #1	@,
	bfi	lr, r1, #24, #7	@ tmp221, <variable>.StreamBitOffset,,
	str	r0, [sp, #16]	@, %sfp
	str	lr, [sp, #28]	@ tmp221,
	str	lr, [sl, #0]	@ tmp221,* pMsgBase
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	ip, r5	@ tmp224, tmp218
	bfi	ip, r2, #0, #24	@ tmp224, <variable>.StreamPhyAddr,,
	str	ip, [sp, #28]	@ tmp224,
	str	ip, [sl, #4]	@ tmp224,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r1, r5	@ tmp229, tmp218
	bfi	r1, r3, #24, #7	@ tmp229, <variable>.StreamBitOffset,,
	str	r1, [sp, #28]	@ tmp229,
	str	r1, [sl, #8]	@ tmp229,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	ip, r5	@ tmp232, tmp218
	bfi	ip, r0, #0, #24	@ tmp232, <variable>.StreamPhyAddr,,
	str	ip, [sp, #28]	@ tmp232,
	str	ip, [sl, #12]	@ tmp232,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #104]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r1, [r4, #108]	@ <variable>.osvquant, <variable>.osvquant
	ldr	r0, [r4, #112]	@ <variable>.sliceqp, <variable>.sliceqp
	mov	r3, r2, asl #16	@ tmp236, <variable>.dblk_filter_passthrough,
	and	ip, r3, #65536	@ tmp238, tmp236,
	bfi	ip, r1, #17, #2	@ tmp238, <variable>.osvquant,,
	bfi	ip, r0, #19, #5	@ tmp240, <variable>.sliceqp,,
	str	ip, [sp, #28]	@ tmp240,
	str	ip, [sl, #16]	@ tmp240,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	strh	r5, [sp, #28]	@ movhi	@ tmp218, <variable>.slice_start_mbn
	sub	r1, r2, #1	@ tmp246, <variable>.first_mb_in_slice,
	strh	r1, [sp, #30]	@ movhi	@ tmp246, <variable>.slice_end_mbn
	ldr	r0, [sp, #28]	@ D32.618, D32
	str	r0, [sl, #20]	@ D32.618,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #20]	@, %sfp
	add	ip, r3, #256	@ tmp249,,
	str	ip, [sp, #28]	@ tmp249, <variable>.next_slice_para_addr
	str	ip, [sl, #252]	@ tmp249,
	bl	vfmw_dprint_nothing	@
	b	.L7	@
.L26:
	bl	vfmw_dprint_nothing	@
	b	.L16	@
	.fnend
	.size	RV9HAL_V200R004_WriteSliceMsg, .-RV9HAL_V200R004_WriteSliceMsg
	.align	2
	.global	RV9HAL_V200R004_WritePicMsg
	.type	RV9HAL_V200R004_WritePicMsg, %function
RV9HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pHwMem, pHwMem
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r1	@ pRv9DecParam, pRv9DecParam
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ pMsgBase,
	beq	.L34	@,
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	mov	r7, #0	@ tmp189,
	mov	r8, r6	@ p32, pMsgBase
	mov	lr, r7	@ tmp191, tmp189
	bfi	lr, r2, #0, #2	@ tmp191, <variable>.PicCodingType,,
	str	lr, [sp, #12]	@ tmp191,
	str	lr, [r8], #4	@ tmp191,
	add	fp, r8, #4	@, p32,
	str	fp, [sp, #4]	@, %sfp
	bl	vfmw_dprint_nothing	@
	ldmib	r5, {r9, sl}	@ phole ldm
	sub	r3, r9, #1	@ tmp198, <variable>.PicWidthInMb,
	ldr	ip, [sp, #4]	@, %sfp
	sub	r1, sl, #1	@ tmp202, <variable>.PicHeightInMb,
	add	sl, sp, #12	@ tmp190,,
	mov	r0, r3, asl #23	@ tmp203, tmp198,
	add	fp, ip, #4	@ p32.701,,
	add	r9, fp, #4	@ p32.705, p32.701,
	mov	r2, r0, lsr #23	@ tmp203, tmp203,
	add	ip, r9, #4	@ p32.709, p32.705,
	bfi	r2, r1, #16, #9	@ tmp203, tmp202,,
	str	r2, [sp, #12]	@ tmp203,
	str	r2, [r6, #4]	@ tmp203,
	str	ip, [sp, #0]	@,
	bl	vfmw_dprint_nothing	@
	ldrh	r3, [r5, #12]	@, <variable>.Ratio0
	strh	r3, [sp, #12]	@ movhi	@, <variable>.Ratio0
	ldrh	r0, [r5, #16]	@, <variable>.Ratio1
	strh	r0, [sp, #14]	@ movhi	@, <variable>.Ratio1
	ldr	ip, [sp, #12]	@ D32.700, D32
	str	ip, [r8, #4]	@ D32.700,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #4]	@, %sfp
	mov	r2, r7	@ tmp209, tmp189
	bfi	r2, r7, #1, #3	@ tmp209, tmp189,,
	str	r2, [sp, #12]	@ tmp209,
	str	r2, [r1, #4]	@ tmp209,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #20]	@ <variable>.PQUANT, <variable>.PQUANT
	mov	r0, r7	@ tmp213, tmp189
	bfi	r0, r3, #0, #5	@ tmp213, <variable>.PQUANT,,
	str	r0, [sp, #12]	@ tmp213,
	str	r0, [fp, #4]	@ tmp213,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #24]	@ <variable>.PrevPicQP, <variable>.PrevPicQP
	mov	r2, r7	@ tmp217, tmp189
	bfi	r2, ip, #0, #5	@ tmp217, <variable>.PrevPicQP,,
	str	r2, [sp, #12]	@ tmp217,
	str	r2, [r9, #4]	@ tmp217,
	bl	vfmw_dprint_nothing	@
	str	r7, [sp, #12]	@ tmp189, D32
	ldr	r1, [r5, #28]	@ <variable>.PrevPicMb0QP, <variable>.PrevPicMb0QP
	ldrb	r3, [sl, #0]	@ zero_extendqisi2	@,
	ldr	r0, [sp, #0]	@,
	bfi	r3, r1, #0, #5	@ tmp229, <variable>.PrevPicMb0QP,,
	strb	r3, [sl, #0]	@ tmp229,
	ldr	ip, [sp, #12]	@ D32.718, D32
	str	ip, [r0, #4]	@ D32.718,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #56]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	bic	r1, r2, #15	@ tmp234, <variable>.DispFramePhyAddr,
	str	r1, [sp, #12]	@ tmp234, <variable>.curr_rcn_addr
	str	r1, [r6, #64]	@ tmp234,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #48]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	bic	r0, r3, #15	@ tmp238, <variable>.FwdRefPhyAddr,
	str	r0, [sp, #12]	@ tmp238, <variable>.fwd_ref_addr
	str	r0, [r6, #68]	@ tmp238,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #44]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	bic	r2, ip, #15	@ tmp242, <variable>.BwdRefPhyAddr,
	str	r2, [sp, #12]	@ tmp242, <variable>.bwd_ref_addr
	str	r2, [r6, #72]	@ tmp242,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #72]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r1, [sp, #12]	@ <variable>.CurrPmvPhyAddr, <variable>.curr_colmb_addr
	str	r1, [r6, #76]	@ <variable>.CurrPmvPhyAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #76]	@ <variable>.ColPmvPhyAddr, <variable>.ColPmvPhyAddr
	str	r3, [sp, #12]	@ <variable>.ColPmvPhyAddr, <variable>.bwd_colmb_addr
	str	r3, [r6, #80]	@ <variable>.ColPmvPhyAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	ip, r0, #15	@ tmp252, <variable>.SedTopAddr,
	str	ip, [sp, #12]	@ tmp252, <variable>.sed_top_addr
	str	ip, [r6, #84]	@ tmp252,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r1, r2, #15	@ tmp256, <variable>.PmvTopAddr,
	str	r1, [sp, #12]	@ tmp256, <variable>.pmv_top_addr
	str	r1, [r6, #88]	@ tmp256,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	r0, r3, #15	@ tmp260, <variable>.RcnTopAddr,
	str	r0, [sp, #12]	@ tmp260, <variable>.rcn_top_addr
	str	r0, [r6, #92]	@ tmp260,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	str	ip, [sp, #12]	@ <variable>.DblkTopAddr, <variable>.dblk_top_addr
	str	ip, [r6, #96]	@ <variable>.DblkTopAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r1, r2, #15	@ tmp266, <variable>.MsgSlotAddr,
	add	r3, r1, #256	@ tmp268, tmp266,
	str	r3, [sp, #12]	@ tmp268, <variable>.next_slice_para_addr
	str	r3, [r6, #252]	@ tmp268,
.L34:
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	RV9HAL_V200R004_WritePicMsg, .-RV9HAL_V200R004_WritePicMsg
	.align	2
	.global	RV9HAL_V200R004_WriteReg
	.type	RV9HAL_V200R004_WriteReg, %function
RV9HAL_V200R004_WriteReg:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r1	@ pRv9DecParam, pRv9DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pHwMem, pHwMem
	mov	r7, r2	@ VdhId, VdhId
	bl	vfmw_dprint_nothing	@
	ldr	sl, [r4, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r8, #1140	@ tmp197,
	ldr	r2, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r6, #:lower16:g_HwMem	@ tmp355,
	mul	r8, r8, r7	@ tmp196, tmp197, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp355,
	mul	r3, r2, sl	@ tmp183, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	sl, #0	@ tmp182,
	sub	ip, r3, #1	@ tmp186, tmp183,
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r1, ip, #-16777216	@ tmp191, tmp186,
	bic	r0, r1, #15728640	@ tmp191, tmp191,
	orr	r3, r0, #16777216	@ tmp194, tmp191,
	bfi	r3, sl, #25, #1	@ tmp194, tmp182,,
	str	r3, [sp, #4]	@ tmp194,
	str	r3, [r2, #8]	@ tmp194,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	ldr	r0, [r4, #36]	@ <variable>.FstSlcGrp, <variable>.FstSlcGrp
	mov	r3, #9	@ tmp205,
	movw	r1, #11344	@ tmp214,
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	ip, ip, lsr #6	@ tmp203, <variable>.DDRStride,
	ldr	r1, [r4, r1]	@ <variable>.Compress_en, <variable>.Compress_en
	bfi	r3, ip, #4, #10	@ tmp205, tmp203,,
	bfi	r3, r0, #14, #1	@ tmp207, <variable>.FstSlcGrp,,
	orr	r0, r3, #32768	@ tmp210, tmp207,
	bfi	r0, sl, #16, #12	@ tmp210, tmp182,,
	bic	r3, r0, #805306368	@ tmp211, tmp210,
	orr	ip, r3, #536870912	@ tmp216, tmp211,
	bfi	ip, r1, #30, #1	@ tmp216, <variable>.Compress_en,,
	bfi	ip, sl, #31, #1	@ tmp217, tmp182,,
	str	ip, [sp, #4]	@ tmp217,
	str	ip, [r2, #12]	@ tmp217,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r1, [r5, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r1, #15	@ tmp226, <variable>.MsgSlotAddr,
	str	r0, [sp, #4]	@ tmp226, <variable>.av_msg_addr
	str	r0, [r2, #16]	@ tmp226,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp235, <variable>.MsgSlotAddr,
	str	ip, [sp, #4]	@ tmp235, <variable>.va_msg_addr
	str	ip, [r1, #20]	@ tmp235,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #40]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [sp, #4]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r0, [r2, #24]	@ <variable>.StreamBaseAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	sl, [sp, #4]	@ tmp182, D32
	movls	r3, #65536	@ tmp251,
	strls	r3, [sp, #4]	@ tmp251, D32
	cmp	r7, #0	@ VdhId,
	bne	.L46	@,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp254,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp254,
	ldr	r1, [sp, #4]	@ D32, D32
	ldr	ip, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@ D.34173,, D32
	add	r0, ip, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L41:
	movw	r8, #1140	@ tmp265,
	movw	lr, #:lower16:3148803	@ tmp262,
	mul	r7, r8, r7	@ tmp264, tmp265, VdhId
	movt	lr, #:upper16:3148803	@ tmp262,
	str	lr, [sp, #4]	@ tmp262, D32
	mov	r8, #0	@ tmp319,
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r0, #60]	@ tmp262,
	ldr	ip, [sp, #4]	@ D32.817, D32
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #64]	@ D32.817,
	ldr	sl, [sp, #4]	@ D32.821, D32
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	sl, [r2, #68]	@ D32.821,
	ldr	lr, [sp, #4]	@ D32.825, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r3, #72]	@ D32.825,
	ldr	r1, [sp, #4]	@ D32.829, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #76]	@ D32.829,
	ldr	r2, [sp, #4]	@ D32.833, D32
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #80]	@ D32.833,
	ldr	lr, [sp, #4]	@ D32.837, D32
	ldr	sl, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [sl, #84]	@ D32.837,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #52]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r0, r3, #15	@ D32.511, <variable>.CurPicPhyAddr,
	str	r0, [sp, #4]	@ D32.511, D32
	str	r0, [r1, #96]	@ D32.511,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #60]	@ D32.841, <variable>.DDRStride
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	sl, [r4, #8]	@ height_in_mb, <variable>.PicHeightInMb
	str	ip, [sp, #4]	@ D32.841, D32
	str	ip, [r2, #100]	@ D32.841,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	add	r0, sl, #1	@ tmp312, height_in_mb,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r1, r3, asl #1	@ tmp310, <variable>.DDRStride,
	mov	sl, r0, lsr #1	@ tmp313, tmp312,
	mul	sl, sl, r1	@ D32.513, tmp313, tmp310
	str	sl, [sp, #4]	@ D32.513, D32
	str	sl, [ip, #104]	@ D32.513,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r2, #108]	@ tmp319,
	ldr	r3, [r5, #1120]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [r0, #144]	@ <variable>.DnrMbInfoAddr,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [sp, #4]	@ tmp319, D32
	str	r8, [r1, #148]	@ tmp319,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	ip, r8	@ tmp343, tmp319
	bfi	ip, r8, #0, #1	@ tmp343, tmp319,,
	str	ip, [sp, #4]	@ tmp343,
	str	ip, [r2, #152]	@ tmp343,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r0, #0	@ tmp354,
	str	r0, [r3, #32]	@ tmp354,
.L44:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L46:
	cmp	r7, #1	@ VdhId,
	beq	.L47	@,
	cmp	r7, #0	@ VdhId,
	ble	.L41	@,
	bl	vfmw_dprint_nothing	@
	b	.L44	@
.L47:
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr_1	@ tmp259,
	movt	r1, #:upper16:s_RegPhyBaseAddr_1	@ tmp259,
	ldr	ip, [sp, #4]	@ D32, D32
	ldr	r2, [r1, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	orr	r1, r0, ip	@ temp.810,, D32
	add	r0, r2, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	bl	vfmw_dprint_nothing	@
	b	.L44	@
	.fnend
	.size	RV9HAL_V200R004_WriteReg, .-RV9HAL_V200R004_WriteReg
	.align	2
	.global	RV9HAL_V200R004_StartDec
	.type	RV9HAL_V200R004_StartDec, %function
RV9HAL_V200R004_StartDec:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pRv9DecParam, pRv9DecParam
	bls	.L56	@,
.L54:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34103,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L56:
	beq	.L54	@,
	movw	r5, #:lower16:g_HwMem	@ tmp140,
	movt	r5, #:upper16:g_HwMem	@ tmp140,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L57	@,
.L53:
	mov	r2, #0	@,
	mov	r1, r4	@, pRv9DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV9HAL_V200R004_WriteReg	@
	mov	r1, r4	@, pRv9DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV9HAL_V200R004_WritePicMsg	@
	mov	r1, r4	@, pRv9DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV9HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pRv9DecParam
	bl	RV9HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.34103,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L57:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.34109
	strne	r0, [r5, #0]	@ D.34109, <variable>.pVdmRegVirAddr
	bne	.L53	@,
	b	.L54	@
	.fnend
	.size	RV9HAL_V200R004_StartDec, .-RV9HAL_V200R004_StartDec
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
