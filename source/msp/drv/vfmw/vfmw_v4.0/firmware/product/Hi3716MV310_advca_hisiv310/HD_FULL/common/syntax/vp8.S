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
	.file	"vp8.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vp8)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vp8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp8.o
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
	.type	VP8_init_frame.part.0, %function
VP8_init_frame.part.0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ VP8_PictureHeader_S, VP8_PictureHeader_S
	ldr	r5, .L3	@ tmp115,
	add	r0, r0, #2368	@, VP8_PictureHeader_S,
	mov	r2, #38	@,
	add	r0, r0, #6	@,,
	ldr	r7, .L3+4	@ tmp129,
	mov	r6, #4	@ tmp133,
	mov	r1, r5	@, tmp115
	bl	memcpy	@
	add	r0, r4, #1312	@, VP8_PictureHeader_S,
	add	r1, r5, #40	@, tmp115,
	mov	r2, #1056	@,
	add	r0, r0, #6	@,,
	mov	r5, #0	@ tmp142,
	bl	memcpy	@
	add	r0, r4, #1296	@, VP8_PictureHeader_S,
	mov	r1, r7	@, tmp129
	mov	r2, r6	@, tmp133
	add	r0, r0, #14	@,,
	bl	memcpy	@
	add	r0, r4, #1312	@, VP8_PictureHeader_S,
	mov	r2, #3	@,
	add	r1, r7, r6	@, tmp129,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	add	r0, r4, #22	@, VP8_PictureHeader_S,
	mov	r1, #8	@,
	bl	__memzero	@
	mov	r1, r6	@, tmp133
	add	r0, r4, #32	@, VP8_PictureHeader_S,
	strb	r5, [r4, #17]	@ tmp142, VP8_PictureHeader_S_1(D)->mb_segement_abs_delta
	bl	__memzero	@
	mov	r1, r6	@, tmp133
	add	r0, r4, #36	@, VP8_PictureHeader_S,
	bl	__memzero	@
	mov	r3, #1	@ tmp146,
	strb	r5, [r4, #43]	@ tmp142, VP8_PictureHeader_S_1(D)->copy_buffer_to_gf
	strb	r5, [r4, #44]	@ tmp142, VP8_PictureHeader_S_1(D)->copy_buffer_to_arf
	strb	r5, [r4, #48]	@ tmp142, VP8_PictureHeader_S_1(D)->ref_frame_sign_bias
	strb	r5, [r4, #49]	@ tmp142, VP8_PictureHeader_S_1(D)->ref_frame_sign_bias
	strb	r3, [r4, #41]	@ tmp146, VP8_PictureHeader_S_1(D)->refresh_golden_frame
	strb	r3, [r4, #42]	@ tmp146, VP8_PictureHeader_S_1(D)->refresh_alt_ref_frame
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.fnend
	.size	VP8_init_frame.part.0, .-VP8_init_frame.part.0
	.align	2
	.global	Vp8_Vfmw_StartBoolDecode
	.type	Vp8_Vfmw_StartBoolDecode, %function
Vp8_Vfmw_StartBoolDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pBc, pBc
	mov	r2, #255	@ tmp114,
	mov	r0, r1	@, pBs
	mov	r3, #16	@ tmp115,
	str	r2, [r4]	@ tmp114, pBc_2(D)->range
	str	r3, [r4, #8]	@ tmp115, pBc_2(D)->count
	mov	r1, #24	@,
	bl	BsGet	@
	str	r0, [r4, #4]	@, pBc_2(D)->value
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Vp8_Vfmw_StartBoolDecode, .-Vp8_Vfmw_StartBoolDecode
	.align	2
	.global	Vp8_Vfmw_DecodeBool
	.type	Vp8_Vfmw_DecodeBool, %function
Vp8_Vfmw_DecodeBool:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0	@ pBc, pBc
	ldmia	r0, {r0, r3}	@ pBc,,
	mov	r8, r1	@ pBs, pBs
	ldr	r6, [r7, #8]	@ count, pBc_12(D)->count
	sub	r1, r0, #1	@ D.38400, range,
	mul	r2, r1, r2	@ D.38400, D.38400, probability
	mov	r2, r2, lsr #8	@ D.38400, D.38400,
	add	r2, r2, #1	@ range, D.38400,
	mov	r1, r2, asl #16	@ bigsplit, range,
	cmp	r3, r1	@ value, bigsplit
	rsbcs	r3, r1, r3	@ value, bigsplit, value
	ldr	r1, .L16	@ tmp143,
	rsbcs	r2, r2, r0	@ range, range, range
	movcs	r9, #1	@ bit,
	add	r1, r1, r2	@ tmp144, tmp143, range
	movcc	r9, #0	@ bit,
	ldrb	r5, [r1, #1096]	@ zero_extendqisi2	@ shift, VP8_VFMWBITREADER_NORM
	subs	r6, r6, r5	@ count, count, shift
	mov	r10, r2, asl r5	@ range, range,
	mov	r5, r3, asl r5	@ value, value,
	bmi	.L15	@,
.L9:
	str	r6, [r7, #8]	@ count, pBc_12(D)->count
	mov	r0, r9	@, bit
	str	r10, [r7]	@ range, pBc_12(D)->range
	str	r5, [r7, #4]	@ value, pBc_12(D)->value
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L15:
	rsbs	fp, r6, #8	@ shift, count,
	bmi	.L9	@,
	mov	r4, fp	@ shift, shift
.L10:
	mov	r1, #8	@,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	orr	r5, r5, r0, asl r4	@ value, value,,
	subs	r4, r4, #8	@ shift, shift,
	bpl	.L10	@,
	add	r6, r6, #8	@ D.38398, count,
	bic	fp, fp, #7	@ D.38398, shift,
	add	r6, r6, fp	@ count, D.38398, D.38398
	b	.L9	@
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.fnend
	.size	Vp8_Vfmw_DecodeBool, .-Vp8_Vfmw_DecodeBool
	.align	2
	.global	Vp8_Vfmw_DecodeValue
	.type	Vp8_Vfmw_DecodeValue, %function
Vp8_Vfmw_DecodeValue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r2, #1	@ i, nBits,
	bmi	.L21	@,
	mov	r7, r1	@ pBs, pBs
	mov	r6, r0	@ pBc, pBc
	mov	r5, #0	@ value,
.L20:
	mov	r2, #128	@,
	mov	r1, r7	@, pBs
	mov	r0, r6	@, pBc
	bl	Vp8_Vfmw_DecodeBool	@
	orr	r5, r5, r0, asl r4	@ value, value,,
	subs	r4, r4, #1	@ i, i,
	bcs	.L20	@,
.L19:
	mov	r0, r5	@, value
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L21:
	mov	r5, #0	@ value,
	b	.L19	@
	.fnend
	.size	Vp8_Vfmw_DecodeValue, .-Vp8_Vfmw_DecodeValue
	.align	2
	.global	VP8_SetImgFormat
	.type	VP8_SetImgFormat, %function
VP8_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r0, #8192	@ tmp145, pCtx,
	add	r5, r0, #4096	@ tmp142, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r0, [r3, #328]	@, pCtx_3(D)->ChanID
	ldr	r1, [r5, #4056]	@, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].FrameType
	mov	r2, #0	@ tmp153,
	mov	r1, r2	@, tmp153
	strb	r2, [r4, #288]	@ tmp153, pImg_8->ImageDnr.pic_structure
	and	r3, r3, #3	@ D.38413, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].FrameType,
	mov	ip, #13	@ tmp152,
	orr	r2, r3, #7168	@ D.38413, D.38413,
	str	r3, [r4, #132]	@ D.38413, pImg_8->top_fld_type
	orr	r2, r2, #32	@ D.38413, D.38413,
	str	r3, [r4, #136]	@ D.38413, pImg_8->bottom_fld_type
	str	ip, [r4, #300]	@ tmp152, pImg_8->ImageDnr.video_standard
	mov	r3, #8	@ tmp157,
	mov	ip, #1	@ tmp155,
	str	r2, [r4, #140]	@ D.38413, pImg_8->format
	str	r3, [r4, #304]	@ tmp157, pImg_8->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp157, pImg_8->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp157, pImg_8->ImageDnr.QP_U
	strb	ip, [r4, #295]	@ tmp155, pImg_8->ImageDnr.use_pic_qp_en
	strb	ip, [r4, #293]	@ tmp155, pImg_8->ImageDnr.chroma_format_idc
	bl	SetAspectRatio	@
	ldr	r2, [r5, #1668]	@ D.38413, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].NewHeaderInfo.pic_width_in_pix
	str	r2, [r4, #144]	@ D.38413, pImg_8->image_width
	ldr	r3, [r5, #1672]	@ D.38413, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].NewHeaderInfo.pic_height_in_pix
	str	r3, [r4, #148]	@ D.38413, pImg_8->image_height
	ldr	r1, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r1, [r1, #32]	@ _27->eCapLevel, _27->eCapLevel
	cmp	r1, #25	@ _27->eCapLevel,
	beq	.L31	@,
.L26:
	str	r2, [r4, #152]	@ D.38413, pImg_8->disp_width
	mov	r2, r2, lsr #1	@ D.38413, D.38413,
	str	r3, [r4, #156]	@ D.38413, pImg_8->disp_height
	mov	r3, r3, lsr #1	@ D.38413, D.38413,
	str	r2, [r4, #160]	@ D.38413, pImg_8->disp_center_x
	str	r3, [r4, #164]	@ D.38413, pImg_8->disp_center_y
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L31:
	ldr	r2, [r4, #172]	@ D.38413, pImg_8->image_stride
	add	r3, r3, #15	@ D.38413, D.38413,
	ldr	r0, [r4, #104]	@ D.38413, pImg_8->luma_phy_addr
	mov	r3, r3, lsr #4	@ D.38413, D.38413,
	ldr	r1, [r4, #32]	@ D.38416, pImg_8->luma_vir_addr
	mov	lr, r2, asl #4	@ D.38413, D.38413,
	add	ip, r2, r0	@ D.38412, D.38413, D.38413
	str	r0, [r4, #88]	@ D.38413, pImg_8->top_luma_phy_addr
	mul	r3, r3, lr	@ D.38413, D.38413, D.38413
	str	r0, [r4, #120]	@ D.38413, pImg_8->luma_2d_phy_addr
	str	r1, [r4, #48]	@ D.38416, pImg_8->luma_2d_vir_addr
	str	ip, [r4, #96]	@ D.38412, pImg_8->btm_luma_phy_addr
	add	r0, r3, r0	@ D.38413, D.38413, D.38413
	add	r3, r1, r3	@ D.38416, D.38416, D.38413
	add	r2, r2, r0	@ D.38412, D.38413, D.38413
	str	r3, [r4, #36]	@ D.38416, pImg_8->chrom_vir_addr
	str	r2, [r4, #100]	@ D.38412, pImg_8->btm_chrom_phy_addr
	str	r0, [r4, #108]	@ D.38413, pImg_8->chrom_phy_addr
	str	r0, [r4, #92]	@ D.38413, pImg_8->top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #92]	@ pImg_8->top_chrom_phy_addr, pImg_8->top_chrom_phy_addr
	ldr	r2, [r4, #144]	@ D.38413, pImg_8->image_width
	ldr	r3, [r4, #148]	@ D.38413, pImg_8->image_height
	str	r1, [r4, #124]	@ pImg_8->top_chrom_phy_addr, pImg_8->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_8->chrom_2d_vir_addr
	b	.L26	@
	.fnend
	.size	VP8_SetImgFormat, .-VP8_SetImgFormat
	.align	2
	.global	VP8DEC_VDMPostProc
	.type	VP8DEC_VDMPostProc, %function
VP8DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ pCtx, pCtx
	add	r4, r0, #4096	@ tmp472, pCtx,
	add	r6, r0, #8192	@ tmp473, pCtx,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r0, #13	@,
	mov	r7, r1	@ ErrRatio, ErrRatio
	mov	r1, r5	@, pCtx
	bl	ReleasePacket	@
	ldr	r1, [r4, #4056]	@, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L42	@,
	cmp	r7, #0	@ ErrRatio,
	blt	.L35	@,
	cmp	r7, #100	@ ErrRatio,
	movge	r7, #100	@ D.38422,
	str	r7, [r0, #180]	@ D.38422, pCurImg_27->error_level
	ldr	r3, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r3, [r3]	@ _33->s32RefErrThr, _33->s32RefErrThr
	cmp	r7, r3	@ D.38422, _33->s32RefErrThr
	bhi	.L104	@,
.L36:
	mov	r0, r5	@, pCtx
	bl	VP8_SetImgFormat	@
	ldr	r3, [r4, #4020]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].UsedDecMode, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].UsedDecMode
	cmp	r3, #2	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].UsedDecMode,
	beq	.L105	@,
.L37:
	ldr	r3, [r5, #3268]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].show_frame, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].show_frame
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].show_frame,
	bne	.L39	@,
.L38:
	mvn	r3, #0	@ tmp261,
	ldr	r1, [r4, #4056]	@, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
	str	r3, [r4, #4060]	@ tmp261, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].ToQueFsID
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, #4060]	@ D.38420, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].ToQueFsID
.L40:
	cmn	r1, #1	@ D.38420,
	beq	.L41	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pToQueImg,
	beq	.L42	@,
	mov	r2, #1	@,
	ldr	r1, [r4, #4060]	@, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].ToQueFsID
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #8128	@, pCtx,
	ldr	r0, [r6, #328]	@ pCtx_21(D)->ChanID, pCtx_21(D)->ChanID
	mov	r2, r5	@, pCtx
	add	r3, r3, #40	@,,
	mov	r1, #13	@,
	str	r8, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r7, r0	@ ret,
	bne	.L106	@,
.L41:
	ldr	r2, [r4, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType
	ldr	r3, [r4, #4024]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].RefNum, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].RefNum
	cmp	r2, #0	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType,
	ldr	r8, [r4, #4052]	@ LastFsId, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	add	r3, r3, #1	@ D.38424, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].RefNum,
	str	r3, [r4, #4024]	@ D.38424, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].RefNum
	bne	.L107	@,
	ldr	r3, [r4, #4044]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	cmp	r8, r3	@ LastFsId, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	beq	.L47	@,
.L45:
	ldr	r3, [r4, #4048]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	cmp	r8, r3	@ LastFsId, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	beq	.L47	@,
	ldr	r1, [r4, #4056]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
	subs	r7, r8, r1	@ flag_last_0, LastFsId, D.38421
	movne	r7, #1	@ flag_last_0,
.L46:
	str	r1, [r4, #4052]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
.L44:
	ldrb	r3, [r5, #3252]	@ zero_extendqisi2	@ D.38428, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].copy_buffer_to_arf
	cmp	r3, #1	@ D.38428,
	beq	.L108	@,
	cmp	r3, #2	@ D.38428,
	beq	.L109	@,
.L50:
	ldrb	r3, [r5, #3251]	@ zero_extendqisi2	@ D.38428, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].copy_buffer_to_gf
	cmp	r3, #1	@ D.38428,
	beq	.L110	@,
	cmp	r3, #2	@ D.38428,
	beq	.L111	@,
.L55:
	ldr	r3, [r4, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType,
	beq	.L58	@,
	ldrb	r3, [r5, #3249]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_golden_frame, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_golden_frame
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_golden_frame,
	beq	.L59	@,
.L58:
	ldr	r3, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	ldr	r2, [r4, #4052]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	cmp	r3, r2	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	beq	.L102	@,
	ldr	r2, [r4, #4048]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	cmp	r3, r2	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	beq	.L102	@,
	ldr	r1, [r4, #4056]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
	cmp	r3, r1	@ D.38421, D.38421
	beq	.L61	@,
	mov	r1, r3	@, D.38421
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
.L102:
	ldr	r1, [r4, #4056]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
.L61:
	str	r1, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
.L59:
	ldr	r3, [r5, #3264]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].frame_type
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].frame_type,
	beq	.L63	@,
	ldrb	r3, [r5, #3250]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_alt_ref_frame, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_alt_ref_frame
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_alt_ref_frame,
	beq	.L64	@,
.L63:
	ldr	r3, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	ldr	r2, [r4, #4052]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	cmp	r3, r2	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	beq	.L103	@,
	ldr	r2, [r4, #4044]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	cmp	r3, r2	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	beq	.L103	@,
	ldr	r1, [r4, #4056]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
	cmp	r3, r1	@ D.38421, D.38421
	beq	.L66	@,
	mov	r1, r3	@, D.38421
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
.L103:
	ldr	r1, [r4, #4056]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
.L66:
	str	r1, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
.L64:
	cmp	r7, #1	@ flag_last_0,
	movne	r0, #1	@ D.38420,
	beq	.L112	@,
.L100:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L39:
	ldr	r1, [r4, #4056]	@ D.38420, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
	str	r1, [r4, #4060]	@ D.38420, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].ToQueFsID
	b	.L40	@
.L107:
	ldrb	r7, [r5, #3248]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_last_frame, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_last_frame
	cmp	r7, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_21(D) + 3208B].refresh_last_frame,
	beq	.L44	@,
	ldr	r3, [r4, #4044]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	cmp	r8, r3	@ LastFsId, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	bne	.L45	@,
.L47:
	ldr	r1, [r4, #4056]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].CurFsID
	mov	r7, #0	@ flag_last_0,
	b	.L46	@
.L35:
	mov	r3, #0	@ tmp471,
	str	r3, [r0, #180]	@ tmp471, pCurImg_27->error_level
	b	.L36	@
.L105:
	ldr	r3, [r4, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].FrameType,
	bne	.L38	@,
	b	.L37	@
.L110:
	ldr	r1, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	ldr	r3, [r4, #4052]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	cmp	r1, r3	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	beq	.L54	@,
	ldr	r3, [r4, #4048]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	cmp	r1, r3	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	cmpne	r8, r1	@, LastFsId, D.38421
	beq	.L54	@,
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
.L54:
	str	r8, [r4, #4044]	@ LastFsId, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	mov	r1, r8	@, LastFsId
	bl	FSP_SetRef	@
	mov	r7, #0	@ flag_last_0,
	b	.L55	@
.L108:
	ldr	r1, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	ldr	r3, [r4, #4052]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	cmp	r1, r3	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	beq	.L49	@,
	ldr	r3, [r4, #4044]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	cmp	r1, r3	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	cmpne	r8, r1	@, LastFsId, D.38421
	beq	.L49	@,
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
.L49:
	str	r8, [r4, #4048]	@ LastFsId, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	mov	r1, r8	@, LastFsId
	bl	FSP_SetRef	@
	mov	r7, #0	@ flag_last_0,
	b	.L50	@
.L106:
	ldr	r1, [r8, #192]	@, pToQueImg_69->p_usrdat
	mov	r5, #0	@ tmp292,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r8, #192]	@ tmp292, pToQueImg_69->p_usrdat
	ldr	r1, [r8, #196]	@, pToQueImg_69->p_usrdat
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r8, #196]	@ tmp292, pToQueImg_69->p_usrdat
	mov	r2, r5	@, tmp292
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	ldr	r1, [r4, #4060]	@, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].ToQueFsID
	bl	FSP_SetDisplay	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.38420, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L111:
	ldr	r3, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	ldr	r2, [r4, #4052]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	ldr	r1, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	cmp	r3, r2	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	beq	.L57	@,
	cmp	r3, r1	@ D.38421, D.38421
	beq	.L57	@,
	mov	r1, r3	@, D.38421
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
.L57:
	str	r1, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
	b	.L55	@
.L109:
	ldr	r3, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	ldr	r2, [r4, #4052]	@ MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	ldr	r1, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	cmp	r3, r2	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	beq	.L52	@,
	cmp	r3, r1	@ D.38421, D.38421
	beq	.L52	@,
	mov	r1, r3	@, D.38421
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
.L52:
	str	r1, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_SetRef	@
	b	.L50	@
.L112:
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	mov	r1, r8	@, LastFsId
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	mov	r0, r7	@ D.38420, flag_last_0
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L104:
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #4044]	@, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	mov	r5, #0	@ tmp233,
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #4048]	@, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #4052]	@, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #4044]	@ tmp233, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	str	r5, [r4, #4048]	@ tmp233, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	str	r5, [r4, #4052]	@ tmp233, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	ldr	r0, [r6, #328]	@, pCtx_21(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r5, [r4, #4024]	@ tmp233, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].RefNum
	mov	r3, r0	@ D.38421,
	mvn	r0, #0	@ D.38420,
	str	r3, [r4, #4052]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].LastFsID
	str	r3, [r4, #4048]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].AltFsID
	str	r3, [r4, #4044]	@ D.38421, MEM[(struct VP8_CODECINF *)pCtx_21(D) + 3200B].GoldenFsID
	b	.L100	@
.L42:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38420,
	b	.L100	@
	.fnend
	.size	VP8DEC_VDMPostProc, .-VP8DEC_VDMPostProc
	.align	2
	.global	VP8DEC_Init
	.type	VP8DEC_Init, %function
VP8DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #8192	@ tmp123, pCtx,
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #8528	@,
	ldr	r7, [r5, #320]	@ D.38433, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #8128	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r5, #320]	@ D.38433, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.38435,
	str	r0, [r5, #328]	@ D.38435, pCtx_4(D)->ChanID
	beq	.L117	@,
	add	r3, r4, #4096	@ tmp131, pCtx,
	mov	lr, #0	@ tmp132,
	mov	r2, #1024	@ tmp135,
	mov	ip, #3	@ tmp141,
	str	r2, [r3, #4016]	@ tmp135, MEM[(struct VP8_CODECINF *)pCtx_4(D) + 3200B].ddr_stride
	mov	r2, #1	@ tmp153,
	str	lr, [r3, #4028]	@ tmp132, MEM[(struct VP8_CODECINF *)pCtx_4(D) + 3200B].Imgbuf_allocated
	mov	r0, r2	@ D.38432, tmp153
	ldr	r1, [r4]	@ D.38436, pCtx_4(D)->pstExtraData
	ldr	r4, [r1, #8]	@ _18->s32DecMode, _18->s32DecMode
	str	lr, [r3, #4036]	@ tmp132, MEM[(struct VP8_CODECINF *)pCtx_4(D) + 3200B].LastSharpnessLevel
	str	ip, [r3, #4068]	@ tmp141, MEM[(struct VP8_CODECINF *)pCtx_4(D) + 3200B].LastFrameType
	str	r4, [r3, #4020]	@ _18->s32DecMode, MEM[(struct VP8_CODECINF *)pCtx_4(D) + 3200B].UsedDecMode
	str	ip, [r3, #4032]	@ tmp141, MEM[(struct VP8_CODECINF *)pCtx_4(D) + 3200B].LastFilterType
	ldr	r1, [r1, #44]	@ _18->s32Vp8SegIdMemAddr, _18->s32Vp8SegIdMemAddr
	str	r1, [r3, #4040]	@ _18->s32Vp8SegIdMemAddr, MEM[(struct VP8_CODECINF *)pCtx_4(D) + 3200B].SegIdAddr
	str	r2, [r5, #332]	@ tmp153, pCtx_4(D)->DSDNeedClearQue
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L117:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38432,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VP8DEC_Init, .-VP8DEC_Init
	.align	2
	.global	VP8_setup_version
	.type	VP8_setup_version, %function
VP8_setup_version:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #64]	@ pPictureHeader_4(D)->version, pPictureHeader_4(D)->version
	cmp	r3, #3	@ pPictureHeader_4(D)->version,
	ldrls	pc, [pc, r3, asl #2]	@ pPictureHeader_4(D)->version
	b	.L119	@
.L121:
	.word	.L119
	.word	.L122
	.word	.L123
	.word	.L124
.L119:
	mov	r3, #0	@ tmp129,
	str	r3, [r0, #76]	@ tmp129, pPictureHeader_4(D)->no_lpf
	str	r3, [r0, #80]	@ tmp129, pPictureHeader_4(D)->simpler_lpf
	str	r3, [r0, #84]	@ tmp129, pPictureHeader_4(D)->use_bilinear_mc_filter
	str	r3, [r0, #88]	@ tmp129, pPictureHeader_4(D)->full_pixel
	mov	r3, #0	@ tmp133,
	str	r3, [r0, #92]	@ tmp133, pPictureHeader_4(D)->mcomp_filter_type
	bx	lr	@
.L123:
	mov	r2, #1	@ tmp121,
	mov	r3, #0	@ tmp122,
	str	r2, [r0, #76]	@ tmp121, pPictureHeader_4(D)->no_lpf
	str	r2, [r0, #84]	@ tmp121, pPictureHeader_4(D)->use_bilinear_mc_filter
	str	r3, [r0, #80]	@ tmp122, pPictureHeader_4(D)->simpler_lpf
	str	r3, [r0, #88]	@ tmp122, pPictureHeader_4(D)->full_pixel
.L126:
	mov	r3, #1	@ tmp134,
	str	r3, [r0, #92]	@ tmp134, pPictureHeader_4(D)->mcomp_filter_type
	bx	lr	@
.L122:
	mov	r2, #0	@ tmp117,
	mov	r3, #1	@ tmp118,
	str	r2, [r0, #76]	@ tmp117, pPictureHeader_4(D)->no_lpf
	str	r2, [r0, #88]	@ tmp117, pPictureHeader_4(D)->full_pixel
	str	r3, [r0, #80]	@ tmp118, pPictureHeader_4(D)->simpler_lpf
	str	r3, [r0, #84]	@ tmp118, pPictureHeader_4(D)->use_bilinear_mc_filter
	b	.L126	@
.L124:
	mov	r3, #1	@ tmp125,
	str	r3, [r0, #76]	@ tmp125, pPictureHeader_4(D)->no_lpf
	str	r3, [r0, #80]	@ tmp125, pPictureHeader_4(D)->simpler_lpf
	str	r3, [r0, #84]	@ tmp125, pPictureHeader_4(D)->use_bilinear_mc_filter
	str	r3, [r0, #88]	@ tmp125, pPictureHeader_4(D)->full_pixel
	b	.L126	@
	.fnend
	.size	VP8_setup_version, .-VP8_setup_version
	.align	2
	.global	read_mvcontexts
	.type	read_mvcontexts, %function
read_mvcontexts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0	@ bc, bc
	ldr	r10, .L141	@ tmp162,
	mov	r6, r1	@ pBs, pBs
	mov	fp, r2	@ mvc, mvc
	mov	r9, #0	@ ivtmp.93,
.L132:
	add	r4, r10, r9	@ up, tmp162, ivtmp.93
	add	r5, fp, r9	@ p, mvc, ivtmp.93
	add	r9, r9, #19	@ ivtmp.93, ivtmp.93,
	add	r8, r10, r9	@ D.38467, tmp162, ivtmp.93
	b	.L131	@
.L129:
	cmp	r4, r8	@ up, D.38467
	add	r5, r5, #1	@ p, p,
	beq	.L140	@,
.L131:
	ldrb	r2, [r4], #1	@ zero_extendqisi2	@, MEM[base: up_15, offset: 4294967295B]
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L129	@,
	mov	r2, #7	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	add	r5, r5, #1	@ p, p,
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r3, #1	@ D.38463,
	uxtb	r0, r0	@ x,
	cmp	r0, #0	@ x,
	mov	r0, r0, asl r3	@ tmp160, x,
	uxtbne	r3, r0	@ D.38463, tmp160
	cmp	r4, r8	@ up, D.38467
	strb	r3, [r5, #-1]	@ D.38463, MEM[base: p_3, offset: 0B]
	bne	.L131	@,
.L140:
	cmp	r9, #38	@ ivtmp.93,
	bne	.L132	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L142:
	.align	2
.L141:
	.word	.LANCHOR0+1352
	.fnend
	.size	read_mvcontexts, .-read_mvcontexts
	.align	2
	.global	VP8_mb_mode_mv_init
	.type	VP8_mb_mode_mv_init, %function
VP8_mb_mode_mv_init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #56]	@ pPictureHeader_8(D)->frame_type, pPictureHeader_8(D)->frame_type
	cmp	r3, #0	@ pPictureHeader_8(D)->frame_type,
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r2	@ pBs, pBs
	mov	r4, r1	@ bc, bc
	mov	r6, r0	@ pPictureHeader, pPictureHeader
	mov	r2, #8	@,
	mov	r1, r5	@, pBs
	mov	r0, r4	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #8	@,
	mov	r1, r5	@, pBs
	strb	r0, [r6, #50]	@, pPictureHeader_8(D)->prob_intra
	mov	r0, r4	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #8	@,
	mov	r1, r5	@, pBs
	strb	r0, [r6, #51]	@, pPictureHeader_8(D)->prob_last
	mov	r0, r4	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #128	@,
	mov	r1, r5	@, pBs
	strb	r0, [r6, #52]	@, pPictureHeader_8(D)->prob_gf
	mov	r0, r4	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L145	@,
.L149:
	mov	r2, #128	@,
	mov	r1, r5	@, pBs
	mov	r0, r4	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L147	@,
	add	r7, r6, #1312	@ ivtmp.104, pPictureHeader,
	mov	r8, r7	@ D.38503, ivtmp.104
	add	r7, r7, #1	@ ivtmp.104, ivtmp.104,
	add	r8, r8, #4	@ D.38503, D.38503,
.L150:
	mov	r2, #8	@,
	mov	r1, r5	@, pBs
	mov	r0, r4	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r7, #1]!	@, MEM[base: _51, offset: 0B]
	cmp	r7, r8	@ ivtmp.104, D.38503
	bne	.L150	@,
.L147:
	add	r2, r6, #2368	@, pPictureHeader,
	mov	r1, r5	@, pBs
	mov	r0, r4	@, bc
	add	r2, r2, #6	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	read_mvcontexts	@
.L145:
	add	r7, r6, #1296	@ ivtmp.117, pPictureHeader,
	add	r8, r6, #1312	@ D.38503, pPictureHeader,
	add	r7, r7, #13	@ ivtmp.117, ivtmp.117,
	add	r8, r8, #1	@ D.38503, D.38503,
.L148:
	mov	r2, #8	@,
	mov	r1, r5	@, pBs
	mov	r0, r4	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r7, #1]!	@, MEM[base: _54, offset: 0B]
	cmp	r7, r8	@ ivtmp.117, D.38503
	bne	.L148	@,
	b	.L149	@
	.fnend
	.size	VP8_mb_mode_mv_init, .-VP8_mb_mode_mv_init
	.align	2
	.global	get_delta_q
	.type	get_delta_q, %function
get_delta_q:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r2	@ prev, prev
	mov	r2, #128	@,
	mov	r6, r3	@ q_update, q_update
	mov	r7, r0	@ pBc, pBc
	mov	r8, r1	@ pBs, pBs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.38506
	bne	.L159	@,
.L155:
	cmp	r0, r5	@ ret_val, prev
	movne	r3, #1	@ tmp126,
	strne	r3, [r6]	@ tmp126, *q_update_15(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L159:
	mov	r2, #4	@,
	mov	r1, r8	@, pBs
	mov	r0, r7	@, pBc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r8	@, pBs
	mov	r2, #128	@,
	mov	r4, r0	@ ret_val,
	mov	r0, r7	@, pBc
	bl	Vp8_Vfmw_DecodeBool	@
	adds	r0, r0, #0	@ D.38507,,
	movne	r0, #1	@ D.38507,
	rsb	r3, r0, #0	@ D.38508, D.38507
	eor	r4, r4, r3	@ D.38508, ret_val, D.38508
	add	r0, r4, r0	@ ret_val, D.38508, D.38507
	b	.L155	@
	.fnend
	.size	get_delta_q, .-get_delta_q
	.align	2
	.global	VP8_init_frame
	.type	VP8_init_frame, %function
VP8_init_frame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]	@ VP8_PictureHeader_S_2(D)->frame_type, VP8_PictureHeader_S_2(D)->frame_type
	cmp	r3, #0	@ VP8_PictureHeader_S_2(D)->frame_type,
	bxne	lr	@
	b	VP8_init_frame.part.0	@
	.fnend
	.size	VP8_init_frame, .-VP8_init_frame
	.align	2
	.global	VP8_GetPictureHeader
	.type	VP8_GetPictureHeader, %function
VP8_GetPictureHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L252	@ tmp369,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r1	@ pVp8CodecInfo, pVp8CodecInfo
	mov	r6, r0	@ pBs, pBs
	.pad #36
	sub	sp, sp, #36	@,,
	ldmia	r3, {r0, r1}	@ tmp369,,
	add	r4, sp, #24	@ tmp574,,
	mov	r7, r2	@ strlen, strlen
	stmia	r4, {r0, r1}	@ tmp574,,
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r5, r0	@ D.38607,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r8, r0	@ D.38607,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	add	ip, fp, #4096	@ tmp371, pVp8CodecInfo,
	uxtb	r3, r5	@ data0, D.38607
	uxtb	r8, r8	@ D.38607, D.38607
	ubfx	r1, r3, #1, #3	@ tmp375, data0,,
	and	r5, r5, #1	@ D.38608, D.38607,
	str	r5, [fp, #2516]	@ D.38608, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type
	ubfx	r2, r3, #4, #1	@ tmp379, data0,,
	str	r5, [ip, #864]	@ D.38608, pVp8CodecInfo_41(D)->FrameType
	str	r1, [fp, #2524]	@ tmp375, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].version
	str	r2, [fp, #2520]	@ tmp379, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].show_frame
	uxtb	r0, r0	@ D.38607,
	mov	r1, r0, asl #16	@ D.38607, D.38607,
	orr	r1, r1, r8, asl #8	@ D.38607, D.38607, D.38607,
	orr	r3, r1, r3	@ D.38607, D.38607, data0
	mov	r3, r3, asr #5	@ D.38609, D.38607,
	str	r3, [fp, #2528]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].first_partition_length_in_bytes
	cmp	r3, r7	@ D.38609, strlen
	bhi	.L167	@,
	add	r3, fp, #2448	@ tmp575, pVp8CodecInfo,
	add	r3, r3, #12	@ tmp575, tmp575,
	str	r3, [sp, #8]	@ tmp575, %sfp
	mov	r0, r3	@, tmp575
	bl	VP8_setup_version	@
	ldr	r3, [fp, #2516]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type,
	beq	.L243	@,
.L166:
	mov	r2, #255	@ tmp447,
	mov	r3, #16	@ tmp448,
	str	r2, [fp, #2600]	@ tmp447, MEM[(struct VP8_BOOLCODER_S *)pVp8CodecInfo_41(D) + 2600B].range
	mov	r1, #24	@,
	str	r3, [fp, #2608]	@ tmp448, MEM[(struct VP8_BOOLCODER_S *)pVp8CodecInfo_41(D) + 2600B].count
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, [fp, #2516]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type,
	ldr	r2, [sp, #8]	@ tmp575, %sfp
	str	r0, [fp, #2604]	@, MEM[(struct VP8_BOOLCODER_S *)pVp8CodecInfo_41(D) + 2600B].value
	add	r7, r2, #140	@ bc, tmp575,
	bne	.L170	@,
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	str	r0, [fp, #2588]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].clr_type
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	str	r0, [fp, #2592]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].clamping_type
.L170:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2474]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].segmentation_enabled
	cmp	r0, #0	@ D.38605,
	bne	.L171	@,
.L178:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r2, #6	@,
	mov	r1, r6	@, pBs
	str	r0, [fp, #2596]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].filter_type
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #3	@,
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2470]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].filter_level
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r3, #0	@ tmp453,
	mov	r2, #128	@,
	strb	r3, [fp, #2461]	@ tmp453, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].mode_ref_lf_delta_update
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2471]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].sharpness_level
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2462]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].mode_ref_lf_delta_enabled
	cmp	r0, #0	@ D.38605,
	bne	.L244	@,
.L173:
	mov	r2, #2	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	add	r4, sp, #32	@ tmp481,,
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #7	@,
	mov	r1, r6	@, pBs
	mov	r5, #0	@ tmp480,
	strb	r0, [fp, #2473]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].multi_token_partition
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	movw	r2, #2465	@ tmp484,
	str	r5, [r4, #-12]!	@ tmp480, q_update
	mov	r1, r6	@, pBs
	ldrsb	r2, [fp, r2]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].y1dc_delta_q
	mov	r3, r4	@, tmp481
	strb	r0, [fp, #2463]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].base_qindex
	mov	r0, r7	@, bc
	bl	get_delta_q	@
	movw	r2, #2466	@ tmp489,
	ldrsb	r2, [fp, r2]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].y2dc_delta_q
	mov	r3, r4	@, tmp481
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2465]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].y1dc_delta_q
	mov	r0, r7	@, bc
	bl	get_delta_q	@
	movw	r2, #2467	@ tmp494,
	ldrsb	r2, [fp, r2]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].y2ac_delta_q
	mov	r3, r4	@, tmp481
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2466]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].y2dc_delta_q
	mov	r0, r7	@, bc
	bl	get_delta_q	@
	movw	r2, #2468	@ tmp499,
	ldrsb	r2, [fp, r2]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].uvdc_delta_q
	mov	r3, r4	@, tmp481
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2467]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].y2ac_delta_q
	mov	r0, r7	@, bc
	bl	get_delta_q	@
	movw	r2, #2469	@ tmp504,
	mov	r3, r4	@, tmp481
	ldrsb	r2, [fp, r2]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].uvac_delta_q
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2468]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].uvdc_delta_q
	mov	r0, r7	@, bc
	bl	get_delta_q	@
	ldr	r3, [fp, #2516]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type
	cmp	r3, r5	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type,
	strb	r0, [fp, #2469]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].uvac_delta_q
	bne	.L245	@,
.L182:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2505]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_entropy_probs
	cmp	r0, #0	@ D.38605,
	bne	.L193	@,
	ldr	r3, [sp, #8]	@ tmp575, %sfp
	movw	r2, #1149	@,
	add	r1, r3, #1296	@, tmp575,
	add	r0, r3, #152	@, tmp575,
	add	r1, r1, #5	@,,
	bl	memcpy	@
.L193:
	ldr	r3, [fp, #2516]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type,
	bne	.L194	@,
	mov	r3, #1	@ tmp547,
	strb	r3, [fp, #2500]	@ tmp547, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_last_frame
.L195:
	mov	r3, #0	@ ivtmp.170,
	str	fp, [sp, #12]	@ pVp8CodecInfo, %sfp
	str	r3, [sp, #4]	@ ivtmp.170, %sfp
.L206:
	ldr	r3, [sp, #4]	@ ivtmp.170, %sfp
	add	r10, r3, #3776	@ D.38618, ivtmp.170,
	add	fp, r3, #304	@ D.38618, ivtmp.170,
	add	r9, r3, #43	@ D.38618, ivtmp.170,
	ldr	r3, [sp, #12]	@ pVp8CodecInfo, %sfp
	add	r10, r10, #2	@ D.38618, D.38618,
	add	fp, fp, #3	@ D.38618, D.38618,
	add	r10, r3, r10	@ ivtmp.162, pVp8CodecInfo, D.38618
	ldr	r3, .L252+4	@ tmp654,
	add	r3, r3, fp	@ D.38617, tmp654, D.38618
	str	r3, [sp]	@ D.38617, %sfp
	ldr	r3, .L252+4	@ tmp655,
	add	r9, r3, r9	@ ivtmp.158, tmp655, D.38618
.L202:
	sub	r5, r9, #33	@ ivtmp.147, ivtmp.158,
	mov	r8, r10	@ ivtmp.151, ivtmp.162
.L200:
	sub	fp, r5, #11	@ ivtmp.136, ivtmp.147,
	mov	r4, r8	@ ivtmp.140, ivtmp.151
	b	.L197	@
.L196:
	cmp	fp, r5	@ ivtmp.136, ivtmp.147
	add	r4, r4, #1	@ ivtmp.140, ivtmp.140,
	beq	.L246	@,
.L197:
	ldrb	r2, [fp, #1]!	@ zero_extendqisi2	@, MEM[base: _17, offset: 0B]
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L196	@,
	mov	r2, #8	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	add	r4, r4, #1	@ ivtmp.140, ivtmp.140,
	bl	Vp8_Vfmw_DecodeValue	@
	cmp	fp, r5	@ ivtmp.136, ivtmp.147
	strb	r0, [r4, #-1]	@, MEM[base: _422, offset: 0B]
	bne	.L197	@,
.L246:
	add	r5, fp, #11	@ ivtmp.147, ivtmp.136,
	add	r8, r8, #11	@ ivtmp.151, ivtmp.151,
	cmp	r5, r9	@ ivtmp.147, ivtmp.158
	bne	.L200	@,
	ldr	r3, [sp]	@ D.38617, %sfp
	add	r9, fp, #44	@ ivtmp.158, ivtmp.136,
	add	r10, r10, #33	@ ivtmp.162, ivtmp.162,
	cmp	r9, r3	@ ivtmp.158, D.38617
	bne	.L202	@,
	ldr	r3, [sp, #4]	@ ivtmp.170, %sfp
	add	r3, r3, #264	@ ivtmp.170, ivtmp.170,
	str	r3, [sp, #4]	@ ivtmp.170, %sfp
	cmp	r3, #1056	@ ivtmp.170,
	bne	.L206	@,
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	ldr	fp, [sp, #12]	@ pVp8CodecInfo, %sfp
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.38609,
	str	r0, [fp, #2532]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].mb_no_coeff_skip
	streqb	r0, [fp, #2513]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].prob_skip_false
	beq	.L204	@,
	mov	r2, #8	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [fp, #2513]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].prob_skip_false
.L204:
	mov	r2, r6	@, pBs
	mov	r1, r7	@, bc
	ldr	r0, [sp, #8]	@, %sfp
	bl	VP8_mb_mode_mv_init	@
	ldr	r3, [fp, #2516]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type,
	beq	.L205	@,
	ldr	r3, [fp, #2500]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B], MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B]
	bic	r3, r3, #-16777216	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B],
	bic	r3, r3, #255	@ D.38609, D.38609,
	cmp	r3, #0	@ D.38609,
	moveq	r0, #1	@ D.38604,
	beq	.L238	@,
.L205:
	ldrb	r3, [fp, #2463]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].base_qindex, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].base_qindex
	mov	r0, #1	@ D.38604,
	strb	r3, [fp, #2464]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].base_qindex, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].last_kf_gf_q
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L243:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ D.38607,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r5, r0	@ D.38607,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r5, r5	@ D.38607, D.38607
	uxtb	r3, r7	@ D.38607, D.38607
	cmp	r3, #157	@ D.38607,
	cmpeq	r5, #1	@, D.38607,
	movne	r3, #1	@ tmp395,
	moveq	r3, #0	@ tmp395,
	uxtb	r0, r0	@ D.38607,
	cmp	r0, #42	@ D.38607,
	orrne	r3, r3, #1	@,, tmp402, tmp395
	cmp	r3, #0	@ tmp402,
	beq	.L247	@,
.L167:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38604,
.L238:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L247:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r8, r0	@ D.38607,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r5, r0	@ D.38607,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ D.38607,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r2, r5	@ D.38607, D.38607
	uxtb	r3, r8	@ D.38607, D.38607
	uxtb	r7, r7	@ D.38607, D.38607
	orr	r3, r3, r2, asl #8	@ D.38607, D.38607, D.38607,
	mov	r2, r2, lsr #6	@ tmp410, D.38607,
	ubfx	r3, r3, #0, #14	@ D.38609, D.38607,,
	str	r2, [fp, #2572]	@ tmp410, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].horiz_scale
	add	r1, r3, #15	@ D.38609, D.38609,
	str	r3, [fp, #2564]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].pic_width_in_pix
	mov	ip, r1, lsr #4	@ D.38609, D.38609,
	str	ip, [fp, #2556]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].pic_width_in_mb
	uxtb	r0, r0	@ D.38607,
	orr	r7, r7, r0, asl #8	@ D.38607, D.38607, D.38607,
	mov	r0, r0, lsr #6	@ tmp418, D.38607,
	ubfx	r2, r7, #0, #14	@ D.38609, D.38607,,
	str	r0, [fp, #2576]	@ tmp418, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].vert_scale
	add	r1, r2, #15	@ D.38609, D.38609,
	cmp	r2, #32	@ D.38609,
	cmphi	r3, #32	@, D.38609,
	str	r2, [fp, #2568]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].pic_height_in_pix
	mov	r1, r1, lsr #4	@ D.38609, D.38609,
	movls	r0, #1	@ tmp424,
	movhi	r0, #0	@ tmp424,
	cmp	ip, #512	@ D.38609,
	orrhi	r0, r0, #1	@,, tmp428, tmp424
	cmp	r1, #512	@ D.38609,
	orrhi	r0, r0, #1	@,, tmp434, tmp428
	str	r1, [fp, #2560]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].pic_height_in_mb
	mul	r1, ip, r1	@ D.38609, D.38609, D.38609
	cmp	r0, #0	@ tmp434,
	str	r1, [fp, #2580]	@ D.38609, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].total_mbs
	bne	.L167	@,
	ldr	r0, [fp, #116]	@ pVp8CodecInfo_41(D)->OldHeaderInfo.pic_height_in_pix, pVp8CodecInfo_41(D)->OldHeaderInfo.pic_height_in_pix
	ldr	r1, [fp, #112]	@ pVp8CodecInfo_41(D)->OldHeaderInfo.pic_width_in_pix, pVp8CodecInfo_41(D)->OldHeaderInfo.pic_width_in_pix
	cmp	r3, r1	@ D.38609, pVp8CodecInfo_41(D)->OldHeaderInfo.pic_width_in_pix
	cmpeq	r2, r0	@, D.38609, pVp8CodecInfo_41(D)->OldHeaderInfo.pic_height_in_pix
	beq	.L168	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L168:
	ldr	r3, [fp, #2516]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].frame_type,
	bne	.L166	@,
	ldr	r0, [sp, #8]	@, %sfp
	bl	VP8_init_frame.part.0	@
	b	.L166	@
.L194:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	strb	r0, [fp, #2500]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_last_frame
	b	.L195	@
.L245:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2501]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_golden_frame
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	ldrb	r3, [fp, #2501]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_golden_frame, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_golden_frame
	strb	r5, [fp, #2503]	@ tmp480, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].copy_buffer_to_gf
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_golden_frame,
	uxtb	r3, r0	@ D.38605,
	strb	r3, [fp, #2502]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_alt_ref_frame
	bne	.L191	@,
	mov	r2, #2	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	ldrb	r3, [fp, #2502]	@ zero_extendqisi2	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].refresh_alt_ref_frame
	strb	r0, [fp, #2503]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].copy_buffer_to_gf
.L191:
	cmp	r3, #0	@ D.38605,
	mov	r3, #0	@ tmp529,
	strb	r3, [fp, #2504]	@ tmp529, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].copy_buffer_to_arf
	bne	.L192	@,
	mov	r2, #2	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [fp, #2504]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].copy_buffer_to_arf
.L192:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2508]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].ref_frame_sign_bias
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	strb	r0, [fp, #2509]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].ref_frame_sign_bias
	b	.L182	@
.L244:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2461]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].mode_ref_lf_delta_update
	cmp	r0, #0	@ D.38605,
	beq	.L173	@,
	add	r4, fp, #2480	@ ivtmp.187, pVp8CodecInfo,
	add	r5, fp, #2496	@ ivtmp.180, pVp8CodecInfo,
	add	r4, r4, #12	@ ivtmp.187, ivtmp.187,
.L186:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2490]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].ref_frame_delta_update_flag
	cmp	r0, #1	@ D.38605,
	beq	.L248	@,
.L184:
	add	r4, r4, #1	@ ivtmp.187, ivtmp.187,
	cmp	r4, r5	@ ivtmp.187, ivtmp.180
	bne	.L186	@,
	add	r4, fp, #2496	@ D.38617, pVp8CodecInfo,
	add	r4, r4, #4	@ D.38617, D.38617,
.L190:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2491]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].mb_mode_delta_update_flag
	cmp	r0, #1	@ D.38605,
	beq	.L249	@,
.L188:
	add	r5, r5, #1	@ ivtmp.180, ivtmp.180,
	cmp	r5, r4	@ ivtmp.180, D.38617
	bne	.L190	@,
	b	.L173	@
.L171:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	strb	r0, [fp, #2475]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].update_mb_segmentation_map
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2476]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].update_mb_segmentation_data
	cmp	r0, #0	@ D.38605,
	bne	.L250	@,
.L174:
	ldrb	r3, [fp, #2475]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].update_mb_segmentation_map, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].update_mb_segmentation_map
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].update_mb_segmentation_map,
	beq	.L178	@,
	ldr	r3, [sp, #8]	@ tmp575, %sfp
	mov	r2, #3	@,
	mov	r1, #255	@,
	add	r4, fp, #2464	@ ivtmp.194, pVp8CodecInfo,
	add	r0, r3, #18	@, tmp575,
	add	r5, fp, #2480	@ D.38617, pVp8CodecInfo,
	bl	memset	@
	add	r4, r4, #14	@ ivtmp.194, ivtmp.194,
	add	r5, r5, #1	@ D.38617, D.38617,
	b	.L180	@
.L179:
	add	r4, r4, #1	@ ivtmp.194, ivtmp.194,
	cmp	r4, r5	@ ivtmp.194, D.38617
	beq	.L178	@,
.L180:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2481]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].segment_prob_update
	cmp	r0, #1	@ D.38605,
	bne	.L179	@,
	mov	r2, #8	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r4]	@, MEM[base: _340, offset: 0B]
	b	.L179	@
.L248:
	mov	r2, #6	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	strb	r0, [r4]	@, MEM[base: _386, offset: 0B]
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	strb	r0, [fp, #2472]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].delta_sign
	cmp	r0, #1	@ D.38605,
	ldreqb	r3, [r4]	@ zero_extendqisi2	@ MEM[base: _386, offset: 0B], MEM[base: _386, offset: 0B]
	rsbeq	r3, r3, #0	@ tmp514, MEM[base: _386, offset: 0B]
	streqb	r3, [r4]	@ tmp514, MEM[base: _386, offset: 0B]
	b	.L184	@
.L249:
	mov	r2, #6	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	strb	r0, [r5]	@, MEM[base: _397, offset: 0B]
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldrneb	r3, [r5]	@ zero_extendqisi2	@ MEM[base: _397, offset: 0B], MEM[base: _397, offset: 0B]
	rsbne	r3, r3, #0	@ tmp521, MEM[base: _397, offset: 0B]
	strneb	r3, [r5]	@ tmp521, MEM[base: _397, offset: 0B]
	b	.L188	@
.L250:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	add	r5, fp, #2480	@ ivtmp.214, pVp8CodecInfo,
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, #8	@,
	add	r5, r5, #5	@ ivtmp.214, ivtmp.214,
	mov	r8, #0	@ i,
	ldr	r3, [sp, #8]	@ tmp575, %sfp
	strb	r0, [fp, #2477]	@, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].mb_segement_abs_delta
	add	r0, r3, #22	@, tmp575,
	bl	__memzero	@
	str	fp, [sp]	@ pVp8CodecInfo, %sfp
.L175:
	sub	r10, r5, #4	@ ivtmp.202, ivtmp.214,
	b	.L177	@
.L176:
	strb	fp, [r10, #1]!	@ tmp, MEM[base: _439, offset: 0B]
	cmp	r5, r10	@ ivtmp.214, ivtmp.202
	beq	.L251	@,
.L177:
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	mov	fp, #0	@ tmp,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.38605,
	ldr	r3, [sp]	@ pVp8CodecInfo, %sfp
	cmp	r0, #1	@ D.38605,
	strb	r0, [r3, #2460]	@ D.38605, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_41(D) + 2460B].quantizer_update
	bne	.L176	@,
	ldr	r2, [r4, r8, asl #2]	@, MEM[symbol: mb_feature_data_bits, index: i_400, step: 4, offset: 0B]
	mov	r1, r6	@, pBs
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r2, #128	@,
	mov	r1, r6	@, pBs
	mov	r9, r0	@ D.38607,
	mov	r0, r7	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	fp, r9	@ tmp, D.38607
	rsb	r9, r9, #0	@ tmp467, D.38607
	cmp	r0, #0	@,
	uxtbne	fp, r9	@ tmp, tmp467
	b	.L176	@
.L251:
	add	r8, r8, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.214, ivtmp.214,
	cmp	r8, #2	@ i,
	bne	.L175	@,
	ldr	fp, [sp]	@ pVp8CodecInfo, %sfp
	b	.L174	@
.L253:
	.align	2
.L252:
	.word	.LANCHOR0+1392
	.word	.LANCHOR0+1400
	.fnend
	.size	VP8_GetPictureHeader, .-VP8_GetPictureHeader
	.align	2
	.global	VP8_ArrangeVHBMem
	.type	VP8_ArrangeVHBMem, %function
VP8_ArrangeVHBMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r5, r0, #4096	@ tmp193, pCtx,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r5, #1672]	@ D.38628, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_pix
	cmp	r3, #31	@ D.38628,
	bls	.L255	@,
	ldr	r2, [r5, #1668]	@ D.38628, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_pix
	cmp	r2, #31	@ D.38628,
	bls	.L255	@,
	ldr	r1, [r0]	@ D.38629, pCtx_12(D)->pstExtraData
	ldr	r0, [r1, #608]	@ _16->stChanOption.s32ReRangeEn, _16->stChanOption.s32ReRangeEn
	cmp	r0, #0	@ _16->stChanOption.s32ReRangeEn,
	ldr	r0, [r1, #32]	@ _16->eCapLevel, _16->eCapLevel
	bne	.L258	@,
	cmp	r0, #25	@ _16->eCapLevel,
	beq	.L276	@,
.L259:
	mov	r6, #4	@ PmvNum,
	mov	r7, r2	@ PicWidth, D.38628
	mov	r8, r3	@ PicHeight, D.38628
	mov	r9, r6	@ DecFsNum, PmvNum
	mov	r10, #5	@ D.38632,
.L261:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp194,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.38629, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp167,
	ldr	r1, [r3, #20]	@ _46->s32DnrDispOutEnable, _46->s32DnrDispOutEnable
	str	r8, [sp, #36]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _46->eCapLevel, _46->eCapLevel
	str	r7, [sp, #16]	@ PicWidth, FspInstCfg.s32DecFsWidth
	cmp	r3, #24	@ _46->eCapLevel,
	str	r8, [sp, #20]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r1, [sp, #4]	@ _46->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r7, [sp, #32]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #6]	@ tmp167, FspInstCfg.s32RprEnable
	beq	.L264	@,
	uxtb	r6, r6	@ D.38627, PmvNum
	strb	r9, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r10, [sp, #11]	@ D.38632, FspInstCfg.s32ExpectedDispFsNum
.L266:
	add	r7, r4, #8192	@ tmp177, pCtx,
	add	r1, sp, #4	@ tmp195,,
	strb	r6, [sp, #12]	@ D.38627, FspInstCfg.s32ExpectedPmvNum
	mov	r3, #0	@ tmp173,
	ldr	r0, [r7, #328]	@, pCtx_12(D)->ChanID
	strb	r3, [sp, #8]	@ tmp173, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.38630,
	beq	.L277	@,
.L255:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38626,
.L270:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L258:
	cmp	r0, #25	@ _16->eCapLevel,
	bne	.L259	@,
	ldr	r0, [r1, #568]	@ _16->stChanOption.s32MaxWidth, _16->stChanOption.s32MaxWidth
	cmp	r2, r0	@ D.38628, _16->stChanOption.s32MaxWidth
	bhi	.L255	@,
	ldr	r0, [r1, #572]	@ _16->stChanOption.s32MaxHeight, _16->stChanOption.s32MaxHeight
	cmp	r3, r0	@ D.38628, _16->stChanOption.s32MaxHeight
	bhi	.L255	@,
	ldr	r0, [r1, #596]	@ _16->stChanOption.s32SupportBFrame, _16->stChanOption.s32SupportBFrame
	mov	r7, r2	@ PicWidth, D.38628
	mov	r8, r3	@ PicHeight, D.38628
	ldr	r9, [r1, #588]	@ DecFsNum, _16->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _16->stChanOption.s32SupportBFrame,
	beq	.L268	@,
.L274:
	add	r6, r9, #1	@ PmvNum, DecFsNum,
	cmp	r6, #17	@ PmvNum,
	movge	r6, #17	@ PmvNum,
	b	.L263	@
.L277:
	ldr	r1, [r4]	@ D.38629, pCtx_12(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r7, #328]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _67->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _67->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ tmp187,
	streq	r0, [r5, #4028]	@ tmp187, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated
	bne	.L255	@,
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L276:
	ldr	r7, [r1, #568]	@ PicWidth, _16->stChanOption.s32MaxWidth
	cmp	r2, r7	@ D.38628, PicWidth
	bhi	.L255	@,
	ldr	r8, [r1, #572]	@ PicHeight, _16->stChanOption.s32MaxHeight
	cmp	r3, r8	@ D.38628, PicHeight
	bhi	.L255	@,
	ldr	r0, [r5, #4028]	@ D.38626, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated
	cmp	r0, #1	@ D.38626,
	beq	.L270	@,
	ldr	r3, [r1, #596]	@ _16->stChanOption.s32SupportBFrame, _16->stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, _16->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _16->stChanOption.s32SupportBFrame,
	bne	.L274	@,
.L268:
	mov	r6, #1	@ PmvNum,
.L263:
	ldrb	r10, [r1, #616]	@ zero_extendqisi2	@ D.38632, _16->stChanOption.s32DisplayFrameNum
	b	.L261	@
.L264:
	strb	r2, [sp, #9]	@ tmp167, FspInstCfg.s32ExpectedDecFsNum
	mov	r6, #1	@ D.38627,
	strb	r10, [sp, #11]	@ D.38632, FspInstCfg.s32ExpectedDispFsNum
	b	.L266	@
	.fnend
	.size	VP8_ArrangeVHBMem, .-VP8_ArrangeVHBMem
	.align	2
	.global	VP8_DecodeDecide
	.type	VP8_DecodeDecide, %function
VP8_DecodeDecide:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #4096	@ tmp226, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r4, #4028]	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].Imgbuf_allocated, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].Imgbuf_allocated,
	beq	.L289	@,
	ldr	r3, [r4, #4020]	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].UsedDecMode, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].UsedDecMode
	sub	r3, r3, #2	@ D.38640, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].UsedDecMode,
	cmp	r3, #1	@ D.38640,
	ldr	r3, [r0]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r3, [r3, #8]	@ D.38642,
	bls	.L310	@,
.L282:
	str	r3, [r4, #4020]	@ D.38640, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].UsedDecMode
	cmp	r3, #4	@ D.38640,
	ldrls	pc, [pc, r3, asl #2]	@ D.38640
	b	.L288	@
.L290:
	.word	.L286
	.word	.L286
	.word	.L283
	.word	.L285
	.word	.L286
.L286:
	ldr	r3, [r4, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType,
	beq	.L284	@,
	ldr	r3, [r4, #4024]	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].RefNum, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].RefNum
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].RefNum,
	bne	.L284	@,
.L288:
	bl	vfmw_dprint_nothing	@
.L285:
	mov	r0, #0	@ D.38639,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L289:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38639,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L310:
	cmp	r3, #4	@ D.38642,
	cmpne	r3, #1	@, D.38642,
	bhi	.L282	@,
	add	r6, r0, #8192	@ tmp165, pCtx,
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #4044]	@, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].GoldenFsID
	ldr	r0, [r6, #328]	@, pCtx_6(D)->ChanID
	mov	r7, #0	@ tmp181,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r6, #328]	@, pCtx_6(D)->ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, #4048]	@, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].AltFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r6, #328]	@, pCtx_6(D)->ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, #4052]	@, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].LastFsID
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, #4044]	@ tmp181, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].GoldenFsID
	str	r7, [r4, #4048]	@ tmp181, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].AltFsID
	str	r7, [r4, #4052]	@ tmp181, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].LastFsID
	ldr	r0, [r6, #328]	@, pCtx_6(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r7, [r4, #4024]	@ tmp181, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].RefNum
	str	r0, [r4, #4052]	@ D.38642, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].LastFsID
	str	r0, [r4, #4048]	@ D.38642, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].AltFsID
	str	r0, [r4, #4044]	@ D.38642, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].GoldenFsID
	ldr	r3, [r5]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r3, [r3, #8]	@ D.38640, _66->s32DecMode
	b	.L282	@
.L283:
	ldr	r3, [r4, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType,
	bne	.L288	@,
.L284:
	add	r3, r5, #8192	@ tmp224, pCtx,
	ldr	r1, [r4, #4052]	@, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].LastFsID
	ldr	r0, [r3, #328]	@, pCtx_6(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pFwdImg
	beq	.L289	@,
	ldr	r3, [r4, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_6(D) + 3200B].FrameType,
	beq	.L293	@,
	ldr	r3, [r5]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r2, [r0, #180]	@ pFwdImg_51->error_level, pFwdImg_51->error_level
	ldr	r3, [r3]	@ _55->s32RefErrThr, _55->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_51->error_level, _55->s32RefErrThr
	bhi	.L289	@,
.L293:
	mov	r0, #1	@ D.38639,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VP8_DecodeDecide, .-VP8_DecodeDecide
	.align	2
	.global	VP8_GetImageBuffer
	.type	VP8_GetImageBuffer, %function
VP8_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #8192	@ tmp131, pCtx,
	add	r5, r0, #4096	@ tmp134, pCtx,
	mov	r7, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r6, #328]	@, pCtx_3(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.38653,
	str	r0, [r5, #4056]	@ D.38653, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].CurFsID
	blt	.L319	@,
	mov	r1, r0	@, D.38653
	ldr	r0, [r6, #328]	@, pCtx_3(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r4, r0, #0	@ pLf,
	beq	.L320	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #408]	@ pLf_13->pstDecodeFs, pLf_13->pstDecodeFs
	cmp	r0, #0	@ pLf_13->pstDecodeFs,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r4, #412]	@ pLf_13->pstDispOutFs, pLf_13->pstDispOutFs
	cmp	r0, #0	@ pLf_13->pstDispOutFs,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r4, #416]	@ pLf_13->pstTfOutFs, pLf_13->pstTfOutFs
	cmp	r0, #0	@ pLf_13->pstTfOutFs,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.38652,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L319:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #4044]	@, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].GoldenFsID
	ldr	r0, [r6, #328]	@, pCtx_3(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r5, #4048]	@, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].AltFsID
	ldr	r0, [r6, #328]	@, pCtx_3(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r5, #4052]	@, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].LastFsID
	mov	r4, #0	@ tmp155,
	ldr	r0, [r6, #328]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r4, [r5, #4044]	@ tmp155, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].GoldenFsID
	str	r4, [r5, #4048]	@ tmp155, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].AltFsID
	str	r4, [r5, #4052]	@ tmp155, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].LastFsID
	ldr	r0, [r6, #328]	@, pCtx_3(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	add	r1, r7, #8128	@, pCtx,
	str	r4, [r5, #4024]	@ tmp155, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].RefNum
	add	r1, r1, #40	@,,
	str	r0, [r5, #4052]	@ D.38653, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].LastFsID
	str	r0, [r5, #4048]	@ D.38653, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].AltFsID
	str	r0, [r5, #4044]	@ D.38653, MEM[(struct VP8_CODECINF *)pCtx_3(D) + 3200B].GoldenFsID
	ldr	r0, [r6, #328]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r4	@ D.38652, tmp155
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L320:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38652, pLf
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VP8_GetImageBuffer, .-VP8_GetImageBuffer
	.align	2
	.global	VP8_Set_DecParam
	.type	VP8_Set_DecParam, %function
VP8_Set_DecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r5, #3168]	@ pVp8StreamParam, pCtx_24(D)->pVp8StreamParam
	add	fp, r0, #8	@ __p, pCtx,
	add	r8, r0, #4096	@ tmp924, pCtx,
	.pad #84
	sub	sp, sp, #84	@,,
	movw	r1, #3148	@,
	mov	r0, fp	@, __p
	str	r3, [sp, #4]	@ pVp8StreamParam, %sfp
	bl	__memzero	@
	ldr	r3, [r8, #1620]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].frame_type
	add	r4, r5, #8192	@ tmp565, pCtx,
	str	r3, [r5, #2804]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].frame_type, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].frame_type
	ldr	r3, [r8, #4068]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastFrameType, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastFrameType
	str	r3, [r5, #2808]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastFrameType, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].last_frame_type
	ldr	r3, [r8, #1660]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].pic_width_in_mb
	str	r3, [r5, #2792]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].pic_width_in_mb, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].pic_width_in_mb
	ldr	r3, [r8, #1664]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].pic_height_in_mb
	str	r3, [r5, #2796]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].pic_height_in_mb, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].pic_height_in_mb
	ldr	r3, [r8, #1648]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].use_bilinear_mc_filter, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].use_bilinear_mc_filter
	str	r3, [r5, #2812]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].use_bilinear_mc_filter, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].use_bilinear_mc_filter
	ldr	r3, [r8, #1652]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].full_pixel, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].full_pixel
	str	r3, [r5, #2816]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].full_pixel, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].full_pixel
	ldrb	r3, [r8, #1617]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_skip_false, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_skip_false
	strb	r3, [r5, #2760]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_skip_false, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].prob_skip_false
	ldr	r3, [r8, #1636]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_no_coeff_skip, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_no_coeff_skip
	strb	r3, [r5, #2761]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_no_coeff_skip, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].mb_no_coeff_skip
	ldrb	r3, [r8, #1577]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].multi_token_partition, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].multi_token_partition
	strb	r3, [r5, #2762]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].multi_token_partition, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].multi_token_partition
	ldrb	r3, [r8, #1578]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].segmentation_enabled, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].segmentation_enabled
	strb	r3, [r5, #2763]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].segmentation_enabled, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].segmentation_enable
	ldrb	r3, [r8, #1579]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].update_mb_segmentation_map, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].update_mb_segmentation_map
	strb	r3, [r5, #2764]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].update_mb_segmentation_map, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].update_mb_segmentation_map
	ldrb	r3, [r8, #1581]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segement_abs_delta, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segement_abs_delta
	strb	r3, [r5, #2765]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segement_abs_delta, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].mb_segmentation_abs_delta
	ldrb	r3, [r8, #1566]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mode_ref_lf_delta_enabled, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mode_ref_lf_delta_enabled
	strb	r3, [r5, #2766]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mode_ref_lf_delta_enabled, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].mode_ref_lf_delta_enabled
	ldr	r3, [r8, #1700]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].filter_type, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].filter_type
	strb	r3, [r5, #2768]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].filter_type, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].filter_type
	ldrb	r3, [r8, #1574]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].filter_level, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].filter_level
	strb	r3, [r5, #2770]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].filter_level, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].filter_level
	ldrb	r3, [r8, #1575]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].sharpness_level, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].sharpness_level
	strb	r3, [r5, #2771]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].sharpness_level, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].sharpness_level
	ldr	r3, [r8, #4032]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastFilterType, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastFilterType
	strb	r3, [r5, #2769]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastFilterType, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].last_filter_type
	ldr	r3, [r8, #4036]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastSharpnessLevel, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastSharpnessLevel
	strb	r3, [r5, #2772]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastSharpnessLevel, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].last_sharpness_level
	ldrb	r3, [r8, #1567]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].base_qindex, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].base_qindex
	strb	r3, [r5, #2767]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].base_qindex, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].base_qindex
	ldrb	r3, [r8, #1569]	@ zero_extendqisi2	@ D.38842, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].y1dc_delta_q
	sxtb	r2, r3	@ D.38838, D.38842
	mov	r3, r3, lsr #7	@ tmp502, D.38842,
	cmp	r2, #0	@ D.38838,
	strb	r3, [r5, #2773]	@ tmp502, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].y1dc_sign
	rsblt	r2, r2, #0	@ D.38838, D.38838,
	strb	r2, [r5, #2774]	@ D.38838, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].y1dc_absdelta_q
	ldrb	r3, [r8, #1570]	@ zero_extendqisi2	@ D.38842, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].y2dc_delta_q
	sxtb	r2, r3	@ D.38838, D.38842
	mov	r3, r3, lsr #7	@ tmp509, D.38842,
	cmp	r2, #0	@ D.38838,
	strb	r3, [r5, #2775]	@ tmp509, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].y2dc_sign
	rsblt	r2, r2, #0	@ D.38838, D.38838,
	strb	r2, [r5, #2776]	@ D.38838, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].y2dc_absdelta_q
	ldrb	r3, [r8, #1571]	@ zero_extendqisi2	@ D.38842, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].y2ac_delta_q
	sxtb	r2, r3	@ D.38838, D.38842
	mov	r3, r3, lsr #7	@ tmp516, D.38842,
	cmp	r2, #0	@ D.38838,
	strb	r3, [r5, #2777]	@ tmp516, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].y2ac_sign
	rsblt	r2, r2, #0	@ D.38838, D.38838,
	strb	r2, [r5, #2778]	@ D.38838, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].y2ac_absdelta_q
	ldrb	r3, [r8, #1572]	@ zero_extendqisi2	@ D.38842, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].uvdc_delta_q
	sxtb	r2, r3	@ D.38838, D.38842
	mov	r3, r3, lsr #7	@ tmp523, D.38842,
	cmp	r2, #0	@ D.38838,
	strb	r3, [r5, #2779]	@ tmp523, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].uvdc_sign
	rsblt	r2, r2, #0	@ D.38838, D.38838,
	strb	r2, [r5, #2780]	@ D.38838, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].uvdc_absdelta_q
	ldrb	r3, [r8, #1573]	@ zero_extendqisi2	@ D.38842, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].uvac_delta_q
	sxtb	r2, r3	@ D.38838, D.38842
	mov	r3, r3, lsr #7	@ tmp530, D.38842,
	cmp	r2, #0	@ D.38838,
	strb	r3, [r5, #2781]	@ tmp530, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].uvac_sign
	rsblt	r2, r2, #0	@ D.38838, D.38838,
	strb	r2, [r5, #2782]	@ D.38838, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].uvac_absdelta_q
	ldrb	r3, [r8, #1614]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_intra, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_intra
	strb	r3, [r5, #2783]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_intra, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].prob_intra
	ldrb	r3, [r8, #1615]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_last, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_last
	strb	r3, [r5, #2784]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_last, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].prob_last
	ldrb	r3, [r8, #1616]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_gf, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_gf
	strb	r3, [r5, #2785]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_gf, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].prob_gf
	ldr	r3, [r8, #1708]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.value, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.value
	str	r3, [r5, #2788]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.value, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].value
	ldr	r3, [r8, #1704]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.range, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.range
	strb	r3, [r5, #2786]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.range, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].range
	ldr	r3, [r8, #1712]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.count, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.count
	strb	r3, [r5, #2787]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].bc.count, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].count
	ldr	r3, [r8, #4040]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].SegIdAddr, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].SegIdAddr
	str	r3, [r5, #3144]	@ MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].SegIdAddr, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].SegIdAddr
	ldr	r1, [r8, #4056]	@, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].CurFsID
	ldr	r0, [r4, #328]	@, pCtx_24(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r8, #4044]	@, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].GoldenFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, #328]	@, pCtx_24(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r8, #4048]	@, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].AltFsID
	mov	r7, r0	@ pGolden,
	ldr	r0, [r4, #328]	@, pCtx_24(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r8, #4052]	@, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].LastFsID
	mov	r9, r0	@ pAlt,
	ldr	r0, [r4, #328]	@, pCtx_24(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pGolden,
	cmpne	r6, #0	@, pCur,
	beq	.L322	@,
	cmp	r0, #0	@ pLast,
	cmpne	r9, #0	@, pAlt,
	beq	.L322	@,
	ldr	r2, [r6, #408]	@ D.38844, pCur_132->pstDecodeFs
	cmp	r2, #0	@ D.38844,
	beq	.L322	@,
	ldr	r2, [r2, #12]	@ _151->PhyAddr, _151->PhyAddr
	add	r1, r5, #5696	@ ivtmp.390, pCtx,
	add	r1, r1, #9	@ ivtmp.390, ivtmp.390,
	str	r2, [r5, #3124]	@ _151->PhyAddr, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].image_curr_rcn_addr
	ldr	r2, [r6, #420]	@ pCur_132->PmvAddr, pCur_132->PmvAddr
	str	r2, [r5, #3140]	@ pCur_132->PmvAddr, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].CurrPmvAddr
	ldr	r2, [r7, #408]	@ D.38844, pGolden_136->pstDecodeFs
	cmp	r2, #0	@ D.38844,
	ldreq	r2, [r6, #408]	@ pCur_132->pstDecodeFs, pCur_132->pstDecodeFs
	ldr	r2, [r2, #12]	@ D.38837,
	str	r2, [r5, #3132]	@ D.38837, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].image_gld_ref_addr
	ldr	r2, [r9, #408]	@ D.38844, pAlt_140->pstDecodeFs
	cmp	r2, #0	@ D.38844,
	ldreq	r2, [r6, #408]	@ pCur_132->pstDecodeFs, pCur_132->pstDecodeFs
	ldr	r2, [r2, #12]	@ D.38837,
	str	r2, [r5, #3128]	@ D.38837, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].image_alt_ref_addr
	mov	r2, #0	@ i,
	ldr	r3, [r0, #408]	@ D.38844, pLast_144->pstDecodeFs
	add	r0, r5, #5632	@ ivtmp.331, pCtx,
	cmp	r3, #0	@ D.38844,
	mov	r4, r0	@ ivtmp.348, ivtmp.331
	mov	lr, r0	@ ivtmp.362, ivtmp.348
	mov	ip, r0	@ ivtmp.376, ivtmp.362
	ldreq	r3, [r6, #408]	@ pCur_132->pstDecodeFs, pCur_132->pstDecodeFs
	add	r0, r0, #49	@ ivtmp.331, ivtmp.331,
	add	r4, r4, #53	@ ivtmp.348, ivtmp.348,
	add	lr, lr, #59	@ ivtmp.362, ivtmp.362,
	add	ip, ip, #63	@ ivtmp.376, ivtmp.376,
	ldr	r3, [r3, #12]	@ D.38837,
	str	r3, [r5, #3136]	@ D.38837, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].image_last_ref_addr
	ldr	r3, [r6, #412]	@ pCur_132->pstDispOutFs, pCur_132->pstDispOutFs
	ldr	r7, [r3, #20]	@ D.38835, _180->Stride
	mov	r3, r5	@ ivtmp.344, pCtx
	str	r7, [r8, #4016]	@ D.38835, MEM[(struct VP8_CODECINF *)pCtx_24(D) + 3200B].ddr_stride
	str	r7, [r5, #2800]	@ D.38835, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].ddr_stride
	ldr	r6, [r6, #412]	@ pCur_132->pstDispOutFs, pCur_132->pstDispOutFs
	ldr	r6, [r6, #32]	@ _185->ChromOffset, _185->ChromOffset
	str	r6, [r5, #3152]	@ _185->ChromOffset, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].uv_offset
.L331:
	ldrsb	r6, [r0, #1]!	@ MEM[base: _532, offset: 0B], MEM[base: _532, offset: 0B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, #4	@ i,
	add	r3, r3, #4	@ ivtmp.344, ivtmp.344,
	str	r6, [r3, #3040]	@ MEM[base: _532, offset: 0B], MEM[base: _533, offset: 3044B]
	ldrsb	r6, [r4, #1]!	@ MEM[base: _534, offset: 0B], MEM[base: _534, offset: 0B]
	str	r6, [r3, #3056]	@ MEM[base: _534, offset: 0B], MEM[base: _533, offset: 3060B]
	ldrsb	r6, [lr, #1]!	@ MEM[base: _536, offset: 0B], MEM[base: _536, offset: 0B]
	str	r6, [r3, #3072]	@ MEM[base: _536, offset: 0B], MEM[base: _533, offset: 3076B]
	ldrsb	r6, [ip, #1]!	@ MEM[base: _538, offset: 0B], MEM[base: _538, offset: 0B]
	str	r6, [r3, #3088]	@ MEM[base: _538, offset: 0B], MEM[base: _533, offset: 3092B]
	ldrb	r6, [r1, #1]!	@ zero_extendqisi2	@ MEM[base: _540, offset: 0B], MEM[base: _540, offset: 0B]
	str	r6, [r3, #3104]	@ MEM[base: _540, offset: 0B], MEM[base: _533, offset: 3108B]
	bne	.L331	@,
	mov	r1, #16	@,
	mov	r0, fp	@, __p
	bl	__memzero	@
	ldrb	r3, [r8, #1617]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_skip_false, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_skip_false
	add	r2, r5, #6976	@ ivtmp.322, pCtx,
	mov	ip, #384	@ ivtmp.320,
	mov	r1, #16	@,
	add	r0, r5, #24	@, pCtx,
	strb	r3, [r5, #8]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_skip_false, MEM[(HI_U8 *)pCtx_24(D) + 8B]
	add	r3, r2, #2	@ ivtmp.322, ivtmp.322,
	mov	r9, ip	@ ivtmp.320, ivtmp.320
	str	r3, [sp]	@ ivtmp.322, %sfp
	ldrb	r3, [r8, #1582]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs
	strb	r3, [r5, #9]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs, MEM[(HI_U8 *)pCtx_24(D) + 9B]
	ldrb	r3, [r8, #1583]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs
	strb	r3, [r5, #10]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs, MEM[(HI_U8 *)pCtx_24(D) + 10B]
	ldrb	r3, [r8, #1584]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs
	strb	r3, [r5, #11]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].mb_segment_tree_probs, MEM[(HI_U8 *)pCtx_24(D) + 11B]
	ldrb	r3, [r8, #1614]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_intra, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_intra
	strb	r3, [r5, #12]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_intra, MEM[(HI_U8 *)pCtx_24(D) + 12B]
	ldrb	r3, [r8, #1615]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_last, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_last
	strb	r3, [r5, #13]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_last, MEM[(HI_U8 *)pCtx_24(D) + 13B]
	ldrb	r3, [r8, #1616]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_gf, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_gf
	strb	r3, [r5, #14]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].prob_gf, MEM[(HI_U8 *)pCtx_24(D) + 14B]
	bl	__memzero	@
	ldrb	r3, [r8, #2874]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob
	mov	r1, #16	@,
	add	r0, r5, #40	@, pCtx,
	strb	r3, [r5, #24]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(HI_U8 *)pCtx_24(D) + 24B]
	ldrb	r3, [r8, #2875]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob
	strb	r3, [r5, #25]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(HI_U8 *)pCtx_24(D) + 25B]
	ldrb	r3, [r8, #2876]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob
	strb	r3, [r5, #26]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(HI_U8 *)pCtx_24(D) + 26B]
	ldrb	r3, [r8, #2877]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob
	strb	r3, [r5, #27]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.ymode_prob, MEM[(HI_U8 *)pCtx_24(D) + 27B]
	ldrb	r3, [r8, #2878]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob
	strb	r3, [r5, #28]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob, MEM[(HI_U8 *)pCtx_24(D) + 28B]
	ldrb	r3, [r8, #2879]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob
	strb	r3, [r5, #29]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob, MEM[(HI_U8 *)pCtx_24(D) + 29B]
	ldrb	r3, [r8, #2880]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob
	strb	r3, [r5, #30]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.uv_mode_prob, MEM[(HI_U8 *)pCtx_24(D) + 30B]
	bl	__memzero	@
	mov	r1, #16	@,
	add	r0, r5, #56	@, pCtx,
	bl	__memzero	@
	mov	r1, #16	@,
	add	r0, r5, #712	@, pCtx,
	bl	__memzero	@
	ldrb	r3, [r8, #3939]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	mov	r1, #16	@,
	add	r0, r5, #728	@, pCtx,
	strb	r3, [r5, #712]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 712B]
	ldrb	r3, [r8, #3938]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #713]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 713B]
	ldrb	r3, [r8, #3940]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #714]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 714B]
	ldrb	r3, [r8, #3941]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #715]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 715B]
	ldrb	r3, [r8, #3942]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #716]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 716B]
	ldrb	r3, [r8, #3943]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #717]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 717B]
	ldrb	r3, [r8, #3944]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #718]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 718B]
	ldrb	r3, [r8, #3945]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #719]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 719B]
	ldrb	r3, [r8, #3946]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #720]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 720B]
	bl	__memzero	@
	ldrb	r3, [r8, #3939]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	mov	r1, #16	@,
	add	r0, r5, #744	@, pCtx,
	strb	r3, [r5, #728]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 728B]
	ldrb	r3, [r8, #3947]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #729]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 729B]
	ldrb	r3, [r8, #3948]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #730]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 730B]
	ldrb	r3, [r8, #3949]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #731]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 731B]
	ldrb	r3, [r8, #3950]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #732]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 732B]
	ldrb	r3, [r8, #3951]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #733]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 733B]
	ldrb	r3, [r8, #3952]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #734]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 734B]
	ldrb	r3, [r8, #3953]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #735]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 735B]
	ldrb	r3, [r8, #3954]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #736]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 736B]
	ldrb	r3, [r8, #3955]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #737]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 737B]
	ldrb	r3, [r8, #3956]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob
	strb	r3, [r5, #738]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[0].prob, MEM[(HI_U8 *)pCtx_24(D) + 738B]
	bl	__memzero	@
	ldrb	r3, [r8, #3958]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	mov	r1, #16	@,
	add	r0, r5, #760	@, pCtx,
	strb	r3, [r5, #744]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 744B]
	ldrb	r3, [r8, #3957]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #745]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 745B]
	ldrb	r3, [r8, #3959]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #746]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 746B]
	ldrb	r3, [r8, #3960]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #747]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 747B]
	ldrb	r3, [r8, #3961]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #748]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 748B]
	ldrb	r3, [r8, #3962]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #749]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 749B]
	ldrb	r3, [r8, #3963]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #750]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 750B]
	ldrb	r3, [r8, #3964]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #751]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 751B]
	ldrb	r3, [r8, #3965]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #752]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 752B]
	bl	__memzero	@
	ldrb	r3, [r8, #3958]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #760]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 760B]
	ldrb	r3, [r8, #3966]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #761]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 761B]
	ldrb	r3, [r8, #3967]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #762]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 762B]
	ldrb	r3, [r8, #3968]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #763]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 763B]
	ldrb	r3, [r8, #3969]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #764]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 764B]
	ldrb	r3, [r8, #3970]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #765]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 765B]
	ldrb	r3, [r8, #3971]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #766]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 766B]
	ldrb	r3, [r8, #3972]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #767]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 767B]
	ldrb	r3, [r8, #3973]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	str	r5, [sp, #8]	@ pCtx, %sfp
	str	r8, [sp, #12]	@ tmp924, %sfp
	strb	r3, [r5, #768]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 768B]
	ldrb	r3, [r8, #3974]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #769]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 769B]
	ldrb	r3, [r8, #3975]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob
	strb	r3, [r5, #770]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].fc.mvc[1].prob, MEM[(HI_U8 *)pCtx_24(D) + 770B]
.L332:
	ldr	r7, [sp]	@ ivtmp.310, %sfp
	sub	r5, r9, #384	@ ivtmp.313, ivtmp.320,
.L336:
	add	r8, r5, #768	@ D.38846, ivtmp.313,
	mov	r6, r7	@ ivtmp.302, ivtmp.310
	mov	r10, #0	@ ivtmp.300,
.L333:
	add	r4, r8, r10	@ D.38846, D.38846, ivtmp.300
	mov	r1, #16	@,
	add	r4, fp, r4	@ D.38834, __p, D.38846
	add	r10, r10, r1	@ ivtmp.300, ivtmp.300,
	mov	r0, r4	@, D.38834
	bl	__memzero	@
	mov	r1, r6	@, ivtmp.302
	mov	r0, r4	@, D.38834
	mov	r2, #11	@,
	bl	memcpy	@
	cmp	r10, #48	@ ivtmp.300,
	add	r6, r6, #11	@ ivtmp.302, ivtmp.302,
	bne	.L333	@,
	add	r5, r5, #48	@ ivtmp.313, ivtmp.313,
	add	r7, r7, #33	@ ivtmp.310, ivtmp.310,
	cmp	r9, r5	@ ivtmp.320, ivtmp.313
	bne	.L336	@,
	add	r9, r9, #384	@ ivtmp.320, ivtmp.320,
	ldr	r3, [sp]	@ ivtmp.322, %sfp
	cmp	r9, #1920	@ ivtmp.320,
	add	r3, r3, #264	@ ivtmp.322, ivtmp.322,
	str	r3, [sp]	@ ivtmp.322, %sfp
	bne	.L332	@,
	ldr	r8, [sp, #12]	@ tmp924, %sfp
	ldr	r10, [sp, #4]	@ pVp8StreamParam, %sfp
	ldr	r5, [sp, #8]	@ pCtx, %sfp
	ldr	r2, [r8, #1620]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].frame_type
	ldr	r3, [r10, #4]	@ pVp8StreamParam_29->PhyAddr, pVp8StreamParam_29->PhyAddr
	add	r9, r5, #3168	@ pBs, pCtx,
	add	r9, r9, #4	@ pBs, pBs,
	cmp	r2, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].frame_type,
	bic	r3, r3, #15	@ D.38835, pVp8StreamParam_29->PhyAddr,
	sub	r3, r3, #16	@ D.38835, D.38835,
	mov	r0, r9	@, pBs
	str	r3, [r5, #2820]	@ D.38835, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].stream_base_addr
	moveq	r4, #10	@ offset,
	movne	r4, #3	@ offset,
	ldr	r6, [r8, #1632]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].first_partition_length_in_bytes, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].first_partition_length_in_bytes
	bl	BsPos	@
	add	r6, r4, r6	@ D.38835, offset, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].first_partition_length_in_bytes
	mov	r6, r6, asl #3	@ D.38835, D.38835,
	rsb	r0, r0, r6	@ D.38835,, D.38835
	str	r0, [r5, #2824]	@ D.38835, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].bit_len_0
	mov	r0, r9	@, pBs
	ldr	r7, [r10, #4]	@ pVp8StreamParam_29->PhyAddr, pVp8StreamParam_29->PhyAddr
	bl	BsPos	@
	and	r7, r7, #15	@ D.38835, pVp8StreamParam_29->PhyAddr,
	add	r7, r7, #16	@ D.38835, D.38835,
	cmp	r0, #0	@ D.38838,
	add	r6, r0, #7	@ tmp865, D.38838,
	movge	r6, r0	@ D.38838, D.38838
	mov	r0, r9	@, pBs
	bl	BsPos	@
	add	r6, r7, r6, asr #3	@ ByteA, D.38835, D.38838,
	and	r1, r6, #15	@ D.38835, ByteA,
	mov	ip, #0	@ tmp877,
	bic	r6, r6, #15	@ D.38835, ByteA,
	str	ip, [r5, #2836]	@ tmp877, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].bit_len_1
	str	ip, [r5, #2840]	@ tmp877, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].bit_offset_1
	str	ip, [r5, #2844]	@ tmp877, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].bit_byte_offset_1
	str	r6, [r5, #2832]	@ D.38835, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].bit_byte_offset_0
	mov	r3, r0, asr #31	@ tmp870, D.38838,
	mov	r3, r3, lsr #29	@ tmp871, tmp870,
	add	r2, r0, r3	@ tmp872, D.38838, tmp871
	and	r2, r2, #7	@ tmp873, tmp872,
	rsb	r3, r3, r2	@ D.38838, tmp871, tmp873
	add	r3, r3, r1, lsl #3	@ D.38835, D.38838, D.38835,
	str	r3, [r5, #2828]	@ D.38835, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].bit_offset_0
	ldrb	r6, [r8, #1577]	@ zero_extendqisi2	@ D.38838, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].multi_token_partition
	mov	r3, #1	@ tmp887,
	ldr	r2, [r8, #1632]	@ D.38835, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_24(D) + 5660B].first_partition_length_in_bytes
	mov	r6, r3, asl r6	@ D.38838, tmp887,
	ldr	r0, [r10]	@ pVp8StreamParam_29->VirAddr, pVp8StreamParam_29->VirAddr
	add	ip, r4, r2	@ D.38846, offset, D.38835
	ldr	r1, [r10, #8]	@ pVp8StreamParam_29->Length, pVp8StreamParam_29->Length
	uxtb	r6, r6	@ D.38838, D.38838
	add	r0, r0, ip	@ source_start, pVp8StreamParam_29->VirAddr, D.38846
	cmp	r6, #1	@ D.38838,
	str	r6, [r5, #2848]	@ D.38838, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].stream_num_part
	subhi	r7, r6, #1	@ D.38838, D.38838,
	rsb	r1, r4, r1	@ D.38835, offset, pVp8StreamParam_29->Length
	movls	r7, r0	@ source_start, source_start
	addhi	r7, r7, r7, lsl #1	@ D.38838, D.38838, D.38838,
	addhi	r7, r0, r7	@ source_start, source_start, D.38838
	cmp	r6, #0	@ D.38838,
	ble	.L347	@,
	rsb	r3, r6, #1	@ D.38838, D.38838,
	add	lr, sp, #48	@ ivtmp.229,,
	sub	r9, r6, #1	@ D.38838, D.38838,
	mov	r4, #0	@ i,
	add	r3, r3, r3, lsl #1	@ D.38838, D.38838, D.38838,
	mov	r8, lr	@ ivtmp.288, ivtmp.229
	rsb	r2, r2, r3	@ D.38837, D.38835, D.38838
	add	r10, r2, r1	@ D.38835, D.38837, D.38835
.L342:
	cmp	r4, r9	@ i, D.38838
	add	r4, r4, #1	@ i, i,
	rsbge	r3, r7, r0	@ D.38838, source_start, source_start
	add	r0, r0, #3	@ source_start, source_start,
	ldrltb	r3, [r0, #-2]	@ zero_extendqisi2	@ D.38838, MEM[base: source_start_480, offset: 1B]
	addge	r3, r3, r10	@ length, D.38838, D.38835
	ldrltb	r2, [r0, #-3]	@ zero_extendqisi2	@ D.38838, MEM[base: source_start_480, offset: 0B]
	ldrltb	r1, [r0, #-1]	@ zero_extendqisi2	@ D.38838, MEM[base: source_start_480, offset: 2B]
	addlt	r3, r2, r3, lsl #8	@ D.38838, D.38838, D.38838,
	addlt	r3, r3, r1, lsl #16	@ length, D.38838, D.38838,
	cmp	r4, r6	@ i, D.38838
	str	r3, [r8], #4	@ length, MEM[base: _515, offset: 0B]
	add	r7, r7, r3	@ source_start, source_start, length
	bne	.L342	@,
	ldr	r3, [sp, #4]	@ pVp8StreamParam, %sfp
	add	r9, r9, r9, lsl #1	@ D.38838, D.38838, D.38838,
	add	r1, r5, #2848	@ ivtmp.236, pCtx,
	mov	r2, #0	@ i,
	add	r10, r5, #2880	@ ivtmp.244, pCtx,
	add	r8, r5, #2944	@ ivtmp.258, pCtx,
	ldr	r3, [r3, #4]	@ pVp8StreamParam_29->PhyAddr, pVp8StreamParam_29->PhyAddr
	mov	r0, r1	@ ivtmp.236, ivtmp.236
	add	r1, sp, #16	@ ivtmp.278,,
	add	r7, r5, #2976	@ ivtmp.265, pCtx,
	and	r3, r3, #15	@ D.38835, pVp8StreamParam_29->PhyAddr,
	str	fp, [sp]	@ __p, %sfp
	add	r3, r9, r3	@ D.38837, D.38838, D.38835
	str	r5, [sp, #4]	@ pCtx, %sfp
	add	r3, r3, ip	@ D.38835, D.38837, D.38846
	str	r3, [sp, #8]	@ D.38835, %sfp
	add	r3, r5, #3008	@ ivtmp.272, pCtx,
	add	r9, r5, #2912	@ ivtmp.251, pCtx,
	mov	r4, r2	@ tmp926, i
	mov	fp, r0	@ ivtmp.236, ivtmp.236
	mov	r5, r3	@ ivtmp.272, ivtmp.272
.L346:
	cmp	r2, #0	@ i,
	add	r2, r2, #1	@ i, i,
	add	r1, r1, #4	@ ivtmp.278, ivtmp.278,
	ldreq	r3, [sp, #8]	@ D.38835, %sfp
	ldrne	r3, [r1, #-8]	@ MEM[base: _5, offset: 4294967292B], MEM[base: _5, offset: 4294967292B]
	ldrne	r0, [lr, #-4]	@ MEM[base: _3, offset: 4294967292B], MEM[base: _3, offset: 4294967292B]
	streq	r3, [sp, #16]	@ D.38835, Byte
	ldreq	r3, [r1, #-4]	@ D.38835, MEM[base: _6, offset: 0B]
	addne	r3, r0, r3	@ D.38835, MEM[base: _3, offset: 4294967292B], MEM[base: _5, offset: 4294967292B]
	ldr	ip, [lr], #4	@ MEM[base: _22, offset: 0B], MEM[base: _22, offset: 0B]
	strne	r3, [r1, #-4]	@ D.38835, MEM[base: _5, offset: 0B]
	and	r0, r3, #15	@ D.38835, D.38835,
	cmp	r2, r6	@ i, D.38838
	bic	r3, r3, #15	@ D.38835, D.38835,
	mov	ip, ip, asl #3	@ D.38835, MEM[base: _22, offset: 0B],
	mov	r0, r0, asl #3	@ D.38835, D.38835,
	str	ip, [fp, #4]!	@ D.38835, MEM[base: _20, offset: 0B]
	add	r3, r3, #16	@ D.38835, D.38835,
	str	r0, [r10, #4]!	@ D.38835, MEM[base: _18, offset: 0B]
	str	r3, [r9, #4]!	@ D.38835, MEM[base: _17, offset: 0B]
	str	r4, [r8, #4]!	@ tmp926, MEM[base: _16, offset: 0B]
	str	r4, [r7, #4]!	@ tmp926, MEM[base: _10, offset: 0B]
	str	r4, [r5, #4]!	@ tmp926, MEM[base: _8, offset: 0B]
	bne	.L346	@,
	ldr	fp, [sp]	@ __p, %sfp
	ldr	r5, [sp, #4]	@ pCtx, %sfp
.L347:
	ldr	r3, [r5]	@ pCtx_24(D)->pstExtraData, pCtx_24(D)->pstExtraData
	mov	r0, #1	@ D.38836,
	str	fp, [r5, #4]	@ __p, pCtx_24(D)->pVp8DecParam
	ldr	r3, [r3, #512]	@ D.38838, _452->s32Compress_en
	str	r3, [r5, #3148]	@ D.38838, MEM[(struct VP8_DEC_PARAM_S *)pCtx_24(D) + 8B].Compress_en
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L322:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38836,
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	VP8_Set_DecParam, .-VP8_Set_DecParam
	.align	2
	.global	VP8_Update_PictHeader
	.type	VP8_Update_PictHeader, %function
VP8_Update_PictHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #2448	@ pNewPicHeader, pVp8CodecInfo,
	ldrb	r3, [r0, #2505]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].refresh_entropy_probs, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].refresh_entropy_probs
	mov	r4, r0	@ pVp8CodecInfo, pVp8CodecInfo
	add	r5, r5, #12	@ pNewPicHeader, pNewPicHeader,
	add	r6, r0, #8	@ pOldPicHeader, pVp8CodecInfo,
	cmp	r3, #0	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].refresh_entropy_probs,
	bne	.L365	@,
	add	r0, r0, #3760	@, pVp8CodecInfo,
	movw	r2, #1149	@,
	add	r0, r0, #1	@,,
	add	r1, r5, #152	@, pNewPicHeader,
	bl	memcpy	@
.L365:
	movw	r2, #2452	@,
	mov	r1, r5	@, pNewPicHeader
	mov	r0, r6	@, pOldPicHeader
	bl	memcpy	@
	ldr	r2, [r4, #2516]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].frame_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].frame_type
	add	r3, r4, #4096	@ tmp139, pVp8CodecInfo,
	str	r2, [r3, #868]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].frame_type, pVp8CodecInfo_2(D)->LastFrameType
	ldr	r2, [r4, #2596]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].filter_type, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].filter_type
	str	r2, [r3, #832]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].filter_type, pVp8CodecInfo_2(D)->LastFilterType
	ldrb	r2, [r4, #2471]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].sharpness_level, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].sharpness_level
	str	r2, [r3, #836]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].sharpness_level, pVp8CodecInfo_2(D)->LastSharpnessLevel
	ldrb	r3, [r4, #2500]	@ zero_extendqisi2	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].refresh_last_frame, MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].refresh_last_frame
	strb	r3, [r4]	@ MEM[(struct VP8_PICTUREHEADER_S *)pVp8CodecInfo_2(D) + 2460B].refresh_last_frame, pVp8CodecInfo_2(D)->refresh_last_frame
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP8_Update_PictHeader, .-VP8_Update_PictHeader
	.align	2
	.global	VP8DEC_Decode
	.type	VP8DEC_Decode, %function
VP8DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r1]	@ D.38868, pPacket_16(D)->StreamPack[0].VirAddr
	.pad #20
	sub	sp, sp, #20	@,,
	str	r3, [r0, #3156]	@ D.38868, pCtx_12(D)->StreamParam.VirAddr
	ldr	r2, [r1, #8]	@ pPacket_16(D)->StreamPack[0].PhyAddr, pPacket_16(D)->StreamPack[0].PhyAddr
	str	r2, [r0, #3160]	@ pPacket_16(D)->StreamPack[0].PhyAddr, pCtx_12(D)->StreamParam.PhyAddr
	ldr	r2, [r1, #12]	@ D.38869, pPacket_16(D)->StreamPack[0].LenInByte
	cmp	r2, #2	@ D.38869,
	str	r2, [r0, #3164]	@ D.38869, pCtx_12(D)->StreamParam.Length
	ble	.L370	@,
	add	r5, r0, #3168	@ pBs, pCtx,
	mov	r1, r3	@, D.38868
	add	r5, r5, #4	@ pBs, pBs,
	add	r7, r0, #3200	@ pVp8CodecInfo, pCtx,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	add	r3, r4, #3152	@ D.38871, pCtx,
	add	r3, r3, #4	@ D.38871, D.38871,
	mov	r0, r5	@, pBs
	mov	r1, r7	@, pVp8CodecInfo
	str	r3, [r4, #3168]	@ D.38871, pCtx_12(D)->pVp8StreamParam
	ldr	r2, [r4, #3164]	@, pCtx_12(D)->StreamParam.Length
	bl	VP8_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L370	@,
	add	r5, r4, #4096	@ tmp372, pCtx,
	ldr	r3, [r5, #4028]	@ MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated,
	bne	.L371	@,
.L373:
	ldr	r3, [r4]	@ D.38872, pCtx_12(D)->pstExtraData
.L372:
	ldr	r8, [r3, #692]	@ _188->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _188->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r6, r4, #8192	@ tmp373, pCtx,
	cmp	r8, #1	@ _188->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L401	@,
.L375:
	ldr	r3, .L406	@ tmp254,
	ldr	r3, [r3]	@ D.38873, g_event_report
	cmp	r3, #0	@ D.38873,
	beq	.L382	@,
	ldr	r0, [r5, #1664]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb
	add	r2, sp, #8	@,,
	ldr	r8, [r4, #3304]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb
	mov	r1, #2	@,
	ldr	lr, [r4, #3308]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb
	ldr	ip, [r5, #1660]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb
	strh	r0, [sp, #14]	@ movhi	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb, para
	strh	r8, [sp, #8]	@ movhi	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb, para
	strh	lr, [sp, #10]	@ movhi	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb, para
	strh	ip, [sp, #12]	@ movhi	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb, para
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	blx	r3	@ D.38873
.L382:
	mov	r2, #1	@,
	ldr	r1, [r5, #4044]	@, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].GoldenFsID
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	mov	r8, #0	@ tmp287,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r5, #4048]	@, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].AltFsID
	add	r9, r4, #8128	@ D.38875, pCtx,
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	add	r9, r9, #40	@ D.38875, D.38875,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r5, #4052]	@, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].LastFsID
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r8, [r5, #4044]	@ tmp287, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].GoldenFsID
	str	r8, [r5, #4048]	@ tmp287, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].AltFsID
	str	r8, [r5, #4052]	@ tmp287, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].LastFsID
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r8, [r5, #4024]	@ tmp287, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].RefNum
	mov	r1, r9	@, D.38875
	str	r0, [r5, #4052]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].LastFsID
	str	r0, [r5, #4048]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].AltFsID
	str	r0, [r5, #4044]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].GoldenFsID
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r5, #1660]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb
	cmp	r3, #512	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb,
	bhi	.L370	@,
	ldr	r3, [r5, #1664]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb
	cmp	r3, #512	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb,
	bhi	.L370	@,
	ldr	r3, [r4]	@ D.38872, pCtx_12(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _113->stChanOption.s32ReRangeEn, _113->stChanOption.s32ReRangeEn
	cmp	r2, r8	@ _113->stChanOption.s32ReRangeEn,
	bne	.L383	@,
	ldr	r3, [r3, #32]	@ _113->eCapLevel, _113->eCapLevel
	cmp	r3, #25	@ _113->eCapLevel,
	beq	.L402	@,
.L383:
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L385	@,
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _121->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _121->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _121->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L403	@,
.L387:
	mov	r0, r9	@, D.38875
	bl	ResetVoQueue	@
.L385:
	mov	r0, r4	@, pCtx
	bl	VP8_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L370	@,
.L374:
	mov	r0, r4	@, pCtx
	bl	VP8_DecodeDecide	@
	cmp	r0, #1	@,
	beq	.L404	@,
.L370:
	bl	vfmw_dprint_nothing	@
.L369:
	mov	r0, #0	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L371:
	ldr	r2, [r4, #3304]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb
	ldr	r3, [r5, #1660]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb
	cmp	r2, r3	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_width_in_mb
	bne	.L373	@,
	ldr	r2, [r4, #3308]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb
	ldr	r3, [r5, #1664]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb
	cmp	r2, r3	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 5660B].pic_height_in_mb
	bne	.L373	@,
	ldr	r3, [r4]	@ D.38872, pCtx_12(D)->pstExtraData
	ldr	r2, [r3, #728]	@ _39->s32DSDWaitFlag, _39->s32DSDWaitFlag
	cmp	r2, #1	@ _39->s32DSDWaitFlag,
	bne	.L374	@,
	b	.L372	@
.L404:
	mov	r0, r4	@, pCtx
	bl	VP8_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L370	@,
	add	r6, r4, #8192	@ tmp373, pCtx,
	ldr	r1, [r5, #4056]	@, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].CurFsID
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L370	@,
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	mov	r1, #0	@ tmp342,
	mvn	r8, #0	@ tmp343,
	mvn	r9, #0	@,
	ldrd	r2, [r3, #56]	@ D.38877, pCtx_12(D)->pstExtraData,
	strd	r2, [r0, #8]	@ D.38877, pImage,
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r2, [r3, #72]	@ D.38877, pCtx_12(D)->pstExtraData,
	strd	r2, [r0, #16]	@ D.38877, pImage,
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldrd	r2, [r3, #88]	@ D.38877, pCtx_12(D)->pstExtraData,
	strd	r2, [r0, #24]	@ D.38877, pImage,
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #104]	@ D.38870, _149->DispEnableFlag
	str	r3, [r0, #68]	@ D.38870, pImage_138->DispEnableFlag
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #108]	@ D.38870, _152->DispFrameDistance
	str	r3, [r0, #72]	@ D.38870, pImage_138->DispFrameDistance
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #112]	@ D.38870, _155->DistanceBeforeFirstFrame
	str	r3, [r0, #76]	@ D.38870, pImage_138->DistanceBeforeFirstFrame
	ldr	r3, [r4]	@ pCtx_12(D)->pstExtraData, pCtx_12(D)->pstExtraData
	ldr	r3, [r3, #128]	@ D.38870, _158->GopNum
	str	r1, [r0, #128]	@ tmp342, pImage_138->is_fld_save
	str	r3, [r0, #80]	@ D.38870, pImage_138->GopNum
	ldr	r3, [r4]	@ D.38872, pCtx_12(D)->pstExtraData
	strd	r8, [r3, #56]	@ tmp343, D.38872,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #4064]	@ MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].FrameType, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].FrameType
	cmp	r2, #0	@ MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].FrameType,
	bne	.L388	@,
	ldr	r1, [r5, #4048]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].AltFsID
	ldr	r3, [r5, #4056]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].CurFsID
	cmp	r1, r3	@ D.38869, D.38869
	beq	.L389	@,
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r5, #4056]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].CurFsID
.L389:
	ldr	r1, [r5, #4052]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].LastFsID
	cmp	r1, r3	@ D.38869, D.38869
	beq	.L390	@,
	mov	r2, #0	@,
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r5, #4056]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].CurFsID
.L390:
	ldr	r1, [r5, #4044]	@ D.38869, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].GoldenFsID
	cmp	r1, r3	@ D.38869, D.38869
	beq	.L391	@,
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
.L391:
	mov	r3, #0	@ tmp370,
	str	r3, [r5, #4024]	@ tmp370, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].RefNum
.L388:
	mov	r0, r4	@, pCtx
	bl	VP8_Set_DecParam	@
	mov	r0, r7	@, pVp8CodecInfo
	bl	VP8_Update_PictHeader	@
	b	.L369	@
.L403:
	ldr	r3, [r6, #332]	@ pCtx_12(D)->DSDNeedClearQue, pCtx_12(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_12(D)->DSDNeedClearQue,
	bne	.L385	@,
	b	.L387	@
.L401:
	mov	r3, sp	@,
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@,,
	ldr	r0, [r6, #328]	@, pCtx_12(D)->ChanID
	mov	ip, #0	@ tmp225,
	str	ip, [sp]	@ tmp225, NewNum
	str	ip, [sp, #4]	@ tmp225, ReadNum
	str	ip, [sp, #8]	@ tmp225, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4]	@ D.38872, pCtx_12(D)->pstExtraData
	ldr	r1, [r4, #3304]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb
	ldr	r2, [r3, #720]	@ _50->s32DSDThrWidth, _50->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _50->s32DSDThrWidth, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_width_in_mb,
	bcc	.L376	@,
	ldr	r1, [r4, #3308]	@ MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb
	ldr	r2, [r3, #724]	@ _50->s32DSDThrHeight, _50->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _50->s32DSDThrHeight, MEM[(struct VP8_PICTUREHEADER_S *)pCtx_12(D) + 3208B].pic_height_in_mb,
	bcc	.L376	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.38869, ReadNum, NewNum
	cmp	r2, #0	@ D.38869,
	strgt	r8, [r3, #728]	@ _188->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _50->s32DSDWaitFlag
	strle	r8, [r6, #332]	@ _188->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_12(D)->DSDNeedClearQue
	bgt	.L369	@,
.L379:
	mov	r2, #0	@ tmp253,
	str	r2, [r3, #728]	@ tmp253, _50->s32DSDWaitFlag
	b	.L375	@
.L376:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L405	@,
.L380:
	mov	r2, #1	@ tmp249,
	str	r2, [r3, #728]	@ tmp249, _50->s32DSDWaitFlag
	b	.L369	@
.L402:
	ldr	r3, [r5, #4028]	@ MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated, MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated
	cmp	r3, r8	@ MEM[(struct VP8_CODECINF *)pCtx_12(D) + 3200B].Imgbuf_allocated,
	bne	.L385	@,
	b	.L387	@
.L405:
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L380	@,
	mov	r2, #0	@ tmp252,
	str	r2, [r6, #332]	@ tmp252, pCtx_12(D)->DSDNeedClearQue
	b	.L379	@
.L407:
	.align	2
.L406:
	.word	g_event_report
	.fnend
	.size	VP8DEC_Decode, .-VP8DEC_Decode
	.align	2
	.global	VP8DEC_RecycleImage
	.type	VP8DEC_RecycleImage, %function
VP8DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #8192	@ tmp122, pCtx,
	mov	r5, r1	@ ImgID, ImgID
	mov	r2, #0	@,
	ldr	r0, [r4, #328]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #328]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L409	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp131,
	ldr	r0, [r4, #328]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp131, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #328]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp131, pImg_10->p_usrdat
.L409:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP8DEC_RecycleImage, .-VP8DEC_RecycleImage
	.align	2
	.global	VP8DEC_GetRemainImg
	.type	VP8DEC_GetRemainImg, %function
VP8DEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8128	@, pCtx,
	add	r0, r0, #40	@,,
	b	GetVoLastImageID	@
	.fnend
	.size	VP8DEC_GetRemainImg, .-VP8DEC_GetRemainImg
	.align	2
	.global	VP8DEC_GetImageBuffer
	.type	VP8DEC_GetImageBuffer, %function
VP8DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #8192	@ tmp119, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #328]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38890,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #328]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L422	@,
	mov	r0, #0	@ D.38890,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L422:
	add	r1, r5, #8128	@, pCtx,
	ldr	r0, [r4, #328]	@, pCtx_4(D)->ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38890,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP8DEC_GetImageBuffer, .-VP8DEC_GetImageBuffer
	.global	default_uv_mode_prob
	.global	default_ymode_prob
	.global	VP8_VFMWBITREADER_NORM
	.global	vp8_mv_update_probs
	.global	vp8_default_mv_context
	.global	vp8_coef_update_probs
	.global	default_coef_probs
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	vp8_default_mv_context, %object
	.size	vp8_default_mv_context, 38
vp8_default_mv_context:
@ prob:
	.byte	-94
	.byte	-128
	.byte	-31
	.byte	-110
	.byte	-84
	.byte	-109
	.byte	-42
	.byte	39
	.byte	-100
	.byte	-128
	.byte	-127
	.byte	-124
	.byte	75
	.byte	-111
	.byte	-78
	.byte	-50
	.byte	-17
	.byte	-2
	.byte	-2
@ prob:
	.byte	-92
	.byte	-128
	.byte	-52
	.byte	-86
	.byte	119
	.byte	-21
	.byte	-116
	.byte	-26
	.byte	-28
	.byte	-128
	.byte	-126
	.byte	-126
	.byte	74
	.byte	-108
	.byte	-76
	.byte	-53
	.byte	-20
	.byte	-2
	.byte	-2
	.space	2
	.type	default_coef_probs, %object
	.size	default_coef_probs, 1056
default_coef_probs:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-3
	.byte	-120
	.byte	-2
	.byte	-1
	.byte	-28
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-67
	.byte	-127
	.byte	-14
	.byte	-1
	.byte	-29
	.byte	-43
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	106
	.byte	126
	.byte	-29
	.byte	-4
	.byte	-42
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	98
	.byte	-8
	.byte	-1
	.byte	-20
	.byte	-30
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-75
	.byte	-123
	.byte	-18
	.byte	-2
	.byte	-35
	.byte	-22
	.byte	-1
	.byte	-102
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	78
	.byte	-122
	.byte	-54
	.byte	-9
	.byte	-58
	.byte	-76
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-71
	.byte	-7
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-72
	.byte	-106
	.byte	-9
	.byte	-1
	.byte	-20
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	77
	.byte	110
	.byte	-40
	.byte	-1
	.byte	-20
	.byte	-26
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	101
	.byte	-5
	.byte	-1
	.byte	-15
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-86
	.byte	-117
	.byte	-15
	.byte	-4
	.byte	-20
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	37
	.byte	116
	.byte	-60
	.byte	-13
	.byte	-28
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-52
	.byte	-2
	.byte	-1
	.byte	-11
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-49
	.byte	-96
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	102
	.byte	103
	.byte	-25
	.byte	-1
	.byte	-45
	.byte	-85
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-104
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-79
	.byte	-121
	.byte	-13
	.byte	-1
	.byte	-22
	.byte	-31
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	80
	.byte	-127
	.byte	-45
	.byte	-1
	.byte	-62
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-10
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-58
	.byte	35
	.byte	-19
	.byte	-33
	.byte	-63
	.byte	-69
	.byte	-94
	.byte	-96
	.byte	-111
	.byte	-101
	.byte	62
	.byte	-125
	.byte	45
	.byte	-58
	.byte	-35
	.byte	-84
	.byte	-80
	.byte	-36
	.byte	-99
	.byte	-4
	.byte	-35
	.byte	1
	.byte	68
	.byte	47
	.byte	-110
	.byte	-48
	.byte	-107
	.byte	-89
	.byte	-35
	.byte	-94
	.byte	-1
	.byte	-33
	.byte	-128
	.byte	1
	.byte	-107
	.byte	-15
	.byte	-1
	.byte	-35
	.byte	-32
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-72
	.byte	-115
	.byte	-22
	.byte	-3
	.byte	-34
	.byte	-36
	.byte	-1
	.byte	-57
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	81
	.byte	99
	.byte	-75
	.byte	-14
	.byte	-80
	.byte	-66
	.byte	-7
	.byte	-54
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-127
	.byte	-24
	.byte	-3
	.byte	-42
	.byte	-59
	.byte	-14
	.byte	-60
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	99
	.byte	121
	.byte	-46
	.byte	-6
	.byte	-55
	.byte	-58
	.byte	-1
	.byte	-54
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	23
	.byte	91
	.byte	-93
	.byte	-14
	.byte	-86
	.byte	-69
	.byte	-9
	.byte	-46
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-56
	.byte	-10
	.byte	-1
	.byte	-22
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	109
	.byte	-78
	.byte	-15
	.byte	-1
	.byte	-25
	.byte	-11
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	44
	.byte	-126
	.byte	-55
	.byte	-3
	.byte	-51
	.byte	-64
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-124
	.byte	-17
	.byte	-5
	.byte	-37
	.byte	-47
	.byte	-1
	.byte	-91
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	94
	.byte	-120
	.byte	-31
	.byte	-5
	.byte	-38
	.byte	-66
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	22
	.byte	100
	.byte	-82
	.byte	-11
	.byte	-70
	.byte	-95
	.byte	-1
	.byte	-57
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-74
	.byte	-7
	.byte	-1
	.byte	-24
	.byte	-21
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	124
	.byte	-113
	.byte	-15
	.byte	-1
	.byte	-29
	.byte	-22
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	35
	.byte	77
	.byte	-75
	.byte	-5
	.byte	-63
	.byte	-45
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-99
	.byte	-9
	.byte	-1
	.byte	-20
	.byte	-25
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	121
	.byte	-115
	.byte	-21
	.byte	-1
	.byte	-31
	.byte	-29
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	45
	.byte	99
	.byte	-68
	.byte	-5
	.byte	-61
	.byte	-39
	.byte	-1
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-5
	.byte	-1
	.byte	-43
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-53
	.byte	1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-119
	.byte	1
	.byte	-79
	.byte	-1
	.byte	-32
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-3
	.byte	9
	.byte	-8
	.byte	-5
	.byte	-49
	.byte	-48
	.byte	-1
	.byte	-64
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-81
	.byte	13
	.byte	-32
	.byte	-13
	.byte	-63
	.byte	-71
	.byte	-7
	.byte	-58
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	73
	.byte	17
	.byte	-85
	.byte	-35
	.byte	-95
	.byte	-77
	.byte	-20
	.byte	-89
	.byte	-1
	.byte	-22
	.byte	-128
	.byte	1
	.byte	95
	.byte	-9
	.byte	-3
	.byte	-44
	.byte	-73
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-17
	.byte	90
	.byte	-12
	.byte	-6
	.byte	-45
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-101
	.byte	77
	.byte	-61
	.byte	-8
	.byte	-68
	.byte	-61
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	24
	.byte	-17
	.byte	-5
	.byte	-38
	.byte	-37
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-55
	.byte	51
	.byte	-37
	.byte	-1
	.byte	-60
	.byte	-70
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	69
	.byte	46
	.byte	-66
	.byte	-17
	.byte	-55
	.byte	-38
	.byte	-1
	.byte	-28
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-65
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-33
	.byte	-91
	.byte	-7
	.byte	-1
	.byte	-43
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-115
	.byte	124
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	16
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-66
	.byte	36
	.byte	-26
	.byte	-1
	.byte	-20
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-107
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-30
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-9
	.byte	-64
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-16
	.byte	-128
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-122
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-43
	.byte	62
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	55
	.byte	93
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-54
	.byte	24
	.byte	-43
	.byte	-21
	.byte	-70
	.byte	-65
	.byte	-36
	.byte	-96
	.byte	-16
	.byte	-81
	.byte	-1
	.byte	126
	.byte	38
	.byte	-74
	.byte	-24
	.byte	-87
	.byte	-72
	.byte	-28
	.byte	-82
	.byte	-1
	.byte	-69
	.byte	-128
	.byte	61
	.byte	46
	.byte	-118
	.byte	-37
	.byte	-105
	.byte	-78
	.byte	-16
	.byte	-86
	.byte	-1
	.byte	-40
	.byte	-128
	.byte	1
	.byte	112
	.byte	-26
	.byte	-6
	.byte	-57
	.byte	-65
	.byte	-9
	.byte	-97
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-90
	.byte	109
	.byte	-28
	.byte	-4
	.byte	-45
	.byte	-41
	.byte	-1
	.byte	-82
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	39
	.byte	77
	.byte	-94
	.byte	-24
	.byte	-84
	.byte	-76
	.byte	-11
	.byte	-78
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	52
	.byte	-36
	.byte	-10
	.byte	-58
	.byte	-57
	.byte	-7
	.byte	-36
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	124
	.byte	74
	.byte	-65
	.byte	-13
	.byte	-73
	.byte	-63
	.byte	-6
	.byte	-35
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	24
	.byte	71
	.byte	-126
	.byte	-37
	.byte	-102
	.byte	-86
	.byte	-13
	.byte	-74
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-74
	.byte	-31
	.byte	-7
	.byte	-37
	.byte	-16
	.byte	-1
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-107
	.byte	-106
	.byte	-30
	.byte	-4
	.byte	-40
	.byte	-51
	.byte	-1
	.byte	-85
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	28
	.byte	108
	.byte	-86
	.byte	-14
	.byte	-73
	.byte	-62
	.byte	-2
	.byte	-33
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	81
	.byte	-26
	.byte	-4
	.byte	-52
	.byte	-53
	.byte	-1
	.byte	-64
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	123
	.byte	102
	.byte	-47
	.byte	-9
	.byte	-68
	.byte	-60
	.byte	-1
	.byte	-23
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	20
	.byte	95
	.byte	-103
	.byte	-13
	.byte	-92
	.byte	-83
	.byte	-1
	.byte	-53
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-34
	.byte	-8
	.byte	-1
	.byte	-40
	.byte	-43
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-88
	.byte	-81
	.byte	-10
	.byte	-4
	.byte	-21
	.byte	-51
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	47
	.byte	116
	.byte	-41
	.byte	-1
	.byte	-45
	.byte	-44
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	121
	.byte	-20
	.byte	-3
	.byte	-44
	.byte	-42
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-115
	.byte	84
	.byte	-43
	.byte	-4
	.byte	-55
	.byte	-54
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	42
	.byte	80
	.byte	-96
	.byte	-16
	.byte	-94
	.byte	-71
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-12
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-18
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.type	VP8_VFMWBITREADER_NORM, %object
	.size	VP8_VFMWBITREADER_NORM, 256
VP8_VFMWBITREADER_NORM:
	.byte	0
	.byte	7
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	vp8_mv_update_probs, %object
	.size	vp8_mv_update_probs, 38
vp8_mv_update_probs:
@ prob:
	.byte	-19
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-6
	.byte	-6
	.byte	-4
	.byte	-2
	.byte	-2
@ prob:
	.byte	-25
	.byte	-13
	.byte	-11
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-5
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-2
	.space	2
.LC0:
	.word	7
	.word	6
	.type	vp8_coef_update_probs, %object
	.size	vp8_coef_update_probs, 1056
vp8_coef_update_probs:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-80
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	-15
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-17
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-4
	.byte	-15
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-6
	.byte	-15
	.byte	-6
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-70
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-5
	.byte	-12
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-5
	.byte	-13
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-2
	.byte	-4
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-2
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-11
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	default_ymode_prob, %object
	.size	default_ymode_prob, 4
default_ymode_prob:
	.byte	112
	.byte	86
	.byte	-116
	.byte	37
	.type	default_uv_mode_prob, %object
	.size	default_uv_mode_prob, 3
default_uv_mode_prob:
	.byte	-94
	.byte	101
	.byte	-52
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
