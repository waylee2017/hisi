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
	.file	"dnr_patch.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dnr_patch)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_patch.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.o
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
	.global	ComparePattern
	.type	ComparePattern, %function
ComparePattern:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [r1, #13]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [r0, #12]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r4, [r1, #12]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r6, r2	@ tmp150, <variable>.Pix, <variable>.Pix
	ldrb	r5, [r0, #14]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #0	@ tmp150,
	rsb	r6, r4, r7	@ tmp144, <variable>.Pix, <variable>.Pix
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp151, tmp150
	cmp	r6, #0	@ tmp144,
	rsblt	r6, r6, #0	@ tmp145, tmp144
	ldrb	r4, [r1, #15]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [r0, #15]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp151,
	movle	r2, #0	@, tmp153
	movgt	r2, #1	@, tmp153
	rsb	ip, r3, r5	@ tmp156, <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp145,
	addgt	r2, r2, #1	@,, MisCnt.511, tmp153
	cmp	ip, #0	@ tmp156,
	rsb	r7, r4, r7	@ tmp162, <variable>.Pix, <variable>.Pix
	ldrb	r3, [r1, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp157, tmp156
	ldrb	r5, [r0, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp157,
	movle	ip, r2	@, MisCnt.519, MisCnt.511
	addgt	ip, r2, #1	@,, MisCnt.519, MisCnt.511
	cmp	r7, #0	@ tmp162,
	ldrb	r6, [r0, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, r3, r5	@ tmp168, <variable>.Pix, <variable>.Pix
	ldrb	r2, [r1, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp163, tmp162
	ldrb	r4, [r0, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp163,
	addgt	ip, ip, #1	@,, MisCnt.527, MisCnt.519
	cmp	r5, #0	@ tmp168,
	rsb	r2, r2, r6	@ tmp174, <variable>.Pix, <variable>.Pix
	ldrb	r3, [r1, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp169, tmp168
	ldrb	r0, [r0, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp169,
	addgt	ip, ip, #1	@,, MisCnt.535, MisCnt.527
	cmp	r2, #0	@ tmp174,
	rsb	r3, r3, r4	@ tmp180, <variable>.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp175, tmp174
	ldrb	r1, [r1, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp175,
	movle	r2, ip	@, MisCnt.543, MisCnt.535
	addgt	r2, ip, #1	@,, MisCnt.543, MisCnt.535
	cmp	r3, #0	@ tmp180,
	rsb	ip, r1, r0	@ tmp187, <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp181, tmp180
	cmp	r3, #2	@ tmp181,
	movle	r3, r2	@, MisCnt.551, MisCnt.543
	addgt	r3, r2, #1	@,, MisCnt.551, MisCnt.543
	cmp	ip, #0	@ tmp187,
	rsblt	ip, ip, #0	@ tmp188, tmp187
	cmp	ip, #2	@ tmp188,
	movle	r0, r3	@, tmp191, MisCnt.551
	addgt	r0, r3, #1	@,, tmp191, MisCnt.551
	cmp	r0, #2	@ tmp191,
	movgt	r0, #0	@,
	movle	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
	.fnend
	.size	ComparePattern, .-ComparePattern
	.align	2
	.global	GetSample
	.type	GetSample, %function
GetSample:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r2, [r0, #0]	@ <variable>.Comp, <variable>.Comp
	mov	r3, r0	@ pSmp, pSmp
	cmp	r2, #1	@ <variable>.Comp,
	ldreq	ip, [r1, #12]	@ pRd, <variable>.pPicBufU
	beq	.L7	@,
	cmp	r2, #2	@ <variable>.Comp,
	ldrne	ip, [r1, #8]	@ pRd, <variable>.pPicBufY
	ldreq	ip, [r1, #16]	@ pRd, <variable>.pPicBufV
.L7:
	ldr	r4, [r1, #28]	@ <variable>.PicStride, <variable>.PicStride
	add	r0, r3, #12	@, pSmp,
	ldr	r1, [r3, #4]	@ <variable>.Px, <variable>.Px
	mov	r2, #8	@,
	ldr	r5, [r3, #8]	@ <variable>.Py, <variable>.Py
	mla	r3, r5, r4, r1	@ tmp141, <variable>.Py, <variable>.PicStride, <variable>.Px
	add	r1, ip, r3	@, pRd, tmp141
	ldmfd	sp!, {r4, r5}
	b	memcpy	@
	.fnend
	.size	GetSample, .-GetSample
	.align	2
	.global	DetPic
	.type	DetPic, %function
DetPic:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r0, #0	@ pDetPara, pDetPara
	.pad #36
	sub	sp, sp, #36	@,,
	beq	.L66	@,
	ldr	r4, [r5, #8]	@ <variable>.pPicBufY, <variable>.pPicBufY
	cmp	r4, #0	@ <variable>.pPicBufY,
	beq	.L67	@,
	ldr	r2, [r5, #24]	@ D.34602, <variable>.PicHeight
	cmp	r2, #1088	@ D.34602,
	ldrgt	r3, [r5, #20]	@ prephitmp.801, <variable>.PicWidth
	bgt	.L16	@,
	ldr	r3, [r5, #20]	@ prephitmp.801, <variable>.PicWidth
	cmp	r3, #1920	@ prephitmp.801,
	bgt	.L16	@,
	cmp	r2, #0	@ D.34602,
	beq	.L16	@,
	cmp	r3, #0	@ prephitmp.801,
	beq	.L16	@,
	cmp	r2, #576	@ D.34602,
	beq	.L68	@,
	cmp	r2, #480	@ D.34602,
	beq	.L69	@,
	cmp	r2, #720	@ D.34602,
	beq	.L70	@,
.L49:
	movw	r0, #1079	@ tmp11864,
	cmp	r2, r0	@ D.34602, tmp11864
	ble	.L46	@,
	cmp	r3, #1920	@ prephitmp.801,
	bne	.L46	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp11865,
	movt	r4, #:upper16:.LANCHOR0	@ tmp11865,
	add	r6, sp, #12	@ tmp11871,,
	mov	r1, r5	@, pDetPara
	ldr	ip, [r4, #3380]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r4, #3384]	@ <variable>.Px, <variable>.Px
	mov	r0, r6	@, tmp11871
	ldr	lr, [r4, #3388]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #3393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #3392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r7, r1	@ tmp11882, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp11882,
	ldrb	ip, [r4, #3394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, r3, r0	@ tmp11875, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp11883, tmp11882
	cmp	r7, #0	@ tmp11875,
	rsblt	r7, r7, #0	@ tmp11876, tmp11875
	ldrb	r0, [r4, #3395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11883,
	movle	r1, #0	@, tmp11885
	movgt	r1, #1	@, tmp11885
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, ip	@ tmp11889, SmpPat.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11876,
	addgt	r1, r1, #1	@,, MisCnt.6463, tmp11885
	cmp	r8, #0	@ tmp11889,
	rsb	r3, r3, r0	@ tmp11896, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp11890, tmp11889
	ldrb	ip, [r4, #3396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11890,
	movle	r8, r1	@, MisCnt.6471, MisCnt.6463
	addgt	r8, r1, #1	@,, MisCnt.6471, MisCnt.6463
	cmp	r3, #0	@ tmp11896,
	ldrb	r0, [r4, #3397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp11903, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11897, tmp11896
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11897,
	movle	r3, r8	@, MisCnt.6479, MisCnt.6471
	addgt	r3, r8, #1	@,, MisCnt.6479, MisCnt.6471
	cmp	ip, #0	@ tmp11903,
	ldrb	r7, [r4, #3398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp11910, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11904, tmp11903
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11904,
	movle	ip, r3	@, MisCnt.6487, MisCnt.6479
	addgt	ip, r3, #1	@,, MisCnt.6487, MisCnt.6479
	cmp	r1, #0	@ tmp11910,
	ldrb	r0, [r4, #3399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r7	@ tmp11917, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11911, tmp11910
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp11911,
	movle	r1, ip	@, MisCnt.6495, MisCnt.6487
	addgt	r1, ip, #1	@,, MisCnt.6495, MisCnt.6487
	cmp	r2, #0	@ tmp11917,
	rsb	ip, r3, r0	@ tmp11924, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11918, tmp11917
	cmp	r2, #2	@ tmp11918,
	movle	r2, r1	@, MisCnt.6503, MisCnt.6495
	addgt	r2, r1, #1	@,, MisCnt.6503, MisCnt.6495
	cmp	ip, #0	@ tmp11924,
	rsblt	ip, ip, #0	@ tmp11925, tmp11924
	cmp	ip, #2	@ tmp11925,
	movle	r1, r2	@, tmp11928, MisCnt.6503
	addgt	r1, r2, #1	@,, tmp11928, MisCnt.6503
	cmp	r1, #2	@ tmp11928,
	bgt	.L46	@,
	ldr	r3, [r4, #3400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11871
	ldr	r2, [r4, #3404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3408]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r7, [r4, #3413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp11946, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11946,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r8	@ tmp11939, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11947, tmp11946
	cmp	r7, #0	@ tmp11939,
	rsb	r0, r2, r0	@ tmp11953, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11940, tmp11939
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11947,
	movle	r3, #0	@, tmp11949
	movgt	r3, #1	@, tmp11949
	ldrb	r8, [r4, #3415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11940,
	addgt	r3, r3, #1	@,, MisCnt.6529, tmp11949
	cmp	r0, #0	@ tmp11953,
	ldrb	r1, [r4, #3416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11960, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11954, tmp11953
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11954,
	addgt	r3, r3, #1	@,, MisCnt.6537, MisCnt.6529
	cmp	r8, #0	@ tmp11960,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11967, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11961, tmp11960
	ldrb	ip, [r4, #3417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11961,
	addgt	r3, r3, #1	@,, MisCnt.6545, MisCnt.6537
	cmp	r2, #0	@ tmp11967,
	ldrb	r7, [r4, #3418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11974, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11968, tmp11967
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11968,
	addgt	r3, r3, #1	@,, MisCnt.6553, MisCnt.6545
	cmp	ip, #0	@ tmp11974,
	ldrb	r0, [r4, #3419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r7	@ tmp11981, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11975, tmp11974
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11975,
	addgt	r3, r3, #1	@,, MisCnt.6561, MisCnt.6553
	cmp	r1, #0	@ tmp11981,
	rsb	r2, r2, r0	@ tmp11988, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11982, tmp11981
	cmp	r1, #2	@ tmp11982,
	addgt	r3, r3, #1	@,, MisCnt.6569, MisCnt.6561
	cmp	r2, #0	@ tmp11988,
	rsblt	r2, r2, #0	@ tmp11989, tmp11988
	cmp	r2, #2	@ tmp11989,
	addgt	r3, r3, #1	@,, tmp11992, MisCnt.6569
	cmp	r3, #2	@ tmp11992,
	bgt	.L46	@,
	ldr	r3, [r4, #3420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11871
	ldr	r2, [r4, #3424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r7, [r4, #3433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp12010, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12010,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r8	@ tmp12003, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12011, tmp12010
	cmp	r7, #0	@ tmp12003,
	rsb	r0, r2, r0	@ tmp12017, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp12004, tmp12003
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12011,
	movle	r3, #0	@, tmp12013
	movgt	r3, #1	@, tmp12013
	ldrb	r8, [r4, #3435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp12004,
	addgt	r3, r3, #1	@,, MisCnt.6595, tmp12013
	cmp	r0, #0	@ tmp12017,
	ldrb	r1, [r4, #3436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp12024, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12018, tmp12017
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12018,
	addgt	r3, r3, #1	@,, MisCnt.6603, MisCnt.6595
	cmp	r8, #0	@ tmp12024,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12031, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp12025, tmp12024
	ldrb	ip, [r4, #3437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp12025,
	addgt	r3, r3, #1	@,, MisCnt.6611, MisCnt.6603
	cmp	r2, #0	@ tmp12031,
	ldrb	r7, [r4, #3438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12038, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12032, tmp12031
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12032,
	addgt	r3, r3, #1	@,, MisCnt.6619, MisCnt.6611
	cmp	ip, #0	@ tmp12038,
	ldrb	r0, [r4, #3439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12039, tmp12038
	rsb	r1, r1, r7	@ tmp12045, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12039,
	addgt	r3, r3, #1	@,, MisCnt.6627, MisCnt.6619
	cmp	r1, #0	@ tmp12045,
	rsb	ip, r2, r0	@ tmp12052, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12046, tmp12045
	cmp	r1, #2	@ tmp12046,
	addgt	r3, r3, #1	@,, MisCnt.6635, MisCnt.6627
	cmp	ip, #0	@ tmp12052,
	rsblt	ip, ip, #0	@ tmp12053, tmp12052
	cmp	ip, #2	@ tmp12053,
	addgt	r3, r3, #1	@,, tmp12056, MisCnt.6635
	cmp	r3, #2	@ tmp12056,
	bgt	.L46	@,
	ldr	r3, [r4, #3440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11871
	ldr	r2, [r4, #3444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r7, [r4, #3453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp12074, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12074,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r8	@ tmp12067, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12075, tmp12074
	cmp	r7, #0	@ tmp12067,
	rsb	r0, r2, r0	@ tmp12081, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp12068, tmp12067
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12075,
	movle	r3, #0	@, tmp12077
	movgt	r3, #1	@, tmp12077
	ldrb	r8, [r4, #3455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp12068,
	addgt	r3, r3, #1	@,, MisCnt.6661, tmp12077
	cmp	r0, #0	@ tmp12081,
	ldrb	r1, [r4, #3456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp12088, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12082, tmp12081
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12082,
	addgt	r3, r3, #1	@,, MisCnt.6669, MisCnt.6661
	cmp	r8, #0	@ tmp12088,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12095, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp12089, tmp12088
	ldrb	ip, [r4, #3457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp12089,
	addgt	r3, r3, #1	@,, MisCnt.6677, MisCnt.6669
	cmp	r2, #0	@ tmp12095,
	ldrb	r7, [r4, #3458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12102, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12096, tmp12095
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12096,
	addgt	r3, r3, #1	@,, MisCnt.6685, MisCnt.6677
	cmp	ip, #0	@ tmp12102,
	ldrb	r0, [r4, #3459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12103, tmp12102
	rsb	r1, r1, r7	@ tmp12109, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12103,
	addgt	r3, r3, #1	@,, MisCnt.6693, MisCnt.6685
	cmp	r1, #0	@ tmp12109,
	rsb	ip, r2, r0	@ tmp12116, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12110, tmp12109
	cmp	r1, #2	@ tmp12110,
	addgt	r3, r3, #1	@,, MisCnt.6701, MisCnt.6693
	cmp	ip, #0	@ tmp12116,
	rsblt	ip, ip, #0	@ tmp12117, tmp12116
	cmp	ip, #2	@ tmp12117,
	addgt	r3, r3, #1	@,, tmp12120, MisCnt.6701
	cmp	r3, #2	@ tmp12120,
	bgt	.L46	@,
	ldr	r3, [r4, #3460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11871
	ldr	r2, [r4, #3464]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r4, #3473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r6, [r4, #3472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp12138, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12138,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r6	@ tmp12131, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12139, tmp12138
	cmp	r5, #0	@ tmp12131,
	rsb	r0, r2, r0	@ tmp12145, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp12132, tmp12131
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12139,
	movle	r3, #0	@, tmp12141
	movgt	r3, #1	@, tmp12141
	ldrb	r6, [r4, #3475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp12132,
	addgt	r3, r3, #1	@,, MisCnt.2081, tmp12141
	cmp	r0, #0	@ tmp12145,
	ldrb	r1, [r4, #3476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp12152, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12146, tmp12145
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12146,
	addgt	r3, r3, #1	@,, MisCnt.2089, MisCnt.2081
	cmp	r6, #0	@ tmp12152,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12159, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp12153, tmp12152
	ldrb	ip, [r4, #3477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp12153,
	addgt	r3, r3, #1	@,, MisCnt.2099, MisCnt.2089
	cmp	r2, #0	@ tmp12159,
	ldrb	r5, [r4, #3478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12166, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12160, tmp12159
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12160,
	addgt	r3, r3, #1	@,, MisCnt.2108, MisCnt.2099
	cmp	ip, #0	@ tmp12166,
	ldrb	r0, [r4, #3479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12167, tmp12166
	rsb	r1, r1, r5	@ tmp12173, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12167,
	addgt	r3, r3, #1	@,, MisCnt.2116, MisCnt.2108
	cmp	r1, #0	@ tmp12173,
	rsb	ip, r2, r0	@ tmp12180, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12174, tmp12173
	cmp	r1, #2	@ tmp12174,
	addgt	r3, r3, #1	@,, MisCnt.2124, MisCnt.2116
	cmp	ip, #0	@ tmp12180,
	rsblt	ip, ip, #0	@ tmp12181, tmp12180
	cmp	ip, #2	@ tmp12181,
	addgt	r3, r3, #1	@,, tmp12184, MisCnt.2124
	cmp	r3, #2	@ tmp12184,
	movle	r0, #7	@ Result,
	ble	.L13	@,
.L46:
	mov	r0, #0	@ Result,
	b	.L13	@
.L16:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ Result,
.L13:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L70:
	cmp	r3, #1280	@ prephitmp.801,
	bne	.L46	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp12194,
	movt	r4, #:upper16:.LANCHOR0	@ tmp12194,
	add	r7, sp, #12	@ tmp12195,,
	mov	r1, r5	@, pDetPara
	ldr	r3, [r4, #3180]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r4, #3184]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12195
	ldr	lr, [r4, #3188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #3193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11241, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11241,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11234, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11242, tmp11241
	cmp	lr, #0	@ tmp11234,
	rsb	r0, r2, r0	@ tmp11248, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11235, tmp11234
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11242,
	movle	r8, #0	@, tmp11244
	movgt	r8, #1	@, tmp11244
	ldrb	r6, [r4, #3195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11235,
	addgt	r8, r8, #1	@,, MisCnt.6727, tmp11244
	cmp	r0, #0	@ tmp11248,
	ldrb	r1, [r4, #3196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11255, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11249, tmp11248
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11249,
	addgt	r8, r8, #1	@,, MisCnt.6735, MisCnt.6727
	cmp	r6, #0	@ tmp11255,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11262, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11256, tmp11255
	ldrb	ip, [r4, #3197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11256,
	addgt	r8, r8, #1	@,, MisCnt.6743, MisCnt.6735
	cmp	r2, #0	@ tmp11262,
	ldrb	lr, [r4, #3198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11269, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11263, tmp11262
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11263,
	addgt	r8, r8, #1	@,, MisCnt.6751, MisCnt.6743
	cmp	ip, #0	@ tmp11269,
	ldrb	r0, [r4, #3199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11276, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11270, tmp11269
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11270,
	addgt	r8, r8, #1	@,, MisCnt.6759, MisCnt.6751
	cmp	r1, #0	@ tmp11276,
	rsb	r6, r2, r0	@ tmp11283, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11277, tmp11276
	cmp	r1, #2	@ tmp11277,
	addgt	r8, r8, #1	@,, MisCnt.6767, MisCnt.6759
	cmp	r6, #0	@ tmp11283,
	rsblt	r6, r6, #0	@ tmp11284, tmp11283
	cmp	r6, #2	@ tmp11284,
	addgt	r8, r8, #1	@,, tmp11287, MisCnt.6767
	cmp	r8, #2	@ tmp11287,
	bgt	.L57	@,
	ldr	r3, [r4, #3200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r4, #3204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3208]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #3213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11305, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11305,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11298, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11306, tmp11305
	cmp	lr, #0	@ tmp11298,
	rsb	r0, r2, r0	@ tmp11312, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11299, tmp11298
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11306,
	movle	r8, #0	@, tmp11308
	movgt	r8, #1	@, tmp11308
	ldrb	r6, [r4, #3215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11299,
	addgt	r8, r8, #1	@,, MisCnt.6793, tmp11308
	cmp	r0, #0	@ tmp11312,
	ldrb	r1, [r4, #3216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11319, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11313, tmp11312
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11313,
	addgt	r8, r8, #1	@,, MisCnt.6801, MisCnt.6793
	cmp	r6, #0	@ tmp11319,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11326, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11320, tmp11319
	ldrb	ip, [r4, #3217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11320,
	addgt	r8, r8, #1	@,, MisCnt.6809, MisCnt.6801
	cmp	r2, #0	@ tmp11326,
	ldrb	lr, [r4, #3218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11333, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11327, tmp11326
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11327,
	addgt	r8, r8, #1	@,, MisCnt.6817, MisCnt.6809
	cmp	ip, #0	@ tmp11333,
	ldrb	r0, [r4, #3219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11340, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11334, tmp11333
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11334,
	addgt	r8, r8, #1	@,, MisCnt.6825, MisCnt.6817
	cmp	r1, #0	@ tmp11340,
	rsb	r6, r2, r0	@ tmp11347, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11341, tmp11340
	cmp	r1, #2	@ tmp11341,
	addgt	r8, r8, #1	@,, MisCnt.6833, MisCnt.6825
	cmp	r6, #0	@ tmp11347,
	rsblt	r6, r6, #0	@ tmp11348, tmp11347
	cmp	r6, #2	@ tmp11348,
	addgt	r8, r8, #1	@,, tmp11351, MisCnt.6833
	cmp	r8, #2	@ tmp11351,
	bgt	.L57	@,
	ldr	r3, [r4, #3220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r4, #3224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #3233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11369, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11369,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11362, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11370, tmp11369
	cmp	lr, #0	@ tmp11362,
	rsb	r0, r2, r0	@ tmp11376, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11363, tmp11362
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11370,
	movle	r8, #0	@, tmp11372
	movgt	r8, #1	@, tmp11372
	ldrb	r6, [r4, #3235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11363,
	addgt	r8, r8, #1	@,, MisCnt.6859, tmp11372
	cmp	r0, #0	@ tmp11376,
	ldrb	r1, [r4, #3236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11383, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11377, tmp11376
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11377,
	addgt	r8, r8, #1	@,, MisCnt.6867, MisCnt.6859
	cmp	r6, #0	@ tmp11383,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11390, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11384, tmp11383
	ldrb	ip, [r4, #3237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11384,
	addgt	r8, r8, #1	@,, MisCnt.6875, MisCnt.6867
	cmp	r2, #0	@ tmp11390,
	ldrb	lr, [r4, #3238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11397, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11391, tmp11390
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11391,
	addgt	r8, r8, #1	@,, MisCnt.6883, MisCnt.6875
	cmp	ip, #0	@ tmp11397,
	ldrb	r0, [r4, #3239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11404, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11398, tmp11397
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11398,
	addgt	r8, r8, #1	@,, MisCnt.6891, MisCnt.6883
	cmp	r1, #0	@ tmp11404,
	rsb	r6, r2, r0	@ tmp11411, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11405, tmp11404
	cmp	r1, #2	@ tmp11405,
	addgt	r8, r8, #1	@,, MisCnt.6899, MisCnt.6891
	cmp	r6, #0	@ tmp11411,
	rsblt	r6, r6, #0	@ tmp11412, tmp11411
	cmp	r6, #2	@ tmp11412,
	addgt	r8, r8, #1	@,, tmp11415, MisCnt.6899
	cmp	r8, #2	@ tmp11415,
	bgt	.L57	@,
	ldr	r3, [r4, #3240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r4, #3244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #3253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11433, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11433,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11426, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11434, tmp11433
	cmp	lr, #0	@ tmp11426,
	rsb	r0, r2, r0	@ tmp11440, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11427, tmp11426
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11434,
	movle	r8, #0	@, tmp11436
	movgt	r8, #1	@, tmp11436
	ldrb	r6, [r4, #3255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11427,
	addgt	r8, r8, #1	@,, MisCnt.6925, tmp11436
	cmp	r0, #0	@ tmp11440,
	ldrb	r1, [r4, #3256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11447, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11441, tmp11440
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11441,
	addgt	r8, r8, #1	@,, MisCnt.6933, MisCnt.6925
	cmp	r6, #0	@ tmp11447,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11454, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11448, tmp11447
	ldrb	ip, [r4, #3257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11448,
	addgt	r8, r8, #1	@,, MisCnt.6941, MisCnt.6933
	cmp	r2, #0	@ tmp11454,
	ldrb	lr, [r4, #3258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11461, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11455, tmp11454
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11455,
	addgt	r8, r8, #1	@,, MisCnt.6949, MisCnt.6941
	cmp	ip, #0	@ tmp11461,
	ldrb	r0, [r4, #3259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11468, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11462, tmp11461
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11462,
	addgt	r8, r8, #1	@,, MisCnt.6957, MisCnt.6949
	cmp	r1, #0	@ tmp11468,
	rsb	r6, r2, r0	@ tmp11475, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11469, tmp11468
	cmp	r1, #2	@ tmp11469,
	addgt	r8, r8, #1	@,, MisCnt.6965, MisCnt.6957
	cmp	r6, #0	@ tmp11475,
	rsblt	r6, r6, #0	@ tmp11476, tmp11475
	cmp	r6, #2	@ tmp11476,
	addgt	r8, r8, #1	@,, tmp11479, MisCnt.6965
	cmp	r8, #2	@ tmp11479,
	bgt	.L57	@,
	ldr	r3, [r4, #3260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r4, #3264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r4, #3273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #3272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp11497, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11497,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, r8	@ tmp11490, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11498, tmp11497
	cmp	r6, #0	@ tmp11490,
	rsb	r0, r2, r0	@ tmp11504, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11491, tmp11490
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11498,
	movle	r3, #0	@, tmp11500
	movgt	r3, #1	@, tmp11500
	ldrb	r8, [r4, #3275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11491,
	addgt	r3, r3, #1	@,, MisCnt.2144, tmp11500
	cmp	r0, #0	@ tmp11504,
	ldrb	r1, [r4, #3276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11511, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11505, tmp11504
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11505,
	addgt	r3, r3, #1	@,, MisCnt.2155, MisCnt.2144
	cmp	r8, #0	@ tmp11511,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11518, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11512, tmp11511
	ldrb	ip, [r4, #3277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11512,
	addgt	r3, r3, #1	@,, MisCnt.2166, MisCnt.2155
	cmp	r2, #0	@ tmp11518,
	ldrb	r6, [r4, #3278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11525, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11519, tmp11518
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11519,
	addgt	r3, r3, #1	@,, MisCnt.2175, MisCnt.2166
	cmp	ip, #0	@ tmp11525,
	ldrb	r0, [r4, #3279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11526, tmp11525
	rsb	r1, r1, r6	@ tmp11532, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11526,
	addgt	r3, r3, #1	@,, MisCnt.2186, MisCnt.2175
	cmp	r1, #0	@ tmp11532,
	rsb	ip, r2, r0	@ tmp11539, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11533, tmp11532
	cmp	r1, #2	@ tmp11533,
	addgt	r3, r3, #1	@,, MisCnt.2197, MisCnt.2186
	cmp	ip, #0	@ tmp11539,
	rsblt	ip, ip, #0	@ tmp11540, tmp11539
	cmp	ip, #2	@ tmp11540,
	addgt	r3, r3, #1	@,, tmp11543, MisCnt.2197
	cmp	r3, #2	@ tmp11543,
	movle	r0, #5	@ Result,
	ble	.L13	@,
.L57:
	ldr	ip, [r4, #3280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r4, #3284]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3288]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp11544,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp11544,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #3293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #3292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r8, r1	@ tmp11561, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp11561,
	ldrb	ip, [r4, #3294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r3, r0	@ tmp11554, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp11562, tmp11561
	cmp	r8, #0	@ tmp11554,
	rsblt	r8, r8, #0	@ tmp11555, tmp11554
	ldrb	r0, [r4, #3295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11562,
	movle	r1, #0	@, tmp11564
	movgt	r1, #1	@, tmp11564
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, ip	@ tmp11568, SmpPat.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11555,
	addgt	r1, r1, #1	@,, MisCnt.6991, tmp11564
	cmp	sl, #0	@ tmp11568,
	rsb	r3, r3, r0	@ tmp11575, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp11569, tmp11568
	ldrb	ip, [r4, #3296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11569,
	movle	sl, r1	@, MisCnt.6999, MisCnt.6991
	addgt	sl, r1, #1	@,, MisCnt.6999, MisCnt.6991
	cmp	r3, #0	@ tmp11575,
	ldrb	r0, [r4, #3297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp11582, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11576, tmp11575
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11576,
	movle	r3, sl	@, MisCnt.7007, MisCnt.6999
	addgt	r3, sl, #1	@,, MisCnt.7007, MisCnt.6999
	cmp	ip, #0	@ tmp11582,
	ldrb	r8, [r4, #3298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp11589, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11583, tmp11582
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11583,
	movle	ip, r3	@, MisCnt.7015, MisCnt.7007
	addgt	ip, r3, #1	@,, MisCnt.7015, MisCnt.7007
	cmp	r1, #0	@ tmp11589,
	ldrb	r0, [r4, #3299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r8	@ tmp11596, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11590, tmp11589
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp11590,
	movle	r1, ip	@, MisCnt.7023, MisCnt.7015
	addgt	r1, ip, #1	@,, MisCnt.7023, MisCnt.7015
	cmp	r2, #0	@ tmp11596,
	rsb	ip, r3, r0	@ tmp11603, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11597, tmp11596
	cmp	r2, #2	@ tmp11597,
	movle	r2, r1	@, MisCnt.7031, MisCnt.7023
	addgt	r2, r1, #1	@,, MisCnt.7031, MisCnt.7023
	cmp	ip, #0	@ tmp11603,
	rsblt	ip, ip, #0	@ tmp11604, tmp11603
	cmp	ip, #2	@ tmp11604,
	movle	r0, r2	@, tmp11607, MisCnt.7031
	addgt	r0, r2, #1	@,, tmp11607, MisCnt.7031
	cmp	r0, #2	@ tmp11607,
	bgt	.L46	@,
	ldr	r3, [r6, #3300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r6, #3304]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3308]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11625, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11625,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp11618, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11626, tmp11625
	cmp	r4, #0	@ tmp11618,
	rsb	r0, r2, r0	@ tmp11632, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11619, tmp11618
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11626,
	movle	r3, #0	@, tmp11628
	movgt	r3, #1	@, tmp11628
	ldrb	r8, [r6, #3315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11619,
	addgt	r3, r3, #1	@,, MisCnt.7057, tmp11628
	cmp	r0, #0	@ tmp11632,
	ldrb	r1, [r6, #3316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11639, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11633, tmp11632
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11633,
	addgt	r3, r3, #1	@,, MisCnt.7065, MisCnt.7057
	cmp	r8, #0	@ tmp11639,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11646, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11640, tmp11639
	ldrb	ip, [r6, #3317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11640,
	addgt	r3, r3, #1	@,, MisCnt.7073, MisCnt.7065
	cmp	r2, #0	@ tmp11646,
	ldrb	r4, [r6, #3318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11653, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11647, tmp11646
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11647,
	addgt	r3, r3, #1	@,, MisCnt.7081, MisCnt.7073
	cmp	ip, #0	@ tmp11653,
	ldrb	r0, [r6, #3319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r4	@ tmp11660, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11654, tmp11653
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11654,
	addgt	r3, r3, #1	@,, MisCnt.7089, MisCnt.7081
	cmp	r1, #0	@ tmp11660,
	rsb	r2, r2, r0	@ tmp11667, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11661, tmp11660
	cmp	r1, #2	@ tmp11661,
	addgt	r3, r3, #1	@,, MisCnt.7097, MisCnt.7089
	cmp	r2, #0	@ tmp11667,
	rsblt	r2, r2, #0	@ tmp11668, tmp11667
	cmp	r2, #2	@ tmp11668,
	addgt	r3, r3, #1	@,, tmp11671, MisCnt.7097
	cmp	r3, #2	@ tmp11671,
	bgt	.L46	@,
	ldr	r3, [r6, #3320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r6, #3324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3328]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11689, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11689,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp11682, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11690, tmp11689
	cmp	r4, #0	@ tmp11682,
	rsb	r0, r2, r0	@ tmp11696, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11683, tmp11682
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11690,
	movle	r3, #0	@, tmp11692
	movgt	r3, #1	@, tmp11692
	ldrb	r8, [r6, #3335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11683,
	addgt	r3, r3, #1	@,, MisCnt.7123, tmp11692
	cmp	r0, #0	@ tmp11696,
	ldrb	r1, [r6, #3336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11703, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11697, tmp11696
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11697,
	addgt	r3, r3, #1	@,, MisCnt.7131, MisCnt.7123
	cmp	r8, #0	@ tmp11703,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11710, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11704, tmp11703
	ldrb	ip, [r6, #3337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11704,
	addgt	r3, r3, #1	@,, MisCnt.7139, MisCnt.7131
	cmp	r2, #0	@ tmp11710,
	ldrb	r4, [r6, #3338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11717, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11711, tmp11710
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11711,
	addgt	r3, r3, #1	@,, MisCnt.7147, MisCnt.7139
	cmp	ip, #0	@ tmp11717,
	ldrb	r0, [r6, #3339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11718, tmp11717
	rsb	r1, r1, r4	@ tmp11724, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11718,
	addgt	r3, r3, #1	@,, MisCnt.7155, MisCnt.7147
	cmp	r1, #0	@ tmp11724,
	rsb	ip, r2, r0	@ tmp11731, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11725, tmp11724
	cmp	r1, #2	@ tmp11725,
	addgt	r3, r3, #1	@,, MisCnt.7163, MisCnt.7155
	cmp	ip, #0	@ tmp11731,
	rsblt	ip, ip, #0	@ tmp11732, tmp11731
	cmp	ip, #2	@ tmp11732,
	addgt	r3, r3, #1	@,, tmp11735, MisCnt.7163
	cmp	r3, #2	@ tmp11735,
	bgt	.L46	@,
	ldr	r3, [r6, #3340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12195
	ldr	r2, [r6, #3344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3348]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11753, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11753,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp11746, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11754, tmp11753
	cmp	r4, #0	@ tmp11746,
	rsb	r0, r2, r0	@ tmp11760, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11747, tmp11746
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11754,
	movle	r3, #0	@, tmp11756
	movgt	r3, #1	@, tmp11756
	ldrb	r8, [r6, #3355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11747,
	addgt	r3, r3, #1	@,, MisCnt.7189, tmp11756
	cmp	r0, #0	@ tmp11760,
	ldrb	r1, [r6, #3356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11767, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11761, tmp11760
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11761,
	addgt	r3, r3, #1	@,, MisCnt.7197, MisCnt.7189
	cmp	r8, #0	@ tmp11767,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11774, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11768, tmp11767
	ldrb	ip, [r6, #3357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11768,
	addgt	r3, r3, #1	@,, MisCnt.7205, MisCnt.7197
	cmp	r2, #0	@ tmp11774,
	ldrb	r4, [r6, #3358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11781, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11775, tmp11774
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11775,
	addgt	r3, r3, #1	@,, MisCnt.7213, MisCnt.7205
	cmp	ip, #0	@ tmp11781,
	ldrb	r0, [r6, #3359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11782, tmp11781
	rsb	r1, r1, r4	@ tmp11788, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11782,
	addgt	r3, r3, #1	@,, MisCnt.7221, MisCnt.7213
	cmp	r1, #0	@ tmp11788,
	rsb	ip, r2, r0	@ tmp11795, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11789, tmp11788
	cmp	r1, #2	@ tmp11789,
	addgt	r3, r3, #1	@,, MisCnt.7229, MisCnt.7221
	cmp	ip, #0	@ tmp11795,
	rsblt	ip, ip, #0	@ tmp11796, tmp11795
	cmp	ip, #2	@ tmp11796,
	addgt	r3, r3, #1	@,, tmp11799, MisCnt.7229
	cmp	r3, #2	@ tmp11799,
	bgt	.L46	@,
	ldr	r3, [r6, #3360]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r6, #3364]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12195
	ldr	lr, [r6, #3368]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #3372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11817, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11817,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp11810, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11818, tmp11817
	cmp	r4, #0	@ tmp11810,
	rsb	r0, r2, r0	@ tmp11824, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11811, tmp11810
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11818,
	movle	r3, #0	@, tmp11820
	movgt	r3, #1	@, tmp11820
	ldrb	r5, [r6, #3375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11811,
	addgt	r3, r3, #1	@,, MisCnt.2214, tmp11820
	cmp	r0, #0	@ tmp11824,
	ldrb	r1, [r6, #3376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp11831, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11825, tmp11824
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11825,
	addgt	r3, r3, #1	@,, MisCnt.2225, MisCnt.2214
	cmp	r5, #0	@ tmp11831,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11838, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11832, tmp11831
	ldrb	ip, [r6, #3377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11832,
	addgt	r3, r3, #1	@,, MisCnt.2236, MisCnt.2225
	cmp	r2, #0	@ tmp11838,
	ldrb	r4, [r6, #3378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11845, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11839, tmp11838
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11839,
	addgt	r3, r3, #1	@,, MisCnt.2246, MisCnt.2236
	cmp	ip, #0	@ tmp11845,
	ldrb	r0, [r6, #3379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11846, tmp11845
	rsb	r1, r1, r4	@ tmp11852, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11846,
	addgt	r3, r3, #1	@,, MisCnt.2255, MisCnt.2246
	cmp	r1, #0	@ tmp11852,
	rsb	ip, r2, r0	@ tmp11859, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11853, tmp11852
	cmp	r1, #2	@ tmp11853,
	addgt	r3, r3, #1	@,, MisCnt.2266, MisCnt.2255
	cmp	ip, #0	@ tmp11859,
	rsblt	ip, ip, #0	@ tmp11860, tmp11859
	cmp	ip, #2	@ tmp11860,
	addgt	r3, r3, #1	@,, tmp11863, MisCnt.2266
	cmp	r3, #2	@ tmp11863,
	bgt	.L46	@,
	mov	r0, #6	@ Result,
	b	.L13	@
.L68:
	cmp	r3, #720	@ prephitmp.801,
	beq	.L71	@,
	cmp	r3, #704	@ prephitmp.801,
	bne	.L46	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp12190,
	movt	r4, #:upper16:.LANCHOR0	@ tmp12190,
	add	r7, sp, #12	@ tmp12191,,
	mov	r1, r5	@, pDetPara
	ldr	r2, [r4, #2300]	@ <variable>.Comp, <variable>.Comp
	ldr	r6, [r4, #2304]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12191
	ldr	lr, [r4, #2308]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r6, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #2313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #2312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r3, r1	@ tmp8553, SmpPat.Pix, <variable>.Pix
	cmp	ip, #0	@ tmp8553,
	ldrb	r6, [r4, #2314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r8, sl	@ tmp8546, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	ip, ip, #0	@ tmp8554, tmp8553
	cmp	lr, #0	@ tmp8546,
	rsb	r8, r2, r6	@ tmp8560, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8547, tmp8546
	ldrb	r0, [r4, #2315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp8554,
	movle	r1, #0	@, tmp8556
	movgt	r1, #1	@, tmp8556
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp8547,
	addgt	r1, r1, #1	@,, MisCnt.7255, tmp8556
	cmp	r8, #0	@ tmp8560,
	ldrb	ip, [r4, #2316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r3, r3, r0	@ tmp8567, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8561, tmp8560
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp8561,
	movle	r6, r1	@, MisCnt.7263, MisCnt.7255
	addgt	r6, r1, #1	@,, MisCnt.7263, MisCnt.7255
	cmp	r3, #0	@ tmp8567,
	ldrb	r0, [r4, #2317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, sl, ip	@ tmp8574, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8568, tmp8567
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8568,
	movle	r2, r6	@, MisCnt.7271, MisCnt.7263
	addgt	r2, r6, #1	@,, MisCnt.7271, MisCnt.7263
	cmp	r8, #0	@ tmp8574,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, r0	@ tmp8581, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8575, tmp8574
	ldrb	lr, [r4, #2318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8575,
	movle	ip, r2	@, MisCnt.7279, MisCnt.7271
	addgt	ip, r2, #1	@,, MisCnt.7279, MisCnt.7271
	cmp	r6, #0	@ tmp8581,
	ldrb	r0, [r4, #2319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, sl, lr	@ tmp8588, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp8582, tmp8581
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r6, #2	@ tmp8582,
	movle	r1, ip	@, MisCnt.7287, MisCnt.7279
	addgt	r1, ip, #1	@,, MisCnt.7287, MisCnt.7279
	cmp	r2, #0	@ tmp8588,
	rsb	sl, r3, r0	@ tmp8595, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8589, tmp8588
	cmp	r2, #2	@ tmp8589,
	movle	r8, r1	@, MisCnt.7295, MisCnt.7287
	addgt	r8, r1, #1	@,, MisCnt.7295, MisCnt.7287
	cmp	sl, #0	@ tmp8595,
	rsblt	sl, sl, #0	@ tmp8596, tmp8595
	cmp	sl, #2	@ tmp8596,
	movle	r6, r8	@, tmp8599, MisCnt.7295
	addgt	r6, r8, #1	@,, tmp8599, MisCnt.7295
	cmp	r6, #2	@ tmp8599,
	bgt	.L47	@,
	ldr	r6, [r4, #2320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r2, [r4, #2324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2328]	@ <variable>.Py, <variable>.Py
	str	r6, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	mov	r6, r4	@ tmp8600, tmp12190
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #2333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #2332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp8617, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8617,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp8610, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #2334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8618, tmp8617
	cmp	lr, #0	@ tmp8610,
	rsb	r0, r2, r0	@ tmp8624, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8611, tmp8610
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8618,
	movle	sl, #0	@, tmp8620
	movgt	sl, #1	@, tmp8620
	ldrb	r8, [r4, #2335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8611,
	addgt	sl, sl, #1	@,, MisCnt.7321, tmp8620
	cmp	r0, #0	@ tmp8624,
	ldrb	r1, [r4, #2336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8631, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8625, tmp8624
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8625,
	addgt	sl, sl, #1	@,, MisCnt.7329, MisCnt.7321
	cmp	r8, #0	@ tmp8631,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8638, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8632, tmp8631
	ldrb	ip, [r4, #2337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8632,
	addgt	sl, sl, #1	@,, MisCnt.7337, MisCnt.7329
	cmp	r2, #0	@ tmp8638,
	ldrb	lr, [r4, #2338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8645, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8639, tmp8638
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8639,
	addgt	sl, sl, #1	@,, MisCnt.7345, MisCnt.7337
	cmp	ip, #0	@ tmp8645,
	ldrb	r0, [r4, #2339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8646, tmp8645
	rsb	r8, r1, lr	@ tmp8652, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8646,
	addgt	sl, sl, #1	@,, MisCnt.7353, MisCnt.7345
	cmp	r8, #0	@ tmp8652,
	rsb	ip, r2, r0	@ tmp8659, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8653, tmp8652
	cmp	r8, #2	@ tmp8653,
	addgt	sl, sl, #1	@,, MisCnt.7361, MisCnt.7353
	cmp	ip, #0	@ tmp8659,
	rsblt	ip, ip, #0	@ tmp8660, tmp8659
	cmp	ip, #2	@ tmp8660,
	addgt	sl, sl, #1	@,, tmp8663, MisCnt.7361
	cmp	sl, #2	@ tmp8663,
	bgt	.L47	@,
	ldr	r2, [r4, #2340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	sl, [r4, #2344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2348]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #2353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp8681, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8681,
	ldrb	sl, [r4, #2354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8674, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8682, tmp8681
	cmp	lr, #0	@ tmp8674,
	rsb	r0, r2, sl	@ tmp8688, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8675, tmp8674
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8682,
	movle	r3, #0	@, tmp8684
	movgt	r3, #1	@, tmp8684
	ldrb	r8, [r4, #2355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8675,
	addgt	r3, r3, #1	@,, MisCnt.7387, tmp8684
	cmp	r0, #0	@ tmp8688,
	ldrb	r1, [r4, #2356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8695, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8689, tmp8688
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8689,
	addgt	r3, r3, #1	@,, MisCnt.7395, MisCnt.7387
	cmp	r8, #0	@ tmp8695,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp8702, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8696, tmp8695
	ldrb	ip, [r4, #2357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8696,
	addgt	r3, r3, #1	@,, MisCnt.7403, MisCnt.7395
	cmp	r2, #0	@ tmp8702,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp8709, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8703, tmp8702
	ldrb	lr, [r4, #2358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp8703,
	addgt	r3, r3, #1	@,, MisCnt.7411, MisCnt.7403
	cmp	ip, #0	@ tmp8709,
	ldrb	r0, [r4, #2359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp8716, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8710, tmp8709
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8710,
	addgt	r3, r3, #1	@,, MisCnt.7419, MisCnt.7411
	cmp	r1, #0	@ tmp8716,
	rsb	sl, r8, r0	@ tmp8723, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8717, tmp8716
	cmp	r1, #2	@ tmp8717,
	addgt	r3, r3, #1	@,, MisCnt.7427, MisCnt.7419
	cmp	sl, #0	@ tmp8723,
	rsblt	sl, sl, #0	@ tmp8724, tmp8723
	cmp	sl, #2	@ tmp8724,
	addgt	r3, r3, #1	@,, tmp8727, MisCnt.7427
	cmp	r3, #2	@ tmp8727,
	bgt	.L47	@,
	ldr	r2, [r4, #2360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r8, [r4, #2364]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2368]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #2373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp8745, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8745,
	ldrb	r8, [r4, #2374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8738, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8746, tmp8745
	cmp	lr, #0	@ tmp8738,
	rsb	r0, r2, r8	@ tmp8752, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8739, tmp8738
	ldrb	sl, [r4, #2375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8746,
	movle	r3, #0	@, tmp8748
	movgt	r3, #1	@, tmp8748
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp8739,
	addgt	r3, r3, #1	@,, MisCnt.7453, tmp8748
	cmp	r0, #0	@ tmp8752,
	ldrb	r1, [r4, #2376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp8759, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8753, tmp8752
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8753,
	addgt	r3, r3, #1	@,, MisCnt.7461, MisCnt.7453
	cmp	r8, #0	@ tmp8759,
	ldrb	sl, [r4, #2377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp8766, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8760, tmp8759
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp8760,
	addgt	r3, r3, #1	@,, MisCnt.7469, MisCnt.7461
	cmp	r2, #0	@ tmp8766,
	ldrb	lr, [r4, #2378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp8773, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8767, tmp8766
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8767,
	addgt	r3, r3, #1	@,, MisCnt.7477, MisCnt.7469
	cmp	ip, #0	@ tmp8773,
	ldrb	r0, [r4, #2379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8780, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8774, tmp8773
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8774,
	addgt	r3, r3, #1	@,, MisCnt.7485, MisCnt.7477
	cmp	r1, #0	@ tmp8780,
	rsb	r8, sl, r0	@ tmp8787, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8781, tmp8780
	cmp	r1, #2	@ tmp8781,
	addgt	r3, r3, #1	@,, MisCnt.7493, MisCnt.7485
	cmp	r8, #0	@ tmp8787,
	rsblt	r8, r8, #0	@ tmp8788, tmp8787
	cmp	r8, #2	@ tmp8788,
	addgt	r3, r3, #1	@,, tmp8791, MisCnt.7493
	cmp	r3, #2	@ tmp8791,
	bgt	.L47	@,
	ldr	r3, [r4, #2380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r2, [r4, #2384]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r4, #2393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #2392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp8809, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8809,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp8802, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #2394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8810, tmp8809
	cmp	r8, #0	@ tmp8802,
	rsb	r0, r2, r0	@ tmp8816, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8803, tmp8802
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8810,
	movle	r3, #0	@, tmp8812
	movgt	r3, #1	@, tmp8812
	ldrb	sl, [r4, #2395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8803,
	addgt	r3, r3, #1	@,, MisCnt.2284, tmp8812
	cmp	r0, #0	@ tmp8816,
	ldrb	r1, [r4, #2396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8823, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8817, tmp8816
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8817,
	addgt	r3, r3, #1	@,, MisCnt.2293, MisCnt.2284
	cmp	sl, #0	@ tmp8823,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8830, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8824, tmp8823
	ldrb	ip, [r4, #2397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8824,
	addgt	r3, r3, #1	@,, MisCnt.2301, MisCnt.2293
	cmp	r2, #0	@ tmp8830,
	ldrb	r8, [r4, #2398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8837, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8831, tmp8830
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8831,
	addgt	r3, r3, #1	@,, MisCnt.2309, MisCnt.2301
	cmp	ip, #0	@ tmp8837,
	ldrb	r0, [r4, #2399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8838, tmp8837
	rsb	r1, r1, r8	@ tmp8844, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8838,
	addgt	r3, r3, #1	@,, MisCnt.2317, MisCnt.2309
	cmp	r1, #0	@ tmp8844,
	rsb	ip, r2, r0	@ tmp8851, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8845, tmp8844
	cmp	r1, #2	@ tmp8845,
	addgt	r3, r3, #1	@,, MisCnt.2325, MisCnt.2317
	cmp	ip, #0	@ tmp8851,
	rsblt	ip, ip, #0	@ tmp8852, tmp8851
	cmp	ip, #2	@ tmp8852,
	addgt	r3, r3, #1	@,, tmp8855, MisCnt.2325
	cmp	r3, #2	@ tmp8855,
	movle	r0, #24	@ Result,
	ble	.L13	@,
.L47:
	ldr	ip, [r4, #2400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r2, [r4, #2404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2408]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp8856,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp8856,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r4, #2413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #2412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r1, r3, r8	@ tmp8873, SmpPat.Pix, <variable>.Pix
	cmp	r1, #0	@ tmp8873,
	ldrb	r2, [r4, #2414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r0, sl	@ tmp8866, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r1, r1, #0	@ tmp8874, tmp8873
	cmp	r8, #0	@ tmp8866,
	rsb	r3, ip, r2	@ tmp8880, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8867, tmp8866
	ldrb	r0, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8874,
	movle	r1, #0	@, tmp8876
	movgt	r1, #1	@, tmp8876
	ldrb	sl, [r4, #2415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8867,
	addgt	r1, r1, #1	@,, MisCnt.7519, tmp8876
	cmp	r3, #0	@ tmp8880,
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r0, sl	@ tmp8887, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8881, tmp8880
	ldrb	ip, [r4, #2416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8881,
	movle	r3, r1	@, MisCnt.7527, MisCnt.7519
	addgt	r3, r1, #1	@,, MisCnt.7527, MisCnt.7519
	cmp	sl, #0	@ tmp8887,
	ldrb	r0, [r4, #2417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp8894, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8888, tmp8887
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp8888,
	addgt	r3, r3, #1	@,, MisCnt.7535, MisCnt.7527
	cmp	ip, #0	@ tmp8894,
	ldrb	r8, [r4, #2418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp8901, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8895, tmp8894
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8895,
	movle	ip, r3	@, MisCnt.7543, MisCnt.7535
	addgt	ip, r3, #1	@,, MisCnt.7543, MisCnt.7535
	cmp	r1, #0	@ tmp8901,
	ldrb	r0, [r4, #2419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r8	@ tmp8908, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8902, tmp8901
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8902,
	movle	r1, ip	@, MisCnt.7551, MisCnt.7543
	addgt	r1, ip, #1	@,, MisCnt.7551, MisCnt.7543
	cmp	r2, #0	@ tmp8908,
	rsb	ip, r3, r0	@ tmp8915, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8909, tmp8908
	cmp	r2, #2	@ tmp8909,
	movle	r2, r1	@, MisCnt.7559, MisCnt.7551
	addgt	r2, r1, #1	@,, MisCnt.7559, MisCnt.7551
	cmp	ip, #0	@ tmp8915,
	rsblt	ip, ip, #0	@ tmp8916, tmp8915
	cmp	ip, #2	@ tmp8916,
	movle	r0, r2	@, tmp8919, MisCnt.7559
	addgt	r0, r2, #1	@,, tmp8919, MisCnt.7559
	cmp	r0, #2	@ tmp8919,
	bgt	.L46	@,
	ldr	ip, [r6, #2420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r2, [r6, #2424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2428]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r6, #2433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r4, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r4, r1	@ tmp8937, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp8937,
	ldrb	ip, [r6, #2434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r4, r3, r0	@ tmp8930, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp8938, tmp8937
	cmp	r4, #0	@ tmp8930,
	rsblt	r4, r4, #0	@ tmp8931, tmp8930
	ldrb	r0, [r6, #2435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8938,
	movle	r1, #0	@, tmp8940
	movgt	r1, #1	@, tmp8940
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, ip	@ tmp8944, SmpPat.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp8931,
	addgt	r1, r1, #1	@,, MisCnt.7585, tmp8940
	cmp	r8, #0	@ tmp8944,
	rsb	r3, r3, r0	@ tmp8951, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp8945, tmp8944
	ldrb	ip, [r6, #2436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8945,
	movle	r8, r1	@, MisCnt.7593, MisCnt.7585
	addgt	r8, r1, #1	@,, MisCnt.7593, MisCnt.7585
	cmp	r3, #0	@ tmp8951,
	ldrb	r0, [r6, #2437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp8958, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8952, tmp8951
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8952,
	movle	r3, r8	@, MisCnt.7601, MisCnt.7593
	addgt	r3, r8, #1	@,, MisCnt.7601, MisCnt.7593
	cmp	ip, #0	@ tmp8958,
	ldrb	r4, [r6, #2438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp8965, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8959, tmp8958
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8959,
	movle	ip, r3	@, MisCnt.7609, MisCnt.7601
	addgt	ip, r3, #1	@,, MisCnt.7609, MisCnt.7601
	cmp	r1, #0	@ tmp8965,
	ldrb	r0, [r6, #2439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r4	@ tmp8972, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8966, tmp8965
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8966,
	movle	r1, ip	@, MisCnt.7617, MisCnt.7609
	addgt	r1, ip, #1	@,, MisCnt.7617, MisCnt.7609
	cmp	r2, #0	@ tmp8972,
	rsb	r3, r3, r0	@ tmp8979, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8973, tmp8972
	cmp	r2, #2	@ tmp8973,
	movle	r0, r1	@, MisCnt.7625, MisCnt.7617
	addgt	r0, r1, #1	@,, MisCnt.7625, MisCnt.7617
	cmp	r3, #0	@ tmp8979,
	rsblt	r3, r3, #0	@ tmp8980, tmp8979
	cmp	r3, #2	@ tmp8980,
	movle	r1, r0	@, tmp8983, MisCnt.7625
	addgt	r1, r0, #1	@,, tmp8983, MisCnt.7625
	cmp	r1, #2	@ tmp8983,
	bgt	.L46	@,
	ldr	r3, [r6, #2440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r2, [r6, #2444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp9001, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9001,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp8994, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9002, tmp9001
	cmp	r4, #0	@ tmp8994,
	rsb	r0, r2, r0	@ tmp9008, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp8995, tmp8994
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9002,
	movle	r3, #0	@, tmp9004
	movgt	r3, #1	@, tmp9004
	ldrb	r8, [r6, #2455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp8995,
	addgt	r3, r3, #1	@,, MisCnt.7651, tmp9004
	cmp	r0, #0	@ tmp9008,
	ldrb	r1, [r6, #2456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9015, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9009, tmp9008
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9009,
	addgt	r3, r3, #1	@,, MisCnt.7659, MisCnt.7651
	cmp	r8, #0	@ tmp9015,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9022, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9016, tmp9015
	ldrb	ip, [r6, #2457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9016,
	addgt	r3, r3, #1	@,, MisCnt.7667, MisCnt.7659
	cmp	r2, #0	@ tmp9022,
	ldrb	r4, [r6, #2458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9029, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9023, tmp9022
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9023,
	addgt	r3, r3, #1	@,, MisCnt.7675, MisCnt.7667
	cmp	ip, #0	@ tmp9029,
	ldrb	r0, [r6, #2459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r4	@ tmp9036, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9030, tmp9029
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9030,
	addgt	r3, r3, #1	@,, MisCnt.7683, MisCnt.7675
	cmp	r1, #0	@ tmp9036,
	rsb	r2, r2, r0	@ tmp9043, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9037, tmp9036
	cmp	r1, #2	@ tmp9037,
	addgt	r3, r3, #1	@,, MisCnt.7691, MisCnt.7683
	cmp	r2, #0	@ tmp9043,
	rsblt	r2, r2, #0	@ tmp9044, tmp9043
	cmp	r2, #2	@ tmp9044,
	addgt	r3, r3, #1	@,, tmp9047, MisCnt.7691
	cmp	r3, #2	@ tmp9047,
	bgt	.L46	@,
	ldr	r3, [r6, #2460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r2, [r6, #2464]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp9065, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9065,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp9058, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9066, tmp9065
	cmp	r4, #0	@ tmp9058,
	rsb	r0, r2, r0	@ tmp9072, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp9059, tmp9058
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9066,
	movle	r3, #0	@, tmp9068
	movgt	r3, #1	@, tmp9068
	ldrb	r8, [r6, #2475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp9059,
	addgt	r3, r3, #1	@,, MisCnt.7717, tmp9068
	cmp	r0, #0	@ tmp9072,
	ldrb	r1, [r6, #2476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9079, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9073, tmp9072
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9073,
	addgt	r3, r3, #1	@,, MisCnt.7725, MisCnt.7717
	cmp	r8, #0	@ tmp9079,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9086, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9080, tmp9079
	ldrb	ip, [r6, #2477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9080,
	addgt	r3, r3, #1	@,, MisCnt.7733, MisCnt.7725
	cmp	r2, #0	@ tmp9086,
	ldrb	r4, [r6, #2478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9093, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9087, tmp9086
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9087,
	addgt	r3, r3, #1	@,, MisCnt.7741, MisCnt.7733
	cmp	ip, #0	@ tmp9093,
	ldrb	r0, [r6, #2479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9094, tmp9093
	rsb	r1, r1, r4	@ tmp9100, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9094,
	addgt	r3, r3, #1	@,, MisCnt.7749, MisCnt.7741
	cmp	r1, #0	@ tmp9100,
	rsb	ip, r2, r0	@ tmp9107, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9101, tmp9100
	cmp	r1, #2	@ tmp9101,
	addgt	r3, r3, #1	@,, MisCnt.7757, MisCnt.7749
	cmp	ip, #0	@ tmp9107,
	rsblt	ip, ip, #0	@ tmp9108, tmp9107
	cmp	ip, #2	@ tmp9108,
	addgt	r3, r3, #1	@,, tmp9111, MisCnt.7757
	cmp	r3, #2	@ tmp9111,
	bgt	.L46	@,
	ldr	r3, [r6, #2480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12191
	ldr	r2, [r6, #2484]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp9129, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9129,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp9122, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9130, tmp9129
	cmp	r4, #0	@ tmp9122,
	rsb	r0, r2, r0	@ tmp9136, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp9123, tmp9122
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9130,
	movle	r3, #0	@, tmp9132
	movgt	r3, #1	@, tmp9132
	ldrb	r8, [r6, #2495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp9123,
	addgt	r3, r3, #1	@,, MisCnt.7783, tmp9132
	cmp	r0, #0	@ tmp9136,
	ldrb	r1, [r6, #2496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9143, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9137, tmp9136
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9137,
	addgt	r3, r3, #1	@,, MisCnt.7791, MisCnt.7783
	cmp	r8, #0	@ tmp9143,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9150, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9144, tmp9143
	ldrb	ip, [r6, #2497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9144,
	addgt	r3, r3, #1	@,, MisCnt.7799, MisCnt.7791
	cmp	r2, #0	@ tmp9150,
	ldrb	r4, [r6, #2498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9157, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9151, tmp9150
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9151,
	addgt	r3, r3, #1	@,, MisCnt.7807, MisCnt.7799
	cmp	ip, #0	@ tmp9157,
	ldrb	r0, [r6, #2499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9158, tmp9157
	rsb	r1, r1, r4	@ tmp9164, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9158,
	addgt	r3, r3, #1	@,, MisCnt.7815, MisCnt.7807
	cmp	r1, #0	@ tmp9164,
	rsb	ip, r2, r0	@ tmp9171, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9165, tmp9164
	cmp	r1, #2	@ tmp9165,
	addgt	r3, r3, #1	@,, MisCnt.7823, MisCnt.7815
	cmp	ip, #0	@ tmp9171,
	rsblt	ip, ip, #0	@ tmp9172, tmp9171
	cmp	ip, #2	@ tmp9172,
	addgt	r3, r3, #1	@,, tmp9175, MisCnt.7823
	cmp	r3, #2	@ tmp9175,
	bgt	.L46	@,
	ldr	r3, [r6, #2500]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r6, #2504]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12191
	ldr	lr, [r6, #2508]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #2512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp9193, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9193,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp9186, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9194, tmp9193
	cmp	r4, #0	@ tmp9186,
	rsb	r0, r2, r0	@ tmp9200, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp9187, tmp9186
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9194,
	movle	r3, #0	@, tmp9196
	movgt	r3, #1	@, tmp9196
	ldrb	r5, [r6, #2515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp9187,
	addgt	r3, r3, #1	@,, MisCnt.2345, tmp9196
	cmp	r0, #0	@ tmp9200,
	ldrb	r1, [r6, #2516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp9207, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9201, tmp9200
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9201,
	addgt	r3, r3, #1	@,, MisCnt.2356, MisCnt.2345
	cmp	r5, #0	@ tmp9207,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9214, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp9208, tmp9207
	ldrb	ip, [r6, #2517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp9208,
	addgt	r3, r3, #1	@,, MisCnt.2367, MisCnt.2356
	cmp	r2, #0	@ tmp9214,
	ldrb	r4, [r6, #2518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9221, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9215, tmp9214
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9215,
	addgt	r3, r3, #1	@,, MisCnt.2375, MisCnt.2367
	cmp	ip, #0	@ tmp9221,
	ldrb	r0, [r6, #2519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9222, tmp9221
	rsb	r1, r1, r4	@ tmp9228, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9222,
	addgt	r3, r3, #1	@,, MisCnt.2384, MisCnt.2375
	cmp	r1, #0	@ tmp9228,
	rsb	ip, r2, r0	@ tmp9235, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9229, tmp9228
	cmp	r1, #2	@ tmp9229,
	addgt	r3, r3, #1	@,, MisCnt.2395, MisCnt.2384
	cmp	ip, #0	@ tmp9235,
	rsblt	ip, ip, #0	@ tmp9236, tmp9235
	cmp	ip, #2	@ tmp9236,
	addgt	r3, r3, #1	@,, tmp9239, MisCnt.2395
	cmp	r3, #2	@ tmp9239,
	bgt	.L46	@,
	mov	r0, #10	@ Result,
	b	.L13	@
.L66:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ Result, pDetPara
	b	.L13	@
.L69:
	cmp	r3, #720	@ prephitmp.801,
	beq	.L72	@,
	cmp	r3, #704	@ prephitmp.801,
	bne	.L49	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp12192,
	movt	r4, #:upper16:.LANCHOR0	@ tmp12192,
	add	r7, sp, #12	@ tmp12193,,
	mov	r1, r5	@, pDetPara
	ldr	r3, [r4, #2520]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r4, #2524]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12193
	ldr	lr, [r4, #2528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #2532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #2533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp9257, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9257,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp9250, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #2534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9258, tmp9257
	cmp	lr, #0	@ tmp9250,
	rsb	r0, r2, r0	@ tmp9264, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9251, tmp9250
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9258,
	movle	r8, #0	@, tmp9260
	movgt	r8, #1	@, tmp9260
	ldrb	r6, [r4, #2535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9251,
	addgt	r8, r8, #1	@,, MisCnt.2215, tmp9260
	cmp	r0, #0	@ tmp9264,
	ldrb	r1, [r4, #2536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp9271, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9265, tmp9264
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9265,
	addgt	r8, r8, #1	@,, MisCnt.2167, MisCnt.2215
	cmp	r6, #0	@ tmp9271,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9278, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9272, tmp9271
	ldrb	ip, [r4, #2537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9272,
	addgt	r8, r8, #1	@,, MisCnt.2135, MisCnt.2167
	cmp	r2, #0	@ tmp9278,
	ldrb	lr, [r4, #2538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9285, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9279, tmp9278
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9279,
	addgt	r8, r8, #1	@,, MisCnt.1545, MisCnt.2135
	cmp	ip, #0	@ tmp9285,
	ldrb	r0, [r4, #2539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9292, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9286, tmp9285
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9286,
	addgt	r8, r8, #1	@,, MisCnt.1495, MisCnt.1545
	cmp	r1, #0	@ tmp9292,
	rsb	r6, r2, r0	@ tmp9299, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9293, tmp9292
	cmp	r1, #2	@ tmp9293,
	addgt	r8, r8, #1	@,, MisCnt.1463, MisCnt.1495
	cmp	r6, #0	@ tmp9299,
	rsblt	r6, r6, #0	@ tmp9300, tmp9299
	cmp	r6, #2	@ tmp9300,
	addgt	r8, r8, #1	@,, tmp9303, MisCnt.1463
	cmp	r8, #2	@ tmp9303,
	bgt	.L50	@,
	ldr	r3, [r4, #2540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r4, #2544]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #2552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #2553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp9321, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9321,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp9314, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #2554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9322, tmp9321
	cmp	lr, #0	@ tmp9314,
	rsb	r0, r2, r0	@ tmp9328, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9315, tmp9314
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9322,
	movle	r8, #0	@, tmp9324
	movgt	r8, #1	@, tmp9324
	ldrb	r6, [r4, #2555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9315,
	addgt	r8, r8, #1	@,, MisCnt.1273, tmp9324
	cmp	r0, #0	@ tmp9328,
	ldrb	r1, [r4, #2556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp9335, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9329, tmp9328
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9329,
	addgt	r8, r8, #1	@,, MisCnt.1241, MisCnt.1273
	cmp	r6, #0	@ tmp9335,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9342, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9336, tmp9335
	ldrb	ip, [r4, #2557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9336,
	addgt	r8, r8, #1	@,, MisCnt.1192, MisCnt.1241
	cmp	r2, #0	@ tmp9342,
	ldrb	lr, [r4, #2558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9349, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9343, tmp9342
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9343,
	addgt	r8, r8, #1	@,, MisCnt.1151, MisCnt.1192
	cmp	ip, #0	@ tmp9349,
	ldrb	r0, [r4, #2559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9356, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9350, tmp9349
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9350,
	addgt	r8, r8, #1	@,, MisCnt.1119, MisCnt.1151
	cmp	r1, #0	@ tmp9356,
	rsb	r6, r2, r0	@ tmp9363, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9357, tmp9356
	cmp	r1, #2	@ tmp9357,
	addgt	r8, r8, #1	@,, MisCnt.2376, MisCnt.1119
	cmp	r6, #0	@ tmp9363,
	rsblt	r6, r6, #0	@ tmp9364, tmp9363
	cmp	r6, #2	@ tmp9364,
	addgt	r8, r8, #1	@,, tmp9367, MisCnt.2376
	cmp	r8, #2	@ tmp9367,
	bgt	.L50	@,
	ldr	r3, [r4, #2560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r4, #2564]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r4, #2573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #2572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp9385, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9385,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, r8	@ tmp9378, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #2574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9386, tmp9385
	cmp	r6, #0	@ tmp9378,
	rsb	r0, r2, r0	@ tmp9392, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9379, tmp9378
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9386,
	movle	r3, #0	@, tmp9388
	movgt	r3, #1	@, tmp9388
	ldrb	r8, [r4, #2575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9379,
	addgt	r3, r3, #1	@,, MisCnt.1109, tmp9388
	cmp	r0, #0	@ tmp9392,
	ldrb	r1, [r4, #2576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9399, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9393, tmp9392
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9393,
	addgt	r3, r3, #1	@,, MisCnt.1118, MisCnt.1109
	cmp	r8, #0	@ tmp9399,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9406, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9400, tmp9399
	ldrb	ip, [r4, #2577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9400,
	addgt	r3, r3, #1	@,, MisCnt.1129, MisCnt.1118
	cmp	r2, #0	@ tmp9406,
	ldrb	r6, [r4, #2578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9413, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9407, tmp9406
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9407,
	addgt	r3, r3, #1	@,, MisCnt.1140, MisCnt.1129
	cmp	ip, #0	@ tmp9413,
	ldrb	r0, [r4, #2579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9414, tmp9413
	rsb	r1, r1, r6	@ tmp9420, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9414,
	addgt	r3, r3, #1	@,, MisCnt.1150, MisCnt.1140
	cmp	r1, #0	@ tmp9420,
	rsb	ip, r2, r0	@ tmp9427, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9421, tmp9420
	cmp	r1, #2	@ tmp9421,
	addgt	r3, r3, #1	@,, MisCnt.1160, MisCnt.1150
	cmp	ip, #0	@ tmp9427,
	rsblt	ip, ip, #0	@ tmp9428, tmp9427
	cmp	ip, #2	@ tmp9428,
	addgt	r3, r3, #1	@,, tmp9431, MisCnt.1160
	cmp	r3, #2	@ tmp9431,
	movle	r0, #23	@ Result,
	ble	.L13	@,
.L50:
	ldr	ip, [r4, #2620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r4, #2624]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2628]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp9432,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp9432,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #2632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp9449, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp9449,
	ldrb	sl, [r4, #2634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp9442, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp9450, tmp9449
	cmp	lr, #0	@ tmp9442,
	rsblt	lr, lr, #0	@ tmp9443, tmp9442
	ldrb	r0, [r4, #2635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9450,
	movle	r1, #0	@, tmp9452
	movgt	r1, #1	@, tmp9452
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp9456, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9443,
	addgt	r1, r1, #1	@,, MisCnt.1981, tmp9452
	cmp	r8, #0	@ tmp9456,
	rsb	sl, r3, r0	@ tmp9463, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp9457, tmp9456
	ldrb	ip, [r4, #2636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9457,
	movle	r8, r1	@, MisCnt.1941, MisCnt.1981
	addgt	r8, r1, #1	@,, MisCnt.1941, MisCnt.1981
	cmp	sl, #0	@ tmp9463,
	ldrb	r0, [r4, #2637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp9470, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9464, tmp9463
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9464,
	movle	r3, r8	@, MisCnt.1899, MisCnt.1941
	addgt	r3, r8, #1	@,, MisCnt.1899, MisCnt.1941
	cmp	ip, #0	@ tmp9470,
	ldrb	lr, [r4, #2638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r1, r0	@ tmp9477, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9471, tmp9470
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9471,
	movle	ip, r3	@, MisCnt.1867, MisCnt.1899
	addgt	ip, r3, #1	@,, MisCnt.1867, MisCnt.1899
	cmp	r8, #0	@ tmp9477,
	ldrb	sl, [r4, #2639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9478, tmp9477
	rsb	r2, r2, lr	@ tmp9484, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp9478,
	movle	r1, ip	@, MisCnt.1819, MisCnt.1867
	addgt	r1, ip, #1	@,, MisCnt.1819, MisCnt.1867
	cmp	r2, #0	@ tmp9484,
	rsb	r8, r3, sl	@ tmp9491, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9485, tmp9484
	cmp	r2, #2	@ tmp9485,
	movle	r0, r1	@, MisCnt.1787, MisCnt.1819
	addgt	r0, r1, #1	@,, MisCnt.1787, MisCnt.1819
	cmp	r8, #0	@ tmp9491,
	rsblt	r8, r8, #0	@ tmp9492, tmp9491
	cmp	r8, #2	@ tmp9492,
	movle	sl, r0	@, tmp9495, MisCnt.1787
	addgt	sl, r0, #1	@,, tmp9495, MisCnt.1787
	cmp	sl, #2	@ tmp9495,
	bgt	.L51	@,
	ldr	r2, [r6, #2640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r6, #2644]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2648]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9513, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9513,
	ldrb	sl, [r6, #2654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9506, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9514, tmp9513
	cmp	lr, #0	@ tmp9506,
	rsb	r0, r2, sl	@ tmp9520, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9507, tmp9506
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9514,
	movle	r3, #0	@, tmp9516
	movgt	r3, #1	@, tmp9516
	ldrb	r8, [r6, #2655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9507,
	addgt	r3, r3, #1	@,, MisCnt.1596, tmp9516
	cmp	r0, #0	@ tmp9520,
	ldrb	r1, [r6, #2656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9527, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9521, tmp9520
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9521,
	addgt	r3, r3, #1	@,, MisCnt.3464, MisCnt.1596
	cmp	r8, #0	@ tmp9527,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp9534, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9528, tmp9527
	ldrb	ip, [r6, #2657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9528,
	addgt	r3, r3, #1	@,, MisCnt.3424, MisCnt.3464
	cmp	r2, #0	@ tmp9534,
	ldrb	lr, [r6, #2658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp9541, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9535, tmp9534
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9535,
	addgt	r3, r3, #1	@,, MisCnt.3382, MisCnt.3424
	cmp	sl, #0	@ tmp9541,
	ldrb	r0, [r6, #2659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9548, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9542, tmp9541
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9542,
	addgt	r3, r3, #1	@,, MisCnt.3350, MisCnt.3382
	cmp	r1, #0	@ tmp9548,
	rsb	r8, r2, r0	@ tmp9555, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9549, tmp9548
	cmp	r1, #2	@ tmp9549,
	addgt	r3, r3, #1	@,, MisCnt.3300, MisCnt.3350
	cmp	r8, #0	@ tmp9555,
	rsblt	r8, r8, #0	@ tmp9556, tmp9555
	cmp	r8, #2	@ tmp9556,
	addgt	r3, r3, #1	@,, tmp9559, MisCnt.3300
	cmp	r3, #2	@ tmp9559,
	bgt	.L51	@,
	ldr	r3, [r6, #2660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #2664]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2668]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp9577, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9577,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp9570, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9578, tmp9577
	cmp	r8, #0	@ tmp9570,
	rsb	r0, r2, r0	@ tmp9584, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9571, tmp9570
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9578,
	movle	r3, #0	@, tmp9580
	movgt	r3, #1	@, tmp9580
	ldrb	sl, [r6, #2675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9571,
	addgt	r3, r3, #1	@,, MisCnt.1180, tmp9580
	cmp	r0, #0	@ tmp9584,
	ldrb	r1, [r6, #2676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9591, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9585, tmp9584
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9585,
	addgt	r3, r3, #1	@,, MisCnt.1191, MisCnt.1180
	cmp	sl, #0	@ tmp9591,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9598, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9592, tmp9591
	ldrb	ip, [r6, #2677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9592,
	addgt	r3, r3, #1	@,, MisCnt.1200, MisCnt.1191
	cmp	r2, #0	@ tmp9598,
	ldrb	r8, [r6, #2678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9605, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9599, tmp9598
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9599,
	addgt	r3, r3, #1	@,, MisCnt.1211, MisCnt.1200
	cmp	ip, #0	@ tmp9605,
	ldrb	r0, [r6, #2679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9606, tmp9605
	rsb	r1, r1, r8	@ tmp9612, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9606,
	addgt	r3, r3, #1	@,, MisCnt.1222, MisCnt.1211
	cmp	r1, #0	@ tmp9612,
	rsb	ip, r2, r0	@ tmp9619, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9613, tmp9612
	cmp	r1, #2	@ tmp9613,
	addgt	r3, r3, #1	@,, MisCnt.1231, MisCnt.1222
	cmp	ip, #0	@ tmp9619,
	rsblt	ip, ip, #0	@ tmp9620, tmp9619
	cmp	ip, #2	@ tmp9620,
	addgt	r3, r3, #1	@,, tmp9623, MisCnt.1231
	cmp	r3, #2	@ tmp9623,
	movle	r0, #4	@ Result,
	ble	.L13	@,
.L51:
	ldr	ip, [r4, #2680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r4, #2684]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2688]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp9624,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp9624,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #2692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp9641, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp9641,
	ldrb	sl, [r4, #2694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp9634, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp9642, tmp9641
	cmp	lr, #0	@ tmp9634,
	rsblt	lr, lr, #0	@ tmp9635, tmp9634
	ldrb	r0, [r4, #2695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9642,
	movle	r1, #0	@, tmp9644
	movgt	r1, #1	@, tmp9644
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp9648, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9635,
	addgt	r1, r1, #1	@,, MisCnt.3113, tmp9644
	cmp	r8, #0	@ tmp9648,
	rsb	sl, r3, r0	@ tmp9655, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp9649, tmp9648
	ldrb	ip, [r4, #2696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9649,
	movle	r8, r1	@, MisCnt.3063, MisCnt.3113
	addgt	r8, r1, #1	@,, MisCnt.3063, MisCnt.3113
	cmp	sl, #0	@ tmp9655,
	ldrb	r0, [r4, #2697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp9662, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9656, tmp9655
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9656,
	movle	r3, r8	@, MisCnt.3031, MisCnt.3063
	addgt	r3, r8, #1	@,, MisCnt.3031, MisCnt.3063
	cmp	ip, #0	@ tmp9662,
	ldrb	lr, [r4, #2698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp9669, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9663, tmp9662
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9663,
	movle	ip, r3	@, MisCnt.2991, MisCnt.3031
	addgt	ip, r3, #1	@,, MisCnt.2991, MisCnt.3031
	cmp	sl, #0	@ tmp9669,
	ldrb	r0, [r4, #2699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9670, tmp9669
	rsb	r8, r2, lr	@ tmp9676, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9670,
	movle	r1, ip	@, MisCnt.2951, MisCnt.2991
	addgt	r1, ip, #1	@,, MisCnt.2951, MisCnt.2991
	cmp	r8, #0	@ tmp9676,
	rsb	sl, r3, r0	@ tmp9683, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9677, tmp9676
	cmp	r8, #2	@ tmp9677,
	movle	ip, r1	@, MisCnt.2912, MisCnt.2951
	addgt	ip, r1, #1	@,, MisCnt.2912, MisCnt.2951
	cmp	sl, #0	@ tmp9683,
	rsblt	sl, sl, #0	@ tmp9684, tmp9683
	cmp	sl, #2	@ tmp9684,
	movle	r0, ip	@, tmp9687, MisCnt.2912
	addgt	r0, ip, #1	@,, tmp9687, MisCnt.2912
	cmp	r0, #2	@ tmp9687,
	bgt	.L52	@,
	ldr	r2, [r6, #2700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r6, #2704]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2708]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9705, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9705,
	ldrb	sl, [r6, #2714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9698, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9706, tmp9705
	cmp	lr, #0	@ tmp9698,
	rsb	r0, r2, sl	@ tmp9712, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9699, tmp9698
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9706,
	movle	r3, #0	@, tmp9708
	movgt	r3, #1	@, tmp9708
	ldrb	r8, [r6, #2715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9699,
	addgt	r3, r3, #1	@,, MisCnt.2728, tmp9708
	cmp	r0, #0	@ tmp9712,
	ldrb	r1, [r6, #2716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9719, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9713, tmp9712
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9713,
	addgt	r3, r3, #1	@,, MisCnt.2696, MisCnt.2728
	cmp	r8, #0	@ tmp9719,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp9726, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9720, tmp9719
	ldrb	ip, [r6, #2717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9720,
	addgt	r3, r3, #1	@,, MisCnt.2647, MisCnt.2696
	cmp	r2, #0	@ tmp9726,
	ldrb	lr, [r6, #2718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp9733, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9727, tmp9726
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9727,
	addgt	r3, r3, #1	@,, MisCnt.2615, MisCnt.2647
	cmp	sl, #0	@ tmp9733,
	ldrb	r0, [r6, #2719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9740, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9734, tmp9733
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9734,
	addgt	r3, r3, #1	@,, MisCnt.2576, MisCnt.2615
	cmp	r1, #0	@ tmp9740,
	rsb	r8, r2, r0	@ tmp9747, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9741, tmp9740
	cmp	r1, #2	@ tmp9741,
	addgt	r3, r3, #1	@,, MisCnt.2536, MisCnt.2576
	cmp	r8, #0	@ tmp9747,
	rsblt	r8, r8, #0	@ tmp9748, tmp9747
	cmp	r8, #2	@ tmp9748,
	addgt	r3, r3, #1	@,, tmp9751, MisCnt.2536
	cmp	r3, #2	@ tmp9751,
	bgt	.L52	@,
	ldr	r2, [r6, #2720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r8, [r6, #2724]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2728]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp9769, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9769,
	ldrb	r8, [r6, #2734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9762, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9770, tmp9769
	cmp	lr, #0	@ tmp9762,
	rsb	r0, r2, r8	@ tmp9776, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9763, tmp9762
	ldrb	sl, [r6, #2735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp9770,
	movle	r3, #0	@, tmp9772
	movgt	r3, #1	@, tmp9772
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp9763,
	addgt	r3, r3, #1	@,, MisCnt.1437, tmp9772
	cmp	r0, #0	@ tmp9776,
	ldrb	r1, [r6, #2736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp9783, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9777, tmp9776
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9777,
	addgt	r3, r3, #1	@,, MisCnt.1232, MisCnt.1437
	cmp	r8, #0	@ tmp9783,
	ldrb	sl, [r6, #2737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp9790, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9784, tmp9783
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp9784,
	addgt	r3, r3, #1	@,, MisCnt.2326, MisCnt.1232
	cmp	r2, #0	@ tmp9790,
	ldrb	lr, [r6, #2738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp9797, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9791, tmp9790
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9791,
	addgt	r3, r3, #1	@,, MisCnt.1850, MisCnt.2326
	cmp	ip, #0	@ tmp9797,
	ldrb	r0, [r6, #2739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9804, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9798, tmp9797
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9798,
	addgt	r3, r3, #1	@,, MisCnt.1647, MisCnt.1850
	cmp	r1, #0	@ tmp9804,
	rsb	r8, sl, r0	@ tmp9811, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9805, tmp9804
	cmp	r1, #2	@ tmp9805,
	addgt	r3, r3, #1	@,, MisCnt.3340, MisCnt.1647
	cmp	r8, #0	@ tmp9811,
	rsblt	r8, r8, #0	@ tmp9812, tmp9811
	cmp	r8, #2	@ tmp9812,
	addgt	r3, r3, #1	@,, tmp9815, MisCnt.3340
	cmp	r3, #2	@ tmp9815,
	bgt	.L52	@,
	ldr	r2, [r6, #2740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r6, #2744]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2748]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9833, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9833,
	ldrb	sl, [r6, #2754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9826, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9834, tmp9833
	cmp	lr, #0	@ tmp9826,
	rsb	r0, r2, sl	@ tmp9840, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9827, tmp9826
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9834,
	movle	r3, #0	@, tmp9836
	movgt	r3, #1	@, tmp9836
	ldrb	r8, [r6, #2755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9827,
	addgt	r3, r3, #1	@,, MisCnt.3493, tmp9836
	cmp	r0, #0	@ tmp9840,
	ldrb	r1, [r6, #2756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9847, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9841, tmp9840
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9841,
	addgt	r3, r3, #1	@,, MisCnt.3501, MisCnt.3493
	cmp	r8, #0	@ tmp9847,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp9854, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9848, tmp9847
	ldrb	ip, [r6, #2757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9848,
	addgt	r3, r3, #1	@,, MisCnt.3509, MisCnt.3501
	cmp	r2, #0	@ tmp9854,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp9861, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9855, tmp9854
	ldrb	lr, [r6, #2758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp9855,
	addgt	r3, r3, #1	@,, MisCnt.3517, MisCnt.3509
	cmp	ip, #0	@ tmp9861,
	ldrb	r0, [r6, #2759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp9868, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9862, tmp9861
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9862,
	addgt	r3, r3, #1	@,, MisCnt.3525, MisCnt.3517
	cmp	r1, #0	@ tmp9868,
	rsb	sl, r8, r0	@ tmp9875, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9869, tmp9868
	cmp	r1, #2	@ tmp9869,
	addgt	r3, r3, #1	@,, MisCnt.3533, MisCnt.3525
	cmp	sl, #0	@ tmp9875,
	rsblt	sl, sl, #0	@ tmp9876, tmp9875
	cmp	sl, #2	@ tmp9876,
	addgt	r3, r3, #1	@,, tmp9879, MisCnt.3533
	cmp	r3, #2	@ tmp9879,
	bgt	.L52	@,
	ldr	r3, [r6, #2760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #2764]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp9897, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9897,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp9890, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9898, tmp9897
	cmp	r8, #0	@ tmp9890,
	rsb	r0, r2, r0	@ tmp9904, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9891, tmp9890
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9898,
	movle	r3, #0	@, tmp9900
	movgt	r3, #1	@, tmp9900
	ldrb	sl, [r6, #2775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9891,
	addgt	r3, r3, #1	@,, MisCnt.1251, tmp9900
	cmp	r0, #0	@ tmp9904,
	ldrb	r1, [r6, #2776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9911, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9905, tmp9904
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9905,
	addgt	r3, r3, #1	@,, MisCnt.1262, MisCnt.1251
	cmp	sl, #0	@ tmp9911,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9918, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9912, tmp9911
	ldrb	ip, [r6, #2777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9912,
	addgt	r3, r3, #1	@,, MisCnt.1272, MisCnt.1262
	cmp	r2, #0	@ tmp9918,
	ldrb	r8, [r6, #2778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9925, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9919, tmp9918
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9919,
	addgt	r3, r3, #1	@,, MisCnt.1282, MisCnt.1272
	cmp	ip, #0	@ tmp9925,
	ldrb	r0, [r6, #2779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9926, tmp9925
	rsb	r1, r1, r8	@ tmp9932, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9926,
	addgt	r3, r3, #1	@,, MisCnt.1293, MisCnt.1282
	cmp	r1, #0	@ tmp9932,
	rsb	ip, r2, r0	@ tmp9939, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9933, tmp9932
	cmp	r1, #2	@ tmp9933,
	addgt	r3, r3, #1	@,, MisCnt.1304, MisCnt.1293
	cmp	ip, #0	@ tmp9939,
	rsblt	ip, ip, #0	@ tmp9940, tmp9939
	cmp	ip, #2	@ tmp9940,
	addgt	r3, r3, #1	@,, tmp9943, MisCnt.1304
	cmp	r3, #2	@ tmp9943,
	movle	r0, #31	@ Result,
	ble	.L13	@,
.L52:
	ldr	ip, [r4, #2780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r4, #2784]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2788]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp9944,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp9944,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #2793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp9961, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp9961,
	ldrb	sl, [r4, #2794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp9954, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp9962, tmp9961
	cmp	lr, #0	@ tmp9954,
	rsblt	lr, lr, #0	@ tmp9955, tmp9954
	ldrb	r0, [r4, #2795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9962,
	movle	r1, #0	@, tmp9964
	movgt	r1, #1	@, tmp9964
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp9968, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9955,
	addgt	r1, r1, #1	@,, MisCnt.3559, tmp9964
	cmp	r8, #0	@ tmp9968,
	rsb	sl, r3, r0	@ tmp9975, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp9969, tmp9968
	ldrb	ip, [r4, #2796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9969,
	movle	r8, r1	@, MisCnt.3567, MisCnt.3559
	addgt	r8, r1, #1	@,, MisCnt.3567, MisCnt.3559
	cmp	sl, #0	@ tmp9975,
	ldrb	r0, [r4, #2797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp9982, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9976, tmp9975
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9976,
	movle	r3, r8	@, MisCnt.3575, MisCnt.3567
	addgt	r3, r8, #1	@,, MisCnt.3575, MisCnt.3567
	cmp	ip, #0	@ tmp9982,
	ldrb	lr, [r4, #2798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp9989, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9983, tmp9982
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9983,
	movle	ip, r3	@, MisCnt.3583, MisCnt.3575
	addgt	ip, r3, #1	@,, MisCnt.3583, MisCnt.3575
	cmp	sl, #0	@ tmp9989,
	ldrb	r0, [r4, #2799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9990, tmp9989
	rsb	r8, r2, lr	@ tmp9996, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9990,
	movle	r1, ip	@, MisCnt.3591, MisCnt.3583
	addgt	r1, ip, #1	@,, MisCnt.3591, MisCnt.3583
	cmp	r8, #0	@ tmp9996,
	rsb	sl, r3, r0	@ tmp10003, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9997, tmp9996
	cmp	r8, #2	@ tmp9997,
	movle	ip, r1	@, MisCnt.3599, MisCnt.3591
	addgt	ip, r1, #1	@,, MisCnt.3599, MisCnt.3591
	cmp	sl, #0	@ tmp10003,
	rsblt	sl, sl, #0	@ tmp10004, tmp10003
	cmp	sl, #2	@ tmp10004,
	movle	r0, ip	@, tmp10007, MisCnt.3599
	addgt	r0, ip, #1	@,, tmp10007, MisCnt.3599
	cmp	r0, #2	@ tmp10007,
	bgt	.L53	@,
	ldr	r2, [r6, #2800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r6, #2804]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2808]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10025, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10025,
	ldrb	sl, [r6, #2814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10018, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10026, tmp10025
	cmp	lr, #0	@ tmp10018,
	rsb	r0, r2, sl	@ tmp10032, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10019, tmp10018
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10026,
	movle	r3, #0	@, tmp10028
	movgt	r3, #1	@, tmp10028
	ldrb	r8, [r6, #2815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10019,
	addgt	r3, r3, #1	@,, MisCnt.3625, tmp10028
	cmp	r0, #0	@ tmp10032,
	ldrb	r1, [r6, #2816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10039, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10033, tmp10032
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10033,
	addgt	r3, r3, #1	@,, MisCnt.3633, MisCnt.3625
	cmp	r8, #0	@ tmp10039,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp10046, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10040, tmp10039
	ldrb	ip, [r6, #2817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10040,
	addgt	r3, r3, #1	@,, MisCnt.3641, MisCnt.3633
	cmp	r2, #0	@ tmp10046,
	ldrb	lr, [r6, #2818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp10053, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10047, tmp10046
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10047,
	addgt	r3, r3, #1	@,, MisCnt.3649, MisCnt.3641
	cmp	sl, #0	@ tmp10053,
	ldrb	r0, [r6, #2819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10060, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10054, tmp10053
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp10054,
	addgt	r3, r3, #1	@,, MisCnt.3657, MisCnt.3649
	cmp	r1, #0	@ tmp10060,
	rsb	r8, r2, r0	@ tmp10067, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10061, tmp10060
	cmp	r1, #2	@ tmp10061,
	addgt	r3, r3, #1	@,, MisCnt.3665, MisCnt.3657
	cmp	r8, #0	@ tmp10067,
	rsblt	r8, r8, #0	@ tmp10068, tmp10067
	cmp	r8, #2	@ tmp10068,
	addgt	r3, r3, #1	@,, tmp10071, MisCnt.3665
	cmp	r3, #2	@ tmp10071,
	bgt	.L53	@,
	ldr	r2, [r6, #2820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r8, [r6, #2824]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2828]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10089, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10089,
	ldrb	r8, [r6, #2834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10082, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10090, tmp10089
	cmp	lr, #0	@ tmp10082,
	rsb	r0, r2, r8	@ tmp10096, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10083, tmp10082
	ldrb	sl, [r6, #2835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp10090,
	movle	r3, #0	@, tmp10092
	movgt	r3, #1	@, tmp10092
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp10083,
	addgt	r3, r3, #1	@,, MisCnt.3691, tmp10092
	cmp	r0, #0	@ tmp10096,
	ldrb	r1, [r6, #2836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp10103, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10097, tmp10096
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10097,
	addgt	r3, r3, #1	@,, MisCnt.3699, MisCnt.3691
	cmp	r8, #0	@ tmp10103,
	ldrb	sl, [r6, #2837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp10110, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10104, tmp10103
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp10104,
	addgt	r3, r3, #1	@,, MisCnt.3707, MisCnt.3699
	cmp	r2, #0	@ tmp10110,
	ldrb	lr, [r6, #2838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp10117, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10111, tmp10110
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10111,
	addgt	r3, r3, #1	@,, MisCnt.3715, MisCnt.3707
	cmp	ip, #0	@ tmp10117,
	ldrb	r0, [r6, #2839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10124, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10118, tmp10117
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10118,
	addgt	r3, r3, #1	@,, MisCnt.3723, MisCnt.3715
	cmp	r1, #0	@ tmp10124,
	rsb	r8, sl, r0	@ tmp10131, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10125, tmp10124
	cmp	r1, #2	@ tmp10125,
	addgt	r3, r3, #1	@,, MisCnt.3731, MisCnt.3723
	cmp	r8, #0	@ tmp10131,
	rsblt	r8, r8, #0	@ tmp10132, tmp10131
	cmp	r8, #2	@ tmp10132,
	addgt	r3, r3, #1	@,, tmp10135, MisCnt.3731
	cmp	r3, #2	@ tmp10135,
	bgt	.L53	@,
	ldr	r2, [r6, #2840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r6, #2844]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2848]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10153, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10153,
	ldrb	sl, [r6, #2854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10146, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10154, tmp10153
	cmp	lr, #0	@ tmp10146,
	rsb	r0, r2, sl	@ tmp10160, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10147, tmp10146
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10154,
	movle	r3, #0	@, tmp10156
	movgt	r3, #1	@, tmp10156
	ldrb	r8, [r6, #2855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10147,
	addgt	r3, r3, #1	@,, MisCnt.3757, tmp10156
	cmp	r0, #0	@ tmp10160,
	ldrb	r1, [r6, #2856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10167, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10161, tmp10160
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10161,
	addgt	r3, r3, #1	@,, MisCnt.3765, MisCnt.3757
	cmp	r8, #0	@ tmp10167,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp10174, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10168, tmp10167
	ldrb	ip, [r6, #2857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10168,
	addgt	r3, r3, #1	@,, MisCnt.3773, MisCnt.3765
	cmp	r2, #0	@ tmp10174,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp10181, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10175, tmp10174
	ldrb	lr, [r6, #2858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp10175,
	addgt	r3, r3, #1	@,, MisCnt.3781, MisCnt.3773
	cmp	ip, #0	@ tmp10181,
	ldrb	r0, [r6, #2859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp10188, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10182, tmp10181
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10182,
	addgt	r3, r3, #1	@,, MisCnt.3789, MisCnt.3781
	cmp	r1, #0	@ tmp10188,
	rsb	sl, r8, r0	@ tmp10195, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10189, tmp10188
	cmp	r1, #2	@ tmp10189,
	addgt	r3, r3, #1	@,, MisCnt.3797, MisCnt.3789
	cmp	sl, #0	@ tmp10195,
	rsblt	sl, sl, #0	@ tmp10196, tmp10195
	cmp	sl, #2	@ tmp10196,
	addgt	r3, r3, #1	@,, tmp10199, MisCnt.3797
	cmp	r3, #2	@ tmp10199,
	bgt	.L53	@,
	ldr	r3, [r6, #2860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #2864]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10217, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10217,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10210, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10218, tmp10217
	cmp	r8, #0	@ tmp10210,
	rsb	r0, r2, r0	@ tmp10224, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10211, tmp10210
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10218,
	movle	r3, #0	@, tmp10220
	movgt	r3, #1	@, tmp10220
	ldrb	sl, [r6, #2875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10211,
	addgt	r3, r3, #1	@,, MisCnt.1322, tmp10220
	cmp	r0, #0	@ tmp10224,
	ldrb	r1, [r6, #2876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10231, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10225, tmp10224
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10225,
	addgt	r3, r3, #1	@,, MisCnt.1333, MisCnt.1322
	cmp	sl, #0	@ tmp10231,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10238, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10232, tmp10231
	ldrb	ip, [r6, #2877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10232,
	addgt	r3, r3, #1	@,, MisCnt.1344, MisCnt.1333
	cmp	r2, #0	@ tmp10238,
	ldrb	r8, [r6, #2878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10245, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10239, tmp10238
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10239,
	addgt	r3, r3, #1	@,, MisCnt.1353, MisCnt.1344
	cmp	ip, #0	@ tmp10245,
	ldrb	r0, [r6, #2879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10246, tmp10245
	rsb	r1, r1, r8	@ tmp10252, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10246,
	addgt	r3, r3, #1	@,, MisCnt.1362, MisCnt.1353
	cmp	r1, #0	@ tmp10252,
	rsb	ip, r2, r0	@ tmp10259, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10253, tmp10252
	cmp	r1, #2	@ tmp10253,
	addgt	r3, r3, #1	@,, MisCnt.1372, MisCnt.1362
	cmp	ip, #0	@ tmp10259,
	rsblt	ip, ip, #0	@ tmp10260, tmp10259
	cmp	ip, #2	@ tmp10260,
	addgt	r3, r3, #1	@,, tmp10263, MisCnt.1372
	cmp	r3, #2	@ tmp10263,
	movle	r0, #32	@ Result,
	ble	.L13	@,
.L53:
	ldr	ip, [r4, #2880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r4, #2884]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2888]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp10264,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp10264,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #2893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp10281, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp10281,
	ldrb	sl, [r4, #2894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp10274, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp10282, tmp10281
	cmp	lr, #0	@ tmp10274,
	rsblt	lr, lr, #0	@ tmp10275, tmp10274
	ldrb	r0, [r4, #2895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10282,
	movle	r1, #0	@, tmp10284
	movgt	r1, #1	@, tmp10284
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp10288, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10275,
	addgt	r1, r1, #1	@,, MisCnt.3823, tmp10284
	cmp	r8, #0	@ tmp10288,
	rsb	sl, r3, r0	@ tmp10295, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp10289, tmp10288
	ldrb	ip, [r4, #2896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10289,
	movle	r8, r1	@, MisCnt.3831, MisCnt.3823
	addgt	r8, r1, #1	@,, MisCnt.3831, MisCnt.3823
	cmp	sl, #0	@ tmp10295,
	ldrb	r0, [r4, #2897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp10302, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10296, tmp10295
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp10296,
	movle	r3, r8	@, MisCnt.3839, MisCnt.3831
	addgt	r3, r8, #1	@,, MisCnt.3839, MisCnt.3831
	cmp	ip, #0	@ tmp10302,
	ldrb	lr, [r4, #2898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp10309, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10303, tmp10302
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10303,
	movle	ip, r3	@, MisCnt.3847, MisCnt.3839
	addgt	ip, r3, #1	@,, MisCnt.3847, MisCnt.3839
	cmp	sl, #0	@ tmp10309,
	ldrb	r0, [r4, #2899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10310, tmp10309
	rsb	r8, r2, lr	@ tmp10316, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp10310,
	movle	r1, ip	@, MisCnt.3855, MisCnt.3847
	addgt	r1, ip, #1	@,, MisCnt.3855, MisCnt.3847
	cmp	r8, #0	@ tmp10316,
	rsb	sl, r3, r0	@ tmp10323, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10317, tmp10316
	cmp	r8, #2	@ tmp10317,
	movle	ip, r1	@, MisCnt.3863, MisCnt.3855
	addgt	ip, r1, #1	@,, MisCnt.3863, MisCnt.3855
	cmp	sl, #0	@ tmp10323,
	rsblt	sl, sl, #0	@ tmp10324, tmp10323
	cmp	sl, #2	@ tmp10324,
	movle	r0, ip	@, tmp10327, MisCnt.3863
	addgt	r0, ip, #1	@,, tmp10327, MisCnt.3863
	cmp	r0, #2	@ tmp10327,
	bgt	.L54	@,
	ldr	r2, [r6, #2900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r6, #2904]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2908]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10345, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10345,
	ldrb	sl, [r6, #2914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10338, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10346, tmp10345
	cmp	lr, #0	@ tmp10338,
	rsb	r0, r2, sl	@ tmp10352, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10339, tmp10338
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10346,
	movle	r3, #0	@, tmp10348
	movgt	r3, #1	@, tmp10348
	ldrb	r8, [r6, #2915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10339,
	addgt	r3, r3, #1	@,, MisCnt.3889, tmp10348
	cmp	r0, #0	@ tmp10352,
	ldrb	r1, [r6, #2916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10359, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10353, tmp10352
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10353,
	addgt	r3, r3, #1	@,, MisCnt.3897, MisCnt.3889
	cmp	r8, #0	@ tmp10359,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp10366, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10360, tmp10359
	ldrb	ip, [r6, #2917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10360,
	addgt	r3, r3, #1	@,, MisCnt.3905, MisCnt.3897
	cmp	r2, #0	@ tmp10366,
	ldrb	lr, [r6, #2918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp10373, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10367, tmp10366
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10367,
	addgt	r3, r3, #1	@,, MisCnt.3913, MisCnt.3905
	cmp	sl, #0	@ tmp10373,
	ldrb	r0, [r6, #2919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10380, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10374, tmp10373
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp10374,
	addgt	r3, r3, #1	@,, MisCnt.3921, MisCnt.3913
	cmp	r1, #0	@ tmp10380,
	rsb	r8, r2, r0	@ tmp10387, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10381, tmp10380
	cmp	r1, #2	@ tmp10381,
	addgt	r3, r3, #1	@,, MisCnt.3929, MisCnt.3921
	cmp	r8, #0	@ tmp10387,
	rsblt	r8, r8, #0	@ tmp10388, tmp10387
	cmp	r8, #2	@ tmp10388,
	addgt	r3, r3, #1	@,, tmp10391, MisCnt.3929
	cmp	r3, #2	@ tmp10391,
	bgt	.L54	@,
	ldr	r2, [r6, #2920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r8, [r6, #2924]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2928]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10409, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10409,
	ldrb	r8, [r6, #2934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10402, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10410, tmp10409
	cmp	lr, #0	@ tmp10402,
	rsb	r0, r2, r8	@ tmp10416, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10403, tmp10402
	ldrb	sl, [r6, #2935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp10410,
	movle	r3, #0	@, tmp10412
	movgt	r3, #1	@, tmp10412
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp10403,
	addgt	r3, r3, #1	@,, MisCnt.3955, tmp10412
	cmp	r0, #0	@ tmp10416,
	ldrb	r1, [r6, #2936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp10423, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10417, tmp10416
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10417,
	addgt	r3, r3, #1	@,, MisCnt.3963, MisCnt.3955
	cmp	r8, #0	@ tmp10423,
	ldrb	sl, [r6, #2937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp10430, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10424, tmp10423
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp10424,
	addgt	r3, r3, #1	@,, MisCnt.3971, MisCnt.3963
	cmp	r2, #0	@ tmp10430,
	ldrb	lr, [r6, #2938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp10437, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10431, tmp10430
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10431,
	addgt	r3, r3, #1	@,, MisCnt.3979, MisCnt.3971
	cmp	ip, #0	@ tmp10437,
	ldrb	r0, [r6, #2939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10444, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10438, tmp10437
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10438,
	addgt	r3, r3, #1	@,, MisCnt.3987, MisCnt.3979
	cmp	r1, #0	@ tmp10444,
	rsb	r8, sl, r0	@ tmp10451, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10445, tmp10444
	cmp	r1, #2	@ tmp10445,
	addgt	r3, r3, #1	@,, MisCnt.3995, MisCnt.3987
	cmp	r8, #0	@ tmp10451,
	rsblt	r8, r8, #0	@ tmp10452, tmp10451
	cmp	r8, #2	@ tmp10452,
	addgt	r3, r3, #1	@,, tmp10455, MisCnt.3995
	cmp	r3, #2	@ tmp10455,
	bgt	.L54	@,
	ldr	r2, [r6, #2940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	sl, [r6, #2944]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2948]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10473, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10473,
	ldrb	sl, [r6, #2954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10466, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10474, tmp10473
	cmp	lr, #0	@ tmp10466,
	rsb	r0, r2, sl	@ tmp10480, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10467, tmp10466
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10474,
	movle	r3, #0	@, tmp10476
	movgt	r3, #1	@, tmp10476
	ldrb	r8, [r6, #2955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10467,
	addgt	r3, r3, #1	@,, MisCnt.4021, tmp10476
	cmp	r0, #0	@ tmp10480,
	ldrb	r1, [r6, #2956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10487, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10481, tmp10480
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10481,
	addgt	r3, r3, #1	@,, MisCnt.4029, MisCnt.4021
	cmp	r8, #0	@ tmp10487,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp10494, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10488, tmp10487
	ldrb	ip, [r6, #2957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10488,
	addgt	r3, r3, #1	@,, MisCnt.4037, MisCnt.4029
	cmp	r2, #0	@ tmp10494,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp10501, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10495, tmp10494
	ldrb	lr, [r6, #2958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp10495,
	addgt	r3, r3, #1	@,, MisCnt.4045, MisCnt.4037
	cmp	ip, #0	@ tmp10501,
	ldrb	r0, [r6, #2959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp10508, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10502, tmp10501
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10502,
	addgt	r3, r3, #1	@,, MisCnt.4053, MisCnt.4045
	cmp	r1, #0	@ tmp10508,
	rsb	sl, r8, r0	@ tmp10515, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10509, tmp10508
	cmp	r1, #2	@ tmp10509,
	addgt	r3, r3, #1	@,, MisCnt.4061, MisCnt.4053
	cmp	sl, #0	@ tmp10515,
	rsblt	sl, sl, #0	@ tmp10516, tmp10515
	cmp	sl, #2	@ tmp10516,
	addgt	r3, r3, #1	@,, tmp10519, MisCnt.4061
	cmp	r3, #2	@ tmp10519,
	bgt	.L54	@,
	ldr	r3, [r6, #2960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #2964]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2968]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10537, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10537,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10530, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10538, tmp10537
	cmp	r8, #0	@ tmp10530,
	rsb	r0, r2, r0	@ tmp10544, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10531, tmp10530
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10538,
	movle	r3, #0	@, tmp10540
	movgt	r3, #1	@, tmp10540
	ldrb	sl, [r6, #2975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10531,
	addgt	r3, r3, #1	@,, MisCnt.1390, tmp10540
	cmp	r0, #0	@ tmp10544,
	ldrb	r1, [r6, #2976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10551, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10545, tmp10544
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10545,
	addgt	r3, r3, #1	@,, MisCnt.1398, MisCnt.1390
	cmp	sl, #0	@ tmp10551,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10558, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10552, tmp10551
	ldrb	ip, [r6, #2977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10552,
	addgt	r3, r3, #1	@,, MisCnt.1406, MisCnt.1398
	cmp	r2, #0	@ tmp10558,
	ldrb	r8, [r6, #2978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10565, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10559, tmp10558
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10559,
	addgt	r3, r3, #1	@,, MisCnt.1414, MisCnt.1406
	cmp	ip, #0	@ tmp10565,
	ldrb	r0, [r6, #2979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10566, tmp10565
	rsb	r1, r1, r8	@ tmp10572, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10566,
	addgt	r3, r3, #1	@,, MisCnt.1425, MisCnt.1414
	cmp	r1, #0	@ tmp10572,
	rsb	ip, r2, r0	@ tmp10579, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10573, tmp10572
	cmp	r1, #2	@ tmp10573,
	addgt	r3, r3, #1	@,, MisCnt.1436, MisCnt.1425
	cmp	ip, #0	@ tmp10579,
	rsblt	ip, ip, #0	@ tmp10580, tmp10579
	cmp	ip, #2	@ tmp10580,
	addgt	r3, r3, #1	@,, tmp10583, MisCnt.1436
	cmp	r3, #2	@ tmp10583,
	movle	r0, #33	@ Result,
	ble	.L13	@,
.L54:
	ldr	r3, [r4, #2980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r4, #2984]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2988]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp10584,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp10584,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #2993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #2992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10601, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10601,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10594, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #2994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10602, tmp10601
	cmp	lr, #0	@ tmp10594,
	rsb	r0, r2, r0	@ tmp10608, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10595, tmp10594
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10602,
	movle	sl, #0	@, tmp10604
	movgt	sl, #1	@, tmp10604
	ldrb	r8, [r4, #2995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10595,
	addgt	sl, sl, #1	@,, MisCnt.4087, tmp10604
	cmp	r0, #0	@ tmp10608,
	ldrb	r1, [r4, #2996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10615, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10609, tmp10608
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10609,
	addgt	sl, sl, #1	@,, MisCnt.4095, MisCnt.4087
	cmp	r8, #0	@ tmp10615,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10622, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10616, tmp10615
	ldrb	ip, [r4, #2997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10616,
	addgt	sl, sl, #1	@,, MisCnt.4103, MisCnt.4095
	cmp	r2, #0	@ tmp10622,
	ldrb	lr, [r4, #2998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10629, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10623, tmp10622
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10623,
	addgt	sl, sl, #1	@,, MisCnt.4111, MisCnt.4103
	cmp	ip, #0	@ tmp10629,
	ldrb	r0, [r4, #2999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10630, tmp10629
	rsb	r1, r1, lr	@ tmp10636, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10630,
	addgt	sl, sl, #1	@,, MisCnt.4119, MisCnt.4111
	cmp	r1, #0	@ tmp10636,
	rsb	ip, r8, r0	@ tmp10643, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10637, tmp10636
	cmp	r1, #2	@ tmp10637,
	addgt	sl, sl, #1	@,, MisCnt.4127, MisCnt.4119
	cmp	ip, #0	@ tmp10643,
	rsblt	ip, ip, #0	@ tmp10644, tmp10643
	cmp	ip, #2	@ tmp10644,
	addgt	sl, sl, #1	@,, tmp10647, MisCnt.4127
	cmp	sl, #2	@ tmp10647,
	bgt	.L55	@,
	ldr	r3, [r6, #3000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #3004]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3008]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #3013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10665, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10665,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10658, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10666, tmp10665
	cmp	lr, #0	@ tmp10658,
	rsb	r0, r2, r0	@ tmp10672, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10659, tmp10658
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10666,
	movle	sl, #0	@, tmp10668
	movgt	sl, #1	@, tmp10668
	ldrb	r8, [r6, #3015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10659,
	addgt	sl, sl, #1	@,, MisCnt.4153, tmp10668
	cmp	r0, #0	@ tmp10672,
	ldrb	r1, [r6, #3016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10679, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10673, tmp10672
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10673,
	addgt	sl, sl, #1	@,, MisCnt.4161, MisCnt.4153
	cmp	r8, #0	@ tmp10679,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10686, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10680, tmp10679
	ldrb	ip, [r6, #3017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10680,
	addgt	sl, sl, #1	@,, MisCnt.4169, MisCnt.4161
	cmp	r2, #0	@ tmp10686,
	ldrb	lr, [r6, #3018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10693, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10687, tmp10686
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10687,
	addgt	sl, sl, #1	@,, MisCnt.4177, MisCnt.4169
	cmp	ip, #0	@ tmp10693,
	ldrb	r0, [r6, #3019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10700, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10694, tmp10693
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10694,
	addgt	sl, sl, #1	@,, MisCnt.4185, MisCnt.4177
	cmp	r1, #0	@ tmp10700,
	rsb	r8, r2, r0	@ tmp10707, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10701, tmp10700
	cmp	r1, #2	@ tmp10701,
	addgt	sl, sl, #1	@,, MisCnt.4193, MisCnt.4185
	cmp	r8, #0	@ tmp10707,
	rsblt	r8, r8, #0	@ tmp10708, tmp10707
	cmp	r8, #2	@ tmp10708,
	addgt	sl, sl, #1	@,, tmp10711, MisCnt.4193
	cmp	sl, #2	@ tmp10711,
	bgt	.L55	@,
	ldr	r3, [r6, #3020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #3024]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3028]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #3033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10729, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10729,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10722, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10730, tmp10729
	cmp	lr, #0	@ tmp10722,
	rsb	r0, r2, r0	@ tmp10736, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10723, tmp10722
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10730,
	movle	sl, #0	@, tmp10732
	movgt	sl, #1	@, tmp10732
	ldrb	r8, [r6, #3035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10723,
	addgt	sl, sl, #1	@,, MisCnt.4219, tmp10732
	cmp	r0, #0	@ tmp10736,
	ldrb	r1, [r6, #3036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10743, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10737, tmp10736
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10737,
	addgt	sl, sl, #1	@,, MisCnt.4227, MisCnt.4219
	cmp	r8, #0	@ tmp10743,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10750, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10744, tmp10743
	ldrb	ip, [r6, #3037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10744,
	addgt	sl, sl, #1	@,, MisCnt.4235, MisCnt.4227
	cmp	r2, #0	@ tmp10750,
	ldrb	lr, [r6, #3038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10757, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10751, tmp10750
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10751,
	addgt	sl, sl, #1	@,, MisCnt.4243, MisCnt.4235
	cmp	ip, #0	@ tmp10757,
	ldrb	r0, [r6, #3039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10764, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10758, tmp10757
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10758,
	addgt	sl, sl, #1	@,, MisCnt.4251, MisCnt.4243
	cmp	r1, #0	@ tmp10764,
	rsb	r8, r2, r0	@ tmp10771, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10765, tmp10764
	cmp	r1, #2	@ tmp10765,
	addgt	sl, sl, #1	@,, MisCnt.4259, MisCnt.4251
	cmp	r8, #0	@ tmp10771,
	rsblt	r8, r8, #0	@ tmp10772, tmp10771
	cmp	r8, #2	@ tmp10772,
	addgt	sl, sl, #1	@,, tmp10775, MisCnt.4259
	cmp	sl, #2	@ tmp10775,
	bgt	.L55	@,
	ldr	r3, [r6, #3040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #3044]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3048]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #3053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10793, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10793,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10786, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10794, tmp10793
	cmp	lr, #0	@ tmp10786,
	rsb	r0, r2, r0	@ tmp10800, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10787, tmp10786
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10794,
	movle	sl, #0	@, tmp10796
	movgt	sl, #1	@, tmp10796
	ldrb	r8, [r6, #3055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10787,
	addgt	sl, sl, #1	@,, MisCnt.4285, tmp10796
	cmp	r0, #0	@ tmp10800,
	ldrb	r1, [r6, #3056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10807, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10801, tmp10800
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10801,
	addgt	sl, sl, #1	@,, MisCnt.4293, MisCnt.4285
	cmp	r8, #0	@ tmp10807,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10814, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10808, tmp10807
	ldrb	ip, [r6, #3057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10808,
	addgt	sl, sl, #1	@,, MisCnt.4301, MisCnt.4293
	cmp	r2, #0	@ tmp10814,
	ldrb	lr, [r6, #3058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10821, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10815, tmp10814
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10815,
	addgt	sl, sl, #1	@,, MisCnt.4309, MisCnt.4301
	cmp	ip, #0	@ tmp10821,
	ldrb	r0, [r6, #3059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10828, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10822, tmp10821
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10822,
	addgt	sl, sl, #1	@,, MisCnt.4317, MisCnt.4309
	cmp	r1, #0	@ tmp10828,
	rsb	r8, r2, r0	@ tmp10835, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10829, tmp10828
	cmp	r1, #2	@ tmp10829,
	addgt	sl, sl, #1	@,, MisCnt.4325, MisCnt.4317
	cmp	r8, #0	@ tmp10835,
	rsblt	r8, r8, #0	@ tmp10836, tmp10835
	cmp	r8, #2	@ tmp10836,
	addgt	sl, sl, #1	@,, tmp10839, MisCnt.4325
	cmp	sl, #2	@ tmp10839,
	bgt	.L55	@,
	ldr	r3, [r6, #3060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #3064]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3068]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #3073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10857, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10857,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10850, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10858, tmp10857
	cmp	r8, #0	@ tmp10850,
	rsb	r0, r2, r0	@ tmp10864, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10851, tmp10850
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10858,
	movle	r3, #0	@, tmp10860
	movgt	r3, #1	@, tmp10860
	ldrb	sl, [r6, #3075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10851,
	addgt	r3, r3, #1	@,, MisCnt.1454, tmp10860
	cmp	r0, #0	@ tmp10864,
	ldrb	r1, [r6, #3076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10871, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10865, tmp10864
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10865,
	addgt	r3, r3, #1	@,, MisCnt.1462, MisCnt.1454
	cmp	sl, #0	@ tmp10871,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10878, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10872, tmp10871
	ldrb	ip, [r6, #3077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10872,
	addgt	r3, r3, #1	@,, MisCnt.1472, MisCnt.1462
	cmp	r2, #0	@ tmp10878,
	ldrb	r8, [r6, #3078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10885, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10879, tmp10878
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10879,
	addgt	r3, r3, #1	@,, MisCnt.1483, MisCnt.1472
	cmp	ip, #0	@ tmp10885,
	ldrb	r0, [r6, #3079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10886, tmp10885
	rsb	r1, r1, r8	@ tmp10892, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10886,
	addgt	r3, r3, #1	@,, MisCnt.1494, MisCnt.1483
	cmp	r1, #0	@ tmp10892,
	rsb	ip, r2, r0	@ tmp10899, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10893, tmp10892
	cmp	r1, #2	@ tmp10893,
	addgt	r3, r3, #1	@,, MisCnt.1503, MisCnt.1494
	cmp	ip, #0	@ tmp10899,
	rsblt	ip, ip, #0	@ tmp10900, tmp10899
	cmp	ip, #2	@ tmp10900,
	addgt	r3, r3, #1	@,, tmp10903, MisCnt.1503
	cmp	r3, #2	@ tmp10903,
	movle	r0, #34	@ Result,
	ble	.L13	@,
.L55:
	ldr	r3, [r4, #3080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r4, #3084]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #3088]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp10904,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp10904,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r4, #3093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #3092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10921, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10921,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10914, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #3094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10922, tmp10921
	cmp	r8, #0	@ tmp10914,
	rsb	r0, r2, r0	@ tmp10928, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10915, tmp10914
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10922,
	movle	r3, #0	@, tmp10924
	movgt	r3, #1	@, tmp10924
	ldrb	sl, [r4, #3095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10915,
	addgt	r3, r3, #1	@,, MisCnt.4351, tmp10924
	cmp	r0, #0	@ tmp10928,
	ldrb	r1, [r4, #3096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10935, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10929, tmp10928
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10929,
	addgt	r3, r3, #1	@,, MisCnt.4359, MisCnt.4351
	cmp	sl, #0	@ tmp10935,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10942, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10936, tmp10935
	ldrb	ip, [r4, #3097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10936,
	addgt	r3, r3, #1	@,, MisCnt.4367, MisCnt.4359
	cmp	r2, #0	@ tmp10942,
	ldrb	r8, [r4, #3098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10949, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10943, tmp10942
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10943,
	addgt	r3, r3, #1	@,, MisCnt.4375, MisCnt.4367
	cmp	ip, #0	@ tmp10949,
	ldrb	r0, [r4, #3099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10950, tmp10949
	rsb	r1, r1, r8	@ tmp10956, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10950,
	addgt	r3, r3, #1	@,, MisCnt.4383, MisCnt.4375
	cmp	r1, #0	@ tmp10956,
	rsb	ip, r2, r0	@ tmp10963, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10957, tmp10956
	cmp	r1, #2	@ tmp10957,
	addgt	r3, r3, #1	@,, MisCnt.4391, MisCnt.4383
	cmp	ip, #0	@ tmp10963,
	rsblt	ip, ip, #0	@ tmp10964, tmp10963
	cmp	ip, #2	@ tmp10964,
	addgt	r3, r3, #1	@,, tmp10967, MisCnt.4391
	cmp	r3, #2	@ tmp10967,
	bgt	.L46	@,
	ldr	r3, [r6, #3100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #3104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3108]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp10985, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10985,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp10978, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10986, tmp10985
	cmp	r4, #0	@ tmp10978,
	rsb	r0, r2, r0	@ tmp10992, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp10979, tmp10978
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10986,
	movle	r3, #0	@, tmp10988
	movgt	r3, #1	@, tmp10988
	ldrb	r8, [r6, #3115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp10979,
	addgt	r3, r3, #1	@,, MisCnt.4417, tmp10988
	cmp	r0, #0	@ tmp10992,
	ldrb	r1, [r6, #3116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10999, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10993, tmp10992
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10993,
	addgt	r3, r3, #1	@,, MisCnt.4425, MisCnt.4417
	cmp	r8, #0	@ tmp10999,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11006, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11000, tmp10999
	ldrb	ip, [r6, #3117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11000,
	addgt	r3, r3, #1	@,, MisCnt.4433, MisCnt.4425
	cmp	r2, #0	@ tmp11006,
	ldrb	r4, [r6, #3118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11013, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11007, tmp11006
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11007,
	addgt	r3, r3, #1	@,, MisCnt.4441, MisCnt.4433
	cmp	ip, #0	@ tmp11013,
	ldrb	r0, [r6, #3119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11014, tmp11013
	rsb	r1, r1, r4	@ tmp11020, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11014,
	addgt	r3, r3, #1	@,, MisCnt.4449, MisCnt.4441
	cmp	r1, #0	@ tmp11020,
	rsb	ip, r2, r0	@ tmp11027, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11021, tmp11020
	cmp	r1, #2	@ tmp11021,
	addgt	r3, r3, #1	@,, MisCnt.4457, MisCnt.4449
	cmp	ip, #0	@ tmp11027,
	rsblt	ip, ip, #0	@ tmp11028, tmp11027
	cmp	ip, #2	@ tmp11028,
	addgt	r3, r3, #1	@,, tmp11031, MisCnt.4457
	cmp	r3, #2	@ tmp11031,
	bgt	.L46	@,
	ldr	r3, [r6, #3120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #3124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3128]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11049, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11049,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp11042, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11050, tmp11049
	cmp	r4, #0	@ tmp11042,
	rsb	r0, r2, r0	@ tmp11056, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11043, tmp11042
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11050,
	movle	r3, #0	@, tmp11052
	movgt	r3, #1	@, tmp11052
	ldrb	r8, [r6, #3135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11043,
	addgt	r3, r3, #1	@,, MisCnt.4483, tmp11052
	cmp	r0, #0	@ tmp11056,
	ldrb	r1, [r6, #3136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11063, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11057, tmp11056
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11057,
	addgt	r3, r3, #1	@,, MisCnt.4491, MisCnt.4483
	cmp	r8, #0	@ tmp11063,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11070, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11064, tmp11063
	ldrb	ip, [r6, #3137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11064,
	addgt	r3, r3, #1	@,, MisCnt.4499, MisCnt.4491
	cmp	r2, #0	@ tmp11070,
	ldrb	r4, [r6, #3138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11077, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11071, tmp11070
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11071,
	addgt	r3, r3, #1	@,, MisCnt.4507, MisCnt.4499
	cmp	ip, #0	@ tmp11077,
	ldrb	r0, [r6, #3139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11078, tmp11077
	rsb	r1, r1, r4	@ tmp11084, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11078,
	addgt	r3, r3, #1	@,, MisCnt.4515, MisCnt.4507
	cmp	r1, #0	@ tmp11084,
	rsb	ip, r2, r0	@ tmp11091, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11085, tmp11084
	cmp	r1, #2	@ tmp11085,
	addgt	r3, r3, #1	@,, MisCnt.4523, MisCnt.4515
	cmp	ip, #0	@ tmp11091,
	rsblt	ip, ip, #0	@ tmp11092, tmp11091
	cmp	ip, #2	@ tmp11092,
	addgt	r3, r3, #1	@,, tmp11095, MisCnt.4523
	cmp	r3, #2	@ tmp11095,
	bgt	.L46	@,
	ldr	r3, [r6, #3140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12193
	ldr	r2, [r6, #3144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3148]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11113, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11113,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp11106, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11114, tmp11113
	cmp	r4, #0	@ tmp11106,
	rsb	r0, r2, r0	@ tmp11120, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11107, tmp11106
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11114,
	movle	r3, #0	@, tmp11116
	movgt	r3, #1	@, tmp11116
	ldrb	r8, [r6, #3155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11107,
	addgt	r3, r3, #1	@,, MisCnt.4549, tmp11116
	cmp	r0, #0	@ tmp11120,
	ldrb	r1, [r6, #3156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11127, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11121, tmp11120
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11121,
	addgt	r3, r3, #1	@,, MisCnt.4557, MisCnt.4549
	cmp	r8, #0	@ tmp11127,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11134, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11128, tmp11127
	ldrb	ip, [r6, #3157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11128,
	addgt	r3, r3, #1	@,, MisCnt.4565, MisCnt.4557
	cmp	r2, #0	@ tmp11134,
	ldrb	r4, [r6, #3158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11141, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11135, tmp11134
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11135,
	addgt	r3, r3, #1	@,, MisCnt.4573, MisCnt.4565
	cmp	ip, #0	@ tmp11141,
	ldrb	r0, [r6, #3159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11142, tmp11141
	rsb	r1, r1, r4	@ tmp11148, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11142,
	addgt	r3, r3, #1	@,, MisCnt.4581, MisCnt.4573
	cmp	r1, #0	@ tmp11148,
	rsb	ip, r2, r0	@ tmp11155, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11149, tmp11148
	cmp	r1, #2	@ tmp11149,
	addgt	r3, r3, #1	@,, MisCnt.4589, MisCnt.4581
	cmp	ip, #0	@ tmp11155,
	rsblt	ip, ip, #0	@ tmp11156, tmp11155
	cmp	ip, #2	@ tmp11156,
	addgt	r3, r3, #1	@,, tmp11159, MisCnt.4589
	cmp	r3, #2	@ tmp11159,
	bgt	.L46	@,
	ldr	r3, [r6, #3160]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r6, #3164]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12193
	ldr	lr, [r6, #3168]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #3172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11177, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11177,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp11170, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11178, tmp11177
	cmp	r4, #0	@ tmp11170,
	rsb	r0, r2, r0	@ tmp11184, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11171, tmp11170
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11178,
	movle	r3, #0	@, tmp11180
	movgt	r3, #1	@, tmp11180
	ldrb	r5, [r6, #3175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11171,
	addgt	r3, r3, #1	@,, MisCnt.1524, tmp11180
	cmp	r0, #0	@ tmp11184,
	ldrb	r1, [r6, #3176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp11191, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11185, tmp11184
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11185,
	addgt	r3, r3, #1	@,, MisCnt.1535, MisCnt.1524
	cmp	r5, #0	@ tmp11191,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11198, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11192, tmp11191
	ldrb	ip, [r6, #3177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11192,
	addgt	r3, r3, #1	@,, MisCnt.1544, MisCnt.1535
	cmp	r2, #0	@ tmp11198,
	ldrb	r4, [r6, #3178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11205, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11199, tmp11198
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11199,
	addgt	r3, r3, #1	@,, MisCnt.1555, MisCnt.1544
	cmp	ip, #0	@ tmp11205,
	ldrb	r0, [r6, #3179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11206, tmp11205
	rsb	r1, r1, r4	@ tmp11212, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11206,
	addgt	r3, r3, #1	@,, MisCnt.1566, MisCnt.1555
	cmp	r1, #0	@ tmp11212,
	rsb	ip, r2, r0	@ tmp11219, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11213, tmp11212
	cmp	r1, #2	@ tmp11213,
	addgt	r3, r3, #1	@,, MisCnt.1576, MisCnt.1566
	cmp	ip, #0	@ tmp11219,
	rsblt	ip, ip, #0	@ tmp11220, tmp11219
	cmp	ip, #2	@ tmp11220,
	addgt	r3, r3, #1	@,, tmp11223, MisCnt.1576
	cmp	r3, #2	@ tmp11223,
	bgt	.L46	@,
	mov	r0, #35	@ Result,
	b	.L13	@
.L67:
	ldr	ip, [r5, #16]	@ <variable>.pPicBufV, <variable>.pPicBufV
	mov	r0, #1	@,
	ldr	r3, [r5, #12]	@ <variable>.pPicBufU, <variable>.pPicBufU
	movw	r1, #:lower16:.LC1	@,
	mov	r2, r4	@, <variable>.pPicBufY
	movt	r1, #:upper16:.LC1	@,
	str	ip, [sp, #0]	@ <variable>.pPicBufV,
	bl	dprint_vfmw	@
	mov	r0, r4	@ Result, <variable>.pPicBufY
	b	.L13	@
.L72:
	movw	r4, #:lower16:.LANCHOR0	@ tmp12188,
	movt	r4, #:upper16:.LANCHOR0	@ tmp12188,
	add	r7, sp, #12	@ tmp12189,,
	mov	r1, r5	@, pDetPara
	ldr	r2, [r4, #1600]	@ <variable>.Comp, <variable>.Comp
	ldr	r6, [r4, #1604]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12189
	ldr	lr, [r4, #1608]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r6, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #1613]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1612]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r3, r1	@ tmp6313, SmpPat.Pix, <variable>.Pix
	cmp	ip, #0	@ tmp6313,
	ldrb	r6, [r4, #1614]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r8, sl	@ tmp6306, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	ip, ip, #0	@ tmp6314, tmp6313
	cmp	lr, #0	@ tmp6306,
	rsb	r8, r2, r6	@ tmp6320, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6307, tmp6306
	ldrb	r0, [r4, #1615]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp6314,
	movle	r1, #0	@, tmp6316
	movgt	r1, #1	@, tmp6316
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp6307,
	addgt	r1, r1, #1	@,, MisCnt.4615, tmp6316
	cmp	r8, #0	@ tmp6320,
	ldrb	ip, [r4, #1616]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r3, r3, r0	@ tmp6327, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6321, tmp6320
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp6321,
	movle	r6, r1	@, MisCnt.4623, MisCnt.4615
	addgt	r6, r1, #1	@,, MisCnt.4623, MisCnt.4615
	cmp	r3, #0	@ tmp6327,
	ldrb	r0, [r4, #1617]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, sl, ip	@ tmp6334, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6328, tmp6327
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6328,
	movle	r2, r6	@, MisCnt.4631, MisCnt.4623
	addgt	r2, r6, #1	@,, MisCnt.4631, MisCnt.4623
	cmp	r8, #0	@ tmp6334,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, r0	@ tmp6341, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6335, tmp6334
	ldrb	lr, [r4, #1618]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6335,
	movle	ip, r2	@, MisCnt.4639, MisCnt.4631
	addgt	ip, r2, #1	@,, MisCnt.4639, MisCnt.4631
	cmp	r6, #0	@ tmp6341,
	ldrb	r0, [r4, #1619]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, sl, lr	@ tmp6348, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp6342, tmp6341
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r6, #2	@ tmp6342,
	movle	r1, ip	@, MisCnt.4647, MisCnt.4639
	addgt	r1, ip, #1	@,, MisCnt.4647, MisCnt.4639
	cmp	r2, #0	@ tmp6348,
	rsb	sl, r3, r0	@ tmp6355, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6349, tmp6348
	cmp	r2, #2	@ tmp6349,
	movle	r8, r1	@, MisCnt.4655, MisCnt.4647
	addgt	r8, r1, #1	@,, MisCnt.4655, MisCnt.4647
	cmp	sl, #0	@ tmp6355,
	rsblt	sl, sl, #0	@ tmp6356, tmp6355
	cmp	sl, #2	@ tmp6356,
	movle	r6, r8	@, tmp6359, MisCnt.4655
	addgt	r6, r8, #1	@,, tmp6359, MisCnt.4655
	cmp	r6, #2	@ tmp6359,
	bgt	.L39	@,
	ldr	r6, [r4, #1620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r4, #1624]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1628]	@ <variable>.Py, <variable>.Py
	str	r6, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	mov	r6, r4	@ tmp6360, tmp12188
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6377, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6377,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp6370, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6378, tmp6377
	cmp	lr, #0	@ tmp6370,
	rsb	r0, r2, r0	@ tmp6384, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6371, tmp6370
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6378,
	movle	sl, #0	@, tmp6380
	movgt	sl, #1	@, tmp6380
	ldrb	r8, [r4, #1635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6371,
	addgt	sl, sl, #1	@,, MisCnt.4681, tmp6380
	cmp	r0, #0	@ tmp6384,
	ldrb	r1, [r4, #1636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6391, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6385, tmp6384
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6385,
	addgt	sl, sl, #1	@,, MisCnt.4689, MisCnt.4681
	cmp	r8, #0	@ tmp6391,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6398, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6392, tmp6391
	ldrb	ip, [r4, #1637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6392,
	addgt	sl, sl, #1	@,, MisCnt.4697, MisCnt.4689
	cmp	r2, #0	@ tmp6398,
	ldrb	lr, [r4, #1638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6405, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6399, tmp6398
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6399,
	addgt	sl, sl, #1	@,, MisCnt.4705, MisCnt.4697
	cmp	ip, #0	@ tmp6405,
	ldrb	r0, [r4, #1639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6406, tmp6405
	rsb	r8, r1, lr	@ tmp6412, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6406,
	addgt	sl, sl, #1	@,, MisCnt.4713, MisCnt.4705
	cmp	r8, #0	@ tmp6412,
	rsb	ip, r2, r0	@ tmp6419, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6413, tmp6412
	cmp	r8, #2	@ tmp6413,
	addgt	sl, sl, #1	@,, MisCnt.4721, MisCnt.4713
	cmp	ip, #0	@ tmp6419,
	rsblt	ip, ip, #0	@ tmp6420, tmp6419
	cmp	ip, #2	@ tmp6420,
	addgt	sl, sl, #1	@,, tmp6423, MisCnt.4721
	cmp	sl, #2	@ tmp6423,
	bgt	.L39	@,
	ldr	r2, [r4, #1640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r4, #1644]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1648]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #1652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6441, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6441,
	ldrb	sl, [r4, #1654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6434, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6442, tmp6441
	cmp	lr, #0	@ tmp6434,
	rsb	r0, r2, sl	@ tmp6448, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6435, tmp6434
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6442,
	movle	r3, #0	@, tmp6444
	movgt	r3, #1	@, tmp6444
	ldrb	r8, [r4, #1655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6435,
	addgt	r3, r3, #1	@,, MisCnt.4747, tmp6444
	cmp	r0, #0	@ tmp6448,
	ldrb	r1, [r4, #1656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6455, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6449, tmp6448
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6449,
	addgt	r3, r3, #1	@,, MisCnt.4755, MisCnt.4747
	cmp	r8, #0	@ tmp6455,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp6462, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6456, tmp6455
	ldrb	ip, [r4, #1657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6456,
	addgt	r3, r3, #1	@,, MisCnt.4763, MisCnt.4755
	cmp	r2, #0	@ tmp6462,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp6469, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6463, tmp6462
	ldrb	lr, [r4, #1658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp6463,
	addgt	r3, r3, #1	@,, MisCnt.4771, MisCnt.4763
	cmp	ip, #0	@ tmp6469,
	ldrb	r0, [r4, #1659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp6476, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6470, tmp6469
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6470,
	addgt	r3, r3, #1	@,, MisCnt.4779, MisCnt.4771
	cmp	r1, #0	@ tmp6476,
	rsb	sl, r8, r0	@ tmp6483, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6477, tmp6476
	cmp	r1, #2	@ tmp6477,
	addgt	r3, r3, #1	@,, MisCnt.4787, MisCnt.4779
	cmp	sl, #0	@ tmp6483,
	rsblt	sl, sl, #0	@ tmp6484, tmp6483
	cmp	sl, #2	@ tmp6484,
	addgt	r3, r3, #1	@,, tmp6487, MisCnt.4787
	cmp	r3, #2	@ tmp6487,
	bgt	.L39	@,
	ldr	r2, [r4, #1660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r8, [r4, #1664]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1668]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #1672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp6505, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6505,
	ldrb	r8, [r4, #1674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6498, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6506, tmp6505
	cmp	lr, #0	@ tmp6498,
	rsb	r0, r2, r8	@ tmp6512, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6499, tmp6498
	ldrb	sl, [r4, #1675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp6506,
	movle	r3, #0	@, tmp6508
	movgt	r3, #1	@, tmp6508
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp6499,
	addgt	r3, r3, #1	@,, MisCnt.4813, tmp6508
	cmp	r0, #0	@ tmp6512,
	ldrb	r1, [r4, #1676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp6519, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6513, tmp6512
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6513,
	addgt	r3, r3, #1	@,, MisCnt.4821, MisCnt.4813
	cmp	r8, #0	@ tmp6519,
	ldrb	sl, [r4, #1677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp6526, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6520, tmp6519
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp6520,
	addgt	r3, r3, #1	@,, MisCnt.4829, MisCnt.4821
	cmp	r2, #0	@ tmp6526,
	ldrb	lr, [r4, #1678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp6533, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6527, tmp6526
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6527,
	addgt	r3, r3, #1	@,, MisCnt.4837, MisCnt.4829
	cmp	ip, #0	@ tmp6533,
	ldrb	r0, [r4, #1679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6540, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6534, tmp6533
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6534,
	addgt	r3, r3, #1	@,, MisCnt.4845, MisCnt.4837
	cmp	r1, #0	@ tmp6540,
	rsb	r8, sl, r0	@ tmp6547, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6541, tmp6540
	cmp	r1, #2	@ tmp6541,
	addgt	r3, r3, #1	@,, MisCnt.4853, MisCnt.4845
	cmp	r8, #0	@ tmp6547,
	rsblt	r8, r8, #0	@ tmp6548, tmp6547
	cmp	r8, #2	@ tmp6548,
	addgt	r3, r3, #1	@,, tmp6551, MisCnt.4853
	cmp	r3, #2	@ tmp6551,
	bgt	.L39	@,
	ldr	r3, [r4, #1680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r4, #1684]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1688]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r4, #1693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp6569, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6569,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp6562, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6570, tmp6569
	cmp	r8, #0	@ tmp6562,
	rsb	r0, r2, r0	@ tmp6576, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6563, tmp6562
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6570,
	movle	r3, #0	@, tmp6572
	movgt	r3, #1	@, tmp6572
	ldrb	sl, [r4, #1695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6563,
	addgt	r3, r3, #1	@,, MisCnt.1595, tmp6572
	cmp	r0, #0	@ tmp6576,
	ldrb	r1, [r4, #1696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6583, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6577, tmp6576
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6577,
	addgt	r3, r3, #1	@,, MisCnt.1605, MisCnt.1595
	cmp	sl, #0	@ tmp6583,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6590, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6584, tmp6583
	ldrb	ip, [r4, #1697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6584,
	addgt	r3, r3, #1	@,, MisCnt.1616, MisCnt.1605
	cmp	r2, #0	@ tmp6590,
	ldrb	r8, [r4, #1698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6597, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6591, tmp6590
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6591,
	addgt	r3, r3, #1	@,, MisCnt.1627, MisCnt.1616
	cmp	ip, #0	@ tmp6597,
	ldrb	r0, [r4, #1699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6598, tmp6597
	rsb	r1, r1, r8	@ tmp6604, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6598,
	addgt	r3, r3, #1	@,, MisCnt.1635, MisCnt.1627
	cmp	r1, #0	@ tmp6604,
	rsb	ip, r2, r0	@ tmp6611, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6605, tmp6604
	cmp	r1, #2	@ tmp6605,
	addgt	r3, r3, #1	@,, MisCnt.1646, MisCnt.1635
	cmp	ip, #0	@ tmp6611,
	rsblt	ip, ip, #0	@ tmp6612, tmp6611
	cmp	ip, #2	@ tmp6612,
	addgt	r3, r3, #1	@,, tmp6615, MisCnt.1646
	cmp	r3, #2	@ tmp6615,
	movle	r0, #22	@ Result,
	ble	.L13	@,
.L39:
	ldr	ip, [r4, #1700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r4, #1704]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1708]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp6616,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp6616,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #1713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #1712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp6633, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp6633,
	ldrb	sl, [r4, #1714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6626, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6634, tmp6633
	cmp	lr, #0	@ tmp6626,
	rsblt	lr, lr, #0	@ tmp6627, tmp6626
	ldrb	r0, [r4, #1715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6634,
	movle	r1, #0	@, tmp6636
	movgt	r1, #1	@, tmp6636
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp6640, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6627,
	addgt	r1, r1, #1	@,, MisCnt.4879, tmp6636
	cmp	r8, #0	@ tmp6640,
	rsb	sl, r3, r0	@ tmp6647, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6641, tmp6640
	ldrb	ip, [r4, #1716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6641,
	movle	r8, r1	@, MisCnt.4887, MisCnt.4879
	addgt	r8, r1, #1	@,, MisCnt.4887, MisCnt.4879
	cmp	sl, #0	@ tmp6647,
	ldrb	r0, [r4, #1717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp6654, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6648, tmp6647
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6648,
	movle	r3, r8	@, MisCnt.4895, MisCnt.4887
	addgt	r3, r8, #1	@,, MisCnt.4895, MisCnt.4887
	cmp	ip, #0	@ tmp6654,
	ldrb	lr, [r4, #1718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp6661, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6655, tmp6654
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6655,
	movle	ip, r3	@, MisCnt.4903, MisCnt.4895
	addgt	ip, r3, #1	@,, MisCnt.4903, MisCnt.4895
	cmp	sl, #0	@ tmp6661,
	ldrb	r0, [r4, #1719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6662, tmp6661
	rsb	r8, r2, lr	@ tmp6668, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6662,
	movle	r1, ip	@, MisCnt.4911, MisCnt.4903
	addgt	r1, ip, #1	@,, MisCnt.4911, MisCnt.4903
	cmp	r8, #0	@ tmp6668,
	rsb	sl, r3, r0	@ tmp6675, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6669, tmp6668
	cmp	r8, #2	@ tmp6669,
	movle	ip, r1	@, MisCnt.4919, MisCnt.4911
	addgt	ip, r1, #1	@,, MisCnt.4919, MisCnt.4911
	cmp	sl, #0	@ tmp6675,
	rsblt	sl, sl, #0	@ tmp6676, tmp6675
	cmp	sl, #2	@ tmp6676,
	movle	r0, ip	@, tmp6679, MisCnt.4919
	addgt	r0, ip, #1	@,, tmp6679, MisCnt.4919
	cmp	r0, #2	@ tmp6679,
	bgt	.L40	@,
	ldr	ip, [r6, #1720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r8, [r6, #1724]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1728]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r6, #1733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp6697, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp6697,
	ldrb	r8, [r6, #1734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6690, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp6698, tmp6697
	cmp	lr, #0	@ tmp6690,
	rsblt	lr, lr, #0	@ tmp6691, tmp6690
	ldrb	r0, [r6, #1735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6698,
	movle	r1, #0	@, tmp6700
	movgt	r1, #1	@, tmp6700
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r8	@ tmp6704, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6691,
	addgt	r1, r1, #1	@,, MisCnt.4945, tmp6700
	cmp	sl, #0	@ tmp6704,
	rsb	r3, r3, r0	@ tmp6711, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6705, tmp6704
	ldrb	ip, [r6, #1736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6705,
	movle	r8, r1	@, MisCnt.4953, MisCnt.4945
	addgt	r8, r1, #1	@,, MisCnt.4953, MisCnt.4945
	cmp	r3, #0	@ tmp6711,
	ldrb	r0, [r6, #1737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r2, ip	@ tmp6718, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6712, tmp6711
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6712,
	movle	r3, r8	@, MisCnt.4961, MisCnt.4953
	addgt	r3, r8, #1	@,, MisCnt.4961, MisCnt.4953
	cmp	sl, #0	@ tmp6718,
	ldrb	lr, [r6, #1738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp6725, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6719, tmp6718
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6719,
	movle	ip, r3	@, MisCnt.4969, MisCnt.4961
	addgt	ip, r3, #1	@,, MisCnt.4969, MisCnt.4961
	cmp	r1, #0	@ tmp6725,
	ldrb	r8, [r6, #1739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, lr	@ tmp6732, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6726, tmp6725
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp6726,
	movle	r1, ip	@, MisCnt.4977, MisCnt.4969
	addgt	r1, ip, #1	@,, MisCnt.4977, MisCnt.4969
	cmp	r2, #0	@ tmp6732,
	rsb	r3, sl, r8	@ tmp6739, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6733, tmp6732
	cmp	r2, #2	@ tmp6733,
	movle	r0, r1	@, MisCnt.4985, MisCnt.4977
	addgt	r0, r1, #1	@,, MisCnt.4985, MisCnt.4977
	cmp	r3, #0	@ tmp6739,
	rsblt	r3, r3, #0	@ tmp6740, tmp6739
	cmp	r3, #2	@ tmp6740,
	movle	r8, r0	@, tmp6743, MisCnt.4985
	addgt	r8, r0, #1	@,, tmp6743, MisCnt.4985
	cmp	r8, #2	@ tmp6743,
	bgt	.L40	@,
	ldr	r3, [r6, #1740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #1744]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1748]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6761, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6761,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp6754, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6762, tmp6761
	cmp	lr, #0	@ tmp6754,
	rsb	r0, r2, r0	@ tmp6768, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6755, tmp6754
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6762,
	movle	sl, #0	@, tmp6764
	movgt	sl, #1	@, tmp6764
	ldrb	r8, [r6, #1755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6755,
	addgt	sl, sl, #1	@,, MisCnt.5011, tmp6764
	cmp	r0, #0	@ tmp6768,
	ldrb	r1, [r6, #1756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6775, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6769, tmp6768
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6769,
	addgt	sl, sl, #1	@,, MisCnt.5019, MisCnt.5011
	cmp	r8, #0	@ tmp6775,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6782, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6776, tmp6775
	ldrb	ip, [r6, #1757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6776,
	addgt	sl, sl, #1	@,, MisCnt.5027, MisCnt.5019
	cmp	r2, #0	@ tmp6782,
	ldrb	lr, [r6, #1758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6789, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6783, tmp6782
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6783,
	addgt	sl, sl, #1	@,, MisCnt.5035, MisCnt.5027
	cmp	ip, #0	@ tmp6789,
	ldrb	r0, [r6, #1759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6796, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6790, tmp6789
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6790,
	addgt	sl, sl, #1	@,, MisCnt.5043, MisCnt.5035
	cmp	r1, #0	@ tmp6796,
	rsb	r2, r8, r0	@ tmp6803, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6797, tmp6796
	cmp	r1, #2	@ tmp6797,
	addgt	sl, sl, #1	@,, MisCnt.5051, MisCnt.5043
	cmp	r2, #0	@ tmp6803,
	rsblt	r2, r2, #0	@ tmp6804, tmp6803
	cmp	r2, #2	@ tmp6804,
	addgt	sl, sl, #1	@,, tmp6807, MisCnt.5051
	cmp	sl, #2	@ tmp6807,
	bgt	.L40	@,
	ldr	r3, [r6, #1760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #1764]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6825, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6825,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp6818, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6826, tmp6825
	cmp	lr, #0	@ tmp6818,
	rsb	r0, r2, r0	@ tmp6832, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6819, tmp6818
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6826,
	movle	sl, #0	@, tmp6828
	movgt	sl, #1	@, tmp6828
	ldrb	r8, [r6, #1775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6819,
	addgt	sl, sl, #1	@,, MisCnt.5077, tmp6828
	cmp	r0, #0	@ tmp6832,
	ldrb	r1, [r6, #1776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6839, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6833, tmp6832
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6833,
	addgt	sl, sl, #1	@,, MisCnt.5085, MisCnt.5077
	cmp	r8, #0	@ tmp6839,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6846, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6840, tmp6839
	ldrb	ip, [r6, #1777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6840,
	addgt	sl, sl, #1	@,, MisCnt.5093, MisCnt.5085
	cmp	r2, #0	@ tmp6846,
	ldrb	lr, [r6, #1778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6853, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6847, tmp6846
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6847,
	addgt	sl, sl, #1	@,, MisCnt.5101, MisCnt.5093
	cmp	ip, #0	@ tmp6853,
	ldrb	r0, [r6, #1779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6860, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6854, tmp6853
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6854,
	addgt	sl, sl, #1	@,, MisCnt.5109, MisCnt.5101
	cmp	r1, #0	@ tmp6860,
	rsb	r8, r2, r0	@ tmp6867, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6861, tmp6860
	cmp	r1, #2	@ tmp6861,
	addgt	sl, sl, #1	@,, MisCnt.5117, MisCnt.5109
	cmp	r8, #0	@ tmp6867,
	rsblt	r8, r8, #0	@ tmp6868, tmp6867
	cmp	r8, #2	@ tmp6868,
	addgt	sl, sl, #1	@,, tmp6871, MisCnt.5117
	cmp	sl, #2	@ tmp6871,
	bgt	.L40	@,
	ldr	r3, [r6, #1780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #1784]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1788]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp6889, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6889,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp6882, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6890, tmp6889
	cmp	r8, #0	@ tmp6882,
	rsb	r0, r2, r0	@ tmp6896, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6883, tmp6882
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6890,
	movle	r3, #0	@, tmp6892
	movgt	r3, #1	@, tmp6892
	ldrb	sl, [r6, #1795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6883,
	addgt	r3, r3, #1	@,, MisCnt.1666, tmp6892
	cmp	r0, #0	@ tmp6896,
	ldrb	r1, [r6, #1796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6903, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6897, tmp6896
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6897,
	addgt	r3, r3, #1	@,, MisCnt.1675, MisCnt.1666
	cmp	sl, #0	@ tmp6903,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6910, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6904, tmp6903
	ldrb	ip, [r6, #1797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6904,
	addgt	r3, r3, #1	@,, MisCnt.1684, MisCnt.1675
	cmp	r2, #0	@ tmp6910,
	ldrb	r8, [r6, #1798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6917, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6911, tmp6910
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6911,
	addgt	r3, r3, #1	@,, MisCnt.1694, MisCnt.1684
	cmp	ip, #0	@ tmp6917,
	ldrb	r0, [r6, #1799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6918, tmp6917
	rsb	r1, r1, r8	@ tmp6924, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6918,
	addgt	r3, r3, #1	@,, MisCnt.1702, MisCnt.1694
	cmp	r1, #0	@ tmp6924,
	rsb	ip, r2, r0	@ tmp6931, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6925, tmp6924
	cmp	r1, #2	@ tmp6925,
	addgt	r3, r3, #1	@,, MisCnt.1710, MisCnt.1702
	cmp	ip, #0	@ tmp6931,
	rsblt	ip, ip, #0	@ tmp6932, tmp6931
	cmp	ip, #2	@ tmp6932,
	addgt	r3, r3, #1	@,, tmp6935, MisCnt.1710
	cmp	r3, #2	@ tmp6935,
	movle	r0, #20	@ Result,
	ble	.L13	@,
.L40:
	ldr	ip, [r4, #1800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r4, #1804]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1808]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp6936,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp6936,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #1813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #1812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp6953, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp6953,
	ldrb	sl, [r4, #1814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6946, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6954, tmp6953
	cmp	lr, #0	@ tmp6946,
	rsblt	lr, lr, #0	@ tmp6947, tmp6946
	ldrb	r0, [r4, #1815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6954,
	movle	r1, #0	@, tmp6956
	movgt	r1, #1	@, tmp6956
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp6960, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6947,
	addgt	r1, r1, #1	@,, MisCnt.5143, tmp6956
	cmp	r8, #0	@ tmp6960,
	rsb	sl, r3, r0	@ tmp6967, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6961, tmp6960
	ldrb	ip, [r4, #1816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6961,
	movle	r8, r1	@, MisCnt.5151, MisCnt.5143
	addgt	r8, r1, #1	@,, MisCnt.5151, MisCnt.5143
	cmp	sl, #0	@ tmp6967,
	ldrb	r0, [r4, #1817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp6974, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6968, tmp6967
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6968,
	movle	r3, r8	@, MisCnt.5159, MisCnt.5151
	addgt	r3, r8, #1	@,, MisCnt.5159, MisCnt.5151
	cmp	ip, #0	@ tmp6974,
	ldrb	lr, [r4, #1818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp6981, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6975, tmp6974
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6975,
	movle	ip, r3	@, MisCnt.5167, MisCnt.5159
	addgt	ip, r3, #1	@,, MisCnt.5167, MisCnt.5159
	cmp	sl, #0	@ tmp6981,
	ldrb	r0, [r4, #1819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6982, tmp6981
	rsb	r8, r2, lr	@ tmp6988, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6982,
	movle	r1, ip	@, MisCnt.5175, MisCnt.5167
	addgt	r1, ip, #1	@,, MisCnt.5175, MisCnt.5167
	cmp	r8, #0	@ tmp6988,
	rsb	sl, r3, r0	@ tmp6995, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6989, tmp6988
	cmp	r8, #2	@ tmp6989,
	movle	ip, r1	@, MisCnt.5183, MisCnt.5175
	addgt	ip, r1, #1	@,, MisCnt.5183, MisCnt.5175
	cmp	sl, #0	@ tmp6995,
	rsblt	sl, sl, #0	@ tmp6996, tmp6995
	cmp	sl, #2	@ tmp6996,
	movle	r0, ip	@, tmp6999, MisCnt.5183
	addgt	r0, ip, #1	@,, tmp6999, MisCnt.5183
	cmp	r0, #2	@ tmp6999,
	bgt	.L41	@,
	ldr	ip, [r6, #1820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r8, [r6, #1824]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1828]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r6, #1833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp7017, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp7017,
	ldrb	r8, [r6, #1834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7010, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp7018, tmp7017
	cmp	lr, #0	@ tmp7010,
	rsblt	lr, lr, #0	@ tmp7011, tmp7010
	ldrb	r0, [r6, #1835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7018,
	movle	r1, #0	@, tmp7020
	movgt	r1, #1	@, tmp7020
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r8	@ tmp7024, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7011,
	addgt	r1, r1, #1	@,, MisCnt.5209, tmp7020
	cmp	sl, #0	@ tmp7024,
	rsb	r3, r3, r0	@ tmp7031, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7025, tmp7024
	ldrb	ip, [r6, #1836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7025,
	movle	r8, r1	@, MisCnt.5217, MisCnt.5209
	addgt	r8, r1, #1	@,, MisCnt.5217, MisCnt.5209
	cmp	r3, #0	@ tmp7031,
	ldrb	r0, [r6, #1837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r2, ip	@ tmp7038, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7032, tmp7031
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7032,
	movle	r3, r8	@, MisCnt.5225, MisCnt.5217
	addgt	r3, r8, #1	@,, MisCnt.5225, MisCnt.5217
	cmp	sl, #0	@ tmp7038,
	ldrb	lr, [r6, #1838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp7045, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7039, tmp7038
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7039,
	movle	ip, r3	@, MisCnt.5233, MisCnt.5225
	addgt	ip, r3, #1	@,, MisCnt.5233, MisCnt.5225
	cmp	r1, #0	@ tmp7045,
	ldrb	r8, [r6, #1839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, lr	@ tmp7052, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7046, tmp7045
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp7046,
	movle	r1, ip	@, MisCnt.5241, MisCnt.5233
	addgt	r1, ip, #1	@,, MisCnt.5241, MisCnt.5233
	cmp	r2, #0	@ tmp7052,
	rsb	r3, sl, r8	@ tmp7059, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7053, tmp7052
	cmp	r2, #2	@ tmp7053,
	movle	r0, r1	@, MisCnt.5249, MisCnt.5241
	addgt	r0, r1, #1	@,, MisCnt.5249, MisCnt.5241
	cmp	r3, #0	@ tmp7059,
	rsblt	r3, r3, #0	@ tmp7060, tmp7059
	cmp	r3, #2	@ tmp7060,
	movle	r8, r0	@, tmp7063, MisCnt.5249
	addgt	r8, r0, #1	@,, tmp7063, MisCnt.5249
	cmp	r8, #2	@ tmp7063,
	bgt	.L41	@,
	ldr	r3, [r6, #1840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #1844]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1848]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7081, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7081,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7074, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7082, tmp7081
	cmp	lr, #0	@ tmp7074,
	rsb	r0, r2, r0	@ tmp7088, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7075, tmp7074
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7082,
	movle	sl, #0	@, tmp7084
	movgt	sl, #1	@, tmp7084
	ldrb	r8, [r6, #1855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7075,
	addgt	sl, sl, #1	@,, MisCnt.5275, tmp7084
	cmp	r0, #0	@ tmp7088,
	ldrb	r1, [r6, #1856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7095, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7089, tmp7088
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7089,
	addgt	sl, sl, #1	@,, MisCnt.5283, MisCnt.5275
	cmp	r8, #0	@ tmp7095,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7102, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7096, tmp7095
	ldrb	ip, [r6, #1857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7096,
	addgt	sl, sl, #1	@,, MisCnt.5291, MisCnt.5283
	cmp	r2, #0	@ tmp7102,
	ldrb	lr, [r6, #1858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7109, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7103, tmp7102
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7103,
	addgt	sl, sl, #1	@,, MisCnt.5299, MisCnt.5291
	cmp	ip, #0	@ tmp7109,
	ldrb	r0, [r6, #1859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7116, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7110, tmp7109
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7110,
	addgt	sl, sl, #1	@,, MisCnt.5307, MisCnt.5299
	cmp	r1, #0	@ tmp7116,
	rsb	r2, r8, r0	@ tmp7123, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7117, tmp7116
	cmp	r1, #2	@ tmp7117,
	addgt	sl, sl, #1	@,, MisCnt.5315, MisCnt.5307
	cmp	r2, #0	@ tmp7123,
	rsblt	r2, r2, #0	@ tmp7124, tmp7123
	cmp	r2, #2	@ tmp7124,
	addgt	sl, sl, #1	@,, tmp7127, MisCnt.5315
	cmp	sl, #2	@ tmp7127,
	bgt	.L41	@,
	ldr	r3, [r6, #1860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #1864]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7145, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7145,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7138, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7146, tmp7145
	cmp	lr, #0	@ tmp7138,
	rsb	r0, r2, r0	@ tmp7152, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7139, tmp7138
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7146,
	movle	sl, #0	@, tmp7148
	movgt	sl, #1	@, tmp7148
	ldrb	r8, [r6, #1875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7139,
	addgt	sl, sl, #1	@,, MisCnt.5341, tmp7148
	cmp	r0, #0	@ tmp7152,
	ldrb	r1, [r6, #1876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7159, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7153, tmp7152
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7153,
	addgt	sl, sl, #1	@,, MisCnt.5349, MisCnt.5341
	cmp	r8, #0	@ tmp7159,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7166, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7160, tmp7159
	ldrb	ip, [r6, #1877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7160,
	addgt	sl, sl, #1	@,, MisCnt.5357, MisCnt.5349
	cmp	r2, #0	@ tmp7166,
	ldrb	lr, [r6, #1878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7173, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7167, tmp7166
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7167,
	addgt	sl, sl, #1	@,, MisCnt.5365, MisCnt.5357
	cmp	ip, #0	@ tmp7173,
	ldrb	r0, [r6, #1879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7180, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7174, tmp7173
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7174,
	addgt	sl, sl, #1	@,, MisCnt.5373, MisCnt.5365
	cmp	r1, #0	@ tmp7180,
	rsb	r8, r2, r0	@ tmp7187, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7181, tmp7180
	cmp	r1, #2	@ tmp7181,
	addgt	sl, sl, #1	@,, MisCnt.5381, MisCnt.5373
	cmp	r8, #0	@ tmp7187,
	rsblt	r8, r8, #0	@ tmp7188, tmp7187
	cmp	r8, #2	@ tmp7188,
	addgt	sl, sl, #1	@,, tmp7191, MisCnt.5381
	cmp	sl, #2	@ tmp7191,
	bgt	.L41	@,
	ldr	r3, [r6, #1880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #1884]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1888]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp7209, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7209,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp7202, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7210, tmp7209
	cmp	r8, #0	@ tmp7202,
	rsb	r0, r2, r0	@ tmp7216, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7203, tmp7202
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7210,
	movle	r3, #0	@, tmp7212
	movgt	r3, #1	@, tmp7212
	ldrb	sl, [r6, #1895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7203,
	addgt	r3, r3, #1	@,, MisCnt.1728, tmp7212
	cmp	r0, #0	@ tmp7216,
	ldrb	r1, [r6, #1896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7223, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7217, tmp7216
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7217,
	addgt	r3, r3, #1	@,, MisCnt.1736, MisCnt.1728
	cmp	sl, #0	@ tmp7223,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7230, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7224, tmp7223
	ldrb	ip, [r6, #1897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7224,
	addgt	r3, r3, #1	@,, MisCnt.1747, MisCnt.1736
	cmp	r2, #0	@ tmp7230,
	ldrb	r8, [r6, #1898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7237, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7231, tmp7230
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7231,
	addgt	r3, r3, #1	@,, MisCnt.1758, MisCnt.1747
	cmp	ip, #0	@ tmp7237,
	ldrb	r0, [r6, #1899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7238, tmp7237
	rsb	r1, r1, r8	@ tmp7244, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7238,
	addgt	r3, r3, #1	@,, MisCnt.1768, MisCnt.1758
	cmp	r1, #0	@ tmp7244,
	rsb	ip, r2, r0	@ tmp7251, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7245, tmp7244
	cmp	r1, #2	@ tmp7245,
	addgt	r3, r3, #1	@,, MisCnt.1776, MisCnt.1768
	cmp	ip, #0	@ tmp7251,
	rsblt	ip, ip, #0	@ tmp7252, tmp7251
	cmp	ip, #2	@ tmp7252,
	addgt	r3, r3, #1	@,, tmp7255, MisCnt.1776
	cmp	r3, #2	@ tmp7255,
	movle	r0, #21	@ Result,
	ble	.L13	@,
.L41:
	ldr	ip, [r4, #1900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r4, #1904]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1908]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp7256,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp7256,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #1913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #1912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp7273, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp7273,
	ldrb	sl, [r4, #1914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7266, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7274, tmp7273
	cmp	lr, #0	@ tmp7266,
	rsblt	lr, lr, #0	@ tmp7267, tmp7266
	ldrb	r0, [r4, #1915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7274,
	movle	r1, #0	@, tmp7276
	movgt	r1, #1	@, tmp7276
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp7280, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7267,
	addgt	r1, r1, #1	@,, MisCnt.5407, tmp7276
	cmp	r8, #0	@ tmp7280,
	rsb	sl, r3, r0	@ tmp7287, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7281, tmp7280
	ldrb	ip, [r4, #1916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7281,
	movle	r8, r1	@, MisCnt.5415, MisCnt.5407
	addgt	r8, r1, #1	@,, MisCnt.5415, MisCnt.5407
	cmp	sl, #0	@ tmp7287,
	ldrb	r0, [r4, #1917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp7294, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7288, tmp7287
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7288,
	movle	r3, r8	@, MisCnt.5423, MisCnt.5415
	addgt	r3, r8, #1	@,, MisCnt.5423, MisCnt.5415
	cmp	ip, #0	@ tmp7294,
	ldrb	lr, [r4, #1918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp7301, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7295, tmp7294
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7295,
	movle	ip, r3	@, MisCnt.5431, MisCnt.5423
	addgt	ip, r3, #1	@,, MisCnt.5431, MisCnt.5423
	cmp	sl, #0	@ tmp7301,
	ldrb	r0, [r4, #1919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7302, tmp7301
	rsb	r8, r2, lr	@ tmp7308, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7302,
	movle	r1, ip	@, MisCnt.5439, MisCnt.5431
	addgt	r1, ip, #1	@,, MisCnt.5439, MisCnt.5431
	cmp	r8, #0	@ tmp7308,
	rsb	sl, r3, r0	@ tmp7315, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7309, tmp7308
	cmp	r8, #2	@ tmp7309,
	movle	ip, r1	@, MisCnt.5447, MisCnt.5439
	addgt	ip, r1, #1	@,, MisCnt.5447, MisCnt.5439
	cmp	sl, #0	@ tmp7315,
	rsblt	sl, sl, #0	@ tmp7316, tmp7315
	cmp	sl, #2	@ tmp7316,
	movle	r0, ip	@, tmp7319, MisCnt.5447
	addgt	r0, ip, #1	@,, tmp7319, MisCnt.5447
	cmp	r0, #2	@ tmp7319,
	bgt	.L42	@,
	ldr	r2, [r6, #1920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r6, #1924]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1928]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7337, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7337,
	ldrb	sl, [r6, #1934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7330, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7338, tmp7337
	cmp	lr, #0	@ tmp7330,
	rsb	r0, r2, sl	@ tmp7344, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7331, tmp7330
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7338,
	movle	r3, #0	@, tmp7340
	movgt	r3, #1	@, tmp7340
	ldrb	r8, [r6, #1935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7331,
	addgt	r3, r3, #1	@,, MisCnt.5473, tmp7340
	cmp	r0, #0	@ tmp7344,
	ldrb	r1, [r6, #1936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7351, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7345, tmp7344
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7345,
	addgt	r3, r3, #1	@,, MisCnt.5481, MisCnt.5473
	cmp	r8, #0	@ tmp7351,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7358, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7352, tmp7351
	ldrb	ip, [r6, #1937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7352,
	addgt	r3, r3, #1	@,, MisCnt.5489, MisCnt.5481
	cmp	r2, #0	@ tmp7358,
	ldrb	lr, [r6, #1938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp7365, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7359, tmp7358
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7359,
	addgt	r3, r3, #1	@,, MisCnt.5497, MisCnt.5489
	cmp	sl, #0	@ tmp7365,
	ldrb	r0, [r6, #1939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7372, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7366, tmp7365
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7366,
	addgt	r3, r3, #1	@,, MisCnt.5505, MisCnt.5497
	cmp	r1, #0	@ tmp7372,
	rsb	r8, r2, r0	@ tmp7379, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7373, tmp7372
	cmp	r1, #2	@ tmp7373,
	addgt	r3, r3, #1	@,, MisCnt.5513, MisCnt.5505
	cmp	r8, #0	@ tmp7379,
	rsblt	r8, r8, #0	@ tmp7380, tmp7379
	cmp	r8, #2	@ tmp7380,
	addgt	r3, r3, #1	@,, tmp7383, MisCnt.5513
	cmp	r3, #2	@ tmp7383,
	bgt	.L42	@,
	ldr	r2, [r6, #1940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r8, [r6, #1944]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1948]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7401, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7401,
	ldrb	r8, [r6, #1954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7394, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7402, tmp7401
	cmp	lr, #0	@ tmp7394,
	rsb	r0, r2, r8	@ tmp7408, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7395, tmp7394
	ldrb	sl, [r6, #1955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp7402,
	movle	r3, #0	@, tmp7404
	movgt	r3, #1	@, tmp7404
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp7395,
	addgt	r3, r3, #1	@,, MisCnt.5539, tmp7404
	cmp	r0, #0	@ tmp7408,
	ldrb	r1, [r6, #1956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp7415, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7409, tmp7408
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7409,
	addgt	r3, r3, #1	@,, MisCnt.5547, MisCnt.5539
	cmp	r8, #0	@ tmp7415,
	ldrb	sl, [r6, #1957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp7422, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7416, tmp7415
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp7416,
	addgt	r3, r3, #1	@,, MisCnt.5555, MisCnt.5547
	cmp	r2, #0	@ tmp7422,
	ldrb	lr, [r6, #1958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp7429, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7423, tmp7422
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7423,
	addgt	r3, r3, #1	@,, MisCnt.5563, MisCnt.5555
	cmp	ip, #0	@ tmp7429,
	ldrb	r0, [r6, #1959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7436, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7430, tmp7429
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7430,
	addgt	r3, r3, #1	@,, MisCnt.5571, MisCnt.5563
	cmp	r1, #0	@ tmp7436,
	rsb	r8, sl, r0	@ tmp7443, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7437, tmp7436
	cmp	r1, #2	@ tmp7437,
	addgt	r3, r3, #1	@,, MisCnt.5579, MisCnt.5571
	cmp	r8, #0	@ tmp7443,
	rsblt	r8, r8, #0	@ tmp7444, tmp7443
	cmp	r8, #2	@ tmp7444,
	addgt	r3, r3, #1	@,, tmp7447, MisCnt.5579
	cmp	r3, #2	@ tmp7447,
	bgt	.L42	@,
	ldr	r2, [r6, #1960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r6, #1964]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1968]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7465, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7465,
	ldrb	sl, [r6, #1974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7458, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7466, tmp7465
	cmp	lr, #0	@ tmp7458,
	rsb	r0, r2, sl	@ tmp7472, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7459, tmp7458
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7466,
	movle	r3, #0	@, tmp7468
	movgt	r3, #1	@, tmp7468
	ldrb	r8, [r6, #1975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7459,
	addgt	r3, r3, #1	@,, MisCnt.5605, tmp7468
	cmp	r0, #0	@ tmp7472,
	ldrb	r1, [r6, #1976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7479, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7473, tmp7472
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7473,
	addgt	r3, r3, #1	@,, MisCnt.5613, MisCnt.5605
	cmp	r8, #0	@ tmp7479,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7486, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7480, tmp7479
	ldrb	ip, [r6, #1977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7480,
	addgt	r3, r3, #1	@,, MisCnt.5621, MisCnt.5613
	cmp	r2, #0	@ tmp7486,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp7493, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7487, tmp7486
	ldrb	lr, [r6, #1978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp7487,
	addgt	r3, r3, #1	@,, MisCnt.5629, MisCnt.5621
	cmp	ip, #0	@ tmp7493,
	ldrb	r0, [r6, #1979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp7500, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7494, tmp7493
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7494,
	addgt	r3, r3, #1	@,, MisCnt.5637, MisCnt.5629
	cmp	r1, #0	@ tmp7500,
	rsb	sl, r8, r0	@ tmp7507, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7501, tmp7500
	cmp	r1, #2	@ tmp7501,
	addgt	r3, r3, #1	@,, MisCnt.5645, MisCnt.5637
	cmp	sl, #0	@ tmp7507,
	rsblt	sl, sl, #0	@ tmp7508, tmp7507
	cmp	sl, #2	@ tmp7508,
	addgt	r3, r3, #1	@,, tmp7511, MisCnt.5645
	cmp	r3, #2	@ tmp7511,
	bgt	.L42	@,
	ldr	r3, [r6, #1980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #1984]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1988]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp7529, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7529,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp7522, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7530, tmp7529
	cmp	r8, #0	@ tmp7522,
	rsb	r0, r2, r0	@ tmp7536, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7523, tmp7522
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7530,
	movle	r3, #0	@, tmp7532
	movgt	r3, #1	@, tmp7532
	ldrb	sl, [r6, #1995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7523,
	addgt	r3, r3, #1	@,, MisCnt.1796, tmp7532
	cmp	r0, #0	@ tmp7536,
	ldrb	r1, [r6, #1996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7543, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7537, tmp7536
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7537,
	addgt	r3, r3, #1	@,, MisCnt.1807, MisCnt.1796
	cmp	sl, #0	@ tmp7543,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7550, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7544, tmp7543
	ldrb	ip, [r6, #1997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7544,
	addgt	r3, r3, #1	@,, MisCnt.1818, MisCnt.1807
	cmp	r2, #0	@ tmp7550,
	ldrb	r8, [r6, #1998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7557, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7551, tmp7550
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7551,
	addgt	r3, r3, #1	@,, MisCnt.1827, MisCnt.1818
	cmp	ip, #0	@ tmp7557,
	ldrb	r0, [r6, #1999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7558, tmp7557
	rsb	r1, r1, r8	@ tmp7564, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7558,
	addgt	r3, r3, #1	@,, MisCnt.1838, MisCnt.1827
	cmp	r1, #0	@ tmp7564,
	rsb	ip, r2, r0	@ tmp7571, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7565, tmp7564
	cmp	r1, #2	@ tmp7565,
	addgt	r3, r3, #1	@,, MisCnt.1849, MisCnt.1838
	cmp	ip, #0	@ tmp7571,
	rsblt	ip, ip, #0	@ tmp7572, tmp7571
	cmp	ip, #2	@ tmp7572,
	addgt	r3, r3, #1	@,, tmp7575, MisCnt.1849
	cmp	r3, #2	@ tmp7575,
	movle	r0, #25	@ Result,
	ble	.L13	@,
.L42:
	ldr	ip, [r4, #2000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r4, #2004]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2008]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp7576,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp7576,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #2013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp7593, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp7593,
	ldrb	sl, [r4, #2014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7586, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7594, tmp7593
	cmp	lr, #0	@ tmp7586,
	rsblt	lr, lr, #0	@ tmp7587, tmp7586
	ldrb	r0, [r4, #2015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7594,
	movle	r1, #0	@, tmp7596
	movgt	r1, #1	@, tmp7596
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp7600, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7587,
	addgt	r1, r1, #1	@,, MisCnt.5671, tmp7596
	cmp	r8, #0	@ tmp7600,
	rsb	sl, r3, r0	@ tmp7607, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7601, tmp7600
	ldrb	ip, [r4, #2016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7601,
	movle	r8, r1	@, MisCnt.5679, MisCnt.5671
	addgt	r8, r1, #1	@,, MisCnt.5679, MisCnt.5671
	cmp	sl, #0	@ tmp7607,
	ldrb	r0, [r4, #2017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp7614, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7608, tmp7607
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7608,
	movle	r3, r8	@, MisCnt.5687, MisCnt.5679
	addgt	r3, r8, #1	@,, MisCnt.5687, MisCnt.5679
	cmp	ip, #0	@ tmp7614,
	ldrb	lr, [r4, #2018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp7621, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7615, tmp7614
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7615,
	movle	ip, r3	@, MisCnt.5695, MisCnt.5687
	addgt	ip, r3, #1	@,, MisCnt.5695, MisCnt.5687
	cmp	sl, #0	@ tmp7621,
	ldrb	r0, [r4, #2019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7622, tmp7621
	rsb	r8, r2, lr	@ tmp7628, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7622,
	movle	r1, ip	@, MisCnt.5703, MisCnt.5695
	addgt	r1, ip, #1	@,, MisCnt.5703, MisCnt.5695
	cmp	r8, #0	@ tmp7628,
	rsb	sl, r3, r0	@ tmp7635, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7629, tmp7628
	cmp	r8, #2	@ tmp7629,
	movle	ip, r1	@, MisCnt.5711, MisCnt.5703
	addgt	ip, r1, #1	@,, MisCnt.5711, MisCnt.5703
	cmp	sl, #0	@ tmp7635,
	rsblt	sl, sl, #0	@ tmp7636, tmp7635
	cmp	sl, #2	@ tmp7636,
	movle	r0, ip	@, tmp7639, MisCnt.5711
	addgt	r0, ip, #1	@,, tmp7639, MisCnt.5711
	cmp	r0, #2	@ tmp7639,
	bgt	.L43	@,
	ldr	r2, [r6, #2020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r6, #2024]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2028]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7657, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7657,
	ldrb	sl, [r6, #2034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7650, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7658, tmp7657
	cmp	lr, #0	@ tmp7650,
	rsb	r0, r2, sl	@ tmp7664, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7651, tmp7650
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7658,
	movle	r3, #0	@, tmp7660
	movgt	r3, #1	@, tmp7660
	ldrb	r8, [r6, #2035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7651,
	addgt	r3, r3, #1	@,, MisCnt.5737, tmp7660
	cmp	r0, #0	@ tmp7664,
	ldrb	r1, [r6, #2036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7671, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7665, tmp7664
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7665,
	addgt	r3, r3, #1	@,, MisCnt.5745, MisCnt.5737
	cmp	r8, #0	@ tmp7671,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7678, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7672, tmp7671
	ldrb	ip, [r6, #2037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7672,
	addgt	r3, r3, #1	@,, MisCnt.5753, MisCnt.5745
	cmp	r2, #0	@ tmp7678,
	ldrb	lr, [r6, #2038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp7685, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7679, tmp7678
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7679,
	addgt	r3, r3, #1	@,, MisCnt.5761, MisCnt.5753
	cmp	sl, #0	@ tmp7685,
	ldrb	r0, [r6, #2039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7692, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7686, tmp7685
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7686,
	addgt	r3, r3, #1	@,, MisCnt.5769, MisCnt.5761
	cmp	r1, #0	@ tmp7692,
	rsb	r8, r2, r0	@ tmp7699, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7693, tmp7692
	cmp	r1, #2	@ tmp7693,
	addgt	r3, r3, #1	@,, MisCnt.5777, MisCnt.5769
	cmp	r8, #0	@ tmp7699,
	rsblt	r8, r8, #0	@ tmp7700, tmp7699
	cmp	r8, #2	@ tmp7700,
	addgt	r3, r3, #1	@,, tmp7703, MisCnt.5777
	cmp	r3, #2	@ tmp7703,
	bgt	.L43	@,
	ldr	r2, [r6, #2040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r8, [r6, #2044]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2048]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7721, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7721,
	ldrb	r8, [r6, #2054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7714, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7722, tmp7721
	cmp	lr, #0	@ tmp7714,
	rsb	r0, r2, r8	@ tmp7728, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7715, tmp7714
	ldrb	sl, [r6, #2055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp7722,
	movle	r3, #0	@, tmp7724
	movgt	r3, #1	@, tmp7724
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp7715,
	addgt	r3, r3, #1	@,, MisCnt.5803, tmp7724
	cmp	r0, #0	@ tmp7728,
	ldrb	r1, [r6, #2056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp7735, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7729, tmp7728
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7729,
	addgt	r3, r3, #1	@,, MisCnt.5811, MisCnt.5803
	cmp	r8, #0	@ tmp7735,
	ldrb	sl, [r6, #2057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp7742, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7736, tmp7735
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp7736,
	addgt	r3, r3, #1	@,, MisCnt.5819, MisCnt.5811
	cmp	r2, #0	@ tmp7742,
	ldrb	lr, [r6, #2058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp7749, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7743, tmp7742
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7743,
	addgt	r3, r3, #1	@,, MisCnt.5827, MisCnt.5819
	cmp	ip, #0	@ tmp7749,
	ldrb	r0, [r6, #2059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7756, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7750, tmp7749
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7750,
	addgt	r3, r3, #1	@,, MisCnt.5835, MisCnt.5827
	cmp	r1, #0	@ tmp7756,
	rsb	r8, sl, r0	@ tmp7763, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7757, tmp7756
	cmp	r1, #2	@ tmp7757,
	addgt	r3, r3, #1	@,, MisCnt.5843, MisCnt.5835
	cmp	r8, #0	@ tmp7763,
	rsblt	r8, r8, #0	@ tmp7764, tmp7763
	cmp	r8, #2	@ tmp7764,
	addgt	r3, r3, #1	@,, tmp7767, MisCnt.5843
	cmp	r3, #2	@ tmp7767,
	bgt	.L43	@,
	ldr	r2, [r6, #2060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r6, #2064]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2068]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7785, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7785,
	ldrb	sl, [r6, #2074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7778, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7786, tmp7785
	cmp	lr, #0	@ tmp7778,
	rsb	r0, r2, sl	@ tmp7792, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7779, tmp7778
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7786,
	movle	r3, #0	@, tmp7788
	movgt	r3, #1	@, tmp7788
	ldrb	r8, [r6, #2075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7779,
	addgt	r3, r3, #1	@,, MisCnt.5869, tmp7788
	cmp	r0, #0	@ tmp7792,
	ldrb	r1, [r6, #2076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7799, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7793, tmp7792
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7793,
	addgt	r3, r3, #1	@,, MisCnt.5877, MisCnt.5869
	cmp	r8, #0	@ tmp7799,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7806, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7800, tmp7799
	ldrb	ip, [r6, #2077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7800,
	addgt	r3, r3, #1	@,, MisCnt.5885, MisCnt.5877
	cmp	r2, #0	@ tmp7806,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp7813, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7807, tmp7806
	ldrb	lr, [r6, #2078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp7807,
	addgt	r3, r3, #1	@,, MisCnt.5893, MisCnt.5885
	cmp	ip, #0	@ tmp7813,
	ldrb	r0, [r6, #2079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp7820, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7814, tmp7813
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7814,
	addgt	r3, r3, #1	@,, MisCnt.5901, MisCnt.5893
	cmp	r1, #0	@ tmp7820,
	rsb	sl, r8, r0	@ tmp7827, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7821, tmp7820
	cmp	r1, #2	@ tmp7821,
	addgt	r3, r3, #1	@,, MisCnt.5909, MisCnt.5901
	cmp	sl, #0	@ tmp7827,
	rsblt	sl, sl, #0	@ tmp7828, tmp7827
	cmp	sl, #2	@ tmp7828,
	addgt	r3, r3, #1	@,, tmp7831, MisCnt.5909
	cmp	r3, #2	@ tmp7831,
	bgt	.L43	@,
	ldr	r3, [r6, #2080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #2084]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2088]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp7849, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7849,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp7842, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7850, tmp7849
	cmp	r8, #0	@ tmp7842,
	rsb	r0, r2, r0	@ tmp7856, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7843, tmp7842
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7850,
	movle	r3, #0	@, tmp7852
	movgt	r3, #1	@, tmp7852
	ldrb	sl, [r6, #2095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7843,
	addgt	r3, r3, #1	@,, MisCnt.1866, tmp7852
	cmp	r0, #0	@ tmp7856,
	ldrb	r1, [r6, #2096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7863, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7857, tmp7856
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7857,
	addgt	r3, r3, #1	@,, MisCnt.1877, MisCnt.1866
	cmp	sl, #0	@ tmp7863,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7870, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7864, tmp7863
	ldrb	ip, [r6, #2097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7864,
	addgt	r3, r3, #1	@,, MisCnt.1888, MisCnt.1877
	cmp	r2, #0	@ tmp7870,
	ldrb	r8, [r6, #2098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7877, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7871, tmp7870
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7871,
	addgt	r3, r3, #1	@,, MisCnt.1898, MisCnt.1888
	cmp	ip, #0	@ tmp7877,
	ldrb	r0, [r6, #2099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7878, tmp7877
	rsb	r1, r1, r8	@ tmp7884, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7878,
	addgt	r3, r3, #1	@,, MisCnt.1908, MisCnt.1898
	cmp	r1, #0	@ tmp7884,
	rsb	ip, r2, r0	@ tmp7891, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7885, tmp7884
	cmp	r1, #2	@ tmp7885,
	addgt	r3, r3, #1	@,, MisCnt.1919, MisCnt.1908
	cmp	ip, #0	@ tmp7891,
	rsblt	ip, ip, #0	@ tmp7892, tmp7891
	cmp	ip, #2	@ tmp7892,
	addgt	r3, r3, #1	@,, tmp7895, MisCnt.1919
	cmp	r3, #2	@ tmp7895,
	movle	r0, #27	@ Result,
	ble	.L13	@,
.L43:
	ldr	ip, [r4, #2100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r4, #2104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2108]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp7896,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp7896,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #2113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #2112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp7913, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp7913,
	ldrb	sl, [r4, #2114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7906, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7914, tmp7913
	cmp	lr, #0	@ tmp7906,
	rsblt	lr, lr, #0	@ tmp7907, tmp7906
	ldrb	r0, [r4, #2115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7914,
	movle	r1, #0	@, tmp7916
	movgt	r1, #1	@, tmp7916
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp7920, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7907,
	addgt	r1, r1, #1	@,, MisCnt.5935, tmp7916
	cmp	r8, #0	@ tmp7920,
	rsb	sl, r3, r0	@ tmp7927, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7921, tmp7920
	ldrb	ip, [r4, #2116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7921,
	movle	r8, r1	@, MisCnt.5943, MisCnt.5935
	addgt	r8, r1, #1	@,, MisCnt.5943, MisCnt.5935
	cmp	sl, #0	@ tmp7927,
	ldrb	r0, [r4, #2117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp7934, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7928, tmp7927
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7928,
	movle	r3, r8	@, MisCnt.5951, MisCnt.5943
	addgt	r3, r8, #1	@,, MisCnt.5951, MisCnt.5943
	cmp	ip, #0	@ tmp7934,
	ldrb	lr, [r4, #2118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp7941, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7935, tmp7934
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7935,
	movle	ip, r3	@, MisCnt.5959, MisCnt.5951
	addgt	ip, r3, #1	@,, MisCnt.5959, MisCnt.5951
	cmp	sl, #0	@ tmp7941,
	ldrb	r0, [r4, #2119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7942, tmp7941
	rsb	r8, r2, lr	@ tmp7948, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7942,
	movle	r1, ip	@, MisCnt.5967, MisCnt.5959
	addgt	r1, ip, #1	@,, MisCnt.5967, MisCnt.5959
	cmp	r8, #0	@ tmp7948,
	rsb	sl, r3, r0	@ tmp7955, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7949, tmp7948
	cmp	r8, #2	@ tmp7949,
	movle	ip, r1	@, MisCnt.5975, MisCnt.5967
	addgt	ip, r1, #1	@,, MisCnt.5975, MisCnt.5967
	cmp	sl, #0	@ tmp7955,
	rsblt	sl, sl, #0	@ tmp7956, tmp7955
	cmp	sl, #2	@ tmp7956,
	movle	r0, ip	@, tmp7959, MisCnt.5975
	addgt	r0, ip, #1	@,, tmp7959, MisCnt.5975
	cmp	r0, #2	@ tmp7959,
	bgt	.L44	@,
	ldr	r2, [r6, #2120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r6, #2124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2128]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7977, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7977,
	ldrb	sl, [r6, #2134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7970, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7978, tmp7977
	cmp	lr, #0	@ tmp7970,
	rsb	r0, r2, sl	@ tmp7984, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7971, tmp7970
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7978,
	movle	r3, #0	@, tmp7980
	movgt	r3, #1	@, tmp7980
	ldrb	r8, [r6, #2135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7971,
	addgt	r3, r3, #1	@,, MisCnt.6001, tmp7980
	cmp	r0, #0	@ tmp7984,
	ldrb	r1, [r6, #2136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7991, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7985, tmp7984
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7985,
	addgt	r3, r3, #1	@,, MisCnt.6009, MisCnt.6001
	cmp	r8, #0	@ tmp7991,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7998, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7992, tmp7991
	ldrb	ip, [r6, #2137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7992,
	addgt	r3, r3, #1	@,, MisCnt.6017, MisCnt.6009
	cmp	r2, #0	@ tmp7998,
	ldrb	lr, [r6, #2138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp8005, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7999, tmp7998
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7999,
	addgt	r3, r3, #1	@,, MisCnt.6025, MisCnt.6017
	cmp	sl, #0	@ tmp8005,
	ldrb	r0, [r6, #2139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8012, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8006, tmp8005
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp8006,
	addgt	r3, r3, #1	@,, MisCnt.6033, MisCnt.6025
	cmp	r1, #0	@ tmp8012,
	rsb	r8, r2, r0	@ tmp8019, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8013, tmp8012
	cmp	r1, #2	@ tmp8013,
	addgt	r3, r3, #1	@,, MisCnt.6041, MisCnt.6033
	cmp	r8, #0	@ tmp8019,
	rsblt	r8, r8, #0	@ tmp8020, tmp8019
	cmp	r8, #2	@ tmp8020,
	addgt	r3, r3, #1	@,, tmp8023, MisCnt.6041
	cmp	r3, #2	@ tmp8023,
	bgt	.L44	@,
	ldr	r2, [r6, #2140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r8, [r6, #2144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2148]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp8041, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8041,
	ldrb	r8, [r6, #2154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8034, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8042, tmp8041
	cmp	lr, #0	@ tmp8034,
	rsb	r0, r2, r8	@ tmp8048, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8035, tmp8034
	ldrb	sl, [r6, #2155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8042,
	movle	r3, #0	@, tmp8044
	movgt	r3, #1	@, tmp8044
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp8035,
	addgt	r3, r3, #1	@,, MisCnt.6067, tmp8044
	cmp	r0, #0	@ tmp8048,
	ldrb	r1, [r6, #2156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp8055, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8049, tmp8048
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8049,
	addgt	r3, r3, #1	@,, MisCnt.6075, MisCnt.6067
	cmp	r8, #0	@ tmp8055,
	ldrb	sl, [r6, #2157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp8062, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8056, tmp8055
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp8056,
	addgt	r3, r3, #1	@,, MisCnt.6083, MisCnt.6075
	cmp	r2, #0	@ tmp8062,
	ldrb	lr, [r6, #2158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp8069, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8063, tmp8062
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8063,
	addgt	r3, r3, #1	@,, MisCnt.6091, MisCnt.6083
	cmp	ip, #0	@ tmp8069,
	ldrb	r0, [r6, #2159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8076, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8070, tmp8069
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8070,
	addgt	r3, r3, #1	@,, MisCnt.6099, MisCnt.6091
	cmp	r1, #0	@ tmp8076,
	rsb	r8, sl, r0	@ tmp8083, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8077, tmp8076
	cmp	r1, #2	@ tmp8077,
	addgt	r3, r3, #1	@,, MisCnt.6107, MisCnt.6099
	cmp	r8, #0	@ tmp8083,
	rsblt	r8, r8, #0	@ tmp8084, tmp8083
	cmp	r8, #2	@ tmp8084,
	addgt	r3, r3, #1	@,, tmp8087, MisCnt.6107
	cmp	r3, #2	@ tmp8087,
	bgt	.L44	@,
	ldr	r2, [r6, #2160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	sl, [r6, #2164]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2168]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp8105, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8105,
	ldrb	sl, [r6, #2174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8098, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8106, tmp8105
	cmp	lr, #0	@ tmp8098,
	rsb	r0, r2, sl	@ tmp8112, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8099, tmp8098
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8106,
	movle	r3, #0	@, tmp8108
	movgt	r3, #1	@, tmp8108
	ldrb	r8, [r6, #2175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8099,
	addgt	r3, r3, #1	@,, MisCnt.6133, tmp8108
	cmp	r0, #0	@ tmp8112,
	ldrb	r1, [r6, #2176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8119, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8113, tmp8112
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8113,
	addgt	r3, r3, #1	@,, MisCnt.6141, MisCnt.6133
	cmp	r8, #0	@ tmp8119,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp8126, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8120, tmp8119
	ldrb	ip, [r6, #2177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8120,
	addgt	r3, r3, #1	@,, MisCnt.6149, MisCnt.6141
	cmp	r2, #0	@ tmp8126,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp8133, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8127, tmp8126
	ldrb	lr, [r6, #2178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp8127,
	addgt	r3, r3, #1	@,, MisCnt.6157, MisCnt.6149
	cmp	ip, #0	@ tmp8133,
	ldrb	r0, [r6, #2179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp8140, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8134, tmp8133
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8134,
	addgt	r3, r3, #1	@,, MisCnt.6165, MisCnt.6157
	cmp	r1, #0	@ tmp8140,
	rsb	sl, r8, r0	@ tmp8147, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8141, tmp8140
	cmp	r1, #2	@ tmp8141,
	addgt	r3, r3, #1	@,, MisCnt.6173, MisCnt.6165
	cmp	sl, #0	@ tmp8147,
	rsblt	sl, sl, #0	@ tmp8148, tmp8147
	cmp	sl, #2	@ tmp8148,
	addgt	r3, r3, #1	@,, tmp8151, MisCnt.6173
	cmp	r3, #2	@ tmp8151,
	bgt	.L44	@,
	ldr	r3, [r6, #2180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #2184]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp8169, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8169,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp8162, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8170, tmp8169
	cmp	r8, #0	@ tmp8162,
	rsb	r0, r2, r0	@ tmp8176, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8163, tmp8162
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8170,
	movle	r3, #0	@, tmp8172
	movgt	r3, #1	@, tmp8172
	ldrb	sl, [r6, #2195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8163,
	addgt	r3, r3, #1	@,, MisCnt.1940, tmp8172
	cmp	r0, #0	@ tmp8176,
	ldrb	r1, [r6, #2196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8183, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8177, tmp8176
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8177,
	addgt	r3, r3, #1	@,, MisCnt.1949, MisCnt.1940
	cmp	sl, #0	@ tmp8183,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8190, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8184, tmp8183
	ldrb	ip, [r6, #2197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8184,
	addgt	r3, r3, #1	@,, MisCnt.1960, MisCnt.1949
	cmp	r2, #0	@ tmp8190,
	ldrb	r8, [r6, #2198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8197, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8191, tmp8190
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8191,
	addgt	r3, r3, #1	@,, MisCnt.1971, MisCnt.1960
	cmp	ip, #0	@ tmp8197,
	ldrb	r0, [r6, #2199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8198, tmp8197
	rsb	r1, r1, r8	@ tmp8204, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8198,
	addgt	r3, r3, #1	@,, MisCnt.1980, MisCnt.1971
	cmp	r1, #0	@ tmp8204,
	rsb	ip, r2, r0	@ tmp8211, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8205, tmp8204
	cmp	r1, #2	@ tmp8205,
	addgt	r3, r3, #1	@,, MisCnt.1991, MisCnt.1980
	cmp	ip, #0	@ tmp8211,
	rsblt	ip, ip, #0	@ tmp8212, tmp8211
	cmp	ip, #2	@ tmp8212,
	addgt	r3, r3, #1	@,, tmp8215, MisCnt.1991
	cmp	r3, #2	@ tmp8215,
	movle	r0, #28	@ Result,
	ble	.L13	@,
.L44:
	ldr	r3, [r4, #2200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r4, #2204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #2208]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp8216,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp8216,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r4, #2213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #2212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp8233, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8233,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp8226, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #2214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8234, tmp8233
	cmp	r8, #0	@ tmp8226,
	rsb	r0, r2, r0	@ tmp8240, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8227, tmp8226
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8234,
	movle	r3, #0	@, tmp8236
	movgt	r3, #1	@, tmp8236
	ldrb	sl, [r4, #2215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8227,
	addgt	r3, r3, #1	@,, MisCnt.6199, tmp8236
	cmp	r0, #0	@ tmp8240,
	ldrb	r1, [r4, #2216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8247, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8241, tmp8240
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8241,
	addgt	r3, r3, #1	@,, MisCnt.6207, MisCnt.6199
	cmp	sl, #0	@ tmp8247,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8254, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8248, tmp8247
	ldrb	ip, [r4, #2217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8248,
	addgt	r3, r3, #1	@,, MisCnt.6215, MisCnt.6207
	cmp	r2, #0	@ tmp8254,
	ldrb	r8, [r4, #2218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8261, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8255, tmp8254
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8255,
	addgt	r3, r3, #1	@,, MisCnt.6223, MisCnt.6215
	cmp	ip, #0	@ tmp8261,
	ldrb	r0, [r4, #2219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8262, tmp8261
	rsb	r1, r1, r8	@ tmp8268, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8262,
	addgt	r3, r3, #1	@,, MisCnt.6231, MisCnt.6223
	cmp	r1, #0	@ tmp8268,
	rsb	ip, r2, r0	@ tmp8275, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8269, tmp8268
	cmp	r1, #2	@ tmp8269,
	addgt	r3, r3, #1	@,, MisCnt.6239, MisCnt.6231
	cmp	ip, #0	@ tmp8275,
	rsblt	ip, ip, #0	@ tmp8276, tmp8275
	cmp	ip, #2	@ tmp8276,
	addgt	r3, r3, #1	@,, tmp8279, MisCnt.6239
	cmp	r3, #2	@ tmp8279,
	bgt	.L46	@,
	ldr	r3, [r6, #2220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #2224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp8297, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8297,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp8290, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8298, tmp8297
	cmp	r4, #0	@ tmp8290,
	rsb	r0, r2, r0	@ tmp8304, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp8291, tmp8290
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8298,
	movle	r3, #0	@, tmp8300
	movgt	r3, #1	@, tmp8300
	ldrb	r8, [r6, #2235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp8291,
	addgt	r3, r3, #1	@,, MisCnt.6265, tmp8300
	cmp	r0, #0	@ tmp8304,
	ldrb	r1, [r6, #2236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8311, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8305, tmp8304
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8305,
	addgt	r3, r3, #1	@,, MisCnt.6273, MisCnt.6265
	cmp	r8, #0	@ tmp8311,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8318, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8312, tmp8311
	ldrb	ip, [r6, #2237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8312,
	addgt	r3, r3, #1	@,, MisCnt.6281, MisCnt.6273
	cmp	r2, #0	@ tmp8318,
	ldrb	r4, [r6, #2238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8325, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8319, tmp8318
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8319,
	addgt	r3, r3, #1	@,, MisCnt.6289, MisCnt.6281
	cmp	ip, #0	@ tmp8325,
	ldrb	r0, [r6, #2239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8326, tmp8325
	rsb	r1, r1, r4	@ tmp8332, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8326,
	addgt	r3, r3, #1	@,, MisCnt.6297, MisCnt.6289
	cmp	r1, #0	@ tmp8332,
	rsb	ip, r2, r0	@ tmp8339, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8333, tmp8332
	cmp	r1, #2	@ tmp8333,
	addgt	r3, r3, #1	@,, MisCnt.6305, MisCnt.6297
	cmp	ip, #0	@ tmp8339,
	rsblt	ip, ip, #0	@ tmp8340, tmp8339
	cmp	ip, #2	@ tmp8340,
	addgt	r3, r3, #1	@,, tmp8343, MisCnt.6305
	cmp	r3, #2	@ tmp8343,
	bgt	.L46	@,
	ldr	r3, [r6, #2240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #2244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp8361, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8361,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp8354, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8362, tmp8361
	cmp	r4, #0	@ tmp8354,
	rsb	r0, r2, r0	@ tmp8368, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp8355, tmp8354
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8362,
	movle	r3, #0	@, tmp8364
	movgt	r3, #1	@, tmp8364
	ldrb	r8, [r6, #2255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp8355,
	addgt	r3, r3, #1	@,, MisCnt.6331, tmp8364
	cmp	r0, #0	@ tmp8368,
	ldrb	r1, [r6, #2256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8375, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8369, tmp8368
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8369,
	addgt	r3, r3, #1	@,, MisCnt.6339, MisCnt.6331
	cmp	r8, #0	@ tmp8375,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8382, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8376, tmp8375
	ldrb	ip, [r6, #2257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8376,
	addgt	r3, r3, #1	@,, MisCnt.6347, MisCnt.6339
	cmp	r2, #0	@ tmp8382,
	ldrb	r4, [r6, #2258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8389, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8383, tmp8382
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8383,
	addgt	r3, r3, #1	@,, MisCnt.6355, MisCnt.6347
	cmp	ip, #0	@ tmp8389,
	ldrb	r0, [r6, #2259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8390, tmp8389
	rsb	r1, r1, r4	@ tmp8396, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8390,
	addgt	r3, r3, #1	@,, MisCnt.6363, MisCnt.6355
	cmp	r1, #0	@ tmp8396,
	rsb	ip, r2, r0	@ tmp8403, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8397, tmp8396
	cmp	r1, #2	@ tmp8397,
	addgt	r3, r3, #1	@,, MisCnt.6371, MisCnt.6363
	cmp	ip, #0	@ tmp8403,
	rsblt	ip, ip, #0	@ tmp8404, tmp8403
	cmp	ip, #2	@ tmp8404,
	addgt	r3, r3, #1	@,, tmp8407, MisCnt.6371
	cmp	r3, #2	@ tmp8407,
	bgt	.L46	@,
	ldr	r3, [r6, #2260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12189
	ldr	r2, [r6, #2264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp8425, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8425,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp8418, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8426, tmp8425
	cmp	r4, #0	@ tmp8418,
	rsb	r0, r2, r0	@ tmp8432, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp8419, tmp8418
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8426,
	movle	r3, #0	@, tmp8428
	movgt	r3, #1	@, tmp8428
	ldrb	r8, [r6, #2275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp8419,
	addgt	r3, r3, #1	@,, MisCnt.6397, tmp8428
	cmp	r0, #0	@ tmp8432,
	ldrb	r1, [r6, #2276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8439, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8433, tmp8432
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8433,
	addgt	r3, r3, #1	@,, MisCnt.6405, MisCnt.6397
	cmp	r8, #0	@ tmp8439,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8446, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8440, tmp8439
	ldrb	ip, [r6, #2277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8440,
	addgt	r3, r3, #1	@,, MisCnt.6413, MisCnt.6405
	cmp	r2, #0	@ tmp8446,
	ldrb	r4, [r6, #2278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8453, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8447, tmp8446
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8447,
	addgt	r3, r3, #1	@,, MisCnt.6421, MisCnt.6413
	cmp	ip, #0	@ tmp8453,
	ldrb	r0, [r6, #2279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8454, tmp8453
	rsb	r1, r1, r4	@ tmp8460, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8454,
	addgt	r3, r3, #1	@,, MisCnt.6429, MisCnt.6421
	cmp	r1, #0	@ tmp8460,
	rsb	ip, r2, r0	@ tmp8467, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8461, tmp8460
	cmp	r1, #2	@ tmp8461,
	addgt	r3, r3, #1	@,, MisCnt.6437, MisCnt.6429
	cmp	ip, #0	@ tmp8467,
	rsblt	ip, ip, #0	@ tmp8468, tmp8467
	cmp	ip, #2	@ tmp8468,
	addgt	r3, r3, #1	@,, tmp8471, MisCnt.6437
	cmp	r3, #2	@ tmp8471,
	bgt	.L46	@,
	ldr	r3, [r6, #2280]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r6, #2284]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12189
	ldr	lr, [r6, #2288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #2292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp8489, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8489,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp8482, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8490, tmp8489
	cmp	r4, #0	@ tmp8482,
	rsb	r0, r2, r0	@ tmp8496, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp8483, tmp8482
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8490,
	movle	r3, #0	@, tmp8492
	movgt	r3, #1	@, tmp8492
	ldrb	r5, [r6, #2295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp8483,
	addgt	r3, r3, #1	@,, MisCnt.2012, tmp8492
	cmp	r0, #0	@ tmp8496,
	ldrb	r1, [r6, #2296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp8503, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8497, tmp8496
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8497,
	addgt	r3, r3, #1	@,, MisCnt.2022, MisCnt.2012
	cmp	r5, #0	@ tmp8503,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8510, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8504, tmp8503
	ldrb	ip, [r6, #2297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8504,
	addgt	r3, r3, #1	@,, MisCnt.2031, MisCnt.2022
	cmp	r2, #0	@ tmp8510,
	ldrb	r4, [r6, #2298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8517, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8511, tmp8510
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8511,
	addgt	r3, r3, #1	@,, MisCnt.2042, MisCnt.2031
	cmp	ip, #0	@ tmp8517,
	ldrb	r0, [r6, #2299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8518, tmp8517
	rsb	r1, r1, r4	@ tmp8524, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8518,
	addgt	r3, r3, #1	@,, MisCnt.2053, MisCnt.2042
	cmp	r1, #0	@ tmp8524,
	rsb	ip, r2, r0	@ tmp8531, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8525, tmp8524
	cmp	r1, #2	@ tmp8525,
	addgt	r3, r3, #1	@,, MisCnt.2061, MisCnt.2053
	cmp	ip, #0	@ tmp8531,
	rsblt	ip, ip, #0	@ tmp8532, tmp8531
	cmp	ip, #2	@ tmp8532,
	addgt	r3, r3, #1	@,, tmp8535, MisCnt.2061
	cmp	r3, #2	@ tmp8535,
	bgt	.L46	@,
	mov	r0, #29	@ Result,
	b	.L13	@
.L71:
	movw	r4, #:lower16:.LANCHOR0	@ tmp12186,
	movt	r4, #:upper16:.LANCHOR0	@ tmp12186,
	add	r7, sp, #12	@ tmp12187,,
	mov	r1, r5	@, pDetPara
	ldr	ip, [r4, #0]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r4, #4]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12187
	ldr	lr, [r4, #8]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r4, #13]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #12]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, r6	@ tmp1193, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1193,
	ldrb	r0, [r4, #14]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r8	@ tmp1186, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1194, tmp1193
	cmp	lr, #0	@ tmp1186,
	rsb	sl, r2, r0	@ tmp1200, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1187, tmp1186
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1194,
	movle	r3, #0	@, tmp1196
	movgt	r3, #1	@, tmp1196
	ldrb	r6, [r4, #15]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1187,
	addgt	r3, r3, #1	@,, MisCnt.7849, tmp1196
	cmp	sl, #0	@ tmp1200,
	ldrb	r1, [r4, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp1207, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1201, tmp1200
	ldrb	r8, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1201,
	addgt	r3, r3, #1	@,, MisCnt.7857, MisCnt.7849
	cmp	r6, #0	@ tmp1207,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r8, r1	@ tmp1214, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp1208, tmp1207
	ldrb	ip, [r4, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp1208,
	addgt	r3, r3, #1	@,, MisCnt.7865, MisCnt.7857
	cmp	r2, #0	@ tmp1214,
	ldrb	lr, [r4, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r0, ip	@ tmp1221, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1215, tmp1214
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1215,
	addgt	r3, r3, #1	@,, MisCnt.7873, MisCnt.7865
	cmp	r8, #0	@ tmp1221,
	ldrb	r0, [r4, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp1228, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1222, tmp1221
	ldrb	r6, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp1222,
	addgt	r3, r3, #1	@,, MisCnt.7881, MisCnt.7873
	cmp	r1, #0	@ tmp1228,
	rsb	r2, r6, r0	@ tmp1235, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1229, tmp1228
	cmp	r1, #2	@ tmp1229,
	addgt	r3, r3, #1	@,, MisCnt.7889, MisCnt.7881
	cmp	r2, #0	@ tmp1235,
	rsblt	r2, r2, #0	@ tmp1236, tmp1235
	cmp	r2, #2	@ tmp1236,
	addgt	r3, r3, #1	@,, tmp1239, MisCnt.7889
	cmp	r3, #2	@ tmp1239,
	bgt	.L20	@,
	ldr	ip, [r4, #20]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r6, [r4, #24]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #28]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r6, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	sl, [r4, #33]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r4, #32]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r0, sl	@ tmp1257, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1257,
	ldrb	r6, [r4, #34]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r8	@ tmp1250, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1258, tmp1257
	cmp	lr, #0	@ tmp1250,
	rsb	r0, r2, r6	@ tmp1264, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1251, tmp1250
	ldrb	sl, [r4, #35]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1258,
	movle	r3, #0	@, tmp1260
	movgt	r3, #1	@, tmp1260
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1251,
	addgt	r3, r3, #1	@,, MisCnt.7915, tmp1260
	cmp	r0, #0	@ tmp1264,
	ldrb	r1, [r4, #36]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, sl	@ tmp1271, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1265, tmp1264
	ldrb	r8, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1265,
	addgt	r3, r3, #1	@,, MisCnt.7923, MisCnt.7915
	cmp	r6, #0	@ tmp1271,
	ldrb	sl, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r8, r1	@ tmp1278, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp1272, tmp1271
	ldrb	ip, [r4, #37]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp1272,
	addgt	r3, r3, #1	@,, MisCnt.7931, MisCnt.7923
	cmp	r2, #0	@ tmp1278,
	ldrb	r8, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, sl, ip	@ tmp1285, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1279, tmp1278
	ldrb	lr, [r4, #38]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp1279,
	addgt	r3, r3, #1	@,, MisCnt.7939, MisCnt.7931
	cmp	r6, #0	@ tmp1285,
	ldrb	r0, [r4, #39]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r8, lr	@ tmp1292, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp1286, tmp1285
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r6, #2	@ tmp1286,
	addgt	r3, r3, #1	@,, MisCnt.7947, MisCnt.7939
	cmp	r1, #0	@ tmp1292,
	rsb	r8, sl, r0	@ tmp1299, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1293, tmp1292
	cmp	r1, #2	@ tmp1293,
	addgt	r3, r3, #1	@,, MisCnt.7955, MisCnt.7947
	cmp	r8, #0	@ tmp1299,
	rsblt	r8, r8, #0	@ tmp1300, tmp1299
	cmp	r8, #2	@ tmp1300,
	addgt	r3, r3, #1	@,, tmp1303, MisCnt.7955
	cmp	r3, #2	@ tmp1303,
	bgt	.L20	@,
	ldr	r6, [r4, #40]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r8, [r4, #44]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #48]	@ <variable>.Py, <variable>.Py
	str	r6, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	mov	r6, r4	@ tmp1304, tmp12186
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #53]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #52]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1321, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1321,
	ldrb	r8, [r4, #54]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1314, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1322, tmp1321
	cmp	lr, #0	@ tmp1314,
	rsb	r0, r2, r8	@ tmp1328, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1315, tmp1314
	ldrb	sl, [r4, #55]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1322,
	movle	r3, #0	@, tmp1324
	movgt	r3, #1	@, tmp1324
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1315,
	addgt	r3, r3, #1	@,, MisCnt.7981, tmp1324
	cmp	r0, #0	@ tmp1328,
	ldrb	r1, [r4, #56]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp1335, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1329, tmp1328
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1329,
	addgt	r3, r3, #1	@,, MisCnt.7989, MisCnt.7981
	cmp	r8, #0	@ tmp1335,
	ldrb	sl, [r4, #57]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1342, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1336, tmp1335
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp1336,
	addgt	r3, r3, #1	@,, MisCnt.7997, MisCnt.7989
	cmp	r2, #0	@ tmp1342,
	ldrb	lr, [r4, #58]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp1349, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1343, tmp1342
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1343,
	addgt	r3, r3, #1	@,, MisCnt.8005, MisCnt.7997
	cmp	ip, #0	@ tmp1349,
	ldrb	r0, [r4, #59]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r1, lr	@ tmp1356, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1350, tmp1349
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1350,
	addgt	r3, r3, #1	@,, MisCnt.8013, MisCnt.8005
	cmp	r8, #0	@ tmp1356,
	rsb	r2, sl, r0	@ tmp1363, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1357, tmp1356
	cmp	r8, #2	@ tmp1357,
	addgt	r3, r3, #1	@,, MisCnt.8021, MisCnt.8013
	cmp	r2, #0	@ tmp1363,
	rsblt	r2, r2, #0	@ tmp1364, tmp1363
	cmp	r2, #2	@ tmp1364,
	addgt	r3, r3, #1	@,, tmp1367, MisCnt.8021
	cmp	r3, #2	@ tmp1367,
	bgt	.L20	@,
	ldr	r2, [r4, #60]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r8, [r4, #64]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #68]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #73]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #72]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1385, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1385,
	ldrb	r8, [r4, #74]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1378, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1386, tmp1385
	cmp	lr, #0	@ tmp1378,
	rsb	r0, r2, r8	@ tmp1392, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1379, tmp1378
	ldrb	sl, [r4, #75]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1386,
	movle	r3, #0	@, tmp1388
	movgt	r3, #1	@, tmp1388
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1379,
	addgt	r3, r3, #1	@,, MisCnt.8047, tmp1388
	cmp	r0, #0	@ tmp1392,
	ldrb	r1, [r4, #76]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp1399, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1393, tmp1392
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1393,
	addgt	r3, r3, #1	@,, MisCnt.8055, MisCnt.8047
	cmp	r8, #0	@ tmp1399,
	ldrb	sl, [r4, #77]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1406, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1400, tmp1399
	ldrb	lr, [r4, #78]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1400,
	addgt	r3, r3, #1	@,, MisCnt.8063, MisCnt.8055
	cmp	r2, #0	@ tmp1406,
	rsb	ip, r0, sl	@ tmp1413, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1407, tmp1406
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1407,
	addgt	r3, r3, #1	@,, MisCnt.8071, MisCnt.8063
	cmp	ip, #0	@ tmp1413,
	ldrb	r0, [r4, #79]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1420, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1414, tmp1413
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1414,
	addgt	r3, r3, #1	@,, MisCnt.8079, MisCnt.8071
	cmp	r1, #0	@ tmp1420,
	rsb	r2, sl, r0	@ tmp1427, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1421, tmp1420
	cmp	r1, #2	@ tmp1421,
	addgt	r3, r3, #1	@,, MisCnt.8087, MisCnt.8079
	cmp	r2, #0	@ tmp1427,
	rsblt	r2, r2, #0	@ tmp1428, tmp1427
	cmp	r2, #2	@ tmp1428,
	addgt	r3, r3, #1	@,, tmp1431, MisCnt.8087
	cmp	r3, #2	@ tmp1431,
	bgt	.L20	@,
	ldr	r3, [r4, #80]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #84]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #88]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r4, #93]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #92]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp1449, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1449,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp1442, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #94]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1450, tmp1449
	cmp	r8, #0	@ tmp1442,
	rsb	r0, r2, r0	@ tmp1456, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1443, tmp1442
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1450,
	movle	r3, #0	@, tmp1452
	movgt	r3, #1	@, tmp1452
	ldrb	sl, [r4, #95]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1443,
	addgt	r3, r3, #1	@,, MisCnt.2414, tmp1452
	cmp	r0, #0	@ tmp1456,
	ldrb	r1, [r4, #96]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp1463, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1457, tmp1456
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1457,
	addgt	r3, r3, #1	@,, MisCnt.2424, MisCnt.2414
	cmp	sl, #0	@ tmp1463,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1470, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1464, tmp1463
	ldrb	ip, [r4, #97]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1464,
	addgt	r3, r3, #1	@,, MisCnt.2433, MisCnt.2424
	cmp	r2, #0	@ tmp1470,
	ldrb	r8, [r4, #98]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1477, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1471, tmp1470
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1471,
	addgt	r3, r3, #1	@,, MisCnt.2442, MisCnt.2433
	cmp	ip, #0	@ tmp1477,
	ldrb	r0, [r4, #99]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1478, tmp1477
	rsb	r1, r1, r8	@ tmp1484, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1478,
	addgt	r3, r3, #1	@,, MisCnt.2451, MisCnt.2442
	cmp	r1, #0	@ tmp1484,
	rsb	ip, r2, r0	@ tmp1491, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1485, tmp1484
	cmp	r1, #2	@ tmp1485,
	addgt	r3, r3, #1	@,, MisCnt.2459, MisCnt.2451
	cmp	ip, #0	@ tmp1491,
	rsblt	ip, ip, #0	@ tmp1492, tmp1491
	cmp	ip, #2	@ tmp1492,
	addgt	r3, r3, #1	@,, tmp1495, MisCnt.2459
	cmp	r3, #2	@ tmp1495,
	movle	r0, #1	@ Result,
	ble	.L13	@,
.L20:
	ldr	ip, [r4, #100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r4, #104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #108]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp1496,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp1496,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp1513, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp1513,
	ldrb	sl, [r4, #114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp1506, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1514, tmp1513
	cmp	lr, #0	@ tmp1506,
	rsblt	lr, lr, #0	@ tmp1507, tmp1506
	ldrb	r0, [r4, #115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1514,
	movle	r1, #0	@, tmp1516
	movgt	r1, #1	@, tmp1516
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp1520, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1507,
	addgt	r1, r1, #1	@,, MisCnt.8113, tmp1516
	cmp	r8, #0	@ tmp1520,
	rsb	sl, r3, r0	@ tmp1527, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1521, tmp1520
	ldrb	ip, [r4, #116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1521,
	movle	r8, r1	@, MisCnt.8121, MisCnt.8113
	addgt	r8, r1, #1	@,, MisCnt.8121, MisCnt.8113
	cmp	sl, #0	@ tmp1527,
	ldrb	r0, [r4, #117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp1534, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1528, tmp1527
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1528,
	movle	r3, r8	@, MisCnt.8129, MisCnt.8121
	addgt	r3, r8, #1	@,, MisCnt.8129, MisCnt.8121
	cmp	ip, #0	@ tmp1534,
	ldrb	lr, [r4, #118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp1541, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1535, tmp1534
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1535,
	movle	ip, r3	@, MisCnt.8137, MisCnt.8129
	addgt	ip, r3, #1	@,, MisCnt.8137, MisCnt.8129
	cmp	sl, #0	@ tmp1541,
	ldrb	r0, [r4, #119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1542, tmp1541
	rsb	r8, r2, lr	@ tmp1548, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1542,
	movle	r1, ip	@, MisCnt.8145, MisCnt.8137
	addgt	r1, ip, #1	@,, MisCnt.8145, MisCnt.8137
	cmp	r8, #0	@ tmp1548,
	rsb	sl, r3, r0	@ tmp1555, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1549, tmp1548
	cmp	r8, #2	@ tmp1549,
	movle	ip, r1	@, MisCnt.8153, MisCnt.8145
	addgt	ip, r1, #1	@,, MisCnt.8153, MisCnt.8145
	cmp	sl, #0	@ tmp1555,
	rsblt	sl, sl, #0	@ tmp1556, tmp1555
	cmp	sl, #2	@ tmp1556,
	movle	r0, ip	@, tmp1559, MisCnt.8153
	addgt	r0, ip, #1	@,, tmp1559, MisCnt.8153
	cmp	r0, #2	@ tmp1559,
	bgt	.L21	@,
	ldr	r2, [r6, #120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r6, #124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #128]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1577, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1577,
	ldrb	sl, [r6, #134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1570, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1578, tmp1577
	cmp	lr, #0	@ tmp1570,
	rsb	r0, r2, sl	@ tmp1584, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1571, tmp1570
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1578,
	movle	r3, #0	@, tmp1580
	movgt	r3, #1	@, tmp1580
	ldrb	r8, [r6, #135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1571,
	addgt	r3, r3, #1	@,, MisCnt.8179, tmp1580
	cmp	r0, #0	@ tmp1584,
	ldrb	r1, [r6, #136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1591, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1585, tmp1584
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1585,
	addgt	r3, r3, #1	@,, MisCnt.8187, MisCnt.8179
	cmp	r8, #0	@ tmp1591,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1598, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1592, tmp1591
	ldrb	ip, [r6, #137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1592,
	addgt	r3, r3, #1	@,, MisCnt.8195, MisCnt.8187
	cmp	r2, #0	@ tmp1598,
	ldrb	lr, [r6, #138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp1605, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1599, tmp1598
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1599,
	addgt	r3, r3, #1	@,, MisCnt.8203, MisCnt.8195
	cmp	sl, #0	@ tmp1605,
	ldrb	r0, [r6, #139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1612, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1606, tmp1605
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1606,
	addgt	r3, r3, #1	@,, MisCnt.8211, MisCnt.8203
	cmp	r1, #0	@ tmp1612,
	rsb	r8, r2, r0	@ tmp1619, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1613, tmp1612
	cmp	r1, #2	@ tmp1613,
	addgt	r3, r3, #1	@,, MisCnt.8219, MisCnt.8211
	cmp	r8, #0	@ tmp1619,
	rsblt	r8, r8, #0	@ tmp1620, tmp1619
	cmp	r8, #2	@ tmp1620,
	addgt	r3, r3, #1	@,, tmp1623, MisCnt.8219
	cmp	r3, #2	@ tmp1623,
	bgt	.L21	@,
	ldr	r2, [r6, #140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r8, [r6, #144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #148]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1641, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1641,
	ldrb	r8, [r6, #154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1634, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1642, tmp1641
	cmp	lr, #0	@ tmp1634,
	rsb	r0, r2, r8	@ tmp1648, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1635, tmp1634
	ldrb	sl, [r6, #155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1642,
	movle	r3, #0	@, tmp1644
	movgt	r3, #1	@, tmp1644
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1635,
	addgt	r3, r3, #1	@,, MisCnt.8245, tmp1644
	cmp	r0, #0	@ tmp1648,
	ldrb	r1, [r6, #156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp1655, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1649, tmp1648
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1649,
	addgt	r3, r3, #1	@,, MisCnt.8253, MisCnt.8245
	cmp	r8, #0	@ tmp1655,
	ldrb	sl, [r6, #157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1662, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1656, tmp1655
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp1656,
	addgt	r3, r3, #1	@,, MisCnt.8261, MisCnt.8253
	cmp	r2, #0	@ tmp1662,
	ldrb	lr, [r6, #158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp1669, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1663, tmp1662
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1663,
	addgt	r3, r3, #1	@,, MisCnt.8269, MisCnt.8261
	cmp	ip, #0	@ tmp1669,
	ldrb	r0, [r6, #159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1676, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1670, tmp1669
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1670,
	addgt	r3, r3, #1	@,, MisCnt.8277, MisCnt.8269
	cmp	r1, #0	@ tmp1676,
	rsb	r8, sl, r0	@ tmp1683, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1677, tmp1676
	cmp	r1, #2	@ tmp1677,
	addgt	r3, r3, #1	@,, MisCnt.8285, MisCnt.8277
	cmp	r8, #0	@ tmp1683,
	rsblt	r8, r8, #0	@ tmp1684, tmp1683
	cmp	r8, #2	@ tmp1684,
	addgt	r3, r3, #1	@,, tmp1687, MisCnt.8285
	cmp	r3, #2	@ tmp1687,
	bgt	.L21	@,
	ldr	r2, [r6, #160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r6, #164]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #168]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1705, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1705,
	ldrb	sl, [r6, #174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1698, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1706, tmp1705
	cmp	lr, #0	@ tmp1698,
	rsb	r0, r2, sl	@ tmp1712, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1699, tmp1698
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1706,
	movle	r3, #0	@, tmp1708
	movgt	r3, #1	@, tmp1708
	ldrb	r8, [r6, #175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1699,
	addgt	r3, r3, #1	@,, MisCnt.8311, tmp1708
	cmp	r0, #0	@ tmp1712,
	ldrb	r1, [r6, #176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1719, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1713, tmp1712
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1713,
	addgt	r3, r3, #1	@,, MisCnt.8319, MisCnt.8311
	cmp	r8, #0	@ tmp1719,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1726, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1720, tmp1719
	ldrb	ip, [r6, #177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1720,
	addgt	r3, r3, #1	@,, MisCnt.8327, MisCnt.8319
	cmp	r2, #0	@ tmp1726,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp1733, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1727, tmp1726
	ldrb	lr, [r6, #178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp1727,
	addgt	r3, r3, #1	@,, MisCnt.8335, MisCnt.8327
	cmp	ip, #0	@ tmp1733,
	ldrb	r0, [r6, #179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp1740, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1734, tmp1733
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1734,
	addgt	r3, r3, #1	@,, MisCnt.8343, MisCnt.8335
	cmp	r1, #0	@ tmp1740,
	rsb	sl, r8, r0	@ tmp1747, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1741, tmp1740
	cmp	r1, #2	@ tmp1741,
	addgt	r3, r3, #1	@,, MisCnt.8351, MisCnt.8343
	cmp	sl, #0	@ tmp1747,
	rsblt	sl, sl, #0	@ tmp1748, tmp1747
	cmp	sl, #2	@ tmp1748,
	addgt	r3, r3, #1	@,, tmp1751, MisCnt.8351
	cmp	r3, #2	@ tmp1751,
	bgt	.L21	@,
	ldr	r3, [r6, #180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #184]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp1769, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1769,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp1762, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1770, tmp1769
	cmp	r8, #0	@ tmp1762,
	rsb	r0, r2, r0	@ tmp1776, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1763, tmp1762
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1770,
	movle	r3, #0	@, tmp1772
	movgt	r3, #1	@, tmp1772
	ldrb	sl, [r6, #195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1763,
	addgt	r3, r3, #1	@,, MisCnt.2477, tmp1772
	cmp	r0, #0	@ tmp1776,
	ldrb	r1, [r6, #196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp1783, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1777, tmp1776
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1777,
	addgt	r3, r3, #1	@,, MisCnt.2485, MisCnt.2477
	cmp	sl, #0	@ tmp1783,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1790, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1784, tmp1783
	ldrb	ip, [r6, #197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1784,
	addgt	r3, r3, #1	@,, MisCnt.2495, MisCnt.2485
	cmp	r2, #0	@ tmp1790,
	ldrb	r8, [r6, #198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1797, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1791, tmp1790
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1791,
	addgt	r3, r3, #1	@,, MisCnt.2506, MisCnt.2495
	cmp	ip, #0	@ tmp1797,
	ldrb	r0, [r6, #199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1798, tmp1797
	rsb	r1, r1, r8	@ tmp1804, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1798,
	addgt	r3, r3, #1	@,, MisCnt.2517, MisCnt.2506
	cmp	r1, #0	@ tmp1804,
	rsb	ip, r2, r0	@ tmp1811, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1805, tmp1804
	cmp	r1, #2	@ tmp1805,
	addgt	r3, r3, #1	@,, MisCnt.2525, MisCnt.2517
	cmp	ip, #0	@ tmp1811,
	rsblt	ip, ip, #0	@ tmp1812, tmp1811
	cmp	ip, #2	@ tmp1812,
	addgt	r3, r3, #1	@,, tmp1815, MisCnt.2525
	cmp	r3, #2	@ tmp1815,
	movle	r0, #2	@ Result,
	ble	.L13	@,
.L21:
	ldr	ip, [r4, #200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r4, #204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #208]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp1816,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp1816,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp1833, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp1833,
	ldrb	sl, [r4, #214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp1826, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1834, tmp1833
	cmp	lr, #0	@ tmp1826,
	rsblt	lr, lr, #0	@ tmp1827, tmp1826
	ldrb	r0, [r4, #215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1834,
	movle	r1, #0	@, tmp1836
	movgt	r1, #1	@, tmp1836
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp1840, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1827,
	addgt	r1, r1, #1	@,, MisCnt.8377, tmp1836
	cmp	r8, #0	@ tmp1840,
	rsb	sl, r3, r0	@ tmp1847, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1841, tmp1840
	ldrb	ip, [r4, #216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1841,
	movle	r8, r1	@, MisCnt.8385, MisCnt.8377
	addgt	r8, r1, #1	@,, MisCnt.8385, MisCnt.8377
	cmp	sl, #0	@ tmp1847,
	ldrb	r0, [r4, #217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp1854, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1848, tmp1847
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1848,
	movle	r3, r8	@, MisCnt.8393, MisCnt.8385
	addgt	r3, r8, #1	@,, MisCnt.8393, MisCnt.8385
	cmp	ip, #0	@ tmp1854,
	ldrb	lr, [r4, #218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp1861, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1855, tmp1854
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1855,
	movle	ip, r3	@, MisCnt.8401, MisCnt.8393
	addgt	ip, r3, #1	@,, MisCnt.8401, MisCnt.8393
	cmp	sl, #0	@ tmp1861,
	ldrb	r0, [r4, #219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1862, tmp1861
	rsb	r8, r2, lr	@ tmp1868, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1862,
	movle	r1, ip	@, MisCnt.8409, MisCnt.8401
	addgt	r1, ip, #1	@,, MisCnt.8409, MisCnt.8401
	cmp	r8, #0	@ tmp1868,
	rsb	sl, r3, r0	@ tmp1875, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1869, tmp1868
	cmp	r8, #2	@ tmp1869,
	movle	ip, r1	@, MisCnt.8417, MisCnt.8409
	addgt	ip, r1, #1	@,, MisCnt.8417, MisCnt.8409
	cmp	sl, #0	@ tmp1875,
	rsblt	sl, sl, #0	@ tmp1876, tmp1875
	cmp	sl, #2	@ tmp1876,
	movle	r0, ip	@, tmp1879, MisCnt.8417
	addgt	r0, ip, #1	@,, tmp1879, MisCnt.8417
	cmp	r0, #2	@ tmp1879,
	bgt	.L22	@,
	ldr	r2, [r6, #220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r6, #224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #228]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1897, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1897,
	ldrb	sl, [r6, #234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1890, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1898, tmp1897
	cmp	lr, #0	@ tmp1890,
	rsb	r0, r2, sl	@ tmp1904, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1891, tmp1890
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1898,
	movle	r3, #0	@, tmp1900
	movgt	r3, #1	@, tmp1900
	ldrb	r8, [r6, #235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1891,
	addgt	r3, r3, #1	@,, MisCnt.8443, tmp1900
	cmp	r0, #0	@ tmp1904,
	ldrb	r1, [r6, #236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1911, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1905, tmp1904
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1905,
	addgt	r3, r3, #1	@,, MisCnt.8451, MisCnt.8443
	cmp	r8, #0	@ tmp1911,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1918, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1912, tmp1911
	ldrb	ip, [r6, #237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1912,
	addgt	r3, r3, #1	@,, MisCnt.8459, MisCnt.8451
	cmp	r2, #0	@ tmp1918,
	ldrb	lr, [r6, #238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp1925, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1919, tmp1918
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1919,
	addgt	r3, r3, #1	@,, MisCnt.8467, MisCnt.8459
	cmp	sl, #0	@ tmp1925,
	ldrb	r0, [r6, #239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1932, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1926, tmp1925
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1926,
	addgt	r3, r3, #1	@,, MisCnt.8475, MisCnt.8467
	cmp	r1, #0	@ tmp1932,
	rsb	r8, r2, r0	@ tmp1939, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1933, tmp1932
	cmp	r1, #2	@ tmp1933,
	addgt	r3, r3, #1	@,, MisCnt.8483, MisCnt.8475
	cmp	r8, #0	@ tmp1939,
	rsblt	r8, r8, #0	@ tmp1940, tmp1939
	cmp	r8, #2	@ tmp1940,
	addgt	r3, r3, #1	@,, tmp1943, MisCnt.8483
	cmp	r3, #2	@ tmp1943,
	bgt	.L22	@,
	ldr	r2, [r6, #240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r8, [r6, #244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #248]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1961, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1961,
	ldrb	r8, [r6, #254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1954, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1962, tmp1961
	cmp	lr, #0	@ tmp1954,
	rsb	r0, r2, r8	@ tmp1968, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1955, tmp1954
	ldrb	sl, [r6, #255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1962,
	movle	r3, #0	@, tmp1964
	movgt	r3, #1	@, tmp1964
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1955,
	addgt	r3, r3, #1	@,, MisCnt.8509, tmp1964
	cmp	r0, #0	@ tmp1968,
	ldrb	r1, [r6, #256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp1975, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1969, tmp1968
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1969,
	addgt	r3, r3, #1	@,, MisCnt.8517, MisCnt.8509
	cmp	r8, #0	@ tmp1975,
	ldrb	sl, [r6, #257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1982, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1976, tmp1975
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp1976,
	addgt	r3, r3, #1	@,, MisCnt.8525, MisCnt.8517
	cmp	r2, #0	@ tmp1982,
	ldrb	lr, [r6, #258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp1989, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1983, tmp1982
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1983,
	addgt	r3, r3, #1	@,, MisCnt.8533, MisCnt.8525
	cmp	ip, #0	@ tmp1989,
	ldrb	r0, [r6, #259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1996, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1990, tmp1989
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1990,
	addgt	r3, r3, #1	@,, MisCnt.8541, MisCnt.8533
	cmp	r1, #0	@ tmp1996,
	rsb	r8, sl, r0	@ tmp2003, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1997, tmp1996
	cmp	r1, #2	@ tmp1997,
	addgt	r3, r3, #1	@,, MisCnt.8549, MisCnt.8541
	cmp	r8, #0	@ tmp2003,
	rsblt	r8, r8, #0	@ tmp2004, tmp2003
	cmp	r8, #2	@ tmp2004,
	addgt	r3, r3, #1	@,, tmp2007, MisCnt.8549
	cmp	r3, #2	@ tmp2007,
	bgt	.L22	@,
	ldr	r2, [r6, #260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r6, #264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #268]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2025, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2025,
	ldrb	sl, [r6, #274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2018, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2026, tmp2025
	cmp	lr, #0	@ tmp2018,
	rsb	r0, r2, sl	@ tmp2032, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2019, tmp2018
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2026,
	movle	r3, #0	@, tmp2028
	movgt	r3, #1	@, tmp2028
	ldrb	r8, [r6, #275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2019,
	addgt	r3, r3, #1	@,, MisCnt.8575, tmp2028
	cmp	r0, #0	@ tmp2032,
	ldrb	r1, [r6, #276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2039, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2033, tmp2032
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2033,
	addgt	r3, r3, #1	@,, MisCnt.8583, MisCnt.8575
	cmp	r8, #0	@ tmp2039,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp2046, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2040, tmp2039
	ldrb	ip, [r6, #277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2040,
	addgt	r3, r3, #1	@,, MisCnt.8591, MisCnt.8583
	cmp	r2, #0	@ tmp2046,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp2053, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2047, tmp2046
	ldrb	lr, [r6, #278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp2047,
	addgt	r3, r3, #1	@,, MisCnt.8599, MisCnt.8591
	cmp	ip, #0	@ tmp2053,
	ldrb	r0, [r6, #279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp2060, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2054, tmp2053
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2054,
	addgt	r3, r3, #1	@,, MisCnt.8607, MisCnt.8599
	cmp	r1, #0	@ tmp2060,
	rsb	sl, r8, r0	@ tmp2067, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2061, tmp2060
	cmp	r1, #2	@ tmp2061,
	addgt	r3, r3, #1	@,, MisCnt.8615, MisCnt.8607
	cmp	sl, #0	@ tmp2067,
	rsblt	sl, sl, #0	@ tmp2068, tmp2067
	cmp	sl, #2	@ tmp2068,
	addgt	r3, r3, #1	@,, tmp2071, MisCnt.8615
	cmp	r3, #2	@ tmp2071,
	bgt	.L22	@,
	ldr	r3, [r6, #280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #284]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp2089, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2089,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp2082, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2090, tmp2089
	cmp	r8, #0	@ tmp2082,
	rsb	r0, r2, r0	@ tmp2096, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2083, tmp2082
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2090,
	movle	r3, #0	@, tmp2092
	movgt	r3, #1	@, tmp2092
	ldrb	sl, [r6, #295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2083,
	addgt	r3, r3, #1	@,, MisCnt.2544, tmp2092
	cmp	r0, #0	@ tmp2096,
	ldrb	r1, [r6, #296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2103, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2097, tmp2096
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2097,
	addgt	r3, r3, #1	@,, MisCnt.2555, MisCnt.2544
	cmp	sl, #0	@ tmp2103,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2110, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2104, tmp2103
	ldrb	ip, [r6, #297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2104,
	addgt	r3, r3, #1	@,, MisCnt.2566, MisCnt.2555
	cmp	r2, #0	@ tmp2110,
	ldrb	r8, [r6, #298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2117, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2111, tmp2110
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2111,
	addgt	r3, r3, #1	@,, MisCnt.2575, MisCnt.2566
	cmp	ip, #0	@ tmp2117,
	ldrb	r0, [r6, #299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2118, tmp2117
	rsb	r1, r1, r8	@ tmp2124, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2118,
	addgt	r3, r3, #1	@,, MisCnt.2586, MisCnt.2575
	cmp	r1, #0	@ tmp2124,
	rsb	ip, r2, r0	@ tmp2131, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2125, tmp2124
	cmp	r1, #2	@ tmp2125,
	addgt	r3, r3, #1	@,, MisCnt.2597, MisCnt.2586
	cmp	ip, #0	@ tmp2131,
	rsblt	ip, ip, #0	@ tmp2132, tmp2131
	cmp	ip, #2	@ tmp2132,
	addgt	r3, r3, #1	@,, tmp2135, MisCnt.2597
	cmp	r3, #2	@ tmp2135,
	movle	r0, #3	@ Result,
	ble	.L13	@,
.L22:
	ldr	ip, [r4, #300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r4, #304]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #308]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp2136,
	str	ip, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp2136,
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r4, #313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r4, #312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp2153, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp2153,
	ldrb	sl, [r4, #314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp2146, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp2154, tmp2153
	cmp	lr, #0	@ tmp2146,
	rsblt	lr, lr, #0	@ tmp2147, tmp2146
	ldrb	r0, [r4, #315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2154,
	movle	r1, #0	@, tmp2156
	movgt	r1, #1	@, tmp2156
	ldrb	r3, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp2160, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2147,
	addgt	r1, r1, #1	@,, MisCnt.8641, tmp2156
	cmp	r8, #0	@ tmp2160,
	rsb	sl, r3, r0	@ tmp2167, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp2161, tmp2160
	ldrb	ip, [r4, #316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2161,
	movle	r8, r1	@, MisCnt.8649, MisCnt.8641
	addgt	r8, r1, #1	@,, MisCnt.8649, MisCnt.8641
	cmp	sl, #0	@ tmp2167,
	ldrb	r0, [r4, #317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp2174, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2168, tmp2167
	ldrb	r1, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp2168,
	movle	r3, r8	@, MisCnt.8657, MisCnt.8649
	addgt	r3, r8, #1	@,, MisCnt.8657, MisCnt.8649
	cmp	ip, #0	@ tmp2174,
	ldrb	lr, [r4, #318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp2181, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2175, tmp2174
	ldrb	r2, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2175,
	movle	ip, r3	@, MisCnt.8665, MisCnt.8657
	addgt	ip, r3, #1	@,, MisCnt.8665, MisCnt.8657
	cmp	sl, #0	@ tmp2181,
	ldrb	r0, [r4, #319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2182, tmp2181
	rsb	r8, r2, lr	@ tmp2188, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp2182,
	movle	r1, ip	@, MisCnt.8673, MisCnt.8665
	addgt	r1, ip, #1	@,, MisCnt.8673, MisCnt.8665
	cmp	r8, #0	@ tmp2188,
	rsb	sl, r3, r0	@ tmp2195, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2189, tmp2188
	cmp	r8, #2	@ tmp2189,
	movle	ip, r1	@, MisCnt.8681, MisCnt.8673
	addgt	ip, r1, #1	@,, MisCnt.8681, MisCnt.8673
	cmp	sl, #0	@ tmp2195,
	rsblt	sl, sl, #0	@ tmp2196, tmp2195
	cmp	sl, #2	@ tmp2196,
	movle	r0, ip	@, tmp2199, MisCnt.8681
	addgt	r0, ip, #1	@,, tmp2199, MisCnt.8681
	cmp	r0, #2	@ tmp2199,
	bgt	.L23	@,
	ldr	r2, [r6, #320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r6, #324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #328]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2217, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2217,
	ldrb	sl, [r6, #334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2210, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2218, tmp2217
	cmp	lr, #0	@ tmp2210,
	rsb	r0, r2, sl	@ tmp2224, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2211, tmp2210
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2218,
	movle	r3, #0	@, tmp2220
	movgt	r3, #1	@, tmp2220
	ldrb	r8, [r6, #335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2211,
	addgt	r3, r3, #1	@,, MisCnt.8707, tmp2220
	cmp	r0, #0	@ tmp2224,
	ldrb	r1, [r6, #336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2231, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2225, tmp2224
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2225,
	addgt	r3, r3, #1	@,, MisCnt.8715, MisCnt.8707
	cmp	r8, #0	@ tmp2231,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp2238, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2232, tmp2231
	ldrb	ip, [r6, #337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2232,
	addgt	r3, r3, #1	@,, MisCnt.8723, MisCnt.8715
	cmp	r2, #0	@ tmp2238,
	ldrb	lr, [r6, #338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp2245, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2239, tmp2238
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2239,
	addgt	r3, r3, #1	@,, MisCnt.8731, MisCnt.8723
	cmp	sl, #0	@ tmp2245,
	ldrb	r0, [r6, #339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2252, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2246, tmp2245
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp2246,
	addgt	r3, r3, #1	@,, MisCnt.8739, MisCnt.8731
	cmp	r1, #0	@ tmp2252,
	rsb	r8, r2, r0	@ tmp2259, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2253, tmp2252
	cmp	r1, #2	@ tmp2253,
	addgt	r3, r3, #1	@,, MisCnt.8747, MisCnt.8739
	cmp	r8, #0	@ tmp2259,
	rsblt	r8, r8, #0	@ tmp2260, tmp2259
	cmp	r8, #2	@ tmp2260,
	addgt	r3, r3, #1	@,, tmp2263, MisCnt.8747
	cmp	r3, #2	@ tmp2263,
	bgt	.L23	@,
	ldr	r2, [r6, #340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r8, [r6, #344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #348]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r8, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2281, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2281,
	ldrb	r8, [r6, #354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2274, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2282, tmp2281
	cmp	lr, #0	@ tmp2274,
	rsb	r0, r2, r8	@ tmp2288, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2275, tmp2274
	ldrb	sl, [r6, #355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp2282,
	movle	r3, #0	@, tmp2284
	movgt	r3, #1	@, tmp2284
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp2275,
	addgt	r3, r3, #1	@,, MisCnt.8773, tmp2284
	cmp	r0, #0	@ tmp2288,
	ldrb	r1, [r6, #356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp2295, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2289, tmp2288
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2289,
	addgt	r3, r3, #1	@,, MisCnt.8781, MisCnt.8773
	cmp	r8, #0	@ tmp2295,
	ldrb	sl, [r6, #357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp2302, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2296, tmp2295
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp2296,
	addgt	r3, r3, #1	@,, MisCnt.8789, MisCnt.8781
	cmp	r2, #0	@ tmp2302,
	ldrb	lr, [r6, #358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp2309, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2303, tmp2302
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2303,
	addgt	r3, r3, #1	@,, MisCnt.8797, MisCnt.8789
	cmp	ip, #0	@ tmp2309,
	ldrb	r0, [r6, #359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2316, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2310, tmp2309
	ldrb	sl, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2310,
	addgt	r3, r3, #1	@,, MisCnt.8805, MisCnt.8797
	cmp	r1, #0	@ tmp2316,
	rsb	r8, sl, r0	@ tmp2323, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2317, tmp2316
	cmp	r1, #2	@ tmp2317,
	addgt	r3, r3, #1	@,, MisCnt.8813, MisCnt.8805
	cmp	r8, #0	@ tmp2323,
	rsblt	r8, r8, #0	@ tmp2324, tmp2323
	cmp	r8, #2	@ tmp2324,
	addgt	r3, r3, #1	@,, tmp2327, MisCnt.8813
	cmp	r3, #2	@ tmp2327,
	bgt	.L23	@,
	ldr	r2, [r6, #360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	sl, [r6, #364]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #368]	@ <variable>.Py, <variable>.Py
	str	r2, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2345, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2345,
	ldrb	sl, [r6, #374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2338, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2346, tmp2345
	cmp	lr, #0	@ tmp2338,
	rsb	r0, r2, sl	@ tmp2352, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2339, tmp2338
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2346,
	movle	r3, #0	@, tmp2348
	movgt	r3, #1	@, tmp2348
	ldrb	r8, [r6, #375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2339,
	addgt	r3, r3, #1	@,, MisCnt.8839, tmp2348
	cmp	r0, #0	@ tmp2352,
	ldrb	r1, [r6, #376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2359, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2353, tmp2352
	ldrb	sl, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2353,
	addgt	r3, r3, #1	@,, MisCnt.8847, MisCnt.8839
	cmp	r8, #0	@ tmp2359,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp2366, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2360, tmp2359
	ldrb	ip, [r6, #377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2360,
	addgt	r3, r3, #1	@,, MisCnt.8855, MisCnt.8847
	cmp	r2, #0	@ tmp2366,
	ldrb	sl, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp2373, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2367, tmp2366
	ldrb	lr, [r6, #378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp2367,
	addgt	r3, r3, #1	@,, MisCnt.8863, MisCnt.8855
	cmp	ip, #0	@ tmp2373,
	ldrb	r0, [r6, #379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp2380, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2374, tmp2373
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2374,
	addgt	r3, r3, #1	@,, MisCnt.8871, MisCnt.8863
	cmp	r1, #0	@ tmp2380,
	rsb	sl, r8, r0	@ tmp2387, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2381, tmp2380
	cmp	r1, #2	@ tmp2381,
	addgt	r3, r3, #1	@,, MisCnt.8879, MisCnt.8871
	cmp	sl, #0	@ tmp2387,
	rsblt	sl, sl, #0	@ tmp2388, tmp2387
	cmp	sl, #2	@ tmp2388,
	addgt	r3, r3, #1	@,, tmp2391, MisCnt.8879
	cmp	r3, #2	@ tmp2391,
	bgt	.L23	@,
	ldr	r3, [r6, #380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #384]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp2409, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2409,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp2402, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2410, tmp2409
	cmp	r8, #0	@ tmp2402,
	rsb	r0, r2, r0	@ tmp2416, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2403, tmp2402
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2410,
	movle	r3, #0	@, tmp2412
	movgt	r3, #1	@, tmp2412
	ldrb	sl, [r6, #395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2403,
	addgt	r3, r3, #1	@,, MisCnt.2614, tmp2412
	cmp	r0, #0	@ tmp2416,
	ldrb	r1, [r6, #396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2423, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2417, tmp2416
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2417,
	addgt	r3, r3, #1	@,, MisCnt.2624, MisCnt.2614
	cmp	sl, #0	@ tmp2423,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2430, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2424, tmp2423
	ldrb	ip, [r6, #397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2424,
	addgt	r3, r3, #1	@,, MisCnt.2635, MisCnt.2624
	cmp	r2, #0	@ tmp2430,
	ldrb	r8, [r6, #398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2437, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2431, tmp2430
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2431,
	addgt	r3, r3, #1	@,, MisCnt.2646, MisCnt.2635
	cmp	ip, #0	@ tmp2437,
	ldrb	r0, [r6, #399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2438, tmp2437
	rsb	r1, r1, r8	@ tmp2444, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2438,
	addgt	r3, r3, #1	@,, MisCnt.2655, MisCnt.2646
	cmp	r1, #0	@ tmp2444,
	rsb	ip, r2, r0	@ tmp2451, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2445, tmp2444
	cmp	r1, #2	@ tmp2445,
	addgt	r3, r3, #1	@,, MisCnt.2666, MisCnt.2655
	cmp	ip, #0	@ tmp2451,
	rsblt	ip, ip, #0	@ tmp2452, tmp2451
	cmp	ip, #2	@ tmp2452,
	addgt	r3, r3, #1	@,, tmp2455, MisCnt.2666
	cmp	r3, #2	@ tmp2455,
	movle	r0, #8	@ Result,
	ble	.L13	@,
.L23:
	ldr	r3, [r4, #400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #408]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp2456,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp2456,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2473, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2473,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2466, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2474, tmp2473
	cmp	lr, #0	@ tmp2466,
	rsb	r0, r2, r0	@ tmp2480, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2467, tmp2466
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2474,
	movle	sl, #0	@, tmp2476
	movgt	sl, #1	@, tmp2476
	ldrb	r8, [r4, #415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2467,
	addgt	sl, sl, #1	@,, MisCnt.8905, tmp2476
	cmp	r0, #0	@ tmp2480,
	ldrb	r1, [r4, #416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2487, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2481, tmp2480
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2481,
	addgt	sl, sl, #1	@,, MisCnt.8913, MisCnt.8905
	cmp	r8, #0	@ tmp2487,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2494, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2488, tmp2487
	ldrb	ip, [r4, #417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2488,
	addgt	sl, sl, #1	@,, MisCnt.8921, MisCnt.8913
	cmp	r2, #0	@ tmp2494,
	ldrb	lr, [r4, #418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2501, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2495, tmp2494
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2495,
	addgt	sl, sl, #1	@,, MisCnt.8929, MisCnt.8921
	cmp	ip, #0	@ tmp2501,
	ldrb	r0, [r4, #419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2502, tmp2501
	rsb	r1, r1, lr	@ tmp2508, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2502,
	addgt	sl, sl, #1	@,, MisCnt.8937, MisCnt.8929
	cmp	r1, #0	@ tmp2508,
	rsb	ip, r8, r0	@ tmp2515, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2509, tmp2508
	cmp	r1, #2	@ tmp2509,
	addgt	sl, sl, #1	@,, MisCnt.8945, MisCnt.8937
	cmp	ip, #0	@ tmp2515,
	rsblt	ip, ip, #0	@ tmp2516, tmp2515
	cmp	ip, #2	@ tmp2516,
	addgt	sl, sl, #1	@,, tmp2519, MisCnt.8945
	cmp	sl, #2	@ tmp2519,
	bgt	.L24	@,
	ldr	r3, [r6, #420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2537, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2537,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2530, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2538, tmp2537
	cmp	lr, #0	@ tmp2530,
	rsb	r0, r2, r0	@ tmp2544, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2531, tmp2530
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2538,
	movle	sl, #0	@, tmp2540
	movgt	sl, #1	@, tmp2540
	ldrb	r8, [r6, #435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2531,
	addgt	sl, sl, #1	@,, MisCnt.8971, tmp2540
	cmp	r0, #0	@ tmp2544,
	ldrb	r1, [r6, #436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2551, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2545, tmp2544
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2545,
	addgt	sl, sl, #1	@,, MisCnt.8979, MisCnt.8971
	cmp	r8, #0	@ tmp2551,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2558, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2552, tmp2551
	ldrb	ip, [r6, #437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2552,
	addgt	sl, sl, #1	@,, MisCnt.8987, MisCnt.8979
	cmp	r2, #0	@ tmp2558,
	ldrb	lr, [r6, #438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2565, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2559, tmp2558
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2559,
	addgt	sl, sl, #1	@,, MisCnt.8995, MisCnt.8987
	cmp	ip, #0	@ tmp2565,
	ldrb	r0, [r6, #439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2572, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2566, tmp2565
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2566,
	addgt	sl, sl, #1	@,, MisCnt.9003, MisCnt.8995
	cmp	r1, #0	@ tmp2572,
	rsb	r8, r2, r0	@ tmp2579, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2573, tmp2572
	cmp	r1, #2	@ tmp2573,
	addgt	sl, sl, #1	@,, MisCnt.9011, MisCnt.9003
	cmp	r8, #0	@ tmp2579,
	rsblt	r8, r8, #0	@ tmp2580, tmp2579
	cmp	r8, #2	@ tmp2580,
	addgt	sl, sl, #1	@,, tmp2583, MisCnt.9011
	cmp	sl, #2	@ tmp2583,
	bgt	.L24	@,
	ldr	r3, [r6, #440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2601, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2601,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2594, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2602, tmp2601
	cmp	lr, #0	@ tmp2594,
	rsb	r0, r2, r0	@ tmp2608, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2595, tmp2594
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2602,
	movle	sl, #0	@, tmp2604
	movgt	sl, #1	@, tmp2604
	ldrb	r8, [r6, #455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2595,
	addgt	sl, sl, #1	@,, MisCnt.9037, tmp2604
	cmp	r0, #0	@ tmp2608,
	ldrb	r1, [r6, #456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2615, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2609, tmp2608
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2609,
	addgt	sl, sl, #1	@,, MisCnt.9045, MisCnt.9037
	cmp	r8, #0	@ tmp2615,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2622, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2616, tmp2615
	ldrb	ip, [r6, #457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2616,
	addgt	sl, sl, #1	@,, MisCnt.9053, MisCnt.9045
	cmp	r2, #0	@ tmp2622,
	ldrb	lr, [r6, #458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2629, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2623, tmp2622
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2623,
	addgt	sl, sl, #1	@,, MisCnt.9061, MisCnt.9053
	cmp	ip, #0	@ tmp2629,
	ldrb	r0, [r6, #459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2636, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2630, tmp2629
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2630,
	addgt	sl, sl, #1	@,, MisCnt.9069, MisCnt.9061
	cmp	r1, #0	@ tmp2636,
	rsb	r8, r2, r0	@ tmp2643, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2637, tmp2636
	cmp	r1, #2	@ tmp2637,
	addgt	sl, sl, #1	@,, MisCnt.9077, MisCnt.9069
	cmp	r8, #0	@ tmp2643,
	rsblt	r8, r8, #0	@ tmp2644, tmp2643
	cmp	r8, #2	@ tmp2644,
	addgt	sl, sl, #1	@,, tmp2647, MisCnt.9077
	cmp	sl, #2	@ tmp2647,
	bgt	.L24	@,
	ldr	r3, [r6, #460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #464]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2665, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2665,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2658, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2666, tmp2665
	cmp	lr, #0	@ tmp2658,
	rsb	r0, r2, r0	@ tmp2672, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2659, tmp2658
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2666,
	movle	sl, #0	@, tmp2668
	movgt	sl, #1	@, tmp2668
	ldrb	r8, [r6, #475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2659,
	addgt	sl, sl, #1	@,, MisCnt.9103, tmp2668
	cmp	r0, #0	@ tmp2672,
	ldrb	r1, [r6, #476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2679, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2673, tmp2672
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2673,
	addgt	sl, sl, #1	@,, MisCnt.9111, MisCnt.9103
	cmp	r8, #0	@ tmp2679,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2686, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2680, tmp2679
	ldrb	ip, [r6, #477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2680,
	addgt	sl, sl, #1	@,, MisCnt.9119, MisCnt.9111
	cmp	r2, #0	@ tmp2686,
	ldrb	lr, [r6, #478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2693, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2687, tmp2686
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2687,
	addgt	sl, sl, #1	@,, MisCnt.9127, MisCnt.9119
	cmp	ip, #0	@ tmp2693,
	ldrb	r0, [r6, #479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2700, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2694, tmp2693
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2694,
	addgt	sl, sl, #1	@,, MisCnt.9135, MisCnt.9127
	cmp	r1, #0	@ tmp2700,
	rsb	r8, r2, r0	@ tmp2707, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2701, tmp2700
	cmp	r1, #2	@ tmp2701,
	addgt	sl, sl, #1	@,, MisCnt.9143, MisCnt.9135
	cmp	r8, #0	@ tmp2707,
	rsblt	r8, r8, #0	@ tmp2708, tmp2707
	cmp	r8, #2	@ tmp2708,
	addgt	sl, sl, #1	@,, tmp2711, MisCnt.9143
	cmp	sl, #2	@ tmp2711,
	bgt	.L24	@,
	ldr	r3, [r6, #480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #484]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp2729, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2729,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp2722, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2730, tmp2729
	cmp	r8, #0	@ tmp2722,
	rsb	r0, r2, r0	@ tmp2736, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2723, tmp2722
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2730,
	movle	r3, #0	@, tmp2732
	movgt	r3, #1	@, tmp2732
	ldrb	sl, [r6, #495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2723,
	addgt	r3, r3, #1	@,, MisCnt.2686, tmp2732
	cmp	r0, #0	@ tmp2736,
	ldrb	r1, [r6, #496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2743, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2737, tmp2736
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2737,
	addgt	r3, r3, #1	@,, MisCnt.2695, MisCnt.2686
	cmp	sl, #0	@ tmp2743,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2750, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2744, tmp2743
	ldrb	ip, [r6, #497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2744,
	addgt	r3, r3, #1	@,, MisCnt.2706, MisCnt.2695
	cmp	r2, #0	@ tmp2750,
	ldrb	r8, [r6, #498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2757, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2751, tmp2750
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2751,
	addgt	r3, r3, #1	@,, MisCnt.2717, MisCnt.2706
	cmp	ip, #0	@ tmp2757,
	ldrb	r0, [r6, #499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2758, tmp2757
	rsb	r1, r1, r8	@ tmp2764, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2758,
	addgt	r3, r3, #1	@,, MisCnt.2727, MisCnt.2717
	cmp	r1, #0	@ tmp2764,
	rsb	ip, r2, r0	@ tmp2771, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2765, tmp2764
	cmp	r1, #2	@ tmp2765,
	addgt	r3, r3, #1	@,, MisCnt.2737, MisCnt.2727
	cmp	ip, #0	@ tmp2771,
	rsblt	ip, ip, #0	@ tmp2772, tmp2771
	cmp	ip, #2	@ tmp2772,
	addgt	r3, r3, #1	@,, tmp2775, MisCnt.2737
	cmp	r3, #2	@ tmp2775,
	movle	r0, #9	@ Result,
	ble	.L13	@,
.L24:
	ldr	r3, [r4, #500]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #504]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #508]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp2776,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp2776,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2793, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2793,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2786, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2794, tmp2793
	cmp	lr, #0	@ tmp2786,
	rsb	r0, r2, r0	@ tmp2800, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2787, tmp2786
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2794,
	movle	sl, #0	@, tmp2796
	movgt	sl, #1	@, tmp2796
	ldrb	r8, [r4, #515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2787,
	addgt	sl, sl, #1	@,, MisCnt.9169, tmp2796
	cmp	r0, #0	@ tmp2800,
	ldrb	r1, [r4, #516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2807, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2801, tmp2800
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2801,
	addgt	sl, sl, #1	@,, MisCnt.9177, MisCnt.9169
	cmp	r8, #0	@ tmp2807,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2814, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2808, tmp2807
	ldrb	ip, [r4, #517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2808,
	addgt	sl, sl, #1	@,, MisCnt.9185, MisCnt.9177
	cmp	r2, #0	@ tmp2814,
	ldrb	lr, [r4, #518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2821, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2815, tmp2814
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2815,
	addgt	sl, sl, #1	@,, MisCnt.9193, MisCnt.9185
	cmp	ip, #0	@ tmp2821,
	ldrb	r0, [r4, #519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2822, tmp2821
	rsb	r1, r1, lr	@ tmp2828, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2822,
	addgt	sl, sl, #1	@,, MisCnt.9201, MisCnt.9193
	cmp	r1, #0	@ tmp2828,
	rsb	ip, r8, r0	@ tmp2835, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2829, tmp2828
	cmp	r1, #2	@ tmp2829,
	addgt	sl, sl, #1	@,, MisCnt.9209, MisCnt.9201
	cmp	ip, #0	@ tmp2835,
	rsblt	ip, ip, #0	@ tmp2836, tmp2835
	cmp	ip, #2	@ tmp2836,
	addgt	sl, sl, #1	@,, tmp2839, MisCnt.9209
	cmp	sl, #2	@ tmp2839,
	bgt	.L25	@,
	ldr	r3, [r6, #520]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #524]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2857, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2857,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2850, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2858, tmp2857
	cmp	lr, #0	@ tmp2850,
	rsb	r0, r2, r0	@ tmp2864, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2851, tmp2850
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2858,
	movle	sl, #0	@, tmp2860
	movgt	sl, #1	@, tmp2860
	ldrb	r8, [r6, #535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2851,
	addgt	sl, sl, #1	@,, MisCnt.9235, tmp2860
	cmp	r0, #0	@ tmp2864,
	ldrb	r1, [r6, #536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2871, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2865, tmp2864
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2865,
	addgt	sl, sl, #1	@,, MisCnt.9243, MisCnt.9235
	cmp	r8, #0	@ tmp2871,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2878, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2872, tmp2871
	ldrb	ip, [r6, #537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2872,
	addgt	sl, sl, #1	@,, MisCnt.9251, MisCnt.9243
	cmp	r2, #0	@ tmp2878,
	ldrb	lr, [r6, #538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2885, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2879, tmp2878
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2879,
	addgt	sl, sl, #1	@,, MisCnt.9259, MisCnt.9251
	cmp	ip, #0	@ tmp2885,
	ldrb	r0, [r6, #539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2892, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2886, tmp2885
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2886,
	addgt	sl, sl, #1	@,, MisCnt.9267, MisCnt.9259
	cmp	r1, #0	@ tmp2892,
	rsb	r8, r2, r0	@ tmp2899, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2893, tmp2892
	cmp	r1, #2	@ tmp2893,
	addgt	sl, sl, #1	@,, MisCnt.9275, MisCnt.9267
	cmp	r8, #0	@ tmp2899,
	rsblt	r8, r8, #0	@ tmp2900, tmp2899
	cmp	r8, #2	@ tmp2900,
	addgt	sl, sl, #1	@,, tmp2903, MisCnt.9275
	cmp	sl, #2	@ tmp2903,
	bgt	.L25	@,
	ldr	r3, [r6, #540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #544]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2921, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2921,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2914, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2922, tmp2921
	cmp	lr, #0	@ tmp2914,
	rsb	r0, r2, r0	@ tmp2928, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2915, tmp2914
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2922,
	movle	sl, #0	@, tmp2924
	movgt	sl, #1	@, tmp2924
	ldrb	r8, [r6, #555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2915,
	addgt	sl, sl, #1	@,, MisCnt.9301, tmp2924
	cmp	r0, #0	@ tmp2928,
	ldrb	r1, [r6, #556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2935, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2929, tmp2928
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2929,
	addgt	sl, sl, #1	@,, MisCnt.9309, MisCnt.9301
	cmp	r8, #0	@ tmp2935,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2942, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2936, tmp2935
	ldrb	ip, [r6, #557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2936,
	addgt	sl, sl, #1	@,, MisCnt.9317, MisCnt.9309
	cmp	r2, #0	@ tmp2942,
	ldrb	lr, [r6, #558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2949, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2943, tmp2942
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2943,
	addgt	sl, sl, #1	@,, MisCnt.9325, MisCnt.9317
	cmp	ip, #0	@ tmp2949,
	ldrb	r0, [r6, #559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2956, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2950, tmp2949
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2950,
	addgt	sl, sl, #1	@,, MisCnt.9333, MisCnt.9325
	cmp	r1, #0	@ tmp2956,
	rsb	r8, r2, r0	@ tmp2963, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2957, tmp2956
	cmp	r1, #2	@ tmp2957,
	addgt	sl, sl, #1	@,, MisCnt.9341, MisCnt.9333
	cmp	r8, #0	@ tmp2963,
	rsblt	r8, r8, #0	@ tmp2964, tmp2963
	cmp	r8, #2	@ tmp2964,
	addgt	sl, sl, #1	@,, tmp2967, MisCnt.9341
	cmp	sl, #2	@ tmp2967,
	bgt	.L25	@,
	ldr	r3, [r6, #560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #564]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2985, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2985,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2978, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2986, tmp2985
	cmp	lr, #0	@ tmp2978,
	rsb	r0, r2, r0	@ tmp2992, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2979, tmp2978
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2986,
	movle	sl, #0	@, tmp2988
	movgt	sl, #1	@, tmp2988
	ldrb	r8, [r6, #575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2979,
	addgt	sl, sl, #1	@,, MisCnt.9367, tmp2988
	cmp	r0, #0	@ tmp2992,
	ldrb	r1, [r6, #576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2999, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2993, tmp2992
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2993,
	addgt	sl, sl, #1	@,, MisCnt.9375, MisCnt.9367
	cmp	r8, #0	@ tmp2999,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3006, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3000, tmp2999
	ldrb	ip, [r6, #577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3000,
	addgt	sl, sl, #1	@,, MisCnt.9383, MisCnt.9375
	cmp	r2, #0	@ tmp3006,
	ldrb	lr, [r6, #578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3013, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3007, tmp3006
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3007,
	addgt	sl, sl, #1	@,, MisCnt.9391, MisCnt.9383
	cmp	ip, #0	@ tmp3013,
	ldrb	r0, [r6, #579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3020, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3014, tmp3013
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3014,
	addgt	sl, sl, #1	@,, MisCnt.9399, MisCnt.9391
	cmp	r1, #0	@ tmp3020,
	rsb	r8, r2, r0	@ tmp3027, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3021, tmp3020
	cmp	r1, #2	@ tmp3021,
	addgt	sl, sl, #1	@,, MisCnt.9407, MisCnt.9399
	cmp	r8, #0	@ tmp3027,
	rsblt	r8, r8, #0	@ tmp3028, tmp3027
	cmp	r8, #2	@ tmp3028,
	addgt	sl, sl, #1	@,, tmp3031, MisCnt.9407
	cmp	sl, #2	@ tmp3031,
	bgt	.L25	@,
	ldr	r3, [r6, #580]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #584]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #588]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #593]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #592]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp3049, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3049,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp3042, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #594]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3050, tmp3049
	cmp	r8, #0	@ tmp3042,
	rsb	r0, r2, r0	@ tmp3056, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3043, tmp3042
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3050,
	movle	r3, #0	@, tmp3052
	movgt	r3, #1	@, tmp3052
	ldrb	sl, [r6, #595]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3043,
	addgt	r3, r3, #1	@,, MisCnt.2756, tmp3052
	cmp	r0, #0	@ tmp3056,
	ldrb	r1, [r6, #596]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3063, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3057, tmp3056
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3057,
	addgt	r3, r3, #1	@,, MisCnt.2767, MisCnt.2756
	cmp	sl, #0	@ tmp3063,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3070, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3064, tmp3063
	ldrb	ip, [r6, #597]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3064,
	addgt	r3, r3, #1	@,, MisCnt.2775, MisCnt.2767
	cmp	r2, #0	@ tmp3070,
	ldrb	r8, [r6, #598]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3077, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3071, tmp3070
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3071,
	addgt	r3, r3, #1	@,, MisCnt.2786, MisCnt.2775
	cmp	ip, #0	@ tmp3077,
	ldrb	r0, [r6, #599]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3078, tmp3077
	rsb	r1, r1, r8	@ tmp3084, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3078,
	addgt	r3, r3, #1	@,, MisCnt.2797, MisCnt.2786
	cmp	r1, #0	@ tmp3084,
	rsb	ip, r2, r0	@ tmp3091, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3085, tmp3084
	cmp	r1, #2	@ tmp3085,
	addgt	r3, r3, #1	@,, MisCnt.2806, MisCnt.2797
	cmp	ip, #0	@ tmp3091,
	rsblt	ip, ip, #0	@ tmp3092, tmp3091
	cmp	ip, #2	@ tmp3092,
	addgt	r3, r3, #1	@,, tmp3095, MisCnt.2806
	cmp	r3, #2	@ tmp3095,
	movle	r0, #11	@ Result,
	ble	.L13	@,
.L25:
	ldr	r3, [r4, #600]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #604]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #608]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp3096,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp3096,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #613]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #612]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3113, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3113,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3106, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #614]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3114, tmp3113
	cmp	lr, #0	@ tmp3106,
	rsb	r0, r2, r0	@ tmp3120, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3107, tmp3106
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3114,
	movle	sl, #0	@, tmp3116
	movgt	sl, #1	@, tmp3116
	ldrb	r8, [r4, #615]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3107,
	addgt	sl, sl, #1	@,, MisCnt.9433, tmp3116
	cmp	r0, #0	@ tmp3120,
	ldrb	r1, [r4, #616]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3127, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3121, tmp3120
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3121,
	addgt	sl, sl, #1	@,, MisCnt.9441, MisCnt.9433
	cmp	r8, #0	@ tmp3127,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3134, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3128, tmp3127
	ldrb	ip, [r4, #617]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3128,
	addgt	sl, sl, #1	@,, MisCnt.9449, MisCnt.9441
	cmp	r2, #0	@ tmp3134,
	ldrb	lr, [r4, #618]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3141, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3135, tmp3134
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3135,
	addgt	sl, sl, #1	@,, MisCnt.9457, MisCnt.9449
	cmp	ip, #0	@ tmp3141,
	ldrb	r0, [r4, #619]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3142, tmp3141
	rsb	r1, r1, lr	@ tmp3148, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3142,
	addgt	sl, sl, #1	@,, MisCnt.9465, MisCnt.9457
	cmp	r1, #0	@ tmp3148,
	rsb	ip, r8, r0	@ tmp3155, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3149, tmp3148
	cmp	r1, #2	@ tmp3149,
	addgt	sl, sl, #1	@,, MisCnt.9473, MisCnt.9465
	cmp	ip, #0	@ tmp3155,
	rsblt	ip, ip, #0	@ tmp3156, tmp3155
	cmp	ip, #2	@ tmp3156,
	addgt	sl, sl, #1	@,, tmp3159, MisCnt.9473
	cmp	sl, #2	@ tmp3159,
	bgt	.L26	@,
	ldr	r3, [r6, #620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #624]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #628]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3177, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3177,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3170, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3178, tmp3177
	cmp	lr, #0	@ tmp3170,
	rsb	r0, r2, r0	@ tmp3184, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3171, tmp3170
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3178,
	movle	sl, #0	@, tmp3180
	movgt	sl, #1	@, tmp3180
	ldrb	r8, [r6, #635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3171,
	addgt	sl, sl, #1	@,, MisCnt.9499, tmp3180
	cmp	r0, #0	@ tmp3184,
	ldrb	r1, [r6, #636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3191, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3185, tmp3184
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3185,
	addgt	sl, sl, #1	@,, MisCnt.9507, MisCnt.9499
	cmp	r8, #0	@ tmp3191,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3198, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3192, tmp3191
	ldrb	ip, [r6, #637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3192,
	addgt	sl, sl, #1	@,, MisCnt.9515, MisCnt.9507
	cmp	r2, #0	@ tmp3198,
	ldrb	lr, [r6, #638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3205, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3199, tmp3198
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3199,
	addgt	sl, sl, #1	@,, MisCnt.9523, MisCnt.9515
	cmp	ip, #0	@ tmp3205,
	ldrb	r0, [r6, #639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3212, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3206, tmp3205
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3206,
	addgt	sl, sl, #1	@,, MisCnt.9531, MisCnt.9523
	cmp	r1, #0	@ tmp3212,
	rsb	r8, r2, r0	@ tmp3219, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3213, tmp3212
	cmp	r1, #2	@ tmp3213,
	addgt	sl, sl, #1	@,, MisCnt.9539, MisCnt.9531
	cmp	r8, #0	@ tmp3219,
	rsblt	r8, r8, #0	@ tmp3220, tmp3219
	cmp	r8, #2	@ tmp3220,
	addgt	sl, sl, #1	@,, tmp3223, MisCnt.9539
	cmp	sl, #2	@ tmp3223,
	bgt	.L26	@,
	ldr	r3, [r6, #640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #644]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #648]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3241, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3241,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3234, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3242, tmp3241
	cmp	lr, #0	@ tmp3234,
	rsb	r0, r2, r0	@ tmp3248, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3235, tmp3234
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3242,
	movle	sl, #0	@, tmp3244
	movgt	sl, #1	@, tmp3244
	ldrb	r8, [r6, #655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3235,
	addgt	sl, sl, #1	@,, MisCnt.9565, tmp3244
	cmp	r0, #0	@ tmp3248,
	ldrb	r1, [r6, #656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3255, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3249, tmp3248
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3249,
	addgt	sl, sl, #1	@,, MisCnt.9573, MisCnt.9565
	cmp	r8, #0	@ tmp3255,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3262, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3256, tmp3255
	ldrb	ip, [r6, #657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3256,
	addgt	sl, sl, #1	@,, MisCnt.9581, MisCnt.9573
	cmp	r2, #0	@ tmp3262,
	ldrb	lr, [r6, #658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3269, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3263, tmp3262
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3263,
	addgt	sl, sl, #1	@,, MisCnt.9589, MisCnt.9581
	cmp	ip, #0	@ tmp3269,
	ldrb	r0, [r6, #659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3276, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3270, tmp3269
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3270,
	addgt	sl, sl, #1	@,, MisCnt.9597, MisCnt.9589
	cmp	r1, #0	@ tmp3276,
	rsb	r8, r2, r0	@ tmp3283, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3277, tmp3276
	cmp	r1, #2	@ tmp3277,
	addgt	sl, sl, #1	@,, MisCnt.9605, MisCnt.9597
	cmp	r8, #0	@ tmp3283,
	rsblt	r8, r8, #0	@ tmp3284, tmp3283
	cmp	r8, #2	@ tmp3284,
	addgt	sl, sl, #1	@,, tmp3287, MisCnt.9605
	cmp	sl, #2	@ tmp3287,
	bgt	.L26	@,
	ldr	r3, [r6, #660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #664]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #668]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3305, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3305,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3298, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3306, tmp3305
	cmp	lr, #0	@ tmp3298,
	rsb	r0, r2, r0	@ tmp3312, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3299, tmp3298
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3306,
	movle	sl, #0	@, tmp3308
	movgt	sl, #1	@, tmp3308
	ldrb	r8, [r6, #675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3299,
	addgt	sl, sl, #1	@,, MisCnt.9631, tmp3308
	cmp	r0, #0	@ tmp3312,
	ldrb	r1, [r6, #676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3319, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3313, tmp3312
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3313,
	addgt	sl, sl, #1	@,, MisCnt.9639, MisCnt.9631
	cmp	r8, #0	@ tmp3319,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3326, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3320, tmp3319
	ldrb	ip, [r6, #677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3320,
	addgt	sl, sl, #1	@,, MisCnt.9647, MisCnt.9639
	cmp	r2, #0	@ tmp3326,
	ldrb	lr, [r6, #678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3333, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3327, tmp3326
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3327,
	addgt	sl, sl, #1	@,, MisCnt.9655, MisCnt.9647
	cmp	ip, #0	@ tmp3333,
	ldrb	r0, [r6, #679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3340, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3334, tmp3333
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3334,
	addgt	sl, sl, #1	@,, MisCnt.9663, MisCnt.9655
	cmp	r1, #0	@ tmp3340,
	rsb	r8, r2, r0	@ tmp3347, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3341, tmp3340
	cmp	r1, #2	@ tmp3341,
	addgt	sl, sl, #1	@,, MisCnt.9671, MisCnt.9663
	cmp	r8, #0	@ tmp3347,
	rsblt	r8, r8, #0	@ tmp3348, tmp3347
	cmp	r8, #2	@ tmp3348,
	addgt	sl, sl, #1	@,, tmp3351, MisCnt.9671
	cmp	sl, #2	@ tmp3351,
	bgt	.L26	@,
	ldr	r3, [r6, #680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #684]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #688]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp3369, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3369,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp3362, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3370, tmp3369
	cmp	r8, #0	@ tmp3362,
	rsb	r0, r2, r0	@ tmp3376, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3363, tmp3362
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3370,
	movle	r3, #0	@, tmp3372
	movgt	r3, #1	@, tmp3372
	ldrb	sl, [r6, #695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3363,
	addgt	r3, r3, #1	@,, MisCnt.2822, tmp3372
	cmp	r0, #0	@ tmp3376,
	ldrb	r1, [r6, #696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3383, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3377, tmp3376
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3377,
	addgt	r3, r3, #1	@,, MisCnt.2832, MisCnt.2822
	cmp	sl, #0	@ tmp3383,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3390, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3384, tmp3383
	ldrb	ip, [r6, #697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3384,
	addgt	r3, r3, #1	@,, MisCnt.2840, MisCnt.2832
	cmp	r2, #0	@ tmp3390,
	ldrb	r8, [r6, #698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3397, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3391, tmp3390
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3391,
	addgt	r3, r3, #1	@,, MisCnt.2848, MisCnt.2840
	cmp	ip, #0	@ tmp3397,
	ldrb	r0, [r6, #699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3398, tmp3397
	rsb	r1, r1, r8	@ tmp3404, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3398,
	addgt	r3, r3, #1	@,, MisCnt.2856, MisCnt.2848
	cmp	r1, #0	@ tmp3404,
	rsb	ip, r2, r0	@ tmp3411, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3405, tmp3404
	cmp	r1, #2	@ tmp3405,
	addgt	r3, r3, #1	@,, MisCnt.2864, MisCnt.2856
	cmp	ip, #0	@ tmp3411,
	rsblt	ip, ip, #0	@ tmp3412, tmp3411
	cmp	ip, #2	@ tmp3412,
	addgt	r3, r3, #1	@,, tmp3415, MisCnt.2864
	cmp	r3, #2	@ tmp3415,
	movle	r0, #12	@ Result,
	ble	.L13	@,
.L26:
	ldr	r3, [r4, #700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #704]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #708]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp3416,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp3416,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3433, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3433,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3426, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3434, tmp3433
	cmp	lr, #0	@ tmp3426,
	rsb	r0, r2, r0	@ tmp3440, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3427, tmp3426
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3434,
	movle	sl, #0	@, tmp3436
	movgt	sl, #1	@, tmp3436
	ldrb	r8, [r4, #715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3427,
	addgt	sl, sl, #1	@,, MisCnt.9697, tmp3436
	cmp	r0, #0	@ tmp3440,
	ldrb	r1, [r4, #716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3447, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3441, tmp3440
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3441,
	addgt	sl, sl, #1	@,, MisCnt.9705, MisCnt.9697
	cmp	r8, #0	@ tmp3447,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3454, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3448, tmp3447
	ldrb	ip, [r4, #717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3448,
	addgt	sl, sl, #1	@,, MisCnt.9713, MisCnt.9705
	cmp	r2, #0	@ tmp3454,
	ldrb	lr, [r4, #718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3461, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3455, tmp3454
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3455,
	addgt	sl, sl, #1	@,, MisCnt.9721, MisCnt.9713
	cmp	ip, #0	@ tmp3461,
	ldrb	r0, [r4, #719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3462, tmp3461
	rsb	r1, r1, lr	@ tmp3468, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3462,
	addgt	sl, sl, #1	@,, MisCnt.9729, MisCnt.9721
	cmp	r1, #0	@ tmp3468,
	rsb	ip, r8, r0	@ tmp3475, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3469, tmp3468
	cmp	r1, #2	@ tmp3469,
	addgt	sl, sl, #1	@,, MisCnt.9737, MisCnt.9729
	cmp	ip, #0	@ tmp3475,
	rsblt	ip, ip, #0	@ tmp3476, tmp3475
	cmp	ip, #2	@ tmp3476,
	addgt	sl, sl, #1	@,, tmp3479, MisCnt.9737
	cmp	sl, #2	@ tmp3479,
	bgt	.L27	@,
	ldr	r3, [r6, #720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #724]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #728]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3497, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3497,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3490, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3498, tmp3497
	cmp	lr, #0	@ tmp3490,
	rsb	r0, r2, r0	@ tmp3504, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3491, tmp3490
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3498,
	movle	sl, #0	@, tmp3500
	movgt	sl, #1	@, tmp3500
	ldrb	r8, [r6, #735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3491,
	addgt	sl, sl, #1	@,, MisCnt.9763, tmp3500
	cmp	r0, #0	@ tmp3504,
	ldrb	r1, [r6, #736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3511, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3505, tmp3504
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3505,
	addgt	sl, sl, #1	@,, MisCnt.9771, MisCnt.9763
	cmp	r8, #0	@ tmp3511,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3518, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3512, tmp3511
	ldrb	ip, [r6, #737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3512,
	addgt	sl, sl, #1	@,, MisCnt.9779, MisCnt.9771
	cmp	r2, #0	@ tmp3518,
	ldrb	lr, [r6, #738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3525, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3519, tmp3518
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3519,
	addgt	sl, sl, #1	@,, MisCnt.9787, MisCnt.9779
	cmp	ip, #0	@ tmp3525,
	ldrb	r0, [r6, #739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3532, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3526, tmp3525
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3526,
	addgt	sl, sl, #1	@,, MisCnt.9795, MisCnt.9787
	cmp	r1, #0	@ tmp3532,
	rsb	r8, r2, r0	@ tmp3539, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3533, tmp3532
	cmp	r1, #2	@ tmp3533,
	addgt	sl, sl, #1	@,, MisCnt.9803, MisCnt.9795
	cmp	r8, #0	@ tmp3539,
	rsblt	r8, r8, #0	@ tmp3540, tmp3539
	cmp	r8, #2	@ tmp3540,
	addgt	sl, sl, #1	@,, tmp3543, MisCnt.9803
	cmp	sl, #2	@ tmp3543,
	bgt	.L27	@,
	ldr	r3, [r6, #740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #744]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #748]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3561, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3561,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3554, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3562, tmp3561
	cmp	lr, #0	@ tmp3554,
	rsb	r0, r2, r0	@ tmp3568, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3555, tmp3554
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3562,
	movle	sl, #0	@, tmp3564
	movgt	sl, #1	@, tmp3564
	ldrb	r8, [r6, #755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3555,
	addgt	sl, sl, #1	@,, MisCnt.9829, tmp3564
	cmp	r0, #0	@ tmp3568,
	ldrb	r1, [r6, #756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3575, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3569, tmp3568
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3569,
	addgt	sl, sl, #1	@,, MisCnt.9837, MisCnt.9829
	cmp	r8, #0	@ tmp3575,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3582, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3576, tmp3575
	ldrb	ip, [r6, #757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3576,
	addgt	sl, sl, #1	@,, MisCnt.9845, MisCnt.9837
	cmp	r2, #0	@ tmp3582,
	ldrb	lr, [r6, #758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3589, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3583, tmp3582
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3583,
	addgt	sl, sl, #1	@,, MisCnt.9853, MisCnt.9845
	cmp	ip, #0	@ tmp3589,
	ldrb	r0, [r6, #759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3596, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3590, tmp3589
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3590,
	addgt	sl, sl, #1	@,, MisCnt.9861, MisCnt.9853
	cmp	r1, #0	@ tmp3596,
	rsb	r8, r2, r0	@ tmp3603, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3597, tmp3596
	cmp	r1, #2	@ tmp3597,
	addgt	sl, sl, #1	@,, MisCnt.9869, MisCnt.9861
	cmp	r8, #0	@ tmp3603,
	rsblt	r8, r8, #0	@ tmp3604, tmp3603
	cmp	r8, #2	@ tmp3604,
	addgt	sl, sl, #1	@,, tmp3607, MisCnt.9869
	cmp	sl, #2	@ tmp3607,
	bgt	.L27	@,
	ldr	r3, [r6, #760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #764]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3625, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3625,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3618, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3626, tmp3625
	cmp	lr, #0	@ tmp3618,
	rsb	r0, r2, r0	@ tmp3632, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3619, tmp3618
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3626,
	movle	sl, #0	@, tmp3628
	movgt	sl, #1	@, tmp3628
	ldrb	r8, [r6, #775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3619,
	addgt	sl, sl, #1	@,, MisCnt.9895, tmp3628
	cmp	r0, #0	@ tmp3632,
	ldrb	r1, [r6, #776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3639, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3633, tmp3632
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3633,
	addgt	sl, sl, #1	@,, MisCnt.9903, MisCnt.9895
	cmp	r8, #0	@ tmp3639,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3646, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3640, tmp3639
	ldrb	ip, [r6, #777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3640,
	addgt	sl, sl, #1	@,, MisCnt.9911, MisCnt.9903
	cmp	r2, #0	@ tmp3646,
	ldrb	lr, [r6, #778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3653, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3647, tmp3646
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3647,
	addgt	sl, sl, #1	@,, MisCnt.9919, MisCnt.9911
	cmp	ip, #0	@ tmp3653,
	ldrb	r0, [r6, #779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3660, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3654, tmp3653
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3654,
	addgt	sl, sl, #1	@,, MisCnt.9927, MisCnt.9919
	cmp	r1, #0	@ tmp3660,
	rsb	r8, r2, r0	@ tmp3667, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3661, tmp3660
	cmp	r1, #2	@ tmp3661,
	addgt	sl, sl, #1	@,, MisCnt.9935, MisCnt.9927
	cmp	r8, #0	@ tmp3667,
	rsblt	r8, r8, #0	@ tmp3668, tmp3667
	cmp	r8, #2	@ tmp3668,
	addgt	sl, sl, #1	@,, tmp3671, MisCnt.9935
	cmp	sl, #2	@ tmp3671,
	bgt	.L27	@,
	ldr	r3, [r6, #780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #784]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #788]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp3689, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3689,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp3682, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3690, tmp3689
	cmp	r8, #0	@ tmp3682,
	rsb	r0, r2, r0	@ tmp3696, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3683, tmp3682
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3690,
	movle	r3, #0	@, tmp3692
	movgt	r3, #1	@, tmp3692
	ldrb	sl, [r6, #795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3683,
	addgt	r3, r3, #1	@,, MisCnt.2882, tmp3692
	cmp	r0, #0	@ tmp3696,
	ldrb	r1, [r6, #796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3703, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3697, tmp3696
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3697,
	addgt	r3, r3, #1	@,, MisCnt.2893, MisCnt.2882
	cmp	sl, #0	@ tmp3703,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3710, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3704, tmp3703
	ldrb	ip, [r6, #797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3704,
	addgt	r3, r3, #1	@,, MisCnt.2903, MisCnt.2893
	cmp	r2, #0	@ tmp3710,
	ldrb	r8, [r6, #798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3717, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3711, tmp3710
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3711,
	addgt	r3, r3, #1	@,, MisCnt.2911, MisCnt.2903
	cmp	ip, #0	@ tmp3717,
	ldrb	r0, [r6, #799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3718, tmp3717
	rsb	r1, r1, r8	@ tmp3724, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3718,
	addgt	r3, r3, #1	@,, MisCnt.2921, MisCnt.2911
	cmp	r1, #0	@ tmp3724,
	rsb	ip, r2, r0	@ tmp3731, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3725, tmp3724
	cmp	r1, #2	@ tmp3725,
	addgt	r3, r3, #1	@,, MisCnt.2932, MisCnt.2921
	cmp	ip, #0	@ tmp3731,
	rsblt	ip, ip, #0	@ tmp3732, tmp3731
	cmp	ip, #2	@ tmp3732,
	addgt	r3, r3, #1	@,, tmp3735, MisCnt.2932
	cmp	r3, #2	@ tmp3735,
	movle	r0, #13	@ Result,
	ble	.L13	@,
.L27:
	ldr	r3, [r4, #800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #804]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #808]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp3736,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp3736,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3753, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3753,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3746, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3754, tmp3753
	cmp	lr, #0	@ tmp3746,
	rsb	r0, r2, r0	@ tmp3760, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3747, tmp3746
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3754,
	movle	sl, #0	@, tmp3756
	movgt	sl, #1	@, tmp3756
	ldrb	r8, [r4, #815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3747,
	addgt	sl, sl, #1	@,, MisCnt.9961, tmp3756
	cmp	r0, #0	@ tmp3760,
	ldrb	r1, [r4, #816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3767, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3761, tmp3760
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3761,
	addgt	sl, sl, #1	@,, MisCnt.9969, MisCnt.9961
	cmp	r8, #0	@ tmp3767,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3774, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3768, tmp3767
	ldrb	ip, [r4, #817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3768,
	addgt	sl, sl, #1	@,, MisCnt.9977, MisCnt.9969
	cmp	r2, #0	@ tmp3774,
	ldrb	lr, [r4, #818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3781, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3775, tmp3774
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3775,
	addgt	sl, sl, #1	@,, MisCnt.9985, MisCnt.9977
	cmp	ip, #0	@ tmp3781,
	ldrb	r0, [r4, #819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3782, tmp3781
	rsb	r1, r1, lr	@ tmp3788, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3782,
	addgt	sl, sl, #1	@,, MisCnt.9993, MisCnt.9985
	cmp	r1, #0	@ tmp3788,
	rsb	ip, r8, r0	@ tmp3795, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3789, tmp3788
	cmp	r1, #2	@ tmp3789,
	addgt	sl, sl, #1	@,, MisCnt.10001, MisCnt.9993
	cmp	ip, #0	@ tmp3795,
	rsblt	ip, ip, #0	@ tmp3796, tmp3795
	cmp	ip, #2	@ tmp3796,
	addgt	sl, sl, #1	@,, tmp3799, MisCnt.10001
	cmp	sl, #2	@ tmp3799,
	bgt	.L28	@,
	ldr	r3, [r6, #820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #824]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #828]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3817, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3817,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3810, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3818, tmp3817
	cmp	lr, #0	@ tmp3810,
	rsb	r0, r2, r0	@ tmp3824, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3811, tmp3810
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3818,
	movle	sl, #0	@, tmp3820
	movgt	sl, #1	@, tmp3820
	ldrb	r8, [r6, #835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3811,
	addgt	sl, sl, #1	@,, MisCnt.10027, tmp3820
	cmp	r0, #0	@ tmp3824,
	ldrb	r1, [r6, #836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3831, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3825, tmp3824
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3825,
	addgt	sl, sl, #1	@,, MisCnt.10035, MisCnt.10027
	cmp	r8, #0	@ tmp3831,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3838, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3832, tmp3831
	ldrb	ip, [r6, #837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3832,
	addgt	sl, sl, #1	@,, MisCnt.10043, MisCnt.10035
	cmp	r2, #0	@ tmp3838,
	ldrb	lr, [r6, #838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3845, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3839, tmp3838
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3839,
	addgt	sl, sl, #1	@,, MisCnt.10051, MisCnt.10043
	cmp	ip, #0	@ tmp3845,
	ldrb	r0, [r6, #839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3852, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3846, tmp3845
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3846,
	addgt	sl, sl, #1	@,, MisCnt.10059, MisCnt.10051
	cmp	r1, #0	@ tmp3852,
	rsb	r8, r2, r0	@ tmp3859, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3853, tmp3852
	cmp	r1, #2	@ tmp3853,
	addgt	sl, sl, #1	@,, MisCnt.10067, MisCnt.10059
	cmp	r8, #0	@ tmp3859,
	rsblt	r8, r8, #0	@ tmp3860, tmp3859
	cmp	r8, #2	@ tmp3860,
	addgt	sl, sl, #1	@,, tmp3863, MisCnt.10067
	cmp	sl, #2	@ tmp3863,
	bgt	.L28	@,
	ldr	r3, [r6, #840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #844]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #848]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3881, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3881,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3874, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3882, tmp3881
	cmp	lr, #0	@ tmp3874,
	rsb	r0, r2, r0	@ tmp3888, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3875, tmp3874
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3882,
	movle	sl, #0	@, tmp3884
	movgt	sl, #1	@, tmp3884
	ldrb	r8, [r6, #855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3875,
	addgt	sl, sl, #1	@,, MisCnt.10093, tmp3884
	cmp	r0, #0	@ tmp3888,
	ldrb	r1, [r6, #856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3895, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3889, tmp3888
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3889,
	addgt	sl, sl, #1	@,, MisCnt.10101, MisCnt.10093
	cmp	r8, #0	@ tmp3895,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3902, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3896, tmp3895
	ldrb	ip, [r6, #857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3896,
	addgt	sl, sl, #1	@,, MisCnt.10109, MisCnt.10101
	cmp	r2, #0	@ tmp3902,
	ldrb	lr, [r6, #858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3909, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3903, tmp3902
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3903,
	addgt	sl, sl, #1	@,, MisCnt.10117, MisCnt.10109
	cmp	ip, #0	@ tmp3909,
	ldrb	r0, [r6, #859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3916, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3910, tmp3909
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3910,
	addgt	sl, sl, #1	@,, MisCnt.10125, MisCnt.10117
	cmp	r1, #0	@ tmp3916,
	rsb	r8, r2, r0	@ tmp3923, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3917, tmp3916
	cmp	r1, #2	@ tmp3917,
	addgt	sl, sl, #1	@,, MisCnt.10133, MisCnt.10125
	cmp	r8, #0	@ tmp3923,
	rsblt	r8, r8, #0	@ tmp3924, tmp3923
	cmp	r8, #2	@ tmp3924,
	addgt	sl, sl, #1	@,, tmp3927, MisCnt.10133
	cmp	sl, #2	@ tmp3927,
	bgt	.L28	@,
	ldr	r3, [r6, #860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #864]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3945, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3945,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3938, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3946, tmp3945
	cmp	lr, #0	@ tmp3938,
	rsb	r0, r2, r0	@ tmp3952, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3939, tmp3938
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3946,
	movle	sl, #0	@, tmp3948
	movgt	sl, #1	@, tmp3948
	ldrb	r8, [r6, #875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3939,
	addgt	sl, sl, #1	@,, MisCnt.10159, tmp3948
	cmp	r0, #0	@ tmp3952,
	ldrb	r1, [r6, #876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3959, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3953, tmp3952
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3953,
	addgt	sl, sl, #1	@,, MisCnt.10167, MisCnt.10159
	cmp	r8, #0	@ tmp3959,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3966, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3960, tmp3959
	ldrb	ip, [r6, #877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3960,
	addgt	sl, sl, #1	@,, MisCnt.10175, MisCnt.10167
	cmp	r2, #0	@ tmp3966,
	ldrb	lr, [r6, #878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3973, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3967, tmp3966
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3967,
	addgt	sl, sl, #1	@,, MisCnt.10183, MisCnt.10175
	cmp	ip, #0	@ tmp3973,
	ldrb	r0, [r6, #879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3980, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3974, tmp3973
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3974,
	addgt	sl, sl, #1	@,, MisCnt.10191, MisCnt.10183
	cmp	r1, #0	@ tmp3980,
	rsb	r8, r2, r0	@ tmp3987, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3981, tmp3980
	cmp	r1, #2	@ tmp3981,
	addgt	sl, sl, #1	@,, MisCnt.10199, MisCnt.10191
	cmp	r8, #0	@ tmp3987,
	rsblt	r8, r8, #0	@ tmp3988, tmp3987
	cmp	r8, #2	@ tmp3988,
	addgt	sl, sl, #1	@,, tmp3991, MisCnt.10199
	cmp	sl, #2	@ tmp3991,
	bgt	.L28	@,
	ldr	r3, [r6, #880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #884]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #888]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4009, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4009,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp4002, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4010, tmp4009
	cmp	r8, #0	@ tmp4002,
	rsb	r0, r2, r0	@ tmp4016, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4003, tmp4002
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4010,
	movle	r3, #0	@, tmp4012
	movgt	r3, #1	@, tmp4012
	ldrb	sl, [r6, #895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4003,
	addgt	r3, r3, #1	@,, MisCnt.2950, tmp4012
	cmp	r0, #0	@ tmp4016,
	ldrb	r1, [r6, #896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4023, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4017, tmp4016
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4017,
	addgt	r3, r3, #1	@,, MisCnt.2959, MisCnt.2950
	cmp	sl, #0	@ tmp4023,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4030, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4024, tmp4023
	ldrb	ip, [r6, #897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4024,
	addgt	r3, r3, #1	@,, MisCnt.2970, MisCnt.2959
	cmp	r2, #0	@ tmp4030,
	ldrb	r8, [r6, #898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4037, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4031, tmp4030
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4031,
	addgt	r3, r3, #1	@,, MisCnt.2981, MisCnt.2970
	cmp	ip, #0	@ tmp4037,
	ldrb	r0, [r6, #899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4038, tmp4037
	rsb	r1, r1, r8	@ tmp4044, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4038,
	addgt	r3, r3, #1	@,, MisCnt.2990, MisCnt.2981
	cmp	r1, #0	@ tmp4044,
	rsb	ip, r2, r0	@ tmp4051, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4045, tmp4044
	cmp	r1, #2	@ tmp4045,
	addgt	r3, r3, #1	@,, MisCnt.3001, MisCnt.2990
	cmp	ip, #0	@ tmp4051,
	rsblt	ip, ip, #0	@ tmp4052, tmp4051
	cmp	ip, #2	@ tmp4052,
	addgt	r3, r3, #1	@,, tmp4055, MisCnt.3001
	cmp	r3, #2	@ tmp4055,
	movle	r0, #14	@ Result,
	ble	.L13	@,
.L28:
	ldr	r3, [r4, #900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #904]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #908]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp4056,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp4056,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4073, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4073,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4066, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4074, tmp4073
	cmp	lr, #0	@ tmp4066,
	rsb	r0, r2, r0	@ tmp4080, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4067, tmp4066
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4074,
	movle	sl, #0	@, tmp4076
	movgt	sl, #1	@, tmp4076
	ldrb	r8, [r4, #915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4067,
	addgt	sl, sl, #1	@,, MisCnt.10225, tmp4076
	cmp	r0, #0	@ tmp4080,
	ldrb	r1, [r4, #916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4087, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4081, tmp4080
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4081,
	addgt	sl, sl, #1	@,, MisCnt.10233, MisCnt.10225
	cmp	r8, #0	@ tmp4087,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4094, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4088, tmp4087
	ldrb	ip, [r4, #917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4088,
	addgt	sl, sl, #1	@,, MisCnt.10241, MisCnt.10233
	cmp	r2, #0	@ tmp4094,
	ldrb	lr, [r4, #918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4101, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4095, tmp4094
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4095,
	addgt	sl, sl, #1	@,, MisCnt.10249, MisCnt.10241
	cmp	ip, #0	@ tmp4101,
	ldrb	r0, [r4, #919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4102, tmp4101
	rsb	r1, r1, lr	@ tmp4108, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4102,
	addgt	sl, sl, #1	@,, MisCnt.10257, MisCnt.10249
	cmp	r1, #0	@ tmp4108,
	rsb	ip, r8, r0	@ tmp4115, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4109, tmp4108
	cmp	r1, #2	@ tmp4109,
	addgt	sl, sl, #1	@,, MisCnt.10265, MisCnt.10257
	cmp	ip, #0	@ tmp4115,
	rsblt	ip, ip, #0	@ tmp4116, tmp4115
	cmp	ip, #2	@ tmp4116,
	addgt	sl, sl, #1	@,, tmp4119, MisCnt.10265
	cmp	sl, #2	@ tmp4119,
	bgt	.L29	@,
	ldr	r3, [r6, #920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #924]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #928]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4137, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4137,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4130, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4138, tmp4137
	cmp	lr, #0	@ tmp4130,
	rsb	r0, r2, r0	@ tmp4144, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4131, tmp4130
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4138,
	movle	sl, #0	@, tmp4140
	movgt	sl, #1	@, tmp4140
	ldrb	r8, [r6, #935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4131,
	addgt	sl, sl, #1	@,, MisCnt.10291, tmp4140
	cmp	r0, #0	@ tmp4144,
	ldrb	r1, [r6, #936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4151, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4145, tmp4144
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4145,
	addgt	sl, sl, #1	@,, MisCnt.10299, MisCnt.10291
	cmp	r8, #0	@ tmp4151,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4158, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4152, tmp4151
	ldrb	ip, [r6, #937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4152,
	addgt	sl, sl, #1	@,, MisCnt.10307, MisCnt.10299
	cmp	r2, #0	@ tmp4158,
	ldrb	lr, [r6, #938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4165, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4159, tmp4158
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4159,
	addgt	sl, sl, #1	@,, MisCnt.10315, MisCnt.10307
	cmp	ip, #0	@ tmp4165,
	ldrb	r0, [r6, #939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4172, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4166, tmp4165
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4166,
	addgt	sl, sl, #1	@,, MisCnt.10323, MisCnt.10315
	cmp	r1, #0	@ tmp4172,
	rsb	r8, r2, r0	@ tmp4179, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4173, tmp4172
	cmp	r1, #2	@ tmp4173,
	addgt	sl, sl, #1	@,, MisCnt.10331, MisCnt.10323
	cmp	r8, #0	@ tmp4179,
	rsblt	r8, r8, #0	@ tmp4180, tmp4179
	cmp	r8, #2	@ tmp4180,
	addgt	sl, sl, #1	@,, tmp4183, MisCnt.10331
	cmp	sl, #2	@ tmp4183,
	bgt	.L29	@,
	ldr	r3, [r6, #940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #944]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #948]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4201, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4201,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4194, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4202, tmp4201
	cmp	lr, #0	@ tmp4194,
	rsb	r0, r2, r0	@ tmp4208, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4195, tmp4194
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4202,
	movle	sl, #0	@, tmp4204
	movgt	sl, #1	@, tmp4204
	ldrb	r8, [r6, #955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4195,
	addgt	sl, sl, #1	@,, MisCnt.10357, tmp4204
	cmp	r0, #0	@ tmp4208,
	ldrb	r1, [r6, #956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4215, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4209, tmp4208
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4209,
	addgt	sl, sl, #1	@,, MisCnt.10365, MisCnt.10357
	cmp	r8, #0	@ tmp4215,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4222, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4216, tmp4215
	ldrb	ip, [r6, #957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4216,
	addgt	sl, sl, #1	@,, MisCnt.10373, MisCnt.10365
	cmp	r2, #0	@ tmp4222,
	ldrb	lr, [r6, #958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4229, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4223, tmp4222
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4223,
	addgt	sl, sl, #1	@,, MisCnt.10381, MisCnt.10373
	cmp	ip, #0	@ tmp4229,
	ldrb	r0, [r6, #959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4236, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4230, tmp4229
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4230,
	addgt	sl, sl, #1	@,, MisCnt.10389, MisCnt.10381
	cmp	r1, #0	@ tmp4236,
	rsb	r8, r2, r0	@ tmp4243, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4237, tmp4236
	cmp	r1, #2	@ tmp4237,
	addgt	sl, sl, #1	@,, MisCnt.10397, MisCnt.10389
	cmp	r8, #0	@ tmp4243,
	rsblt	r8, r8, #0	@ tmp4244, tmp4243
	cmp	r8, #2	@ tmp4244,
	addgt	sl, sl, #1	@,, tmp4247, MisCnt.10397
	cmp	sl, #2	@ tmp4247,
	bgt	.L29	@,
	ldr	r3, [r6, #960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #964]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #968]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4265, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4265,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4258, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4266, tmp4265
	cmp	lr, #0	@ tmp4258,
	rsb	r0, r2, r0	@ tmp4272, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4259, tmp4258
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4266,
	movle	sl, #0	@, tmp4268
	movgt	sl, #1	@, tmp4268
	ldrb	r8, [r6, #975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4259,
	addgt	sl, sl, #1	@,, MisCnt.10423, tmp4268
	cmp	r0, #0	@ tmp4272,
	ldrb	r1, [r6, #976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4279, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4273, tmp4272
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4273,
	addgt	sl, sl, #1	@,, MisCnt.10431, MisCnt.10423
	cmp	r8, #0	@ tmp4279,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4286, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4280, tmp4279
	ldrb	ip, [r6, #977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4280,
	addgt	sl, sl, #1	@,, MisCnt.10439, MisCnt.10431
	cmp	r2, #0	@ tmp4286,
	ldrb	lr, [r6, #978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4293, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4287, tmp4286
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4287,
	addgt	sl, sl, #1	@,, MisCnt.10447, MisCnt.10439
	cmp	ip, #0	@ tmp4293,
	ldrb	r0, [r6, #979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4300, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4294, tmp4293
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4294,
	addgt	sl, sl, #1	@,, MisCnt.10455, MisCnt.10447
	cmp	r1, #0	@ tmp4300,
	rsb	r8, r2, r0	@ tmp4307, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4301, tmp4300
	cmp	r1, #2	@ tmp4301,
	addgt	sl, sl, #1	@,, MisCnt.10463, MisCnt.10455
	cmp	r8, #0	@ tmp4307,
	rsblt	r8, r8, #0	@ tmp4308, tmp4307
	cmp	r8, #2	@ tmp4308,
	addgt	sl, sl, #1	@,, tmp4311, MisCnt.10463
	cmp	sl, #2	@ tmp4311,
	bgt	.L29	@,
	ldr	r3, [r6, #980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #984]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #988]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4329, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4329,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp4322, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4330, tmp4329
	cmp	r8, #0	@ tmp4322,
	rsb	r0, r2, r0	@ tmp4336, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4323, tmp4322
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4330,
	movle	r3, #0	@, tmp4332
	movgt	r3, #1	@, tmp4332
	ldrb	sl, [r6, #995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4323,
	addgt	r3, r3, #1	@,, MisCnt.3020, tmp4332
	cmp	r0, #0	@ tmp4336,
	ldrb	r1, [r6, #996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4343, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4337, tmp4336
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4337,
	addgt	r3, r3, #1	@,, MisCnt.3030, MisCnt.3020
	cmp	sl, #0	@ tmp4343,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4350, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4344, tmp4343
	ldrb	ip, [r6, #997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4344,
	addgt	r3, r3, #1	@,, MisCnt.3040, MisCnt.3030
	cmp	r2, #0	@ tmp4350,
	ldrb	r8, [r6, #998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4357, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4351, tmp4350
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4351,
	addgt	r3, r3, #1	@,, MisCnt.3051, MisCnt.3040
	cmp	ip, #0	@ tmp4357,
	ldrb	r0, [r6, #999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4358, tmp4357
	rsb	r1, r1, r8	@ tmp4364, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4358,
	addgt	r3, r3, #1	@,, MisCnt.3062, MisCnt.3051
	cmp	r1, #0	@ tmp4364,
	rsb	ip, r2, r0	@ tmp4371, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4365, tmp4364
	cmp	r1, #2	@ tmp4365,
	addgt	r3, r3, #1	@,, MisCnt.3071, MisCnt.3062
	cmp	ip, #0	@ tmp4371,
	rsblt	ip, ip, #0	@ tmp4372, tmp4371
	cmp	ip, #2	@ tmp4372,
	addgt	r3, r3, #1	@,, tmp4375, MisCnt.3071
	cmp	r3, #2	@ tmp4375,
	movle	r0, #15	@ Result,
	ble	.L13	@,
.L29:
	ldr	r3, [r4, #1000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #1004]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1008]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp4376,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp4376,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4393, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4393,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4386, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4394, tmp4393
	cmp	lr, #0	@ tmp4386,
	rsb	r0, r2, r0	@ tmp4400, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4387, tmp4386
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4394,
	movle	sl, #0	@, tmp4396
	movgt	sl, #1	@, tmp4396
	ldrb	r8, [r4, #1015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4387,
	addgt	sl, sl, #1	@,, MisCnt.10489, tmp4396
	cmp	r0, #0	@ tmp4400,
	ldrb	r1, [r4, #1016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4407, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4401, tmp4400
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4401,
	addgt	sl, sl, #1	@,, MisCnt.10497, MisCnt.10489
	cmp	r8, #0	@ tmp4407,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4414, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4408, tmp4407
	ldrb	ip, [r4, #1017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4408,
	addgt	sl, sl, #1	@,, MisCnt.10505, MisCnt.10497
	cmp	r2, #0	@ tmp4414,
	ldrb	lr, [r4, #1018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4421, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4415, tmp4414
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4415,
	addgt	sl, sl, #1	@,, MisCnt.10513, MisCnt.10505
	cmp	ip, #0	@ tmp4421,
	ldrb	r0, [r4, #1019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4422, tmp4421
	rsb	r1, r1, lr	@ tmp4428, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4422,
	addgt	sl, sl, #1	@,, MisCnt.10521, MisCnt.10513
	cmp	r1, #0	@ tmp4428,
	rsb	ip, r8, r0	@ tmp4435, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4429, tmp4428
	cmp	r1, #2	@ tmp4429,
	addgt	sl, sl, #1	@,, MisCnt.10529, MisCnt.10521
	cmp	ip, #0	@ tmp4435,
	rsblt	ip, ip, #0	@ tmp4436, tmp4435
	cmp	ip, #2	@ tmp4436,
	addgt	sl, sl, #1	@,, tmp4439, MisCnt.10529
	cmp	sl, #2	@ tmp4439,
	bgt	.L30	@,
	ldr	r3, [r6, #1020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1024]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1028]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4457, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4457,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4450, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4458, tmp4457
	cmp	lr, #0	@ tmp4450,
	rsb	r0, r2, r0	@ tmp4464, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4451, tmp4450
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4458,
	movle	sl, #0	@, tmp4460
	movgt	sl, #1	@, tmp4460
	ldrb	r8, [r6, #1035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4451,
	addgt	sl, sl, #1	@,, MisCnt.10555, tmp4460
	cmp	r0, #0	@ tmp4464,
	ldrb	r1, [r6, #1036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4471, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4465, tmp4464
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4465,
	addgt	sl, sl, #1	@,, MisCnt.10563, MisCnt.10555
	cmp	r8, #0	@ tmp4471,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4478, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4472, tmp4471
	ldrb	ip, [r6, #1037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4472,
	addgt	sl, sl, #1	@,, MisCnt.10571, MisCnt.10563
	cmp	r2, #0	@ tmp4478,
	ldrb	lr, [r6, #1038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4485, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4479, tmp4478
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4479,
	addgt	sl, sl, #1	@,, MisCnt.10579, MisCnt.10571
	cmp	ip, #0	@ tmp4485,
	ldrb	r0, [r6, #1039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4492, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4486, tmp4485
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4486,
	addgt	sl, sl, #1	@,, MisCnt.10587, MisCnt.10579
	cmp	r1, #0	@ tmp4492,
	rsb	r8, r2, r0	@ tmp4499, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4493, tmp4492
	cmp	r1, #2	@ tmp4493,
	addgt	sl, sl, #1	@,, MisCnt.10595, MisCnt.10587
	cmp	r8, #0	@ tmp4499,
	rsblt	r8, r8, #0	@ tmp4500, tmp4499
	cmp	r8, #2	@ tmp4500,
	addgt	sl, sl, #1	@,, tmp4503, MisCnt.10595
	cmp	sl, #2	@ tmp4503,
	bgt	.L30	@,
	ldr	r3, [r6, #1040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1044]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1048]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4521, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4521,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4514, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4522, tmp4521
	cmp	lr, #0	@ tmp4514,
	rsb	r0, r2, r0	@ tmp4528, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4515, tmp4514
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4522,
	movle	sl, #0	@, tmp4524
	movgt	sl, #1	@, tmp4524
	ldrb	r8, [r6, #1055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4515,
	addgt	sl, sl, #1	@,, MisCnt.10621, tmp4524
	cmp	r0, #0	@ tmp4528,
	ldrb	r1, [r6, #1056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4535, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4529, tmp4528
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4529,
	addgt	sl, sl, #1	@,, MisCnt.10629, MisCnt.10621
	cmp	r8, #0	@ tmp4535,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4542, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4536, tmp4535
	ldrb	ip, [r6, #1057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4536,
	addgt	sl, sl, #1	@,, MisCnt.10637, MisCnt.10629
	cmp	r2, #0	@ tmp4542,
	ldrb	lr, [r6, #1058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4549, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4543, tmp4542
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4543,
	addgt	sl, sl, #1	@,, MisCnt.10645, MisCnt.10637
	cmp	ip, #0	@ tmp4549,
	ldrb	r0, [r6, #1059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4556, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4550, tmp4549
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4550,
	addgt	sl, sl, #1	@,, MisCnt.10653, MisCnt.10645
	cmp	r1, #0	@ tmp4556,
	rsb	r8, r2, r0	@ tmp4563, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4557, tmp4556
	cmp	r1, #2	@ tmp4557,
	addgt	sl, sl, #1	@,, MisCnt.10661, MisCnt.10653
	cmp	r8, #0	@ tmp4563,
	rsblt	r8, r8, #0	@ tmp4564, tmp4563
	cmp	r8, #2	@ tmp4564,
	addgt	sl, sl, #1	@,, tmp4567, MisCnt.10661
	cmp	sl, #2	@ tmp4567,
	bgt	.L30	@,
	ldr	r3, [r6, #1060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1064]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1068]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4585, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4585,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4578, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4586, tmp4585
	cmp	lr, #0	@ tmp4578,
	rsb	r0, r2, r0	@ tmp4592, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4579, tmp4578
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4586,
	movle	sl, #0	@, tmp4588
	movgt	sl, #1	@, tmp4588
	ldrb	r8, [r6, #1075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4579,
	addgt	sl, sl, #1	@,, MisCnt.10687, tmp4588
	cmp	r0, #0	@ tmp4592,
	ldrb	r1, [r6, #1076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4599, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4593, tmp4592
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4593,
	addgt	sl, sl, #1	@,, MisCnt.10695, MisCnt.10687
	cmp	r8, #0	@ tmp4599,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4606, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4600, tmp4599
	ldrb	ip, [r6, #1077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4600,
	addgt	sl, sl, #1	@,, MisCnt.10703, MisCnt.10695
	cmp	r2, #0	@ tmp4606,
	ldrb	lr, [r6, #1078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4613, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4607, tmp4606
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4607,
	addgt	sl, sl, #1	@,, MisCnt.10711, MisCnt.10703
	cmp	ip, #0	@ tmp4613,
	ldrb	r0, [r6, #1079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4620, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4614, tmp4613
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4614,
	addgt	sl, sl, #1	@,, MisCnt.10719, MisCnt.10711
	cmp	r1, #0	@ tmp4620,
	rsb	r8, r2, r0	@ tmp4627, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4621, tmp4620
	cmp	r1, #2	@ tmp4621,
	addgt	sl, sl, #1	@,, MisCnt.10727, MisCnt.10719
	cmp	r8, #0	@ tmp4627,
	rsblt	r8, r8, #0	@ tmp4628, tmp4627
	cmp	r8, #2	@ tmp4628,
	addgt	sl, sl, #1	@,, tmp4631, MisCnt.10727
	cmp	sl, #2	@ tmp4631,
	bgt	.L30	@,
	ldr	r3, [r6, #1080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1084]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1088]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4649, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4649,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp4642, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4650, tmp4649
	cmp	r8, #0	@ tmp4642,
	rsb	r0, r2, r0	@ tmp4656, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4643, tmp4642
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4650,
	movle	r3, #0	@, tmp4652
	movgt	r3, #1	@, tmp4652
	ldrb	sl, [r6, #1095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4643,
	addgt	r3, r3, #1	@,, MisCnt.3092, tmp4652
	cmp	r0, #0	@ tmp4656,
	ldrb	r1, [r6, #1096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4663, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4657, tmp4656
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4657,
	addgt	r3, r3, #1	@,, MisCnt.3103, MisCnt.3092
	cmp	sl, #0	@ tmp4663,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4670, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4664, tmp4663
	ldrb	ip, [r6, #1097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4664,
	addgt	r3, r3, #1	@,, MisCnt.3112, MisCnt.3103
	cmp	r2, #0	@ tmp4670,
	ldrb	r8, [r6, #1098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4677, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4671, tmp4670
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4671,
	addgt	r3, r3, #1	@,, MisCnt.3123, MisCnt.3112
	cmp	ip, #0	@ tmp4677,
	ldrb	r0, [r6, #1099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4678, tmp4677
	rsb	r1, r1, r8	@ tmp4684, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4678,
	addgt	r3, r3, #1	@,, MisCnt.3134, MisCnt.3123
	cmp	r1, #0	@ tmp4684,
	rsb	ip, r2, r0	@ tmp4691, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4685, tmp4684
	cmp	r1, #2	@ tmp4685,
	addgt	r3, r3, #1	@,, MisCnt.3144, MisCnt.3134
	cmp	ip, #0	@ tmp4691,
	rsblt	ip, ip, #0	@ tmp4692, tmp4691
	cmp	ip, #2	@ tmp4692,
	addgt	r3, r3, #1	@,, tmp4695, MisCnt.3144
	cmp	r3, #2	@ tmp4695,
	movle	r0, #16	@ Result,
	ble	.L13	@,
.L30:
	ldr	r3, [r4, #1100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #1104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1108]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp4696,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp4696,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4713, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4713,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4706, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4714, tmp4713
	cmp	lr, #0	@ tmp4706,
	rsb	r0, r2, r0	@ tmp4720, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4707, tmp4706
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4714,
	movle	sl, #0	@, tmp4716
	movgt	sl, #1	@, tmp4716
	ldrb	r8, [r4, #1115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4707,
	addgt	sl, sl, #1	@,, MisCnt.10753, tmp4716
	cmp	r0, #0	@ tmp4720,
	ldrb	r1, [r4, #1116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4727, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4721, tmp4720
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4721,
	addgt	sl, sl, #1	@,, MisCnt.10761, MisCnt.10753
	cmp	r8, #0	@ tmp4727,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4734, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4728, tmp4727
	ldrb	ip, [r4, #1117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4728,
	addgt	sl, sl, #1	@,, MisCnt.10769, MisCnt.10761
	cmp	r2, #0	@ tmp4734,
	ldrb	lr, [r4, #1118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4741, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4735, tmp4734
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4735,
	addgt	sl, sl, #1	@,, MisCnt.10777, MisCnt.10769
	cmp	ip, #0	@ tmp4741,
	ldrb	r0, [r4, #1119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4742, tmp4741
	rsb	r1, r1, lr	@ tmp4748, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4742,
	addgt	sl, sl, #1	@,, MisCnt.10785, MisCnt.10777
	cmp	r1, #0	@ tmp4748,
	rsb	ip, r8, r0	@ tmp4755, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4749, tmp4748
	cmp	r1, #2	@ tmp4749,
	addgt	sl, sl, #1	@,, MisCnt.10793, MisCnt.10785
	cmp	ip, #0	@ tmp4755,
	rsblt	ip, ip, #0	@ tmp4756, tmp4755
	cmp	ip, #2	@ tmp4756,
	addgt	sl, sl, #1	@,, tmp4759, MisCnt.10793
	cmp	sl, #2	@ tmp4759,
	bgt	.L31	@,
	ldr	r3, [r6, #1120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1128]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4777, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4777,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4770, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4778, tmp4777
	cmp	lr, #0	@ tmp4770,
	rsb	r0, r2, r0	@ tmp4784, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4771, tmp4770
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4778,
	movle	sl, #0	@, tmp4780
	movgt	sl, #1	@, tmp4780
	ldrb	r8, [r6, #1135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4771,
	addgt	sl, sl, #1	@,, MisCnt.10819, tmp4780
	cmp	r0, #0	@ tmp4784,
	ldrb	r1, [r6, #1136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4791, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4785, tmp4784
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4785,
	addgt	sl, sl, #1	@,, MisCnt.10827, MisCnt.10819
	cmp	r8, #0	@ tmp4791,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4798, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4792, tmp4791
	ldrb	ip, [r6, #1137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4792,
	addgt	sl, sl, #1	@,, MisCnt.10835, MisCnt.10827
	cmp	r2, #0	@ tmp4798,
	ldrb	lr, [r6, #1138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4805, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4799, tmp4798
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4799,
	addgt	sl, sl, #1	@,, MisCnt.10843, MisCnt.10835
	cmp	ip, #0	@ tmp4805,
	ldrb	r0, [r6, #1139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4812, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4806, tmp4805
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4806,
	addgt	sl, sl, #1	@,, MisCnt.10851, MisCnt.10843
	cmp	r1, #0	@ tmp4812,
	rsb	r8, r2, r0	@ tmp4819, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4813, tmp4812
	cmp	r1, #2	@ tmp4813,
	addgt	sl, sl, #1	@,, MisCnt.10859, MisCnt.10851
	cmp	r8, #0	@ tmp4819,
	rsblt	r8, r8, #0	@ tmp4820, tmp4819
	cmp	r8, #2	@ tmp4820,
	addgt	sl, sl, #1	@,, tmp4823, MisCnt.10859
	cmp	sl, #2	@ tmp4823,
	bgt	.L31	@,
	ldr	r3, [r6, #1140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1148]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4841, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4841,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4834, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4842, tmp4841
	cmp	lr, #0	@ tmp4834,
	rsb	r0, r2, r0	@ tmp4848, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4835, tmp4834
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4842,
	movle	sl, #0	@, tmp4844
	movgt	sl, #1	@, tmp4844
	ldrb	r8, [r6, #1155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4835,
	addgt	sl, sl, #1	@,, MisCnt.10885, tmp4844
	cmp	r0, #0	@ tmp4848,
	ldrb	r1, [r6, #1156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4855, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4849, tmp4848
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4849,
	addgt	sl, sl, #1	@,, MisCnt.10893, MisCnt.10885
	cmp	r8, #0	@ tmp4855,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4862, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4856, tmp4855
	ldrb	ip, [r6, #1157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4856,
	addgt	sl, sl, #1	@,, MisCnt.10901, MisCnt.10893
	cmp	r2, #0	@ tmp4862,
	ldrb	lr, [r6, #1158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4869, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4863, tmp4862
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4863,
	addgt	sl, sl, #1	@,, MisCnt.10909, MisCnt.10901
	cmp	ip, #0	@ tmp4869,
	ldrb	r0, [r6, #1159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4876, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4870, tmp4869
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4870,
	addgt	sl, sl, #1	@,, MisCnt.10917, MisCnt.10909
	cmp	r1, #0	@ tmp4876,
	rsb	r8, r2, r0	@ tmp4883, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4877, tmp4876
	cmp	r1, #2	@ tmp4877,
	addgt	sl, sl, #1	@,, MisCnt.10925, MisCnt.10917
	cmp	r8, #0	@ tmp4883,
	rsblt	r8, r8, #0	@ tmp4884, tmp4883
	cmp	r8, #2	@ tmp4884,
	addgt	sl, sl, #1	@,, tmp4887, MisCnt.10925
	cmp	sl, #2	@ tmp4887,
	bgt	.L31	@,
	ldr	r3, [r6, #1160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1164]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1168]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4905, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4905,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4898, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4906, tmp4905
	cmp	lr, #0	@ tmp4898,
	rsb	r0, r2, r0	@ tmp4912, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4899, tmp4898
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4906,
	movle	sl, #0	@, tmp4908
	movgt	sl, #1	@, tmp4908
	ldrb	r8, [r6, #1175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4899,
	addgt	sl, sl, #1	@,, MisCnt.10951, tmp4908
	cmp	r0, #0	@ tmp4912,
	ldrb	r1, [r6, #1176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4919, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4913, tmp4912
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4913,
	addgt	sl, sl, #1	@,, MisCnt.10959, MisCnt.10951
	cmp	r8, #0	@ tmp4919,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4926, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4920, tmp4919
	ldrb	ip, [r6, #1177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4920,
	addgt	sl, sl, #1	@,, MisCnt.10967, MisCnt.10959
	cmp	r2, #0	@ tmp4926,
	ldrb	lr, [r6, #1178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4933, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4927, tmp4926
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4927,
	addgt	sl, sl, #1	@,, MisCnt.10975, MisCnt.10967
	cmp	ip, #0	@ tmp4933,
	ldrb	r0, [r6, #1179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4940, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4934, tmp4933
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4934,
	addgt	sl, sl, #1	@,, MisCnt.10983, MisCnt.10975
	cmp	r1, #0	@ tmp4940,
	rsb	r8, r2, r0	@ tmp4947, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4941, tmp4940
	cmp	r1, #2	@ tmp4941,
	addgt	sl, sl, #1	@,, MisCnt.10991, MisCnt.10983
	cmp	r8, #0	@ tmp4947,
	rsblt	r8, r8, #0	@ tmp4948, tmp4947
	cmp	r8, #2	@ tmp4948,
	addgt	sl, sl, #1	@,, tmp4951, MisCnt.10991
	cmp	sl, #2	@ tmp4951,
	bgt	.L31	@,
	ldr	r3, [r6, #1180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1184]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4969, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4969,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp4962, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4970, tmp4969
	cmp	r8, #0	@ tmp4962,
	rsb	r0, r2, r0	@ tmp4976, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4963, tmp4962
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4970,
	movle	r3, #0	@, tmp4972
	movgt	r3, #1	@, tmp4972
	ldrb	sl, [r6, #1195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4963,
	addgt	r3, r3, #1	@,, MisCnt.3163, tmp4972
	cmp	r0, #0	@ tmp4976,
	ldrb	r1, [r6, #1196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4983, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4977, tmp4976
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4977,
	addgt	r3, r3, #1	@,, MisCnt.3174, MisCnt.3163
	cmp	sl, #0	@ tmp4983,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4990, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4984, tmp4983
	ldrb	ip, [r6, #1197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4984,
	addgt	r3, r3, #1	@,, MisCnt.3185, MisCnt.3174
	cmp	r2, #0	@ tmp4990,
	ldrb	r8, [r6, #1198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4997, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4991, tmp4990
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4991,
	addgt	r3, r3, #1	@,, MisCnt.3193, MisCnt.3185
	cmp	ip, #0	@ tmp4997,
	ldrb	r0, [r6, #1199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4998, tmp4997
	rsb	r1, r1, r8	@ tmp5004, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4998,
	addgt	r3, r3, #1	@,, MisCnt.3203, MisCnt.3193
	cmp	r1, #0	@ tmp5004,
	rsb	ip, r2, r0	@ tmp5011, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5005, tmp5004
	cmp	r1, #2	@ tmp5005,
	addgt	r3, r3, #1	@,, MisCnt.3212, MisCnt.3203
	cmp	ip, #0	@ tmp5011,
	rsblt	ip, ip, #0	@ tmp5012, tmp5011
	cmp	ip, #2	@ tmp5012,
	addgt	r3, r3, #1	@,, tmp5015, MisCnt.3212
	cmp	r3, #2	@ tmp5015,
	movle	r0, #17	@ Result,
	ble	.L13	@,
.L31:
	ldr	r3, [r4, #1200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #1204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1208]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5016,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5016,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5033, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5033,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5026, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5034, tmp5033
	cmp	lr, #0	@ tmp5026,
	rsb	r0, r2, r0	@ tmp5040, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5027, tmp5026
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5034,
	movle	sl, #0	@, tmp5036
	movgt	sl, #1	@, tmp5036
	ldrb	r8, [r4, #1215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5027,
	addgt	sl, sl, #1	@,, MisCnt.11017, tmp5036
	cmp	r0, #0	@ tmp5040,
	ldrb	r1, [r4, #1216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5047, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5041, tmp5040
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5041,
	addgt	sl, sl, #1	@,, MisCnt.11025, MisCnt.11017
	cmp	r8, #0	@ tmp5047,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5054, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5048, tmp5047
	ldrb	ip, [r4, #1217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5048,
	addgt	sl, sl, #1	@,, MisCnt.11033, MisCnt.11025
	cmp	r2, #0	@ tmp5054,
	ldrb	lr, [r4, #1218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5061, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5055, tmp5054
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5055,
	addgt	sl, sl, #1	@,, MisCnt.11041, MisCnt.11033
	cmp	ip, #0	@ tmp5061,
	ldrb	r0, [r4, #1219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5062, tmp5061
	rsb	r1, r1, lr	@ tmp5068, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5062,
	addgt	sl, sl, #1	@,, MisCnt.11049, MisCnt.11041
	cmp	r1, #0	@ tmp5068,
	rsb	ip, r8, r0	@ tmp5075, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5069, tmp5068
	cmp	r1, #2	@ tmp5069,
	addgt	sl, sl, #1	@,, MisCnt.11057, MisCnt.11049
	cmp	ip, #0	@ tmp5075,
	rsblt	ip, ip, #0	@ tmp5076, tmp5075
	cmp	ip, #2	@ tmp5076,
	addgt	sl, sl, #1	@,, tmp5079, MisCnt.11057
	cmp	sl, #2	@ tmp5079,
	bgt	.L32	@,
	ldr	r3, [r6, #1220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5097, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5097,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5090, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5098, tmp5097
	cmp	lr, #0	@ tmp5090,
	rsb	r0, r2, r0	@ tmp5104, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5091, tmp5090
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5098,
	movle	sl, #0	@, tmp5100
	movgt	sl, #1	@, tmp5100
	ldrb	r8, [r6, #1235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5091,
	addgt	sl, sl, #1	@,, MisCnt.11083, tmp5100
	cmp	r0, #0	@ tmp5104,
	ldrb	r1, [r6, #1236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5111, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5105, tmp5104
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5105,
	addgt	sl, sl, #1	@,, MisCnt.11091, MisCnt.11083
	cmp	r8, #0	@ tmp5111,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5118, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5112, tmp5111
	ldrb	ip, [r6, #1237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5112,
	addgt	sl, sl, #1	@,, MisCnt.11099, MisCnt.11091
	cmp	r2, #0	@ tmp5118,
	ldrb	lr, [r6, #1238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5125, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5119, tmp5118
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5119,
	addgt	sl, sl, #1	@,, MisCnt.11107, MisCnt.11099
	cmp	ip, #0	@ tmp5125,
	ldrb	r0, [r6, #1239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5132, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5126, tmp5125
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5126,
	addgt	sl, sl, #1	@,, MisCnt.11115, MisCnt.11107
	cmp	r1, #0	@ tmp5132,
	rsb	r8, r2, r0	@ tmp5139, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5133, tmp5132
	cmp	r1, #2	@ tmp5133,
	addgt	sl, sl, #1	@,, MisCnt.11123, MisCnt.11115
	cmp	r8, #0	@ tmp5139,
	rsblt	r8, r8, #0	@ tmp5140, tmp5139
	cmp	r8, #2	@ tmp5140,
	addgt	sl, sl, #1	@,, tmp5143, MisCnt.11123
	cmp	sl, #2	@ tmp5143,
	bgt	.L32	@,
	ldr	r3, [r6, #1240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5161, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5161,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5154, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5162, tmp5161
	cmp	lr, #0	@ tmp5154,
	rsb	r0, r2, r0	@ tmp5168, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5155, tmp5154
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5162,
	movle	sl, #0	@, tmp5164
	movgt	sl, #1	@, tmp5164
	ldrb	r8, [r6, #1255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5155,
	addgt	sl, sl, #1	@,, MisCnt.11149, tmp5164
	cmp	r0, #0	@ tmp5168,
	ldrb	r1, [r6, #1256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5175, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5169, tmp5168
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5169,
	addgt	sl, sl, #1	@,, MisCnt.11157, MisCnt.11149
	cmp	r8, #0	@ tmp5175,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5182, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5176, tmp5175
	ldrb	ip, [r6, #1257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5176,
	addgt	sl, sl, #1	@,, MisCnt.11165, MisCnt.11157
	cmp	r2, #0	@ tmp5182,
	ldrb	lr, [r6, #1258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5189, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5183, tmp5182
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5183,
	addgt	sl, sl, #1	@,, MisCnt.11173, MisCnt.11165
	cmp	ip, #0	@ tmp5189,
	ldrb	r0, [r6, #1259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5196, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5190, tmp5189
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5190,
	addgt	sl, sl, #1	@,, MisCnt.11181, MisCnt.11173
	cmp	r1, #0	@ tmp5196,
	rsb	r8, r2, r0	@ tmp5203, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5197, tmp5196
	cmp	r1, #2	@ tmp5197,
	addgt	sl, sl, #1	@,, MisCnt.11189, MisCnt.11181
	cmp	r8, #0	@ tmp5203,
	rsblt	r8, r8, #0	@ tmp5204, tmp5203
	cmp	r8, #2	@ tmp5204,
	addgt	sl, sl, #1	@,, tmp5207, MisCnt.11189
	cmp	sl, #2	@ tmp5207,
	bgt	.L32	@,
	ldr	r3, [r6, #1260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5225, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5225,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5218, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5226, tmp5225
	cmp	lr, #0	@ tmp5218,
	rsb	r0, r2, r0	@ tmp5232, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5219, tmp5218
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5226,
	movle	sl, #0	@, tmp5228
	movgt	sl, #1	@, tmp5228
	ldrb	r8, [r6, #1275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5219,
	addgt	sl, sl, #1	@,, MisCnt.11215, tmp5228
	cmp	r0, #0	@ tmp5232,
	ldrb	r1, [r6, #1276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5239, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5233, tmp5232
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5233,
	addgt	sl, sl, #1	@,, MisCnt.11223, MisCnt.11215
	cmp	r8, #0	@ tmp5239,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5246, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5240, tmp5239
	ldrb	ip, [r6, #1277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5240,
	addgt	sl, sl, #1	@,, MisCnt.11231, MisCnt.11223
	cmp	r2, #0	@ tmp5246,
	ldrb	lr, [r6, #1278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5253, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5247, tmp5246
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5247,
	addgt	sl, sl, #1	@,, MisCnt.11239, MisCnt.11231
	cmp	ip, #0	@ tmp5253,
	ldrb	r0, [r6, #1279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5260, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5254, tmp5253
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5254,
	addgt	sl, sl, #1	@,, MisCnt.11247, MisCnt.11239
	cmp	r1, #0	@ tmp5260,
	rsb	r8, r2, r0	@ tmp5267, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5261, tmp5260
	cmp	r1, #2	@ tmp5261,
	addgt	sl, sl, #1	@,, MisCnt.11255, MisCnt.11247
	cmp	r8, #0	@ tmp5267,
	rsblt	r8, r8, #0	@ tmp5268, tmp5267
	cmp	r8, #2	@ tmp5268,
	addgt	sl, sl, #1	@,, tmp5271, MisCnt.11255
	cmp	sl, #2	@ tmp5271,
	bgt	.L32	@,
	ldr	r3, [r6, #1280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1284]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5289, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5289,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5282, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5290, tmp5289
	cmp	r8, #0	@ tmp5282,
	rsb	r0, r2, r0	@ tmp5296, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5283, tmp5282
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5290,
	movle	r3, #0	@, tmp5292
	movgt	r3, #1	@, tmp5292
	ldrb	sl, [r6, #1295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5283,
	addgt	r3, r3, #1	@,, MisCnt.3228, tmp5292
	cmp	r0, #0	@ tmp5296,
	ldrb	r1, [r6, #1296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5303, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5297, tmp5296
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5297,
	addgt	r3, r3, #1	@,, MisCnt.3236, MisCnt.3228
	cmp	sl, #0	@ tmp5303,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5310, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5304, tmp5303
	ldrb	ip, [r6, #1297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5304,
	addgt	r3, r3, #1	@,, MisCnt.3244, MisCnt.3236
	cmp	r2, #0	@ tmp5310,
	ldrb	r8, [r6, #1298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5317, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5311, tmp5310
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5311,
	addgt	r3, r3, #1	@,, MisCnt.3252, MisCnt.3244
	cmp	ip, #0	@ tmp5317,
	ldrb	r0, [r6, #1299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5318, tmp5317
	rsb	r1, r1, r8	@ tmp5324, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5318,
	addgt	r3, r3, #1	@,, MisCnt.3262, MisCnt.3252
	cmp	r1, #0	@ tmp5324,
	rsb	ip, r2, r0	@ tmp5331, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5325, tmp5324
	cmp	r1, #2	@ tmp5325,
	addgt	r3, r3, #1	@,, MisCnt.3273, MisCnt.3262
	cmp	ip, #0	@ tmp5331,
	rsblt	ip, ip, #0	@ tmp5332, tmp5331
	cmp	ip, #2	@ tmp5332,
	addgt	r3, r3, #1	@,, tmp5335, MisCnt.3273
	cmp	r3, #2	@ tmp5335,
	movle	r0, #18	@ Result,
	ble	.L13	@,
.L32:
	ldr	r3, [r4, #1300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #1304]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1308]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5336,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5336,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5353, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5353,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5346, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5354, tmp5353
	cmp	lr, #0	@ tmp5346,
	rsb	r0, r2, r0	@ tmp5360, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5347, tmp5346
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5354,
	movle	sl, #0	@, tmp5356
	movgt	sl, #1	@, tmp5356
	ldrb	r8, [r4, #1315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5347,
	addgt	sl, sl, #1	@,, MisCnt.11281, tmp5356
	cmp	r0, #0	@ tmp5360,
	ldrb	r1, [r4, #1316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5367, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5361, tmp5360
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5361,
	addgt	sl, sl, #1	@,, MisCnt.11289, MisCnt.11281
	cmp	r8, #0	@ tmp5367,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5374, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5368, tmp5367
	ldrb	ip, [r4, #1317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5368,
	addgt	sl, sl, #1	@,, MisCnt.11297, MisCnt.11289
	cmp	r2, #0	@ tmp5374,
	ldrb	lr, [r4, #1318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5381, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5375, tmp5374
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5375,
	addgt	sl, sl, #1	@,, MisCnt.11305, MisCnt.11297
	cmp	ip, #0	@ tmp5381,
	ldrb	r0, [r4, #1319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5382, tmp5381
	rsb	r1, r1, lr	@ tmp5388, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5382,
	addgt	sl, sl, #1	@,, MisCnt.11313, MisCnt.11305
	cmp	r1, #0	@ tmp5388,
	rsb	ip, r8, r0	@ tmp5395, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5389, tmp5388
	cmp	r1, #2	@ tmp5389,
	addgt	sl, sl, #1	@,, MisCnt.11321, MisCnt.11313
	cmp	ip, #0	@ tmp5395,
	rsblt	ip, ip, #0	@ tmp5396, tmp5395
	cmp	ip, #2	@ tmp5396,
	addgt	sl, sl, #1	@,, tmp5399, MisCnt.11321
	cmp	sl, #2	@ tmp5399,
	bgt	.L33	@,
	ldr	r3, [r6, #1320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1328]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5417, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5417,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5410, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5418, tmp5417
	cmp	lr, #0	@ tmp5410,
	rsb	r0, r2, r0	@ tmp5424, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5411, tmp5410
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5418,
	movle	sl, #0	@, tmp5420
	movgt	sl, #1	@, tmp5420
	ldrb	r8, [r6, #1335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5411,
	addgt	sl, sl, #1	@,, MisCnt.11347, tmp5420
	cmp	r0, #0	@ tmp5424,
	ldrb	r1, [r6, #1336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5431, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5425, tmp5424
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5425,
	addgt	sl, sl, #1	@,, MisCnt.11355, MisCnt.11347
	cmp	r8, #0	@ tmp5431,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5438, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5432, tmp5431
	ldrb	ip, [r6, #1337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5432,
	addgt	sl, sl, #1	@,, MisCnt.11363, MisCnt.11355
	cmp	r2, #0	@ tmp5438,
	ldrb	lr, [r6, #1338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5445, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5439, tmp5438
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5439,
	addgt	sl, sl, #1	@,, MisCnt.11371, MisCnt.11363
	cmp	ip, #0	@ tmp5445,
	ldrb	r0, [r6, #1339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5452, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5446, tmp5445
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5446,
	addgt	sl, sl, #1	@,, MisCnt.11379, MisCnt.11371
	cmp	r1, #0	@ tmp5452,
	rsb	r8, r2, r0	@ tmp5459, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5453, tmp5452
	cmp	r1, #2	@ tmp5453,
	addgt	sl, sl, #1	@,, MisCnt.11387, MisCnt.11379
	cmp	r8, #0	@ tmp5459,
	rsblt	r8, r8, #0	@ tmp5460, tmp5459
	cmp	r8, #2	@ tmp5460,
	addgt	sl, sl, #1	@,, tmp5463, MisCnt.11387
	cmp	sl, #2	@ tmp5463,
	bgt	.L33	@,
	ldr	r3, [r6, #1340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1348]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5481, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5481,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5474, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5482, tmp5481
	cmp	lr, #0	@ tmp5474,
	rsb	r0, r2, r0	@ tmp5488, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5475, tmp5474
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5482,
	movle	sl, #0	@, tmp5484
	movgt	sl, #1	@, tmp5484
	ldrb	r8, [r6, #1355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5475,
	addgt	sl, sl, #1	@,, MisCnt.11413, tmp5484
	cmp	r0, #0	@ tmp5488,
	ldrb	r1, [r6, #1356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5495, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5489, tmp5488
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5489,
	addgt	sl, sl, #1	@,, MisCnt.11421, MisCnt.11413
	cmp	r8, #0	@ tmp5495,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5502, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5496, tmp5495
	ldrb	ip, [r6, #1357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5496,
	addgt	sl, sl, #1	@,, MisCnt.11429, MisCnt.11421
	cmp	r2, #0	@ tmp5502,
	ldrb	lr, [r6, #1358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5509, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5503, tmp5502
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5503,
	addgt	sl, sl, #1	@,, MisCnt.11437, MisCnt.11429
	cmp	ip, #0	@ tmp5509,
	ldrb	r0, [r6, #1359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5516, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5510, tmp5509
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5510,
	addgt	sl, sl, #1	@,, MisCnt.11445, MisCnt.11437
	cmp	r1, #0	@ tmp5516,
	rsb	r8, r2, r0	@ tmp5523, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5517, tmp5516
	cmp	r1, #2	@ tmp5517,
	addgt	sl, sl, #1	@,, MisCnt.11453, MisCnt.11445
	cmp	r8, #0	@ tmp5523,
	rsblt	r8, r8, #0	@ tmp5524, tmp5523
	cmp	r8, #2	@ tmp5524,
	addgt	sl, sl, #1	@,, tmp5527, MisCnt.11453
	cmp	sl, #2	@ tmp5527,
	bgt	.L33	@,
	ldr	r3, [r6, #1360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1364]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1368]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5545, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5545,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5538, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5546, tmp5545
	cmp	lr, #0	@ tmp5538,
	rsb	r0, r2, r0	@ tmp5552, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5539, tmp5538
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5546,
	movle	sl, #0	@, tmp5548
	movgt	sl, #1	@, tmp5548
	ldrb	r8, [r6, #1375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5539,
	addgt	sl, sl, #1	@,, MisCnt.11479, tmp5548
	cmp	r0, #0	@ tmp5552,
	ldrb	r1, [r6, #1376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5559, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5553, tmp5552
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5553,
	addgt	sl, sl, #1	@,, MisCnt.11487, MisCnt.11479
	cmp	r8, #0	@ tmp5559,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5566, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5560, tmp5559
	ldrb	ip, [r6, #1377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5560,
	addgt	sl, sl, #1	@,, MisCnt.11495, MisCnt.11487
	cmp	r2, #0	@ tmp5566,
	ldrb	lr, [r6, #1378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5573, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5567, tmp5566
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5567,
	addgt	sl, sl, #1	@,, MisCnt.11503, MisCnt.11495
	cmp	ip, #0	@ tmp5573,
	ldrb	r0, [r6, #1379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5580, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5574, tmp5573
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5574,
	addgt	sl, sl, #1	@,, MisCnt.11511, MisCnt.11503
	cmp	r1, #0	@ tmp5580,
	rsb	r8, r2, r0	@ tmp5587, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5581, tmp5580
	cmp	r1, #2	@ tmp5581,
	addgt	sl, sl, #1	@,, MisCnt.11519, MisCnt.11511
	cmp	r8, #0	@ tmp5587,
	rsblt	r8, r8, #0	@ tmp5588, tmp5587
	cmp	r8, #2	@ tmp5588,
	addgt	sl, sl, #1	@,, tmp5591, MisCnt.11519
	cmp	sl, #2	@ tmp5591,
	bgt	.L33	@,
	ldr	r3, [r6, #1380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1384]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5609, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5609,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5602, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5610, tmp5609
	cmp	r8, #0	@ tmp5602,
	rsb	r0, r2, r0	@ tmp5616, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5603, tmp5602
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5610,
	movle	r3, #0	@, tmp5612
	movgt	r3, #1	@, tmp5612
	ldrb	sl, [r6, #1395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5603,
	addgt	r3, r3, #1	@,, MisCnt.3291, tmp5612
	cmp	r0, #0	@ tmp5616,
	ldrb	r1, [r6, #1396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5623, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5617, tmp5616
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5617,
	addgt	r3, r3, #1	@,, MisCnt.3299, MisCnt.3291
	cmp	sl, #0	@ tmp5623,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5630, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5624, tmp5623
	ldrb	ip, [r6, #1397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5624,
	addgt	r3, r3, #1	@,, MisCnt.3308, MisCnt.3299
	cmp	r2, #0	@ tmp5630,
	ldrb	r8, [r6, #1398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5637, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5631, tmp5630
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5631,
	addgt	r3, r3, #1	@,, MisCnt.3319, MisCnt.3308
	cmp	ip, #0	@ tmp5637,
	ldrb	r0, [r6, #1399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5638, tmp5637
	rsb	r1, r1, r8	@ tmp5644, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5638,
	addgt	r3, r3, #1	@,, MisCnt.3330, MisCnt.3319
	cmp	r1, #0	@ tmp5644,
	rsb	ip, r2, r0	@ tmp5651, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5645, tmp5644
	cmp	r1, #2	@ tmp5645,
	addgt	r3, r3, #1	@,, MisCnt.3339, MisCnt.3330
	cmp	ip, #0	@ tmp5651,
	rsblt	ip, ip, #0	@ tmp5652, tmp5651
	cmp	ip, #2	@ tmp5652,
	addgt	r3, r3, #1	@,, tmp5655, MisCnt.3339
	cmp	r3, #2	@ tmp5655,
	movle	r0, #19	@ Result,
	ble	.L13	@,
.L33:
	ldr	r3, [r4, #1400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #1404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1408]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5656,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5656,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r4, #1413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5673, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5673,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5666, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5674, tmp5673
	cmp	lr, #0	@ tmp5666,
	rsb	r0, r2, r0	@ tmp5680, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5667, tmp5666
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5674,
	movle	sl, #0	@, tmp5676
	movgt	sl, #1	@, tmp5676
	ldrb	r8, [r4, #1415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5667,
	addgt	sl, sl, #1	@,, MisCnt.11545, tmp5676
	cmp	r0, #0	@ tmp5680,
	ldrb	r1, [r4, #1416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5687, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5681, tmp5680
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5681,
	addgt	sl, sl, #1	@,, MisCnt.11553, MisCnt.11545
	cmp	r8, #0	@ tmp5687,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5694, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5688, tmp5687
	ldrb	ip, [r4, #1417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5688,
	addgt	sl, sl, #1	@,, MisCnt.11561, MisCnt.11553
	cmp	r2, #0	@ tmp5694,
	ldrb	lr, [r4, #1418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5701, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5695, tmp5694
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5695,
	addgt	sl, sl, #1	@,, MisCnt.11569, MisCnt.11561
	cmp	ip, #0	@ tmp5701,
	ldrb	r0, [r4, #1419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5702, tmp5701
	rsb	r1, r1, lr	@ tmp5708, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5702,
	addgt	sl, sl, #1	@,, MisCnt.11577, MisCnt.11569
	cmp	r1, #0	@ tmp5708,
	rsb	ip, r8, r0	@ tmp5715, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5709, tmp5708
	cmp	r1, #2	@ tmp5709,
	addgt	sl, sl, #1	@,, MisCnt.11585, MisCnt.11577
	cmp	ip, #0	@ tmp5715,
	rsblt	ip, ip, #0	@ tmp5716, tmp5715
	cmp	ip, #2	@ tmp5716,
	addgt	sl, sl, #1	@,, tmp5719, MisCnt.11585
	cmp	sl, #2	@ tmp5719,
	bgt	.L34	@,
	ldr	r3, [r6, #1420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5737, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5737,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5730, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5738, tmp5737
	cmp	lr, #0	@ tmp5730,
	rsb	r0, r2, r0	@ tmp5744, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5731, tmp5730
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5738,
	movle	sl, #0	@, tmp5740
	movgt	sl, #1	@, tmp5740
	ldrb	r8, [r6, #1435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5731,
	addgt	sl, sl, #1	@,, MisCnt.11611, tmp5740
	cmp	r0, #0	@ tmp5744,
	ldrb	r1, [r6, #1436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5751, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5745, tmp5744
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5745,
	addgt	sl, sl, #1	@,, MisCnt.11619, MisCnt.11611
	cmp	r8, #0	@ tmp5751,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5758, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5752, tmp5751
	ldrb	ip, [r6, #1437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5752,
	addgt	sl, sl, #1	@,, MisCnt.11627, MisCnt.11619
	cmp	r2, #0	@ tmp5758,
	ldrb	lr, [r6, #1438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5765, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5759, tmp5758
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5759,
	addgt	sl, sl, #1	@,, MisCnt.11635, MisCnt.11627
	cmp	ip, #0	@ tmp5765,
	ldrb	r0, [r6, #1439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5772, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5766, tmp5765
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5766,
	addgt	sl, sl, #1	@,, MisCnt.11643, MisCnt.11635
	cmp	r1, #0	@ tmp5772,
	rsb	r8, r2, r0	@ tmp5779, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5773, tmp5772
	cmp	r1, #2	@ tmp5773,
	addgt	sl, sl, #1	@,, MisCnt.11651, MisCnt.11643
	cmp	r8, #0	@ tmp5779,
	rsblt	r8, r8, #0	@ tmp5780, tmp5779
	cmp	r8, #2	@ tmp5780,
	addgt	sl, sl, #1	@,, tmp5783, MisCnt.11651
	cmp	sl, #2	@ tmp5783,
	bgt	.L34	@,
	ldr	r3, [r6, #1440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5801, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5801,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5794, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5802, tmp5801
	cmp	lr, #0	@ tmp5794,
	rsb	r0, r2, r0	@ tmp5808, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5795, tmp5794
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5802,
	movle	sl, #0	@, tmp5804
	movgt	sl, #1	@, tmp5804
	ldrb	r8, [r6, #1455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5795,
	addgt	sl, sl, #1	@,, MisCnt.11677, tmp5804
	cmp	r0, #0	@ tmp5808,
	ldrb	r1, [r6, #1456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5815, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5809, tmp5808
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5809,
	addgt	sl, sl, #1	@,, MisCnt.11685, MisCnt.11677
	cmp	r8, #0	@ tmp5815,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5822, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5816, tmp5815
	ldrb	ip, [r6, #1457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5816,
	addgt	sl, sl, #1	@,, MisCnt.11693, MisCnt.11685
	cmp	r2, #0	@ tmp5822,
	ldrb	lr, [r6, #1458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5829, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5823, tmp5822
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5823,
	addgt	sl, sl, #1	@,, MisCnt.11701, MisCnt.11693
	cmp	ip, #0	@ tmp5829,
	ldrb	r0, [r6, #1459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5836, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5830, tmp5829
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5830,
	addgt	sl, sl, #1	@,, MisCnt.11709, MisCnt.11701
	cmp	r1, #0	@ tmp5836,
	rsb	r8, r2, r0	@ tmp5843, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5837, tmp5836
	cmp	r1, #2	@ tmp5837,
	addgt	sl, sl, #1	@,, MisCnt.11717, MisCnt.11709
	cmp	r8, #0	@ tmp5843,
	rsblt	r8, r8, #0	@ tmp5844, tmp5843
	cmp	r8, #2	@ tmp5844,
	addgt	sl, sl, #1	@,, tmp5847, MisCnt.11717
	cmp	sl, #2	@ tmp5847,
	bgt	.L34	@,
	ldr	r3, [r6, #1460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1464]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5865, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5865,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5858, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5866, tmp5865
	cmp	lr, #0	@ tmp5858,
	rsb	r0, r2, r0	@ tmp5872, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5859, tmp5858
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5866,
	movle	sl, #0	@, tmp5868
	movgt	sl, #1	@, tmp5868
	ldrb	r8, [r6, #1475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5859,
	addgt	sl, sl, #1	@,, MisCnt.11743, tmp5868
	cmp	r0, #0	@ tmp5872,
	ldrb	r1, [r6, #1476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5879, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5873, tmp5872
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5873,
	addgt	sl, sl, #1	@,, MisCnt.11751, MisCnt.11743
	cmp	r8, #0	@ tmp5879,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5886, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5880, tmp5879
	ldrb	ip, [r6, #1477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5880,
	addgt	sl, sl, #1	@,, MisCnt.11759, MisCnt.11751
	cmp	r2, #0	@ tmp5886,
	ldrb	lr, [r6, #1478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5893, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5887, tmp5886
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5887,
	addgt	sl, sl, #1	@,, MisCnt.11767, MisCnt.11759
	cmp	ip, #0	@ tmp5893,
	ldrb	r0, [r6, #1479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5900, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5894, tmp5893
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5894,
	addgt	sl, sl, #1	@,, MisCnt.11775, MisCnt.11767
	cmp	r1, #0	@ tmp5900,
	rsb	r8, r2, r0	@ tmp5907, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5901, tmp5900
	cmp	r1, #2	@ tmp5901,
	addgt	sl, sl, #1	@,, MisCnt.11783, MisCnt.11775
	cmp	r8, #0	@ tmp5907,
	rsblt	r8, r8, #0	@ tmp5908, tmp5907
	cmp	r8, #2	@ tmp5908,
	addgt	sl, sl, #1	@,, tmp5911, MisCnt.11783
	cmp	sl, #2	@ tmp5911,
	bgt	.L34	@,
	ldr	r3, [r6, #1480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1484]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5929, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5929,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5922, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5930, tmp5929
	cmp	r8, #0	@ tmp5922,
	rsb	r0, r2, r0	@ tmp5936, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5923, tmp5922
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5930,
	movle	r3, #0	@, tmp5932
	movgt	r3, #1	@, tmp5932
	ldrb	sl, [r6, #1495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5923,
	addgt	r3, r3, #1	@,, MisCnt.3360, tmp5932
	cmp	r0, #0	@ tmp5936,
	ldrb	r1, [r6, #1496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5943, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5937, tmp5936
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5937,
	addgt	r3, r3, #1	@,, MisCnt.3371, MisCnt.3360
	cmp	sl, #0	@ tmp5943,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5950, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5944, tmp5943
	ldrb	ip, [r6, #1497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5944,
	addgt	r3, r3, #1	@,, MisCnt.3381, MisCnt.3371
	cmp	r2, #0	@ tmp5950,
	ldrb	r8, [r6, #1498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5957, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5951, tmp5950
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5951,
	addgt	r3, r3, #1	@,, MisCnt.3391, MisCnt.3381
	cmp	ip, #0	@ tmp5957,
	ldrb	r0, [r6, #1499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5958, tmp5957
	rsb	r1, r1, r8	@ tmp5964, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5958,
	addgt	r3, r3, #1	@,, MisCnt.3402, MisCnt.3391
	cmp	r1, #0	@ tmp5964,
	rsb	ip, r2, r0	@ tmp5971, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5965, tmp5964
	cmp	r1, #2	@ tmp5965,
	addgt	r3, r3, #1	@,, MisCnt.3413, MisCnt.3402
	cmp	ip, #0	@ tmp5971,
	rsblt	ip, ip, #0	@ tmp5972, tmp5971
	cmp	ip, #2	@ tmp5972,
	addgt	r3, r3, #1	@,, tmp5975, MisCnt.3413
	cmp	r3, #2	@ tmp5975,
	movle	r0, #26	@ Result,
	ble	.L13	@,
.L34:
	ldr	r3, [r4, #1500]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r4, #1504]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r4, #1508]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5976,
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5976,
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r4, #1513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r4, #1512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5993, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5993,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5986, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r4, #1514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5994, tmp5993
	cmp	r8, #0	@ tmp5986,
	rsb	r0, r2, r0	@ tmp6000, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5987, tmp5986
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5994,
	movle	r3, #0	@, tmp5996
	movgt	r3, #1	@, tmp5996
	ldrb	sl, [r4, #1515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5987,
	addgt	r3, r3, #1	@,, MisCnt.11809, tmp5996
	cmp	r0, #0	@ tmp6000,
	ldrb	r1, [r4, #1516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6007, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6001, tmp6000
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6001,
	addgt	r3, r3, #1	@,, MisCnt.11817, MisCnt.11809
	cmp	sl, #0	@ tmp6007,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6014, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6008, tmp6007
	ldrb	ip, [r4, #1517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6008,
	addgt	r3, r3, #1	@,, MisCnt.11825, MisCnt.11817
	cmp	r2, #0	@ tmp6014,
	ldrb	r8, [r4, #1518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6021, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6015, tmp6014
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6015,
	addgt	r3, r3, #1	@,, MisCnt.11833, MisCnt.11825
	cmp	ip, #0	@ tmp6021,
	ldrb	r0, [r4, #1519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6022, tmp6021
	rsb	r1, r1, r8	@ tmp6028, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6022,
	addgt	r3, r3, #1	@,, MisCnt.11841, MisCnt.11833
	cmp	r1, #0	@ tmp6028,
	rsb	ip, r2, r0	@ tmp6035, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6029, tmp6028
	cmp	r1, #2	@ tmp6029,
	addgt	r3, r3, #1	@,, MisCnt.11849, MisCnt.11841
	cmp	ip, #0	@ tmp6035,
	rsblt	ip, ip, #0	@ tmp6036, tmp6035
	cmp	ip, #2	@ tmp6036,
	addgt	r3, r3, #1	@,, tmp6039, MisCnt.11849
	cmp	r3, #2	@ tmp6039,
	bgt	.L46	@,
	ldr	r3, [r6, #1520]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1524]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #1533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #1532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp6057, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6057,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp6050, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6058, tmp6057
	cmp	r4, #0	@ tmp6050,
	rsb	r0, r2, r0	@ tmp6064, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp6051, tmp6050
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6058,
	movle	r3, #0	@, tmp6060
	movgt	r3, #1	@, tmp6060
	ldrb	r8, [r6, #1535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp6051,
	addgt	r3, r3, #1	@,, MisCnt.11875, tmp6060
	cmp	r0, #0	@ tmp6064,
	ldrb	r1, [r6, #1536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6071, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6065, tmp6064
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6065,
	addgt	r3, r3, #1	@,, MisCnt.11883, MisCnt.11875
	cmp	r8, #0	@ tmp6071,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6078, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6072, tmp6071
	ldrb	ip, [r6, #1537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6072,
	addgt	r3, r3, #1	@,, MisCnt.11891, MisCnt.11883
	cmp	r2, #0	@ tmp6078,
	ldrb	r4, [r6, #1538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6085, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6079, tmp6078
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6079,
	addgt	r3, r3, #1	@,, MisCnt.11899, MisCnt.11891
	cmp	ip, #0	@ tmp6085,
	ldrb	r0, [r6, #1539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6086, tmp6085
	rsb	r1, r1, r4	@ tmp6092, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6086,
	addgt	r3, r3, #1	@,, MisCnt.11907, MisCnt.11899
	cmp	r1, #0	@ tmp6092,
	rsb	ip, r2, r0	@ tmp6099, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6093, tmp6092
	cmp	r1, #2	@ tmp6093,
	addgt	r3, r3, #1	@,, MisCnt.11915, MisCnt.11907
	cmp	ip, #0	@ tmp6099,
	rsblt	ip, ip, #0	@ tmp6100, tmp6099
	cmp	ip, #2	@ tmp6100,
	addgt	r3, r3, #1	@,, tmp6103, MisCnt.11915
	cmp	r3, #2	@ tmp6103,
	bgt	.L46	@,
	ldr	r3, [r6, #1540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1544]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #1553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #1552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp6121, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6121,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp6114, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6122, tmp6121
	cmp	r4, #0	@ tmp6114,
	rsb	r0, r2, r0	@ tmp6128, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp6115, tmp6114
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6122,
	movle	r3, #0	@, tmp6124
	movgt	r3, #1	@, tmp6124
	ldrb	r8, [r6, #1555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp6115,
	addgt	r3, r3, #1	@,, MisCnt.11941, tmp6124
	cmp	r0, #0	@ tmp6128,
	ldrb	r1, [r6, #1556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6135, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6129, tmp6128
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6129,
	addgt	r3, r3, #1	@,, MisCnt.11949, MisCnt.11941
	cmp	r8, #0	@ tmp6135,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6142, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6136, tmp6135
	ldrb	ip, [r6, #1557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6136,
	addgt	r3, r3, #1	@,, MisCnt.11957, MisCnt.11949
	cmp	r2, #0	@ tmp6142,
	ldrb	r4, [r6, #1558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6149, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6143, tmp6142
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6143,
	addgt	r3, r3, #1	@,, MisCnt.11965, MisCnt.11957
	cmp	ip, #0	@ tmp6149,
	ldrb	r0, [r6, #1559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6150, tmp6149
	rsb	r1, r1, r4	@ tmp6156, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6150,
	addgt	r3, r3, #1	@,, MisCnt.11973, MisCnt.11965
	cmp	r1, #0	@ tmp6156,
	rsb	ip, r2, r0	@ tmp6163, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6157, tmp6156
	cmp	r1, #2	@ tmp6157,
	addgt	r3, r3, #1	@,, MisCnt.11981, MisCnt.11973
	cmp	ip, #0	@ tmp6163,
	rsblt	ip, ip, #0	@ tmp6164, tmp6163
	cmp	ip, #2	@ tmp6164,
	addgt	r3, r3, #1	@,, tmp6167, MisCnt.11981
	cmp	r3, #2	@ tmp6167,
	bgt	.L46	@,
	ldr	r3, [r6, #1560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12187
	ldr	r2, [r6, #1564]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #1573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #1572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp6185, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6185,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r8	@ tmp6178, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6186, tmp6185
	cmp	r4, #0	@ tmp6178,
	rsb	r0, r2, r0	@ tmp6192, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp6179, tmp6178
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6186,
	movle	r3, #0	@, tmp6188
	movgt	r3, #1	@, tmp6188
	ldrb	r8, [r6, #1575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp6179,
	addgt	r3, r3, #1	@,, MisCnt.12007, tmp6188
	cmp	r0, #0	@ tmp6192,
	ldrb	r1, [r6, #1576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6199, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6193, tmp6192
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6193,
	addgt	r3, r3, #1	@,, MisCnt.12015, MisCnt.12007
	cmp	r8, #0	@ tmp6199,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6206, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6200, tmp6199
	ldrb	ip, [r6, #1577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6200,
	addgt	r3, r3, #1	@,, MisCnt.12023, MisCnt.12015
	cmp	r2, #0	@ tmp6206,
	ldrb	r4, [r6, #1578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6213, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6207, tmp6206
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6207,
	addgt	r3, r3, #1	@,, MisCnt.12031, MisCnt.12023
	cmp	ip, #0	@ tmp6213,
	ldrb	r0, [r6, #1579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6214, tmp6213
	rsb	r1, r1, r4	@ tmp6220, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6214,
	addgt	r3, r3, #1	@,, MisCnt.12039, MisCnt.12031
	cmp	r1, #0	@ tmp6220,
	rsb	ip, r2, r0	@ tmp6227, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6221, tmp6220
	cmp	r1, #2	@ tmp6221,
	addgt	r3, r3, #1	@,, MisCnt.12047, MisCnt.12039
	cmp	ip, #0	@ tmp6227,
	rsblt	ip, ip, #0	@ tmp6228, tmp6227
	cmp	ip, #2	@ tmp6228,
	addgt	r3, r3, #1	@,, tmp6231, MisCnt.12047
	cmp	r3, #2	@ tmp6231,
	bgt	.L46	@,
	ldr	r3, [r6, #1580]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r6, #1584]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12187
	ldr	lr, [r6, #1588]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #12]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #16]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #20]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #1593]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #25]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #1592]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #24]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp6249, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6249,
	ldrb	r2, [sp, #26]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp6242, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1594]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6250, tmp6249
	cmp	r4, #0	@ tmp6242,
	rsb	r0, r2, r0	@ tmp6256, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp6243, tmp6242
	ldrb	ip, [sp, #27]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6250,
	movle	r3, #0	@, tmp6252
	movgt	r3, #1	@, tmp6252
	ldrb	r5, [r6, #1595]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp6243,
	addgt	r3, r3, #1	@,, MisCnt.3432, tmp6252
	cmp	r0, #0	@ tmp6256,
	ldrb	r1, [r6, #1596]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp6263, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6257, tmp6256
	ldrb	r2, [sp, #28]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6257,
	addgt	r3, r3, #1	@,, MisCnt.3443, MisCnt.3432
	cmp	r5, #0	@ tmp6263,
	ldrb	r0, [sp, #29]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6270, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp6264, tmp6263
	ldrb	ip, [r6, #1597]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp6264,
	addgt	r3, r3, #1	@,, MisCnt.3454, MisCnt.3443
	cmp	r2, #0	@ tmp6270,
	ldrb	r4, [r6, #1598]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6277, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6271, tmp6270
	ldrb	r1, [sp, #30]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6271,
	addgt	r3, r3, #1	@,, MisCnt.3463, MisCnt.3454
	cmp	ip, #0	@ tmp6277,
	ldrb	r0, [r6, #1599]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6278, tmp6277
	rsb	r1, r1, r4	@ tmp6284, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #31]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6278,
	addgt	r3, r3, #1	@,, MisCnt.3474, MisCnt.3463
	cmp	r1, #0	@ tmp6284,
	rsb	ip, r2, r0	@ tmp6291, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6285, tmp6284
	cmp	r1, #2	@ tmp6285,
	addgt	r3, r3, #1	@,, MisCnt.3485, MisCnt.3474
	cmp	ip, #0	@ tmp6291,
	rsblt	ip, ip, #0	@ tmp6292, tmp6291
	cmp	ip, #2	@ tmp6292,
	addgt	r3, r3, #1	@,, tmp6295, MisCnt.3485
	cmp	r3, #2	@ tmp6295,
	bgt	.L46	@,
	mov	r0, #30	@ Result,
	b	.L13	@
	.fnend
	.size	DetPic, .-DetPic
	.global	tab_cbar704_576
	.global	tab_matrx525
	.global	tab_codec43
	.global	tab_cbars100
	.global	tab_its1_ntsc
	.global	tab_ccitt033_ntsc
	.global	tab_ccitt033
	.global	tab_ccitt18
	.global	tab_M576i
	.global	tab_M480p16x9
	.global	tab_M720p50
	.global	tab_M720p59
	.global	tab_M1080
	.global	tab_CBAR576_75
	.global	tab_ccir3311
	.global	tab_matrix625
	.global	tab_CBAR576_75_B
	.global	tab_CBAR576_100
	.global	tab_M576i_pulsebar
	.global	tab_M576i_redfield
	.global	tab_M576i_duoboqun
	.global	tab_M576i_5taijie
	.global	tab_M576i_xiebo
	.global	tab_M576i_bowtie
	.global	tab_PAT_M480I_NTSC
	.global	tab_PAT_M576I_PAL
	.global	tab_PAT_M480P_NTSC
	.global	tab_PAT_M480P_SHALLOW_NTSC
	.global	tab_PAT_M480P_CBWFRC_NTSC
	.global	tab_PAT_M480P_SHALLOW_PAL
	.global	tab_PAT_M480I_50_FLAT_FIELD
	.global	tab_PAT_M480I_75_COLORBARS
	.global	tab_PAT_M480I_NTC7_COMBINATION
	.global	tab_PAT_M480I_NTC7_COMPOSITE
	.global	tab_PAT_M480I_TSG130A_MATRIX_10MBPS
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
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
