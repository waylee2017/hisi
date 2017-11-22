	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"imedia_avc_func.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -I arch/arm/include/generated -I include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -I include/generated/uapi -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/component/ha_codec/include
@ -I -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_SND_AOE_SWSIMULATE_SUPPORT -D INTERLEAVED_OUTPUT
@ -D HI_SND_AVC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(imedia_avc_func)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/.imedia_avc_func.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_func.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_func.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fverbose-asm
@ -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
@ -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fshow-column -fshrink-wrap
@ -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -funit-at-a-time
@ -funwind-tables -fverbose-asm -fzero-initialized-in-bss -marm -mglibc
@ -mlittle-endian -mlra -mpic-data-is-text-relative -msched-prolog
@ -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.type	iMedia_AVC_Static_Gain.constprop.2, %function
iMedia_AVC_Static_Gain.constprop.2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	sub	ip, r0, #4	@ ivtmp.58, PcmIn,
	mov	lr, #0	@ PcmPeakP,
	add	r0, r0, #1020	@ D.4629, PcmIn,
	mov	r10, r1	@ iGain, iGain
	mov	r5, r2	@ pRealParams, pRealParams
	mov	r8, r3	@ pRmsLast7Gain, pRmsLast7Gain
	mov	r4, lr	@ PcmPeakP, PcmPeakP
