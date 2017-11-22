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
	.file	"dsp_util.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I arch/arm/include/generated/uapi -I arch/arm/include/generated
@ -I include -I ./arch/arm/include/uapi -I arch/arm/include/generated/uapi
@ -I ./include/uapi -I include/generated/uapi
@ -I arch/arm/mach-hi3716mv310/include -I ./../../../source/common/include
@ -I ./../../../source/common/api/include
@ -I ./../../../source/common/drv/include -I ./../../../source/msp/include
@ -I ./../../../source/msp/api/include -I ./../../../source/msp/drv/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I ./../../../source/component/ha_codec/include
@ -I -I./../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I ./../../../source/msp/drv/adsp/adsp_v1_1
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D HI_SND_AOE_SWSIMULATE_SUPPORT -D INTERLEAVED_OUTPUT
@ -D HI_SND_AVC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(dsp_util)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/util/.dsp_util.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/util/dsp_util.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/util/dsp_util.o
@ -g0 -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-maybe-uninitialized
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Wformat=1 -Wformat-security -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-PIE -fno-dwarf2-cfi-asm
@ -fno-ipa-sra -funwind-tables -fomit-frame-pointer
@ -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
@ -fstack-protector -fverbose-asm -fno-delete-null-pointer-checks
@ -fdiagnostics-color=auto -fno-aggressive-loop-optimizations -fno-tree-vrp
@ --param allow-store-data-races=0 --param ssp-buffer-size=4
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference
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
@ -fstack-protector -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
@ -marm -mglibc -mlittle-endian -mlra -mpic-data-is-text-relative
@ -msched-prolog -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.type	AOE_FMUL_16_Q15.part.0, %function
AOE_FMUL_16_Q15.part.0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sxth	r0, r0	@ D.17023, var
	cmp	r1, #8388608	@ coef,
	smull	r0, r1, r1, r0	@ D.17022, coef, D.17023
	mov	r0, r0, lsr #23	@ D.17022, D.17022,
	orr	r0, r0, r1, asl #9	@ D.17022, D.17022, D.17022,
	bls	.L4	@,
	mov	r3, r0, asr #31	@ sign, var,
	cmp	r3, r0, asr #15	@ sign, var,
	eorne	r0, r3, #32512	@ var, sign,
	eorne	r0, r0, #255	@ var, var,
.L4:
	uxth	r0, r0	@ D.17024, var
	sxth	r0, r0	@, D.17024
	bx	lr	@
	.fnend
	.size	AOE_FMUL_16_Q15.part.0, .-AOE_FMUL_16_Q15.part.0
	.align	2
	.type	Volume16BitPro_Coef, %function
Volume16BitPro_Coef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ samples,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	sub	r4, r1, #1	@ samples, samples,
	mov	r6, r0	@ pcm, pcm
	mov	r5, r2	@ u32Coef, u32Coef
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L9:
	cmp	r5, #0	@ u32Coef,
	mov	r1, r5	@, u32Coef
	mov	r0, r5	@ D.17045, u32Coef
	ldrh	r3, [r6]	@ D.17044, MEM[base: pcm_19, offset: 0B]
	beq	.L8	@,
	sxth	r0, r3	@, D.17044
	bl	AOE_FMUL_16_Q15.part.0	@
.L8:
	sub	r4, r4, #1	@ samples, samples,
	strh	r0, [r6], #2	@ movhi	@ D.17045, MEM[base: pcm_19, offset: 0B]
	cmn	r4, #1	@ samples,
	bne	.L9	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Volume16BitPro_Coef, .-Volume16BitPro_Coef
	.align	2
	.type	AOE_FMUL_24_Q15.part.1, %function
AOE_FMUL_24_Q15.part.1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	cmp	r1, #8388608	@ coef,
	smull	r4, r5, r0, r1	@ D.17049, var, coef
	mov	r3, r4, lsr #23	@ D.17049, D.17049,
	orr	r3, r3, r5, asl #9	@ D.17049, D.17049, D.17049,
	mov	r0, r3	@ D.17050, D.17049
	bls	.L15	@,
	mov	r3, r3, asr #8	@ D.17048, D.17049,
	smull	r2, r3, r1, r3	@ D.17049, coef, D.17048
	mov	r0, r2, lsr #23	@ D.17049, D.17049,
	orr	r0, r0, r3, asl #9	@ var, D.17049, D.17049,
	mov	r3, r0, asr #31	@ sign, var,
	cmp	r3, r0, asr #23	@ sign, var,
	movwne	r0, #65535	@ var,
	movtne	r0, 127	@ var,
	eorne	r0, r0, r3	@ var, var, sign
	mov	r0, r0, asl #8	@ D.17050, var,
.L15:
	ldmfd	sp!, {r4, r5}	@
	bx	lr	@
	.fnend
	.size	AOE_FMUL_24_Q15.part.1, .-AOE_FMUL_24_Q15.part.1
	.align	2
	.type	Volume24BitPro_Coef, %function
Volume24BitPro_Coef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ samples,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	sub	r4, r1, #1	@ samples, samples,
	mov	r6, r0	@ pcm, pcm
	mov	r5, r2	@ u32Coef, u32Coef
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L21:
	cmp	r5, #0	@ u32Coef,
	mov	r1, r5	@, u32Coef
	mov	r3, r5	@ D.17069, u32Coef
	ldr	r0, [r6]	@ data, MEM[base: pcm_18, offset: 0B]
	beq	.L20	@,
	bl	AOE_FMUL_24_Q15.part.1	@
	mov	r3, r0	@ D.17069,
.L20:
	sub	r4, r4, #1	@ samples, samples,
	str	r3, [r6], #4	@ D.17069, MEM[base: pcm_18, offset: 0B]
	cmn	r4, #1	@ samples,
	bne	.L21	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Volume24BitPro_Coef, .-Volume24BitPro_Coef
	.align	2
	.global	UTIL_CalcFrameSize
	.type	UTIL_CalcFrameSize, %function
UTIL_CalcFrameSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #16	@ uBitDepth,
	beq	.L28	@,
	cmp	r1, #24	@ uBitDepth,
	bne	.L33	@,
	mov	r0, r0, asl #2	@ uFrameSize, uCh,
	bx	lr	@
.L33:
	mov	r0, #0	@ uFrameSize,
	bx	lr	@
.L28:
	mov	r0, r0, asl #1	@ uFrameSize, uCh,
	bx	lr	@
	.fnend
	.size	UTIL_CalcFrameSize, .-UTIL_CalcFrameSize
	.align	2
	.global	UTIL_LatencyMs2ByteSize
	.type	UTIL_LatencyMs2ByteSize, %function
UTIL_LatencyMs2ByteSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r1, r1, r0	@ D.17076, u32FrameSize, u32LatencyMs
	movw	r0, #19923	@ tmp121,
	movt	r0, 4194	@ tmp121,
	mul	r2, r2, r1	@ D.17076, u32SampleRate, D.17076
	umull	r2, r3, r2, r0	@ tmp120, D.17076, tmp121
	mov	r0, r3, lsr #6	@,,
	bx	lr	@
	.fnend
	.size	UTIL_LatencyMs2ByteSize, .-UTIL_LatencyMs2ByteSize
	.global	__aeabi_uidiv
	.align	2
	.global	UTIL_LatencyMs
	.type	UTIL_LatencyMs, %function
UTIL_LatencyMs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #1000	@ tmp119,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mul	r1, r2, r1	@, u32SampleRate, u32FrameSize
	mul	r0, r3, r0	@, tmp119, u32DataBytes
	bl	__aeabi_uidiv	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	UTIL_LatencyMs, .-UTIL_LatencyMs
	.align	2
	.global	UTIL_LRLinearGainProcess
	.type	UTIL_LRLinearGainProcess, %function
