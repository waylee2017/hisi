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
	.file	"public.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(public)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.public.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/public.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/public.o
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
	.global	IsDprintTypeEnable
	.type	IsDprintTypeEnable, %function
IsDprintTypeEnable:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #32	@ type,
	moveq	r0, #1	@ D.29767,
	bxeq	lr	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	mov	r2, #1	@ tmp137,
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	ands	r3, r3, r2, asl r0	@,, g_PrintEnable, tmp137,
	moveq	r0, #0	@, D.29767
	movne	r0, #1	@, D.29767
	bx	lr	@
	.fnend
	.size	IsDprintTypeEnable, .-IsDprintTypeEnable
	.align	2
	.global	vfmw_dprint_nothing
	.type	vfmw_dprint_nothing, %function
vfmw_dprint_nothing:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	vfmw_dprint_nothing, .-vfmw_dprint_nothing
	.align	2
	.global	CHECK_REC_POS_ENABLE
	.type	CHECK_REC_POS_ENABLE, %function
CHECK_REC_POS_ENABLE:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR1	@ tmp136,
	movt	r1, #:upper16:.LANCHOR1	@ tmp136,
	ldr	r3, [r1, #0]	@ g_TraceCtrl, g_TraceCtrl
	mov	r0, r3, asr r0	@ tmp137, g_TraceCtrl,
	and	r0, r0, #1	@, tmp137,
	bx	lr	@
	.fnend
	.size	CHECK_REC_POS_ENABLE, .-CHECK_REC_POS_ENABLE
	.global	__aeabi_uidiv
	.align	2
	.global	qsort
	.type	qsort, %function
qsort:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0	@ width,
	cmpne	r1, #1	@, num,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r2	@ width, width
	.pad #268
	sub	sp, sp, #268	@,,
	movhi	r2, #0	@, tmp215
	movls	r2, #1	@, tmp215
	mov	sl, r3	@ comp, comp
	bls	.L47	@,
	sub	r1, r1, #1	@ tmp216, num,
	rsb	r9, r4, #0	@ pretmp.625, width
	str	r0, [sp, #8]	@ base, %sfp
	mla	r7, r4, r1, r0	@ hi, width, tmp216, base
	str	r2, [sp, #20]	@ tmp215, %sfp
.L87:
	ldr	r2, [sp, #8]	@, %sfp
	mov	r1, r4	@, width
	rsb	r0, r2, r7	@,, hi
	bl	__aeabi_uidiv	@
	add	r0, r0, #1	@ size,,
	cmp	r0, #8	@ size,
	bhi	.L13	@,
.L98:
	ldr	r2, [sp, #8]	@, %sfp
	cmp	r2, r7	@, hi
	bcs	.L14	@,
	add	ip, r7, r9	@, hi, pretmp.625
	add	r3, r2, r4	@,, width
	add	r0, r3, r4	@,, width
	str	r3, [sp, #12]	@, %sfp
	mov	fp, ip	@ ivtmp.561,
	str	ip, [sp, #4]	@, %sfp
	str	r0, [sp, #16]	@, %sfp
.L21:
	ldr	lr, [sp, #12]	@, %sfp
	cmp	lr, r7	@, hi
	ldrhi	r5, [sp, #8]	@ lo.623, %sfp
	bhi	.L16	@,
	add	r5, sp, #8
	ldmia	r5, {r5, r6, r8}	@ phole ldm
.L18:
	mov	r1, r5	@, lo.623
	mov	r0, r6	@, lo.621
	blx	sl	@ comp
	add	r8, r8, r4	@ ivtmp.557, ivtmp.557, width
	rsb	r1, r4, r8	@ tmp223, width, ivtmp.557
	cmp	r0, #0	@,
	movgt	r5, r6	@ lo.623, lo.621
	cmp	r1, r7	@ tmp223, hi
	add	r6, r6, r4	@ lo.621, lo.621, width
	bls	.L18	@,
.L16:
	cmp	r5, r7	@ lo.623, hi
	beq	.L19	@,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ tmp,* lo.623
	mov	r3, #1	@ ivtmp.546,
	ldrb	ip, [r7, #0]	@ zero_extendqisi2	@ tmp224,* hi
	cmp	r4, r3	@ width, ivtmp.546
	sub	r0, r4, #1	@ tmp277, width,
	and	r0, r0, r3	@ tmp279, tmp277,
	strb	ip, [r5, #0]	@ tmp224,* lo.623
	strb	r2, [r7, #0]	@ tmp,* hi
	beq	.L19	@,
	cmp	r0, #0	@ tmp279,
	beq	.L20	@,
	ldrb	lr, [r5, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.546
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ tmp328,* ivtmp.546
	strb	r2, [r5, r3]	@ tmp328,* ivtmp.546
	strb	lr, [r7, r3]	@ tmp,* ivtmp.546
	mov	r3, #2	@ ivtmp.546,
	cmp	r4, r3	@ width, ivtmp.546
	beq	.L19	@,
.L20:
	ldrb	ip, [r5, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.546
	add	r2, r3, #1	@ tmp280, ivtmp.546,
	ldrb	r0, [r7, r3]	@ zero_extendqisi2	@ tmp299,* ivtmp.546
	strb	r0, [r5, r3]	@ tmp299,* ivtmp.546
	strb	ip, [r7, r3]	@ tmp,* ivtmp.546
	add	r3, r2, #1	@ ivtmp.546, tmp280,
	ldrb	lr, [r5, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.546
	ldrb	r1, [r7, r2]	@ zero_extendqisi2	@ tmp302,
	strb	r1, [r5, r2]	@ tmp302,
	strb	lr, [r7, r2]	@ tmp,
	bne	.L20	@,
.L19:
	add	fp, fp, r9	@ ivtmp.561, ivtmp.561, pretmp.625
	ldr	lr, [sp, #8]	@, %sfp
	rsb	r3, r9, fp	@ tmp227, pretmp.625, ivtmp.561
	ldr	r7, [sp, #4]	@ hi, %sfp
	cmp	lr, r3	@, tmp227
	bcs	.L14	@,
	add	r2, r7, r9	@, tmp1, pretmp.625
	str	r2, [sp, #4]	@, %sfp
	b	.L21	@
.L36:
	add	fp, fp, r4	@ higuy.620, higuy, width
	cmp	fp, r6	@ higuy.620, mid
	bls	.L48	@,
	add	r5, fp, r9	@ ivtmp.571, higuy.620, pretmp.625
.L40:
	cmp	r6, r5	@ mid, ivtmp.571
	mov	r0, r5	@, ivtmp.571
	mov	fp, r5	@ higuy.620, ivtmp.571
	mov	r1, r6	@, mid
	add	r5, r5, r9	@ ivtmp.571, ivtmp.571, pretmp.625
	bcs	.L39	@,
	blx	sl	@ comp
	cmp	r0, #0	@,
	beq	.L40	@,
.L39:
	cmp	fp, r6	@ higuy.620, mid
	bls	.L48	@,
.L41:
	ldr	r0, [sp, #8]	@, %sfp
	rsb	r3, r8, r7	@ tmp243, loguy, hi
	rsb	ip, r0, fp	@ tmp242,, higuy.620
	cmp	ip, r3	@ tmp242, tmp243
	blt	.L43	@,
	cmp	r0, fp	@, higuy.620
	bcs	.L44	@,
	ldr	ip, [sp, #20]	@, %sfp
	add	r1, sp, #264	@,,
	add	r2, ip, #1	@,,
	str	r2, [sp, #20]	@, %sfp
	add	lr, r1, ip, asl #2	@, tmp246,,,
	str	fp, [lr, #-240]	@ higuy.620, histk
	str	r0, [lr, #-120]	@, lostk
.L44:
	cmp	r7, r8	@ hi, loguy
	strhi	r8, [sp, #8]	@ loguy, %sfp
	bhi	.L87	@,
.L14:
	ldr	r1, [sp, #20]	@, %sfp
	sub	r2, r1, #1	@,,
	str	r2, [sp, #20]	@, %sfp
	cmn	r2, #1	@,
	beq	.L47	@,
	add	r7, sp, #264	@,,
	mov	r1, r4	@, width
	add	r0, r7, r2, asl #2	@, tmp262,,,
	ldr	r3, [r0, #-120]	@, lostk
	ldr	r7, [r0, #-240]	@ hi, histk
	str	r3, [sp, #8]	@, %sfp
	ldr	r2, [sp, #8]	@, %sfp
	rsb	r0, r2, r7	@,, hi
	bl	__aeabi_uidiv	@
	add	r0, r0, #1	@ size,,
	cmp	r0, #8	@ size,
	bls	.L98	@,
.L13:
	mov	r6, r0, lsr #1	@ tmp228, size,
	ldr	r0, [sp, #8]	@, %sfp
	mla	r6, r4, r6, r0	@ mid, width, tmp228,
	mov	r1, r6	@, mid
	blx	sl	@ comp
	cmp	r0, #0	@,
	ble	.L22	@,
	ldr	ip, [sp, #8]	@, %sfp
	cmp	ip, r6	@, mid
	beq	.L22	@,
	ldrb	r5, [ip, #0]	@ zero_extendqisi2	@ tmp,
	mov	r3, #1	@ ivtmp.611,
	ldrb	r8, [r6, #0]	@ zero_extendqisi2	@ tmp230,* mid
	cmp	r4, r3	@ width, ivtmp.611
	sub	fp, r4, #1	@ tmp293, width,
	and	r0, fp, r3	@ tmp295, tmp293,
	strb	r8, [ip, #0]	@ tmp230,
	strb	r5, [r6, #0]	@ tmp,* mid
	beq	.L22	@,
	cmp	r0, #0	@ tmp295,
	beq	.L97	@,
	ldr	fp, [sp, #8]	@, %sfp
	ldrb	r5, [r6, r3]	@ zero_extendqisi2	@ tmp336,* ivtmp.611
	ldr	ip, [sp, #8]	@, %sfp
	ldrb	r2, [fp, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.611
	strb	r5, [ip, r3]	@ tmp336,* ivtmp.611
	strb	r2, [r6, r3]	@ tmp,* ivtmp.611
	mov	r3, #2	@ ivtmp.611,
	cmp	r4, r3	@ width, ivtmp.611
	beq	.L22	@,
.L97:
	ldr	r1, [sp, #8]	@ lo, %sfp
.L23:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.611
	add	lr, r3, #1	@ tmp296, ivtmp.611,
	ldrb	r5, [r6, r3]	@ zero_extendqisi2	@ tmp305,* ivtmp.611
	strb	r5, [r1, r3]	@ tmp305,* ivtmp.611
	strb	r2, [r6, r3]	@ tmp,* ivtmp.611
	add	r3, lr, #1	@ ivtmp.611, tmp296,
	ldrb	r0, [r1, lr]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.611
	ldrb	ip, [r6, lr]	@ zero_extendqisi2	@ tmp308,
	strb	ip, [r1, lr]	@ tmp308,
	strb	r0, [r6, lr]	@ tmp,
	bne	.L23	@,
.L22:
	ldr	r0, [sp, #8]	@, %sfp
	mov	r1, r7	@, hi
	blx	sl	@ comp
	cmp	r0, #0	@,
	ble	.L24	@,
	ldr	r0, [sp, #8]	@, %sfp
	cmp	r0, r7	@, hi
	beq	.L24	@,
	ldrb	r8, [r0, #0]	@ zero_extendqisi2	@ tmp,
	mov	r3, #1	@ ivtmp.602,
	ldrb	r1, [r7, #0]	@ zero_extendqisi2	@ tmp233,* hi
	cmp	r4, r3	@ width, ivtmp.602
	ldr	fp, [sp, #8]	@, %sfp
	sub	r0, r4, #1	@ tmp289, width,
	and	r0, r0, r3	@ tmp291, tmp289,
	strb	r1, [fp, #0]	@ tmp233,
	strb	r8, [r7, #0]	@ tmp,* hi
	beq	.L24	@,
	cmp	r0, #0	@ tmp291,
	beq	.L95	@,
	ldr	r0, [sp, #8]	@, %sfp
	ldrb	r1, [r7, r3]	@ zero_extendqisi2	@ tmp334,* ivtmp.602
	ldrb	lr, [r0, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.602
	strb	r1, [r0, r3]	@ tmp334,* ivtmp.602
	strb	lr, [r7, r3]	@ tmp,* ivtmp.602
	mov	r3, #2	@ ivtmp.602,
	cmp	r4, r3	@ width, ivtmp.602
	beq	.L24	@,
.L95:
	ldr	r1, [sp, #8]	@ lo, %sfp
.L25:
	ldrb	r5, [r1, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.602
	add	r2, r3, #1	@ tmp292, ivtmp.602,
	ldrb	r8, [r7, r3]	@ zero_extendqisi2	@ tmp311,* ivtmp.602
	strb	r8, [r1, r3]	@ tmp311,* ivtmp.602
	strb	r5, [r7, r3]	@ tmp,* ivtmp.602
	add	r3, r2, #1	@ ivtmp.602, tmp292,
	ldrb	lr, [r1, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.602
	ldrb	ip, [r7, r2]	@ zero_extendqisi2	@ tmp314,
	strb	ip, [r1, r2]	@ tmp314,
	strb	lr, [r7, r2]	@ tmp,
	bne	.L25	@,
.L24:
	mov	r0, r6	@, mid
	mov	r1, r7	@, hi
	blx	sl	@ comp
	cmp	r0, #0	@,
	ble	.L28	@,
	cmp	r7, r6	@ hi, mid
	beq	.L28	@,
	ldrb	fp, [r6, #0]	@ zero_extendqisi2	@ tmp,* mid
	mov	r3, #1	@ ivtmp.593,
	ldrb	r1, [r7, #0]	@ zero_extendqisi2	@ tmp236,* hi
	cmp	r4, r3	@ width, ivtmp.593
	sub	r0, r4, #1	@ tmp285, width,
	and	r0, r0, r3	@ tmp287, tmp285,
	strb	r1, [r6, #0]	@ tmp236,* mid
	strb	fp, [r7, #0]	@ tmp,* hi
	beq	.L28	@,
	cmp	r0, #0	@ tmp287,
	beq	.L29	@,
	ldrb	fp, [r6, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.593
	ldrb	r8, [r7, r3]	@ zero_extendqisi2	@ tmp332,* ivtmp.593
	strb	r8, [r6, r3]	@ tmp332,* ivtmp.593
	strb	fp, [r7, r3]	@ tmp,* ivtmp.593
	mov	r3, #2	@ ivtmp.593,
	cmp	r4, r3	@ width, ivtmp.593
	beq	.L28	@,
.L29:
	ldrb	r5, [r6, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.593
	add	r2, r3, #1	@ tmp288, ivtmp.593,
	ldrb	r8, [r7, r3]	@ zero_extendqisi2	@ tmp317,* ivtmp.593
	strb	r8, [r6, r3]	@ tmp317,* ivtmp.593
	strb	r5, [r7, r3]	@ tmp,* ivtmp.593
	add	r3, r2, #1	@ ivtmp.593, tmp288,
	ldrb	lr, [r6, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.593
	ldrb	ip, [r7, r2]	@ zero_extendqisi2	@ tmp320,
	strb	ip, [r6, r2]	@ tmp320,
	strb	lr, [r7, r2]	@ tmp,
	bne	.L29	@,
.L28:
	ldr	r8, [sp, #8]	@ loguy, %sfp
	mov	fp, r7	@ higuy, hi
	cmp	r6, r8	@ mid, loguy
	bls	.L30	@,
.L99:
	add	r5, r8, r4	@ ivtmp.592, loguy, width
.L31:
	cmp	r6, r5	@ mid, ivtmp.592
	mov	r0, r5	@, ivtmp.592
	mov	r8, r5	@ loguy, ivtmp.592
	mov	r1, r6	@, mid
	add	r5, r5, r4	@ ivtmp.592, ivtmp.592, width
	bls	.L30	@,
	blx	sl	@ comp
	cmp	r0, #0	@,
	ble	.L31	@,
.L32:
	add	r5, fp, r9	@ ivtmp.584, higuy, pretmp.625
.L35:
	cmp	r6, r5	@ mid, ivtmp.584
	mov	r0, r5	@, ivtmp.584
	mov	fp, r5	@ higuy, ivtmp.584
	mov	r1, r6	@, mid
	add	r5, r5, r9	@ ivtmp.584, ivtmp.584, pretmp.625
	bcs	.L34	@,
	blx	sl	@ comp
	cmp	r0, #0	@,
	bgt	.L35	@,
.L34:
	cmp	r8, fp	@ loguy, higuy
	bhi	.L36	@,
	cmp	fp, r8	@ higuy, loguy
	beq	.L37	@,
	ldrb	lr, [r8, #0]	@ zero_extendqisi2	@ tmp,* loguy
	mov	r3, #1	@ ivtmp.572,
	ldrb	r1, [fp, #0]	@ zero_extendqisi2	@ tmp239,* higuy
	cmp	r4, r3	@ width, ivtmp.572
	sub	r0, r4, #1	@ tmp281, width,
	and	r0, r0, r3	@ tmp283, tmp281,
	strb	r1, [r8, #0]	@ tmp239,* loguy
	strb	lr, [fp, #0]	@ tmp,* higuy
	beq	.L37	@,
	cmp	r0, #0	@ tmp283,
	beq	.L38	@,
	ldrb	r5, [r8, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.572
	ldrb	ip, [fp, r3]	@ zero_extendqisi2	@ tmp330,* ivtmp.572
	strb	ip, [r8, r3]	@ tmp330,* ivtmp.572
	strb	r5, [fp, r3]	@ tmp,* ivtmp.572
	mov	r3, #2	@ ivtmp.572,
	cmp	r4, r3	@ width, ivtmp.572
	beq	.L37	@,
.L38:
	ldrb	lr, [r8, r3]	@ zero_extendqisi2	@ tmp,* ivtmp.572
	add	r2, r3, #1	@ tmp284, ivtmp.572,
	ldrb	r1, [fp, r3]	@ zero_extendqisi2	@ tmp323,* ivtmp.572
	strb	r1, [r8, r3]	@ tmp323,* ivtmp.572
	strb	lr, [fp, r3]	@ tmp,* ivtmp.572
	add	r3, r2, #1	@ ivtmp.572, tmp284,
	ldrb	ip, [r8, r2]	@ zero_extendqisi2	@ tmp,
	cmp	r4, r3	@ width, ivtmp.572
	ldrb	r5, [fp, r2]	@ zero_extendqisi2	@ tmp326,
	strb	r5, [r8, r2]	@ tmp326,
	strb	ip, [fp, r2]	@ tmp,
	bne	.L38	@,
.L37:
	cmp	r6, fp	@ mid, higuy
	moveq	r6, r8	@ mid, loguy
	cmp	r6, r8	@ mid, loguy
	bhi	.L99	@,
.L30:
	add	r5, r8, r4	@ ivtmp.588, loguy, width
.L33:
	cmp	r7, r5	@ hi, ivtmp.588
	mov	r0, r5	@, ivtmp.588
	mov	r8, r5	@ loguy, ivtmp.588
	mov	r1, r6	@, mid
	add	r5, r5, r4	@ ivtmp.588, ivtmp.588, width
	bcc	.L32	@,
	blx	sl	@ comp
	cmp	r0, #0	@,
	ble	.L33	@,
	b	.L32	@
.L43:
	cmp	r7, r8	@ hi, loguy
	bls	.L46	@,
	ldr	lr, [sp, #20]	@, %sfp
	add	r2, sp, #264	@,,
	add	r0, lr, #1	@,,
	str	r0, [sp, #20]	@, %sfp
	add	r3, r2, lr, asl #2	@, tmp254,,,
	str	r7, [r3, #-240]	@ hi, histk
	str	r8, [r3, #-120]	@ loguy, lostk
.L46:
	ldr	ip, [sp, #8]	@, %sfp
	cmp	ip, fp	@, higuy.620
	movcc	r7, fp	@ hi, higuy.620
	bcc	.L87	@,
	b	.L14	@
.L48:
	str	r8, [sp, #4]	@ loguy, %sfp
	add	r5, fp, r9	@ ivtmp.567, higuy.620, pretmp.625
	ldr	r8, [sp, #8]	@ lo, %sfp
.L42:
	cmp	r8, r5	@ lo, ivtmp.567
	mov	r0, r5	@, ivtmp.567
	mov	fp, r5	@ higuy.620, ivtmp.567
	mov	r1, r6	@, mid
	add	r5, r5, r9	@ ivtmp.567, ivtmp.567, pretmp.625
	bcs	.L89	@,
	blx	sl	@ comp
	cmp	r0, #0	@,
	beq	.L42	@,
.L89:
	ldr	r8, [sp, #4]	@ loguy, %sfp
	b	.L41	@
.L47:
	add	sp, sp, #268	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	qsort, .-qsort
	.align	2
	.global	dprint_vfmw
	.type	dprint_vfmw, %function
dprint_vfmw:
	.fnstart
.LFB1595:
	@ args = 4, pretend = 12, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	cmp	r0, #32	@ type,
	stmfd	sp!, {r1, r2, r3}	@,
	.save {r1, r2, r3}
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L101	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp157,
	movt	r1, #:upper16:.LANCHOR0	@ tmp157,
	mov	r2, #1	@ tmp142,
	ldr	r3, [r1, #0]	@ g_PrintEnable, g_PrintEnable
	ands	r3, r3, r2, asl r0	@,, g_PrintEnable, tmp142,
	bne	.L101	@,
.L102:
	mvn	r0, #0	@ D.29786,
.L104:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, lr}
	add	sp, sp, #12	@,,
	bx	lr
.L101:
	add	lr, sp, #24	@ tmp146,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp147,
	movt	r4, #:upper16:.LANCHOR0	@ tmp147,
	mov	r1, #1024	@,
	ldr	r2, [sp, #20]	@, format
	mov	r3, lr	@, tmp146
	add	r0, r4, #4	@, tmp147,
	str	lr, [sp, #4]	@ tmp146, args.__ap
	bl	vsnprintf	@
	movw	ip, #1021	@ tmp150,
	mov	r1, r0	@ nTotalChar,
	sub	r0, r0, #1	@ tmp149, nTotalChar,
	cmp	r0, ip	@ tmp149, tmp150
	bhi	.L102	@,
	movw	r2, #:lower16:.LANCHOR1	@ tmp151,
	movt	r2, #:upper16:.LANCHOR1	@ tmp151,
	ldr	r3, [r2, #4]	@ g_PrintDevice.438, g_PrintDevice
	cmp	r3, #1	@ g_PrintDevice.438,
	beq	.L107	@,
	cmp	r3, #2	@ g_PrintDevice.438,
	beq	.L102	@,
	cmp	r3, #3	@ g_PrintDevice.438,
	bne	.L102	@,
	ldr	r2, [r4, #1028]	@ g_fpLog.439, g_fpLog
	cmp	r2, #0	@ g_fpLog.439,
	beq	.L102	@,
	add	r0, r4, #4	@, tmp147,
	bl	klib_fwrite	@
	b	.L104	@
.L107:
	add	r1, r4, #4	@, tmp147,
	movw	r0, #:lower16:.LC0	@,
	movt	r0, #:upper16:.LC0	@,
	bl	printk	@
	b	.L104	@
	.fnend
	.size	dprint_vfmw, .-dprint_vfmw
	.global	s_pstTracer
	.global	TracerPhyAddr
	.global	g_fpLog
	.global	g_LogEnable
	.global	g_PrintEnable
	.global	g_PrintDevice
	.global	g_pMemPrint
	.global	g_TraceCtrl
	.global	g_TraceBsPeriod
	.global	g_TraceFramePeriod
	.global	g_TraceImgPeriod
	.global	g_NoStreamReportPeriod
	.global	g_LogFileName
	.global	g_TmpMsg
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	g_TraceCtrl, %object
	.size	g_TraceCtrl, 4
g_TraceCtrl:
	.word	-1
	.type	g_PrintDevice, %object
	.size	g_PrintDevice, 4
g_PrintDevice:
	.word	1
	.type	g_TraceBsPeriod, %object
	.size	g_TraceBsPeriod, 4
g_TraceBsPeriod:
	.word	200
	.type	g_TraceImgPeriod, %object
	.size	g_TraceImgPeriod, 4
g_TraceImgPeriod:
	.word	500
	.type	g_NoStreamReportPeriod, %object
	.size	g_NoStreamReportPeriod, 4
g_NoStreamReportPeriod:
	.word	200
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_PrintEnable, %object
	.size	g_PrintEnable, 4
g_PrintEnable:
	.space	4
	.type	g_TmpMsg, %object
	.size	g_TmpMsg, 1024
g_TmpMsg:
	.space	1024
	.type	g_fpLog, %object
	.size	g_fpLog, 4
g_fpLog:
	.space	4
	.type	s_pstTracer, %object
	.size	s_pstTracer, 4
s_pstTracer:
	.space	4
	.type	TracerPhyAddr, %object
	.size	TracerPhyAddr, 4
TracerPhyAddr:
	.space	4
	.type	g_LogEnable, %object
	.size	g_LogEnable, 4
g_LogEnable:
	.space	4
	.type	g_pMemPrint, %object
	.size	g_pMemPrint, 4
g_pMemPrint:
	.space	4
	.type	g_TraceFramePeriod, %object
	.size	g_TraceFramePeriod, 4
g_TraceFramePeriod:
	.space	4
	.type	g_LogFileName, %object
	.size	g_LogFileName, 500
g_LogFileName:
	.space	500
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
