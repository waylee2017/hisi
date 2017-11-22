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
	.file	"dsp_util.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dsp_util)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/util/.dsp_util.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/util/dsp_util.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/common/util/dsp_util.o
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
	.global	UTIL_CalcFrameSize
	.type	UTIL_CalcFrameSize, %function
UTIL_CalcFrameSize:
	.fnstart
.LFB1057:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #16	@ uBitDepth,
	moveq	r0, r0, asl #1	@ uFrameSize, uCh,
	bxeq	lr	@
	cmp	r1, #24	@ uBitDepth,
	moveq	r0, r0, asl #2	@ uFrameSize, uCh,
	movne	r0, #0	@ uFrameSize,
	bx	lr	@
	.fnend
	.size	UTIL_CalcFrameSize, .-UTIL_CalcFrameSize
	.align	2
	.global	UTIL_LatencyMs2ByteSize
	.type	UTIL_LatencyMs2ByteSize, %function
UTIL_LatencyMs2ByteSize:
	.fnstart
.LFB1058:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	ip, r0, r1	@ tmp138, u32LatencyMs, u32FrameSize
	movw	r0, #:lower16:274877907	@ tmp142,
	movt	r0, #:upper16:274877907	@ tmp142,
	mul	r1, r2, ip	@ tmp139, u32SampleRate, tmp138
	umull	r2, r3, r0, r1	@, tmp140, tmp142, tmp139
	mov	r0, r3, lsr #6	@, tmp140,
	bx	lr	@
	.fnend
	.size	UTIL_LatencyMs2ByteSize, .-UTIL_LatencyMs2ByteSize
	.global	__aeabi_uidiv
	.align	2
	.global	UTIL_LatencyMs
	.type	UTIL_LatencyMs, %function
UTIL_LatencyMs:
	.fnstart
.LFB1059:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r3, #1000	@ tmp139,
	mul	r0, r3, r0	@, tmp139, u32DataBytes
	mul	r1, r1, r2	@, u32FrameSize, u32SampleRate
	bl	__aeabi_uidiv	@
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	UTIL_LatencyMs, .-UTIL_LatencyMs
	.align	2
	.global	UTIL_LRLinearGainProcess
	.type	UTIL_LRLinearGainProcess, %function
UTIL_LRLinearGainProcess:
	.fnstart