UTIL_LRLinearGainProcess:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrsh	r4, [sp, #8]	@ s16VolumeR, s16VolumeR
	cmp	r3, r4	@ s16VolumeL, s16VolumeR
	beq	.L38	@,
	cmp	r2, #0	@ InSamps,
	ble	.L49	@,
	sub	r1, r1, #2	@ ivtmp.142, pDestPcmBuf,
	mov	lr, #0	@ n,
	b	.L44	@
.L51:
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r4	@ ret, D.17110, s16VolumeR
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum, ret, ret
@ 0 "" 2
.L43:
	add	lr, lr, #1	@ n, n,
	strh	ip, [r1, #2]!	@ movhi	@ sum, MEM[base: _50, offset: 0B]
	cmp	lr, r2	@ n, InSamps
	add	r0, r0, #2	@ ivtmp.146, ivtmp.146,
	beq	.L50	@,
.L44:
	tst	lr, #1	@ n,
	ldrsh	ip, [r0]	@ D.17110,* ivtmp.146
	bne	.L51	@,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, D.17110, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum, ret, ret
@ 0 "" 2
	b	.L43	@
.L50:
	ldmfd	sp!, {r4, pc}	@
.L38:
	cmp	r2, #0	@ InSamps,
	ldmlefd	sp!, {r4, pc}	@
	sub	r1, r1, #2	@ ivtmp.134, pDestPcmBuf,
	add	r2, r0, r2, lsl #1	@ D.17106, ivtmp.129, InSamps,
.L41:
	ldrsh	ip, [r0], #2	@ D.17110, MEM[base: _4, offset: 0B]
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, D.17110, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum, ret, ret
@ 0 "" 2
	cmp	r0, r2	@ ivtmp.129, D.17106
	strh	ip, [r1, #2]!	@ movhi	@ sum, MEM[base: _3, offset: 0B]
	bne	.L41	@,
	ldmfd	sp!, {r4, pc}	@
.L49:
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	UTIL_LRLinearGainProcess, .-UTIL_LRLinearGainProcess
	.align	2
	.global	UTIL_UpmixPcmData
	.type	UTIL_UpmixPcmData, %function
UTIL_UpmixPcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r2, #16]	@ D.17139, pstFrame_31(D)->u32BitPerSample
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r3, #24	@ D.17139,
	beq	.L94	@,
	cmp	r3, #16	@ D.17139,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r2, #12]	@ D.17139, pstFrame_31(D)->u32SamplesPerFrame
	ldr	r5, [r2]	@ pu16Src, pstFrame_31(D)->pDataBuf
	cmp	r3, #0	@ D.17139,
	beq	.L64	@,
	mov	r6, #0	@ i,
	mov	r8, r0, asl #1	@ uFrameSize, dstCh,
	mov	r4, r6	@ Data, i
	mov	r7, r1	@ WkBuf, WkBuf
.L65:
	cmp	r0, #0	@ dstCh,
	beq	.L72	@,
	add	ip, r7, #2	@ ivtmp.158, WkBuf,
	mov	r3, #0	@ ch,
.L68:
	ldr	lr, [r2, #20]	@ pstFrame_31(D)->u32Channels, pstFrame_31(D)->u32Channels
	add	ip, ip, #2	@ ivtmp.158, ivtmp.158,
	cmp	lr, r3	@ pstFrame_31(D)->u32Channels, ch
	add	r3, r3, #1	@ ch, ch,
	ldrhih	r4, [r5], #2	@ Data, *pu16Src_117
	cmp	r3, r0	@ ch, dstCh
	strh	r4, [ip, #-4]	@ movhi	@ Data,
	bne	.L68	@,
	add	r7, r7, r8	@ WkBuf, WkBuf, uFrameSize
.L72:
	ldr	r3, [r2, #12]	@ D.17139, pstFrame_31(D)->u32SamplesPerFrame
	add	r6, r6, #1	@ i, i,
	cmp	r3, r6	@ D.17139, i
	bhi	.L65	@,
	ldr	ip, [r2, #16]	@ D.17141, pstFrame_31(D)->u32BitPerSample
	str	r1, [r2]	@ WkBuf, pstFrame_31(D)->pDataBuf
	cmp	ip, #16	@ D.17141,
	str	r0, [r2, #20]	@ dstCh, pstFrame_31(D)->u32Channels
	beq	.L70	@,
	cmp	ip, #24	@ D.17141,
	bne	.L92	@,
	mov	r0, r0, asl #2	@ uFrameSize, dstCh,
	mul	r3, r0, r3	@ D.17139, uFrameSize, D.17139
.L69:
	str	r3, [r2, #8]	@ D.17139, pstFrame_31(D)->u32DataBytes
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L94:
	ldr	r3, [r2, #12]	@ D.17139, pstFrame_31(D)->u32SamplesPerFrame
	ldr	r5, [r2]	@ pu32Src, pstFrame_31(D)->pDataBuf
	cmp	r3, #0	@ D.17139,
	beq	.L54	@,
	mov	r6, #0	@ i,
	mov	r8, r0, asl #2	@ uFrameSize, dstCh,
	mov	r4, r6	@ Data, i
	mov	r7, r1	@ WkBuf, WkBuf
.L55:
	cmp	r0, #0	@ dstCh,
	beq	.L62	@,
	add	ip, r7, #4	@ ivtmp.151, WkBuf,
	mov	r3, #0	@ ch,
.L58:
	ldr	lr, [r2, #20]	@ pstFrame_31(D)->u32Channels, pstFrame_31(D)->u32Channels
	add	ip, ip, #4	@ ivtmp.151, ivtmp.151,
	cmp	lr, r3	@ pstFrame_31(D)->u32Channels, ch
	add	r3, r3, #1	@ ch, ch,
	ldrhi	r4, [r5], #4	@ Data, *pu32Src_111
	cmp	r3, r0	@ ch, dstCh
	str	r4, [ip, #-8]	@ Data,
	bne	.L58	@,
	add	r7, r7, r8	@ WkBuf, WkBuf, uFrameSize
.L62:
	ldr	r3, [r2, #12]	@ D.17139, pstFrame_31(D)->u32SamplesPerFrame
	add	r6, r6, #1	@ i, i,
	cmp	r3, r6	@ D.17139, i
	bhi	.L55	@,
	ldr	ip, [r2, #16]	@ D.17141, pstFrame_31(D)->u32BitPerSample
	str	r1, [r2]	@ WkBuf, pstFrame_31(D)->pDataBuf
	cmp	ip, #16	@ D.17141,
	str	r0, [r2, #20]	@ dstCh, pstFrame_31(D)->u32Channels
	beq	.L60	@,
	cmp	ip, #24	@ D.17141,
	beq	.L70	@,
.L92:
	mov	r3, #0	@ D.17139,
	str	r3, [r2, #8]	@ D.17139, pstFrame_31(D)->u32DataBytes
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L60:
	mov	r0, r0, asl #1	@ uFrameSize, dstCh,
	mul	r3, r0, r3	@ D.17139, uFrameSize, D.17139
	b	.L69	@
.L54:
	mov	r8, r0, asl #2	@ uFrameSize, dstCh,
	str	r1, [r2]	@ WkBuf, pstFrame_31(D)->pDataBuf
	str	r0, [r2, #20]	@ dstCh, pstFrame_31(D)->u32Channels
.L70:
	mul	r3, r3, r8	@ D.17139, D.17139, uFrameSize
	str	r3, [r2, #8]	@ D.17139, pstFrame_31(D)->u32DataBytes
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L64:
	str	r1, [r2]	@ WkBuf, pstFrame_31(D)->pDataBuf
	mov	r8, r0, asl #1	@ uFrameSize, dstCh,
	str	r0, [r2, #20]	@ dstCh, pstFrame_31(D)->u32Channels
	b	.L70	@
	.fnend
	.size	UTIL_UpmixPcmData, .-UTIL_UpmixPcmData
	.align	2
	.global	UTIL_DownmixPcmData
	.type	UTIL_DownmixPcmData, %function
UTIL_DownmixPcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r2, #16]	@ D.17167, pstFrame_25(D)->u32BitPerSample
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	cmp	r3, #24	@ D.17167,
	beq	.L135	@,
	cmp	r3, #16	@ D.17167,
	ldmnefd	sp!, {r4, r5, r6, r7, pc}	@
	ldr	r3, [r2, #12]	@ D.17167, pstFrame_25(D)->u32SamplesPerFrame
	ldr	r6, [r2]	@ pu16Src, pstFrame_25(D)->pDataBuf
	cmp	r3, #0	@ D.17167,
	beq	.L106	@,
	mov	r7, r0, asl #1	@ uFrameSize, dstCh,
	mov	lr, r1	@ WkBuf, WkBuf
	mov	r5, #0	@ i,
.L107:
	cmp	r0, #0	@ dstCh,
	beq	.L113	@,
	add	ip, r6, #2	@ ivtmp.174, pu16Src,
	mov	r3, #0	@ ch,
.L109:
	cmp	r0, r3	@ dstCh, ch
	add	r3, r3, #1	@ ch, ch,
	add	ip, ip, #2	@ ivtmp.174, ivtmp.174,
	ldrhih	r4, [ip, #-4]	@ Data, MEM[base: _12, offset: 4294967294B]
	strhih	r4, [lr], #2	@ movhi	@ Data, MEM[(HI_U16 *)WkBuf_101]
	cmp	r3, r0	@ ch, dstCh
	bne	.L109	@,
	add	r6, r6, r7	@ pu16Src, pu16Src, uFrameSize
.L113:
	ldr	r3, [r2, #12]	@ D.17167, pstFrame_25(D)->u32SamplesPerFrame
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ D.17167, i
	bhi	.L107	@,
	ldr	ip, [r2, #16]	@ D.17169, pstFrame_25(D)->u32BitPerSample
	str	r1, [r2]	@ WkBuf, pstFrame_25(D)->pDataBuf
	cmp	ip, #16	@ D.17169,
	str	r0, [r2, #20]	@ dstCh, pstFrame_25(D)->u32Channels
	beq	.L111	@,
	cmp	ip, #24	@ D.17169,
	bne	.L133	@,
	mov	r0, r0, asl #2	@ uFrameSize, dstCh,
	mul	r3, r0, r3	@ D.17167, uFrameSize, D.17167
.L110:
	str	r3, [r2, #8]	@ D.17167, pstFrame_25(D)->u32DataBytes
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L135:
	ldr	r3, [r2, #12]	@ D.17167, pstFrame_25(D)->u32SamplesPerFrame
	ldr	r6, [r2]	@ pu32Src, pstFrame_25(D)->pDataBuf
	cmp	r3, #0	@ D.17167,
	beq	.L97	@,
	mov	r7, r0, asl #2	@ uFrameSize, dstCh,
	mov	lr, r1	@ WkBuf, WkBuf
	mov	r5, #0	@ i,
.L98:
	cmp	r0, #0	@ dstCh,
	beq	.L104	@,
	add	ip, r6, #4	@ ivtmp.167, pu32Src,
	mov	r3, #0	@ ch,
.L100:
	cmp	r0, r3	@ dstCh, ch
	add	r3, r3, #1	@ ch, ch,
	add	ip, ip, #4	@ ivtmp.167, ivtmp.167,
	ldrhi	r4, [ip, #-8]	@ Data, MEM[base: _27, offset: 4294967292B]
	strhi	r4, [lr], #4	@ Data, MEM[(HI_U32 *)WkBuf_97]
	cmp	r3, r0	@ ch, dstCh
	bne	.L100	@,
	add	r6, r6, r7	@ pu32Src, pu32Src, uFrameSize
.L104:
	ldr	r3, [r2, #12]	@ D.17167, pstFrame_25(D)->u32SamplesPerFrame
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ D.17167, i
	bhi	.L98	@,
	ldr	ip, [r2, #16]	@ D.17169, pstFrame_25(D)->u32BitPerSample
	str	r1, [r2]	@ WkBuf, pstFrame_25(D)->pDataBuf
	cmp	ip, #16	@ D.17169,
	str	r0, [r2, #20]	@ dstCh, pstFrame_25(D)->u32Channels
	beq	.L102	@,
	cmp	ip, #24	@ D.17169,
	beq	.L111	@,
.L133:
	mov	r3, #0	@ D.17167,
	str	r3, [r2, #8]	@ D.17167, pstFrame_25(D)->u32DataBytes
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L102:
	mov	r0, r0, asl #1	@ uFrameSize, dstCh,
	mul	r3, r0, r3	@ D.17167, uFrameSize, D.17167
	b	.L110	@
.L97:
	mov	r7, r0, asl #2	@ uFrameSize, dstCh,
	str	r1, [r2]	@ WkBuf, pstFrame_25(D)->pDataBuf
	str	r0, [r2, #20]	@ dstCh, pstFrame_25(D)->u32Channels
.L111:
	mul	r3, r3, r7	@ D.17167, D.17167, uFrameSize
	str	r3, [r2, #8]	@ D.17167, pstFrame_25(D)->u32DataBytes
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L106:
	str	r1, [r2]	@ WkBuf, pstFrame_25(D)->pDataBuf
	mov	r7, r0, asl #1	@ uFrameSize, dstCh,
	str	r0, [r2, #20]	@ dstCh, pstFrame_25(D)->u32Channels
	b	.L111	@
	.fnend
	.size	UTIL_DownmixPcmData, .-UTIL_DownmixPcmData
	.align	2
	.global	UTIL_UnifyBitDepthPcmData
	.type	UTIL_UnifyBitDepthPcmData, %function
UTIL_UnifyBitDepthPcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r2, #20]	@ pstFrame_11(D)->u32Channels, pstFrame_11(D)->u32Channels
	cmp	r0, #16	@ dstBitDepth,
	ldr	ip, [r2, #12]	@ pstFrame_11(D)->u32SamplesPerFrame, pstFrame_11(D)->u32SamplesPerFrame
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mul	r3, ip, r3	@ Samples, pstFrame_11(D)->u32SamplesPerFrame, pstFrame_11(D)->u32Channels
	beq	.L148	@,
	cmp	r0, #24	@ dstBitDepth,
	ldmnefd	sp!, {r4, pc}	@
	ldr	r0, [r2, #16]	@ pstFrame_11(D)->u32BitPerSample, pstFrame_11(D)->u32BitPerSample
	cmp	r0, #16	@ pstFrame_11(D)->u32BitPerSample,
	ldmnefd	sp!, {r4, pc}	@
	cmp	r3, #0	@ Samples,
	ldr	lr, [r2]	@ pu16Src, pstFrame_11(D)->pDataBuf
	movne	r4, r1	@ WkBuf, WkBuf
	subne	lr, lr, #2	@ ivtmp.205, pu16Src,
	movne	ip, #0	@ i,
	beq	.L144	@,
.L143:
	ldrh	r0, [lr, #2]!	@ Data, MEM[base: _3, offset: 0B]
	add	ip, ip, #1	@ i, i,
	cmp	ip, r3	@ i, Samples
	mov	r0, r0, asl #16	@ Data, Data,
	str	r0, [r4], #4	@ Data, MEM[base: WkBuf_58, offset: 0B]
	bne	.L143	@,
.L144:
	ldr	r3, [r2, #8]	@ pstFrame_11(D)->u32DataBytes, pstFrame_11(D)->u32DataBytes
	mov	r0, #24	@ tmp148,
	str	r1, [r2]	@ WkBuf, pstFrame_11(D)->pDataBuf
	str	r0, [r2, #16]	@ tmp148, pstFrame_11(D)->u32BitPerSample
	mov	r3, r3, asl #1	@ D.17208, pstFrame_11(D)->u32DataBytes,
	str	r3, [r2, #8]	@ D.17208, pstFrame_11(D)->u32DataBytes
	ldmfd	sp!, {r4, pc}	@
.L148:
	ldr	r0, [r2, #16]	@ pstFrame_11(D)->u32BitPerSample, pstFrame_11(D)->u32BitPerSample
	cmp	r0, #24	@ pstFrame_11(D)->u32BitPerSample,
	ldmnefd	sp!, {r4, pc}	@
	cmp	r3, #0	@ Samples,
	ldr	lr, [r2]	@ pu32Src, pstFrame_11(D)->pDataBuf
	movne	r4, r1	@ WkBuf, WkBuf
	subne	lr, lr, #4	@ ivtmp.189, pu32Src,
	movne	ip, #0	@ i,
	beq	.L141	@,
.L140:
	ldr	r0, [lr, #4]!	@ Data, MEM[base: _6, offset: 0B]
	add	ip, ip, #1	@ i, i,
	cmp	ip, r3	@ i, Samples
	mov	r0, r0, lsr #16	@ Data, Data,
	strh	r0, [r4], #2	@ movhi	@ Data, MEM[base: WkBuf_56, offset: 0B]
	bne	.L140	@,
.L141:
	ldr	r3, [r2, #8]	@ pstFrame_11(D)->u32DataBytes, pstFrame_11(D)->u32DataBytes
	mov	r0, #16	@ tmp143,
	str	r1, [r2]	@ WkBuf, pstFrame_11(D)->pDataBuf
	str	r0, [r2, #16]	@ tmp143, pstFrame_11(D)->u32BitPerSample
	mov	r3, r3, lsr #1	@ D.17208, pstFrame_11(D)->u32DataBytes,
	str	r3, [r2, #8]	@ D.17208, pstFrame_11(D)->u32DataBytes
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	UTIL_UnifyBitDepthPcmData, .-UTIL_UnifyBitDepthPcmData
	.align	2
	.global	UTIL_PreLRGainProcess
	.type	UTIL_PreLRGainProcess, %function
UTIL_PreLRGainProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	uxtb	r3, r1	@ u32VolumeInt, VolumeInt
	ldr	ip, [r0, #12]	@ pstFrame_3(D)->u32SamplesPerFrame, pstFrame_3(D)->u32SamplesPerFrame
	cmp	r3, #138	@ u32VolumeInt,
	ldr	r1, [r0, #20]	@ pstFrame_3(D)->u32Channels, pstFrame_3(D)->u32Channels
	mul	r1, ip, r1	@ samples, pstFrame_3(D)->u32SamplesPerFrame, pstFrame_3(D)->u32Channels
	bhi	.L158	@,
	rsb	ip, r3, #139	@ idx, u32VolumeInt,
	cmp	ip, #98	@ idx,
	bhi	.L159	@,
	cmp	r2, #0	@ VolumeDec,
	beq	.L165	@,
	ldr	lr, .L168	@ tmp140,
	ble	.L153	@,
	rsb	r3, r3, #138	@ D.17236, u32VolumeInt,
	ldr	ip, [lr, ip, asl #2]	@ D.17236, g_u32VolCoef
	ldr	r3, [lr, r3, asl #2]	@ tmp144, g_u32VolCoef
	rsb	r3, ip, r3	@ D.17236, D.17236, tmp144
	mul	r2, r2, r3	@ D.17236, VolumeDec, D.17236
	add	r2, ip, r2, lsr #3	@ D.17237, D.17236, D.17236,
.L152:
	cmp	r2, #8388608	@ D.17237,
	ldreq	pc, [sp], #4	@
.L167:
	ldr	r3, [r0, #16]	@ D.17236, pstFrame_3(D)->u32BitPerSample
	cmp	r3, #16	@ D.17236,
	bne	.L166	@,
.L155:
	ldr	r0, [r0]	@, pstFrame_3(D)->pDataBuf
	ldr	lr, [sp], #4	@,
	b	Volume16BitPro_Coef	@
.L159:
	mov	r2, #0	@ D.17237,
.L157:
	ldr	r3, [r0, #16]	@ D.17236, pstFrame_3(D)->u32BitPerSample
	cmp	r3, #16	@ D.17236,
	beq	.L155	@,
.L166:
	cmp	r3, #24	@ D.17236,
	ldrne	pc, [sp], #4	@
	ldr	r0, [r0]	@, pstFrame_3(D)->pDataBuf
	ldr	lr, [sp], #4	@,
	b	Volume24BitPro_Coef	@
.L158:
	movw	r2, #48505	@ D.17237,
	movt	r2, 1016	@ D.17237,
	b	.L157	@
.L153:
	rsb	r3, r3, #140	@ D.17236, u32VolumeInt,
	ldr	ip, [lr, ip, asl #2]	@ D.17236, g_u32VolCoef
	ldr	r3, [lr, r3, asl #2]	@ tmp151, g_u32VolCoef
	rsb	r3, ip, r3	@ D.17236, D.17236, tmp151
	mul	r2, r2, r3	@ D.17236, VolumeDec, D.17236
	sub	r2, ip, r2, lsr #3	@ D.17237, D.17236, D.17236,
	b	.L152	@
.L165:
	ldr	r3, .L168	@ tmp139,
	ldr	r2, [r3, ip, asl #2]	@ D.17237, g_u32VolCoef
	cmp	r2, #8388608	@ D.17237,
	ldreq	pc, [sp], #4	@
	b	.L167	@
.L169:
	.align	2
.L168:
	.word	.LANCHOR0
	.fnend
	.size	UTIL_PreLRGainProcess, .-UTIL_PreLRGainProcess
	.align	2
	.global	UTIL_LRGainProcess
	.type	UTIL_LRGainProcess, %function
UTIL_LRGainProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r1, #1	@ bLinearMode,
	ldr	r4, [r0, #12]	@ pstFrame_3(D)->u32SamplesPerFrame, pstFrame_3(D)->u32SamplesPerFrame
	ldr	r1, [r0, #20]	@ pstFrame_3(D)->u32Channels, pstFrame_3(D)->u32Channels
	mul	r4, r4, r1	@ samples, pstFrame_3(D)->u32SamplesPerFrame, pstFrame_3(D)->u32Channels
	beq	.L237	@,
	cmp	r2, #121	@ VolumeL,
	cmpeq	r3, #121	@, VolumeR,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, [r0, #16]	@ D.17373, pstFrame_3(D)->u32BitPerSample
	cmp	r1, #16	@ D.17373,
	beq	.L188	@,
	cmp	r1, #24	@ D.17373,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	uxtb	ip, r2	@ D.17378, VolumeL
	uxtb	r1, r3	@ D.17378, VolumeR
	rsb	ip, ip, #139	@ idx, D.17378,
	rsb	r1, r1, #139	@ idx, D.17378,
	cmp	ip, #99	@ idx,
	ldr	lr, .L250	@ tmp296,
	ldr	r5, [r0]	@ pcm, pstFrame_3(D)->pDataBuf
	movge	ip, #99	@ idx,
	cmp	r1, #99	@ idx,
	bic	ip, ip, ip, asr #31	@ idx, idx
	movge	r1, #99	@ idx,
	cmp	r2, r3	@ VolumeL, VolumeR
	bic	r1, r1, r1, asr #31	@ idx, idx
	ldr	r6, [lr, ip, asl #2]	@ realVolL, g_u32VolCoef
	ldr	r7, [lr, r1, asl #2]	@ realVolR, g_u32VolCoef
	beq	.L199	@,
	cmp	r4, #0	@ samples,
	sub	r4, r4, #1	@ samples, samples,
	beq	.L238	@,
	sub	r5, r5, #4	@ ivtmp.300, pcm,
	b	.L207	@
.L240:
	cmp	r7, #0	@ realVolR,
	mov	r1, r7	@, realVolR
	mov	r3, r7	@ D.17383, realVolR
	beq	.L206	@,
.L230:
	bl	AOE_FMUL_24_Q15.part.1	@
	mov	r3, r0	@ D.17383,
.L206:
	subs	r4, r4, #1	@ samples, samples,
	str	r3, [r5]	@ D.17383, MEM[base: _189, offset: 0B]
	bcc	.L239	@,
.L207:
	tst	r4, #1	@ samples,
	ldr	r0, [r5, #4]!	@ data, MEM[base: _189, offset: 0B]
	bne	.L240	@,
	cmp	r6, #0	@ realVolL,
	mov	r1, r6	@, realVolL
	mov	r3, r6	@ D.17383, realVolL
	beq	.L206	@,
	b	.L230	@
.L237:
	ldr	r1, [r0, #16]	@ D.17373, pstFrame_3(D)->u32BitPerSample
	cmp	r1, #16	@ D.17373,
	beq	.L173	@,
	cmp	r1, #24	@ D.17373,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	sxth	r2, r2	@ D.17378, VolumeL
	sxth	r3, r3	@ D.17378, VolumeR
	cmp	r2, r3	@ D.17378, D.17378
	ldr	r0, [r0]	@ D.17374, pstFrame_3(D)->pDataBuf
	beq	.L182	@,
	cmp	r4, #0	@ samples,
	ble	.L241	@,
	mov	ip, #0	@ n,
	b	.L187	@
.L243:
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, r1, r3	@ ret, MEM[base: _75, offset: 0B], D.17378
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r1, r1, r1	@ sum, ret, ret
@ 0 "" 2
.L186:
	add	ip, ip, #1	@ n, n,
	str	r1, [r0], #4	@ sum, MEM[(HI_S32 *)_190]
	cmp	r4, ip	@ samples, n
	beq	.L242	@,
.L187:
	tst	ip, #1	@ n,
	ldr	r1, [r0]	@ MEM[base: _75, offset: 0B],* ivtmp.247
	bne	.L243	@,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, r1, r2	@ ret, MEM[base: _81, offset: 0B], D.17378
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r1, r1, r1	@ sum, ret, ret
@ 0 "" 2
	b	.L186	@
.L173:
	sxth	r2, r2	@ D.17378, VolumeL
	sxth	r3, r3	@ D.17378, VolumeR
	cmp	r2, r3	@ D.17378, D.17378
	ldr	r0, [r0]	@ D.17374, pstFrame_3(D)->pDataBuf
	beq	.L175	@,
	cmp	r4, #0	@ samples,
	ble	.L244	@,
	mov	ip, #0	@ n,
	b	.L181	@
.L246:
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, r1, r3	@ ret, D.17378, D.17378
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r1, r1, r1	@ sum, ret, ret
@ 0 "" 2
.L180:
	add	ip, ip, #1	@ n, n,
	strh	r1, [r0], #2	@ movhi	@ sum, MEM[(HI_S16 *)_15]
	cmp	r4, ip	@ samples, n
	beq	.L245	@,
.L181:
	tst	ip, #1	@ n,
	ldrsh	r1, [r0]	@ D.17378,* ivtmp.231
	bne	.L246	@,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, r1, r2	@ ret, D.17378, D.17378
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r1, r1, r1	@ sum, ret, ret
@ 0 "" 2
	b	.L180	@
.L239:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L188:
	uxtb	ip, r2	@ D.17378, VolumeL
	uxtb	r1, r3	@ D.17378, VolumeR
	rsb	ip, ip, #139	@ idx, D.17378,
	rsb	r1, r1, #139	@ idx, D.17378,
	cmp	ip, #99	@ idx,
	ldr	lr, .L250	@ tmp279,
	ldr	r5, [r0]	@ pcm, pstFrame_3(D)->pDataBuf
	movge	ip, #99	@ idx,
	cmp	r1, #99	@ idx,
	bic	ip, ip, ip, asr #31	@ idx, idx
	movge	r1, #99	@ idx,
	cmp	r2, r3	@ VolumeL, VolumeR
	bic	r1, r1, r1, asr #31	@ idx, idx
	ldr	r6, [lr, ip, asl #2]	@ realVolL, g_u32VolCoef
	ldr	r7, [lr, r1, asl #2]	@ realVolR, g_u32VolCoef
	beq	.L190	@,
	cmp	r4, #0	@ samples,
	sub	r4, r4, #1	@ samples, samples,
	beq	.L247	@,
	sub	r5, r5, #2	@ ivtmp.272, pcm,
	b	.L198	@
.L249:
	cmp	r6, #0	@ realVolL,
	mov	r1, r6	@, realVolL
	mov	r3, r6	@ D.17382, realVolL
	beq	.L197	@,
.L229:
	bl	AOE_FMUL_16_Q15.part.0	@
	mov	r3, r0	@ D.17382,
.L197:
	subs	r4, r4, #1	@ samples, samples,
	strh	r3, [r5]	@ movhi	@ D.17382, MEM[base: _62, offset: 0B]
	bcc	.L248	@,
.L198:
	tst	r4, #1	@ samples,
	ldrsh	r0, [r5, #2]!	@ data, MEM[base: _62, offset: 0B]
	bne	.L249	@,
	cmp	r7, #0	@ realVolR,
	mov	r1, r7	@, realVolR
	mov	r3, r7	@ D.17382, realVolR
	beq	.L197	@,
	b	.L229	@
.L248:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L242:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L245:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L199:
	cmp	r4, #0	@ samples,
	sub	r4, r4, #1	@ samples, samples,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L202:
	cmp	r6, #0	@ realVolL,
	mov	r1, r6	@, realVolL
	mov	r3, r6	@ D.17383, realVolL
	ldr	r0, [r5]	@ data, MEM[base: pcm_224, offset: 0B]
	beq	.L201	@,
	bl	AOE_FMUL_24_Q15.part.1	@
	mov	r3, r0	@ D.17383,
.L201:
	sub	r4, r4, #1	@ samples, samples,
	str	r3, [r5], #4	@ D.17383, MEM[base: pcm_224, offset: 0B]
	cmn	r4, #1	@ samples,
	bne	.L202	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L190:
	cmp	r4, #0	@ samples,
	sub	r4, r4, #1	@ samples, samples,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L193:
	cmp	r6, #0	@ realVolL,
	mov	r1, r6	@, realVolL
	mov	r0, r6	@ D.17382, realVolL
	ldrh	r3, [r5]	@ D.17375, MEM[base: pcm_220, offset: 0B]
	beq	.L192	@,
	sxth	r0, r3	@, D.17375
	bl	AOE_FMUL_16_Q15.part.0	@
.L192:
	sub	r4, r4, #1	@ samples, samples,
	strh	r0, [r5], #2	@ movhi	@ D.17382, MEM[base: pcm_220, offset: 0B]
	cmn	r4, #1	@ samples,
	bne	.L193	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L182:
	cmp	r4, #0	@ samples,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	sub	r0, r0, #4	@ ivtmp.236, D.17374,
	mov	r1, #0	@ n,
.L184:
	ldr	r3, [r0, #4]!	@ MEM[base: _160, offset: 0B], MEM[base: _160, offset: 0B]
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, MEM[base: _160, offset: 0B], D.17378
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n, n,
	str	r3, [r0]	@ sum, MEM[base: _160, offset: 0B]
	cmp	r4, r1	@ samples, n
	bne	.L184	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L175:
	cmp	r4, #0	@ samples,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r0, r4, lsl #1	@ D.17379, ivtmp.226, samples,
.L178:
	ldrsh	r3, [r0]	@ D.17378, MEM[base: _207, offset: 0B]
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, D.17378, D.17378
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	strh	r3, [r0], #2	@ movhi	@ sum, MEM[base: _207, offset: 0B]
	cmp	r0, r4	@ ivtmp.226, D.17379
	bne	.L178	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L247:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L238:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L241:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L244:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L251:
	.align	2
.L250:
	.word	.LANCHOR0
	.fnend
	.size	UTIL_LRGainProcess, .-UTIL_LRGainProcess
	.align	2
	.global	UTIL_MixerPro
	.type	UTIL_MixerPro, %function
UTIL_MixerPro:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ samples
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldreq	pc, [sp], #4	@
	cmp	r3, #16	@ uBitDepth,
	beq	.L262	@,
	cmp	r3, #24	@ uBitDepth,
	ldrne	pc, [sp], #4	@
	sub	r1, r1, #4	@ ivtmp.337, pInBuf,
	mov	ip, #0	@ i,
.L258:
	ldr	r3, [r0]	@ MEM[base: pMixBuf_57, offset: 0B], MEM[base: pMixBuf_57, offset: 0B]
	ldr	lr, [r1, #4]!	@ MEM[base: _6, offset: 0B], MEM[base: _6, offset: 0B]
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r3, r3, lr	@ Lvar1, MEM[base: pMixBuf_57, offset: 0B], MEM[base: _6, offset: 0B]
@ 0 "" 2
	add	ip, ip, #1	@ i, i,
	str	r3, [r0], #4	@ Lvar1, MEM[base: pMixBuf_57, offset: 0B]
	cmp	ip, r2	@ i, samples
	bne	.L258	@,
	ldr	pc, [sp], #4	@
.L262:
	sub	r1, r1, #2	@ ivtmp.314, pInBuf,
	mov	ip, #0	@ i,
.L256:
	ldrsh	lr, [r1, #2]!	@ D.17437, MEM[base: _16, offset: 0B]
	add	ip, ip, #1	@ i, i,
	ldrsh	r3, [r0]	@ D.17437, MEM[base: pMixBuf_55, offset: 0B]
	add	r3, r3, lr	@ x, D.17437, D.17437
	mov	lr, r3, asr #31	@ sign, x,
	cmp	lr, r3, asr #15	@ sign, x,
	eorne	r3, lr, #32512	@ x, sign,
	eorne	r3, r3, #255	@ x, x,
	cmp	ip, r2	@ i, samples
	strh	r3, [r0], #2	@ movhi	@ x, MEM[base: pMixBuf_55, offset: 0B]
	bne	.L256	@,
	ldr	pc, [sp], #4	@
	.fnend
	.size	UTIL_MixerPro, .-UTIL_MixerPro
	.align	2
	.global	UTIL_ChannelModeProcess
	.type	UTIL_ChannelModeProcess, %function
UTIL_ChannelModeProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]	@ pstFrame_3(D)->u32Channels, pstFrame_3(D)->u32Channels
	sub	r1, r1, #1	@ tmp197, u32ChannelMode,
	ldr	ip, [r0, #12]	@ pstFrame_3(D)->u32SamplesPerFrame, pstFrame_3(D)->u32SamplesPerFrame
	mul	r3, ip, r3	@ D.17569, pstFrame_3(D)->u32SamplesPerFrame, pstFrame_3(D)->u32Channels
	cmp	r1, #6	@ tmp197,
	ldrls	pc, [pc, r1, asl #2]	@ tmp197
	b	.L263	@
.L266:
	.word	.L265
	.word	.L267
	.word	.L268
	.word	.L269
	.word	.L270
	.word	.L271
	.word	.L272
.L272:
	cmp	r3, #0	@ D.17569,
	ldr	r1, [r0]	@ pPcmBuf, pstFrame_3(D)->pDataBuf
	bxeq	lr	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L365	@,
	cmp	r2, #24	@ dstBitDepth,
	bxne	lr	@
	mov	r2, #0	@ i,
	mov	r0, r2	@ tmp224, i
.L296:
	add	r2, r2, #1	@ i, i,
	str	r0, [r1], #4	@ tmp224, MEM[base: pPcmBuf_260, offset: 0B]
	cmp	r2, r3	@ i, D.17569
	bne	.L296	@,
.L263:
	bx	lr	@
.L271:
	cmp	r3, #0	@ D.17569,
	ldr	r1, [r0]	@ pPcmBuf, pstFrame_3(D)->pDataBuf
	bxeq	lr	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L366	@,
	cmp	r2, #24	@ dstBitDepth,
	bxne	lr	@
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	mov	r2, #0	@ i,
	mov	r0, r2	@ tmp228, i
.L293:
	add	r2, r2, #1	@ i, i,
	str	r0, [r1, #4]	@ tmp228, MEM[base: pPcmBuf_257, offset: 4B]
	cmp	r2, r3	@ i, D.17569
	add	r1, r1, #8	@ pPcmBuf, pPcmBuf,
	bne	.L293	@,
	bx	lr	@
.L265:
	cmp	r3, #0	@ D.17569,
	ldr	r1, [r0]	@ pPcmBuf, pstFrame_3(D)->pDataBuf
	bxeq	lr	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L367	@,
	cmp	r2, #24	@ dstBitDepth,
	bxne	lr	@
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #8	@ ivtmp.372, pPcmBuf,
	mov	r0, #0	@ i,
.L278:
	ldmdb	r2, {r1, ip}	@ ivtmp.372,,
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r1, r1, ip	@ mix, MEM[base: _230, offset: 4294967288B], MEM[base: _230, offset: 4294967292B]
@ 0 "" 2
	add	r0, r0, #1	@ i, i,
	str	r1, [r2, #-8]	@ mix, MEM[base: _230, offset: 4294967288B]
	cmp	r0, r3	@ i, D.17569
	str	r1, [r2, #-4]	@ mix, MEM[base: _230, offset: 4294967292B]
	add	r2, r2, #8	@ ivtmp.372, ivtmp.372,
	bne	.L278	@,
	bx	lr	@
.L267:
	cmp	r3, #0	@ D.17569,
	ldr	r1, [r0]	@ pPcmBuf, pstFrame_3(D)->pDataBuf
	bxeq	lr	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L368	@,
	cmp	r2, #24	@ dstBitDepth,
	bxne	lr	@
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #8	@ ivtmp.384, pPcmBuf,
	mov	r1, #0	@ i,
.L281:
	ldr	r0, [r2, #-8]	@ MEM[base: _130, offset: 4294967288B], MEM[base: _130, offset: 4294967288B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, r3	@ i, D.17569
	add	r2, r2, #8	@ ivtmp.384, ivtmp.384,
	str	r0, [r2, #-12]	@ MEM[base: _130, offset: 4294967288B], MEM[base: _130, offset: 4294967292B]
	bne	.L281	@,
	bx	lr	@
.L268:
	cmp	r3, #0	@ D.17569,
	ldr	r1, [r0]	@ pPcmBuf, pstFrame_3(D)->pDataBuf
	bxeq	lr	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L369	@,
	cmp	r2, #24	@ dstBitDepth,
	bxne	lr	@
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #8	@ ivtmp.396, pPcmBuf,
	mov	r1, #0	@ i,
.L284:
	ldr	r0, [r2, #-4]	@ MEM[base: _18, offset: 4294967292B], MEM[base: _18, offset: 4294967292B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, r3	@ i, D.17569
	add	r2, r2, #8	@ ivtmp.396, ivtmp.396,
	str	r0, [r2, #-16]	@ MEM[base: _18, offset: 4294967292B], MEM[base: _18, offset: 4294967288B]
	bne	.L284	@,
	bx	lr	@
.L269:
	cmp	r3, #0	@ D.17569,
	ldr	r1, [r0]	@ pPcmBuf, pstFrame_3(D)->pDataBuf
	bxeq	lr	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L370	@,
	cmp	r2, #24	@ dstBitDepth,
	bxne	lr	@
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #8	@ ivtmp.408, pPcmBuf,
	mov	r1, #0	@ i,
.L287:
	ldr	ip, [r2, #-8]	@ data, MEM[base: _63, offset: 4294967288B]
	add	r1, r1, #1	@ i, i,
	ldr	r0, [r2, #-4]	@ MEM[base: _63, offset: 4294967292B], MEM[base: _63, offset: 4294967292B]
	cmp	r1, r3	@ i, D.17569
	stmdb	r2, {r0, ip}	@ ivtmp.408,,
	add	r2, r2, #8	@ ivtmp.408, ivtmp.408,
	bne	.L287	@,
	bx	lr	@
.L270:
	cmp	r3, #0	@ D.17569,
	ldr	r1, [r0]	@ pPcmBuf, pstFrame_3(D)->pDataBuf
	bxeq	lr	@
	cmp	r2, #16	@ dstBitDepth,
	beq	.L371	@,
	cmp	r2, #24	@ dstBitDepth,
	bxne	lr	@
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	mov	r2, #0	@ i,
	mov	r0, r2	@ tmp226, i
.L290:
	str	r0, [r1, r2, asl #3]	@ tmp226, MEM[base: pPcmBuf_17, index: i_255, step: 8, offset: 0B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, r3	@ i, D.17569
	bne	.L290	@,
	bx	lr	@
.L367:
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #4	@ ivtmp.366, pPcmBuf,
	mov	r0, #0	@ i,
.L277:
	ldrsh	ip, [r2, #-2]	@ D.17571, MEM[base: _64, offset: 4294967294B]
	add	r0, r0, #1	@ i, i,
	ldrsh	r1, [r2, #-4]	@ D.17571, MEM[base: _64, offset: 4294967292B]
	add	r2, r2, #4	@ ivtmp.366, ivtmp.366,
	add	r1, r1, ip	@ x, D.17571, D.17571
	mov	ip, r1, asr #31	@ sign, x,
	cmp	ip, r1, asr #15	@ sign, x,
	eorne	r1, ip, #32512	@ x, sign,
	eorne	r1, r1, #255	@ x, x,
	cmp	r0, r3	@ i, D.17569
	uxth	r1, r1	@ D.17572, x
	strh	r1, [r2, #-8]	@ movhi	@ D.17572, MEM[base: _64, offset: 4294967292B]
	strh	r1, [r2, #-6]	@ movhi	@ D.17572, MEM[base: _64, offset: 4294967294B]
	bne	.L277	@,
	bx	lr	@
.L366:
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	mov	r2, #0	@ i,
	mov	r0, r2	@ tmp227, i
.L292:
	add	r2, r2, #1	@ i, i,
	strh	r0, [r1, #2]	@ movhi	@ tmp227, MEM[base: pPcmBuf_237, offset: 2B]
	cmp	r2, r3	@ i, D.17569
	add	r1, r1, #4	@ pPcmBuf, pPcmBuf,
	bne	.L292	@,
	bx	lr	@
.L371:
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #4	@ ivtmp.414, pPcmBuf,
	mov	r1, #0	@ i,
	mov	r0, r1	@ tmp225, i
.L289:
	add	r1, r1, #1	@ i, i,
	strh	r0, [r2, #-4]	@ movhi	@ tmp225, MEM[base: _46, offset: 4294967292B]
	cmp	r1, r3	@ i, D.17569
	add	r2, r2, #4	@ ivtmp.414, ivtmp.414,
	bne	.L289	@,
	bx	lr	@
.L370:
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #4	@ ivtmp.402, pPcmBuf,
	mov	r1, #0	@ i,
.L286:
	ldrh	ip, [r2, #-4]	@ data, MEM[base: _93, offset: 4294967292B]
	add	r1, r1, #1	@ i, i,
	ldrh	r0, [r2, #-2]	@ MEM[base: _93, offset: 4294967294B], MEM[base: _93, offset: 4294967294B]
	cmp	r1, r3	@ i, D.17569
	add	r2, r2, #4	@ ivtmp.402, ivtmp.402,
	strh	ip, [r2, #-6]	@ movhi	@ data, MEM[base: _93, offset: 4294967294B]
	strh	r0, [r2, #-8]	@ movhi	@ MEM[base: _93, offset: 4294967294B], MEM[base: _93, offset: 4294967292B]
	bne	.L286	@,
	bx	lr	@
.L369:
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #4	@ ivtmp.390, pPcmBuf,
	mov	r1, #0	@ i,
.L283:
	ldrh	r0, [r2, #-2]	@ MEM[base: _95, offset: 4294967294B], MEM[base: _95, offset: 4294967294B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, r3	@ i, D.17569
	add	r2, r2, #4	@ ivtmp.390, ivtmp.390,
	strh	r0, [r2, #-8]	@ movhi	@ MEM[base: _95, offset: 4294967294B], MEM[base: _95, offset: 4294967292B]
	bne	.L283	@,
	bx	lr	@
.L368:
	movs	r3, r3, lsr #1	@ D.17569, D.17569,
	bxeq	lr	@
	add	r2, r1, #4	@ ivtmp.378, pPcmBuf,
	mov	r1, #0	@ i,
.L280:
	ldrh	r0, [r2, #-4]	@ MEM[base: _114, offset: 4294967292B], MEM[base: _114, offset: 4294967292B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, r3	@ i, D.17569
	add	r2, r2, #4	@ ivtmp.378, ivtmp.378,
	strh	r0, [r2, #-6]	@ movhi	@ MEM[base: _114, offset: 4294967292B], MEM[base: _114, offset: 4294967294B]
	bne	.L280	@,
	bx	lr	@
.L365:
	mov	r2, #0	@ i,
	mov	r0, r2	@ tmp223, i
.L295:
	add	r2, r2, #1	@ i, i,
	strh	r0, [r1], #2	@ movhi	@ tmp223, MEM[base: pPcmBuf_238, offset: 0B]
	cmp	r2, r3	@ i, D.17569
	bne	.L295	@,
	bx	lr	@
	.fnend
	.size	UTIL_ChannelModeProcess, .-UTIL_ChannelModeProcess
	.align	2
	.global	FADE_Create
	.type	FADE_Create, %function
FADE_Create:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	ip, #60927	@ tmp125,
	sub	lr, r1, #1	@ D.17577, inRate,
	movt	ip, 2	@ tmp125,
	cmp	lr, ip	@ D.17577, tmp125
	mov	ip, #0	@ tmp123,
	str	ip, [r0]	@ tmp123, *phFade_3(D)
	ldmhifd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	bic	ip, r2, #8	@ D.17577, BitPerSample,
	cmp	ip, #16	@ D.17577,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	sub	r7, r3, #1	@ D.17578, Channels,
	cmp	r3, #8	@ Channels,
	cmpne	r7, #1	@, D.17578,
	movhi	r7, #1	@ tmp134,
	movls	r7, #0	@ tmp134,
	ldmhifd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r4, r0	@ phFade, phFade
	mov	r5, r1	@ inRate, inRate
	mov	r0, #17	@,
	mov	r1, #36	@,
	mov	r6, r3	@ Channels, Channels
	mov	r8, r2	@ BitPerSample, BitPerSample
	bl	HI_ADSP_MALLOC	@
	subs	r9, r0, #0	@ __p,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, #36	@,
	bl	__memzero	@
	str	r8, [r9]	@ BitPerSample, MEM[(struct FADE_STATE_S *)__p_18].u32BitPerSample
	str	r6, [r9, #4]	@ Channels, MEM[(struct FADE_STATE_S *)__p_18].u32Channels
	str	r5, [r9, #8]	@ inRate, MEM[(struct FADE_STATE_S *)__p_18].u32InRate
	str	r7, [r9, #32]	@ tmp134, MEM[(struct FADE_STATE_S *)__p_18].enCurnFadeStauts
	str	r9, [r4]	@ __p, *phFade_3(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	FADE_Create, .-FADE_Create
	.align	2
	.global	FADE_Destroy
	.type	FADE_Destroy, %function
FADE_Destroy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ hFade, hFade
	bxeq	lr	@
	mov	r0, #17	@,
	b	HI_ADSP_FREE	@
	.fnend
	.size	FADE_Destroy, .-FADE_Destroy
	.align	2
	.global	FADE_Active
	.type	FADE_Active, %function
FADE_Active:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ hFade
	bxeq	lr	@
	cmp	r2, #0	@ u32FadeMs,
	mov	r3, #0	@ tmp118,
	str	r3, [r0, #20]	@ tmp118, state_4->u32FadeCnt
	ldrne	r3, [r0, #8]	@ state_4->u32InRate, state_4->u32InRate
	movwne	ip, #18849	@ tmp124,
	str	r2, [r0, #12]	@ u32FadeMs, state_4->u32FadeMs
	movtne	ip, 53024	@ tmp124,
	streq	r2, [r0, #24]	@ u32FadeMs, state_4->u32FadeStep
	mulne	r2, r3, r2	@ D.17585, state_4->u32InRate, u32FadeMs
	str	r1, [r0, #32]	@ enUserFadeStauts, state_4->enCurnFadeStauts
	umullne	r2, r3, r2, ip	@ tmp123, D.17585, tmp124
	movne	r3, r3, lsr #16	@ D.17585,,
	addne	r3, r3, #1	@ D.17585, D.17585,
	strne	r3, [r0, #24]	@ D.17585, state_4->u32FadeStep
	cmp	r1, #1	@ enUserFadeStauts,
	beq	.L389	@,
	cmp	r1, #2	@ enUserFadeStauts,
	moveq	r3, #18	@ tmp128,
	streq	r3, [r0, #16]	@ tmp128, state_4->u32FadeCurnCoefIdx
	bx	lr	@
.L389:
	mov	r2, #99	@ tmp126,
	mov	r3, #0	@ tmp127,
	str	r2, [r0, #16]	@ tmp126, state_4->u32FadeCurnCoefIdx
	str	r3, [r0, #28]	@ tmp127, state_4->bStartFade
	bx	lr	@
	.fnend
	.size	FADE_Active, .-FADE_Active
	.align	2
	.global	FADE_Flush
	.type	FADE_Flush, %function
FADE_Flush:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	movw	ip, #60927	@ tmp129,
	sub	lr, r1, #1	@ D.17588, inRate,
	movt	ip, 2	@ tmp129,
	cmp	lr, ip	@ D.17588, tmp129
	ldrhi	pc, [sp], #4	@
	mov	ip, r0	@ hFade, hFade
	bic	r0, r2, #8	@ D.17588, BitPerSample,
	cmp	r0, #16	@ D.17588,
	ldrne	pc, [sp], #4	@
	adds	lr, ip, #0	@ D.17590, hFade,
	sub	r0, r3, #1	@ D.17589, Channels,
	movne	lr, #1	@ D.17590,
	cmp	r3, #8	@ Channels,
	cmpne	r0, #1	@, D.17589,
	movhi	r0, #1	@ tmp140,
	movls	r0, #0	@ tmp140,
	cmp	lr, r0	@ D.17590, tmp140
	ldrls	pc, [sp], #4	@
	ldr	r0, [ip, #4]	@ state_6->u32Channels, state_6->u32Channels
	ldr	lr, [ip]	@ D.17588, state_6->u32BitPerSample
	cmp	r3, r0	@ Channels, state_6->u32Channels
	beq	.L394	@,
.L392:
	str	r2, [ip]	@ BitPerSample, state_6->u32BitPerSample
	mov	r0, ip	@, hFade
	str	r1, [ip, #8]	@ inRate, state_6->u32InRate
	str	r3, [ip, #4]	@ Channels, state_6->u32Channels
	ldr	r2, [ip, #12]	@, state_6->u32FadeMs
	ldr	r1, [ip, #32]	@, state_6->enCurnFadeStauts
	ldr	lr, [sp], #4	@,
	b	FADE_Active	@
.L394:
	ldr	r0, [ip, #8]	@ state_6->u32InRate, state_6->u32InRate
	cmp	r0, r1	@ state_6->u32InRate, inRate
	bne	.L392	@,
	cmp	r2, lr	@ BitPerSample, D.17588
	ldreq	pc, [sp], #4	@
	b	.L392	@
	.fnend
	.size	FADE_Flush, .-FADE_Flush
	.align	2
	.global	FADE_InProcess
	.type	FADE_InProcess, %function
FADE_InProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r5, r0, #0	@ hFade, hFade
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	ldr	r3, [r5, #32]	@ state_9->enCurnFadeStauts, state_9->enCurnFadeStauts
	cmp	r3, #0	@ state_9->enCurnFadeStauts,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	cmp	r2, #0	@ samples,
	ldr	r6, [r5, #4]	@ samples_per_ch, state_9->u32Channels
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	ldr	r10, .L429	@ tmp149,
	sub	fp, r2, #1	@ ivtmp.448, samples,
	mov	r8, r6, asl #1	@ D.17609, samples_per_ch,
	mov	r7, r6, asl #2	@ D.17609, samples_per_ch,
	mov	r4, r1	@ pInBuf, pInBuf
	mov	r9, #1	@ tmp151,
.L413:
	ldr	r3, [r5, #28]	@ state_9->bStartFade, state_9->bStartFade
	cmp	r3, #0	@ state_9->bStartFade,
	bne	.L398	@,
	ldmia	r5, {r1, r2}	@ hFade,,
	cmp	r2, #0	@ D.17609,
	bne	.L404	@,
	b	.L405	@
.L400:
	cmp	r1, #24	@ D.17607,
	beq	.L426	@,
.L401:
	cmp	r3, r2	@ i, D.17609
	beq	.L405	@,
.L404:
	cmp	r1, #16	@ D.17607,
	add	r3, r3, #1	@ i, i,
	bne	.L400	@,
	ldrsh	r0, [r4]	@ MEM[(HI_S16 *)pInBuf_61], MEM[(HI_S16 *)pInBuf_61]
	cmp	r0, #0	@ MEM[(HI_S16 *)pInBuf_61],
	beq	.L401	@,
.L403:
	ldr	r3, [r5, #16]	@ state_9->u32FadeCurnCoefIdx, state_9->u32FadeCurnCoefIdx
	cmp	r1, #16	@ D.17607,
	str	r9, [r5, #28]	@ tmp151, state_9->bStartFade
	ldr	r2, [r10, r3, asl #2]	@ Volume, g_u32VolCoef
	beq	.L410	@,
.L428:
	cmp	r1, #24	@ D.17607,
	bne	.L411	@,
	mov	r0, r4	@, pInBuf
	mov	r1, r6	@, samples_per_ch
	add	r4, r4, r7	@ pInBuf, pInBuf, D.17609
	bl	Volume24BitPro_Coef	@
.L411:
	ldr	r3, [r5, #20]	@ state_9->u32FadeCnt, state_9->u32FadeCnt
	ldr	r2, [r5, #24]	@ state_9->u32FadeStep, state_9->u32FadeStep
	add	r3, r3, #1	@ D.17609, state_9->u32FadeCnt,
	str	r3, [r5, #20]	@ D.17609, state_9->u32FadeCnt
	cmp	r3, r2	@ D.17609, state_9->u32FadeStep
	beq	.L427	@,
.L409:
	cmp	fp, #0	@ ivtmp.448,
	sub	fp, fp, #1	@ ivtmp.448, ivtmp.448,
	bne	.L413	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L426:
	ldr	r0, [r4]	@ MEM[(HI_S32 *)pInBuf_61], MEM[(HI_S32 *)pInBuf_61]
	cmp	r0, #0	@ MEM[(HI_S32 *)pInBuf_61],
	bne	.L403	@,
	cmp	r3, r2	@ i, D.17609
	bne	.L404	@,
.L405:
	cmp	r1, #16	@ D.17607,
	addeq	r4, r4, r8	@ pInBuf, pInBuf, D.17609
	beq	.L409	@,
	cmp	r1, #24	@ D.17607,
	addeq	r4, r4, r7	@ pInBuf, pInBuf, D.17609
	b	.L409	@
.L398:
	ldr	r1, [r5]	@ D.17607, state_9->u32BitPerSample
	ldr	r3, [r5, #16]	@ state_9->u32FadeCurnCoefIdx, state_9->u32FadeCurnCoefIdx
	cmp	r1, #16	@ D.17607,
	ldr	r2, [r10, r3, asl #2]	@ Volume, g_u32VolCoef
	bne	.L428	@,
.L410:
	mov	r0, r4	@, pInBuf
	mov	r1, r6	@, samples_per_ch
	add	r4, r4, r8	@ pInBuf, pInBuf, D.17609
	bl	Volume16BitPro_Coef	@
	b	.L411	@
.L427:
	ldr	r3, [r5, #32]	@ state_9->enCurnFadeStauts, state_9->enCurnFadeStauts
	mov	r2, #0	@ tmp154,
	str	r2, [r5, #20]	@ tmp154, state_9->u32FadeCnt
	cmp	r3, #1	@ state_9->enCurnFadeStauts,
	bne	.L409	@,
	ldr	r3, [r5, #16]	@ state_9->u32FadeCurnCoefIdx, state_9->u32FadeCurnCoefIdx
	sub	r3, r3, #1	@ D.17609, state_9->u32FadeCurnCoefIdx,
	str	r3, [r5, #16]	@ D.17609, state_9->u32FadeCurnCoefIdx
	cmp	r3, #18	@ D.17609,
	moveq	r3, r2	@ tmp155, tmp154
	streq	r3, [r5, #32]	@ tmp155, state_9->enCurnFadeStauts
	b	.L409	@
.L430:
	.align	2
.L429:
	.word	.LANCHOR0
	.fnend
	.size	FADE_InProcess, .-FADE_InProcess
	.align	2
	.global	FADE_OutProcess
	.type	FADE_OutProcess, %function
FADE_OutProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r0, #0	@ hFade, hFade
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	cmp	r2, #0	@ samples,
	mov	r10, r2	@ samples, samples
	ldr	r5, [r4, #4]	@ samples_per_ch, state_8->u32Channels
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	mov	fp, r1	@ pInBuf, pInBuf
	ldr	r6, .L449	@ tmp136,
	mov	r8, r5, asl #1	@ D.17621, samples_per_ch,
	mov	r7, r5, asl #2	@ D.17621, samples_per_ch,
	mov	r9, #0	@ tmp138,
	b	.L440	@
.L448:
	cmp	r3, #24	@ D.17621,
	mov	r0, fp	@, pInBuf
	mov	r1, r5	@, samples_per_ch
	bne	.L434	@,
	bl	Volume24BitPro_Coef	@
	add	fp, fp, r7	@ pInBuf, pInBuf, D.17621
.L434:
	ldr	r3, [r4, #20]	@ state_8->u32FadeCnt, state_8->u32FadeCnt
	sub	r10, r10, #1	@ samples, samples,
	ldr	r2, [r4, #24]	@ state_8->u32FadeStep, state_8->u32FadeStep
	add	r3, r3, #1	@ D.17621, state_8->u32FadeCnt,
	str	r3, [r4, #20]	@ D.17621, state_8->u32FadeCnt
	cmp	r3, r2	@ D.17621, state_8->u32FadeStep
	beq	.L446	@,
.L438:
	cmp	r10, #0	@ samples,
	beq	.L447	@,
.L440:
	ldr	r3, [r4]	@ D.17621, state_8->u32BitPerSample
	ldr	r2, [r4, #16]	@ state_8->u32FadeCurnCoefIdx, state_8->u32FadeCurnCoefIdx
	cmp	r3, #16	@ D.17621,
	ldr	r2, [r6, r2, asl #2]	@ Volume, g_u32VolCoef
	bne	.L448	@,
	mov	r0, fp	@, pInBuf
	mov	r1, r5	@, samples_per_ch
	add	fp, fp, r8	@ pInBuf, pInBuf, D.17621
	bl	Volume16BitPro_Coef	@
	b	.L434	@
.L446:
	ldr	r3, [r4, #32]	@ state_8->enCurnFadeStauts, state_8->enCurnFadeStauts
	str	r9, [r4, #20]	@ tmp138, state_8->u32FadeCnt
	cmp	r3, #2	@ state_8->enCurnFadeStauts,
	bne	.L438	@,
	ldr	r3, [r4, #16]	@ state_8->u32FadeCurnCoefIdx, state_8->u32FadeCurnCoefIdx
	add	r3, r3, #1	@ D.17621, state_8->u32FadeCurnCoefIdx,
	str	r3, [r4, #16]	@ D.17621, state_8->u32FadeCurnCoefIdx
	cmp	r3, #99	@ D.17621,
	streq	r9, [r4, #32]	@ tmp138, state_8->enCurnFadeStauts
	cmp	r10, #0	@ samples,
	bne	.L440	@,
.L447:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L450:
	.align	2
.L449:
	.word	.LANCHOR0
	.fnend
	.size	FADE_OutProcess, .-FADE_OutProcess
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_u32VolCoef, %object
	.size	g_u32VolCoef, 400
g_u32VolCoef:
	.word	66633081
	.word	59386796
	.word	52928538
	.word	47172609
	.word	42042632
	.word	37470535
	.word	33395649
	.word	29763904
	.word	26527107
	.word	23642309
	.word	21071230
	.word	18779754
	.word	16737473
	.word	14917288
	.word	13295047
	.word	11849223
	.word	10560631
	.word	9412172
	.word	8388608
	.word	7476354
	.word	6663308
	.word	5938679
	.word	5292853
	.word	4717260
	.word	4204263
	.word	3747053
	.word	3339564
	.word	2976390
	.word	2652710
	.word	2364230
	.word	2107123
	.word	1877975
	.word	1673747
	.word	1491728
	.word	1329504
	.word	1184922
	.word	1056063
	.word	941217
	.word	838860
	.word	747635
	.word	666330
	.word	593867
	.word	529285
	.word	471726
	.word	420426
	.word	374705
	.word	333956
	.word	297639
	.word	265271
	.word	236423
	.word	210712
	.word	187797
	.word	167374
	.word	149172
	.word	132950
	.word	118492
	.word	105606
	.word	94121
	.word	83886
	.word	74763
	.word	66633
	.word	59386
	.word	52928
	.word	47172
	.word	42042
	.word	37470
	.word	33395
	.word	29763
	.word	26527
	.word	23642
	.word	21071
	.word	18779
	.word	16737
	.word	14917
	.word	13295
	.word	11849
	.word	10560
	.word	9412
	.word	8388
	.word	7476
	.word	6663
	.word	5938
	.word	5292
	.word	4717
	.word	4204
	.word	3747
	.word	3339
	.word	2976
	.word	2652
	.word	2364
	.word	2107
	.word	1877
	.word	1673
	.word	1491
	.word	1329
	.word	1184
	.word	1056
	.word	941
	.word	838
	.word	0
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
