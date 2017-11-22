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
	.file	"vc1.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I arch/arm/include/generated/uapi -I arch/arm/include/generated
@ -I include -I ./arch/arm/include/uapi -I arch/arm/include/generated/uapi
@ -I ./include/uapi -I include/generated/uapi
@ -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV310 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vc1)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vc1.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.o
@ -g0 -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-maybe-uninitialized
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Wformat=1 -Wformat-security -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -fno-ipa-sra
@ -funwind-tables -fomit-frame-pointer -fno-var-tracking-assignments
@ -fno-strict-overflow -fconserve-stack -fno-pic -fstack-protector
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
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
	.type	VC1_Vfmw_GenerateIntensityMap, %function
VC1_Vfmw_GenerateIntensityMap:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #31	@ LUMSHIFT,
	subgt	r2, r2, #64	@ LUMSHIFT, LUMSHIFT,
	cmp	r1, #0	@ LUMSCALE,
	addne	ip, r1, #32	@ iScale, LUMSCALE,
	moveq	r2, r2, asl #7	@ tmp176, LUMSHIFT,
	mvneq	ip, #63	@ iScale,
	rsbeq	r2, r2, #16320	@ iShift, tmp176,
	movne	r2, r2, asl #6	@ iShift, LUMSHIFT,
	cmp	r3, #0	@ YcFlg,
	bne	.L13	@,
	add	r3, r2, #32	@ ivtmp.122, iShift,
	sub	r2, r0, #1	@ ivtmp.126, pLUTable,
	add	r0, r0, #255	@ D.41025, pLUTable,
