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
	.file	"vdm_hal_vp8.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vp8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp8.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.o
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
	.global	VP8HAL_V200R004_CfgDnMsg
	.type	VP8HAL_V200R004_CfgDnMsg, %function
VP8HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pVp8DecParam, pVp8DecParam
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r7, r0, #0	@ pMsgBase,
	beq	.L8	@,
	ldr	r1, [r4, #2796]	@ <variable>.frame_type, <variable>.frame_type
	mov	r8, r7	@ p32, pMsgBase
	ldr	r2, [r4, #2800]	@ <variable>.last_frame_type, <variable>.last_frame_type
	mov	sl, #0	@ tmp349,
	and	r9, r1, #1	@ tmp353, <variable>.frame_type,
	bfi	r9, r2, #1, #2	@ tmp353, <variable>.last_frame_type,,
	str	r9, [sp, #28]	@ tmp353,
	str	r9, [r8], #4	@ tmp353,
	add	r0, r8, #4	@, p32,
	str	r0, [sp, #20]	@, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #2808]	@ <variable>.full_pixel, <variable>.full_pixel
	ldr	r3, [r4, #2804]	@ <variable>.use_bilinear_mc_filter, <variable>.use_bilinear_mc_filter
	ldr	r5, [sp, #20]	@, %sfp
	rsb	lr, r3, ip, asl #1	@, tmp356, <variable>.use_bilinear_mc_filter, <variable>.full_pixel,
	add	r1, r5, #4	@ p32.587,,
	add	fp, lr, #1	@ D32.517, tmp356,
	add	r2, r1, #4	@ p32.591, p32.587,
	str	fp, [sp, #28]	@ D32.517, D32
	str	fp, [r7, #4]	@ D32.517,
	add	r9, r2, #4	@ p32.594, p32.591,
	str	r1, [sp, #16]	@,
	add	fp, r9, #4	@ p32.599, p32.594,
	str	r2, [sp, #12]	@,
	str	r9, [sp, #8]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	add	r9, fp, #4	@ p32.603, p32.599,
	ldr	r5, [r4, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	add	r2, r9, #4	@ p32.606, p32.603,
	sub	r3, r0, #1	@ tmp361, <variable>.pic_width_in_mb,
	sub	lr, r5, #1	@ tmp365, <variable>.pic_height_in_mb,
	add	r5, r2, #4	@ p32.609, p32.606,
	mov	ip, r3, asl #23	@ tmp366, tmp361,
	mov	r1, ip, lsr #23	@ tmp366, tmp366,
	bfi	r1, lr, #16, #9	@ tmp366, tmp365,,
	str	r1, [sp, #28]	@ tmp366,
	str	r1, [r8, #4]	@ tmp366,
	str	r2, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #2752]	@ zero_extendqisi2	@ <variable>.prob_skip_false, <variable>.prob_skip_false
	str	sl, [sp, #28]	@ tmp349, D32
	ldrb	r3, [r4, #2753]	@ zero_extendqisi2	@ <variable>.mb_no_coeff_skip, <variable>.mb_no_coeff_skip
	strb	r0, [sp, #28]	@ <variable>.prob_skip_false, <variable>.prob_skip_false
	ldr	r2, [sp, #28]	@ tmp370,
	ldr	r1, [sp, #20]	@, %sfp
	ldrb	ip, [r4, #2754]	@ zero_extendqisi2	@ <variable>.multi_token_partition, <variable>.multi_token_partition
	bfi	r2, r3, #8, #1	@ tmp370, <variable>.mb_no_coeff_skip,,
	bfi	r2, ip, #9, #2	@ tmp374, <variable>.multi_token_partition,,
	str	r2, [sp, #28]	@ tmp374,
	str	r2, [r1, #4]	@ tmp374,
	bl	vfmw_dprint_nothing	@
	ldrb	r8, [r4, #2755]	@ zero_extendqisi2	@ <variable>.segmentation_enable, <variable>.segmentation_enable
	ldrb	lr, [r4, #2756]	@ zero_extendqisi2	@ <variable>.update_mb_segmentation_map, <variable>.update_mb_segmentation_map
	ldrb	r0, [r4, #2757]	@ zero_extendqisi2	@ <variable>.mb_segmentation_abs_delta, <variable>.mb_segmentation_abs_delta
	and	ip, r8, #1	@ tmp383, <variable>.segmentation_enable,
	ldr	r1, [sp, #16]	@,
	bfi	ip, lr, #1, #1	@ tmp383, <variable>.update_mb_segmentation_map,,
	ldrb	r3, [r4, #2758]	@ zero_extendqisi2	@ <variable>.mode_ref_lf_delta_enabled, <variable>.mode_ref_lf_delta_enabled
	bfi	ip, r0, #2, #1	@ tmp387, <variable>.mb_segmentation_abs_delta,,
	bfi	ip, r3, #3, #1	@ tmp391, <variable>.mode_ref_lf_delta_enabled,,
	str	ip, [sp, #28]	@ tmp391,
	str	ip, [r1, #4]	@ tmp391,
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #2760]	@ zero_extendqisi2	@ <variable>.filter_type, <variable>.filter_type
	ldrb	r8, [r4, #2761]	@ zero_extendqisi2	@ <variable>.last_filter_type, <variable>.last_filter_type
	ldrb	r0, [r4, #2762]	@ zero_extendqisi2	@ <variable>.filter_level, <variable>.filter_level
	and	r1, r2, #1	@ tmp400, <variable>.filter_type,
	ldrb	lr, [r4, #2763]	@ zero_extendqisi2	@ <variable>.sharpness_level, <variable>.sharpness_level
	bfi	r1, r8, #1, #2	@ tmp400, <variable>.last_filter_type,,
	ldr	ip, [sp, #12]	@,
	bfi	r1, r0, #3, #6	@ tmp404, <variable>.filter_level,,
	ldrb	r3, [r4, #2764]	@ zero_extendqisi2	@ <variable>.last_sharpness_level, <variable>.last_sharpness_level
	bfi	r1, lr, #9, #3	@ tmp408, <variable>.sharpness_level,,
	bfi	r1, r3, #12, #3	@ tmp412, <variable>.last_sharpness_level,,
	str	r1, [sp, #28]	@ tmp412,
	str	r1, [ip, #4]	@ tmp412,
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #2765]	@ zero_extendqisi2	@ <variable>.y1dc_sign, <variable>.y1dc_sign
	ldrb	r8, [r4, #2766]	@ zero_extendqisi2	@ <variable>.y1dc_absdelta_q, <variable>.y1dc_absdelta_q
	ldrb	r0, [r4, #2767]	@ zero_extendqisi2	@ <variable>.y2dc_sign, <variable>.y2dc_sign
	and	r2, r2, #1	@ tmp421, <variable>.y1dc_sign,
	ldrb	r3, [r4, #2768]	@ zero_extendqisi2	@ <variable>.y2dc_absdelta_q, <variable>.y2dc_absdelta_q
	bfi	r2, r8, #1, #4	@ tmp421, <variable>.y1dc_absdelta_q,,
	ldrb	lr, [r4, #2769]	@ zero_extendqisi2	@ <variable>.y2ac_sign, <variable>.y2ac_sign
	bfi	r2, r0, #5, #1	@ tmp425, <variable>.y2dc_sign,,
	ldrb	ip, [r4, #2770]	@ zero_extendqisi2	@ <variable>.y2ac_absdelta_q, <variable>.y2ac_absdelta_q
	bfi	r2, r3, #6, #4	@ tmp429, <variable>.y2dc_absdelta_q,,
	ldrb	r1, [r4, #2771]	@ zero_extendqisi2	@ <variable>.uvdc_sign, <variable>.uvdc_sign
	bfi	r2, lr, #10, #1	@ tmp433, <variable>.y2ac_sign,,
	ldrb	r8, [r4, #2772]	@ zero_extendqisi2	@ <variable>.uvdc_absdelta_q, <variable>.uvdc_absdelta_q
	bfi	r2, ip, #11, #4	@ tmp437, <variable>.y2ac_absdelta_q,,
	ldr	lr, [sp, #8]	@,
	bfi	r2, r1, #15, #1	@ tmp441, <variable>.uvdc_sign,,
	ldrb	r0, [r4, #2773]	@ zero_extendqisi2	@ <variable>.uvac_sign, <variable>.uvac_sign
	bfi	r2, r8, #16, #4	@ tmp445, <variable>.uvdc_absdelta_q,,
	ldrb	r3, [r4, #2774]	@ zero_extendqisi2	@ <variable>.uvac_absdelta_q, <variable>.uvac_absdelta_q
	bfi	r2, r0, #20, #1	@ tmp449, <variable>.uvac_sign,,
	bfi	r2, r3, #21, #4	@ tmp453, <variable>.uvac_absdelta_q,,
	str	r2, [sp, #28]	@ tmp453,
	str	r2, [lr, #4]	@ tmp453,
	bl	vfmw_dprint_nothing	@
	ldrb	ip, [r4, #2759]	@ zero_extendqisi2	@ <variable>.base_qindex, <variable>.base_qindex
	mov	r1, sl	@ tmp459, tmp349
	bfi	r1, ip, #0, #7	@ tmp459, <variable>.base_qindex,,
	str	r1, [sp, #28]	@ tmp459,
	str	r1, [fp, #4]	@ tmp459,
	bl	vfmw_dprint_nothing	@
	ldr	r8, [r4, #2780]	@ <variable>.value, <variable>.value
	str	r8, [sp, #28]	@ <variable>.value, <variable>.value
	str	r8, [r9, #4]	@ <variable>.value,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #2778]	@ zero_extendqisi2	@ <variable>.range, <variable>.range
	ldr	ip, [sp, #4]	@,
	str	sl, [sp, #28]	@ tmp349, D32
	ldrb	r2, [r4, #2779]	@ zero_extendqisi2	@ <variable>.count, <variable>.count
	strb	r0, [sp, #28]	@ <variable>.range, <variable>.range
	ldr	r3, [sp, #28]	@ tmp469,
	bfi	r3, r2, #16, #6	@ tmp469, <variable>.count,,
	str	r3, [sp, #28]	@ tmp469,
	str	r3, [ip, #4]	@ tmp469,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #2820]	@ D.34164, <variable>.bit_offset_0
	ldrb	r8, [r4, #2779]	@ zero_extendqisi2	@ D.34163, <variable>.count
	ldr	r1, [r4, #2816]	@ D.34162, <variable>.bit_len_0
	cmp	r8, r2	@ D.34163, D.34164
	addhi	r2, r2, #128	@ tmp474, D.34164,
	add	r0, r8, r1	@ tmp476, D.34163, D.34162
	ldrhi	sl, [r4, #2824]	@ <variable>.bit_byte_offset_0, <variable>.bit_byte_offset_0
	rsbls	r2, r8, r2	@ D16_bit_offset_0, D.34163, D.34164
	ldrls	sl, [r4, #2824]	@ D17_bit_byte_offset_0, <variable>.bit_byte_offset_0
	rsbhi	r2, r8, r2	@ D16_bit_offset_0, D.34163, tmp474
	bic	r3, r0, #-33554432	@ tmp478, tmp476,
	subhi	sl, sl, #16	@ D17_bit_byte_offset_0, <variable>.bit_byte_offset_0,
	bfi	r3, r2, #25, #7	@ tmp478, D16_bit_offset_0,,
	mov	r8, #0	@ tmp475,
	str	r3, [sp, #28]	@ tmp478,
	str	r3, [r5, #28]	@ tmp478,
	bl	vfmw_dprint_nothing	@
	mov	ip, r8	@ tmp481, tmp475
	bfi	ip, sl, #0, #24	@ tmp481, D17_bit_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp481,
	str	ip, [r5, #32]	@ tmp481,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #2828]	@ <variable>.bit_len_1, <variable>.bit_len_1
	ldr	r1, [r4, #2832]	@ <variable>.bit_offset_1, <variable>.bit_offset_1
	bic	r3, r0, #-33554432	@ tmp486, <variable>.bit_len_1,
	bfi	r3, r1, #25, #7	@ tmp486, <variable>.bit_offset_1,,
	str	r3, [sp, #28]	@ tmp486,
	str	r3, [r5, #36]	@ tmp486,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #2836]	@ <variable>.bit_byte_offset_1, <variable>.bit_byte_offset_1
	mov	ip, r8	@ tmp489, tmp475
	bfi	ip, r2, #0, #24	@ tmp489, <variable>.bit_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp489,
	str	ip, [r5, #40]	@ tmp489,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #3036]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat0
	add	r1, r4, #3040
	ldmia	r1, {r1, r3, ip}	@ phole ldm
	strb	r0, [sp, #28]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat00
	strb	r1, [sp, #29]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat01
	strb	r3, [sp, #30]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat02
	strb	ip, [sp, #31]	@ <variable>.segment_feature_dat0, <variable>.segment_feature_dat03
	ldr	r2, [sp, #28]	@ D32.630, D32
	str	r2, [r5, #44]	@ D32.630,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #3052]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat1
	add	r1, r4, #3056
	ldmia	r1, {r1, r3, ip}	@ phole ldm
	strb	r0, [sp, #28]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat10
	strb	r1, [sp, #29]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat11
	strb	r3, [sp, #30]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat12
	strb	ip, [sp, #31]	@ <variable>.segment_feature_dat1, <variable>.segment_feature_dat13
	ldr	r2, [sp, #28]	@ D32.633, D32
	str	r2, [r5, #48]	@ D32.633,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #3068]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta
	add	r1, r4, #3072
	ldmia	r1, {r1, r3, ip}	@ phole ldm
	strb	r0, [sp, #28]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta0
	strb	r1, [sp, #29]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta1
	strb	r3, [sp, #30]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta2
	strb	ip, [sp, #31]	@ <variable>.ref_lf_delta, <variable>.ref_lf_delta3
	ldr	r2, [sp, #28]	@ D32.636, D32
	str	r2, [r5, #52]	@ D32.636,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #3084]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta
	add	r1, r4, #3088
	ldmia	r1, {r1, r3, ip}	@ phole ldm
	strb	r0, [sp, #28]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta0
	strb	r1, [sp, #29]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta1
	strb	r3, [sp, #30]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta2
	strb	ip, [sp, #31]	@ <variable>.mode_lf_delta, <variable>.mode_lf_delta3
	ldr	r2, [sp, #28]	@ D32.640, D32
	str	r2, [r5, #56]	@ D32.640,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #3112]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	ldr	r3, [r4, #3108]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	ldr	r0, [r4, #3100]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	ldr	r1, [r4, #3104]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias
	strb	ip, [sp, #31]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_3
	strb	r3, [sp, #30]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_2
	strb	r0, [sp, #28]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_0
	strb	r1, [sp, #29]	@ <variable>.ref_frame_sign_bias, <variable>.ref_frame_sign_bias_1
	ldr	r2, [sp, #28]	@ D32.643, D32
	str	r2, [r5, #60]	@ D32.643,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #3136]	@ D32.537, <variable>.SegIdAddr
	str	r1, [sp, #28]	@ D32.537, D32
	str	r1, [r5, #64]	@ D32.537,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	str	r0, [sp, #28]	@ <variable>.image_curr_rcn_addr, <variable>.curr_rcn_addr
	str	r0, [r5, #92]	@ <variable>.image_curr_rcn_addr,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3120]	@ <variable>.image_alt_ref_addr, <variable>.image_alt_ref_addr
	str	r3, [sp, #28]	@ <variable>.image_alt_ref_addr, <variable>.alt_ref_addr
	str	r3, [r5, #96]	@ <variable>.image_alt_ref_addr,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #3124]	@ <variable>.image_gld_ref_addr, <variable>.image_gld_ref_addr
	str	ip, [sp, #28]	@ <variable>.image_gld_ref_addr, <variable>.golden_ref_addr
	str	ip, [r5, #100]	@ <variable>.image_gld_ref_addr,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #3128]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r2, [sp, #28]	@ <variable>.image_last_ref_addr, <variable>.last_ref_addr
	str	r2, [r5, #104]	@ <variable>.image_last_ref_addr,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	r0, r1, #15	@ tmp551, <variable>.SedTopAddr,
	str	r0, [sp, #28]	@ tmp551, <variable>.sed_top_addr
	str	r0, [r5, #108]	@ tmp551,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	ip, r3, #15	@ tmp555, <variable>.PmvTopAddr,
	str	ip, [sp, #28]	@ tmp555, <variable>.pmv_top_addr
	str	ip, [r5, #112]	@ tmp555,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	r1, r2, #15	@ tmp559, <variable>.RcnTopAddr,
	str	r1, [sp, #28]	@ tmp559, <variable>.rcn_top_addr
	str	r1, [r5, #116]	@ tmp559,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #1116]	@ <variable>.VpTabAddr, <variable>.VpTabAddr
	bic	r3, r0, #15	@ tmp563, <variable>.VpTabAddr,
	str	r3, [sp, #28]	@ tmp563, <variable>.tab_addr
	str	r3, [r5, #120]	@ tmp563,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #28]	@, D32
	bl	MEM_Phy2Vir	@
	cmp	r0, r8	@,
	beq	.L8	@,
	mov	r1, r4	@, pVp8DecParam
	mov	r2, #2752	@,
	bl	memcpy	@
	ldr	r0, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	bic	r3, r0, #15	@ tmp572, <variable>.DblkTopAddr,
	str	r3, [sp, #28]	@ tmp572, <variable>.dblk_top_addr
	str	r3, [r5, #124]	@ tmp572,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pMsgBase
	bl	MEM_Vir2Phy	@
	add	ip, r0, #256	@ D32.548,,
	str	ip, [sp, #28]	@ D32.548, D32
	str	ip, [r5, #216]	@ D32.548,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2844]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2876]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp577, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp577, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp577,
	str	r0, [r5, #220]	@ tmp577,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2908]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp579, tmp475
	bfi	ip, r3, #0, #24	@ tmp579, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp579,
	str	ip, [r5, #224]	@ tmp579,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2940]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #2972]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp585, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp585, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp585,
	str	r0, [r5, #228]	@ tmp585,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3004]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp587, tmp475
	bfi	ip, r3, #0, #24	@ tmp587, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp587,
	str	ip, [r5, #232]	@ tmp587,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2848]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2880]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp593, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp593, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp593,
	str	r0, [r5, #236]	@ tmp593,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2912]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp595, tmp475
	bfi	ip, r3, #0, #24	@ tmp595, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp595,
	str	ip, [r5, #240]	@ tmp595,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2944]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #2976]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp601, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp601, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp601,
	str	r0, [r5, #244]	@ tmp601,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3008]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp603, tmp475
	bfi	ip, r3, #0, #24	@ tmp603, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp603,
	str	ip, [r5, #248]	@ tmp603,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2852]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2884]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp609, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp609, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp609,
	str	r0, [r5, #252]	@ tmp609,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2916]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp611, tmp475
	bfi	ip, r3, #0, #24	@ tmp611, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp611,
	str	ip, [r5, #256]	@ tmp611,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2948]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #2980]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp617, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp617, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp617,
	str	r0, [r5, #260]	@ tmp617,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3012]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp619, tmp475
	bfi	ip, r3, #0, #24	@ tmp619, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp619,
	str	ip, [r5, #264]	@ tmp619,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2856]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2888]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp625, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp625, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp625,
	str	r0, [r5, #268]	@ tmp625,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2920]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp627, tmp475
	bfi	ip, r3, #0, #24	@ tmp627, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp627,
	str	ip, [r5, #272]	@ tmp627,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2952]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #2984]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp633, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp633, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp633,
	str	r0, [r5, #276]	@ tmp633,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3016]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp635, tmp475
	bfi	ip, r3, #0, #24	@ tmp635, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp635,
	str	ip, [r5, #280]	@ tmp635,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2860]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2892]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp641, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp641, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp641,
	str	r0, [r5, #284]	@ tmp641,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2924]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp643, tmp475
	bfi	ip, r3, #0, #24	@ tmp643, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp643,
	str	ip, [r5, #288]	@ tmp643,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2956]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #2988]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp649, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp649, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp649,
	str	r0, [r5, #292]	@ tmp649,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3020]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp651, tmp475
	bfi	ip, r3, #0, #24	@ tmp651, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp651,
	str	ip, [r5, #296]	@ tmp651,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2864]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2896]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp657, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp657, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp657,
	str	r0, [r5, #300]	@ tmp657,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2928]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp659, tmp475
	bfi	ip, r3, #0, #24	@ tmp659, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp659,
	str	ip, [r5, #304]	@ tmp659,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2960]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #2992]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp665, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp665, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp665,
	str	r0, [r5, #308]	@ tmp665,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3024]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp667, tmp475
	bfi	ip, r3, #0, #24	@ tmp667, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp667,
	str	ip, [r5, #312]	@ tmp667,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2868]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2900]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp673, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp673, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp673,
	str	r0, [r5, #316]	@ tmp673,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2932]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp675, tmp475
	bfi	ip, r3, #0, #24	@ tmp675, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp675,
	str	ip, [r5, #320]	@ tmp675,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2964]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #2996]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp681, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp681, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp681,
	str	r0, [r5, #324]	@ tmp681,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3028]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp683, tmp475
	bfi	ip, r3, #0, #24	@ tmp683, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp683,
	str	ip, [r5, #328]	@ tmp683,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2872]	@ <variable>.bitn_len_0, <variable>.bitn_len_0
	ldr	r2, [r4, #2904]	@ <variable>.bitn_offset_0, <variable>.bitn_offset_0
	bic	r0, r1, #-33554432	@ tmp689, <variable>.bitn_len_0,
	bfi	r0, r2, #25, #7	@ tmp689, <variable>.bitn_offset_0,,
	str	r0, [sp, #28]	@ tmp689,
	str	r0, [r5, #332]	@ tmp689,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2936]	@ <variable>.bitn_byte_offset_0, <variable>.bitn_byte_offset_0
	mov	ip, r8	@ tmp691, tmp475
	bfi	ip, r3, #0, #24	@ tmp691, <variable>.bitn_byte_offset_0,,
	str	ip, [sp, #28]	@ tmp691,
	str	ip, [r5, #336]	@ tmp691,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2968]	@ <variable>.bitn_len_1, <variable>.bitn_len_1
	ldr	r2, [r4, #3000]	@ <variable>.bitn_offset_1, <variable>.bitn_offset_1
	bic	r0, r1, #-33554432	@ tmp697, <variable>.bitn_len_1,
	bfi	r0, r2, #25, #7	@ tmp697, <variable>.bitn_offset_1,,
	str	r0, [sp, #28]	@ tmp697,
	str	r0, [r5, #340]	@ tmp697,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3032]	@ <variable>.bitn_byte_offset_1, <variable>.bitn_byte_offset_1
	mov	ip, r8	@ tmp699, tmp475
	bfi	ip, r3, #0, #24	@ tmp699, <variable>.bitn_byte_offset_1,,
	str	ip, [sp, #28]	@ tmp699,
	str	ip, [r5, #344]	@ tmp699,
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.34081, tmp475
.L3:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L8:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34081,
	b	.L3	@
	.fnend
	.size	VP8HAL_V200R004_CfgDnMsg, .-VP8HAL_V200R004_CfgDnMsg
	.align	2
	.global	VP8HAL_V200R004_CfgReg
	.type	VP8HAL_V200R004_CfgReg, %function
VP8HAL_V200R004_CfgReg:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	cmp	r2, #1	@ VdhId,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r3, #0	@ tmp166,
	mov	r5, r0	@ pVp8DecParam, pVp8DecParam
	mov	r6, r1	@ pHwMem, pHwMem
	str	r3, [sp, #4]	@ tmp166, D32
	bls	.L20	@,
.L16:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33949,
.L13:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L20:
	beq	.L16	@,
	ldr	r0, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L22	@,
.L15:
	ldr	r3, [r5, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	movw	r4, #:lower16:g_HwMem	@ tmp257,
	ldr	ip, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movt	r4, #:upper16:g_HwMem	@ tmp257,
	mov	r7, #0	@ tmp170,
	ldr	lr, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mul	r0, ip, r3	@ tmp171, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	sub	r1, r0, #1	@ tmp174, tmp171,
	bic	r2, r1, #-16777216	@ tmp177, tmp174,
	bic	ip, r2, #15728640	@ tmp177, tmp177,
	bfi	ip, r7, #31, #1	@ tmp177, tmp170,,
	str	ip, [sp, #4]	@ tmp177,
	str	ip, [lr, #8]	@ tmp177,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2792]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	r1, #536870924	@ tmp185,
	ldr	r2, [r5, #3140]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r3, lsr #6	@ tmp183, <variable>.ddr_stride,
	bfi	r1, r0, #4, #10	@ tmp185, tmp183,,
	orr	r3, r1, #49152	@ tmp190, tmp185,
	bfi	r3, r7, #16, #12	@ tmp190, tmp170,,
	orr	r0, r3, #536870912	@ tmp194, tmp190,
	bfi	r0, r2, #30, #1	@ tmp194, <variable>.Compress_en,,
	orr	r1, r0, #-2147483648	@ tmp195, tmp194,
	str	r1, [sp, #4]	@ tmp195,
	str	r1, [ip, #12]	@ tmp195,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r3, r2, #15	@ tmp202, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp202, <variable>.av_msg_addr
	str	r3, [r0, #16]	@ tmp202,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r6, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r1, ip, #15	@ tmp208, <variable>.MsgSlotAddr,
	str	r1, [sp, #4]	@ tmp208, <variable>.va_msg_addr
	str	r1, [r2, #20]	@ tmp208,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2812]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	ldr	r0, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	str	r3, [r0, #24]	@ <variable>.stream_base_addr,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r6, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	bic	r1, ip, #15	@ D32.504, <variable>.PpfdBufAddr,
	str	r1, [sp, #4]	@ D32.504, D32
	str	r1, [r2, #128]	@ D32.504,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1104]	@ D32.505, <variable>.PpfdBufLen
	ldr	r0, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ D32.505, D32
	str	r3, [r0, #132]	@ D32.505,
	bl	vfmw_dprint_nothing	@
	ldr	r6, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	cmp	r6, #120	@ <variable>.pic_width_in_mb,
	strhi	r7, [sp, #4]	@ tmp170, D32
	movls	r6, #65536	@ tmp223,
	strls	r6, [sp, #4]	@ tmp223, D32
	bl	MEM_ReadPhyWord	@
	movw	ip, #:lower16:s_RegPhyBaseAddr	@ tmp225,
	movt	ip, #:upper16:s_RegPhyBaseAddr	@ tmp225,
	ldr	r1, [sp, #4]	@ D32, D32
	mov	r6, #0	@ tmp230,
	ldr	r7, [ip, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@ tmp228,, D32
	add	r0, r7, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r5, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	bic	r3, r2, #15	@ tmp233, <variable>.image_curr_rcn_addr,
	str	r3, [sp, #4]	@ tmp233, <variable>.ystaddr_1d
	str	r3, [r0, #96]	@ tmp233,
	bl	vfmw_dprint_nothing	@
	ldr	r7, [r5, #2792]	@ ystride, <variable>.ddr_stride
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #4]	@ ystride, <variable>.ystride_1d
	str	r7, [ip, #100]	@ ystride,
	mov	r7, r7, asl #1	@ tmp242, ystride,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r3, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	add	r2, r1, #1	@ tmp243, <variable>.pic_height_in_mb,
	mov	r0, r2, lsr #1	@ tmp245, tmp243,
	mul	r7, r0, r7	@ tmp246, tmp245, tmp242
	str	r7, [sp, #4]	@ tmp246, <variable>.uvoffset_1d
	str	r7, [r3, #104]	@ tmp246,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r2, #0	@ tmp255,
	mov	r0, r6	@ D.33949, tmp230
	str	r6, [ip, #108]	@ tmp230,
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #32]	@ tmp255,
	b	.L13	@
.L22:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.33955
	strne	r0, [r6, #0]	@ D.33955, <variable>.pVdmRegVirAddr
	bne	.L15	@,
	b	.L16	@
	.fnend
	.size	VP8HAL_V200R004_CfgReg, .-VP8HAL_V200R004_CfgReg
	.align	2
	.global	VP8HAL_V200R004_StartDec
	.type	VP8HAL_V200R004_StartDec, %function
VP8HAL_V200R004_StartDec:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pVp8DecParam, pVp8DecParam
	bls	.L33	@,
.L31:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34045,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L33:
	beq	.L31	@,
	ldr	r3, [r0, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #512	@ <variable>.pic_width_in_mb,
	bhi	.L31	@,
	ldr	r0, [r0, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #512	@ <variable>.pic_height_in_mb,
	bhi	.L31	@,
	movw	r5, #:lower16:g_HwMem	@ tmp142,
	movt	r5, #:upper16:g_HwMem	@ tmp142,
	ldr	r1, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L34	@,
.L30:
	mov	r2, #0	@,
	mov	r0, r4	@, pVp8DecParam
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VP8HAL_V200R004_CfgReg	@
	mov	r0, r4	@, pVp8DecParam
	mov	r2, #0	@,
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VP8HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.34045,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L34:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.34057
	strne	r0, [r5, #0]	@ D.34057, <variable>.pVdmRegVirAddr
	bne	.L30	@,
	b	.L31	@
	.fnend
	.size	VP8HAL_V200R004_StartDec, .-VP8HAL_V200R004_StartDec
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
