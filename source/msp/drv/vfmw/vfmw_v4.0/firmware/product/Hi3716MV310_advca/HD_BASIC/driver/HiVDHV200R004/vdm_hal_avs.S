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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_avs)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_avs.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.o
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
	.global	AVSHAL_V200R004_WirteSlicMsg
	.type	AVSHAL_V200R004_WirteSlicMsg, %function
AVSHAL_V200R004_WirteSlicMsg:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #60
	sub	sp, sp, #60	@,,
	movw	r4, #:lower16:g_HwMem	@ tmp225,
	movt	r4, #:upper16:g_HwMem	@ tmp225,
	str	r2, [sp, #12]	@ VdhId, %sfp
	movw	r5, #1140	@ tmp228,
	ldr	sl, [sp, #12]	@, %sfp
	str	r1, [sp, #36]	@ stream_base_addr, %sfp
	mla	lr, r5, sl, r4	@ tmp229, tmp228,, tmp225
	mov	r5, r0	@ pAvsDecParam, pAvsDecParam
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp231,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp231,
	ldr	r4, [lr, #44]	@ D.37044, <variable>.MsgSlotAddr
	add	r0, r4, #320	@, D.37044,
	str	r0, [sp, #52]	@, %sfp
	mov	r0, r4	@, D.37044
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #12]	@, %sfp
	movw	r2, #:lower16:g_VdmDrvParam	@ tmp232,
	movt	r2, #:upper16:g_VdmDrvParam	@ tmp232,
	add	r3, ip, ip, asl #2	@, tmp235,,,
	add	r6, r3, #1	@ tmp236, tmp235,
	ldr	r1, [r2, r6, asl #3]	@ <variable>.ChanId, <variable>.ChanId
	ldr	r2, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	ip, [sl, r1, asl #2]	@ D.37049, s_pstVfmwChan
	cmp	r2, #0	@ <variable>.slice_start_mbn,
	ldr	sl, [ip, #192]	@ <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.PhyAddr
	ldr	r3, [ip, #188]	@ <variable>.stChanMem_scd.VirAddr, <variable>.stChanMem_scd.VirAddr
	streq	r2, [sp, #48]	@ <variable>.slice_start_mbn, %sfp
	rsb	r1, sl, r3	@, <variable>.stChanMem_scd.PhyAddr, <variable>.stChanMem_scd.VirAddr
	str	r1, [sp, #32]	@, %sfp
	add	r6, r0, #320	@ pMsgBase.597, D.37047,
	beq	.L3	@,
	ldr	sl, [r5, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	mov	r1, #1	@,
	ldr	ip, [sp, #36]	@, %sfp
	mov	lr, #0	@ tmp247,
	add	r3, sl, #4	@ tmp241, <variable>.stream_phy_addr,
	str	r1, [sp, #48]	@, %sfp
	rsb	r1, ip, r3	@ D.37064,, tmp241
	add	r4, r4, #576	@ D32.603, D.37044,
	bic	r2, r1, #-16777216	@ D32.599, D.37064,
	bic	ip, r2, #15	@ D32.599, D32.599,
	mov	sl, r1, asl #28	@ D32, D.37064,
	str	sl, [r0, #320]	@ D32,
	str	ip, [r0, #324]	@ D32.599,
	str	lr, [r0, #328]	@ tmp247,
	str	lr, [r0, #332]	@ tmp247,
	ldr	r3, [r5, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r2, r3, #1	@ tmp249, <variable>.slice_start_mbn,
	mov	r1, r2, asl #16	@ D32.602, tmp249,
	str	r1, [r0, #336]	@ D32.602,
	str	r4, [r0, #572]	@ D32.603,
.L3:
	movw	sl, #14424	@ tmp253,
	ldr	r0, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L24	@,
	mov	r3, #0	@ k,
	movw	fp, #:lower16:s_RegPhyBaseAddr	@,
	movw	r7, #:lower16:s_RegPhyBaseAddr_1	@,
	movt	fp, #:upper16:s_RegPhyBaseAddr	@,
	movt	r7, #:upper16:s_RegPhyBaseAddr_1	@,
	str	fp, [sp, #40]	@, %sfp
	str	r7, [sp, #44]	@, %sfp
	mov	r4, r3	@ i, k
	mov	r7, r3	@ j, k
	movw	fp, #511	@ tmp453,
.L23:
	cmp	r7, fp	@ j, tmp453
	bgt	.L5	@,
	sub	lr, r4, #1	@ tmp265, i,
	mov	r8, r4, asl #3	@ tmp452, i,
	rsb	r2, r4, r8	@ tmp261, i, tmp452
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
	ldr	r3, [r2, #88]	@ temp.605, <variable>.stream_phy_addr
	ldr	lr, [sp, #32]	@, %sfp
	add	r1, lr, r3	@ D.37125,, temp.605
	ldr	r0, [r1, #3]	@ tmp288,
	bic	ip, r0, #-16777216	@ tmp287, tmp288,
	cmp	ip, #131072	@ tmp287,
	beq	.L39	@,
	ldr	r0, [sp, #36]	@, %sfp
	add	r1, r3, #4	@ tmp327, temp.605,
	rsb	r3, r0, r1	@ temp.624,, tmp327
	and	lr, r3, #15	@ tmp328, temp.624,
	bic	ip, r3, #15	@, temp.624,
	str	ip, [sp, #16]	@, %sfp
	mov	r9, lr, asl #3	@, tmp328,
	str	r9, [sp, #20]	@, %sfp
.L11:
	rsb	r2, r4, r8	@ tmp358, i, tmp452
	add	r3, r5, r2, asl #2	@, tmp360, pAvsDecParam, tmp358,
	ldr	lr, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	ldr	r2, [r3, #92]	@ D.37155, <variable>.stream_phy_addr
	sub	r1, lr, #4	@ tmp362, <variable>.stream_lenInByte,
	cmp	r2, #0	@ D.37155,
	mov	r0, r1, asl #3	@ bit_len_0, tmp362,
	beq	.L14	@,
	ldr	r3, [r3, #100]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r3, #0	@ <variable>.stream_lenInByte,
	ble	.L14	@,
	ldr	lr, [sp, #36]	@, %sfp
	cmp	r0, #0	@ bit_len_0,
	mov	ip, r3, asl #3	@ bit_len_1, <variable>.stream_lenInByte,
	rsb	r2, lr, r2	@ D.37160,, D.37155
	bicne	ip, ip, #-33554432	@ pretmp.611, bit_len_1,
	and	r1, r2, #15	@ tmp379, D.37160,
	bic	r3, r2, #15	@ bit_stream_addr_1, D.37160,
	bicne	r2, r3, #-16777216	@ prephitmp.574, bit_stream_addr_1,
	moveq	r0, ip	@ bit_len_0, bit_len_1
	mov	r9, r1, asl #3	@ bit_offset_1, tmp379,
	moveq	r2, #0	@ prephitmp.574,
	streq	r3, [sp, #16]	@ bit_stream_addr_1, %sfp
	orrne	r9, ip, r9, asl #25	@,, pretmp.611, bit_offset_1,
	streq	r9, [sp, #20]	@ bit_offset_1, %sfp
	streq	r2, [sp, #28]	@ prephitmp.574, %sfp
	strne	r9, [sp, #28]	@, %sfp
.L16:
	mov	ip, r4, asl #5	@ tmp394, i,
	mov	r9, r4, asl #8	@ D.37074, i,
	add	r1, ip, #1	@, tmp394,
	ldr	ip, [sp, #16]	@, %sfp
	add	lr, r9, #12	@, D.37074,
	mov	r3, r4, asl #6	@ tmp391, i,
	str	lr, [sp, #24]	@, %sfp
	bic	lr, ip, #-16777216	@ D32.631,,
	ldr	ip, [sp, #20]	@, %sfp
	add	r3, r3, #1	@ tmp392, tmp391,
	str	r1, [sp, #4]	@, %sfp
	bic	r1, r0, #-33554432	@ tmp390, bit_len_0,
	orr	r0, r1, ip, asl #25	@, D32.628, tmp390,,
	str	r0, [r6, r4, asl #8]	@ D32.628,* pMsgBase.597
	str	lr, [r6, r3, asl #2]	@ D32.631,* pMsgBase.597
	add	r3, r4, #1	@ k, i,
	ldr	ip, [sp, #4]	@, %sfp
	ldr	r1, [sp, #28]	@, %sfp
	str	r1, [r6, ip, asl #3]	@,* pMsgBase.597
	ldr	r0, [sp, #24]	@, %sfp
	str	r2, [r6, r0]	@ prephitmp.574,
	ldr	ip, [r5, sl]	@ temp.638, <variable>.SlcNum
	cmp	r3, ip	@ k, temp.638
	bge	.L40	@,
	rsb	r2, r4, r8	@ tmp409, i, tmp452
	rsb	lr, r3, r3, asl #3	@, tmp416, k, k,
	mov	r2, r2, asl #2	@ tmp410, tmp409,
	add	r0, r5, lr, asl #2	@, tmp418, pAvsDecParam, tmp416,
	add	r1, r2, r5	@ tmp411, tmp410, pAvsDecParam
	ldr	lr, [r0, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	ldr	r1, [r1, #104]	@ prephitmp.576, <variable>.slice_start_mbn
	cmp	lr, r1	@ <variable>.slice_start_mbn, prephitmp.576
	bhi	.L18	@,
	mvn	r0, r3	@ tmp462, k
	add	lr, r0, ip	@ tmp461, tmp462, temp.638
	tst	lr, #1	@ tmp461,
	add	r0, r2, #88	@ tmp425, tmp410,
	add	r2, r5, r0	@ ivtmp.595, pAvsDecParam, tmp425
	beq	.L36	@,
	ldr	r0, [r2, #72]	@ temp.639, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	add	r2, r2, #28	@ ivtmp.595, ivtmp.595,
	cmp	r1, r0	@ prephitmp.576, temp.639
	bcc	.L18	@,
.L36:
	mov	r8, r6	@ pMsgBase.597, pMsgBase.597
	b	.L19	@
.L20:
	ldr	r6, [r2, #72]	@ temp.639, <variable>.slice_start_mbn
	add	r2, r2, #56	@ ivtmp.595, ivtmp.595,
	cmp	r1, r6	@ prephitmp.576, temp.639
	bcc	.L37	@,
	ldr	r6, [r0, #72]	@ temp.639, <variable>.slice_start_mbn
	add	r3, r3, #1	@ k, k,
	cmp	r1, r6	@ prephitmp.576, temp.639
	bcc	.L37	@,
.L19:
	add	r3, r3, #1	@ k, k,
	add	r0, r2, #28	@ tmp464, ivtmp.595,
	cmp	ip, r3	@ temp.638, k
	bgt	.L20	@,
.L37:
	mov	r6, r8	@ pMsgBase.597, pMsgBase.597
.L18:
	cmp	ip, r3	@ temp.638, k
	beq	.L41	@,
	rsb	lr, r3, r3, asl #3	@, tmp432, k, k,
	ldr	r0, [sp, #48]	@, %sfp
	ldr	ip, [sp, #52]	@, %sfp
	add	r2, r3, r0	@ tmp437, k,
	add	r0, r5, lr, asl #2	@, tmp434, pAvsDecParam, tmp432,
	ldr	lr, [r0, #104]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	add	r2, ip, r2, asl #8	@, prephitmp.578,, tmp437,
	sub	r0, lr, #1	@ slice_end_mbn, <variable>.slice_start_mbn,
.L22:
	mov	lr, r4, asl #4	@ tmp444, i,
	add	r9, r9, #252	@ tmp447, D.37074,
	add	r4, lr, #1	@ tmp445, tmp444,
	add	r7, r7, #1	@ j, j,
	uxth	ip, r1	@ tmp442, prephitmp.576
	orr	r1, ip, r0, asl #16	@, D32.643, tmp442, slice_end_mbn,
	str	r1, [r6, r4, asl #4]	@ D32.643,* pMsgBase.597
	str	r2, [r6, r9]	@ prephitmp.578,
.L5:
	sub	r4, r3, #1	@ i, k,
.L6:
	ldr	r2, [r5, sl]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #1	@ i, i,
	cmp	r2, r4	@ <variable>.SlcNum, i
	bgt	.L23	@,
.L24:
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L14:
	mov	r2, #0	@ prephitmp.574,
	str	r2, [sp, #28]	@ prephitmp.574, %sfp
	b	.L16	@
.L41:
	ldrh	r0, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r2, #0	@ prephitmp.578,
	ldrh	ip, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	lr, ip, r0	@ tmp428, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r0, lr, #1	@ slice_end_mbn, tmp428,
	b	.L22	@
.L39:
	strb	r9, [r1, #2]	@ tmp279,
	ldr	ip, [sp, #32]	@, %sfp
	ldr	r1, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	r0, [sp, #12]	@, %sfp
	add	r3, ip, r1	@ tmp300,, <variable>.stream_phy_addr
	mov	r1, #64	@,
	cmp	r0, #0	@,
	strb	r1, [r3, #4]	@,
	ldr	lr, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	r0, ip, lr	@ tmp313,, <variable>.stream_phy_addr
	strb	r1, [r0, #5]	@,
	ldr	r3, [r2, #88]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	ldr	lr, [sp, #36]	@, %sfp
	add	r0, r3, #2	@ tmp324, <variable>.stream_phy_addr,
	rsb	ip, lr, r0	@ D.37139,, tmp324
	and	r2, ip, #15	@ tmp326, D.37139,
	bic	r1, ip, #15	@, D.37139,
	str	r1, [sp, #16]	@, %sfp
	mov	r3, r2, asl #3	@, tmp326,
	str	r3, [sp, #20]	@, %sfp
	bne	.L42	@,
	ldr	r9, [sp, #40]	@, %sfp
	mov	r1, #1	@,
	ldr	lr, [r9, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	movw	r9, #:lower16:s_RegPhyBaseAddr	@ tmp450,
	movt	r9, #:upper16:s_RegPhyBaseAddr	@ tmp450,
	add	r0, lr, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r0, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r3, r0, #1792	@, s_RegPhyBaseAddr,
	add	r0, r3, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L12:
	ldr	r3, [r9, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, r3, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L11	@
.L42:
	ldr	r2, [sp, #12]	@, %sfp
	cmp	r2, #1	@,
	beq	.L43	@,
	ldr	r3, [sp, #12]	@, %sfp
	cmp	r3, #0	@,
	movweq	r9, #:lower16:s_RegPhyBaseAddr	@ tmp450,
	movteq	r9, #:upper16:s_RegPhyBaseAddr	@ tmp450,
	beq	.L12	@,
	ldr	r9, [sp, #12]	@, %sfp
	cmp	r9, #1	@,
	movweq	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp451,
	movteq	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp451,
	bne	.L11	@,
	b	.L13	@
.L43:
	ldr	ip, [sp, #44]	@, %sfp
	movw	lr, #:lower16:s_RegPhyBaseAddr_1	@ tmp451,
	ldr	r1, [sp, #12]	@, %sfp
	movt	lr, #:upper16:s_RegPhyBaseAddr_1	@ tmp451,
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	str	lr, [sp, #8]	@,
	add	r0, r2, #2032	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	ldr	r1, [sp, #44]	@, %sfp
	ldr	r0, [r1, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	ldr	r1, [sp, #12]	@, %sfp
	add	r3, r0, #1792	@, s_RegPhyBaseAddr_1,
	add	r0, r3, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [sp, #44]	@, %sfp
	mov	r1, r9	@, tmp279
	ldr	ip, [r2, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, ip, #2032	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	ldr	r3, [sp, #8]	@,
.L13:
	ldr	r0, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	mov	r1, #0	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L11	@
.L40:
	rsb	r0, r4, r8	@ tmp402, i, tmp452
	add	r2, r5, r0, asl #2	@, tmp404, pAvsDecParam, tmp402,
	ldr	r1, [r2, #104]	@ prephitmp.576, <variable>.slice_start_mbn
	b	.L18	@
	.fnend
	.size	AVSHAL_V200R004_WirteSlicMsg, .-AVSHAL_V200R004_WirteSlicMsg
	.align	2
	.global	AVSHAL_V200R004_StartDec
	.type	AVSHAL_V200R004_StartDec, %function
AVSHAL_V200R004_StartDec:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrh	r3, [r0, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r5, r0	@ pAvsDecParam, pAvsDecParam
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	bhi	.L53	@,
	ldrh	r0, [r0, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r0, #512	@ <variable>.PicHeightInMb,
	bhi	.L53	@,
	cmp	r1, #1	@ VdhId,
	bls	.L80	@,
.L53:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36734,
.L46:
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L80:
	beq	.L53	@,
	movw	r6, #:lower16:g_HwMem	@ tmp927,
	movt	r6, #:upper16:g_HwMem	@ tmp927,
	ldr	r1, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L95	@,
.L51:
	movw	r2, #14424	@ tmp313,
	ldr	r0, [r5, r2]	@ D.36756, <variable>.SlcNum
	cmp	r0, #0	@ D.36756,
	ble	.L53	@,
	ldr	r3, [r5, #88]	@ temp.823, <variable>.stream_phy_addr
	sub	r4, r0, #1	@ tmp930, D.36756,
	and	r1, r4, #1	@ tmp932, tmp930,
	mvn	r4, #0	@ stream_base_addr,
	cmp	r3, #0	@ temp.823,
	beq	.L69	@,
	ldr	r2, [r5, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	r2, #0	@ <variable>.stream_lenInByte,
	ble	.L69	@,
	bic	r3, r3, #15	@ tmp945, temp.823,
	cmp	r4, r3	@ stream_base_addr, tmp945
	movcs	r4, r3	@ stream_base_addr, tmp945
.L69:
	ldr	r3, [r5, #92]	@ D.36750, <variable>.stream_phy_addr
	cmp	r3, #0	@ D.36750,
	bne	.L96	@,
.L71:
	mov	r2, #1	@ i,
	cmp	r2, r0	@ i, D.36756
	add	r3, r5, #28	@ ivtmp.721, pAvsDecParam,
	beq	.L68	@,
	cmp	r1, #0	@ tmp932,
	beq	.L54	@,
	ldr	r1, [r3, #88]	@ temp.823, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.823,
	bne	.L82	@,
.L76:
	ldr	r1, [r3, #92]	@ D.36750, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.36750,
	beq	.L78	@,
.L97:
	ldr	ip, [r3, #100]	@ tmp958, <variable>.stream_lenInByte
	cmp	ip, #0	@ tmp958,
	ble	.L78	@,
	bic	lr, r1, #15	@ tmp959, D.36750,
	cmp	r4, lr	@ stream_base_addr, tmp959
	movcs	r4, lr	@ stream_base_addr, tmp959
.L78:
	add	r2, r2, #1	@ i, tmp933,
	add	r3, r3, #28	@ ivtmp.721, tmp934,
	cmp	r2, r0	@ i, D.36756
	beq	.L68	@,
.L54:
	ldr	r1, [r3, #88]	@ temp.823, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.823,
	beq	.L57	@,
	ldr	ip, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	ip, #0	@ <variable>.stream_lenInByte,
	ble	.L57	@,
	bic	r1, r1, #15	@ tmp317, temp.823,
	cmp	r4, r1	@ stream_base_addr, tmp317
	movcs	r4, r1	@ stream_base_addr, tmp317
.L57:
	ldr	r1, [r3, #92]	@ D.36750, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.36750,
	beq	.L55	@,
	ldr	ip, [r3, #100]	@ tmp314, <variable>.stream_lenInByte
	cmp	ip, #0	@ tmp314,
	ble	.L55	@,
	bic	lr, r1, #15	@ tmp315, D.36750,
	cmp	r4, lr	@ stream_base_addr, tmp315
	movcs	r4, lr	@ stream_base_addr, tmp315
.L55:
	add	r3, r3, #28	@ tmp934, ivtmp.721,
	add	r2, r2, #1	@ tmp933, i,
	ldr	r1, [r3, #88]	@ temp.823, <variable>.stream_phy_addr
	cmp	r1, #0	@ temp.823,
	beq	.L76	@,
.L82:
	ldr	lr, [r3, #96]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	cmp	lr, #0	@ <variable>.stream_lenInByte,
	ble	.L76	@,
	bic	r1, r1, #15	@ tmp956, temp.823,
	cmp	r4, r1	@ stream_base_addr, tmp956
	movcs	r4, r1	@ stream_base_addr, tmp956
	ldr	r1, [r3, #92]	@ D.36750, <variable>.stream_phy_addr
	cmp	r1, #0	@ D.36750,
	bne	.L97	@,
	add	r2, r2, #1	@ i, tmp933,
	add	r3, r3, #28	@ ivtmp.721, tmp934,
	cmp	r2, r0	@ i, D.36756
	bne	.L54	@,
.L68:
	cmn	r4, #1	@ stream_base_addr,
	beq	.L53	@,
	ldrh	r2, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r7, #0	@ tmp318,
	ldrh	r8, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	fp, r7	@ tmp323, tmp318
	ldr	lr, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	sl, #14844	@ tmp338,
	movw	r9, #14868	@ tmp350,
	mul	r3, r8, r2	@ tmp321, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r0, r3, #1	@ tmp322, tmp321,
	bfi	fp, r0, #0, #20	@ tmp323, tmp322,,
	orr	r1, fp, #1090519040	@ tmp332, tmp323,
	orr	ip, r1, #4194304	@ tmp332, tmp332,
	bfi	ip, r7, #25, #1	@ tmp332, tmp318,,
	str	ip, [sp, #52]	@ tmp332,
	str	ip, [lr, #8]	@ tmp332,
	bl	vfmw_dprint_nothing	@
	ldr	r8, [r5, sl]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #805306374	@ tmp341,
	mov	r0, #1	@ tmp346,
	ldr	sl, [r5, r9]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r2, r8, lsr #6	@ tmp339, <variable>.VahbStride,
	ldr	r8, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bfi	r3, r2, #4, #10	@ tmp341, tmp339,,
	orr	fp, r3, #16384	@ tmp344, tmp341,
	bic	r1, fp, #32768	@ tmp345, tmp344,
	bfi	r1, r0, #16, #12	@ tmp345, tmp346,,
	bic	ip, r1, #805306368	@ tmp347, tmp345,
	orr	r9, ip, #536870912	@ tmp352, tmp347,
	bfi	r9, sl, #30, #1	@ tmp352, <variable>.Compress_en,,
	bfi	r9, r7, #31, #1	@ tmp353, tmp318,,
	str	r9, [sp, #52]	@ tmp353,
	str	r9, [r8, #12]	@ tmp353,
	movw	r8, #:lower16:s_RegPhyBaseAddr	@ tmp378,
	bl	vfmw_dprint_nothing	@
	ldr	fp, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movt	r8, #:upper16:s_RegPhyBaseAddr	@ tmp378,
	bic	r3, r2, #15	@ tmp360, <variable>.MsgSlotAddr,
	str	r3, [sp, #52]	@ tmp360, <variable>.av_msg_addr
	str	r3, [fp, #16]	@ tmp360,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r6, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r1, r0, #15	@ tmp367, <variable>.MsgSlotAddr,
	str	r1, [sp, #52]	@ tmp367, <variable>.va_msg_addr
	str	r1, [ip, #20]	@ tmp367,
	bl	vfmw_dprint_nothing	@
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [sp, #52]	@ stream_base_addr, <variable>.stream_base_addr
	str	r4, [sl, #24]	@ stream_base_addr,
	movw	sl, #14844	@ tmp408,
	bl	vfmw_dprint_nothing	@
	ldrh	r9, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	cmp	r9, #120	@ <variable>.PicWidthInMb,
	strhi	r7, [sp, #52]	@ tmp318, D32
	mov	r7, #0	@ tmp399,
	movls	r9, #65536	@ tmp376,
	strls	r9, [sp, #52]	@ tmp376, D32
	bl	MEM_ReadPhyWord	@
	ldr	fp, [r8, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r2, [sp, #52]	@ D32, D32
	mvn	r9, #0	@ tmp439,
	movw	r8, #:lower16:g_HwMem	@ tmp384,
	movt	r8, #:upper16:g_HwMem	@ tmp384,
	orr	r1, r0, r2	@ tmp381,, D32
	add	r0, fp, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r3, #:lower16:3148803	@ tmp383,
	movt	r3, #:upper16:3148803	@ tmp383,
	str	r3, [sp, #52]	@ tmp383, D32
	str	r3, [r0, #60]	@ tmp383,
	ldr	ip, [sp, #52]	@ D32.747, D32
	ldr	r1, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #64]	@ D32.747,
	ldr	fp, [sp, #52]	@ D32.750, D32
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	fp, [r2, #68]	@ D32.750,
	ldr	r0, [sp, #52]	@ D32.753, D32
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r3, #72]	@ D32.753,
	ldr	ip, [sp, #52]	@ D32.756, D32
	ldr	r1, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #76]	@ D32.756,
	movw	r1, #14440	@ tmp401,
	ldr	fp, [sp, #52]	@ D32.759, D32
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	fp, [r2, #80]	@ D32.759,
	ldr	r0, [sp, #52]	@ D32.762, D32
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r3, #84]	@ D32.762,
	ldr	fp, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, r1]	@ <variable>.CurPicAddr, <variable>.CurPicAddr
	bic	r2, ip, #15	@ tmp403, <variable>.CurPicAddr,
	str	r2, [sp, #52]	@ tmp403, <variable>.ystaddr_1d
	str	r2, [fp, #96]	@ tmp403,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, sl]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r0, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldrh	fp, [r5, #50]	@ height_in_mb, <variable>.PicHeightInMb
	str	r3, [sp, #52]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r3, [r0, #100]	@ <variable>.VahbStride,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, sl]	@ <variable>.VahbStride, <variable>.VahbStride
	add	ip, fp, #1	@ tmp417, height_in_mb,
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r1, asl #1	@ tmp415, <variable>.VahbStride,
	mov	r2, ip, lsr #1	@ tmp418, tmp417,
	mul	r3, r2, r0	@ tmp419, tmp418, tmp415
	str	r3, [sp, #52]	@ tmp419, <variable>.uvoffset_1d
	str	r3, [sl, #104]	@ tmp419,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r1, #108]	@ tmp399,
	ldr	ip, [r6, #1120]	@ D32.513, <variable>.DnrMbInfoAddr
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [sp, #52]	@ D32.513, D32
	str	ip, [r2, #144]	@ D32.513,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #52]	@ tmp399, D32
	str	r7, [r0, #148]	@ tmp399,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #52]	@ tmp399, D32
	str	r7, [r3, #152]	@ tmp399,
	bl	vfmw_dprint_nothing	@
	ldr	sl, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r9, [sl, #32]	@ tmp439,
	ldr	r0, [r6, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L98	@,
	ldrh	fp, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r9, sl	@ p32.789, pMsgBase
	ldrh	ip, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	ldr	lr, [sp, #52]	@ tmp445,
	sub	r2, fp, #1	@ tmp444, <variable>.PicWidthInMb,
	ldrb	r1, [r5, #31]	@ zero_extendqisi2	@ <variable>.ChromaFormat, <variable>.ChromaFormat
	sub	r0, ip, #1	@ tmp448, <variable>.PicHeightInMb,
	bfi	lr, r2, #0, #9	@ tmp445, tmp444,,
	ldrb	r3, [r5, #30]	@ zero_extendqisi2	@ <variable>.SamplePrecision, <variable>.SamplePrecision
	bfi	lr, r0, #16, #9	@ tmp449, tmp448,,
	bfi	lr, r1, #25, #2	@ tmp450, <variable>.ChromaFormat,,
	bfi	lr, r3, #27, #2	@ tmp454, <variable>.SamplePrecision,,
	bic	fp, lr, #65024	@ tmp459, tmp454,
	bfi	fp, r7, #29, #3	@ tmp459, tmp399,,
	str	fp, [sp, #52]	@ tmp459,
	str	fp, [r9], #4	@ tmp459,
	add	r2, r9, #4	@, p32.789,
	str	r2, [sp, #40]	@, %sfp
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ <variable>.ProgrsvFrame, <variable>.ProgrsvFrame
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	ldr	ip, [sp, #40]	@, %sfp
	and	r1, r1, #1	@ tmp465, <variable>.ProgrsvFrame,
	ldrb	r0, [r5, #7]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	bfi	r1, r3, #1, #2	@ tmp465, <variable>.PicStruct,,
	ldrb	lr, [r5, #15]	@ zero_extendqisi2	@ <variable>.TopFieldFirst, <variable>.TopFieldFirst
	add	r2, ip, #4	@ p32.795,,
	add	r3, r2, #4	@ p32.798, p32.795,
	bfi	r1, r0, #3, #2	@ tmp469, <variable>.PicCodingType,,
	ldrb	ip, [r5, #14]	@ zero_extendqisi2	@ <variable>.RepeatFirstField, <variable>.RepeatFirstField
	add	fp, r3, #4	@, p32.798,
	ldrb	r0, [r5, #13]	@ zero_extendqisi2	@ <variable>.FixQPFlag, <variable>.FixQPFlag
	bfi	r1, lr, #5, #1	@ tmp473, <variable>.TopFieldFirst,,
	str	fp, [sp, #36]	@, %sfp
	bfi	r1, ip, #6, #1	@ tmp477, <variable>.RepeatFirstField,,
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@, <variable>.PicQuant
	add	fp, fp, #4	@ p32.804,,
	bfi	r1, r0, #7, #1	@ tmp481, <variable>.FixQPFlag,,
	str	lr, [sp, #12]	@, %sfp
	add	lr, fp, #4	@, p32.804,
	ldrb	ip, [r5, #11]	@ zero_extendqisi2	@ <variable>.SkipModeFlag, <variable>.SkipModeFlag
	str	lr, [sp, #32]	@, %sfp
	add	lr, lr, #4	@,,
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@, <variable>.AdvPredModeDisable
	str	lr, [sp, #28]	@, %sfp
	add	lr, lr, #4	@,,
	str	r0, [sp, #8]	@, %sfp
	ldr	r0, [sp, #12]	@, %sfp
	bfi	r1, r0, #8, #6	@ tmp485,,,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.PicRefFlag, <variable>.PicRefFlag
	bfi	r1, ip, #14, #1	@ tmp489, <variable>.SkipModeFlag,,
	str	lr, [sp, #24]	@, %sfp
	add	lr, lr, #4	@,,
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.NoFwdRefFlag, <variable>.NoFwdRefFlag
	str	lr, [sp, #20]	@, %sfp
	ldr	lr, [sp, #8]	@, %sfp
	bfi	r1, lr, #15, #1	@ tmp493,,,
	ldr	lr, [sp, #20]	@, %sfp
	bfi	r1, r0, #16, #1	@ tmp497, <variable>.PicRefFlag,,
	add	lr, lr, #4	@,,
	bfi	r1, ip, #17, #1	@ tmp501, <variable>.NoFwdRefFlag,,
	add	r0, lr, #4	@,,
	str	lr, [sp, #16]	@, %sfp
	add	lr, r0, #4	@,,
	bfi	r1, r7, #18, #14	@ tmp505, tmp399,,
	str	lr, [sp, #8]	@, %sfp
	str	r0, [sp, #12]	@, %sfp
	add	r0, lr, #4	@,,
	str	r1, [sp, #52]	@ tmp505,
	str	r0, [sp, #44]	@, %sfp
	str	r1, [sl, #4]	@ tmp505,
	str	r2, [sp, #4]	@,
	str	r3, [sp, #0]	@,
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r5, #20]	@ zero_extendqisi2	@ <variable>.LoopFiltDisable, <variable>.LoopFiltDisable
	ldrb	r2, [r5, #19]	@ zero_extendqisi2	@ <variable>.LoopFiltParamFlag, <variable>.LoopFiltParamFlag
	ldrb	ip, [r5, #18]	@ zero_extendqisi2	@ <variable>.AlphaOffset, <variable>.AlphaOffset
	and	r3, r1, #1	@ tmp511, <variable>.LoopFiltDisable,
	ldrb	r0, [r5, #17]	@ zero_extendqisi2	@ <variable>.BetaOffset, <variable>.BetaOffset
	bfi	r3, r2, #1, #1	@ tmp511, <variable>.LoopFiltParamFlag,,
	bfi	r3, ip, #2, #5	@ tmp515, <variable>.AlphaOffset,,
	bfi	r3, r0, #7, #5	@ tmp519, <variable>.BetaOffset,,
	str	r3, [sp, #52]	@ tmp519,
	str	r3, [r9, #4]	@ tmp519,
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r5, #25]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst0, <variable>.FwdTopFieldFirst0
	ldrb	r2, [r5, #26]	@ zero_extendqisi2	@ <variable>.FwdPicStruct0, <variable>.FwdPicStruct0
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.FwdTopFieldFirst1, <variable>.FwdTopFieldFirst1
	and	r3, r1, #1	@ tmp528, <variable>.FwdTopFieldFirst0,
	ldrb	ip, [r5, #28]	@ zero_extendqisi2	@ <variable>.FwdPicStruct1, <variable>.FwdPicStruct1
	bfi	r3, r2, #1, #2	@ tmp528, <variable>.FwdPicStruct0,,
	bfi	r3, r0, #3, #1	@ tmp532, <variable>.FwdTopFieldFirst1,,
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.BwdTopFieldFirst, <variable>.BwdTopFieldFirst
	ldr	lr, [sp, #40]	@, %sfp
	bfi	r3, ip, #4, #2	@ tmp536, <variable>.FwdPicStruct1,,
	ldrb	r0, [r5, #24]	@ zero_extendqisi2	@ <variable>.BwdPicStruct, <variable>.BwdPicStruct
	bfi	r3, r2, #6, #1	@ tmp540, <variable>.BwdTopFieldFirst,,
	bfi	r3, r0, #7, #2	@ tmp544, <variable>.BwdPicStruct,,
	bfi	r3, r7, #9, #23	@ tmp548, tmp399,,
	str	r3, [sp, #52]	@ tmp548,
	str	r3, [lr, #4]	@ tmp548,
	bl	vfmw_dprint_nothing	@
	movw	ip, #14428	@ tmp551,
	ldr	r2, [sp, #4]	@,
	ldr	r1, [r5, ip]	@ <variable>.BwdRefPicAddr, <variable>.BwdRefPicAddr
	bic	r0, r1, #15	@ tmp553, <variable>.BwdRefPicAddr,
	str	r0, [sp, #52]	@ tmp553, <variable>.bwd_address
	str	r0, [r2, #4]	@ tmp553,
	bl	vfmw_dprint_nothing	@
	movw	r3, #14432	@ tmp556,
	ldr	r1, [sp, #0]	@,
	ldr	ip, [r5, r3]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	bic	r2, ip, #15	@ tmp558, <variable>.FwdRefPic0Addr,
	str	r2, [sp, #52]	@ tmp558, <variable>.fwd_address_0
	str	r2, [r1, #4]	@ tmp558,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #36]	@, %sfp
	movw	r0, #14436	@ tmp561,
	ldr	r3, [r5, r0]	@ <variable>.FwdRefPic1Addr, <variable>.FwdRefPic1Addr
	bic	ip, r3, #15	@ tmp563, <variable>.FwdRefPic1Addr,
	str	ip, [sp, #52]	@ tmp563, <variable>.fwd_address_1
	str	ip, [r1, #4]	@ tmp563,
	bl	vfmw_dprint_nothing	@
	movw	r2, #14452	@ tmp566,
	ldr	r0, [r5, r2]	@ <variable>.rcn_address, <variable>.rcn_address
	bic	r3, r0, #15	@ tmp568, <variable>.rcn_address,
	str	r3, [sp, #52]	@ tmp568, <variable>.rcn_address
	str	r3, [fp, #4]	@ tmp568,
	bl	vfmw_dprint_nothing	@
	ldrb	ip, [r5, #29]	@ zero_extendqisi2	@ <variable>.ColPicType, <variable>.ColPicType
	ldr	r2, [sp, #32]	@, %sfp
	ldrb	r1, [r5, #21]	@ zero_extendqisi2	@ <variable>.ColPicStruct, <variable>.ColPicStruct
	and	fp, ip, #1	@ tmp574, <variable>.ColPicType,
	bfi	fp, r1, #24, #2	@ tmp574, <variable>.ColPicStruct,,
	str	fp, [sp, #52]	@ tmp574,
	str	fp, [r2, #4]	@ tmp574,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r0, [r5, #64]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, r7	@ tmp580, tmp399
	bfi	r3, r0, #0, #24	@ tmp580, <variable>.StreamPhyAddr,,
	str	r3, [sp, #52]	@ tmp580,
	str	r3, [ip, #4]	@ tmp580,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #80]	@ <variable>.StreamLength, <variable>.StreamLength
	ldr	r2, [sp, #24]	@, %sfp
	ldr	fp, [r5, #72]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bic	r0, r1, #-16777216	@ tmp586, <variable>.StreamLength,
	bfi	r0, fp, #24, #7	@ tmp586, <variable>.StreamBitOffset,,
	str	r0, [sp, #52]	@ tmp586,
	str	r0, [r2, #4]	@ tmp586,
	bl	vfmw_dprint_nothing	@
	ldr	lr, [sp, #20]	@, %sfp
	ldr	ip, [r5, #68]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	bfi	r7, ip, #0, #24	@ tmp589, <variable>.StreamPhyAddr,,
	str	r7, [sp, #52]	@ tmp589,
	str	r7, [lr, #4]	@ tmp589,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	ldrb	r1, [r5, #33]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_disable, <variable>.chroma_quant_param_disable
	ldrb	fp, [r5, #35]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_v, <variable>.chroma_quant_param_delta_v
	and	ip, r3, #1	@ tmp596, <variable>.weighting_quant_flag,
	ldrb	r2, [r5, #34]	@ zero_extendqisi2	@ <variable>.chroma_quant_param_delta_u, <variable>.chroma_quant_param_delta_u
	bfi	ip, r1, #1, #1	@ tmp596, <variable>.chroma_quant_param_disable,,
	ldrb	r0, [r5, #36]	@ zero_extendqisi2	@ <variable>.aec_enable, <variable>.aec_enable
	bfi	ip, fp, #2, #6	@ tmp600, <variable>.chroma_quant_param_delta_v,,
	ldrb	r1, [r5, #37]	@ zero_extendqisi2	@ <variable>.p_filed_enhanced_flag, <variable>.p_filed_enhanced_flag
	bfi	ip, r2, #8, #6	@ tmp604, <variable>.chroma_quant_param_delta_u,,
	ldr	r2, [sp, #16]	@, %sfp
	bfi	ip, r0, #14, #1	@ tmp608, <variable>.aec_enable,,
	ldrb	fp, [r5, #38]	@ zero_extendqisi2	@ <variable>.b_filed_enhanced_flag, <variable>.b_filed_enhanced_flag
	bfi	ip, r1, #15, #1	@ tmp612, <variable>.p_filed_enhanced_flag,,
	bfi	ip, fp, #16, #1	@ tmp616, <variable>.b_filed_enhanced_flag,,
	str	ip, [sp, #52]	@ tmp616,
	str	ip, [r2, #4]	@ tmp616,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #12]	@, %sfp
	ldr	fp, [r8, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r3, fp, #15	@ tmp624, <variable>.PmvTopAddr,
	str	r3, [sp, #52]	@ tmp624, <variable>.pmv_top_addr
	str	r3, [r0, #4]	@ tmp624,
	movw	fp, #14448	@ tmp632,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #8]	@, %sfp
	ldr	r1, [r8, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	ip, r1, #15	@ tmp629, <variable>.RcnTopAddr,
	str	ip, [sp, #52]	@ tmp629, <variable>.topmb_intra_addr
	str	ip, [r2, #4]	@ tmp629,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, fp]	@ <variable>.ColPmvAddr, <variable>.ColPmvAddr
	ldr	fp, [sp, #44]	@, %sfp
	bic	r0, r3, #15	@ tmp634, <variable>.ColPmvAddr,
	str	r0, [sp, #52]	@ tmp634, <variable>.colpic_mv_addr
	add	r1, fp, #4	@ p32.834,,
	str	r0, [r1, #4]	@ tmp634,
	bl	vfmw_dprint_nothing	@
	add	ip, r5, #14400	@ ivtmp.712, pAvsDecParam,
	add	r0, ip, #60	@ ivtmp.712, ivtmp.712,
	add	r3, sl, #68	@ ivtmp.715, pMsgBase,
	add	lr, sl, #196	@ D.37375, pMsgBase,
.L63:
	mov	r1, r0	@ tmp928, ivtmp.712
	mov	r2, r3	@ tmp929, ivtmp.715
	ldr	ip, [r1], #4	@ D32.532, <variable>.PmvConfigTab
	str	ip, [sp, #52]	@ D32.532, D32
	str	ip, [r2], #4	@ D32.532,
	ldr	ip, [r0, #4]	@ D32.532, <variable>.PmvConfigTab
	add	r0, r1, #4	@ ivtmp.712, tmp928,
	str	ip, [sp, #52]	@ D32.532, D32
	str	ip, [r3, #4]	@ D32.532,
	add	r3, r2, #4	@ ivtmp.715, tmp929,
	cmp	r3, lr	@ ivtmp.715, D.37375
	bne	.L63	@,
	movw	r1, #14444	@ tmp638,
	ldr	r2, [r5, r1]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	bic	lr, r2, #15	@ tmp640, <variable>.CurPmvAddr,
	str	lr, [sp, #52]	@ tmp640, <variable>.pmv_colmb_addr
	str	lr, [sl, #196]	@ tmp640,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	bic	r3, r0, #15	@ tmp645, <variable>.DblkTopAddr,
	str	r3, [sp, #52]	@ tmp645, <variable>.dblk_top_addr
	str	r3, [sl, #200]	@ tmp645,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	r1, ip, #15	@ tmp650, <variable>.SedTopAddr,
	str	r1, [sp, #52]	@ tmp650, <variable>.sed_top_addr
	str	r1, [sl, #228]	@ tmp650,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r0, r2, #320	@ D32.536, <variable>.MsgSlotAddr,
	str	r0, [sp, #52]	@ D32.536, D32
	str	r0, [sl, #252]	@ D32.536,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5, #32]	@ zero_extendqisi2	@ <variable>.weighting_quant_flag, <variable>.weighting_quant_flag
	cmp	r3, #1	@ <variable>.weighting_quant_flag,
	beq	.L99	@,
.L64:
	mov	r0, r5	@, pAvsDecParam
	mov	r1, r4	@, stream_base_addr
	mov	r2, #0	@,
	bl	AVSHAL_V200R004_WirteSlicMsg	@
	mov	r0, #0	@ D.36734,
	b	.L46	@
.L96:
	ldr	lr, [r5, #100]	@ tmp947, <variable>.stream_lenInByte
	cmp	lr, #0	@ tmp947,
	ble	.L71	@,
	bic	ip, r3, #15	@ tmp948, D.36750,
	cmp	r4, ip	@ stream_base_addr, tmp948
	movcs	r4, ip	@ stream_base_addr, tmp948
	b	.L71	@
.L99:
	movw	ip, #14600	@ tmp658,
	mov	lr, #14592	@ tmp654,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp659, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp663, tmp663,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp655, <variable>.cur_wq_matrix
	movw	r2, #14596	@ tmp667,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp664, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp668, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp661, tmp659,
	orr	r1, ip, r0, asl #8	@, tmp662, tmp661, tmp655,
	movw	ip, #14616	@ tmp675,
	orr	r3, r1, lr	@ tmp666, tmp662, tmp664
	sub	lr, ip, #8	@ tmp671, tmp671,
	orr	r0, r3, r2, asl #16	@, D32.868, tmp666, tmp668,
	str	r0, [sl, #256]	@ D32.868,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp676, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp680, tmp680,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp672, <variable>.cur_wq_matrix
	movw	r2, #14612	@ tmp684,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp681, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp685, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp678, tmp676,
	orr	r1, ip, r0, asl #8	@, tmp679, tmp678, tmp672,
	movw	ip, #14632	@ tmp692,
	orr	r3, r1, lr	@ tmp683, tmp679, tmp681
	sub	lr, ip, #8	@ tmp688, tmp688,
	orr	r0, r3, r2, asl #16	@, D32.885, tmp683, tmp685,
	str	r0, [sl, #260]	@ D32.885,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp693, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp697, tmp697,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp689, <variable>.cur_wq_matrix
	movw	r2, #14628	@ tmp701,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp698, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp702, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp695, tmp693,
	orr	r1, ip, r0, asl #8	@, tmp696, tmp695, tmp689,
	movw	ip, #14648	@ tmp709,
	orr	r3, r1, lr	@ tmp700, tmp696, tmp698
	sub	lr, ip, #8	@ tmp705, tmp705,
	orr	r0, r3, r2, asl #16	@, D32.902, tmp700, tmp702,
	str	r0, [sl, #264]	@ D32.902,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp710, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp714, tmp714,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp706, <variable>.cur_wq_matrix
	movw	r2, #14644	@ tmp718,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp715, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp719, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp712, tmp710,
	orr	r1, ip, r0, asl #8	@, tmp713, tmp712, tmp706,
	movw	ip, #14664	@ tmp726,
	orr	r3, r1, lr	@ tmp717, tmp713, tmp715
	mov	lr, #14656	@ tmp722,
	orr	r0, r3, r2, asl #16	@, D32.919, tmp717, tmp719,
	str	r0, [sl, #268]	@ D32.919,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp727, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp731, tmp731,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp723, <variable>.cur_wq_matrix
	movw	r2, #14660	@ tmp735,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp732, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp736, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp729, tmp727,
	orr	r1, ip, r0, asl #8	@, tmp730, tmp729, tmp723,
	movw	ip, #14680	@ tmp743,
	orr	r3, r1, lr	@ tmp734, tmp730, tmp732
	sub	lr, ip, #8	@ tmp739, tmp739,
	orr	r0, r3, r2, asl #16	@, D32.936, tmp734, tmp736,
	str	r0, [sl, #272]	@ D32.936,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp744, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp748, tmp748,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp740, <variable>.cur_wq_matrix
	movw	r2, #14676	@ tmp752,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp749, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp753, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp746, tmp744,
	orr	r1, ip, r0, asl #8	@, tmp747, tmp746, tmp740,
	movw	ip, #14696	@ tmp760,
	orr	r3, r1, lr	@ tmp751, tmp747, tmp749
	sub	lr, ip, #8	@ tmp756, tmp756,
	orr	r0, r3, r2, asl #16	@, D32.953, tmp751, tmp753,
	str	r0, [sl, #276]	@ D32.953,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp761, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp765, tmp765,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp757, <variable>.cur_wq_matrix
	movw	r2, #14692	@ tmp769,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp766, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp770, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp763, tmp761,
	orr	r1, ip, r0, asl #8	@, tmp764, tmp763, tmp757,
	movw	ip, #14712	@ tmp777,
	orr	r3, r1, lr	@ tmp768, tmp764, tmp766
	sub	lr, ip, #8	@ tmp773, tmp773,
	orr	r0, r3, r2, asl #16	@, D32.970, tmp768, tmp770,
	str	r0, [sl, #280]	@ D32.970,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp778, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp782, tmp782,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp774, <variable>.cur_wq_matrix
	movw	r2, #14708	@ tmp786,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp783, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp787, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp780, tmp778,
	orr	r1, ip, r0, asl #8	@, tmp781, tmp780, tmp774,
	movw	ip, #14728	@ tmp794,
	orr	r3, r1, lr	@ tmp785, tmp781, tmp783
	mov	lr, #14720	@ tmp790,
	orr	r0, r3, r2, asl #16	@, D32.987, tmp785, tmp787,
	str	r0, [sl, #284]	@ D32.987,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp795, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp799, tmp799,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp791, <variable>.cur_wq_matrix
	movw	r2, #14724	@ tmp803,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp800, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp804, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp797, tmp795,
	orr	r1, ip, r0, asl #8	@, tmp798, tmp797, tmp791,
	movw	ip, #14744	@ tmp811,
	orr	r3, r1, lr	@ tmp802, tmp798, tmp800
	sub	lr, ip, #8	@ tmp807, tmp807,
	orr	r0, r3, r2, asl #16	@, D32.1004, tmp802, tmp804,
	str	r0, [sl, #288]	@ D32.1004,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp812, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp816, tmp816,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp808, <variable>.cur_wq_matrix
	movw	r2, #14740	@ tmp820,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp817, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp821, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp814, tmp812,
	orr	r1, ip, r0, asl #8	@, tmp815, tmp814, tmp808,
	movw	ip, #14760	@ tmp828,
	orr	r3, r1, lr	@ tmp819, tmp815, tmp817
	sub	lr, ip, #8	@ tmp824, tmp824,
	orr	r0, r3, r2, asl #16	@, D32.1021, tmp819, tmp821,
	str	r0, [sl, #292]	@ D32.1021,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp829, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp833, tmp833,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp825, <variable>.cur_wq_matrix
	movw	r2, #14756	@ tmp837,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp834, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp838, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp831, tmp829,
	orr	r1, ip, r0, asl #8	@, tmp832, tmp831, tmp825,
	movw	ip, #14776	@ tmp845,
	orr	r3, r1, lr	@ tmp836, tmp832, tmp834
	sub	lr, ip, #8	@ tmp841, tmp841,
	orr	r0, r3, r2, asl #16	@, D32.1038, tmp836, tmp838,
	str	r0, [sl, #296]	@ D32.1038,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp846, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp850, tmp850,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp842, <variable>.cur_wq_matrix
	movw	r2, #14772	@ tmp854,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp851, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp855, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp848, tmp846,
	orr	r1, ip, r0, asl #8	@, tmp849, tmp848, tmp842,
	movw	ip, #14792	@ tmp862,
	orr	r3, r1, lr	@ tmp853, tmp849, tmp851
	mov	lr, #14784	@ tmp858,
	orr	r0, r3, r2, asl #16	@, D32.1055, tmp853, tmp855,
	str	r0, [sl, #300]	@ D32.1055,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp863, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp867, tmp867,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp859, <variable>.cur_wq_matrix
	movw	r2, #14788	@ tmp871,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp868, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp872, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp865, tmp863,
	orr	r1, ip, r0, asl #8	@, tmp866, tmp865, tmp859,
	movw	ip, #14808	@ tmp879,
	orr	r3, r1, lr	@ tmp870, tmp866, tmp868
	sub	lr, ip, #8	@ tmp875, tmp875,
	orr	r0, r3, r2, asl #16	@, D32.1072, tmp870, tmp872,
	str	r0, [sl, #304]	@ D32.1072,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp880, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp884, tmp884,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp876, <variable>.cur_wq_matrix
	movw	r2, #14804	@ tmp888,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp885, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp889, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp882, tmp880,
	orr	r1, ip, r0, asl #8	@, tmp883, tmp882, tmp876,
	movw	ip, #14824	@ tmp896,
	orr	r3, r1, lr	@ tmp887, tmp883, tmp885
	sub	lr, ip, #8	@ tmp892, tmp892,
	orr	r0, r3, r2, asl #16	@, D32.1090, tmp887, tmp889,
	str	r0, [sl, #308]	@ D32.1090,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp897, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp901, tmp901,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp893, <variable>.cur_wq_matrix
	movw	r2, #14820	@ tmp905,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp902, <variable>.cur_wq_matrix
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ tmp906, <variable>.cur_wq_matrix
	mov	ip, r1, asl #24	@ tmp899, tmp897,
	orr	r1, ip, r0, asl #8	@, tmp900, tmp899, tmp893,
	movw	ip, #14840	@ tmp913,
	orr	r3, r1, lr	@ tmp904, tmp900, tmp902
	sub	lr, ip, #8	@ tmp909, tmp909,
	orr	r0, r3, r2, asl #16	@, D32.1107, tmp904, tmp906,
	str	r0, [sl, #312]	@ D32.1107,
	ldrb	r1, [r5, ip]	@ zero_extendqisi2	@ tmp914, <variable>.cur_wq_matrix
	sub	r3, lr, #4	@ tmp918, tmp918,
	ldrb	r0, [r5, lr]	@ zero_extendqisi2	@ tmp910, <variable>.cur_wq_matrix
	movw	r2, #14836	@ tmp922,
	ldrb	ip, [r5, r3]	@ zero_extendqisi2	@ tmp919, <variable>.cur_wq_matrix
	ldrb	lr, [r5, r2]	@ zero_extendqisi2	@ tmp923, <variable>.cur_wq_matrix
	mov	r1, r1, asl #24	@ tmp916, tmp914,
	orr	r1, r1, r0, asl #8	@, tmp917, tmp916, tmp910,
	orr	r3, r1, ip	@ tmp921, tmp917, tmp919
	orr	ip, r3, lr, asl #16	@, D32.537, tmp921, tmp923,
	str	ip, [sp, #52]	@ D32.537, D32
	str	ip, [sl, #316]	@ D32.537,
	b	.L64	@
.L95:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36744
	beq	.L53	@,
	str	r0, [r6, #0]	@ D.36744, <variable>.pVdmRegVirAddr
	b	.L51	@
.L98:
	bl	vfmw_dprint_nothing	@
	mov	r0, r9	@ D.36734, tmp439
	b	.L46	@
	.fnend
	.size	AVSHAL_V200R004_StartDec, .-AVSHAL_V200R004_StartDec
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
