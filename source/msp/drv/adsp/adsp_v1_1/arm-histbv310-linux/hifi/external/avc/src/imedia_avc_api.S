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
	.file	"imedia_avc_api.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(imedia_avc_api)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_adsp)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/.imedia_avc_api.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_api.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/external/avc/src/imedia_avc_api.o
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
	.type	iMedia_AVC_Params_Check, %function
iMedia_AVC_Params_Check:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r0]	@ pParams_3(D)->sAttackTime, pParams_3(D)->sAttackTime
	movw	r2, #1980	@ tmp138,
	sub	r3, r3, #20	@ tmp136, pParams_3(D)->sAttackTime,
	uxth	r3, r3	@ tmp137, tmp136
	cmp	r3, r2	@ tmp137, tmp138
	bhi	.L3	@,
	ldrh	r3, [r0, #2]	@ pParams_3(D)->sReleaseTime, pParams_3(D)->sReleaseTime
	sub	r3, r3, #20	@ tmp141, pParams_3(D)->sReleaseTime,
	uxth	r3, r3	@ tmp142, tmp141
	cmp	r3, r2	@ tmp142, tmp138
	bhi	.L4	@,
	ldrh	r1, [r0, #4]	@ D.4680, pParams_3(D)->sStartLevel
	add	r3, r1, #40	@ tmp145, D.4680,
	uxth	r3, r3	@ tmp146, tmp145
	cmp	r3, #20	@ tmp146,
	bhi	.L5	@,
	ldrh	r2, [r0, #6]	@ D.4680, pParams_3(D)->sCornerLevel
	add	r3, r2, #39	@ tmp148, D.4680,
	uxth	r3, r3	@ tmp149, tmp148
	cmp	r3, #22	@ tmp149,
	bhi	.L6	@,
	ldrh	ip, [r0, #8]	@ D.4680, pParams_3(D)->sMaxGain
	cmp	ip, #22	@ D.4680,
	bhi	.L7	@,
	ldrh	r3, [r0, #10]	@ D.4680, pParams_3(D)->sTargetLevel
	add	r0, r3, #20	@ tmp152, D.4680,
	uxth	r0, r0	@ tmp153, tmp152
	cmp	r0, #14	@ tmp153,
	bhi	.L8	@,
	sxth	r1, r1	@ D.4680, D.4680
	sxth	r2, r2	@ D.4680, D.4680
	cmp	r1, r2	@ D.4680, D.4680
	bge	.L9	@,
	sxth	ip, ip	@ D.4682, D.4680
	sxth	r3, r3	@ D.4682, D.4680
	rsb	r3, ip, r3	@ D.4682, D.4682, D.4682
	cmp	r2, r3	@ D.4680, D.4682
	mvnge	r0, #15	@ D.4679,
	movlt	r0, #0	@ D.4679,
	bx	lr	@
.L3:
	mvn	r0, #9	@ D.4679,
	bx	lr	@
.L4:
	mvn	r0, #10	@ D.4679,
	bx	lr	@
.L5:
	mvn	r0, #11	@ D.4679,
	bx	lr	@
.L6:
	mvn	r0, #12	@ D.4679,
	bx	lr	@
.L7:
	mvn	r0, #13	@ D.4679,
	bx	lr	@
.L8:
	mvn	r0, #14	@ D.4679,
	bx	lr	@
.L9:
	mvn	r0, #15	@ D.4679,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_Params_Check, .-iMedia_AVC_Params_Check
	.align	2
	.type	iMedia_AVC_Params_Prepare, %function
iMedia_AVC_Params_Prepare:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0	@ tmp235,
	ldrsh	r3, [r0]	@ D.4804, pstParams_23(D)->sAttackTime
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pstParams, pstParams
	mov	r5, r1	@ pHandle, pHandle
	cmp	r3, r2	@ D.4804,
	str	r1, [sp, #8]	@ pHandle, %sfp
	str	r2, [sp, #20]	@ tmp235, sIn
	str	r2, [sp, #24]	@ tmp235, sIn
	strh	r2, [sp, #28]	@ movhi	@ tmp235, sIn
	strh	r2, [sp, #30]	@ movhi	@ tmp235, sOut
	strh	r2, [sp, #32]	@ movhi	@ tmp235, sOut
	strh	r2, [sp, #34]	@ movhi	@ tmp235, sOut
	strh	r2, [sp, #36]	@ movhi	@ tmp235, sOut
	strh	r2, [sp, #38]	@ movhi	@ tmp235, sOut
	ble	.L13	@,
	mov	r1, r3, asl #6	@ tmp254, D.4804,
	mov	r0, #67108864	@,
	sub	r1, r1, r3, asl #4	@, tmp254, D.4804,
	bl	iMedia_AVC_L_divide_Q	@
	str	r0, [r5, #48]	@, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].iAttackRate
	ldrsh	r3, [r4, #2]	@ D.4804, pstParams_23(D)->sReleaseTime
	cmp	r3, #0	@ D.4804,
	ble	.L15	@,
.L50:
	mov	r1, r3, asl #6	@ tmp261, D.4804,
	mov	r2, #0	@,
	sub	r1, r1, r3, asl #4	@, tmp261, D.4804,
	mov	r0, #67108864	@,
	bl	iMedia_AVC_L_divide_Q	@
	ldr	r3, [sp, #8]	@ pHandle, %sfp
	str	r0, [r3, #52]	@, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].iReleaseRate
.L16:
	ldr	r3, [sp, #8]	@ pHandle, %sfp
	add	lr, r3, #24	@ ivtmp.126, pHandle,
	add	r2, r3, #14	@ ivtmp.117, pHandle,
	add	ip, r3, #34	@ ivtmp.133, pHandle,
	mov	r3, #0	@ tmp334,
	mov	r1, lr	@ ivtmp.126, ivtmp.126
.L17:
	strh	r3, [r2, #2]!	@ movhi	@ tmp334, MEM[base: _177, offset: 0B]
	cmp	lr, r2	@ ivtmp.126, ivtmp.117
	strh	r3, [r1, #2]!	@ movhi	@ tmp334, MEM[base: _176, offset: 0B]
	mov	r0, #0	@ tmp265,
	strh	r3, [ip, #2]!	@ movhi	@ tmp334, MEM[base: _173, offset: 0B]
	bne	.L17	@,
	ldrh	lr, [r4, #10]	@ D.4804, pstParams_23(D)->sTargetLevel
	mvn	r1, #79	@ tmp271,
	ldrh	r5, [r4, #6]	@ D.4810, pstParams_23(D)->sCornerLevel
	ldrh	r2, [r4, #8]	@ D.4806, pstParams_23(D)->sMaxGain
	ldrh	r3, [r4, #4]	@ D.4804, pstParams_23(D)->sStartLevel
	add	ip, r2, r5	@ tmp275, D.4806, D.4810
	rsb	r2, r2, lr	@ tmp277, D.4806, D.4804
	strh	r2, [sp, #26]	@ movhi	@ tmp277, sIn
	cmp	r3, r0	@ D.4804,
	ldr	r2, [sp, #8]	@ pHandle, %sfp
	uxth	ip, ip	@ D.4810, tmp275
	strh	r0, [sp, #28]	@ movhi	@ tmp265, sIn
	strh	r5, [sp, #24]	@ movhi	@ D.4810, sIn
	strh	ip, [sp, #34]	@ movhi	@ D.4810, sOut
	strh	lr, [sp, #36]	@ movhi	@ D.4804, sOut
	strh	lr, [sp, #38]	@ movhi	@ D.4804, sOut
	strh	r3, [sp, #22]	@ movhi	@ D.4804, sIn
	strh	r3, [sp, #32]	@ movhi	@ D.4804, sOut
	strh	r1, [sp, #20]	@ movhi	@ tmp271, sIn
	strh	r1, [sp, #30]	@ movhi	@ tmp271, sOut
	strh	r1, [r2, #46]	@ movhi	@ tmp271, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].sInMin
	beq	.L37	@,
	movw	r6, #65456	@ D.4810,
	mov	r2, r3	@ D.4810, D.4804
	mov	r0, r6	@ D.4810, D.4810
	mov	r4, #4	@ iSegNum,
	mov	lr, #1	@ iSegNum,
	b	.L19	@
.L23:
	cmp	r4, lr	@ iSegNum, iSegNum
	ble	.L47	@,
.L27:
	add	r3, sp, #40	@ tmp371,,
	add	r2, r3, lr, lsl #1	@ tmp283, tmp371, iSegNum,
	ldrh	r3, [r2, #-20]	@ D.4804, sIn
	cmp	r3, #0	@ D.4804,
	beq	.L20	@,
	sub	ip, lr, #1	@ D.4809, iSegNum,
	add	r1, lr, #1	@ D.4805, iSegNum,
	add	r0, sp, #40	@ tmp372,,
	ldrh	r2, [r2, #-10]	@ D.4810, sOut
	add	ip, r0, ip, lsl #1	@ tmp289, tmp372, D.4809,
	add	r1, r0, r1, lsl #1	@ tmp292, tmp373, D.4805,
	ldrh	r6, [ip, #-20]	@ D.4810, sIn
	ldrh	r0, [ip, #-10]	@ D.4810, sOut
	ldrh	r5, [r1, #-20]	@ D.4810, sIn
	ldrh	ip, [r1, #-10]	@ D.4810, sOut
.L19:
	sxth	r8, r2	@ D.4805, D.4810
	sxth	r7, r3	@ D.4805, D.4804
	sxth	r2, r6	@ D.4805, D.4810
	sxth	r0, r0	@ D.4805, D.4810
	sxth	r3, r5	@ D.4805, D.4810
	sxth	r1, ip	@ D.4805, D.4810
	rsb	r6, r2, r7	@ D.4805, D.4805, D.4805
	rsb	r0, r0, r8	@ D.4805, D.4805, D.4805
	rsb	r3, r7, r3	@ D.4805, D.4805, D.4805
	rsb	r2, r8, r1	@ D.4805, D.4805, D.4805
	mul	r3, r3, r0	@ g1, D.4805, D.4805
	mul	r2, r6, r2	@ g2, D.4805, D.4805
	cmp	r3, r2	@ g1, g2
	addne	lr, lr, #1	@ iSegNum, iSegNum,
	bne	.L23	@,
	cmp	lr, r4	@ iSegNum, iSegNum
	bge	.L25	@,
	mov	r3, lr, asl #1	@ D.4808, iSegNum,
	add	r1, sp, #20	@ tmp376,,
	add	r0, sp, #30	@ tmp377,,
	add	r1, r1, r3	@ ivtmp.81, tmp376, D.4808
	mov	r2, lr	@ iSegNum, iSegNum
	add	r3, r0, r3	@ ivtmp.89, tmp377, D.4808
	b	.L26	@
.L48:
	ldrh	r5, [r1, #2]	@ D.4810, MEM[base: _19, offset: 2B]
	ldrh	ip, [r3, #2]	@ D.4810, MEM[base: _16, offset: 2B]
.L26:
	add	r2, r2, #1	@ iSegNum, iSegNum,
	strh	r5, [r1], #2	@ movhi	@ D.4810, MEM[base: _100, offset: 0B]
	cmp	r2, r4	@ iSegNum, iSegNum
	strh	ip, [r3], #2	@ movhi	@ D.4810, MEM[base: _91, offset: 0B]
	bne	.L48	@,
.L25:
	sub	r4, r4, #1	@ iSegNum, iSegNum,
	cmp	r4, lr	@ iSegNum, iSegNum
	bgt	.L27	@,
.L47:
	add	r3, r4, #1	@ D.4805, iSegNum,
	str	r3, [sp, #12]	@ D.4805, %sfp
.L21:
	cmp	r4, #0	@ iSegNum,
	ble	.L32	@,
.L28:
	add	r3, sp, #40	@ ivtmp.46,,
	ldrh	r6, [sp, #20]	@ D.4810, sIn
	ldr	r5, [sp, #8]	@ ivtmp.42, %sfp
	add	fp, sp, #20	@ ivtmp.54,,
	ldrh	r8, [r3, #-10]!	@ D.4810, sOut
	mov	r7, #0	@ j,
	str	r4, [sp, #4]	@ iSegNum, %sfp
	mov	r10, r3	@ ivtmp.46, ivtmp.46
.L31:
	ldrh	r9, [r10, #2]!	@ D.4804, MEM[base: _158, offset: 0B]
	sxth	r0, r8	@ D.4805, D.4810
	ldrh	r4, [fp, #2]!	@ D.4804, MEM[base: _157, offset: 0B]
	sxth	r1, r6	@ D.4805, D.4810
	strh	r6, [r5, #16]	@ movhi	@ D.4810, MEM[base: _159, offset: 16B]
	mov	r2, #8	@,
	sxth	ip, r9	@ D.4805, D.4804
	add	r7, r7, #1	@ j, j,
	rsb	r0, r0, ip	@, D.4805, D.4805
	sxth	ip, r4	@ D.4805, D.4804
	rsb	r1, r1, ip	@, D.4805, D.4805
	add	r5, r5, #2	@ ivtmp.42, ivtmp.42,
	bl	iMedia_AVC_L_divide_Q	@
	ldr	r3, [sp, #4]	@ iSegNum, %sfp
	cmp	r7, r3	@ j, iSegNum
	smulbb	r2, r6, r0	@ tmp321, D.4810, D.4805
	strh	r0, [r5, #24]	@ movhi	@ D.4805, MEM[base: _159, offset: 26B]
	uxth	r6, r4	@ D.4810, D.4804
	rsb	r2, r2, r8, lsl #8	@ tmp323, tmp321, D.4810,
	uxth	r8, r9	@ D.4810, D.4804
	strh	r2, [r5, #34]	@ movhi	@ tmp323, MEM[base: _159, offset: 36B]
	bne	.L31	@,
.L32:
	ldr	r3, [sp, #12]	@ D.4805, %sfp
	cmp	r3, #0	@ D.4805,
	ble	.L12	@,
	ldr	r3, [sp, #8]	@ pHandle, %sfp
	ldrsh	r3, [r3, #26]	@ MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].sk, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].sk
	cmp	r3, #256	@ MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].sk,
	bne	.L49	@,
	ldr	r3, [sp, #8]	@ pHandle, %sfp
	ldr	r0, [sp, #12]	@ D.4805, %sfp
	add	r2, r3, #26	@ ivtmp.25, pHandle,
	mov	r3, #0	@ j,
	b	.L35	@
.L36:
	ldrsh	r1, [r2, #2]!	@ MEM[base: _92, offset: 0B], MEM[base: _92, offset: 0B]
	cmp	r1, #256	@ MEM[base: _92, offset: 0B],
	bne	.L33	@,
.L35:
	add	r3, r3, #1	@ j, j,
	cmp	r3, r0	@ j, D.4805
	bne	.L36	@,
.L12:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L13:
	ldr	r2, [sp, #8]	@ pHandle, %sfp
	mov	r3, #67108864	@ tmp256,
	str	r3, [r2, #48]	@ tmp256, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].iAttackRate
	ldrsh	r3, [r4, #2]	@ D.4804, pstParams_23(D)->sReleaseTime
	cmp	r3, #0	@ D.4804,
	bgt	.L50	@,
.L15:
	ldr	r2, [sp, #8]	@ pHandle, %sfp
	mov	r3, #67108864	@ tmp263,
	str	r3, [r2, #52]	@ tmp263, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].iReleaseRate
	b	.L16	@
.L49:
	mov	r3, #0	@ j,
.L33:
	ldr	r2, [sp, #8]	@ pHandle, %sfp
	add	r3, r2, r3, lsl #1	@ tmp327, pHandle, j,
	ldrh	r3, [r3, #16]	@ tmp330, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].sx
	strh	r3, [r2, #46]	@ movhi	@ tmp330, MEM[(struct tagiMedia_AVC_STRU_REAL_PARAMS *)pHandle_18(D) + 16B].sInMin
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L20:
	add	r3, lr, #1	@ D.4805, iSegNum,
	mov	r4, lr	@ iSegNum, iSegNum
	str	r3, [sp, #12]	@ D.4805, %sfp
	b	.L21	@
.L37:
	mov	r3, #2	@ D.4805,
	mov	r4, #1	@ iSegNum,
	str	r3, [sp, #12]	@ D.4805, %sfp
	b	.L28	@
	.fnend
	.size	iMedia_AVC_Params_Prepare, .-iMedia_AVC_Params_Prepare
	.align	2
	.global	iMedia_AVC_GetSize
	.type	iMedia_AVC_GetSize, %function
iMedia_AVC_GetSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	ip, r0, #0	@ pstMemSize, pstMemSize
	beq	.L53	@,
	cmp	r1, #0	@ pstConf,
	beq	.L54	@,
	ldr	r2, [r1]	@ pstConf_5(D)->iSampleRate, pstConf_5(D)->iSampleRate
	movw	r3, #48000	@ tmp117,
	cmp	r2, r3	@ pstConf_5(D)->iSampleRate, tmp117
	bne	.L55	@,
	ldr	r3, [r1, #4]	@ pstConf_5(D)->iChannels, pstConf_5(D)->iChannels
	cmp	r3, #2	@ pstConf_5(D)->iChannels,
	bne	.L56	@,
	mov	r3, #160	@ tmp119,
	mov	r0, #0	@ D.4814,
	str	r3, [ip]	@ tmp119, pstMemSize_3(D)->uiStrSize
	bx	lr	@
.L55:
	mvn	r0, #2	@ D.4814,
	bx	lr	@
.L56:
	mvn	r0, #3	@ D.4814,
	bx	lr	@
.L53:
	mvn	r0, #0	@ D.4814,
	bx	lr	@
.L54:
	mvn	r0, #1	@ D.4814,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_GetSize, .-iMedia_AVC_GetSize
	.align	2
	.global	iMedia_AVC_Init
	.type	iMedia_AVC_Init, %function
iMedia_AVC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ppHandle
	beq	.L61	@,
	cmp	r1, #0	@ pMemBase,
	beq	.L62	@,
	cmp	r3, #0	@ pParams,
	beq	.L63	@,
	cmp	r2, #159	@ uiMemSize,
	bls	.L64	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ppHandle, ppHandle
	mov	r0, r3	@, pParams
	mov	r6, r3	@ pParams, pParams
	mov	r4, r1	@ pMemBase, pMemBase
	bl	iMedia_AVC_Params_Check	@
	cmp	r0, #0	@ ret
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	add	r4, r4, #7	@ D.4851, pMemBase,
	mov	ip, r0	@ tmp210, ret
	bic	r4, r4, #7	@ mem_target, D.4851,
	sub	r2, r4, #1	@ ivtmp.170, mem_target,
	add	lr, r4, #151	@ D.4853, mem_target,
.L59:
	strb	ip, [r2, #1]!	@ tmp210, MEM[base: 0B, index: ivtmp.170_43, offset: 0B]
	cmp	r2, lr	@ ivtmp.170, D.4853
	bne	.L59	@,
	mov	r2, #12	@,
	mov	r1, r6	@, pParams
	add	r0, r4, #4	@, mem_target,
	bl	iMedia_AVC_memcpy	@
	mov	r1, r4	@, mem_target
	mov	r0, r6	@, pParams
	bl	iMedia_AVC_Params_Prepare	@
	add	ip, r4, #80	@ ivtmp.158, mem_target,
	add	r3, r4, #52	@ ivtmp.149, mem_target,
	mov	r1, #67108864	@ tmp209,
	mov	r2, ip	@ ivtmp.158, ivtmp.158
.L60:
	str	r1, [r3, #4]!	@ tmp209, MEM[base: _48, offset: 0B]
	cmp	r3, ip	@ ivtmp.149, ivtmp.158
	str	r1, [r2, #4]!	@ tmp209, MEM[base: _49, offset: 0B]
	mov	r0, #67108864	@ tmp197,
	bne	.L60	@,
	mov	r3, #0	@ tmp202,
	movw	r2, #17225	@ tmp207,
	str	r0, [r4, #112]	@ tmp197, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iRmsLastGain
	movt	r2, 16726	@ tmp207,
	str	r0, [r4, #120]	@ tmp197, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iRateVal
	mov	ip, #2	@ tmp200,
	str	r2, [r4]	@ tmp207, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].uiStatus
	movw	r1, #28000	@ tmp205,
	str	r3, [r4, #132]	@ tmp202, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iFrameNumUnderThd
	mov	r2, #154	@ tmp206,
	str	r3, [r4, #136]	@ tmp202, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iFrameNumUnderThd
	mov	r0, r3	@ D.4850, tmp202
	str	r3, [r4, #128]	@ tmp202, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iRmsThreshold
	str	ip, [r4, #116]	@ tmp200, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iRateType
	str	r1, [r4, #140]	@ tmp205, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iLimThred
	str	r2, [r4, #144]	@ tmp206, MEM[(struct tagiMedia_AVC_STRU_CHAN *)mem_target_16].iLimSlop
	str	r4, [r5]	@ mem_target, *ppHandle_7(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L64:
	mvn	r0, #6	@ D.4850,
	bx	lr	@
.L63:
	mvn	r0, #7	@ D.4850,
	bx	lr	@
.L62:
	mvn	r0, #5	@ D.4850,
	bx	lr	@
.L61:
	mvn	r0, #4	@ D.4850,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_Init, .-iMedia_AVC_Init
	.align	2
	.global	iMedia_AVC_Apply
	.type	iMedia_AVC_Apply, %function
iMedia_AVC_Apply:
	.fnstart
	@ args = 0, pretend = 0, frame = 2064
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #2064
	sub	sp, sp, #2064	@,,
	.pad #4
	sub	sp, sp, #4	@,,
	subs	r9, r0, #0	@ pHandle, pHandle
	mov	r3, #0	@ tmp191,
	str	r3, [sp, #12]	@ tmp191, flag_threshold
	beq	.L86	@,
	cmp	r1, r3	@ PcmIn,
	mov	r5, r1	@ PcmIn, PcmIn
	beq	.L87	@,
	tst	r1, #1	@ PcmIn,
	bne	.L88	@,
	cmp	r2, r3	@ PcmOut,
	beq	.L89	@,
	ands	ip, r2, #3	@ D.4938, PcmOut,
	bne	.L90	@,
	ldr	r1, [r9]	@ MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].uiStatus, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].uiStatus
	movw	r3, #17225	@ tmp195,
	movt	r3, 16726	@ tmp195,
	cmp	r1, r3	@ MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].uiStatus, tmp195
	bne	.L91	@,
	ldr	r0, [r9, #128]	@ D.4937, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].iRmsThreshold
	mov	fp, #0	@ RmsThreshold,
	mov	r10, #0	@ RmsThreshold,
	mov	r7, fp	@ rms, RmsThreshold
	add	r4, sp, #12	@ ivtmp.199,,
	mov	r6, r10	@ rms, RmsThreshold
	smull	r0, r1, r0, r0	@ D.4939, D.4937, D.4937
	mov	lr, r4	@ ivtmp.245, ivtmp.199
	mov	fp, r1, asl #8	@ RmsThreshold, D.4939,
	mov	r10, r0, asl #8	@ RmsThreshold, D.4939,
	orr	fp, fp, r0, lsr #24	@ RmsThreshold, RmsThreshold, D.4939,
.L72:
	ldrh	r3, [r5, ip]	@ D.4935, MEM[base: PcmIn_18(D), index: ivtmp.243_127, offset: 0B]
	add	ip, ip, #4	@ ivtmp.243, ivtmp.243,
	cmp	ip, #1024	@ ivtmp.243,
	smlalbb	r6, r7, r3, r3	@ rms, D.4935, D.4935
	sxth	r3, r3	@ D.4935, D.4935
	str	r3, [lr, #4]!	@ D.4935, MEM[base: _33, offset: 0B]
	bne	.L72	@,
	cmp	r10, r6	@ RmsThreshold, rms
	add	ip, sp, #2048	@ D.4942,,
	sbcs	r3, fp, r7	@ tmp254, RmsThreshold, rms
	add	ip, ip, #12	@ D.4942, D.4942,
	add	r3, sp, #16	@ tmp257,,
	mov	r6, #0	@ rms,
	mov	r7, #0	@ rms,
	mov	r1, r5	@ ivtmp.232, PcmIn
	add	r0, r3, #1020	@ ivtmp.234, tmp257,
	movlt	r3, #1	@ D.4941,
	movge	r3, #0	@ D.4941,
	str	r3, [sp, #8]	@ D.4941, flag_threshold
.L73:
	ldrh	r3, [r1, #2]	@ D.4935, MEM[base: _121, offset: 2B]
	add	r1, r1, #4	@ ivtmp.232, ivtmp.232,
	sxth	lr, r3	@ D.4935, D.4935
	str	lr, [r0, #4]!	@ D.4935, MEM[base: _122, offset: 0B]
	cmp	r0, ip	@ ivtmp.234, D.4942
	smlalbb	r6, r7, r3, r3	@ rms, D.4935, D.4935
	bne	.L73	@,
	cmp	r10, r6	@ RmsThreshold, rms
	mov	r1, r9	@, pHandle
	sbcs	r3, fp, r7	@ tmp255, RmsThreshold, rms
	add	r0, sp, #16	@ tmp258,,
	str	ip, [sp, #4]	@ D.4942, %sfp
	mov	r8, r2	@ PcmOut, PcmOut
	movlt	r3, #1	@ D.4941,
	movge	r3, #0	@ D.4941,
	str	r3, [sp, #12]	@ D.4941, flag_threshold
	bl	iMedia_AVC_Pro	@
	mov	r1, r4	@ ivtmp.219, ivtmp.199
	ldr	lr, [r9, #144]	@ iLimSlop, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].iLimSlop
	ldr	ip, [sp, #4]	@ D.4942, %sfp
	mov	r6, r0	@ ret,
	ldr	r0, [r9, #140]	@ iLimThred, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].iLimThred
	rsb	r7, r0, #0	@ D.4937, iLimThred
	b	.L76	@
.L100:
	cmp	r1, ip	@ ivtmp.219, D.4942
	sub	r2, r3, r2, asr #8	@ D.4937, D.4937, D.4937,
	str	r2, [r1]	@ D.4937, MEM[base: _72, offset: 0B]
	beq	.L99	@,
.L76:
	ldr	r3, [r1, #4]!	@ D.4937, MEM[base: _72, offset: 0B]
	rsb	r2, r0, r3	@ D.4937, iLimThred, D.4937
	cmp	r0, r3	@ iLimThred, D.4937
	mul	r2, lr, r2	@ D.4937, iLimSlop, D.4937
	blt	.L100	@,
	add	r2, r0, r3	@ D.4937, iLimThred, D.4937
	cmp	r3, r7	@ D.4937, D.4937
	mul	r2, lr, r2	@ D.4937, iLimSlop, D.4937
	sublt	r3, r3, r2, asr #8	@ D.4937, D.4937, D.4937,
	strlt	r3, [r1]	@ D.4937, MEM[base: _72, offset: 0B]
	cmp	r1, ip	@ ivtmp.219, D.4942
	bne	.L76	@,
.L99:
	add	r3, sp, #16	@ tmp259,,
	mov	r7, r8	@ ivtmp.204, PcmOut
	add	r10, r3, #1020	@ ivtmp.206, tmp259,
	mov	fp, r10	@ D.4942, ivtmp.206
.L77:
	ldr	r0, [r4, #4]!	@, MEM[base: _94, offset: 0B]
	add	r7, r7, #4	@ ivtmp.204, ivtmp.204,
	bl	iMedia_AVC_saturate_to_16bit	@
	strh	r0, [r7, #-4]	@ movhi	@, MEM[base: _141, offset: 0B]
	ldr	r0, [r10, #4]!	@, MEM[base: _139, offset: 0B]
	bl	iMedia_AVC_saturate_to_16bit	@
	cmp	r4, fp	@ ivtmp.199, D.4942
	strh	r0, [r7, #-2]	@ movhi	@, MEM[base: _141, offset: 2B]
	bne	.L77	@,
	ldr	r3, [sp, #8]	@ MEM[(IMEDIA_INT32 *)&flag_threshold], MEM[(IMEDIA_INT32 *)&flag_threshold]
	cmp	r3, #0	@ MEM[(IMEDIA_INT32 *)&flag_threshold],
	movne	r3, #0	@ tmp236,
	strne	r3, [r9, #132]	@ tmp236, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].iFrameNumUnderThd
	bne	.L80	@,
	ldr	r2, [r9, #132]	@ D.4937, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D) + 132B]
	cmp	r2, #1	@ D.4937,
	addle	r2, r2, #1	@ D.4937, D.4937,
	strle	r2, [r9, #132]	@ D.4937, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D) + 132B]
	ble	.L80	@,
.L81:
	ldrh	r2, [r5, r3]	@ D.4935, MEM[base: PcmIn_18(D), index: ivtmp.189_140, offset: 0B]
	strh	r2, [r8, r3]	@ movhi	@ D.4935, MEM[base: PcmOut_21(D), index: ivtmp.189_140, offset: 0B]
	add	r3, r3, #4	@ ivtmp.189, ivtmp.189,
	cmp	r3, #1024	@ ivtmp.189,
	bne	.L81	@,
.L80:
	ldr	r3, [sp, #12]	@ MEM[(IMEDIA_INT32 *)&flag_threshold + 4B], MEM[(IMEDIA_INT32 *)&flag_threshold + 4B]
	cmp	r3, #0	@ MEM[(IMEDIA_INT32 *)&flag_threshold + 4B],
	movne	r3, #0	@ tmp238,
	strne	r3, [r9, #136]	@ tmp238, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D)].iFrameNumUnderThd
	bne	.L83	@,
	ldr	r2, [r9, #136]	@ D.4937, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D) + 136B]
	cmp	r2, #1	@ D.4937,
	addle	r2, r2, #1	@ D.4937, D.4937,
	strle	r2, [r9, #136]	@ D.4937, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_15(D) + 136B]
	ble	.L83	@,
.L85:
	add	r1, r5, r3	@ D.4945, PcmIn, ivtmp.181
	add	r2, r8, r3	@ D.4940, PcmOut, ivtmp.181
	add	r3, r3, #4	@ ivtmp.181, ivtmp.181,
	ldrh	r1, [r1, #2]	@ D.4935, MEM[base: _124, offset: 2B]
	cmp	r3, #1024	@ ivtmp.181,
	strh	r1, [r2, #2]	@ movhi	@ D.4935, MEM[base: _113, offset: 2B]
	bne	.L85	@,
.L83:
	mov	r0, r6	@ D.4936, ret
.L71:
	add	sp, sp, #2064	@,,
	add	sp, sp, #4	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L91:
	mvn	r0, #21	@ D.4936,
	b	.L71	@
.L88:
	mvn	r0, #18	@ D.4936,
	b	.L71	@
.L90:
	mvn	r0, #20	@ D.4936,
	b	.L71	@
.L86:
	mvn	r0, #4	@ D.4936,
	b	.L71	@
.L89:
	mvn	r0, #19	@ D.4936,
	b	.L71	@
.L87:
	mvn	r0, #17	@ D.4936,
	b	.L71	@
	.fnend
	.size	iMedia_AVC_Apply, .-iMedia_AVC_Apply
	.align	2
	.global	iMedia_AVC_SetParams
	.type	iMedia_AVC_SetParams, %function
iMedia_AVC_SetParams:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pHandle
	beq	.L104	@,
	cmp	r1, #0	@ pParams,
	beq	.L105	@,
	ldr	r2, [r0]	@ MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].uiStatus, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].uiStatus
	movw	r3, #17225	@ tmp124,
	movt	r3, 16726	@ tmp124,
	cmp	r2, r3	@ MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].uiStatus, tmp124
	bne	.L106	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pHandle, pHandle
	mov	r0, r1	@, pParams
	mov	r5, r1	@ pParams, pParams
	bl	iMedia_AVC_Params_Check	@
	cmp	r0, #0	@ ret
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r2, #12	@,
	mov	r1, r5	@, pParams
	add	r0, r4, #4	@, pHandle,
	bl	iMedia_AVC_memcpy	@
	mov	r1, r4	@, pHandle
	mov	r0, r5	@, pParams
	bl	iMedia_AVC_Params_Prepare	@
	add	ip, r4, #80	@ ivtmp.266, pHandle,
	add	r3, r4, #52	@ ivtmp.257, pHandle,
	mov	r1, #67108864	@ tmp138,
	mov	r2, ip	@ ivtmp.266, ivtmp.266
.L103:
	str	r1, [r3, #4]!	@ tmp138, MEM[base: _34, offset: 0B]
	cmp	r3, ip	@ ivtmp.257, ivtmp.266
	str	r1, [r2, #4]!	@ tmp138, MEM[base: _35, offset: 0B]
	mov	r0, #67108864	@ tmp127,
	bne	.L103	@,
	mov	r3, #0	@ tmp132,
	str	r0, [r4, #112]	@ tmp127, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iRmsLastGain
	str	r0, [r4, #120]	@ tmp127, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iRateVal
	mov	r1, #2	@ tmp130,
	mov	r0, r3	@ D.4969, tmp132
	str	r3, [r4, #132]	@ tmp132, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iFrameNumUnderThd
	str	r3, [r4, #136]	@ tmp132, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iFrameNumUnderThd
	movw	r2, #28000	@ tmp135,
	str	r3, [r4, #128]	@ tmp132, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iRmsThreshold
	mov	r3, #154	@ tmp136,
	str	r1, [r4, #116]	@ tmp130, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iRateType
	str	r2, [r4, #140]	@ tmp135, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iLimThred
	str	r3, [r4, #144]	@ tmp136, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_5(D)].iLimSlop
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L106:
	mvn	r0, #21	@ D.4969,
	bx	lr	@
.L104:
	mvn	r0, #4	@ D.4969,
	bx	lr	@
.L105:
	mvn	r0, #7	@ D.4969,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_SetParams, .-iMedia_AVC_SetParams
	.align	2
	.global	iMedia_AVC_GetParams
	.type	iMedia_AVC_GetParams, %function
iMedia_AVC_GetParams:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ pHandle, pHandle
	beq	.L113	@,
	cmp	r1, #0	@ pParams,
	beq	.L114	@,
	ldr	r0, [r3]	@ MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_3(D)].uiStatus, MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_3(D)].uiStatus
	movw	r2, #17225	@ tmp116,
	movt	r2, 16726	@ tmp116,
	cmp	r0, r2	@ MEM[(struct tagiMedia_AVC_STRU_CHAN *)pHandle_3(D)].uiStatus, tmp116
	bne	.L115	@,
	mov	r0, r1	@ pParams, pParams
	mov	r2, #12	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r1, r3, #4	@, pHandle,
	bl	iMedia_AVC_memcpy	@
	mov	r0, #0	@ D.4976,
	ldmfd	sp!, {r4, pc}	@
.L115:
	mvn	r0, #21	@ D.4976,
	bx	lr	@
.L113:
	mvn	r0, #4	@ D.4976,
	bx	lr	@
.L114:
	mvn	r0, #7	@ D.4976,
	bx	lr	@
	.fnend
	.size	iMedia_AVC_GetParams, .-iMedia_AVC_GetParams
	.align	2
	.global	iMedia_AVC_GetVersion
	.type	iMedia_AVC_GetVersion, %function
iMedia_AVC_GetVersion:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ ppVersion, ppVersion
	ldrne	r2, .L121	@ tmp113,
	movne	r0, #0	@ D.4981,
	mvneq	r0, #22	@ D.4981,
	strne	r2, [r3]	@ tmp113, *ppVersion_3(D)
	bx	lr	@
.L122:
	.align	2
.L121:
	.word	.LANCHOR0
	.fnend
	.size	iMedia_AVC_GetVersion, .-iMedia_AVC_GetVersion
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
	.ascii	"19:25:12 Mar 29 2017\000"
	.space	43
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
