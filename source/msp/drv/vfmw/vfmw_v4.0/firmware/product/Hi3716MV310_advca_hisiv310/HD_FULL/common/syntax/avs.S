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
	.file	"avs.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(avs)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.avs.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/avs.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/avs.o
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
	.global	avs_u_v
	.type	avs_u_v, %function
avs_u_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	BsGet	@
	mov	r4, r0	@ D.40023,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, D.40023
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	avs_u_v, .-avs_u_v
	.align	2
	.global	avs_f_v
	.type	avs_f_v, %function
avs_f_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	BsGet	@
	mov	r4, r0	@ D.40026,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, D.40026
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	avs_f_v, .-avs_f_v
	.align	2
	.global	avs_ue_v
	.type	avs_ue_v, %function
avs_ue_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #32	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mvnhi	r4, #0	@ Info,
	bls	.L10	@,
.L6:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, Info
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L10:
	add	r4, r0, #1	@ D.40029, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, r4	@, D.40029
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, r4	@, D.40029
	sub	r4, r0, #1	@ Info,,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	b	.L6	@
	.fnend
	.size	avs_ue_v, .-avs_ue_v
	.align	2
	.global	avs_se_v
	.type	avs_se_v, %function
avs_se_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #32	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mvnhi	r4, #-2147483648	@ Info,
	bls	.L17	@,
.L12:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, Info
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L17:
	add	r6, r0, #1	@ D.40033, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, r6	@, D.40033
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, r6	@, D.40033
	sub	r0, r0, #1	@ Info,,
	tst	r0, #1	@ Info,
	mov	r4, r0, asr #1	@ Info, Info,
	mov	r0, r5	@, pBs
	addne	r4, r4, #1	@ Info, Info,
	rsbeq	r4, r4, #0	@ Info, Info
	bl	BsSkip	@
	b	.L12	@
	.fnend
	.size	avs_se_v, .-avs_se_v
	.align	2
	.global	AVS_next_start_code
	.type	AVS_next_start_code, %function
AVS_next_start_code:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r6, r0, #7	@ tmp121, D.40042,
	cmp	r0, #0	@ D.40042,
	movlt	r0, r6	@ D.40042, tmp121
	mov	r6, r0, asr #3	@ tmp122, D.40042,
	sub	r6, r6, #3	@ RemainByte, tmp122,
	cmp	r6, #0	@ RemainByte,
	movgt	r4, #0	@ i,
	bgt	.L21	@,
	b	.L22	@
.L28:
	bl	BsSkip	@
	cmp	r4, r6	@ i, RemainByte
	beq	.L22	@,
.L21:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	mov	r3, r0	@ D.40040,
	cmp	r3, #1	@ D.40040,
	mov	r0, r5	@, pBs
	bne	.L28	@,
	mov	r0, r3	@, D.40040
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L22:
	mov	r3, #0	@ D.40040,
	mov	r0, r3	@, D.40040
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVS_next_start_code, .-AVS_next_start_code
	.align	2
	.global	AVS_sequence_header
	.type	AVS_sequence_header, %function
