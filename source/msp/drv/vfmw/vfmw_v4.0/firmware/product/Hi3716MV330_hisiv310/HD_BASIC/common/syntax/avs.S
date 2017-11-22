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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV330 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(avs) -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.avs.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/avs.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/avs.o
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
	.global	avs_u_v
	.type	avs_u_v, %function
avs_u_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r1	@ v, v
	mov	r5, r2	@ Name, Name
	bl	BsGet	@
	str	r6, [sp]	@ v,
	mov	r2, r5	@, Name
	ldr	r1, .L3	@,
	mov	r4, r0	@ D.33161,
	mov	r3, r0	@, D.33161
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.33161
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L4:
	.align	2
.L3:
	.word	.LC0
	.fnend
	.size	avs_u_v, .-avs_u_v
	.align	2
	.global	avs_f_v
	.type	avs_f_v, %function
avs_f_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r1	@ v, v
	mov	r5, r2	@ Name, Name
	bl	BsGet	@
	str	r6, [sp]	@ v,
	mov	r2, r5	@, Name
	ldr	r1, .L7	@,
	mov	r4, r0	@ D.33165,
	mov	r3, r0	@, D.33165
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.33165
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L8:
	.align	2
.L7:
	.word	.LC0
	.fnend
	.size	avs_f_v, .-avs_f_v
	.align	2
	.global	avs_ue_v
	.type	avs_ue_v, %function
avs_ue_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r6, r1	@ Name, Name
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r1, #32	@,
	mov	r7, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mov	r4, r0	@ LeadingZeros,
	mvnhi	r5, #0	@ Info,
	movhi	r4, #32	@ NumBits,
	bls	.L14	@,
.L10:
	str	r4, [sp]	@ NumBits,
	mov	r2, r6	@, Name
	mov	r3, r5	@, Info
	ldr	r1, .L15	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, Info
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L14:
	add	r5, r4, #1	@ D.33168, LeadingZeros,
	mov	r1, r4	@, LeadingZeros
	mov	r0, r7	@, pBs
	mov	r4, r4, asl #1	@ D.33169, LeadingZeros,
	bl	BsSkip	@
	mov	r1, r5	@, D.33168
	mov	r0, r7	@, pBs
	add	r4, r4, #1	@ NumBits, D.33169,
	bl	BsShow	@
	mov	r1, r5	@, D.33168
	sub	r5, r0, #1	@ Info,,
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	b	.L10	@
.L16:
	.align	2
.L15:
	.word	.LC0
	.fnend
	.size	avs_ue_v, .-avs_ue_v
	.align	2
	.global	avs_se_v
	.type	avs_se_v, %function
avs_se_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ Name, Name
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r1, #32	@,
	mov	r7, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mov	r4, r0	@ LeadingZeros,
	mvnhi	r5, #-2147483648	@ Info,
	movhi	r4, #32	@ NumBits,
	bls	.L23	@,
.L18:
	str	r4, [sp]	@ NumBits,
	mov	r2, r6	@, Name
	mov	r3, r5	@, Info
	ldr	r1, .L24	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, Info
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L23:
	add	r8, r4, #1	@ D.33172, LeadingZeros,
	mov	r1, r4	@, LeadingZeros
	mov	r0, r7	@, pBs
	mov	r4, r4, asl #1	@ D.33173, LeadingZeros,
	bl	BsSkip	@
	mov	r1, r8	@, D.33172
	mov	r0, r7	@, pBs
	add	r4, r4, #1	@ NumBits, D.33173,
	bl	BsShow	@
	mov	r1, r8	@, D.33172
	sub	r0, r0, #1	@ Info,,
	tst	r0, #1	@ Info,
	mov	r5, r0, asr #1	@ Info, Info,
	mov	r0, r7	@, pBs
	addne	r5, r5, #1	@ Info, Info,
	rsbeq	r5, r5, #0	@ Info, Info
	bl	BsSkip	@
	b	.L18	@
.L25:
	.align	2
.L24:
	.word	.LC0
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
	add	r6, r0, #7	@ tmp121, D.33181,
	cmp	r0, #0	@ D.33181,
	movlt	r0, r6	@ D.33181, tmp121
	mov	r6, r0, asr #3	@ tmp122, D.33181,
	sub	r6, r6, #3	@ RemainByte, tmp122,
	cmp	r6, #0	@ RemainByte,
	movgt	r4, #0	@ i,
	bgt	.L29	@,
	b	.L30	@
.L36:
	bl	BsSkip	@
	cmp	r4, r6	@ i, RemainByte
	beq	.L30	@,
