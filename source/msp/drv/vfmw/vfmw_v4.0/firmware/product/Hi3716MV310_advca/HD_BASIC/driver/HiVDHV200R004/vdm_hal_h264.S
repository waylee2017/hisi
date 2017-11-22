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
	.file	"vdm_hal_h264.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_h264)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_h264.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.o
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
	.global	Get_V200R004_VirAddr
	.type	Get_V200R004_VirAddr, %function
Get_V200R004_VirAddr:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r1, r0, asl #2	@,, pbase_vir_addr, Dn,
	bx	lr	@
	.fnend
	.size	Get_V200R004_VirAddr, .-Get_V200R004_VirAddr
	.align	2
	.global	Write_V200R004_Qmatrix
	.type	Write_V200R004_Qmatrix, %function
Write_V200R004_Qmatrix:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ size
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	beq	.L6	@,
	ldr	ip, [r0, #0]	@ tmp168,* qmatrix
	cmp	r1, #1	@ size,
	sub	r2, r1, #1	@ tmp169, size,
	mov	r4, #1	@ i,
	and	r5, r2, r4	@ tmp171, tmp169,
	mov	r2, #4	@ ivtmp.621,
	str	ip, [r3, #0]	@ tmp168,* vir_addr
	bls	.L6	@,
	cmp	r5, #0	@ tmp171,
	beq	.L5	@,
	ldr	ip, [r0, #4]	@ tmp180,
	mov	r4, #2	@ i,
	cmp	r1, r4	@ size, i
	mov	r2, #8	@ ivtmp.621,
	str	ip, [r3, #4]	@ tmp180,
	bls	.L6	@,
.L5:
	ldr	r5, [r0, r2]	@ tmp176,* ivtmp.621
	add	ip, r2, #4	@ tmp173, ivtmp.621,
	add	r4, r4, #2	@ i, i,
	cmp	r1, r4	@ size, i
	str	r5, [r3, r2]	@ tmp176,* ivtmp.621
	add	r2, ip, #4	@ ivtmp.621, tmp173,
	ldr	r5, [r0, ip]	@ tmp179,
	str	r5, [r3, ip]	@ tmp179,
	bhi	.L5	@,
.L6:
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	Write_V200R004_Qmatrix, .-Write_V200R004_Qmatrix
	.global	__aeabi_idiv
	.align	2
	.global	H264HAL_V200R004_SetSliceMsg
	.type	H264HAL_V200R004_SetSliceMsg, %function
H264HAL_V200R004_SetSliceMsg:
	.fnstart
.LFB1923:
	@ args = 16, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pParam, pParam
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r0, r3	@, CurrMsgSlotPhy
	mov	r5, r2	@ pSlcPara, pSlcPara
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ D.36817,
	beq	.L172	@,
	ldr	r3, [r5, #8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r3, #0	@ <variable>.valid_bitlen,
	streq	r3, [r6, #0]	@ <variable>.valid_bitlen,* D.36817
	streq	r3, [r6, #4]	@ <variable>.valid_bitlen,
	streq	r3, [r6, #8]	@ <variable>.valid_bitlen,
	beq	.L18	@,
	ldr	ip, [r5, #24]	@ temp.1125, <variable>.bytespos
	ldr	r2, [r5, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	lr, [r4, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r1, ip, #15	@ tmp359, temp.1125,
	add	r0, r2, ip, asl #3	@, tmp357, <variable>.bitsoffset, temp.1125,
	and	r3, r0, #127	@ tmp.1113, tmp357,
	str	r3, [r6, #4]	@ tmp.1113,
	ldr	r2, [r5, #8]	@ tmp.1107, <variable>.valid_bitlen
	bic	ip, lr, #15	@ stream_base_addr.1126, <variable>.stream_base_addr,
	rsb	r0, ip, r1	@ temp.1106, stream_base_addr.1126, tmp359
	str	r2, [r6, #8]	@ tmp.1107,
	str	r0, [r6, #0]	@ temp.1106,* D.36817
.L18:
	ldr	r1, [r5, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r1, #0	@ <variable>.valid_bitlen,
	streq	r1, [r6, #12]	@ <variable>.valid_bitlen,
	streq	r1, [r6, #16]	@ <variable>.valid_bitlen,
	streq	r1, [r6, #20]	@ <variable>.valid_bitlen,
	beq	.L20	@,
	ldr	ip, [r5, #28]	@ D.36827, <variable>.bytespos
	ldr	r3, [r5, #20]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r0, [r4, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r1, ip, #15	@ tmp366, D.36827,
	add	lr, r3, ip, asl #3	@, tmp364, <variable>.bitsoffset, D.36827,
	and	r2, lr, #127	@ tmp.507, tmp364,
	str	r2, [r6, #16]	@ tmp.507,
	ldr	ip, [r5, #12]	@ tmp.885, <variable>.valid_bitlen
	bic	r3, r0, #15	@ stream_base_addr, <variable>.stream_base_addr,
	rsb	lr, r3, r1	@ D.36843, stream_base_addr, tmp366
	str	ip, [r6, #20]	@ tmp.885,
	str	lr, [r6, #12]	@ D.36843,
.L20:
	ldr	r1, [r5, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	movw	lr, #:lower16:g_not_direct_8x8_inference_flag	@ tmp379,
	ldr	ip, [r5, #36]	@ <variable>.cabac_init_idc, <variable>.cabac_init_idc
	movt	lr, #:upper16:g_not_direct_8x8_inference_flag	@ tmp379,
	ldr	r0, [r5, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	bic	r2, r1, #-16777216	@ tmp370, <variable>.first_mb_in_slice,
	bic	r3, r2, #15728640	@ tmp370, tmp370,
	and	r1, ip, #3	@ tmp376, <variable>.cabac_init_idc,
	orr	ip, r3, r0, asl #26	@, tmp375, tmp370, <variable>.SliceQPy,
	orr	r2, ip, r1, asl #24	@, tmp.894, tmp375, tmp376,
	str	r2, [r6, #24]	@ tmp.894,
	ldrb	r3, [lr, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r3, #0	@ g_not_direct_8x8_inference_flag,
	ldrneb	r3, [r5, #3]	@ zero_extendqisi2	@ prephitmp.736, <variable>.direct_8x8_inference_flag
	bne	.L22	@,
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ prephitmp.736, <variable>.direct_8x8_inference_flag
	cmp	r3, #0	@ prephitmp.736,
	beq	.L173	@,
.L22:
	ldr	lr, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r7, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [sp, #12]	@, %sfp
	mov	ip, lr, asl #8	@ tmp387, <variable>.listXsize,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	orr	r1, ip, r7, asl #2	@, tmp389, tmp387, <variable>.listXsize,
	ldr	sl, [r5, #44]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r7, [sp, #12]	@, %sfp
	and	lr, r2, #31	@ tmp390, <variable>.num_ref_idx_l1_active_minus1,
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	and	ip, sl, #31	@ tmp394, <variable>.num_ref_idx_l0_active_minus1,
	orr	sl, r1, lr, asl #21	@, tmp393, tmp389, tmp390,
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	orr	r2, sl, ip, asl #16	@, tmp397, tmp393, tmp394,
	ldr	r0, [r7, r0, asl #2]	@ tmp401, g_SliceTypeForPMV
	orr	lr, r2, r0	@ tmp400, tmp397, tmp401
	orr	r2, lr, r1, asl #15	@, tmp404, tmp400, <variable>.direct_spatial_mv_pred_flag,
	orr	r3, r2, r3, asl #14	@, tmp.897, tmp404, prephitmp.736,
	str	r3, [r6, #28]	@ tmp.897,
	ldrb	sl, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r3, [r7, sl, asl #2]	@ tmp408, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp408,
	movne	r3, #0	@ prephitmp.1105,
	movne	r2, r3	@ prephitmp.738, prephitmp.1105
	beq	.L174	@,
.L24:
	str	r2, [r6, #32]	@ prephitmp.738,
	str	r3, [r6, #36]	@ prephitmp.1105,
	ldr	r3, [r5, #60]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldrb	ip, [r5, #4]	@ zero_extendqisi2	@ <variable>.weight_flag, <variable>.weight_flag
	and	sl, r3, #31	@ tmp435, <variable>.chroma_qp_index_offset,
	ldr	lr, [r5, #64]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	mov	r1, sl, asl #5	@ tmp437, tmp435,
	and	r2, lr, #31	@ tmp439, <variable>.second_chroma_qp_index_offset,
	orr	r3, r1, ip, asl #16	@, tmp438, tmp437, <variable>.weight_flag,
	orr	sl, r3, r2	@ D.36929, tmp438, tmp439
	str	sl, [r6, #40]	@ D.36929,
	ldr	lr, [r5, #68]	@ <variable>.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	ldr	ip, [r5, #72]	@ <variable>.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	and	r3, lr, #15	@ tmp444, <variable>.slice_alpha_c0_offset_div2,
	ldr	r2, [r5, #76]	@ <variable>.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	and	r1, ip, #15	@ tmp441, <variable>.slice_beta_offset_div2,
	mov	sl, r3, asl #16	@ tmp446, tmp444,
	orr	lr, sl, r1, asl #8	@, tmp447, tmp446, tmp441,
	orr	ip, lr, r2	@ tmp.921, tmp447, <variable>.disable_deblocking_filter_idc
	str	ip, [r6, #44]	@ tmp.921,
	ldr	r3, [r5, #4056]	@ <variable>.pNextSlice, <variable>.pNextSlice
	cmp	r3, #0	@ <variable>.pNextSlice,
	ldrne	r0, [sp, #76]	@ tmp.874, last_mb_in_slice
	beq	.L175	@,
.L30:
	str	r0, [r6, #176]	@ tmp.874,
	ldr	r1, [sp, #68]	@ NextSlcMsgSlotPhy, NextSlcMsgSlotPhy
	bic	ip, r1, #15	@ tmp.926, NextSlcMsgSlotPhy,
	str	ip, [r6, #252]	@ tmp.926,
	ldr	sl, [sp, #12]	@, %sfp
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r3, [sl, r2, asl #2]	@ prephitmp.751, g_SliceTypeForPMV
	cmp	r3, #0	@ prephitmp.751,
	beq	.L32	@,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	ip, #0	@ <variable>.pic_structure,
	bne	.L176	@,
	ldr	r9, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r9, #0	@ <variable>.listXsize,
	beq	.L36	@,
	mov	r0, #20	@,
	mov	fp, #12	@,
	mov	r2, r5	@ ivtmp.840, pSlcPara
	mov	r7, ip	@ tmp.875, tmp1
	mov	r3, ip	@ i.922, tmp1
	str	r0, [sp, #8]	@, %sfp
	str	fp, [sp, #16]	@, %sfp
	str	r6, [sp, #20]	@ D.36817, %sfp
	str	r5, [sp, #4]	@ pSlcPara, %sfp
	b	.L41	@
.L39:
	cmp	r1, #3	@ D.36983,
	beq	.L177	@,
.L40:
	ldr	fp, [sp, #4]	@, %sfp
	ldr	r1, [fp, #52]	@ temp.930, <variable>.listXsize
	cmp	r1, r3	@ temp.930, i.922
	bls	.L178	@,
.L41:
	ldrb	r6, [r2, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	r0, r3, #7	@ D.36976, i.922,
	ldr	r5, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r3, #3	@ D.36983, i.922,
	ldr	sl, [sp, #12]	@, %sfp
	add	r3, r3, #1	@ i.922, i.922,
	add	fp, r5, r6, asl #1	@, tmp468, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldr	lr, [r2, #1644]	@, <variable>.apc_idc
	ldrb	r6, [r2, #1627]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	mov	r5, r0, asl #2	@ tmp477, D.36976,
	add	r9, sl, fp, asl #2	@, tmp472,, tmp468,
	add	r8, r1, r1, asl #2	@, tmp484, D.36983, D.36983,
	cmp	r6, #1	@ <variable>.frame_is_long_term,
	mov	sl, lr, asl #1	@ tmp479,,
	ldr	fp, [r9, #12]	@ tmp475, g_ListStructFrame
	and	sl, sl, #31	@ tmp481, tmp479,
	moveq	r6, #8	@ iftmp.513,
	movne	r6, #0	@ iftmp.513,
	and	lr, fp, #3	@ tmp474, tmp475,
	cmp	r0, #7	@ D.36976,
	orr	r0, r6, lr	@ tmp476, iftmp.513, tmp474
	add	r2, r2, #36	@ ivtmp.840, ivtmp.840,
	orr	ip, ip, sl, asl r8	@, tmp1, tmp1, tmp481,
	orr	r7, r7, r0, asl r5	@, tmp.875, tmp.875, tmp476,
	bne	.L39	@,
	ldr	r8, [sp, #16]	@, %sfp
	cmp	r1, #3	@ D.36983,
	ldr	r9, [sp, #20]	@, %sfp
	add	r0, r8, #1	@,,
	str	r7, [r9, r8, asl #2]	@ tmp.875,
	mov	r7, #0	@ tmp.875,
	str	r0, [sp, #16]	@, %sfp
	bne	.L40	@,
.L177:
	ldr	r1, [sp, #8]	@, %sfp
	ldr	sl, [sp, #20]	@, %sfp
	str	ip, [sl, r1, asl #2]	@ tmp1,
	add	ip, r1, #1	@,,
	ldr	fp, [sp, #4]	@, %sfp
	str	ip, [sp, #8]	@, %sfp
	mov	ip, #0	@ tmp1,
	ldr	r1, [fp, #52]	@ temp.930, <variable>.listXsize
	cmp	r1, r3	@ temp.930, i.922
	bhi	.L41	@,
.L178:
	tst	r1, #7	@ temp.930,
	ldr	r6, [sp, #20]	@ D.36817, %sfp
	mov	r5, fp	@ pSlcPara,
	ldrne	r1, [sp, #16]	@, %sfp
	ldreqb	r3, [fp, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldreq	r0, [sp, #12]	@, %sfp
	strne	r7, [r6, r1, asl #2]	@ tmp.875,* D.36817
	ldrne	r2, [sp, #8]	@, %sfp
	ldreq	r3, [r0, r3, asl #2]	@ prephitmp.751, g_SliceTypeForPMV
	strne	ip, [r6, r2, asl #2]	@ tmp1,* D.36817
	ldrneb	r3, [fp, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldrne	r7, [sp, #12]	@, %sfp
	ldrne	r3, [r7, r3, asl #2]	@ prephitmp.751, g_SliceTypeForPMV
.L36:
	cmp	r3, #2	@ prephitmp.751,
	bne	.L43	@,
	ldr	r7, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r7, #0	@ <variable>.listXsize,
	beq	.L43	@,
	mov	ip, #0	@ tmp1.880,
	add	r3, r5, #2784	@ ivtmp.835, pSlcPara,
	mov	lr, #28	@,
	mov	r0, #16	@,
	add	r3, r3, #12	@ ivtmp.835, ivtmp.835,
	mov	r7, ip	@ tmp.876, tmp1.880
	mov	r2, ip	@ i.953, tmp1.880
	str	lr, [sp, #8]	@, %sfp
	str	r0, [sp, #16]	@, %sfp
	str	r6, [sp, #20]	@ D.36817, %sfp
	str	r5, [sp, #4]	@ pSlcPara, %sfp
	b	.L48	@
.L46:
	cmp	r1, #3	@ temp.943,
	beq	.L179	@,
.L47:
	ldr	fp, [sp, #4]	@, %sfp
	ldr	r1, [fp, #56]	@ temp.938, <variable>.listXsize
	cmp	r1, r2	@ temp.938, i.953
	bls	.L180	@,
.L48:
	ldrb	r6, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	lr, r2, #7	@ temp.940, i.953,
	ldr	r5, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r2, #3	@ temp.943, i.953,
	ldr	sl, [sp, #12]	@, %sfp
	add	r2, r2, #1	@ i.953, i.953,
	add	r0, r5, r6, asl #1	@, tmp501, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldr	fp, [r3, #0]	@, <variable>.apc_idc
	ldrb	r6, [r3, #-17]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	mov	r5, lr, asl #2	@ tmp510, temp.940,
	add	r9, sl, r0, asl #2	@, tmp505,, tmp501,
	add	r8, r1, r1, asl #2	@, tmp517, temp.943, temp.943,
	cmp	r6, #1	@ <variable>.frame_is_long_term,
	mov	sl, fp, asl #1	@ tmp512,,
	ldr	r0, [r9, #12]	@ tmp508, g_ListStructFrame
	and	sl, sl, #31	@ tmp514, tmp512,
	moveq	r6, #8	@ iftmp.514,
	movne	r6, #0	@ iftmp.514,
	and	fp, r0, #3	@ tmp507, tmp508,
	cmp	lr, #7	@ temp.940,
	orr	r0, r6, fp	@ tmp509, iftmp.514, tmp507
	add	r3, r3, #36	@ ivtmp.835, ivtmp.835,
	orr	ip, ip, sl, asl r8	@, tmp1.880, tmp1.880, tmp514,
	orr	r7, r7, r0, asl r5	@, tmp.876, tmp.876, tmp509,
	bne	.L46	@,
	ldr	r8, [sp, #16]	@, %sfp
	cmp	r1, #3	@ temp.943,
	ldr	r9, [sp, #20]	@, %sfp
	add	r0, r8, #1	@,,
	str	r7, [r9, r8, asl #2]	@ tmp.876,
	mov	r7, #0	@ tmp.876,
	str	r0, [sp, #16]	@, %sfp
	bne	.L47	@,
.L179:
	ldr	r1, [sp, #8]	@, %sfp
	ldr	sl, [sp, #20]	@, %sfp
	str	ip, [sl, r1, asl #2]	@ tmp1.880,
	add	ip, r1, #1	@,,
	str	ip, [sp, #8]	@, %sfp
	mov	ip, #0	@ tmp1.880,
	b	.L47	@
.L186:
	ldr	r2, [r9, #284]	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	mov	r4, r9	@ pParam, pParam
	cmp	r2, #0	@ <variable>.weighted_pred_flag,
	beq	.L105	@,
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	fp, [sp, #12]	@, %sfp
	ldr	r3, [fp, r0, asl #2]	@ tmp714, g_SliceTypeForPMV
	cmp	r3, #1	@ tmp714,
	beq	.L106	@,
.L105:
	ldr	ip, [r4, #288]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	ip, #1	@ <variable>.weighted_bipred_idc,
	bne	.L32	@,
	ldrb	lr, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r2, [sp, #12]	@, %sfp
	ldr	r1, [r2, lr, asl #2]	@ tmp718, g_SliceTypeForPMV
	cmp	r1, #2	@ tmp718,
	bne	.L32	@,
.L106:
	add	r2, r6, #256	@ ivtmp.813, D.36817,
	mov	r4, r5	@ ivtmp.811, pSlcPara
	mov	r3, r5	@ ivtmp.1100, pSlcPara
	mov	r0, #0	@ i.1077,
.L107:
	ldr	r1, [r3, #88]	@ tmp720, <variable>.wp_weight_l0_y
	add	r0, r0, #1	@ i.1077, i.1077,
	ldrb	lr, [r3, #856]	@ zero_extendqisi2	@ tmp723, <variable>.wp_offset_l0_y
	ldr	ip, [r5, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r1, r1, asl #23	@ tmp719, tmp720,
	mov	lr, lr, asl #12	@ tmp725, tmp723,
	and	ip, ip, #7	@ tmp727, <variable>.luma_log2_weight_denom,
	mov	r1, r1, lsr #23	@ tmp719, tmp719,
	orr	r1, lr, r1, asl #3	@, tmp726, tmp725, tmp719,
	orr	lr, r1, ip	@ tmp.1080, tmp726, tmp727
	str	lr, [r2, #0]	@ tmp.1080,* ivtmp.813
	ldr	r1, [r3, #216]	@ tmp730, <variable>.wp_weight_l0_u
	ldrb	lr, [r3, #984]	@ zero_extendqisi2	@ tmp733, <variable>.wp_offset_l0_u
	ldr	ip, [r5, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	r1, r1, asl #23	@ tmp729, tmp730,
	mov	lr, lr, asl #12	@ tmp735, tmp733,
	and	ip, ip, #7	@ tmp737, <variable>.chroma_log2_weight_denom,
	mov	r1, r1, lsr #23	@ tmp729, tmp729,
	orr	r1, lr, r1, asl #3	@, tmp736, tmp735, tmp729,
	orr	r1, r1, ip	@ tmp1.1082, tmp736, tmp737
	str	r1, [r2, #256]	@ tmp1.1082,
	ldr	lr, [r3, #344]	@ tmp743, <variable>.wp_weight_l0_v
	ldrb	ip, [r3, #1112]	@ zero_extendqisi2	@ tmp739, <variable>.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.1100, ivtmp.1100,
	mov	r1, lr, asl #23	@ tmp742, tmp743,
	mov	lr, r1, lsr #23	@ tmp742, tmp742,
	orr	r1, lr, ip, asl #9	@, D.37236, tmp742, tmp739,
	str	r1, [r2, #512]	@ D.37236,
	ldr	r1, [r5, #44]	@ temp.978, <variable>.num_ref_idx_l0_active_minus1
	add	r2, r2, #4	@ ivtmp.813, ivtmp.813,
	cmp	r1, r0	@ temp.978, i.1077
	bcs	.L107	@,
	cmp	r1, #1	@ temp.978,
	and	r2, r1, #1	@ tmp798, temp.978,
	mov	r3, #1	@ i.946,
	bcc	.L157	@,
	cmp	r2, #0	@ tmp798,
	beq	.L108	@,
	mov	r3, #2	@ i.946,
	cmp	r1, r3	@ temp.978, i.946
	bcc	.L157	@,
.L108:
	add	r3, r3, #2	@ i.946, i.946,
	cmp	r1, r3	@ temp.978, i.946
	bcs	.L108	@,
.L157:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r2, [r0, r3, asl #2]	@ tmp747, g_SliceTypeForPMV
	cmp	r2, #2	@ tmp747,
	beq	.L181	@,
.L109:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #44]	@ D.36870, <variable>.num_ref_idx_l0_active_minus1
	mov	r3, #1	@ i.1087,
	cmp	r2, r3	@ D.36870,
	and	r1, r2, r3	@ tmp792, D.36870,
	bcc	.L158	@,
	cmp	r1, #0	@ tmp792,
	beq	.L111	@,
	mov	r3, #2	@ i.1087,
	cmp	r2, r3	@ D.36870, i.1087
	bcc	.L158	@,
.L111:
	add	r3, r3, #2	@ i.1087, i.1087,
	cmp	r2, r3	@ D.36870, i.1087
	bcs	.L111	@,
.L158:
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r2, [sp, #12]	@, %sfp
	ldr	r1, [r2, ip, asl #2]	@ tmp750, g_SliceTypeForPMV
	cmp	r1, #2	@ tmp750,
	beq	.L182	@,
.L32:
	mov	r0, #0	@ D.36820,
.L16:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L176:
	ldr	r8, [r5, #52]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r8, #0	@ <variable>.listXsize,
	beq	.L35	@,
	mov	ip, #0	@ tmp1.881,
	mov	r3, r5	@ ivtmp.859, pSlcPara
	mov	r7, ip	@ tmp.878, tmp1.881
	mov	r2, ip	@ i.1005, tmp1.881
	mov	r9, #20	@ Dn_0.871,
	mov	r8, #12	@ Dn_num.868,
	b	.L75	@
.L50:
	cmp	r1, #2	@ D.37023,
	andne	r1, r2, #3	@ prephitmp.993, i.1005,
	andne	r0, r2, #7	@ prephitmp.768, i.1005,
	beq	.L183	@,
.L61:
	cmp	r0, #7	@ prephitmp.768,
	streq	r7, [r6, r8, asl #2]	@ tmp.878,* D.36817
	addeq	r8, r8, #1	@ Dn_num.868, Dn_num.868,
	add	r2, r2, #1	@ i.1005, i.1005,
	moveq	r7, #0	@ tmp.878,
	cmp	r1, #3	@ prephitmp.993,
	streq	ip, [r6, r9, asl #2]	@ tmp1.881,* D.36817
	addeq	r9, r9, #1	@ Dn_0.871, Dn_0.871,
	ldr	r1, [r5, #52]	@ temp.960, <variable>.listXsize
	moveq	ip, #0	@ tmp1.881,
	add	r3, r3, #36	@ ivtmp.859, ivtmp.859,
	cmp	r1, r2	@ temp.960, i.1005
	bls	.L184	@,
.L75:
	ldrb	r1, [r3, #1624]	@ zero_extendqisi2	@ D.37023, <variable>.list_structure
	cmp	r1, #1	@ D.37023,
	bne	.L50	@,
	ldrb	sl, [r3, #1625]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #3	@ <variable>.is_used,
	beq	.L51	@,
	ldrb	r1, [r3, #1628]	@ zero_extendqisi2	@ D.37035, <variable>.top_structure
	and	r0, r2, #7	@ prephitmp.768, i.1005,
	ldrb	sl, [r3, #1629]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.37035,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #16]	@, %sfp
	cmp	sl, #1	@ <variable>.top_is_long_term,
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@ iftmp.515,
	movne	sl, #0	@ iftmp.515,
	add	lr, fp, r1, asl #1	@, tmp531,, D.37035,
	mov	fp, r0, asl #2	@, prephitmp.768,
	str	fp, [sp, #8]	@, %sfp
	ldr	fp, [sp, #12]	@, %sfp
	add	r1, fp, lr, asl #2	@, tmp535,, tmp531,
	ldr	fp, [sp, #16]	@, %sfp
	orr	lr, fp, sl	@ tmp528,, iftmp.515
	ldr	fp, [r1, #44]	@ tmp538, g_ListStructField
	and	fp, fp, #3	@ tmp537, tmp538,
	orr	r1, lr, fp	@ tmp539, tmp528, tmp537
	ldr	fp, [sp, #8]	@, %sfp
	orr	r7, r7, r1, asl fp	@, tmp.878, tmp.878, tmp539,
.L56:
	ldr	sl, [r3, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.993, i.1005,
	add	fp, r1, r1, asl #2	@, tmp564, prephitmp.993, prephitmp.993,
	mov	lr, sl, asl #1	@ tmp559, <variable>.apc_idc,
	and	sl, lr, #31	@ tmp561, tmp559,
	orr	ip, ip, sl, asl fp	@, tmp1.881, tmp1.881, tmp561,
	b	.L61	@
.L183:
	ldrb	r0, [r3, #1625]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L63	@,
	ldrb	r1, [r3, #1630]	@ zero_extendqisi2	@ D.37072, <variable>.btm_structure
	and	r0, r2, #7	@ prephitmp.768, i.1005,
	ldrb	sl, [r3, #1631]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.37072,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #16]	@, %sfp
	cmp	sl, #1	@ <variable>.btm_is_long_term,
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@ iftmp.519,
	movne	sl, #0	@ iftmp.519,
	add	lr, fp, r1, asl #1	@, tmp571,, D.37072,
	mov	fp, r0, asl #2	@, prephitmp.768,
	str	fp, [sp, #8]	@, %sfp
	ldr	fp, [sp, #12]	@, %sfp
	add	r1, fp, lr, asl #2	@, tmp575,, tmp571,
	ldr	fp, [sp, #16]	@, %sfp
	ldr	lr, [r1, #44]	@ tmp578, g_ListStructField
	orr	sl, fp, sl	@ tmp568,, iftmp.519
	ldr	r1, [sp, #8]	@, %sfp
	and	fp, lr, #3	@ tmp577, tmp578,
	orr	lr, sl, fp	@ tmp579, tmp568, tmp577
	orr	r7, r7, lr, asl r1	@, tmp.878, tmp.878, tmp579,
.L68:
	ldr	lr, [r3, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.993, i.1005,
	add	fp, r1, r1, asl #2	@, tmp605, prephitmp.993, prephitmp.993,
	mov	sl, lr, asl #1	@ tmp599, <variable>.apc_idc,
	and	lr, sl, #30	@ tmp601, tmp599,
	orr	sl, lr, #1	@ tmp602, tmp601,
	orr	ip, ip, sl, asl fp	@, tmp1.881, tmp1.881, tmp602,
	b	.L61	@
.L51:
	and	r0, r2, #7	@ prephitmp.768, i.1005,
	ldrb	lr, [r3, #1629]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	ldrb	r1, [r3, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	mov	sl, r0, asl #2	@, prephitmp.768,
	str	sl, [sp, #8]	@, %sfp
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.top_is_long_term,
	ldr	sl, [sp, #12]	@, %sfp
	add	r1, fp, r1, asl #1	@,,, <variable>.frame_structure,
	ldrb	fp, [r3, #1628]	@ zero_extendqisi2	@ <variable>.top_structure, <variable>.top_structure
	moveq	lr, #8	@,
	movne	lr, #0	@,
	str	lr, [sp, #20]	@, %sfp
	cmp	fp, #1	@ <variable>.top_structure,
	add	lr, sl, r1, asl #2	@,,,,
	ldr	r1, [sp, #20]	@, %sfp
	str	lr, [sp, #16]	@, %sfp
	moveq	fp, #4	@ iftmp.518,
	movne	fp, #0	@ iftmp.518,
	orr	lr, fp, r1	@ tmp544, iftmp.518,
	ldr	fp, [sp, #16]	@, %sfp
	ldr	sl, [fp, #44]	@ tmp555, g_ListStructField
	and	r1, sl, #3	@ tmp554, tmp555,
	orr	sl, lr, r1	@ tmp556, tmp544, tmp554
	ldr	lr, [sp, #8]	@, %sfp
	orr	r7, r7, sl, asl lr	@, tmp.878, tmp.878, tmp556,
	b	.L56	@
.L63:
	and	r0, r2, #7	@ prephitmp.768, i.1005,
	ldrb	lr, [r3, #1631]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	ldrb	r1, [r3, #1626]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	mov	sl, r0, asl #2	@, prephitmp.768,
	str	sl, [sp, #8]	@, %sfp
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #1	@ <variable>.btm_is_long_term,
	ldr	sl, [sp, #12]	@, %sfp
	add	r1, fp, r1, asl #1	@,,, <variable>.frame_structure,
	ldrb	fp, [r3, #1630]	@ zero_extendqisi2	@ <variable>.btm_structure, <variable>.btm_structure
	moveq	lr, #8	@,
	movne	lr, #0	@,
	str	lr, [sp, #20]	@, %sfp
	cmp	fp, #1	@ <variable>.btm_structure,
	add	lr, sl, r1, asl #2	@,,,,
	ldr	r1, [sp, #20]	@, %sfp
	str	lr, [sp, #16]	@, %sfp
	moveq	fp, #4	@ iftmp.522,
	movne	fp, #0	@ iftmp.522,
	orr	lr, fp, r1	@ tmp584, iftmp.522,
	ldr	fp, [sp, #16]	@, %sfp
	ldr	sl, [fp, #44]	@ tmp595, g_ListStructField
	and	r1, sl, #3	@ tmp594, tmp595,
	orr	sl, lr, r1	@ tmp596, tmp584, tmp594
	ldr	lr, [sp, #8]	@, %sfp
	orr	r7, r7, sl, asl lr	@, tmp.878, tmp.878, tmp596,
	b	.L68	@
.L184:
	tst	r1, #7	@ temp.960,
	strne	r7, [r6, r8, asl #2]	@ tmp.878,* D.36817
	strne	ip, [r6, r9, asl #2]	@ tmp1.881,* D.36817
	ldreqb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldreq	r2, [sp, #12]	@, %sfp
	ldrneb	r3, [r5, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldrne	r7, [sp, #12]	@, %sfp
	ldreq	r3, [r2, r3, asl #2]	@ prephitmp.751, g_SliceTypeForPMV
	ldrne	r3, [r7, r3, asl #2]	@ prephitmp.751, g_SliceTypeForPMV
.L35:
	cmp	r3, #2	@ prephitmp.751,
	beq	.L185	@,
.L43:
	add	r8, r5, #3920	@ tmp525, pSlcPara,
	ldr	r0, [r5, #3928]	@ <variable>.Apc2RefIdx, <variable>.Apc2RefIdx
	add	r3, r8, #16	@ ivtmp.826, tmp525,
	mov	fp, #36	@ Dn_num.877,
	ldr	lr, [r8, #12]	@ tmp705, <variable>.Apc2RefIdx
	and	r2, r0, #31	@ tmp, <variable>.Apc2RefIdx,
	mov	r9, r4	@ pParam, pParam
	mov	r0, #1	@ i.1069,
	and	r7, lr, #31	@ tmp704, tmp705,
	orr	ip, r2, r7, asl #5	@, tmp, tmp, tmp704,
.L49:
	add	r7, r0, #1	@ tmp801, i.1069,
	add	r4, r3, #4	@ tmp800, ivtmp.826,
	add	r0, r7, #1	@ i.1069, tmp801,
	and	r1, r7, #3	@ temp.1063, tmp801,
	and	r2, r0, #3	@ temp.1063, i.1069,
	cmp	r7, #32	@ tmp801,
	add	r8, r1, r1, asl #2	@, tmp810, temp.1063, temp.1063,
	add	r7, r2, r2, asl #2	@, tmp818, temp.1063, temp.1063,
	beq	.L186	@,
	ldr	lr, [r3, #0]	@ tmp807, <variable>.Apc2RefIdx
	cmp	r1, #3	@ temp.1063,
	and	r1, lr, #31	@ tmp808, tmp807,
	orr	sl, ip, r1, asl r8	@, tmp, tmp, tmp808,
	streq	sl, [r6, fp, asl #2]	@ tmp,* D.36817
	ldr	r8, [r3, #4]	@ tmp815, <variable>.Apc2RefIdx
	moveq	sl, #0	@ tmp,
	addeq	fp, fp, #1	@ Dn_num.877, Dn_num.877,
	cmp	r2, #3	@ temp.1063,
	and	ip, r8, #31	@ tmp816, tmp815,
	orr	ip, sl, ip, asl r7	@, tmp, tmp, tmp816,
	addne	r3, r4, #4	@ ivtmp.826, tmp800,
	bne	.L49	@
.L187:
	str	ip, [r6, fp, asl #2]	@ tmp,* D.36817
	add	r3, r4, #4	@ ivtmp.826, tmp800,
	add	fp, fp, #1	@ Dn_num.877, Dn_num.877,
	mov	ip, #0	@ tmp,
	b	.L49	@
.L174:
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r3, #0	@ <variable>.pic_structure,
	beq	.L188	@,
	ldr	ip, [r5, #2776]	@ tmp420,
	bic	sl, ip, #-16777216	@ tmp418, tmp420,
	bic	r3, sl, #255	@ tmp418, tmp418,
	cmp	r3, #768	@ tmp418,
	beq	.L171	@,
	ldrb	r2, [r5, #2776]	@ zero_extendqisi2	@ <variable>.list_structure, <variable>.list_structure
	cmp	r2, #1	@ <variable>.list_structure,
	beq	.L171	@,
	ldr	sl, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.1105,
	ldr	r2, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	add	r1, sl, #206	@ tmp428, <variable>.pmv_address_idc,
	ldr	lr, [r4, r1, asl #2]	@ tmp431, <variable>.PmvPhyAddr
	add	ip, lr, r2	@ tmp430, tmp431, <variable>.half_pmvblk_offset
	bic	r2, ip, #15	@ prephitmp.738, tmp430,
	b	.L24	@
.L188:
	ldrb	r1, [r5, #2778]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldr	r2, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	cmp	r1, #3	@ <variable>.frame_structure,
	addeq	r2, r2, #206	@ tmp414, <variable>.pmv_address_idc,
	addne	r2, r2, #206	@ tmp411, <variable>.pmv_address_idc,
	ldreq	r3, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	ldreq	r2, [r4, r2, asl #2]	@ temp.903, <variable>.PmvPhyAddr
	ldrne	r2, [r4, r2, asl #2]	@ tmp413, <variable>.PmvPhyAddr
	addeq	r3, r2, r3	@ tmp416, temp.903, <variable>.half_pmvblk_offset
	biceq	r2, r2, #15	@ prephitmp.738, temp.903,
	bicne	r2, r2, #15	@ prephitmp.738, tmp413,
	biceq	r3, r3, #15	@ prephitmp.1105, tmp416,
	b	.L24	@
.L185:
	ldr	r3, [r5, #56]	@ <variable>.listXsize, <variable>.listXsize
	cmp	r3, #0	@ <variable>.listXsize,
	beq	.L43	@,
	add	r9, r5, #2784	@ ivtmp.848, pSlcPara,
	mov	ip, #0	@ tmp1.882,
	add	r3, r9, #12	@ ivtmp.848, ivtmp.848,
	mov	r7, ip	@ tmp.879, tmp1.882
	mov	r2, ip	@ i.1054, tmp1.882
	mov	r9, #28	@ Dn_0.872,
	mov	r8, #16	@ Dn_num.869,
	b	.L102	@
.L77:
	cmp	r1, #2	@ D.37108,
	andne	r1, r2, #3	@ prephitmp.1045, i.1054,
	andne	r0, r2, #7	@ prephitmp.1040, i.1054,
	beq	.L189	@,
.L88:
	cmp	r0, #7	@ prephitmp.1040,
	streq	r7, [r6, r8, asl #2]	@ tmp.879,* D.36817
	addeq	r8, r8, #1	@ Dn_num.869, Dn_num.869,
	add	r2, r2, #1	@ i.1054, i.1054,
	moveq	r7, #0	@ tmp.879,
	cmp	r1, #3	@ prephitmp.1045,
	streq	ip, [r6, r9, asl #2]	@ tmp1.882,* D.36817
	addeq	r9, r9, #1	@ Dn_0.872, Dn_0.872,
	ldr	r1, [r5, #56]	@ temp.997, <variable>.listXsize
	moveq	ip, #0	@ tmp1.882,
	add	r3, r3, #36	@ ivtmp.848, ivtmp.848,
	cmp	r1, r2	@ temp.997, i.1054
	bls	.L190	@,
.L102:
	ldrb	r1, [r3, #-20]	@ zero_extendqisi2	@ D.37108, <variable>.list_structure
	cmp	r1, #1	@ D.37108,
	bne	.L77	@,
	ldrb	r0, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L78	@,
	ldrb	r1, [r3, #-16]	@ zero_extendqisi2	@ D.37120, <variable>.top_structure
	and	r0, r2, #7	@ prephitmp.1040, i.1054,
	ldrb	sl, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.37120,
	mov	lr, r0, asl #2	@, prephitmp.1040,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #16]	@, %sfp
	cmp	sl, #1	@ <variable>.top_is_long_term,
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	str	lr, [sp, #8]	@, %sfp
	moveq	sl, #8	@ iftmp.523,
	add	r1, fp, r1, asl #1	@, tmp623,, D.37120,
	ldr	fp, [sp, #12]	@, %sfp
	movne	sl, #0	@ iftmp.523,
	add	lr, fp, r1, asl #2	@, tmp627,, tmp623,
	ldr	fp, [sp, #16]	@, %sfp
	ldr	r1, [lr, #44]	@ tmp630, g_ListStructField
	orr	sl, fp, sl	@ tmp620,, iftmp.523
	and	lr, r1, #3	@ tmp629, tmp630,
	ldr	r1, [sp, #8]	@, %sfp
	orr	fp, sl, lr	@ tmp631, tmp620, tmp629
	orr	r7, r7, fp, asl r1	@, tmp.879, tmp.879, tmp631,
.L83:
	ldr	lr, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.1045, i.1054,
	add	fp, r1, r1, asl #2	@, tmp656, prephitmp.1045, prephitmp.1045,
	mov	sl, lr, asl #1	@ tmp651, <variable>.apc_idc,
	and	sl, sl, #31	@ tmp653, tmp651,
	orr	ip, ip, sl, asl fp	@, tmp1.882, tmp1.882, tmp653,
	b	.L88	@
.L189:
	ldrb	r0, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #3	@ <variable>.is_used,
	beq	.L90	@,
	ldrb	r1, [r3, #-14]	@ zero_extendqisi2	@ D.37157, <variable>.btm_structure
	and	r0, r2, #7	@ prephitmp.1040, i.1054,
	ldrb	sl, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.37157,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #16]	@, %sfp
	cmp	sl, #1	@ <variable>.btm_is_long_term,
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@ iftmp.527,
	movne	sl, #0	@ iftmp.527,
	add	lr, fp, r1, asl #1	@, tmp663,, D.37157,
	mov	fp, r0, asl #2	@, prephitmp.1040,
	str	fp, [sp, #8]	@, %sfp
	ldr	fp, [sp, #12]	@, %sfp
	add	r1, fp, lr, asl #2	@, tmp667,, tmp663,
	ldr	fp, [sp, #16]	@, %sfp
	orr	lr, fp, sl	@ tmp660,, iftmp.527
	ldr	fp, [r1, #44]	@ tmp670, g_ListStructField
	and	r1, fp, #3	@ tmp669, tmp670,
	ldr	fp, [sp, #8]	@, %sfp
	orr	sl, lr, r1	@ tmp671, tmp660, tmp669
	orr	r7, r7, sl, asl fp	@, tmp.879, tmp.879, tmp671,
.L95:
	ldr	sl, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, r2, #3	@ prephitmp.1045, i.1054,
	add	fp, r1, r1, asl #2	@, tmp697, prephitmp.1045, prephitmp.1045,
	mov	lr, sl, asl #1	@ tmp691, <variable>.apc_idc,
	and	sl, lr, #30	@ tmp693, tmp691,
	orr	sl, sl, #1	@ tmp694, tmp693,
	orr	ip, ip, sl, asl fp	@, tmp1.882, tmp1.882, tmp694,
	b	.L88	@
.L78:
	ldrb	sl, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	and	r0, r2, #7	@ prephitmp.1040, i.1054,
	ldrb	lr, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	cmp	sl, #1	@ <variable>.top_is_long_term,
	mov	r1, r0, asl #2	@, prephitmp.1040,
	str	r1, [sp, #8]	@, %sfp
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@,
	movne	sl, #0	@,
	add	r1, fp, lr, asl #1	@,,, <variable>.frame_structure,
	ldrb	lr, [r3, #-16]	@ zero_extendqisi2	@ <variable>.top_structure, <variable>.top_structure
	str	sl, [sp, #20]	@, %sfp
	ldr	sl, [sp, #12]	@, %sfp
	cmp	lr, #1	@ <variable>.top_structure,
	add	fp, sl, r1, asl #2	@,,,,
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #16]	@, %sfp
	moveq	lr, #4	@ iftmp.526,
	ldr	r1, [sp, #20]	@, %sfp
	movne	lr, #0	@ iftmp.526,
	orr	sl, lr, r1	@ tmp636, iftmp.526,
	ldr	lr, [fp, #44]	@ tmp647, g_ListStructField
	and	r1, lr, #3	@ tmp646, tmp647,
	orr	lr, sl, r1	@ tmp648, tmp636, tmp646
	ldr	sl, [sp, #8]	@, %sfp
	orr	r7, r7, lr, asl sl	@, tmp.879, tmp.879, tmp648,
	b	.L83	@
.L90:
	ldrb	sl, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	and	r0, r2, #7	@ prephitmp.1040, i.1054,
	ldrb	lr, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	cmp	sl, #1	@ <variable>.btm_is_long_term,
	mov	r1, r0, asl #2	@, prephitmp.1040,
	str	r1, [sp, #8]	@, %sfp
	ldr	fp, [r4, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	sl, #8	@,
	movne	sl, #0	@,
	add	r1, fp, lr, asl #1	@,,, <variable>.frame_structure,
	ldrb	lr, [r3, #-14]	@ zero_extendqisi2	@ <variable>.btm_structure, <variable>.btm_structure
	str	sl, [sp, #20]	@, %sfp
	ldr	sl, [sp, #12]	@, %sfp
	cmp	lr, #1	@ <variable>.btm_structure,
	add	fp, sl, r1, asl #2	@,,,,
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #16]	@, %sfp
	moveq	lr, #4	@ iftmp.530,
	ldr	r1, [sp, #20]	@, %sfp
	movne	lr, #0	@ iftmp.530,
	orr	sl, lr, r1	@ tmp676, iftmp.530,
	ldr	lr, [fp, #44]	@ tmp687, g_ListStructField
	and	r1, lr, #3	@ tmp686, tmp687,
	orr	lr, sl, r1	@ tmp688, tmp676, tmp686
	ldr	sl, [sp, #8]	@, %sfp
	orr	r7, r7, lr, asl sl	@, tmp.879, tmp.879, tmp688,
	b	.L95	@
.L190:
	tst	r1, #7	@ temp.997,
	strne	r7, [r6, r8, asl #2]	@ tmp.879,* D.36817
	strne	ip, [r6, r9, asl #2]	@ tmp1.882,* D.36817
	b	.L43	@
.L180:
	tst	r1, #7	@ temp.938,
	ldr	r6, [sp, #20]	@ D.36817, %sfp
	mov	r5, fp	@ pSlcPara,
	ldrne	r0, [sp, #16]	@, %sfp
	strne	r7, [r6, r0, asl #2]	@ tmp.876,* D.36817
	ldrne	r1, [sp, #8]	@, %sfp
	strne	ip, [r6, r1, asl #2]	@ tmp1.880,* D.36817
	b	.L43	@
.L171:
	ldr	sl, [r5, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.1105,
	add	r1, sl, #206	@ tmp425, <variable>.pmv_address_idc,
	ldr	lr, [r4, r1, asl #2]	@ tmp427, <variable>.PmvPhyAddr
	bic	r2, lr, #15	@ prephitmp.738, tmp427,
	b	.L24	@
.L182:
	ldr	r2, [r5, #40]	@ temp.1102, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.873,
	cmp	r3, r2	@ i.873, temp.1102
	and	r0, r2, r3	@ tmp789, temp.1102,
	bhi	.L159	@,
	cmp	r0, #0	@ tmp789,
	beq	.L112	@,
	cmp	r1, r2	@ i.873, temp.1102
	mov	r3, r1	@ i.873, tmp750
	bhi	.L159	@,
.L112:
	add	r3, r3, #2	@ i.873, i.873,
	cmp	r3, r2	@ i.873, temp.1102
	bls	.L112	@,
.L159:
	mov	r3, #1	@ i.887,
	cmp	r3, r2	@ i.887, temp.1102
	and	r1, r2, r3	@ tmp786, temp.1102,
	bhi	.L160	@,
	cmp	r1, #0	@ tmp786,
	beq	.L113	@,
	mov	r3, #2	@ i.887,
	cmp	r3, r2	@ i.887, temp.1102
	bhi	.L160	@,
.L113:
	add	r3, r3, #2	@ i.887, i.887,
	cmp	r3, r2	@ i.887, temp.1102
	bls	.L113	@,
.L160:
	add	r6, r6, #384	@ ivtmp.789, D.36817,
	mov	r2, #0	@ i,
.L114:
	ldr	r3, [r4, #472]	@ tmp752, <variable>.wp_weight_l1_y
	add	r2, r2, #1	@ i, i,
	ldrb	ip, [r4, #1240]	@ zero_extendqisi2	@ tmp755, <variable>.wp_offset_l1_y
	ldr	r1, [r5, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	lr, r3, asl #23	@ tmp751, tmp752,
	mov	r0, ip, asl #12	@ tmp757, tmp755,
	and	r1, r1, #7	@ tmp759, <variable>.luma_log2_weight_denom,
	mov	ip, lr, lsr #23	@ tmp751, tmp751,
	orr	r3, r0, ip, asl #3	@, tmp758, tmp757, tmp751,
	orr	lr, r3, r1	@ tmp.1096, tmp758, tmp759
	str	lr, [r6, #0]	@ tmp.1096,* ivtmp.789
	ldr	ip, [r4, #600]	@ tmp762, <variable>.wp_weight_l1_u
	ldrb	r0, [r4, #1368]	@ zero_extendqisi2	@ tmp765, <variable>.wp_offset_l1_u
	ldr	r1, [r5, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	r3, ip, asl #23	@ tmp761, tmp762,
	mov	lr, r0, asl #12	@ tmp767, tmp765,
	and	r1, r1, #7	@ tmp769, <variable>.chroma_log2_weight_denom,
	mov	ip, r3, lsr #23	@ tmp761, tmp761,
	orr	r3, lr, ip, asl #3	@, tmp768, tmp767, tmp761,
	orr	r0, r3, r1	@ tmp1.1101, tmp768, tmp769
	str	r0, [r6, #256]	@ tmp1.1101,
	ldr	lr, [r4, #728]	@ tmp775, <variable>.wp_weight_l1_v
	ldrb	r1, [r4, #1496]	@ zero_extendqisi2	@ tmp771, <variable>.wp_offset_l1_v
	add	r4, r4, #4	@ ivtmp.811, ivtmp.811,
	mov	ip, lr, asl #23	@ tmp774, tmp775,
	mov	r3, ip, lsr #23	@ tmp774, tmp774,
	orr	r0, r3, r1, asl #9	@, D.37275, tmp774, tmp771,
	str	r0, [r6, #512]	@ D.37275,
	ldr	lr, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	add	r6, r6, #4	@ ivtmp.789, ivtmp.789,
	cmp	lr, r2	@ <variable>.num_ref_idx_l1_active_minus1, i
	bcs	.L114	@,
	b	.L32	@
.L173:
	ldr	r2, [r4, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	movw	ip, #1620	@ tmp384,
	ldr	r1, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mul	lr, r1, r2	@ tmp381, <variable>.pic_width_in_mb, <variable>.frame_height_in_mb
	cmp	lr, ip	@ tmp381, tmp384
	mvnhi	r0, #0	@ D.36820,
	bls	.L22	@,
	b	.L16	@
.L181:
	ldr	r1, [r5, #40]	@ temp.1076, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.1086,
	cmp	r1, r3	@ temp.1076,
	and	r0, r1, r3	@ tmp795, temp.1076,
	bcc	.L109	@,
	cmp	r0, #0	@ tmp795,
	beq	.L110	@,
	cmp	r1, r2	@ temp.1076, i.1086
	mov	r3, r2	@ i.1086, tmp747
	bcc	.L109	@,
.L110:
	add	r3, r3, #2	@ i.1086, i.1086,
	cmp	r1, r3	@ temp.1076, i.1086
	bcs	.L110	@,
	b	.L109	@
.L175:
	ldr	r0, [r4, #920]	@ D.36950, <variable>.mbtodec
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ D.36946, <variable>.MbaffFrameFlag
	cmp	r0, #262144	@ D.36950,
	addgt	r1, r1, #1	@, D.36946,
	suble	r0, r0, #1	@, D.36950,
	movwgt	r0, #:lower16:262143	@,
	addle	r1, r1, #1	@, D.36946,
	movtgt	r0, #:upper16:262143	@,
	bl	__aeabi_idiv	@
	b	.L30	@
.L172:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36820,
	b	.L16	@
	.fnend
	.size	H264HAL_V200R004_SetSliceMsg, .-H264HAL_V200R004_SetSliceMsg
	.align	2
	.global	H264HAL_V200R004_SetPicMsg
	.type	H264HAL_V200R004_SetPicMsg, %function
H264HAL_V200R004_SetPicMsg:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pParam, pParam
	mov	r0, r2	@, PicMsgSlotPhy
	mov	r5, r1	@ pHwMem, pHwMem
	mov	r6, r3	@ FstSlcMsgSlotPhy, FstSlcMsgSlotPhy
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36656
	beq	.L230	@,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	movw	r3, #:lower16:.LANCHOR0	@ tmp217,
	ldr	lr, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movt	r3, #:upper16:.LANCHOR0	@ tmp217,
	ldr	r1, [r4, #36]	@ D.36665, <variable>.transform_8x8_mode_flag
	bic	r6, r6, #15	@ tmp.1280, FstSlcMsgSlotPhy,
	ldr	r7, [r4, #40]	@ D.36668, <variable>.entropy_coding_mode_flag
	add	r2, lr, ip, asl #1	@, tmp220, <variable>.mb_adaptive_frame_field_flag, <variable>.pic_structure,
	ldr	ip, [r4, #44]	@ D.36671, <variable>.constrained_intra_pred_flag
	add	lr, r3, r2, asl #2	@, tmp224, tmp217, tmp220,
	mov	r1, r1, asl #28	@ tmp206, D.36665,
	ldr	r2, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	orr	r1, r1, r7, asl #27	@, tmp207, tmp206, D.36668,
	ldr	r7, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	orr	r1, r1, ip, asl #26	@, tmp209, tmp207, D.36671,
	ldr	ip, [lr, #76]	@ tmp227, g_StructTrans
	sub	r2, r2, #1	@ tmp210, <variable>.pic_width_in_mb,
	ldr	lr, [r4, #16]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	sub	r7, r7, #1	@ tmp213, <variable>.pic_height_in_mb,
	orr	r1, r1, r2	@ tmp212, tmp209, tmp210
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	lr, #0	@ <variable>.nal_ref_idc,
	orr	r3, r1, r7, asl #16	@, tmp216, tmp212, tmp213,
	orr	r1, r3, ip, asl #14	@, tmp228, tmp216, tmp227,
	movne	lr, #-2147483648	@, iftmp.498,
	cmp	r2, #1	@ <variable>.chroma_format_idc,
	orr	r3, r1, lr	@ tmp229, tmp228, iftmp.498
	moveq	r2, #33554432	@ iftmp.499,
	movne	r2, #0	@ iftmp.499,
	orr	lr, r3, r2	@ tmp.501, tmp229, iftmp.499
	str	lr, [r0, #0]	@ tmp.501,* D.36656
	ldr	r1, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	bic	r3, r1, #15	@ tmp.1263, <variable>.CurrPicImg2DAddr,
	str	r3, [r0, #4]	@ tmp.1263,
	ldr	lr, [r4, #48]	@ D.36697, <variable>.ThisPoc
	str	lr, [r0, #8]	@ D.36697,
	ldr	r1, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r1, #0	@ <variable>.mb_adaptive_frame_field_flag,
	streq	r1, [r0, #12]	@ <variable>.mb_adaptive_frame_field_flag,
	ldrne	r1, [r4, #52]	@ D.36701, <variable>.TopPoc
	strne	r1, [r0, #12]	@ D.36701,
	ldrne	r1, [r4, #56]	@ D.36703, <variable>.BottomPoc
	str	r1, [r0, #16]	@ <variable>.mb_adaptive_frame_field_flag,
	ldr	r3, [r5, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	lr, r3, #15	@ tmp.1270, <variable>.SedTopAddr,
	str	lr, [r0, #20]	@ tmp.1270,
	ldr	r1, [r5, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r3, r1, #15	@ tmp.1272, <variable>.PmvTopAddr,
	str	r3, [r0, #24]	@ tmp.1272,
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	lr, #2	@ <variable>.pic_structure,
	ldreq	r2, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	ldrne	lr, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	addeq	r2, r2, #206	@ tmp240, <variable>.CurrPicPmvIdc,
	ldreq	lr, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	addne	lr, lr, #206	@ tmp237, <variable>.CurrPicPmvIdc,
	ldreq	r2, [r4, r2, asl #2]	@ tmp243, <variable>.PmvPhyAddr
	ldrne	lr, [r4, lr, asl #2]	@ tmp239, <variable>.PmvPhyAddr
	addeq	lr, r2, lr	@ tmp242, tmp243, <variable>.half_pmvblk_offset
	bic	r1, lr, #15	@ tmp, tmp242,
	str	r1, [r0, #28]	@ tmp,
	ldr	r3, [r5, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	r3, r3, #15	@ tmp.1278, <variable>.RcnTopAddr,
	str	r3, [r0, #32]	@ tmp.1278,
	str	r6, [r0, #36]	@ tmp.1280,
	ldr	r1, [r4, #1116]	@ i.1269, <variable>.ApcSize
	cmp	r1, #0	@ i.1269,
	addne	ip, r0, #40	@ ivtmp.1259, D.36656,
	movne	r2, r4	@ ivtmp.1258, pParam
	movne	r3, #0	@ i.1283,
	beq	.L205	@,
.L204:
	ldr	r1, [r2, #924]	@ tmp249, <variable>.Apc2Idc
	add	r3, r3, #1	@ i.1283, i.1283,
	add	r2, r2, #4	@ ivtmp.1258, ivtmp.1258,
	add	lr, r4, r1, asl #2	@, tmp252, pParam, tmp249,
	ldr	r1, [lr, #308]	@ tmp254, <variable>.ImgPhyAddr
	bic	lr, r1, #15	@ tmp.1282, tmp254,
	str	lr, [ip], #4	@ tmp.1282,
	ldr	r1, [r4, #1116]	@ i.1269, <variable>.ApcSize
	cmp	r1, r3	@ i.1269, i.1283
	bhi	.L204	@,
	cmp	r1, #15	@ i.1269,
	bhi	.L206	@,
.L205:
	ldr	r2, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r3, r1, #10	@ tmp246, i.1269,
	add	ip, r1, #1	@ i.1269, i.1269,
	rsb	r1, r1, #15	@ tmp280, i.1269,
	add	r3, r0, r3, asl #2	@, ivtmp.1252, D.36656, tmp246,
	cmp	ip, #15	@ i.1269,
	add	lr, r4, r2, asl #2	@, tmp259, pParam, <variable>.Apc2Idc,
	and	r1, r1, #1	@ tmp281, tmp280,
	ldr	r2, [lr, #308]	@ tmp261, <variable>.ImgPhyAddr
	bic	r2, r2, #15	@ tmp.1285, tmp261,
	str	r2, [r3], #4	@ tmp.1285,
	bhi	.L206	@,
	cmp	r1, #0	@ tmp281,
	beq	.L203	@,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	ip, ip, #1	@ i.1269, i.1269,
	cmp	ip, #15	@ i.1269,
	add	r2, r4, lr, asl #2	@, tmp317, pParam, <variable>.Apc2Idc,
	ldr	lr, [r2, #308]	@ tmp319, <variable>.ImgPhyAddr
	bic	r2, lr, #15	@ tmp.1285, tmp319,
	str	r2, [r3], #4	@ tmp.1285,
	bhi	.L206	@,
.L203:
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	mov	r2, r3	@ tmp283, ivtmp.1252
	add	ip, ip, #2	@ i.1269, i.1269,
	cmp	ip, #15	@ i.1269,
	add	r1, r4, lr, asl #2	@, tmp289, pParam, <variable>.Apc2Idc,
	ldr	lr, [r1, #308]	@ tmp291, <variable>.ImgPhyAddr
	bic	r1, lr, #15	@ tmp.1285, tmp291,
	str	r1, [r2], #4	@ tmp.1285,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r1, r4, lr, asl #2	@, tmp298, pParam, <variable>.Apc2Idc,
	ldr	lr, [r1, #308]	@ tmp300, <variable>.ImgPhyAddr
	bic	r1, lr, #15	@ tmp.1285, tmp300,
	str	r1, [r3, #4]	@ tmp.1285,
	add	r3, r2, #4	@ ivtmp.1252, tmp283,
	bls	.L203	@,
.L206:
	ldr	ip, [r5, #1076]	@ <variable>.H264MnAddr, <variable>.H264MnAddr
	bic	r3, ip, #15	@ tmp.1288, <variable>.H264MnAddr,
	str	r3, [r0, #104]	@ tmp.1288,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, #0	@ i,
	addne	r2, r0, #108	@ ivtmp.1244, D.36656,
	movne	r3, r4	@ ivtmp.1243, pParam
	movne	r1, #0	@ i.1265,
	beq	.L210	@,
.L209:
	ldr	lr, [r3, #988]	@ tmp.1290, <variable>.Apc2Poc
	add	r1, r1, #1	@ i.1265, i.1265,
	str	lr, [r2, #0]	@ tmp.1290,* ivtmp.1244
	ldr	ip, [r3, #1052]	@ tmp.1292, <variable>.Apc2Poc
	add	r3, r3, #4	@ ivtmp.1243, ivtmp.1243,
	str	ip, [r2, #4]	@ tmp.1292,
	add	r2, r2, #8	@ ivtmp.1244, ivtmp.1244,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, r1	@ i, i.1265
	bhi	.L209	@,
	cmp	ip, #15	@ i,
	bhi	.L211	@,
.L210:
	add	r2, ip, #14	@ tmp265, i,
	add	r3, r0, ip, asl #3	@, tmp264, D.36656, i,
	add	r7, ip, #1	@ i, i,
	add	r1, r3, #108	@ ivtmp.1235, tmp264,
	add	r2, r0, r2, asl #3	@, ivtmp.1238, D.36656, tmp265,
	cmp	r7, #15	@ i,
	rsb	lr, ip, #15	@ tmp275, i,
	mov	r3, #0	@ tmp272,
	and	ip, lr, #1	@ tmp276, tmp275,
	str	r3, [r1], #8	@ tmp272,
	str	r3, [r2], #8	@ tmp272,
	bhi	.L211	@,
	cmp	ip, #0	@ tmp276,
	beq	.L208	@,
	add	r7, r7, #1	@ i, i,
	str	r3, [r1], #8	@ tmp272,
	cmp	r7, #15	@ i,
	str	r3, [r2], #8	@ tmp272,
	bhi	.L211	@,
.L208:
	add	r7, r7, #2	@ i, i,
	mov	r6, r1	@ tmp278, ivtmp.1235
	cmp	r7, #15	@ i,
	mov	ip, r2	@ tmp279, ivtmp.1238
	str	r3, [r6], #8	@ tmp272,
	str	r3, [ip], #8	@ tmp272,
	str	r3, [r1, #8]	@ tmp272,
	add	r1, r6, #8	@ ivtmp.1235, tmp278,
	str	r3, [r2, #8]	@ tmp272,
	add	r2, ip, #8	@ ivtmp.1238, tmp279,
	bls	.L208	@,
.L211:
	ldr	r2, [r5, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	add	ip, r0, #224	@ D.38266, ivtmp.1231,
	mov	r3, r0	@ ivtmp.1231, D.36656
	bic	r1, r2, #15	@ tmp.1295, <variable>.DblkTopAddr,
	str	r1, [r0, #236]	@ tmp.1295,
.L212:
	ldr	r2, [r4, #60]	@ tmp270, <variable>.Qmatrix
	add	r1, r4, #4	@ tmp273, ivtmp.1229,
	add	lr, r3, #4	@ tmp274, ivtmp.1231,
	add	r4, r1, #4	@ ivtmp.1229, tmp273,
	str	r2, [r3, #256]	@ tmp270,
	add	r3, lr, #4	@ ivtmp.1231, tmp274,
	ldr	r0, [r1, #60]	@ tmp312, <variable>.Qmatrix
	cmp	r3, ip	@ ivtmp.1231, D.38266
	str	r0, [lr, #256]	@ tmp312,
	bne	.L212	@,
	mov	r0, #0	@ D.36659,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L230:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36659,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	H264HAL_V200R004_SetPicMsg, .-H264HAL_V200R004_SetPicMsg
	.align	2
	.global	H264HAL_V200R004_CutSliceChain
	.type	H264HAL_V200R004_CutSliceChain, %function
H264HAL_V200R004_CutSliceChain:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.36612,
	beq	.L235	@,
	mov	r0, #0	@ tmp138,
	str	r0, [r3, #252]	@ tmp138,
	ldmfd	sp!, {r3, pc}	@
.L235:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36615,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	H264HAL_V200R004_CutSliceChain, .-H264HAL_V200R004_CutSliceChain
	.align	2
	.global	H264HAL_V200R004_StartDec
	.type	H264HAL_V200R004_StartDec, %function
H264HAL_V200R004_StartDec:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ pParam, pParam
	.pad #52
	sub	sp, sp, #52	@,,
	bls	.L278	@,
.L257:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37324,
.L239:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L278:
	beq	.L257	@,
	cmp	r0, #0	@ pParam,
	beq	.L257	@,
	ldr	r3, [r0, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #512	@ <variable>.pic_width_in_mb,
	bhi	.L257	@,
	ldr	r0, [r0, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #512	@ <variable>.pic_height_in_mb,
	bhi	.L257	@,
	ldr	r1, [r5, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	cmp	r1, #0	@ <variable>.pFirstSlice,
	beq	.L257	@,
	movw	r7, #:lower16:g_HwMem	@ tmp514,
	movt	r7, #:upper16:g_HwMem	@ tmp514,
	ldr	r2, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r2, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L289	@,
.L245:
	movw	r3, #:lower16:.LANCHOR1	@ tmp249,
	movt	r3, #:upper16:.LANCHOR1	@ tmp249,
	ldr	r2, [r3, #0]	@ StartCnt, StartCnt
	add	lr, r2, #1	@ tmp252, StartCnt,
	str	lr, [r3, #0]	@ tmp252, StartCnt
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r5, #920]	@ D.37352, <variable>.mbtodec
	add	r0, sp, #48	@ D32.541,,
	mov	r1, #0	@ tmp253,
	cmp	r4, #262144	@ D.37352,
	suble	r4, r4, #1	@ iftmp.542, D.37352,
	str	r1, [r0, #-4]!	@ tmp253, D32
	bicle	r4, r4, #-16777216	@ iftmp.542, iftmp.542,
	ldr	ip, [r0, #0]	@ tmp255,* D32.541
	movwgt	r4, #:lower16:262143	@ iftmp.542,
	bicle	r4, r4, #15728640	@ iftmp.542, iftmp.542,
	movtgt	r4, #:upper16:262143	@ iftmp.542,
	bfi	ip, r4, #0, #20	@ tmp255, iftmp.542,,
	orr	fp, ip, #1073741824	@ tmp258, tmp255,
	bic	r6, fp, #-2147483648	@ tmp259, tmp258,
	bic	sl, r6, #4194304	@ tmp260, tmp259,
	bfc	sl, #23, #1	@ tmp260,,
	orr	r2, sl, #16777216	@ tmp263, tmp260,
	mov	sl, #1	@ tmp278,
	bfc	r2, #25, #1	@ tmp263,,
	str	r2, [r0, #0]	@ tmp263,* D32.541
	str	r2, [r5, #1136]	@ D32, <variable>.basic_cfg0
	ldr	r3, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #8]	@ D32,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #912]	@ <variable>.imgstride, <variable>.imgstride
	ldrb	fp, [r5, #2]	@ zero_extendqisi2	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	movw	ip, #:lower16:16368	@ tmp272,
	movt	ip, #:upper16:16368	@ tmp272,
	ldr	r2, [r5, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r4, r1, lsr #2	@ tmp271, <variable>.imgstride,
	and	r6, r4, ip	@ tmp272, tmp271, tmp272
	bfi	r6, fp, #14, #1	@ tmp272, <variable>.NewPicFlag,,
	bic	r0, r6, #32768	@ tmp277, tmp272,
	bfi	r0, sl, #16, #12	@ tmp277, tmp278,,
	bic	r3, r0, #805306368	@ tmp279, tmp277,
	orr	r1, r3, #536870912	@ tmp283, tmp279,
	bfi	r1, r2, #30, #1	@ tmp283, <variable>.Compress_en,,
	orr	r4, r1, #-2147483648	@ tmp284, tmp283,
	str	r4, [r5, #1140]	@ tmp284, <variable>.basic_cfg1
	ldr	ip, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [sp, #44]	@ tmp284,
	str	r4, [ip, #12]	@ tmp284,
	bl	vfmw_dprint_nothing	@
	ldr	fp, [r7, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r6, fp, #15	@ tmp293, <variable>.MsgSlotAddr,
	str	r6, [r5, #1144]	@ tmp293, <variable>.avm_addr
	ldr	sl, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [sp, #44]	@ tmp293, <variable>.av_msg_addr
	str	r6, [sl, #16]	@ tmp293,
	movw	sl, #:lower16:s_RegPhyBaseAddr	@ tmp317,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r7, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movt	sl, #:upper16:s_RegPhyBaseAddr	@ tmp317,
	bic	r3, r0, #15	@ tmp301, <variable>.MsgSlotAddr,
	str	r3, [r5, #1148]	@ tmp301, <variable>.vam_addr
	ldr	r1, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #44]	@ tmp301, <variable>.va_msg_addr
	str	r3, [r1, #20]	@ tmp301,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r4, r2, #15	@ tmp308, <variable>.stream_base_addr,
	str	r4, [r5, #1152]	@ tmp308, <variable>.stream_base_addr_reg_tmp
	ldr	ip, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [sp, #44]	@ tmp308, <variable>.stream_base_addr
	str	r4, [ip, #24]	@ tmp308,
	bl	vfmw_dprint_nothing	@
	ldr	fp, [r5, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	cmp	fp, #120	@ <variable>.pic_width_in_mb,
	movhi	fp, #0	@ tmp267,
	movls	fp, #65536	@ tmp314,
	str	fp, [sp, #44]	@ tmp314, D32
	bl	MEM_ReadPhyWord	@
	ldr	r6, [sp, #44]	@ D32, D32
	mvn	fp, #0	@ tmp445,
	cmp	r6, #0	@ D32,
	mov	r6, #0	@ tmp342,
	biceq	r1, r0, #65536	@ datTmp, datTmp.1409,
	orrne	r1, r0, #65536	@ datTmp, datTmp.1409,
	ldr	r0, [sl, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	movw	sl, #:lower16:g_HwMem	@ tmp328,
	movt	sl, #:upper16:g_HwMem	@ tmp328,
	add	r0, r0, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	movw	r3, #:lower16:3148803	@ tmp320,
	movt	r3, #:upper16:3148803	@ tmp320,
	str	r3, [r5, #1160]	@ tmp320, <variable>.sed_to
	str	r3, [r5, #1164]	@ tmp320, <variable>.itrans_to
	str	r3, [r5, #1168]	@ tmp320, <variable>.pmv_to
	str	r3, [r5, #1172]	@ tmp320, <variable>.prc_to
	str	r3, [r5, #1176]	@ tmp320, <variable>.rcn_to
	str	r3, [r5, #1180]	@ tmp320, <variable>.dblk_to
	str	r3, [r5, #1184]	@ tmp320, <variable>.ppfd_to
	ldr	r1, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #44]	@ tmp320, D32
	str	r3, [r1, #60]	@ tmp320,
	ldr	r4, [sp, #44]	@ D32.1428, D32
	ldr	r2, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [r2, #64]	@ D32.1428,
	ldr	r0, [sp, #44]	@ D32.1431, D32
	ldr	ip, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [ip, #68]	@ D32.1431,
	ldr	r1, [sp, #44]	@ D32.1434, D32
	ldr	r3, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #72]	@ D32.1434,
	ldr	r4, [sp, #44]	@ D32.1437, D32
	ldr	r2, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r4, [r2, #76]	@ D32.1437,
	ldr	r0, [sp, #44]	@ D32.1440, D32
	ldr	ip, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [ip, #80]	@ D32.1440,
	ldr	r1, [sp, #44]	@ D32.1443, D32
	ldr	r3, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #84]	@ D32.1443,
	ldr	r2, [r5, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	str	r6, [sp, #44]	@ tmp342, D32
	add	r4, r5, r2, asl #2	@, tmp348, pParam, <variable>.CurrPicImgIdc,
	ldr	ip, [r4, #308]	@ tmp350, <variable>.ImgPhyAddr
	bic	r0, ip, #15	@ tmp351, tmp350,
	str	r0, [r5, #1188]	@ tmp351, <variable>.ystaddr_1d
	ldr	r1, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [sp, #44]	@ tmp351, <variable>.ystaddr_1d
	str	r0, [r1, #96]	@ tmp351,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #912]	@ <variable>.imgstride, <variable>.imgstride
	ldr	r4, [r5, #24]	@ height_in_mb, <variable>.frame_height_in_mb
	str	r3, [r5, #1192]	@ <variable>.imgstride, <variable>.ystride_1d
	ldr	r2, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #44]	@ <variable>.imgstride, <variable>.ystride_1d
	str	r3, [r2, #100]	@ <variable>.imgstride,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #912]	@ <variable>.imgstride, <variable>.imgstride
	add	r0, r4, #1	@ tmp365, height_in_mb,
	mov	r4, ip, asl #1	@ tmp363, <variable>.imgstride,
	mov	r1, r0, lsr #1	@ tmp366, tmp365,
	mul	r3, r1, r4	@ tmp367, tmp366, tmp363
	str	r3, [r5, #1196]	@ tmp367, <variable>.uvoffset_1d
	ldr	r2, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #44]	@ tmp367, <variable>.uvoffset_1d
	str	r3, [r2, #104]	@ tmp367,
	bl	vfmw_dprint_nothing	@
	str	r6, [r5, #1200]	@ tmp342, <variable>.prcnum_1d_cnt
	ldr	ip, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [ip, #108]	@ tmp342,
	ldr	r0, [r7, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	bic	r1, r0, #15	@ tmp379, <variable>.PpfdBufAddr,
	str	r1, [r5, #1212]	@ tmp379, <variable>.ppfd_buf_addr
	ldr	r4, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [sp, #44]	@ tmp379, <variable>.ppfd_buf_addr
	str	r1, [r4, #128]	@ tmp379,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	r6, [sp, #44]	@ tmp342, D32
	strh	r2, [sp, #44]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	ldr	r3, [sp, #44]	@ D32, D32
	str	r3, [r5, #1216]	@ D32, <variable>.ppfd_buf_len
	ldr	ip, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #132]	@ D32,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #1260]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r1, [r5, #1256]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r4, [r5, #1264]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r0, #3	@ tmp392, <variable>.RefPicType,
	ldr	ip, [r5, #1268]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r3, r1, #3	@ D32.1494, <variable>.RefPicType,
	and	r0, r4, #3	@ tmp395, <variable>.RefPicType,
	ldr	r4, [r5, #1272]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r3, r2, asl #2	@, temp.1499, D32.1494, tmp392,
	and	ip, ip, #3	@ tmp398, <variable>.RefPicType,
	ldr	r2, [r5, #1276]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r1, r0, asl #4	@, temp.1505, temp.1499, tmp395,
	and	r1, r4, #3	@ tmp401, <variable>.RefPicType,
	ldr	r4, [r5, #1280]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r0, r3, ip, asl #6	@, temp.1511, temp.1505, tmp398,
	and	r2, r2, #3	@ tmp404, <variable>.RefPicType,
	ldr	ip, [r5, #1284]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r0, r1, asl #8	@, temp.1517, temp.1511, tmp401,
	and	r0, r4, #3	@ tmp407, <variable>.RefPicType,
	ldr	r4, [r5, #1288]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r3, r2, asl #10	@, temp.1523, temp.1517, tmp404,
	and	ip, ip, #3	@ tmp410, <variable>.RefPicType,
	ldr	r2, [r5, #1292]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r1, r0, asl #12	@, temp.1529, temp.1523, tmp407,
	and	r1, r4, #3	@ tmp413, <variable>.RefPicType,
	ldr	r4, [r5, #1296]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r0, r3, ip, asl #14	@, temp.1535, temp.1529, tmp410,
	and	r2, r2, #3	@ tmp416, <variable>.RefPicType,
	ldr	ip, [r5, #1300]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r0, r1, asl #16	@, temp.1541, temp.1535, tmp413,
	and	r0, r4, #3	@ tmp419, <variable>.RefPicType,
	ldr	r4, [r5, #1304]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r3, r2, asl #18	@, temp.1547, temp.1541, tmp416,
	and	ip, ip, #3	@ tmp422, <variable>.RefPicType,
	ldr	r2, [r5, #1308]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r1, r0, asl #20	@, temp.1553, temp.1547, tmp419,
	and	r1, r4, #3	@ tmp425, <variable>.RefPicType,
	orr	r0, r3, ip, asl #22	@, temp.1559, temp.1553, tmp422,
	ldr	r4, [r5, #1312]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r2, r2, #3	@ tmp428, <variable>.RefPicType,
	orr	r3, r0, r1, asl #24	@, temp.1565, temp.1559, tmp425,
	ldr	r1, [r5, #1316]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	ip, r3, r2, asl #26	@, temp.1571, temp.1565, tmp428,
	and	r0, r4, #3	@ tmp431, <variable>.RefPicType,
	ldr	r2, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	orr	r4, ip, r0, asl #28	@, temp.1577, temp.1571, tmp431,
	orr	r3, r4, r1, asl #30	@, D.37458, temp.1577, <variable>.RefPicType,
	str	r3, [sp, #44]	@ D.37458, D32
	str	r3, [r2, #148]	@ D.37458,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [sp, #44]	@ tmp342, D32
	str	r6, [ip, #152]	@ tmp342,
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r7, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r5	@, pParam
	mov	r1, sl	@, tmp328
	str	fp, [r4, #32]	@ tmp445,
	ldr	r2, [r7, #44]	@, <variable>.MsgSlotAddr
	ldr	r3, [r7, #48]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_SetPicMsg	@
	ldr	r4, [r5, #1124]	@ pSlicePara, <variable>.pFirstSlice
	cmp	r4, r6	@ pSlicePara,
	beq	.L287	@,
	ldr	r8, [r4, #48]	@ D.37469, <variable>.first_mb_in_slice
	cmp	r8, #0	@ D.37469,
	moveq	r9, r8	@ AddSlice0Flag, D.37469
	bne	.L290	@,
.L255:
	ldr	r1, [r5, #1120]	@ D.37516, <variable>.SliceParaNum
	cmp	r1, #0	@ D.37516,
	ble	.L257	@,
	ldr	ip, [r4, #48]	@ prephitmp.1367, <variable>.first_mb_in_slice
	add	sl, r9, #5	@ pretmp.1359, AddSlice0Flag,
	mov	r8, #0	@ pre_first_mb_in_slice,
	add	r9, r9, #4	@ pretmp.1358, AddSlice0Flag,
	mov	r2, r4	@ tmp_pSlicePara.1492, pSlicePara
	mov	r6, r8	@ i, pre_first_mb_in_slice
.L271:
	cmp	r6, #0	@ i,
	movle	r3, #0	@, tmp486
	movgt	r3, #1	@, tmp486
	add	lr, r9, r6	@ tmp468, pretmp.1358, i
	cmp	ip, r8	@ prephitmp.1367, pre_first_mb_in_slice
	add	r0, r6, sl	@ D.37504, i, pretmp.1359
	add	lr, r7, lr, asl #2	@, tmp472, tmp514, tmp468,
	movhi	r3, #0	@, tmp486,
	cmp	r3, #0	@ tmp486,
	add	r3, r7, r0, asl #2	@, tmp478, tmp514, D.37504,
	ldr	lr, [lr, #28]	@ prev_slcmsg_phy.1485, <variable>.MsgSlotAddr
	movne	r4, r2	@ tmp_pSlicePara, tmp_pSlicePara.1492
	ldr	r3, [r3, #28]	@ cur_slcmsg_phy.1486, <variable>.MsgSlotAddr
	bne	.L269	@,
	add	r6, r6, #1	@ j, i,
	cmp	r1, r6	@ D.37516, j
	movle	r4, r2	@ tmp_pSlicePara, tmp_pSlicePara.1492
	ble	.L260	@,
	ldr	r4, [r2, #4056]	@ tmp_pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ tmp_pSlicePara,
	beq	.L257	@,
	ldr	r8, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r8	@ prephitmp.1367, <variable>.first_mb_in_slice
	bcc	.L260	@,
	mvn	r8, r6	@ tmp520, j
	add	r8, r8, r1	@ tmp519, tmp520, D.37516
	tst	r8, #1	@ tmp519,
	bne	.L280	@,
.L277:
	add	r6, r6, #1	@ j, j,
	cmp	r1, r6	@ D.37516, j
	ble	.L260	@,
	ldr	r4, [r4, #4056]	@ tmp_pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ tmp_pSlicePara,
	beq	.L257	@,
	ldr	r8, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r8	@ prephitmp.1367, <variable>.first_mb_in_slice
	bcc	.L260	@,
.L280:
	ldr	r4, [r4, #4056]	@ tmp_pSlicePara, <variable>.pNextSlice
	add	r6, r6, #1	@ j, j,
	cmp	r4, #0	@ tmp_pSlicePara,
	beq	.L257	@,
	ldr	r8, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r8	@ prephitmp.1367, <variable>.first_mb_in_slice
	bcs	.L277	@,
.L260:
	cmp	r6, r1	@ j, D.37516
	beq	.L264	@,
	cmp	r0, #140	@ D.37504,
	beq	.L264	@,
	add	r8, sl, r6	@ tmp495, pretmp.1359, j
	ldr	fp, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	add	r0, r7, r8, asl #2	@, tmp499, tmp514, tmp495,
	sub	r8, fp, #1	@ last_mb_in_slice, <variable>.first_mb_in_slice,
	ldr	fp, [r0, #28]	@ next_slcmsg_phy, <variable>.MsgSlotAddr
.L266:
	sub	r1, r1, #1	@ tmp501, D.37516,
	sub	r6, r6, #1	@ i, j,
	cmp	r1, r6	@ tmp501, i
	mov	r0, r5	@, pParam
	moveq	r1, #0	@,
	streq	r1, [r2, #4056]	@, <variable>.pNextSlice
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	str	r8, [sp, #12]	@ last_mb_in_slice,
	mov	r8, ip	@ pre_first_mb_in_slice, prephitmp.1367
	str	lr, [sp, #0]	@ prev_slcmsg_phy.1485,
	stmib	sp, {fp, ip}	@ phole stm
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L257	@,
	cmp	fp, #0	@ next_slcmsg_phy,
	beq	.L282	@,
	ldr	r1, [r5, #1120]	@ D.37516, <variable>.SliceParaNum
.L269:
	add	r6, r6, #1	@ i, i,
	mov	r3, r1	@ D.37516, D.37516
	cmp	r1, r6	@ D.37516, i
	ble	.L270	@,
	mov	r2, r4	@ tmp_pSlicePara.1492, tmp_pSlicePara
	ldr	ip, [r4, #48]	@ prephitmp.1367, <variable>.first_mb_in_slice
	b	.L271	@
.L264:
	ldr	r0, [r5, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	mov	fp, #0	@ next_slcmsg_phy,
	ldr	r8, [r5, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	fp, [r2, #4056]	@ next_slcmsg_phy, <variable>.pNextSlice
	ldr	r1, [r5, #1120]	@ D.37516, <variable>.SliceParaNum
	mul	r8, r8, r0	@ tmp489, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	sub	r8, r8, #1	@ last_mb_in_slice, tmp489,
	b	.L266	@
.L290:
	ldr	r0, [r4, #8]	@, <variable>.valid_bitlen
	mov	r9, #1	@ tmp452,
	str	r6, [r4, #48]	@ tmp342, <variable>.first_mb_in_slice
	mov	r1, sl	@, tmp328
	sub	ip, r8, #1	@ tmp466, D.37469,
	str	r0, [sp, #36]	@, %sfp
	mov	r0, r5	@, pParam
	ldr	r2, [r4, #12]	@, <variable>.valid_bitlen
	str	r9, [r4, #8]	@ tmp452, <variable>.valid_bitlen
	str	r2, [sp, #32]	@, %sfp
	mov	r2, r4	@, pSlicePara
	ldr	lr, [r4, #16]	@, <variable>.bitsoffset
	str	r6, [r4, #12]	@ tmp342, <variable>.valid_bitlen
	str	lr, [sp, #28]	@, %sfp
	ldr	r3, [r4, #20]	@, <variable>.bitsoffset
	str	r6, [r4, #16]	@ tmp342, <variable>.bitsoffset
	str	r3, [sp, #24]	@, %sfp
	ldr	lr, [r4, #24]	@, <variable>.bytespos
	str	r6, [r4, #20]	@ tmp342, <variable>.bitsoffset
	str	lr, [sp, #20]	@, %sfp
	ldr	r3, [r4, #28]	@, <variable>.bytespos
	str	r6, [r4, #24]	@ tmp342, <variable>.bytespos
	str	r3, [sp, #16]	@, %sfp
	str	r6, [r4, #28]	@ tmp342, <variable>.bytespos
	ldr	r3, [sl, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	ldr	lr, [sl, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	ldr	sl, [sl, #52]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	str	r6, [sp, #8]	@ tmp342,
	str	lr, [sp, #0]	@ <variable>.MsgSlotAddr,
	str	sl, [sp, #4]	@ <variable>.MsgSlotAddr,
	str	ip, [sp, #12]	@ tmp466,
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L287	@,
	ldr	r0, [sp, #16]	@, %sfp
	str	r8, [r4, #48]	@ D.37469, <variable>.first_mb_in_slice
	str	r0, [r4, #28]	@, <variable>.bytespos
	ldr	r2, [sp, #36]	@, %sfp
	str	r2, [r4, #8]	@, <variable>.valid_bitlen
	ldr	lr, [sp, #32]	@, %sfp
	str	lr, [r4, #12]	@, <variable>.valid_bitlen
	ldr	r3, [sp, #28]	@, %sfp
	str	r3, [r4, #16]	@, <variable>.bitsoffset
	ldr	ip, [sp, #24]	@, %sfp
	str	ip, [r4, #20]	@, <variable>.bitsoffset
	ldr	r1, [sp, #20]	@, %sfp
	str	r1, [r4, #24]	@, <variable>.bytespos
	ldr	r4, [r5, #1124]	@ pSlicePara, <variable>.pFirstSlice
	b	.L255	@
.L289:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.37341
	beq	.L257	@,
	str	r0, [r7, #0]	@ D.37341, <variable>.pVdmRegVirAddr
	b	.L245	@
.L282:
	ldr	r3, [r5, #1120]	@ D.37516, <variable>.SliceParaNum
.L270:
	cmp	r3, #0	@ D.37516,
	ble	.L257	@,
	add	ip, r9, r3	@ tmp506, pretmp.1358, D.37516
	add	r7, r7, ip, asl #2	@, tmp510, tmp514, tmp506,
	ldr	r0, [r7, #28]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_CutSliceChain	@
	mov	r0, #0	@ D.37324,
	b	.L239	@
.L287:
	bl	vfmw_dprint_nothing	@
	mov	r0, fp	@ D.37324, tmp445
	b	.L239	@
	.fnend
	.size	H264HAL_V200R004_StartDec, .-H264HAL_V200R004_StartDec
	.align	2
	.global	Write_V200R004_CabacTab
	.type	Write_V200R004_CabacTab, %function
Write_V200R004_CabacTab:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L294	@,
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #5120	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L294:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	Write_V200R004_CabacTab, .-Write_V200R004_CabacTab
	.align	2
	.global	H264HAL_V200R004_InitHal
	.type	H264HAL_V200R004_InitHal, %function
H264HAL_V200R004_InitHal:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r0, [r0, #1076]	@, <variable>.H264MnAddr
	bl	Write_V200R004_CabacTab	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	H264HAL_V200R004_InitHal, .-H264HAL_V200R004_InitHal
	.global	g_CabacMN
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_SliceTypeForPMV, %object
	.size	g_SliceTypeForPMV, 12
g_SliceTypeForPMV:
	.word	1
	.word	2
	.word	0
	.type	g_ListStructFrame, %object
	.size	g_ListStructFrame, 32
g_ListStructFrame:
	.word	0
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	2
	.type	g_ListStructField, %object
	.size	g_ListStructField, 32
g_ListStructField:
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.type	g_StructTrans, %object
	.size	g_StructTrans, 32
g_StructTrans:
	.word	0
	.word	3
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	g_CabacMN, %object
	.size	g_CabacMN, 5120
g_CabacMN:
	.word	388044546
	.word	352326208
	.word	153820416
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	388044546
	.word	352326208
	.word	153820416
	.word	3013710
	.word	-44040151
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	203950899
	.word	238747648
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	219088691
	.word	38797353
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	421532977
	.word	355860480
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	119732056
	.word	-327221207
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	354489138
	.word	289210368
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	-276827290
	.word	5437770
	.word	-345250433
	.word	-511711105
	.word	-295705217
	.word	-344792449
	.word	0
	.word	0
	.word	-277089165
	.word	-260377229
	.word	-45614550
	.word	-80544458
	.word	-29491142
	.word	20971080
	.word	-11864229
	.word	0
	.word	-111282857
	.word	-45221049
	.word	-62915516
	.word	-195757762
	.word	-113178563
	.word	87621186
	.word	20971581
	.word	-28442624
	.word	402657033
	.word	135859474
	.word	252251411
	.word	170200082
	.word	102568993
	.word	253625389
	.word	20578366
	.word	121438208
	.word	-94504364
	.word	-129040318
	.word	-12124098
	.word	-29557189
	.word	-78906050
	.word	-63244478
	.word	-11599801
	.word	54788096
	.word	252053011
	.word	118492174
	.word	302845195
	.word	219090704
	.word	202837271
	.word	252972570
	.word	237769000
	.word	288292864
	.word	-197132732
	.word	-246090904
	.word	-79430885
	.word	-47710676
	.word	3076160
	.word	-129698226
	.word	-95553962
	.word	0
	.word	20055860
	.word	170065964
	.word	187040045
	.word	3015980
	.word	521208115
	.word	120724499
	.word	270601790
	.word	0
	.word	203819821
	.word	254217002
	.word	220991533
	.word	204016177
	.word	505549354
	.word	171381043
	.word	288227417
	.word	0
	.word	170719550
	.word	254021160
	.word	270208029
	.word	19665956
	.word	304088362
	.word	19925566
	.word	288229696
	.word	0
	.word	403772693
	.word	420880155
	.word	371004195
	.word	238160441
	.word	121634381
	.word	-61670050
	.word	155579501
	.word	0
	.word	-45680547
	.word	-161815937
	.word	-195235529
	.word	-163775938
	.word	-62786487
	.word	-129173168
	.word	-145166482
	.word	0
	.word	-210964124
	.word	-211422373
	.word	-195103144
	.word	-262867370
	.word	-111938729
	.word	-312606394
	.word	4782922
	.word	305856512
	.word	451745519
	.word	451878631
	.word	485237225
	.word	635773417
	.word	686040815
	.word	569714929
	.word	704259585
	.word	688979968
	.word	-194448031
	.word	-262080168
	.word	-128583339
	.word	-145362088
	.word	71499085
	.word	-45286836
	.word	171638604
	.word	-11337728
	.word	618472670
	.word	551953890
	.word	752886510
	.word	586230001
	.word	569975803
	.word	553657858
	.word	554506019
	.word	221904896
	.word	-11863455
	.word	-111416193
	.word	-178131884
	.word	-179307959
	.word	-62196906
	.word	-211749535
	.word	-311099392
	.word	0
	.word	-127471260
	.word	6225920
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	519707395
	.word	437649408
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-110890401
	.word	39780352
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	503126528
	.word	371064832
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-63374510
	.word	-112399747
	.word	-129041631
	.word	-63898059
	.word	-46206137
	.word	-162532266
	.word	-212143519
	.word	0
	.word	-62193080
	.word	-179569337
	.word	254735173
	.word	4063297
	.word	354808136
	.word	154734646
	.word	4066376
	.word	0
	.word	636494844
	.word	653797117
	.word	620963333
	.word	704652048
	.word	655756848
	.word	455415100
	.word	205783649
	.word	0
	.word	5045066
	.word	4650315
	.word	21233729
	.word	-230096066
	.word	71237444
	.word	-213185737
	.word	88083526
	.word	0
	.word	536421361
	.word	587014659
	.word	620700165
	.word	537600773
	.word	571221771
	.word	505225754
	.word	489100098
	.word	0
	.word	0
	.word	0
	.word	-45351145
	.word	19005739
	.word	3604023
	.word	3998016
	.word	4519772
	.word	0
	.word	-277287824
	.word	-294455979
	.word	-245566887
	.word	-431492783
	.word	-229638076
	.word	-230234056
	.word	-381360078
	.word	-179699712
	.word	401808115
	.word	686895602
	.word	738405638
	.word	740434230
	.word	324141056
	.word	0
	.word	0
	.word	0
	.word	-227871903
	.word	-245697446
	.word	-296159671
	.word	-145755562
	.word	-162924986
	.word	-163185854
	.word	-146736326
	.word	37421056
	.word	368449781
	.word	486022399
	.word	486743305
	.word	588520740
	.word	239271936
	.word	0
	.word	0
	.word	0
	.word	-444668830
	.word	-412751549
	.word	-464327586
	.word	-262935954
	.word	-346296730
	.word	-211950721
	.word	0
	.word	0
	.word	-111346855
	.word	-111086740
	.word	-95617492
	.word	2949172
	.word	-46072261
	.word	-62456757
	.word	-128782490
	.word	0
	.word	-27919794
	.word	-11798195
	.word	37094706
	.word	-45874894
	.word	103480401
	.word	20970566
	.word	4391481
	.word	-28573696
	.word	186384936
	.word	53215281
	.word	3015212
	.word	36896815
	.word	69665342
	.word	103678006
	.word	53871162
	.word	71237632
	.word	-211095446
	.word	-162010254
	.word	-294718878
	.word	-361829526
	.word	-295179413
	.word	-378739088
	.word	-161418145
	.word	-77922304
	.word	235604750
	.word	151720459
	.word	352917502
	.word	552673521
	.word	585836521
	.word	719268321
	.word	786704116
	.word	354222080
	.word	-47251647
	.word	-12978339
	.word	-145947880
	.word	2752560
	.word	3668539
	.word	-112724909
	.word	-178789769
	.word	0
	.word	186844224
	.word	20777763
	.word	303631384
	.word	220007716
	.word	-161613495
	.word	-28766930
	.word	154270052
	.word	0
	.word	104007225
	.word	120915508
	.word	104270637
	.word	237242421
	.word	-11401417
	.word	-45215954
	.word	371195732
	.word	0
	.word	-144840098
	.word	-78247613
	.word	-61802923
	.word	-12187844
	.word	154797373
	.word	204607282
	.word	305205558
	.word	0
	.word	770192851
	.word	820396501
	.word	736962550
	.word	503910938
	.word	337313849
	.word	-229442741
	.word	-312353411
	.word	0
	.word	-45418660
	.word	-128456322
	.word	20643101
	.word	-14417626
	.word	36436535
	.word	3801152
	.word	-45418918
	.word	0
	.word	154468917
	.word	87424573
	.word	3670072
	.word	-213910724
	.word	-12712903
	.word	-96140231
	.word	237438003
	.word	222560256
	.word	419897081
	.word	469965828
	.word	536879871
	.word	503717382
	.word	537468691
	.word	437983774
	.word	622074914
	.word	289800192
	.word	170460974
	.word	-13433039
	.word	137627945
	.word	103744055
	.word	220793388
	.word	103941429
	.word	221316159
	.word	104857600
	.word	452992000
	.word	536615686
	.word	570957322
	.word	404103443
	.word	371202591
	.word	355015212
	.word	388960321
	.word	239534080
	.word	87426620
	.word	104531525
	.word	4652061
	.word	85919530
	.word	20708922
	.word	-45548207
	.word	-178192384
	.word	0
	.word	54526269
	.word	155123712
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	21169467
	.word	155385856
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28967365
	.word	105250816
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	138151487
	.word	289472512
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-13631420
	.word	-62523304
	.word	3803141
	.word	168693266
	.word	219873832
	.word	3865926
	.word	-95422379
	.word	0
	.word	120721447
	.word	86770740
	.word	187759420
	.word	-12910533
	.word	371262764
	.word	237764430
	.word	3934533
	.word	0
	.word	270406176
	.word	304289309
	.word	404690726
	.word	304813097
	.word	188680507
	.word	155254622
	.word	-27658388
	.word	0
	.word	170658079
	.word	204145461
	.word	237111846
	.word	-46920408
	.word	287311660
	.word	119934258
	.word	171514411
	.word	0
	.word	353900308
	.word	437721888
	.word	471276568
	.word	388503584
	.word	471668522
	.word	322508341
	.word	373099350
	.word	0
	.word	0
	.word	0
	.word	-96274141
	.word	-114624467
	.word	-80677832
	.word	-96666818
	.word	-129828788
	.word	0
	.word	-61867705
	.word	-79300794
	.word	-129829308
	.word	-313920443
	.word	-263786173
	.word	-331420346
	.word	-264050111
	.word	-331415552
	.word	167647991
	.word	569845753
	.word	704523523
	.word	822684955
	.word	607846400
	.word	0
	.word	0
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	368255474
	.word	670641918
	.word	855784454
	.word	1024538402
	.word	708706304
	.word	0
	.word	0
	.word	0
	.word	-645927333
	.word	-278862255
	.word	-580720538
	.word	-379460233
	.word	-396104850
	.word	-295248769
	.word	0
	.word	0
	.word	5307225
	.word	-111215524
	.word	-378474169
	.word	-113442763
	.word	-79497907
	.word	-145688748
	.word	-162013569
	.word	0
	.word	-211291301
	.word	-145100196
	.word	-129174441
	.word	-378607511
	.word	-162599824
	.word	-278678913
	.word	-1166029185
	.word	-763428864
	.word	70060572
	.word	169812469
	.word	886379023
	.word	469771242
	.word	652681728
	.word	669917428
	.word	1721892864
	.word	955318272
	.word	-344004228
	.word	-328276354
	.word	-411242647
	.word	-444996235
	.word	-278469003
	.word	-445325446
	.word	-161484188
	.word	-127991808
	.word	335155962
	.word	234887924
	.word	535831015
	.word	568993252
	.word	669133538
	.word	802565596
	.word	836643311
	.word	537460736
	.word	2555969
	.word	-246096513
	.word	-345637593
	.word	-80348867
	.word	-179572403
	.word	-279189653
	.word	-412097414
	.word	0
	.word	-62719154
	.word	-62392248
	.word	37486391
	.word	-112788917
	.word	-128328073
	.word	-45408236
	.word	504812671
	.word	0
	.word	570170634
	.word	637219811
	.word	670512350
	.word	1170621377
	.word	754655239
	.word	937631745
	.word	6948
	.word	0
	.word	-277879694
	.word	-94765488
	.word	-61671595
	.word	-128843960
	.word	88080707
	.word	154665029
	.word	21301061
	.word	0
	.word	1169768385
	.word	1119899062
	.word	920204509
	.word	703996928
	.word	687808014
	.word	471471909
	.word	204933953
	.word	0
	.word	-28707736
	.word	-144973441
	.word	-179505620
	.word	-164301255
	.word	-147132344
	.word	-112853947
	.word	-78973098
	.word	0
	.word	3603261
	.word	3866428
	.word	-46270397
	.word	-413863350
	.word	-79624908
	.word	37290045
	.word	-146410170
	.word	305594368
	.word	568795874
	.word	618931940
	.word	652550894
	.word	602940146
	.word	553133562
	.word	587210250
	.word	470948377
	.word	489226240
	.word	-112854461
	.word	-263324096
	.word	37616195
	.word	-46136775
	.word	-46006974
	.word	4065587
	.word	-12386745
	.word	-28639232
	.word	635381724
	.word	685450978
	.word	786377442
	.word	686305763
	.word	653535478
	.word	654126843
	.word	521411870
	.word	422313984
	.word	53937976
	.word	121047101
	.word	37943074
	.word	18877215
	.word	87359031
	.word	-29163447
	.word	-128385024
	.word	0
	.word	-62455750
	.word	121438208
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4915784
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-12126392
	.word	238813184
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	204475185
	.word	439156736
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-46858172
	.word	-112527528
	.word	53741316
	.word	168300808
	.word	269681445
	.word	-12715191
	.word	-12125106
	.word	0
	.word	153686553
	.word	153093419
	.word	154075180
	.word	3342894
	.word	321322050
	.word	254151722
	.word	153223257
	.word	0
	.word	237179423
	.word	287511838
	.word	288166954
	.word	304945946
	.word	271976258
	.word	272108361
	.word	172226164
	.word	0
	.word	270860335
	.word	304286501
	.word	204016169
	.word	36703273
	.word	220790843
	.word	53613352
	.word	54661682
	.word	0
	.word	370546454
	.word	454369556
	.word	438050328
	.word	455217706
	.word	421990962
	.word	205919542
	.word	239536979
	.word	0
	.word	0
	.word	0
	.word	-79233000
	.word	-14352854
	.word	-30083271
	.word	-96469951
	.word	-62654126
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-44958388
	.word	-112657842
	.word	-196545980
	.word	-45680052
	.word	-79496386
	.word	3800125
	.word	-147062474
	.word	37355520
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-595595429
	.word	-228595884
	.word	-413731751
	.word	-279191169
	.word	-229839257
	.word	-212149377
	.word	0
	.word	0
	.word	189793612
	.word	39060814
	.word	-395056558
	.word	-146931659
	.word	3928661
	.word	-212208802
	.word	-178461825
	.word	0
	.word	-61410216
	.word	-78447288
	.word	-62654392
	.word	-262539451
	.word	-12909246
	.word	70908999
	.word	-28900806
	.word	-11927552
	.word	69664810
	.word	119671581
	.word	136250917
	.word	120193832
	.word	136383787
	.word	220464175
	.word	53936698
	.word	104595456
	.word	-360716417
	.word	-411507329
	.word	-311236235
	.word	-411638155
	.word	-395189130
	.word	-512173188
	.word	-161549978
	.word	-161284096
	.word	301142263
	.word	301210603
	.word	635578840
	.word	718745809
	.word	669003480
	.word	885862103
	.word	886647789
	.word	537591808
	.word	-97057731
	.word	-229385345
	.word	-345705927
	.word	-196872889
	.word	-162665643
	.word	-262608536
	.word	-245179521
	.word	0
	.word	-64159931
	.word	4127027
	.word	-63964630
	.word	-47580619
	.word	139261774
	.word	-179107532
	.word	4455258
	.word	0
	.word	137104172
	.word	237635376
	.word	70779956
	.word	220530993
	.word	322570800
	.word	204275781
	.word	337709119
	.word	0
	.word	-211104129
	.word	-77852359
	.word	-78187682
	.word	-195297715
	.word	4718409
	.word	71366993
	.word	88084281
	.word	0
	.word	1036597458
	.word	1053708733
	.word	770450430
	.word	470753793
	.word	654384657
	.word	338039341
	.word	255197263
	.word	0
	.word	-78645912
	.word	-178527617
	.word	-162334672
	.word	-130156478
	.word	-112790965
	.word	-162531501
	.word	-195236244
	.word	0
	.word	21229896
	.word	-78907312
	.word	-346821824
	.word	-216012992
	.word	-480376501
	.word	289405002
	.word	-81527269
	.word	224067584
	.word	602808807
	.word	486348810
	.word	452993778
	.word	886319080
	.word	319889177
	.word	605886497
	.word	571416084
	.word	373882880
	.word	21168196
	.word	-163380924
	.word	5046848
	.word	4520782
	.word	121046331
	.word	37817910
	.word	254543164
	.word	38141952
	.word	619718130
	.word	636428289
	.word	571415823
	.word	404300310
	.word	521151250
	.word	521937193
	.word	605821743
	.word	356384768
	.word	4324943
	.word	4783196
	.word	-61871547
	.word	-263455174
	.word	20640590
	.word	-145490863
	.word	-211615744
	.word	0
	.word	54655301
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	337777439
	.word	455868416
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28512682
	.word	205914112
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	304026394
	.word	605552640
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-96992444
	.word	-129502366
	.word	-212731354
	.word	-213976518
	.word	-29626295
	.word	-162729130
	.word	-145492393
	.word	0
	.word	-163445954
	.word	-45814703
	.word	1966343
	.word	-48764086
	.word	272820604
	.word	287649006
	.word	853469823
	.word	0
	.word	319819556
	.word	254022940
	.word	420814356
	.word	520887056
	.word	405405789
	.word	238554937
	.word	438757503
	.word	0
	.word	88142918
	.word	188155192
	.word	4522561
	.word	-95812298
	.word	121043532
	.word	-179110323
	.word	-28501718
	.word	0
	.word	404167440
	.word	404627229
	.word	371791402
	.word	272371508
	.word	238814030
	.word	-260369099
	.word	372775229
	.word	0
	.word	0
	.word	0
	.word	-146278107
	.word	-131271375
	.word	-164039621
	.word	-130025661
	.word	-96143793
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	StartCnt.37301, %object
	.size	StartCnt.37301, 4
StartCnt.37301:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