.LFB1061:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldrsh	ip, [sp, #12]	@ s16VolumeR, s16VolumeR
	cmp	r3, ip	@ s16VolumeL, s16VolumeR
	beq	.L13	@,
	cmp	r2, #0	@ InSamps,
	ble	.L20	@,
	sub	r5, r2, #1	@ tmp191, InSamps,
	ldrsh	r4, [r0, #0]	@ tmp215,* pSrcPcmBuf
	and	r6, r5, #1	@ tmp193, tmp191,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r4, r4, r3	@ ret, tmp215, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r5, r4, r4	@ sum, ret, ret
@ 0 "" 2
	mov	r4, #1	@ n.457,
	cmp	r4, r2	@ n.457, InSamps
	strh	r5, [r1, #0]	@ movhi	@ sum,* pDestPcmBuf
	mov	r5, #2	@ ivtmp.449,
	beq	.L20	@,
	cmp	r6, #0	@ tmp193,
	beq	.L19	@,
.L36:
	ldrsh	r6, [r0, r5]	@ tmp229,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, ip	@ ret, tmp229, s16VolumeR
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	add	r4, r4, #1	@ n.457, tmp194,
	strh	r6, [r1, r5]	@ movhi	@ sum,
	cmp	r4, r2	@ n.457, InSamps
	add	r5, r5, #2	@ ivtmp.449, tmp195,
	beq	.L20	@,
.L19:
	tst	r4, #1	@ n.457,
	beq	.L17	@,
	ldrsh	r6, [r0, r5]	@ tmp184,* ivtmp.449
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, ip	@ ret, tmp184, s16VolumeR
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
.L18:
	add	r4, r4, #1	@ tmp194, n.457,
	strh	r6, [r1, r5]	@ movhi	@ sum,* ivtmp.449
	tst	r4, #1	@ tmp194,
	add	r5, r5, #2	@ tmp195, ivtmp.449,
	bne	.L36	@,
	ldrsh	r6, [r0, r5]	@ tmp226,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, r3	@ ret, tmp226, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	add	r4, r4, #1	@ n.457, tmp194,
	strh	r6, [r1, r5]	@ movhi	@ sum,
	cmp	r4, r2	@ n.457, InSamps
	add	r5, r5, #2	@ ivtmp.449, tmp195,
	bne	.L19	@,
.L20:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L17:
	ldrsh	r6, [r0, r5]	@ tmp185,* ivtmp.449
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r6, r6, r3	@ ret, tmp185, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r6, r6	@ sum, ret, ret
@ 0 "" 2
	b	.L18	@
.L13:
	cmp	r2, #0	@ InSamps,
	ble	.L20	@,
	sub	r4, r2, #1	@ tmp186, InSamps,
	ldrsh	ip, [r0, #0]	@ tmp182,* pSrcPcmBuf
	and	r4, r4, #1	@ tmp188, tmp186,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r5, ip, r3	@ ret, tmp182, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, r5, r5	@ sum.458, ret, ret
@ 0 "" 2
	mov	r5, #1	@ n,
	cmp	r5, r2	@ n, InSamps
	strh	ip, [r1, #0]	@ movhi	@ sum.458,* pDestPcmBuf
	mov	ip, #2	@ ivtmp.444,
	beq	.L20	@,
	cmp	r4, #0	@ tmp188,
	beq	.L16	@,
	ldrsh	r5, [r0, #2]	@ tmp212,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r4, r5, r3	@ ret, tmp212, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r4, r4, r4	@ sum.458, ret, ret
@ 0 "" 2
	cmp	ip, r2	@ n, InSamps
	mov	r5, ip	@ n, ivtmp.444
	strh	r4, [r1, #2]	@ movhi	@ sum.458,
	mov	ip, #4	@ ivtmp.444,
	beq	.L20	@,
.L16:
	ldrsh	r6, [r0, ip]	@ tmp198,* ivtmp.444
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r4, r6, r3	@ ret, tmp198, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r4, r4	@ sum.458, ret, ret
@ 0 "" 2
	add	r4, ip, #2	@ tmp190, ivtmp.444,
	strh	r6, [r1, ip]	@ movhi	@ sum.458,* ivtmp.444
	add	r5, r5, #1	@ tmp189, n,
	ldrsh	ip, [r0, r4]	@ tmp203,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, tmp203, s16VolumeL
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.458, ret, ret
@ 0 "" 2
	add	r5, r5, #1	@ n, tmp189,
	strh	ip, [r1, r4]	@ movhi	@ sum.458,
	cmp	r5, r2	@ n, InSamps
	add	ip, r4, #2	@ ivtmp.444, tmp190,
	bne	.L16	@,
	b	.L20	@
	.fnend
	.size	UTIL_LRLinearGainProcess, .-UTIL_LRLinearGainProcess
	.align	2
	.global	UTIL_UpmixPcmData
	.type	UTIL_UpmixPcmData, %function
UTIL_UpmixPcmData:
	.fnstart
.LFB1063:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	beq	.L102	@,
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	beq	.L103	@,
.L61:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L103:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r5, [r2, #0]	@ temp.500, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	movne	r8, #0	@ i.504,
	movne	r6, r1	@ pu16Dst, WkBuf
	movne	r4, r8	@ Data, i.504
	beq	.L51	@,
.L52:
	cmp	r0, #0	@ dstCh,
	beq	.L56	@,
	ldr	r3, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	add	ip, r6, #2	@ ivtmp.493, pu16Dst,
	sub	r7, r0, #1	@ tmp206, dstCh,
	cmp	r3, #0	@ <variable>.u32Channels,
	and	r7, r7, #1	@ tmp208, tmp206,
	strlsh	r4, [ip, #-2]	@ movhi	@ Data,
	movls	r6, ip	@ pu16Dst, ivtmp.493
	ldrhih	r4, [r5], #2	@ Data,
	movhi	r6, ip	@ pu16Dst, ivtmp.493
	strhih	r4, [ip, #-2]	@ movhi	@ Data,
.L91:
	mov	r3, #1	@ ch.503,
	cmp	r0, r3	@ dstCh, ch.503
	add	ip, ip, #2	@ ivtmp.493, ivtmp.493,
	bls	.L92	@,
	cmp	r7, #0	@ tmp208,
	beq	.L55	@,
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch.503
	add	r3, r3, #1	@ ch.503, tmp210,
	strlsh	r4, [ip, #-2]	@ movhi	@ Data,
	ldrhih	r4, [r5], #2	@ Data,
	movls	r6, ip	@ pu16Dst, ivtmp.493
	movhi	r6, ip	@ pu16Dst, ivtmp.493
	strhih	r4, [ip, #-2]	@ movhi	@ Data,
	cmp	r0, r3	@ dstCh, ch.503
	add	ip, ip, #2	@ ivtmp.493, tmp209,
	bls	.L92	@,
.L55:
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch.503
	add	r3, r3, #1	@ tmp210, ch.503,
	ldrhih	r4, [r5], #2	@ Data,
	strh	r4, [ip, #-2]	@ movhi	@ Data,
	add	ip, ip, #2	@ tmp209, ivtmp.493,
	ldr	r7, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	mov	r6, ip	@ pu16Dst, tmp209
	cmp	r7, r3	@ <variable>.u32Channels, tmp210
	ldrhih	r4, [r5], #2	@ Data,
	movhi	r6, ip	@ pu16Dst, tmp209
.L97:
	add	r3, r3, #1	@ ch.503, tmp210,
	strh	r4, [ip, #-2]	@ movhi	@ Data,
	cmp	r0, r3	@ dstCh, ch.503
	add	ip, ip, #2	@ ivtmp.493, tmp209,
	bhi	.L55	@,
.L92:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L56:
	add	r8, r8, #1	@ i.504, i.504,
	cmp	ip, r8	@ <variable>.u32SamplesPerFrame, i.504
	bhi	.L52	@,
.L101:
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
.L51:
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	str	r0, [r2, #20]	@ dstCh, <variable>.u32Channels
	moveq	ip, ip, asl #1	@ tmp193, <variable>.u32SamplesPerFrame,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	muleq	r0, r0, ip	@ prephitmp.510, dstCh, tmp193
	beq	.L60	@,
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	movne	r0, #0	@ prephitmp.510,
	beq	.L104	@,
.L60:
	str	r0, [r2, #8]	@ prephitmp.510, <variable>.u32DataBytes
	b	.L61	@
.L102:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r5, [r2, #0]	@ D.15668, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	movne	r8, #0	@ i,
	movne	r6, r1	@ pu32Dst, WkBuf
	movne	r4, r8	@ Data, i
	beq	.L51	@,
.L41:
	cmp	r0, #0	@ dstCh,
	beq	.L45	@,
	ldr	r3, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	add	ip, r6, #4	@ ivtmp.486, pu32Dst,
	sub	r7, r0, #1	@ tmp201, dstCh,
	cmp	r3, #0	@ <variable>.u32Channels,
	and	r7, r7, #1	@ tmp203, tmp201,
	strls	r4, [ip, #-4]	@ Data,
	movls	r6, ip	@ pu32Dst, ivtmp.486
	ldrhi	r4, [r5], #4	@ Data,
	movhi	r6, ip	@ pu32Dst, ivtmp.486
	strhi	r4, [ip, #-4]	@ Data,
.L86:
	mov	r3, #1	@ ch,
	cmp	r0, r3	@ dstCh, ch
	add	ip, ip, #4	@ ivtmp.486, ivtmp.486,
	bls	.L87	@,
	cmp	r7, #0	@ tmp203,
	beq	.L44	@,
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch
	add	r3, r3, #1	@ ch, tmp204,
	strls	r4, [ip, #-4]	@ Data,
	ldrhi	r4, [r5], #4	@ Data,
	movls	r6, ip	@ pu32Dst, ivtmp.486
	movhi	r6, ip	@ pu32Dst, ivtmp.486
	strhi	r4, [ip, #-4]	@ Data,
	cmp	r0, r3	@ dstCh, ch
	add	ip, ip, #4	@ ivtmp.486, tmp205,
	bls	.L87	@,
.L44:
	ldr	r6, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r6, r3	@ <variable>.u32Channels, ch
	add	r3, r3, #1	@ tmp204, ch,
	ldrhi	r4, [r5], #4	@ Data,
	str	r4, [ip, #-4]	@ Data,
	add	ip, ip, #4	@ tmp205, ivtmp.486,
	ldr	r7, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	mov	r6, ip	@ pu32Dst, tmp205
	cmp	r7, r3	@ <variable>.u32Channels, tmp204
	ldrhi	r4, [r5], #4	@ Data,
	movhi	r6, ip	@ pu32Dst, tmp205
.L96:
	add	r3, r3, #1	@ ch, tmp204,
	str	r4, [ip, #-4]	@ Data,
	cmp	r0, r3	@ dstCh, ch
	add	ip, ip, #4	@ ivtmp.486, tmp205,
	bhi	.L44	@,
.L87:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L45:
	add	r8, r8, #1	@ i, i,
	cmp	ip, r8	@ <variable>.u32SamplesPerFrame, i
	bhi	.L41	@,
	b	.L101	@
.L104:
	mov	ip, ip, asl #2	@ tmp195, <variable>.u32SamplesPerFrame,
	mul	r0, r0, ip	@ prephitmp.510, dstCh, tmp195
	str	r0, [r2, #8]	@ prephitmp.510, <variable>.u32DataBytes
	b	.L61	@
	.fnend
	.size	UTIL_UpmixPcmData, .-UTIL_UpmixPcmData
	.align	2
	.global	UTIL_DownmixPcmData
	.type	UTIL_DownmixPcmData, %function
UTIL_DownmixPcmData:
	.fnstart
.LFB1064:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	beq	.L137	@,
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	beq	.L138	@,
.L128:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L138:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r4, [r2, #0]	@ temp.553, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	movne	r5, r1	@ pu16Dst, WkBuf
	movne	r6, #0	@ i.556,
	beq	.L118	@,
.L119:
	cmp	r0, #0	@ dstCh,
	beq	.L123	@,
	add	r3, r4, #2	@ ivtmp.547, pu16Src,
	mov	ip, #0	@ ch.555,
	movls	r4, r3	@ pu16Src, ivtmp.547
	bhi	.L130	@,
	add	ip, ip, #1	@ ch.555, ch.555,
	add	r3, r3, #2	@ ivtmp.547, ivtmp.547,
	cmp	r0, ip	@ dstCh, ch.555
	bls	.L139	@,
.L130:
	ldrh	r4, [r3, #-2]	@,
	add	ip, ip, #1	@ ch.555, ch.555,
	cmp	r0, ip	@ dstCh, ch.555
	strh	r4, [r5], #2	@ movhi	@,
	mov	r4, r3	@ pu16Src, ivtmp.547
	add	r3, r3, #2	@ ivtmp.547, ivtmp.547,
	bhi	.L130	@,
.L139:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L123:
	add	r6, r6, #1	@ i.556, i.556,
	cmp	ip, r6	@ <variable>.u32SamplesPerFrame, i.556
	bhi	.L119	@,
.L136:
	ldr	r3, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
.L118:
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	str	r0, [r2, #20]	@ dstCh, <variable>.u32Channels
	moveq	ip, ip, asl #1	@ tmp164, <variable>.u32SamplesPerFrame,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	muleq	r0, r0, ip	@ prephitmp.560, dstCh, tmp164
	beq	.L127	@,
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	movne	r0, #0	@ prephitmp.560,
	beq	.L140	@,
.L127:
	str	r0, [r2, #8]	@ prephitmp.560, <variable>.u32DataBytes
	b	.L128	@
.L137:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	ldr	r4, [r2, #0]	@ D.15712, <variable>.pDataBuf
	cmp	ip, #0	@ <variable>.u32SamplesPerFrame,
	movne	r5, r1	@ pu32Dst, WkBuf
	movne	r7, #0	@ i,
	beq	.L118	@,
.L108:
	cmp	r0, #0	@ dstCh,
	beq	.L112	@,
	add	r3, r4, #4	@ ivtmp.540, pu32Src,
	mov	ip, #0	@ ch,
	movls	r4, r3	@ pu32Src, ivtmp.540
	bhi	.L129	@,
	add	ip, ip, #1	@ ch, ch,
	add	r3, r3, #4	@ ivtmp.540, ivtmp.540,
	cmp	r0, ip	@ dstCh, ch
	bls	.L141	@,
.L129:
	ldr	r6, [r3, #-4]	@ tmp152,
	add	ip, ip, #1	@ ch, ch,
	cmp	r0, ip	@ dstCh, ch
	mov	r4, r3	@ pu32Src, ivtmp.540
	add	r3, r3, #4	@ ivtmp.540, ivtmp.540,
	str	r6, [r5], #4	@ tmp152,
	bhi	.L129	@,
.L141:
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
.L112:
	add	r7, r7, #1	@ i, i,
	cmp	ip, r7	@ <variable>.u32SamplesPerFrame, i
	bhi	.L108	@,
	b	.L136	@
.L140:
	mov	ip, ip, asl #2	@ tmp166, <variable>.u32SamplesPerFrame,
	mul	r0, r0, ip	@ prephitmp.560, dstCh, tmp166
	str	r0, [r2, #8]	@ prephitmp.560, <variable>.u32DataBytes
	b	.L128	@
	.fnend
	.size	UTIL_DownmixPcmData, .-UTIL_DownmixPcmData
	.align	2
	.global	UTIL_UnifyBitDepthPcmData
	.type	UTIL_UnifyBitDepthPcmData, %function
UTIL_UnifyBitDepthPcmData:
	.fnstart
.LFB1065:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r2, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	cmp	r0, #16	@ dstBitDepth,
	ldr	ip, [r2, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	mul	r3, ip, r3	@ Samples, <variable>.u32SamplesPerFrame, <variable>.u32Channels
	beq	.L162	@,
	cmp	r0, #24	@ dstBitDepth,
	beq	.L163	@,
.L149:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L163:
	ldr	ip, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	ip, #16	@ <variable>.u32BitPerSample,
	bne	.L149	@,
	cmp	r3, #0	@ Samples,
	ldr	r4, [r2, #0]	@ temp.615, <variable>.pDataBuf
	beq	.L147	@,
	ldrh	ip, [r4, #0]	@ Data,* temp.615
	cmp	r3, #1	@ Samples,
	sub	r5, r3, #1	@ tmp165, Samples,
	mov	r0, #1	@ i.617,
	and	r5, r5, r0	@ tmp167, tmp165,
	mov	ip, ip, asl #16	@ tmp157, Data,
	str	ip, [r1, #0]	@ tmp157,* WkBuf
	bls	.L147	@,
	cmp	r5, #0	@ tmp167,
	beq	.L148	@,
	mov	r0, #2	@ tmp193,
	cmp	r3, r0	@ Samples, i.617
	ldrh	ip, [r4, r0]	@ Data,
	mov	ip, ip, asl #16	@ tmp196, Data,
	str	ip, [r1, #4]	@ tmp196,
	bls	.L147	@,
.L148:
	mov	r5, r0, asl #1	@ tmp180, i.617,
	add	ip, r0, #1	@ tmp168, i.617,
	ldrh	r6, [r4, r5]	@ Data,
	mov	r5, ip, asl #1	@ tmp185, tmp168,
	mov	r6, r6, asl #16	@ tmp183, Data,
	str	r6, [r1, r0, asl #2]	@ tmp183,* WkBuf
	add	r0, ip, #1	@ i.617, tmp168,
	ldrh	r5, [r4, r5]	@ Data,
	cmp	r3, r0	@ Samples, i.617
	mov	r5, r5, asl #16	@ tmp188, Data,
	str	r5, [r1, ip, asl #2]	@ tmp188,* WkBuf
	bhi	.L148	@,
.L147:
	ldr	r3, [r2, #8]	@ <variable>.u32DataBytes, <variable>.u32DataBytes
	mov	r0, #24	@ tmp158,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	str	r0, [r2, #16]	@ tmp158, <variable>.u32BitPerSample
	mov	r1, r3, asl #1	@ tmp160, <variable>.u32DataBytes,
	str	r1, [r2, #8]	@ tmp160, <variable>.u32DataBytes
	b	.L149	@
.L162:
	ldr	r0, [r2, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r0, #24	@ <variable>.u32BitPerSample,
	bne	.L149	@,
	cmp	r3, #0	@ Samples,
	ldr	r4, [r2, #0]	@ D.15755, <variable>.pDataBuf
	beq	.L145	@,
	sub	r0, r3, #1	@ tmp161, Samples,
	cmp	r3, #1	@ Samples,
	and	ip, r0, #1	@ tmp163, tmp161,
	ldrh	r0, [r4, #2]	@,
	strh	r0, [r1, #0]	@ movhi	@,* WkBuf
	mov	r0, #1	@ i,
	bls	.L145	@,
	cmp	ip, #0	@ tmp163,
	beq	.L146	@,
	ldrh	r5, [r4, #6]	@,
	mov	ip, #2	@ tmp191,
	cmp	r3, ip	@ Samples, i
	mov	r0, ip	@ i, tmp191
	strh	r5, [r1, ip]	@ movhi	@,
	bls	.L145	@,
.L146:
	add	r7, r4, r0, asl #2	@, tmp173, D.15755, i,
	add	ip, r0, #1	@ tmp164, i,
	mov	r6, r0, asl #1	@ tmp172, i,
	add	r0, ip, #1	@ i, tmp164,
	ldrh	r7, [r7, #2]	@,
	mov	r5, ip, asl #1	@ tmp177, tmp164,
	add	ip, r4, ip, asl #2	@, tmp178, D.15755, tmp164,
	cmp	r3, r0	@ Samples, i
	strh	r7, [r1, r6]	@ movhi	@,
	ldrh	ip, [ip, #2]	@,
	strh	ip, [r1, r5]	@ movhi	@,
	bhi	.L146	@,
.L145:
	ldr	r3, [r2, #8]	@ <variable>.u32DataBytes, <variable>.u32DataBytes
	mov	r0, #16	@ tmp151,
	str	r1, [r2, #0]	@ WkBuf, <variable>.pDataBuf
	str	r0, [r2, #16]	@ tmp151, <variable>.u32BitPerSample
	mov	r1, r3, lsr #1	@ tmp153, <variable>.u32DataBytes,
	str	r1, [r2, #8]	@ tmp153, <variable>.u32DataBytes
	b	.L149	@
	.fnend
	.size	UTIL_UnifyBitDepthPcmData, .-UTIL_UnifyBitDepthPcmData
	.align	2
	.type	VolumedB2Coef, %function
VolumedB2Coef:
	.fnstart
.LFB1074:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	uxtb	r0, r0	@ u32VolumeInt.641, u32VolumeInt
	cmp	r0, #138	@ u32VolumeInt.641,
	movwhi	r0, #:lower16:66633081	@ D.15921,
	movthi	r0, #:upper16:66633081	@ D.15921,
	bxhi	lr	@
	rsb	r0, r0, #139	@ idx, u32VolumeInt.641,
	cmp	r0, #98	@ idx,
	movhi	r0, #0	@ D.15921,
	bxhi	lr	@
	cmp	r1, #0	@ s32VolumeDec,
	beq	.L171	@,
	ble	.L169	@,
	sub	ip, r0, #-1073741823	@ tmp144, idx,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r2, [r3, ip, asl #2]	@ tmp146, g_u32VolCoef
	ldr	ip, [r3, r0, asl #2]	@ D.15929, g_u32VolCoef
	rsb	r0, ip, r2	@ tmp145, D.15929, tmp146
	mul	r0, r1, r0	@ tmp147, s32VolumeDec, tmp145
	add	r0, ip, r0, lsr #3	@, D.15921, D.15929, tmp147,
	bx	lr	@
.L169:
	add	ip, r0, #1	@ tmp151, idx,
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r2, [r3, ip, asl #2]	@ tmp153, g_u32VolCoef
	ldr	r3, [r3, r0, asl #2]	@ temp.642, g_u32VolCoef
	rsb	ip, r3, r2	@ tmp152, temp.642, tmp153
	mul	r0, r1, ip	@ tmp154, s32VolumeDec, tmp152
	sub	r0, r3, r0, lsr #3	@ D.15921, temp.642, tmp154,
	bx	lr	@
.L171:
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.15921, g_u32VolCoef
	bx	lr	@
	.fnend
	.size	VolumedB2Coef, .-VolumedB2Coef
	.align	2
	.global	UTIL_PreLRGainProcess
	.type	UTIL_PreLRGainProcess, %function
UTIL_PreLRGainProcess:
	.fnstart
.LFB1075:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ pstFrame, pstFrame
	mov	r0, r1	@, VolumeInt
	mov	r1, r2	@, VolumeDec
	bl	VolumedB2Coef	@
	ldr	r5, [r4, #12]	@ D.15952, <variable>.u32SamplesPerFrame
	ldr	r2, [r4, #20]	@ D.15953, <variable>.u32Channels
	cmp	r0, #8388608	@ realVolL,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	ldr	r3, [r4, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	mul	r5, r5, r2	@ ivtmp.681, D.15952, D.15953
	cmp	r3, #16	@ <variable>.u32BitPerSample,
	beq	.L174	@,
	cmp	r3, #24	@ <variable>.u32BitPerSample,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	cmp	r5, #0	@ ivtmp.681,
	ldr	r3, [r4, #0]	@ temp.699, <variable>.pDataBuf
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	cmp	r0, #0	@ realVolL,
	sub	r6, r5, #1	@ tmp206, ivtmp.681,
	and	r1, r6, #1	@ tmp207, tmp206,
	movw	ip, #:lower16:8388607	@ tmp200,
	mov	r6, r0	@ D.16982, realVolL
	mov	r7, r6, asr #31	@ D.16982
	movt	ip, #:upper16:8388607	@ tmp200,
	ldr	r2, [r3, #0]	@ data,* temp.699
	bne	.L201	@,
	mov	r2, r0	@ var.700, realVolL
.L202:
	subs	r5, r5, #1	@ ivtmp.681, ivtmp.681,
	str	r2, [r3, #0]	@ var.700,* temp.699
	mov	r2, #4	@ ivtmp.687,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	cmp	r1, #0	@ tmp207,
	beq	.L184	@,
	cmp	r0, #0	@ realVolL,
	ldr	r8, [r3, r2]	@ data,* ivtmp.687
	moveq	r1, r0	@ var.700, realVolL
	beq	.L206	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	r4, r6, r9	@ tmp303, D.16982, data
	mla	lr, r8, r7, r4	@ tmp304, data, D.16982, tmp303
	umull	r8, r9, r6, r8	@ tmp305, D.16982, data
	add	r9, lr, r9	@, tmp304,
	mov	r1, r8, lsr #23	@ tmp308, tmp305,
	orr	r4, r1, r9, asl #9	@, tmp309, tmp308,,
	mov	r1, r4	@ var.700, tmp309
	bls	.L206	@,
	mov	r1, r4, asr #8	@ tmp311, tmp309,
	mov	r8, r1	@ tmp312, tmp311
	mov	r9, r8, asr #31	@ tmp312
	mul	r4, r8, r7	@ tmp314, tmp312, D.16982
	mla	lr, r6, r9, r4	@ tmp315, D.16982,, tmp314
	umull	r8, r9, r8, r6	@ tmp316, tmp312, D.16982
	add	r9, lr, r9	@, tmp315,
	mov	r1, r8, lsr #23	@ D.16980, tmp316,
	orr	r1, r1, r9, asl #9	@, var, D.16980,,
	mov	r4, r1, asr #31	@ sign, var,
	cmp	r4, r1, asr #23	@ sign, var,
	eorne	r1, r4, ip	@ var, sign, tmp200
	mov	r1, r1, asl #8	@ var.700, var,
.L206:
	subs	r5, r5, #1	@ ivtmp.681, ivtmp.681,
	str	r1, [r3, r2]	@ var.700,* ivtmp.687
	add	r2, r2, #4	@ ivtmp.687, ivtmp.687,
	bne	.L184	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L235:
	mov	r2, r0	@ var.700, realVolL
.L211:
	subs	r5, r5, #1	@ ivtmp.681, tmp209,
	str	r2, [r3, r1]	@ var.700,
	add	r2, r1, #4	@ ivtmp.687, tmp208,
	beq	.L234	@,
.L184:
	cmp	r0, #0	@ realVolL,
	ldr	r8, [r3, r2]	@ data,* ivtmp.687
	moveq	r4, r0	@ var.700, realVolL
	beq	.L182	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	lr, r6, r9	@ tmp177, D.16982, data
	mla	r1, r8, r7, lr	@ tmp220, data, D.16982, tmp177
	umull	r8, r9, r6, r8	@ tmp178, D.16982, data
	add	r9, r1, r9	@, tmp220,
	mov	r4, r8, lsr #23	@ tmp194, tmp178,
	orr	r1, r4, r9, asl #9	@, tmp222, tmp194,,
	mov	r4, r1	@ var.700, tmp222
	bls	.L182	@,
	mov	r8, r1, asr #8	@ tmp182, tmp222,
	mov	r9, r8, asr #31	@ tmp183
	mul	r1, r8, r7	@ tmp185, tmp183, D.16982
	mla	lr, r6, r9, r1	@ tmp223, D.16982,, tmp185
	umull	r8, r9, r8, r6	@ tmp186, tmp183, D.16982
	add	r9, lr, r9	@, tmp223,
	mov	r4, r8, lsr #23	@ D.16980, tmp186,
	orr	r8, r4, r9, asl #9	@, var, D.16980,,
	mov	r1, r8, asr #31	@ sign, var,
	cmp	r1, r8, asr #23	@ sign, var,
	eorne	r8, r1, ip	@ var, sign, tmp200
	mov	r4, r8, asl #8	@ var.700, var,
.L182:
	add	r1, r2, #4	@ tmp208, ivtmp.687,
	cmp	r0, #0	@ realVolL,
	str	r4, [r3, r2]	@ var.700,* ivtmp.687
	sub	r5, r5, #1	@ tmp209, ivtmp.681,
	ldr	r8, [r3, r1]	@ data,
	beq	.L235	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	r4, r6, r9	@ tmp327, D.16982, data
	mla	lr, r8, r7, r4	@ tmp328, data, D.16982, tmp327
	umull	r8, r9, r6, r8	@ tmp329, D.16982, data
	add	r9, lr, r9	@, tmp328,
	mov	r2, r8, lsr #23	@ tmp332, tmp329,
	orr	r4, r2, r9, asl #9	@, tmp333, tmp332,,
	mov	r2, r4	@ var.700, tmp333
	bls	.L211	@,
	mov	r8, r4, asr #8	@ tmp335, tmp333,
	mov	r9, r8, asr #31	@ tmp336
	mul	r4, r8, r7	@ tmp338, tmp336, D.16982
	mla	lr, r6, r9, r4	@ tmp339, D.16982,, tmp338
	umull	r8, r9, r8, r6	@ tmp340, tmp336, D.16982
	add	r9, lr, r9	@, tmp339,
	mov	r2, r8, lsr #23	@ D.16980, tmp340,
	orr	r2, r2, r9, asl #9	@, var, D.16980,,
	mov	r4, r2, asr #31	@ sign, var,
	cmp	r4, r2, asr #23	@ sign, var,
	eorne	r2, r4, ip	@ var, sign, tmp200
	mov	r2, r2, asl #8	@ var.700, var,
	b	.L211	@
.L174:
	cmp	r5, #0	@ ivtmp.681,
	ldr	r3, [r4, #0]	@ D.15963, <variable>.pDataBuf
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	cmp	r0, #0	@ realVolL,
	sub	r2, r5, #1	@ tmp202, ivtmp.681,
	and	r1, r2, #1	@ tmp203, tmp202,
	mov	r6, r0	@ realVolL, realVolL
	mov	r7, r6, asr #31	@ realVolL
	movw	ip, #32767	@ tmp197,
	ldrh	r2, [r3, #0]	@ D.16924,* D.15963
	bne	.L188	@,
	mov	r2, r0	@ D.16925, realVolL
.L222:
	subs	r5, r5, #1	@ ivtmp.681, ivtmp.681,
	strh	r2, [r3, #0]	@ movhi	@ D.16925,* D.15963
	mov	r2, #2	@ ivtmp.675,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	cmp	r1, #0	@ tmp203,
	beq	.L180	@,
	cmp	r0, #0	@ realVolL,
	ldrh	r1, [r3, r2]	@ D.16924,* ivtmp.675
	moveq	r1, r0	@ D.16925, realVolL
	beq	.L226	@,
	sxth	lr, r1	@ D.16924, D.16924
	cmp	r0, #8388608	@ realVolL,
	mov	r8, lr	@ D.16924, D.16924
	mov	r9, r8, asr #31	@ D.16924
	mul	r1, r6, r9	@ tmp249, realVolL, D.16924
	mla	lr, r8, r7, r1	@ tmp250, D.16924, realVolL, tmp249
	umull	r8, r9, r6, r8	@ tmp251, realVolL, D.16924
	add	r9, lr, r9	@, tmp250,
	mov	r1, r8, lsr #23	@ tmp254, tmp251,
	orr	r1, r1, r9, asl #9	@, var, tmp254,,
	bls	.L224	@,
	mov	r4, r1, asr #31	@ sign, var,
	cmp	r4, r1, asr #15	@ sign, var,
	eorne	r1, r4, ip	@ var, sign, tmp197
.L224:
	uxth	r1, r1	@ D.16925, var
.L226:
	subs	r5, r5, #1	@ ivtmp.681, ivtmp.681,
	strh	r1, [r3, r2]	@ movhi	@ D.16925,* ivtmp.675
	add	r2, r2, #2	@ ivtmp.675, ivtmp.675,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L180:
	cmp	r0, #0	@ realVolL,
	ldrh	r8, [r3, r2]	@ D.16924,* ivtmp.675
	moveq	r4, r0	@ D.16925, realVolL
	beq	.L177	@,
	sxth	r8, r8	@ D.16924, D.16924
	cmp	r0, #8388608	@ realVolL,
	mov	r9, r8, asr #31	@ D.16924
	mul	lr, r6, r9	@ tmp168, realVolL, D.16924
	mla	r1, r8, r7, lr	@ tmp212, D.16924, realVolL, tmp168
	umull	r8, r9, r6, r8	@ tmp169, realVolL, D.16924
	add	r9, r1, r9	@, tmp212,
	mov	r4, r8, lsr #23	@ tmp192, tmp169,
	orr	r4, r4, r9, asl #9	@, var, tmp192,,
	bls	.L179	@,
	mov	r8, r4, asr #31	@ sign, var,
	cmp	r8, r4, asr #15	@ sign, var,
	eorne	r4, r8, ip	@ var, sign, tmp197
.L179:
	uxth	r4, r4	@ D.16925, var
.L177:
	add	r1, r2, #2	@ tmp204, ivtmp.675,
	cmp	r0, #0	@ realVolL,
	strh	r4, [r3, r2]	@ movhi	@ D.16925,* ivtmp.675
	sub	r5, r5, #1	@ tmp205, ivtmp.681,
	ldrh	r8, [r3, r1]	@ D.16924,
	bne	.L197	@,
	mov	r2, r0	@ D.16925, realVolL
.L229:
	subs	r5, r5, #1	@ ivtmp.681, tmp205,
	strh	r2, [r3, r1]	@ movhi	@ D.16925,
	add	r2, r1, #2	@ ivtmp.675, tmp204,
	bne	.L180	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L188:
	sxth	lr, r2	@ D.16924, D.16924
	cmp	r0, #8388608	@ realVolL,
	mov	r8, lr	@ D.16924, D.16924
	mov	r9, r8, asr #31	@ D.16924
	mul	r2, r6, r9	@ tmp233, realVolL, D.16924
	mla	lr, r8, r7, r2	@ tmp234, D.16924, realVolL, tmp233
	umull	r8, r9, r6, r8	@ tmp235, realVolL, D.16924
	add	r9, lr, r9	@, tmp234,
	mov	r2, r8, lsr #23	@ tmp238, tmp235,
	orr	r2, r2, r9, asl #9	@, var, tmp238,,
	bls	.L220	@,
	mov	r4, r2, asr #31	@ sign, var,
	cmp	r4, r2, asr #15	@ sign, var,
	eorne	r2, r4, ip	@ var, sign, tmp197
.L220:
	uxth	r2, r2	@ D.16925, var
	b	.L222	@
.L201:
	mov	r8, r2	@ data, data
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	r2, r6, r9	@ tmp278, D.16982, data
	mla	lr, r8, r7, r2	@ tmp279, data, D.16982, tmp278
	umull	r8, r9, r6, r8	@ tmp280, D.16982, data
	add	r9, lr, r9	@, tmp279,
	mov	r4, r8, lsr #23	@ tmp283, tmp280,
	orr	r4, r4, r9, asl #9	@, tmp284, tmp283,,
	mov	r2, r4	@ var.700, tmp284
	bls	.L202	@,
	mov	r4, r4, asr #8	@ tmp286, tmp284,
	mov	r8, r4	@ tmp287, tmp286
	mov	r9, r8, asr #31	@ tmp287
	mul	r2, r8, r7	@ tmp289, tmp287, D.16982
	mla	lr, r6, r9, r2	@ tmp290, D.16982,, tmp289
	umull	r8, r9, r8, r6	@ tmp291, tmp287, D.16982
	add	r9, lr, r9	@, tmp290,
	mov	r4, r8, lsr #23	@ D.16980, tmp291,
	orr	r2, r4, r9, asl #9	@, var, D.16980,,
	mov	r4, r2, asr #31	@ sign, var,
	cmp	r4, r2, asr #23	@ sign, var,
	eorne	r2, r4, ip	@ var, sign, tmp200
	mov	r2, r2, asl #8	@ var.700, var,
	b	.L202	@
.L197:
	sxth	r8, r8	@ D.16924, D.16924
	cmp	r0, #8388608	@ realVolL,
	mov	r9, r8, asr #31	@ D.16924
	mul	r2, r6, r9	@ tmp264, realVolL, D.16924
	mla	lr, r8, r7, r2	@ tmp265, D.16924, realVolL, tmp264
	umull	r8, r9, r6, r8	@ tmp266, realVolL, D.16924
	add	r9, lr, r9	@, tmp265,
	mov	r2, r8, lsr #23	@ tmp269, tmp266,
	orr	r2, r2, r9, asl #9	@, var, tmp269,,
	bls	.L227	@,
	mov	r4, r2, asr #31	@ sign, var,
	cmp	r4, r2, asr #15	@ sign, var,
	eorne	r2, r4, ip	@ var, sign, tmp197
.L227:
	uxth	r2, r2	@ D.16925, var
	b	.L229	@
.L234:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
	.fnend
	.size	UTIL_PreLRGainProcess, .-UTIL_PreLRGainProcess
	.align	2
	.global	UTIL_LRGainProcess
	.type	UTIL_LRGainProcess, %function
UTIL_LRGainProcess:
	.fnstart
.LFB1076:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	ip, [r0, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	r4, [r0, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	cmp	r1, #1	@ bLinearMode,
	mul	r4, r4, ip	@ samples, <variable>.u32SamplesPerFrame, <variable>.u32Channels
	beq	.L379	@,
	cmp	r3, #121	@ VolumeR,
	cmpeq	r2, #121	@, VolumeL,
	beq	.L296	@,
	ldr	r1, [r0, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r1, #16	@ <variable>.u32BitPerSample,
	beq	.L253	@,
	cmp	r1, #24	@ <variable>.u32BitPerSample,
	beq	.L380	@,
.L296:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L379:
	ldr	ip, [r0, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	ip, #16	@ <variable>.u32BitPerSample,
	beq	.L239	@,
	cmp	ip, #24	@ <variable>.u32BitPerSample,
	bne	.L296	@,
	sxth	r2, r2	@ temp.832, VolumeL
	sxth	r3, r3	@ temp.833, VolumeR
	cmp	r2, r3	@ temp.832, temp.833
	ldr	r0, [r0, #0]	@ temp.831, <variable>.pDataBuf
	beq	.L247	@,
	cmp	r4, #0	@ samples,
	ble	.L296	@,
	sub	r6, r4, #1	@ tmp388, samples,
	ldr	ip, [r0, #0]	@ tmp493,* temp.831
	and	r6, r6, #1	@ tmp390, tmp388,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r2	@ ret, tmp493, temp.832
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.845, ret, ret
@ 0 "" 2
	cmp	r4, r1	@ samples, n.848
	str	ip, [r0], #4	@ sum.845,
	beq	.L296	@,
	cmp	r6, #0	@ tmp390,
	beq	.L252	@,
	ldr	ip, [r0, #0]	@ tmp502,* ivtmp.765
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, tmp502, temp.833
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.845, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n.848, n.848,
	str	ip, [r0], #4	@ sum.845,
	cmp	r4, r1	@ samples, n.848
	bne	.L252	@,
	b	.L296	@
.L381:
	ldr	r6, [r0, #0]	@ tmp226,* ivtmp.765
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r3	@ ret, tmp226, temp.833
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.845, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp391, n.848,
	mov	ip, r0	@ tmp392, ivtmp.765
	tst	r1, #1	@ tmp391,
	str	r6, [ip], #4	@ sum.845,
	beq	.L323	@,
.L382:
	ldr	r6, [r0, #4]	@ tmp507,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r3	@ ret, tmp507, temp.833
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.845, ret, ret
@ 0 "" 2
.L364:
	add	r1, r1, #1	@ n.848, tmp391,
	mov	r0, ip	@ ivtmp.765, tmp392
	cmp	r4, r1	@ samples, n.848
	str	r6, [r0], #4	@ sum.845,
	beq	.L296	@,
.L252:
	tst	r1, #1	@ n.848,
	bne	.L381	@,
	ldr	r6, [r0, #0]	@ tmp228,* ivtmp.765
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp228, temp.832
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.845, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp391, n.848,
	mov	ip, r0	@ tmp392, ivtmp.765
	tst	r1, #1	@ tmp391,
	str	r6, [ip], #4	@ sum.845,
	bne	.L382	@,
.L323:
	ldr	r6, [r0, #4]	@ tmp504,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r2	@ ret, tmp504, temp.832
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.845, ret, ret
@ 0 "" 2
	b	.L364	@
.L380:
	uxtb	ip, r2	@ tmp282, VolumeL
	ldr	r1, [r0, #0]	@ temp.836, <variable>.pDataBuf
	rsb	r0, ip, #139	@ idx, tmp282,
	uxtb	r6, r3	@ tmp286, VolumeR
	cmp	r0, #99	@ idx,
	rsb	r6, r6, #139	@ idx, tmp286,
	bicle	r0, r0, r0, asr #31	@ idx, idx
	movw	ip, #:lower16:.LANCHOR0	@ tmp448,
	movgt	r0, #99	@ idx,
	cmp	r6, #99	@ idx,
	movt	ip, #:upper16:.LANCHOR0	@ tmp448,
	bicle	r6, r6, r6, asr #31	@ idx, idx
	movgt	r6, #99	@ idx,
	cmp	r2, r3	@ VolumeL, VolumeR
	ldr	r0, [ip, r0, asl #2]	@ realVolL, g_u32VolCoef
	ldr	ip, [ip, r6, asl #2]	@ realVolR, g_u32VolCoef
	beq	.L281	@,
	cmp	r4, #0	@ samples,
	beq	.L296	@,
	sub	r2, r4, #1	@ samples.855, samples,
	mov	r3, #0	@ ivtmp.823,
	tst	r2, #1	@ samples.855,
	movw	fp, #:lower16:8388607	@ tmp369,
	mov	r8, r0	@ D.17100, realVolL
	mov	r9, r8, asr #31	@ D.17100
	movt	fp, #:upper16:8388607	@ tmp369,
	mov	r6, ip	@ D.17112, realVolR
	mov	r7, r6, asr #31	@ D.17112
	ldr	r4, [r1, r3]	@ data.851,* ivtmp.823
	beq	.L287	@,
.L383:
	cmp	ip, #0	@ realVolR,
	moveq	r4, ip	@ var.852, realVolR
	beq	.L289	@,
	mov	r5, r4, asr #31	@ data.851
	cmp	ip, #8388608	@ realVolR,
	mul	sl, r6, r5	@ tmp306, D.17112, data.851
	mla	sl, r4, r7, sl	@ tmp461, data.851, D.17112, tmp306
	umull	r4, r5, r6, r4	@ tmp307, D.17112, data.851
	add	r5, sl, r5	@, tmp461,
	mov	sl, r4, lsr #23	@ tmp348, tmp307,
	orr	sl, sl, r5, asl #9	@, tmp463, tmp348,,
	mov	r4, sl	@ var.852, tmp463
	bls	.L289	@,
	mov	r4, sl, asr #8	@ tmp311, tmp463,
	mov	r5, r4, asr #31	@ tmp312
	mul	sl, r4, r7	@ tmp314, tmp312, D.17112
	mla	sl, r6, r5, sl	@ tmp464, D.17112,, tmp314
	umull	r4, r5, r4, r6	@ tmp315, tmp312, D.17112
	add	r5, sl, r5	@, tmp464,
	mov	sl, r4, lsr #23	@ D.17114, tmp315,
	orr	sl, sl, r5, asl #9	@, var, D.17114,,
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #23	@ sign, var,
	eorne	sl, r4, fp	@ var, sign, tmp369
	mov	r4, sl, asl #8	@ var.852, var,
.L289:
	str	r4, [r1, r3]	@ var.852,* ivtmp.823
	sub	r2, r2, #1	@ samples.855, samples.855,
	add	r3, r3, #4	@ ivtmp.823, ivtmp.823,
.L384:
	tst	r2, #1	@ samples.855,
	ldr	r4, [r1, r3]	@ data.851,* ivtmp.823
	bne	.L383	@,
.L287:
	cmp	r0, #0	@ realVolL,
	moveq	r4, r0	@ var.853, realVolL
	beq	.L293	@,
	mov	r5, r4, asr #31	@ data.851
	cmp	r0, #8388608	@ realVolL,
	mul	sl, r8, r5	@ tmp321, D.17100, data.851
	mla	sl, r4, r9, sl	@ tmp466, data.851, D.17100, tmp321
	umull	r4, r5, r8, r4	@ tmp322, D.17100, data.851
	add	r5, sl, r5	@, tmp466,
	mov	sl, r4, lsr #23	@ tmp350, tmp322,
	orr	sl, sl, r5, asl #9	@, tmp468, tmp350,,
	mov	r4, sl	@ var.853, tmp468
	bls	.L293	@,
	mov	r4, sl, asr #8	@ tmp326, tmp468,
	mov	r5, r4, asr #31	@ tmp327
	mul	sl, r4, r9	@ tmp329, tmp327, D.17100
	mla	sl, r8, r5, sl	@ tmp469, D.17100,, tmp329
	umull	r4, r5, r4, r8	@ tmp330, tmp327, D.17100
	add	r5, sl, r5	@, tmp469,
	mov	sl, r4, lsr #23	@ D.17102, tmp330,
	orr	sl, sl, r5, asl #9	@, var, D.17102,,
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #23	@ sign, var,
	eorne	sl, r4, fp	@ var, sign, tmp369
	mov	r4, sl, asl #8	@ var.853, var,
.L293:
	cmp	r2, #0	@ samples.855,
	str	r4, [r1, r3]	@ var.853,* ivtmp.823
	add	r3, r3, #4	@ ivtmp.823, ivtmp.823,
	beq	.L296	@,
	sub	r2, r2, #1	@ samples.855, samples.855,
	b	.L384	@
.L239:
	sxth	r2, r2	@ D.15986, VolumeL
	sxth	r3, r3	@ D.15987, VolumeR
	cmp	r2, r3	@ D.15986, D.15987
	ldr	r0, [r0, #0]	@ D.15984, <variable>.pDataBuf
	beq	.L241	@,
	cmp	r4, #0	@ samples,
	ble	.L296	@,
	sub	r6, r4, #1	@ tmp378, samples,
	ldrsh	ip, [r0, #0]	@ tmp474,* D.15984
	and	r6, r6, #1	@ tmp380, tmp378,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r2	@ ret, tmp474, D.15986
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.839, ret, ret
@ 0 "" 2
	cmp	r4, r1	@ samples, n.843
	strh	ip, [r0], #2	@ movhi	@ sum.839,
	beq	.L296	@,
	cmp	r6, #0	@ tmp380,
	beq	.L246	@,
	ldrsh	ip, [r0, #0]	@ tmp483,* ivtmp.757
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, ip, r3	@ ret, tmp483, D.15987
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, ip, ip	@ sum.839, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n.843, n.843,
	strh	ip, [r0], #2	@ movhi	@ sum.839,
	cmp	r4, r1	@ samples, n.843
	bne	.L246	@,
	b	.L296	@
.L385:
	ldrsh	r6, [r0, #0]	@ tmp217,* ivtmp.757
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r3	@ ret, tmp217, D.15987
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.839, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp381, n.843,
	mov	ip, r0	@ tmp382, ivtmp.757
	tst	r1, #1	@ tmp381,
	strh	r6, [ip], #2	@ movhi	@ sum.839,
	beq	.L312	@,
.L386:
	ldrsh	r6, [r0, #2]	@ tmp488,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r3	@ ret, tmp488, D.15987
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.839, ret, ret
@ 0 "" 2
.L363:
	add	r1, r1, #1	@ n.843, tmp381,
	mov	r0, ip	@ ivtmp.757, tmp382
	cmp	r4, r1	@ samples, n.843
	strh	r6, [r0], #2	@ movhi	@ sum.839,
	beq	.L296	@,
.L246:
	tst	r1, #1	@ n.843,
	bne	.L385	@,
	ldrsh	r6, [r0, #0]	@ tmp219,* ivtmp.757
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp219, D.15986
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum.839, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ tmp381, n.843,
	mov	ip, r0	@ tmp382, ivtmp.757
	tst	r1, #1	@ tmp381,
	strh	r6, [ip], #2	@ movhi	@ sum.839,
	bne	.L386	@,
.L312:
	ldrsh	r6, [r0, #2]	@ tmp485,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r0, r6, r2	@ ret, tmp485, D.15986
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, r0, r0	@ sum.839, ret, ret
@ 0 "" 2
	b	.L363	@
.L253:
	uxtb	ip, r2	@ tmp240, VolumeL
	ldr	r1, [r0, #0]	@ temp.835, <variable>.pDataBuf
	rsb	r0, ip, #139	@ idx, tmp240,
	uxtb	r6, r3	@ tmp244, VolumeR
	cmp	r0, #99	@ idx,
	rsb	r6, r6, #139	@ idx, tmp244,
	bicle	r0, r0, r0, asr #31	@ idx, idx
	movw	ip, #:lower16:.LANCHOR0	@ tmp352,
	movgt	r0, #99	@ idx,
	cmp	r6, #99	@ idx,
	movt	ip, #:upper16:.LANCHOR0	@ tmp352,
	bicle	r6, r6, r6, asr #31	@ idx, idx
	movgt	r6, #99	@ idx,
	cmp	r2, r3	@ VolumeL, VolumeR
	ldr	r0, [ip, r0, asl #2]	@ realVolL, g_u32VolCoef
	ldr	ip, [ip, r6, asl #2]	@ realVolR, g_u32VolCoef
	beq	.L259	@,
	cmp	r4, #0	@ samples,
	beq	.L296	@,
	sub	r2, r4, #1	@ samples.854, samples,
	mov	r3, #0	@ ivtmp.791,
	tst	r2, #1	@ samples.854,
	mov	r8, ip	@ realVolR, realVolR
	mov	r9, r8, asr #31	@ realVolR
	movw	fp, #32767	@ tmp361,
	mov	r6, r0	@ realVolL, realVolL
	mov	r7, r6, asr #31	@ realVolL
	ldrh	r4, [r1, r3]	@ temp.849,* ivtmp.791
	beq	.L266	@,
.L387:
	cmp	r0, #0	@ realVolL,
	moveq	sl, r0	@ D.17058, realVolL
	beq	.L268	@,
	sxth	r4, r4	@ temp.849, temp.849
	cmp	r0, #8388608	@ realVolL,
	mov	r5, r4, asr #31	@ temp.849
	mul	sl, r6, r5	@ tmp262, realVolL, temp.849
	mla	sl, r4, r7, sl	@ tmp443, temp.849, realVolL, tmp262
	umull	r4, r5, r6, r4	@ tmp263, realVolL, temp.849
	add	r5, sl, r5	@, tmp443,
	mov	sl, r4, lsr #23	@ tmp342, tmp263,
	orr	sl, sl, r5, asl #9	@, var, tmp342,,
	bls	.L270	@,
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #15	@ sign, var,
	eorne	sl, r4, fp	@ var, sign, tmp361
.L270:
	uxth	sl, sl	@ D.17058, var
.L268:
	strh	sl, [r1, r3]	@ movhi	@ D.17058,* ivtmp.791
	sub	r2, r2, #1	@ samples.854, samples.854,
	add	r3, r3, #2	@ ivtmp.791, ivtmp.791,
.L388:
	tst	r2, #1	@ samples.854,
	ldrh	r4, [r1, r3]	@ temp.849,* ivtmp.791
	bne	.L387	@,
.L266:
	cmp	ip, #0	@ realVolR,
	moveq	sl, ip	@ D.17049, realVolR
	beq	.L273	@,
	sxth	r4, r4	@ temp.849, temp.849
	cmp	ip, #8388608	@ realVolR,
	mov	r5, r4, asr #31	@ temp.849
	mul	sl, r8, r5	@ tmp273, realVolR, temp.849
	mla	sl, r4, r9, sl	@ tmp445, temp.849, realVolR, tmp273
	umull	r4, r5, r8, r4	@ tmp274, realVolR, temp.849
	add	r5, sl, r5	@, tmp445,
	mov	sl, r4, lsr #23	@ tmp344, tmp274,
	orr	sl, sl, r5, asl #9	@, var, tmp344,,
	bls	.L275	@,
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #15	@ sign, var,
	eorne	sl, r4, fp	@ var, sign, tmp361
.L275:
	uxth	sl, sl	@ D.17049, var
.L273:
	cmp	r2, #0	@ samples.854,
	strh	sl, [r1, r3]	@ movhi	@ D.17049,* ivtmp.791
	add	r3, r3, #2	@ ivtmp.791, ivtmp.791,
	beq	.L296	@,
	sub	r2, r2, #1	@ samples.854, samples.854,
	b	.L388	@
.L281:
	cmp	r4, #0	@ samples,
	beq	.L296	@,
	cmp	r0, #0	@ realVolL,
	sub	r7, r4, #1	@ tmp397, samples,
	and	r8, r7, #1	@ tmp398, tmp397,
	movw	ip, #:lower16:8388607	@ tmp366,
	mov	r6, r0	@ D.17124, realVolL
	mov	r7, r6, asr #31	@ D.17124
	movt	ip, #:upper16:8388607	@ tmp366,
	ldr	r2, [r1, #0]	@ data,* temp.836
	bne	.L338	@,
	mov	r3, r0	@ var.850, realVolL
.L339:
	subs	r4, r4, #1	@ ivtmp.781, samples,
	str	r3, [r1, #0]	@ var.850,* temp.836
	mov	r3, #4	@ ivtmp.803,
	beq	.L296	@,
	cmp	r8, #0	@ tmp398,
	beq	.L286	@,
	cmp	r0, #0	@ realVolL,
	ldr	r8, [r1, r3]	@ data,* ivtmp.803
	moveq	r2, r0	@ var.850, realVolL
	beq	.L343	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	r2, r6, r9	@ tmp583, D.17124, data
	mla	r2, r8, r7, r2	@ tmp584, data, D.17124, tmp583
	umull	r8, r9, r6, r8	@ tmp585, D.17124, data
	add	r9, r2, r9	@, tmp584,
	mov	r2, r8, lsr #23	@ tmp588, tmp585,
	orr	r8, r2, r9, asl #9	@, tmp589, tmp588,,
	mov	r2, r8	@ var.850, tmp589
	bls	.L343	@,
	mov	r8, r8, asr #8	@ tmp591, tmp589,
	mov	r9, r8, asr #31	@ tmp592
	mul	r2, r8, r7	@ tmp594, tmp592, D.17124
	mla	r2, r6, r9, r2	@ tmp595, D.17124,, tmp594
	umull	r8, r9, r8, r6	@ tmp596, tmp592, D.17124
	add	r9, r2, r9	@, tmp595,
	mov	r2, r8, lsr #23	@ D.17126, tmp596,
	orr	r2, r2, r9, asl #9	@, var, D.17126,,
	mov	r8, r2, asr #31	@ sign, var,
	cmp	r8, r2, asr #23	@ sign, var,
	eorne	r2, r8, ip	@ var, sign, tmp366
	mov	r2, r2, asl #8	@ var.850, var,
.L343:
	subs	r4, r4, #1	@ ivtmp.781, ivtmp.781,
	str	r2, [r1, r3]	@ var.850,* ivtmp.803
	add	r3, r3, #4	@ ivtmp.803, ivtmp.803,
	bne	.L286	@,
	b	.L296	@
.L389:
	mov	r3, r0	@ var.850, realVolL
.L348:
	subs	r4, r4, #1	@ ivtmp.781, tmp400,
	str	r3, [r1, r8]	@ var.850,
	add	r3, r8, #4	@ ivtmp.803, tmp399,
	beq	.L296	@,
.L286:
	cmp	r0, #0	@ realVolL,
	ldr	r8, [r1, r3]	@ data,* ivtmp.803
	moveq	r2, r0	@ var.850, realVolL
	beq	.L284	@,
	mov	r9, r8, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	r2, r6, r9	@ tmp290, D.17124, data
	mla	r2, r8, r7, r2	@ tmp452, data, D.17124, tmp290
	umull	r8, r9, r6, r8	@ tmp291, D.17124, data
	add	r9, r2, r9	@, tmp452,
	mov	r2, r8, lsr #23	@ tmp346, tmp291,
	orr	r8, r2, r9, asl #9	@, tmp454, tmp346,,
	mov	r2, r8	@ var.850, tmp454
	bls	.L284	@,
	mov	r8, r8, asr #8	@ tmp295, tmp454,
	mov	r9, r8, asr #31	@ tmp296
	mul	r2, r8, r7	@ tmp298, tmp296, D.17124
	mla	r2, r6, r9, r2	@ tmp455, D.17124,, tmp298
	umull	r8, r9, r8, r6	@ tmp299, tmp296, D.17124
	add	r9, r2, r9	@, tmp455,
	mov	r2, r8, lsr #23	@ D.17126, tmp299,
	orr	r2, r2, r9, asl #9	@, var, D.17126,,
	mov	r8, r2, asr #31	@ sign, var,
	cmp	r8, r2, asr #23	@ sign, var,
	eorne	r2, r8, ip	@ var, sign, tmp366
	mov	r2, r2, asl #8	@ var.850, var,
.L284:
	add	r8, r3, #4	@ tmp399, ivtmp.803,
	cmp	r0, #0	@ realVolL,
	str	r2, [r1, r3]	@ var.850,* ivtmp.803
	sub	r4, r4, #1	@ tmp400, ivtmp.781,
	ldr	r2, [r1, r8]	@ data,
	beq	.L389	@,
	mov	r3, r2, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	sl, r6, r3	@ tmp607, D.17124, data
	mla	sl, r2, r7, sl	@ tmp608, data, D.17124, tmp607
	umull	r2, r3, r6, r2	@ tmp609, D.17124, data
	add	r3, sl, r3	@, tmp608,
	mov	sl, r2, lsr #23	@ tmp612, tmp609,
	orr	r2, sl, r3, asl #9	@, tmp613, tmp612,,
	mov	r3, r2	@ var.850, tmp613
	bls	.L348	@,
	mov	r2, r2, asr #8	@ tmp615, tmp613,
	mov	r3, r2, asr #31	@ tmp616
	mul	sl, r2, r7	@ tmp618, tmp616, D.17124
	mla	sl, r6, r3, sl	@ tmp619, D.17124,, tmp618
	umull	r2, r3, r2, r6	@ tmp620, tmp616, D.17124
	add	r3, sl, r3	@, tmp619,
	mov	sl, r2, lsr #23	@ D.17126, tmp620,
	orr	r3, sl, r3, asl #9	@, var, D.17126,,
	mov	r2, r3, asr #31	@ sign, var,
	cmp	r2, r3, asr #23	@ sign, var,
	eorne	r3, r2, ip	@ var, sign, tmp366
	mov	r3, r3, asl #8	@ var.850, var,
	b	.L348	@
.L259:
	cmp	r4, #0	@ samples,
	beq	.L296	@,
	cmp	r0, #0	@ realVolL,
	sub	r8, r4, #1	@ tmp393, samples,
	and	r6, r8, #1	@ tmp394, tmp393,
	movw	ip, #32767	@ tmp358,
	mov	r8, r0	@ realVolL, realVolL
	mov	r9, r8, asr #31	@ realVolL
	ldrh	r3, [r1, #0]	@ D.17074,* temp.835
	bne	.L325	@,
	mov	r3, r0	@ D.17067, realVolL
.L367:
	subs	r4, r4, #1	@ ivtmp.781, samples,
	strh	r3, [r1, #0]	@ movhi	@ D.17067,* temp.835
	mov	r3, #2	@ ivtmp.771,
	beq	.L296	@,
	cmp	r6, #0	@ tmp394,
	beq	.L265	@,
	cmp	r0, #0	@ realVolL,
	ldrh	r2, [r1, r3]	@ D.17074,* ivtmp.771
	moveq	r2, r0	@ D.17067, realVolL
	beq	.L371	@,
	sxth	r2, r2	@ D.17074, D.17074
	cmp	r0, #8388608	@ realVolL,
	mov	r6, r2	@ D.17074, D.17074
	mov	r7, r6, asr #31	@ D.17074
	mul	r2, r8, r7	@ tmp529, realVolL, D.17074
	mla	r2, r6, r9, r2	@ tmp530, D.17074, realVolL, tmp529
	umull	r6, r7, r8, r6	@ tmp531, realVolL, D.17074
	add	r7, r2, r7	@, tmp530,
	mov	r2, r6, lsr #23	@ tmp534, tmp531,
	orr	r2, r2, r7, asl #9	@, var, tmp534,,
	bls	.L369	@,
	mov	r6, r2, asr #31	@ sign, var,
	cmp	r6, r2, asr #15	@ sign, var,
	eorne	r2, r6, ip	@ var, sign, tmp358
.L369:
	uxth	r2, r2	@ D.17067, var
.L371:
	subs	r4, r4, #1	@ ivtmp.781, ivtmp.781,
	strh	r2, [r1, r3]	@ movhi	@ D.17067,* ivtmp.771
	add	r3, r3, #2	@ ivtmp.771, ivtmp.771,
	beq	.L296	@,
.L265:
	cmp	r0, #0	@ realVolL,
	ldrh	r6, [r1, r3]	@ D.17074,* ivtmp.771
	moveq	r2, r0	@ D.17067, realVolL
	beq	.L262	@,
	sxth	r6, r6	@ D.17074, D.17074
	cmp	r0, #8388608	@ realVolL,
	mov	r7, r6, asr #31	@ D.17074
	mul	r2, r8, r7	@ tmp250, realVolL, D.17074
	mla	r2, r6, r9, r2	@ tmp437, D.17074, realVolL, tmp250
	umull	r6, r7, r8, r6	@ tmp251, realVolL, D.17074
	add	r7, r2, r7	@, tmp437,
	mov	r2, r6, lsr #23	@ tmp340, tmp251,
	orr	r2, r2, r7, asl #9	@, var, tmp340,,
	bls	.L264	@,
	mov	r6, r2, asr #31	@ sign, var,
	cmp	r6, r2, asr #15	@ sign, var,
	eorne	r2, r6, ip	@ var, sign, tmp358
.L264:
	uxth	r2, r2	@ D.17067, var
.L262:
	add	r6, r3, #2	@ tmp395, ivtmp.771,
	cmp	r0, #0	@ realVolL,
	strh	r2, [r1, r3]	@ movhi	@ D.17067,* ivtmp.771
	sub	r4, r4, #1	@ tmp396, ivtmp.781,
	ldrh	r2, [r1, r6]	@ D.17074,
	bne	.L334	@,
	mov	r3, r0	@ D.17067, realVolL
.L374:
	subs	r4, r4, #1	@ ivtmp.781, tmp396,
	strh	r3, [r1, r6]	@ movhi	@ D.17067,
	add	r3, r6, #2	@ ivtmp.771, tmp395,
	bne	.L265	@,
	b	.L296	@
.L334:
	sxth	r2, r2	@ D.17074, D.17074
	cmp	r0, #8388608	@ realVolL,
	mov	r3, r2, asr #31	@ D.17074
	mul	sl, r8, r3	@ tmp544, realVolL, D.17074
	mla	sl, r2, r9, sl	@ tmp545, D.17074, realVolL, tmp544
	umull	r2, r3, r8, r2	@ tmp546, realVolL, D.17074
	add	r3, sl, r3	@, tmp545,
	mov	sl, r2, lsr #23	@ tmp549, tmp546,
	orr	r3, sl, r3, asl #9	@, var, tmp549,,
	bls	.L372	@,
	mov	r2, r3, asr #31	@ sign, var,
	cmp	r2, r3, asr #15	@ sign, var,
	eorne	r3, r2, ip	@ var, sign, tmp358
.L372:
	uxth	r3, r3	@ D.17067, var
	b	.L374	@
.L241:
	cmp	r4, #0	@ samples,
	ble	.L296	@,
	sub	ip, r4, #1	@ tmp373, samples,
	ldrsh	r3, [r0, #0]	@ tmp215,* D.15984
	and	ip, ip, #1	@ tmp375, tmp373,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp215, D.15986
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	cmp	r4, #1	@ samples,
	strh	r3, [r0, #0]	@ movhi	@ sum,* D.15984
	mov	r3, #2	@ ivtmp.754,
	beq	.L296	@,
	cmp	ip, #0	@ tmp375,
	beq	.L243	@,
	ldrsh	ip, [r0, #2]	@ tmp471,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, ip, r2	@ ret, tmp471, D.15986
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    ip, r1, r1	@ sum, ret, ret
@ 0 "" 2
	cmp	r4, r3	@ samples, n
	mov	r1, r3	@ n, ivtmp.754
	strh	ip, [r0, #2]	@ movhi	@ sum,
	mov	r3, #4	@ ivtmp.754,
	beq	.L296	@,
.L243:
	ldrsh	r6, [r0, r3]	@ tmp403,* ivtmp.754
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp403, D.15986
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum, ret, ret
@ 0 "" 2
	add	ip, r3, #2	@ tmp376, ivtmp.754,
	strh	r6, [r0, r3]	@ movhi	@ sum,* ivtmp.754
	add	r1, r1, #1	@ tmp377, n,
	ldrsh	r3, [r0, ip]	@ tmp408,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp408, D.15986
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n, tmp377,
	strh	r3, [r0, ip]	@ movhi	@ sum,
	cmp	r4, r1	@ samples, n
	add	r3, ip, #2	@ ivtmp.754, tmp376,
	bne	.L243	@,
	b	.L296	@
.L247:
	cmp	r4, #0	@ samples,
	ble	.L296	@,
	sub	ip, r4, #1	@ tmp383, samples,
	ldr	r3, [r0, #0]	@ tmp223,* temp.831
	and	ip, ip, #1	@ tmp385, tmp383,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp223, temp.832
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	cmp	r4, #1	@ samples,
	str	r3, [r0, #0]	@ sum,* temp.831
	mov	r3, #4	@ ivtmp.762,
	beq	.L296	@,
	cmp	ip, #0	@ tmp385,
	beq	.L249	@,
	ldr	ip, [r0, #4]	@ tmp490,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r1, ip, r2	@ ret, tmp490, temp.832
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r1, r1	@ sum, ret, ret
@ 0 "" 2
	mov	r1, #2	@ n,
	cmp	r4, r1	@ samples, n
	str	r3, [r0, #4]	@ sum,
	mov	r3, #8	@ ivtmp.762,
	beq	.L296	@,
.L249:
	ldr	r6, [r0, r3]	@ tmp419,* ivtmp.762
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  ip, r6, r2	@ ret, tmp419, temp.832
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r6, ip, ip	@ sum, ret, ret
@ 0 "" 2
	add	ip, r3, #4	@ tmp387, ivtmp.762,
	str	r6, [r0, r3]	@ sum,* ivtmp.762
	add	r1, r1, #1	@ tmp386, n,
	ldr	r3, [r0, ip]	@ tmp424,
#APP
@ 645 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	smulwb  r3, r3, r2	@ ret, tmp424, temp.832
@ 0 "" 2
@ 646 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd    r3, r3, r3	@ sum, ret, ret
@ 0 "" 2
	add	r1, r1, #1	@ n, tmp386,
	str	r3, [r0, ip]	@ sum,
	cmp	r4, r1	@ samples, n
	add	r3, ip, #4	@ ivtmp.762, tmp387,
	bne	.L249	@,
	b	.L296	@
.L325:
	sxth	r3, r3	@ D.17074, D.17074
	cmp	r0, #8388608	@ realVolL,
	mov	r2, r3	@ D.17074, D.17074
	mov	r3, r2, asr #31	@ D.17074
	mul	sl, r8, r3	@ tmp513, realVolL, D.17074
	mla	sl, r2, r9, sl	@ tmp514, D.17074, realVolL, tmp513
	umull	r2, r3, r8, r2	@ tmp515, realVolL, D.17074
	add	r3, sl, r3	@, tmp514,
	mov	sl, r2, lsr #23	@ tmp518, tmp515,
	orr	r3, sl, r3, asl #9	@, var, tmp518,,
	bls	.L365	@,
	mov	r2, r3, asr #31	@ sign, var,
	cmp	r2, r3, asr #15	@ sign, var,
	eorne	r3, r2, ip	@ var, sign, tmp358
.L365:
	uxth	r3, r3	@ D.17067, var
	b	.L367	@
.L338:
	mov	r3, r2, asr #31	@ data
	cmp	r0, #8388608	@ realVolL,
	mul	sl, r6, r3	@ tmp558, D.17124, data
	mla	sl, r2, r7, sl	@ tmp559, data, D.17124, tmp558
	umull	r2, r3, r6, r2	@ tmp560, D.17124, data
	add	r3, sl, r3	@, tmp559,
	mov	sl, r2, lsr #23	@ tmp563, tmp560,
	orr	r2, sl, r3, asl #9	@, tmp564, tmp563,,
	mov	r3, r2	@ var.850, tmp564
	bls	.L339	@,
	mov	r2, r2, asr #8	@ tmp566, tmp564,
	mov	r3, r2, asr #31	@ tmp567
	mul	sl, r2, r7	@ tmp569, tmp567, D.17124
	mla	sl, r6, r3, sl	@ tmp570, D.17124,, tmp569
	umull	r2, r3, r2, r6	@ tmp571, tmp567, D.17124
	add	r3, sl, r3	@, tmp570,
	mov	sl, r2, lsr #23	@ D.17126, tmp571,
	orr	r3, sl, r3, asl #9	@, var, D.17126,,
	mov	r2, r3, asr #31	@ sign, var,
	cmp	r2, r3, asr #23	@ sign, var,
	eorne	r3, r2, ip	@ var, sign, tmp366
	mov	r3, r3, asl #8	@ var.850, var,
	b	.L339	@
	.fnend
	.size	UTIL_LRGainProcess, .-UTIL_LRGainProcess
	.align	2
	.global	UTIL_MixerPro
	.type	UTIL_MixerPro, %function
UTIL_MixerPro:
	.fnstart
.LFB1077:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ samples
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	beq	.L396	@,
	cmp	r3, #16	@ uBitDepth,
	beq	.L414	@,
	cmp	r3, #24	@ uBitDepth,
	beq	.L415	@,
.L396:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L414:
	ldrsh	r5, [r1, #0]	@ tmp144,* pInBuf
	movw	r7, #32767	@ tmp150,
	ldrsh	r3, [r0, #0]	@ tmp145,* pMixBuf
	sub	r4, r2, #1	@ tmp151, samples,
	and	r4, r4, #1	@ tmp153, tmp151,
	add	r3, r5, r3	@ x, tmp144, tmp145
	mov	r5, #1	@ i,
	mov	ip, r3, asr #31	@ sign, x,
	cmp	ip, r3, asr #15	@ sign, x,
	eorne	r3, ip, r7	@ x, sign, tmp150
	cmp	r2, r5	@ samples, i
	strh	r3, [r0, #0]	@ movhi	@ x,* pMixBuf
	mov	r3, #2	@ ivtmp.890,
	bls	.L396	@,
	cmp	r4, #0	@ tmp153,
	beq	.L394	@,
	ldrsh	r4, [r1, r3]	@ tmp186,* ivtmp.890
	add	r5, r5, #1	@ i, i,
	ldrsh	ip, [r0, r3]	@ tmp187,* ivtmp.890
	add	ip, r4, ip	@ x, tmp186, tmp187
	mov	r4, ip, asr #31	@ sign, x,
	cmp	r4, ip, asr #15	@ sign, x,
	eorne	ip, r4, r7	@ x, sign, tmp150
	cmp	r2, r5	@ samples, i
	strh	ip, [r0, r3]	@ movhi	@ x,* ivtmp.890
	add	r3, r3, #2	@ ivtmp.890, ivtmp.890,
	bls	.L396	@,
.L394:
	ldrsh	r6, [r1, r3]	@ tmp162,* ivtmp.890
	add	ip, r3, #2	@ tmp155, ivtmp.890,
	ldrsh	r4, [r0, r3]	@ tmp163,* ivtmp.890
	add	r5, r5, #1	@ tmp154, i,
	add	r5, r5, #1	@ i, tmp154,
	add	r4, r6, r4	@ x, tmp162, tmp163
	mov	r6, r4, asr #31	@ sign, x,
	cmp	r6, r4, asr #15	@ sign, x,
	eorne	r4, r6, r7	@ x, sign, tmp150
	strh	r4, [r0, r3]	@ movhi	@ x,* ivtmp.890
	ldrsh	r4, [r1, ip]	@ tmp170,
	ldrsh	r3, [r0, ip]	@ tmp171,
	add	r3, r4, r3	@ x, tmp170, tmp171
	mov	r4, r3, asr #31	@ sign, x,
	cmp	r4, r3, asr #15	@ sign, x,
	eorne	r3, r4, r7	@ x, sign, tmp150
	cmp	r2, r5	@ samples, i
	strh	r3, [r0, ip]	@ movhi	@ x,
	add	r3, ip, #2	@ ivtmp.890, tmp155,
	bhi	.L394	@,
	b	.L396	@
.L415:
	sub	r3, r2, #1	@ tmp156, samples,
	ldr	r4, [r0, #0]	@ tmp148,* pMixBuf
	ldr	ip, [r1, #0]	@ tmp149,* pInBuf
	and	r5, r3, #1	@ tmp158, tmp156,
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r3, r4, ip	@ Lvar1, tmp148, tmp149
@ 0 "" 2
	cmp	r2, #1	@ samples,
	str	r3, [r0, #0]	@ Lvar1,* pMixBuf
	mov	r4, #1	@ i.907,
	mov	r3, #4	@ ivtmp.902,
	bls	.L396	@,
	cmp	r5, #0	@ tmp158,
	beq	.L395	@,
	ldr	r4, [r0, #4]	@ tmp193,
	ldr	ip, [r1, #4]	@ tmp194,
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r3, r4, ip	@ Lvar1, tmp193, tmp194
@ 0 "" 2
	mov	r4, #2	@ i.907,
	cmp	r2, r4	@ samples, i.907
	str	r3, [r0, #4]	@ Lvar1,
	mov	r3, #8	@ ivtmp.902,
	bls	.L396	@,
.L395:
	ldr	ip, [r0, r3]	@ tmp177,* ivtmp.902
	ldr	r5, [r1, r3]	@ tmp178,* ivtmp.902
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r5, ip, r5	@ Lvar1, tmp177, tmp178
@ 0 "" 2
	add	ip, r3, #4	@ tmp159, ivtmp.902,
	str	r5, [r0, r3]	@ Lvar1,* ivtmp.902
	add	r4, r4, #1	@ tmp160, i.907,
	ldr	r3, [r0, ip]	@ tmp182,
	ldr	r5, [r1, ip]	@ tmp183,
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r3, r3, r5	@ Lvar1, tmp182, tmp183
@ 0 "" 2
	add	r4, r4, #1	@ i.907, tmp160,
	str	r3, [r0, ip]	@ Lvar1,
	cmp	r2, r4	@ samples, i.907
	add	r3, ip, #4	@ ivtmp.902, tmp159,
	bhi	.L395	@,
	b	.L396	@
	.fnend
	.size	UTIL_MixerPro, .-UTIL_MixerPro
	.align	2
	.global	UTIL_ChannelModeProcess
	.type	UTIL_ChannelModeProcess, %function
UTIL_ChannelModeProcess:
	.fnstart
.LFB1085:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r3, [r0, #20]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	ip, [r0, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	sub	r1, r1, #1	@ tmp189, u32ChannelMode,
	mul	r3, ip, r3	@ D.16222, <variable>.u32SamplesPerFrame, <variable>.u32Channels
	cmp	r1, #6	@ tmp189,
	ldrls	pc, [pc, r1, asl #2]	@ tmp189
	b	.L448	@
.L425:
	.word	.L418
	.word	.L419
	.word	.L420
	.word	.L421
	.word	.L422
	.word	.L423
	.word	.L424
.L418:
	cmp	r3, #0	@ D.16222,
	ldr	r1, [r0, #0]	@ D.16223, <variable>.pDataBuf
	beq	.L448	@,
	cmp	r2, #16	@ dstBitDepth,
	beq	.L535	@,
	cmp	r2, #24	@ dstBitDepth,
	beq	.L536	@,
.L448:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L424:
	cmp	r3, #0	@ D.16222,
	ldr	r1, [r0, #0]	@ temp.1037, <variable>.pDataBuf
	beq	.L448	@,
	cmp	r2, #16	@ dstBitDepth,
	beq	.L537	@,
	cmp	r2, #24	@ dstBitDepth,
	bne	.L448	@,
	cmp	r3, #1	@ D.16222,
	sub	r2, r3, #1	@ tmp284, D.16222,
	and	r0, r2, #1	@ tmp286, tmp284,
	mov	ip, #0	@ tmp221,
	mov	r2, #1	@ i.1044,
	str	ip, [r1, #0]	@ tmp221,* temp.1037
	bls	.L448	@,
	cmp	r0, #0	@ tmp286,
	beq	.L447	@,
	mov	r2, #2	@ i.1044,
	cmp	r3, r2	@ D.16222, i.1044
	str	ip, [r1, #4]	@ tmp221,
	bls	.L448	@,
.L447:
	add	r0, r2, #1	@ tmp287, i.1044,
	str	ip, [r1, r2, asl #2]	@ tmp221,* temp.1037
	add	r2, r0, #1	@ i.1044, tmp287,
	cmp	r3, r2	@ D.16222, i.1044
	str	ip, [r1, r0, asl #2]	@ tmp221,* temp.1037
	bhi	.L447	@,
	b	.L448	@
.L419:
	cmp	r3, #0	@ D.16222,
	ldr	ip, [r0, #0]	@ temp.1032, <variable>.pDataBuf
	beq	.L448	@,
	cmp	r2, #16	@ dstBitDepth,
	beq	.L538	@,
	cmp	r2, #24	@ dstBitDepth,
	bne	.L448	@,
	movs	r3, r3, lsr #1	@ temp.1046, D.16222,
	beq	.L448	@,
	ldr	r2, [ip, #0]	@ tmp198,* temp.1032
	mov	r0, #1	@ i.1039,
	cmp	r0, r3	@ i.1039, temp.1046
	sub	r1, r3, #1	@ tmp237, temp.1046,
	and	r4, r1, r0	@ tmp239, tmp237,
	add	r1, ip, #8	@ ps32In, temp.1032,
	str	r2, [ip, #4]	@ tmp198,
	bcs	.L448	@,
	cmp	r4, #0	@ tmp239,
	beq	.L432	@,
	ldr	r2, [r1, #0]	@ tmp388,* ps32In
	mov	r0, #2	@ i.1039,
	cmp	r0, r3	@ i.1039, temp.1046
	str	r2, [r1, #4]	@ tmp388,
	add	r1, r1, #8	@ ps32In, ps32In,
	bcs	.L448	@,
.L432:
	ldr	r4, [r1, #0]	@ tmp313,* ps32In
	add	r0, r0, #2	@ i.1039, i.1039,
	ldr	ip, [r1, #8]	@ tmp316,
	add	r2, r1, #8	@ tmp240, ps32In,
	cmp	r0, r3	@ i.1039, temp.1046
	str	r4, [r1, #4]	@ tmp313,
	add	r1, r2, #8	@ ps32In, tmp240,
	str	ip, [r2, #4]	@ tmp316,
	bcc	.L432	@,
	b	.L448	@
.L420:
	cmp	r3, #0	@ D.16222,
	ldr	r1, [r0, #0]	@ temp.1033, <variable>.pDataBuf
	beq	.L448	@,
	cmp	r2, #16	@ dstBitDepth,
	beq	.L539	@,
	cmp	r2, #24	@ dstBitDepth,
	bne	.L448	@,
	movs	r3, r3, lsr #1	@ temp.1047, D.16222,
	beq	.L448	@,
	ldr	ip, [r1, #4]	@ tmp201,
	mov	r0, #1	@ i.1040,
	cmp	r0, r3	@ i.1040, temp.1047
	mov	r2, r1	@ ps32In, temp.1033
	sub	r1, r3, #1	@ tmp247, temp.1047,
	str	ip, [r2], #8	@ tmp201,
	and	r1, r1, r0	@ tmp249, tmp247,
	bcs	.L448	@,
	cmp	r1, #0	@ tmp249,
	beq	.L435	@,
	ldr	r1, [r2, #4]	@ tmp390,
	mov	r0, #2	@ i.1040,
	cmp	r0, r3	@ i.1040, temp.1047
	str	r1, [r2], #8	@ tmp390,
	bcs	.L448	@,
.L435:
	ldr	ip, [r2, #4]	@ tmp325,
	mov	r1, r2	@ tmp250, ps32In
	add	r0, r0, #2	@ i.1040, i.1040,
	cmp	r0, r3	@ i.1040, temp.1047
	str	ip, [r1], #8	@ tmp325,
	ldr	ip, [r1, #4]	@ tmp328,
	str	ip, [r2, #8]	@ tmp328,
	add	r2, r1, #8	@ ps32In, tmp250,
	bcc	.L435	@,
	b	.L448	@
.L421:
	cmp	r3, #0	@ D.16222,
	ldr	ip, [r0, #0]	@ temp.1034, <variable>.pDataBuf
	beq	.L448	@,
	cmp	r2, #16	@ dstBitDepth,
	beq	.L540	@,
	cmp	r2, #24	@ dstBitDepth,
	bne	.L448	@,
	movs	r3, r3, lsr #1	@ temp.1048, D.16222,
	beq	.L448	@,
	ldr	r5, [ip, #0]	@ data,* temp.1034
	mov	r0, #1	@ i.1041,
	ldr	r2, [ip, #4]	@ tmp204,
	cmp	r0, r3	@ i.1041, temp.1048
	sub	r4, r3, #1	@ tmp257, temp.1048,
	add	r1, ip, #8	@ ps32In, temp.1034,
	str	r5, [ip, #4]	@ data,
	and	r4, r4, r0	@ tmp259, tmp257,
	str	r2, [ip, #0]	@ tmp204,* temp.1034
	bcs	.L448	@,
	cmp	r4, #0	@ tmp259,
	beq	.L438	@,
	ldr	ip, [r1, #0]	@ data,* ps32In
	mov	r0, #2	@ i.1041,
	ldr	r2, [r1, #4]	@ tmp394,
	cmp	r0, r3	@ i.1041, temp.1048
	stmia	r1, {r2, ip}	@ phole stm
	add	r1, r1, #8	@ ps32In, ps32In,
	bcs	.L448	@,
.L438:
	ldr	r4, [r1, #4]	@ tmp340,
	add	r2, r1, #8	@ tmp260, ps32In,
	ldr	r5, [r1, #0]	@ data,* ps32In
	add	r0, r0, #2	@ i.1041, i.1041,
	ldr	ip, [r1, #8]	@ data,
	cmp	r0, r3	@ i.1041, temp.1048
	stmia	r1, {r4, r5}	@ phole stm
	ldr	r4, [r2, #4]	@ tmp344,
	str	r4, [r1, #8]	@ tmp344,
	add	r1, r2, #8	@ ps32In, tmp260,
	str	ip, [r2, #4]	@ data,
	bcc	.L438	@,
	b	.L448	@
.L422:
	cmp	r3, #0	@ D.16222,
	ldr	r1, [r0, #0]	@ temp.1035, <variable>.pDataBuf
	beq	.L448	@,
	cmp	r2, #16	@ dstBitDepth,
	beq	.L541	@,
	cmp	r2, #24	@ dstBitDepth,
	bne	.L448	@,
	movs	r3, r3, lsr #1	@ temp.1049, D.16222,
	beq	.L448	@,
	mov	r2, #1	@ i.1042,
	cmp	r2, r3	@ i.1042, temp.1049
	sub	r0, r3, #1	@ tmp266, temp.1049,
	mov	ip, #0	@ tmp219,
	and	r0, r0, r2	@ tmp268, tmp266,
	str	ip, [r1, #0]	@ tmp219,* temp.1035
	bcs	.L448	@,
	cmp	r0, #0	@ tmp268,
	beq	.L441	@,
	mov	r2, #2	@ i.1042,
	cmp	r2, r3	@ i.1042, temp.1049
	str	ip, [r1, #8]	@ tmp219,
	bcs	.L448	@,
.L441:
	add	r0, r2, #1	@ tmp269, i.1042,
	str	ip, [r1, r2, asl #3]	@ tmp219,* temp.1035
	add	r2, r0, #1	@ i.1042, tmp269,
	cmp	r2, r3	@ i.1042, temp.1049
	str	ip, [r1, r0, asl #3]	@ tmp219,* temp.1035
	bcc	.L441	@,
	b	.L448	@
.L423:
	cmp	r3, #0	@ D.16222,
	ldr	r1, [r0, #0]	@ temp.1036, <variable>.pDataBuf
	beq	.L448	@,
	cmp	r2, #16	@ dstBitDepth,
	beq	.L542	@,
	cmp	r2, #24	@ dstBitDepth,
	bne	.L448	@,
	movs	r3, r3, lsr #1	@ temp.1050, D.16222,
	beq	.L448	@,
	mov	r2, #1	@ i.1043,
	cmp	r2, r3	@ i.1043, temp.1050
	sub	ip, r3, #1	@ tmp275, temp.1050,
	add	r0, r1, #8	@ ps32In, temp.1036,
	and	r4, ip, r2	@ tmp277, tmp275,
	mov	ip, #0	@ tmp220,
	str	ip, [r1, #4]	@ tmp220,
	bcs	.L448	@,
	cmp	r4, #0	@ tmp277,
	beq	.L444	@,
	mov	r2, #2	@ i.1043,
	cmp	r2, r3	@ i.1043, temp.1050
	str	ip, [r0, #4]	@ tmp220,
	add	r0, r0, #8	@ ps32In, ps32In,
	bcs	.L448	@,
.L444:
	add	r2, r2, #2	@ i.1043, i.1043,
	add	r1, r0, #8	@ tmp278, ps32In,
	cmp	r2, r3	@ i.1043, temp.1050
	str	ip, [r0, #4]	@ tmp220,
	str	ip, [r1, #4]	@ tmp220,
	add	r0, r1, #8	@ ps32In, tmp278,
	bcc	.L444	@,
	b	.L448	@
.L536:
	movs	r3, r3, lsr #1	@ temp.1045, D.16222,
	beq	.L448	@,
	sub	ip, r3, #1	@ tmp227, temp.1045,
	ldr	r2, [r1, #0]	@ tmp194,* D.16223
	ldr	r0, [r1, #4]	@ tmp195,
	and	r4, ip, #1	@ tmp229, tmp227,
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd ip, r2, r0	@ mix, tmp194, tmp195
@ 0 "" 2
	mov	r0, #1	@ i.1038,
	cmp	r0, r3	@ i.1038, temp.1045
	str	ip, [r1, #4]	@ mix,
	add	r2, r1, #8	@ ps32In, D.16223,
	str	ip, [r1, #0]	@ mix,* D.16223
	bcs	.L448	@,
	cmp	r4, #0	@ tmp229,
	beq	.L429	@,
	ldr	r1, [r2, #0]	@ tmp384,* ps32In
	ldr	r0, [r2, #4]	@ tmp385,
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd ip, r1, r0	@ mix, tmp384, tmp385
@ 0 "" 2
	mov	r0, #2	@ i.1038,
	cmp	r0, r3	@ i.1038, temp.1045
	str	ip, [r2, #4]	@ mix,
	str	ip, [r2, #0]	@ mix,* ps32In
	add	r2, r2, #8	@ ps32In, ps32In,
	bcs	.L448	@,
.L429:
	ldmia	r2, {r1, ip}	@ phole ldm
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd r4, r1, ip	@ mix, tmp297, tmp298
@ 0 "" 2
	add	r1, r2, #8	@ tmp230, ps32In,
	str	r4, [r2, #4]	@ mix,
	str	r4, [r2, #0]	@ mix,* ps32In
	add	r0, r0, #1	@ tmp231, i.1038,
	ldr	ip, [r2, #8]	@ tmp302,
	ldr	r4, [r1, #4]	@ tmp303,
#APP
@ 695 "./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include/hi_dsp_basicop.h" 1
	qadd ip, ip, r4	@ mix, tmp302, tmp303
@ 0 "" 2
	add	r0, r0, #1	@ i.1038, tmp231,
	str	ip, [r2, #8]	@ mix,
	cmp	r0, r3	@ i.1038, temp.1045
	str	ip, [r1, #4]	@ mix,
	add	r2, r1, #8	@ ps32In, tmp230,
	bcc	.L429	@,
	b	.L448	@
.L537:
	cmp	r3, #1	@ D.16222,
	sub	ip, r3, #1	@ tmp280, D.16222,
	mov	r2, #0	@ movhi	@,
	and	r0, ip, #1	@ tmp282, tmp280,
	strh	r2, [r1, #0]	@ movhi	@,* temp.1037
	mov	r2, #1	@ i,
	bls	.L448	@,
	cmp	r0, #0	@ tmp282,
	beq	.L446	@,
	mov	ip, #2	@ tmp399,
	cmp	r3, ip	@ D.16222, i
	mov	r5, #0	@ movhi	@,
	mov	r2, ip	@ i, tmp399
	strh	r5, [r1, ip]	@ movhi	@,
	bls	.L448	@,
.L446:
	add	r4, r2, #1	@ tmp283, i,
	mov	ip, r2, asl #1	@ tmp366, i,
	add	r2, r4, #1	@ i, tmp283,
	mov	r0, r4, asl #1	@ tmp368, tmp283,
	cmp	r3, r2	@ D.16222, i
	mov	r4, #0	@ movhi	@,
	strh	r4, [r1, ip]	@ movhi	@,
	strh	r4, [r1, r0]	@ movhi	@,
	bhi	.L446	@,
	b	.L448	@
.L538:
	movs	r3, r3, lsr #1	@ D.17183, D.16222,
	beq	.L448	@,
	ldrh	r2, [ip, #0]	@,* temp.1032
	cmp	r3, #1	@ D.17183,
	sub	r1, r3, #1	@ tmp232, D.17183,
	and	r0, r1, #1	@ tmp234, tmp232,
	mov	r1, #1	@ i,
	strh	r2, [ip, #2]	@ movhi	@,
	add	r2, ip, #4	@ ps16In, temp.1032,
	bls	.L448	@,
	cmp	r0, #0	@ tmp234,
	beq	.L431	@,
	ldrh	r5, [r2, #0]	@,* ps16In
	mov	r1, #2	@ i,
	cmp	r3, r1	@ D.17183, i
	strh	r5, [r2, #2]	@ movhi	@,
	add	r2, r2, #4	@ ps16In, ps16In,
	bls	.L448	@,
.L431:
	ldrh	r4, [r2, #0]	@,* ps16In
	add	r1, r1, #2	@ i, i,
	ldrh	ip, [r2, #4]	@,
	add	r0, r2, #4	@ tmp235, ps16In,
	cmp	r3, r1	@ D.17183, i
	strh	r4, [r2, #2]	@ movhi	@,
	add	r2, r0, #4	@ ps16In, tmp235,
	strh	ip, [r0, #2]	@ movhi	@,
	bhi	.L431	@,
	b	.L448	@
.L535:
	movs	r5, r3, lsr #1	@ D.17171, D.16222,
	beq	.L448	@,
	tst	r5, #1	@ D.17171,
	mov	r2, r1	@ ps16In, D.16223
	mov	ip, #0	@ i,
	movw	r4, #32767	@ tmp218,
	bne	.L428	@,
	ldrsh	r3, [r1, #2]	@ tmp375,
	ldrsh	r0, [r1, #0]	@ tmp376,* D.16223
	add	ip, r3, r0	@ x, tmp375, tmp376
	mov	r2, ip, asr #31	@ sign, x,
	cmp	r2, ip, asr #15	@ sign, x,
	eorne	ip, r2, r4	@ x, sign, tmp218
	add	r2, r1, #4	@ ps16In, D.16223,
	uxth	r3, ip	@ mix, x
	mov	ip, #1	@ i,
	strh	r3, [r1, #2]	@ movhi	@ mix,
	strh	r3, [r1, #0]	@ movhi	@ mix,* D.16223
	b	.L428	@
.L543:
	ldrsh	r3, [r2, #4]	@ tmp291,
	add	ip, ip, #1	@ i, tmp225,
	ldrsh	r1, [r0, #2]	@ tmp290,
	add	r1, r1, r3	@ x, tmp290, tmp291
	mov	r2, r1, asr #31	@ sign, x,
	cmp	r2, r1, asr #15	@ sign, x,
	eorne	r1, r2, r4	@ x, sign, tmp218
	add	r2, r0, #4	@ ps16In, tmp226,
	uxth	r1, r1	@ mix, x
	strh	r1, [r0, #2]	@ movhi	@ mix,
	strh	r1, [r0, #0]	@ movhi	@ mix,
.L428:
	ldrsh	r3, [r2, #0]	@ tmp191,* ps16In
	add	ip, ip, #1	@ tmp225, i,
	ldrsh	r1, [r2, #2]	@ tmp190,
	add	r0, r2, #4	@ tmp226, ps16In,
	add	r1, r1, r3	@ x, tmp190, tmp191
	mov	r3, r1, asr #31	@ sign, x,
	cmp	r3, r1, asr #15	@ sign, x,
	eorne	r1, r3, r4	@ x, sign, tmp218
	cmp	r5, ip	@ D.17171, tmp225
	uxth	r1, r1	@ mix, x
	strh	r1, [r2, #2]	@ movhi	@ mix,
	strh	r1, [r2, #0]	@ movhi	@ mix,* ps16In
	bhi	.L543	@,
	b	.L448	@
.L542:
	movs	r3, r3, lsr #1	@ D.17224, D.16222,
	beq	.L448	@,
	mov	r2, #1	@ i,
	cmp	r2, r3	@ i, D.17224
	sub	ip, r3, #1	@ tmp270, D.17224,
	mov	r5, #0	@ movhi	@,
	and	r0, ip, r2	@ tmp272, tmp270,
	strh	r5, [r1, #2]	@ movhi	@,
	add	r1, r1, #4	@ ps16In, temp.1036,
	bcs	.L448	@,
	cmp	r0, #0	@ tmp272,
	beq	.L443	@,
	mov	r2, #2	@ i,
	cmp	r2, r3	@ i, D.17224
	mov	r4, #0	@ movhi	@,
	strh	r4, [r1, #2]	@ movhi	@,
	add	r1, r1, #4	@ ps16In, ps16In,
	bcs	.L448	@,
.L443:
	add	r2, r2, #2	@ i, i,
	add	r0, r1, #4	@ tmp274, ps16In,
	cmp	r2, r3	@ i, D.17224
	mov	ip, #0	@ movhi	@,
	strh	ip, [r1, #2]	@ movhi	@,
	add	r1, r0, #4	@ ps16In, tmp274,
	strh	ip, [r0, #2]	@ movhi	@,
	bcc	.L443	@,
	b	.L448	@
.L541:
	movs	r3, r3, lsr #1	@ D.17216, D.16222,
	beq	.L448	@,
	mov	r2, #1	@ i,
	cmp	r2, r3	@ i, D.17216
	sub	r0, r3, #1	@ tmp262, D.17216,
	mov	r5, #0	@ movhi	@,
	and	r0, r0, r2	@ tmp264, tmp262,
	strh	r5, [r1, #0]	@ movhi	@,* temp.1035
	bcs	.L448	@,
	cmp	r0, #0	@ tmp264,
	beq	.L440	@,
	mov	r2, #2	@ i,
	cmp	r2, r3	@ i, D.17216
	mov	r0, #0	@ movhi	@,
	strh	r0, [r1, #4]	@ movhi	@,
	bcs	.L448	@,
.L440:
	add	r4, r2, #1	@ tmp265, i,
	mov	ip, r2, asl #2	@ tmp346, i,
	add	r2, r4, #1	@ i, tmp265,
	mov	r0, r4, asl #2	@ tmp348, tmp265,
	cmp	r2, r3	@ i, D.17216
	mov	r4, #0	@ movhi	@,
	strh	r4, [r1, ip]	@ movhi	@,
	strh	r4, [r1, r0]	@ movhi	@,
	bcc	.L440	@,
	b	.L448	@
.L540:
	movs	r3, r3, lsr #1	@ D.17207, D.16222,
	beq	.L448	@,
	ldrh	r2, [ip, #0]	@ data,* temp.1034
	mov	r0, #1	@ i,
	ldrh	r4, [ip, #2]	@,
	cmp	r0, r3	@ i, D.17207
	sub	r1, r3, #1	@ tmp252, D.17207,
	strh	r2, [ip, #2]	@ movhi	@ data,
	and	r1, r1, r0	@ tmp254, tmp252,
	strh	r4, [ip, #0]	@ movhi	@,* temp.1034
	add	r2, ip, #4	@ ps16In, temp.1034,
	bcs	.L448	@,
	cmp	r1, #0	@ tmp254,
	beq	.L437	@,
	ldrh	r1, [r2, #0]	@ data,* ps16In
	mov	r0, #2	@ i,
	ldrh	ip, [r2, #2]	@,
	cmp	r0, r3	@ i, D.17207
	strh	r1, [r2, #2]	@ movhi	@ data,
	strh	ip, [r2, #0]	@ movhi	@,* ps16In
	add	r2, r2, #4	@ ps16In, ps16In,
	bcs	.L448	@,
.L437:
	ldrh	r4, [r2, #0]	@ data,* ps16In
	add	r1, r2, #4	@ tmp255, ps16In,
	ldrh	r5, [r2, #2]	@,
	add	r0, r0, #2	@ i, i,
	ldrh	ip, [r2, #4]	@ data,
	cmp	r0, r3	@ i, D.17207
	strh	r4, [r2, #2]	@ movhi	@ data,
	strh	r5, [r2, #0]	@ movhi	@,* ps16In
	ldrh	r4, [r1, #2]	@,
	strh	r4, [r2, #4]	@ movhi	@,
	add	r2, r1, #4	@ ps16In, tmp255,
	strh	ip, [r1, #2]	@ movhi	@ data,
	bcc	.L437	@,
	b	.L448	@
.L539:
	movs	r3, r3, lsr #1	@ D.17194, D.16222,
	beq	.L448	@,
	mov	r2, r1	@ ps16In, temp.1033
	ldrh	r1, [r1, #2]	@,
	mov	r0, #1	@ i,
	cmp	r0, r3	@ i, D.17194
	sub	ip, r3, #1	@ tmp242, D.17194,
	strh	r1, [r2], #4	@ movhi	@,
	and	ip, ip, r0	@ tmp244, tmp242,
	bcs	.L448	@,
	cmp	ip, #0	@ tmp244,
	beq	.L434	@,
	ldrh	ip, [r2, #2]	@ tmp389,
	mov	r0, #2	@ i,
	cmp	r0, r3	@ i, D.17194
	strh	ip, [r2], #4	@ movhi	@ tmp389,
	bcs	.L448	@,
.L434:
	ldrh	r5, [r2, #2]	@,
	mov	r1, r2	@ tmp245, ps16In
	add	r0, r0, #2	@ i, i,
	cmp	r0, r3	@ i, D.17194
	strh	r5, [r1], #4	@ movhi	@,
	ldrh	ip, [r1, #2]	@,
	strh	ip, [r2, #4]	@ movhi	@,
	add	r2, r1, #4	@ ps16In, tmp245,
	bcc	.L434	@,
	b	.L448	@
	.fnend
	.size	UTIL_ChannelModeProcess, .-UTIL_ChannelModeProcess
	.align	2
	.global	FADE_Active
	.type	FADE_Active, %function
FADE_Active:
	.fnstart
.LFB1090:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ hFade
	bxeq	lr	@
	cmp	r2, #0	@ u32FadeMs,
	str	r2, [r0, #12]	@ u32FadeMs, <variable>.u32FadeMs
	mov	r3, #0	@ tmp137,
	str	r3, [r0, #20]	@ tmp137, <variable>.u32FadeCnt
	ldrne	ip, [r0, #8]	@ <variable>.u32InRate, <variable>.u32InRate
	movwne	r3, #:lower16:-819967583	@ tmp143,
	movtne	r3, #:upper16:-819967583	@ tmp143,
	streq	r2, [r0, #24]	@ u32FadeMs, <variable>.u32FadeStep
	str	r1, [r0, #32]	@ enUserFadeStauts, <variable>.enCurnFadeStauts
	mulne	r2, ip, r2	@ tmp139, <variable>.u32InRate, u32FadeMs
	umullne	ip, r3, r3, r2	@, tmp142, tmp143, tmp139
	movne	r3, r3, lsr #16	@ tmp141, tmp142,
	addne	r3, r3, #1	@ tmp144, tmp141,
	strne	r3, [r0, #24]	@ tmp144, <variable>.u32FadeStep
	cmp	r1, #1	@ enUserFadeStauts,
	beq	.L550	@,
	cmp	r1, #2	@ enUserFadeStauts,
	moveq	r3, #18	@ tmp147,
	streq	r3, [r0, #16]	@ tmp147, <variable>.u32FadeCurnCoefIdx
	bx	lr	@
.L550:
	mov	r1, #99	@ tmp145,
	mov	r3, #0	@ tmp146,
	str	r1, [r0, #16]	@ tmp145, <variable>.u32FadeCurnCoefIdx
	str	r3, [r0, #28]	@ tmp146, <variable>.bStartFade
	bx	lr	@
	.fnend
	.size	FADE_Active, .-FADE_Active
	.align	2
	.global	FADE_Flush
	.type	FADE_Flush, %function
FADE_Flush:
	.fnstart
.LFB1088:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	movw	ip, #:lower16:191999	@ tmp142,
	sub	r4, r1, #1	@ tmp141, inRate,
	movt	ip, #:upper16:191999	@ tmp142,
	cmp	r4, ip	@ tmp141, tmp142
	mov	ip, r0	@ hFade, hFade
	bhi	.L556	@,
	cmp	r2, #24	@ BitPerSample,
	cmpne	r2, #16	@, BitPerSample,
	bne	.L556	@,
	sub	r0, r3, #1	@ tmp150, Channels,
	cmp	r3, #8	@ Channels,
	cmpne	r0, #1	@, tmp150,
	bhi	.L556	@,
	cmp	ip, #0	@ hFade,
	beq	.L556	@,
	ldr	r0, [ip, #4]	@ <variable>.u32Channels, <variable>.u32Channels
	ldr	r4, [ip, #0]	@ D.16318, <variable>.u32BitPerSample
	cmp	r3, r0	@ Channels, <variable>.u32Channels
	movne	r4, #1	@ isChange,
	beq	.L557	@,
.L554:
	ldr	r0, [ip, #8]	@ <variable>.u32InRate, <variable>.u32InRate
	cmp	r0, r1	@ <variable>.u32InRate, inRate
	beq	.L558	@,
.L555:
	str	r2, [ip, #0]	@ BitPerSample, <variable>.u32BitPerSample
	mov	r0, ip	@, hFade
	str	r1, [ip, #8]	@ inRate, <variable>.u32InRate
	str	r3, [ip, #4]	@ Channels, <variable>.u32Channels
	ldr	r1, [ip, #32]	@, <variable>.enCurnFadeStauts
	ldr	r2, [ip, #12]	@, <variable>.u32FadeMs
	ldmfd	sp!, {r4}
	b	FADE_Active	@
.L558:
	cmp	r4, #0	@ isChange,
	bne	.L555	@,
.L556:
	ldmfd	sp!, {r4}
	bx	lr
.L557:
	subs	r4, r2, r4	@ isChange, BitPerSample, D.16318
	movne	r4, #1	@ isChange
	b	.L554	@
	.fnend
	.size	FADE_Flush, .-FADE_Flush
	.align	2
	.global	FADE_InProcess
	.type	FADE_InProcess, %function
FADE_InProcess:
	.fnstart
.LFB1091:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ hFade
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	.pad #16
	sub	sp, sp, #16	@,,
	beq	.L586	@,
	ldr	r3, [r0, #32]	@ <variable>.enCurnFadeStauts, <variable>.enCurnFadeStauts
	cmp	r3, #0	@ <variable>.enCurnFadeStauts,
	beq	.L586	@,
	cmp	r2, #0	@ samples,
	ldr	r7, [r0, #4]	@ ivtmp.1136, <variable>.u32Channels
	beq	.L586	@,
	sub	ip, r2, #1	@ ivtmp.1157, samples,
	movw	r4, #:lower16:8388607	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r4, #:upper16:8388607	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r4, [sp, #0]	@, %sfp
	mov	r5, r7, asl #2	@, ivtmp.1136,
	mov	r4, r7, asl #1	@, ivtmp.1136,
	str	r2, [sp, #4]	@, %sfp
	str	r4, [sp, #12]	@, %sfp
	str	r5, [sp, #8]	@, %sfp
.L585:
	ldr	r3, [r0, #28]	@ <variable>.bStartFade, <variable>.bStartFade
	cmp	r3, #0	@ <variable>.bStartFade,
	ldrne	r2, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	beq	.L664	@,
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	ldr	sl, [sp, #4]	@, %sfp
	ldr	r3, [sl, r3, asl #2]	@ Volume, g_u32VolCoef
	beq	.L569	@,
.L671:
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	beq	.L665	@,
.L568:
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	ldr	r2, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r3, r3, #1	@ D.16393, <variable>.u32FadeCnt,
	str	r3, [r0, #20]	@ D.16393, <variable>.u32FadeCnt
	cmp	r3, r2	@ D.16393, <variable>.u32FadeStep
	beq	.L666	@,
.L572:
	cmp	ip, #0	@ ivtmp.1157,
	sub	ip, ip, #1	@ ivtmp.1165, ivtmp.1157,
	bne	.L585	@,
.L586:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L665:
	cmp	r7, #0	@ ivtmp.1136,
	beq	.L580	@,
	cmp	r3, #0	@ Volume,
	sub	r6, r7, #1	@ tmp229, ivtmp.1136,
	and	r6, r6, #1	@ tmp230, tmp229,
	mov	r4, r3	@ D.17275, Volume
	mov	r5, r4, asr #31	@ D.17275
	ldr	r8, [r1, #0]	@ data,* pInBuf
	bne	.L604	@,
	mov	sl, r3	@ var.1164, Volume
.L605:
	subs	r8, r7, #1	@ ivtmp.1163, ivtmp.1136,
	str	sl, [r1, #0]	@ var.1164,* pInBuf
	mov	r2, #4	@ ivtmp.1142,
	beq	.L580	@,
	cmp	r6, #0	@ tmp230,
	beq	.L584	@,
	cmp	r3, #0	@ Volume,
	ldr	sl, [r1, r2]	@ data,* ivtmp.1142
	moveq	sl, r3	@ var.1164, Volume
	beq	.L609	@,
	mov	fp, sl, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r6, r4, fp	@ tmp332, D.17275, data
	mla	r6, sl, r5, r6	@ tmp333, data, D.17275, tmp332
	umull	sl, fp, r4, sl	@ tmp334, D.17275, data
	add	fp, r6, fp	@, tmp333,
	mov	r6, sl, lsr #23	@ tmp337, tmp334,
	orr	r6, r6, fp, asl #9	@, tmp338, tmp337,,
	mov	sl, r6	@ var.1164, tmp338
	bls	.L609	@,
	mov	r6, r6, asr #8	@ tmp340, tmp338,
	mov	sl, r6	@ tmp341, tmp340
	mov	fp, sl, asr #31	@ tmp341
	mul	r6, sl, r5	@ tmp343, tmp341, D.17275
	mla	r6, r4, fp, r6	@ tmp344, D.17275,, tmp343
	umull	sl, fp, sl, r4	@ tmp345, tmp341, D.17275
	add	fp, r6, fp	@, tmp344,
	mov	r6, sl, lsr #23	@ D.17277, tmp345,
	orr	r6, r6, fp, asl #9	@, var, D.17277,,
	mov	sl, r6, asr #31	@ sign, var,
	cmp	sl, r6, asr #23	@ sign, var,
	ldrne	r9, [sp, #0]	@, %sfp
	eorne	r6, sl, r9	@ var, sign,
.L610:
	mov	sl, r6, asl #8	@ var.1164, var,
.L609:
	subs	r8, r8, #1	@ ivtmp.1163, ivtmp.1163,
	str	sl, [r1, r2]	@ var.1164,* ivtmp.1142
	add	r2, r2, #4	@ ivtmp.1142, ivtmp.1142,
	bne	.L584	@,
.L580:
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	ldr	r2, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r3, r3, #1	@ D.16393, <variable>.u32FadeCnt,
	ldr	sl, [sp, #8]	@, %sfp
	cmp	r3, r2	@ D.16393, <variable>.u32FadeStep
	str	r3, [r0, #20]	@ D.16393, <variable>.u32FadeCnt
	add	r1, r1, sl	@ pInBuf, pInBuf,
	bne	.L572	@,
.L666:
	ldr	r3, [r0, #32]	@ <variable>.enCurnFadeStauts, <variable>.enCurnFadeStauts
	mov	r2, #0	@,
	str	r2, [r0, #20]	@, <variable>.u32FadeCnt
	cmp	r3, #1	@ <variable>.enCurnFadeStauts,
	bne	.L572	@,
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	sub	r3, r3, #1	@ D.16399, <variable>.u32FadeCurnCoefIdx,
	str	r3, [r0, #16]	@ D.16399, <variable>.u32FadeCurnCoefIdx
	cmp	r3, #18	@ D.16399,
	streq	r2, [r0, #32]	@, <variable>.enCurnFadeStauts
	b	.L572	@
.L664:
	ldr	r4, [r0, #4]	@ D.17235, <variable>.u32Channels
	cmp	r4, #0	@ D.17235,
	beq	.L562	@,
	ldr	r2, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	sub	r3, r4, #1	@ tmp233, D.17235,
	and	r6, r3, #1	@ tmp235, tmp233,
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	beq	.L667	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	beq	.L668	@,
.L618:
	mov	r3, #1	@ i,
	cmp	r3, r4	@ i, D.17235
	bcs	.L567	@,
	cmp	r6, #0	@ tmp235,
	beq	.L566	@,
.L663:
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	beq	.L632	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	beq	.L669	@,
.L625:
	add	r3, r3, #1	@ i, tmp236,
	cmp	r3, r4	@ i, D.17235
	bcs	.L567	@,
.L566:
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	add	r3, r3, #1	@ tmp236, i,
	beq	.L670	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	bne	.L663	@,
	ldr	r6, [r1, #0]	@ tmp166,* pInBuf
	cmp	r6, #0	@ tmp166,
	beq	.L663	@,
.L564:
	mov	r9, #1	@,
	str	r9, [r0, #28]	@, <variable>.bStartFade
.L673:
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	ldr	sl, [sp, #4]	@, %sfp
	ldr	r3, [sl, r3, asl #2]	@ Volume, g_u32VolCoef
	bne	.L671	@,
.L569:
	cmp	r7, #0	@ ivtmp.1136,
	beq	.L574	@,
	cmp	r3, #0	@ Volume,
	sub	r2, r7, #1	@ tmp225, ivtmp.1136,
	and	r4, r2, #1	@ tmp226, tmp225,
	mov	r8, r3	@ Volume, Volume
	mov	r9, r8, asr #31	@ Volume
	ldrh	r2, [r1, #0]	@ D.17261,* pInBuf
	bne	.L591	@,
	mov	r2, r3	@ D.17259, Volume
.L639:
	subs	r6, r7, #1	@ ivtmp.1162, ivtmp.1136,
	strh	r2, [r1, #0]	@ movhi	@ D.17259,* pInBuf
	mov	r2, #2	@ ivtmp.1126,
	beq	.L574	@,
	cmp	r4, #0	@ tmp226,
	beq	.L579	@,
	cmp	r3, #0	@ Volume,
	ldrh	r4, [r1, r2]	@ D.17261,* ivtmp.1126
	moveq	sl, r3	@ D.17259, Volume
	beq	.L643	@,
	sxth	r4, r4	@ D.17261, D.17261
	cmp	r3, #8388608	@ Volume,
	mov	r5, r4, asr #31	@ D.17261
	mul	sl, r8, r5	@ tmp278, Volume, D.17261
	mla	sl, r4, r9, sl	@ tmp279, D.17261, Volume, tmp278
	umull	r4, r5, r8, r4	@ tmp280, Volume, D.17261
	add	r5, sl, r5	@, tmp279,
	mov	sl, r4, lsr #23	@ tmp283, tmp280,
	orr	sl, sl, r5, asl #9	@, var, tmp283,,
	bhi	.L672	@,
.L641:
	uxth	sl, sl	@ D.17259, var
.L643:
	subs	r6, r6, #1	@ ivtmp.1162, ivtmp.1162,
	strh	sl, [r1, r2]	@ movhi	@ D.17259,* ivtmp.1126
	add	r2, r2, #2	@ ivtmp.1126, ivtmp.1126,
	beq	.L574	@,
.L579:
	cmp	r3, #0	@ Volume,
	ldrh	r4, [r1, r2]	@ D.17261,* ivtmp.1126
	moveq	sl, r3	@ D.17259, Volume
	beq	.L576	@,
	sxth	r4, r4	@ D.17261, D.17261
	cmp	r3, #8388608	@ Volume,
	mov	r5, r4, asr #31	@ D.17261
	mul	sl, r8, r5	@ tmp175, Volume, D.17261
	mla	sl, r4, r9, sl	@ tmp241, D.17261, Volume, tmp175
	umull	r4, r5, r8, r4	@ tmp176, Volume, D.17261
	add	r5, sl, r5	@, tmp241,
	mov	sl, r4, lsr #23	@ tmp205, tmp176,
	orr	sl, sl, r5, asl #9	@, var, tmp205,,
	bls	.L578	@,
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	sl, r4, r5	@ var, sign,
.L578:
	uxth	sl, sl	@ D.17259, var
.L576:
	add	r4, r2, #2	@ tmp227, ivtmp.1126,
	cmp	r3, #0	@ Volume,
	strh	sl, [r1, r2]	@ movhi	@ D.17259,* ivtmp.1126
	sub	r6, r6, #1	@ tmp228, ivtmp.1162,
	ldrh	sl, [r1, r4]	@ D.17261,
	bne	.L600	@,
	mov	r2, r3	@ D.17259, Volume
.L646:
	subs	r6, r6, #1	@ ivtmp.1162, tmp228,
	strh	r2, [r1, r4]	@ movhi	@ D.17259,
	add	r2, r4, #2	@ ivtmp.1126, tmp227,
	bne	.L579	@,
.L574:
	ldr	r9, [sp, #12]	@, %sfp
	add	r1, r1, r9	@ pInBuf, pInBuf,
	b	.L568	@
.L632:
	ldrsh	r6, [r1, #0]	@ tmp382,* pInBuf
	cmp	r6, #0	@ tmp382,
	bne	.L564	@,
	add	r3, r3, #1	@ i, tmp236,
	cmp	r3, r4	@ i, D.17235
	bcc	.L566	@,
.L567:
	cmp	r2, #16	@ <variable>.u32BitPerSample,
	beq	.L571	@,
	cmp	r2, #24	@ <variable>.u32BitPerSample,
	ldreq	r3, [sp, #8]	@, %sfp
	addeq	r1, r1, r3	@ pInBuf, pInBuf,
	b	.L572	@
.L669:
	ldr	r6, [r1, #0]	@ tmp381,* pInBuf
	cmp	r6, #0	@ tmp381,
	beq	.L625	@,
	mov	r9, #1	@,
	str	r9, [r0, #28]	@, <variable>.bStartFade
	b	.L673	@
.L670:
	ldrsh	r6, [r1, #0]	@ tmp165,* pInBuf
	cmp	r6, #0	@ tmp165,
	beq	.L663	@,
	mov	r9, #1	@,
	str	r9, [r0, #28]	@, <variable>.bStartFade
	b	.L673	@
.L571:
	ldr	r2, [sp, #12]	@, %sfp
	add	r1, r1, r2	@ pInBuf, pInBuf,
	b	.L572	@
.L667:
	ldrsh	r3, [r1, #0]	@ tmp378,* pInBuf
	cmp	r3, #0	@ tmp378,
	beq	.L618	@,
	b	.L564	@
.L668:
	ldr	r3, [r1, #0]	@ tmp377,* pInBuf
	cmp	r3, #0	@ tmp377,
	beq	.L618	@,
	b	.L564	@
.L591:
	sxth	r6, r2	@ D.17261, D.17261
	cmp	r3, #8388608	@ Volume,
	mov	sl, r6	@ D.17261, D.17261
	mov	fp, sl, asr #31	@ D.17261
	mul	r2, r8, fp	@ tmp262, Volume, D.17261
	mla	r6, sl, r9, r2	@ tmp263, D.17261, Volume, tmp262
	umull	sl, fp, r8, sl	@ tmp264, Volume, D.17261
	add	fp, r6, fp	@, tmp263,
	mov	r2, sl, lsr #23	@ tmp267, tmp264,
	orr	r2, r2, fp, asl #9	@, var, tmp267,,
	bls	.L637	@,
	mov	r6, r2, asr #31	@ sign, var,
	cmp	r6, r2, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	r2, r6, r5	@ var, sign,
.L637:
	uxth	r2, r2	@ D.17259, var
	b	.L639	@
.L604:
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	sl, r4, r9	@ tmp307, D.17275, data
	mla	r2, r8, r5, sl	@ tmp308, data, D.17275, tmp307
	umull	r8, r9, r4, r8	@ tmp309, D.17275, data
	add	r9, r2, r9	@, tmp308,
	mov	sl, r8, lsr #23	@ tmp312, tmp309,
	orr	r2, sl, r9, asl #9	@, tmp313, tmp312,,
	mov	sl, r2	@ var.1164, tmp313
	bls	.L605	@,
	mov	sl, r2, asr #8	@ tmp315, tmp313,
	mov	r8, sl	@ tmp316, tmp315
	mov	r9, r8, asr #31	@ tmp316
	mul	r2, r8, r5	@ tmp318, tmp316, D.17275
	mla	sl, r4, r9, r2	@ tmp319, D.17275,, tmp318
	umull	r8, r9, r8, r4	@ tmp320, tmp316, D.17275
	add	r9, sl, r9	@, tmp319,
	mov	r2, r8, lsr #23	@ D.17277, tmp320,
	orr	r2, r2, r9, asl #9	@, var, D.17277,,
	mov	r8, r2, asr #31	@ sign, var,
	cmp	r8, r2, asr #23	@ sign, var,
	ldrne	r9, [sp, #0]	@, %sfp
	eorne	r2, r8, r9	@ var, sign,
.L606:
	mov	sl, r2, asl #8	@ var.1164, var,
	b	.L605	@
.L674:
	mov	sl, r3	@ var.1164, Volume
.L614:
	subs	r8, r8, #1	@ ivtmp.1163, tmp231,
	str	sl, [r1, r6]	@ var.1164,
	add	r2, r6, #4	@ ivtmp.1142, tmp232,
	beq	.L580	@,
.L584:
	cmp	r3, #0	@ Volume,
	ldr	sl, [r1, r2]	@ data,* ivtmp.1142
	moveq	sl, r3	@ var.1164, Volume
	beq	.L582	@,
	mov	fp, sl, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r6, r4, fp	@ tmp184, D.17275, data
	mla	r6, sl, r5, r6	@ tmp249, data, D.17275, tmp184
	umull	sl, fp, r4, sl	@ tmp185, D.17275, data
	add	fp, r6, fp	@, tmp249,
	mov	r6, sl, lsr #23	@ tmp207, tmp185,
	orr	r6, r6, fp, asl #9	@, tmp251, tmp207,,
	mov	sl, r6	@ var.1164, tmp251
	bls	.L582	@,
	mov	r6, r6, asr #8	@ tmp189, tmp251,
	mov	sl, r6	@ tmp190, tmp189
	mov	fp, sl, asr #31	@ tmp190
	mul	r6, sl, r5	@ tmp192, tmp190, D.17275
	mla	r6, r4, fp, r6	@ tmp252, D.17275,, tmp192
	umull	sl, fp, sl, r4	@ tmp193, tmp190, D.17275
	add	fp, r6, fp	@, tmp252,
	mov	r6, sl, lsr #23	@ D.17277, tmp193,
	orr	r6, r6, fp, asl #9	@, var, D.17277,,
	mov	sl, r6, asr #31	@ sign, var,
	cmp	sl, r6, asr #23	@ sign, var,
	ldrne	r9, [sp, #0]	@, %sfp
	eorne	r6, sl, r9	@ var, sign,
	mov	sl, r6, asl #8	@ var.1164, var,
.L582:
	add	r6, r2, #4	@ tmp232, ivtmp.1142,
	cmp	r3, #0	@ Volume,
	str	sl, [r1, r2]	@ var.1164,* ivtmp.1142
	sub	r8, r8, #1	@ tmp231, ivtmp.1163,
	ldr	sl, [r1, r6]	@ data,
	beq	.L674	@,
	mov	fp, sl, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r2, r4, fp	@ tmp356, D.17275, data
	mla	r2, sl, r5, r2	@ tmp357, data, D.17275, tmp356
	umull	sl, fp, r4, sl	@ tmp358, D.17275, data
	add	fp, r2, fp	@, tmp357,
	mov	r2, sl, lsr #23	@ tmp361, tmp358,
	orr	r2, r2, fp, asl #9	@, tmp362, tmp361,,
	mov	sl, r2	@ var.1164, tmp362
	bls	.L614	@,
	mov	r2, r2, asr #8	@ tmp364, tmp362,
	mov	sl, r2	@ tmp365, tmp364
	mov	fp, sl, asr #31	@ tmp365
	mul	r2, sl, r5	@ tmp367, tmp365, D.17275
	mla	r2, r4, fp, r2	@ tmp368, D.17275,, tmp367
	umull	sl, fp, sl, r4	@ tmp369, tmp365, D.17275
	add	fp, r2, fp	@, tmp368,
	mov	r2, sl, lsr #23	@ D.17277, tmp369,
	orr	r2, r2, fp, asl #9	@, var, D.17277,,
	mov	sl, r2, asr #31	@ sign, var,
	cmp	sl, r2, asr #23	@ sign, var,
	ldrne	r9, [sp, #0]	@, %sfp
	eorne	r2, sl, r9	@ var, sign,
.L615:
	mov	sl, r2, asl #8	@ var.1164, var,
	b	.L614	@
.L600:
	sxth	sl, sl	@ D.17261, D.17261
	cmp	r3, #8388608	@ Volume,
	mov	fp, sl, asr #31	@ D.17261
	mul	r2, r8, fp	@ tmp293, Volume, D.17261
	mla	r2, sl, r9, r2	@ tmp294, D.17261, Volume, tmp293
	umull	sl, fp, r8, sl	@ tmp295, Volume, D.17261
	add	fp, r2, fp	@, tmp294,
	mov	r2, sl, lsr #23	@ tmp298, tmp295,
	orr	r2, r2, fp, asl #9	@, var, tmp298,,
	bls	.L644	@,
	mov	sl, r2, asr #31	@ sign, var,
	cmp	sl, r2, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	r2, sl, r5	@ var, sign,
.L644:
	uxth	r2, r2	@ D.17259, var
	b	.L646	@
.L672:
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	sl, r4, r5	@ var, sign,
	b	.L641	@
.L562:
	ldr	r2, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	b	.L567	@
	.fnend
	.size	FADE_InProcess, .-FADE_InProcess
	.align	2
	.global	FADE_OutProcess
	.type	FADE_OutProcess, %function
FADE_OutProcess:
	.fnstart
.LFB1092:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ hFade
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	.pad #16
	sub	sp, sp, #16	@,,
	beq	.L693	@,
	cmp	r2, #0	@ samples,
	ldr	r7, [r0, #4]	@ ivtmp.1204, <variable>.u32Channels
	beq	.L693	@,
	movw	r3, #:lower16:.LANCHOR0	@,
	movw	r4, #:lower16:8388607	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	movt	r4, #:upper16:8388607	@,
	mov	r5, r7, asl #1	@, ivtmp.1204,
	mov	r9, r7, asl #2	@, ivtmp.1204,
	stmia	sp, {r3, r4}	@ phole stm
	str	r5, [sp, #12]	@, %sfp
	str	r9, [sp, #8]	@, %sfp
	b	.L692	@
.L749:
	cmp	ip, #24	@ <variable>.u32BitPerSample,
	beq	.L747	@,
.L677:
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	sub	r2, r2, #1	@ samples, samples,
	ldr	ip, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r3, r3, #1	@ D.16426, <variable>.u32FadeCnt,
	str	r3, [r0, #20]	@ D.16426, <variable>.u32FadeCnt
	cmp	r3, ip	@ D.16426, <variable>.u32FadeStep
	beq	.L748	@,
.L691:
	cmp	r2, #0	@ samples,
	beq	.L693	@,
.L692:
	ldr	ip, [r0, #0]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	ldr	sl, [sp, #0]	@, %sfp
	cmp	ip, #16	@ <variable>.u32BitPerSample,
	ldr	r3, [sl, r3, asl #2]	@ Volume, g_u32VolCoef
	bne	.L749	@,
	cmp	r7, #0	@ ivtmp.1204,
	beq	.L680	@,
	cmp	r3, #0	@ Volume,
	sub	r4, r7, #1	@ tmp213, ivtmp.1204,
	and	r4, r4, #1	@ tmp214, tmp213,
	mov	r8, r3	@ Volume, Volume
	mov	r9, r8, asr #31	@ Volume
	ldrh	sl, [r1, #0]	@ D.17304,* pInBuf
	bne	.L697	@,
	mov	ip, r3	@ D.17302, Volume
.L731:
	subs	r6, r7, #1	@ ivtmp.1229, ivtmp.1204,
	strh	ip, [r1, #0]	@ movhi	@ D.17302,* pInBuf
	mov	ip, #2	@ ivtmp.1194,
	beq	.L680	@,
	cmp	r4, #0	@ tmp214,
	beq	.L685	@,
	cmp	r3, #0	@ Volume,
	ldrh	r4, [r1, ip]	@ D.17304,* ivtmp.1194
	moveq	sl, r3	@ D.17302, Volume
	beq	.L735	@,
	sxth	r4, r4	@ D.17304, D.17304
	cmp	r3, #8388608	@ Volume,
	mov	r5, r4, asr #31	@ D.17304
	mul	sl, r8, r5	@ tmp260, Volume, D.17304
	mla	sl, r4, r9, sl	@ tmp261, D.17304, Volume, tmp260
	umull	r4, r5, r8, r4	@ tmp262, Volume, D.17304
	add	r5, sl, r5	@, tmp261,
	mov	sl, r4, lsr #23	@ tmp265, tmp262,
	orr	sl, sl, r5, asl #9	@, var, tmp265,,
	bls	.L733	@,
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	sl, r4, r5	@ var, sign,
.L733:
	uxth	sl, sl	@ D.17302, var
.L735:
	subs	r6, r6, #1	@ ivtmp.1229, ivtmp.1229,
	strh	sl, [r1, ip]	@ movhi	@ D.17302,* ivtmp.1194
	add	ip, ip, #2	@ ivtmp.1194, ivtmp.1194,
	beq	.L680	@,
.L685:
	cmp	r3, #0	@ Volume,
	ldrh	r4, [r1, ip]	@ D.17304,* ivtmp.1194
	moveq	sl, r3	@ D.17302, Volume
	beq	.L682	@,
	sxth	r4, r4	@ D.17304, D.17304
	cmp	r3, #8388608	@ Volume,
	mov	r5, r4, asr #31	@ D.17304
	mul	sl, r8, r5	@ tmp165, Volume, D.17304
	mla	sl, r4, r9, sl	@ tmp223, D.17304, Volume, tmp165
	umull	r4, r5, r8, r4	@ tmp166, Volume, D.17304
	add	r5, sl, r5	@, tmp223,
	mov	sl, r4, lsr #23	@ tmp195, tmp166,
	orr	sl, sl, r5, asl #9	@, var, tmp195,,
	bls	.L684	@,
	mov	r4, sl, asr #31	@ sign, var,
	cmp	r4, sl, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	sl, r4, r5	@ var, sign,
.L684:
	uxth	sl, sl	@ D.17302, var
.L682:
	add	r4, ip, #2	@ tmp215, ivtmp.1194,
	cmp	r3, #0	@ Volume,
	strh	sl, [r1, ip]	@ movhi	@ D.17302,* ivtmp.1194
	sub	r6, r6, #1	@ tmp216, ivtmp.1229,
	ldrh	sl, [r1, r4]	@ D.17304,
	bne	.L706	@,
	mov	ip, r3	@ D.17302, Volume
.L738:
	subs	r6, r6, #1	@ ivtmp.1229, tmp216,
	strh	ip, [r1, r4]	@ movhi	@ D.17302,
	add	ip, r4, #2	@ ivtmp.1194, tmp215,
	bne	.L685	@,
.L680:
	ldr	r3, [r0, #20]	@ <variable>.u32FadeCnt, <variable>.u32FadeCnt
	sub	r2, r2, #1	@ samples, samples,
	ldr	ip, [r0, #24]	@ <variable>.u32FadeStep, <variable>.u32FadeStep
	add	r3, r3, #1	@ D.16426, <variable>.u32FadeCnt,
	ldr	r9, [sp, #12]	@, %sfp
	cmp	r3, ip	@ D.16426, <variable>.u32FadeStep
	str	r3, [r0, #20]	@ D.16426, <variable>.u32FadeCnt
	add	r1, r1, r9	@ pInBuf, pInBuf,
	bne	.L691	@,
.L748:
	ldr	r3, [r0, #32]	@ <variable>.enCurnFadeStauts, <variable>.enCurnFadeStauts
	mov	ip, #0	@,
	str	ip, [r0, #20]	@, <variable>.u32FadeCnt
	cmp	r3, #2	@ <variable>.enCurnFadeStauts,
	bne	.L691	@,
	ldr	r3, [r0, #16]	@ <variable>.u32FadeCurnCoefIdx, <variable>.u32FadeCurnCoefIdx
	add	r3, r3, #1	@ D.16433, <variable>.u32FadeCurnCoefIdx,
	str	r3, [r0, #16]	@ D.16433, <variable>.u32FadeCurnCoefIdx
	cmp	r3, #99	@ D.16433,
	streq	ip, [r0, #32]	@, <variable>.enCurnFadeStauts
	cmp	r2, #0	@ samples,
	bne	.L692	@,
.L693:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L706:
	sxth	sl, sl	@ D.17304, D.17304
	cmp	r3, #8388608	@ Volume,
	mov	fp, sl, asr #31	@ D.17304
	mul	ip, r8, fp	@ tmp275, Volume, D.17304
	mla	ip, sl, r9, ip	@ tmp276, D.17304, Volume, tmp275
	umull	sl, fp, r8, sl	@ tmp277, Volume, D.17304
	add	fp, ip, fp	@, tmp276,
	mov	ip, sl, lsr #23	@ tmp280, tmp277,
	orr	ip, ip, fp, asl #9	@, var, tmp280,,
	bls	.L736	@,
	mov	sl, ip, asr #31	@ sign, var,
	cmp	sl, ip, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	ip, sl, r5	@ var, sign,
.L736:
	uxth	ip, ip	@ D.17302, var
	b	.L738	@
.L747:
	cmp	r7, #0	@ ivtmp.1204,
	beq	.L686	@,
	cmp	r3, #0	@ Volume,
	sub	r6, r7, #1	@ tmp217, ivtmp.1204,
	and	r6, r6, #1	@ tmp218, tmp217,
	mov	r4, r3	@ D.17318, Volume
	mov	r5, r4, asr #31	@ D.17318
	ldr	r8, [r1, #0]	@ data,* pInBuf
	bne	.L710	@,
	mov	sl, r3	@ var.1228, Volume
.L711:
	subs	r8, r7, #1	@ ivtmp.1227, ivtmp.1204,
	str	sl, [r1, #0]	@ var.1228,* pInBuf
	mov	ip, #4	@ ivtmp.1210,
	beq	.L686	@,
	cmp	r6, #0	@ tmp218,
	beq	.L690	@,
	cmp	r3, #0	@ Volume,
	ldr	sl, [r1, ip]	@ data,* ivtmp.1210
	moveq	r9, r3	@ var.1228, Volume
	beq	.L715	@,
	mov	fp, sl, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r9, r4, fp	@ tmp314, D.17318, data
	mla	r6, sl, r5, r9	@ tmp315, data, D.17318, tmp314
	umull	sl, fp, r4, sl	@ tmp316, D.17318, data
	add	fp, r6, fp	@, tmp315,
	mov	r9, sl, lsr #23	@ tmp319, tmp316,
	orr	r6, r9, fp, asl #9	@, tmp320, tmp319,,
	mov	r9, r6	@ var.1228, tmp320
	bls	.L715	@,
	mov	r9, r6, asr #8	@ tmp322, tmp320,
	mov	sl, r9	@ tmp323, tmp322
	mov	fp, sl, asr #31	@ tmp323
	mul	r6, sl, r5	@ tmp325, tmp323, D.17318
	mla	r9, r4, fp, r6	@ tmp326, D.17318,, tmp325
	umull	sl, fp, sl, r4	@ tmp327, tmp323, D.17318
	add	fp, r9, fp	@, tmp326,
	mov	r6, sl, lsr #23	@ D.17320, tmp327,
	orr	r6, r6, fp, asl #9	@, var, D.17320,,
	mov	sl, r6, asr #31	@ sign, var,
	cmp	sl, r6, asr #23	@ sign, var,
	ldrne	r9, [sp, #4]	@, %sfp
	eorne	r6, sl, r9	@ var, sign,
.L716:
	mov	r9, r6, asl #8	@ var.1228, var,
.L715:
	subs	r8, r8, #1	@ ivtmp.1227, ivtmp.1227,
	str	r9, [r1, ip]	@ var.1228,* ivtmp.1210
	add	ip, ip, #4	@ ivtmp.1210, ivtmp.1210,
	bne	.L690	@,
.L686:
	ldr	sl, [sp, #8]	@, %sfp
	add	r1, r1, sl	@ pInBuf, pInBuf,
	b	.L677	@
.L750:
	mov	r9, r3	@ var.1228, Volume
.L720:
	subs	r8, r8, #1	@ ivtmp.1227, tmp220,
	str	r9, [r1, r6]	@ var.1228,
	add	ip, r6, #4	@ ivtmp.1210, tmp219,
	beq	.L686	@,
.L690:
	cmp	r3, #0	@ Volume,
	ldr	sl, [r1, ip]	@ data,* ivtmp.1210
	moveq	r9, r3	@ var.1228, Volume
	beq	.L688	@,
	mov	fp, sl, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	r9, r4, fp	@ tmp174, D.17318, data
	mla	r6, sl, r5, r9	@ tmp231, data, D.17318, tmp174
	umull	sl, fp, r4, sl	@ tmp175, D.17318, data
	add	fp, r6, fp	@, tmp231,
	mov	r9, sl, lsr #23	@ tmp197, tmp175,
	orr	r6, r9, fp, asl #9	@, tmp233, tmp197,,
	mov	r9, r6	@ var.1228, tmp233
	bls	.L688	@,
	mov	sl, r6, asr #8	@ tmp179, tmp233,
	mov	fp, sl, asr #31	@ tmp180
	mul	r6, sl, r5	@ tmp182, tmp180, D.17318
	mla	r6, r4, fp, r6	@ tmp234, D.17318,, tmp182
	umull	sl, fp, sl, r4	@ tmp183, tmp180, D.17318
	add	fp, r6, fp	@, tmp234,
	mov	r6, sl, lsr #23	@ D.17320, tmp183,
	orr	r6, r6, fp, asl #9	@, var, D.17320,,
	mov	sl, r6, asr #31	@ sign, var,
	cmp	sl, r6, asr #23	@ sign, var,
	ldrne	r9, [sp, #4]	@, %sfp
	eorne	r6, sl, r9	@ var, sign,
	mov	r9, r6, asl #8	@ var.1228, var,
.L688:
	add	r6, ip, #4	@ tmp219, ivtmp.1210,
	cmp	r3, #0	@ Volume,
	str	r9, [r1, ip]	@ var.1228,* ivtmp.1210
	sub	r8, r8, #1	@ tmp220, ivtmp.1227,
	ldr	sl, [r1, r6]	@ data,
	beq	.L750	@,
	mov	fp, sl, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	ip, r4, fp	@ tmp338, D.17318, data
	mla	r9, sl, r5, ip	@ tmp339, data, D.17318, tmp338
	umull	sl, fp, r4, sl	@ tmp340, D.17318, data
	add	fp, r9, fp	@, tmp339,
	mov	ip, sl, lsr #23	@ tmp343, tmp340,
	orr	ip, ip, fp, asl #9	@, tmp344, tmp343,,
	mov	r9, ip	@ var.1228, tmp344
	bls	.L720	@,
	mov	sl, ip, asr #8	@ tmp346, tmp344,
	mov	fp, sl, asr #31	@ tmp347
	mul	r9, sl, r5	@ tmp349, tmp347, D.17318
	mla	ip, r4, fp, r9	@ tmp350, D.17318,, tmp349
	umull	sl, fp, sl, r4	@ tmp351, tmp347, D.17318
	add	fp, ip, fp	@, tmp350,
	mov	r9, sl, lsr #23	@ D.17320, tmp351,
	orr	ip, r9, fp, asl #9	@, var, D.17320,,
	mov	sl, ip, asr #31	@ sign, var,
	cmp	sl, ip, asr #23	@ sign, var,
	ldrne	r9, [sp, #4]	@, %sfp
	eorne	ip, sl, r9	@ var, sign,
.L721:
	mov	r9, ip, asl #8	@ var.1228, var,
	b	.L720	@
.L710:
	mov	r9, r8, asr #31	@ data
	cmp	r3, #8388608	@ Volume,
	mul	sl, r4, r9	@ tmp289, D.17318, data
	mla	ip, r8, r5, sl	@ tmp290, data, D.17318, tmp289
	umull	r8, r9, r4, r8	@ tmp291, D.17318, data
	add	r9, ip, r9	@, tmp290,
	mov	sl, r8, lsr #23	@ tmp294, tmp291,
	orr	ip, sl, r9, asl #9	@, tmp295, tmp294,,
	mov	sl, ip	@ var.1228, tmp295
	bls	.L711	@,
	mov	sl, ip, asr #8	@ tmp297, tmp295,
	mov	r8, sl	@ tmp298, tmp297
	mov	r9, r8, asr #31	@ tmp298
	mul	ip, r8, r5	@ tmp300, tmp298, D.17318
	mla	sl, r4, r9, ip	@ tmp301, D.17318,, tmp300
	umull	r8, r9, r8, r4	@ tmp302, tmp298, D.17318
	add	r9, sl, r9	@, tmp301,
	mov	ip, r8, lsr #23	@ D.17320, tmp302,
	orr	ip, ip, r9, asl #9	@, var, D.17320,,
	mov	r8, ip, asr #31	@ sign, var,
	cmp	r8, ip, asr #23	@ sign, var,
	ldrne	r9, [sp, #4]	@, %sfp
	eorne	ip, r8, r9	@ var, sign,
.L712:
	mov	sl, ip, asl #8	@ var.1228, var,
	b	.L711	@
.L697:
	sxth	sl, sl	@ D.17304, D.17304
	cmp	r3, #8388608	@ Volume,
	mov	fp, sl, asr #31	@ D.17304
	mul	r6, r8, fp	@ tmp244, Volume, D.17304
	mla	ip, sl, r9, r6	@ tmp245, D.17304, Volume, tmp244
	umull	sl, fp, r8, sl	@ tmp246, Volume, D.17304
	add	fp, ip, fp	@, tmp245,
	mov	r6, sl, lsr #23	@ tmp249, tmp246,
	orr	ip, r6, fp, asl #9	@, var, tmp249,,
	bls	.L729	@,
	mov	r6, ip, asr #31	@ sign, var,
	cmp	r6, ip, asr #15	@ sign, var,
	movwne	r5, #32767	@,
	eorne	ip, r6, r5	@ var, sign,
.L729:
	uxth	ip, ip	@ D.17302, var
	b	.L731	@
	.fnend
	.size	FADE_OutProcess, .-FADE_OutProcess
	.align	2
	.global	FADE_Destroy
	.type	FADE_Destroy, %function
FADE_Destroy:
	.fnstart
.LFB1089:
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
	.global	FADE_Create
	.type	FADE_Create, %function
FADE_Create:
	.fnstart
.LFB1087:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r5, r1	@ inRate, inRate
	movw	r1, #:lower16:191999	@ tmp142,
	sub	ip, r5, #1	@ tmp141, inRate,
	movt	r1, #:upper16:191999	@ tmp142,
	mov	r7, r3	@ Channels, Channels
	cmp	ip, r1	@ tmp141, tmp142
	mov	r3, #0	@ tmp140,
	mov	r4, r0	@ phFade, phFade
	mov	r6, r2	@ BitPerSample, BitPerSample
	str	r3, [r0, #0]	@ tmp140,* phFade
	ldmhifd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r2, #24	@ BitPerSample,
	cmpne	r2, #16	@, BitPerSample,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	sub	sl, r7, #1	@ tmp150, Channels,
	cmp	r7, #8	@ Channels,
	cmpne	sl, #1	@, tmp150,
	movls	sl, #0	@, tmp157
	movhi	sl, #1	@, tmp157
	ldmhifd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r0, #17	@,
	mov	r1, #36	@,
	bl	HI_ADSP_MALLOC	@
	subs	r8, r0, #0	@ D.16283,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r1, #36	@,
	bl	__memzero	@
	stmia	r8, {r6, r7}	@ phole stm
	str	r5, [r8, #8]	@ inRate, <variable>.u32InRate
	str	sl, [r8, #32]	@ tmp157, <variable>.enCurnFadeStauts
	str	r8, [r4, #0]	@ D.16283,* phFade
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	FADE_Create, .-FADE_Create
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
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
