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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
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
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r3, r0	@ pSmp, pSmp
	ldr	r2, [r0]	@ D.30578, pSmp_3(D)->Comp
	cmp	r2, #1	@ D.30578,
	beq	.L3	@,
	cmp	r2, #2	@ D.30578,
	ldreq	lr, [r1, #16]	@ pRd, pDetPara_5(D)->pPicBufV
	bne	.L10	@,
.L5:
	ldr	ip, [r3, #8]	@ pSmp_3(D)->Py, pSmp_3(D)->Py
	add	r0, r3, #12	@, pSmp,
	ldr	r1, [r1, #28]	@ pDetPara_5(D)->PicStride, pDetPara_5(D)->PicStride
	mov	r2, #8	@,
	ldr	r3, [r3, #4]	@ pSmp_3(D)->Px, pSmp_3(D)->Px
	mla	r1, r1, ip, r3	@ D.30578, pDetPara_5(D)->PicStride, pSmp_3(D)->Py, pSmp_3(D)->Px
	add	r1, lr, r1	@, pRd, D.30578
	ldr	lr, [sp], #4	@,
	b	memcpy	@
.L10:
	ldr	lr, [r1, #8]	@ pRd, pDetPara_5(D)->pPicBufY
	b	.L5	@
.L3:
	ldr	lr, [r1, #12]	@ pRd, pDetPara_5(D)->pPicBufU
	b	.L5	@
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
	beq	.L379	@,
	ldr	r3, [r0, #8]	@ pDetPara_180(D)->pPicBufY, pDetPara_180(D)->pPicBufY
	cmp	r3, #0	@ pDetPara_180(D)->pPicBufY,
	beq	.L379	@,
	ldr	r2, [r0, #24]	@ D.31671, pDetPara_180(D)->PicHeight
	cmp	r2, #1088	@ D.31671,
	bgt	.L379	@,
	clz	r3, r2	@ tmp953, D.31671
	ldr	r1, [r0, #20]	@ D.31671, pDetPara_180(D)->PicWidth
	mov	r3, r3, lsr #5	@ tmp953, tmp953,
	cmp	r1, #1920	@ D.31671,
	orrgt	r3, r3, #1	@,, tmp954, tmp953
	cmp	r1, #0	@ D.31671,
	orreq	r3, r3, #1	@,, tmp960, tmp954
	cmp	r3, #0	@ tmp960,
	bne	.L379	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	sub	r3, r1, #720	@ D.31674, D.31671,
	mov	r4, r0	@ pDetPara, pDetPara
	sub	r0, r2, #576	@ D.31674, D.31671,
	clz	r3, r3	@ D.31674, D.31674
	clz	r0, r0	@ D.31674, D.31674
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r3, r3, lsr #5	@ D.31674, D.31674,
	mov	r0, r0, lsr #5	@ D.31674, D.31674,
	tst	r0, r3	@ D.31674, D.31674
	bne	.L402	@,
	sub	ip, r2, #480	@ D.31674, D.31671,
	clz	ip, ip	@ D.31674, D.31674
	mov	ip, ip, lsr #5	@ D.31674, D.31674,
	tst	ip, r3	@ D.31674, D.31674
	bne	.L403	@,
	sub	r3, r1, #704	@ D.31674, D.31671,
	clz	r3, r3	@ D.31674, D.31674
	mov	r3, r3, lsr #5	@ D.31674, D.31674,
	tst	r3, r0	@ D.31674, D.31674
	bne	.L404	@,
	tst	r3, ip	@ D.31674, D.31674
	bne	.L405	@,
	cmp	r2, #720	@ D.31671,
	cmpeq	r1, #1280	@, D.31671,
	beq	.L406	@,
	movw	r3, #1079	@ tmp1557,
	cmp	r2, r3	@ D.31671, tmp1557
	movle	r2, #0	@ tmp1562,
	movgt	r2, #1	@ tmp1562,
	cmp	r1, #1920	@ D.31671,
	movne	r2, #0	@ tmp1562,
	cmp	r2, #0	@ tmp1562,
	bne	.L407	@,
.L14:
	mov	r0, #0	@ D.31669,
.L356:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L379:
	mov	r0, #0	@ D.31669,
	bx	lr	@
.L402:
	ldr	r9, .L409	@ ivtmp.498,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1072,,
	add	r8, sp, #24	@ D.31676,,
	add	r7, r9, #100	@ D.31676, ivtmp.498,
.L18:
	ldr	r3, [r9, #-3]	@ MEM[base: _103, offset: 4294967293B], MEM[base: _103, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _103, offset: 4294967285B], MEM[base: _103, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _103, offset: 4294967289B], MEM[base: _103, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _103, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _103, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _103, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.483, ivtmp.1072
	mov	r0, r9	@ ivtmp.474, ivtmp.498
	mov	r3, #0	@ MisCnt,
.L16:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1481, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1482, offset: 0B]
	rsb	r2, ip, r2	@ D.31671, D.31673, D.31671
	cmp	r2, #0	@ D.31671,
	rsblt	r2, r2, #0	@ D.31671, D.31671,
	cmp	r2, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r1, r8	@ ivtmp.483, D.31676
	bne	.L16	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L17	@,
	add	r9, r9, #20	@ ivtmp.498, ivtmp.498,
	cmp	r9, r7	@ ivtmp.498, D.31676
	bne	.L18	@,
	cmp	r3, #1	@ D.31674,
	beq	.L408	@,
.L17:
	ldr	r9, .L409+4	@ ivtmp.467,
	add	r7, r9, #100	@ D.31676, ivtmp.467,
.L22:
	ldr	r2, [r9, #-7]	@ MEM[base: _548, offset: 4294967289B], MEM[base: _548, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _548, offset: 4294967285B], MEM[base: _548, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _548, offset: 4294967293B], MEM[base: _548, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _548, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _548, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _548, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.452, ivtmp.1072
	mov	r0, r9	@ ivtmp.443, ivtmp.467
	mov	r1, #0	@ MisCnt,
.L20:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1489, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1490, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31676, ivtmp.452
	bne	.L20	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L21	@,
	add	r9, r9, #20	@ ivtmp.467, ivtmp.467,
	cmp	r9, r7	@ ivtmp.467, D.31676
	bne	.L22	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #2	@ D.31669,
	beq	.L356	@,
.L21:
	ldr	r9, .L409+8	@ ivtmp.436,
	add	r7, r9, #100	@ D.31676, ivtmp.436,
.L26:
	ldr	r2, [r9, #-7]	@ MEM[base: _561, offset: 4294967289B], MEM[base: _561, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _561, offset: 4294967285B], MEM[base: _561, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _561, offset: 4294967293B], MEM[base: _561, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _561, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _561, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _561, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.421, ivtmp.1072
	mov	r0, r9	@ ivtmp.412, ivtmp.436
	mov	r1, #0	@ MisCnt,
.L24:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1497, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1498, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31676, ivtmp.421
	bne	.L24	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L25	@,
	add	r9, r9, #20	@ ivtmp.436, ivtmp.436,
	cmp	r9, r7	@ ivtmp.436, D.31676
	bne	.L26	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #3	@ D.31669,
	beq	.L356	@,
.L25:
	ldr	r9, .L409+12	@ ivtmp.405,
	add	r7, r9, #100	@ D.31676, ivtmp.405,
.L30:
	ldr	r2, [r9, #-7]	@ MEM[base: _574, offset: 4294967289B], MEM[base: _574, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _574, offset: 4294967285B], MEM[base: _574, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _574, offset: 4294967293B], MEM[base: _574, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _574, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _574, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _574, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.390, ivtmp.1072
	mov	r0, r9	@ ivtmp.381, ivtmp.405
	mov	r1, #0	@ MisCnt,
.L28:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1505, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1506, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31676, ivtmp.390
	bne	.L28	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L29	@,
	add	r9, r9, #20	@ ivtmp.405, ivtmp.405,
	cmp	r9, r7	@ ivtmp.405, D.31676
	bne	.L30	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #8	@ D.31669,
	beq	.L356	@,
.L29:
	ldr	r9, .L409+16	@ ivtmp.374,
	add	r7, r9, #100	@ D.31676, ivtmp.374,
.L34:
	ldr	r2, [r9, #-7]	@ MEM[base: _587, offset: 4294967289B], MEM[base: _587, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _587, offset: 4294967285B], MEM[base: _587, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _587, offset: 4294967293B], MEM[base: _587, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _587, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _587, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _587, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.359, ivtmp.1072
	mov	r0, r9	@ ivtmp.350, ivtmp.374
	mov	r1, #0	@ MisCnt,
.L32:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1513, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1514, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31676, ivtmp.359
	bne	.L32	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L33	@,
	add	r9, r9, #20	@ ivtmp.374, ivtmp.374,
	cmp	r9, r7	@ ivtmp.374, D.31676
	bne	.L34	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #9	@ D.31669,
	beq	.L356	@,
.L33:
	ldr	r9, .L409+20	@ ivtmp.343,
	add	r7, r9, #100	@ D.31676, ivtmp.343,
.L38:
	ldr	r2, [r9, #-7]	@ MEM[base: _600, offset: 4294967289B], MEM[base: _600, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _600, offset: 4294967285B], MEM[base: _600, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _600, offset: 4294967293B], MEM[base: _600, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _600, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _600, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _600, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.328, ivtmp.1072
	mov	r0, r9	@ ivtmp.319, ivtmp.343
	mov	r1, #0	@ MisCnt,
.L36:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1521, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1522, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31676, ivtmp.328
	bne	.L36	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L37	@,
	add	r9, r9, #20	@ ivtmp.343, ivtmp.343,
	cmp	r9, r7	@ ivtmp.343, D.31676
	bne	.L38	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #11	@ D.31669,
	beq	.L356	@,
.L37:
	ldr	r7, .L409+24	@ ivtmp.312,
	add	r9, r7, #100	@ D.31676, ivtmp.312,
.L42:
	ldr	r2, [r7, #-7]	@ MEM[base: _613, offset: 4294967289B], MEM[base: _613, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _613, offset: 4294967285B], MEM[base: _613, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _613, offset: 4294967293B], MEM[base: _613, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _613, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _613, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _613, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.297, ivtmp.1072
	mov	r0, r7	@ ivtmp.288, ivtmp.312
	mov	r1, #0	@ MisCnt,
.L40:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1529, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1530, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31676, ivtmp.297
	bne	.L40	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L41	@,
	add	r7, r7, #20	@ ivtmp.312, ivtmp.312,
	cmp	r7, r9	@ ivtmp.312, D.31676
	bne	.L42	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #12	@ D.31669,
	beq	.L356	@,
.L41:
	ldr	r7, .L409+28	@ ivtmp.281,
	add	r9, r7, #100	@ D.31676, ivtmp.281,
.L46:
	ldr	r2, [r7, #-7]	@ MEM[base: _626, offset: 4294967289B], MEM[base: _626, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _626, offset: 4294967285B], MEM[base: _626, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _626, offset: 4294967293B], MEM[base: _626, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _626, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _626, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _626, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.266, ivtmp.1072
	mov	r0, r7	@ ivtmp.257, ivtmp.281
	mov	r1, #0	@ MisCnt,
.L44:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1537, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1538, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r8, r2	@ D.31676, ivtmp.266
	bne	.L44	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L45	@,
	add	r7, r7, #20	@ ivtmp.281, ivtmp.281,
	cmp	r7, r9	@ ivtmp.281, D.31676
	bne	.L46	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #13	@ D.31669,
	beq	.L356	@,
.L45:
	ldr	r7, .L409+32	@ ivtmp.250,
	add	r9, r7, #100	@ D.31676, ivtmp.250,
.L49:
	ldr	r2, [r7, #-7]	@ MEM[base: _639, offset: 4294967289B], MEM[base: _639, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _639, offset: 4294967285B], MEM[base: _639, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _639, offset: 4294967293B], MEM[base: _639, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _639, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _639, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _639, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.235, ivtmp.1072
	mov	r0, r7	@ ivtmp.226, ivtmp.250
	mov	r2, #0	@ MisCnt,
.L47:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1545, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1546, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r2, r2, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.31676, ivtmp.235
	bne	.L47	@,
	cmp	r2, #2	@ MisCnt,
	movgt	r2, #0	@ D.31674,
	movle	r2, #1	@ D.31674,
	cmp	r2, #0	@ D.31674,
	beq	.L48	@,
	add	r7, r7, #20	@ ivtmp.250, ivtmp.250,
	cmp	r7, r9	@ ivtmp.250, D.31676
	bne	.L49	@,
	cmp	r2, #1	@ D.31674,
	moveq	r0, #14	@ D.31669,
	beq	.L356	@,
.L48:
	ldr	r7, .L409+36	@ ivtmp.219,
	add	r9, r7, #100	@ D.31676, ivtmp.219,
.L52:
	ldr	r2, [r7, #-7]	@ MEM[base: _328, offset: 4294967289B], MEM[base: _328, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _328, offset: 4294967285B], MEM[base: _328, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r7, #-3]	@ MEM[base: _328, offset: 4294967293B], MEM[base: _328, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _328, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _328, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _328, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.204, ivtmp.1072
	mov	r0, r7	@ ivtmp.195, ivtmp.219
	mov	r2, #0	@ MisCnt,
.L50:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1553, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1554, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r2, r2, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.31676, ivtmp.204
	bne	.L50	@,
	cmp	r2, #2	@ MisCnt,
	movgt	r2, #0	@ D.31674,
	movle	r2, #1	@ D.31674,
	cmp	r2, #0	@ D.31674,
	beq	.L51	@,
	add	r7, r7, #20	@ ivtmp.219, ivtmp.219,
	cmp	r7, r9	@ ivtmp.219, D.31676
	bne	.L52	@,
	cmp	r2, #1	@ D.31674,
	moveq	r0, #15	@ D.31669,
	beq	.L356	@,
.L51:
	ldr	r7, .L409+40	@ ivtmp.188,
	add	r9, r7, #100	@ D.31676, ivtmp.188,
.L55:
	ldr	r3, [r7, #-3]	@ MEM[base: _248, offset: 4294967293B], MEM[base: _248, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r7, #-11]	@ MEM[base: _248, offset: 4294967285B], MEM[base: _248, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r7, #-7]	@ MEM[base: _248, offset: 4294967289B], MEM[base: _248, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _248, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _248, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _248, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.173, ivtmp.1072
	mov	r0, r7	@ ivtmp.164, ivtmp.188
	mov	r3, #0	@ MisCnt,
.L53:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1561, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1562, offset: 0B]
	rsb	r2, ip, r2	@ D.31671, D.31673, D.31671
	cmp	r2, #0	@ D.31671,
	rsblt	r2, r2, #0	@ D.31671, D.31671,
	cmp	r2, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r8, r1	@ D.31676, ivtmp.173
	bne	.L53	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L54	@,
	add	r7, r7, #20	@ ivtmp.188, ivtmp.188,
	cmp	r7, r9	@ ivtmp.188, D.31676
	bne	.L55	@,
	cmp	r3, #1	@ D.31674,
	moveq	r0, #16	@ D.31669,
	beq	.L356	@,
.L54:
	ldr	r6, .L409+44	@ ivtmp.154,
	add	r7, r6, #100	@ D.31676, ivtmp.154,
.L58:
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
.L56:
	add	r1, r6, r2	@ D.31672, ivtmp.154, i
	add	r0, r5, r2	@ D.31677, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _962, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _1572, offset: 12B]
	rsb	r1, r0, r1	@ D.31671, D.31671, D.31671
	cmp	r1, #0	@ D.31671,
	rsblt	r1, r1, #0	@ D.31671, D.31671,
	cmp	r1, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L56	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L57	@,
	add	r6, r6, #20	@ ivtmp.154, ivtmp.154,
	cmp	r6, r7	@ ivtmp.154, D.31676
	bne	.L58	@,
	cmp	r3, #1	@ D.31674,
	moveq	r0, #17	@ D.31669,
	beq	.L356	@,
.L57:
	ldr	r6, .L409+48	@ ivtmp.124,
	add	r7, r6, #100	@ D.31676, ivtmp.124,
.L61:
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
.L59:
	add	r1, r6, r2	@ D.31672, ivtmp.124, i
	add	r0, r5, r2	@ D.31677, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _316, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _1578, offset: 12B]
	rsb	r1, r0, r1	@ D.31671, D.31671, D.31671
	cmp	r1, #0	@ D.31671,
	rsblt	r1, r1, #0	@ D.31671, D.31671,
	cmp	r1, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L59	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L60	@,
	add	r6, r6, #20	@ ivtmp.124, ivtmp.124,
	cmp	r6, r7	@ ivtmp.124, D.31676
	bne	.L61	@,
	cmp	r3, #1	@ D.31674,
	moveq	r0, #18	@ D.31669,
	beq	.L356	@,
.L60:
	ldr	r6, .L409+52	@ ivtmp.94,
	add	r7, r6, #100	@ D.31676, ivtmp.94,
.L64:
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
.L62:
	add	r1, r6, r2	@ D.31672, ivtmp.94, i
	add	r0, r5, r2	@ D.31677, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _1186, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _1584, offset: 12B]
	rsb	r1, r0, r1	@ D.31671, D.31671, D.31671
	cmp	r1, #0	@ D.31671,
	rsblt	r1, r1, #0	@ D.31671, D.31671,
	cmp	r1, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L62	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L63	@,
	add	r6, r6, #20	@ ivtmp.94, ivtmp.94,
	cmp	r6, r7	@ ivtmp.94, D.31676
	bne	.L64	@,
	cmp	r3, #1	@ D.31674,
	moveq	r0, #19	@ D.31669,
	beq	.L356	@,
.L63:
	ldr	r6, .L409+56	@ ivtmp.64,
	add	r7, r6, #100	@ D.31676, ivtmp.64,
.L67:
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
.L65:
	add	r1, r6, r2	@ D.31672, ivtmp.64, i
	add	r0, r5, r2	@ D.31677, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _901, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _1590, offset: 12B]
	rsb	r1, r0, r1	@ D.31671, D.31671, D.31671
	cmp	r1, #0	@ D.31671,
	rsblt	r1, r1, #0	@ D.31671, D.31671,
	cmp	r1, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L65	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L66	@,
	add	r6, r6, #20	@ ivtmp.64, ivtmp.64,
	cmp	r6, r7	@ ivtmp.64, D.31676
	bne	.L67	@,
	cmp	r3, #1	@ D.31674,
	moveq	r0, #26	@ D.31669,
	beq	.L356	@,
.L66:
	ldr	r6, .L409+60	@ ivtmp.34,
	add	r7, r6, #100	@ D.31676, ivtmp.34,
.L69:
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
.L68:
	add	r1, r6, r2	@ D.31672, ivtmp.34, i
	add	r0, r5, r2	@ D.31677, tmp1606, i
	add	r2, r2, #1	@ i, i,
	ldrb	r1, [r1, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _1598, offset: 12B]
	ldrb	r0, [r0, #12]	@ zero_extendqisi2	@ D.31671, MEM[base: _1596, offset: 12B]
	rsb	r1, r0, r1	@ D.31671, D.31671, D.31671
	cmp	r1, #0	@ D.31671,
	rsblt	r1, r1, #0	@ D.31671, D.31671,
	cmp	r1, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r2, #8	@ i,
	bne	.L68	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L14	@,
	add	r6, r6, #20	@ ivtmp.34, ivtmp.34,
	cmp	r6, r7	@ ivtmp.34, D.31676
	bne	.L69	@,
	cmp	r3, #1	@ D.31674,
	movne	r0, r3	@ D.31669, D.31674
	moveq	r0, #30	@ D.31669,
	b	.L356	@
.L407:
	ldr	r9, .L409+64	@ ivtmp.1087,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1072,,
	add	r8, sp, #24	@ D.31676,,
	add	r7, r9, #100	@ D.31676, ivtmp.1087,
.L139:
	ldr	r3, [r9, #-3]	@ MEM[base: _977, offset: 4294967293B], MEM[base: _977, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _977, offset: 4294967285B], MEM[base: _977, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _977, offset: 4294967289B], MEM[base: _977, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _977, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _977, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _977, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.1072, ivtmp.1072
	mov	r0, r9	@ ivtmp.1063, ivtmp.1087
	mov	r3, #0	@ MisCnt,
.L138:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1155, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1156, offset: 0B]
	rsb	r2, ip, r2	@ D.31671, D.31673, D.31671
	cmp	r2, #0	@ D.31671,
	rsblt	r2, r2, #0	@ D.31671, D.31671,
	cmp	r2, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r1, r8	@ ivtmp.1072, D.31676
	bne	.L138	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L14	@,
	add	r9, r9, #20	@ ivtmp.1087, ivtmp.1087,
	cmp	r9, r7	@ ivtmp.1087, D.31676
	bne	.L139	@,
	cmp	r3, #1	@ D.31674,
	movne	r0, r3	@ D.31669, D.31674
	moveq	r0, #7	@ D.31669,
	b	.L356	@
.L403:
	ldr	r9, .L409+68	@ ivtmp.715,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1072,,
	add	r7, sp, #24	@ D.31676,,
	add	r8, r9, #100	@ D.31676, ivtmp.715,
.L73:
	ldr	r2, [r9, #-7]	@ MEM[base: _743, offset: 4294967289B], MEM[base: _743, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _743, offset: 4294967285B], MEM[base: _743, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _743, offset: 4294967293B], MEM[base: _743, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _743, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _743, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _743, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.700, ivtmp.1072
	mov	r0, r9	@ ivtmp.691, ivtmp.715
	mov	r1, #0	@ MisCnt,
.L71:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1425, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1426, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.700, D.31676
	bne	.L71	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L72	@,
	add	r9, r9, #20	@ ivtmp.715, ivtmp.715,
	cmp	r9, r8	@ ivtmp.715, D.31676
	bne	.L73	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #22	@ D.31669,
	beq	.L356	@,
.L72:
	ldr	r9, .L409+72	@ ivtmp.684,
	add	r8, r9, #100	@ D.31676, ivtmp.684,
.L77:
	ldr	r2, [r9, #-7]	@ MEM[base: _756, offset: 4294967289B], MEM[base: _756, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _756, offset: 4294967285B], MEM[base: _756, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _756, offset: 4294967293B], MEM[base: _756, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _756, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _756, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _756, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.669, ivtmp.1072
	mov	r0, r9	@ ivtmp.660, ivtmp.684
	mov	r1, #0	@ MisCnt,
.L75:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1433, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1434, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.669
	bne	.L75	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L76	@,
	add	r9, r9, #20	@ ivtmp.684, ivtmp.684,
	cmp	r9, r8	@ ivtmp.684, D.31676
	bne	.L77	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #20	@ D.31669,
	beq	.L356	@,
.L76:
	ldr	r9, .L409+76	@ ivtmp.653,
	add	r8, r9, #100	@ D.31676, ivtmp.653,
.L81:
	ldr	r2, [r9, #-7]	@ MEM[base: _769, offset: 4294967289B], MEM[base: _769, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _769, offset: 4294967285B], MEM[base: _769, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _769, offset: 4294967293B], MEM[base: _769, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _769, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _769, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _769, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.638, ivtmp.1072
	mov	r0, r9	@ ivtmp.629, ivtmp.653
	mov	r1, #0	@ MisCnt,
.L79:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1441, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1442, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.638
	bne	.L79	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L80	@,
	add	r9, r9, #20	@ ivtmp.653, ivtmp.653,
	cmp	r9, r8	@ ivtmp.653, D.31676
	bne	.L81	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #21	@ D.31669,
	beq	.L356	@,
.L80:
	ldr	r9, .L409+80	@ ivtmp.622,
	add	r8, r9, #100	@ D.31676, ivtmp.622,
.L85:
	ldr	r2, [r9, #-7]	@ MEM[base: _782, offset: 4294967289B], MEM[base: _782, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _782, offset: 4294967285B], MEM[base: _782, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _782, offset: 4294967293B], MEM[base: _782, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _782, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _782, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _782, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.607, ivtmp.1072
	mov	r0, r9	@ ivtmp.598, ivtmp.622
	mov	r1, #0	@ MisCnt,
.L83:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1449, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1450, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.607
	bne	.L83	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L84	@,
	add	r9, r9, #20	@ ivtmp.622, ivtmp.622,
	cmp	r9, r8	@ ivtmp.622, D.31676
	bne	.L85	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #25	@ D.31669,
	beq	.L356	@,
.L84:
	ldr	r9, .L409+84	@ ivtmp.591,
	add	r8, r9, #100	@ D.31676, ivtmp.591,
.L89:
	ldr	r2, [r9, #-7]	@ MEM[base: _795, offset: 4294967289B], MEM[base: _795, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _795, offset: 4294967285B], MEM[base: _795, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _795, offset: 4294967293B], MEM[base: _795, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _795, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _795, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _795, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.576, ivtmp.1072
	mov	r0, r9	@ ivtmp.567, ivtmp.591
	mov	r1, #0	@ MisCnt,
.L87:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1457, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1458, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.576
	bne	.L87	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L88	@,
	add	r9, r9, #20	@ ivtmp.591, ivtmp.591,
	cmp	r9, r8	@ ivtmp.591, D.31676
	bne	.L89	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #27	@ D.31669,
	beq	.L356	@,
.L88:
	ldr	r8, .L409+88	@ ivtmp.560,
	add	r9, r8, #100	@ D.31676, ivtmp.560,
.L93:
	ldr	r2, [r8, #-7]	@ MEM[base: _808, offset: 4294967289B], MEM[base: _808, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _808, offset: 4294967285B], MEM[base: _808, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r8, #-3]	@ MEM[base: _808, offset: 4294967293B], MEM[base: _808, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _808, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _808, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _808, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.545, ivtmp.1072
	mov	r0, r8	@ ivtmp.536, ivtmp.560
	mov	r1, #0	@ MisCnt,
.L91:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1465, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1466, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.545
	bne	.L91	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L92	@,
	add	r8, r8, #20	@ ivtmp.560, ivtmp.560,
	cmp	r8, r9	@ ivtmp.560, D.31676
	bne	.L93	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #28	@ D.31669,
	beq	.L356	@,
.L92:
	ldr	r8, .L409+92	@ ivtmp.529,
	add	r9, r8, #100	@ D.31676, ivtmp.529,
.L96:
	ldr	r3, [r8, #-3]	@ MEM[base: _148, offset: 4294967293B], MEM[base: _148, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _148, offset: 4294967285B], MEM[base: _148, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r8, #-7]	@ MEM[base: _148, offset: 4294967289B], MEM[base: _148, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _148, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _148, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _148, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.514, ivtmp.1072
	mov	r0, r8	@ ivtmp.505, ivtmp.529
	mov	r3, #0	@ MisCnt,
.L95:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1473, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1474, offset: 0B]
	rsb	r2, ip, r2	@ D.31671, D.31673, D.31671
	cmp	r2, #0	@ D.31671,
	rsblt	r2, r2, #0	@ D.31671, D.31671,
	cmp	r2, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31676, ivtmp.514
	bne	.L95	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L14	@,
	add	r8, r8, #20	@ ivtmp.529, ivtmp.529,
	cmp	r8, r9	@ ivtmp.529, D.31676
	bne	.L96	@,
	cmp	r3, #1	@ D.31674,
	movne	r0, r3	@ D.31669, D.31674
	moveq	r0, #29	@ D.31669,
	b	.L356	@
.L404:
	ldr	r9, .L409+96	@ ivtmp.777,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1072,,
	add	r7, sp, #24	@ D.31676,,
	add	r8, r9, #100	@ D.31676, ivtmp.777,
.L100:
	ldr	r2, [r9, #-7]	@ MEM[base: _546, offset: 4294967289B], MEM[base: _546, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _546, offset: 4294967285B], MEM[base: _546, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _546, offset: 4294967293B], MEM[base: _546, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _546, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _546, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _546, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.762, ivtmp.1072
	mov	r0, r9	@ ivtmp.753, ivtmp.777
	mov	r1, #0	@ MisCnt,
.L98:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1409, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1410, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.762, D.31676
	bne	.L98	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L99	@,
	add	r9, r9, #20	@ ivtmp.777, ivtmp.777,
	cmp	r9, r8	@ ivtmp.777, D.31676
	bne	.L100	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #24	@ D.31669,
	beq	.L356	@,
.L99:
	ldr	r9, .L409+100	@ ivtmp.746,
	add	r8, r9, #120	@ D.31676, ivtmp.746,
.L103:
	ldr	r3, [r9, #-3]	@ MEM[base: _164, offset: 4294967293B], MEM[base: _164, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _164, offset: 4294967285B], MEM[base: _164, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _164, offset: 4294967289B], MEM[base: _164, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _164, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _164, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _164, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.731, ivtmp.1072
	mov	r0, r9	@ ivtmp.722, ivtmp.746
	mov	r3, #0	@ MisCnt,
.L102:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1417, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1418, offset: 0B]
	rsb	r2, ip, r2	@ D.31671, D.31673, D.31671
	cmp	r2, #0	@ D.31671,
	rsblt	r2, r2, #0	@ D.31671, D.31671,
	cmp	r2, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31676, ivtmp.731
	bne	.L102	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r0, #0	@ D.31674,
	movle	r0, #1	@ D.31674,
	cmp	r0, #0	@ D.31674,
	beq	.L14	@,
	add	r9, r9, #20	@ ivtmp.746, ivtmp.746,
	cmp	r9, r8	@ ivtmp.746, D.31676
	bne	.L103	@,
	cmp	r0, #1	@ D.31674,
	moveq	r0, #10	@ D.31669,
	b	.L356	@
.L410:
	.align	2
.L409:
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
.L405:
	ldr	r9, .L409+104	@ ivtmp.994,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1072,,
	add	r7, sp, #24	@ D.31676,,
	add	r8, r9, #60	@ D.31676, ivtmp.994,
.L107:
	ldr	r2, [r9, #-7]	@ MEM[base: _860, offset: 4294967289B], MEM[base: _860, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _860, offset: 4294967285B], MEM[base: _860, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _860, offset: 4294967293B], MEM[base: _860, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _860, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _860, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _860, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.979, ivtmp.1072
	mov	r0, r9	@ ivtmp.970, ivtmp.994
	mov	r1, #0	@ MisCnt,
.L105:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1195, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1196, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.979, D.31676
	bne	.L105	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L106	@,
	add	r9, r9, #20	@ ivtmp.994, ivtmp.994,
	cmp	r9, r8	@ ivtmp.994, D.31676
	bne	.L107	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #23	@ D.31669,
	beq	.L356	@,
.L106:
	ldr	r9, .L409+108	@ ivtmp.963,
	add	r8, r9, #60	@ D.31676, ivtmp.963,
.L111:
	ldr	r2, [r9, #-7]	@ MEM[base: _65, offset: 4294967289B], MEM[base: _65, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _65, offset: 4294967285B], MEM[base: _65, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _65, offset: 4294967293B], MEM[base: _65, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _65, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _65, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _65, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.948, ivtmp.1072
	mov	r0, r9	@ ivtmp.939, ivtmp.963
	mov	r1, #0	@ MisCnt,
.L109:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1204, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1205, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.948
	bne	.L109	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L110	@,
	add	r9, r9, #20	@ ivtmp.963, ivtmp.963,
	cmp	r9, r8	@ ivtmp.963, D.31676
	bne	.L111	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #4	@ D.31669,
	beq	.L356	@,
.L110:
	ldr	r9, .L409+112	@ ivtmp.932,
	add	r8, r9, #100	@ D.31676, ivtmp.932,
.L115:
	ldr	r2, [r9, #-7]	@ MEM[base: _61, offset: 4294967289B], MEM[base: _61, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _61, offset: 4294967285B], MEM[base: _61, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _61, offset: 4294967293B], MEM[base: _61, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _61, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _61, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _61, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.917, ivtmp.1072
	mov	r0, r9	@ ivtmp.908, ivtmp.932
	mov	r1, #0	@ MisCnt,
.L113:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1221, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1370, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.917
	bne	.L113	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L114	@,
	add	r9, r9, #20	@ ivtmp.932, ivtmp.932,
	cmp	r9, r8	@ ivtmp.932, D.31676
	bne	.L115	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #31	@ D.31669,
	beq	.L356	@,
.L114:
	ldr	r9, .L409+116	@ ivtmp.901,
	add	r8, r9, #100	@ D.31676, ivtmp.901,
.L119:
	ldr	r2, [r9, #-7]	@ MEM[base: _57, offset: 4294967289B], MEM[base: _57, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _57, offset: 4294967285B], MEM[base: _57, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _57, offset: 4294967293B], MEM[base: _57, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _57, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _57, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _57, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.886, ivtmp.1072
	mov	r0, r9	@ ivtmp.877, ivtmp.901
	mov	r1, #0	@ MisCnt,
.L117:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1377, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1378, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.886
	bne	.L117	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L118	@,
	add	r9, r9, #20	@ ivtmp.901, ivtmp.901,
	cmp	r9, r8	@ ivtmp.901, D.31676
	bne	.L119	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #32	@ D.31669,
	beq	.L356	@,
.L118:
	ldr	r9, .L409+120	@ ivtmp.870,
	add	r8, r9, #100	@ D.31676, ivtmp.870,
.L123:
	ldr	r2, [r9, #-7]	@ MEM[base: _100, offset: 4294967289B], MEM[base: _100, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _100, offset: 4294967285B], MEM[base: _100, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _100, offset: 4294967293B], MEM[base: _100, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _100, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _100, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _100, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.855, ivtmp.1072
	mov	r0, r9	@ ivtmp.846, ivtmp.870
	mov	r1, #0	@ MisCnt,
.L121:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1385, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1386, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.855
	bne	.L121	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L122	@,
	add	r9, r9, #20	@ ivtmp.870, ivtmp.870,
	cmp	r9, r8	@ ivtmp.870, D.31676
	bne	.L123	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #33	@ D.31669,
	beq	.L356	@,
.L122:
	ldr	r8, .L409+124	@ ivtmp.839,
	add	r9, r8, #100	@ D.31676, ivtmp.839,
.L127:
	ldr	r2, [r8, #-7]	@ MEM[base: _925, offset: 4294967289B], MEM[base: _925, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _925, offset: 4294967285B], MEM[base: _925, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r8, #-3]	@ MEM[base: _925, offset: 4294967293B], MEM[base: _925, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _925, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _925, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _925, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.824, ivtmp.1072
	mov	r0, r8	@ ivtmp.815, ivtmp.839
	mov	r1, #0	@ MisCnt,
.L125:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1393, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1394, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r7, r2	@ D.31676, ivtmp.824
	bne	.L125	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L126	@,
	add	r8, r8, #20	@ ivtmp.839, ivtmp.839,
	cmp	r8, r9	@ ivtmp.839, D.31676
	bne	.L127	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #34	@ D.31669,
	beq	.L356	@,
.L126:
	ldr	r8, .L409+128	@ ivtmp.808,
	add	r9, r8, #100	@ D.31676, ivtmp.808,
.L130:
	ldr	r3, [r8, #-3]	@ MEM[base: _938, offset: 4294967293B], MEM[base: _938, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r8, #-11]	@ MEM[base: _938, offset: 4294967285B], MEM[base: _938, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r8, #-7]	@ MEM[base: _938, offset: 4294967289B], MEM[base: _938, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _938, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _938, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _938, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.793, ivtmp.1072
	mov	r0, r8	@ ivtmp.784, ivtmp.808
	mov	r3, #0	@ MisCnt,
.L129:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1401, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1402, offset: 0B]
	rsb	r2, ip, r2	@ D.31671, D.31673, D.31671
	cmp	r2, #0	@ D.31671,
	rsblt	r2, r2, #0	@ D.31671, D.31671,
	cmp	r2, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31676, ivtmp.793
	bne	.L129	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r3, #0	@ D.31674,
	movle	r3, #1	@ D.31674,
	cmp	r3, #0	@ D.31674,
	beq	.L14	@,
	add	r8, r8, #20	@ ivtmp.808, ivtmp.808,
	cmp	r8, r9	@ ivtmp.808, D.31676
	bne	.L130	@,
	cmp	r3, #1	@ D.31674,
	movne	r0, r3	@ D.31669, D.31674
	moveq	r0, #35	@ D.31669,
	b	.L356	@
.L406:
	ldr	r9, .L409+132	@ ivtmp.1056,
	add	r5, sp, #4	@ tmp1606,,
	add	r6, sp, #16	@ ivtmp.1072,,
	add	r7, sp, #24	@ D.31676,,
	add	r8, r9, #100	@ D.31676, ivtmp.1056,
.L134:
	ldr	r2, [r9, #-7]	@ MEM[base: _951, offset: 4294967289B], MEM[base: _951, offset: 4294967289B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _951, offset: 4294967285B], MEM[base: _951, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r3, [r9, #-3]	@ MEM[base: _951, offset: 4294967293B], MEM[base: _951, offset: 4294967293B]
	str	r2, [sp, #8]	@ MEM[base: _951, offset: 4294967289B], SmpPat.Px
	str	ip, [sp, #4]	@ MEM[base: _951, offset: 4294967285B], SmpPat.Comp
	str	r3, [sp, #12]	@ MEM[base: _951, offset: 4294967293B], SmpPat.Py
	bl	GetSample	@
	mov	r2, r6	@ ivtmp.1041, ivtmp.1072
	mov	r0, r9	@ ivtmp.1032, ivtmp.1056
	mov	r1, #0	@ MisCnt,
.L132:
	ldrb	ip, [r2], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1164, offset: 0B]
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1165, offset: 0B]
	rsb	r3, ip, r3	@ D.31671, D.31673, D.31671
	cmp	r3, #0	@ D.31671,
	rsblt	r3, r3, #0	@ D.31671, D.31671,
	cmp	r3, #2	@ D.31671,
	addgt	r1, r1, #1	@,, MisCnt, MisCnt
	cmp	r2, r7	@ ivtmp.1041, D.31676
	bne	.L132	@,
	cmp	r1, #2	@ MisCnt,
	movgt	r1, #0	@ D.31674,
	movle	r1, #1	@ D.31674,
	cmp	r1, #0	@ D.31674,
	beq	.L133	@,
	add	r9, r9, #20	@ ivtmp.1056, ivtmp.1056,
	cmp	r9, r8	@ ivtmp.1056, D.31676
	bne	.L134	@,
	cmp	r1, #1	@ D.31674,
	moveq	r0, #5	@ D.31669,
	beq	.L356	@,
.L133:
	ldr	r9, .L409+136	@ ivtmp.1025,
	add	r8, r9, #100	@ D.31676, ivtmp.1025,
.L137:
	ldr	r3, [r9, #-3]	@ MEM[base: _964, offset: 4294967293B], MEM[base: _964, offset: 4294967293B]
	mov	r1, r4	@, pDetPara
	ldr	ip, [r9, #-11]	@ MEM[base: _964, offset: 4294967285B], MEM[base: _964, offset: 4294967285B]
	mov	r0, r5	@, tmp1606
	ldr	r2, [r9, #-7]	@ MEM[base: _964, offset: 4294967289B], MEM[base: _964, offset: 4294967289B]
	str	r3, [sp, #12]	@ MEM[base: _964, offset: 4294967293B], SmpPat.Py
	str	ip, [sp, #4]	@ MEM[base: _964, offset: 4294967285B], SmpPat.Comp
	str	r2, [sp, #8]	@ MEM[base: _964, offset: 4294967289B], SmpPat.Px
	bl	GetSample	@
	mov	r1, r6	@ ivtmp.1010, ivtmp.1072
	mov	r0, r9	@ ivtmp.1001, ivtmp.1025
	mov	r3, #0	@ MisCnt,
.L136:
	ldrb	ip, [r1], #1	@ zero_extendqisi2	@ D.31673, MEM[base: _1172, offset: 0B]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2	@ D.31671, MEM[base: _1174, offset: 0B]
	rsb	r2, ip, r2	@ D.31671, D.31673, D.31671
	cmp	r2, #0	@ D.31671,
	rsblt	r2, r2, #0	@ D.31671, D.31671,
	cmp	r2, #2	@ D.31671,
	addgt	r3, r3, #1	@,, MisCnt, MisCnt
	cmp	r7, r1	@ D.31676, ivtmp.1010
	bne	.L136	@,
	cmp	r3, #2	@ MisCnt,
	movgt	r0, #0	@ D.31674,
	movle	r0, #1	@ D.31674,
	cmp	r0, #0	@ D.31674,
	beq	.L14	@,
	add	r9, r9, #20	@ ivtmp.1025, ivtmp.1025,
	cmp	r9, r8	@ ivtmp.1025, D.31676
	bne	.L137	@,
	cmp	r0, #1	@ D.31674,
	moveq	r0, #6	@ D.31669,
	b	.L356	@
.L408:
	mov	r0, r3	@ D.31669, D.31674
	b	.L356	@
	.fnend
	.size	DetPic, .-DetPic
	.align	2
	.global	ComparePattern
	.type	ComparePattern, %function
ComparePattern:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r1, r1, #11	@ ivtmp.1104, pSmp,
	add	r2, r0, #11	@ ivtmp.1096, pRef,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	add	lr, r0, #19	@ D.31705, pRef,
	mov	r0, #0	@ MisCnt,
.L412:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2	@ D.31702, MEM[base: _28, offset: 0B]
	ldrb	ip, [r1, #1]!	@ zero_extendqisi2	@ D.31702, MEM[base: _27, offset: 0B]
	rsb	r3, ip, r3	@ D.31702, D.31702, D.31702
	cmp	r3, #0	@ D.31702,
	rsblt	r3, r3, #0	@ D.31702, D.31702,
	cmp	r3, #2	@ D.31702,
	addgt	r0, r0, #1	@,, MisCnt, MisCnt
	cmp	r2, lr	@ ivtmp.1096, D.31705
	bne	.L412	@,
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