AVS_sequence_header:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #12288	@ tmp228, pCtx,
	mov	r4, r1	@ pSyntax, pSyntax
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r5, [r6, #3084]	@ pBs, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].pBs
	mov	r1, #32	@,
	ldr	r3, [r6, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	mov	r7, r0	@ pCtx, pCtx
	bic	r3, r3, #65536	@ D.40045, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity,
	mov	r0, r5	@, pBs
	str	r3, [r6, #2696]	@ D.40045, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #8	@,
	str	r8, [r4, #12]	@ D.40046, pSyntax_10(D)->syn_seq.profile_id
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	str	r8, [r4, #16]	@ D.40046, pSyntax_10(D)->syn_seq.level_id
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #14	@,
	strb	r8, [r4, #11]	@ D.40046, pSyntax_10(D)->syn_seq.progressive_sequence
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #14	@,
	str	r8, [r4, #20]	@ D.40046, pSyntax_10(D)->syn_seq.horizontal_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #2	@,
	str	r8, [r4, #24]	@ D.40046, pSyntax_10(D)->syn_seq.vertical_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #3	@,
	strb	r8, [r4, #7]	@ D.40046, pSyntax_10(D)->syn_seq.chroma_format
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #4	@,
	strb	r8, [r4, #8]	@ D.40046, pSyntax_10(D)->syn_seq.sample_precision
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #4	@,
	strb	r8, [r4, #9]	@ D.40046, pSyntax_10(D)->syn_seq.aspect_ratio
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #18	@,
	strb	r8, [r4, #10]	@ D.40046, pSyntax_10(D)->syn_seq.frame_rate_code
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	str	r8, [r4, #28]	@ D.40046, pSyntax_10(D)->syn_seq.bit_rate_lower
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #12	@,
	strb	r8, [r4, #6]	@ D.40046, pSyntax_10(D)->syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	str	r8, [r4, #32]	@ D.40046, pSyntax_10(D)->syn_seq.bit_rate_upper
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	strb	r8, [r4, #5]	@ D.40046, pSyntax_10(D)->syn_seq.low_delay
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r1, #18	@,
	strb	r8, [r4, #6]	@ D.40046, pSyntax_10(D)->syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pBs
	mov	r1, #3	@,
	str	r8, [r4, #36]	@ D.40046, pSyntax_10(D)->syn_seq.bbv_buffer_size
	bl	BsGet	@
	mov	r5, r0	@ D.40046,
	bl	vfmw_dprint_nothing	@
	strb	r5, [r4, #4]	@ D.40046, pSyntax_10(D)->syn_seq.reserved_bits
	ldr	r2, [r4, #20]	@ pSyntax_10(D)->syn_seq.horizontal_size, pSyntax_10(D)->syn_seq.horizontal_size
	ldr	r3, [r6, #2732]	@ D.40045, MEM[(struct AVS_SYNTAX *)pCtx_2(D) + 15000B].syn_seq.horizontal_size
	ldr	ip, [r6, #2736]	@ D.40050, MEM[(struct AVS_SYNTAX *)pCtx_2(D) + 15000B].syn_seq.vertical_size
	cmp	r2, r3	@ pSyntax_10(D)->syn_seq.horizontal_size, D.40045
	beq	.L38	@,
.L31:
	ldr	r2, .L39	@ tmp198,
	add	r0, r7, #16384	@ tmp195, pCtx,
	mov	r1, #1	@ tmp193,
	str	r1, [r6, #2708]	@ tmp193, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SizeChanged
	str	r3, [r0, #744]	@ D.40045, pCtx_2(D)->OldPicWidth
	ldr	r5, [r2]	@ D.40048, g_event_report
	str	ip, [r0, #748]	@ D.40050, pCtx_2(D)->OldPicHeight
	cmp	r5, #0	@ D.40048,
	beq	.L32	@,
	ldr	r7, [r4, #20]	@ pSyntax_10(D)->syn_seq.horizontal_size, pSyntax_10(D)->syn_seq.horizontal_size
	mov	r2, sp	@,
	ldr	lr, [r4, #24]	@ pSyntax_10(D)->syn_seq.vertical_size, pSyntax_10(D)->syn_seq.vertical_size
	mov	r1, #2	@,
	strh	r3, [sp]	@ movhi	@ D.40045, para
	strh	ip, [sp, #2]	@ movhi	@ D.40050, para
	ldr	r0, [r0, #224]	@, pCtx_2(D)->ChanID
	strh	r7, [sp, #4]	@ movhi	@ pSyntax_10(D)->syn_seq.horizontal_size, para
	strh	lr, [sp, #6]	@ movhi	@ pSyntax_10(D)->syn_seq.vertical_size, para
	blx	r5	@ D.40048
.L32:
	add	r0, r6, #2704	@, tmp228,
	mov	r1, r4	@, pSyntax
	mov	r2, #372	@,
	add	r0, r0, #8	@,,
	bl	memcpy	@
	ldr	r2, [r6, #2704]	@ MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt
	ldr	r3, [r6, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	mov	r0, #1	@ tmp214,
	add	r2, r2, r0	@ D.40045, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt,
	str	r0, [r6, #2700]	@ tmp214, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].NewSeq
	orr	r3, r3, #65536	@ D.40045, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity,
	str	r2, [r6, #2704]	@ D.40045, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt
	str	r3, [r6, #2696]	@ D.40045, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L38:
	ldr	r2, [r4, #24]	@ pSyntax_10(D)->syn_seq.vertical_size, pSyntax_10(D)->syn_seq.vertical_size
	cmp	r2, ip	@ pSyntax_10(D)->syn_seq.vertical_size, D.40050
	bne	.L31	@,
	b	.L32	@
.L40:
	.align	2
.L39:
	.word	g_event_report
	.fnend
	.size	AVS_sequence_header, .-AVS_sequence_header
	.align	2
	.global	AVS_i_picture_header
	.type	AVS_i_picture_header, %function
AVS_i_picture_header:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ pCodecInf, pCodecInf
	ldr	r5, [r0, #492]	@ pBs, pCodecInf_17(D)->pBs
	mov	r4, r1	@ pSyntax, pSyntax
	add	r0, r1, #72	@, pSyntax,
	mov	r1, #272	@,
	bl	__memzero	@
	ldr	r3, [r6, #104]	@ pCodecInf_17(D)->Integrity, pCodecInf_17(D)->Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bic	r3, r3, #262144	@ D.40087, pCodecInf_17(D)->Integrity,
	str	r3, [r6, #104]	@ D.40087, pCodecInf_17(D)->Integrity
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #12]	@ pSyntax_19(D)->syn_seq.profile_id, pSyntax_19(D)->syn_seq.profile_id
	str	r7, [r4, #88]	@ D.40088, pSyntax_19(D)->syn_pic.bbv_delay
	cmp	r3, #72	@ pSyntax_19(D)->syn_seq.profile_id,
	beq	.L73	@,
.L42:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	uxtb	r0, r7	@ D.40089, D.40088
	strb	r0, [r4, #82]	@ D.40089, pSyntax_19(D)->syn_pic.time_code_flag
	cmp	r0, #1	@ D.40089,
	beq	.L74	@,
.L43:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #100]	@ D.40088, pSyntax_19(D)->syn_pic.marker_bit
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pSyntax_19(D)->syn_seq.low_delay, pSyntax_19(D)->syn_seq.low_delay
	str	r7, [r4, #104]	@ D.40088, pSyntax_19(D)->syn_pic.picture_distance
	cmp	r3, #1	@ pSyntax_19(D)->syn_seq.low_delay,
	beq	.L75	@,
.L44:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ pSyntax_19(D)->syn_seq.progressive_sequence, pSyntax_19(D)->syn_seq.progressive_sequence
	uxtb	r0, r7	@ D.40089, D.40088
	strb	r0, [r4, #72]	@ D.40089, pSyntax_19(D)->syn_pic.progressive_frame
	cmp	r3, #1	@ pSyntax_19(D)->syn_seq.progressive_sequence,
	streqb	r3, [r4, #72]	@ pSyntax_19(D)->syn_seq.progressive_sequence, pSyntax_19(D)->syn_pic.progressive_frame
	beq	.L46	@,
	cmp	r0, #0	@ D.40089,
	beq	.L76	@,
.L46:
	mov	r3, #1	@ tmp254,
	strb	r3, [r4, #73]	@ tmp254, pSyntax_19(D)->syn_pic.picture_structure
.L47:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	strb	r7, [r4, #74]	@ D.40088, pSyntax_19(D)->syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	strb	r7, [r4, #75]	@ D.40088, pSyntax_19(D)->syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #76]	@ D.40088, pSyntax_19(D)->syn_pic.fixed_picture_qp
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	ldrh	r3, [r4, #72]	@ *pSyntax_19(D), *pSyntax_19(D)
	strb	r7, [r4, #77]	@ D.40088, pSyntax_19(D)->syn_pic.picture_qp
	cmp	r3, #0	@ *pSyntax_19(D),
	beq	.L77	@,
.L48:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #79]	@ D.40088, pSyntax_19(D)->syn_pic.reserved_bits
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	uxtb	r0, r7	@ D.40089, D.40088
	mov	r3, #0	@ tmp264,
	cmp	r0, #0	@ D.40089,
	strb	r0, [r4, #80]	@ D.40089, pSyntax_19(D)->syn_pic.loop_filter_disable
	str	r3, [r4, #112]	@ tmp264, pSyntax_19(D)->syn_pic.alpha_c_offset
	str	r3, [r4, #116]	@ tmp264, pSyntax_19(D)->syn_pic.beta_offset
	beq	.L78	@,
.L50:
	ldr	r3, [r4, #12]	@ pSyntax_19(D)->syn_seq.profile_id, pSyntax_19(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_19(D)->syn_seq.profile_id,
	beq	.L79	@,
.L52:
	mov	r0, #1	@ tmp290,
	mov	r3, #0	@ tmp292,
	strb	r0, [r4, #85]	@ tmp290, pSyntax_19(D)->syn_pic.picture_reference_flag
	str	r3, [r4, #340]	@ tmp292, pSyntax_19(D)->syn_pic.derived_pic_coding_type
	ldr	r3, [r6, #104]	@ pCodecInf_17(D)->Integrity, pCodecInf_17(D)->Integrity
	orr	r3, r3, #262144	@ D.40087, pCodecInf_17(D)->Integrity,
	str	r3, [r6, #104]	@ D.40087, pCodecInf_17(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L76:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #73]	@ D.40088, pSyntax_19(D)->syn_pic.picture_structure
	b	.L47	@
.L78:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	uxtb	r0, r7	@ D.40089, D.40088
	strb	r0, [r4, #81]	@ D.40089, pSyntax_19(D)->syn_pic.loop_filter_parameter_flag
	cmp	r0, #0	@ D.40089,
	beq	.L50	@,
	ldr	r1, .L81	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L81+4	@,
	str	r0, [r4, #112]	@, pSyntax_19(D)->syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, pSyntax_19(D)->syn_pic.beta_offset
	b	.L50	@
.L77:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #78]	@ D.40088, pSyntax_19(D)->syn_pic.skip_mode_flag
	b	.L48	@
.L79:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ D.40088,
	str	r7, [r4, #120]	@ D.40088, pSyntax_19(D)->syn_pic.weighting_quant_flag
	bne	.L53	@,
.L62:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r5, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	str	r5, [r4, #324]	@ D.40088, pSyntax_19(D)->syn_pic.aec_enable
	b	.L52	@
.L73:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #100]	@ D.40088, pSyntax_19(D)->syn_pic.marker_bit
	mov	r1, #7	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #88]	@ pSyntax_19(D)->syn_pic.bbv_delay, pSyntax_19(D)->syn_pic.bbv_delay
	mov	r3, #1	@ tmp244,
	str	r7, [r4, #92]	@ D.40088, pSyntax_19(D)->syn_pic.bbv_delay_extension
	strb	r3, [r4, #368]	@ tmp244, pSyntax_19(D)->bAvsPlus
	orr	r7, r7, r0, asl #7	@ D.40087, D.40088, pSyntax_19(D)->syn_pic.bbv_delay,
	str	r7, [r4, #88]	@ D.40087, pSyntax_19(D)->syn_pic.bbv_delay
	b	.L42	@
.L74:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #96]	@ D.40088, pSyntax_19(D)->syn_pic.time_code
	b	.L43	@
.L75:
	ldr	r1, .L81+8	@,
	mov	r0, r5	@, pBs
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, pSyntax_19(D)->syn_pic.bbv_check_times
	b	.L44	@
.L53:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #124]	@ D.40088, pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ D.40088,
	str	r7, [r4, #128]	@ D.40088, pSyntax_19(D)->syn_pic.chroma_quant_param_disable
	beq	.L80	@,
.L54:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #140]	@ D.40088, pSyntax_19(D)->syn_pic.weighting_quant_param_index
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40088,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #140]	@ D.40087, pSyntax_19(D)->syn_pic.weighting_quant_param_index
	str	r7, [r4, #144]	@ D.40088, pSyntax_19(D)->syn_pic.weighting_quant_model
	cmp	r3, #1	@ D.40087,
	beq	.L57	@,
	ldr	r2, [r4, #124]	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.40087,
	beq	.L57	@,
	cmp	r3, #2	@ D.40087,
	addeq	r7, r4, #168	@ ivtmp.102, pSyntax,
	bne	.L62	@,
.L61:
	add	r8, r4, #192	@ D.40093, pSyntax,
.L60:
	ldr	r1, .L81+12	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r7, #4]!	@, MEM[base: _210, offset: 0B]
	cmp	r7, r8	@ ivtmp.102, D.40093
	bne	.L60	@,
	b	.L62	@
.L80:
	ldr	r1, .L81+16	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L81+20	@,
	str	r0, [r4, #132]	@, pSyntax_19(D)->syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, pSyntax_19(D)->syn_pic.chroma_quant_param_delta_v
	b	.L54	@
.L57:
	add	r8, r4, #144	@ ivtmp.116, pSyntax,
	add	r7, r4, #168	@ ivtmp.102, pSyntax,
.L56:
	ldr	r1, .L81+24	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r8, #4]!	@, MEM[base: _13, offset: 0B]
	cmp	r8, r7	@ ivtmp.116, ivtmp.102
	bne	.L56	@,
	ldr	r3, [r4, #140]	@ D.40087, pSyntax_19(D)->syn_pic.weighting_quant_param_index
	cmp	r3, #2	@ D.40087,
	beq	.L61	@,
	ldr	r2, [r4, #124]	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.40087,
	bne	.L62	@,
	b	.L61	@
.L82:
	.align	2
.L81:
	.word	.LC1
	.word	.LC2
	.word	.LC0
	.word	.LC6
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.fnend
	.size	AVS_i_picture_header, .-AVS_i_picture_header
	.align	2
	.global	AVS_pb_picture_header
	.type	AVS_pb_picture_header, %function
AVS_pb_picture_header:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ pCodecInf, pCodecInf
	ldr	r5, [r0, #492]	@ pBs, pCodecInf_18(D)->pBs
	mov	r4, r1	@ pSyntax, pSyntax
	add	r0, r1, #72	@, pSyntax,
	mov	r1, #272	@,
	bl	__memzero	@
	ldr	r3, [r6, #104]	@ pCodecInf_18(D)->Integrity, pCodecInf_18(D)->Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bic	r3, r3, #262144	@ D.40135, pCodecInf_18(D)->Integrity,
	str	r3, [r6, #104]	@ D.40135, pCodecInf_18(D)->Integrity
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #12]	@ pSyntax_20(D)->syn_seq.profile_id, pSyntax_20(D)->syn_seq.profile_id
	str	r7, [r4, #88]	@ D.40136, pSyntax_20(D)->syn_pic.bbv_delay
	cmp	r3, #72	@ pSyntax_20(D)->syn_seq.profile_id,
	beq	.L128	@,
.L84:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #83]	@ D.40136, pSyntax_20(D)->syn_pic.picture_coding_type
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_seq.low_delay, pSyntax_20(D)->syn_seq.low_delay
	str	r7, [r4, #104]	@ D.40136, pSyntax_20(D)->syn_pic.picture_distance
	cmp	r3, #1	@ pSyntax_20(D)->syn_seq.low_delay,
	beq	.L129	@,
.L85:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	uxtb	r0, r7	@ D.40137, D.40136
	strb	r0, [r4, #72]	@ D.40137, pSyntax_20(D)->syn_pic.progressive_frame
	cmp	r0, #0	@ D.40137,
	movne	r3, #1	@ tmp231,
	strneb	r3, [r4, #73]	@ tmp231, pSyntax_20(D)->syn_pic.picture_structure
	beq	.L130	@,
.L87:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	strb	r7, [r4, #74]	@ D.40136, pSyntax_20(D)->syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	strb	r7, [r4, #75]	@ D.40136, pSyntax_20(D)->syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #76]	@ D.40136, pSyntax_20(D)->syn_pic.fixed_picture_qp
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #83]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_coding_type, pSyntax_20(D)->syn_pic.picture_coding_type
	strb	r7, [r4, #77]	@ D.40136, pSyntax_20(D)->syn_pic.picture_qp
	cmp	r3, #2	@ pSyntax_20(D)->syn_pic.picture_coding_type,
	beq	.L131	@,
.L88:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #85]	@ D.40136, pSyntax_20(D)->syn_pic.picture_reference_flag
.L90:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #83]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_coding_type, pSyntax_20(D)->syn_pic.picture_coding_type
	mov	r3, #0	@ tmp243,
	strb	r7, [r4, #86]	@ D.40136, pSyntax_20(D)->syn_pic.no_forward_reference_flag
	mov	r1, #1	@,
	cmp	r2, #2	@ pSyntax_20(D)->syn_pic.picture_coding_type,
	mov	r0, r5	@, pBs
	str	r3, [r4, #332]	@ tmp243, pSyntax_20(D)->syn_pic.p_filed_enhanced_flag
	str	r3, [r4, #336]	@ tmp243, pSyntax_20(D)->syn_pic.b_filed_enhanced_flag
	beq	.L132	@,
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #332]	@ D.40136, pSyntax_20(D)->syn_pic.p_filed_enhanced_flag
.L92:
	ldrb	r3, [r4, #73]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_structure, pSyntax_20(D)->syn_pic.picture_structure
	cmp	r3, #1	@ pSyntax_20(D)->syn_pic.picture_structure,
	beq	.L93	@,
	ldr	r3, [r4, #12]	@ pSyntax_20(D)->syn_seq.profile_id, pSyntax_20(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_20(D)->syn_seq.profile_id,
	beq	.L94	@,
.L93:
	mov	r3, #0	@ tmp248,
	str	r3, [r4, #332]	@ tmp248, pSyntax_20(D)->syn_pic.p_filed_enhanced_flag
	str	r3, [r4, #336]	@ tmp248, pSyntax_20(D)->syn_pic.b_filed_enhanced_flag
.L94:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	strb	r7, [r4, #79]	@ D.40136, pSyntax_20(D)->syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #78]	@ D.40136, pSyntax_20(D)->syn_pic.skip_mode_flag
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	uxtb	r0, r7	@ D.40137, D.40136
	mov	r3, #0	@ tmp253,
	cmp	r0, #0	@ D.40137,
	strb	r0, [r4, #80]	@ D.40137, pSyntax_20(D)->syn_pic.loop_filter_disable
	str	r3, [r4, #112]	@ tmp253, pSyntax_20(D)->syn_pic.alpha_c_offset
	str	r3, [r4, #116]	@ tmp253, pSyntax_20(D)->syn_pic.beta_offset
	beq	.L133	@,
.L96:
	ldr	r3, [r4, #12]	@ pSyntax_20(D)->syn_seq.profile_id, pSyntax_20(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_20(D)->syn_seq.profile_id,
	beq	.L134	@,
.L98:
	ldrb	r3, [r4, #83]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_coding_type, pSyntax_20(D)->syn_pic.picture_coding_type
	mov	r0, #1	@,
	cmp	r3, #1	@ pSyntax_20(D)->syn_pic.picture_coding_type,
	movne	r3, #2	@ tmp281,
	str	r3, [r4, #340]	@ tmp281, pSyntax_20(D)->syn_pic.derived_pic_coding_type
	ldr	r3, [r6, #104]	@ pCodecInf_18(D)->Integrity, pCodecInf_18(D)->Integrity
	orr	r3, r3, #262144	@ D.40135, pCodecInf_18(D)->Integrity,
	str	r3, [r6, #104]	@ D.40135, pCodecInf_18(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L131:
	ldrb	r3, [r4, #73]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_structure, pSyntax_20(D)->syn_pic.picture_structure
	cmp	r3, #1	@ pSyntax_20(D)->syn_pic.picture_structure,
	streqb	r3, [r4, #85]	@ pSyntax_20(D)->syn_pic.picture_structure, pSyntax_20(D)->syn_pic.picture_reference_flag
	bne	.L88	@,
	b	.L90	@
.L130:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	uxtb	r0, r7	@ D.40137, D.40136
	strb	r0, [r4, #73]	@ D.40137, pSyntax_20(D)->syn_pic.picture_structure
	cmp	r0, #0	@ D.40137,
	bne	.L87	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	strb	r7, [r4, #84]	@ D.40136, pSyntax_20(D)->syn_pic.advanced_pred_mode_disable
	b	.L87	@
.L133:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	uxtb	r0, r7	@ D.40137, D.40136
	strb	r0, [r4, #81]	@ D.40137, pSyntax_20(D)->syn_pic.loop_filter_parameter_flag
	cmp	r0, #0	@ D.40137,
	beq	.L96	@,
	ldr	r1, .L136	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L136+4	@,
	str	r0, [r4, #112]	@, pSyntax_20(D)->syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, pSyntax_20(D)->syn_pic.beta_offset
	b	.L96	@
.L132:
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #336]	@ D.40136, pSyntax_20(D)->syn_pic.b_filed_enhanced_flag
	b	.L92	@
.L134:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	cmp	r7, #1	@ D.40136,
	str	r7, [r4, #120]	@ D.40136, pSyntax_20(D)->syn_pic.weighting_quant_flag
	beq	.L99	@,
.L108:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r5, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	str	r5, [r4, #324]	@ D.40136, pSyntax_20(D)->syn_pic.aec_enable
	b	.L98	@
.L128:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #100]	@ D.40136, pSyntax_20(D)->syn_pic.marker_bit
	mov	r1, #7	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #88]	@ pSyntax_20(D)->syn_pic.bbv_delay, pSyntax_20(D)->syn_pic.bbv_delay
	mov	r3, #1	@ tmp223,
	str	r7, [r4, #92]	@ D.40136, pSyntax_20(D)->syn_pic.bbv_delay_extension
	strb	r3, [r4, #368]	@ tmp223, pSyntax_20(D)->bAvsPlus
	orr	r7, r7, r0, asl #7	@ D.40135, D.40136, pSyntax_20(D)->syn_pic.bbv_delay,
	str	r7, [r4, #88]	@ D.40135, pSyntax_20(D)->syn_pic.bbv_delay
	b	.L84	@
.L129:
	ldr	r1, .L136+8	@,
	mov	r0, r5	@, pBs
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, pSyntax_20(D)->syn_pic.bbv_check_times
	b	.L85	@
.L99:
	mov	r1, r7	@, D.40136
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	mov	r1, r7	@, D.40136
	str	r8, [r4, #124]	@ D.40136, pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ D.40136,
	str	r7, [r4, #128]	@ D.40136, pSyntax_20(D)->syn_pic.chroma_quant_param_disable
	beq	.L135	@,
.L100:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	str	r7, [r4, #140]	@ D.40136, pSyntax_20(D)->syn_pic.weighting_quant_param_index
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r7, r0	@ D.40136,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #140]	@ D.40135, pSyntax_20(D)->syn_pic.weighting_quant_param_index
	str	r7, [r4, #144]	@ D.40136, pSyntax_20(D)->syn_pic.weighting_quant_model
	cmp	r3, #1	@ D.40135,
	beq	.L103	@,
	ldr	r2, [r4, #124]	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.40135,
	beq	.L103	@,
	cmp	r3, #2	@ D.40135,
	addeq	r7, r4, #168	@ ivtmp.132, pSyntax,
	bne	.L108	@,
.L107:
	add	r8, r4, #192	@ D.40133, pSyntax,
.L106:
	ldr	r1, .L136+12	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r7, #4]!	@, MEM[base: _242, offset: 0B]
	cmp	r7, r8	@ ivtmp.132, D.40133
	bne	.L106	@,
	b	.L108	@
.L103:
	add	r8, r4, #144	@ ivtmp.146, pSyntax,
	add	r7, r4, #168	@ ivtmp.132, pSyntax,
.L102:
	ldr	r1, .L136+16	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r8, #4]!	@, MEM[base: _1, offset: 0B]
	cmp	r8, r7	@ ivtmp.146, ivtmp.132
	bne	.L102	@,
	ldr	r3, [r4, #140]	@ D.40135, pSyntax_20(D)->syn_pic.weighting_quant_param_index
	cmp	r3, #2	@ D.40135,
	beq	.L107	@,
	ldr	r2, [r4, #124]	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.40135,
	bne	.L108	@,
	b	.L107	@
.L135:
	ldr	r1, .L136+20	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L136+24	@,
	str	r0, [r4, #132]	@, pSyntax_20(D)->syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, pSyntax_20(D)->syn_pic.chroma_quant_param_delta_v
	b	.L100	@
.L137:
	.align	2
.L136:
	.word	.LC1
	.word	.LC2
	.word	.LC0
	.word	.LC6
	.word	.LC5
	.word	.LC3
	.word	.LC4
	.fnend
	.size	AVS_pb_picture_header, .-AVS_pb_picture_header
	.align	2
	.global	AVS_user_data
	.type	AVS_user_data, %function
AVS_user_data:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #12288	@ tmp359, pCtx,
	mov	r7, r1	@ ExtFrm, ExtFrm
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r1, #32	@,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r0, [r4, #3084]	@, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity
	cmp	r7, #0	@ ExtFrm,
	orr	r3, r3, #1048576	@ D.40142, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.40142, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity
	bne	.L139	@,
	ldr	r1, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	add	r5, r6, #16384	@ tmp360, pCtx,
	cmp	r1, #0	@ D.40143,
	beq	.L140	@,
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #3376]	@ ExtFrm, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
.L140:
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	GetUsd	@
	cmp	r0, #0	@ D.40143,
	str	r0, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	beq	.L150	@,
	ldr	r3, [r6]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	add	r0, r0, #1056	@ tmp219, D.40143,
	mov	r1, #9	@ tmp222,
	ldrd	r2, [r3, #56]	@ D.40146, pCtx_11(D)->pstExtraData,
	strd	r2, [r0]	@ D.40146, _25->PTS
	ldr	r3, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	str	r1, [r3, #1036]	@ tmp222, _30->from
	ldr	r3, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r2, [r4, #2704]	@ D.40142, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].SeqCnt
	str	r2, [r3, #1040]	@ D.40142, _32->seq_cnt
	ldr	r2, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r3, [r5, #76]	@ pCtx_11(D)->LastPacket.StreamPack[0].LenInByte, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	sub	r3, r3, #4	@ D.40142, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte,
	str	r3, [r2, #1048]	@ D.40142, _35->data_size
	ldr	r0, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r2, [r0, #1048]	@ D.40144, _40->data_size
	cmp	r2, #1024	@ D.40144,
	movgt	r3, #1024	@ tmp235,
	strgt	r3, [r0, #1048]	@ tmp235, _40->data_size
	ldrgt	r0, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r1, [r5, #64]	@ pCtx_11(D)->LastPacket.StreamPack[0].VirAddr, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr
	ldrgt	r2, [r0, #1048]	@ D.40144, _166->data_size
	add	r1, r1, #4	@, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr,
	bl	memcpy	@
	ldrb	r3, [r5, #69]	@ zero_extendqisi2	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg, pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg,
	bne	.L145	@,
	ldr	r2, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r1, [r5, #156]	@ pCtx_11(D)->LastPacket.StreamPack[1].LenInByte, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	ldr	r3, [r2, #1048]	@ _51->data_size, _51->data_size
	add	r3, r3, r1	@ D.40142, _51->data_size, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	str	r3, [r2, #1048]	@ D.40142, _51->data_size
	ldr	r3, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r2, [r3, #1048]	@ D.40144, _58->data_size
	cmp	r2, #1024	@ D.40144,
	movgt	r2, #1024	@ tmp258,
	strgt	r2, [r3, #1048]	@ tmp258, _58->data_size
	ldrgt	r3, [r4, #3376]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r0, [r5, #76]	@ D.40142, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	ldrgt	r2, [r3, #1048]	@ D.40144, _170->data_size
	rsb	r2, r0, r2	@ D.40142, D.40142, D.40144
	cmn	r2, #4	@ D.40142,
	beq	.L145	@,
	sub	r0, r0, #4	@ D.40151, D.40142,
	add	r2, r2, #4	@, D.40142,
	add	r0, r3, r0	@, D.40143, D.40151
	ldr	r1, [r5, #144]	@, pCtx_11(D)->LastPacket.StreamPack[1].VirAddr
	bl	memcpy	@
.L145:
	ldr	r3, .L178	@ tmp273,
	ldr	r3, [r3]	@ D.40152, g_event_report
	cmp	r3, #0	@ D.40152,
	ldrne	ip, [r4, #3376]	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	bne	.L177	@,
	b	.L176	@
.L139:
	ldr	r1, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	add	r5, r6, #16384	@ tmp360, pCtx,
	cmp	r1, #0	@ D.40143,
	beq	.L149	@,
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp288,
	str	r3, [r4, #3380]	@ tmp288, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
.L149:
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	GetUsd	@
	cmp	r0, #0	@ D.40143,
	str	r0, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	beq	.L150	@,
	ldr	r3, [r6]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	add	r0, r0, #1056	@ tmp296, D.40143,
	mov	r1, #10	@ tmp299,
	ldrd	r2, [r3, #56]	@ D.40146, pCtx_11(D)->pstExtraData,
	strd	r2, [r0]	@ D.40146, _84->PTS
	ldr	r3, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	str	r1, [r3, #1036]	@ tmp299, _89->from
	ldr	r3, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r2, [r4, #2704]	@ D.40142, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].SeqCnt
	str	r2, [r3, #1040]	@ D.40142, _91->seq_cnt
	ldr	r2, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r3, [r5, #76]	@ pCtx_11(D)->LastPacket.StreamPack[0].LenInByte, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	sub	r3, r3, #4	@ D.40142, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte,
	str	r3, [r2, #1048]	@ D.40142, _94->data_size
	ldr	r0, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r2, [r0, #1048]	@ D.40144, _99->data_size
	cmp	r2, #1024	@ D.40144,
	movgt	r3, #1024	@ tmp312,
	strgt	r3, [r0, #1048]	@ tmp312, _99->data_size
	ldrgt	r0, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r1, [r5, #64]	@ pCtx_11(D)->LastPacket.StreamPack[0].VirAddr, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr
	ldrgt	r2, [r0, #1048]	@ D.40144, _158->data_size
	add	r1, r1, #4	@, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr,
	bl	memcpy	@
	ldrb	r3, [r5, #69]	@ zero_extendqisi2	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg, pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg,
	bne	.L153	@,
	ldr	r2, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r1, [r5, #156]	@ pCtx_11(D)->LastPacket.StreamPack[1].LenInByte, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	ldr	r3, [r2, #1048]	@ _110->data_size, _110->data_size
	add	r3, r3, r1	@ D.40142, _110->data_size, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	str	r3, [r2, #1048]	@ D.40142, _110->data_size
	ldr	r3, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r2, [r3, #1048]	@ D.40144, _117->data_size
	cmp	r2, #1024	@ D.40144,
	movgt	r2, #1024	@ tmp335,
	strgt	r2, [r3, #1048]	@ tmp335, _117->data_size
	ldrgt	r3, [r4, #3380]	@ D.40143, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r0, [r5, #76]	@ D.40142, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	ldrgt	r2, [r3, #1048]	@ D.40144, _162->data_size
	rsb	r2, r0, r2	@ D.40142, D.40142, D.40144
	cmn	r2, #4	@ D.40142,
	beq	.L153	@,
	sub	r0, r0, #4	@ D.40151, D.40142,
	add	r2, r2, #4	@, D.40142,
	add	r0, r3, r0	@, D.40143, D.40151
	ldr	r1, [r5, #144]	@, pCtx_11(D)->LastPacket.StreamPack[1].VirAddr
	bl	memcpy	@
.L153:
	ldr	r3, .L178	@ tmp350,
	ldr	r3, [r3]	@ D.40152, g_event_report
	cmp	r3, #0	@ D.40152,
	beq	.L176	@,
	ldr	ip, [r4, #3380]	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
.L177:
	add	r2, sp, #8	@ tmp354,,
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	mov	r1, #6	@,
	str	ip, [r2, #-4]!	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD,
	blx	r3	@ D.40152
.L176:
	mov	r0, #1	@ D.40141,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L150:
	mov	r0, #0	@ D.40141,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L179:
	.align	2
.L178:
	.word	g_event_report
	.fnend
	.size	AVS_user_data, .-AVS_user_data
	.align	2
	.global	AVS_sequence_display_extension
	.type	AVS_sequence_display_extension, %function
AVS_sequence_display_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pSyntax, pSyntax
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_3(D)->pBs
	mov	r1, #4	@,
	mov	r7, r0	@ pCodecInf, pCodecInf
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	strb	r6, [r5, #42]	@ D.40168, pSyntax_8(D)->syn_sdext.video_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	strb	r6, [r5, #43]	@ D.40168, pSyntax_8(D)->syn_sdext.sample_range
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	uxtb	r3, r6	@ D.40169, D.40168
	strb	r3, [r5, #44]	@ D.40169, pSyntax_8(D)->syn_sdext.colour_description
	cmp	r3, #1	@ D.40169,
	beq	.L183	@,
.L181:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	str	r6, [r5, #60]	@ D.40168, pSyntax_8(D)->syn_sdext.display_horizontal_size
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	strb	r6, [r5, #41]	@ D.40168, pSyntax_8(D)->syn_sdext.marker_bit
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	mov	r1, #2	@,
	str	r6, [r5, #64]	@ D.40168, pSyntax_8(D)->syn_sdext.display_vertical_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	strb	r6, [r5, #40]	@ D.40168, pSyntax_8(D)->syn_sdext.reserved_bits
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r7, #104]	@ pCodecInf_3(D)->Integrity, pCodecInf_3(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #131072	@ D.40170, pCodecInf_3(D)->Integrity,
	str	r3, [r7, #104]	@ D.40170, pCodecInf_3(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L183:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	mov	r1, #8	@,
	str	r6, [r5, #48]	@ D.40168, pSyntax_8(D)->syn_sdext.colour_primaries
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	str	r6, [r5, #52]	@ D.40168, pSyntax_8(D)->syn_sdext.transfer_characteristics
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r6, r0	@ D.40168,
	bl	vfmw_dprint_nothing	@
	str	r6, [r5, #56]	@ D.40168, pSyntax_8(D)->syn_sdext.matrix_coefficients
	b	.L181	@
	.fnend
	.size	AVS_sequence_display_extension, .-AVS_sequence_display_extension
	.align	2
	.global	AVS_copyright_extension
	.type	AVS_copyright_extension, %function
AVS_copyright_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #4	@,
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_2(D)->pBs
	mov	r5, r0	@ pCodecInf, pCodecInf
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #7	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #20	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r5, #104]	@ pCodecInf_2(D)->Integrity, pCodecInf_2(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #2097152	@ D.40173, pCodecInf_2(D)->Integrity,
	str	r3, [r5, #104]	@ D.40173, pCodecInf_2(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVS_copyright_extension, .-AVS_copyright_extension
	.align	2
	.global	AVS_camera_parameters_extension
	.type	AVS_camera_parameters_extension, %function
AVS_camera_parameters_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #4	@,
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_2(D)->pBs
	mov	r5, r0	@ pCodecInf, pCodecInf
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #7	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r5, #104]	@ pCodecInf_2(D)->Integrity, pCodecInf_2(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #4194304	@ D.40176, pCodecInf_2(D)->Integrity,
	str	r3, [r5, #104]	@ D.40176, pCodecInf_2(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVS_camera_parameters_extension, .-AVS_camera_parameters_extension
	.align	2
	.global	AVS_picture_display_extension
	.type	AVS_picture_display_extension, %function
AVS_picture_display_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r1	@ pSyntax, pSyntax
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_5(D)->pBs
	mov	r1, #4	@,
	mov	r9, r0	@ pCodecInf, pCodecInf
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r10, #11]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_seq.progressive_sequence, pSyntax_8(D)->syn_seq.progressive_sequence
	cmp	r3, #1	@ pSyntax_8(D)->syn_seq.progressive_sequence,
	beq	.L206	@,
	ldrb	r3, [r10, #73]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.picture_structure, pSyntax_8(D)->syn_pic.picture_structure
	cmp	r3, #0	@ pSyntax_8(D)->syn_pic.picture_structure,
	bne	.L207	@,
.L190:
	mov	r3, #1	@ tmp139,
	str	r3, [r10]	@ tmp139, pSyntax_8(D)->NumOfFrameCentreOffsets
.L192:
	add	r7, r10, #340	@ ivtmp.167, pSyntax,
	add	r6, r10, #352	@ ivtmp.176, pSyntax,
	mov	r5, #0	@ i,
.L194:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r5, #1	@ i, i,
	mov	r8, r0	@ D.40197,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	str	r8, [r7, #4]!	@ D.40197, MEM[base: _45, offset: 0B]
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r8, r0	@ D.40197,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	str	r8, [r6, #4]!	@ D.40197, MEM[base: _36, offset: 0B]
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10]	@ pSyntax_8(D)->NumOfFrameCentreOffsets, pSyntax_8(D)->NumOfFrameCentreOffsets
	cmp	r3, r5	@ pSyntax_8(D)->NumOfFrameCentreOffsets, i
	bgt	.L194	@,
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r9, #104]	@ pCodecInf_5(D)->Integrity, pCodecInf_5(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #524288	@ D.40199, pCodecInf_5(D)->Integrity,
	str	r3, [r9, #104]	@ D.40199, pCodecInf_5(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L207:
	ldrb	r3, [r10, #75]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.repeat_first_field, pSyntax_8(D)->syn_pic.repeat_first_field
	cmp	r3, #1	@ pSyntax_8(D)->syn_pic.repeat_first_field,
	beq	.L193	@,
.L191:
	mov	r3, #2	@ tmp138,
	str	r3, [r10]	@ tmp138, pSyntax_8(D)->NumOfFrameCentreOffsets
	b	.L192	@
.L206:
	ldrb	r3, [r10, #75]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.repeat_first_field, pSyntax_8(D)->syn_pic.repeat_first_field
	cmp	r3, #1	@ pSyntax_8(D)->syn_pic.repeat_first_field,
	bne	.L190	@,
	ldrb	r3, [r10, #74]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.top_field_first, pSyntax_8(D)->syn_pic.top_field_first
	cmp	r3, #1	@ pSyntax_8(D)->syn_pic.top_field_first,
	bne	.L191	@,
.L193:
	mov	r3, #3	@ tmp137,
	str	r3, [r10]	@ tmp137, pSyntax_8(D)->NumOfFrameCentreOffsets
	b	.L192	@
	.fnend
	.size	AVS_picture_display_extension, .-AVS_picture_display_extension
	.align	2
	.global	AVS_extension
	.type	AVS_extension, %function
AVS_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pCodecInf, pCodecInf
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_6(D)->pBs
	mov	r6, r1	@ pSyntax, pSyntax
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsShow	@
	sub	r0, r0, #2	@ tmp121,,
	cmp	r0, #9	@ tmp121,
	ldrls	pc, [pc, r0, asl #2]	@ tmp121
	b	.L209	@
.L211:
	.word	.L210
	.word	.L209
	.word	.L212
	.word	.L209
	.word	.L209
	.word	.L213
	.word	.L209
	.word	.L209
	.word	.L209
	.word	.L214
.L214:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_camera_parameters_extension	@
.L213:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_picture_display_extension	@
.L212:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_copyright_extension	@
.L210:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_sequence_display_extension	@
.L209:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsSkip	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVS_extension, .-AVS_extension
	.align	2
	.global	AVS_AllocateVHB
	.type	AVS_AllocateVHB, %function
AVS_AllocateVHB:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #12288	@ tmp151, pCtx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r5, [r3, #2732]	@ pCodecInf$124$horizontal_size, MEM[(struct AVS_CTX_S *)pCtx_11(D) + 15020B]
	.pad #40
	sub	sp, sp, #40	@,,
	ldr	r7, [r3, #2736]	@ pCodecInf$124$vertical_size, MEM[(struct AVS_CTX_S *)pCtx_11(D) + 15024B]
	cmp	r5, #31	@ pCodecInf$124$horizontal_size,
	bls	.L217	@,
	cmp	r7, #31	@ pCodecInf$124$vertical_size,
	bls	.L217	@,
	ldr	r3, [r0]	@ D.40213, pCtx_11(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _15->stChanOption.s32ReRangeEn, _15->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _15->stChanOption.s32ReRangeEn,
	ldr	r2, [r3, #32]	@ _15->eCapLevel, _15->eCapLevel
	bne	.L220	@,
	cmp	r2, #25	@ _15->eCapLevel,
	beq	.L236	@,
	mov	r6, #4	@ PmvNum,
	add	r8, r0, #16384	@ tmp196, pCtx,
	mov	r10, #5	@ D.40212,
	mov	r9, r6	@ DecFsNum, PmvNum
.L221:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp197,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.40213, pCtx_11(D)->pstExtraData
	mov	r2, #0	@ tmp170,
	ldr	r1, [r3, #20]	@ _41->s32DnrDispOutEnable, _41->s32DnrDispOutEnable
	str	r7, [sp, #36]	@ pCodecInf$124$vertical_size, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _41->eCapLevel, _41->eCapLevel
	str	r5, [sp, #16]	@ pCodecInf$124$horizontal_size, FspInstCfg.s32DecFsWidth
	cmp	r3, #24	@ _41->eCapLevel,
	str	r7, [sp, #20]	@ pCodecInf$124$vertical_size, FspInstCfg.s32DecFsHeight
	strb	r1, [sp, #4]	@ _41->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [sp, #32]	@ pCodecInf$124$horizontal_size, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #6]	@ tmp170, FspInstCfg.s32RprEnable
	beq	.L224	@,
	uxtb	r6, r6	@ D.40211, PmvNum
	strb	r9, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r10, [sp, #11]	@ D.40212, FspInstCfg.s32ExpectedDispFsNum
.L226:
	add	r1, sp, #4	@ tmp198,,
	ldr	r0, [r8, #224]	@, pCtx_11(D)->ChanID
	strb	r6, [sp, #12]	@ D.40211, FspInstCfg.s32ExpectedPmvNum
	mov	r3, #0	@ tmp176,
	strb	r3, [sp, #8]	@ tmp176, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.40210,
	bne	.L217	@,
	ldr	r1, [r4]	@ D.40213, pCtx_11(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r8, #224]	@, pCtx_11(D)->ChanID
	ldr	r2, [r1, #28]	@, _64->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _64->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r6, #1	@ tmp190,
	streq	r6, [r8, #736]	@ tmp190, pCtx_11(D)->FspPartitionOK
	beq	.L232	@,
	bl	vfmw_dprint_nothing	@
	b	.L232	@
.L236:
	ldr	r2, [r3, #568]	@ _15->stChanOption.s32MaxWidth, _15->stChanOption.s32MaxWidth
	cmp	r2, r5	@ _15->stChanOption.s32MaxWidth, pCodecInf$124$horizontal_size
	bcc	.L217	@,
	ldr	r2, [r3, #572]	@ _15->stChanOption.s32MaxHeight, _15->stChanOption.s32MaxHeight
	cmp	r2, r7	@ _15->stChanOption.s32MaxHeight, pCodecInf$124$vertical_size
	bcs	.L237	@,
.L217:
	bl	vfmw_dprint_nothing	@
	mov	r6, #0	@ D.40210,
.L232:
	mov	r0, r6	@, D.40210
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L220:
	cmp	r2, #25	@ _15->eCapLevel,
	beq	.L238	@,
	mov	r6, #4	@ PmvNum,
	add	r8, r0, #16384	@ tmp196, pCtx,
	mov	r9, r6	@ DecFsNum, PmvNum
	mov	r10, #5	@ D.40212,
	b	.L221	@
.L238:
	ldr	r2, [r3, #568]	@ _15->stChanOption.s32MaxWidth, _15->stChanOption.s32MaxWidth
	cmp	r2, r5	@ _15->stChanOption.s32MaxWidth, pCodecInf$124$horizontal_size
	bcc	.L217	@,
	ldr	r2, [r3, #572]	@ _15->stChanOption.s32MaxHeight, _15->stChanOption.s32MaxHeight
	cmp	r2, r7	@ _15->stChanOption.s32MaxHeight, pCodecInf$124$vertical_size
	bcc	.L217	@,
	ldr	r2, [r3, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r6, #1	@ PmvNum,
	bne	.L239	@,
.L223:
	ldrb	r10, [r3, #616]	@ zero_extendqisi2	@ D.40212, _15->stChanOption.s32DisplayFrameNum
	add	r8, r4, #16384	@ tmp196, pCtx,
	b	.L221	@
.L224:
	strb	r2, [sp, #9]	@ tmp170, FspInstCfg.s32ExpectedDecFsNum
	mov	r6, #1	@ D.40211,
	strb	r10, [sp, #11]	@ D.40212, FspInstCfg.s32ExpectedDispFsNum
	b	.L226	@
.L237:
	add	r8, r0, #16384	@ tmp196, pCtx,
	ldr	r6, [r8, #736]	@ D.40210, pCtx_11(D)->FspPartitionOK
	cmp	r6, #1	@ D.40210,
	beq	.L232	@,
	ldr	r2, [r3, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r6, #1	@ PmvNum,
	beq	.L222	@,
	add	r6, r9, #1	@ PmvNum, DecFsNum,
	cmp	r6, #17	@ PmvNum,
	movge	r6, #17	@ PmvNum,
.L222:
	ldrb	r10, [r3, #616]	@ zero_extendqisi2	@ D.40212, _15->stChanOption.s32DisplayFrameNum
	b	.L221	@
.L239:
	add	r6, r9, #1	@ PmvNum, DecFsNum,
	cmp	r6, #17	@ PmvNum,
	movge	r6, #17	@ PmvNum,
	b	.L223	@
	.fnend
	.size	AVS_AllocateVHB, .-AVS_AllocateVHB
	.align	2
	.global	AVS_StartDecode
	.type	AVS_StartDecode, %function
AVS_StartDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #16384	@ tmp587, pCtx,
	add	r6, r0, #12288	@ tmp588, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r4, #228]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].mbamt_to_dec, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].mbamt_to_dec
	strb	r3, [r0, #8]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].mbamt_to_dec, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].mbamt_to_dec
	ldr	r3, [r4, #232]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].mv_output_en, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].mv_output_en
	strb	r3, [r0, #9]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].mv_output_en, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].mv_output_en
	ldr	r3, [r4, #236]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].load_qmatrix_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].load_qmatrix_flag
	strb	r3, [r0, #10]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].load_qmatrix_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].load_qmatrix_flag
	ldr	r3, [r4, #240]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ddr_stride, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ddr_stride
	strb	r3, [r0, #11]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ddr_stride, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].ddr_stride
	ldr	r3, [r4, #244]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].video_standard, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].video_standard
	strb	r3, [r0, #12]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].video_standard, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].video_standard
	ldr	r3, [r4, #256]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].tab_base_addr, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].tab_base_addr
	strb	r3, [r0, #13]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].tab_base_addr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].tab_base_addr
	ldr	r3, [r4, #260]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].stream_base_addr, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].stream_base_addr
	str	r3, [r0, #60]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].stream_base_addr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].StreamBaseAddr
	ldr	r3, [r4, #280]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ystaddr_1d, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ystaddr_1d
	strb	r3, [r0, #14]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ystaddr_1d, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].ystaddr_1d
	ldr	r3, [r4, #408]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_stream_address_0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_stream_address_0
	str	r3, [r0, #72]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_stream_address_0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].StreamPhyAddr
	ldr	r3, [r4, #420]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_stream_address_1, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_stream_address_1
	str	r3, [r0, #76]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_stream_address_1, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].StreamPhyAddr
	ldr	r3, [r4, #412]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_offset_0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_offset_0
	str	r3, [r0, #80]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_offset_0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].StreamBitOffset
	ldr	r3, [r4, #424]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_offset_1, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_offset_1
	str	r3, [r0, #84]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_offset_1, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].StreamBitOffset
	ldr	r3, [r4, #416]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_len_0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_len_0
	str	r3, [r0, #88]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_len_0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].StreamLength
	ldr	r3, [r4, #428]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_len_1, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_len_1
	str	r3, [r0, #92]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bit_len_1, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].StreamLength
	ldr	r3, [r4, #288]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_width_in_mb, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_width_in_mb
	strh	r3, [r0, #56]	@ movhi	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_width_in_mb, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].PicWidthInMb
	ldr	r3, [r4, #284]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_height_in_mb, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_height_in_mb
	strh	r3, [r0, #58]	@ movhi	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_height_in_mb, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].PicHeightInMb
	ldr	r3, [r4, #292]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].sample_precision, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].sample_precision
	strb	r3, [r0, #38]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].sample_precision, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].SamplePrecision
	ldr	r3, [r4, #296]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_format, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_format
	strb	r3, [r0, #39]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_format, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].ChromaFormat
	ldr	r3, [r4, #332]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_coding_type, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_coding_type
	strb	r3, [r0, #15]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_coding_type, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].PicCodingType
	ldr	r3, [r4, #336]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].picture_structure, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].picture_structure
	strb	r3, [r0, #16]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].picture_structure, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].PicStruct
	ldr	r3, [r4, #300]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].no_fwd_ref_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].no_fwd_ref_flag
	strb	r3, [r0, #17]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].no_fwd_ref_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].NoFwdRefFlag
	ldr	r3, [r4, #304]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_ref_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_ref_flag
	strb	r3, [r0, #18]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_ref_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].PicRefFlag
	ldr	r3, [r4, #312]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].skip_mode_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].skip_mode_flag
	strb	r3, [r0, #19]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].skip_mode_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].SkipModeFlag
	ldr	r3, [r4, #316]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_qp, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_qp
	strb	r3, [r0, #20]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pic_qp, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].PicQuant
	ldr	r3, [r4, #320]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fix_qp, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fix_qp
	strb	r3, [r0, #21]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fix_qp, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].FixQPFlag
	ldr	r3, [r4, #324]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].repeat_first_field, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].repeat_first_field
	strb	r3, [r0, #22]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].repeat_first_field, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].RepeatFirstField
	ldr	r3, [r4, #328]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].top_field_first, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].top_field_first
	strb	r3, [r0, #23]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].top_field_first, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].TopFieldFirst
	ldr	r3, [r4, #340]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].progressive_frame, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].progressive_frame
	strb	r3, [r0, #24]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].progressive_frame, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].ProgrsvFrame
	ldr	r3, [r4, #344]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].beta_offset, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].beta_offset
	strb	r3, [r0, #25]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].beta_offset, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].BetaOffset
	ldr	r3, [r4, #348]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].alpha_c_offset, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].alpha_c_offset
	strb	r3, [r0, #26]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].alpha_c_offset, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].AlphaOffset
	ldr	r3, [r4, #352]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].loop_flt_para_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].loop_flt_para_flag
	strb	r3, [r0, #27]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].loop_flt_para_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].LoopFiltParamFlag
	ldr	r3, [r4, #356]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].loop_flt_disable, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].loop_flt_disable
	strb	r3, [r0, #28]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].loop_flt_disable, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].LoopFiltDisable
	ldr	r3, [r4, #400]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].col_pic_struct, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].col_pic_struct
	strb	r3, [r0, #29]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].col_pic_struct, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].ColPicStruct
	ldr	r3, [r4, #308]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ad_pred_mode_disable, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ad_pred_mode_disable
	strb	r3, [r0, #30]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ad_pred_mode_disable, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].AdvPredModeDisable
	ldr	r3, [r4, #364]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_top_field_first, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_top_field_first
	strb	r3, [r0, #31]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_top_field_first, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].BwdTopFieldFirst
	ldr	r3, [r4, #360]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_picture_structure, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_picture_structure
	strb	r3, [r0, #32]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_picture_structure, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].BwdPicStruct
	ldr	r3, [r4, #380]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_top_field_first_0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_top_field_first_0
	strb	r3, [r0, #33]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_top_field_first_0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].FwdTopFieldFirst0
	ldr	r3, [r4, #376]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_picture_structure_0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_picture_structure_0
	strb	r3, [r0, #34]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_picture_structure_0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].FwdPicStruct0
	ldr	r3, [r4, #372]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_top_field_first_1, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_top_field_first_1
	strb	r3, [r0, #35]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_top_field_first_1, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].FwdTopFieldFirst1
	ldr	r3, [r4, #368]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_picture_structure_1, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_picture_structure_1
	strb	r3, [r0, #36]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_picture_structure_1, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].FwdPicStruct1
	ldr	r3, [r4, #404]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].col_pic_type, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].col_pic_type
	strb	r3, [r0, #37]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].col_pic_type, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].ColPicType
	ldr	r2, [r4, #384]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_address_0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_address_0
	ldr	r3, [r6, #2668]	@ pCtx_7(D)->CodecInfo.pCurFrm, pCtx_7(D)->CodecInfo.pCurFrm
	str	r2, [r6, #2148]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].bwd_address_0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].BwdRefPicAddr
	ldr	r2, [r4, #388]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_address_0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_address_0
	str	r2, [r6, #2152]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_address_0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].FwdRefPic0Addr
	ldr	r2, [r4, #392]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_address_1, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_address_1
	str	r2, [r6, #2156]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].fwd_address_1, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].FwdRefPic1Addr
	ldr	r2, [r4, #460]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].current_pmv_addr, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].current_pmv_addr
	str	r2, [r6, #2164]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].current_pmv_addr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].CurPmvAddr
	ldr	r2, [r4, #472]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].colpic_mv_addr, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].colpic_mv_addr
	str	r2, [r6, #2168]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].colpic_mv_addr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].ColPmvAddr
	ldr	r1, [r3, #4]	@, _138->FspID
	ldr	r0, [r4, #224]	@, pCtx_7(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r7, r0, #0	@ pLogic,
	beq	.L256	@,
	ldr	r2, [r7, #412]	@ pLogic_141->pstDispOutFs, pLogic_141->pstDispOutFs
	add	r3, r5, #16896	@ ivtmp.217, pCtx,
	add	lr, r5, #14592	@ ivtmp.226, pCtx,
	mov	ip, r3	@ D.40278, ivtmp.217
	add	r3, r3, #94	@ ivtmp.217, ivtmp.217,
	ldr	r1, [r2, #20]	@ _143->Stride, _143->Stride
	add	ip, ip, #222	@ D.40278, D.40278,
	mov	r2, lr	@ ivtmp.226, ivtmp.226
	str	r1, [r6, #2564]	@ _143->Stride, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].VahbStride
	ldr	r1, [r7, #412]	@ pLogic_141->pstDispOutFs, pLogic_141->pstDispOutFs
	ldr	r1, [r1, #32]	@ _147->ChromOffset, _147->ChromOffset
	str	r1, [r6, #2568]	@ _147->ChromOffset, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].uv_offset
	ldr	r1, [r4, #280]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ystaddr_1d, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ystaddr_1d
	str	r1, [r6, #2160]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ystaddr_1d, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].CurPicAddr
	ldr	r1, [r4, #396]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].rcn_address, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].rcn_address
	str	r1, [r6, #2172]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].rcn_address, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].rcn_address
	ldr	r1, [r4, #604]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pmv_colmb_addr, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pmv_colmb_addr
	str	r1, [r6, #2176]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].pmv_colmb_addr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].pmv_colmb_addr
	ldr	r1, [r4, #432]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].weighting_quant_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].weighting_quant_flag
	strb	r1, [r5, #40]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].weighting_quant_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].weighting_quant_flag
	ldr	r1, [r4, #436]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_disable, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_disable
	strb	r1, [r5, #41]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_disable, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].chroma_quant_param_disable
	ldr	r1, [r4, #444]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_delta_u, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_delta_u
	strb	r1, [r5, #42]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_delta_u, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].chroma_quant_param_delta_u
	ldr	r1, [r4, #440]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_delta_v, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_delta_v
	strb	r1, [r5, #43]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].chroma_quant_param_delta_v, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].chroma_quant_param_delta_v
	ldr	r1, [r4, #448]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].aec_enable, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].aec_enable
	strb	r1, [r5, #44]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].aec_enable, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].aec_enable
	ldr	r1, [r4, #452]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].p_filed_enhanced_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].p_filed_enhanced_flag
	strb	r1, [r5, #45]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].p_filed_enhanced_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].p_filed_enhanced_flag
	ldr	r1, [r4, #456]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].b_filed_enhanced_flag, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].b_filed_enhanced_flag
	strb	r1, [r5, #46]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].b_filed_enhanced_flag, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].b_filed_enhanced_flag
.L243:
	ldrsh	r1, [r3, #2]!	@ MEM[base: _242, offset: 0B], MEM[base: _242, offset: 0B]
	cmp	r3, ip	@ ivtmp.217, D.40278
	str	r1, [r2, #4]!	@ MEM[base: _242, offset: 0B], MEM[base: _243, offset: 0B]
	bne	.L243	@,
	ldr	r1, [r4, #264]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type0, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type0
	add	r2, r5, #16640	@ ivtmp.196, pCtx,
	add	r2, r2, #216	@ ivtmp.196, ivtmp.196,
	add	r3, r5, #14464	@ ivtmp.205, pCtx,
	str	r1, [r6, #2572]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type0, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].RefPicType0
	ldr	r1, [r4, #268]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type1, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type1
	str	r1, [r6, #2576]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type1, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].RefPicType1
	ldr	r1, [r4, #272]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type2, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type2
	str	r1, [r6, #2580]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type2, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].RefPicType2
	ldr	r1, [r4, #276]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type3, MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type3
	str	r1, [r6, #2584]	@ MEM[(struct AVS_VDMCFG *)pCtx_7(D) + 16612B].ref_pic_type3, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].RefPicType3
.L244:
	ldr	r1, [r2, #4]!	@ D.40265, MEM[base: _234, offset: 0B]
	str	r1, [r3, #4]!	@ D.40265, MEM[base: _235, offset: 0B]
	cmp	r3, lr	@ ivtmp.205, ivtmp.226
	bne	.L244	@,
	ldr	r3, [r6, #3372]	@ pCtx_7(D)->CodecInfo.PicCnt, pCtx_7(D)->CodecInfo.PicCnt
	add	r1, r5, #8	@ D.40273, pCtx,
	add	r3, r3, #1	@ D.40267, pCtx_7(D)->CodecInfo.PicCnt,
	str	r3, [r6, #3372]	@ D.40267, pCtx_7(D)->CodecInfo.PicCnt
	ldr	r3, [r5]	@ D.40274, pCtx_7(D)->pstExtraData
	str	r1, [r5, #4]	@ D.40273, pCtx_7(D)->pAvsDecParam
	ldr	r2, [r3, #708]	@ D.40267, _198->stDisParams.s32Mode
	cmp	r2, #1	@ D.40267,
	beq	.L257	@,
	cmp	r2, #2	@ D.40267,
	beq	.L258	@,
.L246:
	ldr	r3, [r3, #512]	@ D.40267, _198->s32Compress_en
	mov	r0, #1	@ D.40264,
	str	r3, [r6, #2588]	@ D.40267, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].Compress_en
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L257:
	cmp	r1, #0	@ D.40273,
	beq	.L246	@,
	ldr	r1, [r6, #2668]	@ D.40269, pCtx_7(D)->CodecInfo.pCurFrm
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ _200->PicCodingType, _200->PicCodingType
	cmp	r2, #2	@ _200->PicCodingType,
	bne	.L246	@,
	mov	r7, #0	@ tmp561,
	str	r7, [r5, #4]	@ tmp561, pCtx_7(D)->pAvsDecParam
	mov	r2, r7	@, tmp561
	ldr	r0, [r4, #224]	@, pCtx_7(D)->ChanID
	ldr	r1, [r1, #4]	@, _200->FspID
	bl	FSP_SetDisplay	@
	mov	r0, r7	@ D.40264, tmp561
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L258:
	ldr	r2, [r3, #712]	@ _198->stDisParams.s32DisNums, _198->stDisParams.s32DisNums
	cmp	r1, #0	@ D.40273,
	cmpne	r2, #0	@, _198->stDisParams.s32DisNums,
	ble	.L246	@,
	ldr	r1, [r6, #2668]	@ D.40269, pCtx_7(D)->CodecInfo.pCurFrm
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ _207->PicCodingType, _207->PicCodingType
	cmp	r2, #2	@ _207->PicCodingType,
	bne	.L246	@,
	mov	r7, #0	@ tmp577,
	str	r7, [r5, #4]	@ tmp577, pCtx_7(D)->pAvsDecParam
	mov	r2, r7	@, tmp577
	ldr	r0, [r4, #224]	@, pCtx_7(D)->ChanID
	ldr	r1, [r1, #4]	@, _207->FspID
	bl	FSP_SetDisplay	@
	ldr	r2, [r5]	@ D.40274, pCtx_7(D)->pstExtraData
	mov	r0, r7	@ D.40264, tmp577
	ldr	r3, [r2, #712]	@ _213->stDisParams.s32DisNums, _213->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.40267, _213->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.40267, _213->stDisParams.s32DisNums
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L256:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.40264, pLogic
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	AVS_StartDecode, .-AVS_StartDecode
	.align	2
	.global	AVS_SetImgFormat
	.type	AVS_SetImgFormat, %function
AVS_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #12288	@ tmp238, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldrb	r3, [r5, #2723]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.progressive_sequence, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.progressive_sequence
	ldr	fp, [r5, #3052]	@ codtype, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.derived_pic_coding_type
	cmp	r3, #1	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.progressive_sequence,
	ldrb	r8, [r5, #2754]	@ zero_extendqisi2	@ D.40283, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_sdext.video_format
	moveq	r7, #0	@ D.40284,
	beq	.L260	@,
	ldrb	r3, [r5, #2784]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.progressive_frame, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.progressive_frame
	subs	r7, r3, #1	@ D.40284, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.progressive_frame,
	movne	r7, #1	@ D.40284,
.L260:
	ldrb	r3, [r5, #2721]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.aspect_ratio, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.aspect_ratio
	ldrb	r9, [r5, #2786]	@ zero_extendqisi2	@ D.40283, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.top_field_first
	sub	r3, r3, #1	@ tmp185, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.aspect_ratio,
	uxtb	r3, r3	@ D.40283, tmp185
	cmp	r3, #3	@ D.40283,
	ldrls	r2, .L271	@ tmp186,
	movhi	r10, #0	@ dar,
	ldrls	r10, [r2, r3, asl #2]	@ dar, CSWTCH.52
	add	r2, r6, #16384	@ tmp192, pCtx,
	ldr	r3, [r5, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	ldr	r0, [r2, #224]	@, pCtx_6(D)->ChanID
	ldr	r1, [r3, #4]	@, _18->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImage,
	beq	.L269	@,
	and	lr, fp, #3	@ D.40287, codtype,
	and	r2, r9, #3	@ D.40287, D.40283,
	orr	ip, lr, #3072	@ D.40287, D.40287,
	and	r8, r8, #3	@ D.40287, D.40283,
	orr	r2, ip, r2, asl #12	@ D.40287, D.40287, D.40287,
	and	ip, r10, #7	@ D.40287, dar,
	orr	r2, r2, r8, asl #5	@ D.40287, D.40287, D.40287,
	mov	r1, r10	@, dar
	orr	r3, r2, r7, asl #8	@ D.40287, D.40287, D.40284,
	orr	r3, r3, ip, asl #14	@ D.40287, D.40287, D.40287,
	str	r3, [r4, #140]	@ D.40287, pImage_21->format
	ldr	r3, [r5, #3364]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].ErrRatio, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].ErrRatio
	str	lr, [r4, #132]	@ D.40287, pImage_21->top_fld_type
	str	lr, [r4, #136]	@ D.40287, pImage_21->bottom_fld_type
	str	r3, [r4, #180]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].ErrRatio, pImage_21->error_level
	bl	SetAspectRatio	@
	ldr	r3, [r5, #2732]	@ D.40287, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.horizontal_size
	str	r3, [r4, #144]	@ D.40287, pImage_21->image_width
	ldr	r3, [r5, #2736]	@ D.40287, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.vertical_size
	str	r3, [r4, #148]	@ D.40287, pImage_21->image_height
	ldr	r2, [r6]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r2, [r2, #32]	@ _48->eCapLevel, _48->eCapLevel
	cmp	r2, #25	@ _48->eCapLevel,
	beq	.L270	@,
.L263:
	mov	r3, #6	@ tmp226,
	str	r3, [r4, #300]	@ tmp226, pImage_21->ImageDnr.video_standard
	ldrb	r1, [r5, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.picture_structure
	mov	r2, #1	@ tmp231,
	mov	r3, #8	@ tmp233,
	strb	r2, [r4, #295]	@ tmp231, pImage_21->ImageDnr.use_pic_qp_en
	cmp	r1, r2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.picture_structure,
	strb	r2, [r4, #293]	@ tmp231, pImage_21->ImageDnr.chroma_format_idc
	str	r3, [r4, #304]	@ tmp233, pImage_21->ImageDnr.QP_Y
	moveq	r2, #0	@ D.40282,
	movne	r2, #4	@ D.40282,
	str	r3, [r4, #312]	@ tmp233, pImage_21->ImageDnr.QP_V
	strb	r2, [r4, #288]	@ D.40282, pImage_21->ImageDnr.pic_structure
	str	r3, [r4, #308]	@ tmp233, pImage_21->ImageDnr.QP_U
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L270:
	ldr	r2, [r4, #172]	@ D.40287, pImage_21->image_stride
	add	r3, r3, #15	@ D.40287, D.40287,
	ldr	r0, [r4, #104]	@ D.40287, pImage_21->luma_phy_addr
	mov	r3, r3, lsr #4	@ D.40287, D.40287,
	ldr	r1, [r4, #32]	@ D.40290, pImage_21->luma_vir_addr
	mov	lr, r2, asl #4	@ D.40287, D.40287,
	add	ip, r2, r0	@ D.40285, D.40287, D.40287
	str	r0, [r4, #88]	@ D.40287, pImage_21->top_luma_phy_addr
	mul	r3, r3, lr	@ D.40287, D.40287, D.40287
	str	r0, [r4, #120]	@ D.40287, pImage_21->luma_2d_phy_addr
	str	ip, [r4, #96]	@ D.40285, pImage_21->btm_luma_phy_addr
	str	r1, [r4, #48]	@ D.40290, pImage_21->luma_2d_vir_addr
	add	r0, r3, r0	@ D.40287, D.40287, D.40287
	add	r3, r1, r3	@ D.40290, D.40290, D.40287
	add	r2, r2, r0	@ D.40285, D.40287, D.40287
	str	r3, [r4, #36]	@ D.40290, pImage_21->chrom_vir_addr
	str	r0, [r4, #108]	@ D.40287, pImage_21->chrom_phy_addr
	str	r0, [r4, #92]	@ D.40287, pImage_21->top_chrom_phy_addr
	str	r2, [r4, #100]	@ D.40285, pImage_21->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImage_21->top_chrom_phy_addr, pImage_21->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImage_21->top_chrom_phy_addr, pImage_21->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImage_21->chrom_2d_vir_addr
	b	.L263	@
.L269:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	vfmw_dprint_nothing	@
.L272:
	.align	2
.L271:
	.word	.LANCHOR0
	.fnend
	.size	AVS_SetImgFormat, .-AVS_SetImgFormat
	.align	2
	.global	AVS_GetImageBuffer
	.type	AVS_GetImageBuffer, %function
AVS_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #12288	@ tmp274, pCtx,
	mov	r7, r0	@ pCtx, pCtx
	ldr	r3, [r4, #3768]	@ pCtx_6(D)->SyntaxNew.syn_pic.derived_pic_coding_type, pCtx_6(D)->SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r3, #2	@ pCtx_6(D)->SyntaxNew.syn_pic.derived_pic_coding_type,
	beq	.L274	@,
	ldr	r5, [r4, #3096]	@ D.40296, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].CurFrameObjId
	add	r6, r0, #14848	@ tmp276, pCtx,
	add	r6, r6, #32	@ tmp276, tmp276,
	add	r2, r5, #1	@ D.40296, D.40296,
	mov	r3, r5, asl #4	@ tmp165, D.40296,
	mov	r1, r2, asr #31	@ tmp173, D.40296,
	sub	r5, r3, r5, asl #2	@ tmp166, tmp165, D.40296,
	add	r5, r5, #16	@ tmp167, tmp166,
	mov	r3, r1, lsr #30	@ tmp174, tmp173,
	add	r5, r6, r5	@ D.40297, tmp276, tmp167
	add	r2, r2, r3	@ tmp175, D.40296, tmp174
	str	r5, [r4, #2668]	@ D.40297, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	and	r2, r2, #3	@ tmp176, tmp175,
	rsb	r2, r3, r2	@ D.40296, tmp174, tmp176
	str	r2, [r4, #3096]	@ D.40296, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].CurFrameObjId
.L275:
	add	r8, r7, #16384	@ tmp275, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_NewLogicFs	@
	str	r0, [r5, #4]	@, _13->FspID
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	ldr	r1, [r3, #4]	@ D.40296, _23->FspID
	cmp	r1, #0	@ D.40296,
	blt	.L294	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r4, r0, #0	@ pLf,
	beq	.L295	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #408]	@ pLf_78->pstDecodeFs, pLf_78->pstDecodeFs
	cmp	r3, #0	@ pLf_78->pstDecodeFs,
	beq	.L280	@,
	ldr	r3, [r4, #412]	@ pLf_78->pstDispOutFs, pLf_78->pstDispOutFs
	cmp	r3, #0	@ pLf_78->pstDispOutFs,
	beq	.L280	@,
	ldr	r3, [r4, #416]	@ pLf_78->pstTfOutFs, pLf_78->pstTfOutFs
	cmp	r3, #0	@ pLf_78->pstTfOutFs,
	beq	.L280	@,
	bl	vfmw_dprint_nothing	@
.L280:
	mov	r3, #0	@ tmp272,
	mov	r0, #1	@ D.40294,
	str	r3, [r4, #188]	@ tmp272, pLf_78->stDispImg.error_level
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L274:
	add	r6, r0, #14848	@ tmp276, pCtx,
	add	r5, r6, #96	@ D.40297, tmp276,
	add	r6, r6, #32	@ tmp276, tmp276,
	str	r5, [r4, #2668]	@ D.40297, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	b	.L275	@
.L294:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	ldr	r1, [r3, #4]	@, _27->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L277	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	add	r6, r6, #4	@ D.40297, tmp276,
	ldr	r1, [r3, #4]	@, _32->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	ldr	r1, [r3, #4]	@, _36->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	ldr	r1, [r3, #4]	@, _40->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	ldr	r1, [r3, #4]	@, _44->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r5, #192]	@, pImg_30->p_usrdat
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_30->p_usrdat
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_30->p_usrdat
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_30->p_usrdat
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp239,
	str	r3, [r5, #192]	@ tmp239, pImg_30->p_usrdat
	str	r3, [r5, #196]	@ tmp239, pImg_30->p_usrdat
	str	r3, [r5, #200]	@ tmp239, pImg_30->p_usrdat
	str	r3, [r5, #204]	@ tmp239, pImg_30->p_usrdat
	str	r6, [r4, #2668]	@ D.40297, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	str	r6, [r4, #2680]	@ D.40297, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	str	r6, [r4, #2676]	@ D.40297, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	str	r6, [r4, #2672]	@ D.40297, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@, MEM[(struct FRAME_OBJ *)pCtx_6(D) + 14884B].FspID
.L277:
	add	r1, r7, #16064	@, pCtx,
	mov	r5, #0	@ tmp260,
	add	r1, r1, #24	@,,
	str	r5, [r4, #3360]	@ tmp260, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].RefNum
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.40294, tmp260
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L295:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40294, pLf
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	AVS_GetImageBuffer, .-AVS_GetImageBuffer
	.align	2
	.global	AVS_OutputOneFrame
	.type	AVS_OutputOneFrame, %function
AVS_OutputOneFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r5, r1, #16384	@ tmp125, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r1	@ pCtx, pCtx
	mov	r7, r0	@ pOutput, pOutput
	ldr	r1, [r0, #4]	@, pOutput_6(D)->FspID
	ldr	r0, [r5, #224]	@, pCtx_4(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImage,
	beq	.L303	@,
	mov	r2, #1	@,
	ldr	r1, [r7, #4]	@, pOutput_6(D)->FspID
	ldr	r0, [r5, #224]	@, pCtx_4(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r6, #16064	@, pCtx,
	ldr	r0, [r5, #224]	@ pCtx_4(D)->ChanID, pCtx_4(D)->ChanID
	mov	r2, r6	@, pCtx
	add	r3, r3, #24	@,,
	mov	r1, #6	@,
	str	r4, [sp]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.40307,
	beq	.L298	@,
	ldr	r0, [r5, #224]	@, pCtx_4(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r7, #4]	@, pOutput_6(D)->FspID
	bl	FSP_SetDisplay	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40307,
.L298:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L303:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40307, pImage
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	AVS_OutputOneFrame, .-AVS_OutputOneFrame
	.align	2
	.global	AVS_UpdateTableIdx2Dist
	.type	AVS_UpdateTableIdx2Dist, %function
AVS_UpdateTableIdx2Dist:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_9(D)->Syntax.syn_pic.picture_structure, pCodecInf_9(D)->Syntax.syn_pic.picture_structure
	cmp	r3, #1	@ pCodecInf_9(D)->Syntax.syn_pic.picture_structure,
	ldr	r3, [r0, #460]	@ D.40313, pCodecInf_9(D)->Syntax.syn_pic.derived_pic_coding_type
	beq	.L318	@,
	cmp	r3, #0	@ D.40313,
	beq	.L319	@,
	cmp	r3, #1	@ D.40313,
	bne	.L313	@,
	ldr	r3, [r0, #84]	@ D.40314, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.40314, pCodecInf,
	ldr	r1, [r0, #76]	@ pCodecInf_9(D)->pCurFrm, pCodecInf_9(D)->pCurFrm
	cmp	r3, r2	@ D.40314, D.40314
	ldrne	r2, [r3, #8]	@ _41->pic_distance, _41->pic_distance
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldreq	r2, [r0, #536]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	movne	r2, r2, asl #1	@ D.40315, _41->pic_distance,
	strne	r2, [r0, #536]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	add	r2, r2, #1	@ D.40315, D.40315,
	str	r2, [r0, #532]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r3, #8]	@ _49->pic_distance, _49->pic_distance
	str	r2, [r0, #552]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	mov	r3, r3, asl #1	@ D.40315, _49->pic_distance,
	str	r3, [r0, #528]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #548]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	add	r3, r3, #1	@ D.40315, D.40315,
	str	r3, [r0, #524]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #544]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r1, #8]	@ _59->pic_distance, _59->pic_distance
	mov	r3, r3, asl #1	@ D.40313, _59->pic_distance,
	str	r3, [r0, #540]	@ D.40313, pCodecInf_9(D)->Idx2Dist
.L309:
	mov	r0, #1	@,
	bx	lr	@
.L319:
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldr	r3, [r3, #8]	@ _35->pic_distance, _35->pic_distance
	mov	r3, r3, asl #1	@ D.40313, _35->pic_distance,
	str	r3, [r0, #540]	@ D.40313, pCodecInf_9(D)->Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L318:
	cmp	r3, #1	@ D.40313,
	beq	.L320	@,
	cmp	r3, #2	@ D.40313,
	bne	.L309	@,
	ldr	r3, [r0, #84]	@ D.40314, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.40314, pCodecInf,
	cmp	r3, r2	@ D.40314, D.40314
	ldrne	r3, [r3, #8]	@ _24->pic_distance, _24->pic_distance
	movne	r3, r3, asl #1	@ D.40313, _24->pic_distance,
	strne	r3, [r0, #524]	@ D.40313, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldr	r3, [r3, #8]	@ _29->pic_distance, _29->pic_distance
	mov	r3, r3, asl #1	@ D.40313, _29->pic_distance,
	str	r3, [r0, #532]	@ D.40313, pCodecInf_9(D)->Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L313:
	cmp	r3, #2	@ D.40313,
	bne	.L309	@,
	ldr	r3, [r0, #84]	@ D.40314, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.40314, pCodecInf,
	cmp	r3, r2	@ D.40314, D.40314
	ldrne	r2, [r3, #8]	@ _65->pic_distance, _65->pic_distance
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldreq	r2, [r0, #528]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	movne	r2, r2, asl #1	@ D.40315, _65->pic_distance,
	strne	r2, [r0, #528]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	add	r1, r2, #1	@ D.40315, D.40315,
	str	r1, [r0, #524]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r3, #8]	@ _73->pic_distance, _73->pic_distance
	str	r1, [r0, #540]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	str	r2, [r0, #544]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	mov	r3, r3, asl #1	@ D.40315, _73->pic_distance,
	str	r3, [r0, #532]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #548]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	add	r3, r3, #1	@ D.40315, D.40315,
	str	r3, [r0, #536]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #552]	@ D.40315, pCodecInf_9(D)->Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L320:
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.40314, pCodecInf,
	ldr	r1, [r0, #84]	@ D.40314, pCodecInf_9(D)->pRef
	ldr	r3, [r3, #8]	@ _12->pic_distance, _12->pic_distance
	cmp	r1, r2	@ D.40314, D.40314
	mov	r3, r3, asl #1	@ D.40313, _12->pic_distance,
	str	r3, [r0, #524]	@ D.40313, pCodecInf_9(D)->Idx2Dist
	ldrne	r3, [r1, #8]	@ _18->pic_distance, _18->pic_distance
	movne	r3, r3, asl #1	@ D.40313, _18->pic_distance,
	strne	r3, [r0, #528]	@ D.40313, pCodecInf_9(D)->Idx2Dist
	b	.L309	@
	.fnend
	.size	AVS_UpdateTableIdx2Dist, .-AVS_UpdateTableIdx2Dist
	.global	__aeabi_idiv
	.align	2
	.global	AVS_UpdateTableMvEScale
	.type	AVS_UpdateTableMvEScale, %function
AVS_UpdateTableMvEScale:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0	@ pCodecInf, pCodecInf
	ldrb	r0, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_32(D)->Syntax.syn_pic.picture_structure, pCodecInf_32(D)->Syntax.syn_pic.picture_structure
	.pad #20
	sub	sp, sp, #20	@,,
	cmp	r0, #1	@ pCodecInf_32(D)->Syntax.syn_pic.picture_structure,
	beq	.L373	@,
	ldr	r3, [r6, #460]	@ D.40440, pCodecInf_32(D)->Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ D.40440,
	moveq	r3, #512	@ tmp253,
	streq	r3, [r6, #620]	@ tmp253, pCodecInf_32(D)->MvEScale
	beq	.L358	@,
	cmp	r3, #1	@ D.40440,
	bne	.L348	@,
	ldr	r3, [r6, #76]	@ D.40439, pCodecInf_32(D)->pCurFrm
	add	fp, r6, #536	@ ivtmp.357, pCodecInf,
	add	r9, r6, #520	@ ivtmp.360, pCodecInf,
	str	r3, [sp, #12]	@ D.40439, %sfp
	add	r3, r6, #552	@ ivtmp.361, pCodecInf,
	str	r3, [sp, #4]	@ ivtmp.361, %sfp
	mov	r3, #0	@ CurFld,
	str	r3, [sp, #8]	@ CurFld, %sfp
.L337:
	ldr	r3, [sp, #12]	@ D.40439, %sfp
	mov	r7, r9	@ ivtmp.341, ivtmp.360
	ldr	r8, [sp, #4]	@ ivtmp.349, %sfp
	ldr	r2, [r3, #8]	@ _211->pic_distance, _211->pic_distance
	ldr	r3, [sp, #8]	@ CurFld, %sfp
	add	r6, r3, r2, lsl #1	@ CurDistIdx, CurFld, _211->pic_distance,
.L333:
	ldr	r5, [r7, #4]!	@ MEM[base: _66, offset: 0B], MEM[base: _66, offset: 0B]
	mov	r10, r8	@ ivtmp.328, ivtmp.349
	mov	r4, r9	@ ivtmp.319, ivtmp.360
	rsb	r5, r5, r6	@ D.40441, MEM[base: _66, offset: 0B], CurDistIdx
	ubfx	r5, r5, #0, #9	@ D.40446, D.40441,,
.L335:
	ldr	r1, [r4, #4]!	@ MEM[base: _208, offset: 0B], MEM[base: _208, offset: 0B]
	mov	r0, #512	@,
	mov	lr, #1	@ D.40441,
	rsb	r1, r1, r6	@ D.40441, MEM[base: _208, offset: 0B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.40441,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L334	@,
	bl	__aeabi_idiv	@
	mov	lr, r0	@ D.40441,
.L334:
	mul	lr, lr, r5	@ D.40441, D.40441, D.40446
	cmp	fp, r4	@ ivtmp.357, ivtmp.319
	str	lr, [r10, #4]!	@ D.40441, MEM[base: _206, offset: 0B]
	bne	.L335	@,
	cmp	fp, r7	@ ivtmp.357, ivtmp.341
	add	r8, r8, #16	@ ivtmp.349, ivtmp.349,
	bne	.L333	@,
	ldr	r3, [sp, #8]	@ CurFld, %sfp
	add	fp, fp, #16	@ ivtmp.357, ivtmp.357,
	add	r9, r9, #16	@ ivtmp.360, ivtmp.360,
	add	r3, r3, #1	@ CurFld, CurFld,
	str	r3, [sp, #8]	@ CurFld, %sfp
	cmp	r3, #2	@ CurFld,
	ldr	r3, [sp, #4]	@ ivtmp.361, %sfp
	add	r3, r3, #64	@ ivtmp.361, ivtmp.361,
	str	r3, [sp, #4]	@ ivtmp.361, %sfp
	bne	.L337	@,
.L358:
	mov	r0, #1	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L373:
	ldr	r2, [r6, #76]	@ pCodecInf_32(D)->pCurFrm, pCodecInf_32(D)->pCurFrm
	ldr	r3, [r6, #460]	@ D.40440, pCodecInf_32(D)->Syntax.syn_pic.derived_pic_coding_type
	ldr	r4, [r2, #8]	@ _34->pic_distance, _34->pic_distance
	cmp	r3, #1	@ D.40440,
	addeq	r9, r6, #520	@ ivtmp.250, pCodecInf,
	addeq	r7, r6, #32	@ D.40445, pCodecInf,
	moveq	r8, r6	@ ivtmp.260, pCodecInf
	mov	r4, r4, asl #1	@ CurDistIdx, _34->pic_distance,
	beq	.L324	@,
	cmp	r3, #2	@ D.40440,
	bne	.L358	@,
	ldr	r3, [r6, #524]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	rsb	r3, r3, r4	@ D.40441, pCodecInf_32(D)->Idx2Dist, CurDistIdx
	ubfx	r5, r3, #0, #9	@ NeiBlkDist, D.40441,,
	cmp	r5, #0	@ NeiBlkDist,
	beq	.L330	@,
	mov	r1, r5	@, NeiBlkDist
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L330:
	mul	r3, r0, r5	@ D.40441, D.40441, NeiBlkDist
	ldr	r2, [r6, #532]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	rsb	r4, r4, r2	@ D.40441, CurDistIdx, pCodecInf_32(D)->Idx2Dist
	ubfx	r4, r4, #0, #9	@ NeiBlkDist, D.40441,,
	cmp	r4, #0	@ NeiBlkDist,
	str	r3, [r6, #556]	@ D.40441, pCodecInf_32(D)->MvEScale
	moveq	r0, #1	@ D.40441,
	beq	.L331	@,
	mov	r1, r4	@, NeiBlkDist
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L331:
	mul	r4, r0, r4	@ D.40441, D.40441, NeiBlkDist
	mov	r0, #1	@,
	str	r4, [r6, #572]	@ D.40441, pCodecInf_32(D)->MvEScale
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L324:
	ldr	r1, [r6, #524]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	mov	r0, #512	@,
	ldr	r5, [r9, #4]!	@ MEM[base: _114, offset: 0B], MEM[base: _114, offset: 0B]
	mov	r3, #1	@ D.40441,
	rsb	r1, r1, r4	@ D.40441, pCodecInf_32(D)->Idx2Dist, CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.40441,,
	rsb	r5, r5, r4	@ D.40441, MEM[base: _114, offset: 0B], CurDistIdx
	cmp	r1, #0	@ NeiBlkDist,
	ubfx	r5, r5, #0, #9	@ D.40446, D.40441,,
	beq	.L326	@,
	bl	__aeabi_idiv	@
	mov	r3, r0	@ D.40441,
.L326:
	mul	r3, r3, r5	@ D.40441, D.40441, D.40446
	mov	r0, #1	@ D.40441,
	str	r3, [r8, #556]	@ D.40441, MEM[base: _188, offset: 556B]
	ldr	r1, [r6, #528]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	rsb	r1, r1, r4	@ D.40441, pCodecInf_32(D)->Idx2Dist, CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.40441,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L327	@,
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L327:
	mul	r0, r0, r5	@ D.40441, D.40441, D.40446
	add	r8, r8, #16	@ ivtmp.260, ivtmp.260,
	str	r0, [r8, #544]	@ D.40441, MEM[base: _188, offset: 560B]
	cmp	r8, r7	@ ivtmp.260, D.40445
	bne	.L324	@,
	b	.L358	@
.L348:
	cmp	r3, #2	@ D.40440,
	bne	.L358	@,
	ldr	r3, [r6, #76]	@ D.40439, pCodecInf_32(D)->pCurFrm
	mov	r7, r6	@ ivtmp.305, pCodecInf
	add	r6, r6, #16	@ ivtmp.303, pCodecInf,
	add	r10, r7, #520	@ ivtmp.311, ivtmp.305,
	mov	r8, #0	@ CurFld,
	str	r3, [sp, #4]	@ D.40439, %sfp
.L347:
	ldr	r3, [sp, #4]	@ D.40439, %sfp
	mov	fp, r7	@ ivtmp.296, ivtmp.305
	mov	r9, r10	@ ivtmp.286, ivtmp.311
	ldr	r4, [r3, #8]	@ _231->pic_distance, _231->pic_distance
	add	r4, r8, r4, lsl #1	@ CurDistIdx, CurFld, _231->pic_distance,
.L338:
	ldr	r1, [r10, #4]	@ MEM[base: _156, offset: 4B], MEM[base: _156, offset: 4B]
	mov	r0, #512	@,
	ldr	r5, [r9, #4]!	@ MEM[base: _185, offset: 0B], MEM[base: _185, offset: 0B]
	mov	r2, #1	@ D.40441,
	rsb	r1, r1, r4	@ D.40441, MEM[base: _156, offset: 4B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.40441,,
	rsb	r5, r5, r4	@ D.40441, MEM[base: _185, offset: 0B], CurDistIdx
	cmp	r1, #0	@ NeiBlkDist,
	ubfx	r5, r5, #0, #9	@ D.40446, D.40441,,
	beq	.L340	@,
	bl	__aeabi_idiv	@
	mov	r2, r0	@ D.40441,
.L340:
	mul	r2, r2, r5	@ D.40441, D.40441, D.40446
	mov	r0, #1	@ D.40441,
	str	r2, [fp, #556]	@ D.40441, MEM[base: _164, offset: 556B]
	ldr	r1, [r10, #8]	@ MEM[base: _156, offset: 8B], MEM[base: _156, offset: 8B]
	rsb	r1, r1, r4	@ D.40441, MEM[base: _156, offset: 8B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.40441,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L341	@,
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L341:
	mul	r0, r0, r5	@ D.40441, D.40441, D.40446
	add	fp, fp, #8	@ ivtmp.296, ivtmp.296,
	str	r0, [fp, #552]	@ D.40441, MEM[base: _164, offset: 560B]
	cmp	fp, r6	@ ivtmp.296, ivtmp.303
	bne	.L338	@,
	add	r9, r10, #8	@ ivtmp.268, ivtmp.311,
	mov	fp, r7	@ ivtmp.278, ivtmp.305
.L339:
	ldr	r1, [r10, #12]	@ MEM[base: _156, offset: 12B], MEM[base: _156, offset: 12B]
	mov	r0, #512	@,
	ldr	r5, [r9, #4]!	@ MEM[base: _202, offset: 0B], MEM[base: _202, offset: 0B]
	mov	r2, #1	@ D.40441,
	rsb	r1, r4, r1	@ D.40441, CurDistIdx, MEM[base: _156, offset: 12B]
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.40441,,
	rsb	r5, r4, r5	@ D.40441, CurDistIdx, MEM[base: _202, offset: 0B]
	cmp	r1, #0	@ NeiBlkDist,
	ubfx	r5, r5, #0, #9	@ D.40446, D.40441,,
	beq	.L344	@,
	bl	__aeabi_idiv	@
	mov	r2, r0	@ D.40441,
.L344:
	mul	r2, r2, r5	@ D.40441, D.40441, D.40446
	mov	r0, #1	@ D.40441,
	str	r2, [fp, #572]	@ D.40441, MEM[base: _174, offset: 572B]
	ldr	r1, [r10, #16]	@ MEM[base: _156, offset: 16B], MEM[base: _156, offset: 16B]
	rsb	r1, r4, r1	@ D.40441, CurDistIdx, MEM[base: _156, offset: 16B]
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.40441,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L345	@,
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L345:
	mul	r0, r0, r5	@ D.40441, D.40441, D.40446
	add	fp, fp, #8	@ ivtmp.278, ivtmp.278,
	str	r0, [fp, #568]	@ D.40441, MEM[base: _174, offset: 576B]
	cmp	r6, fp	@ ivtmp.303, ivtmp.278
	bne	.L339	@,
	add	r8, r8, #1	@ CurFld, CurFld,
	add	r6, r6, #32	@ ivtmp.303, ivtmp.303,
	cmp	r8, #2	@ CurFld,
	add	r7, r7, #32	@ ivtmp.305, ivtmp.305,
	add	r10, r10, #16	@ ivtmp.311, ivtmp.311,
	bne	.L347	@,
	mov	r0, #1	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	AVS_UpdateTableMvEScale, .-AVS_UpdateTableMvEScale
	.align	2
	.global	AVS_UpdateTableDirectScale
	.type	AVS_UpdateTableDirectScale, %function
AVS_UpdateTableDirectScale:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0	@ pCodecInf, pCodecInf
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_18(D)->Syntax.syn_pic.picture_structure, pCodecInf_18(D)->Syntax.syn_pic.picture_structure
	cmp	r3, #1	@ pCodecInf_18(D)->Syntax.syn_pic.picture_structure,
	beq	.L398	@,
	ldr	fp, [r0, #80]	@ D.40483, pCodecInf_18(D)->pRef
	mov	r5, #1	@ ivtmp.394,
	add	r9, r0, #4	@ D.40483, pCodecInf,
	add	r7, r0, #684	@ ivtmp.395, pCodecInf,
	mov	r4, #0	@ ColRefDistIdx,
	mov	r8, #32	@ tmp265,
	ldr	r10, [fp, #8]	@ _35->pic_distance, _35->pic_distance
	mov	r10, r10, asl r5	@ ColDistIdx, _35->pic_distance,
.L381:
	sub	r3, r5, #1	@ D.40482, ivtmp.394,
	mov	r0, #16384	@,
	and	r2, r5, #1	@ D.40487, ivtmp.394,
	add	r3, r3, r3, lsr #31	@ tmp208, D.40482, D.40482,
	mov	r3, r3, asr #1	@ D.40488, tmp208,
	add	r3, r3, #21	@ tmp210, D.40488,
	ldr	r3, [r6, r3, asl #2]	@ D.40483, pCodecInf_18(D)->pRef
	cmp	r9, r3	@ D.40483, D.40483
	beq	.L379	@,
	ldr	r4, [r3, #8]	@ _42->pic_distance, _42->pic_distance
	add	r4, r2, r4, lsl #1	@ ColRefDistIdx, D.40487, _42->pic_distance,
	rsb	r1, r4, r10	@ D.40488, ColRefDistIdx, ColDistIdx
	ubfx	r1, r1, #0, #9	@ ColBlkDist, D.40488,,
	cmp	r1, #0	@ ColBlkDist,
	streq	r8, [r7]	@ tmp265, MEM[base: _139, offset: 0B]
	beq	.L379	@,
	bl	__aeabi_idiv	@
	str	r0, [r7]	@, MEM[base: _140, offset: 0B]
.L379:
	add	r5, r5, #1	@ ivtmp.394, ivtmp.394,
	add	r7, r7, #4	@ ivtmp.395, ivtmp.395,
	cmp	r5, #5	@ ivtmp.394,
	bne	.L381	@,
	ldr	fp, [fp, #8]	@ _35->pic_distance, _35->pic_distance
	add	r10, r6, #700	@ ivtmp.386, pCodecInf,
	ldr	r8, [r6, #800]	@ D.40487, pCodecInf_18(D)->b_filed_enhanced_flag
	mov	r5, #1	@ ivtmp.385,
	mov	r7, #0	@ ivtmp.381,
	mov	fp, fp, asl #1	@ ColDistIdx, _35->pic_distance,
	cmp	r8, #0	@ D.40487,
	addeq	fp, fp, #1	@ ColDistIdx, D.40487,
.L391:
	cmp	r8, #0	@ D.40487,
	beq	.L384	@,
	add	r3, r7, r7, lsr #31	@ tmp224, ivtmp.381, ivtmp.381,
	mov	r3, r3, asr #1	@ D.40488, tmp224,
	add	r3, r3, #21	@ tmp226, D.40488,
	ldr	r3, [r6, r3, asl #2]	@ D.40483, pCodecInf_18(D)->pRef
	cmp	r9, r3	@ D.40483, D.40483
	beq	.L385	@,
	ldr	r4, [r3, #8]	@ _68->pic_distance, _68->pic_distance
	and	r3, r5, #1	@ D.40487, ivtmp.385,
	add	r4, r3, r4, lsl #1	@ ColRefDistIdx, D.40487, _68->pic_distance,
	rsb	r2, r4, fp	@ D.40488, ColRefDistIdx, ColDistIdx
	add	r2, r2, #512	@ D.40488, D.40488,
	mov	r1, r2, asr #31	@ tmp232, D.40488,
	mov	r1, r1, lsr #23	@ tmp233, tmp232,
	add	r2, r2, r1	@ tmp234, D.40488, tmp233
	ubfx	r3, r2, #0, #9	@ tmp235, tmp234,,
	subs	r1, r3, r1	@ tmp236, tmp235, tmp233
	moveq	r3, #32	@ tmp267,
	streq	r3, [r10, #-16]	@ tmp267, MEM[base: _113, offset: 4294967280B]
	beq	.L387	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r10, #-16]	@ D.40488, MEM[base: _119, offset: 4294967280B]
.L388:
	str	r0, [r10]	@ D.40488, MEM[base: _120, offset: 0B]
.L390:
	add	r5, r5, #1	@ ivtmp.385, ivtmp.385,
	add	r7, r7, #1	@ ivtmp.381, ivtmp.381,
	cmp	r5, #5	@ ivtmp.385,
	add	r10, r10, #4	@ ivtmp.386, ivtmp.386,
	bne	.L391	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L384:
	add	r3, r5, r5, lsr #31	@ tmp243, ivtmp.385, ivtmp.385,
	mov	r3, r3, asr #1	@ D.40488, tmp243,
	add	r3, r3, #20	@ tmp245, D.40488,
	ldr	r3, [r6, r3, asl #2]	@ D.40483, pCodecInf_18(D)->pRef
	cmp	r9, r3	@ D.40483, D.40483
	ldrne	r4, [r3, #8]	@ _86->pic_distance, _86->pic_distance
	andne	r3, r7, #1	@ D.40487, ivtmp.381,
	addne	r4, r3, r4, lsl #1	@ ColRefDistIdx, D.40487, _86->pic_distance,
.L385:
	rsb	r2, r4, fp	@ D.40488, ColRefDistIdx, ColDistIdx
	add	r2, r2, #512	@ D.40488, D.40488,
	mov	r1, r2, asr #31	@ tmp251, D.40488,
	mov	r1, r1, lsr #23	@ tmp252, tmp251,
	add	r2, r2, r1	@ tmp253, D.40488, tmp252
	ubfx	r3, r2, #0, #9	@ tmp254, tmp253,,
	subs	r1, r3, r1	@ tmp255, tmp254, tmp252
	beq	.L387	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	b	.L388	@
.L387:
	mov	r3, #32	@ tmp268,
	str	r3, [r10]	@ tmp268, MEM[base: _123, offset: 0B]
	b	.L390	@
.L398:
	ldr	r3, [r0, #80]	@ pCodecInf_18(D)->pRef, pCodecInf_18(D)->pRef
	add	r7, r0, #4	@ D.40483, pCodecInf,
	add	r4, r0, #80	@ ivtmp.372, pCodecInf,
	add	r6, r0, #88	@ D.40482, pCodecInf,
	mov	r8, #32	@ tmp261,
	ldr	r5, [r3, #8]	@ _20->pic_distance, _20->pic_distance
	mov	r5, r5, asl #1	@ ColDistIdx, _20->pic_distance,
.L378:
	ldr	r3, [r4, #4]!	@ D.40483, MEM[base: _65, offset: 0B]
	mov	r0, #16384	@,
	cmp	r3, r7	@ D.40483, D.40483
	beq	.L376	@,
	ldr	r1, [r3, #8]	@ _26->pic_distance, _26->pic_distance
	sub	r1, r5, r1, asl #1	@ D.40488, ColDistIdx, _26->pic_distance,
	ubfx	r1, r1, #0, #9	@ ColBlkDist, D.40488,,
	cmp	r1, #0	@ ColBlkDist,
	streq	r8, [r4, #600]	@ tmp261, MEM[base: _65, offset: 600B]
	beq	.L376	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #600]	@, MEM[base: _65, offset: 600B]
.L376:
	cmp	r4, r6	@ ivtmp.372, D.40482
	bne	.L378	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	AVS_UpdateTableDirectScale, .-AVS_UpdateTableDirectScale
	.align	2
	.global	AVS_UpdateTableSymScale
	.type	AVS_UpdateTableSymScale, %function
AVS_UpdateTableSymScale:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #84]	@ D.40545, pCodecInf_5(D)->pRef
	add	r2, r0, #4	@ D.40545, pCodecInf,
	cmp	r3, r2	@ D.40545, D.40545
	beq	.L406	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pCodecInf, pCodecInf
	ldrb	r0, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_5(D)->Syntax.syn_pic.picture_structure, pCodecInf_5(D)->Syntax.syn_pic.picture_structure
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r2, [r5, #76]	@ pCodecInf_5(D)->pCurFrm, pCodecInf_5(D)->pCurFrm
	cmp	r0, #1	@ pCodecInf_5(D)->Syntax.syn_pic.picture_structure,
	beq	.L401	@,
	add	r3, r5, #520	@ ivtmp.436, pCodecInf,
	add	r5, r5, #712	@ ivtmp.440, pCodecInf,
	mov	fp, #0	@ CurFld,
.L404:
	ldr	r6, [r2, #8]	@ _93->pic_distance, _93->pic_distance
	add	r10, r3, #20	@ ivtmp.415, ivtmp.436,
	mov	r9, r5	@ ivtmp.424, ivtmp.440
	mov	r8, r3	@ ivtmp.406, ivtmp.436
	mov	r7, #2	@ D.40549,
	add	r6, fp, r6, lsl #1	@ CurDistIdx, CurFld, _93->pic_distance,
.L403:
	ldr	r1, [r8, #4]!	@ MEM[base: _72, offset: 0B], MEM[base: _72, offset: 0B]
	mov	r0, #512	@,
	ldr	r4, [r10, #-4]!	@ MEM[base: _71, offset: 0B], MEM[base: _71, offset: 0B]
	mov	ip, #1	@ D.40548,
	rsb	r1, r1, r6	@ D.40548, MEM[base: _72, offset: 0B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ BlkDistFw, D.40548,,
	rsb	r4, r6, r4	@ D.40548, CurDistIdx, MEM[base: _71, offset: 0B]
	cmp	r1, #0	@ BlkDistFw,
	ubfx	r4, r4, #0, #9	@ BlkDistBw, D.40548,,
	beq	.L402	@,
	str	r2, [sp, #4]	@ D.40545, %sfp
	str	r3, [sp]	@ ivtmp.436, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp]	@ ivtmp.436, %sfp
	mov	ip, r0	@ D.40548,
	ldr	r2, [sp, #4]	@ D.40545, %sfp
.L402:
	mul	r4, ip, r4	@ D.40548, D.40548, BlkDistBw
	subs	r7, r7, #1	@ D.40549, D.40549,
	str	r4, [r9, #4]!	@ D.40548, MEM[base: _70, offset: 0B]
	bne	.L403	@,
	add	fp, fp, #1	@ CurFld, CurFld,
	add	r3, r3, #16	@ ivtmp.436, ivtmp.436,
	cmp	fp, #2	@ CurFld,
	add	r5, r5, #8	@ ivtmp.440, ivtmp.440,
	bne	.L404	@,
	mov	r0, #1	@ D.40544,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L401:
	ldr	r1, [r3, #8]	@ _8->pic_distance, _8->pic_distance
	ldr	r2, [r2, #8]	@ _10->pic_distance, _10->pic_distance
	ldr	r3, [r5, #80]	@ pCodecInf_5(D)->pRef, pCodecInf_5(D)->pRef
	ldr	r4, [r3, #8]	@ _19->pic_distance, _19->pic_distance
	mov	r3, r2, asl #1	@ CurDistIdx, _10->pic_distance,
	sub	r1, r3, r1, asl #1	@ D.40548, CurDistIdx, _8->pic_distance,
	ubfx	r1, r1, #0, #9	@ BlkDistFw, D.40548,,
	cmp	r1, #0	@ BlkDistFw,
	rsb	r3, r3, r4, lsl #1	@ D.40548, CurDistIdx, _19->pic_distance,
	ubfx	r4, r3, #0, #9	@ BlkDistBw, D.40548,,
	bne	.L413	@,
.L405:
	mul	r3, r0, r4	@ D.40548, D.40548, BlkDistBw
	mov	r0, #1	@ D.40544,
	str	r3, [r5, #716]	@ D.40548, pCodecInf_5(D)->SymScale
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L413:
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
	b	.L405	@
.L406:
	mov	r0, #0	@ D.40544,
	bx	lr	@
	.fnend
	.size	AVS_UpdateTableSymScale, .-AVS_UpdateTableSymScale
	.align	2
	.global	AVS_UpdateTabBBlkDist
	.type	AVS_UpdateTabBBlkDist, %function
AVS_UpdateTabBBlkDist:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #84]	@ D.40556, pCodecInf_8(D)->pRef
	add	r1, r0, #4	@ D.40556, pCodecInf,
	mov	r3, r0	@ pCodecInf, pCodecInf
	cmp	r2, r1	@ D.40556, D.40556
	beq	.L417	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r0, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_8(D)->Syntax.syn_pic.picture_structure, pCodecInf_8(D)->Syntax.syn_pic.picture_structure
	cmp	r0, #1	@ pCodecInf_8(D)->Syntax.syn_pic.picture_structure,
	beq	.L420	@,
	ldr	r5, [r3, #76]	@ D.40556, pCodecInf_8(D)->pCurFrm
	mov	r0, #1	@ D.40555,
	ldr	r1, [r3, #536]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 536B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 536B]
	ldr	r6, [r3, #524]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 524B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 524B]
	ldr	r2, [r5, #8]	@ _80->pic_distance, _80->pic_distance
	ldr	lr, [r3, #532]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 532B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 532B]
	ldr	ip, [r3, #528]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 528B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 528B]
	mov	r2, r2, asl r0	@ CurDistIdx, _80->pic_distance,
	ldr	r4, [r3, #540]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 540B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 540B]
	rsb	r6, r6, r2	@ D.40554, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 524B], CurDistIdx
	rsb	ip, ip, r2	@ D.40554, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 528B], CurDistIdx
	rsb	lr, r2, lr	@ D.40554, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 532B]
	rsb	r2, r2, r1	@ D.40554, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 536B]
	ubfx	lr, lr, #0, #9	@ BlkDistBw, D.40554,,
	ubfx	r1, r6, #0, #9	@ BlkDistFw, D.40554,,
	str	lr, [r3, #740]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 740B]
	ubfx	r2, r2, #0, #9	@ BlkDistBw, D.40554,,
	str	r1, [r3, #732]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 732B]
	ubfx	r1, ip, #0, #9	@ BlkDistFw, D.40554,,
	str	r2, [r3, #744]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 744B]
	str	r1, [r3, #736]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 736B]
	ldr	r2, [r5, #8]	@ _80->pic_distance, _80->pic_distance
	ldr	r1, [r3, #552]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 552B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 552B]
	ldr	lr, [r3, #548]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 548B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 548B]
	ldr	ip, [r3, #544]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 544B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 544B]
	mov	r2, r2, asl r0	@ D.40558, _80->pic_distance,
	add	r2, r2, r0	@ CurDistIdx, D.40558,
	rsb	r4, r4, r2	@ D.40554, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 540B], CurDistIdx
	rsb	ip, ip, r2	@ D.40554, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 544B], CurDistIdx
	rsb	lr, r2, lr	@ D.40554, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 548B]
	rsb	r2, r2, r1	@ D.40554, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 552B]
	ubfx	lr, lr, #0, #9	@ BlkDistBw, D.40554,,
	ubfx	r1, r4, #0, #9	@ BlkDistFw, D.40554,,
	ubfx	r2, r2, #0, #9	@ BlkDistBw, D.40554,,
	str	r1, [r3, #748]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 748B]
	str	lr, [r3, #756]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 756B]
	ubfx	r1, ip, #0, #9	@ BlkDistFw, D.40554,,
	str	r2, [r3, #760]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 760B]
	str	r1, [r3, #752]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 752B]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L420:
	ldr	r1, [r3, #76]	@ pCodecInf_8(D)->pCurFrm, pCodecInf_8(D)->pCurFrm
	ldr	lr, [r3, #80]	@ pCodecInf_8(D)->pRef, pCodecInf_8(D)->pRef
	ldr	ip, [r2, #8]	@ _11->pic_distance, _11->pic_distance
	ldr	r1, [r1, #8]	@ _13->pic_distance, _13->pic_distance
	ldr	lr, [lr, #8]	@ _22->pic_distance, _22->pic_distance
	mov	r2, r1, asl #1	@ CurDistIdx, _13->pic_distance,
	sub	r1, r2, ip, asl #1	@ D.40554, CurDistIdx, _11->pic_distance,
	rsb	r2, r2, lr, lsl #1	@ D.40554, CurDistIdx, _22->pic_distance,
	ubfx	r1, r1, #0, #9	@ BlkDistFw, D.40554,,
	ubfx	r2, r2, #0, #9	@ BlkDistBw, D.40554,,
	str	r1, [r3, #732]	@ BlkDistFw, pCodecInf_8(D)->BBlkDist
	str	r2, [r3, #740]	@ BlkDistBw, pCodecInf_8(D)->BBlkDist
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L417:
	mov	r0, #0	@ D.40555,
	bx	lr	@
	.fnend
	.size	AVS_UpdateTabBBlkDist, .-AVS_UpdateTabBBlkDist
	.align	2
	.global	AVS_UpdatePmvTable
	.type	AVS_UpdatePmvTable, %function
AVS_UpdatePmvTable:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pCodecInf, pCodecInf
	ldr	r4, [r0, #460]	@ D.40568, pCodecInf_4(D)->Syntax.syn_pic.derived_pic_coding_type
	cmp	r4, #1	@ D.40568,
	beq	.L431	@,
	bcc	.L424	@,
	cmp	r4, #2	@ D.40568,
	bne	.L433	@,
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableDirectScale	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTabBBlkDist	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableSymScale	@
	mov	r0, #1	@ D.40567,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L433:
	mov	r0, #0	@ D.40567,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L424:
	ldrb	r4, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_4(D)->Syntax.syn_pic.picture_structure, pCodecInf_4(D)->Syntax.syn_pic.picture_structure
	cmp	r4, #1	@ pCodecInf_4(D)->Syntax.syn_pic.picture_structure,
	beq	.L430	@,
.L431:
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
.L430:
	mov	r0, #1	@ D.40567,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVS_UpdatePmvTable, .-AVS_UpdatePmvTable
	.align	2
	.global	AVS_VerifyMemPara
	.type	AVS_VerifyMemPara, %function
AVS_VerifyMemPara:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	AVS_VerifyMemPara, .-AVS_VerifyMemPara
	.align	2
	.global	AVSDEC_Init
	.type	AVSDEC_Init, %function
AVSDEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #16384	@ tmp121, pCtx,
	add	r7, r0, #16064	@ D.40576, pCtx,
	mov	r9, r1	@ pstExtraData, pstExtraData
	ldr	r5, [r6, #48]	@ D.40575, pCtx_4(D)->ImageQue.ResetMagicWord
	add	r7, r7, #24	@ D.40576, D.40576,
	movw	r1, #17144	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	mov	r0, r7	@, D.40576
	str	r5, [r6, #48]	@ D.40575, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r8, #1	@ tmp127,
	bl	ResetVoQueue	@
	str	r9, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r0, r4	@, pCtx
	str	r8, [r6, #752]	@ tmp127, pCtx_4(D)->DSDNeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	add	r5, r4, #14848	@ __p, pCtx,
	add	r9, r4, #15680	@ pBs, pCtx,
	add	r5, r5, #32	@ __p, __p,
	add	r9, r9, #8	@ pBs, pBs,
	cmn	r0, #1	@ D.40577,
	str	r0, [r6, #224]	@ D.40577, pCtx_4(D)->ChanID
	beq	.L439	@,
	add	r4, r4, #12288	@ tmp133, pCtx,
	mov	r0, r5	@, __p
	mov	r1, #808	@,
	add	r5, r5, #4	@ D.40578, __p,
	bl	__memzero	@
	mov	r3, #1024	@ tmp136,
	mov	r0, r8	@ D.40574, tmp127
	str	r9, [r4, #3084]	@ pBs, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pBs
	str	r7, [r4, #3112]	@ D.40576, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pstImgQue
	str	r5, [r4, #2668]	@ D.40578, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pCurFrm
	str	r5, [r4, #2680]	@ D.40578, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pRef
	str	r5, [r4, #2676]	@ D.40578, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pRef
	str	r5, [r4, #2672]	@ D.40578, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pRef
	str	r3, [r4, #3108]	@ tmp136, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].DDR_Stride
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L439:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.40574,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	AVSDEC_Init, .-AVSDEC_Init
	.align	2
	.global	AVSDEC_RecycleImage
	.type	AVSDEC_RecycleImage, %function
AVSDEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pCtx
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #16384	@ tmp123, pCtx,
	mov	r5, r1	@ img_id, img_id
	mov	r2, #0	@,
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, img_id
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L443	@,
	ldr	r1, [r5, #192]	@, pImg_11->p_usrdat
	mov	r6, #0	@ tmp132,
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp132, pImg_11->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_11->p_usrdat
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp132, pImg_11->p_usrdat
	mov	r0, #1	@ D.40581,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L443:
	mov	r0, #1	@ D.40581,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVSDEC_RecycleImage, .-AVSDEC_RecycleImage
	.align	2
	.global	AVS_GetStreamInf
	.type	AVS_GetStreamInf, %function
AVS_GetStreamInf:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #12288	@ tmp1116, pCtx,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r10, r0	@ pCtx, pCtx
	ldr	r2, [r4, #2708]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged
	ldrb	r3, [r4, #2720]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.sample_precision, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.sample_precision
	cmp	r2, #1	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged,
	str	r3, [r4, #3388]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.sample_precision, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].sample_precision
	beq	.L447	@,
	ldr	r3, [r0]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _42->s32DSDWaitFlag, _42->s32DSDWaitFlag
	cmp	r3, #1	@ _42->s32DSDWaitFlag,
	beq	.L447	@,
.L448:
	ldrb	r1, [r4, #2719]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.chroma_format, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.chroma_format
	mov	r0, r10	@, pCtx
	ldr	r3, [r4, #2668]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldrb	r2, [r4, #2785]	@ zero_extendqisi2	@ D.40706, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	str	r1, [r4, #3384]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.chroma_format, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].chroma_format
	strb	r2, [r3]	@ D.40706, _170->PicStruct
	bl	AVS_GetImageBuffer	@
	cmp	r0, #0	@,
	beq	.L451	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	add	r5, r10, #16384	@ tmp1115, pCtx,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _177->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L451	@,
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	mvn	r8, #0	@ tmp699,
	mvn	r9, #0	@,
	ldrd	r6, [r3, #56]	@ D.40714, pCtx_35(D)->pstExtraData,
	strd	r6, [r0, #8]	@ D.40714, pImage,
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldrd	r6, [r3, #72]	@ D.40714, pCtx_35(D)->pstExtraData,
	strd	r6, [r0, #16]	@ D.40714, pImage,
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldrd	r2, [r3, #88]	@ D.40714, pCtx_35(D)->pstExtraData,
	strd	r2, [r0, #24]	@ D.40714, pImage,
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #104]	@ D.40707, _191->DispEnableFlag
	str	r3, [r0, #68]	@ D.40707, pImage_180->DispEnableFlag
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #108]	@ D.40707, _194->DispFrameDistance
	str	r3, [r0, #72]	@ D.40707, pImage_180->DispFrameDistance
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #112]	@ D.40707, _197->DistanceBeforeFirstFrame
	str	r3, [r0, #76]	@ D.40707, pImage_180->DistanceBeforeFirstFrame
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #128]	@ D.40707, _200->GopNum
	str	r3, [r0, #80]	@ D.40707, pImage_180->GopNum
	ldrb	r3, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	clz	r3, r3	@ D.40715, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	mov	r3, r3, lsr #5	@ D.40715, D.40715,
	str	r3, [r0, #128]	@ D.40715, pImage_180->is_fld_save
	ldr	r3, [r10]	@ D.40708, pCtx_35(D)->pstExtraData
	strd	r8, [r3, #56]	@ tmp699, D.40708,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2668]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r2, [r4, #2816]	@ D.40707, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_distance
	str	r2, [r3, #8]	@ D.40707, _210->pic_distance
	ldr	r3, [r4, #2668]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldrb	r2, [r4, #2785]	@ zero_extendqisi2	@ D.40706, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	strb	r2, [r3]	@ D.40706, _213->PicStruct
	ldr	r3, [r4, #2668]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r2, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	strb	r2, [r3, #1]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, _216->PicCodingType
	ldrb	r2, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	ldr	r3, [r4, #2668]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	cmp	r2, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure,
	ldrneb	r2, [r4, #2786]	@ zero_extendqisi2	@ D.40703, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.top_field_first
	moveq	r2, #1	@ D.40703,
	strb	r2, [r3, #2]	@ D.40703, _220->TopFldFirst
	ldrb	r3, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	cmp	r3, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure,
	bne	.L566	@,
	ldr	r7, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	cmp	r7, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type,
	beq	.L563	@,
.L566:
	add	r6, r10, #14848	@ pCodecInf, pCtx,
	add	r6, r6, #32	@ pCodecInf, pCodecInf,
.L472:
	ldr	r3, [r4, #3048]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag
	mov	r0, r6	@, pCodecInf
	mov	r6, #6	@ tmp792,
	str	r3, [r4, #3392]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].b_filed_enhanced_flag
	bl	AVS_UpdatePmvTable	@
	ldr	lr, [r4, #2688]	@ D.40705, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbWidth
	ldr	ip, [r4, #2692]	@ D.40705, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbHeight
	mov	r2, #0	@ tmp777,
	mov	r3, #1	@ tmp780,
	str	r2, [r5, #232]	@ tmp777, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].mv_output_en
	str	r3, [r5, #236]	@ tmp780, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].load_qmatrix_flag
	add	r2, r10, #16896	@ ivtmp.539, pCtx,
	mul	r1, ip, lr	@ D.40705, D.40705, D.40705
	add	r3, r10, #15168	@ ivtmp.530, pCtx,
	add	r0, r10, #15296	@ D.40719, pCtx,
	add	r3, r3, #26	@ ivtmp.530, ivtmp.530,
	add	r2, r2, #94	@ ivtmp.539, ivtmp.539,
	add	r0, r0, #26	@ D.40719, D.40719,
	sub	r1, r1, #1	@ D.40705, D.40705,
	str	r1, [r5, #228]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].mbamt_to_dec
	ldr	r1, [r4, #3108]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride
	str	lr, [r5, #288]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pic_width_in_mb
	cmp	r1, #0	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride,
	add	lr, r1, #63	@ tmp788, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride,
	str	ip, [r5, #284]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pic_height_in_mb
	movlt	r1, lr	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride, tmp788
	str	r6, [r5, #244]	@ tmp792, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].video_standard
	mov	r1, r1, asr r6	@ D.40705, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride,
	str	r1, [r5, #240]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ddr_stride
	ldr	r1, [r4, #3388]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].sample_precision, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].sample_precision
	str	r1, [r5, #292]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].sample_precision, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].sample_precision
	ldr	r1, [r4, #3384]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].chroma_format, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].chroma_format
	str	r1, [r5, #296]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].chroma_format, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].chroma_format
	ldrb	r1, [r4, #2798]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.no_forward_reference_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.no_forward_reference_flag
	str	r1, [r5, #300]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.no_forward_reference_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].no_fwd_ref_flag
	ldrb	r1, [r4, #2797]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_reference_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_reference_flag
	str	r1, [r5, #304]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_reference_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pic_ref_flag
	ldrb	r1, [r4, #2796]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.advanced_pred_mode_disable, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.advanced_pred_mode_disable
	str	r1, [r5, #308]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.advanced_pred_mode_disable, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ad_pred_mode_disable
	ldrb	r1, [r4, #2790]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.skip_mode_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.skip_mode_flag
	str	r1, [r5, #312]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.skip_mode_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].skip_mode_flag
	ldrb	r1, [r4, #2789]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_qp, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_qp
	str	r1, [r5, #316]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_qp, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pic_qp
	ldrb	r1, [r4, #2788]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.fixed_picture_qp, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.fixed_picture_qp
	str	r1, [r5, #320]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.fixed_picture_qp, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fix_qp
	ldrb	r1, [r4, #2787]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.repeat_first_field, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.repeat_first_field
	str	r1, [r5, #324]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.repeat_first_field, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].repeat_first_field
	ldrb	r1, [r4, #2786]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.top_field_first, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.top_field_first
	str	r1, [r5, #328]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.top_field_first, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].top_field_first
	ldr	r1, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	str	r1, [r5, #332]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pic_coding_type
	ldrb	r1, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	cmp	r1, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure,
	moveq	r1, #1	@ D.40704,
	movne	r1, #3	@ D.40704,
	str	r1, [r5, #336]	@ D.40704, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].picture_structure
	ldrb	r1, [r4, #2784]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.progressive_frame, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.progressive_frame
	str	r1, [r5, #340]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.progressive_frame, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].progressive_frame
	ldr	r1, [r4, #2828]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.beta_offset, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.beta_offset
	str	r1, [r5, #344]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.beta_offset, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].beta_offset
	ldr	r1, [r4, #2824]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.alpha_c_offset, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.alpha_c_offset
	str	r1, [r5, #348]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.alpha_c_offset, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].alpha_c_offset
	ldrb	r1, [r4, #2793]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.loop_filter_parameter_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.loop_filter_parameter_flag
	str	r1, [r5, #352]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.loop_filter_parameter_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].loop_flt_para_flag
	ldrb	r1, [r4, #2792]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.loop_filter_disable, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.loop_filter_disable
	str	r1, [r5, #356]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.loop_filter_disable, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].loop_flt_disable
	ldr	r1, [r4, #2832]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.weighting_quant_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.weighting_quant_flag
	str	r1, [r5, #432]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.weighting_quant_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].weighting_quant_flag
	ldr	r1, [r4, #2840]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_disable, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_disable
	str	r1, [r5, #436]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_disable, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].chroma_quant_param_disable
	ldr	r1, [r4, #2844]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_delta_u, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_delta_u
	str	r1, [r5, #444]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_delta_u, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].chroma_quant_param_delta_u
	ldr	r1, [r4, #2848]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_delta_v, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_delta_v
	str	r1, [r5, #440]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.chroma_quant_param_delta_v, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].chroma_quant_param_delta_v
.L475:
	ldrh	r1, [r3, #2]!	@ D.40716, MEM[base: _581, offset: 0B]
	cmp	r3, r0	@ ivtmp.530, D.40719
	strh	r1, [r2, #2]!	@ movhi	@ D.40716, MEM[base: _578, offset: 0B]
	bne	.L475	@,
	ldr	r3, [r4, #3036]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.aec_enable, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.aec_enable
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #448]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.aec_enable, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].aec_enable
	ldr	r3, [r4, #3048]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag
	str	r3, [r5, #456]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].b_filed_enhanced_flag
	ldr	r3, [r4, #3044]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.p_filed_enhanced_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.p_filed_enhanced_flag
	str	r3, [r5, #452]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.p_filed_enhanced_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].p_filed_enhanced_flag
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ _324->PicCodingType, _324->PicCodingType
	cmp	r3, #2	@ _324->PicCodingType,
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@,
	beq	.L568	@,
	bl	FSP_GetFsImagePtr	@
	subs	r2, r0, #0	@ pImage,
	beq	.L451	@,
	ldr	r3, [r4, #2672]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldrb	r1, [r3]	@ zero_extendqisi2	@ _374->PicStruct, _374->PicStruct
	cmp	r1, #1	@ _374->PicStruct,
	moveq	r1, #3	@ D.40705,
	movne	r1, #1	@ D.40705,
	str	r1, [r5, #360]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_picture_structure
	ldrsb	r1, [r3, #2]	@ _374->TopFldFirst, _374->TopFldFirst
	str	r1, [r5, #364]	@ _374->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_top_field_first
	ldr	r1, [r2, #104]	@ D.40707, pImage_372->luma_phy_addr
	str	r1, [r5, #384]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_address_0
	ldrb	r1, [r3]	@ zero_extendqisi2	@ _374->PicStruct, _374->PicStruct
	cmp	r1, #1	@ _374->PicStruct,
	moveq	r1, #3	@ D.40705,
	movne	r1, #1	@ D.40705,
	str	r1, [r5, #376]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_picture_structure_0
	ldrsb	r3, [r3, #2]	@ _374->TopFldFirst, _374->TopFldFirst
	str	r3, [r5, #380]	@ _374->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_top_field_first_0
	ldr	r3, [r2, #104]	@ D.40707, pImage_372->luma_phy_addr
	str	r3, [r5, #388]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_address_0
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _390->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L451	@,
	ldr	r3, [r4, #2676]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
.L567:
	ldrb	r2, [r3]	@ zero_extendqisi2	@ _395->PicStruct,* D.40709
	cmp	r2, #1	@ _395->PicStruct,
	moveq	r2, #3	@ D.40705,
	movne	r2, #1	@ D.40705,
	str	r2, [r5, #368]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_picture_structure_1
	ldrsb	r3, [r3, #2]	@ _395->TopFldFirst,
	str	r3, [r5, #372]	@ _395->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_top_field_first_1
	ldr	r3, [r0, #104]	@ D.40707,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #392]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_address_1
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _404->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L451	@,
	ldr	r3, [r0, #128]	@ D.40707, pImage_407->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #264]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type0
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _412->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L451	@,
	ldr	r3, [r0, #128]	@ D.40707, pImage_415->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #268]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type1
	ldr	r3, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _420->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L451	@,
	ldr	r3, [r0, #128]	@ D.40707, pImage_423->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #272]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type2
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r1, [r3, #4]	@, _428->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L451	@,
	ldr	r2, [r3, #128]	@ D.40707, pImage_431->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r2, [r5, #276]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type3
	ldr	r2, [r3, #104]	@ D.40707, pImage_431->luma_phy_addr
	str	r2, [r5, #280]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ystaddr_1d
	ldr	r3, [r3, #120]	@ D.40707, pImage_431->luma_2d_phy_addr
	str	r3, [r5, #396]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].rcn_address
	ldr	r3, [r4, #2672]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldrb	r2, [r3]	@ zero_extendqisi2	@ _439->PicStruct, _439->PicStruct
	cmp	r2, #1	@ _439->PicStruct,
	moveq	r2, #3	@ D.40704,
	movne	r2, #1	@ D.40704,
	str	r2, [r5, #400]	@ D.40704, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].col_pic_struct
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ _439->PicCodingType, _439->PicCodingType
	adds	r3, r3, #0	@ D.40715, _439->PicCodingType,
	movne	r3, #1	@ D.40715,
	str	r3, [r5, #404]	@ D.40715, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].col_pic_type
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r1, [r3, #4]	@, _447->FspID
	bl	FSP_GetPmvAddr	@
	str	r0, [r5, #460]	@, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].current_pmv_addr
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _454->FspID
	bl	FSP_GetPmvAddr	@
	add	ip, r10, #15424	@ ivtmp.509, pCtx,
	add	ip, ip, #8	@ ivtmp.509, ivtmp.509,
	mov	r2, #0	@ iCnt,
	str	r0, [r5, #472]	@, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].colpic_mv_addr
	add	r0, r10, #16640	@ ivtmp.518, pCtx,
	ldr	r3, [r4, #3052]	@ D.40707, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	add	r0, r0, #216	@ ivtmp.518, ivtmp.518,
	cmp	r3, #2	@ D.40707,
	movne	r1, #0	@ SymNum,
	moveq	r1, #4	@ SymNum,
	moveq	lr, #8	@ DirNum,
	moveq	r6, #16	@ MvENum,
	movne	r6, #32	@ MvENum,
	movne	lr, r1	@ DirNum, SymNum
.L487:
	add	r2, r2, #1	@ iCnt, iCnt,
	ldr	r3, [ip, #4]!	@ MEM[base: _416, offset: 0B], MEM[base: _416, offset: 0B]
	cmp	r2, r6	@ iCnt, MvENum
	ubfx	r3, r3, #0, #18	@ D.40707, MEM[base: _416, offset: 0B],,
	str	r3, [r0, #4]!	@ D.40707, MEM[base: _408, offset: 0B]
	blt	.L487	@,
	cmp	lr, #0	@ DirNum,
	ble	.L492	@,
	add	ip, r10, #15552	@ ivtmp.491, pCtx,
	add	r0, r10, #16896	@ ivtmp.500, pCtx,
	add	ip, ip, #8	@ ivtmp.491, ivtmp.491,
	add	r0, r0, #24	@ ivtmp.500, ivtmp.500,
	mov	r2, #0	@ iCnt,
.L491:
	add	r2, r2, #1	@ iCnt, iCnt,
	ldr	r3, [ip, #4]!	@ MEM[base: _7, offset: 0B], MEM[base: _7, offset: 0B]
	cmp	r2, lr	@ iCnt, DirNum
	ubfx	r3, r3, #0, #15	@ D.40707, MEM[base: _7, offset: 0B],,
	str	r3, [r0, #4]!	@ D.40707, MEM[base: _6, offset: 0B]
	bne	.L491	@,
.L492:
	cmp	r1, #0	@ SymNum,
	ble	.L490	@,
	add	r0, r10, #15552	@ ivtmp.475, pCtx,
	add	lr, r10, #16896	@ ivtmp.480, pCtx,
	add	r0, r0, #60	@ ivtmp.475, ivtmp.475,
	add	lr, lr, #56	@ ivtmp.480, ivtmp.480,
	mov	ip, #0	@ iCnt,
.L493:
	ldr	r2, [r0, #4]	@ MEM[base: _477, offset: 4B], MEM[base: _477, offset: 4B]
	add	ip, ip, #1	@ iCnt, iCnt,
	ldr	r3, [r0], #8	@ MEM[base: _477, offset: 0B], MEM[base: _477, offset: 0B]
	cmp	ip, r1	@ iCnt, SymNum
	ubfx	r2, r2, #0, #9	@ D.40705, MEM[base: _477, offset: 4B],,
	ubfx	r3, r3, #0, #9	@ D.40705, MEM[base: _477, offset: 0B],,
	orr	r3, r3, r2, asl #9	@ D.40705, D.40705, D.40705,
	str	r3, [lr, #4]!	@ D.40705, MEM[base: _69, offset: 0B]
	bne	.L493	@,
	add	r0, r10, #15552	@ ivtmp.458, pCtx,
	add	r10, r10, #16896	@ ivtmp.467, pCtx,
	add	r0, r0, #40	@ ivtmp.458, ivtmp.458,
	add	r10, r10, #72	@ ivtmp.467, ivtmp.467,
	mov	r2, #0	@ iCnt,
.L494:
	add	r2, r2, #1	@ iCnt, iCnt,
	ldr	r3, [r0, #4]!	@ MEM[base: _538, offset: 0B], MEM[base: _538, offset: 0B]
	cmp	r2, r1	@ iCnt, SymNum
	ubfx	r3, r3, #0, #18	@ D.40707, MEM[base: _538, offset: 0B],,
	str	r3, [r10, #4]!	@ D.40707, MEM[base: _537, offset: 0B]
	bne	.L494	@,
.L490:
	ldr	r3, [r4, #3104]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pmv_colmb_buf_phyaddr, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pmv_colmb_buf_phyaddr
	mov	r0, #1	@ D.40702,
	str	r3, [r5, #604]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pmv_colmb_buf_phyaddr, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pmv_colmb_addr
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L447:
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #2723]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.progressive_sequence, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.progressive_sequence
	ldr	r3, [r4, #2732]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.horizontal_size
	cmp	r2, #1	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.progressive_sequence,
	ldr	r2, [r4, #2736]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size
	add	r3, r3, #15	@ D.40707, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.horizontal_size,
	addne	r2, r2, #31	@ D.40707, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size,
	addeq	r2, r2, #15	@ D.40707, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size,
	mov	r3, r3, lsr #4	@ D.40705, D.40707,
	str	r3, [r4, #2688]	@ D.40705, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbWidth
	movne	r2, r2, lsr #5	@ D.40707, D.40707,
	moveq	r2, r2, lsr #4	@ D.40707, D.40707,
	movne	r2, r2, asl #1	@ D.40707, D.40707,
	cmp	r3, #512	@ D.40705,
	str	r2, [r4, #2692]	@ D.40707, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbHeight
	bgt	.L451	@,
	ldr	r3, [r4, #2692]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbHeight, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbHeight
	cmp	r3, #512	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbHeight,
	ble	.L452	@,
.L451:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40702,
.L453:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L452:
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _63->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _63->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _63->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	addne	r5, r10, #16384	@ tmp1115, pCtx,
	beq	.L569	@,
.L454:
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _95->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	addeq	r6, r10, #14848	@ D.40709, pCtx,
	addeq	r6, r6, #36	@ D.40709, D.40709,
	beq	.L465	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	add	r6, r10, #14848	@ D.40709, pCtx,
	add	r6, r6, #36	@ D.40709, D.40709,
	ldr	r1, [r3, #4]	@, _100->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _104->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _108->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _112->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r7, #192]	@, pImg_98->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #196]	@, pImg_98->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #200]	@, pImg_98->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #204]	@, pImg_98->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp617,
	str	r3, [r7, #192]	@ tmp617, pImg_98->p_usrdat
	str	r3, [r7, #196]	@ tmp617, pImg_98->p_usrdat
	str	r3, [r7, #200]	@ tmp617, pImg_98->p_usrdat
	str	r3, [r7, #204]	@ tmp617, pImg_98->p_usrdat
	str	r6, [r4, #2668]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	str	r6, [r4, #2680]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r6, [r4, #2676]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r6, [r4, #2672]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@, MEM[(struct FRAME_OBJ *)pCtx_35(D) + 14884B].FspID
.L465:
	add	r7, r10, #16064	@ D.40711, pCtx,
	mov	r3, #0	@ tmp638,
	add	r7, r7, #24	@ D.40711, D.40711,
	str	r3, [r4, #3360]	@ tmp638, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].RefNum
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	mov	r1, r7	@, D.40711
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r10]	@ D.40708, pCtx_35(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _144->stChanOption.s32ReRangeEn, _144->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _144->stChanOption.s32ReRangeEn,
	bne	.L466	@,
	ldr	r3, [r3, #32]	@ _144->eCapLevel, _144->eCapLevel
	cmp	r3, #25	@ _144->eCapLevel,
	beq	.L570	@,
.L466:
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L468	@,
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _152->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _152->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _152->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L571	@,
.L470:
	mov	r0, r7	@, D.40711
	bl	ResetVoQueue	@
.L468:
	mov	r5, #0	@ tmp666,
	str	r6, [r4, #2668]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	str	r6, [r4, #2680]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	mov	r0, r10	@, pCtx
	str	r6, [r4, #2676]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r6, [r4, #2672]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r5, [r4, #2708]	@ tmp666, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged
	bl	AVS_AllocateVHB	@
	cmp	r0, r5	@,
	beq	.L451	@,
	str	r5, [r4, #2708]	@ tmp666, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged
	b	.L448	@
.L563:
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	add	r6, r10, #14848	@ pCodecInf, pCtx,
	add	r6, r6, #32	@ pCodecInf, pCodecInf,
	ldr	r1, [r3, #4]	@, _228->FspID
	bl	FSP_SetRef	@
	ldr	r3, [r4, #2680]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	add	r2, r6, #4	@ D.40709, pCodecInf,
	cmp	r3, r2	@ D.40709, D.40709
	beq	.L473	@,
	mov	r2, r7	@, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	ldr	r1, [r3, #4]	@, _231->FspID
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FSP_SetRef	@
.L473:
	ldr	r1, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r2, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	str	r1, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r2, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	b	.L472	@
.L568:
	bl	FSP_GetFsImagePtr	@
	subs	r2, r0, #0	@ pImage,
	beq	.L451	@,
	ldr	r3, [r4, #2672]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldrb	r1, [r3]	@ zero_extendqisi2	@ _332->PicStruct, _332->PicStruct
	cmp	r1, #1	@ _332->PicStruct,
	moveq	r1, #3	@ D.40705,
	movne	r1, #1	@ D.40705,
	str	r1, [r5, #360]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_picture_structure
	ldrsb	r3, [r3, #2]	@ _332->TopFldFirst, _332->TopFldFirst
	str	r3, [r5, #364]	@ _332->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_top_field_first
	ldr	r3, [r2, #104]	@ D.40707, pImage_330->luma_phy_addr
	str	r3, [r5, #384]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_address_0
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _341->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r2, r0, #0	@ pImage,
	beq	.L451	@,
	ldr	r3, [r4, #2676]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldrb	r1, [r3]	@ zero_extendqisi2	@ _346->PicStruct, _346->PicStruct
	cmp	r1, #1	@ _346->PicStruct,
	moveq	r1, #3	@ D.40705,
	movne	r1, #1	@ D.40705,
	str	r1, [r5, #376]	@ D.40705, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_picture_structure_0
	ldrsb	r3, [r3, #2]	@ _346->TopFldFirst, _346->TopFldFirst
	str	r3, [r5, #380]	@ _346->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_top_field_first_0
	ldr	r3, [r2, #104]	@ D.40707, pImage_344->luma_phy_addr
	str	r3, [r5, #388]	@ D.40707, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_address_0
	ldr	r3, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _355->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L451	@,
	ldr	r3, [r4, #2680]	@ D.40709, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	b	.L567	@
.L569:
	add	fp, r10, #14912	@ ivtmp.550, pCtx,
	add	r9, r10, #16064	@ D.40711, pCtx,
	add	fp, fp, #60	@ ivtmp.550, ivtmp.550,
	add	r9, r9, #24	@ D.40711, D.40711,
	add	r5, r10, #16384	@ tmp1115, pCtx,
	mov	r6, #3	@ D.40719,
	mvn	r8, #0	@ ret,
	mov	r3, #0	@ tmp499,
	str	r3, [sp, #12]	@ tmp499, NewNum
	str	r3, [sp, #16]	@ tmp499, ReadNum
	str	r3, [sp, #20]	@ tmp499, RefNum
.L457:
	ldr	r3, [fp, #-4]!	@ MEM[base: _575, offset: 0B], MEM[base: _575, offset: 0B]
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _498->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L455	@,
	ldr	r3, [fp]	@ MEM[base: _575, offset: 0B], MEM[base: _575, offset: 0B]
	mov	r8, #1	@ ret,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _502->FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L572	@,
.L455:
	subs	r6, r6, #1	@ D.40719, D.40719,
	bne	.L457	@,
	cmn	r8, #1	@ ret,
	beq	.L458	@,
	add	r3, sp, #12	@,,
	add	r2, sp, #16	@,,
	add	r1, sp, #20	@,,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r10]	@ D.40708, pCtx_35(D)->pstExtraData
	ldr	r1, [r5, #744]	@ pCtx_35(D)->OldPicWidth, pCtx_35(D)->OldPicWidth
	ldr	r2, [r3, #720]	@ _73->s32DSDThrWidth, _73->s32DSDThrWidth
	cmp	r1, r2	@ pCtx_35(D)->OldPicWidth, _73->s32DSDThrWidth
	bgt	.L459	@,
	ldr	r1, [r5, #748]	@ pCtx_35(D)->OldPicHeight, pCtx_35(D)->OldPicHeight
	ldr	r2, [r3, #724]	@ _73->s32DSDThrHeight, _73->s32DSDThrHeight
	cmp	r1, r2	@ pCtx_35(D)->OldPicHeight, _73->s32DSDThrHeight
	bgt	.L459	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	ldr	r1, [sp, #12]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.40705, ReadNum, NewNum
	cmp	r2, #0	@ D.40705,
	ble	.L573	@,
.L462:
	mov	r2, #1	@ tmp559,
	str	r2, [r3, #728]	@ tmp559, _73->s32DSDWaitFlag
.L458:
	mov	r0, #0	@ D.40702,
	b	.L453	@
.L571:
	ldr	r3, [r5, #752]	@ pCtx_35(D)->DSDNeedClearQue, pCtx_35(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_35(D)->DSDNeedClearQue,
	bne	.L468	@,
	b	.L470	@
.L570:
	ldr	r3, [r5, #736]	@ pCtx_35(D)->FspPartitionOK, pCtx_35(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_35(D)->FspPartitionOK,
	bne	.L468	@,
	b	.L470	@
.L459:
	ldr	r2, [sp, #12]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	bgt	.L462	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L462	@,
	mov	r2, #0	@ tmp560,
	str	r2, [r3, #728]	@ tmp560, _73->s32DSDWaitFlag
	str	r2, [r5, #752]	@ tmp560, pCtx_35(D)->DSDNeedClearQue
	b	.L454	@
.L572:
	mov	r0, r10	@, pCtx
	bl	AVS_SetImgFormat	@
	cmp	r6, r8	@ D.40719, tmp2
	streq	r6, [r7, #376]	@ D.40719, pImage_500->u32IsLastFrame
	mov	r2, r8	@, ret
	ldr	r3, [fp]	@ MEM[base: _575, offset: 0B], MEM[base: _575, offset: 0B]
	mov	r8, #0	@ ret,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _506->FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, #224]	@ pCtx_35(D)->ChanID, pCtx_35(D)->ChanID
	mov	r3, r9	@, D.40711
	mov	r2, r10	@, pCtx
	mov	r1, #6	@,
	str	r7, [sp]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	mov	r0, r10	@, pCtx
	beq	.L455	@,
	ldr	r1, [r7, #176]	@, pImage_500->image_id
	mvn	r8, #0	@ ret,
	bl	AVSDEC_RecycleImage	@
	ldr	r1, [r7, #192]	@, pImage_500->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp1129,
	ldr	r1, [r7, #196]	@, pImage_500->p_usrdat
	str	r3, [r7, #192]	@ tmp1129, pImage_500->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp1130,
	str	r3, [r7, #196]	@ tmp1130, pImage_500->p_usrdat
	b	.L455	@
.L573:
	str	r6, [r3, #728]	@ D.40719, _73->s32DSDWaitFlag
	mov	r3, #1	@ tmp556,
	str	r3, [r5, #752]	@ tmp556, pCtx_35(D)->DSDNeedClearQue
	b	.L454	@
	.fnend
	.size	AVS_GetStreamInf, .-AVS_GetStreamInf
	.align	2
	.global	AVS_PrepareDecode
	.type	AVS_PrepareDecode, %function
AVS_PrepareDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	AVS_GetStreamInf	@
	adds	r0, r0, #0	@,,
	movne	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AVS_PrepareDecode, .-AVS_PrepareDecode
	.align	2
	.global	AVSDEC_GetRemainImg
	.type	AVSDEC_GetRemainImg, %function
AVSDEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0	@ pCtx, pCtx
	ldr	r3, [r0]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r3, #12]	@ _13->s32DecOrderOutput, _13->s32DecOrderOutput
	cmp	r3, #1	@ _13->s32DecOrderOutput,
	beq	.L582	@,
	add	r4, r0, #14912	@ ivtmp.567, pCtx,
	add	r10, r0, #16064	@ D.40745, pCtx,
	add	r4, r4, #60	@ ivtmp.567, ivtmp.567,
	add	r10, r10, #24	@ D.40745, D.40745,
	add	r6, r0, #16384	@ tmp188, pCtx,
	mov	r5, #3	@ D.40741,
	mvn	r8, #0	@ ret,
.L581:
	ldr	r2, [r4, #-4]!	@ MEM[base: _62, offset: 0B], MEM[base: _62, offset: 0B]
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	ldr	r1, [r2, #4]	@, _17->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImage,
	beq	.L578	@,
	ldr	r3, [r4]	@ MEM[base: _62, offset: 0B], MEM[base: _62, offset: 0B]
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	ldr	r1, [r3, #4]	@, _22->FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L591	@,
.L578:
	subs	r5, r5, #1	@ D.40741, D.40741,
	bne	.L581	@,
	cmp	r8, #0	@ ret,
	bne	.L582	@,
	mov	r0, r8	@, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L582:
	add	r0, r7, #16064	@, pCtx,
	add	r0, r0, #24	@,,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	GetVoLastImageID	@
.L591:
	mov	r0, r7	@, pCtx
	bl	AVS_SetImgFormat	@
	cmp	r5, #1	@ D.40741,
	streq	r5, [r9, #224]	@ D.40741, pImage_20->last_frame
	mov	r2, #1	@,
	ldr	r3, [r4]	@ MEM[base: _62, offset: 0B], MEM[base: _62, offset: 0B]
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	ldr	r1, [r3, #4]	@, _29->FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #224]	@ pCtx_11(D)->ChanID, pCtx_11(D)->ChanID
	mov	r3, r10	@, D.40745
	mov	r2, r7	@, pCtx
	mov	r1, #6	@,
	str	r9, [sp]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L580	@,
	ldr	r1, [r9, #176]	@, pImage_20->image_id
	mov	r0, r7	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r1, [r9, #192]	@, pImage_20->p_usrdat
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	mov	fp, #0	@ tmp176,
	bl	FreeUsdByDec	@
	str	fp, [r9, #192]	@ tmp176, pImage_20->p_usrdat
	ldr	r1, [r9, #196]	@, pImage_20->p_usrdat
	mvn	r8, #0	@ ret,
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	fp, [r9, #196]	@ tmp176, pImage_20->p_usrdat
	b	.L578	@
.L580:
	ldr	r3, [r9, #180]	@ pImage_20->error_level, pImage_20->error_level
	cmp	r3, #100	@ pImage_20->error_level,
	bhi	.L585	@,
	ldr	r3, [r9, #144]	@ pImage_20->image_width, pImage_20->image_width
	cmp	r3, #31	@ pImage_20->image_width,
	bhi	.L592	@,
.L585:
	mvn	r8, #0	@ ret,
	b	.L578	@
.L592:
	ldr	r8, [r9, #148]	@ pImage_20->image_height, pImage_20->image_height
	cmp	r8, #31	@ pImage_20->image_height,
	movhi	r8, #0	@ ret,
	mvnls	r8, #0	@ ret,
	b	.L578	@
	.fnend
	.size	AVSDEC_GetRemainImg, .-AVSDEC_GetRemainImg
	.align	2
	.global	AVSDEC_GetImageBuffer
	.type	AVSDEC_GetImageBuffer, %function
AVSDEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #16384	@ tmp119, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.40753,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L600	@,
	mov	r0, #0	@ D.40753,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L600:
	add	r1, r5, #16064	@, pCtx,
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	add	r1, r1, #24	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.40753,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVSDEC_GetImageBuffer, .-AVSDEC_GetImageBuffer
	.align	2
	.global	ClearSlice
	.type	ClearSlice, %function
ClearSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r1, #4	@ ivtmp.585, pSlcStr,
	add	r8, r1, #12	@ D.40788, pSlcStr,
	mov	r7, r1	@ pSlcStr, pSlcStr
	mov	r9, r0	@ ChanID, ChanID
	mov	r6, r1	@ ivtmp.600, pSlcStr
	mov	r5, #0	@ tmp131,
.L603:
	ldr	r3, [r4, #4]!	@ MEM[base: _24, offset: 0B], MEM[base: _24, offset: 0B]
	cmp	r3, #0	@ MEM[base: _24, offset: 0B],
	ble	.L602	@,
	ldr	r3, [r6]	@ MEM[base: _29, offset: 0B], MEM[base: _29, offset: 0B]
	cmp	r3, #0	@ MEM[base: _29, offset: 0B],
	bne	.L609	@,
.L602:
	cmp	r4, r8	@ ivtmp.585, D.40788
	str	r5, [r4]	@ tmp131, MEM[base: _24, offset: 0B]
	str	r5, [r6], #4	@ tmp131, MEM[base: _26, offset: 0B]
	str	r5, [r7, #16]	@ tmp131, pSlcStr_5(D)->slice_start_mbn
	bne	.L603	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L609:
	ldr	r1, [r4, #12]	@, MEM[base: _24, offset: 12B]
	mov	r0, r9	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L602	@
	.fnend
	.size	ClearSlice, .-ClearSlice
	.align	2
	.global	AVS_ClearCurPic
	.type	AVS_ClearCurPic, %function
AVS_ClearCurPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r0, #12288	@ tmp132, pCtx,
	ldr	r3, [r7, #2144]	@ MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum, MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum
	cmp	r3, #0	@ MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum,
	ble	.L613	@,
	add	r5, r0, #96	@ ivtmp.608, pCtx,
	add	r6, r0, #16384	@ tmp133, pCtx,
	mov	r4, #0	@ i,
.L612:
	mov	r1, r5	@, ivtmp.608
	ldr	r0, [r6, #224]	@, pCtx_3(D)->ChanID
	bl	ClearSlice	@
	ldr	r3, [r7, #2144]	@ MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum, MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum
	add	r4, r4, #1	@ i, i,
	add	r5, r5, #28	@ ivtmp.608, ivtmp.608,
	cmp	r3, r4	@ MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum, i
	bgt	.L612	@,
.L613:
	mov	r3, #0	@ tmp124,
	mov	r0, #1	@,
	str	r3, [r7, #2144]	@ tmp124, MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	AVS_ClearCurPic, .-AVS_ClearCurPic
	.align	2
	.type	AVS_DecodeArbiter.part.3, %function
AVS_DecodeArbiter.part.3:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pCtx, pCtx
	ldr	r3, [r0]	@ pCtx_1(D)->pstExtraData, pCtx_1(D)->pstExtraData
	add	r4, r0, #12288	@ tmp207, pCtx,
	ldr	r3, [r3, #8]	@ DecMode, _2->s32DecMode
	cmp	r3, #4	@ DecMode,
	ldrls	pc, [pc, r3, asl #2]	@ DecMode
	b	.L632	@
.L620:
	.word	.L619
	.word	.L621
	.word	.L622
	.word	.L632
	.word	.L619
.L622:
	ldr	r5, [r4, #3768]	@ MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	clz	r5, r5	@ ret, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	mov	r5, r5, lsr #5	@ ret, ret,
.L618:
	cmp	r5, #0	@ ret,
	str	r3, [r4, #3356]	@ DecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	beq	.L639	@,
.L625:
	ldr	r3, [r4, #3768]	@ D.40804, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	cmp	r3, #1	@ D.40804,
	beq	.L640	@,
.L628:
	cmp	r3, #2	@ D.40804,
	bne	.L630	@,
	ldr	r3, [r4, #3360]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	cmp	r3, #1	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum,
	ble	.L629	@,
.L630:
	add	r1, r4, #3424	@, tmp207,
	add	r0, r4, #2704	@, tmp207,
	add	r1, r1, #4	@,,
	mov	r2, #372	@,
	add	r0, r0, #8	@,,
	bl	memcpy	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	mov	r0, #1	@ D.40806,
	bic	r3, r3, #311296	@ D.40804, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.40804, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L621:
	ldr	r2, [r4, #3356]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	ldr	r5, [r4, #3768]	@ MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	cmp	r2, #2	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode,
	str	r3, [r4, #3356]	@ DecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	moveq	r2, #0	@ tmp147,
	streq	r2, [r4, #3360]	@ tmp147, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	subs	r5, r5, #2	@ ret, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type,
	movne	r5, #1	@ ret,
	cmp	r5, #0	@ ret,
	bne	.L625	@,
.L639:
	mov	r0, r6	@, pCtx
	bl	AVS_ClearCurPic	@
	ldr	r2, .L641	@ tmp166,
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	ldr	ip, [r2]	@ D.40805, g_event_report
	bic	r3, r3, #311296	@ D.40804, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.40804, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	cmp	ip, #0	@ D.40805,
	beq	.L638	@,
	add	r6, r6, #16384	@ tmp168, pCtx,
	mov	r2, r5	@, ret
	mov	r1, #113	@,
	ldr	r0, [r6, #224]	@, pCtx_1(D)->ChanID
	blx	ip	@ D.40805
	mov	r0, r5	@ D.40806, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L619:
	ldr	r2, [r4, #3356]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	str	r3, [r4, #3356]	@ DecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	cmp	r2, #2	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode,
	ldr	r3, [r4, #3768]	@ D.40804, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	moveq	r2, #0	@ tmp141,
	streq	r2, [r4, #3360]	@ tmp141, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	cmp	r3, #1	@ D.40804,
	bne	.L628	@,
.L640:
	ldr	r3, [r4, #3360]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	cmp	r3, #0	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum,
	bgt	.L630	@,
.L629:
	mov	r0, r6	@, pCtx
	bl	AVS_ClearCurPic	@
	ldr	r2, .L641	@ tmp184,
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	ldr	ip, [r2]	@ D.40805, g_event_report
	bic	r3, r3, #311296	@ D.40804, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.40804, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	cmp	ip, #0	@ D.40805,
	beq	.L638	@,
	add	r6, r6, #16384	@ tmp186, pCtx,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r6, #224]	@, pCtx_1(D)->ChanID
	blx	ip	@ D.40805
.L638:
	mov	r0, #0	@ D.40806,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L632:
	mov	r5, #1	@ ret,
	b	.L618	@
.L642:
	.align	2
.L641:
	.word	g_event_report
	.fnend
	.size	AVS_DecodeArbiter.part.3, .-AVS_DecodeArbiter.part.3
	.align	2
	.global	AVS_DecodeArbiter
	.type	AVS_DecodeArbiter, %function
AVS_DecodeArbiter:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #12288	@ tmp116, pCtx,
	ldr	r3, [r3, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	and	r3, r3, #376832	@ D.40814, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity,
	cmp	r3, #376832	@ D.40814,
	beq	.L645	@,
	mov	r0, #0	@,
	bx	lr	@
.L645:
	b	AVS_DecodeArbiter.part.3	@
	.fnend
	.size	AVS_DecodeArbiter, .-AVS_DecodeArbiter
	.align	2
	.global	AVSDEC_VDMPostProc
	.type	AVSDEC_VDMPostProc, %function
AVSDEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #12288	@ tmp419, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	mov	r7, r1	@ ErrRatio, ErrRatio
	bl	AVS_ClearCurPic	@
	add	r0, r5, #8	@, pCtx,
	movw	r1, #14872	@,
	bl	__memzero	@
	ldr	r3, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type,
	bne	.L647	@,
	str	r7, [r4, #3364]	@ ErrRatio, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	add	r6, r5, #16384	@ tmp420, pCtx,
	ldr	r3, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	ldr	r2, [r4, #3364]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	ldr	r3, [r3]	@ RefErrThr, _39->s32RefErrThr
	cmp	r3, r2	@ RefErrThr, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	blt	.L704	@,
.L652:
	mov	r0, r5	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _98->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L651	@,
	ldr	r3, [r4, #3376]	@ D.40823, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pSeqUD
	mov	r2, #0	@ tmp325,
	cmp	r3, #0	@ D.40823,
	strne	r3, [r0, #192]	@ D.40823, pImage_101->p_usrdat
	ldr	r3, [r4, #3380]	@ D.40823, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pPicUD
	str	r2, [r4, #3376]	@ tmp325, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pSeqUD
	cmp	r3, r2	@ D.40823,
	mov	r2, #0	@ tmp330,
	strne	r3, [r0, #196]	@ D.40823, pImage_101->p_usrdat
	ldr	r3, [r4, #3052]	@ D.40820, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type
	str	r2, [r4, #3380]	@ tmp330, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pPicUD
	cmp	r3, #1	@ D.40820,
	bls	.L705	@,
.L656:
	ldr	r7, [r4, #2668]	@ pOutput, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
.L661:
	ldr	r1, [r7, #4]	@, pOutput_1->FspID
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImage,
	beq	.L651	@,
	add	r3, r5, #14848	@ D.40821, pCtx,
	add	r3, r3, #36	@ D.40821, D.40821,
	cmp	r7, r3	@ pOutput, D.40821
	beq	.L665	@,
	ldr	r2, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	ldr	r3, [r4, #3364]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	ldr	r2, [r2, #4]	@ _142->s32OutErrThr, _142->s32OutErrThr
	cmp	r2, r3	@ _142->s32OutErrThr, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	bge	.L663	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, #4]	@, pOutput_1->FspID
	mov	r2, #0	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r8, #192]	@ D.40823, pImage_139->p_usrdat
	cmp	r1, #0	@ D.40823,
	beq	.L664	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp405,
	str	r3, [r8, #192]	@ tmp405, pImage_139->p_usrdat
.L664:
	ldr	r1, [r8, #196]	@ D.40823, pImage_139->p_usrdat
	cmp	r1, #0	@ D.40823,
	beq	.L665	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	mov	r4, #1	@ D.40817,
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp409,
	str	r3, [r8, #196]	@ tmp409, pImage_139->p_usrdat
.L650:
	mov	r0, r4	@, D.40817
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L663:
	mov	r1, r5	@, pCtx
	mov	r0, r7	@, pOutput
	bl	AVS_OutputOneFrame	@
	subs	r4, r0, #0	@ D.40817,
	bne	.L665	@,
	ldr	r1, [r8, #192]	@ D.40823, pImage_139->p_usrdat
	cmp	r1, #0	@ D.40823,
	beq	.L666	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #192]	@ D.40817, pImage_139->p_usrdat
.L666:
	ldr	r1, [r8, #196]	@ D.40823, pImage_139->p_usrdat
	cmp	r1, #0	@ D.40823,
	beq	.L650	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp417,
	mov	r0, r4	@, D.40817
	str	r3, [r8, #196]	@ tmp417, pImage_139->p_usrdat
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L665:
	mov	r4, #1	@ D.40817,
	mov	r0, r4	@, D.40817
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L647:
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	add	r6, r5, #16384	@ tmp420, pCtx,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _22->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L651	@,
	ldr	r2, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r8, [r3, #180]	@ D.40820, pImage_25->error_level
	ldr	r1, [r2, #4]	@, _29->FspID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L651	@,
	ldr	r3, [r0, #180]	@ pImage_32->error_level, pImage_32->error_level
	ldr	r2, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type
	add	r8, r8, r3	@ D.40820, D.40820, pImage_32->error_level
	add	r7, r7, r8	@ D.40818, ErrRatio, D.40820
	cmp	r7, #100	@ D.40818,
	movge	r7, #100	@ D.40818,
	str	r7, [r4, #3364]	@ D.40818, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	ldr	r3, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	cmp	r2, #2	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type,
	ldr	r3, [r3]	@ RefErrThr, _43->s32RefErrThr
	beq	.L652	@,
	ldr	r2, [r4, #3364]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	cmp	r3, r2	@ RefErrThr, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	bge	.L652	@,
.L704:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	mov	r8, #0	@ tmp240,
	str	r8, [r4, #3360]	@ tmp240, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _50->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L653	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	add	r5, r5, #14848	@ D.40821, pCtx,
	add	r5, r5, #36	@ D.40821, D.40821,
	ldr	r1, [r3, #4]	@, _55->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _59->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _63->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	mov	r2, #1	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _67->FspID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r7, #192]	@, pImg_53->p_usrdat
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #196]	@, pImg_53->p_usrdat
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #200]	@, pImg_53->p_usrdat
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #204]	@, pImg_53->p_usrdat
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ tmp240, pImg_53->p_usrdat
	str	r8, [r7, #196]	@ tmp240, pImg_53->p_usrdat
	str	r8, [r7, #200]	@ tmp240, pImg_53->p_usrdat
	str	r8, [r7, #204]	@ tmp240, pImg_53->p_usrdat
	str	r5, [r4, #2668]	@ D.40821, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	str	r5, [r4, #2680]	@ D.40821, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r5, [r4, #2676]	@ D.40821, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r5, [r4, #2672]	@ D.40821, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@, MEM[(struct FRAME_OBJ *)pCtx_15(D) + 14884B].FspID
.L653:
	mov	r3, #0	@ tmp313,
	str	r3, [r4, #3360]	@ tmp313, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	mov	r4, r3	@ D.40817, tmp313
	mov	r0, r4	@, D.40817
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L705:
	ldr	r2, [r4, #3360]	@ D.40818, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	ldrb	r1, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.picture_structure
	cmp	r2, #1	@ D.40818,
	addle	r2, r2, #1	@ D.40818, D.40818,
	adds	r3, r3, #0	@ tmp343, D.40820,
	str	r2, [r4, #3360]	@ D.40818, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	movne	r3, #1	@ tmp343,
	cmp	r1, #1	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.picture_structure,
	orreq	r3, r3, #1	@,, tmp346, tmp343
	cmp	r3, #0	@ tmp346,
	beq	.L658	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _117->FspID
	bl	FSP_SetRef	@
	add	r3, r5, #14848	@ D.40821, pCtx,
	ldr	r2, [r4, #2680]	@ D.40821, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	add	r3, r3, #36	@ D.40821, D.40821,
	cmp	r2, r3	@ D.40821, D.40821
	beq	.L659	@,
	ldr	r1, [r2, #4]	@, _120->FspID
	mov	r2, #0	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_SetRef	@
.L659:
	ldr	r1, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r2, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	str	r1, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r2, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
.L658:
	ldr	r3, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _131->s32DecOrderOutput, _131->s32DecOrderOutput
	cmp	r3, #0	@ _131->s32DecOrderOutput,
	ldreq	r7, [r4, #2676]	@ pOutput, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	beq	.L661	@,
	b	.L656	@
.L651:
	mov	r4, #0	@ D.40817,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, D.40817
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	AVSDEC_VDMPostProc, .-AVSDEC_VDMPostProc
	.align	2
	.global	ClearPacket
	.type	ClearPacket, %function
ClearPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r0, #16384	@ tmp120, pCtx,
	ldr	r1, [r4, #80]	@, pCtx_2(D)->LastPacket.StreamPack[0].StreamID
	ldr	r0, [r4, #224]	@, pCtx_2(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #69]	@ zero_extendqisi2	@ pCtx_2(D)->LastPacket.StreamPack[0].IsLastSeg, pCtx_2(D)->LastPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_2(D)->LastPacket.StreamPack[0].IsLastSeg,
	bne	.L707	@,
	ldrb	r3, [r4, #149]	@ zero_extendqisi2	@ pCtx_2(D)->LastPacket.StreamPack[1].IsLastSeg, pCtx_2(D)->LastPacket.StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pCtx_2(D)->LastPacket.StreamPack[1].IsLastSeg,
	beq	.L709	@,
.L707:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L709:
	ldr	r3, [r4, #152]	@ pCtx_2(D)->LastPacket.StreamPack[1].PhyAddr, pCtx_2(D)->LastPacket.StreamPack[1].PhyAddr
	cmp	r3, #0	@ pCtx_2(D)->LastPacket.StreamPack[1].PhyAddr,
	ble	.L707	@,
	ldr	r1, [r4, #160]	@, pCtx_2(D)->LastPacket.StreamPack[1].StreamID
	ldr	r0, [r4, #224]	@, pCtx_2(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ClearPacket, .-ClearPacket
	.align	2
	.global	WriteAvsSliceMsg
	.type	WriteAvsSliceMsg, %function
WriteAvsSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #12288	@ tmp273, pCtx,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	ip, [r4, #2144]	@ D.40835, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	cmp	ip, #512	@ D.40835,
	bge	.L719	@,
	cmp	ip, #0	@ D.40835,
	ble	.L713	@,
	add	lr, r0, #16384	@ tmp274, pCtx,
	sub	r2, ip, #1	@ tmp158, D.40835,
	ldr	r3, [r4, #3448]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size
	ldr	r5, [lr, #64]	@ D.40836, pCtx_4(D)->LastPacket.StreamPack[0].VirAddr
	mov	r1, r2, asl #5	@ tmp161, tmp158,
	add	r3, r3, #15	@ D.40838, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size,
	sub	r2, r1, r2, asl #2	@ tmp162, tmp161, tmp158,
	add	r2, r0, r2	@ tmp163, pCtx, tmp162
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ D.40838, MEM[(HI_U8 *)_8 + 3B]
	mov	r3, r3, lsr #4	@ D.40838, D.40838,
	ldr	r6, [r2, #112]	@ MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_15].slice_start_mbn, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_15].slice_start_mbn
	mul	r2, r1, r3	@ D.40838, D.40838, D.40838
	cmp	r2, r6	@ D.40838, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_15].slice_start_mbn
	bls	.L720	@,
.L714:
	mov	r2, ip, asl #5	@ tmp174, D.40835,
	ldr	r1, [lr, #72]	@ pCtx_4(D)->LastPacket.StreamPack[0].PhyAddr, pCtx_4(D)->LastPacket.StreamPack[0].PhyAddr
	sub	r2, r2, ip, asl #2	@ tmp175, tmp174, D.40835,
	add	r0, r0, r2	@ tmp176, pCtx, tmp175
	str	r1, [r0, #96]	@ pCtx_4(D)->LastPacket.StreamPack[0].PhyAddr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_phy_addr
	ldr	r2, [lr, #80]	@ pCtx_4(D)->LastPacket.StreamPack[0].StreamID, pCtx_4(D)->LastPacket.StreamPack[0].StreamID
	str	r2, [r0, #116]	@ pCtx_4(D)->LastPacket.StreamPack[0].StreamID, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].steram_id
	ldr	r2, [lr, #76]	@ pCtx_4(D)->LastPacket.StreamPack[0].LenInByte, pCtx_4(D)->LastPacket.StreamPack[0].LenInByte
	str	r2, [r0, #104]	@ pCtx_4(D)->LastPacket.StreamPack[0].LenInByte, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_lenInByte
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ D.40838, MEM[(HI_U8 *)_59 + 3B]
	mul	r3, r3, r2	@ D.40838, D.40838, D.40838
	str	r3, [r0, #112]	@ D.40838, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].slice_start_mbn
	ldr	r2, [r4, #2732]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.horizontal_size
	ldr	r5, [r4, #2736]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.vertical_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.vertical_size
	add	r1, r2, #15	@ D.40838, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.horizontal_size,
	add	r5, r5, #15	@ D.40838, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.vertical_size,
	mov	r2, r1, lsr #4	@ D.40838, D.40838,
	mov	r5, r5, lsr #4	@ D.40838, D.40838,
	mul	r2, r2, r5	@ totalMb, D.40838, D.40838
	sub	r2, r2, #1	@ D.40838, totalMb,
	cmp	r3, r2	@ D.40838, D.40838
	movhi	r0, #0	@ D.40834,
	bhi	.L712	@,
	ldrb	r3, [lr, #69]	@ zero_extendqisi2	@ pCtx_4(D)->LastPacket.StreamPack[0].IsLastSeg, pCtx_4(D)->LastPacket.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ pCtx_4(D)->LastPacket.StreamPack[0].IsLastSeg,
	ldrne	r3, [lr, #152]	@ pCtx_4(D)->LastPacket.StreamPack[1].PhyAddr, pCtx_4(D)->LastPacket.StreamPack[1].PhyAddr
	moveq	r3, #0	@ tmp227,
	streq	r3, [r0, #100]	@ tmp227, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_phy_addr
	streq	r3, [r0, #120]	@ tmp227, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].steram_id
	strne	r3, [r0, #100]	@ pCtx_4(D)->LastPacket.StreamPack[1].PhyAddr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_phy_addr
	ldrne	r3, [lr, #160]	@ pCtx_4(D)->LastPacket.StreamPack[1].StreamID, pCtx_4(D)->LastPacket.StreamPack[1].StreamID
	strne	r3, [r0, #120]	@ pCtx_4(D)->LastPacket.StreamPack[1].StreamID, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].steram_id
	ldrne	r3, [lr, #156]	@ pCtx_4(D)->LastPacket.StreamPack[1].LenInByte, pCtx_4(D)->LastPacket.StreamPack[1].LenInByte
	str	r3, [r0, #108]	@ pCtx_4(D)->LastPacket.StreamPack[1].LenInByte, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_lenInByte
	mov	r0, #1	@ D.40834,
	add	r3, ip, #1	@ D.40835, D.40835,
	str	r3, [r4, #2144]	@ D.40835, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
.L712:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L713:
	ldr	r3, [r4, #3448]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size
	add	lr, r0, #16384	@ tmp274, pCtx,
	add	r3, r3, #15	@ D.40838, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size,
	ldr	r5, [lr, #64]	@ D.40836, pCtx_4(D)->LastPacket.StreamPack[0].VirAddr
	mov	r3, r3, lsr #4	@ D.40838, D.40838,
	b	.L714	@
.L719:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40834,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L720:
	str	r0, [sp, #4]	@ pCtx, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #4]	@ pCtx, %sfp
	bl	ClearPacket	@
	mov	r0, #1	@ D.40834,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	WriteAvsSliceMsg, .-WriteAvsSliceMsg
	.align	2
	.global	AVS_GetPacketState
	.type	AVS_GetPacketState, %function
AVS_GetPacketState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #16384	@ tmp117, pCtx,
	ldr	r0, [r0, #56]	@ pCtx_3(D)->IsPackWaitDec, pCtx_3(D)->IsPackWaitDec
	subs	r0, r0, #1	@, pCtx_3(D)->IsPackWaitDec,
	movne	r0, #1	@,
	bx	lr	@
	.fnend
	.size	AVS_GetPacketState, .-AVS_GetPacketState
	.align	2
	.global	Avs_Vfmw_WQMatrix
	.type	Avs_Vfmw_WQMatrix, %function
Avs_Vfmw_WQMatrix:
	.fnstart
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #304
	sub	sp, sp, #304	@,,
	ldr	r8, [r0, #140]	@ D.41210, pSyntax_55(D)->syn_pic.weighting_quant_param_index
	mov	r3, #0	@ tmp279,
	ldr	r4, [r0, #124]	@ D.41219, pSyntax_55(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r8, #1	@ D.41210,
	str	r3, [sp]	@ tmp279, quant_param_undetail
	str	r3, [sp, #4]	@ tmp279, quant_param_undetail
	str	r3, [sp, #8]	@ tmp279, quant_param_undetail
	str	r3, [sp, #12]	@ tmp279, quant_param_detail
	str	r3, [sp, #16]	@ tmp279, quant_param_detail
	str	r3, [sp, #20]	@ tmp279, quant_param_detail
	beq	.L725	@,
	clz	r3, r4	@ D.41220, D.41219
	cmp	r8, #3	@ D.41210,
	cmpeq	r4, #0	@, D.41219,
	mov	r3, r3, lsr #5	@ D.41220, D.41220,
	beq	.L725	@,
	cmp	r8, #2	@ D.41210,
	addeq	r3, r0, #168	@ ivtmp.937, pSyntax,
	beq	.L727	@,
	cmp	r3, #0	@ D.41220,
	bne	.L759	@,
.L760:
	add	r4, sp, #24	@ tmp432,,
	cmp	r8, #0	@ D.41210,
	mov	r3, #128	@ tmp315,
	strh	r3, [r4]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #2]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #4]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #6]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #8]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #10]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #12]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #14]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #16]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #18]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #20]	@ movhi	@ tmp315, wq_param
	strh	r3, [r4, #22]	@ movhi	@ tmp315, wq_param
	bne	.L808	@,
	ldr	r3, .L813	@ ivtmp.880,
	add	r2, r4, #10	@ ivtmp.889, tmp432,
	add	ip, r3, #12	@ D.41206, ivtmp.880,
.L741:
	ldrh	r1, [r3, #2]!	@ MEM[base: _307, offset: 0B], MEM[base: _307, offset: 0B]
	cmp	r3, ip	@ ivtmp.880, D.41206
	strh	r1, [r2, #2]!	@ movhi	@ MEM[base: _307, offset: 0B], MEM[base: _308, offset: 0B]
	bne	.L741	@,
.L734:
	add	ip, r0, #194	@ ivtmp.640, pSyntax,
	add	lr, r0, #320	@ D.41206, pSyntax,
	add	lr, lr, #2	@ D.41206, D.41206,
	mov	r2, #128	@ tmp447,
	mov	r3, ip	@ ivtmp.758, ivtmp.640
.L745:
	strh	r2, [r3, #2]!	@ movhi	@ tmp447, MEM[base: _100, offset: 0B]
	cmp	r3, lr	@ ivtmp.758, D.41206
	bne	.L745	@,
	ldr	r3, [r0, #120]	@ pSyntax_55(D)->syn_pic.weighting_quant_flag, pSyntax_55(D)->syn_pic.weighting_quant_flag
	cmp	r3, #0	@ pSyntax_55(D)->syn_pic.weighting_quant_flag,
	beq	.L762	@,
	ldr	r10, [r0, #144]	@ pSyntax_55(D)->syn_pic.weighting_quant_model, pSyntax_55(D)->syn_pic.weighting_quant_model
	mov	r9, #0	@ k,
	ldr	r3, .L813+4	@ tmp422,
	mov	r10, r10, asl #6	@ D.41218, pSyntax_55(D)->syn_pic.weighting_quant_model,
	add	r7, r10, #64	@ D.41218, D.41218,
	add	r10, r3, r10	@ ivtmp.738, tmp422, D.41218
	add	r7, r3, r7	@ D.41206, tmp422, D.41218
.L763:
	add	r3, sp, #48	@ tmp464,,
	mov	r5, r9, asl #3	@ tmp436, k,
	add	r6, r3, r9, lsl #7	@ D.41218, tmp464, k,
	sub	r5, r5, r9, asl #1	@ tmp444, tmp436, k,
	sub	r6, r6, #2	@ ivtmp.740, D.41218,
	mov	r2, r10	@ ivtmp.738, ivtmp.738
.L753:
	add	r0, r2, #8	@ D.41206, ivtmp.738,
	mov	r1, r6	@ ivtmp.728, ivtmp.740
.L751:
	ldrb	r3, [r2], #1	@ zero_extendqisi2	@ D.41216, MEM[base: _190, offset: 0B]
	add	r3, r5, r3	@ tmp398, tmp444, D.41216
	cmp	r0, r2	@ D.41206, ivtmp.738
	mov	r3, r3, asl #1	@ tmp399, tmp398,
	ldrh	r3, [r4, r3]	@ tmp402, wq_param
	strh	r3, [r1, #2]!	@ movhi	@ tmp402, MEM[base: _125, offset: 0B]
	bne	.L751	@,
	cmp	r0, r7	@ D.41206, D.41206
	add	r6, r6, #16	@ ivtmp.740, ivtmp.740,
	mov	r2, r0	@ ivtmp.738, D.41206
	bne	.L753	@,
	add	r9, r9, #1	@ k, k,
	cmp	r9, #2	@ k,
	bne	.L763	@,
.L749:
	cmp	r8, #0	@ D.41210,
	bne	.L765	@,
	add	r1, sp, #300	@ D.41206,,
	add	r3, sp, #174	@ ivtmp.631,,
	add	r1, r1, #2	@ D.41206, D.41206,
.L754:
	ldrh	r2, [r3, #2]!	@ MEM[base: _78, offset: 0B], MEM[base: _78, offset: 0B]
	cmp	r3, r1	@ ivtmp.631, D.41206
	strh	r2, [ip, #2]!	@ movhi	@ MEM[base: _78, offset: 0B], MEM[base: _160, offset: 0B]
	bne	.L754	@,
.L722:
	add	sp, sp, #304	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L725:
	ldr	lr, .L813+8	@ ivtmp.975,
	add	r1, r0, #144	@ ivtmp.965, pSyntax,
	add	r3, r0, #168	@ ivtmp.937, pSyntax,
	mov	ip, sp	@ ivtmp.981,
.L724:
	ldr	r5, [r1, #4]!	@ MEM[base: _337, offset: 0B], MEM[base: _337, offset: 0B]
	ldrh	r2, [lr], #2	@ D.41212, MEM[base: _338, offset: 0B]
	cmp	r1, r3	@ ivtmp.965, ivtmp.937
	add	r2, r2, r5	@ tmp297, D.41212, MEM[base: _337, offset: 0B]
	strh	r2, [ip], #2	@ movhi	@ tmp297, MEM[base: _339, offset: 0B]
	bne	.L724	@,
	cmp	r8, #2	@ D.41210,
	beq	.L727	@,
	cmp	r4, #0	@ D.41219,
	cmpeq	r8, #3	@, D.41210,
	bne	.L728	@,
.L727:
	ldr	ip, .L813	@ ivtmp.946,
	add	r1, sp, #12	@ ivtmp.956,,
	add	r5, r0, #192	@ D.41206, pSyntax,
.L729:
	ldr	lr, [r3, #4]!	@ MEM[base: _326, offset: 0B], MEM[base: _326, offset: 0B]
	ldrh	r2, [ip, #2]!	@ MEM[base: _327, offset: 0B], MEM[base: _327, offset: 0B]
	cmp	r3, r5	@ ivtmp.937, D.41206
	add	r2, r2, lr	@ tmp310, MEM[base: _327, offset: 0B], MEM[base: _326, offset: 0B]
	strh	r2, [r1], #2	@ movhi	@ tmp310, MEM[base: _328, offset: 0B]
	bne	.L729	@,
.L728:
	cmp	r4, #0	@ D.41219,
	bne	.L760	@,
.L759:
	ldr	r3, .L813+8	@ ivtmp.865,
	add	r4, sp, #24	@ tmp432,,
	add	ip, r3, #12	@ D.41206, ivtmp.865,
	mov	r5, r4	@ ivtmp.779, tmp432
	mov	r2, r4	@ ivtmp.871, tmp432
.L732:
	ldrh	r1, [r3], #2	@ D.41212, MEM[base: _302, offset: 0B]
	cmp	r3, ip	@ ivtmp.865, D.41206
	strh	r1, [r2], #2	@ movhi	@ D.41212, MEM[base: _303, offset: 0B]
	bne	.L732	@,
	ldr	r3, .L813	@ ivtmp.842,
	add	lr, r4, #10	@ ivtmp.794, tmp432,
	add	ip, r3, #12	@ D.41206, ivtmp.842,
	mov	r2, lr	@ ivtmp.851, ivtmp.794
.L733:
	ldrh	r1, [r3, #2]!	@ MEM[base: _297, offset: 0B], MEM[base: _297, offset: 0B]
	cmp	r3, ip	@ ivtmp.842, D.41206
	strh	r1, [r2, #2]!	@ movhi	@ MEM[base: _297, offset: 0B], MEM[base: _298, offset: 0B]
	bne	.L733	@,
	cmp	r8, #0	@ D.41210,
	beq	.L734	@,
	cmp	r8, #1	@ D.41210,
	beq	.L809	@,
	cmp	r8, #2	@ D.41210,
	beq	.L810	@,
	cmp	r8, #3	@ D.41210,
	bne	.L734	@,
	add	r1, sp, #12	@ ivtmp.808,,
	mov	r3, sp	@ ivtmp.827,
.L739:
	ldrh	r2, [r3], #2	@ D.41212, MEM[base: _292, offset: 0B]
	cmp	r3, r1	@ ivtmp.827, ivtmp.808
	strh	r2, [r5], #2	@ movhi	@ D.41212, MEM[base: _293, offset: 0B]
	bne	.L739	@,
	add	r1, r4, #22	@ D.41206, tmp432,
.L740:
	ldrh	r2, [r3], #2	@ D.41212, MEM[base: _287, offset: 0B]
	strh	r2, [lr, #2]!	@ movhi	@ D.41212, MEM[base: _288, offset: 0B]
	cmp	lr, r1	@ ivtmp.794, D.41206
	bne	.L740	@,
	b	.L734	@
.L765:
	cmp	r8, #1	@ D.41210,
	beq	.L811	@,
	cmp	r8, #2	@ D.41210,
	bne	.L722	@,
	add	r1, sp, #300	@ D.41206,,
	add	r3, sp, #174	@ ivtmp.672,,
	add	r1, r1, #2	@ D.41206, D.41206,
.L758:
	ldrh	r2, [r3, #2]!	@ MEM[base: _281, offset: 0B], MEM[base: _281, offset: 0B]
	cmp	r3, r1	@ ivtmp.672, D.41206
	strh	r2, [ip, #2]!	@ movhi	@ MEM[base: _281, offset: 0B], MEM[base: _227, offset: 0B]
	bne	.L758	@,
	add	sp, sp, #304	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L762:
	add	r4, sp, #428	@ D.41206,,
	add	r0, sp, #174	@ ivtmp.713,,
	add	r4, r4, #2	@ D.41206, D.41206,
	mov	r1, #128	@ tmp440,
.L764:
	sub	r3, r0, #128	@ ivtmp.704, ivtmp.713,
.L750:
	add	r2, r3, #16	@ D.41206, ivtmp.704,
.L747:
	strh	r1, [r3, #2]!	@ movhi	@ tmp440, MEM[base: _102, offset: 0B]
	cmp	r2, r3	@ D.41206, ivtmp.704
	bne	.L747	@,
	cmp	r2, r0	@ D.41206, ivtmp.713
	mov	r3, r2	@ ivtmp.704, D.41206
	bne	.L750	@,
	add	r0, r0, #128	@ ivtmp.713, ivtmp.713,
	cmp	r0, r4	@ ivtmp.713, D.41206
	bne	.L764	@,
	b	.L749	@
.L808:
	cmp	r8, #1	@ D.41210,
	beq	.L812	@,
	cmp	r8, #2	@ D.41210,
	bne	.L734	@,
	add	r2, sp, #12	@ ivtmp.919,,
	add	r3, r4, #10	@ ivtmp.924, tmp432,
	add	ip, r4, #22	@ D.41206, tmp432,
.L744:
	ldrh	r1, [r2], #2	@ D.41212, MEM[base: _317, offset: 0B]
	strh	r1, [r3, #2]!	@ movhi	@ D.41212, MEM[base: _318, offset: 0B]
	cmp	r3, ip	@ ivtmp.924, D.41206
	bne	.L744	@,
	b	.L734	@
.L812:
	add	ip, sp, #12	@ D.41206,,
	mov	r3, sp	@ ivtmp.903,
	mov	r2, r4	@ ivtmp.909, tmp432
.L743:
	ldrh	r1, [r3], #2	@ D.41212, MEM[base: _312, offset: 0B]
	cmp	r3, ip	@ ivtmp.903, D.41206
	strh	r1, [r2], #2	@ movhi	@ D.41212, MEM[base: _313, offset: 0B]
	bne	.L743	@,
	b	.L734	@
.L809:
	add	r1, sp, #12	@ D.41206,,
	mov	r3, sp	@ ivtmp.773,
.L736:
	ldrh	r2, [r3], #2	@ D.41212, MEM[base: _166, offset: 0B]
	cmp	r3, r1	@ ivtmp.773, D.41206
	strh	r2, [r5], #2	@ movhi	@ D.41212, MEM[base: _159, offset: 0B]
	bne	.L736	@,
	b	.L734	@
.L811:
	add	r3, sp, #46	@ ivtmp.653,,
.L756:
	ldrh	r2, [r3, #2]!	@ MEM[base: _163, offset: 0B], MEM[base: _163, offset: 0B]
	strh	r2, [ip, #2]!	@ movhi	@ MEM[base: _163, offset: 0B], MEM[base: _164, offset: 0B]
	cmp	lr, ip	@ D.41206, ivtmp.640
	bne	.L756	@,
	add	sp, sp, #304	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L810:
	add	r3, sp, #12	@ ivtmp.789,,
	add	r1, r4, #22	@ D.41206, tmp432,
.L738:
	ldrh	r2, [r3], #2	@ D.41212, MEM[base: _16, offset: 0B]
	strh	r2, [lr, #2]!	@ movhi	@ D.41212, MEM[base: _15, offset: 0B]
	cmp	lr, r1	@ ivtmp.794, D.41206
	bne	.L738	@,
	b	.L734	@
.L814:
	.align	2
.L813:
	.word	.LANCHOR1+10
	.word	.LANCHOR0+16
	.word	.LANCHOR1
	.fnend
	.size	Avs_Vfmw_WQMatrix, .-Avs_Vfmw_WQMatrix
	.align	2
	.global	AVS_ParseHeader
	.type	AVS_ParseHeader, %function
AVS_ParseHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r7, r0, #12288	@ tmp278, pCtx,
	add	r8, r0, #16384	@ tmp279, pCtx,
	mov	r3, #0	@ tmp168,
	ldr	r6, [r7, #3084]	@ pBs, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].pBs
	mov	r1, #32	@,
	str	r3, [r8, #56]	@ tmp168, pCtx_3(D)->IsPackWaitDec
	add	r9, r0, #14848	@ pCodecInf, pCtx,
	add	r5, r0, #15680	@ pSyntax, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r0, r6	@, pBs
	add	r9, r9, r1	@ pCodecInf, pCodecInf,
	bl	BsShow	@
	add	r5, r5, #36	@ pSyntax, pSyntax,
	uxtb	r0, r0	@ Code,
	sub	r3, r0, #176	@ tmp169, Code,
	cmp	r3, #78	@ tmp169,
	ldrls	pc, [pc, r3, asl #2]	@ tmp169
	b	.L816	@
.L818:
	.word	.L817
	.word	.L819
	.word	.L820
	.word	.L821
	.word	.L840
	.word	.L823
	.word	.L824
	.word	.L819
	.word	.L840
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L826
.L819:
	ldr	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r5, r3, #32768	@ D.41225, D.41225,
	bne	.L857	@,
	tst	r3, #327680	@ D.41225,
	bne	.L865	@,
.L860:
	mov	r0, #1	@ D.41223,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L816:
	cmp	r0, #175	@ Code,
	bhi	.L840	@,
	ldr	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	and	r2, r3, #327680	@ D.41225, D.41225,
	cmp	r2, #327680	@ D.41225,
	beq	.L866	@,
.L840:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.41223,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L823:
	ldr	r3, [r7, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B], MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B]
	tst	r3, #327680	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B],
	beq	.L835	@,
	mov	r1, r5	@, pSyntax
	mov	r0, r9	@, pCodecInf
	bl	AVS_extension	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.41223,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L820:
	ldr	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r1, r3, #262144	@ D.41225, D.41225,
	movne	r1, #1	@,
	bne	.L859	@,
	tst	r3, #65536	@ D.41225,
	beq	.L835	@,
.L859:
	mov	r0, r4	@, pCtx
	bl	AVS_user_data	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.41223,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L821:
	ldr	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r6, r3, #32768	@ D.41225, D.41225,
	bne	.L858	@,
	tst	r3, #262144	@ D.41225,
	beq	.L831	@,
	bic	r3, r3, #311296	@ D.41225, D.41225,
	mov	r0, r9	@, pCodecInf
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
	b	.L862	@
.L824:
	ldr	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r6, r3, #32768	@ D.41225, D.41225,
	bne	.L858	@,
	tst	r3, #262144	@ D.41225,
	beq	.L833	@,
	bic	r3, r3, #311296	@ D.41225, D.41225,
	mov	r0, r9	@, pCodecInf
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	mov	r1, r5	@, pSyntax
	bl	AVS_pb_picture_header	@
.L862:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r6	@ D.41223, D.41225
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L826:
	mov	r1, #32	@,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.41224,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	r2, #20036	@ tmp251,
	movw	r3, #20553	@ tmp254,
	movt	r2, 17221	@ tmp251,
	movt	r3, 18515	@ tmp254,
	cmp	r0, r2	@, tmp251
	cmpeq	r5, r3	@, D.41224, tmp254
	bne	.L835	@,
	mov	r5, #1	@ tmp260,
	strb	r5, [r8, #740]	@ tmp260, pCtx_3(D)->IsStreamEndFlag
	str	r5, [r8, #56]	@ tmp260, pCtx_3(D)->IsPackWaitDec
	mov	r0, r4	@, pCtx
	ldr	r3, [r7, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	orr	r3, r3, #16384	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity,
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	ClearPacket	@
	mov	r0, r5	@ D.41223, tmp260
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L817:
	ldr	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r6, r3, #32768	@ D.41225, D.41225,
	bne	.L857	@,
	tst	r3, #65536	@ D.41225,
	beq	.L829	@,
	bic	r3, r3, #311296	@ D.41225, D.41225,
	mov	r1, r5	@, pSyntax
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r6	@ D.41223, D.41225
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L857:
	mov	r0, #1	@ tmp238,
	orr	r3, r3, #16384	@ D.41225, D.41225,
	str	r0, [r8, #56]	@ tmp238, pCtx_3(D)->IsPackWaitDec
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L866:
	orr	r3, r3, #32768	@ D.41225, D.41225,
	mov	r0, r4	@, pCtx
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	WriteAvsSliceMsg	@
	cmp	r0, #0	@,
	bne	.L860	@,
.L835:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #0	@ D.41223,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L833:
	mov	r0, r9	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_pb_picture_header	@
.L861:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.41223,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L831:
	mov	r0, r9	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
	b	.L861	@
.L829:
	mov	r1, r5	@, pSyntax
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.41223,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L858:
	orr	r3, r3, #16384	@ D.41225, D.41225,
	mov	r0, r5	@, pSyntax
	mov	r4, #1	@ tmp201,
	str	r4, [r8, #56]	@ tmp201, pCtx_3(D)->IsPackWaitDec
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r4	@ D.41223, tmp201
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L865:
	bic	r3, r3, #311296	@ D.41225, D.41225,
	mov	r0, r4	@, pCtx
	str	r3, [r7, #2696]	@ D.41225, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	ClearPacket	@
	mov	r0, r5	@ D.41223, D.41225
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	AVS_ParseHeader, .-AVS_ParseHeader
	.align	2
	.global	AVSDEC_Decode
	.type	AVSDEC_Decode, %function
AVSDEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #15680	@, pCtx,
	ldr	r2, [r1, #12]	@, p_Packet_6(D)->StreamPack[0].LenInByte
	mov	r6, r1	@ p_Packet, p_Packet
	add	r0, r0, #8	@,,
	ldr	r1, [r1]	@, p_Packet_6(D)->StreamPack[0].VirAddr
	add	r5, r4, #12288	@ tmp139, pCtx,
	bl	BsInit	@
	add	r0, r4, #16384	@, pCtx,
	mov	r1, r6	@, p_Packet
	mov	r2, #160	@,
	add	r0, r0, #64	@,,
	bl	memcpy	@
	ldr	r3, [r5, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	mov	r0, r4	@, pCtx
	str	r3, [r5, #3396]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].u32LastIntegrity
	bl	AVS_ParseHeader	@
	cmp	r0, #0	@,
	beq	.L873	@,
	ldr	r3, [r5, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	and	r3, r3, #376832	@ D.41231, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity,
	cmp	r3, #376832	@ D.41231,
	beq	.L870	@,
.L871:
	mov	r0, #0	@ D.41229,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L873:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, #0	@ D.41229,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L870:
	mov	r0, r4	@, pCtx
	bl	AVS_DecodeArbiter.part.3	@
	cmp	r0, #0	@,
	beq	.L871	@,
	mov	r0, r4	@, pCtx
	bl	AVS_GetStreamInf	@
	cmp	r0, #0	@,
	bne	.L872	@,
	ldr	r3, [r4]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r0, [r3, #728]	@ D.41229, _21->s32DSDWaitFlag
	cmp	r0, #1	@ D.41229,
	bne	.L873	@,
	ldr	r3, [r5, #3396]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].u32LastIntegrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].u32LastIntegrity
	str	r3, [r5, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].u32LastIntegrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L872:
	mov	r0, r4	@, pCtx
	bl	AVS_StartDecode	@
	cmp	r0, #0	@,
	beq	.L873	@,
	mov	r0, #1	@ D.41229,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVSDEC_Decode, .-AVSDEC_Decode
	.global	wq_param_default
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CSWTCH.52, %object
	.size	CSWTCH.52, 16
CSWTCH.52:
	.word	5
	.word	1
	.word	2
	.word	3
	.type	WeightQuantModel, %object
	.size	WeightQuantModel, 256
WeightQuantModel:
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	5
	.byte	5
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	5
	.byte	5
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	0
	.byte	0
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	0
	.byte	4
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	5
	.byte	5
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	5
	.byte	5
	.byte	5
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	1
	.byte	1
	.byte	1
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	wq_param_default, %object
	.size	wq_param_default, 24
wq_param_default:
	.short	135
	.short	143
	.short	143
	.short	160
	.short	160
	.short	213
	.short	128
	.short	98
	.short	106
	.short	116
	.short	116
	.short	128
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"bbv_check_times\000"
.LC1:
	.ascii	"alpha_c_offset\000"
	.space	1
.LC2:
	.ascii	"beta_offset\000"
.LC3:
	.ascii	"chroma_quant_param_delta_u\000"
	.space	1
.LC4:
	.ascii	"chroma_quant_param_delta_v\000"
	.space	1
.LC5:
	.ascii	"weighting_quant_param_deltal1\000"
	.space	2
.LC6:
	.ascii	"weighting_quant_param_deltal2\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