.L3:
	ldr	r3, [ip, #4]!	@ PcmPeakP, MEM[base: _61, offset: 0B]
	cmp	r3, r4	@ PcmPeakP, PcmPeakP
	movgt	r4, r3	@ PcmPeakP, PcmPeakP
	bgt	.L2	@,
	cmp	lr, r3	@ PcmPeakP, PcmPeakP
	movge	lr, r3	@ PcmPeakP, PcmPeakP
.L2:
	cmp	ip, r0	@ ivtmp.58, D.4629
	bne	.L3	@,
	mov	r0, lr	@, PcmPeakP
	bl	avc_L_abs	@
	mov	r1, #0	@,
	cmp	r0, r4	@, PcmPeakP
	movlt	r9, r4	@ PcmPeakP, PcmPeakP
	movge	r9, r0	@ PcmPeakP,
	mov	r0, r9	@, PcmPeakP
	bl	iMedia_AVC_Log10	@
	movw	r1, #23119	@,
	mov	r3, r0, asl #4	@ tmp256, tmp253,
	add	r0, r3, r0, lsl #2	@ tmp257, tmp256, tmp253,
	mov	r0, r0, asr #3	@, tmp257,
	bl	avc_L_sub	@
	ldrsh	r3, [r5, #30]	@ D.4623, pRealParams_19(D)->sInMin
	sxth	r4, r0	@ xdB, D.4623
	mov	r6, r0	@ D.4623,
	cmp	r4, r3, asl #8	@ xdB, D.4623,
	movlt	r6, #335544320	@ D.4627,
	movlt	r7, #0	@ D.4627,
	bge	.L22	@,
.L4:
	ldr	r0, [r8]	@ *pRmsLast7Gain_52(D), *pRmsLast7Gain_52(D)
	add	ip, r8, #24	@ D.4629, pRmsLast7Gain,
	ldr	r1, .L23	@ ivtmp.33,
	mov	r3, r8	@ ivtmp.20, pRmsLast7Gain
	mov	r5, r0, asr #31	@ sum_gain, sum_gain,
	mov	r4, r0	@ sum_gain, *pRmsLast7Gain_52(D)
.L8:
	ldr	r2, [r3, #4]!	@ D.4623, MEM[base: _206, offset: 0B]
	cmp	r3, ip	@ ivtmp.20, D.4629
	str	r2, [r3, #-4]	@ D.4623, MEM[base: _206, offset: 4294967292B]
	ldr	r0, [r1, #4]!	@ D.4623, MEM[base: _204, offset: 0B]
	smlal	r4, r5, r0, r2	@ sum_gain, D.4623, D.4623
	bne	.L8	@,
	adds	r0, r4, r6	@ sum_gain, sum_gain, D.4627
	adc	r1, r5, r7	@ sum_gain, sum_gain, D.4627
	adds	r2, r0, r0	@ tmp285, sum_gain, sum_gain
	adc	r3, r1, r1	@, sum_gain, sum_gain
	adds	r2, r2, r0	@ tmp286, tmp285, sum_gain
	adc	r3, r3, r1	@,, sum_gain
	adds	r2, r2, r2	@ tmp287, tmp286, tmp286
	adc	r3, r3, r3	@,,
	adds	r2, r2, r2	@ tmp288, tmp287, tmp287
	adc	r3, r3, r3	@,,
	adds	r2, r2, r0	@ tmp289, tmp288, sum_gain
	adc	r3, r3, r1	@,, sum_gain
	mov	r4, r2, asl #6	@ tmp290, tmp289,
	mov	r5, r3, asl #6	@,,
	orr	r5, r5, r2, lsr #26	@,, tmp289,
	subs	r2, r4, r2	@ D.4627, tmp290, tmp289
	sbc	r3, r5, r3	@ D.4627,,
	mov	r2, r2, lsr #14	@ D.4627, D.4627,
	orr	r3, r2, r3, asl #18	@ gain_tmp, D.4627, D.4627,
	smull	r0, r1, r9, r3	@ D.4627, PcmPeakP, gain_tmp
	mov	r6, r0, lsr #26	@ PK_test, D.4627,
	mov	r7, r1, asr #26	@ PK_test, D.4627,
	orr	r6, r6, r1, asl #6	@ PK_test, PK_test, D.4627,
	cmp	r6, #32768	@ PK_test,
	sbcs	r2, r7, #0	@ tmp316, PK_test,
	movge	r2, #1	@ tmp302,
	movlt	r2, #0	@ tmp302,
	cmp	r3, #67108864	@ gain_tmp,
	movle	r2, #0	@, tmp307
	andgt	r2, r2, #1	@,, tmp307, tmp302
	cmp	r2, #0	@ tmp307,
	beq	.L9	@,
	movw	r0, #40000	@ tmp308,
	cmp	r0, r6	@ tmp308, PK_test
	mov	r1, #0	@,
	sbcs	r2, r1, r7	@ tmp317,, PK_test
	movlt	r3, #67108864	@ gain_tmp,
	blt	.L9	@,
	movw	r1, #26215	@ tmp309,
	movw	r2, #26214	@ tmp313,
	movt	r1, 1126	@ tmp309,
	cmp	r3, r1	@ gain_tmp, tmp309
	movt	r2, 1126	@ tmp313,
	movgt	r3, r2	@ gain_tmp, tmp313
.L9:
	str	r3, [r8, #24]	@ gain_tmp, MEM[(IMEDIA_INT32 *)pRmsLast7Gain_52(D) + 24B]
	str	r3, [r10]	@ gain_tmp, *iGain_85(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L22:
	ldrsh	r3, [r5]	@ D.4623, pRealParams_19(D)->sx
	cmp	r4, r3, asl #8	@ xdB, D.4623,
	ble	.L12	@,
	mov	r2, r5	@ ivtmp.44, pRealParams
	mov	r3, #0	@ j,
.L6:
	ldrsh	ip, [r2, #2]!	@ D.4623, MEM[base: _60, offset: 0B]
	add	r3, r3, #1	@ j, j,
	cmp	r4, ip, asl #8	@ xdB, D.4623,
	bgt	.L6	@,
	sub	r3, r3, #1	@ D.4623, j,
.L5:
	add	r5, r5, r3, lsl #1	@ D.4621, pRealParams, D.4623,
	mov	r1, r4	@, xdB
	ldrsh	r0, [r5, #10]	@, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)_3 + 10B]
	bl	avc_L_mult	@
	mov	r1, #9	@,
	bl	avc_L_shr	@
	ldrsh	r1, [r5, #20]	@, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)_3 + 20B]
	bl	avc_L_add	@
	bl	iMedia_AVC_saturate_to_16bit	@
	cmp	r4, r0	@ xdB, tmp269
	bge	.L7	@,
	rsb	r0, r6, r0	@ tmp273, D.4623, tmp269
	mov	r2, #7	@,
	mov	r1, #20	@,
	sxth	r0, r0	@, tmp273
	bl	iMedia_AVC_L_divide_Q	@
	bl	iMedia_AVC_L_exp10_i	@
	mov	r1, #11	@,
	bl	avc_L_shl	@
	mov	r3, #5	@ tmp275,
	smull	r6, r7, r0, r3	@ D.4627, gain_tmp, tmp275
	b	.L4	@
.L7:
	rsb	r0, r0, r6	@ tmp278, tmp269, D.4623
	mov	r2, #7	@,
	mov	r1, #20	@,
	sxth	r0, r0	@, tmp278
	bl	iMedia_AVC_L_divide_Q	@
	bl	iMedia_AVC_L_exp10_i	@
	mov	r2, #26	@,
	mov	r1, r0	@,
	mov	r0, #32768	@,
	bl	iMedia_AVC_L_divide_Q	@
	mov	r3, #5	@ tmp280,
	smull	r6, r7, r0, r3	@ D.4627, gain_tmp, tmp280
	b	.L4	@
.L12:
	mvn	r3, #0	@ D.4623,
	b	.L5	@
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.fnend
	.size	iMedia_AVC_Static_Gain.constprop.2, .-iMedia_AVC_Static_Gain.constprop.2
	.align	2
	.global	iMedia_AVC_Pro
	.type	iMedia_AVC_Pro, %function
iMedia_AVC_Pro:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r1, #16	@ pCfg, pBuf,
	.pad #20
	sub	sp, sp, #20	@,,
	add	r3, r1, #56	@, pBuf,
	mov	fp, r1	@ pBuf, pBuf
	mov	r2, r5	@, pCfg
	add	r1, sp, #8	@,,
	mov	r4, r0	@ PcmInOut, PcmInOut
	bl	iMedia_AVC_Static_Gain.constprop.2	@
	mov	r2, r5	@, pCfg
	add	r3, fp, #84	@, pBuf,
	add	r0, r4, #1024	@, PcmInOut,
	add	r1, sp, #12	@,,
	bl	iMedia_AVC_Static_Gain.constprop.2	@
	ldr	r3, [sp, #8]	@ rms_gain, rms_gain
	ldr	r2, [sp, #12]	@ rms_gain, rms_gain
	add	r2, r3, r2	@ D.4682, rms_gain, rms_gain
	mov	r2, r2, asr #1	@ rms_gain_avg, D.4682,
	cmp	r2, #67108864	@ rms_gain_avg,
	bgt	.L26	@,
	cmn	r2, #-67108863	@ rms_gain_avg,
	bgt	.L45	@,
	ldr	r3, [fp, #116]	@ pBuf_1(D)->iRateType, pBuf_1(D)->iRateType
	cmp	r3, #0	@ pBuf_1(D)->iRateType,
	ldrne	r3, [fp, #48]	@ D.4682, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pBuf_1(D) + 16B].iAttackRate
	movne	ip, #0	@ tmp228,
	beq	.L36	@,
.L42:
	mov	r7, r3, asr #31	@ D.4682, D.4682,
	mov	r0, r3, asl #8	@ D.4690, D.4682,
	str	ip, [fp, #116]	@ tmp238, pBuf_1(D)->iRateType
	mov	r1, r7, asl #8	@ D.4690, D.4682,
	str	r3, [fp, #120]	@ D.4682, pBuf_1(D)->iRateVal
	orr	r1, r1, r3, lsr #24	@ D.4690, D.4690, D.4682,
.L32:
	mov	ip, #0	@ tmp191,
	mov	r6, #67108864	@ D.4690,
	mov	r7, #0	@ D.4690,
	mov	r3, ip	@ D.4689, tmp191
	str	ip, [fp, #124]	@ tmp191, pBuf_1(D)->iRatio
	b	.L34	@
.L26:
	ldr	r3, [fp, #116]	@ pBuf_1(D)->iRateType, pBuf_1(D)->iRateType
	cmp	r3, #1	@ pBuf_1(D)->iRateType,
	ldrne	r3, [fp, #52]	@ D.4682, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pBuf_1(D) + 16B].iReleaseRate
	movne	ip, #1	@ tmp238,
	bne	.L42	@,
.L36:
	ldr	ip, [fp, #120]	@ D.4689, pBuf_1(D)->iRateVal
	mov	r6, #67108864	@ tmp234,
	ldr	r3, [fp, #124]	@ D.4689, pBuf_1(D)->iRatio
	mov	r7, #0	@,
	mov	r9, ip, asr #31	@ D.4689, D.4689,
	subs	r6, r6, r3	@ D.4690, tmp234, D.4689
	sbc	r7, r7, r3, asr #31	@ D.4690,, D.4689,
	mov	r0, ip, asl #8	@ D.4690, D.4689,
	mov	r1, r9, asl #8	@ D.4690, D.4689,
	mov	r8, ip	@ D.4689, D.4689
	orr	r1, r1, ip, lsr #24	@ D.4690, D.4690, D.4689,
.L34:
	cmp	r0, r6	@ D.4690, D.4690
	rsb	r2, r2, #67108864	@ D.4684, rms_gain_avg,
	sbcs	ip, r1, r7	@ tmp253, D.4690, D.4690
	ldr	r1, [fp, #112]	@, pBuf_1(D)->iRmsLastGain
	addlt	r8, r3, r0	@ D.4682, D.4689, D.4690
	mov	r7, r2, asr #31	@ D.4685, D.4685,
	movge	r8, #67108864	@ D.4685,
	movge	r9, #0	@ D.4685,
	movlt	r9, r8, asr #31	@ D.4685, D.4682,
	movge	r3, #67108864	@ tmp192,
	strge	r3, [fp, #124]	@ tmp192, pBuf_1(D)->iRatio
	add	r5, r4, #1020	@ ivtmp.84, ivtmp.73,
	mul	r0, r2, r9	@ tmp196, D.4684, D.4685
	strlt	r8, [fp, #124]	@ D.4682, pBuf_1(D)->iRatio
	umull	r2, r3, r2, r8	@ D.4685, D.4684, D.4685
	mov	r6, #33554432	@ tmp252,
	mla	r0, r8, r7, r0	@ tmp197, D.4685, D.4685, tmp196
	mov	r9, #0	@ i,
	mov	r7, #0	@,
	add	r3, r0, r3	@ D.4685, tmp197, D.4685
	mov	r0, r2, lsr #26	@ D.4685, D.4685,
	orr	r0, r0, r3, asl #6	@ D.4685, D.4685, D.4685,
	rsb	r0, r0, #67108864	@, D.4685,
	bl	avc_L_sub	@
	mov	r8, r0	@ tem,
	bl	avc_norm_l	@
	uxth	r10, r0	@ D.4688,
	mov	r0, r8	@, tem
	sub	r1, r10, #1	@ tmp205, D.4688,
	sxth	r1, r1	@, tmp205
	bl	avc_L_shl	@
	str	r0, [sp, #4]	@ tem, %sfp
	mov	r0, #256	@,
	bl	avc_norm_l	@
	ldr	r3, [sp, #4]	@ tem, %sfp
	mov	r1, #256	@ tmp209,
	mov	r2, #31	@,
	mov	r8, r0	@ tmp207,
	mov	r0, r3	@, tem
	mov	r1, r1, asl r8	@, tmp209,
	sub	r8, r8, #30	@ tmp211, tmp207,
	bl	iMedia_AVC_L_divide_Q	@
	rsb	r1, r10, r8	@ tmp213, D.4688, tmp211
	sxth	r1, r1	@, tmp213
	bl	avc_L_shl	@
	ldr	r10, [fp, #112]	@ gain_rate, pBuf_1(D)->iRmsLastGain
	mov	r8, r0	@ deta,
	add	r3, r10, r0, lsl #8	@ D.4682, gain_rate, deta,
	str	r3, [fp, #112]	@ D.4682, pBuf_1(D)->iRmsLastGain
.L31:
	ldr	r3, [r4]	@ D.4682, MEM[base: _29, offset: 0B]
	add	r10, r10, r8	@ gain_rate, gain_rate, deta
	mov	r0, r6	@ D.4685, tmp252
	mov	r1, r7	@ D.4685,
	add	r9, r9, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.73, ivtmp.73,
	smlal	r0, r1, r3, r10	@ D.4685, D.4682, gain_rate
	mov	r3, r1	@ D.4685, D.4685
	mov	r0, r0, lsr #26	@ D.4685, D.4685,
	mov	r1, r1, asr #26	@, D.4685,
	orr	r0, r0, r3, asl #6	@, D.4685, D.4685,
	bl	iMedia_AVC_sature_32	@
	mov	r1, r7	@ D.4685,
	str	r0, [r4, #-4]	@, MEM[base: _29, offset: 0B]
	mov	r0, r6	@ D.4685, tmp252
	ldr	r3, [r5, #4]!	@ D.4682, MEM[base: _36, offset: 0B]
	smlal	r0, r1, r3, r10	@ D.4685, D.4682, gain_rate
	mov	r3, r1	@ D.4685, D.4685
	mov	r0, r0, lsr #26	@ D.4685, D.4685,
	mov	r1, r1, asr #26	@, D.4685,
	orr	r0, r0, r3, asl #6	@, D.4685, D.4685,
	bl	iMedia_AVC_sature_32	@
	cmp	r9, #256	@ i,
	str	r0, [r4, #1020]	@, MEM[base: _29, offset: 1024B]
	bne	.L31	@,
	mov	r0, #0	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L45:
	ldr	r3, [fp, #116]	@ pBuf_1(D)->iRateType, pBuf_1(D)->iRateType
	cmp	r3, #2	@ pBuf_1(D)->iRateType,
	beq	.L36	@,
	mov	r1, #2	@ tmp243,
	mov	r3, #67108864	@ tmp244,
	str	r1, [fp, #116]	@ tmp243, pBuf_1(D)->iRateType
	mov	r0, #0	@ D.4690,
	mov	r1, #4	@ D.4690,
	str	r3, [fp, #120]	@ tmp244, pBuf_1(D)->iRateVal
	b	.L32	@
	.fnend
	.size	iMedia_AVC_Pro, .-iMedia_AVC_Pro
	.global	iMedia_AVC_gain_alpha
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
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
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
