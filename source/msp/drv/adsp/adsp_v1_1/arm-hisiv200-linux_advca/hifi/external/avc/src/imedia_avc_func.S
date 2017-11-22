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
	.file	"imedia_avc_func.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I./../../../source/common/include -I./../../../source/common/api/include
@ -I./../../../source/common/drv/include -I./../../../source/msp/include
@ -I./../../../source/msp/api/include -I./../../../source/msp/drv/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I./../../../source/component/ha_codec/include -I
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1 -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT -DHI_SND_AVC_SUPPORT
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(imedia_avc_func)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/.imedia_avc_func.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_func.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_func.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fverbose-asm
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
	.type	T.24, %function
T.24:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	ip, #0	@ ivtmp.84,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r2	@ pRealParams, pRealParams
	mov	lr, r0	@ PcmIn, PcmIn
	mov	r4, r3	@ pRmsLast7Gain, pRmsLast7Gain
	mov	r2, ip	@ PcmPeakN.106, ivtmp.84
	mov	r5, ip	@ PcmPeakN, ivtmp.84
	str	r1, [sp, #4]	@ iGain, %sfp
.L5:
	ldr	r3, [lr, ip]	@ PcmPeakN.99,* ivtmp.84
	cmp	r3, r5	@ PcmPeakN.99, PcmPeakN
	movgt	r5, r3	@ PcmPeakN, PcmPeakN.99
	bgt	.L3	@,
	cmp	r3, r2	@ PcmPeakN.99, PcmPeakN.106
	movlt	r2, r3	@ PcmPeakN.99, PcmPeakN.99
	movge	r2, r2	@ PcmPeakN.99, PcmPeakN.106
.L3:
	add	ip, ip, #4	@ tmp323, ivtmp.84,
	cmp	ip, #1024	@ tmp323,
	beq	.L4	@,
	ldr	r0, [lr, ip]	@ PcmPeakN.99,
	cmp	r0, r5	@ PcmPeakN.99, PcmPeakN
	ble	.L17	@,
	mov	r5, r0	@ PcmPeakN, PcmPeakN.99
.L22:
	add	sl, ip, #4	@ ivtmp.84, tmp323,
	ldr	r1, [lr, sl]	@ PcmPeakN.99,* ivtmp.84
	cmp	r1, r5	@ PcmPeakN.99, PcmPeakN
	movgt	r5, r1	@ PcmPeakN, PcmPeakN.99
	bgt	.L24	@,
	cmp	r1, r2	@ PcmPeakN.99, PcmPeakN.99
	movlt	r2, r1	@ PcmPeakN.99, PcmPeakN.99
	movge	r2, r2	@ PcmPeakN.99, PcmPeakN.99
.L24:
	add	ip, ip, #8	@ ivtmp.84, tmp323,
	b	.L5	@
.L17:
	cmp	r0, r2	@ PcmPeakN.99, PcmPeakN.99
	movlt	r2, r0	@ PcmPeakN.99, PcmPeakN.99
	movge	r2, r2	@ PcmPeakN.99, PcmPeakN.99
	b	.L22	@
.L4:
	mov	r0, r2	@, PcmPeakN.99
	bl	avc_L_abs	@
	mov	r1, #0	@,
	cmp	r5, r0	@ PcmPeakN,
	movlt	r5, r0	@ PcmPeakP.105,
	mov	r0, r5	@, PcmPeakP.105
	bl	iMedia_AVC_Log10	@
	movw	r1, #23119	@,
	sxth	r2, r0	@ peak_idB32,
	add	r0, r2, r2, asl #2	@, tmp251, peak_idB32, peak_idB32,
	mov	r0, r0, asr #1	@, tmp251,
	bl	avc_L_sub	@
	ldrsh	r3, [r6, #30]	@ <variable>.sInMin, <variable>.sInMin
	uxth	sl, r0	@ PeakdB,
	sxth	r8, sl	@ PeakdB, PeakdB
	cmp	r8, r3, asl #8	@ PeakdB, <variable>.sInMin,
	movlt	r0, #67108864	@ gain_tmp.91,
	blt	.L7	@,
	ldrsh	r1, [r6, #0]	@ <variable>.sx, <variable>.sx
	cmp	r8, r1, asl #8	@ PeakdB, <variable>.sx,
	mvnle	r9, #0	@ prephitmp.58,
	ble	.L9	@,
	mov	r9, #0	@ j,
.L10:
	add	r9, r9, #1	@ j, j,
	mov	fp, r9, asl #1	@ tmp258, j,
	ldrsh	r7, [r6, fp]	@ tmp259, <variable>.sx
	cmp	r8, r7, asl #8	@ PeakdB, tmp259,
	bgt	.L10	@,
	sub	r9, r9, #1	@ prephitmp.58, j,
.L9:
	add	lr, r6, r9, asl #1	@, tmp264, pRealParams, prephitmp.58,
	mov	r1, r8	@, PeakdB
	ldrsh	r0, [lr, #10]	@, <variable>.sk
	bl	avc_L_mult	@
	mov	r1, #9	@,
	bl	avc_L_shr	@
	add	ip, r6, r9, asl #1	@, tmp271, pRealParams, prephitmp.58,
	ldrsh	r1, [ip, #20]	@, <variable>.sb
	bl	avc_L_add	@
	bl	iMedia_AVC_saturate_to_16bit	@
	uxth	r0, r0	@ ydB,
	sxth	r6, r0	@ ydB, ydB
	cmp	r8, r6	@ PeakdB, ydB
	bge	.L11	@,
	rsb	r8, sl, r0	@ tmp279, PeakdB, ydB
	mov	r1, #20	@,
	mov	r2, #7	@,
	sxth	r0, r8	@, tmp279
	bl	iMedia_AVC_L_divide_Q	@
	bl	iMedia_AVC_L_exp10_i	@
	mov	r1, #11	@,
	bl	avc_L_shl	@
.L7:
	ldr	fp, [r4, #8]	@ temp.116,
	mov	lr, #2	@ tmp288,
	ldr	r9, [r4, #4]	@ temp.109,
	movw	ip, #819	@ tmp301,
	ldr	r1, [r4, #0]	@ tmp285,* pRmsLast7Gain
	smull	r2, r3, fp, lr	@ tmp287, temp.116, tmp288
	str	r9, [r4, #0]	@ temp.109,* pRmsLast7Gain
	ldr	r6, [r4, #12]	@,
	adds	r2, r2, r9	@ sum_gain.114, tmp287, temp.109
	ldr	sl, [r4, #16]	@ temp.130,
	ldr	r7, [r4, #24]	@,
	adc	r8, r3, r9, asr #31	@ sum_gain.114,, temp.109,
	adds	r2, r2, r1	@ tmp299, sum_gain.114, tmp285
	str	r6, [r4, #8]	@,
	adc	r3, r8, r1, asr #31	@, sum_gain.114, tmp285,
	ldr	r8, [r4, #20]	@ temp.137,
	mov	r1, #3	@ tmp294,
	str	r7, [r4, #20]	@,
	smlal	r2, r3, lr, r6	@ tmp299, tmp288,
	mov	r7, #5	@ tmp298,
	ldr	r6, [r4, #24]	@,
	str	r8, [r4, #16]	@ temp.137,
	str	fp, [r4, #4]	@ temp.116,
	str	sl, [r4, #12]	@ temp.130,
	smlal	r2, r3, lr, sl	@ tmp299, tmp288, temp.130
	mov	lr, #4	@ tmp296,
	smlal	r2, r3, r1, r8	@ tmp299, tmp294, temp.137
	smlal	r2, r3, lr, r6	@ tmp299, tmp296,
	smlal	r2, r3, r7, r0	@ tmp299, tmp298, gain_tmp.91
	umull	r0, r1, r2, ip	@ tmp304, tmp299, tmp301
	mla	r1, ip, r3, r1	@, tmp301,,
	mov	r3, r0, lsr #14	@ D.1756, tmp304,
	orr	r3, r3, r1, asl #18	@, gain_tmp.103, D.1756,,
	smull	r0, r1, r3, r5	@ tmp307, gain_tmp.103, PcmPeakP.105
	mov	r2, r0, lsr #26	@ PK_test, tmp307,
	mov	r7, r1, asr #26	@ PK_test,,
	orr	r6, r2, r1, asl #6	@, PK_test, PK_test,,
	cmp	r6, #32768	@ PK_test,
	sbcs	ip, r7, #0	@, PK_test,
	movlt	r0, #0	@, tmp311
	movge	r0, #1	@, tmp311
	cmp	r3, #67108864	@ gain_tmp.103,
	movle	r0, #0	@, tmp316
	andgt	r0, r0, #1	@,, tmp316, tmp311
	cmp	r0, #0	@ tmp316,
	beq	.L12	@,
	movw	r0, #40000	@ tmp317,
	mov	r1, #0	@,
	cmp	r0, r6	@ tmp317, PK_test
	sbcs	r2, r1, r7	@, tmp317, PK_test
	movlt	r3, #67108864	@ gain_tmp.103,
	blt	.L12	@,
	movw	ip, #:lower16:73819751	@ tmp318,
	movt	ip, #:upper16:73819751	@ tmp318,
	movw	r0, #:lower16:73819750	@ tmp329,
	cmp	r3, ip	@ gain_tmp.103, tmp318
	movt	r0, #:upper16:73819750	@ tmp329,
	movgt	r3, r0	@ gain_tmp.103, tmp329
.L12:
	str	r3, [r4, #24]	@ gain_tmp.103,
	ldr	r6, [sp, #4]	@, %sfp
	str	r3, [r6, #0]	@ gain_tmp.103,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L11:
	rsb	r9, r0, sl	@ tmp283, ydB, PeakdB
	mov	r1, #20	@,
	mov	r2, #7	@,
	sxth	r0, r9	@, tmp283
	bl	iMedia_AVC_L_divide_Q	@
	bl	iMedia_AVC_L_exp10_i	@
	mov	r2, #26	@,
	mov	r1, r0	@ gain_tmp.97,
	mov	r0, #32768	@,
	bl	iMedia_AVC_L_divide_Q	@
	b	.L7	@
	.fnend
	.size	T.24, .-T.24
	.align	2
	.global	iMedia_AVC_Pro
	.type	iMedia_AVC_Pro, %function
iMedia_AVC_Pro:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	add	r4, r1, #16	@ pCfg, pBuf,
	add	r5, sp, #16	@ tmp161,,
	add	fp, r0, #1024	@ D.2035, PcmInOut,
	mov	r8, r1	@ pBuf, pBuf
	mov	r2, r4	@, pCfg
	mov	r1, r5	@, tmp161
	add	r3, r8, #56	@, pBuf,
	mov	sl, r0	@ PcmInOut, PcmInOut
	bl	T.24	@
	mov	r2, r4	@, pCfg
	mov	r0, fp	@, D.2035
	add	r3, r8, #84	@, pBuf,
	add	r1, r5, #4	@, tmp161,
	bl	T.24	@
	ldr	r3, [sp, #16]	@ rms_gain, rms_gain
	ldr	r0, [sp, #20]	@ rms_gain, rms_gain
	add	ip, r0, r3	@ tmp166, rms_gain, rms_gain
	mov	ip, ip, asr #1	@ rms_gain_avg, tmp166,
	cmp	ip, #67108864	@ rms_gain_avg,
	movgt	r2, #1	@ iRateType,
	bgt	.L28	@,
	moveq	r2, #2	@ iRateType,
	movne	r2, #0	@ iRateType,
.L28:
	ldr	r3, [r8, #116]	@ <variable>.iRateType, <variable>.iRateType
	cmp	r3, r2	@ <variable>.iRateType, iRateType
	beq	.L40	@,
	cmp	r2, #0	@ iRateType,
	str	r2, [r8, #116]	@ iRateType, <variable>.iRateType
	beq	.L41	@,
	cmp	r2, #1	@ iRateType,
	ldreq	r3, [r8, #52]	@ <variable>.stRealParams.iReleaseRate, <variable>.stRealParams.iReleaseRate
	movne	r3, #67108864	@ tmp174,
	str	r3, [r8, #120]	@ tmp174, <variable>.iRateVal
.L33:
	mov	r2, #0	@ tmp175,
	mov	r4, #67108864	@ prephitmp.181,
	mov	r5, #0	@ prephitmp.181,
	mov	lr, r2	@ prephitmp.177, tmp175
	str	r2, [r8, #124]	@ tmp175, <variable>.iRatio
.L31:
	ldr	r0, [r8, #120]	@ <variable>.iRateVal, <variable>.iRateVal
	mov	r1, r0, asr #31	@ <variable>.iRateVal
	mov	r6, r1, asl #8	@ cur_ratio, <variable>.iRateVal,
	mov	r2, r0, asl #8	@ cur_ratio, <variable>.iRateVal,
	orr	r3, r6, r0, lsr #24	@, cur_ratio, cur_ratio, <variable>.iRateVal,
	cmp	r2, r4	@ cur_ratio, prephitmp.181
	sbcs	r0, r3, r5	@, cur_ratio, prephitmp.181
	bge	.L42	@,
	add	r9, lr, r2	@ D.1940, prephitmp.177, cur_ratio
	str	r9, [r8, #124]	@ D.1940, <variable>.iRatio
	mov	r0, r9	@, D.1940
	mov	r1, r0, asr #31	@
	strd	r0, [sp, #8]	@,,
.L36:
	rsb	r9, ip, #67108864	@ tmp180, rms_gain_avg,
	ldr	r1, [r8, #112]	@, <variable>.iRmsLastGain
	ldr	ip, [sp, #8]	@, %sfp
	mov	r4, sl	@ ivtmp.209, PcmInOut
	mov	r2, r9	@, tmp180
	mov	r3, r2, asr #31	@
	strd	r2, [sp]	@, %sfp
	ldr	r5, [sp, #0]	@, %sfp
	mov	r6, #33554432	@ tmp231,
	ldr	lr, [sp, #12]	@, %sfp
	mov	r7, #0	@,
	mul	r9, ip, r3	@ tmp183,,
	umull	r2, r3, ip, r5	@ tmp184,,
	mla	sl, r5, lr, r9	@ tmp232,,, tmp183
	add	ip, sl, r3	@, tmp232,
	mov	r0, r2, lsr #26	@ tmp224, tmp184,
	orr	lr, r0, ip, asl #6	@, tmp234, tmp224,,
	rsb	r0, lr, #67108864	@, tmp234,
	bl	avc_L_sub	@
	mov	r5, r0	@ tem.212,
	bl	avc_norm_l	@
	uxth	sl, r0	@ D.1949,
	mov	r0, r5	@, tem.212
	sub	r2, sl, #1	@ tmp191, D.1949,
	sxth	r1, r2	@, tmp191
	bl	avc_L_shl	@
	mov	r9, r0	@ tem.213,
	mov	r0, #256	@,
	bl	avc_norm_l	@
	mov	r2, #31	@,
	sxth	r5, r0	@ len_for_div_norm,
	mov	r0, r9	@, tem.213
	mov	r9, #256	@ tmp195,
	mov	r1, r9, asl r5	@, tmp195,
	bl	iMedia_AVC_L_divide_Q	@
	sub	r1, r5, #30	@ tmp197, len_for_div_norm,
	rsb	r3, sl, r1	@ tmp199, D.1949, tmp197
	sxth	r1, r3	@, tmp199
	bl	avc_L_shl	@
	ldr	r5, [r8, #112]	@ gain_rate, <variable>.iRmsLastGain
	mov	sl, r0	@ deta,
	add	ip, r5, r0, asl #8	@, tmp202, gain_rate, deta,
	str	ip, [r8, #112]	@ tmp202, <variable>.iRmsLastGain
.L37:
	ldr	r2, [r4, #0]	@ tmp204,* ivtmp.209
	add	r5, r5, sl	@ gain_rate, gain_rate, deta
	mov	r8, r5	@ D.1683, gain_rate
	mov	r9, r8, asr #31	@ D.1683
	mov	r3, r2, asr #31	@ tmp203
	mul	r1, r8, r3	@ tmp206, D.1683,
	mla	ip, r2, r9, r1	@ tmp235, tmp203, D.1683, tmp206
	umull	r2, r3, r8, r2	@ tmp207, D.1683, tmp203
	adds	r2, r2, r6	@ tmp208, tmp207, tmp231
	add	lr, ip, r3	@, tmp235,
	adc	r3, lr, r7	@,,
	mov	r0, r2, lsr #26	@ tmp226, tmp208,
	mov	r1, r3, asr #26	@,,
	orr	r0, r0, r3, asl #6	@,, tmp226,,
	bl	iMedia_AVC_sature_32	@
	ldr	r1, [r4, #1024]	@ tmp214,
	mov	r2, r1	@, tmp214
	mov	r3, r2, asr #31	@
	strd	r2, [sp]	@, %sfp
	ldr	ip, [sp, #0]	@, %sfp
	mul	r1, r8, r3	@ tmp216, D.1683,
	mla	r1, ip, r9, r1	@ tmp238, tmp14, D.1683, tmp216
	umull	r2, r3, r8, ip	@ tmp217, D.1683,
	add	ip, r1, r3	@, tmp238,
	adds	r1, r2, r6	@ tmp218, tmp217, tmp231
	adc	r3, ip, r7	@,,
	mov	lr, r1, lsr #26	@ tmp228, tmp218,
	mov	r1, r3, asr #26	@,,
	str	r0, [r4, #0]	@,* ivtmp.209
	orr	r0, lr, r3, asl #6	@,, tmp228,,
	bl	iMedia_AVC_sature_32	@
	str	r0, [r4, #1024]	@,
	add	r4, r4, #4	@ ivtmp.209, ivtmp.209,
	cmp	r4, fp	@ ivtmp.209, D.2035
	bne	.L37	@,
	mov	r0, #0	@,
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L41:
	ldr	r1, [r8, #48]	@ <variable>.stRealParams.iAttackRate, <variable>.stRealParams.iAttackRate
	str	r1, [r8, #120]	@ <variable>.stRealParams.iAttackRate, <variable>.iRateVal
	b	.L33	@
.L42:
	mov	r7, #67108864	@ tmp179,
	mov	r2, #67108864	@,
	str	r7, [r8, #124]	@ tmp179, <variable>.iRatio
	mov	r3, #0	@,
	strd	r2, [sp, #8]	@,,
	b	.L36	@
.L40:
	ldr	lr, [r8, #124]	@ prephitmp.177, <variable>.iRatio
	mov	r4, #67108864	@ tmp171,
	mov	r5, #0	@,
	subs	r4, r4, lr	@ prephitmp.181, tmp171, prephitmp.177
	sbc	r5, r5, lr, asr #31	@ prephitmp.181, tmp171, prephitmp.177
	b	.L31	@
	.fnend
	.size	iMedia_AVC_Pro, .-iMedia_AVC_Pro
	.global	iMedia_AVC_gain_alpha
	.section	.rodata
	.align	2
	.type	iMedia_AVC_gain_alpha, %object
	.size	iMedia_AVC_gain_alpha, 32
iMedia_AVC_gain_alpha:
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	3
	.word	4
	.word	5
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
