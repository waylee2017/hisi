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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(dnr_patch)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_patch.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.o
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
	.global	GetSample
	.type	GetSample, %function
GetSample:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldmia	r0, {r2, ip}	@ pSmp,,
	ldr	r3, [r0, #8]	@ D.35404, pSmp_4(D)->Py
	cmp	r2, #1	@ D.35404,
	beq	.L3	@,
	cmp	r2, #2	@ D.35404,
	ldreq	r4, [r1, #16]	@ pRd, pDetPara_12(D)->pPicBufV
	bne	.L13	@,
.L5:
	ldr	r2, .L16	@ tmp164,
	ldr	r2, [r2]	@ D.35405, g_eVdmVersion
	cmp	r2, #1	@ D.35405,
	beq	.L14	@,
.L6:
	sub	r2, r2, #3	@ D.35407, D.35405,
	cmp	r2, #1	@ D.35407,
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
	ldr	r2, [r2]	@ D.35405, g_eVdmVersion
	cmp	r2, #1	@ D.35405,
	bne	.L6	@,
.L14:
	ldr	lr, [r1, #40]	@ pDetPara_12(D)->IsFrameStored, pDetPara_12(D)->IsFrameStored
	mov	r6, ip, asr #4	@ Mbx, D.35404,
	and	r2, r3, #15	@ PixY, D.35404,
	and	ip, ip, #15	@ PixX, D.35404,
	cmp	lr, #0	@ pDetPara_12(D)->IsFrameStored,
	beq	.L7	@,
	ldr	r1, [r1, #36]	@ pDetPara_12(D)->MbHeight, pDetPara_12(D)->MbHeight
	mov	r3, r3, asr #4	@ Mby, D.35404,
	mov	r2, r2, asl #4	@ D.35404, PixY,
	mla	r1, r1, r6, r3	@ D.35404, pDetPara_12(D)->MbHeight, Mbx, Mby
	add	r2, r2, r1, lsl #8	@ D.35404, D.35404, D.35404,
	add	ip, r2, ip	@ D.35404, D.35404, PixX
	add	r4, r4, ip	@ pRd, pRd, D.35404
	b	.L8	@
.L15:
	mov	r6, r3, asr #31	@ tmp192, D.35404,
	ldr	r1, [r1, #32]	@ pDetPara_12(D)->MbWidth, pDetPara_12(D)->MbWidth
	bic	lr, ip, #255	@ j, D.35404,
	add	r2, r3, #15	@ tmp209, D.35404,
	mov	r7, r6, lsr #28	@ tmp193, tmp192,
	cmp	lr, #0	@ j,
	add	r6, r3, r7	@ tmp194, D.35404, tmp193
	add	r5, lr, #255	@ tmp203, j,
	mov	r1, r1, asl #4	@ ImgWidthInPixAln, pDetPara_12(D)->MbWidth,
	and	r6, r6, #15	@ tmp195, tmp194,
	movge	r5, lr	@ j, j
	add	r1, r1, #255	@ D.35404, ImgWidthInPixAln,
	cmp	r3, #0	@ D.35404,
	rsb	r6, r7, r6	@ D.35404, tmp193, tmp195
	bic	r1, r1, #255	@ D.35404, D.35404,
	uxtb	lr, ip	@ D.35406, D.35404
	mov	r5, r5, asr #8	@ D.35404, j,
	movge	r2, r3	@ D.35404, D.35404
	add	ip, lr, r6, lsl #8	@ D.35406, D.35406, D.35404,
	mov	r1, r1, asl #4	@ Stride, D.35404,
	add	ip, ip, r5, lsl #12	@ D.35406, D.35406, D.35404,
	mov	r2, r2, asr #4	@ D.35404, D.35404,
	mla	r3, r1, r2, ip	@ D.35406, Stride, D.35404, D.35406
	add	r4, r4, r3	@ pRd, pRd, D.35406
	b	.L8	@
.L3:
	ldr	r4, [r1, #12]	@ pRd, pDetPara_12(D)->pPicBufU
	b	.L5	@
.L7:
	ldr	lr, [r1, #36]	@ pDetPara_12(D)->MbHeight, pDetPara_12(D)->MbHeight
	add	r5, r3, #31	@ tmp183, D.35404,
	cmp	r3, #0	@ D.35404,
	mov	r2, r2, asl #4	@ D.35404, PixY,
	mul	r1, lr, r6	@ D.35404, pDetPara_12(D)->MbHeight, Mbx
	movlt	r3, r5	@ D.35404, tmp183
	mov	r3, r3, asr #5	@ Mby, D.35404,
	add	r1, r1, #1	@ D.35404, D.35404,
	add	r1, r1, r1, lsr #31	@ tmp179, D.35404, D.35404,
	add	r1, r3, r1, asr #1	@ D.35404, Mby, tmp179,
	add	r2, r2, r1, lsl #8	@ D.35404, D.35404, D.35404,
	add	ip, r2, ip	@ D.35404, D.35404, PixX
	add	r4, r4, ip	@ pRd, pRd, D.35404
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r4, r0, #0	@ pDetPara, pDetPara
	ldr	r5, .L417	@ tmp1612,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r3, [r5]	@ __stack_chk_guard, __stack_chk_guard
	str	r3, [sp, #20]	@ __stack_chk_guard, D.36507
	beq	.L21	@,
	ldr	r3, [r4, #8]	@ pDetPara_180(D)->pPicBufY, pDetPara_180(D)->pPicBufY
	cmp	r3, #0	@ pDetPara_180(D)->pPicBufY,
	beq	.L21	@,
	ldr	r2, [r4, #24]	@ D.36500, pDetPara_180(D)->PicHeight
	cmp	r2, #1088	@ D.36500,
	bgt	.L21	@,
	clz	r3, r2	@ tmp955, D.36500
	ldr	r1, [r4, #20]	@ D.36500, pDetPara_180(D)->PicWidth
	mov	r3, r3, lsr #5	@ tmp955, tmp955,
	cmp	r1, #1920	@ D.36500,
	orrgt	r3, r3, #1	@,, tmp956, tmp955
	cmp	r1, #0	@ D.36500,
	orreq	r3, r3, #1	@,, tmp962, tmp956
	cmp	r3, #0	@ tmp962,
	bne	.L21	@,
	sub	r3, r1, #720	@ D.36503, D.36500,
	sub	r0, r2, #576	@ D.36503, D.36500,
	clz	r3, r3	@ D.36503, D.36503
	clz	r0, r0	@ D.36503, D.36503
	mov	r3, r3, lsr #5	@ D.36503, D.36503,
	mov	r0, r0, lsr #5	@ D.36503, D.36503,
	tst	r0, r3	@ D.36503, D.36503
	bne	.L409	@,
	sub	ip, r2, #480	@ D.36503, D.36500,
	clz	ip, ip	@ D.36503, D.36503
	mov	ip, ip, lsr #5	@ D.36503, D.36503,
	tst	ip, r3	@ D.36503, D.36503
	bne	.L410	@,
	sub	r3, r1, #704	@ D.36503, D.36500,
	clz	r3, r3	@ D.36503, D.36503
	mov	r3, r3, lsr #5	@ D.36503, D.36503,
	tst	r3, r0	@ D.36503, D.36503
	bne	.L411	@,
	tst	r3, ip	@ D.36503, D.36503
	bne	.L412	@,
	cmp	r2, #720	@ D.36500,
	cmpeq	r1, #1280	@, D.36500,
	beq	.L413	@,
	movw	r3, #1079	@ tmp1556,
	cmp	r2, r3	@ D.36500, tmp1556
	movle	r2, #0	@ tmp1561,
	movgt	r2, #1	@ tmp1561,
	cmp	r1, #1920	@ D.36500,
	movne	r2, #0	@ tmp1561,
	cmp	r2, #0	@ tmp1561,
	bne	.L414	@,
.L104:
	mov	r0, #0	@ D.36498,
	b	.L20	@
.L21:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.36498,
.L20:
	ldr	r2, [sp, #20]	@ D.36507, D.36507
	ldr	r3, [r5]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.36507, __stack_chk_guard
	bne	.L415	@,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L414:
	ldr	r10, .L417+4	@ ivtmp.1089,
	add	r7, sp, #12	@ ivtmp.1074,,
	add	r8, sp, #20	@ D.36505,,
	mov	r6, sp	@ tmp1603,
	add	r9, r10, #100	@ D.36505, ivtmp.1089,
.L148:
	ldr	r3, [r10, #-3]	@ MEM[base: _980, offset: 4294967293B], MEM[base: _980, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _980, offset: 4294967285B], MEM[base: _980, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r10, #-7]	@ MEM[base: _980, offset: 4294967289B], MEM[base: _980, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _980, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.1074, ivtmp.1074
	mov	r0, r10	@ ivtmp.1065, ivtmp.1089
	mov	r3, #0	@ MisCnt,
.L147:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1157, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1159, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r1, r8	@ ivtmp.1074, D.36505
	bne	.L147	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r0, #0	@ D.36503,
	movle	r0, #1	@ D.36503,
	cmp	r0, #0	@ D.36503,
	beq	.L104	@,
	add	r10, r10, #20	@ ivtmp.1089, ivtmp.1089,
	cmp	r10, r9	@ ivtmp.1089, D.36505
	bne	.L148	@,
	cmp	r0, #1	@ D.36503,
	moveq	r0, #7	@ D.36498,
	b	.L20	@
.L409:
	ldr	r10, .L417+8	@ ivtmp.500,
	add	r7, sp, #12	@ ivtmp.1074,,
	add	r8, sp, #20	@ D.36505,,
	mov	r6, sp	@ tmp1603,
	add	r9, r10, #100	@ D.36505, ivtmp.500,
.L25:
	ldr	r3, [r10, #-3]	@ MEM[base: _103, offset: 4294967293B], MEM[base: _103, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _103, offset: 4294967285B], MEM[base: _103, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r10, #-7]	@ MEM[base: _103, offset: 4294967289B], MEM[base: _103, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _103, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.485, ivtmp.1074
	mov	r0, r10	@ ivtmp.476, ivtmp.500
	mov	r3, #0	@ MisCnt,
.L23:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1484, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1485, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r1, r8	@ ivtmp.485, D.36505
	bne	.L23	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L24	@,
	add	r10, r10, #20	@ ivtmp.500, ivtmp.500,
	cmp	r10, r9	@ ivtmp.500, D.36505
	bne	.L25	@,
	cmp	r3, #1	@ D.36503,
	beq	.L416	@,
.L24:
	ldr	r10, .L417+12	@ ivtmp.469,
	add	r9, r10, #100	@ D.36505, ivtmp.469,
.L29:
	ldr	r2, [r10, #-7]	@ MEM[base: _551, offset: 4294967289B], MEM[base: _551, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _551, offset: 4294967285B], MEM[base: _551, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _551, offset: 4294967293B], MEM[base: _551, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _551, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.454, ivtmp.1074
	mov	r0, r10	@ ivtmp.445, ivtmp.469
	mov	r1, #0	@ MisCnt,
.L27:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1492, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1493, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.454
	bne	.L27	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L28	@,
	add	r10, r10, #20	@ ivtmp.469, ivtmp.469,
	cmp	r10, r9	@ ivtmp.469, D.36505
	bne	.L29	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #2	@ D.36498,
	beq	.L20	@,
.L28:
	ldr	r10, .L417+16	@ ivtmp.438,
	add	r9, r10, #100	@ D.36505, ivtmp.438,
.L33:
	ldr	r2, [r10, #-7]	@ MEM[base: _564, offset: 4294967289B], MEM[base: _564, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _564, offset: 4294967285B], MEM[base: _564, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _564, offset: 4294967293B], MEM[base: _564, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _564, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.423, ivtmp.1074
	mov	r0, r10	@ ivtmp.414, ivtmp.438
	mov	r1, #0	@ MisCnt,
.L31:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1500, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1501, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.423
	bne	.L31	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L32	@,
	add	r10, r10, #20	@ ivtmp.438, ivtmp.438,
	cmp	r10, r9	@ ivtmp.438, D.36505
	bne	.L33	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #3	@ D.36498,
	beq	.L20	@,
.L32:
	ldr	r10, .L417+20	@ ivtmp.407,
	add	r9, r10, #100	@ D.36505, ivtmp.407,
.L37:
	ldr	r2, [r10, #-7]	@ MEM[base: _577, offset: 4294967289B], MEM[base: _577, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _577, offset: 4294967285B], MEM[base: _577, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _577, offset: 4294967293B], MEM[base: _577, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _577, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.392, ivtmp.1074
	mov	r0, r10	@ ivtmp.383, ivtmp.407
	mov	r1, #0	@ MisCnt,
.L35:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1508, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1509, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.392
	bne	.L35	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L36	@,
	add	r10, r10, #20	@ ivtmp.407, ivtmp.407,
	cmp	r10, r9	@ ivtmp.407, D.36505
	bne	.L37	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #8	@ D.36498,
	beq	.L20	@,
.L36:
	ldr	r10, .L417+24	@ ivtmp.376,
	add	r9, r10, #100	@ D.36505, ivtmp.376,
.L41:
	ldr	r2, [r10, #-7]	@ MEM[base: _590, offset: 4294967289B], MEM[base: _590, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _590, offset: 4294967285B], MEM[base: _590, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _590, offset: 4294967293B], MEM[base: _590, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _590, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.361, ivtmp.1074
	mov	r0, r10	@ ivtmp.352, ivtmp.376
	mov	r1, #0	@ MisCnt,
.L39:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1516, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1517, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.361
	bne	.L39	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L40	@,
	add	r10, r10, #20	@ ivtmp.376, ivtmp.376,
	cmp	r10, r9	@ ivtmp.376, D.36505
	bne	.L41	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #9	@ D.36498,
	beq	.L20	@,
.L40:
	ldr	r10, .L417+28	@ ivtmp.345,
	add	r9, r10, #100	@ D.36505, ivtmp.345,
.L45:
	ldr	r2, [r10, #-7]	@ MEM[base: _603, offset: 4294967289B], MEM[base: _603, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _603, offset: 4294967285B], MEM[base: _603, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _603, offset: 4294967293B], MEM[base: _603, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _603, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.330, ivtmp.1074
	mov	r0, r10	@ ivtmp.321, ivtmp.345
	mov	r1, #0	@ MisCnt,
.L43:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1524, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1525, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.330
	bne	.L43	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L44	@,
	add	r10, r10, #20	@ ivtmp.345, ivtmp.345,
	cmp	r10, r9	@ ivtmp.345, D.36505
	bne	.L45	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #11	@ D.36498,
	beq	.L20	@,
.L44:
	ldr	r10, .L417+32	@ ivtmp.314,
	add	r9, r10, #100	@ D.36505, ivtmp.314,
.L49:
	ldr	r2, [r10, #-7]	@ MEM[base: _616, offset: 4294967289B], MEM[base: _616, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _616, offset: 4294967285B], MEM[base: _616, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _616, offset: 4294967293B], MEM[base: _616, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _616, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.299, ivtmp.1074
	mov	r0, r10	@ ivtmp.290, ivtmp.314
	mov	r1, #0	@ MisCnt,
.L47:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1532, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1533, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.299
	bne	.L47	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L48	@,
	add	r10, r10, #20	@ ivtmp.314, ivtmp.314,
	cmp	r10, r9	@ ivtmp.314, D.36505
	bne	.L49	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #12	@ D.36498,
	beq	.L20	@,
.L48:
	ldr	r9, .L417+36	@ ivtmp.283,
	add	r10, r9, #100	@ D.36505, ivtmp.283,
.L53:
	ldr	r2, [r9, #-7]	@ MEM[base: _629, offset: 4294967289B], MEM[base: _629, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _629, offset: 4294967285B], MEM[base: _629, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r9, #-3]	@ MEM[base: _629, offset: 4294967293B], MEM[base: _629, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _629, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.268, ivtmp.1074
	mov	r0, r9	@ ivtmp.259, ivtmp.283
	mov	r1, #0	@ MisCnt,
.L51:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1540, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1541, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.268
	bne	.L51	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L52	@,
	add	r9, r9, #20	@ ivtmp.283, ivtmp.283,
	cmp	r9, r10	@ ivtmp.283, D.36505
	bne	.L53	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #13	@ D.36498,
	beq	.L20	@,
.L52:
	ldr	r9, .L417+40	@ ivtmp.252,
	add	r10, r9, #100	@ D.36505, ivtmp.252,
.L56:
	ldr	r2, [r9, #-7]	@ MEM[base: _642, offset: 4294967289B], MEM[base: _642, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _642, offset: 4294967285B], MEM[base: _642, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r9, #-3]	@ MEM[base: _642, offset: 4294967293B], MEM[base: _642, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _642, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.237, ivtmp.1074
	mov	r0, r9	@ ivtmp.228, ivtmp.252
	mov	r1, #0	@ MisCnt,
.L54:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1548, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1549, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.237
	bne	.L54	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L55	@,
	add	r9, r9, #20	@ ivtmp.252, ivtmp.252,
	cmp	r9, r10	@ ivtmp.252, D.36505
	bne	.L56	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #14	@ D.36498,
	beq	.L20	@,
.L55:
	ldr	r9, .L417+44	@ ivtmp.221,
	add	r10, r9, #100	@ D.36505, ivtmp.221,
.L59:
	ldr	r2, [r9, #-7]	@ MEM[base: _330, offset: 4294967289B], MEM[base: _330, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _330, offset: 4294967285B], MEM[base: _330, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r9, #-3]	@ MEM[base: _330, offset: 4294967293B], MEM[base: _330, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _330, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.206, ivtmp.1074
	mov	r0, r9	@ ivtmp.197, ivtmp.221
	mov	r2, #0	@ MisCnt,
.L57:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1556, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1557, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r2, r2, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.36505, ivtmp.206
	bne	.L57	@,
	cmp	r2, #2	@ MisCnt,
	movgt	r2, #0	@ D.36503,
	movle	r2, #1	@ D.36503,
	cmp	r2, #0	@ D.36503,
	beq	.L58	@,
	add	r9, r9, #20	@ ivtmp.221, ivtmp.221,
	cmp	r9, r10	@ ivtmp.221, D.36505
	bne	.L59	@,
	cmp	r2, #1	@ D.36503,
	moveq	r0, #15	@ D.36498,
	beq	.L20	@,
.L58:
	ldr	r9, .L417+48	@ ivtmp.190,
	add	r10, r9, #100	@ D.36505, ivtmp.190,
.L62:
	ldr	r3, [r9, #-3]	@ MEM[base: _250, offset: 4294967293B], MEM[base: _250, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _250, offset: 4294967285B], MEM[base: _250, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r9, #-7]	@ MEM[base: _250, offset: 4294967289B], MEM[base: _250, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _250, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.175, ivtmp.1074
	mov	r0, r9	@ ivtmp.166, ivtmp.190
	mov	r3, #0	@ MisCnt,
.L60:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1564, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1565, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.36505, ivtmp.175
	bne	.L60	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L61	@,
	add	r9, r9, #20	@ ivtmp.190, ivtmp.190,
	cmp	r9, r10	@ ivtmp.190, D.36505
	bne	.L62	@,
	cmp	r3, #1	@ D.36503,
	moveq	r0, #16	@ D.36498,
	beq	.L20	@,
.L61:
	ldr	r9, .L417+52	@ ivtmp.159,
	add	r10, r9, #100	@ D.36505, ivtmp.159,
.L65:
	ldr	r3, [r9, #-3]	@ MEM[base: _98, offset: 4294967293B], MEM[base: _98, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _98, offset: 4294967285B], MEM[base: _98, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r9, #-7]	@ MEM[base: _98, offset: 4294967289B], MEM[base: _98, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _98, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.144, ivtmp.1074
	mov	r0, r9	@ ivtmp.135, ivtmp.159
	mov	r3, #0	@ MisCnt,
.L63:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1572, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1573, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.36505, ivtmp.144
	bne	.L63	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L64	@,
	add	r9, r9, #20	@ ivtmp.159, ivtmp.159,
	cmp	r9, r10	@ ivtmp.159, D.36505
	bne	.L65	@,
	cmp	r3, #1	@ D.36503,
	moveq	r0, #17	@ D.36498,
	beq	.L20	@,
.L64:
	ldr	r7, .L417+56	@ ivtmp.125,
	add	r8, r7, #100	@ D.36505, ivtmp.125,
.L68:
	ldr	r2, [r7, #4]	@ MEM[base: _1581, offset: 4B], MEM[base: _1581, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r7, #8]	@ MEM[base: _1581, offset: 8B], MEM[base: _1581, offset: 8B]
	mov	r0, r6	@, tmp1603
	ldr	ip, [r7]	@ MEM[base: _1581, offset: 0B], MEM[base: _1581, offset: 0B]
	stmib	sp, {r2, r3}	@,,
	str	ip, [sp]	@ MEM[base: _1581, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L66:
	add	r1, r7, r2	@ D.36501, ivtmp.125, i
	add	r0, r6, r2	@ D.36506, tmp1603, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _318, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _1583, offset: 12B]
	rsb	r1, r0, r1	@ D.36500, D.36500, D.36500
	cmp	r1, #0	@ D.36500,
	rsblt	r1, r1, #0	@ D.36500, D.36500,
	cmp	r1, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L66	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L67	@,
	add	r7, r7, #20	@ ivtmp.125, ivtmp.125,
	cmp	r7, r8	@ ivtmp.125, D.36505
	bne	.L68	@,
	cmp	r3, #1	@ D.36503,
	moveq	r0, #18	@ D.36498,
	beq	.L20	@,
.L67:
	ldr	r7, .L417+60	@ ivtmp.95,
	add	r8, r7, #100	@ D.36505, ivtmp.95,
.L71:
	ldr	r2, [r7, #4]	@ MEM[base: _1587, offset: 4B], MEM[base: _1587, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r7, #8]	@ MEM[base: _1587, offset: 8B], MEM[base: _1587, offset: 8B]
	mov	r0, r6	@, tmp1603
	ldr	ip, [r7]	@ MEM[base: _1587, offset: 0B], MEM[base: _1587, offset: 0B]
	stmib	sp, {r2, r3}	@,,
	str	ip, [sp]	@ MEM[base: _1587, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L69:
	add	r1, r7, r2	@ D.36501, ivtmp.95, i
	add	r0, r6, r2	@ D.36506, tmp1603, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _1191, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _1589, offset: 12B]
	rsb	r1, r0, r1	@ D.36500, D.36500, D.36500
	cmp	r1, #0	@ D.36500,
	rsblt	r1, r1, #0	@ D.36500, D.36500,
	cmp	r1, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L69	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L70	@,
	add	r7, r7, #20	@ ivtmp.95, ivtmp.95,
	cmp	r7, r8	@ ivtmp.95, D.36505
	bne	.L71	@,
	cmp	r3, #1	@ D.36503,
	moveq	r0, #19	@ D.36498,
	beq	.L20	@,
.L70:
	ldr	r7, .L417+64	@ ivtmp.65,
	add	r8, r7, #100	@ D.36505, ivtmp.65,
.L74:
	ldr	r2, [r7, #4]	@ MEM[base: _1593, offset: 4B], MEM[base: _1593, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r7, #8]	@ MEM[base: _1593, offset: 8B], MEM[base: _1593, offset: 8B]
	mov	r0, r6	@, tmp1603
	ldr	ip, [r7]	@ MEM[base: _1593, offset: 0B], MEM[base: _1593, offset: 0B]
	stmib	sp, {r2, r3}	@,,
	str	ip, [sp]	@ MEM[base: _1593, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L72:
	add	r1, r7, r2	@ D.36501, ivtmp.65, i
	add	r0, r6, r2	@ D.36506, tmp1603, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _904, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _1595, offset: 12B]
	rsb	r1, r0, r1	@ D.36500, D.36500, D.36500
	cmp	r1, #0	@ D.36500,
	rsblt	r1, r1, #0	@ D.36500, D.36500,
	cmp	r1, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L72	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L73	@,
	add	r7, r7, #20	@ ivtmp.65, ivtmp.65,
	cmp	r7, r8	@ ivtmp.65, D.36505
	bne	.L74	@,
	cmp	r3, #1	@ D.36503,
	moveq	r0, #26	@ D.36498,
	beq	.L20	@,
.L73:
	ldr	r7, .L417+68	@ ivtmp.35,
	add	r8, r7, #100	@ D.36505, ivtmp.35,
.L77:
	ldr	r2, [r7, #4]	@ MEM[base: _1599, offset: 4B], MEM[base: _1599, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r7, #8]	@ MEM[base: _1599, offset: 8B], MEM[base: _1599, offset: 8B]
	mov	r0, r6	@, tmp1603
	ldr	ip, [r7]	@ MEM[base: _1599, offset: 0B], MEM[base: _1599, offset: 0B]
	stmib	sp, {r2, r3}	@,,
	str	ip, [sp]	@ MEM[base: _1599, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L75:
	add	r1, r7, r2	@ D.36501, ivtmp.35, i
	add	r0, r6, r2	@ D.36506, tmp1603, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _1603, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.36500, MEM[base: _1601, offset: 12B]
	rsb	r1, r0, r1	@ D.36500, D.36500, D.36500
	cmp	r1, #0	@ D.36500,
	rsblt	r1, r1, #0	@ D.36500, D.36500,
	cmp	r1, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L75	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L104	@,
	add	r7, r7, #20	@ ivtmp.35, ivtmp.35,
	cmp	r7, r8	@ ivtmp.35, D.36505
	bne	.L77	@,
	cmp	r3, #1	@ D.36503,
	movne	r0, r3	@ D.36498, D.36503
	moveq	r0, #30	@ D.36498,
	b	.L20	@
.L410:
	ldr	r10, .L417+72	@ ivtmp.717,
	add	r7, sp, #12	@ ivtmp.1074,,
	add	r8, sp, #20	@ D.36505,,
	mov	r6, sp	@ tmp1603,
	add	r9, r10, #100	@ D.36505, ivtmp.717,
.L81:
	ldr	r2, [r10, #-7]	@ MEM[base: _746, offset: 4294967289B], MEM[base: _746, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _746, offset: 4294967285B], MEM[base: _746, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _746, offset: 4294967293B], MEM[base: _746, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _746, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.702, ivtmp.1074
	mov	r0, r10	@ ivtmp.693, ivtmp.717
	mov	r1, #0	@ MisCnt,
.L79:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1428, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1429, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r8	@ ivtmp.702, D.36505
	bne	.L79	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L80	@,
	add	r10, r10, #20	@ ivtmp.717, ivtmp.717,
	cmp	r10, r9	@ ivtmp.717, D.36505
	bne	.L81	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #22	@ D.36498,
	beq	.L20	@,
.L80:
	ldr	r10, .L417+76	@ ivtmp.686,
	add	r9, r10, #100	@ D.36505, ivtmp.686,
.L85:
	ldr	r2, [r10, #-7]	@ MEM[base: _759, offset: 4294967289B], MEM[base: _759, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _759, offset: 4294967285B], MEM[base: _759, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _759, offset: 4294967293B], MEM[base: _759, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _759, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.671, ivtmp.1074
	mov	r0, r10	@ ivtmp.662, ivtmp.686
	mov	r1, #0	@ MisCnt,
.L83:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1436, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1437, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.671
	bne	.L83	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L84	@,
	add	r10, r10, #20	@ ivtmp.686, ivtmp.686,
	cmp	r10, r9	@ ivtmp.686, D.36505
	bne	.L85	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #20	@ D.36498,
	beq	.L20	@,
.L84:
	ldr	r10, .L417+80	@ ivtmp.655,
	add	r9, r10, #100	@ D.36505, ivtmp.655,
.L89:
	ldr	r2, [r10, #-7]	@ MEM[base: _772, offset: 4294967289B], MEM[base: _772, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _772, offset: 4294967285B], MEM[base: _772, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _772, offset: 4294967293B], MEM[base: _772, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _772, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.640, ivtmp.1074
	mov	r0, r10	@ ivtmp.631, ivtmp.655
	mov	r1, #0	@ MisCnt,
.L87:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1444, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1445, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.640
	bne	.L87	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L88	@,
	add	r10, r10, #20	@ ivtmp.655, ivtmp.655,
	cmp	r10, r9	@ ivtmp.655, D.36505
	bne	.L89	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #21	@ D.36498,
	beq	.L20	@,
.L88:
	ldr	r10, .L417+84	@ ivtmp.624,
	add	r9, r10, #100	@ D.36505, ivtmp.624,
.L93:
	ldr	r2, [r10, #-7]	@ MEM[base: _785, offset: 4294967289B], MEM[base: _785, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _785, offset: 4294967285B], MEM[base: _785, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _785, offset: 4294967293B], MEM[base: _785, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _785, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.609, ivtmp.1074
	mov	r0, r10	@ ivtmp.600, ivtmp.624
	mov	r1, #0	@ MisCnt,
.L91:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1452, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1453, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.609
	bne	.L91	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L92	@,
	add	r10, r10, #20	@ ivtmp.624, ivtmp.624,
	cmp	r10, r9	@ ivtmp.624, D.36505
	bne	.L93	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #25	@ D.36498,
	beq	.L20	@,
.L92:
	ldr	r10, .L417+88	@ ivtmp.593,
	add	r9, r10, #100	@ D.36505, ivtmp.593,
.L97:
	ldr	r2, [r10, #-7]	@ MEM[base: _798, offset: 4294967289B], MEM[base: _798, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _798, offset: 4294967285B], MEM[base: _798, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _798, offset: 4294967293B], MEM[base: _798, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _798, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.578, ivtmp.1074
	mov	r0, r10	@ ivtmp.569, ivtmp.593
	mov	r1, #0	@ MisCnt,
.L95:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1460, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1461, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.578
	bne	.L95	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L96	@,
	add	r10, r10, #20	@ ivtmp.593, ivtmp.593,
	cmp	r10, r9	@ ivtmp.593, D.36505
	bne	.L97	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #27	@ D.36498,
	beq	.L20	@,
.L96:
	ldr	r10, .L417+92	@ ivtmp.562,
	add	r9, r10, #100	@ D.36505, ivtmp.562,
.L101:
	ldr	r2, [r10, #-7]	@ MEM[base: _811, offset: 4294967289B], MEM[base: _811, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _811, offset: 4294967285B], MEM[base: _811, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _811, offset: 4294967293B], MEM[base: _811, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _811, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.547, ivtmp.1074
	mov	r0, r10	@ ivtmp.538, ivtmp.562
	mov	r1, #0	@ MisCnt,
.L99:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1468, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1469, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.547
	bne	.L99	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L100	@,
	add	r10, r10, #20	@ ivtmp.562, ivtmp.562,
	cmp	r10, r9	@ ivtmp.562, D.36505
	bne	.L101	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #28	@ D.36498,
	beq	.L20	@,
.L100:
	ldr	r9, .L417+96	@ ivtmp.531,
	add	r10, r9, #100	@ D.36505, ivtmp.531,
.L105:
	ldr	r3, [r9, #-3]	@ MEM[base: _148, offset: 4294967293B], MEM[base: _148, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _148, offset: 4294967285B], MEM[base: _148, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r9, #-7]	@ MEM[base: _148, offset: 4294967289B], MEM[base: _148, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _148, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.516, ivtmp.1074
	mov	r0, r9	@ ivtmp.507, ivtmp.531
	mov	r3, #0	@ MisCnt,
.L103:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1476, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1477, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.36505, ivtmp.516
	bne	.L103	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L104	@,
	add	r9, r9, #20	@ ivtmp.531, ivtmp.531,
	cmp	r9, r10	@ ivtmp.531, D.36505
	bne	.L105	@,
	cmp	r3, #1	@ D.36503,
	movne	r0, r3	@ D.36498, D.36503
	moveq	r0, #29	@ D.36498,
	b	.L20	@
.L411:
	ldr	r10, .L417+100	@ ivtmp.779,
	add	r7, sp, #12	@ ivtmp.1074,,
	add	r8, sp, #20	@ D.36505,,
	mov	r6, sp	@ tmp1603,
	add	r9, r10, #100	@ D.36505, ivtmp.779,
.L109:
	ldr	r2, [r10, #-7]	@ MEM[base: _837, offset: 4294967289B], MEM[base: _837, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _837, offset: 4294967285B], MEM[base: _837, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _837, offset: 4294967293B], MEM[base: _837, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _837, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.764, ivtmp.1074
	mov	r0, r10	@ ivtmp.755, ivtmp.779
	mov	r1, #0	@ MisCnt,
.L107:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1412, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1413, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r8	@ ivtmp.764, D.36505
	bne	.L107	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L108	@,
	add	r10, r10, #20	@ ivtmp.779, ivtmp.779,
	cmp	r10, r9	@ ivtmp.779, D.36505
	bne	.L109	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #24	@ D.36498,
	beq	.L20	@,
.L108:
	ldr	r10, .L417+104	@ ivtmp.748,
	add	r9, r10, #120	@ D.36505, ivtmp.748,
.L112:
	ldr	r3, [r10, #-3]	@ MEM[base: _164, offset: 4294967293B], MEM[base: _164, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _164, offset: 4294967285B], MEM[base: _164, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r10, #-7]	@ MEM[base: _164, offset: 4294967289B], MEM[base: _164, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _164, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.733, ivtmp.1074
	mov	r0, r10	@ ivtmp.724, ivtmp.748
	mov	r3, #0	@ MisCnt,
.L111:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1420, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1421, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.36505, ivtmp.733
	bne	.L111	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r0, #0	@ D.36503,
	movle	r0, #1	@ D.36503,
	cmp	r0, #0	@ D.36503,
	beq	.L104	@,
	add	r10, r10, #20	@ ivtmp.748, ivtmp.748,
	cmp	r10, r9	@ ivtmp.748, D.36505
	bne	.L112	@,
	cmp	r0, #1	@ D.36503,
	moveq	r0, #10	@ D.36498,
	b	.L20	@
.L418:
	.align	2
.L417:
	.word	__stack_chk_guard
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
.L412:
	ldr	r10, .L417+108	@ ivtmp.996,
	add	r7, sp, #12	@ ivtmp.1074,,
	add	r8, sp, #20	@ D.36505,,
	mov	r6, sp	@ tmp1603,
	add	r9, r10, #60	@ D.36505, ivtmp.996,
.L116:
	ldr	r2, [r10, #-7]	@ MEM[base: _863, offset: 4294967289B], MEM[base: _863, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _863, offset: 4294967285B], MEM[base: _863, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _863, offset: 4294967293B], MEM[base: _863, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _863, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.981, ivtmp.1074
	mov	r0, r10	@ ivtmp.972, ivtmp.996
	mov	r1, #0	@ MisCnt,
.L114:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1198, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1199, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r8	@ ivtmp.981, D.36505
	bne	.L114	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L115	@,
	add	r10, r10, #20	@ ivtmp.996, ivtmp.996,
	cmp	r10, r9	@ ivtmp.996, D.36505
	bne	.L116	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #23	@ D.36498,
	beq	.L20	@,
.L115:
	ldr	r10, .L417+112	@ ivtmp.965,
	add	r9, r10, #60	@ D.36505, ivtmp.965,
.L120:
	ldr	r2, [r10, #-7]	@ MEM[base: _876, offset: 4294967289B], MEM[base: _876, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _876, offset: 4294967285B], MEM[base: _876, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _876, offset: 4294967293B], MEM[base: _876, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _876, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.950, ivtmp.1074
	mov	r0, r10	@ ivtmp.941, ivtmp.965
	mov	r1, #0	@ MisCnt,
.L118:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1207, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1208, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.950
	bne	.L118	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L119	@,
	add	r10, r10, #20	@ ivtmp.965, ivtmp.965,
	cmp	r10, r9	@ ivtmp.965, D.36505
	bne	.L120	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #4	@ D.36498,
	beq	.L20	@,
.L119:
	ldr	r10, .L417+116	@ ivtmp.934,
	add	r9, r10, #100	@ D.36505, ivtmp.934,
.L124:
	ldr	r2, [r10, #-7]	@ MEM[base: _96, offset: 4294967289B], MEM[base: _96, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _96, offset: 4294967285B], MEM[base: _96, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _96, offset: 4294967293B], MEM[base: _96, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _96, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.919, ivtmp.1074
	mov	r0, r10	@ ivtmp.910, ivtmp.934
	mov	r1, #0	@ MisCnt,
.L122:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1221, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1224, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.919
	bne	.L122	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L123	@,
	add	r10, r10, #20	@ ivtmp.934, ivtmp.934,
	cmp	r10, r9	@ ivtmp.934, D.36505
	bne	.L124	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #31	@ D.36498,
	beq	.L20	@,
.L123:
	ldr	r10, .L417+120	@ ivtmp.903,
	add	r9, r10, #100	@ D.36505, ivtmp.903,
.L128:
	ldr	r2, [r10, #-7]	@ MEM[base: _57, offset: 4294967289B], MEM[base: _57, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _57, offset: 4294967285B], MEM[base: _57, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _57, offset: 4294967293B], MEM[base: _57, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _57, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.888, ivtmp.1074
	mov	r0, r10	@ ivtmp.879, ivtmp.903
	mov	r1, #0	@ MisCnt,
.L126:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1380, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1381, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.888
	bne	.L126	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L127	@,
	add	r10, r10, #20	@ ivtmp.903, ivtmp.903,
	cmp	r10, r9	@ ivtmp.903, D.36505
	bne	.L128	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #32	@ D.36498,
	beq	.L20	@,
.L127:
	ldr	r10, .L417+124	@ ivtmp.872,
	add	r9, r10, #100	@ D.36505, ivtmp.872,
.L132:
	ldr	r2, [r10, #-7]	@ MEM[base: _100, offset: 4294967289B], MEM[base: _100, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _100, offset: 4294967285B], MEM[base: _100, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _100, offset: 4294967293B], MEM[base: _100, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _100, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.857, ivtmp.1074
	mov	r0, r10	@ ivtmp.848, ivtmp.872
	mov	r1, #0	@ MisCnt,
.L130:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1388, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1389, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.857
	bne	.L130	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L131	@,
	add	r10, r10, #20	@ ivtmp.872, ivtmp.872,
	cmp	r10, r9	@ ivtmp.872, D.36505
	bne	.L132	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #33	@ D.36498,
	beq	.L20	@,
.L131:
	ldr	r10, .L417+128	@ ivtmp.841,
	add	r9, r10, #100	@ D.36505, ivtmp.841,
.L136:
	ldr	r2, [r10, #-7]	@ MEM[base: _928, offset: 4294967289B], MEM[base: _928, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _928, offset: 4294967285B], MEM[base: _928, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _928, offset: 4294967293B], MEM[base: _928, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _928, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.826, ivtmp.1074
	mov	r0, r10	@ ivtmp.817, ivtmp.841
	mov	r1, #0	@ MisCnt,
.L134:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1396, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1397, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.36505, ivtmp.826
	bne	.L134	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L135	@,
	add	r10, r10, #20	@ ivtmp.841, ivtmp.841,
	cmp	r10, r9	@ ivtmp.841, D.36505
	bne	.L136	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #34	@ D.36498,
	beq	.L20	@,
.L135:
	ldr	r9, .L417+132	@ ivtmp.810,
	add	r10, r9, #100	@ D.36505, ivtmp.810,
.L139:
	ldr	r3, [r9, #-3]	@ MEM[base: _941, offset: 4294967293B], MEM[base: _941, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _941, offset: 4294967285B], MEM[base: _941, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r9, #-7]	@ MEM[base: _941, offset: 4294967289B], MEM[base: _941, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _941, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.795, ivtmp.1074
	mov	r0, r9	@ ivtmp.786, ivtmp.810
	mov	r3, #0	@ MisCnt,
.L138:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1404, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1405, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.36505, ivtmp.795
	bne	.L138	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.36503,
	movle	r3, #1	@ D.36503,
	cmp	r3, #0	@ D.36503,
	beq	.L104	@,
	add	r9, r9, #20	@ ivtmp.810, ivtmp.810,
	cmp	r9, r10	@ ivtmp.810, D.36505
	bne	.L139	@,
	cmp	r3, #1	@ D.36503,
	movne	r0, r3	@ D.36498, D.36503
	moveq	r0, #35	@ D.36498,
	b	.L20	@
.L413:
	ldr	r10, .L417+136	@ ivtmp.1058,
	add	r7, sp, #12	@ ivtmp.1074,,
	add	r8, sp, #20	@ D.36505,,
	mov	r6, sp	@ tmp1603,
	add	r9, r10, #100	@ D.36505, ivtmp.1058,
.L143:
	ldr	r2, [r10, #-7]	@ MEM[base: _954, offset: 4294967289B], MEM[base: _954, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _954, offset: 4294967285B], MEM[base: _954, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r3, [r10, #-3]	@ MEM[base: _954, offset: 4294967293B], MEM[base: _954, offset: 4294967293B]
	str	ip, [sp]	@ MEM[base: _954, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r2, r7	@ ivtmp.1043, ivtmp.1074
	mov	r0, r10	@ ivtmp.1034, ivtmp.1058
	mov	r1, #0	@ MisCnt,
.L141:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1167, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1168, offset: 0B]
	rsb	r3, ip, r3	@ D.36500, D.36502, D.36500
	cmp	r3, #0	@ D.36500,
	rsblt	r3, r3, #0	@ D.36500, D.36500,
	cmp	r3, #2	@ D.36500,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r8	@ ivtmp.1043, D.36505
	bne	.L141	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.36503,
	movle	r1, #1	@ D.36503,
	cmp	r1, #0	@ D.36503,
	beq	.L142	@,
	add	r10, r10, #20	@ ivtmp.1058, ivtmp.1058,
	cmp	r10, r9	@ ivtmp.1058, D.36505
	bne	.L143	@,
	cmp	r1, #1	@ D.36503,
	moveq	r0, #5	@ D.36498,
	beq	.L20	@,
.L142:
	ldr	r10, .L417+140	@ ivtmp.1027,
	add	r9, r10, #100	@ D.36505, ivtmp.1027,
.L146:
	ldr	r3, [r10, #-3]	@ MEM[base: _967, offset: 4294967293B], MEM[base: _967, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r10, #-11]	@ MEM[base: _967, offset: 4294967285B], MEM[base: _967, offset: 4294967285B]
	mov	r0, r6	@, tmp1603
	ldr	r2, [r10, #-7]	@ MEM[base: _967, offset: 4294967289B], MEM[base: _967, offset: 4294967289B]
	str	ip, [sp]	@ MEM[base: _967, offset: 4294967285B], SmpPat.Comp
	stmib	sp, {r2, r3}	@,,
	bl	GetSample	@
	mov	r1, r7	@ ivtmp.1012, ivtmp.1074
	mov	r0, r10	@ ivtmp.1003, ivtmp.1027
	mov	r3, #0	@ MisCnt,
.L145:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.36502, MEM[base: _1175, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.36500, MEM[base: _1176, offset: 0B]
	rsb	r2, ip, r2	@ D.36500, D.36502, D.36500
	cmp	r2, #0	@ D.36500,
	rsblt	r2, r2, #0	@ D.36500, D.36500,
	cmp	r2, #2	@ D.36500,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.36505, ivtmp.1012
	bne	.L145	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r0, #0	@ D.36503,
	movle	r0, #1	@ D.36503,
	cmp	r0, #0	@ D.36503,
	beq	.L104	@,
	add	r10, r10, #20	@ ivtmp.1027, ivtmp.1027,
	cmp	r10, r9	@ ivtmp.1027, D.36505
	bne	.L146	@,
	cmp	r0, #1	@ D.36503,
	moveq	r0, #6	@ D.36498,
	b	.L20	@
.L416:
	mov	r0, r3	@ D.36498, D.36503
	b	.L20	@
.L415:
	bl	__stack_chk_fail	@
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
	add	lr, r0, #19	@ D.36537, pRef,
	mov	r0, #0	@ MisCnt,
.L420:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2	@ D.36534, MEM[base: _28, offset: 0B]
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2	@ D.36534, MEM[base: _27, offset: 0B]
	rsb	r3, ip, r3	@ D.36534, D.36534, D.36534
	cmp	r3, #0	@ D.36534,
	rsblt	r3, r3, #0	@ D.36534, D.36534,
	cmp	r3, #2	@ D.36534,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r2, lr	@ ivtmp.1098, D.36537
	bne	.L420	@,
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
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
