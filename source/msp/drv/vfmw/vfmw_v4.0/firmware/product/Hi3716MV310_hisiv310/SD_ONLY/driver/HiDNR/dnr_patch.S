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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(dnr_patch)
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
	ldr	r3, [r0, #8]	@ D.30693, pSmp_4(D)->Py
	cmp	r2, #1	@ D.30693,
	beq	.L3	@,
	cmp	r2, #2	@ D.30693,
	ldreq	r4, [r1, #16]	@ pRd, pDetPara_12(D)->pPicBufV
	bne	.L13	@,
.L5:
	ldr	r2, .L16	@ tmp164,
	ldr	r2, [r2]	@ D.30694, g_eVdmVersion
	cmp	r2, #1	@ D.30694,
	beq	.L14	@,
.L6:
	sub	r2, r2, #3	@ D.30696, D.30694,
	cmp	r2, #1	@ D.30696,
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
	ldr	r2, [r2]	@ D.30694, g_eVdmVersion
	cmp	r2, #1	@ D.30694,
	bne	.L6	@,
.L14:
	ldr	lr, [r1, #40]	@ pDetPara_12(D)->IsFrameStored, pDetPara_12(D)->IsFrameStored
	mov	r6, ip, asr #4	@ Mbx, D.30693,
	and	r2, r3, #15	@ PixY, D.30693,
	and	ip, ip, #15	@ PixX, D.30693,
	cmp	lr, #0	@ pDetPara_12(D)->IsFrameStored,
	beq	.L7	@,
	ldr	r1, [r1, #36]	@ pDetPara_12(D)->MbHeight, pDetPara_12(D)->MbHeight
	mov	r3, r3, asr #4	@ Mby, D.30693,
	mov	r2, r2, asl #4	@ D.30693, PixY,
	mla	r1, r1, r6, r3	@ D.30693, pDetPara_12(D)->MbHeight, Mbx, Mby
	add	r2, r2, r1, lsl #8	@ D.30693, D.30693, D.30693,
	add	ip, r2, ip	@ D.30693, D.30693, PixX
	add	r4, r4, ip	@ pRd, pRd, D.30693
	b	.L8	@
.L15:
	mov	r6, r3, asr #31	@ tmp192, D.30693,
	ldr	r1, [r1, #32]	@ pDetPara_12(D)->MbWidth, pDetPara_12(D)->MbWidth
	bic	lr, ip, #255	@ j, D.30693,
	add	r2, r3, #15	@ tmp209, D.30693,
	mov	r7, r6, lsr #28	@ tmp193, tmp192,
	cmp	lr, #0	@ j,
	add	r6, r3, r7	@ tmp194, D.30693, tmp193
	add	r5, lr, #255	@ tmp203, j,
	mov	r1, r1, asl #4	@ ImgWidthInPixAln, pDetPara_12(D)->MbWidth,
	and	r6, r6, #15	@ tmp195, tmp194,
	movge	r5, lr	@ j, j
	add	r1, r1, #255	@ D.30693, ImgWidthInPixAln,
	cmp	r3, #0	@ D.30693,
	rsb	r6, r7, r6	@ D.30693, tmp193, tmp195
	bic	r1, r1, #255	@ D.30693, D.30693,
	uxtb	lr, ip	@ D.30695, D.30693
	mov	r5, r5, asr #8	@ D.30693, j,
	movge	r2, r3	@ D.30693, D.30693
	add	ip, lr, r6, lsl #8	@ D.30695, D.30695, D.30693,
	mov	r1, r1, asl #4	@ Stride, D.30693,
	add	ip, ip, r5, lsl #12	@ D.30695, D.30695, D.30693,
	mov	r2, r2, asr #4	@ D.30693, D.30693,
	mla	r3, r1, r2, ip	@ D.30695, Stride, D.30693, D.30695
	add	r4, r4, r3	@ pRd, pRd, D.30695
	b	.L8	@
.L3:
	ldr	r4, [r1, #12]	@ pRd, pDetPara_12(D)->pPicBufU
	b	.L5	@
.L7:
	ldr	lr, [r1, #36]	@ pDetPara_12(D)->MbHeight, pDetPara_12(D)->MbHeight
	add	r5, r3, #31	@ tmp183, D.30693,
	cmp	r3, #0	@ D.30693,
	mov	r2, r2, asl #4	@ D.30693, PixY,
	mul	r1, lr, r6	@ D.30693, pDetPara_12(D)->MbHeight, Mbx
	movlt	r3, r5	@ D.30693, tmp183
	mov	r3, r3, asr #5	@ Mby, D.30693,
	add	r1, r1, #1	@ D.30693, D.30693,
	add	r1, r1, r1, lsr #31	@ tmp179, D.30693, D.30693,
	add	r1, r3, r1, asr #1	@ D.30693, Mby, tmp179,
	add	r2, r2, r1, lsl #8	@ D.30693, D.30693, D.30693,
	add	ip, r2, ip	@ D.30693, D.30693, PixX
	add	r4, r4, ip	@ pRd, pRd, D.30693
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
	cmp	r0, #0	@ pDetPara
	beq	.L386	@,
	ldr	r3, [r0, #8]	@ pDetPara_180(D)->pPicBufY, pDetPara_180(D)->pPicBufY
	cmp	r3, #0	@ pDetPara_180(D)->pPicBufY,
	beq	.L386	@,
	ldr	r2, [r0, #24]	@ D.31788, pDetPara_180(D)->PicHeight
	cmp	r2, #1088	@ D.31788,
	bgt	.L386	@,
	clz	r3, r2	@ tmp953, D.31788
	ldr	r1, [r0, #20]	@ D.31788, pDetPara_180(D)->PicWidth
	mov	r3, r3, lsr #5	@ tmp953, tmp953,
	cmp	r1, #1920	@ D.31788,
	orrgt	r3, r3, #1	@,, tmp954, tmp953
	cmp	r1, #0	@ D.31788,
	orreq	r3, r3, #1	@,, tmp960, tmp954
	cmp	r3, #0	@ tmp960,
	bne	.L386	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	sub	r3, r1, #720	@ D.31791, D.31788,
	mov	r4, r0	@ pDetPara, pDetPara
	sub	r0, r2, #576	@ D.31791, D.31788,
	clz	r3, r3	@ D.31791, D.31791
	clz	r0, r0	@ D.31791, D.31791
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r3, r3, lsr #5	@ D.31791, D.31791,
	mov	r0, r0, lsr #5	@ D.31791, D.31791,
	tst	r0, r3	@ D.31791, D.31791
	bne	.L409	@,
	sub	ip, r2, #480	@ D.31791, D.31788,
	clz	ip, ip	@ D.31791, D.31791
	mov	ip, ip, lsr #5	@ D.31791, D.31791,
	tst	ip, r3	@ D.31791, D.31791
	bne	.L410	@,
	sub	r3, r1, #704	@ D.31791, D.31788,
	clz	r3, r3	@ D.31791, D.31791
	mov	r3, r3, lsr #5	@ D.31791, D.31791,
	tst	r3, r0	@ D.31791, D.31791
	bne	.L411	@,
	tst	r3, ip	@ D.31791, D.31791
	bne	.L412	@,
	cmp	r2, #720	@ D.31788,
	cmpeq	r1, #1280	@, D.31788,
	beq	.L413	@,
	movw	r3, #1079	@ tmp1557,
	cmp	r2, r3	@ D.31788, tmp1557
	movle	r2, #0	@ tmp1562,
	movgt	r2, #1	@ tmp1562,
	cmp	r1, #1920	@ D.31788,
	movne	r2, #0	@ tmp1562,
	cmp	r2, #0	@ tmp1562,
	bne	.L414	@,
.L21:
	mov	r0, #0	@ D.31786,
.L363:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L386:
	mov	r0, #0	@ D.31786,
	bx	lr	@
.L409:
	ldr	r9, .L416	@ ivtmp.499,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1073,,
	add	r8, sp, #24	@ D.31793,,
	add	r7, r9, #100	@ D.31793, ivtmp.499,
.L25:
	ldr	r3, [r9, #-3]	@ MEM[base: _103, offset: 4294967293B], MEM[base: _103, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _103, offset: 4294967285B], MEM[base: _103, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _103, offset: 4294967289B], MEM[base: _103, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _103, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _103, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _103, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.484, ivtmp.1073
	mov	r0, r9	@ ivtmp.475, ivtmp.499
	mov	r3, #0	@ MisCnt,
.L23:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1481, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1482, offset: 0B]
	rsb	r2, ip, r2	@ D.31788, D.31790, D.31788
	cmp	r2, #0	@ D.31788,
	rsblt	r2, r2, #0	@ D.31788, D.31788,
	cmp	r2, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r1, r8	@ ivtmp.484, D.31793
	bne	.L23	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L24	@,
	add	r9, r9, #20	@ ivtmp.499, ivtmp.499,
	cmp	r9, r7	@ ivtmp.499, D.31793
	bne	.L25	@,
	cmp	r3, #1	@ D.31791,
	beq	.L415	@,
.L24:
	ldr	r9, .L416+4	@ ivtmp.468,
	add	r7, r9, #100	@ D.31793, ivtmp.468,
.L29:
	ldr	r2, [r9, #-7]	@ MEM[base: _548, offset: 4294967289B], MEM[base: _548, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _548, offset: 4294967285B], MEM[base: _548, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _548, offset: 4294967293B], MEM[base: _548, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _548, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _548, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _548, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.453, ivtmp.1073
	mov	r0, r9	@ ivtmp.444, ivtmp.468
	mov	r1, #0	@ MisCnt,
.L27:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1489, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1490, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31793, ivtmp.453
	bne	.L27	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L28	@,
	add	r9, r9, #20	@ ivtmp.468, ivtmp.468,
	cmp	r9, r7	@ ivtmp.468, D.31793
	bne	.L29	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #2	@ D.31786,
	beq	.L363	@,
.L28:
	ldr	r9, .L416+8	@ ivtmp.437,
	add	r7, r9, #100	@ D.31793, ivtmp.437,
.L33:
	ldr	r2, [r9, #-7]	@ MEM[base: _561, offset: 4294967289B], MEM[base: _561, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _561, offset: 4294967285B], MEM[base: _561, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _561, offset: 4294967293B], MEM[base: _561, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _561, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _561, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _561, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.422, ivtmp.1073
	mov	r0, r9	@ ivtmp.413, ivtmp.437
	mov	r1, #0	@ MisCnt,
.L31:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1497, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1498, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31793, ivtmp.422
	bne	.L31	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L32	@,
	add	r9, r9, #20	@ ivtmp.437, ivtmp.437,
	cmp	r9, r7	@ ivtmp.437, D.31793
	bne	.L33	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #3	@ D.31786,
	beq	.L363	@,
.L32:
	ldr	r9, .L416+12	@ ivtmp.406,
	add	r7, r9, #100	@ D.31793, ivtmp.406,
.L37:
	ldr	r2, [r9, #-7]	@ MEM[base: _574, offset: 4294967289B], MEM[base: _574, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _574, offset: 4294967285B], MEM[base: _574, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _574, offset: 4294967293B], MEM[base: _574, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _574, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _574, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _574, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.391, ivtmp.1073
	mov	r0, r9	@ ivtmp.382, ivtmp.406
	mov	r1, #0	@ MisCnt,
.L35:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1505, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1506, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31793, ivtmp.391
	bne	.L35	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L36	@,
	add	r9, r9, #20	@ ivtmp.406, ivtmp.406,
	cmp	r9, r7	@ ivtmp.406, D.31793
	bne	.L37	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #8	@ D.31786,
	beq	.L363	@,
.L36:
	ldr	r9, .L416+16	@ ivtmp.375,
	add	r7, r9, #100	@ D.31793, ivtmp.375,
.L41:
	ldr	r2, [r9, #-7]	@ MEM[base: _587, offset: 4294967289B], MEM[base: _587, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _587, offset: 4294967285B], MEM[base: _587, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _587, offset: 4294967293B], MEM[base: _587, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _587, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _587, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _587, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.360, ivtmp.1073
	mov	r0, r9	@ ivtmp.351, ivtmp.375
	mov	r1, #0	@ MisCnt,
.L39:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1513, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1514, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31793, ivtmp.360
	bne	.L39	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L40	@,
	add	r9, r9, #20	@ ivtmp.375, ivtmp.375,
	cmp	r9, r7	@ ivtmp.375, D.31793
	bne	.L41	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #9	@ D.31786,
	beq	.L363	@,
.L40:
	ldr	r9, .L416+20	@ ivtmp.344,
	add	r7, r9, #100	@ D.31793, ivtmp.344,
.L45:
	ldr	r2, [r9, #-7]	@ MEM[base: _600, offset: 4294967289B], MEM[base: _600, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _600, offset: 4294967285B], MEM[base: _600, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _600, offset: 4294967293B], MEM[base: _600, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _600, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _600, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _600, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.329, ivtmp.1073
	mov	r0, r9	@ ivtmp.320, ivtmp.344
	mov	r1, #0	@ MisCnt,
.L43:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1521, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1522, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31793, ivtmp.329
	bne	.L43	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L44	@,
	add	r9, r9, #20	@ ivtmp.344, ivtmp.344,
	cmp	r9, r7	@ ivtmp.344, D.31793
	bne	.L45	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #11	@ D.31786,
	beq	.L363	@,
.L44:
	ldr	r7, .L416+24	@ ivtmp.313,
	add	r9, r7, #100	@ D.31793, ivtmp.313,
.L49:
	ldr	r2, [r7, #-7]	@ MEM[base: _613, offset: 4294967289B], MEM[base: _613, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _613, offset: 4294967285B], MEM[base: _613, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _613, offset: 4294967293B], MEM[base: _613, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _613, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _613, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _613, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.298, ivtmp.1073
	mov	r0, r7	@ ivtmp.289, ivtmp.313
	mov	r1, #0	@ MisCnt,
.L47:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1529, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1530, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31793, ivtmp.298
	bne	.L47	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L48	@,
	add	r7, r7, #20	@ ivtmp.313, ivtmp.313,
	cmp	r7, r9	@ ivtmp.313, D.31793
	bne	.L49	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #12	@ D.31786,
	beq	.L363	@,
.L48:
	ldr	r7, .L416+28	@ ivtmp.282,
	add	r9, r7, #100	@ D.31793, ivtmp.282,
.L53:
	ldr	r2, [r7, #-7]	@ MEM[base: _626, offset: 4294967289B], MEM[base: _626, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _626, offset: 4294967285B], MEM[base: _626, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _626, offset: 4294967293B], MEM[base: _626, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _626, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _626, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _626, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.267, ivtmp.1073
	mov	r0, r7	@ ivtmp.258, ivtmp.282
	mov	r1, #0	@ MisCnt,
.L51:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1537, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1538, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31793, ivtmp.267
	bne	.L51	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L52	@,
	add	r7, r7, #20	@ ivtmp.282, ivtmp.282,
	cmp	r7, r9	@ ivtmp.282, D.31793
	bne	.L53	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #13	@ D.31786,
	beq	.L363	@,
.L52:
	ldr	r7, .L416+32	@ ivtmp.251,
	add	r9, r7, #100	@ D.31793, ivtmp.251,
.L56:
	ldr	r2, [r7, #-7]	@ MEM[base: _639, offset: 4294967289B], MEM[base: _639, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _639, offset: 4294967285B], MEM[base: _639, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _639, offset: 4294967293B], MEM[base: _639, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _639, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _639, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _639, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.236, ivtmp.1073
	mov	r0, r7	@ ivtmp.227, ivtmp.251
	mov	r2, #0	@ MisCnt,
.L54:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1545, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1546, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r2, r2, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.31793, ivtmp.236
	bne	.L54	@,
	cmp	r2, #2	@ MisCnt,
	movgt	r2, #0	@ D.31791,
	movle	r2, #1	@ D.31791,
	cmp	r2, #0	@ D.31791,
	beq	.L55	@,
	add	r7, r7, #20	@ ivtmp.251, ivtmp.251,
	cmp	r7, r9	@ ivtmp.251, D.31793
	bne	.L56	@,
	cmp	r2, #1	@ D.31791,
	moveq	r0, #14	@ D.31786,
	beq	.L363	@,
.L55:
	ldr	r7, .L416+36	@ ivtmp.220,
	add	r9, r7, #100	@ D.31793, ivtmp.220,
.L59:
	ldr	r2, [r7, #-7]	@ MEM[base: _328, offset: 4294967289B], MEM[base: _328, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _328, offset: 4294967285B], MEM[base: _328, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _328, offset: 4294967293B], MEM[base: _328, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _328, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _328, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _328, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.205, ivtmp.1073
	mov	r0, r7	@ ivtmp.196, ivtmp.220
	mov	r2, #0	@ MisCnt,
.L57:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1553, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1554, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r2, r2, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.31793, ivtmp.205
	bne	.L57	@,
	cmp	r2, #2	@ MisCnt,
	movgt	r2, #0	@ D.31791,
	movle	r2, #1	@ D.31791,
	cmp	r2, #0	@ D.31791,
	beq	.L58	@,
	add	r7, r7, #20	@ ivtmp.220, ivtmp.220,
	cmp	r7, r9	@ ivtmp.220, D.31793
	bne	.L59	@,
	cmp	r2, #1	@ D.31791,
	moveq	r0, #15	@ D.31786,
	beq	.L363	@,
.L58:
	ldr	r7, .L416+40	@ ivtmp.189,
	add	r9, r7, #100	@ D.31793, ivtmp.189,
.L62:
	ldr	r3, [r7, #-3]	@ MEM[base: _248, offset: 4294967293B], MEM[base: _248, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _248, offset: 4294967285B], MEM[base: _248, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r7, #-7]	@ MEM[base: _248, offset: 4294967289B], MEM[base: _248, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _248, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _248, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _248, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.174, ivtmp.1073
	mov	r0, r7	@ ivtmp.165, ivtmp.189
	mov	r3, #0	@ MisCnt,
.L60:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1561, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1562, offset: 0B]
	rsb	r2, ip, r2	@ D.31788, D.31790, D.31788
	cmp	r2, #0	@ D.31788,
	rsblt	r2, r2, #0	@ D.31788, D.31788,
	cmp	r2, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.31793, ivtmp.174
	bne	.L60	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L61	@,
	add	r7, r7, #20	@ ivtmp.189, ivtmp.189,
	cmp	r7, r9	@ ivtmp.189, D.31793
	bne	.L62	@,
	cmp	r3, #1	@ D.31791,
	moveq	r0, #16	@ D.31786,
	beq	.L363	@,
.L61:
	ldr	r6, .L416+44	@ ivtmp.155,
	add	r7, r6, #100	@ D.31793, ivtmp.155,
.L65:
	ldr	r2, [r6, #4]	@ MEM[base: _1570, offset: 4B], MEM[base: _1570, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1570, offset: 8B], MEM[base: _1570, offset: 8B]
	mov	r0, r5	@, tmp1606
	ldr	ip, [r6]	@ MEM[base: _1570, offset: 0B], MEM[base: _1570, offset: 0B]
	str	r2, [sp, #8]	@ MEM[base: _1570, offset: 4B], SmpPat.Px
	str	r3, [sp, #12]	@ MEM[base: _1570, offset: 8B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _1570, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L63:
	add	r1, r6, r2	@ D.31789, ivtmp.155, i
	add	r0, r5, r2	@ D.31794, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _962, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _1572, offset: 12B]
	rsb	r1, r0, r1	@ D.31788, D.31788, D.31788
	cmp	r1, #0	@ D.31788,
	rsblt	r1, r1, #0	@ D.31788, D.31788,
	cmp	r1, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L63	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L64	@,
	add	r6, r6, #20	@ ivtmp.155, ivtmp.155,
	cmp	r6, r7	@ ivtmp.155, D.31793
	bne	.L65	@,
	cmp	r3, #1	@ D.31791,
	moveq	r0, #17	@ D.31786,
	beq	.L363	@,
.L64:
	ldr	r6, .L416+48	@ ivtmp.125,
	add	r7, r6, #100	@ D.31793, ivtmp.125,
.L68:
	ldr	r2, [r6, #4]	@ MEM[base: _1576, offset: 4B], MEM[base: _1576, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1576, offset: 8B], MEM[base: _1576, offset: 8B]
	mov	r0, r5	@, tmp1606
	ldr	ip, [r6]	@ MEM[base: _1576, offset: 0B], MEM[base: _1576, offset: 0B]
	str	r2, [sp, #8]	@ MEM[base: _1576, offset: 4B], SmpPat.Px
	str	r3, [sp, #12]	@ MEM[base: _1576, offset: 8B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _1576, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L66:
	add	r1, r6, r2	@ D.31789, ivtmp.125, i
	add	r0, r5, r2	@ D.31794, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _316, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _1578, offset: 12B]
	rsb	r1, r0, r1	@ D.31788, D.31788, D.31788
	cmp	r1, #0	@ D.31788,
	rsblt	r1, r1, #0	@ D.31788, D.31788,
	cmp	r1, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L66	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L67	@,
	add	r6, r6, #20	@ ivtmp.125, ivtmp.125,
	cmp	r6, r7	@ ivtmp.125, D.31793
	bne	.L68	@,
	cmp	r3, #1	@ D.31791,
	moveq	r0, #18	@ D.31786,
	beq	.L363	@,
.L67:
	ldr	r6, .L416+52	@ ivtmp.95,
	add	r7, r6, #100	@ D.31793, ivtmp.95,
.L71:
	ldr	r2, [r6, #4]	@ MEM[base: _1582, offset: 4B], MEM[base: _1582, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1582, offset: 8B], MEM[base: _1582, offset: 8B]
	mov	r0, r5	@, tmp1606
	ldr	ip, [r6]	@ MEM[base: _1582, offset: 0B], MEM[base: _1582, offset: 0B]
	str	r2, [sp, #8]	@ MEM[base: _1582, offset: 4B], SmpPat.Px
	str	r3, [sp, #12]	@ MEM[base: _1582, offset: 8B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _1582, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L69:
	add	r1, r6, r2	@ D.31789, ivtmp.95, i
	add	r0, r5, r2	@ D.31794, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _1186, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _1584, offset: 12B]
	rsb	r1, r0, r1	@ D.31788, D.31788, D.31788
	cmp	r1, #0	@ D.31788,
	rsblt	r1, r1, #0	@ D.31788, D.31788,
	cmp	r1, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L69	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L70	@,
	add	r6, r6, #20	@ ivtmp.95, ivtmp.95,
	cmp	r6, r7	@ ivtmp.95, D.31793
	bne	.L71	@,
	cmp	r3, #1	@ D.31791,
	moveq	r0, #19	@ D.31786,
	beq	.L363	@,
.L70:
	ldr	r6, .L416+56	@ ivtmp.65,
	add	r7, r6, #100	@ D.31793, ivtmp.65,
.L74:
	ldr	r2, [r6, #4]	@ MEM[base: _1588, offset: 4B], MEM[base: _1588, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1588, offset: 8B], MEM[base: _1588, offset: 8B]
	mov	r0, r5	@, tmp1606
	ldr	ip, [r6]	@ MEM[base: _1588, offset: 0B], MEM[base: _1588, offset: 0B]
	str	r2, [sp, #8]	@ MEM[base: _1588, offset: 4B], SmpPat.Px
	str	r3, [sp, #12]	@ MEM[base: _1588, offset: 8B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _1588, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L72:
	add	r1, r6, r2	@ D.31789, ivtmp.65, i
	add	r0, r5, r2	@ D.31794, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _901, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _1590, offset: 12B]
	rsb	r1, r0, r1	@ D.31788, D.31788, D.31788
	cmp	r1, #0	@ D.31788,
	rsblt	r1, r1, #0	@ D.31788, D.31788,
	cmp	r1, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L72	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L73	@,
	add	r6, r6, #20	@ ivtmp.65, ivtmp.65,
	cmp	r6, r7	@ ivtmp.65, D.31793
	bne	.L74	@,
	cmp	r3, #1	@ D.31791,
	moveq	r0, #26	@ D.31786,
	beq	.L363	@,
.L73:
	ldr	r6, .L416+60	@ ivtmp.35,
	add	r7, r6, #100	@ D.31793, ivtmp.35,
.L76:
	ldr	r2, [r6, #4]	@ MEM[base: _1594, offset: 4B], MEM[base: _1594, offset: 4B]
	mov	r1, r4	@, pDetPara
	ldr	r3, [r6, #8]	@ MEM[base: _1594, offset: 8B], MEM[base: _1594, offset: 8B]
	mov	r0, r5	@, tmp1606
	ldr	ip, [r6]	@ MEM[base: _1594, offset: 0B], MEM[base: _1594, offset: 0B]
	str	r2, [sp, #8]	@ MEM[base: _1594, offset: 4B], SmpPat.Px
	str	r3, [sp, #12]	@ MEM[base: _1594, offset: 8B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _1594, offset: 0B], SmpPat.Comp
	bl	GetSample	@
	mov	r3, #0	@ MisCnt,
	mov	r2, r3	@ i, MisCnt
.L75:
	add	r1, r6, r2	@ D.31789, ivtmp.35, i
	add	r0, r5, r2	@ D.31794, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _1598, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31788, MEM[base: _1596, offset: 12B]
	rsb	r1, r0, r1	@ D.31788, D.31788, D.31788
	cmp	r1, #0	@ D.31788,
	rsblt	r1, r1, #0	@ D.31788, D.31788,
	cmp	r1, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L75	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L21	@,
	add	r6, r6, #20	@ ivtmp.35, ivtmp.35,
	cmp	r6, r7	@ ivtmp.35, D.31793
	bne	.L76	@,
	cmp	r3, #1	@ D.31791,
	movne	r0, r3	@ D.31786, D.31791
	moveq	r0, #30	@ D.31786,
	b	.L363	@
.L414:
	ldr	r9, .L416+64	@ ivtmp.1088,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1073,,
	add	r8, sp, #24	@ D.31793,,
	add	r7, r9, #100	@ D.31793, ivtmp.1088,
.L146:
	ldr	r3, [r9, #-3]	@ MEM[base: _977, offset: 4294967293B], MEM[base: _977, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _977, offset: 4294967285B], MEM[base: _977, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _977, offset: 4294967289B], MEM[base: _977, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _977, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _977, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _977, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.1073, ivtmp.1073
	mov	r0, r9	@ ivtmp.1064, ivtmp.1088
	mov	r3, #0	@ MisCnt,
.L145:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1155, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1156, offset: 0B]
	rsb	r2, ip, r2	@ D.31788, D.31790, D.31788
	cmp	r2, #0	@ D.31788,
	rsblt	r2, r2, #0	@ D.31788, D.31788,
	cmp	r2, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r1, r8	@ ivtmp.1073, D.31793
	bne	.L145	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L21	@,
	add	r9, r9, #20	@ ivtmp.1088, ivtmp.1088,
	cmp	r9, r7	@ ivtmp.1088, D.31793
	bne	.L146	@,
	cmp	r3, #1	@ D.31791,
	movne	r0, r3	@ D.31786, D.31791
	moveq	r0, #7	@ D.31786,
	b	.L363	@
.L410:
	ldr	r9, .L416+68	@ ivtmp.716,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1073,,
	add	r7, sp, #24	@ D.31793,,
	add	r8, r9, #100	@ D.31793, ivtmp.716,
.L80:
	ldr	r2, [r9, #-7]	@ MEM[base: _743, offset: 4294967289B], MEM[base: _743, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _743, offset: 4294967285B], MEM[base: _743, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _743, offset: 4294967293B], MEM[base: _743, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _743, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _743, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _743, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.701, ivtmp.1073
	mov	r0, r9	@ ivtmp.692, ivtmp.716
	mov	r1, #0	@ MisCnt,
.L78:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1425, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1426, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.701, D.31793
	bne	.L78	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L79	@,
	add	r9, r9, #20	@ ivtmp.716, ivtmp.716,
	cmp	r9, r8	@ ivtmp.716, D.31793
	bne	.L80	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #22	@ D.31786,
	beq	.L363	@,
.L79:
	ldr	r9, .L416+72	@ ivtmp.685,
	add	r8, r9, #100	@ D.31793, ivtmp.685,
.L84:
	ldr	r2, [r9, #-7]	@ MEM[base: _756, offset: 4294967289B], MEM[base: _756, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _756, offset: 4294967285B], MEM[base: _756, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _756, offset: 4294967293B], MEM[base: _756, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _756, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _756, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _756, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.670, ivtmp.1073
	mov	r0, r9	@ ivtmp.661, ivtmp.685
	mov	r1, #0	@ MisCnt,
.L82:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1433, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1434, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.670
	bne	.L82	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L83	@,
	add	r9, r9, #20	@ ivtmp.685, ivtmp.685,
	cmp	r9, r8	@ ivtmp.685, D.31793
	bne	.L84	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #20	@ D.31786,
	beq	.L363	@,
.L83:
	ldr	r9, .L416+76	@ ivtmp.654,
	add	r8, r9, #100	@ D.31793, ivtmp.654,
.L88:
	ldr	r2, [r9, #-7]	@ MEM[base: _769, offset: 4294967289B], MEM[base: _769, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _769, offset: 4294967285B], MEM[base: _769, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _769, offset: 4294967293B], MEM[base: _769, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _769, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _769, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _769, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.639, ivtmp.1073
	mov	r0, r9	@ ivtmp.630, ivtmp.654
	mov	r1, #0	@ MisCnt,
.L86:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1441, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1442, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.639
	bne	.L86	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L87	@,
	add	r9, r9, #20	@ ivtmp.654, ivtmp.654,
	cmp	r9, r8	@ ivtmp.654, D.31793
	bne	.L88	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #21	@ D.31786,
	beq	.L363	@,
.L87:
	ldr	r9, .L416+80	@ ivtmp.623,
	add	r8, r9, #100	@ D.31793, ivtmp.623,
.L92:
	ldr	r2, [r9, #-7]	@ MEM[base: _782, offset: 4294967289B], MEM[base: _782, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _782, offset: 4294967285B], MEM[base: _782, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _782, offset: 4294967293B], MEM[base: _782, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _782, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _782, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _782, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.608, ivtmp.1073
	mov	r0, r9	@ ivtmp.599, ivtmp.623
	mov	r1, #0	@ MisCnt,
.L90:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1449, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1450, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.608
	bne	.L90	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L91	@,
	add	r9, r9, #20	@ ivtmp.623, ivtmp.623,
	cmp	r9, r8	@ ivtmp.623, D.31793
	bne	.L92	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #25	@ D.31786,
	beq	.L363	@,
.L91:
	ldr	r9, .L416+84	@ ivtmp.592,
	add	r8, r9, #100	@ D.31793, ivtmp.592,
.L96:
	ldr	r2, [r9, #-7]	@ MEM[base: _795, offset: 4294967289B], MEM[base: _795, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _795, offset: 4294967285B], MEM[base: _795, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _795, offset: 4294967293B], MEM[base: _795, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _795, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _795, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _795, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.577, ivtmp.1073
	mov	r0, r9	@ ivtmp.568, ivtmp.592
	mov	r1, #0	@ MisCnt,
.L94:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1457, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1458, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.577
	bne	.L94	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L95	@,
	add	r9, r9, #20	@ ivtmp.592, ivtmp.592,
	cmp	r9, r8	@ ivtmp.592, D.31793
	bne	.L96	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #27	@ D.31786,
	beq	.L363	@,
.L95:
	ldr	r8, .L416+88	@ ivtmp.561,
	add	r9, r8, #100	@ D.31793, ivtmp.561,
.L100:
	ldr	r2, [r8, #-7]	@ MEM[base: _808, offset: 4294967289B], MEM[base: _808, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _808, offset: 4294967285B], MEM[base: _808, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r8, #-3]	@ MEM[base: _808, offset: 4294967293B], MEM[base: _808, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _808, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _808, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _808, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.546, ivtmp.1073
	mov	r0, r8	@ ivtmp.537, ivtmp.561
	mov	r1, #0	@ MisCnt,
.L98:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1465, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1466, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.546
	bne	.L98	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L99	@,
	add	r8, r8, #20	@ ivtmp.561, ivtmp.561,
	cmp	r8, r9	@ ivtmp.561, D.31793
	bne	.L100	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #28	@ D.31786,
	beq	.L363	@,
.L99:
	ldr	r8, .L416+92	@ ivtmp.530,
	add	r9, r8, #100	@ D.31793, ivtmp.530,
.L103:
	ldr	r3, [r8, #-3]	@ MEM[base: _148, offset: 4294967293B], MEM[base: _148, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _148, offset: 4294967285B], MEM[base: _148, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r8, #-7]	@ MEM[base: _148, offset: 4294967289B], MEM[base: _148, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _148, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _148, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _148, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.515, ivtmp.1073
	mov	r0, r8	@ ivtmp.506, ivtmp.530
	mov	r3, #0	@ MisCnt,
.L102:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1473, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1474, offset: 0B]
	rsb	r2, ip, r2	@ D.31788, D.31790, D.31788
	cmp	r2, #0	@ D.31788,
	rsblt	r2, r2, #0	@ D.31788, D.31788,
	cmp	r2, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31793, ivtmp.515
	bne	.L102	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L21	@,
	add	r8, r8, #20	@ ivtmp.530, ivtmp.530,
	cmp	r8, r9	@ ivtmp.530, D.31793
	bne	.L103	@,
	cmp	r3, #1	@ D.31791,
	movne	r0, r3	@ D.31786, D.31791
	moveq	r0, #29	@ D.31786,
	b	.L363	@
.L411:
	ldr	r9, .L416+96	@ ivtmp.778,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1073,,
	add	r7, sp, #24	@ D.31793,,
	add	r8, r9, #100	@ D.31793, ivtmp.778,
.L107:
	ldr	r2, [r9, #-7]	@ MEM[base: _546, offset: 4294967289B], MEM[base: _546, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _546, offset: 4294967285B], MEM[base: _546, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _546, offset: 4294967293B], MEM[base: _546, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _546, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _546, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _546, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.763, ivtmp.1073
	mov	r0, r9	@ ivtmp.754, ivtmp.778
	mov	r1, #0	@ MisCnt,
.L105:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1409, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1410, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.763, D.31793
	bne	.L105	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L106	@,
	add	r9, r9, #20	@ ivtmp.778, ivtmp.778,
	cmp	r9, r8	@ ivtmp.778, D.31793
	bne	.L107	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #24	@ D.31786,
	beq	.L363	@,
.L106:
	ldr	r9, .L416+100	@ ivtmp.747,
	add	r8, r9, #120	@ D.31793, ivtmp.747,
.L110:
	ldr	r3, [r9, #-3]	@ MEM[base: _164, offset: 4294967293B], MEM[base: _164, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _164, offset: 4294967285B], MEM[base: _164, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _164, offset: 4294967289B], MEM[base: _164, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _164, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _164, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _164, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.732, ivtmp.1073
	mov	r0, r9	@ ivtmp.723, ivtmp.747
	mov	r3, #0	@ MisCnt,
.L109:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1417, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1418, offset: 0B]
	rsb	r2, ip, r2	@ D.31788, D.31790, D.31788
	cmp	r2, #0	@ D.31788,
	rsblt	r2, r2, #0	@ D.31788, D.31788,
	cmp	r2, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31793, ivtmp.732
	bne	.L109	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r0, #0	@ D.31791,
	movle	r0, #1	@ D.31791,
	cmp	r0, #0	@ D.31791,
	beq	.L21	@,
	add	r9, r9, #20	@ ivtmp.747, ivtmp.747,
	cmp	r9, r8	@ ivtmp.747, D.31793
	bne	.L110	@,
	cmp	r0, #1	@ D.31791,
	moveq	r0, #10	@ D.31786,
	b	.L363	@
.L417:
	.align	2
.L416:
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
	.word	.LANCHOR0+1100
	.word	.LANCHOR0+1200
	.word	.LANCHOR0+1300
	.word	.LANCHOR0+1400
	.word	.LANCHOR0+1500
	.word	.LANCHOR0+3391
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
	ldr	r9, .L416+104	@ ivtmp.995,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1073,,
	add	r7, sp, #24	@ D.31793,,
	add	r8, r9, #60	@ D.31793, ivtmp.995,
.L114:
	ldr	r2, [r9, #-7]	@ MEM[base: _860, offset: 4294967289B], MEM[base: _860, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _860, offset: 4294967285B], MEM[base: _860, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _860, offset: 4294967293B], MEM[base: _860, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _860, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _860, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _860, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.980, ivtmp.1073
	mov	r0, r9	@ ivtmp.971, ivtmp.995
	mov	r1, #0	@ MisCnt,
.L112:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1195, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1196, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.980, D.31793
	bne	.L112	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L113	@,
	add	r9, r9, #20	@ ivtmp.995, ivtmp.995,
	cmp	r9, r8	@ ivtmp.995, D.31793
	bne	.L114	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #23	@ D.31786,
	beq	.L363	@,
.L113:
	ldr	r9, .L416+108	@ ivtmp.964,
	add	r8, r9, #60	@ D.31793, ivtmp.964,
.L118:
	ldr	r2, [r9, #-7]	@ MEM[base: _65, offset: 4294967289B], MEM[base: _65, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _65, offset: 4294967285B], MEM[base: _65, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _65, offset: 4294967293B], MEM[base: _65, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _65, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _65, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _65, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.949, ivtmp.1073
	mov	r0, r9	@ ivtmp.940, ivtmp.964
	mov	r1, #0	@ MisCnt,
.L116:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1204, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1205, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.949
	bne	.L116	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L117	@,
	add	r9, r9, #20	@ ivtmp.964, ivtmp.964,
	cmp	r9, r8	@ ivtmp.964, D.31793
	bne	.L118	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #4	@ D.31786,
	beq	.L363	@,
.L117:
	ldr	r9, .L416+112	@ ivtmp.933,
	add	r8, r9, #100	@ D.31793, ivtmp.933,
.L122:
	ldr	r2, [r9, #-7]	@ MEM[base: _61, offset: 4294967289B], MEM[base: _61, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _61, offset: 4294967285B], MEM[base: _61, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _61, offset: 4294967293B], MEM[base: _61, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _61, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _61, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _61, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.918, ivtmp.1073
	mov	r0, r9	@ ivtmp.909, ivtmp.933
	mov	r1, #0	@ MisCnt,
.L120:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1221, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1370, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.918
	bne	.L120	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L121	@,
	add	r9, r9, #20	@ ivtmp.933, ivtmp.933,
	cmp	r9, r8	@ ivtmp.933, D.31793
	bne	.L122	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #31	@ D.31786,
	beq	.L363	@,
.L121:
	ldr	r9, .L416+116	@ ivtmp.902,
	add	r8, r9, #100	@ D.31793, ivtmp.902,
.L126:
	ldr	r2, [r9, #-7]	@ MEM[base: _57, offset: 4294967289B], MEM[base: _57, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _57, offset: 4294967285B], MEM[base: _57, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _57, offset: 4294967293B], MEM[base: _57, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _57, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _57, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _57, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.887, ivtmp.1073
	mov	r0, r9	@ ivtmp.878, ivtmp.902
	mov	r1, #0	@ MisCnt,
.L124:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1377, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1378, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.887
	bne	.L124	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L125	@,
	add	r9, r9, #20	@ ivtmp.902, ivtmp.902,
	cmp	r9, r8	@ ivtmp.902, D.31793
	bne	.L126	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #32	@ D.31786,
	beq	.L363	@,
.L125:
	ldr	r9, .L416+120	@ ivtmp.871,
	add	r8, r9, #100	@ D.31793, ivtmp.871,
.L130:
	ldr	r2, [r9, #-7]	@ MEM[base: _100, offset: 4294967289B], MEM[base: _100, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _100, offset: 4294967285B], MEM[base: _100, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _100, offset: 4294967293B], MEM[base: _100, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _100, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _100, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _100, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.856, ivtmp.1073
	mov	r0, r9	@ ivtmp.847, ivtmp.871
	mov	r1, #0	@ MisCnt,
.L128:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1385, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1386, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.856
	bne	.L128	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L129	@,
	add	r9, r9, #20	@ ivtmp.871, ivtmp.871,
	cmp	r9, r8	@ ivtmp.871, D.31793
	bne	.L130	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #33	@ D.31786,
	beq	.L363	@,
.L129:
	ldr	r8, .L416+124	@ ivtmp.840,
	add	r9, r8, #100	@ D.31793, ivtmp.840,
.L134:
	ldr	r2, [r8, #-7]	@ MEM[base: _925, offset: 4294967289B], MEM[base: _925, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _925, offset: 4294967285B], MEM[base: _925, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r8, #-3]	@ MEM[base: _925, offset: 4294967293B], MEM[base: _925, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _925, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _925, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _925, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.825, ivtmp.1073
	mov	r0, r8	@ ivtmp.816, ivtmp.840
	mov	r1, #0	@ MisCnt,
.L132:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1393, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1394, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31793, ivtmp.825
	bne	.L132	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L133	@,
	add	r8, r8, #20	@ ivtmp.840, ivtmp.840,
	cmp	r8, r9	@ ivtmp.840, D.31793
	bne	.L134	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #34	@ D.31786,
	beq	.L363	@,
.L133:
	ldr	r8, .L416+128	@ ivtmp.809,
	add	r9, r8, #100	@ D.31793, ivtmp.809,
.L137:
	ldr	r3, [r8, #-3]	@ MEM[base: _938, offset: 4294967293B], MEM[base: _938, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _938, offset: 4294967285B], MEM[base: _938, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r8, #-7]	@ MEM[base: _938, offset: 4294967289B], MEM[base: _938, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _938, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _938, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _938, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.794, ivtmp.1073
	mov	r0, r8	@ ivtmp.785, ivtmp.809
	mov	r3, #0	@ MisCnt,
.L136:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1401, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1402, offset: 0B]
	rsb	r2, ip, r2	@ D.31788, D.31790, D.31788
	cmp	r2, #0	@ D.31788,
	rsblt	r2, r2, #0	@ D.31788, D.31788,
	cmp	r2, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31793, ivtmp.794
	bne	.L136	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31791,
	movle	r3, #1	@ D.31791,
	cmp	r3, #0	@ D.31791,
	beq	.L21	@,
	add	r8, r8, #20	@ ivtmp.809, ivtmp.809,
	cmp	r8, r9	@ ivtmp.809, D.31793
	bne	.L137	@,
	cmp	r3, #1	@ D.31791,
	movne	r0, r3	@ D.31786, D.31791
	moveq	r0, #35	@ D.31786,
	b	.L363	@
.L413:
	ldr	r9, .L416+132	@ ivtmp.1057,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1073,,
	add	r7, sp, #24	@ D.31793,,
	add	r8, r9, #100	@ D.31793, ivtmp.1057,
.L141:
	ldr	r2, [r9, #-7]	@ MEM[base: _951, offset: 4294967289B], MEM[base: _951, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _951, offset: 4294967285B], MEM[base: _951, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _951, offset: 4294967293B], MEM[base: _951, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _951, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _951, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _951, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.1042, ivtmp.1073
	mov	r0, r9	@ ivtmp.1033, ivtmp.1057
	mov	r1, #0	@ MisCnt,
.L139:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1164, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1165, offset: 0B]
	rsb	r3, ip, r3	@ D.31788, D.31790, D.31788
	cmp	r3, #0	@ D.31788,
	rsblt	r3, r3, #0	@ D.31788, D.31788,
	cmp	r3, #2	@ D.31788,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.1042, D.31793
	bne	.L139	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31791,
	movle	r1, #1	@ D.31791,
	cmp	r1, #0	@ D.31791,
	beq	.L140	@,
	add	r9, r9, #20	@ ivtmp.1057, ivtmp.1057,
	cmp	r9, r8	@ ivtmp.1057, D.31793
	bne	.L141	@,
	cmp	r1, #1	@ D.31791,
	moveq	r0, #5	@ D.31786,
	beq	.L363	@,
.L140:
	ldr	r9, .L416+136	@ ivtmp.1026,
	add	r8, r9, #100	@ D.31793, ivtmp.1026,
.L144:
	ldr	r3, [r9, #-3]	@ MEM[base: _964, offset: 4294967293B], MEM[base: _964, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _964, offset: 4294967285B], MEM[base: _964, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _964, offset: 4294967289B], MEM[base: _964, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _964, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _964, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _964, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.1011, ivtmp.1073
	mov	r0, r9	@ ivtmp.1002, ivtmp.1026
	mov	r3, #0	@ MisCnt,
.L143:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31790, MEM[base: _1172, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31788, MEM[base: _1174, offset: 0B]
	rsb	r2, ip, r2	@ D.31788, D.31790, D.31788
	cmp	r2, #0	@ D.31788,
	rsblt	r2, r2, #0	@ D.31788, D.31788,
	cmp	r2, #2	@ D.31788,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31793, ivtmp.1011
	bne	.L143	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r0, #0	@ D.31791,
	movle	r0, #1	@ D.31791,
	cmp	r0, #0	@ D.31791,
	beq	.L21	@,
	add	r9, r9, #20	@ ivtmp.1026, ivtmp.1026,
	cmp	r9, r8	@ ivtmp.1026, D.31793
	bne	.L144	@,
	cmp	r0, #1	@ D.31791,
	moveq	r0, #6	@ D.31786,
	b	.L363	@
.L415:
	mov	r0, r3	@ D.31786, D.31791
	b	.L363	@
	.fnend
	.size	DetPic, .-DetPic
	.align	2
	.global	ComparePattern
	.type	ComparePattern, %function
ComparePattern:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r1, #11	@ ivtmp.1105, pSmp,
	add	r2, r0, #11	@ ivtmp.1097, pRef,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	add	lr, r0, #19	@ D.31822, pRef,
	mov	r0, #0	@ MisCnt,
.L419:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2	@ D.31819, MEM[base: _28, offset: 0B]
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2	@ D.31819, MEM[base: _27, offset: 0B]
	rsb	r3, ip, r3	@ D.31819, D.31819, D.31819
	cmp	r3, #0	@ D.31819,
	rsblt	r3, r3, #0	@ D.31819, D.31819,
	cmp	r3, #2	@ D.31819,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r2, lr	@ ivtmp.1097, D.31822
	bne	.L419	@,
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
