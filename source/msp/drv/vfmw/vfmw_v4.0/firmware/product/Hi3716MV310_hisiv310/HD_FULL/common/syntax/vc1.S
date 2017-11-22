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
@ options passed:  -nostdinc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -I arch/arm/include/generated -I include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -I include/generated/uapi -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
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
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vc1)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vc1.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
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
	add	r0, r0, #255	@ D.36678, pLUTable,
.L5:
	usat	r1, #8, r3, asr #6	@ j,, ivtmp.122,
	strb	r1, [r2, #1]!	@ j, MEM[base: _19, offset: 0B]
	cmp	r2, r0	@ ivtmp.126, D.36678
	add	r3, r3, ip	@ ivtmp.122, ivtmp.122, iScale
	bne	.L5	@,
	bx	lr	@
.L13:
	mov	r3, ip, asl #7	@ tmp183, iScale,
	sub	r2, r0, #1	@ ivtmp.140, pLUTable,
	rsb	r3, r3, #8192	@ ivtmp.136, tmp183,
	add	r0, r0, #255	@ D.36678, pLUTable,
	add	r3, r3, #32	@ ivtmp.136, ivtmp.136,
.L6:
	usat	r1, #8, r3, asr #6	@ j,, ivtmp.136,
	strb	r1, [r2, #1]!	@ j, MEM[base: _5, offset: 0B]
	cmp	r2, r0	@ ivtmp.140, D.36678
	add	r3, r3, ip	@ ivtmp.136, ivtmp.136, iScale
	bne	.L6	@,
	bx	lr	@
	.fnend
	.size	VC1_Vfmw_GenerateIntensityMap, .-VC1_Vfmw_GenerateIntensityMap
	.align	2
	.type	VC1_Vfmw_UpdataLastPicRNDCTRL.part.5, %function
VC1_Vfmw_UpdataLastPicRNDCTRL.part.5:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #8192	@ tmp130, pCodecInf,
	ldrb	r3, [r2, #2411]	@ zero_extendqisi2	@ D.36685, pCodecInf_1(D)->SMPPicSyntax.PTYPE
	tst	r3, #251	@ D.36685,
	moveq	r3, #1	@ D.36685,
	moveq	r1, r3	@ D.36686, D.36685
	beq	.L15	@,
	cmp	r3, #1	@ D.36685,
	ldreqsb	r3, [r0, #10]	@ pCodecInf_1(D)->LastPicRNDCTRL, pCodecInf_1(D)->LastPicRNDCTRL
	ldrneb	r1, [r0, #10]	@ zero_extendqisi2	@ D.36686, pCodecInf_1(D)->LastPicRNDCTRL
	clzeq	r3, r3	@ D.36687, pCodecInf_1(D)->LastPicRNDCTRL
	moveq	r3, r3, lsr #5	@ D.36687, D.36687,
	uxtbne	r3, r1	@ D.36685, D.36686
	uxtbeq	r1, r3	@ D.36686, D.36687
.L15:
	strb	r1, [r0, #10]	@ D.36686, pCodecInf_1(D)->LastPicRNDCTRL
	strb	r3, [r2, #2430]	@ D.36685, pCodecInf_1(D)->SMPPicSyntax.RNDCTRL
	bx	lr	@
	.fnend
	.size	VC1_Vfmw_UpdataLastPicRNDCTRL.part.5, .-VC1_Vfmw_UpdataLastPicRNDCTRL.part.5
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
	ldr	r8, [r4, #3120]	@ D.36693, pCtx_4(D)->ImageQue.ResetMagicWord
	movt	r1, 1	@,
	mov	r7, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r7, #112640	@, pCtx,
	mov	r6, #1	@ tmp148,
	add	r0, r0, #728	@,,
	str	r8, [r4, #3120]	@ D.36693, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	add	r2, r7, #77824	@ tmp147, pCtx,
	str	r5, [r7]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r8, #0	@ tmp186,
	strb	r6, [r2, #457]	@ tmp148, pCtx_4(D)->CodecInfo.LastIs2ndFld
	mov	r0, r7	@, pCtx
	ldr	r3, [r5, #8]	@ pstExtraData_10(D)->s32DecMode, pstExtraData_10(D)->s32DecMode
	str	r3, [r4, #2732]	@ pstExtraData_10(D)->s32DecMode, pCtx_4(D)->CodecInfo.UsedDecMode
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	str	r3, [r4, #2704]	@ pstExtraData_10(D)->s32BpdMemAddr, pCtx_4(D)->CodecInfo.MVTYPEMB_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #2048	@ D.36695, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2708]	@ D.36695, pCtx_4(D)->CodecInfo.SKIPMB_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #4096	@ D.36695, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2712]	@ D.36695, pCtx_4(D)->CodecInfo.DIRECTMB_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #6144	@ D.36695, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2716]	@ D.36695, pCtx_4(D)->CodecInfo.ACPRED_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #8192	@ D.36695, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2720]	@ D.36695, pCtx_4(D)->CodecInfo.OVERFLAGS_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #10240	@ D.36695, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2724]	@ D.36695, pCtx_4(D)->CodecInfo.FIELDTX_ADDR
	ldr	r3, [r5, #36]	@ pstExtraData_10(D)->s32BpdMemAddr, pstExtraData_10(D)->s32BpdMemAddr
	add	r3, r3, #12288	@ D.36695, pstExtraData_10(D)->s32BpdMemAddr,
	str	r3, [r4, #2728]	@ D.36695, pCtx_4(D)->CodecInfo.FORWARDMB_ADDR
	strb	r6, [r2, #458]	@ tmp148, pCtx_4(D)->CodecInfo.LastPicRNDCTRL
	str	r6, [r4, #3132]	@ tmp148, pCtx_4(D)->DSDNeedClearQue
	str	r8, [r4, #2664]	@ tmp186, pCtx_4(D)->CodecInfo.PPicFound
	str	r8, [r4, #2668]	@ tmp186, pCtx_4(D)->CodecInfo.BPicCount
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.36695,
	str	r0, [r4, #3128]	@ D.36695, pCtx_4(D)->ChanID
	beq	.L24	@,
	ldr	r1, .L25	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36692, tmp148
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L24:
	mov	r0, r8	@, tmp186
	ldr	r1, .L25+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36692,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L26:
	.align	2
.L25:
	.word	.LC14
	.word	.LC13
	.fnend
	.size	VC1DEC_Init, .-VC1DEC_Init
	.align	2
	.global	Vc1SMPSeqHdr
	.type	Vc1SMPSeqHdr, %function
Vc1SMPSeqHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r4, r2	@ pVc1Info, pVc1Info
	mov	r2, r1, asl #3	@, ByteLen,
	mov	r1, r0	@, pBitBuf
	add	r0, sp, #4	@ tmp251,,
	bl	BsInit	@
	mov	r1, #8	@,
	add	r0, sp, #4	@ tmp252,,
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r5, r0	@ data,
	add	r0, sp, #4	@ tmp253,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #8	@ data, data,,
	add	r0, sp, #4	@ tmp254,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #16	@ data, data,,
	add	r0, sp, #4	@ tmp255,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #24	@ data, data,,
	add	r0, sp, #4	@ tmp256,,
	str	r5, [r4, #24]	@ data, pVc1Info_4(D)->FrmWidth
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r5, r0	@ data,
	add	r0, sp, #4	@ tmp257,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #8	@ data, data,,
	add	r0, sp, #4	@ tmp258,,
	bl	BsGet	@
	mov	r1, #8	@,
	add	r5, r5, r0, lsl #16	@ data, data,,
	add	r0, sp, #4	@ tmp259,,
	bl	BsGet	@
	ldr	r3, [r4, #24]	@ D.36701, pVc1Info_4(D)->FrmWidth
	cmp	r3, #8192	@ D.36701,
	add	r0, r5, r0, lsl #24	@ data, data,,
	str	r0, [r4, #28]	@ data, pVc1Info_4(D)->FrmHeight
	bgt	.L42	@,
	cmp	r0, #8192	@ data,
	bgt	.L43	@,
	cmp	r3, #31	@ D.36701,
	ble	.L44	@,
	cmp	r0, #31	@ data,
	ble	.L45	@,
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp260,,
	bl	BsGet	@
	uxtb	r0, r0	@ D.36702,
	strb	r0, [r4, #3]	@ D.36702, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE
	cmp	r0, #1	@ D.36702,
	bhi	.L46	@,
	mov	r1, #2	@,
	add	r0, sp, #4	@ tmp261,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.36701,
	bne	.L47	@,
	mov	r1, #3	@,
	add	r0, sp, #4	@ tmp262,,
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #4]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].FRMRTQ
	add	r0, sp, #4	@ tmp263,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #5]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].BITRTQ
	add	r0, sp, #4	@ tmp264,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #6]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].LOOPFILTER
	add	r0, sp, #4	@ tmp265,,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.36701,
	bne	.L48	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp266,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #7]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].MULTIRES
	add	r0, sp, #4	@ tmp267,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #8]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].B16BITTRANSFORM
	add	r0, sp, #4	@ tmp268,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #9]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].FASTUVMC
	add	r0, sp, #4	@ tmp269,,
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #10]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].EXTENDED_MV
	add	r0, sp, #4	@ tmp270,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #11]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].DQUANT
	add	r0, sp, #4	@ tmp271,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #12]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].VSTRANSFORM
	add	r0, sp, #4	@ tmp272,,
	bl	BsGet	@
	subs	r5, r0, #0	@ D.36700,
	bne	.L49	@,
	mov	r1, #1	@,
	add	r0, sp, #4	@ tmp273,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #13]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].OVERLAP
	add	r0, sp, #4	@ tmp274,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #14]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].SYNCMARKER
	add	r0, sp, #4	@ tmp275,,
	bl	BsGet	@
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE
	mov	r1, #3	@,
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].PROFILE,
	strb	r0, [r4, #15]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].RANGERED
	add	r0, sp, #4	@ tmp276,,
	streqb	r5, [r4, #15]	@ D.36700, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].RANGERED
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #16]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].MAXBFRAMES
	add	r0, sp, #4	@ tmp277,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #17]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].QUANTIZER
	add	r0, sp, #4	@ tmp278,,
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #18]	@, MEM[(struct VC1_SMPSEQSYNTAX_S *)pVc1Info_4(D) + 3B].FINTERPFLAG
	add	r0, sp, #4	@ tmp279,,
	bl	BsGet	@
	add	r0, sp, #4	@ tmp280,,
	mov	r1, #32	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L50	@,
.L29:
	mov	r0, r5	@, D.36700
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L50:
	ldr	r1, .L51	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, D.36700
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L46:
	ldr	r3, .L51+4	@,
	movw	r2, #281	@,
	ldr	r1, .L51+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L45:
	ldr	r3, .L51+12	@,
	movw	r2, #278	@,
	ldr	r1, .L51+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L47:
	ldr	r3, .L51+4	@,
	mov	r2, #284	@,
	ldr	r1, .L51+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L48:
	mov	r0, r5	@, D.36701
	ldr	r3, .L51+4	@,
	movw	r2, #291	@,
	ldr	r1, .L51+8	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L49:
	mov	r0, r6	@, D.36701
	ldr	r3, .L51+4	@,
	movw	r2, #302	@,
	ldr	r1, .L51+8	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L42:
	ldr	r3, .L51+16	@,
	movw	r2, #275	@,
	ldr	r1, .L51+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L43:
	ldr	r3, .L51+12	@,
	mov	r2, #276	@,
	ldr	r1, .L51+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L44:
	ldr	r3, .L51+16	@,
	movw	r2, #277	@,
	ldr	r1, .L51+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.36700,
	b	.L29	@
.L52:
	.align	2
.L51:
	.word	.LC19
	.word	.LC18
	.word	.LC16
	.word	.LC17
	.word	.LC15
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
	beq	.L65	@,
.L64:
	str	r3, [r4, #140]	@ tmp175, pImg_10->format
	mov	r1, #0	@,
	ldr	r3, [r5, #2548]	@ D.36712, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicHeight
	mov	r0, r4	@, pImg
	str	r3, [r4, #148]	@ D.36712, pImg_10->image_height
	ldr	r3, [r5, #2544]	@ D.36712, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicWidth
	str	r3, [r4, #144]	@ D.36712, pImg_10->image_width
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_5(D)->pstExtraData, pCtx_5(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _35->eCapLevel, _35->eCapLevel
	cmp	r3, #25	@ _35->eCapLevel,
	beq	.L66	@,
.L58:
	ldr	r1, [r5, #2548]	@ D.36712, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicHeight
	mov	r3, #8	@ tmp207,
	mov	r2, #1	@ tmp205,
	str	r1, [r4, #156]	@ D.36712, pImg_10->disp_height
	ldr	r1, [r5, #2544]	@ D.36712, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_5(D) + 78272B].DispPicWidth
	strb	r2, [r4, #295]	@ tmp205, pImg_10->ImageDnr.use_pic_qp_en
	strb	r2, [r4, #293]	@ tmp205, pImg_10->ImageDnr.chroma_format_idc
	str	r1, [r4, #152]	@ D.36712, pImg_10->disp_width
	str	r3, [r4, #304]	@ tmp207, pImg_10->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp207, pImg_10->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp207, pImg_10->ImageDnr.QP_U
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L65:
	mov	r2, #4	@ tmp166,
	ldr	r3, [r4, #140]	@ pImg_10->format, pImg_10->format
	strb	r2, [r4, #288]	@ tmp166, pImg_10->ImageDnr.pic_structure
	ldrb	r1, [r6, #16]	@ zero_extendqisi2	@ D.36710, pCtx_5(D)->Vc1DecParam.curparity
	ubfx	r2, r3, #10, #2	@ fldflg, pImg_10->format,,
	add	r3, r1, #1	@ D.36710, D.36710,
	orr	r3, r3, r2	@ fldflg, D.36710, fldflg
	cmp	r3, #3	@ fldflg,
	movls	r3, r3, asl #10	@ D.36712, fldflg,
	orrls	r3, r3, #4352	@ D.36712, D.36712,
	movhi	r3, #4352	@ D.36712,
	b	.L64	@
.L66:
	ldr	r2, [r4, #148]	@ pImg_10->image_height, pImg_10->image_height
	ldr	r1, [r4, #172]	@ D.36712, pImg_10->image_stride
	add	r2, r2, #15	@ D.36712, pImg_10->image_height,
	ldr	r0, [r4, #104]	@ D.36712, pImg_10->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.36716, pImg_10->luma_vir_addr
	mov	r2, r2, lsr #4	@ D.36712, D.36712,
	mov	r3, r1, asl #5	@ D.36712, D.36712,
	add	r2, r2, #1	@ D.36712, D.36712,
	add	lr, r1, r0	@ D.36710, D.36712, D.36712
	str	r0, [r4, #88]	@ D.36712, pImg_10->top_luma_phy_addr
	mov	r2, r2, lsr #1	@ D.36712, D.36712,
	str	r0, [r4, #120]	@ D.36712, pImg_10->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.36710, pImg_10->btm_luma_phy_addr
	mul	r3, r2, r3	@ D.36712, D.36712, D.36712
	str	ip, [r4, #48]	@ D.36716, pImg_10->luma_2d_vir_addr
	add	r0, r3, r0	@ D.36712, D.36712, D.36712
	add	r3, ip, r3	@ D.36716, D.36716, D.36712
	add	r1, r1, r0	@ D.36710, D.36712, D.36712
	str	r3, [r4, #36]	@ D.36716, pImg_10->chrom_vir_addr
	str	r0, [r4, #108]	@ D.36712, pImg_10->chrom_phy_addr
	str	r0, [r4, #92]	@ D.36712, pImg_10->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.36710, pImg_10->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_10->top_chrom_phy_addr, pImg_10->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_10->top_chrom_phy_addr, pImg_10->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_10->chrom_2d_vir_addr
	b	.L58	@
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
	beq	.L68	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp131,
	ldr	r0, [r4, #3128]	@, pCtx_2(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp131, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_2(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp131, pImg_10->p_usrdat
.L68:
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
	beq	.L80	@,
	ldr	r3, [r0]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _11->s32DecOrderOutput, _11->s32DecOrderOutput
	cmp	r3, #1	@ _11->s32DecOrderOutput,
	addeq	r4, r0, #112640	@ tmp208, pCtx,
	beq	.L75	@,
	add	r6, r0, #110592	@ tmp207, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L92	@,
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pCtx_8(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L89	@,
.L92:
	add	r4, r5, #112640	@ tmp208, pCtx,
.L75:
	add	r7, r4, #728	@ D.36724, tmp208,
.L79:
	mov	r0, r7	@, D.36724
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@
	b	GetVoLastImageID	@
.L89:
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
	ldr	r3, [r4, #2516]	@ D.36725, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].pRef
	mov	r1, #1	@,
	ldrb	r2, [r3]	@ zero_extendqisi2	@ _29->is_to_ref, _29->is_to_ref
	cmp	r2, #1	@ _29->is_to_ref,
	streqb	r2, [r3, #1]	@ _29->is_to_ref, _29->is_to_display
	ldreq	r2, [r4, #2516]	@ D.36725, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].pRef
	add	r4, r5, #112640	@ tmp208, pCtx,
	moveq	r3, #3	@ tmp185,
	streqb	r9, [r2]	@ tmp164, _32->is_to_ref
	mov	r2, r5	@, pCtx
	streqb	r3, [r7, #449]	@ tmp185, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_8(D) + 78272B].RefId
	add	r7, r4, #728	@ D.36724, tmp208,
	ldr	r0, [r6, #3128]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	mov	r3, r7	@, D.36724
	str	r8, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L77	@,
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
	b	.L79	@
.L77:
	ldr	r3, [r8, #180]	@ pImg_16->error_level, pImg_16->error_level
	cmp	r3, #100	@ pImg_16->error_level,
	bhi	.L75	@,
	ldr	r3, [r8, #144]	@ pImg_16->image_width, pImg_16->image_width
	cmp	r3, #31	@ pImg_16->image_width,
	bls	.L75	@,
	ldr	r3, [r8, #148]	@ pImg_16->image_height, pImg_16->image_height
	cmp	r3, #31	@ pImg_16->image_height,
	movhi	r0, #0	@ ret,
	bls	.L79	@,
.L90:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L80:
	mvn	r0, #0	@ ret,
	b	.L90	@
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
	beq	.L95	@,
	mov	r1, r5	@, FsID
	ldr	r0, [r4, #3128]	@, pCtx_1(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L99	@,
.L94:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L99:
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
	add	r3, r3, #728	@,,
	str	r7, [sp]	@ pImg,
	mov	r2, r6	@, pCtx
	mov	r1, #1	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r5	@ ret, tmp135
	beq	.L94	@,
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
	b	.L94	@
.L95:
	mvn	r0, #0	@ ret,
	b	.L94	@
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
	sub	r1, r1, #32	@ D.36765, ImgWidth,
	movw	r3, #8160	@ tmp195,
	cmp	r1, r3	@ D.36765, tmp195
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r6, r2	@ ImgHeight, ImgHeight
	bhi	.L101	@,
	sub	r2, r2, #32	@ D.36765, ImgHeight,
	cmp	r2, r3	@ D.36765, tmp195
	bhi	.L101	@,
	add	ip, r0, #93184	@ ivtmp.163, pVc1Ctx,
	mov	lr, #0	@ ivtmp.162,
	add	ip, ip, #472	@ ivtmp.163, ivtmp.163,
	mov	r7, r0	@ pVc1Ctx, pVc1Ctx
	mov	r4, lr	@ tmp250, ivtmp.162
.L104:
	str	lr, [ip, #-224]	@ ivtmp.162, MEM[base: _108, offset: 4294967072B]
	add	lr, lr, #1	@ ivtmp.162, ivtmp.162,
	cmp	lr, #5	@ ivtmp.162,
	strb	r4, [ip, #-1431]	@ tmp250, MEM[base: _108, offset: 4294965865B]
	strb	r4, [ip, #-1432]	@ tmp250, MEM[base: _108, offset: 4294965864B]
	add	ip, ip, #1424	@ ivtmp.163, ivtmp.163,
	add	ip, ip, #8	@ ivtmp.163, ivtmp.163,
	bne	.L104	@,
	ldr	r3, [r7]	@ D.36766, pVc1Ctx_6(D)->pstExtraData
	ldr	r4, [r3, #608]	@ D.36764, _27->stChanOption.s32ReRangeEn
	ldr	r2, [r3, #32]	@ _27->eCapLevel, _27->eCapLevel
	cmp	r4, #0	@ D.36764,
	bne	.L105	@,
	cmp	r2, #25	@ _27->eCapLevel,
	beq	.L128	@,
.L123:
	mov	r4, lr	@ D.36770, ivtmp.162
	mov	r9, #3	@ DecFsNum,
	mov	r8, #2	@ PmvBlkNum,
.L106:
	mov	r1, #36	@,
	add	r0, sp, #12	@ tmp252,,
	bl	__memzero	@
	ldr	r2, [r7]	@ D.36766, pVc1Ctx_6(D)->pstExtraData
	mov	r3, #0	@ tmp223,
	str	r5, [sp, #24]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #28]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r2, #20]	@ _55->s32DnrDispOutEnable, _55->s32DnrDispOutEnable
	str	r6, [sp, #44]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	ldr	r2, [r2, #32]	@ _55->eCapLevel, _55->eCapLevel
	strb	r1, [sp, #12]	@ _55->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	cmp	r2, #24	@ _55->eCapLevel,
	str	r5, [sp, #40]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #13]	@ tmp223, FspInstCfg.s32TfEnable
	strb	r3, [sp, #14]	@ tmp223, FspInstCfg.s32RprEnable
	beq	.L116	@,
	uxtb	r3, r8	@ D.36771, PmvBlkNum
	strb	r9, [sp, #17]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r4, [sp, #19]	@ D.36770, FspInstCfg.s32ExpectedDispFsNum
.L119:
	add	r6, r7, #110592	@ tmp235, pVc1Ctx,
	add	r1, sp, #12	@ tmp253,,
	strb	r3, [sp, #20]	@ D.36771, FspInstCfg.s32ExpectedPmvNum
	mov	r5, #0	@ tmp231,
	ldr	r0, [r6, #3128]	@, pVc1Ctx_6(D)->ChanID
	strb	r5, [sp, #16]	@ tmp231, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r4, r0, #0	@ D.36764,
	bne	.L117	@,
	ldr	r1, [r7]	@ D.36766, pVc1Ctx_6(D)->pstExtraData
	add	r3, sp, #8	@,,
	ldr	r0, [r6, #3128]	@, pVc1Ctx_6(D)->ChanID
	ldr	r2, [r1, #28]	@, _74->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _74->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r5	@,
	bne	.L129	@,
.L121:
	mov	r4, #1	@ D.36764,
	mov	r0, r4	@, D.36764
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L101:
	mov	r3, r6	@, ImgHeight
	mov	r2, r5	@, ImgWidth
	ldr	r1, .L131	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ D.36764,
.L126:
	mov	r0, r4	@, D.36764
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L105:
	cmp	r2, #25	@ _27->eCapLevel,
	bne	.L123	@,
	ldr	r2, [r3, #568]	@ D.36768, _27->stChanOption.s32MaxWidth
	ldr	r1, [r3, #572]	@ D.36768, _27->stChanOption.s32MaxHeight
	cmp	r5, r2	@ ImgWidth, D.36768
	bhi	.L113	@,
	cmp	r6, r1	@ ImgHeight, D.36768
	bhi	.L113	@,
	ldr	r2, [r3, #596]	@ _27->stChanOption.s32SupportBFrame, _27->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _27->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _27->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvBlkNum,
	bne	.L130	@,
.L115:
	ldrb	r4, [r3, #616]	@ zero_extendqisi2	@ D.36770, _27->stChanOption.s32DisplayFrameNum
	b	.L106	@
.L117:
	ldr	r1, .L131+4	@,
	mov	r0, r5	@, tmp231
	bl	dprint_vfmw	@
	mov	r4, r5	@ D.36764, tmp231
	mov	r0, r4	@, D.36764
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L128:
	ldr	r2, [r3, #568]	@ D.36768, _27->stChanOption.s32MaxWidth
	cmp	r5, r2	@ ImgWidth, D.36768
	ldrhi	r0, [r3, #572]	@ D.36768, _27->stChanOption.s32MaxHeight
	bhi	.L108	@,
	ldr	r1, [r3, #572]	@ ImgHeight, _27->stChanOption.s32MaxHeight
	cmp	r6, r1	@ ImgHeight, ImgHeight
	mov	r0, r1	@ D.36768, ImgHeight
	bhi	.L108	@,
	add	r0, r7, #77824	@ tmp208, pVc1Ctx,
	ldrb	r0, [r0, #448]	@ zero_extendqisi2	@ pVc1Ctx_6(D)->CodecInfo.CodecStatus, pVc1Ctx_6(D)->CodecInfo.CodecStatus
	tst	r0, #8	@ pVc1Ctx_6(D)->CodecInfo.CodecStatus,
	bne	.L121	@,
	ldr	r0, [r3, #596]	@ _27->stChanOption.s32SupportBFrame, _27->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _27->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _27->stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvBlkNum,
	beq	.L111	@,
	add	r8, r9, #1	@ PmvBlkNum, DecFsNum,
	cmp	r8, #17	@ PmvBlkNum,
	movcs	r8, #17	@ PmvBlkNum,
.L111:
	ldrb	r4, [r3, #616]	@ zero_extendqisi2	@ D.36770, _27->stChanOption.s32DisplayFrameNum
	mov	r6, r1	@ ImgHeight, ImgHeight
	mov	r5, r2	@ ImgWidth, D.36768
	b	.L106	@
.L116:
	strb	r3, [sp, #17]	@ tmp223, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.36771,
	strb	r4, [sp, #19]	@ D.36770, FspInstCfg.s32ExpectedDispFsNum
	b	.L119	@
.L113:
	str	r1, [sp, #4]	@ D.36768,
	mov	r3, r6	@, ImgHeight
	str	r2, [sp]	@ D.36768,
	mov	r0, #0	@,
	mov	r2, r5	@, ImgWidth
	ldr	r1, .L131+8	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ D.36764,
	b	.L126	@
.L129:
	ldr	r1, .L131+12	@,
	mov	r0, r4	@, D.36764
	bl	dprint_vfmw	@
	b	.L126	@
.L130:
	add	r8, r9, #1	@ PmvBlkNum, DecFsNum,
	cmp	r8, #17	@ PmvBlkNum,
	movcs	r8, #17	@ PmvBlkNum,
	b	.L115	@
.L108:
	str	r0, [sp, #4]	@ D.36768,
	mov	r3, r6	@, ImgHeight
	str	r2, [sp]	@ D.36768,
	mov	r0, #0	@,
	mov	r2, r5	@, ImgWidth
	ldr	r1, .L131+8	@,
	bl	dprint_vfmw	@
	b	.L126	@
.L132:
	.align	2
.L131:
	.word	.LC20
	.word	.LC23
	.word	.LC21
	.word	.LC22
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
	add	r7, r0, #98304	@ tmp1185, pCtx,
	add	r6, r0, #110592	@ tmp1186, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ pVc1DecParam, pVc1DecParam
	add	r8, r0, #77824	@ tmp1183, pCtx,
	ldr	r1, [r7, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurFsID
	ldr	r0, [r6, #3128]	@, pCtx_13(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pCur
	beq	.L157	@,
	movw	r3, #3544	@ tmp344,
	ldrsb	r2, [r8, r3]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile
	add	r3, r5, #86016	@ tmp1184, pCtx,
	cmp	r2, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L158	@,
	strb	r2, [r4, #5]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->fcm
	ldrb	r1, [r3, #2608]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.PROFILE
	strb	r1, [r4, #4]	@ D.36783, pVc1DecParam_23(D)->profile
	ldrb	r1, [r3, #2859]	@ zero_extendqisi2	@ D.36780, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE
	cmp	r1, #4	@ D.36780,
	moveq	r1, #3	@ D.36780,
	strb	r1, [r4, #3]	@ D.36780, pVc1DecParam_23(D)->ptype
	ldr	r1, [r6, #2684]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight
	sub	r1, r1, #1	@ tmp836, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight,
	strh	r1, [r4, #80]	@ movhi	@ tmp836, pVc1DecParam_23(D)->mbheight
	ldr	r1, [r6, #2680]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth
	strb	r2, [r4, #8]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->curparity
	sub	r1, r1, #1	@ tmp843, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth,
	strh	r1, [r4, #78]	@ movhi	@ tmp843, pVc1DecParam_23(D)->mbwidth
	ldrb	r1, [r3, #2611]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.LOOPFILTER
	strb	r2, [r4, #9]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->numref
	strb	r1, [r4, #6]	@ D.36783, pVc1DecParam_23(D)->loopfilter
	ldrb	r1, [r8, #456]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].Is2ndFld
	strb	r2, [r4, #10]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->fwd_fcm
	strb	r2, [r4, #11]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PreParseInfo.IsAdvProfile, pVc1DecParam_23(D)->bwd_fcm
	strb	r1, [r4, #7]	@ D.36783, pVc1DecParam_23(D)->issecondfld
	ldrb	r1, [r3, #2614]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.FASTUVMC
	strb	r1, [r4, #13]	@ D.36783, pVc1DecParam_23(D)->fastuvmc
	ldrb	r1, [r3, #2618]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.OVERLAP
	strb	r1, [r4, #14]	@ D.36783, pVc1DecParam_23(D)->overlap
	ldrb	r1, [r3, #2878]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.RNDCTRL
	strb	r1, [r4, #12]	@ D.36783, pVc1DecParam_23(D)->rndctrl
	ldrb	r1, [r3, #2888]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r1, [r4, #18]	@ D.36783, pVc1DecParam_23(D)->altpquant
	ldrb	r1, [r3, #2863]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.HALFQP
	strb	r1, [r4, #19]	@ D.36783, pVc1DecParam_23(D)->halfqp
	ldrb	r1, [r3, #2862]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX
	strb	r1, [r4, #17]	@ D.36783, pVc1DecParam_23(D)->pqindex
	ldr	r1, [r3, #2948]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANT, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANT
	strb	r1, [r4, #16]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANT, pVc1DecParam_23(D)->pquant
	ldrb	r1, [r3, #2622]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.QUANTIZER
	cmp	r1, #0	@ D.36783,
	bne	.L148	@,
	ldrb	r2, [r3, #2862]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX
	cmp	r2, #8	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQINDEX,
	movhi	r2, #0	@ tmp905,
	movls	r2, #1	@ tmp905,
	strb	r2, [r4, #20]	@ tmp905, pVc1DecParam_23(D)->buniform
.L149:
	ldrb	r1, [r3, #2882]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.DQBILEVEL
	add	r2, r4, #12288	@ tmp1187, pVc1DecParam,
	strb	r1, [r4, #24]	@ D.36783, pVc1DecParam_23(D)->dqbilevel
	ldrb	r1, [r3, #2881]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.DQPROFILE
	strb	r1, [r4, #23]	@ D.36783, pVc1DecParam_23(D)->dqprofile
	ldrb	r1, [r3, #2616]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.DQUANT
	strb	r1, [r4, #22]	@ D.36783, pVc1DecParam_23(D)->dquant
	ldrb	r1, [r3, #2880]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.DQUANTFRM
	strb	r1, [r4, #25]	@ D.36783, pVc1DecParam_23(D)->dquantfrm
	ldr	r1, [r3, #2892]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.QuantMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.QuantMode
	strb	r1, [r4, #26]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.QuantMode, pVc1DecParam_23(D)->quantmode
	ldrb	r1, [r3, #2883]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.VOPDQUANT.UseAltQp
	strb	r1, [r4, #21]	@ D.36783, pVc1DecParam_23(D)->usealtqp
	ldrb	r1, [r3, #2867]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVMODE
	strb	r1, [r4, #27]	@ D.36783, pVc1DecParam_23(D)->mvmode
	ldrb	r1, [r3, #2868]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVMODE2
	strb	r1, [r4, #28]	@ D.36783, pVc1DecParam_23(D)->mvmode2
	ldr	r1, [r7, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.36783, _289->IsHalfPel
	strb	r1, [r4, #30]	@ D.36783, pVc1DecParam_23(D)->colishalfpel
	ldr	r1, [r7, #2512]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.36783, _292->IsHalfPel
	strb	r1, [r4, #29]	@ D.36783, pVc1DecParam_23(D)->curishalfpel
	ldrb	r1, [r3, #2865]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVRANGE
	strb	r1, [r4, #31]	@ D.36783, pVc1DecParam_23(D)->mvrange
	ldrb	r1, [r3, #2987]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.REFDIST
	strb	r1, [r4, #32]	@ D.36783, pVc1DecParam_23(D)->refdist
	ldrb	r1, [r3, #2877]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TRANSDCTAB
	strb	r1, [r4, #35]	@ D.36783, pVc1DecParam_23(D)->transdctab
	ldrb	r1, [r3, #2617]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.VSTRANSFORM
	strb	r1, [r4, #36]	@ D.36783, pVc1DecParam_23(D)->vstransform
	ldrb	r1, [r3, #2873]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TTMBF
	strb	r1, [r4, #37]	@ D.36783, pVc1DecParam_23(D)->ttmbf
	ldrb	r1, [r3, #2875]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TRANSACFRM
	strb	r1, [r4, #38]	@ D.36783, pVc1DecParam_23(D)->transacfrm
	ldrb	r1, [r3, #2876]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TRANSACFRM2
	strb	r1, [r4, #39]	@ D.36783, pVc1DecParam_23(D)->transacfrm2
	ldrb	r1, [r3, #2874]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.TTFRM
	strb	r1, [r4, #40]	@ D.36783, pVc1DecParam_23(D)->ttfrm
	ldr	r1, [r3, #2940]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.DIRECTMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.DIRECTMBMode
	clz	r1, r1	@ tmp1016, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.DIRECTMBMode
	mov	r1, r1, lsr #5	@ tmp1016, tmp1016,
	strb	r1, [r4, #42]	@ tmp1016, pVc1DecParam_23(D)->directmbmodeisskipraw
	ldr	r1, [r3, #2936]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTYPEMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTYPEMBMode
	clz	r1, r1	@ tmp1023, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTYPEMBMode
	mov	r1, r1, lsr #5	@ tmp1023, tmp1023,
	strb	r1, [r4, #43]	@ tmp1023, pVc1DecParam_23(D)->mvtypembmodeisskipraw
	ldr	r1, [r3, #2944]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.SKIPMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.SKIPMBMode
	clz	r1, r1	@ tmp1030, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.SKIPMBMode
	mov	r1, r1, lsr #5	@ tmp1030, tmp1030,
	strb	r1, [r4, #45]	@ tmp1030, pVc1DecParam_23(D)->skipmbmodeisskipraw
	ldrb	r1, [r3, #2860]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.BFRACTION
	strb	r1, [r4, #50]	@ D.36783, pVc1DecParam_23(D)->bfraction
	ldrb	r1, [r3, #2872]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.CBPTAB
	strb	r1, [r4, #49]	@ D.36783, pVc1DecParam_23(D)->cbptab
	ldrb	r1, [r3, #2871]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.MVTAB
	strb	r1, [r4, #48]	@ D.36783, pVc1DecParam_23(D)->mvtab
	ldr	r1, [r3, #2952]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.ScaleFactor, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.ScaleFactor
	str	r1, [r2, #84]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.ScaleFactor, pVc1DecParam_23(D)->ScaleFactor
	ldrb	r1, [r3, #2620]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.RANGERED, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.RANGERED
	cmp	r1, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.RANGERED,
	beq	.L159	@,
	mov	r1, #0	@ D.36781,
	mov	ip, r1	@ D.36783, D.36781
	mov	r5, r1	@ D.36783, D.36781
	mov	lr, r1	@ D.36783, D.36781
.L152:
	strb	lr, [r4, #59]	@ D.36783, pVc1DecParam_23(D)->RANGEREDFRM
	strb	r5, [r4, #60]	@ D.36783, pVc1DecParam_23(D)->RANGEREDFRM0
	strb	ip, [r4, #61]	@ D.36783, pVc1DecParam_23(D)->RANGEREDFRM1
	str	r1, [r0, #324]	@ D.36781, pCur_18->stDispImg.ImageDnr.Rangedfrm
	ldrb	r3, [r3, #2608]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPSeqSyntax.PROFILE
	strb	r3, [r0, #302]	@ D.36783, pCur_18->stDispImg.ImageDnr.vc1_profile
.L146:
	ldr	r3, [r7, #2612]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SlcNum, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SlcNum
	add	r1, r8, #460	@ D.36789, tmp1183,
	add	r1, r1, #1	@ D.36789, D.36789,
	strh	r3, [r4, #72]	@ movhi	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SlcNum, pVc1DecParam_23(D)->totalslicenum
	ldr	r3, [r7, #2544]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicWidth
	strh	r3, [r4, #74]	@ movhi	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicWidth, pVc1DecParam_23(D)->DispPicWidth
	ldr	r3, [r7, #2548]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicHeight, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicHeight
	strh	r3, [r4, #76]	@ movhi	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DispPicHeight, pVc1DecParam_23(D)->DispPicHeight
	ldrb	r3, [r8, #459]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CodecVersion
	strb	r3, [r4, #63]	@ D.36783, pVc1DecParam_23(D)->CodecVersion
	ldrb	r3, [r8, #460]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].PostCresent
	strb	r3, [r4, #62]	@ D.36783, pVc1DecParam_23(D)->PostCresent
	ldr	r0, [r7, #2528]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth
	adds	r3, r0, #127	@ D.36781, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth,
	addmi	r3, r0, #254	@, D.36781, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MbWidth,
	mov	r3, r3, asr #7	@ D.36781, D.36781,
	mov	r3, r3, asl #4	@ D.36781, D.36781,
	str	r3, [r2, #116]	@ D.36781, pVc1DecParam_23(D)->BPD_STRIDE
	ldr	r3, [r6, #2704]	@ D.36788, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].MVTYPEMB_ADDR
	str	r3, [r2, #120]	@ D.36788, pVc1DecParam_23(D)->MVTYPEMB_ADDR
	ldr	r3, [r6, #2708]	@ D.36788, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SKIPMB_ADDR
	str	r3, [r2, #124]	@ D.36788, pVc1DecParam_23(D)->SKIPMB_ADDR
	ldr	r3, [r6, #2712]	@ D.36788, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].DIRECTMB_ADDR
	str	r3, [r2, #128]	@ D.36788, pVc1DecParam_23(D)->DIRECTMB_ADDR
	ldr	r3, [r6, #2716]	@ D.36788, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].ACPRED_ADDR
	str	r3, [r2, #132]	@ D.36788, pVc1DecParam_23(D)->ACPRED_ADDR
	ldr	r3, [r6, #2720]	@ D.36788, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].OVERFLAGS_ADDR
	str	r3, [r2, #136]	@ D.36788, pVc1DecParam_23(D)->OVERFLAGS_ADDR
	ldr	r3, [r6, #2724]	@ D.36788, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FIELDTX_ADDR
	str	r3, [r2, #140]	@ D.36788, pVc1DecParam_23(D)->FIELDTX_ADDR
	ldr	r3, [r6, #2728]	@ D.36788, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FORWARDMB_ADDR
	str	r3, [r2, #144]	@ D.36788, pVc1DecParam_23(D)->FORWARDMB_ADDR
	str	r1, [r4, #64]	@ D.36789, pVc1DecParam_23(D)->pIntensityConvertTab
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L158:
	ldr	r2, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM
	movw	ip, #1432	@ tmp418,
	strb	r2, [r4, #5]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, pVc1DecParam_23(D)->fcm
	ldrb	r2, [r3, #2624]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvSeqSyntax.PROFILE
	strb	r2, [r4, #4]	@ D.36783, pVc1DecParam_23(D)->profile
	ldrb	r2, [r3, #2957]	@ zero_extendqisi2	@ D.36780, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PTYPE
	cmp	r2, #4	@ D.36780,
	moveq	r2, #3	@ D.36780,
	strb	r2, [r4, #3]	@ D.36780, pVc1DecParam_23(D)->ptype
	ldr	r2, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM
	cmp	r2, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM,
	ldr	r2, [r6, #2684]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight
	addeq	r2, r2, #1	@ D.36781, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight,
	addeq	r2, r2, r2, lsr #31	@ tmp374, D.36781, D.36781,
	moveq	r2, r2, asr #1	@ D.36781, tmp374,
	sub	r2, r2, #1	@ tmp384, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbHeight,
	strh	r2, [r4, #80]	@ movhi	@ tmp384, pVc1DecParam_23(D)->mbheight
	ldr	r1, [r6, #2680]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth
	sub	r1, r1, #1	@ tmp391, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CurPicMbWidth,
	strh	r1, [r4, #78]	@ movhi	@ tmp391, pVc1DecParam_23(D)->mbwidth
	ldrb	r2, [r3, #2997]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	strb	r2, [r4, #8]	@ D.36783, pVc1DecParam_23(D)->curparity
	ldrb	r2, [r3, #2800]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.LOOPFILTER
	strb	r2, [r4, #6]	@ D.36783, pVc1DecParam_23(D)->loopfilter
	ldrb	r2, [r3, #2988]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.NUMREF
	strb	r2, [r4, #9]	@ D.36783, pVc1DecParam_23(D)->numref
	ldrb	r2, [r8, #456]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].Is2ndFld
	strb	r2, [r4, #7]	@ D.36783, pVc1DecParam_23(D)->issecondfld
	ldr	r1, [r7, #2568]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj
	mla	r1, ip, r1, r8	@ tmp419, tmp418, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, tmp1183
	add	r1, r1, #15424	@ tmp420, tmp419,
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[_53].PicStruct
	strb	r2, [r4, #10]	@ D.36783, pVc1DecParam_23(D)->fwd_fcm
	ldr	r2, [r7, #2584]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj
	mla	r2, ip, r2, r8	@ tmp431, tmp418, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, tmp1183
	add	r2, r2, #15424	@ tmp432, tmp431,
	ldrb	r2, [r2, #3]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[_56].PicStruct
	strb	r2, [r4, #11]	@ D.36783, pVc1DecParam_23(D)->bwd_fcm
	ldrb	r2, [r3, #2986]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CONDOVER
	strb	r2, [r4, #15]	@ D.36783, pVc1DecParam_23(D)->condover
	ldrb	r2, [r3, #2801]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.FASTUVMC
	strb	r2, [r4, #13]	@ D.36783, pVc1DecParam_23(D)->fastuvmc
	ldrb	r2, [r3, #2805]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.OVERLAP
	strb	r2, [r4, #14]	@ D.36783, pVc1DecParam_23(D)->overlap
	ldrb	r2, [r3, #2956]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.RNDCTRL
	strb	r2, [r4, #12]	@ D.36783, pVc1DecParam_23(D)->rndctrl
	ldrb	r2, [r3, #3124]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r2, [r4, #18]	@ D.36783, pVc1DecParam_23(D)->altpquant
	ldrb	r2, [r3, #2959]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.HALFQP
	strb	r2, [r4, #19]	@ D.36783, pVc1DecParam_23(D)->halfqp
	ldrb	r2, [r3, #2966]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX
	strb	r2, [r4, #17]	@ D.36783, pVc1DecParam_23(D)->pqindex
	ldr	r2, [r3, #3072]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANT, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANT
	strb	r2, [r4, #16]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANT, pVc1DecParam_23(D)->pquant
	ldrb	r2, [r3, #2806]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.QUANTIZER
	cmp	r2, #0	@ D.36783,
	bne	.L139	@,
	ldrb	r2, [r3, #2966]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX
	cmp	r2, #8	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQINDEX,
	movhi	r2, #0	@ tmp484,
	movls	r2, #1	@ tmp484,
	strb	r2, [r4, #20]	@ tmp484, pVc1DecParam_23(D)->buniform
.L140:
	ldrb	r1, [r3, #3118]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.DQBILEVEL
	add	r2, r4, #12288	@ tmp1187, pVc1DecParam,
	strb	r1, [r4, #24]	@ D.36783, pVc1DecParam_23(D)->dqbilevel
	ldrb	r1, [r3, #3117]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.DQPROFILE
	strb	r1, [r4, #23]	@ D.36783, pVc1DecParam_23(D)->dqprofile
	ldrb	r1, [r3, #2803]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.DQUANT
	strb	r1, [r4, #22]	@ D.36783, pVc1DecParam_23(D)->dquant
	ldrb	r1, [r3, #3116]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.DQUANTFRM
	strb	r1, [r4, #25]	@ D.36783, pVc1DecParam_23(D)->dquantfrm
	ldr	r1, [r3, #3128]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.QuantMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.QuantMode
	strb	r1, [r4, #26]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.QuantMode, pVc1DecParam_23(D)->quantmode
	ldrb	r1, [r3, #3119]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.VOPDQUANT.UseAltQp
	strb	r1, [r4, #21]	@ D.36783, pVc1DecParam_23(D)->usealtqp
	ldrb	r1, [r3, #2970]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVMODE
	strb	r1, [r4, #27]	@ D.36783, pVc1DecParam_23(D)->mvmode
	ldrb	r1, [r3, #2971]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVMODE2
	strb	r1, [r4, #28]	@ D.36783, pVc1DecParam_23(D)->mvmode2
	ldrb	r1, [r3, #2989]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.REFFIELD
	strb	r1, [r4, #34]	@ D.36783, pVc1DecParam_23(D)->reffiled
	ldrb	r1, [r3, #2981]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DMVRANGE
	strb	r1, [r4, #33]	@ D.36783, pVc1DecParam_23(D)->dmvrange
	ldrb	ip, [r3, #2997]	@ zero_extendqisi2	@ D.36781, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	ldr	r1, [r7, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef
	add	r1, r1, ip	@ tmp558, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pRef, D.36781
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.36783, _108->IsHalfPel
	strb	r1, [r4, #30]	@ D.36783, pVc1DecParam_23(D)->colishalfpel
	ldr	r1, [r7, #2512]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm
	ldrb	ip, [r3, #2997]	@ zero_extendqisi2	@ D.36781, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	add	r1, r1, ip	@ tmp570, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].pCurFrm, D.36781
	ldrb	r1, [r1, #1029]	@ zero_extendqisi2	@ D.36783, _113->IsHalfPel
	strb	r1, [r4, #29]	@ D.36783, pVc1DecParam_23(D)->curishalfpel
	ldrb	r1, [r3, #2969]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVRANGE
	strb	r1, [r4, #31]	@ D.36783, pVc1DecParam_23(D)->mvrange
	ldrb	r1, [r3, #2987]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.REFDIST
	strb	r1, [r4, #32]	@ D.36783, pVc1DecParam_23(D)->refdist
	ldrb	r1, [r3, #2980]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TRANSDCTAB
	strb	r1, [r4, #35]	@ D.36783, pVc1DecParam_23(D)->transdctab
	ldrb	r1, [r3, #2804]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.VSTRANSFORM
	strb	r1, [r4, #36]	@ D.36783, pVc1DecParam_23(D)->vstransform
	ldrb	r1, [r3, #2976]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TTMBF
	strb	r1, [r4, #37]	@ D.36783, pVc1DecParam_23(D)->ttmbf
	ldrb	r1, [r3, #2978]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TRANSACFRM
	strb	r1, [r4, #38]	@ D.36783, pVc1DecParam_23(D)->transacfrm
	ldrb	r1, [r3, #2979]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TRANSACFRM2
	strb	r1, [r4, #39]	@ D.36783, pVc1DecParam_23(D)->transacfrm2
	ldrb	r1, [r3, #2977]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.TTFRM
	strb	r1, [r4, #40]	@ D.36783, pVc1DecParam_23(D)->ttfrm
	ldrb	r1, [r3, #2993]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ACPREDMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ACPREDMode
	clz	r1, r1	@ tmp617, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ACPREDMode
	mov	r1, r1, lsr #5	@ tmp617, tmp617,
	strb	r1, [r4, #46]	@ tmp617, pVc1DecParam_23(D)->acpredmodeisskipraw
	ldrb	r1, [r3, #2991]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DIRECTMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DIRECTMBMode
	clz	r1, r1	@ tmp624, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.DIRECTMBMode
	mov	r1, r1, lsr #5	@ tmp624, tmp624,
	strb	r1, [r4, #42]	@ tmp624, pVc1DecParam_23(D)->directmbmodeisskipraw
	ldrb	r1, [r3, #2995]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FIELDTXMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FIELDTXMode
	clz	r1, r1	@ tmp631, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FIELDTXMode
	mov	r1, r1, lsr #5	@ tmp631, tmp631,
	strb	r1, [r4, #44]	@ tmp631, pVc1DecParam_23(D)->fieldtxmodeisskipraw
	ldrb	r1, [r3, #2996]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FORWARDMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FORWARDMBMode
	clz	r1, r1	@ tmp638, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FORWARDMBMode
	mov	r1, r1, lsr #5	@ tmp638, tmp638,
	strb	r1, [r4, #41]	@ tmp638, pVc1DecParam_23(D)->forwardmbmodeisskipraw
	ldrb	r1, [r3, #2990]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTYPEMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTYPEMBMode
	clz	r1, r1	@ tmp645, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTYPEMBMode
	mov	r1, r1, lsr #5	@ tmp645, tmp645,
	strb	r1, [r4, #43]	@ tmp645, pVc1DecParam_23(D)->mvtypembmodeisskipraw
	ldrb	r1, [r3, #2994]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.OVERFLAGSMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.OVERFLAGSMode
	clz	r1, r1	@ tmp652, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.OVERFLAGSMode
	mov	r1, r1, lsr #5	@ tmp652, tmp652,
	strb	r1, [r4, #47]	@ tmp652, pVc1DecParam_23(D)->overflagsmodeisskipraw
	ldrb	r1, [r3, #2992]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.SKIPMBMode, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.SKIPMBMode
	clz	r1, r1	@ tmp659, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.SKIPMBMode
	mov	r1, r1, lsr #5	@ tmp659, tmp659,
	strb	r1, [r4, #45]	@ tmp659, pVc1DecParam_23(D)->skipmbmodeisskipraw
	ldrb	r1, [r3, #2958]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.BFRACTION
	strb	r1, [r4, #50]	@ D.36783, pVc1DecParam_23(D)->bfraction
	ldrb	r1, [r3, #2975]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CBPTAB
	strb	r1, [r4, #49]	@ D.36783, pVc1DecParam_23(D)->cbptab
	ldrb	r1, [r3, #2974]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MVTAB
	strb	r1, [r4, #48]	@ D.36783, pVc1DecParam_23(D)->mvtab
	ldrb	r1, [r3, #2985]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.QMVBPTAB
	strb	r1, [r4, #53]	@ D.36783, pVc1DecParam_23(D)->fourmvbptab
	ldrb	r1, [r3, #2982]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.QMVSWITCH
	strb	r1, [r4, #54]	@ D.36783, pVc1DecParam_23(D)->fourmvswtich
	ldrb	r1, [r3, #2983]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.MBMODETAB
	strb	r1, [r4, #51]	@ D.36783, pVc1DecParam_23(D)->mbmodetab
	ldrb	r1, [r3, #2984]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.BMVBPTAB
	strb	r1, [r4, #52]	@ D.36783, pVc1DecParam_23(D)->twomvbptab
	ldr	r1, [r3, #3104]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ScaleFactor, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ScaleFactor
	str	r1, [r2, #84]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.ScaleFactor, pVc1DecParam_23(D)->ScaleFactor
	ldr	r1, [r6, #2656]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FRFD, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FRFD
	str	r1, [r2, #88]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FRFD, pVc1DecParam_23(D)->FRFD
	ldr	r1, [r6, #2660]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].BRFD, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].BRFD
	str	r1, [r2, #92]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].BRFD, pVc1DecParam_23(D)->BRFD
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r4, #55]	@ D.36783, pVc1DecParam_23(D)->rangemapyflag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r4, #56]	@ D.36783, pVc1DecParam_23(D)->rangemapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r4, #57]	@ D.36783, pVc1DecParam_23(D)->rangemapuvflag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r4, #58]	@ D.36783, pVc1DecParam_23(D)->rangemapuv
	ldr	r1, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM
	cmp	r1, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.FCM,
	beq	.L160	@,
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r0, #297]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r0, #298]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r0, #299]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r0, #300]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapuv
.L145:
	ldrb	r3, [r3, #2624]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvSeqSyntax.PROFILE
	strb	r3, [r0, #302]	@ D.36783, pCur_18->stDispImg.ImageDnr.vc1_profile
	ldrb	r3, [r8, #459]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].CodecVersion
	strb	r3, [r4, #63]	@ D.36783, pVc1DecParam_23(D)->CodecVersion
	b	.L146	@
.L148:
	cmp	r1, #1	@ D.36783,
	beq	.L161	@,
	cmp	r1, #2	@ D.36783,
	movne	r2, #1	@ tmp916,
	strb	r2, [r4, #20]	@ tmp916, pVc1DecParam_23(D)->buniform
	b	.L149	@
.L139:
	cmp	r2, #1	@ D.36783,
	beq	.L162	@,
	cmp	r2, #2	@ D.36783,
	moveq	r2, #0	@ tmp493,
	movne	r2, #1	@ tmp495,
	strb	r2, [r4, #20]	@ tmp495, pVc1DecParam_23(D)->buniform
	b	.L140	@
.L162:
	ldrb	r2, [r3, #2967]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANTIZER, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANTIZER
	adds	r2, r2, #0	@ tmp491, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.PQUANTIZER,
	movne	r2, #1	@ tmp491,
	strb	r2, [r4, #20]	@ tmp491, pVc1DecParam_23(D)->buniform
	b	.L140	@
.L161:
	ldrb	r2, [r3, #2864]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANTIZER, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANTIZER
	adds	r2, r2, #0	@ tmp912, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PQUANTIZER,
	movne	r2, #1	@ tmp912,
	strb	r2, [r4, #20]	@ tmp912, pVc1DecParam_23(D)->buniform
	b	.L149	@
.L160:
	ldrb	r1, [r3, #2997]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
	cmp	r1, #0	@ D.36783,
	bne	.L144	@,
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r0, #297]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r0, #298]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r0, #299]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r0, #300]	@ D.36783, pCur_18->stDispImg.ImageDnr.Range_mapuv
	ldrb	r1, [r3, #2997]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvPicSyntax.CurParity
.L144:
	cmp	r1, #1	@ D.36783,
	bne	.L145	@,
	ldrb	r1, [r3, #2809]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY_FLAG
	strb	r1, [r0, #292]	@ D.36783, pCur_18->stDispImg.ImageDnr.bottom_Range_mapy_flag
	ldrb	r1, [r3, #2810]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPY
	strb	r1, [r0, #293]	@ D.36783, pCur_18->stDispImg.ImageDnr.bottom_Range_mapy
	ldrb	r1, [r3, #2811]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [r0, #294]	@ D.36783, pCur_18->stDispImg.ImageDnr.bottom_Range_mapuv_flag
	ldrb	r1, [r3, #2812]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].AdvEntSyntax.RANGE_MAPUV
	strb	r1, [r0, #295]	@ D.36783, pCur_18->stDispImg.ImageDnr.bottom_Range_mapuv
	b	.L145	@
.L159:
	ldr	ip, [r7, #2568]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj
	movw	r5, #1432	@ tmp1067,
	ldr	r1, [r7, #2584]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj
	ldrb	lr, [r3, #2859]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE
	mla	ip, r5, ip, r8	@ tmp1068, tmp1067, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList0.ImgObj, tmp1183
	sub	lr, lr, #2	@ tmp1087, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.PTYPE,
	mla	r1, r5, r1, r8	@ tmp1079, tmp1067, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].RefList1.ImgObj, tmp1183
	tst	lr, #253	@ tmp1087,
	add	ip, ip, #14400	@ tmp1069, tmp1068,
	ldrneb	lr, [r3, #2858]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].SMPPicSyntax.RANGEREDFRM
	add	r1, r1, #14400	@ tmp1080, tmp1079,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[FwdRefIdx_334].RANGEREDFRM
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ D.36783, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_13(D) + 78272B].FrameObj[BwdRefIdx_338].RANGEREDFRM
	movne	r1, lr	@ D.36781, D.36783
	moveq	r1, ip	@ D.36781, D.36783
	moveq	lr, ip	@ D.36783, D.36783
	b	.L152	@
.L157:
	movw	r2, #1121	@,
	ldr	r1, .L163	@,
	mov	r0, #22	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L164:
	.align	2
.L163:
	.word	.LC24
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
	beq	.L167	@,
	add	r3, r0, #8192	@ tmp168, pCodecInf,
	ldr	r3, [r3, #2552]	@ pCodecInf_3(D)->AdvPicSyntax.FCM, pCodecInf_3(D)->AdvPicSyntax.FCM
	cmp	r3, #3	@ pCodecInf_3(D)->AdvPicSyntax.FCM,
	beq	.L173	@,
.L167:
	ldr	r3, [r7, #2240]	@ pCodecInf_3(D)->CurPicMbNum, pCodecInf_3(D)->CurPicMbNum
	sub	r3, r3, #1	@ D.36804, pCodecInf_3(D)->CurPicMbNum,
	str	r3, [lr, #164]	@ D.36804, pVc1DecParam_14(D)->basic_cfg0
.L168:
	add	ip, r0, #20480	@ tmp194, pCodecInf,
	ldr	r3, [lr, #272]	@ pVc1DecParam_14(D)->Compress_en, pVc1DecParam_14(D)->Compress_en
	mov	r6, #0	@ tmp275,
	movw	r5, #1432	@ tmp240,
	ldr	r2, [ip, #2104]	@ pCodecInf_3(D)->DDR_Stride, pCodecInf_3(D)->DDR_Stride
	and	r8, r3, #1	@ D.36804, pVc1DecParam_14(D)->Compress_en,
	movw	r4, #15112	@ tmp242,
	add	r3, r2, #63	@ tmp198, pCodecInf_3(D)->DDR_Stride,
	cmp	r2, r6	@ pCodecInf_3(D)->DDR_Stride,
	movlt	r2, r3	@ pCodecInf_3(D)->DDR_Stride, tmp198
	mov	r2, r2, asr #6	@ D.36804, pCodecInf_3(D)->DDR_Stride,
	mov	r2, r2, asl #4	@ D.36804, D.36804,
	add	r3, r2, #536870913	@ D.36804, D.36804,
	add	r3, r3, #81920	@ D.36804, D.36804,
	orr	r3, r3, r8, asl #30	@ D.36804, D.36804, D.36804,
	str	r3, [lr, #168]	@ D.36804, pVc1DecParam_14(D)->basic_cfg1
	ldr	r3, [r7, #2236]	@ pCodecInf_3(D)->CurPicMbHeight, pCodecInf_3(D)->CurPicMbHeight
	add	r3, r3, #1	@ D.36804, pCodecInf_3(D)->CurPicMbHeight,
	add	r3, r3, r3, lsr #31	@ tmp217, D.36804, D.36804,
	mov	r3, r3, asr #1	@ D.36804, tmp217,
	mov	r3, r3, asl #5	@ D.36804, D.36804,
	str	r3, [lr, #220]	@ D.36804, pVc1DecParam_14(D)->ystride_1d
	ldr	r3, [ip, #2084]	@ pCodecInf_3(D)->MbHeight, pCodecInf_3(D)->MbHeight
	ldr	r2, [ip, #2080]	@ pCodecInf_3(D)->MbWidth, pCodecInf_3(D)->MbWidth
	add	r3, r3, #1	@ D.36804, pCodecInf_3(D)->MbHeight,
	add	r3, r3, r3, lsr #31	@ tmp228, D.36804, D.36804,
	bic	r3, r3, #1	@ D.36804, tmp228,
	mul	r3, r2, r3	@ D.36805, pCodecInf_3(D)->MbWidth, D.36804
	mov	r3, r3, asl #8	@ D.36805, D.36805,
	str	r3, [lr, #224]	@ D.36805, pVc1DecParam_14(D)->uvoffset_1d
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
.L173:
	ldr	r3, [r7, #2236]	@ pCodecInf_3(D)->CurPicMbHeight, pCodecInf_3(D)->CurPicMbHeight
	ldr	r2, [r7, #2232]	@ pCodecInf_3(D)->CurPicMbWidth, pCodecInf_3(D)->CurPicMbWidth
	add	r3, r3, #1	@ D.36804, pCodecInf_3(D)->CurPicMbHeight,
	add	r3, r3, r3, lsr #31	@ tmp178, D.36804, D.36804,
	mov	r3, r3, asr #1	@ D.36804, tmp178,
	mul	r3, r2, r3	@ mbtodec, pCodecInf_3(D)->CurPicMbWidth, D.36804
	sub	r3, r3, #1	@ D.36805, mbtodec,
	str	r3, [lr, #164]	@ D.36805, pVc1DecParam_14(D)->basic_cfg0
	b	.L168	@
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
	beq	.L186	@,
.L175:
	add	r5, r0, #110592	@ tmp130, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r5, #3128]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L177	@,
	ldr	r0, [r5, #3128]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L187	@,
	mov	r0, #0	@ D.36810,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L186:
	ldrb	r3, [r3, #457]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].LastIs2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].LastIs2ndFld
	cmp	r3, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_3(D) + 78272B].LastIs2ndFld,
	beq	.L175	@,
.L177:
	mov	r0, #1	@ D.36810,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L187:
	add	r1, r4, #112640	@, pCtx,
	ldr	r0, [r5, #3128]	@, pCtx_3(D)->ChanID
	add	r1, r1, #728	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36810,
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
	add	r6, r0, #110592	@ tmp303, pVC1_CTX_S,
	mov	r5, r0	@ pVC1_CTX_S, pVC1_CTX_S
	add	r4, r0, #98304	@ tmp304, pVC1_CTX_S,
	mov	r1, #1	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_NewLogicFs	@
	add	r2, r5, #77824	@ tmp168, pVC1_CTX_S,
	cmp	r0, #0	@ D.36845,
	str	r0, [r4, #2604]	@ D.36845, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].CurFsID
	blt	.L209	@,
	add	r3, r5, #92160	@ tmp254, pVC1_CTX_S,
	add	r2, r2, #14400	@ p_vobuf, tmp168,
	add	r3, r3, #64	@ tmp254, tmp254,
	ldrh	r3, [r3]	@ MEM[(struct VC1_VFMWFRAMEOBJ_S *)pVC1_CTX_S_11(D) + 92224B], MEM[(struct VC1_VFMWFRAMEOBJ_S *)pVC1_CTX_S_11(D) + 92224B]
	cmp	r3, #0	@ MEM[(struct VC1_VFMWFRAMEOBJ_S *)pVC1_CTX_S_11(D) + 92224B],
	beq	.L192	@,
	add	r3, r5, #93184	@ ivtmp.203, pVC1_CTX_S,
	add	r7, r5, #99328	@ tmp302, pVC1_CTX_S,
	add	r3, r3, #472	@ ivtmp.203, ivtmp.203,
	add	r1, r7, #56	@ D.36843, tmp302,
.L195:
	ldrh	ip, [r3]	@ *_59, *_59
	mov	r2, r3	@ D.36840, ivtmp.203
	add	r3, r3, #1424	@ ivtmp.203, ivtmp.203,
	cmp	ip, #0	@ *_59,
	add	r3, r3, #8	@ ivtmp.203, ivtmp.203,
	beq	.L192	@,
	cmp	r3, r1	@ ivtmp.203, D.36843
	bne	.L195	@,
	mov	r1, r0	@, D.36845
	mov	r2, #1	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, .L210	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	add	r3, r5, #92160	@ ivtmp.194, pVC1_CTX_S,
	add	r3, r3, #65	@ ivtmp.194, ivtmp.194,
	add	r1, r7, #57	@ D.36843, tmp302,
	mov	r2, #0	@ tmp305,
.L197:
	strb	r2, [r3]	@ tmp305, MEM[base: _7, offset: 0B]
	add	r3, r3, #1424	@ ivtmp.194, ivtmp.194,
	strb	r2, [r3, #-1425]	@ tmp305, MEM[base: _7, offset: 4294967295B]
	add	r3, r3, #8	@ ivtmp.194, ivtmp.194,
	cmp	r3, r1	@ ivtmp.194, D.36843
	bne	.L197	@,
	mov	r0, #0	@ D.36841,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L192:
	mov	r3, #0	@ k,
	str	r2, [r4, #2512]	@ D.36840, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	mov	r1, #1	@ tmp263,
	strb	r1, [r2, #1]	@ tmp263, _100->is_to_display
.L194:
	ldr	r1, [r4, #2512]	@ D.36840, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	uxtb	r2, r3	@ D.36849, k
	add	r1, r1, r3	@ tmp269, D.36840, k
	strb	r2, [r1, #3]	@ D.36849, _66->IntensityConvertTab
	ldr	r1, [r4, #2512]	@ D.36840, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	add	r1, r1, r3	@ tmp275, D.36840, k
	strb	r2, [r1, #259]	@ D.36849, _69->IntensityConvertTab
	ldr	r1, [r4, #2512]	@ D.36840, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	add	r1, r1, r3	@ tmp281, D.36840, k
	strb	r2, [r1, #515]	@ D.36849, _71->IntensityConvertTab
	ldr	r1, [r4, #2512]	@ D.36840, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pCurFrm
	add	r1, r1, r3	@ tmp287, D.36840, k
	add	r3, r3, #1	@ k, k,
	cmp	r3, #256	@ k,
	strb	r2, [r1, #771]	@ D.36849, _73->IntensityConvertTab
	bne	.L194	@,
	mov	r0, #1	@ D.36841,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L209:
	ldr	r1, .L210+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L190	@,
	ldr	r1, [r7, #192]	@, pImg_21->p_usrdat
	mov	r8, #0	@ tmp196,
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
	str	r8, [r7, #192]	@ tmp196, pImg_21->p_usrdat
	str	r8, [r7, #196]	@ tmp196, pImg_21->p_usrdat
	mov	r2, #1	@,
	str	r8, [r7, #200]	@ tmp196, pImg_21->p_usrdat
	str	r8, [r7, #204]	@ tmp196, pImg_21->p_usrdat
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, #2596]	@ tmp196, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	str	r8, [r4, #2600]	@ tmp196, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@ D.36845, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	str	r0, [r4, #2596]	@ D.36845, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
.L190:
	add	r1, r5, #112640	@, pVC1_CTX_S,
	mov	r5, #0	@ tmp241,
	add	r1, r1, #728	@,,
	str	r5, [r4, #2592]	@ tmp241, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r1, .L210+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36841, tmp241
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L211:
	.align	2
.L210:
	.word	.LC27
	.word	.LC25
	.word	.LC26
	.fnend
	.size	VC1_Vfmw_GetImageBuffer, .-VC1_Vfmw_GetImageBuffer
	.align	2
	.global	VC1_Vfmw_BuildRefList
	.type	VC1_Vfmw_BuildRefList, %function
VC1_Vfmw_BuildRefList:
	.fnstart
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0	@ pCodecInf, pCodecInf
	add	r0, r0, #22528	@, pCodecInf,
	.pad #524
	sub	sp, sp, #524	@,,
	add	r0, r0, #64	@,,
	mov	r10, r1	@ PicType, PicType
	mov	r1, #16	@,
	mov	r4, r2	@ SndFld, SndFld
	mov	r5, r3	@ IsTop, IsTop
	bl	__memzero	@
	add	r0, r9, #22528	@, pCodecInf,
	mov	r1, #16	@,
	add	r0, r0, #80	@,,
	bl	__memzero	@
	ldrsb	r0, [r9, #4]	@ tmp538, pCodecInf_38(D)->PicStructure
	bics	r0, r0, #2	@ tmp540, tmp538,
	bne	.L213	@,
	cmp	r10, #1	@ PicType,
	beq	.L275	@,
	cmp	r10, #2	@ PicType,
	addne	ip, r9, #20480	@ tmp974, pCodecInf,
	beq	.L276	@,
.L222:
	mov	r0, #1	@ D.37571,
	mov	r3, #0	@ tmp709,
	str	r3, [ip, #2132]	@ tmp709, pCodecInf_38(D)->RefList1.ListLen
	str	r3, [ip, #2116]	@ tmp709, pCodecInf_38(D)->RefList0.ListLen
.L256:
	add	sp, sp, #524	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L213:
	add	r6, r9, #8192	@ tmp975, pCodecInf,
	ldrb	r3, [r6, #2512]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.TFF, pCodecInf_38(D)->AdvPicSyntax.TFF
	cmp	r3, #1	@ pCodecInf_38(D)->AdvPicSyntax.TFF,
	ldrb	r3, [r6, #2549]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.CurParity, pCodecInf_38(D)->AdvPicSyntax.CurParity
	beq	.L277	@,
	cmp	r3, #0	@ pCodecInf_38(D)->AdvPicSyntax.CurParity,
	beq	.L278	@,
.L232:
	add	ip, r9, #20480	@ tmp974, pCodecInf,
	ldr	r3, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r8, [r3, #1208]	@ BotRefIdx, _56->img.image_id
	mov	r7, r8	@ BotRefIdx, BotRefIdx
.L231:
	cmp	r10, #1	@ PicType,
	beq	.L279	@,
.L233:
	cmp	r10, #2	@ PicType,
	bne	.L222	@,
	cmp	r4, #0	@ SndFld,
	mov	r2, #0	@ tmp844,
	mov	r3, #1	@ tmp848,
	str	r10, [ip, #2132]	@ PicType, pCodecInf_38(D)->RefList1.ListLen
	str	r10, [ip, #2116]	@ PicType, pCodecInf_38(D)->RefList0.ListLen
	strb	r2, [ip, #2112]	@ tmp844, pCodecInf_38(D)->RefList0.FldFlag
	strb	r3, [ip, #2113]	@ tmp848, pCodecInf_38(D)->RefList0.FldFlag
	beq	.L245	@,
	cmp	r5, r2	@ IsTop,
	beq	.L280	@,
.L245:
	ldr	r3, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	lr, [ip, #2064]	@ D.37569, pCodecInf_38(D)->pCurFrm
	ldr	r2, [r3, #1208]	@ D.37571,
.L273:
	ldr	r0, [ip, #2068]	@ D.37569, pCodecInf_38(D)->pRef
	mov	r1, #1	@ tmp872,
	str	r2, [ip, #2120]	@ D.37571, pCodecInf_38(D)->RefList0.ImgObj
	mov	r3, #0	@ tmp868,
	strb	r1, [ip, #2129]	@ tmp872, pCodecInf_38(D)->RefList1.FldFlag
	strb	r3, [ip, #2128]	@ tmp868, pCodecInf_38(D)->RefList1.FldFlag
	ldr	r1, [r0, #1208]	@ D.37574, _89->img.image_id
	str	r1, [ip, #2136]	@ D.37574, pCodecInf_38(D)->RefList1.ImgObj
	ldr	r0, [r0, #1208]	@ _89->img.image_id, _89->img.image_id
	str	r0, [ip, #2140]	@ _89->img.image_id, pCodecInf_38(D)->RefList1.ImgObj
	ldr	r0, [r6, #2636]	@ D.37572, pCodecInf_38(D)->AdvPicSyntax.INTCOMPFIELD
	ldr	r10, [lr, #1208]	@ D.37574, _379->img.image_id
	cmp	r0, #1	@ D.37572,
	bls	.L281	@,
	bics	r0, r0, #2	@ D.37571, D.37572,
	beq	.L251	@,
.L250:
	movw	ip, #1432	@ tmp886,
	mov	r3, r9	@ ivtmp.762, pCodecInf
	mul	r0, ip, r2	@ D.37568, tmp886, D.37571
	mov	r2, #0	@ i,
	mul	r10, ip, r10	@ D.37568, tmp886, D.37574
	mul	r1, ip, r1	@ D.37568, tmp886, D.37574
	add	ip, r0, #13952	@ D.37568, D.37568,
	str	ip, [sp]	@ D.37568, %sfp
	add	lr, r10, #13952	@ D.37568, D.37568,
	add	ip, r10, #14208	@ D.37568, D.37568,
	add	fp, r10, #14464	@ D.37568, D.37568,
	add	r10, r10, #14720	@ D.37568, D.37568,
	str	r10, [sp, #4]	@ D.37568, %sfp
	ldr	r10, [sp]	@ D.37568, %sfp
	add	r8, r0, #14208	@ D.37568, D.37568,
	add	r7, r0, #14464	@ D.37568, D.37568,
	add	r6, r1, #13952	@ D.37568, D.37568,
	add	r10, r10, #2	@ D.37568, D.37568,
	str	r10, [sp]	@ D.37568, %sfp
	ldr	r10, [sp, #4]	@ D.37568, %sfp
	add	r5, r1, #14208	@ D.37568, D.37568,
	add	r4, r1, #14464	@ D.37568, D.37568,
	add	r0, r0, #14720	@ D.37568, D.37568,
	add	r10, r10, #2	@ D.37568, D.37568,
	str	r10, [sp, #4]	@ D.37568, %sfp
	ldr	r10, [sp]	@ D.37568, %sfp
	add	r8, r8, #2	@ D.37568, D.37568,
	add	r7, r7, #2	@ D.37568, D.37568,
	add	r0, r0, #2	@ D.37568, D.37568,
	add	r9, r9, r10	@ ivtmp.750, pCodecInf, D.37568
	str	r9, [sp]	@ ivtmp.750, %sfp
	ldr	r9, [sp, #4]	@ D.37568, %sfp
	add	r6, r6, #2	@ D.37568, D.37568,
	add	r5, r5, #2	@ D.37568, D.37568,
	add	r4, r4, #2	@ D.37568, D.37568,
	add	lr, lr, #2	@ D.37568, D.37568,
	add	ip, ip, #2	@ D.37568, D.37568,
	add	fp, fp, #2	@ D.37568, D.37568,
	add	r1, r1, #14720	@ D.37568, D.37568,
	add	r8, r3, r8	@ ivtmp.766, ivtmp.762, D.37568
	add	r7, r3, r7	@ ivtmp.780, ivtmp.762, D.37568
	add	r0, r3, r0	@ ivtmp.794, ivtmp.762, D.37568
	add	r6, r3, r6	@ ivtmp.808, ivtmp.762, D.37568
	add	r5, r3, r5	@ ivtmp.823, ivtmp.762, D.37568
	add	r4, r3, r4	@ ivtmp.837, ivtmp.762, D.37568
	add	lr, r3, lr	@ ivtmp.865, ivtmp.762, D.37568
	add	ip, r3, ip	@ ivtmp.880, ivtmp.762, D.37568
	add	r10, r3, fp	@ ivtmp.894, ivtmp.762, D.37568
	add	r9, r3, r9	@ ivtmp.908, ivtmp.762, D.37568
	add	r1, r1, #2	@ D.37568, D.37568,
	add	r1, r3, r1	@ ivtmp.851, ivtmp.762, D.37568
	str	r1, [sp, #4]	@ ivtmp.851, %sfp
.L252:
	ldr	r1, [sp]	@ ivtmp.750, %sfp
	add	r2, r2, #1	@ i, i,
	cmp	r2, #256	@ i,
	add	r3, r3, #1	@ ivtmp.762, ivtmp.762,
	ldrb	fp, [r1, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _792, offset: 0B]
	strb	fp, [r3, #12]	@ D.37573, MEM[base: _793, offset: 13B]
	ldrb	fp, [r8, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _794, offset: 0B]
	str	r1, [sp]	@ ivtmp.750, %sfp
	ldr	r1, [sp, #4]	@ ivtmp.851, %sfp
	strb	fp, [r3, #268]	@ D.37573, MEM[base: _793, offset: 269B]
	ldrb	fp, [r7, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _796, offset: 0B]
	strb	fp, [r3, #524]	@ D.37573, MEM[base: _793, offset: 525B]
	ldrb	fp, [r0, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _798, offset: 0B]
	strb	fp, [r3, #780]	@ D.37573, MEM[base: _793, offset: 781B]
	ldrb	fp, [r6, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _800, offset: 0B]
	strb	fp, [r3, #1036]	@ D.37573, MEM[base: _793, offset: 1037B]
	ldrb	fp, [r5, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _802, offset: 0B]
	strb	fp, [r3, #1292]	@ D.37573, MEM[base: _793, offset: 1293B]
	ldrb	fp, [r4, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _804, offset: 0B]
	strb	fp, [r3, #1548]	@ D.37573, MEM[base: _793, offset: 1549B]
	ldrb	fp, [r1, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _806, offset: 0B]
	strb	fp, [r3, #1804]	@ D.37573, MEM[base: _793, offset: 1805B]
	ldrb	fp, [lr, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _808, offset: 0B]
	str	r1, [sp, #4]	@ ivtmp.851, %sfp
	strb	fp, [r3, #2060]	@ D.37573, MEM[base: _793, offset: 2061B]
	ldrb	fp, [ip, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _810, offset: 0B]
	strb	fp, [r3, #2316]	@ D.37573, MEM[base: _793, offset: 2317B]
	ldrb	fp, [r10, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _812, offset: 0B]
	strb	fp, [r3, #2572]	@ D.37573, MEM[base: _793, offset: 2573B]
	ldrb	fp, [r9, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _814, offset: 0B]
	strb	fp, [r3, #2828]	@ D.37573, MEM[base: _793, offset: 2829B]
	bne	.L252	@,
	mov	r0, #1	@ D.37571,
.L285:
	add	sp, sp, #524	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L278:
	add	ip, r9, #20480	@ tmp974, pCodecInf,
	cmp	r10, #1	@ PicType,
	ldr	r2, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r3, [ip, #2068]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r8, [r2, #1208]	@ BotRefIdx,
	ldr	r7, [r3, #1208]	@ BotRefIdx,
	bne	.L233	@,
.L279:
	ldrb	r3, [r6, #2540]	@ zero_extendqisi2	@ D.37572, pCodecInf_38(D)->AdvPicSyntax.NUMREF
	cmp	r4, #0	@ SndFld,
	mov	r2, #0	@ tmp745,
	strb	r10, [ip, #2113]	@ PicType, pCodecInf_38(D)->RefList0.FldFlag
	add	r3, r3, #1	@ NumOfRef, D.37572,
	str	r2, [ip, #2132]	@ tmp745, pCodecInf_38(D)->RefList1.ListLen
	str	r3, [ip, #2116]	@ NumOfRef, pCodecInf_38(D)->RefList0.ListLen
	strb	r2, [ip, #2112]	@ tmp745, pCodecInf_38(D)->RefList0.FldFlag
	beq	.L234	@,
	cmp	r5, r2	@ IsTop,
	beq	.L282	@,
.L234:
	ldr	r3, [ip, #2072]	@ D.37569, pCodecInf_38(D)->pRef
	ldr	r2, [ip, #2064]	@ D.37569, pCodecInf_38(D)->pCurFrm
	ldr	r5, [r3, #1208]	@ D.37571,
.L272:
	str	r5, [ip, #2120]	@ D.37571, pCodecInf_38(D)->RefList0.ImgObj
	ldr	r3, [r3, #1208]	@ _35->img.image_id, _35->img.image_id
	str	r3, [ip, #2124]	@ _35->img.image_id, pCodecInf_38(D)->RefList0.ImgObj
	ldr	r3, [r6, #2636]	@ D.37572, pCodecInf_38(D)->AdvPicSyntax.INTCOMPFIELD
	ldr	r4, [r2, #1208]	@ D.37574, _381->img.image_id
	cmp	r3, #1	@ D.37572,
	bls	.L283	@,
.L238:
	bics	r2, r3, #2	@ tmp1061, D.37572,
	bne	.L239	@,
	ldrb	r2, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r2, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	beq	.L284	@,
.L239:
	movw	r0, #1432	@ tmp956,
	add	r8, r9, #12	@ ivtmp.574, pCodecInf,
	mul	r5, r0, r5	@ D.37568, tmp956, D.37571
	mov	r3, r9	@ ivtmp.578, pCodecInf
	mul	r0, r0, r4	@ D.37568, tmp956, D.37574
	mov	r1, #0	@ i,
	add	r2, r5, #13952	@ D.37568, D.37568,
	add	r7, r5, #14208	@ D.37568, D.37568,
	add	r6, r5, #14464	@ D.37568, D.37568,
	add	ip, r5, #14720	@ D.37568, D.37568,
	add	r4, r0, #14208	@ D.37568, D.37568,
	add	r5, r0, #13952	@ D.37568, D.37568,
	add	lr, r0, #14464	@ D.37568, D.37568,
	add	r0, r0, #14720	@ D.37568, D.37568,
	add	r2, r2, #2	@ D.37568, D.37568,
	add	r7, r7, #2	@ D.37568, D.37568,
	add	r6, r6, #2	@ D.37568, D.37568,
	add	ip, ip, #2	@ D.37568, D.37568,
	add	r5, r5, #2	@ D.37568, D.37568,
	add	r4, r4, #2	@ D.37568, D.37568,
	add	lr, lr, #2	@ D.37568, D.37568,
	add	r0, r0, #2	@ D.37568, D.37568,
	add	r2, r9, r2	@ ivtmp.566, pCodecInf, D.37568
	add	r7, r9, r7	@ ivtmp.582, ivtmp.578, D.37568
	add	r6, r9, r6	@ ivtmp.596, ivtmp.578, D.37568
	add	ip, r9, ip	@ ivtmp.610, ivtmp.578, D.37568
	add	r5, r9, r5	@ ivtmp.624, ivtmp.578, D.37568
	add	r4, r9, r4	@ ivtmp.639, ivtmp.578, D.37568
	add	lr, r9, lr	@ ivtmp.653, ivtmp.578, D.37568
	add	r0, r9, r0	@ ivtmp.667, ivtmp.578, D.37568
.L244:
	ldrb	r9, [r2, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _659, offset: 0B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, #256	@ i,
	add	r3, r3, #1	@ ivtmp.578, ivtmp.578,
	strb	r9, [r8, #1]!	@ D.37573, MEM[base: _660, offset: 0B]
	ldrb	r9, [r7, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _661, offset: 0B]
	strb	r9, [r3, #268]	@ D.37573, MEM[base: _662, offset: 269B]
	ldrb	r9, [r6, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _663, offset: 0B]
	strb	r9, [r3, #524]	@ D.37573, MEM[base: _662, offset: 525B]
	ldrb	r9, [ip, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _665, offset: 0B]
	strb	r9, [r3, #780]	@ D.37573, MEM[base: _662, offset: 781B]
	ldrb	r9, [r5, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _667, offset: 0B]
	strb	r9, [r3, #2060]	@ D.37573, MEM[base: _662, offset: 2061B]
	ldrb	r9, [r4, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _669, offset: 0B]
	strb	r9, [r3, #2316]	@ D.37573, MEM[base: _662, offset: 2317B]
	ldrb	r9, [lr, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _671, offset: 0B]
	strb	r9, [r3, #2572]	@ D.37573, MEM[base: _662, offset: 2573B]
	ldrb	r9, [r0, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _673, offset: 0B]
	strb	r9, [r3, #2828]	@ D.37573, MEM[base: _662, offset: 2829B]
	bne	.L244	@,
	mov	r0, #1	@ D.37571,
	b	.L285	@
.L275:
	add	r3, r9, #20480	@ tmp542, pCodecInf,
	ldr	r2, [r3, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	str	r10, [r3, #2116]	@ PicType, pCodecInf_38(D)->RefList0.ListLen
	str	r0, [r3, #2132]	@ tmp540, pCodecInf_38(D)->RefList1.ListLen
	strb	r0, [r3, #2112]	@ tmp540, pCodecInf_38(D)->RefList0.FldFlag
	ldr	r4, [r2, #1208]	@ D.37574, _299->img.image_id
	str	r4, [r3, #2120]	@ D.37574, pCodecInf_38(D)->RefList0.ImgObj
	ldrb	r3, [r9, #3096]	@ zero_extendqisi2	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile, pCodecInf_38(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile,
	add	r3, r9, #8192	@ tmp560, pCodecInf,
	beq	.L215	@,
	ldr	r2, [r3, #2552]	@ pCodecInf_38(D)->AdvPicSyntax.FCM, pCodecInf_38(D)->AdvPicSyntax.FCM
	ldrb	r5, [r3, #2524]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	cmp	r2, #2	@ pCodecInf_38(D)->AdvPicSyntax.FCM,
	ldrb	r6, [r3, #2525]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	ldrb	r0, [r3, #2522]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	beq	.L286	@,
.L216:
	cmp	r0, #4	@ MVMODE,
	beq	.L217	@,
.L218:
	movw	r3, #1432	@ tmp929,
	add	r6, r9, #12	@ ivtmp.222, pCodecInf,
	mul	r2, r3, r4	@ D.37568, tmp929, D.37574
	add	r5, r9, #268	@ ivtmp.237, pCodecInf,
	add	r4, r9, #524	@ ivtmp.251, pCodecInf,
	add	lr, r9, #780	@ ivtmp.265, pCodecInf,
	mov	r3, #0	@ i,
	add	ip, r2, #13952	@ D.37568, D.37568,
	add	r0, r2, #14208	@ D.37568, D.37568,
	add	r1, r2, #14464	@ D.37568, D.37568,
	add	r2, r2, #14720	@ D.37568, D.37568,
	add	ip, ip, #2	@ D.37568, D.37568,
	add	r0, r0, #2	@ D.37568, D.37568,
	add	r1, r1, #2	@ D.37568, D.37568,
	add	r2, r2, #2	@ D.37568, D.37568,
	add	ip, r9, ip	@ ivtmp.214, pCodecInf, D.37568
	add	r0, r9, r0	@ ivtmp.230, pCodecInf, D.37568
	add	r1, r9, r1	@ ivtmp.244, pCodecInf, D.37568
	add	r2, r9, r2	@ ivtmp.258, pCodecInf, D.37568
.L220:
	ldrb	r7, [ip, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _409, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, #256	@ i,
	strb	r7, [r6, #1]!	@ D.37573, MEM[base: _410, offset: 0B]
	ldrb	r7, [r0, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _411, offset: 0B]
	strb	r7, [r5, #1]!	@ D.37573, MEM[base: _412, offset: 0B]
	ldrb	r7, [r1, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _413, offset: 0B]
	strb	r7, [r4, #1]!	@ D.37573, MEM[base: _414, offset: 0B]
	ldrb	r7, [r2, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _415, offset: 0B]
	strb	r7, [lr, #1]!	@ D.37573, MEM[base: _416, offset: 0B]
	bne	.L220	@,
	mov	r0, #1	@ D.37571,
	b	.L285	@
.L277:
	cmp	r3, #0	@ pCodecInf_38(D)->AdvPicSyntax.CurParity,
	beq	.L232	@,
	add	ip, r9, #20480	@ tmp974, pCodecInf,
	ldr	r2, [ip, #2068]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r3, [ip, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r8, [r2, #1208]	@ BotRefIdx,
	ldr	r7, [r3, #1208]	@ BotRefIdx,
	b	.L231	@
.L276:
	add	r3, r9, #20480	@ tmp609, pCodecInf,
	mov	r2, #1	@ tmp610,
	ldr	r1, [r3, #2072]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	str	r2, [r3, #2132]	@ tmp610, pCodecInf_38(D)->RefList1.ListLen
	str	r2, [r3, #2116]	@ tmp610, pCodecInf_38(D)->RefList0.ListLen
	strb	r0, [r3, #2112]	@ tmp540, pCodecInf_38(D)->RefList0.FldFlag
	ldr	r2, [r3, #2068]	@ pCodecInf_38(D)->pRef, pCodecInf_38(D)->pRef
	ldr	r5, [r1, #1208]	@ D.37574, _224->img.image_id
	strb	r0, [r3, #2128]	@ tmp540, pCodecInf_38(D)->RefList1.FldFlag
	str	r5, [r3, #2120]	@ D.37574, pCodecInf_38(D)->RefList0.ImgObj
	ldr	r4, [r2, #1208]	@ D.37574, _229->img.image_id
	str	r4, [r3, #2136]	@ D.37574, pCodecInf_38(D)->RefList1.ImgObj
	ldrb	r3, [r9, #3096]	@ zero_extendqisi2	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile, pCodecInf_38(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInf_38(D)->PreParseInfo.IsAdvProfile,
	add	r3, r9, #8192	@ tmp636, pCodecInf,
	ldrneb	r6, [r3, #2524]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	ldrneb	r7, [r3, #2525]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	ldreqb	r6, [r3, #2421]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->SMPPicSyntax.LUMSCALE
	ldreqb	r7, [r3, #2422]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->SMPPicSyntax.LUMSHIFT
	ldrneb	r3, [r3, #2522]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	ldreqb	r3, [r3, #2419]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->SMPPicSyntax.MVMODE
	cmp	r3, #4	@ MVMODE,
	beq	.L287	@,
.L225:
	movw	ip, #1432	@ tmp938,
	add	r8, r9, #12	@ ivtmp.343, pCodecInf,
	mul	r5, ip, r5	@ D.37568, tmp938, D.37574
	mov	r3, r9	@ ivtmp.347, pCodecInf
	mul	ip, ip, r4	@ D.37568, tmp938, D.37574
	mov	r1, #0	@ i,
	add	r2, r5, #13952	@ D.37568, D.37568,
	add	r7, r5, #14208	@ D.37568, D.37568,
	add	r6, r5, #14464	@ D.37568, D.37568,
	add	r0, r5, #14720	@ D.37568, D.37568,
	add	r4, ip, #14208	@ D.37568, D.37568,
	add	r5, ip, #13952	@ D.37568, D.37568,
	add	lr, ip, #14464	@ D.37568, D.37568,
	add	ip, ip, #14720	@ D.37568, D.37568,
	add	r2, r2, #2	@ D.37568, D.37568,
	add	r7, r7, #2	@ D.37568, D.37568,
	add	r6, r6, #2	@ D.37568, D.37568,
	add	r0, r0, #2	@ D.37568, D.37568,
	add	r5, r5, #2	@ D.37568, D.37568,
	add	r4, r4, #2	@ D.37568, D.37568,
	add	lr, lr, #2	@ D.37568, D.37568,
	add	ip, ip, #2	@ D.37568, D.37568,
	add	r2, r9, r2	@ ivtmp.335, pCodecInf, D.37568
	add	r7, r9, r7	@ ivtmp.351, ivtmp.347, D.37568
	add	r6, r9, r6	@ ivtmp.365, ivtmp.347, D.37568
	add	r0, r9, r0	@ ivtmp.379, ivtmp.347, D.37568
	add	r5, r9, r5	@ ivtmp.393, ivtmp.347, D.37568
	add	r4, r9, r4	@ ivtmp.408, ivtmp.347, D.37568
	add	lr, r9, lr	@ ivtmp.422, ivtmp.347, D.37568
	add	ip, r9, ip	@ ivtmp.436, ivtmp.347, D.37568
.L227:
	ldrb	r9, [r2, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _512, offset: 0B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, #256	@ i,
	add	r3, r3, #1	@ ivtmp.347, ivtmp.347,
	strb	r9, [r8, #1]!	@ D.37573, MEM[base: _513, offset: 0B]
	ldrb	r9, [r7, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _514, offset: 0B]
	strb	r9, [r3, #268]	@ D.37573, MEM[base: _515, offset: 269B]
	ldrb	r9, [r6, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _516, offset: 0B]
	strb	r9, [r3, #524]	@ D.37573, MEM[base: _515, offset: 525B]
	ldrb	r9, [r0, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _518, offset: 0B]
	strb	r9, [r3, #780]	@ D.37573, MEM[base: _515, offset: 781B]
	ldrb	r9, [r5, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _520, offset: 0B]
	strb	r9, [r3, #1036]	@ D.37573, MEM[base: _515, offset: 1037B]
	ldrb	r9, [r4, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _522, offset: 0B]
	strb	r9, [r3, #1292]	@ D.37573, MEM[base: _515, offset: 1293B]
	ldrb	r9, [lr, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _524, offset: 0B]
	strb	r9, [r3, #1548]	@ D.37573, MEM[base: _515, offset: 1549B]
	ldrb	r9, [ip, #1]!	@ zero_extendqisi2	@ D.37573, MEM[base: _526, offset: 0B]
	strb	r9, [r3, #1804]	@ D.37573, MEM[base: _515, offset: 1805B]
	bne	.L227	@,
	mov	r0, #1	@ D.37571,
	b	.L285	@
.L215:
	ldrb	r5, [r3, #2421]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->SMPPicSyntax.LUMSCALE
	ldrb	r6, [r3, #2422]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->SMPPicSyntax.LUMSHIFT
	ldrb	r0, [r3, #2419]	@ zero_extendqisi2	@ MVMODE, pCodecInf_38(D)->SMPPicSyntax.MVMODE
	b	.L216	@
.L251:
	ldrb	r3, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r3, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	bne	.L250	@,
	b	.L256	@
.L282:
	ldr	r2, [ip, #2064]	@ D.37569, pCodecInf_38(D)->pCurFrm
	ldr	r3, [ip, #2072]	@ D.37569, pCodecInf_38(D)->pRef
	ldr	r5, [r2, #1208]	@ D.37571, _146->img.image_id
	b	.L272	@
.L280:
	ldr	lr, [ip, #2064]	@ D.37569, pCodecInf_38(D)->pCurFrm
	ldr	r2, [lr, #1208]	@ D.37571, _79->img.image_id
	b	.L273	@
.L283:
	ldrb	r3, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r3, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	bne	.L239	@,
	ldrb	r10, [r6, #2524]	@ zero_extendqisi2	@ D.37572, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	mov	r3, #0	@,
	ldrb	fp, [r6, #2525]	@ zero_extendqisi2	@ D.37572, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	add	r0, sp, #8	@,,
	mov	r1, r10	@, D.37572
	mov	r2, fp	@, D.37572
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, fp	@, D.37572
	mov	r1, r10	@, D.37572
	add	r0, sp, #264	@,,
	mov	r3, #1	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r2, #1432	@ tmp784,
	mul	r2, r2, r8	@ D.37568, tmp784, BotRefIdx
	mov	r0, #0	@ i,
	add	r1, r2, #13952	@ D.37568, D.37568,
	add	r2, r2, #14208	@ D.37568, D.37568,
	add	r1, r1, #3	@ D.37568, D.37568,
	add	r2, r2, #3	@ D.37568, D.37568,
	add	r1, r9, r1	@ ivtmp.717, pCodecInf, D.37568
	add	r2, r9, r2	@ ivtmp.731, pCodecInf, D.37568
.L240:
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.37572, MEM[base: _703, offset: 0B]
	add	ip, sp, #520	@ tmp1074,,
	add	r0, r0, #1	@ i, i,
	add	r3, ip, r3	@ tmp790, tmp1074, D.37572
	cmp	r0, #256	@ i,
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp791, LUTY
	strb	r3, [r1], #1	@ tmp791, MEM[base: _703, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.37572, MEM[base: _705, offset: 0B]
	add	r3, ip, r3	@ tmp794, tmp1075, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp795, LUTUV
	strb	r3, [r2], #1	@ tmp795, MEM[base: _705, offset: 0B]
	bne	.L240	@,
	ldr	r3, [r6, #2636]	@ D.37572, pCodecInf_38(D)->AdvPicSyntax.INTCOMPFIELD
	b	.L238	@
.L281:
	ldrb	r0, [r6, #2522]	@ zero_extendqisi2	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE, pCodecInf_38(D)->AdvPicSyntax.MVMODE
	cmp	r0, #4	@ pCodecInf_38(D)->AdvPicSyntax.MVMODE,
	bne	.L250	@,
	mov	r0, r3	@ D.37571, tmp868
	b	.L256	@
.L284:
	cmp	r3, #0	@ D.37572,
	add	r0, sp, #8	@,,
	mov	r3, #0	@,
	ldreqb	r8, [r6, #2640]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE2
	ldrneb	r8, [r6, #2524]	@ zero_extendqisi2	@ LUMSCALE, pCodecInf_38(D)->AdvPicSyntax.LUMSCALE
	ldreqb	r6, [r6, #2644]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT2
	ldrneb	r6, [r6, #2525]	@ zero_extendqisi2	@ LUMSHIFT, pCodecInf_38(D)->AdvPicSyntax.LUMSHIFT
	mov	r1, r8	@, LUMSCALE
	mov	r2, r6	@, LUMSHIFT
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r6	@, LUMSHIFT
	mov	r1, r8	@, LUMSCALE
	mov	r3, #1	@,
	add	r0, sp, #264	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp815,
	mul	r2, r3, r7	@ D.37568, tmp815, BotRefIdx
	mov	r0, #0	@ i,
	add	r1, r2, #14464	@ D.37568, D.37568,
	add	r2, r2, #14720	@ D.37568, D.37568,
	add	r1, r1, #3	@ D.37568, D.37568,
	add	r2, r2, #3	@ D.37568, D.37568,
	add	r1, r9, r1	@ ivtmp.685, pCodecInf, D.37568
	add	r2, r9, r2	@ ivtmp.699, pCodecInf, D.37568
.L243:
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.37572, MEM[base: _687, offset: 0B]
	add	ip, sp, #520	@ tmp1076,,
	add	r0, r0, #1	@ i, i,
	add	r3, ip, r3	@ tmp821, tmp1076, D.37572
	cmp	r0, #256	@ i,
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp822, LUTY
	strb	r3, [r1], #1	@ tmp822, MEM[base: _687, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.37572, MEM[base: _689, offset: 0B]
	add	r3, ip, r3	@ tmp825, tmp1077, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp826, LUTUV
	strb	r3, [r2], #1	@ tmp826, MEM[base: _689, offset: 0B]
	bne	.L243	@,
	b	.L239	@
.L286:
	ldr	r3, [r3, #2628]	@ pCodecInf_38(D)->AdvPicSyntax.INTCOMP, pCodecInf_38(D)->AdvPicSyntax.INTCOMP
	cmp	r3, #1	@ pCodecInf_38(D)->AdvPicSyntax.INTCOMP,
	bne	.L216	@,
.L217:
	mov	r3, #0	@,
	mov	r2, r6	@, LUMSHIFT
	mov	r1, r5	@, LUMSCALE
	add	r0, sp, #8	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r6	@, LUMSHIFT
	mov	r1, r5	@, LUMSCALE
	mov	r3, #1	@,
	add	r0, sp, #264	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp579,
	mul	r3, r3, r4	@ D.37568, tmp579, D.37574
	mov	lr, #0	@ i,
	add	ip, r3, #13952	@ D.37568, D.37568,
	add	r0, r3, #14208	@ D.37568, D.37568,
	add	r1, r3, #14464	@ D.37568, D.37568,
	add	r3, r3, #14720	@ D.37568, D.37568,
	add	ip, ip, #3	@ D.37568, D.37568,
	add	r0, r0, #3	@ D.37568, D.37568,
	add	r1, r1, #3	@ D.37568, D.37568,
	add	r3, r3, #3	@ D.37568, D.37568,
	add	ip, r9, ip	@ ivtmp.276, pCodecInf, D.37568
	add	r0, r9, r0	@ ivtmp.290, pCodecInf, D.37568
	add	r1, r9, r1	@ ivtmp.303, pCodecInf, D.37568
	add	r2, r9, r3	@ ivtmp.316, pCodecInf, D.37568
.L219:
	ldrb	r3, [ip]	@ zero_extendqisi2	@ D.37572, MEM[base: _443, offset: 0B]
	add	r5, sp, #520	@ tmp1062,,
	add	lr, lr, #1	@ i, i,
	add	r3, r5, r3	@ tmp589, tmp1062, D.37572
	cmp	lr, #256	@ i,
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp590, LUTY
	strb	r3, [ip], #1	@ tmp590, MEM[base: _443, offset: 0B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.37572, MEM[base: _445, offset: 0B]
	add	r3, r5, r3	@ tmp593, tmp1063, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp594, LUTUV
	strb	r3, [r0], #1	@ tmp594, MEM[base: _445, offset: 0B]
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.37572, MEM[base: _447, offset: 0B]
	add	r3, r5, r3	@ tmp597, tmp1064, D.37572
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp598, LUTY
	strb	r3, [r1], #1	@ tmp598, MEM[base: _447, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.37572, MEM[base: _449, offset: 0B]
	add	r3, r5, r3	@ tmp601, tmp1065, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp602, LUTUV
	strb	r3, [r2], #1	@ tmp602, MEM[base: _449, offset: 0B]
	bne	.L219	@,
	b	.L218	@
.L287:
	mov	r2, r7	@, LUMSHIFT
	mov	r1, r6	@, LUMSCALE
	mov	r3, #0	@,
	add	r0, sp, #8	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r7	@, LUMSHIFT
	mov	r1, r6	@, LUMSCALE
	mov	r3, #1	@,
	add	r0, sp, #264	@,,
	mov	r10, #0	@ i,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp649,
	mul	r2, r3, r5	@ D.37568, tmp649, D.37574
	mul	r3, r3, r4	@ D.37568, tmp649, D.37574
	add	r8, r2, #13952	@ D.37568, D.37568,
	add	r7, r2, #14208	@ D.37568, D.37568,
	add	r6, r2, #14464	@ D.37568, D.37568,
	add	r2, r2, #14720	@ D.37568, D.37568,
	add	lr, r3, #13952	@ D.37568, D.37568,
	add	ip, r3, #14208	@ D.37568, D.37568,
	add	r0, r3, #14464	@ D.37568, D.37568,
	add	r3, r3, #14720	@ D.37568, D.37568,
	add	r2, r2, #3	@ D.37568, D.37568,
	add	r8, r8, #3	@ D.37568, D.37568,
	add	r7, r7, #3	@ D.37568, D.37568,
	add	r6, r6, #3	@ D.37568, D.37568,
	add	lr, lr, #3	@ D.37568, D.37568,
	add	ip, ip, #3	@ D.37568, D.37568,
	add	r0, r0, #3	@ D.37568, D.37568,
	add	r3, r3, #3	@ D.37568, D.37568,
	add	r1, r9, r2	@ ivtmp.494, pCodecInf, D.37568
	add	r8, r9, r8	@ ivtmp.454, pCodecInf, D.37568
	add	r7, r9, r7	@ ivtmp.468, pCodecInf, D.37568
	add	r6, r9, r6	@ ivtmp.481, pCodecInf, D.37568
	add	lr, r9, lr	@ ivtmp.507, pCodecInf, D.37568
	add	ip, r9, ip	@ ivtmp.521, pCodecInf, D.37568
	add	r0, r9, r0	@ ivtmp.534, pCodecInf, D.37568
	add	r2, r9, r3	@ ivtmp.547, pCodecInf, D.37568
.L226:
	ldrb	r3, [r8]	@ zero_extendqisi2	@ D.37572, MEM[base: _582, offset: 0B]
	add	fp, sp, #520	@ tmp1066,,
	add	r10, r10, #1	@ i, i,
	add	r3, fp, r3	@ tmp668, tmp1066, D.37572
	cmp	r10, #256	@ i,
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp669, LUTY
	strb	r3, [r8], #1	@ tmp669, MEM[base: _582, offset: 0B]
	ldrb	r3, [r7]	@ zero_extendqisi2	@ D.37572, MEM[base: _584, offset: 0B]
	add	r3, fp, r3	@ tmp672, tmp1067, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp673, LUTUV
	strb	r3, [r7], #1	@ tmp673, MEM[base: _584, offset: 0B]
	ldrb	r3, [r6]	@ zero_extendqisi2	@ D.37572, MEM[base: _586, offset: 0B]
	add	r3, fp, r3	@ tmp676, tmp1068, D.37572
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp677, LUTY
	strb	r3, [r6], #1	@ tmp677, MEM[base: _586, offset: 0B]
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.37572, MEM[base: _588, offset: 0B]
	add	r3, fp, r3	@ tmp680, tmp1069, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp681, LUTUV
	strb	r3, [r1], #1	@ tmp681, MEM[base: _588, offset: 0B]
	ldrb	r3, [lr]	@ zero_extendqisi2	@ D.37572, MEM[base: _590, offset: 0B]
	add	r3, fp, r3	@ tmp684, tmp1070, D.37572
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp685, LUTY
	strb	r3, [lr], #1	@ tmp685, MEM[base: _590, offset: 0B]
	ldrb	r3, [ip]	@ zero_extendqisi2	@ D.37572, MEM[base: _592, offset: 0B]
	add	r3, fp, r3	@ tmp688, tmp1071, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp689, LUTUV
	strb	r3, [ip], #1	@ tmp689, MEM[base: _592, offset: 0B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.37572, MEM[base: _594, offset: 0B]
	add	r3, fp, r3	@ tmp692, tmp1072, D.37572
	ldrb	r3, [r3, #-512]	@ zero_extendqisi2	@ tmp693, LUTY
	strb	r3, [r0], #1	@ tmp693, MEM[base: _594, offset: 0B]
	ldrb	r3, [r2]	@ zero_extendqisi2	@ D.37572, MEM[base: _596, offset: 0B]
	add	r3, fp, r3	@ tmp696, tmp1073, D.37572
	ldrb	r3, [r3, #-256]	@ zero_extendqisi2	@ tmp697, LUTUV
	strb	r3, [r2], #1	@ tmp697, MEM[base: _596, offset: 0B]
	bne	.L226	@,
	b	.L225	@
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
	add	r6, r0, #77824	@ tmp1438, pVC1_CTX_S,
	add	r4, r0, #98304	@ tmp1439, pVC1_CTX_S,
	.pad #44
	sub	sp, sp, #44	@,,
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	mov	r5, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldr	r7, [r4, #2528]	@ MEM_WIDTH_MB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidth
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L289	@,
	add	r3, r0, #86016	@ tmp455, pVC1_CTX_S,
	ldr	r8, [r4, #2532]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight
	movw	r2, #3334	@ tmp474,
	movw	r1, #3332	@ tmp488,
	ldr	r3, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM,
	add	r3, r6, #448	@ tmp471, tmp1438,
	addeq	r8, r8, #1	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight,
	ldrh	r2, [r3, r2]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT
	addeq	r8, r8, r8, lsr #31	@ tmp465, D.37595, D.37595,
	ldrh	r3, [r3, r1]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SynNew.AdvSeqSyntax.MAX_CODED_WIDTH
	moveq	r8, r8, asr #1	@ MbHeight, tmp465,
	adds	r10, r2, #15	@ D.37595, D.37595,
	addmi	r10, r2, #30	@, D.37595, D.37595,
	adds	r0, r3, #15	@ D.37595, D.37595,
	mul	r8, r8, r7	@ TotalMbNum, MbHeight, MEM_WIDTH_MB
	addmi	r0, r3, #30	@, D.37595, D.37595,
	mov	r10, r10, asr #4	@ MEM_HEIGHT_MB, D.37595,
	mov	r0, r0, asr #4	@ MEM_WIDTH_MB, D.37595,
.L352:
	mov	fp, r0, asl #4	@ D.37595, MEM_WIDTH_MB,
	movw	r2, #8160	@ tmp496,
	sub	r3, fp, #32	@ D.37597, D.37595,
	cmp	r3, r2	@ D.37597, tmp496
	mov	r3, r10, asl #4	@ D.37595, MEM_HEIGHT_MB,
	bhi	.L292	@,
	sub	r1, r3, #32	@ D.37597, D.37595,
	cmp	r1, r2	@ D.37597, tmp496
	bhi	.L292	@,
	ldr	r3, [r4, #2540]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast
	cmp	r3, r10	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast, MEM_HEIGHT_MB
	beq	.L408	@,
.L295:
	ldr	r2, [r4, #2532]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight
	mov	r3, r7, asl #4	@ D.37595, MEM_WIDTH_MB,
	add	r3, r3, #63	@ D.37595, D.37595,
	str	r7, [r4, #2536]	@ MEM_WIDTH_MB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast
	bic	r3, r3, #63	@ D.37595, D.37595,
	str	r3, [r4, #2552]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].DDR_Stride
	str	r2, [r4, #2540]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast
	ldrb	r3, [r6, #456]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld,
	ldreq	r2, [r5]	@ D.37598, pVC1_CTX_S_34(D)->pstExtraData
	beq	.L298	@,
	mov	r3, #1	@ SizeChanged,
.L297:
	ldrb	r2, [r6, #451]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Last_Struct_IPB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Last_Struct_IPB
	cmp	r2, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Last_Struct_IPB,
	beq	.L409	@,
.L398:
	ldr	r2, [r5]	@ D.37598, pVC1_CTX_S_34(D)->pstExtraData
.L299:
	ldrb	r1, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	eor	r1, r1, #8	@ tmp563, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	ubfx	r1, r1, #3, #1	@ tmp565, tmp563,,
	orrs	r3, r3, r1	@ tmp1442, D.37605, tmp565
	bne	.L298	@,
	ldr	r3, [r2, #728]	@ _572->s32DSDWaitFlag, _572->s32DSDWaitFlag
	cmp	r3, #1	@ _572->s32DSDWaitFlag,
	beq	.L298	@,
.L302:
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_Vfmw_GetImageBuffer	@
	subs	r9, r0, #0	@ D.37590,
	beq	.L410	@,
	add	r9, r5, #110592	@ tmp1436, pVC1_CTX_S,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	ip, r0, #0	@ pImg,
	beq	.L320	@,
	ldr	lr, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	mvn	r2, #0	@ tmp782,
	mvn	r3, #0	@,
	ldr	r1, .L420	@,
	mov	r0, #29	@,
	ldrd	r10, [lr, #56]	@ D.37604, pVC1_CTX_S_34(D)->pstExtraData,
	strd	r10, [ip, #8]	@ D.37604, pImg,
	ldr	lr, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldrd	r10, [lr, #72]	@ D.37604, pVC1_CTX_S_34(D)->pstExtraData,
	strd	r10, [ip, #16]	@ D.37604, pImg,
	ldr	lr, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldrd	r10, [lr, #88]	@ D.37604, pVC1_CTX_S_34(D)->pstExtraData,
	strd	r10, [ip, #24]	@ D.37604, pImg,
	ldr	lr, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	lr, [lr, #104]	@ D.37603, _201->DispEnableFlag
	str	lr, [ip, #68]	@ D.37603, pImg_191->DispEnableFlag
	ldr	lr, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	lr, [lr, #108]	@ D.37603, _204->DispFrameDistance
	str	lr, [ip, #72]	@ D.37603, pImg_191->DispFrameDistance
	ldr	lr, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	lr, [lr, #112]	@ D.37603, _207->DistanceBeforeFirstFrame
	str	lr, [ip, #76]	@ D.37603, pImg_191->DistanceBeforeFirstFrame
	ldr	lr, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	lr, [lr, #128]	@ D.37603, _210->GopNum
	str	lr, [ip, #80]	@ D.37603, pImg_191->GopNum
	ldr	lr, [r5]	@ D.37598, pVC1_CTX_S_34(D)->pstExtraData
	strd	r2, [lr, #56]	@ tmp782, D.37598,
	ldrd	r10, [ip, #16]	@ pImg_191->Usertag, pImg,
	ldrd	r2, [ip, #8]	@ pImg_191->PTS, pImg,
	strd	r10, [sp]	@ pImg_191->Usertag,
	bl	dprint_vfmw	@
.L320:
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L321	@,
	add	r3, r5, #86016	@ tmp794, pVC1_CTX_S,
	ldr	r3, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM,
	bne	.L321	@,
	ldr	r3, .L420+4	@ tmp796,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	ldreq	r2, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	streq	r3, [r2, #1160]	@ USE_FF_APT_EN, _221->img.is_fld_save
	beq	.L322	@,
.L321:
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	mov	r2, #0	@ tmp807,
	str	r2, [r3, #1160]	@ tmp807, _223->img.is_fld_save
.L322:
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	mov	r2, #0	@ tmp812,
	strb	r2, [r3, #2]	@ tmp812, _225->RANGEREDFRM
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, r2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L323	@,
	add	r3, r5, #86016	@ tmp822, pVC1_CTX_S,
	ldrb	r2, [r3, #2620]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPSeqSyntax.RANGERED, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPSeqSyntax.RANGERED
	cmp	r2, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPSeqSyntax.RANGERED,
	ldreqb	r2, [r3, #2858]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.RANGEREDFRM
	ldreq	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	streqb	r2, [r3, #2]	@ D.37593, _229->RANGEREDFRM
.L323:
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ D.37593,
	cmpne	r3, #1	@, D.37593,
	ldr	r3, [r4, #2592]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum
	movls	r10, #1	@ tmp841,
	movhi	r10, #0	@ tmp841,
	bls	.L411	@,
	cmp	r3, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum,
	bls	.L412	@,
.L328:
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
	moveq	r3, #1	@ tmp988,
	movne	r3, #0	@ tmp988,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp994, tmp988
	mov	ip, r0	@ pBwd,
	cmp	r3, #0	@ tmp994,
	bne	.L413	@,
	ldrb	r3, [r6, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L334	@,
	add	r3, r5, #86016	@ tmp1037, pVC1_CTX_S,
	ldr	r3, [r3, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM,
	beq	.L414	@,
.L334:
	mov	r3, #0	@ tmp1042,
.L401:
	str	r3, [r10, #136]	@ tmp1042, pCur_277->stDispImg.is_fld_save
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType,
	beq	.L415	@,
.L336:
	ldr	r3, [r10, #408]	@ D.37606, pCur_277->pstDecodeFs
	cmp	r3, #0	@ D.37606,
	beq	.L337	@,
	ldr	r2, [r10, #416]	@ pCur_277->pstTfOutFs, pCur_277->pstTfOutFs
	cmp	r2, #0	@ pCur_277->pstTfOutFs,
	beq	.L337	@,
	ldr	r2, [r10, #412]	@ pCur_277->pstDispOutFs, pCur_277->pstDispOutFs
	cmp	r2, #0	@ pCur_277->pstDispOutFs,
	beq	.L337	@,
	ldr	r2, [ip, #408]	@ D.37606, pBwd_285->pstDecodeFs
	add	r9, r5, #12288	@ tmp1440, pVC1_CTX_S,
	cmp	r2, #0	@ D.37606,
	ldrne	r3, [r2, #12]	@ D.37591, _307->PhyAddr
	ldreq	r3, [r3, #12]	@ D.37591, _304->PhyAddr
	str	r3, [r9, #112]	@ D.37591, pVC1_CTX_S_34(D)->Vc1DecParam.BwdRefAddr
	ldr	r3, [fp, #408]	@ D.37606, pFwd_281->pstDecodeFs
	cmp	r3, #0	@ D.37606,
	ldreq	r3, [r10, #408]	@ pCur_277->pstDecodeFs, pCur_277->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.37591,
	str	r3, [r9, #108]	@ D.37591, pVC1_CTX_S_34(D)->Vc1DecParam.FwdRefAddr
	ldr	r3, [r10, #408]	@ pCur_277->pstDecodeFs, pCur_277->pstDecodeFs
	ldr	r3, [r3, #12]	@ _320->PhyAddr, _320->PhyAddr
	str	r3, [r6, #224]	@ _320->PhyAddr, pVC1_CTX_S_34(D)->Vc1DecParam.ystaddr_1d
	ldr	r3, [r10, #420]	@ pCur_277->PmvAddr, pCur_277->PmvAddr
	str	r3, [r9, #116]	@ pCur_277->PmvAddr, pVC1_CTX_S_34(D)->Vc1DecParam.CurrColmbAddr
	ldr	r3, [ip, #420]	@ pBwd_285->PmvAddr, pBwd_285->PmvAddr
	str	r3, [r9, #120]	@ pBwd_285->PmvAddr, pVC1_CTX_S_34(D)->Vc1DecParam.BwdColmbAddr
	ldr	r3, [r10, #412]	@ pCur_277->pstDispOutFs, pCur_277->pstDispOutFs
	ldr	r3, [r3, #12]	@ _330->PhyAddr, _330->PhyAddr
	str	r3, [r9, #104]	@ _330->PhyAddr, pVC1_CTX_S_34(D)->Vc1DecParam.CurFrmImgLuma2dPhyAddr
	ldr	r3, [r10, #412]	@ pCur_277->pstDispOutFs, pCur_277->pstDispOutFs
	ldr	r3, [r3, #20]	@ _334->Stride, _334->Stride
	str	r3, [r6, #184]	@ _334->Stride, pVC1_CTX_S_34(D)->Vc1DecParam.VahbStride
	ldr	r3, [r10, #412]	@ pCur_277->pstDispOutFs, pCur_277->pstDispOutFs
	ldr	r3, [r3, #32]	@ _338->ChromOffset, _338->ChromOffset
	str	r3, [r6, #188]	@ _338->ChromOffset, pVC1_CTX_S_34(D)->Vc1DecParam.uv_offset
	ldr	r3, [r10, #408]	@ pCur_277->pstDecodeFs, pCur_277->pstDecodeFs
	ldr	r10, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r0, [r3, #12]	@, _343->PhyAddr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #1064]	@, _342->img.luma_vir_addr
	ldr	r0, [r9, #108]	@, pVC1_CTX_S_34(D)->Vc1DecParam.FwdRefAddr
	ldr	r10, [r4, #2520]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #1064]	@, _348->img.luma_vir_addr
	ldr	r0, [r9, #112]	@, pVC1_CTX_S_34(D)->Vc1DecParam.BwdRefAddr
	ldr	r9, [r4, #2516]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #1064]	@, _354->img.luma_vir_addr
.L301:
	movw	r3, #3544	@ tmp1169,
	ldrsb	r3, [r6, r3]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L343	@,
	ldr	r1, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	add	r2, r5, #86016	@ tmp1183, pVC1_CTX_S,
	strb	r3, [r1, #1027]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PreParseInfo.IsAdvProfile, _393->PicStruct
	ldr	r1, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldrb	r0, [r2, #2859]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.PTYPE
	strb	r0, [r1, #1028]	@ D.37593, _395->PicCodingType
	ldrb	r0, [r2, #2867]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE
	ldr	r1, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	sub	ip, r0, #2	@ tmp1194, D.37593,
	cmp	ip, #1	@ tmp1194,
	movls	r3, #1	@ D.37593,
	bls	.L344	@,
	cmp	r0, #4	@ D.37593,
	beq	.L416	@,
.L344:
	add	r7, r5, #110592	@ tmp1221, pVC1_CTX_S,
	strb	r3, [r1, #1030]	@ D.37593, _399->IsHalfPel
	strb	r3, [r1, #1029]	@ D.37593, _399->IsHalfPel
	mov	r2, #1	@ tmp1211,
	mov	r3, #0	@ tmp1216,
	str	r2, [r4, #2612]	@ tmp1211, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcNum
	strb	r3, [r4, #2624]	@ tmp1216, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].SlcNo
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	ldr	r8, [r7, #2620]	@ D.37592, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsVirAddr
	bl	BsPos	@
	add	r3, r0, #7	@ tmp1231, D.37595,
	cmp	r0, #0	@ D.37595,
	movlt	r0, r3	@ D.37595, tmp1231
	add	r0, r8, r0, asr #3	@ D.37592, D.37592, D.37595,
	str	r0, [r4, #2616]	@ D.37592, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].pStream
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	ldr	r8, [r7, #2632]	@ D.37603, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsPhyAddr
	bl	BsPos	@
	add	r3, r0, #7	@ tmp1247, D.37595,
	cmp	r0, #0	@ D.37595,
	movlt	r0, r3	@ D.37595, tmp1247
	add	r0, r8, r0, asr #3	@ D.37603, D.37603, D.37595,
	str	r0, [r4, #2628]	@ D.37603, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].Phy_addr
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	bl	BsPos	@
	and	r0, r0, #7	@ D.37595,,
	str	r0, [r4, #2632]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].BitOffset
	ldr	r0, [r6, #3576]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pBs
	ldr	r8, [r7, #2640]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsLength, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsLength
	bl	BsPos	@
	mov	r8, r8, asl #3	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].stCurPacket.BsLength,
	rsb	r0, r0, r8	@ D.37595,, D.37595
	str	r0, [r4, #2636]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].Len
	ldr	r2, [r7, #2680]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbWidth, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbWidth
	ldr	r3, [r7, #2684]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbHeight
	mul	r3, r3, r2	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbHeight, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurPicMbWidth
	sub	r3, r3, #1	@ D.37595, D.37595,
	str	r3, [r4, #2640]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[0].SlcEndMbn
	ldrb	r1, [r6, #450]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
.L345:
	add	r0, r6, #448	@, tmp1438,
	mov	r3, #1	@,
	mov	r2, #0	@,
	bl	VC1_Vfmw_BuildRefList	@
	subs	r9, r0, #0	@ D.37590,
	movne	r9, #1	@ D.37590,
	bne	.L394	@,
	add	r5, r5, #110592	@ tmp1401, pVC1_CTX_S,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r5, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r1, .L420+8	@,
	mov	r0, #1	@,
	strb	r9, [r3]	@ D.37590, _493->is_to_ref
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r9, [r3, #1]	@ D.37590, _495->is_to_display
	bl	dprint_vfmw	@
	b	.L394	@
.L292:
	mov	r2, fp	@, D.37595
	ldr	r1, .L420+12	@,
	mov	r0, #0	@,
	mov	r9, #0	@ D.37590,
	bl	dprint_vfmw	@
.L394:
	mov	r0, r9	@, D.37590
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L289:
	ldr	r10, [r4, #2532]	@ MEM_HEIGHT_MB, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeight
	mov	r0, r7	@ MEM_WIDTH_MB, MEM_WIDTH_MB
	mul	r8, r10, r7	@ TotalMbNum, MEM_HEIGHT_MB, MEM_WIDTH_MB
	b	.L352	@
.L298:
	ldr	r3, [r2, #692]	@ _562->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _562->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _562->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	addne	r9, r5, #110592	@ tmp1436, pVC1_CTX_S,
	bne	.L303	@,
	ldr	r2, [r2, #12]	@ _562->s32DecOrderOutput, _562->s32DecOrderOutput
	mov	r3, #0	@ tmp572,
	ldr	r1, [r4, #2596]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	cmp	r2, #1	@ _562->s32DecOrderOutput,
	str	r3, [sp, #28]	@ tmp572, NewNum
	str	r3, [sp, #32]	@ tmp572, ReadNum
	str	r3, [sp, #36]	@ tmp572, RefNum
	beq	.L399	@,
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_FlushFrameToVo.part.0	@
	cmn	r0, #1	@,
	beq	.L404	@,
	ldr	r3, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r4, #2600]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r3, [r3, #12]	@ _564->s32DecOrderOutput, _564->s32DecOrderOutput
	cmp	r3, #1	@ _564->s32DecOrderOutput,
	beq	.L306	@,
	mov	r0, r5	@, pVC1_CTX_S
	bl	VC1_FlushFrameToVo.part.0	@
	cmn	r0, #1	@,
	bne	.L399	@,
.L404:
	mov	r9, #0	@ D.37590,
	mov	r0, r9	@, D.37590
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L399:
	ldr	r1, [r4, #2600]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
.L306:
	add	r9, r5, #110592	@ tmp1436, pVC1_CTX_S,
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	add	r2, sp, #32	@,,
	add	r1, sp, #36	@,,
	cmp	r0, #0	@ pImage
	movne	r3, #1	@ tmp593,
	strne	r3, [r0, #376]	@ tmp593, pImage_88->u32IsLastFrame
	add	r3, sp, #28	@,,
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [r5]	@ D.37598, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r1, [r4, #2536]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast
	ldr	r3, [r2, #720]	@ _94->s32DSDThrWidth, _94->s32DSDThrWidth
	cmp	r3, r1, asl #4	@ _94->s32DSDThrWidth, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast,
	blt	.L308	@,
	ldr	r3, [r4, #2540]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast
	ldr	r1, [r2, #724]	@ _94->s32DSDThrHeight, _94->s32DSDThrHeight
	add	r3, r3, #1	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbHeightLast,
	add	r3, r3, r3, lsr #31	@ tmp615, D.37595, D.37595,
	mov	r3, r3, asr #1	@ D.37595, tmp615,
	cmp	r1, r3, asl #5	@ _94->s32DSDThrHeight, D.37595,
	blt	.L308	@,
	ldr	r3, [sp, #32]	@ ReadNum, ReadNum
	ldr	r1, [sp, #28]	@ NewNum, NewNum
	add	r3, r3, r1	@ D.37595, ReadNum, NewNum
	cmp	r3, #0	@ D.37595,
	ble	.L303	@,
	mov	r3, #1	@ tmp624,
	str	r3, [r9, #3132]	@ tmp624, pVC1_CTX_S_34(D)->DSDNeedClearQue
	str	r3, [r2, #728]	@ tmp624, _94->s32DSDWaitFlag
	b	.L404	@
.L418:
	ldr	r3, [sp, #32]	@ ReadNum, ReadNum
	cmp	r3, #4	@ ReadNum,
	bgt	.L311	@,
.L303:
	add	r1, r6, #21504	@ D.37599, tmp1438,
	mov	r3, #0	@ tmp632,
	add	r1, r1, #56	@ D.37599, D.37599,
	str	r3, [r2, #728]	@ tmp632, _563->s32DSDWaitFlag
	str	r1, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	str	r1, [r4, #2524]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	str	r1, [r4, #2520]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	str	r1, [r4, #2516]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	str	r3, [sp, #16]	@ tmp632, %sfp
	bl	FSP_GetFsImagePtr	@
	subs	ip, r0, #0	@ pImg,
	beq	.L312	@,
	ldr	r1, [ip, #192]	@, pImg_126->p_usrdat
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	str	ip, [sp, #20]	@ pImg, %sfp
	bl	FreeUsdByDec	@
	ldr	ip, [sp, #20]	@ pImg, %sfp
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	ldr	r1, [ip, #196]	@, pImg_126->p_usrdat
	bl	FreeUsdByDec	@
	ldr	ip, [sp, #20]	@ pImg, %sfp
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	ldr	r1, [ip, #200]	@, pImg_126->p_usrdat
	bl	FreeUsdByDec	@
	ldr	ip, [sp, #20]	@ pImg, %sfp
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	ldr	r1, [ip, #204]	@, pImg_126->p_usrdat
	bl	FreeUsdByDec	@
	ldr	ip, [sp, #20]	@ pImg, %sfp
	ldr	r3, [sp, #16]	@ tmp632, %sfp
	mov	r2, #1	@,
	str	r3, [ip, #192]	@ tmp632, pImg_126->p_usrdat
	str	r3, [ip, #196]	@ tmp632, pImg_126->p_usrdat
	str	r3, [ip, #200]	@ tmp632, pImg_126->p_usrdat
	str	r3, [ip, #204]	@ tmp632, pImg_126->p_usrdat
	ldr	r1, [r4, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [sp, #16]	@ tmp632, %sfp
	str	r3, [r4, #2596]	@ tmp632, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	str	r3, [r4, #2600]	@ tmp632, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	str	r0, [r4, #2596]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
.L312:
	add	r3, r5, #112640	@ D.37601, pVC1_CTX_S,
	mov	r2, #0	@ tmp721,
	add	r3, r3, #728	@ D.37601, D.37601,
	str	r2, [r4, #2592]	@ tmp721, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	mov	r1, r3	@, D.37601
	str	r3, [sp, #16]	@ D.37601, %sfp
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [r5]	@ D.37598, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r3, [sp, #16]	@ D.37601, %sfp
	ldr	r1, [r2, #608]	@ _160->stChanOption.s32ReRangeEn, _160->stChanOption.s32ReRangeEn
	cmp	r1, #0	@ _160->stChanOption.s32ReRangeEn,
	bne	.L313	@,
	ldr	r2, [r2, #32]	@ _160->eCapLevel, _160->eCapLevel
	cmp	r2, #25	@ _160->eCapLevel,
	beq	.L417	@,
.L313:
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	str	r3, [sp, #16]	@ D.37601, %sfp
	bl	FSP_GetFspType	@
	ldr	r3, [sp, #16]	@ D.37601, %sfp
	cmp	r0, #0	@,
	bne	.L315	@,
	ldr	r2, [r5]	@ pVC1_CTX_S_34(D)->pstExtraData, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r2, [r2, #692]	@ _168->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _168->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _168->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L317	@,
	ldr	r2, [r9, #3132]	@ pVC1_CTX_S_34(D)->DSDNeedClearQue, pVC1_CTX_S_34(D)->DSDNeedClearQue
	cmp	r2, #1	@ pVC1_CTX_S_34(D)->DSDNeedClearQue,
	bne	.L315	@,
.L317:
	mov	r0, r3	@, D.37601
	bl	ResetVoQueue	@
.L315:
	add	r10, r10, #1	@ D.37595, MEM_HEIGHT_MB,
	mov	r1, fp	@, D.37595
	mov	r3, #2	@,
	mov	r0, r5	@, pVC1_CTX_S
	add	r10, r10, r10, lsr #31	@ tmp746, D.37595, D.37595,
	mov	r2, r10, asr #1	@ D.37595, tmp746,
	mov	r2, r2, asl #5	@, D.37595,
	bl	VC1_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L318	@,
	ldrb	r3, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	orr	r3, r3, #8	@ tmp755, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	strb	r3, [r6, #448]	@ tmp755, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	b	.L302	@
.L408:
	ldr	r3, [r4, #2536]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast
	cmp	r3, r0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].MbWidthLast, MEM_WIDTH_MB
	bne	.L295	@,
	ldr	r2, [r5]	@ D.37598, pVC1_CTX_S_34(D)->pstExtraData
	ldr	r3, [r2, #728]	@ _60->s32DSDWaitFlag, _60->s32DSDWaitFlag
	cmp	r3, #1	@ _60->s32DSDWaitFlag,
	beq	.L295	@,
	mov	r3, r7, asl #4	@ D.37595, MEM_WIDTH_MB,
	add	r3, r3, #63	@ D.37595, D.37595,
	bic	r3, r3, #63	@ D.37595, D.37595,
	str	r3, [r4, #2552]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].DDR_Stride
	ldrb	r3, [r6, #456]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].Is2ndFld,
	movne	r3, #0	@ SizeChanged,
	bne	.L297	@,
	b	.L299	@
.L410:
	ldr	r1, .L420+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L394	@
.L411:
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum,
	ldr	r2, [r4, #2596]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	ldr	r3, [r4, #2600]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	movne	r1, #2	@ D.37591,
	moveq	r1, #1	@ D.37591,
	cmp	r2, r3	@ D.37595, D.37595
	str	r1, [r4, #2592]	@ D.37591, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].RefNum
	beq	.L326	@,
	ldr	r1, .L420+20	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, #2600]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
.L326:
	ldr	r1, [r4, #2604]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	mov	r2, #1	@,
	str	r3, [r4, #2596]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	str	r1, [r4, #2600]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_RemovePmv	@
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ D.37593,
	cmpne	r3, #1	@, D.37593,
	bhi	.L328	@,
	ldr	r3, [r4, #2520]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	mov	r1, #0	@ tmp934,
	mov	r2, #1	@ tmp940,
	strb	r1, [r3]	@ tmp934, _266->is_to_ref
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r2, [r3]	@ tmp940, _268->is_to_ref
	ldr	r2, [r4, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	ldr	r3, [r4, #2512]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	str	r2, [r4, #2520]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	str	r3, [r4, #2516]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	b	.L328	@
.L308:
	ldr	r3, [sp, #28]	@ NewNum, NewNum
	cmp	r3, #0	@ NewNum,
	ble	.L418	@,
.L311:
	mov	r1, #0	@ tmp630,
	mov	r3, #1	@ tmp631,
	str	r1, [r9, #3132]	@ tmp630, pVC1_CTX_S_34(D)->DSDNeedClearQue
	str	r3, [r2, #728]	@ tmp631, _94->s32DSDWaitFlag
	b	.L404	@
.L318:
	ldr	r1, .L420+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	mov	r9, #0	@ D.37590,
	bic	r3, r3, #8	@ tmp764, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	strb	r3, [r6, #448]	@ tmp764, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	b	.L394	@
.L409:
	ldrb	r2, [r6, #457]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].LastIs2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].LastIs2ndFld
	cmp	r2, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].LastIs2ndFld,
	bne	.L301	@,
	b	.L398	@
.L413:
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	mov	r2, #1	@,
	str	r0, [sp, #16]	@ pBwd, %sfp
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	mov	lr, #0	@ tmp1007,
	ldr	ip, [sp, #16]	@ pBwd, %sfp
	mov	r3, r10	@, pCur
	mov	r0, lr	@, tmp1007
	strb	lr, [r1]	@ tmp1007, _382->is_to_ref
	movw	r2, #2425	@,
	ldr	r4, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r1, .L420+28	@,
	strb	lr, [r4, #1]	@ tmp1007, _384->is_to_display
	stmia	sp, {fp, ip}	@,,
	bl	dprint_vfmw	@
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType,
	beq	.L406	@,
.L332:
	ldr	r1, .L420+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L404	@
.L343:
	add	lr, r5, #86016	@ tmp1435, pVC1_CTX_S,
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r2, [lr, #3000]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM
	strb	r2, [r3, #1027]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.FCM, _442->PicStruct
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldrb	r2, [lr, #2957]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.PTYPE
	strb	r2, [r3, #1028]	@ D.37593, _446->PicCodingType
	ldrb	r2, [lr, #2970]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	sub	r0, r2, #2	@ tmp1321, D.37593,
	ldrb	r1, [lr, #2997]	@ zero_extendqisi2	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.CurParity
	cmp	r0, #1	@ tmp1321,
	movls	r2, #1	@ D.37593,
	bls	.L346	@,
	cmp	r2, #4	@ D.37593,
	movne	r2, #0	@ D.37593,
	beq	.L419	@,
.L346:
	add	r3, r3, r1	@ tmp1332, D.37599, D.37595
	strb	r2, [r3, #1029]	@ D.37593, _449->IsHalfPel
	ldr	ip, [r4, #2612]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcNum
	cmp	ip, #0	@ D.37595,
	beq	.L347	@,
	sub	ip, ip, #1	@ D.37595, D.37595,
	cmp	ip, #0	@ D.37595,
	mov	r0, ip	@ tmp1437, D.37595
	uxtble	r1, ip	@ D.37593, D.37595
	ble	.L349	@,
	add	r2, r5, #100352	@ ivtmp.926, pVC1_CTX_S,
	mov	r1, #0	@ i,
	add	r2, r2, #576	@ ivtmp.926, ivtmp.926,
.L350:
	ldr	r3, [r2, #64]	@ MEM[base: _565, offset: 64B], MEM[base: _565, offset: 64B]
	add	r2, r2, #48	@ ivtmp.926, ivtmp.926,
	strb	r1, [r2, #-48]	@ i, MEM[base: _565, offset: 0B]
	add	r1, r1, #1	@ i, i,
	cmp	r1, r0	@ i, tmp1437
	mul	r3, r3, r7	@ D.37595, MEM[base: _565, offset: 64B], MEM_WIDTH_MB
	sub	r3, r3, #1	@ D.37595, D.37595,
	str	r3, [r2, #-32]	@ D.37595, MEM[base: _565, offset: 16B]
	bne	.L350	@,
	uxtb	r1, r1	@ D.37593, i
.L349:
	mov	r3, ip, asl #6	@ tmp1351, D.37595,
	movw	r2, #23120	@ tmp1364,
	sub	ip, r3, ip, asl #4	@ tmp1352, tmp1351, D.37595,
	movw	r3, #23104	@ tmp1354,
	add	ip, r6, ip	@ tmp1353, tmp1438, tmp1352
	sub	r8, r8, #1	@ D.37595, TotalMbNum,
	strb	r1, [ip, r3]	@ D.37593, MEM[(struct VC1_SLCSTREAM_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[_557].SlcNo
	str	r8, [ip, r2]	@ D.37595, MEM[(struct VC1_SLCSTREAM_S *)pVC1_CTX_S_34(D) + 78272B].SlcStr[_557].SlcEndMbn
	ldrb	r1, [r6, #450]	@ zero_extendqisi2	@ D.37593, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r1, #2	@ D.37593,
	bne	.L345	@,
	ldrb	r3, [lr, #2987]	@ zero_extendqisi2	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.REFDIST
	add	r0, r5, #110592	@ tmp1382, pVC1_CTX_S,
	ldr	r2, [lr, #3104]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.ScaleFactor, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.ScaleFactor
	mul	r2, r2, r3	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.ScaleFactor, D.37595
	mov	r2, r2, asr #8	@ D.37595, D.37595,
	str	r2, [r0, #2656]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FRFD
	rsb	r3, r2, r3	@ D.37595, D.37595, D.37595
	subs	r3, r3, #1	@ D.37595, D.37595,
	movmi	r3, #0	@ tmp1392,
	str	r3, [r0, #2660]	@ tmp1392, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BRFD
	b	.L345	@
.L417:
	ldrb	r2, [r6, #448]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus
	tst	r2, #8	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CodecStatus,
	bne	.L315	@,
	b	.L317	@
.L337:
	mov	r2, #1	@,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	mov	r3, #0	@ tmp1079,
	ldr	r1, .L420+36	@,
	mov	r0, r3	@, tmp1079
	strb	r3, [r2]	@ tmp1079, _363->is_to_ref
	ldr	r2, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r3, [r2, #1]	@ tmp1079, _365->is_to_display
	ldr	ip, [r10, #412]	@ pCur_277->pstDispOutFs, pCur_277->pstDispOutFs
	ldr	r3, [r4, #2604]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	ldr	r2, [r4, #2596]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].FwdFsID
	str	ip, [sp, #12]	@ pCur_277->pstDispOutFs,
	ldr	ip, [r10, #416]	@ pCur_277->pstTfOutFs, pCur_277->pstTfOutFs
	ldr	lr, [r4, #2600]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID
	str	ip, [sp, #8]	@ pCur_277->pstTfOutFs,
	ldr	ip, [r10, #408]	@ pCur_277->pstDecodeFs, pCur_277->pstDecodeFs
	str	lr, [sp]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].BwdFsID,
	str	ip, [sp, #4]	@ pCur_277->pstDecodeFs,
	bl	dprint_vfmw	@
	ldrb	r3, [r6, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType
	cmp	r3, #5	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].PicCodingType,
	bne	.L332	@,
.L406:
	ldr	r3, [r9, #2700]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
	cmp	r3, #0	@ D.37595,
	subgt	r3, r3, #1	@ D.37595, D.37595,
	strgt	r3, [r9, #2700]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
	b	.L332	@
.L347:
	mov	r3, #1	@ tmp1421,
	mov	r1, ip	@ D.37593, D.37595
	str	r3, [r4, #2612]	@ tmp1421, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SlcNum
	b	.L349	@
.L415:
	ldr	r3, [fp, #136]	@ D.37603, pFwd_281->stDispImg.is_fld_save
	str	r3, [r10, #136]	@ D.37603, pCur_277->stDispImg.is_fld_save
	ldr	r2, [r4, #2520]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pRef
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r2, [r2, #1160]	@ D.37603, _298->img.is_fld_save
	str	r2, [r3, #1160]	@ D.37603, _297->img.is_fld_save
	ldr	r3, [r9, #2700]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
	add	r3, r3, #1	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag,
	str	r3, [r9, #2700]	@ D.37595, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].skpic_flag
	b	.L336	@
.L414:
	ldr	r3, .L420+4	@ tmp1039,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L334	@,
	b	.L401	@
.L419:
	ldrb	r2, [lr, #2971]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE2, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE2
	sub	r2, r2, #2	@ tmp1330, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].AdvPicSyntax.MVMODE2,
	cmp	r2, #1	@ tmp1330,
	movhi	r2, #0	@ D.37593,
	movls	r2, #1	@ D.37593,
	b	.L346	@
.L416:
	ldrb	r3, [r2, #2868]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE2, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE2
	sub	r3, r3, #2	@ tmp1203, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].SMPPicSyntax.MVMODE2,
	cmp	r3, #1	@ tmp1203,
	movhi	r3, #0	@ D.37593,
	movls	r3, #1	@ D.37593,
	b	.L344	@
.L412:
	ldr	r0, [r9, #3128]	@, pVC1_CTX_S_34(D)->ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].CurFsID
	mov	r9, r10	@ D.37590, tmp841
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	ldr	r1, .L420+40	@,
	mov	r0, #1	@,
	strb	r10, [r3]	@ tmp841, _240->is_to_ref
	ldr	r3, [r4, #2512]	@ D.37599, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_34(D) + 78272B].pCurFrm
	strb	r10, [r3, #1]	@ tmp841, _242->is_to_display
	bl	dprint_vfmw	@
	b	.L394	@
.L421:
	.align	2
.L420:
	.word	.LC30
	.word	USE_FF_APT_EN
	.word	.LC36
	.word	.LC20
	.word	.LC29
	.word	.LC31
	.word	.LC28
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC32
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
	subs	r4, r0, #0	@ D.37623,
	movne	r4, #1	@ D.37623,
	bne	.L423	@,
	ldr	r1, .L426	@,
	bl	dprint_vfmw	@
.L423:
	mov	r0, r4	@, D.37623
	ldmfd	sp!, {r4, pc}	@
.L427:
	.align	2
.L426:
	.word	.LC37
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
	ldr	lr, .L430	@ tmp117,
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
.L431:
	.align	2
.L430:
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
	str	r3, [sp, #24]	@ tmp121, VlcTab[3].Code
	str	r3, [sp, #28]	@ tmp121, VlcTab[3].Len
	str	r2, [sp, #4]	@ tmp118, VlcTab[0].Len
	str	r2, [sp, #12]	@ tmp118, VlcTab[1].Len
	str	r2, [sp, #16]	@ tmp118, VlcTab[2].Code
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
	beq	.L436	@,
	cmp	r1, #2	@ RESPIC,
	beq	.L442	@,
	cmp	r1, #0	@ RESPIC,
	beq	.L441	@,
	add	r2, r2, #1	@ D.37634, pCodecInfo_4(D)->MbWidth,
	add	r2, r2, r2, lsr #31	@ tmp164, D.37634, D.37634,
	mov	r2, r2, asr #1	@ D.37634, tmp164,
.L442:
	str	r2, [r0, #2232]	@ D.37634, pCodecInfo_4(D)->CurPicMbWidth
	ldr	r3, [r3, #2084]	@ pCodecInfo_4(D)->MbHeight, pCodecInfo_4(D)->MbHeight
	add	r3, r3, #1	@ D.37634, pCodecInfo_4(D)->MbHeight,
	add	r3, r3, r3, lsr #31	@ tmp173, D.37634, D.37634,
	mov	r3, r3, asr #1	@ D.37634, tmp173,
	str	r3, [r0, #2236]	@ D.37634, pCodecInfo_4(D)->CurPicMbHeight
	b	.L439	@
.L436:
	add	r2, r2, #1	@ D.37634, pCodecInfo_4(D)->MbWidth,
	add	r2, r2, r2, lsr #31	@ tmp138, D.37634, D.37634,
	mov	r2, r2, asr #1	@ D.37634, tmp138,
.L441:
	str	r2, [r0, #2232]	@ D.37634, pCodecInfo_4(D)->CurPicMbWidth
	ldr	r3, [r3, #2084]	@ D.37634, pCodecInfo_4(D)->MbHeight
	str	r3, [r0, #2236]	@ D.37634, pCodecInfo_4(D)->CurPicMbHeight
.L439:
	mul	r1, r3, r2	@ D.37634, D.37634, D.37634
	mov	r2, r2, asl #4	@ D.37634, D.37634,
	mov	r3, r3, asl #4	@ D.37634, D.37634,
	str	r2, [r0, #2224]	@ D.37634, pCodecInfo_4(D)->CurPicWidth
	str	r3, [r0, #2228]	@ D.37634, pCodecInfo_4(D)->CurPicHeight
	str	r1, [r0, #2240]	@ D.37634, pCodecInfo_4(D)->CurPicMbNum
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
	ldr	ip, .L455	@ tmp119,
	mov	r4, sp	@ tmp118,
	add	lr, sp, #20	@ tmp122,,
	mov	r5, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp119,,,,
	ldr	r8, [ip], #4	@ tmp120,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp118,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp123,,,,
	str	r8, [r4]	@ tmp120, ModeLow
	ldr	ip, [ip]	@ tmp124,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp122,,,,
	str	ip, [lr]	@ tmp124, ModeHigh
	ble	.L453	@,
	cmp	r5, #3	@ Tmp,
	movle	r1, #3	@ Len,
	movle	r4, #2	@ Code,
	bgt	.L454	@,
.L445:
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	add	r3, sp, #40	@ tmp130,,
	add	r4, r3, r4, lsl #2	@ tmp125, tmp130, Code,
	cmp	r6, #12	@ PQUANT,
	ldrhi	r0, [r4, #-40]	@ Code, ModeLow
	ldrls	r0, [r4, #-20]	@ Code, ModeHigh
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L454:
	cmp	r5, #8	@ Tmp,
	movlt	r1, #2	@ Len,
	movge	r1, #1	@ Len,
	movlt	r4, #1	@ Code,
	movge	r4, #0	@ Code,
	b	.L445	@
.L453:
	cmp	r5, #0	@ Tmp,
	mov	r1, #4	@ Len,
	moveq	r4, #3	@ Code,
	movne	r4, r1	@ Code, Len
	b	.L445	@
.L456:
	.align	2
.L455:
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
	ldr	r2, .L459	@ tmp117,
	add	r3, sp, #8	@ tmp121,,
	add	r3, r3, r0, lsl #2	@ tmp118, tmp121, Tmp,
	ldmia	r2, {r0, r1}	@ tmp117,,
	add	r2, sp, #8	@ tmp122,,
	stmdb	r2, {r0, r1}	@ tmp122,,
	ldr	r0, [r3, #-8]	@, Mode
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L460:
	.align	2
.L459:
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
	ldr	r3, .L470	@ tmp119,
	add	lr, sp, #4	@ tmp118,,
	mov	r8, #0	@ tmp121,
	mov	r9, #1	@ tmp126,
	mov	ip, #2	@ tmp127,
	mov	r4, #3	@ tmp128,
	str	r8, [sp, #24]	@ tmp121, ModeHigh
	str	r8, [sp, #36]	@ tmp121, ModeHigh
	str	r9, [sp, #20]	@ tmp126, ModeHigh
	str	ip, [sp, #28]	@ tmp127, ModeHigh
	str	r4, [sp, #32]	@ tmp128, ModeHigh
	mov	r5, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp119,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp118,,,,
	ble	.L469	@,
	cmp	r5, #4	@ Tmp,
	movlt	r1, #2	@ Len,
	movge	r1, #1	@ Len,
	movlt	r4, #1	@ Code,
	movge	r4, #0	@ Code,
.L463:
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	add	r3, sp, #40	@ tmp134,,
	add	ip, r3, r4, lsl #2	@ tmp129, tmp134, Code,
	cmp	r6, #12	@ PQUANT,
	ldrhi	r0, [ip, #-36]	@ Code, ModeLow
	ldrls	r0, [ip, #-20]	@ Code, ModeHigh
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L469:
	cmp	r5, r8	@ Tmp,
	mov	r1, r4	@ Len, tmp128
	movne	r4, ip	@ Code, tmp127
	b	.L463	@
.L471:
	.align	2
.L470:
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
	ldr	r3, .L482	@ tmp119,
	add	ip, r3, #16	@ tmp122, tmp119,
	mov	r4, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp119,,,,
	stmia	sp, {r0, r1, r2, r3}	@ tmp118,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp122,,,,
	add	ip, sp, #32	@ tmp128,,
	stmdb	ip, {r0, r1, r2, r3}	@ tmp128,,,,
	ble	.L481	@,
	cmp	r4, #4	@ Tmp,
	movlt	r1, #2	@ Len,
	movge	r1, #1	@ Len,
	movlt	r4, #1	@ Code,
	movge	r4, #0	@ Code,
.L474:
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	add	r3, sp, #32	@ tmp129,,
	add	r4, r3, r4, lsl #2	@ tmp123, tmp129, Code,
	cmp	r5, #12	@ PQUANT,
	ldrhi	r0, [r4, #-32]	@ Code, ModeLow
	ldrls	r0, [r4, #-16]	@ Code, ModeHigh
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L481:
	cmp	r4, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r4, r1	@ Code, Len
	movne	r4, #2	@ Code,
	b	.L474	@
.L483:
	.align	2
.L482:
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
	ldr	ip, .L491	@ tmp126,
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
	bgt	.L485	@,
	mov	r1, #3	@,
	bl	BsSkip	@
	add	r3, sp, #208	@ tmp155,,
	add	r3, r3, r4, lsl #2	@ tmp139, tmp155, BfracIdx,
	ldr	r1, [r3, #-200]	@ Numerator, NumShortVLC
	ldr	r2, [r3, #-172]	@ Denominator, DenShortVLC
.L486:
	add	r3, sp, #208	@ tmp158,,
	mov	r0, r4	@ D.37645, BfracIdx
	add	r2, r3, r2, lsl #2	@ tmp150, tmp158, Denominator,
	ldr	r3, [r2, #-148]	@ tmp153, Inverse
	ldr	r2, [sp]	@ pScaleFactor, %sfp
	mul	r3, r3, r1	@ ScaleFactor, tmp153, Numerator
	str	r3, [r2]	@ ScaleFactor, *pScaleFactor_31(D)
	add	sp, sp, #212	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L485:
	mov	r1, #7	@,
	bl	BsGet	@
	and	r4, r0, #15	@ D.37646, Code,
	cmp	r4, #15	@ D.37646,
	beq	.L490	@,
	sub	r0, r0, #112	@ D.37646, Code,
	add	r3, sp, #208	@ tmp157,,
	add	r4, r4, #7	@ BfracIdx, D.37646,
	add	r0, r3, r0, lsl #2	@ tmp145, tmp157, D.37646,
	ldr	r1, [r0, #-112]	@ Numerator, NumLongVLC
	ldr	r2, [r0, #-56]	@ Denominator, DenLongVLC
	b	.L486	@
.L490:
	ldr	r2, [sp, #4]	@ pPTYPE, %sfp
	mov	r3, #4	@ tmp143,
	mov	r0, #22	@ D.37645,
	strb	r3, [r2]	@ tmp143, *pPTYPE_19(D)
	add	sp, sp, #212	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L492:
	.align	2
.L491:
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
	ldr	ip, .L498	@ tmp124,
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
	ble	.L497	@,
	mov	r1, #7	@,
	bl	BsGet	@
	add	r3, sp, #208	@ tmp153,,
	sub	r2, r0, #112	@ D.37649, Code,
	and	r0, r0, #15	@ D.37649, Code,
	add	r4, r0, #7	@ BfracIdx, D.37649,
	add	r2, r3, r2, lsl #2	@ tmp142, tmp153, D.37649,
	ldr	r1, [r2, #-112]	@ Numerator, NumLongVLC
	ldr	r2, [r2, #-56]	@ Denominator, DenLongVLC
.L495:
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
.L497:
	mov	r1, #3	@,
	bl	BsSkip	@
	add	r3, sp, #208	@ tmp152,,
	add	r3, r3, r4, lsl #2	@ tmp137, tmp152, BfracIdx,
	ldr	r1, [r3, #-200]	@ Numerator, NumShortVLC
	ldr	r2, [r3, #-172]	@ Denominator, DenShortVLC
	b	.L495	@
.L499:
	.align	2
.L498:
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
	beq	.L519	@,
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r5, r0	@ D.37658,
	strb	r5, [r4]	@ D.37658, pVopDquant_4(D)->DQUANTFRM
	cmp	r5, #1	@ D.37658,
	beq	.L520	@,
.L504:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L519:
	mov	r3, #1	@ tmp146,
	mov	r1, #3	@,
	strb	r3, [r4, #3]	@ tmp146, pVopDquant_4(D)->UseAltQp
	strb	r3, [r4]	@ tmp146, pVopDquant_4(D)->DQUANTFRM
	bl	BsGet	@
	uxtb	r0, r0	@ D.37658,
	strb	r0, [r4, #4]	@ D.37658, pVopDquant_4(D)->PQDIFF
	cmp	r0, #7	@ D.37658,
	addne	r6, r6, #1	@ tmp153, PQUANT,
	addne	r3, r0, r6	@ tmp155, D.37658, tmp153
	strneb	r3, [r4, #8]	@ tmp155, pVopDquant_4(D)->ALTPQUANT
	beq	.L521	@,
.L503:
	mov	r3, #1	@ tmp157,
	mov	r0, #1	@,
	str	r3, [r4, #12]	@ tmp157, pVopDquant_4(D)->QuantMode
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L520:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37658,
	strb	r1, [r4, #1]	@ D.37658, pVopDquant_4(D)->DQPROFILE
	cmp	r1, #0	@ D.37658,
	streq	r5, [r4, #12]	@ D.37658, pVopDquant_4(D)->QuantMode
	beq	.L507	@,
	cmp	r1, #2	@ D.37658,
	beq	.L522	@,
	cmp	r1, #1	@ D.37658,
	beq	.L523	@,
	cmp	r1, #3	@ D.37658,
	movne	r3, #0	@ tmp168,
	strne	r3, [r4, #12]	@ tmp168, pVopDquant_4(D)->QuantMode
	beq	.L524	@,
.L507:
	ldr	r3, [r4]	@ *pVopDquant_4(D), *pVopDquant_4(D)
	bic	r3, r3, #-16777216	@ D.37661, *pVopDquant_4(D),
	bic	r3, r3, #255	@ D.37661, D.37661,
	cmp	r3, #768	@ D.37661,
	beq	.L504	@,
	mov	r3, #1	@ tmp172,
	mov	r1, #3	@,
	strb	r3, [r4, #3]	@ tmp172, pVopDquant_4(D)->UseAltQp
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37658,
	strb	r0, [r4, #4]	@ D.37658, pVopDquant_4(D)->PQDIFF
	cmp	r0, #7	@ D.37658,
	addne	r6, r6, #1	@ tmp177, PQUANT,
	addne	r6, r0, r6	@ tmp179, D.37658, tmp177
	strneb	r6, [r4, #8]	@ tmp179, pVopDquant_4(D)->ALTPQUANT
	bne	.L504	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.37658,
	strb	r0, [r4, #5]	@ D.37658, pVopDquant_4(D)->ABSPQ
	strb	r0, [r4, #8]	@ D.37658, pVopDquant_4(D)->ALTPQUANT
	b	.L504	@
.L524:
	mov	r1, r5	@, D.37658
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37658,
	strb	r0, [r4, #2]	@ D.37658, pVopDquant_4(D)->DQBILEVEL
	cmp	r0, #0	@ D.37658,
	movne	r3, #10	@ D.37660,
	moveq	r3, #11	@ D.37660,
	str	r3, [r4, #12]	@ D.37660, pVopDquant_4(D)->QuantMode
	b	.L507	@
.L521:
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.37658,
	strb	r0, [r4, #5]	@ D.37658, pVopDquant_4(D)->ABSPQ
	strb	r0, [r4, #8]	@ D.37658, pVopDquant_4(D)->ALTPQUANT
	b	.L503	@
.L522:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.37657, D.37657
	strb	r0, [r4, #6]	@ D.37657, pVopDquant_4(D)->DQSBEDGE
	add	r3, r3, #6	@ D.37657, D.37657,
	str	r3, [r4, #12]	@ D.37657, pVopDquant_4(D)->QuantMode
	b	.L507	@
.L523:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.37657, D.37657
	strb	r0, [r4, #7]	@ D.37657, pVopDquant_4(D)->DQDBEDGE
	add	r3, r3, #2	@ D.37657, D.37657,
	str	r3, [r4, #12]	@ D.37657, pVopDquant_4(D)->QuantMode
	b	.L507	@
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
.L526:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	subs	r7, r0, #0	@ D.37664,
	mov	r0, r5	@, pBs
	bne	.L535	@,
	bl	BsGet	@
	mov	r4, r0	@ iCode,
	cmp	r4, #1	@ iCode,
	mov	r1, r0	@, iCode
	mov	r0, r5	@, pBs
	bgt	.L546	@,
	bne	.L529	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L530	@,
	cmp	r6, #0	@ Invert,
	mov	r6, r4	@ Invert, iCode
	beq	.L526	@,
.L544:
	str	r9, [r8]	@ i6, *pi6_9(D)
	mov	r0, r7	@, D.37664
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L535:
	mov	r0, #0	@ i6,
.L527:
	cmp	r6, #0	@ Invert,
	mov	r7, #1	@ D.37664,
	eorne	r0, r0, #63	@ i6, i6,
.L545:
	str	r0, [r8]	@ i6, *pi6_9(D)
	mov	r0, r7	@, D.37664
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L546:
	sub	r4, r4, #2	@ D.37665, iCode,
	mov	r0, #1	@ tmp124,
	mov	r0, r0, asl r4	@ i6, tmp124,
	b	.L527	@
.L529:
	mov	r0, r5	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	cmp	r0, #255	@ iCode,
	beq	.L544	@,
	ldr	r3, .L547	@ tmp128,
	add	r3, r3, r0, lsl #2	@ tmp129, tmp128, iCode,
	ldr	r0, [r3, #472]	@ i6, a2On4Off
	b	.L527	@
.L530:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	ldr	r3, .L547	@ tmp125,
	add	r3, r3, r0, lsl #2	@ tmp126, tmp125, i6,
	ldr	r3, [r3, #344]	@ iCode, aCount
	cmp	r3, #2	@ iCode,
	orreq	r0, r0, #32	@ i6, i6,
	beq	.L527	@,
	cmp	r3, #3	@ iCode,
	bne	.L545	@,
	b	.L527	@
.L548:
	.align	2
.L547:
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
	uxth	r3, r0	@ D.37687,
	mov	r0, r5	@, pBs
	add	r3, r3, #1	@ D.37687, D.37687,
	mov	r3, r3, asl #1	@ tmp243, D.37687,
	strh	r3, [r4, #172]	@ movhi	@ tmp243, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH
	bl	BsGet	@
	mov	r1, #1	@,
	uxth	r3, r0	@ D.37687,
	mov	r0, r5	@, pBs
	add	r3, r3, r1	@ D.37687, D.37687,
	mov	r3, r3, asl r1	@ tmp247, D.37687,
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
	uxtb	r6, r0	@ D.37688,
	strb	r6, [r4, #26]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISPLAY_EXT
	cmp	r6, #1	@ D.37688,
	beq	.L564	@,
	ldrh	r2, [r4, #172]	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH
	ldrh	r3, [r4, #174]	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_HEIGHT, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_HEIGHT
	strh	r2, [r4, #176]	@ movhi	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_WIDTH, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_HORIZ_SIZE
	strh	r3, [r4, #178]	@ movhi	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].MAX_CODED_HEIGHT, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_VERT_SIZE
.L556:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37688,
	strb	r0, [r4, #39]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_PARAM_FLAG
	cmp	r0, #1	@ D.37688,
	beq	.L557	@,
.L559:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r3, [r4, #184]	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen
	mov	r2, #1	@ D.37686,
	rsb	r0, r3, r0	@ D.37687, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen,
	str	r0, [r4, #184]	@ D.37687, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HdrLen
.L558:
	mov	r0, r2	@, D.37686
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L557:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37688,
	strb	r0, [r4, #40]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r0, #31	@ D.37688,
	movhi	r2, #0	@ D.37686,
	bhi	.L558	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #41]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].BIT_RATE_EXPONENT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.37687, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, #0	@ D.37687,
	strb	r0, [r4, #42]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].BUFFER_SIZE_EXPONENT
	ble	.L559	@,
	add	r8, r4, #42	@ ivtmp.960, pSyntax,
	add	r7, r4, #106	@ ivtmp.969, pSyntax,
	mov	r6, #0	@ i,
.L560:
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	add	r6, r6, #1	@ i, i,
	strh	r0, [r8, #2]!	@ movhi	@, MEM[base: _183, offset: 0B]
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strh	r0, [r7, #2]!	@ movhi	@, MEM[base: _184, offset: 0B]
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.37687, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, r6	@ D.37687, i
	bgt	.L560	@,
	b	.L559	@
.L564:
	mov	r1, #14	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	add	r3, r0, #1	@ tmp254,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #176]	@ movhi	@ tmp254, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_HORIZ_SIZE
	bl	BsGet	@
	mov	r1, r6	@, D.37688
	add	r3, r0, #1	@ tmp256,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #178]	@ movhi	@ tmp256, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].DISP_VERT_SIZE
	bl	BsGet	@
	uxtb	r0, r0	@ D.37688,
	strb	r0, [r4, #27]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_RATIO_FLAG
	cmp	r0, #1	@ D.37688,
	beq	.L565	@,
.L552:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37688,
	strb	r1, [r4, #31]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATE_FLAG
	cmp	r1, #1	@ D.37688,
	beq	.L566	@,
.L554:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37688,
	strb	r0, [r4, #35]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].COLOR_FORMAT_FLAG
	cmp	r0, #1	@ D.37688,
	bne	.L556	@,
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
	b	.L556	@
.L566:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37688,
	strb	r0, [r4, #32]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATEIND
	cmp	r0, #0	@ D.37688,
	bne	.L555	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #33]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATENR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #34]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATEDR
	b	.L554	@
.L565:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37688,
	strb	r0, [r4, #28]	@ D.37688, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_RATIO
	cmp	r0, #15	@ D.37688,
	bne	.L552	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #29]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_HORIZ_SIZE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #30]	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].ASPECT_VERT_SIZE
	b	.L552	@
.L555:
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strh	r0, [r4, #180]	@ movhi	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].FRAMERATEXP
	b	.L554	@
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
	beq	.L568	@,
.L571:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37705,
	strb	r0, [r4, #199]	@ D.37705, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_SIZE_FLAG
	cmp	r0, #1	@ D.37705,
	ldrneh	r2, [r4, #240]	@ D.37710, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_HEIGHT
	beq	.L589	@,
.L573:
	ldrh	r1, [r4, #238]	@ D.37706, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_WIDTH
	ldrh	r0, [r4, #172]	@ D.37706, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].MAX_CODED_WIDTH
	cmp	r1, #15	@ D.37706,
	movhi	r3, #0	@ tmp210,
	movls	r3, #1	@ tmp210,
	cmp	r1, r0	@ D.37706, D.37706
	orrhi	r3, r3, #1	@,, tmp213, tmp210
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_MV
	cmp	r3, #0	@ tmp213,
	ldrh	r3, [r4, #174]	@ D.37706, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].MAX_CODED_HEIGHT
	strneh	r0, [r4, #238]	@ movhi	@ D.37706, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_WIDTH
	cmp	r3, r2	@ D.37706, D.37710
	cmpcs	r2, #15	@, D.37710,
	strlsh	r3, [r4, #240]	@ movhi	@ D.37706, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_HEIGHT
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_MV,
	beq	.L590	@,
.L576:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37705,
	strb	r0, [r4, #201]	@ D.37705, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.37705,
	beq	.L591	@,
.L577:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37705,
	strb	r0, [r4, #203]	@ D.37705, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPUV_FLAG
	cmp	r0, #1	@ D.37705,
	beq	.L592	@,
.L578:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r3, [r4, #244]	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen
	rsb	r3, r3, r0	@ D.37704, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen,
	mov	r0, #1	@,
	str	r3, [r4, #244]	@ D.37704, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].HdrLen
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L568:
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.37704, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, #0	@ D.37704,
	ble	.L571	@,
	add	r7, r4, #204	@ ivtmp.980, pSyntax,
	mov	r6, #0	@ i,
.L572:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r6, r6, #1	@ i, i,
	strb	r0, [r7, #1]!	@, MEM[base: _137, offset: 0B]
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ D.37704, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_10(D) + 16B].HRD_NUM_LEAKY_BUCKETS
	cmp	r3, r6	@ D.37704, i
	bgt	.L572	@,
	b	.L571	@
.L592:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #204]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPUV
	b	.L578	@
.L589:
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
	uxth	r2, r2	@ D.37710, tmp206
	strh	r2, [r4, #240]	@ movhi	@ D.37710, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].CODED_HEIGHT
	b	.L573	@
.L590:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #200]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].EXTENDED_DMV
	b	.L576	@
.L591:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #202]	@, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_10(D) + 188B].RANGE_MAPY
	b	.L577	@
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
	ble	.L597	@,
	mov	r1, #2	@,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L597:
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
	ble	.L599	@,
	cmp	r0, #11	@ Code,
	movle	r1, #2	@ Len,
	movle	r5, r1	@ Code, Len
	bgt	.L605	@,
.L599:
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, Code
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L605:
	cmp	r0, #13	@ Code,
	movle	r1, #3	@ Len,
	movle	r5, #0	@ Code,
	ble	.L599	@,
	cmp	r0, #14	@ Code,
	mov	r1, #4	@ Len,
	movne	r5, #5	@ Code,
	moveq	r5, r1	@ Code, Len
	b	.L599	@
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
	bgt	.L607	@,
	mov	r4, r0, asr #3	@ Code, Code,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@ D.37717, Code
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L607:
	cmp	r0, #27	@ Code,
	movle	r4, #3	@ Len,
	bgt	.L614	@,
.L609:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, Len
	bl	BsSkip	@
	mov	r0, r4	@ D.37717, Len
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L614:
	cmp	r0, #29	@ Code,
	movgt	r4, #5	@ Len,
	movle	r4, #4	@ Len,
	b	.L609	@
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
	ldr	lr, .L617	@ tmp117,
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
.L618:
	.align	2
.L617:
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
	add	r9, r0, #20480	@ tmp402, pCodecInf,
	mov	r5, r0	@ pCodecInf, pCodecInf
	ldr	r0, [r0, #3128]	@ pBs, pCodecInf_6(D)->pBs
	ldr	r6, [r9, #2164]	@ D.37726, pCodecInf_6(D)->SlcNum
	movw	r3, #22656	@ tmp165,
	movw	ip, #22648	@ tmp173,
	.pad #20
	sub	sp, sp, #20	@,,
	movw	lr, #22664	@ tmp186,
	mov	r8, r6, asl #4	@ tmp400, D.37726,
	mov	r7, r6, asl #6	@ tmp401, D.37726,
	rsb	r4, r8, r7	@ tmp163, tmp400, tmp401
	str	r1, [sp, #12]	@ pSyntax, %sfp
	add	r4, r5, r4	@ tmp164, pCodecInf, tmp163
	add	r1, r4, #22528	@ tmp187, tmp164,
	strb	r6, [r4, r3]	@ D.37726, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].SlcNo
	ldr	r3, [r0, #24]	@ pBs_10->TotalPos, pBs_10->TotalPos
	mov	r10, r1	@ tmp166, tmp187
	cmp	r3, #0	@ pBs_10->TotalPos,
	add	fp, r3, #7	@ tmp178, pBs_10->TotalPos,
	movlt	r3, fp	@ pBs_10->TotalPos, tmp178
	add	fp, r1, #120	@ tmp174, tmp174,
	add	r2, r2, r3, asr #3	@ D.37728, pCurBsRealStart, pBs_10->TotalPos,
	str	r2, [r4, ip]	@ D.37728, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream
	ldr	r3, [r0, #24]	@ pBs_10->TotalPos, pBs_10->TotalPos
	and	r3, r3, #7	@ D.37725, pBs_10->TotalPos,
	str	r3, [r4, lr]	@ D.37725, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].BitOffset
	ldr	r2, [r0, #16]	@ pBs_10->BsLen, pBs_10->BsLen
	ldr	r3, [r0, #24]	@ pBs_10->TotalPos, pBs_10->TotalPos
	rsb	r3, r3, r2, lsl #3	@ D.37725, pBs_10->TotalPos, pBs_10->BsLen,
	str	r3, [r1, #140]	@ D.37725, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len
	ldr	r0, [r4, ip]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream
	bl	MEM_Vir2Phy	@
	add	r3, r5, #32768	@ tmp224, pCodecInf,
	movw	r1, #22688	@ tmp221,
	add	r2, r10, #160	@ tmp222, tmp222,
	str	r0, [r10, #132]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Phy_addr
	ldr	r0, [r3, #2200]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID
	str	r0, [r4, r1]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].StreamID
	ldr	r1, [r3, #2176]	@ D.37728, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsVirAddr
	cmp	r1, #0	@ D.37728,
	beq	.L621	@,
	ldr	r0, [r3, #2188]	@ D.37729, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsPhyAddr
	cmp	r0, #0	@ D.37729,
	bne	.L638	@,
.L621:
	rsb	r3, r8, r7	@ tmp276, tmp400, tmp401
	movw	lr, #22680	@ tmp286,
	add	r3, r5, r3	@ tmp277, pCodecInf, tmp276
	mov	r2, #0	@ tmp280,
	add	r4, r3, #22528	@ tmp279, tmp277,
	str	r2, [r4, #124]	@ tmp280, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2
	str	r2, [r3, lr]	@ tmp280, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].BitOffset2
	str	r2, [r4, #156]	@ tmp280, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2
	str	r2, [r4, #148]	@ tmp280, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Phy_addr2
	str	r2, [r4, #164]	@ tmp280, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].StreamID2
.L622:
	ldr	ip, [r9, #2084]	@ D.37725, pCodecInf_6(D)->MbHeight
	sub	r6, r8, r6, asl #2	@ tmp323, tmp400, D.37726,
	ldr	r3, [r9, #2080]	@ pCodecInf_6(D)->MbWidth, pCodecInf_6(D)->MbWidth
	ldrb	r4, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_6(D)->Is2ndFld, pCodecInf_6(D)->Is2ndFld
	mul	r3, r3, ip	@ D.37725, pCodecInf_6(D)->MbWidth, D.37725
	cmp	r4, #0	@ pCodecInf_6(D)->Is2ndFld,
	sub	r0, r3, #1	@ totalMbMin1, D.37725,
	beq	.L623	@,
	ldr	r2, [sp, #12]	@ pSyntax, %sfp
	add	r3, ip, #1	@ D.37725, D.37725,
	movw	lr, #22672	@ tmp337,
	add	r6, r2, r6	@ tmp324, pSyntax, tmp323
	add	r3, r3, r3, lsr #31	@ tmp329, D.37725, D.37725,
	rsb	r2, r8, r7	@ tmp335, tmp400, tmp401
	add	r6, r6, #520	@ tmp325, tmp324,
	ldr	r1, [r6, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR
	add	r2, r5, r2	@ tmp336, pCodecInf, tmp335
	sub	r3, r1, r3, asr #1	@ D.37725, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR, tmp329,
	str	r3, [r2, lr]	@ D.37725, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].SlcEndMbn
	cmp	r3, #0	@ D.37725,
	ble	.L624	@,
	cmp	r0, r3	@ totalMbMin1, D.37725
	bcc	.L639	@,
.L624:
	rsb	r7, r8, r7	@ tmp371, tmp400, tmp401
	add	r5, r5, r7	@ tmp372, pCodecInf, tmp371
	add	r3, r5, #22528	@ tmp374, tmp372,
	add	r3, r3, #136	@ tmp374, tmp374,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len,
	ble	.L626	@,
	add	r3, r5, #22528	@ tmp382, tmp372,
	add	r3, r3, #120	@ tmp382, tmp382,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2,
	beq	.L627	@,
	add	r5, r5, #22528	@ tmp390, tmp372,
	ldr	r3, [r5, #156]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2,
	ble	.L626	@,
.L627:
	ldr	r3, [r9, #2164]	@ pCodecInf_6(D)->SlcNum, pCodecInf_6(D)->SlcNum
	mov	r0, #1	@ D.37724,
	add	r3, r3, r0	@ D.37725, pCodecInf_6(D)->SlcNum,
	str	r3, [r9, #2164]	@ D.37725, pCodecInf_6(D)->SlcNum
.L625:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L623:
	ldr	r3, [sp, #12]	@ pSyntax, %sfp
	rsb	r2, r8, r7	@ tmp356, tmp400, tmp401
	add	r2, r5, r2	@ tmp357, pCodecInf, tmp356
	movw	r1, #22672	@ tmp358,
	add	r6, r3, r6	@ tmp351, pSyntax, tmp350
	add	r6, r6, #520	@ tmp352, tmp351,
	ldr	r3, [r6, #8]	@ D.37725, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR
	cmp	r0, r3	@ totalMbMin1, D.37725
	str	r3, [r2, r1]	@ D.37725, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].SlcEndMbn
	bcs	.L624	@,
	ldr	r2, [r6, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR
	ldr	r1, .L640	@,
	str	r0, [sp]	@ totalMbMin1,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.37724, pCodecInf_6(D)->Is2ndFld
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L638:
	movw	ip, #22680	@ tmp242,
	str	r1, [fp, #4]	@ D.37728, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].pStream2
	mov	lr, #0	@ tmp244,
	str	lr, [r4, ip]	@ tmp244, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].BitOffset2
	ldr	ip, [r3, #2196]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsLength
	add	r1, r4, #22528	@ tmp243, tmp164,
	str	r0, [r1, #148]	@ D.37729, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Phy_addr2
	mov	ip, ip, asl #3	@ D.37725, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].BsLength,
	str	ip, [r1, #156]	@ D.37725, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].Len2
	ldr	r3, [r3, #2204]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID
	str	r3, [r2, #4]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_6(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_6(D)].SlcStr[_8].StreamID2
	b	.L622	@
.L639:
	ldr	r2, [r6, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_9(D)].AdvSlcSyntax[_8].SLICE_ADDR
	mov	r0, #1	@,
	str	ip, [sp]	@ D.37725,
	ldr	r1, .L640+4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37724,
	b	.L625	@
.L626:
	ldr	r1, .L640+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37724,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L641:
	.align	2
.L640:
	.word	.LC39
	.word	.LC38
	.word	.LC40
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
	ldrh	r2, [r1, #238]	@ D.37739, pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH
	ldrh	r3, [r5, r3]	@ pCodecInf_8(D)->AdvEntSyntax.CODED_WIDTH, pCodecInf_8(D)->AdvEntSyntax.CODED_WIDTH
	cmp	r3, r2	@ pCodecInf_8(D)->AdvEntSyntax.CODED_WIDTH, D.37739
	beq	.L643	@,
	adds	r3, r2, #15	@ D.37740, D.37739,
	add	ip, r0, #20480	@ tmp175, pCodecInf,
	addmi	r3, r2, #30	@, D.37740, D.37739,
	add	lr, r5, #2400	@ tmp147, tmp176,
	mov	r3, r3, asr #4	@ D.37740, D.37740,
	str	r3, [ip, #2080]	@ D.37740, pCodecInf_8(D)->MbWidth
	ldrh	r3, [r1, #238]	@ pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH, pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH
	str	r3, [ip, #2096]	@ pSyntax_6(D)->AdvEntSyntax.CODED_WIDTH, pCodecInf_8(D)->DispPicWidth
	ldrh	r2, [r1, #240]	@ D.37739, pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [lr]	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT
	cmp	r3, r2	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, D.37739
	beq	.L644	@,
.L645:
	adds	r3, r2, #15	@ D.37740, D.37739,
	addmi	r3, r2, #30	@, D.37740, D.37739,
	mov	r3, r3, asr #4	@ D.37740, D.37740,
	str	r3, [ip, #2084]	@ D.37740, pCodecInf_8(D)->MbHeight
	ldrh	r3, [r1, #240]	@ pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT, pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT
	str	r3, [ip, #2100]	@ pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT, pCodecInf_8(D)->DispPicHeight
.L644:
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
.L648:
	mov	r0, r4	@, Ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L643:
	add	r3, r5, #2400	@ tmp173, tmp176,
	ldrh	r2, [r1, #240]	@ D.37739, pSyntax_6(D)->AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [r3]	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT
	cmp	r3, r2	@ pCodecInf_8(D)->AdvEntSyntax.CODED_HEIGHT, D.37739
	addne	ip, r0, #20480	@ tmp175, pCodecInf,
	bne	.L645	@,
	mov	r4, #0	@ Ret,
	b	.L648	@
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
	bne	.L654	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VC1_Vfmw_UpdataLastPicRNDCTRL.part.5	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L654:
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
	ldr	r1, .L659	@,
	mov	r0, sp	@,
	bl	memcpy	@
	cmp	r5, #0	@ Quantizer,
	addeq	r3, sp, #128	@ tmp122,,
	movne	r0, r4	@ D.37750, PqIndex
	addeq	r4, r3, r4, lsl #2	@ tmp119, tmp122, PqIndex,
	ldreq	r0, [r4, #-128]	@ D.37750, PQuantIdex
	add	sp, sp, #132	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L660:
	.align	2
.L659:
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
	uxtb	r5, r0	@ D.37763,
	strb	r5, [r4, #254]	@ D.37763, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQINDEX
	cmp	r5, #0	@ D.37763,
	beq	.L662	@,
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.37763, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	mov	r1, r5	@, D.37763
	mov	r0, r7	@, D.37763
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r5, #8	@ D.37763,
	movhi	r3, #0	@ tmp147,
	str	r0, [r4, #340]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	strhib	r3, [r4, #255]	@ tmp147, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	bls	.L674	@,
.L664:
	cmp	r7, #1	@ D.37763,
	movne	r3, #0	@ tmp150,
	strneb	r3, [r4, #256]	@ tmp150, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	beq	.L675	@,
.L666:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV,
	movne	r3, #0	@ tmp154,
	strneb	r3, [r4, #257]	@ tmp154, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	beq	.L676	@,
.L668:
	ldrb	r3, [r4, #251]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	sub	r3, r3, #2	@ tmp158, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE,
	tst	r3, #253	@ tmp158,
	bne	.L669	@,
.L671:
	ldrb	r1, [r4, #258]	@ zero_extendqisi2	@ D.37765, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
.L670:
	mov	r0, r8	@, pCodecInf
	mov	r5, #1	@ D.37762,
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
.L662:
	mov	r0, r5	@, D.37762
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L669:
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES,
	bne	.L671	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37765,
	strb	r1, [r4, #258]	@ D.37765, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	b	.L670	@
.L674:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.37763, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	strb	r0, [r4, #255]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	b	.L664	@
.L675:
	mov	r1, r7	@, D.37763
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	b	.L666	@
.L676:
	mov	r0, r6	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	b	.L668	@
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
	uxtb	r6, r0	@ D.37777,
	strb	r6, [r4, #254]	@ D.37777, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQINDEX
	cmp	r6, #0	@ D.37777,
	beq	.L689	@,
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ D.37775, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	mov	r1, r6	@, D.37777
	mov	r0, r8	@, D.37775
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37777,
	movhi	r3, #0	@ tmp167,
	str	r0, [r4, #340]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	strhib	r3, [r4, #255]	@ tmp167, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	bls	.L701	@,
.L681:
	cmp	r8, #1	@ D.37775,
	movne	r3, #0	@ tmp170,
	strneb	r3, [r4, #256]	@ tmp170, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	beq	.L702	@,
.L683:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV,
	movne	r3, #0	@ tmp174,
	strneb	r3, [r4, #257]	@ tmp174, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	beq	.L703	@,
.L685:
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MULTIRES,
	beq	.L686	@,
	ldrb	r1, [r4, #258]	@ zero_extendqisi2	@ D.37775, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
.L687:
	mov	r0, r7	@, pCodecInf
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r1, .L707	@,
	mov	r2, r0	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r0, r0	@ D.37777,
	strb	r0, [r4, #259]	@ D.37777, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVMODE
	cmp	r0, #4	@ D.37777,
	beq	.L704	@,
.L688:
	mov	r1, r7	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L689	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.37777, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].DQUANT
	cmp	r1, #0	@ D.37777,
	strb	r0, [r4, #264]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].CBPTAB
	bne	.L705	@,
.L690:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r1, .L707+4	@,
	mov	r2, r0	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM,
	beq	.L706	@,
.L692:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37774,
	strb	r0, [r4, #269]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSDCTAB
	mov	r0, r3	@, D.37774
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L689:
	mov	r3, #0	@ D.37774,
	mov	r0, r3	@, D.37774
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L701:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ D.37775, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	strb	r0, [r4, #255]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	b	.L681	@
.L705:
	add	r3, r4, #272	@, pSyntax,
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L690	@
.L703:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	b	.L685	@
.L686:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37775,
	strb	r1, [r4, #258]	@ D.37775, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	b	.L687	@
.L702:
	mov	r1, r8	@, D.37775
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	b	.L683	@
.L704:
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
	b	.L688	@
.L706:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37777,
	strb	r0, [r4, #265]	@ D.37777, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTMBF
	cmp	r0, #1	@ D.37777,
	bne	.L692	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #266]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTFRM
	b	.L692	@
.L708:
	.align	2
.L707:
	.word	.LC41
	.word	.LC42
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
	uxtb	r6, r0	@ D.37791,
	strb	r6, [r4, #254]	@ D.37791, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQINDEX
	cmp	r6, #0	@ D.37791,
	beq	.L719	@,
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.37791, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	mov	r1, r6	@, D.37791
	mov	r0, r7	@, D.37791
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37791,
	movhi	r3, #0	@ tmp151,
	str	r0, [r4, #340]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	strhib	r3, [r4, #255]	@ tmp151, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	bls	.L732	@,
.L713:
	cmp	r7, #1	@ D.37791,
	movne	r3, #0	@ tmp154,
	strneb	r3, [r4, #256]	@ tmp154, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	beq	.L733	@,
.L715:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].EXTENDED_MV,
	movne	r3, #0	@ tmp158,
	strneb	r3, [r4, #257]	@ tmp158, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	beq	.L734	@,
.L717:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #0	@,
	mov	r1, r8	@, pCodecInf
	mov	r2, r4	@, pSyntax
	cmp	r0, r3	@,
	mov	r0, r5	@, pBs
	moveq	ip, #3	@ D.37792,
	movne	ip, #1	@ D.37792,
	strb	ip, [r4, #259]	@ D.37792, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVMODE
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L719	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.37791, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].DQUANT
	cmp	r1, #0	@ D.37791,
	strb	r0, [r4, #264]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].CBPTAB
	bne	.L735	@,
.L720:
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].VSTRANSFORM,
	beq	.L736	@,
.L722:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37789,
	strb	r0, [r4, #269]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TRANSDCTAB
	mov	r0, r3	@, D.37789
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L719:
	mov	r3, #0	@ D.37789,
	mov	r0, r3	@, D.37789
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L732:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #14]	@ zero_extendqisi2	@ D.37791, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].QUANTIZER
	strb	r0, [r4, #255]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HALFQP
	b	.L713	@
.L735:
	add	r3, r4, #272	@, pSyntax,
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L720	@
.L733:
	mov	r1, r7	@, D.37791
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PQUANTIZER
	b	.L715	@
.L734:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].MVRANGE
	b	.L717	@
.L736:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37791,
	strb	r0, [r4, #265]	@ D.37791, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTMBF
	cmp	r0, #1	@ D.37791,
	bne	.L722	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #266]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].TTFRM
	b	.L722	@
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
	mov	r5, r0	@ pBs, pBs
	ldrb	r7, [r2, #258]	@ zero_extendqisi2	@ RESPIC, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	mov	r0, r1	@, pCodecInf
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r1, r7	@, RESPIC
	bl	VC1_SetCurPicResolutionInfo	@
	ldr	r3, [r5, #16]	@ pBs_11(D)->BsLen, pBs_11(D)->BsLen
	cmp	r3, #1	@ pBs_11(D)->BsLen,
	ble	.L771	@,
	mov	r1, #100	@,
	add	r0, r4, #248	@, pSyntax,
	bl	__memzero	@
	add	r8, r6, #32768	@ tmp200, pCodecInf,
	add	r0, r6, #22528	@, pCodecInf,
	mov	r1, #12288	@,
	add	r0, r0, #120	@,,
	strb	r7, [r4, #258]	@ RESPIC, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RESPIC
	bl	__memzero	@
	ldr	r2, [r8, #2168]	@, pCodecInf_9(D)->PicCnt
	ldr	r1, .L775	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldrb	r3, [r4, #15]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].FINTERPFLAG, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].FINTERPFLAG
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].FINTERPFLAG,
	str	r0, [r4, #324]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen
	bne	.L740	@,
	ldrb	r2, [r4, #248]	@ zero_extendqisi2	@ D.37822, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].INTERPFRM
.L741:
	ldr	r1, .L775+4	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #12]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].RANGERED, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].RANGERED
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].RANGERED,
	strb	r0, [r4, #249]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].FRMCNT
	bne	.L772	@,
.L742:
	ldrb	r3, [r4, #13]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MAXBFRAMES, MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MAXBFRAMES
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	cmp	r3, #0	@ MEM[(struct VC1_SMPSEQSYNTAX_S *)pSyntax_4(D)].MAXBFRAMES,
	bne	.L743	@,
	bl	BsGet	@
	adds	r0, r0, #0	@ D.37818,,
	movne	r0, #1	@ D.37818,
	strb	r0, [r4, #251]	@ D.37818, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
.L744:
	mov	r3, #0	@ tmp178,
	strb	r0, [r6, #2]	@ D.37818, pCodecInf_9(D)->PicCodingType
	strb	r3, [r6, #4]	@ tmp178, pCodecInf_9(D)->PicStructure
	ldrb	r3, [r4, #251]	@ zero_extendqisi2	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	cmp	r3, #4	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	b	.L756	@
.L749:
	.word	.L769
	.word	.L750
	.word	.L751
	.word	.L756
	.word	.L752
.L752:
	ldrb	r3, [r6, #3099]	@ zero_extendqisi2	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE, pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r3, #1	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE,
	beq	.L769	@,
.L756:
	mov	r0, #0	@ D.37816,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L771:
	mov	r3, #5	@ tmp153,
	mov	r0, #1	@ D.37816,
	strb	r3, [r4, #251]	@ tmp153, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	strb	r3, [r6, #2]	@ tmp153, pCodecInf_9(D)->PicCodingType
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L743:
	bl	BsGet	@
	cmp	r0, #1	@ D.37817,
	beq	.L768	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L773	@,
	mov	r2, r4	@ D.37821, pSyntax
	mov	r3, #2	@ tmp191,
	add	r1, r4, #344	@, pSyntax,
	strb	r3, [r2, #251]!	@ tmp191, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	mov	r0, r5	@, pBs
	bl	VC1_DecBfractionSMP	@
	uxtb	r0, r0	@ D.37818,
	strb	r0, [r4, #252]	@ D.37818, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].BFRACTION
	cmp	r0, #21	@ D.37818,
	ldrneb	r0, [r4, #251]	@ zero_extendqisi2	@ D.37818, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	bne	.L744	@,
	b	.L756	@
.L740:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.37822,
	strb	r2, [r4, #248]	@ D.37822, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].INTERPFRM
	b	.L741	@
.L773:
	mov	r0, #0	@ tmp198,
.L768:
	strb	r0, [r4, #251]	@ tmp198, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].PTYPE
	b	.L744	@
.L769:
	mov	r1, r6	@, pCodecInf
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	VC1_Vfmw_ParseSMPIPicHdr	@
	mov	r6, r0	@ Ret,
.L753:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r3, [r4, #324]	@ MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen
	rsb	r0, r3, r0	@ D.37817, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen,
	str	r0, [r4, #324]	@ D.37817, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].HdrLen
	mov	r0, r5	@, pBs
	ldr	r4, [r8, #2192]	@ pCodecInf_9(D)->stCurPacket.BsLength, pCodecInf_9(D)->stCurPacket.BsLength
	bl	BsPos	@
	mov	r4, r4, asl #3	@ D.37817, pCodecInf_9(D)->stCurPacket.BsLength,
	rsb	r0, r0, r4	@ Len,, D.37817
	cmp	r0, #0	@ Len,
	ble	.L774	@,
	mov	r0, r6	@ D.37816, Ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L751:
	ldrb	r3, [r6, #3099]	@ zero_extendqisi2	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE, pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r3, #1	@ pCodecInf_9(D)->PreParseInfo.SMPSeqSyntax.PROFILE,
	bne	.L756	@,
	mov	r1, r6	@, pCodecInf
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	VC1_Vfmw_ParseMPBPicHdr	@
	mov	r6, r0	@ Ret,
	b	.L753	@
.L750:
	mov	r1, r6	@, pCodecInf
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	VC1_Vfmw_ParseSMPPPicHdr	@
	mov	r6, r0	@ Ret,
	b	.L753	@
.L772:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #250]	@, MEM[(struct VC1_SMPPICSYNTAX_S *)pSyntax_4(D) + 248B].RANGEREDFRM
	b	.L742	@
.L774:
	ldr	r1, .L775+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37816,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L776:
	.align	2
.L775:
	.word	.LC43
	.word	.LC44
	.word	.LC45
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
	beq	.L793	@,
.L778:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].FCM,
	bne	.L779	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].FINTERPFLAG,
	beq	.L794	@,
.L779:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.37830,
	strb	r6, [r4, #358]	@ D.37830, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.37830,
	beq	.L787	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37830, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_8(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.37830
	mov	r0, r7	@, D.37830
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37830,
	movhi	r3, #0	@ tmp157,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp157, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].HALFQP
	bls	.L795	@,
.L783:
	cmp	r7, #1	@ D.37830,
	movne	r3, #0	@ tmp160,
	strneb	r3, [r4, #359]	@ tmp160, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANTIZER
	beq	.L796	@,
.L785:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_8(D) + 16B].POSTPROCFLAG,
	beq	.L797	@,
.L786:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L787	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37830, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_8(D) + 188B].DQUANT
	cmp	r1, #0	@ D.37830,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].TRANSDCTAB
	bne	.L798	@,
	mov	r0, #1	@ D.37828,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L787:
	mov	r0, #0	@ D.37828,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L795:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37830, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_8(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].HALFQP
	b	.L783	@
.L794:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].INTERPFRM
	b	.L779	@
.L798:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANT
	bl	VC1_VopDQuant	@
	mov	r0, #1	@ D.37828,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L793:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #356]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].UVSAMP
	b	.L778	@
.L796:
	mov	r1, r7	@, D.37830
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].PQUANTIZER
	b	.L785	@
.L797:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_8(D) + 348B].POSTPROC
	b	.L786	@
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
	beq	.L800	@,
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L800	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	beq	.L837	@,
.L802:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.37837,
	strb	r6, [r4, #358]	@ D.37837, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.37837,
	beq	.L816	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37837, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.37837
	mov	r0, r7	@, D.37837
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37837,
	movhi	r3, #0	@ tmp203,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp203, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	bls	.L838	@,
.L806:
	cmp	r7, #1	@ D.37837,
	movne	r3, #0	@ tmp206,
	strneb	r3, [r4, #359]	@ tmp206, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	beq	.L839	@,
.L808:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG,
	beq	.L840	@,
.L809:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV,
	beq	.L841	@,
.L810:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L842	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV,
	movne	r3, #0	@ tmp223,
	strneb	r3, [r4, #373]	@ tmp223, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].DMVRANGE
	beq	.L843	@,
.L814:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #374]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.37836,
	str	r0, [r4, #468]	@ D.37836, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTCOMP
	beq	.L844	@,
.L815:
	mov	r3, #0	@ tmp228,
	strb	r3, [r4, #382]	@ tmp228, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVTYPEMBMode
.L812:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L816	@,
	ldr	r1, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r1, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L845	@,
.L817:
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
	uxtb	r0, r0	@ D.37835,
	strb	r0, [r4, #367]	@ D.37835, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].CBPTAB
	beq	.L846	@,
.L820:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37837, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].DQUANT
	cmp	r1, #0	@ D.37837,
	bne	.L847	@,
.L822:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM,
	beq	.L848	@,
.L824:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37834,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSDCTAB
	mov	r0, r3	@, D.37834
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L816:
	mov	r3, #0	@ D.37834,
	mov	r0, r3	@, D.37834
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L800:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	strb	r0, [r4, #356]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].UVSAMP
	bne	.L802	@,
.L837:
	ldr	r2, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r2, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	bne	.L802	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTERPFRM
	b	.L802	@
.L842:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r0, r0	@ D.37837,
	strb	r0, [r4, #362]	@ D.37837, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVMODE
	cmp	r0, #4	@ D.37837,
	bne	.L812	@,
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
	b	.L812	@
.L838:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37837, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	b	.L806	@
.L847:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L822	@
.L841:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVRANGE
	b	.L810	@
.L839:
	mov	r1, r7	@, D.37837
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	b	.L808	@
.L840:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].POSTPROC
	b	.L809	@
.L848:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37837,
	strb	r0, [r4, #368]	@ D.37837, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTMBF
	cmp	r0, #1	@ D.37837,
	bne	.L824	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTFRM
	b	.L824	@
.L846:
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #374]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH
	cmp	r3, #1	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVSWITCH,
	strb	r0, [r4, #376]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BMVBPTAB
	movne	r0, #0	@ D.37835,
	beq	.L849	@,
.L821:
	strb	r0, [r4, #377]	@ D.37835, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVBPTAB
	b	.L820	@
.L845:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MBMODETAB
	b	.L817	@
.L843:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].DMVRANGE
	b	.L814	@
.L844:
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].LUMSHIFT
	b	.L815	@
.L849:
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37835,
	b	.L821	@
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
	beq	.L851	@,
	ldr	r3, [r4, #392]	@ D.37841, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #2	@ D.37841,
	beq	.L851	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	beq	.L893	@,
.L853:
	cmp	r3, #0	@ D.37841,
	bne	.L857	@,
	add	r1, r4, #496	@, pSyntax,
	mov	r0, r5	@, pBs
	bl	VC1_DecBfraction	@
	uxtb	r0, r0	@ D.37844,
	strb	r0, [r4, #350]	@ D.37844, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BFRACTION
	cmp	r0, #21	@ D.37844,
	beq	.L855	@,
.L857:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.37844,
	strb	r6, [r4, #358]	@ D.37844, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.37844,
	beq	.L855	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37844, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.37844
	mov	r0, r7	@, D.37844
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37844,
	movhi	r3, #0	@ tmp193,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp193, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	bls	.L894	@,
	cmp	r7, #1	@ D.37844,
	movne	r3, #0	@ tmp196,
	strneb	r3, [r4, #359]	@ tmp196, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	beq	.L895	@,
.L862:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].POSTPROCFLAG,
	beq	.L896	@,
.L863:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L897	@,
.L864:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_MV,
	beq	.L898	@,
.L865:
	ldr	r3, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L899	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].EXTENDED_DMV,
	beq	.L900	@,
.L869:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #468]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTCOMP
.L868:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L855	@,
	ldr	r1, [r4, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r1, #2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM,
	beq	.L901	@,
.L870:
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
	uxtb	r0, r0	@ D.37842,
	strb	r0, [r4, #367]	@ D.37842, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].CBPTAB
	beq	.L902	@,
.L873:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37844, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].DQUANT
	cmp	r1, #0	@ D.37844,
	bne	.L903	@,
.L874:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].VSTRANSFORM,
	beq	.L904	@,
.L876:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37841,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TRANSDCTAB
	mov	r0, r3	@, D.37841
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L855:
	mov	r3, #0	@ D.37841,
	mov	r0, r3	@, D.37841
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L851:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG
	ldr	r3, [r4, #392]	@ D.37841, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	cmp	r1, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_20(D) + 16B].FINTERPFLAG,
	strb	r0, [r4, #356]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].UVSAMP
	bne	.L853	@,
.L893:
	cmp	r3, #0	@ D.37841,
	bne	.L857	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ D.37841, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	strb	r0, [r4, #357]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].INTERPFRM
	b	.L853	@
.L899:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	moveq	r3, #3	@ D.37842,
	movne	r3, #1	@ D.37842,
	strb	r3, [r4, #362]	@ D.37842, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVMODE
	b	.L868	@
.L894:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37844, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_20(D) + 188B].QUANTIZER
	cmp	r7, #1	@ D.37844,
	movne	r3, #0	@ tmp196,
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].HALFQP
	strneb	r3, [r4, #359]	@ tmp196, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	bne	.L862	@,
.L895:
	mov	r1, r7	@, D.37844
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANTIZER
	b	.L862	@
.L897:
	add	r1, r4, #496	@, pSyntax,
	mov	r0, r5	@, pBs
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BFRACTION
	b	.L864	@
.L898:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MVRANGE
	b	.L865	@
.L896:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].POSTPROC
	b	.L863	@
.L903:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L874	@
.L904:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37844,
	strb	r0, [r4, #368]	@ D.37844, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTMBF
	cmp	r0, #1	@ D.37844,
	bne	.L876	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].TTFRM
	b	.L876	@
.L902:
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].FCM
	strb	r0, [r4, #376]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].BMVBPTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].QMVBPTAB
	b	.L873	@
.L901:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].MBMODETAB
	b	.L870	@
.L900:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_20(D) + 348B].DMVRANGE
	b	.L869	@
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
	movle	r7, #1	@ D.37883,
	movle	r1, r7	@ Len, D.37883
	ble	.L906	@,
	cmp	r0, #11	@ Code,
	movle	r7, #2	@ D.37883,
	movle	r1, r7	@ Len, D.37883
	bgt	.L938	@,
.L906:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	strb	r7, [r4, #349]	@ D.37883, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE
	ldrb	r3, [r6, #3509]	@ zero_extendqisi2	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r6, #2]	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->PicCodingType
	ldrb	r3, [r4, #24]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TFCNTRFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TFCNTRFLAG
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].TFCNTRFLAG,
	bne	.L939	@,
.L907:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.37886, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PULLDOWN
	cmp	r3, #0	@ D.37886,
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE
	beq	.L908	@,
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	beq	.L940	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].TFF
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.37886, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PULLDOWN
	cmp	r2, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	strb	r0, [r4, #353]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RFF
	beq	.L941	@,
.L912:
	cmp	r3, #1	@ D.37886,
	bne	.L914	@,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG
	ldrb	r3, [r4, #354]	@ zero_extendqisi2	@ D.37884, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RPTFRM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG,
	add	r3, r3, #1	@ D.37884, D.37884,
	str	r3, [r4, #492]	@ D.37884, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	bne	.L923	@,
.L915:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37883,
	strb	r0, [r4, #355]	@ D.37883, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PS_PRESENT
	cmp	r0, #1	@ D.37883,
	bne	.L923	@,
	ldr	r3, [r4, #492]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows,
	ble	.L923	@,
	add	r9, r4, #396	@ ivtmp.1024, pSyntax,
	mov	r7, r4	@ ivtmp.1029, pSyntax
	mov	r8, #0	@ i,
.L924:
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
	bgt	.L924	@,
	b	.L923	@
.L908:
	mov	r2, #1	@ tmp161,
	cmp	r3, r2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	strb	r2, [r4, #352]	@ tmp161, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].TFF
	beq	.L911	@,
.L914:
	mov	r3, #1	@ tmp170,
	str	r3, [r4, #492]	@ tmp170, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
.L913:
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_9(D) + 188B].PANSCAN_FLAG,
	beq	.L915	@,
.L923:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE
	cmp	r3, #5	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].PTYPE
	b	.L916	@
.L918:
	.word	.L921
	.word	.L919
	.word	.L920
	.word	.L916
	.word	.L921
	.word	.L929
.L921:
	mov	r2, r4	@, pSyntax
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	VC1_Vfmw_ParseAdvIPicHdr	@
.L940:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.37886, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].PULLDOWN
	cmp	r2, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_9(D) + 16B].INTERLACE,
	strb	r0, [r4, #354]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RPTFRM
	bne	.L912	@,
.L941:
	cmp	r3, #1	@ D.37886,
	beq	.L942	@,
.L911:
	mov	r3, #2	@ tmp167,
	str	r3, [r4, #492]	@ tmp167, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	b	.L913	@
.L938:
	cmp	r0, #13	@ Code,
	movle	r7, #0	@ D.37883,
	movle	r1, #3	@ Len,
	ble	.L906	@,
	cmp	r0, #14	@ Code,
	moveq	r7, #4	@ D.37883,
	movne	r7, #5	@ D.37883,
	movne	r1, #4	@ Len,
	moveq	r1, r7	@ Len, D.37883
	b	.L906	@
.L939:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #396]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].TFCNTR
	b	.L907	@
.L929:
	mov	r0, #1	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L919:
	mov	r2, r4	@, pSyntax
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	VC1_Vfmw_ParseAdvPPicHdr	@
.L920:
	mov	r2, r4	@, pSyntax
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	VC1_Vfmw_ParseAdvBPicHdr	@
.L916:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L942:
	ldrb	r3, [r4, #353]	@ zero_extendqisi2	@ D.37884, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].RFF
	add	r3, r3, #2	@ D.37884, D.37884,
	str	r3, [r4, #492]	@ D.37884, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_9(D) + 348B].NumOfPanScanWindows
	b	.L913	@
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
	uxtb	r5, r0	@ D.37899,
	strb	r5, [r4, #358]	@ D.37899, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQINDEX
	cmp	r5, #0	@ D.37899,
	beq	.L951	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37899, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	mov	r1, r5	@, D.37899
	mov	r0, r7	@, D.37899
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r5, #8	@ D.37899,
	movhi	r3, #0	@ tmp142,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp142, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	bls	.L957	@,
.L947:
	cmp	r7, #1	@ D.37899,
	movne	r3, #0	@ tmp145,
	strneb	r3, [r4, #359]	@ tmp145, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	beq	.L958	@,
.L949:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG,
	beq	.L959	@,
.L950:
	mov	r1, r8	@, pCodecInf
	mov	r3, #0	@,
	mov	r2, r4	@, pSyntax
	mov	r0, r6	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L951	@,
	mov	r0, r6	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM
	mov	r0, r6	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM2
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37899, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.37899,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSDCTAB
	bne	.L960	@,
	mov	r0, #1	@ D.37897,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L951:
	mov	r0, #0	@ D.37897,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L957:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37899, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	b	.L947	@
.L960:
	mov	r0, r6	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	bl	VC1_VopDQuant	@
	mov	r0, #1	@ D.37897,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L958:
	mov	r1, r7	@, D.37899
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	b	.L949	@
.L959:
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].POSTPROC
	b	.L950	@
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
	uxtb	r6, r0	@ D.37912,
	strb	r6, [r4, #358]	@ D.37912, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.37912,
	beq	.L962	@,
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37912, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.37912
	mov	r0, r7	@, D.37912
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37912,
	movhi	r3, #0	@ tmp183,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp183, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	bls	.L990	@,
.L964:
	cmp	r7, #1	@ D.37912,
	movne	r3, #0	@ tmp186,
	strneb	r3, [r4, #359]	@ tmp186, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	beq	.L991	@,
.L966:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG,
	beq	.L992	@,
.L967:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37912,
	strb	r0, [r4, #380]	@ D.37912, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].NUMREF
	cmp	r0, #0	@ D.37912,
	beq	.L993	@,
.L968:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV,
	beq	.L994	@,
.L969:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV,
	beq	.L995	@,
.L970:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r0, r0	@ D.37912,
	strb	r0, [r4, #362]	@ D.37912, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE
	cmp	r0, #4	@ D.37912,
	beq	.L996	@,
.L972:
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
	uxtb	r0, r0	@ D.37914,
	strb	r0, [r4, #366]	@ D.37914, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #362]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVMODE,
	strb	r0, [r4, #367]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].CBPTAB
	beq	.L976	@,
	movw	r3, #362	@ tmp213,
	ldrh	r3, [r4, r3]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B], MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B]
	cmp	r3, #4	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B],
	beq	.L976	@,
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37912, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.37912,
	bne	.L997	@,
.L978:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM,
	beq	.L998	@,
.L980:
	mov	r0, r5	@, pBs
	mov	r6, #1	@ D.37910,
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSDCTAB
.L962:
	mov	r0, r6	@, D.37910
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L976:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37912, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.37912,
	strb	r0, [r4, #377]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].QMVBPTAB
	beq	.L978	@,
.L997:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L978	@
.L993:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	clz	r0, r0	@ tmp191,
	mov	r0, r0, lsr #5	@ tmp191, tmp191,
	strb	r0, [r4, #381]	@ tmp191, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].REFFIELD
	b	.L968	@
.L990:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ D.37912, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	b	.L964	@
.L994:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVRANGE
	b	.L969	@
.L995:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].DMVRANGE
	b	.L970	@
.L991:
	mov	r1, r7	@, D.37912
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	b	.L966	@
.L998:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37912,
	strb	r0, [r4, #368]	@ D.37912, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTMBF
	cmp	r0, #1	@ D.37912,
	bne	.L980	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTFRM
	b	.L980	@
.L992:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].POSTPROC
	b	.L967	@
.L996:
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
	bne	.L972	@,
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r4, #480]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].LUMSCALE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #484]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].LUMSHIFT2
	b	.L972	@
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
	uxtb	r6, r0	@ D.37928,
	strb	r6, [r4, #358]	@ D.37928, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQINDEX
	cmp	r6, #0	@ D.37928,
	beq	.L1009	@,
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ D.37928, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	mov	r1, r6	@, D.37928
	mov	r0, r8	@, D.37928
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37928,
	movhi	r3, #0	@ tmp166,
	str	r0, [r4, #464]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	strhib	r3, [r4, #351]	@ tmp166, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	bls	.L1022	@,
.L1003:
	cmp	r8, #1	@ D.37928,
	movne	r3, #0	@ tmp169,
	strneb	r3, [r4, #359]	@ tmp169, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	beq	.L1023	@,
.L1005:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG
	cmp	r3, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_4(D) + 16B].POSTPROCFLAG,
	beq	.L1024	@,
.L1006:
	ldrb	r3, [r4, #194]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_MV,
	beq	.L1025	@,
.L1007:
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV
	cmp	r3, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].EXTENDED_DMV,
	beq	.L1026	@,
.L1008:
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
	beq	.L1009	@,
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
	beq	.L1027	@,
.L1010:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37928, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].DQUANT
	cmp	r1, #0	@ D.37928,
	bne	.L1028	@,
.L1011:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].VSTRANSFORM,
	beq	.L1029	@,
.L1013:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37926,
	strb	r0, [r4, #372]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TRANSDCTAB
	mov	r0, r3	@, D.37926
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1009:
	mov	r3, #0	@ D.37926,
	mov	r0, r3	@, D.37926
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1022:
	mov	r1, r7	@, tmp161
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ D.37928, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_4(D) + 188B].QUANTIZER
	strb	r0, [r4, #351]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].HALFQP
	b	.L1003	@
.L1028:
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_VopDQuant	@
	b	.L1011	@
.L1027:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].QMVBPTAB
	b	.L1010	@
.L1024:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #360]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].POSTPROC
	b	.L1006	@
.L1025:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].MVRANGE
	b	.L1007	@
.L1023:
	mov	r1, r8	@, D.37928
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].PQUANTIZER
	b	.L1005	@
.L1026:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].DMVRANGE
	b	.L1008	@
.L1029:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37928,
	strb	r0, [r4, #368]	@ D.37928, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTMBF
	cmp	r0, #1	@ D.37928,
	bne	.L1013	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #369]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_4(D) + 348B].TTFRM
	b	.L1013	@
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
	beq	.L1031	@,
	add	r3, r1, #20480	@ tmp181, pCodecInf,
	ldr	r3, [r3, #2164]	@ pCodecInf_15(D)->SlcNum, pCodecInf_15(D)->SlcNum
	cmp	r3, #0	@ pCodecInf_15(D)->SlcNum,
	ble	.L1032	@,
.L1031:
	mov	r1, #3	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, .L1077	@ tmp183,
	str	r0, [r4, #472]	@ D.37969, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE
	add	r0, r3, r0, lsl #3	@ tmp184, tmp183, D.37969,
	ldr	r3, [r0, #696]	@ D.37969, FldPTypeTab
	ldr	r2, [r0, #692]	@ D.37969, FldPTypeTab
	str	r3, [r4, #504]	@ D.37969, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType
	str	r2, [r4, #500]	@ D.37969, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_15(D)->Is2ndFld, pCodecInf_15(D)->Is2ndFld
	cmp	r1, #0	@ pCodecInf_15(D)->Is2ndFld,
	uxtbeq	r3, r2	@ D.37966, D.37969
	uxtbne	r3, r3	@ D.37966, D.37969
	strb	r3, [r4, #349]	@ D.37966, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	ldrb	r3, [r5, #3509]	@ zero_extendqisi2	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r5, #2]	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->PicCodingType
	ldrb	r3, [r4, #24]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].TFCNTRFLAG, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].TFCNTRFLAG
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].TFCNTRFLAG,
	bne	.L1071	@,
.L1035:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.37966, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].PULLDOWN
	cmp	r3, #0	@ D.37966,
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE
	bne	.L1072	@,
	mov	r2, #1	@ tmp198,
	cmp	r3, r2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE,
	strb	r2, [r4, #352]	@ tmp198, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	beq	.L1039	@,
.L1042:
	mov	r3, #1	@ tmp207,
	str	r3, [r4, #492]	@ tmp207, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
.L1041:
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG,
	beq	.L1043	@,
.L1046:
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
	beq	.L1073	@,
.L1045:
	ldr	r3, [r4, #472]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE
	cmp	r3, #3	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE,
	bgt	.L1050	@,
.L1049:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	cmp	r3, #4	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	b	.L1058	@
.L1053:
	.word	.L1052
	.word	.L1054
	.word	.L1055
	.word	.L1058
	.word	.L1052
.L1072:
	cmp	r3, #0	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE,
	bne	.L1037	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.37966, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].PULLDOWN
	strb	r0, [r4, #354]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RPTFRM
.L1038:
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE
	cmp	r2, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].INTERLACE,
	beq	.L1074	@,
	cmp	r3, #1	@ D.37966,
	bne	.L1042	@,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG, MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG
	ldrb	r3, [r4, #354]	@ zero_extendqisi2	@ D.37969, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RPTFRM
	cmp	r1, #1	@ MEM[(struct VC1_ADVENTSYNTAX_S *)pSyntax_13(D) + 188B].PANSCAN_FLAG,
	add	r3, r3, #1	@ D.37969, D.37969,
	str	r3, [r4, #492]	@ D.37969, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	bne	.L1046	@,
.L1043:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37968,
	strb	r0, [r4, #355]	@ D.37968, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PS_PRESENT
	cmp	r0, #1	@ D.37968,
	bne	.L1046	@,
	ldr	r3, [r4, #492]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows,
	ble	.L1046	@,
	add	r9, r4, #396	@ ivtmp.1064, pSyntax,
	mov	r7, r4	@ ivtmp.1069, pSyntax
	mov	r8, #0	@ i,
.L1047:
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
	bgt	.L1047	@,
	b	.L1046	@
.L1055:
	mov	r0, r6	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvBFieldHdr	@
.L1051:
	ldrb	r3, [r4, #352]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF,
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_15(D)->Is2ndFld, pCodecInf_15(D)->Is2ndFld
	bne	.L1075	@,
.L1056:
	subs	r3, r3, #1	@ tmp231, pCodecInf_15(D)->Is2ndFld,
	movne	r3, #1	@ tmp231,
	strb	r3, [r4, #389]	@ tmp231, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1054:
	mov	r0, r6	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvPFieldHdr	@
	ldrb	r3, [r4, #352]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	cmp	r3, #0	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF,
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ pCodecInf_15(D)->Is2ndFld, pCodecInf_15(D)->Is2ndFld
	beq	.L1056	@,
.L1075:
	adds	r3, r3, #0	@ tmp228, pCodecInf_15(D)->Is2ndFld,
	movne	r3, #1	@ tmp228,
	strb	r3, [r4, #389]	@ tmp228, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1052:
	mov	r0, r6	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvIFieldHdr	@
	b	.L1051	@
.L1073:
	ldr	r3, [r4, #472]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE
	cmp	r3, #3	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FPTYPE,
	ble	.L1048	@,
.L1050:
	add	r1, r4, #496	@, pSyntax,
	mov	r0, r6	@, pBs
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].BFRACTION
	b	.L1049	@
.L1071:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	str	r0, [r4, #396]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFCNTR
	b	.L1035	@
.L1074:
	cmp	r3, #1	@ D.37966,
	beq	.L1076	@,
.L1039:
	mov	r3, #2	@ tmp204,
	str	r3, [r4, #492]	@ tmp204, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	b	.L1041	@
.L1037:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ D.37966, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_13(D) + 16B].PULLDOWN
	strb	r0, [r4, #353]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RFF
	b	.L1038	@
.L1058:
	mov	r0, #0	@ Ret,
	b	.L1051	@
.L1048:
	mov	r0, r6	@, pBs
	bl	VC1_DecRefdist	@
	strb	r0, [r4, #379]	@, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].REFDIST
	b	.L1045	@
.L1076:
	ldrb	r3, [r4, #353]	@ zero_extendqisi2	@ D.37969, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].RFF
	add	r3, r3, #2	@ D.37969, D.37969,
	str	r3, [r4, #492]	@ D.37969, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].NumOfPanScanWindows
	b	.L1041	@
.L1032:
	ldr	r3, [r2, #504]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType
	strb	r3, [r2, #349]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].FldPicType, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_13(D) + 348B].PTYPE
	ldrb	r3, [r1, #3509]	@ zero_extendqisi2	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r1, #2]	@ pCodecInf_15(D)->SynNew.AdvPicSyntax.PTYPE, pCodecInf_15(D)->PicCodingType
	b	.L1049	@
.L1078:
	.align	2
.L1077:
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
	beq	.L1080	@,
	add	r3, r4, #20480	@ tmp124, pCodecInf,
	ldr	r3, [r3, #2164]	@ pCodecInf_8(D)->SlcNum, pCodecInf_8(D)->SlcNum
	cmp	r3, #0	@ pCodecInf_8(D)->SlcNum,
	ldrle	r3, [r5, #392]	@ MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM
	bicle	r3, r3, #2	@ D.37974, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM,
	ble	.L1081	@,
.L1080:
	ldrb	r8, [r5, #23]	@ zero_extendqisi2	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE
	cmp	r8, #1	@ MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE,
	movne	r3, #0	@ D.37974,
	movne	r0, r3	@ D.37974, D.37974
	beq	.L1090	@,
.L1082:
	str	r0, [r5, #392]	@ D.37974, MEM[(struct VC1_ADVPICSYNTAX_S *)pSyntax_6(D) + 348B].FCM
.L1081:
	cmp	r3, #0	@ D.37974,
	mov	r2, r5	@, pSyntax
	mov	r1, r4	@, pCodecInf
	mov	r0, r6	@, pBs
	beq	.L1091	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFieldPicHdr	@
.L1091:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFramePicHdr	@
.L1090:
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r7, r0	@ Code,
	ble	.L1092	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	bic	r3, r7, #2	@ D.37974, Code,
	mov	r0, r7	@ D.37974, Code
	b	.L1082	@
.L1092:
	mov	r1, r8	@, MEM[(struct VC1_ADVSEQSYNTAX_S *)pSyntax_6(D) + 16B].INTERLACE
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r3, #0	@ D.37974,
	mov	r0, r3	@ D.37974, D.37974
	b	.L1082	@
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
	ldr	r4, [r3, #2164]	@ D.37979, pCodecInf_4(D)->SlcNum
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r3, r4, asl #4	@ tmp124, D.37979,
	sub	r4, r3, r4, asl #2	@ tmp125, tmp124, D.37979,
	add	r4, r5, r4	@ tmp126, pSyntax, tmp125
	add	r4, r4, #520	@ tmp127, tmp126,
	str	r0, [r4, #8]	@, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_6(D)].AdvSlcSyntax[_5].SLICE_ADDR
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37980,
	strb	r0, [r4, #4]	@ D.37980, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_6(D)].AdvSlcSyntax[_5].PIC_HEADER_FLAG
	cmp	r0, #1	@ D.37980,
	beq	.L1096	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1096:
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
	beq	.L1098	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, pVc1Packet_3(D)->StreamID
	bl	SM_ReleaseStreamSeg	@
.L1098:
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
	beq	.L1104	@,
	add	r7, r0, #20480	@ tmp140, pCodeInfo,
	ldr	r3, [r7, #2164]	@ pCodeInfo_6(D)->SlcNum, pCodeInfo_6(D)->SlcNum
	cmp	r3, #0	@ pCodeInfo_6(D)->SlcNum,
	ble	.L1119	@,
	add	r4, r0, #22528	@ ivtmp.1103, pCodeInfo,
	mov	r5, #0	@ i,
	add	r4, r4, #160	@ ivtmp.1103, ivtmp.1103,
	b	.L1108	@
.L1107:
	ldr	r3, [r7, #2164]	@ pCodeInfo_6(D)->SlcNum, pCodeInfo_6(D)->SlcNum
	add	r4, r4, #48	@ ivtmp.1103, ivtmp.1103,
	cmp	r3, r5	@ pCodeInfo_6(D)->SlcNum, i
	ble	.L1120	@,
.L1108:
	ldr	r1, [r4]	@, MEM[base: _1, offset: 0B]
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #-36]	@ MEM[base: _1, offset: 4294967260B], MEM[base: _1, offset: 4294967260B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #0	@ MEM[base: _1, offset: 4294967260B],
	beq	.L1107	@,
	ldr	r3, [r4, #-12]	@ MEM[base: _1, offset: 4294967284B], MEM[base: _1, offset: 4294967284B]
	cmp	r3, #0	@ MEM[base: _1, offset: 4294967284B],
	beq	.L1107	@,
	ldr	r1, [r4, #4]	@, MEM[base: _1, offset: 4B]
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r7, #2164]	@ pCodeInfo_6(D)->SlcNum, pCodeInfo_6(D)->SlcNum
	add	r4, r4, #48	@ ivtmp.1103, ivtmp.1103,
	cmp	r3, r5	@ pCodeInfo_6(D)->SlcNum, i
	bgt	.L1108	@,
.L1120:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1104:
	add	r1, r0, #34816	@, pCodeInfo,
	mov	r0, r6	@, ChanID
	add	r1, r1, #124	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_ClearCurPacket	@
.L1119:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VC1_ClearCurPic, .-VC1_ClearCurPic
	.align	2
	.global	VC1DEC_VDMPostProc
	.type	VC1DEC_VDMPostProc, %function
VC1DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #110592	@ tmp420, pCtx,
	add	r6, r0, #98304	@ tmp418, pCtx,
	add	r8, r0, #77824	@ tmp419, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r0	@ pCtx, pCtx
	mov	r10, r1	@ ErrRatio, ErrRatio
	add	r0, r8, #448	@, tmp419,
	ldr	r1, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	VC1_ClearCurPic	@
	ldr	r1, [r6, #2604]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].CurFsID
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r6, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].BwdFsID
	mov	r5, r0	@ pCurImg,
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r6, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].FwdFsID
	mov	r9, r0	@ pBwdImg,
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r5, #0	@ pCurImg,
	beq	.L1155	@,
	cmp	r10, #0	@ ErrRatio,
	movlt	r10, #0	@ D.38010,
	blt	.L1124	@,
	cmp	r10, #100	@ ErrRatio,
	movge	r10, #100	@ D.38010,
.L1124:
	str	r10, [r5, #180]	@ D.38010, pCurImg_18->error_level
	mov	r0, r7	@, pCtx
	bl	VC1_SetImgFormat	@
	ldrb	r3, [r8, #451]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].Last_Struct_IPB, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].Last_Struct_IPB
	cmp	r3, #3	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].Last_Struct_IPB,
	beq	.L1156	@,
.L1125:
	mov	r0, #0	@ tmp218,
	str	r0, [r5, #192]	@ tmp218, pCurImg_18->p_usrdat
	str	r0, [r5, #196]	@ tmp218, pCurImg_18->p_usrdat
	ldr	r3, [r7]	@ pCtx_10(D)->pstExtraData, pCtx_10(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _39->s32DecOrderOutput, _39->s32DecOrderOutput
	cmp	r3, #1	@ _39->s32DecOrderOutput,
	beq	.L1126	@,
	ldrb	r0, [r8, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCodingType
	sub	r0, r0, #2	@ tmp226, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCodingType,
	ands	r0, r0, #253	@ tmp230, tmp226,
	beq	.L1127	@,
	ldr	r5, [r6, #2592]	@ D.38018, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefNum
	cmp	r5, #1	@ D.38018,
	ldrhi	r1, [r6, #2596]	@ D.38015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].FwdFsID
	mvnls	r1, #0	@ D.38015,
	cmp	r5, #1	@ D.38018,
	movls	r5, #0	@ pref,
	movhi	r5, #1	@ pref,
	str	r1, [r6, #2608]	@ D.38015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
.L1129:
	ldr	r3, [r4, #2616]	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt
	cmn	r1, #1	@ D.38015,
	add	r3, r3, #1	@ D.38011, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt,
	str	r3, [r4, #2616]	@ D.38011, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].PicCnt
	beq	.L1130	@,
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pToQueImg,
	beq	.L1157	@,
	ldr	r2, [r9, #180]	@ D.38018, pToQueImg_64->error_level
	cmp	r2, #0	@ D.38018,
	beq	.L1132	@,
	ldr	r3, [r7]	@ pCtx_10(D)->pstExtraData, pCtx_10(D)->pstExtraData
	ldr	r3, [r3, #4]	@ D.38011, _67->s32OutErrThr
	cmp	r2, r3	@ D.38018, D.38011
	bhi	.L1133	@,
.L1132:
	ldr	r10, [r6, #2608]	@ D.38011, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	mov	r1, r10	@, D.38011
	bl	FSP_GetRef	@
	mov	r2, r10	@, D.38011
	ldr	r1, .L1160	@,
	mov	r3, r0	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r6, #2608]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FSP_SetDisplay	@
	cmp	r5, #1	@ pref,
	ldreq	r3, [r6, #2520]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	movne	r1, #1	@ tmp310,
	ldrne	r2, [r6, #2512]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	movne	r3, #2	@ tmp314,
	strneb	r1, [r2, #1]	@ tmp310, _97->is_to_display
	mov	r2, r7	@, pCtx
	streqb	r5, [r3, #1]	@ pref, _94->is_to_display
	mov	r1, #1	@,
	strneb	r3, [r8, #449]	@ tmp314, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	add	r3, r7, #112640	@, pCtx,
	streqb	r5, [r8, #449]	@ pref, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	add	r3, r3, #728	@,,
	ldr	r0, [r4, #3128]	@ pCtx_10(D)->ChanID, pCtx_10(D)->ChanID
	str	r9, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.38011,
	beq	.L1136	@,
	ldr	r1, [r9, #192]	@, pToQueImg_64->p_usrdat
	mov	r7, #0	@ tmp325,
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r9, #192]	@ tmp325, pToQueImg_64->p_usrdat
	ldr	r1, [r9, #196]	@, pToQueImg_64->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r9, #196]	@ tmp325, pToQueImg_64->p_usrdat
	mov	r2, r7	@, tmp325
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	ldr	r1, [r6, #2608]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r5, #1	@ pref,
	mov	r0, r7	@ D.38010, tmp325
	ldreq	r3, [r6, #2520]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	ldrne	r3, [r6, #2512]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	strb	r7, [r3, #1]	@ tmp325,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1127:
	ldr	r1, [r6, #2604]	@ D.38015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].CurFsID
	cmp	r9, #0	@ pBwdImg,
	moveq	r5, r9	@ pref, pBwdImg
	str	r1, [r6, #2608]	@ D.38015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	beq	.L1129	@,
	ldrd	r10, [r5, #8]	@ D.38016, pCurImg,
	ldrd	r2, [r9, #8]	@ D.38016, pBwdImg,
	cmp	r2, r10	@ D.38016, D.38016
	sbcs	ip, r3, fp	@ tmp421, D.38016, D.38016
	movge	r5, r0	@ pref, tmp230
	strltd	r2, [r5, #8]	@ D.38016, pCurImg,
	movlt	r5, r0	@ pref, tmp230
	strltd	r10, [r9, #8]	@ D.38016, pBwdImg,
	ldrlt	r1, [r6, #2608]	@ D.38015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	b	.L1129	@
.L1158:
	ldr	r2, [r6, #2516]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	mov	r3, #0	@ tmp358,
	strb	r3, [r2, #1]	@ tmp358, _120->is_to_display
	strb	r3, [r8, #449]	@ tmp358, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
.L1130:
	mov	r0, #1	@ D.38010,
.L1123:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1156:
	ldrb	r3, [r8, #457]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].LastIs2ndFld, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].LastIs2ndFld
	cmp	r3, #1	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].LastIs2ndFld,
	bne	.L1130	@,
	b	.L1125	@
.L1126:
	ldr	r1, [r6, #2604]	@ D.38015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].CurFsID
	mov	r5, r0	@ pref, tmp218
	str	r1, [r6, #2608]	@ D.38015, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	b	.L1129	@
.L1136:
	ldrb	r5, [r8, #449]	@ zero_extendqisi2	@ D.38013, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	sxtb	r5, r5	@ D.38013, D.38013
	cmp	r5, #3	@ D.38013,
	beq	.L1158	@,
	cmp	r5, #1	@ D.38013,
	beq	.L1159	@,
	cmp	r5, #2	@ D.38013,
	bne	.L1130	@,
	ldr	r2, [r6, #2512]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	mov	r3, #0	@ tmp380,
	strb	r3, [r2, #1]	@ tmp380,
	strb	r3, [r8, #449]	@ tmp380, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	b	.L1123	@
.L1133:
	ldr	r1, .L1160+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r9, #192]	@, pToQueImg_64->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	mov	r7, #0	@ tmp391,
	bl	FreeUsdByDec	@
	str	r7, [r9, #192]	@ tmp391, pToQueImg_64->p_usrdat
	ldr	r1, [r9, #196]	@, pToQueImg_64->p_usrdat
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r9, #196]	@ tmp391, pToQueImg_64->p_usrdat
	mov	r2, r7	@, tmp391
	ldr	r0, [r4, #3128]	@, pCtx_10(D)->ChanID
	ldr	r1, [r6, #2608]	@, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r5, #1	@ pref,
	ldreq	r3, [r6, #2520]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	moveq	r0, r5	@ D.38010, pref
	ldrne	r3, [r6, #2512]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pCurFrm
	movne	r0, #1	@ D.38010,
	strb	r7, [r3, #1]	@ tmp391,
	b	.L1123	@
.L1159:
	ldr	r2, [r6, #2520]	@ D.38020, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].pRef
	mov	r3, #0	@ tmp369,
	mov	r0, r5	@ D.38010, D.38013
	strb	r3, [r2, #1]	@ tmp369,
	strb	r3, [r8, #449]	@ tmp369, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_10(D) + 78272B].RefId
	b	.L1123	@
.L1155:
	str	r0, [sp]	@ pFwdImg,
	mov	r3, r9	@, pBwdImg
	mov	r2, r5	@, pCurImg
	ldr	r1, .L1160+8	@,
	mov	r0, r5	@, pCurImg
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38010, pCurImg
	b	.L1123	@
.L1157:
	movw	r2, #738	@,
	ldr	r1, .L1160+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.38010, pToQueImg
	b	.L1123	@
.L1161:
	.align	2
.L1160:
	.word	.LC48
	.word	.LC49
	.word	.LC46
	.word	.LC47
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
	add	r5, r0, #77824	@ tmp484, pVC1_CTX_S,
	ldrb	r3, [r5, #448]	@ zero_extendqisi2	@ D.38042, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].CodecStatus
	tst	r3, #16	@ D.38042,
	beq	.L1216	@,
	add	r6, r0, #110592	@ tmp483, pVC1_CTX_S,
	bic	r3, r3, #20	@ tmp193, D.38042,
	strb	r3, [r5, #448]	@ tmp193, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].CodecStatus
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldr	r3, [r6, #2732]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode
	sub	r3, r3, #2	@ D.38045, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode,
	cmp	r3, #1	@ D.38045,
	bls	.L1165	@,
.L1167:
	ldr	r3, [r4]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	add	r7, r4, #98304	@ tmp482, pVC1_CTX_S,
	ldr	r1, [r7, #2592]	@ D.38055, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	ldr	r2, [r3, #8]	@ D.38045,
.L1166:
	sub	r3, r2, #1	@ tmp329, D.38045,
	str	r2, [r6, #2732]	@ D.38045, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode
	cmp	r3, #3	@ tmp329,
	ldrls	pc, [pc, r3, asl #2]	@ tmp329
	b	.L1196	@
.L1177:
	.word	.L1171
	.word	.L1173
	.word	.L1195
	.word	.L1175
.L1194:
	mov	r1, #0	@ D.38055,
.L1175:
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ D.38042, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	cmp	r3, #0	@ D.38042,
	streq	r3, [r6, #2664]	@ D.38042, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound
	moveq	r3, #1	@ ret,
	beq	.L1178	@,
	cmp	r3, #2	@ D.38042,
	bne	.L1180	@,
	ldr	r3, [r6, #2664]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound
	adds	r3, r3, #0	@ ret, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound,
	movne	r3, #1	@ ret,
	cmp	r1, #0	@ D.38055,
	bne	.L1182	@,
.L1181:
	ldr	r1, .L1218	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L1189:
	add	r0, r5, #448	@, tmp484,
	ldr	r1, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	VC1_ClearCurPic	@
	ldr	r3, .L1218+4	@ tmp393,
	ldr	r3, [r3]	@ D.38052, g_event_report
	cmp	r3, #0	@ D.38052,
	beq	.L1216	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.38052
.L1216:
	mov	r0, #0	@ D.38043,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1165:
	ldr	r3, [r0]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	ldr	r2, [r3, #8]	@ D.38047, _19->s32DecMode
	cmp	r2, #4	@ D.38047,
	cmpne	r2, #1	@, D.38047,
	bhi	.L1167	@,
	add	r7, r0, #98304	@ tmp482, pVC1_CTX_S,
	ldr	r1, .L1218+8	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r1, [r7, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L1168	@,
	ldr	r1, [r8, #192]	@, pImg_29->p_usrdat
	mov	r9, #0	@ tmp239,
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
	str	r9, [r8, #192]	@ tmp239, pImg_29->p_usrdat
	str	r9, [r8, #196]	@ tmp239, pImg_29->p_usrdat
	mov	r2, #1	@,
	str	r9, [r8, #200]	@ tmp239, pImg_29->p_usrdat
	str	r9, [r8, #204]	@ tmp239, pImg_29->p_usrdat
	ldr	r1, [r7, #2600]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r7, #2596]	@, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r9, [r7, #2596]	@ tmp239, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
	str	r9, [r7, #2600]	@ tmp239, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_11(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r7, #2600]	@ D.38047, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].BwdFsID
	str	r0, [r7, #2596]	@ D.38047, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].FwdFsID
.L1168:
	ldr	r2, [r7, #2516]	@ D.38050, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	mov	r3, #0	@ tmp284,
	str	r3, [r7, #2592]	@ tmp284, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	cmp	r2, r3	@ D.38050,
	beq	.L1176	@,
	ldr	r1, [r7, #2520]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	cmp	r1, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef,
	beq	.L1176	@,
	strb	r3, [r2, #1]	@ tmp284, _60->is_to_display
	ldr	r2, [r7, #2520]	@ D.38050, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	strb	r3, [r2, #1]	@ tmp284, _63->is_to_display
	ldr	r2, [r7, #2516]	@ D.38050, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	strb	r3, [r2]	@ tmp284, _65->is_to_ref
	ldr	r2, [r7, #2520]	@ D.38050, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].pRef
	strb	r3, [r2]	@ tmp284, _67->is_to_ref
	ldr	r3, [r4]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	ldr	r1, [r7, #2592]	@ D.38055, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].RefNum
	ldr	r2, [r3, #8]	@ D.38045,
	b	.L1166	@
.L1195:
	mov	r3, #0	@ ret,
.L1178:
	cmp	r1, #0	@ D.38055,
	beq	.L1174	@,
.L1182:
	cmp	r1, #1	@ D.38055,
	bls	.L1217	@,
.L1185:
	cmp	r3, #0	@ ret,
	beq	.L1189	@,
	ldrb	r3, [r5, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PreParseInfo.IsAdvProfile,
	bne	.L1188	@,
	add	r3, r5, #3600	@ tmp409, tmp484,
	add	ip, r4, #88064	@ tmp408, pVC1_CTX_S,
	add	r3, r3, #8	@ tmp409, tmp409,
	add	ip, ip, #560	@ tmp408, tmp408,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp409,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp408,,,,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r5, #3856	@, tmp484,
	mov	r2, #100	@,
	add	r0, r0, #808	@,,
	bl	memcpy	@
	mov	r0, #1	@ D.38043,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1191:
	mov	r1, #0	@ D.38055,
.L1171:
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	sub	r3, r3, #2	@ tmp334, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType,
	tst	r3, #253	@ tmp334,
	movne	r3, #1	@ ret,
	moveq	r3, #0	@ ret,
	cmp	r1, #0	@ D.38055,
	bne	.L1182	@,
.L1174:
	ldrb	r2, [r5, #450]	@ zero_extendqisi2	@ D.38042, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	sub	r0, r2, #4	@ tmp370, D.38042,
	sub	r1, r2, #1	@ tmp374, D.38042,
	cmp	r1, #1	@ tmp374,
	cmphi	r0, #1	@, tmp370,
	bls	.L1181	@,
.L1183:
	sub	r2, r2, #2	@ tmp382, D.38042,
	tst	r2, #253	@ tmp382,
	bne	.L1185	@,
	ldr	r1, .L1218+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L1189	@
.L1192:
	mov	r1, #0	@ D.38055,
.L1173:
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	clz	r3, r3	@ ret, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	mov	r3, r3, lsr #5	@ ret, ret,
	b	.L1178	@
.L1188:
	add	r1, r5, #3616	@, tmp484,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r1, #8	@,,
	mov	r2, #172	@,
	add	r0, r0, #576	@,,
	bl	memcpy	@
	add	lr, r5, #3792	@ tmp441, tmp484,
	add	lr, lr, #4	@ tmp441, tmp441,
	add	ip, r4, #88064	@ tmp439, pVC1_CTX_S,
	add	ip, ip, #748	@ tmp439, tmp439,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp441,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp439,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp441,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp439,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp441,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp439,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp441,,,
	stmia	ip, {r0, r1, r2}	@ tmp439,,,
	add	r1, r5, #3952	@, tmp484,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r1, #4	@,,
	mov	r2, #176	@,
	add	r0, r0, #908	@,,
	bl	memcpy	@
	ldr	r3, [r5, #4000]	@ MEM[(struct VC1_VFMWSYNTAX_S *)pVC1_CTX_S_11(D) + 81432B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWSYNTAX_S *)pVC1_CTX_S_11(D) + 81432B].AdvPicSyntax.FCM
	add	r1, r4, #81920	@, pVC1_CTX_S,
	add	r0, r5, #11264	@, tmp484,
	add	r1, r1, #36	@,,
	add	r0, r0, #60	@,,
	strb	r3, [r5, #452]	@ MEM[(struct VC1_VFMWSYNTAX_S *)pVC1_CTX_S_11(D) + 81432B].AdvPicSyntax.FCM, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicStructure
	ldr	r3, [r7, #2612]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum
	mov	r2, r3, asl #4	@ tmp472, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum,
	sub	r2, r2, r3, asl #2	@, tmp472, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].SlcNum,
	bl	memcpy	@
	mov	r0, #1	@ D.38043,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1190:
	mov	r1, #0	@ D.38055,
.L1196:
	mov	r3, #1	@ ret,
	b	.L1178	@
.L1180:
	and	r3, r3, #251	@ tmp360, D.38042,
	cmp	r3, #1	@ tmp360,
	bne	.L1196	@,
	str	r3, [r6, #2664]	@ tmp360, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PPicFound
	b	.L1178	@
.L1176:
	ldr	r3, [r4]	@ pVC1_CTX_S_11(D)->pstExtraData, pVC1_CTX_S_11(D)->pstExtraData
	ldr	r2, [r3, #8]	@ D.38045, _75->s32DecMode
	sub	r3, r2, #1	@ tmp294, D.38045,
	str	r2, [r6, #2732]	@ D.38045, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].UsedDecMode
	cmp	r3, #3	@ tmp294,
	ldrls	pc, [pc, r3, asl #2]	@ tmp294
	b	.L1190	@
.L1172:
	.word	.L1191
	.word	.L1192
	.word	.L1193
	.word	.L1194
.L1193:
	mov	r3, #0	@ ret,
	b	.L1174	@
.L1217:
	ldrb	r2, [r5, #450]	@ zero_extendqisi2	@ D.38042, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_11(D) + 78272B].PicCodingType
	b	.L1183	@
.L1219:
	.align	2
.L1218:
	.word	.LC51
	.word	g_event_report
	.word	.LC50
	.word	.LC52
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
	ldr	r3, [r3, #512]	@ D.38075, _11->s32Compress_en
	cmp	r2, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PreParseInfo.IsAdvProfile,
	str	r3, [r5, #280]	@ D.38075, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].Compress_en
	beq	.L1236	@,
.L1221:
	add	r7, r4, #98304	@ tmp298, pVC1_CTX_S,
	mov	r1, r8	@, pVc1DecParam
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_WritePicMsg	@
	ldr	r3, [r7, #2612]	@ D.38075, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].SlcNum
	add	r1, r6, #22528	@, tmp297,
	add	r0, r4, #92	@, pVC1_CTX_S,
	add	r1, r1, #120	@,,
	mov	r2, r3, asl #6	@ tmp173, D.38075,
	strb	r3, [r4, #78]	@ D.38075, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].SlcNum
	sub	r2, r2, r3, asl #4	@, tmp173, D.38075,
	bl	memcpy	@
	mov	r1, r8	@, pVc1DecParam
	mov	r0, r6	@, tmp297
	bl	VC1_CfgVDH	@
	ldrb	r3, [r5, #450]	@ zero_extendqisi2	@ D.38077, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicCodingType
	cmp	r3, #1	@ D.38077,
	ldrlsb	r2, [r5, #452]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure
	strlsb	r2, [r5, #453]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Last_Struct
	cmp	r3, #5	@ D.38077,
	beq	.L1237	@,
	mov	r3, #0	@ tmp210,
	strb	r3, [r4, #9]	@ tmp210, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].IsSkpicCopy
	ldrb	r3, [r5, #452]	@ zero_extendqisi2	@ D.38081, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure
	ldrb	r2, [r5, #456]	@ zero_extendqisi2	@ D.38080, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Is2ndFld
.L1224:
	strb	r3, [r4, #8]	@ D.38081, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].picstructure
	strb	r3, [r5, #451]	@ D.38081, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Last_Struct_IPB
	strb	r2, [r5, #457]	@ D.38080, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].LastIs2ndFld
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ D.38077, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].ptype
	cmp	r3, #2	@ D.38077,
	beq	.L1238	@,
	and	r2, r3, #251	@ tmp249, D.38077,
	cmp	r2, #1	@ tmp249,
	addeq	r1, r4, #110592	@ tmp253, pVC1_CTX_S,
	streq	r2, [r1, #2664]	@ tmp249, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound
.L1226:
	ldr	r2, [r4]	@ D.38074, pVC1_CTX_S_7(D)->pstExtraData
	str	r8, [r4, #4]	@ pVc1DecParam, pVC1_CTX_S_7(D)->pVc1DecParam
	ldr	r0, [r2, #708]	@ D.38073, _51->stDisParams.s32Mode
	cmp	r0, #1	@ D.38073,
	beq	.L1239	@,
	cmp	r0, #2	@ D.38073,
	beq	.L1240	@,
.L1231:
	mov	r0, #1	@ D.38073,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1240:
	ldr	r2, [r2, #712]	@ _51->stDisParams.s32DisNums, _51->stDisParams.s32DisNums
	cmp	r8, #0	@ pVc1DecParam,
	cmpne	r2, #0	@, _51->stDisParams.s32DisNums,
	ble	.L1231	@,
	sub	r3, r3, #2	@ tmp278, D.38077,
	ands	r5, r3, #253	@ tmp282, tmp278,
	bne	.L1231	@,
	ldr	r3, [r7, #2512]	@ D.38079, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].pCurFrm
	add	r1, r4, #110592	@ tmp292, pVC1_CTX_S,
	mov	r0, r6	@, tmp297
	strb	r5, [r3, #1]	@ tmp282, _65->is_to_display
	ldr	r2, [r4]	@ D.38074, pVC1_CTX_S_7(D)->pstExtraData
	ldr	r3, [r2, #712]	@ _67->stDisParams.s32DisNums, _67->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.38075, _67->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.38075, _67->stDisParams.s32DisNums
	ldr	r1, [r1, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp282, pVC1_CTX_S_7(D)->pVc1DecParam
	mov	r0, r5	@ D.38073, tmp282
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1238:
	add	r9, r4, #110592	@ tmp226, pVC1_CTX_S,
	ldr	r5, [r9, #2664]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound
	cmp	r5, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound,
	bne	.L1226	@,
	mov	r0, r6	@, tmp297
	ldr	r1, [r9, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
	ldr	r3, [r7, #2512]	@ D.38079, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].pCurFrm
	mov	r0, r5	@ D.38073, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound
	strb	r5, [r3]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound, _40->is_to_ref
	ldr	r3, [r9, #2668]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount
	add	r3, r3, #1	@ D.38078, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount,
	str	r3, [r9, #2668]	@ D.38078, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].BPicCount
	str	r5, [r4, #4]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PPicFound, pVC1_CTX_S_7(D)->pVc1DecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1237:
	mov	r2, #1	@ tmp191,
	strb	r2, [r4, #9]	@ tmp191, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].IsSkpicCopy
	ldrb	r3, [r5, #453]	@ zero_extendqisi2	@ D.38081, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Last_Struct
	add	r1, r4, #110592	@ tmp207, pVC1_CTX_S,
	strb	r2, [r5, #456]	@ tmp191, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].Is2ndFld
	strb	r3, [r5, #452]	@ D.38081, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].PicStructure
	ldr	r1, [r1, #2688]	@ MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].CurPicMbNum, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].CurPicMbNum
	sub	r1, r1, #1	@ D.38075, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].CurPicMbNum,
	str	r1, [r5, #172]	@ D.38075, MEM[(struct VC1_DEC_PARAM_S *)pVC1_CTX_S_7(D) + 8B].basic_cfg0
	b	.L1224	@
.L1239:
	cmp	r8, #0	@ pVc1DecParam,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	sub	r3, r3, #2	@ tmp255, D.38077,
	ands	r5, r3, #253	@ tmp259, tmp255,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r2, [r7, #2512]	@ D.38079, MEM[(struct VC1_VFMWCODECINF_S *)pVC1_CTX_S_7(D) + 78272B].pCurFrm
	add	r3, r4, #110592	@ tmp267, pVC1_CTX_S,
	mov	r0, r6	@, tmp297
	strb	r5, [r2, #1]	@ tmp259, _56->is_to_display
	ldr	r1, [r3, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp259, pVC1_CTX_S_7(D)->pVc1DecParam
	mov	r0, r5	@ D.38073, tmp259
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1236:
	mov	r0, r6	@, tmp297
	bl	VC1_Vfmw_UpdataLastPicRNDCTRL.part.5	@
	b	.L1221	@
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
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r7, [r0, #3128]	@ pBs, pCodecInf_13(D)->pBs
	add	r6, r0, #32768	@ tmp817, pCodecInf,
	mov	r4, r0	@ pCodecInf, pCodecInf
	str	r1, [sp, #8]	@ pSyntax, %sfp
	mov	fp, #0	@ tmp254,
	mov	r1, #32	@,
	strb	fp, [r0, #6]	@ tmp254, pCodecInf_13(D)->IsWaitToDec
	mov	r0, r7	@, pBs
	mov	r10, r2	@ ChanID, ChanID
	bl	BsGet	@
	ldr	r1, [r7, #24]	@ pBs_14->TotalPos, pBs_14->TotalPos
	add	r9, r4, #34816	@ pVc1Packet, pCodecInf,
	ldr	r5, [r6, #2172]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr
	add	r9, r9, #124	@ pVc1Packet, pVc1Packet,
	cmp	r1, fp	@ pBs_14->TotalPos,
	add	ip, r1, #7	@ tmp258, pBs_14->TotalPos,
	ldr	r2, [r6, #2192]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	movlt	r1, ip	@ pBs_14->TotalPos, tmp258
	mov	r1, r1, asr #3	@ tmp259, pBs_14->TotalPos,
	add	r5, r5, r1	@ pTmp, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr, tmp259
	rsb	r2, r1, r2	@, tmp259, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	mov	r1, r5	@, pTmp
	uxtb	r8, r0	@ Code,
	mov	r0, r7	@, pBs
	bl	BsInit	@
	sub	r2, r8, #10	@ D.38096, Code,
	cmp	r2, #5	@ D.38096,
	bhi	.L1242	@,
	cmp	r8, #11	@ Code,
	beq	.L1305	@,
	ldrb	r1, [r4]	@ zero_extendqisi2	@ D.38092, pCodecInf_13(D)->CodecStatus
	and	r0, r1, #7	@ tmp519, D.38092,
	cmp	r0, #7	@ tmp519,
	beq	.L1306	@,
	add	r8, r4, #20480	@ tmp822, pCodecInf,
	strb	fp, [r4, #8]	@ tmp254, pCodecInf_13(D)->Is2ndFld
	str	fp, [r8, #2164]	@ tmp254, pCodecInf_13(D)->SlcNum
	cmp	r2, #5	@ D.38096,
	ldrls	pc, [pc, r2, asl #2]	@ D.38096
	b	.L1274	@
.L1258:
	.word	.L1257
	.word	.L1274
	.word	.L1259
	.word	.L1291
	.word	.L1261
	.word	.L1262
.L1242:
	sub	r2, r8, #27	@ D.38096, Code,
	cmp	r2, #4	@ D.38096,
	bls	.L1275	@,
	cmp	r8, #254	@ Code,
	beq	.L1307	@,
.L1274:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r0, #0	@ D.38091,
.L1247:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1307:
	mov	r1, #32	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.38093,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	movw	r2, #20036	@ tmp803,
	movw	r3, #20553	@ tmp806,
	movt	r2, 17221	@ tmp803,
	movt	r3, 18515	@ tmp806,
	cmp	r0, r2	@, tmp803
	cmpeq	r5, r3	@, D.38093, tmp806
	bne	.L1274	@,
	ldrb	r3, [r4]	@ zero_extendqisi2	@ D.38092, pCodecInf_13(D)->CodecStatus
	mov	r2, #1	@ tmp810,
	strb	r2, [r4, #7]	@ tmp810, pCodecInf_13(D)->IsStreamEndFlag
	and	r2, r3, #7	@ tmp813, D.38092,
	cmp	r2, #7	@ tmp813,
	orreq	r3, r3, #16	@ tmp814, D.38092,
	streqb	r3, [r4]	@ tmp814, pCodecInf_13(D)->CodecStatus
.L1275:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r0, #1	@ D.38091,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1305:
	ldrb	r2, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	and	r2, r2, #7	@ tmp271, pCodecInf_13(D)->CodecStatus,
	cmp	r2, #7	@ tmp271,
	beq	.L1308	@,
.L1272:
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r0, fp	@ D.38091, Ret
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1306:
	mov	fp, #1	@ tmp522,
	orr	r1, r1, #16	@ tmp520, D.38092,
	strb	fp, [r4, #6]	@ tmp522, pCodecInf_13(D)->IsWaitToDec
	mov	r0, fp	@ D.38091, tmp522
	strb	r1, [r4]	@ tmp520, pCodecInf_13(D)->CodecStatus
	b	.L1247	@
.L1259:
	ldr	r3, [sp, #8]	@ pSyntax, %sfp
	mov	r2, #1	@ tmp532,
	mov	r1, #16	@,
	strb	r2, [r4, #8]	@ tmp532, pCodecInf_13(D)->Is2ndFld
	add	r0, r3, #508	@, pSyntax,
	bl	__memzero	@
	ldrb	r2, [r4, #8]	@ zero_extendqisi2	@ D.38099, pCodecInf_13(D)->Is2ndFld
	cmp	r2, #0	@ D.38099,
	beq	.L1291	@,
.L1263:
	add	r0, r4, #22528	@, pCodecInf,
	mov	r1, #12288	@,
	add	r0, r0, #120	@,,
	bl	__memzero	@
	mov	r0, r7	@, pBs
	bl	BsPos	@
	ldr	r3, [sp, #8]	@ pSyntax, %sfp
	mov	r1, r4	@, pCodecInf
	mov	r2, r3	@, pSyntax
	str	r0, [r3, #488]	@, pSyntax_32(D)->AdvPicSyntax.HdrLen
	mov	r0, r7	@, pBs
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	cmp	r0, #1	@ Ret,
	mov	fp, r0	@ Ret,
	beq	.L1309	@,
	mov	r1, r9	@, pVc1Packet
	mov	r0, r10	@, ChanID
	bl	VC1_ClearCurPacket	@
	movw	r2, #6088	@,
	ldr	r1, .L1313	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.38091, Ret
	b	.L1247	@
.L1261:
	mov	r0, r7	@, pBs
	ldr	r2, [sp, #8]	@, %sfp
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvEntptHdr	@
	cmp	r0, #1	@ Ret,
	mov	fp, r0	@ Ret,
	bne	.L1272	@,
	ldr	r1, [sp, #8]	@, %sfp
	mov	r0, r4	@, pCodecInf
	bl	VC1_Vfmw_UpdateAdvSPS	@
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	orr	r3, r3, #2	@ tmp794, pCodecInf_13(D)->CodecStatus,
	strb	r3, [r4]	@ tmp794, pCodecInf_13(D)->CodecStatus
	b	.L1272	@
.L1262:
	ldr	r2, [sp, #8]	@, %sfp
	mov	r0, r7	@, pBs
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSeqHdr	@
	cmp	r0, #1	@ Ret,
	mov	fp, r0	@ Ret,
	ldreqb	r3, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	orreq	r3, r3, #1	@ tmp798, pCodecInf_13(D)->CodecStatus,
	streqb	r3, [r4]	@ tmp798, pCodecInf_13(D)->CodecStatus
	b	.L1272	@
.L1257:
	orr	r3, r1, #32	@ tmp530, D.38092,
	mov	r0, r10	@, ChanID
	mov	r1, r9	@, pVc1Packet
	strb	r3, [r4]	@ tmp530, pCodecInf_13(D)->CodecStatus
	bl	VC1_ClearCurPacket	@
	mov	r0, #1	@ D.38091,
	b	.L1247	@
.L1291:
	ldr	r3, [sp, #8]	@ pSyntax, %sfp
	mov	r1, #176	@,
	add	r0, r3, #348	@, pSyntax,
	ldrb	fp, [r3, #379]	@ zero_extendqisi2	@ D.38092, pSyntax_32(D)->AdvPicSyntax.REFDIST
	bl	__memzero	@
	ldr	r3, [sp, #8]	@ pSyntax, %sfp
	strb	fp, [r3, #379]	@ D.38092, pSyntax_32(D)->AdvPicSyntax.REFDIST
	b	.L1263	@
.L1308:
	mov	r0, r7	@, pBs
	ldr	r2, [sp, #8]	@, %sfp
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSlcHdr	@
	cmp	r0, #1	@ Ret,
	mov	r7, r0	@ Ret,
	bne	.L1245	@,
	add	r8, r4, #20480	@ tmp822, pCodecInf,
	ldr	r3, [r8, #2164]	@ D.38093, pCodecInf_13(D)->SlcNum
	cmp	r3, #255	@ D.38093,
	bgt	.L1310	@,
	mov	r7, r3, asl #4	@ tmp818, D.38093,
	mov	r10, r3, asl #6	@ tmp819, D.38093,
	ldr	r1, [r4, #3128]	@ pBs, pCodecInf_13(D)->pBs
	rsb	r9, r7, r10	@ tmp281, tmp818, tmp819
	add	r9, r4, r9	@ tmp282, pCodecInf, tmp281
	movw	r0, #22656	@ tmp283,
	movw	r2, #22648	@ tmp291,
	movw	lr, #22664	@ tmp304,
	strb	r3, [r9, r0]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].SlcNo
	ldr	ip, [r1, #24]	@ pBs_117->TotalPos, pBs_117->TotalPos
	str	r3, [sp, #12]	@ D.38093, %sfp
	cmp	ip, #0	@ pBs_117->TotalPos,
	add	r0, ip, #7	@ tmp296, pBs_117->TotalPos,
	movlt	ip, r0	@ pBs_117->TotalPos, tmp296
	add	r0, r9, #22528	@ tmp305, tmp282,
	add	ip, r5, ip, asr #3	@ D.38094, pTmp, pBs_117->TotalPos,
	str	ip, [r9, r2]	@ D.38094, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].pStream
	ldr	ip, [r1, #24]	@ pBs_117->TotalPos, pBs_117->TotalPos
	mov	r5, r0	@ tmp284, tmp305
	and	ip, ip, #7	@ D.38093, pBs_117->TotalPos,
	str	ip, [r9, lr]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].BitOffset
	ldr	ip, [r1, #16]	@ pBs_117->BsLen, pBs_117->BsLen
	ldr	lr, [r1, #24]	@ pBs_117->TotalPos, pBs_117->TotalPos
	add	r1, r0, #120	@ tmp292, tmp292,
	str	r1, [sp, #16]	@ tmp292, %sfp
	rsb	ip, lr, ip, lsl #3	@ D.38093, pBs_117->TotalPos, pBs_117->BsLen,
	str	ip, [r0, #140]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Len
	ldr	r0, [r9, r2]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].pStream
	str	r1, [sp, #20]	@ tmp292, %sfp
	bl	MEM_Vir2Phy	@
	movw	lr, #22688	@ tmp339,
	add	ip, r5, #160	@ tmp340, tmp340,
	ldr	r3, [sp, #12]	@ D.38093, %sfp
	str	r0, [r5, #132]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Phy_addr
	ldr	r0, [r6, #2200]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	str	r0, [r9, lr]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].StreamID
	ldr	r0, [r6, #2176]	@ D.38094, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr
	cmp	r0, #0	@ D.38094,
	beq	.L1248	@,
	ldr	lr, [r6, #2188]	@ D.38098, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsPhyAddr
	ldr	r1, [sp, #16]	@ tmp292, %sfp
	cmp	lr, #0	@ D.38098,
	beq	.L1248	@,
	movw	r5, #22680	@ tmp360,
	str	r0, [r1, #4]	@ D.38094, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].pStream2
	str	fp, [r9, r5]	@ tmp254, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].BitOffset2
	add	r1, r9, #22528	@ tmp361, tmp282,
	ldr	r0, [r6, #2196]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	str	lr, [r1, #148]	@ D.38098, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Phy_addr2
	mov	r0, r0, asl #3	@ D.38093, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength,
	str	r0, [r1, #156]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Len2
	ldr	r1, [r6, #2204]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	str	r1, [ip, #4]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].StreamID2
.L1249:
	ldr	ip, [r8, #2084]	@ D.38093, pCodecInf_13(D)->MbHeight
	ldr	r1, [r8, #2080]	@ pCodecInf_13(D)->MbWidth, pCodecInf_13(D)->MbWidth
	ldrb	fp, [r4, #8]	@ zero_extendqisi2	@ pCodecInf_13(D)->Is2ndFld, pCodecInf_13(D)->Is2ndFld
	mul	r1, r1, ip	@ D.38093, pCodecInf_13(D)->MbWidth, D.38093
	cmp	fp, #0	@ pCodecInf_13(D)->Is2ndFld,
	sub	r0, r1, #1	@ totalMbMin1, D.38093,
	sub	r1, r7, r3, asl #2	@ tmp441, tmp818, D.38093,
	beq	.L1250	@,
	ldr	r2, [sp, #8]	@ pSyntax, %sfp
	add	r3, ip, #1	@ D.38093, D.38093,
	rsb	r5, r7, r10	@ tmp453, tmp818, tmp819
	movw	r6, #22672	@ tmp455,
	add	r1, r2, r1	@ tmp442, pSyntax, tmp441
	add	r3, r3, r3, lsr #31	@ tmp447, D.38093, D.38093,
	add	r5, r4, r5	@ tmp454, pCodecInf, tmp453
	add	r1, r1, #520	@ tmp443, tmp442,
	ldr	lr, [r1, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR
	sub	r3, lr, r3, asr #1	@ D.38093, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR, tmp447,
	str	r3, [r5, r6]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].SlcEndMbn
	cmp	r3, #0	@ D.38093,
	ble	.L1251	@,
	cmp	r0, r3	@ totalMbMin1, D.38093
	bcc	.L1311	@,
.L1251:
	rsb	r2, r7, r10	@ tmp489, tmp818, tmp819
.L1304:
	add	r4, r4, r2	@ tmp490, pCodecInf, tmp489
	add	r3, r4, #22528	@ tmp492, tmp490,
	add	r3, r3, #136	@ tmp492, tmp492,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Len,
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Len,
	ble	.L1254	@,
	add	r3, r4, #22528	@ tmp774, tmp764,
	add	r3, r3, #120	@ tmp774, tmp774,
	ldr	r3, [r3, #4]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].pStream2,
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].pStream2,
	beq	.L1270	@,
	add	r4, r4, #22528	@ tmp782, tmp764,
	ldr	r3, [r4, #156]	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Len2,
	cmp	r3, #0	@ MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Len2,
	ble	.L1254	@,
.L1270:
	ldr	r3, [r8, #2164]	@ pCodecInf_13(D)->SlcNum, pCodecInf_13(D)->SlcNum
	mov	r0, #1	@ D.38091,
	add	r3, r3, r0	@ D.38093, pCodecInf_13(D)->SlcNum,
	str	r3, [r8, #2164]	@ D.38093, pCodecInf_13(D)->SlcNum
	b	.L1247	@
.L1309:
	mov	r0, r7	@, pBs
	bl	BsPos	@
	ldr	r3, [sp, #8]	@ pSyntax, %sfp
	ldr	r2, [r3, #488]	@ pSyntax_32(D)->AdvPicSyntax.HdrLen, pSyntax_32(D)->AdvPicSyntax.HdrLen
	rsb	r0, r2, r0	@ D.38093, pSyntax_32(D)->AdvPicSyntax.HdrLen,
	str	r0, [r3, #488]	@ D.38093, pSyntax_32(D)->AdvPicSyntax.HdrLen
	ldrb	r2, [r4]	@ zero_extendqisi2	@ pCodecInf_13(D)->CodecStatus, pCodecInf_13(D)->CodecStatus
	mov	r0, r7	@, pBs
	orr	r3, r2, #4	@ tmp543, pCodecInf_13(D)->CodecStatus,
	strb	r3, [r4]	@ tmp543, pCodecInf_13(D)->CodecStatus
	bl	BsPos	@
	ldr	r3, [r6, #2192]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	add	r0, r0, #32	@ D.38093,,
	cmp	r0, r3, asl #3	@ D.38093, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength,
	bge	.L1265	@,
	ldr	r10, [r8, #2164]	@ D.38095, pCodecInf_13(D)->SlcNum
	movw	r0, #22656	@ tmp557,
	ldr	r3, [r4, #3128]	@ pBs, pCodecInf_13(D)->pBs
	movw	r1, #22664	@ tmp578,
	mov	r2, r10, asl #6	@ tmp821, D.38095,
	mov	r7, r10, asl #4	@ tmp820, D.38095,
	rsb	r9, r7, r2	@ tmp555, tmp820, tmp821
	str	r2, [sp, #12]	@ tmp821, %sfp
	add	r9, r4, r9	@ tmp556, pCodecInf, tmp555
	movw	r2, #22648	@ tmp840,
	strb	r10, [r9, r0]	@ D.38095, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].SlcNo
	add	r0, r9, #22528	@ tmp579, tmp556,
	ldr	lr, [r3, #24]	@ pBs_160->TotalPos, pBs_160->TotalPos
	mov	fp, r0	@ tmp558, tmp579
	cmp	lr, #0	@ pBs_160->TotalPos,
	add	ip, lr, #7	@ tmp570, pBs_160->TotalPos,
	movlt	lr, ip	@ pBs_160->TotalPos, tmp570
	add	lr, r5, lr, asr #3	@ D.38094, pTmp, pBs_160->TotalPos,
	str	lr, [r9, r2]	@ D.38094, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].pStream
	ldr	lr, [r3, #24]	@ pBs_160->TotalPos, pBs_160->TotalPos
	add	r5, r0, #120	@ tmp566, tmp566,
	and	lr, lr, #7	@ D.38093, pBs_160->TotalPos,
	str	lr, [r9, r1]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].BitOffset
	ldr	lr, [r3, #16]	@ pBs_160->BsLen, pBs_160->BsLen
	ldr	r3, [r3, #24]	@ pBs_160->TotalPos, pBs_160->TotalPos
	rsb	r3, r3, lr, lsl #3	@ D.38093, pBs_160->TotalPos, pBs_160->BsLen,
	str	r3, [r0, #140]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Len
	ldr	r0, [r9, r2]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].pStream
	bl	MEM_Vir2Phy	@
	movw	lr, #22688	@ tmp613,
	add	r3, fp, #160	@ tmp614, tmp614,
	ldr	r2, [sp, #12]	@ tmp821, %sfp
	str	r0, [fp, #132]	@, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Phy_addr
	ldr	r0, [r6, #2200]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	str	r0, [r9, lr]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].StreamID
	ldr	r0, [r6, #2176]	@ D.38094, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsVirAddr
	cmp	r0, #0	@ D.38094,
	beq	.L1266	@,
	ldr	ip, [r6, #2188]	@ D.38098, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsPhyAddr
	cmp	ip, #0	@ D.38098,
	beq	.L1266	@,
	movw	lr, #22680	@ tmp634,
	str	r0, [r5, #4]	@ D.38094, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].pStream2
	mov	r5, #0	@ tmp636,
	str	r5, [r9, lr]	@ tmp636, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].BitOffset2
	ldr	lr, [r6, #2196]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength
	add	r0, r9, #22528	@ tmp635, tmp556,
	str	ip, [r0, #148]	@ D.38098, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Phy_addr2
	mov	lr, lr, asl #3	@ D.38093, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].BsLength,
	str	lr, [r0, #156]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Len2
	ldr	r0, [r6, #2204]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID
	str	r0, [r3, #4]	@ MEM[(struct VC1_STREAM_PACKET *)pCodecInf_13(D) + 34940B].StreamID, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].StreamID2
.L1267:
	ldr	r0, [r8, #2084]	@ D.38093, pCodecInf_13(D)->MbHeight
	ldr	r3, [r8, #2080]	@ pCodecInf_13(D)->MbWidth, pCodecInf_13(D)->MbWidth
	ldrb	fp, [r4, #8]	@ zero_extendqisi2	@ pCodecInf_13(D)->Is2ndFld, pCodecInf_13(D)->Is2ndFld
	mul	r3, r3, r0	@ D.38093, pCodecInf_13(D)->MbWidth, D.38093
	cmp	fp, #0	@ pCodecInf_13(D)->Is2ndFld,
	sub	ip, r3, #1	@ totalMbMin1, D.38093,
	beq	.L1268	@,
	ldr	r1, [sp, #8]	@ pSyntax, %sfp
	sub	lr, r7, r10, asl #2	@ tmp715, tmp820, D.38095,
	add	r3, r0, #1	@ D.38093, D.38093,
	rsb	r5, r7, r2	@ tmp727, tmp820, tmp821
	add	lr, r1, lr	@ tmp716, pSyntax, tmp715
	add	r5, r4, r5	@ tmp728, pCodecInf, tmp727
	add	r3, r3, r3, lsr #31	@ tmp721, D.38093, D.38093,
	movw	r1, #22672	@ tmp729,
	ldr	r6, [lr, #528]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR
	add	lr, lr, #520	@ tmp717, tmp716,
	sub	r3, r6, r3, asr #1	@ D.38093, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR, tmp721,
	str	r3, [r5, r1]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].SlcEndMbn
	cmp	r3, #0	@ D.38093,
	ble	.L1269	@,
	cmp	ip, r3	@ totalMbMin1, D.38093
	bcc	.L1312	@,
.L1269:
	rsb	r2, r7, r2	@ tmp763, tmp820, tmp821
	b	.L1304	@
.L1245:
	mov	r1, r9	@, pVc1Packet
	mov	r0, r10	@, ChanID
	bl	VC1_ClearCurPacket	@
	movw	r2, #6005	@,
	ldr	r1, .L1313+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38091, Ret
	b	.L1247	@
.L1265:
	mov	r1, r9	@, pVc1Packet
	mov	r0, r10	@, ChanID
	bl	VC1_ClearCurPacket	@
	movw	r2, #6082	@,
	ldr	r1, .L1313	@,
	mov	r0, fp	@, Ret
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.38091, Ret
	b	.L1247	@
.L1266:
	rsb	r3, r7, r2	@ tmp668, tmp820, tmp821
	movw	r6, #22680	@ tmp678,
	add	r3, r4, r3	@ tmp669, pCodecInf, tmp668
	mov	r0, #0	@ tmp672,
	add	r9, r3, #22528	@ tmp671, tmp669,
	str	r0, [r9, #124]	@ tmp672, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].pStream2
	str	r0, [r3, r6]	@ tmp672, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].BitOffset2
	str	r0, [r9, #156]	@ tmp672, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Len2
	str	r0, [r9, #148]	@ tmp672, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].Phy_addr2
	str	r0, [r9, #164]	@ tmp672, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].StreamID2
	b	.L1267	@
.L1310:
	mov	r1, r10	@, ChanID
	mov	r0, r4	@, pCodecInf
	bl	VC1_ClearCurPic	@
	ldr	r2, [r8, #2164]	@, pCodecInf_13(D)->SlcNum
	mov	r0, r7	@, Ret
	ldr	r1, .L1313+8	@,
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.38091, tmp254
	b	.L1247	@
.L1268:
	ldr	r3, [sp, #8]	@ pSyntax, %sfp
	sub	r0, r7, r10, asl #2	@ tmp742, tmp820, D.38095,
	rsb	lr, r7, r2	@ tmp748, tmp820, tmp821
	movw	r5, #22672	@ tmp750,
	add	r0, r3, r0	@ tmp743, pSyntax, tmp742
	add	lr, r4, lr	@ tmp749, pCodecInf, tmp748
	add	r0, r0, #520	@ tmp744, tmp743,
	ldr	r3, [r0, #8]	@ D.38093, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR
	cmp	ip, r3	@ totalMbMin1, D.38093
	str	r3, [lr, r5]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_159].SlcEndMbn
	bcs	.L1269	@,
	ldr	r2, [r0, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR
	mov	r0, #1	@,
	str	ip, [sp]	@ totalMbMin1,
	ldr	r1, .L1313+12	@,
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.38091, pCodecInf_13(D)->Is2ndFld
	b	.L1247	@
.L1248:
	rsb	r1, r7, r10	@ tmp394, tmp818, tmp819
	movw	r6, #22680	@ tmp404,
	add	r1, r4, r1	@ tmp395, pCodecInf, tmp394
	mov	r0, #0	@ tmp398,
	add	r9, r1, #22528	@ tmp397, tmp395,
	str	r0, [r9, #124]	@ tmp398, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].pStream2
	str	r0, [r1, r6]	@ tmp398, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].BitOffset2
	str	r0, [r9, #156]	@ tmp398, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Len2
	str	r0, [r9, #148]	@ tmp398, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].Phy_addr2
	str	r0, [r9, #164]	@ tmp398, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].StreamID2
	b	.L1249	@
.L1254:
	ldr	r1, .L1313+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38091,
	b	.L1247	@
.L1250:
	ldr	r3, [sp, #8]	@ pSyntax, %sfp
	rsb	ip, r7, r10	@ tmp474, tmp818, tmp819
	add	ip, r4, ip	@ tmp475, pCodecInf, tmp474
	movw	lr, #22672	@ tmp476,
	add	r1, r3, r1	@ tmp469, pSyntax, tmp468
	add	r1, r1, #520	@ tmp470, tmp469,
	ldr	r3, [r1, #8]	@ D.38093, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR
	cmp	r0, r3	@ totalMbMin1, D.38093
	str	r3, [ip, lr]	@ D.38093, MEM[(struct VC1_SLCSTREAM_S *)pCodecInf_13(D)].SlcStr[_116].SlcEndMbn
	bcs	.L1251	@,
	ldr	r2, [r1, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR
	str	r0, [sp]	@ totalMbMin1,
	mov	r0, #1	@,
	ldr	r1, .L1313+12	@,
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.38091, pCodecInf_13(D)->Is2ndFld
	b	.L1247	@
.L1312:
	ldr	r2, [lr, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_159].SLICE_ADDR
	ldr	r1, .L1313+20	@,
	str	r0, [sp]	@ D.38093,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38091,
	b	.L1247	@
.L1311:
	ldr	r2, [r1, #8]	@ MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR, MEM[(struct VC1_ADVSLCSYNTAX_S *)pSyntax_32(D)].AdvSlcSyntax[_116].SLICE_ADDR
	mov	r0, #1	@,
	str	ip, [sp]	@ D.38093,
	ldr	r1, .L1313+20	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38091,
	b	.L1247	@
.L1314:
	.align	2
.L1313:
	.word	.LC55
	.word	.LC54
	.word	.LC53
	.word	.LC39
	.word	.LC40
	.word	.LC38
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
	bne	.L1316	@,
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
.L1316:
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
	add	r3, r0, #80896	@ D.38118, pCtx,
	ldrb	r2, [r4, #3546]	@ zero_extendqisi2	@ D.38119, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.CodecVersion
	add	r3, r3, #508	@ D.38118, D.38118,
	str	r3, [r4, #3576]	@ D.38118, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].pBs
	cmp	r2, #8	@ D.38119,
	strneb	r2, [r4, #459]	@ D.38119, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].CodecVersion
	moveq	r2, #6	@ tmp140,
	movne	r2, #0	@ tmp144,
	streqb	r2, [r4, #459]	@ tmp140, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].CodecVersion
	moveq	ip, #1	@ tmp136,
	strneb	r2, [r4, #460]	@ tmp144, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PostCresent
	ldrb	r2, [r4, #3544]	@ zero_extendqisi2	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.IsAdvProfile, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.IsAdvProfile
	streqb	ip, [r4, #460]	@ tmp136, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PostCresent
	cmp	r2, #0	@ MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.IsAdvProfile,
	beq	.L1326	@,
	ldr	r2, [r1, #20]	@, pVc1Packet_13(D)->BsLength
	mov	r0, r3	@, D.38118
	ldr	r1, [r1]	@, pVc1Packet_13(D)->BsVirAddr
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	BsInit	@
.L1326:
	mov	r5, r0	@ pCtx, pCtx
	ldr	r2, [r1, #20]	@, pVc1Packet_13(D)->BsLength
	mov	r0, r3	@, D.38118
	ldr	r1, [r1]	@, pVc1Packet_13(D)->BsVirAddr
	bl	BsInit	@
	ldr	r6, [r4, #3568]	@ D.38122, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.FrmWidth
	add	r3, r5, #98304	@ tmp161, pCtx,
	add	r1, r4, #3536	@, tmp196,
	adds	ip, r6, #15	@ D.38122, D.38122,
	add	r0, r4, #3600	@, tmp196,
	addmi	ip, r6, #30	@, D.38122, D.38122,
	add	r1, r1, #11	@,,
	mov	r2, #16	@,
	add	r0, r0, #8	@,,
	mov	ip, ip, asr #4	@ D.38122, D.38122,
	str	ip, [r3, #2528]	@ D.38122, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].MbWidth
	ldr	lr, [r4, #3572]	@ D.38122, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].PreParseInfo.FrmHeight
	str	r6, [r3, #2544]	@ D.38122, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].DispPicWidth
	adds	ip, lr, #15	@ D.38122, D.38122,
	addmi	ip, lr, #30	@, D.38122, D.38122,
	str	lr, [r3, #2548]	@ D.38122, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].DispPicHeight
	mov	ip, ip, asr #4	@ D.38122, D.38122,
	str	ip, [r3, #2532]	@ D.38122, MEM[(struct VC1_VFMWCODECINF_S *)pCtx_2(D) + 78272B].MbHeight
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
	beq	.L1336	@,
	ldr	r2, [r4, #8]	@ pPacket_6(D)->StreamPack[0].PhyAddr, pPacket_6(D)->StreamPack[0].PhyAddr
	add	r3, r0, #110592	@ tmp139, pCtx,
	str	r2, [r3, #2632]	@ pPacket_6(D)->StreamPack[0].PhyAddr, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsPhyAddr
	ldr	r2, [r4]	@ D.38132, pPacket_6(D)->StreamPack[0].VirAddr
	str	r2, [r3, #2620]	@ D.38132, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsVirAddr
	ldr	r2, [r4, #12]	@ pPacket_6(D)->StreamPack[0].LenInByte, pPacket_6(D)->StreamPack[0].LenInByte
	str	r2, [r3, #2640]	@ pPacket_6(D)->StreamPack[0].LenInByte, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsLength
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[0].IsLastSeg, pPacket_6(D)->StreamPack[0].IsLastSeg
	strb	r2, [r3, #2628]	@ pPacket_6(D)->StreamPack[0].IsLastSeg, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].IsLastSeg
	ldr	r2, [r4, #16]	@ D.38130, pPacket_6(D)->StreamPack[0].StreamID
	str	r2, [r3, #2648]	@ D.38130, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].StreamID
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[0].IsLastSeg, pPacket_6(D)->StreamPack[0].IsLastSeg
	cmp	r2, #1	@ pPacket_6(D)->StreamPack[0].IsLastSeg,
	beq	.L1330	@,
	ldr	r2, [r4, #88]	@ pPacket_6(D)->StreamPack[1].PhyAddr, pPacket_6(D)->StreamPack[1].PhyAddr
	str	r2, [r3, #2636]	@ pPacket_6(D)->StreamPack[1].PhyAddr, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsPhyAddr
	ldr	r2, [r4, #80]	@ D.38132, pPacket_6(D)->StreamPack[1].VirAddr
	str	r2, [r3, #2624]	@ D.38132, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsVirAddr
	ldr	r2, [r4, #92]	@ pPacket_6(D)->StreamPack[1].LenInByte, pPacket_6(D)->StreamPack[1].LenInByte
	str	r2, [r3, #2644]	@ pPacket_6(D)->StreamPack[1].LenInByte, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsLength
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[1].IsLastSeg, pPacket_6(D)->StreamPack[1].IsLastSeg
	strb	r2, [r3, #2629]	@ pPacket_6(D)->StreamPack[1].IsLastSeg, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].IsLastSeg
	ldr	r2, [r4, #96]	@ D.38130, pPacket_6(D)->StreamPack[1].StreamID
	str	r2, [r3, #2652]	@ D.38130, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].StreamID
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@ pPacket_6(D)->StreamPack[1].IsLastSeg, pPacket_6(D)->StreamPack[1].IsLastSeg
	cmp	r2, #1	@ pPacket_6(D)->StreamPack[1].IsLastSeg,
	bne	.L1337	@,
.L1331:
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.38129,
	ldmfd	sp!, {r4, pc}	@
.L1337:
	ldr	r0, [r3, #3128]	@, pCtx_4(D)->ChanID
	bl	VC1_ClearCurPacket	@
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@, pPacket_6(D)->StreamPack[1].IsLastSeg
	ldr	r1, .L1338	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38129,
	ldmfd	sp!, {r4, pc}	@
.L1330:
	mov	r2, #0	@ tmp175,
	str	r2, [r3, #2636]	@ tmp175, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsPhyAddr
	str	r2, [r3, #2624]	@ tmp175, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsVirAddr
	str	r2, [r3, #2644]	@ tmp175, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].BsLength
	strb	r2, [r3, #2629]	@ tmp175, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].IsLastSeg
	str	r2, [r3, #2652]	@ tmp175, MEM[(struct VC1_STREAM_PACKET *)pCtx_4(D) + 113212B].StreamID
	b	.L1331	@
.L1336:
	ldr	r1, .L1338+4	@,
	mov	r0, r4	@, pPacket
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38129, pPacket
	ldmfd	sp!, {r4, pc}	@
.L1339:
	.align	2
.L1338:
	.word	.LC57
	.word	.LC56
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
	add	r5, r0, #77824	@ tmp209, pVC1_CTX_S,
	add	r3, r5, #288	@ D.38140, tmp209,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r2, #160	@,
	mov	r0, r3	@, D.38140
	bl	memcpy	@
	mov	r1, r0	@, D.38140
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_ReceivePacket	@
	subs	r7, r0, #0	@ D.38139,
	beq	.L1365	@,
	ldr	r3, [r4]	@ D.38142, pVC1_CTX_S_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _16->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _16->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _16->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1366	@,
.L1343:
	ldrb	r3, [r5, #448]	@ zero_extendqisi2	@ pVC1_CTX_S_7(D)->CodecInfo.CodecStatus, pVC1_CTX_S_7(D)->CodecInfo.CodecStatus
	add	r6, r4, #110592	@ tmp208, pVC1_CTX_S,
	strb	r3, [r6, #2736]	@ pVC1_CTX_S_7(D)->CodecInfo.CodecStatus, pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus
.L1344:
	add	r5, r5, #448	@ D.38144, tmp209,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #536	@,,
	ldr	r2, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r0, r5	@, D.38144
	bl	VC1_Vfmw_ParseHeader	@
	subs	r8, r0, #0	@ Ret,
	beq	.L1367	@,
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_DecodeArbiter	@
	cmp	r0, #0	@,
	bne	.L1368	@,
.L1347:
	mov	r7, #0	@ D.38139,
.L1342:
	mov	r0, r7	@, D.38139
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1367:
	add	r1, r4, #112640	@, pVC1_CTX_S,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	add	r1, r1, #572	@,,
	bl	VC1_ClearCurPacket	@
	ldr	r3, .L1370	@ tmp176,
	ldr	r3, [r3]	@ D.38147, g_event_report
	cmp	r3, #0	@ D.38147,
	beq	.L1347	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r2, r8	@, Ret
	mov	r1, #113	@,
	mov	r7, r8	@ D.38139, tmp2
	blx	r3	@ D.38147
	mov	r0, r7	@, D.38139
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1366:
	ldr	r3, [r3, #728]	@ _16->s32DSDWaitFlag, _16->s32DSDWaitFlag
	cmp	r3, #1	@ _16->s32DSDWaitFlag,
	bne	.L1343	@,
	add	r6, r4, #110592	@ tmp208, pVC1_CTX_S,
	ldrb	r3, [r6, #2736]	@ zero_extendqisi2	@ pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus, pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus
	strb	r3, [r5, #448]	@ pVC1_CTX_S_7(D)->CodecInfo.u8LastCodecStatus, pVC1_CTX_S_7(D)->CodecInfo.CodecStatus
	b	.L1344	@
.L1365:
	add	r4, r4, #110592	@ tmp148, pVC1_CTX_S,
	ldr	r1, .L1370+4	@,
	ldr	r2, [r4, #2616]	@, pVC1_CTX_S_7(D)->CodecInfo.PicCnt
	bl	dprint_vfmw	@
	mov	r0, r7	@, D.38139
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1368:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_PrepareDecode	@
	subs	r7, r0, #0	@ D.38139,
	bne	.L1348	@,
	ldr	r3, [r4]	@ D.38142, pVC1_CTX_S_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _38->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _38->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _38->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1369	@,
.L1349:
	mov	r0, r5	@, D.38144
	ldr	r1, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	bl	VC1_ClearCurPic	@
.L1350:
	ldr	r3, .L1370	@ tmp185,
	ldr	r3, [r3]	@ D.38147, g_event_report
	cmp	r3, #0	@ D.38147,
	beq	.L1347	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	blx	r3	@ D.38147
	b	.L1342	@
.L1369:
	ldr	r3, [r3, #728]	@ _38->s32DSDWaitFlag, _38->s32DSDWaitFlag
	cmp	r3, #1	@ _38->s32DSDWaitFlag,
	bne	.L1349	@,
	b	.L1350	@
.L1348:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_StartDecode	@
	subs	r7, r0, #0	@ D.38139,
	movne	r7, r8	@ D.38139, Ret
	bne	.L1342	@,
	add	r4, r4, #98304	@ tmp190, pVC1_CTX_S,
	mov	r2, #1	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	ldr	r1, [r4, #2604]	@, pVC1_CTX_S_7(D)->CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, #2512]	@ D.38148, pVC1_CTX_S_7(D)->CodecInfo.pCurFrm
	ldr	r3, .L1370	@ tmp203,
	strb	r7, [r2]	@ D.38139, _51->is_to_ref
	ldr	r2, [r4, #2512]	@ D.38148, pVC1_CTX_S_7(D)->CodecInfo.pCurFrm
	strb	r7, [r2, #1]	@ D.38139, _53->is_to_display
	ldr	r3, [r3]	@ D.38147, g_event_report
	cmp	r3, #0	@ D.38147,
	beq	.L1347	@,
	ldr	r0, [r6, #3128]	@, pVC1_CTX_S_7(D)->ChanID
	mov	r2, r7	@, D.38139
	mov	r1, #113	@,
	blx	r3	@ D.38147
	b	.L1342	@
.L1371:
	.align	2
.L1370:
	.word	g_event_report
	.word	.LC58
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC13:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC14:
	.ascii	"VC1 INIT!!!\012\000"
	.space	3
.LC15:
	.ascii	"picture width out of range\000"
	.space	1
.LC16:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC17:
	.ascii	"picture height out of range\000"
.LC18:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\000"
	.space	2
.LC19:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\012\000"
	.space	1
.LC20:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC21:
	.ascii	"vc1 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC22:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC23:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC24:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC25:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC26:
	.ascii	"VC1_Vfmw_GetImageBuffer get imgbuf err, clear all r"
	.ascii	"ef!\012\000"
.LC27:
	.ascii	"VC1_Vfmw_GetImageBuffer get_flag!=1, FSP_ClearLogic"
	.ascii	"Fs.\012\000"
.LC28:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_ArrangeVahbMem err!\012\000"
.LC29:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_GetImageBuffer err!"
	.ascii	"\012\000"
	.space	3
.LC30:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC31:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC32:
	.ascii	"VC1_Vfmw_GetStreamInfo B pic pCodecInf->RefNum < 2 "
	.ascii	"err!\012\000"
	.space	3
.LC33:
	.ascii	"line: %d (pCur,pFwd,pBwd)(%p,%p,%p)\012\000"
	.space	3
.LC34:
	.ascii	"VC1_Vfmw_GetStreamInfo imgbuf = NULL err!\012\000"
	.space	1
.LC35:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC36:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_BuildRefList err!\012"
	.ascii	"\000"
	.space	1
.LC37:
	.ascii	"VC1_Vfmw_GetStreamInfo error! Release all packets!\012"
	.ascii	"\000"
.LC38:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, MbHeight = %d\012\000"
	.space	1
.LC39:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, totalMbMin1 = %d\012"
	.ascii	"\000"
	.space	2
.LC40:
	.ascii	"VC1_RecordSlcStream stream len <= 0\012\000"
	.space	3
.LC41:
	.ascii	"Check Pos 2: %d\012\000"
	.space	3
.LC42:
	.ascii	"Check Pos 3: %d\012\000"
	.space	3
.LC43:
	.ascii	"\012======PicNum  :%6d=========\012\000"
	.space	2
.LC44:
	.ascii	"INTERPFRM  :%#x\012\000"
	.space	3
.LC45:
	.ascii	"After VC1_Vfmw_ParseSMPPicHdr BS Len <= 0 err!\012\000"
.LC46:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC47:
	.ascii	"line: %d, pToQueImg is Null!\012\000"
	.space	2
.LC48:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC49:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC50:
	.ascii	"----------------- VC1 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC51:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC52:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC53:
	.ascii	" pCodecInf->SlcNum = %d >= 256 \012\000"
	.space	3
.LC54:
	.ascii	"line %d, Code = VC1_SCSLC failed!\012\000"
	.space	1
.LC55:
	.ascii	"line %d, Code = VC1_SCFRM failed!\012\000"
	.space	1
.LC56:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC57:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC58:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