.L29:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	mov	r3, r0	@ D.33179,
	cmp	r3, #1	@ D.33179,
	mov	r0, r5	@, pBs
	bne	.L36	@,
	mov	r0, r3	@, D.33179
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L30:
	mov	r3, #0	@ D.33179,
	mov	r0, r3	@, D.33179
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r6, r0, #12288	@ tmp238, pCtx,
	mov	r4, r1	@ pSyntax, pSyntax
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r5, [r6, #3084]	@ pBs, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].pBs
	mov	r1, #32	@,
	ldr	r3, [r6, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	mov	r7, r0	@ pCtx, pCtx
	ldr	r2, .L47	@,
	bic	r3, r3, #65536	@ D.33184, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity,
	mov	r0, r5	@, pBs
	str	r3, [r6, #2696]	@ D.33184, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	bl	avs_f_v	@
	ldr	r2, .L47+4	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+8	@,
	mov	r1, #8	@,
	str	r0, [r4, #12]	@, pSyntax_11(D)->syn_seq.profile_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+12	@,
	mov	r1, #1	@,
	str	r0, [r4, #16]	@, pSyntax_11(D)->syn_seq.level_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+16	@,
	mov	r1, #14	@,
	strb	r0, [r4, #11]	@, pSyntax_11(D)->syn_seq.progressive_sequence
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+20	@,
	mov	r1, #14	@,
	str	r0, [r4, #20]	@, pSyntax_11(D)->syn_seq.horizontal_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+24	@,
	mov	r1, #2	@,
	str	r0, [r4, #24]	@, pSyntax_11(D)->syn_seq.vertical_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+28	@,
	mov	r1, #3	@,
	strb	r0, [r4, #7]	@, pSyntax_11(D)->syn_seq.chroma_format
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+32	@,
	mov	r1, #4	@,
	strb	r0, [r4, #8]	@, pSyntax_11(D)->syn_seq.sample_precision
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+36	@,
	mov	r1, #4	@,
	strb	r0, [r4, #9]	@, pSyntax_11(D)->syn_seq.aspect_ratio
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+40	@,
	mov	r1, #18	@,
	strb	r0, [r4, #10]	@, pSyntax_11(D)->syn_seq.frame_rate_code
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+44	@,
	mov	r1, #1	@,
	str	r0, [r4, #28]	@, pSyntax_11(D)->syn_seq.bit_rate_lower
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	ldr	r2, .L47+48	@,
	mov	r1, #12	@,
	strb	r0, [r4, #6]	@, pSyntax_11(D)->syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+52	@,
	mov	r1, #1	@,
	str	r0, [r4, #32]	@, pSyntax_11(D)->syn_seq.bit_rate_upper
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+44	@,
	mov	r1, #1	@,
	strb	r0, [r4, #5]	@, pSyntax_11(D)->syn_seq.low_delay
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	ldr	r2, .L47+56	@,
	mov	r1, #18	@,
	strb	r0, [r4, #6]	@, pSyntax_11(D)->syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L47+60	@,
	mov	r1, #3	@,
	str	r0, [r4, #36]	@, pSyntax_11(D)->syn_seq.bbv_buffer_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, [r4, #20]	@ pSyntax_11(D)->syn_seq.horizontal_size, pSyntax_11(D)->syn_seq.horizontal_size
	strb	r0, [r4, #4]	@, pSyntax_11(D)->syn_seq.reserved_bits
	ldr	r3, [r6, #2732]	@ D.33184, MEM[(struct AVS_SYNTAX *)pCtx_2(D) + 15000B].syn_seq.horizontal_size
	ldr	ip, [r6, #2736]	@ D.33189, MEM[(struct AVS_SYNTAX *)pCtx_2(D) + 15000B].syn_seq.vertical_size
	cmp	r2, r3	@ pSyntax_11(D)->syn_seq.horizontal_size, D.33184
	beq	.L46	@,
.L39:
	ldr	r2, .L47+64	@ tmp208,
	add	r0, r7, #16384	@ tmp205, pCtx,
	mov	r1, #1	@ tmp203,
	str	r1, [r6, #2708]	@ tmp203, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SizeChanged
	str	r3, [r0, #744]	@ D.33184, pCtx_2(D)->OldPicWidth
	ldr	r5, [r2]	@ D.33187, g_event_report
	str	ip, [r0, #748]	@ D.33189, pCtx_2(D)->OldPicHeight
	cmp	r5, #0	@ D.33187,
	beq	.L40	@,
	ldr	r7, [r4, #20]	@ pSyntax_11(D)->syn_seq.horizontal_size, pSyntax_11(D)->syn_seq.horizontal_size
	mov	r2, sp	@,
	ldr	lr, [r4, #24]	@ pSyntax_11(D)->syn_seq.vertical_size, pSyntax_11(D)->syn_seq.vertical_size
	mov	r1, #2	@,
	strh	r3, [sp]	@ movhi	@ D.33184, para
	strh	ip, [sp, #2]	@ movhi	@ D.33189, para
	ldr	r0, [r0, #224]	@, pCtx_2(D)->ChanID
	strh	r7, [sp, #4]	@ movhi	@ pSyntax_11(D)->syn_seq.horizontal_size, para
	strh	lr, [sp, #6]	@ movhi	@ pSyntax_11(D)->syn_seq.vertical_size, para
	blx	r5	@ D.33187
.L40:
	add	r0, r6, #2704	@, tmp238,
	mov	r1, r4	@, pSyntax
	mov	r2, #372	@,
	add	r0, r0, #8	@,,
	bl	memcpy	@
	ldr	r2, [r6, #2704]	@ MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt
	ldr	r3, [r6, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	mov	r0, #1	@ tmp224,
	add	r2, r2, r0	@ D.33184, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt,
	str	r0, [r6, #2700]	@ tmp224, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].NewSeq
	orr	r3, r3, #65536	@ D.33184, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity,
	str	r2, [r6, #2704]	@ D.33184, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].SeqCnt
	str	r3, [r6, #2696]	@ D.33184, MEM[(struct AVS_CODECINF *)pCtx_2(D) + 14880B].Integrity
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L46:
	ldr	r2, [r4, #24]	@ pSyntax_11(D)->syn_seq.vertical_size, pSyntax_11(D)->syn_seq.vertical_size
	cmp	r2, ip	@ pSyntax_11(D)->syn_seq.vertical_size, D.33189
	bne	.L39	@,
	b	.L40	@
.L48:
	.align	2
.L47:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
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
	ldr	r2, .L89	@,
	mov	r1, #32	@,
	bic	r3, r3, #262144	@ D.33242, pCodecInf_17(D)->Integrity,
	mov	r0, r5	@, pBs
	str	r3, [r6, #104]	@ D.33242, pCodecInf_17(D)->Integrity
	bl	avs_f_v	@
	mov	r0, r5	@, pBs
	ldr	r2, .L89+4	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	ldr	r3, [r4, #12]	@ pSyntax_19(D)->syn_seq.profile_id, pSyntax_19(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_19(D)->syn_seq.profile_id,
	str	r0, [r4, #88]	@, pSyntax_19(D)->syn_pic.bbv_delay
	beq	.L81	@,
.L50:
	ldr	r2, .L89+8	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.33243,
	strb	r0, [r4, #82]	@ D.33243, pSyntax_19(D)->syn_pic.time_code_flag
	cmp	r0, #1	@ D.33243,
	beq	.L82	@,
.L51:
	ldr	r2, .L89+12	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	ldr	r2, .L89+16	@,
	mov	r1, #8	@,
	str	r0, [r4, #100]	@, pSyntax_19(D)->syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pSyntax_19(D)->syn_seq.low_delay, pSyntax_19(D)->syn_seq.low_delay
	cmp	r3, #1	@ pSyntax_19(D)->syn_seq.low_delay,
	str	r0, [r4, #104]	@, pSyntax_19(D)->syn_pic.picture_distance
	beq	.L83	@,
.L52:
	ldr	r2, .L89+20	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ pSyntax_19(D)->syn_seq.progressive_sequence, pSyntax_19(D)->syn_seq.progressive_sequence
	cmp	r3, #1	@ pSyntax_19(D)->syn_seq.progressive_sequence,
	uxtb	r0, r0	@ D.33243,
	strb	r0, [r4, #72]	@ D.33243, pSyntax_19(D)->syn_pic.progressive_frame
	streqb	r3, [r4, #72]	@ pSyntax_19(D)->syn_seq.progressive_sequence, pSyntax_19(D)->syn_pic.progressive_frame
	beq	.L54	@,
	cmp	r0, #0	@ D.33243,
	beq	.L84	@,
.L54:
	mov	r3, #1	@ tmp252,
	strb	r3, [r4, #73]	@ tmp252, pSyntax_19(D)->syn_pic.picture_structure
.L55:
	ldr	r2, .L89+24	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L89+28	@,
	mov	r1, #1	@,
	strb	r0, [r4, #74]	@, pSyntax_19(D)->syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L89+32	@,
	mov	r1, #1	@,
	strb	r0, [r4, #75]	@, pSyntax_19(D)->syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L89+36	@,
	mov	r1, #6	@,
	strb	r0, [r4, #76]	@, pSyntax_19(D)->syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrh	r3, [r4, #72]	@ *pSyntax_19(D), *pSyntax_19(D)
	cmp	r3, #0	@ *pSyntax_19(D),
	strb	r0, [r4, #77]	@, pSyntax_19(D)->syn_pic.picture_qp
	beq	.L85	@,
.L56:
	ldr	r2, .L89+40	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L89+44	@,
	mov	r1, #1	@,
	strb	r0, [r4, #79]	@, pSyntax_19(D)->syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r3, #0	@ tmp269,
	str	r3, [r4, #112]	@ tmp269, pSyntax_19(D)->syn_pic.alpha_c_offset
	str	r3, [r4, #116]	@ tmp269, pSyntax_19(D)->syn_pic.beta_offset
	uxtb	r0, r0	@ D.33243,
	strb	r0, [r4, #80]	@ D.33243, pSyntax_19(D)->syn_pic.loop_filter_disable
	cmp	r0, r3	@ D.33243,
	beq	.L86	@,
.L58:
	ldr	r3, [r4, #12]	@ pSyntax_19(D)->syn_seq.profile_id, pSyntax_19(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_19(D)->syn_seq.profile_id,
	beq	.L87	@,
.L60:
	mov	r0, #1	@ tmp302,
	mov	r3, #0	@ tmp304,
	strb	r0, [r4, #85]	@ tmp302, pSyntax_19(D)->syn_pic.picture_reference_flag
	str	r3, [r4, #340]	@ tmp304, pSyntax_19(D)->syn_pic.derived_pic_coding_type
	ldr	r3, [r6, #104]	@ pCodecInf_17(D)->Integrity, pCodecInf_17(D)->Integrity
	orr	r3, r3, #262144	@ D.33242, pCodecInf_17(D)->Integrity,
	str	r3, [r6, #104]	@ D.33242, pCodecInf_17(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L84:
	ldr	r2, .L89+48	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	strb	r0, [r4, #73]	@, pSyntax_19(D)->syn_pic.picture_structure
	b	.L55	@
.L86:
	ldr	r2, .L89+52	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.33243,
	strb	r0, [r4, #81]	@ D.33243, pSyntax_19(D)->syn_pic.loop_filter_parameter_flag
	cmp	r0, #0	@ D.33243,
	beq	.L58	@,
	ldr	r1, .L89+56	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L89+60	@,
	str	r0, [r4, #112]	@, pSyntax_19(D)->syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, pSyntax_19(D)->syn_pic.beta_offset
	b	.L58	@
.L85:
	ldr	r2, .L89+64	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	strb	r0, [r4, #78]	@, pSyntax_19(D)->syn_pic.skip_mode_flag
	b	.L56	@
.L87:
	ldr	r2, .L89+68	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #0	@ D.33242,
	str	r0, [r4, #120]	@ D.33242, pSyntax_19(D)->syn_pic.weighting_quant_flag
	bne	.L61	@,
.L70:
	mov	r0, r5	@, pBs
	ldr	r2, .L89+72	@,
	mov	r1, #1	@,
	bl	avs_u_v	@
	str	r0, [r4, #324]	@, pSyntax_19(D)->syn_pic.aec_enable
	b	.L60	@
.L81:
	ldr	r2, .L89+12	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	ldr	r2, .L89+76	@,
	mov	r1, #7	@,
	str	r0, [r4, #100]	@, pSyntax_19(D)->syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #88]	@ pSyntax_19(D)->syn_pic.bbv_delay, pSyntax_19(D)->syn_pic.bbv_delay
	mov	r2, #1	@ tmp236,
	strb	r2, [r4, #368]	@ tmp236, pSyntax_19(D)->bAvsPlus
	str	r0, [r4, #92]	@ D.33242, pSyntax_19(D)->syn_pic.bbv_delay_extension
	orr	r0, r0, r3, asl #7	@ D.33242, D.33242, pSyntax_19(D)->syn_pic.bbv_delay,
	str	r0, [r4, #88]	@ D.33242, pSyntax_19(D)->syn_pic.bbv_delay
	b	.L50	@
.L82:
	ldr	r2, .L89+80	@,
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	str	r0, [r4, #96]	@, pSyntax_19(D)->syn_pic.time_code
	b	.L51	@
.L83:
	ldr	r1, .L89+84	@,
	mov	r0, r5	@, pBs
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, pSyntax_19(D)->syn_pic.bbv_check_times
	b	.L52	@
.L61:
	ldr	r2, .L89+88	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L89+92	@,
	mov	r1, #1	@,
	str	r0, [r4, #124]	@, pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #0	@ D.33242,
	str	r0, [r4, #128]	@ D.33242, pSyntax_19(D)->syn_pic.chroma_quant_param_disable
	beq	.L88	@,
.L62:
	ldr	r2, .L89+96	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L89+100	@,
	mov	r1, #2	@,
	str	r0, [r4, #140]	@, pSyntax_19(D)->syn_pic.weighting_quant_param_index
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #140]	@ D.33242, pSyntax_19(D)->syn_pic.weighting_quant_param_index
	cmp	r3, #1	@ D.33242,
	str	r0, [r4, #144]	@, pSyntax_19(D)->syn_pic.weighting_quant_model
	beq	.L65	@,
	ldr	r2, [r4, #124]	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.33242,
	beq	.L65	@,
	cmp	r3, #2	@ D.33242,
	addeq	r7, r4, #168	@ ivtmp.102, pSyntax,
	bne	.L70	@,
.L69:
	add	r8, r4, #192	@ D.33248, pSyntax,
.L68:
	ldr	r1, .L89+104	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r7, #4]!	@, MEM[base: _163, offset: 0B]
	cmp	r7, r8	@ ivtmp.102, D.33248
	bne	.L68	@,
	b	.L70	@
.L88:
	ldr	r1, .L89+108	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L89+112	@,
	str	r0, [r4, #132]	@, pSyntax_19(D)->syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, pSyntax_19(D)->syn_pic.chroma_quant_param_delta_v
	b	.L62	@
.L65:
	add	r8, r4, #144	@ ivtmp.116, pSyntax,
	add	r7, r4, #168	@ ivtmp.102, pSyntax,
.L64:
	ldr	r1, .L89+116	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r8, #4]!	@, MEM[base: _13, offset: 0B]
	cmp	r8, r7	@ ivtmp.116, ivtmp.102
	bne	.L64	@,
	ldr	r3, [r4, #140]	@ D.33242, pSyntax_19(D)->syn_pic.weighting_quant_param_index
	cmp	r3, #2	@ D.33242,
	beq	.L69	@,
	ldr	r2, [r4, #124]	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_19(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.33242,
	bne	.L70	@,
	b	.L69	@
.L90:
	.align	2
.L89:
	.word	.LC17
	.word	.LC18
	.word	.LC20
	.word	.LC12
	.word	.LC22
	.word	.LC24
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC16
	.word	.LC31
	.word	.LC25
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC30
	.word	.LC35
	.word	.LC36
	.word	.LC19
	.word	.LC21
	.word	.LC23
	.word	.LC37
	.word	.LC38
	.word	.LC41
	.word	.LC42
	.word	.LC44
	.word	.LC39
	.word	.LC40
	.word	.LC43
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
	ldr	r2, .L144	@,
	mov	r1, #32	@,
	bic	r3, r3, #262144	@ D.33311, pCodecInf_18(D)->Integrity,
	mov	r0, r5	@, pBs
	str	r3, [r6, #104]	@ D.33311, pCodecInf_18(D)->Integrity
	bl	avs_f_v	@
	mov	r0, r5	@, pBs
	ldr	r2, .L144+4	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	ldr	r3, [r4, #12]	@ pSyntax_20(D)->syn_seq.profile_id, pSyntax_20(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_20(D)->syn_seq.profile_id,
	str	r0, [r4, #88]	@, pSyntax_20(D)->syn_pic.bbv_delay
	beq	.L136	@,
.L92:
	ldr	r2, .L144+8	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L144+12	@,
	mov	r1, #8	@,
	strb	r0, [r4, #83]	@, pSyntax_20(D)->syn_pic.picture_coding_type
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_seq.low_delay, pSyntax_20(D)->syn_seq.low_delay
	cmp	r3, #1	@ pSyntax_20(D)->syn_seq.low_delay,
	str	r0, [r4, #104]	@, pSyntax_20(D)->syn_pic.picture_distance
	beq	.L137	@,
.L93:
	ldr	r2, .L144+16	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.33312,
	strb	r0, [r4, #72]	@ D.33312, pSyntax_20(D)->syn_pic.progressive_frame
	cmp	r0, #0	@ D.33312,
	movne	r3, #1	@ tmp228,
	strneb	r3, [r4, #73]	@ tmp228, pSyntax_20(D)->syn_pic.picture_structure
	beq	.L138	@,
.L95:
	ldr	r2, .L144+20	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L144+24	@,
	mov	r1, #1	@,
	strb	r0, [r4, #74]	@, pSyntax_20(D)->syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L144+28	@,
	mov	r1, #1	@,
	strb	r0, [r4, #75]	@, pSyntax_20(D)->syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L144+32	@,
	mov	r1, #6	@,
	strb	r0, [r4, #76]	@, pSyntax_20(D)->syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r4, #83]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_coding_type, pSyntax_20(D)->syn_pic.picture_coding_type
	cmp	r3, #2	@ pSyntax_20(D)->syn_pic.picture_coding_type,
	strb	r0, [r4, #77]	@, pSyntax_20(D)->syn_pic.picture_qp
	beq	.L139	@,
.L96:
	ldr	r2, .L144+36	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	strb	r0, [r4, #85]	@, pSyntax_20(D)->syn_pic.picture_reference_flag
.L98:
	ldr	r2, .L144+40	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r2, [r4, #83]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_coding_type, pSyntax_20(D)->syn_pic.picture_coding_type
	mov	r3, #0	@ tmp246,
	str	r3, [r4, #332]	@ tmp246, pSyntax_20(D)->syn_pic.p_filed_enhanced_flag
	cmp	r2, #2	@ pSyntax_20(D)->syn_pic.picture_coding_type,
	str	r3, [r4, #336]	@ tmp246, pSyntax_20(D)->syn_pic.b_filed_enhanced_flag
	strb	r0, [r4, #86]	@, pSyntax_20(D)->syn_pic.no_forward_reference_flag
	beq	.L140	@,
	ldr	r2, .L144+44	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	str	r0, [r4, #332]	@, pSyntax_20(D)->syn_pic.p_filed_enhanced_flag
.L100:
	ldrb	r3, [r4, #73]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_structure, pSyntax_20(D)->syn_pic.picture_structure
	cmp	r3, #1	@ pSyntax_20(D)->syn_pic.picture_structure,
	beq	.L101	@,
	ldr	r3, [r4, #12]	@ pSyntax_20(D)->syn_seq.profile_id, pSyntax_20(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_20(D)->syn_seq.profile_id,
	beq	.L102	@,
.L101:
	mov	r3, #0	@ tmp253,
	str	r3, [r4, #332]	@ tmp253, pSyntax_20(D)->syn_pic.p_filed_enhanced_flag
	str	r3, [r4, #336]	@ tmp253, pSyntax_20(D)->syn_pic.b_filed_enhanced_flag
.L102:
	ldr	r2, .L144+48	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L144+52	@,
	mov	r1, #1	@,
	strb	r0, [r4, #79]	@, pSyntax_20(D)->syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L144+56	@,
	mov	r1, #1	@,
	strb	r0, [r4, #78]	@, pSyntax_20(D)->syn_pic.skip_mode_flag
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r3, #0	@ tmp261,
	str	r3, [r4, #112]	@ tmp261, pSyntax_20(D)->syn_pic.alpha_c_offset
	str	r3, [r4, #116]	@ tmp261, pSyntax_20(D)->syn_pic.beta_offset
	uxtb	r0, r0	@ D.33312,
	strb	r0, [r4, #80]	@ D.33312, pSyntax_20(D)->syn_pic.loop_filter_disable
	cmp	r0, r3	@ D.33312,
	beq	.L141	@,
.L104:
	ldr	r3, [r4, #12]	@ pSyntax_20(D)->syn_seq.profile_id, pSyntax_20(D)->syn_seq.profile_id
	cmp	r3, #72	@ pSyntax_20(D)->syn_seq.profile_id,
	beq	.L142	@,
.L106:
	ldrb	r3, [r4, #83]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_coding_type, pSyntax_20(D)->syn_pic.picture_coding_type
	mov	r0, #1	@,
	cmp	r3, #1	@ pSyntax_20(D)->syn_pic.picture_coding_type,
	movne	r3, #2	@ tmp296,
	str	r3, [r4, #340]	@ tmp296, pSyntax_20(D)->syn_pic.derived_pic_coding_type
	ldr	r3, [r6, #104]	@ pCodecInf_18(D)->Integrity, pCodecInf_18(D)->Integrity
	orr	r3, r3, #262144	@ D.33311, pCodecInf_18(D)->Integrity,
	str	r3, [r6, #104]	@ D.33311, pCodecInf_18(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L139:
	ldrb	r3, [r4, #73]	@ zero_extendqisi2	@ pSyntax_20(D)->syn_pic.picture_structure, pSyntax_20(D)->syn_pic.picture_structure
	cmp	r3, #1	@ pSyntax_20(D)->syn_pic.picture_structure,
	streqb	r3, [r4, #85]	@ pSyntax_20(D)->syn_pic.picture_structure, pSyntax_20(D)->syn_pic.picture_reference_flag
	bne	.L96	@,
	b	.L98	@
.L138:
	ldr	r2, .L144+60	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.33312,
	strb	r0, [r4, #73]	@ D.33312, pSyntax_20(D)->syn_pic.picture_structure
	cmp	r0, #0	@ D.33312,
	bne	.L95	@,
	ldr	r2, .L144+64	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	strb	r0, [r4, #84]	@, pSyntax_20(D)->syn_pic.advanced_pred_mode_disable
	b	.L95	@
.L141:
	ldr	r2, .L144+68	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.33312,
	strb	r0, [r4, #81]	@ D.33312, pSyntax_20(D)->syn_pic.loop_filter_parameter_flag
	cmp	r0, #0	@ D.33312,
	beq	.L104	@,
	ldr	r1, .L144+72	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L144+76	@,
	str	r0, [r4, #112]	@, pSyntax_20(D)->syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, pSyntax_20(D)->syn_pic.beta_offset
	b	.L104	@
.L140:
	ldr	r2, .L144+80	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	str	r0, [r4, #336]	@, pSyntax_20(D)->syn_pic.b_filed_enhanced_flag
	b	.L100	@
.L142:
	ldr	r2, .L144+84	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #1	@ D.33311,
	mov	r7, r0	@ D.33311,
	str	r0, [r4, #120]	@ D.33311, pSyntax_20(D)->syn_pic.weighting_quant_flag
	beq	.L107	@,
.L116:
	mov	r0, r5	@, pBs
	ldr	r2, .L144+88	@,
	mov	r1, #1	@,
	bl	avs_u_v	@
	str	r0, [r4, #324]	@, pSyntax_20(D)->syn_pic.aec_enable
	b	.L106	@
.L136:
	ldr	r2, .L144+92	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	ldr	r2, .L144+96	@,
	mov	r1, #7	@,
	str	r0, [r4, #100]	@, pSyntax_20(D)->syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #88]	@ pSyntax_20(D)->syn_pic.bbv_delay, pSyntax_20(D)->syn_pic.bbv_delay
	mov	r2, #1	@ tmp215,
	strb	r2, [r4, #368]	@ tmp215, pSyntax_20(D)->bAvsPlus
	str	r0, [r4, #92]	@ D.33311, pSyntax_20(D)->syn_pic.bbv_delay_extension
	orr	r0, r0, r3, asl #7	@ D.33311, D.33311, pSyntax_20(D)->syn_pic.bbv_delay,
	str	r0, [r4, #88]	@ D.33311, pSyntax_20(D)->syn_pic.bbv_delay
	b	.L92	@
.L137:
	ldr	r1, .L144+100	@,
	mov	r0, r5	@, pBs
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, pSyntax_20(D)->syn_pic.bbv_check_times
	b	.L93	@
.L107:
	mov	r1, r0	@, D.33311
	ldr	r2, .L144+104	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, r7	@, D.33311
	ldr	r2, .L144+108	@,
	str	r0, [r4, #124]	@, pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #0	@ D.33311,
	str	r0, [r4, #128]	@ D.33311, pSyntax_20(D)->syn_pic.chroma_quant_param_disable
	beq	.L143	@,
.L108:
	ldr	r2, .L144+112	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L144+116	@,
	mov	r1, #2	@,
	str	r0, [r4, #140]	@, pSyntax_20(D)->syn_pic.weighting_quant_param_index
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #140]	@ D.33311, pSyntax_20(D)->syn_pic.weighting_quant_param_index
	cmp	r3, #1	@ D.33311,
	str	r0, [r4, #144]	@, pSyntax_20(D)->syn_pic.weighting_quant_model
	beq	.L111	@,
	ldr	r2, [r4, #124]	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.33311,
	beq	.L111	@,
	cmp	r3, #2	@ D.33311,
	addeq	r7, r4, #168	@ ivtmp.132, pSyntax,
	bne	.L116	@,
.L115:
	add	r8, r4, #192	@ D.33309, pSyntax,
.L114:
	ldr	r1, .L144+120	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r7, #4]!	@, MEM[base: _203, offset: 0B]
	cmp	r7, r8	@ ivtmp.132, D.33309
	bne	.L114	@,
	b	.L116	@
.L111:
	add	r8, r4, #144	@ ivtmp.146, pSyntax,
	add	r7, r4, #168	@ ivtmp.132, pSyntax,
.L110:
	ldr	r1, .L144+124	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r8, #4]!	@, MEM[base: _1, offset: 0B]
	cmp	r8, r7	@ ivtmp.146, ivtmp.132
	bne	.L110	@,
	ldr	r3, [r4, #140]	@ D.33311, pSyntax_20(D)->syn_pic.weighting_quant_param_index
	cmp	r3, #2	@ D.33311,
	beq	.L115	@,
	ldr	r2, [r4, #124]	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable, pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r2, #0	@ pSyntax_20(D)->syn_pic.mb_adapt_weighting_quant_disable,
	cmpeq	r3, #3	@, D.33311,
	bne	.L116	@,
	b	.L115	@
.L143:
	ldr	r1, .L144+128	@,
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r1, .L144+132	@,
	str	r0, [r4, #132]	@, pSyntax_20(D)->syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, pSyntax_20(D)->syn_pic.chroma_quant_param_delta_v
	b	.L108	@
.L145:
	.align	2
.L144:
	.word	.LC45
	.word	.LC18
	.word	.LC46
	.word	.LC22
	.word	.LC24
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC48
	.word	.LC49
	.word	.LC51
	.word	.LC16
	.word	.LC30
	.word	.LC31
	.word	.LC25
	.word	.LC47
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC50
	.word	.LC35
	.word	.LC36
	.word	.LC12
	.word	.LC19
	.word	.LC23
	.word	.LC37
	.word	.LC38
	.word	.LC41
	.word	.LC42
	.word	.LC44
	.word	.LC43
	.word	.LC39
	.word	.LC40
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
	add	r4, r0, #12288	@ tmp360, pCtx,
	mov	r7, r1	@ ExtFrm, ExtFrm
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r2, .L186	@,
	ldr	r0, [r4, #3084]	@, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pBs
	mov	r1, #32	@,
	bl	avs_f_v	@
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity
	cmp	r7, #0	@ ExtFrm,
	orr	r3, r3, #1048576	@ D.33325, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.33325, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].Integrity
	bne	.L147	@,
	ldr	r1, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	add	r5, r6, #16384	@ tmp361, pCtx,
	cmp	r1, #0	@ D.33326,
	beq	.L148	@,
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r4, #3376]	@ ExtFrm, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
.L148:
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	GetUsd	@
	cmp	r0, #0	@ D.33326,
	str	r0, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	beq	.L158	@,
	ldr	r3, [r6]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	add	r0, r0, #1056	@ tmp220, D.33326,
	mov	r1, #9	@ tmp223,
	ldrd	r2, [r3, #56]	@ D.33329, pCtx_11(D)->pstExtraData,
	strd	r2, [r0]	@ D.33329, _25->PTS
	ldr	r3, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	str	r1, [r3, #1036]	@ tmp223, _30->from
	ldr	r3, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r2, [r4, #2704]	@ D.33325, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].SeqCnt
	str	r2, [r3, #1040]	@ D.33325, _32->seq_cnt
	ldr	r2, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r3, [r5, #76]	@ pCtx_11(D)->LastPacket.StreamPack[0].LenInByte, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	sub	r3, r3, #4	@ D.33325, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte,
	str	r3, [r2, #1048]	@ D.33325, _35->data_size
	ldr	r0, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r2, [r0, #1048]	@ D.33327, _40->data_size
	cmp	r2, #1024	@ D.33327,
	movgt	r3, #1024	@ tmp236,
	strgt	r3, [r0, #1048]	@ tmp236, _40->data_size
	ldrgt	r0, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r1, [r5, #64]	@ pCtx_11(D)->LastPacket.StreamPack[0].VirAddr, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr
	ldrgt	r2, [r0, #1048]	@ D.33327, _165->data_size
	add	r1, r1, #4	@, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr,
	bl	memcpy	@
	ldrb	r3, [r5, #69]	@ zero_extendqisi2	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg, pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg,
	bne	.L153	@,
	ldr	r2, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r1, [r5, #156]	@ pCtx_11(D)->LastPacket.StreamPack[1].LenInByte, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	ldr	r3, [r2, #1048]	@ _51->data_size, _51->data_size
	add	r3, r3, r1	@ D.33325, _51->data_size, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	str	r3, [r2, #1048]	@ D.33325, _51->data_size
	ldr	r3, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r2, [r3, #1048]	@ D.33327, _58->data_size
	cmp	r2, #1024	@ D.33327,
	movgt	r2, #1024	@ tmp259,
	strgt	r2, [r3, #1048]	@ tmp259, _58->data_size
	ldrgt	r3, [r4, #3376]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	ldr	r0, [r5, #76]	@ D.33325, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	ldrgt	r2, [r3, #1048]	@ D.33327, _169->data_size
	rsb	r2, r0, r2	@ D.33325, D.33325, D.33327
	cmn	r2, #4	@ D.33325,
	beq	.L153	@,
	sub	r0, r0, #4	@ D.33334, D.33325,
	add	r2, r2, #4	@, D.33325,
	add	r0, r3, r0	@, D.33326, D.33334
	ldr	r1, [r5, #144]	@, pCtx_11(D)->LastPacket.StreamPack[1].VirAddr
	bl	memcpy	@
.L153:
	ldr	r3, .L186+4	@ tmp274,
	ldr	r3, [r3]	@ D.33335, g_event_report
	cmp	r3, #0	@ D.33335,
	ldrne	ip, [r4, #3376]	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pSeqUD
	bne	.L185	@,
	b	.L184	@
.L147:
	ldr	r1, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	add	r5, r6, #16384	@ tmp361, pCtx,
	cmp	r1, #0	@ D.33326,
	beq	.L157	@,
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp289,
	str	r3, [r4, #3380]	@ tmp289, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
.L157:
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	bl	GetUsd	@
	cmp	r0, #0	@ D.33326,
	str	r0, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	beq	.L158	@,
	ldr	r3, [r6]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	add	r0, r0, #1056	@ tmp297, D.33326,
	mov	r1, #10	@ tmp300,
	ldrd	r2, [r3, #56]	@ D.33329, pCtx_11(D)->pstExtraData,
	strd	r2, [r0]	@ D.33329, _84->PTS
	ldr	r3, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	str	r1, [r3, #1036]	@ tmp300, _89->from
	ldr	r3, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r2, [r4, #2704]	@ D.33325, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].SeqCnt
	str	r2, [r3, #1040]	@ D.33325, _91->seq_cnt
	ldr	r2, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r3, [r5, #76]	@ pCtx_11(D)->LastPacket.StreamPack[0].LenInByte, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	sub	r3, r3, #4	@ D.33325, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte,
	str	r3, [r2, #1048]	@ D.33325, _94->data_size
	ldr	r0, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r2, [r0, #1048]	@ D.33327, _99->data_size
	cmp	r2, #1024	@ D.33327,
	movgt	r3, #1024	@ tmp313,
	strgt	r3, [r0, #1048]	@ tmp313, _99->data_size
	ldrgt	r0, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r1, [r5, #64]	@ pCtx_11(D)->LastPacket.StreamPack[0].VirAddr, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr
	ldrgt	r2, [r0, #1048]	@ D.33327, _157->data_size
	add	r1, r1, #4	@, pCtx_11(D)->LastPacket.StreamPack[0].VirAddr,
	bl	memcpy	@
	ldrb	r3, [r5, #69]	@ zero_extendqisi2	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg, pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg
	cmp	r3, #0	@ pCtx_11(D)->LastPacket.StreamPack[0].IsLastSeg,
	bne	.L161	@,
	ldr	r2, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r1, [r5, #156]	@ pCtx_11(D)->LastPacket.StreamPack[1].LenInByte, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	ldr	r3, [r2, #1048]	@ _110->data_size, _110->data_size
	add	r3, r3, r1	@ D.33325, _110->data_size, pCtx_11(D)->LastPacket.StreamPack[1].LenInByte
	str	r3, [r2, #1048]	@ D.33325, _110->data_size
	ldr	r3, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r2, [r3, #1048]	@ D.33327, _117->data_size
	cmp	r2, #1024	@ D.33327,
	movgt	r2, #1024	@ tmp336,
	strgt	r2, [r3, #1048]	@ tmp336, _117->data_size
	ldrgt	r3, [r4, #3380]	@ D.33326, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
	ldr	r0, [r5, #76]	@ D.33325, pCtx_11(D)->LastPacket.StreamPack[0].LenInByte
	ldrgt	r2, [r3, #1048]	@ D.33327, _161->data_size
	rsb	r2, r0, r2	@ D.33325, D.33325, D.33327
	cmn	r2, #4	@ D.33325,
	beq	.L161	@,
	sub	r0, r0, #4	@ D.33334, D.33325,
	add	r2, r2, #4	@, D.33325,
	add	r0, r3, r0	@, D.33326, D.33334
	ldr	r1, [r5, #144]	@, pCtx_11(D)->LastPacket.StreamPack[1].VirAddr
	bl	memcpy	@
.L161:
	ldr	r3, .L186+4	@ tmp351,
	ldr	r3, [r3]	@ D.33335, g_event_report
	cmp	r3, #0	@ D.33335,
	beq	.L184	@,
	ldr	ip, [r4, #3380]	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD, MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD
.L185:
	add	r2, sp, #8	@ tmp355,,
	ldr	r0, [r5, #224]	@, pCtx_11(D)->ChanID
	mov	r1, #6	@,
	str	ip, [r2, #-4]!	@ MEM[(struct AVS_CODECINF *)pCtx_11(D) + 14880B].pPicUD,
	blx	r3	@ D.33335
.L184:
	mov	r0, #1	@ D.33324,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L158:
	mov	r0, #0	@ D.33324,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L187:
	.align	2
.L186:
	.word	.LC52
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ pSyntax, pSyntax
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_3(D)->pBs
	mov	r1, #4	@,
	ldr	r2, .L192	@,
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L192+4	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L192+8	@,
	mov	r1, #1	@,
	strb	r0, [r5, #42]	@, pSyntax_9(D)->syn_sdext.video_format
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L192+12	@,
	mov	r1, #1	@,
	strb	r0, [r5, #43]	@, pSyntax_9(D)->syn_sdext.sample_range
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.33353,
	strb	r0, [r5, #44]	@ D.33353, pSyntax_9(D)->syn_sdext.colour_description
	cmp	r0, #1	@ D.33353,
	beq	.L191	@,
.L189:
	ldr	r2, .L192+16	@,
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L192+20	@,
	mov	r1, #1	@,
	str	r0, [r5, #60]	@, pSyntax_9(D)->syn_sdext.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	ldr	r2, .L192+24	@,
	mov	r1, #14	@,
	strb	r0, [r5, #41]	@, pSyntax_9(D)->syn_sdext.marker_bit
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L192+28	@,
	mov	r1, #2	@,
	str	r0, [r5, #64]	@, pSyntax_9(D)->syn_sdext.display_vertical_size
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	strb	r0, [r5, #40]	@, pSyntax_9(D)->syn_sdext.reserved_bits
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r6, #104]	@ pCodecInf_3(D)->Integrity, pCodecInf_3(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #131072	@ D.33352, pCodecInf_3(D)->Integrity,
	str	r3, [r6, #104]	@ D.33352, pCodecInf_3(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L191:
	ldr	r2, .L192+32	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L192+36	@,
	mov	r1, #8	@,
	str	r0, [r5, #48]	@, pSyntax_9(D)->syn_sdext.colour_primaries
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L192+40	@,
	mov	r1, #8	@,
	str	r0, [r5, #52]	@, pSyntax_9(D)->syn_sdext.transfer_characteristics
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	str	r0, [r5, #56]	@, pSyntax_9(D)->syn_sdext.matrix_coefficients
	b	.L189	@
.L193:
	.align	2
.L192:
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC60
	.word	.LC12
	.word	.LC61
	.word	.LC16
	.word	.LC57
	.word	.LC58
	.word	.LC59
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
	ldr	r2, .L196	@,
	ldr	r6, .L196+4	@ tmp121,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L196+8	@,
	mov	r1, #1	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L196+12	@,
	mov	r1, #8	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L196+16	@,
	mov	r1, #1	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L196+20	@,
	mov	r1, #7	@,
	bl	avs_u_v	@
	mov	r2, r6	@, tmp121
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L196+24	@,
	mov	r1, #20	@,
	bl	avs_u_v	@
	mov	r2, r6	@, tmp121
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L196+28	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r6	@, tmp121
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	ldr	r2, .L196+32	@,
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r5, #104]	@ pCodecInf_2(D)->Integrity, pCodecInf_2(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #2097152	@ D.33365, pCodecInf_2(D)->Integrity,
	str	r3, [r5, #104]	@ D.33365, pCodecInf_2(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L197:
	.align	2
.L196:
	.word	.LC53
	.word	.LC12
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC16
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.fnend
	.size	AVS_copyright_extension, .-AVS_copyright_extension
	.align	2
	.global	AVS_camera_parameters_extension
	.type	AVS_camera_parameters_extension, %function
AVS_camera_parameters_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, #4	@,
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_2(D)->pBs
	mov	r6, r0	@ pCodecInf, pCodecInf
	ldr	r7, .L200	@ tmp117,
	ldr	r5, .L200+4	@ tmp119,
	ldr	r2, .L200+8	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r2, r7	@, tmp117
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+12	@,
	mov	r1, #7	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+16	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+20	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+24	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+28	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+32	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+36	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+40	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+44	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+48	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+52	@,
	mov	r1, #16	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+56	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+60	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+64	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+68	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+72	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	ldr	r2, .L200+76	@,
	mov	r1, #22	@,
	bl	avs_u_v	@
	mov	r2, r5	@, tmp119
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r2, r7	@, tmp117
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r6, #104]	@ pCodecInf_2(D)->Integrity, pCodecInf_2(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #4194304	@ D.33374, pCodecInf_2(D)->Integrity,
	str	r3, [r6, #104]	@ D.33374, pCodecInf_2(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L201:
	.align	2
.L200:
	.word	.LC16
	.word	.LC12
	.word	.LC53
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
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
	mov	r8, r1	@ pSyntax, pSyntax
	ldr	r4, [r0, #492]	@ pBs, pCodecInf_5(D)->pBs
	mov	r9, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	ldr	r2, .L222	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldrb	r3, [r8, #11]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_seq.progressive_sequence, pSyntax_8(D)->syn_seq.progressive_sequence
	cmp	r3, #1	@ pSyntax_8(D)->syn_seq.progressive_sequence,
	beq	.L220	@,
	ldrb	r3, [r8, #73]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.picture_structure, pSyntax_8(D)->syn_pic.picture_structure
	cmp	r3, #0	@ pSyntax_8(D)->syn_pic.picture_structure,
	bne	.L221	@,
.L204:
	mov	r3, #1	@ tmp138,
	str	r3, [r8]	@ tmp138, pSyntax_8(D)->NumOfFrameCentreOffsets
.L206:
	add	r7, r8, #340	@ ivtmp.167, pSyntax,
	add	r6, r8, #352	@ ivtmp.176, pSyntax,
	mov	r5, #0	@ i,
.L208:
	ldr	r2, .L222+4	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	add	r5, r5, #1	@ i, i,
	bl	avs_u_v	@
	ldr	r2, .L222+8	@,
	mov	r1, #1	@,
	str	r0, [r7, #4]!	@, MEM[base: _38, offset: 0B]
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	ldr	r2, .L222+12	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	ldr	r2, .L222+8	@,
	mov	r1, #1	@,
	str	r0, [r6, #4]!	@, MEM[base: _20, offset: 0B]
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	ldr	r3, [r8]	@ pSyntax_8(D)->NumOfFrameCentreOffsets, pSyntax_8(D)->NumOfFrameCentreOffsets
	cmp	r3, r5	@ pSyntax_8(D)->NumOfFrameCentreOffsets, i
	bgt	.L208	@,
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r9, #104]	@ pCodecInf_5(D)->Integrity, pCodecInf_5(D)->Integrity
	mov	r0, #1	@,
	orr	r3, r3, #524288	@ D.33414, pCodecInf_5(D)->Integrity,
	str	r3, [r9, #104]	@ D.33414, pCodecInf_5(D)->Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L221:
	ldrb	r3, [r8, #75]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.repeat_first_field, pSyntax_8(D)->syn_pic.repeat_first_field
	cmp	r3, #1	@ pSyntax_8(D)->syn_pic.repeat_first_field,
	beq	.L207	@,
.L205:
	mov	r3, #2	@ tmp137,
	str	r3, [r8]	@ tmp137, pSyntax_8(D)->NumOfFrameCentreOffsets
	b	.L206	@
.L220:
	ldrb	r3, [r8, #75]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.repeat_first_field, pSyntax_8(D)->syn_pic.repeat_first_field
	cmp	r3, #1	@ pSyntax_8(D)->syn_pic.repeat_first_field,
	bne	.L204	@,
	ldrb	r3, [r8, #74]	@ zero_extendqisi2	@ pSyntax_8(D)->syn_pic.top_field_first, pSyntax_8(D)->syn_pic.top_field_first
	cmp	r3, #1	@ pSyntax_8(D)->syn_pic.top_field_first,
	bne	.L205	@,
.L207:
	mov	r3, #3	@ tmp136,
	str	r3, [r8]	@ tmp136, pSyntax_8(D)->NumOfFrameCentreOffsets
	b	.L206	@
.L223:
	.align	2
.L222:
	.word	.LC53
	.word	.LC85
	.word	.LC12
	.word	.LC86
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
	ldr	r2, .L232	@,
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsShow	@
	sub	r0, r0, #2	@ tmp122,,
	cmp	r0, #9	@ tmp122,
	ldrls	pc, [pc, r0, asl #2]	@ tmp122
	b	.L225	@
.L227:
	.word	.L226
	.word	.L225
	.word	.L228
	.word	.L225
	.word	.L225
	.word	.L229
	.word	.L225
	.word	.L225
	.word	.L225
	.word	.L230
.L230:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_camera_parameters_extension	@
.L229:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_picture_display_extension	@
.L228:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_copyright_extension	@
.L226:
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_sequence_display_extension	@
.L225:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsSkip	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L233:
	.align	2
.L232:
	.word	.LC87
	.fnend
	.size	AVS_extension, .-AVS_extension
	.align	2
	.global	AVS_AllocateVHB
	.type	AVS_AllocateVHB, %function
AVS_AllocateVHB:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #12288	@ tmp150, pCtx,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0	@ pCtx, pCtx
	ldr	r5, [r3, #2732]	@ pCodecInf$124$horizontal_size, MEM[(struct AVS_CTX_S *)pCtx_11(D) + 15020B]
	.pad #48
	sub	sp, sp, #48	@,,
	ldr	r7, [r3, #2736]	@ pCodecInf$124$vertical_size, MEM[(struct AVS_CTX_S *)pCtx_11(D) + 15024B]
	cmp	r5, #31	@ pCodecInf$124$horizontal_size,
	bls	.L235	@,
	cmp	r7, #31	@ pCodecInf$124$vertical_size,
	bls	.L235	@,
	ldr	r3, [r0]	@ D.33431, pCtx_11(D)->pstExtraData
	ldr	r4, [r3, #608]	@ D.33428, _15->stChanOption.s32ReRangeEn
	ldr	r2, [r3, #32]	@ _15->eCapLevel, _15->eCapLevel
	cmp	r4, #0	@ D.33428,
	bne	.L238	@,
	cmp	r2, #25	@ _15->eCapLevel,
	beq	.L261	@,
	mov	r4, #4	@ PmvNum,
	add	r8, r0, #16384	@ tmp194, pCtx,
	mov	r10, #5	@ D.33430,
	mov	r9, r4	@ DecFsNum, PmvNum
.L239:
	mov	r1, #36	@,
	add	r0, sp, #12	@ tmp196,,
	bl	__memzero	@
	ldr	r3, [r6]	@ D.33431, pCtx_11(D)->pstExtraData
	mov	r2, #0	@ tmp167,
	str	r5, [sp, #24]	@ pCodecInf$124$horizontal_size, FspInstCfg.s32DecFsWidth
	str	r7, [sp, #28]	@ pCodecInf$124$vertical_size, FspInstCfg.s32DecFsHeight
	ldr	r1, [r3, #20]	@ _43->s32DnrDispOutEnable, _43->s32DnrDispOutEnable
	str	r7, [sp, #44]	@ pCodecInf$124$vertical_size, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _43->eCapLevel, _43->eCapLevel
	strb	r1, [sp, #12]	@ _43->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	cmp	r3, #24	@ _43->eCapLevel,
	str	r5, [sp, #40]	@ pCodecInf$124$horizontal_size, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #14]	@ tmp167, FspInstCfg.s32RprEnable
	beq	.L248	@,
	uxtb	r4, r4	@ D.33429, PmvNum
	strb	r9, [sp, #17]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r10, [sp, #19]	@ D.33430, FspInstCfg.s32ExpectedDispFsNum
.L251:
	add	r1, sp, #12	@ tmp197,,
	ldr	r0, [r8, #224]	@, pCtx_11(D)->ChanID
	strb	r4, [sp, #20]	@ D.33429, FspInstCfg.s32ExpectedPmvNum
	mov	r5, #0	@ tmp173,
	strb	r5, [sp, #16]	@ tmp173, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r4, r0, #0	@ D.33428,
	bne	.L249	@,
	ldr	r1, [r6]	@ D.33431, pCtx_11(D)->pstExtraData
	add	r3, sp, #8	@,,
	ldr	r0, [r8, #224]	@, pCtx_11(D)->ChanID
	ldr	r2, [r1, #28]	@, _66->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _66->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r5	@,
	moveq	r4, #1	@ tmp188,
	streq	r4, [r8, #736]	@ tmp188, pCtx_11(D)->FspPartitionOK
	beq	.L257	@,
	ldr	r1, .L264	@,
	mov	r0, r4	@, D.33428
	bl	dprint_vfmw	@
	b	.L257	@
.L235:
	mov	r3, r7	@, pCodecInf$124$vertical_size
	mov	r2, r5	@, pCodecInf$124$horizontal_size
	ldr	r1, .L264+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ D.33428,
.L257:
	mov	r0, r4	@, D.33428
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L238:
	cmp	r2, #25	@ _15->eCapLevel,
	beq	.L262	@,
	mov	r4, #4	@ PmvNum,
	add	r8, r0, #16384	@ tmp194, pCtx,
	mov	r9, r4	@ DecFsNum, PmvNum
	mov	r10, #5	@ D.33430,
	b	.L239	@
.L262:
	ldr	r2, [r3, #568]	@ D.33433, _15->stChanOption.s32MaxWidth
	ldr	r1, [r3, #572]	@ D.33433, _15->stChanOption.s32MaxHeight
	cmp	r2, r5	@ D.33433, pCodecInf$124$horizontal_size
	bcc	.L245	@,
	cmp	r1, r7	@ D.33433, pCodecInf$124$vertical_size
	bcc	.L245	@,
	ldr	r2, [r3, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r4, #1	@ PmvNum,
	bne	.L263	@,
.L247:
	ldrb	r10, [r3, #616]	@ zero_extendqisi2	@ D.33430, _15->stChanOption.s32DisplayFrameNum
	add	r8, r6, #16384	@ tmp194, pCtx,
	b	.L239	@
.L261:
	ldr	r2, [r3, #568]	@ D.33433, _15->stChanOption.s32MaxWidth
	ldr	r1, [r3, #572]	@ D.33433, _15->stChanOption.s32MaxHeight
	cmp	r2, r5	@ D.33433, pCodecInf$124$horizontal_size
	bcc	.L241	@,
	cmp	r1, r7	@ D.33433, pCodecInf$124$vertical_size
	bcc	.L241	@,
	add	r8, r0, #16384	@ tmp194, pCtx,
	ldr	r4, [r8, #736]	@ D.33428, pCtx_11(D)->FspPartitionOK
	cmp	r4, #1	@ D.33428,
	beq	.L257	@,
	ldr	r2, [r3, #596]	@ _15->stChanOption.s32SupportBFrame, _15->stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, _15->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _15->stChanOption.s32SupportBFrame,
	moveq	r4, #1	@ PmvNum,
	beq	.L243	@,
	add	r4, r9, #1	@ PmvNum, DecFsNum,
	cmp	r4, #17	@ PmvNum,
	movge	r4, #17	@ PmvNum,
.L243:
	ldrb	r10, [r3, #616]	@ zero_extendqisi2	@ D.33430, _15->stChanOption.s32DisplayFrameNum
	b	.L239	@
.L249:
	ldr	r1, .L264+8	@,
	mov	r0, r5	@, tmp173
	bl	dprint_vfmw	@
	mov	r4, r5	@ D.33428, tmp173
	mov	r0, r4	@, D.33428
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L248:
	strb	r2, [sp, #17]	@ tmp167, FspInstCfg.s32ExpectedDecFsNum
	mov	r4, #1	@ D.33429,
	strb	r10, [sp, #19]	@ D.33430, FspInstCfg.s32ExpectedDispFsNum
	b	.L251	@
.L245:
	str	r1, [sp, #4]	@ D.33433,
	mov	r3, r7	@, pCodecInf$124$vertical_size
	str	r2, [sp]	@ D.33433,
	mov	r0, #0	@,
	mov	r2, r5	@, pCodecInf$124$horizontal_size
	ldr	r1, .L264+12	@,
	bl	dprint_vfmw	@
	mov	r4, #0	@ D.33428,
	b	.L257	@
.L263:
	add	r4, r9, #1	@ PmvNum, DecFsNum,
	cmp	r4, #17	@ PmvNum,
	movge	r4, #17	@ PmvNum,
	b	.L247	@
.L241:
	str	r1, [sp, #4]	@ D.33433,
	mov	r3, r7	@, pCodecInf$124$vertical_size
	str	r2, [sp]	@ D.33433,
	mov	r0, #0	@,
	mov	r2, r5	@, pCodecInf$124$horizontal_size
	ldr	r1, .L264+12	@,
	bl	dprint_vfmw	@
	b	.L257	@
.L265:
	.align	2
.L264:
	.word	.LC90
	.word	.LC88
	.word	.LC91
	.word	.LC89
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
	add	r4, r0, #16384	@ tmp588, pCtx,
	add	r6, r0, #12288	@ tmp589, pCtx,
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
	beq	.L282	@,
	ldr	r2, [r7, #412]	@ pLogic_141->pstDispOutFs, pLogic_141->pstDispOutFs
	add	r3, r5, #16896	@ ivtmp.217, pCtx,
	add	r0, r5, #14592	@ ivtmp.226, pCtx,
	mov	ip, r3	@ D.33500, ivtmp.217
	add	r3, r3, #94	@ ivtmp.217, ivtmp.217,
	ldr	r1, [r2, #20]	@ _143->Stride, _143->Stride
	add	ip, ip, #222	@ D.33500, D.33500,
	mov	r2, r0	@ ivtmp.226, ivtmp.226
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
.L269:
	ldrsh	r1, [r3, #2]!	@ MEM[base: _242, offset: 0B], MEM[base: _242, offset: 0B]
	cmp	r3, ip	@ ivtmp.217, D.33500
	str	r1, [r2, #4]!	@ MEM[base: _242, offset: 0B], MEM[base: _243, offset: 0B]
	bne	.L269	@,
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
.L270:
	ldr	r1, [r2, #4]!	@ D.33487, MEM[base: _234, offset: 0B]
	str	r1, [r3, #4]!	@ D.33487, MEM[base: _235, offset: 0B]
	cmp	r3, r0	@ ivtmp.205, ivtmp.226
	bne	.L270	@,
	ldr	r3, [r6, #3372]	@ pCtx_7(D)->CodecInfo.PicCnt, pCtx_7(D)->CodecInfo.PicCnt
	add	r1, r5, #8	@ D.33495, pCtx,
	add	r3, r3, #1	@ D.33489, pCtx_7(D)->CodecInfo.PicCnt,
	str	r3, [r6, #3372]	@ D.33489, pCtx_7(D)->CodecInfo.PicCnt
	ldr	r3, [r5]	@ D.33496, pCtx_7(D)->pstExtraData
	str	r1, [r5, #4]	@ D.33495, pCtx_7(D)->pAvsDecParam
	ldr	r2, [r3, #708]	@ D.33489, _198->stDisParams.s32Mode
	cmp	r2, #1	@ D.33489,
	beq	.L283	@,
	cmp	r2, #2	@ D.33489,
	beq	.L284	@,
.L272:
	ldr	r3, [r3, #512]	@ D.33489, _198->s32Compress_en
	mov	r0, #1	@ D.33486,
	str	r3, [r6, #2588]	@ D.33489, MEM[(struct AVS_DEC_PARAM_S *)pCtx_7(D) + 8B].Compress_en
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L283:
	cmp	r1, #0	@ D.33495,
	beq	.L272	@,
	ldr	r1, [r6, #2668]	@ D.33491, pCtx_7(D)->CodecInfo.pCurFrm
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ _200->PicCodingType, _200->PicCodingType
	cmp	r2, #2	@ _200->PicCodingType,
	bne	.L272	@,
	mov	r7, #0	@ tmp562,
	str	r7, [r5, #4]	@ tmp562, pCtx_7(D)->pAvsDecParam
	mov	r2, r7	@, tmp562
	ldr	r0, [r4, #224]	@, pCtx_7(D)->ChanID
	ldr	r1, [r1, #4]	@, _200->FspID
	bl	FSP_SetDisplay	@
	mov	r0, r7	@ D.33486, tmp562
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L284:
	ldr	r2, [r3, #712]	@ _198->stDisParams.s32DisNums, _198->stDisParams.s32DisNums
	cmp	r1, #0	@ D.33495,
	cmpne	r2, #0	@, _198->stDisParams.s32DisNums,
	ble	.L272	@,
	ldr	r1, [r6, #2668]	@ D.33491, pCtx_7(D)->CodecInfo.pCurFrm
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ _207->PicCodingType, _207->PicCodingType
	cmp	r2, #2	@ _207->PicCodingType,
	bne	.L272	@,
	mov	r7, #0	@ tmp578,
	str	r7, [r5, #4]	@ tmp578, pCtx_7(D)->pAvsDecParam
	mov	r2, r7	@, tmp578
	ldr	r0, [r4, #224]	@, pCtx_7(D)->ChanID
	ldr	r1, [r1, #4]	@, _207->FspID
	bl	FSP_SetDisplay	@
	ldr	r2, [r5]	@ D.33496, pCtx_7(D)->pstExtraData
	mov	r0, r7	@ D.33486, tmp578
	ldr	r3, [r2, #712]	@ _213->stDisParams.s32DisNums, _213->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.33489, _213->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.33489, _213->stDisParams.s32DisNums
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L282:
	movw	r2, #2278	@,
	ldr	r1, .L285	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.33486, pLogic
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L286:
	.align	2
.L285:
	.word	.LC92
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
	add	r5, r0, #12288	@ tmp239, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldrb	r3, [r5, #2723]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.progressive_sequence, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.progressive_sequence
	ldr	fp, [r5, #3052]	@ codtype, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.derived_pic_coding_type
	cmp	r3, #1	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.progressive_sequence,
	ldrb	r8, [r5, #2754]	@ zero_extendqisi2	@ D.33506, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_sdext.video_format
	moveq	r7, #0	@ D.33507,
	beq	.L288	@,
	ldrb	r3, [r5, #2784]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.progressive_frame, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.progressive_frame
	subs	r7, r3, #1	@ D.33507, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.progressive_frame,
	movne	r7, #1	@ D.33507,
.L288:
	ldrb	r3, [r5, #2721]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.aspect_ratio, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.aspect_ratio
	ldrb	r9, [r5, #2786]	@ zero_extendqisi2	@ D.33506, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.top_field_first
	sub	r3, r3, #1	@ tmp185, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.aspect_ratio,
	uxtb	r3, r3	@ D.33506, tmp185
	cmp	r3, #3	@ D.33506,
	ldrls	r2, .L299	@ tmp186,
	movhi	r10, #0	@ dar,
	ldrls	r10, [r2, r3, asl #2]	@ dar, CSWTCH.52
	add	r2, r6, #16384	@ tmp192, pCtx,
	ldr	r3, [r5, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	ldr	r0, [r2, #224]	@, pCtx_6(D)->ChanID
	ldr	r1, [r3, #4]	@, _18->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImage,
	beq	.L297	@,
	and	lr, fp, #3	@ D.33510, codtype,
	and	r2, r9, #3	@ D.33510, D.33506,
	orr	ip, lr, #3072	@ D.33510, D.33510,
	and	r8, r8, #3	@ D.33510, D.33506,
	orr	r2, ip, r2, asl #12	@ D.33510, D.33510, D.33510,
	and	ip, r10, #7	@ D.33510, dar,
	orr	r2, r2, r8, asl #5	@ D.33510, D.33510, D.33510,
	mov	r1, r10	@, dar
	orr	r3, r2, r7, asl #8	@ D.33510, D.33510, D.33507,
	orr	r3, r3, ip, asl #14	@ D.33510, D.33510, D.33510,
	str	r3, [r4, #140]	@ D.33510, pImage_21->format
	ldr	r3, [r5, #3364]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].ErrRatio, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].ErrRatio
	str	lr, [r4, #132]	@ D.33510, pImage_21->top_fld_type
	str	lr, [r4, #136]	@ D.33510, pImage_21->bottom_fld_type
	str	r3, [r4, #180]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].ErrRatio, pImage_21->error_level
	bl	SetAspectRatio	@
	ldr	r3, [r5, #2732]	@ D.33510, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.horizontal_size
	str	r3, [r4, #144]	@ D.33510, pImage_21->image_width
	ldr	r3, [r5, #2736]	@ D.33510, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_seq.vertical_size
	str	r3, [r4, #148]	@ D.33510, pImage_21->image_height
	ldr	r2, [r6]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r2, [r2, #32]	@ _48->eCapLevel, _48->eCapLevel
	cmp	r2, #25	@ _48->eCapLevel,
	beq	.L298	@,
.L291:
	mov	r3, #6	@ tmp227,
	str	r3, [r4, #300]	@ tmp227, pImage_21->ImageDnr.video_standard
	ldrb	r1, [r5, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.picture_structure
	mov	r2, #1	@ tmp232,
	mov	r3, #8	@ tmp234,
	strb	r2, [r4, #295]	@ tmp232, pImage_21->ImageDnr.use_pic_qp_en
	cmp	r1, r2	@ MEM[(struct AVS_SYNTAX *)pCtx_6(D) + 15000B].syn_pic.picture_structure,
	strb	r2, [r4, #293]	@ tmp232, pImage_21->ImageDnr.chroma_format_idc
	str	r3, [r4, #304]	@ tmp234, pImage_21->ImageDnr.QP_Y
	moveq	r2, #0	@ D.33505,
	movne	r2, #4	@ D.33505,
	str	r3, [r4, #312]	@ tmp234, pImage_21->ImageDnr.QP_V
	strb	r2, [r4, #288]	@ D.33505, pImage_21->ImageDnr.pic_structure
	str	r3, [r4, #308]	@ tmp234, pImage_21->ImageDnr.QP_U
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L298:
	ldr	r2, [r4, #172]	@ D.33510, pImage_21->image_stride
	add	r3, r3, #15	@ D.33510, D.33510,
	ldr	r0, [r4, #104]	@ D.33510, pImage_21->luma_phy_addr
	mov	r3, r3, lsr #4	@ D.33510, D.33510,
	ldr	r1, [r4, #32]	@ D.33513, pImage_21->luma_vir_addr
	mov	lr, r2, asl #4	@ D.33510, D.33510,
	add	ip, r2, r0	@ D.33508, D.33510, D.33510
	str	r0, [r4, #88]	@ D.33510, pImage_21->top_luma_phy_addr
	mul	r3, r3, lr	@ D.33510, D.33510, D.33510
	str	r0, [r4, #120]	@ D.33510, pImage_21->luma_2d_phy_addr
	str	ip, [r4, #96]	@ D.33508, pImage_21->btm_luma_phy_addr
	str	r1, [r4, #48]	@ D.33513, pImage_21->luma_2d_vir_addr
	add	r0, r3, r0	@ D.33510, D.33510, D.33510
	add	r3, r1, r3	@ D.33513, D.33513, D.33510
	add	r2, r2, r0	@ D.33508, D.33510, D.33510
	str	r3, [r4, #36]	@ D.33513, pImage_21->chrom_vir_addr
	str	r0, [r4, #108]	@ D.33510, pImage_21->chrom_phy_addr
	str	r0, [r4, #92]	@ D.33510, pImage_21->top_chrom_phy_addr
	str	r2, [r4, #100]	@ D.33508, pImage_21->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImage_21->top_chrom_phy_addr, pImage_21->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImage_21->top_chrom_phy_addr, pImage_21->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImage_21->chrom_2d_vir_addr
	b	.L291	@
.L297:
	movw	r2, #2403	@,
	ldr	r1, .L299+4	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L300:
	.align	2
.L299:
	.word	.LANCHOR0
	.word	.LC93
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
	add	r4, r0, #12288	@ tmp289, pCtx,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r7, r0	@ pCtx, pCtx
	ldr	r3, [r4, #3768]	@ pCtx_6(D)->SyntaxNew.syn_pic.derived_pic_coding_type, pCtx_6(D)->SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r3, #2	@ pCtx_6(D)->SyntaxNew.syn_pic.derived_pic_coding_type,
	beq	.L302	@,
	ldr	r5, [r4, #3096]	@ D.33520, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].CurFrameObjId
	add	r6, r0, #14848	@ tmp288, pCtx,
	add	r6, r6, #32	@ tmp288, tmp288,
	add	r2, r5, #1	@ D.33520, D.33520,
	mov	r3, r5, asl #4	@ tmp170, D.33520,
	mov	r1, r2, asr #31	@ tmp178, D.33520,
	sub	r5, r3, r5, asl #2	@ tmp171, tmp170, D.33520,
	add	r5, r5, #16	@ tmp172, tmp171,
	mov	r3, r1, lsr #30	@ tmp179, tmp178,
	add	r5, r6, r5	@ D.33521, tmp288, tmp172
	add	r2, r2, r3	@ tmp180, D.33520, tmp179
	str	r5, [r4, #2668]	@ D.33521, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	and	r2, r2, #3	@ tmp181, tmp180,
	rsb	r2, r3, r2	@ D.33520, tmp179, tmp181
	str	r2, [r4, #3096]	@ D.33520, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].CurFrameObjId
.L303:
	add	r8, r7, #16384	@ tmp287, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_NewLogicFs	@
	str	r0, [r5, #4]	@, _13->FspID
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	ldr	r1, [r3, #4]	@ D.33520, _23->FspID
	cmp	r1, #0	@ D.33520,
	blt	.L322	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L323	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	mov	r0, #18	@,
	ldr	r1, .L324	@,
	ldr	r2, [r3, #4]	@, _80->FspID
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.33524, pLf_78->pstDecodeFs
	cmp	r2, #0	@ D.33524,
	beq	.L308	@,
	ldr	r3, [r5, #412]	@ D.33524, pLf_78->pstDispOutFs
	cmp	r3, #0	@ D.33524,
	beq	.L308	@,
	ldr	r1, [r5, #416]	@ D.33524, pLf_78->pstTfOutFs
	cmp	r1, #0	@ D.33524,
	beq	.L308	@,
	ldr	ip, [r1, #12]	@ _85->PhyAddr, _85->PhyAddr
	mov	r0, #18	@,
	ldr	r3, [r3, #12]	@ _84->PhyAddr, _84->PhyAddr
	ldr	r2, [r2, #12]	@ _83->PhyAddr, _83->PhyAddr
	ldr	r1, .L324+4	@,
	str	ip, [sp]	@ _85->PhyAddr,
	bl	dprint_vfmw	@
.L308:
	mov	r0, #1	@ D.33518,
	mov	r3, #0	@ tmp285,
	str	r3, [r5, #188]	@ tmp285, pLf_78->stDispImg.error_level
.L306:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L302:
	add	r6, r0, #14848	@ tmp288, pCtx,
	add	r5, r6, #96	@ D.33521, tmp288,
	add	r6, r6, #32	@ tmp288, tmp288,
	str	r5, [r4, #2668]	@ D.33521, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	b	.L303	@
.L322:
	ldr	r1, .L324+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	ldr	r1, [r3, #4]	@, _27->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L305	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	add	r6, r6, #4	@ D.33521, tmp288,
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
	mov	r3, #0	@ tmp245,
	str	r3, [r5, #192]	@ tmp245, pImg_30->p_usrdat
	str	r3, [r5, #196]	@ tmp245, pImg_30->p_usrdat
	str	r3, [r5, #200]	@ tmp245, pImg_30->p_usrdat
	str	r3, [r5, #204]	@ tmp245, pImg_30->p_usrdat
	str	r6, [r4, #2668]	@ D.33521, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pCurFrm
	str	r6, [r4, #2680]	@ D.33521, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	str	r6, [r4, #2676]	@ D.33521, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	str	r6, [r4, #2672]	@ D.33521, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].pRef
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@, MEM[(struct FRAME_OBJ *)pCtx_6(D) + 14884B].FspID
.L305:
	add	r1, r7, #16064	@, pCtx,
	mov	r5, #0	@ tmp266,
	add	r1, r1, #24	@,,
	str	r5, [r4, #3360]	@ tmp266, MEM[(struct AVS_CODECINF *)pCtx_6(D) + 14880B].RefNum
	ldr	r0, [r8, #224]	@, pCtx_6(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.33518, tmp266
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L323:
	movw	r2, #2506	@,
	ldr	r1, .L324+12	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.33518, pLf
	b	.L306	@
.L325:
	.align	2
.L324:
	.word	.LC95
	.word	.LC96
	.word	.LC94
	.word	.LC92
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
	add	r5, r1, #16384	@ tmp126, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r1	@ pCtx, pCtx
	mov	r6, r0	@ pOutput, pOutput
	ldr	r1, [r0, #4]	@, pOutput_6(D)->FspID
	ldr	r0, [r5, #224]	@, pCtx_4(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImage,
	beq	.L333	@,
	mov	r2, #1	@,
	ldr	r1, [r6, #4]	@, pOutput_6(D)->FspID
	ldr	r0, [r5, #224]	@, pCtx_4(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r7, #16064	@, pCtx,
	ldr	r0, [r5, #224]	@ pCtx_4(D)->ChanID, pCtx_4(D)->ChanID
	add	r3, r3, #24	@,,
	str	r4, [sp]	@ pImage,
	mov	r2, r7	@, pCtx
	mov	r1, #6	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.33534,
	beq	.L328	@,
	ldr	r0, [r5, #224]	@, pCtx_4(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #4]	@, pOutput_6(D)->FspID
	bl	FSP_SetDisplay	@
	ldr	r2, [r6, #4]	@, pOutput_6(D)->FspID
	ldr	r1, .L334	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33534,
.L328:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L333:
	movw	r2, #2547	@,
	ldr	r1, .L334+4	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.33534, pImage
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L335:
	.align	2
.L334:
	.word	.LC98
	.word	.LC97
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
	ldr	r3, [r0, #460]	@ D.33542, pCodecInf_9(D)->Syntax.syn_pic.derived_pic_coding_type
	beq	.L350	@,
	cmp	r3, #0	@ D.33542,
	beq	.L351	@,
	cmp	r3, #1	@ D.33542,
	bne	.L345	@,
	ldr	r3, [r0, #84]	@ D.33543, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.33543, pCodecInf,
	ldr	r1, [r0, #76]	@ pCodecInf_9(D)->pCurFrm, pCodecInf_9(D)->pCurFrm
	cmp	r3, r2	@ D.33543, D.33543
	ldrne	r2, [r3, #8]	@ _41->pic_distance, _41->pic_distance
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldreq	r2, [r0, #536]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	movne	r2, r2, asl #1	@ D.33544, _41->pic_distance,
	strne	r2, [r0, #536]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	add	r2, r2, #1	@ D.33544, D.33544,
	str	r2, [r0, #532]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r3, #8]	@ _49->pic_distance, _49->pic_distance
	str	r2, [r0, #552]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	mov	r3, r3, asl #1	@ D.33544, _49->pic_distance,
	str	r3, [r0, #528]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #548]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	add	r3, r3, #1	@ D.33544, D.33544,
	str	r3, [r0, #524]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #544]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r1, #8]	@ _59->pic_distance, _59->pic_distance
	mov	r3, r3, asl #1	@ D.33542, _59->pic_distance,
	str	r3, [r0, #540]	@ D.33542, pCodecInf_9(D)->Idx2Dist
.L341:
	mov	r0, #1	@,
	bx	lr	@
.L351:
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldr	r3, [r3, #8]	@ _35->pic_distance, _35->pic_distance
	mov	r3, r3, asl #1	@ D.33542, _35->pic_distance,
	str	r3, [r0, #540]	@ D.33542, pCodecInf_9(D)->Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L350:
	cmp	r3, #1	@ D.33542,
	beq	.L352	@,
	cmp	r3, #2	@ D.33542,
	bne	.L341	@,
	ldr	r3, [r0, #84]	@ D.33543, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.33543, pCodecInf,
	cmp	r3, r2	@ D.33543, D.33543
	ldrne	r3, [r3, #8]	@ _24->pic_distance, _24->pic_distance
	movne	r3, r3, asl #1	@ D.33542, _24->pic_distance,
	strne	r3, [r0, #524]	@ D.33542, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldr	r3, [r3, #8]	@ _29->pic_distance, _29->pic_distance
	mov	r3, r3, asl #1	@ D.33542, _29->pic_distance,
	str	r3, [r0, #532]	@ D.33542, pCodecInf_9(D)->Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L345:
	cmp	r3, #2	@ D.33542,
	bne	.L341	@,
	ldr	r3, [r0, #84]	@ D.33543, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.33543, pCodecInf,
	cmp	r3, r2	@ D.33543, D.33543
	ldrne	r2, [r3, #8]	@ _65->pic_distance, _65->pic_distance
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	ldreq	r2, [r0, #528]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	movne	r2, r2, asl #1	@ D.33544, _65->pic_distance,
	strne	r2, [r0, #528]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	add	r1, r2, #1	@ D.33544, D.33544,
	str	r1, [r0, #524]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	ldr	r3, [r3, #8]	@ _73->pic_distance, _73->pic_distance
	str	r1, [r0, #540]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	str	r2, [r0, #544]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	mov	r3, r3, asl #1	@ D.33544, _73->pic_distance,
	str	r3, [r0, #532]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #548]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	add	r3, r3, #1	@ D.33544, D.33544,
	str	r3, [r0, #536]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	str	r3, [r0, #552]	@ D.33544, pCodecInf_9(D)->Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L352:
	ldr	r3, [r0, #80]	@ pCodecInf_9(D)->pRef, pCodecInf_9(D)->pRef
	add	r2, r0, #4	@ D.33543, pCodecInf,
	ldr	r1, [r0, #84]	@ D.33543, pCodecInf_9(D)->pRef
	ldr	r3, [r3, #8]	@ _12->pic_distance, _12->pic_distance
	cmp	r1, r2	@ D.33543, D.33543
	mov	r3, r3, asl #1	@ D.33542, _12->pic_distance,
	str	r3, [r0, #524]	@ D.33542, pCodecInf_9(D)->Idx2Dist
	ldrne	r3, [r1, #8]	@ _18->pic_distance, _18->pic_distance
	movne	r3, r3, asl #1	@ D.33542, _18->pic_distance,
	strne	r3, [r0, #528]	@ D.33542, pCodecInf_9(D)->Idx2Dist
	b	.L341	@
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
	beq	.L405	@,
	ldr	r3, [r6, #460]	@ D.33669, pCodecInf_32(D)->Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ D.33669,
	moveq	r3, #512	@ tmp253,
	streq	r3, [r6, #620]	@ tmp253, pCodecInf_32(D)->MvEScale
	beq	.L390	@,
	cmp	r3, #1	@ D.33669,
	bne	.L380	@,
	ldr	r3, [r6, #76]	@ D.33668, pCodecInf_32(D)->pCurFrm
	add	fp, r6, #536	@ ivtmp.357, pCodecInf,
	add	r9, r6, #520	@ ivtmp.360, pCodecInf,
	str	r3, [sp, #12]	@ D.33668, %sfp
	add	r3, r6, #552	@ ivtmp.361, pCodecInf,
	str	r3, [sp, #4]	@ ivtmp.361, %sfp
	mov	r3, #0	@ CurFld,
	str	r3, [sp, #8]	@ CurFld, %sfp
.L369:
	ldr	r3, [sp, #12]	@ D.33668, %sfp
	mov	r7, r9	@ ivtmp.341, ivtmp.360
	ldr	r8, [sp, #4]	@ ivtmp.349, %sfp
	ldr	r2, [r3, #8]	@ _211->pic_distance, _211->pic_distance
	ldr	r3, [sp, #8]	@ CurFld, %sfp
	add	r6, r3, r2, lsl #1	@ CurDistIdx, CurFld, _211->pic_distance,
.L365:
	ldr	r5, [r7, #4]!	@ MEM[base: _66, offset: 0B], MEM[base: _66, offset: 0B]
	mov	r10, r8	@ ivtmp.328, ivtmp.349
	mov	r4, r9	@ ivtmp.319, ivtmp.360
	rsb	r5, r5, r6	@ D.33670, MEM[base: _66, offset: 0B], CurDistIdx
	ubfx	r5, r5, #0, #9	@ D.33675, D.33670,,
.L367:
	ldr	r1, [r4, #4]!	@ MEM[base: _208, offset: 0B], MEM[base: _208, offset: 0B]
	mov	r0, #512	@,
	mov	lr, #1	@ D.33670,
	rsb	r1, r1, r6	@ D.33670, MEM[base: _208, offset: 0B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.33670,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L366	@,
	bl	__aeabi_idiv	@
	mov	lr, r0	@ D.33670,
.L366:
	mul	lr, lr, r5	@ D.33670, D.33670, D.33675
	cmp	fp, r4	@ ivtmp.357, ivtmp.319
	str	lr, [r10, #4]!	@ D.33670, MEM[base: _206, offset: 0B]
	bne	.L367	@,
	cmp	fp, r7	@ ivtmp.357, ivtmp.341
	add	r8, r8, #16	@ ivtmp.349, ivtmp.349,
	bne	.L365	@,
	ldr	r3, [sp, #8]	@ CurFld, %sfp
	add	fp, fp, #16	@ ivtmp.357, ivtmp.357,
	add	r9, r9, #16	@ ivtmp.360, ivtmp.360,
	add	r3, r3, #1	@ CurFld, CurFld,
	str	r3, [sp, #8]	@ CurFld, %sfp
	cmp	r3, #2	@ CurFld,
	ldr	r3, [sp, #4]	@ ivtmp.361, %sfp
	add	r3, r3, #64	@ ivtmp.361, ivtmp.361,
	str	r3, [sp, #4]	@ ivtmp.361, %sfp
	bne	.L369	@,
.L390:
	mov	r0, #1	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L405:
	ldr	r2, [r6, #76]	@ pCodecInf_32(D)->pCurFrm, pCodecInf_32(D)->pCurFrm
	ldr	r3, [r6, #460]	@ D.33669, pCodecInf_32(D)->Syntax.syn_pic.derived_pic_coding_type
	ldr	r4, [r2, #8]	@ _34->pic_distance, _34->pic_distance
	cmp	r3, #1	@ D.33669,
	addeq	r9, r6, #520	@ ivtmp.250, pCodecInf,
	addeq	r7, r6, #32	@ D.33674, pCodecInf,
	moveq	r8, r6	@ ivtmp.260, pCodecInf
	mov	r4, r4, asl #1	@ CurDistIdx, _34->pic_distance,
	beq	.L356	@,
	cmp	r3, #2	@ D.33669,
	bne	.L390	@,
	ldr	r3, [r6, #524]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	rsb	r3, r3, r4	@ D.33670, pCodecInf_32(D)->Idx2Dist, CurDistIdx
	ubfx	r5, r3, #0, #9	@ NeiBlkDist, D.33670,,
	cmp	r5, #0	@ NeiBlkDist,
	beq	.L362	@,
	mov	r1, r5	@, NeiBlkDist
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L362:
	mul	r3, r0, r5	@ D.33670, D.33670, NeiBlkDist
	ldr	r2, [r6, #532]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	rsb	r4, r4, r2	@ D.33670, CurDistIdx, pCodecInf_32(D)->Idx2Dist
	ubfx	r4, r4, #0, #9	@ NeiBlkDist, D.33670,,
	cmp	r4, #0	@ NeiBlkDist,
	str	r3, [r6, #556]	@ D.33670, pCodecInf_32(D)->MvEScale
	moveq	r0, #1	@ D.33670,
	beq	.L363	@,
	mov	r1, r4	@, NeiBlkDist
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L363:
	mul	r4, r0, r4	@ D.33670, D.33670, NeiBlkDist
	mov	r0, #1	@,
	str	r4, [r6, #572]	@ D.33670, pCodecInf_32(D)->MvEScale
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L356:
	ldr	r1, [r6, #524]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	mov	r0, #512	@,
	ldr	r5, [r9, #4]!	@ MEM[base: _114, offset: 0B], MEM[base: _114, offset: 0B]
	mov	r3, #1	@ D.33670,
	rsb	r1, r1, r4	@ D.33670, pCodecInf_32(D)->Idx2Dist, CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.33670,,
	rsb	r5, r5, r4	@ D.33670, MEM[base: _114, offset: 0B], CurDistIdx
	cmp	r1, #0	@ NeiBlkDist,
	ubfx	r5, r5, #0, #9	@ D.33675, D.33670,,
	beq	.L358	@,
	bl	__aeabi_idiv	@
	mov	r3, r0	@ D.33670,
.L358:
	mul	r3, r3, r5	@ D.33670, D.33670, D.33675
	mov	r0, #1	@ D.33670,
	str	r3, [r8, #556]	@ D.33670, MEM[base: _188, offset: 556B]
	ldr	r1, [r6, #528]	@ pCodecInf_32(D)->Idx2Dist, pCodecInf_32(D)->Idx2Dist
	rsb	r1, r1, r4	@ D.33670, pCodecInf_32(D)->Idx2Dist, CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.33670,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L359	@,
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L359:
	mul	r0, r0, r5	@ D.33670, D.33670, D.33675
	add	r8, r8, #16	@ ivtmp.260, ivtmp.260,
	str	r0, [r8, #544]	@ D.33670, MEM[base: _188, offset: 560B]
	cmp	r8, r7	@ ivtmp.260, D.33674
	bne	.L356	@,
	b	.L390	@
.L380:
	cmp	r3, #2	@ D.33669,
	bne	.L390	@,
	ldr	r3, [r6, #76]	@ D.33668, pCodecInf_32(D)->pCurFrm
	mov	r7, r6	@ ivtmp.305, pCodecInf
	add	r6, r6, #16	@ ivtmp.303, pCodecInf,
	add	r10, r7, #520	@ ivtmp.311, ivtmp.305,
	mov	r8, #0	@ CurFld,
	str	r3, [sp, #4]	@ D.33668, %sfp
.L379:
	ldr	r3, [sp, #4]	@ D.33668, %sfp
	mov	fp, r7	@ ivtmp.296, ivtmp.305
	mov	r9, r10	@ ivtmp.286, ivtmp.311
	ldr	r4, [r3, #8]	@ _231->pic_distance, _231->pic_distance
	add	r4, r8, r4, lsl #1	@ CurDistIdx, CurFld, _231->pic_distance,
.L370:
	ldr	r1, [r10, #4]	@ MEM[base: _156, offset: 4B], MEM[base: _156, offset: 4B]
	mov	r0, #512	@,
	ldr	r5, [r9, #4]!	@ MEM[base: _185, offset: 0B], MEM[base: _185, offset: 0B]
	mov	r2, #1	@ D.33670,
	rsb	r1, r1, r4	@ D.33670, MEM[base: _156, offset: 4B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.33670,,
	rsb	r5, r5, r4	@ D.33670, MEM[base: _185, offset: 0B], CurDistIdx
	cmp	r1, #0	@ NeiBlkDist,
	ubfx	r5, r5, #0, #9	@ D.33675, D.33670,,
	beq	.L372	@,
	bl	__aeabi_idiv	@
	mov	r2, r0	@ D.33670,
.L372:
	mul	r2, r2, r5	@ D.33670, D.33670, D.33675
	mov	r0, #1	@ D.33670,
	str	r2, [fp, #556]	@ D.33670, MEM[base: _164, offset: 556B]
	ldr	r1, [r10, #8]	@ MEM[base: _156, offset: 8B], MEM[base: _156, offset: 8B]
	rsb	r1, r1, r4	@ D.33670, MEM[base: _156, offset: 8B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.33670,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L373	@,
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L373:
	mul	r0, r0, r5	@ D.33670, D.33670, D.33675
	add	fp, fp, #8	@ ivtmp.296, ivtmp.296,
	str	r0, [fp, #552]	@ D.33670, MEM[base: _164, offset: 560B]
	cmp	fp, r6	@ ivtmp.296, ivtmp.303
	bne	.L370	@,
	add	r9, r10, #8	@ ivtmp.268, ivtmp.311,
	mov	fp, r7	@ ivtmp.278, ivtmp.305
.L371:
	ldr	r1, [r10, #12]	@ MEM[base: _156, offset: 12B], MEM[base: _156, offset: 12B]
	mov	r0, #512	@,
	ldr	r5, [r9, #4]!	@ MEM[base: _202, offset: 0B], MEM[base: _202, offset: 0B]
	mov	r2, #1	@ D.33670,
	rsb	r1, r4, r1	@ D.33670, CurDistIdx, MEM[base: _156, offset: 12B]
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.33670,,
	rsb	r5, r4, r5	@ D.33670, CurDistIdx, MEM[base: _202, offset: 0B]
	cmp	r1, #0	@ NeiBlkDist,
	ubfx	r5, r5, #0, #9	@ D.33675, D.33670,,
	beq	.L376	@,
	bl	__aeabi_idiv	@
	mov	r2, r0	@ D.33670,
.L376:
	mul	r2, r2, r5	@ D.33670, D.33670, D.33675
	mov	r0, #1	@ D.33670,
	str	r2, [fp, #572]	@ D.33670, MEM[base: _174, offset: 572B]
	ldr	r1, [r10, #16]	@ MEM[base: _156, offset: 16B], MEM[base: _156, offset: 16B]
	rsb	r1, r4, r1	@ D.33670, CurDistIdx, MEM[base: _156, offset: 16B]
	ubfx	r1, r1, #0, #9	@ NeiBlkDist, D.33670,,
	cmp	r1, #0	@ NeiBlkDist,
	beq	.L377	@,
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
.L377:
	mul	r0, r0, r5	@ D.33670, D.33670, D.33675
	add	fp, fp, #8	@ ivtmp.278, ivtmp.278,
	str	r0, [fp, #568]	@ D.33670, MEM[base: _174, offset: 576B]
	cmp	r6, fp	@ ivtmp.303, ivtmp.278
	bne	.L371	@,
	add	r8, r8, #1	@ CurFld, CurFld,
	add	r6, r6, #32	@ ivtmp.303, ivtmp.303,
	cmp	r8, #2	@ CurFld,
	add	r7, r7, #32	@ ivtmp.305, ivtmp.305,
	add	r10, r10, #16	@ ivtmp.311, ivtmp.311,
	bne	.L379	@,
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
	beq	.L430	@,
	ldr	fp, [r0, #80]	@ D.33712, pCodecInf_18(D)->pRef
	mov	r5, #1	@ ivtmp.394,
	add	r9, r0, #4	@ D.33712, pCodecInf,
	add	r7, r0, #684	@ ivtmp.395, pCodecInf,
	mov	r4, #0	@ ColRefDistIdx,
	mov	r8, #32	@ tmp265,
	ldr	r10, [fp, #8]	@ _35->pic_distance, _35->pic_distance
	mov	r10, r10, asl r5	@ ColDistIdx, _35->pic_distance,
.L413:
	sub	r3, r5, #1	@ D.33711, ivtmp.394,
	mov	r0, #16384	@,
	and	r2, r5, #1	@ D.33716, ivtmp.394,
	add	r3, r3, r3, lsr #31	@ tmp208, D.33711, D.33711,
	mov	r3, r3, asr #1	@ D.33717, tmp208,
	add	r3, r3, #21	@ tmp210, D.33717,
	ldr	r3, [r6, r3, asl #2]	@ D.33712, pCodecInf_18(D)->pRef
	cmp	r9, r3	@ D.33712, D.33712
	beq	.L411	@,
	ldr	r4, [r3, #8]	@ _42->pic_distance, _42->pic_distance
	add	r4, r2, r4, lsl #1	@ ColRefDistIdx, D.33716, _42->pic_distance,
	rsb	r1, r4, r10	@ D.33717, ColRefDistIdx, ColDistIdx
	ubfx	r1, r1, #0, #9	@ ColBlkDist, D.33717,,
	cmp	r1, #0	@ ColBlkDist,
	streq	r8, [r7]	@ tmp265, MEM[base: _139, offset: 0B]
	beq	.L411	@,
	bl	__aeabi_idiv	@
	str	r0, [r7]	@, MEM[base: _140, offset: 0B]
.L411:
	add	r5, r5, #1	@ ivtmp.394, ivtmp.394,
	add	r7, r7, #4	@ ivtmp.395, ivtmp.395,
	cmp	r5, #5	@ ivtmp.394,
	bne	.L413	@,
	ldr	fp, [fp, #8]	@ _35->pic_distance, _35->pic_distance
	add	r10, r6, #700	@ ivtmp.386, pCodecInf,
	ldr	r8, [r6, #800]	@ D.33716, pCodecInf_18(D)->b_filed_enhanced_flag
	mov	r5, #1	@ ivtmp.385,
	mov	r7, #0	@ ivtmp.381,
	mov	fp, fp, asl #1	@ ColDistIdx, _35->pic_distance,
	cmp	r8, #0	@ D.33716,
	addeq	fp, fp, #1	@ ColDistIdx, D.33716,
.L423:
	cmp	r8, #0	@ D.33716,
	beq	.L416	@,
	add	r3, r7, r7, lsr #31	@ tmp224, ivtmp.381, ivtmp.381,
	mov	r3, r3, asr #1	@ D.33717, tmp224,
	add	r3, r3, #21	@ tmp226, D.33717,
	ldr	r3, [r6, r3, asl #2]	@ D.33712, pCodecInf_18(D)->pRef
	cmp	r9, r3	@ D.33712, D.33712
	beq	.L417	@,
	ldr	r4, [r3, #8]	@ _68->pic_distance, _68->pic_distance
	and	r3, r5, #1	@ D.33716, ivtmp.385,
	add	r4, r3, r4, lsl #1	@ ColRefDistIdx, D.33716, _68->pic_distance,
	rsb	r2, r4, fp	@ D.33717, ColRefDistIdx, ColDistIdx
	add	r2, r2, #512	@ D.33717, D.33717,
	mov	r1, r2, asr #31	@ tmp232, D.33717,
	mov	r1, r1, lsr #23	@ tmp233, tmp232,
	add	r2, r2, r1	@ tmp234, D.33717, tmp233
	ubfx	r3, r2, #0, #9	@ tmp235, tmp234,,
	subs	r1, r3, r1	@ tmp236, tmp235, tmp233
	moveq	r3, #32	@ tmp267,
	streq	r3, [r10, #-16]	@ tmp267, MEM[base: _113, offset: 4294967280B]
	beq	.L419	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r10, #-16]	@ D.33717, MEM[base: _119, offset: 4294967280B]
.L420:
	str	r0, [r10]	@ D.33717, MEM[base: _120, offset: 0B]
.L422:
	add	r5, r5, #1	@ ivtmp.385, ivtmp.385,
	add	r7, r7, #1	@ ivtmp.381, ivtmp.381,
	cmp	r5, #5	@ ivtmp.385,
	add	r10, r10, #4	@ ivtmp.386, ivtmp.386,
	bne	.L423	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L416:
	add	r3, r5, r5, lsr #31	@ tmp243, ivtmp.385, ivtmp.385,
	mov	r3, r3, asr #1	@ D.33717, tmp243,
	add	r3, r3, #20	@ tmp245, D.33717,
	ldr	r3, [r6, r3, asl #2]	@ D.33712, pCodecInf_18(D)->pRef
	cmp	r9, r3	@ D.33712, D.33712
	ldrne	r4, [r3, #8]	@ _86->pic_distance, _86->pic_distance
	andne	r3, r7, #1	@ D.33716, ivtmp.381,
	addne	r4, r3, r4, lsl #1	@ ColRefDistIdx, D.33716, _86->pic_distance,
.L417:
	rsb	r2, r4, fp	@ D.33717, ColRefDistIdx, ColDistIdx
	add	r2, r2, #512	@ D.33717, D.33717,
	mov	r1, r2, asr #31	@ tmp251, D.33717,
	mov	r1, r1, lsr #23	@ tmp252, tmp251,
	add	r2, r2, r1	@ tmp253, D.33717, tmp252
	ubfx	r3, r2, #0, #9	@ tmp254, tmp253,,
	subs	r1, r3, r1	@ tmp255, tmp254, tmp252
	beq	.L419	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	b	.L420	@
.L419:
	mov	r3, #32	@ tmp268,
	str	r3, [r10]	@ tmp268, MEM[base: _123, offset: 0B]
	b	.L422	@
.L430:
	ldr	r3, [r0, #80]	@ pCodecInf_18(D)->pRef, pCodecInf_18(D)->pRef
	add	r7, r0, #4	@ D.33712, pCodecInf,
	add	r4, r0, #80	@ ivtmp.372, pCodecInf,
	add	r6, r0, #88	@ D.33711, pCodecInf,
	mov	r8, #32	@ tmp261,
	ldr	r5, [r3, #8]	@ _20->pic_distance, _20->pic_distance
	mov	r5, r5, asl #1	@ ColDistIdx, _20->pic_distance,
.L410:
	ldr	r3, [r4, #4]!	@ D.33712, MEM[base: _65, offset: 0B]
	mov	r0, #16384	@,
	cmp	r3, r7	@ D.33712, D.33712
	beq	.L408	@,
	ldr	r1, [r3, #8]	@ _26->pic_distance, _26->pic_distance
	sub	r1, r5, r1, asl #1	@ D.33717, ColDistIdx, _26->pic_distance,
	ubfx	r1, r1, #0, #9	@ ColBlkDist, D.33717,,
	cmp	r1, #0	@ ColBlkDist,
	streq	r8, [r4, #600]	@ tmp261, MEM[base: _65, offset: 600B]
	beq	.L408	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #600]	@, MEM[base: _65, offset: 600B]
.L408:
	cmp	r4, r6	@ ivtmp.372, D.33711
	bne	.L410	@,
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
	ldr	r3, [r0, #84]	@ D.33774, pCodecInf_5(D)->pRef
	add	r2, r0, #4	@ D.33774, pCodecInf,
	cmp	r3, r2	@ D.33774, D.33774
	beq	.L438	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pCodecInf, pCodecInf
	ldrb	r0, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_5(D)->Syntax.syn_pic.picture_structure, pCodecInf_5(D)->Syntax.syn_pic.picture_structure
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r2, [r5, #76]	@ pCodecInf_5(D)->pCurFrm, pCodecInf_5(D)->pCurFrm
	cmp	r0, #1	@ pCodecInf_5(D)->Syntax.syn_pic.picture_structure,
	beq	.L433	@,
	add	r3, r5, #520	@ ivtmp.436, pCodecInf,
	add	r5, r5, #712	@ ivtmp.440, pCodecInf,
	mov	fp, #0	@ CurFld,
.L436:
	ldr	r6, [r2, #8]	@ _93->pic_distance, _93->pic_distance
	add	r10, r3, #20	@ ivtmp.415, ivtmp.436,
	mov	r9, r5	@ ivtmp.424, ivtmp.440
	mov	r8, r3	@ ivtmp.406, ivtmp.436
	mov	r7, #2	@ D.33778,
	add	r6, fp, r6, lsl #1	@ CurDistIdx, CurFld, _93->pic_distance,
.L435:
	ldr	r1, [r8, #4]!	@ MEM[base: _72, offset: 0B], MEM[base: _72, offset: 0B]
	mov	r0, #512	@,
	ldr	r4, [r10, #-4]!	@ MEM[base: _71, offset: 0B], MEM[base: _71, offset: 0B]
	mov	ip, #1	@ D.33777,
	rsb	r1, r1, r6	@ D.33777, MEM[base: _72, offset: 0B], CurDistIdx
	ubfx	r1, r1, #0, #9	@ BlkDistFw, D.33777,,
	rsb	r4, r6, r4	@ D.33777, CurDistIdx, MEM[base: _71, offset: 0B]
	cmp	r1, #0	@ BlkDistFw,
	ubfx	r4, r4, #0, #9	@ BlkDistBw, D.33777,,
	beq	.L434	@,
	str	r2, [sp, #4]	@ D.33774, %sfp
	str	r3, [sp]	@ ivtmp.436, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp]	@ ivtmp.436, %sfp
	ldr	r2, [sp, #4]	@ D.33774, %sfp
	mov	ip, r0	@ D.33777,
.L434:
	mul	r4, ip, r4	@ D.33777, D.33777, BlkDistBw
	subs	r7, r7, #1	@ D.33778, D.33778,
	str	r4, [r9, #4]!	@ D.33777, MEM[base: _70, offset: 0B]
	bne	.L435	@,
	add	fp, fp, #1	@ CurFld, CurFld,
	add	r3, r3, #16	@ ivtmp.436, ivtmp.436,
	cmp	fp, #2	@ CurFld,
	add	r5, r5, #8	@ ivtmp.440, ivtmp.440,
	bne	.L436	@,
	mov	r0, #1	@ D.33773,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L433:
	ldr	r1, [r3, #8]	@ _8->pic_distance, _8->pic_distance
	ldr	r2, [r2, #8]	@ _10->pic_distance, _10->pic_distance
	ldr	r3, [r5, #80]	@ pCodecInf_5(D)->pRef, pCodecInf_5(D)->pRef
	ldr	r4, [r3, #8]	@ _19->pic_distance, _19->pic_distance
	mov	r3, r2, asl #1	@ CurDistIdx, _10->pic_distance,
	sub	r1, r3, r1, asl #1	@ D.33777, CurDistIdx, _8->pic_distance,
	ubfx	r1, r1, #0, #9	@ BlkDistFw, D.33777,,
	cmp	r1, #0	@ BlkDistFw,
	rsb	r3, r3, r4, lsl #1	@ D.33777, CurDistIdx, _19->pic_distance,
	ubfx	r4, r3, #0, #9	@ BlkDistBw, D.33777,,
	bne	.L445	@,
.L437:
	mul	r3, r0, r4	@ D.33777, D.33777, BlkDistBw
	mov	r0, #1	@ D.33773,
	str	r3, [r5, #716]	@ D.33777, pCodecInf_5(D)->SymScale
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L445:
	mov	r0, #512	@,
	bl	__aeabi_idiv	@
	b	.L437	@
.L438:
	mov	r0, #0	@ D.33773,
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
	ldr	r2, [r0, #84]	@ D.33785, pCodecInf_8(D)->pRef
	add	r1, r0, #4	@ D.33785, pCodecInf,
	mov	r3, r0	@ pCodecInf, pCodecInf
	cmp	r2, r1	@ D.33785, D.33785
	beq	.L449	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r0, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_8(D)->Syntax.syn_pic.picture_structure, pCodecInf_8(D)->Syntax.syn_pic.picture_structure
	cmp	r0, #1	@ pCodecInf_8(D)->Syntax.syn_pic.picture_structure,
	beq	.L452	@,
	ldr	r5, [r3, #76]	@ D.33785, pCodecInf_8(D)->pCurFrm
	mov	r0, #1	@ D.33784,
	ldr	r1, [r3, #536]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 536B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 536B]
	ldr	r6, [r3, #524]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 524B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 524B]
	ldr	r2, [r5, #8]	@ _80->pic_distance, _80->pic_distance
	ldr	lr, [r3, #532]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 532B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 532B]
	ldr	ip, [r3, #528]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 528B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 528B]
	mov	r2, r2, asl r0	@ CurDistIdx, _80->pic_distance,
	ldr	r4, [r3, #540]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 540B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 540B]
	rsb	r6, r6, r2	@ D.33783, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 524B], CurDistIdx
	rsb	ip, ip, r2	@ D.33783, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 528B], CurDistIdx
	rsb	lr, r2, lr	@ D.33783, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 532B]
	rsb	r2, r2, r1	@ D.33783, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 536B]
	ubfx	lr, lr, #0, #9	@ BlkDistBw, D.33783,,
	ubfx	r1, r6, #0, #9	@ BlkDistFw, D.33783,,
	str	lr, [r3, #740]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 740B]
	ubfx	r2, r2, #0, #9	@ BlkDistBw, D.33783,,
	str	r1, [r3, #732]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 732B]
	ubfx	r1, ip, #0, #9	@ BlkDistFw, D.33783,,
	str	r2, [r3, #744]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 744B]
	str	r1, [r3, #736]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 736B]
	ldr	r2, [r5, #8]	@ _80->pic_distance, _80->pic_distance
	ldr	r1, [r3, #552]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 552B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 552B]
	ldr	lr, [r3, #548]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 548B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 548B]
	ldr	ip, [r3, #544]	@ MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 544B], MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 544B]
	mov	r2, r2, asl r0	@ D.33787, _80->pic_distance,
	add	r2, r2, r0	@ CurDistIdx, D.33787,
	rsb	r4, r4, r2	@ D.33783, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 540B], CurDistIdx
	rsb	ip, ip, r2	@ D.33783, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 544B], CurDistIdx
	rsb	lr, r2, lr	@ D.33783, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 548B]
	rsb	r2, r2, r1	@ D.33783, CurDistIdx, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 552B]
	ubfx	lr, lr, #0, #9	@ BlkDistBw, D.33783,,
	ubfx	r1, r4, #0, #9	@ BlkDistFw, D.33783,,
	ubfx	r2, r2, #0, #9	@ BlkDistBw, D.33783,,
	str	r1, [r3, #748]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 748B]
	str	lr, [r3, #756]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 756B]
	ubfx	r1, ip, #0, #9	@ BlkDistFw, D.33783,,
	str	r2, [r3, #760]	@ BlkDistBw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 760B]
	str	r1, [r3, #752]	@ BlkDistFw, MEM[(struct AVS_CODECINF *)pCodecInf_8(D) + 752B]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L452:
	ldr	r1, [r3, #76]	@ pCodecInf_8(D)->pCurFrm, pCodecInf_8(D)->pCurFrm
	ldr	lr, [r3, #80]	@ pCodecInf_8(D)->pRef, pCodecInf_8(D)->pRef
	ldr	ip, [r2, #8]	@ _11->pic_distance, _11->pic_distance
	ldr	r1, [r1, #8]	@ _13->pic_distance, _13->pic_distance
	ldr	lr, [lr, #8]	@ _22->pic_distance, _22->pic_distance
	mov	r2, r1, asl #1	@ CurDistIdx, _13->pic_distance,
	sub	r1, r2, ip, asl #1	@ D.33783, CurDistIdx, _11->pic_distance,
	rsb	r2, r2, lr, lsl #1	@ D.33783, CurDistIdx, _22->pic_distance,
	ubfx	r1, r1, #0, #9	@ BlkDistFw, D.33783,,
	ubfx	r2, r2, #0, #9	@ BlkDistBw, D.33783,,
	str	r1, [r3, #732]	@ BlkDistFw, pCodecInf_8(D)->BBlkDist
	str	r2, [r3, #740]	@ BlkDistBw, pCodecInf_8(D)->BBlkDist
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L449:
	mov	r0, #0	@ D.33784,
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
	ldr	r4, [r0, #460]	@ D.33797, pCodecInf_4(D)->Syntax.syn_pic.derived_pic_coding_type
	cmp	r4, #1	@ D.33797,
	beq	.L463	@,
	bcc	.L456	@,
	cmp	r4, #2	@ D.33797,
	bne	.L465	@,
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableDirectScale	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTabBBlkDist	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableSymScale	@
	mov	r0, #1	@ D.33796,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L465:
	mov	r0, #0	@ D.33796,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L456:
	ldrb	r4, [r0, #193]	@ zero_extendqisi2	@ pCodecInf_4(D)->Syntax.syn_pic.picture_structure, pCodecInf_4(D)->Syntax.syn_pic.picture_structure
	cmp	r4, #1	@ pCodecInf_4(D)->Syntax.syn_pic.picture_structure,
	beq	.L462	@,
.L463:
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r5	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
.L462:
	mov	r0, #1	@ D.33796,
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
	add	r7, r0, #16064	@ D.33805, pCtx,
	mov	r9, r1	@ pstExtraData, pstExtraData
	ldr	r5, [r6, #48]	@ D.33804, pCtx_4(D)->ImageQue.ResetMagicWord
	add	r7, r7, #24	@ D.33805, D.33805,
	movw	r1, #17144	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	mov	r0, r7	@, D.33805
	str	r5, [r6, #48]	@ D.33804, pCtx_4(D)->ImageQue.ResetMagicWord
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
	cmn	r0, #1	@ D.33806,
	str	r0, [r6, #224]	@ D.33806, pCtx_4(D)->ChanID
	beq	.L471	@,
	add	r4, r4, #12288	@ tmp134, pCtx,
	mov	r0, r5	@, __p
	mov	r1, #808	@,
	add	r5, r5, #4	@ D.33807, __p,
	bl	__memzero	@
	mov	r3, #1024	@ tmp137,
	mov	r0, r8	@ D.33803, tmp127
	str	r9, [r4, #3084]	@ pBs, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pBs
	str	r7, [r4, #3112]	@ D.33805, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pstImgQue
	str	r5, [r4, #2668]	@ D.33807, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pCurFrm
	str	r5, [r4, #2680]	@ D.33807, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pRef
	str	r5, [r4, #2676]	@ D.33807, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pRef
	str	r5, [r4, #2672]	@ D.33807, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].pRef
	str	r3, [r4, #3108]	@ tmp137, MEM[(struct AVS_CODECINF *)pCtx_4(D) + 14880B].DDR_Stride
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L471:
	ldr	r1, .L472	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.33803,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L473:
	.align	2
.L472:
	.word	.LC99
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
	beq	.L477	@,
	ldr	r1, [r5, #192]	@, pImg_11->p_usrdat
	mov	r6, #0	@ tmp132,
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp132, pImg_11->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_11->p_usrdat
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp132, pImg_11->p_usrdat
	mov	r0, #1	@ D.33811,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L477:
	mov	r0, #1	@ D.33811,
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
	add	r4, r0, #12288	@ tmp1126, pCtx,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r10, r0	@ pCtx, pCtx
	ldr	r2, [r4, #2708]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged
	ldrb	r3, [r4, #2720]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.sample_precision, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.sample_precision
	cmp	r2, #1	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged,
	str	r3, [r4, #3388]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.sample_precision, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].sample_precision
	beq	.L481	@,
	ldr	r3, [r0]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _42->s32DSDWaitFlag, _42->s32DSDWaitFlag
	cmp	r3, #1	@ _42->s32DSDWaitFlag,
	beq	.L481	@,
.L482:
	ldrb	r1, [r4, #2719]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.chroma_format, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.chroma_format
	mov	r0, r10	@, pCtx
	ldr	r3, [r4, #2668]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldrb	r2, [r4, #2785]	@ zero_extendqisi2	@ D.33936, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	str	r1, [r4, #3384]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.chroma_format, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].chroma_format
	strb	r2, [r3]	@ D.33936, _171->PicStruct
	bl	AVS_GetImageBuffer	@
	subs	r6, r0, #0	@ D.33932,
	beq	.L578	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	add	r5, r10, #16384	@ tmp1124, pCtx,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _178->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L579	@,
	ldr	r2, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	mvn	r8, #0	@ tmp697,
	mvn	r9, #0	@,
	ldr	r1, .L594	@,
	mov	r0, #29	@,
	ldrd	r6, [r2, #56]	@ D.33943, pCtx_35(D)->pstExtraData,
	strd	r6, [r3, #8]	@ D.33943, pImage,
	ldr	r2, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldrd	r6, [r2, #72]	@ D.33943, pCtx_35(D)->pstExtraData,
	strd	r6, [r3, #16]	@ D.33943, pImage,
	ldr	r2, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldrd	r6, [r2, #88]	@ D.33943, pCtx_35(D)->pstExtraData,
	strd	r6, [r3, #24]	@ D.33943, pImage,
	ldr	r2, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r2, [r2, #104]	@ D.33937, _192->DispEnableFlag
	str	r2, [r3, #68]	@ D.33937, pImage_181->DispEnableFlag
	ldr	r2, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r2, [r2, #108]	@ D.33937, _195->DispFrameDistance
	str	r2, [r3, #72]	@ D.33937, pImage_181->DispFrameDistance
	ldr	r2, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r2, [r2, #112]	@ D.33937, _198->DistanceBeforeFirstFrame
	str	r2, [r3, #76]	@ D.33937, pImage_181->DistanceBeforeFirstFrame
	ldr	r2, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r2, [r2, #128]	@ D.33937, _201->GopNum
	str	r2, [r3, #80]	@ D.33937, pImage_181->GopNum
	ldrb	r2, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	clz	r2, r2	@ D.33944, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	mov	r2, r2, lsr #5	@ D.33944, D.33944,
	str	r2, [r3, #128]	@ D.33944, pImage_181->is_fld_save
	ldr	r2, [r10]	@ D.33938, pCtx_35(D)->pstExtraData
	strd	r8, [r2, #56]	@ tmp697, D.33938,
	ldrd	r6, [r3, #16]	@ pImage_181->Usertag, pImage,
	ldrd	r2, [r3, #8]	@ pImage_181->PTS, pImage,
	strd	r6, [sp]	@ pImage_181->Usertag,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2668]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r2, [r4, #2816]	@ D.33937, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_distance
	str	r2, [r3, #8]	@ D.33937, _213->pic_distance
	ldr	r3, [r4, #2668]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldrb	r2, [r4, #2785]	@ zero_extendqisi2	@ D.33936, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	strb	r2, [r3]	@ D.33936, _216->PicStruct
	ldr	r3, [r4, #2668]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r2, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	strb	r2, [r3, #1]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, _219->PicCodingType
	ldrb	r2, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	ldr	r3, [r4, #2668]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	cmp	r2, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure,
	ldrneb	r2, [r4, #2786]	@ zero_extendqisi2	@ D.33933, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.top_field_first
	moveq	r2, #1	@ D.33933,
	strb	r2, [r3, #2]	@ D.33933, _223->TopFldFirst
	ldrb	r3, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure
	cmp	r3, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.picture_structure,
	bne	.L576	@,
	ldr	r7, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	cmp	r7, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type,
	beq	.L573	@,
.L576:
	add	r6, r10, #14848	@ pCodecInf, pCtx,
	add	r6, r6, #32	@ pCodecInf, pCodecInf,
.L509:
	ldr	r3, [r4, #3048]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag
	mov	r0, r6	@, pCodecInf
	mov	r6, #6	@ tmp793,
	str	r3, [r4, #3392]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].b_filed_enhanced_flag
	bl	AVS_UpdatePmvTable	@
	ldr	lr, [r4, #2688]	@ D.33935, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbWidth
	ldr	ip, [r4, #2692]	@ D.33935, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbHeight
	mov	r2, #0	@ tmp778,
	mov	r3, #1	@ tmp781,
	str	r2, [r5, #232]	@ tmp778, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].mv_output_en
	str	r3, [r5, #236]	@ tmp781, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].load_qmatrix_flag
	add	r2, r10, #16896	@ ivtmp.539, pCtx,
	mul	r1, ip, lr	@ D.33935, D.33935, D.33935
	add	r3, r10, #15168	@ ivtmp.530, pCtx,
	add	r0, r10, #15296	@ D.33948, pCtx,
	add	r3, r3, #26	@ ivtmp.530, ivtmp.530,
	add	r2, r2, #94	@ ivtmp.539, ivtmp.539,
	add	r0, r0, #26	@ D.33948, D.33948,
	sub	r1, r1, #1	@ D.33935, D.33935,
	str	r1, [r5, #228]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].mbamt_to_dec
	ldr	r1, [r4, #3108]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride
	str	lr, [r5, #288]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pic_width_in_mb
	cmp	r1, #0	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride,
	add	lr, r1, #63	@ tmp789, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride,
	str	ip, [r5, #284]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pic_height_in_mb
	movlt	r1, lr	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride, tmp789
	str	r6, [r5, #244]	@ tmp793, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].video_standard
	mov	r1, r1, asr r6	@ D.33935, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].DDR_Stride,
	str	r1, [r5, #240]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ddr_stride
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
	moveq	r1, #1	@ D.33934,
	movne	r1, #3	@ D.33934,
	str	r1, [r5, #336]	@ D.33934, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].picture_structure
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
.L512:
	ldrh	r1, [r3, #2]!	@ D.33945, MEM[base: _573, offset: 0B]
	cmp	r3, r0	@ ivtmp.530, D.33948
	strh	r1, [r2, #2]!	@ movhi	@ D.33945, MEM[base: _572, offset: 0B]
	bne	.L512	@,
	ldr	r3, [r4, #3036]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.aec_enable, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.aec_enable
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #448]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.aec_enable, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].aec_enable
	ldr	r3, [r4, #3048]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag
	str	r3, [r5, #456]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.b_filed_enhanced_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].b_filed_enhanced_flag
	ldr	r3, [r4, #3044]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.p_filed_enhanced_flag, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.p_filed_enhanced_flag
	str	r3, [r5, #452]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.p_filed_enhanced_flag, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].p_filed_enhanced_flag
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ _327->PicCodingType, _327->PicCodingType
	cmp	r3, #2	@ _327->PicCodingType,
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@,
	beq	.L580	@,
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L581	@,
	ldr	r2, [r4, #2672]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldrb	r1, [r2]	@ zero_extendqisi2	@ _377->PicStruct, _377->PicStruct
	cmp	r1, #1	@ _377->PicStruct,
	moveq	r1, #3	@ D.33935,
	movne	r1, #1	@ D.33935,
	str	r1, [r5, #360]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_picture_structure
	ldrsb	r1, [r2, #2]	@ _377->TopFldFirst, _377->TopFldFirst
	str	r1, [r5, #364]	@ _377->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_top_field_first
	ldr	r1, [r3, #104]	@ D.33937, pImage_375->luma_phy_addr
	str	r1, [r5, #384]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_address_0
	ldrb	r1, [r2]	@ zero_extendqisi2	@ _377->PicStruct, _377->PicStruct
	cmp	r1, #1	@ _377->PicStruct,
	moveq	r1, #3	@ D.33935,
	movne	r1, #1	@ D.33935,
	str	r1, [r5, #376]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_picture_structure_0
	ldrsb	r2, [r2, #2]	@ _377->TopFldFirst, _377->TopFldFirst
	str	r2, [r5, #380]	@ _377->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_top_field_first_0
	ldr	r3, [r3, #104]	@ D.33937, pImage_375->luma_phy_addr
	str	r3, [r5, #388]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_address_0
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _393->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	ldrne	r2, [r4, #2676]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	beq	.L582	@,
.L577:
	ldrb	r1, [r2]	@ zero_extendqisi2	@ _398->PicStruct,* D.33939
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	cmp	r1, #1	@ _398->PicStruct,
	moveq	r1, #3	@ D.33935,
	movne	r1, #1	@ D.33935,
	str	r1, [r5, #368]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_picture_structure_1
	ldrsb	r2, [r2, #2]	@ _398->TopFldFirst,
	str	r2, [r5, #372]	@ _398->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_top_field_first_1
	ldr	r3, [r3, #104]	@ D.33937,
	str	r3, [r5, #392]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_address_1
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _407->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L583	@,
	ldr	r3, [r3, #128]	@ D.33937, pImage_410->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #264]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type0
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _415->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L584	@,
	ldr	r3, [r3, #128]	@ D.33937, pImage_418->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #268]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type1
	ldr	r3, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _423->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L585	@,
	ldr	r3, [r3, #128]	@ D.33937, pImage_426->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r3, [r5, #272]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type2
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r1, [r3, #4]	@, _431->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L586	@,
	ldr	r2, [r3, #128]	@ D.33937, pImage_434->is_fld_save
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	str	r2, [r5, #276]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ref_pic_type3
	ldr	r2, [r3, #104]	@ D.33937, pImage_434->luma_phy_addr
	str	r2, [r5, #280]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].ystaddr_1d
	ldr	r3, [r3, #120]	@ D.33937, pImage_434->luma_2d_phy_addr
	str	r3, [r5, #396]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].rcn_address
	ldr	r3, [r4, #2672]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldrb	r2, [r3]	@ zero_extendqisi2	@ _442->PicStruct, _442->PicStruct
	cmp	r2, #1	@ _442->PicStruct,
	moveq	r2, #3	@ D.33934,
	movne	r2, #1	@ D.33934,
	str	r2, [r5, #400]	@ D.33934, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].col_pic_struct
	ldrb	r3, [r3, #1]	@ zero_extendqisi2	@ _442->PicCodingType, _442->PicCodingType
	adds	r3, r3, #0	@ D.33944, _442->PicCodingType,
	movne	r3, #1	@ D.33944,
	str	r3, [r5, #404]	@ D.33944, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].col_pic_type
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	ldr	r1, [r3, #4]	@, _450->FspID
	bl	FSP_GetPmvAddr	@
	str	r0, [r5, #460]	@, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].current_pmv_addr
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _457->FspID
	bl	FSP_GetPmvAddr	@
	add	ip, r10, #15424	@ ivtmp.509, pCtx,
	add	ip, ip, #8	@ ivtmp.509, ivtmp.509,
	mov	r2, #0	@ iCnt,
	str	r0, [r5, #472]	@, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].colpic_mv_addr
	add	r0, r10, #16640	@ ivtmp.518, pCtx,
	ldr	r3, [r4, #3052]	@ D.33937, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	add	r0, r0, #216	@ ivtmp.518, ivtmp.518,
	cmp	r3, #2	@ D.33937,
	movne	r1, #0	@ SymNum,
	moveq	r1, #4	@ SymNum,
	moveq	lr, #8	@ DirNum,
	moveq	r6, #16	@ MvENum,
	movne	r6, #32	@ MvENum,
	movne	lr, r1	@ DirNum, SymNum
.L533:
	add	r2, r2, #1	@ iCnt, iCnt,
	ldr	r3, [ip, #4]!	@ MEM[base: _1, offset: 0B], MEM[base: _1, offset: 0B]
	cmp	r2, r6	@ iCnt, MvENum
	ubfx	r3, r3, #0, #18	@ D.33937, MEM[base: _1, offset: 0B],,
	str	r3, [r0, #4]!	@ D.33937, MEM[base: _585, offset: 0B]
	blt	.L533	@,
	cmp	lr, #0	@ DirNum,
	ble	.L538	@,
	add	ip, r10, #15552	@ ivtmp.491, pCtx,
	add	r0, r10, #16896	@ ivtmp.500, pCtx,
	add	ip, ip, #8	@ ivtmp.491, ivtmp.491,
	add	r0, r0, #24	@ ivtmp.500, ivtmp.500,
	mov	r2, #0	@ iCnt,
.L537:
	add	r2, r2, #1	@ iCnt, iCnt,
	ldr	r3, [ip, #4]!	@ MEM[base: _31, offset: 0B], MEM[base: _31, offset: 0B]
	cmp	r2, lr	@ iCnt, DirNum
	ubfx	r3, r3, #0, #15	@ D.33937, MEM[base: _31, offset: 0B],,
	str	r3, [r0, #4]!	@ D.33937, MEM[base: _30, offset: 0B]
	bne	.L537	@,
.L538:
	cmp	r1, #0	@ SymNum,
	ble	.L536	@,
	add	r0, r10, #15552	@ ivtmp.475, pCtx,
	add	lr, r10, #16896	@ ivtmp.480, pCtx,
	add	r0, r0, #60	@ ivtmp.475, ivtmp.475,
	add	lr, lr, #56	@ ivtmp.480, ivtmp.480,
	mov	ip, #0	@ iCnt,
.L539:
	ldr	r2, [r0, #4]	@ MEM[base: _519, offset: 4B], MEM[base: _519, offset: 4B]
	add	ip, ip, #1	@ iCnt, iCnt,
	ldr	r3, [r0], #8	@ MEM[base: _519, offset: 0B], MEM[base: _519, offset: 0B]
	cmp	ip, r1	@ iCnt, SymNum
	ubfx	r2, r2, #0, #9	@ D.33935, MEM[base: _519, offset: 4B],,
	ubfx	r3, r3, #0, #9	@ D.33935, MEM[base: _519, offset: 0B],,
	orr	r3, r3, r2, asl #9	@ D.33935, D.33935, D.33935,
	str	r3, [lr, #4]!	@ D.33935, MEM[base: _497, offset: 0B]
	bne	.L539	@,
	add	r0, r10, #15552	@ ivtmp.458, pCtx,
	add	r10, r10, #16896	@ ivtmp.467, pCtx,
	add	r0, r0, #40	@ ivtmp.458, ivtmp.458,
	add	r10, r10, #72	@ ivtmp.467, ivtmp.467,
	mov	r2, #0	@ iCnt,
.L540:
	add	r2, r2, #1	@ iCnt, iCnt,
	ldr	r3, [r0, #4]!	@ MEM[base: _544, offset: 0B], MEM[base: _544, offset: 0B]
	cmp	r2, r1	@ iCnt, SymNum
	ubfx	r3, r3, #0, #18	@ D.33937, MEM[base: _544, offset: 0B],,
	str	r3, [r10, #4]!	@ D.33937, MEM[base: _543, offset: 0B]
	bne	.L540	@,
.L536:
	ldr	r3, [r4, #3104]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pmv_colmb_buf_phyaddr, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pmv_colmb_buf_phyaddr
	mov	r6, #1	@ D.33932,
	mov	r0, r6	@, D.33932
	str	r3, [r5, #604]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pmv_colmb_buf_phyaddr, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].pmv_colmb_addr
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L578:
	ldr	r1, .L594+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L487:
	mov	r0, r6	@, D.33932
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L481:
	ldr	r1, .L594+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2723]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.progressive_sequence, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.progressive_sequence
	ldr	r2, [r4, #2732]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.horizontal_size
	cmp	r3, #1	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.progressive_sequence,
	ldr	r3, [r4, #2736]	@ MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size
	add	r2, r2, #15	@ D.33937, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.horizontal_size,
	addne	r3, r3, #31	@ D.33937, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size,
	addeq	r3, r3, #15	@ D.33937, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_seq.vertical_size,
	mov	r2, r2, lsr #4	@ D.33935, D.33937,
	str	r2, [r4, #2688]	@ D.33935, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbWidth
	movne	r3, r3, lsr #5	@ D.33937, D.33937,
	moveq	r3, r3, lsr #4	@ D.33935, D.33937,
	movne	r3, r3, asl #1	@ D.33935, D.33937,
	cmp	r2, #512	@ D.33935,
	str	r3, [r4, #2692]	@ D.33935, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].PicMbHeight
	bgt	.L485	@,
	cmp	r3, #512	@ D.33935,
	bgt	.L485	@,
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _63->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _63->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _63->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	addne	r5, r10, #16384	@ tmp1124, pCtx,
	beq	.L587	@,
.L488:
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _95->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	addeq	r6, r10, #14848	@ D.33939, pCtx,
	addeq	r6, r6, #36	@ D.33939, D.33939,
	beq	.L499	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	add	r6, r10, #14848	@ D.33939, pCtx,
	add	r6, r6, #36	@ D.33939, D.33939,
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
	mov	r3, #0	@ tmp612,
	str	r3, [r7, #192]	@ tmp612, pImg_98->p_usrdat
	str	r3, [r7, #196]	@ tmp612, pImg_98->p_usrdat
	str	r3, [r7, #200]	@ tmp612, pImg_98->p_usrdat
	str	r3, [r7, #204]	@ tmp612, pImg_98->p_usrdat
	str	r6, [r4, #2668]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	str	r6, [r4, #2680]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r6, [r4, #2676]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r6, [r4, #2672]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@, MEM[(struct FRAME_OBJ *)pCtx_35(D) + 14884B].FspID
.L499:
	add	r7, r10, #16064	@ D.33941, pCtx,
	mov	r3, #0	@ tmp633,
	add	r7, r7, #24	@ D.33941, D.33941,
	str	r3, [r4, #3360]	@ tmp633, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].RefNum
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	mov	r1, r7	@, D.33941
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r10]	@ D.33938, pCtx_35(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _144->stChanOption.s32ReRangeEn, _144->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _144->stChanOption.s32ReRangeEn,
	bne	.L500	@,
	ldr	r3, [r3, #32]	@ _144->eCapLevel, _144->eCapLevel
	cmp	r3, #25	@ _144->eCapLevel,
	beq	.L588	@,
.L500:
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L502	@,
	ldr	r3, [r10]	@ pCtx_35(D)->pstExtraData, pCtx_35(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _152->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _152->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _152->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L589	@,
.L504:
	mov	r0, r7	@, D.33941
	bl	ResetVoQueue	@
.L502:
	str	r6, [r4, #2668]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	mov	r5, #0	@ tmp661,
	str	r6, [r4, #2680]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	mov	r0, r10	@, pCtx
	str	r6, [r4, #2676]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r6, [r4, #2672]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r5, [r4, #2708]	@ tmp661, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged
	bl	AVS_AllocateVHB	@
	subs	r6, r0, #0	@ D.33932,
	strne	r5, [r4, #2708]	@ tmp661, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].SizeChanged
	bne	.L482	@,
	ldr	r1, .L594+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L487	@
.L485:
	ldr	r1, .L594+16	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	mov	r6, #0	@ D.33932,
	mov	r0, r6	@, D.33932
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L573:
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	add	r6, r10, #14848	@ pCodecInf, pCtx,
	add	r6, r6, #32	@ pCodecInf, pCodecInf,
	ldr	r1, [r3, #4]	@, _231->FspID
	bl	FSP_SetRef	@
	ldr	r3, [r4, #2680]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	add	r2, r6, #4	@ D.33939, pCodecInf,
	cmp	r3, r2	@ D.33939, D.33939
	beq	.L510	@,
	mov	r2, r7	@, MEM[(struct AVS_SYNTAX *)pCtx_35(D) + 15000B].syn_pic.derived_pic_coding_type
	ldr	r1, [r3, #4]	@, _234->FspID
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FSP_SetRef	@
.L510:
	ldr	r1, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r2, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm
	str	r1, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r2, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	str	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	b	.L509	@
.L580:
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L590	@,
	ldr	r2, [r4, #2672]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldrb	r1, [r2]	@ zero_extendqisi2	@ _335->PicStruct, _335->PicStruct
	cmp	r1, #1	@ _335->PicStruct,
	moveq	r1, #3	@ D.33935,
	movne	r1, #1	@ D.33935,
	str	r1, [r5, #360]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_picture_structure
	ldrsb	r2, [r2, #2]	@ _335->TopFldFirst, _335->TopFldFirst
	str	r2, [r5, #364]	@ _335->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_top_field_first
	ldr	r3, [r3, #104]	@ D.33937, pImage_333->luma_phy_addr
	str	r3, [r5, #384]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].bwd_address_0
	ldr	r3, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _344->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L591	@,
	ldr	r2, [r4, #2676]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldrb	r1, [r2]	@ zero_extendqisi2	@ _349->PicStruct, _349->PicStruct
	cmp	r1, #1	@ _349->PicStruct,
	moveq	r1, #3	@ D.33935,
	movne	r1, #1	@ D.33935,
	str	r1, [r5, #376]	@ D.33935, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_picture_structure_0
	ldrsb	r2, [r2, #2]	@ _349->TopFldFirst, _349->TopFldFirst
	str	r2, [r5, #380]	@ _349->TopFldFirst, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_top_field_first_0
	ldr	r3, [r3, #104]	@ D.33937, pImage_347->luma_phy_addr
	str	r3, [r5, #388]	@ D.33937, MEM[(struct AVS_VDMCFG *)pCtx_35(D) + 16612B].fwd_address_0
	ldr	r3, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	ldr	r1, [r3, #4]	@, _358->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	ldrne	r2, [r4, #2680]	@ D.33939, MEM[(struct AVS_CODECINF *)pCtx_35(D) + 14880B].pRef
	bne	.L577	@,
	movw	r2, #2066	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L587:
	add	fp, r10, #14912	@ ivtmp.550, pCtx,
	add	r9, r10, #16064	@ D.33941, pCtx,
	add	fp, fp, #60	@ ivtmp.550, ivtmp.550,
	add	r9, r9, #24	@ D.33941, D.33941,
	add	r5, r10, #16384	@ tmp1124, pCtx,
	mov	r6, #3	@ D.33948,
	mvn	r8, #0	@ ret,
	mov	r3, #0	@ tmp494,
	str	r3, [sp, #12]	@ tmp494, NewNum
	str	r3, [sp, #16]	@ tmp494, ReadNum
	str	r3, [sp, #20]	@ tmp494, RefNum
.L491:
	ldr	r3, [fp, #-4]!	@ MEM[base: _588, offset: 0B], MEM[base: _588, offset: 0B]
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _501->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L489	@,
	ldr	r3, [fp]	@ MEM[base: _588, offset: 0B], MEM[base: _588, offset: 0B]
	mov	r8, #1	@ ret,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _505->FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L592	@,
.L489:
	subs	r6, r6, #1	@ D.33948, D.33948,
	bne	.L491	@,
	cmn	r8, #1	@ ret,
	beq	.L492	@,
	add	r3, sp, #12	@,,
	add	r2, sp, #16	@,,
	add	r1, sp, #20	@,,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r10]	@ D.33938, pCtx_35(D)->pstExtraData
	ldr	r1, [r5, #744]	@ pCtx_35(D)->OldPicWidth, pCtx_35(D)->OldPicWidth
	ldr	r2, [r3, #720]	@ _73->s32DSDThrWidth, _73->s32DSDThrWidth
	cmp	r1, r2	@ pCtx_35(D)->OldPicWidth, _73->s32DSDThrWidth
	bgt	.L493	@,
	ldr	r1, [r5, #748]	@ pCtx_35(D)->OldPicHeight, pCtx_35(D)->OldPicHeight
	ldr	r2, [r3, #724]	@ _73->s32DSDThrHeight, _73->s32DSDThrHeight
	cmp	r1, r2	@ pCtx_35(D)->OldPicHeight, _73->s32DSDThrHeight
	bgt	.L493	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	ldr	r1, [sp, #12]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.33935, ReadNum, NewNum
	cmp	r2, #0	@ D.33935,
	ble	.L593	@,
.L496:
	mov	r2, #1	@ tmp554,
	str	r2, [r3, #728]	@ tmp554, _73->s32DSDWaitFlag
.L492:
	mov	r6, #0	@ D.33932,
	b	.L487	@
.L589:
	ldr	r3, [r5, #752]	@ pCtx_35(D)->DSDNeedClearQue, pCtx_35(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_35(D)->DSDNeedClearQue,
	bne	.L502	@,
	b	.L504	@
.L579:
	movw	r2, #1963	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L583:
	movw	r2, #2090	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L584:
	movw	r2, #2094	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L585:
	movw	r2, #2098	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L588:
	ldr	r3, [r5, #736]	@ pCtx_35(D)->FspPartitionOK, pCtx_35(D)->FspPartitionOK
	cmp	r3, #0	@ pCtx_35(D)->FspPartitionOK,
	bne	.L502	@,
	b	.L504	@
.L493:
	ldr	r2, [sp, #12]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	bgt	.L496	@,
	ldr	r2, [sp, #16]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L496	@,
	mov	r2, #0	@ tmp555,
	str	r2, [r3, #728]	@ tmp555, _73->s32DSDWaitFlag
	str	r2, [r5, #752]	@ tmp555, pCtx_35(D)->DSDNeedClearQue
	b	.L488	@
.L592:
	mov	r0, r10	@, pCtx
	bl	AVS_SetImgFormat	@
	cmp	r6, r8	@ D.33948, tmp2
	streq	r6, [r7, #376]	@ D.33948, pImage_503->u32IsLastFrame
	mov	r2, r8	@, ret
	ldr	r3, [fp]	@ MEM[base: _588, offset: 0B], MEM[base: _588, offset: 0B]
	mov	r8, #0	@ ret,
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	ldr	r1, [r3, #4]	@, _509->FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, #224]	@ pCtx_35(D)->ChanID, pCtx_35(D)->ChanID
	mov	r3, r9	@, D.33941
	str	r7, [sp]	@ pImage,
	mov	r2, r10	@, pCtx
	mov	r1, #6	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	mov	r0, r10	@, pCtx
	beq	.L489	@,
	ldr	r1, [r7, #176]	@, pImage_503->image_id
	mvn	r8, #0	@ ret,
	bl	AVSDEC_RecycleImage	@
	ldr	r1, [r7, #192]	@, pImage_503->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp1139,
	ldr	r1, [r7, #196]	@, pImage_503->p_usrdat
	str	r3, [r7, #192]	@ tmp1139, pImage_503->p_usrdat
	ldr	r0, [r5, #224]	@, pCtx_35(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp1140,
	str	r3, [r7, #196]	@ tmp1140, pImage_503->p_usrdat
	b	.L489	@
.L581:
	movw	r2, #2074	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L582:
	movw	r2, #2083	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L586:
	movw	r2, #2102	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L591:
	movw	r2, #2060	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L590:
	movw	r2, #2054	@,
	ldr	r1, .L594+20	@,
	mov	r6, r3	@ D.33932, pImage
	bl	dprint_vfmw	@
	b	.L487	@
.L593:
	str	r6, [r3, #728]	@ D.33948, _73->s32DSDWaitFlag
	mov	r3, #1	@ tmp551,
	str	r3, [r5, #752]	@ tmp551, pCtx_35(D)->DSDNeedClearQue
	b	.L488	@
.L595:
	.align	2
.L594:
	.word	.LC104
	.word	.LC103
	.word	.LC100
	.word	.LC102
	.word	.LC101
	.word	.LC97
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
	beq	.L604	@,
	add	r4, r0, #14912	@ ivtmp.567, pCtx,
	add	r10, r0, #16064	@ D.33980, pCtx,
	add	r4, r4, #60	@ ivtmp.567, ivtmp.567,
	add	r10, r10, #24	@ D.33980, D.33980,
	add	r6, r0, #16384	@ tmp188, pCtx,
	mov	r5, #3	@ D.33976,
	mvn	r8, #0	@ ret,
.L603:
	ldr	r2, [r4, #-4]!	@ MEM[base: _62, offset: 0B], MEM[base: _62, offset: 0B]
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	ldr	r1, [r2, #4]	@, _17->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImage,
	beq	.L600	@,
	ldr	r3, [r4]	@ MEM[base: _62, offset: 0B], MEM[base: _62, offset: 0B]
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	ldr	r1, [r3, #4]	@, _22->FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L613	@,
.L600:
	subs	r5, r5, #1	@ D.33976, D.33976,
	bne	.L603	@,
	cmp	r8, #0	@ ret,
	bne	.L604	@,
	mov	r0, r8	@, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L604:
	add	r0, r7, #16064	@, pCtx,
	add	r0, r0, #24	@,,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	GetVoLastImageID	@
.L613:
	mov	r0, r7	@, pCtx
	bl	AVS_SetImgFormat	@
	cmp	r5, #1	@ D.33976,
	streq	r5, [r9, #224]	@ D.33976, pImage_20->last_frame
	mov	r2, #1	@,
	ldr	r3, [r4]	@ MEM[base: _62, offset: 0B], MEM[base: _62, offset: 0B]
	ldr	r0, [r6, #224]	@, pCtx_11(D)->ChanID
	ldr	r1, [r3, #4]	@, _29->FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #224]	@ pCtx_11(D)->ChanID, pCtx_11(D)->ChanID
	mov	r3, r10	@, D.33980
	str	r9, [sp]	@ pImage,
	mov	r2, r7	@, pCtx
	mov	r1, #6	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L602	@,
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
	b	.L600	@
.L602:
	ldr	r3, [r9, #180]	@ pImage_20->error_level, pImage_20->error_level
	cmp	r3, #100	@ pImage_20->error_level,
	bhi	.L607	@,
	ldr	r3, [r9, #144]	@ pImage_20->image_width, pImage_20->image_width
	cmp	r3, #31	@ pImage_20->image_width,
	bhi	.L614	@,
.L607:
	mvn	r8, #0	@ ret,
	b	.L600	@
.L614:
	ldr	r8, [r9, #148]	@ pImage_20->image_height, pImage_20->image_height
	cmp	r8, #31	@ pImage_20->image_height,
	movhi	r8, #0	@ ret,
	mvnls	r8, #0	@ ret,
	b	.L600	@
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
	cmp	r0, #1	@ D.33988,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L622	@,
	mov	r0, #0	@ D.33988,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L622:
	add	r1, r5, #16064	@, pCtx,
	ldr	r0, [r4, #224]	@, pCtx_3(D)->ChanID
	add	r1, r1, #24	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.33988,
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
	add	r8, r1, #12	@ D.34023, pSlcStr,
	mov	r7, r1	@ pSlcStr, pSlcStr
	mov	r9, r0	@ ChanID, ChanID
	mov	r6, r1	@ ivtmp.600, pSlcStr
	mov	r5, #0	@ tmp131,
.L625:
	ldr	r3, [r4, #4]!	@ MEM[base: _24, offset: 0B], MEM[base: _24, offset: 0B]
	cmp	r3, #0	@ MEM[base: _24, offset: 0B],
	ble	.L624	@,
	ldr	r3, [r6]	@ MEM[base: _29, offset: 0B], MEM[base: _29, offset: 0B]
	cmp	r3, #0	@ MEM[base: _29, offset: 0B],
	bne	.L631	@,
.L624:
	cmp	r4, r8	@ ivtmp.585, D.34023
	str	r5, [r4]	@ tmp131, MEM[base: _24, offset: 0B]
	str	r5, [r6], #4	@ tmp131, MEM[base: _26, offset: 0B]
	str	r5, [r7, #16]	@ tmp131, pSlcStr_5(D)->slice_start_mbn
	bne	.L625	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L631:
	ldr	r1, [r4, #12]	@, MEM[base: _24, offset: 12B]
	mov	r0, r9	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L624	@
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
	ble	.L635	@,
	add	r5, r0, #96	@ ivtmp.608, pCtx,
	add	r6, r0, #16384	@ tmp133, pCtx,
	mov	r4, #0	@ i,
.L634:
	mov	r1, r5	@, ivtmp.608
	ldr	r0, [r6, #224]	@, pCtx_3(D)->ChanID
	bl	ClearSlice	@
	ldr	r3, [r7, #2144]	@ MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum, MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum
	add	r4, r4, #1	@ i, i,
	add	r5, r5, #28	@ ivtmp.608, ivtmp.608,
	cmp	r3, r4	@ MEM[(struct AVS_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcNum, i
	bgt	.L634	@,
.L635:
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
	.pad #8
	sub	sp, sp, #8	@,,
	add	r4, r0, #12288	@ tmp221, pCtx,
	ldr	r3, [r3, #8]	@ DecMode, _2->s32DecMode
	cmp	r3, #4	@ DecMode,
	ldrls	pc, [pc, r3, asl #2]	@ DecMode
	b	.L654	@
.L642:
	.word	.L641
	.word	.L643
	.word	.L644
	.word	.L654
	.word	.L641
.L644:
	ldr	r5, [r4, #3768]	@ MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	clz	r5, r5	@ ret, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	mov	r5, r5, lsr #5	@ ret, ret,
.L640:
	cmp	r5, #0	@ ret,
	str	r3, [r4, #3356]	@ DecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	beq	.L661	@,
.L647:
	ldr	r3, [r4, #3768]	@ D.34039, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	cmp	r3, #1	@ D.34039,
	beq	.L662	@,
.L650:
	cmp	r3, #2	@ D.34039,
	bne	.L652	@,
	ldr	r3, [r4, #3360]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	cmp	r3, #1	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum,
	ble	.L651	@,
.L652:
	add	r1, r4, #3424	@, tmp221,
	add	r0, r4, #2704	@, tmp221,
	add	r1, r1, #4	@,,
	mov	r2, #372	@,
	add	r0, r0, #8	@,,
	bl	memcpy	@
	ldrb	ip, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Syntax.syn_pic.picture_structure, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Syntax.syn_pic.picture_structure
	ldr	r3, [r4, #3052]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Syntax.syn_pic.derived_pic_coding_type, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Syntax.syn_pic.derived_pic_coding_type
	mov	r0, #18	@,
	ldr	r2, [r4, #3372]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].PicCnt, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].PicCnt
	ldr	r1, .L663	@,
	str	ip, [sp]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Syntax.syn_pic.picture_structure,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	mov	r0, #1	@ D.34042,
	bic	r3, r3, #311296	@ D.34039, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.34039, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L643:
	ldr	r2, [r4, #3356]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	ldr	r5, [r4, #3768]	@ MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	cmp	r2, #2	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode,
	str	r3, [r4, #3356]	@ DecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	moveq	r2, #0	@ tmp151,
	streq	r2, [r4, #3360]	@ tmp151, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	subs	r5, r5, #2	@ ret, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type,
	movne	r5, #1	@ ret,
	cmp	r5, #0	@ ret,
	bne	.L647	@,
.L661:
	mov	r0, r6	@, pCtx
	bl	AVS_ClearCurPic	@
	ldr	r2, .L663+4	@ tmp170,
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	ldr	ip, [r2]	@ D.34040, g_event_report
	bic	r3, r3, #311296	@ D.34039, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.34039, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	cmp	ip, #0	@ D.34040,
	beq	.L660	@,
	add	r6, r6, #16384	@ tmp172, pCtx,
	mov	r2, r5	@, ret
	mov	r1, #113	@,
	ldr	r0, [r6, #224]	@, pCtx_1(D)->ChanID
	blx	ip	@ D.34040
	mov	r0, r5	@ D.34042, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L641:
	ldr	r2, [r4, #3356]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	str	r3, [r4, #3356]	@ DecMode, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode
	cmp	r2, #2	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].UsedDecMode,
	ldr	r3, [r4, #3768]	@ D.34039, MEM[(struct AVS_SYNTAX *)pCtx_1(D) + 15716B].syn_pic.derived_pic_coding_type
	moveq	r2, #0	@ tmp145,
	streq	r2, [r4, #3360]	@ tmp145, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	cmp	r3, #1	@ D.34039,
	bne	.L650	@,
.L662:
	ldr	r3, [r4, #3360]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum
	cmp	r3, #0	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].RefNum,
	bgt	.L652	@,
.L651:
	mov	r0, r6	@, pCtx
	bl	AVS_ClearCurPic	@
	ldr	r2, .L663+4	@ tmp188,
	ldr	r3, [r4, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	ldr	ip, [r2]	@ D.34040, g_event_report
	bic	r3, r3, #311296	@ D.34039, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity,
	str	r3, [r4, #2696]	@ D.34039, MEM[(struct AVS_CODECINF *)pCtx_1(D) + 14880B].Integrity
	cmp	ip, #0	@ D.34040,
	beq	.L660	@,
	add	r6, r6, #16384	@ tmp190, pCtx,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r6, #224]	@, pCtx_1(D)->ChanID
	blx	ip	@ D.34040
.L660:
	mov	r0, #0	@ D.34042,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L654:
	mov	r5, #1	@ ret,
	b	.L640	@
.L664:
	.align	2
.L663:
	.word	.LC105
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
	and	r3, r3, #376832	@ D.34051, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity,
	cmp	r3, #376832	@ D.34051,
	beq	.L667	@,
	mov	r0, #0	@,
	bx	lr	@
.L667:
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
	add	r4, r0, #12288	@ tmp422, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	mov	r7, r1	@ ErrRatio, ErrRatio
	bl	AVS_ClearCurPic	@
	add	r0, r5, #8	@, pCtx,
	movw	r1, #14872	@,
	bl	__memzero	@
	ldr	r3, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type,
	bne	.L669	@,
	str	r7, [r4, #3364]	@ ErrRatio, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	add	r6, r5, #16384	@ tmp423, pCtx,
	ldr	r3, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	ldr	r2, [r4, #3364]	@ D.34055, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	ldr	r3, [r3]	@ RefErrThr, _105->s32RefErrThr
	cmp	r3, r2	@ RefErrThr, D.34055
	blt	.L719	@,
.L674:
	mov	r0, r5	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _98->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L720	@,
	ldr	r2, [r4, #3376]	@ D.34060, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pSeqUD
	mov	r1, #0	@ tmp328,
	cmp	r2, #0	@ D.34060,
	strne	r2, [r3, #192]	@ D.34060, pImage_101->p_usrdat
	ldr	r2, [r4, #3380]	@ D.34060, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pPicUD
	str	r1, [r4, #3376]	@ tmp328, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pSeqUD
	cmp	r2, r1	@ D.34060,
	strne	r2, [r3, #196]	@ D.34060, pImage_101->p_usrdat
	mov	r2, #0	@ tmp333,
	ldr	r3, [r4, #3052]	@ D.34057, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type
	str	r2, [r4, #3380]	@ tmp333, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pPicUD
	cmp	r3, #1	@ D.34057,
	bls	.L721	@,
.L679:
	ldr	r7, [r4, #2668]	@ pOutput, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
.L684:
	ldr	r1, [r7, #4]	@, pOutput_1->FspID
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImage,
	beq	.L722	@,
	add	r3, r5, #14848	@ D.34058, pCtx,
	add	r3, r3, #36	@ D.34058, D.34058,
	cmp	r7, r3	@ pOutput, D.34058
	beq	.L689	@,
	ldr	r3, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	ldr	r2, [r4, #3364]	@ D.34055, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	ldr	r3, [r3, #4]	@ OutErrThr, _142->s32OutErrThr
	cmp	r3, r2	@ OutErrThr, D.34055
	bge	.L687	@,
	ldr	r1, .L725	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r7, #4]	@, pOutput_1->FspID
	mov	r2, #0	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r8, #192]	@ D.34060, pImage_139->p_usrdat
	cmp	r1, #0	@ D.34060,
	beq	.L688	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp408,
	str	r3, [r8, #192]	@ tmp408, pImage_139->p_usrdat
.L688:
	ldr	r1, [r8, #196]	@ D.34060, pImage_139->p_usrdat
	cmp	r1, #0	@ D.34060,
	beq	.L689	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	mov	r4, #1	@ D.34054,
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp412,
	str	r3, [r8, #196]	@ tmp412, pImage_139->p_usrdat
.L672:
	mov	r0, r4	@, D.34054
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L687:
	mov	r1, r5	@, pCtx
	mov	r0, r7	@, pOutput
	bl	AVS_OutputOneFrame	@
	subs	r4, r0, #0	@ D.34054,
	bne	.L689	@,
	ldr	r1, [r8, #192]	@ D.34060, pImage_139->p_usrdat
	cmp	r1, #0	@ D.34060,
	beq	.L690	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #192]	@ D.34054, pImage_139->p_usrdat
.L690:
	ldr	r1, [r8, #196]	@ D.34060, pImage_139->p_usrdat
	cmp	r1, #0	@ D.34060,
	beq	.L672	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp420,
	mov	r0, r4	@, D.34054
	str	r3, [r8, #196]	@ tmp420, pImage_139->p_usrdat
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L689:
	mov	r4, #1	@ D.34054,
	mov	r0, r4	@, D.34054
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L669:
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	add	r6, r5, #16384	@ tmp423, pCtx,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _22->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L723	@,
	ldr	r2, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r8, [r3, #180]	@ D.34057, pImage_25->error_level
	ldr	r1, [r2, #4]	@, _29->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L724	@,
	ldr	r3, [r3, #180]	@ pImage_32->error_level, pImage_32->error_level
	ldr	r2, [r4, #3052]	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type
	add	r8, r8, r3	@ D.34057, D.34057, pImage_32->error_level
	add	r7, r7, r8	@ D.34055, ErrRatio, D.34057
	cmp	r7, #100	@ D.34055,
	movge	r7, #100	@ D.34055,
	str	r7, [r4, #3364]	@ D.34055, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	ldr	r3, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	cmp	r2, #2	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.derived_pic_coding_type,
	ldr	r3, [r3]	@ RefErrThr, _43->s32RefErrThr
	beq	.L674	@,
	ldr	r2, [r4, #3364]	@ D.34055, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].ErrRatio
	cmp	r3, r2	@ RefErrThr, D.34055
	bge	.L674	@,
.L719:
	ldr	r1, .L725+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	mov	r8, #0	@ tmp242,
	str	r8, [r4, #3360]	@ tmp242, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _50->FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L675	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	add	r5, r5, #14848	@ D.34058, pCtx,
	add	r5, r5, #36	@ D.34058, D.34058,
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
	str	r8, [r7, #192]	@ tmp242, pImg_53->p_usrdat
	str	r8, [r7, #196]	@ tmp242, pImg_53->p_usrdat
	str	r8, [r7, #200]	@ tmp242, pImg_53->p_usrdat
	str	r8, [r7, #204]	@ tmp242, pImg_53->p_usrdat
	str	r5, [r4, #2668]	@ D.34058, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	str	r5, [r4, #2680]	@ D.34058, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r5, [r4, #2676]	@ D.34058, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r5, [r4, #2672]	@ D.34058, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2600]	@, MEM[(struct FRAME_OBJ *)pCtx_15(D) + 14884B].FspID
.L675:
	mov	r3, #0	@ tmp315,
	str	r3, [r4, #3360]	@ tmp315, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	mov	r4, r3	@ D.34054, tmp315
	mov	r0, r4	@, D.34054
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L721:
	ldr	r2, [r4, #3360]	@ D.34055, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	ldrb	r1, [r4, #2785]	@ zero_extendqisi2	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.picture_structure, MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.picture_structure
	cmp	r2, #1	@ D.34055,
	addle	r2, r2, #1	@ D.34055, D.34055,
	adds	r3, r3, #0	@ tmp346, D.34057,
	str	r2, [r4, #3360]	@ D.34055, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].RefNum
	movne	r3, #1	@ tmp346,
	cmp	r1, #1	@ MEM[(struct AVS_SYNTAX *)pCtx_15(D) + 15000B].syn_pic.picture_structure,
	orreq	r3, r3, #1	@,, tmp349, tmp346
	cmp	r3, #0	@ tmp349,
	beq	.L681	@,
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	ldr	r1, [r3, #4]	@, _117->FspID
	bl	FSP_SetRef	@
	add	r3, r5, #14848	@ D.34058, pCtx,
	ldr	r2, [r4, #2680]	@ D.34058, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	add	r3, r3, #36	@ D.34058, D.34058,
	cmp	r2, r3	@ D.34058, D.34058
	beq	.L682	@,
	ldr	r1, [r2, #4]	@, _120->FspID
	mov	r2, #0	@,
	ldr	r0, [r6, #224]	@, pCtx_15(D)->ChanID
	bl	FSP_SetRef	@
.L682:
	ldr	r1, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r2, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	ldr	r3, [r4, #2668]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm
	str	r1, [r4, #2680]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r2, [r4, #2676]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	str	r3, [r4, #2672]	@ MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pCurFrm, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
.L681:
	ldr	r3, [r5]	@ pCtx_15(D)->pstExtraData, pCtx_15(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _131->s32DecOrderOutput, _131->s32DecOrderOutput
	cmp	r3, #0	@ _131->s32DecOrderOutput,
	ldreq	r7, [r4, #2676]	@ pOutput, MEM[(struct AVS_CODECINF *)pCtx_15(D) + 14880B].pRef
	beq	.L684	@,
	b	.L679	@
.L720:
	movw	r2, #3330	@,
	ldr	r1, .L725+8	@,
	mov	r4, r3	@ D.34054, pImage
	bl	dprint_vfmw	@
	b	.L672	@
.L722:
	movw	r2, #3370	@,
	ldr	r1, .L725+8	@,
	mov	r4, r8	@ D.34054, pImage
	bl	dprint_vfmw	@
	b	.L672	@
.L723:
	movw	r2, #3305	@,
	ldr	r1, .L725+8	@,
	mov	r4, r3	@ D.34054, pImage
	bl	dprint_vfmw	@
	b	.L672	@
.L724:
	movw	r2, #3309	@,
	ldr	r1, .L725+8	@,
	mov	r4, r3	@ D.34054, pImage
	bl	dprint_vfmw	@
	b	.L672	@
.L726:
	.align	2
.L725:
	.word	.LC107
	.word	.LC106
	.word	.LC97
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
	bne	.L728	@,
	ldrb	r3, [r4, #149]	@ zero_extendqisi2	@ pCtx_2(D)->LastPacket.StreamPack[1].IsLastSeg, pCtx_2(D)->LastPacket.StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pCtx_2(D)->LastPacket.StreamPack[1].IsLastSeg,
	beq	.L733	@,
.L728:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L733:
	ldr	r3, [r4, #152]	@ pCtx_2(D)->LastPacket.StreamPack[1].PhyAddr, pCtx_2(D)->LastPacket.StreamPack[1].PhyAddr
	cmp	r3, #0	@ pCtx_2(D)->LastPacket.StreamPack[1].PhyAddr,
	beq	.L728	@,
	ldr	r1, [r4, #160]	@, pCtx_2(D)->LastPacket.StreamPack[1].StreamID
	ldr	r0, [r4, #224]	@, pCtx_2(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L728	@
	.fnend
	.size	ClearPacket, .-ClearPacket
	.align	2
	.global	WriteAvsSliceMsg
	.type	WriteAvsSliceMsg, %function
WriteAvsSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #12288	@ tmp272, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r2, [r4, #2144]	@ D.34075, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	cmp	r2, #512	@ D.34075,
	bge	.L743	@,
	cmp	r2, #0	@ D.34075,
	ble	.L737	@,
	add	lr, r0, #16384	@ tmp273, pCtx,
	sub	r3, r2, #1	@ tmp157, D.34075,
	ldr	r1, [r4, #3448]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size
	ldr	ip, [lr, #64]	@ D.34076, pCtx_4(D)->LastPacket.StreamPack[0].VirAddr
	mov	r0, r3, asl #5	@ tmp160, tmp157,
	add	r1, r1, #15	@ D.34078, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size,
	sub	r3, r0, r3, asl #2	@ tmp161, tmp160, tmp157,
	add	r3, r5, r3	@ tmp162, pCtx, tmp161
	ldrb	r0, [ip, #3]	@ zero_extendqisi2	@ D.34078, MEM[(HI_U8 *)_8 + 3B]
	mov	r1, r1, lsr #4	@ D.34078, D.34078,
	ldr	r3, [r3, #112]	@ D.34078, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_16].slice_start_mbn
	mul	r0, r0, r1	@ D.34078, D.34078, D.34078
	cmp	r0, r3	@ D.34078, D.34078
	bls	.L744	@,
.L738:
	mov	r3, r2, asl #5	@ tmp173, D.34075,
	ldr	r6, [lr, #72]	@ pCtx_4(D)->LastPacket.StreamPack[0].PhyAddr, pCtx_4(D)->LastPacket.StreamPack[0].PhyAddr
	sub	r3, r3, r2, asl #2	@ tmp174, tmp173, D.34075,
	add	r0, r5, r3	@ tmp175, pCtx, tmp174
	str	r6, [r0, #96]	@ pCtx_4(D)->LastPacket.StreamPack[0].PhyAddr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_phy_addr
	ldr	r3, [lr, #80]	@ pCtx_4(D)->LastPacket.StreamPack[0].StreamID, pCtx_4(D)->LastPacket.StreamPack[0].StreamID
	str	r3, [r0, #116]	@ pCtx_4(D)->LastPacket.StreamPack[0].StreamID, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].steram_id
	ldr	r3, [lr, #76]	@ pCtx_4(D)->LastPacket.StreamPack[0].LenInByte, pCtx_4(D)->LastPacket.StreamPack[0].LenInByte
	str	r3, [r0, #104]	@ pCtx_4(D)->LastPacket.StreamPack[0].LenInByte, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_lenInByte
	ldrb	r3, [ip, #3]	@ zero_extendqisi2	@ D.34078, MEM[(HI_U8 *)_58 + 3B]
	mul	r1, r1, r3	@ D.34078, D.34078, D.34078
	str	r1, [r0, #112]	@ D.34078, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].slice_start_mbn
	ldr	r3, [r4, #2732]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.horizontal_size
	ldr	r5, [r4, #2736]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.vertical_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.vertical_size
	add	ip, r3, #15	@ D.34078, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.horizontal_size,
	add	r5, r5, #15	@ D.34078, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15000B].syn_seq.vertical_size,
	mov	r3, ip, lsr #4	@ D.34078, D.34078,
	mov	r5, r5, lsr #4	@ D.34078, D.34078,
	mul	r3, r3, r5	@ totalMb, D.34078, D.34078
	sub	r3, r3, #1	@ D.34078, totalMb,
	cmp	r1, r3	@ D.34078, D.34078
	bhi	.L741	@,
	ldrb	r3, [lr, #69]	@ zero_extendqisi2	@ pCtx_4(D)->LastPacket.StreamPack[0].IsLastSeg, pCtx_4(D)->LastPacket.StreamPack[0].IsLastSeg
	add	r2, r2, #1	@ D.34075, D.34075,
	cmp	r3, #1	@ pCtx_4(D)->LastPacket.StreamPack[0].IsLastSeg,
	ldrne	r3, [lr, #152]	@ pCtx_4(D)->LastPacket.StreamPack[1].PhyAddr, pCtx_4(D)->LastPacket.StreamPack[1].PhyAddr
	moveq	r3, #0	@ tmp226,
	streq	r3, [r0, #100]	@ tmp226, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_phy_addr
	streq	r3, [r0, #120]	@ tmp226, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].steram_id
	strne	r3, [r0, #100]	@ pCtx_4(D)->LastPacket.StreamPack[1].PhyAddr, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_phy_addr
	ldrne	r3, [lr, #160]	@ pCtx_4(D)->LastPacket.StreamPack[1].StreamID, pCtx_4(D)->LastPacket.StreamPack[1].StreamID
	strne	r3, [r0, #120]	@ pCtx_4(D)->LastPacket.StreamPack[1].StreamID, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].steram_id
	ldrne	r3, [lr, #156]	@ pCtx_4(D)->LastPacket.StreamPack[1].LenInByte, pCtx_4(D)->LastPacket.StreamPack[1].LenInByte
	str	r3, [r0, #108]	@ pCtx_4(D)->LastPacket.StreamPack[1].LenInByte, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcStr[_6].stream_lenInByte
	mov	r0, #1	@ D.34074,
	str	r2, [r4, #2144]	@ D.34075, MEM[(struct AVS_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L741:
	mov	r0, #0	@ D.34074,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L737:
	ldr	r1, [r4, #3448]	@ MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size
	add	lr, r0, #16384	@ tmp273, pCtx,
	add	r1, r1, #15	@ D.34078, MEM[(struct AVS_SYNTAX *)pCtx_4(D) + 15716B].syn_seq.horizontal_size,
	ldr	ip, [lr, #64]	@ D.34076, pCtx_4(D)->LastPacket.StreamPack[0].VirAddr
	mov	r1, r1, lsr #4	@ D.34078, D.34078,
	b	.L738	@
.L743:
	mov	r3, #512	@,
	ldr	r1, .L745	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34074,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L744:
	mov	r2, r0	@, D.34078
	ldr	r1, .L745+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34074,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L746:
	.align	2
.L745:
	.word	.LC108
	.word	.LC109
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
	ldr	r8, [r0, #140]	@ D.34452, pSyntax_55(D)->syn_pic.weighting_quant_param_index
	mov	r3, #0	@ tmp279,
	ldr	r4, [r0, #124]	@ D.34461, pSyntax_55(D)->syn_pic.mb_adapt_weighting_quant_disable
	cmp	r8, #1	@ D.34452,
	str	r3, [sp]	@ tmp279, quant_param_undetail
	str	r3, [sp, #4]	@ tmp279, quant_param_undetail
	str	r3, [sp, #8]	@ tmp279, quant_param_undetail
	str	r3, [sp, #12]	@ tmp279, quant_param_detail
	str	r3, [sp, #16]	@ tmp279, quant_param_detail
	str	r3, [sp, #20]	@ tmp279, quant_param_detail
	beq	.L751	@,
	clz	r3, r4	@ D.34462, D.34461
	cmp	r8, #3	@ D.34452,
	cmpeq	r4, #0	@, D.34461,
	mov	r3, r3, lsr #5	@ D.34462, D.34462,
	beq	.L751	@,
	cmp	r8, #2	@ D.34452,
	addeq	r3, r0, #168	@ ivtmp.937, pSyntax,
	beq	.L753	@,
	cmp	r3, #0	@ D.34462,
	bne	.L785	@,
.L786:
	add	r4, sp, #24	@ tmp432,,
	cmp	r8, #0	@ D.34452,
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
	bne	.L834	@,
	ldr	r3, .L839	@ ivtmp.880,
	add	r2, r4, #10	@ ivtmp.889, tmp432,
	add	ip, r3, #12	@ D.34448, ivtmp.880,
.L767:
	ldrh	r1, [r3, #2]!	@ MEM[base: _307, offset: 0B], MEM[base: _307, offset: 0B]
	cmp	r3, ip	@ ivtmp.880, D.34448
	strh	r1, [r2, #2]!	@ movhi	@ MEM[base: _307, offset: 0B], MEM[base: _308, offset: 0B]
	bne	.L767	@,
.L760:
	add	ip, r0, #194	@ ivtmp.640, pSyntax,
	add	lr, r0, #320	@ D.34448, pSyntax,
	add	lr, lr, #2	@ D.34448, D.34448,
	mov	r2, #128	@ tmp447,
	mov	r3, ip	@ ivtmp.758, ivtmp.640
.L771:
	strh	r2, [r3, #2]!	@ movhi	@ tmp447, MEM[base: _100, offset: 0B]
	cmp	r3, lr	@ ivtmp.758, D.34448
	bne	.L771	@,
	ldr	r3, [r0, #120]	@ pSyntax_55(D)->syn_pic.weighting_quant_flag, pSyntax_55(D)->syn_pic.weighting_quant_flag
	cmp	r3, #0	@ pSyntax_55(D)->syn_pic.weighting_quant_flag,
	beq	.L788	@,
	ldr	r10, [r0, #144]	@ pSyntax_55(D)->syn_pic.weighting_quant_model, pSyntax_55(D)->syn_pic.weighting_quant_model
	mov	r9, #0	@ k,
	ldr	r3, .L839+4	@ tmp422,
	mov	r10, r10, asl #6	@ D.34460, pSyntax_55(D)->syn_pic.weighting_quant_model,
	add	r7, r10, #64	@ D.34460, D.34460,
	add	r10, r3, r10	@ ivtmp.738, tmp422, D.34460
	add	r7, r3, r7	@ D.34448, tmp422, D.34460
.L789:
	add	r3, sp, #48	@ tmp464,,
	mov	r5, r9, asl #3	@ tmp436, k,
	add	r6, r3, r9, lsl #7	@ D.34460, tmp464, k,
	sub	r5, r5, r9, asl #1	@ tmp444, tmp436, k,
	sub	r6, r6, #2	@ ivtmp.740, D.34460,
	mov	r2, r10	@ ivtmp.738, ivtmp.738
.L779:
	add	r0, r2, #8	@ D.34448, ivtmp.738,
	mov	r1, r6	@ ivtmp.728, ivtmp.740
.L777:
	ldrb	r3, [r2], #1	@ zero_extendqisi2	@ D.34458, MEM[base: _190, offset: 0B]
	add	r3, r5, r3	@ tmp398, tmp444, D.34458
	cmp	r0, r2	@ D.34448, ivtmp.738
	mov	r3, r3, asl #1	@ tmp399, tmp398,
	ldrh	r3, [r4, r3]	@ tmp402, wq_param
	strh	r3, [r1, #2]!	@ movhi	@ tmp402, MEM[base: _125, offset: 0B]
	bne	.L777	@,
	cmp	r0, r7	@ D.34448, D.34448
	add	r6, r6, #16	@ ivtmp.740, ivtmp.740,
	mov	r2, r0	@ ivtmp.738, D.34448
	bne	.L779	@,
	add	r9, r9, #1	@ k, k,
	cmp	r9, #2	@ k,
	bne	.L789	@,
.L775:
	cmp	r8, #0	@ D.34452,
	bne	.L791	@,
	add	r1, sp, #300	@ D.34448,,
	add	r3, sp, #174	@ ivtmp.631,,
	add	r1, r1, #2	@ D.34448, D.34448,
.L780:
	ldrh	r2, [r3, #2]!	@ MEM[base: _78, offset: 0B], MEM[base: _78, offset: 0B]
	cmp	r3, r1	@ ivtmp.631, D.34448
	strh	r2, [ip, #2]!	@ movhi	@ MEM[base: _78, offset: 0B], MEM[base: _160, offset: 0B]
	bne	.L780	@,
.L748:
	add	sp, sp, #304	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L751:
	ldr	lr, .L839+8	@ ivtmp.975,
	add	r1, r0, #144	@ ivtmp.965, pSyntax,
	add	r3, r0, #168	@ ivtmp.937, pSyntax,
	mov	ip, sp	@ ivtmp.981,
.L750:
	ldr	r5, [r1, #4]!	@ MEM[base: _337, offset: 0B], MEM[base: _337, offset: 0B]
	ldrh	r2, [lr], #2	@ D.34454, MEM[base: _338, offset: 0B]
	cmp	r1, r3	@ ivtmp.965, ivtmp.937
	add	r2, r2, r5	@ tmp297, D.34454, MEM[base: _337, offset: 0B]
	strh	r2, [ip], #2	@ movhi	@ tmp297, MEM[base: _339, offset: 0B]
	bne	.L750	@,
	cmp	r8, #2	@ D.34452,
	beq	.L753	@,
	cmp	r4, #0	@ D.34461,
	cmpeq	r8, #3	@, D.34452,
	bne	.L754	@,
.L753:
	ldr	ip, .L839	@ ivtmp.946,
	add	r1, sp, #12	@ ivtmp.956,,
	add	r5, r0, #192	@ D.34448, pSyntax,
.L755:
	ldr	lr, [r3, #4]!	@ MEM[base: _326, offset: 0B], MEM[base: _326, offset: 0B]
	ldrh	r2, [ip, #2]!	@ MEM[base: _327, offset: 0B], MEM[base: _327, offset: 0B]
	cmp	r3, r5	@ ivtmp.937, D.34448
	add	r2, r2, lr	@ tmp310, MEM[base: _327, offset: 0B], MEM[base: _326, offset: 0B]
	strh	r2, [r1], #2	@ movhi	@ tmp310, MEM[base: _328, offset: 0B]
	bne	.L755	@,
.L754:
	cmp	r4, #0	@ D.34461,
	bne	.L786	@,
.L785:
	ldr	r3, .L839+8	@ ivtmp.865,
	add	r4, sp, #24	@ tmp432,,
	add	ip, r3, #12	@ D.34448, ivtmp.865,
	mov	r5, r4	@ ivtmp.779, tmp432
	mov	r2, r4	@ ivtmp.871, tmp432
.L758:
	ldrh	r1, [r3], #2	@ D.34454, MEM[base: _302, offset: 0B]
	cmp	r3, ip	@ ivtmp.865, D.34448
	strh	r1, [r2], #2	@ movhi	@ D.34454, MEM[base: _303, offset: 0B]
	bne	.L758	@,
	ldr	r3, .L839	@ ivtmp.842,
	add	lr, r4, #10	@ ivtmp.794, tmp432,
	add	ip, r3, #12	@ D.34448, ivtmp.842,
	mov	r2, lr	@ ivtmp.851, ivtmp.794
.L759:
	ldrh	r1, [r3, #2]!	@ MEM[base: _297, offset: 0B], MEM[base: _297, offset: 0B]
	cmp	r3, ip	@ ivtmp.842, D.34448
	strh	r1, [r2, #2]!	@ movhi	@ MEM[base: _297, offset: 0B], MEM[base: _298, offset: 0B]
	bne	.L759	@,
	cmp	r8, #0	@ D.34452,
	beq	.L760	@,
	cmp	r8, #1	@ D.34452,
	beq	.L835	@,
	cmp	r8, #2	@ D.34452,
	beq	.L836	@,
	cmp	r8, #3	@ D.34452,
	bne	.L760	@,
	add	r1, sp, #12	@ ivtmp.808,,
	mov	r3, sp	@ ivtmp.827,
.L765:
	ldrh	r2, [r3], #2	@ D.34454, MEM[base: _292, offset: 0B]
	cmp	r3, r1	@ ivtmp.827, ivtmp.808
	strh	r2, [r5], #2	@ movhi	@ D.34454, MEM[base: _293, offset: 0B]
	bne	.L765	@,
	add	r1, r4, #22	@ D.34448, tmp432,
.L766:
	ldrh	r2, [r3], #2	@ D.34454, MEM[base: _287, offset: 0B]
	strh	r2, [lr, #2]!	@ movhi	@ D.34454, MEM[base: _288, offset: 0B]
	cmp	lr, r1	@ ivtmp.794, D.34448
	bne	.L766	@,
	b	.L760	@
.L791:
	cmp	r8, #1	@ D.34452,
	beq	.L837	@,
	cmp	r8, #2	@ D.34452,
	bne	.L748	@,
	add	r1, sp, #300	@ D.34448,,
	add	r3, sp, #174	@ ivtmp.672,,
	add	r1, r1, #2	@ D.34448, D.34448,
.L784:
	ldrh	r2, [r3, #2]!	@ MEM[base: _281, offset: 0B], MEM[base: _281, offset: 0B]
	cmp	r3, r1	@ ivtmp.672, D.34448
	strh	r2, [ip, #2]!	@ movhi	@ MEM[base: _281, offset: 0B], MEM[base: _227, offset: 0B]
	bne	.L784	@,
	add	sp, sp, #304	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L788:
	add	r4, sp, #428	@ D.34448,,
	add	r0, sp, #174	@ ivtmp.713,,
	add	r4, r4, #2	@ D.34448, D.34448,
	mov	r1, #128	@ tmp440,
.L790:
	sub	r3, r0, #128	@ ivtmp.704, ivtmp.713,
.L776:
	add	r2, r3, #16	@ D.34448, ivtmp.704,
.L773:
	strh	r1, [r3, #2]!	@ movhi	@ tmp440, MEM[base: _102, offset: 0B]
	cmp	r2, r3	@ D.34448, ivtmp.704
	bne	.L773	@,
	cmp	r2, r0	@ D.34448, ivtmp.713
	mov	r3, r2	@ ivtmp.704, D.34448
	bne	.L776	@,
	add	r0, r0, #128	@ ivtmp.713, ivtmp.713,
	cmp	r0, r4	@ ivtmp.713, D.34448
	bne	.L790	@,
	b	.L775	@
.L834:
	cmp	r8, #1	@ D.34452,
	beq	.L838	@,
	cmp	r8, #2	@ D.34452,
	bne	.L760	@,
	add	r2, sp, #12	@ ivtmp.919,,
	add	r3, r4, #10	@ ivtmp.924, tmp432,
	add	ip, r4, #22	@ D.34448, tmp432,
.L770:
	ldrh	r1, [r2], #2	@ D.34454, MEM[base: _317, offset: 0B]
	strh	r1, [r3, #2]!	@ movhi	@ D.34454, MEM[base: _318, offset: 0B]
	cmp	r3, ip	@ ivtmp.924, D.34448
	bne	.L770	@,
	b	.L760	@
.L838:
	add	ip, sp, #12	@ D.34448,,
	mov	r3, sp	@ ivtmp.903,
	mov	r2, r4	@ ivtmp.909, tmp432
.L769:
	ldrh	r1, [r3], #2	@ D.34454, MEM[base: _312, offset: 0B]
	cmp	r3, ip	@ ivtmp.903, D.34448
	strh	r1, [r2], #2	@ movhi	@ D.34454, MEM[base: _313, offset: 0B]
	bne	.L769	@,
	b	.L760	@
.L835:
	add	r1, sp, #12	@ D.34448,,
	mov	r3, sp	@ ivtmp.773,
.L762:
	ldrh	r2, [r3], #2	@ D.34454, MEM[base: _166, offset: 0B]
	cmp	r3, r1	@ ivtmp.773, D.34448
	strh	r2, [r5], #2	@ movhi	@ D.34454, MEM[base: _159, offset: 0B]
	bne	.L762	@,
	b	.L760	@
.L837:
	add	r3, sp, #46	@ ivtmp.653,,
.L782:
	ldrh	r2, [r3, #2]!	@ MEM[base: _163, offset: 0B], MEM[base: _163, offset: 0B]
	strh	r2, [ip, #2]!	@ movhi	@ MEM[base: _163, offset: 0B], MEM[base: _164, offset: 0B]
	cmp	lr, ip	@ D.34448, ivtmp.640
	bne	.L782	@,
	add	sp, sp, #304	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L836:
	add	r3, sp, #12	@ ivtmp.789,,
	add	r1, r4, #22	@ D.34448, tmp432,
.L764:
	ldrh	r2, [r3], #2	@ D.34454, MEM[base: _16, offset: 0B]
	strh	r2, [lr, #2]!	@ movhi	@ D.34454, MEM[base: _15, offset: 0B]
	cmp	lr, r1	@ ivtmp.794, D.34448
	bne	.L764	@,
	b	.L760	@
.L840:
	.align	2
.L839:
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
	b	.L842	@
.L844:
	.word	.L843
	.word	.L845
	.word	.L846
	.word	.L847
	.word	.L866
	.word	.L849
	.word	.L850
	.word	.L845
	.word	.L866
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L842
	.word	.L852
.L845:
	ldr	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r5, r3, #32768	@ D.34467, D.34467,
	bne	.L883	@,
	tst	r3, #327680	@ D.34467,
	bne	.L891	@,
.L886:
	mov	r0, #1	@ D.34465,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L842:
	cmp	r0, #175	@ Code,
	bhi	.L866	@,
	ldr	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	and	r2, r3, #327680	@ D.34467, D.34467,
	cmp	r2, #327680	@ D.34467,
	beq	.L892	@,
.L866:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34465,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L849:
	ldr	r3, [r7, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B], MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B]
	tst	r3, #327680	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B],
	beq	.L861	@,
	mov	r1, r5	@, pSyntax
	mov	r0, r9	@, pCodecInf
	bl	AVS_extension	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34465,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L846:
	ldr	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r1, r3, #262144	@ D.34467, D.34467,
	movne	r1, #1	@,
	bne	.L885	@,
	tst	r3, #65536	@ D.34467,
	beq	.L861	@,
.L885:
	mov	r0, r4	@, pCtx
	bl	AVS_user_data	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34465,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L847:
	ldr	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r6, r3, #32768	@ D.34467, D.34467,
	bne	.L884	@,
	tst	r3, #262144	@ D.34467,
	beq	.L857	@,
	bic	r3, r3, #311296	@ D.34467, D.34467,
	mov	r0, r9	@, pCodecInf
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
	b	.L888	@
.L850:
	ldr	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r6, r3, #32768	@ D.34467, D.34467,
	bne	.L884	@,
	tst	r3, #262144	@ D.34467,
	beq	.L859	@,
	bic	r3, r3, #311296	@ D.34467, D.34467,
	mov	r0, r9	@, pCodecInf
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	mov	r1, r5	@, pSyntax
	bl	AVS_pb_picture_header	@
.L888:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r6	@ D.34465, D.34467
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L852:
	mov	r1, #32	@,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.34466,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	r2, #20036	@ tmp251,
	movw	r3, #20553	@ tmp254,
	movt	r2, 17221	@ tmp251,
	movt	r3, 18515	@ tmp254,
	cmp	r0, r2	@, tmp251
	cmpeq	r5, r3	@, D.34466, tmp254
	bne	.L861	@,
	mov	r5, #1	@ tmp260,
	strb	r5, [r8, #740]	@ tmp260, pCtx_3(D)->IsStreamEndFlag
	str	r5, [r8, #56]	@ tmp260, pCtx_3(D)->IsPackWaitDec
	mov	r0, r4	@, pCtx
	ldr	r3, [r7, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	orr	r3, r3, #16384	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity,
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	ClearPacket	@
	mov	r0, r5	@ D.34465, tmp260
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L843:
	ldr	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ands	r6, r3, #32768	@ D.34467, D.34467,
	bne	.L883	@,
	tst	r3, #65536	@ D.34467,
	beq	.L855	@,
	bic	r3, r3, #311296	@ D.34467, D.34467,
	mov	r1, r5	@, pSyntax
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r6	@ D.34465, D.34467
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L883:
	mov	r0, #1	@ tmp238,
	orr	r3, r3, #16384	@ D.34467, D.34467,
	str	r0, [r8, #56]	@ tmp238, pCtx_3(D)->IsPackWaitDec
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L892:
	orr	r3, r3, #32768	@ D.34467, D.34467,
	mov	r0, r4	@, pCtx
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	WriteAvsSliceMsg	@
	cmp	r0, #0	@,
	bne	.L886	@,
.L861:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #0	@ D.34465,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L859:
	mov	r0, r9	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_pb_picture_header	@
.L887:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34465,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L857:
	mov	r0, r9	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
	b	.L887	@
.L855:
	mov	r1, r5	@, pSyntax
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34465,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L884:
	orr	r3, r3, #16384	@ D.34467, D.34467,
	mov	r0, r5	@, pSyntax
	mov	r4, #1	@ tmp201,
	str	r4, [r8, #56]	@ tmp201, pCtx_3(D)->IsPackWaitDec
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r4	@ D.34465, tmp201
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L891:
	bic	r3, r3, #311296	@ D.34467, D.34467,
	mov	r0, r4	@, pCtx
	str	r3, [r7, #2696]	@ D.34467, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	bl	ClearPacket	@
	mov	r0, r5	@ D.34465, D.34467
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
	mov	r6, r1	@ p_Packet, p_Packet
	ldr	r2, [r1, #12]	@, p_Packet_6(D)->StreamPack[0].LenInByte
	add	r0, r0, #8	@,,
	ldr	r1, [r1]	@, p_Packet_6(D)->StreamPack[0].VirAddr
	add	r5, r4, #12288	@ tmp137, pCtx,
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
	subs	r6, r0, #0	@ D.34471,
	beq	.L905	@,
	ldr	r3, [r5, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	and	r3, r3, #376832	@ D.34473, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity,
	cmp	r3, #376832	@ D.34473,
	beq	.L896	@,
.L897:
	mov	r6, #0	@ D.34471,
.L895:
	mov	r0, r6	@, D.34471
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L905:
	ldr	r1, .L906	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r6	@, D.34471
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L896:
	mov	r0, r4	@, pCtx
	bl	AVS_DecodeArbiter.part.3	@
	cmp	r0, #0	@,
	beq	.L897	@,
	mov	r0, r4	@, pCtx
	bl	AVS_GetStreamInf	@
	subs	r6, r0, #0	@ D.34471,
	bne	.L898	@,
	ldr	r3, [r4]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3, #728]	@ D.34474, _21->s32DSDWaitFlag
	cmp	r3, #1	@ D.34474,
	bne	.L899	@,
	ldr	r2, [r5, #3396]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].u32LastIntegrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].u32LastIntegrity
	mov	r6, r3	@ D.34471, D.34474
	mov	r0, r6	@, D.34471
	str	r2, [r5, #2696]	@ MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].u32LastIntegrity, MEM[(struct AVS_CODECINF *)pCtx_3(D) + 14880B].Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L899:
	ldr	r1, .L906+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r6	@, D.34471
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L898:
	mov	r0, r4	@, pCtx
	bl	AVS_StartDecode	@
	subs	r6, r0, #0	@ D.34471,
	movne	r6, #1	@ D.34471,
	bne	.L895	@,
	ldr	r1, .L906+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	b	.L895	@
.L907:
	.align	2
.L906:
	.word	.LC110
	.word	.LC111
	.word	.LC112
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
	.ascii	"%-40s     %#-8x(%db)\012\000"
	.space	2
.LC1:
	.ascii	"video_sequence_start_code\000"
	.space	2
.LC2:
	.ascii	"profile_id\000"
	.space	1
.LC3:
	.ascii	"level_id\000"
	.space	3
.LC4:
	.ascii	"progressive_sequence\000"
	.space	3
.LC5:
	.ascii	"horizontal_size\000"
.LC6:
	.ascii	"vertical_size\000"
	.space	2
.LC7:
	.ascii	"chroma_format\000"
	.space	2
.LC8:
	.ascii	"sample_precision\000"
	.space	3
.LC9:
	.ascii	"aspect_ratio\000"
	.space	3
.LC10:
	.ascii	"frame_rate_code\000"
.LC11:
	.ascii	"bit_rate_lower\000"
	.space	1
.LC12:
	.ascii	"marker_bit\000"
	.space	1
.LC13:
	.ascii	"bit_rate_upper\000"
	.space	1
.LC14:
	.ascii	"low_delay\000"
	.space	2
.LC15:
	.ascii	"bbv_buffer_size\000"
.LC16:
	.ascii	"reserved_bits\000"
	.space	2
.LC17:
	.ascii	"i_picture_start_code\000"
	.space	3
.LC18:
	.ascii	"bbv_delay\000"
	.space	2
.LC19:
	.ascii	"bbv_delay_extension\000"
.LC20:
	.ascii	"time_code_flag\000"
	.space	1
.LC21:
	.ascii	"time_code\000"
	.space	2
.LC22:
	.ascii	"picture_distance\000"
	.space	3
.LC23:
	.ascii	"bbv_check_times\000"
.LC24:
	.ascii	"progressive_frame\000"
	.space	2
.LC25:
	.ascii	"picture_structure\000"
	.space	2
.LC26:
	.ascii	"top_field_first\000"
.LC27:
	.ascii	"repeat_first_field\000"
	.space	1
.LC28:
	.ascii	"fixed_picture_qp\000"
	.space	3
.LC29:
	.ascii	"picture_qp\000"
	.space	1
.LC30:
	.ascii	"skip_mode_flag\000"
	.space	1
.LC31:
	.ascii	"loop_filter_disable\000"
.LC32:
	.ascii	"loop_filter_parameter_flag\000"
	.space	1
.LC33:
	.ascii	"alpha_c_offset\000"
	.space	1
.LC34:
	.ascii	"beta_offset\000"
.LC35:
	.ascii	"weighting_quant_flag\000"
	.space	3
.LC36:
	.ascii	"aec_enable\000"
	.space	1
.LC37:
	.ascii	"mb_adapt_weighting_quant_disable\000"
	.space	3
.LC38:
	.ascii	"chroma_quant_param_disable\000"
	.space	1
.LC39:
	.ascii	"chroma_quant_param_delta_u\000"
	.space	1
.LC40:
	.ascii	"chroma_quant_param_delta_v\000"
	.space	1
.LC41:
	.ascii	"weighting_quant_param_index\000"
.LC42:
	.ascii	"weighting_quant_model\000"
	.space	2
.LC43:
	.ascii	"weighting_quant_param_deltal1\000"
	.space	2
.LC44:
	.ascii	"weighting_quant_param_deltal2\000"
	.space	2
.LC45:
	.ascii	"pb_picture_start_code\000"
	.space	2
.LC46:
	.ascii	"picture_coding_type\000"
.LC47:
	.ascii	"advanced_pred_mode_disable\000"
	.space	1
.LC48:
	.ascii	"picture_reference_flag\000"
	.space	1
.LC49:
	.ascii	"no_forward_reference_flag\000"
	.space	2
.LC50:
	.ascii	"b_filed_enhanced_flag\000"
	.space	2
.LC51:
	.ascii	"p_filed_enhanced_flag\000"
	.space	2
.LC52:
	.ascii	"user_data_start_code\000"
	.space	3
.LC53:
	.ascii	"extension_ID\000"
	.space	3
.LC54:
	.ascii	"video_format\000"
	.space	3
.LC55:
	.ascii	"sample_range\000"
	.space	3
.LC56:
	.ascii	"colour_description\000"
	.space	1
.LC57:
	.ascii	"colour_primaries\000"
	.space	3
.LC58:
	.ascii	"transfer_characteristics\000"
	.space	3
.LC59:
	.ascii	"matrix_coefficients\000"
.LC60:
	.ascii	"display_horizontal_size\000"
.LC61:
	.ascii	"display_vertical_size\000"
	.space	2
.LC62:
	.ascii	"copyright_flag\000"
	.space	1
.LC63:
	.ascii	"copyright_id\000"
	.space	3
.LC64:
	.ascii	"original_or_copy\000"
	.space	3
.LC65:
	.ascii	"copyright_number_1\000"
	.space	1
.LC66:
	.ascii	"copyright_number_2\000"
	.space	1
.LC67:
	.ascii	"copyright_number_3\000"
	.space	1
.LC68:
	.ascii	"camera_id\000"
	.space	2
.LC69:
	.ascii	"height_of_image_device\000"
	.space	1
.LC70:
	.ascii	"focal_length\000"
	.space	3
.LC71:
	.ascii	"f_number\000"
	.space	3
.LC72:
	.ascii	"vertical_angle_of_view\000"
	.space	1
.LC73:
	.ascii	"camera_position_x_upper\000"
.LC74:
	.ascii	"camera_position_x_lower\000"
.LC75:
	.ascii	"camera_position_y_upper\000"
.LC76:
	.ascii	"camera_position_y_lower\000"
.LC77:
	.ascii	"camera_position_z_upper\000"
.LC78:
	.ascii	"camera_position_z_lower\000"
.LC79:
	.ascii	"camera_direction_x\000"
	.space	1
.LC80:
	.ascii	"camera_direction_y\000"
	.space	1
.LC81:
	.ascii	"camera_direction_z\000"
	.space	1
.LC82:
	.ascii	"image_plane_vertical_x\000"
	.space	1
.LC83:
	.ascii	"image_plane_vertical_y\000"
	.space	1
.LC84:
	.ascii	"image_plane_vertical_z\000"
	.space	1
.LC85:
	.ascii	"frame_centre_horizontal_offset\000"
	.space	1
.LC86:
	.ascii	"frame_centre_vertical_offset\000"
	.space	3
.LC87:
	.ascii	"extension_start_code\000"
	.space	3
.LC88:
	.ascii	"ERROR: image size abnormal(%dx%d)\012\000"
	.space	1
.LC89:
	.ascii	"avs actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC90:
	.ascii	"ERROR: partition fs memory fail!\012\000"
	.space	2
.LC91:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC92:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC93:
	.ascii	"line: %d pImage is null\012\000"
	.space	3
.LC94:
	.ascii	"ERROR: get frame store fail!\012\000"
	.space	2
.LC95:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC96:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC97:
	.ascii	"line: %d\012\000"
	.space	2
.LC98:
	.ascii	"ERROR: AVS_OutputOneFrame is err(%d)\012\000"
	.space	2
.LC99:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC100:
	.ascii	"size change\012\000"
	.space	3
.LC101:
	.ascii	"MbWidth = %d, MbHeight = %d, don't support!\012\000"
	.space	3
.LC102:
	.ascii	"ERROR: allocate vhb\012\000"
	.space	3
.LC103:
	.ascii	"ERROR: get img buf err\012\000"
.LC104:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC105:
	.ascii	"-----Pic %5d, type %d, struct %d-----\012\000"
	.space	1
.LC106:
	.ascii	"ERROR: err_level(%d) over ref_thr(%d)\012\000"
	.space	1
.LC107:
	.ascii	"ERROR: err_level(%d) over out_thr(%d)\012\000"
	.space	1
.LC108:
	.ascii	"SlcNum %d > %d Write slice msg failed\012\000"
	.space	1
.LC109:
	.ascii	"This slice's start mbn %d <= LastSliceFirstMb %d, W"
	.ascii	"rite slice msg failed\012\000"
	.space	2
.LC110:
	.ascii	"ERROR: paseHeader err\012\000"
	.space	1
.LC111:
	.ascii	"ERROR: AVS_PrepareDecode err\012\000"
	.space	2
.LC112:
	.ascii	"ERROR: AVS_StartDecode err\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