.L5:
	usat	r1, #8, r3, asr #6	@ j,, ivtmp.122,
	strb	r1, [r2, #1]!	@ j, MEM[base: _19, offset: 0B]
	cmp	r2, r0	@ ivtmp.126, D.41025
	add	r3, r3, ip	@ ivtmp.122, ivtmp.122, iScale
	bne	.L5	@,
	bx	lr	@
.L13:
	mov	r3, ip, asl #7	@ tmp183, iScale,
	sub	r2, r0, #1	@ ivtmp.140, pLUTable,
	rsb	r3, r3, #8192	@ ivtmp.136, tmp183,
	add	r0, r0, #255	@ D.41025, pLUTable,
	add	r3, r3, #32	@ ivtmp.136, ivtmp.136,
.L6:
	usat	r1, #8, r3, asr #6	@ j,, ivtmp.136,
	strb	r1, [r2, #1]!	@ j, MEM[base: _5, offset: 0B]
	cmp	r2, r0	@ ivtmp.140, D.41025
	add	r3, r3, ip	@ ivtmp.136, ivtmp.136, iScale
	bne	.L6	@,
	bx	lr	@
	.fnend
	.size	VC1_Vfmw_GenerateIntensityMap, .-VC1_Vfmw_GenerateIntensityMap
	.align	2
	.type	VC1_Vfmw_UpdataLastPicRNDCTRL.part.4, %function
VC1_Vfmw_UpdataLastPicRNDCTRL.part.4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #8192	@ tmp130, pCodecInf,
	ldrb	r3, [r2, #2411]	@ zero_extendqisi2	@ D.41032, pCodecInf_1(D)->SMPPicSyntax.PTYPE
	tst	r3, #251	@ D.41032,
	moveq	r3, #1	@ D.41032,
	moveq	r1, r3	@ D.41033, D.41032
	beq	.L15	@,
	cmp	r3, #1	@ D.41032,
	ldreqsb	r3, [r0, #10]	@ pCodecInf_1(D)->LastPicRNDCTRL, pCodecInf_1(D)->LastPicRNDCTRL
	ldrneb	r1, [r0, #10]	@ zero_extendqisi2	@ D.41033, pCodecInf_1(D)->LastPicRNDCTRL
	clzeq	r3, r3	@ D.41034, pCodecInf_1(D)->LastPicRNDCTRL
	moveq	r3, r3, lsr #5	@ D.41034, D.41034,
	uxtbne	r3, r1	@ D.41032, D.41033
	uxtbeq	r1, r3	@ D.41033, D.41034
.L15:
	strb	r1, [r0, #10]	@ D.41033, pCodecInf_1(D)->LastPicRNDCTRL
	strb	r3, [r2, #2430]	@ D.41032, pCodecInf_1(D)->SMPPicSyntax.RNDCTRL
	bx	lr	@
	.fnend
	.size	VC1_Vfmw_UpdataLastPicRNDCTRL.part.4, .-VC1_Vfmw_UpdataLastPicRNDCTRL.part.4
	.align	2
	.global	emp_print
	.type	emp_print, %function
emp_print:
	.fnstart
	@ args = 4, pretend = 12, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 1
	@ link register save eliminated.
	stmfd	sp!, {r1, r2, r3}	@,
	.save {r1, r2, r3}
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	bx	lr	@
	.fnend
	.size	emp_print, .-emp_print
	.align	2
	.global	VC1DEC_Init
	.type	VC1DEC_Init, %function
VC1DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #110592	@ tmp140, pCtx,
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #48192	@,
	ldr	r8, [r4, #3120]	@ D.41040, pCtx_4(D)->ImageQue.ResetMagicWord
	movt	r1, 1	@,
	mov	r7, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r7, #112640	@, pCtx,
	mov	r6, #1	@ tmp148,
	add	r0, r0, #728	@,,
	str	r8, [r4, #3120]	@ D.41040, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	add	r2, r7, #77824	@ tmp147, pCtx,
	str	r5, [r7]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r1, #0	@ tmp186,
	strb	r6, [r2, #457]	@ tmp148, pCtx_4(D)->CodecInfo.LastIs2ndFld
	mov	r0, r7	@, pCtx
	ldr	r3, [r5, #8]	@ pstExtraData_10(D)->s32DecMode, pstExtraData_10(D)->s32DecMode
	str	r3, [r4, #2732]	@ pstExtraData_10(D)->s32DecMode, pCtx_4(D)->CodecInfo.UsedDecMode
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	str	r3, [r4, #2704]	@ pstExtraData_10(D)->s32BpdMemAddr, pCtx_4(D)->CodecInfo.MVTYPEMB_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #2048	@ D.41042, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2708]	@ D.41042, pCtx_4(D)->CodecInfo.SKIPMB_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #4096	@ D.41042, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2712]	@ D.41042, pCtx_4(D)->CodecInfo.DIRECTMB_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #6144	@ D.41042, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2716]	@ D.41042, pCtx_4(D)->CodecInfo.ACPRED_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #8192	@ D.41042, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2720]	@ D.41042, pCtx_4(D)->CodecInfo.OVERFLAGS_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #10240	@ D.41042, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2724]	@ D.41042, pCtx_4(D)->CodecInfo.FIELDTX_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #12288	@ D.41042, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2728]	@ D.41042, pCtx_4(D)->CodecInfo.FORWARDMB_ADDR
	strb	r6, [r2, #458]	@ tmp148, pCtx_4(D)->CodecInfo.LastPicRNDCTRL
	str	r6, [r4, #3132]	@ tmp148, pCtx_4(D)->DSDNeedClearQue
	str	r1, [r4, #2664]	@ tmp186, pCtx_4(D)->CodecInfo.PPicFound
	str	r1, [r4, #2668]	@ tmp186, pCtx_4(D)->CodecInfo.BPicCount
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.41042,
	str	r0, [r4, #3128]	@ D.41042, pCtx_4(D)->ChanID
	beq	.L24	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.41039, tmp148
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L24:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.41039,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VC1DEC_Init, .-VC1DEC_Init
	.align	2
	.global	Vc1SMPSeqHdr
	.type	Vc1SMPSeqHdr, %function
Vc1SMPSeqHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r2	@ pVc1Info, pVc1Info
	mov	r2, r1, asl #3	@, ByteLen,
	mov	r1, r0	@, pBitBuf
	add	r0, sp, #4	@ tmp243,,
	bl	BsInit	@
	mov	r1, #8	@,
	add	r0, sp, #4	@ tmp244,,
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r5, r0	@ data,
	add	r0, sp, #4	@ tmp245,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #8	@ data, data,,
	add	r0, sp, #4	@ tmp246,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #16	@ data, data,,
	add	r0, sp, #4	@ tmp247,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #24	@ data, data,,
	add	r0, sp, #4	@ tmp248,,
	str	r5, [r4, #24]	@ data, pVc1Info_4(D)->FrmWidth
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r5, r0	@ data,
	add	r0, sp, #4	@ tmp249,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #8	@ data, data,,
	add	r0, sp, #4	@ tmp250,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #16	@ data, data,,
	add	r0, sp, #4	@ tmp251,,
	bl	BsGet	@
	ldr	r3, [r4, #24]	@ pVc1Info_4(D)->FrmWidth, pVc1Info_4(D)->FrmWidth
	movw	r2, #8160	@ tmp196,
	sub	r3, r3, #32	@ D.41047, pVc1Info_4(D)->FrmWidth,
	cmp	r3, r2	@ D.41047, tmp196
	add	r0, r5, r0, lsl #24	@ data, data,,
	str	r0, [r4, #28]	@ data, pVc1Info_4(D)->FrmHeight
	bhi	.L28	@,
	sub	r0, r0, #32	@ D.41047, data,
	cmp	r0, r2	@ D.41047, tmp196
	bhi	.L28	@,
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp252,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.41048,
	strb	r0, [r4, #3]	@ D.41048, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE
	cmp	r0, #1	@ D.41048,
	bhi	.L28	@,
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp253,,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L28	@,
	mov	r1, #3	@,
	add	r0, sp, #4	@ tmp254,,
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #4]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].FRMRTQ
	add	r0, sp, #4	@ tmp255,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #5]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].BITRTQ
	add	r0, sp, #4	@ tmp256,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #6]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].LOOPFILTER
	add	r0, sp, #4	@ tmp257,,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L28	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp258,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #7]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].MULTIRES
	add	r0, sp, #4	@ tmp259,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #8]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].B16BITTRANSFORM
	add	r0, sp, #4	@ tmp260,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #9]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].FASTUVMC
	add	r0, sp, #4	@ tmp261,,
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #10]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].EXTENDED_MV
	add	r0, sp, #4	@ tmp262,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #11]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].DQUANT
	add	r0, sp, #4	@ tmp263,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #12]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].VSTRANSFORM
	add	r0, sp, #4	@ tmp264,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.41045,
	bne	.L28	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp265,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #13]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].OVERLAP
	add	r0, sp, #4	@ tmp266,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #14]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].SYNCMARKER
	add	r0, sp, #4	@ tmp267,,
	bl	BsGet	@
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE
	mov	r1, #3	@,
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE,
	strb	r0, [r4, #15]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].RANGERED
	add	r0, sp, #4	@ tmp268,,
	streqb	r5, [r4, #15]	@ D.41045, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].RANGERED
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #16]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].MAXBFRAMES
	add	r0, sp, #4	@ tmp269,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #17]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].QUANTIZER
	add	r0, sp, #4	@ tmp270,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #18]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].FINTERPFLAG
	add	r0, sp, #4	@ tmp271,,
	bl	BsGet	@
	mov	r1, #32	@,
	add	r0, sp, #4	@ tmp272,,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L34	@,
	mov	r0, r5	@, D.41045
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L34:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, D.41045
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L28:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #0	@ D.41045,
	mov	r0, r5	@, D.41045
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	Vc1SMPSeqHdr, .-Vc1SMPSeqHdr
	.align	2
	.global	VC1_SetImgFormat
	.type	VC1_SetImgFormat, %function
VC1_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r0, #110592	@ tmp158, pCtx,
	add	r5, r0, #98304	@ tmp212, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	add	r7, r0, #77824	@ tmp153, pCtx,
	ldr	r0, [r3, #3128]	@, pCtx_5(D)->ChanID
	ldr	r1, [r5, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r3, #1	@ tmp160,
	str	r3, [r4, #300]	@ tmp160, pImg_10->ImageDnr.video_standard
	ldrb	r3, [r7, #451]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].Last_Struct_IPB, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].Last_Struct_IPB
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].Last_Struct_IPB,
	movne	r2, #0	@ tmp173,
	movne	r3, #7168	@ tmp175,
	strneb	r2, [r4, #288]	@ tmp173, pImg_10->ImageDnr.pic_structure
	beq	.L47	@,
.L46:
	str	r3, [r4, #140]	@ tmp175, pImg_10->format
	mov	r1, #0	@,
	ldr	r3, [r5, #2548]	@ D.41053, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicHeight
	mov	r0, r4	@, pImg
	str	r3, [r4, #148]	@ D.41053, pImg_10->image_height
	ldr	r3, [r5, #2544]	@ D.41053, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicWidth
	str	r3, [r4, #144]	@ D.41053, pImg_10->image_width
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_5(D)->pstExtraData, pCtx_5(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _35->eCapLevel, _35->eCapLevel
	cmp	r3, #25	@ _35->eCapLevel,
	beq	.L48	@,
.L40:
	ldr	r1, [r5, #2548]	@ D.41053, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicHeight
	mov	r3, #8	@ tmp207,
	mov	r2, #1	@ tmp205,
	str	r1, [r4, #156]	@ D.41053, pImg_10->disp_height
	ldr	r1, [r5, #2544]	@ D.41053, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicWidth
	strb	r2, [r4, #295]	@ tmp205, pImg_10->ImageDnr.use_pic_qp_en
	strb	r2, [r4, #293]	@ tmp205, pImg_10->ImageDnr.chroma_format_idc
	str	r1, [r4, #152]	@ D.41053, pImg_10->disp_width
	str	r3, [r4, #304]	@ tmp207, pImg_10->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp207, pImg_10->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp207, pImg_10->ImageDnr.QP_U
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L47:
	mov	r2, #4	@ tmp166,
	ldr	r3, [r4, #140]	@ pImg_10->format, pImg_10->format
	strb	r2, [r4, #288]	@ tmp166, pImg_10->ImageDnr.pic_structure
	ldrb	r1, [r6, #16]	@ zero_extendqisi2	@ D.41051, pCtx_5(D)->Vc1DecParam.curparity
	ubfx	r2, r3, #10, #2	@ fldflg, pImg_10->format,,
	add	r3, r1, #1	@ D.41051, D.41051,
	orr	r3, r3, r2	@ fldflg, D.41051, fldflg
	cmp	r3, #3	@ fldflg,
	movls	r3, r3, asl #10	@ D.41053, fldflg,
	orrls	r3, r3, #4352	@ D.41053, D.41053,
	movhi	r3, #4352	@ D.41053,
	b	.L46	@
.L48:
	ldr	r2, [r4, #148]	@ pImg_10->image_height, pImg_10->image_height
	ldr	r1, [r4, #172]	@ D.41053, pImg_10->image_stride
	add	r2, r2, #15	@ D.41053, pImg_10->image_height,
	ldr	r0, [r4, #104]	@ D.41053, pImg_10->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.41057, pImg_10->luma_vir_addr
	mov	r2, r2, lsr #4	@ D.41053, D.41053,
	mov	r3, r1, asl #5	@ D.41053, D.41053,
	add	r2, r2, #1	@ D.41053, D.41053,
	add	lr, r1, r0	@ D.41051, D.41053, D.41053
	str	r0, [r4, #88]	@ D.41053, pImg_10->top_luma_phy_addr
	mov	r2, r2, lsr #1	@ D.41053, D.41053,
	str	r0, [r4, #120]	@ D.41053, pImg_10->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.41051, pImg_10->btm_luma_phy_addr
	mul	r3, r2, r3	@ D.41053, D.41053, D.41053
	str	ip, [r4, #48]	@ D.41057, pImg_10->luma_2d_vir_addr
	add	r0, r3, r0	@ D.41053, D.41053, D.41053
	add	r3, ip, r3	@ D.41057, D.41057, D.41053
	add	r1, r1, r0	@ D.41051, D.41053, D.41053
	str	r3, [r4, #36]	@ D.41057, pImg_10->chrom_vir_addr
	str	r0, [r4, #108]	@ D.41053, pImg_10->chrom_phy_addr
	str	r0, [r4, #92]	@ D.41053, pImg_10->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.41051, pImg_10->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_10->top_chrom_phy_addr, pImg_10->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_10->top_chrom_phy_addr, pImg_10->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_10->chrom_2d_vir_addr
	b	.L40	@
	.fnend
	.size	VC1_SetImgFormat, .-VC1_SetImgFormat
	.align	2
	.global	VC1DEC_RecycleImage
	.type	VC1DEC_RecycleImage, %function
VC1DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #110592	@ tmp122, pCtx,
	mov	r5, r1	@ img_id, img_id
	mov	r2, #0	@,
	ldr	r0, [r4, #3128]	@, pCtx_2(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, img_id
	ldr	r0, [r4, #3128]	@, pCtx_2(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L50	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp131,
	ldr	r0, [r4, #3128]	@, pCtx_2(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp131, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_2(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp131, pImg_10->p_usrdat
.L50:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VC1DEC_RecycleImage, .-VC1DEC_RecycleImage
	.align	2
	.global	VC1DEC_GetRemainImg
	.type	VC1DEC_GetRemainImg, %function
VC1DEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r4, r0, #98304	@ tmp143, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r7, r0, #77824	@ tmp141, pCtx,
	ldr	r3, [r4, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].pRef
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].pRef,
	beq	.L62	@,
	ldr	r3, [r0]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _11->s32DecOrderOutput, _11->s32DecOrderOutput
	cmp	r3, #1	@ _11->s32DecOrderOutput,
	addeq	r4, r0, #112640	@ tmp208, pCtx,
	beq	.L57	@,
	add	r6, r0, #110592	@ tmp207, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L74	@,
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pCtx_8(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L71	@,
.L74:
	add	r4, r5, #112640	@ tmp208, pCtx,
.L57:
	add	r7, r4, #728	@ D.41065, tmp208,
.L61:
	mov	r0, r7	@, D.41065
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@
	b	GetVoLastImageID	@
.L71:
	mov	r0, r5	@, pCtx
	mov	r9, #0	@ tmp164,
	bl	VC1_SetImgFormat	@
	mov	r3, #1	@ tmp163,
	mov	r2, r3	@, tmp163
	str	r3, [r8, #224]	@ tmp163, pImg_16->last_frame
	str	r9, [r8, #192]	@ tmp164, pImg_16->p_usrdat
	str	r9, [r8, #196]	@ tmp164, pImg_16->p_usrdat
	ldr	r1, [r8, #176]	@, pImg_16->image_id
	ldr	r0, [r6, #3128]	@, pCtx_8(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #2516]	@ D.41066, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].pRef
	mov	r1, #1	@,
	ldrb	r2, [r3]	@ zero_extendqisi2	@ _29->is_to_ref, _29->is_to_ref
	cmp	r2, #1	@ _29->is_to_ref,
	streqb	r2, [r3, #1]	@ _29->is_to_ref, _29->is_to_display
	ldreq	r2, [r4, #2516]	@ D.41066, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].pRef
	add	r4, r5, #112640	@ tmp208, pCtx,
	moveq	r3, #3	@ tmp185,
	streqb	r9, [r2]	@ tmp164, _32->is_to_ref
	mov	r2, r5	@, pCtx
	streqb	r3, [r7, #449]	@ tmp185, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].RefId
	add	r7, r4, #728	@ D.41065, tmp208,
	ldr	r0, [r6, #3128]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	mov	r3, r7	@, D.41065
	str	r8, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L59	@,
	ldr	r1, [r8, #176]	@, pImg_16->image_id
	mov	r0, r5	@, pCtx
	bl	VC1DEC_RecycleImage	@
	ldr	r1, [r8, #192]	@, pImg_16->p_usrdat
	ldr	r0, [r6, #3128]	@, pCtx_8(D)->ChanID
	mov	r4, #0	@ tmp196,
	bl	FreeUsdByDec	@
	str	r4, [r8, #192]	@ tmp196, pImg_16->p_usrdat
	ldr	r1, [r8, #196]	@, pImg_16->p_usrdat
	ldr	r0, [r6, #3128]	@, pCtx_8(D)->ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #196]	@ tmp196, pImg_16->p_usrdat
	b	.L61	@
.L59:
	ldr	r3, [r8, #180]	@ pImg_16->error_level, pImg_16->error_level
	cmp	r3, #100	@ pImg_16->error_level,
	bhi	.L57	@,
	ldr	r3, [r8, #144]	@ pImg_16->image_width, pImg_16->image_width
	cmp	r3, #31	@ pImg_16->image_width,
	bls	.L57	@,
	ldr	r3, [r8, #148]	@ pImg_16->image_height, pImg_16->image_height
	cmp	r3, #31	@ pImg_16->image_height,
	movhi	r0, #0	@ ret,
	bls	.L61	@,
.L72:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L62:
	mvn	r0, #0	@ ret,
	b	.L72	@
	.fnend
	.size	VC1DEC_GetRemainImg, .-VC1DEC_GetRemainImg
	.align	2
	.type	VC1_FlushFrameToVo.part.0, %function
VC1_FlushFrameToVo.part.0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #110592	@ tmp130, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r0, [r4, #3128]	@, pCtx_1(D)->ChanID
	mov	r5, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L77	@,
	mov	r1, r5	@, FsID
	ldr	r0, [r4, #3128]	@, pCtx_1(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L81	@,
.L76:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L81:
	mov	r0, r6	@, pCtx
	mov	r5, #0	@ tmp135,
	bl	VC1_SetImgFormat	@
	str	r5, [r7, #192]	@ tmp135, pImg_4->p_usrdat
	str	r5, [r7, #196]	@ tmp135, pImg_4->p_usrdat
	mov	r2, #1	@,
	ldr	r0, [r4, #3128]	@, pCtx_1(D)->ChanID
	ldr	r1, [r7, #176]	@, pImg_4->image_id
	bl	FSP_SetDisplay	@
	add	r3, r6, #112640	@, pCtx,
	ldr	r0, [r4, #3128]	@ pCtx_1(D)->ChanID, pCtx_1(D)->ChanID
	mov	r2, r6	@, pCtx
	add	r3, r3, #728	@,,
	mov	r1, #1	@,
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r5	@ ret, tmp135
	beq	.L76	@,
	ldr	r1, [r7, #176]	@, pImg_4->image_id
	mov	r0, r6	@, pCtx
	bl	VC1DEC_RecycleImage	@
	ldr	r1, [r7, #192]	@, pImg_4->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_1(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r7, #192]	@ tmp135, pImg_4->p_usrdat
	ldr	r1, [r7, #196]	@, pImg_4->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_1(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r7, #196]	@ tmp135, pImg_4->p_usrdat
	mvn	r0, #0	@ ret,
	b	.L76	@
.L77:
	mvn	r0, #0	@ ret,
	b	.L76	@
	.fnend
	.size	VC1_FlushFrameToVo.part.0, .-VC1_FlushFrameToVo.part.0
	.align	2
	.global	VC1_ArrangeVahbMem
	.type	VC1_ArrangeVahbMem, %function
VC1_ArrangeVahbMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r1	@ ImgWidth, ImgWidth
	sub	r1, r1, #32	@ D.41106, ImgWidth,
	movw	r3, #8160	@ tmp196,
	cmp	r1, r3	@ D.41106, tmp196
	.pad #44
	sub	sp, sp, #44	@,,
	bhi	.L89	@,
	mov	r7, r2	@ ImgHeight, ImgHeight
	sub	r2, r2, #32	@ D.41106, ImgHeight,
	cmp	r2, r3	@ D.41106, tmp196
	bhi	.L89	@,
	add	r3, r0, #93184	@ ivtmp.163, pVc1Ctx,
	mov	ip, #0	@ ivtmp.162,
	add	r3, r3, #472	@ ivtmp.163, ivtmp.163,
	mov	r6, r0	@ pVc1Ctx, pVc1Ctx
	mov	lr, ip	@ tmp249, ivtmp.162
.L86:
	str	ip, [r3, #-224]	@ ivtmp.162, MEM[base: _100, offset: 4294967072B]
	add	ip, ip, #1	@ ivtmp.162, ivtmp.162,
	cmp	ip, #5	@ ivtmp.162,
	strb	lr, [r3, #-1431]	@ tmp249, MEM[base: _100, offset: 4294965865B]
	strb	lr, [r3, #-1432]	@ tmp249, MEM[base: _100, offset: 4294965864B]
	add	r3, r3, #1424	@ ivtmp.163, ivtmp.163,
	add	r3, r3, #8	@ ivtmp.163, ivtmp.163,
	bne	.L86	@,
	ldr	r3, [r6]	@ D.41107, pVc1Ctx_6(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _27->stChanOption.s32ReRangeEn, _27->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _27->stChanOption.s32ReRangeEn,
	ldr	r2, [r3, #32]	@ _27->eCapLevel, _27->eCapLevel
	bne	.L87	@,
	cmp	r2, #25	@ _27->eCapLevel,
	beq	.L105	@,
.L100:
	mov	r4, ip	@ D.41111, ivtmp.162
	mov	r9, #3	@ DecFsNum,
	mov	r8, #2	@ PmvBlkNum,
.L88:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp251,,
	bl	__memzero	@
	ldr	r2, [r6]	@ D.41107, pVc1Ctx_6(D)->pstExtraData
	mov	r3, #0	@ tmp224,
	ldr	r1, [r2, #20]	@ _53->s32DnrDispOutEnable, _53->s32DnrDispOutEnable
	str	r7, [sp, #36]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	ldr	r2, [r2, #32]	@ _53->eCapLevel, _53->eCapLevel
	str	r5, [sp, #16]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	cmp	r2, #24	@ _53->eCapLevel,
	str	r7, [sp, #20]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	strb	r1, [sp, #4]	@ _53->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [sp, #32]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #5]	@ tmp224, FspInstCfg.s32TfEnable
	strb	r3, [sp, #6]	@ tmp224, FspInstCfg.s32RprEnable
	beq	.L94	@,
	uxtb	r3, r8	@ D.41112, PmvBlkNum
	strb	r9, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r4, [sp, #11]	@ D.41111, FspInstCfg.s32ExpectedDispFsNum
.L96:
	add	r5, r6, #110592	@ tmp236, pVc1Ctx,
	add	r1, sp, #4	@ tmp252,,
	strb	r3, [sp, #12]	@ D.41112, FspInstCfg.s32ExpectedPmvNum
	mov	r3, #0	@ tmp232,
	ldr	r0, [r5, #3128]	@, pVc1Ctx_6(D)->ChanID
	strb	r3, [sp, #8]	@ tmp232, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r4, r0, #0	@ D.41105,
	bne	.L89	@,
	ldr	r1, [r6]	@ D.41107, pVc1Ctx_6(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r5, #3128]	@, pVc1Ctx_6(D)->ChanID
	ldr	r2, [r1, #28]	@, _72->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _72->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L106	@,
.L98:
	mov	r4, #1	@ D.41105,
	mov	r0, r4	@, D.41105
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L105:
	ldr	r2, [r3, #568]	@ ImgWidth, _27->stChanOption.s32MaxWidth
	cmp	r5, r2	@ ImgWidth, ImgWidth
	bhi	.L89	@,
	ldr	r1, [r3, #572]	@ ImgHeight, _27->stChanOption.s32MaxHeight
	cmp	r7, r1	@ ImgHeight, ImgHeight
	bls	.L90	@,
.L89:
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ D.41105,
.L103:
	mov	r0, r4	@, D.41105
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L87:
	cmp	r2, #25	@ _27->eCapLevel,
	bne	.L100	@,
	ldr	r2, [r3, #568]	@ _27->stChanOption.s32MaxWidth, _27->stChanOption.s32MaxWidth
	cmp	r5, r2	@ ImgWidth, _27->stChanOption.s32MaxWidth
	bhi	.L89	@,
	ldr	r2, [r3, #572]	@ _27->stChanOption.s32MaxHeight, _27->stChanOption.s32MaxHeight
	cmp	r7, r2	@ ImgHeight, _27->stChanOption.s32MaxHeight
	bhi	.L89	@,
	ldr	r2, [r3, #596]	@ _27->stChanOption.s32SupportBFrame, _27->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _27->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _27->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvBlkNum,
	bne	.L107	@,
.L93:
	ldrb	r4, [r3, #616]	@ zero_extendqisi2	@ D.41111, _27->stChanOption.s32DisplayFrameNum
	b	.L88	@
.L94:
	strb	r3, [sp, #9]	@ tmp224, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.41112,
	strb	r4, [sp, #11]	@ D.41111, FspInstCfg.s32ExpectedDispFsNum
	b	.L96	@
.L106:
	bl	vfmw_dprint_nothing	@
	b	.L103	@
.L90:
	add	r0, r6, #77824	@ tmp208, pVc1Ctx,
	ldrb	r0, [r0, #448]	@ zero_extendqisi2	@ pVc1Ctx_6(D)->CodecInfo.CodecStatus, pVc1Ctx_6(D)->CodecInfo.CodecStatus
	tst	r0, #8	@ pVc1Ctx_6(D)->CodecInfo.CodecStatus,
	bne	.L98	@,
	ldr	r0, [r3, #596]	@ _27->stChanOption.s32SupportBFrame, _27->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _27->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _27->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvBlkNum,
	beq	.L92	@,
	add	r8, r9, #1	@ PmvBlkNum, DecFsNum,
	cmp	r8, #17	@ PmvBlkNum,
	movcs	r8, #17	@ PmvBlkNum,
.L92:
	ldrb	r4, [r3, #616]	@ zero_extendqisi2	@ D.41111, _27->stChanOption.s32DisplayFrameNum
	mov	r7, r1	@ ImgHeight, ImgHeight
	mov	r5, r2	@ ImgWidth, ImgWidth
	b	.L88	@
.L107:
	add	r8, r9, #1	@ PmvBlkNum, DecFsNum,
	cmp	r8, #17	@ PmvBlkNum,
	movcs	r8, #17	@ PmvBlkNum,
	b	.L93	@
	.fnend
	.size	VC1_ArrangeVahbMem, .-VC1_ArrangeVahbMem
	.align	2
	.global	VC1_WritePicMsg
	.type	VC1_WritePicMsg, %function
VC1_WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r0, #98304	@ tmp1184, pCtx,
	add	r6, r0, #110592	@ tmp1185, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ pVc1DecParam, pVc1DecParam
	add	r8, r0, #77824	@ tmp1182, pCtx,
	ldr	r1, [r7, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurFsID
	ldr	r0, [r6, #3128]	@, pCtx_13(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pCur
	beq	.L132	@,
	movw	r3, #3544	@ tmp343,
	ldrsb	r2, [r8, r3]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile
	add	r3, r5, #86016	@ tmp1183, pCtx,
	cmp	r2, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L133	@,
	strb	r2, [r4, #5]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->fcm
	ldrb	r1, [r3, #2608]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.PROFILE
	strb	r1, [r4, #4]	@ D.41120, pVc1DecParam_23(D)->profile
	ldrb	r1, [r3, #2859]	@ zero_extendqisi2	@ D.41117, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE
	cmp	r1, #4	@ D.41117,
	moveq	r1, #3	@ D.41117,
	strb	r1, [r4, #3]	@ D.41117, pVc1DecParam_23(D)->ptype
	ldr	r1, [r6, #2684]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight
	sub	r1, r1, #1	@ tmp835, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight,
	strh	r1, [r4, #80]	@ movhi	@ tmp835, pVc1DecParam_23(D)->mbheight
	ldr	r1, [r6, #2680]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth
	strb	r2, [r4, #8]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->curparity
	sub	r1, r1, #1	@ tmp842, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth,
	strh	r1, [r4, #78]	@ movhi	@ tmp842, pVc1DecParam_23(D)->mbwidth
	ldrb	r1, [r3, #2611]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.LOOPFILTER
	strb	r2, [r4, #9]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->numref
	strb	r1, [r4, #6]	@ D.41120, pVc1DecParam_23(D)->loopfilter
	ldrb	r1, [r8, #456]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].Is2ndFld
	strb	r2, [r4, #10]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->fwd_fcm
	strb	r2, [r4, #11]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->bwd_fcm
	strb	r1, [r4, #7]	@ D.41120, pVc1DecParam_23(D)->issecondfld
	ldrb	r1, [r3, #2614]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.FASTUVMC
	strb	r1, [r4, #13]	@ D.41120, pVc1DecParam_23(D)->fastuvmc
	ldrb	r1, [r3, #2618]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.OVERLAP
	strb	r1, [r4, #14]	@ D.41120, pVc1DecParam_23(D)->overlap
	ldrb	r1, [r3, #2878]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.RNDCTRL
	strb	r1, [r4, #12]	@ D.41120, pVc1DecParam_23(D)->rndctrl
	ldrb	r1, [r3, #2888]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r1, [r4, #18]	@ D.41120, pVc1DecParam_23(D)->altpquant
	ldrb	r1, [r3, #2863]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.HALFQP
	strb	r1, [r4, #19]	@ D.41120, pVc1DecParam_23(D)->halfqp
	ldrb	r1, [r3, #2862]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX
	strb	r1, [r4, #17]	@ D.41120, pVc1DecParam_23(D)->pqindex
	ldr	r1, [r3, #2948]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANT, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANT
	strb	r1, [r4, #16]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANT, pVc1DecParam_23(D)->pquant
	ldrb	r1, [r3, #2622]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.QUANTIZER
	cmp	r1, #0	@ D.41120,
	bne	.L123	@,
	ldrb	r2, [r3, #2862]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX
	cmp	r2, #8	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX,
	movhi	r2, #0	@ tmp904,
	movls	r2, #1	@ tmp904,
	strb	r2, [r4, #20]	@ tmp904, pVc1DecParam_23(D)->buniform
.L124:
	ldrb	r1, [r3, #2882]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.DQBILEVEL
	add	r2, r4, #12288	@ tmp1186, pVc1DecParam,
	strb	r1, [r4, #24]	@ D.41120, pVc1DecParam_23(D)->dqbilevel
	ldrb	r1, [r3, #2881]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.DQPROFILE
	strb	r1, [r4, #23]	@ D.41120, pVc1DecParam_23(D)->dqprofile
	ldrb	r1, [r3, #2616]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.DQUANT
	strb	r1, [r4, #22]	@ D.41120, pVc1DecParam_23(D)->dquant
	ldrb	r1, [r3, #2880]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.DQUANTFRM
	strb	r1, [r4, #25]	@ D.41120, pVc1DecParam_23(D)->dquantfrm
	ldr	r1, [r3, #2892]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.QuantMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.QuantMode
	strb	r1, [r4, #26]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.QuantMode, pVc1DecParam_23(D)->quantmode
	ldrb	r1, [r3, #2883]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.UseAltQp
	strb	r1, [r4, #21]	@ D.41120, pVc1DecParam_23(D)->usealtqp
	ldrb	r1, [r3, #2867]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVMODE
	strb	r1, [r4, #27]	@ D.41120, pVc1DecParam_23(D)->mvmode
	ldrb	r1, [r3, #2868]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVMODE2
	strb	r1, [r4, #28]	@ D.41120, pVc1DecParam_23(D)->mvmode2
	ldr	r1, [r7, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.41120, _289->IsHalfPel
	strb	r1, [r4, #30]	@ D.41120, pVc1DecParam_23(D)->colishalfpel
	ldr	r1, [r7, #2512]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.41120, _292->IsHalfPel
	strb	r1, [r4, #29]	@ D.41120, pVc1DecParam_23(D)->curishalfpel
	ldrb	r1, [r3, #2865]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVRANGE
	strb	r1, [r4, #31]	@ D.41120, pVc1DecParam_23(D)->mvrange
	ldrb	r1, [r3, #2987]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.REFDIST
	strb	r1, [r4, #32]	@ D.41120, pVc1DecParam_23(D)->refdist
	ldrb	r1, [r3, #2877]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TRANSDCTAB
	strb	r1, [r4, #35]	@ D.41120, pVc1DecParam_23(D)->transdctab
	ldrb	r1, [r3, #2617]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.VSTRANSFORM
	strb	r1, [r4, #36]	@ D.41120, pVc1DecParam_23(D)->vstransform
	ldrb	r1, [r3, #2873]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TTMBF
	strb	r1, [r4, #37]	@ D.41120, pVc1DecParam_23(D)->ttmbf
	ldrb	r1, [r3, #2875]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TRANSACFRM
	strb	r1, [r4, #38]	@ D.41120, pVc1DecParam_23(D)->transacfrm
	ldrb	r1, [r3, #2876]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TRANSACFRM2
	strb	r1, [r4, #39]	@ D.41120, pVc1DecParam_23(D)->transacfrm2
	ldrb	r1, [r3, #2874]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TTFRM
	strb	r1, [r4, #40]	@ D.41120, pVc1DecParam_23(D)->ttfrm
	ldr	r1, [r3, #2940]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.DIRECTMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.DIRECTMBMode
	clz	r1, r1	@ tmp1015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.DIRECTMBMode
	mov	r1, r1, lsr #5	@ tmp1015, tmp1015,
	strb	r1, [r4, #42]	@ tmp1015, pVc1DecParam_23(D)->directmbmodeisskipraw
	ldr	r1, [r3, #2936]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTYPEMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTYPEMBMode
	clz	r1, r1	@ tmp1022, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTYPEMBMode
	mov	r1, r1, lsr #5	@ tmp1022, tmp1022,
	strb	r1, [r4, #43]	@ tmp1022, pVc1DecParam_23(D)->mvtypembmodeisskipraw
	ldr	r1, [r3, #2944]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.SKIPMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.SKIPMBMode
	clz	r1, r1	@ tmp1029, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.SKIPMBMode
	mov	r1, r1, lsr #5	@ tmp1029, tmp1029,
	strb	r1, [r4, #45]	@ tmp1029, pVc1DecParam_23(D)->skipmbmodeisskipraw
	ldrb	r1, [r3, #2860]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.BFRACTION
	strb	r1, [r4, #50]	@ D.41120, pVc1DecParam_23(D)->bfraction
	ldrb	r1, [r3, #2872]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.CBPTAB
	strb	r1, [r4, #49]	@ D.41120, pVc1DecParam_23(D)->cbptab
	ldrb	r1, [r3, #2871]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTAB
	strb	r1, [r4, #48]	@ D.41120, pVc1DecParam_23(D)->mvtab
	ldr	r1, [r3, #2952]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.ScaleFactor, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.ScaleFactor
	str	r1, [r2, #84]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.ScaleFactor, pVc1DecParam_23(D)->ScaleFactor
	ldrb	r1, [r3, #2620]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.RANGERED, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.RANGERED
	cmp	r1, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.RANGERED,
	beq	.L134	@,
	mov	r1, #0	@ D.41118,
	mov	ip, r1	@ D.41120, D.41118
	mov	r5, r1	@ D.41120, D.41118
	mov	lr, r1	@ D.41120, D.41118
.L127:
	strb	lr, [r4, #59]	@ D.41120, pVc1DecParam_23(D)->RANGEREDFRM
	strb	r5, [r4, #60]	@ D.41120, pVc1DecParam_23(D)->RANGEREDFRM0
	strb	ip, [r4, #61]	@ D.41120, pVc1DecParam_23(D)->RANGEREDFRM1
	str	r1, [r0, #324]	@ D.41118, pCur_18->stDispImg.ImageDnr.Rangedfrm
	ldrb	r3, [r3, #2608]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.PROFILE
	strb	r3, [r0, #302]	@ D.41120, pCur_18->stDispImg.ImageDnr.vc1_profile
.L121:
	ldr	r3, [r7, #2612]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SlcNum, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SlcNum
	add	r1, r8, #460	@ D.41126, tmp1182,
	add	r1, r1, #1	@ D.41126, D.41126,
	strh	r3, [r4, #72]	@ movhi	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SlcNum, pVc1DecParam_23(D)->totalslicenum
	ldr	r3, [r7, #2544]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicWidth
	strh	r3, [r4, #74]	@ movhi	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicWidth, pVc1DecParam_23(D)->DispPicWidth
	ldr	r3, [r7, #2548]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicHeight, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicHeight
	strh	r3, [r4, #76]	@ movhi	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicHeight, pVc1DecParam_23(D)->DispPicHeight
	ldrb	r3, [r8, #459]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CodecVersion
	strb	r3, [r4, #63]	@ D.41120, pVc1DecParam_23(D)->CodecVersion
	ldrb	r3, [r8, #460]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PostCresent
	strb	r3, [r4, #62]	@ D.41120, pVc1DecParam_23(D)->PostCresent
	ldr	r0, [r7, #2528]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth
	adds	r3, r0, #127	@ D.41118, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth,
	addmi	r3, r0, #254	@, D.41118, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth,
	mov	r3, r3, asr #7	@ D.41118, D.41118,
	mov	r3, r3, asl #4	@ D.41118, D.41118,
	str	r3, [r2, #116]	@ D.41118, pVc1DecParam_23(D)->BPD_STRIDE
	ldr	r3, [r6, #2704]	@ D.41125, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MVTYPEMB_ADDR
	str	r3, [r2, #120]	@ D.41125, pVc1DecParam_23(D)->MVTYPEMB_ADDR
	ldr	r3, [r6, #2708]	@ D.41125, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SKIPMB_ADDR
	str	r3, [r2, #124]	@ D.41125, pVc1DecParam_23(D)->SKIPMB_ADDR
	ldr	r3, [r6, #2712]	@ D.41125, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DIRECTMB_ADDR
	str	r3, [r2, #128]	@ D.41125, pVc1DecParam_23(D)->DIRECTMB_ADDR
	ldr	r3, [r6, #2716]	@ D.41125, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].ACPRED_ADDR
	str	r3, [r2, #132]	@ D.41125, pVc1DecParam_23(D)->ACPRED_ADDR
	ldr	r3, [r6, #2720]	@ D.41125, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].OVERFLAGS_ADDR
	str	r3, [r2, #136]	@ D.41125, pVc1DecParam_23(D)->OVERFLAGS_ADDR
	ldr	r3, [r6, #2724]	@ D.41125, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FIELDTX_ADDR
	str	r3, [r2, #140]	@ D.41125, pVc1DecParam_23(D)->FIELDTX_ADDR
	ldr	r3, [r6, #2728]	@ D.41125, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FORWARDMB_ADDR
	str	r3, [r2, #144]	@ D.41125, pVc1DecParam_23(D)->FORWARDMB_ADDR
	str	r1, [r4, #64]	@ D.41126, pVc1DecParam_23(D)->pIntensityConvertTab
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L133:
	ldr	r2, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM
	movw	ip, #1432	@ tmp417,
	strb	r2, [r4, #5]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, pVc1DecParam_23(D)->fcm
	ldrb	r2, [r3, #2624]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvSeqSyntax.PROFILE
	strb	r2, [r4, #4]	@ D.41120, pVc1DecParam_23(D)->profile
	ldrb	r2, [r3, #2957]	@ zero_extendqisi2	@ D.41117, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PTYPE
	cmp	r2, #4	@ D.41117,
	moveq	r2, #3	@ D.41117,
	strb	r2, [r4, #3]	@ D.41117, pVc1DecParam_23(D)->ptype
	ldr	r2, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM
	cmp	r2, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM,
	ldr	r2, [r6, #2684]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight
	addeq	r2, r2, #1	@ D.41118, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight,
	addeq	r2, r2, r2, lsr #31	@ tmp373, D.41118, D.41118,
	moveq	r2, r2, asr #1	@ D.41118, tmp373,
	sub	r2, r2, #1	@ tmp383, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight,
	strh	r2, [r4, #80]	@ movhi	@ tmp383, pVc1DecParam_23(D)->mbheight
	ldr	r1, [r6, #2680]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth
	sub	r1, r1, #1	@ tmp390, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth,
	strh	r1, [r4, #78]	@ movhi	@ tmp390, pVc1DecParam_23(D)->mbwidth
	ldrb	r2, [r3, #2997]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	strb	r2, [r4, #8]	@ D.41120, pVc1DecParam_23(D)->curparity
	ldrb	r2, [r3, #2800]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.LOOPFILTER
	strb	r2, [r4, #6]	@ D.41120, pVc1DecParam_23(D)->loopfilter
	ldrb	r2, [r3, #2988]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.NUMREF
	strb	r2, [r4, #9]	@ D.41120, pVc1DecParam_23(D)->numref
	ldrb	r2, [r8, #456]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].Is2ndFld
	strb	r2, [r4, #7]	@ D.41120, pVc1DecParam_23(D)->issecondfld
	ldr	r1, [r7, #2568]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj
	mla	r1, ip, r1, r8	@ tmp418, tmp417, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, tmp1182
	add	r1, r1, #15424	@ tmp419, tmp418,
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[_53].PicStruct
	strb	r2, [r4, #10]	@ D.41120, pVc1DecParam_23(D)->fwd_fcm
	ldr	r2, [r7, #2584]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj
	mla	r2, ip, r2, r8	@ tmp430, tmp417, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, tmp1182
	add	r2, r2, #15424	@ tmp431, tmp430,
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[_56].PicStruct
	strb	r2, [r4, #11]	@ D.41120, pVc1DecParam_23(D)->bwd_fcm
	ldrb	r2, [r3, #2986]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CONDOVER
	strb	r2, [r4, #15]	@ D.41120, pVc1DecParam_23(D)->condover
	ldrb	r2, [r3, #2801]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.FASTUVMC
	strb	r2, [r4, #13]	@ D.41120, pVc1DecParam_23(D)->fastuvmc
	ldrb	r2, [r3, #2805]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.OVERLAP
	strb	r2, [r4, #14]	@ D.41120, pVc1DecParam_23(D)->overlap
	ldrb	r2, [r3, #2956]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.RNDCTRL
	strb	r2, [r4, #12]	@ D.41120, pVc1DecParam_23(D)->rndctrl
	ldrb	r2, [r3, #3124]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r2, [r4, #18]	@ D.41120, pVc1DecParam_23(D)->altpquant
	ldrb	r2, [r3, #2959]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.HALFQP
	strb	r2, [r4, #19]	@ D.41120, pVc1DecParam_23(D)->halfqp
	ldrb	r2, [r3, #2966]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX
	strb	r2, [r4, #17]	@ D.41120, pVc1DecParam_23(D)->pqindex
	ldr	r2, [r3, #3072]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANT, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANT
	strb	r2, [r4, #16]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANT, pVc1DecParam_23(D)->pquant
	ldrb	r2, [r3, #2806]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.QUANTIZER
	cmp	r2, #0	@ D.41120,
	bne	.L114	@,
	ldrb	r2, [r3, #2966]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX
	cmp	r2, #8	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX,
	movhi	r2, #0	@ tmp483,
	movls	r2, #1	@ tmp483,
	strb	r2, [r4, #20]	@ tmp483, pVc1DecParam_23(D)->buniform
.L115:
	ldrb	r1, [r3, #3118]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.DQBILEVEL
	add	r2, r4, #12288	@ tmp1186, pVc1DecParam,
	strb	r1, [r4, #24]	@ D.41120, pVc1DecParam_23(D)->dqbilevel
	ldrb	r1, [r3, #3117]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.DQPROFILE
	strb	r1, [r4, #23]	@ D.41120, pVc1DecParam_23(D)->dqprofile
	ldrb	r1, [r3, #2803]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.DQUANT
	strb	r1, [r4, #22]	@ D.41120, pVc1DecParam_23(D)->dquant
	ldrb	r1, [r3, #3116]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.DQUANTFRM
	strb	r1, [r4, #25]	@ D.41120, pVc1DecParam_23(D)->dquantfrm
	ldr	r1, [r3, #3128]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.QuantMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.QuantMode
	strb	r1, [r4, #26]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.QuantMode, pVc1DecParam_23(D)->quantmode
	ldrb	r1, [r3, #3119]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.UseAltQp
	strb	r1, [r4, #21]	@ D.41120, pVc1DecParam_23(D)->usealtqp
	ldrb	r1, [r3, #2970]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVMODE
	strb	r1, [r4, #27]	@ D.41120, pVc1DecParam_23(D)->mvmode
	ldrb	r1, [r3, #2971]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVMODE2
	strb	r1, [r4, #28]	@ D.41120, pVc1DecParam_23(D)->mvmode2
	ldrb	r1, [r3, #2989]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.REFFIELD
	strb	r1, [r4, #34]	@ D.41120, pVc1DecParam_23(D)->reffiled
	ldrb	r1, [r3, #2981]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DMVRANGE
	strb	r1, [r4, #33]	@ D.41120, pVc1DecParam_23(D)->dmvrange
	ldrb	ip, [r3, #2997]	@ zero_extendqisi2	@ D.41118, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	ldr	r1, [r7, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef
	add	r1, r1, ip	@ tmp557, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef, D.41118
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.41120, _108->IsHalfPel
	strb	r1, [r4, #30]	@ D.41120, pVc1DecParam_23(D)->colishalfpel
	ldr	r1, [r7, #2512]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm
	ldrb	ip, [r3, #2997]	@ zero_extendqisi2	@ D.41118, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	add	r1, r1, ip	@ tmp569, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm, D.41118
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.41120, _113->IsHalfPel
	strb	r1, [r4, #29]	@ D.41120, pVc1DecParam_23(D)->curishalfpel
	ldrb	r1, [r3, #2969]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVRANGE
	strb	r1, [r4, #31]	@ D.41120, pVc1DecParam_23(D)->mvrange
	ldrb	r1, [r3, #2987]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.REFDIST
	strb	r1, [r4, #32]	@ D.41120, pVc1DecParam_23(D)->refdist
	ldrb	r1, [r3, #2980]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TRANSDCTAB
	strb	r1, [r4, #35]	@ D.41120, pVc1DecParam_23(D)->transdctab
	ldrb	r1, [r3, #2804]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.VSTRANSFORM
	strb	r1, [r4, #36]	@ D.41120, pVc1DecParam_23(D)->vstransform
	ldrb	r1, [r3, #2976]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TTMBF
	strb	r1, [r4, #37]	@ D.41120, pVc1DecParam_23(D)->ttmbf
	ldrb	r1, [r3, #2978]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TRANSACFRM
	strb	r1, [r4, #38]	@ D.41120, pVc1DecParam_23(D)->transacfrm
	ldrb	r1, [r3, #2979]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TRANSACFRM2
	strb	r1, [r4, #39]	@ D.41120, pVc1DecParam_23(D)->transacfrm2
	ldrb	r1, [r3, #2977]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TTFRM
	strb	r1, [r4, #40]	@ D.41120, pVc1DecParam_23(D)->ttfrm
	ldrb	r1, [r3, #2993]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ACPREDMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ACPREDMode
	clz	r1, r1	@ tmp616, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ACPREDMode
	mov	r1, r1, lsr #5	@ tmp616, tmp616,
	strb	r1, [r4, #46]	@ tmp616, pVc1DecParam_23(D)->acpredmodeisskipraw
	ldrb	r1, [r3, #2991]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DIRECTMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DIRECTMBMode
	clz	r1, r1	@ tmp623, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DIRECTMBMode
	mov	r1, r1, lsr #5	@ tmp623, tmp623,
	strb	r1, [r4, #42]	@ tmp623, pVc1DecParam_23(D)->directmbmodeisskipraw
	ldrb	r1, [r3, #2995]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FIELDTXMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FIELDTXMode
	clz	r1, r1	@ tmp630, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FIELDTXMode
	mov	r1, r1, lsr #5	@ tmp630, tmp630,
	strb	r1, [r4, #44]	@ tmp630, pVc1DecParam_23(D)->fieldtxmodeisskipraw
	ldrb	r1, [r3, #2996]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FORWARDMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FORWARDMBMode
	clz	r1, r1	@ tmp637, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FORWARDMBMode
	mov	r1, r1, lsr #5	@ tmp637, tmp637,
	strb	r1, [r4, #41]	@ tmp637, pVc1DecParam_23(D)->forwardmbmodeisskipraw
	ldrb	r1, [r3, #2990]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTYPEMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTYPEMBMode
	clz	r1, r1	@ tmp644, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTYPEMBMode
	mov	r1, r1, lsr #5	@ tmp644, tmp644,
	strb	r1, [r4, #43]	@ tmp644, pVc1DecParam_23(D)->mvtypembmodeisskipraw
	ldrb	r1, [r3, #2994]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.OVERFLAGSMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.OVERFLAGSMode
	clz	r1, r1	@ tmp651, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.OVERFLAGSMode
	mov	r1, r1, lsr #5	@ tmp651, tmp651,
	strb	r1, [r4, #47]	@ tmp651, pVc1DecParam_23(D)->overflagsmodeisskipraw
	ldrb	r1, [r3, #2992]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.SKIPMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.SKIPMBMode
	clz	r1, r1	@ tmp658, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.SKIPMBMode
	mov	r1, r1, lsr #5	@ tmp658, tmp658,
	strb	r1, [r4, #45]	@ tmp658, pVc1DecParam_23(D)->skipmbmodeisskipraw
	ldrb	r1, [r3, #2958]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.BFRACTION
	strb	r1, [r4, #50]	@ D.41120, pVc1DecParam_23(D)->bfraction
	ldrb	r1, [r3, #2975]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CBPTAB
	strb	r1, [r4, #49]	@ D.41120, pVc1DecParam_23(D)->cbptab
	ldrb	r1, [r3, #2974]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTAB
	strb	r1, [r4, #48]	@ D.41120, pVc1DecParam_23(D)->mvtab
	ldrb	r1, [r3, #2985]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.QMVBPTAB
	strb	r1, [r4, #53]	@ D.41120, pVc1DecParam_23(D)->fourmvbptab
	ldrb	r1, [r3, #2982]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.QMVSWITCH
	strb	r1, [r4, #54]	@ D.41120, pVc1DecParam_23(D)->fourmvswtich
	ldrb	r1, [r3, #2983]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MBMODETAB
	strb	r1, [r4, #51]	@ D.41120, pVc1DecParam_23(D)->mbmodetab
	ldrb	r1, [r3, #2984]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.BMVBPTAB
	strb	r1, [r4, #52]	@ D.41120, pVc1DecParam_23(D)->twomvbptab
	ldr	r1, [r3, #3104]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ScaleFactor, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ScaleFactor
	str	r1, [r2, #84]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ScaleFactor, pVc1DecParam_23(D)->ScaleFactor
	ldr	r1, [r6, #2656]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FRFD, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FRFD
	str	r1, [r2, #88]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FRFD, pVc1DecParam_23(D)->FRFD
	ldr	r1, [r6, #2660]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].BRFD, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].BRFD
	str	r1, [r2, #92]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].BRFD, pVc1DecParam_23(D)->BRFD
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r4, #55]	@ D.41120, pVc1DecParam_23(D)->rangemapyflag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r4, #56]	@ D.41120, pVc1DecParam_23(D)->rangemapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r4, #57]	@ D.41120, pVc1DecParam_23(D)->rangemapuvflag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r4, #58]	@ D.41120, pVc1DecParam_23(D)->rangemapuv
	ldr	r1, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM
	cmp	r1, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM,
	beq	.L135	@,
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r0, #297]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r0, #298]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r0, #299]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r0, #300]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapuv
.L120:
	ldrb	r3, [r3, #2624]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvSeqSyntax.PROFILE
	strb	r3, [r0, #302]	@ D.41120, pCur_18->stDispImg.ImageDnr.vc1_profile
	ldrb	r3, [r8, #459]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CodecVersion
	strb	r3, [r4, #63]	@ D.41120, pVc1DecParam_23(D)->CodecVersion
	b	.L121	@
.L123:
	cmp	r1, #1	@ D.41120,
	beq	.L136	@,
	cmp	r1, #2	@ D.41120,
	movne	r2, #1	@ tmp915,
	strb	r2, [r4, #20]	@ tmp915, pVc1DecParam_23(D)->buniform
	b	.L124	@
.L114:
	cmp	r2, #1	@ D.41120,
	beq	.L137	@,
	cmp	r2, #2	@ D.41120,
	moveq	r2, #0	@ tmp492,
	movne	r2, #1	@ tmp494,
	strb	r2, [r4, #20]	@ tmp494, pVc1DecParam_23(D)->buniform
	b	.L115	@
.L137:
	ldrb	r2, [r3, #2967]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANTIZER, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANTIZER
	adds	r2, r2, #0	@ tmp490, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANTIZER,
	movne	r2, #1	@ tmp490,
	strb	r2, [r4, #20]	@ tmp490, pVc1DecParam_23(D)->buniform
	b	.L115	@
.L136:
	ldrb	r2, [r3, #2864]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANTIZER, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANTIZER
	adds	r2, r2, #0	@ tmp911, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANTIZER,
	movne	r2, #1	@ tmp911,
	strb	r2, [r4, #20]	@ tmp911, pVc1DecParam_23(D)->buniform
	b	.L124	@
.L135:
	ldrb	r1, [r3, #2997]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	cmp	r1, #0	@ D.41120,
	bne	.L119	@,
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r0, #297]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r0, #298]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r0, #299]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r0, #300]	@ D.41120, pCur_18->stDispImg.ImageDnr.Range_mapuv
	ldrb	r1, [r3, #2997]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
.L119:
	cmp	r1, #1	@ D.41120,
	bne	.L120	@,
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r0, #292]	@ D.41120, pCur_18->stDispImg.ImageDnr.bottom_Range_mapy_flag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r0, #293]	@ D.41120, pCur_18->stDispImg.ImageDnr.bottom_Range_mapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r0, #294]	@ D.41120, pCur_18->stDispImg.ImageDnr.bottom_Range_mapuv_flag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r0, #295]	@ D.41120, pCur_18->stDispImg.ImageDnr.bottom_Range_mapuv
	b	.L120	@
.L134:
	ldr	ip, [r7, #2568]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj
	movw	r5, #1432	@ tmp1066,
	ldr	r1, [r7, #2584]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj
	ldrb	lr, [r3, #2859]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE
	mla	ip, r5, ip, r8	@ tmp1067, tmp1066, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, tmp1182
	sub	lr, lr, #2	@ tmp1086, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE,
	mla	r1, r5, r1, r8	@ tmp1078, tmp1066, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, tmp1182
	tst	lr, #253	@ tmp1086,
	add	ip, ip, #14400	@ tmp1068, tmp1067,
	ldrneb	lr, [r3, #2858]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.RANGEREDFRM
	add	r1, r1, #14400	@ tmp1079, tmp1078,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[FwdRefIdx_334].RANGEREDFRM
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ D.41120, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[BwdRefIdx_338].RANGEREDFRM
	movne	r1, lr	@ D.41118, D.41120
	moveq	r1, ip	@ D.41118, D.41120
	moveq	lr, ip	@ D.41120, D.41120
	b	.L127	@
.L132:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	VC1_WritePicMsg, .-VC1_WritePicMsg
	.align	2
	.global	VC1_WriteSliceMsg
	.type	VC1_WriteSliceMsg, %function
VC1_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #20480	@ tmp120, pCodecInf,
	mov	r2, r1	@ pVc1DecParam, pVc1DecParam
	add	r1, r0, #22528	@, pCodecInf,
	add	r0, r2, #84	@, pVc1DecParam,
	ldr	ip, [r3, #2164]	@ pCodecInf_2(D)->SlcNum, pCodecInf_2(D)->SlcNum
	add	r1, r1, #120	@,,
	strb	ip, [r2, #70]	@ pCodecInf_2(D)->SlcNum, pVc1DecParam_5(D)->SlcNum
	ldr	r3, [r3, #2164]	@ pCodecInf_2(D)->SlcNum, pCodecInf_2(D)->SlcNum
	mov	r2, r3, asl #6	@ tmp129, pCodecInf_2(D)->SlcNum,
	sub	r2, r2, r3, asl #4	@, tmp129, pCodecInf_2(D)->SlcNum,
	b	memcpy	@
	.fnend
	.size	VC1_WriteSliceMsg, .-VC1_WriteSliceMsg
	.align	2
	.global	VC1_CfgVDH
	.type	VC1_CfgVDH, %function
VC1_CfgVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r0, #32768	@ tmp277, pCodecInf,
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@ pCodecInf_3(D)->PreParseInfo.IsAdvProfile, pCodecInf_3(D)->PreParseInfo.IsAdvProfile
	add	lr, r1, #77824	@ tmp278, pVc1DecParam,
	cmp	r3, #0	@ pCodecInf_3(D)->PreParseInfo.IsAdvProfile,
	beq	.L140	@,
	add	r3, r0, #8192	@ tmp168, pCodecInf,
	ldr	r3, [r3, #2552]	@ pCodecInf_3(D)->AdvPicSyntax.FCM, pCodecInf_3(D)->AdvPicSyntax.FCM
	cmp	r3, #3	@ pCodecInf_3(D)->AdvPicSyntax.FCM,
	beq	.L146	@,
.L140:
	ldr	r3, [r7, #2240]	@ pCodecInf_3(D)->CurPicMbNum, pCodecInf_3(D)->CurPicMbNum
	sub	r3, r3, #1	@ D.41140, pCodecInf_3(D)->CurPicMbNum,
	str	r3, [lr, #164]	@ D.41140, pVc1DecParam_14(D)->basic_cfg0
.L141:
	add	ip, r0, #20480	@ tmp194, pCodecInf,
	ldr	r3, [lr, #272]	@ pVc1DecParam_14(D)->Compress_en, pVc1DecParam_14(D)->Compress_en
	mov	r6, #0	@ tmp275,
	movw	r5, #1432	@ tmp240,
	ldr	r2, [ip, #2104]	@ pCodecInf_3(D)->DDR_Stride, pCodecInf_3(D)->DDR_Stride
	and	r8, r3, #1	@ D.41140, pVc1DecParam_14(D)->Compress_en,
	movw	r4, #15112	@ tmp242,
	add	r3, r2, #63	@ tmp198, pCodecInf_3(D)->DDR_Stride,
	cmp	r2, r6	@ pCodecInf_3(D)->DDR_Stride,
	movlt	r2, r3	@ pCodecInf_3(D)->DDR_Stride, tmp198
	mov	r2, r2, asr #6	@ D.41140, pCodecInf_3(D)->DDR_Stride,
	mov	r2, r2, asl #4	@ D.41140, D.41140,
	add	r3, r2, #536870913	@ D.41140, D.41140,
	add	r3, r3, #81920	@ D.41140, D.41140,
	orr	r3, r3, r8, asl #30	@ D.41140, D.41140, D.41140,
	str	r3, [lr, #168]	@ D.41140, pVc1DecParam_14(D)->basic_cfg1
	ldr	r3, [r7, #2236]	@ pCodecInf_3(D)->CurPicMbHeight, pCodecInf_3(D)->CurPicMbHeight
	add	r3, r3, #1	@ D.41140, pCodecInf_3(D)->CurPicMbHeight,
	add	r3, r3, r3, lsr #31	@ tmp217, D.41140, D.41140,
	mov	r3, r3, asr #1	@ D.41140, tmp217,
	mov	r3, r3, asl #5	@ D.41140, D.41140,
	str	r3, [lr, #220]	@ D.41140, pVc1DecParam_14(D)->ystride_1d
	ldr	r3, [ip, #2084]	@ pCodecInf_3(D)->MbHeight, pCodecInf_3(D)->MbHeight
	ldr	r2, [ip, #2080]	@ pCodecInf_3(D)->MbWidth, pCodecInf_3(D)->MbWidth
	add	r3, r3, #1	@ D.41140, pCodecInf_3(D)->MbHeight,
	add	r3, r3, r3, lsr #31	@ tmp228, D.41140, D.41140,
	bic	r3, r3, #1	@ D.41140, tmp228,
	mul	r3, r2, r3	@ D.41141, pCodecInf_3(D)->MbWidth, D.41140
	mov	r3, r3, asl #8	@ D.41141, D.41141,
	str	r3, [lr, #224]	@ D.41141, pVc1DecParam_14(D)->uvoffset_1d
	ldr	r2, [ip, #2136]	@ pCodecInf_3(D)->RefList1.ImgObj, pCodecInf_3(D)->RefList1.ImgObj
	ldr	r3, [ip, #2120]	@ pCodecInf_3(D)->RefList0.ImgObj, pCodecInf_3(D)->RefList0.ImgObj
	ldr	lr, [ip, #2064]	@ pCodecInf_3(D)->pCurFrm, pCodecInf_3(D)->pCurFrm
	mla	ip, r5, r2, r0	@ tmp241, tmp240, pCodecInf_3(D)->RefList1.ImgObj, pCodecInf
	mla	r0, r5, r3, r0	@ tmp265, tmp240, pCodecInf_3(D)->RefList0.ImgObj, pCodecInf
	ldr	r2, [lr, #1160]	@ _50->img.is_fld_save, _50->img.is_fld_save
	and	r2, r2, #3	@ tmp254, _50->img.is_fld_save,
	ldr	r3, [ip, r4]	@ pCodecInf_3(D)->FrameObj[_index_48].img.is_fld_save, pCodecInf_3(D)->FrameObj[_index_48].img.is_fld_save
	mov	r2, r2, asl #4	@ tmp256, tmp254,
	ldr	r0, [r0, r4]	@ pCodecInf_3(D)->FrameObj[_index_46].img.is_fld_save, pCodecInf_3(D)->FrameObj[_index_46].img.is_fld_save
	and	r3, r3, #3	@ tmp246, pCodecInf_3(D)->FrameObj[_index_48].img.is_fld_save,
	strb	r6, [r1, #69]	@ tmp275, pVc1DecParam_14(D)->ff_apt_en
	orr	r3, r2, r3, asl #2	@ tmp259, tmp256, tmp246,
	and	r2, r0, #3	@ tmp270, pCodecInf_3(D)->FrameObj[_index_46].img.is_fld_save,
	orr	r3, r3, r2	@ tmp273, tmp259, tmp270
	strb	r3, [r1, #68]	@ tmp273, pVc1DecParam_14(D)->ref_pic_type
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L146:
	ldr	r3, [r7, #2236]	@ pCodecInf_3(D)->CurPicMbHeight, pCodecInf_3(D)->CurPicMbHeight
	ldr	r2, [r7, #2232]	@ pCodecInf_3(D)->CurPicMbWidth, pCodecInf_3(D)->CurPicMbWidth
	add	r3, r3, #1	@ D.41140, pCodecInf_3(D)->CurPicMbHeight,
	add	r3, r3, r3, lsr #31	@ tmp178, D.41140, D.41140,
	mov	r3, r3, asr #1	@ D.41140, tmp178,
	mul	r3, r2, r3	@ mbtodec, pCodecInf_3(D)->CurPicMbWidth, D.41140
	sub	r3, r3, #1	@ D.41141, mbtodec,
	str	r3, [lr, #164]	@ D.41141, pVc1DecParam_14(D)->basic_cfg0
	b	.L141	@
	.fnend
	.size	VC1_CfgVDH, .-VC1_CfgVDH
	.align	2
	.global	VC1DEC_GetImageBuffer
	.type	VC1DEC_GetImageBuffer, %function
VC1DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #77824	@ tmp122, pCtx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r2, [r3, #451]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].Last_Struct_IPB, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].Last_Struct_IPB
	cmp	r2, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].Last_Struct_IPB,
	beq	.L159	@,
.L148:
	add	r5, r0, #110592	@ tmp130, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r5, #3128]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L150	@,
	ldr	r0, [r5, #3128]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L160	@,
	mov	r0, #0	@ D.41146,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L159:
	ldrb	r3, [r3, #457]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].LastIs2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].LastIs2ndFld
	cmp	r3, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].LastIs2ndFld,
	beq	.L148	@,
.L150:
	mov	r0, #1	@ D.41146,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L160:
	add	r1, r4, #112640	@, pCtx,
	ldr	r0, [r5, #3128]	@, pCtx_3(D)->ChanID
	add	r1, r1, #728	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.41146,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VC1DEC_GetImageBuffer, .-VC1DEC_GetImageBuffer
	.align	2
	.global	VC1_Vfmw_GetImageBuffer
	.type	VC1_Vfmw_GetImageBuffer, %function
VC1_Vfmw_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #110592	@ tmp299, pVC1_CTX_S,
	mov	r5, r0	@ pVC1_CTX_S, pVC1_CTX_S
	add	r4, r0, #98304	@ tmp300, pVC1_CTX_S,
	mov	r1, #1	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_NewLogicFs	@
	add	r2, r5, #77824	@ tmp168, pVC1_CTX_S,
	cmp	r0, #0	@ D.41181,
	str	r0, [r4, #2604]	@ D.41181, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].CurFsID
	blt	.L182	@,
	add	r3, r5, #92160	@ tmp252, pVC1_CTX_S,
	add	r2, r2, #14400	@ p_vobuf, tmp168,
	add	r3, r3, #64	@ tmp252, tmp252,
	ldrh	r3, [r3]	@ MEM[(struct VC1_VFMWFRAMEOBJ_S *)pVC1_CTX_S_11(D) + 92224B], MEM[(struct VC1_VFMWFRAMEOBJ_S *)pVC1_CTX_S_11(D) + 92224B]
	cmp	r3, #0	@ MEM[(struct VC1_VFMWFRAMEOBJ_S *)pVC1_CTX_S_11(D) + 92224B],
	beq	.L165	@,
	add	r3, r5, #93184	@ ivtmp.203, pVC1_CTX_S,
	add	r7, r5, #99328	@ tmp301, pVC1_CTX_S,
	add	r3, r3, #472	@ ivtmp.203, ivtmp.203,
	add	r1, r7, #56	@ D.41179, tmp301,
.L168:
	ldrh	ip, [r3]	@ *_59, *_59
	mov	r2, r3	@ D.41176, ivtmp.203
	add	r3, r3, #1424	@ ivtmp.203, ivtmp.203,
	cmp	ip, #0	@ *_59,
	add	r3, r3, #8	@ ivtmp.203, ivtmp.203,
	beq	.L165	@,
	cmp	r3, r1	@ ivtmp.203, D.41179
	bne	.L168	@,
	mov	r1, r0	@, D.41181
	mov	r2, #1	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	add	r3, r5, #92160	@ ivtmp.194, pVC1_CTX_S,
	add	r3, r3, #65	@ ivtmp.194, ivtmp.194,
	add	r1, r7, #57	@ D.41179, tmp301,
	mov	r2, #0	@ tmp302,
.L170:
	strb	r2, [r3]	@ tmp302, MEM[base: _7, offset: 0B]
	add	r3, r3, #1424	@ ivtmp.194, ivtmp.194,
	strb	r2, [r3, #-1425]	@ tmp302, MEM[base: _7, offset: 4294967295B]
	add	r3, r3, #8	@ ivtmp.194, ivtmp.194,
	cmp	r3, r1	@ ivtmp.194, D.41179
	bne	.L170	@,
	mov	r0, #0	@ D.41177,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L165:
	mov	r3, #0	@ k,
	str	r2, [r4, #2512]	@ D.41176, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	mov	r1, #1	@ tmp261,
	strb	r1, [r2, #1]	@ tmp261, _100->is_to_display
.L167:
	ldr	r1, [r4, #2512]	@ D.41176, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	uxtb	r2, r3	@ D.41185, k
	add	r1, r1, r3	@ tmp267, D.41176, k
	strb	r2, [r1, #3]	@ D.41185, _66->IntensityConvertTab
	ldr	r1, [r4, #2512]	@ D.41176, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	add	r1, r1, r3	@ tmp273, D.41176, k
	strb	r2, [r1, #259]	@ D.41185, _69->IntensityConvertTab
	ldr	r1, [r4, #2512]	@ D.41176, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	add	r1, r1, r3	@ tmp279, D.41176, k
	strb	r2, [r1, #515]	@ D.41185, _71->IntensityConvertTab
	ldr	r1, [r4, #2512]	@ D.41176, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	add	r1, r1, r3	@ tmp285, D.41176, k
	add	r3, r3, #1	@ k, k,
	cmp	r3, #256	@ k,
	strb	r2, [r1, #771]	@ D.41185, _73->IntensityConvertTab
	bne	.L167	@,
	mov	r0, #1	@ D.41177,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L182:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L163	@,
	ldr	r1, [r7, #192]	@, pImg_21->p_usrdat
	mov	r8, #0	@ tmp195,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #196]	@, pImg_21->p_usrdat
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #200]	@, pImg_21->p_usrdat
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #204]	@, pImg_21->p_usrdat
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ tmp195, pImg_21->p_usrdat
	str	r8, [r7, #196]	@ tmp195, pImg_21->p_usrdat
	mov	r2, #1	@,
	str	r8, [r7, #200]	@ tmp195, pImg_21->p_usrdat
	str	r8, [r7, #204]	@ tmp195, pImg_21->p_usrdat
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, #2596]	@ tmp195, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	str	r8, [r4, #2600]	@ tmp195, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@ D.41181, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	str	r0, [r4, #2596]	@ D.41181, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
.L163:
	add	r1, r5, #112640	@, pVC1_CTX_S,
	mov	r5, #0	@ tmp240,
	add	r1, r1, #728	@,,
	str	r5, [r4, #2592]	@ tmp240, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.41177, tmp240
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VC1_Vfmw_GetImageBuffer, .-VC1_Vfmw_GetImageBuffer
	.align	2
	.global	VC1_Vfmw_BuildRefList
	.type	VC1_Vfmw_BuildRefList, %function
VC1_Vfmw_BuildRefList:
	.fnstart
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L261	@ tmp1068,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0	@ pCodecInf, pCodecInf
	ldr	ip, [ip]	@ __stack_chk_guard, __stack_chk_guard
	.pad #540
	sub	sp, sp, #540	@,,
	add	r0, r0, #22528	@, pCodecInf,
	mov	r10, r1	@ PicType, PicType
	add	r0, r0, #64	@,,
	mov	r1, #16	@,
	mov	r5, r3	@ IsTop, IsTop
	mov	r4, r2	@ SndFld, SndFld
	str	ip, [sp, #532]	@ __stack_chk_guard, D.41912
	bl	__memzero	@
	add	r0, r8, #22528	@, pCodecInf,
	mov	r1, #16	@,
	add	r0, r0, #80	@,,
	bl	__memzero	@
	ldrsb	r3, [r8, #4]	@ tmp540, pCodecInf_38(D)->PicStructure
	bics	r3, r3, #2	@ tmp542, tmp540,
	bne	.L184	@,
	cmp	r10, #1	@ PicType,
	beq	.L248	@,
	cmp	r10, #2	@ PicType,
	addne	ip, r8, #20480	@ tmp980, pCodecInf,
	beq	.L249	@,
.L193:
	mov	r0, #1	@ D.41904,
	mov	r3, #0	@ tmp711,
	str	r3, [ip, #2132]	@ tmp711, pCodecInf_38(D)->RefList1.ListLen
	str	r3, [ip, #2116]	@ tmp711, pCodecInf_38(D)->RefList0.ListLen
.L192:
	ldr	r3, .L261	@ tmp1095,
	ldr	r2, [sp, #532]	@ D.41912, D.41912
	ldr	r3, [r3]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.41912, __stack_chk_guard
	bne	.L250	@,
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L184:
	add	r6, r8, #8192	@ tmp981, pCodecInf,
	ldrb	r3, [r6, #2512]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.TFF, pCodecInf_38(D)->AdvPicSyntax.TFF
	cmp	r3, #1	@ pCodecInf_38(D)->AdvPicSyntax.TFF,
	ldrb	r3, [r6, #2549]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.CurParity, pCodecInf_38(D)->AdvPicSyntax.CurParity
	beq	.L251	@,
	cmp	r3, #0	@ pCodecInf_38(D)->AdvPicSyntax.CurParity,
	beq	.L252	@,
.L203:
	add	ip, r8, #20480	@ tmp980, pCodecInf,
	ldr	r3, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r9, [r3, #1208]	@ BotRefIdx, _56->img.image_id
	mov	r7, r9	@ BotRefIdx, BotRefIdx
.L202:
	cmp	r10, #1	@ PicType,
	beq	.L253	@,
.L204:
	cmp	r10, #2	@ PicType,
	bne	.L193	@,
	cmp	r4, #0	@ SndFld,
	mov	r2, #0	@ tmp846,
	mov	r3, #1	@ tmp850,
	str	r10, [ip, #2132]	@ PicType, pCodecInf_38(D)->RefList1.ListLen
	str	r10, [ip, #2116]	@ PicType, pCodecInf_38(D)->RefList0.ListLen
	strb	r2, [ip, #2112]	@ tmp846, pCodecInf_38(D)->RefList0.FldFlag
	strb	r3, [ip, #2113]	@ tmp850, pCodecInf_38(D)->RefList0.FldFlag
	beq	.L216	@,
	cmp	r5, r2	@ IsTop,
	beq	.L254	@,
.L216:
	ldr	r3, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	lr, [ip, #2064]	@ D.41902, pCodecInf_38(D)->pCurFrm
	ldr	r2, [r3, #1208]	@ D.41904,
.L245:
	ldr	r0, [ip, #2068]	@ D.41902, pCodecInf_38(D)->pRef
	mov	r1, #1	@ tmp874,
	str	r2, [ip, #2120]	@ D.41904, pCodecInf_38(D)->RefList0.ImgObj
	mov	r3, #0	@ tmp870,
	strb	r1, [ip, #2129]	@ tmp874, pCodecInf_38(D)->RefList1.FldFlag
	strb	r3, [ip, #2128]	@ tmp870, pCodecInf_38(D)->RefList1.FldFlag
	ldr	r1, [r0, #1208]	@ D.41907, _89->img.image_id
	str	r1, [ip, #2136]	@ D.41907, pCodecInf_38(D)->RefList1.ImgObj
	ldr	r0, [r0, #1208]	@ _89->img.image_id, _89->img.image_id
	str	r0, [ip, #2140]	@ _89->img.image_id, pCodecInf_38(D)->RefList1.ImgObj
	ldr	r0, [r6, #2636]	@ D.41905, pCodecInf_38(D)->AdvPicSyntax.INTCOMPFIELD
	ldr	r9, [lr, #1208]	@ D.41907, _379->img.image_id
	cmp	r0, #1	@ D.41905,
	bls	.L255	@,
	bics	r0, r0, #2	@ D.41904, D.41905,
	beq	.L222	@,
.L221:
	movw	ip, #1432	@ tmp888,
	mov	r3, r8	@ ivtmp.762, pCodecInf
	mul	r9, ip, r9	@ D.41901, tmp888, D.41907
	mul	r0, ip, r2	@ D.41901, tmp888, D.41904
	mul	r1, ip, r1	@ D.41901, tmp888, D.41907
	add	fp, r9, #14208	@ D.41901, D.41901,
	add	ip, r9, #13952	@ D.41901, D.41901,
	add	r2, r9, #14464	@ D.41901, D.41901,
	add	r9, r9, #14720	@ D.41901, D.41901,
	add	r10, r0, #13952	@ D.41901, D.41901,
	add	r7, r0, #14208	@ D.41901, D.41901,
	add	r6, r0, #14464	@ D.41901, D.41901,
	add	r5, r1, #13952	@ D.41901, D.41901,
	add	r4, r1, #14208	@ D.41901, D.41901,
	add	lr, r1, #14464	@ D.41901, D.41901,
	add	r2, r2, #2	@ D.41901, D.41901,
	add	r9, r9, #2	@ D.41901, D.41901,
	add	r0, r0, #14720	@ D.41901, D.41901,
	str	r9, [sp, #12]	@ D.41901, %sfp
	add	r10, r10, #2	@ D.41901, D.41901,
	add	r7, r7, #2	@ D.41901, D.41901,
	add	r6, r6, #2	@ D.41901, D.41901,
	add	r0, r0, #2	@ D.41901, D.41901,
	add	r5, r5, #2	@ D.41901, D.41901,
	add	r4, r4, #2	@ D.41901, D.41901,
	add	lr, lr, #2	@ D.41901, D.41901,
	add	ip, ip, #2	@ D.41901, D.41901,
	add	fp, fp, #2	@ D.41901, D.41901,
	add	r9, r3, r2	@ ivtmp.894, ivtmp.762, D.41901
	ldr	r2, [sp, #12]	@ D.41901, %sfp
	add	r8, r8, r10	@ ivtmp.750, pCodecInf, D.41901
	add	r1, r1, #14720	@ D.41901, D.41901,
	add	r7, r3, r7	@ ivtmp.766, ivtmp.762, D.41901
	add	r6, r3, r6	@ ivtmp.780, ivtmp.762, D.41901
	add	r0, r3, r0	@ ivtmp.794, ivtmp.762, D.41901
	add	r5, r3, r5	@ ivtmp.808, ivtmp.762, D.41901
	add	r4, r3, r4	@ ivtmp.823, ivtmp.762, D.41901
	add	lr, r3, lr	@ ivtmp.837, ivtmp.762, D.41901
	add	ip, r3, ip	@ ivtmp.865, ivtmp.762, D.41901
	add	r10, r3, fp	@ ivtmp.880, ivtmp.762, D.41901
	add	r1, r1, #2	@ D.41901, D.41901,
	str	r8, [sp, #4]	@ ivtmp.750, %sfp
	add	r8, r3, r2	@ ivtmp.908, ivtmp.762, D.41901
	mov	r2, #0	@ i,
	add	r1, r3, r1	@ ivtmp.851, ivtmp.762, D.41901
	str	r1, [sp, #8]	@ ivtmp.851, %sfp
.L223:
	ldr	r1, [sp, #4]	@ ivtmp.750, %sfp
	add	r2, r2, #1	@ i, i,
	cmp	r2, #256	@ i,
	add	r3, r3, #1	@ ivtmp.762, ivtmp.762,
	ldrb	fp, [r1, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _792, offset: 0B]
	strb	fp, [r3, #12]	@ D.41906, MEM[base: _793, offset: 13B]
	ldrb	fp, [r7, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _794, offset: 0B]
	str	r1, [sp, #4]	@ ivtmp.750, %sfp
	ldr	r1, [sp, #8]	@ ivtmp.851, %sfp
	strb	fp, [r3, #268]	@ D.41906, MEM[base: _793, offset: 269B]
	ldrb	fp, [r6, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _796, offset: 0B]
	strb	fp, [r3, #524]	@ D.41906, MEM[base: _793, offset: 525B]
	ldrb	fp, [r0, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _798, offset: 0B]
	strb	fp, [r3, #780]	@ D.41906, MEM[base: _793, offset: 781B]
	ldrb	fp, [r5, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _800, offset: 0B]
	strb	fp, [r3, #1036]	@ D.41906, MEM[base: _793, offset: 1037B]
	ldrb	fp, [r4, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _802, offset: 0B]
	strb	fp, [r3, #1292]	@ D.41906, MEM[base: _793, offset: 1293B]
	ldrb	fp, [lr, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _804, offset: 0B]
	strb	fp, [r3, #1548]	@ D.41906, MEM[base: _793, offset: 1549B]
	ldrb	fp, [r1, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _806, offset: 0B]
	strb	fp, [r3, #1804]	@ D.41906, MEM[base: _793, offset: 1805B]
	ldrb	fp, [ip, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _808, offset: 0B]
	str	r1, [sp, #8]	@ ivtmp.851, %sfp
	strb	fp, [r3, #2060]	@ D.41906, MEM[base: _793, offset: 2061B]
	ldrb	fp, [r10, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _810, offset: 0B]
	strb	fp, [r3, #2316]	@ D.41906, MEM[base: _793, offset: 2317B]
	ldrb	fp, [r9, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _812, offset: 0B]
	strb	fp, [r3, #2572]	@ D.41906, MEM[base: _793, offset: 2573B]
	ldrb	fp, [r8, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _814, offset: 0B]
	strb	fp, [r3, #2828]	@ D.41906, MEM[base: _793, offset: 2829B]
	bne	.L223	@,
	mov	r0, #1	@ D.41904,
	b	.L192	@
.L252:
	add	ip, r8, #20480	@ tmp980, pCodecInf,
	cmp	r10, #1	@ PicType,
	ldr	r2, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r3, [ip, #2068]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r9, [r2, #1208]	@ BotRefIdx,
	ldr	r7, [r3, #1208]	@ BotRefIdx,
	bne	.L204	@,
.L253:
	ldrb	r3, [r6, #2540]	@ zero_extendqisi2	@ D.41905, pCodecInf_38(D)->AdvPicSyntax.NUMREF
	cmp	r4, #0	@ SndFld,
	mov	r2, #0	@ tmp747,
	strb	r10, [ip, #2113]	@ PicType, pCodecInf_38(D)->RefList0.FldFlag
	add	r3, r3, #1	@ NumOfRef, D.41905,
	str	r2, [ip, #2132]	@ tmp747, pCodecInf_38(D)->RefList1.ListLen
	str	r3, [ip, #2116]	@ NumOfRef, pCodecInf_38(D)->RefList0.ListLen
	strb	r2, [ip, #2112]	@ tmp747, pCodecInf_38(D)->RefList0.FldFlag
	beq	.L205	@,
	cmp	r5, r2	@ IsTop,
	beq	.L256	@,
.L205:
	ldr	r3, [ip, #2072]	@ D.41902, pCodecInf_38(D)->pRef
	ldr	r2, [ip, #2064]	@ D.41902, pCodecInf_38(D)->pCurFrm
	ldr	r5, [r3, #1208]	@ D.41904,
.L244:
	str	r5, [ip, #2120]	@ D.41904, pCodecInf_38(D)->RefList0.ImgObj
	ldr	r3, [r3, #1208]	@ _35->img.image_id, _35->img.image_id
	str	r3, [ip, #2124]	@ _35->img.image_id, pCodecInf_38(D)->RefList0.ImgObj
	ldr	r3, [r6, #2636]	@ D.41905, pCodecInf_38(D)->AdvPicSyntax.INTCOMPFIELD
	ldr	r4, [r2, #1208]	@ D.41907, _381->img.image_id
	cmp	r3, #1	@ D.41905,
	bls	.L257	@,
.L209:
	bics	r2, r3, #2	@ tmp1067, D.41905,
	bne	.L210	@,
	ldrb	r2, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r2, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	beq	.L258	@,
.L210:
	movw	r1, #1432	@ tmp958,
	mov	r3, r8	@ ivtmp.578, pCodecInf
	mul	r0, r1, r5	@ D.41901, tmp958, D.41904
	add	r7, r8, #12	@ ivtmp.574, pCodecInf,
	mul	r1, r1, r4	@ D.41901, tmp958, D.41907
	mov	r2, #0	@ i,
	add	r9, r0, #13952	@ D.41901, D.41901,
	add	r6, r0, #14208	@ D.41901, D.41901,
	add	r5, r0, #14464	@ D.41901, D.41901,
	add	r0, r0, #14720	@ D.41901, D.41901,
	add	r4, r1, #13952	@ D.41901, D.41901,
	add	lr, r1, #14208	@ D.41901, D.41901,
	add	ip, r1, #14464	@ D.41901, D.41901,
	add	r1, r1, #14720	@ D.41901, D.41901,
	add	r9, r9, #2	@ D.41901, D.41901,
	add	r6, r6, #2	@ D.41901, D.41901,
	add	r5, r5, #2	@ D.41901, D.41901,
	add	r0, r0, #2	@ D.41901, D.41901,
	add	r4, r4, #2	@ D.41901, D.41901,
	add	lr, lr, #2	@ D.41901, D.41901,
	add	ip, ip, #2	@ D.41901, D.41901,
	add	r1, r1, #2	@ D.41901, D.41901,
	add	r8, r8, r9	@ ivtmp.566, pCodecInf, D.41901
	add	r6, r3, r6	@ ivtmp.582, ivtmp.578, D.41901
	add	r5, r3, r5	@ ivtmp.596, ivtmp.578, D.41901
	add	r0, r3, r0	@ ivtmp.610, ivtmp.578, D.41901
	add	r4, r3, r4	@ ivtmp.624, ivtmp.578, D.41901
	add	lr, r3, lr	@ ivtmp.639, ivtmp.578, D.41901
	add	ip, r3, ip	@ ivtmp.653, ivtmp.578, D.41901
	add	r1, r3, r1	@ ivtmp.667, ivtmp.578, D.41901
.L215:
	ldrb	r9, [r8, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _659, offset: 0B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, #256	@ i,
	add	r3, r3, #1	@ ivtmp.578, ivtmp.578,
	strb	r9, [r7, #1]!	@ D.41906, MEM[base: _660, offset: 0B]
	ldrb	r9, [r6, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _661, offset: 0B]
	strb	r9, [r3, #268]	@ D.41906, MEM[base: _662, offset: 269B]
	ldrb	r9, [r5, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _663, offset: 0B]
	strb	r9, [r3, #524]	@ D.41906, MEM[base: _662, offset: 525B]
	ldrb	r9, [r0, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _665, offset: 0B]
	strb	r9, [r3, #780]	@ D.41906, MEM[base: _662, offset: 781B]
	ldrb	r9, [r4, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _667, offset: 0B]
	strb	r9, [r3, #2060]	@ D.41906, MEM[base: _662, offset: 2061B]
	ldrb	r9, [lr, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _669, offset: 0B]
	strb	r9, [r3, #2316]	@ D.41906, MEM[base: _662, offset: 2317B]
	ldrb	r9, [ip, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _671, offset: 0B]
	strb	r9, [r3, #2572]	@ D.41906, MEM[base: _662, offset: 2573B]
	ldrb	r9, [r1, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _673, offset: 0B]
	strb	r9, [r3, #2828]	@ D.41906, MEM[base: _662, offset: 2829B]
	bne	.L215	@,
	mov	r0, #1	@ D.41904,
	b	.L192	@
.L248:
	add	r2, r8, #20480	@ tmp544, pCodecInf,
	ldr	r1, [r2, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	str	r10, [r2, #2116]	@ PicType, pCodecInf_38(D)->RefList0.ListLen
	str	r3, [r2, #2132]	@ tmp542, pCodecInf_38(D)->RefList1.ListLen
	strb	r3, [r2, #2112]	@ tmp542, pCodecInf_38(D)->RefList0.FldFlag
	ldr	r4, [r1, #1208]	@ D.41907, _299->img.image_id
	str	r4, [r2, #2120]	@ D.41907, pCodecInf_38(D)->RefList0.ImgObj
	ldrb	r3, [r8, #3096]	@ zero_extendqisi2	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile, pCodecInf_38(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile,
	add	r3, r8, #8192	@ tmp562, pCodecInf,
	beq	.L186	@,
	ldr	r2, [r3, #2552]	@ pCodecInf_38(D)->AdvPicSyntax.FCM, pCodecInf_38(D)->AdvPicSyntax.FCM
	ldrb	r5, [r3, #2524]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	cmp	r2, #2	@ pCodecInf_38(D)->AdvPicSyntax.FCM,
	ldrb	r6, [r3, #2525]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	ldrb	r0, [r3, #2522]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	beq	.L259	@,
.L187:
	cmp	r0, #4	@ MVMODE,
	beq	.L188	@,
.L189:
	movw	r3, #1432	@ tmp931,
	add	r6, r8, #12	@ ivtmp.222, pCodecInf,
	mul	r2, r3, r4	@ D.41901, tmp931, D.41907
	add	r5, r8, #268	@ ivtmp.237, pCodecInf,
	add	r4, r8, #524	@ ivtmp.251, pCodecInf,
	add	lr, r8, #780	@ ivtmp.265, pCodecInf,
	mov	r3, #0	@ i,
	add	ip, r2, #13952	@ D.41901, D.41901,
	add	r0, r2, #14208	@ D.41901, D.41901,
	add	r1, r2, #14464	@ D.41901, D.41901,
	add	r2, r2, #14720	@ D.41901, D.41901,
	add	ip, ip, #2	@ D.41901, D.41901,
	add	r0, r0, #2	@ D.41901, D.41901,
	add	r1, r1, #2	@ D.41901, D.41901,
	add	r2, r2, #2	@ D.41901, D.41901,
	add	ip, r8, ip	@ ivtmp.214, pCodecInf, D.41901
	add	r0, r8, r0	@ ivtmp.230, pCodecInf, D.41901
	add	r1, r8, r1	@ ivtmp.244, pCodecInf, D.41901
	add	r8, r8, r2	@ ivtmp.258, pCodecInf, D.41901
.L191:
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _409, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, #256	@ i,
	strb	r2, [r6, #1]!	@ D.41906, MEM[base: _410, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _411, offset: 0B]
	strb	r2, [r5, #1]!	@ D.41906, MEM[base: _412, offset: 0B]
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _413, offset: 0B]
	strb	r2, [r4, #1]!	@ D.41906, MEM[base: _414, offset: 0B]
	ldrb	r2, [r8, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _415, offset: 0B]
	strb	r2, [lr, #1]!	@ D.41906, MEM[base: _416, offset: 0B]
	bne	.L191	@,
	mov	r0, #1	@ D.41904,
	b	.L192	@
.L251:
	cmp	r3, #0	@ pCodecInf_38(D)->AdvPicSyntax.CurParity,
	beq	.L203	@,
	add	ip, r8, #20480	@ tmp980, pCodecInf,
	ldr	r2, [ip, #2068]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r3, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r9, [r2, #1208]	@ BotRefIdx,
	ldr	r7, [r3, #1208]	@ BotRefIdx,
	b	.L202	@
.L249:
	add	r2, r8, #20480	@ tmp611, pCodecInf,
	mov	r1, #1	@ tmp612,
	ldr	r0, [r2, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	str	r1, [r2, #2132]	@ tmp612, pCodecInf_38(D)->RefList1.ListLen
	str	r1, [r2, #2116]	@ tmp612, pCodecInf_38(D)->RefList0.ListLen
	strb	r3, [r2, #2112]	@ tmp542, pCodecInf_38(D)->RefList0.FldFlag
	ldr	r1, [r2, #2068]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r5, [r0, #1208]	@ D.41907, _224->img.image_id
	strb	r3, [r2, #2128]	@ tmp542, pCodecInf_38(D)->RefList1.FldFlag
	str	r5, [r2, #2120]	@ D.41907, pCodecInf_38(D)->RefList0.ImgObj
	ldr	r4, [r1, #1208]	@ D.41907, _229->img.image_id
	str	r4, [r2, #2136]	@ D.41907, pCodecInf_38(D)->RefList1.ImgObj
	ldrb	r3, [r8, #3096]	@ zero_extendqisi2	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile, pCodecInf_38(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile,
	add	r3, r8, #8192	@ tmp638, pCodecInf,
	ldrneb	r6, [r3, #2524]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	ldrneb	r7, [r3, #2525]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	ldreqb	r6, [r3, #2421]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->SMPPicSyntax.LUMSCALE
	ldreqb	r7, [r3, #2422]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->SMPPicSyntax.LUMSHIFT
	ldrneb	r3, [r3, #2522]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	ldreqb	r3, [r3, #2419]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->SMPPicSyntax.MVMODE
	cmp	r3, #4	@ MVMODE,
	beq	.L260	@,
.L196:
	movw	r0, #1432	@ tmp940,
	mov	r3, r8	@ ivtmp.347, pCodecInf
	mul	r1, r0, r5	@ D.41901, tmp940, D.41907
	add	r7, r8, #12	@ ivtmp.343, pCodecInf,
	mul	r0, r0, r4	@ D.41901, tmp940, D.41907
	mov	r2, #0	@ i,
	add	r9, r1, #13952	@ D.41901, D.41901,
	add	r6, r1, #14208	@ D.41901, D.41901,
	add	r5, r1, #14464	@ D.41901, D.41901,
	add	r1, r1, #14720	@ D.41901, D.41901,
	add	r4, r0, #13952	@ D.41901, D.41901,
	add	lr, r0, #14208	@ D.41901, D.41901,
	add	ip, r0, #14464	@ D.41901, D.41901,
	add	r0, r0, #14720	@ D.41901, D.41901,
	add	r9, r9, #2	@ D.41901, D.41901,
	add	r6, r6, #2	@ D.41901, D.41901,
	add	r5, r5, #2	@ D.41901, D.41901,
	add	r1, r1, #2	@ D.41901, D.41901,
	add	r4, r4, #2	@ D.41901, D.41901,
	add	lr, lr, #2	@ D.41901, D.41901,
	add	ip, ip, #2	@ D.41901, D.41901,
	add	r0, r0, #2	@ D.41901, D.41901,
	add	r8, r8, r9	@ ivtmp.335, pCodecInf, D.41901
	add	r6, r3, r6	@ ivtmp.351, ivtmp.347, D.41901
	add	r5, r3, r5	@ ivtmp.365, ivtmp.347, D.41901
	add	r1, r3, r1	@ ivtmp.379, ivtmp.347, D.41901
	add	r4, r3, r4	@ ivtmp.393, ivtmp.347, D.41901
	add	lr, r3, lr	@ ivtmp.408, ivtmp.347, D.41901
	add	ip, r3, ip	@ ivtmp.422, ivtmp.347, D.41901
	add	r0, r3, r0	@ ivtmp.436, ivtmp.347, D.41901
.L198:
	ldrb	r9, [r8, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _512, offset: 0B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, #256	@ i,
	add	r3, r3, #1	@ ivtmp.347, ivtmp.347,
	strb	r9, [r7, #1]!	@ D.41906, MEM[base: _513, offset: 0B]
	ldrb	r9, [r6, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _514, offset: 0B]
	strb	r9, [r3, #268]	@ D.41906, MEM[base: _515, offset: 269B]
	ldrb	r9, [r5, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _516, offset: 0B]
	strb	r9, [r3, #524]	@ D.41906, MEM[base: _515, offset: 525B]
	ldrb	r9, [r1, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _518, offset: 0B]
	strb	r9, [r3, #780]	@ D.41906, MEM[base: _515, offset: 781B]
	ldrb	r9, [r4, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _520, offset: 0B]
	strb	r9, [r3, #1036]	@ D.41906, MEM[base: _515, offset: 1037B]
	ldrb	r9, [lr, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _522, offset: 0B]
	strb	r9, [r3, #1292]	@ D.41906, MEM[base: _515, offset: 1293B]
	ldrb	r9, [ip, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _524, offset: 0B]
	strb	r9, [r3, #1548]	@ D.41906, MEM[base: _515, offset: 1549B]
	ldrb	r9, [r0, #1]!	@ zero_extendqisi2	@ D.41906, MEM[base: _526, offset: 0B]
	strb	r9, [r3, #1804]	@ D.41906, MEM[base: _515, offset: 1805B]
	bne	.L198	@,
	mov	r0, #1	@ D.41904,
	b	.L192	@
.L186:
	ldrb	r5, [r3, #2421]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->SMPPicSyntax.LUMSCALE
	ldrb	r6, [r3, #2422]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->SMPPicSyntax.LUMSHIFT
	ldrb	r0, [r3, #2419]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->SMPPicSyntax.MVMODE
	b	.L187	@
.L222:
	ldrb	r3, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r3, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	bne	.L221	@,
	b	.L192	@
.L256:
	ldr	r2, [ip, #2064]	@ D.41902, pCodecInf_38(D)->pCurFrm
	ldr	r3, [ip, #2072]	@ D.41902, pCodecInf_38(D)->pRef
	ldr	r5, [r2, #1208]	@ D.41904, _146->img.image_id
	b	.L244	@
.L254:
	ldr	lr, [ip, #2064]	@ D.41902, pCodecInf_38(D)->pCurFrm
	ldr	r2, [lr, #1208]	@ D.41904, _79->img.image_id
	b	.L245	@
.L257:
	ldrb	r3, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r3, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	bne	.L210	@,
	ldrb	r10, [r6, #2524]	@ zero_extendqisi2	@ D.41905, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	mov	r3, #0	@,
	ldrb	fp, [r6, #2525]	@ zero_extendqisi2	@ D.41905, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	add	r0, sp, #20	@,,
	mov	r1, r10	@, D.41905
	mov	r2, fp	@, D.41905
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, fp	@, D.41905
	mov	r1, r10	@, D.41905
	mov	r3, #1	@,
	add	r0, sp, #276	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r2, #1432	@ tmp786,
	mul	r2, r2, r9	@ D.41901, tmp786, BotRefIdx
	mov	r0, #0	@ i,
	add	r1, r2, #13952	@ D.41901, D.41901,
	add	r2, r2, #14208	@ D.41901, D.41901,
	add	r1, r1, #3	@ D.41901, D.41901,
	add	r2, r2, #3	@ D.41901, D.41901,
	add	r1, r8, r1	@ ivtmp.717, pCodecInf, D.41901
	add	r2, r8, r2	@ ivtmp.731, pCodecInf, D.41901
.L211:
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.41905, MEM[base: _703, offset: 0B]
	add	ip, sp, #536	@ tmp1081,,
	add	r0, r0, #1	@ i, i,
	add	r3, ip, r3	@ tmp792, tmp1081, D.41905
	cmp	r0, #256	@ i,
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp793, LUTY
	strb	r3, [r1], #1	@ tmp793, MEM[base: _703, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.41905, MEM[base: _705, offset: 0B]
	add	r3, ip, r3	@ tmp796, tmp1082, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp797, LUTUV
	strb	r3, [r2], #1	@ tmp797, MEM[base: _705, offset: 0B]
	bne	.L211	@,
	ldr	r3, [r6, #2636]	@ D.41905, pCodecInf_38(D)->AdvPicSyntax.INTCOMPFIELD
	b	.L209	@
.L255:
	ldrb	r0, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r0, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	bne	.L221	@,
	mov	r0, r3	@ D.41904, tmp870
	b	.L192	@
.L259:
	ldr	r3, [r3, #2628]	@ pCodecInf_38(D)->AdvPicSyntax.INTCOMP, pCodecInf_38(D)->AdvPicSyntax.INTCOMP
	cmp	r3, #1	@ pCodecInf_38(D)->AdvPicSyntax.INTCOMP,
	bne	.L187	@,
.L188:
	mov	r3, #0	@,
	mov	r2, r6	@, LUMSHIFT
	mov	r1, r5	@, LUMSCALE
	add	r0, sp, #20	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r6	@, LUMSHIFT
	mov	r1, r5	@, LUMSCALE
	mov	r3, #1	@,
	add	r0, sp, #276	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp581,
	mul	r3, r3, r4	@ D.41901, tmp581, D.41907
	mov	lr, #0	@ i,
	add	ip, r3, #13952	@ D.41901, D.41901,
	add	r0, r3, #14208	@ D.41901, D.41901,
	add	r1, r3, #14464	@ D.41901, D.41901,
	add	r3, r3, #14720	@ D.41901, D.41901,
	add	ip, ip, #3	@ D.41901, D.41901,
	add	r0, r0, #3	@ D.41901, D.41901,
	add	r1, r1, #3	@ D.41901, D.41901,
	add	r3, r3, #3	@ D.41901, D.41901,
	add	ip, r8, ip	@ ivtmp.276, pCodecInf, D.41901
	add	r0, r8, r0	@ ivtmp.290, pCodecInf, D.41901
	add	r1, r8, r1	@ ivtmp.303, pCodecInf, D.41901
	add	r2, r8, r3	@ ivtmp.316, pCodecInf, D.41901
.L190:
	ldrb	r3, [ip]	@ zero_extendqisi2	@ D.41905, MEM[base: _443, offset: 0B]
	add	r5, sp, #536	@ tmp1069,,
	add	lr, lr, #1	@ i, i,
	add	r3, r5, r3	@ tmp591, tmp1069, D.41905
	cmp	lr, #256	@ i,
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp592, LUTY
	strb	r3, [ip], #1	@ tmp592, MEM[base: _443, offset: 0B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.41905, MEM[base: _445, offset: 0B]
	add	r3, r5, r3	@ tmp595, tmp1070, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp596, LUTUV
	strb	r3, [r0], #1	@ tmp596, MEM[base: _445, offset: 0B]
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.41905, MEM[base: _447, offset: 0B]
	add	r3, r5, r3	@ tmp599, tmp1071, D.41905
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp600, LUTY
	strb	r3, [r1], #1	@ tmp600, MEM[base: _447, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.41905, MEM[base: _449, offset: 0B]
	add	r3, r5, r3	@ tmp603, tmp1072, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp604, LUTUV
	strb	r3, [r2], #1	@ tmp604, MEM[base: _449, offset: 0B]
	bne	.L190	@,
	b	.L189	@
.L258:
	cmp	r3, #0	@ D.41905,
	add	r0, sp, #20	@,,
	mov	r3, #0	@,
	ldreqb	r9, [r6, #2640]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE2
	ldrneb	r9, [r6, #2524]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	ldreqb	r6, [r6, #2644]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT2
	ldrneb	r6, [r6, #2525]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	mov	r1, r9	@, LUMSCALE
	mov	r2, r6	@, LUMSHIFT
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r6	@, LUMSHIFT
	mov	r1, r9	@, LUMSCALE
	mov	r3, #1	@,
	add	r0, sp, #276	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp817,
	mul	r2, r3, r7	@ D.41901, tmp817, BotRefIdx
	mov	r0, #0	@ i,
	add	r1, r2, #14464	@ D.41901, D.41901,
	add	r2, r2, #14720	@ D.41901, D.41901,
	add	r1, r1, #3	@ D.41901, D.41901,
	add	r2, r2, #3	@ D.41901, D.41901,
	add	r1, r8, r1	@ ivtmp.685, pCodecInf, D.41901
	add	r2, r8, r2	@ ivtmp.699, pCodecInf, D.41901
.L214:
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.41905, MEM[base: _687, offset: 0B]
	add	ip, sp, #536	@ tmp1083,,
	add	r0, r0, #1	@ i, i,
	add	r3, ip, r3	@ tmp823, tmp1083, D.41905
	cmp	r0, #256	@ i,
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp824, LUTY
	strb	r3, [r1], #1	@ tmp824, MEM[base: _687, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.41905, MEM[base: _689, offset: 0B]
	add	r3, ip, r3	@ tmp827, tmp1084, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp828, LUTUV
	strb	r3, [r2], #1	@ tmp828, MEM[base: _689, offset: 0B]
	bne	.L214	@,
	b	.L210	@
.L260:
	mov	r2, r7	@, LUMSHIFT
	mov	r1, r6	@, LUMSCALE
	mov	r3, #0	@,
	add	r0, sp, #20	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r7	@, LUMSHIFT
	mov	r1, r6	@, LUMSCALE
	mov	r3, #1	@,
	mov	r10, #0	@ i,
	add	r0, sp, #276	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r2, #1432	@ tmp651,
	mul	r1, r2, r5	@ D.41901, tmp651, D.41907
	mul	r2, r2, r4	@ D.41901, tmp651, D.41907
	add	r9, r1, #13952	@ D.41901, D.41901,
	add	r7, r1, #14208	@ D.41901, D.41901,
	add	r6, r1, #14464	@ D.41901, D.41901,
	add	r1, r1, #14720	@ D.41901, D.41901,
	add	lr, r2, #13952	@ D.41901, D.41901,
	add	ip, r2, #14208	@ D.41901, D.41901,
	add	r0, r2, #14464	@ D.41901, D.41901,
	add	r2, r2, #14720	@ D.41901, D.41901,
	add	r9, r9, #3	@ D.41901, D.41901,
	add	r7, r7, #3	@ D.41901, D.41901,
	add	r6, r6, #3	@ D.41901, D.41901,
	add	r1, r1, #3	@ D.41901, D.41901,
	add	lr, lr, #3	@ D.41901, D.41901,
	add	ip, ip, #3	@ D.41901, D.41901,
	add	r0, r0, #3	@ D.41901, D.41901,
	add	r2, r2, #3	@ D.41901, D.41901,
	add	r9, r8, r9	@ ivtmp.454, pCodecInf, D.41901
	add	r7, r8, r7	@ ivtmp.468, pCodecInf, D.41901
	add	r6, r8, r6	@ ivtmp.481, pCodecInf, D.41901
	add	r1, r8, r1	@ ivtmp.494, pCodecInf, D.41901
	add	lr, r8, lr	@ ivtmp.507, pCodecInf, D.41901
	add	ip, r8, ip	@ ivtmp.521, pCodecInf, D.41901
	add	r0, r8, r0	@ ivtmp.534, pCodecInf, D.41901
	add	r2, r8, r2	@ ivtmp.547, pCodecInf, D.41901
.L197:
	ldrb	r3, [r9]	@ zero_extendqisi2	@ D.41905, MEM[base: _582, offset: 0B]
	add	fp, sp, #536	@ tmp1073,,
	add	r10, r10, #1	@ i, i,
	add	r3, fp, r3	@ tmp670, tmp1073, D.41905
	cmp	r10, #256	@ i,
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp671, LUTY
	strb	r3, [r9], #1	@ tmp671, MEM[base: _582, offset: 0B]
	ldrb	r3, [r7]	@ zero_extendqisi2	@ D.41905, MEM[base: _584, offset: 0B]
	add	r3, fp, r3	@ tmp674, tmp1074, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp675, LUTUV
	strb	r3, [r7], #1	@ tmp675, MEM[base: _584, offset: 0B]
	ldrb	r3, [r6]	@ zero_extendqisi2	@ D.41905, MEM[base: _586, offset: 0B]
	add	r3, fp, r3	@ tmp678, tmp1075, D.41905
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp679, LUTY
	strb	r3, [r6], #1	@ tmp679, MEM[base: _586, offset: 0B]
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.41905, MEM[base: _588, offset: 0B]
	add	r3, fp, r3	@ tmp682, tmp1076, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp683, LUTUV
	strb	r3, [r1], #1	@ tmp683, MEM[base: _588, offset: 0B]
	ldrb	r3, [lr]	@ zero_extendqisi2	@ D.41905, MEM[base: _590, offset: 0B]
	add	r3, fp, r3	@ tmp686, tmp1077, D.41905
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp687, LUTY
	strb	r3, [lr], #1	@ tmp687, MEM[base: _590, offset: 0B]
	ldrb	r3, [ip]	@ zero_extendqisi2	@ D.41905, MEM[base: _592, offset: 0B]
	add	r3, fp, r3	@ tmp690, tmp1078, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp691, LUTUV
	strb	r3, [ip], #1	@ tmp691, MEM[base: _592, offset: 0B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.41905, MEM[base: _594, offset: 0B]
	add	r3, fp, r3	@ tmp694, tmp1079, D.41905
	ldrb	r3, [r3, #-516]	@ zero_extendqisi2	@ tmp695, LUTY
	strb	r3, [r0], #1	@ tmp695, MEM[base: _594, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.41905, MEM[base: _596, offset: 0B]
	add	r3, fp, r3	@ tmp698, tmp1080, D.41905
	ldrb	r3, [r3, #-260]	@ zero_extendqisi2	@ tmp699, LUTUV
	strb	r3, [r2], #1	@ tmp699, MEM[base: _596, offset: 0B]
	bne	.L197	@,
	b	.L196	@
.L250:
	bl	__stack_chk_fail	@
.L262:
	.align	2
.L261:
	.word	__stack_chk_guard
	.fnend
	.size	VC1_Vfmw_BuildRefList, .-VC1_Vfmw_BuildRefList
	.align	2
	.global	VC1_Vfmw_GetStreamInfo
	.type	VC1_Vfmw_GetStreamInfo, %function
VC1_Vfmw_GetStreamInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #77824	@ tmp1400, pVC1_CTX_S,
	add	r4, r0, #98304	@ tmp1402, pVC1_CTX_S,
	.pad #28
	sub	sp, sp, #28	@,,
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	mov	r5, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldr	r7, [r4, #2528]	@ MEM_WIDTH_MB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidth
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L264	@,
	add	r3, r0, #86016	@ tmp448, pVC1_CTX_S,
	ldr	r8, [r4, #2532]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight
	add	r2, r6, #448	@ tmp464, tmp1400,
	movw	r1, #3332	@ tmp481,
	ldr	r3, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM,
	movw	r3, #3334	@ tmp467,
	addeq	r8, r8, #1	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight,
	ldrh	r3, [r2, r3]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT
	ldrh	r2, [r2, r1]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SynNew.AdvSeqSyntax.MAX_CODED_WIDTH
	addeq	r8, r8, r8, lsr #31	@ tmp458, D.41931, D.41931,
	moveq	r8, r8, asr #1	@ MbHeight, tmp458,
	adds	r10, r3, #15	@ D.41931, D.41931,
	addmi	r10, r3, #30	@, D.41931, D.41931,
	adds	r3, r2, #15	@ D.41931, D.41931,
	mul	r8, r8, r7	@ TotalMbNum, MbHeight, MEM_WIDTH_MB
	addmi	r3, r2, #30	@, D.41931, D.41931,
	mov	r10, r10, asr #4	@ MEM_HEIGHT_MB, D.41931,
	mov	r3, r3, asr #4	@ MEM_WIDTH_MB, D.41931,
.L324:
	mov	fp, r3, asl #4	@ D.41933, MEM_WIDTH_MB,
	movw	r1, #8160	@ tmp489,
	sub	r2, fp, #32	@ D.41933, D.41933,
	cmp	r2, r1	@ D.41933, tmp489
	bhi	.L267	@,
	mov	r2, r10, asl #4	@ D.41931, MEM_HEIGHT_MB,
	sub	r2, r2, #32	@ D.41933, D.41931,
	cmp	r2, r1	@ D.41933, tmp489
	bhi	.L267	@,
	ldr	r2, [r4, #2540]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast
	cmp	r2, r10	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast, MEM_HEIGHT_MB
	beq	.L384	@,
.L271:
	ldr	r2, [r4, #2532]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight
	mov	r3, r7, asl #4	@ D.41931, MEM_WIDTH_MB,
	add	r3, r3, #63	@ D.41931, D.41931,
	str	r7, [r4, #2536]	@ MEM_WIDTH_MB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast
	bic	r3, r3, #63	@ D.41931, D.41931,
	str	r3, [r4, #2552]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].DDR_Stride
	str	r2, [r4, #2540]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast
	ldrb	r3, [r6, #456]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld,
	ldreq	r2, [r5]	@ D.41934, pVC1_CTX_S_34(D)->pstExtraData
	beq	.L274	@,
	mov	r3, #1	@ SizeChanged,
.L273:
	ldrb	r2, [r6, #451]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Last_Struct_IPB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Last_Struct_IPB
	cmp	r2, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Last_Struct_IPB,
	beq	.L385	@,
.L375:
	ldr	r2, [r5]	@ D.41934, pVC1_CTX_S_34(D)->pstExtraData
.L275:
	ldrb	r1, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	eor	r1, r1, #8	@ tmp556, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	ubfx	r1, r1, #3, #1	@ tmp558, tmp556,,
	orrs	r3, r3, r1	@ tmp1407, D.41941, tmp558
	bne	.L274	@,
	ldr	r3, [r2, #728]	@ _561->s32DSDWaitFlag, _561->s32DSDWaitFlag
	cmp	r3, #1	@ _561->s32DSDWaitFlag,
	beq	.L274	@,
.L278:
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_Vfmw_GetImageBuffer	@
	cmp	r0, #0	@,
	beq	.L267	@,
	add	r9, r5, #110592	@ tmp1404, pVC1_CTX_S,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	beq	.L295	@,
	ldr	r1, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	mvn	r2, #0	@ tmp773,
	mvn	r3, #0	@,
	ldrd	r10, [r1, #56]	@ D.41940, pVC1_CTX_S_34(D)->pstExtraData,
	strd	r10, [r0, #8]	@ D.41940, pImg,
	ldr	r1, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldrd	r10, [r1, #72]	@ D.41940, pVC1_CTX_S_34(D)->pstExtraData,
	strd	r10, [r0, #16]	@ D.41940, pImg,
	ldr	r1, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldrd	r10, [r1, #88]	@ D.41940, pVC1_CTX_S_34(D)->pstExtraData,
	strd	r10, [r0, #24]	@ D.41940, pImg,
	ldr	r1, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r1, #104]	@ D.41939, _201->DispEnableFlag
	str	r1, [r0, #68]	@ D.41939, pImg_191->DispEnableFlag
	ldr	r1, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r1, #108]	@ D.41939, _204->DispFrameDistance
	str	r1, [r0, #72]	@ D.41939, pImg_191->DispFrameDistance
	ldr	r1, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r1, #112]	@ D.41939, _207->DistanceBeforeFirstFrame
	str	r1, [r0, #76]	@ D.41939, pImg_191->DistanceBeforeFirstFrame
	ldr	r1, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r1, #128]	@ D.41939, _210->GopNum
	str	r1, [r0, #80]	@ D.41939, pImg_191->GopNum
	ldr	r1, [r5]	@ D.41934, pVC1_CTX_S_34(D)->pstExtraData
	strd	r2, [r1, #56]	@ tmp773, D.41934,
	bl	vfmw_dprint_nothing	@
.L295:
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L296	@,
	add	r3, r5, #86016	@ tmp782, pVC1_CTX_S,
	ldr	r3, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM,
	bne	.L296	@,
	ldr	r3, .L394	@ tmp784,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	ldreq	r2, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	streq	r3, [r2, #1160]	@ USE_FF_APT_EN, _219->img.is_fld_save
	beq	.L297	@,
.L296:
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	mov	r2, #0	@ tmp795,
	str	r2, [r3, #1160]	@ tmp795, _221->img.is_fld_save
.L297:
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	mov	r2, #0	@ tmp800,
	strb	r2, [r3, #2]	@ tmp800, _223->RANGEREDFRM
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, r2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L298	@,
	add	r3, r5, #86016	@ tmp810, pVC1_CTX_S,
	ldrb	r2, [r3, #2620]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPSeqSyntax.RANGERED, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPSeqSyntax.RANGERED
	cmp	r2, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPSeqSyntax.RANGERED,
	ldreqb	r2, [r3, #2858]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.RANGEREDFRM
	ldreq	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	streqb	r2, [r3, #2]	@ D.41926, _227->RANGEREDFRM
.L298:
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ D.41926,
	cmpne	r3, #1	@, D.41926,
	movls	r10, #1	@ tmp829,
	movhi	r10, #0	@ tmp829,
	bls	.L386	@,
	ldr	r3, [r4, #2592]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum
	cmp	r3, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum,
	bls	.L387	@,
.L303:
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	mov	r10, r0	@ pCur,
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	mov	fp, r0	@ pFwd,
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r10, #0	@ pCur,
	cmpne	fp, #0	@, pFwd,
	moveq	r3, #1	@ tmp975,
	movne	r3, #0	@ tmp975,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp981, tmp975
	cmp	r3, #0	@ tmp981,
	bne	.L309	@,
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L306	@,
	add	r3, r5, #86016	@ tmp1022, pVC1_CTX_S,
	ldr	r3, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM,
	beq	.L388	@,
.L306:
	mov	r3, #0	@ tmp1027,
.L377:
	str	r3, [r10, #136]	@ tmp1027, pCur_275->stDispImg.is_fld_save
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType,
	beq	.L389	@,
.L308:
	ldr	r3, [r10, #408]	@ D.41942, pCur_275->pstDecodeFs
	cmp	r3, #0	@ D.41942,
	beq	.L309	@,
	ldr	r2, [r10, #416]	@ pCur_275->pstTfOutFs, pCur_275->pstTfOutFs
	cmp	r2, #0	@ pCur_275->pstTfOutFs,
	beq	.L309	@,
	ldr	r2, [r10, #412]	@ pCur_275->pstDispOutFs, pCur_275->pstDispOutFs
	cmp	r2, #0	@ pCur_275->pstDispOutFs,
	beq	.L309	@,
	ldr	r2, [r0, #408]	@ D.41942, pBwd_283->pstDecodeFs
	add	r9, r5, #12288	@ tmp1405, pVC1_CTX_S,
	cmp	r2, #0	@ D.41942,
	ldrne	r3, [r2, #12]	@ D.41928, _305->PhyAddr
	ldreq	r3, [r3, #12]	@ D.41928, _302->PhyAddr
	str	r3, [r9, #112]	@ D.41928, pVC1_CTX_S_34(D)->Vc1DecParam.BwdRefAddr
	ldr	r3, [fp, #408]	@ D.41942, pFwd_279->pstDecodeFs
	cmp	r3, #0	@ D.41942,
	ldreq	r3, [r10, #408]	@ pCur_275->pstDecodeFs, pCur_275->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.41928,
	str	r3, [r9, #108]	@ D.41928, pVC1_CTX_S_34(D)->Vc1DecParam.FwdRefAddr
	ldr	r3, [r10, #408]	@ pCur_275->pstDecodeFs, pCur_275->pstDecodeFs
	ldr	r3, [r3, #12]	@ _318->PhyAddr, _318->PhyAddr
	str	r3, [r6, #224]	@ _318->PhyAddr, pVC1_CTX_S_34(D)->Vc1DecParam.ystaddr_1d
	ldr	r3, [r10, #420]	@ pCur_275->PmvAddr, pCur_275->PmvAddr
	str	r3, [r9, #116]	@ pCur_275->PmvAddr, pVC1_CTX_S_34(D)->Vc1DecParam.CurrColmbAddr
	ldr	r3, [r0, #420]	@ pBwd_283->PmvAddr, pBwd_283->PmvAddr
	str	r3, [r9, #120]	@ pBwd_283->PmvAddr, pVC1_CTX_S_34(D)->Vc1DecParam.BwdColmbAddr
	ldr	r3, [r10, #412]	@ pCur_275->pstDispOutFs, pCur_275->pstDispOutFs
	ldr	r3, [r3, #12]	@ _328->PhyAddr, _328->PhyAddr
	str	r3, [r9, #104]	@ _328->PhyAddr, pVC1_CTX_S_34(D)->Vc1DecParam.CurFrmImgLuma2dPhyAddr
	ldr	r3, [r10, #412]	@ pCur_275->pstDispOutFs, pCur_275->pstDispOutFs
	ldr	r3, [r3, #20]	@ _332->Stride, _332->Stride
	str	r3, [r6, #184]	@ _332->Stride, pVC1_CTX_S_34(D)->Vc1DecParam.VahbStride
	ldr	r3, [r10, #412]	@ pCur_275->pstDispOutFs, pCur_275->pstDispOutFs
	ldr	r3, [r3, #32]	@ _336->ChromOffset, _336->ChromOffset
	str	r3, [r6, #188]	@ _336->ChromOffset, pVC1_CTX_S_34(D)->Vc1DecParam.uv_offset
	ldr	r3, [r10, #408]	@ pCur_275->pstDecodeFs, pCur_275->pstDecodeFs
	ldr	r10, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r0, [r3, #12]	@, _341->PhyAddr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #1064]	@, _340->img.luma_vir_addr
	ldr	r0, [r9, #108]	@, pVC1_CTX_S_34(D)->Vc1DecParam.FwdRefAddr
	ldr	r10, [r4, #2520]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #1064]	@, _346->img.luma_vir_addr
	ldr	r0, [r9, #112]	@, pVC1_CTX_S_34(D)->Vc1DecParam.BwdRefAddr
	ldr	r9, [r4, #2516]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #1064]	@, _352->img.luma_vir_addr
.L277:
	movw	r3, #3544	@ tmp1135,
	ldrsb	r3, [r6, r3]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L315	@,
	ldr	r1, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	add	r2, r5, #86016	@ tmp1149, pVC1_CTX_S,
	strb	r3, [r1, #1027]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, _385->PicStruct
	ldr	r1, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldrb	r0, [r2, #2859]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.PTYPE
	strb	r0, [r1, #1028]	@ D.41926, _387->PicCodingType
	ldrb	r0, [r2, #2867]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE
	ldr	r1, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	sub	ip, r0, #2	@ tmp1160, D.41926,
	cmp	ip, #1	@ tmp1160,
	movls	r3, #1	@ D.41926,
	bls	.L316	@,
	cmp	r0, #4	@ D.41926,
	beq	.L390	@,
.L316:
	add	r7, r5, #110592	@ tmp1187, pVC1_CTX_S,
	strb	r3, [r1, #1030]	@ D.41926, _391->IsHalfPel
	strb	r3, [r1, #1029]	@ D.41926, _391->IsHalfPel
	mov	r2, #1	@ tmp1177,
	mov	r3, #0	@ tmp1182,
	str	r2, [r4, #2612]	@ tmp1177, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcNum
	strb	r3, [r4, #2624]	@ tmp1182, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].SlcNo
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	ldr	r8, [r7, #2620]	@ D.41929, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsVirAddr
	bl	BsPos	@
	add	r3, r0, #7	@ tmp1197, D.41931,
	cmp	r0, #0	@ D.41931,
	movlt	r0, r3	@ D.41931, tmp1197
	add	r0, r8, r0, asr #3	@ D.41929, D.41929, D.41931,
	str	r0, [r4, #2616]	@ D.41929, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].pStream
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	ldr	r8, [r7, #2632]	@ D.41939, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsPhyAddr
	bl	BsPos	@
	add	r3, r0, #7	@ tmp1213, D.41931,
	cmp	r0, #0	@ D.41931,
	movlt	r0, r3	@ D.41931, tmp1213
	add	r0, r8, r0, asr #3	@ D.41939, D.41939, D.41931,
	str	r0, [r4, #2628]	@ D.41939, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].Phy_addr
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	bl	BsPos	@
	and	r0, r0, #7	@ D.41931,,
	str	r0, [r4, #2632]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].BitOffset
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	ldr	r8, [r7, #2640]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsLength, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsLength
	bl	BsPos	@
	mov	r8, r8, asl #3	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsLength,
	rsb	r0, r0, r8	@ D.41931,, D.41931
	str	r0, [r4, #2636]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].Len
	ldr	r2, [r7, #2680]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbWidth
	ldr	r3, [r7, #2684]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbHeight
	mul	r3, r3, r2	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbWidth
	sub	r3, r3, #1	@ D.41931, D.41931,
	str	r3, [r4, #2640]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].SlcEndMbn
	ldrb	r1, [r6, #450]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
.L317:
	add	r0, r6, #448	@, tmp1400,
	mov	r3, #1	@,
	mov	r2, #0	@,
	bl	VC1_Vfmw_BuildRefList	@
	subs	r7, r0, #0	@ D.41927,
	movne	r7, #1	@ D.41927,
	bne	.L370	@,
	add	r5, r5, #110592	@ tmp1367, pVC1_CTX_S,
	mov	r2, #1	@,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	ldr	r0, [r5, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r7, [r3]	@ D.41927, _485->is_to_ref
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r7, [r3, #1]	@ D.41927, _487->is_to_display
	bl	vfmw_dprint_nothing	@
	b	.L370	@
.L309:
	mov	r2, #1	@,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	mov	r3, #0	@ tmp1064,
	strb	r3, [r2]	@ tmp1064,* D.41935
	ldr	r2, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r3, [r2, #1]	@ tmp1064,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType,
	bne	.L267	@,
	ldr	r3, [r9, #2700]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
	cmp	r3, #0	@ D.41931,
	subgt	r3, r3, #1	@ D.41931, D.41931,
	strgt	r3, [r9, #2700]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
.L267:
	bl	vfmw_dprint_nothing	@
	mov	r7, #0	@ D.41927,
.L370:
	mov	r0, r7	@, D.41927
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L264:
	ldr	r10, [r4, #2532]	@ MEM_HEIGHT_MB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight
	mov	r3, r7	@ MEM_WIDTH_MB, MEM_WIDTH_MB
	mul	r8, r10, r7	@ TotalMbNum, MEM_HEIGHT_MB, MEM_WIDTH_MB
	b	.L324	@
.L274:
	ldr	r3, [r2, #692]	@ _551->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _551->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _551->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	addne	r9, r5, #110592	@ tmp1404, pVC1_CTX_S,
	bne	.L279	@,
	ldr	r2, [r2, #12]	@ _551->s32DecOrderOutput, _551->s32DecOrderOutput
	mov	r3, #0	@ tmp565,
	ldr	r1, [r4, #2596]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	cmp	r2, #1	@ _551->s32DecOrderOutput,
	str	r3, [sp, #12]	@ tmp565, NewNum
	str	r3, [sp, #16]	@ tmp565, ReadNum
	str	r3, [sp, #20]	@ tmp565, RefNum
	beq	.L376	@,
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_FlushFrameToVo.part.0	@
	cmn	r0, #1	@,
	beq	.L286	@,
	ldr	r3, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r4, #2600]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r3, [r3, #12]	@ _553->s32DecOrderOutput, _553->s32DecOrderOutput
	cmp	r3, #1	@ _553->s32DecOrderOutput,
	beq	.L282	@,
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_FlushFrameToVo.part.0	@
	cmn	r0, #1	@,
	bne	.L376	@,
.L286:
	mov	r7, #0	@ D.41927,
	b	.L370	@
.L376:
	ldr	r1, [r4, #2600]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
.L282:
	add	r9, r5, #110592	@ tmp1404, pVC1_CTX_S,
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	add	r2, sp, #16	@,,
	add	r1, sp, #20	@,,
	movne	r3, #1	@ tmp586,
	strne	r3, [r0, #376]	@ tmp586, pImage_88->u32IsLastFrame
	add	r3, sp, #12	@,,
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [r5]	@ D.41934, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r4, #2536]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast
	ldr	r3, [r2, #720]	@ _94->s32DSDThrWidth, _94->s32DSDThrWidth
	cmp	r3, r1, asl #4	@ _94->s32DSDThrWidth, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast,
	blt	.L284	@,
	ldr	r3, [r4, #2540]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast
	ldr	r1, [r2, #724]	@ _94->s32DSDThrHeight, _94->s32DSDThrHeight
	add	r3, r3, #1	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast,
	add	r3, r3, r3, lsr #31	@ tmp608, D.41931, D.41931,
	mov	r3, r3, asr #1	@ D.41931, tmp608,
	cmp	r1, r3, asl #5	@ _94->s32DSDThrHeight, D.41931,
	blt	.L284	@,
	ldr	r3, [sp, #16]	@ ReadNum, ReadNum
	ldr	r1, [sp, #12]	@ NewNum, NewNum
	add	r3, r3, r1	@ D.41931, ReadNum, NewNum
	cmp	r3, #0	@ D.41931,
	ble	.L279	@,
	mov	r3, #1	@ tmp617,
	str	r3, [r9, #3132]	@ tmp617, pVC1_CTX_S_34(D)->DSDNeedClearQue
	str	r3, [r2, #728]	@ tmp617, _94->s32DSDWaitFlag
	b	.L286	@
.L392:
	ldr	r3, [sp, #16]	@ ReadNum, ReadNum
	cmp	r3, #4	@ ReadNum,
	bgt	.L287	@,
.L279:
	add	r1, r6, #21504	@ D.41935, tmp1400,
	mov	r3, #0	@ tmp625,
	add	r1, r1, #56	@ D.41935, D.41935,
	str	r3, [r2, #728]	@ tmp625, _552->s32DSDWaitFlag
	str	r1, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	str	r1, [r4, #2524]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	str	r1, [r4, #2520]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	str	r1, [r4, #2516]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	str	r3, [sp]	@ tmp625, %sfp
	bl	FSP_GetFsImagePtr	@
	subs	ip, r0, #0	@ pImg,
	beq	.L288	@,
	ldr	r1, [ip, #192]	@, pImg_126->p_usrdat
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	str	ip, [sp, #4]	@ pImg, %sfp
	bl	FreeUsdByDec	@
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	ldr	ip, [sp, #4]	@ pImg, %sfp
	ldr	r1, [ip, #196]	@, pImg_126->p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	ldr	ip, [sp, #4]	@ pImg, %sfp
	ldr	r1, [ip, #200]	@, pImg_126->p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	ldr	ip, [sp, #4]	@ pImg, %sfp
	ldr	r1, [ip, #204]	@, pImg_126->p_usrdat
	bl	FreeUsdByDec	@
	mov	r2, #1	@,
	ldmia	sp, {r3, ip}	@,,
	str	r3, [ip, #192]	@ tmp625, pImg_126->p_usrdat
	str	r3, [ip, #196]	@ tmp625, pImg_126->p_usrdat
	str	r3, [ip, #200]	@ tmp625, pImg_126->p_usrdat
	str	r3, [ip, #204]	@ tmp625, pImg_126->p_usrdat
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [sp]	@ tmp625, %sfp
	str	r3, [r4, #2596]	@ tmp625, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	str	r3, [r4, #2600]	@ tmp625, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	str	r0, [r4, #2596]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
.L288:
	add	r3, r5, #112640	@ D.41937, pVC1_CTX_S,
	mov	r2, #0	@ tmp714,
	add	r3, r3, #728	@ D.41937, D.41937,
	str	r2, [r4, #2592]	@ tmp714, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	mov	r1, r3	@, D.41937
	str	r3, [sp]	@ D.41937, %sfp
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [r5]	@ D.41934, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r2, #608]	@ _160->stChanOption.s32ReRangeEn, _160->stChanOption.s32ReRangeEn
	cmp	r1, #0	@ _160->stChanOption.s32ReRangeEn,
	ldr	r3, [sp]	@ D.41937, %sfp
	bne	.L289	@,
	ldr	r2, [r2, #32]	@ _160->eCapLevel, _160->eCapLevel
	cmp	r2, #25	@ _160->eCapLevel,
	beq	.L391	@,
.L289:
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	str	r3, [sp]	@ D.41937, %sfp
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	ldr	r3, [sp]	@ D.41937, %sfp
	bne	.L291	@,
	ldr	r2, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r2, [r2, #692]	@ _168->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _168->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _168->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L293	@,
	ldr	r2, [r9, #3132]	@ pVC1_CTX_S_34(D)->DSDNeedClearQue, pVC1_CTX_S_34(D)->DSDNeedClearQue
	cmp	r2, #1	@ pVC1_CTX_S_34(D)->DSDNeedClearQue,
	bne	.L291	@,
.L293:
	mov	r0, r3	@, D.41937
	bl	ResetVoQueue	@
.L291:
	add	r10, r10, #1	@ D.41931, MEM_HEIGHT_MB,
	mov	r1, fp	@, D.41933
	mov	r3, #2	@,
	mov	r0, r5	@, pVC1_CTX_S
	add	r10, r10, r10, lsr #31	@ tmp739, D.41931, D.41931,
	mov	r2, r10, asr #1	@ D.41931, tmp739,
	mov	r2, r2, asl #5	@, D.41931,
	bl	VC1_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L294	@,
	ldrb	r3, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	orr	r3, r3, #8	@ tmp748, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	strb	r3, [r6, #448]	@ tmp748, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	b	.L278	@
.L384:
	ldr	r2, [r4, #2536]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast
	cmp	r2, r3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast, MEM_WIDTH_MB
	bne	.L271	@,
	ldr	r2, [r5]	@ D.41934, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r3, [r2, #728]	@ _60->s32DSDWaitFlag, _60->s32DSDWaitFlag
	cmp	r3, #1	@ _60->s32DSDWaitFlag,
	beq	.L271	@,
	mov	r3, r7, asl #4	@ D.41931, MEM_WIDTH_MB,
	add	r3, r3, #63	@ D.41931, D.41931,
	bic	r3, r3, #63	@ D.41931, D.41931,
	str	r3, [r4, #2552]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].DDR_Stride
	ldrb	r3, [r6, #456]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld,
	movne	r3, #0	@ SizeChanged,
	bne	.L273	@,
	b	.L275	@
.L386:
	ldr	r2, [r4, #2592]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum
	ldr	r3, [r4, #2600]	@ D.41927, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	cmp	r2, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum,
	ldr	r1, [r4, #2596]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	movne	r2, #2	@ D.41928,
	moveq	r2, #1	@ D.41928,
	cmp	r1, r3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID, D.41927
	str	r2, [r4, #2592]	@ D.41928, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum
	beq	.L301	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, #2600]	@ D.41927, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
.L301:
	ldr	r1, [r4, #2604]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	mov	r2, #1	@,
	str	r3, [r4, #2596]	@ D.41927, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	str	r1, [r4, #2600]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_RemovePmv	@
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ D.41926,
	cmpne	r3, #1	@, D.41926,
	bhi	.L303	@,
	ldr	r3, [r4, #2520]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	mov	r1, #0	@ tmp921,
	mov	r2, #1	@ tmp927,
	strb	r1, [r3]	@ tmp921, _264->is_to_ref
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r2, [r3]	@ tmp927, _266->is_to_ref
	ldr	r2, [r4, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	ldr	r3, [r4, #2512]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	str	r2, [r4, #2520]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	str	r3, [r4, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	b	.L303	@
.L284:
	ldr	r3, [sp, #12]	@ NewNum, NewNum
	cmp	r3, #0	@ NewNum,
	ble	.L392	@,
.L287:
	mov	r1, #0	@ tmp623,
	mov	r3, #1	@ tmp624,
	str	r1, [r9, #3132]	@ tmp623, pVC1_CTX_S_34(D)->DSDNeedClearQue
	str	r3, [r2, #728]	@ tmp624, _94->s32DSDWaitFlag
	b	.L286	@
.L294:
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	mov	r7, #0	@ D.41927,
	bic	r3, r3, #8	@ tmp756, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	strb	r3, [r6, #448]	@ tmp756, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	b	.L370	@
.L385:
	ldrb	r2, [r6, #457]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].LastIs2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].LastIs2ndFld
	cmp	r2, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].LastIs2ndFld,
	bne	.L277	@,
	b	.L375	@
.L315:
	add	lr, r5, #86016	@ tmp1403, pVC1_CTX_S,
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r2, [lr, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	strb	r2, [r3, #1027]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, _434->PicStruct
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldrb	r2, [lr, #2957]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.PTYPE
	strb	r2, [r3, #1028]	@ D.41926, _438->PicCodingType
	ldrb	r2, [lr, #2970]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	sub	r0, r2, #2	@ tmp1287, D.41926,
	ldrb	r1, [lr, #2997]	@ zero_extendqisi2	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.CurParity
	cmp	r0, #1	@ tmp1287,
	movls	r2, #1	@ D.41926,
	bls	.L318	@,
	cmp	r2, #4	@ D.41926,
	movne	r2, #0	@ D.41926,
	beq	.L393	@,
.L318:
	add	r3, r3, r1	@ tmp1298, D.41935, D.41931
	strb	r2, [r3, #1029]	@ D.41926, _441->IsHalfPel
	ldr	ip, [r4, #2612]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcNum
	cmp	ip, #0	@ D.41931,
	beq	.L319	@,
	sub	ip, ip, #1	@ D.41931, D.41931,
	cmp	ip, #0	@ D.41931,
	mov	r0, ip	@ tmp1401, D.41931
	uxtble	r1, ip	@ D.41926, D.41931
	ble	.L321	@,
	add	r2, r5, #100352	@ ivtmp.926, pVC1_CTX_S,
	mov	r1, #0	@ i,
	add	r2, r2, #576	@ ivtmp.926, ivtmp.926,
.L322:
	ldr	r3, [r2, #64]	@ MEM[base: _554, offset: 64B], MEM[base: _554, offset: 64B]
	add	r2, r2, #48	@ ivtmp.926, ivtmp.926,
	strb	r1, [r2, #-48]	@ i, MEM[base: _554, offset: 0B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, r0	@ i, tmp1401
	mul	r3, r3, r7	@ D.41931, MEM[base: _554, offset: 64B], MEM_WIDTH_MB
	sub	r3, r3, #1	@ D.41931, D.41931,
	str	r3, [r2, #-32]	@ D.41931, MEM[base: _554, offset: 16B]
	bne	.L322	@,
	uxtb	r1, r1	@ D.41926, i
.L321:
	mov	r3, ip, asl #6	@ tmp1317, D.41931,
	movw	r2, #23120	@ tmp1330,
	sub	ip, r3, ip, asl #4	@ tmp1318, tmp1317, D.41931,
	movw	r3, #23104	@ tmp1320,
	add	ip, r6, ip	@ tmp1319, tmp1400, tmp1318
	sub	r8, r8, #1	@ D.41931, TotalMbNum,
	strb	r1, [ip, r3]	@ D.41926, MEM[(struct VC1_SLCSTREAM_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[_548].SlcNo
	str	r8, [ip, r2]	@ D.41931, MEM[(struct VC1_SLCSTREAM_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[_548].SlcEndMbn
	ldrb	r1, [r6, #450]	@ zero_extendqisi2	@ D.41926, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r1, #2	@ D.41926,
	bne	.L317	@,
	ldrb	r3, [lr, #2987]	@ zero_extendqisi2	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.REFDIST
	add	r0, r5, #110592	@ tmp1348, pVC1_CTX_S,
	ldr	r2, [lr, #3104]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.ScaleFactor, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.ScaleFactor
	mul	r2, r2, r3	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.ScaleFactor, D.41931
	mov	r2, r2, asr #8	@ D.41931, D.41931,
	str	r2, [r0, #2656]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FRFD
	rsb	r3, r2, r3	@ D.41931, D.41931, D.41931
	subs	r3, r3, #1	@ D.41931, D.41931,
	movmi	r3, #0	@ tmp1358,
	str	r3, [r0, #2660]	@ tmp1358, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BRFD
	b	.L317	@
.L391:
	ldrb	r2, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	tst	r2, #8	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	bne	.L291	@,
	b	.L293	@
.L319:
	mov	r3, #1	@ tmp1386,
	mov	r1, ip	@ D.41926, D.41931
	str	r3, [r4, #2612]	@ tmp1386, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcNum
	b	.L321	@
.L389:
	ldr	r3, [fp, #136]	@ D.41939, pFwd_279->stDispImg.is_fld_save
	str	r3, [r10, #136]	@ D.41939, pCur_275->stDispImg.is_fld_save
	ldr	r2, [r4, #2520]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r2, [r2, #1160]	@ D.41939, _296->img.is_fld_save
	str	r2, [r3, #1160]	@ D.41939, _295->img.is_fld_save
	ldr	r3, [r9, #2700]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
	add	r3, r3, #1	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag,
	str	r3, [r9, #2700]	@ D.41931, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
	b	.L308	@
.L388:
	ldr	r3, .L394	@ tmp1024,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L306	@,
	b	.L377	@
.L393:
	ldrb	r2, [lr, #2971]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE2, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE2
	sub	r2, r2, #2	@ tmp1296, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE2,
	cmp	r2, #1	@ tmp1296,
	movhi	r2, #0	@ D.41926,
	movls	r2, #1	@ D.41926,
	b	.L318	@
.L390:
	ldrb	r3, [r2, #2868]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE2, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE2
	sub	r3, r3, #2	@ tmp1169, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE2,
	cmp	r3, #1	@ tmp1169,
	movhi	r3, #0	@ D.41926,
	movls	r3, #1	@ D.41926,
	b	.L316	@
.L387:
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	mov	r7, r10	@ D.41927, tmp829
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r10, [r3]	@ tmp829, _238->is_to_ref
	ldr	r3, [r4, #2512]	@ D.41935, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r10, [r3, #1]	@ tmp829, _240->is_to_display
	bl	vfmw_dprint_nothing	@
	b	.L370	@
.L395:
	.align	2
.L394:
	.word	USE_FF_APT_EN
	.fnend
	.size	VC1_Vfmw_GetStreamInfo, .-VC1_Vfmw_GetStreamInfo
	.align	2
	.global	VC1_Vfmw_PrepareDecode
	.type	VC1_Vfmw_PrepareDecode, %function
VC1_Vfmw_PrepareDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VC1_Vfmw_GetStreamInfo	@
	subs	r4, r0, #0	@ D.41948,
	movne	r4, #1	@ D.41948,
	bne	.L397	@,
	bl	vfmw_dprint_nothing	@
.L397:
	mov	r0, r4	@, D.41948
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VC1_Vfmw_PrepareDecode, .-VC1_Vfmw_PrepareDecode
	.align	2
	.global	VC1_DecMvrange
	.type	VC1_DecMvrange, %function
VC1_DecMvrange:
	.fnstart
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pBs, pBs
	ldr	lr, .L402	@ tmp117,
	.pad #64
	sub	sp, sp, #64	@,,
	mov	ip, sp	@ tmp116,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp116,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp116,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp116,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp116,,,,
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	add	r3, sp, #64	@ tmp124,,
	add	r3, r3, r0, lsl #3	@ tmp118, tmp124,,
	mov	r0, r4	@, pBs
	ldr	r1, [r3, #-60]	@, VlcTab[Tmp_5].Len
	ldr	r4, [r3, #-64]	@ Code, VlcTab[Tmp_5].Code
	bl	BsSkip	@
	mov	r0, r4	@, Code
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L403:
	.align	2
.L402:
	.word	.LANCHOR0
	.fnend
	.size	VC1_DecMvrange, .-VC1_DecMvrange
	.align	2
	.global	VC1_DecTransacfrm
	.type	VC1_DecTransacfrm, %function
VC1_DecTransacfrm:
	.fnstart
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #64
	sub	sp, sp, #64	@,,
	mov	r4, r0	@ pBs, pBs
	mov	r2, #64	@,
	mov	r1, #0	@,
	mov	r0, sp	@,
	bl	memset	@
	mov	r3, #2	@ tmp121,
	mov	r1, r3	@, tmp121
	mov	r0, r4	@, pBs
	mov	r2, #1	@ tmp118,
	str	r3, [sp, #20]	@ tmp121, VlcTab[2].Len
	str	r2, [sp, #4]	@ tmp118, VlcTab[0].Len
	str	r2, [sp, #12]	@ tmp118, VlcTab[1].Len
	str	r2, [sp, #16]	@ tmp118, VlcTab[2].Code
	str	r3, [sp, #24]	@ tmp121, VlcTab[3].Code
	str	r3, [sp, #28]	@ tmp121, VlcTab[3].Len
	bl	BsShow	@
	add	r3, sp, #64	@ tmp130,,
	add	r3, r3, r0, lsl #3	@ tmp124, tmp130,,
	mov	r0, r4	@, pBs
	ldr	r1, [r3, #-60]	@, VlcTab[Tmp_11].Len
	ldr	r4, [r3, #-64]	@ Code, VlcTab[Tmp_11].Code
	bl	BsSkip	@
	mov	r0, r4	@, Code
	add	sp, sp, #64	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VC1_DecTransacfrm, .-VC1_DecTransacfrm
	.align	2
	.global	VC1_SetCurPicResolutionInfo
	.type	VC1_SetCurPicResolutionInfo, %function
VC1_SetCurPicResolutionInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #20480	@ tmp134, pCodecInfo,
	cmp	r1, #1	@ RESPIC,
	add	r0, r0, #32768	@ tmp186, pCodecInfo,
	ldr	r2, [r3, #2080]	@ pCodecInfo_4(D)->MbWidth, pCodecInfo_4(D)->MbWidth
	beq	.L408	@,
	cmp	r1, #2	@ RESPIC,
	beq	.L414	@,
	cmp	r1, #0	@ RESPIC,
	beq	.L413	@,
	add	r2, r2, #1	@ D.41958, pCodecInfo_4(D)->MbWidth,
	add	r2, r2, r2, lsr #31	@ tmp164, D.41958, D.41958,
	mov	r2, r2, asr #1	@ D.41958, tmp164,
.L414:
	str	r2, [r0, #2232]	@ D.41958, pCodecInfo_4(D)->CurPicMbWidth
	ldr	r3, [r3, #2084]	@ pCodecInfo_4(D)->MbHeight, pCodecInfo_4(D)->MbHeight
	add	r3, r3, #1	@ D.41958, pCodecInfo_4(D)->MbHeight,
	add	r3, r3, r3, lsr #31	@ tmp173, D.41958, D.41958,
	mov	r3, r3, asr #1	@ D.41958, tmp173,
	str	r3, [r0, #2236]	@ D.41958, pCodecInfo_4(D)->CurPicMbHeight
	b	.L411	@
.L408:
	add	r2, r2, #1	@ D.41958, pCodecInfo_4(D)->MbWidth,
	add	r2, r2, r2, lsr #31	@ tmp138, D.41958, D.41958,
	mov	r2, r2, asr #1	@ D.41958, tmp138,
.L413:
	str	r2, [r0, #2232]	@ D.41958, pCodecInfo_4(D)->CurPicMbWidth
	ldr	r3, [r3, #2084]	@ D.41958, pCodecInfo_4(D)->MbHeight
	str	r3, [r0, #2236]	@ D.41958, pCodecInfo_4(D)->CurPicMbHeight
.L411:
	mul	r1, r3, r2	@ D.41958, D.41958, D.41958
	mov	r2, r2, asl #4	@ D.41958, D.41958,
	mov	r3, r3, asl #4	@ D.41958, D.41958,
	str	r2, [r0, #2224]	@ D.41958, pCodecInfo_4(D)->CurPicWidth
	str	r3, [r0, #2228]	@ D.41958, pCodecInfo_4(D)->CurPicHeight
	str	r1, [r0, #2240]	@ D.41958, pCodecInfo_4(D)->CurPicMbNum
	bx	lr	@
	.fnend
	.size	VC1_SetCurPicResolutionInfo, .-VC1_SetCurPicResolutionInfo
	.align	2
	.global	VC1_DecMvmodeProgrP
	.type	VC1_DecMvmodeProgrP, %function
VC1_DecMvmodeProgrP:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ PQUANT, PQUANT
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r1, #4	@,
	mov	r7, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	ip, .L427	@ tmp119,
	mov	r5, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp119,,,,
	mov	r4, sp	@ tmp118,
	add	lr, sp, #20	@ tmp122,,
	ldr	r8, [ip], #4	@ tmp120,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp118,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp123,,,,
	str	r8, [r4]	@ tmp120, ModeLow
	ldr	ip, [ip]	@ tmp124,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp122,,,,
	str	ip, [lr]	@ tmp124, ModeHigh
	ble	.L425	@,
	cmp	r5, #3	@ Tmp,
	movle	r1, #3	@ Len,
	movle	r4, #2	@ Code,
	bgt	.L426	@,
.L417:
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	cmp	r6, #12	@ PQUANT,
	add	r3, sp, #40	@ tmp130,,
	add	r4, r3, r4, lsl #2	@ tmp125, tmp130, Code,
	ldrhi	r0, [r4, #-40]	@ Code, ModeLow
	ldrls	r0, [r4, #-20]	@ Code, ModeHigh
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L426:
	cmp	r5, #8	@ Tmp,
	movlt	r1, #2	@ Len,
	movge	r1, #1	@ Len,
	movlt	r4, #1	@ Code,
	movge	r4, #0	@ Code,
	b	.L417	@
.L425:
	cmp	r5, #0	@ Tmp,
	mov	r1, #4	@ Len,
	moveq	r4, #3	@ Code,
	movne	r4, r1	@ Code, Len
	b	.L417	@
.L428:
	.align	2
.L427:
	.word	.LANCHOR0+64
	.fnend
	.size	VC1_DecMvmodeProgrP, .-VC1_DecMvmodeProgrP
	.align	2
	.global	VC1_DecMvmodeProgrB
	.type	VC1_DecMvmodeProgrB, %function
VC1_DecMvmodeProgrB:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r1, #1	@,
	.pad #12
	sub	sp, sp, #12	@,,
	bl	BsSkip	@
	ldr	r2, .L431	@ tmp117,
	add	r3, sp, #8	@ tmp121,,
	add	r3, r3, r0, lsl #2	@ tmp118, tmp121, Tmp,
	ldmia	r2, {r0, r1}	@ tmp117,,
	add	r2, sp, #8	@ tmp122,,
	stmdb	r2, {r0, r1}	@ tmp122,,
	ldr	r0, [r3, #-8]	@, Mode
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L432:
	.align	2
.L431:
	.word	.LANCHOR0+104
	.fnend
	.size	VC1_DecMvmodeProgrB, .-VC1_DecMvmodeProgrB
	.align	2
	.global	VC1_DecMvmodeInterB
	.type	VC1_DecMvmodeInterB, %function
VC1_DecMvmodeInterB:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r1	@ PQUANT, PQUANT
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r1, #3	@,
	mov	r7, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L442	@ tmp119,
	mov	r8, #0	@ tmp121,
	mov	r9, #1	@ tmp126,
	mov	ip, #2	@ tmp127,
	mov	r4, #3	@ tmp128,
	mov	r5, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp119,,,,
	add	lr, sp, #4	@ tmp118,,
	str	r8, [sp, #24]	@ tmp121, ModeHigh
	str	r8, [sp, #36]	@ tmp121, ModeHigh
	str	r9, [sp, #20]	@ tmp126, ModeHigh
	str	ip, [sp, #28]	@ tmp127, ModeHigh
	stmia	lr, {r0, r1, r2, r3}	@ tmp118,,,,
	str	r4, [sp, #32]	@ tmp128, ModeHigh
	ble	.L441	@,
	cmp	r5, #4	@ Tmp,
	movlt	r1, #2	@ Len,
	movge	r1, #1	@ Len,
	movlt	r4, #1	@ Code,
	movge	r4, #0	@ Code,
.L435:
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	cmp	r6, #12	@ PQUANT,
	add	r3, sp, #40	@ tmp134,,
	add	ip, r3, r4, lsl #2	@ tmp129, tmp134, Code,
	ldrhi	r0, [ip, #-36]	@ Code, ModeLow
	ldrls	r0, [ip, #-20]	@ Code, ModeHigh
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L441:
	cmp	r5, r8	@ Tmp,
	mov	r1, r4	@ Len, tmp128
	movne	r4, ip	@ Code, tmp127
	b	.L435	@
.L443:
	.align	2
.L442:
	.word	.LANCHOR0+112
	.fnend
	.size	VC1_DecMvmodeInterB, .-VC1_DecMvmodeInterB
	.align	2
	.global	VC1_DecMvmode2
	.type	VC1_DecMvmode2, %function
VC1_DecMvmode2:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ PQUANT, PQUANT
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r1, #3	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L454	@ tmp119,
	add	ip, r3, #16	@ tmp122, tmp119,
	mov	r4, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp119,,,,
	stmia	sp, {r0, r1, r2, r3}	@ tmp118,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp122,,,,
	add	ip, sp, #32	@ tmp128,,
	stmdb	ip, {r0, r1, r2, r3}	@ tmp128,,,,
	ble	.L453	@,
	cmp	r4, #4	@ Tmp,
	movlt	r1, #2	@ Len,
	movge	r1, #1	@ Len,
	movlt	r4, #1	@ Code,
	movge	r4, #0	@ Code,
.L446:
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	cmp	r5, #12	@ PQUANT,
	add	r3, sp, #32	@ tmp129,,
	add	r4, r3, r4, lsl #2	@ tmp123, tmp129, Code,
	ldrhi	r0, [r4, #-32]	@ Code, ModeLow
	ldrls	r0, [r4, #-16]	@ Code, ModeHigh
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L453:
	cmp	r4, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r4, r1	@ Code, Len
	movne	r4, #2	@ Code,
	b	.L446	@
.L455:
	.align	2
.L454:
	.word	.LANCHOR0+112
	.fnend
	.size	VC1_DecMvmode2, .-VC1_DecMvmode2
	.align	2
	.global	VC1_DecBfractionSMP
	.type	VC1_DecBfractionSMP, %function
VC1_DecBfractionSMP:
	.fnstart
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L463	@ tmp126,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #212
	sub	sp, sp, #212	@,,
	mov	r10, r0	@ pBs, pBs
	add	fp, sp, #8	@ tmp125,,
	stmia	sp, {r1, r2}	@,,
	add	r8, sp, #36	@ tmp128,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp126,,,,
	add	r5, sp, #96	@ tmp131,,
	add	lr, sp, #152	@ tmp134,,
	add	r7, sp, #64	@ tmp137,,
	add	r9, ip, #12	@ tmp129, tmp126,
	add	r6, ip, #40	@ tmp132, tmp126,
	stmia	fp!, {r0, r1, r2, r3}	@ tmp125,,,,
	add	r4, ip, #96	@ tmp135, tmp126,
	ldmia	ip, {r0, r1, r2}	@ tmp126,,,
	add	ip, ip, #152	@ tmp138, tmp126,
	stmia	fp, {r0, r1, r2}	@ tmp125,,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp129,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp128,,,,
	ldmia	r9, {r0, r1, r2}	@ tmp129,,,
	stmia	r8, {r0, r1, r2}	@ tmp128,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp132,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp131,,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp132,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp131,,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp132,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp131,,,,
	ldmia	r6, {r0, r1}	@ tmp132,,
	stmia	r5, {r0, r1}	@ tmp131,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp135,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp134,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp135,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp134,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp135,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp134,,,,
	ldmia	r4, {r0, r1}	@ tmp135,,
	stmia	lr, {r0, r1}	@ tmp134,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp138,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp137,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp138,,,,
	stmia	r7, {r0, r1, r2, r3}	@ tmp137,,,,
	mov	r0, r10	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	mov	r4, r0	@ BfracIdx,
	cmp	r4, #6	@ BfracIdx,
	mov	r0, r10	@, pBs
	bgt	.L457	@,
	mov	r1, #3	@,
	bl	BsSkip	@
	add	r3, sp, #208	@ tmp155,,
	add	r3, r3, r4, lsl #2	@ tmp139, tmp155, BfracIdx,
	ldr	r1, [r3, #-200]	@ Numerator, NumShortVLC
	ldr	r2, [r3, #-172]	@ Denominator, DenShortVLC
.L458:
	add	r3, sp, #208	@ tmp158,,
	mov	r0, r4	@ D.41969, BfracIdx
	add	r2, r3, r2, lsl #2	@ tmp150, tmp158, Denominator,
	ldr	r3, [r2, #-148]	@ tmp153, Inverse
	ldr	r2, [sp]	@ pScaleFactor, %sfp
	mul	r3, r3, r1	@ ScaleFactor, tmp153, Numerator
	str	r3, [r2]	@ ScaleFactor, *pScaleFactor_31(D)
	add	sp, sp, #212	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L457:
	mov	r1, #7	@,
	bl	BsGet	@
	and	r4, r0, #15	@ D.41970, Code,
	cmp	r4, #15	@ D.41970,
	beq	.L462	@,
	sub	r0, r0, #112	@ D.41970, Code,
	add	r3, sp, #208	@ tmp157,,
	add	r4, r4, #7	@ BfracIdx, D.41970,
	add	r0, r3, r0, lsl #2	@ tmp145, tmp157, D.41970,
	ldr	r1, [r0, #-112]	@ Numerator, NumLongVLC
	ldr	r2, [r0, #-56]	@ Denominator, DenLongVLC
	b	.L458	@
.L462:
	ldr	r2, [sp, #4]	@ pPTYPE, %sfp
	mov	r3, #4	@ tmp143,
	mov	r0, #22	@ D.41969,
	strb	r3, [r2]	@ tmp143, *pPTYPE_19(D)
	add	sp, sp, #212	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L464:
	.align	2
.L463:
	.word	.LANCHOR0+144
	.fnend
	.size	VC1_DecBfractionSMP, .-VC1_DecBfractionSMP
	.align	2
	.global	VC1_DecBfraction
	.type	VC1_DecBfraction, %function
VC1_DecBfraction:
	.fnstart
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L470	@ tmp124,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #212
	sub	sp, sp, #212	@,,
	mov	r10, r0	@ pBs, pBs
	add	fp, sp, #8	@ tmp123,,
	str	r1, [sp, #4]	@ pScaleFactor, %sfp
	add	r8, sp, #36	@ tmp126,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp124,,,,
	add	r5, sp, #96	@ tmp129,,
	add	lr, sp, #152	@ tmp132,,
	add	r7, sp, #64	@ tmp135,,
	add	r9, ip, #12	@ tmp127, tmp124,
	add	r6, ip, #40	@ tmp130, tmp124,
	stmia	fp!, {r0, r1, r2, r3}	@ tmp123,,,,
	add	r4, ip, #96	@ tmp133, tmp124,
	ldmia	ip, {r0, r1, r2}	@ tmp124,,,
	add	ip, ip, #152	@ tmp136, tmp124,
	stmia	fp, {r0, r1, r2}	@ tmp123,,,
	ldmia	r9!, {r0, r1, r2, r3}	@ tmp127,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp126,,,,
	ldmia	r9, {r0, r1, r2}	@ tmp127,,,
	stmia	r8, {r0, r1, r2}	@ tmp126,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp130,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp129,,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp130,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp129,,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp130,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp129,,,,
	ldmia	r6, {r0, r1}	@ tmp130,,
	stmia	r5, {r0, r1}	@ tmp129,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp133,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp132,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp133,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp132,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp133,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp132,,,,
	ldmia	r4, {r0, r1}	@ tmp133,,
	stmia	lr, {r0, r1}	@ tmp132,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp136,,,,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp135,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp136,,,,
	stmia	r7, {r0, r1, r2, r3}	@ tmp135,,,,
	mov	r0, r10	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	mov	r4, r0	@ BfracIdx,
	cmp	r4, #6	@ BfracIdx,
	mov	r0, r10	@, pBs
	ble	.L469	@,
	mov	r1, #7	@,
	bl	BsGet	@
	sub	r2, r0, #112	@ D.41973, Code,
	add	r3, sp, #208	@ tmp153,,
	and	r0, r0, #15	@ D.41973, Code,
	add	r2, r3, r2, lsl #2	@ tmp142, tmp153, D.41973,
	add	r4, r0, #7	@ BfracIdx, D.41973,
	ldr	r1, [r2, #-112]	@ Numerator, NumLongVLC
	ldr	r2, [r2, #-56]	@ Denominator, DenLongVLC
.L467:
	add	r3, sp, #208	@ tmp154,,
	mov	r0, r4	@, BfracIdx
	add	r2, r3, r2, lsl #2	@ tmp147, tmp154, Denominator,
	ldr	r3, [r2, #-148]	@ tmp150, Inverse
	ldr	r2, [sp, #4]	@ pScaleFactor, %sfp
	mul	r3, r3, r1	@ ScaleFactor, tmp150, Numerator
	str	r3, [r2]	@ ScaleFactor, *pScaleFactor_27(D)
	add	sp, sp, #212	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L469:
	mov	r1, #3	@,
	bl	BsSkip	@
	add	r3, sp, #208	@ tmp152,,
	add	r3, r3, r4, lsl #2	@ tmp137, tmp152, BfracIdx,
	ldr	r1, [r3, #-200]	@ Numerator, NumShortVLC
	ldr	r2, [r3, #-172]	@ Denominator, DenShortVLC
	b	.L467	@
.L471:
	.align	2
.L470:
	.word	.LANCHOR0+144
	.fnend
	.size	VC1_DecBfraction, .-VC1_DecBfraction
	.align	2
	.global	VC1_VopDQuant
	.type	VC1_VopDQuant, %function
VC1_VopDQuant:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2	@ DQUANT,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r2	@ PQUANT, PQUANT
	mov	r4, r3	@ pVopDquant, pVopDquant
	mov	r7, r0	@ pBs, pBs
	beq	.L491	@,
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r5, r0	@ D.41982,
	strb	r5, [r4]	@ D.41982, pVopDquant_4(D)->DQUANTFRM
	cmp	r5, #1	@ D.41982,
	beq	.L492	@,
.L476:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L491:
	mov	r3, #1	@ tmp146,
	mov	r1, #3	@,
	strb	r3, [r4, #3]	@ tmp146, pVopDquant_4(D)->UseAltQp
	strb	r3, [r4]	@ tmp146, pVopDquant_4(D)->DQUANTFRM
	bl	BsGet	@
	uxtb	r0, r0	@ D.41982,
	strb	r0, [r4, #4]	@ D.41982, pVopDquant_4(D)->PQDIFF
	cmp	r0, #7	@ D.41982,
	addne	r6, r6, #1	@ tmp153, PQUANT,
	addne	r3, r0, r6	@ tmp155, D.41982, tmp153
	strneb	r3, [r4, #8]	@ tmp155, pVopDquant_4(D)->ALTPQUANT
	beq	.L493	@,
.L475:
	mov	r3, #1	@ tmp157,
	mov	r0, #1	@,
	str	r3, [r4, #12]	@ tmp157, pVopDquant_4(D)->QuantMode
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L492:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41982,
	strb	r1, [r4, #1]	@ D.41982, pVopDquant_4(D)->DQPROFILE
	cmp	r1, #0	@ D.41982,
	streq	r5, [r4, #12]	@ D.41982, pVopDquant_4(D)->QuantMode
	beq	.L479	@,
	cmp	r1, #2	@ D.41982,
	beq	.L494	@,
	cmp	r1, #1	@ D.41982,
	beq	.L495	@,
	cmp	r1, #3	@ D.41982,
	movne	r3, #0	@ tmp168,
	strne	r3, [r4, #12]	@ tmp168, pVopDquant_4(D)->QuantMode
	beq	.L496	@,
.L479:
	ldr	r3, [r4]	@ *pVopDquant_4(D), *pVopDquant_4(D)
	bic	r3, r3, #-16777216	@ D.41985, *pVopDquant_4(D),
	bic	r3, r3, #255	@ D.41985, D.41985,
	cmp	r3, #768	@ D.41985,
	beq	.L476	@,
	mov	r3, #1	@ tmp172,
	mov	r1, #3	@,
	strb	r3, [r4, #3]	@ tmp172, pVopDquant_4(D)->UseAltQp
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.41982,
	strb	r0, [r4, #4]	@ D.41982, pVopDquant_4(D)->PQDIFF
	cmp	r0, #7	@ D.41982,
	addne	r6, r6, #1	@ tmp177, PQUANT,
	addne	r6, r0, r6	@ tmp179, D.41982, tmp177
	strneb	r6, [r4, #8]	@ tmp179, pVopDquant_4(D)->ALTPQUANT
	bne	.L476	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.41982,
	strb	r0, [r4, #5]	@ D.41982, pVopDquant_4(D)->ABSPQ
	strb	r0, [r4, #8]	@ D.41982, pVopDquant_4(D)->ALTPQUANT
	b	.L476	@
.L496:
	mov	r1, r5	@, D.41982
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.41982,
	strb	r0, [r4, #2]	@ D.41982, pVopDquant_4(D)->DQBILEVEL
	cmp	r0, #0	@ D.41982,
	movne	r3, #10	@ D.41984,
	moveq	r3, #11	@ D.41984,
	str	r3, [r4, #12]	@ D.41984, pVopDquant_4(D)->QuantMode
	b	.L479	@
.L493:
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.41982,
	strb	r0, [r4, #5]	@ D.41982, pVopDquant_4(D)->ABSPQ
	strb	r0, [r4, #8]	@ D.41982, pVopDquant_4(D)->ALTPQUANT
	b	.L475	@
.L494:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.41981, D.41981
	strb	r0, [r4, #6]	@ D.41981, pVopDquant_4(D)->DQSBEDGE
	add	r3, r3, #6	@ D.41981, D.41981,
	str	r3, [r4, #12]	@ D.41981, pVopDquant_4(D)->QuantMode
	b	.L479	@
.L495:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.41981, D.41981
	strb	r0, [r4, #7]	@ D.41981, pVopDquant_4(D)->DQDBEDGE
	add	r3, r3, #2	@ D.41981, D.41981,
	str	r3, [r4, #12]	@ D.41981, pVopDquant_4(D)->QuantMode
	b	.L479	@
	.fnend
	.size	VC1_VopDQuant, .-VC1_VopDQuant
	.align	2
	.global	VC1_DecNormDiff6Tile
	.type	VC1_DecNormDiff6Tile, %function
VC1_DecNormDiff6Tile:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1	@ pi6, pi6
	ldr	r9, [r1]	@ i6, *pi6_9(D)
	mov	r5, r0	@ pBs, pBs
	mov	r6, #0	@ Invert,
.L498:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	subs	r7, r0, #0	@ D.41988,
	mov	r0, r5	@, pBs
	bne	.L507	@,
	bl	BsGet	@
	mov	r4, r0	@ iCode,
	cmp	r4, #1	@ iCode,
	mov	r1, r0	@, iCode
	mov	r0, r5	@, pBs
	bgt	.L518	@,
	bne	.L501	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L502	@,
	cmp	r6, #0	@ Invert,
	mov	r6, r4	@ Invert, iCode
	beq	.L498	@,
.L516:
	str	r9, [r8]	@ i6, *pi6_9(D)
	mov	r0, r7	@, D.41988
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L507:
	mov	r0, #0	@ i6,
.L499:
	cmp	r6, #0	@ Invert,
	mov	r7, #1	@ D.41988,
	eorne	r0, r0, #63	@ i6, i6,
.L517:
	str	r0, [r8]	@ i6, *pi6_9(D)
	mov	r0, r7	@, D.41988
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L518:
	sub	r4, r4, #2	@ D.41989, iCode,
	mov	r0, #1	@ tmp124,
	mov	r0, r0, asl r4	@ i6, tmp124,
	b	.L499	@
.L501:
	mov	r0, r5	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	cmp	r0, #255	@ iCode,
	beq	.L516	@,
	ldr	r3, .L519	@ tmp128,
	add	r3, r3, r0, lsl #2	@ tmp129, tmp128, iCode,
	ldr	r0, [r3, #472]	@ i6, a2On4Off
	b	.L499	@
.L502:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	ldr	r3, .L519	@ tmp125,
	add	r3, r3, r0, lsl #2	@ tmp126, tmp125, i6,
	ldr	r3, [r3, #344]	@ iCode, aCount
	cmp	r3, #2	@ iCode,
	orreq	r0, r0, #32	@ i6, i6,
	beq	.L499	@,
	cmp	r3, #3	@ iCode,
	bne	.L517	@,
	b	.L499	@
.L520:
	.align	2
.L519:
	.word	.LANCHOR0
	.fnend
	.size	VC1_DecNormDiff6Tile, .-VC1_DecNormDiff6Tile
	.align	2
	.global	VC1_Vfmw_ParseAdvSeqHdr
	.type	VC1_Vfmw_ParseAdvSeqHdr, %function
VC1_Vfmw_ParseAdvSeqHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, #172	@,
	mov	r5, r0	@ pBs, pBs
	add	r0, r2, #16	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	mov	r1, #2	@,
	mov	r6, r1	@ tmp233,
	str	r0, [r4, #184]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r6, [r4, #16]	@ tmp233, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PROFILE
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp233
	strb	r0, [r4, #17]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].LEVEL
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #18]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].CHROMFORMAT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #19]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRMRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #20]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].BITRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	strb	r0, [r4, #21]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].POSTPROCFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	uxth	r3, r0	@ D.42011,
	mov	r0, r5	@, pBs
	add	r3, r3, #1	@ D.42011, D.42011,
	mov	r3, r3, asl #1	@ tmp243, D.42011,
	strh	r3, [r4, #172]	@ movhi	@ tmp243, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH
	bl	BsGet	@
	mov	r1, #1	@,
	uxth	r3, r0	@ D.42011,
	mov	r0, r5	@, pBs
	add	r3, r3, r1	@ D.42011, D.42011,
	mov	r3, r3, asl r1	@ tmp247, D.42011,
	strh	r3, [r4, #174]	@ movhi	@ tmp247, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_HEIGHT
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #22]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PULLDOWN
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #23]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #24]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TFCNTRFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp233
	strb	r0, [r4, #25]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FINTERPFLAG
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.42012,
	strb	r6, [r4, #26]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISPLAY_EXT
	cmp	r6, #1	@ D.42012,
	beq	.L536	@,
	ldrh	r2, [r4, #172]	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH
	ldrh	r3, [r4, #174]	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_HEIGHT, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_HEIGHT
	strh	r2, [r4, #176]	@ movhi	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_HORIZ_SIZE
	strh	r3, [r4, #178]	@ movhi	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_HEIGHT, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_VERT_SIZE
.L528:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42012,
	strb	r0, [r4, #39]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_PARAM_FLAG
	cmp	r0, #1	@ D.42012,
	beq	.L529	@,
.L531:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r3, [r4, #184]	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen
	mov	r2, #1	@ D.42010,
	rsb	r0, r3, r0	@ D.42011, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen,
	str	r0, [r4, #184]	@ D.42011, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen
.L530:
	mov	r0, r2	@, D.42010
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L529:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42012,
	strb	r0, [r4, #40]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r0, #31	@ D.42012,
	movhi	r2, #0	@ D.42010,
	bhi	.L530	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #41]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].BIT_RATE_EXPONENT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.42011, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, #0	@ D.42011,
	strb	r0, [r4, #42]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].BUFFER_SIZE_EXPONENT
	ble	.L531	@,
	add	r8, r4, #42	@ ivtmp.960, pSyntax,
	add	r7, r4, #106	@ ivtmp.969, pSyntax,
	mov	r6, #0	@ i,
.L532:
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	add	r6, r6, #1	@ i, i,
	strh	r0, [r8, #2]!	@ movhi	@, MEM[base: _183, offset: 0B]
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strh	r0, [r7, #2]!	@ movhi	@, MEM[base: _184, offset: 0B]
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.42011, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, r6	@ D.42011, i
	bgt	.L532	@,
	b	.L531	@
.L536:
	mov	r1, #14	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	add	r3, r0, #1	@ tmp254,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #176]	@ movhi	@ tmp254, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_HORIZ_SIZE
	bl	BsGet	@
	mov	r1, r6	@, D.42012
	add	r3, r0, #1	@ tmp256,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #178]	@ movhi	@ tmp256, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_VERT_SIZE
	bl	BsGet	@
	uxtb	r0, r0	@ D.42012,
	strb	r0, [r4, #27]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_RATIO_FLAG
	cmp	r0, #1	@ D.42012,
	beq	.L537	@,
.L524:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.42012,
	strb	r1, [r4, #31]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATE_FLAG
	cmp	r1, #1	@ D.42012,
	beq	.L538	@,
.L526:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42012,
	strb	r0, [r4, #35]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].COLOR_FORMAT_FLAG
	cmp	r0, #1	@ D.42012,
	bne	.L528	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #36]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].COLOR_PRIM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #37]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TRANSFER_CHAR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #38]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MATRIX_COEF
	b	.L528	@
.L538:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42012,
	strb	r0, [r4, #32]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATEIND
	cmp	r0, #0	@ D.42012,
	bne	.L527	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #33]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATENR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #34]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATEDR
	b	.L526	@
.L537:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42012,
	strb	r0, [r4, #28]	@ D.42012, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_RATIO
	cmp	r0, #15	@ D.42012,
	bne	.L524	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #29]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_HORIZ_SIZE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #30]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_VERT_SIZE
	b	.L524	@
.L527:
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strh	r0, [r4, #180]	@ movhi	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATEXP
	b	.L526	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSeqHdr, .-VC1_Vfmw_ParseAdvSeqHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvEntptHdr
	.type	VC1_Vfmw_ParseAdvEntptHdr, %function
VC1_Vfmw_ParseAdvEntptHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, #60	@,
	mov	r5, r0	@ pBs, pBs
	add	r0, r2, #188	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	mov	r1, #1	@,
	str	r0, [r4, #244]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #188]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].BROKEN_LINK
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #189]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CLOSED_ENTRY
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #190]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].PANSCAN_FLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #191]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].REFDIST_FLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #192]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].LOOPFILTER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #193]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].FASTUVMC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #194]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_MV
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #195]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].DQUANT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #196]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].VSTRANSFORM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #197]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].OVERLAP
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].HRD_PARAM_FLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].HRD_PARAM_FLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].HRD_PARAM_FLAG,
	strb	r0, [r4, #198]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].QUANTIZER
	beq	.L540	@,
.L543:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42029,
	strb	r0, [r4, #199]	@ D.42029, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_SIZE_FLAG
	cmp	r0, #1	@ D.42029,
	ldrneh	r2, [r4, #240]	@ D.42034, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_HEIGHT
	beq	.L561	@,
.L545:
	ldrh	r1, [r4, #238]	@ D.42030, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_WIDTH
	ldrh	r0, [r4, #172]	@ D.42030, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].MAX_CODED_WIDTH
	cmp	r1, #15	@ D.42030,
	movhi	r3, #0	@ tmp210,
	movls	r3, #1	@ tmp210,
	cmp	r1, r0	@ D.42030, D.42030
	orrhi	r3, r3, #1	@,, tmp213, tmp210
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_MV
	cmp	r3, #0	@ tmp213,
	ldrh	r3, [r4, #174]	@ D.42030, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].MAX_CODED_HEIGHT
	strneh	r0, [r4, #238]	@ movhi	@ D.42030, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_WIDTH
	cmp	r3, r2	@ D.42030, D.42034
	cmpcs	r2, #15	@, D.42034,
	strlsh	r3, [r4, #240]	@ movhi	@ D.42030, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_HEIGHT
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_MV,
	beq	.L562	@,
.L548:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42029,
	strb	r0, [r4, #201]	@ D.42029, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.42029,
	beq	.L563	@,
.L549:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42029,
	strb	r0, [r4, #203]	@ D.42029, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPUV_FLAG
	cmp	r0, #1	@ D.42029,
	beq	.L564	@,
.L550:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r3, [r4, #244]	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen
	rsb	r3, r3, r0	@ D.42028, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen,
	mov	r0, #1	@,
	str	r3, [r4, #244]	@ D.42028, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L540:
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.42028, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, #0	@ D.42028,
	ble	.L543	@,
	add	r7, r4, #204	@ ivtmp.980, pSyntax,
	mov	r6, #0	@ i,
.L544:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r6, r6, #1	@ i, i,
	strb	r0, [r7, #1]!	@, MEM[base: _137, offset: 0B]
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.42028, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, r6	@ D.42028, i
	bgt	.L544	@,
	b	.L543	@
.L564:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #204]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPUV
	b	.L550	@
.L561:
	mov	r1, #12	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	add	r3, r0, #1	@ tmp200,,
	mov	r0, r5	@, pBs
	mov	r3, r3, asl #1	@ tmp202, tmp200,
	strh	r3, [r4, #238]	@ movhi	@ tmp202, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_WIDTH
	bl	BsGet	@
	add	r0, r0, #1	@ tmp204,,
	mov	r2, r0, asl #1	@ tmp206, tmp204,
	uxth	r2, r2	@ D.42034, tmp206
	strh	r2, [r4, #240]	@ movhi	@ D.42034, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_HEIGHT
	b	.L545	@
.L562:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #200]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_DMV
	b	.L548	@
.L563:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #202]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPY
	b	.L549	@
	.fnend
	.size	VC1_Vfmw_ParseAdvEntptHdr, .-VC1_Vfmw_ParseAdvEntptHdr
	.align	2
	.global	VC1_DecFcm
	.type	VC1_DecFcm, %function
VC1_DecFcm:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #2	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	mov	r4, r0	@ Code,
	cmp	r4, #1	@ Code,
	mov	r0, r5	@, pBs
	ble	.L569	@,
	mov	r1, #2	@,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L569:
	mov	r1, #1	@,
	mov	r4, #0	@ Code,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VC1_DecFcm, .-VC1_DecFcm
	.align	2
	.global	VC1_DecAdvPtype
	.type	VC1_DecAdvPtype, %function
VC1_DecAdvPtype:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #4	@,
	mov	r4, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code,
	movle	r1, #1	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L571	@,
	cmp	r0, #11	@ Code,
	movle	r1, #2	@ Len,
	movle	r5, r1	@ Code, Len
	bgt	.L577	@,
.L571:
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, Code
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L577:
	cmp	r0, #13	@ Code,
	movle	r1, #3	@ Len,
	movle	r5, #0	@ Code,
	ble	.L571	@,
	cmp	r0, #14	@ Code,
	mov	r1, #4	@ Len,
	movne	r5, #5	@ Code,
	moveq	r5, r1	@ Code, Len
	b	.L571	@
	.fnend
	.size	VC1_DecAdvPtype, .-VC1_DecAdvPtype
	.align	2
	.global	VC1_DecRefdist
	.type	VC1_DecRefdist, %function
VC1_DecRefdist:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #5	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #23	@ Code,
	bgt	.L579	@,
	mov	r4, r0, asr #3	@ Code, Code,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@ D.42041, Code
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L579:
	cmp	r0, #27	@ Code,
	movle	r4, #3	@ Len,
	bgt	.L586	@,
.L581:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, Len
	bl	BsSkip	@
	mov	r0, r4	@ D.42041, Len
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L586:
	cmp	r0, #29	@ Code,
	movgt	r4, #5	@ Len,
	movle	r4, #4	@ Len,
	b	.L581	@
	.fnend
	.size	VC1_DecRefdist, .-VC1_DecRefdist
	.align	2
	.global	VC1_DecIntCompField
	.type	VC1_DecIntCompField, %function
VC1_DecIntCompField:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pBs, pBs
	ldr	lr, .L589	@ tmp117,
	.pad #32
	sub	sp, sp, #32	@,,
	mov	ip, sp	@ tmp116,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp116,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp117,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp116,,,,
	mov	r0, r4	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	add	r3, sp, #32	@ tmp124,,
	add	r3, r3, r0, lsl #3	@ tmp118, tmp124,,
	mov	r0, r4	@, pBs
	ldr	r1, [r3, #-28]	@, VlcTab[Tmp_5].Len
	ldr	r4, [r3, #-32]	@ Code, VlcTab[Tmp_5].Code
	bl	BsSkip	@
	mov	r0, r4	@, Code
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L590:
	.align	2
.L589:
	.word	.LANCHOR0+532
	.fnend
	.size	VC1_DecIntCompField, .-VC1_DecIntCompField
	.align	2
	.global	VC1_Vfmw_UserData
	.type	VC1_Vfmw_UserData, %function
VC1_Vfmw_UserData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	VC1_Vfmw_UserData, .-VC1_Vfmw_UserData
	.align	2
	.global	VC1_RecordSlcStream
	.type	VC1_RecordSlcStream, %function
VC1_RecordSlcStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r9, r0, #20480	@ tmp381, pCodecInf,
	mov	r5, r0	@ pCodecInf, pCodecInf
	ldr	r0, [r0, #3128]	@ pBs, pCodecInf_6(D)->pBs
	ldr	r6, [r9, #2164]	@ D.42050, pCodecInf_6(D)->SlcNum
	movw	r3, #22656	@ tmp163,
	movw	ip, #22648	@ tmp171,
	.pad #12
	sub	sp, sp, #12	@,,
	movw	lr, #22664	@ tmp184,
	mov	r8, r6, asl #4	@ tmp382, D.42050,
	mov	r7, r6, asl #6	@ tmp383, D.42050,
	rsb	r4, r8, r7	@ tmp161, tmp382, tmp383
	str	r1, [sp, #4]	@ pSyntax, %sfp
	add	r4, r5, r4	@ tmp162, pCodecInf, tmp161
	add	r1, r4, #22528	@ tmp185, tmp162,
	strb	r6, [r4, r3]	@ D.42050, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].SlcNo
	ldr	r3, [r0, #24]	@ pBs_10->TotalPos, pBs_10->TotalPos
	mov	r10, r1	@ tmp164, tmp185
	cmp	r3, #0	@ pBs_10->TotalPos,
	add	fp, r3, #7	@ tmp176, pBs_10->TotalPos,
	movlt	r3, fp	@ pBs_10->TotalPos, tmp176
	add	fp, r1, #120	@ tmp172, tmp172,
	add	r2, r2, r3, asr #3	@ D.42052, pCurBsRealStart, pBs_10->TotalPos,
	str	r2, [r4, ip]	@ D.42052, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream
	ldr	r3, [r0, #24]	@ pBs_10->TotalPos, pBs_10->TotalPos
	and	r3, r3, #7	@ D.42049, pBs_10->TotalPos,
	str	r3, [r4, lr]	@ D.42049, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].BitOffset
	ldr	r2, [r0, #16]	@ pBs_10->BsLen, pBs_10->BsLen
	ldr	r3, [r0, #24]	@ pBs_10->TotalPos, pBs_10->TotalPos
	rsb	r3, r3, r2, lsl #3	@ D.42049, pBs_10->TotalPos, pBs_10->BsLen,
	str	r3, [r1, #140]	@ D.42049, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len
	ldr	r0, [r4, ip]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream
	bl	MEM_Vir2Phy	@
	add	r3, r5, #32768	@ tmp222, pCodecInf,
	movw	r1, #22688	@ tmp219,
	add	r2, r10, #160	@ tmp220, tmp220,
	str	r0, [r10, #132]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Phy_addr
	ldr	r0, [r3, #2200]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID
	str	r0, [r4, r1]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].StreamID
	ldr	r1, [r3, #2176]	@ D.42052, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsVirAddr
	cmp	r1, #0	@ D.42052,
	beq	.L593	@,
	ldr	r0, [r3, #2188]	@ D.42053, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsPhyAddr
	cmp	r0, #0	@ D.42053,
	bne	.L610	@,
.L593:
	rsb	r3, r8, r7	@ tmp274, tmp382, tmp383
	movw	lr, #22680	@ tmp284,
	add	r3, r5, r3	@ tmp275, pCodecInf, tmp274
	mov	r2, #0	@ tmp278,
	add	r4, r3, #22528	@ tmp277, tmp275,
	str	r2, [r4, #124]	@ tmp278, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2
	str	r2, [r3, lr]	@ tmp278, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].BitOffset2
	str	r2, [r4, #156]	@ tmp278, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2
	str	r2, [r4, #148]	@ tmp278, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Phy_addr2
	str	r2, [r4, #164]	@ tmp278, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].StreamID2
.L594:
	ldr	r3, [r9, #2084]	@ D.42049, pCodecInf_6(D)->MbHeight
	sub	r6, r8, r6, asl #2	@ tmp321, tmp382, D.42050,
	ldr	r2, [r9, #2080]	@ pCodecInf_6(D)->MbWidth, pCodecInf_6(D)->MbWidth
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_6(D)->Is2ndFld, pCodecInf_6(D)->Is2ndFld
	mul	r2, r2, r3	@ D.42049, pCodecInf_6(D)->MbWidth, D.42049
	cmp	r1, #0	@ pCodecInf_6(D)->Is2ndFld,
	sub	r2, r2, #1	@ totalMbMin1, D.42049,
	beq	.L595	@,
	ldr	r1, [sp, #4]	@ pSyntax, %sfp
	add	r3, r3, #1	@ D.42049, D.42049,
	rsb	r0, r8, r7	@ tmp333, tmp382, tmp383
	movw	ip, #22672	@ tmp335,
	add	r6, r1, r6	@ tmp322, pSyntax, tmp321
	add	r3, r3, r3, lsr #31	@ tmp327, D.42049, D.42049,
	add	r0, r5, r0	@ tmp334, pCodecInf, tmp333
	ldr	r1, [r6, #528]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR
	sub	r3, r1, r3, asr #1	@ D.42049, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR, tmp327,
	str	r3, [r0, ip]	@ D.42049, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].SlcEndMbn
	cmp	r3, #0	@ D.42049,
	ble	.L596	@,
	cmp	r2, r3	@ totalMbMin1, D.42049
	bcc	.L598	@,
.L596:
	rsb	r7, r8, r7	@ tmp353, tmp382, tmp383
	add	r5, r5, r7	@ tmp354, pCodecInf, tmp353
	add	r3, r5, #22528	@ tmp356, tmp354,
	add	r3, r3, #136	@ tmp356, tmp356,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len,
	ble	.L598	@,
	add	r3, r5, #22528	@ tmp364, tmp354,
	add	r3, r3, #120	@ tmp364, tmp364,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2,
	beq	.L599	@,
	add	r5, r5, #22528	@ tmp372, tmp354,
	ldr	r3, [r5, #156]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2,
	ble	.L598	@,
.L599:
	ldr	r3, [r9, #2164]	@ pCodecInf_6(D)->SlcNum, pCodecInf_6(D)->SlcNum
	mov	r0, #1	@ D.42048,
	add	r3, r3, r0	@ D.42049, pCodecInf_6(D)->SlcNum,
	str	r3, [r9, #2164]	@ D.42049, pCodecInf_6(D)->SlcNum
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L595:
	ldr	r1, [sp, #4]	@ pSyntax, %sfp
	rsb	r3, r8, r7	@ tmp346, tmp382, tmp383
	add	r3, r5, r3	@ tmp347, pCodecInf, tmp346
	movw	r0, #22672	@ tmp348,
	add	r6, r1, r6	@ tmp341, pSyntax, tmp340
	ldr	r1, [r6, #528]	@ D.42049, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR
	cmp	r2, r1	@ totalMbMin1, D.42049
	str	r1, [r3, r0]	@ D.42049, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].SlcEndMbn
	bcs	.L596	@,
.L598:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42048,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L610:
	movw	ip, #22680	@ tmp240,
	str	r1, [fp, #4]	@ D.42052, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2
	mov	lr, #0	@ tmp242,
	str	lr, [r4, ip]	@ tmp242, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].BitOffset2
	ldr	ip, [r3, #2196]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsLength
	add	r1, r4, #22528	@ tmp241, tmp162,
	str	r0, [r1, #148]	@ D.42053, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Phy_addr2
	mov	ip, ip, asl #3	@ D.42049, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsLength,
	str	ip, [r1, #156]	@ D.42049, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2
	ldr	r3, [r3, #2204]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID
	str	r3, [r2, #4]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].StreamID2
	b	.L594	@
	.fnend
	.size	VC1_RecordSlcStream, .-VC1_RecordSlcStream
	.align	2
	.global	VC1_Vfmw_UpdateAdvSPS
	.type	VC1_Vfmw_UpdateAdvSPS, %function
VC1_Vfmw_UpdateAdvSPS:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #8192	@ tmp176, pCodecInf,
	movw	r3, #2398	@ tmp132,
	ldrh	r2, [r1, #238]	@ D.42060, pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH
	ldrh	r3, [r5, r3]	@ pCodecInf_8(D)->AdvEntSyntax.CODED_WIDTH, pCodecInf_8(D)->AdvEntSyntax.CODED_WIDTH
	cmp	r3, r2	@ pCodecInf_8(D)->AdvEntSyntax.CODED_WIDTH, D.42060
	beq	.L612	@,
	adds	r3, r2, #15	@ D.42061, D.42060,
	add	ip, r0, #20480	@ tmp175, pCodecInf,
	addmi	r3, r2, #30	@, D.42061, D.42060,
	add	lr, r5, #2400	@ tmp147, tmp176,
	mov	r3, r3, asr #4	@ D.42061, D.42061,
	str	r3, [ip, #2080]	@ D.42061, pCodecInf_8(D)->MbWidth
	ldrh	r3, [r1, #238]	@ pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH, pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH
	str	r3, [ip, #2096]	@ pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH, pCodecInf_8(D)->DispPicWidth
	ldrh	r2, [r1, #240]	@ D.42060, pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [lr]	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT
	cmp	r3, r2	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, D.42060
	beq	.L613	@,
.L614:
	adds	r3, r2, #15	@ D.42061, D.42060,
	addmi	r3, r2, #30	@, D.42061, D.42060,
	mov	r3, r3, asr #4	@ D.42061, D.42061,
	str	r3, [ip, #2084]	@ D.42061, pCodecInf_8(D)->MbHeight
	ldrh	r3, [r1, #240]	@ pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT, pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT
	str	r3, [ip, #2100]	@ pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT, pCodecInf_8(D)->DispPicHeight
.L613:
	mov	r4, r1	@ pSyntax, pSyntax
	mov	r2, #172	@,
	add	r1, r1, #16	@, pSyntax,
	add	r0, r0, #10368	@, pCodecInf,
	bl	memcpy	@
	add	ip, r4, #188	@ tmp168, pSyntax,
	add	lr, r5, #2336	@ tmp166, tmp176,
	mov	r4, #1	@ Ret,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp168,,,,
	add	lr, lr, #12	@ tmp166, tmp166,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp166,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp168,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp166,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp168,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp166,,,,
	ldmia	ip, {r0, r1, r2}	@ tmp168,,,
	stmia	lr, {r0, r1, r2}	@ tmp166,,,
.L617:
	mov	r0, r4	@, Ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L612:
	add	r3, r5, #2400	@ tmp173, tmp176,
	ldrh	r2, [r1, #240]	@ D.42060, pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [r3]	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT
	cmp	r3, r2	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, D.42060
	addne	ip, r0, #20480	@ tmp175, pCodecInf,
	bne	.L614	@,
	mov	r4, #0	@ Ret,
	b	.L617	@
	.fnend
	.size	VC1_Vfmw_UpdateAdvSPS, .-VC1_Vfmw_UpdateAdvSPS
	.align	2
	.global	VC1_Vfmw_UpdataLastPicRNDCTRL
	.type	VC1_Vfmw_UpdataLastPicRNDCTRL, %function
VC1_Vfmw_UpdataLastPicRNDCTRL:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@ pCodecInf_2(D)->PreParseInfo.IsAdvProfile, pCodecInf_2(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInf_2(D)->PreParseInfo.IsAdvProfile,
	bne	.L623	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VC1_Vfmw_UpdataLastPicRNDCTRL.part.4	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L623:
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	VC1_Vfmw_UpdataLastPicRNDCTRL, .-VC1_Vfmw_UpdataLastPicRNDCTRL
	.align	2
	.global	VC1_Vfmw_DecPQUANT
	.type	VC1_Vfmw_DecPQUANT, %function
VC1_Vfmw_DecPQUANT:
	.fnstart
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #132
	sub	sp, sp, #132	@,,
	mov	r4, r1	@ PqIndex, PqIndex
	mov	r5, r0	@ Quantizer, Quantizer
	mov	r2, #128	@,
	ldr	r1, .L628	@,
	mov	r0, sp	@,
	bl	memcpy	@
	cmp	r5, #0	@ Quantizer,
	movne	r0, r4	@ D.42071, PqIndex
	addeq	r3, sp, #128	@ tmp122,,
	addeq	r4, r3, r4, lsl #2	@ tmp119, tmp122, PqIndex,
	ldreq	r0, [r4, #-128]	@ D.42071, PQuantIdex
	add	sp, sp, #132	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L629:
	.align	2
.L628:
	.word	.LANCHOR0+564
	.fnend
	.size	VC1_Vfmw_DecPQUANT, .-VC1_Vfmw_DecPQUANT
	.align	2
	.global	VC1_Vfmw_ParseSMPIPicHdr
	.type	VC1_Vfmw_ParseSMPIPicHdr, %function
VC1_Vfmw_ParseSMPIPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r1	@ pCodecInf, pCodecInf
	mov	r1, #7	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #253]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].BF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r5, r0	@ D.42084,
	strb	r5, [r4, #254]	@ D.42084, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQINDEX
	cmp	r5, #0	@ D.42084,
	beq	.L631	@,
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.42084, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	mov	r1, r5	@, D.42084
	mov	r0, r7	@, D.42084
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r5, #8	@ D.42084,
	movhi	r3, #0	@ tmp147,
	str	r0, [r4, #340]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	strhib	r3, [r4, #255]	@ tmp147, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	bls	.L643	@,
.L633:
	cmp	r7, #1	@ D.42084,
	movne	r3, #0	@ tmp150,
	strneb	r3, [r4, #256]	@ tmp150, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	beq	.L644	@,
.L635:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV,
	movne	r3, #0	@ tmp154,
	strneb	r3, [r4, #257]	@ tmp154, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	beq	.L645	@,
.L637:
	ldrb	r3, [r4, #251]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	sub	r3, r3, #2	@ tmp158, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE,
	tst	r3, #253	@ tmp158,
	bne	.L638	@,
.L640:
	ldrb	r1, [r4, #258]	@ zero_extendqisi2	@ D.42086, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
.L639:
	mov	r0, r8	@, pCodecInf
	mov	r5, #1	@ D.42083,
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r6	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #267]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSACFRM
	mov	r0, r6	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #268]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSACFRM2
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #269]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSDCTAB
.L631:
	mov	r0, r5	@, D.42083
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L638:
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES,
	bne	.L640	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.42086,
	strb	r1, [r4, #258]	@ D.42086, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	b	.L639	@
.L643:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.42084, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	strb	r0, [r4, #255]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	b	.L633	@
.L644:
	mov	r1, r7	@, D.42084
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	b	.L635	@
.L645:
	mov	r0, r6	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	b	.L637	@
	.fnend
	.size	VC1_Vfmw_ParseSMPIPicHdr, .-VC1_Vfmw_ParseSMPIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPPicHdr
	.type	VC1_Vfmw_ParseSMPPPicHdr, %function
VC1_Vfmw_ParseSMPPPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.42098,
	strb	r6, [r4, #254]	@ D.42098, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQINDEX
	cmp	r6, #0	@ D.42098,
	beq	.L658	@,
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ D.42096, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	mov	r1, r6	@, D.42098
	mov	r0, r8	@, D.42096
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.42098,
	movhi	r3, #0	@ tmp165,
	str	r0, [r4, #340]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	strhib	r3, [r4, #255]	@ tmp165, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	bls	.L670	@,
.L650:
	cmp	r8, #1	@ D.42096,
	movne	r3, #0	@ tmp168,
	strneb	r3, [r4, #256]	@ tmp168, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	beq	.L671	@,
.L652:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV,
	movne	r3, #0	@ tmp172,
	strneb	r3, [r4, #257]	@ tmp172, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	beq	.L672	@,
.L654:
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES,
	beq	.L655	@,
	ldrb	r1, [r4, #258]	@ zero_extendqisi2	@ D.42096, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
.L656:
	mov	r0, r7	@, pCodecInf
	bl	VC1_SetCurPicResolutionInfo	@
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r0, r0	@ D.42098,
	strb	r0, [r4, #259]	@ D.42098, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVMODE
	cmp	r0, #4	@ D.42098,
	beq	.L673	@,
.L657:
	mov	r1, r7	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L658	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.42098, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].DQUANT
	cmp	r1, #0	@ D.42098,
	strb	r0, [r4, #264]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].CBPTAB
	bne	.L674	@,
.L659:
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM,
	beq	.L675	@,
.L661:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.42095,
	strb	r0, [r4, #269]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSDCTAB
	mov	r0, r3	@, D.42095
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L658:
	mov	r3, #0	@ D.42095,
	mov	r0, r3	@, D.42095
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L670:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ D.42096, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	strb	r0, [r4, #255]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	b	.L650	@
.L674:
	add	r3, r4, #272	@, pSyntax,
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L659	@
.L672:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	b	.L654	@
.L655:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.42096,
	strb	r1, [r4, #258]	@ D.42096, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	b	.L656	@
.L671:
	mov	r1, r8	@, D.42096
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	b	.L652	@
.L673:
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #260]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #261]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #262]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].LUMSHIFT
	b	.L657	@
.L675:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42098,
	strb	r0, [r4, #265]	@ D.42098, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTMBF
	cmp	r0, #1	@ D.42098,
	bne	.L661	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #266]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTFRM
	b	.L661	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPPicHdr, .-VC1_Vfmw_ParseSMPPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseMPBPicHdr
	.type	VC1_Vfmw_ParseMPBPicHdr, %function
VC1_Vfmw_ParseMPBPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.42110,
	strb	r6, [r4, #254]	@ D.42110, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQINDEX
	cmp	r6, #0	@ D.42110,
	beq	.L686	@,
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.42110, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	mov	r1, r6	@, D.42110
	mov	r0, r7	@, D.42110
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.42110,
	movhi	r3, #0	@ tmp151,
	str	r0, [r4, #340]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	strhib	r3, [r4, #255]	@ tmp151, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	bls	.L699	@,
.L680:
	cmp	r7, #1	@ D.42110,
	movne	r3, #0	@ tmp154,
	strneb	r3, [r4, #256]	@ tmp154, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	beq	.L700	@,
.L682:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV,
	movne	r3, #0	@ tmp158,
	strneb	r3, [r4, #257]	@ tmp158, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	beq	.L701	@,
.L684:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #0	@,
	mov	r1, r8	@, pCodecInf
	mov	r2, r4	@, pSyntax
	cmp	r0, r3	@,
	mov	r0, r5	@, pBs
	moveq	ip, #3	@ D.42111,
	movne	ip, #1	@ D.42111,
	strb	ip, [r4, #259]	@ D.42111, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVMODE
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L686	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.42110, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].DQUANT
	cmp	r1, #0	@ D.42110,
	strb	r0, [r4, #264]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].CBPTAB
	bne	.L702	@,
.L687:
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM,
	beq	.L703	@,
.L689:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.42108,
	strb	r0, [r4, #269]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSDCTAB
	mov	r0, r3	@, D.42108
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L686:
	mov	r3, #0	@ D.42108,
	mov	r0, r3	@, D.42108
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L699:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.42110, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	strb	r0, [r4, #255]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	b	.L680	@
.L702:
	add	r3, r4, #272	@, pSyntax,
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L687	@
.L700:
	mov	r1, r7	@, D.42110
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	b	.L682	@
.L701:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	b	.L684	@
.L703:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42110,
	strb	r0, [r4, #265]	@ D.42110, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTMBF
	cmp	r0, #1	@ D.42110,
	bne	.L689	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #266]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTFRM
	b	.L689	@
	.fnend
	.size	VC1_Vfmw_ParseMPBPicHdr, .-VC1_Vfmw_ParseMPBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPicHdr
	.type	VC1_Vfmw_ParseSMPPicHdr, %function
VC1_Vfmw_ParseSMPPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ pBs, pBs
	ldrb	r7, [r2, #258]	@ zero_extendqisi2	@ RESPIC, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	mov	r0, r1	@, pCodecInf
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r1, r7	@, RESPIC
	bl	VC1_SetCurPicResolutionInfo	@
	ldr	r3, [r6, #16]	@ pBs_11(D)->BsLen, pBs_11(D)->BsLen
	cmp	r3, #1	@ pBs_11(D)->BsLen,
	ble	.L740	@,
	mov	r1, #100	@,
	add	r0, r4, #248	@, pSyntax,
	bl	__memzero	@
	add	r0, r5, #22528	@, pCodecInf,
	add	r0, r0, #120	@,,
	mov	r1, #12288	@,
	strb	r7, [r4, #258]	@ RESPIC, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldrb	r3, [r4, #15]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].FINTERPFLAG, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].FINTERPFLAG
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].FINTERPFLAG,
	str	r0, [r4, #324]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen
	bne	.L741	@,
.L707:
	bl	vfmw_dprint_nothing	@
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #12]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].RANGERED, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].RANGERED
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].RANGERED,
	strb	r0, [r4, #249]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].FRMCNT
	bne	.L742	@,
.L708:
	ldrb	r3, [r4, #13]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MAXBFRAMES, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MAXBFRAMES
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MAXBFRAMES,
	bne	.L709	@,
	bl	BsGet	@
	adds	r0, r0, #0	@ D.42137,,
	movne	r0, #1	@ D.42137,
	strb	r0, [r4, #251]	@ D.42137, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
.L710:
	mov	r3, #0	@ tmp171,
	strb	r0, [r5, #2]	@ D.42137, pCodecInf_9(D)->PicCodingType
	strb	r3, [r5, #4]	@ tmp171, pCodecInf_9(D)->PicStructure
	ldrb	r3, [r4, #251]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	cmp	r3, #4	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	b	.L722	@
.L715:
	.word	.L738
	.word	.L716
	.word	.L717
	.word	.L722
	.word	.L718
.L709:
	bl	BsGet	@
	cmp	r0, #1	@ D.42136,
	beq	.L737	@,
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L743	@,
	mov	r2, r4	@ D.42140, pSyntax
	mov	r3, #2	@ tmp183,
	add	r1, r4, #344	@, pSyntax,
	strb	r3, [r2, #251]!	@ tmp183, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	mov	r0, r6	@, pBs
	bl	VC1_DecBfractionSMP	@
	uxtb	r0, r0	@ D.42137,
	strb	r0, [r4, #252]	@ D.42137, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].BFRACTION
	cmp	r0, #21	@ D.42137,
	ldrneb	r0, [r4, #251]	@ zero_extendqisi2	@ D.42137, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	bne	.L710	@,
.L722:
	mov	r0, #0	@ D.42135,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L740:
	mov	r3, #5	@ tmp151,
	mov	r0, #1	@ D.42135,
	strb	r3, [r4, #251]	@ tmp151, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	strb	r3, [r5, #2]	@ tmp151, pCodecInf_9(D)->PicCodingType
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L742:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #250]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RANGEREDFRM
	b	.L708	@
.L741:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #248]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].INTERPFRM
	b	.L707	@
.L743:
	mov	r0, #0	@ tmp190,
.L737:
	strb	r0, [r4, #251]	@ tmp190, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	b	.L710	@
.L718:
	ldrb	r3, [r5, #3099]	@ zero_extendqisi2	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE, pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r3, #1	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE,
	bne	.L722	@,
.L738:
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	mov	r0, r6	@, pBs
	bl	VC1_Vfmw_ParseSMPIPicHdr	@
	mov	r7, r0	@ Ret,
.L719:
	mov	r0, r6	@, pBs
	add	r5, r5, #32768	@ tmp179, pCodecInf,
	bl	BsPos	@
	ldr	r3, [r4, #324]	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen
	rsb	r0, r3, r0	@ D.42136, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen,
	str	r0, [r4, #324]	@ D.42136, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen
	mov	r0, r6	@, pBs
	ldr	r4, [r5, #2192]	@ pCodecInf_9(D)->stCurPacket.BsLength, pCodecInf_9(D)->stCurPacket.BsLength
	bl	BsPos	@
	mov	r4, r4, asl #3	@ D.42136, pCodecInf_9(D)->stCurPacket.BsLength,
	rsb	r0, r0, r4	@ Len,, D.42136
	cmp	r0, #0	@ Len,
	ble	.L744	@,
	mov	r0, r7	@ D.42135, Ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L717:
	ldrb	r3, [r5, #3099]	@ zero_extendqisi2	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE, pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r3, #1	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE,
	bne	.L722	@,
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	mov	r0, r6	@, pBs
	bl	VC1_Vfmw_ParseMPBPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L719	@
.L716:
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	mov	r0, r6	@, pBs
	bl	VC1_Vfmw_ParseSMPPPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L719	@
.L744:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42135,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPicHdr, .-VC1_Vfmw_ParseSMPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIPicHdr
	.type	VC1_Vfmw_ParseAdvIPicHdr, %function
VC1_Vfmw_ParseAdvIPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].INTERLACE
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].INTERLACE,
	strb	r0, [r4, #348]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].RNDCTRL
	beq	.L761	@,
.L746:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].FCM,
	bne	.L747	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].FINTERPFLAG,
	beq	.L762	@,
.L747:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.42145,
	strb	r6, [r4, #358]	@ D.42145, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.42145,
	beq	.L755	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42145, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_8(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.42145
	mov	r0, r7	@, D.42145
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.42145,
	movhi	r3, #0	@ tmp157,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp157, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].HALFQP
	bls	.L763	@,
.L751:
	cmp	r7, #1	@ D.42145,
	movne	r3, #0	@ tmp160,
	strneb	r3, [r4, #359]	@ tmp160, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANTIZER
	beq	.L764	@,
.L753:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].POSTPROCFLAG,
	beq	.L765	@,
.L754:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L755	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.42145, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_8(D) + 188B].DQUANT
	cmp	r1, #0	@ D.42145,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].TRANSDCTAB
	bne	.L766	@,
	mov	r0, #1	@ D.42143,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L755:
	mov	r0, #0	@ D.42143,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L763:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42145, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_8(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].HALFQP
	b	.L751	@
.L762:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].INTERPFRM
	b	.L747	@
.L766:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANT
	bl	VC1_VopDQuant	@
	mov	r0, #1	@ D.42143,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L761:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #356]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].UVSAMP
	b	.L746	@
.L764:
	mov	r1, r7	@, D.42145
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANTIZER
	b	.L753	@
.L765:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].POSTPROC
	b	.L754	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIPicHdr, .-VC1_Vfmw_ParseAdvIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPPicHdr
	.type	VC1_Vfmw_ParseAdvPPicHdr, %function
VC1_Vfmw_ParseAdvPPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].INTERLACE
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].INTERLACE,
	strb	r0, [r4, #348]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].RNDCTRL
	beq	.L768	@,
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L768	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	beq	.L805	@,
.L770:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.42152,
	strb	r6, [r4, #358]	@ D.42152, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.42152,
	beq	.L784	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42152, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.42152
	mov	r0, r7	@, D.42152
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.42152,
	movhi	r3, #0	@ tmp203,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp203, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	bls	.L806	@,
.L774:
	cmp	r7, #1	@ D.42152,
	movne	r3, #0	@ tmp206,
	strneb	r3, [r4, #359]	@ tmp206, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	beq	.L807	@,
.L776:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG,
	beq	.L808	@,
.L777:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV,
	beq	.L809	@,
.L778:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L810	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV,
	movne	r3, #0	@ tmp223,
	strneb	r3, [r4, #373]	@ tmp223, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].DMVRANGE
	beq	.L811	@,
.L782:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #374]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.42151,
	str	r0, [r4, #468]	@ D.42151, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTCOMP
	beq	.L812	@,
.L783:
	mov	r3, #0	@ tmp228,
	strb	r3, [r4, #382]	@ tmp228, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVTYPEMBMode
.L780:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L784	@,
	ldr	r1, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r1, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L813	@,
.L785:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r6, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	uxtb	r0, r0	@ D.42150,
	strb	r0, [r4, #367]	@ D.42150, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].CBPTAB
	beq	.L814	@,
.L788:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.42152, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].DQUANT
	cmp	r1, #0	@ D.42152,
	bne	.L815	@,
.L790:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM,
	beq	.L816	@,
.L792:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.42149,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSDCTAB
	mov	r0, r3	@, D.42149
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L784:
	mov	r3, #0	@ D.42149,
	mov	r0, r3	@, D.42149
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L768:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	strb	r0, [r4, #356]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].UVSAMP
	bne	.L770	@,
.L805:
	ldr	r2, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r2, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	bne	.L770	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTERPFRM
	b	.L770	@
.L810:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r0, r0	@ D.42152,
	strb	r0, [r4, #362]	@ D.42152, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVMODE
	cmp	r0, #4	@ D.42152,
	bne	.L780	@,
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #363]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].LUMSHIFT
	b	.L780	@
.L806:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42152, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	b	.L774	@
.L815:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L790	@
.L809:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVRANGE
	b	.L778	@
.L807:
	mov	r1, r7	@, D.42152
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	b	.L776	@
.L808:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].POSTPROC
	b	.L777	@
.L816:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42152,
	strb	r0, [r4, #368]	@ D.42152, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTMBF
	cmp	r0, #1	@ D.42152,
	bne	.L792	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTFRM
	b	.L792	@
.L814:
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #374]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH
	cmp	r3, #1	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH,
	strb	r0, [r4, #376]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BMVBPTAB
	movne	r0, #0	@ D.42150,
	beq	.L817	@,
.L789:
	strb	r0, [r4, #377]	@ D.42150, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVBPTAB
	b	.L788	@
.L813:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MBMODETAB
	b	.L785	@
.L811:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].DMVRANGE
	b	.L782	@
.L812:
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].LUMSHIFT
	b	.L783	@
.L817:
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42150,
	b	.L789	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPPicHdr, .-VC1_Vfmw_ParseAdvPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBPicHdr
	.type	VC1_Vfmw_ParseAdvBPicHdr, %function
VC1_Vfmw_ParseAdvBPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].INTERLACE
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].INTERLACE,
	strb	r0, [r4, #348]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].RNDCTRL
	beq	.L819	@,
	ldr	r3, [r4, #392]	@ D.42156, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #2	@ D.42156,
	beq	.L819	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	beq	.L861	@,
.L821:
	cmp	r3, #0	@ D.42156,
	bne	.L825	@,
	add	r1, r4, #496	@, pSyntax,
	mov	r0, r5	@, pBs
	bl	VC1_DecBfraction	@
	uxtb	r0, r0	@ D.42159,
	strb	r0, [r4, #350]	@ D.42159, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BFRACTION
	cmp	r0, #21	@ D.42159,
	beq	.L823	@,
.L825:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.42159,
	strb	r6, [r4, #358]	@ D.42159, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.42159,
	beq	.L823	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42159, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.42159
	mov	r0, r7	@, D.42159
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.42159,
	movhi	r3, #0	@ tmp193,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp193, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	bls	.L862	@,
	cmp	r7, #1	@ D.42159,
	movne	r3, #0	@ tmp196,
	strneb	r3, [r4, #359]	@ tmp196, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	beq	.L863	@,
.L830:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG,
	beq	.L864	@,
.L831:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L865	@,
.L832:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV,
	beq	.L866	@,
.L833:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L867	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV,
	beq	.L868	@,
.L837:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #468]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTCOMP
.L836:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L823	@,
	ldr	r1, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r1, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L869	@,
.L838:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r6, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	uxtb	r0, r0	@ D.42157,
	strb	r0, [r4, #367]	@ D.42157, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].CBPTAB
	beq	.L870	@,
.L841:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.42159, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].DQUANT
	cmp	r1, #0	@ D.42159,
	bne	.L871	@,
.L842:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM,
	beq	.L872	@,
.L844:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.42156,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSDCTAB
	mov	r0, r3	@, D.42156
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L823:
	mov	r3, #0	@ D.42156,
	mov	r0, r3	@, D.42156
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L819:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	ldr	r3, [r4, #392]	@ D.42156, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	strb	r0, [r4, #356]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].UVSAMP
	bne	.L821	@,
.L861:
	cmp	r3, #0	@ D.42156,
	bne	.L825	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ D.42156, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	strb	r0, [r4, #357]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTERPFRM
	b	.L821	@
.L867:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	moveq	r3, #3	@ D.42157,
	movne	r3, #1	@ D.42157,
	strb	r3, [r4, #362]	@ D.42157, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVMODE
	b	.L836	@
.L862:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42159, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	cmp	r7, #1	@ D.42159,
	movne	r3, #0	@ tmp196,
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	strneb	r3, [r4, #359]	@ tmp196, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	bne	.L830	@,
.L863:
	mov	r1, r7	@, D.42159
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	b	.L830	@
.L865:
	add	r1, r4, #496	@, pSyntax,
	mov	r0, r5	@, pBs
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BFRACTION
	b	.L832	@
.L866:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVRANGE
	b	.L833	@
.L864:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].POSTPROC
	b	.L831	@
.L871:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L842	@
.L872:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42159,
	strb	r0, [r4, #368]	@ D.42159, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTMBF
	cmp	r0, #1	@ D.42159,
	bne	.L844	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTFRM
	b	.L844	@
.L870:
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	strb	r0, [r4, #376]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BMVBPTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVBPTAB
	b	.L841	@
.L869:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MBMODETAB
	b	.L838	@
.L868:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].DMVRANGE
	b	.L837	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBPicHdr, .-VC1_Vfmw_ParseAdvBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFramePicHdr
	.type	VC1_Vfmw_ParseAdvFramePicHdr, %function
VC1_Vfmw_ParseAdvFramePicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code,
	movle	r7, #1	@ D.42198,
	movle	r1, r7	@ Len, D.42198
	ble	.L874	@,
	cmp	r0, #11	@ Code,
	movle	r7, #2	@ D.42198,
	movle	r1, r7	@ Len, D.42198
	bgt	.L906	@,
.L874:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	strb	r7, [r4, #349]	@ D.42198, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE
	ldrb	r3, [r6, #3509]	@ zero_extendqisi2	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r6, #2]	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->PicCodingType
	ldrb	r3, [r4, #24]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TFCNTRFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TFCNTRFLAG
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TFCNTRFLAG,
	bne	.L907	@,
.L875:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.42201, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PULLDOWN
	cmp	r3, #0	@ D.42201,
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE
	beq	.L876	@,
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	beq	.L908	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].TFF
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.42201, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PULLDOWN
	cmp	r2, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	strb	r0, [r4, #353]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RFF
	beq	.L909	@,
.L880:
	cmp	r3, #1	@ D.42201,
	bne	.L882	@,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG
	ldrb	r3, [r4, #354]	@ zero_extendqisi2	@ D.42199, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RPTFRM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG,
	add	r3, r3, #1	@ D.42199, D.42199,
	str	r3, [r4, #492]	@ D.42199, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	bne	.L891	@,
.L883:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42198,
	strb	r0, [r4, #355]	@ D.42198, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PS_PRESENT
	cmp	r0, #1	@ D.42198,
	bne	.L891	@,
	ldr	r3, [r4, #492]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows,
	ble	.L891	@,
	add	r9, r4, #396	@ ivtmp.1024, pSyntax,
	mov	r7, r4	@ ivtmp.1029, pSyntax
	mov	r8, #0	@ i,
.L892:
	mov	r1, #18	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	add	r7, r7, #4	@ ivtmp.1029, ivtmp.1029,
	str	r0, [r9, #4]!	@, MEM[base: _90, offset: 0B]
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #412]	@, MEM[base: _91, offset: 416B]
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #428]	@, MEM[base: _91, offset: 432B]
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r7, #444]	@, MEM[base: _91, offset: 448B]
	ldr	r3, [r4, #492]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	cmp	r3, r8	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows, i
	bgt	.L892	@,
	b	.L891	@
.L876:
	mov	r2, #1	@ tmp161,
	cmp	r3, r2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	strb	r2, [r4, #352]	@ tmp161, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].TFF
	beq	.L879	@,
.L882:
	mov	r3, #1	@ tmp170,
	str	r3, [r4, #492]	@ tmp170, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
.L881:
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG,
	beq	.L883	@,
.L891:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE
	cmp	r3, #5	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE
	b	.L884	@
.L886:
	.word	.L889
	.word	.L887
	.word	.L888
	.word	.L884
	.word	.L889
	.word	.L897
.L889:
	mov	r2, r4	@, pSyntax
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	VC1_Vfmw_ParseAdvIPicHdr	@
.L908:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.42201, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PULLDOWN
	cmp	r2, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	strb	r0, [r4, #354]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RPTFRM
	bne	.L880	@,
.L909:
	cmp	r3, #1	@ D.42201,
	beq	.L910	@,
.L879:
	mov	r3, #2	@ tmp167,
	str	r3, [r4, #492]	@ tmp167, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	b	.L881	@
.L906:
	cmp	r0, #13	@ Code,
	movle	r7, #0	@ D.42198,
	movle	r1, #3	@ Len,
	ble	.L874	@,
	cmp	r0, #14	@ Code,
	moveq	r7, #4	@ D.42198,
	movne	r7, #5	@ D.42198,
	movne	r1, #4	@ Len,
	moveq	r1, r7	@ Len, D.42198
	b	.L874	@
.L907:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #396]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].TFCNTR
	b	.L875	@
.L897:
	mov	r0, #1	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L887:
	mov	r2, r4	@, pSyntax
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	VC1_Vfmw_ParseAdvPPicHdr	@
.L888:
	mov	r2, r4	@, pSyntax
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	VC1_Vfmw_ParseAdvBPicHdr	@
.L884:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L910:
	ldrb	r3, [r4, #353]	@ zero_extendqisi2	@ D.42199, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RFF
	add	r3, r3, #2	@ D.42199, D.42199,
	str	r3, [r4, #492]	@ D.42199, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	b	.L881	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFramePicHdr, .-VC1_Vfmw_ParseAdvFramePicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIFieldHdr
	.type	VC1_Vfmw_ParseAdvIFieldHdr, %function
VC1_Vfmw_ParseAdvIFieldHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r5, r0	@ D.42214,
	strb	r5, [r4, #358]	@ D.42214, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQINDEX
	cmp	r5, #0	@ D.42214,
	beq	.L919	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42214, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	mov	r1, r5	@, D.42214
	mov	r0, r7	@, D.42214
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r5, #8	@ D.42214,
	movhi	r3, #0	@ tmp142,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp142, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	bls	.L925	@,
.L915:
	cmp	r7, #1	@ D.42214,
	movne	r3, #0	@ tmp145,
	strneb	r3, [r4, #359]	@ tmp145, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	beq	.L926	@,
.L917:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG,
	beq	.L927	@,
.L918:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r6	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L919	@,
	mov	r0, r6	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM
	mov	r0, r6	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM2
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.42214, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.42214,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSDCTAB
	bne	.L928	@,
	mov	r0, #1	@ D.42212,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L919:
	mov	r0, #0	@ D.42212,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L925:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42214, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	b	.L915	@
.L928:
	mov	r0, r6	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	bl	VC1_VopDQuant	@
	mov	r0, #1	@ D.42212,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L926:
	mov	r1, r7	@, D.42214
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	b	.L917	@
.L927:
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].POSTPROC
	b	.L918	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIFieldHdr, .-VC1_Vfmw_ParseAdvIFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPFieldHdr
	.type	VC1_Vfmw_ParseAdvPFieldHdr, %function
VC1_Vfmw_ParseAdvPFieldHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.42227,
	strb	r6, [r4, #358]	@ D.42227, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.42227,
	beq	.L930	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42227, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.42227
	mov	r0, r7	@, D.42227
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.42227,
	movhi	r3, #0	@ tmp183,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp183, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	bls	.L958	@,
.L932:
	cmp	r7, #1	@ D.42227,
	movne	r3, #0	@ tmp186,
	strneb	r3, [r4, #359]	@ tmp186, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	beq	.L959	@,
.L934:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG,
	beq	.L960	@,
.L935:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42227,
	strb	r0, [r4, #380]	@ D.42227, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].NUMREF
	cmp	r0, #0	@ D.42227,
	beq	.L961	@,
.L936:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV,
	beq	.L962	@,
.L937:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV,
	beq	.L963	@,
.L938:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r0, r0	@ D.42227,
	strb	r0, [r4, #362]	@ D.42227, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE
	cmp	r0, #4	@ D.42227,
	beq	.L964	@,
.L940:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #380]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].NUMREF, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].NUMREF
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].NUMREF,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #375]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	uxtb	r0, r0	@ D.42229,
	strb	r0, [r4, #366]	@ D.42229, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #362]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE,
	strb	r0, [r4, #367]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].CBPTAB
	beq	.L944	@,
	movw	r3, #362	@ tmp213,
	ldrh	r3, [r4, r3]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B], MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B]
	cmp	r3, #4	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B],
	beq	.L944	@,
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.42227, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.42227,
	bne	.L965	@,
.L946:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM,
	beq	.L966	@,
.L948:
	mov	r0, r5	@, pBs
	mov	r6, #1	@ D.42225,
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSDCTAB
.L930:
	mov	r0, r6	@, D.42225
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L944:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.42227, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.42227,
	strb	r0, [r4, #377]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].QMVBPTAB
	beq	.L946	@,
.L965:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L946	@
.L961:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	clz	r0, r0	@ tmp191,
	mov	r0, r0, lsr #5	@ tmp191, tmp191,
	strb	r0, [r4, #381]	@ tmp191, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].REFFIELD
	b	.L936	@
.L958:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.42227, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	b	.L932	@
.L962:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVRANGE
	b	.L937	@
.L963:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].DMVRANGE
	b	.L938	@
.L959:
	mov	r1, r7	@, D.42227
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	b	.L934	@
.L966:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42227,
	strb	r0, [r4, #368]	@ D.42227, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTMBF
	cmp	r0, #1	@ D.42227,
	bne	.L948	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTFRM
	b	.L948	@
.L960:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].POSTPROC
	b	.L935	@
.L964:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	strb	r0, [r4, #363]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE2
	mov	r0, r5	@, pBs
	bl	VC1_DecIntCompField	@
	mov	r1, #6	@,
	str	r0, [r4, #476]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].INTCOMPFIELD
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #476]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].INTCOMPFIELD, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].INTCOMPFIELD
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].INTCOMPFIELD,
	strb	r0, [r4, #365]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].LUMSHIFT
	bne	.L940	@,
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r4, #480]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].LUMSCALE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #484]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].LUMSHIFT2
	b	.L940	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPFieldHdr, .-VC1_Vfmw_ParseAdvPFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBFieldHdr
	.type	VC1_Vfmw_ParseAdvBFieldHdr, %function
VC1_Vfmw_ParseAdvBFieldHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r1	@ pCodecInf, pCodecInf
	mov	r7, #1	@ tmp161,
	mov	r1, #5	@,
	strb	r7, [r2, #380]	@ tmp161, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].NUMREF
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.42243,
	strb	r6, [r4, #358]	@ D.42243, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.42243,
	beq	.L977	@,
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ D.42243, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.42243
	mov	r0, r8	@, D.42243
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.42243,
	movhi	r3, #0	@ tmp166,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp166, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	bls	.L990	@,
.L971:
	cmp	r8, #1	@ D.42243,
	movne	r3, #0	@ tmp169,
	strneb	r3, [r4, #359]	@ tmp169, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	beq	.L991	@,
.L973:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG,
	beq	.L992	@,
.L974:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV,
	beq	.L993	@,
.L975:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV,
	beq	.L994	@,
.L976:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeInterB	@
	mov	r1, r9	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	strb	r0, [r4, #362]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L977	@,
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #375]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #366]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #362]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE,
	strb	r0, [r4, #367]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].CBPTAB
	beq	.L995	@,
.L978:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.42243, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.42243,
	bne	.L996	@,
.L979:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM,
	beq	.L997	@,
.L981:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.42241,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSDCTAB
	mov	r0, r3	@, D.42241
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L977:
	mov	r3, #0	@ D.42241,
	mov	r0, r3	@, D.42241
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L990:
	mov	r1, r7	@, tmp161
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ D.42243, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	b	.L971	@
.L996:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L979	@
.L995:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].QMVBPTAB
	b	.L978	@
.L992:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].POSTPROC
	b	.L974	@
.L993:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVRANGE
	b	.L975	@
.L991:
	mov	r1, r8	@, D.42243
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	b	.L973	@
.L994:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].DMVRANGE
	b	.L976	@
.L997:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42243,
	strb	r0, [r4, #368]	@ D.42243, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTMBF
	cmp	r0, #1	@ D.42243,
	bne	.L981	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTFRM
	b	.L981	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBFieldHdr, .-VC1_Vfmw_ParseAdvBFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFieldPicHdr
	.type	VC1_Vfmw_ParseAdvFieldPicHdr, %function
VC1_Vfmw_ParseAdvFieldPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r1	@ pCodecInf, pCodecInf
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ pCodecInf_15(D)->Is2ndFld, pCodecInf_15(D)->Is2ndFld
	mov	r6, r0	@ pBs, pBs
	mov	r4, r2	@ pSyntax, pSyntax
	cmp	r3, #0	@ pCodecInf_15(D)->Is2ndFld,
	beq	.L999	@,
	add	r3, r1, #20480	@ tmp181, pCodecInf,
	ldr	r3, [r3, #2164]	@ pCodecInf_15(D)->SlcNum, pCodecInf_15(D)->SlcNum
	cmp	r3, #0	@ pCodecInf_15(D)->SlcNum,
	ble	.L1000	@,
.L999:
	mov	r1, #3	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, .L1045	@ tmp183,
	str	r0, [r4, #472]	@ D.42284, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE
	add	r0, r3, r0, lsl #3	@ tmp184, tmp183, D.42284,
	ldr	r3, [r0, #696]	@ D.42284, FldPTypeTab
	ldr	r2, [r0, #692]	@ D.42284, FldPTypeTab
	str	r3, [r4, #504]	@ D.42284, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType
	str	r2, [r4, #500]	@ D.42284, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_15(D)->Is2ndFld, pCodecInf_15(D)->Is2ndFld
	cmp	r1, #0	@ pCodecInf_15(D)->Is2ndFld,
	uxtbeq	r3, r2	@ D.42281, D.42284
	uxtbne	r3, r3	@ D.42281, D.42284
	strb	r3, [r4, #349]	@ D.42281, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	ldrb	r3, [r5, #3509]	@ zero_extendqisi2	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r5, #2]	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->PicCodingType
	ldrb	r3, [r4, #24]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].TFCNTRFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].TFCNTRFLAG
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].TFCNTRFLAG,
	bne	.L1039	@,
.L1003:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.42281, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].PULLDOWN
	cmp	r3, #0	@ D.42281,
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE
	bne	.L1040	@,
	mov	r2, #1	@ tmp198,
	cmp	r3, r2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE,
	strb	r2, [r4, #352]	@ tmp198, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	beq	.L1007	@,
.L1010:
	mov	r3, #1	@ tmp207,
	str	r3, [r4, #492]	@ tmp207, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
.L1009:
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG,
	beq	.L1011	@,
.L1014:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #348]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RNDCTRL
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #191]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].REFDIST_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].REFDIST_FLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].REFDIST_FLAG,
	strb	r0, [r4, #356]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].UVSAMP
	beq	.L1041	@,
.L1013:
	ldr	r3, [r4, #472]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE
	cmp	r3, #3	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE,
	bgt	.L1018	@,
.L1017:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	cmp	r3, #4	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	b	.L1026	@
.L1021:
	.word	.L1020
	.word	.L1022
	.word	.L1023
	.word	.L1026
	.word	.L1020
.L1040:
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE,
	bne	.L1005	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.42281, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].PULLDOWN
	strb	r0, [r4, #354]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RPTFRM
.L1006:
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE
	cmp	r2, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE,
	beq	.L1042	@,
	cmp	r3, #1	@ D.42281,
	bne	.L1010	@,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG
	ldrb	r3, [r4, #354]	@ zero_extendqisi2	@ D.42284, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RPTFRM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG,
	add	r3, r3, #1	@ D.42284, D.42284,
	str	r3, [r4, #492]	@ D.42284, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	bne	.L1014	@,
.L1011:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42283,
	strb	r0, [r4, #355]	@ D.42283, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PS_PRESENT
	cmp	r0, #1	@ D.42283,
	bne	.L1014	@,
	ldr	r3, [r4, #492]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows,
	ble	.L1014	@,
	add	r9, r4, #396	@ ivtmp.1064, pSyntax,
	mov	r7, r4	@ ivtmp.1069, pSyntax
	mov	r8, #0	@ i,
.L1015:
	mov	r1, #18	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	add	r7, r7, #4	@ ivtmp.1069, ivtmp.1069,
	str	r0, [r9, #4]!	@, MEM[base: _134, offset: 0B]
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #412]	@, MEM[base: _135, offset: 416B]
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #428]	@, MEM[base: _135, offset: 432B]
	mov	r0, r6	@, pBs
	bl	BsGet	@
	str	r0, [r7, #444]	@, MEM[base: _135, offset: 448B]
	ldr	r3, [r4, #492]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	cmp	r3, r8	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows, i
	bgt	.L1015	@,
	b	.L1014	@
.L1023:
	mov	r0, r6	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvBFieldHdr	@
.L1019:
	ldrb	r3, [r4, #352]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF,
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_15(D)->Is2ndFld, pCodecInf_15(D)->Is2ndFld
	bne	.L1043	@,
.L1024:
	subs	r3, r3, #1	@ tmp231, pCodecInf_15(D)->Is2ndFld,
	movne	r3, #1	@ tmp231,
	strb	r3, [r4, #389]	@ tmp231, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1022:
	mov	r0, r6	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvPFieldHdr	@
	ldrb	r3, [r4, #352]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF,
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_15(D)->Is2ndFld, pCodecInf_15(D)->Is2ndFld
	beq	.L1024	@,
.L1043:
	adds	r3, r3, #0	@ tmp228, pCodecInf_15(D)->Is2ndFld,
	movne	r3, #1	@ tmp228,
	strb	r3, [r4, #389]	@ tmp228, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1020:
	mov	r0, r6	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvIFieldHdr	@
	b	.L1019	@
.L1041:
	ldr	r3, [r4, #472]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE
	cmp	r3, #3	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE,
	ble	.L1016	@,
.L1018:
	add	r1, r4, #496	@, pSyntax,
	mov	r0, r6	@, pBs
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].BFRACTION
	b	.L1017	@
.L1039:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	str	r0, [r4, #396]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFCNTR
	b	.L1003	@
.L1042:
	cmp	r3, #1	@ D.42281,
	beq	.L1044	@,
.L1007:
	mov	r3, #2	@ tmp204,
	str	r3, [r4, #492]	@ tmp204, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	b	.L1009	@
.L1005:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.42281, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].PULLDOWN
	strb	r0, [r4, #353]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RFF
	b	.L1006	@
.L1026:
	mov	r0, #0	@ Ret,
	b	.L1019	@
.L1016:
	mov	r0, r6	@, pBs
	bl	VC1_DecRefdist	@
	strb	r0, [r4, #379]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].REFDIST
	b	.L1013	@
.L1044:
	ldrb	r3, [r4, #353]	@ zero_extendqisi2	@ D.42284, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RFF
	add	r3, r3, #2	@ D.42284, D.42284,
	str	r3, [r4, #492]	@ D.42284, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	b	.L1009	@
.L1000:
	ldr	r3, [r2, #504]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType
	strb	r3, [r2, #349]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	ldrb	r3, [r1, #3509]	@ zero_extendqisi2	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r1, #2]	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->PicCodingType
	b	.L1017	@
.L1046:
	.align	2
.L1045:
	.word	.LANCHOR0
	.fnend
	.size	VC1_Vfmw_ParseAdvFieldPicHdr, .-VC1_Vfmw_ParseAdvFieldPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPicHdr
	.type	VC1_Vfmw_ParseAdvPicHdr, %function
VC1_Vfmw_ParseAdvPicHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r6, r0	@ pBs, pBs
	mov	r1, #0	@,
	mov	r0, r4	@, pCodecInf
	mov	r5, r2	@ pSyntax, pSyntax
	bl	VC1_SetCurPicResolutionInfo	@
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ pCodecInf_8(D)->Is2ndFld, pCodecInf_8(D)->Is2ndFld
	cmp	r3, #0	@ pCodecInf_8(D)->Is2ndFld,
	beq	.L1048	@,
	add	r3, r4, #20480	@ tmp124, pCodecInf,
	ldr	r3, [r3, #2164]	@ pCodecInf_8(D)->SlcNum, pCodecInf_8(D)->SlcNum
	cmp	r3, #0	@ pCodecInf_8(D)->SlcNum,
	ldrle	r3, [r5, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM
	bicle	r3, r3, #2	@ D.42289, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM,
	ble	.L1049	@,
.L1048:
	ldrb	r8, [r5, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE
	cmp	r8, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE,
	movne	r3, #0	@ D.42289,
	movne	r0, r3	@ D.42289, D.42289
	beq	.L1058	@,
.L1050:
	str	r0, [r5, #392]	@ D.42289, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM
.L1049:
	cmp	r3, #0	@ D.42289,
	mov	r2, r5	@, pSyntax
	mov	r1, r4	@, pCodecInf
	mov	r0, r6	@, pBs
	beq	.L1059	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFieldPicHdr	@
.L1059:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFramePicHdr	@
.L1058:
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r7, r0	@ Code,
	ble	.L1060	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	bic	r3, r7, #2	@ D.42289, Code,
	mov	r0, r7	@ D.42289, Code
	b	.L1050	@
.L1060:
	mov	r1, r8	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r3, #0	@ D.42289,
	mov	r0, r3	@ D.42289, D.42289
	b	.L1050	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPicHdr, .-VC1_Vfmw_ParseAdvPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvSlcHdr
	.type	VC1_Vfmw_ParseAdvSlcHdr, %function
VC1_Vfmw_ParseAdvSlcHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r1, #20480	@ tmp121, pCodecInf,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r1	@ pCodecInf, pCodecInf
	mov	r1, #9	@,
	mov	r5, r2	@ pSyntax, pSyntax
	ldr	r4, [r3, #2164]	@ D.42294, pCodecInf_4(D)->SlcNum
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r3, r4, asl #4	@ tmp124, D.42294,
	sub	r4, r3, r4, asl #2	@ tmp125, tmp124, D.42294,
	add	r4, r5, r4	@ tmp126, pSyntax, tmp125
	add	r4, r4, #520	@ tmp127, tmp126,
	str	r0, [r4, #8]	@, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_6(D)].AdvSlcSyntax[_5].SLICE_ADDR
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.42295,
	strb	r0, [r4, #4]	@ D.42295, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_6(D)].AdvSlcSyntax[_5].PIC_HEADER_FLAG
	cmp	r0, #1	@ D.42295,
	beq	.L1064	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1064:
	add	lr, r5, #188	@ tmp139, pSyntax,
	add	ip, r7, #6912	@ tmp138, pCodecInf,
	add	ip, ip, #32	@ tmp138, tmp138,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp139,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp138,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp139,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp138,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp139,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp138,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp139,,,
	stmia	ip, {r0, r1, r2}	@ tmp138,,,
	add	r0, r7, #6720	@, pCodecInf,
	add	r1, r5, #16	@, pSyntax,
	mov	r2, #172	@,
	add	r0, r0, #52	@,,
	bl	memcpy	@
	add	r1, r5, #348	@, pSyntax,
	mov	r2, #176	@,
	add	r0, r7, #7104	@, pCodecInf,
	bl	memcpy	@
	add	r2, r7, #6720	@, pCodecInf,
	mov	r0, r6	@, pBs
	mov	r1, r7	@, pCodecInf
	add	r2, r2, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvPicHdr	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSlcHdr, .-VC1_Vfmw_ParseAdvSlcHdr
	.align	2
	.global	VC1_ClearCurPacket
	.type	VC1_ClearCurPacket, %function
VC1_ClearCurPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pVc1Packet, pVc1Packet
	ldr	r1, [r1, #28]	@, pVc1Packet_3(D)->StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4, #8]	@ pVc1Packet_3(D)->IsLastSeg, pVc1Packet_3(D)->IsLastSeg
	cmp	r3, #1	@ pVc1Packet_3(D)->IsLastSeg,
	beq	.L1066	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, pVc1Packet_3(D)->StreamID
	bl	SM_ReleaseStreamSeg	@
.L1066:
	mov	r0, r4	@, pVc1Packet
	mov	r1, #36	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
	.fnend
	.size	VC1_ClearCurPacket, .-VC1_ClearCurPacket
	.align	2
	.global	VC1_ClearCurPic
	.type	VC1_ClearCurPic, %function
VC1_ClearCurPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ ChanID, ChanID
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@ pCodeInfo_6(D)->PreParseInfo.IsAdvProfile, pCodeInfo_6(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodeInfo_6(D)->PreParseInfo.IsAdvProfile,
	beq	.L1072	@,
	add	r7, r0, #20480	@ tmp140, pCodeInfo,
	ldr	r3, [r7, #2164]	@ pCodeInfo_6(D)->SlcNum, pCodeInfo_6(D)->SlcNum
	cmp	r3, #0	@ pCodeInfo_6(D)->SlcNum,
	ble	.L1087	@,
	add	r4, r0, #22528	@ ivtmp.1103, pCodeInfo,
	mov	r5, #0	@ i,
	add	r4, r4, #160	@ ivtmp.1103, ivtmp.1103,
	b	.L1076	@
.L1075:
	ldr	r3, [r7, #2164]	@ pCodeInfo_6(D)->SlcNum, pCodeInfo_6(D)->SlcNum
	add	r4, r4, #48	@ ivtmp.1103, ivtmp.1103,
	cmp	r3, r5	@ pCodeInfo_6(D)->SlcNum, i
	ble	.L1088	@,
.L1076:
	ldr	r1, [r4]	@, MEM[base: _1, offset: 0B]
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #-36]	@ MEM[base: _1, offset: 4294967260B], MEM[base: _1, offset: 4294967260B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #0	@ MEM[base: _1, offset: 4294967260B],
	beq	.L1075	@,
	ldr	r3, [r4, #-12]	@ MEM[base: _1, offset: 4294967284B], MEM[base: _1, offset: 4294967284B]
	cmp	r3, #0	@ MEM[base: _1, offset: 4294967284B],
	beq	.L1075	@,
	ldr	r1, [r4, #4]	@, MEM[base: _1, offset: 4B]
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r7, #2164]	@ pCodeInfo_6(D)->SlcNum, pCodeInfo_6(D)->SlcNum
	add	r4, r4, #48	@ ivtmp.1103, ivtmp.1103,
	cmp	r3, r5	@ pCodeInfo_6(D)->SlcNum, i
	bgt	.L1076	@,
.L1088:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1072:
	add	r1, r0, #34816	@, pCodeInfo,
	mov	r0, r6	@, ChanID
	add	r1, r1, #124	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_ClearCurPacket	@
.L1087:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VC1_ClearCurPic, .-VC1_ClearCurPic
	.align	2
	.global	VC1DEC_VDMPostProc
	.type	VC1DEC_VDMPostProc, %function
VC1DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #110592	@ tmp406, pCtx,
	add	r5, r0, #98304	@ tmp404, pCtx,
	add	r6, r0, #77824	@ tmp405, pCtx,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r9, r0	@ pCtx, pCtx
	mov	r8, r1	@ ErrRatio, ErrRatio
	add	r0, r6, #448	@, tmp405,
	ldr	r1, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	VC1_ClearCurPic	@
	ldr	r1, [r5, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].CurFsID
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r5, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].BwdFsID
	mov	fp, r0	@ pCurImg,
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r5, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].FwdFsID
	mov	r7, r0	@ pBwdImg,
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	fp, #0	@ pCurImg,
	beq	.L1099	@,
	cmp	r8, #0	@ ErrRatio,
	movlt	r8, #0	@ D.42325,
	blt	.L1092	@,
	cmp	r8, #100	@ ErrRatio,
	movge	r8, #100	@ D.42325,
.L1092:
	str	r8, [fp, #180]	@ D.42325, pCurImg_18->error_level
	mov	r0, r9	@, pCtx
	bl	VC1_SetImgFormat	@
	ldrb	r2, [r6, #451]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].Last_Struct_IPB, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].Last_Struct_IPB
	cmp	r2, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].Last_Struct_IPB,
	beq	.L1126	@,
.L1093:
	mov	r10, #0	@ tmp213,
	str	r10, [fp, #192]	@ tmp213, pCurImg_18->p_usrdat
	str	r10, [fp, #196]	@ tmp213, pCurImg_18->p_usrdat
	ldr	r2, [r9]	@ pCtx_10(D)->pstExtraData, pCtx_10(D)->pstExtraData
	ldr	r2, [r2, #12]	@ _38->s32DecOrderOutput, _38->s32DecOrderOutput
	cmp	r2, #1	@ _38->s32DecOrderOutput,
	beq	.L1094	@,
	ldrb	r0, [r6, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCodingType
	sub	r0, r0, #2	@ tmp221, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCodingType,
	ands	lr, r0, #253	@ tmp225, tmp221,
	beq	.L1095	@,
	ldr	r10, [r5, #2592]	@ D.42333, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefNum
	cmp	r10, #1	@ D.42333,
	ldrhi	ip, [r5, #2596]	@ D.42330, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].FwdFsID
	mvnls	ip, #0	@ D.42330,
	cmp	r10, #1	@ D.42333,
	movls	r10, #0	@ pref,
	movhi	r10, #1	@ pref,
	str	ip, [r5, #2608]	@ D.42330, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
.L1097:
	ldr	r3, [r4, #2616]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt
	cmn	ip, #1	@ D.42330,
	add	r3, r3, #1	@ D.42326, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt,
	str	r3, [r4, #2616]	@ D.42326, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt
	beq	.L1098	@,
	mov	r1, ip	@, D.42330
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pToQueImg,
	beq	.L1099	@,
	ldr	r3, [r7, #180]	@ D.42333, pToQueImg_63->error_level
	cmp	r3, #0	@ D.42333,
	beq	.L1100	@,
	ldr	r2, [r9]	@ pCtx_10(D)->pstExtraData, pCtx_10(D)->pstExtraData
	ldr	r2, [r2, #4]	@ _66->s32OutErrThr, _66->s32OutErrThr
	cmp	r3, r2	@ D.42333, _66->s32OutErrThr
	bhi	.L1101	@,
.L1100:
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r5, #2608]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_SetDisplay	@
	cmp	r10, #1	@ pref,
	ldreq	r3, [r5, #2520]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	movne	r1, #1	@ tmp297,
	ldrne	r2, [r5, #2512]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	movne	r3, #2	@ tmp301,
	strneb	r1, [r2, #1]	@ tmp297, _92->is_to_display
	mov	r2, r9	@, pCtx
	streqb	r10, [r3, #1]	@ pref, _89->is_to_display
	mov	r1, #1	@,
	strneb	r3, [r6, #449]	@ tmp301, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	add	r3, r9, #112640	@, pCtx,
	streqb	r10, [r6, #449]	@ pref, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	add	r3, r3, #728	@,,
	ldr	r0, [r4, #3128]	@ pCtx_10(D)->ChanID, pCtx_10(D)->ChanID
	str	r7, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.42326,
	beq	.L1104	@,
	ldr	r1, [r7, #192]	@, pToQueImg_63->p_usrdat
	mov	r6, #0	@ tmp312,
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r7, #192]	@ tmp312, pToQueImg_63->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_63->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r7, #196]	@ tmp312, pToQueImg_63->p_usrdat
	mov	r2, r6	@, tmp312
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	ldr	r1, [r5, #2608]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r10, #1	@ pref,
	mov	r0, r6	@ D.42325, tmp312
	ldreq	r3, [r5, #2520]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	ldrne	r3, [r5, #2512]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	strb	r6, [r3, #1]	@ tmp312,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1095:
	ldr	ip, [r5, #2604]	@ D.42330, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].CurFsID
	cmp	r7, #0	@ pBwdImg,
	moveq	r10, r7	@ pref, pBwdImg
	str	ip, [r5, #2608]	@ D.42330, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	beq	.L1097	@,
	ldrd	r2, [fp, #8]	@ D.42331, pCurImg,
	ldrd	r0, [r7, #8]	@ D.42331, pBwdImg,
	cmp	r0, r2	@ D.42331, D.42331
	strd	r2, [sp, #8]	@ D.42331,,
	sbcs	r3, r1, r3	@ tmp407, D.42331, D.42331
	movge	r10, lr	@ pref, tmp225
	bge	.L1097	@,
	mov	r2, r0	@ D.42331, D.42331
	mov	r3, r1	@ D.42331, D.42331
	strd	r2, [fp, #8]	@ D.42331, pCurImg,
	mov	r10, lr	@ pref, tmp225
	ldrd	r2, [sp, #8]	@ D.42331,,
	strd	r2, [r7, #8]	@ D.42331, pBwdImg,
	ldr	ip, [r5, #2608]	@ D.42330, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	b	.L1097	@
.L1127:
	ldr	r2, [r5, #2516]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	mov	r3, #0	@ tmp345,
	strb	r3, [r2, #1]	@ tmp345, _115->is_to_display
	strb	r3, [r6, #449]	@ tmp345, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
.L1098:
	mov	r0, #1	@ D.42325,
.L1091:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1126:
	ldrb	r2, [r6, #457]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].LastIs2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].LastIs2ndFld
	cmp	r2, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].LastIs2ndFld,
	bne	.L1098	@,
	b	.L1093	@
.L1094:
	ldr	ip, [r5, #2604]	@ D.42330, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].CurFsID
	str	ip, [r5, #2608]	@ D.42330, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	b	.L1097	@
.L1104:
	ldrb	r10, [r6, #449]	@ zero_extendqisi2	@ D.42328, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	sxtb	r10, r10	@ D.42328, D.42328
	cmp	r10, #3	@ D.42328,
	beq	.L1127	@,
	cmp	r10, #1	@ D.42328,
	beq	.L1128	@,
	cmp	r10, #2	@ D.42328,
	bne	.L1098	@,
	ldr	r2, [r5, #2512]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	mov	r3, #0	@ tmp367,
	strb	r3, [r2, #1]	@ tmp367,
	strb	r3, [r6, #449]	@ tmp367, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	b	.L1091	@
.L1101:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, #192]	@, pToQueImg_63->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	mov	r6, #0	@ tmp377,
	bl	FreeUsdByDec	@
	str	r6, [r7, #192]	@ tmp377, pToQueImg_63->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_63->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r7, #196]	@ tmp377, pToQueImg_63->p_usrdat
	mov	r2, r6	@, tmp377
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	ldr	r1, [r5, #2608]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r10, #1	@ pref,
	ldreq	r3, [r5, #2520]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	moveq	r0, r10	@ D.42325, pref
	ldrne	r3, [r5, #2512]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	movne	r0, #1	@ D.42325,
	strb	r6, [r3, #1]	@ tmp377,
	b	.L1091	@
.L1099:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42325,
	b	.L1091	@
.L1128:
	ldr	r2, [r5, #2520]	@ D.42335, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	mov	r3, #0	@ tmp356,
	mov	r0, r10	@ D.42325, D.42328
	strb	r3, [r2, #1]	@ tmp356,
	strb	r3, [r6, #449]	@ tmp356, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	b	.L1091	@
	.fnend
	.size	VC1DEC_VDMPostProc, .-VC1DEC_VDMPostProc
	.align	2
	.global	VC1_Vfmw_DecodeArbiter
	.type	VC1_Vfmw_DecodeArbiter, %function
VC1_Vfmw_DecodeArbiter:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r5, r0, #77824	@ tmp481, pVC1_CTX_S,
	ldrb	r3, [r5, #448]	@ zero_extendqisi2	@ D.42353, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].CodecStatus
	tst	r3, #16	@ D.42353,
	beq	.L1185	@,
	add	r6, r0, #110592	@ tmp480, pVC1_CTX_S,
	bic	r3, r3, #20	@ tmp193, D.42353,
	strb	r3, [r5, #448]	@ tmp193, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].CodecStatus
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldr	r3, [r6, #2732]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode
	sub	r3, r3, #2	@ D.42356, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode,
	cmp	r3, #1	@ D.42356,
	bls	.L1132	@,
.L1134:
	ldr	r3, [r4]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	add	r7, r4, #98304	@ tmp479, pVC1_CTX_S,
	ldr	r1, [r7, #2592]	@ D.42366, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	ldr	r2, [r3, #8]	@ D.42356,
.L1133:
	sub	r3, r2, #1	@ tmp328, D.42356,
	str	r2, [r6, #2732]	@ D.42356, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode
	cmp	r3, #3	@ tmp328,
	ldrls	pc, [pc, r3, asl #2]	@ tmp328
	b	.L1162	@
.L1144:
	.word	.L1138
	.word	.L1140
	.word	.L1161
	.word	.L1142
.L1160:
	mov	r1, #0	@ D.42366,
.L1142:
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ D.42353, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	cmp	r3, #0	@ D.42353,
	streq	r3, [r6, #2664]	@ D.42353, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound
	moveq	r3, #1	@ ret,
	beq	.L1145	@,
	cmp	r3, #2	@ D.42353,
	bne	.L1147	@,
	ldr	r3, [r6, #2664]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound
	adds	r3, r3, #0	@ ret, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound,
	movne	r3, #1	@ ret,
	cmp	r1, #0	@ D.42366,
	bne	.L1149	@,
.L1148:
	bl	vfmw_dprint_nothing	@
.L1151:
	add	r0, r5, #448	@, tmp481,
	ldr	r1, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	VC1_ClearCurPic	@
	ldr	r3, .L1187	@ tmp390,
	ldr	r3, [r3]	@ D.42363, g_event_report
	cmp	r3, #0	@ D.42363,
	beq	.L1185	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42363
.L1185:
	mov	r0, #0	@ D.42354,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1132:
	ldr	r3, [r0]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	ldr	r3, [r3, #8]	@ D.42358, _19->s32DecMode
	cmp	r3, #4	@ D.42358,
	cmpne	r3, #1	@, D.42358,
	bhi	.L1134	@,
	add	r7, r0, #98304	@ tmp479, pVC1_CTX_S,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	ldr	r1, [r7, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L1135	@,
	ldr	r1, [r8, #192]	@, pImg_29->p_usrdat
	mov	r9, #0	@ tmp238,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #196]	@, pImg_29->p_usrdat
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #200]	@, pImg_29->p_usrdat
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #204]	@, pImg_29->p_usrdat
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	r9, [r8, #192]	@ tmp238, pImg_29->p_usrdat
	str	r9, [r8, #196]	@ tmp238, pImg_29->p_usrdat
	mov	r2, #1	@,
	str	r9, [r8, #200]	@ tmp238, pImg_29->p_usrdat
	str	r9, [r8, #204]	@ tmp238, pImg_29->p_usrdat
	ldr	r1, [r7, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r7, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r9, [r7, #2596]	@ tmp238, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	str	r9, [r7, #2600]	@ tmp238, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r7, #2600]	@ D.42358, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	str	r0, [r7, #2596]	@ D.42358, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
.L1135:
	ldr	r2, [r7, #2516]	@ D.42361, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	mov	r3, #0	@ tmp283,
	str	r3, [r7, #2592]	@ tmp283, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	cmp	r2, r3	@ D.42361,
	beq	.L1143	@,
	ldr	r1, [r7, #2520]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	cmp	r1, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef,
	beq	.L1143	@,
	strb	r3, [r2, #1]	@ tmp283, _60->is_to_display
	ldr	r2, [r7, #2520]	@ D.42361, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	strb	r3, [r2, #1]	@ tmp283, _63->is_to_display
	ldr	r2, [r7, #2516]	@ D.42361, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	strb	r3, [r2]	@ tmp283, _65->is_to_ref
	ldr	r2, [r7, #2520]	@ D.42361, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	strb	r3, [r2]	@ tmp283, _67->is_to_ref
	ldr	r3, [r4]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	ldr	r1, [r7, #2592]	@ D.42366, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	ldr	r2, [r3, #8]	@ D.42356,
	b	.L1133	@
.L1161:
	mov	r3, #0	@ ret,
.L1145:
	cmp	r1, #0	@ D.42366,
	beq	.L1141	@,
.L1149:
	cmp	r1, #1	@ D.42366,
	bls	.L1186	@,
.L1152:
	cmp	r3, #0	@ ret,
	beq	.L1151	@,
	ldrb	r3, [r5, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L1155	@,
	add	r3, r5, #3600	@ tmp406, tmp481,
	add	ip, r4, #88064	@ tmp405, pVC1_CTX_S,
	add	r3, r3, #8	@ tmp406, tmp406,
	add	ip, ip, #560	@ tmp405, tmp405,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp406,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp405,,,,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r5, #3856	@, tmp481,
	mov	r2, #100	@,
	add	r0, r0, #808	@,,
	bl	memcpy	@
	mov	r0, #1	@ D.42354,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1157:
	mov	r1, #0	@ D.42366,
.L1138:
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	sub	r3, r3, #2	@ tmp333, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType,
	tst	r3, #253	@ tmp333,
	movne	r3, #1	@ ret,
	moveq	r3, #0	@ ret,
	cmp	r1, #0	@ D.42366,
	bne	.L1149	@,
.L1141:
	ldrb	r2, [r5, #450]	@ zero_extendqisi2	@ D.42353, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	sub	r0, r2, #4	@ tmp369, D.42353,
	sub	r1, r2, #1	@ tmp373, D.42353,
	cmp	r1, #1	@ tmp373,
	cmphi	r0, #1	@, tmp369,
	bls	.L1148	@,
.L1150:
	sub	r2, r2, #2	@ tmp380, D.42353,
	tst	r2, #253	@ tmp380,
	bne	.L1152	@,
	b	.L1148	@
.L1158:
	mov	r1, #0	@ D.42366,
.L1140:
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	clz	r3, r3	@ ret, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	mov	r3, r3, lsr #5	@ ret, ret,
	b	.L1145	@
.L1155:
	add	r1, r5, #3616	@, tmp481,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r1, #8	@,,
	mov	r2, #172	@,
	add	r0, r0, #576	@,,
	bl	memcpy	@
	add	lr, r5, #3792	@ tmp438, tmp481,
	add	lr, lr, #4	@ tmp438, tmp438,
	add	ip, r4, #88064	@ tmp436, pVC1_CTX_S,
	add	ip, ip, #748	@ tmp436, tmp436,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp438,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp436,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp438,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp436,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp438,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp436,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp438,,,
	stmia	ip, {r0, r1, r2}	@ tmp436,,,
	add	r1, r5, #3952	@, tmp481,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r1, #4	@,,
	mov	r2, #176	@,
	add	r0, r0, #908	@,,
	bl	memcpy	@
	ldr	r3, [r5, #4000]	@ MEM[(struct VC1_VFMWSYNTAX_S *)pVC1_CTX_S_11(D) + 81432B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWSYNTAX_S *)pVC1_CTX_S_11(D) + 81432B].AdvPicSyntax.FCM
	add	r1, r4, #81920	@, pVC1_CTX_S,
	add	r0, r5, #11264	@, tmp481,
	add	r1, r1, #36	@,,
	add	r0, r0, #60	@,,
	strb	r3, [r5, #452]	@ MEM[(struct VC1_VFMWSYNTAX_S *)pVC1_CTX_S_11(D) + 81432B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicStructure
	ldr	r3, [r7, #2612]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum
	mov	r2, r3, asl #4	@ tmp469, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum,
	sub	r2, r2, r3, asl #2	@, tmp469, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum,
	bl	memcpy	@
	mov	r0, #1	@ D.42354,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1156:
	mov	r1, #0	@ D.42366,
.L1162:
	mov	r3, #1	@ ret,
	b	.L1145	@
.L1147:
	and	r3, r3, #251	@ tmp359, D.42353,
	cmp	r3, #1	@ tmp359,
	bne	.L1162	@,
	str	r3, [r6, #2664]	@ tmp359, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound
	b	.L1145	@
.L1143:
	ldr	r3, [r4]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	ldr	r2, [r3, #8]	@ D.42356, _75->s32DecMode
	sub	r3, r2, #1	@ tmp293, D.42356,
	str	r2, [r6, #2732]	@ D.42356, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode
	cmp	r3, #3	@ tmp293,
	ldrls	pc, [pc, r3, asl #2]	@ tmp293
	b	.L1156	@
.L1139:
	.word	.L1157
	.word	.L1158
	.word	.L1159
	.word	.L1160
.L1159:
	mov	r3, #0	@ ret,
	b	.L1141	@
.L1186:
	ldrb	r2, [r5, #450]	@ zero_extendqisi2	@ D.42353, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	b	.L1150	@
.L1188:
	.align	2
.L1187:
	.word	g_event_report
	.fnend
	.size	VC1_Vfmw_DecodeArbiter, .-VC1_Vfmw_DecodeArbiter
	.align	2
	.global	VC1_Vfmw_StartDecode
	.type	VC1_Vfmw_StartDecode, %function
VC1_Vfmw_StartDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r5, r0, #77824	@ tmp296, pVC1_CTX_S,
	ldr	r3, [r0]	@ pVC1_CTX_S_7(D)->pstExtraData, pVC1_CTX_S_7(D)->pstExtraData
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldrb	r2, [r5, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PreParseInfo.IsAdvProfile
	add	r6, r5, #448	@ tmp297, tmp296,
	add	r8, r0, #8	@ pVc1DecParam, pVC1_CTX_S,
	ldr	r3, [r3, #512]	@ D.42383, _11->s32Compress_en
	cmp	r2, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PreParseInfo.IsAdvProfile,
	str	r3, [r5, #280]	@ D.42383, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].Compress_en
	beq	.L1205	@,
.L1190:
	add	r7, r4, #98304	@ tmp298, pVC1_CTX_S,
	mov	r1, r8	@, pVc1DecParam
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_WritePicMsg	@
	ldr	r3, [r7, #2612]	@ D.42383, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].SlcNum
	add	r1, r6, #22528	@, tmp297,
	add	r0, r4, #92	@, pVC1_CTX_S,
	add	r1, r1, #120	@,,
	mov	r2, r3, asl #6	@ tmp173, D.42383,
	strb	r3, [r4, #78]	@ D.42383, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].SlcNum
	sub	r2, r2, r3, asl #4	@, tmp173, D.42383,
	bl	memcpy	@
	mov	r1, r8	@, pVc1DecParam
	mov	r0, r6	@, tmp297
	bl	VC1_CfgVDH	@
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ D.42385, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicCodingType
	cmp	r3, #1	@ D.42385,
	ldrlsb	r2, [r5, #452]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure
	strlsb	r2, [r5, #453]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Last_Struct
	cmp	r3, #5	@ D.42385,
	beq	.L1206	@,
	mov	r3, #0	@ tmp210,
	strb	r3, [r4, #9]	@ tmp210, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].IsSkpicCopy
	ldrb	r3, [r5, #452]	@ zero_extendqisi2	@ D.42389, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure
	ldrb	r2, [r5, #456]	@ zero_extendqisi2	@ D.42388, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Is2ndFld
.L1193:
	strb	r3, [r4, #8]	@ D.42389, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].picstructure
	strb	r3, [r5, #451]	@ D.42389, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Last_Struct_IPB
	strb	r2, [r5, #457]	@ D.42388, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].LastIs2ndFld
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ D.42385, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].ptype
	cmp	r3, #2	@ D.42385,
	beq	.L1207	@,
	and	r2, r3, #251	@ tmp249, D.42385,
	cmp	r2, #1	@ tmp249,
	addeq	r1, r4, #110592	@ tmp253, pVC1_CTX_S,
	streq	r2, [r1, #2664]	@ tmp249, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound
.L1195:
	ldr	r2, [r4]	@ D.42382, pVC1_CTX_S_7(D)->pstExtraData
	str	r8, [r4, #4]	@ pVc1DecParam, pVC1_CTX_S_7(D)->pVc1DecParam
	ldr	r0, [r2, #708]	@ D.42381, _51->stDisParams.s32Mode
	cmp	r0, #1	@ D.42381,
	beq	.L1208	@,
	cmp	r0, #2	@ D.42381,
	beq	.L1209	@,
.L1200:
	mov	r0, #1	@ D.42381,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1209:
	ldr	r2, [r2, #712]	@ _51->stDisParams.s32DisNums, _51->stDisParams.s32DisNums
	cmp	r8, #0	@ pVc1DecParam,
	cmpne	r2, #0	@, _51->stDisParams.s32DisNums,
	ble	.L1200	@,
	sub	r3, r3, #2	@ tmp278, D.42385,
	ands	r5, r3, #253	@ tmp282, tmp278,
	bne	.L1200	@,
	ldr	r3, [r7, #2512]	@ D.42387, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].pCurFrm
	add	r1, r4, #110592	@ tmp292, pVC1_CTX_S,
	mov	r0, r6	@, tmp297
	strb	r5, [r3, #1]	@ tmp282, _65->is_to_display
	ldr	r2, [r4]	@ D.42382, pVC1_CTX_S_7(D)->pstExtraData
	ldr	r3, [r2, #712]	@ _67->stDisParams.s32DisNums, _67->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.42383, _67->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.42383, _67->stDisParams.s32DisNums
	ldr	r1, [r1, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp282, pVC1_CTX_S_7(D)->pVc1DecParam
	mov	r0, r5	@ D.42381, tmp282
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1207:
	add	r9, r4, #110592	@ tmp226, pVC1_CTX_S,
	ldr	r5, [r9, #2664]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound
	cmp	r5, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound,
	bne	.L1195	@,
	mov	r0, r6	@, tmp297
	ldr	r1, [r9, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
	ldr	r3, [r7, #2512]	@ D.42387, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].pCurFrm
	mov	r0, r5	@ D.42381, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound
	strb	r5, [r3]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound, _40->is_to_ref
	ldr	r3, [r9, #2668]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount
	add	r3, r3, #1	@ D.42386, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount,
	str	r3, [r9, #2668]	@ D.42386, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount
	str	r5, [r4, #4]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound, pVC1_CTX_S_7(D)->pVc1DecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1206:
	mov	r2, #1	@ tmp191,
	strb	r2, [r4, #9]	@ tmp191, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].IsSkpicCopy
	ldrb	r3, [r5, #453]	@ zero_extendqisi2	@ D.42389, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Last_Struct
	add	r1, r4, #110592	@ tmp207, pVC1_CTX_S,
	strb	r2, [r5, #456]	@ tmp191, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Is2ndFld
	strb	r3, [r5, #452]	@ D.42389, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure
	ldr	r1, [r1, #2688]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].CurPicMbNum, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].CurPicMbNum
	sub	r1, r1, #1	@ D.42383, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].CurPicMbNum,
	str	r1, [r5, #172]	@ D.42383, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].basic_cfg0
	b	.L1193	@
.L1208:
	cmp	r8, #0	@ pVc1DecParam,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	sub	r3, r3, #2	@ tmp255, D.42385,
	ands	r5, r3, #253	@ tmp259, tmp255,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r2, [r7, #2512]	@ D.42387, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].pCurFrm
	add	r3, r4, #110592	@ tmp267, pVC1_CTX_S,
	mov	r0, r6	@, tmp297
	strb	r5, [r2, #1]	@ tmp259, _56->is_to_display
	ldr	r1, [r3, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp259, pVC1_CTX_S_7(D)->pVc1DecParam
	mov	r0, r5	@ D.42381, tmp259
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1205:
	mov	r0, r6	@, tmp297
	bl	VC1_Vfmw_UpdataLastPicRNDCTRL.part.4	@
	b	.L1190	@
	.fnend
	.size	VC1_Vfmw_StartDecode, .-VC1_Vfmw_StartDecode
	.align	2
	.global	VC1_Vfmw_ParseAdvHdr
	.type	VC1_Vfmw_ParseAdvHdr, %function
VC1_Vfmw_ParseAdvHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r7, [r0, #3128]	@ pBs, pCodecInf_13(D)->pBs
	add	r6, r0, #32768	@ tmp775, pCodecInf,
	mov	r4, r0	@ pCodecInf, pCodecInf
	str	r1, [sp]	@ pSyntax, %sfp
	mov	fp, #0	@ tmp249,
	mov	r1, #32	@,
	strb	fp, [r0, #6]	@ tmp249, pCodecInf_13(D)->IsWaitToDec
	mov	r0, r7	@, pBs
	mov	r10, r2	@ ChanID, ChanID
	bl	BsGet	@
	ldr	r1, [r7, #24]	@ pBs_14->TotalPos, pBs_14->TotalPos
	add	r9, r4, #34816	@ pVc1Packet, pCodecInf,
	ldr	r5, [r6, #2172]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr
	add	r9, r9, #124	@ pVc1Packet, pVc1Packet,
	cmp	r1, fp	@ pBs_14->TotalPos,
	add	ip, r1, #7	@ tmp253, pBs_14->TotalPos,
	ldr	r2, [r6, #2192]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	movlt	r1, ip	@ pBs_14->TotalPos, tmp253
	mov	r1, r1, asr #3	@ tmp254, pBs_14->TotalPos,
	add	r5, r5, r1	@ pTmp, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr, tmp254
	rsb	r2, r1, r2	@, tmp254, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	mov	r1, r5	@, pTmp
	uxtb	r8, r0	@ Code,
	mov	r0, r7	@, pBs
	bl	BsInit	@
	sub	r2, r8, #10	@ D.42404, Code,
	cmp	r2, #5	@ D.42404,
	bhi	.L1211	@,
	cmp	r8, #11	@ Code,
	beq	.L1276	@,
	ldrb	r1, [r4]	@ zero_extendqisi2	@ D.42400, pCodecInf_13(D)->CodecStatus
	and	r0, r1, #7	@ tmp492, D.42400,
	cmp	r0, #7	@ tmp492,
	beq	.L1277	@,
	add	r8, r4, #20480	@ tmp774, pCodecInf,
	strb	fp, [r4, #8]	@ tmp249, pCodecInf_13(D)->Is2ndFld
	str	fp, [r8, #2164]	@ tmp249, pCodecInf_13(D)->SlcNum
	cmp	r2, #5	@ D.42404,
	ldrls	pc, [pc, r2, asl #2]	@ D.42404
	b	.L1244	@
.L1228:
	.word	.L1227
	.word	.L1244
	.word	.L1229
	.word	.L1261
	.word	.L1231
	.word	.L1232
.L1211:
	sub	r2, r8, #27	@ D.42404, Code,
	cmp	r2, #4	@ D.42404,
	bls	.L1245	@,
	cmp	r8, #254	@ Code,
	beq	.L1278	@,
.L1244:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r0, #0	@ D.42399,
.L1216:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1278:
	mov	r1, #32	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.42401,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	movw	r2, #20036	@ tmp758,
	movw	r3, #20553	@ tmp761,
	movt	r2, 17221	@ tmp758,
	movt	r3, 18515	@ tmp761,
	cmp	r0, r2	@, tmp758
	cmpeq	r5, r3	@, D.42401, tmp761
	bne	.L1244	@,
	ldrb	r3, [r4]	@ zero_extendqisi2	@ D.42400, pCodecInf_13(D)->CodecStatus
	mov	r2, #1	@ tmp765,
	strb	r2, [r4, #7]	@ tmp765, pCodecInf_13(D)->IsStreamEndFlag
	and	r2, r3, #7	@ tmp768, D.42400,
	cmp	r2, #7	@ tmp768,
	orreq	r3, r3, #16	@ tmp769, D.42400,
	streqb	r3, [r4]	@ tmp769, pCodecInf_13(D)->CodecStatus
.L1245:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r0, #1	@ D.42399,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1276:
	ldrb	r2, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	and	r2, r2, #7	@ tmp266, pCodecInf_13(D)->CodecStatus,
	cmp	r2, #7	@ tmp266,
	beq	.L1279	@,
.L1242:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r0, fp	@ D.42399, Ret
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1277:
	mov	fp, #1	@ tmp495,
	orr	r1, r1, #16	@ tmp493, D.42400,
	strb	fp, [r4, #6]	@ tmp495, pCodecInf_13(D)->IsWaitToDec
	mov	r0, fp	@ D.42399, tmp495
	strb	r1, [r4]	@ tmp493, pCodecInf_13(D)->CodecStatus
	b	.L1216	@
.L1229:
	ldr	r3, [sp]	@ pSyntax, %sfp
	mov	r2, #1	@ tmp505,
	mov	r1, #16	@,
	strb	r2, [r4, #8]	@ tmp505, pCodecInf_13(D)->Is2ndFld
	add	r0, r3, #508	@, pSyntax,
	bl	__memzero	@
	ldrb	r2, [r4, #8]	@ zero_extendqisi2	@ D.42407, pCodecInf_13(D)->Is2ndFld
	cmp	r2, #0	@ D.42407,
	beq	.L1261	@,
.L1233:
	add	r0, r4, #22528	@, pCodecInf,
	mov	r1, #12288	@,
	add	r0, r0, #120	@,,
	bl	__memzero	@
	mov	r0, r7	@, pBs
	bl	BsPos	@
	mov	r1, r4	@, pCodecInf
	ldr	r3, [sp]	@ pSyntax, %sfp
	str	r0, [r3, #488]	@, pSyntax_32(D)->AdvPicSyntax.HdrLen
	mov	r2, r3	@, pSyntax
	mov	r0, r7	@, pBs
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	cmp	r0, #1	@ Ret,
	mov	fp, r0	@ Ret,
	beq	.L1280	@,
.L1234:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, fp	@ D.42399, Ret
	b	.L1216	@
.L1231:
	mov	r0, r7	@, pBs
	ldr	r2, [sp]	@, %sfp
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvEntptHdr	@
	cmp	r0, #1	@ Ret,
	mov	fp, r0	@ Ret,
	bne	.L1242	@,
	ldr	r1, [sp]	@, %sfp
	mov	r0, r4	@, pCodecInf
	bl	VC1_Vfmw_UpdateAdvSPS	@
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	orr	r3, r3, #2	@ tmp749, pCodecInf_13(D)->CodecStatus,
	strb	r3, [r4]	@ tmp749, pCodecInf_13(D)->CodecStatus
	b	.L1242	@
.L1232:
	ldr	r2, [sp]	@, %sfp
	mov	r0, r7	@, pBs
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSeqHdr	@
	cmp	r0, #1	@ Ret,
	mov	fp, r0	@ Ret,
	ldreqb	r3, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	orreq	r3, r3, #1	@ tmp753, pCodecInf_13(D)->CodecStatus,
	streqb	r3, [r4]	@ tmp753, pCodecInf_13(D)->CodecStatus
	b	.L1242	@
.L1227:
	orr	r3, r1, #32	@ tmp503, D.42400,
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	strb	r3, [r4]	@ tmp503, pCodecInf_13(D)->CodecStatus
	bl	VC1_ClearCurPacket	@
	mov	r0, #1	@ D.42399,
	b	.L1216	@
.L1261:
	ldr	r3, [sp]	@ pSyntax, %sfp
	mov	r1, #176	@,
	add	r0, r3, #348	@, pSyntax,
	ldrb	fp, [r3, #379]	@ zero_extendqisi2	@ D.42400, pSyntax_32(D)->AdvPicSyntax.REFDIST
	bl	__memzero	@
	ldr	r3, [sp]	@ pSyntax, %sfp
	strb	fp, [r3, #379]	@ D.42400, pSyntax_32(D)->AdvPicSyntax.REFDIST
	b	.L1233	@
.L1279:
	mov	r0, r7	@, pBs
	ldr	r2, [sp]	@, %sfp
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSlcHdr	@
	cmp	r0, #1	@ Ret,
	mov	r8, r0	@ Ret,
	bne	.L1214	@,
	add	r8, r4, #20480	@ tmp774, pCodecInf,
	ldr	r3, [r8, #2164]	@ D.42401, pCodecInf_13(D)->SlcNum
	cmp	r3, #255	@ D.42401,
	bgt	.L1281	@,
	mov	r7, r3, asl #4	@ tmp776, D.42401,
	mov	r10, r3, asl #6	@ tmp777, D.42401,
	ldr	r1, [r4, #3128]	@ pBs, pCodecInf_13(D)->pBs
	rsb	r9, r7, r10	@ tmp272, tmp776, tmp777
	add	r9, r4, r9	@ tmp273, pCodecInf, tmp272
	movw	r0, #22656	@ tmp274,
	movw	r2, #22648	@ tmp282,
	movw	lr, #22664	@ tmp295,
	strb	r3, [r9, r0]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].SlcNo
	ldr	ip, [r1, #24]	@ pBs_116->TotalPos, pBs_116->TotalPos
	str	r3, [sp, #4]	@ D.42401, %sfp
	cmp	ip, #0	@ pBs_116->TotalPos,
	add	r0, ip, #7	@ tmp287, pBs_116->TotalPos,
	movlt	ip, r0	@ pBs_116->TotalPos, tmp287
	add	r0, r9, #22528	@ tmp296, tmp273,
	add	ip, r5, ip, asr #3	@ D.42402, pTmp, pBs_116->TotalPos,
	str	ip, [r9, r2]	@ D.42402, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].pStream
	ldr	ip, [r1, #24]	@ pBs_116->TotalPos, pBs_116->TotalPos
	mov	r5, r0	@ tmp275, tmp296
	and	ip, ip, #7	@ D.42401, pBs_116->TotalPos,
	str	ip, [r9, lr]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].BitOffset
	ldr	ip, [r1, #16]	@ pBs_116->BsLen, pBs_116->BsLen
	ldr	lr, [r1, #24]	@ pBs_116->TotalPos, pBs_116->TotalPos
	add	r1, r0, #120	@ tmp283, tmp283,
	str	r1, [sp, #8]	@ tmp283, %sfp
	rsb	ip, lr, ip, lsl #3	@ D.42401, pBs_116->TotalPos, pBs_116->BsLen,
	str	ip, [r0, #140]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].Len
	ldr	r0, [r9, r2]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].pStream
	str	r1, [sp, #12]	@ tmp283, %sfp
	bl	MEM_Vir2Phy	@
	movw	lr, #22688	@ tmp330,
	add	ip, r5, #160	@ tmp331, tmp331,
	str	r0, [r5, #132]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].Phy_addr
	ldr	r0, [r6, #2200]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	ldr	r3, [sp, #4]	@ D.42401, %sfp
	str	r0, [r9, lr]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].StreamID
	ldr	r0, [r6, #2176]	@ D.42402, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr
	cmp	r0, #0	@ D.42402,
	beq	.L1217	@,
	ldr	lr, [r6, #2188]	@ D.42406, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsPhyAddr
	ldr	r1, [sp, #8]	@ tmp283, %sfp
	cmp	lr, #0	@ D.42406,
	beq	.L1217	@,
	movw	r5, #22680	@ tmp351,
	str	r0, [r1, #4]	@ D.42402, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].pStream2
	str	fp, [r9, r5]	@ tmp249, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].BitOffset2
	add	r1, r9, #22528	@ tmp352, tmp273,
	ldr	r0, [r6, #2196]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	str	lr, [r1, #148]	@ D.42406, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].Phy_addr2
	mov	r0, r0, asl #3	@ D.42401, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength,
	str	r0, [r1, #156]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].Len2
	ldr	r1, [r6, #2204]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	str	r1, [ip, #4]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].StreamID2
.L1218:
	ldr	r1, [r8, #2084]	@ D.42401, pCodecInf_13(D)->MbHeight
	sub	r3, r7, r3, asl #2	@ tmp432, tmp776, D.42401,
	ldr	r0, [r8, #2080]	@ pCodecInf_13(D)->MbWidth, pCodecInf_13(D)->MbWidth
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ pCodecInf_13(D)->Is2ndFld, pCodecInf_13(D)->Is2ndFld
	mul	r0, r0, r1	@ D.42401, pCodecInf_13(D)->MbWidth, D.42401
	cmp	ip, #0	@ pCodecInf_13(D)->Is2ndFld,
	sub	r0, r0, #1	@ totalMbMin1, D.42401,
	beq	.L1219	@,
	ldr	r2, [sp]	@ pSyntax, %sfp
	add	r1, r1, #1	@ D.42401, D.42401,
	movw	lr, #22672	@ tmp446,
	add	r2, r2, r3	@ tmp433, pSyntax, tmp432
	add	r1, r1, r1, lsr #31	@ tmp438, D.42401, D.42401,
	rsb	r3, r7, r10	@ tmp444, tmp776, tmp777
	ldr	ip, [r2, #528]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_115].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_115].SLICE_ADDR
	add	r3, r4, r3	@ tmp445, pCodecInf, tmp444
	sub	r1, ip, r1, asr #1	@ D.42401, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_115].SLICE_ADDR, tmp438,
	str	r1, [r3, lr]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].SlcEndMbn
	cmp	r1, #0	@ D.42401,
	ble	.L1220	@,
	cmp	r0, r1	@ totalMbMin1, D.42401
	bcc	.L1221	@,
.L1220:
	rsb	r2, r7, r10	@ tmp464, tmp776, tmp777
.L1275:
	add	r4, r4, r2	@ tmp721, pCodecInf, tmp720
	add	r3, r4, #22528	@ tmp723, tmp721,
	add	r3, r3, #136	@ tmp723, tmp723,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Len,
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Len,
	ble	.L1221	@,
	add	r3, r4, #22528	@ tmp731, tmp721,
	add	r3, r3, #120	@ tmp731, tmp731,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].pStream2,
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].pStream2,
	beq	.L1240	@,
	add	r4, r4, #22528	@ tmp739, tmp721,
	ldr	r3, [r4, #156]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Len2,
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Len2,
	ble	.L1221	@,
.L1240:
	ldr	r3, [r8, #2164]	@ pCodecInf_13(D)->SlcNum, pCodecInf_13(D)->SlcNum
	mov	r0, #1	@ D.42399,
	add	r3, r3, r0	@ D.42401, pCodecInf_13(D)->SlcNum,
	str	r3, [r8, #2164]	@ D.42401, pCodecInf_13(D)->SlcNum
	b	.L1216	@
.L1280:
	mov	r0, r7	@, pBs
	bl	BsPos	@
	ldr	r3, [sp]	@ pSyntax, %sfp
	ldr	r1, [r3, #488]	@ pSyntax_32(D)->AdvPicSyntax.HdrLen, pSyntax_32(D)->AdvPicSyntax.HdrLen
	rsb	r0, r1, r0	@ D.42401, pSyntax_32(D)->AdvPicSyntax.HdrLen,
	str	r0, [r3, #488]	@ D.42401, pSyntax_32(D)->AdvPicSyntax.HdrLen
	ldrb	r1, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	mov	r0, r7	@, pBs
	orr	r3, r1, #4	@ tmp516, pCodecInf_13(D)->CodecStatus,
	strb	r3, [r4]	@ tmp516, pCodecInf_13(D)->CodecStatus
	bl	BsPos	@
	ldr	r3, [r6, #2192]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	add	r0, r0, #32	@ D.42401,,
	cmp	r0, r3, asl #3	@ D.42401, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength,
	bge	.L1234	@,
	ldr	r7, [r8, #2164]	@ D.42403, pCodecInf_13(D)->SlcNum
	movw	r0, #22656	@ tmp530,
	ldr	r1, [r4, #3128]	@ pBs, pCodecInf_13(D)->pBs
	movw	r2, #22648	@ tmp793,
	movw	r3, #22664	@ tmp551,
	mov	fp, r7, asl #4	@ tmp772, D.42403,
	mov	r10, r7, asl #6	@ tmp773, D.42403,
	rsb	r9, fp, r10	@ tmp528, tmp772, tmp773
	add	r9, r4, r9	@ tmp529, pCodecInf, tmp528
	strb	r7, [r9, r0]	@ D.42403, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].SlcNo
	add	r0, r9, #22528	@ tmp552, tmp529,
	ldr	lr, [r1, #24]	@ pBs_157->TotalPos, pBs_157->TotalPos
	cmp	lr, #0	@ pBs_157->TotalPos,
	add	ip, lr, #7	@ tmp543, pBs_157->TotalPos,
	movlt	lr, ip	@ pBs_157->TotalPos, tmp543
	add	ip, r0, #128	@ tmp531, tmp531,
	add	lr, r5, lr, asr #3	@ D.42402, pTmp, pBs_157->TotalPos,
	str	lr, [r9, r2]	@ D.42402, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].pStream
	ldr	lr, [r1, #24]	@ pBs_157->TotalPos, pBs_157->TotalPos
	add	r5, r0, #120	@ tmp539, tmp539,
	str	ip, [sp, #4]	@ tmp531, %sfp
	and	lr, lr, #7	@ D.42401, pBs_157->TotalPos,
	str	lr, [r9, r3]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].BitOffset
	ldr	lr, [r1, #16]	@ pBs_157->BsLen, pBs_157->BsLen
	ldr	r1, [r1, #24]	@ pBs_157->TotalPos, pBs_157->TotalPos
	str	ip, [sp, #8]	@ tmp531, %sfp
	rsb	r1, r1, lr, lsl #3	@ D.42401, pBs_157->TotalPos, pBs_157->BsLen,
	str	r1, [r0, #140]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Len
	ldr	r0, [r9, r2]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].pStream
	bl	MEM_Vir2Phy	@
	movw	lr, #22688	@ tmp586,
	add	r1, r9, #22528	@ tmp587, tmp529,
	add	r1, r1, #160	@ tmp587, tmp587,
	ldr	ip, [sp, #4]	@ tmp531, %sfp
	str	r0, [ip, #4]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Phy_addr
	ldr	r0, [r6, #2200]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	str	r0, [r9, lr]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].StreamID
	ldr	r0, [r6, #2176]	@ D.42402, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr
	cmp	r0, #0	@ D.42402,
	beq	.L1236	@,
	ldr	ip, [r6, #2188]	@ D.42406, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsPhyAddr
	cmp	ip, #0	@ D.42406,
	beq	.L1236	@,
	movw	lr, #22680	@ tmp607,
	str	r0, [r5, #4]	@ D.42402, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].pStream2
	mov	r5, #0	@ tmp609,
	str	r5, [r9, lr]	@ tmp609, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].BitOffset2
	ldr	lr, [r6, #2196]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	add	r0, r9, #22528	@ tmp608, tmp529,
	str	ip, [r0, #148]	@ D.42406, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Phy_addr2
	mov	lr, lr, asl #3	@ D.42401, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength,
	str	lr, [r0, #156]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Len2
	ldr	r0, [r6, #2204]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	str	r0, [r1, #4]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].StreamID2
.L1237:
	ldr	r1, [r8, #2084]	@ D.42401, pCodecInf_13(D)->MbHeight
	sub	r3, fp, r7, asl #2	@ tmp688, tmp772, D.42403,
	ldr	r0, [r8, #2080]	@ pCodecInf_13(D)->MbWidth, pCodecInf_13(D)->MbWidth
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ pCodecInf_13(D)->Is2ndFld, pCodecInf_13(D)->Is2ndFld
	mul	r0, r0, r1	@ D.42401, pCodecInf_13(D)->MbWidth, D.42401
	cmp	ip, #0	@ pCodecInf_13(D)->Is2ndFld,
	sub	r0, r0, #1	@ totalMbMin1, D.42401,
	beq	.L1238	@,
	ldr	r2, [sp]	@ pSyntax, %sfp
	add	r1, r1, #1	@ D.42401, D.42401,
	movw	lr, #22672	@ tmp702,
	add	r7, r2, r3	@ tmp689, pSyntax, tmp688
	add	r1, r1, r1, lsr #31	@ tmp694, D.42401, D.42401,
	rsb	r3, fp, r10	@ tmp700, tmp772, tmp773
	ldr	ip, [r7, #528]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_156].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_156].SLICE_ADDR
	add	r3, r4, r3	@ tmp701, pCodecInf, tmp700
	sub	r1, ip, r1, asr #1	@ D.42401, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_156].SLICE_ADDR, tmp694,
	str	r1, [r3, lr]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].SlcEndMbn
	cmp	r1, #0	@ D.42401,
	ble	.L1239	@,
	cmp	r0, r1	@ totalMbMin1, D.42401
	bcc	.L1221	@,
.L1239:
	rsb	r2, fp, r10	@ tmp720, tmp772, tmp773
	b	.L1275	@
.L1214:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.42399, Ret
	b	.L1216	@
.L1219:
	ldr	r2, [sp]	@ pSyntax, %sfp
	rsb	r1, r7, r10	@ tmp457, tmp776, tmp777
	movw	ip, #22672	@ tmp459,
	add	r2, r2, r3	@ tmp452, pSyntax, tmp451
	add	r3, r4, r1	@ tmp458, pCodecInf, tmp457
	ldr	r1, [r2, #528]	@ D.42401, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_115].SLICE_ADDR
	cmp	r0, r1	@ totalMbMin1, D.42401
	str	r1, [r3, ip]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].SlcEndMbn
	bcs	.L1220	@,
.L1221:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42399,
	b	.L1216	@
.L1236:
	rsb	r1, fp, r10	@ tmp641, tmp772, tmp773
	movw	r6, #22680	@ tmp651,
	add	r1, r4, r1	@ tmp642, pCodecInf, tmp641
	mov	r0, #0	@ tmp645,
	add	r9, r1, #22528	@ tmp644, tmp642,
	add	lr, r9, #144	@ tmp668, tmp668,
	str	r0, [r9, #124]	@ tmp645, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].pStream2
	str	r0, [r1, r6]	@ tmp645, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].BitOffset2
	str	r0, [r9, #156]	@ tmp645, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Len2
	str	r0, [r9, #148]	@ tmp645, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].Phy_addr2
	str	r0, [r9, #164]	@ tmp645, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].StreamID2
	b	.L1237	@
.L1281:
	mov	r0, r4	@, pCodecInf
	mov	r1, r10	@, ChanID
	bl	VC1_ClearCurPic	@
	bl	vfmw_dprint_nothing	@
	mov	r0, fp	@ D.42399, tmp249
	b	.L1216	@
.L1238:
	ldr	r2, [sp]	@ pSyntax, %sfp
	rsb	r1, fp, r10	@ tmp713, tmp772, tmp773
	movw	ip, #22672	@ tmp715,
	add	r7, r2, r3	@ tmp708, pSyntax, tmp707
	add	r3, r4, r1	@ tmp714, pCodecInf, tmp713
	ldr	r1, [r7, #528]	@ D.42401, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_156].SLICE_ADDR
	cmp	r0, r1	@ totalMbMin1, D.42401
	str	r1, [r3, ip]	@ D.42401, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_156].SlcEndMbn
	bcs	.L1239	@,
	b	.L1221	@
.L1217:
	rsb	r1, r7, r10	@ tmp385, tmp776, tmp777
	movw	r6, #22680	@ tmp395,
	add	r1, r4, r1	@ tmp386, pCodecInf, tmp385
	mov	r0, #0	@ tmp389,
	add	r9, r1, #22528	@ tmp388, tmp386,
	add	lr, r9, #144	@ tmp412, tmp412,
	str	r0, [r9, #124]	@ tmp389, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].pStream2
	str	r0, [r1, r6]	@ tmp389, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].BitOffset2
	str	r0, [r9, #156]	@ tmp389, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].Len2
	str	r0, [r9, #148]	@ tmp389, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].Phy_addr2
	str	r0, [r9, #164]	@ tmp389, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_115].StreamID2
	b	.L1218	@
	.fnend
	.size	VC1_Vfmw_ParseAdvHdr, .-VC1_Vfmw_ParseAdvHdr
	.align	2
	.global	VC1_Vfmw_ParseHeader
	.type	VC1_Vfmw_ParseHeader, %function
VC1_Vfmw_ParseHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pCodecInf, pCodecInf
	ldrb	ip, [r0, #3096]	@ zero_extendqisi2	@ pCodecInf_4(D)->PreParseInfo.IsAdvProfile, pCodecInf_4(D)->PreParseInfo.IsAdvProfile
	cmp	ip, #0	@ pCodecInf_4(D)->PreParseInfo.IsAdvProfile,
	bne	.L1283	@,
	ldrb	r3, [r0]	@ zero_extendqisi2	@ pCodecInf_4(D)->CodecStatus, pCodecInf_4(D)->CodecStatus
	mov	r2, r1	@ pSyntax, pSyntax
	mov	r1, r0	@, pCodecInf
	ldr	r0, [r0, #3128]	@, pCodecInf_4(D)->pBs
	orr	r3, r3, #3	@ tmp126, pCodecInf_4(D)->CodecStatus,
	strb	r3, [r4]	@ tmp126, pCodecInf_4(D)->CodecStatus
	bl	VC1_Vfmw_ParseSMPPicHdr	@
	cmp	r0, #1	@ Ret,
	ldmnefd	sp!, {r4, pc}	@
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pCodecInf_4(D)->CodecStatus, pCodecInf_4(D)->CodecStatus
	orr	r3, r3, #20	@ tmp131, pCodecInf_4(D)->CodecStatus,
	strb	r3, [r4]	@ tmp131, pCodecInf_4(D)->CodecStatus
	ldmfd	sp!, {r4, pc}	@
.L1283:
	ldmfd	sp!, {r4, lr}	@
	b	VC1_Vfmw_ParseAdvHdr	@
	.fnend
	.size	VC1_Vfmw_ParseHeader, .-VC1_Vfmw_ParseHeader
	.align	2
	.global	VC1_SetCodeInfo
	.type	VC1_SetCodeInfo, %function
VC1_SetCodeInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #77824	@ tmp196, pCtx,
	add	r3, r0, #80896	@ D.42423, pCtx,
	ldrb	r2, [r4, #3546]	@ zero_extendqisi2	@ D.42424, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.CodecVersion
	add	r3, r3, #508	@ D.42423, D.42423,
	str	r3, [r4, #3576]	@ D.42423, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].pBs
	cmp	r2, #8	@ D.42424,
	strneb	r2, [r4, #459]	@ D.42424, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].CodecVersion
	moveq	r2, #6	@ tmp140,
	movne	r2, #0	@ tmp144,
	streqb	r2, [r4, #459]	@ tmp140, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].CodecVersion
	moveq	ip, #1	@ tmp136,
	strneb	r2, [r4, #460]	@ tmp144, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PostCresent
	ldrb	r2, [r4, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.IsAdvProfile
	streqb	ip, [r4, #460]	@ tmp136, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PostCresent
	cmp	r2, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L1293	@,
	ldr	r2, [r1, #20]	@, pVc1Packet_13(D)->BsLength
	mov	r0, r3	@, D.42423
	ldr	r1, [r1]	@, pVc1Packet_13(D)->BsVirAddr
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	BsInit	@
.L1293:
	mov	r5, r0	@ pCtx, pCtx
	ldr	r2, [r1, #20]	@, pVc1Packet_13(D)->BsLength
	mov	r0, r3	@, D.42423
	ldr	r1, [r1]	@, pVc1Packet_13(D)->BsVirAddr
	bl	BsInit	@
	ldr	r6, [r4, #3568]	@ D.42427, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.FrmWidth
	add	r3, r5, #98304	@ tmp161, pCtx,
	add	r1, r4, #3536	@, tmp196,
	adds	ip, r6, #15	@ D.42427, D.42427,
	add	r0, r4, #3600	@, tmp196,
	addmi	ip, r6, #30	@, D.42427, D.42427,
	add	r1, r1, #11	@,,
	mov	r2, #16	@,
	add	r0, r0, #8	@,,
	mov	ip, ip, asr #4	@ D.42427, D.42427,
	str	ip, [r3, #2528]	@ D.42427, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].MbWidth
	ldr	lr, [r4, #3572]	@ D.42427, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.FrmHeight
	str	r6, [r3, #2544]	@ D.42427, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].DispPicWidth
	adds	ip, lr, #15	@ D.42427, D.42427,
	addmi	ip, lr, #30	@, D.42427, D.42427,
	str	lr, [r3, #2548]	@ D.42427, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].DispPicHeight
	mov	ip, ip, asr #4	@ D.42427, D.42427,
	str	ip, [r3, #2532]	@ D.42427, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].MbHeight
	bl	memcpy	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VC1_SetCodeInfo, .-VC1_SetCodeInfo
	.align	2
	.global	VC1_ReceivePacket
	.type	VC1_ReceivePacket, %function
VC1_ReceivePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pPacket, pPacket
	add	r1, r0, #112640	@ pstPacket, pCtx,
	add	r1, r1, #572	@ pstPacket, pstPacket,
	beq	.L1303	@,
	ldr	r2, [r4, #8]	@ pPacket_6(D)->StreamPack[0].PhyAddr, pPacket_6(D)->StreamPack[0].PhyAddr
	add	r3, r0, #110592	@ tmp136, pCtx,
	str	r2, [r3, #2632]	@ pPacket_6(D)->StreamPack[0].PhyAddr, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsPhyAddr
	ldr	r2, [r4]	@ D.42437, pPacket_6(D)->StreamPack[0].VirAddr
	str	r2, [r3, #2620]	@ D.42437, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsVirAddr
	ldr	r2, [r4, #12]	@ pPacket_6(D)->StreamPack[0].LenInByte, pPacket_6(D)->StreamPack[0].LenInByte
	str	r2, [r3, #2640]	@ pPacket_6(D)->StreamPack[0].LenInByte, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsLength
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[0].IsLastSeg, pPacket_6(D)->StreamPack[0].IsLastSeg
	strb	r2, [r3, #2628]	@ pPacket_6(D)->StreamPack[0].IsLastSeg, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].IsLastSeg
	ldr	r2, [r4, #16]	@ D.42435, pPacket_6(D)->StreamPack[0].StreamID
	str	r2, [r3, #2648]	@ D.42435, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].StreamID
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[0].IsLastSeg, pPacket_6(D)->StreamPack[0].IsLastSeg
	cmp	r2, #1	@ pPacket_6(D)->StreamPack[0].IsLastSeg,
	beq	.L1297	@,
	ldr	r2, [r4, #88]	@ pPacket_6(D)->StreamPack[1].PhyAddr, pPacket_6(D)->StreamPack[1].PhyAddr
	str	r2, [r3, #2636]	@ pPacket_6(D)->StreamPack[1].PhyAddr, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsPhyAddr
	ldr	r2, [r4, #80]	@ D.42437, pPacket_6(D)->StreamPack[1].VirAddr
	str	r2, [r3, #2624]	@ D.42437, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsVirAddr
	ldr	r2, [r4, #92]	@ pPacket_6(D)->StreamPack[1].LenInByte, pPacket_6(D)->StreamPack[1].LenInByte
	str	r2, [r3, #2644]	@ pPacket_6(D)->StreamPack[1].LenInByte, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsLength
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[1].IsLastSeg, pPacket_6(D)->StreamPack[1].IsLastSeg
	strb	r2, [r3, #2629]	@ pPacket_6(D)->StreamPack[1].IsLastSeg, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].IsLastSeg
	ldr	r2, [r4, #96]	@ D.42435, pPacket_6(D)->StreamPack[1].StreamID
	str	r2, [r3, #2652]	@ D.42435, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].StreamID
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[1].IsLastSeg, pPacket_6(D)->StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pPacket_6(D)->StreamPack[1].IsLastSeg,
	bne	.L1304	@,
.L1298:
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.42434,
	ldmfd	sp!, {r4, pc}	@
.L1304:
	ldr	r0, [r3, #3128]	@, pCtx_4(D)->ChanID
	bl	VC1_ClearCurPacket	@
.L1303:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42434,
	ldmfd	sp!, {r4, pc}	@
.L1297:
	mov	r2, #0	@ tmp170,
	str	r2, [r3, #2636]	@ tmp170, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsPhyAddr
	str	r2, [r3, #2624]	@ tmp170, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsVirAddr
	str	r2, [r3, #2644]	@ tmp170, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsLength
	strb	r2, [r3, #2629]	@ tmp170, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].IsLastSeg
	str	r2, [r3, #2652]	@ tmp170, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].StreamID
	b	.L1298	@
	.fnend
	.size	VC1_ReceivePacket, .-VC1_ReceivePacket
	.align	2
	.global	VC1DEC_Decode
	.type	VC1DEC_Decode, %function
VC1DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #77824	@ tmp204, pVC1_CTX_S,
	add	r3, r5, #288	@ D.42443, tmp204,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r2, #160	@,
	mov	r0, r3	@, D.42443
	bl	memcpy	@
	mov	r1, r0	@, D.42443
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_ReceivePacket	@
	subs	r7, r0, #0	@ D.42442,
	beq	.L1331	@,
	ldr	r3, [r4]	@ D.42444, pVC1_CTX_S_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _15->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _15->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _15->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1332	@,
.L1308:
	ldrb	r3, [r5, #448]	@ zero_extendqisi2	@ pVC1_CTX_S_7(D)->CodecInfo.CodecStatus, pVC1_CTX_S_7(D)->CodecInfo.CodecStatus
	add	r6, r4, #110592	@ tmp203, pVC1_CTX_S,
	strb	r3, [r6, #2736]	@ pVC1_CTX_S_7(D)->CodecInfo.CodecStatus, pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus
.L1309:
	add	r5, r5, #448	@ D.42447, tmp204,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #536	@,,
	ldr	r2, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r0, r5	@, D.42447
	bl	VC1_Vfmw_ParseHeader	@
	subs	r8, r0, #0	@ Ret,
	beq	.L1333	@,
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_DecodeArbiter	@
	cmp	r0, #0	@,
	bne	.L1334	@,
.L1312:
	mov	r7, #0	@ D.42442,
.L1329:
	mov	r0, r7	@, D.42442
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1333:
	add	r1, r4, #112640	@, pVC1_CTX_S,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	add	r1, r1, #572	@,,
	bl	VC1_ClearCurPacket	@
	ldr	r3, .L1336	@ tmp171,
	ldr	r3, [r3]	@ D.42450, g_event_report
	cmp	r3, #0	@ D.42450,
	beq	.L1312	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r2, r8	@, Ret
	mov	r1, #113	@,
	mov	r7, r8	@ D.42442, tmp2
	blx	r3	@ D.42450
	mov	r0, r7	@, D.42442
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1332:
	ldr	r3, [r3, #728]	@ _15->s32DSDWaitFlag, _15->s32DSDWaitFlag
	cmp	r3, #1	@ _15->s32DSDWaitFlag,
	bne	.L1308	@,
	add	r6, r4, #110592	@ tmp203, pVC1_CTX_S,
	ldrb	r3, [r6, #2736]	@ zero_extendqisi2	@ pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus, pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus
	strb	r3, [r5, #448]	@ pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus, pVC1_CTX_S_7(D)->CodecInfo.CodecStatus
	b	.L1309	@
.L1331:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, D.42442
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1334:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_GetStreamInfo	@
	subs	r7, r0, #0	@ D.42442,
	beq	.L1335	@,
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_StartDecode	@
	subs	r7, r0, #0	@ D.42442,
	beq	.L1316	@,
	mov	r7, r8	@ D.42442, Ret
	b	.L1329	@
.L1335:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4]	@ D.42444, pVC1_CTX_S_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _36->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _36->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _36->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1314	@,
	ldr	r3, [r3, #728]	@ _36->s32DSDWaitFlag, _36->s32DSDWaitFlag
	cmp	r3, #1	@ _36->s32DSDWaitFlag,
	beq	.L1315	@,
.L1314:
	mov	r0, r5	@, D.42447
	ldr	r1, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
.L1315:
	ldr	r3, .L1336	@ tmp180,
	ldr	r3, [r3]	@ D.42450, g_event_report
	cmp	r3, #0	@ D.42450,
	beq	.L1312	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.42450
	b	.L1329	@
.L1316:
	add	r4, r4, #98304	@ tmp185, pVC1_CTX_S,
	mov	r2, #1	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	ldr	r1, [r4, #2604]	@, pVC1_CTX_S_7(D)->CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, #2512]	@ D.42451, pVC1_CTX_S_7(D)->CodecInfo.pCurFrm
	ldr	r3, .L1336	@ tmp198,
	strb	r7, [r2]	@ D.42442, _49->is_to_ref
	ldr	r2, [r4, #2512]	@ D.42451, pVC1_CTX_S_7(D)->CodecInfo.pCurFrm
	strb	r7, [r2, #1]	@ D.42442, _51->is_to_display
	ldr	r3, [r3]	@ D.42450, g_event_report
	cmp	r3, #0	@ D.42450,
	beq	.L1312	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r2, r7	@, D.42442
	mov	r1, #113	@,
	blx	r3	@ D.42450
	b	.L1329	@
.L1337:
	.align	2
.L1336:
	.word	g_event_report
	.fnend
	.size	VC1DEC_Decode, .-VC1DEC_Decode
	.align	2
	.global	VC1_GetPacketState
	.type	VC1_GetPacketState, %function
VC1_GetPacketState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #77824	@ tmp115, pCtx,
	ldrb	r3, [r0, #454]	@ zero_extendqisi2	@ pCtx_3(D)->CodecInfo.IsWaitToDec, pCtx_3(D)->CodecInfo.IsWaitToDec
	cmp	r3, #1	@ pCtx_3(D)->CodecInfo.IsWaitToDec,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VC1_GetPacketState, .-VC1_GetPacketState
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
.LC0:
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	3
@ Code:
	.word	3
@ Len:
	.word	3
.LC1:
	.word	3
	.word	1
	.word	2
	.word	0
	.word	4
.LC2:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
.LC3:
	.word	3
	.word	1
.LC4:
	.word	3
	.word	1
	.word	2
	.word	0
.LC5:
	.word	1
	.word	0
	.word	2
	.word	3
.LC6:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
.LC7:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
.LC8:
	.word	3
	.word	4
	.word	1
	.word	5
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	1
	.word	3
	.word	5
	.word	7
.LC9:
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	8
	.word	8
	.word	8
	.word	8
.LC10:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	aCount, %object
	.size	aCount, 128
aCount:
	.word	0
	.word	1
	.word	1
	.word	2
	.word	1
	.word	2
	.word	2
	.word	3
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	2
	.word	3
	.word	3
	.word	4
	.word	3
	.word	4
	.word	4
	.word	5
	.type	a2On4Off, %object
	.size	a2On4Off, 60
a2On4Off:
	.word	3
	.word	5
	.word	6
	.word	9
	.word	10
	.word	12
	.word	17
	.word	18
	.word	20
	.word	24
	.word	33
	.word	34
	.word	36
	.word	40
	.word	48
.LC11:
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	2
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
.LC12:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	27
	.word	29
	.word	31
	.type	FldPTypeTab, %object
	.size	FldPTypeTab, 64
FldPTypeTab:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	4
	.word	4
	.word	2
	.word	4
	.word	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
