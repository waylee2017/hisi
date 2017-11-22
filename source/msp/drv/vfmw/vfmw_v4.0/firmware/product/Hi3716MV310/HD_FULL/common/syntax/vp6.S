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
	.file	"vp6.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV310
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vp6)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vp6.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.o
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
	.global	VP6_BuildScanOrder
	.type	VP6_BuildScanOrder, %function
VP6_BuildScanOrder:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	mov	r6, r1	@ pbi, pbi
	mov	r5, #1	@ ScanOrderIndex,
	mov	r3, #0	@ tmp199,
	strb	r3, [r0, #960]	@ tmp199, <variable>.ModifiedScanOrder
.L2:
	ldrb	r1, [r0, #1089]	@ zero_extendqisi2	@ tmp229, <variable>.ScanBands
	cmp	r1, r3	@ tmp229, i
	beq	.L31	@,
.L17:
	mov	ip, #0	@ tmp221,
	cmp	ip, ip	@ tmp221,
	mov	r2, #2	@ j,
	add	ip, r0, #1	@ ivtmp.575, pVp6CodecInfo,
	beq	.L4	@,
	ldrb	r1, [ip, #1089]	@ zero_extendqisi2	@ tmp241, <variable>.ScanBands
	add	ip, ip, #1	@ ivtmp.575, ivtmp.575,
	cmp	r1, r3	@ tmp241, i
	addeq	r1, r5, r0	@ tmp242, ScanOrderIndex, pVp6CodecInfo
	addeq	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r2, [r1, #960]	@ j, <variable>.ModifiedScanOrder
	add	r2, r2, #1	@ j, j,
	cmp	r2, #64	@ j,
	bne	.L4	@,
	b	.L29	@
.L22:
	add	r2, ip, #1	@ j, tmp222,
	add	ip, r1, #1	@ ivtmp.575, tmp223,
	cmp	r2, #64	@ j,
	beq	.L29	@,
.L4:
	ldrb	r4, [ip, #1089]	@ zero_extendqisi2	@ tmp201, <variable>.ScanBands
	add	r1, ip, #1	@ tmp223, ivtmp.575,
	add	ip, r2, #1	@ tmp222, j,
	cmp	r4, r3	@ tmp201, i
	addeq	r4, r5, r0	@ tmp203, ScanOrderIndex, pVp6CodecInfo
	addeq	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r2, [r4, #960]	@ j, <variable>.ModifiedScanOrder
	ldrb	r2, [r1, #1089]	@ zero_extendqisi2	@ tmp226, <variable>.ScanBands
	cmp	r2, r3	@ tmp226, i
	bne	.L22	@,
	add	r2, ip, #1	@ j, tmp222,
	add	r7, r5, r0	@ tmp244, ScanOrderIndex, pVp6CodecInfo
	cmp	r2, #64	@ j,
	add	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	strb	ip, [r7, #960]	@ tmp222, <variable>.ModifiedScanOrder
	add	ip, r1, #1	@ ivtmp.575, tmp223,
	bne	.L4	@,
.L29:
	add	r3, r3, #1	@ i, i,
	cmp	r3, #16	@ i,
	bne	.L2	@,
	mov	r7, r0	@ ivtmp.584, pVp6CodecInfo
	mov	r5, #0	@ i.583,
.L5:
	ldrb	ip, [r0, #960]	@ zero_extendqisi2	@ tmp237, <variable>.ModifiedScanOrder
	mov	r2, #1	@ j.582,
	and	r1, r5, r2	@ tmp217, i.583,
	add	r3, r0, r2	@ ivtmp.581, pVp6CodecInfo,
	cmp	ip, #0	@ tmp237,
	movcc	ip, #0	@ MaxOffset,
	cmp	r2, r5	@ j.582, i.583
	bhi	.L28	@,
	cmp	r1, #0	@ tmp217,
	beq	.L6	@,
	ldrb	r1, [r0, #961]	@ zero_extendqisi2	@ tmp238, <variable>.ModifiedScanOrder
	mov	r2, #2	@ j.582,
	add	r3, r3, #1	@ ivtmp.581, ivtmp.581,
	cmp	ip, r1	@ MaxOffset, tmp238
	movcc	ip, r1	@ MaxOffset, tmp238
	cmp	r2, r5	@ j.582, i.583
	bhi	.L28	@,
.L6:
	ldrb	r4, [r3, #960]	@ zero_extendqisi2	@ tmp206, <variable>.ModifiedScanOrder
	add	r2, r2, #2	@ j.582, j.582,
	ldrb	r1, [r3, #961]	@ zero_extendqisi2	@ tmp233, <variable>.ModifiedScanOrder
	add	r3, r3, #2	@ ivtmp.581, ivtmp.581,
	cmp	ip, r4	@ MaxOffset, tmp206
	movcc	ip, r4	@ MaxOffset, tmp206
	cmp	ip, r1	@ MaxOffset, tmp233
	movcc	ip, r1	@ MaxOffset, tmp233
	cmp	r2, r5	@ j.582, i.583
	bls	.L6	@,
.L28:
	uxtb	ip, ip	@ D.35194, MaxOffset
	strb	ip, [r7, #1024]	@ D.35194, <variable>.EobOffsetTable
	ldr	r3, [r6, #12]	@ <variable>.Vp3VersionNo, <variable>.Vp3VersionNo
	add	r5, r5, #1	@ i.583, i.583,
	cmp	r3, #6	@ <variable>.Vp3VersionNo,
	addhi	ip, ip, #1	@ tmp209, D.35194,
	strhib	ip, [r7, #1024]	@ tmp209, <variable>.EobOffsetTable
	cmp	r5, #64	@ i.583,
	add	r7, r7, #1	@ ivtmp.584, ivtmp.584,
	bne	.L5	@,
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L31:
	add	r2, r5, r0	@ tmp239, ScanOrderIndex, pVp6CodecInfo
	mov	r7, #1	@ j,
	add	r5, r5, #1	@ ScanOrderIndex, ScanOrderIndex,
	strb	r7, [r2, #960]	@ j, <variable>.ModifiedScanOrder
	b	.L17	@
	.fnend
	.size	VP6_BuildScanOrder, .-VP6_BuildScanOrder
	.global	__aeabi_idiv
	.global	__aeabi_uidiv
	.align	2
	.global	VP6_BuildModeTree
	.type	VP6_BuildModeTree, %function
VP6_BuildModeTree:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r8, #0	@ ivtmp.688,
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r6, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	sl, r0	@ ivtmp.673, pVp6CodecInfo
	mov	r4, r0	@ ivtmp.882, pVp6CodecInfo
	mov	r5, r8	@ i, ivtmp.688
	mov	r7, #100	@ tmp771,
	b	.L33	@
.L129:
	ldrb	fp, [r6, #404]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, fp	@ prephitmp.754, tmp771, <variable>.probXmitted
	str	r3, [sp, #40]	@ prephitmp.754, Counts
	beq	.L100	@,
	ldrb	r2, [r6, #405]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	ip, r7, r2	@ temp.739, tmp771, <variable>.probXmitted
	add	r3, ip, r3	@ total.773, temp.739, prephitmp.754
	str	ip, [sp, #44]	@ temp.739, Counts
	beq	.L101	@,
.L58:
	ldrb	lr, [r6, #406]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	fp, r7, lr	@ D.35225, tmp771, <variable>.probXmitted
	add	r1, fp, r3	@ total.1009, D.35225, total.773
	str	fp, [sp, #48]	@ D.35225, Counts
	beq	.L102	@,
	ldrb	r0, [r6, #407]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, r0	@ temp.777, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.1010, temp.777, total.1009
	str	r3, [sp, #52]	@ temp.777, Counts
	beq	.L103	@,
.L62:
	ldrb	r2, [r6, #408]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	r9, r7, r2	@ temp.782, tmp771, <variable>.probXmitted
	add	r2, r9, r1	@ total.1011, temp.782, total.1010
	str	r9, [sp, #56]	@ temp.782, Counts
	beq	.L104	@,
	ldrb	lr, [r6, #409]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r1, r7, lr	@ temp.787, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.1012, temp.787, total.1011
	str	r1, [sp, #60]	@ temp.787, Counts
	beq	.L105	@,
.L66:
	ldrb	fp, [r6, #410]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	r0, r7, fp	@ temp.792, tmp771, <variable>.probXmitted
	add	r2, r0, r2	@ total.1013, temp.792, total.1012
	str	r0, [sp, #64]	@ temp.792, Counts
	beq	.L106	@,
	ldrb	r3, [r6, #411]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	r9, r7, r3	@ temp.797, tmp771, <variable>.probXmitted
	add	r2, r9, r2	@ total.1014, temp.797, total.1013
	str	r9, [sp, #68]	@ temp.797, Counts
	beq	.L107	@,
.L70:
	ldrb	lr, [r6, #412]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	ip, r7, lr	@ temp.802, tmp771, <variable>.probXmitted
	add	r2, ip, r2	@, temp.802, total.1014
	str	r2, [sp, #16]	@, %sfp
	str	ip, [sp, #72]	@ temp.802, Counts
	beq	.L108	@,
.L72:
	ldrb	r2, [r6, #413]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, r2	@ prephitmp.805, tmp771, <variable>.probXmitted
	str	r9, [sp, #76]	@ prephitmp.805, Counts
.L73:
	ldrb	ip, [sl, #404]	@ zero_extendqisi2	@ tmp492, <variable>.probXmitted
	add	fp, r6, r5	@ tmp488, pVp6CodecInfo, i
	ldrb	r0, [sl, #414]	@ zero_extendqisi2	@ temp.811, <variable>.probXmitted
	add	lr, r0, ip	@ tmp493, temp.811, tmp492
	add	r1, lr, #1	@, tmp493,
	rsb	r0, r0, r0, asl #8	@,, temp.811, temp.811,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #16]	@, %sfp
	add	r1, r9, r3	@ tmp507, prephitmp.805,
	add	r1, r1, #1	@, tmp507,
	mvn	r9, r0	@ tmp500,
	strb	r9, [fp, #4]	@ tmp500, <variable>.probModeSame
	ldr	r2, [sp, #52]	@, Counts
	ldr	ip, [sp, #40]	@, Counts
	ldr	r3, [sp, #56]	@ Counts, Counts
	str	r2, [sp, #20]	@, %sfp
	ldr	lr, [sp, #20]	@, %sfp
	ldr	fp, [sp, #48]	@ Counts, Counts
	add	r0, lr, r3	@,, Counts
	str	r0, [sp, #36]	@, %sfp
	add	fp, ip, fp	@ temp.822,, Counts
	str	ip, [sp, #24]	@, %sfp
	add	r9, r0, fp	@ temp.826,, temp.822
	rsb	r0, r9, r9, asl #8	@,, temp.826, temp.826,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.826,
	add	r2, r0, #1	@ tmp514,,
	rsb	r0, fp, fp, asl #8	@,, temp.822, temp.822,
	strb	r2, [r4, #44]	@ tmp514, <variable>.probMode
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp525,,
	strb	ip, [r4, #45]	@ tmp525, <variable>.probMode
	ldr	ip, [sp, #60]	@ temp.841, Counts
	ldr	r0, [sp, #72]	@, Counts
	ldr	r3, [sp, #64]	@ Counts, Counts
	ldr	r1, [sp, #76]	@ Counts, Counts
	ldr	r2, [sp, #44]	@ temp.837, Counts
	add	r3, ip, r3	@ temp.845, temp.841, Counts
	ldr	r9, [sp, #68]	@ Counts, Counts
	add	r1, r0, r1	@,, Counts
	str	r1, [sp, #28]	@, %sfp
	add	r1, r3, #1	@, temp.845,
	str	r0, [sp, #16]	@, %sfp
	add	r9, r2, r9	@ temp.839, temp.837, Counts
	ldr	r0, [sp, #28]	@, %sfp
	str	r1, [sp, #32]	@, %sfp
	ldr	lr, [sp, #32]	@, %sfp
	add	r1, r0, r9	@ tmp533,, temp.839
	rsb	r0, r9, r9, asl #8	@,, temp.839, temp.839,
	str	r2, [sp, #12]	@,
	add	r1, r1, lr	@, tmp533,
	ldr	lr, [sp, #28]	@, %sfp
	str	ip, [sp, #4]	@,
	add	lr, lr, #1	@,,
	str	r3, [sp, #8]	@,
	str	lr, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	add	r1, fp, #1	@, temp.822,
	add	r0, r0, #1	@ tmp540,,
	strb	r0, [r4, #46]	@ tmp540, <variable>.probMode
	ldr	r3, [sp, #24]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #36]	@, %sfp
	add	r1, r2, #1	@,,
	add	ip, r0, #1	@ tmp551,,
	strb	ip, [r4, #47]	@ tmp551, <variable>.probMode
	ldr	fp, [sp, #20]	@, %sfp
	rsb	r0, fp, fp, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.839,
	add	r0, r0, #1	@ tmp562,,
	strb	r0, [r4, #48]	@ tmp562, <variable>.probMode
	ldr	r3, [sp, #12]	@,
	rsb	r0, r3, r3, asl #8	@,, temp.837, temp.837,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #8]	@,
	ldr	r9, [sp, #28]	@, %sfp
	add	r1, r9, r2	@,, temp.845
	add	lr, r0, #1	@ tmp573,,
	rsb	r0, r2, r2, asl #8	@,, temp.845, temp.845,
	strb	lr, [r4, #49]	@ tmp573, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #32]	@, %sfp
	add	ip, r0, #1	@ tmp584,,
	strb	ip, [r4, #50]	@ tmp584, <variable>.probMode
	ldr	fp, [sp, #4]	@,
	rsb	r0, fp, fp, asl #8	@,, temp.841, temp.841,
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #28]	@, %sfp
	add	r0, r0, #1	@ tmp594,,
	strb	r0, [r4, #51]	@ tmp594, <variable>.probMode
	ldr	r3, [sp, #16]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #0	@ i,
	add	r9, r0, #1	@ tmp604,,
	strb	r9, [r4, #52]	@ tmp604, <variable>.probMode
	beq	.L74	@,
	ldrb	r2, [r6, #424]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, r2	@ prephitmp.886, tmp771, <variable>.probXmitted
	str	r3, [sp, #40]	@ prephitmp.886, Counts
	beq	.L109	@,
.L76:
	ldrb	r1, [r6, #425]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	fp, r7, r1	@ temp.890, tmp771, <variable>.probXmitted
	add	r3, fp, r3	@ total.1022, temp.890, prephitmp.886
	str	fp, [sp, #44]	@ temp.890, Counts
	beq	.L110	@,
.L78:
	ldrb	r9, [r6, #426]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	r2, r7, r9	@ temp.895, tmp771, <variable>.probXmitted
	add	fp, r2, r3	@ total.1021, temp.895, total.1022
	str	r2, [sp, #48]	@ temp.895, Counts
	beq	.L111	@,
.L80:
	ldrb	r0, [r6, #427]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, r0	@ temp.900, tmp771, <variable>.probXmitted
	add	fp, r3, fp	@ total.1020, temp.900, total.1021
	str	r3, [sp, #52]	@ temp.900, Counts
	beq	.L112	@,
.L82:
	ldrb	r1, [r6, #428]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	lr, r7, r1	@ temp.905, tmp771, <variable>.probXmitted
	add	fp, lr, fp	@ total.1019, temp.905, total.1020
	str	lr, [sp, #56]	@ temp.905, Counts
	beq	.L113	@,
.L84:
	ldrb	r9, [r6, #429]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	r2, r7, r9	@ temp.910, tmp771, <variable>.probXmitted
	add	fp, r2, fp	@ total.1018, temp.910, total.1019
	str	r2, [sp, #60]	@ temp.910, Counts
	beq	.L114	@,
.L86:
	ldrb	ip, [r6, #430]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	r0, r7, ip	@ temp.915, tmp771, <variable>.probXmitted
	add	fp, r0, fp	@ total.1017, temp.915, total.1018
	str	r0, [sp, #64]	@ temp.915, Counts
	beq	.L115	@,
.L88:
	ldrb	r3, [r6, #431]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	r1, r7, r3	@ temp.920, tmp771, <variable>.probXmitted
	add	fp, r1, fp	@ total.753, temp.920, total.1017
	str	r1, [sp, #68]	@ temp.920, Counts
	beq	.L116	@,
.L90:
	ldrb	lr, [r6, #432]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	r9, r7, lr	@ temp.925, tmp771, <variable>.probXmitted
	add	fp, r9, fp	@ total.1016, temp.925, total.753
	str	r9, [sp, #72]	@ temp.925, Counts
	beq	.L117	@,
.L92:
	ldrb	r9, [r6, #433]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, r9	@ prephitmp.927, tmp771, <variable>.probXmitted
	str	r9, [sp, #76]	@ prephitmp.927, Counts
.L93:
	ldrb	lr, [sl, #424]	@ zero_extendqisi2	@ tmp657, <variable>.probXmitted
	ldrb	r0, [sl, #434]	@ zero_extendqisi2	@ temp.933, <variable>.probXmitted
	add	r3, r0, lr	@ tmp658, temp.933, tmp657
	add	r1, r3, #1	@, tmp658,
	rsb	r0, r0, r0, asl #8	@,, temp.933, temp.933,
	bl	__aeabi_idiv	@
	add	r1, r9, fp	@ tmp672, prephitmp.927, total.1016
	add	r1, r1, #1	@, tmp672,
	mvn	r9, r0	@ tmp665,
	strb	r9, [sl, #14]	@ tmp665, <variable>.probModeSame
	ldr	r2, [sp, #52]	@, Counts
	ldr	ip, [sp, #40]	@, Counts
	ldr	r3, [sp, #56]	@ Counts, Counts
	str	r2, [sp, #20]	@, %sfp
	ldr	lr, [sp, #20]	@, %sfp
	ldr	fp, [sp, #48]	@ Counts, Counts
	add	r0, lr, r3	@,, Counts
	str	r0, [sp, #36]	@, %sfp
	add	fp, ip, fp	@ temp.944,, Counts
	str	ip, [sp, #24]	@, %sfp
	add	r9, r0, fp	@ temp.948,, temp.944
	rsb	r0, r9, r9, asl #8	@,, temp.948, temp.948,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.948,
	add	r2, r0, #1	@ tmp679,,
	rsb	r0, fp, fp, asl #8	@,, temp.944, temp.944,
	strb	r2, [r4, #134]	@ tmp679, <variable>.probMode
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp690,,
	strb	ip, [r4, #135]	@ tmp690, <variable>.probMode
	ldr	ip, [sp, #60]	@ temp.963, Counts
	ldr	r0, [sp, #72]	@, Counts
	ldr	r3, [sp, #64]	@ Counts, Counts
	ldr	r1, [sp, #76]	@ Counts, Counts
	ldr	r2, [sp, #44]	@ temp.959, Counts
	add	r3, ip, r3	@ temp.967, temp.963, Counts
	ldr	r9, [sp, #68]	@ Counts, Counts
	add	r1, r0, r1	@,, Counts
	str	r1, [sp, #28]	@, %sfp
	add	r1, r3, #1	@, temp.967,
	str	r0, [sp, #16]	@, %sfp
	add	r9, r2, r9	@ temp.961, temp.959, Counts
	ldr	r0, [sp, #28]	@, %sfp
	str	r1, [sp, #32]	@, %sfp
	ldr	lr, [sp, #32]	@, %sfp
	add	r1, r0, r9	@ tmp698,, temp.961
	rsb	r0, r9, r9, asl #8	@,, temp.961, temp.961,
	str	r2, [sp, #12]	@,
	add	r1, r1, lr	@, tmp698,
	ldr	lr, [sp, #28]	@, %sfp
	str	ip, [sp, #4]	@,
	add	lr, lr, #1	@,,
	str	r3, [sp, #8]	@,
	str	lr, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	add	r1, fp, #1	@, temp.944,
	add	r3, r0, #1	@ tmp705,,
	strb	r3, [r4, #136]	@ tmp705, <variable>.probMode
	ldr	fp, [sp, #24]	@, %sfp
	rsb	r0, fp, fp, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	lr, [sp, #36]	@, %sfp
	add	r1, lr, #1	@,,
	add	r2, r0, #1	@ tmp716,,
	strb	r2, [r4, #137]	@ tmp716, <variable>.probMode
	ldr	ip, [sp, #20]	@, %sfp
	rsb	r0, ip, ip, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, temp.961,
	add	r0, r0, #1	@ tmp727,,
	strb	r0, [r4, #138]	@ tmp727, <variable>.probMode
	ldr	r3, [sp, #12]	@,
	rsb	r0, r3, r3, asl #8	@,, temp.959, temp.959,
	bl	__aeabi_uidiv	@
	ldr	r9, [sp, #8]	@,
	ldr	fp, [sp, #28]	@, %sfp
	add	r1, fp, r9	@,, temp.967
	add	lr, r0, #1	@ tmp738,,
	rsb	r0, r9, r9, asl #8	@,, temp.967, temp.967,
	strb	lr, [r4, #139]	@ tmp738, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #32]	@, %sfp
	add	r2, r0, #1	@ tmp749,,
	strb	r2, [r4, #140]	@ tmp749, <variable>.probMode
	ldr	ip, [sp, #4]	@,
	rsb	r0, ip, ip, asl #8	@,, temp.963, temp.963,
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #28]	@, %sfp
	add	r0, r0, #1	@ tmp759,,
	strb	r0, [r4, #141]	@ tmp759, <variable>.probMode
	ldr	r3, [sp, #16]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #0	@ i,
	add	fp, r0, #1	@ tmp769,,
	strb	fp, [r4, #142]	@ tmp769, <variable>.probMode
	beq	.L118	@,
	ldrb	fp, [r6, #444]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #1	@ i,
	mul	r3, r7, fp	@ prephitmp.719, tmp771, <variable>.probXmitted
	str	r3, [sp, #40]	@ prephitmp.719, Counts
	beq	.L119	@,
.L37:
	ldrb	r9, [r6, #445]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #2	@ i,
	mul	r2, r7, r9	@ temp.725, tmp771, <variable>.probXmitted
	add	r3, r2, r3	@ total.804, temp.725, prephitmp.719
	str	r2, [sp, #44]	@ temp.725, Counts
	beq	.L120	@,
.L39:
	ldrb	fp, [r6, #446]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #3	@ i,
	mul	ip, r7, fp	@ temp.731, tmp771, <variable>.probXmitted
	add	fp, ip, r3	@ total.714, temp.731, total.804
	str	ip, [sp, #48]	@ temp.731, Counts
	beq	.L121	@,
.L41:
	ldrb	r0, [r6, #447]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #4	@ i,
	mul	r3, r7, r0	@ temp.737, tmp771, <variable>.probXmitted
	add	fp, fp, r3	@ total.1004, total.714, temp.737
	str	r3, [sp, #52]	@ temp.737, Counts
	beq	.L122	@,
.L43:
	ldrb	r1, [r6, #448]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #5	@ i,
	mul	r9, r7, r1	@ temp.745, tmp771, <variable>.probXmitted
	add	fp, r9, fp	@ total.1005, temp.745, total.1004
	str	r9, [sp, #56]	@ temp.745, Counts
	beq	.L123	@,
.L45:
	ldrb	r2, [r6, #449]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #6	@ i,
	mul	ip, r7, r2	@ temp.751, tmp771, <variable>.probXmitted
	add	fp, ip, fp	@ total.1006, temp.751, total.1005
	str	ip, [sp, #60]	@ temp.751, Counts
	beq	.L124	@,
.L47:
	ldrb	lr, [r6, #450]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #7	@ i,
	mul	r0, r7, lr	@ temp.758, tmp771, <variable>.probXmitted
	add	fp, r0, fp	@ total.1007, temp.758, total.1006
	str	r0, [sp, #64]	@ temp.758, Counts
	beq	.L125	@,
.L49:
	ldrb	r3, [r6, #451]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #8	@ i,
	mul	r1, r7, r3	@ temp.765, tmp771, <variable>.probXmitted
	add	fp, r1, fp	@ total.1008, temp.765, total.1007
	str	r1, [sp, #68]	@ temp.765, Counts
	beq	.L126	@,
.L51:
	ldrb	r9, [r6, #452]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	cmp	r5, #9	@ i,
	mul	r2, r7, r9	@ temp.771, tmp771, <variable>.probXmitted
	add	fp, r2, fp	@ total.715, temp.771, total.1008
	str	r2, [sp, #72]	@ temp.771, Counts
	beq	.L127	@,
.L53:
	ldrb	r9, [r6, #453]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	mul	r9, r7, r9	@ prephitmp.653, tmp771, <variable>.probXmitted
	str	r9, [sp, #76]	@ prephitmp.653, Counts
.L34:
	ldrb	lr, [sl, #444]	@ zero_extendqisi2	@ tmp282, <variable>.probXmitted
	add	r5, r5, #1	@ i, i,
	ldrb	r0, [sl, #454]	@ zero_extendqisi2	@ D.35229, <variable>.probXmitted
	add	r8, r8, #4	@ ivtmp.688, ivtmp.688,
	add	r3, r0, lr	@ tmp283, D.35229, tmp282
	add	r1, r3, #1	@, tmp283,
	rsb	r0, r0, r0, asl #8	@,, D.35229, D.35229,
	bl	__aeabi_idiv	@
	add	r1, r9, fp	@ tmp297, prephitmp.653, total.715
	add	r1, r1, #1	@, tmp297,
	mvn	r9, r0	@ tmp290,
	strb	r9, [sl, #24]	@ tmp290, <variable>.probModeSame
	ldr	r2, [sp, #52]	@, Counts
	add	sl, sl, #1	@ ivtmp.673, ivtmp.673,
	ldr	ip, [sp, #40]	@, Counts
	ldr	r3, [sp, #56]	@ Counts, Counts
	str	r2, [sp, #20]	@, %sfp
	ldr	lr, [sp, #20]	@, %sfp
	ldr	fp, [sp, #48]	@ Counts, Counts
	add	r0, lr, r3	@,, Counts
	str	r0, [sp, #36]	@, %sfp
	add	fp, ip, fp	@ D.35240,, Counts
	str	ip, [sp, #24]	@, %sfp
	add	r9, r0, fp	@ D.35244,, D.35240
	rsb	r0, r9, r9, asl #8	@,, D.35244, D.35244,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, D.35244,
	add	r2, r0, #1	@ tmp304,,
	rsb	r0, fp, fp, asl #8	@,, D.35240, D.35240,
	strb	r2, [r4, #224]	@ tmp304, <variable>.probMode
	bl	__aeabi_uidiv	@
	add	ip, r0, #1	@ tmp315,,
	strb	ip, [r4, #225]	@ tmp315, <variable>.probMode
	ldr	ip, [sp, #60]	@ D.35259, Counts
	ldr	r0, [sp, #72]	@, Counts
	ldr	r3, [sp, #64]	@ Counts, Counts
	ldr	r1, [sp, #76]	@ Counts, Counts
	ldr	r2, [sp, #44]	@ D.35255, Counts
	add	r3, ip, r3	@ D.35260, D.35259, Counts
	ldr	r9, [sp, #68]	@ Counts, Counts
	add	r1, r0, r1	@,, Counts
	str	r1, [sp, #28]	@, %sfp
	add	r1, r3, #1	@, D.35260,
	str	r0, [sp, #16]	@, %sfp
	add	r9, r2, r9	@ D.35257, D.35255, Counts
	ldr	r0, [sp, #28]	@, %sfp
	str	r1, [sp, #32]	@, %sfp
	ldr	lr, [sp, #32]	@, %sfp
	add	r1, r0, r9	@ tmp323,, D.35257
	rsb	r0, r9, r9, asl #8	@,, D.35257, D.35257,
	str	r3, [sp, #8]	@,
	add	r1, r1, lr	@, tmp323,
	ldr	lr, [sp, #28]	@, %sfp
	str	r2, [sp, #12]	@,
	add	lr, lr, #1	@,,
	str	ip, [sp, #4]	@,
	str	lr, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	add	r1, fp, #1	@, D.35240,
	add	r2, r0, #1	@ tmp330,,
	strb	r2, [r4, #226]	@ tmp330, <variable>.probMode
	ldr	ip, [sp, #24]	@, %sfp
	rsb	r0, ip, ip, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #36]	@, %sfp
	add	r1, r3, #1	@,,
	add	fp, r0, #1	@ tmp341,,
	strb	fp, [r4, #227]	@ tmp341, <variable>.probMode
	ldr	fp, [sp, #20]	@, %sfp
	rsb	r0, fp, fp, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	add	r1, r9, #1	@, D.35257,
	add	r0, r0, #1	@ tmp352,,
	strb	r0, [r4, #228]	@ tmp352, <variable>.probMode
	ldr	r2, [sp, #12]	@,
	rsb	r0, r2, r2, asl #8	@,, D.35255, D.35255,
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #8]	@,
	ldr	ip, [sp, #28]	@, %sfp
	add	r1, ip, r3	@,, D.35260
	add	lr, r0, #1	@ tmp363,,
	rsb	r0, r3, r3, asl #8	@,, D.35260, D.35260,
	strb	lr, [r4, #229]	@ tmp363, <variable>.probMode
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #32]	@, %sfp
	add	r0, r0, #1	@ tmp374,,
	strb	r0, [r4, #230]	@ tmp374, <variable>.probMode
	ldr	r2, [sp, #4]	@,
	rsb	r0, r2, r2, asl #8	@,, D.35259, D.35259,
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #28]	@, %sfp
	add	ip, r0, #1	@ tmp384,,
	strb	ip, [r4, #231]	@ tmp384, <variable>.probMode
	ldr	r3, [sp, #16]	@, %sfp
	rsb	r0, r3, r3, asl #8	@,,,,
	bl	__aeabi_uidiv	@
	cmp	r5, #10	@ i,
	add	r2, r0, #1	@ tmp394,,
	strb	r2, [r4, #232]	@ tmp394, <variable>.probMode
	add	r4, r4, #9	@ ivtmp.882, ivtmp.882,
	beq	.L128	@,
.L33:
	cmp	r5, #0	@ i,
	bne	.L129	@,
	add	lr, sp, #40	@,,
	cmp	r5, #2	@ i,
	str	r5, [lr, r8]	@ i, Counts
	ldrb	r2, [r6, #405]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	r3, [sp, #40]	@ prephitmp.754, Counts
	mul	ip, r7, r2	@ temp.739, tmp771, <variable>.probXmitted
	add	r3, ip, r3	@ total.773, temp.739, prephitmp.754
	str	ip, [sp, #44]	@ temp.739, Counts
	bne	.L58	@,
.L101:
	add	r9, sp, #40	@,,
	mov	r2, #0	@,
	cmp	r5, #4	@ i,
	str	r2, [r9, r8]	@, Counts
	ldrb	r0, [r6, #407]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	ip, [sp, #48]	@ Counts, Counts
	add	r1, r3, ip	@ total.1009, total.773, Counts
	mul	r3, r7, r0	@ temp.777, tmp771, <variable>.probXmitted
	add	r1, r3, r1	@ total.1010, temp.777, total.1009
	str	r3, [sp, #52]	@ temp.777, Counts
	bne	.L62	@,
.L103:
	add	fp, sp, #40	@,,
	mov	r0, #0	@,
	cmp	r5, #6	@ i,
	str	r0, [fp, r8]	@, Counts
	ldrb	lr, [r6, #409]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	r3, [sp, #56]	@ Counts, Counts
	add	r2, r1, r3	@ total.1011, total.1010, Counts
	mul	r1, r7, lr	@ temp.787, tmp771, <variable>.probXmitted
	add	r2, r1, r2	@ total.1012, temp.787, total.1011
	str	r1, [sp, #60]	@ temp.787, Counts
	bne	.L66	@,
.L105:
	add	ip, sp, #40	@,,
	mov	lr, #0	@,
	cmp	r5, #8	@ i,
	str	lr, [ip, r8]	@, Counts
	ldrb	r3, [r6, #411]	@ zero_extendqisi2	@ <variable>.probXmitted, <variable>.probXmitted
	ldr	r1, [sp, #64]	@ Counts, Counts
	mul	r9, r7, r3	@ temp.797, tmp771, <variable>.probXmitted
	add	r2, r2, r1	@ total.1013, total.1012, Counts
	add	r2, r9, r2	@ total.1014, temp.797, total.1013
	str	r9, [sp, #68]	@ temp.797, Counts
	bne	.L70	@,
.L107:
	add	r0, sp, #40	@,,
	mov	fp, #0	@,
	str	fp, [r0, r8]	@, Counts
	ldr	r3, [sp, #72]	@ Counts, Counts
	add	r9, r2, r3	@, total.1014, Counts
	str	r9, [sp, #16]	@, %sfp
	b	.L72	@
.L127:
	add	r0, sp, #40	@,,
	mov	r1, #0	@,
	str	r1, [r0, r8]	@, Counts
	ldr	r9, [sp, #76]	@ prephitmp.653, Counts
	b	.L34	@
.L126:
	add	r0, sp, #40	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [sp, #72]	@ Counts, Counts
	add	fp, fp, r1	@ total.715, total.1008, Counts
	b	.L53	@
.L125:
	add	lr, sp, #40	@,,
	mov	ip, #0	@,
	str	ip, [lr, r8]	@, Counts
	ldr	r0, [sp, #68]	@ Counts, Counts
	add	fp, fp, r0	@ total.1008, total.1007, Counts
	b	.L51	@
.L124:
	add	r2, sp, #40	@,,
	mov	r9, #0	@,
	str	r9, [r2, r8]	@, Counts
	ldr	ip, [sp, #64]	@ Counts, Counts
	add	fp, fp, ip	@ total.1007, total.1006, Counts
	b	.L49	@
.L123:
	add	r1, sp, #40	@,,
	mov	r3, #0	@,
	str	r3, [r1, r8]	@, Counts
	ldr	r9, [sp, #60]	@ Counts, Counts
	add	fp, fp, r9	@ total.1006, total.1005, Counts
	b	.L47	@
.L122:
	add	lr, sp, #40	@,,
	mov	r0, #0	@,
	str	r0, [lr, r8]	@, Counts
	ldr	r3, [sp, #56]	@ Counts, Counts
	add	fp, fp, r3	@ total.1005, total.1004, Counts
	b	.L45	@
.L121:
	add	ip, sp, #40	@,,
	mov	r2, #0	@,
	str	r2, [ip, r8]	@, Counts
	ldr	lr, [sp, #52]	@ Counts, Counts
	add	fp, fp, lr	@ total.1004, total.714, Counts
	b	.L43	@
.L120:
	add	r9, sp, #40	@,,
	mov	r1, #0	@,
	str	r1, [r9, r8]	@, Counts
	ldr	r2, [sp, #48]	@ Counts, Counts
	add	fp, r3, r2	@ total.714, total.804, Counts
	b	.L41	@
.L119:
	add	r0, sp, #40	@,,
	mov	lr, #0	@,
	str	lr, [r0, r8]	@, Counts
	ldr	r1, [sp, #44]	@ Counts, Counts
	add	r3, r3, r1	@ total.804, prephitmp.719, Counts
	b	.L39	@
.L118:
	add	ip, sp, #40	@,,
	str	r5, [ip, r8]	@ i, Counts
	ldr	r3, [sp, #40]	@ prephitmp.719, Counts
	b	.L37	@
.L117:
	add	r2, sp, #40	@,,
	mov	ip, #0	@,
	str	ip, [r2, r8]	@, Counts
	ldr	r9, [sp, #76]	@ prephitmp.927, Counts
	b	.L93	@
.L116:
	add	r0, sp, #40	@,,
	mov	r3, #0	@,
	str	r3, [r0, r8]	@, Counts
	ldr	r1, [sp, #72]	@ Counts, Counts
	add	fp, fp, r1	@ total.1016, total.753, Counts
	b	.L92	@
.L115:
	add	ip, sp, #40	@,,
	mov	r2, #0	@,
	str	r2, [ip, r8]	@, Counts
	ldr	r0, [sp, #68]	@ Counts, Counts
	add	fp, fp, r0	@ total.753, total.1017, Counts
	b	.L90	@
.L114:
	add	r9, sp, #40	@,,
	mov	lr, #0	@,
	str	lr, [r9, r8]	@, Counts
	ldr	r2, [sp, #64]	@ Counts, Counts
	add	fp, fp, r2	@ total.1017, total.1018, Counts
	b	.L88	@
.L113:
	add	r1, sp, #40	@,,
	mov	r3, #0	@,
	str	r3, [r1, r8]	@, Counts
	ldr	lr, [sp, #60]	@ Counts, Counts
	add	fp, fp, lr	@ total.1018, total.1019, Counts
	b	.L86	@
.L112:
	add	ip, sp, #40	@,,
	mov	r0, #0	@,
	str	r0, [ip, r8]	@, Counts
	ldr	r3, [sp, #56]	@ Counts, Counts
	add	fp, fp, r3	@ total.1019, total.1020, Counts
	b	.L84	@
.L111:
	add	r2, sp, #40	@,,
	mov	r9, #0	@,
	str	r9, [r2, r8]	@, Counts
	ldr	ip, [sp, #52]	@ Counts, Counts
	add	fp, fp, ip	@ total.1020, total.1021, Counts
	b	.L82	@
.L110:
	add	lr, sp, #40	@,,
	mov	r1, #0	@,
	str	r1, [lr, r8]	@, Counts
	ldr	fp, [sp, #48]	@ Counts, Counts
	add	fp, r3, fp	@ total.1021, total.1022, Counts
	b	.L80	@
.L109:
	add	r0, sp, #40	@,,
	mov	ip, #0	@,
	str	ip, [r0, r8]	@, Counts
	ldr	lr, [sp, #44]	@ Counts, Counts
	add	r3, r3, lr	@ total.1022, prephitmp.886, Counts
	b	.L78	@
.L74:
	add	r9, sp, #40	@,,
	str	r5, [r9, r8]	@ i, Counts
	ldr	r3, [sp, #40]	@ prephitmp.886, Counts
	b	.L76	@
.L108:
	add	ip, sp, #40	@,,
	mov	r1, #0	@,
	str	r1, [ip, r8]	@, Counts
	ldr	r9, [sp, #76]	@ prephitmp.805, Counts
	b	.L73	@
.L106:
	add	fp, sp, #40	@,,
	mov	r1, #0	@,
	str	r1, [fp, r8]	@, Counts
	ldr	r0, [sp, #68]	@ Counts, Counts
	add	r2, r2, r0	@ total.1014, total.1013, Counts
	b	.L70	@
.L104:
	add	r9, sp, #40	@,,
	mov	r3, #0	@,
	str	r3, [r9, r8]	@, Counts
	ldr	ip, [sp, #60]	@ Counts, Counts
	add	r2, r2, ip	@ total.1012, total.1011, Counts
	b	.L66	@
.L102:
	add	lr, sp, #40	@,,
	mov	ip, #0	@,
	str	ip, [lr, r8]	@, Counts
	ldr	fp, [sp, #52]	@ Counts, Counts
	add	r1, r1, fp	@ total.1010, total.1009, Counts
	b	.L62	@
.L100:
	add	r0, sp, #40	@,,
	mov	r1, #0	@,
	str	r1, [r0, r8]	@, Counts
	ldr	r9, [sp, #44]	@ Counts, Counts
	add	r3, r3, r9	@ total.773, prephitmp.754, Counts
	b	.L58	@
.L128:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	VP6_BuildModeTree, .-VP6_BuildModeTree
	.align	2
	.global	VP6_ConfigureContexts
	.type	VP6_ConfigureContexts, %function
VP6_ConfigureContexts:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp196,
	movt	r3, #:upper16:.LANCHOR0	@ tmp196,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r9, [r3, #24]	@, <variable>.M
	ldr	r7, [r3, #48]	@, <variable>.M
	.pad #184
	sub	sp, sp, #184	@,,
	ldr	sl, [r3, #72]	@, <variable>.M
	ldr	r8, [r3, #96]	@, <variable>.M
	str	r9, [sp, #52]	@, %sfp
	str	r7, [sp, #60]	@, %sfp
	ldrb	r4, [r0, #516]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r5, [r0, #515]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldmib	r3, {r9, fp}	@ phole ldm
	str	sl, [sp, #68]	@, %sfp
	str	r8, [sp, #72]	@, %sfp
	ldr	sl, [r3, #28]	@, <variable>.C
	ldr	r7, [sp, #52]	@, %sfp
	ldr	r8, [sp, #60]	@, %sfp
	ldrb	ip, [r0, #517]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r1, [r0, #518]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	fp, [sp, #124]	@, %sfp
	str	r9, [sp, #44]	@, %sfp
	ldr	fp, [sp, #68]	@, %sfp
	mul	r9, r7, r5	@ tmp207,, <variable>.DcProbs
	str	sl, [sp, #56]	@, %sfp
	ldr	r7, [sp, #72]	@, %sfp
	mul	sl, r8, r4	@ tmp217,, <variable>.DcProbs
	ldrb	r6, [r0, #514]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldr	r2, [r3, #0]	@, <variable>.M
	add	r9, r9, #128	@ tmp209, tmp207,
	mul	r8, fp, ip	@ tmp227,, <variable>.DcProbs
	mul	fp, r7, r1	@ tmp237,, <variable>.DcProbs
	add	r7, sl, #128	@, tmp217,
	ldr	sl, [sp, #124]	@, %sfp
	add	r8, r8, #128	@ tmp229, tmp227,
	str	r2, [sp, #48]	@, %sfp
	mul	r2, r2, r6	@ tmp197,, <variable>.DcProbs
	str	r7, [sp, #76]	@, %sfp
	mul	r7, sl, r6	@ tmp259,, <variable>.DcProbs
	add	sl, fp, #128	@, tmp237,
	ldr	fp, [r3, #52]	@, <variable>.C
	add	r2, r2, #128	@ tmp199, tmp197,
	str	sl, [sp, #96]	@, %sfp
	ldr	sl, [r3, #76]	@, <variable>.C
	str	fp, [sp, #64]	@, %sfp
	ldr	fp, [sp, #44]	@, %sfp
	str	sl, [sp, #84]	@, %sfp
	add	sl, fp, r2, asr #8	@,,, tmp199,
	add	r2, r7, #128	@, tmp259,
	str	sl, [sp, #80]	@, %sfp
	ldr	r7, [r3, #100]	@, <variable>.C
	ldr	fp, [r3, #12]	@, <variable>.C
	ldr	sl, [sp, #56]	@, %sfp
	str	r7, [sp, #88]	@, %sfp
	ldr	r7, [sp, #76]	@, %sfp
	str	r2, [sp, #100]	@, %sfp
	add	r2, sl, r9, asr #8	@,,, tmp209,
	str	fp, [sp, #128]	@, %sfp
	ldrb	sl, [r0, #520]	@ zero_extendqisi2	@, <variable>.DcProbs
	ldr	fp, [sp, #64]	@, %sfp
	str	r2, [sp, #92]	@, %sfp
	add	r9, fp, r7, asr #8	@,,,,
	ldrb	fp, [r0, #521]	@ zero_extendqisi2	@, <variable>.DcProbs
	str	r9, [sp, #104]	@, %sfp
	ldr	r9, [sp, #96]	@, %sfp
	ldr	r7, [sp, #84]	@, %sfp
	str	sl, [sp, #108]	@, %sfp
	ldr	sl, [sp, #88]	@, %sfp
	add	r8, r7, r8, asr #8	@, Temp.1311,, tmp229,
	str	fp, [sp, #112]	@, %sfp
	cmp	r8, #255	@ Temp.1311,
	movge	r8, #255	@ Temp.1312,
	add	fp, sl, r9, asr #8	@, Temp.1322,,,
	ldrb	r7, [r0, #522]	@ zero_extendqisi2	@, <variable>.DcProbs
	ldr	sl, [sp, #100]	@, %sfp
	cmp	fp, #255	@ Temp.1322,
	movge	fp, #255	@ Temp.1323,
	ldr	r9, [sp, #128]	@, %sfp
	cmp	r8, #1	@ Temp.1312,
	movlt	r8, #1	@ tmp233,
	str	r7, [sp, #116]	@, %sfp
	cmp	fp, #1	@ Temp.1323,
	movlt	fp, #1	@ tmp243,
	add	r7, r9, sl, asr #8	@, Temp.1339,,,
	ldr	r9, [sp, #80]	@, %sfp
	ldrb	sl, [r0, #523]	@ zero_extendqisi2	@, <variable>.DcProbs
	cmp	r7, #255	@ Temp.1339,
	movge	r7, #255	@ Temp.1339,
	cmp	r9, #255	@,
	movge	r9, #255	@,
	str	r9, [sp, #76]	@, %sfp
	ldr	r9, [sp, #92]	@ Temp.1290, %sfp
	str	r7, [sp, #92]	@ Temp.1339, %sfp
	ldr	r7, [sp, #76]	@, %sfp
	cmp	r9, #255	@ Temp.1290,
	movge	r9, #255	@ Temp.1290,
	str	sl, [sp, #120]	@, %sfp
	cmp	r9, #1	@ Temp.1290,
	movlt	r9, #1	@ tmp213,
	ldrb	sl, [r0, #524]	@ zero_extendqisi2	@, <variable>.DcProbs
	cmp	r7, #1	@,
	movlt	r7, #1	@,
	str	r7, [sp, #76]	@, %sfp
	ldr	r7, [sp, #92]	@, %sfp
	ldrb	r2, [r0, #519]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	cmp	r7, #1	@,
	movlt	r7, #1	@,
	str	sl, [sp, #80]	@, %sfp
	ldr	sl, [sp, #104]	@ Temp.1301, %sfp
	str	r7, [sp, #92]	@, %sfp
	ldr	r7, [sp, #76]	@, %sfp
	cmp	sl, #255	@ Temp.1301,
	movge	sl, #255	@ Temp.1301,
	strb	r9, [r0, #1153]	@ tmp213, <variable>.DcNodeContexts
	cmp	sl, #1	@ Temp.1301,
	movlt	sl, #1	@ tmp223,
	ldr	r9, [sp, #112]	@, %sfp
	strb	r8, [r0, #1155]	@ tmp233, <variable>.DcNodeContexts
	strb	fp, [r0, #1156]	@, <variable>.DcNodeContexts
	ldr	r8, [sp, #116]	@, %sfp
	ldr	fp, [sp, #108]	@, %sfp
	strb	r7, [r0, #1152]	@, <variable>.DcNodeContexts
	ldr	r7, [sp, #80]	@, %sfp
	strb	sl, [r0, #1154]	@ tmp223, <variable>.DcNodeContexts
	strb	fp, [r0, #1158]	@, <variable>.DcNodeContexts
	ldr	sl, [sp, #120]	@, %sfp
	ldr	fp, [sp, #92]	@, %sfp
	strb	r9, [r0, #1159]	@, <variable>.DcNodeContexts
	strb	r8, [r0, #1160]	@, <variable>.DcNodeContexts
	ldr	r9, [r3, #32]	@, <variable>.M
	ldr	r8, [r3, #56]	@, <variable>.M
	strb	r7, [r0, #1162]	@, <variable>.DcNodeContexts
	ldr	r7, [r3, #104]	@, <variable>.M
	strb	sl, [r0, #1161]	@, <variable>.DcNodeContexts
	strb	fp, [r0, #1163]	@, <variable>.DcNodeContexts
	ldr	sl, [r3, #80]	@, <variable>.M
	ldr	fp, [r3, #40]	@, <variable>.M
	str	r9, [sp, #76]	@, %sfp
	str	r8, [sp, #136]	@, %sfp
	ldr	r9, [r3, #64]	@, <variable>.M
	ldr	r8, [r3, #88]	@, <variable>.M
	str	r7, [sp, #152]	@, %sfp
	ldr	r7, [r3, #16]	@ <variable>.M, <variable>.M
	strb	r2, [r0, #1157]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	str	sl, [sp, #144]	@, %sfp
	str	fp, [sp, #92]	@, %sfp
	str	r9, [sp, #96]	@, %sfp
	str	r8, [sp, #100]	@, %sfp
	ldr	sl, [r3, #112]	@, <variable>.M
	mul	r6, r7, r6	@ tmp321, <variable>.M, <variable>.DcProbs
	ldr	fp, [r3, #116]	@, <variable>.C
	ldr	r9, [sp, #92]	@, %sfp
	ldr	r8, [r3, #36]	@, <variable>.C
	str	sl, [sp, #104]	@, %sfp
	ldr	sl, [sp, #96]	@, %sfp
	str	fp, [sp, #176]	@, %sfp
	mul	fp, r9, r5	@ tmp331,, <variable>.DcProbs
	add	r9, r6, #128	@, tmp321,
	ldr	r6, [sp, #100]	@, %sfp
	str	r8, [sp, #132]	@, %sfp
	mul	r8, sl, r4	@ tmp341,, <variable>.DcProbs
	str	r9, [sp, #180]	@, %sfp
	mul	r9, r6, ip	@ tmp351,, <variable>.DcProbs
	ldr	r6, [sp, #104]	@, %sfp
	add	sl, fp, #128	@, tmp331,
	add	r8, r8, #128	@, tmp341,
	ldr	fp, [sp, #76]	@, %sfp
	str	r8, [sp, #28]	@, %sfp
	ldr	r8, [sp, #136]	@, %sfp
	str	sl, [sp, #36]	@, %sfp
	mul	sl, r6, r1	@ tmp361,, <variable>.DcProbs
	add	r6, r9, #128	@, tmp351,
	ldr	r9, [sp, #144]	@, %sfp
	mul	r5, fp, r5	@ tmp269,, <variable>.DcProbs
	str	r6, [sp, #20]	@, %sfp
	ldr	fp, [sp, #152]	@, %sfp
	add	sl, sl, #128	@, tmp361,
	mul	r6, r8, r4	@ tmp279,, <variable>.DcProbs
	str	sl, [sp, #12]	@, %sfp
	mul	r8, r9, ip	@ tmp289,, <variable>.DcProbs
	ldr	sl, [sp, #132]	@, %sfp
	mul	r9, fp, r1	@ tmp299,, <variable>.DcProbs
	ldr	fp, [r3, #60]	@, <variable>.C
	add	r4, r6, #128	@ tmp281, tmp279,
	add	r5, r5, #128	@ tmp271, tmp269,
	ldr	r6, [r3, #84]	@, <variable>.C
	add	ip, r8, #128	@ tmp291, tmp289,
	add	r5, sl, r5, asr #8	@,,, tmp271,
	ldr	r8, [r3, #108]	@, <variable>.C
	ldr	sl, [r3, #20]	@, <variable>.C
	add	r4, fp, r4, asr #8	@, Temp.1361,, tmp281,
	str	fp, [sp, #140]	@, %sfp
	add	r1, r9, #128	@ tmp301, tmp299,
	ldr	fp, [r3, #44]	@, <variable>.C
	add	ip, r6, ip, asr #8	@, Temp.1372,, tmp291,
	str	r5, [sp, #4]	@, %sfp
	add	r1, r8, r1, asr #8	@, Temp.1383,, tmp301,
	ldr	r5, [r3, #68]	@, <variable>.C
	cmp	r4, #255	@ Temp.1361,
	movge	r4, #255	@ Temp.1362,
	ldr	r3, [r3, #92]	@, <variable>.C
	cmp	r4, #1	@ Temp.1362,
	movlt	r4, #1	@ tmp285,
	str	r6, [sp, #148]	@, %sfp
	cmp	ip, #255	@ Temp.1372,
	movge	ip, #255	@ Temp.1373,
	str	r8, [sp, #156]	@, %sfp
	cmp	r1, #255	@ Temp.1383,
	movge	r1, #255	@ Temp.1384,
	str	sl, [sp, #160]	@, %sfp
	cmp	ip, #1	@ Temp.1373,
	movlt	ip, #1	@ tmp295,
	str	fp, [sp, #164]	@, %sfp
	cmp	r1, #1	@ Temp.1384,
	movlt	r1, #1	@ tmp305,
	str	r5, [sp, #168]	@, %sfp
	str	r3, [sp, #172]	@, %sfp
	ldr	r9, [sp, #180]	@, %sfp
	ldr	r8, [sp, #36]	@, %sfp
	strb	r4, [r0, #1165]	@ tmp285, <variable>.DcNodeContexts
	add	r6, sl, r9, asr #8	@, Temp.1400,,,
	ldr	r9, [sp, #28]	@, %sfp
	ldr	sl, [sp, #20]	@, %sfp
	add	fp, fp, r8, asr #8	@, Temp.1411,,,
	cmp	r6, #255	@ Temp.1400,
	movge	r6, #255	@ Temp.1401,
	cmp	fp, #255	@ Temp.1411,
	movge	fp, #255	@ Temp.1412,
	add	r8, r5, r9, asr #8	@, Temp.1422,,,
	ldr	r5, [sp, #12]	@, %sfp
	add	r9, r3, sl, asr #8	@, Temp.1433,,,
	ldr	r3, [sp, #176]	@, %sfp
	cmp	r6, #1	@ Temp.1401,
	movlt	r6, #1	@ tmp327,
	strb	r6, [r0, #1174]	@ tmp327, <variable>.DcNodeContexts
	add	sl, r3, r5, asr #8	@, Temp.1444,,,
	ldr	r3, [sp, #4]	@ Temp.1351, %sfp
	ldr	r6, [sp, #108]	@, %sfp
	cmp	sl, #255	@ Temp.1444,
	movge	sl, #255	@ Temp.1445,
	cmp	r3, #255	@ Temp.1351,
	movge	r3, #255	@ Temp.1351,
	cmp	fp, #1	@ Temp.1412,
	movlt	fp, #1	@ tmp337,
	cmp	r3, #1	@ Temp.1351,
	movlt	r3, #1	@ tmp275,
	cmp	sl, #1	@ Temp.1445,
	movlt	sl, #1	@ tmp367,
	ldr	r5, [sp, #112]	@, %sfp
	cmp	r8, #255	@ Temp.1422,
	movge	r8, #255	@ Temp.1423,
	ldr	r4, [sp, #116]	@, %sfp
	cmp	r9, #255	@ Temp.1433,
	movge	r9, #255	@ Temp.1434,
	strb	r3, [r0, #1164]	@ tmp275, <variable>.DcNodeContexts
	cmp	r8, #1	@ Temp.1423,
	movlt	r8, #1	@ tmp347,
	ldr	r3, [sp, #80]	@, %sfp
	cmp	r9, #1	@ Temp.1434,
	movlt	r9, #1	@ tmp357,
	strb	fp, [r0, #1175]	@, <variable>.DcNodeContexts
	strb	sl, [r0, #1178]	@ tmp367, <variable>.DcNodeContexts
	ldr	fp, [sp, #120]	@, %sfp
	ldrb	sl, [r0, #530]	@ zero_extendqisi2	@, <variable>.DcProbs
	strb	r6, [r0, #1169]	@, <variable>.DcNodeContexts
	ldrb	r6, [r0, #525]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	strb	ip, [r0, #1166]	@ tmp295, <variable>.DcNodeContexts
	strb	r1, [r0, #1167]	@ tmp305, <variable>.DcNodeContexts
	strb	r8, [r0, #1176]	@ tmp347, <variable>.DcNodeContexts
	strb	r9, [r0, #1177]	@ tmp357, <variable>.DcNodeContexts
	strb	r2, [r0, #1168]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	ldr	r9, [sp, #48]	@, %sfp
	strb	r5, [r0, #1170]	@, <variable>.DcNodeContexts
	strb	r4, [r0, #1171]	@, <variable>.DcNodeContexts
	ldrb	r5, [r0, #526]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r4, [r0, #527]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	strb	fp, [r0, #1172]	@, <variable>.DcNodeContexts
	strb	r3, [r0, #1173]	@, <variable>.DcNodeContexts
	ldrb	fp, [r0, #528]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r3, [r0, #529]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	strb	r2, [r0, #1179]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	str	sl, [sp, #48]	@, %sfp
	ldr	r8, [sp, #92]	@, %sfp
	ldr	sl, [sp, #96]	@, %sfp
	ldrb	r2, [r0, #532]	@ zero_extendqisi2	@, <variable>.DcProbs
	mul	r7, r7, r6	@ tmp507, <variable>.M, <variable>.DcProbs
	ldr	r1, [sp, #52]	@, %sfp
	str	r2, [sp, #52]	@, %sfp
	mul	r2, r8, r5	@ tmp517,, <variable>.DcProbs
	mul	r8, sl, r4	@ tmp527,, <variable>.DcProbs
	ldr	sl, [sp, #100]	@, %sfp
	mul	ip, r9, r6	@ tmp383,, <variable>.DcProbs
	add	r2, r2, #128	@, tmp517,
	mul	r9, r1, r5	@ tmp393,, <variable>.DcProbs
	add	r1, r7, #128	@, tmp507,
	str	r1, [sp, #92]	@, %sfp
	add	ip, ip, #128	@ tmp385, tmp383,
	mul	r1, sl, fp	@ tmp537,, <variable>.DcProbs
	ldr	r7, [sp, #104]	@, %sfp
	add	sl, r8, #128	@, tmp527,
	str	r2, [sp, #96]	@, %sfp
	str	sl, [sp, #100]	@, %sfp
	add	r9, r9, #128	@ tmp395, tmp393,
	add	r8, r1, #128	@, tmp537,
	ldr	r1, [sp, #68]	@, %sfp
	mul	r2, r7, r3	@ tmp547,, <variable>.DcProbs
	str	r8, [sp, #104]	@, %sfp
	ldr	r7, [sp, #60]	@, %sfp
	mul	r8, r1, fp	@ tmp413,, <variable>.DcProbs
	ldr	r1, [sp, #72]	@, %sfp
	mul	sl, r7, r4	@ tmp403,, <variable>.DcProbs
	add	r7, r2, #128	@, tmp547,
	str	r7, [sp, #180]	@, %sfp
	mul	r7, r1, r3	@ tmp423,, <variable>.DcProbs
	add	r2, sl, #128	@, tmp403,
	ldr	r1, [sp, #124]	@, %sfp
	add	sl, r8, #128	@, tmp413,
	str	r2, [sp, #60]	@, %sfp
	add	r8, r7, #128	@, tmp423,
	ldr	r2, [sp, #76]	@, %sfp
	ldr	r7, [sp, #136]	@, %sfp
	mul	r6, r1, r6	@ tmp445,, <variable>.DcProbs
	str	sl, [sp, #68]	@, %sfp
	str	r8, [sp, #76]	@, %sfp
	mul	sl, r2, r5	@ tmp455,, <variable>.DcProbs
	ldr	r2, [sp, #144]	@, %sfp
	mul	r8, r7, r4	@ tmp465,, <variable>.DcProbs
	ldr	r7, [sp, #152]	@, %sfp
	mul	fp, r2, fp	@ tmp475,, <variable>.DcProbs
	add	r1, r6, #128	@, tmp445,
	mul	r2, r7, r3	@ tmp485,, <variable>.DcProbs
	add	r6, sl, #128	@, tmp455,
	ldr	sl, [sp, #44]	@, %sfp
	add	r5, r8, #128	@, tmp465,
	str	r6, [sp, #144]	@, %sfp
	add	fp, fp, #128	@ tmp477, tmp475,
	ldr	r6, [sp, #60]	@, %sfp
	add	ip, sl, ip, asr #8	@, Temp.1101,, tmp385,
	ldr	r4, [sp, #64]	@, %sfp
	add	r3, r2, #128	@, tmp485,
	str	r1, [sp, #136]	@, %sfp
	cmp	ip, #255	@ Temp.1101,
	movge	ip, #255	@ Temp.1101,
	ldr	r1, [sp, #56]	@, %sfp
	add	r8, r4, r6, asr #8	@,,,,
	ldrb	r2, [r0, #534]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	r5, [sp, #152]	@, %sfp
	add	r9, r1, r9, asr #8	@, Temp.1106,, tmp395,
	str	r3, [sp, #44]	@, %sfp
	cmp	r9, #255	@ Temp.1106,
	movge	r9, #255	@ Temp.1169,
	ldrb	r1, [r0, #533]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	ldrb	r3, [r0, #535]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	ip, [sp, #72]	@ Temp.1101, %sfp
	ldrb	ip, [r0, #531]	@ zero_extendqisi2	@ <variable>.DcProbs, <variable>.DcProbs
	str	r8, [sp, #124]	@, %sfp
	ldr	r7, [sp, #68]	@, %sfp
	ldr	r5, [sp, #84]	@, %sfp
	ldr	r6, [sp, #76]	@, %sfp
	ldr	sl, [sp, #88]	@, %sfp
	add	r8, r5, r7, asr #8	@, Temp.1190,,,
	ldr	r4, [sp, #136]	@, %sfp
	ldr	r5, [sp, #128]	@, %sfp
	add	r7, sl, r6, asr #8	@, Temp.1201,,,
	ldr	sl, [sp, #144]	@, %sfp
	add	r6, r5, r4, asr #8	@, Temp.1218,,,
	ldr	r4, [sp, #132]	@, %sfp
	add	r5, r4, sl, asr #8	@, Temp.1229,,,
	ldr	sl, [sp, #152]	@, %sfp
	ldr	r4, [sp, #140]	@, %sfp
	add	r4, r4, sl, asr #8	@,,,,
	ldr	sl, [sp, #148]	@, %sfp
	str	r4, [sp, #76]	@, %sfp
	ldr	r4, [sp, #44]	@, %sfp
	add	fp, sl, fp, asr #8	@, Temp.1251,, tmp477,
	ldr	sl, [sp, #156]	@, %sfp
	add	sl, sl, r4, asr #8	@,,,,
	ldr	r4, [sp, #92]	@, %sfp
	str	sl, [sp, #44]	@, %sfp
	ldr	sl, [sp, #160]	@, %sfp
	add	sl, sl, r4, asr #8	@,,,,
	ldr	r4, [sp, #96]	@, %sfp
	str	sl, [sp, #68]	@, %sfp
	ldr	sl, [sp, #164]	@, %sfp
	add	sl, sl, r4, asr #8	@,,,,
	ldr	r4, [sp, #100]	@, %sfp
	str	sl, [sp, #64]	@, %sfp
	ldr	sl, [sp, #168]	@, %sfp
	add	sl, sl, r4, asr #8	@,,,,
	ldr	r4, [sp, #104]	@, %sfp
	str	sl, [sp, #60]	@, %sfp
	ldr	sl, [sp, #172]	@, %sfp
	add	sl, sl, r4, asr #8	@,,,,
	ldr	r4, [sp, #180]	@, %sfp
	str	sl, [sp, #56]	@, %sfp
	ldr	sl, [sp, #176]	@, %sfp
	add	sl, sl, r4, asr #8	@,,,,
	ldr	r4, [sp, #72]	@, %sfp
	str	sl, [sp, #84]	@, %sfp
	cmp	r4, #1	@,
	movlt	r4, #1	@,
	cmp	r9, #1	@ Temp.1169,
	movlt	r9, #1	@ Temp.1169,
	str	r9, [sp, #88]	@ Temp.1169, %sfp
	cmp	r8, #255	@ Temp.1190,
	movge	r8, #255	@ Temp.1191,
	ldr	r9, [sp, #44]	@, %sfp
	cmp	r7, #255	@ Temp.1201,
	movge	r7, #255	@ Temp.1202,
	str	r4, [sp, #72]	@, %sfp
	cmp	r6, #255	@ Temp.1218,
	movge	r6, #255	@ Temp.1219,
	ldr	sl, [sp, #124]	@ Temp.1180, %sfp
	cmp	r9, #255	@,
	movge	r9, #255	@,
	ldr	r4, [sp, #76]	@ Temp.1241, %sfp
	cmp	r5, #255	@ Temp.1229,
	movge	r5, #255	@ Temp.1230,
	str	r9, [sp, #76]	@, %sfp
	cmp	sl, #255	@ Temp.1180,
	movge	sl, #255	@ Temp.1180,
	ldr	r9, [sp, #68]	@, %sfp
	cmp	r4, #255	@ Temp.1241,
	movge	r4, #255	@ Temp.1241,
	cmp	fp, #255	@ Temp.1251,
	movge	fp, #255	@ Temp.1252,
	cmp	sl, #1	@ Temp.1180,
	movlt	sl, #1	@ tmp409,
	cmp	r9, #255	@,
	movge	r9, #255	@,
	str	r9, [sp, #68]	@, %sfp
	ldr	r9, [sp, #64]	@, %sfp
	cmp	r8, #1	@ Temp.1191,
	movlt	r8, #1	@ tmp419,
	cmp	r7, #1	@ Temp.1202,
	movlt	r7, #1	@ tmp429,
	cmp	r6, #1	@ Temp.1219,
	movlt	r6, #1	@ tmp451,
	cmp	r9, #255	@,
	movge	r9, #255	@,
	str	r9, [sp, #64]	@, %sfp
	ldr	r9, [sp, #60]	@, %sfp
	cmp	r5, #1	@ Temp.1230,
	movlt	r5, #1	@ tmp461,
	cmp	r4, #1	@ Temp.1241,
	movlt	r4, #1	@ tmp471,
	cmp	fp, #1	@ Temp.1252,
	movlt	fp, #1	@ tmp481,
	cmp	r9, #255	@,
	movge	r9, #255	@,
	str	r9, [sp, #60]	@, %sfp
	ldr	r9, [sp, #56]	@, %sfp
	strb	sl, [r0, #1187]	@ tmp409, <variable>.DcNodeContexts
	cmp	r9, #255	@,
	movge	r9, #255	@,
	str	r9, [sp, #44]	@, %sfp
	ldr	r9, [sp, #84]	@, %sfp
	strb	r8, [r0, #1188]	@ tmp419, <variable>.DcNodeContexts
	cmp	r9, #255	@,
	movge	r9, #255	@,
	str	r9, [sp, #56]	@, %sfp
	ldr	r9, [sp, #108]	@, %sfp
	ldr	r8, [sp, #68]	@ tmp513, %sfp
	strb	r7, [r0, #1189]	@ tmp429, <variable>.DcNodeContexts
	strb	r9, [r0, #1180]	@, <variable>.DcNodeContexts
	cmp	r8, #1	@ tmp513,
	movlt	r8, #1	@ tmp513,
	ldr	r9, [sp, #112]	@, %sfp
	ldr	r7, [sp, #64]	@ tmp523, %sfp
	strb	r6, [r0, #1196]	@ tmp451, <variable>.DcNodeContexts
	strb	r9, [r0, #1181]	@, <variable>.DcNodeContexts
	cmp	r7, #1	@ tmp523,
	movlt	r7, #1	@ tmp523,
	ldr	r9, [sp, #116]	@, %sfp
	ldr	r6, [sp, #60]	@ tmp533, %sfp
	strb	r5, [r0, #1197]	@ tmp461, <variable>.DcNodeContexts
	strb	r9, [r0, #1182]	@, <variable>.DcNodeContexts
	cmp	r6, #1	@ tmp533,
	movlt	r6, #1	@ tmp533,
	ldr	r9, [sp, #120]	@, %sfp
	ldr	r5, [sp, #44]	@ tmp543, %sfp
	strb	r9, [r0, #1183]	@, <variable>.DcNodeContexts
	cmp	r5, #1	@ tmp543,
	movlt	r5, #1	@ tmp543,
	ldr	r9, [sp, #80]	@, %sfp
	strb	r9, [r0, #1184]	@, <variable>.DcNodeContexts
	ldr	r9, [sp, #72]	@, %sfp
	strb	r9, [r0, #1185]	@, <variable>.DcNodeContexts
	ldr	r9, [sp, #88]	@, %sfp
	strb	r9, [r0, #1186]	@, <variable>.DcNodeContexts
	ldr	r9, [sp, #76]	@ tmp491, %sfp
	strb	r4, [r0, #1198]	@ tmp471, <variable>.DcNodeContexts
	ldr	sl, [sp, #48]	@, %sfp
	cmp	r9, #1	@ tmp491,
	movlt	r9, #1	@ tmp491,
	strb	fp, [r0, #1199]	@, <variable>.DcNodeContexts
	ldr	fp, [sp, #52]	@, %sfp
	ldr	r4, [sp, #56]	@ tmp553, %sfp
	strb	r9, [r0, #1200]	@ tmp491, <variable>.DcNodeContexts
	cmp	r4, #1	@ tmp553,
	movlt	r4, #1	@ tmp553,
	strb	sl, [r0, #1190]	@, <variable>.DcNodeContexts
	strb	ip, [r0, #1191]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	fp, [r0, #1192]	@, <variable>.DcNodeContexts
	strb	r1, [r0, #1193]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r2, [r0, #1194]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1195]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	sl, [r0, #1201]	@, <variable>.DcNodeContexts
	strb	ip, [r0, #1202]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1217]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r8, [r0, #1207]	@ tmp513, <variable>.DcNodeContexts
	strb	r7, [r0, #1208]	@ tmp523, <variable>.DcNodeContexts
	strb	r6, [r0, #1209]	@ tmp533, <variable>.DcNodeContexts
	strb	r5, [r0, #1210]	@ tmp543, <variable>.DcNodeContexts
	strb	r4, [r0, #1211]	@ tmp553, <variable>.DcNodeContexts
	strb	sl, [r0, #1212]	@, <variable>.DcNodeContexts
	strb	ip, [r0, #1213]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	fp, [r0, #1214]	@, <variable>.DcNodeContexts
	strb	r1, [r0, #1215]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r2, [r0, #1216]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	fp, [r0, #1203]	@, <variable>.DcNodeContexts
	strb	r1, [r0, #1204]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r2, [r0, #1205]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	strb	r3, [r0, #1206]	@ <variable>.DcProbs, <variable>.DcNodeContexts
	add	sp, sp, #184	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.fnend
	.size	VP6_ConfigureContexts, .-VP6_ConfigureContexts
	.align	2
	.global	VP6_BoolTreeToHuffCodes
	.type	VP6_BoolTreeToHuffCodes, %function
VP6_BoolTreeToHuffCodes:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp159,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp160,* pBoolTreeProbs
	mul	r3, r2, ip	@ tmp161, tmp160, tmp159
	mov	r4, r3, lsr #8	@ tmp162, tmp161,
	str	r4, [r1, #44]	@ tmp162,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp163,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp165,* pBoolTreeProbs
	rsb	r3, ip, #255	@ tmp164, tmp163,
	mul	r4, r2, r3	@ tmp166, tmp165, tmp164
	mov	ip, r4, lsr #8	@ tmp167, tmp166,
	str	ip, [r1, #0]	@ tmp167,* pHuffProbs
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp168,* pBoolTreeProbs
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp169,
	rsb	r3, r3, #255	@ Prob, tmp168,
	mul	r2, r3, r4	@ tmp170, Prob, tmp169
	mov	ip, r2, lsr #8	@ tmp171, tmp170,
	str	ip, [r1, #4]	@ tmp171,
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp172,
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp174,
	rsb	r2, r4, #255	@ tmp173, tmp172,
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp176,
	mul	r2, r3, r2	@ D.35629, Prob, tmp173
	mov	r2, r2, lsr #8	@ Prob.1484, D.35629,
	mul	ip, ip, r2	@ tmp175, tmp174, Prob.1484
	mov	ip, ip, lsr #8	@ Prob1, tmp175,
	mul	r3, r4, ip	@ tmp177, tmp176, Prob1
	mov	r4, r3, lsr #8	@ tmp178, tmp177,
	str	r4, [r1, #8]	@ tmp178,
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ tmp179,
	ldrb	r4, [r0, #5]	@ zero_extendqisi2	@ tmp181,
	rsb	r3, r3, #255	@ tmp180, tmp179,
	mul	r3, r3, ip	@ D.35642, tmp180, Prob1
	mov	r3, r3, lsr #8	@ Prob1.1486, D.35642,
	mul	ip, r4, r3	@ tmp182, tmp181, Prob1.1486
	mov	ip, ip, lsr #8	@ tmp183, tmp182,
	str	ip, [r1, #12]	@ tmp183,
	ldrb	r4, [r0, #5]	@ zero_extendqisi2	@ tmp184,
	rsb	ip, r4, #255	@ tmp185, tmp184,
	mul	r4, ip, r3	@ tmp186, tmp185, Prob1.1486
	mov	r3, r4, lsr #8	@ tmp187, tmp186,
	str	r3, [r1, #16]	@ tmp187,
	ldrb	r4, [r0, #3]	@ zero_extendqisi2	@ tmp188,
	ldrb	r3, [r0, #6]	@ zero_extendqisi2	@ tmp190,
	rsb	ip, r4, #255	@ tmp189, tmp188,
	ldrb	r4, [r0, #7]	@ zero_extendqisi2	@ tmp192,
	mul	r2, ip, r2	@ D.35656, tmp189, Prob.1484
	mov	ip, r2, lsr #8	@ Prob.1489, D.35656,
	mul	r3, r3, ip	@ tmp191, tmp190, Prob.1489
	mov	r3, r3, lsr #8	@ Prob1.1490, tmp191,
	mul	r2, r4, r3	@ tmp193, tmp192, Prob1.1490
	mov	r2, r2, lsr #8	@ tmp194, tmp193,
	str	r2, [r1, #20]	@ tmp194,
	ldrb	r4, [r0, #7]	@ zero_extendqisi2	@ tmp195,
	rsb	r2, r4, #255	@ tmp196, tmp195,
	mul	r4, r2, r3	@ tmp197, tmp196, Prob1.1490
	mov	r3, r4, lsr #8	@ tmp198, tmp197,
	str	r3, [r1, #24]	@ tmp198,
	ldrb	r4, [r0, #6]	@ zero_extendqisi2	@ tmp199,
	ldrb	r3, [r0, #8]	@ zero_extendqisi2	@ tmp201,
	rsb	r2, r4, #255	@ tmp200, tmp199,
	ldrb	r4, [r0, #9]	@ zero_extendqisi2	@ tmp203,
	mul	r2, r2, ip	@ D.35674, tmp200, Prob.1489
	mov	r2, r2, lsr #8	@ Prob.1493, D.35674,
	mul	r3, r3, r2	@ tmp202, tmp201, Prob.1493
	mov	r3, r3, lsr #8	@ Prob1.1494, tmp202,
	mul	ip, r4, r3	@ tmp204, tmp203, Prob1.1494
	mov	ip, ip, lsr #8	@ tmp205, tmp204,
	str	ip, [r1, #28]	@ tmp205,
	ldrb	ip, [r0, #9]	@ zero_extendqisi2	@ tmp206,
	rsb	ip, ip, #255	@ tmp207, tmp206,
	mul	r3, ip, r3	@ tmp208, tmp207, Prob1.1494
	mov	ip, r3, lsr #8	@ tmp209, tmp208,
	str	ip, [r1, #32]	@ tmp209,
	ldrb	r3, [r0, #8]	@ zero_extendqisi2	@ tmp210,
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ tmp212,
	rsb	r3, r3, #255	@ tmp211, tmp210,
	mul	r3, r3, r2	@ D.35692, tmp211, Prob.1493
	mov	r3, r3, lsr #8	@ Prob.1497, D.35692,
	mul	r2, ip, r3	@ tmp213, tmp212, Prob.1497
	mov	r2, r2, lsr #8	@ tmp214, tmp213,
	str	r2, [r1, #36]	@ tmp214,
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ tmp215,
	rsb	r2, ip, #255	@ tmp216, tmp215,
	mul	r0, r2, r3	@ tmp217, tmp216, Prob.1497
	mov	r3, r0, lsr #8	@ tmp218, tmp217,
	str	r3, [r1, #40]	@ tmp218,
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	VP6_BoolTreeToHuffCodes, .-VP6_BoolTreeToHuffCodes
	.align	2
	.global	VP6_ZerosBoolTreeToHuffCodes
	.type	VP6_ZerosBoolTreeToHuffCodes, %function
VP6_ZerosBoolTreeToHuffCodes:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ tmp148,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp149,* pBoolTreeProbs
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ tmp151,
	mul	r3, ip, r4	@ tmp150, tmp149, tmp148
	mov	ip, r3, lsr #8	@ Prob, tmp150,
	mul	r4, r2, ip	@ tmp152, tmp151, Prob
	mov	r2, r4, lsr #8	@ tmp153, tmp152,
	str	r2, [r1, #0]	@ tmp153,* pHuffProbs
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ tmp154,
	rsb	r2, r4, #255	@ tmp155, tmp154,
	mul	r4, ip, r2	@ tmp156, Prob, tmp155
	mov	r3, r4, lsr #8	@ tmp157, tmp156,
	str	r3, [r1, #4]	@ tmp157,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ tmp158,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp160,* pBoolTreeProbs
	rsb	r4, r2, #255	@ tmp159, tmp158,
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp162,
	mul	r3, ip, r4	@ tmp161, tmp160, tmp159
	mov	r4, r3, lsr #8	@ Prob.1526, tmp161,
	mul	ip, r2, r4	@ tmp163, tmp162, Prob.1526
	mov	r2, ip, lsr #8	@ tmp164, tmp163,
	str	r2, [r1, #8]	@ tmp164,
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp165,
	rsb	r2, ip, #255	@ tmp166, tmp165,
	mul	r3, r2, r4	@ tmp167, tmp166, Prob.1526
	mov	ip, r3, lsr #8	@ tmp168, tmp167,
	str	ip, [r1, #12]	@ tmp168,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp169,* pBoolTreeProbs
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp171,
	rsb	r3, r2, #255	@ tmp170, tmp169,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ tmp174,
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ tmp175,
	mul	r3, r4, r3	@ tmp172, tmp171, tmp170
	mov	r4, r3, lsr #8	@ tmp173, tmp172,
	mul	r3, ip, r4	@ D.35752, tmp174, tmp173
	mov	r3, r3, lsr #8	@ Prob.1530, D.35752,
	mul	r2, r2, r3	@ tmp176, tmp175, Prob.1530
	mov	ip, r2, lsr #8	@ tmp177, tmp176,
	str	ip, [r1, #16]	@ tmp177,
	ldrb	r4, [r0, #6]	@ zero_extendqisi2	@ tmp178,
	rsb	r2, r4, #255	@ tmp179, tmp178,
	mul	ip, r2, r3	@ tmp180, tmp179, Prob.1530
	mov	r4, ip, lsr #8	@ tmp181, tmp180,
	str	r4, [r1, #20]	@ tmp181,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp182,* pBoolTreeProbs
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ tmp184,
	rsb	r3, r2, #255	@ tmp183, tmp182,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ tmp187,
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ tmp189,
	mul	r3, r4, r3	@ tmp185, tmp184, tmp183
	rsb	ip, ip, #255	@ tmp188, tmp187,
	mov	r3, r3, lsr #8	@ tmp186, tmp185,
	mul	r3, ip, r3	@ D.35768, tmp188, tmp186
	mov	ip, r3, lsr #8	@ Prob.1541, D.35768,
	mul	r2, r2, ip	@ tmp190, tmp189, Prob.1541
	mov	r2, r2, lsr #8	@ tmp191, tmp190,
	str	r2, [r1, #24]	@ tmp191,
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ tmp192,
	rsb	r2, r2, #255	@ tmp193, tmp192,
	mul	r3, r2, ip	@ tmp194, tmp193, Prob.1541
	mov	r2, r3, lsr #8	@ tmp195, tmp194,
	str	r2, [r1, #28]	@ tmp195,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp198,* pBoolTreeProbs
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ tmp196,
	rsb	r2, ip, #255	@ tmp199, tmp198,
	rsb	ip, r3, #255	@ tmp197, tmp196,
	mul	r0, r2, ip	@ tmp200, tmp199, tmp197
	mov	r3, r0, lsr #8	@ tmp201, tmp200,
	str	r3, [r1, #32]	@ tmp201,
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	VP6_ZerosBoolTreeToHuffCodes, .-VP6_ZerosBoolTreeToHuffCodes
	.align	2
	.global	VP6_InsertSorted
	.type	VP6_InsertSorted, %function
VP6_InsertSorted:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r2, #0]	@ which,* pStartnode
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	cmn	r3, #1	@ which,
	beq	.L137	@,
	add	r8, r1, r1, asl #1	@, tmp146, node, node,
	add	r4, r3, r3, asl #1	@, tmp150, which, which,
	add	r8, r0, r8, asl #2	@, prephitmp.1567, pSn, tmp146,
	add	r4, r0, r4, asl #2	@, D.35797, pSn, tmp150,
	ldr	r7, [r8, #8]	@ D.35801, <variable>.freq
	ldr	ip, [r4, #8]	@ <variable>.freq, <variable>.freq
	cmp	r7, ip	@ D.35801, <variable>.freq
	bls	.L138	@,
	mov	r6, r3	@ which.1582, which
	b	.L141	@
.L144:
	add	r4, r0, r4, asl #2	@, D.35797, pSn, tmp155,
	ldr	r5, [r4, #8]	@ <variable>.freq, <variable>.freq
	cmp	r7, r5	@ D.35801, <variable>.freq
	bls	.L140	@,
	mov	r6, ip	@ which.1582, which.1578
.L141:
	ldr	ip, [r4, #4]	@ which.1578, <variable>.next
	cmn	ip, #1	@ which.1578,
	add	r4, ip, ip, asl #1	@, tmp155, which.1578, which.1578,
	bne	.L144	@,
.L139:
	add	r6, r6, r6, asl #1	@, tmp160, which.1582, which.1582,
	add	r0, r0, r6, asl #2	@, tmp162, pSn, tmp160,
	str	r1, [r0, #4]	@ node, <variable>.next
	str	ip, [r8, #4]	@ which.1578, <variable>.next
.L143:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L140:
	cmp	ip, r3	@ which.1578, which
	bne	.L139	@,
.L138:
	str	r1, [r2, #0]	@ node,* pStartnode
	str	r3, [r8, #4]	@ which, <variable>.next
	b	.L143	@
.L137:
	add	ip, r1, r1, asl #1	@, tmp165, node, node,
	add	r8, r0, ip, asl #2	@, prephitmp.1567, pSn, tmp165,
	b	.L138	@
	.fnend
	.size	VP6_InsertSorted, .-VP6_InsertSorted
	.align	2
	.global	VP6_BuildHuffTree
	.type	VP6_BuildHuffTree, %function
VP6_BuildHuffTree:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 376
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r2, #0	@
	.pad #380
	sub	sp, sp, #380	@,,
	mov	r4, #0	@ tmp306,
	str	r2, [sp, #0]	@, %sfp
	str	r0, [sp, #4]	@ pHn, %sfp
	str	r4, [sp, #372]	@ tmp306, startnode
	beq	.L147	@,
	add	r3, sp, #12	@ tmp307,,
	ldr	r0, [r1, #0]	@ prephitmp.1644,* pCounts
	ldr	r2, [sp, #0]	@, %sfp
	mov	fp, #1	@ tmp449,
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ tmp317,
	cmp	r0, #0	@ prephitmp.1644,
	sub	ip, r2, #1	@ tmp456,,
	add	r2, r3, #8	@ ivtmp.1640, tmp307,
	orr	r5, r9, fp	@ tmp327, tmp317,
	and	ip, ip, #1	@ tmp458, tmp456,
	and	r5, r5, #225	@ tmp336, tmp327,
	mvn	r9, #0	@ tmp451,
	bfi	r5, r4, #5, #3	@ tmp336, tmp306,,
	strb	r5, [r3, #0]	@ tmp336,
	beq	.L179	@,
.L162:
	ldr	r4, [sp, #0]	@, %sfp
	mov	r3, #1	@ i,
	str	r0, [r2, #0]	@ prephitmp.1644, <variable>.freq
	add	r0, r2, #12	@ ivtmp.1640, ivtmp.1640,
	cmp	r3, r4	@ i,
	str	r9, [r2, #-4]	@ tmp451, <variable>.next
	mov	r4, #4	@ ivtmp.1639,
	beq	.L174	@,
	cmp	ip, #0	@ tmp458,
	beq	.L149	@,
	add	r8, sp, #388	@ tmp510,,
	ldr	sl, [r1, r4]	@ prephitmp.1644,* ivtmp.1639
	ldrb	r5, [r8, #-364]!	@ zero_extendqisi2	@ tmp511,
	cmp	sl, #0	@ prephitmp.1644,
	orr	r5, r5, r3	@ tmp514, tmp511,
	moveq	sl, fp	@ prephitmp.1644, tmp449
	bfi	r5, r3, #1, #4	@ tmp514, i,,
	add	r3, r3, #1	@ i, i,
	bfc	r5, #5, #3	@ tmp516,,
	strb	r5, [r8, #0]	@ tmp516,
	streq	fp, [r1, r4]	@ tmp449,* ivtmp.1639
	add	r4, r4, #4	@ ivtmp.1639, ivtmp.1639,
	str	sl, [r0, #0]	@ prephitmp.1644, <variable>.freq
	ldr	r8, [sp, #0]	@, %sfp
	str	r9, [r0, #-4]	@ tmp451, <variable>.next
	add	r0, r0, #12	@ ivtmp.1640, ivtmp.1640,
	cmp	r3, r8	@ i,
	beq	.L174	@,
.L149:
	add	r2, r3, #1	@ tmp459, i,
	add	r7, r3, r3, asl #1	@, tmp465, i, i,
	add	r8, sp, #376	@,,
	ldr	r6, [r1, r4]	@ prephitmp.1644,* ivtmp.1639
	add	r7, r8, r7, asl #2	@, tmp467,, tmp465,
	add	sl, r2, r2, asl #1	@, tmp483, tmp459, tmp459,
	cmp	r6, #0	@ prephitmp.1644,
	add	r5, r4, #4	@ tmp460, ivtmp.1639,
	add	sl, r8, sl, asl #2	@, tmp485,, tmp483,
	ldrb	r8, [r7, #-364]	@ zero_extendqisi2	@ tmp469,
	moveq	r6, fp	@ prephitmp.1644, tmp449
	add	ip, r0, #12	@ tmp461, ivtmp.1640,
	orr	r8, r8, #1	@ tmp472, tmp469,
	bfi	r8, r3, #1, #4	@ tmp472, i,,
	bfc	r8, #5, #3	@ tmp474,,
	strb	r8, [r7, #-364]	@ tmp474,
	streq	fp, [r1, r4]	@ tmp449,* ivtmp.1639
	str	r6, [r0, #0]	@ prephitmp.1644, <variable>.freq
	str	r9, [r0, #-4]	@ tmp451, <variable>.next
	ldrb	r3, [sl, #-364]	@ zero_extendqisi2	@ tmp487,
	ldr	r0, [r1, r5]	@ prephitmp.1644,
	orr	r4, r3, #1	@ tmp490, tmp487,
	cmp	r0, #0	@ prephitmp.1644,
	bfi	r4, r2, #1, #4	@ tmp490, tmp459,,
	bfc	r4, #5, #3	@ tmp492,,
	strb	r4, [sl, #-364]	@ tmp492,
	moveq	r0, fp	@ prephitmp.1644, tmp449
	streq	fp, [r1, r5]	@ tmp449,
.L167:
	str	r0, [ip, #0]	@ prephitmp.1644, <variable>.freq
	add	r3, r2, #1	@ i, tmp459,
	ldr	r2, [sp, #0]	@, %sfp
	add	r4, r5, #4	@ ivtmp.1639, tmp460,
	str	r9, [ip, #-4]	@ tmp451, <variable>.next
	add	r0, ip, #12	@ ivtmp.1640, tmp461,
	cmp	r3, r2	@ i,
	bne	.L149	@,
.L174:
	ldr	sl, [sp, #0]	@, %sfp
	cmp	sl, #1	@,
	beq	.L173	@,
	add	r6, sp, #372	@ tmp436,,
	add	r7, sp, #12	@ tmp447,,
	ldr	lr, [sp, #0]	@, %sfp
	mov	r1, #1	@,
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	and	r5, lr, r1	@ tmp454,,
	bl	VP6_InsertSorted	@
	ldr	r0, [sp, #0]	@, %sfp
	mov	r4, #2	@ i.1645,
	cmp	r0, #2	@,
	bls	.L173	@,
	cmp	r5, #0	@ tmp454,
	beq	.L176	@,
	mov	r1, r4	@, i.1645
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	mov	r4, #3	@ i.1645,
	bl	VP6_InsertSorted	@
	ldr	r1, [sp, #0]	@, %sfp
	cmp	r1, r4	@, i.1645
	bls	.L173	@,
.L176:
	ldr	r8, [sp, #0]	@ values, %sfp
.L151:
	add	r5, r4, #1	@ tmp455, i.1645,
	mov	r1, r4	@, i.1645
	mov	r0, r7	@, tmp447
	mov	r2, r6	@, tmp436
	bl	VP6_InsertSorted	@
	add	r4, r5, #1	@ i.1645, tmp455,
	mov	r0, r7	@, tmp447
	mov	r1, r5	@, tmp455
	mov	r2, r6	@, tmp436
	bl	VP6_InsertSorted	@
	cmp	r8, r4	@ values, i.1645
	bhi	.L151	@,
.L173:
	ldr	r2, [sp, #372]	@ prephitmp.1603, startnode
.L147:
	mov	r1, r2, asl #1	@ tmp440, prephitmp.1603,
	add	r4, sp, #376	@,,
	add	r3, r1, r2	@ tmp346, tmp440, prephitmp.1603
	add	ip, r4, r3, asl #2	@, tmp348,, tmp346,
	ldr	r3, [ip, #-360]	@ D.35850, <variable>.next
	cmn	r3, #1	@ D.35850,
	beq	.L154	@,
	ldr	r9, [sp, #0]	@, %sfp
	add	r8, sp, #12	@ tmp355,,
	ldr	r4, [sp, #4]	@, %sfp
	sub	r6, r9, #-2147483646	@ tmp350,,
	sub	sl, r9, #2	@ tmp352,,
	add	r5, r9, r9, asl #1	@, tmp359,,,
	and	r7, sl, #15	@ ivtmp.1627, tmp352,
	add	r6, r4, r6, asl #1	@, ivtmp.1623,, tmp350,
	mov	r4, r9	@ sncount,
	add	fp, r8, r5, asl #2	@, tmp361, tmp355, tmp359,
	add	r5, fp, #8	@ ivtmp.1629, tmp361,
	add	fp, sp, #372	@ tmp500,,
.L153:
	add	ip, r1, r2	@ tmp372, tmp440, prephitmp.1603
	add	r3, r3, r3, asl #1	@, tmp365, D.35850, D.35850,
	add	r0, sp, #376	@,,
	add	r2, r4, r4, asl #1	@, tmp399, sncount, sncount,
	add	r3, r0, r3, asl #2	@, tmp367,, tmp365,
	add	lr, r0, ip, asl #2	@, tmp374,, tmp372,
	add	ip, r0, r2, asl #2	@, tmp401,, tmp399,
	mov	r1, r4	@, sncount
	ldrb	r8, [r3, #-364]	@ zero_extendqisi2	@ <variable>.value, <variable>.value
	add	r0, sp, #12	@,,
	ldrb	r9, [lr, #-364]	@ zero_extendqisi2	@, <variable>.value
	mov	r2, fp	@, tmp500
	add	r4, r4, #1	@ sncount, sncount,
	str	r9, [sp, #0]	@, %sfp
	ldr	r9, [r3, #-356]	@ <variable>.freq, <variable>.freq
	ldr	sl, [lr, #-356]	@ <variable>.freq, <variable>.freq
	strb	r8, [r6, #1]	@ <variable>.value, <variable>.rightunion.right
	ldr	r8, [sp, #0]	@, %sfp
	add	sl, r9, sl	@ sumfreq, <variable>.freq, <variable>.freq
	ldrb	lr, [ip, #-364]	@ zero_extendqisi2	@,
	and	lr, lr, #254	@ tmp412, tmp403,
	strb	r8, [r6, #0]	@, <variable>.leftunion.left
	bfi	lr, r7, #1, #4	@ tmp412, ivtmp.1627,,
	strb	lr, [ip, #-364]	@ tmp412,
	mvn	ip, #0	@,
	str	ip, [r5, #-4]	@, <variable>.next
	ldr	lr, [r3, #-360]	@ <variable>.next, <variable>.next
	sub	r6, r6, #2	@ ivtmp.1623, ivtmp.1623,
	str	sl, [r5, #0]	@ sumfreq, <variable>.freq
	add	r5, r5, #12	@ ivtmp.1629, ivtmp.1629,
	str	lr, [sp, #372]	@ <variable>.next, startnode
	bl	VP6_InsertSorted	@
	ldr	r2, [sp, #372]	@ prephitmp.1603, startnode
	sub	r1, r7, #1	@ tmp433, ivtmp.1627,
	and	r7, r1, #15	@ ivtmp.1627, tmp433,
	add	r0, sp, #376	@,,
	mov	r1, r2, asl #1	@ tmp440, prephitmp.1603,
	add	r3, r1, r2	@ tmp429, tmp440, prephitmp.1603
	add	ip, r0, r3, asl #2	@, tmp431,, tmp429,
	ldr	r3, [ip, #-360]	@ D.35850, <variable>.next
	cmn	r3, #1	@ D.35850,
	bne	.L153	@,
.L154:
	add	sp, sp, #380	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L179:
	mov	r0, fp	@ prephitmp.1644, tmp449
	str	fp, [r1, #0]	@ tmp449,* pCounts
	b	.L162	@
	.fnend
	.size	VP6_BuildHuffTree, .-VP6_BuildHuffTree
	.align	2
	.global	VP6_BuildHuffLookupTable
	.type	VP6_BuildHuffLookupTable, %function
VP6_BuildHuffLookupTable:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	mov	r6, r1	@ pHuffTable, pHuffTable
	mov	r5, #0	@ i,
.L184:
	mov	r3, #0	@ j,
	mov	r2, r3	@ tmp193, j
.L183:
	add	r3, r3, #1	@ j, j,
	add	ip, r0, r2	@ D.35874, pHuffTreeRoot, tmp193
	rsb	r1, r3, #6	@ tmp145, j,
	mov	r1, r5, asr r1	@ tmp146, i,
	tst	r1, #1	@ tmp146,
	ldreqb	r4, [r0, r2]	@ zero_extendqisi2	@ tmp160,
	ldrneb	r4, [ip, #1]	@ zero_extendqisi2	@ tmp150,
	ubfx	r1, r4, #1, #4	@ torp$value, tmp160,,
	and	ip, r4, #1	@ torp$selector, tmp160,
	mov	r4, r4, lsr #5	@ torp$unused, tmp160,
	mov	r2, r1, asl #1	@ tmp193, torp$value,
	orr	r4, ip, r4, asl #5	@, SR.519, torp$selector, torp$unused,
	orr	r4, r4, r2	@ tmp176, SR.519, tmp193
	eor	r4, r4, #1	@ tmp178, tmp176,
	cmp	r3, #5	@ j,
	movhi	r4, #0	@, tmp186
	andls	r4, r4, #1	@,, tmp186, tmp178
	cmp	r4, #0	@ tmp186,
	bne	.L183	@,
	ldrb	r2, [r5, r6]	@ zero_extendqisi2	@,* pHuffTable
	bfi	r2, r1, #4, #4	@ tmp187, torp$value,,
	bfi	r2, r3, #1, #3	@ tmp189, j,,
	mov	r3, r2	@ tmp191, tmp189
	bfi	r3, ip, #0, #1	@ tmp191, torp$selector,,
	strb	r3, [r5, r6]	@ tmp191,* pHuffTable
	add	r5, r5, #1	@ i, i,
	cmp	r5, #64	@ i,
	bne	.L184	@,
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	VP6_BuildHuffLookupTable, .-VP6_BuildHuffLookupTable
	.align	2
	.global	VP6_BuildTreeTab
	.type	VP6_BuildTreeTab, %function
VP6_BuildTreeTab:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	mov	r1, #0	@,
	.pad #296
	sub	sp, sp, #296	@,,
	mov	r2, r1	@ k.1848,
	str	r1, [sp, #292]	@, %sfp
.L189:
	ldr	fp, [sp, #292]	@, %sfp
	mov	r1, #432	@,
	mla	r3, r1, fp, r0	@ tmp1043,,, pVp6CodecInfo
	mov	r1, #0	@ j,
	add	r9, r3, #8576	@ ivtmp.1742, tmp1043,
	add	r3, r9, #12	@ ivtmp.1742, ivtmp.1742,
.L190:
	ldrb	r7, [r3, #0]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r8, r2, r0	@ tmp248, k.1848, pVp6CodecInfo
	add	r5, r2, #1	@ k.1982, k.1848,
	add	r1, r1, #1	@ j, j,
	add	r6, r5, #1	@ k.1978, k.1982,
	add	ip, r5, r0	@ tmp253, k.1982, pVp6CodecInfo
	strb	r7, [r8, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	add	r9, r6, #1	@ k.1974, k.1978,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r2, r9, #1	@ k.1970, k.1974,
	add	fp, r2, #1	@ k.1964, k.1970,
	add	r8, r6, r0	@ tmp258, k.1978, pVp6CodecInfo
	add	sl, fp, #1	@ k.1960, k.1964,
	add	r6, r9, r0	@ tmp263, k.1974, pVp6CodecInfo
	strb	r4, [ip, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	add	r5, sl, #1	@ k.1954, k.1960,
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r9, r2, r0	@ tmp268, k.1970, pVp6CodecInfo
	add	r2, r5, #1	@ k.1950, k.1954,
	add	ip, sl, r0	@ tmp278, k.1960, pVp6CodecInfo
	add	sl, r5, r0	@ tmp283, k.1954, pVp6CodecInfo
	add	r4, fp, r0	@ tmp273, k.1964, pVp6CodecInfo
	strb	r7, [r8, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	add	r8, r2, r0	@ tmp288, k.1950, pVp6CodecInfo
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r2, r2, #1	@ k.1939, k.1950,
	add	r5, r2, #1	@ k.1935, k.1939,
	add	fp, r2, r0	@, k.1939, pVp6CodecInfo
	str	fp, [sp, #12]	@, %sfp
	add	fp, r5, r0	@, k.1935, pVp6CodecInfo
	str	fp, [sp, #16]	@, %sfp
	cmp	r1, #3	@ j,
	str	fp, [sp, #20]	@ tmp5, %sfp
	strb	r7, [r6, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	add	r7, r2, r0	@ tmp308, k.1939, pVp6CodecInfo
	ldrb	r5, [r3, #4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	add	r2, r2, #119	@ k.1848, k.1939,
	str	r7, [sp, #24]	@ tmp11, %sfp
	mov	fp, r7	@, tmp313
	str	r7, [sp, #28]	@ tmp11, %sfp
	mov	r6, r7	@ tmp313, tmp308
	str	r7, [sp, #32]	@ tmp11, %sfp
	str	r7, [sp, #36]	@ tmp11, %sfp
	strb	r5, [r9, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r9, [r3, #5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [sp, #40]	@ tmp11, %sfp
	str	r7, [sp, #44]	@ tmp11, %sfp
	str	r7, [sp, #48]	@ tmp11, %sfp
	str	r7, [sp, #52]	@ tmp11, %sfp
	str	r7, [sp, #56]	@ tmp11, %sfp
	strb	r9, [r4, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r7, [sp, #4]	@ tmp4, %sfp
	ldrb	r9, [r3, #6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [sp, #60]	@ tmp4, %sfp
	str	r7, [sp, #64]	@ tmp4, %sfp
	str	r7, [sp, #68]	@ tmp4, %sfp
	str	r7, [sp, #72]	@ tmp4, %sfp
	strb	r9, [ip, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	ip, r7	@ tmp398, tmp4
	ldrb	r9, [r3, #7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [sp, #76]	@ tmp4, %sfp
	str	r7, [sp, #80]	@ tmp4, %sfp
	str	r7, [sp, #84]	@ tmp4, %sfp
	str	r7, [sp, #88]	@ tmp4, %sfp
	str	r7, [sp, #92]	@ tmp4, %sfp
	strb	r9, [sl, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	mov	r9, r7	@ tmp428, tmp4
	ldrb	sl, [r3, #8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [sp, #96]	@ tmp4, %sfp
	str	r7, [sp, #100]	@ tmp4, %sfp
	str	r7, [sp, #104]	@ tmp4, %sfp
	str	r7, [sp, #108]	@ tmp4, %sfp
	str	r7, [sp, #112]	@ tmp4, %sfp
	strb	sl, [r8, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	sl, r7	@ tmp458, tmp4
	ldrb	r8, [r3, #9]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldr	r4, [sp, #12]	@, %sfp
	str	r7, [sp, #116]	@ tmp4, %sfp
	str	r7, [sp, #120]	@ tmp4, %sfp
	str	r7, [sp, #124]	@ tmp4, %sfp
	str	r7, [sp, #128]	@ tmp4, %sfp
	str	r7, [sp, #132]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #16]	@, %sfp
	str	r7, [sp, #12]	@ tmp4, %sfp
	ldrb	r8, [r3, #10]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [sp, #136]	@ tmp4, %sfp
	str	r7, [sp, #140]	@ tmp4, %sfp
	str	r7, [sp, #144]	@ tmp4, %sfp
	str	r7, [sp, #148]	@ tmp4, %sfp
	str	r7, [sp, #152]	@ tmp4, %sfp
	strb	r8, [r4, #1218]	@ <variable>.leftunion.l, <variable>.TreeTab
	str	r7, [sp, #16]	@ tmp4, %sfp
	ldrb	r8, [r3, #11]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r7, [sp, #156]	@ tmp4, %sfp
	str	r7, [sp, #160]	@ tmp4, %sfp
	str	r7, [sp, #164]	@ tmp4, %sfp
	str	r7, [sp, #168]	@ tmp4, %sfp
	ldr	r4, [sp, #20]	@, %sfp
	str	r7, [sp, #172]	@ tmp4, %sfp
	strb	r8, [r4, #1219]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	r7, [sp, #20]	@ tmp4, %sfp
	ldrb	r8, [r3, #12]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	r7, [sp, #176]	@ tmp4, %sfp
	str	r7, [sp, #180]	@ tmp4, %sfp
	str	r7, [sp, #184]	@ tmp4, %sfp
	str	r7, [sp, #188]	@ tmp4, %sfp
	str	r7, [sp, #192]	@ tmp4, %sfp
	strb	r8, [r7, #1225]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	r8, r7	@ tmp578, tmp4
	ldrb	r7, [r3, #13]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	r6, [sp, #196]	@ tmp4, %sfp
	str	r6, [sp, #200]	@ tmp4, %sfp
	str	r6, [sp, #204]	@ tmp4, %sfp
	str	r6, [sp, #208]	@ tmp4, %sfp
	str	r6, [sp, #212]	@ tmp4, %sfp
	strb	r7, [r6, #1226]	@ <variable>.rightunion.r, <variable>.TreeTab
	mov	r7, r6	@ tmp608, tmp4
	ldr	r4, [sp, #24]	@, %sfp
	ldrb	r6, [r3, #14]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	fp, [sp, #216]	@ tmp4, %sfp
	str	fp, [sp, #220]	@ tmp4, %sfp
	str	fp, [sp, #224]	@ tmp4, %sfp
	str	fp, [sp, #228]	@ tmp4, %sfp
	str	fp, [sp, #232]	@ tmp4, %sfp
	strb	r6, [r4, #1227]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #28]	@, %sfp
	str	fp, [sp, #24]	@ tmp4, %sfp
	ldrb	r6, [r3, #15]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	fp, [sp, #236]	@ tmp4, %sfp
	str	fp, [sp, #240]	@ tmp4, %sfp
	str	fp, [sp, #244]	@ tmp4, %sfp
	str	fp, [sp, #248]	@ tmp4, %sfp
	str	fp, [sp, #252]	@ tmp4, %sfp
	strb	r6, [r4, #1228]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	fp, [sp, #28]	@ tmp4, %sfp
	ldr	r4, [sp, #32]	@, %sfp
	ldrb	r6, [r3, #16]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	str	fp, [sp, #256]	@ tmp4, %sfp
	str	fp, [sp, #260]	@ tmp4, %sfp
	str	fp, [sp, #264]	@ tmp4, %sfp
	str	fp, [sp, #268]	@ tmp4, %sfp
	str	fp, [sp, #272]	@ tmp4, %sfp
	strb	r6, [r4, #1229]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #36]	@, %sfp
	str	fp, [sp, #32]	@ tmp4, %sfp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	str	fp, [sp, #276]	@ tmp4, %sfp
	str	fp, [sp, #280]	@ tmp4, %sfp
	str	fp, [sp, #284]	@ tmp4, %sfp
	str	fp, [sp, #288]	@ tmp4, %sfp
	strb	r6, [r4, #1230]	@ <variable>.rightunion.r, <variable>.TreeTab
	str	fp, [sp, #36]	@ tmp6, %sfp
	ldrb	r4, [r3, #18]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [fp, #1231]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #40]	@, %sfp
	ldrb	r6, [r3, #19]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r4, #1232]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [sp, #44]	@, %sfp
	ldrb	r5, [r3, #20]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r6, #1233]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [sp, #48]	@, %sfp
	ldrb	r4, [r3, #21]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [r6, #1234]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #52]	@, %sfp
	ldrb	r5, [r3, #22]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r4, #1235]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #56]	@, %sfp
	ldrb	r6, [r3, #23]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r4, #1236]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r5, [r3, #24]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r6, [sp, #4]	@, %sfp
	strb	r5, [r6, #1241]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldrb	r4, [r3, #25]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [fp, #1242]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [sp, #60]	@, %sfp
	ldrb	r6, [r3, #26]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [r5, #1243]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	fp, [sp, #64]	@, %sfp
	ldrb	r4, [r3, #27]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [fp, #1244]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [sp, #68]	@, %sfp
	ldrb	r6, [r3, #28]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [r5, #1245]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	fp, [sp, #72]	@, %sfp
	ldrb	r4, [r3, #29]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [fp, #1246]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r6, [r3, #30]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [ip, #1247]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	fp, [sp, #76]	@, %sfp
	ldrb	r5, [r3, #31]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r5, [fp, #1248]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #80]	@, %sfp
	ldrb	ip, [r3, #32]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r4, #1249]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #84]	@, %sfp
	ldrb	r6, [r3, #33]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1250]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #88]	@, %sfp
	ldrb	fp, [r3, #34]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	fp, [r4, #1251]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [sp, #92]	@, %sfp
	ldrb	ip, [r3, #35]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r6, #1252]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r5, [r3, #36]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [r9, #1257]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #96]	@, %sfp
	ldrb	fp, [r3, #37]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	fp, [r4, #1258]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [sp, #100]	@, %sfp
	ldrb	r9, [r3, #38]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r6, #1259]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #104]	@, %sfp
	ldrb	ip, [r3, #39]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r5, #1260]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #108]	@, %sfp
	ldrb	fp, [r3, #40]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	fp, [r4, #1261]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [sp, #112]	@, %sfp
	ldrb	r9, [r3, #41]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r6, #1262]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	ip, [r3, #42]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [sl, #1263]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	fp, [sp, #116]	@, %sfp
	ldrb	r5, [r3, #43]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r5, [fp, #1264]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	sl, [sp, #120]	@, %sfp
	ldrb	r4, [r3, #44]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [sl, #1265]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [sp, #124]	@, %sfp
	ldrb	r9, [r3, #45]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r6, #1266]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [sp, #128]	@, %sfp
	ldrb	ip, [r3, #46]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r5, #1267]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #132]	@, %sfp
	ldrb	fp, [r3, #47]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	fp, [r4, #1268]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	sl, [r3, #48]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r9, [sp, #12]	@, %sfp
	strb	sl, [r9, #1273]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #136]	@, %sfp
	ldrb	r6, [r3, #49]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1274]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	fp, [sp, #140]	@, %sfp
	ldrb	ip, [r3, #50]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [fp, #1275]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [sp, #144]	@, %sfp
	ldrb	r4, [r3, #51]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [sl, #1276]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [sp, #148]	@, %sfp
	ldrb	r9, [r3, #52]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r6, #1277]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	fp, [sp, #152]	@, %sfp
	ldrb	r5, [r3, #53]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r5, [fp, #1278]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #16]	@, %sfp
	ldrb	ip, [r3, #54]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r4, #1279]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [sp, #156]	@, %sfp
	ldrb	sl, [r3, #55]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r9, #1280]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [sp, #160]	@, %sfp
	ldrb	r6, [r3, #56]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [r5, #1281]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #164]	@, %sfp
	ldrb	fp, [r3, #57]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	fp, [r4, #1282]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	sl, [sp, #168]	@, %sfp
	ldrb	ip, [r3, #58]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [sl, #1283]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [sp, #172]	@, %sfp
	ldrb	r9, [r3, #59]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r6, #1284]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r5, [r3, #60]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	fp, [sp, #20]	@, %sfp
	strb	r5, [fp, #1289]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [sp, #176]	@, %sfp
	ldrb	r4, [r3, #61]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [sl, #1290]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [sp, #180]	@, %sfp
	ldrb	ip, [r3, #62]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r9, #1291]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #184]	@, %sfp
	ldrb	r6, [r3, #63]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1292]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #188]	@, %sfp
	ldrb	fp, [r3, #64]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	fp, [r4, #1293]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [sp, #192]	@, %sfp
	ldrb	sl, [r3, #65]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r9, #1294]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	ip, [r3, #66]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r8, #1295]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #196]	@, %sfp
	ldrb	r6, [r3, #67]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1296]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #200]	@, %sfp
	ldrb	fp, [r3, #68]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	fp, [r4, #1297]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [sp, #204]	@, %sfp
	ldrb	sl, [r3, #69]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r9, #1298]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r8, [sp, #208]	@, %sfp
	ldrb	ip, [r3, #70]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r8, #1299]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #212]	@, %sfp
	ldrb	r6, [r3, #71]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1300]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	fp, [r3, #72]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	fp, [r7, #1305]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [sp, #216]	@, %sfp
	ldrb	r4, [r3, #73]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [sl, #1306]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r8, [sp, #220]	@, %sfp
	ldrb	r9, [r3, #74]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r8, #1307]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [sp, #224]	@, %sfp
	ldrb	ip, [r3, #75]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r7, #1308]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [sp, #228]	@, %sfp
	ldrb	r6, [r3, #76]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r6, [r5, #1309]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #232]	@, %sfp
	ldrb	fp, [r3, #77]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	fp, [r4, #1310]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [sp, #24]	@, %sfp
	ldrb	sl, [r3, #78]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	sl, [r9, #1311]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r7, [sp, #236]	@, %sfp
	ldrb	r8, [r3, #79]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r8, [r7, #1312]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r6, [sp, #240]	@, %sfp
	ldrb	ip, [r3, #80]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [r6, #1313]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	fp, [sp, #244]	@, %sfp
	ldrb	r5, [r3, #81]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r5, [fp, #1314]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	sl, [sp, #248]	@, %sfp
	ldrb	r4, [r3, #82]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [sl, #1315]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r8, [sp, #252]	@, %sfp
	ldrb	r9, [r3, #83]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r8, #1316]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldrb	r7, [r3, #84]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldr	r6, [sp, #28]	@, %sfp
	strb	r7, [r6, #1321]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #256]	@, %sfp
	ldrb	ip, [r3, #85]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	ip, [r5, #1322]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #260]	@, %sfp
	ldrb	fp, [r3, #86]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	fp, [r4, #1323]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [sp, #264]	@, %sfp
	ldrb	sl, [r3, #87]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	sl, [r9, #1324]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r7, [sp, #268]	@, %sfp
	ldrb	r8, [r3, #88]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r8, [r7, #1325]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r5, [sp, #272]	@, %sfp
	ldrb	r6, [r3, #89]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r6, [r5, #1326]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	fp, [sp, #32]	@, %sfp
	ldrb	ip, [r3, #90]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	ip, [fp, #1327]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	sl, [sp, #276]	@, %sfp
	ldrb	r4, [r3, #91]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [sl, #1328]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r8, [sp, #280]	@, %sfp
	ldrb	r9, [r3, #92]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r9, [r8, #1329]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r6, [sp, #284]	@, %sfp
	ldrb	r7, [r3, #93]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r7, [r6, #1330]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	fp, [sp, #288]	@, %sfp
	ldrb	r5, [r3, #94]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r5, [fp, #1331]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #36]	@, %sfp
	ldrb	ip, [r3, #95]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	add	r3, r3, #144	@ ivtmp.1742, ivtmp.1742,
	strb	ip, [r4, #1332]	@ <variable>.rightunion.r, <variable>.TreeTab
	bne	.L190	@,
	ldr	r1, [sp, #292]	@, %sfp
	add	r3, r1, #1	@,,
	str	r3, [sp, #292]	@, %sfp
	cmp	r3, #2	@,
	bne	.L189	@,
	movw	sl, #9452	@ tmp727,
	movw	r8, #9453	@ tmp730,
	movw	r7, #9454	@ tmp733,
	movw	r6, #9455	@ tmp736,
	movw	r5, #9456	@ tmp739,
	movw	r4, #9457	@ tmp742,
	movw	ip, #9458	@ tmp745,
	movw	r1, #9459	@ tmp748,
	movw	r2, #9460	@ tmp751,
	movw	fp, #9461	@ tmp754,
	movw	r3, #9462	@ tmp757,
	ldrb	r9, [r0, sl]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, fp]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9463	@ tmp760,
	str	fp, [sp, #12]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9464	@ tmp763,
	str	fp, [sp, #16]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9465	@ tmp766,
	str	fp, [sp, #20]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9466	@ tmp769,
	str	fp, [sp, #24]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9467	@ tmp772,
	str	fp, [sp, #28]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #9468	@ tmp775,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r0, #1992]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #12]	@, %sfp
	strb	r9, [r0, #1986]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	sl, [r0, #1987]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	sl, #9469	@ tmp778,
	strb	r8, [r0, #1988]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r8, #9470	@ tmp781,
	strb	r7, [r0, #1989]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r7, #9471	@ tmp784,
	strb	r6, [r0, #1990]	@ <variable>.leftunion.l, <variable>.TreeTab
	mov	r6, #9472	@ tmp787,
	strb	r5, [r0, #1991]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r5, #9473	@ tmp790,
	strb	ip, [r0, #1993]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r1, [r0, #1994]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r2, [r0, #1995]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r4, [r0, #1996]	@, <variable>.TreeTab
	movw	r4, #9474	@ tmp793,
	ldr	ip, [sp, #16]	@, %sfp
	add	r1, sp, #20
	ldmia	r1, {r1, r2, r9}	@ phole ldm
	strb	ip, [r0, #1997]	@, <variable>.TreeTab
	movw	ip, #9475	@ tmp796,
	strb	r1, [r0, #2002]	@, <variable>.TreeTab
	movw	r1, #9476	@ tmp799,
	strb	r2, [r0, #2003]	@, <variable>.TreeTab
	movw	r2, #9477	@ tmp802,
	strb	fp, [r0, #2005]	@, <variable>.TreeTab
	movw	fp, #9478	@ tmp805,
	strb	r3, [r0, #2006]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #9479	@ tmp808,
	strb	r9, [r0, #2004]	@, <variable>.TreeTab
	ldrb	r9, [r0, sl]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, fp]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9480	@ tmp811,
	str	fp, [sp, #12]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9481	@ tmp814,
	str	fp, [sp, #16]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9482	@ tmp817,
	str	fp, [sp, #20]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9483	@ tmp820,
	str	fp, [sp, #24]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9484	@ tmp823,
	str	fp, [sp, #28]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #9485	@ tmp826,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r9, [r0, #2007]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	sl, [r0, #2008]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	sl, #9486	@ tmp829,
	strb	r4, [r0, #2013]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2018]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #2019]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2020]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #12]	@, %sfp
	ldr	ip, [sp, #16]	@, %sfp
	add	r1, sp, #20
	ldmia	r1, {r1, r2, r9}	@ phole ldm
	strb	r8, [r0, #2009]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #9487	@ tmp832,
	strb	r7, [r0, #2010]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #9488	@ tmp835,
	strb	r6, [r0, #2011]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #9489	@ tmp838,
	strb	r5, [r0, #2012]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r5, #9490	@ tmp841,
	strb	r4, [r0, #2021]	@, <variable>.TreeTab
	movw	r4, #9491	@ tmp844,
	strb	ip, [r0, #2022]	@, <variable>.TreeTab
	movw	ip, #9492	@ tmp847,
	strb	r1, [r0, #2023]	@, <variable>.TreeTab
	movw	r1, #9493	@ tmp850,
	strb	r2, [r0, #2024]	@, <variable>.TreeTab
	movw	r2, #9494	@ tmp853,
	strb	fp, [r0, #2026]	@, <variable>.TreeTab
	movw	fp, #9495	@ tmp856,
	strb	r3, [r0, #2027]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #9496	@ tmp859,
	strb	r9, [r0, #2025]	@, <variable>.TreeTab
	ldrb	r9, [r0, sl]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, fp]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9497	@ tmp862,
	str	fp, [sp, #12]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #9498	@ tmp865,
	str	fp, [sp, #16]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #9499	@ tmp868,
	str	fp, [sp, #20]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8532	@ tmp871,
	str	fp, [sp, #24]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8533	@ tmp874,
	str	fp, [sp, #28]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #8534	@ tmp877,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r0, #2038]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2039]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r1, [r0, #2040]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r2, [r0, #2041]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #12]	@, %sfp
	ldr	ip, [sp, #16]	@, %sfp
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r2, [sp, #24]	@, %sfp
	strb	r9, [r0, #2028]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [sp, #28]	@, %sfp
	strb	sl, [r0, #2029]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	sl, #8535	@ tmp880,
	strb	r8, [r0, #2034]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r8, #8536	@ tmp883,
	strb	r7, [r0, #2035]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r7, #8537	@ tmp886,
	strb	r6, [r0, #2036]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r6, #8538	@ tmp889,
	strb	r5, [r0, #2037]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r5, #8539	@ tmp892,
	strb	r4, [r0, #2042]	@, <variable>.TreeTab
	movw	r4, #8540	@ tmp895,
	strb	ip, [r0, #2043]	@, <variable>.TreeTab
	movw	ip, #8541	@ tmp898,
	strb	r1, [r0, #2044]	@, <variable>.TreeTab
	movw	r1, #8542	@ tmp901,
	strb	r2, [r0, #2045]	@, <variable>.TreeTab
	movw	r2, #8543	@ tmp904,
	strb	fp, [r0, #2051]	@, <variable>.TreeTab
	movw	fp, #8544	@ tmp907,
	strb	r3, [r0, #2052]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #8545	@ tmp910,
	strb	r9, [r0, #2050]	@, <variable>.TreeTab
	ldrb	r9, [r0, sl]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, fp]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8546	@ tmp913,
	str	fp, [sp, #12]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8547	@ tmp916,
	str	fp, [sp, #16]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8548	@ tmp919,
	str	fp, [sp, #20]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8549	@ tmp922,
	str	fp, [sp, #24]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8550	@ tmp925,
	str	fp, [sp, #28]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #8551	@ tmp928,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r4, [r0, #2059]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	ip, [r0, #2060]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r1, [r0, #2061]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2066]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r4, [sp, #12]	@, %sfp
	ldr	ip, [sp, #16]	@, %sfp
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r2, [sp, #24]	@, %sfp
	strb	r9, [r0, #2053]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r9, [sp, #28]	@, %sfp
	strb	sl, [r0, #2054]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	sl, #8552	@ tmp931,
	strb	r8, [r0, #2055]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r8, #8553	@ tmp934,
	strb	r7, [r0, #2056]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r7, #8554	@ tmp937,
	strb	r6, [r0, #2057]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r6, #8555	@ tmp940,
	strb	r5, [r0, #2058]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r5, #8556	@ tmp943,
	strb	r4, [r0, #2067]	@, <variable>.TreeTab
	movw	r4, #8557	@ tmp946,
	strb	ip, [r0, #2068]	@, <variable>.TreeTab
	movw	ip, #8558	@ tmp949,
	strb	r1, [r0, #2069]	@, <variable>.TreeTab
	movw	r1, #8559	@ tmp952,
	strb	r2, [r0, #2070]	@, <variable>.TreeTab
	movw	r2, #8560	@ tmp955,
	strb	fp, [r0, #2072]	@, <variable>.TreeTab
	movw	fp, #8561	@ tmp958,
	strb	r3, [r0, #2073]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #8562	@ tmp961,
	strb	r9, [r0, #2071]	@, <variable>.TreeTab
	ldrb	r9, [r0, sl]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r2, [r0, fp]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8563	@ tmp964,
	str	fp, [sp, #12]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8564	@ tmp967,
	str	fp, [sp, #16]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8565	@ tmp970,
	str	fp, [sp, #20]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8566	@ tmp973,
	str	fp, [sp, #24]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8567	@ tmp976,
	str	fp, [sp, #28]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	movw	r3, #8568	@ tmp979,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r4, [r0, #2084]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2085]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r1, [r0, #2114]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r2, [r0, #2115]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r4, [sp, #12]	@, %sfp
	ldr	ip, [sp, #16]	@, %sfp
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r2, [sp, #24]	@, %sfp
	strb	r9, [r0, #2074]	@ <variable>.leftunion.l, <variable>.TreeTab
	ldr	r9, [sp, #28]	@, %sfp
	strb	sl, [r0, #2075]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	sl, #8569	@ tmp982,
	strb	r8, [r0, #2076]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r8, #8570	@ tmp985,
	strb	r7, [r0, #2077]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r7, #8571	@ tmp988,
	strb	r6, [r0, #2082]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r6, #8572	@ tmp991,
	strb	r5, [r0, #2083]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r5, #8573	@ tmp994,
	strb	r4, [r0, #2116]	@, <variable>.TreeTab
	movw	r4, #8574	@ tmp997,
	strb	ip, [r0, #2117]	@, <variable>.TreeTab
	movw	ip, #8575	@ tmp1000,
	strb	r1, [r0, #2118]	@, <variable>.TreeTab
	mov	r1, #8576	@ tmp1003,
	strb	r2, [r0, #2119]	@, <variable>.TreeTab
	movw	r2, #8577	@ tmp1006,
	strb	fp, [r0, #2121]	@, <variable>.TreeTab
	movw	fp, #8578	@ tmp1009,
	strb	r3, [r0, #2122]	@ <variable>.leftunion.l, <variable>.TreeTab
	movw	r3, #8579	@ tmp1012,
	strb	r9, [r0, #2120]	@, <variable>.TreeTab
	ldrb	r9, [r0, sl]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	sl, [r0, r8]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r8, [r0, r7]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r7, [r0, r6]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r6, [r0, r5]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r5, [r0, r4]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r4, [r0, ip]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	ip, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	r1, [r0, r2]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, fp]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8580	@ tmp1015,
	str	fp, [sp, #12]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8581	@ tmp1018,
	str	fp, [sp, #16]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8582	@ tmp1021,
	str	fp, [sp, #20]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.leftunion.l
	movw	r3, #8583	@ tmp1024,
	str	fp, [sp, #24]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@, <variable>.rightunion.r
	movw	r3, #8584	@ tmp1027,
	str	fp, [sp, #28]	@, %sfp
	ldrb	fp, [r0, r3]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	movw	r3, #8585	@ tmp1030,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	strb	r5, [r0, #2132]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r4, [r0, #2133]	@ <variable>.rightunion.r, <variable>.TreeTab
	ldr	r5, [sp, #16]	@, %sfp
	ldr	r4, [sp, #20]	@, %sfp
	strb	ip, [r0, #2134]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r5, [r0, #2138]	@, <variable>.TreeTab
	strb	r4, [r0, #2139]	@, <variable>.TreeTab
	ldr	ip, [sp, #12]	@, %sfp
	ldr	r4, [sp, #24]	@, %sfp
	ldr	r5, [sp, #28]	@, %sfp
	strb	r1, [r0, #2135]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r1, #8586	@ tmp1033,
	strb	r3, [r0, #2147]	@ <variable>.rightunion.r, <variable>.TreeTab
	movw	r3, #8587	@ tmp1036,
	strb	r9, [r0, #2123]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	sl, [r0, #2124]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r8, [r0, #2125]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r7, [r0, #2130]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	r6, [r0, #2131]	@ <variable>.rightunion.r, <variable>.TreeTab
	strb	r2, [r0, #2136]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2137]	@, <variable>.TreeTab
	strb	r4, [r0, #2140]	@, <variable>.TreeTab
	strb	r5, [r0, #2141]	@, <variable>.TreeTab
	strb	fp, [r0, #2146]	@, <variable>.TreeTab
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.rightunion.r, <variable>.rightunion.r
	ldrb	r2, [r0, r1]	@ zero_extendqisi2	@ <variable>.leftunion.l, <variable>.leftunion.l
	strb	r2, [r0, #2148]	@ <variable>.leftunion.l, <variable>.TreeTab
	strb	ip, [r0, #2149]	@ <variable>.rightunion.r, <variable>.TreeTab
	add	sp, sp, #296	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.fnend
	.size	VP6_BuildTreeTab, .-VP6_BuildTreeTab
	.align	2
	.global	IsFrameSizeChanged
	.type	IsFrameSizeChanged, %function
IsFrameSizeChanged:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #12132	@ tmp136,
	movw	r1, #12276	@ tmp137,
	ldr	r2, [r0, ip]	@ <variable>.OldHeaderInfo.pic_height_in_mb, <variable>.OldHeaderInfo.pic_height_in_mb
	ldr	r3, [r0, r1]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	cmp	r2, r3	@ <variable>.OldHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	movne	r0, #1	@ D.36695,
	bxne	lr	@
	movw	r1, #12280	@ tmp141,
	movw	r2, #12136	@ tmp140,
	ldr	r3, [r0, r1]	@ <variable>.NewHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	ldr	r0, [r0, r2]	@ <variable>.OldHeaderInfo.pic_width_in_mb, <variable>.OldHeaderInfo.pic_width_in_mb
	subs	r0, r0, r3	@ D.36695, <variable>.OldHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	movne	r0, #1	@ D.36695
	bx	lr	@
	.fnend
	.size	IsFrameSizeChanged, .-IsFrameSizeChanged
	.align	2
	.global	VP6DEC_GetRemainImg
	.type	VP6DEC_GetRemainImg, %function
VP6DEC_GetRemainImg:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	b	GetVoLastImageID	@
	.fnend
	.size	VP6DEC_GetRemainImg, .-VP6DEC_GetRemainImg
	.align	2
	.global	VP6DEC_RecycleImage
	.type	VP6DEC_RecycleImage, %function
VP6DEC_RecycleImage:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #13000	@ tmp138,
	mov	r6, r1	@ ImgID, ImgID
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L201	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L201:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VP6DEC_RecycleImage, .-VP6DEC_RecycleImage
	.align	2
	.global	VP6_ConvertBoolToHuff
	.type	VP6_ConvertBoolToHuff, %function
VP6_ConvertBoolToHuff:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r6, r0, #6592	@ tmp200, pVp6CodecInfo,
	add	r5, r6, #4	@ D.35970, tmp200,
	add	r8, r0, #9408	@ tmp201, pVp6CodecInfo,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	add	sl, r0, #512	@ tmp199, pVp6CodecInfo,
	add	r7, r8, #44	@ D.35974, tmp201,
	add	fp, r4, #9472	@ tmp202, pVp6CodecInfo,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	add	r9, fp, #28	@ D.35978, tmp202,
	add	r0, sl, #2	@, tmp199,
	mov	r1, r5	@, D.35970
	bl	VP6_BoolTreeToHuffCodes	@
	add	r6, r6, #52	@ D.35972, tmp200,
	mov	r2, #12	@,
	mov	r0, r7	@, D.35974
	mov	r1, r5	@, D.35970
	add	r5, r8, #68	@ D.35976, tmp201,
	bl	VP6_BuildHuffTree	@
	mov	r0, r7	@, D.35974
	mov	r1, r9	@, D.35978
	add	r7, r4, #6656	@ tmp205, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r0, sl, #13	@, tmp199,
	mov	r1, r6	@, D.35972
	add	sl, r7, #36	@ D.35986, tmp205,
	bl	VP6_BoolTreeToHuffCodes	@
	add	r9, r4, #536	@ D.35982, pVp6CodecInfo,
	mov	r2, #12	@,
	mov	r1, r6	@, D.35972
	mov	r0, r5	@, D.35976
	add	r6, r4, #8512	@ tmp206, pVp6CodecInfo,
	bl	VP6_BuildHuffTree	@
	add	r8, r6, #20	@ D.35990, tmp206,
	mov	r0, r5	@, D.35976
	add	r1, fp, #92	@, tmp202,
	add	fp, r4, #11904	@ tmp207, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r5, fp, #28	@ D.35994, tmp207,
	mov	r1, sl	@, D.35986
	mov	r0, r9	@, D.35982
	add	r7, r7, #92	@ D.35988, tmp205,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r2, #9	@,
	mov	r0, r8	@, D.35990
	mov	r1, sl	@, D.35986
	bl	VP6_BuildHuffTree	@
	add	sl, r6, #48	@ D.35992, tmp206,
	mov	r0, r8	@, D.35990
	mov	r1, r5	@, D.35994
	bl	VP6_BuildHuffLookupTable	@
	mov	r1, r7	@, D.35988
	add	r0, r9, #14	@, D.35982,
	add	r6, r4, #6784	@ ivtmp.2267, pVp6CodecInfo,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r1, r7	@, D.35988
	mov	r2, #9	@,
	mov	r0, sl	@, D.35992
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, D.35992
	add	r1, fp, #92	@, tmp207,
	add	r5, r4, #8576	@ ivtmp.2269, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r8, r4, #9600	@ ivtmp.2271, pVp6CodecInfo,
	add	r6, r6, #20	@ ivtmp.2267, ivtmp.2267,
	add	r5, r5, #12	@ ivtmp.2269, ivtmp.2269,
	add	r8, r8, #28	@ ivtmp.2271, ivtmp.2271,
	mov	r7, #0	@ ivtmp.2266,
.L204:
	add	lr, r7, r4	@ tmp214, ivtmp.2266, pVp6CodecInfo
	mov	r1, r6	@, ivtmp.2267
	add	r0, lr, #564	@, tmp214,
	add	sl, r6, #48	@ temp.2358, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r5	@, ivtmp.2269
	mov	r1, r6	@, ivtmp.2267
	bl	VP6_BuildHuffTree	@
	mov	r0, r5	@, ivtmp.2269
	mov	r1, r8	@, ivtmp.2271
	add	r9, r5, #24	@ temp.2359, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp218, ivtmp.2266, pVp6CodecInfo
	add	r0, r1, #572	@, tmp218,
	mov	r1, sl	@, temp.2358
	add	r0, r0, #3	@,,
	add	fp, r6, #96	@ temp.2362, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, sl	@, temp.2358
	mov	r2, #12	@,
	mov	r0, r9	@, temp.2359
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, temp.2359
	add	r1, r8, #64	@, ivtmp.2271,
	add	sl, r5, #48	@ temp.2363, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp223, ivtmp.2266, pVp6CodecInfo
	add	r3, ip, #584	@, tmp223,
	mov	r1, fp	@, temp.2362
	add	r0, r3, #2	@,,
	add	r2, r6, #144	@, ivtmp.2267,
	str	r2, [sp, #4]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, fp	@, temp.2362
	mov	r0, sl	@, temp.2363
	add	r9, r5, #72	@ temp.2367, ivtmp.2269,
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2363
	add	r1, r8, #128	@, ivtmp.2271,
	add	fp, r6, #192	@ temp.2370, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp228, ivtmp.2266, pVp6CodecInfo
	add	r0, r1, #596	@, tmp228,
	ldr	r1, [sp, #4]	@, %sfp
	add	r0, r0, #1	@,,
	add	sl, r5, #96	@ temp.2371, ivtmp.2269,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, r9	@, temp.2367
	ldr	r1, [sp, #4]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, temp.2367
	add	r1, r8, #192	@, ivtmp.2271,
	add	r9, r6, #240	@ temp.2374, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp232, ivtmp.2266, pVp6CodecInfo
	add	r0, ip, #608	@, tmp232,
	mov	r1, fp	@, temp.2370
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, fp	@, temp.2370
	mov	r2, #12	@,
	mov	r0, sl	@, temp.2371
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2371
	add	r1, r8, #256	@, ivtmp.2271,
	add	fp, r5, #120	@ temp.2375, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	r3, r7, r4	@ tmp237, ivtmp.2266, pVp6CodecInfo
	add	r2, r3, #616	@, tmp237,
	mov	r1, r9	@, temp.2374
	add	r0, r2, #3	@,,
	add	sl, r6, #288	@ temp.2378, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2374
	mov	r0, fp	@, temp.2375
	bl	VP6_BuildHuffTree	@
	mov	r0, fp	@, temp.2375
	add	r1, r8, #320	@, ivtmp.2271,
	add	fp, r5, #144	@ temp.2379, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp242, ivtmp.2266, pVp6CodecInfo
	add	r0, r1, #628	@, tmp242,
	mov	r1, sl	@, temp.2378
	add	r0, r0, #2	@,,
	add	r9, r6, #336	@ temp.2382, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, sl	@, temp.2378
	mov	r0, fp	@, temp.2379
	bl	VP6_BuildHuffTree	@
	mov	r0, fp	@, temp.2379
	add	r1, r8, #384	@, ivtmp.2271,
	add	sl, r5, #168	@ temp.2383, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp247, ivtmp.2266, pVp6CodecInfo
	add	r3, ip, #640	@, tmp247,
	mov	r1, r9	@, temp.2382
	add	r0, r3, #1	@,,
	add	fp, r6, #384	@ temp.2386, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2382
	mov	r2, #12	@,
	mov	r0, sl	@, temp.2383
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2383
	add	r1, r8, #448	@, ivtmp.2271,
	add	sl, r5, #192	@ temp.2387, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	r2, r7, r4	@ tmp251, ivtmp.2266, pVp6CodecInfo
	mov	r1, fp	@, temp.2386
	add	r0, r2, #652	@, tmp251,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, fp	@, temp.2386
	mov	r0, sl	@, temp.2387
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2387
	add	r1, r8, #512	@, ivtmp.2271,
	add	r9, r6, #432	@ temp.2390, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp256, ivtmp.2266, pVp6CodecInfo
	add	sl, r5, #216	@ temp.2391, ivtmp.2269,
	add	r0, r1, #660	@, tmp256,
	add	r0, r0, #3	@,,
	mov	r1, r9	@, temp.2390
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2390
	mov	r2, #12	@,
	mov	r0, sl	@, temp.2391
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2391
	add	r1, r8, #576	@, ivtmp.2271,
	add	fp, r6, #480	@ temp.2394, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp261, ivtmp.2266, pVp6CodecInfo
	add	r3, ip, #672	@, tmp261,
	add	r9, r5, #240	@ temp.2395, ivtmp.2269,
	add	r0, r3, #2	@,,
	mov	r1, fp	@, temp.2394
	add	r2, r6, #528	@, ivtmp.2267,
	str	r2, [sp, #4]	@, %sfp
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, fp	@, temp.2394
	mov	r0, r9	@, temp.2395
	bl	VP6_BuildHuffTree	@
	mov	r0, r9	@, temp.2395
	add	r1, r8, #640	@, ivtmp.2271,
	add	sl, r5, #264	@ temp.2399, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp266, ivtmp.2266, pVp6CodecInfo
	add	r0, r1, #684	@, tmp266,
	ldr	r1, [sp, #4]	@, %sfp
	add	r0, r0, #1	@,,
	add	r9, r6, #576	@ temp.2402, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, sl	@, temp.2399
	ldr	r1, [sp, #4]	@, %sfp
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2399
	add	r1, r8, #704	@, ivtmp.2271,
	add	fp, r5, #288	@ temp.2403, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp270, ivtmp.2266, pVp6CodecInfo
	add	r0, ip, #696	@, tmp270,
	mov	r1, r9	@, temp.2402
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2402
	mov	r2, #12	@,
	mov	r0, fp	@, temp.2403
	bl	VP6_BuildHuffTree	@
	mov	r0, fp	@, temp.2403
	add	r1, r8, #768	@, ivtmp.2271,
	add	r9, r6, #624	@ temp.2406, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	r3, r7, r4	@ tmp275, ivtmp.2266, pVp6CodecInfo
	add	r2, r3, #704	@, tmp275,
	add	sl, r5, #312	@ temp.2407, ivtmp.2269,
	add	r0, r2, #3	@,,
	mov	r1, r9	@, temp.2406
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r9	@, temp.2406
	mov	r0, sl	@, temp.2407
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2407
	add	r1, r8, #832	@, ivtmp.2271,
	add	fp, r6, #672	@ temp.2410, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp280, ivtmp.2266, pVp6CodecInfo
	add	sl, r5, #336	@ temp.2411, ivtmp.2269,
	add	r0, r1, #716	@, tmp280,
	add	r0, r0, #2	@,,
	mov	r1, fp	@, temp.2410
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, fp	@, temp.2410
	mov	r0, sl	@, temp.2411
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2411
	add	r1, r8, #896	@, ivtmp.2271,
	add	r9, r6, #720	@ temp.2414, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	ip, r7, r4	@ tmp285, ivtmp.2266, pVp6CodecInfo
	add	r3, ip, #728	@, tmp285,
	add	fp, r5, #360	@ temp.2415, ivtmp.2269,
	add	r0, r3, #1	@,,
	mov	r1, r9	@, temp.2414
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2414
	mov	r2, #12	@,
	mov	r0, fp	@, temp.2415
	bl	VP6_BuildHuffTree	@
	mov	r0, fp	@, temp.2415
	add	r1, r8, #960	@, ivtmp.2271,
	add	fp, r6, #768	@ temp.2418, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	add	sl, r5, #384	@ temp.2419, ivtmp.2269,
	add	r2, r7, r4	@ tmp289, ivtmp.2266, pVp6CodecInfo
	mov	r1, fp	@, temp.2418
	add	r0, r2, #740	@, tmp289,
	add	r9, r6, #816	@ temp.2422, ivtmp.2267,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r0, sl	@, temp.2419
	mov	r1, fp	@, temp.2418
	bl	VP6_BuildHuffTree	@
	mov	r0, sl	@, temp.2419
	add	r1, r8, #1024	@, ivtmp.2271,
	add	sl, r5, #408	@ temp.2423, ivtmp.2269,
	bl	VP6_BuildHuffLookupTable	@
	add	r1, r7, r4	@ tmp294, ivtmp.2266, pVp6CodecInfo
	add	r0, r1, #748	@, tmp294,
	mov	r1, r9	@, temp.2422
	add	r0, r0, #3	@,,
	add	r7, r7, #198	@ ivtmp.2266, ivtmp.2266,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r9	@, temp.2422
	mov	r2, #12	@,
	mov	r0, sl	@, temp.2423
	bl	VP6_BuildHuffTree	@
	add	r1, r8, #1088	@, ivtmp.2271,
	mov	r0, sl	@, temp.2423
	add	r6, r6, #864	@ ivtmp.2267, ivtmp.2267,
	bl	VP6_BuildHuffLookupTable	@
	cmp	r7, #396	@ ivtmp.2266,
	add	r5, r5, #432	@ ivtmp.2269, ivtmp.2269,
	add	r8, r8, #1152	@ ivtmp.2271, ivtmp.2271,
	bne	.L204	@,
	mov	r0, r4	@, pVp6CodecInfo
	bl	VP6_BuildTreeTab	@
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC1	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
	.fnend
	.size	VP6_ConvertBoolToHuff, .-VP6_ConvertBoolToHuff
	.align	2
	.global	VP6_DecodeDecide
	.type	VP6_DecodeDecide, %function
VP6_DecodeDecide:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #12300	@ tmp143,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [r0, r3]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L224	@,
	movw	r2, #12292	@ tmp146,
	ldr	r1, [r0, r2]	@ <variable>.Vp6CodecInfo.UsedDecMode, <variable>.Vp6CodecInfo.UsedDecMode
	sub	r0, r1, #2	@ tmp147, <variable>.Vp6CodecInfo.UsedDecMode,
	cmp	r0, #1	@ tmp147,
	bls	.L210	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.2445, <variable>.s32DecMode
.L211:
	movw	r0, #12292	@ tmp178,
	str	r2, [r5, r0]	@ prephitmp.2445, <variable>.Vp6CodecInfo.UsedDecMode
	cmp	r2, #4	@ prephitmp.2445,
	ldrls	pc, [pc, r2, asl #2]	@ prephitmp.2445
	b	.L212	@
.L216:
	.word	.L213
	.word	.L213
	.word	.L214
	.word	.L223
	.word	.L213
.L214:
	movw	lr, #12304	@ tmp179,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ D.36280, <variable>.Vp6CodecInfo.FrameType
	cmp	r2, #0	@ D.36280,
	bne	.L225	@,
.L217:
	movw	r4, #13000	@ tmp196,
	movw	lr, #12320	@ tmp198,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	ldr	r1, [r5, lr]	@, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pFwdImg,
	beq	.L226	@,
	movw	r2, #12304	@ tmp191,
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L218	@,
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r4, #180]	@ D.36307, <variable>.error_level
	ldr	r3, [r0, #0]	@ D.36308, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.36307, D.36308
	bls	.L218	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
.L223:
	mov	r0, #0	@ D.36260,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L210:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.2445, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.2445,
	cmpne	r2, #1	@, prephitmp.2445,
	bhi	.L211	@,
	movw	r8, #13000	@ tmp159,
	movw	r7, #12316	@ tmp161,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r4, #12320	@ tmp165,
	bl	dprint_vfmw	@
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, r7]	@, <variable>.Vp6CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r5, r4]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r6, #0	@ tmp168,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	str	r6, [r5, r7]	@ tmp168, <variable>.Vp6CodecInfo.GoldenFsID
	str	r6, [r5, r4]	@ tmp168, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #12296	@ tmp175,
	str	r6, [r5, r2]	@ tmp168, <variable>.Vp6CodecInfo.RefNum
	str	r0, [r5, r7]	@ D.36278, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r5, r4]	@ D.36278, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r2, [r1, #8]	@ prephitmp.2445, <variable>.s32DecMode
	b	.L211	@
.L224:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36260, <variable>.Vp6CodecInfo.Imgbuf_allocated
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L212:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36260,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L213:
	movw	ip, #12304	@ tmp181,
	ldrb	r4, [r5, ip]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L217	@,
	movw	r3, #12296	@ tmp183,
	ldr	r4, [r5, r3]	@ <variable>.Vp6CodecInfo.RefNum, <variable>.Vp6CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.Vp6CodecInfo.RefNum,
	bne	.L217	@,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC5	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC5	@,
	movt	r2, #:upper16:.LC6	@,
	mov	r3, r4	@, <variable>.Vp6CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36260, <variable>.Vp6CodecInfo.RefNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L218:
	mov	r0, #1	@ D.36260,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L225:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36260,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L226:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, .L227	@,
	movt	r1, #:upper16:.LC8	@,
	movw	r3, #2115	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36260, pFwdImg
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L228:
	.align	2
.L227:
	.word	.LANCHOR0+120
	.fnend
	.size	VP6_DecodeDecide, .-VP6_DecodeDecide
	.align	2
	.global	VP6_SetImgFormat
	.type	VP6_SetImgFormat, %function
VP6_SetImgFormat:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r1, #13000	@ tmp144,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #12312	@ tmp146,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.Vp6CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r1, #12304	@ tmp148,
	mov	lr, #0	@ tmp153,
	ldrb	r2, [r5, r1]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	mov	r1, lr	@, tmp153
	strb	lr, [r4, #288]	@ tmp153, <variable>.ImageDnr.pic_structure
	mov	lr, #8	@ tmp157,
	and	r3, r2, #3	@ D.36878, <variable>.Vp6CodecInfo.FrameType,
	str	lr, [r4, #308]	@ tmp157, <variable>.ImageDnr.QP_U
	orr	ip, r3, #7168	@ tmp150, D.36878,
	mov	r2, #1	@ tmp155,
	str	r3, [r4, #136]	@ D.36878, <variable>.bottom_fld_type
	orr	ip, ip, #32	@ tmp150, tmp150,
	str	r3, [r4, #132]	@ D.36878, <variable>.top_fld_type
	str	ip, [r4, #140]	@ tmp150, <variable>.format
	mov	ip, #10	@ tmp152,
	strb	r2, [r4, #293]	@ tmp155, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #300]	@ tmp152, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #295]	@ tmp155, <variable>.ImageDnr.use_pic_qp_en
	str	lr, [r4, #304]	@ tmp157, <variable>.ImageDnr.QP_Y
	str	lr, [r4, #312]	@ tmp157, <variable>.ImageDnr.QP_V
	bl	SetAspectRatio	@
	movw	r0, #12504	@ tmp162,
	ldr	r3, [r5, r0]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r1, #12500	@ tmp164,
	mov	r3, r3, asl #4	@ prephitmp.2479, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb,
	str	r3, [r4, #144]	@ prephitmp.2479, <variable>.image_width
	ldr	r2, [r5, r1]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	mov	r2, r2, asl #4	@ D.36885, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb,
	str	r2, [r4, #148]	@ D.36885, <variable>.image_height
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	movne	r2, r3	@ <variable>.image_width, prephitmp.2479
	beq	.L235	@,
.L231:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	r3, r3, lsr #1	@ tmp180, prephitmp.2479,
	str	r2, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #160]	@ tmp180, <variable>.disp_center_x
	mov	r1, r0, lsr #1	@ tmp182, <variable>.image_height,
	str	r0, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	r1, [r4, #164]	@ tmp182, <variable>.disp_center_y
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L235:
	ldr	r1, [r4, #172]	@ D.36890, <variable>.image_stride
	mov	r2, r2, lsr #4	@ tmp170, D.36885,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp168, D.36890,
	add	ip, r3, r1	@ tmp175, <variable>.luma_phy_addr, D.36890
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r2, r2, lr	@ D.36896, tmp170, tmp168
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	ip, [r4, #96]	@ tmp175, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	add	r3, r2, r3	@ tmp172, D.36896, <variable>.luma_phy_addr
	add	r2, r0, r2	@ tmp174, <variable>.luma_vir_addr, D.36896
	str	r3, [r4, #108]	@ tmp172, <variable>.chrom_phy_addr
	add	r0, r3, r1	@ tmp176, tmp172, D.36890
	str	r2, [r4, #36]	@ tmp174, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp176, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp172
	str	r3, [r4, #92]	@ tmp172, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	r3, r2	@ prephitmp.2479, <variable>.image_width
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L231	@
	.fnend
	.size	VP6_SetImgFormat, .-VP6_SetImgFormat
	.align	2
	.global	VP6DEC_VDMPostProc
	.type	VP6DEC_VDMPostProc, %function
VP6DEC_VDMPostProc:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r2, r1	@, ErrRatio
	mov	r4, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	mov	r1, r4	@, pCtx
	movw	r5, #13000	@ tmp147,
	bl	ReleasePacket	@
	movw	r3, #12312	@ tmp149,
	ldr	r1, [r4, r3]	@, <variable>.Vp6CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pCurImg,
	beq	.L253	@,
	cmp	r6, #0	@ ErrRatio,
	blt	.L239	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ iftmp.505,
	str	r6, [r3, #180]	@ iftmp.505, <variable>.error_level
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #0]	@ D.36938, <variable>.s32RefErrThr
	cmp	r6, r3	@ iftmp.505, D.36938
	bhi	.L254	@,
.L240:
	mov	r0, r4	@, pCtx
	mov	r8, #1	@ tmp173,
	bl	VP6_SetImgFormat	@
	movw	ip, #12292	@ tmp174,
	ldr	r6, [r4, ip]	@ <variable>.Vp6CodecInfo.UsedDecMode, <variable>.Vp6CodecInfo.UsedDecMode
	movw	r2, #12296	@ tmp172,
	str	r8, [r4, r2]	@ tmp173, <variable>.Vp6CodecInfo.RefNum
	cmp	r6, #2	@ <variable>.Vp6CodecInfo.UsedDecMode,
	beq	.L255	@,
.L241:
	movw	r2, #12312	@ tmp185,
	movw	r0, #12324	@ tmp186,
	ldr	r1, [r4, r2]	@ prephitmp.2510, <variable>.Vp6CodecInfo.CurFsID
	str	r1, [r4, r0]	@ prephitmp.2510, <variable>.Vp6CodecInfo.ToQueFsID
.L242:
	cmn	r1, #1	@ prephitmp.2510,
	beq	.L243	@,
	movw	r5, #13000	@ tmp187,
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	r7, #12324	@ tmp191,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.ToQueFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L256	@,
	add	ip, r4, #12608	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, ip, #40	@,,
	mov	r1, #10	@,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r8, r0	@ ret,
	bne	.L257	@,
.L243:
	movw	r6, #12320	@ tmp211,
	movw	r3, #12316	@ tmp212,
	ldr	lr, [r4, r3]	@ <variable>.Vp6CodecInfo.GoldenFsID, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	r1, [r4, r6]	@ prephitmp.2523, <variable>.Vp6CodecInfo.FwdFsID
	cmp	r1, lr	@ prephitmp.2523, <variable>.Vp6CodecInfo.GoldenFsID
	beq	.L245	@,
	movw	r5, #12312	@ tmp214,
	ldr	r8, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, r8	@ prephitmp.2523, <variable>.Vp6CodecInfo.CurFsID
	beq	.L246	@,
	movw	r2, #13000	@ tmp216,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2523, <variable>.Vp6CodecInfo.CurFsID
.L246:
	movw	lr, #13000	@ tmp229,
	movw	r8, #12320	@ tmp228,
	str	r1, [r4, r8]	@ prephitmp.2523, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #12304	@ tmp231,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp6CodecInfo.FrameType,
	bne	.L258	@,
	movw	r5, #12312	@ tmp236,
	movw	r3, #12316	@ tmp235,
	ldr	r1, [r4, r3]	@ prephitmp.2539, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2539, <variable>.Vp6CodecInfo.CurFsID
	beq	.L249	@,
.L259:
	movw	lr, #13000	@ tmp238,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2539, <variable>.Vp6CodecInfo.CurFsID
.L249:
	movw	r2, #12316	@ tmp241,
	movw	r8, #13000	@ tmp242,
	str	r1, [r4, r2]	@ prephitmp.2539, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L251:
	mov	r8, #1	@ ret,
.L238:
	mov	r0, r8	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L258:
	movw	r0, #12308	@ tmp233,
	ldr	r2, [r4, r0]	@ <variable>.Vp6CodecInfo.RefreshGoldenFrame, <variable>.Vp6CodecInfo.RefreshGoldenFrame
	cmp	r2, #0	@ <variable>.Vp6CodecInfo.RefreshGoldenFrame,
	beq	.L251	@,
	movw	r5, #12312	@ tmp236,
	movw	r3, #12316	@ tmp235,
	ldr	r1, [r4, r3]	@ prephitmp.2539, <variable>.Vp6CodecInfo.GoldenFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2539, <variable>.Vp6CodecInfo.CurFsID
	bne	.L259	@,
	b	.L249	@
.L239:
	mov	r6, #0	@ tmp245,
	str	r6, [r3, #180]	@ tmp245, <variable>.error_level
	b	.L240	@
.L255:
	movw	r3, #12304	@ tmp176,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	lr, #0	@ <variable>.Vp6CodecInfo.FrameType,
	beq	.L241	@,
	movw	r5, #12324	@ tmp178,
	movw	r1, #13000	@ tmp180,
	movw	r8, #12312	@ tmp182,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mvn	r6, #0	@ tmp179,
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.CurFsID
	str	r6, [r4, r5]	@ tmp179, <variable>.Vp6CodecInfo.ToQueFsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, r5]	@ prephitmp.2510, <variable>.Vp6CodecInfo.ToQueFsID
	b	.L242	@
.L257:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	sl, #0	@ tmp201,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #192]	@ tmp201, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #196]	@ tmp201, <variable>.p_usrdat
	mov	r2, sl	@, tmp201
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r0, sl	@, tmp201
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L238	@
.L245:
	movw	r7, #13000	@ tmp219,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	subs	r2, r0, #0	@ D.36971,
	movwne	r0, #12312	@ tmp221,
	ldrne	r1, [r4, r0]	@ prephitmp.2523, <variable>.Vp6CodecInfo.CurFsID
	bne	.L246	@
.L247:
	movw	r5, #12312	@ tmp223,
	ldr	r1, [r4, r6]	@ prephitmp.2523, <variable>.Vp6CodecInfo.FwdFsID
	ldr	ip, [r4, r5]	@ <variable>.Vp6CodecInfo.CurFsID, <variable>.Vp6CodecInfo.CurFsID
	cmp	r1, ip	@ prephitmp.2523, <variable>.Vp6CodecInfo.CurFsID
	beq	.L246	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@ prephitmp.2523, <variable>.Vp6CodecInfo.CurFsID
	b	.L246	@
.L254:
	mov	r2, r6	@, iftmp.505
	mov	r0, #1	@,
	movw	r6, #12316	@ tmp156,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r7, #12320	@ tmp160,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	sl, #0	@ tmp163,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mvn	r8, #0	@ ret,
	str	sl, [r4, r6]	@ tmp163, <variable>.Vp6CodecInfo.GoldenFsID
	str	sl, [r4, r7]	@ tmp163, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #12296	@ tmp170,
	str	sl, [r4, r1]	@ tmp163, <variable>.Vp6CodecInfo.RefNum
	str	r0, [r4, r6]	@ D.36945, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.36945, <variable>.Vp6CodecInfo.FwdFsID
	b	.L238	@
.L256:
	mov	r2, r6	@, pToQueImg
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ ret,
	b	.L238	@
.L253:
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ ret,
	b	.L238	@
	.fnend
	.size	VP6DEC_VDMPostProc, .-VP6DEC_VDMPostProc
	.align	2
	.global	VP6_CfgTable
	.type	VP6_CfgTable, %function
VP6_CfgTable:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	add	r7, sp, #16	@ tmp799,,
	add	r6, r0, #2240	@ tmp161, pVp6CodecInfo,
	add	lr, r7, #4	@ tmp803, tmp799,
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r8, #0	@ tmp157,
	str	r1, [sp, #12]	@ pPictureHeader, %sfp
	str	r8, [lr], #4	@ tmp157, _ptr_msg_bank
	add	r1, r0, #4	@, pVp6CodecInfo,
	str	r8, [lr], #4	@ tmp157, _ptr_msg_bank
	mov	r2, #10	@,
	str	r8, [lr, #0]	@ tmp157, _ptr_msg_bank
	add	r0, r6, #2	@, tmp161,
	str	r8, [sp, #16]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	add	r1, r4, #14	@, pVp6CodecInfo,
	mov	r2, #10	@,
	add	r0, r6, #18	@, tmp161,
	add	fp, r4, #2304	@ tmp178, pVp6CodecInfo,
	bl	memcpy	@
	add	r0, r6, #34	@, tmp161,
	add	r1, r4, #24	@, pVp6CodecInfo,
	mov	r2, #10	@,
	bl	memcpy	@
	add	r1, r4, #44	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #2	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #53	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #18	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #62	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #34	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #71	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #50	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #80	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #66	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #89	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #82	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #98	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #98	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #107	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #114	@, tmp178,
	add	r5, fp, #162	@ tmp801, tmp178,
	add	sl, r4, #134	@ tmp802, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #116	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #130	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #125	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #146	@, tmp178,
	bl	memcpy	@
	mov	r1, sl	@, tmp802
	mov	r2, #9	@,
	mov	r0, r5	@, tmp801
	bl	memcpy	@
	add	r1, r4, #143	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #178	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #152	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #194	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #161	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #210	@, tmp178,
	bl	memcpy	@
	add	r1, r4, #170	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, fp, #226	@, tmp178,
	bl	memcpy	@
	add	r0, fp, #242	@, tmp178,
	add	r1, r4, #179	@, pVp6CodecInfo,
	mov	r2, #9	@,
	bl	memcpy	@
	add	r1, r4, #188	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #96	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #197	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #112	@, tmp801,
	bl	memcpy	@
	add	r9, r4, #224	@ ivtmp.2693, pVp6CodecInfo,
	add	r1, r4, #206	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #128	@, tmp801,
	add	r6, sl, #180	@ ivtmp.2693, tmp802,
	bl	memcpy	@
	add	r1, r4, #215	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #144	@, tmp801,
	bl	memcpy	@
	mov	r1, r9	@, ivtmp.2693
	mov	r2, #9	@,
	add	r0, r5, #160	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #233	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #176	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #242	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #192	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #251	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #208	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #260	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #224	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #45	@, ivtmp.2693,
	mov	r2, #9	@,
	add	r0, r5, #240	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #54	@, ivtmp.2693,
	mov	r2, #9	@,
	add	r0, r5, #256	@, tmp801,
	bl	memcpy	@
	add	r1, r9, #63	@, ivtmp.2693,
	mov	r2, #9	@,
	add	r0, r5, #272	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #296	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #288	@, tmp801,
	add	ip, r4, #2944	@, pVp6CodecInfo,
	str	ip, [sp, #8]	@, %sfp
	bl	memcpy	@
	add	r1, r9, #81	@, ivtmp.2693,
	mov	r2, #9	@,
	add	r0, r5, #304	@, tmp801,
	bl	memcpy	@
	mov	r1, r6	@, ivtmp.2693
	mov	r2, #9	@,
	add	r0, r5, #320	@, tmp801,
	bl	memcpy	@
	add	r1, sl, #189	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #336	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #332	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #352	@, tmp801,
	bl	memcpy	@
	add	r1, sl, #207	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #368	@, tmp801,
	bl	memcpy	@
	add	r1, sl, #216	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #384	@, tmp801,
	bl	memcpy	@
	add	r1, sl, #225	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #400	@, tmp801,
	bl	memcpy	@
	add	r1, r4, #368	@, pVp6CodecInfo,
	mov	r2, #9	@,
	add	r0, r5, #416	@, tmp801,
	bl	memcpy	@
	add	r1, sl, #243	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #432	@, tmp801,
	bl	memcpy	@
	add	r1, sl, #252	@, tmp802,
	mov	r2, #9	@,
	add	r0, r5, #448	@, tmp801,
	bl	memcpy	@
	add	r1, r6, #81	@, ivtmp.2693,
	mov	r2, #9	@,
	add	r0, r5, #464	@, tmp801,
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #489]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	ldrb	r9, [r4, #487]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	mov	r2, #16	@,
	ldr	fp, [sp, #8]	@, %sfp
	mov	r1, r7	@, tmp799
	ldrb	lr, [r4, #484]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	ip, [r4, #485]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	add	r0, fp, #2	@,,
	ldrb	r6, [r4, #0]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsMvShortProb, <variable>.IsMvShortProb
	ldrb	sl, [r4, #486]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	fp, [r4, #488]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	str	r3, [sp, #4]	@, %sfp
	ldrb	r3, [r4, #490]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	strb	r9, [sp, #21]	@ <variable>.MvShortProbs, _ptr_msg_bank
	ldr	r9, [sp, #4]	@, %sfp
	strb	lr, [sp, #18]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	ip, [sp, #19]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r3, [sp, #24]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r6, [sp, #16]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r5, [sp, #17]	@ <variable>.IsMvShortProb, _ptr_msg_bank
	strb	sl, [sp, #20]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	fp, [sp, #22]	@, _ptr_msg_bank
	strb	r9, [sp, #23]	@, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #504]	@ zero_extendqisi2	@, <variable>.MvSizeProbs
	ldrb	r9, [r4, #502]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	mov	r2, #16	@,
	ldr	fp, [sp, #8]	@, %sfp
	mov	r1, r7	@, tmp799
	ldrb	lr, [r4, #499]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	ip, [r4, #500]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	add	r0, fp, #18	@,,
	ldrb	r6, [r4, #0]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r5, [r4, #498]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	sl, [r4, #501]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	fp, [r4, #503]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	str	r3, [sp, #4]	@, %sfp
	ldrb	r3, [r4, #505]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	strb	r9, [sp, #21]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	ldr	r9, [sp, #4]	@, %sfp
	strb	lr, [sp, #18]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	ip, [sp, #19]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r3, [sp, #24]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r6, [sp, #16]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r5, [sp, #17]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	sl, [sp, #20]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	fp, [sp, #22]	@, _ptr_msg_bank
	strb	r9, [sp, #23]	@, _ptr_msg_bank
	strb	r8, [sp, #25]	@ tmp157, _ptr_msg_bank
	strb	r8, [sp, #26]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #496]	@ zero_extendqisi2	@, <variable>.MvShortProbs
	ldrb	r9, [r4, #494]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	mov	r2, #16	@,
	ldr	fp, [sp, #8]	@, %sfp
	mov	r1, r7	@, tmp799
	ldrb	lr, [r4, #491]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	ip, [r4, #492]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	add	r0, fp, #34	@,,
	ldrb	r6, [r4, #1]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r5, [r4, #3]	@ zero_extendqisi2	@ <variable>.IsMvShortProb, <variable>.IsMvShortProb
	ldrb	sl, [r4, #493]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	ldrb	fp, [r4, #495]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	str	r3, [sp, #4]	@, %sfp
	ldrb	r3, [r4, #497]	@ zero_extendqisi2	@ <variable>.MvShortProbs, <variable>.MvShortProbs
	strb	r9, [sp, #21]	@ <variable>.MvShortProbs, _ptr_msg_bank
	ldr	r9, [sp, #4]	@, %sfp
	strb	lr, [sp, #18]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	ip, [sp, #19]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r3, [sp, #24]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	r6, [sp, #16]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r5, [sp, #17]	@ <variable>.IsMvShortProb, _ptr_msg_bank
	strb	sl, [sp, #20]	@ <variable>.MvShortProbs, _ptr_msg_bank
	strb	fp, [sp, #22]	@, _ptr_msg_bank
	strb	r9, [sp, #23]	@, _ptr_msg_bank
	bl	memcpy	@
	mov	r0, r7	@, tmp799
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	ip, [r4, #512]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r3, [r4, #513]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	mov	r1, r7	@, tmp799
	ldrb	sl, [r4, #1]	@ zero_extendqisi2	@ <variable>.MvSignProbs, <variable>.MvSignProbs
	ldrb	r9, [r4, #506]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	fp, [r4, #507]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r7, [r4, #508]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r6, [r4, #509]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	r5, [r4, #510]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldrb	lr, [r4, #511]	@ zero_extendqisi2	@ <variable>.MvSizeProbs, <variable>.MvSizeProbs
	ldr	r2, [sp, #8]	@, %sfp
	strb	ip, [sp, #23]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	add	r0, r2, #50	@,,
	mov	r2, #16	@,
	strb	r3, [sp, #24]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	sl, [sp, #16]	@ <variable>.MvSignProbs, _ptr_msg_bank
	strb	r9, [sp, #17]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	fp, [sp, #18]	@, _ptr_msg_bank
	strb	r7, [sp, #19]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r6, [sp, #20]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r5, [sp, #21]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	lr, [sp, #22]	@ <variable>.MvSizeProbs, _ptr_msg_bank
	strb	r8, [sp, #26]	@ tmp157, _ptr_msg_bank
	strb	r8, [sp, #25]	@ tmp157, _ptr_msg_bank
	bl	memcpy	@
	ldr	ip, [sp, #12]	@, %sfp
	ldr	r3, [ip, #68]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r3, r8	@ <variable>.UseHuffman,
	bne	.L262	@,
	add	r5, r4, #1152	@ D.36633, pVp6CodecInfo,
	add	r7, r4, #4096	@ tmp346, pVp6CodecInfo,
	add	r0, r7, #2	@, tmp346,
	mov	r2, #11	@,
	mov	r1, r5	@, D.36633
	add	r8, r4, #536	@ D.36641, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r5, #11	@, D.36633,
	add	r0, r7, #18	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r5, #22	@, D.36633,
	add	r0, r7, #34	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r5, #33	@, D.36633,
	add	r0, r7, #50	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r5, #44	@, D.36633,
	add	r0, r7, #66	@, tmp346,
	mov	r2, #11	@,
	bl	memcpy	@
	add	sl, r4, #4736	@ tmp381, pVp6CodecInfo,
	add	r1, r5, #55	@, D.36633,
	add	r0, r7, #82	@, tmp346,
	mov	r2, #11	@,
	add	r7, r4, #4160	@ tmp392, pVp6CodecInfo,
	add	r5, r7, #34	@ D.36644, tmp392,
	add	r6, r4, #564	@ D.36654, pVp6CodecInfo,
	bl	memcpy	@
	mov	r1, r8	@, D.36641
	mov	r2, #14	@,
	add	r0, sl, #34	@, tmp381,
	bl	memcpy	@
	add	r1, r8, #14	@, D.36641,
	mov	r2, #14	@,
	add	r0, sl, #50	@, tmp381,
	bl	memcpy	@
	mov	r1, r6	@, D.36654
	mov	r2, #11	@,
	mov	r0, r5	@, D.36644
	bl	memcpy	@
	add	r1, r6, #66	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #50	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #696	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #66	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #11	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #82	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #77	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #98	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #143	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #114	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #22	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #130	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #652	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #146	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #154	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #162	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #33	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #178	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #99	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #194	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #165	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #210	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #608	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r7, #226	@, tmp392,
	bl	memcpy	@
	add	r1, r6, #110	@, D.36654,
	mov	r2, #11	@,
	add	r0, r7, #242	@, tmp392,
	bl	memcpy	@
	add	r1, r4, #740	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #224	@, D.36644,
	bl	memcpy	@
	add	r1, r6, #55	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #240	@, D.36644,
	bl	memcpy	@
	add	r1, r6, #121	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #256	@, D.36644,
	bl	memcpy	@
	add	r1, r6, #187	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #272	@, D.36644,
	bl	memcpy	@
	add	r1, r6, #198	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #288	@, D.36644,
	bl	memcpy	@
	add	r1, r4, #828	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #304	@, D.36644,
	bl	memcpy	@
	add	r3, r4, #892	@, pVp6CodecInfo,
	add	r1, r3, #2	@,,
	mov	r2, #11	@,
	add	r0, r5, #320	@, D.36644,
	bl	memcpy	@
	add	r1, r6, #209	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #336	@, D.36644,
	bl	memcpy	@
	add	r2, r4, #836	@, pVp6CodecInfo,
	add	r1, r2, #3	@,,
	add	r0, r5, #352	@, D.36644,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r0, r4, #904	@, pVp6CodecInfo,
	add	r1, r0, #1	@,,
	mov	r2, #11	@,
	add	r0, r5, #368	@, D.36644,
	bl	memcpy	@
	add	r1, r4, #784	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #384	@, D.36644,
	bl	memcpy	@
	add	r1, r4, #848	@, pVp6CodecInfo,
	add	r1, r1, #2	@,,
	mov	r2, #11	@,
	add	r0, r5, #400	@, D.36644,
	bl	memcpy	@
	add	r1, r4, #916	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #416	@, D.36644,
	bl	memcpy	@
	add	r1, r6, #231	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #432	@, D.36644,
	bl	memcpy	@
	add	ip, r4, #860	@, pVp6CodecInfo,
	add	r1, ip, #1	@,,
	mov	r2, #11	@,
	add	r0, r5, #448	@, D.36644,
	bl	memcpy	@
	add	r3, r4, #924	@, pVp6CodecInfo,
	add	r1, r3, #3	@,,
	mov	r2, #11	@,
	add	r0, r5, #464	@, D.36644,
	bl	memcpy	@
	add	r1, r6, #242	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #480	@, D.36644,
	bl	memcpy	@
	add	r1, r4, #872	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r0, r5, #496	@, D.36644,
	bl	memcpy	@
	add	r2, r4, #936	@, pVp6CodecInfo,
	add	r1, r2, #2	@,,
	add	r0, r5, #512	@, D.36644,
	mov	r2, #11	@,
	bl	memcpy	@
	add	r1, r6, #253	@, D.36654,
	mov	r2, #11	@,
	add	r0, r5, #528	@, D.36644,
	bl	memcpy	@
	add	r0, r4, #880	@, pVp6CodecInfo,
	add	r1, r0, #3	@,,
	mov	r2, #11	@,
	add	r0, r5, #544	@, D.36644,
	bl	memcpy	@
	add	r1, r4, #948	@, pVp6CodecInfo,
	add	r0, r5, #560	@, D.36644,
	add	r1, r1, #1	@,,
	mov	r2, #11	@,
	bl	memcpy	@
.L263:
	add	lr, r4, #3008	@, pVp6CodecInfo,
	add	r1, r4, #960	@, pVp6CodecInfo,
	add	r0, lr, #2	@,,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r3, r4, #3072	@, pVp6CodecInfo,
	add	r0, r3, #2	@,,
	add	r1, r4, #1024	@, pVp6CodecInfo,
	mov	r2, #64	@,
	bl	memcpy	@
	mov	r0, #0	@,
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L262:
	add	r8, r4, #4800	@, pVp6CodecInfo,
	add	r6, r4, #9472	@, pVp6CodecInfo,
	add	r7, r4, #9600	@ tmp633, pVp6CodecInfo,
	add	r1, r6, #28	@,,
	add	r0, r8, #2	@,,
	mov	r2, #128	@,
	add	r8, r4, #4928	@ tmp632, pVp6CodecInfo,
	add	r6, r7, #28	@ D.36619, tmp633,
	add	r5, r8, #2	@ D.36610, tmp632,
	bl	memcpy	@
	add	r2, r4, #11904	@, pVp6CodecInfo,
	add	r0, r4, #6464	@, pVp6CodecInfo,
	add	r1, r2, #28	@,,
	add	r0, r0, #2	@,,
	mov	r2, #128	@,
	bl	memcpy	@
	mov	r1, r6	@, D.36619
	mov	r2, #64	@,
	mov	r0, r5	@, D.36610
	bl	memcpy	@
	add	r1, r7, #92	@, tmp633,
	mov	r2, #64	@,
	add	r0, r8, #66	@, tmp632,
	bl	memcpy	@
	add	r1, r7, #156	@, tmp633,
	mov	r2, #64	@,
	add	r0, r8, #130	@, tmp632,
	bl	memcpy	@
	add	r1, r7, #220	@, tmp633,
	add	r0, r8, #194	@, tmp632,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r1, r7, #412	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #256	@, D.36610,
	bl	memcpy	@
	add	r1, r7, #476	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #320	@, D.36610,
	bl	memcpy	@
	add	r1, r7, #540	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #384	@, D.36610,
	bl	memcpy	@
	add	r1, r7, #604	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #448	@, D.36610,
	bl	memcpy	@
	add	r1, r7, #796	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #512	@, D.36610,
	bl	memcpy	@
	add	r1, r7, #860	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #576	@, D.36610,
	bl	memcpy	@
	add	r1, r7, #924	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #640	@, D.36610,
	bl	memcpy	@
	add	r1, r7, #988	@, tmp633,
	mov	r2, #64	@,
	add	r0, r5, #704	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1152	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #768	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1216	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #832	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1280	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #896	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1344	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #960	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1536	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #1024	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1600	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #1088	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1664	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #1152	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1728	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #1216	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1920	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #1280	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #1984	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #1344	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #2048	@, D.36619,
	mov	r2, #64	@,
	add	r0, r5, #1408	@, D.36610,
	bl	memcpy	@
	add	r1, r6, #2112	@, D.36619,
	add	r0, r5, #1472	@, D.36610,
	mov	r2, #64	@,
	bl	memcpy	@
	add	r1, r4, #3136	@, pVp6CodecInfo,
	add	ip, r4, #1216	@, pVp6CodecInfo,
	add	r0, r1, #2	@,,
	mov	r2, #960	@,
	add	r1, ip, #2	@,,
	bl	memcpy	@
	b	.L263	@
	.fnend
	.size	VP6_CfgTable, .-VP6_CfgTable
	.align	2
	.global	VP6_Set_DecParam
	.type	VP6_Set_DecParam, %function
VP6_Set_DecParam:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #12304	@ tmp168,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #3	@ <variable>.Vp6CodecInfo.FrameType,
	add	r5, r0, #8	@ pVp6DecParam, pCtx,
	ldr	r7, [r0, #208]	@ pVp6StreamParam, <variable>.pVp6StreamParam
	beq	.L294	@,
	mov	r0, r5	@, pVp6DecParam
	mov	r1, #200	@,
	bl	__memzero	@
	movw	r2, #12478	@ tmp204,
	ldrb	sl, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream
	mov	r3, #12544	@ tmp206,
	movw	r1, #12532	@ tmp208,
	movw	r2, #12504	@ tmp229,
	ldr	r0, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.UseHuffman
	mov	ip, #12480	@ tmp210,
	ldr	r8, [r4, r1]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMode
	movw	r1, #12500	@ tmp231,
	ldrh	r3, [r4, r2]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	r2, #12482	@ tmp214,
	str	r0, [r4, #80]	@, <variable>.Vp6DecParam.UseHuffman
	movw	r0, #12481	@ tmp212,
	str	r8, [r4, #92]	@, <variable>.Vp6DecParam.PredictionFilterMode
	movw	r9, #12496	@ tmp198,
	ldrb	r8, [r4, ip]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh
	movw	r6, #12476	@ tmp202,
	ldrh	ip, [r4, r1]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	movw	r1, #12477	@ tmp218,
	strh	r3, [r4, #60]	@ movhi	@, <variable>.Vp6DecParam.PicWidthInMb
	movw	r3, #12540	@ tmp216,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh
	ldr	r0, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.UseLoopFilter
	movw	r3, #12486	@ tmp223,
	strh	ip, [r4, #62]	@ movhi	@, <variable>.Vp6DecParam.PicHeightInMb
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha, <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha
	movw	r2, #12484	@ tmp221,
	str	r0, [r4, #116]	@, <variable>.Vp6DecParam.UseLoopFilter
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit, <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit
	ldrh	r1, [r4, r2]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant, <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant
	ldrh	r2, [r4, r3]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant, <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant
	movw	r3, #12492	@ tmp225,
	ldr	r3, [r4, r3]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile
	ldr	fp, [r4, r9]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FrameType, <variable>.Vp6CodecInfo.NewHeaderInfo.FrameType
	ldrb	r9, [r4, r6]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask, <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask
	movw	r6, #13000	@ tmp233,
	str	r3, [r4, #112]	@, <variable>.Vp6DecParam.VpProfile
	movw	r3, #12488	@ tmp227,
	ldr	r3, [r4, r3]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Vp3VersionNo, <variable>.Vp6CodecInfo.NewHeaderInfo.Vp3VersionNo
	str	r8, [r4, #96]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterVarThresh, <variable>.Vp6DecParam.PredictionFilterVarThresh
	movw	r8, #12312	@ tmp235,
	str	lr, [r4, #100]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterMvSizeThresh, <variable>.Vp6DecParam.PredictionFilterMvSizeThresh
	str	ip, [r4, #104]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.PredictionFilterAlpha, <variable>.Vp6DecParam.PredictionFilterAlpha
	str	r2, [r4, #88]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.AcQuant, <variable>.Vp6DecParam.AcQuant
	str	r3, [r4, #108]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Vp3VersionNo, <variable>.Vp6DecParam.Vp3VersionNo
	str	fp, [r4, #68]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FrameType, <variable>.Vp6DecParam.FrameType
	mov	fp, #0	@ tmp200,
	str	sl, [r4, #76]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.MultiStream
	movw	sl, #12320	@ tmp239,
	strb	r0, [r4, #8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.FLimit, <variable>.Vp6DecParam.FLimit
	str	r1, [r4, #84]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DcQuant, <variable>.Vp6DecParam.DcQuant
	strb	fp, [r4, #9]	@, <variable>.Vp6DecParam.IsNvopCopy
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.CurFsID
	str	r9, [r4, #72]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.DctQMask, <variable>.Vp6DecParam.DctQMask
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, sl]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r8, r0	@ pCur.2886,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	ip, #12316	@ tmp243,
	ldr	r1, [r4, ip]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	sl, r0	@ pFwd.2889,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r8, fp	@ pCur.2886,
	cmpne	sl, fp	@, pFwd.2889,
	beq	.L279	@,
	cmp	r0, fp	@ pGolden.2892,
	beq	.L279	@,
	ldr	r6, [r8, #408]	@ temp.2896, <variable>.pstDecodeFs
	cmp	r6, #0	@ temp.2896,
	beq	.L295	@,
	ldr	r9, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	lr, #12328	@ tmp259,
	movw	r1, #12556	@ tmp263,
	str	r9, [r4, #180]	@ <variable>.PhyAddr, <variable>.Vp6DecParam.image_curr_recon_addr
	ldr	r6, [r8, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	r9, [r4, lr]	@ <variable>.Vp6CodecInfo.DDR_Stride, <variable>.Vp6CodecInfo.DDR_Stride
	str	r6, [r4, #192]	@ <variable>.PmvAddr, <variable>.Vp6DecParam.CurPmvAddr
	add	r6, r4, #12608	@ pBs, pCtx,
	ldr	r3, [r0, #408]	@ temp.2902, <variable>.pstDecodeFs
	movw	r0, #12552	@ tmp265,
	add	r6, r6, #12	@ pBs, pBs,
	cmp	r3, #0	@ temp.2902,
	ldreq	r3, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r3, #12]	@ iftmp.487, <variable>.PhyAddr
	movw	r3, #12560	@ tmp267,
	ldr	lr, [r4, r3]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.count, <variable>.Vp6CodecInfo.NewHeaderInfo.br.count
	str	ip, [r4, #184]	@ iftmp.487, <variable>.Vp6DecParam.image_golden_ref_addr
	ldr	fp, [sl, #408]	@ temp.2906, <variable>.pstDecodeFs
	ldr	sl, [r4, r0]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.range, <variable>.Vp6CodecInfo.NewHeaderInfo.br.range
	mov	r0, r6	@, pBs
	cmp	fp, #0	@ temp.2906,
	ldreq	fp, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [fp, #12]	@ iftmp.488, <variable>.PhyAddr
	str	r9, [r4, #196]	@ <variable>.Vp6CodecInfo.DDR_Stride, <variable>.Vp6DecParam.VahbStride
	ldr	fp, [r4, r1]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.value, <variable>.Vp6CodecInfo.NewHeaderInfo.br.value
	str	r2, [r4, #188]	@ iftmp.488, <variable>.Vp6DecParam.image_last_ref_addr
	ldr	ip, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [ip, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	lr, [r4, #176]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.count, <variable>.Vp6DecParam.count
	str	fp, [r4, #168]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.value, <variable>.Vp6DecParam.value
	str	r2, [r4, #200]	@ <variable>.ChromOffset, <variable>.Vp6DecParam.uv_offset
	str	sl, [r4, #172]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.br.range, <variable>.Vp6DecParam.range
	movw	sl, #12478	@ tmp275,
	ldr	r9, [r7, #0]	@ D.36419, <variable>.VirAddr
	bl	BsPos	@
	cmp	r0, #0	@ D.36420,
	add	r1, r0, #7	@ tmp271, D.36420,
	movlt	r0, r1	@ D.36420, tmp271
	add	r8, r9, r0, asr #3	@, BaseAddrUnAligned, D.36419, D.36420,
	mov	r0, r8	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	bic	ip, r0, #15	@ tmp273,,
	mov	r0, r8	@, BaseAddrUnAligned
	sub	fp, ip, #16	@ tmp274, tmp273,
	str	fp, [r4, #64]	@ tmp274, <variable>.Vp6DecParam.StreamBaseAddr
	bl	MEM_Vir2Phy	@
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream
	cmp	r8, #0	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream,
	and	r0, r0, #15	@ ResideBytes,,
	bne	.L286	@,
	movw	r1, #12492	@ tmp277,
	ldr	sl, [r4, r1]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile, <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile
	cmp	sl, #0	@ <variable>.Vp6CodecInfo.NewHeaderInfo.VpProfile,
	bne	.L287	@,
.L286:
	movw	r8, #12528	@ tmp281,
	mov	ip, r0, asl #3	@ tmp280, ResideBytes,
	ldr	lr, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	r0, r6	@, pBs
	str	ip, [r4, #124]	@ tmp280, <variable>.Vp6DecParam.bit0_offset_0
	mov	fp, #16	@ tmp279,
	str	fp, [r4, #128]	@ tmp279, <variable>.Vp6DecParam.bit0_stream_addr_0
	mov	fp, #0	@ tmp284,
	mov	sl, lr, asl #3	@ D.36435, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset,
	bl	BsPos	@
	ldr	r2, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	str	fp, [r4, #140]	@ tmp284, <variable>.Vp6DecParam.bit0_stream_addr_1
	str	fp, [r4, #136]	@ tmp284, <variable>.Vp6DecParam.bit0_offset_1
	str	fp, [r4, #132]	@ tmp284, <variable>.Vp6DecParam.bit0_len_1
	rsb	r0, r0, sl	@ tmp283,, D.36435
	str	r0, [r4, #120]	@ tmp283, <variable>.Vp6DecParam.bit0_len_0
	ldr	r1, [r7, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r9, r1, r2	@ BaseAddrUnAligned.2917, <variable>.VirAddr, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	r0, r9	@, BaseAddrUnAligned.2917
	bl	MEM_Vir2Phy	@
	mov	r6, r0	@ D.36439,
	mov	r0, r9	@, BaseAddrUnAligned.2917
	bl	MEM_Vir2Phy	@
	and	sl, r6, #15	@ tmp293, D.36439,
	ldr	ip, [r4, #64]	@ <variable>.Vp6DecParam.StreamBaseAddr, <variable>.Vp6DecParam.StreamBaseAddr
	ldr	r3, [r4, r8]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset
	mov	r9, sl, asl #3	@ tmp294, tmp293,
	str	r9, [r4, #148]	@ tmp294, <variable>.Vp6DecParam.bit1_offset_0
	mov	r8, r3, asl #3	@ tmp298, <variable>.Vp6CodecInfo.NewHeaderInfo.Buff2Offset,
	bic	r6, r0, #15	@ tmp290,,
	rsb	r2, ip, r6	@ tmp292, <variable>.Vp6DecParam.StreamBaseAddr, tmp290
	str	r2, [r4, #152]	@ tmp292, <variable>.Vp6DecParam.bit1_stream_addr_0
	ldr	r0, [r7, #8]	@ <variable>.Length, <variable>.Length
	str	fp, [r4, #156]	@ tmp284, <variable>.Vp6DecParam.bit1_len_1
	str	fp, [r4, #164]	@ tmp284, <variable>.Vp6DecParam.bit1_stream_addr_1
	rsb	r7, r8, r0, asl #3	@, tmp300, tmp298, <variable>.Length,
	str	fp, [r4, #160]	@ tmp284, <variable>.Vp6DecParam.bit1_offset_1
	str	r7, [r4, #144]	@ tmp300, <variable>.Vp6DecParam.bit1_len_0
.L288:
	ldr	fp, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	add	r3, r4, #4992	@, pCtx,
	add	ip, r4, #4416	@ tmp319, pCtx,
	str	r3, [sp, #4]	@, %sfp
	add	r0, r4, #3232	@ tmp329, pCtx,
	add	lr, r4, #2528	@ tmp331, pCtx,
	add	r1, r4, #2464	@ tmp333, pCtx,
	add	r2, r4, #3168	@ tmp335, pCtx,
	add	r9, r4, #5120	@ tmp317, pCtx,
	add	r8, r4, #4288	@ tmp323, pCtx,
	add	r7, r4, #3296	@ tmp325, pCtx,
	add	r6, r4, #3360	@ tmp327, pCtx,
	add	r3, r4, #6656	@ tmp337, pCtx,
	add	sl, ip, #2	@ tmp319, tmp319,
	add	r9, r9, #34	@ tmp317, tmp317,
	str	sl, [r4, #40]	@ tmp319, <variable>.Vp6DecParam.TblACProbs
	str	r9, [r4, #52]	@ tmp317, <variable>.Vp6DecParam.TblAcHuffLUT
	add	ip, r0, #2	@ tmp329, tmp329,
	add	sl, r3, #34	@ tmp337, tmp337,
	str	ip, [r4, #24]	@ tmp329, <variable>.Vp6DecParam.TblModifiedScanOrder
	add	r0, lr, #2	@ tmp331, tmp331,
	str	sl, [r4, #56]	@ tmp337, <variable>.Vp6DecParam.TblZeroHuffLUT
	str	r0, [r4, #16]	@ tmp331, <variable>.Vp6DecParam.TblProbMode
	add	lr, r1, #2	@ tmp333, tmp333,
	add	r8, r8, #34	@ tmp323, tmp323,
	str	lr, [r4, #12]	@ tmp333, <variable>.Vp6DecParam.TblProbModeSame
	str	r8, [r4, #36]	@ tmp323, <variable>.Vp6DecParam.TblDcNodeContexts
	add	r1, r2, #2	@ tmp335, tmp335,
	add	r7, r7, #2	@ tmp325, tmp325,
	str	r1, [r4, #20]	@ tmp335, <variable>.Vp6DecParam.TblProbMv
	str	r7, [r4, #28]	@ tmp325, <variable>.Vp6DecParam.TblEobOffsetTable
	add	r6, r6, #2	@ tmp327, tmp327,
	str	r6, [r4, #32]	@ tmp327, <variable>.Vp6DecParam.TblHuffTree
	ldr	sl, [sp, #4]	@, %sfp
	add	r0, sl, #34	@ tmp321,,
	add	ip, sl, #2	@ tmp339,,
	str	r0, [r4, #48]	@ tmp321, <variable>.Vp6DecParam.TblDcHuffLUT
	mov	r0, #1	@ D.36344,
	str	ip, [r4, #44]	@ tmp339, <variable>.Vp6DecParam.TblZeroProbs
	ldr	lr, [fp, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r5, [r4, #4]	@ pVp6DecParam, <variable>.pVp6DecParam
	str	lr, [r4, #204]	@ <variable>.s32Compress_en, <variable>.Vp6DecParam.Compress_en
	ldr	r2, [fp, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r2, [r4, #204]	@ <variable>.s32Compress_en, <variable>.Vp6DecParam.Compress_en
.L273:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L294:
	str	r3, [r0, #68]	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6DecParam.FrameType
	movw	r6, #13000	@ tmp173,
	movw	r0, #12312	@ tmp175,
	mov	sl, #1	@ tmp171,
	ldr	r1, [r4, r0]	@, <variable>.Vp6CodecInfo.CurFsID
	movw	r8, #12320	@ tmp179,
	strb	sl, [r4, #9]	@ tmp171, <variable>.Vp6DecParam.IsNvopCopy
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #12316	@ tmp183,
	ldr	r1, [r4, r2]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	beq	.L279	@,
	cmp	r0, #0	@ pGolden,
	bne	.L272	@,
.L279:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36344,
	b	.L273	@
.L272:
	ldr	r6, [r7, #408]	@ D.36345, <variable>.pstDecodeFs
	cmp	r6, #0	@ D.36345,
	beq	.L296	@,
	ldr	r1, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #180]	@ <variable>.PhyAddr, <variable>.Vp6DecParam.image_curr_recon_addr
	ldr	r2, [r7, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [r4, #192]	@ <variable>.PmvAddr, <variable>.Vp6DecParam.CurPmvAddr
	ldr	r3, [r0, #408]	@ D.36354, <variable>.pstDecodeFs
	mov	r0, #1	@ D.36344,
	cmp	r3, #0	@ D.36354,
	ldreq	r3, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [r3, #12]	@ iftmp.482, <variable>.PhyAddr
	str	lr, [r4, #184]	@ iftmp.482, <variable>.Vp6DecParam.image_golden_ref_addr
	ldr	ip, [r8, #408]	@ D.36360, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.36360,
	ldreq	ip, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [ip, #12]	@ iftmp.483, <variable>.PhyAddr
	str	r5, [r4, #4]	@ pVp6DecParam, <variable>.pVp6DecParam
	str	r1, [r4, #188]	@ iftmp.483, <variable>.Vp6DecParam.image_last_ref_addr
	b	.L273	@
.L287:
	mov	r1, r0, asl #3	@ tmp305, ResideBytes,
	mov	r9, #16	@ tmp304,
	str	r1, [r4, #124]	@ tmp305, <variable>.Vp6DecParam.bit0_offset_0
	mov	r0, r6	@, pBs
	str	r9, [r4, #128]	@ tmp304, <variable>.Vp6DecParam.bit0_stream_addr_0
	ldr	r3, [r7, #8]	@ <variable>.Length, <variable>.Length
	mov	r6, r3, asl #3	@ D.36447, <variable>.Length,
	bl	BsPos	@
	str	r8, [r4, #156]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_len_1
	str	r8, [r4, #140]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_stream_addr_1
	str	r8, [r4, #136]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_offset_1
	str	r8, [r4, #132]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit0_len_1
	str	r8, [r4, #152]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_stream_addr_0
	str	r8, [r4, #148]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_offset_0
	str	r8, [r4, #144]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_len_0
	str	r8, [r4, #164]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_stream_addr_1
	str	r8, [r4, #160]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.MultiStream, <variable>.Vp6DecParam.bit1_offset_1
	rsb	r7, r0, r6	@ tmp307,, D.36447
	str	r7, [r4, #120]	@ tmp307, <variable>.Vp6DecParam.bit0_len_0
	b	.L288	@
.L295:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36344, temp.2896
	b	.L273	@
.L296:
	mov	r0, sl	@, tmp171
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36344, D.36345
	b	.L273	@
	.fnend
	.size	VP6_Set_DecParam, .-VP6_Set_DecParam
	.align	2
	.global	VP6DEC_Init
	.type	VP6DEC_Init, %function
VP6DEC_Init:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, #12992	@ tmp139,
	ldr	r7, [r0, r5]	@ D.36219, <variable>.ImageQue.ResetMagicWord
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #13008	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r4, r5]	@ D.36219, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #13000	@ tmp143,
	cmn	r0, #1	@ D.36227,
	str	r0, [r4, r3]	@ D.36227, <variable>.ChanID
	beq	.L301	@,
	add	r0, r4, #224	@, pCtx,
	movw	r1, #12396	@,
	bl	__memzero	@
	ldr	r5, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #12328	@ tmp146,
	movw	r0, #12300	@ tmp148,
	mov	r3, #0	@ tmp149,
	mov	r1, #1024	@ tmp147,
	str	r3, [r4, r0]	@ tmp149, <variable>.Vp6CodecInfo.Imgbuf_allocated
	movw	ip, #13004	@ tmp153,
	str	r1, [r4, r2]	@ tmp147, <variable>.Vp6CodecInfo.DDR_Stride
	movw	r1, #12292	@ tmp150,
	ldr	r2, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r0, #22	@,
	mov	r5, #1	@ tmp154,
	str	r5, [r4, ip]	@ tmp154, <variable>.DSDNeedClearQue
	str	r2, [r4, r1]	@ <variable>.s32DecMode, <variable>.Vp6CodecInfo.UsedDecMode
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.36232, tmp154
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L301:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.36232,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VP6DEC_Init, .-VP6DEC_Init
	.align	2
	.global	Vp6_Vfmw_StartDecode
	.type	Vp6_Vfmw_StartDecode, %function
Vp6_Vfmw_StartDecode:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pBr, pBr
	mov	r2, #0	@ tmp136,
	mov	r3, #8	@ tmp138,
	str	r2, [r1, #0]	@ tmp136, <variable>.lowvalue
	mov	r1, #255	@ tmp137,
	str	r3, [r4, #12]	@ tmp138, <variable>.count
	str	r1, [r4, #4]	@ tmp137, <variable>.range
	mov	r1, #24	@,
	bl	BsGet	@
	str	r0, [r4, #8]	@, <variable>.value
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Vp6_Vfmw_StartDecode, .-Vp6_Vfmw_StartDecode
	.align	2
	.global	Vp6_Vfmw_DecodeBool128
	.type	Vp6_Vfmw_DecodeBool128, %function
Vp6_Vfmw_DecodeBool128:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r1	@ pBr, pBr
	ldr	r1, [r1, #4]	@ range.2997, <variable>.range
	ldr	r5, [r4, #8]	@ value.2998, <variable>.value
	add	r7, r1, #1	@ tmp148, range.2997,
	ldr	r3, [r4, #12]	@ count.2996, <variable>.count
	mov	r7, r7, lsr #1	@ split, tmp148,
	mov	r2, r7, asl #16	@ bigsplit, split,
	cmp	r5, r2	@ value.2998, bigsplit
	rsbcs	r7, r7, r1	@ D.34998, split, range.2997
	rsbcs	r5, r2, r5	@ D.34999, bigsplit, value.2998
	movcs	r6, #1	@ bit,
	movcc	r7, r7, asl #1	@ range, split,
	movcs	r7, r7, asl r6	@ range, D.34998,
	movcs	r5, r5, asl r6	@ value, D.34999,
	movcc	r5, r5, asl #1	@ value, value.2998,
	movcc	r6, #0	@ bit,
	subs	r3, r3, #1	@ count, count.2996,
	bne	.L307	@,
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r3, #8	@ count,
	orr	r5, r5, r0	@ value, value,
.L307:
	str	r7, [r4, #4]	@ range, <variable>.range
	mov	r0, r6	@, bit
	str	r3, [r4, #12]	@ count, <variable>.count
	str	r5, [r4, #8]	@ value, <variable>.value
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool128, .-Vp6_Vfmw_DecodeBool128
	.align	2
	.global	Vp6_Vfmw_BoolRead
	.type	Vp6_Vfmw_BoolRead, %function
Vp6_Vfmw_BoolRead:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r2, #1	@ i, nBits,
	mov	r8, r0	@ pBs, pBs
	mov	r7, r1	@ pBr, pBr
	movmi	r6, #0	@ value,
	bmi	.L311	@,
	bl	Vp6_Vfmw_DecodeBool128	@
	subs	r4, r6, #1	@ i, i,
	and	r3, r6, #1	@ tmp144, i,
	mov	r6, r0, asl r6	@ value,,
	bmi	.L311	@,
	cmp	r3, #0	@ tmp144,
	beq	.L312	@,
	mov	r0, r8	@, pBs
	mov	r1, r7	@, pBr
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r6, r6, r0, asl r4	@, value, value,,
	subs	r4, r4, #1	@ i, i,
	bmi	.L311	@,
.L312:
	mov	r1, r7	@, pBr
	mov	r0, r8	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r7	@, pBr
	sub	r5, r4, #1	@ tmp145, i,
	orr	r6, r6, r0, asl r4	@, value, value,,
	mov	r0, r8	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	subs	r4, r5, #1	@ i, tmp145,
	orr	r6, r6, r0, asl r5	@, value, value,,
	bpl	.L312	@,
.L311:
	mov	r0, r6	@, value
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Vp6_Vfmw_BoolRead, .-Vp6_Vfmw_BoolRead
	.align	2
	.global	VP6_InterFrmHeader
	.type	VP6_InterFrmHeader, %function
VP6_InterFrmHeader:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #12120	@ tmp149,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r2, [r0, r3]	@ D.36122, <variable>.OldHeaderInfo.Vp3VersionNo
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r6, r1	@ pBs, pBs
	cmp	r2, #0	@ D.36122,
	beq	.L334	@,
	movw	r3, #12254	@ tmp157,
	movw	lr, #12124	@ tmp155,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.MultiStream, <variable>.NewHeaderInfo.MultiStream
	movw	r5, #12264	@ tmp153,
	ldr	r1, [r0, lr]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.OldHeaderInfo.VpProfile
	cmp	ip, #0	@ <variable>.NewHeaderInfo.MultiStream,
	str	r2, [r0, r5]	@ D.36122, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	r2, #12268	@ tmp154,
	str	r1, [r0, r2]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.NewHeaderInfo.VpProfile
	bne	.L335	@,
	add	r5, r0, #12288	@ temp.3052, pVp6CodecInfo,
	mov	r0, r6	@, pBs
	add	r5, r5, #36	@ temp.3052, temp.3052,
	mov	r1, r5	@, temp.3052
	bl	Vp6_Vfmw_StartDecode	@
.L324:
	mov	r1, r5	@, temp.3052
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r1, #12124	@ tmp167,
	ldr	r2, [r4, r1]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.OldHeaderInfo.VpProfile
	movw	r3, #12084	@ tmp166,
	movw	ip, #12312	@ tmp165,
	cmp	r2, #0	@ <variable>.OldHeaderInfo.VpProfile,
	str	r0, [r4, r3]	@ D.36136, <variable>.RefreshGoldenFrame
	str	r0, [r4, ip]	@ D.36136, <variable>.NewHeaderInfo.RefreshGoldenFrame
	bne	.L336	@,
	movw	r0, #12308	@ tmp193,
	mov	r3, #1	@ D.36127,
	str	r2, [r4, r0]	@ <variable>.OldHeaderInfo.VpProfile, <variable>.NewHeaderInfo.PredictionFilterMode
	movw	r2, #12258	@ tmp190,
	mov	ip, #14	@ tmp191,
	strb	ip, [r4, r2]	@ tmp191, <variable>.NewHeaderInfo.PredictionFilterAlpha
.L322:
	mov	r0, r3	@, D.36127
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L335:
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	BsGet	@
	add	r1, r4, #12288	@ temp.3052, pVp6CodecInfo,
	add	r5, r1, #36	@ temp.3052, temp.3052,
	movw	r2, #12304	@ tmp159,
	mov	r1, r5	@, temp.3052
	str	r0, [r4, r2]	@, <variable>.NewHeaderInfo.Buff2Offset
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_StartDecode	@
	b	.L324	@
.L336:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3052
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r8, #12316	@ tmp169,
	cmp	r0, #0	@ D.36140,
	mov	r7, r0	@ D.36140,
	str	r0, [r4, r8]	@ D.36140, <variable>.NewHeaderInfo.UseLoopFilter
	bne	.L337	@,
.L326:
	movw	r2, #12120	@ tmp173,
	ldr	lr, [r4, r2]	@ <variable>.OldHeaderInfo.Vp3VersionNo, <variable>.OldHeaderInfo.Vp3VersionNo
	cmp	lr, #7	@ <variable>.OldHeaderInfo.Vp3VersionNo,
	movwls	lr, #12258	@ tmp187,
	movls	r2, #16	@ tmp188,
	strlsb	r2, [r4, lr]	@ tmp188, <variable>.NewHeaderInfo.PredictionFilterAlpha
	bhi	.L338	@,
.L333:
	mov	r3, #1	@ D.36127,
	mov	r0, r3	@, D.36127
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L338:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3052
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L333	@,
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3052
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L329	@,
	movw	lr, #12308	@ tmp175,
	mov	r1, r5	@, temp.3052
	mov	r2, #5	@,
	mov	r0, #2	@ tmp176,
	str	r0, [r4, lr]	@ tmp176, <variable>.NewHeaderInfo.PredictionFilterMode
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12256	@ tmp177,
	mov	r1, r5	@, temp.3052
	mov	r2, #3	@,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.PredictionFilterVarThresh
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	ip, #12257	@ tmp179,
	strb	r0, [r4, ip]	@, <variable>.NewHeaderInfo.PredictionFilterMvSizeThresh
.L330:
	mov	r1, r5	@, temp.3052
	mov	r0, r6	@, pBs
	mov	r2, #4	@,
	bl	Vp6_Vfmw_BoolRead	@
	movw	r1, #12258	@ tmp185,
	mov	r3, #1	@ D.36127,
	strb	r0, [r4, r1]	@, <variable>.NewHeaderInfo.PredictionFilterAlpha
	b	.L322	@
.L337:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3052
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r0, r0, r7, asl #1	@, tmp172,, D.36140,
	str	r0, [r4, r8]	@ tmp172, <variable>.NewHeaderInfo.UseLoopFilter
	b	.L326	@
.L329:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, temp.3052
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.36160
	movwne	r3, #12308	@ tmp181,
	movweq	r3, #12308	@ tmp183,
	movne	r2, #1	@ tmp182,
	streq	r0, [r4, r3]	@ D.36160, <variable>.NewHeaderInfo.PredictionFilterMode
	strne	r2, [r4, r3]	@ tmp182, <variable>.NewHeaderInfo.PredictionFilterMode
	b	.L330	@
.L334:
	movw	r0, #12264	@ tmp151,
	movw	r1, #:lower16:.LC19	@,
	ldr	r3, [r4, r0]	@, <variable>.NewHeaderInfo.Vp3VersionNo
	movt	r1, #:upper16:.LC19	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r3, #87	@ D.36127,
	b	.L322	@
	.fnend
	.size	VP6_InterFrmHeader, .-VP6_InterFrmHeader
	.align	2
	.global	VP6_IntraFrmHeader
	.type	VP6_IntraFrmHeader, %function
VP6_IntraFrmHeader:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ pBs, pBs
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	movw	r6, #12264	@ tmp160,
	bl	dprint_vfmw	@
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	uxtb	r2, r0	@ D.36037,
	mov	r0, r5	@, pBs
	str	r2, [r4, r6]	@ D.36037, <variable>.NewHeaderInfo.Vp3VersionNo
	bl	BsGet	@
	ldr	r2, [r4, r6]	@ D.36043, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	r3, #12268	@ tmp162,
	cmp	r2, #8	@ D.36043,
	uxtb	r0, r0	@ D.36040,
	str	r0, [r4, r3]	@ D.36040, <variable>.NewHeaderInfo.VpProfile
	bhi	.L357	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	tst	r0, #255	@
	bne	.L358	@,
	movw	r6, #12254	@ tmp169,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.MultiStream, <variable>.NewHeaderInfo.MultiStream
	cmp	r1, #0	@ <variable>.NewHeaderInfo.MultiStream,
	beq	.L343	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r8, r4, #12288	@ temp.3082, pVp6CodecInfo,
	add	r6, r8, #36	@ temp.3082, temp.3082,
	movw	r7, #12304	@ tmp171,
	mov	r1, r6	@, temp.3082
	str	r0, [r4, r7]	@, <variable>.NewHeaderInfo.Buff2Offset
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_StartDecode	@
.L344:
	mov	r1, r6	@, temp.3082
	mov	r2, #8	@,
	mov	r0, r5	@, pBs
	movw	r8, #12276	@ tmp177,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r6	@, temp.3082
	mov	r2, #8	@,
	uxtb	r3, r0	@ D.36060,
	mov	r0, r5	@, pBs
	str	r3, [r4, r8]	@ D.36060, <variable>.NewHeaderInfo.pic_height_in_mb
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r7, [r4, r8]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	mov	ip, #12288	@ tmp184,
	movw	r2, #12284	@ tmp180,
	mov	r1, r6	@, temp.3082
	mov	r7, r7, asl #1	@ tmp183, <variable>.NewHeaderInfo.pic_height_in_mb,
	str	r7, [r4, r2]	@ tmp183, <variable>.NewHeaderInfo.VMacroblockCount
	mov	r2, #8	@,
	uxtb	r8, r0	@ D.36065,
	movw	r0, #12280	@ tmp179,
	str	r8, [r4, r0]	@ D.36065, <variable>.NewHeaderInfo.pic_width_in_mb
	mov	r0, r5	@, pBs
	mov	r8, r8, asl #1	@ D.36069, D.36065,
	str	r8, [r4, ip]	@ D.36069, <variable>.NewHeaderInfo.HMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r6	@, temp.3082
	mov	r2, #8	@,
	uxtb	r3, r0	@ D.36070,
	mov	r0, r5	@, pBs
	mov	ip, r3, asl #1	@ tmp189, D.36070,
	movw	r3, #12292	@ tmp187,
	str	ip, [r4, r3]	@ tmp189, <variable>.NewHeaderInfo.OutputVMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, #2	@,
	mov	r1, r6	@, temp.3082
	uxtb	r3, r0	@ D.36075,
	mov	r0, r5	@, pBs
	mov	ip, r3, asl #1	@ tmp192, D.36075,
	movw	r3, #12296	@ tmp190,
	str	ip, [r4, r3]	@ tmp192, <variable>.NewHeaderInfo.OutputHMacroblockCount
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12064	@ tmp195,
	ldr	r3, [r4, r3]	@ D.36084, <variable>.VOldScaled
	movw	r2, #12255	@ tmp193,
	cmp	r3, r7	@ D.36084, tmp183
	strb	r0, [r4, r2]	@, <variable>.NewHeaderInfo.ScalingMode
	beq	.L345	@,
	movw	lr, #12060	@ tmp196,
	ldr	r2, [r4, lr]	@ prephitmp.3070, <variable>.HOldScaled
.L346:
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC23	@,
	str	r8, [sp, #0]	@ D.36069,
	str	r7, [sp, #4]	@ tmp183,
	bl	dprint_vfmw	@
.L347:
	movw	r2, #12268	@ tmp201,
	movw	r0, #12060	@ tmp199,
	ldr	r3, [r4, r2]	@ <variable>.NewHeaderInfo.VpProfile, <variable>.NewHeaderInfo.VpProfile
	movw	ip, #12064	@ tmp200,
	str	r8, [r4, r0]	@ D.36069, <variable>.HOldScaled
	cmp	r3, #0	@ <variable>.NewHeaderInfo.VpProfile,
	str	r7, [r4, ip]	@ tmp183, <variable>.VOldScaled
	bne	.L359	@,
	movw	r0, #12308	@ tmp227,
	movw	lr, #12258	@ tmp224,
	mov	r1, #14	@ tmp225,
	str	r3, [r4, r0]	@ <variable>.NewHeaderInfo.VpProfile, <variable>.NewHeaderInfo.PredictionFilterMode
	strb	r1, [r4, lr]	@ tmp225, <variable>.NewHeaderInfo.PredictionFilterAlpha
.L355:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36047,
.L341:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L357:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36047,
	b	.L341	@
.L343:
	add	ip, r4, #12288	@ temp.3082, pVp6CodecInfo,
	mov	r0, r5	@, pBs
	add	r6, ip, #36	@ temp.3082, temp.3082,
	mov	r1, r6	@, temp.3082
	bl	Vp6_Vfmw_StartDecode	@
	b	.L344	@
.L345:
	movw	r1, #12060	@ tmp197,
	ldr	r2, [r4, r1]	@ prephitmp.3070, <variable>.HOldScaled
	cmp	r8, r2	@ D.36069, prephitmp.3070
	bne	.L346	@,
	b	.L347	@
.L358:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36047,
	b	.L341	@
.L359:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3082
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L349	@,
	movw	r0, #12308	@ tmp203,
	mov	lr, #2	@ tmp204,
	mov	r1, r6	@, temp.3082
	str	lr, [r4, r0]	@ tmp204, <variable>.NewHeaderInfo.PredictionFilterMode
	mov	r2, #5	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	movw	r1, #12264	@ tmp205,
	ldr	r3, [r4, r1]	@ <variable>.NewHeaderInfo.Vp3VersionNo, <variable>.NewHeaderInfo.Vp3VersionNo
	movw	ip, #12256	@ tmp207,
	mov	r1, r6	@, temp.3082
	mov	r2, #3	@,
	cmp	r3, #7	@ <variable>.NewHeaderInfo.Vp3VersionNo,
	movls	r3, #5	@ iftmp.473,
	movhi	r3, #0	@ iftmp.473,
	mov	r3, r0, asl r3	@ tmp209,,
	mov	r0, r5	@, pBs
	strb	r3, [r4, ip]	@ tmp209, <variable>.NewHeaderInfo.PredictionFilterVarThresh
	bl	Vp6_Vfmw_BoolRead	@
	movw	r3, #12257	@ tmp211,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.PredictionFilterMvSizeThresh
.L352:
	movw	r3, #12264	@ tmp217,
	ldr	ip, [r4, r3]	@ <variable>.NewHeaderInfo.Vp3VersionNo, <variable>.NewHeaderInfo.Vp3VersionNo
	cmp	ip, #7	@ <variable>.NewHeaderInfo.Vp3VersionNo,
	movwls	ip, #12258	@ tmp221,
	movls	r2, #16	@ tmp222,
	strlsb	r2, [r4, ip]	@ tmp222, <variable>.NewHeaderInfo.PredictionFilterAlpha
	bls	.L355	@,
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3082
	bl	Vp6_Vfmw_BoolRead	@
	movw	r2, #12258	@ tmp219,
	strb	r0, [r4, r2]	@, <variable>.NewHeaderInfo.PredictionFilterAlpha
	b	.L355	@
.L349:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, temp.3082
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.36106
	movwne	r3, #12308	@ tmp213,
	movweq	r3, #12308	@ tmp215,
	movne	r2, #1	@ tmp214,
	streq	r0, [r4, r3]	@ D.36106, <variable>.NewHeaderInfo.PredictionFilterMode
	strne	r2, [r4, r3]	@ tmp214, <variable>.NewHeaderInfo.PredictionFilterMode
	b	.L352	@
	.fnend
	.size	VP6_IntraFrmHeader, .-VP6_IntraFrmHeader
	.align	2
	.global	VP6_GetPictureHeader
	.type	VP6_GetPictureHeader, %function
VP6_GetPictureHeader:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pVp6CodecInfo,
	cmpne	r1, #0	@, pBs,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ pBs, pBs
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	beq	.L366	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	movw	r6, #12272	@ tmp153,
	bl	dprint_vfmw	@
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r3, #12080	@ tmp154,
	mov	r1, #6	@,
	uxtb	ip, r0	@ D.36183,
	mov	r0, r5	@, pBs
	strb	ip, [r4, r3]	@ D.36183, <variable>.FrameType
	str	ip, [r4, r6]	@ D.36183, <variable>.NewHeaderInfo.FrameType
	bl	BsGet	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	movw	lr, #12260	@ tmp165,
	mov	r1, #1	@,
	uxtb	r2, r0	@ D.36188,
	movw	r0, #12252	@ tmp156,
	add	ip, r2, r3	@ tmp161, D.36188, tmp159
	strb	r2, [r4, r0]	@ D.36188, <variable>.NewHeaderInfo.DctQMask
	add	r3, r3, r2, asl #1	@, tmp169, tmp159, D.36188,
	mov	r0, r5	@, pBs
	ldrb	r2, [ip, #140]	@ zero_extendqisi2	@ tmp163, VP6_LoopFilterLimitValues
	add	ip, r3, #332	@ tmp178, tmp169,
	ldrh	r3, [r3, #204]	@, DcQuantTab
	strh	r3, [r4, lr]	@ movhi	@, <variable>.NewHeaderInfo.DcQuant
	movw	lr, #12262	@ tmp173,
	ldrh	r3, [ip, #0]	@, AcQuantTab
	movw	ip, #12253	@ tmp158,
	strb	r2, [r4, ip]	@ tmp163, <variable>.NewHeaderInfo.FLimit
	strh	r3, [r4, lr]	@ movhi	@, <variable>.NewHeaderInfo.AcQuant
	bl	BsGet	@
	ldr	r1, [r4, r6]	@ <variable>.NewHeaderInfo.FrameType, <variable>.NewHeaderInfo.FrameType
	movw	r3, #12254	@ tmp181,
	cmp	r1, #0	@ <variable>.NewHeaderInfo.FrameType,
	strb	r0, [r4, r3]	@, <variable>.NewHeaderInfo.MultiStream
	beq	.L367	@,
	mov	r0, r4	@, pVp6CodecInfo
	mov	r1, r5	@, pBs
	bl	VP6_InterFrmHeader	@
	mov	r6, r0	@ ret,
	cmp	r6, #1	@ ret,
	beq	.L368	@,
.L362:
	mov	r0, r6	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L367:
	mov	r0, r4	@, pVp6CodecInfo
	mov	r1, r5	@, pBs
	bl	VP6_IntraFrmHeader	@
	mov	r6, r0	@ ret,
	cmp	r6, #1	@ ret,
	bne	.L362	@,
.L368:
	add	lr, r4, #12288	@, pVp6CodecInfo,
	mov	r0, r5	@, pBs
	add	r1, lr, #36	@,,
	bl	Vp6_Vfmw_DecodeBool128	@
	movw	r1, #12252	@ tmp189,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.DctQMask, <variable>.NewHeaderInfo.DctQMask
	movw	r3, #12300	@ tmp188,
	movw	r2, #12320	@ tmp187,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	str	ip, [r4, r3]	@ <variable>.NewHeaderInfo.DctQMask, <variable>.NewHeaderInfo.LastFrameQIndex
	str	r0, [r4, r2]	@, <variable>.NewHeaderInfo.UseHuffman
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L366:
	mov	r6, #0	@ ret,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP6_GetPictureHeader, .-VP6_GetPictureHeader
	.align	2
	.global	Vp6_Vfmw_DecodeBool
	.type	Vp6_Vfmw_DecodeBool, %function
Vp6_Vfmw_DecodeBool:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pBr, pBr
	ldr	r1, [r1, #4]	@ range.3132, <variable>.range
	mov	r6, r0	@ pBs, pBs
	ldr	r4, [r5, #8]	@ value, <variable>.value
	sub	r0, r1, #1	@ tmp145, range.3132,
	ldr	r3, [r5, #12]	@ count, <variable>.count
	mul	ip, r0, r2	@ tmp146, tmp145, probability
	mov	r7, ip, lsr #8	@ tmp147, tmp146,
	add	r7, r7, #1	@ split, tmp147,
	mov	r2, r7, asl #16	@ bigsplit, split,
	cmp	r4, r2	@ value, bigsplit
	rsbcs	r7, r7, r1	@ range, split, range.3132
	rsbcs	r4, r2, r4	@ value, bigsplit, value
	movcc	r8, #0	@ bit,
	movcs	r8, #1	@ bit,
	cmp	r7, #127	@ range,
	strhi	r7, [r5, #4]	@ range, <variable>.range
	strhi	r4, [r5, #8]	@ value, <variable>.value
	bls	.L376	@,
	b	.L373	@
.L374:
	cmp	r7, #127	@ range,
	bhi	.L378	@,
.L376:
	subs	r3, r3, #1	@ count, count,
	mov	r7, r7, asl #1	@ range, range,
	mov	r4, r4, asl #1	@ value, value,
	bne	.L374	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r7, #127	@ range,
	mov	r3, #8	@ count,
	orr	r4, r4, r0	@ value, value,
	bls	.L376	@,
.L378:
	str	r7, [r5, #4]	@ range, <variable>.range
	str	r3, [r5, #12]	@ count, <variable>.count
	str	r4, [r5, #8]	@ value, <variable>.value
.L373:
	mov	r0, r8	@, bit
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool, .-Vp6_Vfmw_DecodeBool
	.align	2
	.global	VP6_ConfigureMvEntropyDecoder
	.type	VP6_ConfigureMvEntropyDecoder, %function
VP6_ConfigureMvEntropyDecoder:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r4, r2, #72	@ D.35558, pbi,
	movw	r6, #:lower16:.LANCHOR0	@ tmp477,
	movt	r6, #:upper16:.LANCHOR0	@ tmp477,
	mov	r5, r1	@ pBs, pBs
	mov	r7, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	ldrb	r2, [r6, #460]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L419	@,
.L380:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #461]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L420	@,
.L381:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #477]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L421	@,
.L382:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #478]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L422	@,
.L383:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #462]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L423	@,
.L384:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #463]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L424	@,
.L385:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #464]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L425	@,
.L386:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #465]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L426	@,
.L387:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #466]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L427	@,
.L388:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #467]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L428	@,
.L389:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #468]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L429	@,
.L390:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #479]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L430	@,
.L392:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #480]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L431	@,
.L404:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #481]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L432	@,
.L405:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #482]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L433	@,
.L406:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #483]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L434	@,
.L407:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #484]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L435	@,
.L408:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #485]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L436	@,
.L393:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #469]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L437	@,
.L394:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #470]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L438	@,
.L395:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #471]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L439	@,
.L396:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #472]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L440	@,
.L397:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #473]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L441	@,
.L398:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #474]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L442	@,
.L399:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #475]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L443	@,
.L400:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #476]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L444	@,
.L401:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #486]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L445	@,
.L403:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #487]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L446	@,
.L411:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #488]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L447	@,
.L412:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #489]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L448	@,
.L413:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #490]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L449	@,
.L414:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #491]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L450	@,
.L415:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	ldrb	r2, [r6, #492]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L451	@,
	ldrb	r2, [r6, #493]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L452:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp424,,
	uxtb	ip, r3	@ D.35600, tmp424
	strb	ip, [r7, #513]	@ D.35600, <variable>.MvSizeProbs
	cmp	ip, #0	@ D.35600,
	moveq	ip, #1	@ tmp426,
	streqb	ip, [r7, #513]	@ tmp426, <variable>.MvSizeProbs
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L451:
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r6, #493]	@ zero_extendqisi2	@, VP6_MvUpdateProbs
	mov	r1, r4	@, D.35558
	mov	r3, r0, asl #1	@ tmp471,,
	mov	r0, r5	@, pBs
	uxtb	ip, r3	@ temp.3262, tmp471
	strb	ip, [r7, #512]	@ temp.3262, <variable>.MvSizeProbs
	cmp	ip, #0	@ temp.3262,
	moveq	ip, #1	@ tmp473,
	streqb	ip, [r7, #512]	@ tmp473, <variable>.MvSizeProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	b	.L452	@
.L450:
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp464,,
	uxtb	r1, r2	@ temp.3255, tmp464
	strb	r1, [r7, #511]	@ temp.3255, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3255,
	moveq	r1, #1	@ tmp466,
	streqb	r1, [r7, #511]	@ tmp466, <variable>.MvSizeProbs
	b	.L415	@
.L449:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp457,,
	uxtb	r0, r3	@ temp.3247, tmp457
	strb	r0, [r7, #510]	@ temp.3247, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3247,
	moveq	r0, #1	@ tmp459,
	streqb	r0, [r7, #510]	@ tmp459, <variable>.MvSizeProbs
	b	.L414	@
.L448:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp450,,
	uxtb	r2, ip	@ temp.3242, tmp450
	strb	r2, [r7, #509]	@ temp.3242, <variable>.MvSizeProbs
	cmp	r2, #0	@ temp.3242,
	moveq	r2, #1	@ tmp452,
	streqb	r2, [r7, #509]	@ tmp452, <variable>.MvSizeProbs
	b	.L413	@
.L447:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp443,,
	uxtb	r3, r1	@ temp.3235, tmp443
	strb	r3, [r7, #508]	@ temp.3235, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3235,
	moveq	r3, #1	@ tmp445,
	streqb	r3, [r7, #508]	@ tmp445, <variable>.MvSizeProbs
	b	.L412	@
.L446:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp436,,
	uxtb	r0, ip	@ temp.3227, tmp436
	strb	r0, [r7, #507]	@ temp.3227, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3227,
	moveq	r0, #1	@ tmp438,
	streqb	r0, [r7, #507]	@ tmp438, <variable>.MvSizeProbs
	b	.L411	@
.L445:
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp429,,
	uxtb	r1, r2	@ temp.3222, tmp429
	strb	r1, [r7, #506]	@ temp.3222, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3222,
	moveq	r1, #1	@ tmp431,
	streqb	r1, [r7, #506]	@ tmp431, <variable>.MvSizeProbs
	b	.L403	@
.L444:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp375,,
	uxtb	r0, r3	@ temp.3312, tmp375
	strb	r0, [r7, #505]	@ temp.3312, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3312,
	moveq	r0, #1	@ tmp377,
	streqb	r0, [r7, #505]	@ tmp377, <variable>.MvSizeProbs
	b	.L401	@
.L443:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp368,,
	uxtb	r2, ip	@ temp.3307, tmp368
	strb	r2, [r7, #504]	@ temp.3307, <variable>.MvSizeProbs
	cmp	r2, #0	@ temp.3307,
	moveq	r2, #1	@ tmp370,
	streqb	r2, [r7, #504]	@ tmp370, <variable>.MvSizeProbs
	b	.L400	@
.L442:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp361,,
	uxtb	r3, r1	@ temp.3302, tmp361
	strb	r3, [r7, #503]	@ temp.3302, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3302,
	moveq	r3, #1	@ tmp363,
	streqb	r3, [r7, #503]	@ tmp363, <variable>.MvSizeProbs
	b	.L399	@
.L441:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp354,,
	uxtb	r0, ip	@ temp.3297, tmp354
	strb	r0, [r7, #502]	@ temp.3297, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3297,
	moveq	r0, #1	@ tmp356,
	streqb	r0, [r7, #502]	@ tmp356, <variable>.MvSizeProbs
	b	.L398	@
.L440:
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp347,,
	uxtb	r1, r2	@ temp.3292, tmp347
	strb	r1, [r7, #501]	@ temp.3292, <variable>.MvSizeProbs
	cmp	r1, #0	@ temp.3292,
	moveq	r1, #1	@ tmp349,
	streqb	r1, [r7, #501]	@ tmp349, <variable>.MvSizeProbs
	b	.L397	@
.L439:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp340,,
	uxtb	ip, r3	@ temp.3287, tmp340
	strb	ip, [r7, #500]	@ temp.3287, <variable>.MvSizeProbs
	cmp	ip, #0	@ temp.3287,
	moveq	ip, #1	@ tmp342,
	streqb	ip, [r7, #500]	@ tmp342, <variable>.MvSizeProbs
	b	.L396	@
.L438:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp333,,
	uxtb	r0, r2	@ temp.3282, tmp333
	strb	r0, [r7, #499]	@ temp.3282, <variable>.MvSizeProbs
	cmp	r0, #0	@ temp.3282,
	moveq	r0, #1	@ tmp335,
	streqb	r0, [r7, #499]	@ tmp335, <variable>.MvSizeProbs
	b	.L395	@
.L437:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp326,,
	uxtb	r3, r1	@ temp.3277, tmp326
	strb	r3, [r7, #498]	@ temp.3277, <variable>.MvSizeProbs
	cmp	r3, #0	@ temp.3277,
	moveq	r3, #1	@ tmp328,
	streqb	r3, [r7, #498]	@ tmp328, <variable>.MvSizeProbs
	b	.L394	@
.L436:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp319,,
	uxtb	r2, ip	@ D.35588, tmp319
	strb	r2, [r7, #497]	@ D.35588, <variable>.MvShortProbs
	cmp	r2, #0	@ D.35588,
	moveq	r2, #1	@ tmp321,
	streqb	r2, [r7, #497]	@ tmp321, <variable>.MvShortProbs
	b	.L393	@
.L435:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp417,,
	uxtb	r0, r2	@ temp.3217, tmp417
	strb	r0, [r7, #496]	@ temp.3217, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3217,
	moveq	r0, #1	@ tmp419,
	streqb	r0, [r7, #496]	@ tmp419, <variable>.MvShortProbs
	b	.L408	@
.L434:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp410,,
	uxtb	r3, r1	@ temp.3210, tmp410
	strb	r3, [r7, #495]	@ temp.3210, <variable>.MvShortProbs
	cmp	r3, #0	@ temp.3210,
	moveq	r3, #1	@ tmp412,
	streqb	r3, [r7, #495]	@ tmp412, <variable>.MvShortProbs
	b	.L407	@
.L433:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp403,,
	uxtb	r2, ip	@ temp.3202, tmp403
	strb	r2, [r7, #494]	@ temp.3202, <variable>.MvShortProbs
	cmp	r2, #0	@ temp.3202,
	moveq	r2, #1	@ tmp405,
	streqb	r2, [r7, #494]	@ tmp405, <variable>.MvShortProbs
	b	.L406	@
.L432:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp396,,
	uxtb	r0, r1	@ temp.3197, tmp396
	strb	r0, [r7, #493]	@ temp.3197, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3197,
	moveq	r0, #1	@ tmp398,
	streqb	r0, [r7, #493]	@ tmp398, <variable>.MvShortProbs
	b	.L405	@
.L431:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp389,,
	uxtb	ip, r3	@ temp.3190, tmp389
	strb	ip, [r7, #492]	@ temp.3190, <variable>.MvShortProbs
	cmp	ip, #0	@ temp.3190,
	moveq	ip, #1	@ tmp391,
	streqb	ip, [r7, #492]	@ tmp391, <variable>.MvShortProbs
	b	.L404	@
.L430:
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp382,,
	uxtb	r1, r2	@ temp.3182, tmp382
	strb	r1, [r7, #491]	@ temp.3182, <variable>.MvShortProbs
	cmp	r1, #0	@ temp.3182,
	moveq	r1, #1	@ tmp384,
	streqb	r1, [r7, #491]	@ tmp384, <variable>.MvShortProbs
	b	.L392	@
.L429:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp312,,
	uxtb	r0, r1	@ temp.3272, tmp312
	strb	r0, [r7, #490]	@ temp.3272, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3272,
	moveq	r0, #1	@ tmp314,
	streqb	r0, [r7, #490]	@ tmp314, <variable>.MvShortProbs
	b	.L390	@
.L428:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp305,,
	uxtb	ip, r3	@ temp.3267, tmp305
	strb	ip, [r7, #489]	@ temp.3267, <variable>.MvShortProbs
	cmp	ip, #0	@ temp.3267,
	moveq	ip, #1	@ tmp307,
	streqb	ip, [r7, #489]	@ tmp307, <variable>.MvShortProbs
	b	.L389	@
.L427:
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp298,,
	uxtb	r1, r2	@ temp.3171, tmp298
	strb	r1, [r7, #488]	@ temp.3171, <variable>.MvShortProbs
	cmp	r1, #0	@ temp.3171,
	moveq	r1, #1	@ tmp300,
	streqb	r1, [r7, #488]	@ tmp300, <variable>.MvShortProbs
	b	.L388	@
.L426:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp291,,
	uxtb	r0, r3	@ temp.3183, tmp291
	strb	r0, [r7, #487]	@ temp.3183, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3183,
	moveq	r0, #1	@ tmp293,
	streqb	r0, [r7, #487]	@ tmp293, <variable>.MvShortProbs
	b	.L387	@
.L425:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp284,,
	uxtb	r2, ip	@ temp.3203, tmp284
	strb	r2, [r7, #486]	@ temp.3203, <variable>.MvShortProbs
	cmp	r2, #0	@ temp.3203,
	moveq	r2, #1	@ tmp286,
	streqb	r2, [r7, #486]	@ tmp286, <variable>.MvShortProbs
	b	.L386	@
.L424:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp277,,
	uxtb	r3, r1	@ temp.3228, tmp277
	strb	r3, [r7, #485]	@ temp.3228, <variable>.MvShortProbs
	cmp	r3, #0	@ temp.3228,
	moveq	r3, #1	@ tmp279,
	streqb	r3, [r7, #485]	@ tmp279, <variable>.MvShortProbs
	b	.L385	@
.L423:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp270,,
	uxtb	r0, ip	@ temp.3248, tmp270
	strb	r0, [r7, #484]	@ temp.3248, <variable>.MvShortProbs
	cmp	r0, #0	@ temp.3248,
	moveq	r0, #1	@ tmp272,
	streqb	r0, [r7, #484]	@ tmp272, <variable>.MvShortProbs
	b	.L384	@
.L422:
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp263,,
	uxtb	r1, r2	@ D.35576, tmp263
	strb	r1, [r7, #1]	@ D.35576, <variable>.MvSignProbs
	cmp	r1, #0	@ D.35576,
	moveq	r1, #1	@ tmp265,
	streqb	r1, [r7, #1]	@ tmp265, <variable>.MvSignProbs
	b	.L383	@
.L421:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp256,,
	uxtb	ip, r3	@ D.35566, tmp256
	strb	ip, [r7, #3]	@ D.35566, <variable>.IsMvShortProb
	cmp	ip, #0	@ D.35566,
	moveq	ip, #1	@ tmp258,
	streqb	ip, [r7, #3]	@ tmp258, <variable>.IsMvShortProb
	b	.L382	@
.L420:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35558
	bl	Vp6_Vfmw_BoolRead	@
	mov	r2, r0, asl #1	@ tmp249,,
	uxtb	r0, r2	@ temp.3170, tmp249
	strb	r0, [r7, #0]	@ temp.3170, <variable>.MvSignProbs
	cmp	r0, #0	@ temp.3170,
	moveq	r0, #1	@ tmp251,
	streqb	r0, [r7, #0]	@ tmp251, <variable>.MvSignProbs
	b	.L381	@
.L419:
	mov	r1, r4	@, D.35558
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp242,,
	uxtb	r3, r1	@ temp.3173, tmp242
	strb	r3, [r7, #2]	@ temp.3173, <variable>.IsMvShortProb
	cmp	r3, #0	@ temp.3173,
	moveq	r3, #1	@ tmp244,
	streqb	r3, [r7, #2]	@ tmp244, <variable>.IsMvShortProb
	b	.L380	@
	.fnend
	.size	VP6_ConfigureMvEntropyDecoder, .-VP6_ConfigureMvEntropyDecoder
	.align	2
	.global	VP6_decodeModeDiff
	.type	VP6_decodeModeDiff, %function
VP6_decodeModeDiff:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r1, #72	@ D.35457, pbi,
	mov	r2, #205	@,
	mov	r5, r0	@ pBs, pBs
	mov	r1, r4	@, D.35457
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.35458
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r4	@, D.35457
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r4	@, D.35457
	mov	r2, #171	@,
	rsb	r3, r0, r0, asl #31	@, tmp150,,,
	mov	r0, r5	@, pBs
	mov	r6, r3, asl #1	@ tmp151, tmp150,
	bl	Vp6_Vfmw_DecodeBool	@
	add	r6, r6, #1	@ sign, tmp151,
	cmp	r0, #0	@,
	beq	.L462	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35457
	mov	r2, #199	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L457	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35457
	mov	r2, #140	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	addne	r6, r6, r6, asl #1	@, tmp155, sign, sign,
	movne	r0, r6, asl #2	@ D.35461, tmp155,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35457
	mov	r2, #125	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	movne	r0, r6, asl #4	@ D.35461, sign,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35457
	mov	r2, #104	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	addne	r6, r6, r6, asl #2	@, tmp159, sign, sign,
	addeq	r6, r6, r6, asl #1	@, tmp163, sign, sign,
	movne	r0, r6, asl #2	@ D.35461, tmp159,
	moveq	r0, r6, asl #3	@ D.35461, tmp163,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L457:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35457
	mov	r2, #7	@,
	mov	r6, r6, asl #2	@ tmp165, sign,
	bl	Vp6_Vfmw_BoolRead	@
	mul	r0, r0, r6	@ D.35461,, tmp165
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L462:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35457
	mov	r2, #83	@,
	bl	Vp6_Vfmw_DecodeBool	@
	rsb	r0, r0, #3	@ tmp152,,
	mov	r0, r6, asl r0	@ D.35461, sign,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP6_decodeModeDiff, .-VP6_decodeModeDiff
	.align	2
	.global	VP6_DecodeModeProbs
	.type	VP6_DecodeModeProbs, %function
VP6_DecodeModeProbs:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r2	@ pbi, pbi
	.pad #52
	sub	sp, sp, #52	@,,
	add	r8, r6, #72	@ D.35503, pbi,
	mov	sl, r0	@ pVp6CodecInfo, pVp6CodecInfo
	mov	r5, r1	@ pBs, pBs
	mov	r4, r0	@ ivtmp.3373, pVp6CodecInfo
	mov	r7, #0	@ j,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	r2, [sp, #4]	@, %sfp
.L506:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, D.35503
	mov	r2, #174	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L509	@,
.L464:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, D.35503
	mov	r2, #254	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L465	@,
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	mov	r9, r7, asl #2	@ tmp596, j,
	add	r3, r9, r7	@ tmp511, tmp596, j
	add	fp, sl, r3, asl #2	@, tmp513, pVp6CodecInfo, tmp511,
	ldrb	r2, [fp, #414]	@ zero_extendqisi2	@ tmp515, <variable>.probXmitted
	adds	r3, r2, r0	@ diff.3418, tmp515,
	movmi	r3, #0	@ iftmp.3420,
	bmi	.L467	@,
	cmp	r3, #255	@ diff.3418,
	movge	r3, #255	@ tmp516,
	uxtb	r3, r3	@ iftmp.3420, tmp516
.L467:
	add	lr, r9, r7	@ tmp520, tmp596, j
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	add	fp, sl, lr, asl #2	@, tmp522, pVp6CodecInfo, tmp520,
	strb	r3, [fp, #414]	@ iftmp.3420, <variable>.probXmitted
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [fp, #404]	@ zero_extendqisi2	@ tmp532, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3424,, tmp532
	movmi	r3, #0	@ iftmp.3426,
	bmi	.L469	@,
	cmp	r3, #255	@ diff.3424,
	movge	r3, #255	@ tmp533,
	uxtb	r3, r3	@ iftmp.3426, tmp533
.L469:
	add	r9, r9, r7	@ tmp537, tmp596, j
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	add	r9, sl, r9, asl #2	@, tmp539, pVp6CodecInfo, tmp537,
	strb	r3, [r9, #404]	@ iftmp.3426, <variable>.probXmitted
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #415]	@ zero_extendqisi2	@ tmp542, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3430,, tmp542
	movmi	r3, #0	@ iftmp.3432,
	bmi	.L471	@,
	cmp	r3, #255	@ diff.3430,
	movge	r3, #255	@ tmp543,
	uxtb	r3, r3	@ iftmp.3432, tmp543
.L471:
	strb	r3, [r4, #415]	@ iftmp.3432, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #405]	@ zero_extendqisi2	@ tmp545, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3436,, tmp545
	movmi	r3, #0	@ iftmp.3438,
	bmi	.L473	@,
	cmp	r3, #255	@ diff.3436,
	movge	r3, #255	@ tmp546,
	uxtb	r3, r3	@ iftmp.3438, tmp546
.L473:
	strb	r3, [r4, #405]	@ iftmp.3438, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #416]	@ zero_extendqisi2	@ tmp548, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3442,, tmp548
	movmi	r3, #0	@ iftmp.3444,
	bmi	.L475	@,
	cmp	r3, #255	@ diff.3442,
	movge	r3, #255	@ tmp549,
	uxtb	r3, r3	@ iftmp.3444, tmp549
.L475:
	strb	r3, [r4, #416]	@ iftmp.3444, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #406]	@ zero_extendqisi2	@ tmp551, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3448,, tmp551
	movmi	r3, #0	@ iftmp.3450,
	bmi	.L477	@,
	cmp	r3, #255	@ diff.3448,
	movge	r3, #255	@ tmp552,
	uxtb	r3, r3	@ iftmp.3450, tmp552
.L477:
	strb	r3, [r4, #406]	@ iftmp.3450, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #417]	@ zero_extendqisi2	@ tmp554, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3454,, tmp554
	movmi	r3, #0	@ iftmp.3456,
	bmi	.L479	@,
	cmp	r3, #255	@ diff.3454,
	movge	r3, #255	@ tmp555,
	uxtb	r3, r3	@ iftmp.3456, tmp555
.L479:
	strb	r3, [r4, #417]	@ iftmp.3456, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #407]	@ zero_extendqisi2	@ tmp557, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3460,, tmp557
	movmi	r3, #0	@ iftmp.3462,
	bmi	.L481	@,
	cmp	r3, #255	@ diff.3460,
	movge	r3, #255	@ tmp558,
	uxtb	r3, r3	@ iftmp.3462, tmp558
.L481:
	strb	r3, [r4, #407]	@ iftmp.3462, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #418]	@ zero_extendqisi2	@ tmp560, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3466,, tmp560
	movmi	r3, #0	@ iftmp.3468,
	bmi	.L483	@,
	cmp	r3, #255	@ diff.3466,
	movge	r3, #255	@ tmp561,
	uxtb	r3, r3	@ iftmp.3468, tmp561
.L483:
	strb	r3, [r4, #418]	@ iftmp.3468, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #408]	@ zero_extendqisi2	@ tmp563, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3472,, tmp563
	movmi	r3, #0	@ iftmp.3474,
	bmi	.L485	@,
	cmp	r3, #255	@ diff.3472,
	movge	r3, #255	@ tmp564,
	uxtb	r3, r3	@ iftmp.3474, tmp564
.L485:
	strb	r3, [r4, #408]	@ iftmp.3474, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #419]	@ zero_extendqisi2	@ tmp566, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3478,, tmp566
	movmi	r3, #0	@ iftmp.3480,
	bmi	.L487	@,
	cmp	r3, #255	@ diff.3478,
	movge	r3, #255	@ tmp567,
	uxtb	r3, r3	@ iftmp.3480, tmp567
.L487:
	strb	r3, [r4, #419]	@ iftmp.3480, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #409]	@ zero_extendqisi2	@ tmp569, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3484,, tmp569
	movmi	r3, #0	@ iftmp.3486,
	bmi	.L489	@,
	cmp	r3, #255	@ diff.3484,
	movge	r3, #255	@ tmp570,
	uxtb	r3, r3	@ iftmp.3486, tmp570
.L489:
	strb	r3, [r4, #409]	@ iftmp.3486, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #420]	@ zero_extendqisi2	@ tmp572, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3490,, tmp572
	movmi	r3, #0	@ iftmp.3492,
	bmi	.L491	@,
	cmp	r3, #255	@ diff.3490,
	movge	r3, #255	@ tmp573,
	uxtb	r3, r3	@ iftmp.3492, tmp573
.L491:
	strb	r3, [r4, #420]	@ iftmp.3492, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #410]	@ zero_extendqisi2	@ tmp575, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3496,, tmp575
	movmi	r3, #0	@ iftmp.3498,
	bmi	.L493	@,
	cmp	r3, #255	@ diff.3496,
	movge	r3, #255	@ tmp576,
	uxtb	r3, r3	@ iftmp.3498, tmp576
.L493:
	strb	r3, [r4, #410]	@ iftmp.3498, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #421]	@ zero_extendqisi2	@ tmp578, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3502,, tmp578
	movmi	r3, #0	@ iftmp.3504,
	bmi	.L495	@,
	cmp	r3, #255	@ diff.3502,
	movge	r3, #255	@ tmp579,
	uxtb	r3, r3	@ iftmp.3504, tmp579
.L495:
	strb	r3, [r4, #421]	@ iftmp.3504, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #411]	@ zero_extendqisi2	@ tmp581, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3508,, tmp581
	movmi	r3, #0	@ iftmp.3510,
	bmi	.L497	@,
	cmp	r3, #255	@ diff.3508,
	movge	r3, #255	@ tmp582,
	uxtb	r3, r3	@ iftmp.3510, tmp582
.L497:
	strb	r3, [r4, #411]	@ iftmp.3510, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [r4, #422]	@ zero_extendqisi2	@ tmp584, <variable>.probXmitted
	adds	r3, r0, r3	@ diff.3514,, tmp584
	movmi	r3, #0	@ iftmp.3516,
	bmi	.L499	@,
	cmp	r3, #255	@ diff.3514,
	movge	r3, #255	@ tmp585,
	uxtb	r3, r3	@ iftmp.3516, tmp585
.L499:
	strb	r3, [r4, #422]	@ iftmp.3516, <variable>.probXmitted
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r1, [r4, #412]	@ zero_extendqisi2	@ tmp587, <variable>.probXmitted
	adds	r3, r0, r1	@ diff.3520,, tmp587
	movmi	r3, #0	@ iftmp.3522,
	bmi	.L501	@,
	cmp	r3, #255	@ diff.3520,
	movge	r3, #255	@ tmp588,
	uxtb	r3, r3	@ iftmp.3522, tmp588
.L501:
	strb	r3, [r4, #412]	@ iftmp.3522, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	ip, [r4, #423]	@ zero_extendqisi2	@ tmp590, <variable>.probXmitted
	adds	r3, r0, ip	@ diff.3394,, tmp590
	movmi	r3, #0	@ iftmp.454,
	bmi	.L503	@,
	cmp	r3, #255	@ diff.3394,
	movge	r3, #255	@ tmp591,
	uxtb	r3, r3	@ iftmp.454, tmp591
.L503:
	strb	r3, [r4, #423]	@ iftmp.454, <variable>.probXmitted
	mov	r0, r5	@, pBs
	mov	r1, r6	@, pbi
	bl	VP6_decodeModeDiff	@
	ldrb	r2, [r4, #413]	@ zero_extendqisi2	@ tmp593, <variable>.probXmitted
	adds	r3, r0, r2	@ diff.3396,, tmp593
	movmi	r3, #0	@ iftmp.456,
	bmi	.L505	@,
	cmp	r3, #255	@ diff.3396,
	movge	r3, #255	@ tmp594,
	uxtb	r3, r3	@ iftmp.456, tmp594
.L505:
	strb	r3, [r4, #413]	@ iftmp.456, <variable>.probXmitted
.L465:
	add	r7, r7, #1	@ j, j,
	add	r4, r4, #20	@ ivtmp.3373, ivtmp.3373,
	cmp	r7, #3	@ j,
	bne	.L506	@,
	mov	r0, sl	@, pVp6CodecInfo
	mov	r1, r6	@, pbi
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	VP6_BuildModeTree	@
.L509:
	mov	r1, r8	@, D.35503
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	add	ip, r7, r7, asl #2	@, tmp216, j, j,
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, ip, asl #6	@ tmp217, tmp216,
	add	r1, r0, r0, asl #2	@, tmp212,,,
	add	r9, r3, r1, asl #2	@, tmp218, tmp217, tmp212,
	add	r3, r9, fp	@ tmp219, tmp218,
	ldrb	r2, [r3, #502]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	lr, [r3, #498]	@ zero_extendqisi2	@ tmp251, VP6_ModeVq
	ldrb	ip, [r3, #499]	@ zero_extendqisi2	@ tmp266, VP6_ModeVq
	str	r2, [sp, #8]	@, %sfp
	ldrb	r2, [r3, #503]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	r0, [r3, #500]	@ zero_extendqisi2	@ tmp281, VP6_ModeVq
	ldrb	fp, [r3, #496]	@ zero_extendqisi2	@ tmp221, VP6_ModeVq
	str	r2, [sp, #12]	@, %sfp
	ldrb	r2, [r3, #504]	@ zero_extendqisi2	@, VP6_ModeVq
	ldrb	r9, [r3, #497]	@ zero_extendqisi2	@ tmp236, VP6_ModeVq
	ldrb	r1, [r3, #501]	@ zero_extendqisi2	@ tmp296, VP6_ModeVq
	str	r2, [sp, #16]	@, %sfp
	ldrb	r2, [r3, #505]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [sp, #20]	@, %sfp
	ldrb	r2, [r3, #506]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [sp, #24]	@, %sfp
	ldrb	r2, [r3, #507]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [sp, #28]	@, %sfp
	ldrb	r2, [r3, #508]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [sp, #32]	@, %sfp
	ldrb	r2, [r3, #509]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [sp, #36]	@, %sfp
	ldrb	r2, [r3, #510]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [sp, #40]	@, %sfp
	ldrb	r2, [r3, #511]	@ zero_extendqisi2	@, VP6_ModeVq
	str	r2, [sp, #44]	@, %sfp
	ldrb	r2, [r3, #512]	@ zero_extendqisi2	@ tmp461, VP6_ModeVq
	strb	lr, [r4, #415]	@ tmp251, <variable>.probXmitted
	strb	ip, [r4, #405]	@ tmp266, <variable>.probXmitted
	strb	r0, [r4, #416]	@ tmp281, <variable>.probXmitted
	strb	fp, [r4, #414]	@, <variable>.probXmitted
	strb	r9, [r4, #404]	@ tmp236, <variable>.probXmitted
	strb	r1, [r4, #406]	@ tmp296, <variable>.probXmitted
	ldr	lr, [sp, #8]	@, %sfp
	strb	lr, [r4, #417]	@, <variable>.probXmitted
	ldr	ip, [sp, #12]	@, %sfp
	strb	ip, [r4, #407]	@, <variable>.probXmitted
	ldr	r1, [sp, #16]	@, %sfp
	strb	r1, [r4, #418]	@, <variable>.probXmitted
	ldr	r0, [sp, #20]	@, %sfp
	strb	r0, [r4, #408]	@, <variable>.probXmitted
	ldr	lr, [sp, #24]	@, %sfp
	strb	lr, [r4, #419]	@, <variable>.probXmitted
	ldr	ip, [sp, #28]	@, %sfp
	strb	ip, [r4, #409]	@, <variable>.probXmitted
	ldr	r1, [sp, #32]	@, %sfp
	strb	r1, [r4, #420]	@, <variable>.probXmitted
	ldr	r0, [sp, #36]	@, %sfp
	ldrb	r1, [r3, #515]	@ zero_extendqisi2	@ tmp506, VP6_ModeVq
	strb	r0, [r4, #410]	@, <variable>.probXmitted
	ldr	lr, [sp, #40]	@, %sfp
	ldrb	r0, [r3, #513]	@ zero_extendqisi2	@ tmp476, VP6_ModeVq
	ldrb	r3, [r3, #514]	@ zero_extendqisi2	@ tmp491, VP6_ModeVq
	strb	lr, [r4, #421]	@, <variable>.probXmitted
	ldr	ip, [sp, #44]	@, %sfp
	strb	r2, [r4, #422]	@ tmp461, <variable>.probXmitted
	strb	r1, [r4, #413]	@ tmp506, <variable>.probXmitted
	strb	ip, [r4, #411]	@, <variable>.probXmitted
	strb	r0, [r4, #412]	@ tmp476, <variable>.probXmitted
	strb	r3, [r4, #423]	@ tmp491, <variable>.probXmitted
	b	.L464	@
	.fnend
	.size	VP6_DecodeModeProbs, .-VP6_DecodeModeProbs
	.align	2
	.global	VP6_ConfigureEntropyDecoder
	.type	VP6_ConfigureEntropyDecoder, %function
VP6_ConfigureEntropyDecoder:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	add	r4, r2, #72	@ D.35391, pbi,
	movw	r7, #:lower16:.LANCHOR0	@ tmp987,
	movt	r7, #:upper16:.LANCHOR0	@ tmp987,
	str	r2, [sp, #20]	@ pbi, %sfp
	mov	r5, r1	@ pBs, pBs
	str	r0, [sp, #0]	@ pVp6CodecInfo, %sfp
	mov	r1, #128	@,
	mov	r2, #11	@,
	add	r0, sp, #28	@,,
	mov	r6, r3	@ FrameType, FrameType
	bl	memset	@
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1456]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L511	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #28]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #514]	@ LastProb, <variable>.DcProbs
.L512:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1457]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L513	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #29]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #515]	@ LastProb, <variable>.DcProbs
.L514:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1458]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L515	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #30]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #516]	@ LastProb, <variable>.DcProbs
.L516:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1459]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L517	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #31]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #517]	@ LastProb, <variable>.DcProbs
.L518:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1460]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L519	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #32]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #518]	@ LastProb, <variable>.DcProbs
.L520:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1461]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L521	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #33]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #519]	@ LastProb, <variable>.DcProbs
.L522:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1462]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L523	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #34]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #520]	@ LastProb, <variable>.DcProbs
.L524:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1463]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L525	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #35]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #521]	@ LastProb, <variable>.DcProbs
.L526:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1464]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L527	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #36]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #522]	@ LastProb, <variable>.DcProbs
.L528:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1465]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L529	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #37]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #523]	@ LastProb, <variable>.DcProbs
.L530:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1466]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L632	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #38]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [sp, #0]	@, %sfp
	streqb	r3, [r2, #524]	@ LastProb, <variable>.DcProbs
.L532:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1467]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L633	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #28]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #525]	@ LastProb, <variable>.DcProbs
.L537:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1468]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L538	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #29]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #526]	@ LastProb, <variable>.DcProbs
.L539:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1469]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L540	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #30]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #527]	@ LastProb, <variable>.DcProbs
.L541:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1470]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L542	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #31]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #528]	@ LastProb, <variable>.DcProbs
.L543:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1471]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L544	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #32]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #529]	@ LastProb, <variable>.DcProbs
.L545:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1472]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L546	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #33]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #530]	@ LastProb, <variable>.DcProbs
.L547:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1473]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L548	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #34]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #531]	@ LastProb, <variable>.DcProbs
.L549:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1474]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L550	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #35]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #532]	@ LastProb, <variable>.DcProbs
.L551:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1475]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L552	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #36]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #533]	@ LastProb, <variable>.DcProbs
.L553:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1476]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L554	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #37]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r1, [sp, #0]	@, %sfp
	streqb	r3, [r1, #534]	@ LastProb, <variable>.DcProbs
.L555:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1477]	@ zero_extendqisi2	@, VP6_DcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L634	@,
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #38]	@ zero_extendqisi2	@ LastProb, LastProb
	ldreq	r2, [sp, #0]	@, %sfp
	streqb	r3, [r2, #535]	@ LastProb, <variable>.DcProbs
	beq	.L535	@,
.L536:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L558	@,
	ldr	fp, .L677	@ tmp985,
	mov	r8, #1	@ i,
	ldr	sl, [sp, #0]	@ ivtmp.3619, %sfp
	mov	r9, r7	@ tmp987, tmp987
	str	r6, [sp, #4]	@ FrameType, %sfp
	b	.L560	@
.L559:
	mov	r1, r4	@, D.35391
	ldrb	r2, [fp, r6]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L635	@,
.L622:
	add	lr, r6, #1	@ i, tmp998,
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	add	sl, r7, #2	@ ivtmp.3619, tmp999,
	ldrb	r2, [fp, lr]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	add	r8, r6, #2	@ i, tmp998,
	bl	Vp6_Vfmw_DecodeBool	@
	add	r7, r7, #1	@ ivtmp.3619, tmp999,
	cmp	r0, #0	@,
	bne	.L636	@,
	cmp	r8, #64	@ i,
	beq	.L637	@,
.L560:
	ldrb	r2, [fp, r8]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	add	r6, r8, #1	@ tmp998, i,
	bl	Vp6_Vfmw_DecodeBool	@
	add	r7, sl, #1	@ tmp999, ivtmp.3619,
	cmp	r0, #0	@,
	beq	.L559	@,
	mov	r1, r4	@, D.35391
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.35391
	ldrb	r2, [fp, r6]	@ zero_extendqisi2	@, ScanBandUpdateProbs
	strb	r0, [sl, #1089]	@, <variable>.ScanBands
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L622	@,
.L635:
	mov	r2, #4	@,
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	strb	r0, [r7, #1089]	@, <variable>.ScanBands
	b	.L622	@
.L636:
	mov	r2, #4	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	cmp	r8, #64	@ i,
	strb	r0, [r7, #1089]	@, <variable>.ScanBands
	bne	.L560	@,
.L637:
	ldr	r0, [sp, #0]	@, %sfp
	mov	r7, r9	@ tmp987, tmp987
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r6, [sp, #4]	@ FrameType, %sfp
	bl	VP6_BuildScanOrder	@
.L558:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1572]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L638	@,
.L561:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1573]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L639	@,
.L562:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1574]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L640	@,
.L563:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1575]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L641	@,
.L564:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1576]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L642	@,
.L565:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1577]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L643	@,
.L566:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1578]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L644	@,
.L567:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1579]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L645	@,
.L568:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1580]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L646	@,
.L569:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1581]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L647	@,
.L570:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1582]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L648	@,
.L571:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1583]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L649	@,
.L572:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1584]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L650	@,
.L573:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1585]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L651	@,
.L574:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1586]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L652	@,
.L576:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1587]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L653	@,
.L578:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1588]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L654	@,
.L579:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1589]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L655	@,
.L580:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1590]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L656	@,
.L581:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1591]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L657	@,
.L582:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1592]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L658	@,
.L583:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1593]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L659	@,
.L584:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1594]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L660	@,
.L585:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1595]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L661	@,
.L586:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1596]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L662	@,
.L587:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1597]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L663	@,
.L588:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1598]	@ zero_extendqisi2	@, ZrlUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L664	@,
.L589:
	ldrb	r2, [r7, #1599]	@ zero_extendqisi2	@, ZrlUpdateProbs
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L665	@,
.L591:
	mov	lr, #0	@,
	str	lr, [sp, #12]	@, %sfp
	str	lr, [sp, #8]	@, %sfp
.L577:
	ldr	fp, [sp, #8]	@, %sfp
	mov	sl, #0	@,
	str	sl, [sp, #4]	@, %sfp
	add	r8, fp, fp, asl #5	@, tmp989,,,
	mov	fp, sl	@ Plane,
	mov	r7, r8, asl #2	@, tmp989,
	str	r7, [sp, #16]	@, %sfp
.L619:
	ldr	lr, [sp, #12]	@, %sfp
	add	ip, fp, fp, asl #5	@, tmp973, Plane, Plane,
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r2, [sp, #0]	@, %sfp
	add	r9, lr, r1	@ tmp980,,
	ldr	r3, [sp, #16]	@, %sfp
	add	sl, r2, r9	@ tmp982,, tmp980
	ldr	r8, .L677+4	@,
	add	sl, sl, #564	@ ivtmp.3565, tmp982,
	add	r7, r3, ip, asl #1	@, tmp979,, tmp973,
	add	r7, r8, r7	@ ivtmp.3563,, tmp979
	mov	r9, #0	@ Band,
	mov	r8, sl	@ ivtmp.3636, ivtmp.3565
	b	.L617	@
.L667:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [sp, #28]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #0]	@ LastProb, <variable>.AcProbs
.L595:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L596	@,
.L668:
	cmp	r6, #0	@ FrameType,
	ldreqb	r0, [sp, #29]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r0, [r8, #1]	@ LastProb, <variable>.AcProbs
.L597:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L598	@,
.L669:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [sp, #30]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #2]	@ LastProb, <variable>.AcProbs
.L599:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L600	@,
.L670:
	cmp	r6, #0	@ FrameType,
	ldreqb	r1, [sp, #31]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r1, [r8, #3]	@ LastProb, <variable>.AcProbs
.L601:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L602	@,
.L671:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [sp, #32]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #4]	@ LastProb, <variable>.AcProbs
.L603:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L604	@,
.L672:
	cmp	r6, #0	@ FrameType,
	ldreqb	ip, [sp, #33]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	ip, [r8, #5]	@ LastProb, <variable>.AcProbs
.L605:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L606	@,
.L673:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [sp, #34]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #6]	@ LastProb, <variable>.AcProbs
.L607:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L608	@,
.L674:
	cmp	r6, #0	@ FrameType,
	ldreqb	r0, [sp, #35]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r0, [r8, #7]	@ LastProb, <variable>.AcProbs
.L609:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L610	@,
.L675:
	cmp	r6, #0	@ FrameType,
	ldreqb	lr, [sp, #36]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	lr, [r8, #8]	@ LastProb, <variable>.AcProbs
.L611:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L612	@,
.L676:
	cmp	r6, #0	@ FrameType,
	ldreqb	r3, [sp, #37]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r3, [r8, #9]	@ LastProb, <variable>.AcProbs
.L613:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L666	@,
.L629:
	cmp	r6, #0	@ FrameType,
	add	r9, r9, #1	@ Band, Band,
	add	r7, r7, #11	@ ivtmp.3563, ivtmp.3563,
	add	sl, sl, #11	@ ivtmp.3565, ivtmp.3565,
	ldreqb	r3, [sp, #38]	@ zero_extendqisi2	@ LastProb, LastProb
	streqb	r3, [r8, #10]	@ LastProb, <variable>.AcProbs
	cmp	r9, #6	@ Band,
	add	r8, r8, #11	@ ivtmp.3636, ivtmp.3636,
	beq	.L593	@,
.L617:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L667	@,
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	ip, r0, asl #1	@ tmp872,,
	mov	r0, r5	@, pBs
	uxtb	r3, ip	@ temp.3849, tmp872
	cmp	r3, #0	@ temp.3849,
	addeq	r3, r3, #1	@,, tmp875, temp.3849
	uxtb	r1, r3	@ temp.3851, tmp875
	strb	r1, [sp, #28]	@ temp.3851, LastProb
	strb	r1, [sl, #0]	@ temp.3851, <variable>.AcProbs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L668	@,
.L596:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r3, r0, asl #1	@ tmp882,,
	mov	r0, r5	@, pBs
	uxtb	r1, r3	@ temp.3858, tmp882
	cmp	r1, #0	@ temp.3858,
	addeq	r1, r1, #1	@,, tmp885, temp.3858
	uxtb	r2, r1	@ temp.3860, tmp885
	mov	r1, r4	@, D.35391
	strb	r2, [sp, #29]	@ temp.3860, LastProb
	strb	r2, [sl, #1]	@ temp.3860, <variable>.AcProbs
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L669	@,
.L598:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.35391
	mov	r2, r0, asl #1	@ tmp892,,
	uxtb	r0, r2	@ temp.3866, tmp892
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	r0, #0	@ temp.3866,
	addeq	r0, r0, #1	@,, tmp895, temp.3866
	uxtb	ip, r0	@ temp.3868, tmp895
	mov	r0, r5	@, pBs
	strb	ip, [sp, #30]	@ temp.3868, LastProb
	strb	ip, [sl, #2]	@ temp.3868, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L670	@,
.L600:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.35391
	mov	r2, r0, asl #1	@ tmp902,,
	mov	r0, r5	@, pBs
	uxtb	ip, r2	@ temp.3879, tmp902
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	ip, #0	@ temp.3879,
	addeq	ip, ip, #1	@,, tmp905, temp.3879
	uxtb	r3, ip	@ temp.3881, tmp905
	strb	r3, [sp, #31]	@ temp.3881, LastProb
	strb	r3, [sl, #3]	@ temp.3881, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L671	@,
.L602:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	r3, r0, asl #1	@ tmp912,,
	uxtb	r1, r3	@ temp.3888, tmp912
	cmp	r1, #0	@ temp.3888,
	addeq	r1, r1, #1	@,, tmp915, temp.3888
	uxtb	r0, r1	@ temp.3890, tmp915
	mov	r1, r4	@, D.35391
	strb	r0, [sp, #32]	@ temp.3890, LastProb
	strb	r0, [sl, #4]	@ temp.3890, <variable>.AcProbs
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L672	@,
.L604:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp922,,
	uxtb	r0, r1	@ temp.3898, tmp922
	mov	r1, r4	@, D.35391
	cmp	r0, #0	@ temp.3898,
	addeq	r0, r0, #1	@,, tmp925, temp.3898
	uxtb	r2, r0	@ temp.3900, tmp925
	mov	r0, r5	@, pBs
	strb	r2, [sp, #33]	@ temp.3900, LastProb
	strb	r2, [sl, #5]	@ temp.3900, <variable>.AcProbs
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L673	@,
.L606:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r4	@, D.35391
	mov	r2, r0, asl #1	@ tmp932,,
	mov	r0, r5	@, pBs
	uxtb	ip, r2	@ temp.3906, tmp932
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	cmp	ip, #0	@ temp.3906,
	addeq	ip, ip, #1	@,, tmp935, temp.3906
	uxtb	r3, ip	@ temp.3908, tmp935
	strb	r3, [sp, #34]	@ temp.3908, LastProb
	strb	r3, [sl, #6]	@ temp.3908, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L674	@,
.L608:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	mov	ip, r0, asl #1	@ tmp942,,
	mov	r0, r5	@, pBs
	uxtb	r3, ip	@ temp.3918, tmp942
	cmp	r3, #0	@ temp.3918,
	addeq	r3, r3, #1	@,, tmp945, temp.3918
	uxtb	r1, r3	@ temp.3920, tmp945
	strb	r1, [sp, #35]	@ temp.3920, LastProb
	strb	r1, [sl, #7]	@ temp.3920, <variable>.AcProbs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L675	@,
.L610:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp952,,
	uxtb	r0, r1	@ temp.3928, tmp952
	mov	r1, r4	@, D.35391
	cmp	r0, #0	@ temp.3928,
	addeq	r0, r0, #1	@,, tmp955, temp.3928
	uxtb	r2, r0	@ temp.3930, tmp955
	mov	r0, r5	@, pBs
	strb	r2, [sp, #36]	@ temp.3930, LastProb
	strb	r2, [sl, #8]	@ temp.3930, <variable>.AcProbs
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L676	@,
.L612:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	mov	r1, r0, asl #1	@ tmp962,,
	mov	r0, r5	@, pBs
	uxtb	r2, r1	@ temp.3938, tmp962
	mov	r1, r4	@, D.35391
	cmp	r2, #0	@ temp.3938,
	addeq	r2, r2, #1	@,, tmp965, temp.3938
	uxtb	ip, r2	@ temp.3940, tmp965
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, VP6_AcUpdateProbs
	strb	ip, [sp, #37]	@ temp.3940, LastProb
	strb	ip, [sl, #9]	@ temp.3940, <variable>.AcProbs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L629	@,
.L666:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	add	r9, r9, #1	@ Band, Band,
	bl	Vp6_Vfmw_BoolRead	@
	add	r7, r7, #11	@ ivtmp.3563, ivtmp.3563,
	add	r8, r8, #11	@ ivtmp.3636, ivtmp.3636,
	mov	r2, r0, asl #1	@ tmp860,,
	uxtb	ip, r2	@ D.35440, tmp860
	cmp	ip, #0	@ D.35440,
	addeq	ip, ip, #1	@,, tmp863, D.35440
	cmp	r9, #6	@ Band,
	uxtb	r0, ip	@ temp.3623, tmp863
	strb	r0, [sp, #38]	@ temp.3623, LastProb
	strb	r0, [sl, #10]	@ temp.3623, <variable>.AcProbs
	add	sl, sl, #11	@ ivtmp.3565, ivtmp.3565,
	bne	.L617	@,
.L593:
	add	fp, fp, #1	@ Plane, Plane,
	ldr	r0, [sp, #4]	@, %sfp
	cmp	fp, #2	@ Plane,
	add	lr, r0, #198	@,,
	str	lr, [sp, #4]	@, %sfp
	bne	.L619	@,
	ldr	r2, [sp, #8]	@, %sfp
	ldr	r3, [sp, #12]	@, %sfp
	add	r0, r2, #1	@,,
	str	r0, [sp, #8]	@, %sfp
	cmp	r0, #3	@,
	add	ip, r3, #66	@,,
	str	ip, [sp, #12]	@, %sfp
	bne	.L577	@,
	ldr	r0, [sp, #0]	@, %sfp
	ldr	r1, [sp, #20]	@, %sfp
	bl	VP6_ConfigureContexts	@
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L634:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r1, r0, asl #1	@ tmp506,,
	uxtb	r3, r1	@ D.35400, tmp506
	cmp	r3, #0	@ D.35400,
	addeq	r3, r3, #1	@,, tmp509, D.35400
	cmp	r6, #0	@ FrameType,
	uxtb	ip, r3	@ D.35403, tmp509
	strb	ip, [r2, #535]	@ D.35403, <variable>.DcProbs
	strb	ip, [sp, #38]	@ D.35403, LastProb
	bne	.L536	@,
.L535:
	ldr	lr, .L677+8	@ tmp626,
	ldr	r2, [sp, #0]	@, %sfp
	add	ip, r2, #536	@ tmp624,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp629,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp624,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp629,,,
	stmia	ip, {r0, r1, r2}	@ tmp628,,,
	b	.L536	@
.L554:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp616,,
	uxtb	r0, sl	@ temp.3723, tmp616
	cmp	r0, #0	@ temp.3723,
	addeq	r0, r0, #1	@,, tmp619, temp.3723
	uxtb	r8, r0	@ temp.3725, tmp619
	strb	r8, [r9, #534]	@ temp.3725, <variable>.DcProbs
	strb	r8, [sp, #37]	@ temp.3725, LastProb
	b	.L555	@
.L552:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r1, r0, asl #1	@ tmp605,,
	uxtb	r3, r1	@ temp.3712, tmp605
	cmp	r3, #0	@ temp.3712,
	addeq	r3, r3, #1	@,, tmp608, temp.3712
	uxtb	ip, r3	@ temp.3714, tmp608
	strb	ip, [r2, #533]	@ temp.3714, <variable>.DcProbs
	strb	ip, [sp, #36]	@ temp.3714, LastProb
	b	.L553	@
.L550:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	fp, r0, asl #1	@ tmp594,,
	ldr	r0, [sp, #0]	@, %sfp
	uxtb	sl, fp	@ temp.3702, tmp594
	cmp	sl, #0	@ temp.3702,
	addeq	sl, sl, #1	@,, tmp597, temp.3702
	uxtb	r9, sl	@ temp.3704, tmp597
	strb	r9, [r0, #532]	@ temp.3704, <variable>.DcProbs
	strb	r9, [sp, #35]	@ temp.3704, LastProb
	b	.L551	@
.L548:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp583,,
	uxtb	r1, r8	@ temp.3694, tmp583
	cmp	r1, #0	@ temp.3694,
	addeq	r1, r1, #1	@,, tmp586, temp.3694
	uxtb	r3, r1	@ temp.3696, tmp586
	strb	r3, [r2, #531]	@ temp.3696, <variable>.DcProbs
	strb	r3, [sp, #34]	@ temp.3696, LastProb
	b	.L549	@
.L546:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	sl, [sp, #0]	@, %sfp
	mov	ip, r0, asl #1	@ tmp572,,
	uxtb	fp, ip	@ temp.3683, tmp572
	cmp	fp, #0	@ temp.3683,
	addeq	fp, fp, #1	@,, tmp575, temp.3683
	uxtb	r0, fp	@ temp.3685, tmp575
	strb	r0, [sl, #530]	@ temp.3685, <variable>.DcProbs
	strb	r0, [sp, #33]	@ temp.3685, LastProb
	b	.L547	@
.L544:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [sp, #0]	@, %sfp
	mov	r9, r0, asl #1	@ tmp561,,
	uxtb	r8, r9	@ temp.3674, tmp561
	cmp	r8, #0	@ temp.3674,
	addeq	r8, r8, #1	@,, tmp564, temp.3674
	uxtb	r3, r8	@ temp.3676, tmp564
	strb	r3, [r1, #529]	@ temp.3676, <variable>.DcProbs
	strb	r3, [sp, #32]	@ temp.3676, LastProb
	b	.L545	@
.L542:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	fp, [sp, #0]	@, %sfp
	mov	r2, r0, asl #1	@ tmp550,,
	uxtb	ip, r2	@ temp.3662, tmp550
	cmp	ip, #0	@ temp.3662,
	addeq	ip, ip, #1	@,, tmp553, temp.3662
	uxtb	sl, ip	@ temp.3664, tmp553
	strb	sl, [fp, #528]	@ temp.3664, <variable>.DcProbs
	strb	sl, [sp, #31]	@ temp.3664, LastProb
	b	.L543	@
.L540:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [sp, #0]	@, %sfp
	mov	r9, r0, asl #1	@ tmp539,,
	uxtb	r0, r9	@ temp.3654, tmp539
	cmp	r0, #0	@ temp.3654,
	addeq	r0, r0, #1	@,, tmp542, temp.3654
	uxtb	r1, r0	@ temp.3652, tmp542
	strb	r1, [r8, #527]	@ temp.3652, <variable>.DcProbs
	strb	r1, [sp, #30]	@ temp.3652, LastProb
	b	.L541	@
.L538:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [sp, #0]	@, %sfp
	mov	r3, r0, asl #1	@ tmp528,,
	uxtb	r2, r3	@ temp.3646, tmp528
	cmp	r2, #0	@ temp.3646,
	addeq	r2, r2, #1	@,, tmp531, temp.3646
	uxtb	fp, r2	@ temp.3644, tmp531
	strb	fp, [ip, #526]	@ temp.3644, <variable>.DcProbs
	strb	fp, [sp, #29]	@ temp.3644, LastProb
	b	.L539	@
.L633:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	sl, r0, asl #1	@ tmp517,,
	ldr	r0, [sp, #0]	@, %sfp
	uxtb	r9, sl	@ temp.3638, tmp517
	cmp	r9, #0	@ temp.3638,
	addeq	r9, r9, #1	@,, tmp520, temp.3638
	uxtb	r8, r9	@ temp.3634, tmp520
	strb	r8, [r0, #525]	@ temp.3634, <variable>.DcProbs
	strb	r8, [sp, #28]	@ temp.3634, LastProb
	b	.L537	@
.L632:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	fp, r0, asl #1	@ tmp495,,
	uxtb	sl, fp	@ temp.3959, tmp495
	cmp	sl, #0	@ temp.3959,
	addeq	sl, sl, #1	@,, tmp498, temp.3959
	uxtb	r0, sl	@ temp.3961, tmp498
	strb	r0, [r9, #524]	@ temp.3961, <variable>.DcProbs
	strb	r0, [sp, #38]	@ temp.3961, LastProb
	b	.L532	@
.L529:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp486,,
	uxtb	r1, r8	@ temp.3952, tmp486
	cmp	r1, #0	@ temp.3952,
	addeq	r1, r1, #1	@,, tmp489, temp.3952
	uxtb	r3, r1	@ temp.3954, tmp489
	strb	r3, [r2, #523]	@ temp.3954, <variable>.DcProbs
	strb	r3, [sp, #37]	@ temp.3954, LastProb
	b	.L530	@
.L527:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	sl, [sp, #0]	@, %sfp
	mov	ip, r0, asl #1	@ tmp475,,
	uxtb	fp, ip	@ temp.3944, tmp475
	cmp	fp, #0	@ temp.3944,
	addeq	fp, fp, #1	@,, tmp478, temp.3944
	uxtb	r9, fp	@ temp.3946, tmp478
	strb	r9, [sl, #522]	@ temp.3946, <variable>.DcProbs
	strb	r9, [sp, #36]	@ temp.3946, LastProb
	b	.L528	@
.L525:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp464,,
	uxtb	r0, r8	@ temp.3842, tmp464
	cmp	r0, #0	@ temp.3842,
	addeq	r0, r0, #1	@,, tmp467, temp.3842
	uxtb	r3, r0	@ temp.3840, tmp467
	strb	r3, [r1, #521]	@ temp.3840, <variable>.DcProbs
	strb	r3, [sp, #35]	@ temp.3840, LastProb
	b	.L526	@
.L523:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	fp, [sp, #0]	@, %sfp
	mov	r2, r0, asl #1	@ tmp453,,
	uxtb	ip, r2	@ temp.3667, tmp453
	cmp	ip, #0	@ temp.3667,
	addeq	ip, ip, #1	@,, tmp456, temp.3667
	uxtb	sl, ip	@ temp.3665, tmp456
	strb	sl, [fp, #520]	@ temp.3665, <variable>.DcProbs
	strb	sl, [sp, #34]	@ temp.3665, LastProb
	b	.L524	@
.L521:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	r9, r0, asl #1	@ tmp442,,
	ldr	r0, [sp, #0]	@, %sfp
	uxtb	r8, r9	@ temp.3715, tmp442
	cmp	r8, #0	@ temp.3715,
	addeq	r8, r8, #1	@,, tmp445, temp.3715
	uxtb	r1, r8	@ temp.3705, tmp445
	strb	r1, [r0, #519]	@ temp.3705, <variable>.DcProbs
	strb	r1, [sp, #33]	@ temp.3705, LastProb
	b	.L522	@
.L519:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	ip, [sp, #0]	@, %sfp
	mov	r3, r0, asl #1	@ tmp431,,
	uxtb	r2, r3	@ temp.3751, tmp431
	cmp	r2, #0	@ temp.3751,
	addeq	r2, r2, #1	@,, tmp434, temp.3751
	uxtb	fp, r2	@ temp.3749, tmp434
	strb	fp, [ip, #518]	@ temp.3749, <variable>.DcProbs
	strb	fp, [sp, #32]	@ temp.3749, LastProb
	b	.L520	@
.L517:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp420,,
	uxtb	r9, sl	@ temp.3787, tmp420
	cmp	r9, #0	@ temp.3787,
	addeq	r9, r9, #1	@,, tmp423, temp.3787
	uxtb	r0, r9	@ temp.3785, tmp423
	strb	r0, [r8, #517]	@ temp.3785, <variable>.DcProbs
	strb	r0, [sp, #31]	@ temp.3785, LastProb
	b	.L518	@
.L515:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r1, r0, asl #1	@ tmp409,,
	uxtb	r3, r1	@ temp.3823, tmp409
	cmp	r3, #0	@ temp.3823,
	addeq	r3, r3, #1	@,, tmp412, temp.3823
	uxtb	ip, r3	@ temp.3821, tmp412
	strb	ip, [r2, #516]	@ temp.3821, <variable>.DcProbs
	strb	ip, [sp, #30]	@ temp.3821, LastProb
	b	.L516	@
.L513:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	fp, r0, asl #1	@ tmp398,,
	uxtb	sl, fp	@ temp.3871, tmp398
	cmp	sl, #0	@ temp.3871,
	addeq	sl, sl, #1	@,, tmp401, temp.3871
	uxtb	r8, sl	@ temp.3869, tmp401
	strb	r8, [r9, #515]	@ temp.3869, <variable>.DcProbs
	strb	r8, [sp, #29]	@ temp.3869, LastProb
	b	.L514	@
.L511:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r1, r0, asl #1	@ tmp387,,
	uxtb	r0, r1	@ temp.3911, tmp387
	cmp	r0, #0	@ temp.3911,
	addeq	r0, r0, #1	@,, tmp390, temp.3911
	uxtb	r3, r0	@ temp.3909, tmp390
	strb	r3, [r2, #514]	@ temp.3909, <variable>.DcProbs
	strb	r3, [sp, #28]	@ temp.3909, LastProb
	b	.L512	@
.L665:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r7, [sp, #0]	@, %sfp
	mov	ip, r0, asl #1	@ tmp750,,
	uxtb	fp, ip	@ D.35428, tmp750
	cmp	fp, #0	@ D.35428,
	addeq	fp, fp, #1	@,, tmp753, D.35428
	strb	fp, [r7, #563]	@ tmp753, <variable>.ZeroRunProbs
	b	.L591	@
.L664:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r3, r0, asl #1	@ tmp852,,
	uxtb	r1, r3	@ temp.3837, tmp852
	cmp	r1, #0	@ temp.3837,
	addeq	r1, r1, #1	@,, tmp855, temp.3837
	strb	r1, [r2, #562]	@ tmp855, <variable>.ZeroRunProbs
	b	.L589	@
.L663:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp844,,
	ldr	r0, [sp, #0]	@, %sfp
	uxtb	fp, ip	@ temp.3828, tmp844
	cmp	fp, #0	@ temp.3828,
	addeq	fp, fp, #1	@,, tmp847, temp.3828
	strb	fp, [r0, #561]	@ tmp847, <variable>.ZeroRunProbs
	b	.L588	@
.L662:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp836,,
	uxtb	r9, sl	@ temp.3818, tmp836
	cmp	r9, #0	@ temp.3818,
	addeq	r9, r9, #1	@,, tmp839, temp.3818
	strb	r9, [r8, #560]	@ tmp839, <variable>.ZeroRunProbs
	b	.L587	@
.L661:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r3, r0, asl #1	@ tmp828,,
	uxtb	r1, r3	@ temp.3811, tmp828
	cmp	r1, #0	@ temp.3811,
	addeq	r1, r1, #1	@,, tmp831, temp.3811
	strb	r1, [r2, #559]	@ tmp831, <variable>.ZeroRunProbs
	b	.L586	@
.L660:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp820,,
	ldr	r0, [sp, #0]	@, %sfp
	uxtb	fp, ip	@ temp.3801, tmp820
	cmp	fp, #0	@ temp.3801,
	addeq	fp, fp, #1	@,, tmp823, temp.3801
	strb	fp, [r0, #558]	@ tmp823, <variable>.ZeroRunProbs
	b	.L585	@
.L659:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp812,,
	uxtb	r9, sl	@ temp.3793, tmp812
	cmp	r9, #0	@ temp.3793,
	addeq	r9, r9, #1	@,, tmp815, temp.3793
	strb	r9, [r8, #557]	@ tmp815, <variable>.ZeroRunProbs
	b	.L584	@
.L678:
	.align	2
.L677:
	.word	.LANCHOR0+1508
	.word	.LANCHOR0+1600
	.word	.LANCHOR0+1480
.L658:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r3, r0, asl #1	@ tmp804,,
	uxtb	r1, r3	@ temp.3782, tmp804
	cmp	r1, #0	@ temp.3782,
	addeq	r1, r1, #1	@,, tmp807, temp.3782
	strb	r1, [r2, #556]	@ tmp807, <variable>.ZeroRunProbs
	b	.L583	@
.L657:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp796,,
	ldr	r0, [sp, #0]	@, %sfp
	uxtb	fp, ip	@ temp.3775, tmp796
	cmp	fp, #0	@ temp.3775,
	addeq	fp, fp, #1	@,, tmp799, temp.3775
	strb	fp, [r0, #555]	@ tmp799, <variable>.ZeroRunProbs
	b	.L582	@
.L656:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp788,,
	uxtb	r9, sl	@ temp.3766, tmp788
	cmp	r9, #0	@ temp.3766,
	addeq	r9, r9, #1	@,, tmp791, temp.3766
	strb	r9, [r8, #554]	@ tmp791, <variable>.ZeroRunProbs
	b	.L581	@
.L655:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r3, r0, asl #1	@ tmp780,,
	uxtb	r1, r3	@ temp.3758, tmp780
	cmp	r1, #0	@ temp.3758,
	addeq	r1, r1, #1	@,, tmp783, temp.3758
	strb	r1, [r2, #553]	@ tmp783, <variable>.ZeroRunProbs
	b	.L580	@
.L654:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	mov	ip, r0, asl #1	@ tmp772,,
	ldr	r0, [sp, #0]	@, %sfp
	uxtb	fp, ip	@ temp.3746, tmp772
	cmp	fp, #0	@ temp.3746,
	addeq	fp, fp, #1	@,, tmp775, temp.3746
	strb	fp, [r0, #552]	@ tmp775, <variable>.ZeroRunProbs
	b	.L579	@
.L653:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r8, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp764,,
	uxtb	r9, sl	@ temp.3739, tmp764
	cmp	r9, #0	@ temp.3739,
	addeq	r9, r9, #1	@,, tmp767, temp.3739
	strb	r9, [r8, #551]	@ tmp767, <variable>.ZeroRunProbs
	b	.L578	@
.L652:
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r2, [sp, #0]	@, %sfp
	mov	r3, r0, asl #1	@ tmp756,,
	uxtb	r1, r3	@ temp.3730, tmp756
	cmp	r1, #0	@ temp.3730,
	addeq	r1, r1, #1	@,, tmp759, temp.3730
	strb	r1, [r2, #550]	@ tmp759, <variable>.ZeroRunProbs
	b	.L576	@
.L651:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp742,,
	uxtb	r0, sl	@ temp.4058, tmp742
	cmp	r0, #0	@ temp.4058,
	addeq	r0, r0, #1	@,, tmp745, temp.4058
	strb	r0, [r9, #549]	@ tmp745, <variable>.ZeroRunProbs
	b	.L574	@
.L650:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp734,,
	uxtb	r3, r8	@ temp.4051, tmp734
	cmp	r3, #0	@ temp.4051,
	addeq	r3, r3, #1	@,, tmp737, temp.4051
	strb	r3, [r1, #548]	@ tmp737, <variable>.ZeroRunProbs
	b	.L573	@
.L649:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	fp, [sp, #0]	@, %sfp
	mov	r2, r0, asl #1	@ tmp726,,
	uxtb	ip, r2	@ temp.4044, tmp726
	cmp	ip, #0	@ temp.4044,
	addeq	ip, ip, #1	@,, tmp729, temp.4044
	strb	ip, [fp, #547]	@ tmp729, <variable>.ZeroRunProbs
	b	.L572	@
.L648:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp718,,
	uxtb	r0, sl	@ temp.4037, tmp718
	cmp	r0, #0	@ temp.4037,
	addeq	r0, r0, #1	@,, tmp721, temp.4037
	strb	r0, [r9, #546]	@ tmp721, <variable>.ZeroRunProbs
	b	.L571	@
.L647:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp710,,
	uxtb	r3, r8	@ temp.4030, tmp710
	cmp	r3, #0	@ temp.4030,
	addeq	r3, r3, #1	@,, tmp713, temp.4030
	strb	r3, [r1, #545]	@ tmp713, <variable>.ZeroRunProbs
	b	.L570	@
.L646:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	fp, [sp, #0]	@, %sfp
	mov	r2, r0, asl #1	@ tmp702,,
	uxtb	ip, r2	@ temp.4023, tmp702
	cmp	ip, #0	@ temp.4023,
	addeq	ip, ip, #1	@,, tmp705, temp.4023
	strb	ip, [fp, #544]	@ tmp705, <variable>.ZeroRunProbs
	b	.L569	@
.L645:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp694,,
	uxtb	r0, sl	@ temp.4016, tmp694
	cmp	r0, #0	@ temp.4016,
	addeq	r0, r0, #1	@,, tmp697, temp.4016
	strb	r0, [r9, #543]	@ tmp697, <variable>.ZeroRunProbs
	b	.L568	@
.L644:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp686,,
	uxtb	r3, r8	@ temp.4009, tmp686
	cmp	r3, #0	@ temp.4009,
	addeq	r3, r3, #1	@,, tmp689, temp.4009
	strb	r3, [r1, #542]	@ tmp689, <variable>.ZeroRunProbs
	b	.L567	@
.L643:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	fp, [sp, #0]	@, %sfp
	mov	r2, r0, asl #1	@ tmp678,,
	uxtb	ip, r2	@ temp.4002, tmp678
	cmp	ip, #0	@ temp.4002,
	addeq	ip, ip, #1	@,, tmp681, temp.4002
	strb	ip, [fp, #541]	@ tmp681, <variable>.ZeroRunProbs
	b	.L566	@
.L642:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp670,,
	uxtb	r0, sl	@ temp.3995, tmp670
	cmp	r0, #0	@ temp.3995,
	addeq	r0, r0, #1	@,, tmp673, temp.3995
	strb	r0, [r9, #540]	@ tmp673, <variable>.ZeroRunProbs
	b	.L565	@
.L641:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp662,,
	uxtb	r3, r8	@ temp.3988, tmp662
	cmp	r3, #0	@ temp.3988,
	addeq	r3, r3, #1	@,, tmp665, temp.3988
	strb	r3, [r1, #539]	@ tmp665, <variable>.ZeroRunProbs
	b	.L564	@
.L640:
	mov	r2, #7	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	bl	Vp6_Vfmw_BoolRead	@
	ldr	fp, [sp, #0]	@, %sfp
	mov	r2, r0, asl #1	@ tmp654,,
	uxtb	ip, r2	@ temp.3981, tmp654
	cmp	ip, #0	@ temp.3981,
	addeq	ip, ip, #1	@,, tmp657, temp.3981
	strb	ip, [fp, #538]	@ tmp657, <variable>.ZeroRunProbs
	b	.L563	@
.L639:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, D.35391
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r9, [sp, #0]	@, %sfp
	mov	sl, r0, asl #1	@ tmp646,,
	uxtb	r0, sl	@ temp.3974, tmp646
	cmp	r0, #0	@ temp.3974,
	addeq	r0, r0, #1	@,, tmp649, temp.3974
	strb	r0, [r9, #537]	@ tmp649, <variable>.ZeroRunProbs
	b	.L562	@
.L638:
	mov	r1, r4	@, D.35391
	mov	r0, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp6_Vfmw_BoolRead	@
	ldr	r1, [sp, #0]	@, %sfp
	mov	r8, r0, asl #1	@ tmp638,,
	uxtb	r3, r8	@ temp.3967, tmp638
	cmp	r3, #0	@ temp.3967,
	addeq	r3, r3, #1	@,, tmp641, temp.3967
	strb	r3, [r1, #536]	@ tmp641, <variable>.ZeroRunProbs
	b	.L561	@
	.fnend
	.size	VP6_ConfigureEntropyDecoder, .-VP6_ConfigureEntropyDecoder
	.align	2
	.global	VP6_BuildTables
	.type	VP6_BuildTables, %function
VP6_BuildTables:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r3, [r1, #20]	@ <variable>.FrameType, <variable>.FrameType
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r6, r2	@ pBs, pBs
	cmp	r3, #0	@ <variable>.FrameType,
	mov	r5, r0	@ pVp6CodecInfo, pVp6CodecInfo
	beq	.L680	@,
	mov	r1, r2	@, pBs
	mov	r2, r4	@, pPictureHeader
	bl	VP6_DecodeModeProbs	@
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r6	@, pBs
	mov	r2, r4	@, pPictureHeader
	bl	VP6_ConfigureMvEntropyDecoder	@
.L681:
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r6	@, pBs
	mov	r2, r4	@, pPictureHeader
	ldr	r3, [r4, #20]	@, <variable>.FrameType
	bl	VP6_ConfigureEntropyDecoder	@
	ldr	r0, [r4, #68]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r0, #0	@ <variable>.UseHuffman,
	beq	.L682	@,
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConvertBoolToHuff	@
.L682:
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r4	@, pPictureHeader
	bl	VP6_CfgTable	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L680:
	ldr	r7, .L684	@ tmp149,
	mov	r2, #80	@,
	ldr	r1, .L684+4	@,
	add	r0, r0, #404	@, pVp6CodecInfo,
	bl	memcpy	@
	add	r3, r7, #16	@ tmp154, tmp149,
	ldrh	r1, [r7, #12]	@, DefaultIsShortProbs
	add	ip, r5, #484	@ tmp152, pVp6CodecInfo,
	ldrh	lr, [r7, #32]	@, DefaultSignProbs
	strh	r1, [r5, #2]	@ movhi	@, <variable>.IsMvShortProb
	ldmia	r3, {r0, r1, r2, r3}	@ tmp154,,,,
	strh	lr, [r5, #0]	@ movhi	@, <variable>.MvSignProbs
	stmia	ip!, {r0, r1, r2}	@ tmp152,,,
	add	r1, r7, #36	@, tmp149,
	add	r0, r5, #496	@, pVp6CodecInfo,
	add	r7, r7, #52	@ tmp172, tmp149,
	strh	r3, [ip, #0]	@ movhi	@, <variable>.MvShortProbs
	mov	r2, #16	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp175,,,,
	add	ip, r5, #1088	@ tmp170, pVp6CodecInfo,
	mov	lr, ip	@ tmp174, tmp170
	stmia	lr!, {r0, r1, r2, r3}	@ tmp174,,,,
	mov	ip, lr	@ tmp180, tmp174
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp180,,,,
	mov	lr, ip	@ tmp182, tmp180
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp181,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp182,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp181,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp182,,,,
	mov	r0, r5	@, pVp6CodecInfo
	mov	r1, r4	@, pPictureHeader
	bl	VP6_BuildScanOrder	@
	b	.L681	@
.L685:
	.align	2
.L684:
	.word	.LANCHOR0+2064
	.word	.LANCHOR0+1996
	.fnend
	.size	VP6_BuildTables, .-VP6_BuildTables
	.align	2
	.global	VP6DEC_GetImageBuffer
	.type	VP6DEC_GetImageBuffer, %function
VP6DEC_GetImageBuffer:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #13000	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.35154,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.35157,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #12608	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.35157,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VP6DEC_GetImageBuffer, .-VP6DEC_GetImageBuffer
	.align	2
	.global	VP6_GetImageBuffer
	.type	VP6_GetImageBuffer, %function
VP6_GetImageBuffer:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #13000	@ tmp140,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r0, r6]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r7, #12312	@ tmp142,
	cmp	r0, #0	@ D.35121,
	mov	r1, r0	@ D.35121,
	str	r0, [r4, r7]	@ D.35121, <variable>.Vp6CodecInfo.CurFsID
	blt	.L697	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L698	@,
	ldr	r2, [r4, r7]	@, <variable>.Vp6CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L695	@,
	ldr	r3, [r5, #412]	@ D.35140, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35140,
	beq	.L695	@,
	ldr	r2, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r2, #0	@ <variable>.pstTfOutFs,
	beq	.L695	@,
	ldr	ip, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	movw	lr, #12328	@ tmp174,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	str	ip, [r4, lr]	@ <variable>.Stride, <variable>.Vp6CodecInfo.DDR_Stride
	add	r2, r5, #408
	ldmia	r2, {r2, r3, lr}	@ phole ldm
	ldr	ip, [lr, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.35130,
.L693:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L695:
	mov	r0, #0	@ D.35130,
	b	.L693	@
.L697:
	movw	r8, #12316	@ tmp146,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	movw	r7, #12320	@ tmp150,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r5, #0	@ tmp153,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, r8]	@ tmp153, <variable>.Vp6CodecInfo.GoldenFsID
	str	r5, [r4, r7]	@ tmp153, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #12296	@ tmp160,
	add	r1, r4, #12608	@, pCtx,
	str	r5, [r4, r3]	@ tmp153, <variable>.Vp6CodecInfo.RefNum
	add	r1, r1, #40	@,,
	str	r0, [r4, r8]	@ D.35128, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.35128, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.35130, tmp153
	b	.L693	@
.L698:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r2, #654	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35130, pLf
	b	.L693	@
	.fnend
	.size	VP6_GetImageBuffer, .-VP6_GetImageBuffer
	.align	2
	.global	VP6_ArrangeVHBMem
	.type	VP6_ArrangeVHBMem, %function
VP6_ArrangeVHBMem:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #12500	@ tmp157,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ D.35045, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #2	@ D.35045,
	bls	.L726	@,
	movw	r0, #12504	@ tmp159,
	ldr	r2, [r4, r0]	@ prephitmp.4155, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #2	@ prephitmp.4155,
	bls	.L701	@,
	cmp	r3, #512	@ D.35045,
	bhi	.L701	@,
	cmp	r2, #512	@ prephitmp.4155,
	bhi	.L701	@,
	ldr	r1, [r4, #0]	@ D.35054, <variable>.pstExtraData
	ldr	ip, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L704	@,
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L727	@,
.L705:
	mov	r8, #3	@ PmvNum,
	mov	r5, r2, asl #4	@ PicWidth, prephitmp.4155,
	mov	r6, r3, asl #4	@ PicHeight, D.35045,
	mov	sl, #5	@ prephitmp.4157,
	mov	r9, r8	@ DecFsNum, PmvNum
.L712:
	add	r7, sp, #8	@ tmp201,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp201
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp176,
	ldr	r3, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [sp, #36]	@ PicWidth, FspInstCfg.s32DispFsWidth
	str	r6, [sp, #40]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	r2, [sp, #10]	@ tmp176, FspInstCfg.s32RprEnable
	str	r5, [sp, #20]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #24]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #13000	@ tmp187,
	strb	r3, [sp, #8]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	ip, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	sl, [sp, #15]	@ prephitmp.4157, FspInstCfg.s32ExpectedDispFsNum
	cmp	ip, #24	@ <variable>.eCapLevel,
	uxtbne	r2, r9	@ iftmp.431, DecFsNum
	strb	r2, [sp, #13]	@ iftmp.431, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp201
	uxtbne	r8, r8	@ iftmp.432, PmvNum
	mov	r7, #0	@ tmp185,
	moveq	r8, #1	@ iftmp.432,
	strb	r7, [sp, #12]	@ tmp185, FspInstCfg.s32UserDec
	strb	r8, [sp, #16]	@ iftmp.432, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35103,
	bne	.L723	@,
	ldr	lr, [r4, #0]	@ temp.4192, <variable>.pstExtraData
	add	r3, sp, #44	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L728	@,
	mov	r2, #1	@ tmp198,
	movw	r1, #12300	@ tmp197,
	mov	r0, r2	@ D.35051, tmp198
	str	r2, [r4, r1]	@ tmp198, <variable>.Vp6CodecInfo.Imgbuf_allocated
	b	.L703	@
.L726:
	movw	r2, #12504	@ tmp158,
	ldr	r2, [r0, r2]	@ prephitmp.4155, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
.L701:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35051,
.L703:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L704:
	ldr	lr, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L705	@,
	ldr	ip, [r1, #568]	@ D.35062, <variable>.stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ temp.4179, prephitmp.4155,
	cmp	r2, ip	@ temp.4179, D.35062
	bhi	.L729	@,
	ldr	lr, [r1, #572]	@ prephitmp.4159, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4161, D.35045,
	cmp	r3, lr	@ prephitmp.4161, prephitmp.4159
	bhi	.L715	@,
	ldr	r6, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L718	@,
	add	r8, r9, #1	@ PmvNum.4183, DecFsNum,
	cmp	r8, #17	@ PmvNum.4183,
	movge	r8, #17	@ PmvNum,
.L718:
	ldrb	sl, [r1, #616]	@ zero_extendqisi2	@ prephitmp.4157, <variable>.stChanOption.s32DisplayFrameNum
	mov	r5, r2	@ PicWidth, temp.4179
	mov	r6, r3	@ PicHeight, prephitmp.4161
	b	.L712	@
.L723:
	mov	r0, r7	@, tmp185
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35051, tmp185
	b	.L703	@
.L727:
	ldr	r5, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ D.35061, prephitmp.4155,
	cmp	r2, r5	@ D.35061, PicWidth
	bhi	.L730	@,
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4165, D.35045,
	cmp	r3, r6	@ prephitmp.4165, PicHeight
	bhi	.L707	@,
	movw	r3, #12300	@ tmp164,
	ldr	r0, [r4, r3]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L703	@,
	ldr	r7, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L711	@,
	add	r8, r9, #1	@ PmvNum.4176, DecFsNum,
	cmp	r8, #17	@ PmvNum.4176,
	movge	r8, #17	@ PmvNum,
.L711:
	ldrb	sl, [r1, #616]	@ zero_extendqisi2	@ prephitmp.4157, <variable>.stChanOption.s32DisplayFrameNum
	b	.L712	@
.L729:
	ldr	lr, [r1, #572]	@ prephitmp.4159, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4161, D.35045,
.L715:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35051,
	b	.L703	@
.L728:
	mov	r0, r5	@, D.35103
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35051, D.35103
	b	.L703	@
.L730:
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ prephitmp.4165, D.35045,
.L707:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35051,
	b	.L703	@
	.fnend
	.size	VP6_ArrangeVHBMem, .-VP6_ArrangeVHBMem
	.align	2
	.global	VP6DEC_Decode
	.type	VP6DEC_Decode, %function
VP6DEC_Decode:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r1, #0]	@ D.36722, <variable>.VirAddr
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r4, r0	@ pCtx, pCtx
	str	r3, [r0, #212]	@ D.36722, <variable>.Vp6StreamParam.VirAddr
	ldr	r2, [r1, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r0, #216]	@ <variable>.PhyAddr, <variable>.Vp6StreamParam.PhyAddr
	ldr	r2, [r1, #12]	@ D.36726, <variable>.LenInByte
	cmp	r2, #0	@ D.36726,
	str	r2, [r0, #220]	@ D.36726, <variable>.Vp6StreamParam.Length
	movweq	r3, #12304	@ tmp160,
	moveq	r2, #3	@ tmp161,
	streqb	r2, [r0, r3]	@ tmp161, <variable>.Vp6CodecInfo.FrameType
	beq	.L733	@,
	cmp	r2, #2	@ D.36726,
	ble	.L763	@,
	add	r5, r0, #12608	@ tmp315, pCtx,
	add	r7, r0, #224	@ pVp6CodecInfo, pCtx,
	add	r6, r5, #12	@ pBs, tmp315,
	mov	r1, r3	@, D.36722
	mov	r0, r6	@, pBs
	bl	BsInit	@
	add	r3, r4, #212	@ tmp165, pCtx,
	mov	r0, r7	@, pVp6CodecInfo
	str	r3, [r4, #208]	@ tmp165, <variable>.pVp6StreamParam
	mov	r1, r6	@, pBs
	bl	VP6_GetPictureHeader	@
	cmp	r0, #1	@ D.36735,
	mov	r8, r0	@ D.36735,
	beq	.L736	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36733,
	b	.L735	@
.L736:
	add	r1, r4, #12416	@, pCtx,
	mov	r0, r7	@, pVp6CodecInfo
	add	r1, r1, #60	@,,
	mov	r2, r6	@, pBs
	bl	VP6_BuildTables	@
	cmp	r0, #1	@,
	bne	.L764	@,
	movw	r6, #12300	@ tmp170,
	ldr	r0, [r4, r6]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	beq	.L762	@,
	movw	r3, #12356	@ tmp172,
	movw	r2, #12500	@ tmp173,
	ldr	ip, [r4, r3]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb
	ldr	lr, [r4, r2]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	ip, lr	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	bne	.L762	@,
	movw	ip, #12360	@ tmp176,
	movw	r6, #12504	@ tmp177,
	ldr	r1, [r4, ip]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldr	r0, [r4, r6]	@ <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r1, r0	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	bne	.L762	@,
	ldr	r3, [r4, #0]	@ prephitmp.4208, <variable>.pstExtraData
	ldr	r6, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r6, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L739	@,
.L733:
	mov	r0, r4	@, pCtx
	bl	VP6_DecodeDecide	@
	cmp	r0, #1	@ ret.4237,
	mov	r6, r0	@ ret.4237,
	beq	.L755	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36733,
.L735:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L755:
	mov	r0, r4	@, pCtx
	bl	VP6_GetImageBuffer	@
	cmp	r0, #1	@ D.36817,
	mov	r5, r0	@ D.36817,
	beq	.L756	@,
	mov	r0, r6	@, ret.4237
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36733,
	b	.L735	@
.L763:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36733,
	b	.L735	@
.L762:
	ldr	r3, [r4, #0]	@ prephitmp.4208, <variable>.pstExtraData
.L739:
	ldr	r6, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L765	@,
.L742:
	movw	sl, #:lower16:g_event_report	@ tmp210,
	movt	sl, #:upper16:g_event_report	@ tmp210,
	ldr	r3, [sl, #0]	@ g_event_report.497, g_event_report
	cmp	r3, #0	@ g_event_report.497,
	beq	.L748	@,
	movw	sl, #12360	@ tmp211,
	movw	r1, #12356	@ tmp213,
	ldrh	r8, [r4, sl]	@, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb
	movw	r0, #12504	@ tmp215,
	movw	r2, #12500	@ tmp217,
	movw	r6, #13000	@ tmp219,
	strh	r8, [sp, #12]	@ movhi	@, para
	ldrh	ip, [r4, r1]	@, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb
	mov	r1, #2	@,
	strh	ip, [sp, #14]	@ movhi	@, para
	ldrh	lr, [r4, r0]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	strh	lr, [sp, #16]	@ movhi	@, para
	ldrh	r7, [r4, r2]	@, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	add	r2, sp, #12	@,,
	strh	r7, [sp, #18]	@ movhi	@, para
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	blx	r3	@ g_event_report.497
.L748:
	movw	r6, #13000	@ tmp222,
	movw	r8, #12316	@ tmp224,
	movw	r7, #12320	@ tmp228,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.Vp6CodecInfo.GoldenFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp6CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	sl, #0	@ tmp231,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r5, r5, #40	@ D.36788, tmp315,
	str	sl, [r4, r8]	@ tmp231, <variable>.Vp6CodecInfo.GoldenFsID
	str	sl, [r4, r7]	@ tmp231, <variable>.Vp6CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r2, #12296	@ tmp238,
	str	sl, [r4, r2]	@ tmp231, <variable>.Vp6CodecInfo.RefNum
	mov	r1, r5	@, D.36788
	str	r0, [r4, r8]	@ D.36787, <variable>.Vp6CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.36787, <variable>.Vp6CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	movw	r3, #12504	@ tmp243,
	ldr	r2, [r4, r3]	@ temp.4231, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #512	@ temp.4231,
	bhi	.L766	@,
	movw	r0, #12500	@ tmp245,
	ldr	r3, [r4, r0]	@ prephitmp.4210, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.4210,
	bhi	.L750	@,
	ldr	r3, [r4, #0]	@ temp.4232, <variable>.pstExtraData
	ldr	ip, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L752	@,
	ldr	r1, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L767	@,
.L752:
	movw	lr, #13000	@ tmp251,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L753	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L754	@,
	movw	r3, #13004	@ tmp255,
	ldr	r1, [r4, r3]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r1, #1	@ <variable>.DSDNeedClearQue,
	beq	.L754	@,
.L753:
	mov	r0, r4	@, pCtx
	bl	VP6_ArrangeVHBMem	@
	cmp	r0, #1	@,
	beq	.L733	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36733,
	b	.L735	@
.L756:
	movw	r7, #13000	@ tmp260,
	movw	r6, #12312	@ tmp262,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, r5	@, D.36817
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.CurFsID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.Vp6CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImage,
	beq	.L768	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r6, #0	@ tmp283,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImage,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [ip, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r8, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r9, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	lr, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r8, #0	@ tmp285,
	str	r6, [r7, #128]	@ tmp283, <variable>.is_fld_save
	str	r9, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r9, #0	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [lr, #56]	@ tmp285, <variable>.pstExtraData,
	ldrd	r8, [r7, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImage,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	VP6_Set_DecParam	@
	cmp	r0, #1	@,
	bne	.L769	@,
	movw	r0, #12304	@ tmp290,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.Vp6CodecInfo.FrameType, <variable>.Vp6CodecInfo.FrameType
	cmp	r2, #0	@ <variable>.Vp6CodecInfo.FrameType,
	bne	.L759	@,
	add	r1, r4, #12416	@, pCtx,
	add	r3, r4, #12288	@, pCtx,
	add	r1, r1, #60	@,,
	add	r0, r3, #44	@,,
	mov	r2, #144	@,
	bl	memcpy	@
.L760:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36733,
	b	.L735	@
.L769:
	mov	r0, r5	@, D.36817
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.36733, tmp283
	b	.L735	@
.L766:
	movw	lr, #12500	@ tmp244,
	ldr	r3, [r4, lr]	@ prephitmp.4210, <variable>.Vp6CodecInfo.NewHeaderInfo.pic_height_in_mb
.L750:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36733,
	b	.L735	@
.L765:
	add	r1, sp, #32	@ tmp186,,
	movw	r7, #13000	@ tmp184,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r2, sp, #24	@,,
	mov	r7, #0	@ tmp181,
	add	r3, sp, #28	@,,
	str	r7, [r1, #-12]!	@ tmp181, RefNum
	str	r7, [sp, #28]	@ tmp181, NewNum
	str	r7, [sp, #24]	@ tmp181, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r0, #12360	@ tmp189,
	ldr	r1, [r4, r0]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldr	r2, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r2, r1, asl #4	@ <variable>.s32DSDThrWidth, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_width_in_mb,
	bcc	.L743	@,
	movw	r1, #12356	@ tmp193,
	ldr	lr, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r1, [r4, r1]	@ <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb
	cmp	lr, r1, asl #4	@ <variable>.s32DSDThrHeight, <variable>.Vp6CodecInfo.OldHeaderInfo.pic_height_in_mb,
	bcc	.L743	@,
	ldr	r2, [sp, #24]	@ ReadNum, ReadNum
	ldr	lr, [sp, #28]	@ NewNum, NewNum
	add	ip, lr, r2	@ tmp197, NewNum, ReadNum
	cmp	ip, r7	@ tmp197,
	strgt	r6, [r3, #728]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.s32DSDWaitFlag
	movwle	ip, #13004	@ tmp201,
	movgt	r0, r7	@ D.36733, tmp181
	strle	r6, [r4, ip]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DSDNeedClearQue
	bgt	.L735	@,
.L745:
	mov	r8, #0	@ tmp209,
	str	r8, [r3, #728]	@ tmp209, <variable>.s32DSDWaitFlag
	b	.L742	@
.L764:
	mov	r0, r8	@, D.36735
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36733,
	b	.L735	@
.L759:
	movw	r5, #12344	@ tmp300,
	movw	r6, #12348	@ tmp301,
	ldr	r7, [r4, r5]	@ TmpVp3VersionNo, <variable>.Vp6CodecInfo.OldHeaderInfo.Vp3VersionNo
	add	ip, r4, #12288	@, pCtx,
	ldr	r8, [r4, r6]	@ TmpVpProfile, <variable>.Vp6CodecInfo.OldHeaderInfo.VpProfile
	add	lr, r4, #12416	@, pCtx,
	add	r0, ip, #44	@,,
	add	r1, lr, #60	@,,
	mov	r2, #144	@,
	bl	memcpy	@
	str	r8, [r4, r6]	@ TmpVpProfile, <variable>.Vp6CodecInfo.OldHeaderInfo.VpProfile
	str	r7, [r4, r5]	@ TmpVp3VersionNo, <variable>.Vp6CodecInfo.OldHeaderInfo.Vp3VersionNo
	b	.L760	@
.L768:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r2, #2690	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.36733, pImage
	b	.L735	@
.L767:
	movw	r2, #12300	@ tmp249,
	ldr	r3, [r4, r2]	@ <variable>.Vp6CodecInfo.Imgbuf_allocated, <variable>.Vp6CodecInfo.Imgbuf_allocated
	cmp	r3, #0	@ <variable>.Vp6CodecInfo.Imgbuf_allocated,
	bne	.L753	@,
.L754:
	mov	r0, r5	@, D.36788
	bl	ResetVoQueue	@
	b	.L753	@
.L743:
	ldr	r0, [sp, #28]	@ NewNum, NewNum
	cmp	r0, #0	@ NewNum,
	ble	.L770	@,
.L746:
	mov	r1, #1	@ tmp205,
	mov	r0, #0	@ D.36733,
	str	r1, [r3, #728]	@ tmp205, <variable>.s32DSDWaitFlag
	b	.L735	@
.L770:
	ldr	ip, [sp, #24]	@ ReadNum, ReadNum
	cmp	ip, #4	@ ReadNum,
	movwle	ip, #13004	@ tmp206,
	movle	r1, #0	@ tmp207,
	strle	r1, [r4, ip]	@ tmp207, <variable>.DSDNeedClearQue
	ble	.L745	@,
	b	.L746	@
	.fnend
	.size	VP6DEC_Decode, .-VP6DEC_Decode
	.global	VP6_DcNodeEqs
	.global	VP6_ModeVq
	.global	VP6_BaselineXmittedProbs
	.global	VP6_MvUpdateProbs
	.global	DefaultMvShortProbs
	.global	DefaultMvLongProbs
	.global	DefaultIsShortProbs
	.global	DefaultSignProbs
	.global	VP6_DcUpdateProbs
	.global	VP6_AcUpdateProbs
	.global	ZeroRunProbDefaults
	.global	ScanBandUpdateProbs
	.global	ZrlUpdateProbs
	.global	DefaultScanBands
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	VP6_DcNodeEqs, %object
	.size	VP6_DcNodeEqs, 120
VP6_DcNodeEqs:
@ M:
	.word	122
@ C:
	.word	133
@ M:
	.word	133
@ C:
	.word	51
@ M:
	.word	142
@ C:
	.word	-16
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	78
@ C:
	.word	171
@ M:
	.word	169
@ C:
	.word	71
@ M:
	.word	221
@ C:
	.word	-30
@ M:
	.word	139
@ C:
	.word	117
@ M:
	.word	214
@ C:
	.word	44
@ M:
	.word	246
@ C:
	.word	-3
@ M:
	.word	168
@ C:
	.word	79
@ M:
	.word	210
@ C:
	.word	38
@ M:
	.word	203
@ C:
	.word	17
	.type	__func__.36255, %object
	.size	__func__.36255, 17
__func__.36255:
	.ascii	"VP6_DecodeDecide\000"
	.space	3
	.type	VP6_LoopFilterLimitValues, %object
	.size	VP6_LoopFilterLimitValues, 64
VP6_LoopFilterLimitValues:
	.byte	14
	.byte	14
	.byte	13
	.byte	13
	.byte	12
	.byte	12
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	6
	.byte	6
	.byte	6
	.byte	6
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
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.type	DcQuantTab, %object
	.size	DcQuantTab, 128
DcQuantTab:
	.short	188
	.short	188
	.short	188
	.short	188
	.short	180
	.short	172
	.short	172
	.short	172
	.short	172
	.short	172
	.short	168
	.short	164
	.short	164
	.short	160
	.short	160
	.short	160
	.short	160
	.short	140
	.short	140
	.short	140
	.short	140
	.short	132
	.short	132
	.short	132
	.short	132
	.short	128
	.short	128
	.short	128
	.short	108
	.short	108
	.short	104
	.short	104
	.short	100
	.short	100
	.short	96
	.short	96
	.short	92
	.short	92
	.short	76
	.short	76
	.short	76
	.short	76
	.short	72
	.short	72
	.short	68
	.short	64
	.short	64
	.short	64
	.short	64
	.short	64
	.short	60
	.short	44
	.short	44
	.short	44
	.short	40
	.short	40
	.short	36
	.short	32
	.short	28
	.short	20
	.short	12
	.short	12
	.short	8
	.short	8
	.type	AcQuantTab, %object
	.size	AcQuantTab, 128
AcQuantTab:
	.short	376
	.short	368
	.short	360
	.short	352
	.short	344
	.short	328
	.short	312
	.short	296
	.short	280
	.short	264
	.short	248
	.short	232
	.short	216
	.short	212
	.short	208
	.short	204
	.short	200
	.short	196
	.short	192
	.short	188
	.short	184
	.short	180
	.short	176
	.short	172
	.short	168
	.short	160
	.short	156
	.short	148
	.short	144
	.short	140
	.short	136
	.short	132
	.short	128
	.short	124
	.short	120
	.short	116
	.short	112
	.short	108
	.short	104
	.short	100
	.short	96
	.short	92
	.short	88
	.short	84
	.short	80
	.short	76
	.short	72
	.short	68
	.short	64
	.short	60
	.short	56
	.short	52
	.short	48
	.short	44
	.short	40
	.short	36
	.short	32
	.short	28
	.short	24
	.short	20
	.short	16
	.short	12
	.short	8
	.short	4
	.type	VP6_MvUpdateProbs, %object
	.size	VP6_MvUpdateProbs, 34
VP6_MvUpdateProbs:
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
	.space	2
	.type	VP6_ModeVq, %object
	.size	VP6_ModeVq, 960
VP6_ModeVq:
	.byte	9
	.byte	15
	.byte	32
	.byte	25
	.byte	7
	.byte	19
	.byte	9
	.byte	21
	.byte	1
	.byte	12
	.byte	14
	.byte	12
	.byte	3
	.byte	18
	.byte	14
	.byte	23
	.byte	3
	.byte	10
	.byte	0
	.byte	4
	.byte	48
	.byte	39
	.byte	1
	.byte	2
	.byte	11
	.byte	27
	.byte	29
	.byte	44
	.byte	7
	.byte	27
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	21
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	10
	.byte	32
	.byte	43
	.byte	6
	.byte	23
	.byte	2
	.byte	3
	.byte	1
	.byte	19
	.byte	1
	.byte	6
	.byte	12
	.byte	21
	.byte	0
	.byte	7
	.byte	69
	.byte	83
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	10
	.byte	29
	.byte	3
	.byte	12
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	20
	.byte	1
	.byte	4
	.byte	18
	.byte	36
	.byte	43
	.byte	48
	.byte	13
	.byte	35
	.byte	0
	.byte	2
	.byte	0
	.byte	5
	.byte	3
	.byte	12
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	70
	.byte	44
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	37
	.byte	46
	.byte	8
	.byte	26
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	15
	.byte	0
	.byte	1
	.byte	8
	.byte	21
	.byte	74
	.byte	53
	.byte	22
	.byte	42
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	-115
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	11
	.byte	24
	.byte	1
	.byte	11
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	19
	.byte	4
	.byte	10
	.byte	24
	.byte	45
	.byte	21
	.byte	37
	.byte	9
	.byte	29
	.byte	0
	.byte	3
	.byte	1
	.byte	7
	.byte	11
	.byte	25
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	46
	.byte	42
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	54
	.byte	51
	.byte	10
	.byte	30
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	28
	.byte	32
	.byte	0
	.byte	0
	.byte	3
	.byte	10
	.byte	75
	.byte	51
	.byte	14
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	100
	.byte	46
	.byte	0
	.byte	1
	.byte	3
	.byte	9
	.byte	21
	.byte	37
	.byte	5
	.byte	20
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	27
	.byte	29
	.byte	0
	.byte	1
	.byte	9
	.byte	25
	.byte	53
	.byte	51
	.byte	12
	.byte	34
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	80
	.byte	38
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	69
	.byte	33
	.byte	5
	.byte	16
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	16
	.byte	20
	.byte	0
	.byte	0
	.byte	2
	.byte	8
	.byte	104
	.byte	49
	.byte	15
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-62
	.byte	16
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	9
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	41
	.byte	22
	.byte	1
	.byte	0
	.byte	1
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	98
	.byte	25
	.byte	4
	.byte	10
	.byte	123
	.byte	37
	.byte	6
	.byte	4
	.byte	1
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	12
	.byte	10
	.byte	0
	.byte	2
	.byte	26
	.byte	14
	.byte	14
	.byte	12
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	55
	.byte	17
	.byte	1
	.byte	9
	.byte	0
	.byte	36
	.byte	5
	.byte	7
	.byte	1
	.byte	3
	.byte	-47
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	5
	.byte	4
	.byte	5
	.byte	0
	.byte	121
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	4
	.byte	1
	.byte	4
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	-81
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	83
	.byte	5
	.byte	2
	.byte	3
	.byte	0
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	34
	.byte	16
	.byte	112
	.byte	21
	.byte	1
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	0
	.byte	2
	.byte	-97
	.byte	35
	.byte	2
	.byte	2
	.byte	0
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	75
	.byte	39
	.byte	5
	.byte	7
	.byte	2
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	11
	.byte	2
	.byte	16
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	0
	.byte	2
	.byte	-44
	.byte	21
	.byte	0
	.byte	1
	.byte	0
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	4
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-69
	.byte	22
	.byte	1
	.byte	1
	.byte	0
	.byte	17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	-123
	.byte	6
	.byte	1
	.byte	2
	.byte	1
	.byte	70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-5
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
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
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	4
	.byte	1
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.byte	2
	.byte	0
	.byte	4
	.byte	49
	.byte	46
	.byte	3
	.byte	4
	.byte	7
	.byte	31
	.byte	42
	.byte	41
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	1
	.byte	4
	.byte	2
	.byte	4
	.byte	0
	.byte	1
	.byte	26
	.byte	25
	.byte	1
	.byte	1
	.byte	2
	.byte	10
	.byte	67
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	14
	.byte	0
	.byte	2
	.byte	31
	.byte	26
	.byte	1
	.byte	6
	.byte	103
	.byte	46
	.byte	1
	.byte	2
	.byte	2
	.byte	10
	.byte	33
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	14
	.byte	31
	.byte	9
	.byte	13
	.byte	14
	.byte	54
	.byte	22
	.byte	29
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	4
	.byte	18
	.byte	6
	.byte	13
	.byte	1
	.byte	5
	.byte	0
	.byte	1
	.byte	85
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	9
	.byte	69
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	31
	.byte	28
	.byte	0
	.byte	0
	.byte	3
	.byte	14
	.byte	-126
	.byte	34
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	3
	.byte	3
	.byte	0
	.byte	1
	.byte	-85
	.byte	25
	.byte	0
	.byte	0
	.byte	1
	.byte	5
	.byte	25
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	21
	.byte	68
	.byte	29
	.byte	6
	.byte	15
	.byte	13
	.byte	22
	.byte	0
	.byte	0
	.byte	6
	.byte	12
	.byte	3
	.byte	14
	.byte	4
	.byte	10
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	51
	.byte	39
	.byte	0
	.byte	1
	.byte	2
	.byte	12
	.byte	91
	.byte	44
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	81
	.byte	25
	.byte	0
	.byte	0
	.byte	2
	.byte	9
	.byte	106
	.byte	26
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-116
	.byte	37
	.byte	0
	.byte	1
	.byte	1
	.byte	8
	.byte	24
	.byte	33
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	14
	.byte	23
	.byte	1
	.byte	3
	.byte	11
	.byte	53
	.byte	90
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	2
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	123
	.byte	29
	.byte	0
	.byte	0
	.byte	1
	.byte	7
	.byte	57
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	13
	.byte	14
	.byte	0
	.byte	0
	.byte	4
	.byte	20
	.byte	-81
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-54
	.byte	23
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	2
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	VP6_DcUpdateProbs, %object
	.size	VP6_DcUpdateProbs, 22
VP6_DcUpdateProbs:
	.byte	-110
	.byte	-1
	.byte	-75
	.byte	-49
	.byte	-24
	.byte	-13
	.byte	-18
	.byte	-5
	.byte	-12
	.byte	-6
	.byte	-7
	.byte	-77
	.byte	-1
	.byte	-42
	.byte	-16
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.space	2
	.type	ZeroRunProbDefaults, %object
	.size	ZeroRunProbDefaults, 28
ZeroRunProbDefaults:
	.byte	-58
	.byte	-59
	.byte	-60
	.byte	-110
	.byte	-58
	.byte	-52
	.byte	-87
	.byte	-114
	.byte	-126
	.byte	-120
	.byte	-107
	.byte	-107
	.byte	-65
	.byte	-7
	.byte	-121
	.byte	-55
	.byte	-75
	.byte	-102
	.byte	98
	.byte	117
	.byte	-124
	.byte	126
	.byte	-110
	.byte	-87
	.byte	-72
	.byte	-16
	.byte	-10
	.byte	-2
	.type	ScanBandUpdateProbs, %object
	.size	ScanBandUpdateProbs, 64
ScanBandUpdateProbs:
	.byte	-1
	.byte	-124
	.byte	-124
	.byte	-97
	.byte	-103
	.byte	-105
	.byte	-95
	.byte	-86
	.byte	-92
	.byte	-94
	.byte	-120
	.byte	110
	.byte	103
	.byte	114
	.byte	-127
	.byte	118
	.byte	124
	.byte	125
	.byte	-124
	.byte	-120
	.byte	114
	.byte	110
	.byte	-114
	.byte	-121
	.byte	-122
	.byte	123
	.byte	-113
	.byte	126
	.byte	-103
	.byte	-73
	.byte	-90
	.byte	-95
	.byte	-85
	.byte	-76
	.byte	-77
	.byte	-92
	.byte	-53
	.byte	-38
	.byte	-31
	.byte	-39
	.byte	-41
	.byte	-50
	.byte	-53
	.byte	-39
	.byte	-27
	.byte	-15
	.byte	-8
	.byte	-13
	.byte	-3
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
	.type	ZrlUpdateProbs, %object
	.size	ZrlUpdateProbs, 28
ZrlUpdateProbs:
	.byte	-37
	.byte	-10
	.byte	-18
	.byte	-7
	.byte	-24
	.byte	-17
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	-3
	.byte	-17
	.byte	-12
	.byte	-15
	.byte	-8
	.byte	-58
	.byte	-24
	.byte	-5
	.byte	-3
	.byte	-37
	.byte	-15
	.byte	-3
	.byte	-1
	.byte	-8
	.byte	-7
	.byte	-12
	.byte	-18
	.byte	-5
	.byte	-1
	.type	VP6_AcUpdateProbs, %object
	.size	VP6_AcUpdateProbs, 396
VP6_AcUpdateProbs:
	.byte	-29
	.byte	-10
	.byte	-26
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-47
	.byte	-25
	.byte	-25
	.byte	-7
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-14
	.byte	-15
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-15
	.byte	-3
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
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
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
	.byte	-16
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
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-50
	.byte	-53
	.byte	-29
	.byte	-17
	.byte	-9
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-49
	.byte	-57
	.byte	-36
	.byte	-20
	.byte	-13
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-44
	.byte	-37
	.byte	-26
	.byte	-13
	.byte	-12
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	-19
	.byte	-9
	.byte	-4
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-16
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
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-26
	.byte	-23
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
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
	.byte	-17
	.byte	-29
	.byte	-25
	.byte	-12
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-24
	.byte	-22
	.byte	-32
	.byte	-28
	.byte	-14
	.byte	-7
	.byte	-14
	.byte	-4
	.byte	-5
	.byte	-5
	.byte	-1
	.byte	-21
	.byte	-7
	.byte	-18
	.byte	-16
	.byte	-5
	.byte	-1
	.byte	-7
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-6
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-12
	.byte	-6
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-8
	.byte	-6
	.byte	-3
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
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.type	VP6_BaselineXmittedProbs, %object
	.size	VP6_BaselineXmittedProbs, 80
VP6_BaselineXmittedProbs:
	.byte	42
	.byte	2
	.byte	7
	.byte	42
	.byte	22
	.byte	3
	.byte	2
	.byte	5
	.byte	1
	.byte	0
	.byte	69
	.byte	1
	.byte	1
	.byte	44
	.byte	6
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	1
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	-27
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	35
	.byte	1
	.byte	6
	.byte	34
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	122
	.byte	1
	.byte	1
	.byte	46
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	DefaultIsShortProbs, %object
	.size	DefaultIsShortProbs, 2
DefaultIsShortProbs:
	.byte	-94
	.byte	-92
	.space	2
	.type	DefaultMvShortProbs, %object
	.size	DefaultMvShortProbs, 14
DefaultMvShortProbs:
	.byte	-31
	.byte	-110
	.byte	-84
	.byte	-109
	.byte	-42
	.byte	39
	.byte	-100
	.byte	-52
	.byte	-86
	.byte	119
	.byte	-21
	.byte	-116
	.byte	-26
	.byte	-28
	.space	2
	.type	DefaultSignProbs, %object
	.size	DefaultSignProbs, 2
DefaultSignProbs:
	.byte	-128
	.byte	-128
	.space	2
	.type	DefaultMvLongProbs, %object
	.size	DefaultMvLongProbs, 16
DefaultMvLongProbs:
	.byte	-9
	.byte	-46
	.byte	-121
	.byte	68
	.byte	-118
	.byte	-36
	.byte	-17
	.byte	-10
	.byte	-12
	.byte	-72
	.byte	-55
	.byte	44
	.byte	-83
	.byte	-35
	.byte	-17
	.byte	-3
	.type	DefaultScanBands, %object
	.size	DefaultScanBands, 64
DefaultScanBands:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"enter VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC1:
	.ascii	"leave VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC2:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC3:
	.ascii	"----------------- vp6 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC4:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC5:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC6:
	.ascii	"P-frm\000"
	.space	2
.LC7:
	.ascii	"error: DecMode illegal\012\000"
.LC8:
	.ascii	"%s %d NULL == pFwdImg!!\012\000"
	.space	3
.LC9:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC10:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC11:
	.ascii	"pCurImg is null\012\000"
	.space	3
.LC12:
	.ascii	"err_level(%d) over ref_thr(%d)\012\000"
.LC13:
	.ascii	"line: %d pToQueImg is null!\012\000"
	.space	3
.LC14:
	.ascii	"insert img to Voqueue failed!\012\000"
	.space	1
.LC15:
	.ascii	"VP6_Set_DecParam but logic fs is null!\012\000"
.LC16:
	.ascii	"Decord FS is NULL!\012\000"
.LC17:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC18:
	.ascii	"VP6DEC_Init leave\012\000"
	.space	1
.LC19:
	.ascii	"VP6_InterFrmHeader VersionNo fault,old:%d,new:%d\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	"enter VP6_IntraFrmHeader\012\000"
	.space	2
.LC21:
	.ascii	"error: Vp3VersionNo %d > CURRENT_DECODE_VERSION(8)\012"
	.ascii	"\000"
.LC22:
	.ascii	"error: bitstream error!\012\000"
	.space	3
.LC23:
	.ascii	"We have a new size image!\012 The old size is %d x "
	.ascii	"%d, and the new is %d x %d\012\000"
.LC24:
	.ascii	"leave VP6_IntraFrmHeader\012\000"
	.space	2
.LC25:
	.ascii	"[ERR]VP6_GetPictureHeader invalid param!\012\000"
	.space	2
.LC26:
	.ascii	"VP6_GetPictureHeader enter!\012\000"
	.space	3
.LC27:
	.ascii	"VP6_GetPictureHeader leave!\012\000"
	.space	3
.LC28:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC29:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC30:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC31:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC32:
	.ascii	"image_size_in_mb abnormal(%d x %d)\012\000"
.LC33:
	.ascii	"vp6 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC34:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC35:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC36:
	.ascii	"Error! Truncated packet\012\000"
	.space	3
.LC37:
	.ascii	"[ERR]VP6_GetPictureHeader Error!\012\000"
	.space	2
.LC38:
	.ascii	"[ERR] VP6_DecodeDecide Error!\012\000"
	.space	1
.LC39:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC40:
	.ascii	"VP6_ArrangeVHBMem err\012\000"
	.space	1
.LC41:
	.ascii	"VP6_DecodeDecide err\012\000"
	.space	2
.LC42:
	.ascii	"VP6DEC_GetImageBuffer err\012\000"
	.space	1
.LC43:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC44:
	.ascii	"VP6_PrePare_decode Error!\012\000"
	.space	1
.LC45:
	.ascii	"leave VP6DEC_Decode\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
