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
	.file	"vdm_hal_avs.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_avs)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_avs.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.o
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
	.global	AVSHAL_V200R004_WirteSlicMsg_MV330_Process
	.type	AVSHAL_V200R004_WirteSlicMsg_MV330_Process, %function
AVSHAL_V200R004_WirteSlicMsg_MV330_Process:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ D.34080,* bit_offset_0
	cmp	ip, #7	@ D.34080,
	subhi	ip, ip, #8	@ tmp143, D.34080,
	ldrls	ip, [r2, #0]	@ tmp137,* bit_stream_addr_0
	subls	ip, ip, #4	@ tmp138, tmp137,
	strls	ip, [r2, #0]	@ tmp138,* bit_stream_addr_0
	ldrls	ip, [r0, #0]	@ tmp139,* bit_offset_0
	addls	ip, ip, #120	@ tmp140, tmp139,
	str	ip, [r0, #0]	@ tmp143,* bit_offset_0
	ldr	r0, [r1, #0]	@ tmp144,* bit_len_0
	add	r3, r0, #8	@ tmp145, tmp144,
	str	r3, [r1, #0]	@ tmp145,* bit_len_0
	bx	lr	@
	.fnend
	.size	AVSHAL_V200R004_WirteSlicMsg_MV330_Process, .-AVSHAL_V200R004_WirteSlicMsg_MV330_Process
	.align	2
	.global	AVSHAL_V200R004_WirteSlicMsg
	.type	AVSHAL_V200R004_WirteSlicMsg, %function
AVSHAL_V200R004_WirteSlicMsg:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:g_HwMem	@ tmp230,
	movt	r5, #:upper16:g_HwMem	@ tmp230,
	mov	sl, r2	@ VdhId, VdhId
	movw	r2, #1144	@ tmp233,
	.pad #52
	sub	sp, sp, #52	@,,
	mla	r3, r2, sl, r5	@ tmp234, tmp233, VdhId, tmp230
	str	r1, [sp, #36]	@ stream_base_addr, %sfp
	mov	r5, r0	@ pAvsDecParam, pAvsDecParam
	add	r4, sl, sl, asl #2	@, tmp240, VdhId, VdhId,
	movw	r6, #:lower16:g_VdmDrvParam	@ tmp237,
	add	r4, r4, #1	@ tmp241, tmp240,
	movt	r6, #:upper16:g_VdmDrvParam	@ tmp237,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp236,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp236,
	ldr	r0, [r3, #44]	@ D.34125, <variable>.MsgSlotAddr
	add	lr, r0, #320	@, D.34125,
	str	lr, [sp, #40]	@, %sfp
	bl	MEM_Phy2Vir	@
	ldr	r1, [r6, r4, asl #3]	@ <variable>.ChanId, <variable>.ChanId
	ldr	r2, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	ip, [sl, r1, asl #2]	@ D.34130, s_pstVfmwChan
	cmp	r2, #0	@ <variable>.slice_start_mbn,
	ldr	sl, [ip, #192]	@ <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	ldr	r3, [ip, #188]	@ <variable>.stChanMem_scd.VirAddr, <variable>.stChanMem_scd.VirAddr
	streq	r2, [sp, #44]	@ <variable>.slice_start_mbn, %sfp
	rsb	r1, sl, r3	@, <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.VirAddr
	str	r1, [sp, #32]	@, %sfp
	add	r6, r0, #320	@ pMsgBase.563, D.34128,
	beq	.L7	@,
	ldr	ip, [r5, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	r2, [sp, #36]	@, %sfp
	add	r9, ip, #4	@ tmp246, <variable>.stream_phy_addr,
	rsb	r3, r2, r9	@ D.34145,, tmp246
	and	lr, r3, #15	@ tmp248, D.34145,
	bic	r1, r3, #15	@ bit_stream_addr_0, D.34145,
	mov	r3, #0	@ tmp251,
	mov	sl, lr, asl #3	@ bit_offset_0.475, tmp248,
	cmp	sl, #7	@ bit_offset_0.475,
	addls	sl, sl, #120	@ bit_offset_0.606, bit_offset_0.475,
	subhi	sl, sl, #8	@ bit_offset_0.606, bit_offset_0.475,
	subls	r1, r1, #4	@ bit_stream_addr_0, bit_stream_addr_0,
	mov	ip, sl, asl #25	@ tmp250, bit_offset_0.606,
	bic	r9, r1, #-16777216	@ D32.564, bit_stream_addr_0,
	orr	r2, ip, #8	@ D32, tmp250,
	str	r2, [r0, #320]	@ D32,
	str	r9, [r6, #4]	@ D32.564,
	mov	r9, #1	@,
	str	r3, [r6, #8]	@ tmp251,
	str	r9, [sp, #44]	@, %sfp
	str	r3, [r6, #12]	@ tmp251,
	ldr	sl, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	lr, [sp, #40]	@, %sfp
	sub	r1, sl, #1	@ tmp253, <variable>.slice_start_mbn,
	add	r0, lr, #256	@ D32.568,,
	mov	ip, r1, asl #16	@ D32.567, tmp253,
	str	ip, [r6, #16]	@ D32.567,
	str	r0, [r6, #252]	@ D32.568,
.L7:
	movw	sl, #14424	@ tmp257,
	ldr	r0, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L27	@,
	mov	r3, #0	@ k,
	movw	r7, #:lower16:s_RegPhyBaseAddr	@,
	mov	r4, r3	@ i, k
	movt	r7, #:upper16:s_RegPhyBaseAddr	@,
	movw	fp, #511	@ tmp442,
	str	r7, [sp, #16]	@, %sfp
	mov	r7, r3	@ j, k
.L26:
	cmp	r7, fp	@ j, tmp442
	bgt	.L11	@,
	sub	lr, r4, #1	@ tmp269, i,
	mov	r8, r4, asl #3	@ tmp441, i,
	rsb	r2, r4, r8	@ tmp265, i, tmp441
	rsb	r0, lr, lr, asl #3	@, tmp273, tmp269, tmp269,
	cmp	r4, #0	@ i,
	movle	lr, #0	@,
	movgt	lr, #1	@,
	add	r2, r5, r2, asl #2	@, tmp267, pAvsDecParam, tmp265,
	add	ip, r5, r0, asl #2	@, tmp275, pAvsDecParam, tmp273,
	ldr	r9, [r2, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r1, [ip, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r9, r1	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	movhi	lr, #0	@,,
	cmp	lr, #0	@ tmp283,
	mov	r9, lr	@ tmp283,
	bne	.L12	@,
	ldr	r3, [r2, #88]	@ temp.570, <variable>.stream_phy_addr
	ldr	lr, [sp, #32]	@, %sfp
	add	r1, lr, r3	@ D.34211,, temp.570
	ldr	r0, [r1, #3]	@ tmp292,
	bic	ip, r0, #-16777216	@ tmp291, tmp292,
	cmp	ip, #131072	@ tmp291,
	beq	.L38	@,
	add	r2, r3, #4	@ tmp344, temp.570,
	ldr	r3, [sp, #36]	@, %sfp
	rsb	r1, r3, r2	@ temp.586,, tmp344
	and	r9, r1, #15	@ tmp345, temp.586,
	bic	r2, r1, #15	@ bit_stream_addr_0.584, temp.586,
	mov	r3, r9, asl #3	@ bit_offset_0, tmp345,
.L14:
	rsb	r0, r4, r8	@ tmp349, i, tmp441
	add	r1, r5, r0, asl #2	@, tmp351, pAvsDecParam, tmp349,
	ldr	lr, [r1, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	ldr	r0, [r1, #92]	@ D.34240, <variable>.stream_phy_addr
	sub	ip, lr, #4	@ tmp353, <variable>.stream_lenInByte,
	cmp	r0, #0	@ D.34240,
	mov	ip, ip, asl #3	@ bit_len_0, tmp353,
	beq	.L15	@,
	ldr	r1, [r1, #100]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r1, #0	@ <variable>.stream_lenInByte,
	ble	.L15	@,
	ldr	r9, [sp, #36]	@, %sfp
	cmp	ip, #0	@ bit_len_0,
	mov	r1, r1, asl #3	@, <variable>.stream_lenInByte,
	str	r1, [sp, #12]	@, %sfp
	rsb	lr, r9, r0	@ D.34245,, D.34240
	and	r9, lr, #15	@ tmp370, D.34245,
	bic	r0, lr, #15	@ bit_stream_addr_1, D.34245,
	mov	r9, r9, asl #3	@ bit_offset_1, tmp370,
	bne	.L16	@,
	mov	r1, #0	@ prephitmp.540,
	mov	r2, r0	@ bit_stream_addr_0.584, bit_stream_addr_1
	ldr	ip, [sp, #12]	@ bit_len_0, %sfp
	mov	r3, r9	@ bit_offset_0, bit_offset_1
	str	r1, [sp, #28]	@ prephitmp.540, %sfp
	b	.L17	@
.L15:
	mov	r1, #0	@ prephitmp.540,
	str	r1, [sp, #28]	@ prephitmp.540, %sfp
.L17:
	cmp	r3, #7	@ bit_offset_0,
	mov	r9, r4, asl #8	@ D.34159, i,
	addls	r3, r3, #120	@, bit_offset_0,
	subhi	r3, r3, #8	@, bit_offset_0,
	str	r3, [sp, #12]	@, %sfp
	mov	r3, r4, asl #5	@ tmp385, i,
	mov	r0, r4, asl #6	@ tmp382, i,
	add	r3, r3, #1	@, tmp385,
	str	r3, [sp, #20]	@, %sfp
	add	r3, r9, #12	@, D.34159,
	str	r3, [sp, #24]	@, %sfp
	add	lr, r0, #1	@ tmp383, tmp382,
	ldr	r3, [sp, #12]	@, %sfp
	add	ip, ip, #8	@ bit_len_0.589, bit_len_0,
	subls	r2, r2, #4	@ bit_stream_addr_0.584, bit_stream_addr_0.584,
	bic	ip, ip, #-33554432	@ tmp381, bit_len_0.589,
	bic	r2, r2, #-16777216	@ D32.596, bit_stream_addr_0.584,
	orr	ip, ip, r3, asl #25	@, D32.593, tmp381,,
	str	ip, [r6, r4, asl #8]	@ D32.593,* pMsgBase.563
	str	r2, [r6, lr, asl #2]	@ D32.596,* pMsgBase.563
	add	r3, r4, #1	@ k, i,
	ldr	ip, [sp, #20]	@, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	str	r0, [r6, ip, asl #3]	@,* pMsgBase.563
	ldr	r2, [sp, #24]	@, %sfp
	str	r1, [r6, r2]	@ prephitmp.540,
	ldr	ip, [r5, sl]	@ temp.588, <variable>.SlcNum
	cmp	ip, r3	@ temp.588, k
	ble	.L39	@,
	rsb	r2, r4, r8	@ tmp400, i, tmp441
	rsb	r0, r3, r3, asl #3	@, tmp407, k, k,
	mov	r2, r2, asl #2	@ tmp401, tmp400,
	add	r1, r5, r0, asl #2	@, tmp409, pAvsDecParam, tmp407,
	add	lr, r2, r5	@ tmp402, tmp401, pAvsDecParam
	ldr	r0, [r1, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r1, [lr, #104]	@ prephitmp.542, <variable>.slice_start_mbn
	cmp	r1, r0	@ prephitmp.542, <variable>.slice_start_mbn
	bcc	.L21	@,
	mvn	lr, r3	@ tmp450, k
	add	r0, lr, ip	@ tmp449, tmp450, temp.588
	tst	r0, #1	@ tmp449,
	add	lr, r2, #88	@ tmp416, tmp401,
	add	r2, r5, lr	@ ivtmp.561, pAvsDecParam, tmp416
	beq	.L35	@,
	ldr	r0, [r2, #72]	@ temp.604, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	add	r2, r2, #28	@ ivtmp.561, ivtmp.561,
	cmp	r1, r0	@ prephitmp.542, temp.604
	bcc	.L21	@,
.L35:
	mov	r8, r6	@ pMsgBase.563, pMsgBase.563
	b	.L22	@
.L23:
	ldr	r6, [r2, #72]	@ temp.604, <variable>.slice_start_mbn
	add	r2, r2, #56	@ ivtmp.561, ivtmp.561,
	cmp	r1, r6	@ prephitmp.542, temp.604
	bcc	.L36	@,
	ldr	r6, [r0, #72]	@ temp.604, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	cmp	r1, r6	@ prephitmp.542, temp.604
	bcc	.L36	@,
.L22:
	add	r3, r3, #1	@ k, k,
	add	r0, r2, #28	@ tmp452, ivtmp.561,
	cmp	ip, r3	@ temp.588, k
	bgt	.L23	@,
.L36:
	mov	r6, r8	@ pMsgBase.563, pMsgBase.563
.L21:
	cmp	ip, r3	@ temp.588, k
	beq	.L40	@,
	rsb	r0, r3, r3, asl #3	@, tmp423, k, k,
	ldr	lr, [sp, #44]	@, %sfp
	ldr	ip, [sp, #40]	@, %sfp
	add	r2, r3, lr	@ tmp428, k,
	add	lr, r5, r0, asl #2	@, tmp425, pAvsDecParam, tmp423,
	ldr	r0, [lr, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r2, ip, r2, asl #8	@, prephitmp.544,, tmp428,
	sub	r0, r0, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
.L25:
	mov	lr, r4, asl #4	@ tmp435, i,
	add	r9, r9, #252	@ tmp438, D.34159,
	add	r4, lr, #1	@ tmp436, tmp435,
	add	r7, r7, #1	@ j, j,
	uxth	ip, r1	@ tmp433, prephitmp.542
	orr	r1, ip, r0, asl #16	@, D32.609, tmp433, slice_end_mbn,
	str	r1, [r6, r4, asl #4]	@ D32.609,* pMsgBase.563
	str	r2, [r6, r9]	@ prephitmp.544,
.L11:
	sub	r4, r3, #1	@ i, k,
.L12:
	ldr	r2, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #1	@ i, i,
	cmp	r2, r4	@ <variable>.SlcNum, i
	bgt	.L26	@,
.L27:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L38:
	strb	r9, [r1, #2]	@ tmp283,
	mov	r1, #1	@,
	ldr	r0, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	ip, [sp, #32]	@, %sfp
	add	lr, ip, r0	@ tmp304,, <variable>.stream_phy_addr
	mov	r0, #64	@,
	strb	r0, [lr, #4]	@,
	ldr	r3, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	lr, ip, r3	@ tmp317,, <variable>.stream_phy_addr
	strb	r0, [lr, #5]	@,
	ldr	r3, [sp, #16]	@, %sfp
	ldr	r2, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	ip, [sp, #36]	@, %sfp
	add	lr, r2, #2	@ tmp328, <variable>.stream_phy_addr,
	ldr	r0, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	rsb	r3, ip, lr	@ D.34225,, tmp328
	and	ip, r3, #15	@ tmp330, D.34225,
	add	r0, r0, #2032	@, s_RegPhyBaseAddr,
	bic	r2, r3, #15	@ bit_stream_addr_0.584, D.34225,
	str	r2, [sp, #8]	@,
	mov	lr, ip, asl #3	@ bit_offset_0, tmp330,
	str	lr, [sp, #4]	@,
	bl	MEM_WritePhyWord	@
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r3, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r3, #1792	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	ip, [sp, #16]	@, %sfp
	mov	r1, r9	@, tmp283
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r3, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r9	@, tmp283
	add	r0, r3, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, [sp, #8]	@,
	ldr	r3, [sp, #4]	@,
	b	.L14	@
.L40:
	ldrh	lr, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r2, #0	@ prephitmp.544,
	ldrh	ip, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r0, ip, lr	@ tmp419, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r0, r0, #1	@ slice_end_mbn, tmp419,
	b	.L25	@
.L16:
	ldr	lr, [sp, #12]	@, %sfp
	bic	r1, lr, #-33554432	@,,
	str	r1, [sp, #12]	@, %sfp
	bic	r1, r0, #-16777216	@ prephitmp.540, bit_stream_addr_1,
	ldr	r0, [sp, #12]	@, %sfp
	orr	lr, r0, r9, asl #25	@,,, bit_offset_1,
	str	lr, [sp, #28]	@, %sfp
	b	.L17	@
.L39:
	rsb	r1, r4, r8	@ tmp393, i, tmp441
	add	lr, r5, r1, asl #2	@, tmp395, pAvsDecParam, tmp393,
	ldr	r1, [lr, #104]	@ prephitmp.542, <variable>.slice_start_mbn
	b	.L21	@
	.fnend
	.size	AVSHAL_V200R004_WirteSlicMsg, .-AVSHAL_V200R004_WirteSlicMsg
	.align	2
	.global	AVSHAL_V200R004_StartDec_GetStrmAddr
	.type	AVSHAL_V200R004_StartDec_GetStrmAddr, %function
AVSHAL_V200R004_StartDec_GetStrmAddr:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #14424	@ tmp144,
	mvn	r4, #0	@ tmp143,
	str	r4, [r1, #0]	@ tmp143,* stream_base_addr
	ldr	r3, [r0, r5]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r3, #0	@ <variable>.SlcNum,
	movgt	r3, r0	@ ivtmp.651, pAvsDecParam
	movgt	r2, #0	@ i,
	bgt	.L43	@,
	b	.L42	@
.L50:
	ldr	r4, [r1, #0]	@ prephitmp.629,* stream_base_addr
.L43:
	ldr	ip, [r3, #88]	@ temp.661, <variable>.stream_phy_addr
	cmp	ip, #0	@ temp.661,
	beq	.L46	@,
	ldr	r6, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	bic	ip, ip, #15	@ tmp151, temp.661,
	cmp	r6, #0	@ <variable>.stream_lenInByte,
	ble	.L46	@,
	cmp	r4, ip	@ prephitmp.629, tmp151
	strls	r4, [r1, #0]	@, prephitmp.629,* stream_base_addr
	strhi	ip, [r1, #0]	@, tmp151,* stream_base_addr
.L46:
	ldr	ip, [r3, #92]	@ D.33762, <variable>.stream_phy_addr
	ldr	r4, [r1, #0]	@ prephitmp.659,* stream_base_addr
	cmp	ip, #0	@ D.33762,
	beq	.L44	@,
	ldr	r6, [r3, #100]	@ tmp146, <variable>.stream_lenInByte
	bic	ip, ip, #15	@ tmp147, D.33762,
	cmp	r6, #0	@ tmp146,
	ble	.L44	@,
	cmp	r4, ip	@ prephitmp.659, tmp147
	movcs	r4, ip	@ prephitmp.659, tmp147
	str	r4, [r1, #0]	@ prephitmp.659,* stream_base_addr
.L44:
	ldr	ip, [r0, r5]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #28	@ ivtmp.651, ivtmp.651,
	cmp	ip, r2	@ <variable>.SlcNum, i
	bgt	.L50	@,
	cmn	r4, #1	@ prephitmp.659,
	movne	r0, #0	@ D.33774,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L42:
	mvn	r2, #0	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33774,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVSHAL_V200R004_StartDec_GetStrmAddr, .-AVSHAL_V200R004_StartDec_GetStrmAddr
	.align	2
	.global	AVSHAL_V200R004_StartDec_GetRegAddr
	.type	AVSHAL_V200R004_StartDec_GetRegAddr, %function
AVSHAL_V200R004_StartDec_GetRegAddr:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L54	@,
	cmp	r0, #1	@ VdhId,
	beq	.L54	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33735,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L54:
	movw	r6, #1144	@ tmp144,
	movw	r4, #:lower16:g_HwMem	@ tmp142,
	mul	r6, r6, r0	@ tmp143, tmp144, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp142,
	movw	r3, #:lower16:269680640	@ tmp140,
	movt	r3, #:upper16:269680640	@ tmp140,
	str	r3, [r1, #0]	@ tmp140,* vdm_reg_phy_addr
	ldr	r5, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r5, #0	@ <variable>.pVdmRegVirAddr,
	movne	r0, #0	@ D.33735,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r1, #0]	@,* vdm_reg_phy_addr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.33742,
	strne	r1, [r6, r4]	@ D.33742, <variable>.pVdmRegVirAddr
	movne	r0, r5	@ D.33735, <variable>.pVdmRegVirAddr
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33735,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVSHAL_V200R004_StartDec_GetRegAddr, .-AVSHAL_V200R004_StartDec_GetRegAddr
	.align	2
	.global	AVSHAL_V200R004_StartDec_CheckParam
	.type	AVSHAL_V200R004_StartDec_CheckParam, %function
AVSHAL_V200R004_StartDec_CheckParam:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	bgt	.L67	@,
	ldrh	r3, [r1, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L68	@,
	ldrh	r2, [r1, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	movls	r0, #0	@ D.33717,
	bhi	.L69	@,
.L63:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L67:
	mov	ip, #0	@ tmp139,
	mov	r3, r0	@, VdhId
	movw	r1, #:lower16:.LC3	@,
	mov	r0, ip	@, tmp139
	movt	r1, #:upper16:.LC3	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	ip, [sp, #0]	@ tmp139,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33717,
	b	.L63	@
.L68:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #84	@,
	movt	r1, #:upper16:.LC4	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33717,
	b	.L63	@
.L69:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #85	@,
	movt	r1, #:upper16:.LC4	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33717,
	b	.L63	@
	.fnend
	.size	AVSHAL_V200R004_StartDec_CheckParam, .-AVSHAL_V200R004_StartDec_CheckParam
	.align	2
	.global	AVSHAL_V200R004_StartDec
	.type	AVSHAL_V200R004_StartDec, %function
AVSHAL_V200R004_StartDec:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pAvsDecParam, pAvsDecParam
	.pad #76
	sub	sp, sp, #76	@,,
	mov	r0, r1	@, VdhId
	mov	r5, r1	@ VdhId, VdhId
	mov	r1, r4	@, pAvsDecParam
	bl	AVSHAL_V200R004_StartDec_CheckParam	@
	cmp	r0, #0	@,
	beq	.L81	@,
.L71:
	mvn	r0, #0	@ D.33796,
.L73:
	add	sp, sp, #76	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L81:
	mov	r0, r5	@, VdhId
	add	r1, sp, #60	@,,
	bl	AVSHAL_V200R004_StartDec_GetRegAddr	@
	cmp	r0, #0	@,
	bne	.L71	@,
	mov	r0, r4	@, pAvsDecParam
	add	r1, sp, #64	@,,
	bl	AVSHAL_V200R004_StartDec_GetStrmAddr	@
	subs	r7, r0, #0	@ D.33801,
	bne	.L71	@,
	ldrh	r1, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r6, #1144	@ tmp281,
	ldrh	r9, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	fp, r7	@ D.33801, D.33801
	mul	r8, r6, r5	@ tmp280, tmp281, VdhId
	movw	r6, #:lower16:g_HwMem	@ tmp740,
	mul	lr, r9, r1	@ tmp267, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r6, #:upper16:g_HwMem	@ tmp740,
	movw	r9, #14844	@ tmp288,
	add	r0, r0, #3	@,,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	sub	sl, lr, #1	@ tmp268, tmp267,
	ldr	lr, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	fp, sl, #0, #20	@ D.33801, tmp268,,
	add	sl, r8, r6	@ tmp282, tmp280, tmp740
	orr	ip, fp, #1073741824	@ tmp272, D.33801,
	mvn	fp, #0	@ tmp459,
	bfi	ip, r7, #31, #1	@ tmp272, D.33801,,
	orr	r3, ip, #4194304	@ tmp275, tmp272,
	bfi	r3, r7, #23, #1	@ tmp275, D.33801,,
	orr	r2, r3, #16777216	@ tmp278, tmp275,
	bfi	r2, r7, #25, #1	@ tmp278, D.33801,,
	str	r2, [sp, #68]	@ tmp278,
	str	r2, [lr, #8]	@ tmp278,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, r9]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #805306374	@ tmp291,
	movw	r1, #14868	@ tmp300,
	mov	r2, #1	@ tmp296,
	ldr	lr, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, ip, lsr #6	@ tmp289, <variable>.VahbStride,
	ldr	ip, [r4, r1]	@ <variable>.Compress_en, <variable>.Compress_en
	bfi	r3, r0, #4, #10	@ tmp291, tmp289,,
	movw	r1, #:lower16:.LC7	@,
	orr	r3, r3, #16384	@ tmp294, tmp291,
	movt	r1, #:upper16:.LC7	@,
	bfi	r3, r7, #15, #1	@ tmp294, D.33801,,
	mov	r0, #3	@,
	bfi	r3, r2, #16, #12	@ tmp295, tmp296,,
	bfi	r3, r7, #28, #1	@ tmp297, D.33801,,
	orr	r2, r3, #536870912	@ tmp302, tmp297,
	bfi	r2, ip, #30, #1	@ tmp302, <variable>.Compress_en,,
	bfi	r2, r7, #31, #1	@ tmp303, D.33801,,
	str	r2, [sp, #68]	@ tmp303,
	str	r2, [lr, #12]	@ tmp303,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [sl, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bic	r3, ip, #15	@ tmp319, <variable>.MsgSlotAddr,
	str	r3, [sp, #68]	@ tmp319, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp319,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [sl, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bic	r3, ip, #15	@ tmp335, <variable>.MsgSlotAddr,
	str	r3, [sp, #68]	@ tmp335, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp335,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [sp, #64]	@ stream_base_addr, stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	ip, [sp, #68]	@ stream_base_addr, <variable>.stream_base_addr
	str	ip, [r2, #24]	@ stream_base_addr,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:3148803	@ tmp351,
	movt	r0, #:upper16:3148803	@ tmp351,
	str	r0, [sp, #68]	@ tmp351, D32
	str	r0, [r1, #60]	@ tmp351,
	mov	r0, #3	@,
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC11	@,
	ldr	ip, [sp, #68]	@ D32.814, D32
	movt	r1, #:upper16:.LC11	@,
	str	ip, [r3, #64]	@ D32.814,
	ldr	ip, [sp, #68]	@ D32.817, D32
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #68]	@ D32.817,
	ldr	r2, [sp, #68]	@ D32.820, D32
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.820,
	ldr	r2, [sp, #68]	@ D32.823, D32
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #76]	@ D32.823,
	ldr	ip, [sp, #68]	@ D32.826, D32
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.826,
	movw	r3, #14440	@ tmp390,
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [sp, #68]	@ D32.829, D32
	str	ip, [r2, #84]	@ D32.829,
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r4, r3]	@ <variable>.CurPicAddr, <variable>.CurPicAddr
	bic	r3, r2, #15	@ tmp392, <variable>.CurPicAddr,
	str	r3, [sp, #68]	@ tmp392, <variable>.ystaddr_1d
	str	r3, [ip, #96]	@ tmp392,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r4, r9]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	str	r2, [sp, #68]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r2, [ip, #100]	@ <variable>.VahbStride,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	mov	r0, #14848	@ tmp411,
	ldr	r3, [r4, r0]	@ <variable>.uv_offset, <variable>.uv_offset
	movw	r1, #:lower16:.LC13	@,
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC13	@,
	mov	r0, #3	@,
	str	r3, [sp, #68]	@ <variable>.uv_offset, <variable>.uvoffset_1d
	str	r3, [r2, #104]	@ <variable>.uv_offset,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	r7, [ip, #108]	@ D.33801,
	ldr	r3, [sl, #1120]	@ D32.446, <variable>.DnrMbInfoAddr
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #68]	@ D32.446, D32
	str	r3, [r2, #144]	@ D32.446,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #68]	@ D.33801, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	str	r7, [ip, #148]	@ D.33801,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #68]	@ D.33801, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r7, [r2, #152]	@ D.33801,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	fp, [r3, #32]	@ tmp459,
	ldr	r0, [sl, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ pMsgBase,
	beq	.L82	@,
	ldrh	r2, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r9, r8	@ p32.862, pMsgBase
	ldrh	r1, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	ldr	fp, [sp, #68]	@ tmp471,
	sub	lr, r2, #1	@ tmp470, <variable>.PicWidthInMb,
	ldrb	ip, [r4, #31]	@ zero_extendqisi2	@ <variable>.ChromaFormat, <variable>.ChromaFormat
	sub	r3, r1, #1	@ tmp474, <variable>.PicHeightInMb,
	bfi	fp, lr, #0, #9	@ tmp471, tmp470,,
	ldrb	r2, [r4, #30]	@ zero_extendqisi2	@ <variable>.SamplePrecision, <variable>.SamplePrecision
	bfi	fp, r3, #16, #9	@ tmp475, tmp474,,
	movw	r1, #:lower16:.LC18	@,
	bfi	fp, ip, #25, #2	@ tmp476, <variable>.ChromaFormat,,
	movt	r1, #:upper16:.LC18	@,
	bfi	fp, r2, #27, #2	@ tmp480, <variable>.SamplePrecision,,
	bfi	fp, r7, #9, #7	@ tmp484, D.33801,,
	bfi	fp, r7, #29, #3	@ tmp485, D.33801,,
	str	fp, [sp, #68]	@ tmp485,
	str	fp, [r9], #4	@ tmp485,
	add	fp, r9, r0	@ p32.866, p32.862,
	ldr	r2, [sp, #68]	@, D32
	add	lr, fp, r0	@, p32.866,
	str	lr, [sp, #44]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #16]	@ zero_extendqisi2	@ <variable>.ProgrsvFrame, <variable>.ProgrsvFrame
	mov	r2, r7	@ tmp488, D.33801
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r2, r0, #0, #1	@ tmp488, <variable>.ProgrsvFrame,,
	bfi	r2, r1, #1, #2	@ tmp492, <variable>.PicStruct,,
	ldrb	ip, [r4, #15]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r2, r3, #3, #2	@ tmp496, <variable>.PicCodingType,,
	ldrb	r3, [r4, #13]	@ zero_extendqisi2	@, <variable>.FixQPFlag
	ldrb	lr, [r4, #14]	@ zero_extendqisi2	@ <variable>.RepeatFirstField, <variable>.RepeatFirstField
	bfi	r2, ip, #5, #1	@ tmp500, <variable>.TopFieldFirst,,
	ldr	ip, [sp, #44]	@, %sfp
	mov	r0, #4	@,
	str	r3, [sp, #8]	@, %sfp
	bfi	r2, lr, #6, #1	@ tmp504, <variable>.RepeatFirstField,,
	ldrb	r3, [r4, #12]	@ zero_extendqisi2	@, <variable>.PicQuant
	movw	r1, #:lower16:.LC19	@,
	ldr	lr, [sp, #8]	@, %sfp
	movt	r1, #:upper16:.LC19	@,
	str	r3, [sp, #12]	@, %sfp
	add	r3, ip, r0	@ p32.874,,
	ldrb	ip, [r4, #11]	@ zero_extendqisi2	@, <variable>.SkipModeFlag
	bfi	r2, lr, #7, #1	@ tmp508,,,
	str	ip, [sp, #16]	@, %sfp
	add	ip, r3, r0	@ p32.878, p32.874,
	ldrb	lr, [r4, #22]	@ zero_extendqisi2	@, <variable>.AdvPredModeDisable
	str	lr, [sp, #8]	@, %sfp
	add	lr, ip, r0	@, p32.878,
	str	lr, [sp, #40]	@, %sfp
	ldr	lr, [sp, #12]	@, %sfp
	bfi	r2, lr, #8, #6	@ tmp512,,,
	ldrb	lr, [r4, #10]	@ zero_extendqisi2	@, <variable>.PicRefFlag
	str	lr, [sp, #12]	@, %sfp
	ldr	lr, [sp, #40]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #36]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	bfi	r2, lr, #14, #1	@ tmp516,,,
	ldrb	lr, [r4, #9]	@ zero_extendqisi2	@, <variable>.NoFwdRefFlag
	str	lr, [sp, #16]	@, %sfp
	ldr	lr, [sp, #36]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #32]	@, %sfp
	ldr	lr, [sp, #8]	@, %sfp
	bfi	r2, lr, #15, #1	@ tmp520,,,
	ldr	lr, [sp, #32]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #28]	@, %sfp
	ldr	lr, [sp, #12]	@, %sfp
	bfi	r2, lr, #16, #1	@ tmp524,,,
	ldr	lr, [sp, #28]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #24]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	bfi	r2, lr, #17, #1	@ tmp528,,,
	ldr	lr, [sp, #24]	@, %sfp
	bfi	r2, r7, #18, #14	@ tmp532, D.33801,,
	add	lr, lr, r0	@,,
	str	lr, [sp, #20]	@, %sfp
	add	lr, lr, r0	@,,
	str	r2, [sp, #68]	@ tmp532,
	str	lr, [sp, #12]	@, %sfp
	str	r2, [r8, #4]	@ tmp532,
	add	r2, lr, r0	@,,
	str	r2, [sp, #8]	@, %sfp
	ldr	lr, [sp, #8]	@, %sfp
	ldr	r2, [sp, #68]	@, D32
	add	lr, lr, r0	@,,
	str	r3, [sp, #4]	@,
	str	lr, [sp, #48]	@, %sfp
	str	ip, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #18]	@ zero_extendqisi2	@, <variable>.AlphaOffset
	mov	r2, r7	@ tmp535, D.33801
	ldrb	r3, [r4, #20]	@ zero_extendqisi2	@ <variable>.LoopFiltDisable, <variable>.LoopFiltDisable
	ldrb	ip, [r4, #19]	@ zero_extendqisi2	@ <variable>.LoopFiltParamFlag, <variable>.LoopFiltParamFlag
	str	r0, [sp, #16]	@, %sfp
	bfi	r2, r3, #0, #1	@ tmp535, <variable>.LoopFiltDisable,,
	ldrb	r1, [r4, #17]	@ zero_extendqisi2	@, <variable>.BetaOffset
	bfi	r2, ip, #1, #1	@ tmp539, <variable>.LoopFiltParamFlag,,
	ldr	r3, [sp, #16]	@, %sfp
	mov	r0, #4	@,
	str	r1, [sp, #52]	@, %sfp
	bfi	r2, r3, #2, #5	@ tmp543,,,
	ldr	lr, [sp, #52]	@, %sfp
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bfi	r2, lr, #7, #5	@ tmp547,,,
	str	r2, [sp, #68]	@ tmp547,
	str	r2, [r9, #4]	@ tmp547,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #28]	@ zero_extendqisi2	@, <variable>.FwdPicStruct1
	ldrb	ip, [r4, #25]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst0, <variable>.FwdTopFieldFirst0
	mov	r2, r7	@ tmp553, D.33801
	ldrb	r3, [r4, #26]	@ zero_extendqisi2	@ <variable>.FwdPicStruct0, <variable>.FwdPicStruct0
	ldrb	r9, [r4, #27]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst1, <variable>.FwdTopFieldFirst1
	bfi	r2, ip, #0, #1	@ tmp553, <variable>.FwdTopFieldFirst0,,
	str	r0, [sp, #16]	@, %sfp
	bfi	r2, r3, #1, #2	@ tmp557, <variable>.FwdPicStruct0,,
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@, <variable>.BwdTopFieldFirst
	bfi	r2, r9, #3, #1	@ tmp561, <variable>.FwdTopFieldFirst1,,
	ldr	lr, [sp, #16]	@, %sfp
	mov	r0, #4	@,
	str	r1, [sp, #52]	@, %sfp
	bfi	r2, lr, #4, #2	@ tmp565,,,
	ldr	ip, [sp, #52]	@, %sfp
	movw	r1, #:lower16:.LC21	@,
	ldrb	r9, [r4, #24]	@ zero_extendqisi2	@ <variable>.BwdPicStruct, <variable>.BwdPicStruct
	movt	r1, #:upper16:.LC21	@,
	bfi	r2, ip, #6, #1	@ tmp569,,,
	bfi	r2, r9, #7, #2	@ tmp573, <variable>.BwdPicStruct,,
	bfi	r2, r7, #9, #23	@ tmp577, D.33801,,
	str	r2, [sp, #68]	@ tmp577,
	str	r2, [fp, #4]	@ tmp577,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [sp, #44]	@, %sfp
	movw	r0, #14428	@ tmp581,
	movw	r1, #:lower16:.LC22	@,
	ldr	r3, [r4, r0]	@ <variable>.BwdRefPicAddr, <variable>.BwdRefPicAddr
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #4	@,
	bic	ip, r3, #15	@ tmp583, <variable>.BwdRefPicAddr,
	str	ip, [sp, #68]	@ tmp583, <variable>.bwd_address
	str	ip, [lr, #4]	@ tmp583,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sp, #4]	@,
	movw	r1, #14432	@ tmp587,
	mov	r0, #4	@,
	ldr	r2, [r4, r1]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bic	ip, r2, #15	@ tmp589, <variable>.FwdRefPic0Addr,
	str	ip, [sp, #68]	@ tmp589, <variable>.fwd_address_0
	str	ip, [r3, #4]	@ tmp589,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #0]	@,
	movw	r0, #14436	@ tmp593,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [r4, r0]	@ <variable>.FwdRefPic1Addr, <variable>.FwdRefPic1Addr
	movt	r1, #:upper16:.LC24	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp595, <variable>.FwdRefPic1Addr,
	str	r3, [sp, #68]	@ tmp595, <variable>.fwd_address_1
	str	r3, [ip, #4]	@ tmp595,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #40]	@, %sfp
	movw	r1, #14452	@ tmp599,
	mov	r0, #4	@,
	ldr	r2, [r4, r1]	@ <variable>.rcn_address, <variable>.rcn_address
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, r2, #15	@ tmp601, <variable>.rcn_address,
	str	r3, [sp, #68]	@ tmp601, <variable>.rcn_address
	str	r3, [ip, #4]	@ tmp601,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #29]	@ zero_extendqisi2	@ <variable>.ColPicType, <variable>.ColPicType
	ldr	ip, [sp, #36]	@, %sfp
	mov	r3, r7	@ tmp604, D.33801
	ldrb	r2, [r4, #21]	@ zero_extendqisi2	@ <variable>.ColPicStruct, <variable>.ColPicStruct
	bfi	r3, r0, #0, #1	@ tmp604, <variable>.ColPicType,,
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #4	@,
	bfi	r3, r2, #24, #2	@ tmp608, <variable>.ColPicStruct,,
	str	r3, [sp, #68]	@ tmp608,
	str	r3, [ip, #4]	@ tmp608,
	movt	r1, #:upper16:.LC26	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [sp, #32]	@, %sfp
	ldr	r2, [r4, #64]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r7	@ tmp615, D.33801
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC27	@,
	bfi	r3, r2, #0, #24	@ tmp615, <variable>.StreamPhyAddr,,
	str	r3, [sp, #68]	@ tmp615,
	str	r3, [lr, #4]	@ tmp615,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #80]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [sp, #28]	@, %sfp
	mov	r3, r7	@ tmp619, D.33801
	ldr	ip, [r4, #72]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r3, r1, #0, #24	@ tmp619, <variable>.StreamLength,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	bfi	r3, ip, #24, #7	@ tmp622, <variable>.StreamBitOffset,,
	str	r3, [sp, #68]	@ tmp622,
	str	r3, [r2, #4]	@ tmp622,
	movt	r1, #:upper16:.LC28	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [sp, #24]	@, %sfp
	ldr	ip, [r4, #68]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r7	@ tmp626, D.33801
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	bfi	r3, ip, #0, #24	@ tmp626, <variable>.StreamPhyAddr,,
	str	r3, [sp, #68]	@ tmp626,
	str	r3, [r2, #4]	@ tmp626,
	movt	r1, #:upper16:.LC29	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	ldrb	r1, [r4, #33]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_disable, <variable>.chroma_quant_param_disable
	mov	r3, r7	@ tmp630, D.33801
	ldrb	ip, [r4, #35]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_v, <variable>.chroma_quant_param_delta_v
	bfi	r3, r0, #0, #1	@ tmp630, <variable>.weighting_quant_flag,,
	ldrb	r2, [r4, #34]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_u, <variable>.chroma_quant_param_delta_u
	bfi	r3, r1, #1, #1	@ tmp634, <variable>.chroma_quant_param_disable,,
	ldrb	lr, [r4, #36]	@ zero_extendqisi2	@ <variable>.aec_enable, <variable>.aec_enable
	bfi	r3, ip, #2, #6	@ tmp638, <variable>.chroma_quant_param_delta_v,,
	bfi	r3, r2, #8, #6	@ tmp642, <variable>.chroma_quant_param_delta_u,,
	ldrb	ip, [r4, #37]	@ zero_extendqisi2	@ <variable>.p_filed_enhanced_flag, <variable>.p_filed_enhanced_flag
	bfi	r3, lr, #14, #1	@ tmp646, <variable>.aec_enable,,
	ldr	lr, [sp, #20]	@, %sfp
	ldrb	r2, [r4, #38]	@ zero_extendqisi2	@ <variable>.b_filed_enhanced_flag, <variable>.b_filed_enhanced_flag
	bfi	r3, ip, #15, #1	@ tmp650, <variable>.p_filed_enhanced_flag,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	bfi	r3, r2, #16, #1	@ tmp654, <variable>.b_filed_enhanced_flag,,
	str	r3, [sp, #68]	@ tmp654,
	str	r3, [lr, #4]	@ tmp654,
	movt	r1, #:upper16:.LC30	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [sp, #12]	@, %sfp
	ldr	r3, [sl, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bic	ip, r3, #15	@ tmp668, <variable>.PmvTopAddr,
	str	ip, [sp, #68]	@ tmp668, <variable>.pmv_top_addr
	str	ip, [r2, #4]	@ tmp668,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #8]	@, %sfp
	ldr	r3, [sl, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bic	r2, r3, #15	@ tmp679, <variable>.RcnTopAddr,
	str	r2, [sp, #68]	@ tmp679, <variable>.topmb_intra_addr
	str	r2, [ip, #4]	@ tmp679,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [sp, #48]	@, %sfp
	movw	r1, #14448	@ tmp683,
	mov	r0, #4	@,
	ldr	ip, [r4, r1]	@ <variable>.ColPmvAddr, <variable>.ColPmvAddr
	add	r2, lr, #4	@ p32.919,,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bic	r3, ip, #15	@ tmp685, <variable>.ColPmvAddr,
	str	r3, [sp, #68]	@ tmp685, <variable>.colpic_mv_addr
	str	r3, [r2, #4]	@ tmp685,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	add	r0, r4, #14400	@ ivtmp.788, pAvsDecParam,
	add	r3, r0, #60	@ ivtmp.788, ivtmp.788,
	add	r2, r8, #68	@ ivtmp.791, pMsgBase,
	add	lr, r8, #196	@ D.34617, pMsgBase,
.L74:
	mov	r0, r3	@ tmp741, ivtmp.788
	mov	r1, r2	@ tmp742, ivtmp.791
	ldr	ip, [r0], #4	@ D32.465, <variable>.PmvConfigTab
	str	ip, [sp, #68]	@ D32.465, D32
	str	ip, [r1], #4	@ D32.465,
	ldr	ip, [r3, #4]	@ D32.465, <variable>.PmvConfigTab
	add	r3, r0, #4	@ ivtmp.788, tmp741,
	str	ip, [sp, #68]	@ D32.465, D32
	str	ip, [r2, #4]	@ D32.465,
	add	r2, r1, #4	@ ivtmp.791, tmp742,
	cmp	r2, lr	@ ivtmp.791, D.34617
	bne	.L74	@,
	movw	ip, #14444	@ tmp690,
	mov	r0, #4	@,
	ldr	r2, [r4, ip]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bic	lr, r2, #15	@ tmp692, <variable>.CurPmvAddr,
	str	lr, [sp, #68]	@ tmp692, <variable>.pmv_colmb_addr
	str	lr, [r8, #196]	@ tmp692,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	movw	r1, #1144	@ tmp699,
	mla	r6, r1, r5, r6	@ tmp700, tmp699, VdhId, tmp740
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	ldr	r3, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	bic	ip, r3, #15	@ tmp703, <variable>.DblkTopAddr,
	str	ip, [sp, #68]	@ tmp703, <variable>.dblk_top_addr
	str	ip, [r8, #200]	@ tmp703,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	bic	r3, r2, #15	@ tmp714, <variable>.SedTopAddr,
	str	r3, [sp, #68]	@ tmp714, <variable>.sed_top_addr
	str	r3, [r8, #228]	@ tmp714,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	add	r2, ip, #320	@ D32.469, <variable>.MsgSlotAddr,
	str	r2, [sp, #68]	@ D32.469, D32
	str	r2, [r8, #252]	@ D32.469,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	cmp	r3, #1	@ <variable>.weighting_quant_flag,
	beq	.L83	@,
.L75:
	mov	r0, r4	@, pAvsDecParam
	mov	r2, r5	@, VdhId
	ldr	r1, [sp, #64]	@, stream_base_addr
	bl	AVSHAL_V200R004_WirteSlicMsg	@
	mov	r0, #0	@ D.33796,
	b	.L73	@
.L82:
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #300	@,
	movt	r1, #:upper16:.LC4	@,
	movw	r3, #:lower16:.LC17	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.33796, tmp459
	b	.L73	@
.L83:
	add	r0, r4, #14528	@ ivtmp.775, pAvsDecParam,
	add	r1, r8, #320	@ D.34601, pMsgBase,
	add	r3, r0, #60	@ ivtmp.775, ivtmp.775,
	add	r8, r8, #256	@ p32, pMsgBase,
.L76:
	ldrb	r2, [r3, #8]	@ zero_extendqisi2	@ tmp729, <variable>.cur_wq_matrix
	ldrb	lr, [r3, #4]	@ zero_extendqisi2	@ tmp726, <variable>.cur_wq_matrix
	ldrb	r0, [r3, #12]	@ zero_extendqisi2	@ tmp736, <variable>.cur_wq_matrix
	mov	ip, r2, asl #16	@ tmp731, tmp729,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ tmp733, <variable>.cur_wq_matrix
	orr	ip, ip, lr, asl #8	@, tmp732, tmp731, tmp726,
	add	r3, r3, #16	@ ivtmp.775, ivtmp.775,
	orr	r2, ip, r2	@ tmp735, tmp732, tmp733
	orr	lr, r2, r0, asl #24	@, D32.470, tmp735, tmp736,
	str	lr, [sp, #68]	@ D32.470, D32
	str	lr, [r8], #4	@ D32.470,
	cmp	r8, r1	@ p32, D.34601
	bne	.L76	@,
	b	.L75	@
	.fnend
	.size	AVSHAL_V200R004_StartDec, .-AVSHAL_V200R004_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.33713, %object
	.size	__func__.33713, 36
__func__.33713:
	.ascii	"AVSHAL_V200R004_StartDec_CheckParam\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"stream_base_addr = %#x\012\000"
.LC1:
	.ascii	"VdhId is wrong! AVSHAL_V200R003_StartDec\012\000"
	.space	2
.LC2:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC3:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC4:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC5:
	.ascii	"picture width out of range\000"
	.space	1
.LC6:
	.ascii	"BASIC_V200R004_CFG0 = 0x%x\012\000"
.LC7:
	.ascii	"BASIC_V200R004_CFG1 = 0x%x\012\000"
.LC8:
	.ascii	"AVM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC9:
	.ascii	"VAM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC10:
	.ascii	"STREAM_V200R004_BASE_ADDR = 0x%x\012\000"
	.space	2
.LC11:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC12:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC13:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC14:
	.ascii	"VREG_V200R004_DNR_MBINFO_STADDR = 0x%x\012\000"
.LC15:
	.ascii	"VREG_V200R003_REF_PIC_TYPE = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"VREG_V200R004_FF_APT_EN = 0x%x\012\000"
.LC17:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC18:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D10 = 0x%x\012\000"
.LC29:
	.ascii	"D11 = 0x%x\012\000"
.LC30:
	.ascii	"D12 = 0x%x\012\000"
.LC31:
	.ascii	"D13 = 0x%x\012\000"
.LC32:
	.ascii	"D14 = 0x%x\012\000"
.LC33:
	.ascii	"D16 = 0x%x\012\000"
.LC34:
	.ascii	"D49 = 0x%x\012\000"
.LC35:
	.ascii	"D50 = 0x%x\012\000"
.LC36:
	.ascii	"D51 = 0x%x\012\000"
.LC37:
	.ascii	"D63 = 0x%x\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
