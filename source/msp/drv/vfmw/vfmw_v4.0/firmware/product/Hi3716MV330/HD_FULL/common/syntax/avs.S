	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"avs.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV330
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_VP6_SUPPORT
@ -DVFMW_VP8_SUPPORT -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_H263_SUPPORT -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(avs)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.avs.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/avs.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/avs.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdefer-pop -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
@ -fira-share-save-slots -fira-share-spill-slots -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
@ -foptimize-register-move -foptimize-sibling-calls -fpeephole -fpeephole2
@ -fpromote-loop-indices -freg-struct-return -fregmove -frename-registers
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-interblock -fsched-spec -fsched-stalled-insns-dep
@ -fschedule-insns -fschedule-insns2 -fsection-anchors -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce -ftree-ccp
@ -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-pre -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
@ -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	AVS_UpdateTableIdx2Dist
	.type	AVS_UpdateTableIdx2Dist, %function
AVS_UpdateTableIdx2Dist:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L15	@,
	ldr	r3, [r0, #460]	@ prephitmp.544, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ prephitmp.544,
	beq	.L16	@,
	cmp	r3, #1	@ prephitmp.544,
	beq	.L17	@,
	cmp	r3, #2	@ prephitmp.544,
	beq	.L18	@,
.L5:
	mov	r0, #1	@,
	bx	lr	@
.L16:
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	ldr	r3, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r2, r3, asl #1	@ tmp164, <variable>.pic_distance,
	str	r2, [r0, #540]	@ tmp164, <variable>.Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L18:
	ldr	r1, [r0, #84]	@ temp.581, <variable>.pRef
	add	r2, r0, #4	@ tmp172, pCodecInf,
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	r2, r1	@ tmp172, temp.581
	ldrne	r1, [r1, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldreq	r2, [r0, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	movne	r1, r1, asl #1	@ prephitmp.546, <variable>.pic_distance,
	strne	r1, [r0, #528]	@ prephitmp.546, <variable>.Idx2Dist
	moveq	r1, r2	@ prephitmp.546, <variable>.Idx2Dist
	add	r3, r1, #1	@ temp.584, prephitmp.546,
	movne	r2, r1	@ <variable>.Idx2Dist, prephitmp.546
	str	r3, [r0, #524]	@ temp.584, <variable>.Idx2Dist
	ldr	r1, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	str	r2, [r0, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	str	r3, [r0, #540]	@ temp.584, <variable>.Idx2Dist
	mov	ip, r1, asl #1	@ temp.588, <variable>.pic_distance,
	str	ip, [r0, #548]	@ temp.588, <variable>.Idx2Dist
	add	r2, ip, #1	@ D.36107, temp.588,
	str	ip, [r0, #532]	@ temp.588, <variable>.Idx2Dist
	str	r2, [r0, #552]	@ D.36107, <variable>.Idx2Dist
	str	r2, [r0, #536]	@ D.36107, <variable>.Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L15:
	ldr	r3, [r0, #460]	@ prephitmp.548, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #1	@ prephitmp.548,
	beq	.L19	@,
	cmp	r3, #2	@ prephitmp.548,
	bne	.L5	@,
	ldr	ip, [r0, #84]	@ temp.560, <variable>.pRef
	add	r1, r0, #4	@ tmp156, pCodecInf,
	ldr	r3, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	r1, ip	@ tmp156, temp.560
	ldrne	ip, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	ip, ip, asl #1	@ tmp158, <variable>.pic_distance,
	strne	ip, [r0, #524]	@ tmp158, <variable>.Idx2Dist
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r1, r2, asl #1	@ tmp161, <variable>.pic_distance,
	str	r1, [r0, #532]	@ tmp161, <variable>.Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L17:
	ldr	r3, [r0, #84]	@ temp.573, <variable>.pRef
	add	ip, r0, #4	@ tmp165, pCodecInf,
	ldr	r1, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	cmp	ip, r3	@ tmp165, temp.573
	ldrne	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldreq	ip, [r0, #536]	@ prephitmp.589, <variable>.Idx2Dist
	movne	ip, ip, asl #1	@ prephitmp.589, <variable>.pic_distance,
	strne	ip, [r0, #536]	@ prephitmp.589, <variable>.Idx2Dist
	add	r2, ip, #1	@ D.36094, prephitmp.589,
	str	r2, [r0, #532]	@ D.36094, <variable>.Idx2Dist
	ldr	r3, [r1, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	str	r2, [r0, #552]	@ D.36094, <variable>.Idx2Dist
	mov	r1, r3, asl #1	@ temp.579, <variable>.pic_distance,
	str	r1, [r0, #548]	@ temp.579, <variable>.Idx2Dist
	str	r1, [r0, #528]	@ temp.579, <variable>.Idx2Dist
	add	r3, r1, #1	@ D.36096, temp.579,
	str	r3, [r0, #544]	@ D.36096, <variable>.Idx2Dist
	str	r3, [r0, #524]	@ D.36096, <variable>.Idx2Dist
	ldr	r2, [ip, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r1, r2, asl #1	@ tmp171, <variable>.pic_distance,
	str	r1, [r0, #540]	@ tmp171, <variable>.Idx2Dist
	mov	r0, #1	@,
	bx	lr	@
.L19:
	ldr	r2, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	add	r1, r0, #4	@ tmp153, pCodecInf,
	ldr	r3, [r0, #84]	@ D.36076, <variable>.pRef
	ldr	ip, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r1, r3	@ tmp153, D.36076
	mov	r2, ip, asl #1	@ tmp152, <variable>.pic_distance,
	str	r2, [r0, #524]	@ tmp152, <variable>.Idx2Dist
	ldrne	ip, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r3, ip, asl #1	@ tmp155, <variable>.pic_distance,
	strne	r3, [r0, #528]	@ tmp155, <variable>.Idx2Dist
	b	.L5	@
	.fnend
	.size	AVS_UpdateTableIdx2Dist, .-AVS_UpdateTableIdx2Dist
	.global	__aeabi_idiv
	.align	2
	.global	AVS_UpdateTableMvEScale
	.type	AVS_UpdateTableMvEScale, %function
AVS_UpdateTableMvEScale:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L98	@,
	ldr	r3, [r0, #460]	@ prephitmp.650, <variable>.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ prephitmp.650,
	moveq	r3, #512	@ tmp279,
	streq	r3, [r0, #620]	@ tmp279, <variable>.MvEScale
	beq	.L30	@,
	cmp	r3, #1	@ prephitmp.650,
	beq	.L99	@,
	cmp	r3, #2	@ prephitmp.650,
	beq	.L100	@,
.L30:
	mov	r0, #1	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L100:
	ldr	sl, [r0, #76]	@ temp.722, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r8, [r4, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r3, [sl, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r3, asl #1	@ CurDistIdx.964, <variable>.pic_distance,
	add	r6, r5, r0	@ pretmp.965, CurDistIdx.964,
	rsb	r5, r5, r0	@ pretmp.990, CurDistIdx.964,
	rsb	lr, r8, r6	@ tmp560, <variable>.Idx2Dist, pretmp.965
	mov	r9, lr, asl #23	@ CurBlkDist.968, tmp560,
	mov	r8, r9, lsr #23	@ CurBlkDist.968, CurBlkDist.968,
	cmp	r8, #0	@ CurBlkDist.968,
	movne	r1, r8	@, CurBlkDist.968
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	ip, [r4, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r6, ip, r6	@ tmp568, <variable>.Idx2Dist, pretmp.965
	mov	r7, r6, asl #23	@ NeiBlkDist.974, tmp568,
	mov	r7, r7, lsr #23	@ NeiBlkDist.974, NeiBlkDist.974,
	cmp	r7, #0	@ NeiBlkDist.974,
	mov	r9, r0	@ tmp566,
	mov	r0, #512	@,
	mul	r1, r8, r9	@ tmp567, CurBlkDist.968, tmp566
	str	r1, [r4, #556]	@ tmp567, <variable>.MvEScale
	movne	r1, r7	@, NeiBlkDist.974
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #532]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r5, r2	@ tmp595, pretmp.990, <variable>.Idx2Dist
	mov	r6, ip, asl #23	@ CurBlkDist.993, tmp595,
	mov	r6, r6, lsr #23	@ CurBlkDist.993, CurBlkDist.993,
	cmp	r6, #0	@ CurBlkDist.993,
	mov	r3, r0	@ tmp574,
	mov	r0, #512	@,
	mul	r1, r7, r3	@ tmp594, NeiBlkDist.974, tmp574
	mul	r8, r8, r3	@ tmp575, CurBlkDist.968, tmp574
	mul	r7, r7, r9	@ tmp586, NeiBlkDist.974, tmp566
	str	r1, [r4, #568]	@ tmp594, <variable>.MvEScale
	movne	r1, r6	@, CurBlkDist.993
	moveq	r1, r0	@,
	str	r8, [r4, #560]	@ tmp575, <variable>.MvEScale
	str	r7, [r4, #564]	@ tmp586, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #536]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r5, r2	@ tmp603, pretmp.990, <variable>.Idx2Dist
	mov	r3, ip, asl #23	@ NeiBlkDist.999, tmp603,
	mov	r5, r3, lsr #23	@ NeiBlkDist.999, NeiBlkDist.999,
	cmp	r5, #0	@ NeiBlkDist.999,
	mov	r7, r0	@ tmp601,
	mov	r0, #512	@,
	mul	r1, r6, r7	@ tmp602, CurBlkDist.993, tmp601
	str	r1, [r4, #572]	@ tmp602, <variable>.MvEScale
	movne	r1, r5	@, NeiBlkDist.999
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mul	r2, r5, r7	@ tmp621, NeiBlkDist.999, tmp601
	ldr	r1, [r4, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	str	r2, [r4, #580]	@ tmp621, <variable>.MvEScale
	mul	r8, r5, r0	@ tmp629, NeiBlkDist.999, tmp609
	mul	r6, r6, r0	@ tmp610, CurBlkDist.993, tmp609
	mov	r0, #512	@,
	str	r8, [r4, #584]	@ tmp629, <variable>.MvEScale
	str	r6, [r4, #576]	@ tmp610, <variable>.MvEScale
	ldr	ip, [sl, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r3, ip, asl #1	@ tmp630, <variable>.pic_distance,
	add	r5, r3, #1	@ CurDistIdx.726, tmp630,
	add	r6, r5, r0	@ pretmp.656, CurDistIdx.726,
	rsb	r5, r5, r0	@ pretmp.662, CurDistIdx.726,
	rsb	r8, r1, r6	@ tmp632, <variable>.Idx2Dist, pretmp.656
	mov	sl, r8, asl #23	@ CurBlkDist.844, tmp632,
	mov	r8, sl, lsr #23	@ CurBlkDist.844, CurBlkDist.844,
	cmp	r8, #0	@ CurBlkDist.844,
	movne	r1, r8	@, CurBlkDist.844
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r6, r2, r6	@ tmp640, <variable>.Idx2Dist, pretmp.656
	mov	r7, r6, asl #23	@ NeiBlkDist.850, tmp640,
	mov	r7, r7, lsr #23	@ NeiBlkDist.850, NeiBlkDist.850,
	cmp	r7, #0	@ NeiBlkDist.850,
	movne	r1, r7	@, NeiBlkDist.850
	mov	sl, r0	@ tmp638,
	mov	r0, #512	@,
	mul	ip, r8, sl	@ tmp639, CurBlkDist.844, tmp638
	moveq	r1, r0	@,
	str	ip, [r4, #588]	@ tmp639, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #548]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r2, r5, r1	@ tmp659, pretmp.662, <variable>.Idx2Dist
	mov	r6, r2, asl #23	@ CurBlkDist.855, tmp659,
	mov	r6, r6, lsr #23	@ CurBlkDist.855, CurBlkDist.855,
	cmp	r6, #0	@ CurBlkDist.855,
	movne	r1, r6	@, CurBlkDist.855
	mov	r3, r0	@ tmp646,
	mov	r0, #512	@,
	mul	ip, r7, r3	@ tmp658, NeiBlkDist.850, tmp646
	moveq	r1, r0	@,
	mul	r8, r8, r3	@ tmp647, CurBlkDist.844, tmp646
	mul	r7, r7, sl	@ tmp685, NeiBlkDist.850, tmp638
	str	ip, [r4, #600]	@ tmp658, <variable>.MvEScale
	str	r8, [r4, #592]	@ tmp647, <variable>.MvEScale
	str	r7, [r4, #596]	@ tmp685, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #552]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r3, r5, r1	@ tmp667, pretmp.662, <variable>.Idx2Dist
	mov	r2, r3, asl #23	@ NeiBlkDist.861, tmp667,
	mov	r5, r2, lsr #23	@ NeiBlkDist.861, NeiBlkDist.861,
	cmp	r5, #0	@ NeiBlkDist.861,
	movne	r1, r5	@, NeiBlkDist.861
	mov	r7, r0	@ tmp665,
	mov	r0, #512	@,
	mul	ip, r6, r7	@ tmp666, CurBlkDist.855, tmp665
	moveq	r1, r0	@,
	str	ip, [r4, #604]	@ tmp666, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r1, r5, r0	@ tmp693, NeiBlkDist.861, tmp673
	mul	r0, r6, r0	@ tmp674, CurBlkDist.855, tmp673
	mul	r5, r5, r7	@ tmp698, NeiBlkDist.861, tmp665
	str	r1, [r4, #616]	@ tmp693, <variable>.MvEScale
	str	r0, [r4, #608]	@ tmp674, <variable>.MvEScale
	str	r5, [r4, #612]	@ tmp698, <variable>.MvEScale
	b	.L30	@
.L98:
	ldr	r2, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	ldr	r3, [r0, #460]	@ prephitmp.650, <variable>.Syntax.syn_pic.derived_pic_coding_type
	ldr	r5, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r3, #1	@ prephitmp.650,
	mov	r5, r5, asl #1	@ CurDistIdx, <variable>.pic_distance,
	beq	.L101	@,
	cmp	r3, #2	@ prephitmp.650,
	bne	.L30	@,
	ldr	r6, [r0, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r0, #512	@,
	rsb	lr, r6, r5	@ tmp263, <variable>.Idx2Dist, CurDistIdx
	mov	r2, lr, asl #23	@ CurBlkDist.709, tmp263,
	mov	r6, r2, lsr #23	@ CurBlkDist.709, CurBlkDist.709,
	cmp	r6, #0	@ CurBlkDist.709,
	movne	r1, r6	@, CurBlkDist.709
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #532]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r5, r3	@ tmp272, CurDistIdx, <variable>.Idx2Dist
	mov	ip, r1, asl #23	@ CurBlkDist.712, tmp272,
	mov	r5, ip, lsr #23	@ CurBlkDist.712, CurBlkDist.712,
	cmp	r5, #0	@ CurBlkDist.712,
	movne	r1, r5	@, CurBlkDist.712
	moveq	r1, #512	@,
	mul	r6, r6, r0	@ tmp269, CurBlkDist.709,
	mov	r0, #512	@,
	str	r6, [r4, #556]	@ tmp269, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r0, r5, r0	@ tmp278, CurBlkDist.712,
	str	r0, [r4, #572]	@ tmp278, <variable>.MvEScale
	b	.L30	@
.L99:
	ldr	fp, [r0, #76]	@ temp.715, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	sl, [r4, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r5, [fp, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	str	fp, [sp, #4]	@,
	mov	r7, r5, asl #1	@ tmp280, <variable>.pic_distance,
	add	r7, r7, r0	@ pretmp.790, tmp280,
	rsb	r8, sl, r7	@ tmp282, <variable>.Idx2Dist, pretmp.790
	mov	lr, r8, asl #23	@ CurBlkDist.839, tmp282,
	mov	r8, lr, lsr #23	@ CurBlkDist.839, CurBlkDist.839,
	cmp	r8, #0	@ CurBlkDist.839,
	movne	r1, r8	@, CurBlkDist.839
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r3, r7	@ tmp290, <variable>.Idx2Dist, pretmp.790
	mov	r6, r2, asl #23	@ NeiBlkDist.880, tmp290,
	mov	r6, r6, lsr #23	@ NeiBlkDist.880, NeiBlkDist.880,
	cmp	r6, #0	@ NeiBlkDist.880,
	movne	r1, r6	@, NeiBlkDist.880
	mov	fp, r0	@ tmp288,
	mov	r0, #512	@,
	mul	r9, r8, fp	@ tmp289, CurBlkDist.839, tmp288
	moveq	r1, r0	@,
	str	r9, [r4, #556]	@ tmp289, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	ip, [r4, #532]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, ip, r7	@ tmp298, <variable>.Idx2Dist, pretmp.790
	mov	r5, r1, asl #23	@ NeiBlkDist.885, tmp298,
	mov	r5, r5, lsr #23	@ NeiBlkDist.885, NeiBlkDist.885,
	cmp	r5, #0	@ NeiBlkDist.885,
	movne	r1, r5	@, NeiBlkDist.885
	mov	r9, r0	@ tmp296,
	mov	r0, #512	@,
	mul	sl, r8, r9	@ tmp297, CurBlkDist.839, tmp296
	moveq	r1, r0	@,
	str	sl, [r4, #560]	@ tmp297, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #536]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r3, r1, r7	@ tmp306, <variable>.Idx2Dist, pretmp.790
	mov	r7, r3, asl #23	@ NeiBlkDist.890, tmp306,
	mov	r7, r7, lsr #23	@ NeiBlkDist.890, NeiBlkDist.890,
	cmp	r7, #0	@ NeiBlkDist.890,
	movne	r1, r7	@, NeiBlkDist.890
	mov	sl, r0	@ tmp304,
	mov	r0, #512	@,
	mul	r2, r8, sl	@ tmp305, CurBlkDist.839, tmp304
	moveq	r1, r0	@,
	str	r2, [r4, #564]	@ tmp305, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	lr, r7, r9	@ tmp402, NeiBlkDist.890, tmp296
	str	lr, [r4, #608]	@ tmp402, <variable>.MvEScale
	mov	ip, r0	@ tmp312,
	mul	r3, r7, r0	@ tmp418, NeiBlkDist.890, tmp312
	mul	r1, r6, ip	@ tmp348, NeiBlkDist.880, tmp312
	mul	r2, r5, ip	@ tmp383, NeiBlkDist.885, tmp312
	mul	ip, r7, fp	@ tmp394, NeiBlkDist.890, tmp288
	str	r3, [r4, #616]	@ tmp418, <variable>.MvEScale
	str	r1, [r4, #584]	@ tmp348, <variable>.MvEScale
	mul	r3, r6, fp	@ tmp324, NeiBlkDist.880, tmp288
	str	r2, [r4, #600]	@ tmp383, <variable>.MvEScale
	mul	r1, r6, r9	@ tmp332, NeiBlkDist.880, tmp296
	str	ip, [r4, #604]	@ tmp394, <variable>.MvEScale
	mul	r2, r5, sl	@ tmp375, NeiBlkDist.885, tmp304
	mul	ip, r5, fp	@ tmp359, NeiBlkDist.885, tmp288
	str	r3, [r4, #572]	@ tmp324, <variable>.MvEScale
	mul	r8, r8, r0	@ tmp313, CurBlkDist.839, tmp312
	str	r1, [r4, #576]	@ tmp332, <variable>.MvEScale
	mul	r7, r7, sl	@ tmp410, NeiBlkDist.890, tmp304
	str	r2, [r4, #596]	@ tmp375, <variable>.MvEScale
	mul	r6, r6, sl	@ tmp340, NeiBlkDist.880, tmp304
	str	ip, [r4, #588]	@ tmp359, <variable>.MvEScale
	mul	r9, r5, r9	@ tmp367, NeiBlkDist.885, tmp296
	str	r8, [r4, #568]	@ tmp313, <variable>.MvEScale
	str	r7, [r4, #612]	@ tmp410, <variable>.MvEScale
	mov	r0, #512	@,
	ldr	r1, [r4, #540]	@, <variable>.Idx2Dist
	str	r6, [r4, #580]	@ tmp340, <variable>.MvEScale
	str	r9, [r4, #592]	@ tmp367, <variable>.MvEScale
	ldr	r5, [sp, #4]	@,
	ldr	sl, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r8, sl, asl #1	@ tmp419, <variable>.pic_distance,
	add	r7, r8, r0	@ pretmp.673, tmp419,
	add	r8, r7, #1	@ pretmp.673, pretmp.673,
	rsb	fp, r1, r8	@ tmp422,, pretmp.673
	mov	lr, fp, asl #23	@ CurBlkDist.742, tmp422,
	mov	r7, lr, lsr #23	@ CurBlkDist.742, CurBlkDist.742,
	cmp	r7, #0	@ CurBlkDist.742,
	movne	r1, r7	@, CurBlkDist.742
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	ip, r3, r8	@ tmp430, <variable>.Idx2Dist, pretmp.673
	mov	r6, ip, asl #23	@ NeiBlkDist.777, tmp430,
	mov	r6, r6, lsr #23	@ NeiBlkDist.777, NeiBlkDist.777,
	cmp	r6, #0	@ NeiBlkDist.777,
	movne	r1, r6	@, NeiBlkDist.777
	mov	fp, r0	@ tmp428,
	mov	r0, #512	@,
	mul	r9, r7, fp	@ tmp429, CurBlkDist.742, tmp428
	moveq	r1, r0	@,
	str	r9, [r4, #620]	@ tmp429, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #548]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r2, r1, r8	@ tmp438, <variable>.Idx2Dist, pretmp.673
	mov	r5, r2, asl #23	@ NeiBlkDist.782, tmp438,
	mov	r5, r5, lsr #23	@ NeiBlkDist.782, NeiBlkDist.782,
	cmp	r5, #0	@ NeiBlkDist.782,
	movne	r1, r5	@, NeiBlkDist.782
	mov	r9, r0	@ tmp436,
	mov	r0, #512	@,
	mul	sl, r7, r9	@ tmp437, CurBlkDist.742, tmp436
	moveq	r1, r0	@,
	str	sl, [r4, #624]	@ tmp437, <variable>.MvEScale
	bl	__aeabi_idiv	@
	ldr	r3, [r4, #552]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r8, r3, r8	@ tmp446, <variable>.Idx2Dist, pretmp.673
	mov	ip, r8, asl #23	@ NeiBlkDist.787, tmp446,
	mov	r8, ip, lsr #23	@ NeiBlkDist.787, NeiBlkDist.787,
	cmp	r8, #0	@ NeiBlkDist.787,
	mov	sl, r0	@ tmp444,
	mov	r0, #512	@,
	mul	r1, r7, sl	@ tmp445, CurBlkDist.742, tmp444
	str	r1, [r4, #628]	@ tmp445, <variable>.MvEScale
	movne	r1, r8	@, NeiBlkDist.787
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mul	r1, r8, fp	@ tmp539, NeiBlkDist.787, tmp428
	str	r1, [r4, #668]	@ tmp539, <variable>.MvEScale
	mul	r2, r8, r0	@ tmp534, NeiBlkDist.787, tmp452
	mul	ip, r5, r0	@ tmp523, NeiBlkDist.782, tmp452
	mul	r3, r6, r0	@ tmp488, NeiBlkDist.777, tmp452
	mul	r7, r7, r0	@ tmp453, CurBlkDist.742, tmp452
	str	r2, [r4, #680]	@ tmp534, <variable>.MvEScale
	mul	r0, r6, fp	@ tmp464, NeiBlkDist.777, tmp428
	str	ip, [r4, #664]	@ tmp523, <variable>.MvEScale
	mul	r2, r8, r9	@ tmp547, NeiBlkDist.787, tmp436
	str	r3, [r4, #648]	@ tmp488, <variable>.MvEScale
	mul	ip, r6, r9	@ tmp472, NeiBlkDist.777, tmp436
	str	r7, [r4, #632]	@ tmp453, <variable>.MvEScale
	mul	fp, r5, fp	@ tmp499, NeiBlkDist.782, tmp428
	str	r0, [r4, #636]	@ tmp464, <variable>.MvEScale
	mul	r9, r5, r9	@ tmp507, NeiBlkDist.782, tmp436
	str	r2, [r4, #672]	@ tmp547, <variable>.MvEScale
	mul	r8, r8, sl	@ tmp555, NeiBlkDist.787, tmp444
	str	ip, [r4, #640]	@ tmp472, <variable>.MvEScale
	mul	r6, r6, sl	@ tmp480, NeiBlkDist.777, tmp444
	str	fp, [r4, #652]	@ tmp499, <variable>.MvEScale
	mul	r5, r5, sl	@ tmp515, NeiBlkDist.782, tmp444
	str	r9, [r4, #656]	@ tmp507, <variable>.MvEScale
	str	r8, [r4, #676]	@ tmp555, <variable>.MvEScale
	str	r6, [r4, #644]	@ tmp480, <variable>.MvEScale
	str	r5, [r4, #660]	@ tmp515, <variable>.MvEScale
	b	.L30	@
.L101:
	ldr	lr, [r0, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	r5, r5, #512	@ pretmp.679, CurDistIdx,
	mov	r0, #512	@,
	rsb	r7, lr, r5	@ tmp226, <variable>.Idx2Dist, pretmp.679
	mov	r6, r7, asl #23	@ CurBlkDist.867, tmp226,
	mov	r6, r6, lsr #23	@ CurBlkDist.867, CurBlkDist.867,
	cmp	r6, #0	@ CurBlkDist.867,
	movne	r1, r6	@, CurBlkDist.867
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	ldr	r2, [r4, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r2, r5	@ tmp234, <variable>.Idx2Dist, pretmp.679
	mov	r3, r1, asl #23	@ NeiBlkDist.873, tmp234,
	mov	r5, r3, lsr #23	@ NeiBlkDist.873, NeiBlkDist.873,
	cmp	r5, #0	@ NeiBlkDist.873,
	movne	r1, r5	@, NeiBlkDist.873
	mov	r7, r0	@ tmp232,
	mov	r0, #512	@,
	mul	ip, r6, r7	@ tmp233, CurBlkDist.867, tmp232
	moveq	r1, r0	@,
	str	ip, [r4, #556]	@ tmp233, <variable>.MvEScale
	bl	__aeabi_idiv	@
	mul	r1, r5, r0	@ tmp252, NeiBlkDist.873, tmp240
	mul	r0, r6, r0	@ tmp241, CurBlkDist.867, tmp240
	mul	r5, r5, r7	@ tmp257, NeiBlkDist.873, tmp232
	str	r1, [r4, #576]	@ tmp252, <variable>.MvEScale
	str	r0, [r4, #560]	@ tmp241, <variable>.MvEScale
	str	r5, [r4, #572]	@ tmp257, <variable>.MvEScale
	b	.L30	@
	.fnend
	.size	AVS_UpdateTableMvEScale, .-AVS_UpdateTableMvEScale
	.align	2
	.global	AVS_UpdateTableDirectScale
	.type	AVS_UpdateTableDirectScale, %function
AVS_UpdateTableDirectScale:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r3, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L147	@,
	ldr	r9, [r0, #80]	@ temp.1070, <variable>.pRef
	add	r6, r0, #4	@ temp.1061, pCodecInf,
	ldr	r7, [r0, #84]	@ temp.1136, <variable>.pRef
	ldr	sl, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r6, r7	@ temp.1061, temp.1136
	moveq	r5, #0	@ ColRefDistIdx.1101,
	mov	sl, sl, asl #1	@ ColDistIdx.1060, <variable>.pic_distance,
	beq	.L111	@,
	ldr	ip, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	r8, sl, #512	@ tmp340, ColDistIdx.1060,
	mov	r5, ip, asl #1	@ tmp189, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1101, tmp189,
	rsb	r0, r5, r8	@ tmp192, ColRefDistIdx.1101, tmp340
	mov	fp, r0, asl #23	@ ColBlkDist.1088, tmp192,
	mov	r1, fp, lsr #23	@ ColBlkDist.1088, ColBlkDist.1088,
	cmp	r1, #0	@ ColBlkDist.1088,
	moveq	r3, #32	@ tmp197,
	streq	r3, [r4, #684]	@ tmp197, <variable>.DirectScale
	bne	.L148	@,
.L110:
	cmp	r6, r7	@ temp.1061, temp.1136
	beq	.L111	@,
	ldr	r1, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movw	r2, #:lower16:510	@ ColBlkDist.1095,
	movt	r2, #:upper16:510	@ ColBlkDist.1095,
	mov	r5, r1, asl #1	@ ColRefDistIdx.1101, <variable>.pic_distance,
	rsb	r8, r5, r8	@ tmp200, ColRefDistIdx.1101, tmp340
	and	r1, r8, r2	@ ColBlkDist.1095, tmp200, ColBlkDist.1095
	cmp	r1, #0	@ ColBlkDist.1095,
	moveq	r3, #32	@ tmp205,
	streq	r3, [r4, #688]	@ tmp205, <variable>.DirectScale
	bne	.L149	@,
.L111:
	ldr	r8, [r4, #88]	@ D.36291, <variable>.pRef
	cmp	r6, r8	@ temp.1061, D.36291
	beq	.L113	@,
	ldr	ip, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	sl, sl, #512	@ tmp345, ColDistIdx.1060,
	mov	r5, ip, asl #1	@ tmp206, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1101, tmp206,
	rsb	r0, r5, sl	@ tmp209, ColRefDistIdx.1101, tmp345
	mov	fp, r0, asl #23	@ ColBlkDist.1104, tmp209,
	mov	r1, fp, lsr #23	@ ColBlkDist.1104, ColBlkDist.1104,
	cmp	r1, #0	@ ColBlkDist.1104,
	moveq	r3, #32	@ tmp214,
	streq	r3, [r4, #692]	@ tmp214, <variable>.DirectScale
	bne	.L150	@,
.L115:
	cmp	r6, r8	@ temp.1061, D.36291
	beq	.L113	@,
	ldr	r1, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movw	r2, #:lower16:510	@ ColBlkDist.1064,
	movt	r2, #:upper16:510	@ ColBlkDist.1064,
	mov	r5, r1, asl #1	@ ColRefDistIdx.1101, <variable>.pic_distance,
	rsb	sl, r5, sl	@ tmp217, ColRefDistIdx.1101, tmp345
	and	r1, sl, r2	@ ColBlkDist.1064, tmp217, ColBlkDist.1064
	cmp	r1, #0	@ ColBlkDist.1064,
	moveq	r3, #32	@ tmp219,
	streq	r3, [r4, #696]	@ tmp219, <variable>.DirectScale
	beq	.L113	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #696]	@, <variable>.DirectScale
.L113:
	ldr	sl, [r4, #800]	@ <variable>.b_filed_enhanced_flag, <variable>.b_filed_enhanced_flag
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	bne	.L151	@,
	ldr	fp, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r6, r9	@ temp.1061, temp.1070
	mov	r3, fp, asl #1	@ temp.1072, <variable>.pic_distance,
	add	r9, r3, #1	@ ColDistIdx.1069, temp.1072,
	movne	r5, r3	@ ColRefDistIdx.1101, temp.1072
.L119:
	add	r9, r9, #512	@ tmp339, ColDistIdx.1069,
	rsb	r0, r5, r9	@ tmp232, ColRefDistIdx.1101, tmp339
	mov	fp, r0, asr #31	@ tmp233, tmp232,
	mov	ip, fp, lsr #23	@ tmp234, tmp233,
	add	r3, r0, ip	@ tmp235, tmp232, tmp234
	mov	r1, r3, asl #23	@ tmp236, tmp235,
	mov	r2, r1, lsr #23	@ tmp236, tmp236,
	subs	fp, r2, ip	@ ColBlkDist.1106, tmp236, tmp234
	bne	.L123	@,
.L122:
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	mov	r0, #32	@ tmp230,
	str	r0, [r4, #700]	@ tmp230, <variable>.DirectScale
	beq	.L152	@,
.L125:
	cmp	r6, r7	@ temp.1061, temp.1136
	beq	.L130	@,
	ldr	r5, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r5, asl #1	@ ColRefDistIdx.1101, <variable>.pic_distance,
	rsb	r0, r5, r9	@ tmp270, ColRefDistIdx.1101, tmp339
	mov	fp, r0, asr #31	@ tmp271, tmp270,
	mov	ip, fp, lsr #23	@ tmp272, tmp271,
	add	r1, r0, ip	@ tmp273, tmp270, tmp272
	mov	r2, r1, asl #23	@ tmp274, tmp273,
	mov	r3, r2, lsr #23	@ tmp274, tmp274,
	subs	fp, r3, ip	@ ColBlkDist.1117, tmp274, tmp272
	moveq	r3, #32	@ tmp280,
	streq	r3, [r4, #688]	@ tmp280, <variable>.DirectScale
	bne	.L153	@,
.L128:
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	mov	r1, #32	@ tmp257,
	str	r1, [r4, #704]	@ tmp257, <variable>.DirectScale
	beq	.L154	@,
.L132:
	cmp	r6, r8	@ temp.1061, D.36291
	beq	.L137	@,
	ldr	ip, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, ip, asl #1	@ tmp295, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1101, tmp295,
	rsb	r0, r5, r9	@ tmp298, ColRefDistIdx.1101, tmp339
	mov	r3, r0, asr #31	@ tmp299, tmp298,
	mov	r7, r3, lsr #23	@ tmp300, tmp299,
	add	r1, r0, r7	@ tmp301, tmp298, tmp300
	mov	r2, r1, asl #23	@ tmp302, tmp301,
	mov	ip, r2, lsr #23	@ tmp302, tmp302,
	subs	r7, ip, r7	@ ColBlkDist.1132, tmp302, tmp300
	moveq	ip, #32	@ tmp308,
	streq	ip, [r4, #692]	@ tmp308, <variable>.DirectScale
	bne	.L155	@,
.L135:
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	mov	r3, #32	@ tmp285,
	str	r3, [r4, #708]	@ tmp285, <variable>.DirectScale
	beq	.L139	@,
.L157:
	cmp	r6, r8	@ temp.1061, D.36291
	beq	.L140	@,
	ldr	r2, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	sub	r3, r9, r2, asl #1	@ tmp313, tmp339, <variable>.pic_distance,
	mov	r5, r3, asr #31	@ tmp314, tmp313,
	mov	r1, r5, lsr #23	@ tmp315, tmp314,
	add	r0, r3, r1	@ tmp316, tmp313, tmp315
	mov	r9, r0, asl #23	@ tmp317, tmp316,
	mov	r9, r9, lsr #23	@ tmp317, tmp317,
	subs	r5, r9, r1	@ ColBlkDist, tmp317, tmp315
	moveq	r2, #32	@ tmp320,
	streq	r2, [r4, #696]	@ tmp320, <variable>.DirectScale
	bne	.L156	@,
.L142:
	mov	ip, #32	@ tmp334,
	str	ip, [r4, #712]	@ tmp334, <variable>.DirectScale
.L106:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L151:
	ldr	r9, [r9, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r6, r7	@ temp.1061, temp.1136
	mov	r9, r9, asl #1	@ ColDistIdx.1069, <variable>.pic_distance,
	beq	.L119	@,
	ldr	r2, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r5, r2, asl #1	@ tmp239, <variable>.pic_distance,
	add	r5, r5, #1	@ ColRefDistIdx.1101, tmp239,
	rsb	ip, r5, #512	@ tmp241, ColRefDistIdx.1101,
	add	r0, r9, ip	@ tmp242, ColDistIdx.1069, tmp241
	mov	fp, r0, asr #31	@ tmp243, tmp242,
	mov	r2, fp, lsr #23	@ tmp244, tmp243,
	add	r3, r0, r2	@ tmp245, tmp242, tmp244
	mov	r1, r3, asl #23	@ tmp246, tmp245,
	mov	ip, r1, lsr #23	@ tmp246, tmp246,
	subs	fp, ip, r2	@ ColBlkDist.1106, tmp246, tmp244
	addeq	r9, r9, #512	@ tmp339, ColDistIdx.1069,
	moveq	ip, #32	@ tmp252,
	streq	ip, [r4, #684]	@ tmp252, <variable>.DirectScale
	beq	.L122	@,
	mov	r0, #16384	@,
	mov	r1, fp	@, ColBlkDist.1106
	bl	__aeabi_idiv	@
	add	r9, r9, #512	@ tmp339, ColDistIdx.1069,
	str	r0, [r4, #684]	@, <variable>.DirectScale
.L123:
	mov	r1, fp	@, ColBlkDist.1106
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	str	r0, [r4, #700]	@, <variable>.DirectScale
	bne	.L125	@,
.L152:
	cmp	r6, r7	@ temp.1061, temp.1136
	ldrne	r0, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r5, r0, asl #1	@ tmp266, <variable>.pic_distance,
	addne	r5, r5, #1	@ ColRefDistIdx.1101, tmp266,
.L130:
	rsb	r1, r5, r9	@ tmp259, ColRefDistIdx.1101, tmp339
	mov	fp, r1, asr #31	@ tmp260, tmp259,
	mov	r0, fp, lsr #23	@ tmp261, tmp260,
	add	r2, r1, r0	@ tmp262, tmp259, tmp261
	mov	ip, r2, asl #23	@ tmp263, tmp262,
	mov	r3, ip, lsr #23	@ tmp263, tmp263,
	subs	fp, r3, r0	@ ColBlkDist.1117, tmp263, tmp261
	beq	.L128	@,
.L129:
	mov	r1, fp	@, ColBlkDist.1117
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	str	r0, [r4, #704]	@, <variable>.DirectScale
	bne	.L132	@,
.L154:
	cmp	r6, r7	@ temp.1061, temp.1136
	ldrne	r5, [r7, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r5, r5, asl #1	@ ColRefDistIdx.1101, <variable>.pic_distance,
.L137:
	rsb	r0, r5, r9	@ tmp287, ColRefDistIdx.1101, tmp339
	mov	r3, r0, asr #31	@ tmp288, tmp287,
	mov	r7, r3, lsr #23	@ tmp289, tmp288,
	add	r1, r0, r7	@ tmp290, tmp287, tmp289
	mov	r2, r1, asl #23	@ tmp291, tmp290,
	mov	ip, r2, lsr #23	@ tmp291, tmp291,
	subs	r7, ip, r7	@ ColBlkDist.1132, tmp291, tmp289
	beq	.L135	@,
.L136:
	mov	r1, r7	@, ColBlkDist.1132
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	cmp	sl, #0	@ <variable>.b_filed_enhanced_flag,
	str	r0, [r4, #708]	@, <variable>.DirectScale
	bne	.L157	@,
.L139:
	cmp	r6, r8	@ temp.1061, D.36291
	ldrne	r5, [r8, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movne	r5, r5, asl #1	@ tmp324, <variable>.pic_distance,
	addne	r5, r5, #1	@ ColRefDistIdx.1101, tmp324,
.L140:
	rsb	r5, r5, r9	@ tmp327, ColRefDistIdx.1101, tmp339
	mov	r3, r5, asr #31	@ tmp328, tmp327,
	mov	r2, r3, lsr #23	@ tmp329, tmp328,
	add	r0, r5, r2	@ tmp330, tmp327, tmp329
	mov	r1, r0, asl #23	@ tmp331, tmp330,
	mov	ip, r1, lsr #23	@ tmp331, tmp331,
	subs	r5, ip, r2	@ ColBlkDist, tmp331, tmp329
	beq	.L142	@,
.L143:
	mov	r1, r5	@, ColBlkDist
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #712]	@, <variable>.DirectScale
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L150:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #692]	@, <variable>.DirectScale
	b	.L115	@
.L149:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #688]	@, <variable>.DirectScale
	b	.L111	@
.L148:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #684]	@, <variable>.DirectScale
	b	.L110	@
.L147:
	ldr	r2, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	add	r5, r0, #4	@ D.36249, pCodecInf,
	ldr	r3, [r0, #84]	@ temp.1147, <variable>.pRef
	ldr	r6, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	cmp	r5, r3	@ D.36249, temp.1147
	mov	r6, r6, asl #1	@ ColDistIdx, <variable>.pic_distance,
	beq	.L104	@,
	ldr	r0, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	ip, r6, #512	@ tmp169, ColDistIdx,
	movw	r1, #:lower16:510	@ ColBlkDist.1153,
	movt	r1, #:upper16:510	@ ColBlkDist.1153,
	sub	r3, ip, r0, asl #1	@ tmp172, tmp169, <variable>.pic_distance,
	and	r1, r3, r1	@ ColBlkDist.1153, tmp172, ColBlkDist.1153
	cmp	r1, #0	@ ColBlkDist.1153,
	moveq	r3, #32	@ tmp177,
	streq	r3, [r4, #684]	@ tmp177, <variable>.DirectScale
	bne	.L158	@,
.L104:
	ldr	r3, [r4, #88]	@ D.36251, <variable>.pRef
	cmp	r5, r3	@ D.36249, D.36251
	beq	.L106	@,
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	add	r6, r6, #512	@ tmp178, ColDistIdx,
	movw	r1, #:lower16:510	@ ColBlkDist.1056,
	movt	r1, #:upper16:510	@ ColBlkDist.1056,
	sub	r6, r6, r2, asl #1	@ tmp181, tmp178, <variable>.pic_distance,
	and	r1, r6, r1	@ ColBlkDist.1056, tmp181, ColBlkDist.1056
	cmp	r1, #0	@ ColBlkDist.1056,
	moveq	r2, #32	@ tmp183,
	streq	r2, [r4, #688]	@ tmp183, <variable>.DirectScale
	beq	.L106	@,
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #688]	@, <variable>.DirectScale
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L156:
	mov	r0, #16384	@,
	mov	r1, r5	@, ColBlkDist
	bl	__aeabi_idiv	@
	str	r0, [r4, #696]	@, <variable>.DirectScale
	b	.L143	@
.L155:
	mov	r0, #16384	@,
	mov	r1, r7	@, ColBlkDist.1132
	bl	__aeabi_idiv	@
	str	r0, [r4, #692]	@, <variable>.DirectScale
	b	.L136	@
.L153:
	mov	r0, #16384	@,
	mov	r1, fp	@, ColBlkDist.1117
	bl	__aeabi_idiv	@
	str	r0, [r4, #688]	@, <variable>.DirectScale
	b	.L129	@
.L158:
	mov	r0, #16384	@,
	bl	__aeabi_idiv	@
	str	r0, [r4, #684]	@, <variable>.DirectScale
	b	.L104	@
	.fnend
	.size	AVS_UpdateTableDirectScale, .-AVS_UpdateTableDirectScale
	.align	2
	.global	AVS_UpdateTableSymScale
	.type	AVS_UpdateTableSymScale, %function
AVS_UpdateTableSymScale:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r3, [r0, #84]	@ D.36320, <variable>.pRef
	add	r2, r0, #4	@ tmp165, pCodecInf,
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r2, r3	@ tmp165, D.36320
	moveq	r5, #0	@ D.36323,
	beq	.L161	@,
	ldrb	r5, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L169	@,
	ldr	r5, [r0, #76]	@ temp.1214, <variable>.pCurFrm
	mov	r0, #512	@,
	ldr	r2, [r4, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	ip, [r4, #536]	@ BlkDistBw.1242, <variable>.Idx2Dist
	ldr	r7, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r6, r7, asl #1	@ CurDistIdx.1236, <variable>.pic_distance,
	add	r7, r6, r0	@ pretmp.1237, CurDistIdx.1236,
	rsb	r6, r6, r0	@ pretmp.1238, CurDistIdx.1236,
	rsb	r1, r2, r7	@ temp.1240, <variable>.Idx2Dist, pretmp.1237
	add	r8, ip, r6	@ temp.1244, BlkDistBw.1242, pretmp.1238
	mov	lr, r1, asl #23	@ BlkDistFw.1241, temp.1240,
	mov	r1, lr, lsr #23	@ BlkDistFw.1241, BlkDistFw.1241,
	cmp	r1, #0	@ BlkDistFw.1241,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mov	r3, r8, asl #23	@ tmp190, temp.1244,
	ldr	r2, [r4, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r8, r3, lsr #23	@ tmp190, tmp190,
	ldr	ip, [r4, #532]	@ BlkDistBw.1250, <variable>.Idx2Dist
	rsb	r7, r2, r7	@ temp.1248, <variable>.Idx2Dist, pretmp.1237
	add	r6, ip, r6	@ temp.1252, BlkDistBw.1250, pretmp.1238
	mov	r1, r7, asl #23	@ BlkDistFw.1249, temp.1248,
	mov	r1, r1, lsr #23	@ BlkDistFw.1249, BlkDistFw.1249,
	cmp	r1, #0	@ BlkDistFw.1249,
	moveq	r1, #512	@,
	mul	r8, r8, r0	@ tmp192, tmp190,
	mov	r0, #512	@,
	str	r8, [r4, #716]	@ tmp192, <variable>.SymScale
	bl	__aeabi_idiv	@
	mov	r3, r6, asl #23	@ tmp199, temp.1252,
	ldr	r1, [r4, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r2, r3, lsr #23	@ tmp199, tmp199,
	ldr	r3, [r4, #552]	@ BlkDistBw.1229, <variable>.Idx2Dist
	mul	ip, r2, r0	@ tmp201, tmp199,
	mov	r0, #512	@,
	str	ip, [r4, #720]	@ tmp201, <variable>.SymScale
	ldr	r7, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	r6, r7, asl #1	@ tmp202, <variable>.pic_distance,
	add	r5, r6, #1	@ CurDistIdx.1217, tmp202,
	add	r6, r5, r0	@ pretmp.1198, CurDistIdx.1217,
	rsb	r5, r5, r0	@ pretmp.1232, CurDistIdx.1217,
	rsb	r2, r1, r6	@ temp.1230, <variable>.Idx2Dist, pretmp.1198
	add	r7, r3, r5	@ temp.1226, BlkDistBw.1229, pretmp.1232
	mov	ip, r2, asl #23	@ BlkDistFw.1228, temp.1230,
	mov	r1, ip, lsr #23	@ BlkDistFw.1228, BlkDistFw.1228,
	cmp	r1, #0	@ BlkDistFw.1228,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	mov	r3, r7, asl #23	@ tmp210, temp.1226,
	ldr	r1, [r4, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r7, r3, lsr #23	@ tmp210, tmp210,
	ldr	r2, [r4, #548]	@ BlkDistBw.1221, <variable>.Idx2Dist
	rsb	r6, r1, r6	@ temp.1219, <variable>.Idx2Dist, pretmp.1198
	add	r5, r2, r5	@ temp.1222, BlkDistBw.1221, pretmp.1232
	mov	ip, r6, asl #23	@ BlkDistFw.1211, temp.1219,
	mov	r1, ip, lsr #23	@ BlkDistFw.1211, BlkDistFw.1211,
	cmp	r1, #0	@ BlkDistFw.1211,
	moveq	r1, #512	@,
	mul	r7, r7, r0	@ tmp212, tmp210,
	mov	r0, #512	@,
	str	r7, [r4, #724]	@ tmp212, <variable>.SymScale
	bl	__aeabi_idiv	@
	mov	r3, r5, asl #23	@ tmp219, temp.1222,
	mov	r5, #1	@ D.36323,
	mov	r2, r3, lsr #23	@ tmp219, tmp219,
	mul	r1, r2, r0	@ tmp221, tmp219,
	str	r1, [r4, #728]	@ tmp221, <variable>.SymScale
.L161:
	mov	r0, r5	@, D.36323
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L169:
	ldr	lr, [r0, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r1, #:lower16:510	@ BlkDistFw,
	ldr	ip, [r0, #80]	@ <variable>.pRef, <variable>.pRef
	mov	r0, #512	@,
	ldr	r2, [r3, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	movt	r1, #:upper16:510	@ BlkDistFw,
	ldr	r6, [lr, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	lr, [ip, #8]	@ D.36335, <variable>.pic_distance
	mov	r3, r6, asl #1	@ CurDistIdx, <variable>.pic_distance,
	add	ip, r3, r0	@ tmp169, CurDistIdx,
	rsb	r6, r3, lr, asl #1	@, tmp175, CurDistIdx, D.36335,
	add	r6, r6, r0	@ D.36338, tmp175,
	sub	lr, ip, r2, asl #1	@ D.36333, tmp169, <variable>.pic_distance,
	and	r1, lr, r1	@ BlkDistFw, D.36333, BlkDistFw
	cmp	r1, #0	@ BlkDistFw,
	moveq	r1, r0	@,
	bl	__aeabi_idiv	@
	movw	ip, #:lower16:510	@ tmp180,
	movt	ip, #:upper16:510	@ tmp180,
	and	r1, r6, ip	@ tmp180, D.36338, tmp180
	mul	r3, r1, r0	@ tmp182, tmp180,
	mov	r0, r5	@, D.36323
	str	r3, [r4, #716]	@ tmp182, <variable>.SymScale
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	AVS_UpdateTableSymScale, .-AVS_UpdateTableSymScale
	.align	2
	.global	AVS_UpdateTabBBlkDist
	.type	AVS_UpdateTabBBlkDist, %function
AVS_UpdateTabBBlkDist:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	r2, [r0, #84]	@ D.36370, <variable>.pRef
	add	r1, r0, #4	@ tmp155, pCodecInf,
	mov	r3, r0	@ pCodecInf, pCodecInf
	cmp	r1, r2	@ tmp155, D.36370
	moveq	r0, #0	@ D.36373,
	beq	.L172	@,
	ldrb	r0, [r3, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r0, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L175	@,
	ldr	r5, [r3, #76]	@ temp.1312, <variable>.pCurFrm
	mov	r0, #1	@ D.36373,
	ldr	r8, [r3, #524]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r7, [r3, #532]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r6, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r3, #528]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r2, [r3, #536]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r4, r6, asl r0	@ CurDistIdx.1330, <variable>.pic_distance,
	ldr	r6, [r3, #540]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	rsb	r1, r4, #512	@ pretmp.1332, CurDistIdx.1330,
	add	r4, r4, #512	@ pretmp.1331, CurDistIdx.1330,
	rsb	ip, ip, r4	@ temp.1340, <variable>.Idx2Dist, pretmp.1331
	add	r2, r1, r2	@ temp.1343, pretmp.1332, <variable>.Idx2Dist
	rsb	r4, r8, r4	@ temp.1334, <variable>.Idx2Dist, pretmp.1331
	add	r1, r1, r7	@ temp.1337, pretmp.1332, <variable>.Idx2Dist
	mov	r2, r2, asl #23	@ tmp181, temp.1343,
	mov	ip, ip, asl #23	@ tmp179, temp.1340,
	mov	r1, r1, asl #23	@ tmp175, temp.1337,
	mov	r4, r4, asl #23	@ tmp173, temp.1334,
	mov	ip, ip, lsr #23	@ tmp179, tmp179,
	str	ip, [r3, #736]	@ tmp179, <variable>.BBlkDist
	mov	r4, r4, lsr #23	@ tmp173, tmp173,
	mov	ip, r1, lsr #23	@ tmp175, tmp175,
	str	r4, [r3, #732]	@ tmp173, <variable>.BBlkDist
	mov	r4, r2, lsr #23	@ tmp181, tmp181,
	str	ip, [r3, #740]	@ tmp175, <variable>.BBlkDist
	str	r4, [r3, #744]	@ tmp181, <variable>.BBlkDist
	ldr	r2, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	r4, [r3, #544]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	ldr	r5, [r3, #548]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	mov	r1, r2, asl r0	@ tmp183, <variable>.pic_distance,
	ldr	r2, [r3, #552]	@ <variable>.Idx2Dist, <variable>.Idx2Dist
	add	ip, r1, r0	@ CurDistIdx.1315, tmp183,
	rsb	r1, ip, #512	@ pretmp.1297, CurDistIdx.1315,
	add	ip, ip, #512	@ pretmp.1295, CurDistIdx.1315,
	rsb	r4, r4, ip	@ temp.1317, <variable>.Idx2Dist, pretmp.1295
	add	r2, r1, r2	@ temp.1321, pretmp.1297, <variable>.Idx2Dist
	rsb	ip, r6, ip	@ temp.1327, <variable>.Idx2Dist, pretmp.1295
	add	r1, r1, r5	@ temp.1324, pretmp.1297, <variable>.Idx2Dist
	mov	r4, r4, asl #23	@ tmp193, temp.1317,
	mov	r2, r2, asl #23	@ tmp195, temp.1321,
	mov	r1, r1, asl #23	@ tmp189, temp.1324,
	mov	ip, ip, asl #23	@ tmp187, temp.1327,
	mov	r4, r4, lsr #23	@ tmp193, tmp193,
	str	r4, [r3, #752]	@ tmp193, <variable>.BBlkDist
	mov	ip, ip, lsr #23	@ tmp187, tmp187,
	str	ip, [r3, #748]	@ tmp187, <variable>.BBlkDist
	mov	ip, r1, lsr #23	@ tmp189, tmp189,
	mov	r1, r2, lsr #23	@ tmp195, tmp195,
	str	ip, [r3, #756]	@ tmp189, <variable>.BBlkDist
	str	r1, [r3, #760]	@ tmp195, <variable>.BBlkDist
.L172:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L175:
	ldr	r6, [r3, #76]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r1, #:lower16:510	@ tmp166,
	ldr	r5, [r3, #80]	@ <variable>.pRef, <variable>.pRef
	movt	r1, #:upper16:510	@ tmp166,
	ldr	r4, [r2, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	ip, [r6, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	ldr	r6, [r5, #8]	@ <variable>.pic_distance, <variable>.pic_distance
	mov	ip, ip, asl #1	@ CurDistIdx, <variable>.pic_distance,
	add	r5, ip, #512	@ tmp159, CurDistIdx,
	rsb	ip, ip, r6, asl #1	@, tmp165, CurDistIdx, <variable>.pic_distance,
	and	r2, ip, r1	@ tmp168, tmp165, tmp168
	str	r2, [r3, #740]	@ tmp168, <variable>.BBlkDist
	sub	r2, r5, r4, asl #1	@ D.36383, tmp159, <variable>.pic_distance,
	and	ip, r2, r1	@ tmp166, D.36383, tmp166
	str	ip, [r3, #732]	@ tmp166, <variable>.BBlkDist
	b	.L172	@
	.fnend
	.size	AVS_UpdateTabBBlkDist, .-AVS_UpdateTabBBlkDist
	.align	2
	.global	AVS_UpdatePmvTable
	.type	AVS_UpdatePmvTable, %function
AVS_UpdatePmvTable:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r5, [r0, #460]	@ <variable>.Syntax.syn_pic.derived_pic_coding_type, <variable>.Syntax.syn_pic.derived_pic_coding_type
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L179	@,
	bcs	.L185	@,
	ldrb	r5, [r0, #193]	@ zero_extendqisi2	@ <variable>.Syntax.syn_pic.picture_structure, <variable>.Syntax.syn_pic.picture_structure
	cmp	r5, #1	@ <variable>.Syntax.syn_pic.picture_structure,
	beq	.L184	@,
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
	mov	r0, #1	@ D.36410,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L185:
	cmp	r5, #2	@ <variable>.Syntax.syn_pic.derived_pic_coding_type,
	movne	r0, #0	@ D.36410,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableDirectScale	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTabBBlkDist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableSymScale	@
	mov	r0, #1	@ D.36410,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L179:
	bl	AVS_UpdateTableIdx2Dist	@
	mov	r0, r4	@, pCodecInf
	bl	AVS_UpdateTableMvEScale	@
.L184:
	mov	r0, r5	@ D.36410, <variable>.Syntax.syn_pic.derived_pic_coding_type
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	AVS_UpdatePmvTable, .-AVS_UpdatePmvTable
	.align	2
	.global	AVS_VerifyMemPara
	.type	AVS_VerifyMemPara, %function
AVS_VerifyMemPara:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	AVS_VerifyMemPara, .-AVS_VerifyMemPara
	.align	2
	.global	AVS_GetPacketState
	.type	AVS_GetPacketState, %function
AVS_GetPacketState:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #16440	@ tmp136,
	ldr	r0, [r0, r3]	@ <variable>.IsPackWaitDec, <variable>.IsPackWaitDec
	subs	r0, r0, #1	@, <variable>.IsPackWaitDec,
	movne	r0, #1	@
	bx	lr	@
	.fnend
	.size	AVS_GetPacketState, .-AVS_GetPacketState
	.align	2
	.global	Avs_Vfmw_WQMatrix
	.type	Avs_Vfmw_WQMatrix, %function
Avs_Vfmw_WQMatrix:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 560
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r2, [r0, #140]	@ temp.1543, <variable>.syn_pic.weighting_quant_param_index
	.pad #560
	sub	sp, sp, #560	@,,
	mov	r3, #0	@ tmp246,
	add	ip, sp, #552	@ tmp1946,,
	add	r1, sp, #540	@ tmp1948,,
	cmp	r2, #1	@ temp.1543,
	str	r3, [sp, #548]	@ tmp246, quant_param_undetail
	str	r3, [ip], #4	@ tmp246, quant_param_undetail
	str	r3, [r1], #4	@ tmp246, quant_param_detail
	str	r3, [ip, #0]	@ tmp246, quant_param_undetail
	str	r3, [r1, #0]	@ tmp246, quant_param_detail
	str	r3, [sp, #536]	@ tmp246, quant_param_detail
	beq	.L223	@,
	ldr	r1, [r0, #124]	@ prephitmp.1450, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	r1, #0	@ prephitmp.1450,
	beq	.L224	@,
.L192:
	cmp	r2, #2	@ temp.1543,
	beq	.L197	@,
	cmp	r1, #0	@ prephitmp.1450,
	bne	.L196	@,
	cmp	r2, #3	@ temp.1543,
	movwne	r3, #:lower16:.LANCHOR0	@ tmp1949,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp1949,
	beq	.L197	@,
.L195:
	ldrh	r9, [r3, #22]	@, wq_param_default
	add	r4, sp, #512	@,,
	ldrh	fp, [r3, #0]	@, wq_param_default
	cmp	r2, #0	@ temp.1543,
	ldrh	sl, [r3, #2]	@, wq_param_default
	strh	r9, [r4, #22]	@ movhi	@, wq_param
	strh	fp, [r4, #0]	@ movhi	@, wq_param
	strh	sl, [r4, #2]	@ movhi	@, wq_param
	ldrh	r8, [r3, #4]	@, wq_param_default
	ldrh	ip, [r3, #6]	@, wq_param_default
	ldrh	r6, [r3, #8]	@, wq_param_default
	ldrh	r1, [r3, #10]	@, wq_param_default
	ldrh	r5, [r3, #12]	@, wq_param_default
	ldrh	r7, [r3, #14]	@, wq_param_default
	ldrh	r9, [r3, #16]	@, wq_param_default
	ldrh	fp, [r3, #18]	@, wq_param_default
	ldrh	sl, [r3, #20]	@, wq_param_default
	strh	r8, [r4, #4]	@ movhi	@, wq_param
	strh	ip, [r4, #6]	@ movhi	@, wq_param
	strh	r6, [r4, #8]	@ movhi	@, wq_param
	strh	r1, [r4, #10]	@ movhi	@, wq_param
	strh	r5, [r4, #12]	@ movhi	@, wq_param
	strh	r7, [r4, #14]	@ movhi	@, wq_param
	strh	r9, [r4, #16]	@ movhi	@, wq_param
	strh	fp, [r4, #18]	@ movhi	@, wq_param
	strh	sl, [r4, #20]	@ movhi	@, wq_param
	beq	.L200	@,
	cmp	r2, #1	@ temp.1543,
	beq	.L225	@,
	cmp	r2, #2	@ temp.1543,
	beq	.L226	@,
	cmp	r2, #3	@ temp.1543,
	beq	.L227	@,
.L200:
	mov	r3, #0	@ ivtmp.1523,
.L203:
	add	r1, r3, #2	@ tmp1944, ivtmp.1523,
	add	fp, r0, r3	@ tmp475, pSyntax, ivtmp.1523
	add	r3, r1, #2	@ ivtmp.1523, tmp1944,
	add	r4, r0, r1	@ tmp1951, pSyntax, tmp1944
	cmp	r3, #128	@ ivtmp.1523,
	mov	sl, #128	@ movhi	@,
	strh	sl, [fp, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	strh	sl, [r4, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	bne	.L203	@,
	ldr	r7, [r0, #120]	@ <variable>.syn_pic.weighting_quant_flag, <variable>.syn_pic.weighting_quant_flag
	cmp	r7, #0	@ <variable>.syn_pic.weighting_quant_flag,
	beq	.L205	@,
	ldr	ip, [r0, #144]	@ pretmp.1449, <variable>.syn_pic.weighting_quant_model
	movw	r1, #:lower16:.LANCHOR1	@ tmp479,
	movt	r1, #:upper16:.LANCHOR1	@ tmp479,
	add	r9, sp, #560	@,,
	movw	sl, #:lower16:-304	@ tmp480,
	movt	sl, #:upper16:-304	@ tmp480,
	add	r3, r1, ip, asl #6	@, tmp490, tmp479, pretmp.1449,
	ldrb	r5, [r1, ip, asl #6]	@ zero_extendqisi2	@, WeightQuantModel
	movw	ip, #:lower16:-298	@,
	movt	ip, #:upper16:-298	@,
	ldrb	fp, [r3, #8]	@ zero_extendqisi2	@, WeightQuantModel
	movw	r8, #:lower16:-302	@ tmp492,
	ldrb	r6, [r3, #2]	@ zero_extendqisi2	@, WeightQuantModel
	movt	r8, #:upper16:-302	@ tmp492,
	str	r5, [sp, #60]	@, %sfp
	cmp	r2, #0	@ temp.1543,
	str	fp, [sp, #196]	@, %sfp
	ldrb	fp, [r3, #1]	@ zero_extendqisi2	@, WeightQuantModel
	add	r4, r9, r6, asl #1	@,,,,
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r9, [sp, #60]	@, %sfp
	ldrb	r7, [r3, #4]	@ zero_extendqisi2	@, WeightQuantModel
	str	fp, [sp, #64]	@, %sfp
	str	r6, [sp, #56]	@, %sfp
	add	r6, sp, #560	@,,
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@, WeightQuantModel
	str	r5, [sp, #92]	@, %sfp
	str	r4, [sp, #40]	@, %sfp
	add	r4, r6, r9, asl #1	@,,,,
	ldr	r5, [sp, #64]	@, %sfp
	ldrb	r9, [r3, #7]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	fp, [r3, #6]	@ zero_extendqisi2	@, WeightQuantModel
	str	r7, [sp, #96]	@, %sfp
	movw	r7, #:lower16:-300	@ tmp502,
	ldr	r6, [sp, #92]	@, %sfp
	movt	r7, #:upper16:-300	@ tmp502,
	str	ip, [sp, #100]	@, %sfp
	add	ip, sp, #560	@,,
	str	r1, [sp, #208]	@, %sfp
	add	r1, ip, r5, asl #1	@,,,,
	str	r9, [sp, #200]	@, %sfp
	ldrb	r5, [r3, #9]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	ip, [r3, #10]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r9, [sp, #96]	@, %sfp
	str	r1, [sp, #36]	@, %sfp
	ldrb	r1, [r3, #11]	@ zero_extendqisi2	@, WeightQuantModel
	str	r4, [sp, #32]	@, %sfp
	add	r4, sp, #560	@,,
	str	fp, [sp, #204]	@, %sfp
	add	fp, r4, r6, asl #1	@,,,,
	add	r6, sp, #560	@,,
	str	fp, [sp, #44]	@, %sfp
	add	r4, r6, r9, asl #1	@,,,,
	str	r5, [sp, #192]	@, %sfp
	str	ip, [sp, #188]	@, %sfp
	add	r9, sp, #560	@,,
	str	r1, [sp, #184]	@, %sfp
	add	ip, sp, #560	@,,
	str	r4, [sp, #48]	@, %sfp
	movw	r5, #:lower16:-296	@ tmp524,
	ldr	fp, [sp, #208]	@, %sfp
	movt	r5, #:upper16:-296	@ tmp524,
	ldr	r6, [sp, #204]	@, %sfp
	movw	r4, #:lower16:-294	@ tmp536,
	movt	r4, #:upper16:-294	@ tmp536,
	add	r1, ip, fp, asl #1	@,,,,
	movw	ip, #:lower16:-290	@,
	add	fp, r9, r6, asl #1	@,,,,
	ldr	r9, [sp, #200]	@, %sfp
	add	r6, sp, #560	@,,
	str	fp, [sp, #68]	@, %sfp
	movt	ip, #:upper16:-290	@,
	str	ip, [sp, #12]	@, %sfp
	add	fp, r6, r9, asl #1	@,,,,
	ldr	r6, [sp, #196]	@, %sfp
	add	r9, sp, #560	@,,
	str	fp, [sp, #72]	@, %sfp
	movw	ip, #:lower16:-288	@,
	movt	ip, #:upper16:-288	@,
	add	fp, r9, r6, asl #1	@,,,,
	ldr	r9, [sp, #192]	@, %sfp
	add	r6, sp, #560	@,,
	str	fp, [sp, #76]	@, %sfp
	str	ip, [sp, #16]	@, %sfp
	movw	ip, #:lower16:-286	@,
	add	fp, r6, r9, asl #1	@,,,,
	ldr	r6, [sp, #188]	@, %sfp
	add	r9, sp, #560	@,,
	movt	ip, #:upper16:-286	@,
	str	fp, [sp, #80]	@, %sfp
	str	ip, [sp, #20]	@, %sfp
	add	fp, r9, r6, asl #1	@,,,,
	movw	ip, #:lower16:-284	@,
	ldr	r9, [sp, #184]	@, %sfp
	movt	ip, #:upper16:-284	@,
	str	ip, [sp, #24]	@, %sfp
	movw	ip, #:lower16:-282	@,
	movt	ip, #:upper16:-282	@,
	str	ip, [sp, #28]	@, %sfp
	add	r6, sp, #560	@,,
	ldr	ip, [sp, #32]	@, %sfp
	str	fp, [sp, #84]	@, %sfp
	add	fp, r6, r9, asl #1	@,,,,
	ldr	r6, [sp, #36]	@, %sfp
	ldrh	r9, [ip, #-48]	@, wq_param
	add	ip, sp, #560	@,,
	str	fp, [sp, #88]	@, %sfp
	ldrh	fp, [r6, #-48]	@, wq_param
	strh	r9, [ip, sl]	@ movhi	@, wq_matrix
	ldr	r9, [sp, #40]	@, %sfp
	ldr	r6, [sp, #44]	@, %sfp
	strh	fp, [ip, r8]	@ movhi	@, wq_matrix
	ldrh	sl, [r9, #-48]	@, wq_param
	ldr	r9, [sp, #48]	@, %sfp
	ldrh	r8, [r6, #-48]	@, wq_param
	strh	sl, [ip, r7]	@ movhi	@, wq_matrix
	ldr	fp, [sp, #100]	@, %sfp
	ldrh	r7, [r9, #-48]	@, wq_param
	str	r1, [sp, #52]	@, %sfp
	movw	r1, #:lower16:-292	@ tmp548,
	strh	r8, [ip, fp]	@ movhi	@, wq_matrix
	movt	r1, #:upper16:-292	@ tmp548,
	strh	r7, [ip, r5]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #52]	@, %sfp
	ldr	r8, [sp, #68]	@, %sfp
	ldr	fp, [sp, #72]	@, %sfp
	ldrh	r6, [sl, #-48]	@, wq_param
	ldrh	r5, [r8, #-48]	@, wq_param
	ldrh	r9, [fp, #-48]	@, wq_param
	strh	r6, [ip, r4]	@ movhi	@, wq_matrix
	ldr	r4, [sp, #76]	@, %sfp
	ldr	r6, [sp, #80]	@, %sfp
	strh	r5, [ip, r1]	@ movhi	@, wq_matrix
	ldrh	sl, [r4, #-48]	@, wq_param
	ldrh	r8, [r6, #-48]	@, wq_param
	ldr	fp, [sp, #84]	@, %sfp
	ldr	r7, [sp, #12]	@, %sfp
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r5, [sp, #20]	@, %sfp
	ldr	r4, [sp, #88]	@, %sfp
	strh	r9, [ip, r7]	@ movhi	@, wq_matrix
	strh	sl, [ip, r1]	@ movhi	@, wq_matrix
	strh	r8, [ip, r5]	@ movhi	@, wq_matrix
	movw	r5, #:lower16:-280	@,
	ldrh	r9, [fp, #-48]	@, wq_param
	movt	r5, #:upper16:-280	@,
	ldrh	r1, [r4, #-48]	@, wq_param
	add	r4, sp, #560	@,,
	ldrb	r8, [r3, #16]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r7, [sp, #24]	@, %sfp
	ldr	sl, [sp, #28]	@, %sfp
	str	r8, [sp, #164]	@, %sfp
	strh	r9, [ip, r7]	@ movhi	@, wq_matrix
	movw	r7, #:lower16:-278	@,
	ldrb	r8, [r3, #13]	@ zero_extendqisi2	@, WeightQuantModel
	movt	r7, #:upper16:-278	@,
	strh	r1, [ip, sl]	@ movhi	@, wq_matrix
	ldrb	r1, [r3, #12]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	ip, [r3, #14]	@ zero_extendqisi2	@, WeightQuantModel
	str	r8, [sp, #176]	@, %sfp
	str	r1, [sp, #180]	@, %sfp
	add	sl, r4, r1, asl #1	@,,,,
	str	r5, [sp, #84]	@, %sfp
	add	r5, sp, #560	@,,
	str	ip, [sp, #172]	@, %sfp
	add	ip, r5, r8, asl #1	@,,,,
	ldrb	fp, [r3, #15]	@ zero_extendqisi2	@, WeightQuantModel
	add	r4, sp, #560	@,,
	ldrb	r9, [r3, #17]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r6, [r3, #18]	@ zero_extendqisi2	@, WeightQuantModel
	str	fp, [sp, #168]	@, %sfp
	str	r9, [sp, #160]	@, %sfp
	ldr	r1, [sp, #172]	@, %sfp
	ldrb	r9, [r3, #21]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	fp, [r3, #20]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r5, [sp, #168]	@, %sfp
	ldrb	r8, [r3, #23]	@ zero_extendqisi2	@, WeightQuantModel
	str	r7, [sp, #100]	@, %sfp
	ldrb	r7, [r3, #19]	@ zero_extendqisi2	@, WeightQuantModel
	str	r6, [sp, #156]	@, %sfp
	str	sl, [sp, #24]	@, %sfp
	add	sl, r4, r1, asl #1	@,,,,
	str	ip, [sp, #28]	@, %sfp
	add	ip, sp, #560	@,,
	str	r9, [sp, #144]	@, %sfp
	add	r1, sp, #560	@,,
	ldr	r9, [sp, #164]	@, %sfp
	str	sl, [sp, #32]	@, %sfp
	ldr	sl, [sp, #160]	@, %sfp
	str	fp, [sp, #148]	@, %sfp
	add	fp, ip, r5, asl #1	@,,,,
	str	fp, [sp, #36]	@, %sfp
	add	r4, r1, r9, asl #1	@,,,,
	ldr	fp, [sp, #156]	@, %sfp
	add	r9, sp, #560	@,,
	str	r7, [sp, #152]	@, %sfp
	movw	r7, #:lower16:-276	@ tmp642,
	str	r8, [sp, #136]	@, %sfp
	add	r8, sp, #560	@,,
	add	ip, r8, sl, asl #1	@,,,,
	ldr	sl, [sp, #152]	@, %sfp
	ldrb	r6, [r3, #22]	@ zero_extendqisi2	@, WeightQuantModel
	add	r1, r9, fp, asl #1	@,,,,
	ldr	r9, [sp, #148]	@, %sfp
	add	r8, sp, #560	@,,
	add	fp, r8, sl, asl #1	@,,,,
	add	r8, sp, #560	@,,
	str	r6, [sp, #140]	@, %sfp
	movt	r7, #:upper16:-276	@ tmp642,
	add	sl, r8, r9, asl #1	@,,,,
	str	r4, [sp, #40]	@, %sfp
	str	ip, [sp, #44]	@, %sfp
	movw	r8, #:lower16:-262	@,
	str	r1, [sp, #48]	@, %sfp
	movt	r8, #:upper16:-262	@,
	str	fp, [sp, #52]	@, %sfp
	movw	r6, #:lower16:-274	@ tmp654,
	str	sl, [sp, #68]	@, %sfp
	add	sl, sp, #560	@,,
	str	r8, [sp, #12]	@, %sfp
	movt	r6, #:upper16:-274	@ tmp654,
	ldr	r9, [sp, #144]	@, %sfp
	movw	r5, #:lower16:-272	@ tmp664,
	movt	r5, #:upper16:-272	@ tmp664,
	movw	r4, #:lower16:-270	@ tmp676,
	movt	r4, #:upper16:-270	@ tmp676,
	movw	ip, #:lower16:-268	@ tmp688,
	add	r8, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #140]	@, %sfp
	str	r8, [sp, #72]	@, %sfp
	add	r8, sp, #560	@,,
	movw	sl, #:lower16:-260	@,
	movt	sl, #:upper16:-260	@,
	str	sl, [sp, #16]	@, %sfp
	add	sl, r8, r9, asl #1	@,,,,
	ldr	r9, [sp, #136]	@, %sfp
	movw	r8, #:lower16:-258	@,
	str	sl, [sp, #76]	@, %sfp
	add	sl, sp, #560	@,,
	movt	r8, #:upper16:-258	@,
	str	r8, [sp, #20]	@, %sfp
	add	r8, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #24]	@, %sfp
	ldr	sl, [sp, #84]	@, %sfp
	movt	ip, #:upper16:-268	@ tmp688,
	str	r8, [sp, #88]	@, %sfp
	movw	r1, #:lower16:-266	@ tmp700,
	ldrh	r8, [r9, #-48]	@, wq_param
	add	r9, sp, #560	@,,
	movt	r1, #:upper16:-266	@ tmp700,
	movw	fp, #:lower16:-264	@ tmp712,
	movt	fp, #:upper16:-264	@ tmp712,
	strh	r8, [r9, sl]	@ movhi	@, wq_matrix
	ldr	r8, [sp, #28]	@, %sfp
	ldrh	sl, [r8, #-48]	@, wq_param
	ldr	r8, [sp, #100]	@, %sfp
	strh	sl, [r9, r8]	@ movhi	@, wq_matrix
	ldr	r8, [sp, #32]	@, %sfp
	ldrh	sl, [r8, #-48]	@, wq_param
	ldr	r8, [sp, #36]	@, %sfp
	strh	sl, [r9, r7]	@ movhi	@, wq_matrix
	ldrh	r7, [r8, #-48]	@, wq_param
	ldr	sl, [sp, #40]	@, %sfp
	strh	r7, [r9, r6]	@ movhi	@, wq_matrix
	ldrh	r8, [sl, #-48]	@, wq_param
	ldr	r7, [sp, #44]	@, %sfp
	ldr	r6, [sp, #48]	@, %sfp
	strh	r8, [r9, r5]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #52]	@, %sfp
	ldrh	r5, [r7, #-48]	@, wq_param
	ldrh	r8, [sl, #-48]	@, wq_param
	strh	r5, [r9, r4]	@ movhi	@, wq_matrix
	ldrh	r4, [r6, #-48]	@, wq_param
	strh	r4, [r9, ip]	@ movhi	@, wq_matrix
	strh	r8, [r9, r1]	@ movhi	@, wq_matrix
	ldr	r7, [sp, #68]	@, %sfp
	ldr	r1, [sp, #72]	@, %sfp
	ldr	r4, [sp, #76]	@, %sfp
	ldrh	ip, [r7, #-48]	@, wq_param
	ldr	r8, [sp, #88]	@, %sfp
	ldrh	r5, [r1, #-48]	@, wq_param
	strh	ip, [r9, fp]	@ movhi	@, wq_matrix
	ldrh	sl, [r4, #-48]	@, wq_param
	ldr	fp, [sp, #16]	@, %sfp
	ldrh	r7, [r8, #-48]	@, wq_param
	ldr	r6, [sp, #12]	@, %sfp
	ldr	ip, [sp, #20]	@, %sfp
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@, WeightQuantModel
	strh	r5, [r9, r6]	@ movhi	@, wq_matrix
	strh	sl, [r9, fp]	@ movhi	@, wq_matrix
	mov	sl, r9	@,
	ldrb	fp, [r3, #32]	@ zero_extendqisi2	@, WeightQuantModel
	strh	r7, [r9, ip]	@ movhi	@, wq_matrix
	ldr	r5, [sp, #60]	@, %sfp
	ldrb	ip, [r3, #24]	@ zero_extendqisi2	@, WeightQuantModel
	add	r8, r9, fp, asl #1	@,, tmp10,,
	ldrb	r6, [r3, #26]	@ zero_extendqisi2	@, WeightQuantModel
	add	r4, r9, r5, asl #1	@,, tmp6,,
	ldrb	r7, [r3, #27]	@ zero_extendqisi2	@, WeightQuantModel
	str	fp, [sp, #100]	@, %sfp
	add	r9, r9, ip, asl #1	@, tmp763, tmp10,,
	ldrb	fp, [r3, #28]	@ zero_extendqisi2	@, WeightQuantModel
	str	ip, [sp, #132]	@, %sfp
	str	r1, [sp, #128]	@, %sfp
	ldrb	ip, [r3, #29]	@ zero_extendqisi2	@, WeightQuantModel
	str	r8, [sp, #16]	@, %sfp
	add	r8, sl, r1, asl #1	@, tmp774,,,
	ldrb	r1, [r3, #30]	@ zero_extendqisi2	@, WeightQuantModel
	str	r4, [sp, #236]	@, %sfp
	str	r6, [sp, #124]	@, %sfp
	str	r7, [sp, #120]	@, %sfp
	add	r7, sl, r6, asl #1	@, tmp785,,,
	str	fp, [sp, #116]	@, %sfp
	str	ip, [sp, #112]	@, %sfp
	str	r1, [sp, #108]	@, %sfp
	ldr	r4, [sp, #120]	@, %sfp
	ldrb	r5, [r3, #31]	@ zero_extendqisi2	@, WeightQuantModel
	ldrh	r9, [r9, #-48]	@, wq_param
	add	r6, sl, r4, asl #1	@, tmp796,,,
	ldrb	r4, [r3, #33]	@ zero_extendqisi2	@, WeightQuantModel
	str	r5, [sp, #104]	@, %sfp
	add	r5, sl, fp, asl #1	@, tmp807,,,
	add	fp, sp, #560	@,,
	ldr	sl, [sp, #104]	@, %sfp
	str	r4, [sp, #88]	@, %sfp
	add	r4, fp, ip, asl #1	@, tmp818,,,
	ldrb	ip, [r3, #34]	@ zero_extendqisi2	@, WeightQuantModel
	ldrh	r8, [r8, #-48]	@, wq_param
	ldrh	r7, [r7, #-48]	@, wq_param
	str	ip, [sp, #84]	@, %sfp
	add	ip, fp, r1, asl #1	@, tmp829,,,
	ldrb	r1, [r3, #35]	@ zero_extendqisi2	@, WeightQuantModel
	ldrh	r4, [r4, #-48]	@, wq_param
	str	r1, [sp, #80]	@, %sfp
	add	r1, fp, sl, asl #1	@, tmp840,,,
	ldr	sl, [sp, #88]	@, %sfp
	add	fp, fp, sl, asl #1	@,,,,
	str	fp, [sp, #12]	@, %sfp
	add	fp, sp, #560	@,,
	mvn	sl, #255	@ tmp760,
	strh	r9, [fp, sl]	@ movhi	@, wq_matrix
	ldr	r9, [sp, #84]	@, %sfp
	add	sl, fp, r9, asl #1	@, tmp871,,,
	ldr	fp, [sp, #80]	@, %sfp
	add	r9, sp, #256	@,,
	strh	r8, [r9, #50]	@ movhi	@, wq_matrix
	add	r9, sp, #560	@,,
	add	r8, r9, fp, asl #1	@, tmp882,,,
	add	r9, sp, #256	@,,
	ldrh	fp, [r6, #-48]	@, wq_param
	strh	r7, [r9, #52]	@ movhi	@, wq_matrix
	ldrh	r7, [r5, #-48]	@, wq_param
	ldrh	r6, [ip, #-48]	@, wq_param
	ldr	ip, [sp, #16]	@, %sfp
	strh	r7, [r9, #56]	@ movhi	@, wq_matrix
	ldr	r7, [sp, #12]	@, %sfp
	ldrh	r5, [r1, #-48]	@, wq_param
	strh	fp, [r9, #54]	@ movhi	@, wq_matrix
	ldrh	r1, [r7, #-48]	@, wq_param
	ldrh	fp, [ip, #-48]	@, wq_param
	strh	r4, [r9, #58]	@ movhi	@, wq_matrix
	strh	r6, [r9, #60]	@ movhi	@, wq_matrix
	strh	r5, [r9, #62]	@ movhi	@, wq_matrix
	add	r5, sp, #560	@,,
	strh	fp, [r9, #64]	@ movhi	@, wq_matrix
	add	fp, sp, #560	@,,
	strh	r1, [r9, #66]	@ movhi	@, wq_matrix
	ldrh	r4, [sl, #-48]	@, wq_param
	ldrh	r8, [r8, #-48]	@, wq_param
	ldrb	ip, [r3, #38]	@ zero_extendqisi2	@, WeightQuantModel
	strh	r4, [r9, #68]	@ movhi	@, wq_matrix
	strh	r8, [r9, #70]	@ movhi	@, wq_matrix
	ldr	r9, [sp, #56]	@, %sfp
	ldrb	r4, [r3, #37]	@ zero_extendqisi2	@, WeightQuantModel
	str	ip, [sp, #68]	@, %sfp
	add	r7, fp, r9, asl #1	@,,,,
	add	fp, sp, #560	@,,
	ldr	r6, [sp, #64]	@, %sfp
	str	r4, [sp, #72]	@, %sfp
	str	r7, [sp, #244]	@, %sfp
	add	r7, fp, r4, asl #1	@, tmp904,,,
	ldr	r4, [sp, #68]	@, %sfp
	add	sl, r5, r6, asl #1	@,,,,
	ldrb	r1, [r3, #36]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	ip, [r3, #40]	@ zero_extendqisi2	@, WeightQuantModel
	add	r6, fp, r4, asl #1	@,, tmp8,,
	ldrb	r5, [r3, #42]	@ zero_extendqisi2	@, WeightQuantModel
	str	r6, [sp, #12]	@, %sfp
	add	r9, fp, r1, asl #1	@, tmp893,,,
	ldrb	r6, [r3, #43]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r4, [r3, #45]	@ zero_extendqisi2	@, WeightQuantModel
	str	r5, [sp, #40]	@, %sfp
	str	r1, [sp, #76]	@, %sfp
	ldrb	r5, [r3, #44]	@ zero_extendqisi2	@, WeightQuantModel
	ldrb	r1, [r3, #41]	@ zero_extendqisi2	@, WeightQuantModel
	str	sl, [sp, #240]	@, %sfp
	str	ip, [sp, #48]	@, %sfp
	ldrb	sl, [r3, #39]	@ zero_extendqisi2	@, WeightQuantModel
	str	r6, [sp, #36]	@, %sfp
	add	r6, fp, ip, asl #1	@, tmp937,,,
	ldrb	ip, [r3, #46]	@ zero_extendqisi2	@, WeightQuantModel
	add	r8, fp, sl, asl #1	@,, tmp4,,
	str	sl, [sp, #52]	@, %sfp
	str	r1, [sp, #44]	@, %sfp
	str	r8, [sp, #16]	@, %sfp
	str	r5, [sp, #32]	@, %sfp
	add	r5, fp, r1, asl #1	@, tmp948,,,
	ldr	r8, [sp, #40]	@, %sfp
	str	r4, [sp, #64]	@, %sfp
	str	ip, [sp, #60]	@, %sfp
	ldr	sl, [sp, #36]	@, %sfp
	add	r4, fp, r8, asl #1	@, tmp959,,,
	ldrb	r1, [r3, #47]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	r8, [sp, #32]	@, %sfp
	add	ip, fp, sl, asl #1	@, tmp970,,,
	ldr	sl, [sp, #64]	@, %sfp
	ldrh	r9, [r9, #-48]	@, wq_param
	str	r1, [sp, #56]	@, %sfp
	add	r1, fp, r8, asl #1	@, tmp981,,,
	add	fp, fp, sl, asl #1	@, tmp992,,,
	add	r8, sp, #256	@,,
	ldr	sl, [sp, #60]	@, %sfp
	strh	r9, [r8, #72]	@ movhi	@, wq_matrix
	add	r8, sp, #560	@,,
	ldrh	r6, [r6, #-48]	@, wq_param
	add	r9, r8, sl, asl #1	@, tmp1003,,,
	ldrh	sl, [r7, #-48]	@, wq_param
	add	r8, sp, #256	@,,
	add	r7, sp, #560	@,,
	strh	sl, [r8, #74]	@ movhi	@, wq_matrix
	ldr	r8, [sp, #56]	@, %sfp
	add	sl, r7, r8, asl #1	@, tmp1014,,,
	ldr	r8, [sp, #12]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	ldrh	r7, [r8, #-48]	@, wq_param
	add	r8, sp, #256	@,,
	strh	r6, [r8, #80]	@ movhi	@, wq_matrix
	strh	r7, [r8, #76]	@ movhi	@, wq_matrix
	ldr	r7, [sp, #16]	@, %sfp
	ldrh	r6, [r4, #-48]	@, wq_param
	ldrh	r4, [r1, #-48]	@, wq_param
	add	r1, sp, #560	@,,
	ldrh	r7, [r7, #-48]	@, wq_param
	strh	r6, [r8, #84]	@ movhi	@, wq_matrix
	ldrh	r6, [r9, #-48]	@, wq_param
	add	r9, sp, #560	@,,
	strh	r7, [r8, #78]	@ movhi	@, wq_matrix
	ldrh	r7, [r5, #-48]	@, wq_param
	ldrh	r5, [ip, #-48]	@, wq_param
	ldrb	ip, [r3, #48]	@ zero_extendqisi2	@, WeightQuantModel
	strh	r7, [r8, #82]	@ movhi	@, wq_matrix
	ldrh	r7, [fp, #-48]	@, wq_param
	strh	r5, [r8, #86]	@ movhi	@, wq_matrix
	strh	r4, [r8, #88]	@ movhi	@, wq_matrix
	strh	r7, [r8, #90]	@ movhi	@, wq_matrix
	strh	r6, [r8, #92]	@ movhi	@, wq_matrix
	strh	sl, [r8, #94]	@ movhi	@, wq_matrix
	str	ip, [sp, #0]	@, %sfp
	ldrb	r5, [r3, #49]	@ zero_extendqisi2	@, WeightQuantModel
	ldr	fp, [sp, #92]	@, %sfp
	ldr	r4, [sp, #96]	@, %sfp
	str	r5, [sp, #4]	@, %sfp
	ldr	r6, [sp, #0]	@, %sfp
	add	r8, r1, fp, asl #1	@,,,,
	ldr	sl, [sp, #4]	@, %sfp
	add	r7, r9, r4, asl #1	@,,,,
	add	r1, sp, #560	@,,
	str	r8, [sp, #248]	@, %sfp
	str	r7, [sp, #252]	@, %sfp
	add	r9, r1, r6, asl #1	@, tmp1025,,,
	ldrb	r8, [r3, #50]	@ zero_extendqisi2	@ temp.1850, WeightQuantModel
	add	r5, r1, sl, asl #1	@,, tmp12,,
	ldrb	r7, [r3, #51]	@ zero_extendqisi2	@ temp.1853, WeightQuantModel
	add	sl, sp, #560	@,,
	ldrb	r6, [r3, #52]	@ zero_extendqisi2	@ temp.1856, WeightQuantModel
	str	r5, [sp, #12]	@, %sfp
	add	r4, r1, r8, asl #1	@,, tmp11, temp.1850,
	ldrb	r5, [r3, #53]	@ zero_extendqisi2	@ temp.1859, WeightQuantModel
	add	ip, sl, r7, asl #1	@,,, temp.1853,
	add	r1, sp, #560	@,,
	add	sl, sp, #560	@,,
	add	fp, r1, r6, asl #1	@,,, temp.1856,
	str	r4, [sp, #16]	@, %sfp
	add	r1, sl, r5, asl #1	@,,, temp.1859,
	ldrb	r4, [r3, #54]	@ zero_extendqisi2	@ temp.1862, WeightQuantModel
	ldrb	sl, [r3, #57]	@ zero_extendqisi2	@, WeightQuantModel
	str	r1, [sp, #212]	@, %sfp
	add	r1, sp, #560	@,,
	str	ip, [sp, #92]	@, %sfp
	str	sl, [sp, #28]	@, %sfp
	add	sl, r1, r4, asl #1	@,,, temp.1862,
	ldrb	ip, [r3, #55]	@ zero_extendqisi2	@ temp.1865, WeightQuantModel
	ldrb	r1, [r3, #58]	@ zero_extendqisi2	@, WeightQuantModel
	str	sl, [sp, #216]	@, %sfp
	add	sl, sp, #560	@,,
	str	fp, [sp, #96]	@, %sfp
	str	r1, [sp, #24]	@, %sfp
	add	r1, sl, ip, asl #1	@,,, temp.1865,
	ldrb	fp, [r3, #56]	@ zero_extendqisi2	@ temp.1868, WeightQuantModel
	ldrb	sl, [r3, #59]	@ zero_extendqisi2	@, WeightQuantModel
	str	r1, [sp, #220]	@, %sfp
	add	r1, sp, #560	@,,
	str	sl, [sp, #20]	@, %sfp
	add	sl, r1, fp, asl #1	@,,, temp.1868,
	ldr	r1, [sp, #28]	@, %sfp
	str	sl, [sp, #224]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r1, asl #1	@,,,,
	ldrh	r1, [r9, #-48]	@, wq_param
	str	sl, [sp, #228]	@, %sfp
	add	sl, sp, #256	@,,
	ldr	r9, [sp, #24]	@, %sfp
	strh	r1, [sl, #96]	@ movhi	@, wq_matrix
	add	r1, sp, #560	@,,
	add	r1, r1, r9, asl #1	@,,,,
	str	r1, [sp, #232]	@, %sfp
	ldr	r1, [sp, #12]	@, %sfp
	ldrh	r9, [r1, #-48]	@, wq_param
	ldr	r1, [sp, #20]	@, %sfp
	strh	r9, [sl, #98]	@ movhi	@, wq_matrix
	add	sl, sp, #560	@,,
	add	r9, sl, r1, asl #1	@, tmp1146,,,
	ldr	r1, [sp, #16]	@, %sfp
	ldrh	r9, [r9, #-48]	@, wq_param
	ldrh	sl, [r1, #-48]	@, wq_param
	add	r1, sp, #256	@,,
	strh	r9, [r1, #118]	@ movhi	@, wq_matrix
	add	r9, sp, #560	@,,
	strh	sl, [r1, #100]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #92]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #102]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #96]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #104]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #212]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #106]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #216]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #108]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #220]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #110]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #224]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #112]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #228]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #114]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #232]	@, %sfp
	ldrh	sl, [sl, #-48]	@, wq_param
	strh	sl, [r1, #116]	@ movhi	@, wq_matrix
	ldrb	r1, [r3, #63]	@ zero_extendqisi2	@, WeightQuantModel
	str	r1, [sp, #12]	@, %sfp
	ldr	sl, [sp, #208]	@, %sfp
	ldrb	r1, [r3, #60]	@ zero_extendqisi2	@ temp.1880, WeightQuantModel
	add	r9, r9, sl, asl #1	@,,,,
	ldrb	sl, [r3, #61]	@ zero_extendqisi2	@, WeightQuantModel
	str	r9, [sp, #92]	@, %sfp
	ldr	r9, [sp, #204]	@, %sfp
	str	sl, [sp, #16]	@, %sfp
	add	sl, sp, #560	@,,
	ldrb	r3, [r3, #62]	@ zero_extendqisi2	@ temp.1886, WeightQuantModel
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #200]	@, %sfp
	str	sl, [sp, #96]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #196]	@, %sfp
	str	sl, [sp, #200]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #192]	@, %sfp
	str	sl, [sp, #196]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #188]	@, %sfp
	str	sl, [sp, #192]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #184]	@, %sfp
	str	sl, [sp, #188]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #180]	@, %sfp
	str	sl, [sp, #184]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #176]	@, %sfp
	str	sl, [sp, #180]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #172]	@, %sfp
	str	sl, [sp, #176]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #168]	@, %sfp
	str	sl, [sp, #172]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #164]	@, %sfp
	str	sl, [sp, #168]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #160]	@, %sfp
	str	sl, [sp, #164]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #156]	@, %sfp
	str	sl, [sp, #160]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #152]	@, %sfp
	str	sl, [sp, #156]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	str	sl, [sp, #152]	@, %sfp
	ldr	r9, [sp, #148]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #144]	@, %sfp
	str	sl, [sp, #148]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #140]	@, %sfp
	str	sl, [sp, #144]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #136]	@, %sfp
	str	sl, [sp, #140]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #132]	@, %sfp
	str	sl, [sp, #136]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #128]	@, %sfp
	str	sl, [sp, #132]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #124]	@, %sfp
	str	sl, [sp, #128]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #120]	@, %sfp
	str	sl, [sp, #124]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #116]	@, %sfp
	str	sl, [sp, #120]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #112]	@, %sfp
	str	sl, [sp, #116]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #108]	@, %sfp
	str	sl, [sp, #112]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #104]	@, %sfp
	str	sl, [sp, #108]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #100]	@, %sfp
	str	sl, [sp, #104]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #88]	@, %sfp
	str	sl, [sp, #100]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #84]	@, %sfp
	str	sl, [sp, #88]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #80]	@, %sfp
	str	sl, [sp, #84]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #76]	@, %sfp
	str	sl, [sp, #80]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	str	sl, [sp, #76]	@, %sfp
	ldr	r9, [sp, #72]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #68]	@, %sfp
	str	sl, [sp, #72]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #52]	@, %sfp
	str	sl, [sp, #68]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #48]	@, %sfp
	str	sl, [sp, #52]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #44]	@, %sfp
	str	sl, [sp, #48]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #40]	@, %sfp
	str	sl, [sp, #44]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #36]	@, %sfp
	str	sl, [sp, #40]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #32]	@, %sfp
	str	sl, [sp, #36]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #64]	@, %sfp
	str	sl, [sp, #32]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #60]	@, %sfp
	str	sl, [sp, #64]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #56]	@, %sfp
	str	sl, [sp, #60]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #0]	@, %sfp
	str	sl, [sp, #56]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	ldr	r9, [sp, #4]	@, %sfp
	str	sl, [sp, #232]	@, %sfp
	add	sl, sp, #560	@,,
	add	sl, sl, r9, asl #1	@,,,,
	str	sl, [sp, #204]	@, %sfp
	add	sl, sp, #560	@,,
	add	r9, sl, r8, asl #1	@,,, temp.1850,
	add	sl, sp, #560	@,,
	str	r9, [sp, #208]	@, %sfp
	add	r9, sl, r7, asl #1	@,,, temp.1853,
	add	sl, sp, #560	@,,
	str	r9, [sp, #212]	@, %sfp
	add	r8, sp, #560	@,,
	add	r9, sl, r5, asl #1	@,,, temp.1859,
	str	r9, [sp, #220]	@, %sfp
	add	r7, r8, r6, asl #1	@,,, temp.1856,
	ldr	r9, [sp, #28]	@, %sfp
	add	r8, sp, #560	@,,
	add	r6, sp, #560	@,,
	str	r7, [sp, #216]	@, %sfp
	add	r5, r6, ip, asl #1	@,,, temp.1865,
	add	r7, r8, r4, asl #1	@,,, temp.1862,
	add	ip, sp, #560	@,,
	add	r4, sp, #560	@,,
	add	sl, r4, fp, asl #1	@,,, temp.1868,
	str	r7, [sp, #224]	@, %sfp
	add	fp, ip, r9, asl #1	@,,,,
	str	r5, [sp, #228]	@, %sfp
	str	sl, [sp, #4]	@, %sfp
	add	ip, sp, #560	@,,
	str	fp, [sp, #28]	@, %sfp
	add	r7, sp, #560	@,,
	ldr	r8, [sp, #24]	@, %sfp
	add	fp, sp, #256	@,,
	ldr	r5, [sp, #20]	@, %sfp
	ldr	r4, [sp, #16]	@, %sfp
	ldr	sl, [sp, #12]	@, %sfp
	add	r6, r7, r8, asl #1	@,,,,
	add	r7, ip, r5, asl #1	@, tmp1610,,,
	str	r6, [sp, #24]	@, %sfp
	add	r5, ip, r4, asl #1	@, tmp1624,,,
	add	r6, ip, r1, asl #1	@, tmp1617,, temp.1880,
	add	r4, ip, r3, asl #1	@, tmp1631,, temp.1886,
	add	ip, ip, sl, asl #1	@, tmp1638,,,
	ldr	sl, [sp, #236]	@, %sfp
	ldrh	r1, [r6, #-48]	@, wq_param
	ldrh	r8, [r5, #-48]	@, wq_param
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	r9, [ip, #-48]	@, wq_param
	strh	r1, [fp, #120]	@ movhi	@, wq_matrix
	strh	r8, [fp, #122]	@ movhi	@, wq_matrix
	ldrh	r1, [r4, #-48]	@, wq_param
	strh	r9, [fp, #126]	@ movhi	@, wq_matrix
	strh	r3, [fp, #128]	@ movhi	@, wq_matrix
	ldr	r8, [sp, #240]	@, %sfp
	ldr	r9, [sp, #244]	@, %sfp
	ldr	r3, [sp, #248]	@, %sfp
	strh	r1, [fp, #124]	@ movhi	@, wq_matrix
	ldrh	sl, [r9, #-36]	@, wq_param
	ldrh	r1, [r8, #-36]	@, wq_param
	ldrh	r8, [r3, #-36]	@, wq_param
	strh	sl, [fp, #132]	@ movhi	@, wq_matrix
	strh	r1, [fp, #130]	@ movhi	@, wq_matrix
	strh	r8, [fp, #134]	@ movhi	@, wq_matrix
	ldr	r1, [sp, #252]	@, %sfp
	ldr	sl, [sp, #92]	@, %sfp
	ldr	r8, [sp, #96]	@, %sfp
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	r1, [r8, #-36]	@, wq_param
	strh	r9, [fp, #136]	@ movhi	@, wq_matrix
	strh	r3, [fp, #138]	@ movhi	@, wq_matrix
	strh	r1, [fp, #140]	@ movhi	@, wq_matrix
	add	r1, sp, #192
	ldmia	r1, {r1, r3, r9}	@ phole ldm
	ldrh	sl, [r9, #-36]	@, wq_param
	ldrh	r8, [r3, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	sl, [fp, #142]	@ movhi	@, wq_matrix
	strh	r8, [fp, #144]	@ movhi	@, wq_matrix
	strh	r9, [fp, #146]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #188]	@, %sfp
	ldr	r8, [sp, #184]	@, %sfp
	ldr	r9, [sp, #180]	@, %sfp
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	r1, [r8, #-36]	@, wq_param
	ldrh	sl, [r9, #-36]	@, wq_param
	strh	r3, [fp, #148]	@ movhi	@, wq_matrix
	strh	r1, [fp, #150]	@ movhi	@, wq_matrix
	strh	sl, [fp, #152]	@ movhi	@, wq_matrix
	ldr	r3, [sp, #176]	@, %sfp
	ldr	r1, [sp, #172]	@, %sfp
	ldr	sl, [sp, #168]	@, %sfp
	ldrh	r8, [r3, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [sl, #-36]	@, wq_param
	strh	r8, [fp, #154]	@ movhi	@, wq_matrix
	strh	r9, [fp, #156]	@ movhi	@, wq_matrix
	strh	r3, [fp, #158]	@ movhi	@, wq_matrix
	ldr	r8, [sp, #164]	@, %sfp
	ldr	r9, [sp, #160]	@, %sfp
	ldr	r3, [sp, #156]	@, %sfp
	ldrh	r1, [r8, #-36]	@, wq_param
	ldrh	sl, [r9, #-36]	@, wq_param
	ldrh	r8, [r3, #-36]	@, wq_param
	strh	r1, [fp, #160]	@ movhi	@, wq_matrix
	strh	sl, [fp, #162]	@ movhi	@, wq_matrix
	strh	r8, [fp, #164]	@ movhi	@, wq_matrix
	ldr	r1, [sp, #152]	@, %sfp
	ldr	sl, [sp, #148]	@, %sfp
	ldr	r8, [sp, #144]	@, %sfp
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	r1, [r8, #-36]	@, wq_param
	strh	r9, [fp, #166]	@ movhi	@, wq_matrix
	strh	r3, [fp, #168]	@ movhi	@, wq_matrix
	strh	r1, [fp, #170]	@ movhi	@, wq_matrix
	add	r1, sp, #132
	ldmia	r1, {r1, r3, r9}	@ phole ldm
	ldrh	sl, [r9, #-36]	@, wq_param
	ldrh	r8, [r3, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	strh	sl, [fp, #172]	@ movhi	@, wq_matrix
	strh	r8, [fp, #174]	@ movhi	@, wq_matrix
	strh	r9, [fp, #176]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #128]	@, %sfp
	ldr	r8, [sp, #124]	@, %sfp
	ldr	r9, [sp, #120]	@, %sfp
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	r1, [r8, #-36]	@, wq_param
	ldrh	sl, [r9, #-36]	@, wq_param
	strh	r3, [fp, #178]	@ movhi	@, wq_matrix
	strh	r1, [fp, #180]	@ movhi	@, wq_matrix
	strh	sl, [fp, #182]	@ movhi	@, wq_matrix
	ldr	r3, [sp, #116]	@, %sfp
	ldr	r1, [sp, #112]	@, %sfp
	ldr	sl, [sp, #108]	@, %sfp
	ldrh	r8, [r3, #-36]	@, wq_param
	ldrh	r9, [r1, #-36]	@, wq_param
	ldrh	r3, [sl, #-36]	@, wq_param
	strh	r8, [fp, #184]	@ movhi	@, wq_matrix
	strh	r9, [fp, #186]	@ movhi	@, wq_matrix
	strh	r3, [fp, #188]	@ movhi	@, wq_matrix
	ldr	r8, [sp, #104]	@, %sfp
	ldr	r9, [sp, #100]	@, %sfp
	ldr	r3, [sp, #88]	@, %sfp
	ldrh	r1, [r8, #-36]	@, wq_param
	mov	r8, fp	@,
	ldrh	sl, [r9, #-36]	@, wq_param
	strh	r1, [fp, #190]	@ movhi	@, wq_matrix
	ldrh	r1, [r3, #-36]	@, wq_param
	strh	sl, [fp, #192]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #80]	@, %sfp
	strh	r1, [fp, #194]	@ movhi	@, wq_matrix
	ldr	fp, [sp, #84]	@, %sfp
	ldr	r1, [sp, #76]	@, %sfp
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	r9, [fp, #-36]	@, wq_param
	ldrh	fp, [r1, #-36]	@, wq_param
	strh	r3, [r8, #198]	@ movhi	@, wq_matrix
	strh	r9, [r8, #196]	@ movhi	@, wq_matrix
	ldr	r3, [sp, #68]	@, %sfp
	ldr	r9, [sp, #72]	@, %sfp
	strh	fp, [r8, #200]	@ movhi	@, wq_matrix
	ldr	fp, [sp, #52]	@, %sfp
	ldrh	sl, [r9, #-36]	@, wq_param
	ldrh	r1, [r3, #-36]	@, wq_param
	ldrh	r9, [fp, #-36]	@, wq_param
	strh	sl, [r8, #202]	@ movhi	@, wq_matrix
	strh	r1, [r8, #204]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #48]	@, %sfp
	ldr	r1, [sp, #44]	@, %sfp
	strh	r9, [r8, #206]	@ movhi	@, wq_matrix
	ldr	r9, [sp, #40]	@, %sfp
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	fp, [r1, #-36]	@, wq_param
	ldrh	sl, [r9, #-36]	@, wq_param
	strh	r3, [r8, #208]	@ movhi	@, wq_matrix
	strh	fp, [r8, #210]	@ movhi	@, wq_matrix
	strh	sl, [r8, #212]	@ movhi	@, wq_matrix
	ldr	r3, [sp, #36]	@, %sfp
	ldr	fp, [sp, #32]	@, %sfp
	ldr	sl, [sp, #64]	@, %sfp
	ldrh	r1, [r3, #-36]	@, wq_param
	ldrh	r9, [fp, #-36]	@, wq_param
	ldrh	r3, [sl, #-36]	@, wq_param
	strh	r1, [r8, #214]	@ movhi	@, wq_matrix
	strh	r9, [r8, #216]	@ movhi	@, wq_matrix
	ldr	r1, [sp, #60]	@, %sfp
	ldr	r9, [sp, #56]	@, %sfp
	strh	r3, [r8, #218]	@ movhi	@, wq_matrix
	ldr	r3, [sp, #232]	@, %sfp
	ldrh	fp, [r1, #-36]	@, wq_param
	ldrh	sl, [r9, #-36]	@, wq_param
	ldrh	r1, [r3, #-36]	@, wq_param
	strh	fp, [r8, #220]	@ movhi	@, wq_matrix
	strh	sl, [r8, #222]	@ movhi	@, wq_matrix
	ldr	fp, [sp, #204]	@, %sfp
	ldr	sl, [sp, #208]	@, %sfp
	strh	r1, [r8, #224]	@ movhi	@, wq_matrix
	ldr	r1, [sp, #212]	@, %sfp
	ldrh	r9, [fp, #-36]	@, wq_param
	ldrh	r3, [sl, #-36]	@, wq_param
	ldrh	fp, [r1, #-36]	@, wq_param
	strh	r9, [r8, #226]	@ movhi	@, wq_matrix
	strh	r3, [r8, #228]	@ movhi	@, wq_matrix
	ldr	r9, [sp, #216]	@, %sfp
	ldr	r3, [sp, #220]	@, %sfp
	strh	fp, [r8, #230]	@ movhi	@, wq_matrix
	ldr	fp, [sp, #224]	@, %sfp
	ldrh	sl, [r9, #-36]	@, wq_param
	ldrh	r1, [r3, #-36]	@, wq_param
	ldrh	fp, [fp, #-36]	@, wq_param
	strh	sl, [r8, #232]	@ movhi	@, wq_matrix
	strh	r1, [r8, #234]	@ movhi	@, wq_matrix
	strh	fp, [r8, #236]	@ movhi	@, wq_matrix
	ldr	r9, [sp, #228]	@, %sfp
	ldr	r3, [sp, #4]	@, %sfp
	ldrh	r7, [r7, #-36]	@, wq_param
	ldrh	sl, [r9, #-36]	@, wq_param
	ldr	r9, [sp, #28]	@, %sfp
	ldrh	r1, [r3, #-36]	@, wq_param
	strh	sl, [r8, #238]	@ movhi	@, wq_matrix
	ldr	sl, [sp, #24]	@, %sfp
	ldrh	r9, [r9, #-36]	@, wq_param
	ldrh	r6, [r6, #-36]	@, wq_param
	ldrh	sl, [sl, #-36]	@, wq_param
	ldrh	r5, [r5, #-36]	@, wq_param
	ldrh	r4, [r4, #-36]	@, wq_param
	ldrh	r3, [ip, #-36]	@, wq_param
	strh	r1, [r8, #240]	@ movhi	@, wq_matrix
	strh	r9, [r8, #242]	@ movhi	@, wq_matrix
	strh	sl, [r8, #244]	@ movhi	@, wq_matrix
	strh	r7, [r8, #246]	@ movhi	@, wq_matrix
	strh	r6, [r8, #248]	@ movhi	@, wq_matrix
	strh	r5, [r8, #250]	@ movhi	@, wq_matrix
	strh	r4, [r8, #252]	@ movhi	@, wq_matrix
	strh	r3, [r8, #254]	@ movhi	@, wq_matrix
	bne	.L207	@,
.L230:
	add	r3, sp, #256	@ ivtmp.1491,,
	add	r0, r0, #196	@ ivtmp.1492, pSyntax,
	add	ip, r3, #128	@ D.38020, ivtmp.1491,
.L208:
	add	r1, r3, #2	@ tmp1939, ivtmp.1491,
	ldrh	r3, [r3, #128]	@, wq_matrix
	mov	r2, r0	@ tmp1940, ivtmp.1492
	strh	r3, [r2], #2	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r3, r1, #2	@ ivtmp.1491, tmp1939,
	ldrh	r1, [r1, #128]	@, wq_matrix
	cmp	r3, ip	@ ivtmp.1491, D.38020
	strh	r1, [r0, #2]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r0, r2, #2	@ ivtmp.1492, tmp1940,
	bne	.L208	@,
.L213:
	add	sp, sp, #560	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L197:
	movw	r3, #:lower16:.LANCHOR0	@ tmp1949,
	movt	r3, #:upper16:.LANCHOR0	@ tmp1949,
	ldr	ip, [r0, #172]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	cmp	r1, #0	@ prephitmp.1450,
	add	r1, r0, #176
	ldmia	r1, {r1, r7, r9}	@ phole ldm
	ldrh	r6, [r3, #12]	@ wq_param_default, wq_param_default
	ldrh	r5, [r3, #14]	@ wq_param_default, wq_param_default
	ldrh	r4, [r3, #16]	@ wq_param_default, wq_param_default
	add	r8, r6, ip	@ tmp294, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	ldrh	fp, [r3, #18]	@ wq_param_default, wq_param_default
	add	r6, r5, r1	@ tmp300, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	ldr	ip, [r0, #188]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	add	r5, r4, r7	@ tmp306, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	ldr	r1, [r0, #192]	@ <variable>.syn_pic.weighting_quant_param_delta2, <variable>.syn_pic.weighting_quant_param_delta2
	add	r4, fp, r9	@ tmp312, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	ldrh	sl, [r3, #20]	@ wq_param_default, wq_param_default
	add	fp, sp, #512	@,,
	ldrh	r7, [r3, #22]	@ wq_param_default, wq_param_default
	add	r9, sl, ip	@ tmp318, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	strh	r8, [fp, #24]	@ movhi	@ tmp294, quant_param_detail
	add	r1, r7, r1	@ tmp324, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta2
	strh	r6, [fp, #26]	@ movhi	@ tmp300, quant_param_detail
	strh	r5, [fp, #28]	@ movhi	@ tmp306, quant_param_detail
	strh	r4, [fp, #30]	@ movhi	@ tmp312, quant_param_detail
	strh	r9, [fp, #32]	@ movhi	@ tmp318, quant_param_detail
	strh	r1, [fp, #34]	@ movhi	@ tmp324, quant_param_detail
	beq	.L195	@,
.L196:
	add	r8, sp, #512	@,,
	cmp	r2, #0	@ temp.1543,
	mov	r3, #128	@ movhi	@,
	strh	r3, [r8, #0]	@ movhi	@, wq_param
	strh	r3, [r8, #2]	@ movhi	@, wq_param
	strh	r3, [r8, #4]	@ movhi	@, wq_param
	strh	r3, [r8, #6]	@ movhi	@, wq_param
	strh	r3, [r8, #8]	@ movhi	@, wq_param
	strh	r3, [r8, #10]	@ movhi	@, wq_param
	strh	r3, [r8, #12]	@ movhi	@, wq_param
	strh	r3, [r8, #14]	@ movhi	@, wq_param
	strh	r3, [r8, #16]	@ movhi	@, wq_param
	strh	r3, [r8, #18]	@ movhi	@, wq_param
	strh	r3, [r8, #20]	@ movhi	@, wq_param
	strh	r3, [r8, #22]	@ movhi	@, wq_param
	bne	.L228	@,
	movw	sl, #:lower16:.LANCHOR0	@ tmp433,
	movt	sl, #:upper16:.LANCHOR0	@ tmp433,
	add	ip, sp, #512	@,,
	ldrh	r5, [sl, #22]	@, wq_param_default
	ldrh	r7, [sl, #12]	@, wq_param_default
	ldrh	r3, [sl, #14]	@, wq_param_default
	ldrh	fp, [sl, #16]	@, wq_param_default
	ldrh	r4, [sl, #18]	@, wq_param_default
	ldrh	r8, [sl, #20]	@, wq_param_default
	strh	r5, [ip, #22]	@ movhi	@, wq_param
	strh	r7, [ip, #12]	@ movhi	@, wq_param
	strh	r3, [ip, #14]	@ movhi	@, wq_param
	strh	fp, [ip, #16]	@ movhi	@, wq_param
	strh	r4, [ip, #18]	@ movhi	@, wq_param
	strh	r8, [ip, #20]	@ movhi	@, wq_param
	b	.L200	@
.L224:
	cmp	r2, #3	@ temp.1543,
	bne	.L192	@,
.L193:
	movw	r3, #:lower16:.LANCHOR0	@ tmp1935,
	movt	r3, #:upper16:.LANCHOR0	@ tmp1935,
	ldr	sl, [r0, #148]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldr	fp, [r0, #160]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldr	r6, [r0, #152]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldr	r5, [r0, #156]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	ldrh	r4, [r3, #2]	@ wq_param_default, wq_param_default
	ldrh	ip, [r3, #4]	@ wq_param_default, wq_param_default
	ldrh	r9, [r3, #6]	@ wq_param_default, wq_param_default
	add	r6, r6, r4	@ tmp264, <variable>.syn_pic.weighting_quant_param_delta1, wq_param_default
	ldrh	r8, [r3, #0]	@ wq_param_default, wq_param_default
	add	r5, r5, ip	@ tmp270, <variable>.syn_pic.weighting_quant_param_delta1, wq_param_default
	add	r4, r9, fp	@ tmp276, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	ldr	ip, [r0, #164]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	add	r9, sp, #512	@,,
	ldrh	r7, [r3, #10]	@ wq_param_default, wq_param_default
	add	r8, r8, sl	@ tmp258, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	ldrh	sl, [r3, #8]	@ wq_param_default, wq_param_default
	ldr	r3, [r0, #168]	@ <variable>.syn_pic.weighting_quant_param_delta1, <variable>.syn_pic.weighting_quant_param_delta1
	add	fp, sl, ip	@ tmp282, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	strh	r8, [r9, #36]	@ movhi	@ tmp258, quant_param_undetail
	add	r3, r7, r3	@ tmp288, wq_param_default, <variable>.syn_pic.weighting_quant_param_delta1
	strh	r6, [r9, #38]	@ movhi	@ tmp264, quant_param_undetail
	strh	r5, [r9, #40]	@ movhi	@ tmp270, quant_param_undetail
	strh	r4, [r9, #42]	@ movhi	@ tmp276, quant_param_undetail
	strh	fp, [r9, #44]	@ movhi	@ tmp282, quant_param_undetail
	strh	r3, [r9, #46]	@ movhi	@ tmp288, quant_param_undetail
	b	.L192	@
.L228:
	cmp	r2, #1	@ temp.1543,
	beq	.L229	@,
	cmp	r2, #2	@ temp.1543,
	bne	.L200	@,
	add	r1, sp, #512	@,,
	add	ip, sp, #512	@,,
	ldrh	r9, [r1, #26]	@, quant_param_detail
	ldrh	r8, [ip, #24]	@, quant_param_detail
	ldrh	r6, [r1, #28]	@, quant_param_detail
	ldrh	r5, [r1, #30]	@, quant_param_detail
	ldrh	r7, [r1, #32]	@, quant_param_detail
	ldrh	r3, [r1, #34]	@, quant_param_detail
	strh	r8, [r1, #12]	@ movhi	@, wq_param
	strh	r9, [r1, #14]	@ movhi	@, wq_param
	strh	r6, [r1, #16]	@ movhi	@, wq_param
	strh	r5, [r1, #18]	@ movhi	@, wq_param
	strh	r7, [r1, #20]	@ movhi	@, wq_param
	strh	r3, [r1, #22]	@ movhi	@, wq_param
	b	.L200	@
.L205:
	movw	r9, #:lower16:-304	@ tmp1642,
	movw	sl, #:lower16:-302	@ tmp1645,
	movt	r9, #:upper16:-304	@ tmp1642,
	movt	sl, #:upper16:-302	@ tmp1645,
	movw	r8, #:lower16:-300	@ tmp1648,
	movw	r7, #:lower16:-298	@ tmp1651,
	movt	r8, #:upper16:-300	@ tmp1648,
	movt	r7, #:upper16:-298	@ tmp1651,
	movw	r6, #:lower16:-296	@ tmp1654,
	movw	r4, #:lower16:-292	@ tmp1660,
	movt	r6, #:upper16:-296	@ tmp1654,
	movt	r4, #:upper16:-292	@ tmp1660,
	movw	fp, #:lower16:-288	@,
	movt	fp, #:upper16:-288	@,
	str	fp, [sp, #68]	@, %sfp
	movw	fp, #:lower16:-284	@,
	movt	fp, #:upper16:-284	@,
	str	fp, [sp, #16]	@, %sfp
	movw	fp, #:lower16:-280	@,
	movt	fp, #:upper16:-280	@,
	str	fp, [sp, #24]	@, %sfp
	movw	fp, #:lower16:-276	@,
	movt	fp, #:upper16:-276	@,
	str	fp, [sp, #56]	@, %sfp
	movw	fp, #:lower16:-272	@,
	movt	fp, #:upper16:-272	@,
	str	fp, [sp, #64]	@, %sfp
	movw	fp, #:lower16:-268	@,
	movt	fp, #:upper16:-268	@,
	str	fp, [sp, #36]	@, %sfp
	movw	fp, #:lower16:-264	@,
	movt	fp, #:upper16:-264	@,
	str	fp, [sp, #44]	@, %sfp
	movw	fp, #:lower16:-260	@,
	movt	fp, #:upper16:-260	@,
	str	fp, [sp, #52]	@, %sfp
	add	fp, sp, #560	@,,
	movw	r1, #:lower16:-286	@,
	movt	r1, #:upper16:-286	@,
	str	r1, [sp, #12]	@, %sfp
	movw	r1, #:lower16:-282	@,
	movt	r1, #:upper16:-282	@,
	str	r1, [sp, #20]	@, %sfp
	movw	r1, #:lower16:-278	@,
	movt	r1, #:upper16:-278	@,
	str	r1, [sp, #28]	@, %sfp
	strh	r3, [fp, r9]	@ movhi	@ ivtmp.1523, wq_matrix
	movw	r5, #:lower16:-294	@ tmp1657,
	strh	r3, [fp, sl]	@ movhi	@ ivtmp.1523, wq_matrix
	movt	r5, #:upper16:-294	@ tmp1657,
	strh	r3, [fp, r8]	@ movhi	@ ivtmp.1523, wq_matrix
	movw	ip, #:lower16:-290	@ tmp1663,
	strh	r3, [fp, r7]	@ movhi	@ ivtmp.1523, wq_matrix
	movt	ip, #:upper16:-290	@ tmp1663,
	strh	r3, [fp, r6]	@ movhi	@ ivtmp.1523, wq_matrix
	movw	r1, #:lower16:-274	@,
	strh	r3, [fp, r4]	@ movhi	@ ivtmp.1523, wq_matrix
	movt	r1, #:upper16:-274	@,
	ldr	r8, [sp, #68]	@, %sfp
	cmp	r2, #0	@ temp.1543,
	ldr	sl, [sp, #12]	@, %sfp
	ldr	r6, [sp, #16]	@, %sfp
	ldr	r9, [sp, #20]	@, %sfp
	ldr	r7, [sp, #24]	@, %sfp
	ldr	r4, [sp, #28]	@, %sfp
	strh	r3, [fp, r5]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, ip]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r8]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, sl]	@ movhi	@ ivtmp.1523, wq_matrix
	mvn	sl, #255	@ tmp1714,
	strh	r3, [fp, r6]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r9]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r7]	@ movhi	@ ivtmp.1523, wq_matrix
	str	r1, [sp, #60]	@, %sfp
	movw	r1, #:lower16:-270	@,
	movt	r1, #:upper16:-270	@,
	str	r1, [sp, #32]	@, %sfp
	movw	r1, #:lower16:-266	@,
	movt	r1, #:upper16:-266	@,
	str	r1, [sp, #40]	@, %sfp
	movw	r1, #:lower16:-262	@,
	movt	r1, #:upper16:-262	@,
	str	r1, [sp, #48]	@, %sfp
	strh	r3, [fp, r4]	@ movhi	@ ivtmp.1523, wq_matrix
	movw	r1, #:lower16:-258	@ tmp1711,
	ldr	r5, [sp, #60]	@, %sfp
	movt	r1, #:upper16:-258	@ tmp1711,
	ldr	r8, [sp, #64]	@, %sfp
	ldr	ip, [sp, #56]	@, %sfp
	strh	r3, [fp, r5]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r8]	@ movhi	@ ivtmp.1523, wq_matrix
	add	r4, sp, #32
	ldmia	r4, {r4, r5, r6, r7}	@ phole ldm
	ldr	r8, [sp, #48]	@, %sfp
	ldr	r9, [sp, #52]	@, %sfp
	strh	r3, [fp, sl]	@ movhi	@ ivtmp.1523, wq_matrix
	add	sl, sp, #256	@,,
	strh	r3, [fp, ip]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r4]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r5]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r6]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r7]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r8]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r9]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [fp, r1]	@ movhi	@ ivtmp.1523, wq_matrix
	mov	fp, sl	@,
	strh	r3, [sl, #50]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #52]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #54]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #56]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #58]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #60]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #62]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #64]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #66]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #68]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #70]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #72]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #74]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #76]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #78]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #80]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #82]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #84]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #86]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #88]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #90]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #92]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #94]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #96]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #98]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #100]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #102]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #104]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #106]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #108]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #110]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #112]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #114]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #116]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #118]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #120]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #122]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #124]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #126]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #128]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #130]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #132]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #134]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #136]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #138]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #140]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #142]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #144]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #146]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #148]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #150]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #152]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #154]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #156]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #158]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #160]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #162]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #164]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #166]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #168]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #170]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #172]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #174]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #176]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #178]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #180]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #182]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #184]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #186]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #188]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #190]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #192]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #194]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #196]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #198]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #200]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #202]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #254]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #204]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #206]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #208]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #210]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #212]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #214]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #216]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #218]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #220]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #222]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #224]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #226]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #228]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #230]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #232]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #234]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #236]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #238]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #240]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #242]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #244]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #246]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #248]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #250]	@ movhi	@ ivtmp.1523, wq_matrix
	strh	r3, [sl, #252]	@ movhi	@ ivtmp.1523, wq_matrix
	beq	.L230	@,
.L207:
	cmp	r2, #1	@ temp.1543,
	beq	.L231	@,
	cmp	r2, #2	@ temp.1543,
	bne	.L213	@,
	add	r3, sp, #256	@ ivtmp.1513,,
	add	r0, r0, #196	@ ivtmp.1514, pSyntax,
	add	ip, r3, #128	@ D.38044, ivtmp.1513,
.L212:
	add	r1, r3, #2	@ tmp1942, ivtmp.1513,
	ldrh	r3, [r3, #128]	@, wq_matrix
	mov	r2, r0	@ tmp1943, ivtmp.1514
	strh	r3, [r2], #2	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r3, r1, #2	@ ivtmp.1513, tmp1942,
	ldrh	r1, [r1, #128]	@, wq_matrix
	cmp	r3, ip	@ ivtmp.1513, D.38044
	strh	r1, [r0, #2]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r0, r2, #2	@ ivtmp.1514, tmp1943,
	bne	.L212	@,
	b	.L213	@
.L223:
	ldr	r1, [r0, #124]	@ prephitmp.1450, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	b	.L193	@
.L229:
	add	r6, sp, #512	@,,
	add	fp, sp, #512	@,,
	ldrh	sl, [r6, #38]	@, quant_param_undetail
	ldrh	r4, [fp, #36]	@, quant_param_undetail
	ldrh	ip, [r6, #40]	@, quant_param_undetail
	ldrh	r8, [r6, #42]	@, quant_param_undetail
	ldrh	r9, [r6, #44]	@, quant_param_undetail
	ldrh	r1, [r6, #46]	@, quant_param_undetail
	strh	r4, [r6, #0]	@ movhi	@, wq_param
	strh	sl, [r6, #2]	@ movhi	@, wq_param
	strh	ip, [r6, #4]	@ movhi	@, wq_param
	strh	r8, [r6, #6]	@ movhi	@, wq_param
	strh	r9, [r6, #8]	@ movhi	@, wq_param
	strh	r1, [r6, #10]	@ movhi	@, wq_param
	b	.L200	@
.L225:
	ldrh	ip, [r4, #36]	@, quant_param_undetail
	ldrh	r6, [r4, #38]	@, quant_param_undetail
	ldrh	r1, [r4, #40]	@, quant_param_undetail
	ldrh	r5, [r4, #42]	@, quant_param_undetail
	ldrh	r7, [r4, #44]	@, quant_param_undetail
	ldrh	r3, [r4, #46]	@, quant_param_undetail
	strh	ip, [r4, #0]	@ movhi	@, wq_param
	strh	r6, [r4, #2]	@ movhi	@, wq_param
	strh	r1, [r4, #4]	@ movhi	@, wq_param
	strh	r5, [r4, #6]	@ movhi	@, wq_param
	strh	r7, [r4, #8]	@ movhi	@, wq_param
	strh	r3, [r4, #10]	@ movhi	@, wq_param
	b	.L200	@
.L231:
	add	r1, sp, #256	@ tmp1938,,
	mov	r3, #0	@ ivtmp.1502,
.L211:
	add	r2, r3, #2	@ tmp1941, ivtmp.1502,
	add	r4, r0, r3	@ tmp1926, pSyntax, ivtmp.1502
	ldrh	r3, [r1, r3]	@, wq_matrix
	add	ip, r0, r2	@ tmp1956, pSyntax, tmp1941
	strh	r3, [r4, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	add	r3, r2, #2	@ ivtmp.1502, tmp1941,
	ldrh	r2, [r1, r2]	@, wq_matrix
	cmp	r3, #128	@ ivtmp.1502,
	strh	r2, [ip, #196]	@ movhi	@, <variable>.syn_pic.cur_wq_matrix
	bne	.L211	@,
	b	.L213	@
.L226:
	add	r8, sp, #512	@,,
	add	r5, sp, #512	@,,
	ldrh	r3, [r8, #26]	@, quant_param_detail
	ldrh	r7, [r5, #24]	@, quant_param_detail
	ldrh	r9, [r8, #28]	@, quant_param_detail
	ldrh	fp, [r8, #30]	@, quant_param_detail
	ldrh	sl, [r8, #32]	@, quant_param_detail
	ldrh	r4, [r8, #34]	@, quant_param_detail
	strh	r7, [r8, #12]	@ movhi	@, wq_param
	strh	r3, [r8, #14]	@ movhi	@, wq_param
	strh	r9, [r8, #16]	@ movhi	@, wq_param
	strh	fp, [r8, #18]	@ movhi	@, wq_param
	strh	sl, [r8, #20]	@ movhi	@, wq_param
	strh	r4, [r8, #22]	@ movhi	@, wq_param
	b	.L200	@
.L227:
	add	r9, sp, #512	@,,
	ldrh	r6, [r9, #36]	@, quant_param_undetail
	add	r9, sp, #512	@,,
	ldrh	r1, [r9, #38]	@, quant_param_undetail
	strh	r6, [r9, #0]	@ movhi	@, wq_param
	ldrh	r5, [r9, #40]	@, quant_param_undetail
	strh	r1, [r9, #2]	@ movhi	@, wq_param
	ldrh	r7, [r9, #42]	@, quant_param_undetail
	ldrh	r3, [r9, #44]	@, quant_param_undetail
	ldrh	fp, [r9, #46]	@, quant_param_undetail
	ldrh	sl, [r9, #24]	@, quant_param_detail
	ldrh	r4, [r9, #26]	@, quant_param_detail
	ldrh	r8, [r9, #28]	@, quant_param_detail
	ldrh	ip, [r9, #30]	@, quant_param_detail
	ldrh	r6, [r9, #32]	@, quant_param_detail
	ldrh	r1, [r9, #34]	@, quant_param_detail
	strh	r5, [r9, #4]	@ movhi	@, wq_param
	strh	r7, [r9, #6]	@ movhi	@, wq_param
	strh	r3, [r9, #8]	@ movhi	@, wq_param
	strh	fp, [r9, #10]	@ movhi	@, wq_param
	strh	sl, [r9, #12]	@ movhi	@, wq_param
	strh	r4, [r9, #14]	@ movhi	@, wq_param
	strh	r8, [r9, #16]	@ movhi	@, wq_param
	strh	ip, [r9, #18]	@ movhi	@, wq_param
	strh	r6, [r9, #20]	@ movhi	@, wq_param
	strh	r1, [r9, #22]	@ movhi	@, wq_param
	b	.L200	@
	.fnend
	.size	Avs_Vfmw_WQMatrix, .-Avs_Vfmw_WQMatrix
	.align	2
	.global	ClearPacket
	.type	ClearPacket, %function
ClearPacket:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r2, #16464	@ tmp137,
	mov	r4, r0	@ pCtx, pCtx
	movw	r5, #16608	@ tmp135,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #16453	@ tmp139,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #0	@ <variable>.IsLastSeg,
	bne	.L233	@,
	movw	ip, #16533	@ tmp141,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L235	@,
.L233:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L235:
	movw	r3, #16536	@ tmp143,
	ldr	lr, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	beq	.L233	@,
	movw	r2, #16544	@ tmp147,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L233	@
	.fnend
	.size	ClearPacket, .-ClearPacket
	.align	2
	.global	WriteAvsSliceMsg
	.type	WriteAvsSliceMsg, %function
WriteAvsSliceMsg:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #14432	@ tmp140,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r2, [r0, r3]	@ D.36735, <variable>.AvsDecParam.SlcNum
	mov	r4, r0	@ pCtx, pCtx
	cmp	r2, #512	@ D.36735,
	bge	.L244	@,
	cmp	r2, #0	@ D.36735,
	ble	.L239	@,
	movw	ip, #16448	@ tmp144,
	movw	r1, #15736	@ tmp146,
	ldr	r0, [r0, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	sub	r3, r2, #1	@ tmp150, D.36735,
	ldr	ip, [r4, r1]	@ <variable>.SyntaxNew.syn_seq.horizontal_size, <variable>.SyntaxNew.syn_seq.horizontal_size
	rsb	r3, r3, r3, asl #3	@, tmp154, tmp150, tmp150,
	add	r1, ip, #15	@ tmp147, <variable>.SyntaxNew.syn_seq.horizontal_size,
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ tmp145,
	add	ip, r4, r3, asl #2	@, tmp156, pCtx, tmp154,
	mov	r1, r1, lsr #4	@ tmp149, tmp147,
	ldr	r3, [ip, #112]	@ D.36752, <variable>.slice_start_mbn
	mul	r1, r1, r0	@ D.36749, tmp149, tmp145
	cmp	r1, r3	@ D.36749, D.36752
	bls	.L245	@,
.L239:
	rsb	r2, r2, r2, asl #3	@, tmp162, D.36735, D.36735,
	movw	r3, #16456	@ tmp166,
	ldr	r0, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #14432	@ tmp169,
	add	ip, r4, r2, asl #2	@, tmp164, pCtx, tmp162,
	movw	r1, #16464	@ tmp177,
	str	r0, [ip, #96]	@ <variable>.PhyAddr, <variable>.stream_phy_addr
	ldr	r2, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	r0, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	movw	r1, #16460	@ tmp188,
	rsb	ip, r2, r2, asl #3	@, tmp173, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, ip, asl #2	@, tmp175, pCtx, tmp173,
	str	r0, [r2, #116]	@ <variable>.StreamID, <variable>.steram_id
	ldr	ip, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	r0, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	rsb	r2, ip, ip, asl #3	@, tmp184, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	ip, r4, r2, asl #2	@, tmp186, pCtx, tmp184,
	movw	r2, #16448	@ tmp200,
	str	r0, [ip, #104]	@ <variable>.LenInByte, <variable>.stream_lenInByte
	movw	ip, #15736	@ tmp202,
	ldr	r1, [r4, ip]	@ <variable>.SyntaxNew.syn_seq.horizontal_size, <variable>.SyntaxNew.syn_seq.horizontal_size
	ldr	r0, [r4, r2]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r2, r1, #15	@ tmp203, <variable>.SyntaxNew.syn_seq.horizontal_size,
	ldr	ip, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ tmp201,
	mov	r1, r2, lsr #4	@ tmp205, tmp203,
	rsb	r2, ip, ip, asl #3	@, tmp195, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	mul	r1, r1, r0	@ tmp206, tmp205, tmp201
	add	ip, r4, r2, asl #2	@, tmp197, pCtx, tmp195,
	movw	r0, #15024	@ tmp215,
	movw	r2, #15020	@ tmp219,
	str	r1, [ip, #112]	@ tmp206, <variable>.slice_start_mbn
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	add	r0, ip, #15	@ tmp216, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	ldr	ip, [r4, r3]	@ temp.1950, <variable>.AvsDecParam.SlcNum
	add	r2, r1, #15	@ tmp220, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size,
	mov	r0, r0, lsr #4	@ tmp218, tmp216,
	mov	r1, r2, lsr #4	@ tmp222, tmp220,
	rsb	r2, ip, ip, asl #3	@, tmp211, temp.1950, temp.1950,
	mul	ip, r1, r0	@ tmp223, tmp222, tmp218
	add	r2, r4, r2, asl #2	@, tmp213, pCtx, tmp211,
	ldr	r0, [r2, #112]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	sub	r1, ip, #1	@ tmp224, tmp223,
	cmp	r0, r1	@ <variable>.slice_start_mbn, tmp224
	movhi	r0, #0	@ D.36739,
	ldmhifd	sp!, {r4, pc}	@
	movw	r0, #16453	@ tmp226,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L246	@,
	movw	r0, #16536	@ tmp263,
	movw	r1, #16544	@ tmp274,
	ldr	ip, [r4, r0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r2, #100]	@ <variable>.PhyAddr, <variable>.stream_phy_addr
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	ip, [r4, r1]	@ <variable>.StreamID, <variable>.StreamID
	rsb	r2, r0, r0, asl #3	@, tmp270, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r0, r4, r2, asl #2	@, tmp272, pCtx, tmp270,
	movw	r2, #16540	@ tmp285,
	str	ip, [r0, #120]	@ <variable>.StreamID, <variable>.steram_id
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	ldr	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.LenInByte
	rsb	r1, r0, r0, asl #3	@, tmp281, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	mov	r0, #1	@ D.36739,
	add	r3, r4, r1, asl #2	@, tmp283, pCtx, tmp281,
	str	ip, [r3, #108]	@ <variable>.LenInByte, <variable>.stream_lenInByte
	movw	r3, #14432	@ tmp287,
	ldr	r1, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	add	r2, r1, r0	@ tmp290, <variable>.AvsDecParam.SlcNum,
	str	r2, [r4, r3]	@ tmp290, <variable>.AvsDecParam.SlcNum
	ldmfd	sp!, {r4, pc}	@
.L244:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r3, #512	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36739,
	ldmfd	sp!, {r4, pc}	@
.L245:
	mov	r2, r1	@, D.36749
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.36739,
	ldmfd	sp!, {r4, pc}	@
.L246:
	mov	ip, #0	@ tmp235,
	str	ip, [r2, #100]	@ tmp235, <variable>.stream_phy_addr
	ldr	r0, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	rsb	r1, r0, r0, asl #3	@, tmp241, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, r1, asl #2	@, tmp243, pCtx, tmp241,
	add	r0, r2, #116	@ tmp244, tmp243,
	str	ip, [r0, #4]	@ tmp235, <variable>.steram_id
	mov	r0, #1	@ D.36739,
	ldr	r1, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	rsb	r3, r1, r1, asl #3	@, tmp251, <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum,
	add	r2, r4, r3, asl #2	@, tmp253, pCtx, tmp251,
	movw	r3, #14432	@ tmp287,
	str	ip, [r2, #108]	@ tmp235, <variable>.stream_lenInByte
	ldr	r1, [r4, r3]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	add	r2, r1, r0	@ tmp290, <variable>.AvsDecParam.SlcNum,
	str	r2, [r4, r3]	@ tmp290, <variable>.AvsDecParam.SlcNum
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	WriteAvsSliceMsg, .-WriteAvsSliceMsg
	.align	2
	.global	ClearSlice
	.type	ClearSlice, %function
ClearSlice:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r3, [r1, #8]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	mov	r4, r1	@ pSlcStr, pSlcStr
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #0	@ <variable>.stream_lenInByte,
	ble	.L248	@,
	ldr	r1, [r1, #0]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	cmp	r1, #0	@ <variable>.stream_phy_addr,
	bne	.L251	@,
.L248:
	ldr	r2, [r4, #12]	@ <variable>.stream_lenInByte, <variable>.stream_lenInByte
	mov	r0, #0	@ tmp139,
	str	r0, [r4, #16]	@ tmp139, <variable>.slice_start_mbn
	cmp	r2, r0	@ <variable>.stream_lenInByte,
	str	r0, [r4, #8]	@ tmp139, <variable>.stream_lenInByte
	str	r0, [r4, #0]	@ tmp139, <variable>.stream_phy_addr
	ble	.L249	@,
	ldr	ip, [r4, #4]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	cmp	ip, #0	@ <variable>.stream_phy_addr,
	bne	.L252	@,
.L249:
	mov	r3, #0	@ tmp145,
	mov	r0, #1	@,
	str	r3, [r4, #16]	@ tmp145, <variable>.slice_start_mbn
	str	r3, [r4, #12]	@ tmp145, <variable>.stream_lenInByte
	str	r3, [r4, #4]	@ tmp145, <variable>.stream_phy_addr
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L251:
	ldr	r1, [r4, #20]	@, <variable>.steram_id
	bl	SM_ReleaseStreamSeg	@
	b	.L248	@
.L252:
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #24]	@, <variable>.steram_id
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp145,
	mov	r0, #1	@,
	str	r3, [r4, #16]	@ tmp145, <variable>.slice_start_mbn
	str	r3, [r4, #12]	@ tmp145, <variable>.stream_lenInByte
	str	r3, [r4, #4]	@ tmp145, <variable>.stream_phy_addr
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	ClearSlice, .-ClearSlice
	.align	2
	.global	AVS_ClearCurPic
	.type	AVS_ClearCurPic, %function
AVS_ClearCurPic:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r7, #14432	@ tmp136,
	ldr	r3, [r0, r7]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	mov	r5, r0	@ pCtx, pCtx
	cmp	r3, #0	@ <variable>.AvsDecParam.SlcNum,
	ble	.L254	@,
	mov	r4, #0	@ i,
	movw	r6, #16608	@ tmp151,
.L255:
	rsb	r2, r4, r4, asl #3	@, tmp142, i, i,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	add	r4, r4, #1	@ i, i,
	add	r1, r5, r2, asl #2	@, tmp144, pCtx, tmp142,
	add	r1, r1, #96	@, tmp144,
	bl	ClearSlice	@
	ldr	r0, [r5, r7]	@ <variable>.AvsDecParam.SlcNum, <variable>.AvsDecParam.SlcNum
	cmp	r0, r4	@ <variable>.AvsDecParam.SlcNum, i
	bgt	.L255	@,
.L254:
	movw	r3, #14432	@ tmp148,
	mov	ip, #0	@ tmp149,
	mov	r0, #1	@,
	str	ip, [r5, r3]	@ tmp149, <variable>.AvsDecParam.SlcNum
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AVS_ClearCurPic, .-AVS_ClearCurPic
	.align	2
	.global	AVS_DecodeArbiter
	.type	AVS_DecodeArbiter, %function
AVS_DecodeArbiter:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #14984	@ tmp140,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r2]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	.pad #8
	sub	sp, sp, #8	@,,
	and	r3, r0, #376832	@ tmp141, <variable>.CodecInfo.Integrity,
	cmp	r3, #376832	@ tmp141,
	beq	.L277	@,
.L259:
	mov	r0, #0	@ D.35262,
.L269:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L277:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ DecMode, <variable>.s32DecMode
	cmp	r3, #4	@ DecMode,
	ldrls	pc, [pc, r3, asl #2]	@ DecMode
	b	.L260	@
.L264:
	.word	.L261
	.word	.L262
	.word	.L263
	.word	.L260
	.word	.L261
.L261:
	movw	r0, #15644	@ tmp144,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	lr, #2	@ <variable>.CodecInfo.UsedDecMode,
	movweq	lr, #15648	@ tmp146,
	moveq	r1, #0	@ tmp147,
	streq	r1, [r4, lr]	@ tmp147, <variable>.CodecInfo.RefNum
.L260:
	movw	r2, #16056	@ tmp157,
	movw	ip, #15644	@ tmp156,
	ldr	r2, [r4, r2]	@ temp.2040, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	str	r3, [r4, ip]	@ DecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #1	@ temp.2040,
	beq	.L278	@,
	cmp	r2, #2	@ temp.2040,
	bne	.L271	@,
	movw	r1, #15648	@ tmp162,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #1	@ <variable>.CodecInfo.RefNum,
	ble	.L270	@,
.L271:
	add	lr, r4, #15680	@, pCtx,
	add	r2, r4, #14976	@, pCtx,
	add	r1, lr, #36	@,,
	add	r0, r2, #24	@,,
	mov	r2, #372	@,
	bl	memcpy	@
	movw	r0, #15073	@ tmp182,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movw	r3, #15660	@ tmp178,
	movw	r1, #15340	@ tmp180,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	mov	r0, #18	@,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	str	ip, [sp, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	bl	dprint_vfmw	@
	movw	ip, #14984	@ tmp184,
	mov	r0, #1	@ D.35262,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	bic	r1, r3, #311296	@ tmp187, <variable>.CodecInfo.Integrity,
	str	r1, [r4, ip]	@ tmp187, <variable>.CodecInfo.Integrity
	b	.L269	@
.L262:
	movw	lr, #15644	@ tmp148,
	movw	r2, #16056	@ tmp152,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	ip, #2	@ <variable>.CodecInfo.UsedDecMode,
	movweq	ip, #15648	@ tmp150,
	moveq	r1, #0	@ tmp151,
	streq	r1, [r4, ip]	@ tmp151, <variable>.CodecInfo.RefNum
	ldr	r1, [r4, r2]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r1, #2	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	bne	.L260	@,
.L266:
	movw	ip, #15644	@ tmp189,
	mov	r0, r4	@, pCtx
	str	r3, [r4, ip]	@ DecMode, <variable>.CodecInfo.UsedDecMode
.L276:
	bl	AVS_ClearCurPic	@
	movw	r2, #14984	@ tmp164,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	movw	ip, #:lower16:g_event_report	@ tmp168,
	movt	ip, #:upper16:g_event_report	@ tmp168,
	bic	r3, r0, #311296	@ tmp167, <variable>.CodecInfo.Integrity,
	str	r3, [r4, r2]	@ tmp167, <variable>.CodecInfo.Integrity
	ldr	r3, [ip, #0]	@ g_event_report.2046, g_event_report
	cmp	r3, #0	@ g_event_report.2046,
	beq	.L259	@,
	movw	lr, #16608	@ tmp169,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.2046
	mov	r0, #0	@ D.35262,
	b	.L269	@
.L263:
	movw	r1, #16056	@ tmp154,
	ldr	r0, [r4, r1]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r0, #0	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	bne	.L266	@,
	b	.L260	@
.L278:
	movw	lr, #15648	@ tmp160,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bgt	.L271	@,
.L270:
	mov	r0, r4	@, pCtx
	b	.L276	@
	.fnend
	.size	AVS_DecodeArbiter, .-AVS_DecodeArbiter
	.align	2
	.global	AVSDEC_GetImageBuffer
	.type	AVSDEC_GetImageBuffer, %function
AVSDEC_GetImageBuffer:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #16608	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36671,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36674,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #16064	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36674,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	AVSDEC_GetImageBuffer, .-AVSDEC_GetImageBuffer
	.align	2
	.global	AVSDEC_RecycleImage
	.type	AVSDEC_RecycleImage, %function
AVSDEC_RecycleImage:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ img_id, img_id
	moveq	r0, r4	@ D.36496, pCtx
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r5, #16608	@ tmp139,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	moveq	r0, #1	@ D.36496,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp146,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #1	@ D.36496,
	str	r7, [r6, #196]	@ tmp146, <variable>.p_usrdat
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AVSDEC_RecycleImage, .-AVSDEC_RecycleImage
	.align	2
	.global	AVS_OutputOneFrame
	.type	AVS_OutputOneFrame, %function
AVS_OutputOneFrame:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r1	@ pCtx, pCtx
	movw	r5, #16608	@ tmp139,
	ldr	r1, [r0, #4]	@, <variable>.FspID
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pOutput, pOutput
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L294	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	add	r3, r4, #16064	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	add	r3, r3, #24	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.36058,
	beq	.L291	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r2, [r6, #4]	@, <variable>.FspID
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36056,
.L291:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L294:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2547	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36056, pImage
	b	.L291	@
	.fnend
	.size	AVS_OutputOneFrame, .-AVS_OutputOneFrame
	.align	2
	.global	AVSDEC_Init
	.type	AVSDEC_Init, %function
AVSDEC_Init:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r6, #16432	@ tmp141,
	ldr	sl, [r0, r6]	@ D.36428, <variable>.ImageQue.ResetMagicWord
	add	r5, r0, #16064	@ D.36435, pCtx,
	add	r5, r5, #24	@ D.36435, D.36435,
	mov	r4, r0	@ pCtx, pCtx
	mov	r8, r1	@ pstExtraData, pstExtraData
	movw	r1, #17144	@,
	bl	__memzero	@
	mov	r0, r5	@, D.36435
	str	sl, [r4, r6]	@ D.36428, <variable>.ImageQue.ResetMagicWord
	mov	r7, #1	@ tmp145,
	bl	ResetVoQueue	@
	movw	r1, #17136	@ tmp144,
	str	r8, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	str	r7, [r4, r1]	@ tmp145, <variable>.DSDNeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #16608	@ tmp146,
	cmn	r0, #1	@ D.36436,
	str	r0, [r4, r3]	@ D.36436, <variable>.ChanID
	beq	.L299	@,
	add	r6, r4, #14848	@ tmp149, pCtx,
	mov	r1, #808	@,
	add	r0, r6, #32	@, tmp149,
	add	r6, r6, #36	@ D.36450, tmp149,
	bl	__memzero	@
	movw	ip, #15400	@ tmp160,
	movw	r2, #14960	@ tmp159,
	add	r1, r4, #15680	@ tmp151, pCtx,
	str	r6, [r4, r2]	@ D.36450, <variable>.CodecInfo.pRef
	movw	r2, #15396	@ tmp153,
	str	r5, [r4, ip]	@ D.36435, <variable>.CodecInfo.pstImgQue
	movw	ip, #15372	@ tmp150,
	add	r3, r1, #8	@ tmp151, tmp151,
	mov	r1, #1024	@ tmp154,
	str	r3, [r4, ip]	@ tmp151, <variable>.CodecInfo.pBs
	movw	r3, #14956	@ tmp156,
	str	r1, [r4, r2]	@ tmp154, <variable>.CodecInfo.DDR_Stride
	movw	ip, #14968	@ tmp157,
	movw	r2, #14964	@ tmp158,
	str	r6, [r4, ip]	@ D.36450, <variable>.CodecInfo.pRef
	mov	r0, r7	@ D.36441, tmp145
	str	r6, [r4, r3]	@ D.36450, <variable>.CodecInfo.pCurFrm
	str	r6, [r4, r2]	@ D.36450, <variable>.CodecInfo.pRef
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L299:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36441,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	AVSDEC_Init, .-AVSDEC_Init
	.align	2
	.global	AVS_GetImageBuffer
	.type	AVS_GetImageBuffer, %function
AVS_GetImageBuffer:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #16056	@ tmp146,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, r0]	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type, <variable>.SyntaxNew.syn_pic.derived_pic_coding_type
	cmp	r3, #2	@ <variable>.SyntaxNew.syn_pic.derived_pic_coding_type,
	beq	.L301	@,
	movw	r5, #15384	@ tmp148,
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.CurFrameObjId, <variable>.CodecInfo.CurFrameObjId
	add	r0, ip, #1	@ tmp159, <variable>.CodecInfo.CurFrameObjId,
	add	r6, ip, ip, asl #1	@, tmp152, <variable>.CodecInfo.CurFrameObjId, <variable>.CodecInfo.CurFrameObjId,
	mov	r2, r0, asr #31	@ tmp161, tmp159,
	mov	r1, r6, asl #2	@ tmp153, tmp152,
	mov	r6, r2, lsr #30	@ tmp162, tmp161,
	add	r3, r1, #14848	@ tmp154, tmp153,
	add	lr, r0, r6	@ tmp163, tmp159, tmp162
	add	r7, r3, #48	@ tmp154, tmp154,
	and	ip, lr, #3	@ tmp164, tmp163,
	movw	r1, #14956	@ tmp156,
	add	r7, r4, r7	@ prephitmp.2172, pCtx, tmp154
	rsb	r2, r6, ip	@ tmp165, tmp162, tmp164
	str	r7, [r4, r1]	@ prephitmp.2172, <variable>.CodecInfo.pCurFrm
	str	r2, [r4, r5]	@ tmp165, <variable>.CodecInfo.CurFrameObjId
.L302:
	movw	r5, #16608	@ tmp168,
	mov	r1, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r6, #14956	@ tmp171,
	bl	FSP_NewLogicFs	@
	str	r0, [r7, #4]	@, <variable>.FspID
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r1, [r3, #4]	@ D.36006, <variable>.FspID
	cmp	r1, #0	@ D.36006,
	blt	.L309	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L310	@,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [r3, #4]	@, <variable>.FspID
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.36032, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36032,
	beq	.L307	@,
	ldr	r3, [r5, #412]	@ D.36035, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36035,
	beq	.L307	@,
	ldr	r0, [r5, #416]	@ D.36038, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.36038,
	beq	.L307	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC9	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L307:
	mov	r0, #1	@ ret,
	mov	lr, #0	@ tmp239,
	str	lr, [r5, #188]	@ tmp239, <variable>.stDispImg.error_level
.L305:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L301:
	add	r7, r4, #14912	@ prephitmp.2172, pCtx,
	movw	r5, #14956	@ tmp167,
	add	r7, r7, #32	@ prephitmp.2172, prephitmp.2172,
	str	r7, [r4, r5]	@ prephitmp.2172, <variable>.CodecInfo.pCurFrm
	b	.L302	@
.L309:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r8, #14960	@ tmp176,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L304	@,
	ldr	lr, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r9, #14964	@ tmp191,
	movw	sl, #14968	@ tmp196,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r7, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #204]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	add	r3, r4, #14848	@ D.36023, pCtx,
	add	r0, r3, #36	@ D.36023, D.36023,
	mov	ip, #0	@ tmp210,
	str	ip, [r7, #204]	@ tmp210, <variable>.p_usrdat
	str	ip, [r7, #192]	@ tmp210, <variable>.p_usrdat
	str	ip, [r7, #196]	@ tmp210, <variable>.p_usrdat
	str	ip, [r7, #200]	@ tmp210, <variable>.p_usrdat
	str	r0, [r4, r8]	@ D.36023, <variable>.CodecInfo.pRef
	str	r0, [r4, r6]	@ D.36023, <variable>.CodecInfo.pCurFrm
	str	r0, [r4, sl]	@ D.36023, <variable>.CodecInfo.pRef
	str	r0, [r4, r9]	@ D.36023, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #14888	@ tmp221,
	str	r0, [r4, r1]	@, <variable>.CodecInfo.ZeroFrm.FspID
.L304:
	movw	r5, #16608	@ tmp224,
	movw	r2, #15648	@ tmp222,
	add	r1, r4, #16064	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #24	@,,
	mov	r5, #0	@ tmp223,
	str	r5, [r4, r2]	@ tmp223, <variable>.CodecInfo.RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ ret, tmp223
	b	.L305	@
.L310:
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #2506	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ ret, pLf
	b	.L305	@
	.fnend
	.size	AVS_GetImageBuffer, .-AVS_GetImageBuffer
	.align	2
	.global	AVS_StartDecode
	.type	AVS_StartDecode, %function
AVS_StartDecode:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r3, #16796	@ tmp204,
	mov	r4, r0	@ pCtx, pCtx
	movw	sl, #16612	@ tmp177,
	ldr	fp, [r4, r3]	@, <variable>.AvsCfg.bit_offset_0
	movw	r8, #16616	@ tmp180,
	movw	r7, #16620	@ tmp183,
	movw	r6, #16624	@ tmp186,
	movw	r5, #16628	@ tmp189,
	mov	lr, #16640	@ tmp192,
	ldr	r9, [r0, sl]	@ <variable>.AvsCfg.mbamt_to_dec, <variable>.AvsCfg.mbamt_to_dec
	movw	r1, #16792	@ tmp200,
	ldr	sl, [r0, r8]	@ <variable>.AvsCfg.mv_output_en, <variable>.AvsCfg.mv_output_en
	movw	ip, #16804	@ tmp202,
	ldr	r8, [r0, r7]	@ <variable>.AvsCfg.load_qmatrix_flag, <variable>.AvsCfg.load_qmatrix_flag
	movw	r2, #16808	@ tmp206,
	ldr	r7, [r0, r6]	@ <variable>.AvsCfg.ddr_stride, <variable>.AvsCfg.ddr_stride
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r6, [r0, r5]	@ <variable>.AvsCfg.video_standard, <variable>.AvsCfg.video_standard
	ldr	r5, [r0, lr]	@ <variable>.AvsCfg.tab_base_addr, <variable>.AvsCfg.tab_base_addr
	movw	r0, #16644	@ tmp195,
	ldr	lr, [r4, r0]	@ <variable>.AvsCfg.stream_base_addr, <variable>.AvsCfg.stream_base_addr
	str	fp, [r4, #80]	@, <variable>.AvsDecParam.StreamBitOffset
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.bit_stream_address_0, <variable>.AvsCfg.bit_stream_address_0
	ldr	fp, [r4, r2]	@ <variable>.AvsCfg.bit_offset_1, <variable>.AvsCfg.bit_offset_1
	movw	r2, #16812	@ tmp210,
	ldr	r1, [r4, ip]	@ <variable>.AvsCfg.bit_stream_address_1, <variable>.AvsCfg.bit_stream_address_1
	movw	ip, #16800	@ tmp208,
	ldr	r3, [r4, ip]	@, <variable>.AvsCfg.bit_len_0
	ldr	ip, [r4, r2]	@, <variable>.AvsCfg.bit_len_1
	movw	r2, #16664	@,
	strb	sl, [r4, #9]	@ <variable>.AvsCfg.mv_output_en, <variable>.AvsDecParam.mv_output_en
	movw	sl, #16668	@ tmp214,
	str	r3, [r4, #88]	@, <variable>.AvsDecParam.StreamLength
	movw	r3, #16676	@ tmp216,
	str	ip, [r4, #92]	@, <variable>.AvsDecParam.StreamLength
	ldr	ip, [r4, r2]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsCfg.ystaddr_1d
	movw	r2, #16672	@ tmp212,
	ldr	r3, [r4, r3]	@ <variable>.AvsCfg.sample_precision, <variable>.AvsCfg.sample_precision
	strb	r9, [r4, #8]	@ <variable>.AvsCfg.mbamt_to_dec, <variable>.AvsDecParam.mbamt_to_dec
	ldrh	r9, [r4, r2]	@, <variable>.AvsCfg.pic_width_in_mb
	ldrh	r2, [r4, sl]	@, <variable>.AvsCfg.pic_height_in_mb
	movw	sl, #16716	@ tmp222,
	strb	r8, [r4, #10]	@ <variable>.AvsCfg.load_qmatrix_flag, <variable>.AvsDecParam.load_qmatrix_flag
	movw	r8, #16720	@ tmp225,
	strh	r9, [r4, #56]	@ movhi	@, <variable>.AvsDecParam.PicWidthInMb
	movw	r9, #16680	@ tmp219,
	strh	r2, [r4, #58]	@ movhi	@, <variable>.AvsDecParam.PicHeightInMb
	movw	r2, #16724	@ tmp249,
	strb	r7, [r4, #11]	@ <variable>.AvsCfg.ddr_stride, <variable>.AvsDecParam.ddr_stride
	movw	r7, #16684	@ tmp228,
	strb	r6, [r4, #12]	@ <variable>.AvsCfg.video_standard, <variable>.AvsDecParam.video_standard
	movw	r6, #16688	@ tmp231,
	strb	r5, [r4, #13]	@ <variable>.AvsCfg.tab_base_addr, <variable>.AvsDecParam.tab_base_addr
	movw	r5, #16696	@ tmp234,
	str	lr, [r4, #60]	@ <variable>.AvsCfg.stream_base_addr, <variable>.AvsDecParam.StreamBaseAddr
	movw	lr, #16700	@ tmp237,
	strb	ip, [r4, #14]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsDecParam.ystaddr_1d
	movw	ip, #16704	@ tmp240,
	str	r0, [r4, #72]	@ <variable>.AvsCfg.bit_stream_address_0, <variable>.AvsDecParam.StreamPhyAddr
	movw	r0, #16708	@ tmp243,
	str	r1, [r4, #76]	@ <variable>.AvsCfg.bit_stream_address_1, <variable>.AvsDecParam.StreamPhyAddr
	movw	r1, #16712	@ tmp246,
	str	fp, [r4, #84]	@ <variable>.AvsCfg.bit_offset_1, <variable>.AvsDecParam.StreamBitOffset
	strb	r3, [r4, #38]	@ <variable>.AvsCfg.sample_precision, <variable>.AvsDecParam.SamplePrecision
	movw	r3, #16728	@ tmp252,
	ldr	fp, [r4, r9]	@ <variable>.AvsCfg.chroma_format, <variable>.AvsCfg.chroma_format
	ldr	r9, [r4, sl]	@ <variable>.AvsCfg.pic_coding_type, <variable>.AvsCfg.pic_coding_type
	ldr	sl, [r4, r8]	@ <variable>.AvsCfg.picture_structure, <variable>.AvsCfg.picture_structure
	ldr	r8, [r4, r7]	@ <variable>.AvsCfg.no_fwd_ref_flag, <variable>.AvsCfg.no_fwd_ref_flag
	ldr	r7, [r4, r6]	@ <variable>.AvsCfg.pic_ref_flag, <variable>.AvsCfg.pic_ref_flag
	ldr	r6, [r4, r5]	@ <variable>.AvsCfg.skip_mode_flag, <variable>.AvsCfg.skip_mode_flag
	ldr	r5, [r4, lr]	@ <variable>.AvsCfg.pic_qp, <variable>.AvsCfg.pic_qp
	ldr	lr, [r4, ip]	@ <variable>.AvsCfg.fix_qp, <variable>.AvsCfg.fix_qp
	ldr	ip, [r4, r0]	@ <variable>.AvsCfg.repeat_first_field, <variable>.AvsCfg.repeat_first_field
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.top_field_first, <variable>.AvsCfg.top_field_first
	ldr	r1, [r4, r2]	@ <variable>.AvsCfg.progressive_frame, <variable>.AvsCfg.progressive_frame
	ldr	r2, [r4, r3]	@, <variable>.AvsCfg.beta_offset
	movw	r3, #16732	@ tmp255,
	str	r2, [sp, #0]	@, %sfp
	ldr	r2, [r4, r3]	@, <variable>.AvsCfg.alpha_c_offset
	movw	r3, #16736	@ tmp258,
	str	r2, [sp, #4]	@, %sfp
	ldr	r2, [r4, r3]	@ <variable>.AvsCfg.loop_flt_para_flag, <variable>.AvsCfg.loop_flt_para_flag
	movw	r3, #16740	@ tmp261,
	ldr	r3, [r4, r3]	@, <variable>.AvsCfg.loop_flt_disable
	str	r3, [sp, #8]	@, %sfp
	movw	r3, #16784	@ tmp264,
	ldr	r3, [r4, r3]	@, <variable>.AvsCfg.col_pic_struct
	str	r3, [sp, #12]	@, %sfp
	movw	r3, #16692	@ tmp267,
	strb	fp, [r4, #39]	@, <variable>.AvsDecParam.ChromaFormat
	movw	fp, #16788	@ tmp288,
	strb	r9, [r4, #15]	@ <variable>.AvsCfg.pic_coding_type, <variable>.AvsDecParam.PicCodingType
	strb	sl, [r4, #16]	@ <variable>.AvsCfg.picture_structure, <variable>.AvsDecParam.PicStruct
	movw	sl, #16768	@ tmp292,
	strb	r8, [r4, #17]	@ <variable>.AvsCfg.no_fwd_ref_flag, <variable>.AvsDecParam.NoFwdRefFlag
	movw	r8, #16772	@ tmp295,
	strb	r6, [r4, #19]	@ <variable>.AvsCfg.skip_mode_flag, <variable>.AvsDecParam.SkipModeFlag
	strb	r5, [r4, #20]	@ <variable>.AvsCfg.pic_qp, <variable>.AvsDecParam.PicQuant
	strb	lr, [r4, #21]	@ <variable>.AvsCfg.fix_qp, <variable>.AvsDecParam.FixQPFlag
	movw	lr, #16748	@ tmp270,
	strb	ip, [r4, #22]	@ <variable>.AvsCfg.repeat_first_field, <variable>.AvsDecParam.RepeatFirstField
	movw	ip, #16744	@ tmp273,
	strb	r0, [r4, #23]	@ <variable>.AvsCfg.top_field_first, <variable>.AvsDecParam.TopFieldFirst
	movw	r0, #16764	@ tmp276,
	strb	r1, [r4, #24]	@ <variable>.AvsCfg.progressive_frame, <variable>.AvsDecParam.ProgrsvFrame
	movw	r1, #16760	@ tmp279,
	strb	r7, [r4, #18]	@ <variable>.AvsCfg.pic_ref_flag, <variable>.AvsDecParam.PicRefFlag
	ldr	r7, [sp, #0]	@, %sfp
	ldr	r3, [r4, r3]	@ <variable>.AvsCfg.ad_pred_mode_disable, <variable>.AvsCfg.ad_pred_mode_disable
	strb	r7, [r4, #25]	@, <variable>.AvsDecParam.BetaOffset
	movw	r7, #16776	@ tmp298,
	ldr	r9, [sp, #4]	@, %sfp
	strb	r2, [r4, #27]	@ <variable>.AvsCfg.loop_flt_para_flag, <variable>.AvsDecParam.LoopFiltParamFlag
	movw	r2, #16756	@ tmp282,
	strb	r9, [r4, #26]	@, <variable>.AvsDecParam.AlphaOffset
	movw	r9, #16844	@ tmp301,
	ldr	r6, [sp, #8]	@, %sfp
	strb	r6, [r4, #28]	@, <variable>.AvsDecParam.LoopFiltDisable
	movw	r6, #16856	@ tmp304,
	ldr	r5, [sp, #12]	@, %sfp
	strb	r3, [r4, #30]	@ <variable>.AvsCfg.ad_pred_mode_disable, <variable>.AvsDecParam.AdvPredModeDisable
	movw	r3, #16752	@ tmp285,
	ldr	r6, [r4, r6]	@ <variable>.AvsCfg.colpic_mv_addr, <variable>.AvsCfg.colpic_mv_addr
	strb	r5, [r4, #29]	@, <variable>.AvsDecParam.ColPicStruct
	ldr	r5, [r4, lr]	@ <variable>.AvsCfg.bwd_top_field_first, <variable>.AvsCfg.bwd_top_field_first
	ldr	lr, [r4, ip]	@ <variable>.AvsCfg.bwd_picture_structure, <variable>.AvsCfg.bwd_picture_structure
	ldr	ip, [r4, r0]	@ <variable>.AvsCfg.fwd_top_field_first_0, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.fwd_picture_structure_0, <variable>.AvsCfg.fwd_picture_structure_0
	ldr	r1, [r4, r2]	@ <variable>.AvsCfg.fwd_top_field_first_1, <variable>.AvsCfg.fwd_top_field_first_1
	ldr	r2, [r4, r3]	@ <variable>.AvsCfg.fwd_picture_structure_1, <variable>.AvsCfg.fwd_picture_structure_1
	ldr	r3, [r4, fp]	@ <variable>.AvsCfg.col_pic_type, <variable>.AvsCfg.col_pic_type
	ldr	fp, [r4, sl]	@ <variable>.AvsCfg.bwd_address_0, <variable>.AvsCfg.bwd_address_0
	ldr	sl, [r4, r8]	@ <variable>.AvsCfg.fwd_address_0, <variable>.AvsCfg.fwd_address_0
	ldr	r8, [r4, r7]	@ <variable>.AvsCfg.fwd_address_1, <variable>.AvsCfg.fwd_address_1
	ldr	r7, [r4, r9]	@ <variable>.AvsCfg.current_pmv_addr, <variable>.AvsCfg.current_pmv_addr
	movw	r9, #14956	@ tmp309,
	ldr	r9, [r4, r9]	@, <variable>.CodecInfo.pCurFrm
	str	r9, [sp, #0]	@, %sfp
	movw	r9, #14436	@ tmp291,
	str	fp, [r4, r9]	@ <variable>.AvsCfg.bwd_address_0, <variable>.AvsDecParam.BwdRefPicAddr
	movw	r9, #14440	@ tmp294,
	str	sl, [r4, r9]	@ <variable>.AvsCfg.fwd_address_0, <variable>.AvsDecParam.FwdRefPic0Addr
	movw	sl, #14444	@ tmp297,
	str	r8, [r4, sl]	@ <variable>.AvsCfg.fwd_address_1, <variable>.AvsDecParam.FwdRefPic1Addr
	movw	r8, #14452	@ tmp300,
	str	r7, [r4, r8]	@ <variable>.AvsCfg.current_pmv_addr, <variable>.AvsDecParam.CurPmvAddr
	movw	r7, #14456	@ tmp303,
	strb	r5, [r4, #31]	@ <variable>.AvsCfg.bwd_top_field_first, <variable>.AvsDecParam.BwdTopFieldFirst
	strb	lr, [r4, #32]	@ <variable>.AvsCfg.bwd_picture_structure, <variable>.AvsDecParam.BwdPicStruct
	strb	ip, [r4, #33]	@ <variable>.AvsCfg.fwd_top_field_first_0, <variable>.AvsDecParam.FwdTopFieldFirst0
	strb	r0, [r4, #34]	@ <variable>.AvsCfg.fwd_picture_structure_0, <variable>.AvsDecParam.FwdPicStruct0
	strb	r1, [r4, #35]	@ <variable>.AvsCfg.fwd_top_field_first_1, <variable>.AvsDecParam.FwdTopFieldFirst1
	strb	r2, [r4, #36]	@ <variable>.AvsCfg.fwd_picture_structure_1, <variable>.AvsDecParam.FwdPicStruct1
	str	r6, [r4, r7]	@ <variable>.AvsCfg.colpic_mv_addr, <variable>.AvsDecParam.ColPmvAddr
	strb	r3, [r4, #37]	@ <variable>.AvsCfg.col_pic_type, <variable>.AvsDecParam.ColPicType
	movw	r3, #16608	@ tmp306,
	ldr	r2, [sp, #0]	@, %sfp
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLogic,
	beq	.L323	@,
	ldr	sl, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r8, #14852	@ tmp313,
	movw	r9, #16780	@ tmp323,
	movw	ip, #16988	@ tmp326,
	movw	r0, #16820	@ tmp331,
	movw	fp, #16828	@ tmp334,
	ldr	r7, [sl, #20]	@ <variable>.Stride, <variable>.Stride
	movw	sl, #16832	@ tmp340,
	movw	r3, #16816	@ tmp328,
	movw	r1, #16824	@ tmp337,
	ldr	r1, [r4, r1]	@ <variable>.AvsCfg.chroma_quant_param_delta_v, <variable>.AvsCfg.chroma_quant_param_delta_v
	add	r2, r4, #14592	@ ivtmp.2254, pCtx,
	str	r7, [r4, r8]	@ <variable>.Stride, <variable>.AvsDecParam.VahbStride
	add	r2, r2, #4	@ ivtmp.2254, ivtmp.2254,
	ldr	r6, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r5, #16664	@,
	ldr	r7, [r4, r9]	@ <variable>.AvsCfg.rcn_address, <variable>.AvsCfg.rcn_address
	ldr	r8, [r4, r5]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsCfg.ystaddr_1d
	ldr	r9, [r6, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	ldr	r6, [r4, ip]	@ <variable>.AvsCfg.pmv_colmb_addr, <variable>.AvsCfg.pmv_colmb_addr
	ldr	ip, [r4, r0]	@ <variable>.AvsCfg.chroma_quant_param_disable, <variable>.AvsCfg.chroma_quant_param_disable
	ldr	r0, [r4, fp]	@ <variable>.AvsCfg.chroma_quant_param_delta_u, <variable>.AvsCfg.chroma_quant_param_delta_u
	ldr	fp, [r4, sl]	@, <variable>.AvsCfg.aec_enable
	movw	sl, #16836	@ tmp343,
	ldr	r5, [r4, r3]	@ <variable>.AvsCfg.weighting_quant_flag, <variable>.AvsCfg.weighting_quant_flag
	mov	r3, #0	@ ivtmp.2252,
	str	fp, [sp, #0]	@, %sfp
	ldr	fp, [r4, sl]	@, <variable>.AvsCfg.p_filed_enhanced_flag
	movw	sl, #16840	@ tmp346,
	str	fp, [sp, #4]	@, %sfp
	ldr	fp, [r4, sl]	@ <variable>.AvsCfg.b_filed_enhanced_flag, <variable>.AvsCfg.b_filed_enhanced_flag
	movw	sl, #14856	@ tmp316,
	str	r9, [r4, sl]	@ <variable>.ChromOffset, <variable>.AvsDecParam.uv_offset
	movw	sl, #14448	@ tmp319,
	str	r8, [r4, sl]	@ <variable>.AvsCfg.ystaddr_1d, <variable>.AvsDecParam.CurPicAddr
	movw	r8, #14460	@ tmp322,
	str	r7, [r4, r8]	@ <variable>.AvsCfg.rcn_address, <variable>.AvsDecParam.rcn_address
	mov	r7, #14464	@ tmp325,
	str	r6, [r4, r7]	@ <variable>.AvsCfg.pmv_colmb_addr, <variable>.AvsDecParam.pmv_colmb_addr
	strb	r5, [r4, #40]	@ <variable>.AvsCfg.weighting_quant_flag, <variable>.AvsDecParam.weighting_quant_flag
	strb	ip, [r4, #41]	@ <variable>.AvsCfg.chroma_quant_param_disable, <variable>.AvsDecParam.chroma_quant_param_disable
	strb	r0, [r4, #42]	@ <variable>.AvsCfg.chroma_quant_param_delta_u, <variable>.AvsDecParam.chroma_quant_param_delta_u
	strb	r1, [r4, #43]	@ <variable>.AvsCfg.chroma_quant_param_delta_v, <variable>.AvsDecParam.chroma_quant_param_delta_v
	ldr	r1, [sp, #0]	@, %sfp
	strb	r1, [r4, #44]	@, <variable>.AvsDecParam.aec_enable
	ldr	ip, [sp, #4]	@, %sfp
	strb	fp, [r4, #46]	@, <variable>.AvsDecParam.b_filed_enhanced_flag
	strb	ip, [r4, #45]	@, <variable>.AvsDecParam.p_filed_enhanced_flag
.L314:
	add	r1, r3, #2	@ tmp394, ivtmp.2252,
	add	r3, r4, r3	@ tmp350, pCtx, ivtmp.2252
	add	r0, r4, r1	@ tmp398, pCtx, tmp394
	add	r5, r3, #16896	@ tmp352, tmp350,
	add	r6, r0, #16896	@ tmp399, tmp398,
	add	r3, r1, #2	@ ivtmp.2252, tmp394,
	ldrsh	ip, [r5, #96]	@ tmp353, <variable>.AvsCfg.cur_wq_matrix
	cmp	r3, #128	@ ivtmp.2252,
	ldrsh	r0, [r6, #96]	@ tmp401, <variable>.AvsCfg.cur_wq_matrix
	mov	r1, r2	@ tmp395, ivtmp.2254
	str	ip, [r1], #4	@ tmp353, <variable>.AvsDecParam.cur_wq_matrix
	str	r0, [r2, #4]	@ tmp401, <variable>.AvsDecParam.cur_wq_matrix
	add	r2, r1, #4	@ ivtmp.2254, tmp395,
	bne	.L314	@,
	movw	r5, #16648	@ tmp355,
	movw	r0, #16652	@ tmp358,
	ldr	r6, [r4, r5]	@ <variable>.AvsCfg.ref_pic_type0, <variable>.AvsCfg.ref_pic_type0
	movw	r1, #16656	@ tmp361,
	ldr	r5, [r4, r0]	@ <variable>.AvsCfg.ref_pic_type1, <variable>.AvsCfg.ref_pic_type1
	movw	r2, #16660	@ tmp364,
	ldr	r0, [r4, r1]	@ <variable>.AvsCfg.ref_pic_type2, <variable>.AvsCfg.ref_pic_type2
	add	r3, r4, #16640	@ ivtmp.2242, pCtx,
	ldr	r1, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type3, <variable>.AvsCfg.ref_pic_type3
	movw	r2, #14860	@ tmp354,
	add	ip, r4, #16896	@ D.38783, pCtx,
	str	r6, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type0, <variable>.AvsDecParam.RefPicType0
	movw	r2, #14864	@ tmp357,
	add	r3, r3, #220	@ ivtmp.2242, ivtmp.2242,
	str	r5, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type1, <variable>.AvsDecParam.RefPicType1
	add	ip, ip, #92	@ D.38783, D.38783,
	movw	r2, #14868	@ tmp360,
	str	r0, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type2, <variable>.AvsDecParam.RefPicType2
	movw	r2, #14872	@ tmp363,
	str	r1, [r4, r2]	@ <variable>.AvsCfg.ref_pic_type3, <variable>.AvsDecParam.RefPicType3
.L315:
	ldr	r0, [r3, #0]	@ tmp368, <variable>.AvsCfg.pmvtable
	add	r2, r3, #4	@ tmp393, ivtmp.2242,
	ldr	r1, [r3, #4]	@ tmp403, <variable>.AvsCfg.pmvtable
	str	r0, [r3, #-2392]	@ tmp368, <variable>.AvsDecParam.PmvConfigTab
	add	r3, r2, #4	@ ivtmp.2242, tmp393,
	cmp	r3, ip	@ ivtmp.2242, D.38783
	str	r1, [r2, #-2392]	@ tmp403, <variable>.AvsDecParam.PmvConfigTab
	bne	.L315	@,
	movw	r3, #15660	@ tmp369,
	ldr	r2, [r4, #0]	@ D.35745, <variable>.pstExtraData
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	add	r1, r4, #8	@ D.35867, pCtx,
	str	r1, [r4, #4]	@ D.35867, <variable>.pAvsDecParam
	add	ip, r0, #1	@ tmp372, <variable>.CodecInfo.PicCnt,
	str	ip, [r4, r3]	@ tmp372, <variable>.CodecInfo.PicCnt
	ldr	r3, [r2, #708]	@ D.35868, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.35868,
	beq	.L324	@,
	cmp	r3, #2	@ D.35868,
	beq	.L325	@,
.L317:
	ldr	r1, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	ip, #14876	@ tmp390,
	mov	r0, #1	@ D.35835,
	str	r1, [r4, ip]	@ <variable>.s32Compress_en, <variable>.AvsDecParam.Compress_en
.L313:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L324:
	cmp	r1, #0	@ D.35867,
	beq	.L317	@,
	movw	ip, #14956	@ tmp374,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r1, #2	@ <variable>.PicCodingType,
	bne	.L317	@,
	mov	r5, #0	@ tmp376,
	movw	lr, #16608	@ tmp377,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, r5	@, tmp376
	str	r5, [r4, #4]	@ tmp376, <variable>.pAvsDecParam
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	mov	r0, r5	@ D.35835, tmp376
	b	.L313	@
.L325:
	ldr	r3, [r2, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r3, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L317	@,
	cmp	r1, #0	@ D.35867,
	beq	.L317	@,
	movw	r1, #14956	@ tmp382,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r0, #2	@ <variable>.PicCodingType,
	bne	.L317	@,
	mov	r5, #0	@ tmp384,
	movw	lr, #16608	@ tmp385,
	str	r5, [r4, #4]	@ tmp384, <variable>.pAvsDecParam
	mov	r2, r5	@, tmp384
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	ip, [r4, #0]	@ temp.2268, <variable>.pstExtraData
	mov	r0, r5	@ D.35835, tmp384
	ldr	r3, [ip, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp389, <variable>.stDisParams.s32DisNums,
	str	r2, [ip, #712]	@ tmp389, <variable>.stDisParams.s32DisNums
	b	.L313	@
.L323:
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #2278	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35835, pLogic
	b	.L313	@
	.fnend
	.size	AVS_StartDecode, .-AVS_StartDecode
	.align	2
	.global	AVS_SetImgFormat
	.type	AVS_SetImgFormat, %function
AVS_SetImgFormat:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #15011	@ tmp152,
	movw	r2, #15340	@ tmp150,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r5, r0	@ pCtx, pCtx
	ldrb	r0, [r0, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence, <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence
	movw	r3, #15042	@ tmp151,
	ldr	r9, [r5, r2]	@ codtype, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r0, #1	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence,
	ldrb	r8, [r5, r3]	@ zero_extendqisi2	@ D.35910, <variable>.CodecInfo.Syntax.syn_sdext.video_format
	moveq	r7, #0	@ prephitmp.2283,
	beq	.L328	@,
	movw	r4, #15072	@ tmp154,
	ldrb	r7, [r5, r4]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame
	subs	r7, r7, #1	@ prephitmp.2283, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame,
	movne	r7, #1	@ prephitmp.2283
.L328:
	movw	sl, #15009	@ tmp159,
	movw	r2, #15074	@ tmp158,
	ldrb	r4, [r5, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio, <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio
	movw	r3, #14956	@ tmp171,
	ldrb	sl, [r5, r2]	@ zero_extendqisi2	@ D.35918, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	movw	lr, #16608	@ tmp168,
	sub	r1, r4, #1	@ tmp162, <variable>.CodecInfo.Syntax.syn_seq.aspect_ratio,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	uxtb	r0, r1	@ D.36980, tmp162
	cmp	r0, #3	@ D.36980,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	movwls	r2, #:lower16:.LANCHOR1	@ tmp163,
	movtls	r2, #:upper16:.LANCHOR1	@ tmp163,
	addls	r0, r2, r0, asl #2	@, tmp166, tmp163, D.36980,
	movhi	r6, #0	@ dar,
	ldrls	r6, [r0, #256]	@ dar, CSWTCH.515
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImage,
	beq	.L336	@,
	and	r9, r9, #3	@ D.35945, codtype,
	and	sl, sl, #3	@ tmp175, D.35918,
	orr	r2, r9, #3072	@ tmp174, D.35945,
	and	r8, r8, #3	@ tmp178, D.35910,
	orr	sl, r2, sl, asl #12	@, tmp177, tmp174, tmp175,
	and	r3, r6, #7	@ tmp184, dar,
	orr	r8, sl, r8, asl #5	@, tmp180, tmp177, tmp178,
	movw	ip, #15652	@ tmp187,
	orr	r7, r8, r7, asl #8	@, tmp183, tmp180, prephitmp.2283,
	mov	r1, r6	@, dar
	orr	r7, r7, r3, asl #14	@, tmp186, tmp183, tmp184,
	str	r7, [r4, #140]	@ tmp186, <variable>.format
	ldr	lr, [r5, ip]	@ <variable>.CodecInfo.ErrRatio, <variable>.CodecInfo.ErrRatio
	str	r9, [r4, #136]	@ D.35945, <variable>.bottom_fld_type
	str	r9, [r4, #132]	@ D.35945, <variable>.top_fld_type
	str	lr, [r4, #180]	@ <variable>.CodecInfo.ErrRatio, <variable>.error_level
	bl	SetAspectRatio	@
	movw	r1, #15020	@ tmp189,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	movw	r3, #15024	@ tmp191,
	str	r2, [r4, #144]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.image_width
	ldr	r3, [r5, r3]	@ D.35950, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	str	r3, [r4, #148]	@ D.35950, <variable>.image_height
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L337	@,
.L332:
	movw	r3, #15073	@ tmp207,
	mov	r0, #6	@ tmp206,
	str	r0, [r4, #300]	@ tmp206, <variable>.ImageDnr.video_standard
	mov	r2, #1	@ tmp210,
	ldrb	r1, [r5, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	mov	ip, #8	@ tmp212,
	strb	r2, [r4, #293]	@ tmp210, <variable>.ImageDnr.chroma_format_idc
	cmp	r1, r2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	str	ip, [r4, #308]	@ tmp212, <variable>.ImageDnr.QP_U
	strb	r2, [r4, #295]	@ tmp210, <variable>.ImageDnr.use_pic_qp_en
	movne	r1, #4	@ iftmp.484,
	moveq	r1, #0	@ iftmp.484,
	str	ip, [r4, #304]	@ tmp212, <variable>.ImageDnr.QP_Y
	strb	r1, [r4, #288]	@ iftmp.484, <variable>.ImageDnr.pic_structure
	str	ip, [r4, #312]	@ tmp212, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L337:
	ldr	r1, [r4, #172]	@ D.35955, <variable>.image_stride
	add	r0, r3, #15	@ tmp195, D.35950,
	ldr	r2, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r3, r0, lsr #4	@ tmp196, tmp195,
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp194, D.35955,
	add	ip, r2, r1	@ tmp201, <variable>.luma_phy_addr, D.35955
	str	r2, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r3, r3, lr	@ D.35961, tmp196, tmp194
	str	ip, [r4, #96]	@ tmp201, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r2, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r3, r2	@ tmp198, D.35961, <variable>.luma_phy_addr
	add	ip, r0, r3	@ tmp200, <variable>.luma_vir_addr, D.35961
	str	lr, [r4, #108]	@ tmp198, <variable>.chrom_phy_addr
	add	r0, lr, r1	@ tmp202, tmp198, D.35955
	str	ip, [r4, #36]	@ tmp200, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp202, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp198
	str	lr, [r4, #92]	@ tmp198, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r1, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L332	@
.L336:
	movw	r1, #:lower16:.LC10	@,
	movw	r2, #2403	@,
	movt	r1, #:upper16:.LC10	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	AVS_SetImgFormat, .-AVS_SetImgFormat
	.align	2
	.global	AVSDEC_VDMPostProc
	.type	AVSDEC_VDMPostProc, %function
AVSDEC_VDMPostProc:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ ErrRatio, ErrRatio
	bl	AVS_ClearCurPic	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #14872	@,
	bl	__memzero	@
	movw	r0, #15340	@ tmp160,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r3, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	bne	.L339	@,
.L363:
	movw	r0, #15340	@ tmp181,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	r2, #15652	@ tmp175,
	str	r5, [r4, r2]	@ tmp179, <variable>.CodecInfo.ErrRatio
	cmp	r3, #2	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	ldr	r3, [r6, #0]	@ RefErrThr, <variable>.s32RefErrThr
	beq	.L344	@,
	movw	r1, #15652	@ tmp183,
	ldr	r2, [r4, r1]	@ D.36594, <variable>.CodecInfo.ErrRatio
	cmp	r3, r2	@ RefErrThr, D.36594
	blt	.L364	@,
.L344:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	movw	r0, #14956	@ tmp241,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r2, #16608	@ tmp238,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage.2369,
	beq	.L365	@,
	movw	r7, #15664	@ tmp244,
	movw	r2, #15668	@ tmp249,
	ldr	r5, [r4, r7]	@ D.36618, <variable>.CodecInfo.pSeqUD
	movw	r0, #15664	@ tmp247,
	movw	r3, #15340	@ tmp254,
	mov	lr, #0	@ tmp248,
	cmp	r5, #0	@ D.36618,
	movw	ip, #15668	@ tmp252,
	strne	r5, [r6, #192]	@ D.36618, <variable>.p_usrdat
	ldr	r1, [r4, r2]	@ D.36621, <variable>.CodecInfo.pPicUD
	movne	r5, #0	@ tmp246,
	strne	r5, [r4, r7]	@ tmp246, <variable>.CodecInfo.pSeqUD
	mov	r7, #0	@ tmp253,
	cmp	r1, lr	@ D.36621,
	str	lr, [r4, r0]	@ tmp248, <variable>.CodecInfo.pSeqUD
	strne	r1, [r6, #196]	@ D.36621, <variable>.p_usrdat
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	strne	lr, [r4, r2]	@ tmp248, <variable>.CodecInfo.pPicUD
	cmp	r5, #1	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	str	r7, [r4, ip]	@ tmp253, <variable>.CodecInfo.pPicUD
	bls	.L366	@,
.L349:
	movw	r0, #14956	@ tmp286,
	ldr	r5, [r4, r0]	@ pOutput,
.L355:
	movw	r7, #16608	@ tmp287,
	ldr	r1, [r5, #4]	@, <variable>.FspID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage.2385,
	beq	.L367	@,
	add	r1, r4, #14848	@ tmp291, pCtx,
	add	r2, r1, #36	@ tmp291, tmp291,
	cmp	r2, r5	@ tmp291, pOutput
	beq	.L357	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #15652	@ tmp294,
	ldr	r2, [r4, r3]	@ temp.2389, <variable>.CodecInfo.ErrRatio
	ldr	r3, [ip, #4]	@ OutErrThr, <variable>.s32OutErrThr
	cmp	r3, r2	@ OutErrThr, temp.2389
	bge	.L358	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #4]	@, <variable>.FspID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r6, #192]	@ D.36652, <variable>.p_usrdat
	cmp	r1, #0	@ D.36652,
	beq	.L359	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp301,
	str	r0, [r6, #192]	@ tmp301, <variable>.p_usrdat
.L359:
	ldr	r1, [r6, #196]	@ D.36655, <variable>.p_usrdat
	cmp	r1, #0	@ D.36655,
	beq	.L357	@,
	movw	lr, #16608	@ tmp302,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r2, #0	@ tmp304,
	mov	r0, #1	@ D.36584,
	str	r2, [r6, #196]	@ tmp304, <variable>.p_usrdat
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L358:
	mov	r0, r5	@, pOutput
	mov	r1, r4	@, pCtx
	bl	AVS_OutputOneFrame	@
	subs	r5, r0, #0	@ D.36659,
	bne	.L357	@,
	ldr	r1, [r6, #192]	@ temp.2394, <variable>.p_usrdat
	cmp	r1, #0	@ temp.2394,
	beq	.L360	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #192]	@ D.36659, <variable>.p_usrdat
.L360:
	ldr	r1, [r6, #196]	@ temp.2396, <variable>.p_usrdat
	cmp	r1, #0	@ temp.2396,
	moveq	r0, r1	@ D.36584, temp.2396
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	movw	ip, #16608	@ tmp308,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp310,
	str	r0, [r6, #196]	@ tmp310, <variable>.p_usrdat
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L357:
	mov	r0, #1	@ D.36584,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L339:
	movw	r1, #14960	@ tmp166,
	movw	r7, #16608	@ tmp163,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage,
	beq	.L368	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r7, #14964	@ tmp172,
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r7, [r6, #180]	@ D.36585, <variable>.error_level
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage.2346,
	beq	.L369	@,
	ldr	lr, [r6, #180]	@ <variable>.error_level, <variable>.error_level
	add	r7, r7, lr	@ tmp176, D.36585, <variable>.error_level
	add	r5, r5, r7	@ tmp178, ErrRatio, tmp176
	cmp	r5, #100	@ tmp178,
	movge	r5, #100	@ tmp179,
	b	.L363	@
.L364:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC11	@,
	movw	r5, #14960	@ tmp190,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r7, #15648	@ tmp185,
	movw	r6, #16608	@ tmp187,
	mov	r8, #0	@ tmp186,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r8, [r4, r7]	@ tmp186, <variable>.CodecInfo.RefNum
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L345	@,
	movw	sl, #14956	@ tmp195,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	lr, [r4, sl]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	movw	fp, #14964	@ tmp205,
	movw	r9, #14968	@ tmp210,
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, fp]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	add	r2, r4, #14848	@ D.36613, pCtx,
	str	r8, [r7, #204]	@ tmp186, <variable>.p_usrdat
	add	r0, r2, #36	@ D.36613, D.36613,
	str	r8, [r7, #192]	@ tmp186, <variable>.p_usrdat
	str	r8, [r7, #196]	@ tmp186, <variable>.p_usrdat
	str	r8, [r7, #200]	@ tmp186, <variable>.p_usrdat
	str	r0, [r4, r5]	@ D.36613, <variable>.CodecInfo.pRef
	str	r0, [r4, sl]	@ D.36613, <variable>.CodecInfo.pCurFrm
	str	r0, [r4, r9]	@ D.36613, <variable>.CodecInfo.pRef
	str	r0, [r4, fp]	@ D.36613, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #14888	@ tmp235,
	str	r0, [r4, r3]	@, <variable>.CodecInfo.ZeroFrm.FspID
.L345:
	movw	r1, #15648	@ tmp236,
	mov	r0, #0	@ tmp237,
	str	r0, [r4, r1]	@ tmp237, <variable>.CodecInfo.RefNum
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L366:
	movw	r2, #15648	@ tmp256,
	movw	lr, #15073	@ tmp258,
	ldr	r3, [r4, r2]	@ iftmp.505, <variable>.CodecInfo.RefNum
	movw	ip, #15648	@ tmp257,
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	cmp	r3, #1	@ iftmp.505,
	addle	r3, r3, #1	@ iftmp.505, iftmp.505,
	cmp	r6, #1	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	str	r3, [r4, ip]	@ iftmp.505, <variable>.CodecInfo.RefNum
	beq	.L351	@,
	movw	r0, #15340	@ tmp260,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r1, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L352	@,
.L351:
	movw	lr, #14956	@ tmp265,
	movw	r5, #16608	@ tmp262,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r6, r4, #14848	@ tmp268, pCtx,
	add	r7, r6, #36	@ tmp268, tmp268,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
	movw	ip, #14968	@ tmp267,
	ldr	r3, [r4, ip]	@ temp.2376, <variable>.CodecInfo.pRef
	cmp	r3, r7	@ temp.2376, tmp268
	beq	.L353	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
.L353:
	movw	r7, #14964	@ tmp274,
	movw	r2, #14960	@ tmp277,
	movw	ip, #14956	@ tmp280,
	ldr	r6, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r5, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #14968	@ tmp273,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r6, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r0, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
	str	r5, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
.L352:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	bne	.L349	@,
	movw	r7, #14964	@ tmp284,
	ldr	r5, [r4, r7]	@ pOutput,
	b	.L355	@
.L365:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3330	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36584, pImage.2369
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L367:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3370	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36584, pImage.2385
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L368:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3305	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36584, pImage
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L369:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3309	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36584, pImage.2346
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	AVSDEC_VDMPostProc, .-AVSDEC_VDMPostProc
	.align	2
	.global	AVSDEC_GetRemainImg
	.type	AVSDEC_GetRemainImg, %function
AVSDEC_GetRemainImg:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	addeq	r5, r4, #16064	@ tmp242, pCtx,
	addeq	r5, r5, #24	@ tmp242, tmp242,
	beq	.L371	@,
	movw	r8, #14968	@ tmp153,
	movw	r6, #16608	@ tmp150,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	add	r5, r4, #16064	@ tmp242, pCtx,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r5, r5, #24	@ tmp242, tmp242,
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage.2443,
	beq	.L372	@,
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [sl, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L386	@,
.L374:
	movw	sl, #14964	@ tmp182,
	movw	r6, #16608	@ tmp179,
	ldr	r7, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage.2464,
	beq	.L376	@,
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r8, #1	@ ret,
	beq	.L387	@,
.L376:
	movw	sl, #14960	@ tmp211,
	movw	r6, #16608	@ tmp208,
	ldr	lr, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L380	@,
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L388	@,
.L371:
	mov	r0, r5	@, tmp242
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	GetVoLastImageID	@
.L386:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp242
	str	r7, [sp, #0]	@ pImage.2443,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L375	@,
	ldr	r1, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L372	@,
	ldr	r6, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r6, #31	@ <variable>.image_width,
	bls	.L372	@,
	ldr	lr, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L374	@,
.L372:
	mvn	r8, #0	@ ret,
	b	.L374	@
.L380:
	cmp	r8, #0	@ ret,
	bne	.L371	@,
.L382:
	mov	r0, r8	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L388:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	mov	r2, #1	@ tmp218,
	str	r2, [r7, #224]	@ tmp218, <variable>.last_frame
	ldr	ip, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp242
	str	r7, [sp, #0]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L381	@,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp230,
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ tmp230, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #196]	@ tmp230, <variable>.p_usrdat
	b	.L371	@
.L387:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp242
	str	r7, [sp, #0]	@ pImage.2464,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L389	@,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp203,
	bl	FreeUsdByDec	@
	str	sl, [r7, #192]	@ tmp203, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	mvn	r8, #0	@ ret,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r7, #196]	@ tmp203, <variable>.p_usrdat
	b	.L376	@
.L375:
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp174,
	bl	FreeUsdByDec	@
	str	sl, [r7, #192]	@ tmp174, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	mvn	r8, #0	@ ret,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r7, #196]	@ tmp174, <variable>.p_usrdat
	b	.L374	@
.L389:
	ldr	r0, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #100	@ <variable>.error_level,
	bhi	.L379	@,
	ldr	r2, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L379	@,
	ldr	r1, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L376	@,
.L379:
	mvn	r8, #0	@ ret,
	b	.L376	@
.L381:
	ldr	r0, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #100	@ <variable>.error_level,
	bhi	.L371	@,
	ldr	r2, [r7, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L371	@,
	ldr	r1, [r7, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	movhi	r8, #0	@ ret,
	bhi	.L382	@,
	b	.L371	@
	.fnend
	.size	AVSDEC_GetRemainImg, .-AVSDEC_GetRemainImg
	.align	2
	.global	AVS_AllocateVHB
	.type	AVS_AllocateVHB, %function
AVS_AllocateVHB:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 848
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	add	r1, r0, #14848	@, pCtx,
	.pad #856
	sub	sp, sp, #856	@,,
	mov	r4, r0	@ pCtx, pCtx
	add	r1, r1, #32	@,,
	add	r0, sp, #8	@,,
	mov	r2, #808	@,
	bl	memcpy	@
	ldr	r7, [sp, #148]	@ pCodecInf$Syntax$syn_seq$horizontal_size, pCodecInf.Syntax.syn_seq.horizontal_size
	ldr	r6, [sp, #152]	@ pCodecInf$Syntax$syn_seq$vertical_size, pCodecInf.Syntax.syn_seq.vertical_size
	cmp	r7, #31	@ pCodecInf$Syntax$syn_seq$horizontal_size,
	bls	.L391	@,
	cmp	r6, #31	@ pCodecInf$Syntax$syn_seq$vertical_size,
	bls	.L391	@,
	ldr	r3, [r4, #0]	@ D.35351, <variable>.pstExtraData
	ldr	r2, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L394	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L417	@,
.L395:
	mov	r8, #4	@ PmvNum,
	mov	sl, #5	@ prephitmp.2508,
	mov	r9, r8	@ DecFsNum, PmvNum
.L402:
	add	r5, sp, #816	@ tmp202,,
	mov	r1, #36	@,
	mov	r0, r5	@, tmp202
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp177,
	ldr	r1, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r7, [sp, #844]	@ pCodecInf$Syntax$syn_seq$horizontal_size, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #818]	@ tmp177, FspInstCfg.s32RprEnable
	strb	r1, [sp, #816]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r1, r5	@, tmp202
	str	r7, [sp, #828]	@ pCodecInf$Syntax$syn_seq$horizontal_size, FspInstCfg.s32DecFsWidth
	mov	r7, #0	@ tmp186,
	str	r6, [sp, #848]	@ pCodecInf$Syntax$syn_seq$vertical_size, FspInstCfg.s32DispFsHeight
	str	r6, [sp, #832]	@ pCodecInf$Syntax$syn_seq$vertical_size, FspInstCfg.s32DecFsHeight
	ldr	r6, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	sl, [sp, #823]	@ prephitmp.2508, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #16608	@ tmp188,
	uxtbne	r2, r9	@ iftmp.449, DecFsNum
	strb	r2, [sp, #821]	@ iftmp.449, FspInstCfg.s32ExpectedDecFsNum
	ldr	r3, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r3, #24	@ <variable>.eCapLevel,
	strb	r7, [sp, #820]	@ tmp186, FspInstCfg.s32UserDec
	uxtbne	r8, r8	@ iftmp.450, PmvNum
	moveq	r8, #1	@ iftmp.450,
	strb	r8, [sp, #824]	@ iftmp.450, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35400,
	bne	.L412	@,
	ldr	ip, [r4, #0]	@ temp.2537, <variable>.pstExtraData
	add	r3, sp, #852	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [ip, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [ip, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L418	@,
	mov	r3, #1	@ tmp199,
	movw	lr, #17120	@ tmp198,
	mov	r0, r3	@ D.35348, tmp199
	str	r3, [r4, lr]	@ tmp199, <variable>.FspPartitionOK
	b	.L393	@
.L391:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35348,
.L393:
	add	sp, sp, #856	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L394:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L395	@,
	ldr	ip, [r3, #568]	@ temp.2523, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r7	@ temp.2523, pCodecInf$Syntax$syn_seq$horizontal_size
	ldrcc	lr, [r3, #572]	@ prephitmp.2526, <variable>.stChanOption.s32MaxHeight
	bcc	.L404	@,
	ldr	lr, [r3, #572]	@ prephitmp.2526, <variable>.stChanOption.s32MaxHeight
	cmp	lr, r6	@ prephitmp.2526, pCodecInf$Syntax$syn_seq$vertical_size
	bcc	.L404	@,
.L405:
	ldr	r5, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r5, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L407	@,
	add	r8, r9, #1	@ PmvNum.2528, DecFsNum,
	cmp	r8, #17	@ PmvNum.2528,
	movge	r8, #17	@ PmvNum,
.L407:
	ldrb	sl, [r3, #616]	@ zero_extendqisi2	@ prephitmp.2508, <variable>.stChanOption.s32DisplayFrameNum
	b	.L402	@
.L417:
	ldr	ip, [r3, #568]	@ D.35358, <variable>.stChanOption.s32MaxWidth
	cmp	ip, r7	@ D.35358, pCodecInf$Syntax$syn_seq$horizontal_size
	ldrcc	r5, [r3, #572]	@ prephitmp.2510, <variable>.stChanOption.s32MaxHeight
	bcc	.L397	@,
	ldr	r5, [r3, #572]	@ prephitmp.2510, <variable>.stChanOption.s32MaxHeight
	cmp	r5, r6	@ prephitmp.2510, pCodecInf$Syntax$syn_seq$vertical_size
	bcc	.L397	@,
	movw	ip, #17120	@ tmp165,
	ldr	r0, [r4, ip]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r0, #1	@ <variable>.FspPartitionOK,
	bne	.L405	@,
	b	.L393	@
.L412:
	mov	r0, r7	@, tmp186
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35348, tmp186
	b	.L393	@
.L404:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35348,
	b	.L393	@
.L418:
	mov	r0, r5	@, D.35400
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35348, D.35400
	b	.L393	@
.L397:
	mov	r2, r7	@, pCodecInf$Syntax$syn_seq$horizontal_size
	mov	r3, r6	@, pCodecInf$Syntax$syn_seq$vertical_size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [sp, #0]	@ D.35358,
	str	r5, [sp, #4]	@ prephitmp.2510,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35348,
	b	.L393	@
	.fnend
	.size	AVS_AllocateVHB, .-AVS_AllocateVHB
	.align	2
	.global	AVS_GetStreamInf
	.type	AVS_GetStreamInf, %function
AVS_GetStreamInf:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #14996	@ tmp203,
	movw	r1, #15008	@ tmp201,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, ip]	@ <variable>.CodecInfo.SizeChanged, <variable>.CodecInfo.SizeChanged
	movw	r3, #15676	@ tmp200,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.sample_precision, <variable>.CodecInfo.Syntax.syn_seq.sample_precision
	.pad #52
	sub	sp, sp, #52	@,,
	cmp	r0, #1	@ <variable>.CodecInfo.SizeChanged,
	str	r2, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_seq.sample_precision, <variable>.CodecInfo.sample_precision
	beq	.L420	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	lr, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L420	@,
.L421:
	movw	r0, #15007	@ tmp384,
	movw	r5, #14956	@ tmp387,
	movw	r7, #15073	@ tmp388,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.chroma_format, <variable>.CodecInfo.Syntax.syn_seq.chroma_format
	ldrb	r6, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movw	r1, #15672	@ tmp383,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r0, r4	@, pCtx
	str	ip, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_seq.chroma_format, <variable>.CodecInfo.chroma_format
	strb	r6, [r2, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.PicStruct
	bl	AVS_GetImageBuffer	@
	subs	r6, r0, #0	@ D.35545,
	beq	.L535	@,
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	lr, #16608	@ tmp392,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage,
	beq	.L536	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r6, #8]	@ <variable>.pts, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r6, #16]	@ <variable>.Usertag, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r6, #24]	@ <variable>.DispTime, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [ip, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r8, [r6, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r9, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	lr, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	fp, [sl, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	fp, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	ip, [r6, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	rsbs	r9, r8, #1	@ tmp414, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movcc	r9, #0	@ tmp414
	str	r9, [r6, #128]	@ tmp414, <variable>.is_fld_save
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r8, #0	@ tmp416,
	mvn	r9, #0	@,
	strd	r8, [lr, #56]	@ tmp416, <variable>.pstExtraData,
	ldrd	r8, [r6, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r6, #8]	@ <variable>.PTS, pImage,
	mov	r6, #15104	@ tmp422,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	ldr	fp, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_distance, <variable>.CodecInfo.Syntax.syn_pic.picture_distance
	movw	ip, #15340	@ tmp431,
	ldr	sl, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	fp, [sl, #8]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_distance, <variable>.pic_distance
	movw	sl, #15073	@ tmp439,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r0, [r3, #0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.PicStruct
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r2, [r1, #1]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.PicCodingType
	ldrb	r6, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	ldr	r7, [r4, r5]	@ temp.2674, <variable>.CodecInfo.pCurFrm
	cmp	r6, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	movwne	r6, #15074	@ tmp437,
	moveq	r6, #1	@ iftmp.457,
	ldrneb	r6, [r4, r6]	@ zero_extendqisi2	@ iftmp.457, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	strb	r6, [r7, #2]	@ iftmp.457, <variable>.TopFldFirst
	ldrb	fp, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	cmp	fp, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	bne	.L533	@,
	movw	r5, #15340	@ tmp441,
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	cmp	r6, #0	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	beq	.L524	@,
.L533:
	add	r5, r4, #14848	@ tmp807, pCtx,
.L450:
	movw	r2, #15336	@ tmp464,
	mov	r3, #15680	@ tmp463,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag
	add	r0, r5, #32	@, tmp807,
	mov	r7, #14976	@ tmp470,
	movw	r8, #15396	@ tmp480,
	movw	fp, #15085	@ tmp504,
	movw	r9, #15078	@ tmp510,
	str	lr, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.CodecInfo.b_filed_enhanced_flag
	movw	r6, #15676	@ tmp495,
	bl	AVS_UpdatePmvTable	@
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.PicMbWidth, <variable>.CodecInfo.PicMbWidth
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.DDR_Stride, <variable>.CodecInfo.DDR_Stride
	movw	r0, #15084	@ tmp507,
	ldrb	lr, [r4, fp]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag, <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag
	movw	fp, #15076	@ tmp516,
	add	ip, r7, #63	@ tmp484, <variable>.CodecInfo.DDR_Stride,
	cmp	r7, #0	@ <variable>.CodecInfo.DDR_Stride,
	movw	r5, #15672	@ tmp498,
	movw	r1, #15086	@ tmp501,
	movlt	r7, ip	@ <variable>.CodecInfo.DDR_Stride, tmp484
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable, <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag, <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag
	movw	sl, #14980	@ tmp469,
	ldrb	r9, [r4, fp]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.fixed_picture_qp
	movw	fp, #15075	@ tmp519,
	ldr	r8, [r4, r6]	@ <variable>.CodecInfo.sample_precision, <variable>.CodecInfo.sample_precision
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.chroma_format, <variable>.CodecInfo.chroma_format
	ldrb	r5, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag, <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag
	movw	r1, #15077	@ tmp513,
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.PicMbHeight, <variable>.CodecInfo.PicMbHeight
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_qp, <variable>.CodecInfo.Syntax.syn_pic.picture_qp
	str	r9, [sp, #16]	@, %sfp
	ldrb	r9, [r4, fp]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.repeat_first_field
	movw	fp, #15074	@ tmp522,
	mul	sl, r2, r3	@ tmp471, <variable>.CodecInfo.PicMbWidth, <variable>.CodecInfo.PicMbHeight
	str	r9, [sp, #20]	@, %sfp
	ldrb	r9, [r4, fp]	@ zero_extendqisi2	@, <variable>.CodecInfo.Syntax.syn_pic.top_field_first
	movw	fp, #15340	@ tmp525,
	sub	sl, sl, #1	@ tmp474, tmp471,
	str	r9, [sp, #24]	@, %sfp
	ldr	r9, [r4, fp]	@, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	movw	fp, #15073	@ tmp527,
	str	r9, [sp, #28]	@, %sfp
	ldrb	r9, [r4, fp]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure, <variable>.CodecInfo.Syntax.syn_pic.picture_structure
	movw	fp, #16672	@ tmp488,
	str	r2, [r4, fp]	@ <variable>.CodecInfo.PicMbWidth, <variable>.AvsCfg.pic_width_in_mb
	movw	r2, #16668	@ tmp491,
	str	r3, [r4, r2]	@ <variable>.CodecInfo.PicMbHeight, <variable>.AvsCfg.pic_height_in_mb
	movw	r2, #16676	@ tmp494,
	str	r8, [r4, r2]	@ <variable>.CodecInfo.sample_precision, <variable>.AvsCfg.sample_precision
	movw	r8, #16616	@ tmp475,
	mov	r2, r7, asr #6	@ tmp485, <variable>.CodecInfo.DDR_Stride,
	mov	r7, #0	@ tmp476,
	str	r7, [r4, r8]	@ tmp476, <variable>.AvsCfg.mv_output_en
	movw	r7, #16680	@ tmp497,
	str	r6, [r4, r7]	@ <variable>.CodecInfo.chroma_format, <variable>.AvsCfg.chroma_format
	movw	r6, #16684	@ tmp500,
	str	r5, [r4, r6]	@ <variable>.CodecInfo.Syntax.syn_pic.no_forward_reference_flag, <variable>.AvsCfg.no_fwd_ref_flag
	movw	r5, #16688	@ tmp503,
	str	lr, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_reference_flag, <variable>.AvsCfg.pic_ref_flag
	movw	lr, #16692	@ tmp506,
	str	ip, [r4, lr]	@ <variable>.CodecInfo.Syntax.syn_pic.advanced_pred_mode_disable, <variable>.AvsCfg.ad_pred_mode_disable
	movw	r3, #16612	@ tmp468,
	movw	ip, #16696	@ tmp509,
	str	sl, [r4, r3]	@ tmp474, <variable>.AvsCfg.mbamt_to_dec
	str	r0, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.skip_mode_flag, <variable>.AvsCfg.skip_mode_flag
	movw	sl, #16624	@ tmp479,
	movw	r3, #16620	@ tmp477,
	movw	r8, #16628	@ tmp486,
	movw	r0, #16700	@ tmp512,
	str	r2, [r4, sl]	@ tmp485, <variable>.AvsCfg.ddr_stride
	str	r1, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.picture_qp, <variable>.AvsCfg.pic_qp
	mov	r2, #1	@ tmp478,
	mov	sl, #6	@ tmp487,
	str	r2, [r4, r3]	@ tmp478, <variable>.AvsCfg.load_qmatrix_flag
	str	sl, [r4, r8]	@ tmp487, <variable>.AvsCfg.video_standard
	movw	sl, #16704	@ tmp515,
	ldr	r8, [sp, #16]	@, %sfp
	movw	r6, #16708	@ tmp518,
	movw	r5, #16712	@ tmp521,
	cmp	r9, #0	@ <variable>.CodecInfo.Syntax.syn_pic.picture_structure,
	movw	r1, #16720	@ tmp529,
	movw	r0, #16716	@ tmp524,
	str	r8, [r4, sl]	@, <variable>.AvsCfg.fix_qp
	movw	sl, #15072	@ tmp531,
	ldr	r7, [sp, #20]	@, %sfp
	moveq	r9, #1	@ iftmp.458,
	movne	r9, #3	@ iftmp.458,
	movw	r8, #15116	@ tmp534,
	add	r3, r4, #15168	@ ivtmp.2630, pCtx,
	add	r2, r4, #15296	@ D.39207, pCtx,
	str	r7, [r4, r6]	@, <variable>.AvsCfg.repeat_first_field
	movw	r7, #15112	@ tmp537,
	ldr	lr, [sp, #24]	@, %sfp
	movw	r6, #15081	@ tmp540,
	add	r3, r3, #28	@ ivtmp.2630, ivtmp.2630,
	add	r2, r2, #28	@ D.39207, D.39207,
	str	lr, [r4, r5]	@, <variable>.AvsCfg.top_field_first
	movw	r5, #15080	@ tmp543,
	ldr	ip, [sp, #28]	@, %sfp
	movw	lr, #15120	@ tmp546,
	str	r9, [r4, r1]	@ iftmp.458, <variable>.AvsCfg.picture_structure
	movw	r1, #15136	@ tmp555,
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame, <variable>.CodecInfo.Syntax.syn_pic.progressive_frame
	str	ip, [r4, r0]	@, <variable>.AvsCfg.pic_coding_type
	movw	ip, #15128	@ tmp549,
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.Syntax.syn_pic.beta_offset, <variable>.CodecInfo.Syntax.syn_pic.beta_offset
	movw	r0, #15132	@ tmp552,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_pic.alpha_c_offset, <variable>.CodecInfo.Syntax.syn_pic.alpha_c_offset
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_parameter_flag, <variable>.CodecInfo.Syntax.syn_pic.loop_filter_parameter_flag
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_disable, <variable>.CodecInfo.Syntax.syn_pic.loop_filter_disable
	ldr	r5, [r4, lr]	@ <variable>.CodecInfo.Syntax.syn_pic.weighting_quant_flag, <variable>.CodecInfo.Syntax.syn_pic.weighting_quant_flag
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_disable, <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_disable
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_u, <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_u
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_v, <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_v
	movw	r1, #16724	@ tmp530,
	str	r9, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.progressive_frame, <variable>.AvsCfg.progressive_frame
	movw	r1, #16728	@ tmp533,
	str	sl, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.beta_offset, <variable>.AvsCfg.beta_offset
	movw	r1, #16732	@ tmp536,
	str	r8, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.alpha_c_offset, <variable>.AvsCfg.alpha_c_offset
	movw	r1, #16736	@ tmp539,
	str	r7, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_parameter_flag, <variable>.AvsCfg.loop_flt_para_flag
	movw	r7, #16816	@ tmp545,
	movw	r1, #16740	@ tmp542,
	str	r5, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_pic.weighting_quant_flag, <variable>.AvsCfg.weighting_quant_flag
	movw	r5, #16828	@ tmp551,
	str	r6, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.loop_filter_disable, <variable>.AvsCfg.loop_flt_disable
	str	ip, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_u, <variable>.AvsCfg.chroma_quant_param_delta_u
	movw	r1, #16820	@ tmp548,
	movw	ip, #16824	@ tmp554,
	str	lr, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_disable, <variable>.AvsCfg.chroma_quant_param_disable
	str	r0, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.chroma_quant_param_delta_v, <variable>.AvsCfg.chroma_quant_param_delta_v
.L454:
	mov	r1, r3	@ tmp806, ivtmp.2630
	add	r5, r3, #1792	@ tmp560, ivtmp.2630,
	ldrh	r6, [r1], #2	@, <variable>.CodecInfo.Syntax.syn_pic.cur_wq_matrix
	ldrh	ip, [r3, #2]	@, <variable>.CodecInfo.Syntax.syn_pic.cur_wq_matrix
	add	r3, r1, #2	@ ivtmp.2630, tmp806,
	add	r0, r1, #1792	@ tmp809, tmp806,
	cmp	r3, r2	@ ivtmp.2630, D.39207
	strh	r6, [r5, #4]	@ movhi	@, <variable>.AvsCfg.cur_wq_matrix
	strh	ip, [r0, #4]	@ movhi	@, <variable>.AvsCfg.cur_wq_matrix
	bne	.L454	@,
	movw	r1, #15324	@ tmp564,
	movw	lr, #15336	@ tmp567,
	movw	r7, #15332	@ tmp570,
	movw	r3, #14956	@ tmp573,
	ldr	r6, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_pic.aec_enable, <variable>.CodecInfo.Syntax.syn_pic.aec_enable
	movw	r5, #16832	@ tmp563,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag
	movw	ip, #16840	@ tmp566,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.Syntax.syn_pic.p_filed_enhanced_flag, <variable>.CodecInfo.Syntax.syn_pic.p_filed_enhanced_flag
	movw	r2, #16836	@ tmp569,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r6, [r4, r5]	@ <variable>.CodecInfo.Syntax.syn_pic.aec_enable, <variable>.AvsCfg.aec_enable
	str	r0, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.b_filed_enhanced_flag, <variable>.AvsCfg.b_filed_enhanced_flag
	str	r1, [r4, r2]	@ <variable>.CodecInfo.Syntax.syn_pic.p_filed_enhanced_flag, <variable>.AvsCfg.p_filed_enhanced_flag
	ldrb	r7, [lr, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r7, #2	@ <variable>.PicCodingType,
	beq	.L537	@,
	movw	r7, #14960	@ tmp629,
	movw	r6, #16608	@ tmp626,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2722,
	beq	.L538	@,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16744	@ tmp636,
	movw	r3, #16748	@ tmp637,
	movw	r7, #14964	@ tmp656,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	r0, [lr, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r0, #1	@ <variable>.PicStruct,
	moveq	r0, #3	@ iftmp.467,
	movne	r0, #1	@ iftmp.467,
	str	r0, [r4, r1]	@ iftmp.467, <variable>.AvsCfg.bwd_picture_structure
	ldrsb	ip, [lr, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	ip, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.bwd_top_field_first
	movw	r3, #16768	@ tmp641,
	ldr	r1, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r1, [r4, r3]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.bwd_address_0
	movw	r1, #16760	@ tmp646,
	ldrb	ip, [lr, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	movw	r3, #16764	@ tmp647,
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.468,
	movne	ip, #1	@ iftmp.468,
	str	ip, [r4, r1]	@ iftmp.468, <variable>.AvsCfg.fwd_picture_structure_0
	ldrsb	ip, [lr, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	ip, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r1, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	movw	r5, #16772	@ tmp651,
	str	r1, [r4, r5]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_0
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2739,
	beq	.L539	@,
.L471:
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16752	@ tmp663,
	movw	r3, #16756	@ tmp664,
	movw	r7, #16776	@ tmp668,
	ldrb	r0, [ip, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r0, #1	@ <variable>.PicStruct,
	moveq	r0, #3	@ iftmp.470,
	movne	r0, #1	@ iftmp.470,
	str	r0, [r4, r1]	@ iftmp.470, <variable>.AvsCfg.fwd_picture_structure_1
	ldrsb	lr, [ip, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	lr, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_1
	ldr	r6, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r6, [r4, r7]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_1
	movw	r7, #14960	@ tmp673,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r6, #16608	@ tmp670,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2750,
	beq	.L540	@,
	movw	r3, #14964	@ tmp681,
	ldr	lr, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r2, #16648	@ tmp676,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	lr, [r4, r2]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type0
	ldr	r1, [r5, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2755,
	beq	.L541	@,
	movw	r0, #14968	@ tmp689,
	ldr	r1, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r5, #16652	@ tmp684,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r1, [r4, r5]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type1
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2761,
	beq	.L542	@,
	movw	r8, #14956	@ tmp697,
	ldr	r3, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r2, #16656	@ tmp692,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r3, [r4, r2]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type2
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2767,
	beq	.L543	@,
	ldr	r0, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	movw	ip, #16660	@ tmp701,
	movw	r1, #16664	@ tmp703,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r0, [r4, ip]	@ <variable>.is_fld_save, <variable>.AvsCfg.ref_pic_type3
	ldr	r3, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	str	r3, [r4, r1]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.ystaddr_1d
	movw	r3, #16780	@ tmp705,
	ldr	ip, [r5, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	movw	r5, #16784	@ tmp710,
	str	ip, [r4, r3]	@ <variable>.luma_2d_phy_addr, <variable>.AvsCfg.rcn_address
	movw	r3, #16788	@ tmp711,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r1, #1	@ <variable>.PicStruct,
	moveq	r1, #3	@ iftmp.475,
	movne	r1, #1	@ iftmp.475,
	str	r1, [r4, r5]	@ iftmp.475, <variable>.AvsCfg.col_pic_struct
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	subs	r2, ip, #0	@ tmp715, <variable>.PicCodingType,
	movne	r2, #1	@ tmp715
	str	r2, [r4, r3]	@ tmp715, <variable>.AvsCfg.col_pic_type
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetPmvAddr	@
	ldr	r5, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16844	@ tmp721,
	str	r0, [r4, r1]	@, <variable>.AvsCfg.current_pmv_addr
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r6, #16856	@ tmp727,
	ldr	r1, [r5, #4]	@, <variable>.FspID
	bl	FSP_GetPmvAddr	@
	movw	ip, #15340	@ tmp728,
	ldr	r7, [r4, ip]	@ <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	sub	r3, r7, #1	@ D.36990, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type,
	cmp	r3, #1	@ D.36990,
	str	r0, [r4, r6]	@, <variable>.AvsCfg.colpic_mv_addr
	bls	.L480	@,
	mov	r7, #0	@ BBlkNum,
	mov	ip, #32	@ MvENum,
	mov	r6, r7	@ SymNum, BBlkNum
	mov	r5, r7	@ DirNum, BBlkNum
.L482:
	add	r2, r4, #15424	@ tmp730, pCtx,
	mov	r0, #1	@ iCnt,
	cmp	r0, ip	@ iCnt, MvENum
	sub	sl, ip, #1	@ tmp801, MvENum,
	mov	lr, r2	@ ivtmp.2621, tmp730
	and	sl, sl, r0	@ tmp803, tmp801,
	ldr	r1, [lr, #12]!	@ tmp752, <variable>.CodecInfo.MvEScale
	add	r3, r2, #16	@ ivtmp.2621, tmp730,
	bic	r8, r1, #-16777216	@ tmp753, tmp752,
	bic	r8, r8, #16515072	@ tmp753, tmp753,
	str	r8, [lr, #1424]	@ tmp753, <variable>.AvsCfg.pmvtable
	bge	.L483	@,
	cmp	sl, #0	@ tmp803,
	beq	.L481	@,
	ldr	r1, [r3, #0]	@ tmp886, <variable>.CodecInfo.MvEScale
	mov	r0, #2	@ iCnt,
	cmp	r0, ip	@ iCnt, MvENum
	bic	lr, r1, #-16777216	@ tmp887, tmp886,
	bic	r1, lr, #16515072	@ tmp887, tmp887,
	str	r1, [r3, #1424]	@ tmp887, <variable>.AvsCfg.pmvtable
	add	r3, r2, #20	@ ivtmp.2621, tmp730,
	bge	.L483	@,
.L481:
	ldr	lr, [r3, #0]	@ tmp815, <variable>.CodecInfo.MvEScale
	add	r0, r0, #2	@ iCnt, iCnt,
	ldr	r2, [r3, #4]	@ tmp820, <variable>.CodecInfo.MvEScale
	cmp	r0, ip	@ iCnt, MvENum
	bic	r1, lr, #-16777216	@ tmp816, tmp815,
	bic	lr, r2, #-16777216	@ tmp821, tmp820,
	bic	r1, r1, #16515072	@ tmp816, tmp816,
	bic	r2, lr, #16515072	@ tmp821, tmp821,
	str	r1, [r3, #1424]	@ tmp816, <variable>.AvsCfg.pmvtable
	str	r2, [r3, #1428]	@ tmp821, <variable>.AvsCfg.pmvtable
	add	r3, r3, #8	@ ivtmp.2621, ivtmp.2621,
	blt	.L481	@,
.L483:
	cmp	r5, #0	@ DirNum,
	ble	.L484	@,
	add	ip, r4, #15552	@ tmp754, pCtx,
	mov	r2, #1	@ iCnt.2780,
	cmp	r2, r5	@ iCnt.2780, DirNum
	sub	r3, r5, #1	@ tmp796, DirNum,
	mov	r1, ip	@ ivtmp.2615, tmp754
	and	r8, r3, r2	@ tmp798, tmp796,
	ldr	r0, [r1, #12]!	@ tmp755, <variable>.CodecInfo.DirectScale
	add	r3, ip, #16	@ ivtmp.2615, tmp754,
	mov	lr, r0, asl #17	@ tmp756, tmp755,
	mov	r0, lr, lsr #17	@ tmp756, tmp756,
	str	r0, [r1, #1360]	@ tmp756, <variable>.AvsCfg.pmvtable
	beq	.L484	@,
	cmp	r8, #0	@ tmp798,
	beq	.L485	@,
	ldr	r0, [r3, #0]	@ tmp882, <variable>.CodecInfo.DirectScale
	mov	r2, #2	@ iCnt.2780,
	cmp	r2, r5	@ iCnt.2780, DirNum
	mov	lr, r0, asl #17	@ tmp884, tmp882,
	mov	r1, lr, lsr #17	@ tmp884, tmp884,
	str	r1, [r3, #1360]	@ tmp884, <variable>.AvsCfg.pmvtable
	add	r3, ip, #20	@ ivtmp.2615, tmp754,
	beq	.L484	@,
.L485:
	ldr	r1, [r3, #0]	@ tmp824, <variable>.CodecInfo.DirectScale
	add	r2, r2, #2	@ iCnt.2780, iCnt.2780,
	ldr	ip, [r3, #4]	@ tmp829, <variable>.CodecInfo.DirectScale
	cmp	r2, r5	@ iCnt.2780, DirNum
	mov	r0, r1, asl #17	@ tmp826, tmp824,
	mov	r1, ip, asl #17	@ tmp831, tmp829,
	mov	lr, r0, lsr #17	@ tmp826, tmp826,
	str	lr, [r3, #1360]	@ tmp826, <variable>.AvsCfg.pmvtable
	mov	ip, r1, lsr #17	@ tmp831, tmp831,
	str	ip, [r3, #1364]	@ tmp831, <variable>.AvsCfg.pmvtable
	add	r3, r3, #8	@ ivtmp.2615, ivtmp.2615,
	bne	.L485	@,
.L484:
	cmp	r7, #0	@ BBlkNum,
	ble	.L486	@,
	add	r5, r4, #15552	@ tmp758, pCtx,
	mov	r7, r7, asl #2	@ D.39180, BBlkNum,
	add	r2, r5, #60	@ ivtmp.2606, tmp758,
	add	r3, r4, #16896	@ tmp760, pCtx,
	add	r1, r3, #60	@ tmp760, tmp760,
	mov	r3, #4	@ ivtmp.2611,
	ldr	lr, [r2, #4]	@ tmp763, <variable>.CodecInfo.BBlkDist
	cmp	r3, r7	@ ivtmp.2611, D.39180
	ldr	r0, [r2, #0]	@ tmp767, <variable>.CodecInfo.BBlkDist
	sub	r8, r7, #4	@ tmp792, D.39180,
	ubfx	r8, r8, #2, #1	@ tmp793, tmp792,,
	add	r2, r5, #68	@ ivtmp.2606, tmp758,
	mov	ip, lr, asl #23	@ tmp762, tmp763,
	mov	lr, r0, asl #23	@ tmp766, tmp767,
	mov	ip, ip, lsr #23	@ tmp762, tmp762,
	mov	r0, lr, lsr #23	@ tmp766, tmp766,
	orr	lr, r0, ip, asl #9	@, tmp769, tmp766, tmp762,
	str	lr, [r1, #0]	@ tmp769, <variable>.AvsCfg.pmvtable
	beq	.L486	@,
	cmp	r8, #0	@ tmp793,
	beq	.L487	@,
	ldr	ip, [r2, #4]	@ tmp874, <variable>.CodecInfo.BBlkDist
	add	r3, r4, #16896	@ tmp873, pCtx,
	ldr	r0, [r2, #0]	@ tmp878, <variable>.CodecInfo.BBlkDist
	add	r1, r3, #64	@ tmp873, tmp873,
	mov	r3, #8	@ ivtmp.2611,
	cmp	r3, r7	@ ivtmp.2611, D.39180
	mov	lr, ip, asl #23	@ tmp876, tmp874,
	add	r2, r5, #76	@ ivtmp.2606, tmp758,
	mov	r0, r0, asl #23	@ tmp880, tmp878,
	mov	ip, lr, lsr #23	@ tmp876, tmp876,
	mov	lr, r0, lsr #23	@ tmp880, tmp880,
	orr	r0, lr, ip, asl #9	@, tmp881, tmp880, tmp876,
	str	r0, [r1, #0]	@ tmp881, <variable>.AvsCfg.pmvtable
	beq	.L486	@,
.L487:
	mov	r1, r2	@ tmp794, ivtmp.2606
	ldr	r8, [r2, #4]	@ tmp837, <variable>.CodecInfo.BBlkDist
	ldr	ip, [r1], #8	@ tmp841, <variable>.CodecInfo.BBlkDist
	add	lr, r3, #4	@ tmp795, ivtmp.2611,
	ldr	r2, [r2, #8]	@ tmp854, <variable>.CodecInfo.BBlkDist
	add	sl, r4, r3	@ tmp834, pCtx, ivtmp.2611
	mov	r5, r8, asl #23	@ tmp839, tmp837,
	add	r3, lr, #4	@ ivtmp.2611, tmp795,
	ldr	r0, [r1, #4]	@ tmp850, <variable>.CodecInfo.BBlkDist
	add	r8, r4, lr	@ tmp847, pCtx, tmp795
	mov	r2, r2, asl #23	@ tmp856, tmp854,
	mov	ip, ip, asl #23	@ tmp843, tmp841,
	add	sl, sl, #16896	@ tmp835, tmp834,
	mov	r5, r5, lsr #23	@ tmp839, tmp839,
	mov	lr, r0, asl #23	@ tmp852, tmp850,
	add	r8, r8, #16896	@ tmp848, tmp847,
	cmp	r3, r7	@ ivtmp.2611, D.39180
	mov	ip, ip, lsr #23	@ tmp843, tmp843,
	mov	r0, lr, lsr #23	@ tmp852, tmp852,
	mov	lr, r2, lsr #23	@ tmp856, tmp856,
	orr	ip, ip, r5, asl #9	@, tmp844, tmp843, tmp839,
	add	r2, r1, #8	@ ivtmp.2606, tmp794,
	str	ip, [sl, #60]	@ tmp844, <variable>.AvsCfg.pmvtable
	orr	ip, lr, r0, asl #9	@, tmp857, tmp856, tmp852,
	str	ip, [r8, #60]	@ tmp857, <variable>.AvsCfg.pmvtable
	bne	.L487	@,
.L486:
	cmp	r6, #0	@ SymNum,
	ble	.L488	@,
	add	ip, r4, #15552	@ tmp770, pCtx,
	mov	r2, #1	@ iCnt.2684,
	cmp	r2, r6	@ iCnt.2684, SymNum
	sub	r3, r6, #1	@ tmp785, SymNum,
	mov	r1, ip	@ ivtmp.2600, tmp770
	and	r5, r3, r2	@ tmp787, tmp785,
	ldr	r0, [r1, #44]!	@ tmp772, <variable>.CodecInfo.SymScale
	add	r3, ip, #48	@ ivtmp.2600, tmp770,
	bic	lr, r0, #-16777216	@ tmp773, tmp772,
	bic	r0, lr, #16515072	@ tmp773, tmp773,
	str	r0, [r1, #1376]	@ tmp773, <variable>.AvsCfg.pmvtable
	beq	.L488	@,
	cmp	r5, #0	@ tmp787,
	beq	.L489	@,
	ldr	lr, [r3, #0]	@ tmp869, <variable>.CodecInfo.SymScale
	mov	r2, #2	@ iCnt.2684,
	cmp	r2, r6	@ iCnt.2684, SymNum
	bic	r1, lr, #-16777216	@ tmp870, tmp869,
	bic	r0, r1, #16515072	@ tmp870, tmp870,
	str	r0, [r3, #1376]	@ tmp870, <variable>.AvsCfg.pmvtable
	add	r3, ip, #52	@ ivtmp.2600, tmp770,
	beq	.L488	@,
.L489:
	ldr	r1, [r3, #0]	@ tmp861, <variable>.CodecInfo.SymScale
	add	r2, r2, #2	@ iCnt.2684, iCnt.2684,
	ldr	ip, [r3, #4]	@ tmp866, <variable>.CodecInfo.SymScale
	cmp	r2, r6	@ iCnt.2684, SymNum
	bic	r0, r1, #-16777216	@ tmp862, tmp861,
	bic	r1, ip, #-16777216	@ tmp867, tmp866,
	bic	lr, r0, #16515072	@ tmp862, tmp862,
	bic	ip, r1, #16515072	@ tmp867, tmp867,
	str	lr, [r3, #1376]	@ tmp862, <variable>.AvsCfg.pmvtable
	str	ip, [r3, #1380]	@ tmp867, <variable>.AvsCfg.pmvtable
	add	r3, r3, #8	@ ivtmp.2600, ivtmp.2600,
	bne	.L489	@,
.L488:
	movw	lr, #15392	@ tmp775,
	movw	r3, #16988	@ tmp774,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.pmv_colmb_buf_phyaddr, <variable>.CodecInfo.pmv_colmb_buf_phyaddr
	mov	r0, #1	@ D.35479,
	str	r2, [r4, r3]	@ <variable>.CodecInfo.pmv_colmb_buf_phyaddr, <variable>.AvsCfg.pmv_colmb_addr
	b	.L426	@
.L535:
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
.L534:
	mov	r0, r6	@ D.35479, D.35545
.L426:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L420:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	movw	r3, #15011	@ tmp212,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence, <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence
	movw	r3, #15024	@ tmp214,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	movw	r1, #15020	@ tmp208,
	cmp	r0, #1	@ <variable>.CodecInfo.Syntax.syn_seq.progressive_sequence,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.Syntax.syn_seq.horizontal_size, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	addne	r3, r3, #31	@ tmp219, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	addeq	r3, r3, #15	@ tmp215, <variable>.CodecInfo.Syntax.syn_seq.vertical_size,
	add	ip, r2, #15	@ tmp209, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size,
	mov	r1, #14976	@ tmp211,
	movne	r3, r3, lsr #5	@ tmp221, tmp219,
	moveq	r3, r3, lsr #4	@ prephitmp.2579, tmp215,
	mov	r2, ip, lsr #4	@ D.35460, tmp209,
	movw	r0, #14980	@ tmp222,
	movne	r3, r3, asl #1	@ prephitmp.2579, tmp221,
	cmp	r2, #512	@ D.35460,
	str	r2, [r4, r1]	@ D.35460, <variable>.CodecInfo.PicMbWidth
	str	r3, [r4, r0]	@ prephitmp.2579, <variable>.CodecInfo.PicMbHeight
	bgt	.L424	@,
	cmp	r3, #512	@ prephitmp.2579,
	bgt	.L424	@,
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	sl, [r7, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	sl, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	addne	r5, r4, #16064	@ D.35520, pCtx,
	addne	r5, r5, #24	@ D.35520, D.35520,
	beq	.L544	@,
.L427:
	movw	sl, #14960	@ tmp312,
	movw	r7, #16608	@ tmp309,
	ldr	lr, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	addeq	r6, r4, #14848	@ temp.2656, pCtx,
	addeq	r6, r6, #36	@ temp.2656, temp.2656,
	beq	.L441	@,
	movw	r9, #14956	@ tmp317,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	movw	lr, #14964	@ tmp327,
	movw	fp, #14968	@ tmp332,
	add	r6, r4, #14848	@ temp.2656, pCtx,
	ldr	r1, [r1, #4]	@, <variable>.FspID
	add	r6, r6, #36	@ temp.2656, temp.2656,
	str	lr, [sp, #12]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [sp, #12]	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, fp]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r1, #4]	@, <variable>.FspID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp346,
	str	r0, [r8, #204]	@ tmp346, <variable>.p_usrdat
	str	r0, [r8, #192]	@ tmp346, <variable>.p_usrdat
	str	r0, [r8, #196]	@ tmp346, <variable>.p_usrdat
	str	r0, [r8, #200]	@ tmp346, <variable>.p_usrdat
	str	r6, [r4, fp]	@ temp.2656, <variable>.CodecInfo.pRef
	str	r6, [r4, r9]	@ temp.2656, <variable>.CodecInfo.pCurFrm
	ldr	r8, [sp, #12]	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r7, #14888	@ tmp357,
	str	r6, [r4, r8]	@ temp.2656, <variable>.CodecInfo.pRef
	str	r6, [r4, sl]	@ temp.2656, <variable>.CodecInfo.pRef
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@, <variable>.CodecInfo.ZeroFrm.FspID
.L441:
	movw	r2, #16608	@ tmp361,
	movw	ip, #15648	@ tmp358,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r8, #0	@ tmp359,
	mov	r1, r5	@, D.35520
	str	r8, [r4, ip]	@ tmp359, <variable>.CodecInfo.RefNum
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ temp.2652, <variable>.pstExtraData
	ldr	r7, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r7, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L442	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L545	@,
.L442:
	movw	r1, #16608	@ tmp367,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L443	@,
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [r8, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L546	@,
.L444:
	mov	r0, r5	@, D.35520
	bl	ResetVoQueue	@
.L443:
	movw	r7, #14996	@ tmp378,
	movw	lr, #14960	@ tmp377,
	movw	r3, #14956	@ tmp374,
	movw	r0, #14968	@ tmp375,
	movw	r5, #14964	@ tmp376,
	str	r6, [r4, lr]	@ temp.2656, <variable>.CodecInfo.pRef
	mov	r8, #0	@ tmp379,
	str	r6, [r4, r0]	@ temp.2656, <variable>.CodecInfo.pRef
	str	r6, [r4, r3]	@ temp.2656, <variable>.CodecInfo.pCurFrm
	mov	r0, r4	@, pCtx
	str	r6, [r4, r5]	@ temp.2656, <variable>.CodecInfo.pRef
	str	r8, [r4, r7]	@ tmp379, <variable>.CodecInfo.SizeChanged
	bl	AVS_AllocateVHB	@
	subs	r5, r0, #0	@ D.35538,
	strne	r8, [r4, r7]	@ tmp379, <variable>.CodecInfo.SizeChanged
	bne	.L421	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, D.35538
	b	.L426	@
.L424:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35479,
	b	.L426	@
.L480:
	movw	r6, #:lower16:.LANCHOR1	@ tmp731,
	movt	r6, #:upper16:.LANCHOR1	@ tmp731,
	add	r3, r6, r3, asl #2	@, tmp734, tmp731, D.36990,
	ldr	ip, [r3, #272]	@ MvENum, CSWTCH.520
	ldr	r7, [r3, #296]	@ BBlkNum, CSWTCH.523
	cmp	ip, #0	@ MvENum,
	ldr	r5, [r3, #280]	@ DirNum, CSWTCH.521
	ldr	r6, [r3, #288]	@ SymNum, CSWTCH.522
	bgt	.L482	@,
	b	.L483	@
.L524:
	movw	r0, #14956	@ tmp446,
	movw	r7, #16608	@ tmp443,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r4, #14848	@ tmp807, pCtx,
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
	movw	r1, #14968	@ tmp448,
	ldr	r3, [r4, r1]	@ temp.2681, <variable>.CodecInfo.pRef
	add	r2, r5, #36	@ tmp449, tmp807,
	cmp	r3, r2	@ temp.2681, tmp449
	beq	.L451	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r6	@, <variable>.CodecInfo.Syntax.syn_pic.derived_pic_coding_type
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetRef	@
.L451:
	movw	r6, #14964	@ tmp455,
	movw	sl, #14960	@ tmp458,
	movw	r8, #14956	@ tmp461,
	ldr	lr, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r7, [r4, sl]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r9, #14968	@ tmp454,
	ldr	fp, [r4, r8]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	lr, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	fp, [r4, sl]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
	str	r7, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	b	.L450	@
.L537:
	movw	r7, #14960	@ tmp578,
	movw	r6, #16608	@ tmp575,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2699,
	beq	.L547	@,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16744	@ tmp585,
	movw	r3, #16748	@ tmp586,
	movw	r7, #14964	@ tmp595,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	ip, [r2, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.461,
	movne	ip, #1	@ iftmp.461,
	str	ip, [r4, r1]	@ iftmp.461, <variable>.AvsCfg.bwd_picture_structure
	ldrsb	r1, [r2, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	r1, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.bwd_top_field_first
	ldr	ip, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	movw	r5, #16768	@ tmp590,
	str	ip, [r4, r5]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.bwd_address_0
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2706,
	beq	.L548	@,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #16760	@ tmp602,
	movw	r3, #16764	@ tmp603,
	movw	r7, #14968	@ tmp612,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	ip, [r2, #0]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	ip, #1	@ <variable>.PicStruct,
	moveq	ip, #3	@ iftmp.463,
	movne	ip, #1	@ iftmp.463,
	str	ip, [r4, r1]	@ iftmp.463, <variable>.AvsCfg.fwd_picture_structure_0
	ldrsb	r1, [r2, #2]	@ <variable>.TopFldFirst, <variable>.TopFldFirst
	str	r1, [r4, r3]	@ <variable>.TopFldFirst, <variable>.AvsCfg.fwd_top_field_first_0
	ldr	r2, [r5, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	movw	r5, #16772	@ tmp607,
	str	r2, [r4, r5]	@ <variable>.luma_phy_addr, <variable>.AvsCfg.fwd_address_0
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImage.2714,
	bne	.L471	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2066	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2714
	b	.L426	@
.L544:
	movw	r9, #14968	@ tmp233,
	movw	r7, #16608	@ tmp230,
	ldr	r8, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r6, #0	@ tmp226,
	str	r6, [sp, #44]	@ tmp226, NewNum
	add	r5, r4, #16064	@ D.35520, pCtx,
	str	r6, [sp, #40]	@ tmp226, ReadNum
	add	r5, r5, #24	@ D.35520, D.35520,
	str	r6, [sp, #36]	@ tmp226, RefNum
	ldr	r1, [r8, #4]	@, <variable>.FspID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImage.2790,
	mvneq	sl, #0	@ ret,
	beq	.L429	@,
	ldr	lr, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	bne	.L429	@,
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, sl	@, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, D.35520
	str	r8, [sp, #0]	@ pImage.2790,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	sl, r6	@ ret, tmp226
	beq	.L429	@,
	ldr	r1, [r8, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	mvn	sl, #0	@ ret,
	bl	FreeUsdByDec	@
	str	r6, [r8, #192]	@ tmp226, <variable>.p_usrdat
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r8, #196]	@ tmp226, <variable>.p_usrdat
.L429:
	movw	r8, #14964	@ tmp251,
	movw	r6, #16608	@ tmp248,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r2, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage.2811,
	beq	.L432	@,
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	sl, #1	@ ret,
	bne	.L432	@,
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [ip, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, D.35520
	str	r7, [sp, #0]	@ pImage.2811,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	sl, #0	@ ret,
	beq	.L432	@,
	ldr	r1, [r7, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp263,
	bl	FreeUsdByDec	@
	mvn	sl, #0	@ ret,
	str	r8, [r7, #192]	@ tmp263, <variable>.p_usrdat
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #196]	@ tmp263, <variable>.p_usrdat
.L432:
	movw	r8, #14960	@ tmp269,
	movw	r7, #16608	@ tmp266,
	ldr	r6, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #4]	@, <variable>.FspID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImage,
	beq	.L435	@,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [lr, #4]	@, <variable>.FspID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L549	@,
.L436:
	movw	ip, #16608	@ tmp285,
	add	r1, sp, #36	@,,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r2, sp, #40	@,,
	add	r3, sp, #44	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ temp.2636, <variable>.pstExtraData
	movw	r2, #17128	@ tmp290,
	ldr	r0, [r4, r2]	@ <variable>.OldPicWidth, <variable>.OldPicWidth
	ldr	r1, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, r1	@ <variable>.OldPicWidth, <variable>.s32DSDThrWidth
	bgt	.L437	@,
	movw	r1, #17132	@ tmp293,
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	lr, [r4, r1]	@ <variable>.OldPicHeight, <variable>.OldPicHeight
	cmp	lr, r0	@ <variable>.OldPicHeight, <variable>.s32DSDThrHeight
	bgt	.L437	@,
	ldr	ip, [sp, #40]	@ ReadNum, ReadNum
	ldr	lr, [sp, #44]	@ NewNum, NewNum
	add	r2, lr, ip	@ tmp296, NewNum, ReadNum
	cmp	r2, #0	@ tmp296,
	ble	.L438	@,
.L439:
	mov	r2, #1	@ tmp305,
	mov	r0, #0	@ D.35479,
	str	r2, [r3, #728]	@ tmp305, <variable>.s32DSDWaitFlag
	b	.L426	@
.L546:
	movw	r2, #17136	@ tmp371,
	ldr	ip, [r4, r2]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	ip, #1	@ <variable>.DSDNeedClearQue,
	bne	.L443	@,
	b	.L444	@
.L435:
	cmn	sl, #1	@ ret,
	beq	.L534	@,
	b	.L436	@
.L536:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1963	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35479, pImage
	b	.L426	@
.L540:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2090	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2750
	b	.L426	@
.L541:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2094	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2755
	b	.L426	@
.L542:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2098	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2761
	b	.L426	@
.L545:
	movw	lr, #17120	@ tmp365,
	ldr	r3, [r4, lr]	@ <variable>.FspPartitionOK, <variable>.FspPartitionOK
	cmp	r3, #0	@ <variable>.FspPartitionOK,
	bne	.L443	@,
	b	.L444	@
.L437:
	ldr	r0, [sp, #44]	@ NewNum, NewNum
	cmp	r0, #0	@ NewNum,
	bgt	.L439	@,
	ldr	r1, [sp, #40]	@ ReadNum, ReadNum
	cmp	r1, #4	@ ReadNum,
	bgt	.L439	@,
	mov	ip, #0	@ tmp306,
	str	ip, [r3, #728]	@ tmp306, <variable>.s32DSDWaitFlag
	movw	r3, #17136	@ tmp307,
	str	ip, [r4, r3]	@ tmp306, <variable>.DSDNeedClearQue
	b	.L427	@
.L538:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2074	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2722
	b	.L426	@
.L539:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2083	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2739
	b	.L426	@
.L543:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2102	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2767
	b	.L426	@
.L549:
	mov	r0, r4	@, pCtx
	bl	AVS_SetImgFormat	@
	mov	r2, #1	@ tmp276,
	str	r2, [r6, #376]	@ tmp276, <variable>.u32IsLastFrame
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r3, #4]	@, <variable>.FspID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, #6	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, D.35520
	str	r6, [sp, #0]	@ pImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L436	@,
	ldr	r1, [r6, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	AVSDEC_RecycleImage	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	mov	r5, #0	@ tmp282,
	bl	FreeUsdByDec	@
	str	r5, [r6, #192]	@ tmp282, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #196]	@ tmp282, <variable>.p_usrdat
	mov	r0, r5	@ D.35479, tmp282
	b	.L426	@
.L548:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2060	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2706
	b	.L426	@
.L547:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2054	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35479, pImage.2699
	b	.L426	@
.L438:
	movw	r7, #17136	@ tmp301,
	mov	r8, #0	@ tmp300,
	str	r8, [r3, #728]	@ tmp300, <variable>.s32DSDWaitFlag
	add	sl, r8, #1	@ tmp302, tmp302,
	str	sl, [r4, r7]	@ tmp302, <variable>.DSDNeedClearQue
	b	.L427	@
	.fnend
	.size	AVS_GetStreamInf, .-AVS_GetStreamInf
	.align	2
	.global	AVS_PrepareDecode
	.type	AVS_PrepareDecode, %function
AVS_PrepareDecode:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	AVS_GetStreamInf	@
	subs	r0, r0, #0	@,,
	movne	r0, #1	@
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	AVS_PrepareDecode, .-AVS_PrepareDecode
	.align	2
	.global	AVS_next_start_code
	.type	AVS_next_start_code, %function
AVS_next_start_code:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp142, D.34631,
	cmp	r0, #0	@ D.34631,
	movlt	r0, r3	@ D.34631, tmp142
	mov	r3, r0, asr #3	@ tmp143, D.34631,
	sub	r6, r3, #3	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L553	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp149, tmp143,
	bl	BsShow	@
	cmp	r0, #1	@ D.34633,
	mov	r3, r0	@ D.34633,
	beq	.L567	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L553	@,
	cmp	r7, #0	@ tmp149,
	beq	.L556	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.34633,
	mov	r3, r0	@ D.34633,
	beq	.L567	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L556	@,
	b	.L553	@
.L554:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.34633,
	cmp	r3, #1	@ D.34633,
	mov	r0, r4	@, pBs
	beq	.L567	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L553	@,
.L556:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.34633,
	cmp	r3, #1	@ D.34633,
	mov	r0, r4	@, pBs
	bne	.L554	@,
.L567:
	mov	r0, r3	@ D.34636, D.34633
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L553:
	mov	r0, #0	@ D.34636,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AVS_next_start_code, .-AVS_next_start_code
	.align	2
	.global	avs_f_v
	.type	avs_f_v, %function
avs_f_v:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ v, v
	mov	r6, r2	@ Name, Name
	bl	BsGet	@
	mov	r2, r6	@, Name
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	r5, [sp, #0]	@ v,
	mov	r4, r0	@ D.34488,
	mov	r0, #7	@,
	mov	r3, r4	@, D.34488
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.34488
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	avs_f_v, .-avs_f_v
	.align	2
	.global	AVS_user_data
	.type	AVS_user_data, %function
AVS_user_data:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r5, r1	@ ExtFrm, ExtFrm
	movw	r1, #15372	@ tmp157,
	mov	r4, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r0, r1]	@, <variable>.CodecInfo.pBs
	movw	r2, #:lower16:.LC23	@,
	mov	r1, #32	@,
	movt	r2, #:upper16:.LC23	@,
	bl	avs_f_v	@
	movw	r3, #14984	@ tmp160,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	cmp	r5, #0	@ ExtFrm,
	orr	r2, r0, #1048576	@ tmp163, <variable>.CodecInfo.Integrity,
	str	r2, [r4, r3]	@ tmp163, <variable>.CodecInfo.Integrity
	bne	.L571	@,
	movw	r6, #15664	@ tmp164,
	ldr	r1, [r4, r6]	@ D.35036, <variable>.CodecInfo.pSeqUD
	cmp	r1, #0	@ D.35036,
	beq	.L572	@,
	movw	ip, #16608	@ tmp165,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, r6]	@ ExtFrm, <variable>.CodecInfo.pSeqUD
.L572:
	movw	lr, #16608	@ tmp169,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r3, #15664	@ tmp171,
	cmp	r0, #0	@ D.35040,
	str	r0, [r4, r3]	@ D.35040, <variable>.CodecInfo.pSeqUD
	beq	.L573	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #1056	@ tmp172,
	mov	r1, #9	@ tmp177,
	ldrd	r6, [lr, #56]	@ <variable>.pts, <variable>.pstExtraData,
	movw	lr, #14992	@ tmp180,
	strd	r6, [r0, ip]	@ <variable>.pts, D.35040, tmp172
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	str	r1, [r2, #1036]	@ tmp177, <variable>.from
	movw	r1, #16460	@ tmp184,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	str	ip, [r0, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	movw	ip, #16448	@ tmp190,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pSeqUD, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	sub	r0, r2, #4	@ tmp186, <variable>.LenInByte,
	str	r0, [lr, #1048]	@ tmp186, <variable>.data_size
	ldr	r0, [r4, r3]	@ prephitmp.2935, <variable>.CodecInfo.pSeqUD
	ldr	r2, [r0, #1048]	@ prephitmp.2937, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2937,
	movgt	r2, #1024	@ tmp188,
	strgt	r2, [r0, #1048]	@ tmp188, <variable>.data_size
	ldrgt	r0, [r4, r3]	@ prephitmp.2935, <variable>.CodecInfo.pSeqUD
	ldr	r1, [r4, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	ldrgt	r2, [r0, #1048]	@ prephitmp.2937, <variable>.data_size
	add	r1, r1, #4	@, <variable>.VirAddr,
	bl	memcpy	@
	movw	r3, #16453	@ tmp197,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r2, #0	@ <variable>.IsLastSeg,
	bne	.L575	@,
	movw	ip, #15664	@ tmp199,
	movw	r1, #16540	@ tmp200,
	ldr	r3, [r4, ip]	@ temp.2958, <variable>.CodecInfo.pSeqUD
	ldr	lr, [r4, r1]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #16460	@ tmp207,
	ldr	r0, [r3, #1048]	@ <variable>.data_size, <variable>.data_size
	add	r2, r0, lr	@ tmp203, <variable>.data_size, <variable>.LenInByte
	str	r2, [r3, #1048]	@ tmp203, <variable>.data_size
	ldr	r3, [r4, ip]	@ prephitmp.2939, <variable>.CodecInfo.pSeqUD
	ldr	r0, [r3, #1048]	@ prephitmp.2941, <variable>.data_size
	cmp	r0, #1024	@ prephitmp.2941,
	movgt	r0, #1024	@ tmp205,
	strgt	r0, [r3, #1048]	@ tmp205, <variable>.data_size
	ldrgt	r3, [r4, ip]	@ prephitmp.2939, <variable>.CodecInfo.pSeqUD
	ldr	r1, [r4, r1]	@ temp.2960, <variable>.LenInByte
	ldrgt	r0, [r3, #1048]	@ prephitmp.2941, <variable>.data_size
	rsb	r2, r1, r0	@ D.35066, temp.2960, prephitmp.2941
	cmn	r2, #4	@ D.35066,
	beq	.L575	@,
	sub	lr, r1, #4	@ tmp208, temp.2960,
	movw	ip, #16528	@ tmp211,
	add	r0, r3, lr	@, prephitmp.2939, tmp208
	ldr	r1, [r4, ip]	@, <variable>.VirAddr
	add	r2, r2, #4	@, D.35066,
	bl	memcpy	@
.L575:
	movw	r3, #:lower16:g_event_report	@ tmp217,
	movt	r3, #:upper16:g_event_report	@ tmp217,
	ldr	r3, [r3, #0]	@ g_event_report.440, g_event_report
	cmp	r3, #0	@ g_event_report.440,
	addne	r2, sp, #8	@ tmp222,,
	movwne	r1, #15664	@ tmp218,
	bne	.L584	@,
.L577:
	mov	r0, #1	@ D.35043,
	b	.L578	@
.L571:
	movw	r5, #15668	@ tmp223,
	ldr	r1, [r4, r5]	@ D.35078, <variable>.CodecInfo.pPicUD
	cmp	r1, #0	@ D.35078,
	beq	.L579	@,
	movw	ip, #16608	@ tmp224,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r2, #0	@ tmp227,
	str	r2, [r4, r5]	@ tmp227, <variable>.CodecInfo.pPicUD
.L579:
	movw	r1, #16608	@ tmp228,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r3, #15668	@ tmp230,
	cmp	r0, #0	@ D.35081,
	str	r0, [r4, r3]	@ D.35081, <variable>.CodecInfo.pPicUD
	beq	.L573	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #1056	@ tmp231,
	movw	r2, #14992	@ tmp239,
	ldrd	r6, [r1, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r6, [r0, ip]	@ <variable>.pts, D.35081, tmp231
	mov	r0, #10	@ tmp236,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	str	r0, [lr, #1036]	@ tmp236, <variable>.from
	movw	lr, #16460	@ tmp243,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	str	ip, [r1, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	movw	ip, #16448	@ tmp249,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pPicUD, <variable>.CodecInfo.pPicUD
	ldr	r0, [r4, lr]	@ <variable>.LenInByte, <variable>.LenInByte
	sub	r1, r0, #4	@ tmp245, <variable>.LenInByte,
	str	r1, [r2, #1048]	@ tmp245, <variable>.data_size
	ldr	r0, [r4, r3]	@ prephitmp.2927, <variable>.CodecInfo.pPicUD
	ldr	r2, [r0, #1048]	@ prephitmp.2929, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2929,
	movgt	r2, #1024	@ tmp247,
	strgt	r2, [r0, #1048]	@ tmp247, <variable>.data_size
	ldrgt	r0, [r4, r3]	@ prephitmp.2927, <variable>.CodecInfo.pPicUD
	ldr	lr, [r4, ip]	@ <variable>.VirAddr, <variable>.VirAddr
	ldrgt	r2, [r0, #1048]	@ prephitmp.2929, <variable>.data_size
	add	r1, lr, #4	@, <variable>.VirAddr,
	bl	memcpy	@
	movw	r3, #16453	@ tmp256,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #0	@ <variable>.IsLastSeg,
	bne	.L581	@,
	movw	lr, #15668	@ tmp258,
	movw	r2, #16540	@ tmp259,
	ldr	r3, [r4, lr]	@ temp.2978, <variable>.CodecInfo.pPicUD
	ldr	r1, [r4, r2]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r0, [r3, #1048]	@ <variable>.data_size, <variable>.data_size
	add	ip, r0, r1	@ tmp262, <variable>.data_size, <variable>.LenInByte
	str	ip, [r3, #1048]	@ tmp262, <variable>.data_size
	ldr	r3, [r4, lr]	@ prephitmp.2931, <variable>.CodecInfo.pPicUD
	movw	r0, #16460	@ tmp266,
	ldr	r2, [r3, #1048]	@ prephitmp.2933, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.2933,
	movgt	r2, #1024	@ tmp264,
	strgt	r2, [r3, #1048]	@ tmp264, <variable>.data_size
	ldrgt	r3, [r4, lr]	@ prephitmp.2931, <variable>.CodecInfo.pPicUD
	ldr	r1, [r4, r0]	@ temp.2981, <variable>.LenInByte
	ldrgt	r2, [r3, #1048]	@ prephitmp.2933, <variable>.data_size
	rsb	r2, r1, r2	@ D.35096, temp.2981, prephitmp.2933
	cmn	r2, #4	@ D.35096,
	beq	.L581	@,
	sub	ip, r1, #4	@ tmp267, temp.2981,
	movw	lr, #16528	@ tmp270,
	add	r0, r3, ip	@, prephitmp.2931, tmp267
	ldr	r1, [r4, lr]	@, <variable>.VirAddr
	add	r2, r2, #4	@, D.35096,
	bl	memcpy	@
.L581:
	movw	r3, #:lower16:g_event_report	@ tmp276,
	movt	r3, #:upper16:g_event_report	@ tmp276,
	ldr	r3, [r3, #0]	@ g_event_report.2985, g_event_report
	cmp	r3, #0	@ g_event_report.2985,
	beq	.L577	@,
	add	r2, sp, #8	@ tmp281,,
	movw	r1, #15668	@ tmp277,
.L584:
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.pPicUD,
	movw	r1, #16608	@ tmp279,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #6	@,
	str	lr, [r2, #-4]!	@ <variable>.CodecInfo.pPicUD,
	blx	r3	@ g_event_report.2985
	mov	r0, #1	@ D.35043,
.L578:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L573:
	mov	r0, #0	@ D.35043,
	b	.L578	@
	.fnend
	.size	AVS_user_data, .-AVS_user_data
	.align	2
	.global	avs_u_v
	.type	avs_u_v, %function
avs_u_v:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ v, v
	mov	r6, r2	@ Name, Name
	bl	BsGet	@
	mov	r2, r6	@, Name
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	r5, [sp, #0]	@ v,
	mov	r4, r0	@ D.34479,
	mov	r0, #7	@,
	mov	r3, r4	@, D.34479
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.34479
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	avs_u_v, .-avs_u_v
	.align	2
	.global	AVS_picture_display_extension
	.type	AVS_picture_display_extension, %function
AVS_picture_display_extension:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [r0, #492]	@ pBs, <variable>.pBs
	mov	r7, r1	@ pSyntax, pSyntax
	mov	r8, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC24	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC24	@,
	bl	avs_u_v	@
	ldrb	r3, [r7, #11]	@ zero_extendqisi2	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_seq.progressive_sequence
	cmp	r3, #1	@ <variable>.syn_seq.progressive_sequence,
	beq	.L598	@,
	ldrb	r0, [r7, #73]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	r0, #0	@ <variable>.syn_pic.picture_structure,
	moveq	r0, #1	@ tmp152,
	streq	r0, [r7, #0]	@ tmp152, <variable>.NumOfFrameCentreOffsets
	beq	.L591	@,
	ldrb	r1, [r7, #75]	@ zero_extendqisi2	@ <variable>.syn_pic.repeat_first_field, <variable>.syn_pic.repeat_first_field
	cmp	r1, #1	@ <variable>.syn_pic.repeat_first_field,
	beq	.L597	@,
.L594:
	mov	r6, #2	@ tmp155,
	str	r6, [r7, #0]	@ tmp155, <variable>.NumOfFrameCentreOffsets
.L591:
	mov	r5, r7	@ ivtmp.3040, pSyntax
	mov	r6, #0	@ i,
.L592:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC25	@,
	movt	r2, #:upper16:.LC25	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	add	r6, r6, r1	@ i, i,
	str	r0, [r5, #344]	@, <variable>.syn_pdext.frame_centre_horizontal_offset
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC27	@,
	movt	r2, #:upper16:.LC27	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	str	r0, [r5, #356]	@, <variable>.syn_pdext.frame_centre_vertical_offset
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	ldr	ip, [r7, #0]	@ <variable>.NumOfFrameCentreOffsets, <variable>.NumOfFrameCentreOffsets
	add	r5, r5, #4	@ ivtmp.3040, ivtmp.3040,
	cmp	ip, r6	@ <variable>.NumOfFrameCentreOffsets, i
	bgt	.L592	@,
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r3, [r8, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r2, r3, #524288	@ tmp158, <variable>.Integrity,
	str	r2, [r8, #104]	@ tmp158, <variable>.Integrity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L598:
	ldrb	r2, [r7, #75]	@ zero_extendqisi2	@ <variable>.syn_pic.repeat_first_field, <variable>.syn_pic.repeat_first_field
	cmp	r2, #1	@ <variable>.syn_pic.repeat_first_field,
	strne	r3, [r7, #0]	@ <variable>.syn_seq.progressive_sequence, <variable>.NumOfFrameCentreOffsets
	bne	.L591	@,
	ldrb	r3, [r7, #74]	@ zero_extendqisi2	@ <variable>.syn_pic.top_field_first, <variable>.syn_pic.top_field_first
	cmp	r3, #1	@ <variable>.syn_pic.top_field_first,
	bne	.L594	@,
.L597:
	mov	r5, #3	@ tmp154,
	str	r5, [r7, #0]	@ tmp154, <variable>.NumOfFrameCentreOffsets
	b	.L591	@
	.fnend
	.size	AVS_picture_display_extension, .-AVS_picture_display_extension
	.align	2
	.global	AVS_camera_parameters_extension
	.type	AVS_camera_parameters_extension, %function
AVS_camera_parameters_extension:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r4, [r0, #492]	@ pBs, <variable>.pBs
	movw	r6, #:lower16:.LC28	@ D.35184,
	movt	r6, #:upper16:.LC28	@ D.35184,
	mov	r7, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC24	@,
	movt	r2, #:upper16:.LC24	@,
	movw	r5, #:lower16:.LC26	@ D.35186,
	bl	avs_u_v	@
	movt	r5, #:upper16:.LC26	@ D.35186,
	mov	r2, r6	@, D.35184
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC29	@,
	movt	r2, #:upper16:.LC29	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC30	@,
	movt	r2, #:upper16:.LC30	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC31	@,
	movt	r2, #:upper16:.LC31	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC32	@,
	movt	r2, #:upper16:.LC32	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC33	@,
	movt	r2, #:upper16:.LC33	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC34	@,
	movt	r2, #:upper16:.LC34	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC35	@,
	movt	r2, #:upper16:.LC35	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC37	@,
	movt	r2, #:upper16:.LC37	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC38	@,
	movt	r2, #:upper16:.LC38	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC39	@,
	movt	r2, #:upper16:.LC39	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC40	@,
	movt	r2, #:upper16:.LC40	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC41	@,
	movt	r2, #:upper16:.LC41	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC44	@,
	movt	r2, #:upper16:.LC44	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC45	@,
	movt	r2, #:upper16:.LC45	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35186
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r2, r6	@, D.35184
	mov	r1, #32	@,
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r1, [r7, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r3, r1, #4194304	@ tmp158, <variable>.Integrity,
	str	r3, [r7, #104]	@ tmp158, <variable>.Integrity
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AVS_camera_parameters_extension, .-AVS_camera_parameters_extension
	.align	2
	.global	AVS_copyright_extension
	.type	AVS_copyright_extension, %function
AVS_copyright_extension:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #492]	@ pBs, <variable>.pBs
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC24	@,
	movt	r2, #:upper16:.LC24	@,
	mov	r0, r4	@, pBs
	movw	r5, #:lower16:.LC26	@ D.35171,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC46	@,
	movt	r2, #:upper16:.LC46	@,
	movt	r5, #:upper16:.LC26	@ D.35171,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35171
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC49	@,
	movt	r2, #:upper16:.LC49	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35171
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #22	@,
	movw	r2, #:lower16:.LC50	@,
	movt	r2, #:upper16:.LC50	@,
	bl	avs_u_v	@
	mov	r2, r5	@, D.35171
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	avs_f_v	@
	mov	r1, #22	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC51	@,
	movt	r2, #:upper16:.LC51	@,
	bl	avs_u_v	@
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r1, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r3, r1, #2097152	@ tmp147, <variable>.Integrity,
	str	r3, [r6, #104]	@ tmp147, <variable>.Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVS_copyright_extension, .-AVS_copyright_extension
	.align	2
	.global	AVS_sequence_display_extension
	.type	AVS_sequence_display_extension, %function
AVS_sequence_display_extension:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #492]	@ pBs, <variable>.pBs
	mov	r5, r1	@ pSyntax, pSyntax
	mov	r6, r0	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC24	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC24	@,
	bl	avs_u_v	@
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	strb	r0, [r5, #42]	@, <variable>.syn_sdext.video_format
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	strb	r0, [r5, #43]	@, <variable>.syn_sdext.sample_range
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.35138,
	strb	r0, [r5, #44]	@ D.35138, <variable>.syn_sdext.colour_description
	cmp	r0, #1	@ D.35138,
	beq	.L606	@,
.L604:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC58	@,
	movt	r2, #:upper16:.LC58	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	str	r0, [r5, #60]	@, <variable>.syn_sdext.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC59	@,
	movt	r2, #:upper16:.LC59	@,
	strb	r0, [r5, #41]	@, <variable>.syn_sdext.marker_bit
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	str	r0, [r5, #64]	@, <variable>.syn_sdext.display_vertical_size
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	strb	r0, [r5, #40]	@, <variable>.syn_sdext.reserved_bits
	mov	r0, r4	@, pBs
	bl	AVS_next_start_code	@
	ldr	r1, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r0, #1	@,
	orr	r3, r1, #131072	@ tmp165, <variable>.Integrity,
	str	r3, [r6, #104]	@ tmp165, <variable>.Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L606:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC56	@,
	movt	r2, #:upper16:.LC56	@,
	str	r0, [r5, #48]	@, <variable>.syn_sdext.colour_primaries
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC57	@,
	movt	r2, #:upper16:.LC57	@,
	str	r0, [r5, #52]	@, <variable>.syn_sdext.transfer_characteristics
	mov	r0, r4	@, pBs
	bl	avs_u_v	@
	str	r0, [r5, #56]	@, <variable>.syn_sdext.matrix_coefficients
	b	.L604	@
	.fnend
	.size	AVS_sequence_display_extension, .-AVS_sequence_display_extension
	.align	2
	.global	AVS_extension
	.type	AVS_extension, %function
AVS_extension:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #492]	@ pBs, <variable>.pBs
	mov	r5, r0	@ pCodecInf, pCodecInf
	mov	r6, r1	@ pSyntax, pSyntax
	movw	r2, #:lower16:.LC60	@,
	mov	r1, #32	@,
	movt	r2, #:upper16:.LC60	@,
	mov	r0, r4	@, pBs
	bl	avs_f_v	@
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsShow	@
	sub	r0, r0, #2	@ tmp140,,
	cmp	r0, #9	@ tmp140,
	ldrls	pc, [pc, r0, asl #2]	@ tmp140
	b	.L608	@
.L613:
	.word	.L609
	.word	.L608
	.word	.L610
	.word	.L608
	.word	.L608
	.word	.L611
	.word	.L608
	.word	.L608
	.word	.L608
	.word	.L612
.L612:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_camera_parameters_extension	@
.L611:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_picture_display_extension	@
.L610:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_copyright_extension	@
.L609:
	mov	r0, r5	@, pCodecInf
	mov	r1, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_sequence_display_extension	@
.L608:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsSkip	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AVS_extension, .-AVS_extension
	.align	2
	.global	AVS_sequence_header
	.type	AVS_sequence_header, %function
AVS_sequence_header:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #15372	@ tmp156,
	movw	ip, #14984	@ tmp157,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r0, r2]	@ pBs, <variable>.CodecInfo.pBs
	ldr	lr, [r0, ip]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	mov	r6, r0	@ pCtx, pCtx
	mov	r4, r1	@ pSyntax, pSyntax
	.pad #8
	sub	sp, sp, #8	@,,
	bic	r0, lr, #65536	@ tmp160, <variable>.CodecInfo.Integrity,
	mov	r1, #32	@,
	str	r0, [r6, ip]	@ tmp160, <variable>.CodecInfo.Integrity
	movw	r2, #:lower16:.LC61	@,
	mov	r0, r5	@, pBs
	movt	r2, #:upper16:.LC61	@,
	bl	avs_f_v	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC62	@,
	movt	r2, #:upper16:.LC62	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC63	@,
	movt	r2, #:upper16:.LC63	@,
	str	r0, [r4, #12]	@, <variable>.syn_seq.profile_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC64	@,
	movt	r2, #:upper16:.LC64	@,
	str	r0, [r4, #16]	@, <variable>.syn_seq.level_id
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC65	@,
	movt	r2, #:upper16:.LC65	@,
	strb	r0, [r4, #11]	@, <variable>.syn_seq.progressive_sequence
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #14	@,
	movw	r2, #:lower16:.LC66	@,
	movt	r2, #:upper16:.LC66	@,
	str	r0, [r4, #20]	@, <variable>.syn_seq.horizontal_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC67	@,
	movt	r2, #:upper16:.LC67	@,
	str	r0, [r4, #24]	@, <variable>.syn_seq.vertical_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC68	@,
	movt	r2, #:upper16:.LC68	@,
	strb	r0, [r4, #7]	@, <variable>.syn_seq.chroma_format
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC69	@,
	movt	r2, #:upper16:.LC69	@,
	strb	r0, [r4, #8]	@, <variable>.syn_seq.sample_precision
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC70	@,
	movt	r2, #:upper16:.LC70	@,
	strb	r0, [r4, #9]	@, <variable>.syn_seq.aspect_ratio
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #18	@,
	movw	r2, #:lower16:.LC71	@,
	movt	r2, #:upper16:.LC71	@,
	strb	r0, [r4, #10]	@, <variable>.syn_seq.frame_rate_code
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	str	r0, [r4, #28]	@, <variable>.syn_seq.bit_rate_lower
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #12	@,
	movw	r2, #:lower16:.LC72	@,
	movt	r2, #:upper16:.LC72	@,
	strb	r0, [r4, #6]	@, <variable>.syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC73	@,
	movt	r2, #:upper16:.LC73	@,
	str	r0, [r4, #32]	@, <variable>.syn_seq.bit_rate_upper
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	strb	r0, [r4, #5]	@, <variable>.syn_seq.low_delay
	mov	r0, r5	@, pBs
	bl	avs_f_v	@
	mov	r1, #18	@,
	movw	r2, #:lower16:.LC74	@,
	movt	r2, #:upper16:.LC74	@,
	strb	r0, [r4, #6]	@, <variable>.syn_seq.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #3	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	str	r0, [r4, #36]	@, <variable>.syn_seq.bbv_buffer_size
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	movw	r1, #15020	@ tmp185,
	ldr	r2, [r6, r1]	@ D.34691, <variable>.CodecInfo.Syntax.syn_seq.horizontal_size
	ldr	r3, [r4, #20]	@ <variable>.syn_seq.horizontal_size, <variable>.syn_seq.horizontal_size
	cmp	r3, r2	@ <variable>.syn_seq.horizontal_size, D.34691
	strb	r0, [r4, #4]	@, <variable>.syn_seq.reserved_bits
	beq	.L619	@,
.L616:
	movw	r1, #15024	@ tmp194,
	movw	r3, #17128	@ tmp192,
	ldr	r1, [r6, r1]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	movw	lr, #:lower16:g_event_report	@ tmp196,
	movt	lr, #:upper16:g_event_report	@ tmp196,
	str	r2, [r6, r3]	@ D.34691, <variable>.OldPicWidth
	movw	r0, #17132	@ tmp193,
	movw	r3, #14996	@ tmp190,
	str	r1, [r6, r0]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.OldPicHeight
	mov	ip, #1	@ tmp191,
	str	ip, [r6, r3]	@ tmp191, <variable>.CodecInfo.SizeChanged
	ldr	r3, [lr, #0]	@ g_event_report.437, g_event_report
	cmp	r3, #0	@ g_event_report.437,
	beq	.L617	@,
	strh	r2, [sp, #0]	@ movhi	@ D.34691, para
	movw	r2, #16608	@ tmp201,
	strh	r1, [sp, #2]	@ movhi	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, para
	mov	r1, #2	@,
	ldrh	ip, [r4, #20]	@, <variable>.syn_seq.horizontal_size
	strh	ip, [sp, #4]	@ movhi	@, para
	ldrh	lr, [r4, #24]	@, <variable>.syn_seq.vertical_size
	strh	lr, [sp, #6]	@ movhi	@, para
	ldr	r0, [r6, r2]	@, <variable>.ChanID
	mov	r2, sp	@,
	blx	r3	@ g_event_report.437
.L617:
	add	lr, r6, #14976	@, pCtx,
	mov	r1, r4	@, pSyntax
	add	r0, lr, #24	@,,
	mov	r2, #372	@,
	bl	memcpy	@
	movw	r1, #14992	@ tmp211,
	ldr	ip, [r6, r1]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	movw	r2, #14984	@ tmp215,
	ldr	r0, [r6, r2]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	mov	r3, #1	@ tmp210,
	add	ip, ip, r3	@ tmp214, <variable>.CodecInfo.SeqCnt,
	str	ip, [r6, r1]	@ tmp214, <variable>.CodecInfo.SeqCnt
	movw	r1, #14988	@ tmp209,
	orr	ip, r0, #65536	@ tmp218, <variable>.CodecInfo.Integrity,
	str	r3, [r6, r1]	@ tmp210, <variable>.CodecInfo.NewSeq
	mov	r0, r3	@, tmp210
	str	ip, [r6, r2]	@ tmp218, <variable>.CodecInfo.Integrity
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L619:
	movw	r0, #15024	@ tmp187,
	ldr	r1, [r4, #24]	@ <variable>.syn_seq.vertical_size, <variable>.syn_seq.vertical_size
	ldr	r3, [r6, r0]	@ <variable>.CodecInfo.Syntax.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	cmp	r1, r3	@ <variable>.syn_seq.vertical_size, <variable>.CodecInfo.Syntax.syn_seq.vertical_size
	bne	.L616	@,
	b	.L617	@
	.fnend
	.size	AVS_sequence_header, .-AVS_sequence_header
	.align	2
	.global	avs_se_v
	.type	avs_se_v, %function
avs_se_v:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r1	@ Name, Name
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r1, #32	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mov	r5, r0	@ LeadingZeros,
	mvnhi	r4, #-2147483648	@ Info,
	movhi	ip, #32	@ NumBits,
	bhi	.L622	@,
	add	r8, r0, #1	@ D.34527, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, r8	@, D.34527
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r8	@, D.34527
	sub	r0, r0, #1	@ Info.3190,,
	tst	r0, #1	@ Info.3190,
	mov	r4, r0, asr #1	@ Info.3191, Info.3190,
	mov	r0, r6	@, pBs
	addne	r4, r4, #1	@ Info, Info.3191,
	rsbeq	r4, r4, #0	@ Info, Info.3191
	bl	BsSkip	@
	mov	ip, r5, asl #1	@ tmp146, LeadingZeros,
	add	ip, ip, #1	@ NumBits, tmp146,
.L622:
	mov	r2, r7	@, Name
	mov	r3, r4	@, Info
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	ip, [sp, #0]	@ NumBits,
	bl	dprint_vfmw	@
	mov	r0, r4	@, Info
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.fnend
	.size	avs_se_v, .-avs_se_v
	.align	2
	.global	avs_ue_v
	.type	avs_ue_v, %function
avs_ue_v:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r7, r1	@ Name, Name
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r1, #32	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	bl	ZerosMS_32	@
	cmp	r0, #31	@ LeadingZeros,
	mov	r5, r0	@ LeadingZeros,
	mvnhi	r4, #0	@ Info,
	movhi	ip, #32	@ NumBits,
	bhi	.L628	@,
	add	r4, r0, #1	@ D.34505, LeadingZeros,
	mov	r1, r0	@, LeadingZeros
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, r4	@, D.34505
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r4	@, D.34505
	sub	r4, r0, #1	@ Info,,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	ip, r5, asl #1	@ tmp142, LeadingZeros,
	add	ip, ip, #1	@ NumBits, tmp142,
.L628:
	mov	r2, r7	@, Name
	mov	r3, r4	@, Info
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	ip, [sp, #0]	@ NumBits,
	bl	dprint_vfmw	@
	mov	r0, r4	@, Info
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.fnend
	.size	avs_ue_v, .-avs_ue_v
	.align	2
	.global	AVS_pb_picture_header
	.type	AVS_pb_picture_header, %function
AVS_pb_picture_header:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r6, r0	@ pCodecInf, pCodecInf
	ldr	r5, [r0, #492]	@ pBs, <variable>.pBs
	mov	r4, r1	@ pSyntax, pSyntax
	add	r0, r1, #72	@, pSyntax,
	mov	r1, #272	@,
	bl	__memzero	@
	ldr	ip, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bic	r2, ip, #262144	@ tmp189, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp189, <variable>.Integrity
	movw	r2, #:lower16:.LC75	@,
	movt	r2, #:upper16:.LC75	@,
	bl	avs_f_v	@
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC76	@,
	movt	r2, #:upper16:.LC76	@,
	bl	avs_u_v	@
	ldr	r3, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	r3, #72	@ <variable>.syn_seq.profile_id,
	str	r0, [r4, #88]	@, <variable>.syn_pic.bbv_delay
	beq	.L655	@,
.L631:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC78	@,
	movt	r2, #:upper16:.LC78	@,
	bl	avs_u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC79	@,
	movt	r2, #:upper16:.LC79	@,
	strb	r0, [r4, #83]	@, <variable>.syn_pic.picture_coding_type
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r2, [r4, #5]	@ zero_extendqisi2	@ <variable>.syn_seq.low_delay, <variable>.syn_seq.low_delay
	cmp	r2, #1	@ <variable>.syn_seq.low_delay,
	str	r0, [r4, #104]	@, <variable>.syn_pic.picture_distance
	beq	.L656	@,
.L632:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC81	@,
	movt	r2, #:upper16:.LC81	@,
	bl	avs_u_v	@
	uxtb	ip, r0	@ D.34905,
	strb	ip, [r4, #72]	@ D.34905, <variable>.syn_pic.progressive_frame
	cmp	ip, #0	@ D.34905,
	movne	r3, #1	@ tmp211,
	strneb	r3, [r4, #73]	@ tmp211, <variable>.syn_pic.picture_structure
	beq	.L657	@,
.L634:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC84	@,
	movt	r2, #:upper16:.LC84	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC85	@,
	movt	r2, #:upper16:.LC85	@,
	strb	r0, [r4, #74]	@, <variable>.syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	strb	r0, [r4, #75]	@, <variable>.syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	strb	r0, [r4, #76]	@, <variable>.syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	r1, [r4, #83]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	cmp	r1, #2	@ <variable>.syn_pic.picture_coding_type,
	strb	r0, [r4, #77]	@, <variable>.syn_pic.picture_qp
	beq	.L658	@,
.L635:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC88	@,
	movt	r2, #:upper16:.LC88	@,
	bl	avs_u_v	@
	strb	r0, [r4, #85]	@, <variable>.syn_pic.picture_reference_flag
.L637:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC89	@,
	movt	r2, #:upper16:.LC89	@,
	bl	avs_u_v	@
	ldrb	r2, [r4, #83]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	mov	r3, #0	@ tmp229,
	str	r3, [r4, #336]	@ tmp229, <variable>.syn_pic.b_filed_enhanced_flag
	cmp	r2, #2	@ <variable>.syn_pic.picture_coding_type,
	str	r3, [r4, #332]	@ tmp229, <variable>.syn_pic.p_filed_enhanced_flag
	strb	r0, [r4, #86]	@, <variable>.syn_pic.no_forward_reference_flag
	beq	.L659	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC91	@,
	movt	r2, #:upper16:.LC91	@,
	bl	avs_u_v	@
	str	r0, [r4, #332]	@, <variable>.syn_pic.p_filed_enhanced_flag
.L639:
	ldrb	ip, [r4, #73]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	ip, #1	@ <variable>.syn_pic.picture_structure,
	beq	.L640	@,
	ldr	r0, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	r0, #72	@ <variable>.syn_seq.profile_id,
	beq	.L641	@,
.L640:
	mov	r1, #0	@ tmp236,
	str	r1, [r4, #336]	@ tmp236, <variable>.syn_pic.b_filed_enhanced_flag
	str	r1, [r4, #332]	@ tmp236, <variable>.syn_pic.p_filed_enhanced_flag
.L641:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC92	@,
	movt	r2, #:upper16:.LC92	@,
	strb	r0, [r4, #79]	@, <variable>.syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC93	@,
	movt	r2, #:upper16:.LC93	@,
	strb	r0, [r4, #78]	@, <variable>.syn_pic.skip_mode_flag
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r3, #0	@ tmp244,
	str	r3, [r4, #116]	@ tmp244, <variable>.syn_pic.beta_offset
	str	r3, [r4, #112]	@ tmp244, <variable>.syn_pic.alpha_c_offset
	uxtb	r2, r0	@ D.34960,
	strb	r2, [r4, #80]	@ D.34960, <variable>.syn_pic.loop_filter_disable
	cmp	r2, r3	@ D.34960,
	beq	.L660	@,
.L642:
	ldr	lr, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	lr, #72	@ <variable>.syn_seq.profile_id,
	beq	.L661	@,
.L643:
	ldrb	ip, [r4, #83]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_coding_type, <variable>.syn_pic.picture_coding_type
	mov	r0, #1	@,
	cmp	ip, #1	@ <variable>.syn_pic.picture_coding_type,
	movne	ip, #2	@ tmp263,
	str	ip, [r4, #340]	@ tmp263, <variable>.syn_pic.derived_pic_coding_type
	ldr	r3, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	orr	r2, r3, #262144	@ tmp265, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp265, <variable>.Integrity
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L658:
	ldrb	lr, [r4, #73]	@ zero_extendqisi2	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_structure
	cmp	lr, #1	@ <variable>.syn_pic.picture_structure,
	streqb	lr, [r4, #85]	@ <variable>.syn_pic.picture_structure, <variable>.syn_pic.picture_reference_flag
	bne	.L635	@,
	b	.L637	@
.L657:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC82	@,
	movt	r2, #:upper16:.LC82	@,
	bl	avs_u_v	@
	uxtb	r0, r0	@ D.34911,
	strb	r0, [r4, #73]	@ D.34911, <variable>.syn_pic.picture_structure
	cmp	r0, #0	@ D.34911,
	bne	.L634	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC83	@,
	movt	r2, #:upper16:.LC83	@,
	bl	avs_u_v	@
	strb	r0, [r4, #84]	@, <variable>.syn_pic.advanced_pred_mode_disable
	b	.L634	@
.L660:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	bl	avs_u_v	@
	uxtb	ip, r0	@ D.34966,
	strb	ip, [r4, #81]	@ D.34966, <variable>.syn_pic.loop_filter_parameter_flag
	cmp	ip, #0	@ D.34966,
	beq	.L642	@,
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	str	r0, [r4, #112]	@, <variable>.syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, <variable>.syn_pic.beta_offset
	b	.L642	@
.L659:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC90	@,
	movt	r2, #:upper16:.LC90	@,
	bl	avs_u_v	@
	str	r0, [r4, #336]	@, <variable>.syn_pic.b_filed_enhanced_flag
	b	.L639	@
.L661:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC97	@,
	movt	r2, #:upper16:.LC97	@,
	bl	avs_u_v	@
	cmp	r0, #1	@ D.34979,
	mov	r7, r0	@ D.34979,
	str	r0, [r4, #120]	@ D.34979, <variable>.syn_pic.weighting_quant_flag
	beq	.L662	@,
.L644:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC106	@,
	movt	r2, #:upper16:.LC106	@,
	bl	avs_u_v	@
	str	r0, [r4, #324]	@, <variable>.syn_pic.aec_enable
	b	.L643	@
.L655:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	avs_f_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC77	@,
	movt	r2, #:upper16:.LC77	@,
	str	r0, [r4, #100]	@, <variable>.syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r1, [r4, #88]	@ <variable>.syn_pic.bbv_delay, <variable>.syn_pic.bbv_delay
	mov	r3, #1	@ tmp198,
	strb	r3, [r4, #368]	@ tmp198, <variable>.bAvsPlus
	str	r0, [r4, #92]	@ D.34888, <variable>.syn_pic.bbv_delay_extension
	orr	r0, r0, r1, asl #7	@, tmp197, D.34888, <variable>.syn_pic.bbv_delay,
	str	r0, [r4, #88]	@ tmp197, <variable>.syn_pic.bbv_delay
	b	.L631	@
.L656:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, <variable>.syn_pic.bbv_check_times
	b	.L632	@
.L662:
	mov	r1, r0	@, D.34979
	movw	r2, #:lower16:.LC98	@,
	mov	r0, r5	@, pBs
	movt	r2, #:upper16:.LC98	@,
	bl	avs_u_v	@
	mov	r1, r7	@, D.34979
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	str	r0, [r4, #124]	@, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #0	@ D.34986,
	str	r0, [r4, #128]	@ D.34986, <variable>.syn_pic.chroma_quant_param_disable
	beq	.L663	@,
.L645:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC103	@,
	movt	r2, #:upper16:.LC103	@,
	str	r0, [r4, #140]	@, <variable>.syn_pic.weighting_quant_param_index
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3231, <variable>.syn_pic.weighting_quant_param_index
	cmp	r3, #1	@ prephitmp.3231,
	str	r0, [r4, #144]	@, <variable>.syn_pic.weighting_quant_model
	beq	.L648	@,
	ldr	r0, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	r0, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L647	@,
	cmp	r3, #3	@ prephitmp.3231,
	beq	.L648	@,
.L647:
	cmp	r3, #2	@ prephitmp.3231,
	beq	.L650	@,
	ldr	r1, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	r1, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L644	@,
	cmp	r3, #3	@ prephitmp.3231,
	bne	.L644	@,
.L650:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #172]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #176]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #180]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #184]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #188]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #192]	@, <variable>.syn_pic.weighting_quant_param_delta2
	b	.L644	@
.L648:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #148]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #152]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #156]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #160]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #164]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3231, <variable>.syn_pic.weighting_quant_param_index
	str	r0, [r4, #168]	@, <variable>.syn_pic.weighting_quant_param_delta1
	b	.L647	@
.L663:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	str	r0, [r4, #132]	@, <variable>.syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, <variable>.syn_pic.chroma_quant_param_delta_v
	b	.L645	@
	.fnend
	.size	AVS_pb_picture_header, .-AVS_pb_picture_header
	.align	2
	.global	AVS_i_picture_header
	.type	AVS_i_picture_header, %function
AVS_i_picture_header:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pCodecInf, pCodecInf
	ldr	r5, [r0, #492]	@ pBs, <variable>.pBs
	mov	r4, r1	@ pSyntax, pSyntax
	add	r0, r1, #72	@, pSyntax,
	mov	r1, #272	@,
	bl	__memzero	@
	ldr	ip, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bic	r2, ip, #262144	@ tmp187, <variable>.Integrity,
	str	r2, [r6, #104]	@ tmp187, <variable>.Integrity
	movw	r2, #:lower16:.LC107	@,
	movt	r2, #:upper16:.LC107	@,
	bl	avs_f_v	@
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC76	@,
	movt	r2, #:upper16:.LC76	@,
	bl	avs_u_v	@
	ldr	r3, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	r3, #72	@ <variable>.syn_seq.profile_id,
	str	r0, [r4, #88]	@, <variable>.syn_pic.bbv_delay
	beq	.L683	@,
.L666:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC108	@,
	movt	r2, #:upper16:.LC108	@,
	bl	avs_u_v	@
	uxtb	r2, r0	@ D.34747,
	strb	r2, [r4, #82]	@ D.34747, <variable>.syn_pic.time_code_flag
	cmp	r2, #1	@ D.34747,
	beq	.L684	@,
.L667:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	avs_f_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC79	@,
	movt	r2, #:upper16:.LC79	@,
	str	r0, [r4, #100]	@, <variable>.syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.syn_seq.low_delay, <variable>.syn_seq.low_delay
	cmp	ip, #1	@ <variable>.syn_seq.low_delay,
	str	r0, [r4, #104]	@, <variable>.syn_pic.picture_distance
	beq	.L685	@,
.L668:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC81	@,
	movt	r2, #:upper16:.LC81	@,
	bl	avs_u_v	@
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_seq.progressive_sequence
	cmp	r1, #1	@ <variable>.syn_seq.progressive_sequence,
	uxtb	r0, r0	@ D.34763,
	strb	r0, [r4, #72]	@ D.34763, <variable>.syn_pic.progressive_frame
	streqb	r1, [r4, #72]	@ <variable>.syn_seq.progressive_sequence, <variable>.syn_pic.progressive_frame
	beq	.L670	@,
	cmp	r0, #0	@ D.34763,
	beq	.L686	@,
.L670:
	mov	lr, #1	@ tmp210,
	strb	lr, [r4, #73]	@ tmp210, <variable>.syn_pic.picture_structure
.L671:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC84	@,
	movt	r2, #:upper16:.LC84	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC85	@,
	movt	r2, #:upper16:.LC85	@,
	strb	r0, [r4, #74]	@, <variable>.syn_pic.top_field_first
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC86	@,
	movt	r2, #:upper16:.LC86	@,
	strb	r0, [r4, #75]	@, <variable>.syn_pic.repeat_first_field
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC87	@,
	movt	r2, #:upper16:.LC87	@,
	strb	r0, [r4, #76]	@, <variable>.syn_pic.fixed_picture_qp
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldrh	r3, [r4, #72]	@ tmp220,
	cmp	r3, #0	@ tmp220,
	strb	r0, [r4, #77]	@, <variable>.syn_pic.picture_qp
	beq	.L687	@,
.L672:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC93	@,
	movt	r2, #:upper16:.LC93	@,
	strb	r0, [r4, #79]	@, <variable>.syn_pic.reserved_bits
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	mov	r2, #0	@ tmp227,
	str	r2, [r4, #116]	@ tmp227, <variable>.syn_pic.beta_offset
	str	r2, [r4, #112]	@ tmp227, <variable>.syn_pic.alpha_c_offset
	uxtb	r0, r0	@ D.34798,
	strb	r0, [r4, #80]	@ D.34798, <variable>.syn_pic.loop_filter_disable
	cmp	r0, r2	@ D.34798,
	beq	.L688	@,
.L673:
	ldr	r1, [r4, #12]	@ <variable>.syn_seq.profile_id, <variable>.syn_seq.profile_id
	cmp	r1, #72	@ <variable>.syn_seq.profile_id,
	beq	.L689	@,
.L674:
	mov	r0, #1	@ tmp244,
	mov	ip, #0	@ tmp246,
	strb	r0, [r4, #85]	@ tmp244, <variable>.syn_pic.picture_reference_flag
	str	ip, [r4, #340]	@ tmp246, <variable>.syn_pic.derived_pic_coding_type
	ldr	r2, [r6, #104]	@ <variable>.Integrity, <variable>.Integrity
	orr	r3, r2, #262144	@ tmp248, <variable>.Integrity,
	str	r3, [r6, #104]	@ tmp248, <variable>.Integrity
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L686:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC82	@,
	movt	r2, #:upper16:.LC82	@,
	bl	avs_u_v	@
	strb	r0, [r4, #73]	@, <variable>.syn_pic.picture_structure
	b	.L671	@
.L688:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	bl	avs_u_v	@
	uxtb	ip, r0	@ D.34804,
	strb	ip, [r4, #81]	@ D.34804, <variable>.syn_pic.loop_filter_parameter_flag
	cmp	ip, #0	@ D.34804,
	beq	.L673	@,
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	str	r0, [r4, #112]	@, <variable>.syn_pic.alpha_c_offset
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #116]	@, <variable>.syn_pic.beta_offset
	b	.L673	@
.L687:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC92	@,
	movt	r2, #:upper16:.LC92	@,
	bl	avs_u_v	@
	strb	r0, [r4, #78]	@, <variable>.syn_pic.skip_mode_flag
	b	.L672	@
.L689:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC97	@,
	movt	r2, #:upper16:.LC97	@,
	bl	avs_u_v	@
	cmp	r0, #0	@ D.34817,
	str	r0, [r4, #120]	@ D.34817, <variable>.syn_pic.weighting_quant_flag
	bne	.L690	@,
.L675:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC106	@,
	movt	r2, #:upper16:.LC106	@,
	bl	avs_u_v	@
	str	r0, [r4, #324]	@, <variable>.syn_pic.aec_enable
	b	.L674	@
.L683:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	avs_f_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC77	@,
	movt	r2, #:upper16:.LC77	@,
	str	r0, [r4, #100]	@, <variable>.syn_pic.marker_bit
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r1, [r4, #88]	@ <variable>.syn_pic.bbv_delay, <variable>.syn_pic.bbv_delay
	mov	r3, #1	@ tmp195,
	strb	r3, [r4, #368]	@ tmp195, <variable>.bAvsPlus
	str	r0, [r4, #92]	@ D.34740, <variable>.syn_pic.bbv_delay_extension
	orr	r0, r0, r1, asl #7	@, tmp194, D.34740, <variable>.syn_pic.bbv_delay,
	str	r0, [r4, #88]	@ tmp194, <variable>.syn_pic.bbv_delay
	b	.L666	@
.L684:
	mov	r0, r5	@, pBs
	mov	r1, #24	@,
	movw	r2, #:lower16:.LC109	@,
	movt	r2, #:upper16:.LC109	@,
	bl	avs_u_v	@
	str	r0, [r4, #96]	@, <variable>.syn_pic.time_code
	b	.L667	@
.L685:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	avs_ue_v	@
	str	r0, [r4, #108]	@, <variable>.syn_pic.bbv_check_times
	b	.L668	@
.L690:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC98	@,
	movt	r2, #:upper16:.LC98	@,
	bl	avs_u_v	@
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	str	r0, [r4, #124]	@, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	cmp	r0, #0	@ D.34824,
	str	r0, [r4, #128]	@ D.34824, <variable>.syn_pic.chroma_quant_param_disable
	beq	.L691	@,
.L676:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	bl	avs_u_v	@
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC103	@,
	movt	r2, #:upper16:.LC103	@,
	str	r0, [r4, #140]	@, <variable>.syn_pic.weighting_quant_param_index
	mov	r0, r5	@, pBs
	bl	avs_u_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3290, <variable>.syn_pic.weighting_quant_param_index
	cmp	r3, #1	@ prephitmp.3290,
	str	r0, [r4, #144]	@, <variable>.syn_pic.weighting_quant_model
	beq	.L679	@,
	ldr	lr, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	lr, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L678	@,
	cmp	r3, #3	@ prephitmp.3290,
	beq	.L679	@,
.L678:
	cmp	r3, #2	@ prephitmp.3290,
	beq	.L681	@,
	ldr	r0, [r4, #124]	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable, <variable>.syn_pic.mb_adapt_weighting_quant_disable
	cmp	r0, #0	@ <variable>.syn_pic.mb_adapt_weighting_quant_disable,
	bne	.L675	@,
	cmp	r3, #3	@ prephitmp.3290,
	bne	.L675	@,
.L681:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #172]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #176]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #180]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #184]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	str	r0, [r4, #188]	@, <variable>.syn_pic.weighting_quant_param_delta2
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #192]	@, <variable>.syn_pic.weighting_quant_param_delta2
	b	.L675	@
.L691:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	str	r0, [r4, #132]	@, <variable>.syn_pic.chroma_quant_param_delta_u
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	str	r0, [r4, #136]	@, <variable>.syn_pic.chroma_quant_param_delta_v
	b	.L676	@
.L679:
	mov	r0, r5	@, pBs
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #148]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #152]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #156]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #160]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	str	r0, [r4, #164]	@, <variable>.syn_pic.weighting_quant_param_delta1
	mov	r0, r5	@, pBs
	bl	avs_se_v	@
	ldr	r3, [r4, #140]	@ prephitmp.3290, <variable>.syn_pic.weighting_quant_param_index
	str	r0, [r4, #168]	@, <variable>.syn_pic.weighting_quant_param_delta1
	b	.L678	@
	.fnend
	.size	AVS_i_picture_header, .-AVS_i_picture_header
	.align	2
	.global	AVS_ParseHeader
	.type	AVS_ParseHeader, %function
AVS_ParseHeader:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #15372	@ tmp154,
	mov	r2, #0	@ tmp156,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r7, [r0, r1]	@ pBs, <variable>.CodecInfo.pBs
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #16440	@ tmp155,
	str	r2, [r4, r0]	@ tmp156, <variable>.IsPackWaitDec
	mov	r1, #32	@,
	mov	r0, r7	@, pBs
	add	r6, r4, #14848	@ pCodecInf, pCtx,
	bl	BsShow	@
	add	r5, r4, #15680	@ pSyntax, pCtx,
	add	r6, r6, #32	@ pCodecInf, pCodecInf,
	add	r5, r5, #36	@ pSyntax, pSyntax,
	uxtb	r0, r0	@ Code.3351,
	sub	r3, r0, #176	@ tmp157, Code.3351,
	cmp	r3, #78	@ tmp157,
	ldrls	pc, [pc, r3, asl #2]	@ tmp157
	b	.L693	@
.L703:
	.word	.L694
	.word	.L695
	.word	.L696
	.word	.L697
	.word	.L729
	.word	.L699
	.word	.L700
	.word	.L695
	.word	.L729
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L693
	.word	.L702
.L695:
	movw	r2, #14984	@ tmp210,
	ldr	r3, [r4, r2]	@ temp.3374, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp211, temp.3374,
	bne	.L721	@,
	tst	r3, #327680	@ temp.3374,
	bne	.L732	@,
.L715:
	mov	r0, #1	@ D.34574,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L697:
	movw	r2, #14984	@ tmp169,
	ldr	r3, [r4, r2]	@ temp.3353, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp170, temp.3353,
	bne	.L723	@,
	tst	r3, #262144	@ temp.3353,
	bne	.L733	@,
	mov	r0, r6	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
.L728:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
.L729:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34574,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L700:
	movw	r2, #14984	@ tmp180,
	ldr	r3, [r4, r2]	@ temp.3358, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp181, temp.3358,
	bne	.L723	@,
	tst	r3, #262144	@ temp.3358,
	beq	.L710	@,
	bic	r0, r3, #311296	@ tmp190, temp.3358,
	mov	r1, r5	@, pSyntax
	str	r0, [r4, r2]	@ tmp190, <variable>.CodecInfo.Integrity
	mov	r0, r6	@, pCodecInf
	bl	AVS_pb_picture_header	@
	b	.L725	@
.L702:
	mov	r1, #32	@,
	mov	r0, r7	@, pBs
	bl	BsSkip	@
	mov	r0, r7	@, pBs
	mov	r1, #32	@,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.34607,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	movw	r7, #:lower16:1128615492	@ tmp224,
	movw	r2, #:lower16:1213419593	@ tmp227,
	movt	r7, #:upper16:1128615492	@ tmp224,
	movt	r2, #:upper16:1213419593	@ tmp227,
	cmp	r0, r7	@, tmp224
	cmpeq	r5, r2	@, D.34607, tmp227
	movne	r7, #0	@, tmp231
	moveq	r7, #1	@, tmp231
	bne	.L726	@,
	movw	lr, #14984	@ tmp237,
	movw	r2, #17124	@ tmp232,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	movw	r1, #16440	@ tmp235,
	mov	r7, #1	@ tmp233,
	mov	r0, r4	@, pCtx
	orr	ip, r3, #16384	@ tmp240, <variable>.CodecInfo.Integrity,
	strb	r7, [r4, r2]	@ tmp233, <variable>.IsStreamEndFlag
	str	ip, [r4, lr]	@ tmp240, <variable>.CodecInfo.Integrity
	str	r7, [r4, r1]	@ tmp233, <variable>.IsPackWaitDec
	bl	ClearPacket	@
	mov	r0, r7	@ D.34574, tmp233
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L693:
	cmp	r0, #175	@ Code.3351,
	bhi	.L729	@,
	movw	r3, #14984	@ tmp241,
	ldr	r2, [r4, r3]	@ temp.3383, <variable>.CodecInfo.Integrity
	and	r0, r2, #327680	@ tmp242, temp.3383,
	cmp	r0, #327680	@ tmp242,
	bne	.L729	@,
	orr	r7, r2, #32768	@ tmp244, temp.3383,
	mov	r0, r4	@, pCtx
	str	r7, [r4, r3]	@ tmp244, <variable>.CodecInfo.Integrity
	bl	WriteAvsSliceMsg	@
	subs	r7, r0, #0	@ D.34620,
	bne	.L715	@,
.L726:
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.34574, tmp181
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L694:
	movw	r2, #14984	@ tmp158,
	ldr	r3, [r4, r2]	@ D.34564, <variable>.CodecInfo.Integrity
	ands	r7, r3, #32768	@ tmp159, D.34564,
	bne	.L721	@,
	tst	r3, #65536	@ D.34564,
	beq	.L706	@,
	bic	ip, r3, #311296	@ tmp168, D.34564,
	mov	r1, r5	@, pSyntax
	str	ip, [r4, r2]	@ tmp168, <variable>.CodecInfo.Integrity
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, r7	@ D.34574, tmp159
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L696:
	movw	r2, #14984	@ tmp191,
	ldr	r7, [r4, r2]	@ temp.3364, <variable>.CodecInfo.Integrity
	ands	r1, r7, #262144	@ tmp192, temp.3364,
	movne	r1, #1	@,
	bne	.L722	@,
	ands	r7, r7, #65536	@ tmp193, temp.3364,
	beq	.L726	@,
.L722:
	mov	r0, r4	@, pCtx
	bl	AVS_user_data	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34574,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L699:
	movw	ip, #14984	@ tmp194,
	ldr	r1, [r4, ip]	@ tmp196,
	ands	r7, r1, #327680	@ tmp195, tmp196,
	beq	.L726	@,
	mov	r1, r5	@, pSyntax
	mov	r0, r6	@, pCodecInf
	bl	AVS_extension	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34574,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L721:
	mov	r7, #1	@ tmp213,
	movw	r0, #16440	@ tmp212,
	str	r7, [r4, r0]	@ tmp213, <variable>.IsPackWaitDec
	orr	lr, r3, #16384	@ tmp217, temp.3374,
	mov	r0, r7	@ D.34574, tmp213
	str	lr, [r4, r2]	@ tmp217, <variable>.CodecInfo.Integrity
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L733:
	bic	lr, r3, #311296	@ tmp179, temp.3353,
	mov	r0, r6	@, pCodecInf
	str	lr, [r4, r2]	@ tmp179, <variable>.CodecInfo.Integrity
	mov	r1, r5	@, pSyntax
	bl	AVS_i_picture_header	@
.L725:
	mov	r0, r5	@, pSyntax
	bl	Avs_Vfmw_WQMatrix	@
	b	.L726	@
.L710:
	mov	r0, r6	@, pCodecInf
	mov	r1, r5	@, pSyntax
	bl	AVS_pb_picture_header	@
	b	.L728	@
.L706:
	mov	r1, r5	@, pSyntax
	mov	r0, r4	@, pCtx
	bl	AVS_sequence_header	@
	mov	r0, r4	@, pCtx
	bl	ClearPacket	@
	mov	r0, #1	@ D.34574,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L723:
	orr	r7, r3, #16384	@ tmp187, temp.3358,
	movw	r3, #16440	@ tmp182,
	str	r7, [r4, r2]	@ tmp187, <variable>.CodecInfo.Integrity
	mov	r0, r5	@, pSyntax
	mov	r7, #1	@ tmp183,
	str	r7, [r4, r3]	@ tmp183, <variable>.IsPackWaitDec
	bl	Avs_Vfmw_WQMatrix	@
	mov	r0, r7	@ D.34574, tmp183
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L732:
	bic	r3, r3, #311296	@ tmp222, temp.3374,
	mov	r0, r4	@, pCtx
	str	r3, [r4, r2]	@ tmp222, <variable>.CodecInfo.Integrity
	bl	ClearPacket	@
	mov	r0, r7	@ D.34574, tmp211
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AVS_ParseHeader, .-AVS_ParseHeader
	.align	2
	.global	AVSDEC_Decode
	.type	AVSDEC_Decode, %function
AVSDEC_Decode:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r2, r0, #15680	@, pCtx,
	mov	r5, r1	@ p_Packet, p_Packet
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r1, #0]	@, <variable>.VirAddr
	add	r0, r2, #8	@,,
	ldr	r2, [r5, #12]	@, <variable>.LenInByte
	movw	r7, #15684	@ tmp151,
	bl	BsInit	@
	add	r0, r4, #16384	@, pCtx,
	mov	r1, r5	@, p_Packet
	mov	r2, #160	@,
	add	r0, r0, #64	@,,
	movw	r5, #14984	@ tmp152,
	bl	memcpy	@
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.Integrity
	mov	r0, r4	@, pCtx
	str	r3, [r4, r7]	@ <variable>.CodecInfo.Integrity, <variable>.CodecInfo.u32LastIntegrity
	bl	AVS_ParseHeader	@
	subs	r6, r0, #0	@ D.36467,
	beq	.L742	@,
	mov	r0, r4	@, pCtx
	bl	AVS_DecodeArbiter	@
	cmp	r0, #0	@ D.36472
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r0, r4	@, pCtx
	bl	AVS_PrepareDecode	@
	subs	r6, r0, #0	@ D.36475,
	bne	.L738	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r1, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r0, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L739	@,
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.u32LastIntegrity, <variable>.CodecInfo.u32LastIntegrity
	str	ip, [r4, r5]	@ <variable>.CodecInfo.u32LastIntegrity, <variable>.CodecInfo.Integrity
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L742:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r6	@ ret, D.36467
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L738:
	mov	r0, r4	@, pCtx
	bl	AVS_StartDecode	@
	subs	r6, r0, #0	@ D.36484,
	movne	r0, #1	@ ret,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC112	@,
	movt	r1, #:upper16:.LC112	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r6	@ ret, D.36484
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L739:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	AVS_ClearCurPic	@
	mov	r0, r6	@ ret, D.36475
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AVSDEC_Decode, .-AVSDEC_Decode
	.global	wq_param_default
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
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
	.type	CSWTCH.515, %object
	.size	CSWTCH.515, 16
CSWTCH.515:
	.word	5
	.word	1
	.word	2
	.word	3
	.type	CSWTCH.520, %object
	.size	CSWTCH.520, 8
CSWTCH.520:
	.word	32
	.word	16
	.type	CSWTCH.521, %object
	.size	CSWTCH.521, 8
CSWTCH.521:
	.word	0
	.word	8
	.type	CSWTCH.522, %object
	.size	CSWTCH.522, 8
CSWTCH.522:
	.word	0
	.word	4
	.type	CSWTCH.523, %object
	.size	CSWTCH.523, 8
CSWTCH.523:
	.word	0
	.word	4
	.data
	.align	2
.LANCHOR0 = . + 0
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
	.ascii	"SlcNum %d > %d Write slice msg failed\012\000"
	.space	1
.LC1:
	.ascii	"This slice's start mbn %d <= LastSliceFirstMb %d, W"
	.ascii	"rite slice msg failed\012\000"
	.space	2
.LC2:
	.ascii	"-----Pic %5d, type %d, struct %d-----\012\000"
	.space	1
.LC3:
	.ascii	"line: %d\012\000"
	.space	2
.LC4:
	.ascii	"ERROR: AVS_OutputOneFrame is err(%d)\012\000"
	.space	2
.LC5:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC6:
	.ascii	"ERROR: get frame store fail!\012\000"
	.space	2
.LC7:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC8:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC9:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC10:
	.ascii	"line: %d pImage is null\012\000"
	.space	3
.LC11:
	.ascii	"ERROR: err_level(%d) over ref_thr(%d)\012\000"
	.space	1
.LC12:
	.ascii	"ERROR: err_level(%d) over out_thr(%d)\012\000"
	.space	1
.LC13:
	.ascii	"ERROR: image size abnormal(%dx%d)\012\000"
	.space	1
.LC14:
	.ascii	"avs actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC15:
	.ascii	"ERROR: partition fs memory fail!\012\000"
	.space	2
.LC16:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC17:
	.ascii	"size change\012\000"
	.space	3
.LC18:
	.ascii	"MbWidth = %d, MbHeight = %d, don't support!\012\000"
	.space	3
.LC19:
	.ascii	"ERROR: allocate vhb\012\000"
	.space	3
.LC20:
	.ascii	"ERROR: get img buf err\012\000"
.LC21:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC22:
	.ascii	"%-40s     %#-8x(%db)\012\000"
	.space	2
.LC23:
	.ascii	"user_data_start_code\000"
	.space	3
.LC24:
	.ascii	"extension_ID\000"
	.space	3
.LC25:
	.ascii	"frame_centre_horizontal_offset\000"
	.space	1
.LC26:
	.ascii	"marker_bit\000"
	.space	1
.LC27:
	.ascii	"frame_centre_vertical_offset\000"
	.space	3
.LC28:
	.ascii	"reserved_bits\000"
	.space	2
.LC29:
	.ascii	"camera_id\000"
	.space	2
.LC30:
	.ascii	"height_of_image_device\000"
	.space	1
.LC31:
	.ascii	"focal_length\000"
	.space	3
.LC32:
	.ascii	"f_number\000"
	.space	3
.LC33:
	.ascii	"vertical_angle_of_view\000"
	.space	1
.LC34:
	.ascii	"camera_position_x_upper\000"
.LC35:
	.ascii	"camera_position_x_lower\000"
.LC36:
	.ascii	"camera_position_y_upper\000"
.LC37:
	.ascii	"camera_position_y_lower\000"
.LC38:
	.ascii	"camera_position_z_upper\000"
.LC39:
	.ascii	"camera_position_z_lower\000"
.LC40:
	.ascii	"camera_direction_x\000"
	.space	1
.LC41:
	.ascii	"camera_direction_y\000"
	.space	1
.LC42:
	.ascii	"camera_direction_z\000"
	.space	1
.LC43:
	.ascii	"image_plane_vertical_x\000"
	.space	1
.LC44:
	.ascii	"image_plane_vertical_y\000"
	.space	1
.LC45:
	.ascii	"image_plane_vertical_z\000"
	.space	1
.LC46:
	.ascii	"copyright_flag\000"
	.space	1
.LC47:
	.ascii	"copyright_id\000"
	.space	3
.LC48:
	.ascii	"original_or_copy\000"
	.space	3
.LC49:
	.ascii	"copyright_number_1\000"
	.space	1
.LC50:
	.ascii	"copyright_number_2\000"
	.space	1
.LC51:
	.ascii	"copyright_number_3\000"
	.space	1
.LC52:
	.ascii	"video_format\000"
	.space	3
.LC53:
	.ascii	"sample_range\000"
	.space	3
.LC54:
	.ascii	"colour_description\000"
	.space	1
.LC55:
	.ascii	"colour_primaries\000"
	.space	3
.LC56:
	.ascii	"transfer_characteristics\000"
	.space	3
.LC57:
	.ascii	"matrix_coefficients\000"
.LC58:
	.ascii	"display_horizontal_size\000"
.LC59:
	.ascii	"display_vertical_size\000"
	.space	2
.LC60:
	.ascii	"extension_start_code\000"
	.space	3
.LC61:
	.ascii	"video_sequence_start_code\000"
	.space	2
.LC62:
	.ascii	"profile_id\000"
	.space	1
.LC63:
	.ascii	"level_id\000"
	.space	3
.LC64:
	.ascii	"progressive_sequence\000"
	.space	3
.LC65:
	.ascii	"horizontal_size\000"
.LC66:
	.ascii	"vertical_size\000"
	.space	2
.LC67:
	.ascii	"chroma_format\000"
	.space	2
.LC68:
	.ascii	"sample_precision\000"
	.space	3
.LC69:
	.ascii	"aspect_ratio\000"
	.space	3
.LC70:
	.ascii	"frame_rate_code\000"
.LC71:
	.ascii	"bit_rate_lower\000"
	.space	1
.LC72:
	.ascii	"bit_rate_upper\000"
	.space	1
.LC73:
	.ascii	"low_delay\000"
	.space	2
.LC74:
	.ascii	"bbv_buffer_size\000"
.LC75:
	.ascii	"pb_picture_start_code\000"
	.space	2
.LC76:
	.ascii	"bbv_delay\000"
	.space	2
.LC77:
	.ascii	"bbv_delay_extension\000"
.LC78:
	.ascii	"picture_coding_type\000"
.LC79:
	.ascii	"picture_distance\000"
	.space	3
.LC80:
	.ascii	"bbv_check_times\000"
.LC81:
	.ascii	"progressive_frame\000"
	.space	2
.LC82:
	.ascii	"picture_structure\000"
	.space	2
.LC83:
	.ascii	"advanced_pred_mode_disable\000"
	.space	1
.LC84:
	.ascii	"top_field_first\000"
.LC85:
	.ascii	"repeat_first_field\000"
	.space	1
.LC86:
	.ascii	"fixed_picture_qp\000"
	.space	3
.LC87:
	.ascii	"picture_qp\000"
	.space	1
.LC88:
	.ascii	"picture_reference_flag\000"
	.space	1
.LC89:
	.ascii	"no_forward_reference_flag\000"
	.space	2
.LC90:
	.ascii	"b_filed_enhanced_flag\000"
	.space	2
.LC91:
	.ascii	"p_filed_enhanced_flag\000"
	.space	2
.LC92:
	.ascii	"skip_mode_flag\000"
	.space	1
.LC93:
	.ascii	"loop_filter_disable\000"
.LC94:
	.ascii	"loop_filter_parameter_flag\000"
	.space	1
.LC95:
	.ascii	"alpha_c_offset\000"
	.space	1
.LC96:
	.ascii	"beta_offset\000"
.LC97:
	.ascii	"weighting_quant_flag\000"
	.space	3
.LC98:
	.ascii	"mb_adapt_weighting_quant_disable\000"
	.space	3
.LC99:
	.ascii	"chroma_quant_param_disable\000"
	.space	1
.LC100:
	.ascii	"chroma_quant_param_delta_u\000"
	.space	1
.LC101:
	.ascii	"chroma_quant_param_delta_v\000"
	.space	1
.LC102:
	.ascii	"weighting_quant_param_index\000"
.LC103:
	.ascii	"weighting_quant_model\000"
	.space	2
.LC104:
	.ascii	"weighting_quant_param_deltal1\000"
	.space	2
.LC105:
	.ascii	"weighting_quant_param_deltal2\000"
	.space	2
.LC106:
	.ascii	"aec_enable\000"
	.space	1
.LC107:
	.ascii	"i_picture_start_code\000"
	.space	3
.LC108:
	.ascii	"time_code_flag\000"
	.space	1
.LC109:
	.ascii	"time_code\000"
	.space	2
.LC110:
	.ascii	"ERROR: paseHeader err\012\000"
	.space	1
.LC111:
	.ascii	"ERROR: AVS_PrepareDecode err\012\000"
	.space	2
.LC112:
	.ascii	"ERROR: AVS_StartDecode err\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
