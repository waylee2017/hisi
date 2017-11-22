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
	.file	"aoe_aip.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(aoe_aip)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aip/.aoe_aip.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aip/aoe_aip.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aip/aoe_aip.o
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
	.type	AIPDestroyChn.part.1, %function
AIPDestroyChn.part.1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, inst
	ldr	r0, [r0, #188]	@ D.17193, state_2->hRingIn
	mov	r3, #0	@ tmp117,
	str	r3, [r4, #208]	@ tmp117, state_2->CurStatus
	cmp	r0, r3	@ D.17193,
	bne	.L24	@,
	ldr	r0, [r4, #192]	@ D.17193, state_2->hRingOut
	cmp	r0, #0	@ D.17193,
	bne	.L25	@,
.L3:
	ldr	r0, [r4, #204]	@ D.17193, state_2->hFADE
	cmp	r0, #0	@ D.17193,
	bne	.L26	@,
.L4:
	ldr	r0, [r4, #196]	@ D.17193, state_2->hADJ
	cmp	r0, #0	@ D.17193,
	bne	.L27	@,
.L5:
	ldr	r0, [r4, #200]	@ D.17193, state_2->hSRC
	cmp	r0, #0	@ D.17193,
	bne	.L28	@,
.L6:
	mov	r1, r4	@, state
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L24:
	bl	RBUF_Destroy	@
	ldr	r0, [r4, #192]	@ D.17193, state_2->hRingOut
	cmp	r0, #0	@ D.17193,
	beq	.L3	@,
.L25:
	bl	RBUF_Destroy	@
	ldr	r0, [r4, #204]	@ D.17193, state_2->hFADE
	cmp	r0, #0	@ D.17193,
	beq	.L4	@,
.L26:
	bl	FADE_Destroy	@
	ldr	r0, [r4, #196]	@ D.17193, state_2->hADJ
	cmp	r0, #0	@ D.17193,
	beq	.L5	@,
.L27:
	bl	LSRC_Destroy	@
	ldr	r0, [r4, #200]	@ D.17193, state_2->hSRC
	cmp	r0, #0	@ D.17193,
	beq	.L6	@,
.L28:
	bl	ResamplerFree	@
	mov	r1, r4	@, state
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
	.fnend
	.size	AIPDestroyChn.part.1, .-AIPDestroyChn.part.1
	.align	2
	.global	AIPGetCunrStatus
	.type	AIPGetCunrStatus, %function
AIPGetCunrStatus:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32	@ tmp115,
	add	r0, r0, #8	@ tmp116, Id,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAipRm.hAip
	cmp	r3, #0	@ state,
	ldrne	r0, [r3, #208]	@ D.17196, state_5->CurStatus
	moveq	r0, #3	@ D.17196,
	bx	lr	@
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.fnend
	.size	AIPGetCunrStatus, .-AIPGetCunrStatus
	.align	2
	.global	AIPRouteResampler
	.type	AIPRouteResampler, %function
AIPRouteResampler:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #32000	@ u32InSampleRate,
	beq	.L35	@,
	bhi	.L37	@,
	movw	r3, #12000	@ tmp113,
	cmp	r0, r3	@ u32InSampleRate, tmp113
	beq	.L35	@,
.L35:
	mov	r3, #1	@ tmp126,
	mov	r0, #0	@,
	str	r3, [r1]	@ tmp126, *pu32Resampler_4(D)
	bx	lr	@
.L37:
	b	.L35	@
	.fnend
	.size	AIPRouteResampler, .-AIPRouteResampler
	.align	2
	.global	AIPUnifyPcmData
	.type	AIPUnifyPcmData, %function
AIPUnifyPcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstFrame, pstFrame
	ldr	r5, [r0, #72]	@ dstCh, state_4(D)->stAttr.u32OutChannels
	ldr	r3, [r1, #20]	@ D.17205, pstFrame_7(D)->u32Channels
	ldr	r6, [r0, #68]	@ dstBitDepth, state_4(D)->stAttr.u32OutBitPerSample
	cmp	r3, r5	@ D.17205, dstCh
	beq	.L51	@,
	cmp	r5, r3	@ dstCh, D.17205
	bls	.L52	@,
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@,
	mov	r0, r5	@, dstCh
	bl	UTIL_UpmixPcmData	@
.L51:
	ldr	r3, [r4, #16]	@ pstFrame_7(D)->u32BitPerSample, pstFrame_7(D)->u32BitPerSample
	cmp	r3, r6	@ pstFrame_7(D)->u32BitPerSample, dstBitDepth
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@,
	mov	r0, r6	@, dstBitDepth
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UTIL_UnifyBitDepthPcmData	@
.L52:
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@,
	mov	r0, r5	@, dstCh
	bl	UTIL_DownmixPcmData	@
	b	.L51	@
	.fnend
	.size	AIPUnifyPcmData, .-AIPUnifyPcmData
	.align	2
	.global	AIPGainPcmData
	.type	AIPGainPcmData, %function
AIPGainPcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ state, state
	mov	r0, r1	@ pstFrame, pstFrame
	ldr	r1, [r3, #212]	@ bLinearMode, state_4(D)->stGain.bLinearMode
	cmp	r1, #1	@ bLinearMode,
	ldreqh	r2, [r3, #224]	@ VolumeR, state_4(D)->s16LinearGainFrac
	ldrneh	r2, [r3, #216]	@ VolumeR, state_4(D)->stGain.u16LGain
	ldrneh	r3, [r3, #218]	@ VolumeR, state_4(D)->stGain.u16RGain
	moveq	r3, r2	@ VolumeR, VolumeR
	b	UTIL_LRGainProcess	@
	.fnend
	.size	AIPGainPcmData, .-AIPGainPcmData
	.align	2
	.global	AIPChannelModePcmData
	.type	AIPChannelModePcmData, %function
AIPChannelModePcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	lr, r1	@ pstFrame, pstFrame
	ldr	r1, [r0, #228]	@ D.17212, state_3(D)->u32ChannelMode
	ldr	r2, [r0, #68]	@ dstBitDepth, state_3(D)->stAttr.u32OutBitPerSample
	sub	ip, r1, #1	@ D.17212, D.17212,
	cmp	ip, #6	@ D.17212,
	ldrhi	pc, [sp], #4	@
	mov	r0, lr	@, pstFrame
	ldr	lr, [sp], #4	@,
	b	UTIL_ChannelModeProcess	@
	.fnend
	.size	AIPChannelModePcmData, .-AIPChannelModePcmData
	.align	2
	.global	AIPCalcProcBlockSize
	.type	AIPCalcProcBlockSize, %function
AIPCalcProcBlockSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, state
	ldr	r1, [r0, #68]	@, state_3(D)->stAttr.u32OutBitPerSample
	ldr	r0, [r0, #72]	@, state_3(D)->stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r3, [r4, #76]	@ state_3(D)->stAttr.u32OutSampleRate, state_3(D)->stAttr.u32OutSampleRate
	movw	r2, #19923	@ tmp129,
	movt	r2, 4194	@ tmp129,
	add	r3, r3, r3, lsl #2	@ D.17215, state_3(D)->stAttr.u32OutSampleRate, state_3(D)->stAttr.u32OutSampleRate,
	umull	r2, r3, r3, r2	@ tmp128, D.17215, tmp129
	mov	r3, r3, lsr #6	@ samples,,
	tst	r3, #3	@ samples,
	addne	r3, r3, #3	@ D.17215, samples,
	bicne	r3, r3, #3	@ samples, D.17215,
	mul	r0, r0, r3	@, framesize, samples
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPCalcProcBlockSize, .-AIPCalcProcBlockSize
	.align	2
	.global	AIPCalcOutLatencyThdSize
	.type	AIPCalcOutLatencyThdSize, %function
AIPCalcOutLatencyThdSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, state
	ldr	r1, [r0, #68]	@, state_2(D)->stAttr.u32OutBitPerSample
	ldr	r0, [r0, #72]	@, state_2(D)->stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r2, [r4, #84]	@ state_2(D)->stAttr.u32OutLatencyThdMs, state_2(D)->stAttr.u32OutLatencyThdMs
	ldr	r3, [r4, #76]	@ state_2(D)->stAttr.u32OutSampleRate, state_2(D)->stAttr.u32OutSampleRate
	movw	r1, #19923	@ tmp128,
	movt	r1, 4194	@ tmp128,
	mul	r3, r3, r2	@ D.17218, state_2(D)->stAttr.u32OutSampleRate, state_2(D)->stAttr.u32OutLatencyThdMs
	umull	r2, r3, r3, r1	@ tmp127, D.17218, tmp128
	mov	r3, r3, lsr #6	@ samples,,
	mul	r0, r3, r0	@, samples,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPCalcOutLatencyThdSize, .-AIPCalcOutLatencyThdSize
	.align	2
	.global	AIPCheckRbfOutFree
	.type	AIPCheckRbfOutFree, %function
AIPCheckRbfOutFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, [r0, #192]	@ D.17222, state_4(D)->hRingOut
	cmp	r0, #0	@ D.17222,
	bne	.L79	@,
	mov	r0, #0	@ D.17221,
	bx	lr	@
.L79:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ blocksize, blocksize
	bl	RBUF_CheckFree	@
	cmp	r0, #0	@,
	beq	.L72	@,
	mov	r0, r4	@ D.17221, blocksize
	ldmfd	sp!, {r4, pc}	@
.L72:
	mov	r0, #0	@ D.17221,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPCheckRbfOutFree, .-AIPCheckRbfOutFree
	.global	__aeabi_uidiv
	.align	2
	.global	AIPCalcRbfInNeedBytes
	.type	AIPCalcRbfInNeedBytes, %function
AIPCalcRbfInNeedBytes:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ state, state
	ldr	r3, [r0, #20]	@ state_9(D)->stAttr.u32InDataFormat, state_9(D)->stAttr.u32InDataFormat
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ blocksize, blocksize
	mov	r6, r2	@ pNeedInBytes, pNeedInBytes
	cmp	r3, #0	@ state_9(D)->stAttr.u32InDataFormat,
	ldr	r8, [r0, #76]	@ SampleRate, state_9(D)->stAttr.u32OutSampleRate
	ldr	r7, [r0, #72]	@ Channel, state_9(D)->stAttr.u32OutChannels
	ldr	r9, [r0, #68]	@ BitWidth, state_9(D)->stAttr.u32OutBitPerSample
	beq	.L91	@,
.L81:
	ldr	r0, [r4, #188]	@, state_9(D)->hRingIn
	bl	RBUF_QueryBusy	@
	cmp	r5, r0	@ blocksize,
	strcc	r5, [r6]	@ blocksize, *pNeedInBytes_45(D)
	movcc	r0, r5	@ D.17226, blocksize
	movcs	r0, #0	@ D.17226,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L91:
	mov	r0, r1	@, blocksize
	ldr	r1, [r4, #1024]	@, state_9(D)->OutFrameSize
	bl	__aeabi_uidiv	@
	ldr	ip, [r4, #196]	@ state_9(D)->hADJ, state_9(D)->hADJ
	ldr	r5, [r4, #248]	@ state_9(D)->OutputLeftSamples, state_9(D)->OutputLeftSamples
	mov	r3, r9	@, BitWidth
	mov	r2, r8	@, SampleRate
	mov	r1, r8	@, tmp2
	rsb	r5, r5, r0	@ NeedSampels, state_9(D)->OutputLeftSamples,
	str	r7, [sp]	@ Channel,
	mov	r0, ip	@, state_9(D)->hADJ
	bl	LSRC_UpdateChange	@
	ldr	r1, [r4, #244]	@, state_9(D)->s32UserSpeedAdjust
	ldr	r0, [r4, #196]	@, state_9(D)->hADJ
	bl	LSRC_SetSpeedAdjust	@
	mov	r1, r5	@, NeedSampels
	ldr	r0, [r4, #196]	@, state_9(D)->hADJ
	bl	LSRC_GetMinInputNum	@
	ldr	r3, [r4, #200]	@ D.17227, state_9(D)->hSRC
	cmp	r3, #0	@ D.17227,
	bne	.L92	@,
.L83:
	tst	r0, #3	@ NeedSampels,
	ldr	r3, [r4, #1028]	@ state_9(D)->InFrameSize, state_9(D)->InFrameSize
	addne	r0, r0, #3	@ D.17227, NeedSampels,
	bicne	r0, r0, #3	@ NeedSampels, D.17227,
	mul	r5, r3, r0	@ blocksize, state_9(D)->InFrameSize, NeedSampels
	b	.L81	@
.L92:
	mov	r1, r0	@, D.17228
	mov	r0, r3	@, D.17227
	bl	ResamplerGetMinInputNum	@
	b	.L83	@
	.fnend
	.size	AIPCalcRbfInNeedBytes, .-AIPCalcRbfInNeedBytes
	.align	2
	.global	AIPDmaFrame
	.type	AIPDmaFrame, %function
AIPDmaFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r5, [r0, #1020]	@ blocksize, state_4(D)->OutBlockSize
	add	r2, sp, #8	@ tmp132,,
	mov	r3, #0	@ tmp131,
	mov	r6, r1	@ pstInFrame, pstInFrame
	str	r3, [r2, #-4]!	@ tmp131, needsize
	mov	r4, r0	@ state, state
	mov	r1, r5	@, blocksize
	bl	AIPCalcRbfInNeedBytes	@
	cmp	r0, #0	@,
	beq	.L96	@,
	ldr	r0, [r4, #192]	@ D.17232, state_4(D)->hRingOut
	cmp	r0, #0	@ D.17232,
	bne	.L112	@,
.L96:
	mov	r0, #0	@ D.17231,
.L110:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L112:
	mov	r1, r5	@, blocksize
	bl	RBUF_CheckFree	@
	cmp	r0, #0	@,
	beq	.L96	@,
	cmp	r5, #0	@ blocksize,
	beq	.L96	@,
	bl	AOE_GetWKBuf	@
	cmp	r0, #0	@ uWkAddr
	beq	.L96	@,
	str	r0, [r6]	@ uWkAddr, pstInFrame_13(D)->pDataBuf
	bl	AOE_GetWKBufSize	@
	ldr	r5, [sp, #4]	@ D.17232, needsize
	stmib	r6, {r0, r5}	@ pstInFrame,,
	mov	r0, r5	@, D.17232
	ldr	r1, [r4, #1028]	@, state_4(D)->InFrameSize
	bl	__aeabi_uidiv	@
	mov	r2, r5	@, D.17232
	ldr	r1, [r6]	@, pstInFrame_13(D)->pDataBuf
	str	r0, [r6, #12]	@, pstInFrame_13(D)->u32SamplesPerFrame
	ldr	r3, [r4, #12]	@ D.17232, state_4(D)->stAttr.u32InChannels
	str	r3, [r6, #20]	@ D.17232, pstInFrame_13(D)->u32Channels
	ldr	r3, [r4, #8]	@ D.17232, state_4(D)->stAttr.u32InBitPerSample
	str	r3, [r6, #16]	@ D.17232, pstInFrame_13(D)->u32BitPerSample
	ldr	r3, [r4, #16]	@ D.17232, state_4(D)->stAttr.u32InSampleRate
	str	r3, [r6, #24]	@ D.17232, pstInFrame_13(D)->u32SampleRate
	ldr	r3, [r4, #20]	@ D.17232, state_4(D)->stAttr.u32InDataFormat
	str	r3, [r6, #28]	@ D.17232, pstInFrame_13(D)->u32DataFormat
	ldr	r0, [r4, #188]	@, state_4(D)->hRingIn
	bl	RBUF_ReadDataDma	@
	ldr	r0, [sp, #4]	@ D.17231, needsize
	b	.L110	@
	.fnend
	.size	AIPDmaFrame, .-AIPDmaFrame
	.align	2
	.global	AIPDmaFrame2FiFo
	.type	AIPDmaFrame2FiFo, %function
AIPDmaFrame2FiFo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ state, state
	ldr	r2, [r0, #1024]	@ state_7(D)->OutFrameSize, state_7(D)->OutFrameSize
	mov	r7, r1	@ pstFrame, pstFrame
	ldr	r3, [r0, #248]	@ state_7(D)->OutputLeftSamples, state_7(D)->OutputLeftSamples
	ldr	r5, [r0, #1020]	@ block_size, state_7(D)->OutBlockSize
	mul	r2, r3, r2	@ left_size, state_7(D)->OutputLeftSamples, state_7(D)->OutFrameSize
	cmp	r2, #0	@ left_size,
	bne	.L126	@,
.L114:
	cmp	r5, #0	@ block_size,
	ldr	r0, [r7, #8]	@ block_size, pstFrame_12(D)->u32DataBytes
	beq	.L116	@,
	cmp	r5, r0	@ block_size, block_size
	movcs	r5, r0	@ block_size, block_size
	cmp	r5, #0	@ block_size,
	beq	.L116	@,
	mov	r2, r5	@, block_size
	ldr	r1, [r7]	@, pstFrame_12(D)->pDataBuf
	ldr	r0, [r4, #192]	@, state_7(D)->hRingOut
	bl	RBUF_WriteData	@
	ldr	r0, [r7, #8]	@ D.17241, pstFrame_12(D)->u32DataBytes
.L116:
	subs	r6, r0, r5	@ left_size, D.17241, block_size
	beq	.L117	@,
	ldr	r1, [r7]	@ pstFrame_12(D)->pDataBuf, pstFrame_12(D)->pDataBuf
	mov	r2, r6	@, left_size
	add	r0, r4, #252	@, state,
	add	r1, r1, r5	@, pstFrame_12(D)->pDataBuf, block_size
	bl	memcpy	@
.L117:
	mov	r0, r6	@, left_size
	ldr	r1, [r4, #1024]	@, state_7(D)->OutFrameSize
	bl	__aeabi_uidiv	@
	str	r0, [r4, #248]	@, state_7(D)->OutputLeftSamples
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L126:
	add	r1, r0, #252	@, state,
	ldr	r0, [r0, #192]	@, state_7(D)->hRingOut
	rsb	r5, r2, r5	@ block_size,, block_size
	bl	RBUF_WriteData	@
	b	.L114	@
	.fnend
	.size	AIPDmaFrame2FiFo, .-AIPDmaFrame2FiFo
	.align	2
	.global	AIPDmaLeftFrame
	.type	AIPDmaLeftFrame, %function
AIPDmaLeftFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r0, #192]	@ D.17250, state_2(D)->hRingOut
	ldr	r5, [r0, #1020]	@ D.17250, state_2(D)->OutBlockSize
	cmp	r3, #0	@ D.17250,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r4, r0	@ state, state
	mov	r1, r5	@, D.17250
	mov	r0, r3	@, D.17250
	bl	RBUF_CheckFree	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	cmp	r5, #0	@ D.17250,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, #20	@,
	ldr	r1, [r4, #1040]	@, state_2(D)->Id
	mov	r0, #1	@,
	bl	TRACE_AOE_FSM	@
	ldr	r2, [r4, #1020]	@, state_2(D)->OutBlockSize
	add	r1, r4, #252	@, state,
	ldr	r0, [r4, #192]	@, state_2(D)->hRingOut
	bl	RBUF_WriteData	@
	ldr	r1, [r4, #1024]	@, state_2(D)->OutFrameSize
	ldr	r0, [r4, #1020]	@, state_2(D)->OutBlockSize
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #248]	@ state_2(D)->OutputLeftSamples, state_2(D)->OutputLeftSamples
	rsb	r0, r0, r3	@ D.17250,, state_2(D)->OutputLeftSamples
	str	r0, [r4, #248]	@ D.17250, state_2(D)->OutputLeftSamples
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIPDmaLeftFrame, .-AIPDmaLeftFrame
	.align	2
	.global	AIPFadeoutChnData
	.type	AIPFadeoutChnData, %function
AIPFadeoutChnData:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ state, state
	add	r1, sp, #4	@,,
	ldr	r0, [r0, #192]	@, state_2(D)->hRingOut
	bl	RBUF_QueryInfo	@
	ldr	r6, [r4, #112]	@ D.17255, state_2(D)->stAttr.stRbfOutAttr.uFrameSize
	mov	r1, r6	@, D.17255
	ldr	r0, [sp, #20]	@, stRbfFifoInfo.u32ContiguousDataSize
	bl	__aeabi_uidiv	@
	mov	r1, r6	@, D.17255
	mov	r5, r0	@ tmp136,
	ldr	r0, [sp, #24]	@, stRbfFifoInfo.u32TotalDataSize
	bl	__aeabi_uidiv	@
	mov	r2, #8	@,
	mov	r1, #2	@,
	mov	r6, r0	@ tmp139,
	ldr	r0, [r4, #204]	@, state_2(D)->hFADE
	bl	FADE_Active	@
	ldr	r3, [r4, #72]	@, state_2(D)->stAttr.u32OutChannels
	ldr	r2, [r4, #68]	@, state_2(D)->stAttr.u32OutBitPerSample
	ldr	r1, [r4, #76]	@, state_2(D)->stAttr.u32OutSampleRate
	ldr	r0, [r4, #204]	@, state_2(D)->hFADE
	bl	FADE_Flush	@
	mov	r2, r5	@, tmp136
	ldr	r0, [r4, #204]	@, state_2(D)->hFADE
	ldr	r3, [sp, #4]	@ stRbfFifoInfo.u32BasePtr, stRbfFifoInfo.u32BasePtr
	ldr	r1, [sp, #8]	@ stRbfFifoInfo.u32ReadPtr, stRbfFifoInfo.u32ReadPtr
	add	r1, r1, r3	@, stRbfFifoInfo.u32ReadPtr, stRbfFifoInfo.u32BasePtr
	bl	FADE_OutProcess	@
	rsb	r2, r5, r6	@, tmp136, tmp139
	ldr	r0, [r4, #204]	@, state_2(D)->hFADE
	ldr	r1, [sp, #4]	@, stRbfFifoInfo.u32BasePtr
	bl	FADE_OutProcess	@
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIPFadeoutChnData, .-AIPFadeoutChnData
	.align	2
	.global	AIPGetRbfFiFoAttr
	.type	AIPGetRbfFiFoAttr, %function
AIPGetRbfFiFoAttr:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L147	@ tmp144,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	add	r0, r1, #68	@, pstChnAttr,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, [r5, #4]	@ tmp146,
	and	r1, r1, #3	@, tmp146,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	bne	.L145	@,
	ldr	r1, [r5, #4]	@ tmp150,
	add	r0, r4, #72	@, pstChnAttr,
	ubfx	r1, r1, #2, #2	@, tmp150,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L145	@,
	ldr	r1, [r5, #4]	@ tmp155,
	add	r0, r4, #76	@, pstChnAttr,
	ubfx	r1, r1, #4, #4	@, tmp155,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L145	@,
	ldr	r1, [r5, #4]	@ tmp160,
	add	r0, r4, #80	@, pstChnAttr,
	ubfx	r1, r1, #8, #2	@, tmp160,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L145	@,
	ldr	r1, [r5, #4]	@ tmp165,
	add	r0, sp, #4	@,,
	ubfx	r1, r1, #10, #6	@, tmp165,,
	bl	AOE_REG_ReadBufLatencyMs	@
	subs	r6, r0, #0	@ D.17260,
	bne	.L145	@,
	ldr	r1, [r4, #68]	@, pstChnAttr_6(D)->u32OutBitPerSample
	ldr	r0, [r4, #72]	@, pstChnAttr_6(D)->u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r2, [r4, #76]	@, pstChnAttr_6(D)->u32OutSampleRate
	mov	r7, r0	@ u32FrameSize,
	mov	r1, r0	@, u32FrameSize
	ldr	r0, [sp, #4]	@, uLatencyMs
	bl	UTIL_LatencyMs2ByteSize	@
	add	r1, r5, #56	@ D.17267, pAipReg,
	str	r7, [r4, #112]	@ u32FrameSize, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].uFrameSize
	add	r5, r5, #60	@ D.17267, pAipReg,
	str	r6, [r4, #88]	@ D.17260, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].bExtMem
	str	r6, [r4, #108]	@ D.17260, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].uBufFlag
	str	r1, [r4, #100]	@ D.17267, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].uBufWptr
	str	r5, [r4, #104]	@ D.17267, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].uBufRptr
	ldr	r3, [sp, #4]	@ D.17263, uLatencyMs
	str	r0, [r4, #96]	@ uLatencySize, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].uBufSize
	str	r0, [r4, #116]	@ uLatencySize, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].uLatencySize
	mov	r0, r6	@, D.17260
	str	r3, [r4, #120]	@ D.17263, MEM[(struct RBUF_ATTR_S *)pstChnAttr_6(D) + 88B].uLatencyMs
	str	r3, [r4, #84]	@ D.17263, pstChnAttr_6(D)->u32OutLatencyThdMs
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L145:
	mvn	r6, #0	@ D.17260,
	mov	r0, r6	@, D.17260
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L148:
	.align	2
.L147:
	.word	.LANCHOR0
	.fnend
	.size	AIPGetRbfFiFoAttr, .-AIPGetRbfFiFoAttr
	.align	2
	.global	AIPGetRbfInAttr
	.type	AIPGetRbfInAttr, %function
AIPGetRbfInAttr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L161	@ tmp153,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	add	r0, r1, #8	@, pstChnAttr,
	ldr	r1, [r5]	@ *pAipReg_7, *pAipReg_7
	and	r1, r1, #3	@, *pAipReg_7,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	bne	.L152	@,
	ldr	r1, [r5]	@ *pAipReg_7, *pAipReg_7
	add	r0, r4, #12	@, pstChnAttr,
	ubfx	r1, r1, #2, #2	@, *pAipReg_7,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L152	@,
	ldr	r1, [r5]	@ *pAipReg_7, *pAipReg_7
	add	r0, r4, #16	@, pstChnAttr,
	ubfx	r1, r1, #4, #4	@, *pAipReg_7,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	beq	.L155	@,
	ldr	r3, [r5]	@ *pAipReg_7, *pAipReg_7
	ubfx	r3, r3, #4, #4	@ D.17275, *pAipReg_7,,
	cmp	r3, #15	@ D.17275,
	beq	.L160	@,
.L155:
	ldr	r1, [r5]	@ *pAipReg_7, *pAipReg_7
	add	r0, r4, #20	@, pstChnAttr,
	ubfx	r1, r1, #8, #2	@, *pAipReg_7,,
	bl	AOE_REG_ReadDataFormat	@
	subs	r6, r0, #0	@ D.17270,
	bne	.L152	@,
	ldr	r3, [r5]	@ *pAipReg_7, *pAipReg_7
	ldr	r1, [r4, #8]	@, pstChnAttr_8(D)->u32InBitPerSample
	ubfx	r3, r3, #11, #1	@ D.17277, *pAipReg_7,,
	ldr	r0, [r4, #12]	@, pstChnAttr_8(D)->u32InChannels
	str	r3, [r4, #28]	@ D.17277, pstChnAttr_8(D)->Priority
	bl	UTIL_CalcFrameSize	@
	mov	r3, #1	@ tmp188,
	str	r3, [r4, #32]	@ tmp188, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].bExtMem
	ldr	r3, [r5, #16]	@ D.17273, pAipReg_7->AIP_BUF_ADDR
	str	r3, [r4, #36]	@ D.17273, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uBufAddr
	ldr	r3, [r5, #20]	@ tmp189,
	bic	r3, r3, #-16777216	@ D.17273, tmp189,
	str	r3, [r4, #40]	@ D.17273, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uBufSize
	ldr	r2, [r5, #20]	@ tmp191,
	tst	r2, #16777216	@ tmp191,
	addeq	r1, r5, #24	@ D.17278, pAipReg,
	addeq	r2, r5, #28	@ D.17278, pAipReg,
	ldrne	r2, [r5, #24]	@ D.17273, pAipReg_7->AIP_BUF_WPTR
	strne	r2, [r4, #44]	@ D.17273, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uBufWptr
	ldrne	r2, [r5, #28]	@ D.17273, pAipReg_7->AIP_BUF_RPTR
	str	r2, [r4, #48]	@ D.17278, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uBufRptr
	streq	r1, [r4, #44]	@ D.17278, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uBufWptr
	mov	r1, #0	@ tmp200,
	ldr	r2, [r5, #20]	@ tmp197,
	str	r0, [r4, #56]	@ u32FrameSize, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uFrameSize
	mov	r0, #16	@ tmp201,
	ubfx	r2, r2, #24, #1	@ D.17277, tmp197,,
	str	r3, [r4, #60]	@ D.17273, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uLatencySize
	str	r2, [r4, #52]	@ D.17277, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uBufFlag
	mov	r3, #8	@ tmp202,
	str	r1, [r4, #64]	@ tmp200, MEM[(struct RBUF_ATTR_S *)pstChnAttr_8(D) + 32B].uLatencyMs
	stmia	r4, {r0, r3}	@ pstChnAttr,,
	mov	r0, r6	@, D.17270
	str	r1, [r4, #24]	@ tmp200, pstChnAttr_8(D)->u32InPeriondSize
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L160:
	ldr	r3, [r5, #12]	@ tmp177,
	movw	r2, #56928	@ tmp179,
	movt	r2, 2	@ tmp179,
	bic	r3, r3, #-16777216	@ D.17276, tmp177,
	str	r3, [r4, #16]	@ D.17276, pstChnAttr_8(D)->u32InSampleRate
	sub	r3, r3, #4000	@ D.17273, D.17276,
	cmp	r3, r2	@ D.17273, tmp179
	bhi	.L152	@,
	ldr	r3, [r4, #12]	@ pstChnAttr_8(D)->u32InChannels, pstChnAttr_8(D)->u32InChannels
	cmp	r3, #2	@ pstChnAttr_8(D)->u32InChannels,
	bhi	.L152	@,
	ldr	r3, [r4, #8]	@ pstChnAttr_8(D)->u32InBitPerSample, pstChnAttr_8(D)->u32InBitPerSample
	cmp	r3, #16	@ pstChnAttr_8(D)->u32InBitPerSample,
	beq	.L155	@,
.L152:
	mvn	r6, #0	@ D.17270,
	mov	r0, r6	@, D.17270
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L162:
	.align	2
.L161:
	.word	.LANCHOR0
	.fnend
	.size	AIPGetRbfInAttr, .-AIPGetRbfInAttr
	.align	2
	.global	AIPGetChnCreateAttr
	.type	AIPGetChnCreateAttr, %function
AIPGetChnCreateAttr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ Id, Id
	mov	r5, r1	@ pstChnAttr, pstChnAttr
	bl	AIPGetRbfInAttr	@
	cmp	r0, #0	@,
	bne	.L165	@,
	mov	r1, r5	@, pstChnAttr
	mov	r0, r4	@, Id
	bl	AIPGetRbfFiFoAttr	@
	adds	r0, r0, #0	@ D.17282,,
	movne	r0, #1	@ D.17282,
	rsb	r0, r0, #0	@ D.17281, D.17282
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L165:
	mvn	r0, #0	@ D.17281,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIPGetChnCreateAttr, .-AIPGetChnCreateAttr
	.align	2
	.global	AIPIsChnAttrChange
	.type	AIPIsChnAttrChange, %function
AIPIsChnAttrChange:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L169	@ tmp159,
	add	r2, r0, #8	@ tmp161, Id,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r6, [r3, r2, asl #2]	@ state, g_stAipRm.hAip
	ldr	r0, [r6, #124]	@ D.17286, state_5->stBackRegs.AIP_BUFF_ATTR.u32
	ldr	r1, [r5]	@ D.17286, pAipReg_3->AIP_BUFF_ATTR.u32
	ldr	r3, [r6, #136]	@ D.17286, state_5->stBackRegs.AIP_SRC_ATTR_EXT.u32
	ldr	r4, [r5, #12]	@ D.17286, pAipReg_3->AIP_SRC_ATTR_EXT.u32
	ldr	ip, [r6, #140]	@ D.17286, state_5->stBackRegs.AIP_BUF_ADDR
	subs	r3, r3, r4	@ D.17287, D.17286, D.17286
	ldr	r2, [r5, #16]	@ D.17286, pAipReg_3->AIP_BUF_ADDR
	movne	r3, #1	@ D.17287,
	cmp	r0, r1	@ D.17286, D.17286
	moveq	r4, r3	@, isChange, D.17287
	addne	r4, r3, #1	@,, isChange, D.17287
	ldr	r1, [r6, #144]	@ D.17286, state_5->stBackRegs.AIP_BUF_SIZE.u32
	cmp	ip, r2	@ D.17286, D.17286
	moveq	r0, r4	@, isChange, isChange
	addne	r0, r4, #1	@,, isChange, isChange
	ldr	r3, [r5, #20]	@ D.17286, pAipReg_3->AIP_BUF_SIZE.u32
	ldr	r7, [r6, #128]	@ tmp171,
	ldr	r4, [r5, #4]	@ tmp174,
	cmp	r1, r3	@ D.17286, D.17286
	moveq	lr, r0	@, isChange, isChange
	addne	lr, r0, #1	@,, isChange, isChange
	ldr	r2, [r6, #128]	@ tmp179,
	and	ip, r7, #3	@ D.17289, tmp171,
	ldr	r3, [r5, #4]	@ tmp183,
	and	r1, r4, #3	@ D.17289, tmp174,
	ldr	r8, [r6, #128]	@ tmp189,
	cmp	ip, r1	@ D.17289, D.17289
	moveq	ip, lr	@, isChange, isChange
	addne	ip, lr, #1	@,, isChange, isChange
	ldr	r7, [r5, #4]	@ tmp193,
	ubfx	r2, r2, #2, #2	@ D.17289, tmp179,,
	ubfx	r3, r3, #2, #2	@ D.17289, tmp183,,
	ldr	r4, [r6, #128]	@ tmp199,
	cmp	r2, r3	@ D.17289, D.17289
	moveq	r1, ip	@, isChange, isChange
	addne	r1, ip, #1	@,, isChange, isChange
	ldr	lr, [r5, #4]	@ tmp203,
	ubfx	r3, r7, #4, #4	@ D.17290, tmp193,,
	ubfx	r2, r8, #4, #4	@ D.17290, tmp189,,
	cmp	r2, r3	@ D.17290, D.17290
	moveq	r2, r1	@, isChange, isChange
	addne	r2, r1, #1	@,, isChange, isChange
	ldr	r0, [r6, #128]	@ tmp209,
	ldr	r1, [r5, #4]	@ tmp213,
	ubfx	ip, r4, #8, #2	@ D.17289, tmp199,,
	ubfx	r3, lr, #8, #2	@ D.17289, tmp203,,
	ubfx	r0, r0, #10, #6	@ D.17291, tmp209,,
	cmp	ip, r3	@ D.17289, D.17289
	moveq	r3, r2	@, isChange, isChange
	addne	r3, r2, #1	@,, isChange, isChange
	ubfx	r2, r1, #10, #6	@ D.17291, tmp213,,
	cmp	r0, r2	@ D.17291, D.17291
	moveq	r0, r3	@,, isChange
	addne	r0, r3, #1	@,,, isChange
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L170:
	.align	2
.L169:
	.word	.LANCHOR0
	.fnend
	.size	AIPIsChnAttrChange, .-AIPIsChnAttrChange
	.align	2
	.global	AIPCreateChn
	.type	AIPCreateChn, %function
AIPCreateChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #184
	sub	sp, sp, #184	@,,
	ldr	r6, .L206	@ tmp227,
	add	r1, sp, #60	@ tmp228,,
	mov	r3, #0	@ tmp161,
	mov	r5, r0	@ Id, Id
	str	r3, [sp, #8]	@ tmp161, hADJ
	ldr	r8, [r6, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	str	r3, [sp, #12]	@ tmp161, hFade
	str	r3, [sp, #16]	@ tmp161, hRingIn
	str	r3, [sp, #20]	@ tmp161, hRingOut
	bl	AIPGetChnCreateAttr	@
	cmp	r0, #0	@,
	beq	.L203	@,
.L202:
	mov	r0, #0	@ D.17294,
.L173:
	add	sp, sp, #184	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L203:
	movw	r1, #1048	@,
	mov	r0, #17	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ __p,
	beq	.L202	@,
	movw	r1, #1048	@,
	bl	__memzero	@
	mov	r2, #124	@,
	mov	r0, r4	@, __p
	add	r1, sp, #60	@ tmp229,,
	bl	memcpy	@
	str	r5, [r4, #1040]	@ Id, MEM[(struct AIP_STATE_S *)__p_18].Id
	ldr	r7, [r8]	@ *pAipReg_14, *pAipReg_14
	ubfx	r7, r7, #10, #1	@ D.17297, *pAipReg_14,,
	cmp	r7, #0	@ D.17297,
	add	r1, sp, #92	@,,
	add	r0, sp, #16	@,,
	bne	.L204	@,
	ldr	r3, [r8, #20]	@ tmp180,
	bl	RBUF_Create_EXT	@
.L176:
	ldr	r3, [sp, #16]	@ D.17298, hRingIn
	cmp	r3, #0	@ D.17298,
	bne	.L205	@,
.L177:
	cmp	r4, #0	@ __p,
	beq	.L202	@,
	mov	r0, r4	@, __p
	bl	AIPDestroyChn.part.1	@
	b	.L202	@
.L204:
	bl	RBUF_Create_EXT	@
	mov	r7, #1	@ bAlsa,
	b	.L176	@
.L205:
	add	r0, sp, #20	@,,
	str	r7, [r4, #1036]	@ bAlsa, MEM[(struct AIP_STATE_S *)__p_18].bAlsa
	add	r1, sp, #148	@,,
	str	r3, [r4, #188]	@ D.17298, MEM[(struct AIP_STATE_S *)__p_18].hRingIn
	bl	RBUF_Create	@
	ldr	r0, [sp, #20]	@ D.17298, hRingOut
	cmp	r0, #0	@ D.17298,
	beq	.L177	@,
	str	r0, [r4, #192]	@ D.17298, MEM[(struct AIP_STATE_S *)__p_18].hRingOut
	add	r1, sp, #24	@,,
	bl	RBUF_QueryInfo	@
	ldr	r3, [sp, #24]	@ D.17298, stRbfOut.u32BasePtr
	ldrh	r2, [sp, #36]	@ D.17299, stRbfOut.u32BufSize
	str	r3, [r8, #48]	@ D.17298, pAipReg_14->AIP_FIFO_ADDR
	ldr	r3, [r8, #52]	@ tmp191,
	bfi	r3, r2, #0, #16	@ tmp191, D.17299,,
	str	r3, [r8, #52]	@ tmp191,
	ldr	r3, [sp, #80]	@ stAttr.u32InDataFormat, stAttr.u32InDataFormat
	cmp	r3, #0	@ stAttr.u32InDataFormat,
	bne	.L178	@,
	ldr	r0, [sp, #76]	@ D.17298, stAttr.u32InSampleRate
	ldr	r2, [sp, #136]	@ D.17298, stAttr.u32OutSampleRate
	cmp	r0, r2	@ D.17298, D.17298
	beq	.L179	@,
	add	r1, r4, #1040	@, __p,
	add	r1, r1, #4	@,,
	bl	AIPRouteResampler	@
	subs	ip, r0, #0	@ D.17295,
	bne	.L177	@,
	ldr	r3, [sp, #128]	@ stAttr.u32OutBitPerSample, stAttr.u32OutBitPerSample
	ldr	r2, [sp, #132]	@ stAttr.u32OutChannels, stAttr.u32OutChannels
	ldr	r1, [sp, #136]	@ stAttr.u32OutSampleRate, stAttr.u32OutSampleRate
	ldr	r0, [sp, #76]	@ stAttr.u32InSampleRate, stAttr.u32InSampleRate
	str	ip, [sp]	@ D.17295,
	bl	ResamplerCreate	@
	cmp	r0, #0	@ hSRC
	beq	.L177	@,
	ldr	r2, [sp, #136]	@ D.17298, stAttr.u32OutSampleRate
	str	r0, [r4, #200]	@ hSRC, MEM[(struct AIP_STATE_S *)__p_18].hSRC
.L179:
	ldr	ip, [sp, #132]	@ stAttr.u32OutChannels, stAttr.u32OutChannels
	mov	r1, r2	@,
	ldr	r3, [sp, #128]	@ stAttr.u32OutBitPerSample, stAttr.u32OutBitPerSample
	add	r0, sp, #8	@,,
	str	ip, [sp]	@ stAttr.u32OutChannels,
	bl	LSRC_Create	@
	ldr	r3, [sp, #8]	@ D.17298, hADJ
	cmp	r3, #0	@ D.17298,
	beq	.L177	@,
	str	r3, [r4, #196]	@ D.17298, MEM[(struct AIP_STATE_S *)__p_18].hADJ
	add	r0, sp, #12	@,,
	ldr	r3, [sp, #72]	@, stAttr.u32InChannels
	ldr	r2, [sp, #68]	@, stAttr.u32InBitPerSample
	ldr	r1, [sp, #76]	@, stAttr.u32InSampleRate
	bl	FADE_Create	@
	ldr	r3, [sp, #12]	@ D.17298, hFade
	cmp	r3, #0	@ D.17298,
	beq	.L177	@,
	str	r3, [r4, #204]	@ D.17298, MEM[(struct AIP_STATE_S *)__p_18].hFADE
	mov	r3, #0	@ tmp207,
	str	r3, [r4, #240]	@ tmp207, MEM[(struct AIP_STATE_S *)__p_18].s32FadeState
.L178:
	ldr	lr, [r6, r5, asl #2]	@ tmp211, g_stAipRm.hwAipReg
	add	ip, r4, #124	@ tmp210, __p,
	mov	r5, #0	@ tmp212,
	mvn	r6, #32768	@ tmp218,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp211,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp210,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp211,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp210,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp211,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp210,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp211,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp210,,,,
	mov	r0, r4	@, __p
	str	r5, [r4, #212]	@ tmp212, MEM[(struct AIP_STATE_S *)__p_18].stGain.bLinearMode
	strh	r5, [r4, #216]	@ movhi	@ tmp212, MEM[(struct AIP_STATE_S *)__p_18].stGain.u16LGain
	strh	r5, [r4, #218]	@ movhi	@ tmp212, MEM[(struct AIP_STATE_S *)__p_18].stGain.u16RGain
	str	r5, [r4, #228]	@ tmp212, MEM[(struct AIP_STATE_S *)__p_18].u32ChannelMode
	strh	r6, [r4, #224]	@ movhi	@ tmp218, MEM[(struct AIP_STATE_S *)__p_18].s16LinearGainFrac
	bl	AIPCalcProcBlockSize	@
	str	r0, [r4, #1020]	@, MEM[(struct AIP_STATE_S *)__p_18].OutBlockSize
	mov	r0, r4	@, __p
	bl	AIPCalcOutLatencyThdSize	@
	ldr	r1, [r4, #68]	@, MEM[(struct AIP_STATE_S *)__p_18].stAttr.u32OutBitPerSample
	str	r0, [r4, #1032]	@, MEM[(struct AIP_STATE_S *)__p_18].OutLatencySize
	ldr	r0, [r4, #72]	@, MEM[(struct AIP_STATE_S *)__p_18].stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #8]	@, MEM[(struct AIP_STATE_S *)__p_18].stAttr.u32InBitPerSample
	str	r0, [r4, #1024]	@, MEM[(struct AIP_STATE_S *)__p_18].OutFrameSize
	ldr	r0, [r4, #12]	@, MEM[(struct AIP_STATE_S *)__p_18].stAttr.u32InChannels
	bl	UTIL_CalcFrameSize	@
	mov	r3, #1	@ tmp224,
	mov	r1, r3	@, tmp224
	str	r3, [r4, #208]	@ tmp224, MEM[(struct AIP_STATE_S *)__p_18].CurStatus
	mov	r2, #8	@,
	str	r0, [r4, #1028]	@, MEM[(struct AIP_STATE_S *)__p_18].InFrameSize
	ldr	r0, [r4, #204]	@, MEM[(struct AIP_STATE_S *)__p_18].hFADE
	bl	FADE_Active	@
	mov	r0, r4	@ D.17294, __p
	b	.L173	@
.L207:
	.align	2
.L206:
	.word	.LANCHOR0
	.fnend
	.size	AIPCreateChn, .-AIPCreateChn
	.align	2
	.global	AIPDestroyChn
	.type	AIPDestroyChn, %function
AIPDestroyChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ inst,
	bxeq	lr	@
	b	AIPDestroyChn.part.1	@
	.fnend
	.size	AIPDestroyChn, .-AIPDestroyChn
	.align	2
	.global	AIPFlushChnCtx
	.type	AIPFlushChnCtx, %function
AIPFlushChnCtx:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, state
	ldr	r0, [r0, #200]	@ D.17309, state_6(D)->hSRC
	.pad #40
	sub	sp, sp, #40	@,,
	cmp	r0, #0	@ D.17309,
	bne	.L228	@,
.L211:
	ldr	r0, [r4, #196]	@ D.17309, state_6(D)->hADJ
	cmp	r0, #0	@ D.17309,
	bne	.L229	@,
.L212:
	ldr	r0, [r4, #204]	@ D.17309, state_6(D)->hFADE
	mov	r3, #0	@ tmp120,
	str	r3, [r4, #248]	@ tmp120, state_6(D)->OutputLeftSamples
	cmp	r0, r3	@ D.17309,
	bne	.L230	@,
.L213:
	ldr	r3, [r4, #1036]	@ state_6(D)->bAlsa, state_6(D)->bAlsa
	cmp	r3, #0	@ state_6(D)->bAlsa,
	beq	.L214	@,
	add	r1, sp, #4	@,,
	ldr	r0, [r4, #192]	@, state_6(D)->hRingOut
	bl	RBUF_QueryInfo	@
	ldr	r0, [r4, #192]	@, state_6(D)->hRingOut
	ldr	r1, [sp, #24]	@, stRbfFiFoInfo.u32TotalDataSize
	bl	RBUF_ReadDataComplete	@
.L214:
	ldr	r2, [r4, #1040]	@ state_6(D)->Id, state_6(D)->Id
	ldr	r3, .L231	@ tmp126,
	ldr	r3, [r3, r2, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #52]	@ tmp128,
	bfc	r2, #16, #16	@ tmp128,,
	str	r2, [r3, #52]	@ tmp128,
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L230:
	mov	r2, #8	@,
	mov	r1, #1	@,
	bl	FADE_Active	@
	b	.L213	@
.L229:
	bl	LSRC_Flush	@
	b	.L212	@
.L228:
	bl	ResampleFlush	@
	b	.L211	@
.L232:
	.align	2
.L231:
	.word	.LANCHOR0
	.fnend
	.size	AIPFlushChnCtx, .-AIPFlushChnCtx
	.align	2
	.global	AIPFlushChnRufIn
	.type	AIPFlushChnRufIn, %function
AIPFlushChnRufIn:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #188]	@ D.17313, state_3(D)->hRingIn
	cmp	r0, #0	@ D.17313,
	bxeq	lr	@
	b	RBUF_Flush	@
	.fnend
	.size	AIPFlushChnRufIn, .-AIPFlushChnRufIn
	.align	2
	.global	AIPFlushChnFifo
	.type	AIPFlushChnFifo, %function
AIPFlushChnFifo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #192]	@ D.17316, state_3(D)->hRingOut
	cmp	r0, #0	@ D.17316,
	bxeq	lr	@
	b	RBUF_Flush	@
	.fnend
	.size	AIPFlushChnFifo, .-AIPFlushChnFifo
	.align	2
	.global	AIPFlushChn
	.type	AIPFlushChn, %function
AIPFlushChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	tst	r1, #1	@ type,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ type, type
	mov	r5, r0	@ state, state
	bne	.L257	@,
.L238:
	tst	r4, #2	@ type,
	beq	.L239	@,
	ldr	r0, [r5, #188]	@ D.17321, state_6(D)->hRingIn
	cmp	r0, #0	@ D.17321,
	bne	.L258	@,
.L239:
	tst	r4, #4	@ type,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L259:
	ldr	r0, [r5, #192]	@ D.17321, state_6(D)->hRingOut
	cmp	r0, #0	@ D.17321,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	RBUF_Flush	@
.L257:
	bl	AIPFlushChnCtx	@
	b	.L238	@
.L258:
	bl	RBUF_Flush	@
	tst	r4, #4	@ type,
	bne	.L259	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIPFlushChn, .-AIPFlushChn
	.align	2
	.global	AIPWriteMuteFrame
	.type	AIPWriteMuteFrame, %function
AIPWriteMuteFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ state, state
	ldr	r3, [r0, #1024]	@ state_4(D)->OutFrameSize, state_4(D)->OutFrameSize
	ldr	r4, [r0, #1020]	@ state_4(D)->OutBlockSize, state_4(D)->OutBlockSize
	add	r4, r3, r4	@ __n, state_4(D)->OutFrameSize, state_4(D)->OutBlockSize
	bl	AOE_GetWKBuf	@
	cmp	r4, #0	@ __n,
	mov	r6, r0	@ __p,
	bne	.L269	@,
.L261:
	ldr	r0, [r5, #192]	@ D.17324, state_4(D)->hRingOut
	cmp	r0, #0	@ D.17324,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	bl	RBUF_QueryFree	@
	cmp	r4, r0	@ __n,
	ldmcsfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r4	@, __n
	mov	r1, r6	@, __p
	ldr	r0, [r5, #192]	@, state_4(D)->hRingOut
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	RBUF_WriteData	@
.L269:
	mov	r1, r4	@, __n
	bl	__memzero	@
	b	.L261	@
	.fnend
	.size	AIPWriteMuteFrame, .-AIPWriteMuteFrame
	.align	2
	.global	AIPFadePcmData
	.type	AIPFadePcmData, %function
AIPFadePcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #204]	@ D.17327, state_3(D)->hFADE
	cmp	r3, #0	@ D.17327,
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstFrame, pstFrame
	mov	r5, r0	@ state, state
	ldr	r2, [r1, #16]	@, pstFrame_5(D)->u32BitPerSample
	mov	r0, r3	@, D.17327
	ldr	r3, [r1, #20]	@, pstFrame_5(D)->u32Channels
	ldr	r1, [r1, #24]	@, pstFrame_5(D)->u32SampleRate
	bl	FADE_Flush	@
	ldr	r0, [r5, #204]	@, state_3(D)->hFADE
	ldr	r2, [r4, #12]	@, pstFrame_5(D)->u32SamplesPerFrame
	ldr	r1, [r4]	@, pstFrame_5(D)->pDataBuf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FADE_InProcess	@
	.fnend
	.size	AIPFadePcmData, .-AIPFadePcmData
	.align	2
	.global	AIPResamplePcmData
	.type	AIPResamplePcmData, %function
AIPResamplePcmData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r5, r0	@ state, state
	mov	r4, r1	@ pstFrame, pstFrame
	bl	AOE_GetWKBuf	@
	mov	r6, r0	@ pu32ResampeOutBuf,
	ldr	r0, [r5, #200]	@ D.17332, state_7(D)->hSRC
	ldr	r5, [r5, #76]	@ outRate, state_7(D)->stAttr.u32OutSampleRate
	cmp	r0, #0	@ D.17332,
	beq	.L274	@,
	ldr	ip, [r4, #24]	@ pstFrame_10(D)->u32SampleRate, pstFrame_10(D)->u32SampleRate
	mov	lr, #1	@ tmp130,
	ldr	r3, [r4, #12]	@ pstFrame_10(D)->u32SamplesPerFrame, pstFrame_10(D)->u32SamplesPerFrame
	mov	r2, r6	@, pu32ResampeOutBuf
	ldr	r1, [r4]	@ pstFrame_10(D)->pDataBuf, pstFrame_10(D)->pDataBuf
	stmib	sp, {r5, lr}	@,,
	str	ip, [sp]	@ pstFrame_10(D)->u32SampleRate,
	bl	ResamplerProcessFrame	@
.L274:
	str	r0, [r4, #12]	@ D.17332, pstFrame_10(D)->u32SamplesPerFrame
	str	r6, [r4]	@ pu32ResampeOutBuf, pstFrame_10(D)->pDataBuf
	str	r5, [r4, #24]	@ outRate, pstFrame_10(D)->u32SampleRate
	ldr	r1, [r4, #16]	@, pstFrame_10(D)->u32BitPerSample
	ldr	r0, [r4, #20]	@, pstFrame_10(D)->u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r3, [r4, #12]	@ pstFrame_10(D)->u32SamplesPerFrame, pstFrame_10(D)->u32SamplesPerFrame
	mul	r0, r3, r0	@ D.17332, pstFrame_10(D)->u32SamplesPerFrame,
	str	r0, [r4, #8]	@ D.17332, pstFrame_10(D)->u32DataBytes
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIPResamplePcmData, .-AIPResamplePcmData
	.align	2
	.global	AIPSpeedAdjProc
	.type	AIPSpeedAdjProc, %function
AIPSpeedAdjProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #196]	@ D.17343, state_2(D)->hADJ
	cmp	r3, #0	@ D.17343,
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ state, state
	mov	r0, r3	@, D.17343
	mov	r4, r1	@ pstFrame, pstFrame
	bl	LSRC_CheckDoSRC	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r7, [r4, #12]	@ uPcmSamplesPerFrame, pstFrame_6(D)->u32SamplesPerFrame
	bl	AOE_GetWKBuf	@
	ldr	r1, [r4]	@, pstFrame_6(D)->pDataBuf
	mov	r3, r7	@, uPcmSamplesPerFrame
	mov	r2, r0	@, D.17343
	mov	r6, r0	@ D.17343,
	ldr	r0, [r5, #196]	@, state_2(D)->hADJ
	bl	LSRC_ProcessFrame	@
	str	r6, [r4]	@ D.17343, pstFrame_6(D)->pDataBuf
	ldr	r1, [r4, #16]	@, pstFrame_6(D)->u32BitPerSample
	str	r0, [r4, #12]	@, pstFrame_6(D)->u32SamplesPerFrame
	ldr	r0, [r4, #20]	@, pstFrame_6(D)->u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r3, [r4, #12]	@ pstFrame_6(D)->u32SamplesPerFrame, pstFrame_6(D)->u32SamplesPerFrame
	mul	r0, r3, r0	@ D.17343, pstFrame_6(D)->u32SamplesPerFrame,
	str	r0, [r4, #8]	@ D.17343, pstFrame_6(D)->u32DataBytes
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	AIPSpeedAdjProc, .-AIPSpeedAdjProc
	.align	2
	.global	AIPProcFrame
	.type	AIPProcFrame, %function
AIPProcFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ state, state
	ldr	r3, [r0, #20]	@ state_5(D)->stAttr.u32InDataFormat, state_5(D)->stAttr.u32InDataFormat
	mov	r5, r1	@ pstInFrame, pstInFrame
	cmp	r3, #0	@ state_5(D)->stAttr.u32InDataFormat,
	beq	.L299	@,
.L289:
	ldr	r1, [r4, #1040]	@, state_5(D)->Id
	mov	r0, #1	@,
	mov	r2, #20	@,
	bl	TRACE_AOE_FSM	@
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AIPDmaFrame2FiFo	@
.L299:
	bl	AIPUnifyPcmData	@
	ldr	r3, [r4, #200]	@ state_5(D)->hSRC, state_5(D)->hSRC
	cmp	r3, #0	@ state_5(D)->hSRC,
	bne	.L300	@,
	ldr	r3, [r4, #196]	@ state_5(D)->hADJ, state_5(D)->hADJ
	cmp	r3, #0	@ state_5(D)->hADJ,
	bne	.L301	@,
.L291:
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	bl	AIPGainPcmData	@
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	bl	AIPChannelModePcmData	@
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	bl	AIPFadePcmData	@
	b	.L289	@
.L300:
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	bl	AIPResamplePcmData	@
	ldr	r3, [r4, #196]	@ state_5(D)->hADJ, state_5(D)->hADJ
	cmp	r3, #0	@ state_5(D)->hADJ,
	beq	.L291	@,
.L301:
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	bl	AIPSpeedAdjProc	@
	b	.L291	@
	.fnend
	.size	AIPProcFrame, .-AIPProcFrame
	.align	2
	.global	AIPProcChnData
	.type	AIPProcChnData, %function
AIPProcChnData:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, state
	.pad #32
	sub	sp, sp, #32	@,,
	bl	AOE_FlushWKBuf	@
	ldr	r1, [r4, #1040]	@, state_3(D)->Id
	mov	r2, #18	@,
	mov	r0, #1	@,
	bl	TRACE_AOE_FSM	@
	ldr	r1, [r4, #1024]	@ state_3(D)->OutFrameSize, state_3(D)->OutFrameSize
	ldr	r3, [r4, #248]	@ state_3(D)->OutputLeftSamples, state_3(D)->OutputLeftSamples
	mov	r0, r4	@, state
	ldr	r2, [r4, #1020]	@ state_3(D)->OutBlockSize, state_3(D)->OutBlockSize
	mul	r3, r3, r1	@ u32LeftSize, state_3(D)->OutputLeftSamples, state_3(D)->OutFrameSize
	cmp	r3, r2	@ u32LeftSize, state_3(D)->OutBlockSize
	bcs	.L310	@,
	mov	r1, sp	@,
	bl	AIPDmaFrame	@
	cmp	r0, #0	@,
	bne	.L311	@,
.L305:
	bl	AOE_FlushWKBuf	@
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L310:
	bl	AIPDmaLeftFrame	@
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L311:
	ldr	r1, [r4, #1040]	@, state_3(D)->Id
	mov	r2, #19	@,
	mov	r0, #1	@,
	bl	TRACE_AOE_FSM	@
	mov	r0, r4	@, state
	mov	r1, sp	@,
	bl	AIPProcFrame	@
	b	.L305	@
	.fnend
	.size	AIPProcChnData, .-AIPProcChnData
	.align	2
	.global	AIPGetChnCmd
	.type	AIPGetChnCmd, %function
AIPGetChnCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L322	@ tmp118,
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ tmp120,
	tst	r2, #8	@ tmp120,
	movne	r0, #4	@ eNewCmd,
	beq	.L321	@,
.L313:
	str	r0, [r1]	@ eNewCmd, *newcmd_11(D)
	bx	lr	@
.L321:
	ldr	r2, [r3, #8]	@ tmp124,
	and	r2, r2, #3	@ D.17360, tmp124,
	cmp	r2, #3	@ D.17360,
	ldrls	pc, [pc, r2, asl #2]	@ D.17360
	b	.L314	@
.L315:
	.word	.L320
	.word	.L316
	.word	.L317
	.word	.L318
.L320:
	mov	r0, #0	@ eNewCmd,
	b	.L313	@
.L318:
	mov	r0, #3	@ eNewCmd,
	b	.L313	@
.L317:
	mov	r0, #2	@ eNewCmd,
	b	.L313	@
.L316:
	mov	r0, #1	@ eNewCmd,
	b	.L313	@
.L314:
	ldr	r2, [r3, #8]	@ tmp126,
	mov	ip, #4	@ tmp127,
	mov	r0, ip	@ eNewCmd, tmp127
	bfi	r2, ip, #4, #4	@ tmp126, tmp127,,
	str	r2, [r3, #8]	@ tmp126,
	ldr	r2, [r3, #8]	@ tmp128,
	orr	r2, r2, #8	@ tmp128, tmp128,
	str	r2, [r3, #8]	@ tmp128,
	b	.L313	@
.L323:
	.align	2
.L322:
	.word	.LANCHOR0
	.fnend
	.size	AIPGetChnCmd, .-AIPGetChnCmd
	.align	2
	.global	AIPAckChnCmd
	.type	AIPAckChnCmd, %function
AIPAckChnCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L326	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ tmp118,
	tst	r2, #8	@ tmp118,
	bxne	lr	@
	ldr	r2, [r3, #8]	@ tmp123,
	bfi	r2, r1, #4, #4	@ tmp123, Ack,,
	str	r2, [r3, #8]	@ tmp123,
	ldr	r2, [r3, #8]	@ tmp124,
	orr	r2, r2, #8	@ tmp124, tmp124,
	str	r2, [r3, #8]	@ tmp124,
	bx	lr	@
.L327:
	.align	2
.L326:
	.word	.LANCHOR0
	.fnend
	.size	AIPAckChnCmd, .-AIPAckChnCmd
	.align	2
	.global	AIPStopChnCmdProc
	.type	AIPStopChnCmdProc, %function
AIPStopChnCmdProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r0, #8	@ tmp120, Id,
	ldr	r6, .L338	@ tmp140,
	ldr	r5, [r6, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L336	@,
	ldr	r3, [r5, #208]	@ state_5->CurStatus, state_5->CurStatus
	mov	r4, r0	@ Id, Id
	sub	r3, r3, #1	@ D.17373, state_5->CurStatus,
	cmp	r3, #1	@ D.17373,
	bls	.L337	@,
.L332:
	ldr	r2, [r6, r4, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r3, [r2, #8]	@ tmp134,
	ubfx	r3, r3, #3, #1	@ D.17375, tmp134,,
	cmp	r3, #0	@ D.17375,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L335:
	ldr	r1, [r2, #8]	@ tmp137,
	bfi	r1, r3, #4, #4	@ tmp137, D.17375,,
	str	r1, [r2, #8]	@ tmp137,
	ldr	r3, [r2, #8]	@ tmp138,
	orr	r3, r3, #8	@ tmp138, tmp138,
	str	r3, [r2, #8]	@ tmp138,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L336:
	ldr	r2, [r6, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r3, [r2, #8]	@ tmp123,
	ubfx	r3, r3, #3, #1	@ D.17375, tmp123,,
	cmp	r3, #0	@ D.17375,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L335	@
.L337:
	mov	r0, r5	@, state
	bl	AIPFadeoutChnData	@
	mov	r1, #3	@,
	mov	r0, r5	@, state
	bl	AIPFlushChn	@
	mov	r0, r5	@, state
	bl	AIPWriteMuteFrame	@
	mov	r3, #0	@ tmp131,
	str	r3, [r5, #208]	@ tmp131, state_5->CurStatus
	b	.L332	@
.L339:
	.align	2
.L338:
	.word	.LANCHOR0
	.fnend
	.size	AIPStopChnCmdProc, .-AIPStopChnCmdProc
	.align	2
	.global	AIFlushChnCmdProc
	.type	AIFlushChnCmdProc, %function
AIFlushChnCmdProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r0, #8	@ tmp120, Id,
	ldr	r6, .L350	@ tmp139,
	ldr	r5, [r6, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L348	@,
	ldr	r7, [r5, #208]	@ state_5->CurStatus, state_5->CurStatus
	mov	r4, r0	@ Id, Id
	cmp	r7, #1	@ state_5->CurStatus,
	beq	.L349	@,
.L344:
	ldr	r2, [r6, r4, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r3, [r2, #8]	@ tmp133,
	ubfx	r3, r3, #3, #1	@ D.17384, tmp133,,
	cmp	r3, #0	@ D.17384,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L347:
	ldr	r1, [r2, #8]	@ tmp136,
	bfi	r1, r3, #4, #4	@ tmp136, D.17384,,
	str	r1, [r2, #8]	@ tmp136,
	ldr	r3, [r2, #8]	@ tmp137,
	orr	r3, r3, #8	@ tmp137, tmp137,
	str	r3, [r2, #8]	@ tmp137,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L348:
	ldr	r2, [r6, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r3, [r2, #8]	@ tmp123,
	ubfx	r3, r3, #3, #1	@ D.17384, tmp123,,
	cmp	r3, #0	@ D.17384,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	b	.L347	@
.L349:
	mov	r0, r5	@, state
	bl	AIPFadeoutChnData	@
	mov	r1, #3	@,
	mov	r0, r5	@, state
	bl	AIPFlushChn	@
	mov	r0, r5	@, state
	bl	AIPWriteMuteFrame	@
	mov	r1, r7	@, state_5->CurStatus
	ldr	r0, [r5, #204]	@, state_5->hFADE
	mov	r2, #8	@,
	bl	FADE_Active	@
	b	.L344	@
.L351:
	.align	2
.L350:
	.word	.LANCHOR0
	.fnend
	.size	AIFlushChnCmdProc, .-AIFlushChnCmdProc
	.align	2
	.global	AIPPauseChnCmdProc
	.type	AIPPauseChnCmdProc, %function
AIPPauseChnCmdProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r0, #8	@ tmp119, Id,
	ldr	r6, .L362	@ tmp138,
	ldr	r5, [r6, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L360	@,
	ldr	r7, [r5, #208]	@ state_5->CurStatus, state_5->CurStatus
	mov	r4, r0	@ Id, Id
	cmp	r7, #1	@ state_5->CurStatus,
	beq	.L361	@,
.L356:
	ldr	r2, [r6, r4, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r3, [r2, #8]	@ tmp132,
	ubfx	r3, r3, #3, #1	@ D.17393, tmp132,,
	cmp	r3, #0	@ D.17393,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L359:
	ldr	r1, [r2, #8]	@ tmp135,
	bfi	r1, r3, #4, #4	@ tmp135, D.17393,,
	str	r1, [r2, #8]	@ tmp135,
	ldr	r3, [r2, #8]	@ tmp136,
	orr	r3, r3, #8	@ tmp136, tmp136,
	str	r3, [r2, #8]	@ tmp136,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L360:
	ldr	r2, [r6, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r3, [r2, #8]	@ tmp122,
	ubfx	r3, r3, #3, #1	@ D.17393, tmp122,,
	cmp	r3, #0	@ D.17393,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	b	.L359	@
.L361:
	mov	r0, r5	@, state
	bl	AIPFadeoutChnData	@
	mov	r1, r7	@, state_5->CurStatus
	mov	r0, r5	@, state
	bl	AIPFlushChn	@
	mov	r3, #2	@ tmp129,
	str	r3, [r5, #208]	@ tmp129, state_5->CurStatus
	b	.L356	@
.L363:
	.align	2
.L362:
	.word	.LANCHOR0
	.fnend
	.size	AIPPauseChnCmdProc, .-AIPPauseChnCmdProc
	.align	2
	.global	AIPStartChnCmdProc
	.type	AIPStartChnCmdProc, %function
AIPStartChnCmdProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r0, #8	@ tmp152, Id,
	ldr	r5, .L376	@ tmp153,
	mov	r6, r0	@ Id, Id
	ldr	r4, [r5, r7, asl #2]	@ D.17396, g_stAipRm.hAip
	cmp	r4, #0	@ D.17396,
	beq	.L373	@,
	ldr	r3, [r4, #208]	@ D.17397, state_6->CurStatus
	cmp	r3, #0	@ D.17397,
	beq	.L375	@,
	cmp	r3, #2	@ D.17397,
	beq	.L374	@,
.L366:
	cmp	r4, #0	@ D.17396,
	bne	.L370	@,
	ldr	r3, [r5, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ tmp137,
	tst	r2, #8	@ tmp137,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r2, [r3, #8]	@ tmp140,
	mov	r1, #1	@ tmp141,
	bfi	r2, r1, #4, #4	@ tmp140, tmp141,,
	str	r2, [r3, #8]	@ tmp140,
	ldr	r2, [r3, #8]	@ tmp142,
	orr	r2, r2, #8	@ tmp142, tmp142,
	str	r2, [r3, #8]	@ tmp142,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L370:
	ldr	r2, [r5, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r3, [r2, #8]	@ tmp146,
	ubfx	r3, r3, #3, #1	@ D.17399, tmp146,,
	cmp	r3, #0	@ D.17399,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, [r2, #8]	@ tmp149,
	bfi	r1, r3, #4, #4	@ tmp149, D.17399,,
	str	r1, [r2, #8]	@ tmp149,
	ldr	r3, [r2, #8]	@ tmp150,
	orr	r3, r3, #8	@ tmp150, tmp150,
	str	r3, [r2, #8]	@ tmp150,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L375:
	bl	AIPIsChnAttrChange	@
	cmp	r0, #0	@,
	beq	.L374	@,
	mov	r0, r4	@, D.17396
	bl	AIPDestroyChn.part.1	@
	mov	r0, r6	@, Id
.L373:
	bl	AIPCreateChn	@
	mov	r4, r0	@ D.17396,
	str	r0, [r5, r7, asl #2]	@ D.17396, g_stAipRm.hAip
	b	.L366	@
.L374:
	mov	r1, #1	@ tmp131,
	ldr	r0, [r4, #204]	@, state_6->hFADE
	str	r1, [r4, #208]	@ tmp131, state_6->CurStatus
	mov	r2, #8	@,
	bl	FADE_Active	@
	ldr	r4, [r5, r7, asl #2]	@ D.17396, g_stAipRm.hAip
	b	.L366	@
.L377:
	.align	2
.L376:
	.word	.LANCHOR0
	.fnend
	.size	AIPStartChnCmdProc, .-AIPStartChnCmdProc
	.align	2
	.global	AIPProcChnCmd
	.type	AIPProcChnCmd, %function
AIPProcChnCmd:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r4, r0	@ Id, Id
	bl	AIPGetChnCmd	@
	cmp	r0, #4	@,
	beq	.L378	@,
	ldr	r3, [sp, #4]	@ newcmd, newcmd
	cmp	r3, #3	@ newcmd,
	ldrls	pc, [pc, r3, asl #2]	@ newcmd
	b	.L378	@
.L381:
	.word	.L380
	.word	.L382
	.word	.L383
	.word	.L384
.L382:
	mov	r0, r4	@, Id
	bl	AIPStopChnCmdProc	@
.L378:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L384:
	mov	r0, r4	@, Id
	bl	AIFlushChnCmdProc	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L380:
	mov	r0, r4	@, Id
	bl	AIPStartChnCmdProc	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L383:
	mov	r0, r4	@, Id
	bl	AIPPauseChnCmdProc	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPProcChnCmd, .-AIPProcChnCmd
	.align	2
	.global	AIPUpdateChnState
	.type	AIPUpdateChnState, %function
AIPUpdateChnState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L395	@ tmp125,
	add	r3, r0, #8	@ tmp127, Id,
	ldr	r3, [r2, r3, asl #2]	@ state, g_stAipRm.hAip
	ldr	r2, [r2, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r3, #0	@ state,
	bxeq	lr	@
	mov	r1, #0	@ tmp128,
	str	r1, [r3, #212]	@ tmp128, state_6->stGain.bLinearMode
	ldr	r1, [r2, #36]	@ tmp130,
	uxtb	r1, r1	@ D.17408, tmp130
	strh	r1, [r3, #216]	@ movhi	@ D.17408, state_6->stGain.u16LGain
	ldr	r1, [r2, #36]	@ tmp133,
	ubfx	r1, r1, #8, #8	@ D.17408, tmp133,,
	strh	r1, [r3, #218]	@ movhi	@ D.17408, state_6->stGain.u16RGain
	ldr	r1, [r2, #8]	@ tmp137,
	tst	r1, #1610612736	@ tmp137,
	beq	.L394	@,
	ldr	r1, [r2, #8]	@ tmp145,
	ubfx	r1, r1, #29, #2	@ D.17410, tmp145,,
	cmp	r1, #1	@ D.17410,
	ldreq	r2, [r2, #8]	@ tmp149,
	ubfxeq	r2, r2, #24, #5	@ D.17411, tmp149,,
	rsbeq	r2, r2, #0	@ D.17412, D.17411
	streq	r2, [r3, #244]	@ D.17412, state_6->s32UserSpeedAdjust
	bx	lr	@
.L394:
	ldr	r2, [r2, #8]	@ tmp141,
	ubfx	r2, r2, #24, #5	@ D.17411, tmp141,,
	str	r2, [r3, #244]	@ D.17411, state_6->s32UserSpeedAdjust
	bx	lr	@
.L396:
	.align	2
.L395:
	.word	.LANCHOR0
	.fnend
	.size	AIPUpdateChnState, .-AIPUpdateChnState
	.align	2
	.global	AIPProcChn
	.type	AIPProcChn, %function
AIPProcChn:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, r0	@, Id
	ldr	r6, .L404	@ tmp126,
	mov	r4, r0	@ Id, Id
	mov	r2, #17	@,
	mov	r0, #1	@,
	add	r7, r4, #8	@ tmp127, Id,
	bl	TRACE_AOE_FSM	@
	mov	r0, r4	@, Id
	bl	AIPProcChnCmd	@
	ldr	r5, [r6, r7, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L398	@,
	ldr	r8, [r5, #208]	@ state_11->CurStatus, state_11->CurStatus
	cmp	r8, #1	@ state_11->CurStatus,
	beq	.L403	@,
.L398:
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L403:
	mov	r0, r4	@, Id
	bl	AIPUpdateChnState	@
	mov	r0, r5	@, state
	bl	AIPProcChnData	@
	ldr	r1, [r5, #1040]	@, state_11->Id
	mov	r0, r8	@, state_11->CurStatus
	mov	r2, #16	@,
	bl	TRACE_AOE_FSM	@
	ldr	r5, [r6, r7, asl #2]	@ state, g_stAipRm.hAip
	ldr	r4, [r6, r4, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r0, [r5, #192]	@, state_16->hRingOut
	bl	RBUF_QueryBusy	@
	ldr	r2, [r5, #76]	@, state_16->stAttr.u32OutSampleRate
	ldr	r1, [r5, #1024]	@, state_16->OutFrameSize
	bl	UTIL_LatencyMs	@
	ldr	r3, [r4, #4]	@ tmp138,
	bfi	r3, r0, #16, #6	@ tmp138,,,
	mov	r0, #0	@,
	str	r3, [r4, #4]	@ tmp138,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L405:
	.align	2
.L404:
	.word	.LANCHOR0
	.fnend
	.size	AIPProcChn, .-AIPProcChn
	.align	2
	.global	AIPSwResetReg
	.type	AIPSwResetReg, %function
AIPSwResetReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #64	@,
	mov	r4, r0	@ pAipReg, pAipReg
	bl	__memzero	@
	ldr	r3, [r4, #8]	@ tmp111,
	mov	r2, #121	@ tmp114,
	orr	r3, r3, #8	@ tmp111, tmp111,
	str	r3, [r4, #8]	@ tmp111,
	ldr	r3, [r4, #8]	@ tmp113,
	bfi	r3, r2, #8, #7	@ tmp113, tmp114,,
	str	r3, [r4, #8]	@ tmp113,
	ldr	r3, [r4]	@ tmp115,* pAipReg
	bfc	r3, #10, #1	@ tmp115,,
	str	r3, [r4]	@ tmp115,* pAipReg
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPSwResetReg, .-AIPSwResetReg
	.align	2
	.global	AIP_Init
	.type	AIP_Init, %function
AIP_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ivtmp.155, u32AipRegBase
	ldr	r5, .L412	@ ivtmp.158,
	mov	r8, #121	@ tmp156,
	mov	r7, #0	@ tmp157,
	add	r6, r5, #32	@ D.17450, ivtmp.158,
.L409:
	mov	r0, r4	@, ivtmp.155
	mov	r1, #64	@,
	str	r4, [r5, #4]!	@ ivtmp.155, MEM[base: _23, offset: 0B]
	bl	__memzero	@
	ldr	r3, [r4, #8]	@ tmp149,
	cmp	r5, r6	@ ivtmp.158, D.17450
	orr	r3, r3, #8	@ tmp149, tmp149,
	str	r3, [r4, #8]	@ tmp149,
	ldr	r3, [r4, #8]	@ tmp151,
	bfi	r3, r8, #8, #7	@ tmp151, tmp156,,
	str	r3, [r4, #8]	@ tmp151,
	ldr	r3, [r4]	@ tmp153,* ivtmp.155
	bfc	r3, #10, #1	@ tmp153,,
	str	r3, [r4], #64	@ tmp153,
	str	r7, [r5, #32]	@ tmp157, MEM[base: _23, offset: 32B]
	bne	.L409	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L413:
	.align	2
.L412:
	.word	.LANCHOR0-4
	.fnend
	.size	AIP_Init, .-AIP_Init
	.align	2
	.global	AIP_DeInit
	.type	AIP_DeInit, %function
AIP_DeInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, #0	@ tmp117,
	ldr	r4, .L423	@ ivtmp.179,
	add	r5, r4, #32	@ D.17475, ivtmp.179,
	b	.L416	@
.L415:
	cmp	r4, r5	@ ivtmp.179, D.17475
	str	r6, [r4]	@ tmp117, MEM[base: _14, offset: 0B]
	beq	.L422	@,
.L416:
	ldr	r0, [r4, #4]!	@ D.17473, MEM[base: _14, offset: 0B]
	cmp	r0, #0	@ D.17473,
	beq	.L415	@,
	bl	AIPDestroyChn.part.1	@
	cmp	r4, r5	@ ivtmp.179, D.17475
	str	r6, [r4]	@ tmp117, MEM[base: _14, offset: 0B]
	bne	.L416	@,
.L422:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L424:
	.align	2
.L423:
	.word	.LANCHOR0+28
	.fnend
	.size	AIP_DeInit, .-AIP_DeInit
	.align	2
	.global	AIP_Process
	.type	AIP_Process, %function
AIP_Process:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, #0	@ Id,
.L426:
	mov	r0, r4	@, Id
	add	r4, r4, #1	@ Id, Id,
	bl	AIPProcChn	@
	cmp	r4, #8	@ Id,
	bne	.L426	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIP_Process, .-AIP_Process
	.align	2
	.global	AIP_GetChnStatus
	.type	AIP_GetChnStatus, %function
AIP_GetChnStatus:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L432	@ tmp116,
	add	r0, r0, #8	@ tmp117, Id,
	ldr	r3, [r3, r0, asl #2]	@ D.17485, g_stAipRm.hAip
	cmp	r3, #0	@ D.17485,
	streq	r3, [r1]	@ D.17485, pstStatus_5(D)->CurnStatus
	ldrne	r2, [r3, #208]	@ D.17486, state_7->CurStatus
	strne	r2, [r1]	@ D.17486, pstStatus_5(D)->CurnStatus
	ldrne	r3, [r3, #28]	@ D.17487, state_7->stAttr.Priority
	strne	r3, [r1, #4]	@ D.17487, pstStatus_5(D)->Priority
	bx	lr	@
.L433:
	.align	2
.L432:
	.word	.LANCHOR0
	.fnend
	.size	AIP_GetChnStatus, .-AIP_GetChnStatus
	.align	2
	.global	AIP_GetChnAttr
	.type	AIP_GetChnAttr, %function
AIP_GetChnAttr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L436	@ tmp115,
	add	r2, r0, #8	@ tmp116, Id,
	mov	r0, r1	@ pstAttr, pstAttr
	ldr	r1, [r3, r2, asl #2]	@ D.17490, g_stAipRm.hAip
	cmp	r1, #0	@ D.17490,
	bxeq	lr	@
	mov	r2, #124	@,
	b	memcpy	@
.L437:
	.align	2
.L436:
	.word	.LANCHOR0
	.fnend
	.size	AIP_GetChnAttr, .-AIP_GetChnAttr
	.align	2
	.global	AIP_ReadFiFoData
	.type	AIP_ReadFiFoData, %function
AIP_ReadFiFoData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r0, #8	@ tmp127, Id,
	ldr	r6, .L444	@ tmp126,
	ldr	r4, [r6, r3, asl #2]	@ D.17497, g_stAipRm.hAip
	cmp	r4, #0	@ D.17497,
	beq	.L439	@,
	mov	r5, r0	@ Id, Id
	ldr	r0, [r4, #192]	@, state_6->hRingOut
	bl	RBUF_ReadData	@
	ldr	r5, [r6, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	mov	r7, r0	@ ReadBytes,
	ldr	r0, [r4, #192]	@, state_6->hRingOut
	bl	RBUF_QueryBusy	@
	ldr	r2, [r4, #76]	@, state_6->stAttr.u32OutSampleRate
	ldr	r1, [r4, #1024]	@, state_6->OutFrameSize
	mov	r4, r7	@ D.17497, ReadBytes
	bl	UTIL_LatencyMs	@
	ldr	r3, [r5, #4]	@ tmp135,
	bfi	r3, r0, #16, #6	@ tmp135,,,
	str	r3, [r5, #4]	@ tmp135,
.L439:
	mov	r0, r4	@, D.17497
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L445:
	.align	2
.L444:
	.word	.LANCHOR0
	.fnend
	.size	AIP_ReadFiFoData, .-AIP_ReadFiFoData
	.align	2
	.global	AIP_QueryFiFoInfo
	.type	AIP_QueryFiFoInfo, %function
AIP_QueryFiFoInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L449	@ tmp115,
	add	r2, r0, #8	@ tmp116, Id,
	mov	r0, r1	@ pstBufInfo, pstBufInfo
	ldr	r3, [r3, r2, asl #2]	@ D.17503, g_stAipRm.hAip
	cmp	r3, #0	@ D.17503,
	beq	.L448	@,
	ldr	r0, [r3, #192]	@, state_7->hRingOut
	b	RBUF_QueryInfo	@
.L448:
	mov	r1, #36	@,
	b	__memzero	@
.L450:
	.align	2
.L449:
	.word	.LANCHOR0
	.fnend
	.size	AIP_QueryFiFoInfo, .-AIP_QueryFiFoInfo
	.align	2
	.global	AIP_QueryFiFoBusy
	.type	AIP_QueryFiFoBusy, %function
AIP_QueryFiFoBusy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L459	@ tmp115,
	add	r0, r0, #8	@ tmp116, Id,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAipRm.hAip
	cmp	r3, #0	@ state,
	beq	.L452	@,
	ldr	r0, [r3, #192]	@ D.17506, state_6->hRingOut
	cmp	r0, #0	@ D.17506,
	bne	.L458	@,
.L452:
	mov	r0, #0	@,
	bx	lr	@
.L458:
	b	RBUF_QueryBusy	@
.L460:
	.align	2
.L459:
	.word	.LANCHOR0
	.fnend
	.size	AIP_QueryFiFoBusy, .-AIP_QueryFiFoBusy
	.align	2
	.global	AIP_ReadFiFoComplete
	.type	AIP_ReadFiFoComplete, %function
AIP_ReadFiFoComplete:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r0, #8	@ tmp124, Id,
	ldr	r6, .L467	@ tmp123,
	ldr	r4, [r6, r3, asl #2]	@ D.17510, g_stAipRm.hAip
	cmp	r4, #0	@ D.17510,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r5, r0	@ Id, Id
	ldr	r0, [r4, #192]	@, state_5->hRingOut
	bl	RBUF_ReadDataComplete	@
	ldr	r0, [r4, #192]	@, state_5->hRingOut
	ldr	r5, [r6, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	bl	RBUF_QueryBusy	@
	ldr	r2, [r4, #76]	@, state_5->stAttr.u32OutSampleRate
	ldr	r1, [r4, #1024]	@, state_5->OutFrameSize
	bl	UTIL_LatencyMs	@
	ldr	r3, [r5, #4]	@ tmp132,
	bfi	r3, r0, #16, #6	@ tmp132,,,
	str	r3, [r5, #4]	@ tmp132,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L468:
	.align	2
.L467:
	.word	.LANCHOR0
	.fnend
	.size	AIP_ReadFiFoComplete, .-AIP_ReadFiFoComplete
	.align	2
	.global	AIP_UnderFlowCalc
	.type	AIP_UnderFlowCalc, %function
AIP_UnderFlowCalc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L474	@ tmp115,
	add	r2, r0, #8	@ tmp117, Id,
	ldr	r1, [r3, r2, asl #2]	@ tmp118, g_stAipRm.hAip
	ldr	r2, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r1, #0	@ tmp118,
	bxeq	lr	@
	ldr	r3, [r2, #52]	@ tmp120,
	ldr	r1, [r2, #52]	@ tmp122,
	mov	r3, r3, lsr #16	@ D.17516, tmp120,
	add	r3, r3, #1	@ tmp121, D.17516,
	uxth	r3, r3	@ D.17516, tmp121
	bfi	r1, r3, #16, #16	@ tmp122, D.17516,,
	str	r1, [r2, #52]	@ tmp122,
	bx	lr	@
.L475:
	.align	2
.L474:
	.word	.LANCHOR0
	.fnend
	.size	AIP_UnderFlowCalc, .-AIP_UnderFlowCalc
	.align	2
	.global	AIPFlushUnderFlowCalc
	.type	AIPFlushUnderFlowCalc, %function
AIPFlushUnderFlowCalc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L477	@ tmp112,
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #52]	@ tmp113,
	bfc	r2, #16, #16	@ tmp113,,
	str	r2, [r3, #52]	@ tmp113,
	bx	lr	@
.L478:
	.align	2
.L477:
	.word	.LANCHOR0
	.fnend
	.size	AIPFlushUnderFlowCalc, .-AIPFlushUnderFlowCalc
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stAipRm, %object
	.size	g_stAipRm, 64
g_stAipRm:
	.space	64
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
