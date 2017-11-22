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
	.file	"dnr_patch.c"
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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(dnr_patch)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_patch.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.o
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
	.global	GetSample
	.type	GetSample, %function
GetSample:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldmia	r0, {r2, ip}	@ pSmp,,
	ldr	r3, [r0, #8]	@ D.31048, pSmp_4(D)->Py
	cmp	r2, #1	@ D.31048,
	beq	.L3	@,
	cmp	r2, #2	@ D.31048,
	ldreq	r4, [r1, #16]	@ pRd, pDetPara_12(D)->pPicBufV
	bne	.L13	@,
.L5:
	ldr	r2, .L16	@ tmp164,
	ldr	r2, [r2]	@ D.31049, g_eVdmVersion
	cmp	r2, #1	@ D.31049,
	beq	.L14	@,
.L6:
	sub	r2, r2, #3	@ D.31051, D.31049,
	cmp	r2, #1	@ D.31051,
	bls	.L15	@,
.L8:
	mov	r1, r4	@, pRd
	add	r0, r0, #12	@, pSmp,
	mov	r2, #8	@,
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	memcpy	@
.L13:
	ldr	r2, .L16	@ tmp164,
	ldr	r4, [r1, #8]	@ pRd, pDetPara_12(D)->pPicBufY
	ldr	r2, [r2]	@ D.31049, g_eVdmVersion
	cmp	r2, #1	@ D.31049,
	bne	.L6	@,
.L14:
	ldr	lr, [r1, #40]	@ pDetPara_12(D)->IsFrameStored, pDetPara_12(D)->IsFrameStored
	mov	r6, ip, asr #4	@ Mbx, D.31048,
	and	r2, r3, #15	@ PixY, D.31048,
	and	ip, ip, #15	@ PixX, D.31048,
	cmp	lr, #0	@ pDetPara_12(D)->IsFrameStored,
	beq	.L7	@,
	ldr	r1, [r1, #36]	@ pDetPara_12(D)->MbHeight, pDetPara_12(D)->MbHeight
	mov	r3, r3, asr #4	@ Mby, D.31048,
	mov	r2, r2, asl #4	@ D.31048, PixY,
	mla	r1, r1, r6, r3	@ D.31048, pDetPara_12(D)->MbHeight, Mbx, Mby
	add	r2, r2, r1, lsl #8	@ D.31048, D.31048, D.31048,
	add	ip, r2, ip	@ D.31048, D.31048, PixX
	add	r4, r4, ip	@ pRd, pRd, D.31048
	b	.L8	@
.L15:
	mov	r6, r3, asr #31	@ tmp192, D.31048,
	ldr	r1, [r1, #32]	@ pDetPara_12(D)->MbWidth, pDetPara_12(D)->MbWidth
	bic	lr, ip, #255	@ j, D.31048,
	add	r2, r3, #15	@ tmp209, D.31048,
	mov	r7, r6, lsr #28	@ tmp193, tmp192,
	cmp	lr, #0	@ j,
	add	r6, r3, r7	@ tmp194, D.31048, tmp193
	add	r5, lr, #255	@ tmp203, j,
	mov	r1, r1, asl #4	@ ImgWidthInPixAln, pDetPara_12(D)->MbWidth,
	and	r6, r6, #15	@ tmp195, tmp194,
	movge	r5, lr	@ j, j
	add	r1, r1, #255	@ D.31048, ImgWidthInPixAln,
	cmp	r3, #0	@ D.31048,
	rsb	r6, r7, r6	@ D.31048, tmp193, tmp195
	bic	r1, r1, #255	@ D.31048, D.31048,
	uxtb	lr, ip	@ D.31050, D.31048
	mov	r5, r5, asr #8	@ D.31048, j,
	movge	r2, r3	@ D.31048, D.31048
	add	ip, lr, r6, lsl #8	@ D.31050, D.31050, D.31048,
	mov	r1, r1, asl #4	@ Stride, D.31048,
	add	ip, ip, r5, lsl #12	@ D.31050, D.31050, D.31048,
	mov	r2, r2, asr #4	@ D.31048, D.31048,
	mla	r3, r1, r2, ip	@ D.31050, Stride, D.31048, D.31050
	add	r4, r4, r3	@ pRd, pRd, D.31050
	b	.L8	@
.L3:
	ldr	r4, [r1, #12]	@ pRd, pDetPara_12(D)->pPicBufU
	b	.L5	@
.L7:
	ldr	lr, [r1, #36]	@ pDetPara_12(D)->MbHeight, pDetPara_12(D)->MbHeight
	add	r5, r3, #31	@ tmp183, D.31048,
	cmp	r3, #0	@ D.31048,
	mov	r2, r2, asl #4	@ D.31048, PixY,
	mul	r1, lr, r6	@ D.31048, pDetPara_12(D)->MbHeight, Mbx
	movlt	r3, r5	@ D.31048, tmp183
	mov	r3, r3, asr #5	@ Mby, D.31048,
	add	r1, r1, #1	@ D.31048, D.31048,
	add	r1, r1, r1, lsr #31	@ tmp179, D.31048, D.31048,
	add	r1, r3, r1, asr #1	@ D.31048, Mby, tmp179,
	add	r2, r2, r1, lsl #8	@ D.31048, D.31048, D.31048,
	add	ip, r2, ip	@ D.31048, D.31048, PixX
	add	r4, r4, ip	@ pRd, pRd, D.31048
	b	.L8	@
.L17:
	.align	2
.L16:
	.word	g_eVdmVersion
	.fnend
	.size	GetSample, .-GetSample
	.align	2
	.global	DetPic
	.type	DetPic, %function
DetPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	subs	r4, r0, #0	@ pDetPara, pDetPara
	.pad #36
	sub	sp, sp, #36	@,,
	beq	.L406	@,
	ldr	r5, [r4, #8]	@ pDetPara_180(D)->pPicBufY, pDetPara_180(D)->pPicBufY
	cmp	r5, #0	@ pDetPara_180(D)->pPicBufY,
	beq	.L407	@,
	ldr	r2, [r4, #24]	@ D.32144, pDetPara_180(D)->PicHeight
	cmp	r2, #1088	@ D.32144,
	ldrgt	r3, [r4, #20]	@ D.32144, pDetPara_180(D)->PicWidth
	bgt	.L23	@,
	clz	r1, r2	@ tmp959, D.32144
	ldr	r3, [r4, #20]	@ D.32144, pDetPara_180(D)->PicWidth
	mov	r1, r1, lsr #5	@ tmp959, tmp959,
	cmp	r3, #1920	@ D.32144,
	orrgt	r1, r1, #1	@,, tmp960, tmp959
	cmp	r3, #0	@ D.32144,
	orreq	r1, r1, #1	@,, tmp966, tmp960
	cmp	r1, #0	@ tmp966,
	bne	.L23	@,
	sub	r1, r3, #720	@ D.32147, D.32144,
	sub	r0, r2, #576	@ D.32147, D.32144,
	clz	r1, r1	@ D.32147, D.32147
	clz	r0, r0	@ D.32147, D.32147
	mov	r1, r1, lsr #5	@ D.32147, D.32147,
	mov	r0, r0, lsr #5	@ D.32147, D.32147,
	tst	r0, r1	@ D.32147, D.32147
	bne	.L408	@,
	sub	ip, r2, #480	@ D.32147, D.32144,
	clz	ip, ip	@ D.32147, D.32147
	mov	ip, ip, lsr #5	@ D.32147, D.32147,
	tst	ip, r1	@ D.32147, D.32147
	bne	.L409	@,
	sub	r1, r3, #704	@ D.32147, D.32144,
	clz	r1, r1	@ D.32147, D.32147
	mov	r1, r1, lsr #5	@ D.32147, D.32147,
	tst	r1, r0	@ D.32147, D.32147
	bne	.L410	@,
	tst	r1, ip	@ D.32147, D.32147
	bne	.L411	@,
	cmp	r2, #720	@ D.32144,
	cmpeq	r3, #1280	@, D.32144,
	beq	.L412	@,
	movw	r1, #1079	@ tmp1561,
	cmp	r2, r1	@ D.32144, tmp1561
	movle	r2, #0	@ tmp1566,
	movgt	r2, #1	@ tmp1566,
	cmp	r3, #1920	@ D.32144,
	movne	r2, #0	@ tmp1566,
	cmp	r2, #0	@ tmp1566,
	bne	.L413	@,
.L107:
	mov	r0, #0	@ D.32142,
	b	.L362	@
.L23:
	ldr	r1, .L414	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.32142,
.L362:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L406:
	ldr	r1, .L414+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.32142, pDetPara
	b	.L362	@
.L407:
	ldr	ip, [r4, #16]	@ pDetPara_180(D)->pPicBufV, pDetPara_180(D)->pPicBufV
	mov	r2, r5	@, pDetPara_180(D)->pPicBufY
	ldr	r3, [r4, #12]	@ pDetPara_180(D)->pPicBufU, pDetPara_180(D)->pPicBufU
	mov	r0, #1	@,
	ldr	r1, .L414+8	@,
	str	ip, [sp]	@ pDetPara_180(D)->pPicBufV,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.32142, pDetPara_180(D)->pPicBufY
	b	.L362	@
.L413:
	ldr	r9, .L414+12	@ ivtmp.1089,
	add	r5, sp, #12	@ tmp1602,,
	add	r6, sp, #24	@ ivtmp.1074,,
	add	r8, sp, #32	@ D.32149,,
	add	r7, r9, #100	@ D.32149, ivtmp.1089,
.L151:
	ldr	r2, [r9, #-7]	@ MEM[base: _983, offset: 4294967289B], MEM[base: _983, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _983, offset: 4294967285B], MEM[base: _983, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _983, offset: 4294967293B], MEM[base: _983, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _983, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _983, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _983, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.1074, ivtmp.1074
	mov	r1, r9	@ ivtmp.1065, ivtmp.1089
	mov	r0, #0	@ MisCnt,
.L150:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1162, offset: 0B]
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1163, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r2, r8	@ ivtmp.1074, D.32149
	bne	.L150	@,
	cmp	r0, #2	@ MisCnt,
	movgt	r0, #0	@ D.32147,
	movle	r0, #1	@ D.32147,
	cmp	r0, #0	@ D.32147,
	beq	.L107	@,
	add	r9, r9, #20	@ ivtmp.1089, ivtmp.1089,
	cmp	r9, r7	@ ivtmp.1089, D.32149
	bne	.L151	@,
	cmp	r0, #1	@ D.32147,
	moveq	r0, #7	@ D.32142,
	b	.L362	@
.L408:
	ldr	r9, .L414+16	@ ivtmp.500,
	add	r5, sp, #12	@ tmp1602,,
	add	r6, sp, #24	@ ivtmp.1074,,
	add	r7, sp, #32	@ D.32149,,
	add	r8, r9, #100	@ D.32149, ivtmp.500,
.L28:
	ldr	r2, [r9, #-7]	@ MEM[base: _541, offset: 4294967289B], MEM[base: _541, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _541, offset: 4294967285B], MEM[base: _541, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _541, offset: 4294967293B], MEM[base: _541, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _541, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _541, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _541, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.485, ivtmp.1074
	mov	r1, r9	@ ivtmp.476, ivtmp.500
	mov	r0, #0	@ MisCnt,
.L26:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1488, offset: 0B]
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1489, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.485, D.32149
	bne	.L26	@,
	cmp	r0, #2	@ MisCnt,
	movgt	r0, #0	@ D.32147,
	movle	r0, #1	@ D.32147,
	cmp	r0, #0	@ D.32147,
	beq	.L27	@,
	add	r9, r9, #20	@ ivtmp.500, ivtmp.500,
	cmp	r9, r8	@ ivtmp.500, D.32149
	bne	.L28	@,
	cmp	r0, #1	@ D.32147,
	beq	.L362	@,
.L27:
	ldr	r9, .L414+20	@ ivtmp.469,
	add	r8, r9, #100	@ D.32149, ivtmp.469,
.L32:
	ldr	r2, [r9, #-7]	@ MEM[base: _85, offset: 4294967289B], MEM[base: _85, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _85, offset: 4294967285B], MEM[base: _85, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _85, offset: 4294967293B], MEM[base: _85, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _85, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _85, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _85, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.454, ivtmp.1074
	mov	r0, r9	@ ivtmp.445, ivtmp.469
	mov	r1, #0	@ MisCnt,
.L30:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1496, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1497, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.454
	bne	.L30	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L31	@,
	add	r9, r9, #20	@ ivtmp.469, ivtmp.469,
	cmp	r9, r8	@ ivtmp.469, D.32149
	bne	.L32	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #2	@ D.32142,
	beq	.L362	@,
.L31:
	ldr	r9, .L414+24	@ ivtmp.438,
	add	r8, r9, #100	@ D.32149, ivtmp.438,
.L36:
	ldr	r2, [r9, #-7]	@ MEM[base: _567, offset: 4294967289B], MEM[base: _567, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _567, offset: 4294967285B], MEM[base: _567, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _567, offset: 4294967293B], MEM[base: _567, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _567, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _567, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _567, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.423, ivtmp.1074
	mov	r0, r9	@ ivtmp.414, ivtmp.438
	mov	r1, #0	@ MisCnt,
.L34:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1504, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1505, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.423
	bne	.L34	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L35	@,
	add	r9, r9, #20	@ ivtmp.438, ivtmp.438,
	cmp	r9, r8	@ ivtmp.438, D.32149
	bne	.L36	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #3	@ D.32142,
	beq	.L362	@,
.L35:
	ldr	r9, .L414+28	@ ivtmp.407,
	add	r8, r9, #100	@ D.32149, ivtmp.407,
.L40:
	ldr	r2, [r9, #-7]	@ MEM[base: _580, offset: 4294967289B], MEM[base: _580, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _580, offset: 4294967285B], MEM[base: _580, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _580, offset: 4294967293B], MEM[base: _580, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _580, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _580, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _580, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.392, ivtmp.1074
	mov	r0, r9	@ ivtmp.383, ivtmp.407
	mov	r1, #0	@ MisCnt,
.L38:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1512, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1513, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.392
	bne	.L38	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L39	@,
	add	r9, r9, #20	@ ivtmp.407, ivtmp.407,
	cmp	r9, r8	@ ivtmp.407, D.32149
	bne	.L40	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #8	@ D.32142,
	beq	.L362	@,
.L39:
	ldr	r9, .L414+32	@ ivtmp.376,
	add	r8, r9, #100	@ D.32149, ivtmp.376,
.L44:
	ldr	r2, [r9, #-7]	@ MEM[base: _593, offset: 4294967289B], MEM[base: _593, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _593, offset: 4294967285B], MEM[base: _593, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _593, offset: 4294967293B], MEM[base: _593, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _593, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _593, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _593, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.361, ivtmp.1074
	mov	r0, r9	@ ivtmp.352, ivtmp.376
	mov	r1, #0	@ MisCnt,
.L42:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1520, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1521, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.361
	bne	.L42	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L43	@,
	add	r9, r9, #20	@ ivtmp.376, ivtmp.376,
	cmp	r9, r8	@ ivtmp.376, D.32149
	bne	.L44	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #9	@ D.32142,
	beq	.L362	@,
.L43:
	ldr	r9, .L414+36	@ ivtmp.345,
	add	r8, r9, #100	@ D.32149, ivtmp.345,
.L48:
	ldr	r2, [r9, #-7]	@ MEM[base: _142, offset: 4294967289B], MEM[base: _142, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _142, offset: 4294967285B], MEM[base: _142, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _142, offset: 4294967293B], MEM[base: _142, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _142, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _142, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _142, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.330, ivtmp.1074
	mov	r0, r9	@ ivtmp.321, ivtmp.345
	mov	r1, #0	@ MisCnt,
.L46:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1528, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1529, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.330
	bne	.L46	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L47	@,
	add	r9, r9, #20	@ ivtmp.345, ivtmp.345,
	cmp	r9, r8	@ ivtmp.345, D.32149
	bne	.L48	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #11	@ D.32142,
	beq	.L362	@,
.L47:
	ldr	r9, .L414+40	@ ivtmp.314,
	add	r8, r9, #100	@ D.32149, ivtmp.314,
.L52:
	ldr	r2, [r9, #-7]	@ MEM[base: _619, offset: 4294967289B], MEM[base: _619, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _619, offset: 4294967285B], MEM[base: _619, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _619, offset: 4294967293B], MEM[base: _619, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _619, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _619, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _619, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.299, ivtmp.1074
	mov	r0, r9	@ ivtmp.290, ivtmp.314
	mov	r1, #0	@ MisCnt,
.L50:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1536, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1537, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.299
	bne	.L50	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L51	@,
	add	r9, r9, #20	@ ivtmp.314, ivtmp.314,
	cmp	r9, r8	@ ivtmp.314, D.32149
	bne	.L52	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #12	@ D.32142,
	beq	.L362	@,
.L51:
	ldr	r8, .L414+44	@ ivtmp.283,
	add	r9, r8, #100	@ D.32149, ivtmp.283,
.L56:
	ldr	r2, [r8, #-7]	@ MEM[base: _632, offset: 4294967289B], MEM[base: _632, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _632, offset: 4294967285B], MEM[base: _632, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r8, #-3]	@ MEM[base: _632, offset: 4294967293B], MEM[base: _632, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _632, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _632, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _632, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.268, ivtmp.1074
	mov	r0, r8	@ ivtmp.259, ivtmp.283
	mov	r1, #0	@ MisCnt,
.L54:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1544, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1545, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.268
	bne	.L54	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L55	@,
	add	r8, r8, #20	@ ivtmp.283, ivtmp.283,
	cmp	r8, r9	@ ivtmp.283, D.32149
	bne	.L56	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #13	@ D.32142,
	beq	.L362	@,
.L55:
	ldr	r8, .L414+48	@ ivtmp.252,
	add	r9, r8, #100	@ D.32149, ivtmp.252,
.L59:
	ldr	r2, [r8, #-7]	@ MEM[base: _527, offset: 4294967289B], MEM[base: _527, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _527, offset: 4294967285B], MEM[base: _527, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r8, #-3]	@ MEM[base: _527, offset: 4294967293B], MEM[base: _527, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _527, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _527, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _527, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.237, ivtmp.1074
	mov	r0, r8	@ ivtmp.228, ivtmp.252
	mov	r1, #0	@ MisCnt,
.L57:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1552, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1553, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.237
	bne	.L57	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L58	@,
	add	r8, r8, #20	@ ivtmp.252, ivtmp.252,
	cmp	r8, r9	@ ivtmp.252, D.32149
	bne	.L59	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #14	@ D.32142,
	beq	.L362	@,
.L58:
	ldr	r8, .L414+52	@ ivtmp.221,
	add	r9, r8, #100	@ D.32149, ivtmp.221,
.L62:
	ldr	r2, [r8, #-7]	@ MEM[base: _332, offset: 4294967289B], MEM[base: _332, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _332, offset: 4294967285B], MEM[base: _332, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r8, #-3]	@ MEM[base: _332, offset: 4294967293B], MEM[base: _332, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _332, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _332, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _332, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.206, ivtmp.1074
	mov	r0, r8	@ ivtmp.197, ivtmp.221
	mov	r2, #0	@ MisCnt,
.L60:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1560, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1561, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r2, r2, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.32149, ivtmp.206
	bne	.L60	@,
	cmp	r2, #2	@ MisCnt,
	movgt	r2, #0	@ D.32147,
	movle	r2, #1	@ D.32147,
	cmp	r2, #0	@ D.32147,
	beq	.L61	@,
	add	r8, r8, #20	@ ivtmp.221, ivtmp.221,
	cmp	r8, r9	@ ivtmp.221, D.32149
	bne	.L62	@,
	cmp	r2, #1	@ D.32147,
	moveq	r0, #15	@ D.32142,
	beq	.L362	@,
.L61:
	ldr	r8, .L414+56	@ ivtmp.190,
	add	r9, r8, #100	@ D.32149, ivtmp.190,
.L65:
	ldr	r3, [r8, #-3]	@ MEM[base: _252, offset: 4294967293B], MEM[base: _252, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _252, offset: 4294967285B], MEM[base: _252, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r2, [r8, #-7]	@ MEM[base: _252, offset: 4294967289B], MEM[base: _252, offset: 4294967289B]
	str	r3, [sp, #20]	@ MEM[base: _252, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #12]	@ MEM[base: _252, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #16]	@ MEM[base: _252, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.175, ivtmp.1074
	mov	r0, r8	@ ivtmp.166, ivtmp.190
	mov	r3, #0	@ MisCnt,
.L63:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1568, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1569, offset: 0B]
	rsb	r2, ip, r2	@ D.32144, D.32146, D.32144
	cmp	r2, #0	@ D.32144,
	rsblt	r2, r2, #0	@ D.32144, D.32144,
	cmp	r2, #2	@ D.32144,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.32149, ivtmp.175
	bne	.L63	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.32147,
	movle	r3, #1	@ D.32147,
	cmp	r3, #0	@ D.32147,
	beq	.L64	@,
	add	r8, r8, #20	@ ivtmp.190, ivtmp.190,
	cmp	r8, r9	@ ivtmp.190, D.32149
	bne	.L65	@,
	cmp	r3, #1	@ D.32147,
	moveq	r0, #16	@ D.32142,
	beq	.L362	@,
.L64:
	ldr	r8, .L414+60	@ ivtmp.159,
	add	r9, r8, #100	@ D.32149, ivtmp.159,
.L68:
	ldr	r3, [r8, #-3]	@ MEM[base: _98, offset: 4294967293B], MEM[base: _98, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _98, offset: 4294967285B], MEM[base: _98, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r2, [r8, #-7]	@ MEM[base: _98, offset: 4294967289B], MEM[base: _98, offset: 4294967289B]
	str	r3, [sp, #20]	@ MEM[base: _98, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #12]	@ MEM[base: _98, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #16]	@ MEM[base: _98, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.144, ivtmp.1074
	mov	r0, r8	@ ivtmp.135, ivtmp.159
	mov	r3, #0	@ MisCnt,
.L66:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1576, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1577, offset: 0B]
	rsb	r2, ip, r2	@ D.32144, D.32146, D.32144
	cmp	r2, #0	@ D.32144,
	rsblt	r2, r2, #0	@ D.32144, D.32144,
	cmp	r2, #2	@ D.32144,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.32149, ivtmp.144
	bne	.L66	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.32147,
	movle	r3, #1	@ D.32147,
	cmp	r3, #0	@ D.32147,
	beq	.L67	@,
	add	r8, r8, #20	@ ivtmp.159, ivtmp.159,
	cmp	r8, r9	@ ivtmp.159, D.32149
	bne	.L68	@,
	cmp	r3, #1	@ D.32147,
	moveq	r0, #17	@ D.32142,
	beq	.L362	@,
.L67:
	ldr	r6, .L414+64	@ ivtmp.125,
	add	r7, r6, #100	@ D.32149, ivtmp.125,
.L71:
	ldr	r2, [r6, #4]	@ MEM[base: _1585, offset: 4B], MEM[base: _1585, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1585, offset: 8B], MEM[base: _1585, offset: 8B]
	mov	r0, r5	@, tmp1602
	ldr	ip, [r6]	@ MEM[base: _1585, offset: 0B], MEM[base: _1585, offset: 0B]
	str	r2, [sp, #16]	@ MEM[base: _1585, offset: 4B], SmpPat.Px
	str	r3, [sp, #20]	@ MEM[base: _1585, offset: 8B], SmpPat.Py
	str	ip, [sp, #12]	@ MEM[base: _1585, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L69:
	add	r1, r6, r2	@ D.32145, ivtmp.125, i
	add	r0, r5, r2	@ D.32150, tmp1602, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _320, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _1587, offset: 12B]
	rsb	r1, r0, r1	@ D.32144, D.32144, D.32144
	cmp	r1, #0	@ D.32144,
	rsblt	r1, r1, #0	@ D.32144, D.32144,
	cmp	r1, #2	@ D.32144,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L69	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.32147,
	movle	r3, #1	@ D.32147,
	cmp	r3, #0	@ D.32147,
	beq	.L70	@,
	add	r6, r6, #20	@ ivtmp.125, ivtmp.125,
	cmp	r6, r7	@ ivtmp.125, D.32149
	bne	.L71	@,
	cmp	r3, #1	@ D.32147,
	moveq	r0, #18	@ D.32142,
	beq	.L362	@,
.L70:
	ldr	r6, .L414+68	@ ivtmp.95,
	add	r7, r6, #100	@ D.32149, ivtmp.95,
.L74:
	ldr	r2, [r6, #4]	@ MEM[base: _1591, offset: 4B], MEM[base: _1591, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1591, offset: 8B], MEM[base: _1591, offset: 8B]
	mov	r0, r5	@, tmp1602
	ldr	ip, [r6]	@ MEM[base: _1591, offset: 0B], MEM[base: _1591, offset: 0B]
	str	r2, [sp, #16]	@ MEM[base: _1591, offset: 4B], SmpPat.Px
	str	r3, [sp, #20]	@ MEM[base: _1591, offset: 8B], SmpPat.Py
	str	ip, [sp, #12]	@ MEM[base: _1591, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L72:
	add	r1, r6, r2	@ D.32145, ivtmp.95, i
	add	r0, r5, r2	@ D.32150, tmp1602, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _1194, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _1593, offset: 12B]
	rsb	r1, r0, r1	@ D.32144, D.32144, D.32144
	cmp	r1, #0	@ D.32144,
	rsblt	r1, r1, #0	@ D.32144, D.32144,
	cmp	r1, #2	@ D.32144,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L72	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.32147,
	movle	r3, #1	@ D.32147,
	cmp	r3, #0	@ D.32147,
	beq	.L73	@,
	add	r6, r6, #20	@ ivtmp.95, ivtmp.95,
	cmp	r6, r7	@ ivtmp.95, D.32149
	bne	.L74	@,
	cmp	r3, #1	@ D.32147,
	moveq	r0, #19	@ D.32142,
	beq	.L362	@,
.L73:
	ldr	r6, .L414+72	@ ivtmp.65,
	add	r7, r6, #100	@ D.32149, ivtmp.65,
.L77:
	ldr	r2, [r6, #4]	@ MEM[base: _1597, offset: 4B], MEM[base: _1597, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1597, offset: 8B], MEM[base: _1597, offset: 8B]
	mov	r0, r5	@, tmp1602
	ldr	ip, [r6]	@ MEM[base: _1597, offset: 0B], MEM[base: _1597, offset: 0B]
	str	r2, [sp, #16]	@ MEM[base: _1597, offset: 4B], SmpPat.Px
	str	r3, [sp, #20]	@ MEM[base: _1597, offset: 8B], SmpPat.Py
	str	ip, [sp, #12]	@ MEM[base: _1597, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L75:
	add	r1, r6, r2	@ D.32145, ivtmp.65, i
	add	r0, r5, r2	@ D.32150, tmp1602, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _907, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _1599, offset: 12B]
	rsb	r1, r0, r1	@ D.32144, D.32144, D.32144
	cmp	r1, #0	@ D.32144,
	rsblt	r1, r1, #0	@ D.32144, D.32144,
	cmp	r1, #2	@ D.32144,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L75	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.32147,
	movle	r3, #1	@ D.32147,
	cmp	r3, #0	@ D.32147,
	beq	.L76	@,
	add	r6, r6, #20	@ ivtmp.65, ivtmp.65,
	cmp	r6, r7	@ ivtmp.65, D.32149
	bne	.L77	@,
	cmp	r3, #1	@ D.32147,
	moveq	r0, #26	@ D.32142,
	beq	.L362	@,
.L76:
	ldr	r6, .L414+76	@ ivtmp.35,
	add	r7, r6, #100	@ D.32149, ivtmp.35,
.L80:
	ldr	r2, [r6, #4]	@ MEM[base: _1603, offset: 4B], MEM[base: _1603, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1603, offset: 8B], MEM[base: _1603, offset: 8B]
	mov	r0, r5	@, tmp1602
	ldr	ip, [r6]	@ MEM[base: _1603, offset: 0B], MEM[base: _1603, offset: 0B]
	str	r2, [sp, #16]	@ MEM[base: _1603, offset: 4B], SmpPat.Px
	str	r3, [sp, #20]	@ MEM[base: _1603, offset: 8B], SmpPat.Py
	str	ip, [sp, #12]	@ MEM[base: _1603, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L78:
	add	r1, r6, r2	@ D.32145, ivtmp.35, i
	add	r0, r5, r2	@ D.32150, tmp1602, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _1607, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.32144, MEM[base: _1605, offset: 12B]
	rsb	r1, r0, r1	@ D.32144, D.32144, D.32144
	cmp	r1, #0	@ D.32144,
	rsblt	r1, r1, #0	@ D.32144, D.32144,
	cmp	r1, #2	@ D.32144,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L78	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.32147,
	movle	r3, #1	@ D.32147,
	cmp	r3, #0	@ D.32147,
	beq	.L107	@,
	add	r6, r6, #20	@ ivtmp.35, ivtmp.35,
	cmp	r6, r7	@ ivtmp.35, D.32149
	bne	.L80	@,
	cmp	r3, #1	@ D.32147,
	movne	r0, r3	@ D.32142, D.32147
	moveq	r0, #30	@ D.32142,
	b	.L362	@
.L409:
	ldr	r9, .L414+80	@ ivtmp.717,
	add	r5, sp, #12	@ tmp1602,,
	add	r6, sp, #24	@ ivtmp.1074,,
	add	r7, sp, #32	@ D.32149,,
	add	r8, r9, #100	@ D.32149, ivtmp.717,
.L84:
	ldr	r2, [r9, #-7]	@ MEM[base: _749, offset: 4294967289B], MEM[base: _749, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _749, offset: 4294967285B], MEM[base: _749, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _749, offset: 4294967293B], MEM[base: _749, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _749, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _749, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _749, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.702, ivtmp.1074
	mov	r0, r9	@ ivtmp.693, ivtmp.717
	mov	r1, #0	@ MisCnt,
.L82:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1432, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1433, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.702, D.32149
	bne	.L82	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L83	@,
	add	r9, r9, #20	@ ivtmp.717, ivtmp.717,
	cmp	r9, r8	@ ivtmp.717, D.32149
	bne	.L84	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #22	@ D.32142,
	beq	.L362	@,
.L83:
	ldr	r9, .L414+84	@ ivtmp.686,
	add	r8, r9, #100	@ D.32149, ivtmp.686,
.L88:
	ldr	r2, [r9, #-7]	@ MEM[base: _446, offset: 4294967289B], MEM[base: _446, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _446, offset: 4294967285B], MEM[base: _446, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _446, offset: 4294967293B], MEM[base: _446, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _446, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _446, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _446, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.671, ivtmp.1074
	mov	r0, r9	@ ivtmp.662, ivtmp.686
	mov	r1, #0	@ MisCnt,
.L86:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1440, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1441, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.671
	bne	.L86	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L87	@,
	add	r9, r9, #20	@ ivtmp.686, ivtmp.686,
	cmp	r9, r8	@ ivtmp.686, D.32149
	bne	.L88	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #20	@ D.32142,
	beq	.L362	@,
.L87:
	ldr	r9, .L414+88	@ ivtmp.655,
	add	r8, r9, #100	@ D.32149, ivtmp.655,
.L92:
	ldr	r2, [r9, #-7]	@ MEM[base: _775, offset: 4294967289B], MEM[base: _775, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _775, offset: 4294967285B], MEM[base: _775, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _775, offset: 4294967293B], MEM[base: _775, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _775, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _775, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _775, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.640, ivtmp.1074
	mov	r0, r9	@ ivtmp.631, ivtmp.655
	mov	r1, #0	@ MisCnt,
.L90:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1448, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1449, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.640
	bne	.L90	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L91	@,
	add	r9, r9, #20	@ ivtmp.655, ivtmp.655,
	cmp	r9, r8	@ ivtmp.655, D.32149
	bne	.L92	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #21	@ D.32142,
	beq	.L362	@,
.L91:
	ldr	r9, .L414+92	@ ivtmp.624,
	add	r8, r9, #100	@ D.32149, ivtmp.624,
.L96:
	ldr	r2, [r9, #-7]	@ MEM[base: _788, offset: 4294967289B], MEM[base: _788, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _788, offset: 4294967285B], MEM[base: _788, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _788, offset: 4294967293B], MEM[base: _788, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _788, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _788, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _788, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.609, ivtmp.1074
	mov	r0, r9	@ ivtmp.600, ivtmp.624
	mov	r1, #0	@ MisCnt,
.L94:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1456, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1457, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.609
	bne	.L94	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L95	@,
	add	r9, r9, #20	@ ivtmp.624, ivtmp.624,
	cmp	r9, r8	@ ivtmp.624, D.32149
	bne	.L96	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #25	@ D.32142,
	beq	.L362	@,
.L95:
	ldr	r9, .L414+96	@ ivtmp.593,
	add	r8, r9, #100	@ D.32149, ivtmp.593,
.L100:
	ldr	r2, [r9, #-7]	@ MEM[base: _160, offset: 4294967289B], MEM[base: _160, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _160, offset: 4294967285B], MEM[base: _160, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _160, offset: 4294967293B], MEM[base: _160, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _160, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _160, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _160, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.578, ivtmp.1074
	mov	r0, r9	@ ivtmp.569, ivtmp.593
	mov	r1, #0	@ MisCnt,
.L98:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1464, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1465, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.578
	bne	.L98	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L99	@,
	add	r9, r9, #20	@ ivtmp.593, ivtmp.593,
	cmp	r9, r8	@ ivtmp.593, D.32149
	bne	.L100	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #27	@ D.32142,
	beq	.L362	@,
.L99:
	ldr	r9, .L414+100	@ ivtmp.562,
	add	r8, r9, #100	@ D.32149, ivtmp.562,
.L104:
	ldr	r2, [r9, #-7]	@ MEM[base: _814, offset: 4294967289B], MEM[base: _814, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _814, offset: 4294967285B], MEM[base: _814, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _814, offset: 4294967293B], MEM[base: _814, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _814, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _814, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _814, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.547, ivtmp.1074
	mov	r0, r9	@ ivtmp.538, ivtmp.562
	mov	r1, #0	@ MisCnt,
.L102:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1472, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1473, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.547
	bne	.L102	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L103	@,
	add	r9, r9, #20	@ ivtmp.562, ivtmp.562,
	cmp	r9, r8	@ ivtmp.562, D.32149
	bne	.L104	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #28	@ D.32142,
	beq	.L362	@,
.L103:
	ldr	r8, .L414+104	@ ivtmp.531,
	add	r9, r8, #100	@ D.32149, ivtmp.531,
.L108:
	ldr	r2, [r8, #-7]	@ MEM[base: _827, offset: 4294967289B], MEM[base: _827, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _827, offset: 4294967285B], MEM[base: _827, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r8, #-3]	@ MEM[base: _827, offset: 4294967293B], MEM[base: _827, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _827, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _827, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _827, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.516, ivtmp.1074
	mov	r0, r8	@ ivtmp.507, ivtmp.531
	mov	r1, #0	@ MisCnt,
.L106:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1480, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1481, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.516
	bne	.L106	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L107	@,
	add	r8, r8, #20	@ ivtmp.531, ivtmp.531,
	cmp	r8, r9	@ ivtmp.531, D.32149
	bne	.L108	@,
	cmp	r1, #1	@ D.32147,
	movne	r0, r1	@ D.32142, D.32147
	moveq	r0, #29	@ D.32142,
	b	.L362	@
.L410:
	ldr	r9, .L414+108	@ ivtmp.779,
	add	r5, sp, #12	@ tmp1602,,
	add	r6, sp, #24	@ ivtmp.1074,,
	add	r7, sp, #32	@ D.32149,,
	add	r8, r9, #100	@ D.32149, ivtmp.779,
.L112:
	ldr	r2, [r9, #-7]	@ MEM[base: _840, offset: 4294967289B], MEM[base: _840, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _840, offset: 4294967285B], MEM[base: _840, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _840, offset: 4294967293B], MEM[base: _840, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _840, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _840, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _840, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.764, ivtmp.1074
	mov	r0, r9	@ ivtmp.755, ivtmp.779
	mov	r1, #0	@ MisCnt,
.L110:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1416, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1417, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.764, D.32149
	bne	.L110	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L111	@,
	add	r9, r9, #20	@ ivtmp.779, ivtmp.779,
	cmp	r9, r8	@ ivtmp.779, D.32149
	bne	.L112	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #24	@ D.32142,
	beq	.L362	@,
.L111:
	ldr	r9, .L414+112	@ ivtmp.748,
	add	r8, r9, #120	@ D.32149, ivtmp.748,
.L115:
	ldr	r2, [r9, #-7]	@ MEM[base: _72, offset: 4294967289B], MEM[base: _72, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _72, offset: 4294967285B], MEM[base: _72, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _72, offset: 4294967293B], MEM[base: _72, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _72, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _72, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _72, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.733, ivtmp.1074
	mov	r1, r9	@ ivtmp.724, ivtmp.748
	mov	r0, #0	@ MisCnt,
.L114:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1424, offset: 0B]
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1425, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.733
	bne	.L114	@,
	cmp	r0, #2	@ MisCnt,
	movgt	r0, #0	@ D.32147,
	movle	r0, #1	@ D.32147,
	cmp	r0, #0	@ D.32147,
	beq	.L107	@,
	add	r9, r9, #20	@ ivtmp.748, ivtmp.748,
	cmp	r9, r8	@ ivtmp.748, D.32149
	bne	.L115	@,
	cmp	r0, #1	@ D.32147,
	moveq	r0, #10	@ D.32142,
	b	.L362	@
.L415:
	.align	2
.L414:
	.word	.LC2
	.word	.LC0
	.word	.LC1
	.word	.LANCHOR0+3391
	.word	.LANCHOR0+11
	.word	.LANCHOR0+111
	.word	.LANCHOR0+211
	.word	.LANCHOR0+311
	.word	.LANCHOR0+411
	.word	.LANCHOR0+511
	.word	.LANCHOR0+611
	.word	.LANCHOR0+711
	.word	.LANCHOR0+811
	.word	.LANCHOR0+911
	.word	.LANCHOR0+1011
	.word	.LANCHOR0+1111
	.word	.LANCHOR0+1200
	.word	.LANCHOR0+1300
	.word	.LANCHOR0+1400
	.word	.LANCHOR0+1500
	.word	.LANCHOR0+1611
	.word	.LANCHOR0+1711
	.word	.LANCHOR0+1811
	.word	.LANCHOR0+1911
	.word	.LANCHOR0+2011
	.word	.LANCHOR0+2111
	.word	.LANCHOR0+2211
	.word	.LANCHOR0+2311
	.word	.LANCHOR0+2411
	.word	.LANCHOR0+2531
	.word	.LANCHOR0+2631
	.word	.LANCHOR0+2691
	.word	.LANCHOR0+2791
	.word	.LANCHOR0+2891
	.word	.LANCHOR0+2991
	.word	.LANCHOR0+3091
	.word	.LANCHOR0+3191
	.word	.LANCHOR0+3291
.L411:
	ldr	r9, .L414+116	@ ivtmp.996,
	add	r5, sp, #12	@ tmp1602,,
	add	r6, sp, #24	@ ivtmp.1074,,
	add	r7, sp, #32	@ D.32149,,
	add	r8, r9, #60	@ D.32149, ivtmp.996,
.L119:
	ldr	r2, [r9, #-7]	@ MEM[base: _866, offset: 4294967289B], MEM[base: _866, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _866, offset: 4294967285B], MEM[base: _866, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _866, offset: 4294967293B], MEM[base: _866, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _866, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _866, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _866, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.981, ivtmp.1074
	mov	r0, r9	@ ivtmp.972, ivtmp.996
	mov	r1, #0	@ MisCnt,
.L117:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1202, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1203, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.981, D.32149
	bne	.L117	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L118	@,
	add	r9, r9, #20	@ ivtmp.996, ivtmp.996,
	cmp	r9, r8	@ ivtmp.996, D.32149
	bne	.L119	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #23	@ D.32142,
	beq	.L362	@,
.L118:
	ldr	r9, .L414+120	@ ivtmp.965,
	add	r8, r9, #60	@ D.32149, ivtmp.965,
.L123:
	ldr	r2, [r9, #-7]	@ MEM[base: _63, offset: 4294967289B], MEM[base: _63, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _63, offset: 4294967285B], MEM[base: _63, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _63, offset: 4294967293B], MEM[base: _63, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _63, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _63, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _63, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.950, ivtmp.1074
	mov	r0, r9	@ ivtmp.941, ivtmp.965
	mov	r1, #0	@ MisCnt,
.L121:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1211, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1212, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.950
	bne	.L121	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L122	@,
	add	r9, r9, #20	@ ivtmp.965, ivtmp.965,
	cmp	r9, r8	@ ivtmp.965, D.32149
	bne	.L123	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #4	@ D.32142,
	beq	.L362	@,
.L122:
	ldr	r9, .L414+124	@ ivtmp.934,
	add	r8, r9, #100	@ D.32149, ivtmp.934,
.L127:
	ldr	r2, [r9, #-7]	@ MEM[base: _59, offset: 4294967289B], MEM[base: _59, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _59, offset: 4294967285B], MEM[base: _59, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _59, offset: 4294967293B], MEM[base: _59, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _59, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _59, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _59, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.919, ivtmp.1074
	mov	r0, r9	@ ivtmp.910, ivtmp.934
	mov	r1, #0	@ MisCnt,
.L125:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1227, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1229, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.919
	bne	.L125	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L126	@,
	add	r9, r9, #20	@ ivtmp.934, ivtmp.934,
	cmp	r9, r8	@ ivtmp.934, D.32149
	bne	.L127	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #31	@ D.32142,
	beq	.L362	@,
.L126:
	ldr	r9, .L414+128	@ ivtmp.903,
	add	r8, r9, #100	@ D.32149, ivtmp.903,
.L131:
	ldr	r2, [r9, #-7]	@ MEM[base: _905, offset: 4294967289B], MEM[base: _905, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _905, offset: 4294967285B], MEM[base: _905, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _905, offset: 4294967293B], MEM[base: _905, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _905, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _905, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _905, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.888, ivtmp.1074
	mov	r0, r9	@ ivtmp.879, ivtmp.903
	mov	r1, #0	@ MisCnt,
.L129:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1384, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1385, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.888
	bne	.L129	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L130	@,
	add	r9, r9, #20	@ ivtmp.903, ivtmp.903,
	cmp	r9, r8	@ ivtmp.903, D.32149
	bne	.L131	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #32	@ D.32142,
	beq	.L362	@,
.L130:
	ldr	r9, .L414+132	@ ivtmp.872,
	add	r8, r9, #100	@ D.32149, ivtmp.872,
.L135:
	ldr	r2, [r9, #-7]	@ MEM[base: _918, offset: 4294967289B], MEM[base: _918, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _918, offset: 4294967285B], MEM[base: _918, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _918, offset: 4294967293B], MEM[base: _918, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _918, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _918, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _918, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.857, ivtmp.1074
	mov	r0, r9	@ ivtmp.848, ivtmp.872
	mov	r1, #0	@ MisCnt,
.L133:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1392, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1393, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.857
	bne	.L133	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L134	@,
	add	r9, r9, #20	@ ivtmp.872, ivtmp.872,
	cmp	r9, r8	@ ivtmp.872, D.32149
	bne	.L135	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #33	@ D.32142,
	beq	.L362	@,
.L134:
	ldr	r9, .L414+136	@ ivtmp.841,
	add	r8, r9, #100	@ D.32149, ivtmp.841,
.L139:
	ldr	r2, [r9, #-7]	@ MEM[base: _51, offset: 4294967289B], MEM[base: _51, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _51, offset: 4294967285B], MEM[base: _51, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _51, offset: 4294967293B], MEM[base: _51, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _51, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _51, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _51, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.826, ivtmp.1074
	mov	r0, r9	@ ivtmp.817, ivtmp.841
	mov	r1, #0	@ MisCnt,
.L137:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1400, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1401, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.826
	bne	.L137	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L138	@,
	add	r9, r9, #20	@ ivtmp.841, ivtmp.841,
	cmp	r9, r8	@ ivtmp.841, D.32149
	bne	.L139	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #34	@ D.32142,
	beq	.L362	@,
.L138:
	ldr	r8, .L414+140	@ ivtmp.810,
	add	r9, r8, #100	@ D.32149, ivtmp.810,
.L142:
	ldr	r2, [r8, #-7]	@ MEM[base: _81, offset: 4294967289B], MEM[base: _81, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _81, offset: 4294967285B], MEM[base: _81, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r8, #-3]	@ MEM[base: _81, offset: 4294967293B], MEM[base: _81, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _81, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _81, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _81, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.795, ivtmp.1074
	mov	r0, r8	@ ivtmp.786, ivtmp.810
	mov	r1, #0	@ MisCnt,
.L141:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1408, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1409, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.795
	bne	.L141	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L107	@,
	add	r8, r8, #20	@ ivtmp.810, ivtmp.810,
	cmp	r8, r9	@ ivtmp.810, D.32149
	bne	.L142	@,
	cmp	r1, #1	@ D.32147,
	movne	r0, r1	@ D.32142, D.32147
	moveq	r0, #35	@ D.32142,
	b	.L362	@
.L412:
	ldr	r9, .L414+144	@ ivtmp.1058,
	add	r5, sp, #12	@ tmp1602,,
	add	r6, sp, #24	@ ivtmp.1074,,
	add	r7, sp, #32	@ D.32149,,
	add	r8, r9, #100	@ D.32149, ivtmp.1058,
.L146:
	ldr	r2, [r9, #-7]	@ MEM[base: _957, offset: 4294967289B], MEM[base: _957, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _957, offset: 4294967285B], MEM[base: _957, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _957, offset: 4294967293B], MEM[base: _957, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _957, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _957, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _957, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.1043, ivtmp.1074
	mov	r0, r9	@ ivtmp.1034, ivtmp.1058
	mov	r1, #0	@ MisCnt,
.L144:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1171, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1172, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.1043, D.32149
	bne	.L144	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.32147,
	movle	r1, #1	@ D.32147,
	cmp	r1, #0	@ D.32147,
	beq	.L145	@,
	add	r9, r9, #20	@ ivtmp.1058, ivtmp.1058,
	cmp	r9, r8	@ ivtmp.1058, D.32149
	bne	.L146	@,
	cmp	r1, #1	@ D.32147,
	moveq	r0, #5	@ D.32142,
	beq	.L362	@,
.L145:
	ldr	r9, .L414+148	@ ivtmp.1027,
	add	r8, r9, #100	@ D.32149, ivtmp.1027,
.L149:
	ldr	r2, [r9, #-7]	@ MEM[base: _970, offset: 4294967289B], MEM[base: _970, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _970, offset: 4294967285B], MEM[base: _970, offset: 4294967285B]
	mov	r0, r5	@, tmp1602
	ldr	r3, [r9, #-3]	@ MEM[base: _970, offset: 4294967293B], MEM[base: _970, offset: 4294967293B]
	str	r2, [sp, #16]	@ MEM[base: _970, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #12]	@ MEM[base: _970, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #20]	@ MEM[base: _970, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.1012, ivtmp.1074
	mov	r1, r9	@ ivtmp.1003, ivtmp.1027
	mov	r0, #0	@ MisCnt,
.L148:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.32146, MEM[base: _1179, offset: 0B]
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2	@ D.32144, MEM[base: _1180, offset: 0B]
	rsb	r3, ip, r3	@ D.32144, D.32146, D.32144
	cmp	r3, #0	@ D.32144,
	rsblt	r3, r3, #0	@ D.32144, D.32144,
	cmp	r3, #2	@ D.32144,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.32149, ivtmp.1012
	bne	.L148	@,
	cmp	r0, #2	@ MisCnt,
	movgt	r0, #0	@ D.32147,
	movle	r0, #1	@ D.32147,
	cmp	r0, #0	@ D.32147,
	beq	.L107	@,
	add	r9, r9, #20	@ ivtmp.1027, ivtmp.1027,
	cmp	r9, r8	@ ivtmp.1027, D.32149
	bne	.L149	@,
	cmp	r0, #1	@ D.32147,
	moveq	r0, #6	@ D.32142,
	b	.L362	@
	.fnend
	.size	DetPic, .-DetPic
	.align	2
	.global	ComparePattern
	.type	ComparePattern, %function
ComparePattern:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r1, #11	@ ivtmp.1106, pSmp,
	add	r2, r0, #11	@ ivtmp.1098, pRef,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	add	lr, r0, #19	@ D.32181, pRef,
	mov	r0, #0	@ MisCnt,
.L417:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2	@ D.32178, MEM[base: _28, offset: 0B]
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2	@ D.32178, MEM[base: _27, offset: 0B]
	rsb	r3, ip, r3	@ D.32178, D.32178, D.32178
	cmp	r3, #0	@ D.32178,
	rsblt	r3, r3, #0	@ D.32178, D.32178,
	cmp	r3, #2	@ D.32178,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r2, lr	@ ivtmp.1098, D.32181
	bne	.L417	@,
	cmp	r0, #2	@ MisCnt,
	movgt	r0, #0	@,
	movle	r0, #1	@,
	ldr	pc, [sp], #4	@
	.fnend
	.size	ComparePattern, .-ComparePattern
	.global	tab_PAT_M480I_TSG130A_MATRIX_10MBPS
	.global	tab_PAT_M480I_NTC7_COMPOSITE
	.global	tab_PAT_M480I_NTC7_COMBINATION
	.global	tab_PAT_M480I_75_COLORBARS
	.global	tab_PAT_M480I_50_FLAT_FIELD
	.global	tab_PAT_M480P_SHALLOW_PAL
	.global	tab_PAT_M480P_CBWFRC_NTSC
	.global	tab_PAT_M480P_SHALLOW_NTSC
	.global	tab_PAT_M480P_NTSC
	.global	tab_PAT_M576I_PAL
	.global	tab_PAT_M480I_NTSC
	.global	tab_M576i_bowtie
	.global	tab_M576i_xiebo
	.global	tab_M576i_5taijie
	.global	tab_M576i_duoboqun
	.global	tab_M576i_redfield
	.global	tab_M576i_pulsebar
	.global	tab_CBAR576_100
	.global	tab_CBAR576_75_B
	.global	tab_matrix625
	.global	tab_ccir3311
	.global	tab_CBAR576_75
	.global	tab_M1080
	.global	tab_M720p59
	.global	tab_M720p50
	.global	tab_M480p16x9
	.global	tab_M576i
	.global	tab_ccitt18
	.global	tab_ccitt033
	.global	tab_ccitt033_ntsc
	.global	tab_its1_ntsc
	.global	tab_cbars100
	.global	tab_codec43
	.global	tab_matrx525
	.global	tab_cbar704_576
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	tab_ccitt033, %object
	.size	tab_ccitt033, 100
tab_ccitt033:
@ Comp:
	.word	0
@ Px:
	.word	216
@ Py:
	.word	16
@ Pix:
	.byte	16
	.byte	57
	.byte	-89
	.byte	-22
	.byte	-89
	.byte	57
	.byte	16
	.byte	15
@ Comp:
	.word	0
@ Px:
	.word	280
@ Py:
	.word	16
@ Pix:
	.byte	32
	.byte	37
	.byte	43
	.byte	49
	.byte	55
	.byte	60
	.byte	67
	.byte	74
@ Comp:
	.word	0
@ Px:
	.word	248
@ Py:
	.word	128
@ Pix:
	.byte	-71
	.byte	-30
	.byte	-23
	.byte	-41
	.byte	-28
	.byte	-32
	.byte	-117
	.byte	80
@ Comp:
	.word	0
@ Px:
	.word	280
@ Py:
	.word	328
@ Pix:
	.byte	59
	.byte	82
	.byte	-124
	.byte	-78
	.byte	-68
	.byte	-102
	.byte	99
	.byte	63
@ Comp:
	.word	0
@ Px:
	.word	280
@ Py:
	.word	332
@ Pix:
	.byte	-65
	.byte	-88
	.byte	118
	.byte	71
	.byte	60
	.byte	95
	.byte	-105
	.byte	-68
	.type	tab_ccitt18, %object
	.size	tab_ccitt18, 100
tab_ccitt18:
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	96
@ Pix:
	.byte	62
	.byte	71
	.byte	92
	.byte	114
	.byte	124
	.byte	125
	.byte	126
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	416
@ Py:
	.word	64
@ Pix:
	.byte	-67
	.byte	-78
	.byte	126
	.byte	74
	.byte	68
	.byte	111
	.byte	-121
	.byte	-128
@ Comp:
	.word	0
@ Px:
	.word	488
@ Py:
	.word	88
@ Pix:
	.byte	60
	.byte	-113
	.byte	-75
	.byte	76
	.byte	98
	.byte	-66
	.byte	115
	.byte	66
@ Comp:
	.word	0
@ Px:
	.word	656
@ Py:
	.word	80
@ Pix:
	.byte	-96
	.byte	70
	.byte	-67
	.byte	63
	.byte	-83
	.byte	101
	.byte	121
	.byte	-99
@ Comp:
	.word	0
@ Px:
	.word	416
@ Py:
	.word	384
@ Pix:
	.byte	-67
	.byte	-78
	.byte	126
	.byte	74
	.byte	68
	.byte	111
	.byte	-121
	.byte	-128
	.type	tab_M576i, %object
	.size	tab_M576i, 100
tab_M576i:
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	40
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	50
	.byte	-87
	.byte	-21
	.byte	-87
	.byte	50
@ Comp:
	.word	0
@ Px:
	.word	464
@ Py:
	.word	168
@ Pix:
	.byte	-59
	.byte	-67
	.byte	-74
	.byte	-80
	.byte	-84
	.byte	-86
	.byte	-87
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	200
@ Py:
	.word	232
@ Pix:
	.byte	125
	.byte	106
	.byte	89
	.byte	79
	.byte	78
	.byte	85
	.byte	100
	.byte	121
@ Comp:
	.word	0
@ Px:
	.word	200
@ Py:
	.word	336
@ Pix:
	.byte	65
	.byte	65
	.byte	54
	.byte	54
	.byte	86
	.byte	86
	.byte	100
	.byte	100
@ Comp:
	.word	0
@ Px:
	.word	408
@ Py:
	.word	408
@ Pix:
	.byte	81
	.byte	79
	.byte	79
	.byte	77
	.byte	77
	.byte	75
	.byte	75
	.byte	74
	.type	tab_CBAR576_75, %object
	.size	tab_CBAR576_75, 100
tab_CBAR576_75:
@ Comp:
	.word	0
@ Px:
	.word	96
@ Py:
	.word	8
@ Pix:
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-29
	.byte	-58
	.byte	-89
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	48
@ Pix:
	.byte	-94
	.byte	-94
	.byte	-95
	.byte	-98
	.byte	-110
	.byte	-122
	.byte	-125
	.byte	-125
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	64
@ Pix:
	.byte	-125
	.byte	-127
	.byte	122
	.byte	114
	.byte	112
	.byte	112
	.byte	112
	.byte	112
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	80
@ Pix:
	.byte	101
	.byte	87
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	84
@ Comp:
	.word	0
@ Px:
	.word	440
@ Py:
	.word	136
@ Pix:
	.byte	83
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	81
	.byte	73
	.byte	67
	.type	tab_ccir3311, %object
	.size	tab_ccir3311, 100
tab_ccir3311:
@ Comp:
	.word	0
@ Px:
	.word	24
@ Py:
	.word	64
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	18
	.byte	36
	.byte	71
	.byte	106
@ Comp:
	.word	0
@ Px:
	.word	32
@ Py:
	.word	512
@ Pix:
	.byte	123
	.byte	125
	.byte	125
	.byte	126
	.byte	125
	.byte	125
	.byte	125
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	384
@ Py:
	.word	256
@ Pix:
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	696
@ Py:
	.word	128
@ Pix:
	.byte	125
	.byte	125
	.byte	125
	.byte	125
	.byte	126
	.byte	125
	.byte	125
	.byte	123
@ Comp:
	.word	0
@ Px:
	.word	704
@ Py:
	.word	384
@ Pix:
	.byte	106
	.byte	71
	.byte	35
	.byte	18
	.byte	17
	.byte	16
	.byte	16
	.byte	16
	.type	tab_CBAR576_75_B, %object
	.size	tab_CBAR576_75_B, 100
tab_CBAR576_75_B:
@ Comp:
	.word	0
@ Px:
	.word	8
@ Py:
	.word	16
@ Pix:
	.byte	20
	.byte	56
	.byte	125
	.byte	-59
	.byte	-25
	.byte	-21
	.byte	-20
	.byte	-21
@ Comp:
	.word	0
@ Px:
	.word	96
@ Py:
	.word	104
@ Pix:
	.byte	-24
	.byte	-33
	.byte	-58
	.byte	-82
	.byte	-93
	.byte	-95
	.byte	-95
	.byte	-96
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	208
@ Pix:
	.byte	-99
	.byte	-110
	.byte	-120
	.byte	-125
	.byte	-125
	.byte	-124
	.byte	-125
	.byte	-124
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	264
@ Pix:
	.byte	108
	.byte	98
	.byte	90
	.byte	84
	.byte	83
	.byte	84
	.byte	83
	.byte	83
@ Comp:
	.word	0
@ Px:
	.word	536
@ Py:
	.word	528
@ Pix:
	.byte	50
	.byte	40
	.byte	35
	.byte	35
	.byte	34
	.byte	34
	.byte	34
	.byte	34
	.type	tab_CBAR576_100, %object
	.size	tab_CBAR576_100, 100
tab_CBAR576_100:
@ Comp:
	.word	0
@ Px:
	.word	8
@ Py:
	.word	568
@ Pix:
	.byte	20
	.byte	56
	.byte	126
	.byte	-58
	.byte	-24
	.byte	-21
	.byte	-20
	.byte	-19
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	216
@ Pix:
	.byte	-53
	.byte	-67
	.byte	-80
	.byte	-86
	.byte	-87
	.byte	-87
	.byte	-86
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	280
@ Pix:
	.byte	-91
	.byte	-99
	.byte	-107
	.byte	-111
	.byte	-112
	.byte	-112
	.byte	-112
	.byte	-113
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	312
@ Pix:
	.byte	-118
	.byte	124
	.byte	113
	.byte	107
	.byte	105
	.byte	106
	.byte	106
	.byte	106
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	400
@ Pix:
	.byte	94
	.byte	86
	.byte	82
	.byte	80
	.byte	80
	.byte	81
	.byte	80
	.byte	80
	.type	tab_M576i_pulsebar, %object
	.size	tab_M576i_pulsebar, 100
tab_M576i_pulsebar:
@ Comp:
	.word	0
@ Px:
	.word	64
@ Py:
	.word	88
@ Pix:
	.byte	-88
	.byte	-20
	.byte	-88
	.byte	51
	.byte	16
	.byte	16
	.byte	17
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	120
@ Py:
	.word	192
@ Pix:
	.byte	18
	.byte	34
	.byte	61
	.byte	92
	.byte	117
	.byte	125
	.byte	117
	.byte	92
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	136
@ Pix:
	.byte	43
	.byte	56
	.byte	66
	.byte	80
	.byte	92
	.byte	104
	.byte	112
	.byte	119
@ Comp:
	.word	0
@ Px:
	.word	192
@ Py:
	.word	184
@ Pix:
	.byte	67
	.byte	54
	.byte	43
	.byte	33
	.byte	25
	.byte	19
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	248
@ Py:
	.word	528
@ Pix:
	.byte	55
	.byte	124
	.byte	-61
	.byte	-25
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.type	tab_M576i_redfield, %object
	.size	tab_M576i_redfield, 100
tab_M576i_redfield:
@ Comp:
	.word	0
@ Px:
	.word	64
@ Py:
	.word	88
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	568
@ Py:
	.word	392
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	472
@ Py:
	.word	56
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	232
@ Py:
	.word	424
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	496
@ Pix:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.type	tab_M576i_duoboqun, %object
	.size	tab_M576i_duoboqun, 100
tab_M576i_duoboqun:
@ Comp:
	.word	0
@ Px:
	.word	40
@ Py:
	.word	40
@ Pix:
	.byte	-65
	.byte	-65
	.byte	-65
	.byte	-68
	.byte	-88
	.byte	125
	.byte	83
	.byte	62
@ Comp:
	.word	0
@ Px:
	.word	80
@ Py:
	.word	232
@ Pix:
	.byte	59
	.byte	60
	.byte	59
	.byte	61
	.byte	71
	.byte	92
	.byte	113
	.byte	124
@ Comp:
	.word	0
@ Px:
	.word	104
@ Py:
	.word	408
@ Pix:
	.byte	126
	.byte	127
	.byte	-128
	.byte	120
	.byte	104
	.byte	89
	.byte	77
	.byte	68
@ Comp:
	.word	0
@ Px:
	.word	624
@ Py:
	.word	336
@ Pix:
	.byte	61
	.byte	-67
	.byte	75
	.byte	-105
	.byte	-127
	.byte	92
	.byte	-76
	.byte	59
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	552
@ Pix:
	.byte	77
	.byte	60
	.byte	96
	.byte	-101
	.byte	-66
	.byte	-82
	.byte	117
	.byte	68
	.type	tab_M576i_5taijie, %object
	.size	tab_M576i_5taijie, 100
tab_M576i_5taijie:
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	40
@ Pix:
	.byte	15
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	23
	.byte	38
	.byte	52
@ Comp:
	.word	0
@ Px:
	.word	264
@ Py:
	.word	208
@ Pix:
	.byte	60
	.byte	60
	.byte	60
	.byte	60
	.byte	61
	.byte	60
	.byte	67
	.byte	83
@ Comp:
	.word	0
@ Px:
	.word	352
@ Py:
	.word	224
@ Pix:
	.byte	104
	.byte	104
	.byte	104
	.byte	104
	.byte	105
	.byte	104
	.byte	111
	.byte	127
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	504
@ Pix:
	.byte	-86
	.byte	-72
	.byte	-65
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
	.byte	-64
@ Comp:
	.word	0
@ Px:
	.word	624
@ Py:
	.word	376
@ Pix:
	.byte	-60
	.byte	127
	.byte	56
	.byte	20
	.byte	17
	.byte	16
	.byte	16
	.byte	16
	.type	tab_M576i_xiebo, %object
	.size	tab_M576i_xiebo, 100
tab_M576i_xiebo:
@ Comp:
	.word	0
@ Px:
	.word	152
@ Py:
	.word	384
@ Pix:
	.byte	19
	.byte	21
	.byte	20
	.byte	21
	.byte	21
	.byte	22
	.byte	21
	.byte	23
@ Comp:
	.word	0
@ Px:
	.word	248
@ Py:
	.word	216
@ Pix:
	.byte	67
	.byte	69
	.byte	68
	.byte	69
	.byte	69
	.byte	70
	.byte	69
	.byte	71
@ Comp:
	.word	0
@ Px:
	.word	344
@ Py:
	.word	256
@ Pix:
	.byte	115
	.byte	117
	.byte	116
	.byte	117
	.byte	117
	.byte	118
	.byte	117
	.byte	119
@ Comp:
	.word	0
@ Px:
	.word	472
@ Py:
	.word	248
@ Pix:
	.byte	-77
	.byte	-75
	.byte	-76
	.byte	-75
	.byte	-75
	.byte	-74
	.byte	-75
	.byte	-73
@ Comp:
	.word	0
@ Px:
	.word	560
@ Py:
	.word	72
@ Pix:
	.byte	-33
	.byte	-31
	.byte	-32
	.byte	-31
	.byte	-31
	.byte	-30
	.byte	-31
	.byte	-29
	.type	tab_M576i_bowtie, %object
	.size	tab_M576i_bowtie, 100
tab_M576i_bowtie:
@ Comp:
	.word	0
@ Px:
	.word	32
@ Py:
	.word	24
@ Pix:
	.byte	104
	.byte	93
	.byte	82
	.byte	77
	.byte	73
	.byte	70
	.byte	72
	.byte	77
@ Comp:
	.word	0
@ Px:
	.word	320
@ Py:
	.word	80
@ Pix:
	.byte	-75
	.byte	-76
	.byte	-78
	.byte	-85
	.byte	-92
	.byte	-103
	.byte	-114
	.byte	-128
@ Comp:
	.word	0
@ Px:
	.word	88
@ Py:
	.word	256
@ Pix:
	.byte	16
	.byte	44
	.byte	98
	.byte	126
	.byte	98
	.byte	43
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	352
@ Py:
	.word	400
@ Pix:
	.byte	16
	.byte	15
	.byte	18
	.byte	15
	.byte	17
	.byte	15
	.byte	16
	.byte	52
@ Comp:
	.word	0
@ Px:
	.word	688
@ Py:
	.word	520
@ Pix:
	.byte	83
	.byte	92
	.byte	102
	.byte	116
	.byte	127
	.byte	-116
	.byte	-104
	.byte	-93
	.type	tab_cbars100, %object
	.size	tab_cbars100, 100
tab_cbars100:
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	24
@ Pix:
	.byte	-45
	.byte	-47
	.byte	-45
	.byte	-49
	.byte	-66
	.byte	-82
	.byte	-86
	.byte	-86
@ Comp:
	.word	0
@ Px:
	.word	616
@ Py:
	.word	56
@ Pix:
	.byte	41
	.byte	38
	.byte	28
	.byte	19
	.byte	16
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	96
@ Py:
	.word	192
@ Pix:
	.byte	-22
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-22
	.byte	-24
	.byte	-33
	.byte	-43
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	312
@ Pix:
	.byte	-86
	.byte	-89
	.byte	-97
	.byte	-110
	.byte	-109
	.byte	-111
	.byte	-110
	.byte	-110
@ Comp:
	.word	0
@ Px:
	.word	440
@ Py:
	.word	528
@ Pix:
	.byte	105
	.byte	106
	.byte	104
	.byte	109
	.byte	102
	.byte	105
	.byte	93
	.byte	84
	.type	tab_PAT_M576I_PAL, %object
	.size	tab_PAT_M576I_PAL, 100
tab_PAT_M576I_PAL:
@ Comp:
	.word	0
@ Px:
	.word	264
@ Py:
	.word	96
@ Pix:
	.byte	-66
	.byte	-108
	.byte	83
	.byte	60
	.byte	102
	.byte	-90
	.byte	-66
	.byte	-108
@ Comp:
	.word	0
@ Px:
	.word	528
@ Py:
	.word	128
@ Pix:
	.byte	120
	.byte	70
	.byte	-73
	.byte	122
	.byte	70
	.byte	-73
	.byte	123
	.byte	69
@ Comp:
	.word	0
@ Px:
	.word	216
@ Py:
	.word	248
@ Pix:
	.byte	16
	.byte	51
	.byte	-87
	.byte	-21
	.byte	-88
	.byte	51
	.byte	15
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	456
@ Pix:
	.byte	82
	.byte	76
	.byte	74
	.byte	72
	.byte	66
	.byte	65
	.byte	66
	.byte	65
@ Comp:
	.word	0
@ Px:
	.word	536
@ Py:
	.word	488
@ Pix:
	.byte	65
	.byte	66
	.byte	65
	.byte	63
	.byte	50
	.byte	36
	.byte	34
	.byte	33
	.type	tab_PAT_M480P_SHALLOW_PAL, %object
	.size	tab_PAT_M480P_SHALLOW_PAL, 100
tab_PAT_M480P_SHALLOW_PAL:
@ Comp:
	.word	0
@ Px:
	.word	224
@ Py:
	.word	40
@ Pix:
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
@ Comp:
	.word	0
@ Px:
	.word	680
@ Py:
	.word	72
@ Pix:
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	160
@ Pix:
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
@ Comp:
	.word	0
@ Px:
	.word	544
@ Py:
	.word	240
@ Pix:
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	328
@ Pix:
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	22
	.byte	22
	.type	tab_codec43, %object
	.size	tab_codec43, 100
tab_codec43:
@ Comp:
	.word	0
@ Px:
	.word	192
@ Py:
	.word	168
@ Pix:
	.byte	70
	.byte	72
	.byte	71
	.byte	69
	.byte	122
	.byte	-48
	.byte	-27
	.byte	-58
@ Comp:
	.word	0
@ Px:
	.word	144
@ Py:
	.word	296
@ Pix:
	.byte	-35
	.byte	-117
	.byte	79
	.byte	70
	.byte	71
	.byte	75
	.byte	85
	.byte	100
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	416
@ Pix:
	.byte	124
	.byte	109
	.byte	126
	.byte	-55
	.byte	-27
	.byte	-94
	.byte	65
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	680
@ Py:
	.word	344
@ Pix:
	.byte	-19
	.byte	-21
	.byte	-22
	.byte	-29
	.byte	-56
	.byte	-98
	.byte	114
	.byte	81
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	432
@ Pix:
	.byte	69
	.byte	75
	.byte	55
	.byte	76
	.byte	76
	.byte	37
	.byte	120
	.byte	-43
	.type	tab_ccitt033_ntsc, %object
	.size	tab_ccitt033_ntsc, 100
tab_ccitt033_ntsc:
@ Comp:
	.word	0
@ Px:
	.word	376
@ Py:
	.word	24
@ Pix:
	.byte	116
	.byte	120
	.byte	123
	.byte	124
	.byte	125
	.byte	125
	.byte	123
	.byte	120
@ Comp:
	.word	0
@ Px:
	.word	504
@ Py:
	.word	144
@ Pix:
	.byte	-127
	.byte	48
	.byte	15
	.byte	20
	.byte	16
	.byte	14
	.byte	15
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	200
@ Py:
	.word	288
@ Pix:
	.byte	124
	.byte	-127
	.byte	-88
	.byte	-38
	.byte	-30
	.byte	-80
	.byte	-126
	.byte	-121
@ Comp:
	.word	0
@ Px:
	.word	232
@ Py:
	.word	288
@ Pix:
	.byte	-107
	.byte	122
	.byte	98
	.byte	100
	.byte	-109
	.byte	-45
	.byte	-25
	.byte	-37
@ Comp:
	.word	0
@ Px:
	.word	368
@ Py:
	.word	240
@ Pix:
	.byte	-126
	.byte	-83
	.byte	-32
	.byte	-32
	.byte	-85
	.byte	-126
	.byte	123
	.byte	124
	.type	tab_its1_ntsc, %object
	.size	tab_its1_ntsc, 100
tab_its1_ntsc:
@ Comp:
	.word	0
@ Px:
	.word	376
@ Py:
	.word	32
@ Pix:
	.byte	116
	.byte	119
	.byte	122
	.byte	124
	.byte	126
	.byte	125
	.byte	123
	.byte	120
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	24
@ Pix:
	.byte	17
	.byte	19
	.byte	21
	.byte	25
	.byte	30
	.byte	37
	.byte	42
	.byte	49
@ Comp:
	.word	0
@ Px:
	.word	328
@ Py:
	.word	80
@ Pix:
	.byte	16
	.byte	15
	.byte	24
	.byte	98
	.byte	-61
	.byte	-22
	.byte	-70
	.byte	89
@ Comp:
	.word	0
@ Px:
	.word	392
@ Py:
	.word	24
@ Pix:
	.byte	60
	.byte	52
	.byte	45
	.byte	38
	.byte	32
	.byte	26
	.byte	22
	.byte	19
@ Comp:
	.word	0
@ Px:
	.word	488
@ Py:
	.word	64
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	20
	.byte	29
	.byte	40
	.byte	49
	.type	tab_PAT_M480I_NTSC, %object
	.size	tab_PAT_M480I_NTSC, 100
tab_PAT_M480I_NTSC:
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	24
@ Pix:
	.byte	-68
	.byte	-84
	.byte	-110
	.byte	116
	.byte	88
	.byte	67
	.byte	60
	.byte	66
@ Comp:
	.word	0
@ Px:
	.word	136
@ Py:
	.word	128
@ Pix:
	.byte	-92
	.byte	-69
	.byte	-73
	.byte	-105
	.byte	110
	.byte	69
	.byte	61
	.byte	81
@ Comp:
	.word	0
@ Px:
	.word	280
@ Py:
	.word	184
@ Pix:
	.byte	-21
	.byte	-21
	.byte	-34
	.byte	125
	.byte	29
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	336
@ Py:
	.word	184
@ Pix:
	.byte	-66
	.byte	-21
	.byte	-65
	.byte	94
	.byte	22
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	248
@ Pix:
	.byte	109
	.byte	109
	.byte	112
	.byte	126
	.byte	-116
	.byte	-113
	.byte	-113
	.byte	-113
	.type	tab_PAT_M480P_NTSC, %object
	.size	tab_PAT_M480P_NTSC, 100
tab_PAT_M480P_NTSC:
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	48
@ Pix:
	.byte	-68
	.byte	85
	.byte	19
	.byte	49
	.byte	-105
	.byte	-27
	.byte	-46
	.byte	110
@ Comp:
	.word	0
@ Px:
	.word	528
@ Py:
	.word	48
@ Pix:
	.byte	-30
	.byte	24
	.byte	-88
	.byte	-90
	.byte	25
	.byte	-28
	.byte	79
	.byte	92
@ Comp:
	.word	0
@ Px:
	.word	184
@ Py:
	.word	128
@ Pix:
	.byte	-89
	.byte	-84
	.byte	-81
	.byte	-81
	.byte	-83
	.byte	-88
	.byte	-95
	.byte	-104
@ Comp:
	.word	0
@ Px:
	.word	464
@ Py:
	.word	128
@ Pix:
	.byte	-85
	.byte	-86
	.byte	-122
	.byte	92
	.byte	76
	.byte	98
	.byte	-115
	.byte	-83
@ Comp:
	.word	0
@ Px:
	.word	336
@ Py:
	.word	256
@ Pix:
	.byte	24
	.byte	24
	.byte	23
	.byte	23
	.byte	40
	.byte	40
	.byte	17
	.byte	17
	.type	tab_PAT_M480P_SHALLOW_NTSC, %object
	.size	tab_PAT_M480P_SHALLOW_NTSC, 100
tab_PAT_M480P_SHALLOW_NTSC:
@ Comp:
	.word	0
@ Px:
	.word	256
@ Py:
	.word	32
@ Pix:
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	25
	.byte	25
@ Comp:
	.word	0
@ Px:
	.word	552
@ Py:
	.word	96
@ Pix:
	.byte	35
	.byte	35
	.byte	35
	.byte	35
	.byte	36
	.byte	36
	.byte	36
	.byte	36
@ Comp:
	.word	0
@ Px:
	.word	680
@ Py:
	.word	168
@ Pix:
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
@ Comp:
	.word	0
@ Px:
	.word	152
@ Py:
	.word	288
@ Pix:
	.byte	20
	.byte	20
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
@ Comp:
	.word	0
@ Px:
	.word	472
@ Py:
	.word	416
@ Pix:
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	33
	.byte	33
	.byte	33
	.byte	33
	.type	tab_PAT_M480P_CBWFRC_NTSC, %object
	.size	tab_PAT_M480P_CBWFRC_NTSC, 100
tab_PAT_M480P_CBWFRC_NTSC:
@ Comp:
	.word	0
@ Px:
	.word	8
@ Py:
	.word	48
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	24
	.byte	51
	.byte	89
	.byte	117
@ Comp:
	.word	0
@ Px:
	.word	712
@ Py:
	.word	56
@ Pix:
	.byte	125
	.byte	125
	.byte	117
	.byte	89
	.byte	51
	.byte	24
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	8
@ Py:
	.word	144
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	24
	.byte	51
	.byte	89
	.byte	117
@ Comp:
	.word	0
@ Px:
	.word	712
@ Py:
	.word	168
@ Pix:
	.byte	125
	.byte	125
	.byte	117
	.byte	89
	.byte	51
	.byte	24
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	8
@ Py:
	.word	416
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	24
	.byte	51
	.byte	89
	.byte	117
	.type	tab_cbar704_576, %object
	.size	tab_cbar704_576, 100
tab_cbar704_576:
@ Comp:
	.word	0
@ Px:
	.word	88
@ Py:
	.word	56
@ Pix:
	.byte	-25
	.byte	-51
	.byte	-82
	.byte	-94
	.byte	-95
	.byte	-95
	.byte	-95
	.byte	-96
@ Comp:
	.word	0
@ Px:
	.word	528
@ Py:
	.word	72
@ Pix:
	.byte	65
	.byte	58
	.byte	44
	.byte	34
	.byte	35
	.byte	35
	.byte	34
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	352
@ Py:
	.word	264
@ Pix:
	.byte	113
	.byte	108
	.byte	97
	.byte	87
	.byte	84
	.byte	84
	.byte	83
	.byte	84
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	520
@ Pix:
	.byte	-95
	.byte	-104
	.byte	-117
	.byte	-124
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
@ Comp:
	.word	0
@ Px:
	.word	440
@ Py:
	.word	520
@ Pix:
	.byte	84
	.byte	84
	.byte	84
	.byte	81
	.byte	74
	.byte	67
	.byte	65
	.byte	65
	.type	tab_matrix625, %object
	.size	tab_matrix625, 120
tab_matrix625:
@ Comp:
	.word	0
@ Px:
	.word	0
@ Py:
	.word	448
@ Pix:
	.byte	26
	.byte	34
	.byte	44
	.byte	54
	.byte	62
	.byte	68
	.byte	71
	.byte	72
@ Comp:
	.word	0
@ Px:
	.word	168
@ Py:
	.word	256
@ Pix:
	.byte	52
	.byte	61
	.byte	45
	.byte	67
	.byte	39
	.byte	73
	.byte	34
	.byte	76
@ Comp:
	.word	0
@ Px:
	.word	256
@ Py:
	.word	512
@ Pix:
	.byte	33
	.byte	43
	.byte	55
	.byte	67
	.byte	80
	.byte	92
	.byte	103
	.byte	112
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	32
@ Pix:
	.byte	33
	.byte	38
	.byte	43
	.byte	49
	.byte	55
	.byte	61
	.byte	67
	.byte	74
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	160
@ Pix:
	.byte	-66
	.byte	117
	.byte	65
	.byte	-88
	.byte	-95
	.byte	62
	.byte	126
	.byte	-68
@ Comp:
	.word	0
@ Px:
	.word	696
@ Py:
	.word	512
@ Pix:
	.byte	-60
	.byte	126
	.byte	54
	.byte	20
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.type	tab_matrx525, %object
	.size	tab_matrx525, 100
tab_matrx525:
@ Comp:
	.word	0
@ Px:
	.word	80
@ Py:
	.word	40
@ Pix:
	.byte	-21
	.byte	-23
	.byte	-36
	.byte	-60
	.byte	-83
	.byte	-94
	.byte	-95
	.byte	-95
@ Comp:
	.word	0
@ Px:
	.word	216
@ Py:
	.word	192
@ Pix:
	.byte	85
	.byte	74
	.byte	71
	.byte	81
	.byte	101
	.byte	125
	.byte	-106
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	560
@ Py:
	.word	264
@ Pix:
	.byte	-127
	.byte	38
	.byte	-126
	.byte	-42
	.byte	-81
	.byte	-83
	.byte	-61
	.byte	-81
@ Comp:
	.word	0
@ Px:
	.word	448
@ Py:
	.word	176
@ Pix:
	.byte	85
	.byte	-103
	.byte	-121
	.byte	107
	.byte	-127
	.byte	-128
	.byte	124
	.byte	125
@ Comp:
	.word	0
@ Px:
	.word	568
@ Py:
	.word	352
@ Pix:
	.byte	95
	.byte	95
	.byte	98
	.byte	105
	.byte	115
	.byte	125
	.byte	-124
	.byte	-122
	.type	tab_M480p16x9, %object
	.size	tab_M480p16x9, 60
tab_M480p16x9:
@ Comp:
	.word	0
@ Px:
	.word	128
@ Py:
	.word	32
@ Pix:
	.byte	17
	.byte	17
	.byte	23
	.byte	94
	.byte	-65
	.byte	-21
	.byte	-65
	.byte	94
@ Comp:
	.word	0
@ Px:
	.word	456
@ Py:
	.word	112
@ Pix:
	.byte	-61
	.byte	-67
	.byte	-72
	.byte	-78
	.byte	-82
	.byte	-85
	.byte	-86
	.byte	-87
@ Comp:
	.word	0
@ Px:
	.word	152
@ Py:
	.word	136
@ Pix:
	.byte	-115
	.byte	-120
	.byte	-124
	.byte	125
	.byte	118
	.byte	110
	.byte	104
	.byte	96
	.type	tab_PAT_M480I_50_FLAT_FIELD, %object
	.size	tab_PAT_M480I_50_FLAT_FIELD, 100
tab_PAT_M480I_50_FLAT_FIELD:
@ Comp:
	.word	0
@ Px:
	.word	224
@ Py:
	.word	40
@ Pix:
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
@ Comp:
	.word	0
@ Px:
	.word	680
@ Py:
	.word	72
@ Pix:
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	160
@ Pix:
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
@ Comp:
	.word	0
@ Px:
	.word	544
@ Py:
	.word	240
@ Pix:
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
@ Comp:
	.word	0
@ Px:
	.word	176
@ Py:
	.word	328
@ Pix:
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.byte	126
	.type	tab_PAT_M480I_75_COLORBARS, %object
	.size	tab_PAT_M480I_75_COLORBARS, 100
tab_PAT_M480I_75_COLORBARS:
@ Comp:
	.word	0
@ Px:
	.word	80
@ Py:
	.word	16
@ Pix:
	.byte	-21
	.byte	-23
	.byte	-36
	.byte	-60
	.byte	-82
	.byte	-93
	.byte	-94
	.byte	-94
@ Comp:
	.word	0
@ Px:
	.word	168
@ Py:
	.word	72
@ Pix:
	.byte	-94
	.byte	-94
	.byte	-95
	.byte	-100
	.byte	-109
	.byte	-119
	.byte	-124
	.byte	-125
@ Comp:
	.word	0
@ Px:
	.word	256
@ Py:
	.word	152
@ Pix:
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-125
	.byte	-127
	.byte	124
	.byte	117
	.byte	113
@ Comp:
	.word	0
@ Px:
	.word	344
@ Py:
	.word	256
@ Pix:
	.byte	113
	.byte	113
	.byte	113
	.byte	113
	.byte	113
	.byte	110
	.byte	103
	.byte	93
@ Comp:
	.word	0
@ Px:
	.word	432
@ Py:
	.word	368
@ Pix:
	.byte	85
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	84
	.byte	83
	.byte	78
	.type	tab_PAT_M480I_NTC7_COMBINATION, %object
	.size	tab_PAT_M480I_NTC7_COMBINATION, 100
tab_PAT_M480I_NTC7_COMBINATION:
@ Comp:
	.word	0
@ Px:
	.word	80
@ Py:
	.word	56
@ Pix:
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-27
	.byte	-46
	.byte	-76
	.byte	-104
@ Comp:
	.word	0
@ Px:
	.word	112
@ Py:
	.word	136
@ Pix:
	.byte	125
	.byte	126
	.byte	-119
	.byte	-106
	.byte	-95
	.byte	-86
	.byte	-80
	.byte	-76
@ Comp:
	.word	0
@ Px:
	.word	128
@ Py:
	.word	288
@ Pix:
	.byte	107
	.byte	96
	.byte	86
	.byte	79
	.byte	73
	.byte	71
	.byte	72
	.byte	75
@ Comp:
	.word	0
@ Px:
	.word	336
@ Py:
	.word	352
@ Pix:
	.byte	107
	.byte	73
	.byte	126
	.byte	-86
	.byte	-118
	.byte	102
	.byte	114
	.byte	-124
@ Comp:
	.word	0
@ Px:
	.word	440
@ Py:
	.word	368
@ Pix:
	.byte	-83
	.byte	83
	.byte	111
	.byte	-76
	.byte	100
	.byte	91
	.byte	-79
	.byte	122
	.type	tab_PAT_M480I_NTC7_COMPOSITE, %object
	.size	tab_PAT_M480I_NTC7_COMPOSITE, 100
tab_PAT_M480I_NTC7_COMPOSITE:
@ Comp:
	.word	0
@ Px:
	.word	32
@ Py:
	.word	56
@ Pix:
	.byte	126
	.byte	-34
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-21
	.byte	-20
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	72
@ Pix:
	.byte	-21
	.byte	-21
	.byte	-34
	.byte	126
	.byte	29
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	328
@ Py:
	.word	216
@ Pix:
	.byte	-33
	.byte	-33
	.byte	-111
	.byte	50
	.byte	16
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	352
@ Py:
	.word	264
@ Pix:
	.byte	22
	.byte	26
	.byte	31
	.byte	37
	.byte	44
	.byte	51
	.byte	59
	.byte	67
@ Comp:
	.word	0
@ Px:
	.word	528
@ Py:
	.word	408
@ Pix:
	.byte	56
	.byte	56
	.byte	61
	.byte	70
	.byte	81
	.byte	90
	.byte	94
	.byte	95
	.type	tab_PAT_M480I_TSG130A_MATRIX_10MBPS, %object
	.size	tab_PAT_M480I_TSG130A_MATRIX_10MBPS, 100
tab_PAT_M480I_TSG130A_MATRIX_10MBPS:
@ Comp:
	.word	0
@ Px:
	.word	80
@ Py:
	.word	80
@ Pix:
	.byte	-21
	.byte	-23
	.byte	-36
	.byte	-60
	.byte	-83
	.byte	-94
	.byte	-95
	.byte	-96
@ Comp:
	.word	0
@ Px:
	.word	152
@ Py:
	.word	176
@ Pix:
	.byte	-112
	.byte	-124
	.byte	119
	.byte	106
	.byte	95
	.byte	85
	.byte	78
	.byte	73
@ Comp:
	.word	0
@ Px:
	.word	256
@ Py:
	.word	232
@ Pix:
	.byte	-80
	.byte	-84
	.byte	-124
	.byte	85
	.byte	72
	.byte	100
	.byte	-106
	.byte	-77
@ Comp:
	.word	0
@ Px:
	.word	560
@ Py:
	.word	240
@ Pix:
	.byte	-127
	.byte	38
	.byte	-126
	.byte	-42
	.byte	-81
	.byte	-83
	.byte	-61
	.byte	-81
@ Comp:
	.word	0
@ Px:
	.word	648
@ Py:
	.word	352
@ Pix:
	.byte	-82
	.byte	-82
	.byte	-82
	.byte	-79
	.byte	-73
	.byte	-63
	.byte	-52
	.byte	-45
	.type	tab_M720p50, %object
	.size	tab_M720p50, 100
tab_M720p50:
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	72
@ Pix:
	.byte	-21
	.byte	-98
	.byte	35
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	432
@ Py:
	.word	168
@ Pix:
	.byte	-124
	.byte	-46
	.byte	-28
	.byte	-79
	.byte	98
	.byte	53
	.byte	64
	.byte	110
@ Comp:
	.word	0
@ Px:
	.word	784
@ Py:
	.word	184
@ Pix:
	.byte	42
	.byte	-50
	.byte	-66
	.byte	30
	.byte	85
	.byte	-24
	.byte	-115
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	200
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	35
	.byte	-98
	.byte	-21
	.byte	-98
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	408
@ Py:
	.word	504
@ Pix:
	.byte	-27
	.byte	-55
	.byte	-109
	.byte	85
	.byte	37
	.byte	18
	.byte	16
	.byte	16
	.type	tab_M720p59, %object
	.size	tab_M720p59, 100
tab_M720p59:
@ Comp:
	.word	0
@ Px:
	.word	240
@ Py:
	.word	72
@ Pix:
	.byte	-21
	.byte	-98
	.byte	36
	.byte	17
	.byte	16
	.byte	17
	.byte	17
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	432
@ Py:
	.word	168
@ Pix:
	.byte	-124
	.byte	-46
	.byte	-28
	.byte	-79
	.byte	98
	.byte	53
	.byte	64
	.byte	110
@ Comp:
	.word	0
@ Px:
	.word	784
@ Py:
	.word	184
@ Pix:
	.byte	42
	.byte	-50
	.byte	-66
	.byte	30
	.byte	85
	.byte	-24
	.byte	-115
	.byte	16
@ Comp:
	.word	0
@ Px:
	.word	272
@ Py:
	.word	200
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	35
	.byte	-98
	.byte	-21
	.byte	-98
	.byte	35
@ Comp:
	.word	0
@ Px:
	.word	408
@ Py:
	.word	504
@ Pix:
	.byte	-20
	.byte	-39
	.byte	-102
	.byte	72
	.byte	24
	.byte	17
	.byte	17
	.byte	16
	.type	tab_M1080, %object
	.size	tab_M1080, 100
tab_M1080:
@ Comp:
	.word	0
@ Px:
	.word	360
@ Py:
	.word	72
@ Pix:
	.byte	-98
	.byte	-21
	.byte	-98
	.byte	29
	.byte	14
	.byte	14
	.byte	14
	.byte	14
@ Comp:
	.word	0
@ Px:
	.word	1232
@ Py:
	.word	120
@ Pix:
	.byte	-21
	.byte	73
	.byte	76
	.byte	-22
	.byte	53
	.byte	98
	.byte	-28
	.byte	36
@ Comp:
	.word	0
@ Px:
	.word	608
@ Py:
	.word	272
@ Pix:
	.byte	16
	.byte	16
	.byte	16
	.byte	18
	.byte	27
	.byte	48
	.byte	79
	.byte	117
@ Comp:
	.word	0
@ Px:
	.word	1216
@ Py:
	.word	320
@ Pix:
	.byte	110
	.byte	-87
	.byte	-65
	.byte	-102
	.byte	93
	.byte	60
	.byte	85
	.byte	-110
@ Comp:
	.word	0
@ Px:
	.word	496
@ Py:
	.word	616
@ Pix:
	.byte	26
	.byte	26
	.byte	82
	.byte	82
	.byte	-84
	.byte	-84
	.byte	63
	.byte	64
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pDetPara is NULL\012\000"
	.space	2
.LC1:
	.ascii	"pPicBufY:0x%x,pPicBufU:0x%x,pPicBufV:0x%x\012\000"
	.space	1
.LC2:
	.ascii	"PicHeight:%d,PicWidth:%d\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
