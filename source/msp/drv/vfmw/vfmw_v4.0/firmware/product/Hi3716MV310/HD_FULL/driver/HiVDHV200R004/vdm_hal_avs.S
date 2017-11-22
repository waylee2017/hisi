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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	.global	AVSHAL_V200R004_WirteSlicMsg
	.type	AVSHAL_V200R004_WirteSlicMsg, %function
AVSHAL_V200R004_WirteSlicMsg:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:g_HwMem	@ tmp225,
	movt	r5, #:upper16:g_HwMem	@ tmp225,
	movw	r7, #1140	@ tmp228,
	.pad #52
	sub	sp, sp, #52	@,,
	mov	sl, r2	@ VdhId, VdhId
	mla	lr, r7, r2, r5	@ tmp229, tmp228, VdhId, tmp225
	str	r1, [sp, #36]	@ stream_base_addr, %sfp
	mov	r5, r0	@ pAvsDecParam, pAvsDecParam
	add	r4, sl, sl, asl #2	@, tmp235, VdhId, VdhId,
	movw	r6, #:lower16:g_VdmDrvParam	@ tmp232,
	add	r4, r4, #1	@ tmp236, tmp235,
	movt	r6, #:upper16:g_VdmDrvParam	@ tmp232,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp231,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp231,
	ldr	r7, [lr, #44]	@ D.35973, <variable>.MsgSlotAddr
	add	r0, r7, #320	@, D.35973,
	str	r0, [sp, #44]	@, %sfp
	mov	r0, r7	@, D.35973
	bl	MEM_Phy2Vir	@
	ldr	r1, [r6, r4, asl #3]	@ <variable>.ChanId, <variable>.ChanId
	ldr	r2, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	ip, [sl, r1, asl #2]	@ D.35978, s_pstVfmwChan
	cmp	r2, #0	@ <variable>.slice_start_mbn,
	ldr	sl, [ip, #192]	@ <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	ldr	r3, [ip, #188]	@ <variable>.stChanMem_scd.VirAddr, <variable>.stChanMem_scd.VirAddr
	streq	r2, [sp, #40]	@ <variable>.slice_start_mbn, %sfp
	rsb	r1, sl, r3	@, <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.VirAddr
	str	r1, [sp, #32]	@, %sfp
	add	r6, r0, #320	@ pMsgBase.530, D.35976,
	beq	.L3	@,
	ldr	r1, [r5, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	mov	r2, #1	@,
	ldr	ip, [sp, #36]	@, %sfp
	mov	sl, #0	@ tmp247,
	add	lr, r1, #4	@ tmp241, <variable>.stream_phy_addr,
	str	r2, [sp, #40]	@, %sfp
	rsb	r2, ip, lr	@ D.35993,, tmp241
	add	r7, r7, #576	@ D32.536, D.35973,
	bic	r3, r2, #-16777216	@ D32.532, D.35993,
	bic	lr, r3, #15	@ D32.532, D32.532,
	mov	r1, r2, asl #28	@ D32, D.35993,
	str	r1, [r0, #320]	@ D32,
	str	lr, [r0, #324]	@ D32.532,
	str	sl, [r0, #328]	@ tmp247,
	str	sl, [r0, #332]	@ tmp247,
	ldr	ip, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r3, ip, #1	@ tmp249, <variable>.slice_start_mbn,
	mov	r2, r3, asl #16	@ D32.535, tmp249,
	str	r2, [r0, #336]	@ D32.535,
	str	r7, [r0, #572]	@ D32.536,
.L3:
	movw	sl, #14424	@ tmp253,
	ldr	r0, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L19	@,
	mov	r3, #0	@ k,
	movw	fp, #:lower16:s_RegPhyBaseAddr	@,
	mov	r7, r3	@ j, k
	movt	fp, #:upper16:s_RegPhyBaseAddr	@,
	mov	r4, r3	@ i, k
	str	fp, [sp, #20]	@, %sfp
	movw	fp, #511	@ tmp438,
.L18:
	cmp	r7, fp	@ j, tmp438
	bgt	.L5	@,
	sub	lr, r4, #1	@ tmp265, i,
	mov	r8, r4, asl #3	@ tmp437, i,
	rsb	r2, r4, r8	@ tmp261, i, tmp437
	rsb	r0, lr, lr, asl #3	@, tmp269, tmp265, tmp265,
	cmp	r4, #0	@ i,
	movle	lr, #0	@,
	movgt	lr, #1	@,
	add	r2, r5, r2, asl #2	@, tmp263, pAvsDecParam, tmp261,
	add	r1, r5, r0, asl #2	@, tmp271, pAvsDecParam, tmp269,
	ldr	r9, [r2, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	ip, [r1, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r9, ip	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	movhi	lr, #0	@,,
	cmp	lr, #0	@ tmp279,
	mov	r9, lr	@ tmp279,
	bne	.L6	@,
	ldr	r3, [r2, #88]	@ temp.538, <variable>.stream_phy_addr
	ldr	lr, [sp, #32]	@, %sfp
	add	r1, lr, r3	@ D.36054,, temp.538
	ldr	r0, [r1, #3]	@ tmp288,
	bic	ip, r0, #-16777216	@ tmp287, tmp288,
	cmp	ip, #131072	@ tmp287,
	beq	.L30	@,
	ldr	ip, [sp, #36]	@, %sfp
	add	lr, r3, #4	@ tmp340, temp.538,
	rsb	r3, ip, lr	@ temp.550,, tmp340
	and	r1, r3, #15	@ tmp341, temp.550,
	bic	r2, r3, #15	@, temp.550,
	str	r2, [sp, #12]	@, %sfp
	mov	r9, r1, asl #3	@, tmp341,
	str	r9, [sp, #16]	@, %sfp
.L8:
	rsb	r1, r4, r8	@ tmp345, i, tmp437
	add	r3, r5, r1, asl #2	@, tmp347, pAvsDecParam, tmp345,
	ldr	r9, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	ldr	r2, [r3, #92]	@ D.36080, <variable>.stream_phy_addr
	sub	r0, r9, #4	@ tmp349, <variable>.stream_lenInByte,
	cmp	r2, #0	@ D.36080,
	mov	r0, r0, asl #3	@ bit_len_0, tmp349,
	beq	.L9	@,
	ldr	r3, [r3, #100]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r3, #0	@ <variable>.stream_lenInByte,
	ble	.L9	@,
	ldr	r1, [sp, #36]	@, %sfp
	cmp	r0, #0	@ bit_len_0,
	mov	ip, r3, asl #3	@ bit_len_1, <variable>.stream_lenInByte,
	rsb	r2, r1, r2	@ D.36085,, D.36080
	bicne	ip, ip, #-33554432	@ pretmp.552, bit_len_1,
	and	r9, r2, #15	@ tmp366, D.36085,
	bic	r3, r2, #15	@ bit_stream_addr_1, D.36085,
	bicne	r2, r3, #-16777216	@ prephitmp.507, bit_stream_addr_1,
	moveq	r0, ip	@ bit_len_0, bit_len_1
	mov	lr, r9, asl #3	@ bit_offset_1, tmp366,
	moveq	r2, #0	@ prephitmp.507,
	streq	r3, [sp, #12]	@ bit_stream_addr_1, %sfp
	orrne	lr, ip, lr, asl #25	@,, pretmp.552, bit_offset_1,
	streq	lr, [sp, #16]	@ bit_offset_1, %sfp
	streq	r2, [sp, #28]	@ prephitmp.507, %sfp
	strne	lr, [sp, #28]	@, %sfp
.L11:
	mov	ip, r4, asl #5	@ tmp381, i,
	mov	r9, r4, asl #8	@ D.36003, i,
	add	lr, ip, #1	@, tmp381,
	ldr	ip, [sp, #12]	@, %sfp
	add	r1, r9, #12	@, D.36003,
	mov	r3, r4, asl #6	@ tmp378, i,
	str	r1, [sp, #24]	@, %sfp
	bic	r1, ip, #-16777216	@ D32.560,,
	ldr	ip, [sp, #16]	@, %sfp
	add	r3, r3, #1	@ tmp379, tmp378,
	str	lr, [sp, #4]	@, %sfp
	bic	lr, r0, #-33554432	@ tmp377, bit_len_0,
	orr	r0, lr, ip, asl #25	@, D32.557, tmp377,,
	str	r0, [r6, r4, asl #8]	@ D32.557,* pMsgBase.530
	str	r1, [r6, r3, asl #2]	@ D32.560,* pMsgBase.530
	add	r3, r4, #1	@ k, i,
	ldr	ip, [sp, #28]	@, %sfp
	ldr	lr, [sp, #4]	@, %sfp
	str	ip, [r6, lr, asl #3]	@,* pMsgBase.530
	ldr	r0, [sp, #24]	@, %sfp
	str	r2, [r6, r0]	@ prephitmp.507,
	ldr	ip, [r5, sl]	@ temp.567, <variable>.SlcNum
	cmp	r3, ip	@ k, temp.567
	bge	.L31	@,
	rsb	r2, r4, r8	@ tmp396, i, tmp437
	rsb	lr, r3, r3, asl #3	@, tmp403, k, k,
	mov	r2, r2, asl #2	@ tmp397, tmp396,
	add	r0, r5, lr, asl #2	@, tmp405, pAvsDecParam, tmp403,
	add	r1, r2, r5	@ tmp398, tmp397, pAvsDecParam
	ldr	lr, [r0, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r1, [r1, #104]	@ prephitmp.509, <variable>.slice_start_mbn
	cmp	lr, r1	@ <variable>.slice_start_mbn, prephitmp.509
	bhi	.L13	@,
	mvn	r0, r3	@ tmp446, k
	add	lr, r0, ip	@ tmp445, tmp446, temp.567
	tst	lr, #1	@ tmp445,
	add	r0, r2, #88	@ tmp412, tmp397,
	add	r2, r5, r0	@ ivtmp.528, pAvsDecParam, tmp412
	beq	.L27	@,
	ldr	r0, [r2, #72]	@ temp.568, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	add	r2, r2, #28	@ ivtmp.528, ivtmp.528,
	cmp	r1, r0	@ prephitmp.509, temp.568
	bcc	.L13	@,
.L27:
	mov	r8, r6	@ pMsgBase.530, pMsgBase.530
	b	.L14	@
.L15:
	ldr	r6, [r2, #72]	@ temp.568, <variable>.slice_start_mbn
	add	r2, r2, #56	@ ivtmp.528, ivtmp.528,
	cmp	r1, r6	@ prephitmp.509, temp.568
	bcc	.L28	@,
	ldr	r6, [r0, #72]	@ temp.568, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	cmp	r1, r6	@ prephitmp.509, temp.568
	bcc	.L28	@,
.L14:
	add	r3, r3, #1	@ k, k,
	add	r0, r2, #28	@ tmp448, ivtmp.528,
	cmp	ip, r3	@ temp.567, k
	bgt	.L15	@,
.L28:
	mov	r6, r8	@ pMsgBase.530, pMsgBase.530
.L13:
	cmp	ip, r3	@ temp.567, k
	beq	.L32	@,
	rsb	lr, r3, r3, asl #3	@, tmp419, k, k,
	ldr	r0, [sp, #40]	@, %sfp
	ldr	ip, [sp, #44]	@, %sfp
	add	r2, r3, r0	@ tmp424, k,
	add	r0, r5, lr, asl #2	@, tmp421, pAvsDecParam, tmp419,
	ldr	lr, [r0, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r2, ip, r2, asl #8	@, prephitmp.511,, tmp424,
	sub	r0, lr, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
.L17:
	mov	lr, r4, asl #4	@ tmp431, i,
	add	r9, r9, #252	@ tmp434, D.36003,
	add	r4, lr, #1	@ tmp432, tmp431,
	add	r7, r7, #1	@ j, j,
	uxth	ip, r1	@ tmp429, prephitmp.509
	orr	r1, ip, r0, asl #16	@, D32.572, tmp429, slice_end_mbn,
	str	r1, [r6, r4, asl #4]	@ D32.572,* pMsgBase.530
	str	r2, [r6, r9]	@ prephitmp.511,
.L5:
	sub	r4, r3, #1	@ i, k,
.L6:
	ldr	r2, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #1	@ i, i,
	cmp	r2, r4	@ <variable>.SlcNum, i
	bgt	.L18	@,
.L19:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L9:
	mov	r2, #0	@ prephitmp.507,
	str	r2, [sp, #28]	@ prephitmp.507, %sfp
	b	.L11	@
.L32:
	ldrh	r0, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r2, #0	@ prephitmp.511,
	ldrh	ip, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	lr, ip, r0	@ tmp415, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r0, lr, #1	@ slice_end_mbn, tmp415,
	b	.L17	@
.L30:
	strb	r9, [r1, #2]	@ tmp279,
	mov	r1, #1	@,
	ldr	r0, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	ip, [sp, #32]	@, %sfp
	add	lr, ip, r0	@ tmp300,, <variable>.stream_phy_addr
	mov	r0, #64	@,
	strb	r0, [lr, #4]	@,
	ldr	r3, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	lr, ip, r3	@ tmp313,, <variable>.stream_phy_addr
	strb	r0, [lr, #5]	@,
	ldr	r3, [sp, #20]	@, %sfp
	ldr	r2, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	ip, [sp, #36]	@, %sfp
	add	lr, r2, #2	@ tmp324, <variable>.stream_phy_addr,
	ldr	r0, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	rsb	r3, ip, lr	@ D.36068,, tmp324
	and	ip, r3, #15	@ tmp326, D.36068,
	add	r0, r0, #2032	@, s_RegPhyBaseAddr,
	bic	r2, r3, #15	@, D.36068,
	str	r2, [sp, #12]	@, %sfp
	mov	lr, ip, asl #3	@, tmp326,
	str	lr, [sp, #16]	@, %sfp
	bl	MEM_WritePhyWord	@
	ldr	r3, [sp, #20]	@, %sfp
	mov	r1, #1	@,
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #1792	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	ldr	ip, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r9	@, tmp279
	add	r0, ip, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [sp, #20]	@, %sfp
	mov	r1, r9	@, tmp279
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L8	@
.L31:
	rsb	r0, r4, r8	@ tmp389, i, tmp437
	add	r2, r5, r0, asl #2	@, tmp391, pAvsDecParam, tmp389,
	ldr	r1, [r2, #104]	@ prephitmp.509, <variable>.slice_start_mbn
	b	.L13	@
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
	movgt	r3, r0	@ ivtmp.614, pAvsDecParam
	movgt	r2, #0	@ i,
	bgt	.L35	@,
	b	.L34	@
.L42:
	ldr	r4, [r1, #0]	@ prephitmp.592,* stream_base_addr
.L35:
	ldr	ip, [r3, #88]	@ temp.624, <variable>.stream_phy_addr
	cmp	ip, #0	@ temp.624,
	beq	.L38	@,
	ldr	r6, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	bic	ip, ip, #15	@ tmp151, temp.624,
	cmp	r6, #0	@ <variable>.stream_lenInByte,
	ble	.L38	@,
	cmp	r4, ip	@ prephitmp.592, tmp151
	strls	r4, [r1, #0]	@, prephitmp.592,* stream_base_addr
	strhi	ip, [r1, #0]	@, tmp151,* stream_base_addr
.L38:
	ldr	ip, [r3, #92]	@ D.35618, <variable>.stream_phy_addr
	ldr	r4, [r1, #0]	@ prephitmp.622,* stream_base_addr
	cmp	ip, #0	@ D.35618,
	beq	.L36	@,
	ldr	r6, [r3, #100]	@ tmp146, <variable>.stream_lenInByte
	bic	ip, ip, #15	@ tmp147, D.35618,
	cmp	r6, #0	@ tmp146,
	ble	.L36	@,
	cmp	r4, ip	@ prephitmp.622, tmp147
	movcs	r4, ip	@ prephitmp.622, tmp147
	str	r4, [r1, #0]	@ prephitmp.622,* stream_base_addr
.L36:
	ldr	ip, [r0, r5]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #28	@ ivtmp.614, ivtmp.614,
	cmp	ip, r2	@ <variable>.SlcNum, i
	bgt	.L42	@,
	cmn	r4, #1	@ prephitmp.622,
	movne	r0, #0	@ D.35630,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L34:
	mvn	r2, #0	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35630,
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
	beq	.L46	@,
	cmp	r0, #1	@ VdhId,
	beq	.L46	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35591,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L46:
	movw	r6, #1140	@ tmp144,
	movw	r4, #:lower16:g_HwMem	@ tmp142,
	mul	r6, r6, r0	@ tmp143, tmp144, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp142,
	movw	r3, #:lower16:269680640	@ tmp140,
	movt	r3, #:upper16:269680640	@ tmp140,
	str	r3, [r1, #0]	@ tmp140,* vdm_reg_phy_addr
	ldr	r5, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r5, #0	@ <variable>.pVdmRegVirAddr,
	movne	r0, #0	@ D.35591,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r1, #0]	@,* vdm_reg_phy_addr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.35598,
	strne	r1, [r6, r4]	@ D.35598, <variable>.pVdmRegVirAddr
	movne	r0, r5	@ D.35591, <variable>.pVdmRegVirAddr
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35591,
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
	bgt	.L59	@,
	ldrh	r3, [r1, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L60	@,
	ldrh	r2, [r1, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	movls	r0, #0	@ D.35573,
	bhi	.L61	@,
.L55:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L59:
	mov	ip, #0	@ tmp139,
	mov	r3, r0	@, VdhId
	movw	r1, #:lower16:.LC3	@,
	mov	r0, ip	@, tmp139
	movt	r1, #:upper16:.LC3	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	ip, [sp, #0]	@ tmp139,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35573,
	b	.L55	@
.L60:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #84	@,
	movt	r1, #:upper16:.LC4	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35573,
	b	.L55	@
.L61:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #85	@,
	movt	r1, #:upper16:.LC4	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35573,
	b	.L55	@
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
	beq	.L75	@,
.L63:
	mvn	r0, #0	@ D.35652,
.L67:
	add	sp, sp, #76	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L75:
	mov	r0, r5	@, VdhId
	add	r1, sp, #60	@,,
	bl	AVSHAL_V200R004_StartDec_GetRegAddr	@
	cmp	r0, #0	@,
	bne	.L63	@,
	mov	r0, r4	@, pAvsDecParam
	add	r1, sp, #64	@,,
	bl	AVSHAL_V200R004_StartDec_GetStrmAddr	@
	subs	r7, r0, #0	@ D.35657,
	bne	.L63	@,
	ldrh	r1, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r6, #1140	@ tmp285,
	ldrh	r9, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	fp, r7	@ D.35657, D.35657
	mul	r8, r6, r5	@ tmp284, tmp285, VdhId
	movw	r6, #:lower16:g_HwMem	@ tmp754,
	mul	lr, r9, r1	@ tmp271, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r6, #:upper16:g_HwMem	@ tmp754,
	movw	r9, #14844	@ tmp292,
	add	r0, r0, #3	@,,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	sub	sl, lr, #1	@ tmp272, tmp271,
	ldr	lr, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	fp, sl, #0, #20	@ D.35657, tmp272,,
	add	sl, r8, r6	@ tmp286, tmp284, tmp754
	orr	ip, fp, #1073741824	@ tmp276, D.35657,
	mvn	fp, #0	@ tmp473,
	bfi	ip, r7, #31, #1	@ tmp276, D.35657,,
	orr	r3, ip, #4194304	@ tmp279, tmp276,
	bfi	r3, r7, #23, #1	@ tmp279, D.35657,,
	orr	r2, r3, #16777216	@ tmp282, tmp279,
	bfi	r2, r7, #25, #1	@ tmp282, D.35657,,
	str	r2, [sp, #68]	@ tmp282,
	str	r2, [lr, #8]	@ tmp282,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, r9]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #805306374	@ tmp295,
	movw	r1, #14868	@ tmp304,
	mov	r2, #1	@ tmp300,
	ldr	lr, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, ip, lsr #6	@ tmp293, <variable>.VahbStride,
	ldr	ip, [r4, r1]	@ <variable>.Compress_en, <variable>.Compress_en
	bfi	r3, r0, #4, #10	@ tmp295, tmp293,,
	movw	r1, #:lower16:.LC7	@,
	orr	r3, r3, #16384	@ tmp298, tmp295,
	movt	r1, #:upper16:.LC7	@,
	bfi	r3, r7, #15, #1	@ tmp298, D.35657,,
	mov	r0, #3	@,
	bfi	r3, r2, #16, #12	@ tmp299, tmp300,,
	bfi	r3, r7, #28, #1	@ tmp301, D.35657,,
	orr	r2, r3, #536870912	@ tmp306, tmp301,
	bfi	r2, ip, #30, #1	@ tmp306, <variable>.Compress_en,,
	bfi	r2, r7, #31, #1	@ tmp307, D.35657,,
	str	r2, [sp, #68]	@ tmp307,
	str	r2, [lr, #12]	@ tmp307,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [sl, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bic	ip, r3, #15	@ tmp323, <variable>.MsgSlotAddr,
	str	ip, [sp, #68]	@ tmp323, <variable>.av_msg_addr
	str	ip, [r2, #16]	@ tmp323,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [sl, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bic	ip, r3, #15	@ tmp339, <variable>.MsgSlotAddr,
	str	ip, [sp, #68]	@ tmp339, <variable>.va_msg_addr
	str	ip, [r2, #20]	@ tmp339,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [sp, #64]	@ stream_base_addr, stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r3, [sp, #68]	@ stream_base_addr, <variable>.stream_base_addr
	str	r3, [ip, #24]	@ stream_base_addr,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrh	ip, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r2, #:lower16:s_RegPhyBaseAddr	@ tmp356,
	movt	r2, #:upper16:s_RegPhyBaseAddr	@ tmp356,
	cmp	ip, #120	@ <variable>.PicWidthInMb,
	movw	r0, #:lower16:269729796	@,
	ldr	r1, [r2, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	movt	r0, #:upper16:269729796	@,
	movls	ip, #65536	@ iftmp.442,
	movhi	ip, #0	@ iftmp.442,
	add	r3, r1, #4	@ D.35711, s_RegPhyBaseAddr,
	str	ip, [sp, #68]	@ iftmp.442, D32
	str	r3, [sp, #0]	@,
	bl	MEM_ReadPhyWord	@
	ldr	ip, [sp, #0]	@,
	ldr	r2, [sp, #68]	@ D32, D32
	orr	r1, r0, r2	@ tmp359,, D32
	mov	r0, ip	@, D.35711
	bl	MEM_WritePhyWord	@
	ldr	r1, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:3148803	@ tmp361,
	movt	r0, #:upper16:3148803	@ tmp361,
	str	r0, [sp, #68]	@ tmp361, D32
	str	r0, [r1, #60]	@ tmp361,
	mov	r0, #3	@,
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [sp, #68]	@ D32.779, D32
	movt	r1, #:upper16:.LC11	@,
	str	r2, [r3, #64]	@ D32.779,
	ldr	r2, [sp, #68]	@ D32.782, D32
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #68]	@ D32.782,
	ldr	ip, [sp, #68]	@ D32.785, D32
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.785,
	ldr	ip, [sp, #68]	@ D32.788, D32
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #76]	@ D32.788,
	ldr	r2, [sp, #68]	@ D32.791, D32
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #80]	@ D32.791,
	movw	r3, #14440	@ tmp400,
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [sp, #68]	@ D32.794, D32
	str	r2, [ip, #84]	@ D32.794,
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r4, r3]	@ <variable>.CurPicAddr, <variable>.CurPicAddr
	bic	r3, ip, #15	@ tmp402, <variable>.CurPicAddr,
	str	r3, [sp, #68]	@ tmp402, <variable>.ystaddr_1d
	str	r3, [r2, #96]	@ tmp402,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r4, r9]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r0, #3	@,
	ldrh	r3, [r4, #50]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	str	r2, [sp, #68]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r2, [ip, #100]	@ <variable>.VahbStride,
	ldr	r2, [sp, #68]	@, D32
	str	r3, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #0]	@,
	movw	r1, #:lower16:.LC13	@,
	ldr	ip, [r4, r9]	@ <variable>.VahbStride, <variable>.VahbStride
	movt	r1, #:upper16:.LC13	@,
	add	r3, r0, #1	@ tmp424, height_in_mb,
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	mov	ip, ip, asl #1	@ tmp422, <variable>.VahbStride,
	mov	r3, r3, lsr #1	@ tmp425, tmp424,
	mul	r3, r3, ip	@ tmp426, tmp425, tmp422
	str	r3, [sp, #68]	@ tmp426, <variable>.uvoffset_1d
	str	r3, [r2, #104]	@ tmp426,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	r7, [ip, #108]	@ D.35657,
	ldr	r3, [sl, #1120]	@ D32.447, <variable>.DnrMbInfoAddr
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #68]	@ D32.447, D32
	str	r3, [r2, #144]	@ D32.447,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #68]	@ D.35657, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	str	r7, [ip, #148]	@ D.35657,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #68]	@ D.35657, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	r7, [r2, #152]	@ D.35657,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	fp, [r3, #32]	@ tmp473,
	ldr	r0, [sl, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ pMsgBase,
	beq	.L76	@,
	ldrh	r2, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r9, r8	@ p32.829, pMsgBase
	ldrh	lr, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	ldr	r3, [sp, #68]	@ tmp485,
	sub	fp, r2, #1	@ tmp484, <variable>.PicWidthInMb,
	ldrb	ip, [r4, #31]	@ zero_extendqisi2	@ <variable>.ChromaFormat, <variable>.ChromaFormat
	sub	r1, lr, #1	@ tmp488, <variable>.PicHeightInMb,
	bfi	r3, fp, #0, #9	@ tmp485, tmp484,,
	ldrb	r2, [r4, #30]	@ zero_extendqisi2	@ <variable>.SamplePrecision, <variable>.SamplePrecision
	bfi	r3, r1, #16, #9	@ tmp489, tmp488,,
	movw	r1, #:lower16:.LC18	@,
	bfi	r3, ip, #25, #2	@ tmp490, <variable>.ChromaFormat,,
	movt	r1, #:upper16:.LC18	@,
	bfi	r3, r2, #27, #2	@ tmp494, <variable>.SamplePrecision,,
	bic	fp, r3, #65024	@ tmp499, tmp494,
	bfi	fp, r7, #29, #3	@ tmp499, D.35657,,
	str	fp, [sp, #68]	@ tmp499,
	str	fp, [r9], #4	@ tmp499,
	add	fp, r9, r0	@ p32.833, p32.829,
	ldr	r2, [sp, #68]	@, D32
	add	lr, fp, r0	@, p32.833,
	str	lr, [sp, #44]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #16]	@ zero_extendqisi2	@ <variable>.ProgrsvFrame, <variable>.ProgrsvFrame
	mov	r2, r7	@ tmp502, D.35657
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r2, r0, #0, #1	@ tmp502, <variable>.ProgrsvFrame,,
	bfi	r2, r1, #1, #2	@ tmp506, <variable>.PicStruct,,
	ldrb	ip, [r4, #15]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	bfi	r2, r3, #3, #2	@ tmp510, <variable>.PicCodingType,,
	ldrb	r3, [r4, #13]	@ zero_extendqisi2	@, <variable>.FixQPFlag
	ldrb	lr, [r4, #14]	@ zero_extendqisi2	@ <variable>.RepeatFirstField, <variable>.RepeatFirstField
	bfi	r2, ip, #5, #1	@ tmp514, <variable>.TopFieldFirst,,
	ldr	ip, [sp, #44]	@, %sfp
	mov	r0, #4	@,
	str	r3, [sp, #8]	@, %sfp
	bfi	r2, lr, #6, #1	@ tmp518, <variable>.RepeatFirstField,,
	ldrb	r3, [r4, #12]	@ zero_extendqisi2	@, <variable>.PicQuant
	movw	r1, #:lower16:.LC19	@,
	ldr	lr, [sp, #8]	@, %sfp
	movt	r1, #:upper16:.LC19	@,
	str	r3, [sp, #12]	@, %sfp
	add	r3, ip, r0	@ p32.841,,
	ldrb	ip, [r4, #11]	@ zero_extendqisi2	@, <variable>.SkipModeFlag
	bfi	r2, lr, #7, #1	@ tmp522,,,
	str	ip, [sp, #16]	@, %sfp
	add	ip, r3, r0	@ p32.845, p32.841,
	ldrb	lr, [r4, #22]	@ zero_extendqisi2	@, <variable>.AdvPredModeDisable
	str	lr, [sp, #8]	@, %sfp
	add	lr, ip, r0	@, p32.845,
	str	lr, [sp, #40]	@, %sfp
	ldr	lr, [sp, #12]	@, %sfp
	bfi	r2, lr, #8, #6	@ tmp526,,,
	ldrb	lr, [r4, #10]	@ zero_extendqisi2	@, <variable>.PicRefFlag
	str	lr, [sp, #12]	@, %sfp
	ldr	lr, [sp, #40]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #36]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	bfi	r2, lr, #14, #1	@ tmp530,,,
	ldrb	lr, [r4, #9]	@ zero_extendqisi2	@, <variable>.NoFwdRefFlag
	str	lr, [sp, #16]	@, %sfp
	ldr	lr, [sp, #36]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #32]	@, %sfp
	ldr	lr, [sp, #8]	@, %sfp
	bfi	r2, lr, #15, #1	@ tmp534,,,
	ldr	lr, [sp, #32]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #28]	@, %sfp
	ldr	lr, [sp, #12]	@, %sfp
	bfi	r2, lr, #16, #1	@ tmp538,,,
	ldr	lr, [sp, #28]	@, %sfp
	add	lr, lr, r0	@,,
	str	lr, [sp, #24]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	bfi	r2, lr, #17, #1	@ tmp542,,,
	ldr	lr, [sp, #24]	@, %sfp
	bfi	r2, r7, #18, #14	@ tmp546, D.35657,,
	add	lr, lr, r0	@,,
	str	lr, [sp, #20]	@, %sfp
	add	lr, lr, r0	@,,
	str	r2, [sp, #68]	@ tmp546,
	str	lr, [sp, #12]	@, %sfp
	str	r2, [r8, #4]	@ tmp546,
	add	r2, lr, r0	@,,
	str	r2, [sp, #8]	@, %sfp
	ldr	lr, [sp, #8]	@, %sfp
	ldr	r2, [sp, #68]	@, D32
	add	lr, lr, r0	@,,
	str	r3, [sp, #0]	@,
	str	lr, [sp, #48]	@, %sfp
	str	ip, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #18]	@ zero_extendqisi2	@, <variable>.AlphaOffset
	mov	r2, r7	@ tmp549, D.35657
	ldrb	r3, [r4, #20]	@ zero_extendqisi2	@ <variable>.LoopFiltDisable, <variable>.LoopFiltDisable
	ldrb	ip, [r4, #19]	@ zero_extendqisi2	@ <variable>.LoopFiltParamFlag, <variable>.LoopFiltParamFlag
	str	r0, [sp, #16]	@, %sfp
	bfi	r2, r3, #0, #1	@ tmp549, <variable>.LoopFiltDisable,,
	ldrb	r1, [r4, #17]	@ zero_extendqisi2	@, <variable>.BetaOffset
	bfi	r2, ip, #1, #1	@ tmp553, <variable>.LoopFiltParamFlag,,
	ldr	r3, [sp, #16]	@, %sfp
	mov	r0, #4	@,
	str	r1, [sp, #52]	@, %sfp
	bfi	r2, r3, #2, #5	@ tmp557,,,
	ldr	lr, [sp, #52]	@, %sfp
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bfi	r2, lr, #7, #5	@ tmp561,,,
	str	r2, [sp, #68]	@ tmp561,
	str	r2, [r9, #4]	@ tmp561,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #28]	@ zero_extendqisi2	@, <variable>.FwdPicStruct1
	ldrb	ip, [r4, #25]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst0, <variable>.FwdTopFieldFirst0
	mov	r2, r7	@ tmp567, D.35657
	ldrb	r3, [r4, #26]	@ zero_extendqisi2	@ <variable>.FwdPicStruct0, <variable>.FwdPicStruct0
	ldrb	r9, [r4, #27]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst1, <variable>.FwdTopFieldFirst1
	bfi	r2, ip, #0, #1	@ tmp567, <variable>.FwdTopFieldFirst0,,
	str	r0, [sp, #16]	@, %sfp
	bfi	r2, r3, #1, #2	@ tmp571, <variable>.FwdPicStruct0,,
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@, <variable>.BwdTopFieldFirst
	bfi	r2, r9, #3, #1	@ tmp575, <variable>.FwdTopFieldFirst1,,
	ldr	lr, [sp, #16]	@, %sfp
	mov	r0, #4	@,
	str	r1, [sp, #52]	@, %sfp
	bfi	r2, lr, #4, #2	@ tmp579,,,
	ldr	ip, [sp, #52]	@, %sfp
	movw	r1, #:lower16:.LC21	@,
	ldrb	r9, [r4, #24]	@ zero_extendqisi2	@ <variable>.BwdPicStruct, <variable>.BwdPicStruct
	movt	r1, #:upper16:.LC21	@,
	bfi	r2, ip, #6, #1	@ tmp583,,,
	bfi	r2, r9, #7, #2	@ tmp587, <variable>.BwdPicStruct,,
	bfi	r2, r7, #9, #23	@ tmp591, D.35657,,
	str	r2, [sp, #68]	@ tmp591,
	str	r2, [fp, #4]	@ tmp591,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [sp, #44]	@, %sfp
	movw	r0, #14428	@ tmp595,
	movw	r1, #:lower16:.LC22	@,
	ldr	r3, [r4, r0]	@ <variable>.BwdRefPicAddr, <variable>.BwdRefPicAddr
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #4	@,
	bic	ip, r3, #15	@ tmp597, <variable>.BwdRefPicAddr,
	str	ip, [sp, #68]	@ tmp597, <variable>.bwd_address
	str	ip, [lr, #4]	@ tmp597,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sp, #0]	@,
	movw	r1, #14432	@ tmp601,
	mov	r0, #4	@,
	ldr	r2, [r4, r1]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bic	ip, r2, #15	@ tmp603, <variable>.FwdRefPic0Addr,
	str	ip, [sp, #68]	@ tmp603, <variable>.fwd_address_0
	str	ip, [r3, #4]	@ tmp603,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #4]	@,
	movw	r0, #14436	@ tmp607,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [r4, r0]	@ <variable>.FwdRefPic1Addr, <variable>.FwdRefPic1Addr
	movt	r1, #:upper16:.LC24	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp609, <variable>.FwdRefPic1Addr,
	str	r3, [sp, #68]	@ tmp609, <variable>.fwd_address_1
	str	r3, [ip, #4]	@ tmp609,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #40]	@, %sfp
	movw	r1, #14452	@ tmp613,
	mov	r0, #4	@,
	ldr	r2, [r4, r1]	@ <variable>.rcn_address, <variable>.rcn_address
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, r2, #15	@ tmp615, <variable>.rcn_address,
	str	r3, [sp, #68]	@ tmp615, <variable>.rcn_address
	str	r3, [ip, #4]	@ tmp615,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #29]	@ zero_extendqisi2	@ <variable>.ColPicType, <variable>.ColPicType
	ldr	ip, [sp, #36]	@, %sfp
	mov	r3, r7	@ tmp618, D.35657
	ldrb	r2, [r4, #21]	@ zero_extendqisi2	@ <variable>.ColPicStruct, <variable>.ColPicStruct
	bfi	r3, r0, #0, #1	@ tmp618, <variable>.ColPicType,,
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #4	@,
	bfi	r3, r2, #24, #2	@ tmp622, <variable>.ColPicStruct,,
	str	r3, [sp, #68]	@ tmp622,
	str	r3, [ip, #4]	@ tmp622,
	movt	r1, #:upper16:.LC26	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [sp, #32]	@, %sfp
	ldr	r2, [r4, #64]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r7	@ tmp629, D.35657
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC27	@,
	bfi	r3, r2, #0, #24	@ tmp629, <variable>.StreamPhyAddr,,
	str	r3, [sp, #68]	@ tmp629,
	str	r3, [lr, #4]	@ tmp629,
	movt	r1, #:upper16:.LC27	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #80]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [sp, #28]	@, %sfp
	mov	r3, r7	@ tmp633, D.35657
	ldr	ip, [r4, #72]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r3, r1, #0, #24	@ tmp633, <variable>.StreamLength,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	bfi	r3, ip, #24, #7	@ tmp636, <variable>.StreamBitOffset,,
	str	r3, [sp, #68]	@ tmp636,
	str	r3, [r2, #4]	@ tmp636,
	movt	r1, #:upper16:.LC28	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [sp, #24]	@, %sfp
	ldr	ip, [r4, #68]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r7	@ tmp640, D.35657
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	bfi	r3, ip, #0, #24	@ tmp640, <variable>.StreamPhyAddr,,
	str	r3, [sp, #68]	@ tmp640,
	str	r3, [r2, #4]	@ tmp640,
	movt	r1, #:upper16:.LC29	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	ldrb	r1, [r4, #33]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_disable, <variable>.chroma_quant_param_disable
	mov	r3, r7	@ tmp644, D.35657
	ldrb	ip, [r4, #35]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_v, <variable>.chroma_quant_param_delta_v
	bfi	r3, r0, #0, #1	@ tmp644, <variable>.weighting_quant_flag,,
	ldrb	r2, [r4, #34]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_u, <variable>.chroma_quant_param_delta_u
	bfi	r3, r1, #1, #1	@ tmp648, <variable>.chroma_quant_param_disable,,
	ldrb	lr, [r4, #36]	@ zero_extendqisi2	@ <variable>.aec_enable, <variable>.aec_enable
	bfi	r3, ip, #2, #6	@ tmp652, <variable>.chroma_quant_param_delta_v,,
	bfi	r3, r2, #8, #6	@ tmp656, <variable>.chroma_quant_param_delta_u,,
	ldrb	ip, [r4, #37]	@ zero_extendqisi2	@ <variable>.p_filed_enhanced_flag, <variable>.p_filed_enhanced_flag
	bfi	r3, lr, #14, #1	@ tmp660, <variable>.aec_enable,,
	ldr	lr, [sp, #20]	@, %sfp
	ldrb	r2, [r4, #38]	@ zero_extendqisi2	@ <variable>.b_filed_enhanced_flag, <variable>.b_filed_enhanced_flag
	bfi	r3, ip, #15, #1	@ tmp664, <variable>.p_filed_enhanced_flag,,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	bfi	r3, r2, #16, #1	@ tmp668, <variable>.b_filed_enhanced_flag,,
	str	r3, [sp, #68]	@ tmp668,
	str	r3, [lr, #4]	@ tmp668,
	movt	r1, #:upper16:.LC30	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [sp, #12]	@, %sfp
	ldr	r3, [sl, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bic	ip, r3, #15	@ tmp682, <variable>.PmvTopAddr,
	str	ip, [sp, #68]	@ tmp682, <variable>.pmv_top_addr
	str	ip, [r2, #4]	@ tmp682,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #8]	@, %sfp
	ldr	r3, [sl, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bic	r2, r3, #15	@ tmp693, <variable>.RcnTopAddr,
	str	r2, [sp, #68]	@ tmp693, <variable>.topmb_intra_addr
	str	r2, [ip, #4]	@ tmp693,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	lr, [sp, #48]	@, %sfp
	movw	r1, #14448	@ tmp697,
	mov	r0, #4	@,
	ldr	ip, [r4, r1]	@ <variable>.ColPmvAddr, <variable>.ColPmvAddr
	add	r2, lr, #4	@ p32.886,,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bic	r3, ip, #15	@ tmp699, <variable>.ColPmvAddr,
	str	r3, [sp, #68]	@ tmp699, <variable>.colpic_mv_addr
	str	r3, [r2, #4]	@ tmp699,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	add	r0, r4, #14400	@ ivtmp.751, pAvsDecParam,
	add	r3, r0, #60	@ ivtmp.751, ivtmp.751,
	add	r2, r8, #68	@ ivtmp.754, pMsgBase,
	add	lr, r8, #196	@ D.36407, pMsgBase,
.L68:
	mov	r0, r3	@ tmp755, ivtmp.751
	mov	r1, r2	@ tmp756, ivtmp.754
	ldr	ip, [r0], #4	@ D32.466, <variable>.PmvConfigTab
	str	ip, [sp, #68]	@ D32.466, D32
	str	ip, [r1], #4	@ D32.466,
	ldr	ip, [r3, #4]	@ D32.466, <variable>.PmvConfigTab
	add	r3, r0, #4	@ ivtmp.751, tmp755,
	str	ip, [sp, #68]	@ D32.466, D32
	str	ip, [r2, #4]	@ D32.466,
	add	r2, r1, #4	@ ivtmp.754, tmp756,
	cmp	r2, lr	@ ivtmp.754, D.36407
	bne	.L68	@,
	movw	ip, #14444	@ tmp704,
	mov	r0, #4	@,
	ldr	r2, [r4, ip]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bic	lr, r2, #15	@ tmp706, <variable>.CurPmvAddr,
	str	lr, [sp, #68]	@ tmp706, <variable>.pmv_colmb_addr
	str	lr, [r8, #196]	@ tmp706,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	movw	r1, #1140	@ tmp713,
	mla	r6, r1, r5, r6	@ tmp714, tmp713, VdhId, tmp754
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	ldr	r3, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	bic	ip, r3, #15	@ tmp717, <variable>.DblkTopAddr,
	str	ip, [sp, #68]	@ tmp717, <variable>.dblk_top_addr
	str	ip, [r8, #200]	@ tmp717,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	bic	r3, r2, #15	@ tmp728, <variable>.SedTopAddr,
	str	r3, [sp, #68]	@ tmp728, <variable>.sed_top_addr
	str	r3, [r8, #228]	@ tmp728,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	add	r2, ip, #320	@ D32.470, <variable>.MsgSlotAddr,
	str	r2, [sp, #68]	@ D32.470, D32
	str	r2, [r8, #252]	@ D32.470,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [sp, #68]	@, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	cmp	r3, #1	@ <variable>.weighting_quant_flag,
	beq	.L77	@,
.L69:
	mov	r0, r4	@, pAvsDecParam
	mov	r2, r5	@, VdhId
	ldr	r1, [sp, #64]	@, stream_base_addr
	bl	AVSHAL_V200R004_WirteSlicMsg	@
	mov	r0, #0	@ D.35652,
	b	.L67	@
.L76:
	movw	r1, #:lower16:.LC4	@,
	mov	r2, #300	@,
	movt	r1, #:upper16:.LC4	@,
	movw	r3, #:lower16:.LC17	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.35652, tmp473
	b	.L67	@
.L77:
	add	r0, r4, #14528	@ ivtmp.738, pAvsDecParam,
	add	r1, r8, #320	@ D.36391, pMsgBase,
	add	r3, r0, #60	@ ivtmp.738, ivtmp.738,
	add	r8, r8, #256	@ p32, pMsgBase,
.L70:
	ldrb	r2, [r3, #8]	@ zero_extendqisi2	@ tmp743, <variable>.cur_wq_matrix
	ldrb	lr, [r3, #4]	@ zero_extendqisi2	@ tmp740, <variable>.cur_wq_matrix
	ldrb	r0, [r3, #12]	@ zero_extendqisi2	@ tmp750, <variable>.cur_wq_matrix
	mov	ip, r2, asl #16	@ tmp745, tmp743,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ tmp747, <variable>.cur_wq_matrix
	orr	ip, ip, lr, asl #8	@, tmp746, tmp745, tmp740,
	add	r3, r3, #16	@ ivtmp.738, ivtmp.738,
	orr	r2, ip, r2	@ tmp749, tmp746, tmp747
	orr	lr, r2, r0, asl #24	@, D32.471, tmp749, tmp750,
	str	lr, [sp, #68]	@ D32.471, D32
	str	lr, [r8], #4	@ D32.471,
	cmp	r8, r1	@ p32, D.36391
	bne	.L70	@,
	b	.L69	@
	.fnend
	.size	AVSHAL_V200R004_StartDec, .-AVSHAL_V200R004_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.35569, %object
	.size	__func__.35569, 36
__func__.35569:
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
