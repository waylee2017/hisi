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
	.file	"imedia_avc_api.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(imedia_avc_api)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/.imedia_avc_api.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_api.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_api.o
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
	.global	iMedia_AVC_GetSize
	.type	iMedia_AVC_GetSize, %function
iMedia_AVC_GetSize:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ pstMemSize, pstMemSize
	mvneq	r0, #0	@ D.1511,
	bxeq	lr	@
	cmp	r1, #0	@ pstConf,
	mvneq	r0, #1	@ D.1511,
	bxeq	lr	@
	ldr	r0, [r1, #0]	@ <variable>.iSampleRate, <variable>.iSampleRate
	movw	r2, #48000	@ tmp138,
	cmp	r0, r2	@ <variable>.iSampleRate, tmp138
	mvnne	r0, #2	@ D.1511,
	bxne	lr	@
	ldr	ip, [r1, #4]	@ <variable>.iChannels, <variable>.iChannels
	cmp	ip, #2	@ <variable>.iChannels,
	moveq	ip, #160	@ tmp140,
	mvnne	r0, #3	@ D.1511,
	moveq	r0, #0	@ D.1511,
	streq	ip, [r3, #0]	@ tmp140, <variable>.uiStrSize
	bx	lr	@
	.fnend
	.size	iMedia_AVC_GetSize, .-iMedia_AVC_GetSize
	.align	2
	.global	iMedia_AVC_GetVersion
	.type	iMedia_AVC_GetVersion, %function
iMedia_AVC_GetVersion:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r0, #0	@ ppVersion, ppVersion
	movwne	r3, #:lower16:.LANCHOR0	@ tmp136,
	mvneq	r0, #22	@ D.1791,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp136,
	movne	r0, #0	@ D.1791,
	strne	r3, [r2, #0]	@ tmp136,* ppVersion
	bx	lr	@
	.fnend
	.size	iMedia_AVC_GetVersion, .-iMedia_AVC_GetVersion
	.align	2
	.global	iMedia_AVC_GetParams
	.type	iMedia_AVC_GetParams, %function
iMedia_AVC_GetParams:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ pHandle, pHandle
	mvneq	r0, #4	@ D.1777,
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r1, #0	@ pParams,
	mvneq	r0, #7	@ D.1777,
	ldmeqfd	sp!, {r3, pc}	@
	ldr	r0, [r3, #0]	@ <variable>.uiStatus, <variable>.uiStatus
	movw	r2, #:lower16:1096172361	@ tmp138,
	movt	r2, #:upper16:1096172361	@ tmp138,
	cmp	r0, r2	@ <variable>.uiStatus, tmp138
	mvnne	r0, #21	@ D.1777,
	ldmnefd	sp!, {r3, pc}	@
	mov	r0, r1	@, pParams
	mov	r2, #12	@,
	add	r1, r3, #4	@, pHandle,
	bl	iMedia_AVC_memcpy	@
	mov	r0, #0	@ D.1777,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	iMedia_AVC_GetParams, .-iMedia_AVC_GetParams
	.align	2
	.type	iMedia_AVC_Params_Prepare, %function
iMedia_AVC_Params_Prepare:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrh	r3, [r0, #0]	@ D.1549, <variable>.sAttackTime
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r6, r0	@ pstParams, pstParams
	mov	r5, r1	@ pHandle, pHandle
	sxth	r2, r3	@ D.1549, D.1549
	cmp	r2, #0	@ D.1549,
	movle	r3, #67108864	@ tmp205,
	strle	r3, [r1, #48]	@ tmp205, <variable>.stRealParams.iAttackRate
	ble	.L21	@,
	mov	r1, #48	@ movhi	@ tmp203,
	mov	r0, #67108864	@,
	smulbb	r1, r3, r1	@, D.1549, tmp203
	mov	r2, #0	@,
	bl	iMedia_AVC_L_divide_Q	@
	str	r0, [r5, #48]	@, <variable>.stRealParams.iAttackRate
.L21:
	ldrh	r3, [r6, #2]	@ D.1556, <variable>.sReleaseTime
	sxth	r0, r3	@ D.1556, D.1556
	cmp	r0, #0	@ D.1556,
	movle	r3, #67108864	@ tmp210,
	strle	r3, [r5, #52]	@ tmp210, <variable>.stRealParams.iReleaseRate
	ble	.L23	@,
	mov	r4, #48	@ movhi	@ tmp208,
	mov	r0, #67108864	@,
	smulbb	r1, r3, r4	@, D.1556, tmp208
	mov	r2, #0	@,
	bl	iMedia_AVC_L_divide_Q	@
	str	r0, [r5, #52]	@, <variable>.stRealParams.iReleaseRate
.L23:
	mov	r2, #0	@ tmp212,
	mvn	r3, #79	@ movhi	@,
	strh	r2, [r5, #16]	@ movhi	@ tmp212, <variable>.stRealParams.sx
	mvn	r7, #79	@ movhi	@,
	strh	r2, [r5, #26]	@ movhi	@ tmp212, <variable>.stRealParams.sk
	mov	r4, #4	@ iSegNum,
	strh	r2, [r5, #36]	@ movhi	@ tmp212, <variable>.stRealParams.sb
	strh	r2, [r5, #18]	@ movhi	@ tmp212, <variable>.stRealParams.sx
	strh	r3, [sp, #28]	@ movhi	@, sIn
	strh	r2, [r5, #28]	@ movhi	@ tmp212, <variable>.stRealParams.sk
	strh	r3, [sp, #16]	@ movhi	@, sOut
	mov	r3, #1	@ j.189,
	strh	r2, [r5, #38]	@ movhi	@ tmp212, <variable>.stRealParams.sb
	strh	r2, [r5, #20]	@ movhi	@ tmp212, <variable>.stRealParams.sx
	strh	r2, [r5, #30]	@ movhi	@ tmp212, <variable>.stRealParams.sk
	strh	r2, [r5, #40]	@ movhi	@ tmp212, <variable>.stRealParams.sb
	strh	r2, [r5, #22]	@ movhi	@ tmp212, <variable>.stRealParams.sx
	strh	r2, [r5, #32]	@ movhi	@ tmp212, <variable>.stRealParams.sk
	strh	r2, [r5, #42]	@ movhi	@ tmp212, <variable>.stRealParams.sb
	strh	r2, [r5, #24]	@ movhi	@ tmp212, <variable>.stRealParams.sx
	strh	r2, [r5, #34]	@ movhi	@ tmp212, <variable>.stRealParams.sk
	strh	r2, [r5, #44]	@ movhi	@ tmp212, <variable>.stRealParams.sb
	ldrh	r1, [r6, #10]	@ D.1571, <variable>.sTargetLevel
	ldrh	ip, [r6, #6]	@ D.1565, <variable>.sCornerLevel
	ldrh	r0, [r6, #4]	@ prephitmp.119, <variable>.sStartLevel
	ldrh	r6, [r6, #8]	@ D.1568, <variable>.sMaxGain
	strh	r7, [r5, #46]	@ movhi	@, <variable>.stRealParams.sInMin
	strh	r2, [sp, #36]	@ movhi	@ tmp212, sIn
	add	r2, r6, ip	@ tmp256, D.1568, D.1565
	strh	r1, [sp, #24]	@ movhi	@ D.1571, sOut
	rsb	r6, r6, r1	@ tmp258, D.1568, D.1571
	strh	r2, [sp, #20]	@ movhi	@ tmp256, sOut
	strh	r6, [sp, #34]	@ movhi	@ tmp258, sIn
	strh	r0, [sp, #30]	@ movhi	@ prephitmp.119, sIn
	strh	r0, [sp, #18]	@ movhi	@ prephitmp.119, sOut
	strh	ip, [sp, #32]	@ movhi	@ D.1565, sIn
	strh	r1, [sp, #22]	@ movhi	@ D.1571, sOut
	str	r5, [sp, #8]	@ pHandle, %sfp
	b	.L30	@
.L26:
	cmp	r4, r3	@ iSegNum, j.189
	ble	.L58	@,
.L62:
	add	r7, sp, #40	@,,
	add	r5, r7, r3, asl #1	@, tmp302,, j.189,
	ldrh	r0, [r5, #-12]	@ prephitmp.119, sIn
.L30:
	cmp	r0, #0	@ prephitmp.119,
	beq	.L24	@,
	add	r5, r3, #1	@ j.174, j.189,
	add	r2, sp, #40	@,,
	sub	r7, r3, #1	@ j, j.189,
	mov	r6, r3, asl #1	@ tmp264, j.189,
	add	r1, r2, r5, asl #1	@, tmp269,, j.174,
	add	fp, r6, r2	@ tmp265, tmp264,
	add	r9, r2, r7, asl #1	@, tmp277,, j,
	sxth	r0, r0	@ D.1587, prephitmp.119
	ldrh	r2, [r1, #-24]	@ prephitmp.176, sOut
	ldrh	r1, [r1, #-12]	@ prephitmp.128, sIn
	ldrsh	ip, [fp, #-24]	@ D.1579, sOut
	ldrsh	r8, [r9, #-12]	@ tmp288, sIn
	sxth	sl, r2	@ prephitmp.176, prephitmp.176
	ldrsh	r9, [r9, #-24]	@ tmp279, sOut
	sxth	fp, r1	@ prephitmp.128, prephitmp.128
	rsb	r8, r8, r0	@ tmp289, tmp288, D.1587
	rsb	sl, ip, sl	@ tmp291, D.1579, prephitmp.176
	rsb	r0, r0, fp	@ tmp282, D.1587, prephitmp.128
	rsb	ip, r9, ip	@ tmp280, tmp279, D.1579
	mul	r8, sl, r8	@ tmp292, tmp291, tmp289
	mul	ip, r0, ip	@ tmp283, tmp282, tmp280
	cmp	ip, r8	@ tmp283, tmp292
	movne	r3, r5	@ j.189, j.174
	bne	.L26	@,
	cmp	r3, r4	@ j.189, iSegNum
	bge	.L27	@,
	add	r0, sp, #28	@,,
	add	r3, r3, #2	@ tmp296, j.189,
	add	ip, r0, r6	@ ivtmp.163,, tmp264
	add	r5, r0, r4, asl #1	@, D.2030,, iSegNum,
	rsb	r0, ip, r5	@ tmp339, ivtmp.163, D.2030
	tst	r0, #2	@ tmp339,
	add	r0, sp, #16	@,,
	add	r3, r0, r3, asl #1	@, ivtmp.171,, tmp296,
	bne	.L28	@,
	add	ip, ip, #2	@ ivtmp.163, ivtmp.163,
	add	r0, sp, #28	@,,
	strh	r2, [r3, #-4]	@ movhi	@ prephitmp.176, sOut
	strh	r1, [r0, r6]	@ movhi	@ prephitmp.128, sIn
	ldrh	r2, [r3], #2	@ prephitmp.176, sOut
	ldrh	r1, [ip, #2]	@ prephitmp.128, sIn
	b	.L28	@
.L61:
	ldrh	r3, [r0, #2]	@, sIn
	ldrh	r1, [r2, #-2]	@ prephitmp.176, sOut
	strh	r3, [ip, #2]	@ movhi	@, sIn
	add	ip, r0, #2	@ ivtmp.163, tmp342,
	mov	r3, r2	@ ivtmp.171, tmp343
	strh	r1, [r2, #-4]	@ movhi	@ prephitmp.176, sOut
	ldrh	r1, [ip, #2]	@ prephitmp.128, sIn
	ldrh	r2, [r3], #2	@ prephitmp.176, sOut
.L28:
	mov	r0, ip	@ tmp342, ivtmp.163
	strh	r2, [r3, #-4]	@ movhi	@ prephitmp.176, sOut
	strh	r1, [r0], #2	@ movhi	@ prephitmp.128, sIn
	cmp	r0, r5	@ tmp342, D.2030
	add	r2, r3, #2	@ tmp343, ivtmp.171,
	bne	.L61	@,
.L27:
	sub	r4, r4, #1	@ iSegNum, iSegNum,
	add	r3, r7, #1	@ j.189, j,
	cmp	r4, r3	@ iSegNum, j.189
	bgt	.L62	@,
.L58:
	ldr	r5, [sp, #8]	@ pHandle, %sfp
.L29:
	cmp	r4, #0	@ iSegNum,
	ble	.L31	@,
	tst	r4, #1	@ iSegNum,
	ldrh	r7, [sp, #28]	@ prephitmp.187, sIn
	ldrh	sl, [sp, #16]	@ prephitmp.188, sOut
	mov	r6, r5	@ ivtmp.150, pHandle
	mov	fp, #0	@ j.175,
	bne	.L63	@,
	add	r2, sp, #28	@,,
	add	r6, sp, #16	@,,
	mov	fp, #2	@ D.2005,
	sxth	ip, sl	@ prephitmp.188, prephitmp.188
	ldrh	r8, [r2, fp]	@ prephitmp.181, sIn
	sxth	r3, r7	@ prephitmp.187, prephitmp.187
	ldrh	r9, [r6, fp]	@ prephitmp.177, sOut
	mov	r2, #8	@,
	strh	r7, [r5, #16]	@ movhi	@ prephitmp.187, <variable>.stRealParams.sx
	mov	fp, #1	@ j.175,
	sxth	r0, r8	@ prephitmp.181, prephitmp.181
	add	r6, r5, #2	@ ivtmp.150, pHandle,
	sxth	lr, r9	@ prephitmp.177, prephitmp.177
	rsb	r1, r3, r0	@, prephitmp.187, prephitmp.181
	rsb	r0, ip, lr	@, prephitmp.188, prephitmp.177
	bl	iMedia_AVC_L_divide_Q	@
	uxth	ip, r0	@ D.1602,
	strh	ip, [r5, #26]	@ movhi	@ D.1602, <variable>.stRealParams.sk
	smulbb	r3, ip, r7	@ tmp385, D.1602, prephitmp.187
	uxth	r7, r8	@ prephitmp.187, prephitmp.181
	rsb	r8, r3, sl, asl #8	@, tmp386, tmp385, prephitmp.188,
	uxth	sl, r9	@ prephitmp.188, prephitmp.177
	strh	r8, [r5, #36]	@ movhi	@ tmp386, <variable>.stRealParams.sb
	str	r4, [sp, #8]	@ iSegNum, %sfp
	str	r5, [sp, #12]	@ pHandle, %sfp
	b	.L32	@
.L64:
	add	sl, sp, #28	@,,
	add	r5, sp, #16	@,,
	strh	r8, [r4, #16]	@ movhi	@ prephitmp.187, <variable>.stRealParams.sx
	ldrh	r7, [sl, r3]	@ prephitmp.181, sIn
	ldrh	sl, [r5, r3]	@ prephitmp.177, sOut
	ldr	lr, [sp, #4]	@, %sfp
	sxth	ip, r7	@ prephitmp.181, prephitmp.181
	uxth	r7, r7	@ prephitmp.187, prephitmp.181
	sxth	r0, sl	@ prephitmp.177, prephitmp.177
	rsb	r1, r1, ip	@, prephitmp.187, prephitmp.181
	rsb	r0, lr, r0	@,, prephitmp.177
	uxth	sl, sl	@ prephitmp.188, prephitmp.177
	bl	iMedia_AVC_L_divide_Q	@
	uxth	r3, r0	@ D.1602,
	strh	r3, [r4, #26]	@ movhi	@ D.1602, <variable>.stRealParams.sk
	smulbb	r2, r3, r8	@ tmp366, D.1602, prephitmp.187
	rsb	r5, r2, r9, asl #8	@, tmp367, tmp366, prephitmp.188,
	strh	r5, [r4, #36]	@ movhi	@ tmp367, <variable>.stRealParams.sb
.L32:
	add	r5, fp, #1	@ tmp336, j.175,
	add	ip, sp, #28	@,,
	add	lr, sp, #16	@,,
	strh	r7, [r6, #16]	@ movhi	@ prephitmp.187, <variable>.stRealParams.sx
	mov	r8, r5, asl #1	@ D.2005, tmp336,
	sxth	r3, sl	@ prephitmp.188, prephitmp.188
	sxth	r1, r7	@ prephitmp.187, prephitmp.187
	mov	r2, #8	@,
	ldrh	r0, [lr, r8]	@ prephitmp.177, sOut
	add	fp, r5, #1	@ j.175, tmp336,
	ldrh	r9, [ip, r8]	@ prephitmp.181, sIn
	add	r4, r6, #2	@ tmp337, ivtmp.150,
	sxth	lr, r0	@ prephitmp.177, prephitmp.177
	sxth	ip, r9	@ prephitmp.181, prephitmp.181
	uxth	r8, r9	@ prephitmp.187, prephitmp.181
	rsb	r1, r1, ip	@, prephitmp.187, prephitmp.181
	uxth	r9, r0	@ prephitmp.188, prephitmp.177
	rsb	r0, r3, lr	@, prephitmp.188, prephitmp.177
	bl	iMedia_AVC_L_divide_Q	@
	ldr	ip, [sp, #8]	@, %sfp
	sxth	r2, r9	@, prephitmp.188
	mov	r3, fp, asl #1	@ D.2005, j.175,
	cmp	ip, r5	@, tmp336
	str	r2, [sp, #4]	@, %sfp
	sxth	r1, r8	@ prephitmp.187, prephitmp.187
	mov	r2, #8	@,
	uxth	ip, r0	@ D.1602,
	strh	ip, [r6, #26]	@ movhi	@ D.1602, <variable>.stRealParams.sk
	smulbb	r7, ip, r7	@ tmp314, D.1602, prephitmp.187
	rsb	r7, r7, sl, asl #8	@, tmp317, tmp314, prephitmp.188,
	strh	r7, [r6, #36]	@ movhi	@ tmp317, <variable>.stRealParams.sb
	add	r6, r4, #2	@ ivtmp.150, tmp337,
	bgt	.L64	@,
	ldr	r4, [sp, #8]	@ iSegNum, %sfp
	ldr	r5, [sp, #12]	@ pHandle, %sfp
.L31:
	add	ip, r4, #1	@ D.1613, iSegNum,
	cmp	ip, #0	@ D.1613,
	ble	.L38	@,
	ldrsh	r3, [r5, #26]	@ <variable>.stRealParams.sk, <variable>.stRealParams.sk
	cmp	r3, #256	@ <variable>.stRealParams.sk,
	movne	r3, #0	@ j.185,
	bne	.L35	@,
	tst	r4, #1	@ iSegNum,
	mov	r2, r5	@ ivtmp.144, pHandle
	mov	r3, #0	@ j.185,
	beq	.L36	@,
	ldrsh	r0, [r5, #28]	@ temp.186, <variable>.stRealParams.sk
	mov	r3, #1	@ j.185,
	add	r2, r5, #2	@ ivtmp.144, pHandle,
	cmp	r0, #256	@ temp.186,
	beq	.L36	@,
.L35:
	add	r2, r5, r3, asl #1	@, tmp321, pHandle, j.185,
	ldrh	r1, [r2, #16]	@, <variable>.stRealParams.sx
	strh	r1, [r5, #46]	@ movhi	@, <variable>.stRealParams.sInMin
.L38:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L37:
	ldrsh	r0, [r2, #28]	@ temp.186, <variable>.stRealParams.sk
	add	r2, r1, #2	@ ivtmp.144, tmp332,
	cmp	r0, #256	@ temp.186,
	bne	.L35	@,
	ldrsh	r1, [r1, #28]	@ temp.186, <variable>.stRealParams.sk
	add	r3, r3, #1	@ j.185, j.185,
	cmp	r1, #256	@ temp.186,
	bne	.L35	@,
.L36:
	add	r3, r3, #1	@ j.185, j.185,
	add	r1, r2, #2	@ tmp332, ivtmp.144,
	cmp	ip, r3	@ D.1613, j.185
	bgt	.L37	@,
	b	.L38	@
.L63:
	str	r4, [sp, #8]	@ iSegNum, %sfp
	str	r5, [sp, #12]	@ pHandle, %sfp
	b	.L32	@
.L24:
	ldr	r5, [sp, #8]	@ pHandle, %sfp
	mov	r4, r3	@ iSegNum, j.189
	b	.L29	@
	.fnend
	.size	iMedia_AVC_Params_Prepare, .-iMedia_AVC_Params_Prepare
	.align	2
	.global	iMedia_AVC_SetParams
	.type	iMedia_AVC_SetParams, %function
iMedia_AVC_SetParams:
	.fnstart
.LFB6:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r5, r0, #0	@ pHandle, pHandle
	mov	r4, r1	@ pParams, pParams
	mvneq	r0, #4	@ ret,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	cmp	r1, #0	@ pParams,
	mvneq	r0, #7	@ ret,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r2, [r5, #0]	@ <variable>.uiStatus, <variable>.uiStatus
	movw	r3, #:lower16:1096172361	@ tmp142,
	movt	r3, #:upper16:1096172361	@ tmp142,
	cmp	r2, r3	@ <variable>.uiStatus, tmp142
	mvnne	r0, #21	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	ldrh	r2, [r1, #0]	@ <variable>.sAttackTime, <variable>.sAttackTime
	movw	r3, #1980	@ tmp148,
	sub	ip, r2, #20	@ tmp146, <variable>.sAttackTime,
	uxth	r1, ip	@ tmp147, tmp146
	cmp	r1, r3	@ tmp147, tmp148
	mvnhi	r0, #9	@ ret,
	ldmhifd	sp!, {r3, r4, r5, pc}	@
	ldrh	r2, [r4, #2]	@ <variable>.sReleaseTime, <variable>.sReleaseTime
	sub	ip, r2, #20	@ tmp151, <variable>.sReleaseTime,
	uxth	r1, ip	@ tmp152, tmp151
	cmp	r1, r3	@ tmp152, tmp148
	mvnhi	r0, #10	@ ret,
	ldmhifd	sp!, {r3, r4, r5, pc}	@
	ldrh	r3, [r4, #4]	@ D.1816, <variable>.sStartLevel
	add	ip, r3, #40	@ tmp155, D.1816,
	uxth	r1, ip	@ tmp156, tmp155
	cmp	r1, #20	@ tmp156,
	mvnhi	r0, #11	@ ret,
	ldmhifd	sp!, {r3, r4, r5, pc}	@
	ldrh	r2, [r4, #6]	@ D.1813, <variable>.sCornerLevel
	add	ip, r2, #39	@ tmp158, D.1813,
	uxth	r1, ip	@ tmp159, tmp158
	cmp	r1, #22	@ tmp159,
	mvnhi	r0, #12	@ ret,
	ldmhifd	sp!, {r3, r4, r5, pc}	@
	ldrh	r1, [r4, #8]	@ D.1810, <variable>.sMaxGain
	cmp	r1, #8	@ D.1810,
	mvnhi	r0, #13	@ ret,
	ldmhifd	sp!, {r3, r4, r5, pc}	@
	ldrh	r0, [r4, #10]	@ D.1808, <variable>.sTargetLevel
	add	ip, r0, #16	@ tmp162, D.1808,
	uxth	ip, ip	@ tmp163, tmp162
	cmp	ip, #10	@ tmp163,
	mvnhi	r0, #14	@ ret,
	ldmhifd	sp!, {r3, r4, r5, pc}	@
	sxth	r3, r3	@ D.1816, D.1816
	sxth	r2, r2	@ D.1813, D.1813
	cmp	r3, r2	@ D.1816, D.1813
	blt	.L79	@,
.L76:
	mvn	r0, #15	@ ret,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L79:
	sxth	ip, r0	@ D.1808, D.1808
	sxth	r1, r1	@ D.1810, D.1810
	rsb	r0, r1, ip	@ tmp169, D.1810, D.1808
	cmp	r2, r0	@ D.1813, tmp169
	bge	.L76	@,
	mov	r2, #12	@,
	add	r0, r5, #4	@, pHandle,
	mov	r1, r4	@, pParams
	bl	iMedia_AVC_memcpy	@
	mov	r0, r4	@, pParams
	mov	r1, r5	@, pHandle
	bl	iMedia_AVC_Params_Prepare	@
	mov	r2, #0	@ tmp189,
	mov	r3, #67108864	@ tmp172,
	mov	ip, #2	@ tmp187,
	movw	r1, #28000	@ tmp192,
	str	ip, [r5, #116]	@ tmp187, <variable>.iRateType
	mov	r0, r2	@ ret, tmp189
	mov	ip, #154	@ tmp193,
	str	r2, [r5, #132]	@ tmp189, <variable>.iFrameNumUnderThd
	str	r2, [r5, #136]	@ tmp189, <variable>.iFrameNumUnderThd
	str	r3, [r5, #120]	@ tmp172, <variable>.iRateVal
	str	r1, [r5, #140]	@ tmp192, <variable>.iLimThred
	str	ip, [r5, #144]	@ tmp193, <variable>.iLimSlop
	str	r3, [r5, #56]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #84]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #60]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #88]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #64]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #92]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #68]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #96]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #72]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #100]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #76]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #104]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #80]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #108]	@ tmp172, <variable>.iRmsLast7Gain
	str	r3, [r5, #112]	@ tmp172, <variable>.iRmsLastGain
	str	r2, [r5, #128]	@ tmp189, <variable>.iRmsThreshold
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	iMedia_AVC_SetParams, .-iMedia_AVC_SetParams
	.align	2
	.global	iMedia_AVC_Init
	.type	iMedia_AVC_Init, %function
iMedia_AVC_Init:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ ppHandle, ppHandle
	.pad #8
	sub	sp, sp, #8	@,,
	mvneq	r0, #4	@ ret,
	bne	.L98	@,
.L82:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L98:
	cmp	r1, #0	@ pMemBase,
	mvneq	r0, #5	@ ret,
	beq	.L82	@,
	cmp	r3, #0	@ pParams,
	mvneq	r0, #7	@ ret,
	beq	.L82	@,
	cmp	r2, #159	@ uiMemSize,
	mvnls	r0, #6	@ ret,
	bls	.L82	@,
	ldrh	ip, [r3, #0]	@ <variable>.sAttackTime, <variable>.sAttackTime
	movw	r2, #1980	@ tmp178,
	sub	r0, ip, #20	@ tmp176, <variable>.sAttackTime,
	uxth	r0, r0	@ tmp177, tmp176
	cmp	r0, r2	@ tmp177, tmp178
	mvnhi	r0, #9	@ ret,
	bhi	.L82	@,
	ldrh	ip, [r3, #2]	@ <variable>.sReleaseTime, <variable>.sReleaseTime
	sub	r0, ip, #20	@ tmp181, <variable>.sReleaseTime,
	uxth	r0, r0	@ tmp182, tmp181
	cmp	r0, r2	@ tmp182, tmp178
	mvnhi	r0, #10	@ ret,
	bhi	.L82	@,
	ldrh	r5, [r3, #4]	@ D.1840, <variable>.sStartLevel
	add	ip, r5, #40	@ tmp185, D.1840,
	uxth	r2, ip	@ tmp186, tmp185
	cmp	r2, #20	@ tmp186,
	mvnhi	r0, #11	@ ret,
	bhi	.L82	@,
	ldrh	r2, [r3, #6]	@ D.1837, <variable>.sCornerLevel
	add	r0, r2, #39	@ tmp188, D.1837,
	uxth	r0, r0	@ tmp189, tmp188
	cmp	r0, #22	@ tmp189,
	mvnhi	r0, #12	@ ret,
	bhi	.L82	@,
	ldrh	r0, [r3, #8]	@ D.1834, <variable>.sMaxGain
	cmp	r0, #8	@ D.1834,
	mvnhi	r0, #13	@ ret,
	bhi	.L82	@,
	ldrh	ip, [r3, #10]	@ D.1832, <variable>.sTargetLevel
	add	r6, ip, #16	@ tmp192, D.1832,
	uxth	r6, r6	@ tmp193, tmp192
	cmp	r6, #10	@ tmp193,
	mvnhi	r0, #14	@ ret,
	bhi	.L82	@,
	sxth	r5, r5	@ D.1840, D.1840
	sxth	r2, r2	@ D.1837, D.1837
	cmp	r5, r2	@ D.1840, D.1837
	bge	.L92	@,
	sxth	ip, ip	@ D.1832, D.1832
	sxth	r0, r0	@ D.1834, D.1834
	rsb	r0, r0, ip	@ tmp199, D.1834, D.1832
	cmp	r2, r0	@ D.1837, tmp199
	blt	.L93	@,
.L92:
	mvn	r0, #15	@ ret,
	b	.L82	@
.L93:
	add	lr, r1, #7	@ tmp227, pMemBase,
	mov	r2, #0	@ i,
	bic	r5, lr, #7	@ D.1645, tmp227,
	mov	r0, r2	@ tmp228, i
.L94:
	add	r1, r2, #1	@ tmp229, i,
	strb	r0, [r2, r5]	@ tmp228,* D.1645
	add	r2, r1, #1	@ i, tmp229,
	mov	r6, #0	@ tmp231,
	cmp	r2, #152	@ i,
	strb	r6, [r1, r5]	@ tmp231,* D.1645
	bne	.L94	@,
	mov	r2, #12	@,
	mov	r1, r3	@, pParams
	add	r0, r5, #4	@, D.1645,
	str	r3, [sp, #4]	@,
	bl	iMedia_AVC_memcpy	@
	ldr	r3, [sp, #4]	@,
	mov	r1, r5	@, D.1645
	mov	r0, r3	@, pParams
	bl	iMedia_AVC_Params_Prepare	@
	mov	r3, #67108864	@ tmp203,
	mov	r2, #2	@ tmp218,
	str	r6, [r5, #132]	@ tmp231, <variable>.iFrameNumUnderThd
	str	r2, [r5, #116]	@ tmp218, <variable>.iRateType
	movw	r1, #28000	@ tmp223,
	str	r3, [r5, #120]	@ tmp203, <variable>.iRateVal
	mov	ip, #154	@ tmp224,
	str	r1, [r5, #140]	@ tmp223, <variable>.iLimThred
	movw	r2, #:lower16:1096172361	@ tmp225,
	str	ip, [r5, #144]	@ tmp224, <variable>.iLimSlop
	movt	r2, #:upper16:1096172361	@ tmp225,
	str	r3, [r5, #56]	@ tmp203, <variable>.iRmsLast7Gain
	mov	r0, r6	@ ret, tmp231
	str	r2, [r5, #0]	@ tmp225, <variable>.uiStatus
	str	r3, [r5, #84]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #60]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #88]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #64]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #92]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #68]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #96]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #72]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #100]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #76]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #104]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #80]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #108]	@ tmp203, <variable>.iRmsLast7Gain
	str	r3, [r5, #112]	@ tmp203, <variable>.iRmsLastGain
	str	r6, [r5, #136]	@ tmp231, <variable>.iFrameNumUnderThd
	str	r6, [r5, #128]	@ tmp231, <variable>.iRmsThreshold
	str	r5, [r4, #0]	@ D.1645,* ppHandle
	b	.L82	@
	.fnend
	.size	iMedia_AVC_Init, .-iMedia_AVC_Init
	.align	2
	.global	iMedia_AVC_Apply
	.type	iMedia_AVC_Apply, %function
iMedia_AVC_Apply:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 2080
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r5, r0, #0	@ pHandle, pHandle
	.pad #2080
	sub	sp, sp, #2080	@,,
	mov	r4, r1	@ PcmIn, PcmIn
	.pad #4
	sub	sp, sp, #4	@,,
	mvneq	r8, #4	@ ret,
	bne	.L126	@,
.L101:
	mov	r0, r8	@, ret
	add	sp, sp, #36	@,,
	add	sp, sp, #2048	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L126:
	cmp	r1, #0	@ PcmIn,
	mvneq	r8, #17	@ ret,
	beq	.L101	@,
	tst	r1, #1	@ PcmIn,
	mvnne	r8, #18	@ ret,
	bne	.L101	@,
	cmp	r2, #0	@ PcmOut,
	mvneq	r8, #19	@ ret,
	beq	.L101	@,
	ands	r3, r2, #3	@ tmp207, PcmOut,
	mvnne	r8, #20	@ ret,
	bne	.L101	@,
	str	r3, [sp, #2072]	@ tmp207, flag_threshold
	movw	r1, #:lower16:1096172361	@ tmp210,
	str	r3, [sp, #2076]	@ tmp207, flag_threshold
	movt	r1, #:upper16:1096172361	@ tmp210,
	ldr	r0, [r5, #0]	@ <variable>.uiStatus, <variable>.uiStatus
	cmp	r0, r1	@ <variable>.uiStatus, tmp210
	mvnne	r8, #21	@ ret,
	bne	.L101	@,
	ldr	r8, [r5, #128]	@ <variable>.iRmsThreshold, <variable>.iRmsThreshold
	add	r6, sp, #2064	@ tmp261,,
	add	r6, r6, #8	@ tmp261, tmp261,
	mov	ip, r4	@ ivtmp.364, PcmIn
	mov	r9, r8, asr #31	@ D.1703
	mul	lr, r8, r9	@ tmp213, D.1703, D.1703
	umull	r8, r9, r8, r8	@ tmp215, D.1703, D.1703
	add	fp, r9, lr, asl #1	@,,, tmp213,
	mov	sl, fp, asl #8	@ RmsThreshold,,
	orr	r7, sl, r8, lsr #24	@, RmsThreshold, RmsThreshold, tmp215,
	mov	r9, r8, asl #8	@ RmsThreshold, tmp215,
	mov	fp, r7	@ RmsThreshold, RmsThreshold
	mov	sl, r9	@ RmsThreshold, RmsThreshold
.L108:
	add	r8, sp, #24	@,,
	mov	r0, #0	@,
	add	lr, r8, r3, asl #10	@, ivtmp.352,, i,
	mov	r1, #0	@,
	strd	r0, [sp, #16]	@,,
	mov	r0, ip	@ ivtmp.368, ivtmp.364
	mov	r1, r3	@ j, i
	strd	sl, [sp]	@ RmsThreshold, %sfp
.L107:
	ldrsh	fp, [r0], #4	@ tmp220,
	add	r1, r1, #2	@ j, j,
	movw	r7, #511	@,
	mov	r8, fp	@ D.1712, tmp220
	mov	r9, r8, asr #31	@ D.1712
	str	fp, [lr], #4	@ tmp220, InOutData
	mul	sl, r8, r9	@ tmp222, D.1712, D.1712
	umull	r8, r9, r8, r8	@ tmp224, D.1712, D.1712
	add	r9, r9, sl, asl #1	@,,, tmp222,
	ldrd	sl, [sp, #16]	@,,
	adds	sl, sl, r8	@,, tmp224
	adc	fp, fp, r9	@,,
	cmp	r1, r7	@ j,
	strd	sl, [sp, #16]	@,,
	ble	.L107	@,
	ldrd	r0, [sp, #16]	@,,
	add	ip, ip, #2	@ ivtmp.364, ivtmp.364,
	ldrd	sl, [sp]	@ RmsThreshold, %sfp
	cmp	sl, r0	@ RmsThreshold,
	sbcs	r1, fp, r1	@, RmsThreshold,
	movge	r1, #0	@, tmp228
	movlt	r1, #1	@, tmp228
	str	r1, [r6, r3, asl #2]	@ tmp228, flag_threshold
	add	r3, r3, #1	@ i, i,
	cmp	r3, #2	@ i,
	bne	.L108	@,
	add	r7, sp, #24	@ tmp229,,
	mov	r1, r5	@, pHandle
	str	r2, [sp, #12]	@,
	mov	r0, r7	@, tmp229
	bl	iMedia_AVC_Pro	@
	ldr	ip, [r5, #144]	@ iLimSlop, <variable>.iLimSlop
	ldr	r2, [sp, #12]	@,
	mov	r3, #0	@ ivtmp.342,
	mov	r8, r0	@ ret,
	ldr	r0, [r5, #140]	@ iLimThred, <variable>.iLimThred
	rsb	lr, r0, #0	@ tmp268, iLimThred
.L111:
	ldr	r1, [r7, r3]	@ D.1717, InOutData
	rsb	sl, r0, r1	@ tmp235, iLimThred, D.1717
	cmp	r0, r1	@ iLimThred, D.1717
	mul	sl, ip, sl	@ tmp236, iLimSlop, tmp235
	blt	.L125	@,
	add	fp, r1, r0	@ tmp242, D.1717, iLimThred
	cmp	r1, lr	@ D.1717, tmp268
	mul	sl, ip, fp	@ tmp243, iLimSlop, tmp242
	bge	.L110	@,
.L125:
	sub	r1, r1, sl, asr #8	@ tmp245, D.1717, tmp243,
	str	r1, [r7, r3]	@ tmp245, InOutData
.L110:
	add	r3, r3, #4	@ ivtmp.342, ivtmp.342,
	cmp	r3, #2048	@ ivtmp.342,
	bne	.L111	@,
	add	r7, sp, #24	@ ivtmp.329,,
	mov	sl, r2	@ ivtmp.366, PcmOut
	add	fp, r7, #1024	@ D.2211, ivtmp.329,
.L112:
	ldr	r0, [r7, #0]	@, InOutData
	str	r2, [sp, #12]	@,
	bl	iMedia_AVC_saturate_to_16bit	@
	strh	r0, [sl, #0]	@ movhi	@,* ivtmp.366
	ldr	r0, [r7, #1024]	@, InOutData
	add	r7, r7, #4	@ ivtmp.329, ivtmp.329,
	bl	iMedia_AVC_saturate_to_16bit	@
	cmp	r7, fp	@ ivtmp.329, D.2211
	strh	r0, [sl, #2]	@ movhi	@,
	add	sl, sl, #4	@ ivtmp.366, ivtmp.366,
	ldr	r2, [sp, #12]	@,
	bne	.L112	@,
	mov	r3, #0	@ ivtmp.320,
	movw	fp, #511	@ tmp263,
	mov	r1, r3	@ j.367, ivtmp.320
	mov	sl, r3	@ tmp265, ivtmp.320
.L117:
	ldr	ip, [r6, r1, asl #2]	@ tmp253,
	cmp	ip, #0	@ tmp253,
	strne	sl, [r5, #132]	@ tmp265, <variable>.iFrameNumUnderThd
	bne	.L114	@,
	ldr	r0, [r5, #132]	@ D.1860, <variable>.iFrameNumUnderThd
	cmp	r0, #1	@ D.1860,
	addle	r0, r0, #1	@ tmp255, D.1860,
	strle	r0, [r5, #132]	@ tmp255, <variable>.iFrameNumUnderThd
	ble	.L114	@,
	add	r7, r4, r3	@ ivtmp.307, PcmIn, ivtmp.320
	add	ip, r2, r3	@ ivtmp.309, PcmOut, ivtmp.320
	mov	r0, r1	@ j, j.367
.L116:
	add	r0, r0, #2	@ j, j,
	ldrh	r9, [r7], #4	@,
	cmp	r0, fp	@ j, tmp263
	strh	r9, [ip], #4	@ movhi	@,
	ble	.L116	@,
.L114:
	add	r1, r1, #1	@ j.367, j.367,
	add	r5, r5, #4	@ ivtmp.318, ivtmp.318,
	cmp	r1, #2	@ j.367,
	add	r3, r3, #2	@ ivtmp.320, ivtmp.320,
	bne	.L117	@,
	b	.L101	@
	.fnend
	.size	iMedia_AVC_Apply, .-iMedia_AVC_Apply
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	iMedia_AVC_Version, %object
	.size	iMedia_AVC_Version, 192
iMedia_AVC_Version:
@ ucCgtVersion:
	.ascii	"VC\000"
	.space	61
@ ucReleaseVer:
	.ascii	"iMedia Audio VC AVC Debug\000"
	.space	38
@ ucReleaseTime:
	.ascii	"19:42:22 Jun 15 2016\000"
	.space	43
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
