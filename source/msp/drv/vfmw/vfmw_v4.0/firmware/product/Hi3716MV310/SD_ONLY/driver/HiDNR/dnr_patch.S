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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	addgt	r2, r2, #1	@,, MisCnt.512, tmp153
	cmp	ip, #0	@ tmp156,
	rsb	r7, r4, r7	@ tmp162, <variable>.Pix, <variable>.Pix
	ldrb	r3, [r1, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp157, tmp156
	ldrb	r5, [r0, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp157,
	movle	ip, r2	@, MisCnt.520, MisCnt.512
	addgt	ip, r2, #1	@,, MisCnt.520, MisCnt.512
	cmp	r7, #0	@ tmp162,
	ldrb	r6, [r0, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, r3, r5	@ tmp168, <variable>.Pix, <variable>.Pix
	ldrb	r2, [r1, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp163, tmp162
	ldrb	r4, [r0, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp163,
	addgt	ip, ip, #1	@,, MisCnt.528, MisCnt.520
	cmp	r5, #0	@ tmp168,
	rsb	r2, r2, r6	@ tmp174, <variable>.Pix, <variable>.Pix
	ldrb	r3, [r1, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp169, tmp168
	ldrb	r0, [r0, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp169,
	addgt	ip, ip, #1	@,, MisCnt.536, MisCnt.528
	cmp	r2, #0	@ tmp174,
	rsb	r3, r3, r4	@ tmp180, <variable>.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp175, tmp174
	ldrb	r1, [r1, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp175,
	movle	r2, ip	@, MisCnt.544, MisCnt.536
	addgt	r2, ip, #1	@,, MisCnt.544, MisCnt.536
	cmp	r3, #0	@ tmp180,
	rsb	ip, r1, r0	@ tmp187, <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp181, tmp180
	cmp	r3, #2	@ tmp181,
	movle	r3, r2	@, MisCnt.552, MisCnt.544
	addgt	r3, r2, #1	@,, MisCnt.552, MisCnt.544
	cmp	ip, #0	@ tmp187,
	rsblt	ip, ip, #0	@ tmp188, tmp187
	cmp	ip, #2	@ tmp188,
	movle	r0, r3	@, tmp191, MisCnt.552
	addgt	r0, r3, #1	@,, tmp191, MisCnt.552
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
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldmia	r0, {r3, r4}	@ phole ldm
	cmp	r3, #1	@ <variable>.Comp,
	ldr	ip, [r0, #8]	@ D.32904, <variable>.Py
	ldreq	r3, [r1, #12]	@ pRd, <variable>.pPicBufU
	beq	.L7	@,
	cmp	r3, #2	@ <variable>.Comp,
	ldrne	r3, [r1, #8]	@ pRd, <variable>.pPicBufY
	ldreq	r3, [r1, #16]	@ pRd, <variable>.pPicBufV
.L7:
	movw	r2, #:lower16:g_eVdmVersion	@ tmp144,
	movt	r2, #:upper16:g_eVdmVersion	@ tmp144,
	ldr	r2, [r2, #0]	@ g_eVdmVersion.466, g_eVdmVersion
	cmp	r2, #1	@ g_eVdmVersion.466,
	beq	.L14	@,
	sub	r2, r2, #3	@ tmp170, g_eVdmVersion.466,
	cmp	r2, #1	@ tmp170,
	bls	.L15	@,
.L10:
	add	r0, r0, #12	@, pSmp,
	mov	r1, r3	@, pRd
	mov	r2, #8	@,
	ldmfd	sp!, {r4, r5, r6, r7}
	b	memcpy	@
.L15:
	mov	r7, ip, asr #31	@ tmp178, D.32904,
	bic	r2, r4, #255	@ tmp171, D.32903,
	ldr	r6, [r1, #32]	@ <variable>.MbWidth, <variable>.MbWidth
	add	r5, r2, #255	@ tmp174, tmp171,
	mov	r1, r7, lsr #28	@ tmp179, tmp178,
	cmp	r2, #0	@ tmp171,
	add	r7, ip, r1	@ tmp180, D.32904, tmp179
	and	r7, r7, #15	@ tmp181, tmp180,
	movlt	r2, r5	@ tmp173, tmp174
	rsb	r1, r1, r7	@ tmp182, tmp179, tmp181
	add	r5, ip, #15	@ tmp187, D.32904,
	cmp	ip, #0	@ D.32904,
	mov	r2, r2, asr #8	@ tmp175, tmp173,
	mov	r6, r6, asl #4	@ tmp190, <variable>.MbWidth,
	mov	r1, r1, asl #8	@ tmp183, tmp182,
	add	r6, r6, #255	@ tmp192, tmp190,
	movlt	ip, r5	@ D.32904, tmp187
	add	r2, r1, r2, asl #12	@, tmp184, tmp183, tmp175,
	bic	r5, ip, #15	@ tmp189, D.32904,
	bic	r1, r6, #255	@ tmp193, tmp192,
	mla	ip, r1, r5, r2	@ tmp195, tmp193, tmp189, tmp184
	add	r3, r3, ip	@ pRd.580, pRd, tmp195
	uxtab	r3, r3, r4	@ pRd, pRd.580, D.32903
	b	.L10	@
.L14:
	ldr	r6, [r1, #40]	@ <variable>.IsFrameStored, <variable>.IsFrameStored
	and	r2, r4, #15	@ PixX, D.32903,
	and	r5, ip, #15	@ PixY, D.32904,
	mov	r4, r4, asr #4	@ Mbx, D.32903,
	cmp	r6, #0	@ <variable>.IsFrameStored,
	beq	.L9	@,
	ldr	r1, [r1, #36]	@ <variable>.MbHeight, <variable>.MbHeight
	mov	ip, ip, asr #4	@ tmp150, D.32904,
	add	r2, r2, r5, asl #4	@, tmp147, PixX, PixY,
	mla	r4, r1, r4, ip	@ tmp151, <variable>.MbHeight, Mbx, tmp150
	add	r4, r2, r4, asl #8	@, tmp153, tmp147, tmp151,
	add	r3, r3, r4	@ pRd, pRd, tmp153
	b	.L10	@
.L9:
	ldr	r1, [r1, #36]	@ <variable>.MbHeight, <variable>.MbHeight
	add	r5, r2, r5, asl #4	@, tmp155, PixX, PixY,
	add	r6, ip, #31	@ tmp165, D.32904,
	cmp	ip, #0	@ D.32904,
	mul	r2, r1, r4	@ tmp156, <variable>.MbHeight, Mbx
	movlt	ip, r6	@ D.32904, tmp165
	mov	ip, ip, asr #5	@ tmp166, D.32904,
	add	r4, r2, #1	@ tmp158, tmp156,
	add	r4, r4, r4, lsr #31	@, tmp161, tmp158, tmp158,
	add	r1, ip, r4, asr #1	@, tmp167, tmp166, tmp161,
	add	r2, r5, r1, asl #8	@, tmp169, tmp155, tmp167,
	add	r3, r3, r2	@ pRd, pRd, tmp169
	b	.L10	@
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
	subs	r4, r0, #0	@ pDetPara, pDetPara
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L36	@,
	ldr	r3, [r4, #8]	@ <variable>.pPicBufY, <variable>.pPicBufY
	cmp	r3, #0	@ <variable>.pPicBufY,
	beq	.L36	@,
	ldr	r3, [r4, #24]	@ D.32711, <variable>.PicHeight
	cmp	r3, #1088	@ D.32711,
	bgt	.L36	@,
	ldr	r2, [r4, #20]	@ D.32713, <variable>.PicWidth
	cmp	r2, #1920	@ D.32713,
	bgt	.L36	@,
	cmp	r3, #0	@ D.32711,
	beq	.L36	@,
	cmp	r2, #0	@ D.32713,
	beq	.L36	@,
	cmp	r3, #576	@ D.32711,
	beq	.L67	@,
	cmp	r3, #480	@ D.32711,
	beq	.L68	@,
	cmp	r3, #720	@ D.32711,
	beq	.L69	@,
.L49:
	movw	r0, #1079	@ tmp11859,
	cmp	r3, r0	@ D.32711, tmp11859
	ble	.L36	@,
	cmp	r2, #1920	@ D.32713,
	bne	.L36	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp11860,
	movt	r5, #:upper16:.LANCHOR0	@ tmp11860,
	add	r6, sp, #4	@ tmp11866,,
	mov	r1, r4	@, pDetPara
	ldr	r3, [r5, #3380]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r5, #3384]	@ <variable>.Px, <variable>.Px
	mov	r0, r6	@, tmp11866
	ldr	lr, [r5, #3388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r7, [r5, #3393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp11877, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11877,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r8	@ tmp11870, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11878, tmp11877
	cmp	r7, #0	@ tmp11870,
	rsb	r0, r2, r0	@ tmp11884, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11871, tmp11870
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11878,
	movle	r3, #0	@, tmp11880
	movgt	r3, #1	@, tmp11880
	ldrb	r8, [r5, #3395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11871,
	addgt	r3, r3, #1	@,, MisCnt.6466, tmp11880
	cmp	r0, #0	@ tmp11884,
	ldrb	r1, [r5, #3396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11891, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11885, tmp11884
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11885,
	addgt	r3, r3, #1	@,, MisCnt.6474, MisCnt.6466
	cmp	r8, #0	@ tmp11891,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11898, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11892, tmp11891
	ldrb	ip, [r5, #3397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11892,
	addgt	r3, r3, #1	@,, MisCnt.6482, MisCnt.6474
	cmp	r2, #0	@ tmp11898,
	ldrb	r7, [r5, #3398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11905, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11899, tmp11898
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11899,
	addgt	r3, r3, #1	@,, MisCnt.6490, MisCnt.6482
	cmp	ip, #0	@ tmp11905,
	ldrb	r0, [r5, #3399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11906, tmp11905
	rsb	r1, r1, r7	@ tmp11912, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11906,
	addgt	r3, r3, #1	@,, MisCnt.6498, MisCnt.6490
	cmp	r1, #0	@ tmp11912,
	rsb	ip, r2, r0	@ tmp11919, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11913, tmp11912
	cmp	r1, #2	@ tmp11913,
	addgt	r3, r3, #1	@,, MisCnt.6506, MisCnt.6498
	cmp	ip, #0	@ tmp11919,
	rsblt	ip, ip, #0	@ tmp11920, tmp11919
	cmp	ip, #2	@ tmp11920,
	addgt	r3, r3, #1	@,, tmp11923, MisCnt.6506
	cmp	r3, #2	@ tmp11923,
	bgt	.L36	@,
	ldr	r3, [r5, #3400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11866
	ldr	r2, [r5, #3404]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3408]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r7, [r5, #3413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp11941, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11941,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r8	@ tmp11934, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11942, tmp11941
	cmp	r7, #0	@ tmp11934,
	rsb	r0, r2, r0	@ tmp11948, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11935, tmp11934
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11942,
	movle	r3, #0	@, tmp11944
	movgt	r3, #1	@, tmp11944
	ldrb	r8, [r5, #3415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11935,
	addgt	r3, r3, #1	@,, MisCnt.6532, tmp11944
	cmp	r0, #0	@ tmp11948,
	ldrb	r1, [r5, #3416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11955, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11949, tmp11948
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11949,
	addgt	r3, r3, #1	@,, MisCnt.6540, MisCnt.6532
	cmp	r8, #0	@ tmp11955,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11962, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11956, tmp11955
	ldrb	ip, [r5, #3417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11956,
	addgt	r3, r3, #1	@,, MisCnt.6548, MisCnt.6540
	cmp	r2, #0	@ tmp11962,
	ldrb	r7, [r5, #3418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11969, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11963, tmp11962
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11963,
	addgt	r3, r3, #1	@,, MisCnt.6556, MisCnt.6548
	cmp	ip, #0	@ tmp11969,
	ldrb	r0, [r5, #3419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11970, tmp11969
	rsb	r1, r1, r7	@ tmp11976, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11970,
	addgt	r3, r3, #1	@,, MisCnt.6564, MisCnt.6556
	cmp	r1, #0	@ tmp11976,
	rsb	ip, r2, r0	@ tmp11983, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11977, tmp11976
	cmp	r1, #2	@ tmp11977,
	addgt	r3, r3, #1	@,, MisCnt.6572, MisCnt.6564
	cmp	ip, #0	@ tmp11983,
	rsblt	ip, ip, #0	@ tmp11984, tmp11983
	cmp	ip, #2	@ tmp11984,
	addgt	r3, r3, #1	@,, tmp11987, MisCnt.6572
	cmp	r3, #2	@ tmp11987,
	bgt	.L36	@,
	ldr	r3, [r5, #3420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11866
	ldr	r2, [r5, #3424]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r7, [r5, #3433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp12005, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12005,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r8	@ tmp11998, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12006, tmp12005
	cmp	r7, #0	@ tmp11998,
	rsb	r0, r2, r0	@ tmp12012, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11999, tmp11998
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12006,
	movle	r3, #0	@, tmp12008
	movgt	r3, #1	@, tmp12008
	ldrb	r8, [r5, #3435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11999,
	addgt	r3, r3, #1	@,, MisCnt.6598, tmp12008
	cmp	r0, #0	@ tmp12012,
	ldrb	r1, [r5, #3436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp12019, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12013, tmp12012
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12013,
	addgt	r3, r3, #1	@,, MisCnt.6606, MisCnt.6598
	cmp	r8, #0	@ tmp12019,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12026, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp12020, tmp12019
	ldrb	ip, [r5, #3437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp12020,
	addgt	r3, r3, #1	@,, MisCnt.6614, MisCnt.6606
	cmp	r2, #0	@ tmp12026,
	ldrb	r7, [r5, #3438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12033, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12027, tmp12026
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12027,
	addgt	r3, r3, #1	@,, MisCnt.6622, MisCnt.6614
	cmp	ip, #0	@ tmp12033,
	ldrb	r0, [r5, #3439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12034, tmp12033
	rsb	r1, r1, r7	@ tmp12040, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12034,
	addgt	r3, r3, #1	@,, MisCnt.6630, MisCnt.6622
	cmp	r1, #0	@ tmp12040,
	rsb	ip, r2, r0	@ tmp12047, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12041, tmp12040
	cmp	r1, #2	@ tmp12041,
	addgt	r3, r3, #1	@,, MisCnt.6638, MisCnt.6630
	cmp	ip, #0	@ tmp12047,
	rsblt	ip, ip, #0	@ tmp12048, tmp12047
	cmp	ip, #2	@ tmp12048,
	addgt	r3, r3, #1	@,, tmp12051, MisCnt.6638
	cmp	r3, #2	@ tmp12051,
	bgt	.L36	@,
	ldr	r3, [r5, #3440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11866
	ldr	r2, [r5, #3444]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r7, [r5, #3453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp12069, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12069,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r8	@ tmp12062, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12070, tmp12069
	cmp	r7, #0	@ tmp12062,
	rsb	r0, r2, r0	@ tmp12076, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp12063, tmp12062
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12070,
	movle	r3, #0	@, tmp12072
	movgt	r3, #1	@, tmp12072
	ldrb	r8, [r5, #3455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp12063,
	addgt	r3, r3, #1	@,, MisCnt.6664, tmp12072
	cmp	r0, #0	@ tmp12076,
	ldrb	r1, [r5, #3456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp12083, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12077, tmp12076
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12077,
	addgt	r3, r3, #1	@,, MisCnt.6672, MisCnt.6664
	cmp	r8, #0	@ tmp12083,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12090, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp12084, tmp12083
	ldrb	ip, [r5, #3457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp12084,
	addgt	r3, r3, #1	@,, MisCnt.6680, MisCnt.6672
	cmp	r2, #0	@ tmp12090,
	ldrb	r7, [r5, #3458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12097, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12091, tmp12090
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12091,
	addgt	r3, r3, #1	@,, MisCnt.6688, MisCnt.6680
	cmp	ip, #0	@ tmp12097,
	ldrb	r0, [r5, #3459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12098, tmp12097
	rsb	r1, r1, r7	@ tmp12104, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12098,
	addgt	r3, r3, #1	@,, MisCnt.6696, MisCnt.6688
	cmp	r1, #0	@ tmp12104,
	rsb	ip, r2, r0	@ tmp12111, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12105, tmp12104
	cmp	r1, #2	@ tmp12105,
	addgt	r3, r3, #1	@,, MisCnt.6704, MisCnt.6696
	cmp	ip, #0	@ tmp12111,
	rsblt	ip, ip, #0	@ tmp12112, tmp12111
	cmp	ip, #2	@ tmp12112,
	addgt	r3, r3, #1	@,, tmp12115, MisCnt.6704
	cmp	r3, #2	@ tmp12115,
	bgt	.L36	@,
	ldr	r3, [r5, #3460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r6	@, tmp11866
	ldr	r2, [r5, #3464]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r5, #3473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r6, [r5, #3472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp12133, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12133,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r6	@ tmp12126, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12134, tmp12133
	cmp	r4, #0	@ tmp12126,
	rsb	r0, r2, r0	@ tmp12140, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp12127, tmp12126
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12134,
	movle	r3, #0	@, tmp12136
	movgt	r3, #1	@, tmp12136
	ldrb	r6, [r5, #3475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp12127,
	addgt	r3, r3, #1	@,, MisCnt.2084, tmp12136
	cmp	r0, #0	@ tmp12140,
	ldrb	r1, [r5, #3476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp12147, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12141, tmp12140
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12141,
	addgt	r3, r3, #1	@,, MisCnt.2092, MisCnt.2084
	cmp	r6, #0	@ tmp12147,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12154, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp12148, tmp12147
	ldrb	ip, [r5, #3477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp12148,
	addgt	r3, r3, #1	@,, MisCnt.2102, MisCnt.2092
	cmp	r2, #0	@ tmp12154,
	ldrb	r4, [r5, #3478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12161, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12155, tmp12154
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12155,
	addgt	r3, r3, #1	@,, MisCnt.2111, MisCnt.2102
	cmp	ip, #0	@ tmp12161,
	ldrb	r0, [r5, #3479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12162, tmp12161
	rsb	r1, r1, r4	@ tmp12168, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12162,
	addgt	r3, r3, #1	@,, MisCnt.2119, MisCnt.2111
	cmp	r1, #0	@ tmp12168,
	rsb	ip, r2, r0	@ tmp12175, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12169, tmp12168
	cmp	r1, #2	@ tmp12169,
	addgt	r3, r3, #1	@,, MisCnt.2127, MisCnt.2119
	cmp	ip, #0	@ tmp12175,
	rsblt	ip, ip, #0	@ tmp12176, tmp12175
	cmp	ip, #2	@ tmp12176,
	addgt	r3, r3, #1	@,, tmp12179, MisCnt.2127
	cmp	r3, #2	@ tmp12179,
	movle	r0, #7	@ Result,
	ble	.L21	@
.L36:
	mov	r0, #0	@ Result,
.L21:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L69:
	cmp	r2, #1280	@ D.32713,
	bne	.L36	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp12189,
	movt	r5, #:upper16:.LANCHOR0	@ tmp12189,
	add	r7, sp, #4	@ tmp12190,,
	mov	r1, r4	@, pDetPara
	ldr	r3, [r5, #3180]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r5, #3184]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12190
	ldr	lr, [r5, #3188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #3193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11236, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11236,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11229, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11237, tmp11236
	cmp	lr, #0	@ tmp11229,
	rsb	r0, r2, r0	@ tmp11243, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11230, tmp11229
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11237,
	movle	r8, #0	@, tmp11239
	movgt	r8, #1	@, tmp11239
	ldrb	r6, [r5, #3195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11230,
	addgt	r8, r8, #1	@,, MisCnt.6730, tmp11239
	cmp	r0, #0	@ tmp11243,
	ldrb	r1, [r5, #3196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11250, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11244, tmp11243
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11244,
	addgt	r8, r8, #1	@,, MisCnt.6738, MisCnt.6730
	cmp	r6, #0	@ tmp11250,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11257, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11251, tmp11250
	ldrb	ip, [r5, #3197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11251,
	addgt	r8, r8, #1	@,, MisCnt.6746, MisCnt.6738
	cmp	r2, #0	@ tmp11257,
	ldrb	lr, [r5, #3198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11264, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11258, tmp11257
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11258,
	addgt	r8, r8, #1	@,, MisCnt.6754, MisCnt.6746
	cmp	ip, #0	@ tmp11264,
	ldrb	r0, [r5, #3199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11271, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11265, tmp11264
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11265,
	addgt	r8, r8, #1	@,, MisCnt.6762, MisCnt.6754
	cmp	r1, #0	@ tmp11271,
	rsb	r6, r2, r0	@ tmp11278, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11272, tmp11271
	cmp	r1, #2	@ tmp11272,
	addgt	r8, r8, #1	@,, MisCnt.6770, MisCnt.6762
	cmp	r6, #0	@ tmp11278,
	rsblt	r6, r6, #0	@ tmp11279, tmp11278
	cmp	r6, #2	@ tmp11279,
	addgt	r8, r8, #1	@,, tmp11282, MisCnt.6770
	cmp	r8, #2	@ tmp11282,
	bgt	.L57	@,
	ldr	r3, [r5, #3200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r5, #3204]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3208]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #3213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11300, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11300,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11293, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11301, tmp11300
	cmp	lr, #0	@ tmp11293,
	rsb	r0, r2, r0	@ tmp11307, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11294, tmp11293
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11301,
	movle	r8, #0	@, tmp11303
	movgt	r8, #1	@, tmp11303
	ldrb	r6, [r5, #3215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11294,
	addgt	r8, r8, #1	@,, MisCnt.6796, tmp11303
	cmp	r0, #0	@ tmp11307,
	ldrb	r1, [r5, #3216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11314, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11308, tmp11307
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11308,
	addgt	r8, r8, #1	@,, MisCnt.6804, MisCnt.6796
	cmp	r6, #0	@ tmp11314,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11321, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11315, tmp11314
	ldrb	ip, [r5, #3217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11315,
	addgt	r8, r8, #1	@,, MisCnt.6812, MisCnt.6804
	cmp	r2, #0	@ tmp11321,
	ldrb	lr, [r5, #3218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11328, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11322, tmp11321
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11322,
	addgt	r8, r8, #1	@,, MisCnt.6820, MisCnt.6812
	cmp	ip, #0	@ tmp11328,
	ldrb	r0, [r5, #3219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11335, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11329, tmp11328
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11329,
	addgt	r8, r8, #1	@,, MisCnt.6828, MisCnt.6820
	cmp	r1, #0	@ tmp11335,
	rsb	r6, r2, r0	@ tmp11342, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11336, tmp11335
	cmp	r1, #2	@ tmp11336,
	addgt	r8, r8, #1	@,, MisCnt.6836, MisCnt.6828
	cmp	r6, #0	@ tmp11342,
	rsblt	r6, r6, #0	@ tmp11343, tmp11342
	cmp	r6, #2	@ tmp11343,
	addgt	r8, r8, #1	@,, tmp11346, MisCnt.6836
	cmp	r8, #2	@ tmp11346,
	bgt	.L57	@,
	ldr	r3, [r5, #3220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r5, #3224]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #3233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11364, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11364,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11357, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11365, tmp11364
	cmp	lr, #0	@ tmp11357,
	rsb	r0, r2, r0	@ tmp11371, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11358, tmp11357
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11365,
	movle	r8, #0	@, tmp11367
	movgt	r8, #1	@, tmp11367
	ldrb	r6, [r5, #3235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11358,
	addgt	r8, r8, #1	@,, MisCnt.6862, tmp11367
	cmp	r0, #0	@ tmp11371,
	ldrb	r1, [r5, #3236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11378, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11372, tmp11371
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11372,
	addgt	r8, r8, #1	@,, MisCnt.6870, MisCnt.6862
	cmp	r6, #0	@ tmp11378,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11385, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11379, tmp11378
	ldrb	ip, [r5, #3237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11379,
	addgt	r8, r8, #1	@,, MisCnt.6878, MisCnt.6870
	cmp	r2, #0	@ tmp11385,
	ldrb	lr, [r5, #3238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11392, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11386, tmp11385
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11386,
	addgt	r8, r8, #1	@,, MisCnt.6886, MisCnt.6878
	cmp	ip, #0	@ tmp11392,
	ldrb	r0, [r5, #3239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11399, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11393, tmp11392
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11393,
	addgt	r8, r8, #1	@,, MisCnt.6894, MisCnt.6886
	cmp	r1, #0	@ tmp11399,
	rsb	r6, r2, r0	@ tmp11406, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11400, tmp11399
	cmp	r1, #2	@ tmp11400,
	addgt	r8, r8, #1	@,, MisCnt.6902, MisCnt.6894
	cmp	r6, #0	@ tmp11406,
	rsblt	r6, r6, #0	@ tmp11407, tmp11406
	cmp	r6, #2	@ tmp11407,
	addgt	r8, r8, #1	@,, tmp11410, MisCnt.6902
	cmp	r8, #2	@ tmp11410,
	bgt	.L57	@,
	ldr	r3, [r5, #3240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r5, #3244]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #3253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp11428, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11428,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp11421, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11429, tmp11428
	cmp	lr, #0	@ tmp11421,
	rsb	r0, r2, r0	@ tmp11435, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11422, tmp11421
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11429,
	movle	r8, #0	@, tmp11431
	movgt	r8, #1	@, tmp11431
	ldrb	r6, [r5, #3255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11422,
	addgt	r8, r8, #1	@,, MisCnt.6928, tmp11431
	cmp	r0, #0	@ tmp11435,
	ldrb	r1, [r5, #3256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11442, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11436, tmp11435
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11436,
	addgt	r8, r8, #1	@,, MisCnt.6936, MisCnt.6928
	cmp	r6, #0	@ tmp11442,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11449, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11443, tmp11442
	ldrb	ip, [r5, #3257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11443,
	addgt	r8, r8, #1	@,, MisCnt.6944, MisCnt.6936
	cmp	r2, #0	@ tmp11449,
	ldrb	lr, [r5, #3258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11456, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11450, tmp11449
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11450,
	addgt	r8, r8, #1	@,, MisCnt.6952, MisCnt.6944
	cmp	ip, #0	@ tmp11456,
	ldrb	r0, [r5, #3259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11463, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11457, tmp11456
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11457,
	addgt	r8, r8, #1	@,, MisCnt.6960, MisCnt.6952
	cmp	r1, #0	@ tmp11463,
	rsb	r6, r2, r0	@ tmp11470, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11464, tmp11463
	cmp	r1, #2	@ tmp11464,
	addgt	r8, r8, #1	@,, MisCnt.6968, MisCnt.6960
	cmp	r6, #0	@ tmp11470,
	rsblt	r6, r6, #0	@ tmp11471, tmp11470
	cmp	r6, #2	@ tmp11471,
	addgt	r8, r8, #1	@,, tmp11474, MisCnt.6968
	cmp	r8, #2	@ tmp11474,
	bgt	.L57	@,
	ldr	r3, [r5, #3260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r5, #3264]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r5, #3273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #3272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp11492, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11492,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, r8	@ tmp11485, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11493, tmp11492
	cmp	r6, #0	@ tmp11485,
	rsb	r0, r2, r0	@ tmp11499, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11486, tmp11485
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11493,
	movle	r3, #0	@, tmp11495
	movgt	r3, #1	@, tmp11495
	ldrb	r8, [r5, #3275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11486,
	addgt	r3, r3, #1	@,, MisCnt.2147, tmp11495
	cmp	r0, #0	@ tmp11499,
	ldrb	r1, [r5, #3276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11506, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11500, tmp11499
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11500,
	addgt	r3, r3, #1	@,, MisCnt.2158, MisCnt.2147
	cmp	r8, #0	@ tmp11506,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11513, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11507, tmp11506
	ldrb	ip, [r5, #3277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11507,
	addgt	r3, r3, #1	@,, MisCnt.2169, MisCnt.2158
	cmp	r2, #0	@ tmp11513,
	ldrb	r6, [r5, #3278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11520, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11514, tmp11513
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11514,
	addgt	r3, r3, #1	@,, MisCnt.2178, MisCnt.2169
	cmp	ip, #0	@ tmp11520,
	ldrb	r0, [r5, #3279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11521, tmp11520
	rsb	r1, r1, r6	@ tmp11527, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11521,
	addgt	r3, r3, #1	@,, MisCnt.2189, MisCnt.2178
	cmp	r1, #0	@ tmp11527,
	rsb	ip, r2, r0	@ tmp11534, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11528, tmp11527
	cmp	r1, #2	@ tmp11528,
	addgt	r3, r3, #1	@,, MisCnt.2200, MisCnt.2189
	cmp	ip, #0	@ tmp11534,
	rsblt	ip, ip, #0	@ tmp11535, tmp11534
	cmp	ip, #2	@ tmp11535,
	addgt	r3, r3, #1	@,, tmp11538, MisCnt.2200
	cmp	r3, #2	@ tmp11538,
	movle	r0, #5	@ Result,
	ble	.L21	@,
.L57:
	ldr	ip, [r5, #3280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r5, #3284]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3288]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp11539,
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp11539,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r5, #3293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #3292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r8, r1	@ tmp11556, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp11556,
	ldrb	ip, [r5, #3294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r3, r0	@ tmp11549, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp11557, tmp11556
	cmp	r8, #0	@ tmp11549,
	rsblt	r8, r8, #0	@ tmp11550, tmp11549
	ldrb	r0, [r5, #3295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11557,
	movle	r1, #0	@, tmp11559
	movgt	r1, #1	@, tmp11559
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, ip	@ tmp11563, SmpPat.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11550,
	addgt	r1, r1, #1	@,, MisCnt.6994, tmp11559
	cmp	sl, #0	@ tmp11563,
	rsb	r3, r3, r0	@ tmp11570, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp11564, tmp11563
	ldrb	ip, [r5, #3296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11564,
	movle	sl, r1	@, MisCnt.7002, MisCnt.6994
	addgt	sl, r1, #1	@,, MisCnt.7002, MisCnt.6994
	cmp	r3, #0	@ tmp11570,
	ldrb	r0, [r5, #3297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp11577, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11571, tmp11570
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11571,
	movle	r3, sl	@, MisCnt.7010, MisCnt.7002
	addgt	r3, sl, #1	@,, MisCnt.7010, MisCnt.7002
	cmp	ip, #0	@ tmp11577,
	ldrb	r8, [r5, #3298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp11584, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11578, tmp11577
	ldrb	r2, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11578,
	movle	ip, r3	@, MisCnt.7018, MisCnt.7010
	addgt	ip, r3, #1	@,, MisCnt.7018, MisCnt.7010
	cmp	r1, #0	@ tmp11584,
	ldrb	r0, [r5, #3299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r8	@ tmp11591, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11585, tmp11584
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp11585,
	movle	r1, ip	@, MisCnt.7026, MisCnt.7018
	addgt	r1, ip, #1	@,, MisCnt.7026, MisCnt.7018
	cmp	r2, #0	@ tmp11591,
	rsb	ip, r3, r0	@ tmp11598, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11592, tmp11591
	cmp	r2, #2	@ tmp11592,
	movle	r2, r1	@, MisCnt.7034, MisCnt.7026
	addgt	r2, r1, #1	@,, MisCnt.7034, MisCnt.7026
	cmp	ip, #0	@ tmp11598,
	rsblt	ip, ip, #0	@ tmp11599, tmp11598
	cmp	ip, #2	@ tmp11599,
	movle	r0, r2	@, tmp11602, MisCnt.7034
	addgt	r0, r2, #1	@,, tmp11602, MisCnt.7034
	cmp	r0, #2	@ tmp11602,
	bgt	.L36	@,
	ldr	r3, [r6, #3300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r6, #3304]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3308]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #3313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp11620, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11620,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp11613, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11621, tmp11620
	cmp	r5, #0	@ tmp11613,
	rsb	r0, r2, r0	@ tmp11627, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11614, tmp11613
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11621,
	movle	r3, #0	@, tmp11623
	movgt	r3, #1	@, tmp11623
	ldrb	r8, [r6, #3315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11614,
	addgt	r3, r3, #1	@,, MisCnt.7060, tmp11623
	cmp	r0, #0	@ tmp11627,
	ldrb	r1, [r6, #3316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11634, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11628, tmp11627
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11628,
	addgt	r3, r3, #1	@,, MisCnt.7068, MisCnt.7060
	cmp	r8, #0	@ tmp11634,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11641, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11635, tmp11634
	ldrb	ip, [r6, #3317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11635,
	addgt	r3, r3, #1	@,, MisCnt.7076, MisCnt.7068
	cmp	r2, #0	@ tmp11641,
	ldrb	r5, [r6, #3318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11648, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11642, tmp11641
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11642,
	addgt	r3, r3, #1	@,, MisCnt.7084, MisCnt.7076
	cmp	ip, #0	@ tmp11648,
	ldrb	r0, [r6, #3319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r5	@ tmp11655, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11649, tmp11648
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11649,
	addgt	r3, r3, #1	@,, MisCnt.7092, MisCnt.7084
	cmp	r1, #0	@ tmp11655,
	rsb	r2, r2, r0	@ tmp11662, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11656, tmp11655
	cmp	r1, #2	@ tmp11656,
	addgt	r3, r3, #1	@,, MisCnt.7100, MisCnt.7092
	cmp	r2, #0	@ tmp11662,
	rsblt	r2, r2, #0	@ tmp11663, tmp11662
	cmp	r2, #2	@ tmp11663,
	addgt	r3, r3, #1	@,, tmp11666, MisCnt.7100
	cmp	r3, #2	@ tmp11666,
	bgt	.L36	@,
	ldr	r3, [r6, #3320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r6, #3324]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3328]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #3333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp11684, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11684,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp11677, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11685, tmp11684
	cmp	r5, #0	@ tmp11677,
	rsb	r0, r2, r0	@ tmp11691, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11678, tmp11677
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11685,
	movle	r3, #0	@, tmp11687
	movgt	r3, #1	@, tmp11687
	ldrb	r8, [r6, #3335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11678,
	addgt	r3, r3, #1	@,, MisCnt.7126, tmp11687
	cmp	r0, #0	@ tmp11691,
	ldrb	r1, [r6, #3336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11698, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11692, tmp11691
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11692,
	addgt	r3, r3, #1	@,, MisCnt.7134, MisCnt.7126
	cmp	r8, #0	@ tmp11698,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11705, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11699, tmp11698
	ldrb	ip, [r6, #3337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11699,
	addgt	r3, r3, #1	@,, MisCnt.7142, MisCnt.7134
	cmp	r2, #0	@ tmp11705,
	ldrb	r5, [r6, #3338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11712, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11706, tmp11705
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11706,
	addgt	r3, r3, #1	@,, MisCnt.7150, MisCnt.7142
	cmp	ip, #0	@ tmp11712,
	ldrb	r0, [r6, #3339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11713, tmp11712
	rsb	r1, r1, r5	@ tmp11719, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11713,
	addgt	r3, r3, #1	@,, MisCnt.7158, MisCnt.7150
	cmp	r1, #0	@ tmp11719,
	rsb	ip, r2, r0	@ tmp11726, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11720, tmp11719
	cmp	r1, #2	@ tmp11720,
	addgt	r3, r3, #1	@,, MisCnt.7166, MisCnt.7158
	cmp	ip, #0	@ tmp11726,
	rsblt	ip, ip, #0	@ tmp11727, tmp11726
	cmp	ip, #2	@ tmp11727,
	addgt	r3, r3, #1	@,, tmp11730, MisCnt.7166
	cmp	r3, #2	@ tmp11730,
	bgt	.L36	@,
	ldr	r3, [r6, #3340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12190
	ldr	r2, [r6, #3344]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3348]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #3353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp11748, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11748,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp11741, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11749, tmp11748
	cmp	r5, #0	@ tmp11741,
	rsb	r0, r2, r0	@ tmp11755, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11742, tmp11741
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11749,
	movle	r3, #0	@, tmp11751
	movgt	r3, #1	@, tmp11751
	ldrb	r8, [r6, #3355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11742,
	addgt	r3, r3, #1	@,, MisCnt.7192, tmp11751
	cmp	r0, #0	@ tmp11755,
	ldrb	r1, [r6, #3356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11762, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11756, tmp11755
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11756,
	addgt	r3, r3, #1	@,, MisCnt.7200, MisCnt.7192
	cmp	r8, #0	@ tmp11762,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11769, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11763, tmp11762
	ldrb	ip, [r6, #3357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11763,
	addgt	r3, r3, #1	@,, MisCnt.7208, MisCnt.7200
	cmp	r2, #0	@ tmp11769,
	ldrb	r5, [r6, #3358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11776, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11770, tmp11769
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11770,
	addgt	r3, r3, #1	@,, MisCnt.7216, MisCnt.7208
	cmp	ip, #0	@ tmp11776,
	ldrb	r0, [r6, #3359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11777, tmp11776
	rsb	r1, r1, r5	@ tmp11783, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11777,
	addgt	r3, r3, #1	@,, MisCnt.7224, MisCnt.7216
	cmp	r1, #0	@ tmp11783,
	rsb	ip, r2, r0	@ tmp11790, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11784, tmp11783
	cmp	r1, #2	@ tmp11784,
	addgt	r3, r3, #1	@,, MisCnt.7232, MisCnt.7224
	cmp	ip, #0	@ tmp11790,
	rsblt	ip, ip, #0	@ tmp11791, tmp11790
	cmp	ip, #2	@ tmp11791,
	addgt	r3, r3, #1	@,, tmp11794, MisCnt.7232
	cmp	r3, #2	@ tmp11794,
	bgt	.L36	@,
	ldr	r3, [r6, #3360]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r4	@, pDetPara
	ldr	r2, [r6, #3364]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12190
	ldr	lr, [r6, #3368]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #3372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11812, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11812,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp11805, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11813, tmp11812
	cmp	r4, #0	@ tmp11805,
	rsb	r0, r2, r0	@ tmp11819, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11806, tmp11805
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11813,
	movle	r3, #0	@, tmp11815
	movgt	r3, #1	@, tmp11815
	ldrb	r5, [r6, #3375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11806,
	addgt	r3, r3, #1	@,, MisCnt.2217, tmp11815
	cmp	r0, #0	@ tmp11819,
	ldrb	r1, [r6, #3376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp11826, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11820, tmp11819
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11820,
	addgt	r3, r3, #1	@,, MisCnt.2228, MisCnt.2217
	cmp	r5, #0	@ tmp11826,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11833, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11827, tmp11826
	ldrb	ip, [r6, #3377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11827,
	addgt	r3, r3, #1	@,, MisCnt.2239, MisCnt.2228
	cmp	r2, #0	@ tmp11833,
	ldrb	r4, [r6, #3378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11840, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11834, tmp11833
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11834,
	addgt	r3, r3, #1	@,, MisCnt.2249, MisCnt.2239
	cmp	ip, #0	@ tmp11840,
	ldrb	r0, [r6, #3379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11841, tmp11840
	rsb	r1, r1, r4	@ tmp11847, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11841,
	addgt	r3, r3, #1	@,, MisCnt.2258, MisCnt.2249
	cmp	r1, #0	@ tmp11847,
	rsb	ip, r2, r0	@ tmp11854, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11848, tmp11847
	cmp	r1, #2	@ tmp11848,
	addgt	r3, r3, #1	@,, MisCnt.2269, MisCnt.2258
	cmp	ip, #0	@ tmp11854,
	rsblt	ip, ip, #0	@ tmp11855, tmp11854
	cmp	ip, #2	@ tmp11855,
	addgt	r3, r3, #1	@,, tmp11858, MisCnt.2269
	cmp	r3, #2	@ tmp11858,
	bgt	.L36	@,
	mov	r0, #6	@ Result,
	b	.L21	@
.L67:
	cmp	r2, #720	@ D.32713,
	beq	.L70	@,
	cmp	r2, #704	@ D.32713,
	bne	.L36	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp12185,
	movt	r5, #:upper16:.LANCHOR0	@ tmp12185,
	add	r7, sp, #4	@ tmp12186,,
	mov	r1, r4	@, pDetPara
	ldr	ip, [r5, #2300]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r5, #2304]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12186
	ldr	lr, [r5, #2308]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r5, #2313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, r6	@ tmp8548, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8548,
	rsb	lr, r1, sl	@ tmp8541, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8549, tmp8548
	cmp	lr, #0	@ tmp8541,
	rsb	r8, r2, r0	@ tmp8555, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8542, tmp8541
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8549,
	movle	sl, #0	@, tmp8551
	movgt	sl, #1	@, tmp8551
	ldrb	r6, [r5, #2315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8542,
	addgt	sl, sl, #1	@,, MisCnt.7258, tmp8551
	cmp	r8, #0	@ tmp8555,
	ldrb	r1, [r5, #2316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp8562, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8556, tmp8555
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp8556,
	addgt	sl, sl, #1	@,, MisCnt.7266, MisCnt.7258
	cmp	r6, #0	@ tmp8562,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp8569, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp8563, tmp8562
	ldrb	ip, [r5, #2317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp8563,
	addgt	sl, sl, #1	@,, MisCnt.7274, MisCnt.7266
	cmp	r8, #0	@ tmp8569,
	ldrb	lr, [r5, #2318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8576, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8570, tmp8569
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp8570,
	addgt	sl, sl, #1	@,, MisCnt.7282, MisCnt.7274
	cmp	ip, #0	@ tmp8576,
	ldrb	r0, [r5, #2319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r1, lr	@ tmp8583, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8577, tmp8576
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8577,
	addgt	sl, sl, #1	@,, MisCnt.7290, MisCnt.7282
	cmp	r8, #0	@ tmp8583,
	rsb	r6, r2, r0	@ tmp8590, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8584, tmp8583
	cmp	r8, #2	@ tmp8584,
	addgt	sl, sl, #1	@,, MisCnt.7298, MisCnt.7290
	cmp	r6, #0	@ tmp8590,
	rsblt	r6, r6, #0	@ tmp8591, tmp8590
	cmp	r6, #2	@ tmp8591,
	addgt	sl, sl, #1	@,, tmp8594, MisCnt.7298
	cmp	sl, #2	@ tmp8594,
	bgt	.L47	@,
	ldr	r6, [r5, #2320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	sl, [r5, #2324]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2328]	@ <variable>.Py, <variable>.Py
	str	r6, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	mov	r6, r5	@ tmp8595, tmp12185
	str	sl, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #2332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp8612, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8612,
	ldrb	sl, [r5, #2334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8605, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8613, tmp8612
	cmp	lr, #0	@ tmp8605,
	rsb	r0, r2, sl	@ tmp8619, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8606, tmp8605
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8613,
	movle	r3, #0	@, tmp8615
	movgt	r3, #1	@, tmp8615
	ldrb	r8, [r5, #2335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8606,
	addgt	r3, r3, #1	@,, MisCnt.7324, tmp8615
	cmp	r0, #0	@ tmp8619,
	ldrb	r1, [r5, #2336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8626, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8620, tmp8619
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8620,
	addgt	r3, r3, #1	@,, MisCnt.7332, MisCnt.7324
	cmp	r8, #0	@ tmp8626,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp8633, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8627, tmp8626
	ldrb	ip, [r5, #2337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8627,
	addgt	r3, r3, #1	@,, MisCnt.7340, MisCnt.7332
	cmp	r2, #0	@ tmp8633,
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp8640, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8634, tmp8633
	ldrb	lr, [r5, #2338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp8634,
	addgt	r3, r3, #1	@,, MisCnt.7348, MisCnt.7340
	cmp	ip, #0	@ tmp8640,
	ldrb	r0, [r5, #2339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp8647, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8641, tmp8640
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8641,
	addgt	r3, r3, #1	@,, MisCnt.7356, MisCnt.7348
	cmp	r1, #0	@ tmp8647,
	rsb	sl, r8, r0	@ tmp8654, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8648, tmp8647
	cmp	r1, #2	@ tmp8648,
	addgt	r3, r3, #1	@,, MisCnt.7364, MisCnt.7356
	cmp	sl, #0	@ tmp8654,
	rsblt	sl, sl, #0	@ tmp8655, tmp8654
	cmp	sl, #2	@ tmp8655,
	addgt	r3, r3, #1	@,, tmp8658, MisCnt.7364
	cmp	r3, #2	@ tmp8658,
	bgt	.L47	@,
	ldr	r2, [r5, #2340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	sl, [r5, #2344]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2348]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r5, #2353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #2352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp8676, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8676,
	ldrb	sl, [r5, #2354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8669, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8677, tmp8676
	cmp	lr, #0	@ tmp8669,
	rsb	r0, r2, sl	@ tmp8683, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8670, tmp8669
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8677,
	movle	r3, #0	@, tmp8679
	movgt	r3, #1	@, tmp8679
	ldrb	r8, [r5, #2355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8670,
	addgt	r3, r3, #1	@,, MisCnt.7390, tmp8679
	cmp	r0, #0	@ tmp8683,
	ldrb	r1, [r5, #2356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8690, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8684, tmp8683
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8684,
	addgt	r3, r3, #1	@,, MisCnt.7398, MisCnt.7390
	cmp	r8, #0	@ tmp8690,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp8697, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8691, tmp8690
	ldrb	ip, [r5, #2357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8691,
	addgt	r3, r3, #1	@,, MisCnt.7406, MisCnt.7398
	cmp	r2, #0	@ tmp8697,
	ldrb	lr, [r5, #2358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8704, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8698, tmp8697
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8698,
	addgt	r3, r3, #1	@,, MisCnt.7414, MisCnt.7406
	cmp	ip, #0	@ tmp8704,
	ldrb	r0, [r5, #2359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp8711, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8705, tmp8704
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8705,
	addgt	r3, r3, #1	@,, MisCnt.7422, MisCnt.7414
	cmp	r1, #0	@ tmp8711,
	rsb	r2, r8, r0	@ tmp8718, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8712, tmp8711
	cmp	r1, #2	@ tmp8712,
	addgt	r3, r3, #1	@,, MisCnt.7430, MisCnt.7422
	cmp	r2, #0	@ tmp8718,
	rsblt	r2, r2, #0	@ tmp8719, tmp8718
	cmp	r2, #2	@ tmp8719,
	addgt	r3, r3, #1	@,, tmp8722, MisCnt.7430
	cmp	r3, #2	@ tmp8722,
	bgt	.L47	@,
	ldr	r2, [r5, #2360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	r8, [r5, #2364]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2368]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, r8, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r5, #2373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #2372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp8740, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8740,
	ldrb	r8, [r5, #2374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8733, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8741, tmp8740
	cmp	lr, #0	@ tmp8733,
	rsb	r0, r2, r8	@ tmp8747, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8734, tmp8733
	ldrb	sl, [r5, #2375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8741,
	movle	r3, #0	@, tmp8743
	movgt	r3, #1	@, tmp8743
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp8734,
	addgt	r3, r3, #1	@,, MisCnt.7456, tmp8743
	cmp	r0, #0	@ tmp8747,
	ldrb	r1, [r5, #2376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp8754, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8748, tmp8747
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8748,
	addgt	r3, r3, #1	@,, MisCnt.7464, MisCnt.7456
	cmp	r8, #0	@ tmp8754,
	ldrb	sl, [r5, #2377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp8761, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8755, tmp8754
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp8755,
	addgt	r3, r3, #1	@,, MisCnt.7472, MisCnt.7464
	cmp	r2, #0	@ tmp8761,
	ldrb	lr, [r5, #2378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp8768, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8762, tmp8761
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8762,
	addgt	r3, r3, #1	@,, MisCnt.7480, MisCnt.7472
	cmp	ip, #0	@ tmp8768,
	ldrb	r0, [r5, #2379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8775, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8769, tmp8768
	ldrb	sl, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8769,
	addgt	r3, r3, #1	@,, MisCnt.7488, MisCnt.7480
	cmp	r1, #0	@ tmp8775,
	rsb	r8, sl, r0	@ tmp8782, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8776, tmp8775
	cmp	r1, #2	@ tmp8776,
	addgt	r3, r3, #1	@,, MisCnt.7496, MisCnt.7488
	cmp	r8, #0	@ tmp8782,
	rsblt	r8, r8, #0	@ tmp8783, tmp8782
	cmp	r8, #2	@ tmp8783,
	addgt	r3, r3, #1	@,, tmp8786, MisCnt.7496
	cmp	r3, #2	@ tmp8786,
	bgt	.L47	@,
	ldr	r3, [r5, #2380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	r2, [r5, #2384]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #2393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp8804, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8804,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp8797, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8805, tmp8804
	cmp	r8, #0	@ tmp8797,
	rsb	r0, r2, r0	@ tmp8811, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8798, tmp8797
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8805,
	movle	r3, #0	@, tmp8807
	movgt	r3, #1	@, tmp8807
	ldrb	sl, [r5, #2395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8798,
	addgt	r3, r3, #1	@,, MisCnt.2287, tmp8807
	cmp	r0, #0	@ tmp8811,
	ldrb	r1, [r5, #2396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8818, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8812, tmp8811
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8812,
	addgt	r3, r3, #1	@,, MisCnt.2296, MisCnt.2287
	cmp	sl, #0	@ tmp8818,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8825, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8819, tmp8818
	ldrb	ip, [r5, #2397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8819,
	addgt	r3, r3, #1	@,, MisCnt.2304, MisCnt.2296
	cmp	r2, #0	@ tmp8825,
	ldrb	r8, [r5, #2398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8832, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8826, tmp8825
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8826,
	addgt	r3, r3, #1	@,, MisCnt.2312, MisCnt.2304
	cmp	ip, #0	@ tmp8832,
	ldrb	r0, [r5, #2399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8833, tmp8832
	rsb	r1, r1, r8	@ tmp8839, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8833,
	addgt	r3, r3, #1	@,, MisCnt.2320, MisCnt.2312
	cmp	r1, #0	@ tmp8839,
	rsb	ip, r2, r0	@ tmp8846, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8840, tmp8839
	cmp	r1, #2	@ tmp8840,
	addgt	r3, r3, #1	@,, MisCnt.2328, MisCnt.2320
	cmp	ip, #0	@ tmp8846,
	rsblt	ip, ip, #0	@ tmp8847, tmp8846
	cmp	ip, #2	@ tmp8847,
	addgt	r3, r3, #1	@,, tmp8850, MisCnt.2328
	cmp	r3, #2	@ tmp8850,
	movle	r0, #24	@ Result,
	ble	.L21	@,
.L47:
	ldr	ip, [r5, #2400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	r2, [r5, #2404]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2408]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp8851,
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp8851,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #2413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r1, r3, r8	@ tmp8868, SmpPat.Pix, <variable>.Pix
	cmp	r1, #0	@ tmp8868,
	ldrb	r2, [r5, #2414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r0, sl	@ tmp8861, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r1, r1, #0	@ tmp8869, tmp8868
	cmp	r8, #0	@ tmp8861,
	rsb	r3, ip, r2	@ tmp8875, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8862, tmp8861
	ldrb	r0, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8869,
	movle	r1, #0	@, tmp8871
	movgt	r1, #1	@, tmp8871
	ldrb	sl, [r5, #2415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8862,
	addgt	r1, r1, #1	@,, MisCnt.7522, tmp8871
	cmp	r3, #0	@ tmp8875,
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r0, sl	@ tmp8882, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8876, tmp8875
	ldrb	ip, [r5, #2416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8876,
	movle	r3, r1	@, MisCnt.7530, MisCnt.7522
	addgt	r3, r1, #1	@,, MisCnt.7530, MisCnt.7522
	cmp	sl, #0	@ tmp8882,
	ldrb	r0, [r5, #2417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp8889, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8883, tmp8882
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp8883,
	addgt	r3, r3, #1	@,, MisCnt.7538, MisCnt.7530
	cmp	ip, #0	@ tmp8889,
	ldrb	r8, [r5, #2418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp8896, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8890, tmp8889
	ldrb	r2, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8890,
	movle	ip, r3	@, MisCnt.7546, MisCnt.7538
	addgt	ip, r3, #1	@,, MisCnt.7546, MisCnt.7538
	cmp	r1, #0	@ tmp8896,
	ldrb	r0, [r5, #2419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r8	@ tmp8903, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8897, tmp8896
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8897,
	movle	r1, ip	@, MisCnt.7554, MisCnt.7546
	addgt	r1, ip, #1	@,, MisCnt.7554, MisCnt.7546
	cmp	r2, #0	@ tmp8903,
	rsb	ip, r3, r0	@ tmp8910, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8904, tmp8903
	cmp	r2, #2	@ tmp8904,
	movle	r2, r1	@, MisCnt.7562, MisCnt.7554
	addgt	r2, r1, #1	@,, MisCnt.7562, MisCnt.7554
	cmp	ip, #0	@ tmp8910,
	rsblt	ip, ip, #0	@ tmp8911, tmp8910
	cmp	ip, #2	@ tmp8911,
	movle	r0, r2	@, tmp8914, MisCnt.7562
	addgt	r0, r2, #1	@,, tmp8914, MisCnt.7562
	cmp	r0, #2	@ tmp8914,
	bgt	.L36	@,
	ldr	r3, [r6, #2420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	r2, [r6, #2424]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #2433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp8932, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8932,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp8925, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8933, tmp8932
	cmp	r5, #0	@ tmp8925,
	rsb	r0, r2, r0	@ tmp8939, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8926, tmp8925
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8933,
	movle	r3, #0	@, tmp8935
	movgt	r3, #1	@, tmp8935
	ldrb	r8, [r6, #2435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8926,
	addgt	r3, r3, #1	@,, MisCnt.7588, tmp8935
	cmp	r0, #0	@ tmp8939,
	ldrb	r1, [r6, #2436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8946, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8940, tmp8939
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8940,
	addgt	r3, r3, #1	@,, MisCnt.7596, MisCnt.7588
	cmp	r8, #0	@ tmp8946,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8953, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8947, tmp8946
	ldrb	ip, [r6, #2437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8947,
	addgt	r3, r3, #1	@,, MisCnt.7604, MisCnt.7596
	cmp	r2, #0	@ tmp8953,
	ldrb	r5, [r6, #2438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8960, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8954, tmp8953
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8954,
	addgt	r3, r3, #1	@,, MisCnt.7612, MisCnt.7604
	cmp	ip, #0	@ tmp8960,
	ldrb	r0, [r6, #2439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r5	@ tmp8967, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8961, tmp8960
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8961,
	addgt	r3, r3, #1	@,, MisCnt.7620, MisCnt.7612
	cmp	r1, #0	@ tmp8967,
	rsb	r2, r2, r0	@ tmp8974, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8968, tmp8967
	cmp	r1, #2	@ tmp8968,
	addgt	r3, r3, #1	@,, MisCnt.7628, MisCnt.7620
	cmp	r2, #0	@ tmp8974,
	rsblt	r2, r2, #0	@ tmp8975, tmp8974
	cmp	r2, #2	@ tmp8975,
	addgt	r3, r3, #1	@,, tmp8978, MisCnt.7628
	cmp	r3, #2	@ tmp8978,
	bgt	.L36	@,
	ldr	r3, [r6, #2440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	r2, [r6, #2444]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #2453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp8996, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8996,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp8989, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8997, tmp8996
	cmp	r5, #0	@ tmp8989,
	rsb	r0, r2, r0	@ tmp9003, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8990, tmp8989
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8997,
	movle	r3, #0	@, tmp8999
	movgt	r3, #1	@, tmp8999
	ldrb	r8, [r6, #2455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8990,
	addgt	r3, r3, #1	@,, MisCnt.7654, tmp8999
	cmp	r0, #0	@ tmp9003,
	ldrb	r1, [r6, #2456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9010, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9004, tmp9003
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9004,
	addgt	r3, r3, #1	@,, MisCnt.7662, MisCnt.7654
	cmp	r8, #0	@ tmp9010,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9017, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9011, tmp9010
	ldrb	ip, [r6, #2457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9011,
	addgt	r3, r3, #1	@,, MisCnt.7670, MisCnt.7662
	cmp	r2, #0	@ tmp9017,
	ldrb	r5, [r6, #2458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9024, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9018, tmp9017
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9018,
	addgt	r3, r3, #1	@,, MisCnt.7678, MisCnt.7670
	cmp	ip, #0	@ tmp9024,
	ldrb	r0, [r6, #2459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9025, tmp9024
	rsb	r1, r1, r5	@ tmp9031, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9025,
	addgt	r3, r3, #1	@,, MisCnt.7686, MisCnt.7678
	cmp	r1, #0	@ tmp9031,
	rsb	ip, r2, r0	@ tmp9038, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9032, tmp9031
	cmp	r1, #2	@ tmp9032,
	addgt	r3, r3, #1	@,, MisCnt.7694, MisCnt.7686
	cmp	ip, #0	@ tmp9038,
	rsblt	ip, ip, #0	@ tmp9039, tmp9038
	cmp	ip, #2	@ tmp9039,
	addgt	r3, r3, #1	@,, tmp9042, MisCnt.7694
	cmp	r3, #2	@ tmp9042,
	bgt	.L36	@,
	ldr	r3, [r6, #2460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	r2, [r6, #2464]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #2473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp9060, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9060,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp9053, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9061, tmp9060
	cmp	r5, #0	@ tmp9053,
	rsb	r0, r2, r0	@ tmp9067, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp9054, tmp9053
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9061,
	movle	r3, #0	@, tmp9063
	movgt	r3, #1	@, tmp9063
	ldrb	r8, [r6, #2475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp9054,
	addgt	r3, r3, #1	@,, MisCnt.7720, tmp9063
	cmp	r0, #0	@ tmp9067,
	ldrb	r1, [r6, #2476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9074, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9068, tmp9067
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9068,
	addgt	r3, r3, #1	@,, MisCnt.7728, MisCnt.7720
	cmp	r8, #0	@ tmp9074,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9081, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9075, tmp9074
	ldrb	ip, [r6, #2477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9075,
	addgt	r3, r3, #1	@,, MisCnt.7736, MisCnt.7728
	cmp	r2, #0	@ tmp9081,
	ldrb	r5, [r6, #2478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9088, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9082, tmp9081
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9082,
	addgt	r3, r3, #1	@,, MisCnt.7744, MisCnt.7736
	cmp	ip, #0	@ tmp9088,
	ldrb	r0, [r6, #2479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9089, tmp9088
	rsb	r1, r1, r5	@ tmp9095, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9089,
	addgt	r3, r3, #1	@,, MisCnt.7752, MisCnt.7744
	cmp	r1, #0	@ tmp9095,
	rsb	ip, r2, r0	@ tmp9102, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9096, tmp9095
	cmp	r1, #2	@ tmp9096,
	addgt	r3, r3, #1	@,, MisCnt.7760, MisCnt.7752
	cmp	ip, #0	@ tmp9102,
	rsblt	ip, ip, #0	@ tmp9103, tmp9102
	cmp	ip, #2	@ tmp9103,
	addgt	r3, r3, #1	@,, tmp9106, MisCnt.7760
	cmp	r3, #2	@ tmp9106,
	bgt	.L36	@,
	ldr	r3, [r6, #2480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12186
	ldr	r2, [r6, #2484]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #2493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp9124, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9124,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp9117, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9125, tmp9124
	cmp	r5, #0	@ tmp9117,
	rsb	r0, r2, r0	@ tmp9131, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp9118, tmp9117
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9125,
	movle	r3, #0	@, tmp9127
	movgt	r3, #1	@, tmp9127
	ldrb	r8, [r6, #2495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp9118,
	addgt	r3, r3, #1	@,, MisCnt.7786, tmp9127
	cmp	r0, #0	@ tmp9131,
	ldrb	r1, [r6, #2496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9138, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9132, tmp9131
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9132,
	addgt	r3, r3, #1	@,, MisCnt.7794, MisCnt.7786
	cmp	r8, #0	@ tmp9138,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9145, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9139, tmp9138
	ldrb	ip, [r6, #2497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9139,
	addgt	r3, r3, #1	@,, MisCnt.7802, MisCnt.7794
	cmp	r2, #0	@ tmp9145,
	ldrb	r5, [r6, #2498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9152, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9146, tmp9145
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9146,
	addgt	r3, r3, #1	@,, MisCnt.7810, MisCnt.7802
	cmp	ip, #0	@ tmp9152,
	ldrb	r0, [r6, #2499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9153, tmp9152
	rsb	r1, r1, r5	@ tmp9159, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9153,
	addgt	r3, r3, #1	@,, MisCnt.7818, MisCnt.7810
	cmp	r1, #0	@ tmp9159,
	rsb	ip, r2, r0	@ tmp9166, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9160, tmp9159
	cmp	r1, #2	@ tmp9160,
	addgt	r3, r3, #1	@,, MisCnt.7826, MisCnt.7818
	cmp	ip, #0	@ tmp9166,
	rsblt	ip, ip, #0	@ tmp9167, tmp9166
	cmp	ip, #2	@ tmp9167,
	addgt	r3, r3, #1	@,, tmp9170, MisCnt.7826
	cmp	r3, #2	@ tmp9170,
	bgt	.L36	@,
	ldr	r3, [r6, #2500]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r4	@, pDetPara
	ldr	r2, [r6, #2504]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12186
	ldr	lr, [r6, #2508]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #2512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp9188, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9188,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp9181, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9189, tmp9188
	cmp	r4, #0	@ tmp9181,
	rsb	r0, r2, r0	@ tmp9195, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp9182, tmp9181
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9189,
	movle	r3, #0	@, tmp9191
	movgt	r3, #1	@, tmp9191
	ldrb	r5, [r6, #2515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp9182,
	addgt	r3, r3, #1	@,, MisCnt.2348, tmp9191
	cmp	r0, #0	@ tmp9195,
	ldrb	r1, [r6, #2516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp9202, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9196, tmp9195
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9196,
	addgt	r3, r3, #1	@,, MisCnt.2359, MisCnt.2348
	cmp	r5, #0	@ tmp9202,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9209, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp9203, tmp9202
	ldrb	ip, [r6, #2517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp9203,
	addgt	r3, r3, #1	@,, MisCnt.2370, MisCnt.2359
	cmp	r2, #0	@ tmp9209,
	ldrb	r4, [r6, #2518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9216, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9210, tmp9209
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9210,
	addgt	r3, r3, #1	@,, MisCnt.2378, MisCnt.2370
	cmp	ip, #0	@ tmp9216,
	ldrb	r0, [r6, #2519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9217, tmp9216
	rsb	r1, r1, r4	@ tmp9223, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9217,
	addgt	r3, r3, #1	@,, MisCnt.2387, MisCnt.2378
	cmp	r1, #0	@ tmp9223,
	rsb	ip, r2, r0	@ tmp9230, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9224, tmp9223
	cmp	r1, #2	@ tmp9224,
	addgt	r3, r3, #1	@,, MisCnt.2398, MisCnt.2387
	cmp	ip, #0	@ tmp9230,
	rsblt	ip, ip, #0	@ tmp9231, tmp9230
	cmp	ip, #2	@ tmp9231,
	addgt	r3, r3, #1	@,, tmp9234, MisCnt.2398
	cmp	r3, #2	@ tmp9234,
	bgt	.L36	@,
	mov	r0, #10	@ Result,
	b	.L21	@
.L68:
	cmp	r2, #720	@ D.32713,
	beq	.L71	@,
	cmp	r2, #704	@ D.32713,
	bne	.L49	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp12187,
	movt	r5, #:upper16:.LANCHOR0	@ tmp12187,
	add	r7, sp, #4	@ tmp12188,,
	mov	r1, r4	@, pDetPara
	ldr	r3, [r5, #2520]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r5, #2524]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12188
	ldr	lr, [r5, #2528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #2533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp9252, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9252,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp9245, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9253, tmp9252
	cmp	lr, #0	@ tmp9245,
	rsb	r0, r2, r0	@ tmp9259, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9246, tmp9245
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9253,
	movle	r8, #0	@, tmp9255
	movgt	r8, #1	@, tmp9255
	ldrb	r6, [r5, #2535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9246,
	addgt	r8, r8, #1	@,, MisCnt.2218, tmp9255
	cmp	r0, #0	@ tmp9259,
	ldrb	r1, [r5, #2536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp9266, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9260, tmp9259
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9260,
	addgt	r8, r8, #1	@,, MisCnt.2170, MisCnt.2218
	cmp	r6, #0	@ tmp9266,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9273, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9267, tmp9266
	ldrb	ip, [r5, #2537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9267,
	addgt	r8, r8, #1	@,, MisCnt.2138, MisCnt.2170
	cmp	r2, #0	@ tmp9273,
	ldrb	lr, [r5, #2538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9280, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9274, tmp9273
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9274,
	addgt	r8, r8, #1	@,, MisCnt.1548, MisCnt.2138
	cmp	ip, #0	@ tmp9280,
	ldrb	r0, [r5, #2539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9287, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9281, tmp9280
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9281,
	addgt	r8, r8, #1	@,, MisCnt.1498, MisCnt.1548
	cmp	r1, #0	@ tmp9287,
	rsb	r6, r2, r0	@ tmp9294, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9288, tmp9287
	cmp	r1, #2	@ tmp9288,
	addgt	r8, r8, #1	@,, MisCnt.1466, MisCnt.1498
	cmp	r6, #0	@ tmp9294,
	rsblt	r6, r6, #0	@ tmp9295, tmp9294
	cmp	r6, #2	@ tmp9295,
	addgt	r8, r8, #1	@,, tmp9298, MisCnt.1466
	cmp	r8, #2	@ tmp9298,
	bgt	.L50	@,
	ldr	r3, [r5, #2540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #2544]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #2553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r6, ip	@ tmp9316, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9316,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r8	@ tmp9309, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9317, tmp9316
	cmp	lr, #0	@ tmp9309,
	rsb	r0, r2, r0	@ tmp9323, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9310, tmp9309
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9317,
	movle	r8, #0	@, tmp9319
	movgt	r8, #1	@, tmp9319
	ldrb	r6, [r5, #2555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9310,
	addgt	r8, r8, #1	@,, MisCnt.1276, tmp9319
	cmp	r0, #0	@ tmp9323,
	ldrb	r1, [r5, #2556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp9330, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9324, tmp9323
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9324,
	addgt	r8, r8, #1	@,, MisCnt.1244, MisCnt.1276
	cmp	r6, #0	@ tmp9330,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9337, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9331, tmp9330
	ldrb	ip, [r5, #2557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9331,
	addgt	r8, r8, #1	@,, MisCnt.1195, MisCnt.1244
	cmp	r2, #0	@ tmp9337,
	ldrb	lr, [r5, #2558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9344, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9338, tmp9337
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9338,
	addgt	r8, r8, #1	@,, MisCnt.1154, MisCnt.1195
	cmp	ip, #0	@ tmp9344,
	ldrb	r0, [r5, #2559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9351, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9345, tmp9344
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9345,
	addgt	r8, r8, #1	@,, MisCnt.1122, MisCnt.1154
	cmp	r1, #0	@ tmp9351,
	rsb	r6, r2, r0	@ tmp9358, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9352, tmp9351
	cmp	r1, #2	@ tmp9352,
	addgt	r8, r8, #1	@,, MisCnt.2379, MisCnt.1122
	cmp	r6, #0	@ tmp9358,
	rsblt	r6, r6, #0	@ tmp9359, tmp9358
	cmp	r6, #2	@ tmp9359,
	addgt	r8, r8, #1	@,, tmp9362, MisCnt.2379
	cmp	r8, #2	@ tmp9362,
	bgt	.L50	@,
	ldr	r3, [r5, #2560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #2564]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r5, #2573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #2572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp9380, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9380,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, r8	@ tmp9373, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9381, tmp9380
	cmp	r6, #0	@ tmp9373,
	rsb	r0, r2, r0	@ tmp9387, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9374, tmp9373
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9381,
	movle	r3, #0	@, tmp9383
	movgt	r3, #1	@, tmp9383
	ldrb	r8, [r5, #2575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9374,
	addgt	r3, r3, #1	@,, MisCnt.1112, tmp9383
	cmp	r0, #0	@ tmp9387,
	ldrb	r1, [r5, #2576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9394, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9388, tmp9387
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9388,
	addgt	r3, r3, #1	@,, MisCnt.1121, MisCnt.1112
	cmp	r8, #0	@ tmp9394,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9401, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9395, tmp9394
	ldrb	ip, [r5, #2577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9395,
	addgt	r3, r3, #1	@,, MisCnt.1132, MisCnt.1121
	cmp	r2, #0	@ tmp9401,
	ldrb	r6, [r5, #2578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9408, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9402, tmp9401
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9402,
	addgt	r3, r3, #1	@,, MisCnt.1143, MisCnt.1132
	cmp	ip, #0	@ tmp9408,
	ldrb	r0, [r5, #2579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9409, tmp9408
	rsb	r1, r1, r6	@ tmp9415, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9409,
	addgt	r3, r3, #1	@,, MisCnt.1153, MisCnt.1143
	cmp	r1, #0	@ tmp9415,
	rsb	ip, r2, r0	@ tmp9422, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9416, tmp9415
	cmp	r1, #2	@ tmp9416,
	addgt	r3, r3, #1	@,, MisCnt.1163, MisCnt.1153
	cmp	ip, #0	@ tmp9422,
	rsblt	ip, ip, #0	@ tmp9423, tmp9422
	cmp	ip, #2	@ tmp9423,
	addgt	r3, r3, #1	@,, tmp9426, MisCnt.1163
	cmp	r3, #2	@ tmp9426,
	movle	r0, #23	@ Result,
	ble	.L21	@,
.L50:
	ldr	r3, [r5, #2620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #2624]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2628]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp9427,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp9427,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9444, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9444,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9437, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9445, tmp9444
	cmp	lr, #0	@ tmp9437,
	rsb	r0, r2, r0	@ tmp9451, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9438, tmp9437
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9445,
	movle	sl, #0	@, tmp9447
	movgt	sl, #1	@, tmp9447
	ldrb	r8, [r5, #2635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9438,
	addgt	sl, sl, #1	@,, MisCnt.1984, tmp9447
	cmp	r0, #0	@ tmp9451,
	ldrb	r1, [r5, #2636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9458, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9452, tmp9451
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9452,
	addgt	sl, sl, #1	@,, MisCnt.1944, MisCnt.1984
	cmp	r8, #0	@ tmp9458,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9465, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9459, tmp9458
	ldrb	ip, [r5, #2637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9459,
	addgt	sl, sl, #1	@,, MisCnt.1902, MisCnt.1944
	cmp	r2, #0	@ tmp9465,
	ldrb	lr, [r5, #2638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9472, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9466, tmp9465
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9466,
	addgt	sl, sl, #1	@,, MisCnt.1870, MisCnt.1902
	cmp	ip, #0	@ tmp9472,
	ldrb	r0, [r5, #2639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9479, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9473, tmp9472
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9473,
	addgt	sl, sl, #1	@,, MisCnt.1822, MisCnt.1870
	cmp	r1, #0	@ tmp9479,
	rsb	r8, r2, r0	@ tmp9486, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9480, tmp9479
	cmp	r1, #2	@ tmp9480,
	addgt	sl, sl, #1	@,, MisCnt.1790, MisCnt.1822
	cmp	r8, #0	@ tmp9486,
	rsblt	r8, r8, #0	@ tmp9487, tmp9486
	cmp	r8, #2	@ tmp9487,
	addgt	sl, sl, #1	@,, tmp9490, MisCnt.1790
	cmp	sl, #2	@ tmp9490,
	bgt	.L51	@,
	ldr	r3, [r6, #2640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2644]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2648]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9508, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9508,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9501, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9509, tmp9508
	cmp	lr, #0	@ tmp9501,
	rsb	r0, r2, r0	@ tmp9515, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9502, tmp9501
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9509,
	movle	sl, #0	@, tmp9511
	movgt	sl, #1	@, tmp9511
	ldrb	r8, [r6, #2655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9502,
	addgt	sl, sl, #1	@,, MisCnt.1599, tmp9511
	cmp	r0, #0	@ tmp9515,
	ldrb	r1, [r6, #2656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9522, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9516, tmp9515
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9516,
	addgt	sl, sl, #1	@,, MisCnt.3467, MisCnt.1599
	cmp	r8, #0	@ tmp9522,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9529, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9523, tmp9522
	ldrb	ip, [r6, #2657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9523,
	addgt	sl, sl, #1	@,, MisCnt.3427, MisCnt.3467
	cmp	r2, #0	@ tmp9529,
	ldrb	lr, [r6, #2658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9536, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9530, tmp9529
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9530,
	addgt	sl, sl, #1	@,, MisCnt.3385, MisCnt.3427
	cmp	ip, #0	@ tmp9536,
	ldrb	r0, [r6, #2659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9543, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9537, tmp9536
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9537,
	addgt	sl, sl, #1	@,, MisCnt.3353, MisCnt.3385
	cmp	r1, #0	@ tmp9543,
	rsb	r8, r2, r0	@ tmp9550, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9544, tmp9543
	cmp	r1, #2	@ tmp9544,
	addgt	sl, sl, #1	@,, MisCnt.3303, MisCnt.3353
	cmp	r8, #0	@ tmp9550,
	rsblt	r8, r8, #0	@ tmp9551, tmp9550
	cmp	r8, #2	@ tmp9551,
	addgt	sl, sl, #1	@,, tmp9554, MisCnt.3303
	cmp	sl, #2	@ tmp9554,
	bgt	.L51	@,
	ldr	r3, [r6, #2660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2664]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2668]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp9572, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9572,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp9565, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9573, tmp9572
	cmp	r8, #0	@ tmp9565,
	rsb	r0, r2, r0	@ tmp9579, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9566, tmp9565
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9573,
	movle	r3, #0	@, tmp9575
	movgt	r3, #1	@, tmp9575
	ldrb	sl, [r6, #2675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9566,
	addgt	r3, r3, #1	@,, MisCnt.1183, tmp9575
	cmp	r0, #0	@ tmp9579,
	ldrb	r1, [r6, #2676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9586, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9580, tmp9579
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9580,
	addgt	r3, r3, #1	@,, MisCnt.1194, MisCnt.1183
	cmp	sl, #0	@ tmp9586,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9593, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9587, tmp9586
	ldrb	ip, [r6, #2677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9587,
	addgt	r3, r3, #1	@,, MisCnt.1203, MisCnt.1194
	cmp	r2, #0	@ tmp9593,
	ldrb	r8, [r6, #2678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9600, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9594, tmp9593
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9594,
	addgt	r3, r3, #1	@,, MisCnt.1214, MisCnt.1203
	cmp	ip, #0	@ tmp9600,
	ldrb	r0, [r6, #2679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9601, tmp9600
	rsb	r1, r1, r8	@ tmp9607, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9601,
	addgt	r3, r3, #1	@,, MisCnt.1225, MisCnt.1214
	cmp	r1, #0	@ tmp9607,
	rsb	ip, r2, r0	@ tmp9614, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9608, tmp9607
	cmp	r1, #2	@ tmp9608,
	addgt	r3, r3, #1	@,, MisCnt.1234, MisCnt.1225
	cmp	ip, #0	@ tmp9614,
	rsblt	ip, ip, #0	@ tmp9615, tmp9614
	cmp	ip, #2	@ tmp9615,
	addgt	r3, r3, #1	@,, tmp9618, MisCnt.1234
	cmp	r3, #2	@ tmp9618,
	movle	r0, #4	@ Result,
	ble	.L21	@,
.L51:
	ldr	r3, [r5, #2680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #2684]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2688]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp9619,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp9619,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9636, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9636,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9629, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9637, tmp9636
	cmp	lr, #0	@ tmp9629,
	rsb	r0, r2, r0	@ tmp9643, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9630, tmp9629
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9637,
	movle	sl, #0	@, tmp9639
	movgt	sl, #1	@, tmp9639
	ldrb	r8, [r5, #2695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9630,
	addgt	sl, sl, #1	@,, MisCnt.3116, tmp9639
	cmp	r0, #0	@ tmp9643,
	ldrb	r1, [r5, #2696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9650, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9644, tmp9643
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9644,
	addgt	sl, sl, #1	@,, MisCnt.3066, MisCnt.3116
	cmp	r8, #0	@ tmp9650,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9657, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9651, tmp9650
	ldrb	ip, [r5, #2697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9651,
	addgt	sl, sl, #1	@,, MisCnt.3034, MisCnt.3066
	cmp	r2, #0	@ tmp9657,
	ldrb	lr, [r5, #2698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9664, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9658, tmp9657
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9658,
	addgt	sl, sl, #1	@,, MisCnt.2994, MisCnt.3034
	cmp	ip, #0	@ tmp9664,
	ldrb	r0, [r5, #2699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9665, tmp9664
	rsb	r1, r1, lr	@ tmp9671, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9665,
	addgt	sl, sl, #1	@,, MisCnt.2954, MisCnt.2994
	cmp	r1, #0	@ tmp9671,
	rsb	ip, r8, r0	@ tmp9678, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9672, tmp9671
	cmp	r1, #2	@ tmp9672,
	addgt	sl, sl, #1	@,, MisCnt.2915, MisCnt.2954
	cmp	ip, #0	@ tmp9678,
	rsblt	ip, ip, #0	@ tmp9679, tmp9678
	cmp	ip, #2	@ tmp9679,
	addgt	sl, sl, #1	@,, tmp9682, MisCnt.2915
	cmp	sl, #2	@ tmp9682,
	bgt	.L52	@,
	ldr	r3, [r6, #2700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2704]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2708]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9700, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9700,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9693, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9701, tmp9700
	cmp	lr, #0	@ tmp9693,
	rsb	r0, r2, r0	@ tmp9707, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9694, tmp9693
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9701,
	movle	sl, #0	@, tmp9703
	movgt	sl, #1	@, tmp9703
	ldrb	r8, [r6, #2715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9694,
	addgt	sl, sl, #1	@,, MisCnt.2731, tmp9703
	cmp	r0, #0	@ tmp9707,
	ldrb	r1, [r6, #2716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9714, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9708, tmp9707
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9708,
	addgt	sl, sl, #1	@,, MisCnt.2699, MisCnt.2731
	cmp	r8, #0	@ tmp9714,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9721, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9715, tmp9714
	ldrb	ip, [r6, #2717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9715,
	addgt	sl, sl, #1	@,, MisCnt.2650, MisCnt.2699
	cmp	r2, #0	@ tmp9721,
	ldrb	lr, [r6, #2718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9728, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9722, tmp9721
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9722,
	addgt	sl, sl, #1	@,, MisCnt.2618, MisCnt.2650
	cmp	ip, #0	@ tmp9728,
	ldrb	r0, [r6, #2719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9735, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9729, tmp9728
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9729,
	addgt	sl, sl, #1	@,, MisCnt.2579, MisCnt.2618
	cmp	r1, #0	@ tmp9735,
	rsb	r8, r2, r0	@ tmp9742, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9736, tmp9735
	cmp	r1, #2	@ tmp9736,
	addgt	sl, sl, #1	@,, MisCnt.2539, MisCnt.2579
	cmp	r8, #0	@ tmp9742,
	rsblt	r8, r8, #0	@ tmp9743, tmp9742
	cmp	r8, #2	@ tmp9743,
	addgt	sl, sl, #1	@,, tmp9746, MisCnt.2539
	cmp	sl, #2	@ tmp9746,
	bgt	.L52	@,
	ldr	r3, [r6, #2720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2724]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2728]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9764, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9764,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9757, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9765, tmp9764
	cmp	lr, #0	@ tmp9757,
	rsb	r0, r2, r0	@ tmp9771, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9758, tmp9757
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9765,
	movle	sl, #0	@, tmp9767
	movgt	sl, #1	@, tmp9767
	ldrb	r8, [r6, #2735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9758,
	addgt	sl, sl, #1	@,, MisCnt.1440, tmp9767
	cmp	r0, #0	@ tmp9771,
	ldrb	r1, [r6, #2736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9778, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9772, tmp9771
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9772,
	addgt	sl, sl, #1	@,, MisCnt.1235, MisCnt.1440
	cmp	r8, #0	@ tmp9778,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9785, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9779, tmp9778
	ldrb	ip, [r6, #2737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9779,
	addgt	sl, sl, #1	@,, MisCnt.2329, MisCnt.1235
	cmp	r2, #0	@ tmp9785,
	ldrb	lr, [r6, #2738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9792, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9786, tmp9785
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9786,
	addgt	sl, sl, #1	@,, MisCnt.1853, MisCnt.2329
	cmp	ip, #0	@ tmp9792,
	ldrb	r0, [r6, #2739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9799, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9793, tmp9792
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9793,
	addgt	sl, sl, #1	@,, MisCnt.1650, MisCnt.1853
	cmp	r1, #0	@ tmp9799,
	rsb	r8, r2, r0	@ tmp9806, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9800, tmp9799
	cmp	r1, #2	@ tmp9800,
	addgt	sl, sl, #1	@,, MisCnt.3343, MisCnt.1650
	cmp	r8, #0	@ tmp9806,
	rsblt	r8, r8, #0	@ tmp9807, tmp9806
	cmp	r8, #2	@ tmp9807,
	addgt	sl, sl, #1	@,, tmp9810, MisCnt.3343
	cmp	sl, #2	@ tmp9810,
	bgt	.L52	@,
	ldr	r3, [r6, #2740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2744]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2748]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9828, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9828,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9821, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9829, tmp9828
	cmp	lr, #0	@ tmp9821,
	rsb	r0, r2, r0	@ tmp9835, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9822, tmp9821
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9829,
	movle	sl, #0	@, tmp9831
	movgt	sl, #1	@, tmp9831
	ldrb	r8, [r6, #2755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9822,
	addgt	sl, sl, #1	@,, MisCnt.3496, tmp9831
	cmp	r0, #0	@ tmp9835,
	ldrb	r1, [r6, #2756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9842, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9836, tmp9835
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9836,
	addgt	sl, sl, #1	@,, MisCnt.3504, MisCnt.3496
	cmp	r8, #0	@ tmp9842,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9849, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9843, tmp9842
	ldrb	ip, [r6, #2757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9843,
	addgt	sl, sl, #1	@,, MisCnt.3512, MisCnt.3504
	cmp	r2, #0	@ tmp9849,
	ldrb	lr, [r6, #2758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9856, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9850, tmp9849
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9850,
	addgt	sl, sl, #1	@,, MisCnt.3520, MisCnt.3512
	cmp	ip, #0	@ tmp9856,
	ldrb	r0, [r6, #2759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9863, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9857, tmp9856
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9857,
	addgt	sl, sl, #1	@,, MisCnt.3528, MisCnt.3520
	cmp	r1, #0	@ tmp9863,
	rsb	r8, r2, r0	@ tmp9870, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9864, tmp9863
	cmp	r1, #2	@ tmp9864,
	addgt	sl, sl, #1	@,, MisCnt.3536, MisCnt.3528
	cmp	r8, #0	@ tmp9870,
	rsblt	r8, r8, #0	@ tmp9871, tmp9870
	cmp	r8, #2	@ tmp9871,
	addgt	sl, sl, #1	@,, tmp9874, MisCnt.3536
	cmp	sl, #2	@ tmp9874,
	bgt	.L52	@,
	ldr	r3, [r6, #2760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2764]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp9892, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9892,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp9885, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9893, tmp9892
	cmp	r8, #0	@ tmp9885,
	rsb	r0, r2, r0	@ tmp9899, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9886, tmp9885
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9893,
	movle	r3, #0	@, tmp9895
	movgt	r3, #1	@, tmp9895
	ldrb	sl, [r6, #2775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9886,
	addgt	r3, r3, #1	@,, MisCnt.1254, tmp9895
	cmp	r0, #0	@ tmp9899,
	ldrb	r1, [r6, #2776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9906, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9900, tmp9899
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9900,
	addgt	r3, r3, #1	@,, MisCnt.1265, MisCnt.1254
	cmp	sl, #0	@ tmp9906,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9913, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9907, tmp9906
	ldrb	ip, [r6, #2777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9907,
	addgt	r3, r3, #1	@,, MisCnt.1275, MisCnt.1265
	cmp	r2, #0	@ tmp9913,
	ldrb	r8, [r6, #2778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9920, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9914, tmp9913
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9914,
	addgt	r3, r3, #1	@,, MisCnt.1285, MisCnt.1275
	cmp	ip, #0	@ tmp9920,
	ldrb	r0, [r6, #2779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9921, tmp9920
	rsb	r1, r1, r8	@ tmp9927, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9921,
	addgt	r3, r3, #1	@,, MisCnt.1296, MisCnt.1285
	cmp	r1, #0	@ tmp9927,
	rsb	ip, r2, r0	@ tmp9934, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9928, tmp9927
	cmp	r1, #2	@ tmp9928,
	addgt	r3, r3, #1	@,, MisCnt.1307, MisCnt.1296
	cmp	ip, #0	@ tmp9934,
	rsblt	ip, ip, #0	@ tmp9935, tmp9934
	cmp	ip, #2	@ tmp9935,
	addgt	r3, r3, #1	@,, tmp9938, MisCnt.1307
	cmp	r3, #2	@ tmp9938,
	movle	r0, #31	@ Result,
	ble	.L21	@,
.L52:
	ldr	r3, [r5, #2780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #2784]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2788]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp9939,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp9939,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp9956, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9956,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9949, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9957, tmp9956
	cmp	lr, #0	@ tmp9949,
	rsb	r0, r2, r0	@ tmp9963, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9950, tmp9949
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9957,
	movle	sl, #0	@, tmp9959
	movgt	sl, #1	@, tmp9959
	ldrb	r8, [r5, #2795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9950,
	addgt	sl, sl, #1	@,, MisCnt.3562, tmp9959
	cmp	r0, #0	@ tmp9963,
	ldrb	r1, [r5, #2796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp9970, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9964, tmp9963
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9964,
	addgt	sl, sl, #1	@,, MisCnt.3570, MisCnt.3562
	cmp	r8, #0	@ tmp9970,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9977, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp9971, tmp9970
	ldrb	ip, [r5, #2797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp9971,
	addgt	sl, sl, #1	@,, MisCnt.3578, MisCnt.3570
	cmp	r2, #0	@ tmp9977,
	ldrb	lr, [r5, #2798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9984, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9978, tmp9977
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9978,
	addgt	sl, sl, #1	@,, MisCnt.3586, MisCnt.3578
	cmp	ip, #0	@ tmp9984,
	ldrb	r0, [r5, #2799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9985, tmp9984
	rsb	r1, r1, lr	@ tmp9991, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9985,
	addgt	sl, sl, #1	@,, MisCnt.3594, MisCnt.3586
	cmp	r1, #0	@ tmp9991,
	rsb	ip, r8, r0	@ tmp9998, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9992, tmp9991
	cmp	r1, #2	@ tmp9992,
	addgt	sl, sl, #1	@,, MisCnt.3602, MisCnt.3594
	cmp	ip, #0	@ tmp9998,
	rsblt	ip, ip, #0	@ tmp9999, tmp9998
	cmp	ip, #2	@ tmp9999,
	addgt	sl, sl, #1	@,, tmp10002, MisCnt.3602
	cmp	sl, #2	@ tmp10002,
	bgt	.L53	@,
	ldr	r3, [r6, #2800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2804]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2808]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10020, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10020,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10013, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10021, tmp10020
	cmp	lr, #0	@ tmp10013,
	rsb	r0, r2, r0	@ tmp10027, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10014, tmp10013
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10021,
	movle	sl, #0	@, tmp10023
	movgt	sl, #1	@, tmp10023
	ldrb	r8, [r6, #2815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10014,
	addgt	sl, sl, #1	@,, MisCnt.3628, tmp10023
	cmp	r0, #0	@ tmp10027,
	ldrb	r1, [r6, #2816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10034, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10028, tmp10027
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10028,
	addgt	sl, sl, #1	@,, MisCnt.3636, MisCnt.3628
	cmp	r8, #0	@ tmp10034,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10041, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10035, tmp10034
	ldrb	ip, [r6, #2817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10035,
	addgt	sl, sl, #1	@,, MisCnt.3644, MisCnt.3636
	cmp	r2, #0	@ tmp10041,
	ldrb	lr, [r6, #2818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10048, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10042, tmp10041
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10042,
	addgt	sl, sl, #1	@,, MisCnt.3652, MisCnt.3644
	cmp	ip, #0	@ tmp10048,
	ldrb	r0, [r6, #2819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10055, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10049, tmp10048
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10049,
	addgt	sl, sl, #1	@,, MisCnt.3660, MisCnt.3652
	cmp	r1, #0	@ tmp10055,
	rsb	r8, r2, r0	@ tmp10062, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10056, tmp10055
	cmp	r1, #2	@ tmp10056,
	addgt	sl, sl, #1	@,, MisCnt.3668, MisCnt.3660
	cmp	r8, #0	@ tmp10062,
	rsblt	r8, r8, #0	@ tmp10063, tmp10062
	cmp	r8, #2	@ tmp10063,
	addgt	sl, sl, #1	@,, tmp10066, MisCnt.3668
	cmp	sl, #2	@ tmp10066,
	bgt	.L53	@,
	ldr	r3, [r6, #2820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2824]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2828]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10084, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10084,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10077, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10085, tmp10084
	cmp	lr, #0	@ tmp10077,
	rsb	r0, r2, r0	@ tmp10091, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10078, tmp10077
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10085,
	movle	sl, #0	@, tmp10087
	movgt	sl, #1	@, tmp10087
	ldrb	r8, [r6, #2835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10078,
	addgt	sl, sl, #1	@,, MisCnt.3694, tmp10087
	cmp	r0, #0	@ tmp10091,
	ldrb	r1, [r6, #2836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10098, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10092, tmp10091
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10092,
	addgt	sl, sl, #1	@,, MisCnt.3702, MisCnt.3694
	cmp	r8, #0	@ tmp10098,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10105, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10099, tmp10098
	ldrb	ip, [r6, #2837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10099,
	addgt	sl, sl, #1	@,, MisCnt.3710, MisCnt.3702
	cmp	r2, #0	@ tmp10105,
	ldrb	lr, [r6, #2838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10112, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10106, tmp10105
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10106,
	addgt	sl, sl, #1	@,, MisCnt.3718, MisCnt.3710
	cmp	ip, #0	@ tmp10112,
	ldrb	r0, [r6, #2839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10119, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10113, tmp10112
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10113,
	addgt	sl, sl, #1	@,, MisCnt.3726, MisCnt.3718
	cmp	r1, #0	@ tmp10119,
	rsb	r8, r2, r0	@ tmp10126, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10120, tmp10119
	cmp	r1, #2	@ tmp10120,
	addgt	sl, sl, #1	@,, MisCnt.3734, MisCnt.3726
	cmp	r8, #0	@ tmp10126,
	rsblt	r8, r8, #0	@ tmp10127, tmp10126
	cmp	r8, #2	@ tmp10127,
	addgt	sl, sl, #1	@,, tmp10130, MisCnt.3734
	cmp	sl, #2	@ tmp10130,
	bgt	.L53	@,
	ldr	r3, [r6, #2840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2844]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2848]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10148, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10148,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10141, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10149, tmp10148
	cmp	lr, #0	@ tmp10141,
	rsb	r0, r2, r0	@ tmp10155, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10142, tmp10141
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10149,
	movle	sl, #0	@, tmp10151
	movgt	sl, #1	@, tmp10151
	ldrb	r8, [r6, #2855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10142,
	addgt	sl, sl, #1	@,, MisCnt.3760, tmp10151
	cmp	r0, #0	@ tmp10155,
	ldrb	r1, [r6, #2856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10162, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10156, tmp10155
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10156,
	addgt	sl, sl, #1	@,, MisCnt.3768, MisCnt.3760
	cmp	r8, #0	@ tmp10162,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10169, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10163, tmp10162
	ldrb	ip, [r6, #2857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10163,
	addgt	sl, sl, #1	@,, MisCnt.3776, MisCnt.3768
	cmp	r2, #0	@ tmp10169,
	ldrb	lr, [r6, #2858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10176, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10170, tmp10169
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10170,
	addgt	sl, sl, #1	@,, MisCnt.3784, MisCnt.3776
	cmp	ip, #0	@ tmp10176,
	ldrb	r0, [r6, #2859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10183, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10177, tmp10176
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10177,
	addgt	sl, sl, #1	@,, MisCnt.3792, MisCnt.3784
	cmp	r1, #0	@ tmp10183,
	rsb	r8, r2, r0	@ tmp10190, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10184, tmp10183
	cmp	r1, #2	@ tmp10184,
	addgt	sl, sl, #1	@,, MisCnt.3800, MisCnt.3792
	cmp	r8, #0	@ tmp10190,
	rsblt	r8, r8, #0	@ tmp10191, tmp10190
	cmp	r8, #2	@ tmp10191,
	addgt	sl, sl, #1	@,, tmp10194, MisCnt.3800
	cmp	sl, #2	@ tmp10194,
	bgt	.L53	@,
	ldr	r3, [r6, #2860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2864]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10212, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10212,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10205, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10213, tmp10212
	cmp	r8, #0	@ tmp10205,
	rsb	r0, r2, r0	@ tmp10219, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10206, tmp10205
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10213,
	movle	r3, #0	@, tmp10215
	movgt	r3, #1	@, tmp10215
	ldrb	sl, [r6, #2875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10206,
	addgt	r3, r3, #1	@,, MisCnt.1325, tmp10215
	cmp	r0, #0	@ tmp10219,
	ldrb	r1, [r6, #2876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10226, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10220, tmp10219
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10220,
	addgt	r3, r3, #1	@,, MisCnt.1336, MisCnt.1325
	cmp	sl, #0	@ tmp10226,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10233, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10227, tmp10226
	ldrb	ip, [r6, #2877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10227,
	addgt	r3, r3, #1	@,, MisCnt.1347, MisCnt.1336
	cmp	r2, #0	@ tmp10233,
	ldrb	r8, [r6, #2878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10240, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10234, tmp10233
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10234,
	addgt	r3, r3, #1	@,, MisCnt.1356, MisCnt.1347
	cmp	ip, #0	@ tmp10240,
	ldrb	r0, [r6, #2879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10241, tmp10240
	rsb	r1, r1, r8	@ tmp10247, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10241,
	addgt	r3, r3, #1	@,, MisCnt.1365, MisCnt.1356
	cmp	r1, #0	@ tmp10247,
	rsb	ip, r2, r0	@ tmp10254, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10248, tmp10247
	cmp	r1, #2	@ tmp10248,
	addgt	r3, r3, #1	@,, MisCnt.1375, MisCnt.1365
	cmp	ip, #0	@ tmp10254,
	rsblt	ip, ip, #0	@ tmp10255, tmp10254
	cmp	ip, #2	@ tmp10255,
	addgt	r3, r3, #1	@,, tmp10258, MisCnt.1375
	cmp	r3, #2	@ tmp10258,
	movle	r0, #32	@ Result,
	ble	.L21	@,
.L53:
	ldr	r3, [r5, #2880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #2884]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2888]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp10259,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp10259,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10276, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10276,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10269, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10277, tmp10276
	cmp	lr, #0	@ tmp10269,
	rsb	r0, r2, r0	@ tmp10283, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10270, tmp10269
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10277,
	movle	sl, #0	@, tmp10279
	movgt	sl, #1	@, tmp10279
	ldrb	r8, [r5, #2895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10270,
	addgt	sl, sl, #1	@,, MisCnt.3826, tmp10279
	cmp	r0, #0	@ tmp10283,
	ldrb	r1, [r5, #2896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10290, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10284, tmp10283
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10284,
	addgt	sl, sl, #1	@,, MisCnt.3834, MisCnt.3826
	cmp	r8, #0	@ tmp10290,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10297, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10291, tmp10290
	ldrb	ip, [r5, #2897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10291,
	addgt	sl, sl, #1	@,, MisCnt.3842, MisCnt.3834
	cmp	r2, #0	@ tmp10297,
	ldrb	lr, [r5, #2898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10304, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10298, tmp10297
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10298,
	addgt	sl, sl, #1	@,, MisCnt.3850, MisCnt.3842
	cmp	ip, #0	@ tmp10304,
	ldrb	r0, [r5, #2899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10305, tmp10304
	rsb	r1, r1, lr	@ tmp10311, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10305,
	addgt	sl, sl, #1	@,, MisCnt.3858, MisCnt.3850
	cmp	r1, #0	@ tmp10311,
	rsb	ip, r8, r0	@ tmp10318, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10312, tmp10311
	cmp	r1, #2	@ tmp10312,
	addgt	sl, sl, #1	@,, MisCnt.3866, MisCnt.3858
	cmp	ip, #0	@ tmp10318,
	rsblt	ip, ip, #0	@ tmp10319, tmp10318
	cmp	ip, #2	@ tmp10319,
	addgt	sl, sl, #1	@,, tmp10322, MisCnt.3866
	cmp	sl, #2	@ tmp10322,
	bgt	.L54	@,
	ldr	r3, [r6, #2900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2904]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2908]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10340, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10340,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10333, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10341, tmp10340
	cmp	lr, #0	@ tmp10333,
	rsb	r0, r2, r0	@ tmp10347, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10334, tmp10333
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10341,
	movle	sl, #0	@, tmp10343
	movgt	sl, #1	@, tmp10343
	ldrb	r8, [r6, #2915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10334,
	addgt	sl, sl, #1	@,, MisCnt.3892, tmp10343
	cmp	r0, #0	@ tmp10347,
	ldrb	r1, [r6, #2916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10354, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10348, tmp10347
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10348,
	addgt	sl, sl, #1	@,, MisCnt.3900, MisCnt.3892
	cmp	r8, #0	@ tmp10354,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10361, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10355, tmp10354
	ldrb	ip, [r6, #2917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10355,
	addgt	sl, sl, #1	@,, MisCnt.3908, MisCnt.3900
	cmp	r2, #0	@ tmp10361,
	ldrb	lr, [r6, #2918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10368, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10362, tmp10361
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10362,
	addgt	sl, sl, #1	@,, MisCnt.3916, MisCnt.3908
	cmp	ip, #0	@ tmp10368,
	ldrb	r0, [r6, #2919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10375, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10369, tmp10368
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10369,
	addgt	sl, sl, #1	@,, MisCnt.3924, MisCnt.3916
	cmp	r1, #0	@ tmp10375,
	rsb	r8, r2, r0	@ tmp10382, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10376, tmp10375
	cmp	r1, #2	@ tmp10376,
	addgt	sl, sl, #1	@,, MisCnt.3932, MisCnt.3924
	cmp	r8, #0	@ tmp10382,
	rsblt	r8, r8, #0	@ tmp10383, tmp10382
	cmp	r8, #2	@ tmp10383,
	addgt	sl, sl, #1	@,, tmp10386, MisCnt.3932
	cmp	sl, #2	@ tmp10386,
	bgt	.L54	@,
	ldr	r3, [r6, #2920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2924]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2928]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10404, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10404,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10397, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10405, tmp10404
	cmp	lr, #0	@ tmp10397,
	rsb	r0, r2, r0	@ tmp10411, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10398, tmp10397
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10405,
	movle	sl, #0	@, tmp10407
	movgt	sl, #1	@, tmp10407
	ldrb	r8, [r6, #2935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10398,
	addgt	sl, sl, #1	@,, MisCnt.3958, tmp10407
	cmp	r0, #0	@ tmp10411,
	ldrb	r1, [r6, #2936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10418, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10412, tmp10411
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10412,
	addgt	sl, sl, #1	@,, MisCnt.3966, MisCnt.3958
	cmp	r8, #0	@ tmp10418,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10425, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10419, tmp10418
	ldrb	ip, [r6, #2937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10419,
	addgt	sl, sl, #1	@,, MisCnt.3974, MisCnt.3966
	cmp	r2, #0	@ tmp10425,
	ldrb	lr, [r6, #2938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10432, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10426, tmp10425
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10426,
	addgt	sl, sl, #1	@,, MisCnt.3982, MisCnt.3974
	cmp	ip, #0	@ tmp10432,
	ldrb	r0, [r6, #2939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10439, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10433, tmp10432
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10433,
	addgt	sl, sl, #1	@,, MisCnt.3990, MisCnt.3982
	cmp	r1, #0	@ tmp10439,
	rsb	r8, r2, r0	@ tmp10446, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10440, tmp10439
	cmp	r1, #2	@ tmp10440,
	addgt	sl, sl, #1	@,, MisCnt.3998, MisCnt.3990
	cmp	r8, #0	@ tmp10446,
	rsblt	r8, r8, #0	@ tmp10447, tmp10446
	cmp	r8, #2	@ tmp10447,
	addgt	sl, sl, #1	@,, tmp10450, MisCnt.3998
	cmp	sl, #2	@ tmp10450,
	bgt	.L54	@,
	ldr	r3, [r6, #2940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2944]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2948]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10468, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10468,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10461, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10469, tmp10468
	cmp	lr, #0	@ tmp10461,
	rsb	r0, r2, r0	@ tmp10475, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10462, tmp10461
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10469,
	movle	sl, #0	@, tmp10471
	movgt	sl, #1	@, tmp10471
	ldrb	r8, [r6, #2955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10462,
	addgt	sl, sl, #1	@,, MisCnt.4024, tmp10471
	cmp	r0, #0	@ tmp10475,
	ldrb	r1, [r6, #2956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10482, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10476, tmp10475
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10476,
	addgt	sl, sl, #1	@,, MisCnt.4032, MisCnt.4024
	cmp	r8, #0	@ tmp10482,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10489, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10483, tmp10482
	ldrb	ip, [r6, #2957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10483,
	addgt	sl, sl, #1	@,, MisCnt.4040, MisCnt.4032
	cmp	r2, #0	@ tmp10489,
	ldrb	lr, [r6, #2958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10496, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10490, tmp10489
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10490,
	addgt	sl, sl, #1	@,, MisCnt.4048, MisCnt.4040
	cmp	ip, #0	@ tmp10496,
	ldrb	r0, [r6, #2959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10503, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10497, tmp10496
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10497,
	addgt	sl, sl, #1	@,, MisCnt.4056, MisCnt.4048
	cmp	r1, #0	@ tmp10503,
	rsb	r8, r2, r0	@ tmp10510, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10504, tmp10503
	cmp	r1, #2	@ tmp10504,
	addgt	sl, sl, #1	@,, MisCnt.4064, MisCnt.4056
	cmp	r8, #0	@ tmp10510,
	rsblt	r8, r8, #0	@ tmp10511, tmp10510
	cmp	r8, #2	@ tmp10511,
	addgt	sl, sl, #1	@,, tmp10514, MisCnt.4064
	cmp	sl, #2	@ tmp10514,
	bgt	.L54	@,
	ldr	r3, [r6, #2960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #2964]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2968]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10532, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10532,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10525, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10533, tmp10532
	cmp	r8, #0	@ tmp10525,
	rsb	r0, r2, r0	@ tmp10539, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10526, tmp10525
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10533,
	movle	r3, #0	@, tmp10535
	movgt	r3, #1	@, tmp10535
	ldrb	sl, [r6, #2975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10526,
	addgt	r3, r3, #1	@,, MisCnt.1393, tmp10535
	cmp	r0, #0	@ tmp10539,
	ldrb	r1, [r6, #2976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10546, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10540, tmp10539
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10540,
	addgt	r3, r3, #1	@,, MisCnt.1401, MisCnt.1393
	cmp	sl, #0	@ tmp10546,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10553, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10547, tmp10546
	ldrb	ip, [r6, #2977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10547,
	addgt	r3, r3, #1	@,, MisCnt.1409, MisCnt.1401
	cmp	r2, #0	@ tmp10553,
	ldrb	r8, [r6, #2978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10560, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10554, tmp10553
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10554,
	addgt	r3, r3, #1	@,, MisCnt.1417, MisCnt.1409
	cmp	ip, #0	@ tmp10560,
	ldrb	r0, [r6, #2979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10561, tmp10560
	rsb	r1, r1, r8	@ tmp10567, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10561,
	addgt	r3, r3, #1	@,, MisCnt.1428, MisCnt.1417
	cmp	r1, #0	@ tmp10567,
	rsb	ip, r2, r0	@ tmp10574, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10568, tmp10567
	cmp	r1, #2	@ tmp10568,
	addgt	r3, r3, #1	@,, MisCnt.1439, MisCnt.1428
	cmp	ip, #0	@ tmp10574,
	rsblt	ip, ip, #0	@ tmp10575, tmp10574
	cmp	ip, #2	@ tmp10575,
	addgt	r3, r3, #1	@,, tmp10578, MisCnt.1439
	cmp	r3, #2	@ tmp10578,
	movle	r0, #33	@ Result,
	ble	.L21	@,
.L54:
	ldr	r3, [r5, #2980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #2984]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2988]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp10579,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp10579,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10596, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10596,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10589, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10597, tmp10596
	cmp	lr, #0	@ tmp10589,
	rsb	r0, r2, r0	@ tmp10603, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10590, tmp10589
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10597,
	movle	sl, #0	@, tmp10599
	movgt	sl, #1	@, tmp10599
	ldrb	r8, [r5, #2995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10590,
	addgt	sl, sl, #1	@,, MisCnt.4090, tmp10599
	cmp	r0, #0	@ tmp10603,
	ldrb	r1, [r5, #2996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10610, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10604, tmp10603
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10604,
	addgt	sl, sl, #1	@,, MisCnt.4098, MisCnt.4090
	cmp	r8, #0	@ tmp10610,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10617, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10611, tmp10610
	ldrb	ip, [r5, #2997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10611,
	addgt	sl, sl, #1	@,, MisCnt.4106, MisCnt.4098
	cmp	r2, #0	@ tmp10617,
	ldrb	lr, [r5, #2998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10624, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10618, tmp10617
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10618,
	addgt	sl, sl, #1	@,, MisCnt.4114, MisCnt.4106
	cmp	ip, #0	@ tmp10624,
	ldrb	r0, [r5, #2999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10625, tmp10624
	rsb	r1, r1, lr	@ tmp10631, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10625,
	addgt	sl, sl, #1	@,, MisCnt.4122, MisCnt.4114
	cmp	r1, #0	@ tmp10631,
	rsb	ip, r8, r0	@ tmp10638, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10632, tmp10631
	cmp	r1, #2	@ tmp10632,
	addgt	sl, sl, #1	@,, MisCnt.4130, MisCnt.4122
	cmp	ip, #0	@ tmp10638,
	rsblt	ip, ip, #0	@ tmp10639, tmp10638
	cmp	ip, #2	@ tmp10639,
	addgt	sl, sl, #1	@,, tmp10642, MisCnt.4130
	cmp	sl, #2	@ tmp10642,
	bgt	.L55	@,
	ldr	r3, [r6, #3000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #3004]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3008]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #3013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10660, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10660,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10653, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10661, tmp10660
	cmp	lr, #0	@ tmp10653,
	rsb	r0, r2, r0	@ tmp10667, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10654, tmp10653
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10661,
	movle	sl, #0	@, tmp10663
	movgt	sl, #1	@, tmp10663
	ldrb	r8, [r6, #3015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10654,
	addgt	sl, sl, #1	@,, MisCnt.4156, tmp10663
	cmp	r0, #0	@ tmp10667,
	ldrb	r1, [r6, #3016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10674, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10668, tmp10667
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10668,
	addgt	sl, sl, #1	@,, MisCnt.4164, MisCnt.4156
	cmp	r8, #0	@ tmp10674,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10681, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10675, tmp10674
	ldrb	ip, [r6, #3017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10675,
	addgt	sl, sl, #1	@,, MisCnt.4172, MisCnt.4164
	cmp	r2, #0	@ tmp10681,
	ldrb	lr, [r6, #3018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10688, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10682, tmp10681
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10682,
	addgt	sl, sl, #1	@,, MisCnt.4180, MisCnt.4172
	cmp	ip, #0	@ tmp10688,
	ldrb	r0, [r6, #3019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10695, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10689, tmp10688
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10689,
	addgt	sl, sl, #1	@,, MisCnt.4188, MisCnt.4180
	cmp	r1, #0	@ tmp10695,
	rsb	r8, r2, r0	@ tmp10702, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10696, tmp10695
	cmp	r1, #2	@ tmp10696,
	addgt	sl, sl, #1	@,, MisCnt.4196, MisCnt.4188
	cmp	r8, #0	@ tmp10702,
	rsblt	r8, r8, #0	@ tmp10703, tmp10702
	cmp	r8, #2	@ tmp10703,
	addgt	sl, sl, #1	@,, tmp10706, MisCnt.4196
	cmp	sl, #2	@ tmp10706,
	bgt	.L55	@,
	ldr	r3, [r6, #3020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #3024]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3028]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #3033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10724, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10724,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10717, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10725, tmp10724
	cmp	lr, #0	@ tmp10717,
	rsb	r0, r2, r0	@ tmp10731, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10718, tmp10717
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10725,
	movle	sl, #0	@, tmp10727
	movgt	sl, #1	@, tmp10727
	ldrb	r8, [r6, #3035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10718,
	addgt	sl, sl, #1	@,, MisCnt.4222, tmp10727
	cmp	r0, #0	@ tmp10731,
	ldrb	r1, [r6, #3036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10738, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10732, tmp10731
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10732,
	addgt	sl, sl, #1	@,, MisCnt.4230, MisCnt.4222
	cmp	r8, #0	@ tmp10738,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10745, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10739, tmp10738
	ldrb	ip, [r6, #3037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10739,
	addgt	sl, sl, #1	@,, MisCnt.4238, MisCnt.4230
	cmp	r2, #0	@ tmp10745,
	ldrb	lr, [r6, #3038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10752, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10746, tmp10745
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10746,
	addgt	sl, sl, #1	@,, MisCnt.4246, MisCnt.4238
	cmp	ip, #0	@ tmp10752,
	ldrb	r0, [r6, #3039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10759, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10753, tmp10752
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10753,
	addgt	sl, sl, #1	@,, MisCnt.4254, MisCnt.4246
	cmp	r1, #0	@ tmp10759,
	rsb	r8, r2, r0	@ tmp10766, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10760, tmp10759
	cmp	r1, #2	@ tmp10760,
	addgt	sl, sl, #1	@,, MisCnt.4262, MisCnt.4254
	cmp	r8, #0	@ tmp10766,
	rsblt	r8, r8, #0	@ tmp10767, tmp10766
	cmp	r8, #2	@ tmp10767,
	addgt	sl, sl, #1	@,, tmp10770, MisCnt.4262
	cmp	sl, #2	@ tmp10770,
	bgt	.L55	@,
	ldr	r3, [r6, #3040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #3044]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3048]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #3053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp10788, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10788,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp10781, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10789, tmp10788
	cmp	lr, #0	@ tmp10781,
	rsb	r0, r2, r0	@ tmp10795, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10782, tmp10781
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10789,
	movle	sl, #0	@, tmp10791
	movgt	sl, #1	@, tmp10791
	ldrb	r8, [r6, #3055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10782,
	addgt	sl, sl, #1	@,, MisCnt.4288, tmp10791
	cmp	r0, #0	@ tmp10795,
	ldrb	r1, [r6, #3056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10802, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10796, tmp10795
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10796,
	addgt	sl, sl, #1	@,, MisCnt.4296, MisCnt.4288
	cmp	r8, #0	@ tmp10802,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10809, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10803, tmp10802
	ldrb	ip, [r6, #3057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10803,
	addgt	sl, sl, #1	@,, MisCnt.4304, MisCnt.4296
	cmp	r2, #0	@ tmp10809,
	ldrb	lr, [r6, #3058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10816, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10810, tmp10809
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10810,
	addgt	sl, sl, #1	@,, MisCnt.4312, MisCnt.4304
	cmp	ip, #0	@ tmp10816,
	ldrb	r0, [r6, #3059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10823, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10817, tmp10816
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10817,
	addgt	sl, sl, #1	@,, MisCnt.4320, MisCnt.4312
	cmp	r1, #0	@ tmp10823,
	rsb	r8, r2, r0	@ tmp10830, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10824, tmp10823
	cmp	r1, #2	@ tmp10824,
	addgt	sl, sl, #1	@,, MisCnt.4328, MisCnt.4320
	cmp	r8, #0	@ tmp10830,
	rsblt	r8, r8, #0	@ tmp10831, tmp10830
	cmp	r8, #2	@ tmp10831,
	addgt	sl, sl, #1	@,, tmp10834, MisCnt.4328
	cmp	sl, #2	@ tmp10834,
	bgt	.L55	@,
	ldr	r3, [r6, #3060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #3064]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3068]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #3073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10852, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10852,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10845, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10853, tmp10852
	cmp	r8, #0	@ tmp10845,
	rsb	r0, r2, r0	@ tmp10859, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10846, tmp10845
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10853,
	movle	r3, #0	@, tmp10855
	movgt	r3, #1	@, tmp10855
	ldrb	sl, [r6, #3075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10846,
	addgt	r3, r3, #1	@,, MisCnt.1457, tmp10855
	cmp	r0, #0	@ tmp10859,
	ldrb	r1, [r6, #3076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10866, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10860, tmp10859
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10860,
	addgt	r3, r3, #1	@,, MisCnt.1465, MisCnt.1457
	cmp	sl, #0	@ tmp10866,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10873, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10867, tmp10866
	ldrb	ip, [r6, #3077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10867,
	addgt	r3, r3, #1	@,, MisCnt.1475, MisCnt.1465
	cmp	r2, #0	@ tmp10873,
	ldrb	r8, [r6, #3078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10880, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10874, tmp10873
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10874,
	addgt	r3, r3, #1	@,, MisCnt.1486, MisCnt.1475
	cmp	ip, #0	@ tmp10880,
	ldrb	r0, [r6, #3079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10881, tmp10880
	rsb	r1, r1, r8	@ tmp10887, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10881,
	addgt	r3, r3, #1	@,, MisCnt.1497, MisCnt.1486
	cmp	r1, #0	@ tmp10887,
	rsb	ip, r2, r0	@ tmp10894, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10888, tmp10887
	cmp	r1, #2	@ tmp10888,
	addgt	r3, r3, #1	@,, MisCnt.1506, MisCnt.1497
	cmp	ip, #0	@ tmp10894,
	rsblt	ip, ip, #0	@ tmp10895, tmp10894
	cmp	ip, #2	@ tmp10895,
	addgt	r3, r3, #1	@,, tmp10898, MisCnt.1506
	cmp	r3, #2	@ tmp10898,
	movle	r0, #34	@ Result,
	ble	.L21	@,
.L55:
	ldr	r3, [r5, #3080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r5, #3084]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #3088]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp10899,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp10899,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #3093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #3092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp10916, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10916,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp10909, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #3094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10917, tmp10916
	cmp	r8, #0	@ tmp10909,
	rsb	r0, r2, r0	@ tmp10923, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10910, tmp10909
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10917,
	movle	r3, #0	@, tmp10919
	movgt	r3, #1	@, tmp10919
	ldrb	sl, [r5, #3095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10910,
	addgt	r3, r3, #1	@,, MisCnt.4354, tmp10919
	cmp	r0, #0	@ tmp10923,
	ldrb	r1, [r5, #3096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10930, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10924, tmp10923
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10924,
	addgt	r3, r3, #1	@,, MisCnt.4362, MisCnt.4354
	cmp	sl, #0	@ tmp10930,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10937, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10931, tmp10930
	ldrb	ip, [r5, #3097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10931,
	addgt	r3, r3, #1	@,, MisCnt.4370, MisCnt.4362
	cmp	r2, #0	@ tmp10937,
	ldrb	r8, [r5, #3098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10944, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10938, tmp10937
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10938,
	addgt	r3, r3, #1	@,, MisCnt.4378, MisCnt.4370
	cmp	ip, #0	@ tmp10944,
	ldrb	r0, [r5, #3099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10945, tmp10944
	rsb	r1, r1, r8	@ tmp10951, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10945,
	addgt	r3, r3, #1	@,, MisCnt.4386, MisCnt.4378
	cmp	r1, #0	@ tmp10951,
	rsb	ip, r2, r0	@ tmp10958, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10952, tmp10951
	cmp	r1, #2	@ tmp10952,
	addgt	r3, r3, #1	@,, MisCnt.4394, MisCnt.4386
	cmp	ip, #0	@ tmp10958,
	rsblt	ip, ip, #0	@ tmp10959, tmp10958
	cmp	ip, #2	@ tmp10959,
	addgt	r3, r3, #1	@,, tmp10962, MisCnt.4394
	cmp	r3, #2	@ tmp10962,
	bgt	.L36	@,
	ldr	r3, [r6, #3100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #3104]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3108]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #3113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp10980, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10980,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp10973, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10981, tmp10980
	cmp	r5, #0	@ tmp10973,
	rsb	r0, r2, r0	@ tmp10987, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp10974, tmp10973
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10981,
	movle	r3, #0	@, tmp10983
	movgt	r3, #1	@, tmp10983
	ldrb	r8, [r6, #3115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp10974,
	addgt	r3, r3, #1	@,, MisCnt.4420, tmp10983
	cmp	r0, #0	@ tmp10987,
	ldrb	r1, [r6, #3116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp10994, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10988, tmp10987
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10988,
	addgt	r3, r3, #1	@,, MisCnt.4428, MisCnt.4420
	cmp	r8, #0	@ tmp10994,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11001, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp10995, tmp10994
	ldrb	ip, [r6, #3117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp10995,
	addgt	r3, r3, #1	@,, MisCnt.4436, MisCnt.4428
	cmp	r2, #0	@ tmp11001,
	ldrb	r5, [r6, #3118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11008, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11002, tmp11001
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11002,
	addgt	r3, r3, #1	@,, MisCnt.4444, MisCnt.4436
	cmp	ip, #0	@ tmp11008,
	ldrb	r0, [r6, #3119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11009, tmp11008
	rsb	r1, r1, r5	@ tmp11015, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11009,
	addgt	r3, r3, #1	@,, MisCnt.4452, MisCnt.4444
	cmp	r1, #0	@ tmp11015,
	rsb	ip, r2, r0	@ tmp11022, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11016, tmp11015
	cmp	r1, #2	@ tmp11016,
	addgt	r3, r3, #1	@,, MisCnt.4460, MisCnt.4452
	cmp	ip, #0	@ tmp11022,
	rsblt	ip, ip, #0	@ tmp11023, tmp11022
	cmp	ip, #2	@ tmp11023,
	addgt	r3, r3, #1	@,, tmp11026, MisCnt.4460
	cmp	r3, #2	@ tmp11026,
	bgt	.L36	@,
	ldr	r3, [r6, #3120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #3124]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3128]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #3133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp11044, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11044,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp11037, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11045, tmp11044
	cmp	r5, #0	@ tmp11037,
	rsb	r0, r2, r0	@ tmp11051, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11038, tmp11037
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11045,
	movle	r3, #0	@, tmp11047
	movgt	r3, #1	@, tmp11047
	ldrb	r8, [r6, #3135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11038,
	addgt	r3, r3, #1	@,, MisCnt.4486, tmp11047
	cmp	r0, #0	@ tmp11051,
	ldrb	r1, [r6, #3136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11058, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11052, tmp11051
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11052,
	addgt	r3, r3, #1	@,, MisCnt.4494, MisCnt.4486
	cmp	r8, #0	@ tmp11058,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11065, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11059, tmp11058
	ldrb	ip, [r6, #3137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11059,
	addgt	r3, r3, #1	@,, MisCnt.4502, MisCnt.4494
	cmp	r2, #0	@ tmp11065,
	ldrb	r5, [r6, #3138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11072, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11066, tmp11065
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11066,
	addgt	r3, r3, #1	@,, MisCnt.4510, MisCnt.4502
	cmp	ip, #0	@ tmp11072,
	ldrb	r0, [r6, #3139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11073, tmp11072
	rsb	r1, r1, r5	@ tmp11079, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11073,
	addgt	r3, r3, #1	@,, MisCnt.4518, MisCnt.4510
	cmp	r1, #0	@ tmp11079,
	rsb	ip, r2, r0	@ tmp11086, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11080, tmp11079
	cmp	r1, #2	@ tmp11080,
	addgt	r3, r3, #1	@,, MisCnt.4526, MisCnt.4518
	cmp	ip, #0	@ tmp11086,
	rsblt	ip, ip, #0	@ tmp11087, tmp11086
	cmp	ip, #2	@ tmp11087,
	addgt	r3, r3, #1	@,, tmp11090, MisCnt.4526
	cmp	r3, #2	@ tmp11090,
	bgt	.L36	@,
	ldr	r3, [r6, #3140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12188
	ldr	r2, [r6, #3144]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #3148]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #3153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #3152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp11108, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11108,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp11101, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11109, tmp11108
	cmp	r5, #0	@ tmp11101,
	rsb	r0, r2, r0	@ tmp11115, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11102, tmp11101
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11109,
	movle	r3, #0	@, tmp11111
	movgt	r3, #1	@, tmp11111
	ldrb	r8, [r6, #3155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11102,
	addgt	r3, r3, #1	@,, MisCnt.4552, tmp11111
	cmp	r0, #0	@ tmp11115,
	ldrb	r1, [r6, #3156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp11122, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11116, tmp11115
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11116,
	addgt	r3, r3, #1	@,, MisCnt.4560, MisCnt.4552
	cmp	r8, #0	@ tmp11122,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11129, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11123, tmp11122
	ldrb	ip, [r6, #3157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11123,
	addgt	r3, r3, #1	@,, MisCnt.4568, MisCnt.4560
	cmp	r2, #0	@ tmp11129,
	ldrb	r5, [r6, #3158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11136, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11130, tmp11129
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11130,
	addgt	r3, r3, #1	@,, MisCnt.4576, MisCnt.4568
	cmp	ip, #0	@ tmp11136,
	ldrb	r0, [r6, #3159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11137, tmp11136
	rsb	r1, r1, r5	@ tmp11143, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11137,
	addgt	r3, r3, #1	@,, MisCnt.4584, MisCnt.4576
	cmp	r1, #0	@ tmp11143,
	rsb	ip, r2, r0	@ tmp11150, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11144, tmp11143
	cmp	r1, #2	@ tmp11144,
	addgt	r3, r3, #1	@,, MisCnt.4592, MisCnt.4584
	cmp	ip, #0	@ tmp11150,
	rsblt	ip, ip, #0	@ tmp11151, tmp11150
	cmp	ip, #2	@ tmp11151,
	addgt	r3, r3, #1	@,, tmp11154, MisCnt.4592
	cmp	r3, #2	@ tmp11154,
	bgt	.L36	@,
	ldr	r3, [r6, #3160]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r4	@, pDetPara
	ldr	r2, [r6, #3164]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12188
	ldr	lr, [r6, #3168]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #3173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #3172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp11172, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11172,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp11165, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11173, tmp11172
	cmp	r4, #0	@ tmp11165,
	rsb	r0, r2, r0	@ tmp11179, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp11166, tmp11165
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11173,
	movle	r3, #0	@, tmp11175
	movgt	r3, #1	@, tmp11175
	ldrb	r5, [r6, #3175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp11166,
	addgt	r3, r3, #1	@,, MisCnt.1527, tmp11175
	cmp	r0, #0	@ tmp11179,
	ldrb	r1, [r6, #3176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp11186, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11180, tmp11179
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11180,
	addgt	r3, r3, #1	@,, MisCnt.1538, MisCnt.1527
	cmp	r5, #0	@ tmp11186,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11193, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11187, tmp11186
	ldrb	ip, [r6, #3177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11187,
	addgt	r3, r3, #1	@,, MisCnt.1547, MisCnt.1538
	cmp	r2, #0	@ tmp11193,
	ldrb	r4, [r6, #3178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11200, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11194, tmp11193
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11194,
	addgt	r3, r3, #1	@,, MisCnt.1558, MisCnt.1547
	cmp	ip, #0	@ tmp11200,
	ldrb	r0, [r6, #3179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11201, tmp11200
	rsb	r1, r1, r4	@ tmp11207, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11201,
	addgt	r3, r3, #1	@,, MisCnt.1569, MisCnt.1558
	cmp	r1, #0	@ tmp11207,
	rsb	ip, r2, r0	@ tmp11214, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11208, tmp11207
	cmp	r1, #2	@ tmp11208,
	addgt	r3, r3, #1	@,, MisCnt.1579, MisCnt.1569
	cmp	ip, #0	@ tmp11214,
	rsblt	ip, ip, #0	@ tmp11215, tmp11214
	cmp	ip, #2	@ tmp11215,
	addgt	r3, r3, #1	@,, tmp11218, MisCnt.1579
	cmp	r3, #2	@ tmp11218,
	bgt	.L36	@,
	mov	r0, #35	@ Result,
	b	.L21	@
.L71:
	movw	r5, #:lower16:.LANCHOR0	@ tmp12183,
	movt	r5, #:upper16:.LANCHOR0	@ tmp12183,
	add	r7, sp, #4	@ tmp12184,,
	mov	r1, r4	@, pDetPara
	ldr	ip, [r5, #1600]	@ <variable>.Comp, <variable>.Comp
	ldr	r2, [r5, #1604]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12184
	ldr	lr, [r5, #1608]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r5, #1613]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1612]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, r6	@ tmp6308, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1614]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6308,
	rsb	lr, r1, sl	@ tmp6301, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6309, tmp6308
	cmp	lr, #0	@ tmp6301,
	rsb	r8, r2, r0	@ tmp6315, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6302, tmp6301
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6309,
	movle	sl, #0	@, tmp6311
	movgt	sl, #1	@, tmp6311
	ldrb	r6, [r5, #1615]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6302,
	addgt	sl, sl, #1	@,, MisCnt.4618, tmp6311
	cmp	r8, #0	@ tmp6315,
	ldrb	r1, [r5, #1616]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp6322, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6316, tmp6315
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp6316,
	addgt	sl, sl, #1	@,, MisCnt.4626, MisCnt.4618
	cmp	r6, #0	@ tmp6322,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp6329, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp6323, tmp6322
	ldrb	ip, [r5, #1617]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp6323,
	addgt	sl, sl, #1	@,, MisCnt.4634, MisCnt.4626
	cmp	r8, #0	@ tmp6329,
	ldrb	lr, [r5, #1618]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6336, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6330, tmp6329
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp6330,
	addgt	sl, sl, #1	@,, MisCnt.4642, MisCnt.4634
	cmp	ip, #0	@ tmp6336,
	ldrb	r0, [r5, #1619]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r1, lr	@ tmp6343, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6337, tmp6336
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6337,
	addgt	sl, sl, #1	@,, MisCnt.4650, MisCnt.4642
	cmp	r8, #0	@ tmp6343,
	rsb	r6, r2, r0	@ tmp6350, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6344, tmp6343
	cmp	r8, #2	@ tmp6344,
	addgt	sl, sl, #1	@,, MisCnt.4658, MisCnt.4650
	cmp	r6, #0	@ tmp6350,
	rsblt	r6, r6, #0	@ tmp6351, tmp6350
	cmp	r6, #2	@ tmp6351,
	addgt	sl, sl, #1	@,, tmp6354, MisCnt.4658
	cmp	sl, #2	@ tmp6354,
	bgt	.L40	@,
	ldr	r6, [r5, #1620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r5, #1624]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1628]	@ <variable>.Py, <variable>.Py
	str	r6, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	mov	r6, r5	@ tmp6355, tmp12183
	str	sl, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #1633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #1632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6372, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6372,
	ldrb	sl, [r5, #1634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6365, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6373, tmp6372
	cmp	lr, #0	@ tmp6365,
	rsb	r0, r2, sl	@ tmp6379, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6366, tmp6365
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6373,
	movle	r3, #0	@, tmp6375
	movgt	r3, #1	@, tmp6375
	ldrb	r8, [r5, #1635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6366,
	addgt	r3, r3, #1	@,, MisCnt.4684, tmp6375
	cmp	r0, #0	@ tmp6379,
	ldrb	r1, [r5, #1636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6386, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6380, tmp6379
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6380,
	addgt	r3, r3, #1	@,, MisCnt.4692, MisCnt.4684
	cmp	r8, #0	@ tmp6386,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp6393, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6387, tmp6386
	ldrb	ip, [r5, #1637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6387,
	addgt	r3, r3, #1	@,, MisCnt.4700, MisCnt.4692
	cmp	r2, #0	@ tmp6393,
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp6400, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6394, tmp6393
	ldrb	lr, [r5, #1638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp6394,
	addgt	r3, r3, #1	@,, MisCnt.4708, MisCnt.4700
	cmp	ip, #0	@ tmp6400,
	ldrb	r0, [r5, #1639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp6407, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6401, tmp6400
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6401,
	addgt	r3, r3, #1	@,, MisCnt.4716, MisCnt.4708
	cmp	r1, #0	@ tmp6407,
	rsb	sl, r8, r0	@ tmp6414, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6408, tmp6407
	cmp	r1, #2	@ tmp6408,
	addgt	r3, r3, #1	@,, MisCnt.4724, MisCnt.4716
	cmp	sl, #0	@ tmp6414,
	rsblt	sl, sl, #0	@ tmp6415, tmp6414
	cmp	sl, #2	@ tmp6415,
	addgt	r3, r3, #1	@,, tmp6418, MisCnt.4724
	cmp	r3, #2	@ tmp6418,
	bgt	.L40	@,
	ldr	r2, [r5, #1640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r5, #1644]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1648]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r5, #1653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #1652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6436, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6436,
	ldrb	sl, [r5, #1654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6429, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6437, tmp6436
	cmp	lr, #0	@ tmp6429,
	rsb	r0, r2, sl	@ tmp6443, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6430, tmp6429
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6437,
	movle	r3, #0	@, tmp6439
	movgt	r3, #1	@, tmp6439
	ldrb	r8, [r5, #1655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6430,
	addgt	r3, r3, #1	@,, MisCnt.4750, tmp6439
	cmp	r0, #0	@ tmp6443,
	ldrb	r1, [r5, #1656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6450, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6444, tmp6443
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6444,
	addgt	r3, r3, #1	@,, MisCnt.4758, MisCnt.4750
	cmp	r8, #0	@ tmp6450,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp6457, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6451, tmp6450
	ldrb	ip, [r5, #1657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6451,
	addgt	r3, r3, #1	@,, MisCnt.4766, MisCnt.4758
	cmp	r2, #0	@ tmp6457,
	ldrb	lr, [r5, #1658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6464, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6458, tmp6457
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6458,
	addgt	r3, r3, #1	@,, MisCnt.4774, MisCnt.4766
	cmp	ip, #0	@ tmp6464,
	ldrb	r0, [r5, #1659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp6471, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6465, tmp6464
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6465,
	addgt	r3, r3, #1	@,, MisCnt.4782, MisCnt.4774
	cmp	r1, #0	@ tmp6471,
	rsb	r2, r8, r0	@ tmp6478, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6472, tmp6471
	cmp	r1, #2	@ tmp6472,
	addgt	r3, r3, #1	@,, MisCnt.4790, MisCnt.4782
	cmp	r2, #0	@ tmp6478,
	rsblt	r2, r2, #0	@ tmp6479, tmp6478
	cmp	r2, #2	@ tmp6479,
	addgt	r3, r3, #1	@,, tmp6482, MisCnt.4790
	cmp	r3, #2	@ tmp6482,
	bgt	.L40	@,
	ldr	r2, [r5, #1660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r8, [r5, #1664]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1668]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, r8, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r5, #1673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #1672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp6500, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6500,
	ldrb	r8, [r5, #1674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6493, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6501, tmp6500
	cmp	lr, #0	@ tmp6493,
	rsb	r0, r2, r8	@ tmp6507, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6494, tmp6493
	ldrb	sl, [r5, #1675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp6501,
	movle	r3, #0	@, tmp6503
	movgt	r3, #1	@, tmp6503
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp6494,
	addgt	r3, r3, #1	@,, MisCnt.4816, tmp6503
	cmp	r0, #0	@ tmp6507,
	ldrb	r1, [r5, #1676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp6514, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6508, tmp6507
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6508,
	addgt	r3, r3, #1	@,, MisCnt.4824, MisCnt.4816
	cmp	r8, #0	@ tmp6514,
	ldrb	sl, [r5, #1677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp6521, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6515, tmp6514
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp6515,
	addgt	r3, r3, #1	@,, MisCnt.4832, MisCnt.4824
	cmp	r2, #0	@ tmp6521,
	ldrb	lr, [r5, #1678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp6528, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6522, tmp6521
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6522,
	addgt	r3, r3, #1	@,, MisCnt.4840, MisCnt.4832
	cmp	ip, #0	@ tmp6528,
	ldrb	r0, [r5, #1679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6535, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6529, tmp6528
	ldrb	sl, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6529,
	addgt	r3, r3, #1	@,, MisCnt.4848, MisCnt.4840
	cmp	r1, #0	@ tmp6535,
	rsb	r8, sl, r0	@ tmp6542, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6536, tmp6535
	cmp	r1, #2	@ tmp6536,
	addgt	r3, r3, #1	@,, MisCnt.4856, MisCnt.4848
	cmp	r8, #0	@ tmp6542,
	rsblt	r8, r8, #0	@ tmp6543, tmp6542
	cmp	r8, #2	@ tmp6543,
	addgt	r3, r3, #1	@,, tmp6546, MisCnt.4856
	cmp	r3, #2	@ tmp6546,
	bgt	.L40	@,
	ldr	r3, [r5, #1680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r5, #1684]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1688]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #1693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp6564, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6564,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp6557, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6565, tmp6564
	cmp	r8, #0	@ tmp6557,
	rsb	r0, r2, r0	@ tmp6571, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6558, tmp6557
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6565,
	movle	r3, #0	@, tmp6567
	movgt	r3, #1	@, tmp6567
	ldrb	sl, [r5, #1695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6558,
	addgt	r3, r3, #1	@,, MisCnt.1598, tmp6567
	cmp	r0, #0	@ tmp6571,
	ldrb	r1, [r5, #1696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6578, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6572, tmp6571
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6572,
	addgt	r3, r3, #1	@,, MisCnt.1608, MisCnt.1598
	cmp	sl, #0	@ tmp6578,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6585, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6579, tmp6578
	ldrb	ip, [r5, #1697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6579,
	addgt	r3, r3, #1	@,, MisCnt.1619, MisCnt.1608
	cmp	r2, #0	@ tmp6585,
	ldrb	r8, [r5, #1698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6592, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6586, tmp6585
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6586,
	addgt	r3, r3, #1	@,, MisCnt.1630, MisCnt.1619
	cmp	ip, #0	@ tmp6592,
	ldrb	r0, [r5, #1699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6593, tmp6592
	rsb	r1, r1, r8	@ tmp6599, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6593,
	addgt	r3, r3, #1	@,, MisCnt.1638, MisCnt.1630
	cmp	r1, #0	@ tmp6599,
	rsb	ip, r2, r0	@ tmp6606, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6600, tmp6599
	cmp	r1, #2	@ tmp6600,
	addgt	r3, r3, #1	@,, MisCnt.1649, MisCnt.1638
	cmp	ip, #0	@ tmp6606,
	rsblt	ip, ip, #0	@ tmp6607, tmp6606
	cmp	ip, #2	@ tmp6607,
	addgt	r3, r3, #1	@,, tmp6610, MisCnt.1649
	cmp	r3, #2	@ tmp6610,
	movle	r0, #22	@ Result,
	ble	.L21	@,
.L40:
	ldr	ip, [r5, #1700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r5, #1704]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1708]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp6611,
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp6611,
	str	sl, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r5, #1713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #1712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp6628, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp6628,
	ldrb	sl, [r5, #1714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6621, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6629, tmp6628
	cmp	lr, #0	@ tmp6621,
	rsblt	lr, lr, #0	@ tmp6622, tmp6621
	ldrb	r0, [r5, #1715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6629,
	movle	r1, #0	@, tmp6631
	movgt	r1, #1	@, tmp6631
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp6635, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6622,
	addgt	r1, r1, #1	@,, MisCnt.4882, tmp6631
	cmp	r8, #0	@ tmp6635,
	rsb	sl, r3, r0	@ tmp6642, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6636, tmp6635
	ldrb	ip, [r5, #1716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6636,
	movle	r8, r1	@, MisCnt.4890, MisCnt.4882
	addgt	r8, r1, #1	@,, MisCnt.4890, MisCnt.4882
	cmp	sl, #0	@ tmp6642,
	ldrb	r0, [r5, #1717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp6649, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6643, tmp6642
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6643,
	movle	r3, r8	@, MisCnt.4898, MisCnt.4890
	addgt	r3, r8, #1	@,, MisCnt.4898, MisCnt.4890
	cmp	ip, #0	@ tmp6649,
	ldrb	lr, [r5, #1718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp6656, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6650, tmp6649
	ldrb	r2, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6650,
	movle	ip, r3	@, MisCnt.4906, MisCnt.4898
	addgt	ip, r3, #1	@,, MisCnt.4906, MisCnt.4898
	cmp	sl, #0	@ tmp6656,
	ldrb	r0, [r5, #1719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6657, tmp6656
	rsb	r8, r2, lr	@ tmp6663, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6657,
	movle	r1, ip	@, MisCnt.4914, MisCnt.4906
	addgt	r1, ip, #1	@,, MisCnt.4914, MisCnt.4906
	cmp	r8, #0	@ tmp6663,
	rsb	sl, r3, r0	@ tmp6670, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6664, tmp6663
	cmp	r8, #2	@ tmp6664,
	movle	ip, r1	@, MisCnt.4922, MisCnt.4914
	addgt	ip, r1, #1	@,, MisCnt.4922, MisCnt.4914
	cmp	sl, #0	@ tmp6670,
	rsblt	sl, sl, #0	@ tmp6671, tmp6670
	cmp	sl, #2	@ tmp6671,
	movle	r0, ip	@, tmp6674, MisCnt.4922
	addgt	r0, ip, #1	@,, tmp6674, MisCnt.4922
	cmp	r0, #2	@ tmp6674,
	bgt	.L41	@,
	ldr	r2, [r6, #1720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r6, #1724]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1728]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6692, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6692,
	ldrb	sl, [r6, #1734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6685, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6693, tmp6692
	cmp	lr, #0	@ tmp6685,
	rsb	r0, r2, sl	@ tmp6699, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6686, tmp6685
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6693,
	movle	r3, #0	@, tmp6695
	movgt	r3, #1	@, tmp6695
	ldrb	r8, [r6, #1735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6686,
	addgt	r3, r3, #1	@,, MisCnt.4948, tmp6695
	cmp	r0, #0	@ tmp6699,
	ldrb	r1, [r6, #1736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6706, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6700, tmp6699
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6700,
	addgt	r3, r3, #1	@,, MisCnt.4956, MisCnt.4948
	cmp	r8, #0	@ tmp6706,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp6713, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6707, tmp6706
	ldrb	ip, [r6, #1737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6707,
	addgt	r3, r3, #1	@,, MisCnt.4964, MisCnt.4956
	cmp	r2, #0	@ tmp6713,
	ldrb	lr, [r6, #1738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp6720, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6714, tmp6713
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6714,
	addgt	r3, r3, #1	@,, MisCnt.4972, MisCnt.4964
	cmp	sl, #0	@ tmp6720,
	ldrb	r0, [r6, #1739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6727, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6721, tmp6720
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6721,
	addgt	r3, r3, #1	@,, MisCnt.4980, MisCnt.4972
	cmp	r1, #0	@ tmp6727,
	rsb	r8, r2, r0	@ tmp6734, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6728, tmp6727
	cmp	r1, #2	@ tmp6728,
	addgt	r3, r3, #1	@,, MisCnt.4988, MisCnt.4980
	cmp	r8, #0	@ tmp6734,
	rsblt	r8, r8, #0	@ tmp6735, tmp6734
	cmp	r8, #2	@ tmp6735,
	addgt	r3, r3, #1	@,, tmp6738, MisCnt.4988
	cmp	r3, #2	@ tmp6738,
	bgt	.L41	@,
	ldr	r2, [r6, #1740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r8, [r6, #1744]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1748]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, r8, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp6756, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6756,
	ldrb	r8, [r6, #1754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6749, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6757, tmp6756
	cmp	lr, #0	@ tmp6749,
	rsb	r0, r2, r8	@ tmp6763, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6750, tmp6749
	ldrb	sl, [r6, #1755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp6757,
	movle	r3, #0	@, tmp6759
	movgt	r3, #1	@, tmp6759
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp6750,
	addgt	r3, r3, #1	@,, MisCnt.5014, tmp6759
	cmp	r0, #0	@ tmp6763,
	ldrb	r1, [r6, #1756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp6770, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6764, tmp6763
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6764,
	addgt	r3, r3, #1	@,, MisCnt.5022, MisCnt.5014
	cmp	r8, #0	@ tmp6770,
	ldrb	sl, [r6, #1757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp6777, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6771, tmp6770
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp6771,
	addgt	r3, r3, #1	@,, MisCnt.5030, MisCnt.5022
	cmp	r2, #0	@ tmp6777,
	ldrb	lr, [r6, #1758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp6784, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6778, tmp6777
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6778,
	addgt	r3, r3, #1	@,, MisCnt.5038, MisCnt.5030
	cmp	ip, #0	@ tmp6784,
	ldrb	r0, [r6, #1759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6791, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6785, tmp6784
	ldrb	sl, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6785,
	addgt	r3, r3, #1	@,, MisCnt.5046, MisCnt.5038
	cmp	r1, #0	@ tmp6791,
	rsb	r8, sl, r0	@ tmp6798, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6792, tmp6791
	cmp	r1, #2	@ tmp6792,
	addgt	r3, r3, #1	@,, MisCnt.5054, MisCnt.5046
	cmp	r8, #0	@ tmp6798,
	rsblt	r8, r8, #0	@ tmp6799, tmp6798
	cmp	r8, #2	@ tmp6799,
	addgt	r3, r3, #1	@,, tmp6802, MisCnt.5054
	cmp	r3, #2	@ tmp6802,
	bgt	.L41	@,
	ldr	r2, [r6, #1760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r6, #1764]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1768]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp6820, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6820,
	ldrb	sl, [r6, #1774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6813, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6821, tmp6820
	cmp	lr, #0	@ tmp6813,
	rsb	r0, r2, sl	@ tmp6827, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6814, tmp6813
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6821,
	movle	r3, #0	@, tmp6823
	movgt	r3, #1	@, tmp6823
	ldrb	r8, [r6, #1775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6814,
	addgt	r3, r3, #1	@,, MisCnt.5080, tmp6823
	cmp	r0, #0	@ tmp6827,
	ldrb	r1, [r6, #1776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6834, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6828, tmp6827
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6828,
	addgt	r3, r3, #1	@,, MisCnt.5088, MisCnt.5080
	cmp	r8, #0	@ tmp6834,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp6841, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6835, tmp6834
	ldrb	ip, [r6, #1777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6835,
	addgt	r3, r3, #1	@,, MisCnt.5096, MisCnt.5088
	cmp	r2, #0	@ tmp6841,
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp6848, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6842, tmp6841
	ldrb	lr, [r6, #1778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp6842,
	addgt	r3, r3, #1	@,, MisCnt.5104, MisCnt.5096
	cmp	ip, #0	@ tmp6848,
	ldrb	r0, [r6, #1779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp6855, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6849, tmp6848
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6849,
	addgt	r3, r3, #1	@,, MisCnt.5112, MisCnt.5104
	cmp	r1, #0	@ tmp6855,
	rsb	sl, r8, r0	@ tmp6862, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6856, tmp6855
	cmp	r1, #2	@ tmp6856,
	addgt	r3, r3, #1	@,, MisCnt.5120, MisCnt.5112
	cmp	sl, #0	@ tmp6862,
	rsblt	sl, sl, #0	@ tmp6863, tmp6862
	cmp	sl, #2	@ tmp6863,
	addgt	r3, r3, #1	@,, tmp6866, MisCnt.5120
	cmp	r3, #2	@ tmp6866,
	bgt	.L41	@,
	ldr	r3, [r6, #1780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #1784]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1788]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp6884, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6884,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp6877, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6885, tmp6884
	cmp	r8, #0	@ tmp6877,
	rsb	r0, r2, r0	@ tmp6891, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6878, tmp6877
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6885,
	movle	r3, #0	@, tmp6887
	movgt	r3, #1	@, tmp6887
	ldrb	sl, [r6, #1795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6878,
	addgt	r3, r3, #1	@,, MisCnt.1669, tmp6887
	cmp	r0, #0	@ tmp6891,
	ldrb	r1, [r6, #1796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6898, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6892, tmp6891
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6892,
	addgt	r3, r3, #1	@,, MisCnt.1678, MisCnt.1669
	cmp	sl, #0	@ tmp6898,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6905, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6899, tmp6898
	ldrb	ip, [r6, #1797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6899,
	addgt	r3, r3, #1	@,, MisCnt.1687, MisCnt.1678
	cmp	r2, #0	@ tmp6905,
	ldrb	r8, [r6, #1798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6912, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6906, tmp6905
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6906,
	addgt	r3, r3, #1	@,, MisCnt.1697, MisCnt.1687
	cmp	ip, #0	@ tmp6912,
	ldrb	r0, [r6, #1799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6913, tmp6912
	rsb	r1, r1, r8	@ tmp6919, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6913,
	addgt	r3, r3, #1	@,, MisCnt.1705, MisCnt.1697
	cmp	r1, #0	@ tmp6919,
	rsb	ip, r2, r0	@ tmp6926, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6920, tmp6919
	cmp	r1, #2	@ tmp6920,
	addgt	r3, r3, #1	@,, MisCnt.1713, MisCnt.1705
	cmp	ip, #0	@ tmp6926,
	rsblt	ip, ip, #0	@ tmp6927, tmp6926
	cmp	ip, #2	@ tmp6927,
	addgt	r3, r3, #1	@,, tmp6930, MisCnt.1713
	cmp	r3, #2	@ tmp6930,
	movle	r0, #20	@ Result,
	ble	.L21	@,
.L41:
	ldr	ip, [r5, #1800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r5, #1804]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1808]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp6931,
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp6931,
	str	sl, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r5, #1813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #1812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp6948, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp6948,
	ldrb	sl, [r5, #1814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6941, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6949, tmp6948
	cmp	lr, #0	@ tmp6941,
	rsblt	lr, lr, #0	@ tmp6942, tmp6941
	ldrb	r0, [r5, #1815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6949,
	movle	r1, #0	@, tmp6951
	movgt	r1, #1	@, tmp6951
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp6955, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6942,
	addgt	r1, r1, #1	@,, MisCnt.5146, tmp6951
	cmp	r8, #0	@ tmp6955,
	rsb	sl, r3, r0	@ tmp6962, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp6956, tmp6955
	ldrb	ip, [r5, #1816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6956,
	movle	r8, r1	@, MisCnt.5154, MisCnt.5146
	addgt	r8, r1, #1	@,, MisCnt.5154, MisCnt.5146
	cmp	sl, #0	@ tmp6962,
	ldrb	r0, [r5, #1817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp6969, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6963, tmp6962
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6963,
	movle	r3, r8	@, MisCnt.5162, MisCnt.5154
	addgt	r3, r8, #1	@,, MisCnt.5162, MisCnt.5154
	cmp	ip, #0	@ tmp6969,
	ldrb	lr, [r5, #1818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp6976, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6970, tmp6969
	ldrb	r2, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6970,
	movle	ip, r3	@, MisCnt.5170, MisCnt.5162
	addgt	ip, r3, #1	@,, MisCnt.5170, MisCnt.5162
	cmp	sl, #0	@ tmp6976,
	ldrb	r0, [r5, #1819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6977, tmp6976
	rsb	r8, r2, lr	@ tmp6983, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6977,
	movle	r1, ip	@, MisCnt.5178, MisCnt.5170
	addgt	r1, ip, #1	@,, MisCnt.5178, MisCnt.5170
	cmp	r8, #0	@ tmp6983,
	rsb	sl, r3, r0	@ tmp6990, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6984, tmp6983
	cmp	r8, #2	@ tmp6984,
	movle	ip, r1	@, MisCnt.5186, MisCnt.5178
	addgt	ip, r1, #1	@,, MisCnt.5186, MisCnt.5178
	cmp	sl, #0	@ tmp6990,
	rsblt	sl, sl, #0	@ tmp6991, tmp6990
	cmp	sl, #2	@ tmp6991,
	movle	r0, ip	@, tmp6994, MisCnt.5186
	addgt	r0, ip, #1	@,, tmp6994, MisCnt.5186
	cmp	r0, #2	@ tmp6994,
	bgt	.L42	@,
	ldr	r2, [r6, #1820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r6, #1824]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1828]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7012, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7012,
	ldrb	sl, [r6, #1834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7005, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7013, tmp7012
	cmp	lr, #0	@ tmp7005,
	rsb	r0, r2, sl	@ tmp7019, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7006, tmp7005
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7013,
	movle	r3, #0	@, tmp7015
	movgt	r3, #1	@, tmp7015
	ldrb	r8, [r6, #1835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7006,
	addgt	r3, r3, #1	@,, MisCnt.5212, tmp7015
	cmp	r0, #0	@ tmp7019,
	ldrb	r1, [r6, #1836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7026, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7020, tmp7019
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7020,
	addgt	r3, r3, #1	@,, MisCnt.5220, MisCnt.5212
	cmp	r8, #0	@ tmp7026,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7033, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7027, tmp7026
	ldrb	ip, [r6, #1837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7027,
	addgt	r3, r3, #1	@,, MisCnt.5228, MisCnt.5220
	cmp	r2, #0	@ tmp7033,
	ldrb	lr, [r6, #1838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp7040, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7034, tmp7033
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7034,
	addgt	r3, r3, #1	@,, MisCnt.5236, MisCnt.5228
	cmp	sl, #0	@ tmp7040,
	ldrb	r0, [r6, #1839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7047, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7041, tmp7040
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7041,
	addgt	r3, r3, #1	@,, MisCnt.5244, MisCnt.5236
	cmp	r1, #0	@ tmp7047,
	rsb	r8, r2, r0	@ tmp7054, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7048, tmp7047
	cmp	r1, #2	@ tmp7048,
	addgt	r3, r3, #1	@,, MisCnt.5252, MisCnt.5244
	cmp	r8, #0	@ tmp7054,
	rsblt	r8, r8, #0	@ tmp7055, tmp7054
	cmp	r8, #2	@ tmp7055,
	addgt	r3, r3, #1	@,, tmp7058, MisCnt.5252
	cmp	r3, #2	@ tmp7058,
	bgt	.L42	@,
	ldr	r2, [r6, #1840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r8, [r6, #1844]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1848]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, r8, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7076, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7076,
	ldrb	r8, [r6, #1854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7069, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7077, tmp7076
	cmp	lr, #0	@ tmp7069,
	rsb	r0, r2, r8	@ tmp7083, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7070, tmp7069
	ldrb	sl, [r6, #1855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp7077,
	movle	r3, #0	@, tmp7079
	movgt	r3, #1	@, tmp7079
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp7070,
	addgt	r3, r3, #1	@,, MisCnt.5278, tmp7079
	cmp	r0, #0	@ tmp7083,
	ldrb	r1, [r6, #1856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp7090, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7084, tmp7083
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7084,
	addgt	r3, r3, #1	@,, MisCnt.5286, MisCnt.5278
	cmp	r8, #0	@ tmp7090,
	ldrb	sl, [r6, #1857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp7097, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7091, tmp7090
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp7091,
	addgt	r3, r3, #1	@,, MisCnt.5294, MisCnt.5286
	cmp	r2, #0	@ tmp7097,
	ldrb	lr, [r6, #1858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp7104, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7098, tmp7097
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7098,
	addgt	r3, r3, #1	@,, MisCnt.5302, MisCnt.5294
	cmp	ip, #0	@ tmp7104,
	ldrb	r0, [r6, #1859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7111, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7105, tmp7104
	ldrb	sl, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7105,
	addgt	r3, r3, #1	@,, MisCnt.5310, MisCnt.5302
	cmp	r1, #0	@ tmp7111,
	rsb	r8, sl, r0	@ tmp7118, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7112, tmp7111
	cmp	r1, #2	@ tmp7112,
	addgt	r3, r3, #1	@,, MisCnt.5318, MisCnt.5310
	cmp	r8, #0	@ tmp7118,
	rsblt	r8, r8, #0	@ tmp7119, tmp7118
	cmp	r8, #2	@ tmp7119,
	addgt	r3, r3, #1	@,, tmp7122, MisCnt.5318
	cmp	r3, #2	@ tmp7122,
	bgt	.L42	@,
	ldr	r2, [r6, #1860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r6, #1864]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1868]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7140, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7140,
	ldrb	sl, [r6, #1874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7133, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7141, tmp7140
	cmp	lr, #0	@ tmp7133,
	rsb	r0, r2, sl	@ tmp7147, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7134, tmp7133
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7141,
	movle	r3, #0	@, tmp7143
	movgt	r3, #1	@, tmp7143
	ldrb	r8, [r6, #1875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7134,
	addgt	r3, r3, #1	@,, MisCnt.5344, tmp7143
	cmp	r0, #0	@ tmp7147,
	ldrb	r1, [r6, #1876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7154, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7148, tmp7147
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7148,
	addgt	r3, r3, #1	@,, MisCnt.5352, MisCnt.5344
	cmp	r8, #0	@ tmp7154,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7161, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7155, tmp7154
	ldrb	ip, [r6, #1877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7155,
	addgt	r3, r3, #1	@,, MisCnt.5360, MisCnt.5352
	cmp	r2, #0	@ tmp7161,
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp7168, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7162, tmp7161
	ldrb	lr, [r6, #1878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp7162,
	addgt	r3, r3, #1	@,, MisCnt.5368, MisCnt.5360
	cmp	ip, #0	@ tmp7168,
	ldrb	r0, [r6, #1879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp7175, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7169, tmp7168
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7169,
	addgt	r3, r3, #1	@,, MisCnt.5376, MisCnt.5368
	cmp	r1, #0	@ tmp7175,
	rsb	sl, r8, r0	@ tmp7182, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7176, tmp7175
	cmp	r1, #2	@ tmp7176,
	addgt	r3, r3, #1	@,, MisCnt.5384, MisCnt.5376
	cmp	sl, #0	@ tmp7182,
	rsblt	sl, sl, #0	@ tmp7183, tmp7182
	cmp	sl, #2	@ tmp7183,
	addgt	r3, r3, #1	@,, tmp7186, MisCnt.5384
	cmp	r3, #2	@ tmp7186,
	bgt	.L42	@,
	ldr	r3, [r6, #1880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #1884]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1888]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp7204, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7204,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp7197, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7205, tmp7204
	cmp	r8, #0	@ tmp7197,
	rsb	r0, r2, r0	@ tmp7211, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7198, tmp7197
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7205,
	movle	r3, #0	@, tmp7207
	movgt	r3, #1	@, tmp7207
	ldrb	sl, [r6, #1895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7198,
	addgt	r3, r3, #1	@,, MisCnt.1731, tmp7207
	cmp	r0, #0	@ tmp7211,
	ldrb	r1, [r6, #1896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7218, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7212, tmp7211
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7212,
	addgt	r3, r3, #1	@,, MisCnt.1739, MisCnt.1731
	cmp	sl, #0	@ tmp7218,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7225, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7219, tmp7218
	ldrb	ip, [r6, #1897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7219,
	addgt	r3, r3, #1	@,, MisCnt.1750, MisCnt.1739
	cmp	r2, #0	@ tmp7225,
	ldrb	r8, [r6, #1898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7232, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7226, tmp7225
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7226,
	addgt	r3, r3, #1	@,, MisCnt.1761, MisCnt.1750
	cmp	ip, #0	@ tmp7232,
	ldrb	r0, [r6, #1899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7233, tmp7232
	rsb	r1, r1, r8	@ tmp7239, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7233,
	addgt	r3, r3, #1	@,, MisCnt.1771, MisCnt.1761
	cmp	r1, #0	@ tmp7239,
	rsb	ip, r2, r0	@ tmp7246, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7240, tmp7239
	cmp	r1, #2	@ tmp7240,
	addgt	r3, r3, #1	@,, MisCnt.1779, MisCnt.1771
	cmp	ip, #0	@ tmp7246,
	rsblt	ip, ip, #0	@ tmp7247, tmp7246
	cmp	ip, #2	@ tmp7247,
	addgt	r3, r3, #1	@,, tmp7250, MisCnt.1779
	cmp	r3, #2	@ tmp7250,
	movle	r0, #21	@ Result,
	ble	.L21	@,
.L42:
	ldr	ip, [r5, #1900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r5, #1904]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1908]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp7251,
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp7251,
	str	sl, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r5, #1913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #1912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp7268, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp7268,
	ldrb	sl, [r5, #1914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7261, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7269, tmp7268
	cmp	lr, #0	@ tmp7261,
	rsblt	lr, lr, #0	@ tmp7262, tmp7261
	ldrb	r0, [r5, #1915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7269,
	movle	r1, #0	@, tmp7271
	movgt	r1, #1	@, tmp7271
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp7275, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7262,
	addgt	r1, r1, #1	@,, MisCnt.5410, tmp7271
	cmp	r8, #0	@ tmp7275,
	rsb	sl, r3, r0	@ tmp7282, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp7276, tmp7275
	ldrb	ip, [r5, #1916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7276,
	movle	r8, r1	@, MisCnt.5418, MisCnt.5410
	addgt	r8, r1, #1	@,, MisCnt.5418, MisCnt.5410
	cmp	sl, #0	@ tmp7282,
	ldrb	r0, [r5, #1917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp7289, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7283, tmp7282
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7283,
	movle	r3, r8	@, MisCnt.5426, MisCnt.5418
	addgt	r3, r8, #1	@,, MisCnt.5426, MisCnt.5418
	cmp	ip, #0	@ tmp7289,
	ldrb	lr, [r5, #1918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp7296, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7290, tmp7289
	ldrb	r2, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7290,
	movle	ip, r3	@, MisCnt.5434, MisCnt.5426
	addgt	ip, r3, #1	@,, MisCnt.5434, MisCnt.5426
	cmp	sl, #0	@ tmp7296,
	ldrb	r0, [r5, #1919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7297, tmp7296
	rsb	r8, r2, lr	@ tmp7303, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7297,
	movle	r1, ip	@, MisCnt.5442, MisCnt.5434
	addgt	r1, ip, #1	@,, MisCnt.5442, MisCnt.5434
	cmp	r8, #0	@ tmp7303,
	rsb	sl, r3, r0	@ tmp7310, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7304, tmp7303
	cmp	r8, #2	@ tmp7304,
	movle	ip, r1	@, MisCnt.5450, MisCnt.5442
	addgt	ip, r1, #1	@,, MisCnt.5450, MisCnt.5442
	cmp	sl, #0	@ tmp7310,
	rsblt	sl, sl, #0	@ tmp7311, tmp7310
	cmp	sl, #2	@ tmp7311,
	movle	r0, ip	@, tmp7314, MisCnt.5450
	addgt	r0, ip, #1	@,, tmp7314, MisCnt.5450
	cmp	r0, #2	@ tmp7314,
	bgt	.L43	@,
	ldr	r2, [r6, #1920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r6, #1924]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1928]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7332, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7332,
	ldrb	sl, [r6, #1934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7325, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7333, tmp7332
	cmp	lr, #0	@ tmp7325,
	rsb	r0, r2, sl	@ tmp7339, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7326, tmp7325
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7333,
	movle	r3, #0	@, tmp7335
	movgt	r3, #1	@, tmp7335
	ldrb	r8, [r6, #1935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7326,
	addgt	r3, r3, #1	@,, MisCnt.5476, tmp7335
	cmp	r0, #0	@ tmp7339,
	ldrb	r1, [r6, #1936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7346, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7340, tmp7339
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7340,
	addgt	r3, r3, #1	@,, MisCnt.5484, MisCnt.5476
	cmp	r8, #0	@ tmp7346,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7353, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7347, tmp7346
	ldrb	ip, [r6, #1937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7347,
	addgt	r3, r3, #1	@,, MisCnt.5492, MisCnt.5484
	cmp	r2, #0	@ tmp7353,
	ldrb	lr, [r6, #1938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp7360, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7354, tmp7353
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7354,
	addgt	r3, r3, #1	@,, MisCnt.5500, MisCnt.5492
	cmp	sl, #0	@ tmp7360,
	ldrb	r0, [r6, #1939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7367, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7361, tmp7360
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7361,
	addgt	r3, r3, #1	@,, MisCnt.5508, MisCnt.5500
	cmp	r1, #0	@ tmp7367,
	rsb	r8, r2, r0	@ tmp7374, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7368, tmp7367
	cmp	r1, #2	@ tmp7368,
	addgt	r3, r3, #1	@,, MisCnt.5516, MisCnt.5508
	cmp	r8, #0	@ tmp7374,
	rsblt	r8, r8, #0	@ tmp7375, tmp7374
	cmp	r8, #2	@ tmp7375,
	addgt	r3, r3, #1	@,, tmp7378, MisCnt.5516
	cmp	r3, #2	@ tmp7378,
	bgt	.L43	@,
	ldr	r2, [r6, #1940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r8, [r6, #1944]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1948]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, r8, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7396, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7396,
	ldrb	r8, [r6, #1954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7389, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7397, tmp7396
	cmp	lr, #0	@ tmp7389,
	rsb	r0, r2, r8	@ tmp7403, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7390, tmp7389
	ldrb	sl, [r6, #1955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp7397,
	movle	r3, #0	@, tmp7399
	movgt	r3, #1	@, tmp7399
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp7390,
	addgt	r3, r3, #1	@,, MisCnt.5542, tmp7399
	cmp	r0, #0	@ tmp7403,
	ldrb	r1, [r6, #1956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp7410, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7404, tmp7403
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7404,
	addgt	r3, r3, #1	@,, MisCnt.5550, MisCnt.5542
	cmp	r8, #0	@ tmp7410,
	ldrb	sl, [r6, #1957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp7417, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7411, tmp7410
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp7411,
	addgt	r3, r3, #1	@,, MisCnt.5558, MisCnt.5550
	cmp	r2, #0	@ tmp7417,
	ldrb	lr, [r6, #1958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp7424, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7418, tmp7417
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7418,
	addgt	r3, r3, #1	@,, MisCnt.5566, MisCnt.5558
	cmp	ip, #0	@ tmp7424,
	ldrb	r0, [r6, #1959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7431, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7425, tmp7424
	ldrb	sl, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7425,
	addgt	r3, r3, #1	@,, MisCnt.5574, MisCnt.5566
	cmp	r1, #0	@ tmp7431,
	rsb	r8, sl, r0	@ tmp7438, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7432, tmp7431
	cmp	r1, #2	@ tmp7432,
	addgt	r3, r3, #1	@,, MisCnt.5582, MisCnt.5574
	cmp	r8, #0	@ tmp7438,
	rsblt	r8, r8, #0	@ tmp7439, tmp7438
	cmp	r8, #2	@ tmp7439,
	addgt	r3, r3, #1	@,, tmp7442, MisCnt.5582
	cmp	r3, #2	@ tmp7442,
	bgt	.L43	@,
	ldr	r2, [r6, #1960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	sl, [r6, #1964]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1968]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7460, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7460,
	ldrb	sl, [r6, #1974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7453, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7461, tmp7460
	cmp	lr, #0	@ tmp7453,
	rsb	r0, r2, sl	@ tmp7467, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7454, tmp7453
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7461,
	movle	r3, #0	@, tmp7463
	movgt	r3, #1	@, tmp7463
	ldrb	r8, [r6, #1975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7454,
	addgt	r3, r3, #1	@,, MisCnt.5608, tmp7463
	cmp	r0, #0	@ tmp7467,
	ldrb	r1, [r6, #1976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7474, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7468, tmp7467
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7468,
	addgt	r3, r3, #1	@,, MisCnt.5616, MisCnt.5608
	cmp	r8, #0	@ tmp7474,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp7481, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7475, tmp7474
	ldrb	ip, [r6, #1977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7475,
	addgt	r3, r3, #1	@,, MisCnt.5624, MisCnt.5616
	cmp	r2, #0	@ tmp7481,
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp7488, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7482, tmp7481
	ldrb	lr, [r6, #1978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp7482,
	addgt	r3, r3, #1	@,, MisCnt.5632, MisCnt.5624
	cmp	ip, #0	@ tmp7488,
	ldrb	r0, [r6, #1979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp7495, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7489, tmp7488
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7489,
	addgt	r3, r3, #1	@,, MisCnt.5640, MisCnt.5632
	cmp	r1, #0	@ tmp7495,
	rsb	sl, r8, r0	@ tmp7502, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7496, tmp7495
	cmp	r1, #2	@ tmp7496,
	addgt	r3, r3, #1	@,, MisCnt.5648, MisCnt.5640
	cmp	sl, #0	@ tmp7502,
	rsblt	sl, sl, #0	@ tmp7503, tmp7502
	cmp	sl, #2	@ tmp7503,
	addgt	r3, r3, #1	@,, tmp7506, MisCnt.5648
	cmp	r3, #2	@ tmp7506,
	bgt	.L43	@,
	ldr	r3, [r6, #1980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #1984]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1988]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp7524, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7524,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp7517, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7525, tmp7524
	cmp	r8, #0	@ tmp7517,
	rsb	r0, r2, r0	@ tmp7531, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7518, tmp7517
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7525,
	movle	r3, #0	@, tmp7527
	movgt	r3, #1	@, tmp7527
	ldrb	sl, [r6, #1995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7518,
	addgt	r3, r3, #1	@,, MisCnt.1799, tmp7527
	cmp	r0, #0	@ tmp7531,
	ldrb	r1, [r6, #1996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7538, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7532, tmp7531
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7532,
	addgt	r3, r3, #1	@,, MisCnt.1810, MisCnt.1799
	cmp	sl, #0	@ tmp7538,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7545, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7539, tmp7538
	ldrb	ip, [r6, #1997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7539,
	addgt	r3, r3, #1	@,, MisCnt.1821, MisCnt.1810
	cmp	r2, #0	@ tmp7545,
	ldrb	r8, [r6, #1998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7552, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7546, tmp7545
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7546,
	addgt	r3, r3, #1	@,, MisCnt.1830, MisCnt.1821
	cmp	ip, #0	@ tmp7552,
	ldrb	r0, [r6, #1999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7553, tmp7552
	rsb	r1, r1, r8	@ tmp7559, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7553,
	addgt	r3, r3, #1	@,, MisCnt.1841, MisCnt.1830
	cmp	r1, #0	@ tmp7559,
	rsb	ip, r2, r0	@ tmp7566, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7560, tmp7559
	cmp	r1, #2	@ tmp7560,
	addgt	r3, r3, #1	@,, MisCnt.1852, MisCnt.1841
	cmp	ip, #0	@ tmp7566,
	rsblt	ip, ip, #0	@ tmp7567, tmp7566
	cmp	ip, #2	@ tmp7567,
	addgt	r3, r3, #1	@,, tmp7570, MisCnt.1852
	cmp	r3, #2	@ tmp7570,
	movle	r0, #25	@ Result,
	ble	.L21	@,
.L43:
	ldr	r3, [r5, #2000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r5, #2004]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2008]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp7571,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp7571,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7588, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7588,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7581, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7589, tmp7588
	cmp	lr, #0	@ tmp7581,
	rsb	r0, r2, r0	@ tmp7595, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7582, tmp7581
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7589,
	movle	sl, #0	@, tmp7591
	movgt	sl, #1	@, tmp7591
	ldrb	r8, [r5, #2015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7582,
	addgt	sl, sl, #1	@,, MisCnt.5674, tmp7591
	cmp	r0, #0	@ tmp7595,
	ldrb	r1, [r5, #2016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7602, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7596, tmp7595
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7596,
	addgt	sl, sl, #1	@,, MisCnt.5682, MisCnt.5674
	cmp	r8, #0	@ tmp7602,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7609, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7603, tmp7602
	ldrb	ip, [r5, #2017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7603,
	addgt	sl, sl, #1	@,, MisCnt.5690, MisCnt.5682
	cmp	r2, #0	@ tmp7609,
	ldrb	lr, [r5, #2018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7616, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7610, tmp7609
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7610,
	addgt	sl, sl, #1	@,, MisCnt.5698, MisCnt.5690
	cmp	ip, #0	@ tmp7616,
	ldrb	r0, [r5, #2019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7617, tmp7616
	rsb	r1, r1, lr	@ tmp7623, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7617,
	addgt	sl, sl, #1	@,, MisCnt.5706, MisCnt.5698
	cmp	r1, #0	@ tmp7623,
	rsb	ip, r8, r0	@ tmp7630, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7624, tmp7623
	cmp	r1, #2	@ tmp7624,
	addgt	sl, sl, #1	@,, MisCnt.5714, MisCnt.5706
	cmp	ip, #0	@ tmp7630,
	rsblt	ip, ip, #0	@ tmp7631, tmp7630
	cmp	ip, #2	@ tmp7631,
	addgt	sl, sl, #1	@,, tmp7634, MisCnt.5714
	cmp	sl, #2	@ tmp7634,
	bgt	.L44	@,
	ldr	r3, [r6, #2020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2024]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2028]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7652, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7652,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7645, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7653, tmp7652
	cmp	lr, #0	@ tmp7645,
	rsb	r0, r2, r0	@ tmp7659, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7646, tmp7645
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7653,
	movle	sl, #0	@, tmp7655
	movgt	sl, #1	@, tmp7655
	ldrb	r8, [r6, #2035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7646,
	addgt	sl, sl, #1	@,, MisCnt.5740, tmp7655
	cmp	r0, #0	@ tmp7659,
	ldrb	r1, [r6, #2036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7666, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7660, tmp7659
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7660,
	addgt	sl, sl, #1	@,, MisCnt.5748, MisCnt.5740
	cmp	r8, #0	@ tmp7666,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7673, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7667, tmp7666
	ldrb	ip, [r6, #2037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7667,
	addgt	sl, sl, #1	@,, MisCnt.5756, MisCnt.5748
	cmp	r2, #0	@ tmp7673,
	ldrb	lr, [r6, #2038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7680, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7674, tmp7673
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7674,
	addgt	sl, sl, #1	@,, MisCnt.5764, MisCnt.5756
	cmp	ip, #0	@ tmp7680,
	ldrb	r0, [r6, #2039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7687, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7681, tmp7680
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7681,
	addgt	sl, sl, #1	@,, MisCnt.5772, MisCnt.5764
	cmp	r1, #0	@ tmp7687,
	rsb	r8, r2, r0	@ tmp7694, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7688, tmp7687
	cmp	r1, #2	@ tmp7688,
	addgt	sl, sl, #1	@,, MisCnt.5780, MisCnt.5772
	cmp	r8, #0	@ tmp7694,
	rsblt	r8, r8, #0	@ tmp7695, tmp7694
	cmp	r8, #2	@ tmp7695,
	addgt	sl, sl, #1	@,, tmp7698, MisCnt.5780
	cmp	sl, #2	@ tmp7698,
	bgt	.L44	@,
	ldr	r3, [r6, #2040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2044]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2048]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7716, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7716,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7709, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7717, tmp7716
	cmp	lr, #0	@ tmp7709,
	rsb	r0, r2, r0	@ tmp7723, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7710, tmp7709
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7717,
	movle	sl, #0	@, tmp7719
	movgt	sl, #1	@, tmp7719
	ldrb	r8, [r6, #2055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7710,
	addgt	sl, sl, #1	@,, MisCnt.5806, tmp7719
	cmp	r0, #0	@ tmp7723,
	ldrb	r1, [r6, #2056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7730, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7724, tmp7723
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7724,
	addgt	sl, sl, #1	@,, MisCnt.5814, MisCnt.5806
	cmp	r8, #0	@ tmp7730,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7737, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7731, tmp7730
	ldrb	ip, [r6, #2057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7731,
	addgt	sl, sl, #1	@,, MisCnt.5822, MisCnt.5814
	cmp	r2, #0	@ tmp7737,
	ldrb	lr, [r6, #2058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7744, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7738, tmp7737
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7738,
	addgt	sl, sl, #1	@,, MisCnt.5830, MisCnt.5822
	cmp	ip, #0	@ tmp7744,
	ldrb	r0, [r6, #2059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7751, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7745, tmp7744
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7745,
	addgt	sl, sl, #1	@,, MisCnt.5838, MisCnt.5830
	cmp	r1, #0	@ tmp7751,
	rsb	r8, r2, r0	@ tmp7758, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7752, tmp7751
	cmp	r1, #2	@ tmp7752,
	addgt	sl, sl, #1	@,, MisCnt.5846, MisCnt.5838
	cmp	r8, #0	@ tmp7758,
	rsblt	r8, r8, #0	@ tmp7759, tmp7758
	cmp	r8, #2	@ tmp7759,
	addgt	sl, sl, #1	@,, tmp7762, MisCnt.5846
	cmp	sl, #2	@ tmp7762,
	bgt	.L44	@,
	ldr	r3, [r6, #2060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2064]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2068]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7780, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7780,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7773, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7781, tmp7780
	cmp	lr, #0	@ tmp7773,
	rsb	r0, r2, r0	@ tmp7787, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7774, tmp7773
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7781,
	movle	sl, #0	@, tmp7783
	movgt	sl, #1	@, tmp7783
	ldrb	r8, [r6, #2075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7774,
	addgt	sl, sl, #1	@,, MisCnt.5872, tmp7783
	cmp	r0, #0	@ tmp7787,
	ldrb	r1, [r6, #2076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7794, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7788, tmp7787
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7788,
	addgt	sl, sl, #1	@,, MisCnt.5880, MisCnt.5872
	cmp	r8, #0	@ tmp7794,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7801, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7795, tmp7794
	ldrb	ip, [r6, #2077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7795,
	addgt	sl, sl, #1	@,, MisCnt.5888, MisCnt.5880
	cmp	r2, #0	@ tmp7801,
	ldrb	lr, [r6, #2078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7808, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7802, tmp7801
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7802,
	addgt	sl, sl, #1	@,, MisCnt.5896, MisCnt.5888
	cmp	ip, #0	@ tmp7808,
	ldrb	r0, [r6, #2079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7815, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7809, tmp7808
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7809,
	addgt	sl, sl, #1	@,, MisCnt.5904, MisCnt.5896
	cmp	r1, #0	@ tmp7815,
	rsb	r8, r2, r0	@ tmp7822, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7816, tmp7815
	cmp	r1, #2	@ tmp7816,
	addgt	sl, sl, #1	@,, MisCnt.5912, MisCnt.5904
	cmp	r8, #0	@ tmp7822,
	rsblt	r8, r8, #0	@ tmp7823, tmp7822
	cmp	r8, #2	@ tmp7823,
	addgt	sl, sl, #1	@,, tmp7826, MisCnt.5912
	cmp	sl, #2	@ tmp7826,
	bgt	.L44	@,
	ldr	r3, [r6, #2080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2084]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2088]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp7844, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7844,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp7837, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7845, tmp7844
	cmp	r8, #0	@ tmp7837,
	rsb	r0, r2, r0	@ tmp7851, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7838, tmp7837
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7845,
	movle	r3, #0	@, tmp7847
	movgt	r3, #1	@, tmp7847
	ldrb	sl, [r6, #2095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7838,
	addgt	r3, r3, #1	@,, MisCnt.1869, tmp7847
	cmp	r0, #0	@ tmp7851,
	ldrb	r1, [r6, #2096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7858, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7852, tmp7851
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7852,
	addgt	r3, r3, #1	@,, MisCnt.1880, MisCnt.1869
	cmp	sl, #0	@ tmp7858,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7865, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7859, tmp7858
	ldrb	ip, [r6, #2097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7859,
	addgt	r3, r3, #1	@,, MisCnt.1891, MisCnt.1880
	cmp	r2, #0	@ tmp7865,
	ldrb	r8, [r6, #2098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7872, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7866, tmp7865
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7866,
	addgt	r3, r3, #1	@,, MisCnt.1901, MisCnt.1891
	cmp	ip, #0	@ tmp7872,
	ldrb	r0, [r6, #2099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7873, tmp7872
	rsb	r1, r1, r8	@ tmp7879, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7873,
	addgt	r3, r3, #1	@,, MisCnt.1911, MisCnt.1901
	cmp	r1, #0	@ tmp7879,
	rsb	ip, r2, r0	@ tmp7886, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7880, tmp7879
	cmp	r1, #2	@ tmp7880,
	addgt	r3, r3, #1	@,, MisCnt.1922, MisCnt.1911
	cmp	ip, #0	@ tmp7886,
	rsblt	ip, ip, #0	@ tmp7887, tmp7886
	cmp	ip, #2	@ tmp7887,
	addgt	r3, r3, #1	@,, tmp7890, MisCnt.1922
	cmp	r3, #2	@ tmp7890,
	movle	r0, #27	@ Result,
	ble	.L21	@,
.L44:
	ldr	r3, [r5, #2100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r5, #2104]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2108]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp7891,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp7891,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #2113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7908, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7908,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7901, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7909, tmp7908
	cmp	lr, #0	@ tmp7901,
	rsb	r0, r2, r0	@ tmp7915, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7902, tmp7901
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7909,
	movle	sl, #0	@, tmp7911
	movgt	sl, #1	@, tmp7911
	ldrb	r8, [r5, #2115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7902,
	addgt	sl, sl, #1	@,, MisCnt.5938, tmp7911
	cmp	r0, #0	@ tmp7915,
	ldrb	r1, [r5, #2116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7922, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7916, tmp7915
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7916,
	addgt	sl, sl, #1	@,, MisCnt.5946, MisCnt.5938
	cmp	r8, #0	@ tmp7922,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7929, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7923, tmp7922
	ldrb	ip, [r5, #2117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7923,
	addgt	sl, sl, #1	@,, MisCnt.5954, MisCnt.5946
	cmp	r2, #0	@ tmp7929,
	ldrb	lr, [r5, #2118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7936, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7930, tmp7929
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7930,
	addgt	sl, sl, #1	@,, MisCnt.5962, MisCnt.5954
	cmp	ip, #0	@ tmp7936,
	ldrb	r0, [r5, #2119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7937, tmp7936
	rsb	r1, r1, lr	@ tmp7943, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7937,
	addgt	sl, sl, #1	@,, MisCnt.5970, MisCnt.5962
	cmp	r1, #0	@ tmp7943,
	rsb	ip, r8, r0	@ tmp7950, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7944, tmp7943
	cmp	r1, #2	@ tmp7944,
	addgt	sl, sl, #1	@,, MisCnt.5978, MisCnt.5970
	cmp	ip, #0	@ tmp7950,
	rsblt	ip, ip, #0	@ tmp7951, tmp7950
	cmp	ip, #2	@ tmp7951,
	addgt	sl, sl, #1	@,, tmp7954, MisCnt.5978
	cmp	sl, #2	@ tmp7954,
	bgt	.L45	@,
	ldr	r3, [r6, #2120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2124]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2128]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp7972, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7972,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp7965, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7973, tmp7972
	cmp	lr, #0	@ tmp7965,
	rsb	r0, r2, r0	@ tmp7979, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7966, tmp7965
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7973,
	movle	sl, #0	@, tmp7975
	movgt	sl, #1	@, tmp7975
	ldrb	r8, [r6, #2135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7966,
	addgt	sl, sl, #1	@,, MisCnt.6004, tmp7975
	cmp	r0, #0	@ tmp7979,
	ldrb	r1, [r6, #2136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp7986, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7980, tmp7979
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7980,
	addgt	sl, sl, #1	@,, MisCnt.6012, MisCnt.6004
	cmp	r8, #0	@ tmp7986,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7993, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp7987, tmp7986
	ldrb	ip, [r6, #2137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp7987,
	addgt	sl, sl, #1	@,, MisCnt.6020, MisCnt.6012
	cmp	r2, #0	@ tmp7993,
	ldrb	lr, [r6, #2138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8000, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7994, tmp7993
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7994,
	addgt	sl, sl, #1	@,, MisCnt.6028, MisCnt.6020
	cmp	ip, #0	@ tmp8000,
	ldrb	r0, [r6, #2139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8007, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8001, tmp8000
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8001,
	addgt	sl, sl, #1	@,, MisCnt.6036, MisCnt.6028
	cmp	r1, #0	@ tmp8007,
	rsb	r8, r2, r0	@ tmp8014, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8008, tmp8007
	cmp	r1, #2	@ tmp8008,
	addgt	sl, sl, #1	@,, MisCnt.6044, MisCnt.6036
	cmp	r8, #0	@ tmp8014,
	rsblt	r8, r8, #0	@ tmp8015, tmp8014
	cmp	r8, #2	@ tmp8015,
	addgt	sl, sl, #1	@,, tmp8018, MisCnt.6044
	cmp	sl, #2	@ tmp8018,
	bgt	.L45	@,
	ldr	r3, [r6, #2140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2144]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2148]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp8036, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8036,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp8029, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8037, tmp8036
	cmp	lr, #0	@ tmp8029,
	rsb	r0, r2, r0	@ tmp8043, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8030, tmp8029
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8037,
	movle	sl, #0	@, tmp8039
	movgt	sl, #1	@, tmp8039
	ldrb	r8, [r6, #2155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8030,
	addgt	sl, sl, #1	@,, MisCnt.6070, tmp8039
	cmp	r0, #0	@ tmp8043,
	ldrb	r1, [r6, #2156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8050, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8044, tmp8043
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8044,
	addgt	sl, sl, #1	@,, MisCnt.6078, MisCnt.6070
	cmp	r8, #0	@ tmp8050,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8057, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8051, tmp8050
	ldrb	ip, [r6, #2157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8051,
	addgt	sl, sl, #1	@,, MisCnt.6086, MisCnt.6078
	cmp	r2, #0	@ tmp8057,
	ldrb	lr, [r6, #2158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8064, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8058, tmp8057
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8058,
	addgt	sl, sl, #1	@,, MisCnt.6094, MisCnt.6086
	cmp	ip, #0	@ tmp8064,
	ldrb	r0, [r6, #2159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8071, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8065, tmp8064
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8065,
	addgt	sl, sl, #1	@,, MisCnt.6102, MisCnt.6094
	cmp	r1, #0	@ tmp8071,
	rsb	r8, r2, r0	@ tmp8078, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8072, tmp8071
	cmp	r1, #2	@ tmp8072,
	addgt	sl, sl, #1	@,, MisCnt.6110, MisCnt.6102
	cmp	r8, #0	@ tmp8078,
	rsblt	r8, r8, #0	@ tmp8079, tmp8078
	cmp	r8, #2	@ tmp8079,
	addgt	sl, sl, #1	@,, tmp8082, MisCnt.6110
	cmp	sl, #2	@ tmp8082,
	bgt	.L45	@,
	ldr	r3, [r6, #2160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2164]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2168]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #2173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp8100, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8100,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp8093, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8101, tmp8100
	cmp	lr, #0	@ tmp8093,
	rsb	r0, r2, r0	@ tmp8107, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8094, tmp8093
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8101,
	movle	sl, #0	@, tmp8103
	movgt	sl, #1	@, tmp8103
	ldrb	r8, [r6, #2175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8094,
	addgt	sl, sl, #1	@,, MisCnt.6136, tmp8103
	cmp	r0, #0	@ tmp8107,
	ldrb	r1, [r6, #2176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8114, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8108, tmp8107
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8108,
	addgt	sl, sl, #1	@,, MisCnt.6144, MisCnt.6136
	cmp	r8, #0	@ tmp8114,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8121, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8115, tmp8114
	ldrb	ip, [r6, #2177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8115,
	addgt	sl, sl, #1	@,, MisCnt.6152, MisCnt.6144
	cmp	r2, #0	@ tmp8121,
	ldrb	lr, [r6, #2178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8128, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8122, tmp8121
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8122,
	addgt	sl, sl, #1	@,, MisCnt.6160, MisCnt.6152
	cmp	ip, #0	@ tmp8128,
	ldrb	r0, [r6, #2179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8135, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8129, tmp8128
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8129,
	addgt	sl, sl, #1	@,, MisCnt.6168, MisCnt.6160
	cmp	r1, #0	@ tmp8135,
	rsb	r8, r2, r0	@ tmp8142, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8136, tmp8135
	cmp	r1, #2	@ tmp8136,
	addgt	sl, sl, #1	@,, MisCnt.6176, MisCnt.6168
	cmp	r8, #0	@ tmp8142,
	rsblt	r8, r8, #0	@ tmp8143, tmp8142
	cmp	r8, #2	@ tmp8143,
	addgt	sl, sl, #1	@,, tmp8146, MisCnt.6176
	cmp	sl, #2	@ tmp8146,
	bgt	.L45	@,
	ldr	r3, [r6, #2180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2184]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #2193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp8164, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8164,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp8157, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8165, tmp8164
	cmp	r8, #0	@ tmp8157,
	rsb	r0, r2, r0	@ tmp8171, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8158, tmp8157
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8165,
	movle	r3, #0	@, tmp8167
	movgt	r3, #1	@, tmp8167
	ldrb	sl, [r6, #2195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8158,
	addgt	r3, r3, #1	@,, MisCnt.1943, tmp8167
	cmp	r0, #0	@ tmp8171,
	ldrb	r1, [r6, #2196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8178, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8172, tmp8171
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8172,
	addgt	r3, r3, #1	@,, MisCnt.1952, MisCnt.1943
	cmp	sl, #0	@ tmp8178,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8185, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8179, tmp8178
	ldrb	ip, [r6, #2197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8179,
	addgt	r3, r3, #1	@,, MisCnt.1963, MisCnt.1952
	cmp	r2, #0	@ tmp8185,
	ldrb	r8, [r6, #2198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8192, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8186, tmp8185
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8186,
	addgt	r3, r3, #1	@,, MisCnt.1974, MisCnt.1963
	cmp	ip, #0	@ tmp8192,
	ldrb	r0, [r6, #2199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8193, tmp8192
	rsb	r1, r1, r8	@ tmp8199, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8193,
	addgt	r3, r3, #1	@,, MisCnt.1983, MisCnt.1974
	cmp	r1, #0	@ tmp8199,
	rsb	ip, r2, r0	@ tmp8206, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8200, tmp8199
	cmp	r1, #2	@ tmp8200,
	addgt	r3, r3, #1	@,, MisCnt.1994, MisCnt.1983
	cmp	ip, #0	@ tmp8206,
	rsblt	ip, ip, #0	@ tmp8207, tmp8206
	cmp	ip, #2	@ tmp8207,
	addgt	r3, r3, #1	@,, tmp8210, MisCnt.1994
	cmp	r3, #2	@ tmp8210,
	movle	r0, #28	@ Result,
	ble	.L21	@,
.L45:
	ldr	r3, [r5, #2200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r5, #2204]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #2208]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp8211,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp8211,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #2213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #2212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp8228, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8228,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp8221, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #2214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8229, tmp8228
	cmp	r8, #0	@ tmp8221,
	rsb	r0, r2, r0	@ tmp8235, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8222, tmp8221
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8229,
	movle	r3, #0	@, tmp8231
	movgt	r3, #1	@, tmp8231
	ldrb	sl, [r5, #2215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8222,
	addgt	r3, r3, #1	@,, MisCnt.6202, tmp8231
	cmp	r0, #0	@ tmp8235,
	ldrb	r1, [r5, #2216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8242, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8236, tmp8235
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8236,
	addgt	r3, r3, #1	@,, MisCnt.6210, MisCnt.6202
	cmp	sl, #0	@ tmp8242,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8249, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8243, tmp8242
	ldrb	ip, [r5, #2217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8243,
	addgt	r3, r3, #1	@,, MisCnt.6218, MisCnt.6210
	cmp	r2, #0	@ tmp8249,
	ldrb	r8, [r5, #2218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8256, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8250, tmp8249
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8250,
	addgt	r3, r3, #1	@,, MisCnt.6226, MisCnt.6218
	cmp	ip, #0	@ tmp8256,
	ldrb	r0, [r5, #2219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8257, tmp8256
	rsb	r1, r1, r8	@ tmp8263, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8257,
	addgt	r3, r3, #1	@,, MisCnt.6234, MisCnt.6226
	cmp	r1, #0	@ tmp8263,
	rsb	ip, r2, r0	@ tmp8270, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8264, tmp8263
	cmp	r1, #2	@ tmp8264,
	addgt	r3, r3, #1	@,, MisCnt.6242, MisCnt.6234
	cmp	ip, #0	@ tmp8270,
	rsblt	ip, ip, #0	@ tmp8271, tmp8270
	cmp	ip, #2	@ tmp8271,
	addgt	r3, r3, #1	@,, tmp8274, MisCnt.6242
	cmp	r3, #2	@ tmp8274,
	bgt	.L36	@,
	ldr	r3, [r6, #2220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2224]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #2233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp8292, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8292,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp8285, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8293, tmp8292
	cmp	r5, #0	@ tmp8285,
	rsb	r0, r2, r0	@ tmp8299, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8286, tmp8285
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8293,
	movle	r3, #0	@, tmp8295
	movgt	r3, #1	@, tmp8295
	ldrb	r8, [r6, #2235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8286,
	addgt	r3, r3, #1	@,, MisCnt.6268, tmp8295
	cmp	r0, #0	@ tmp8299,
	ldrb	r1, [r6, #2236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8306, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8300, tmp8299
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8300,
	addgt	r3, r3, #1	@,, MisCnt.6276, MisCnt.6268
	cmp	r8, #0	@ tmp8306,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8313, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8307, tmp8306
	ldrb	ip, [r6, #2237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8307,
	addgt	r3, r3, #1	@,, MisCnt.6284, MisCnt.6276
	cmp	r2, #0	@ tmp8313,
	ldrb	r5, [r6, #2238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8320, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8314, tmp8313
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8314,
	addgt	r3, r3, #1	@,, MisCnt.6292, MisCnt.6284
	cmp	ip, #0	@ tmp8320,
	ldrb	r0, [r6, #2239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8321, tmp8320
	rsb	r1, r1, r5	@ tmp8327, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8321,
	addgt	r3, r3, #1	@,, MisCnt.6300, MisCnt.6292
	cmp	r1, #0	@ tmp8327,
	rsb	ip, r2, r0	@ tmp8334, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8328, tmp8327
	cmp	r1, #2	@ tmp8328,
	addgt	r3, r3, #1	@,, MisCnt.6308, MisCnt.6300
	cmp	ip, #0	@ tmp8334,
	rsblt	ip, ip, #0	@ tmp8335, tmp8334
	cmp	ip, #2	@ tmp8335,
	addgt	r3, r3, #1	@,, tmp8338, MisCnt.6308
	cmp	r3, #2	@ tmp8338,
	bgt	.L36	@,
	ldr	r3, [r6, #2240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2244]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #2253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp8356, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8356,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp8349, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8357, tmp8356
	cmp	r5, #0	@ tmp8349,
	rsb	r0, r2, r0	@ tmp8363, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8350, tmp8349
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8357,
	movle	r3, #0	@, tmp8359
	movgt	r3, #1	@, tmp8359
	ldrb	r8, [r6, #2255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8350,
	addgt	r3, r3, #1	@,, MisCnt.6334, tmp8359
	cmp	r0, #0	@ tmp8363,
	ldrb	r1, [r6, #2256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8370, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8364, tmp8363
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8364,
	addgt	r3, r3, #1	@,, MisCnt.6342, MisCnt.6334
	cmp	r8, #0	@ tmp8370,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8377, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8371, tmp8370
	ldrb	ip, [r6, #2257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8371,
	addgt	r3, r3, #1	@,, MisCnt.6350, MisCnt.6342
	cmp	r2, #0	@ tmp8377,
	ldrb	r5, [r6, #2258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8384, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8378, tmp8377
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8378,
	addgt	r3, r3, #1	@,, MisCnt.6358, MisCnt.6350
	cmp	ip, #0	@ tmp8384,
	ldrb	r0, [r6, #2259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8385, tmp8384
	rsb	r1, r1, r5	@ tmp8391, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8385,
	addgt	r3, r3, #1	@,, MisCnt.6366, MisCnt.6358
	cmp	r1, #0	@ tmp8391,
	rsb	ip, r2, r0	@ tmp8398, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8392, tmp8391
	cmp	r1, #2	@ tmp8392,
	addgt	r3, r3, #1	@,, MisCnt.6374, MisCnt.6366
	cmp	ip, #0	@ tmp8398,
	rsblt	ip, ip, #0	@ tmp8399, tmp8398
	cmp	ip, #2	@ tmp8399,
	addgt	r3, r3, #1	@,, tmp8402, MisCnt.6374
	cmp	r3, #2	@ tmp8402,
	bgt	.L36	@,
	ldr	r3, [r6, #2260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12184
	ldr	r2, [r6, #2264]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #2268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #2273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #2272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp8420, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8420,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp8413, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8421, tmp8420
	cmp	r5, #0	@ tmp8413,
	rsb	r0, r2, r0	@ tmp8427, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8414, tmp8413
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8421,
	movle	r3, #0	@, tmp8423
	movgt	r3, #1	@, tmp8423
	ldrb	r8, [r6, #2275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8414,
	addgt	r3, r3, #1	@,, MisCnt.6400, tmp8423
	cmp	r0, #0	@ tmp8427,
	ldrb	r1, [r6, #2276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp8434, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8428, tmp8427
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8428,
	addgt	r3, r3, #1	@,, MisCnt.6408, MisCnt.6400
	cmp	r8, #0	@ tmp8434,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8441, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp8435, tmp8434
	ldrb	ip, [r6, #2277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp8435,
	addgt	r3, r3, #1	@,, MisCnt.6416, MisCnt.6408
	cmp	r2, #0	@ tmp8441,
	ldrb	r5, [r6, #2278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8448, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8442, tmp8441
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8442,
	addgt	r3, r3, #1	@,, MisCnt.6424, MisCnt.6416
	cmp	ip, #0	@ tmp8448,
	ldrb	r0, [r6, #2279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8449, tmp8448
	rsb	r1, r1, r5	@ tmp8455, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8449,
	addgt	r3, r3, #1	@,, MisCnt.6432, MisCnt.6424
	cmp	r1, #0	@ tmp8455,
	rsb	ip, r2, r0	@ tmp8462, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8456, tmp8455
	cmp	r1, #2	@ tmp8456,
	addgt	r3, r3, #1	@,, MisCnt.6440, MisCnt.6432
	cmp	ip, #0	@ tmp8462,
	rsblt	ip, ip, #0	@ tmp8463, tmp8462
	cmp	ip, #2	@ tmp8463,
	addgt	r3, r3, #1	@,, tmp8466, MisCnt.6440
	cmp	r3, #2	@ tmp8466,
	bgt	.L36	@,
	ldr	r3, [r6, #2280]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r4	@, pDetPara
	ldr	r2, [r6, #2284]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12184
	ldr	lr, [r6, #2288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #2293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #2292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp8484, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8484,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp8477, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8485, tmp8484
	cmp	r4, #0	@ tmp8477,
	rsb	r0, r2, r0	@ tmp8491, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp8478, tmp8477
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8485,
	movle	r3, #0	@, tmp8487
	movgt	r3, #1	@, tmp8487
	ldrb	r5, [r6, #2295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp8478,
	addgt	r3, r3, #1	@,, MisCnt.2015, tmp8487
	cmp	r0, #0	@ tmp8491,
	ldrb	r1, [r6, #2296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp8498, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8492, tmp8491
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8492,
	addgt	r3, r3, #1	@,, MisCnt.2025, MisCnt.2015
	cmp	r5, #0	@ tmp8498,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8505, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8499, tmp8498
	ldrb	ip, [r6, #2297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8499,
	addgt	r3, r3, #1	@,, MisCnt.2034, MisCnt.2025
	cmp	r2, #0	@ tmp8505,
	ldrb	r4, [r6, #2298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8512, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8506, tmp8505
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8506,
	addgt	r3, r3, #1	@,, MisCnt.2045, MisCnt.2034
	cmp	ip, #0	@ tmp8512,
	ldrb	r0, [r6, #2299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8513, tmp8512
	rsb	r1, r1, r4	@ tmp8519, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8513,
	addgt	r3, r3, #1	@,, MisCnt.2056, MisCnt.2045
	cmp	r1, #0	@ tmp8519,
	rsb	ip, r2, r0	@ tmp8526, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8520, tmp8519
	cmp	r1, #2	@ tmp8520,
	addgt	r3, r3, #1	@,, MisCnt.2064, MisCnt.2056
	cmp	ip, #0	@ tmp8526,
	rsblt	ip, ip, #0	@ tmp8527, tmp8526
	cmp	ip, #2	@ tmp8527,
	addgt	r3, r3, #1	@,, tmp8530, MisCnt.2064
	cmp	r3, #2	@ tmp8530,
	bgt	.L36	@,
	mov	r0, #29	@ Result,
	b	.L21	@
.L70:
	movw	r5, #:lower16:.LANCHOR0	@ tmp12182,
	movt	r5, #:upper16:.LANCHOR0	@ tmp12182,
	add	r7, sp, #4	@ tmp12181,,
	mov	r1, r4	@, pDetPara
	ldr	ip, [r5, #0]	@ <variable>.Comp, <variable>.Comp
	ldr	sl, [r5, #4]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12181
	ldr	lr, [r5, #8]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	sl, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r6, [r5, #13]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r5, #12]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r0, r6	@ tmp1188, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [r5, #14]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1188,
	rsb	lr, r1, r8	@ tmp1181, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1189, tmp1188
	cmp	lr, #0	@ tmp1181,
	rsb	r0, r2, sl	@ tmp1195, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1182, tmp1181
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1189,
	movle	r8, #0	@, tmp1191
	movgt	r8, #1	@, tmp1191
	ldrb	r6, [r5, #15]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1182,
	addgt	r8, r8, #1	@,, MisCnt.7852, tmp1191
	cmp	r0, #0	@ tmp1195,
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp1202, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1196, tmp1195
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1196,
	addgt	r8, r8, #1	@,, MisCnt.7860, MisCnt.7852
	cmp	r6, #0	@ tmp1202,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1209, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp1203, tmp1202
	ldrb	ip, [r5, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp1203,
	addgt	r8, r8, #1	@,, MisCnt.7868, MisCnt.7860
	cmp	r2, #0	@ tmp1209,
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1216, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1210, tmp1209
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1210,
	addgt	r8, r8, #1	@,, MisCnt.7876, MisCnt.7868
	cmp	ip, #0	@ tmp1216,
	ldrb	r0, [r5, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp1223, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1217, tmp1216
	ldrb	r6, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1217,
	addgt	r8, r8, #1	@,, MisCnt.7884, MisCnt.7876
	cmp	r1, #0	@ tmp1223,
	rsb	r2, r6, r0	@ tmp1230, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1224, tmp1223
	cmp	r1, #2	@ tmp1224,
	addgt	r8, r8, #1	@,, MisCnt.7892, MisCnt.7884
	cmp	r2, #0	@ tmp1230,
	rsblt	r2, r2, #0	@ tmp1231, tmp1230
	cmp	r2, #2	@ tmp1231,
	addgt	r8, r8, #1	@,, tmp1234, MisCnt.7892
	cmp	r8, #2	@ tmp1234,
	bgt	.L20	@,
	ldr	ip, [r5, #20]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r6, [r5, #24]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #28]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r6, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #33]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #32]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r0, r8	@ tmp1252, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1252,
	ldrb	r6, [r5, #34]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, sl	@ tmp1245, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1253, tmp1252
	cmp	lr, #0	@ tmp1245,
	rsb	r0, r2, r6	@ tmp1259, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1246, tmp1245
	ldrb	r8, [r5, #35]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1253,
	movle	r3, #0	@, tmp1255
	movgt	r3, #1	@, tmp1255
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1246,
	addgt	r3, r3, #1	@,, MisCnt.7918, tmp1255
	cmp	r0, #0	@ tmp1259,
	ldrb	r1, [r5, #36]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r8	@ tmp1266, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1260, tmp1259
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1260,
	addgt	r3, r3, #1	@,, MisCnt.7926, MisCnt.7918
	cmp	r6, #0	@ tmp1266,
	ldrb	r8, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1273, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp1267, tmp1266
	ldrb	ip, [r5, #37]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp1267,
	addgt	r3, r3, #1	@,, MisCnt.7934, MisCnt.7926
	cmp	r2, #0	@ tmp1273,
	ldrb	lr, [r5, #38]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r8, ip	@ tmp1280, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1274, tmp1273
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1274,
	addgt	r3, r3, #1	@,, MisCnt.7942, MisCnt.7934
	cmp	sl, #0	@ tmp1280,
	ldrb	r0, [r5, #39]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r1, lr	@ tmp1287, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1281, tmp1280
	ldrb	r6, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1281,
	addgt	r3, r3, #1	@,, MisCnt.7950, MisCnt.7942
	cmp	r8, #0	@ tmp1287,
	rsb	r2, r6, r0	@ tmp1294, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1288, tmp1287
	cmp	r8, #2	@ tmp1288,
	addgt	r3, r3, #1	@,, MisCnt.7958, MisCnt.7950
	cmp	r2, #0	@ tmp1294,
	rsblt	r2, r2, #0	@ tmp1295, tmp1294
	cmp	r2, #2	@ tmp1295,
	addgt	r3, r3, #1	@,, tmp1298, MisCnt.7958
	cmp	r3, #2	@ tmp1298,
	bgt	.L20	@,
	ldr	r6, [r5, #40]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r8, [r5, #44]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #48]	@ <variable>.Py, <variable>.Py
	str	r6, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	mov	r6, r5	@ tmp1299, tmp12182
	str	r8, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #53]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #52]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1316, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1316,
	ldrb	r8, [r5, #54]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1309, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1317, tmp1316
	cmp	lr, #0	@ tmp1309,
	rsb	r0, r2, r8	@ tmp1323, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1310, tmp1309
	ldrb	sl, [r5, #55]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1317,
	movle	r3, #0	@, tmp1319
	movgt	r3, #1	@, tmp1319
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1310,
	addgt	r3, r3, #1	@,, MisCnt.7984, tmp1319
	cmp	r0, #0	@ tmp1323,
	ldrb	r1, [r5, #56]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp1330, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1324, tmp1323
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1324,
	addgt	r3, r3, #1	@,, MisCnt.7992, MisCnt.7984
	cmp	r8, #0	@ tmp1330,
	ldrb	sl, [r5, #57]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1337, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1331, tmp1330
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp1331,
	addgt	r3, r3, #1	@,, MisCnt.8000, MisCnt.7992
	cmp	r2, #0	@ tmp1337,
	ldrb	lr, [r5, #58]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp1344, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1338, tmp1337
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1338,
	addgt	r3, r3, #1	@,, MisCnt.8008, MisCnt.8000
	cmp	ip, #0	@ tmp1344,
	ldrb	r0, [r5, #59]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, lr	@ tmp1351, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1345, tmp1344
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1345,
	addgt	r3, r3, #1	@,, MisCnt.8016, MisCnt.8008
	cmp	sl, #0	@ tmp1351,
	rsb	r2, r8, r0	@ tmp1358, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1352, tmp1351
	cmp	sl, #2	@ tmp1352,
	addgt	r3, r3, #1	@,, MisCnt.8024, MisCnt.8016
	cmp	r2, #0	@ tmp1358,
	rsblt	r2, r2, #0	@ tmp1359, tmp1358
	cmp	r2, #2	@ tmp1359,
	addgt	r3, r3, #1	@,, tmp1362, MisCnt.8024
	cmp	r3, #2	@ tmp1362,
	bgt	.L20	@,
	ldr	r2, [r5, #60]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r8, [r5, #64]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #68]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, r8, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r5, #73]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #72]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1380, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1380,
	ldrb	r8, [r5, #74]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1373, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1381, tmp1380
	cmp	lr, #0	@ tmp1373,
	rsb	r0, r2, r8	@ tmp1387, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1374, tmp1373
	ldrb	sl, [r5, #75]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1381,
	movle	r3, #0	@, tmp1383
	movgt	r3, #1	@, tmp1383
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1374,
	addgt	r3, r3, #1	@,, MisCnt.8050, tmp1383
	cmp	r0, #0	@ tmp1387,
	ldrb	r1, [r5, #76]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp1394, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1388, tmp1387
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1388,
	addgt	r3, r3, #1	@,, MisCnt.8058, MisCnt.8050
	cmp	r8, #0	@ tmp1394,
	ldrb	sl, [r5, #77]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1401, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1395, tmp1394
	ldrb	lr, [r5, #78]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1395,
	addgt	r3, r3, #1	@,, MisCnt.8066, MisCnt.8058
	cmp	r2, #0	@ tmp1401,
	rsb	ip, r0, sl	@ tmp1408, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1402, tmp1401
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1402,
	addgt	r3, r3, #1	@,, MisCnt.8074, MisCnt.8066
	cmp	ip, #0	@ tmp1408,
	ldrb	r0, [r5, #79]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1415, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1409, tmp1408
	ldrb	sl, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1409,
	addgt	r3, r3, #1	@,, MisCnt.8082, MisCnt.8074
	cmp	r1, #0	@ tmp1415,
	rsb	r2, sl, r0	@ tmp1422, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1416, tmp1415
	cmp	r1, #2	@ tmp1416,
	addgt	r3, r3, #1	@,, MisCnt.8090, MisCnt.8082
	cmp	r2, #0	@ tmp1422,
	rsblt	r2, r2, #0	@ tmp1423, tmp1422
	cmp	r2, #2	@ tmp1423,
	addgt	r3, r3, #1	@,, tmp1426, MisCnt.8090
	cmp	r3, #2	@ tmp1426,
	bgt	.L20	@,
	ldr	r3, [r5, #80]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #84]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #88]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #93]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #92]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp1444, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1444,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp1437, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #94]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1445, tmp1444
	cmp	r8, #0	@ tmp1437,
	rsb	r0, r2, r0	@ tmp1451, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1438, tmp1437
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1445,
	movle	r3, #0	@, tmp1447
	movgt	r3, #1	@, tmp1447
	ldrb	sl, [r5, #95]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1438,
	addgt	r3, r3, #1	@,, MisCnt.2417, tmp1447
	cmp	r0, #0	@ tmp1451,
	ldrb	r1, [r5, #96]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp1458, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1452, tmp1451
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1452,
	addgt	r3, r3, #1	@,, MisCnt.2427, MisCnt.2417
	cmp	sl, #0	@ tmp1458,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1465, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1459, tmp1458
	ldrb	ip, [r5, #97]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1459,
	addgt	r3, r3, #1	@,, MisCnt.2436, MisCnt.2427
	cmp	r2, #0	@ tmp1465,
	ldrb	r8, [r5, #98]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1472, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1466, tmp1465
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1466,
	addgt	r3, r3, #1	@,, MisCnt.2445, MisCnt.2436
	cmp	ip, #0	@ tmp1472,
	ldrb	r0, [r5, #99]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1473, tmp1472
	rsb	r1, r1, r8	@ tmp1479, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1473,
	addgt	r3, r3, #1	@,, MisCnt.2454, MisCnt.2445
	cmp	r1, #0	@ tmp1479,
	rsb	ip, r2, r0	@ tmp1486, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1480, tmp1479
	cmp	r1, #2	@ tmp1480,
	addgt	r3, r3, #1	@,, MisCnt.2462, MisCnt.2454
	cmp	ip, #0	@ tmp1486,
	rsblt	ip, ip, #0	@ tmp1487, tmp1486
	cmp	ip, #2	@ tmp1487,
	addgt	r3, r3, #1	@,, tmp1490, MisCnt.2462
	cmp	r3, #2	@ tmp1490,
	movle	r0, #1	@ Result,
	ble	.L21	@,
.L20:
	ldr	ip, [r5, #100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	sl, [r5, #104]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #108]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp1491,
	str	ip, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp1491,
	str	sl, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r1, [r5, #113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r5, #112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r2, r1	@ tmp1508, SmpPat.Pix, <variable>.Pix
	cmp	r8, #0	@ tmp1508,
	ldrb	sl, [r5, #114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp1501, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1509, tmp1508
	cmp	lr, #0	@ tmp1501,
	rsblt	lr, lr, #0	@ tmp1502, tmp1501
	ldrb	r0, [r5, #115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1509,
	movle	r1, #0	@, tmp1511
	movgt	r1, #1	@, tmp1511
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, ip, sl	@ tmp1515, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1502,
	addgt	r1, r1, #1	@,, MisCnt.8116, tmp1511
	cmp	r8, #0	@ tmp1515,
	rsb	sl, r3, r0	@ tmp1522, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r8, r8, #0	@ tmp1516, tmp1515
	ldrb	ip, [r5, #116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1516,
	movle	r8, r1	@, MisCnt.8124, MisCnt.8116
	addgt	r8, r1, #1	@,, MisCnt.8124, MisCnt.8116
	cmp	sl, #0	@ tmp1522,
	ldrb	r0, [r5, #117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp1529, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1523, tmp1522
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1523,
	movle	r3, r8	@, MisCnt.8132, MisCnt.8124
	addgt	r3, r8, #1	@,, MisCnt.8132, MisCnt.8124
	cmp	ip, #0	@ tmp1529,
	ldrb	lr, [r5, #118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp1536, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1530, tmp1529
	ldrb	r2, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1530,
	movle	ip, r3	@, MisCnt.8140, MisCnt.8132
	addgt	ip, r3, #1	@,, MisCnt.8140, MisCnt.8132
	cmp	sl, #0	@ tmp1536,
	ldrb	r0, [r5, #119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1537, tmp1536
	rsb	r8, r2, lr	@ tmp1543, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1537,
	movle	r1, ip	@, MisCnt.8148, MisCnt.8140
	addgt	r1, ip, #1	@,, MisCnt.8148, MisCnt.8140
	cmp	r8, #0	@ tmp1543,
	rsb	sl, r3, r0	@ tmp1550, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1544, tmp1543
	cmp	r8, #2	@ tmp1544,
	movle	ip, r1	@, MisCnt.8156, MisCnt.8148
	addgt	ip, r1, #1	@,, MisCnt.8156, MisCnt.8148
	cmp	sl, #0	@ tmp1550,
	rsblt	sl, sl, #0	@ tmp1551, tmp1550
	cmp	sl, #2	@ tmp1551,
	movle	r0, ip	@, tmp1554, MisCnt.8156
	addgt	r0, ip, #1	@,, tmp1554, MisCnt.8156
	cmp	r0, #2	@ tmp1554,
	bgt	.L22	@,
	ldr	r2, [r6, #120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	sl, [r6, #124]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #128]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1572, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1572,
	ldrb	sl, [r6, #134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1565, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1573, tmp1572
	cmp	lr, #0	@ tmp1565,
	rsb	r0, r2, sl	@ tmp1579, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1566, tmp1565
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1573,
	movle	r3, #0	@, tmp1575
	movgt	r3, #1	@, tmp1575
	ldrb	r8, [r6, #135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1566,
	addgt	r3, r3, #1	@,, MisCnt.8182, tmp1575
	cmp	r0, #0	@ tmp1579,
	ldrb	r1, [r6, #136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1586, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1580, tmp1579
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1580,
	addgt	r3, r3, #1	@,, MisCnt.8190, MisCnt.8182
	cmp	r8, #0	@ tmp1586,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1593, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1587, tmp1586
	ldrb	ip, [r6, #137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1587,
	addgt	r3, r3, #1	@,, MisCnt.8198, MisCnt.8190
	cmp	r2, #0	@ tmp1593,
	ldrb	lr, [r6, #138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, ip	@ tmp1600, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1594, tmp1593
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1594,
	addgt	r3, r3, #1	@,, MisCnt.8206, MisCnt.8198
	cmp	sl, #0	@ tmp1600,
	ldrb	r0, [r6, #139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1607, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1601, tmp1600
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1601,
	addgt	r3, r3, #1	@,, MisCnt.8214, MisCnt.8206
	cmp	r1, #0	@ tmp1607,
	rsb	r8, r2, r0	@ tmp1614, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1608, tmp1607
	cmp	r1, #2	@ tmp1608,
	addgt	r3, r3, #1	@,, MisCnt.8222, MisCnt.8214
	cmp	r8, #0	@ tmp1614,
	rsblt	r8, r8, #0	@ tmp1615, tmp1614
	cmp	r8, #2	@ tmp1615,
	addgt	r3, r3, #1	@,, tmp1618, MisCnt.8222
	cmp	r3, #2	@ tmp1618,
	bgt	.L22	@,
	ldr	r2, [r6, #140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r8, [r6, #144]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #148]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, r8, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1636, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1636,
	ldrb	r8, [r6, #154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1629, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1637, tmp1636
	cmp	lr, #0	@ tmp1629,
	rsb	r0, r2, r8	@ tmp1643, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1630, tmp1629
	ldrb	sl, [r6, #155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1637,
	movle	r3, #0	@, tmp1639
	movgt	r3, #1	@, tmp1639
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1630,
	addgt	r3, r3, #1	@,, MisCnt.8248, tmp1639
	cmp	r0, #0	@ tmp1643,
	ldrb	r1, [r6, #156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, sl	@ tmp1650, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1644, tmp1643
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1644,
	addgt	r3, r3, #1	@,, MisCnt.8256, MisCnt.8248
	cmp	r8, #0	@ tmp1650,
	ldrb	sl, [r6, #157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1657, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1651, tmp1650
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r8, #2	@ tmp1651,
	addgt	r3, r3, #1	@,, MisCnt.8264, MisCnt.8256
	cmp	r2, #0	@ tmp1657,
	ldrb	lr, [r6, #158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, sl	@ tmp1664, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1658, tmp1657
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1658,
	addgt	r3, r3, #1	@,, MisCnt.8272, MisCnt.8264
	cmp	ip, #0	@ tmp1664,
	ldrb	r0, [r6, #159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1671, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1665, tmp1664
	ldrb	sl, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1665,
	addgt	r3, r3, #1	@,, MisCnt.8280, MisCnt.8272
	cmp	r1, #0	@ tmp1671,
	rsb	r8, sl, r0	@ tmp1678, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1672, tmp1671
	cmp	r1, #2	@ tmp1672,
	addgt	r3, r3, #1	@,, MisCnt.8288, MisCnt.8280
	cmp	r8, #0	@ tmp1678,
	rsblt	r8, r8, #0	@ tmp1679, tmp1678
	cmp	r8, #2	@ tmp1679,
	addgt	r3, r3, #1	@,, tmp1682, MisCnt.8288
	cmp	r3, #2	@ tmp1682,
	bgt	.L22	@,
	ldr	r2, [r6, #160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	sl, [r6, #164]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #168]	@ <variable>.Py, <variable>.Py
	stmib	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1700, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1700,
	ldrb	sl, [r6, #174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1693, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1701, tmp1700
	cmp	lr, #0	@ tmp1693,
	rsb	r0, r2, sl	@ tmp1707, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1694, tmp1693
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1701,
	movle	r3, #0	@, tmp1703
	movgt	r3, #1	@, tmp1703
	ldrb	r8, [r6, #175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1694,
	addgt	r3, r3, #1	@,, MisCnt.8314, tmp1703
	cmp	r0, #0	@ tmp1707,
	ldrb	r1, [r6, #176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1714, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1708, tmp1707
	ldrb	sl, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1708,
	addgt	r3, r3, #1	@,, MisCnt.8322, MisCnt.8314
	cmp	r8, #0	@ tmp1714,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1721, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1715, tmp1714
	ldrb	ip, [r6, #177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1715,
	addgt	r3, r3, #1	@,, MisCnt.8330, MisCnt.8322
	cmp	r2, #0	@ tmp1721,
	ldrb	sl, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp1728, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1722, tmp1721
	ldrb	lr, [r6, #178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp1722,
	addgt	r3, r3, #1	@,, MisCnt.8338, MisCnt.8330
	cmp	ip, #0	@ tmp1728,
	ldrb	r0, [r6, #179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp1735, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1729, tmp1728
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1729,
	addgt	r3, r3, #1	@,, MisCnt.8346, MisCnt.8338
	cmp	r1, #0	@ tmp1735,
	rsb	sl, r8, r0	@ tmp1742, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1736, tmp1735
	cmp	r1, #2	@ tmp1736,
	addgt	r3, r3, #1	@,, MisCnt.8354, MisCnt.8346
	cmp	sl, #0	@ tmp1742,
	rsblt	sl, sl, #0	@ tmp1743, tmp1742
	cmp	sl, #2	@ tmp1743,
	addgt	r3, r3, #1	@,, tmp1746, MisCnt.8354
	cmp	r3, #2	@ tmp1746,
	bgt	.L22	@,
	ldr	r3, [r6, #180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #184]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp1764, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1764,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp1757, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1765, tmp1764
	cmp	r8, #0	@ tmp1757,
	rsb	r0, r2, r0	@ tmp1771, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1758, tmp1757
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1765,
	movle	r3, #0	@, tmp1767
	movgt	r3, #1	@, tmp1767
	ldrb	sl, [r6, #195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1758,
	addgt	r3, r3, #1	@,, MisCnt.2480, tmp1767
	cmp	r0, #0	@ tmp1771,
	ldrb	r1, [r6, #196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp1778, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1772, tmp1771
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1772,
	addgt	r3, r3, #1	@,, MisCnt.2488, MisCnt.2480
	cmp	sl, #0	@ tmp1778,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1785, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1779, tmp1778
	ldrb	ip, [r6, #197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1779,
	addgt	r3, r3, #1	@,, MisCnt.2498, MisCnt.2488
	cmp	r2, #0	@ tmp1785,
	ldrb	r8, [r6, #198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1792, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1786, tmp1785
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1786,
	addgt	r3, r3, #1	@,, MisCnt.2509, MisCnt.2498
	cmp	ip, #0	@ tmp1792,
	ldrb	r0, [r6, #199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1793, tmp1792
	rsb	r1, r1, r8	@ tmp1799, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1793,
	addgt	r3, r3, #1	@,, MisCnt.2520, MisCnt.2509
	cmp	r1, #0	@ tmp1799,
	rsb	ip, r2, r0	@ tmp1806, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1800, tmp1799
	cmp	r1, #2	@ tmp1800,
	addgt	r3, r3, #1	@,, MisCnt.2528, MisCnt.2520
	cmp	ip, #0	@ tmp1806,
	rsblt	ip, ip, #0	@ tmp1807, tmp1806
	cmp	ip, #2	@ tmp1807,
	addgt	r3, r3, #1	@,, tmp1810, MisCnt.2528
	cmp	r3, #2	@ tmp1810,
	movle	r0, #2	@ Result,
	ble	.L21	@,
.L22:
	ldr	r3, [r5, #200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #204]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #208]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp1811,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp1811,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1828, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1828,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp1821, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1829, tmp1828
	cmp	lr, #0	@ tmp1821,
	rsb	r0, r2, r0	@ tmp1835, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1822, tmp1821
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1829,
	movle	sl, #0	@, tmp1831
	movgt	sl, #1	@, tmp1831
	ldrb	r8, [r5, #215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1822,
	addgt	sl, sl, #1	@,, MisCnt.8380, tmp1831
	cmp	r0, #0	@ tmp1835,
	ldrb	r1, [r5, #216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1842, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1836, tmp1835
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1836,
	addgt	sl, sl, #1	@,, MisCnt.8388, MisCnt.8380
	cmp	r8, #0	@ tmp1842,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1849, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1843, tmp1842
	ldrb	ip, [r5, #217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1843,
	addgt	sl, sl, #1	@,, MisCnt.8396, MisCnt.8388
	cmp	r2, #0	@ tmp1849,
	ldrb	lr, [r5, #218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1856, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1850, tmp1849
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1850,
	addgt	sl, sl, #1	@,, MisCnt.8404, MisCnt.8396
	cmp	ip, #0	@ tmp1856,
	ldrb	r0, [r5, #219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1857, tmp1856
	rsb	r1, r1, lr	@ tmp1863, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1857,
	addgt	sl, sl, #1	@,, MisCnt.8412, MisCnt.8404
	cmp	r1, #0	@ tmp1863,
	rsb	ip, r8, r0	@ tmp1870, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1864, tmp1863
	cmp	r1, #2	@ tmp1864,
	addgt	sl, sl, #1	@,, MisCnt.8420, MisCnt.8412
	cmp	ip, #0	@ tmp1870,
	rsblt	ip, ip, #0	@ tmp1871, tmp1870
	cmp	ip, #2	@ tmp1871,
	addgt	sl, sl, #1	@,, tmp1874, MisCnt.8420
	cmp	sl, #2	@ tmp1874,
	bgt	.L23	@,
	ldr	r3, [r6, #220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #224]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1892, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1892,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp1885, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1893, tmp1892
	cmp	lr, #0	@ tmp1885,
	rsb	r0, r2, r0	@ tmp1899, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1886, tmp1885
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1893,
	movle	sl, #0	@, tmp1895
	movgt	sl, #1	@, tmp1895
	ldrb	r8, [r6, #235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1886,
	addgt	sl, sl, #1	@,, MisCnt.8446, tmp1895
	cmp	r0, #0	@ tmp1899,
	ldrb	r1, [r6, #236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1906, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1900, tmp1899
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1900,
	addgt	sl, sl, #1	@,, MisCnt.8454, MisCnt.8446
	cmp	r8, #0	@ tmp1906,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1913, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1907, tmp1906
	ldrb	ip, [r6, #237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1907,
	addgt	sl, sl, #1	@,, MisCnt.8462, MisCnt.8454
	cmp	r2, #0	@ tmp1913,
	ldrb	lr, [r6, #238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1920, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1914, tmp1913
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1914,
	addgt	sl, sl, #1	@,, MisCnt.8470, MisCnt.8462
	cmp	ip, #0	@ tmp1920,
	ldrb	r0, [r6, #239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1927, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1921, tmp1920
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1921,
	addgt	sl, sl, #1	@,, MisCnt.8478, MisCnt.8470
	cmp	r1, #0	@ tmp1927,
	rsb	r8, r2, r0	@ tmp1934, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1928, tmp1927
	cmp	r1, #2	@ tmp1928,
	addgt	sl, sl, #1	@,, MisCnt.8486, MisCnt.8478
	cmp	r8, #0	@ tmp1934,
	rsblt	r8, r8, #0	@ tmp1935, tmp1934
	cmp	r8, #2	@ tmp1935,
	addgt	sl, sl, #1	@,, tmp1938, MisCnt.8486
	cmp	sl, #2	@ tmp1938,
	bgt	.L23	@,
	ldr	r3, [r6, #240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #244]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp1956, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1956,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp1949, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1957, tmp1956
	cmp	lr, #0	@ tmp1949,
	rsb	r0, r2, r0	@ tmp1963, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1950, tmp1949
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1957,
	movle	sl, #0	@, tmp1959
	movgt	sl, #1	@, tmp1959
	ldrb	r8, [r6, #255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1950,
	addgt	sl, sl, #1	@,, MisCnt.8512, tmp1959
	cmp	r0, #0	@ tmp1963,
	ldrb	r1, [r6, #256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp1970, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1964, tmp1963
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1964,
	addgt	sl, sl, #1	@,, MisCnt.8520, MisCnt.8512
	cmp	r8, #0	@ tmp1970,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1977, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp1971, tmp1970
	ldrb	ip, [r6, #257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp1971,
	addgt	sl, sl, #1	@,, MisCnt.8528, MisCnt.8520
	cmp	r2, #0	@ tmp1977,
	ldrb	lr, [r6, #258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1984, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1978, tmp1977
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1978,
	addgt	sl, sl, #1	@,, MisCnt.8536, MisCnt.8528
	cmp	ip, #0	@ tmp1984,
	ldrb	r0, [r6, #259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1991, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1985, tmp1984
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1985,
	addgt	sl, sl, #1	@,, MisCnt.8544, MisCnt.8536
	cmp	r1, #0	@ tmp1991,
	rsb	r8, r2, r0	@ tmp1998, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1992, tmp1991
	cmp	r1, #2	@ tmp1992,
	addgt	sl, sl, #1	@,, MisCnt.8552, MisCnt.8544
	cmp	r8, #0	@ tmp1998,
	rsblt	r8, r8, #0	@ tmp1999, tmp1998
	cmp	r8, #2	@ tmp1999,
	addgt	sl, sl, #1	@,, tmp2002, MisCnt.8552
	cmp	sl, #2	@ tmp2002,
	bgt	.L23	@,
	ldr	r3, [r6, #260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #264]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2020, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2020,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2013, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2021, tmp2020
	cmp	lr, #0	@ tmp2013,
	rsb	r0, r2, r0	@ tmp2027, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2014, tmp2013
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2021,
	movle	sl, #0	@, tmp2023
	movgt	sl, #1	@, tmp2023
	ldrb	r8, [r6, #275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2014,
	addgt	sl, sl, #1	@,, MisCnt.8578, tmp2023
	cmp	r0, #0	@ tmp2027,
	ldrb	r1, [r6, #276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2034, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2028, tmp2027
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2028,
	addgt	sl, sl, #1	@,, MisCnt.8586, MisCnt.8578
	cmp	r8, #0	@ tmp2034,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2041, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2035, tmp2034
	ldrb	ip, [r6, #277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2035,
	addgt	sl, sl, #1	@,, MisCnt.8594, MisCnt.8586
	cmp	r2, #0	@ tmp2041,
	ldrb	lr, [r6, #278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2048, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2042, tmp2041
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2042,
	addgt	sl, sl, #1	@,, MisCnt.8602, MisCnt.8594
	cmp	ip, #0	@ tmp2048,
	ldrb	r0, [r6, #279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2055, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2049, tmp2048
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2049,
	addgt	sl, sl, #1	@,, MisCnt.8610, MisCnt.8602
	cmp	r1, #0	@ tmp2055,
	rsb	r8, r2, r0	@ tmp2062, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2056, tmp2055
	cmp	r1, #2	@ tmp2056,
	addgt	sl, sl, #1	@,, MisCnt.8618, MisCnt.8610
	cmp	r8, #0	@ tmp2062,
	rsblt	r8, r8, #0	@ tmp2063, tmp2062
	cmp	r8, #2	@ tmp2063,
	addgt	sl, sl, #1	@,, tmp2066, MisCnt.8618
	cmp	sl, #2	@ tmp2066,
	bgt	.L23	@,
	ldr	r3, [r6, #280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #284]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp2084, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2084,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp2077, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2085, tmp2084
	cmp	r8, #0	@ tmp2077,
	rsb	r0, r2, r0	@ tmp2091, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2078, tmp2077
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2085,
	movle	r3, #0	@, tmp2087
	movgt	r3, #1	@, tmp2087
	ldrb	sl, [r6, #295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2078,
	addgt	r3, r3, #1	@,, MisCnt.2547, tmp2087
	cmp	r0, #0	@ tmp2091,
	ldrb	r1, [r6, #296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2098, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2092, tmp2091
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2092,
	addgt	r3, r3, #1	@,, MisCnt.2558, MisCnt.2547
	cmp	sl, #0	@ tmp2098,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2105, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2099, tmp2098
	ldrb	ip, [r6, #297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2099,
	addgt	r3, r3, #1	@,, MisCnt.2569, MisCnt.2558
	cmp	r2, #0	@ tmp2105,
	ldrb	r8, [r6, #298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2112, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2106, tmp2105
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2106,
	addgt	r3, r3, #1	@,, MisCnt.2578, MisCnt.2569
	cmp	ip, #0	@ tmp2112,
	ldrb	r0, [r6, #299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2113, tmp2112
	rsb	r1, r1, r8	@ tmp2119, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2113,
	addgt	r3, r3, #1	@,, MisCnt.2589, MisCnt.2578
	cmp	r1, #0	@ tmp2119,
	rsb	ip, r2, r0	@ tmp2126, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2120, tmp2119
	cmp	r1, #2	@ tmp2120,
	addgt	r3, r3, #1	@,, MisCnt.2600, MisCnt.2589
	cmp	ip, #0	@ tmp2126,
	rsblt	ip, ip, #0	@ tmp2127, tmp2126
	cmp	ip, #2	@ tmp2127,
	addgt	r3, r3, #1	@,, tmp2130, MisCnt.2600
	cmp	r3, #2	@ tmp2130,
	movle	r0, #3	@ Result,
	ble	.L21	@,
.L23:
	ldr	r3, [r5, #300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #304]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #308]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp2131,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp2131,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2148, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2148,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2141, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2149, tmp2148
	cmp	lr, #0	@ tmp2141,
	rsb	r0, r2, r0	@ tmp2155, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2142, tmp2141
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2149,
	movle	sl, #0	@, tmp2151
	movgt	sl, #1	@, tmp2151
	ldrb	r8, [r5, #315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2142,
	addgt	sl, sl, #1	@,, MisCnt.8644, tmp2151
	cmp	r0, #0	@ tmp2155,
	ldrb	r1, [r5, #316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2162, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2156, tmp2155
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2156,
	addgt	sl, sl, #1	@,, MisCnt.8652, MisCnt.8644
	cmp	r8, #0	@ tmp2162,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2169, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2163, tmp2162
	ldrb	ip, [r5, #317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2163,
	addgt	sl, sl, #1	@,, MisCnt.8660, MisCnt.8652
	cmp	r2, #0	@ tmp2169,
	ldrb	lr, [r5, #318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2176, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2170, tmp2169
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2170,
	addgt	sl, sl, #1	@,, MisCnt.8668, MisCnt.8660
	cmp	ip, #0	@ tmp2176,
	ldrb	r0, [r5, #319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2177, tmp2176
	rsb	r1, r1, lr	@ tmp2183, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2177,
	addgt	sl, sl, #1	@,, MisCnt.8676, MisCnt.8668
	cmp	r1, #0	@ tmp2183,
	rsb	ip, r8, r0	@ tmp2190, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2184, tmp2183
	cmp	r1, #2	@ tmp2184,
	addgt	sl, sl, #1	@,, MisCnt.8684, MisCnt.8676
	cmp	ip, #0	@ tmp2190,
	rsblt	ip, ip, #0	@ tmp2191, tmp2190
	cmp	ip, #2	@ tmp2191,
	addgt	sl, sl, #1	@,, tmp2194, MisCnt.8684
	cmp	sl, #2	@ tmp2194,
	bgt	.L24	@,
	ldr	r3, [r6, #320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #324]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #328]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2212, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2212,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2205, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2213, tmp2212
	cmp	lr, #0	@ tmp2205,
	rsb	r0, r2, r0	@ tmp2219, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2206, tmp2205
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2213,
	movle	sl, #0	@, tmp2215
	movgt	sl, #1	@, tmp2215
	ldrb	r8, [r6, #335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2206,
	addgt	sl, sl, #1	@,, MisCnt.8710, tmp2215
	cmp	r0, #0	@ tmp2219,
	ldrb	r1, [r6, #336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2226, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2220, tmp2219
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2220,
	addgt	sl, sl, #1	@,, MisCnt.8718, MisCnt.8710
	cmp	r8, #0	@ tmp2226,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2233, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2227, tmp2226
	ldrb	ip, [r6, #337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2227,
	addgt	sl, sl, #1	@,, MisCnt.8726, MisCnt.8718
	cmp	r2, #0	@ tmp2233,
	ldrb	lr, [r6, #338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2240, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2234, tmp2233
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2234,
	addgt	sl, sl, #1	@,, MisCnt.8734, MisCnt.8726
	cmp	ip, #0	@ tmp2240,
	ldrb	r0, [r6, #339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2247, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2241, tmp2240
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2241,
	addgt	sl, sl, #1	@,, MisCnt.8742, MisCnt.8734
	cmp	r1, #0	@ tmp2247,
	rsb	r8, r2, r0	@ tmp2254, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2248, tmp2247
	cmp	r1, #2	@ tmp2248,
	addgt	sl, sl, #1	@,, MisCnt.8750, MisCnt.8742
	cmp	r8, #0	@ tmp2254,
	rsblt	r8, r8, #0	@ tmp2255, tmp2254
	cmp	r8, #2	@ tmp2255,
	addgt	sl, sl, #1	@,, tmp2258, MisCnt.8750
	cmp	sl, #2	@ tmp2258,
	bgt	.L24	@,
	ldr	r3, [r6, #340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #344]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #348]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2276, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2276,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2269, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2277, tmp2276
	cmp	lr, #0	@ tmp2269,
	rsb	r0, r2, r0	@ tmp2283, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2270, tmp2269
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2277,
	movle	sl, #0	@, tmp2279
	movgt	sl, #1	@, tmp2279
	ldrb	r8, [r6, #355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2270,
	addgt	sl, sl, #1	@,, MisCnt.8776, tmp2279
	cmp	r0, #0	@ tmp2283,
	ldrb	r1, [r6, #356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2290, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2284, tmp2283
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2284,
	addgt	sl, sl, #1	@,, MisCnt.8784, MisCnt.8776
	cmp	r8, #0	@ tmp2290,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2297, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2291, tmp2290
	ldrb	ip, [r6, #357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2291,
	addgt	sl, sl, #1	@,, MisCnt.8792, MisCnt.8784
	cmp	r2, #0	@ tmp2297,
	ldrb	lr, [r6, #358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2304, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2298, tmp2297
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2298,
	addgt	sl, sl, #1	@,, MisCnt.8800, MisCnt.8792
	cmp	ip, #0	@ tmp2304,
	ldrb	r0, [r6, #359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2311, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2305, tmp2304
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2305,
	addgt	sl, sl, #1	@,, MisCnt.8808, MisCnt.8800
	cmp	r1, #0	@ tmp2311,
	rsb	r8, r2, r0	@ tmp2318, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2312, tmp2311
	cmp	r1, #2	@ tmp2312,
	addgt	sl, sl, #1	@,, MisCnt.8816, MisCnt.8808
	cmp	r8, #0	@ tmp2318,
	rsblt	r8, r8, #0	@ tmp2319, tmp2318
	cmp	r8, #2	@ tmp2319,
	addgt	sl, sl, #1	@,, tmp2322, MisCnt.8816
	cmp	sl, #2	@ tmp2322,
	bgt	.L24	@,
	ldr	r3, [r6, #360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #364]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #368]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2340, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2340,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2333, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2341, tmp2340
	cmp	lr, #0	@ tmp2333,
	rsb	r0, r2, r0	@ tmp2347, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2334, tmp2333
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2341,
	movle	sl, #0	@, tmp2343
	movgt	sl, #1	@, tmp2343
	ldrb	r8, [r6, #375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2334,
	addgt	sl, sl, #1	@,, MisCnt.8842, tmp2343
	cmp	r0, #0	@ tmp2347,
	ldrb	r1, [r6, #376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2354, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2348, tmp2347
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2348,
	addgt	sl, sl, #1	@,, MisCnt.8850, MisCnt.8842
	cmp	r8, #0	@ tmp2354,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2361, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2355, tmp2354
	ldrb	ip, [r6, #377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2355,
	addgt	sl, sl, #1	@,, MisCnt.8858, MisCnt.8850
	cmp	r2, #0	@ tmp2361,
	ldrb	lr, [r6, #378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2368, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2362, tmp2361
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2362,
	addgt	sl, sl, #1	@,, MisCnt.8866, MisCnt.8858
	cmp	ip, #0	@ tmp2368,
	ldrb	r0, [r6, #379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2375, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2369, tmp2368
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2369,
	addgt	sl, sl, #1	@,, MisCnt.8874, MisCnt.8866
	cmp	r1, #0	@ tmp2375,
	rsb	r8, r2, r0	@ tmp2382, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2376, tmp2375
	cmp	r1, #2	@ tmp2376,
	addgt	sl, sl, #1	@,, MisCnt.8882, MisCnt.8874
	cmp	r8, #0	@ tmp2382,
	rsblt	r8, r8, #0	@ tmp2383, tmp2382
	cmp	r8, #2	@ tmp2383,
	addgt	sl, sl, #1	@,, tmp2386, MisCnt.8882
	cmp	sl, #2	@ tmp2386,
	bgt	.L24	@,
	ldr	r3, [r6, #380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #384]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp2404, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2404,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp2397, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2405, tmp2404
	cmp	r8, #0	@ tmp2397,
	rsb	r0, r2, r0	@ tmp2411, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2398, tmp2397
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2405,
	movle	r3, #0	@, tmp2407
	movgt	r3, #1	@, tmp2407
	ldrb	sl, [r6, #395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2398,
	addgt	r3, r3, #1	@,, MisCnt.2617, tmp2407
	cmp	r0, #0	@ tmp2411,
	ldrb	r1, [r6, #396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2418, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2412, tmp2411
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2412,
	addgt	r3, r3, #1	@,, MisCnt.2627, MisCnt.2617
	cmp	sl, #0	@ tmp2418,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2425, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2419, tmp2418
	ldrb	ip, [r6, #397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2419,
	addgt	r3, r3, #1	@,, MisCnt.2638, MisCnt.2627
	cmp	r2, #0	@ tmp2425,
	ldrb	r8, [r6, #398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2432, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2426, tmp2425
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2426,
	addgt	r3, r3, #1	@,, MisCnt.2649, MisCnt.2638
	cmp	ip, #0	@ tmp2432,
	ldrb	r0, [r6, #399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2433, tmp2432
	rsb	r1, r1, r8	@ tmp2439, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2433,
	addgt	r3, r3, #1	@,, MisCnt.2658, MisCnt.2649
	cmp	r1, #0	@ tmp2439,
	rsb	ip, r2, r0	@ tmp2446, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2440, tmp2439
	cmp	r1, #2	@ tmp2440,
	addgt	r3, r3, #1	@,, MisCnt.2669, MisCnt.2658
	cmp	ip, #0	@ tmp2446,
	rsblt	ip, ip, #0	@ tmp2447, tmp2446
	cmp	ip, #2	@ tmp2447,
	addgt	r3, r3, #1	@,, tmp2450, MisCnt.2669
	cmp	r3, #2	@ tmp2450,
	movle	r0, #8	@ Result,
	ble	.L21	@,
.L24:
	ldr	r3, [r5, #400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #404]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #408]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp2451,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp2451,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2468, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2468,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2461, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2469, tmp2468
	cmp	lr, #0	@ tmp2461,
	rsb	r0, r2, r0	@ tmp2475, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2462, tmp2461
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2469,
	movle	sl, #0	@, tmp2471
	movgt	sl, #1	@, tmp2471
	ldrb	r8, [r5, #415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2462,
	addgt	sl, sl, #1	@,, MisCnt.8908, tmp2471
	cmp	r0, #0	@ tmp2475,
	ldrb	r1, [r5, #416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2482, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2476, tmp2475
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2476,
	addgt	sl, sl, #1	@,, MisCnt.8916, MisCnt.8908
	cmp	r8, #0	@ tmp2482,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2489, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2483, tmp2482
	ldrb	ip, [r5, #417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2483,
	addgt	sl, sl, #1	@,, MisCnt.8924, MisCnt.8916
	cmp	r2, #0	@ tmp2489,
	ldrb	lr, [r5, #418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2496, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2490, tmp2489
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2490,
	addgt	sl, sl, #1	@,, MisCnt.8932, MisCnt.8924
	cmp	ip, #0	@ tmp2496,
	ldrb	r0, [r5, #419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2497, tmp2496
	rsb	r1, r1, lr	@ tmp2503, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2497,
	addgt	sl, sl, #1	@,, MisCnt.8940, MisCnt.8932
	cmp	r1, #0	@ tmp2503,
	rsb	ip, r8, r0	@ tmp2510, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2504, tmp2503
	cmp	r1, #2	@ tmp2504,
	addgt	sl, sl, #1	@,, MisCnt.8948, MisCnt.8940
	cmp	ip, #0	@ tmp2510,
	rsblt	ip, ip, #0	@ tmp2511, tmp2510
	cmp	ip, #2	@ tmp2511,
	addgt	sl, sl, #1	@,, tmp2514, MisCnt.8948
	cmp	sl, #2	@ tmp2514,
	bgt	.L25	@,
	ldr	r3, [r6, #420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #424]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2532, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2532,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2525, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2533, tmp2532
	cmp	lr, #0	@ tmp2525,
	rsb	r0, r2, r0	@ tmp2539, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2526, tmp2525
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2533,
	movle	sl, #0	@, tmp2535
	movgt	sl, #1	@, tmp2535
	ldrb	r8, [r6, #435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2526,
	addgt	sl, sl, #1	@,, MisCnt.8974, tmp2535
	cmp	r0, #0	@ tmp2539,
	ldrb	r1, [r6, #436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2546, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2540, tmp2539
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2540,
	addgt	sl, sl, #1	@,, MisCnt.8982, MisCnt.8974
	cmp	r8, #0	@ tmp2546,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2553, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2547, tmp2546
	ldrb	ip, [r6, #437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2547,
	addgt	sl, sl, #1	@,, MisCnt.8990, MisCnt.8982
	cmp	r2, #0	@ tmp2553,
	ldrb	lr, [r6, #438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2560, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2554, tmp2553
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2554,
	addgt	sl, sl, #1	@,, MisCnt.8998, MisCnt.8990
	cmp	ip, #0	@ tmp2560,
	ldrb	r0, [r6, #439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2567, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2561, tmp2560
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2561,
	addgt	sl, sl, #1	@,, MisCnt.9006, MisCnt.8998
	cmp	r1, #0	@ tmp2567,
	rsb	r8, r2, r0	@ tmp2574, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2568, tmp2567
	cmp	r1, #2	@ tmp2568,
	addgt	sl, sl, #1	@,, MisCnt.9014, MisCnt.9006
	cmp	r8, #0	@ tmp2574,
	rsblt	r8, r8, #0	@ tmp2575, tmp2574
	cmp	r8, #2	@ tmp2575,
	addgt	sl, sl, #1	@,, tmp2578, MisCnt.9014
	cmp	sl, #2	@ tmp2578,
	bgt	.L25	@,
	ldr	r3, [r6, #440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #444]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2596, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2596,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2589, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2597, tmp2596
	cmp	lr, #0	@ tmp2589,
	rsb	r0, r2, r0	@ tmp2603, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2590, tmp2589
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2597,
	movle	sl, #0	@, tmp2599
	movgt	sl, #1	@, tmp2599
	ldrb	r8, [r6, #455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2590,
	addgt	sl, sl, #1	@,, MisCnt.9040, tmp2599
	cmp	r0, #0	@ tmp2603,
	ldrb	r1, [r6, #456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2610, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2604, tmp2603
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2604,
	addgt	sl, sl, #1	@,, MisCnt.9048, MisCnt.9040
	cmp	r8, #0	@ tmp2610,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2617, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2611, tmp2610
	ldrb	ip, [r6, #457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2611,
	addgt	sl, sl, #1	@,, MisCnt.9056, MisCnt.9048
	cmp	r2, #0	@ tmp2617,
	ldrb	lr, [r6, #458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2624, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2618, tmp2617
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2618,
	addgt	sl, sl, #1	@,, MisCnt.9064, MisCnt.9056
	cmp	ip, #0	@ tmp2624,
	ldrb	r0, [r6, #459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2631, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2625, tmp2624
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2625,
	addgt	sl, sl, #1	@,, MisCnt.9072, MisCnt.9064
	cmp	r1, #0	@ tmp2631,
	rsb	r8, r2, r0	@ tmp2638, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2632, tmp2631
	cmp	r1, #2	@ tmp2632,
	addgt	sl, sl, #1	@,, MisCnt.9080, MisCnt.9072
	cmp	r8, #0	@ tmp2638,
	rsblt	r8, r8, #0	@ tmp2639, tmp2638
	cmp	r8, #2	@ tmp2639,
	addgt	sl, sl, #1	@,, tmp2642, MisCnt.9080
	cmp	sl, #2	@ tmp2642,
	bgt	.L25	@,
	ldr	r3, [r6, #460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #464]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2660, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2660,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2653, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2661, tmp2660
	cmp	lr, #0	@ tmp2653,
	rsb	r0, r2, r0	@ tmp2667, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2654, tmp2653
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2661,
	movle	sl, #0	@, tmp2663
	movgt	sl, #1	@, tmp2663
	ldrb	r8, [r6, #475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2654,
	addgt	sl, sl, #1	@,, MisCnt.9106, tmp2663
	cmp	r0, #0	@ tmp2667,
	ldrb	r1, [r6, #476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2674, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2668, tmp2667
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2668,
	addgt	sl, sl, #1	@,, MisCnt.9114, MisCnt.9106
	cmp	r8, #0	@ tmp2674,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2681, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2675, tmp2674
	ldrb	ip, [r6, #477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2675,
	addgt	sl, sl, #1	@,, MisCnt.9122, MisCnt.9114
	cmp	r2, #0	@ tmp2681,
	ldrb	lr, [r6, #478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2688, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2682, tmp2681
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2682,
	addgt	sl, sl, #1	@,, MisCnt.9130, MisCnt.9122
	cmp	ip, #0	@ tmp2688,
	ldrb	r0, [r6, #479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2695, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2689, tmp2688
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2689,
	addgt	sl, sl, #1	@,, MisCnt.9138, MisCnt.9130
	cmp	r1, #0	@ tmp2695,
	rsb	r8, r2, r0	@ tmp2702, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2696, tmp2695
	cmp	r1, #2	@ tmp2696,
	addgt	sl, sl, #1	@,, MisCnt.9146, MisCnt.9138
	cmp	r8, #0	@ tmp2702,
	rsblt	r8, r8, #0	@ tmp2703, tmp2702
	cmp	r8, #2	@ tmp2703,
	addgt	sl, sl, #1	@,, tmp2706, MisCnt.9146
	cmp	sl, #2	@ tmp2706,
	bgt	.L25	@,
	ldr	r3, [r6, #480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #484]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp2724, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2724,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp2717, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2725, tmp2724
	cmp	r8, #0	@ tmp2717,
	rsb	r0, r2, r0	@ tmp2731, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2718, tmp2717
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2725,
	movle	r3, #0	@, tmp2727
	movgt	r3, #1	@, tmp2727
	ldrb	sl, [r6, #495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2718,
	addgt	r3, r3, #1	@,, MisCnt.2689, tmp2727
	cmp	r0, #0	@ tmp2731,
	ldrb	r1, [r6, #496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2738, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2732, tmp2731
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2732,
	addgt	r3, r3, #1	@,, MisCnt.2698, MisCnt.2689
	cmp	sl, #0	@ tmp2738,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2745, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2739, tmp2738
	ldrb	ip, [r6, #497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2739,
	addgt	r3, r3, #1	@,, MisCnt.2709, MisCnt.2698
	cmp	r2, #0	@ tmp2745,
	ldrb	r8, [r6, #498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2752, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2746, tmp2745
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2746,
	addgt	r3, r3, #1	@,, MisCnt.2720, MisCnt.2709
	cmp	ip, #0	@ tmp2752,
	ldrb	r0, [r6, #499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2753, tmp2752
	rsb	r1, r1, r8	@ tmp2759, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2753,
	addgt	r3, r3, #1	@,, MisCnt.2730, MisCnt.2720
	cmp	r1, #0	@ tmp2759,
	rsb	ip, r2, r0	@ tmp2766, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2760, tmp2759
	cmp	r1, #2	@ tmp2760,
	addgt	r3, r3, #1	@,, MisCnt.2740, MisCnt.2730
	cmp	ip, #0	@ tmp2766,
	rsblt	ip, ip, #0	@ tmp2767, tmp2766
	cmp	ip, #2	@ tmp2767,
	addgt	r3, r3, #1	@,, tmp2770, MisCnt.2740
	cmp	r3, #2	@ tmp2770,
	movle	r0, #9	@ Result,
	ble	.L21	@,
.L25:
	ldr	r3, [r5, #500]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #504]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #508]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp2771,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp2771,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2788, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2788,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2781, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2789, tmp2788
	cmp	lr, #0	@ tmp2781,
	rsb	r0, r2, r0	@ tmp2795, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2782, tmp2781
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2789,
	movle	sl, #0	@, tmp2791
	movgt	sl, #1	@, tmp2791
	ldrb	r8, [r5, #515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2782,
	addgt	sl, sl, #1	@,, MisCnt.9172, tmp2791
	cmp	r0, #0	@ tmp2795,
	ldrb	r1, [r5, #516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2802, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2796, tmp2795
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2796,
	addgt	sl, sl, #1	@,, MisCnt.9180, MisCnt.9172
	cmp	r8, #0	@ tmp2802,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2809, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2803, tmp2802
	ldrb	ip, [r5, #517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2803,
	addgt	sl, sl, #1	@,, MisCnt.9188, MisCnt.9180
	cmp	r2, #0	@ tmp2809,
	ldrb	lr, [r5, #518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2816, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2810, tmp2809
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2810,
	addgt	sl, sl, #1	@,, MisCnt.9196, MisCnt.9188
	cmp	ip, #0	@ tmp2816,
	ldrb	r0, [r5, #519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2817, tmp2816
	rsb	r1, r1, lr	@ tmp2823, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2817,
	addgt	sl, sl, #1	@,, MisCnt.9204, MisCnt.9196
	cmp	r1, #0	@ tmp2823,
	rsb	ip, r8, r0	@ tmp2830, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2824, tmp2823
	cmp	r1, #2	@ tmp2824,
	addgt	sl, sl, #1	@,, MisCnt.9212, MisCnt.9204
	cmp	ip, #0	@ tmp2830,
	rsblt	ip, ip, #0	@ tmp2831, tmp2830
	cmp	ip, #2	@ tmp2831,
	addgt	sl, sl, #1	@,, tmp2834, MisCnt.9212
	cmp	sl, #2	@ tmp2834,
	bgt	.L26	@,
	ldr	r3, [r6, #520]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #524]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2852, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2852,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2845, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2853, tmp2852
	cmp	lr, #0	@ tmp2845,
	rsb	r0, r2, r0	@ tmp2859, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2846, tmp2845
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2853,
	movle	sl, #0	@, tmp2855
	movgt	sl, #1	@, tmp2855
	ldrb	r8, [r6, #535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2846,
	addgt	sl, sl, #1	@,, MisCnt.9238, tmp2855
	cmp	r0, #0	@ tmp2859,
	ldrb	r1, [r6, #536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2866, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2860, tmp2859
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2860,
	addgt	sl, sl, #1	@,, MisCnt.9246, MisCnt.9238
	cmp	r8, #0	@ tmp2866,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2873, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2867, tmp2866
	ldrb	ip, [r6, #537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2867,
	addgt	sl, sl, #1	@,, MisCnt.9254, MisCnt.9246
	cmp	r2, #0	@ tmp2873,
	ldrb	lr, [r6, #538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2880, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2874, tmp2873
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2874,
	addgt	sl, sl, #1	@,, MisCnt.9262, MisCnt.9254
	cmp	ip, #0	@ tmp2880,
	ldrb	r0, [r6, #539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2887, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2881, tmp2880
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2881,
	addgt	sl, sl, #1	@,, MisCnt.9270, MisCnt.9262
	cmp	r1, #0	@ tmp2887,
	rsb	r8, r2, r0	@ tmp2894, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2888, tmp2887
	cmp	r1, #2	@ tmp2888,
	addgt	sl, sl, #1	@,, MisCnt.9278, MisCnt.9270
	cmp	r8, #0	@ tmp2894,
	rsblt	r8, r8, #0	@ tmp2895, tmp2894
	cmp	r8, #2	@ tmp2895,
	addgt	sl, sl, #1	@,, tmp2898, MisCnt.9278
	cmp	sl, #2	@ tmp2898,
	bgt	.L26	@,
	ldr	r3, [r6, #540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #544]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2916, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2916,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2909, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2917, tmp2916
	cmp	lr, #0	@ tmp2909,
	rsb	r0, r2, r0	@ tmp2923, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2910, tmp2909
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2917,
	movle	sl, #0	@, tmp2919
	movgt	sl, #1	@, tmp2919
	ldrb	r8, [r6, #555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2910,
	addgt	sl, sl, #1	@,, MisCnt.9304, tmp2919
	cmp	r0, #0	@ tmp2923,
	ldrb	r1, [r6, #556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2930, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2924, tmp2923
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2924,
	addgt	sl, sl, #1	@,, MisCnt.9312, MisCnt.9304
	cmp	r8, #0	@ tmp2930,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2937, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2931, tmp2930
	ldrb	ip, [r6, #557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2931,
	addgt	sl, sl, #1	@,, MisCnt.9320, MisCnt.9312
	cmp	r2, #0	@ tmp2937,
	ldrb	lr, [r6, #558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2944, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2938, tmp2937
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2938,
	addgt	sl, sl, #1	@,, MisCnt.9328, MisCnt.9320
	cmp	ip, #0	@ tmp2944,
	ldrb	r0, [r6, #559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2951, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2945, tmp2944
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2945,
	addgt	sl, sl, #1	@,, MisCnt.9336, MisCnt.9328
	cmp	r1, #0	@ tmp2951,
	rsb	r8, r2, r0	@ tmp2958, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2952, tmp2951
	cmp	r1, #2	@ tmp2952,
	addgt	sl, sl, #1	@,, MisCnt.9344, MisCnt.9336
	cmp	r8, #0	@ tmp2958,
	rsblt	r8, r8, #0	@ tmp2959, tmp2958
	cmp	r8, #2	@ tmp2959,
	addgt	sl, sl, #1	@,, tmp2962, MisCnt.9344
	cmp	sl, #2	@ tmp2962,
	bgt	.L26	@,
	ldr	r3, [r6, #560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #564]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp2980, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2980,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp2973, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2981, tmp2980
	cmp	lr, #0	@ tmp2973,
	rsb	r0, r2, r0	@ tmp2987, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2974, tmp2973
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2981,
	movle	sl, #0	@, tmp2983
	movgt	sl, #1	@, tmp2983
	ldrb	r8, [r6, #575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2974,
	addgt	sl, sl, #1	@,, MisCnt.9370, tmp2983
	cmp	r0, #0	@ tmp2987,
	ldrb	r1, [r6, #576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp2994, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2988, tmp2987
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2988,
	addgt	sl, sl, #1	@,, MisCnt.9378, MisCnt.9370
	cmp	r8, #0	@ tmp2994,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3001, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp2995, tmp2994
	ldrb	ip, [r6, #577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp2995,
	addgt	sl, sl, #1	@,, MisCnt.9386, MisCnt.9378
	cmp	r2, #0	@ tmp3001,
	ldrb	lr, [r6, #578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3008, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3002, tmp3001
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3002,
	addgt	sl, sl, #1	@,, MisCnt.9394, MisCnt.9386
	cmp	ip, #0	@ tmp3008,
	ldrb	r0, [r6, #579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3015, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3009, tmp3008
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3009,
	addgt	sl, sl, #1	@,, MisCnt.9402, MisCnt.9394
	cmp	r1, #0	@ tmp3015,
	rsb	r8, r2, r0	@ tmp3022, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3016, tmp3015
	cmp	r1, #2	@ tmp3016,
	addgt	sl, sl, #1	@,, MisCnt.9410, MisCnt.9402
	cmp	r8, #0	@ tmp3022,
	rsblt	r8, r8, #0	@ tmp3023, tmp3022
	cmp	r8, #2	@ tmp3023,
	addgt	sl, sl, #1	@,, tmp3026, MisCnt.9410
	cmp	sl, #2	@ tmp3026,
	bgt	.L26	@,
	ldr	r3, [r6, #580]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #584]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #588]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #593]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #592]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp3044, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3044,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp3037, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #594]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3045, tmp3044
	cmp	r8, #0	@ tmp3037,
	rsb	r0, r2, r0	@ tmp3051, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3038, tmp3037
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3045,
	movle	r3, #0	@, tmp3047
	movgt	r3, #1	@, tmp3047
	ldrb	sl, [r6, #595]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3038,
	addgt	r3, r3, #1	@,, MisCnt.2759, tmp3047
	cmp	r0, #0	@ tmp3051,
	ldrb	r1, [r6, #596]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3058, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3052, tmp3051
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3052,
	addgt	r3, r3, #1	@,, MisCnt.2770, MisCnt.2759
	cmp	sl, #0	@ tmp3058,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3065, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3059, tmp3058
	ldrb	ip, [r6, #597]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3059,
	addgt	r3, r3, #1	@,, MisCnt.2778, MisCnt.2770
	cmp	r2, #0	@ tmp3065,
	ldrb	r8, [r6, #598]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3072, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3066, tmp3065
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3066,
	addgt	r3, r3, #1	@,, MisCnt.2789, MisCnt.2778
	cmp	ip, #0	@ tmp3072,
	ldrb	r0, [r6, #599]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3073, tmp3072
	rsb	r1, r1, r8	@ tmp3079, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3073,
	addgt	r3, r3, #1	@,, MisCnt.2800, MisCnt.2789
	cmp	r1, #0	@ tmp3079,
	rsb	ip, r2, r0	@ tmp3086, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3080, tmp3079
	cmp	r1, #2	@ tmp3080,
	addgt	r3, r3, #1	@,, MisCnt.2809, MisCnt.2800
	cmp	ip, #0	@ tmp3086,
	rsblt	ip, ip, #0	@ tmp3087, tmp3086
	cmp	ip, #2	@ tmp3087,
	addgt	r3, r3, #1	@,, tmp3090, MisCnt.2809
	cmp	r3, #2	@ tmp3090,
	movle	r0, #11	@ Result,
	ble	.L21	@,
.L26:
	ldr	r3, [r5, #600]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #604]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #608]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp3091,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp3091,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #613]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #612]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3108, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3108,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3101, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #614]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3109, tmp3108
	cmp	lr, #0	@ tmp3101,
	rsb	r0, r2, r0	@ tmp3115, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3102, tmp3101
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3109,
	movle	sl, #0	@, tmp3111
	movgt	sl, #1	@, tmp3111
	ldrb	r8, [r5, #615]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3102,
	addgt	sl, sl, #1	@,, MisCnt.9436, tmp3111
	cmp	r0, #0	@ tmp3115,
	ldrb	r1, [r5, #616]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3122, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3116, tmp3115
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3116,
	addgt	sl, sl, #1	@,, MisCnt.9444, MisCnt.9436
	cmp	r8, #0	@ tmp3122,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3129, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3123, tmp3122
	ldrb	ip, [r5, #617]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3123,
	addgt	sl, sl, #1	@,, MisCnt.9452, MisCnt.9444
	cmp	r2, #0	@ tmp3129,
	ldrb	lr, [r5, #618]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3136, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3130, tmp3129
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3130,
	addgt	sl, sl, #1	@,, MisCnt.9460, MisCnt.9452
	cmp	ip, #0	@ tmp3136,
	ldrb	r0, [r5, #619]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3137, tmp3136
	rsb	r1, r1, lr	@ tmp3143, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3137,
	addgt	sl, sl, #1	@,, MisCnt.9468, MisCnt.9460
	cmp	r1, #0	@ tmp3143,
	rsb	ip, r8, r0	@ tmp3150, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3144, tmp3143
	cmp	r1, #2	@ tmp3144,
	addgt	sl, sl, #1	@,, MisCnt.9476, MisCnt.9468
	cmp	ip, #0	@ tmp3150,
	rsblt	ip, ip, #0	@ tmp3151, tmp3150
	cmp	ip, #2	@ tmp3151,
	addgt	sl, sl, #1	@,, tmp3154, MisCnt.9476
	cmp	sl, #2	@ tmp3154,
	bgt	.L27	@,
	ldr	r3, [r6, #620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #624]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #628]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3172, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3172,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3165, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3173, tmp3172
	cmp	lr, #0	@ tmp3165,
	rsb	r0, r2, r0	@ tmp3179, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3166, tmp3165
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3173,
	movle	sl, #0	@, tmp3175
	movgt	sl, #1	@, tmp3175
	ldrb	r8, [r6, #635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3166,
	addgt	sl, sl, #1	@,, MisCnt.9502, tmp3175
	cmp	r0, #0	@ tmp3179,
	ldrb	r1, [r6, #636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3186, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3180, tmp3179
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3180,
	addgt	sl, sl, #1	@,, MisCnt.9510, MisCnt.9502
	cmp	r8, #0	@ tmp3186,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3193, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3187, tmp3186
	ldrb	ip, [r6, #637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3187,
	addgt	sl, sl, #1	@,, MisCnt.9518, MisCnt.9510
	cmp	r2, #0	@ tmp3193,
	ldrb	lr, [r6, #638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3200, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3194, tmp3193
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3194,
	addgt	sl, sl, #1	@,, MisCnt.9526, MisCnt.9518
	cmp	ip, #0	@ tmp3200,
	ldrb	r0, [r6, #639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3207, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3201, tmp3200
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3201,
	addgt	sl, sl, #1	@,, MisCnt.9534, MisCnt.9526
	cmp	r1, #0	@ tmp3207,
	rsb	r8, r2, r0	@ tmp3214, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3208, tmp3207
	cmp	r1, #2	@ tmp3208,
	addgt	sl, sl, #1	@,, MisCnt.9542, MisCnt.9534
	cmp	r8, #0	@ tmp3214,
	rsblt	r8, r8, #0	@ tmp3215, tmp3214
	cmp	r8, #2	@ tmp3215,
	addgt	sl, sl, #1	@,, tmp3218, MisCnt.9542
	cmp	sl, #2	@ tmp3218,
	bgt	.L27	@,
	ldr	r3, [r6, #640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #644]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #648]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3236, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3236,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3229, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3237, tmp3236
	cmp	lr, #0	@ tmp3229,
	rsb	r0, r2, r0	@ tmp3243, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3230, tmp3229
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3237,
	movle	sl, #0	@, tmp3239
	movgt	sl, #1	@, tmp3239
	ldrb	r8, [r6, #655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3230,
	addgt	sl, sl, #1	@,, MisCnt.9568, tmp3239
	cmp	r0, #0	@ tmp3243,
	ldrb	r1, [r6, #656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3250, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3244, tmp3243
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3244,
	addgt	sl, sl, #1	@,, MisCnt.9576, MisCnt.9568
	cmp	r8, #0	@ tmp3250,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3257, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3251, tmp3250
	ldrb	ip, [r6, #657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3251,
	addgt	sl, sl, #1	@,, MisCnt.9584, MisCnt.9576
	cmp	r2, #0	@ tmp3257,
	ldrb	lr, [r6, #658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3264, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3258, tmp3257
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3258,
	addgt	sl, sl, #1	@,, MisCnt.9592, MisCnt.9584
	cmp	ip, #0	@ tmp3264,
	ldrb	r0, [r6, #659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3271, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3265, tmp3264
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3265,
	addgt	sl, sl, #1	@,, MisCnt.9600, MisCnt.9592
	cmp	r1, #0	@ tmp3271,
	rsb	r8, r2, r0	@ tmp3278, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3272, tmp3271
	cmp	r1, #2	@ tmp3272,
	addgt	sl, sl, #1	@,, MisCnt.9608, MisCnt.9600
	cmp	r8, #0	@ tmp3278,
	rsblt	r8, r8, #0	@ tmp3279, tmp3278
	cmp	r8, #2	@ tmp3279,
	addgt	sl, sl, #1	@,, tmp3282, MisCnt.9608
	cmp	sl, #2	@ tmp3282,
	bgt	.L27	@,
	ldr	r3, [r6, #660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #664]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #668]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3300, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3300,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3293, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3301, tmp3300
	cmp	lr, #0	@ tmp3293,
	rsb	r0, r2, r0	@ tmp3307, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3294, tmp3293
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3301,
	movle	sl, #0	@, tmp3303
	movgt	sl, #1	@, tmp3303
	ldrb	r8, [r6, #675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3294,
	addgt	sl, sl, #1	@,, MisCnt.9634, tmp3303
	cmp	r0, #0	@ tmp3307,
	ldrb	r1, [r6, #676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3314, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3308, tmp3307
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3308,
	addgt	sl, sl, #1	@,, MisCnt.9642, MisCnt.9634
	cmp	r8, #0	@ tmp3314,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3321, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3315, tmp3314
	ldrb	ip, [r6, #677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3315,
	addgt	sl, sl, #1	@,, MisCnt.9650, MisCnt.9642
	cmp	r2, #0	@ tmp3321,
	ldrb	lr, [r6, #678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3328, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3322, tmp3321
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3322,
	addgt	sl, sl, #1	@,, MisCnt.9658, MisCnt.9650
	cmp	ip, #0	@ tmp3328,
	ldrb	r0, [r6, #679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3335, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3329, tmp3328
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3329,
	addgt	sl, sl, #1	@,, MisCnt.9666, MisCnt.9658
	cmp	r1, #0	@ tmp3335,
	rsb	r8, r2, r0	@ tmp3342, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3336, tmp3335
	cmp	r1, #2	@ tmp3336,
	addgt	sl, sl, #1	@,, MisCnt.9674, MisCnt.9666
	cmp	r8, #0	@ tmp3342,
	rsblt	r8, r8, #0	@ tmp3343, tmp3342
	cmp	r8, #2	@ tmp3343,
	addgt	sl, sl, #1	@,, tmp3346, MisCnt.9674
	cmp	sl, #2	@ tmp3346,
	bgt	.L27	@,
	ldr	r3, [r6, #680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #684]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #688]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp3364, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3364,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp3357, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3365, tmp3364
	cmp	r8, #0	@ tmp3357,
	rsb	r0, r2, r0	@ tmp3371, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3358, tmp3357
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3365,
	movle	r3, #0	@, tmp3367
	movgt	r3, #1	@, tmp3367
	ldrb	sl, [r6, #695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3358,
	addgt	r3, r3, #1	@,, MisCnt.2825, tmp3367
	cmp	r0, #0	@ tmp3371,
	ldrb	r1, [r6, #696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3378, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3372, tmp3371
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3372,
	addgt	r3, r3, #1	@,, MisCnt.2835, MisCnt.2825
	cmp	sl, #0	@ tmp3378,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3385, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3379, tmp3378
	ldrb	ip, [r6, #697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3379,
	addgt	r3, r3, #1	@,, MisCnt.2843, MisCnt.2835
	cmp	r2, #0	@ tmp3385,
	ldrb	r8, [r6, #698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3392, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3386, tmp3385
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3386,
	addgt	r3, r3, #1	@,, MisCnt.2851, MisCnt.2843
	cmp	ip, #0	@ tmp3392,
	ldrb	r0, [r6, #699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3393, tmp3392
	rsb	r1, r1, r8	@ tmp3399, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3393,
	addgt	r3, r3, #1	@,, MisCnt.2859, MisCnt.2851
	cmp	r1, #0	@ tmp3399,
	rsb	ip, r2, r0	@ tmp3406, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3400, tmp3399
	cmp	r1, #2	@ tmp3400,
	addgt	r3, r3, #1	@,, MisCnt.2867, MisCnt.2859
	cmp	ip, #0	@ tmp3406,
	rsblt	ip, ip, #0	@ tmp3407, tmp3406
	cmp	ip, #2	@ tmp3407,
	addgt	r3, r3, #1	@,, tmp3410, MisCnt.2867
	cmp	r3, #2	@ tmp3410,
	movle	r0, #12	@ Result,
	ble	.L21	@,
.L27:
	ldr	r3, [r5, #700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #704]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #708]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp3411,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp3411,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3428, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3428,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3421, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3429, tmp3428
	cmp	lr, #0	@ tmp3421,
	rsb	r0, r2, r0	@ tmp3435, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3422, tmp3421
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3429,
	movle	sl, #0	@, tmp3431
	movgt	sl, #1	@, tmp3431
	ldrb	r8, [r5, #715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3422,
	addgt	sl, sl, #1	@,, MisCnt.9700, tmp3431
	cmp	r0, #0	@ tmp3435,
	ldrb	r1, [r5, #716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3442, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3436, tmp3435
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3436,
	addgt	sl, sl, #1	@,, MisCnt.9708, MisCnt.9700
	cmp	r8, #0	@ tmp3442,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3449, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3443, tmp3442
	ldrb	ip, [r5, #717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3443,
	addgt	sl, sl, #1	@,, MisCnt.9716, MisCnt.9708
	cmp	r2, #0	@ tmp3449,
	ldrb	lr, [r5, #718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3456, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3450, tmp3449
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3450,
	addgt	sl, sl, #1	@,, MisCnt.9724, MisCnt.9716
	cmp	ip, #0	@ tmp3456,
	ldrb	r0, [r5, #719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3457, tmp3456
	rsb	r1, r1, lr	@ tmp3463, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3457,
	addgt	sl, sl, #1	@,, MisCnt.9732, MisCnt.9724
	cmp	r1, #0	@ tmp3463,
	rsb	ip, r8, r0	@ tmp3470, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3464, tmp3463
	cmp	r1, #2	@ tmp3464,
	addgt	sl, sl, #1	@,, MisCnt.9740, MisCnt.9732
	cmp	ip, #0	@ tmp3470,
	rsblt	ip, ip, #0	@ tmp3471, tmp3470
	cmp	ip, #2	@ tmp3471,
	addgt	sl, sl, #1	@,, tmp3474, MisCnt.9740
	cmp	sl, #2	@ tmp3474,
	bgt	.L28	@,
	ldr	r3, [r6, #720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #724]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #728]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3492, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3492,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3485, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3493, tmp3492
	cmp	lr, #0	@ tmp3485,
	rsb	r0, r2, r0	@ tmp3499, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3486, tmp3485
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3493,
	movle	sl, #0	@, tmp3495
	movgt	sl, #1	@, tmp3495
	ldrb	r8, [r6, #735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3486,
	addgt	sl, sl, #1	@,, MisCnt.9766, tmp3495
	cmp	r0, #0	@ tmp3499,
	ldrb	r1, [r6, #736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3506, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3500, tmp3499
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3500,
	addgt	sl, sl, #1	@,, MisCnt.9774, MisCnt.9766
	cmp	r8, #0	@ tmp3506,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3513, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3507, tmp3506
	ldrb	ip, [r6, #737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3507,
	addgt	sl, sl, #1	@,, MisCnt.9782, MisCnt.9774
	cmp	r2, #0	@ tmp3513,
	ldrb	lr, [r6, #738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3520, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3514, tmp3513
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3514,
	addgt	sl, sl, #1	@,, MisCnt.9790, MisCnt.9782
	cmp	ip, #0	@ tmp3520,
	ldrb	r0, [r6, #739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3527, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3521, tmp3520
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3521,
	addgt	sl, sl, #1	@,, MisCnt.9798, MisCnt.9790
	cmp	r1, #0	@ tmp3527,
	rsb	r8, r2, r0	@ tmp3534, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3528, tmp3527
	cmp	r1, #2	@ tmp3528,
	addgt	sl, sl, #1	@,, MisCnt.9806, MisCnt.9798
	cmp	r8, #0	@ tmp3534,
	rsblt	r8, r8, #0	@ tmp3535, tmp3534
	cmp	r8, #2	@ tmp3535,
	addgt	sl, sl, #1	@,, tmp3538, MisCnt.9806
	cmp	sl, #2	@ tmp3538,
	bgt	.L28	@,
	ldr	r3, [r6, #740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #744]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #748]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3556, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3556,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3549, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3557, tmp3556
	cmp	lr, #0	@ tmp3549,
	rsb	r0, r2, r0	@ tmp3563, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3550, tmp3549
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3557,
	movle	sl, #0	@, tmp3559
	movgt	sl, #1	@, tmp3559
	ldrb	r8, [r6, #755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3550,
	addgt	sl, sl, #1	@,, MisCnt.9832, tmp3559
	cmp	r0, #0	@ tmp3563,
	ldrb	r1, [r6, #756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3570, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3564, tmp3563
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3564,
	addgt	sl, sl, #1	@,, MisCnt.9840, MisCnt.9832
	cmp	r8, #0	@ tmp3570,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3577, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3571, tmp3570
	ldrb	ip, [r6, #757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3571,
	addgt	sl, sl, #1	@,, MisCnt.9848, MisCnt.9840
	cmp	r2, #0	@ tmp3577,
	ldrb	lr, [r6, #758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3584, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3578, tmp3577
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3578,
	addgt	sl, sl, #1	@,, MisCnt.9856, MisCnt.9848
	cmp	ip, #0	@ tmp3584,
	ldrb	r0, [r6, #759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3591, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3585, tmp3584
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3585,
	addgt	sl, sl, #1	@,, MisCnt.9864, MisCnt.9856
	cmp	r1, #0	@ tmp3591,
	rsb	r8, r2, r0	@ tmp3598, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3592, tmp3591
	cmp	r1, #2	@ tmp3592,
	addgt	sl, sl, #1	@,, MisCnt.9872, MisCnt.9864
	cmp	r8, #0	@ tmp3598,
	rsblt	r8, r8, #0	@ tmp3599, tmp3598
	cmp	r8, #2	@ tmp3599,
	addgt	sl, sl, #1	@,, tmp3602, MisCnt.9872
	cmp	sl, #2	@ tmp3602,
	bgt	.L28	@,
	ldr	r3, [r6, #760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #764]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3620, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3620,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3613, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3621, tmp3620
	cmp	lr, #0	@ tmp3613,
	rsb	r0, r2, r0	@ tmp3627, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3614, tmp3613
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3621,
	movle	sl, #0	@, tmp3623
	movgt	sl, #1	@, tmp3623
	ldrb	r8, [r6, #775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3614,
	addgt	sl, sl, #1	@,, MisCnt.9898, tmp3623
	cmp	r0, #0	@ tmp3627,
	ldrb	r1, [r6, #776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3634, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3628, tmp3627
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3628,
	addgt	sl, sl, #1	@,, MisCnt.9906, MisCnt.9898
	cmp	r8, #0	@ tmp3634,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3641, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3635, tmp3634
	ldrb	ip, [r6, #777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3635,
	addgt	sl, sl, #1	@,, MisCnt.9914, MisCnt.9906
	cmp	r2, #0	@ tmp3641,
	ldrb	lr, [r6, #778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3648, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3642, tmp3641
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3642,
	addgt	sl, sl, #1	@,, MisCnt.9922, MisCnt.9914
	cmp	ip, #0	@ tmp3648,
	ldrb	r0, [r6, #779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3655, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3649, tmp3648
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3649,
	addgt	sl, sl, #1	@,, MisCnt.9930, MisCnt.9922
	cmp	r1, #0	@ tmp3655,
	rsb	r8, r2, r0	@ tmp3662, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3656, tmp3655
	cmp	r1, #2	@ tmp3656,
	addgt	sl, sl, #1	@,, MisCnt.9938, MisCnt.9930
	cmp	r8, #0	@ tmp3662,
	rsblt	r8, r8, #0	@ tmp3663, tmp3662
	cmp	r8, #2	@ tmp3663,
	addgt	sl, sl, #1	@,, tmp3666, MisCnt.9938
	cmp	sl, #2	@ tmp3666,
	bgt	.L28	@,
	ldr	r3, [r6, #780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #784]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #788]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp3684, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3684,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp3677, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3685, tmp3684
	cmp	r8, #0	@ tmp3677,
	rsb	r0, r2, r0	@ tmp3691, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3678, tmp3677
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3685,
	movle	r3, #0	@, tmp3687
	movgt	r3, #1	@, tmp3687
	ldrb	sl, [r6, #795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3678,
	addgt	r3, r3, #1	@,, MisCnt.2885, tmp3687
	cmp	r0, #0	@ tmp3691,
	ldrb	r1, [r6, #796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3698, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3692, tmp3691
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3692,
	addgt	r3, r3, #1	@,, MisCnt.2896, MisCnt.2885
	cmp	sl, #0	@ tmp3698,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3705, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3699, tmp3698
	ldrb	ip, [r6, #797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3699,
	addgt	r3, r3, #1	@,, MisCnt.2906, MisCnt.2896
	cmp	r2, #0	@ tmp3705,
	ldrb	r8, [r6, #798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3712, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3706, tmp3705
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3706,
	addgt	r3, r3, #1	@,, MisCnt.2914, MisCnt.2906
	cmp	ip, #0	@ tmp3712,
	ldrb	r0, [r6, #799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3713, tmp3712
	rsb	r1, r1, r8	@ tmp3719, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3713,
	addgt	r3, r3, #1	@,, MisCnt.2924, MisCnt.2914
	cmp	r1, #0	@ tmp3719,
	rsb	ip, r2, r0	@ tmp3726, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3720, tmp3719
	cmp	r1, #2	@ tmp3720,
	addgt	r3, r3, #1	@,, MisCnt.2935, MisCnt.2924
	cmp	ip, #0	@ tmp3726,
	rsblt	ip, ip, #0	@ tmp3727, tmp3726
	cmp	ip, #2	@ tmp3727,
	addgt	r3, r3, #1	@,, tmp3730, MisCnt.2935
	cmp	r3, #2	@ tmp3730,
	movle	r0, #13	@ Result,
	ble	.L21	@,
.L28:
	ldr	r3, [r5, #800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #804]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #808]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp3731,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp3731,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3748, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3748,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3741, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3749, tmp3748
	cmp	lr, #0	@ tmp3741,
	rsb	r0, r2, r0	@ tmp3755, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3742, tmp3741
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3749,
	movle	sl, #0	@, tmp3751
	movgt	sl, #1	@, tmp3751
	ldrb	r8, [r5, #815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3742,
	addgt	sl, sl, #1	@,, MisCnt.9964, tmp3751
	cmp	r0, #0	@ tmp3755,
	ldrb	r1, [r5, #816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3762, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3756, tmp3755
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3756,
	addgt	sl, sl, #1	@,, MisCnt.9972, MisCnt.9964
	cmp	r8, #0	@ tmp3762,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3769, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3763, tmp3762
	ldrb	ip, [r5, #817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3763,
	addgt	sl, sl, #1	@,, MisCnt.9980, MisCnt.9972
	cmp	r2, #0	@ tmp3769,
	ldrb	lr, [r5, #818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3776, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3770, tmp3769
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3770,
	addgt	sl, sl, #1	@,, MisCnt.9988, MisCnt.9980
	cmp	ip, #0	@ tmp3776,
	ldrb	r0, [r5, #819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3777, tmp3776
	rsb	r1, r1, lr	@ tmp3783, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3777,
	addgt	sl, sl, #1	@,, MisCnt.9996, MisCnt.9988
	cmp	r1, #0	@ tmp3783,
	rsb	ip, r8, r0	@ tmp3790, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3784, tmp3783
	cmp	r1, #2	@ tmp3784,
	addgt	sl, sl, #1	@,, MisCnt.10004, MisCnt.9996
	cmp	ip, #0	@ tmp3790,
	rsblt	ip, ip, #0	@ tmp3791, tmp3790
	cmp	ip, #2	@ tmp3791,
	addgt	sl, sl, #1	@,, tmp3794, MisCnt.10004
	cmp	sl, #2	@ tmp3794,
	bgt	.L29	@,
	ldr	r3, [r6, #820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #824]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #828]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3812, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3812,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3805, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3813, tmp3812
	cmp	lr, #0	@ tmp3805,
	rsb	r0, r2, r0	@ tmp3819, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3806, tmp3805
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3813,
	movle	sl, #0	@, tmp3815
	movgt	sl, #1	@, tmp3815
	ldrb	r8, [r6, #835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3806,
	addgt	sl, sl, #1	@,, MisCnt.10030, tmp3815
	cmp	r0, #0	@ tmp3819,
	ldrb	r1, [r6, #836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3826, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3820, tmp3819
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3820,
	addgt	sl, sl, #1	@,, MisCnt.10038, MisCnt.10030
	cmp	r8, #0	@ tmp3826,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3833, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3827, tmp3826
	ldrb	ip, [r6, #837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3827,
	addgt	sl, sl, #1	@,, MisCnt.10046, MisCnt.10038
	cmp	r2, #0	@ tmp3833,
	ldrb	lr, [r6, #838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3840, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3834, tmp3833
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3834,
	addgt	sl, sl, #1	@,, MisCnt.10054, MisCnt.10046
	cmp	ip, #0	@ tmp3840,
	ldrb	r0, [r6, #839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3847, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3841, tmp3840
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3841,
	addgt	sl, sl, #1	@,, MisCnt.10062, MisCnt.10054
	cmp	r1, #0	@ tmp3847,
	rsb	r8, r2, r0	@ tmp3854, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3848, tmp3847
	cmp	r1, #2	@ tmp3848,
	addgt	sl, sl, #1	@,, MisCnt.10070, MisCnt.10062
	cmp	r8, #0	@ tmp3854,
	rsblt	r8, r8, #0	@ tmp3855, tmp3854
	cmp	r8, #2	@ tmp3855,
	addgt	sl, sl, #1	@,, tmp3858, MisCnt.10070
	cmp	sl, #2	@ tmp3858,
	bgt	.L29	@,
	ldr	r3, [r6, #840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #844]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #848]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3876, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3876,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3869, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3877, tmp3876
	cmp	lr, #0	@ tmp3869,
	rsb	r0, r2, r0	@ tmp3883, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3870, tmp3869
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3877,
	movle	sl, #0	@, tmp3879
	movgt	sl, #1	@, tmp3879
	ldrb	r8, [r6, #855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3870,
	addgt	sl, sl, #1	@,, MisCnt.10096, tmp3879
	cmp	r0, #0	@ tmp3883,
	ldrb	r1, [r6, #856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3890, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3884, tmp3883
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3884,
	addgt	sl, sl, #1	@,, MisCnt.10104, MisCnt.10096
	cmp	r8, #0	@ tmp3890,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3897, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3891, tmp3890
	ldrb	ip, [r6, #857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3891,
	addgt	sl, sl, #1	@,, MisCnt.10112, MisCnt.10104
	cmp	r2, #0	@ tmp3897,
	ldrb	lr, [r6, #858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3904, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3898, tmp3897
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3898,
	addgt	sl, sl, #1	@,, MisCnt.10120, MisCnt.10112
	cmp	ip, #0	@ tmp3904,
	ldrb	r0, [r6, #859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3911, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3905, tmp3904
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3905,
	addgt	sl, sl, #1	@,, MisCnt.10128, MisCnt.10120
	cmp	r1, #0	@ tmp3911,
	rsb	r8, r2, r0	@ tmp3918, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3912, tmp3911
	cmp	r1, #2	@ tmp3912,
	addgt	sl, sl, #1	@,, MisCnt.10136, MisCnt.10128
	cmp	r8, #0	@ tmp3918,
	rsblt	r8, r8, #0	@ tmp3919, tmp3918
	cmp	r8, #2	@ tmp3919,
	addgt	sl, sl, #1	@,, tmp3922, MisCnt.10136
	cmp	sl, #2	@ tmp3922,
	bgt	.L29	@,
	ldr	r3, [r6, #860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #864]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp3940, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3940,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp3933, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3941, tmp3940
	cmp	lr, #0	@ tmp3933,
	rsb	r0, r2, r0	@ tmp3947, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3934, tmp3933
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3941,
	movle	sl, #0	@, tmp3943
	movgt	sl, #1	@, tmp3943
	ldrb	r8, [r6, #875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3934,
	addgt	sl, sl, #1	@,, MisCnt.10162, tmp3943
	cmp	r0, #0	@ tmp3947,
	ldrb	r1, [r6, #876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp3954, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3948, tmp3947
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3948,
	addgt	sl, sl, #1	@,, MisCnt.10170, MisCnt.10162
	cmp	r8, #0	@ tmp3954,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3961, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3955, tmp3954
	ldrb	ip, [r6, #877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3955,
	addgt	sl, sl, #1	@,, MisCnt.10178, MisCnt.10170
	cmp	r2, #0	@ tmp3961,
	ldrb	lr, [r6, #878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3968, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3962, tmp3961
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3962,
	addgt	sl, sl, #1	@,, MisCnt.10186, MisCnt.10178
	cmp	ip, #0	@ tmp3968,
	ldrb	r0, [r6, #879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3975, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3969, tmp3968
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3969,
	addgt	sl, sl, #1	@,, MisCnt.10194, MisCnt.10186
	cmp	r1, #0	@ tmp3975,
	rsb	r8, r2, r0	@ tmp3982, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3976, tmp3975
	cmp	r1, #2	@ tmp3976,
	addgt	sl, sl, #1	@,, MisCnt.10202, MisCnt.10194
	cmp	r8, #0	@ tmp3982,
	rsblt	r8, r8, #0	@ tmp3983, tmp3982
	cmp	r8, #2	@ tmp3983,
	addgt	sl, sl, #1	@,, tmp3986, MisCnt.10202
	cmp	sl, #2	@ tmp3986,
	bgt	.L29	@,
	ldr	r3, [r6, #880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #884]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #888]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4004, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4004,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp3997, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4005, tmp4004
	cmp	r8, #0	@ tmp3997,
	rsb	r0, r2, r0	@ tmp4011, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp3998, tmp3997
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4005,
	movle	r3, #0	@, tmp4007
	movgt	r3, #1	@, tmp4007
	ldrb	sl, [r6, #895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp3998,
	addgt	r3, r3, #1	@,, MisCnt.2953, tmp4007
	cmp	r0, #0	@ tmp4011,
	ldrb	r1, [r6, #896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4018, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4012, tmp4011
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4012,
	addgt	r3, r3, #1	@,, MisCnt.2962, MisCnt.2953
	cmp	sl, #0	@ tmp4018,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4025, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4019, tmp4018
	ldrb	ip, [r6, #897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4019,
	addgt	r3, r3, #1	@,, MisCnt.2973, MisCnt.2962
	cmp	r2, #0	@ tmp4025,
	ldrb	r8, [r6, #898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4032, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4026, tmp4025
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4026,
	addgt	r3, r3, #1	@,, MisCnt.2984, MisCnt.2973
	cmp	ip, #0	@ tmp4032,
	ldrb	r0, [r6, #899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4033, tmp4032
	rsb	r1, r1, r8	@ tmp4039, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4033,
	addgt	r3, r3, #1	@,, MisCnt.2993, MisCnt.2984
	cmp	r1, #0	@ tmp4039,
	rsb	ip, r2, r0	@ tmp4046, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4040, tmp4039
	cmp	r1, #2	@ tmp4040,
	addgt	r3, r3, #1	@,, MisCnt.3004, MisCnt.2993
	cmp	ip, #0	@ tmp4046,
	rsblt	ip, ip, #0	@ tmp4047, tmp4046
	cmp	ip, #2	@ tmp4047,
	addgt	r3, r3, #1	@,, tmp4050, MisCnt.3004
	cmp	r3, #2	@ tmp4050,
	movle	r0, #14	@ Result,
	ble	.L21	@,
.L29:
	ldr	r3, [r5, #900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #904]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #908]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp4051,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp4051,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4068, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4068,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4061, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4069, tmp4068
	cmp	lr, #0	@ tmp4061,
	rsb	r0, r2, r0	@ tmp4075, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4062, tmp4061
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4069,
	movle	sl, #0	@, tmp4071
	movgt	sl, #1	@, tmp4071
	ldrb	r8, [r5, #915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4062,
	addgt	sl, sl, #1	@,, MisCnt.10228, tmp4071
	cmp	r0, #0	@ tmp4075,
	ldrb	r1, [r5, #916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4082, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4076, tmp4075
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4076,
	addgt	sl, sl, #1	@,, MisCnt.10236, MisCnt.10228
	cmp	r8, #0	@ tmp4082,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4089, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4083, tmp4082
	ldrb	ip, [r5, #917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4083,
	addgt	sl, sl, #1	@,, MisCnt.10244, MisCnt.10236
	cmp	r2, #0	@ tmp4089,
	ldrb	lr, [r5, #918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4096, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4090, tmp4089
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4090,
	addgt	sl, sl, #1	@,, MisCnt.10252, MisCnt.10244
	cmp	ip, #0	@ tmp4096,
	ldrb	r0, [r5, #919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4097, tmp4096
	rsb	r1, r1, lr	@ tmp4103, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4097,
	addgt	sl, sl, #1	@,, MisCnt.10260, MisCnt.10252
	cmp	r1, #0	@ tmp4103,
	rsb	ip, r8, r0	@ tmp4110, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4104, tmp4103
	cmp	r1, #2	@ tmp4104,
	addgt	sl, sl, #1	@,, MisCnt.10268, MisCnt.10260
	cmp	ip, #0	@ tmp4110,
	rsblt	ip, ip, #0	@ tmp4111, tmp4110
	cmp	ip, #2	@ tmp4111,
	addgt	sl, sl, #1	@,, tmp4114, MisCnt.10268
	cmp	sl, #2	@ tmp4114,
	bgt	.L30	@,
	ldr	r3, [r6, #920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #924]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #928]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4132, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4132,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4125, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4133, tmp4132
	cmp	lr, #0	@ tmp4125,
	rsb	r0, r2, r0	@ tmp4139, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4126, tmp4125
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4133,
	movle	sl, #0	@, tmp4135
	movgt	sl, #1	@, tmp4135
	ldrb	r8, [r6, #935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4126,
	addgt	sl, sl, #1	@,, MisCnt.10294, tmp4135
	cmp	r0, #0	@ tmp4139,
	ldrb	r1, [r6, #936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4146, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4140, tmp4139
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4140,
	addgt	sl, sl, #1	@,, MisCnt.10302, MisCnt.10294
	cmp	r8, #0	@ tmp4146,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4153, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4147, tmp4146
	ldrb	ip, [r6, #937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4147,
	addgt	sl, sl, #1	@,, MisCnt.10310, MisCnt.10302
	cmp	r2, #0	@ tmp4153,
	ldrb	lr, [r6, #938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4160, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4154, tmp4153
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4154,
	addgt	sl, sl, #1	@,, MisCnt.10318, MisCnt.10310
	cmp	ip, #0	@ tmp4160,
	ldrb	r0, [r6, #939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4167, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4161, tmp4160
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4161,
	addgt	sl, sl, #1	@,, MisCnt.10326, MisCnt.10318
	cmp	r1, #0	@ tmp4167,
	rsb	r8, r2, r0	@ tmp4174, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4168, tmp4167
	cmp	r1, #2	@ tmp4168,
	addgt	sl, sl, #1	@,, MisCnt.10334, MisCnt.10326
	cmp	r8, #0	@ tmp4174,
	rsblt	r8, r8, #0	@ tmp4175, tmp4174
	cmp	r8, #2	@ tmp4175,
	addgt	sl, sl, #1	@,, tmp4178, MisCnt.10334
	cmp	sl, #2	@ tmp4178,
	bgt	.L30	@,
	ldr	r3, [r6, #940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #944]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #948]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4196, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4196,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4189, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4197, tmp4196
	cmp	lr, #0	@ tmp4189,
	rsb	r0, r2, r0	@ tmp4203, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4190, tmp4189
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4197,
	movle	sl, #0	@, tmp4199
	movgt	sl, #1	@, tmp4199
	ldrb	r8, [r6, #955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4190,
	addgt	sl, sl, #1	@,, MisCnt.10360, tmp4199
	cmp	r0, #0	@ tmp4203,
	ldrb	r1, [r6, #956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4210, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4204, tmp4203
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4204,
	addgt	sl, sl, #1	@,, MisCnt.10368, MisCnt.10360
	cmp	r8, #0	@ tmp4210,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4217, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4211, tmp4210
	ldrb	ip, [r6, #957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4211,
	addgt	sl, sl, #1	@,, MisCnt.10376, MisCnt.10368
	cmp	r2, #0	@ tmp4217,
	ldrb	lr, [r6, #958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4224, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4218, tmp4217
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4218,
	addgt	sl, sl, #1	@,, MisCnt.10384, MisCnt.10376
	cmp	ip, #0	@ tmp4224,
	ldrb	r0, [r6, #959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4231, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4225, tmp4224
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4225,
	addgt	sl, sl, #1	@,, MisCnt.10392, MisCnt.10384
	cmp	r1, #0	@ tmp4231,
	rsb	r8, r2, r0	@ tmp4238, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4232, tmp4231
	cmp	r1, #2	@ tmp4232,
	addgt	sl, sl, #1	@,, MisCnt.10400, MisCnt.10392
	cmp	r8, #0	@ tmp4238,
	rsblt	r8, r8, #0	@ tmp4239, tmp4238
	cmp	r8, #2	@ tmp4239,
	addgt	sl, sl, #1	@,, tmp4242, MisCnt.10400
	cmp	sl, #2	@ tmp4242,
	bgt	.L30	@,
	ldr	r3, [r6, #960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #964]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #968]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4260, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4260,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4253, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4261, tmp4260
	cmp	lr, #0	@ tmp4253,
	rsb	r0, r2, r0	@ tmp4267, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4254, tmp4253
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4261,
	movle	sl, #0	@, tmp4263
	movgt	sl, #1	@, tmp4263
	ldrb	r8, [r6, #975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4254,
	addgt	sl, sl, #1	@,, MisCnt.10426, tmp4263
	cmp	r0, #0	@ tmp4267,
	ldrb	r1, [r6, #976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4274, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4268, tmp4267
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4268,
	addgt	sl, sl, #1	@,, MisCnt.10434, MisCnt.10426
	cmp	r8, #0	@ tmp4274,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4281, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4275, tmp4274
	ldrb	ip, [r6, #977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4275,
	addgt	sl, sl, #1	@,, MisCnt.10442, MisCnt.10434
	cmp	r2, #0	@ tmp4281,
	ldrb	lr, [r6, #978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4288, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4282, tmp4281
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4282,
	addgt	sl, sl, #1	@,, MisCnt.10450, MisCnt.10442
	cmp	ip, #0	@ tmp4288,
	ldrb	r0, [r6, #979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4295, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4289, tmp4288
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4289,
	addgt	sl, sl, #1	@,, MisCnt.10458, MisCnt.10450
	cmp	r1, #0	@ tmp4295,
	rsb	r8, r2, r0	@ tmp4302, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4296, tmp4295
	cmp	r1, #2	@ tmp4296,
	addgt	sl, sl, #1	@,, MisCnt.10466, MisCnt.10458
	cmp	r8, #0	@ tmp4302,
	rsblt	r8, r8, #0	@ tmp4303, tmp4302
	cmp	r8, #2	@ tmp4303,
	addgt	sl, sl, #1	@,, tmp4306, MisCnt.10466
	cmp	sl, #2	@ tmp4306,
	bgt	.L30	@,
	ldr	r3, [r6, #980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #984]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #988]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4324, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4324,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp4317, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4325, tmp4324
	cmp	r8, #0	@ tmp4317,
	rsb	r0, r2, r0	@ tmp4331, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4318, tmp4317
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4325,
	movle	r3, #0	@, tmp4327
	movgt	r3, #1	@, tmp4327
	ldrb	sl, [r6, #995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4318,
	addgt	r3, r3, #1	@,, MisCnt.3023, tmp4327
	cmp	r0, #0	@ tmp4331,
	ldrb	r1, [r6, #996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4338, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4332, tmp4331
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4332,
	addgt	r3, r3, #1	@,, MisCnt.3033, MisCnt.3023
	cmp	sl, #0	@ tmp4338,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4345, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4339, tmp4338
	ldrb	ip, [r6, #997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4339,
	addgt	r3, r3, #1	@,, MisCnt.3043, MisCnt.3033
	cmp	r2, #0	@ tmp4345,
	ldrb	r8, [r6, #998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4352, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4346, tmp4345
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4346,
	addgt	r3, r3, #1	@,, MisCnt.3054, MisCnt.3043
	cmp	ip, #0	@ tmp4352,
	ldrb	r0, [r6, #999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4353, tmp4352
	rsb	r1, r1, r8	@ tmp4359, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4353,
	addgt	r3, r3, #1	@,, MisCnt.3065, MisCnt.3054
	cmp	r1, #0	@ tmp4359,
	rsb	ip, r2, r0	@ tmp4366, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4360, tmp4359
	cmp	r1, #2	@ tmp4360,
	addgt	r3, r3, #1	@,, MisCnt.3074, MisCnt.3065
	cmp	ip, #0	@ tmp4366,
	rsblt	ip, ip, #0	@ tmp4367, tmp4366
	cmp	ip, #2	@ tmp4367,
	addgt	r3, r3, #1	@,, tmp4370, MisCnt.3074
	cmp	r3, #2	@ tmp4370,
	movle	r0, #15	@ Result,
	ble	.L21	@,
.L30:
	ldr	r3, [r5, #1000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #1004]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1008]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp4371,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp4371,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #1013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4388, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4388,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4381, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4389, tmp4388
	cmp	lr, #0	@ tmp4381,
	rsb	r0, r2, r0	@ tmp4395, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4382, tmp4381
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4389,
	movle	sl, #0	@, tmp4391
	movgt	sl, #1	@, tmp4391
	ldrb	r8, [r5, #1015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4382,
	addgt	sl, sl, #1	@,, MisCnt.10492, tmp4391
	cmp	r0, #0	@ tmp4395,
	ldrb	r1, [r5, #1016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4402, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4396, tmp4395
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4396,
	addgt	sl, sl, #1	@,, MisCnt.10500, MisCnt.10492
	cmp	r8, #0	@ tmp4402,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4409, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4403, tmp4402
	ldrb	ip, [r5, #1017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4403,
	addgt	sl, sl, #1	@,, MisCnt.10508, MisCnt.10500
	cmp	r2, #0	@ tmp4409,
	ldrb	lr, [r5, #1018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4416, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4410, tmp4409
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4410,
	addgt	sl, sl, #1	@,, MisCnt.10516, MisCnt.10508
	cmp	ip, #0	@ tmp4416,
	ldrb	r0, [r5, #1019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4417, tmp4416
	rsb	r1, r1, lr	@ tmp4423, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4417,
	addgt	sl, sl, #1	@,, MisCnt.10524, MisCnt.10516
	cmp	r1, #0	@ tmp4423,
	rsb	ip, r8, r0	@ tmp4430, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4424, tmp4423
	cmp	r1, #2	@ tmp4424,
	addgt	sl, sl, #1	@,, MisCnt.10532, MisCnt.10524
	cmp	ip, #0	@ tmp4430,
	rsblt	ip, ip, #0	@ tmp4431, tmp4430
	cmp	ip, #2	@ tmp4431,
	addgt	sl, sl, #1	@,, tmp4434, MisCnt.10532
	cmp	sl, #2	@ tmp4434,
	bgt	.L31	@,
	ldr	r3, [r6, #1020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1024]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1028]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4452, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4452,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4445, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4453, tmp4452
	cmp	lr, #0	@ tmp4445,
	rsb	r0, r2, r0	@ tmp4459, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4446, tmp4445
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4453,
	movle	sl, #0	@, tmp4455
	movgt	sl, #1	@, tmp4455
	ldrb	r8, [r6, #1035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4446,
	addgt	sl, sl, #1	@,, MisCnt.10558, tmp4455
	cmp	r0, #0	@ tmp4459,
	ldrb	r1, [r6, #1036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4466, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4460, tmp4459
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4460,
	addgt	sl, sl, #1	@,, MisCnt.10566, MisCnt.10558
	cmp	r8, #0	@ tmp4466,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4473, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4467, tmp4466
	ldrb	ip, [r6, #1037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4467,
	addgt	sl, sl, #1	@,, MisCnt.10574, MisCnt.10566
	cmp	r2, #0	@ tmp4473,
	ldrb	lr, [r6, #1038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4480, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4474, tmp4473
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4474,
	addgt	sl, sl, #1	@,, MisCnt.10582, MisCnt.10574
	cmp	ip, #0	@ tmp4480,
	ldrb	r0, [r6, #1039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4487, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4481, tmp4480
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4481,
	addgt	sl, sl, #1	@,, MisCnt.10590, MisCnt.10582
	cmp	r1, #0	@ tmp4487,
	rsb	r8, r2, r0	@ tmp4494, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4488, tmp4487
	cmp	r1, #2	@ tmp4488,
	addgt	sl, sl, #1	@,, MisCnt.10598, MisCnt.10590
	cmp	r8, #0	@ tmp4494,
	rsblt	r8, r8, #0	@ tmp4495, tmp4494
	cmp	r8, #2	@ tmp4495,
	addgt	sl, sl, #1	@,, tmp4498, MisCnt.10598
	cmp	sl, #2	@ tmp4498,
	bgt	.L31	@,
	ldr	r3, [r6, #1040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1044]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1048]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4516, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4516,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4509, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4517, tmp4516
	cmp	lr, #0	@ tmp4509,
	rsb	r0, r2, r0	@ tmp4523, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4510, tmp4509
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4517,
	movle	sl, #0	@, tmp4519
	movgt	sl, #1	@, tmp4519
	ldrb	r8, [r6, #1055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4510,
	addgt	sl, sl, #1	@,, MisCnt.10624, tmp4519
	cmp	r0, #0	@ tmp4523,
	ldrb	r1, [r6, #1056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4530, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4524, tmp4523
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4524,
	addgt	sl, sl, #1	@,, MisCnt.10632, MisCnt.10624
	cmp	r8, #0	@ tmp4530,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4537, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4531, tmp4530
	ldrb	ip, [r6, #1057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4531,
	addgt	sl, sl, #1	@,, MisCnt.10640, MisCnt.10632
	cmp	r2, #0	@ tmp4537,
	ldrb	lr, [r6, #1058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4544, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4538, tmp4537
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4538,
	addgt	sl, sl, #1	@,, MisCnt.10648, MisCnt.10640
	cmp	ip, #0	@ tmp4544,
	ldrb	r0, [r6, #1059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4551, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4545, tmp4544
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4545,
	addgt	sl, sl, #1	@,, MisCnt.10656, MisCnt.10648
	cmp	r1, #0	@ tmp4551,
	rsb	r8, r2, r0	@ tmp4558, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4552, tmp4551
	cmp	r1, #2	@ tmp4552,
	addgt	sl, sl, #1	@,, MisCnt.10664, MisCnt.10656
	cmp	r8, #0	@ tmp4558,
	rsblt	r8, r8, #0	@ tmp4559, tmp4558
	cmp	r8, #2	@ tmp4559,
	addgt	sl, sl, #1	@,, tmp4562, MisCnt.10664
	cmp	sl, #2	@ tmp4562,
	bgt	.L31	@,
	ldr	r3, [r6, #1060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1064]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1068]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4580, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4580,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4573, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4581, tmp4580
	cmp	lr, #0	@ tmp4573,
	rsb	r0, r2, r0	@ tmp4587, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4574, tmp4573
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4581,
	movle	sl, #0	@, tmp4583
	movgt	sl, #1	@, tmp4583
	ldrb	r8, [r6, #1075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4574,
	addgt	sl, sl, #1	@,, MisCnt.10690, tmp4583
	cmp	r0, #0	@ tmp4587,
	ldrb	r1, [r6, #1076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4594, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4588, tmp4587
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4588,
	addgt	sl, sl, #1	@,, MisCnt.10698, MisCnt.10690
	cmp	r8, #0	@ tmp4594,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4601, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4595, tmp4594
	ldrb	ip, [r6, #1077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4595,
	addgt	sl, sl, #1	@,, MisCnt.10706, MisCnt.10698
	cmp	r2, #0	@ tmp4601,
	ldrb	lr, [r6, #1078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4608, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4602, tmp4601
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4602,
	addgt	sl, sl, #1	@,, MisCnt.10714, MisCnt.10706
	cmp	ip, #0	@ tmp4608,
	ldrb	r0, [r6, #1079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4615, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4609, tmp4608
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4609,
	addgt	sl, sl, #1	@,, MisCnt.10722, MisCnt.10714
	cmp	r1, #0	@ tmp4615,
	rsb	r8, r2, r0	@ tmp4622, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4616, tmp4615
	cmp	r1, #2	@ tmp4616,
	addgt	sl, sl, #1	@,, MisCnt.10730, MisCnt.10722
	cmp	r8, #0	@ tmp4622,
	rsblt	r8, r8, #0	@ tmp4623, tmp4622
	cmp	r8, #2	@ tmp4623,
	addgt	sl, sl, #1	@,, tmp4626, MisCnt.10730
	cmp	sl, #2	@ tmp4626,
	bgt	.L31	@,
	ldr	r3, [r6, #1080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1084]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1088]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4644, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4644,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp4637, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4645, tmp4644
	cmp	r8, #0	@ tmp4637,
	rsb	r0, r2, r0	@ tmp4651, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4638, tmp4637
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4645,
	movle	r3, #0	@, tmp4647
	movgt	r3, #1	@, tmp4647
	ldrb	sl, [r6, #1095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4638,
	addgt	r3, r3, #1	@,, MisCnt.3095, tmp4647
	cmp	r0, #0	@ tmp4651,
	ldrb	r1, [r6, #1096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4658, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4652, tmp4651
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4652,
	addgt	r3, r3, #1	@,, MisCnt.3106, MisCnt.3095
	cmp	sl, #0	@ tmp4658,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4665, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4659, tmp4658
	ldrb	ip, [r6, #1097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4659,
	addgt	r3, r3, #1	@,, MisCnt.3115, MisCnt.3106
	cmp	r2, #0	@ tmp4665,
	ldrb	r8, [r6, #1098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4672, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4666, tmp4665
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4666,
	addgt	r3, r3, #1	@,, MisCnt.3126, MisCnt.3115
	cmp	ip, #0	@ tmp4672,
	ldrb	r0, [r6, #1099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4673, tmp4672
	rsb	r1, r1, r8	@ tmp4679, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4673,
	addgt	r3, r3, #1	@,, MisCnt.3137, MisCnt.3126
	cmp	r1, #0	@ tmp4679,
	rsb	ip, r2, r0	@ tmp4686, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4680, tmp4679
	cmp	r1, #2	@ tmp4680,
	addgt	r3, r3, #1	@,, MisCnt.3147, MisCnt.3137
	cmp	ip, #0	@ tmp4686,
	rsblt	ip, ip, #0	@ tmp4687, tmp4686
	cmp	ip, #2	@ tmp4687,
	addgt	r3, r3, #1	@,, tmp4690, MisCnt.3147
	cmp	r3, #2	@ tmp4690,
	movle	r0, #16	@ Result,
	ble	.L21	@,
.L31:
	ldr	r3, [r5, #1100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #1104]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1108]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp4691,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp4691,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #1113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4708, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4708,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4701, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4709, tmp4708
	cmp	lr, #0	@ tmp4701,
	rsb	r0, r2, r0	@ tmp4715, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4702, tmp4701
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4709,
	movle	sl, #0	@, tmp4711
	movgt	sl, #1	@, tmp4711
	ldrb	r8, [r5, #1115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4702,
	addgt	sl, sl, #1	@,, MisCnt.10756, tmp4711
	cmp	r0, #0	@ tmp4715,
	ldrb	r1, [r5, #1116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4722, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4716, tmp4715
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4716,
	addgt	sl, sl, #1	@,, MisCnt.10764, MisCnt.10756
	cmp	r8, #0	@ tmp4722,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4729, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4723, tmp4722
	ldrb	ip, [r5, #1117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4723,
	addgt	sl, sl, #1	@,, MisCnt.10772, MisCnt.10764
	cmp	r2, #0	@ tmp4729,
	ldrb	lr, [r5, #1118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4736, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4730, tmp4729
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4730,
	addgt	sl, sl, #1	@,, MisCnt.10780, MisCnt.10772
	cmp	ip, #0	@ tmp4736,
	ldrb	r0, [r5, #1119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4737, tmp4736
	rsb	r1, r1, lr	@ tmp4743, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4737,
	addgt	sl, sl, #1	@,, MisCnt.10788, MisCnt.10780
	cmp	r1, #0	@ tmp4743,
	rsb	ip, r8, r0	@ tmp4750, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4744, tmp4743
	cmp	r1, #2	@ tmp4744,
	addgt	sl, sl, #1	@,, MisCnt.10796, MisCnt.10788
	cmp	ip, #0	@ tmp4750,
	rsblt	ip, ip, #0	@ tmp4751, tmp4750
	cmp	ip, #2	@ tmp4751,
	addgt	sl, sl, #1	@,, tmp4754, MisCnt.10796
	cmp	sl, #2	@ tmp4754,
	bgt	.L32	@,
	ldr	r3, [r6, #1120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1124]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1128]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4772, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4772,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4765, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4773, tmp4772
	cmp	lr, #0	@ tmp4765,
	rsb	r0, r2, r0	@ tmp4779, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4766, tmp4765
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4773,
	movle	sl, #0	@, tmp4775
	movgt	sl, #1	@, tmp4775
	ldrb	r8, [r6, #1135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4766,
	addgt	sl, sl, #1	@,, MisCnt.10822, tmp4775
	cmp	r0, #0	@ tmp4779,
	ldrb	r1, [r6, #1136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4786, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4780, tmp4779
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4780,
	addgt	sl, sl, #1	@,, MisCnt.10830, MisCnt.10822
	cmp	r8, #0	@ tmp4786,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4793, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4787, tmp4786
	ldrb	ip, [r6, #1137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4787,
	addgt	sl, sl, #1	@,, MisCnt.10838, MisCnt.10830
	cmp	r2, #0	@ tmp4793,
	ldrb	lr, [r6, #1138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4800, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4794, tmp4793
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4794,
	addgt	sl, sl, #1	@,, MisCnt.10846, MisCnt.10838
	cmp	ip, #0	@ tmp4800,
	ldrb	r0, [r6, #1139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4807, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4801, tmp4800
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4801,
	addgt	sl, sl, #1	@,, MisCnt.10854, MisCnt.10846
	cmp	r1, #0	@ tmp4807,
	rsb	r8, r2, r0	@ tmp4814, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4808, tmp4807
	cmp	r1, #2	@ tmp4808,
	addgt	sl, sl, #1	@,, MisCnt.10862, MisCnt.10854
	cmp	r8, #0	@ tmp4814,
	rsblt	r8, r8, #0	@ tmp4815, tmp4814
	cmp	r8, #2	@ tmp4815,
	addgt	sl, sl, #1	@,, tmp4818, MisCnt.10862
	cmp	sl, #2	@ tmp4818,
	bgt	.L32	@,
	ldr	r3, [r6, #1140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1144]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1148]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4836, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4836,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4829, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4837, tmp4836
	cmp	lr, #0	@ tmp4829,
	rsb	r0, r2, r0	@ tmp4843, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4830, tmp4829
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4837,
	movle	sl, #0	@, tmp4839
	movgt	sl, #1	@, tmp4839
	ldrb	r8, [r6, #1155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4830,
	addgt	sl, sl, #1	@,, MisCnt.10888, tmp4839
	cmp	r0, #0	@ tmp4843,
	ldrb	r1, [r6, #1156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4850, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4844, tmp4843
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4844,
	addgt	sl, sl, #1	@,, MisCnt.10896, MisCnt.10888
	cmp	r8, #0	@ tmp4850,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4857, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4851, tmp4850
	ldrb	ip, [r6, #1157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4851,
	addgt	sl, sl, #1	@,, MisCnt.10904, MisCnt.10896
	cmp	r2, #0	@ tmp4857,
	ldrb	lr, [r6, #1158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4864, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4858, tmp4857
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4858,
	addgt	sl, sl, #1	@,, MisCnt.10912, MisCnt.10904
	cmp	ip, #0	@ tmp4864,
	ldrb	r0, [r6, #1159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4871, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4865, tmp4864
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4865,
	addgt	sl, sl, #1	@,, MisCnt.10920, MisCnt.10912
	cmp	r1, #0	@ tmp4871,
	rsb	r8, r2, r0	@ tmp4878, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4872, tmp4871
	cmp	r1, #2	@ tmp4872,
	addgt	sl, sl, #1	@,, MisCnt.10928, MisCnt.10920
	cmp	r8, #0	@ tmp4878,
	rsblt	r8, r8, #0	@ tmp4879, tmp4878
	cmp	r8, #2	@ tmp4879,
	addgt	sl, sl, #1	@,, tmp4882, MisCnt.10928
	cmp	sl, #2	@ tmp4882,
	bgt	.L32	@,
	ldr	r3, [r6, #1160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1164]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1168]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp4900, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4900,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp4893, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4901, tmp4900
	cmp	lr, #0	@ tmp4893,
	rsb	r0, r2, r0	@ tmp4907, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4894, tmp4893
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4901,
	movle	sl, #0	@, tmp4903
	movgt	sl, #1	@, tmp4903
	ldrb	r8, [r6, #1175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4894,
	addgt	sl, sl, #1	@,, MisCnt.10954, tmp4903
	cmp	r0, #0	@ tmp4907,
	ldrb	r1, [r6, #1176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp4914, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4908, tmp4907
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4908,
	addgt	sl, sl, #1	@,, MisCnt.10962, MisCnt.10954
	cmp	r8, #0	@ tmp4914,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4921, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4915, tmp4914
	ldrb	ip, [r6, #1177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4915,
	addgt	sl, sl, #1	@,, MisCnt.10970, MisCnt.10962
	cmp	r2, #0	@ tmp4921,
	ldrb	lr, [r6, #1178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4928, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4922, tmp4921
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4922,
	addgt	sl, sl, #1	@,, MisCnt.10978, MisCnt.10970
	cmp	ip, #0	@ tmp4928,
	ldrb	r0, [r6, #1179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4935, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4929, tmp4928
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4929,
	addgt	sl, sl, #1	@,, MisCnt.10986, MisCnt.10978
	cmp	r1, #0	@ tmp4935,
	rsb	r8, r2, r0	@ tmp4942, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4936, tmp4935
	cmp	r1, #2	@ tmp4936,
	addgt	sl, sl, #1	@,, MisCnt.10994, MisCnt.10986
	cmp	r8, #0	@ tmp4942,
	rsblt	r8, r8, #0	@ tmp4943, tmp4942
	cmp	r8, #2	@ tmp4943,
	addgt	sl, sl, #1	@,, tmp4946, MisCnt.10994
	cmp	sl, #2	@ tmp4946,
	bgt	.L32	@,
	ldr	r3, [r6, #1180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1184]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp4964, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4964,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp4957, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4965, tmp4964
	cmp	r8, #0	@ tmp4957,
	rsb	r0, r2, r0	@ tmp4971, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp4958, tmp4957
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4965,
	movle	r3, #0	@, tmp4967
	movgt	r3, #1	@, tmp4967
	ldrb	sl, [r6, #1195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp4958,
	addgt	r3, r3, #1	@,, MisCnt.3166, tmp4967
	cmp	r0, #0	@ tmp4971,
	ldrb	r1, [r6, #1196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4978, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4972, tmp4971
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4972,
	addgt	r3, r3, #1	@,, MisCnt.3177, MisCnt.3166
	cmp	sl, #0	@ tmp4978,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4985, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4979, tmp4978
	ldrb	ip, [r6, #1197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4979,
	addgt	r3, r3, #1	@,, MisCnt.3188, MisCnt.3177
	cmp	r2, #0	@ tmp4985,
	ldrb	r8, [r6, #1198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4992, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4986, tmp4985
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4986,
	addgt	r3, r3, #1	@,, MisCnt.3196, MisCnt.3188
	cmp	ip, #0	@ tmp4992,
	ldrb	r0, [r6, #1199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4993, tmp4992
	rsb	r1, r1, r8	@ tmp4999, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4993,
	addgt	r3, r3, #1	@,, MisCnt.3206, MisCnt.3196
	cmp	r1, #0	@ tmp4999,
	rsb	ip, r2, r0	@ tmp5006, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5000, tmp4999
	cmp	r1, #2	@ tmp5000,
	addgt	r3, r3, #1	@,, MisCnt.3215, MisCnt.3206
	cmp	ip, #0	@ tmp5006,
	rsblt	ip, ip, #0	@ tmp5007, tmp5006
	cmp	ip, #2	@ tmp5007,
	addgt	r3, r3, #1	@,, tmp5010, MisCnt.3215
	cmp	r3, #2	@ tmp5010,
	movle	r0, #17	@ Result,
	ble	.L21	@,
.L32:
	ldr	r3, [r5, #1200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #1204]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1208]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5011,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5011,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #1213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5028, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5028,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5021, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5029, tmp5028
	cmp	lr, #0	@ tmp5021,
	rsb	r0, r2, r0	@ tmp5035, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5022, tmp5021
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5029,
	movle	sl, #0	@, tmp5031
	movgt	sl, #1	@, tmp5031
	ldrb	r8, [r5, #1215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5022,
	addgt	sl, sl, #1	@,, MisCnt.11020, tmp5031
	cmp	r0, #0	@ tmp5035,
	ldrb	r1, [r5, #1216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5042, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5036, tmp5035
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5036,
	addgt	sl, sl, #1	@,, MisCnt.11028, MisCnt.11020
	cmp	r8, #0	@ tmp5042,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5049, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5043, tmp5042
	ldrb	ip, [r5, #1217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5043,
	addgt	sl, sl, #1	@,, MisCnt.11036, MisCnt.11028
	cmp	r2, #0	@ tmp5049,
	ldrb	lr, [r5, #1218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5056, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5050, tmp5049
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5050,
	addgt	sl, sl, #1	@,, MisCnt.11044, MisCnt.11036
	cmp	ip, #0	@ tmp5056,
	ldrb	r0, [r5, #1219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5057, tmp5056
	rsb	r1, r1, lr	@ tmp5063, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5057,
	addgt	sl, sl, #1	@,, MisCnt.11052, MisCnt.11044
	cmp	r1, #0	@ tmp5063,
	rsb	ip, r8, r0	@ tmp5070, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5064, tmp5063
	cmp	r1, #2	@ tmp5064,
	addgt	sl, sl, #1	@,, MisCnt.11060, MisCnt.11052
	cmp	ip, #0	@ tmp5070,
	rsblt	ip, ip, #0	@ tmp5071, tmp5070
	cmp	ip, #2	@ tmp5071,
	addgt	sl, sl, #1	@,, tmp5074, MisCnt.11060
	cmp	sl, #2	@ tmp5074,
	bgt	.L33	@,
	ldr	r3, [r6, #1220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1224]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5092, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5092,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5085, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5093, tmp5092
	cmp	lr, #0	@ tmp5085,
	rsb	r0, r2, r0	@ tmp5099, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5086, tmp5085
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5093,
	movle	sl, #0	@, tmp5095
	movgt	sl, #1	@, tmp5095
	ldrb	r8, [r6, #1235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5086,
	addgt	sl, sl, #1	@,, MisCnt.11086, tmp5095
	cmp	r0, #0	@ tmp5099,
	ldrb	r1, [r6, #1236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5106, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5100, tmp5099
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5100,
	addgt	sl, sl, #1	@,, MisCnt.11094, MisCnt.11086
	cmp	r8, #0	@ tmp5106,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5113, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5107, tmp5106
	ldrb	ip, [r6, #1237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5107,
	addgt	sl, sl, #1	@,, MisCnt.11102, MisCnt.11094
	cmp	r2, #0	@ tmp5113,
	ldrb	lr, [r6, #1238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5120, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5114, tmp5113
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5114,
	addgt	sl, sl, #1	@,, MisCnt.11110, MisCnt.11102
	cmp	ip, #0	@ tmp5120,
	ldrb	r0, [r6, #1239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5127, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5121, tmp5120
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5121,
	addgt	sl, sl, #1	@,, MisCnt.11118, MisCnt.11110
	cmp	r1, #0	@ tmp5127,
	rsb	r8, r2, r0	@ tmp5134, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5128, tmp5127
	cmp	r1, #2	@ tmp5128,
	addgt	sl, sl, #1	@,, MisCnt.11126, MisCnt.11118
	cmp	r8, #0	@ tmp5134,
	rsblt	r8, r8, #0	@ tmp5135, tmp5134
	cmp	r8, #2	@ tmp5135,
	addgt	sl, sl, #1	@,, tmp5138, MisCnt.11126
	cmp	sl, #2	@ tmp5138,
	bgt	.L33	@,
	ldr	r3, [r6, #1240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1244]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5156, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5156,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5149, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5157, tmp5156
	cmp	lr, #0	@ tmp5149,
	rsb	r0, r2, r0	@ tmp5163, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5150, tmp5149
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5157,
	movle	sl, #0	@, tmp5159
	movgt	sl, #1	@, tmp5159
	ldrb	r8, [r6, #1255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5150,
	addgt	sl, sl, #1	@,, MisCnt.11152, tmp5159
	cmp	r0, #0	@ tmp5163,
	ldrb	r1, [r6, #1256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5170, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5164, tmp5163
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5164,
	addgt	sl, sl, #1	@,, MisCnt.11160, MisCnt.11152
	cmp	r8, #0	@ tmp5170,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5177, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5171, tmp5170
	ldrb	ip, [r6, #1257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5171,
	addgt	sl, sl, #1	@,, MisCnt.11168, MisCnt.11160
	cmp	r2, #0	@ tmp5177,
	ldrb	lr, [r6, #1258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5184, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5178, tmp5177
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5178,
	addgt	sl, sl, #1	@,, MisCnt.11176, MisCnt.11168
	cmp	ip, #0	@ tmp5184,
	ldrb	r0, [r6, #1259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5191, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5185, tmp5184
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5185,
	addgt	sl, sl, #1	@,, MisCnt.11184, MisCnt.11176
	cmp	r1, #0	@ tmp5191,
	rsb	r8, r2, r0	@ tmp5198, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5192, tmp5191
	cmp	r1, #2	@ tmp5192,
	addgt	sl, sl, #1	@,, MisCnt.11192, MisCnt.11184
	cmp	r8, #0	@ tmp5198,
	rsblt	r8, r8, #0	@ tmp5199, tmp5198
	cmp	r8, #2	@ tmp5199,
	addgt	sl, sl, #1	@,, tmp5202, MisCnt.11192
	cmp	sl, #2	@ tmp5202,
	bgt	.L33	@,
	ldr	r3, [r6, #1260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1264]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5220, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5220,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5213, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5221, tmp5220
	cmp	lr, #0	@ tmp5213,
	rsb	r0, r2, r0	@ tmp5227, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5214, tmp5213
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5221,
	movle	sl, #0	@, tmp5223
	movgt	sl, #1	@, tmp5223
	ldrb	r8, [r6, #1275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5214,
	addgt	sl, sl, #1	@,, MisCnt.11218, tmp5223
	cmp	r0, #0	@ tmp5227,
	ldrb	r1, [r6, #1276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5234, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5228, tmp5227
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5228,
	addgt	sl, sl, #1	@,, MisCnt.11226, MisCnt.11218
	cmp	r8, #0	@ tmp5234,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5241, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5235, tmp5234
	ldrb	ip, [r6, #1277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5235,
	addgt	sl, sl, #1	@,, MisCnt.11234, MisCnt.11226
	cmp	r2, #0	@ tmp5241,
	ldrb	lr, [r6, #1278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5248, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5242, tmp5241
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5242,
	addgt	sl, sl, #1	@,, MisCnt.11242, MisCnt.11234
	cmp	ip, #0	@ tmp5248,
	ldrb	r0, [r6, #1279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5255, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5249, tmp5248
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5249,
	addgt	sl, sl, #1	@,, MisCnt.11250, MisCnt.11242
	cmp	r1, #0	@ tmp5255,
	rsb	r8, r2, r0	@ tmp5262, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5256, tmp5255
	cmp	r1, #2	@ tmp5256,
	addgt	sl, sl, #1	@,, MisCnt.11258, MisCnt.11250
	cmp	r8, #0	@ tmp5262,
	rsblt	r8, r8, #0	@ tmp5263, tmp5262
	cmp	r8, #2	@ tmp5263,
	addgt	sl, sl, #1	@,, tmp5266, MisCnt.11258
	cmp	sl, #2	@ tmp5266,
	bgt	.L33	@,
	ldr	r3, [r6, #1280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1284]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5284, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5284,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5277, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5285, tmp5284
	cmp	r8, #0	@ tmp5277,
	rsb	r0, r2, r0	@ tmp5291, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5278, tmp5277
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5285,
	movle	r3, #0	@, tmp5287
	movgt	r3, #1	@, tmp5287
	ldrb	sl, [r6, #1295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5278,
	addgt	r3, r3, #1	@,, MisCnt.3231, tmp5287
	cmp	r0, #0	@ tmp5291,
	ldrb	r1, [r6, #1296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5298, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5292, tmp5291
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5292,
	addgt	r3, r3, #1	@,, MisCnt.3239, MisCnt.3231
	cmp	sl, #0	@ tmp5298,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5305, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5299, tmp5298
	ldrb	ip, [r6, #1297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5299,
	addgt	r3, r3, #1	@,, MisCnt.3247, MisCnt.3239
	cmp	r2, #0	@ tmp5305,
	ldrb	r8, [r6, #1298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5312, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5306, tmp5305
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5306,
	addgt	r3, r3, #1	@,, MisCnt.3255, MisCnt.3247
	cmp	ip, #0	@ tmp5312,
	ldrb	r0, [r6, #1299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5313, tmp5312
	rsb	r1, r1, r8	@ tmp5319, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5313,
	addgt	r3, r3, #1	@,, MisCnt.3265, MisCnt.3255
	cmp	r1, #0	@ tmp5319,
	rsb	ip, r2, r0	@ tmp5326, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5320, tmp5319
	cmp	r1, #2	@ tmp5320,
	addgt	r3, r3, #1	@,, MisCnt.3276, MisCnt.3265
	cmp	ip, #0	@ tmp5326,
	rsblt	ip, ip, #0	@ tmp5327, tmp5326
	cmp	ip, #2	@ tmp5327,
	addgt	r3, r3, #1	@,, tmp5330, MisCnt.3276
	cmp	r3, #2	@ tmp5330,
	movle	r0, #18	@ Result,
	ble	.L21	@,
.L33:
	ldr	r3, [r5, #1300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #1304]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1308]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5331,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5331,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #1313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5348, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5348,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5341, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5349, tmp5348
	cmp	lr, #0	@ tmp5341,
	rsb	r0, r2, r0	@ tmp5355, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5342, tmp5341
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5349,
	movle	sl, #0	@, tmp5351
	movgt	sl, #1	@, tmp5351
	ldrb	r8, [r5, #1315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5342,
	addgt	sl, sl, #1	@,, MisCnt.11284, tmp5351
	cmp	r0, #0	@ tmp5355,
	ldrb	r1, [r5, #1316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5362, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5356, tmp5355
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5356,
	addgt	sl, sl, #1	@,, MisCnt.11292, MisCnt.11284
	cmp	r8, #0	@ tmp5362,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5369, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5363, tmp5362
	ldrb	ip, [r5, #1317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5363,
	addgt	sl, sl, #1	@,, MisCnt.11300, MisCnt.11292
	cmp	r2, #0	@ tmp5369,
	ldrb	lr, [r5, #1318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5376, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5370, tmp5369
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5370,
	addgt	sl, sl, #1	@,, MisCnt.11308, MisCnt.11300
	cmp	ip, #0	@ tmp5376,
	ldrb	r0, [r5, #1319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5377, tmp5376
	rsb	r1, r1, lr	@ tmp5383, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5377,
	addgt	sl, sl, #1	@,, MisCnt.11316, MisCnt.11308
	cmp	r1, #0	@ tmp5383,
	rsb	ip, r8, r0	@ tmp5390, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5384, tmp5383
	cmp	r1, #2	@ tmp5384,
	addgt	sl, sl, #1	@,, MisCnt.11324, MisCnt.11316
	cmp	ip, #0	@ tmp5390,
	rsblt	ip, ip, #0	@ tmp5391, tmp5390
	cmp	ip, #2	@ tmp5391,
	addgt	sl, sl, #1	@,, tmp5394, MisCnt.11324
	cmp	sl, #2	@ tmp5394,
	bgt	.L34	@,
	ldr	r3, [r6, #1320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1324]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1328]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5412, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5412,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5405, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5413, tmp5412
	cmp	lr, #0	@ tmp5405,
	rsb	r0, r2, r0	@ tmp5419, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5406, tmp5405
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5413,
	movle	sl, #0	@, tmp5415
	movgt	sl, #1	@, tmp5415
	ldrb	r8, [r6, #1335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5406,
	addgt	sl, sl, #1	@,, MisCnt.11350, tmp5415
	cmp	r0, #0	@ tmp5419,
	ldrb	r1, [r6, #1336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5426, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5420, tmp5419
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5420,
	addgt	sl, sl, #1	@,, MisCnt.11358, MisCnt.11350
	cmp	r8, #0	@ tmp5426,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5433, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5427, tmp5426
	ldrb	ip, [r6, #1337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5427,
	addgt	sl, sl, #1	@,, MisCnt.11366, MisCnt.11358
	cmp	r2, #0	@ tmp5433,
	ldrb	lr, [r6, #1338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5440, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5434, tmp5433
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5434,
	addgt	sl, sl, #1	@,, MisCnt.11374, MisCnt.11366
	cmp	ip, #0	@ tmp5440,
	ldrb	r0, [r6, #1339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5447, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5441, tmp5440
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5441,
	addgt	sl, sl, #1	@,, MisCnt.11382, MisCnt.11374
	cmp	r1, #0	@ tmp5447,
	rsb	r8, r2, r0	@ tmp5454, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5448, tmp5447
	cmp	r1, #2	@ tmp5448,
	addgt	sl, sl, #1	@,, MisCnt.11390, MisCnt.11382
	cmp	r8, #0	@ tmp5454,
	rsblt	r8, r8, #0	@ tmp5455, tmp5454
	cmp	r8, #2	@ tmp5455,
	addgt	sl, sl, #1	@,, tmp5458, MisCnt.11390
	cmp	sl, #2	@ tmp5458,
	bgt	.L34	@,
	ldr	r3, [r6, #1340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1344]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1348]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5476, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5476,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5469, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5477, tmp5476
	cmp	lr, #0	@ tmp5469,
	rsb	r0, r2, r0	@ tmp5483, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5470, tmp5469
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5477,
	movle	sl, #0	@, tmp5479
	movgt	sl, #1	@, tmp5479
	ldrb	r8, [r6, #1355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5470,
	addgt	sl, sl, #1	@,, MisCnt.11416, tmp5479
	cmp	r0, #0	@ tmp5483,
	ldrb	r1, [r6, #1356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5490, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5484, tmp5483
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5484,
	addgt	sl, sl, #1	@,, MisCnt.11424, MisCnt.11416
	cmp	r8, #0	@ tmp5490,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5497, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5491, tmp5490
	ldrb	ip, [r6, #1357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5491,
	addgt	sl, sl, #1	@,, MisCnt.11432, MisCnt.11424
	cmp	r2, #0	@ tmp5497,
	ldrb	lr, [r6, #1358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5504, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5498, tmp5497
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5498,
	addgt	sl, sl, #1	@,, MisCnt.11440, MisCnt.11432
	cmp	ip, #0	@ tmp5504,
	ldrb	r0, [r6, #1359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5511, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5505, tmp5504
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5505,
	addgt	sl, sl, #1	@,, MisCnt.11448, MisCnt.11440
	cmp	r1, #0	@ tmp5511,
	rsb	r8, r2, r0	@ tmp5518, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5512, tmp5511
	cmp	r1, #2	@ tmp5512,
	addgt	sl, sl, #1	@,, MisCnt.11456, MisCnt.11448
	cmp	r8, #0	@ tmp5518,
	rsblt	r8, r8, #0	@ tmp5519, tmp5518
	cmp	r8, #2	@ tmp5519,
	addgt	sl, sl, #1	@,, tmp5522, MisCnt.11456
	cmp	sl, #2	@ tmp5522,
	bgt	.L34	@,
	ldr	r3, [r6, #1360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1364]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1368]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5540, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5540,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5533, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5541, tmp5540
	cmp	lr, #0	@ tmp5533,
	rsb	r0, r2, r0	@ tmp5547, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5534, tmp5533
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5541,
	movle	sl, #0	@, tmp5543
	movgt	sl, #1	@, tmp5543
	ldrb	r8, [r6, #1375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5534,
	addgt	sl, sl, #1	@,, MisCnt.11482, tmp5543
	cmp	r0, #0	@ tmp5547,
	ldrb	r1, [r6, #1376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5554, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5548, tmp5547
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5548,
	addgt	sl, sl, #1	@,, MisCnt.11490, MisCnt.11482
	cmp	r8, #0	@ tmp5554,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5561, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5555, tmp5554
	ldrb	ip, [r6, #1377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5555,
	addgt	sl, sl, #1	@,, MisCnt.11498, MisCnt.11490
	cmp	r2, #0	@ tmp5561,
	ldrb	lr, [r6, #1378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5568, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5562, tmp5561
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5562,
	addgt	sl, sl, #1	@,, MisCnt.11506, MisCnt.11498
	cmp	ip, #0	@ tmp5568,
	ldrb	r0, [r6, #1379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5575, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5569, tmp5568
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5569,
	addgt	sl, sl, #1	@,, MisCnt.11514, MisCnt.11506
	cmp	r1, #0	@ tmp5575,
	rsb	r8, r2, r0	@ tmp5582, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5576, tmp5575
	cmp	r1, #2	@ tmp5576,
	addgt	sl, sl, #1	@,, MisCnt.11522, MisCnt.11514
	cmp	r8, #0	@ tmp5582,
	rsblt	r8, r8, #0	@ tmp5583, tmp5582
	cmp	r8, #2	@ tmp5583,
	addgt	sl, sl, #1	@,, tmp5586, MisCnt.11522
	cmp	sl, #2	@ tmp5586,
	bgt	.L34	@,
	ldr	r3, [r6, #1380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1384]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5604, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5604,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5597, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5605, tmp5604
	cmp	r8, #0	@ tmp5597,
	rsb	r0, r2, r0	@ tmp5611, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5598, tmp5597
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5605,
	movle	r3, #0	@, tmp5607
	movgt	r3, #1	@, tmp5607
	ldrb	sl, [r6, #1395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5598,
	addgt	r3, r3, #1	@,, MisCnt.3294, tmp5607
	cmp	r0, #0	@ tmp5611,
	ldrb	r1, [r6, #1396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5618, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5612, tmp5611
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5612,
	addgt	r3, r3, #1	@,, MisCnt.3302, MisCnt.3294
	cmp	sl, #0	@ tmp5618,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5625, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5619, tmp5618
	ldrb	ip, [r6, #1397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5619,
	addgt	r3, r3, #1	@,, MisCnt.3311, MisCnt.3302
	cmp	r2, #0	@ tmp5625,
	ldrb	r8, [r6, #1398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5632, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5626, tmp5625
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5626,
	addgt	r3, r3, #1	@,, MisCnt.3322, MisCnt.3311
	cmp	ip, #0	@ tmp5632,
	ldrb	r0, [r6, #1399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5633, tmp5632
	rsb	r1, r1, r8	@ tmp5639, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5633,
	addgt	r3, r3, #1	@,, MisCnt.3333, MisCnt.3322
	cmp	r1, #0	@ tmp5639,
	rsb	ip, r2, r0	@ tmp5646, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5640, tmp5639
	cmp	r1, #2	@ tmp5640,
	addgt	r3, r3, #1	@,, MisCnt.3342, MisCnt.3333
	cmp	ip, #0	@ tmp5646,
	rsblt	ip, ip, #0	@ tmp5647, tmp5646
	cmp	ip, #2	@ tmp5647,
	addgt	r3, r3, #1	@,, tmp5650, MisCnt.3342
	cmp	r3, #2	@ tmp5650,
	movle	r0, #19	@ Result,
	ble	.L21	@,
.L34:
	ldr	r3, [r5, #1400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #1404]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1408]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5651,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5651,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r5, #1413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5668, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5668,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5661, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5669, tmp5668
	cmp	lr, #0	@ tmp5661,
	rsb	r0, r2, r0	@ tmp5675, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5662, tmp5661
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5669,
	movle	sl, #0	@, tmp5671
	movgt	sl, #1	@, tmp5671
	ldrb	r8, [r5, #1415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5662,
	addgt	sl, sl, #1	@,, MisCnt.11548, tmp5671
	cmp	r0, #0	@ tmp5675,
	ldrb	r1, [r5, #1416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5682, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5676, tmp5675
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5676,
	addgt	sl, sl, #1	@,, MisCnt.11556, MisCnt.11548
	cmp	r8, #0	@ tmp5682,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5689, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5683, tmp5682
	ldrb	ip, [r5, #1417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5683,
	addgt	sl, sl, #1	@,, MisCnt.11564, MisCnt.11556
	cmp	r2, #0	@ tmp5689,
	ldrb	lr, [r5, #1418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5696, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5690, tmp5689
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5690,
	addgt	sl, sl, #1	@,, MisCnt.11572, MisCnt.11564
	cmp	ip, #0	@ tmp5696,
	ldrb	r0, [r5, #1419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5697, tmp5696
	rsb	r1, r1, lr	@ tmp5703, SmpPat.Pix, <variable>.Pix
	ldrb	r8, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5697,
	addgt	sl, sl, #1	@,, MisCnt.11580, MisCnt.11572
	cmp	r1, #0	@ tmp5703,
	rsb	ip, r8, r0	@ tmp5710, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5704, tmp5703
	cmp	r1, #2	@ tmp5704,
	addgt	sl, sl, #1	@,, MisCnt.11588, MisCnt.11580
	cmp	ip, #0	@ tmp5710,
	rsblt	ip, ip, #0	@ tmp5711, tmp5710
	cmp	ip, #2	@ tmp5711,
	addgt	sl, sl, #1	@,, tmp5714, MisCnt.11588
	cmp	sl, #2	@ tmp5714,
	bgt	.L35	@,
	ldr	r3, [r6, #1420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1424]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5732, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5732,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5725, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5733, tmp5732
	cmp	lr, #0	@ tmp5725,
	rsb	r0, r2, r0	@ tmp5739, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5726, tmp5725
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5733,
	movle	sl, #0	@, tmp5735
	movgt	sl, #1	@, tmp5735
	ldrb	r8, [r6, #1435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5726,
	addgt	sl, sl, #1	@,, MisCnt.11614, tmp5735
	cmp	r0, #0	@ tmp5739,
	ldrb	r1, [r6, #1436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5746, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5740, tmp5739
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5740,
	addgt	sl, sl, #1	@,, MisCnt.11622, MisCnt.11614
	cmp	r8, #0	@ tmp5746,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5753, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5747, tmp5746
	ldrb	ip, [r6, #1437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5747,
	addgt	sl, sl, #1	@,, MisCnt.11630, MisCnt.11622
	cmp	r2, #0	@ tmp5753,
	ldrb	lr, [r6, #1438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5760, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5754, tmp5753
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5754,
	addgt	sl, sl, #1	@,, MisCnt.11638, MisCnt.11630
	cmp	ip, #0	@ tmp5760,
	ldrb	r0, [r6, #1439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5767, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5761, tmp5760
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5761,
	addgt	sl, sl, #1	@,, MisCnt.11646, MisCnt.11638
	cmp	r1, #0	@ tmp5767,
	rsb	r8, r2, r0	@ tmp5774, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5768, tmp5767
	cmp	r1, #2	@ tmp5768,
	addgt	sl, sl, #1	@,, MisCnt.11654, MisCnt.11646
	cmp	r8, #0	@ tmp5774,
	rsblt	r8, r8, #0	@ tmp5775, tmp5774
	cmp	r8, #2	@ tmp5775,
	addgt	sl, sl, #1	@,, tmp5778, MisCnt.11654
	cmp	sl, #2	@ tmp5778,
	bgt	.L35	@,
	ldr	r3, [r6, #1440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1444]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5796, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5796,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5789, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5797, tmp5796
	cmp	lr, #0	@ tmp5789,
	rsb	r0, r2, r0	@ tmp5803, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5790, tmp5789
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5797,
	movle	sl, #0	@, tmp5799
	movgt	sl, #1	@, tmp5799
	ldrb	r8, [r6, #1455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5790,
	addgt	sl, sl, #1	@,, MisCnt.11680, tmp5799
	cmp	r0, #0	@ tmp5803,
	ldrb	r1, [r6, #1456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5810, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5804, tmp5803
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5804,
	addgt	sl, sl, #1	@,, MisCnt.11688, MisCnt.11680
	cmp	r8, #0	@ tmp5810,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5817, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5811, tmp5810
	ldrb	ip, [r6, #1457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5811,
	addgt	sl, sl, #1	@,, MisCnt.11696, MisCnt.11688
	cmp	r2, #0	@ tmp5817,
	ldrb	lr, [r6, #1458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5824, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5818, tmp5817
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5818,
	addgt	sl, sl, #1	@,, MisCnt.11704, MisCnt.11696
	cmp	ip, #0	@ tmp5824,
	ldrb	r0, [r6, #1459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5831, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5825, tmp5824
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5825,
	addgt	sl, sl, #1	@,, MisCnt.11712, MisCnt.11704
	cmp	r1, #0	@ tmp5831,
	rsb	r8, r2, r0	@ tmp5838, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5832, tmp5831
	cmp	r1, #2	@ tmp5832,
	addgt	sl, sl, #1	@,, MisCnt.11720, MisCnt.11712
	cmp	r8, #0	@ tmp5838,
	rsblt	r8, r8, #0	@ tmp5839, tmp5838
	cmp	r8, #2	@ tmp5839,
	addgt	sl, sl, #1	@,, tmp5842, MisCnt.11720
	cmp	sl, #2	@ tmp5842,
	bgt	.L35	@,
	ldr	r3, [r6, #1460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1464]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	ip, [r6, #1473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r8, ip	@ tmp5860, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5860,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp5853, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5861, tmp5860
	cmp	lr, #0	@ tmp5853,
	rsb	r0, r2, r0	@ tmp5867, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5854, tmp5853
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5861,
	movle	sl, #0	@, tmp5863
	movgt	sl, #1	@, tmp5863
	ldrb	r8, [r6, #1475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5854,
	addgt	sl, sl, #1	@,, MisCnt.11746, tmp5863
	cmp	r0, #0	@ tmp5867,
	ldrb	r1, [r6, #1476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp5874, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5868, tmp5867
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5868,
	addgt	sl, sl, #1	@,, MisCnt.11754, MisCnt.11746
	cmp	r8, #0	@ tmp5874,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5881, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5875, tmp5874
	ldrb	ip, [r6, #1477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5875,
	addgt	sl, sl, #1	@,, MisCnt.11762, MisCnt.11754
	cmp	r2, #0	@ tmp5881,
	ldrb	lr, [r6, #1478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5888, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5882, tmp5881
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5882,
	addgt	sl, sl, #1	@,, MisCnt.11770, MisCnt.11762
	cmp	ip, #0	@ tmp5888,
	ldrb	r0, [r6, #1479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5895, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5889, tmp5888
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5889,
	addgt	sl, sl, #1	@,, MisCnt.11778, MisCnt.11770
	cmp	r1, #0	@ tmp5895,
	rsb	r8, r2, r0	@ tmp5902, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5896, tmp5895
	cmp	r1, #2	@ tmp5896,
	addgt	sl, sl, #1	@,, MisCnt.11786, MisCnt.11778
	cmp	r8, #0	@ tmp5902,
	rsblt	r8, r8, #0	@ tmp5903, tmp5902
	cmp	r8, #2	@ tmp5903,
	addgt	sl, sl, #1	@,, tmp5906, MisCnt.11786
	cmp	sl, #2	@ tmp5906,
	bgt	.L35	@,
	ldr	r3, [r6, #1480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1484]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r6, #1493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #1492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5924, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5924,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5917, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5925, tmp5924
	cmp	r8, #0	@ tmp5917,
	rsb	r0, r2, r0	@ tmp5931, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5918, tmp5917
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5925,
	movle	r3, #0	@, tmp5927
	movgt	r3, #1	@, tmp5927
	ldrb	sl, [r6, #1495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5918,
	addgt	r3, r3, #1	@,, MisCnt.3363, tmp5927
	cmp	r0, #0	@ tmp5931,
	ldrb	r1, [r6, #1496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5938, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5932, tmp5931
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5932,
	addgt	r3, r3, #1	@,, MisCnt.3374, MisCnt.3363
	cmp	sl, #0	@ tmp5938,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5945, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5939, tmp5938
	ldrb	ip, [r6, #1497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5939,
	addgt	r3, r3, #1	@,, MisCnt.3384, MisCnt.3374
	cmp	r2, #0	@ tmp5945,
	ldrb	r8, [r6, #1498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5952, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5946, tmp5945
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5946,
	addgt	r3, r3, #1	@,, MisCnt.3394, MisCnt.3384
	cmp	ip, #0	@ tmp5952,
	ldrb	r0, [r6, #1499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5953, tmp5952
	rsb	r1, r1, r8	@ tmp5959, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5953,
	addgt	r3, r3, #1	@,, MisCnt.3405, MisCnt.3394
	cmp	r1, #0	@ tmp5959,
	rsb	ip, r2, r0	@ tmp5966, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5960, tmp5959
	cmp	r1, #2	@ tmp5960,
	addgt	r3, r3, #1	@,, MisCnt.3416, MisCnt.3405
	cmp	ip, #0	@ tmp5966,
	rsblt	ip, ip, #0	@ tmp5967, tmp5966
	cmp	ip, #2	@ tmp5967,
	addgt	r3, r3, #1	@,, tmp5970, MisCnt.3416
	cmp	r3, #2	@ tmp5970,
	movle	r0, #26	@ Result,
	ble	.L21	@,
.L35:
	ldr	r3, [r5, #1500]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r5, #1504]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r5, #1508]	@ <variable>.Py, <variable>.Py
	movw	r6, #:lower16:.LANCHOR0	@ tmp5971,
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	movt	r6, #:upper16:.LANCHOR0	@ tmp5971,
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r8, [r5, #1513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r5, #1512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp5988, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5988,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp5981, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r5, #1514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5989, tmp5988
	cmp	r8, #0	@ tmp5981,
	rsb	r0, r2, r0	@ tmp5995, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp5982, tmp5981
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5989,
	movle	r3, #0	@, tmp5991
	movgt	r3, #1	@, tmp5991
	ldrb	sl, [r5, #1515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp5982,
	addgt	r3, r3, #1	@,, MisCnt.11812, tmp5991
	cmp	r0, #0	@ tmp5995,
	ldrb	r1, [r5, #1516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6002, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5996, tmp5995
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5996,
	addgt	r3, r3, #1	@,, MisCnt.11820, MisCnt.11812
	cmp	sl, #0	@ tmp6002,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6009, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6003, tmp6002
	ldrb	ip, [r5, #1517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6003,
	addgt	r3, r3, #1	@,, MisCnt.11828, MisCnt.11820
	cmp	r2, #0	@ tmp6009,
	ldrb	r8, [r5, #1518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6016, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6010, tmp6009
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6010,
	addgt	r3, r3, #1	@,, MisCnt.11836, MisCnt.11828
	cmp	ip, #0	@ tmp6016,
	ldrb	r0, [r5, #1519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6017, tmp6016
	rsb	r1, r1, r8	@ tmp6023, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6017,
	addgt	r3, r3, #1	@,, MisCnt.11844, MisCnt.11836
	cmp	r1, #0	@ tmp6023,
	rsb	ip, r2, r0	@ tmp6030, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6024, tmp6023
	cmp	r1, #2	@ tmp6024,
	addgt	r3, r3, #1	@,, MisCnt.11852, MisCnt.11844
	cmp	ip, #0	@ tmp6030,
	rsblt	ip, ip, #0	@ tmp6031, tmp6030
	cmp	ip, #2	@ tmp6031,
	addgt	r3, r3, #1	@,, tmp6034, MisCnt.11852
	cmp	r3, #2	@ tmp6034,
	bgt	.L36	@,
	ldr	r3, [r6, #1520]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1524]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #1533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #1532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp6052, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6052,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp6045, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6053, tmp6052
	cmp	r5, #0	@ tmp6045,
	rsb	r0, r2, r0	@ tmp6059, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp6046, tmp6045
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6053,
	movle	r3, #0	@, tmp6055
	movgt	r3, #1	@, tmp6055
	ldrb	r8, [r6, #1535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp6046,
	addgt	r3, r3, #1	@,, MisCnt.11878, tmp6055
	cmp	r0, #0	@ tmp6059,
	ldrb	r1, [r6, #1536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6066, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6060, tmp6059
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6060,
	addgt	r3, r3, #1	@,, MisCnt.11886, MisCnt.11878
	cmp	r8, #0	@ tmp6066,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6073, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6067, tmp6066
	ldrb	ip, [r6, #1537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6067,
	addgt	r3, r3, #1	@,, MisCnt.11894, MisCnt.11886
	cmp	r2, #0	@ tmp6073,
	ldrb	r5, [r6, #1538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6080, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6074, tmp6073
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6074,
	addgt	r3, r3, #1	@,, MisCnt.11902, MisCnt.11894
	cmp	ip, #0	@ tmp6080,
	ldrb	r0, [r6, #1539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6081, tmp6080
	rsb	r1, r1, r5	@ tmp6087, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6081,
	addgt	r3, r3, #1	@,, MisCnt.11910, MisCnt.11902
	cmp	r1, #0	@ tmp6087,
	rsb	ip, r2, r0	@ tmp6094, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6088, tmp6087
	cmp	r1, #2	@ tmp6088,
	addgt	r3, r3, #1	@,, MisCnt.11918, MisCnt.11910
	cmp	ip, #0	@ tmp6094,
	rsblt	ip, ip, #0	@ tmp6095, tmp6094
	cmp	ip, #2	@ tmp6095,
	addgt	r3, r3, #1	@,, tmp6098, MisCnt.11918
	cmp	r3, #2	@ tmp6098,
	bgt	.L36	@,
	ldr	r3, [r6, #1540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1544]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #1553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #1552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp6116, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6116,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp6109, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6117, tmp6116
	cmp	r5, #0	@ tmp6109,
	rsb	r0, r2, r0	@ tmp6123, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp6110, tmp6109
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6117,
	movle	r3, #0	@, tmp6119
	movgt	r3, #1	@, tmp6119
	ldrb	r8, [r6, #1555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp6110,
	addgt	r3, r3, #1	@,, MisCnt.11944, tmp6119
	cmp	r0, #0	@ tmp6123,
	ldrb	r1, [r6, #1556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6130, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6124, tmp6123
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6124,
	addgt	r3, r3, #1	@,, MisCnt.11952, MisCnt.11944
	cmp	r8, #0	@ tmp6130,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6137, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6131, tmp6130
	ldrb	ip, [r6, #1557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6131,
	addgt	r3, r3, #1	@,, MisCnt.11960, MisCnt.11952
	cmp	r2, #0	@ tmp6137,
	ldrb	r5, [r6, #1558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6144, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6138, tmp6137
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6138,
	addgt	r3, r3, #1	@,, MisCnt.11968, MisCnt.11960
	cmp	ip, #0	@ tmp6144,
	ldrb	r0, [r6, #1559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6145, tmp6144
	rsb	r1, r1, r5	@ tmp6151, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6145,
	addgt	r3, r3, #1	@,, MisCnt.11976, MisCnt.11968
	cmp	r1, #0	@ tmp6151,
	rsb	ip, r2, r0	@ tmp6158, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6152, tmp6151
	cmp	r1, #2	@ tmp6152,
	addgt	r3, r3, #1	@,, MisCnt.11984, MisCnt.11976
	cmp	ip, #0	@ tmp6158,
	rsblt	ip, ip, #0	@ tmp6159, tmp6158
	cmp	ip, #2	@ tmp6159,
	addgt	r3, r3, #1	@,, tmp6162, MisCnt.11984
	cmp	r3, #2	@ tmp6162,
	bgt	.L36	@,
	ldr	r3, [r6, #1560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, r7	@, tmp12181
	ldr	r2, [r6, #1564]	@ <variable>.Px, <variable>.Px
	mov	r1, r4	@, pDetPara
	ldr	lr, [r6, #1568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r5, [r6, #1573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r8, [r6, #1572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp6180, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6180,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r8	@ tmp6173, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6181, tmp6180
	cmp	r5, #0	@ tmp6173,
	rsb	r0, r2, r0	@ tmp6187, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp6174, tmp6173
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6181,
	movle	r3, #0	@, tmp6183
	movgt	r3, #1	@, tmp6183
	ldrb	r8, [r6, #1575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp6174,
	addgt	r3, r3, #1	@,, MisCnt.12010, tmp6183
	cmp	r0, #0	@ tmp6187,
	ldrb	r1, [r6, #1576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, ip, r8	@ tmp6194, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6188, tmp6187
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6188,
	addgt	r3, r3, #1	@,, MisCnt.12018, MisCnt.12010
	cmp	r8, #0	@ tmp6194,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6201, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp6195, tmp6194
	ldrb	ip, [r6, #1577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp6195,
	addgt	r3, r3, #1	@,, MisCnt.12026, MisCnt.12018
	cmp	r2, #0	@ tmp6201,
	ldrb	r5, [r6, #1578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6208, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6202, tmp6201
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6202,
	addgt	r3, r3, #1	@,, MisCnt.12034, MisCnt.12026
	cmp	ip, #0	@ tmp6208,
	ldrb	r0, [r6, #1579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6209, tmp6208
	rsb	r1, r1, r5	@ tmp6215, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6209,
	addgt	r3, r3, #1	@,, MisCnt.12042, MisCnt.12034
	cmp	r1, #0	@ tmp6215,
	rsb	ip, r2, r0	@ tmp6222, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6216, tmp6215
	cmp	r1, #2	@ tmp6216,
	addgt	r3, r3, #1	@,, MisCnt.12050, MisCnt.12042
	cmp	ip, #0	@ tmp6222,
	rsblt	ip, ip, #0	@ tmp6223, tmp6222
	cmp	ip, #2	@ tmp6223,
	addgt	r3, r3, #1	@,, tmp6226, MisCnt.12050
	cmp	r3, #2	@ tmp6226,
	bgt	.L36	@,
	ldr	r3, [r6, #1580]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r4	@, pDetPara
	ldr	r2, [r6, #1584]	@ <variable>.Px, <variable>.Px
	mov	r0, r7	@, tmp12181
	ldr	lr, [r6, #1588]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #4]	@ <variable>.Comp, SmpPat.Comp
	str	r2, [sp, #8]	@ <variable>.Px, SmpPat.Px
	str	lr, [sp, #12]	@ <variable>.Py, SmpPat.Py
	bl	GetSample	@
	ldrb	r4, [r6, #1593]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r5, [r6, #1592]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r4	@ tmp6244, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6244,
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r4, r1, r5	@ tmp6237, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1594]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6245, tmp6244
	cmp	r4, #0	@ tmp6237,
	rsb	r0, r2, r0	@ tmp6251, SmpPat.Pix, <variable>.Pix
	rsblt	r4, r4, #0	@ tmp6238, tmp6237
	ldrb	ip, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6245,
	movle	r3, #0	@, tmp6247
	movgt	r3, #1	@, tmp6247
	ldrb	r5, [r6, #1595]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r4, #2	@ tmp6238,
	addgt	r3, r3, #1	@,, MisCnt.3435, tmp6247
	cmp	r0, #0	@ tmp6251,
	ldrb	r1, [r6, #1596]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, ip, r5	@ tmp6258, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6252, tmp6251
	ldrb	r2, [sp, #20]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6252,
	addgt	r3, r3, #1	@,, MisCnt.3446, MisCnt.3435
	cmp	r5, #0	@ tmp6258,
	ldrb	r0, [sp, #21]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6265, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp6259, tmp6258
	ldrb	ip, [r6, #1597]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp6259,
	addgt	r3, r3, #1	@,, MisCnt.3457, MisCnt.3446
	cmp	r2, #0	@ tmp6265,
	ldrb	r4, [r6, #1598]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6272, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6266, tmp6265
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6266,
	addgt	r3, r3, #1	@,, MisCnt.3466, MisCnt.3457
	cmp	ip, #0	@ tmp6272,
	ldrb	r0, [r6, #1599]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6273, tmp6272
	rsb	r1, r1, r4	@ tmp6279, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6273,
	addgt	r3, r3, #1	@,, MisCnt.3477, MisCnt.3466
	cmp	r1, #0	@ tmp6279,
	rsb	ip, r2, r0	@ tmp6286, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6280, tmp6279
	cmp	r1, #2	@ tmp6280,
	addgt	r3, r3, #1	@,, MisCnt.3488, MisCnt.3477
	cmp	ip, #0	@ tmp6286,
	rsblt	ip, ip, #0	@ tmp6287, tmp6286
	cmp	ip, #2	@ tmp6287,
	addgt	r3, r3, #1	@,, tmp6290, MisCnt.3488
	cmp	r3, #2	@ tmp6290,
	bgt	.L36	@,
	mov	r0, #30	@ Result,
	b	.L21	@
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
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
