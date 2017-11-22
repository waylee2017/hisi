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
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/drv/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV310
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dnr_patch)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_patch.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_patch.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fno-pic -fverbose-asm
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
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
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
.LFB1919:
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
	addgt	r2, r2, #1	@,, MisCnt.579, tmp153
	cmp	ip, #0	@ tmp156,
	rsb	r7, r4, r7	@ tmp162, <variable>.Pix, <variable>.Pix
	ldrb	r3, [r1, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp157, tmp156
	ldrb	r5, [r0, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp157,
	movle	ip, r2	@, MisCnt.587, MisCnt.579
	addgt	ip, r2, #1	@,, MisCnt.587, MisCnt.579
	cmp	r7, #0	@ tmp162,
	ldrb	r6, [r0, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r5, r3, r5	@ tmp168, <variable>.Pix, <variable>.Pix
	ldrb	r2, [r1, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp163, tmp162
	ldrb	r4, [r0, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp163,
	addgt	ip, ip, #1	@,, MisCnt.595, MisCnt.587
	cmp	r5, #0	@ tmp168,
	rsb	r2, r2, r6	@ tmp174, <variable>.Pix, <variable>.Pix
	ldrb	r3, [r1, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp169, tmp168
	ldrb	r0, [r0, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp169,
	addgt	ip, ip, #1	@,, MisCnt.603, MisCnt.595
	cmp	r2, #0	@ tmp174,
	rsb	r3, r3, r4	@ tmp180, <variable>.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp175, tmp174
	ldrb	r1, [r1, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp175,
	movle	r2, ip	@, MisCnt.611, MisCnt.603
	addgt	r2, ip, #1	@,, MisCnt.611, MisCnt.603
	cmp	r3, #0	@ tmp180,
	rsb	ip, r1, r0	@ tmp187, <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp181, tmp180
	cmp	r3, #2	@ tmp181,
	movle	r3, r2	@, MisCnt.619, MisCnt.611
	addgt	r3, r2, #1	@,, MisCnt.619, MisCnt.611
	cmp	ip, #0	@ tmp187,
	rsblt	ip, ip, #0	@ tmp188, tmp187
	cmp	ip, #2	@ tmp188,
	movle	r0, r3	@, tmp191, MisCnt.619
	addgt	r0, r3, #1	@,, tmp191, MisCnt.619
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
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldmia	r0, {r3, r4}	@ phole ldm
	cmp	r3, #1	@ <variable>.Comp,
	ldr	ip, [r0, #8]	@ D.35793, <variable>.Py
	ldreq	r3, [r1, #12]	@ pRd, <variable>.pPicBufU
	beq	.L7	@,
	cmp	r3, #2	@ <variable>.Comp,
	ldrne	r3, [r1, #8]	@ pRd, <variable>.pPicBufY
	ldreq	r3, [r1, #16]	@ pRd, <variable>.pPicBufV
.L7:
	movw	r2, #:lower16:g_eVdmVersion	@ tmp144,
	movt	r2, #:upper16:g_eVdmVersion	@ tmp144,
	ldr	r2, [r2, #0]	@ g_eVdmVersion.533, g_eVdmVersion
	cmp	r2, #1	@ g_eVdmVersion.533,
	beq	.L14	@,
	sub	r2, r2, #3	@ tmp170, g_eVdmVersion.533,
	cmp	r2, #1	@ tmp170,
	bls	.L15	@,
.L10:
	add	r0, r0, #12	@, pSmp,
	mov	r1, r3	@, pRd
	mov	r2, #8	@,
	ldmfd	sp!, {r4, r5, r6, r7}
	b	memcpy	@
.L15:
	mov	r7, ip, asr #31	@ tmp178, D.35793,
	bic	r2, r4, #255	@ tmp171, D.35792,
	ldr	r6, [r1, #32]	@ <variable>.MbWidth, <variable>.MbWidth
	add	r5, r2, #255	@ tmp174, tmp171,
	mov	r1, r7, lsr #28	@ tmp179, tmp178,
	cmp	r2, #0	@ tmp171,
	add	r7, ip, r1	@ tmp180, D.35793, tmp179
	and	r7, r7, #15	@ tmp181, tmp180,
	movlt	r2, r5	@ tmp173, tmp174
	rsb	r1, r1, r7	@ tmp182, tmp179, tmp181
	add	r5, ip, #15	@ tmp187, D.35793,
	cmp	ip, #0	@ D.35793,
	mov	r2, r2, asr #8	@ tmp175, tmp173,
	mov	r6, r6, asl #4	@ tmp190, <variable>.MbWidth,
	mov	r1, r1, asl #8	@ tmp183, tmp182,
	add	r6, r6, #255	@ tmp192, tmp190,
	movlt	ip, r5	@ D.35793, tmp187
	add	r2, r1, r2, asl #12	@, tmp184, tmp183, tmp175,
	bic	r5, ip, #15	@ tmp189, D.35793,
	bic	r1, r6, #255	@ tmp193, tmp192,
	mla	ip, r1, r5, r2	@ tmp195, tmp193, tmp189, tmp184
	add	r3, r3, ip	@ pRd.647, pRd, tmp195
	uxtab	r3, r3, r4	@ pRd, pRd.647, D.35792
	b	.L10	@
.L14:
	ldr	r6, [r1, #40]	@ <variable>.IsFrameStored, <variable>.IsFrameStored
	and	r2, r4, #15	@ PixX, D.35792,
	and	r5, ip, #15	@ PixY, D.35793,
	mov	r4, r4, asr #4	@ Mbx, D.35792,
	cmp	r6, #0	@ <variable>.IsFrameStored,
	beq	.L9	@,
	ldr	r1, [r1, #36]	@ <variable>.MbHeight, <variable>.MbHeight
	mov	ip, ip, asr #4	@ tmp150, D.35793,
	add	r2, r2, r5, asl #4	@, tmp147, PixX, PixY,
	mla	r4, r1, r4, ip	@ tmp151, <variable>.MbHeight, Mbx, tmp150
	add	r4, r2, r4, asl #8	@, tmp153, tmp147, tmp151,
	add	r3, r3, r4	@ pRd, pRd, tmp153
	b	.L10	@
.L9:
	ldr	r1, [r1, #36]	@ <variable>.MbHeight, <variable>.MbHeight
	add	r5, r2, r5, asl #4	@, tmp155, PixX, PixY,
	add	r6, ip, #31	@ tmp165, D.35793,
	cmp	ip, #0	@ D.35793,
	mul	r2, r1, r4	@ tmp156, <variable>.MbHeight, Mbx
	movlt	ip, r6	@ D.35793, tmp165
	mov	ip, ip, asr #5	@ tmp166, D.35793,
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
.LFB1917:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:__stack_chk_guard	@ tmp12186,
	movt	r4, #:upper16:__stack_chk_guard	@ tmp12186,
	.pad #24
	sub	sp, sp, #24	@,,
	subs	r5, r0, #0	@ pDetPara, pDetPara
	ldr	r3, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	str	r3, [sp, #20]	@ __stack_chk_guard, D.47913
	beq	.L72	@,
	ldr	r6, [r5, #8]	@ <variable>.pPicBufY, <variable>.pPicBufY
	cmp	r6, #0	@ <variable>.pPicBufY,
	beq	.L73	@,
	ldr	r3, [r5, #24]	@ D.35600, <variable>.PicHeight
	cmp	r3, #1088	@ D.35600,
	bgt	.L20	@,
	ldr	r2, [r5, #20]	@ D.35602, <variable>.PicWidth
	cmp	r2, #1920	@ D.35602,
	bgt	.L20	@,
	cmp	r3, #0	@ D.35600,
	beq	.L20	@,
	cmp	r2, #0	@ D.35602,
	beq	.L20	@,
	cmp	r3, #576	@ D.35600,
	beq	.L74	@,
	cmp	r3, #480	@ D.35600,
	beq	.L75	@,
	cmp	r3, #720	@ D.35600,
	beq	.L76	@,
.L53:
	movw	r0, #1079	@ tmp11861,
	cmp	r3, r0	@ D.35600, tmp11861
	ble	.L50	@,
	cmp	r2, #1920	@ D.35602,
	bne	.L50	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp11862,
	movt	r6, #:upper16:.LANCHOR0	@ tmp11862,
	mov	r1, r5	@, pDetPara
	mov	r0, sp	@,
	ldr	ip, [r6, #3380]	@ <variable>.Comp, <variable>.Comp
	mov	r7, sp	@ tmp11868,
	ldr	r2, [r6, #3384]	@ <variable>.Px, <variable>.Px
	ldr	lr, [r6, #3388]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #3393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r8, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #3392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r8, r1	@ tmp11879, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp11879,
	ldrb	ip, [r6, #3394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r8, r3, r0	@ tmp11872, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp11880, tmp11879
	cmp	r8, #0	@ tmp11872,
	rsblt	r8, r8, #0	@ tmp11873, tmp11872
	ldrb	r0, [r6, #3395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11880,
	movle	r1, #0	@, tmp11882
	movgt	r1, #1	@, tmp11882
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, ip	@ tmp11886, SmpPat.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11873,
	addgt	r1, r1, #1	@,, MisCnt.6533, tmp11882
	cmp	sl, #0	@ tmp11886,
	rsb	r3, r3, r0	@ tmp11893, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp11887, tmp11886
	ldrb	ip, [r6, #3396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11887,
	movle	sl, r1	@, MisCnt.6541, MisCnt.6533
	addgt	sl, r1, #1	@,, MisCnt.6541, MisCnt.6533
	cmp	r3, #0	@ tmp11893,
	ldrb	r0, [r6, #3397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp11900, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11894, tmp11893
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11894,
	movle	r3, sl	@, MisCnt.6549, MisCnt.6541
	addgt	r3, sl, #1	@,, MisCnt.6549, MisCnt.6541
	cmp	ip, #0	@ tmp11900,
	ldrb	r8, [r6, #3398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp11907, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11901, tmp11900
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11901,
	movle	ip, r3	@, MisCnt.6557, MisCnt.6549
	addgt	ip, r3, #1	@,, MisCnt.6557, MisCnt.6549
	cmp	r1, #0	@ tmp11907,
	ldrb	r0, [r6, #3399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r8	@ tmp11914, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11908, tmp11907
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp11908,
	movle	r1, ip	@, MisCnt.6565, MisCnt.6557
	addgt	r1, ip, #1	@,, MisCnt.6565, MisCnt.6557
	cmp	r2, #0	@ tmp11914,
	rsb	ip, r3, r0	@ tmp11921, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11915, tmp11914
	cmp	r2, #2	@ tmp11915,
	movle	r2, r1	@, MisCnt.6573, MisCnt.6565
	addgt	r2, r1, #1	@,, MisCnt.6573, MisCnt.6565
	cmp	ip, #0	@ tmp11921,
	rsblt	ip, ip, #0	@ tmp11922, tmp11921
	cmp	ip, #2	@ tmp11922,
	movle	r1, r2	@, tmp11925, MisCnt.6573
	addgt	r1, r2, #1	@,, tmp11925, MisCnt.6573
	cmp	r1, #2	@ tmp11925,
	bgt	.L50	@,
	ldr	r3, [r6, #3400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3408]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r8, [r6, #3413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp11943, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11943,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp11936, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11944, tmp11943
	cmp	r8, #0	@ tmp11936,
	rsb	r0, r2, r0	@ tmp11950, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp11937, tmp11936
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11944,
	movle	r3, #0	@, tmp11946
	movgt	r3, #1	@, tmp11946
	ldrb	sl, [r6, #3415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp11937,
	addgt	r3, r3, #1	@,, MisCnt.6599, tmp11946
	cmp	r0, #0	@ tmp11950,
	ldrb	r1, [r6, #3416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp11957, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11951, tmp11950
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11951,
	addgt	r3, r3, #1	@,, MisCnt.6607, MisCnt.6599
	cmp	sl, #0	@ tmp11957,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11964, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp11958, tmp11957
	ldrb	ip, [r6, #3417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11958,
	addgt	r3, r3, #1	@,, MisCnt.6615, MisCnt.6607
	cmp	r2, #0	@ tmp11964,
	ldrb	r8, [r6, #3418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11971, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11965, tmp11964
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11965,
	addgt	r3, r3, #1	@,, MisCnt.6623, MisCnt.6615
	cmp	ip, #0	@ tmp11971,
	ldrb	r0, [r6, #3419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r8	@ tmp11978, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11972, tmp11971
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11972,
	addgt	r3, r3, #1	@,, MisCnt.6631, MisCnt.6623
	cmp	r1, #0	@ tmp11978,
	rsb	r2, r2, r0	@ tmp11985, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11979, tmp11978
	cmp	r1, #2	@ tmp11979,
	addgt	r3, r3, #1	@,, MisCnt.6639, MisCnt.6631
	cmp	r2, #0	@ tmp11985,
	rsblt	r2, r2, #0	@ tmp11986, tmp11985
	cmp	r2, #2	@ tmp11986,
	addgt	r3, r3, #1	@,, tmp11989, MisCnt.6639
	cmp	r3, #2	@ tmp11989,
	bgt	.L50	@,
	ldr	r3, [r6, #3420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r8, [r6, #3433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp12007, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12007,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp12000, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12008, tmp12007
	cmp	r8, #0	@ tmp12000,
	rsb	r0, r2, r0	@ tmp12014, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp12001, tmp12000
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12008,
	movle	r3, #0	@, tmp12010
	movgt	r3, #1	@, tmp12010
	ldrb	sl, [r6, #3435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp12001,
	addgt	r3, r3, #1	@,, MisCnt.6665, tmp12010
	cmp	r0, #0	@ tmp12014,
	ldrb	r1, [r6, #3436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp12021, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12015, tmp12014
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12015,
	addgt	r3, r3, #1	@,, MisCnt.6673, MisCnt.6665
	cmp	sl, #0	@ tmp12021,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12028, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp12022, tmp12021
	ldrb	ip, [r6, #3437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp12022,
	addgt	r3, r3, #1	@,, MisCnt.6681, MisCnt.6673
	cmp	r2, #0	@ tmp12028,
	ldrb	r8, [r6, #3438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12035, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12029, tmp12028
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12029,
	addgt	r3, r3, #1	@,, MisCnt.6689, MisCnt.6681
	cmp	ip, #0	@ tmp12035,
	ldrb	r0, [r6, #3439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12036, tmp12035
	rsb	r1, r1, r8	@ tmp12042, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12036,
	addgt	r3, r3, #1	@,, MisCnt.6697, MisCnt.6689
	cmp	r1, #0	@ tmp12042,
	rsb	ip, r2, r0	@ tmp12049, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12043, tmp12042
	cmp	r1, #2	@ tmp12043,
	addgt	r3, r3, #1	@,, MisCnt.6705, MisCnt.6697
	cmp	ip, #0	@ tmp12049,
	rsblt	ip, ip, #0	@ tmp12050, tmp12049
	cmp	ip, #2	@ tmp12050,
	addgt	r3, r3, #1	@,, tmp12053, MisCnt.6705
	cmp	r3, #2	@ tmp12053,
	bgt	.L50	@,
	ldr	r3, [r6, #3440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r8, [r6, #3453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r8	@ tmp12071, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12071,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r8, r1, sl	@ tmp12064, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12072, tmp12071
	cmp	r8, #0	@ tmp12064,
	rsb	r0, r2, r0	@ tmp12078, SmpPat.Pix, <variable>.Pix
	rsblt	r8, r8, #0	@ tmp12065, tmp12064
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12072,
	movle	r3, #0	@, tmp12074
	movgt	r3, #1	@, tmp12074
	ldrb	sl, [r6, #3455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r8, #2	@ tmp12065,
	addgt	r3, r3, #1	@,, MisCnt.6731, tmp12074
	cmp	r0, #0	@ tmp12078,
	ldrb	r1, [r6, #3456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp12085, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12079, tmp12078
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12079,
	addgt	r3, r3, #1	@,, MisCnt.6739, MisCnt.6731
	cmp	sl, #0	@ tmp12085,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12092, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp12086, tmp12085
	ldrb	ip, [r6, #3457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp12086,
	addgt	r3, r3, #1	@,, MisCnt.6747, MisCnt.6739
	cmp	r2, #0	@ tmp12092,
	ldrb	r8, [r6, #3458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12099, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12093, tmp12092
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12093,
	addgt	r3, r3, #1	@,, MisCnt.6755, MisCnt.6747
	cmp	ip, #0	@ tmp12099,
	ldrb	r0, [r6, #3459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12100, tmp12099
	rsb	r1, r1, r8	@ tmp12106, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12100,
	addgt	r3, r3, #1	@,, MisCnt.6763, MisCnt.6755
	cmp	r1, #0	@ tmp12106,
	rsb	ip, r2, r0	@ tmp12113, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12107, tmp12106
	cmp	r1, #2	@ tmp12107,
	addgt	r3, r3, #1	@,, MisCnt.6771, MisCnt.6763
	cmp	ip, #0	@ tmp12113,
	rsblt	ip, ip, #0	@ tmp12114, tmp12113
	cmp	ip, #2	@ tmp12114,
	addgt	r3, r3, #1	@,, tmp12117, MisCnt.6771
	cmp	r3, #2	@ tmp12117,
	bgt	.L50	@,
	ldr	r3, [r6, #3460]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r6, #3464]	@ <variable>.Px, <variable>.Px
	mov	r0, sp	@,
	ldr	lr, [r6, #3468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r5, [r6, #3473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r7, [r6, #3472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp12135, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp12135,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r7	@ tmp12128, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp12136, tmp12135
	cmp	r5, #0	@ tmp12128,
	rsb	r0, r2, r0	@ tmp12142, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp12129, tmp12128
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp12136,
	movle	r3, #0	@, tmp12138
	movgt	r3, #1	@, tmp12138
	ldrb	r7, [r6, #3475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp12129,
	addgt	r3, r3, #1	@,, MisCnt.2151, tmp12138
	cmp	r0, #0	@ tmp12142,
	ldrb	r1, [r6, #3476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp12149, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp12143, tmp12142
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp12143,
	addgt	r3, r3, #1	@,, MisCnt.2159, MisCnt.2151
	cmp	r7, #0	@ tmp12149,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp12156, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp12150, tmp12149
	ldrb	ip, [r6, #3477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp12150,
	addgt	r3, r3, #1	@,, MisCnt.2169, MisCnt.2159
	cmp	r2, #0	@ tmp12156,
	ldrb	r5, [r6, #3478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp12163, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp12157, tmp12156
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp12157,
	addgt	r3, r3, #1	@,, MisCnt.2178, MisCnt.2169
	cmp	ip, #0	@ tmp12163,
	ldrb	r0, [r6, #3479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp12164, tmp12163
	rsb	r1, r1, r5	@ tmp12170, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp12164,
	addgt	r3, r3, #1	@,, MisCnt.2186, MisCnt.2178
	cmp	r1, #0	@ tmp12170,
	rsb	ip, r2, r0	@ tmp12177, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp12171, tmp12170
	cmp	r1, #2	@ tmp12171,
	addgt	r3, r3, #1	@,, MisCnt.2194, MisCnt.2186
	cmp	ip, #0	@ tmp12177,
	rsblt	ip, ip, #0	@ tmp12178, tmp12177
	cmp	ip, #2	@ tmp12178,
	addgt	r3, r3, #1	@,, tmp12181, MisCnt.2194
	cmp	r3, #2	@ tmp12181,
	movle	r0, #7	@ Result,
	ble	.L18	@,
.L50:
	mov	r0, #0	@ Result,
	b	.L18	@
.L20:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ Result,
.L18:
	ldr	r1, [sp, #20]	@ D.47913, D.47913
	ldr	ip, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r1, ip	@ D.47913, __stack_chk_guard
	bne	.L77	@,
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L76:
	cmp	r2, #1280	@ D.35602,
	bne	.L50	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp12195,
	movt	r6, #:upper16:.LANCHOR0	@ tmp12195,
	mov	r1, r5	@, pDetPara
	mov	r0, sp	@,
	ldr	r3, [r6, #3180]	@ <variable>.Comp, <variable>.Comp
	mov	r8, sp	@ tmp12196,
	ldr	r2, [r6, #3184]	@ <variable>.Px, <variable>.Px
	ldr	lr, [r6, #3188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #3193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r7, ip	@ tmp11238, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11238,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp11231, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11239, tmp11238
	cmp	lr, #0	@ tmp11231,
	rsb	r0, r2, r0	@ tmp11245, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11232, tmp11231
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11239,
	movle	sl, #0	@, tmp11241
	movgt	sl, #1	@, tmp11241
	ldrb	r7, [r6, #3195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11232,
	addgt	sl, sl, #1	@,, MisCnt.6797, tmp11241
	cmp	r0, #0	@ tmp11245,
	ldrb	r1, [r6, #3196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp11252, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11246, tmp11245
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11246,
	addgt	sl, sl, #1	@,, MisCnt.6805, MisCnt.6797
	cmp	r7, #0	@ tmp11252,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11259, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11253, tmp11252
	ldrb	ip, [r6, #3197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11253,
	addgt	sl, sl, #1	@,, MisCnt.6813, MisCnt.6805
	cmp	r2, #0	@ tmp11259,
	ldrb	lr, [r6, #3198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11266, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11260, tmp11259
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11260,
	addgt	sl, sl, #1	@,, MisCnt.6821, MisCnt.6813
	cmp	ip, #0	@ tmp11266,
	ldrb	r0, [r6, #3199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11273, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11267, tmp11266
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11267,
	addgt	sl, sl, #1	@,, MisCnt.6829, MisCnt.6821
	cmp	r1, #0	@ tmp11273,
	rsb	r7, r2, r0	@ tmp11280, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11274, tmp11273
	cmp	r1, #2	@ tmp11274,
	addgt	sl, sl, #1	@,, MisCnt.6837, MisCnt.6829
	cmp	r7, #0	@ tmp11280,
	rsblt	r7, r7, #0	@ tmp11281, tmp11280
	cmp	r7, #2	@ tmp11281,
	addgt	sl, sl, #1	@,, tmp11284, MisCnt.6837
	cmp	sl, #2	@ tmp11284,
	bgt	.L61	@,
	ldr	r3, [r6, #3200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3208]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #3213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r7, ip	@ tmp11302, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11302,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp11295, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11303, tmp11302
	cmp	lr, #0	@ tmp11295,
	rsb	r0, r2, r0	@ tmp11309, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11296, tmp11295
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11303,
	movle	sl, #0	@, tmp11305
	movgt	sl, #1	@, tmp11305
	ldrb	r7, [r6, #3215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11296,
	addgt	sl, sl, #1	@,, MisCnt.6863, tmp11305
	cmp	r0, #0	@ tmp11309,
	ldrb	r1, [r6, #3216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp11316, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11310, tmp11309
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11310,
	addgt	sl, sl, #1	@,, MisCnt.6871, MisCnt.6863
	cmp	r7, #0	@ tmp11316,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11323, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11317, tmp11316
	ldrb	ip, [r6, #3217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11317,
	addgt	sl, sl, #1	@,, MisCnt.6879, MisCnt.6871
	cmp	r2, #0	@ tmp11323,
	ldrb	lr, [r6, #3218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11330, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11324, tmp11323
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11324,
	addgt	sl, sl, #1	@,, MisCnt.6887, MisCnt.6879
	cmp	ip, #0	@ tmp11330,
	ldrb	r0, [r6, #3219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11337, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11331, tmp11330
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11331,
	addgt	sl, sl, #1	@,, MisCnt.6895, MisCnt.6887
	cmp	r1, #0	@ tmp11337,
	rsb	r7, r2, r0	@ tmp11344, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11338, tmp11337
	cmp	r1, #2	@ tmp11338,
	addgt	sl, sl, #1	@,, MisCnt.6903, MisCnt.6895
	cmp	r7, #0	@ tmp11344,
	rsblt	r7, r7, #0	@ tmp11345, tmp11344
	cmp	r7, #2	@ tmp11345,
	addgt	sl, sl, #1	@,, tmp11348, MisCnt.6903
	cmp	sl, #2	@ tmp11348,
	bgt	.L61	@,
	ldr	r3, [r6, #3220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #3233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r7, ip	@ tmp11366, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11366,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp11359, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11367, tmp11366
	cmp	lr, #0	@ tmp11359,
	rsb	r0, r2, r0	@ tmp11373, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11360, tmp11359
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11367,
	movle	sl, #0	@, tmp11369
	movgt	sl, #1	@, tmp11369
	ldrb	r7, [r6, #3235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11360,
	addgt	sl, sl, #1	@,, MisCnt.6929, tmp11369
	cmp	r0, #0	@ tmp11373,
	ldrb	r1, [r6, #3236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp11380, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11374, tmp11373
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11374,
	addgt	sl, sl, #1	@,, MisCnt.6937, MisCnt.6929
	cmp	r7, #0	@ tmp11380,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11387, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11381, tmp11380
	ldrb	ip, [r6, #3237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11381,
	addgt	sl, sl, #1	@,, MisCnt.6945, MisCnt.6937
	cmp	r2, #0	@ tmp11387,
	ldrb	lr, [r6, #3238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11394, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11388, tmp11387
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11388,
	addgt	sl, sl, #1	@,, MisCnt.6953, MisCnt.6945
	cmp	ip, #0	@ tmp11394,
	ldrb	r0, [r6, #3239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11401, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11395, tmp11394
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11395,
	addgt	sl, sl, #1	@,, MisCnt.6961, MisCnt.6953
	cmp	r1, #0	@ tmp11401,
	rsb	r7, r2, r0	@ tmp11408, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11402, tmp11401
	cmp	r1, #2	@ tmp11402,
	addgt	sl, sl, #1	@,, MisCnt.6969, MisCnt.6961
	cmp	r7, #0	@ tmp11408,
	rsblt	r7, r7, #0	@ tmp11409, tmp11408
	cmp	r7, #2	@ tmp11409,
	addgt	sl, sl, #1	@,, tmp11412, MisCnt.6969
	cmp	sl, #2	@ tmp11412,
	bgt	.L61	@,
	ldr	r3, [r6, #3240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #3253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r7, ip	@ tmp11430, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11430,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp11423, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11431, tmp11430
	cmp	lr, #0	@ tmp11423,
	rsb	r0, r2, r0	@ tmp11437, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp11424, tmp11423
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11431,
	movle	sl, #0	@, tmp11433
	movgt	sl, #1	@, tmp11433
	ldrb	r7, [r6, #3255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp11424,
	addgt	sl, sl, #1	@,, MisCnt.6995, tmp11433
	cmp	r0, #0	@ tmp11437,
	ldrb	r1, [r6, #3256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp11444, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11438, tmp11437
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11438,
	addgt	sl, sl, #1	@,, MisCnt.7003, MisCnt.6995
	cmp	r7, #0	@ tmp11444,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11451, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11445, tmp11444
	ldrb	ip, [r6, #3257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11445,
	addgt	sl, sl, #1	@,, MisCnt.7011, MisCnt.7003
	cmp	r2, #0	@ tmp11451,
	ldrb	lr, [r6, #3258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11458, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11452, tmp11451
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11452,
	addgt	sl, sl, #1	@,, MisCnt.7019, MisCnt.7011
	cmp	ip, #0	@ tmp11458,
	ldrb	r0, [r6, #3259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp11465, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11459, tmp11458
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11459,
	addgt	sl, sl, #1	@,, MisCnt.7027, MisCnt.7019
	cmp	r1, #0	@ tmp11465,
	rsb	r7, r2, r0	@ tmp11472, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11466, tmp11465
	cmp	r1, #2	@ tmp11466,
	addgt	sl, sl, #1	@,, MisCnt.7035, MisCnt.7027
	cmp	r7, #0	@ tmp11472,
	rsblt	r7, r7, #0	@ tmp11473, tmp11472
	cmp	r7, #2	@ tmp11473,
	addgt	sl, sl, #1	@,, tmp11476, MisCnt.7035
	cmp	sl, #2	@ tmp11476,
	bgt	.L61	@,
	ldr	r3, [r6, #3260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r7, [r6, #3273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #3272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp11494, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11494,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, sl	@ tmp11487, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11495, tmp11494
	cmp	r7, #0	@ tmp11487,
	rsb	r0, r2, r0	@ tmp11501, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp11488, tmp11487
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11495,
	movle	r3, #0	@, tmp11497
	movgt	r3, #1	@, tmp11497
	ldrb	sl, [r6, #3275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp11488,
	addgt	r3, r3, #1	@,, MisCnt.2214, tmp11497
	cmp	r0, #0	@ tmp11501,
	ldrb	r1, [r6, #3276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp11508, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11502, tmp11501
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11502,
	addgt	r3, r3, #1	@,, MisCnt.2225, MisCnt.2214
	cmp	sl, #0	@ tmp11508,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11515, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp11509, tmp11508
	ldrb	ip, [r6, #3277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11509,
	addgt	r3, r3, #1	@,, MisCnt.2236, MisCnt.2225
	cmp	r2, #0	@ tmp11515,
	ldrb	r7, [r6, #3278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11522, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11516, tmp11515
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11516,
	addgt	r3, r3, #1	@,, MisCnt.2245, MisCnt.2236
	cmp	ip, #0	@ tmp11522,
	ldrb	r0, [r6, #3279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11523, tmp11522
	rsb	r1, r1, r7	@ tmp11529, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11523,
	addgt	r3, r3, #1	@,, MisCnt.2256, MisCnt.2245
	cmp	r1, #0	@ tmp11529,
	rsb	ip, r2, r0	@ tmp11536, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11530, tmp11529
	cmp	r1, #2	@ tmp11530,
	addgt	r3, r3, #1	@,, MisCnt.2267, MisCnt.2256
	cmp	ip, #0	@ tmp11536,
	rsblt	ip, ip, #0	@ tmp11537, tmp11536
	cmp	ip, #2	@ tmp11537,
	addgt	r3, r3, #1	@,, tmp11540, MisCnt.2267
	cmp	r3, #2	@ tmp11540,
	movle	r0, #5	@ Result,
	ble	.L18	@,
.L61:
	ldr	ip, [r6, #3280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3284]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3288]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp11541,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp11541,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #3293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #3292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r9, sl, r1	@ tmp11558, SmpPat.Pix, <variable>.Pix
	cmp	r9, #0	@ tmp11558,
	ldrb	ip, [r6, #3294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r3, r0	@ tmp11551, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r9, r9, #0	@ tmp11559, tmp11558
	cmp	sl, #0	@ tmp11551,
	rsblt	sl, sl, #0	@ tmp11552, tmp11551
	ldrb	r0, [r6, #3295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp11559,
	movle	r1, #0	@, tmp11561
	movgt	r1, #1	@, tmp11561
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r9, r2, ip	@ tmp11565, SmpPat.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11552,
	addgt	r1, r1, #1	@,, MisCnt.7061, tmp11561
	cmp	r9, #0	@ tmp11565,
	rsb	r3, r3, r0	@ tmp11572, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r9, r9, #0	@ tmp11566, tmp11565
	ldrb	ip, [r6, #3296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp11566,
	movle	r9, r1	@, MisCnt.7069, MisCnt.7061
	addgt	r9, r1, #1	@,, MisCnt.7069, MisCnt.7061
	cmp	r3, #0	@ tmp11572,
	ldrb	r0, [r6, #3297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp11579, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11573, tmp11572
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11573,
	movle	r3, r9	@, MisCnt.7077, MisCnt.7069
	addgt	r3, r9, #1	@,, MisCnt.7077, MisCnt.7069
	cmp	ip, #0	@ tmp11579,
	ldrb	sl, [r6, #3298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp11586, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11580, tmp11579
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11580,
	movle	ip, r3	@, MisCnt.7085, MisCnt.7077
	addgt	ip, r3, #1	@,, MisCnt.7085, MisCnt.7077
	cmp	r1, #0	@ tmp11586,
	ldrb	r0, [r6, #3299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, sl	@ tmp11593, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11587, tmp11586
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp11587,
	movle	r1, ip	@, MisCnt.7093, MisCnt.7085
	addgt	r1, ip, #1	@,, MisCnt.7093, MisCnt.7085
	cmp	r2, #0	@ tmp11593,
	rsb	ip, r3, r0	@ tmp11600, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11594, tmp11593
	cmp	r2, #2	@ tmp11594,
	movle	r2, r1	@, MisCnt.7101, MisCnt.7093
	addgt	r2, r1, #1	@,, MisCnt.7101, MisCnt.7093
	cmp	ip, #0	@ tmp11600,
	rsblt	ip, ip, #0	@ tmp11601, tmp11600
	cmp	ip, #2	@ tmp11601,
	movle	r0, r2	@, tmp11604, MisCnt.7101
	addgt	r0, r2, #1	@,, tmp11604, MisCnt.7101
	cmp	r0, #2	@ tmp11604,
	bgt	.L50	@,
	ldr	r3, [r7, #3300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3304]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3308]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #3313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #3312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp11622, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11622,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp11615, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11623, tmp11622
	cmp	r6, #0	@ tmp11615,
	rsb	r0, r2, r0	@ tmp11629, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11616, tmp11615
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11623,
	movle	r3, #0	@, tmp11625
	movgt	r3, #1	@, tmp11625
	ldrb	sl, [r7, #3315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11616,
	addgt	r3, r3, #1	@,, MisCnt.7127, tmp11625
	cmp	r0, #0	@ tmp11629,
	ldrb	r1, [r7, #3316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp11636, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11630, tmp11629
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11630,
	addgt	r3, r3, #1	@,, MisCnt.7135, MisCnt.7127
	cmp	sl, #0	@ tmp11636,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11643, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp11637, tmp11636
	ldrb	ip, [r7, #3317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11637,
	addgt	r3, r3, #1	@,, MisCnt.7143, MisCnt.7135
	cmp	r2, #0	@ tmp11643,
	ldrb	r6, [r7, #3318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11650, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11644, tmp11643
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11644,
	addgt	r3, r3, #1	@,, MisCnt.7151, MisCnt.7143
	cmp	ip, #0	@ tmp11650,
	ldrb	r0, [r7, #3319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r6	@ tmp11657, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11651, tmp11650
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11651,
	addgt	r3, r3, #1	@,, MisCnt.7159, MisCnt.7151
	cmp	r1, #0	@ tmp11657,
	rsb	r2, r2, r0	@ tmp11664, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11658, tmp11657
	cmp	r1, #2	@ tmp11658,
	addgt	r3, r3, #1	@,, MisCnt.7167, MisCnt.7159
	cmp	r2, #0	@ tmp11664,
	rsblt	r2, r2, #0	@ tmp11665, tmp11664
	cmp	r2, #2	@ tmp11665,
	addgt	r3, r3, #1	@,, tmp11668, MisCnt.7167
	cmp	r3, #2	@ tmp11668,
	bgt	.L50	@,
	ldr	r3, [r7, #3320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3328]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #3333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #3332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp11686, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11686,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp11679, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11687, tmp11686
	cmp	r6, #0	@ tmp11679,
	rsb	r0, r2, r0	@ tmp11693, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11680, tmp11679
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11687,
	movle	r3, #0	@, tmp11689
	movgt	r3, #1	@, tmp11689
	ldrb	sl, [r7, #3335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11680,
	addgt	r3, r3, #1	@,, MisCnt.7193, tmp11689
	cmp	r0, #0	@ tmp11693,
	ldrb	r1, [r7, #3336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp11700, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11694, tmp11693
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11694,
	addgt	r3, r3, #1	@,, MisCnt.7201, MisCnt.7193
	cmp	sl, #0	@ tmp11700,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11707, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp11701, tmp11700
	ldrb	ip, [r7, #3337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11701,
	addgt	r3, r3, #1	@,, MisCnt.7209, MisCnt.7201
	cmp	r2, #0	@ tmp11707,
	ldrb	r6, [r7, #3338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11714, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11708, tmp11707
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11708,
	addgt	r3, r3, #1	@,, MisCnt.7217, MisCnt.7209
	cmp	ip, #0	@ tmp11714,
	ldrb	r0, [r7, #3339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11715, tmp11714
	rsb	r1, r1, r6	@ tmp11721, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11715,
	addgt	r3, r3, #1	@,, MisCnt.7225, MisCnt.7217
	cmp	r1, #0	@ tmp11721,
	rsb	ip, r2, r0	@ tmp11728, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11722, tmp11721
	cmp	r1, #2	@ tmp11722,
	addgt	r3, r3, #1	@,, MisCnt.7233, MisCnt.7225
	cmp	ip, #0	@ tmp11728,
	rsblt	ip, ip, #0	@ tmp11729, tmp11728
	cmp	ip, #2	@ tmp11729,
	addgt	r3, r3, #1	@,, tmp11732, MisCnt.7233
	cmp	r3, #2	@ tmp11732,
	bgt	.L50	@,
	ldr	r3, [r7, #3340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3348]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #3353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #3352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp11750, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11750,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp11743, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11751, tmp11750
	cmp	r6, #0	@ tmp11743,
	rsb	r0, r2, r0	@ tmp11757, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11744, tmp11743
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11751,
	movle	r3, #0	@, tmp11753
	movgt	r3, #1	@, tmp11753
	ldrb	sl, [r7, #3355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11744,
	addgt	r3, r3, #1	@,, MisCnt.7259, tmp11753
	cmp	r0, #0	@ tmp11757,
	ldrb	r1, [r7, #3356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp11764, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11758, tmp11757
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11758,
	addgt	r3, r3, #1	@,, MisCnt.7267, MisCnt.7259
	cmp	sl, #0	@ tmp11764,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11771, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp11765, tmp11764
	ldrb	ip, [r7, #3357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11765,
	addgt	r3, r3, #1	@,, MisCnt.7275, MisCnt.7267
	cmp	r2, #0	@ tmp11771,
	ldrb	r6, [r7, #3358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11778, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11772, tmp11771
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11772,
	addgt	r3, r3, #1	@,, MisCnt.7283, MisCnt.7275
	cmp	ip, #0	@ tmp11778,
	ldrb	r0, [r7, #3359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11779, tmp11778
	rsb	r1, r1, r6	@ tmp11785, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11779,
	addgt	r3, r3, #1	@,, MisCnt.7291, MisCnt.7283
	cmp	r1, #0	@ tmp11785,
	rsb	ip, r2, r0	@ tmp11792, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11786, tmp11785
	cmp	r1, #2	@ tmp11786,
	addgt	r3, r3, #1	@,, MisCnt.7299, MisCnt.7291
	cmp	ip, #0	@ tmp11792,
	rsblt	ip, ip, #0	@ tmp11793, tmp11792
	cmp	ip, #2	@ tmp11793,
	addgt	r3, r3, #1	@,, tmp11796, MisCnt.7299
	cmp	r3, #2	@ tmp11796,
	bgt	.L50	@,
	ldr	r3, [r7, #3360]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r7, #3364]	@ <variable>.Px, <variable>.Px
	mov	r0, sp	@,
	ldr	lr, [r7, #3368]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r5, [r7, #3373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r6, [r7, #3372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp11814, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11814,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r6	@ tmp11807, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11815, tmp11814
	cmp	r5, #0	@ tmp11807,
	rsb	r0, r2, r0	@ tmp11821, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11808, tmp11807
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11815,
	movle	r3, #0	@, tmp11817
	movgt	r3, #1	@, tmp11817
	ldrb	r6, [r7, #3375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11808,
	addgt	r3, r3, #1	@,, MisCnt.2284, tmp11817
	cmp	r0, #0	@ tmp11821,
	ldrb	r1, [r7, #3376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11828, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11822, tmp11821
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11822,
	addgt	r3, r3, #1	@,, MisCnt.2295, MisCnt.2284
	cmp	r6, #0	@ tmp11828,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11835, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11829, tmp11828
	ldrb	ip, [r7, #3377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11829,
	addgt	r3, r3, #1	@,, MisCnt.2306, MisCnt.2295
	cmp	r2, #0	@ tmp11835,
	ldrb	r5, [r7, #3378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11842, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11836, tmp11835
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11836,
	addgt	r3, r3, #1	@,, MisCnt.2316, MisCnt.2306
	cmp	ip, #0	@ tmp11842,
	ldrb	r0, [r7, #3379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11843, tmp11842
	rsb	r1, r1, r5	@ tmp11849, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11843,
	addgt	r3, r3, #1	@,, MisCnt.2325, MisCnt.2316
	cmp	r1, #0	@ tmp11849,
	rsb	ip, r2, r0	@ tmp11856, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11850, tmp11849
	cmp	r1, #2	@ tmp11850,
	addgt	r3, r3, #1	@,, MisCnt.2336, MisCnt.2325
	cmp	ip, #0	@ tmp11856,
	rsblt	ip, ip, #0	@ tmp11857, tmp11856
	cmp	ip, #2	@ tmp11857,
	addgt	r3, r3, #1	@,, tmp11860, MisCnt.2336
	cmp	r3, #2	@ tmp11860,
	bgt	.L50	@,
	mov	r0, #6	@ Result,
	b	.L18	@
.L74:
	cmp	r2, #720	@ D.35602,
	beq	.L78	@,
	cmp	r2, #704	@ D.35602,
	bne	.L50	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp12191,
	movt	r6, #:upper16:.LANCHOR0	@ tmp12191,
	mov	r1, r5	@, pDetPara
	mov	r0, sp	@,
	ldr	r2, [r6, #2300]	@ <variable>.Comp, <variable>.Comp
	mov	r8, sp	@ tmp12192,
	ldr	r7, [r6, #2304]	@ <variable>.Px, <variable>.Px
	ldr	lr, [r6, #2308]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r7, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #2313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #2312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r3, r1	@ tmp8550, SmpPat.Pix, <variable>.Pix
	cmp	ip, #0	@ tmp8550,
	ldrb	r7, [r6, #2314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, sl, r9	@ tmp8543, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	ip, ip, #0	@ tmp8551, tmp8550
	cmp	lr, #0	@ tmp8543,
	rsb	sl, r2, r7	@ tmp8557, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8544, tmp8543
	ldrb	r0, [r6, #2315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp8551,
	movle	r1, #0	@, tmp8553
	movgt	r1, #1	@, tmp8553
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp8544,
	addgt	r1, r1, #1	@,, MisCnt.7325, tmp8553
	cmp	sl, #0	@ tmp8557,
	ldrb	ip, [r6, #2316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r3, r3, r0	@ tmp8564, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8558, tmp8557
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp8558,
	movle	r7, r1	@, MisCnt.7333, MisCnt.7325
	addgt	r7, r1, #1	@,, MisCnt.7333, MisCnt.7325
	cmp	r3, #0	@ tmp8564,
	ldrb	r0, [r6, #2317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r9, ip	@ tmp8571, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8565, tmp8564
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8565,
	movle	r2, r7	@, MisCnt.7341, MisCnt.7333
	addgt	r2, r7, #1	@,, MisCnt.7341, MisCnt.7333
	cmp	sl, #0	@ tmp8571,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r0	@ tmp8578, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8572, tmp8571
	ldrb	lr, [r6, #2318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8572,
	movle	ip, r2	@, MisCnt.7349, MisCnt.7341
	addgt	ip, r2, #1	@,, MisCnt.7349, MisCnt.7341
	cmp	r7, #0	@ tmp8578,
	ldrb	r0, [r6, #2319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r9, lr	@ tmp8585, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp8579, tmp8578
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r7, #2	@ tmp8579,
	movle	r1, ip	@, MisCnt.7357, MisCnt.7349
	addgt	r1, ip, #1	@,, MisCnt.7357, MisCnt.7349
	cmp	r2, #0	@ tmp8585,
	rsb	r9, r3, r0	@ tmp8592, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8586, tmp8585
	cmp	r2, #2	@ tmp8586,
	movle	sl, r1	@, MisCnt.7365, MisCnt.7357
	addgt	sl, r1, #1	@,, MisCnt.7365, MisCnt.7357
	cmp	r9, #0	@ tmp8592,
	rsblt	r9, r9, #0	@ tmp8593, tmp8592
	cmp	r9, #2	@ tmp8593,
	movle	r7, sl	@, tmp8596, MisCnt.7365
	addgt	r7, sl, #1	@,, tmp8596, MisCnt.7365
	cmp	r7, #2	@ tmp8596,
	bgt	.L51	@,
	ldr	r7, [r6, #2320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #2324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2328]	@ <variable>.Py, <variable>.Py
	str	r7, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	mov	r7, r6	@ tmp8597, tmp12191
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #2333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #2332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp8614, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8614,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp8607, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8615, tmp8614
	cmp	lr, #0	@ tmp8607,
	rsb	r0, r2, r0	@ tmp8621, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8608, tmp8607
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8615,
	movle	r9, #0	@, tmp8617
	movgt	r9, #1	@, tmp8617
	ldrb	sl, [r6, #2335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8608,
	addgt	r9, r9, #1	@,, MisCnt.7391, tmp8617
	cmp	r0, #0	@ tmp8621,
	ldrb	r1, [r6, #2336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8628, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8622, tmp8621
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8622,
	addgt	r9, r9, #1	@,, MisCnt.7399, MisCnt.7391
	cmp	sl, #0	@ tmp8628,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8635, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8629, tmp8628
	ldrb	ip, [r6, #2337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8629,
	addgt	r9, r9, #1	@,, MisCnt.7407, MisCnt.7399
	cmp	r2, #0	@ tmp8635,
	ldrb	lr, [r6, #2338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8642, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8636, tmp8635
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8636,
	addgt	r9, r9, #1	@,, MisCnt.7415, MisCnt.7407
	cmp	ip, #0	@ tmp8642,
	ldrb	r0, [r6, #2339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8643, tmp8642
	rsb	sl, r1, lr	@ tmp8649, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8643,
	addgt	r9, r9, #1	@,, MisCnt.7423, MisCnt.7415
	cmp	sl, #0	@ tmp8649,
	rsb	ip, r2, r0	@ tmp8656, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8650, tmp8649
	cmp	sl, #2	@ tmp8650,
	addgt	r9, r9, #1	@,, MisCnt.7431, MisCnt.7423
	cmp	ip, #0	@ tmp8656,
	rsblt	ip, ip, #0	@ tmp8657, tmp8656
	cmp	ip, #2	@ tmp8657,
	addgt	r9, r9, #1	@,, tmp8660, MisCnt.7431
	cmp	r9, #2	@ tmp8660,
	bgt	.L51	@,
	ldr	r2, [r6, #2340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #2344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2348]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #2353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp8678, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8678,
	ldrb	r9, [r6, #2354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8671, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8679, tmp8678
	cmp	lr, #0	@ tmp8671,
	rsb	r0, r2, r9	@ tmp8685, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8672, tmp8671
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8679,
	movle	r3, #0	@, tmp8681
	movgt	r3, #1	@, tmp8681
	ldrb	sl, [r6, #2355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8672,
	addgt	r3, r3, #1	@,, MisCnt.7457, tmp8681
	cmp	r0, #0	@ tmp8685,
	ldrb	r1, [r6, #2356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8692, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8686, tmp8685
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8686,
	addgt	r3, r3, #1	@,, MisCnt.7465, MisCnt.7457
	cmp	sl, #0	@ tmp8692,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp8699, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8693, tmp8692
	ldrb	ip, [r6, #2357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8693,
	addgt	r3, r3, #1	@,, MisCnt.7473, MisCnt.7465
	cmp	r2, #0	@ tmp8699,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp8706, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8700, tmp8699
	ldrb	lr, [r6, #2358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp8700,
	addgt	r3, r3, #1	@,, MisCnt.7481, MisCnt.7473
	cmp	ip, #0	@ tmp8706,
	ldrb	r0, [r6, #2359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp8713, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8707, tmp8706
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8707,
	addgt	r3, r3, #1	@,, MisCnt.7489, MisCnt.7481
	cmp	r1, #0	@ tmp8713,
	rsb	r9, sl, r0	@ tmp8720, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8714, tmp8713
	cmp	r1, #2	@ tmp8714,
	addgt	r3, r3, #1	@,, MisCnt.7497, MisCnt.7489
	cmp	r9, #0	@ tmp8720,
	rsblt	r9, r9, #0	@ tmp8721, tmp8720
	cmp	r9, #2	@ tmp8721,
	addgt	r3, r3, #1	@,, tmp8724, MisCnt.7497
	cmp	r3, #2	@ tmp8724,
	bgt	.L51	@,
	ldr	r2, [r6, #2360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r6, #2364]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2368]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #2373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp8742, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8742,
	ldrb	sl, [r6, #2374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8735, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8743, tmp8742
	cmp	lr, #0	@ tmp8735,
	rsb	r0, r2, sl	@ tmp8749, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8736, tmp8735
	ldrb	r9, [r6, #2375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8743,
	movle	r3, #0	@, tmp8745
	movgt	r3, #1	@, tmp8745
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp8736,
	addgt	r3, r3, #1	@,, MisCnt.7523, tmp8745
	cmp	r0, #0	@ tmp8749,
	ldrb	r1, [r6, #2376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp8756, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8750, tmp8749
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8750,
	addgt	r3, r3, #1	@,, MisCnt.7531, MisCnt.7523
	cmp	sl, #0	@ tmp8756,
	ldrb	r9, [r6, #2377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp8763, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8757, tmp8756
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp8757,
	addgt	r3, r3, #1	@,, MisCnt.7539, MisCnt.7531
	cmp	r2, #0	@ tmp8763,
	ldrb	lr, [r6, #2378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp8770, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8764, tmp8763
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8764,
	addgt	r3, r3, #1	@,, MisCnt.7547, MisCnt.7539
	cmp	ip, #0	@ tmp8770,
	ldrb	r0, [r6, #2379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8777, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8771, tmp8770
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8771,
	addgt	r3, r3, #1	@,, MisCnt.7555, MisCnt.7547
	cmp	r1, #0	@ tmp8777,
	rsb	sl, r9, r0	@ tmp8784, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8778, tmp8777
	cmp	r1, #2	@ tmp8778,
	addgt	r3, r3, #1	@,, MisCnt.7563, MisCnt.7555
	cmp	sl, #0	@ tmp8784,
	rsblt	sl, sl, #0	@ tmp8785, tmp8784
	cmp	sl, #2	@ tmp8785,
	addgt	r3, r3, #1	@,, tmp8788, MisCnt.7563
	cmp	r3, #2	@ tmp8788,
	bgt	.L51	@,
	ldr	r3, [r6, #2380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #2384]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r6, #2393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #2392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp8806, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8806,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp8799, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8807, tmp8806
	cmp	sl, #0	@ tmp8799,
	rsb	r0, r2, r0	@ tmp8813, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8800, tmp8799
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8807,
	movle	r3, #0	@, tmp8809
	movgt	r3, #1	@, tmp8809
	ldrb	r9, [r6, #2395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8800,
	addgt	r3, r3, #1	@,, MisCnt.2354, tmp8809
	cmp	r0, #0	@ tmp8813,
	ldrb	r1, [r6, #2396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp8820, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8814, tmp8813
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8814,
	addgt	r3, r3, #1	@,, MisCnt.2363, MisCnt.2354
	cmp	r9, #0	@ tmp8820,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8827, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp8821, tmp8820
	ldrb	ip, [r6, #2397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp8821,
	addgt	r3, r3, #1	@,, MisCnt.2371, MisCnt.2363
	cmp	r2, #0	@ tmp8827,
	ldrb	sl, [r6, #2398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8834, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8828, tmp8827
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8828,
	addgt	r3, r3, #1	@,, MisCnt.2379, MisCnt.2371
	cmp	ip, #0	@ tmp8834,
	ldrb	r0, [r6, #2399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8835, tmp8834
	rsb	r1, r1, sl	@ tmp8841, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8835,
	addgt	r3, r3, #1	@,, MisCnt.2387, MisCnt.2379
	cmp	r1, #0	@ tmp8841,
	rsb	ip, r2, r0	@ tmp8848, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8842, tmp8841
	cmp	r1, #2	@ tmp8842,
	addgt	r3, r3, #1	@,, MisCnt.2395, MisCnt.2387
	cmp	ip, #0	@ tmp8848,
	rsblt	ip, ip, #0	@ tmp8849, tmp8848
	cmp	ip, #2	@ tmp8849,
	addgt	r3, r3, #1	@,, tmp8852, MisCnt.2395
	cmp	r3, #2	@ tmp8852,
	movle	r0, #24	@ Result,
	ble	.L18	@,
.L51:
	ldr	ip, [r6, #2400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #2404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2408]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp8853,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp8853,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r6, #2413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #2412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r1, r3, sl	@ tmp8870, SmpPat.Pix, <variable>.Pix
	cmp	r1, #0	@ tmp8870,
	ldrb	r2, [r6, #2414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r0, r9	@ tmp8863, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r1, r1, #0	@ tmp8871, tmp8870
	cmp	sl, #0	@ tmp8863,
	rsb	r3, ip, r2	@ tmp8877, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8864, tmp8863
	ldrb	r0, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8871,
	movle	r1, #0	@, tmp8873
	movgt	r1, #1	@, tmp8873
	ldrb	r9, [r6, #2415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8864,
	addgt	r1, r1, #1	@,, MisCnt.7589, tmp8873
	cmp	r3, #0	@ tmp8877,
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r9, r0, r9	@ tmp8884, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8878, tmp8877
	ldrb	ip, [r6, #2416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8878,
	movle	r3, r1	@, MisCnt.7597, MisCnt.7589
	addgt	r3, r1, #1	@,, MisCnt.7597, MisCnt.7589
	cmp	r9, #0	@ tmp8884,
	ldrb	r0, [r6, #2417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp8891, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp8885, tmp8884
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp8885,
	addgt	r3, r3, #1	@,, MisCnt.7605, MisCnt.7597
	cmp	ip, #0	@ tmp8891,
	ldrb	sl, [r6, #2418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp8898, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8892, tmp8891
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8892,
	movle	ip, r3	@, MisCnt.7613, MisCnt.7605
	addgt	ip, r3, #1	@,, MisCnt.7613, MisCnt.7605
	cmp	r1, #0	@ tmp8898,
	ldrb	r0, [r6, #2419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, sl	@ tmp8905, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8899, tmp8898
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8899,
	movle	r1, ip	@, MisCnt.7621, MisCnt.7613
	addgt	r1, ip, #1	@,, MisCnt.7621, MisCnt.7613
	cmp	r2, #0	@ tmp8905,
	rsb	ip, r3, r0	@ tmp8912, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8906, tmp8905
	cmp	r2, #2	@ tmp8906,
	movle	r2, r1	@, MisCnt.7629, MisCnt.7621
	addgt	r2, r1, #1	@,, MisCnt.7629, MisCnt.7621
	cmp	ip, #0	@ tmp8912,
	rsblt	ip, ip, #0	@ tmp8913, tmp8912
	cmp	ip, #2	@ tmp8913,
	movle	r0, r2	@, tmp8916, MisCnt.7629
	addgt	r0, r2, #1	@,, tmp8916, MisCnt.7629
	cmp	r0, #2	@ tmp8916,
	bgt	.L50	@,
	ldr	ip, [r7, #2420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2428]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r7, #2433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r6, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r6, r1	@ tmp8934, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp8934,
	ldrb	ip, [r7, #2434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, r3, r0	@ tmp8927, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp8935, tmp8934
	cmp	r6, #0	@ tmp8927,
	rsblt	r6, r6, #0	@ tmp8928, tmp8927
	ldrb	r0, [r7, #2435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8935,
	movle	r1, #0	@, tmp8937
	movgt	r1, #1	@, tmp8937
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, ip	@ tmp8941, SmpPat.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp8928,
	addgt	r1, r1, #1	@,, MisCnt.7655, tmp8937
	cmp	sl, #0	@ tmp8941,
	rsb	r3, r3, r0	@ tmp8948, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp8942, tmp8941
	ldrb	ip, [r7, #2436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8942,
	movle	sl, r1	@, MisCnt.7663, MisCnt.7655
	addgt	sl, r1, #1	@,, MisCnt.7663, MisCnt.7655
	cmp	r3, #0	@ tmp8948,
	ldrb	r0, [r7, #2437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp8955, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8949, tmp8948
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8949,
	movle	r3, sl	@, MisCnt.7671, MisCnt.7663
	addgt	r3, sl, #1	@,, MisCnt.7671, MisCnt.7663
	cmp	ip, #0	@ tmp8955,
	ldrb	r6, [r7, #2438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp8962, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8956, tmp8955
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8956,
	movle	ip, r3	@, MisCnt.7679, MisCnt.7671
	addgt	ip, r3, #1	@,, MisCnt.7679, MisCnt.7671
	cmp	r1, #0	@ tmp8962,
	ldrb	r0, [r7, #2439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r6	@ tmp8969, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8963, tmp8962
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp8963,
	movle	r1, ip	@, MisCnt.7687, MisCnt.7679
	addgt	r1, ip, #1	@,, MisCnt.7687, MisCnt.7679
	cmp	r2, #0	@ tmp8969,
	rsb	r3, r3, r0	@ tmp8976, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8970, tmp8969
	cmp	r2, #2	@ tmp8970,
	movle	r0, r1	@, MisCnt.7695, MisCnt.7687
	addgt	r0, r1, #1	@,, MisCnt.7695, MisCnt.7687
	cmp	r3, #0	@ tmp8976,
	rsblt	r3, r3, #0	@ tmp8977, tmp8976
	cmp	r3, #2	@ tmp8977,
	movle	r1, r0	@, tmp8980, MisCnt.7695
	addgt	r1, r0, #1	@,, tmp8980, MisCnt.7695
	cmp	r1, #2	@ tmp8980,
	bgt	.L50	@,
	ldr	r3, [r7, #2440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #2453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #2452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp8998, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8998,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp8991, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8999, tmp8998
	cmp	r6, #0	@ tmp8991,
	rsb	r0, r2, r0	@ tmp9005, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp8992, tmp8991
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8999,
	movle	r3, #0	@, tmp9001
	movgt	r3, #1	@, tmp9001
	ldrb	sl, [r7, #2455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp8992,
	addgt	r3, r3, #1	@,, MisCnt.7721, tmp9001
	cmp	r0, #0	@ tmp9005,
	ldrb	r1, [r7, #2456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9012, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9006, tmp9005
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9006,
	addgt	r3, r3, #1	@,, MisCnt.7729, MisCnt.7721
	cmp	sl, #0	@ tmp9012,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9019, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9013, tmp9012
	ldrb	ip, [r7, #2457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9013,
	addgt	r3, r3, #1	@,, MisCnt.7737, MisCnt.7729
	cmp	r2, #0	@ tmp9019,
	ldrb	r6, [r7, #2458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9026, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9020, tmp9019
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9020,
	addgt	r3, r3, #1	@,, MisCnt.7745, MisCnt.7737
	cmp	ip, #0	@ tmp9026,
	ldrb	r0, [r7, #2459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r6	@ tmp9033, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9027, tmp9026
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9027,
	addgt	r3, r3, #1	@,, MisCnt.7753, MisCnt.7745
	cmp	r1, #0	@ tmp9033,
	rsb	r2, r2, r0	@ tmp9040, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9034, tmp9033
	cmp	r1, #2	@ tmp9034,
	addgt	r3, r3, #1	@,, MisCnt.7761, MisCnt.7753
	cmp	r2, #0	@ tmp9040,
	rsblt	r2, r2, #0	@ tmp9041, tmp9040
	cmp	r2, #2	@ tmp9041,
	addgt	r3, r3, #1	@,, tmp9044, MisCnt.7761
	cmp	r3, #2	@ tmp9044,
	bgt	.L50	@,
	ldr	r3, [r7, #2460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2464]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #2473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #2472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp9062, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9062,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp9055, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9063, tmp9062
	cmp	r6, #0	@ tmp9055,
	rsb	r0, r2, r0	@ tmp9069, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9056, tmp9055
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9063,
	movle	r3, #0	@, tmp9065
	movgt	r3, #1	@, tmp9065
	ldrb	sl, [r7, #2475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9056,
	addgt	r3, r3, #1	@,, MisCnt.7787, tmp9065
	cmp	r0, #0	@ tmp9069,
	ldrb	r1, [r7, #2476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9076, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9070, tmp9069
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9070,
	addgt	r3, r3, #1	@,, MisCnt.7795, MisCnt.7787
	cmp	sl, #0	@ tmp9076,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9083, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9077, tmp9076
	ldrb	ip, [r7, #2477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9077,
	addgt	r3, r3, #1	@,, MisCnt.7803, MisCnt.7795
	cmp	r2, #0	@ tmp9083,
	ldrb	r6, [r7, #2478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9090, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9084, tmp9083
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9084,
	addgt	r3, r3, #1	@,, MisCnt.7811, MisCnt.7803
	cmp	ip, #0	@ tmp9090,
	ldrb	r0, [r7, #2479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9091, tmp9090
	rsb	r1, r1, r6	@ tmp9097, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9091,
	addgt	r3, r3, #1	@,, MisCnt.7819, MisCnt.7811
	cmp	r1, #0	@ tmp9097,
	rsb	ip, r2, r0	@ tmp9104, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9098, tmp9097
	cmp	r1, #2	@ tmp9098,
	addgt	r3, r3, #1	@,, MisCnt.7827, MisCnt.7819
	cmp	ip, #0	@ tmp9104,
	rsblt	ip, ip, #0	@ tmp9105, tmp9104
	cmp	ip, #2	@ tmp9105,
	addgt	r3, r3, #1	@,, tmp9108, MisCnt.7827
	cmp	r3, #2	@ tmp9108,
	bgt	.L50	@,
	ldr	r3, [r7, #2480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2484]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #2493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #2492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp9126, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9126,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp9119, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9127, tmp9126
	cmp	r6, #0	@ tmp9119,
	rsb	r0, r2, r0	@ tmp9133, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9120, tmp9119
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9127,
	movle	r3, #0	@, tmp9129
	movgt	r3, #1	@, tmp9129
	ldrb	sl, [r7, #2495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9120,
	addgt	r3, r3, #1	@,, MisCnt.7853, tmp9129
	cmp	r0, #0	@ tmp9133,
	ldrb	r1, [r7, #2496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9140, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9134, tmp9133
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9134,
	addgt	r3, r3, #1	@,, MisCnt.7861, MisCnt.7853
	cmp	sl, #0	@ tmp9140,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9147, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9141, tmp9140
	ldrb	ip, [r7, #2497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9141,
	addgt	r3, r3, #1	@,, MisCnt.7869, MisCnt.7861
	cmp	r2, #0	@ tmp9147,
	ldrb	r6, [r7, #2498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9154, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9148, tmp9147
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9148,
	addgt	r3, r3, #1	@,, MisCnt.7877, MisCnt.7869
	cmp	ip, #0	@ tmp9154,
	ldrb	r0, [r7, #2499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9155, tmp9154
	rsb	r1, r1, r6	@ tmp9161, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9155,
	addgt	r3, r3, #1	@,, MisCnt.7885, MisCnt.7877
	cmp	r1, #0	@ tmp9161,
	rsb	ip, r2, r0	@ tmp9168, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9162, tmp9161
	cmp	r1, #2	@ tmp9162,
	addgt	r3, r3, #1	@,, MisCnt.7893, MisCnt.7885
	cmp	ip, #0	@ tmp9168,
	rsblt	ip, ip, #0	@ tmp9169, tmp9168
	cmp	ip, #2	@ tmp9169,
	addgt	r3, r3, #1	@,, tmp9172, MisCnt.7893
	cmp	r3, #2	@ tmp9172,
	bgt	.L50	@,
	ldr	r3, [r7, #2500]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r7, #2504]	@ <variable>.Px, <variable>.Px
	mov	r0, sp	@,
	ldr	lr, [r7, #2508]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r5, [r7, #2513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r6, [r7, #2512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp9190, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9190,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r6	@ tmp9183, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9191, tmp9190
	cmp	r5, #0	@ tmp9183,
	rsb	r0, r2, r0	@ tmp9197, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp9184, tmp9183
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9191,
	movle	r3, #0	@, tmp9193
	movgt	r3, #1	@, tmp9193
	ldrb	r6, [r7, #2515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp9184,
	addgt	r3, r3, #1	@,, MisCnt.2415, tmp9193
	cmp	r0, #0	@ tmp9197,
	ldrb	r1, [r7, #2516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp9204, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9198, tmp9197
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9198,
	addgt	r3, r3, #1	@,, MisCnt.2426, MisCnt.2415
	cmp	r6, #0	@ tmp9204,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9211, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp9205, tmp9204
	ldrb	ip, [r7, #2517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp9205,
	addgt	r3, r3, #1	@,, MisCnt.2437, MisCnt.2426
	cmp	r2, #0	@ tmp9211,
	ldrb	r5, [r7, #2518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9218, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9212, tmp9211
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9212,
	addgt	r3, r3, #1	@,, MisCnt.2445, MisCnt.2437
	cmp	ip, #0	@ tmp9218,
	ldrb	r0, [r7, #2519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9219, tmp9218
	rsb	r1, r1, r5	@ tmp9225, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9219,
	addgt	r3, r3, #1	@,, MisCnt.2454, MisCnt.2445
	cmp	r1, #0	@ tmp9225,
	rsb	ip, r2, r0	@ tmp9232, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9226, tmp9225
	cmp	r1, #2	@ tmp9226,
	addgt	r3, r3, #1	@,, MisCnt.2465, MisCnt.2454
	cmp	ip, #0	@ tmp9232,
	rsblt	ip, ip, #0	@ tmp9233, tmp9232
	cmp	ip, #2	@ tmp9233,
	addgt	r3, r3, #1	@,, tmp9236, MisCnt.2465
	cmp	r3, #2	@ tmp9236,
	bgt	.L50	@,
	mov	r0, #10	@ Result,
	b	.L18	@
.L72:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ Result, pDetPara
	b	.L18	@
.L75:
	cmp	r2, #720	@ D.35602,
	beq	.L79	@,
	cmp	r2, #704	@ D.35602,
	bne	.L53	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp12193,
	movt	r6, #:upper16:.LANCHOR0	@ tmp12193,
	mov	r1, r5	@, pDetPara
	mov	r0, sp	@,
	ldr	r3, [r6, #2520]	@ <variable>.Comp, <variable>.Comp
	mov	r8, sp	@ tmp12194,
	ldr	r2, [r6, #2524]	@ <variable>.Px, <variable>.Px
	ldr	lr, [r6, #2528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #2532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r7, ip	@ tmp9254, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9254,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9247, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9255, tmp9254
	cmp	lr, #0	@ tmp9247,
	rsb	r0, r2, r0	@ tmp9261, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9248, tmp9247
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9255,
	movle	sl, #0	@, tmp9257
	movgt	sl, #1	@, tmp9257
	ldrb	r7, [r6, #2535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9248,
	addgt	sl, sl, #1	@,, MisCnt.2285, tmp9257
	cmp	r0, #0	@ tmp9261,
	ldrb	r1, [r6, #2536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp9268, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9262, tmp9261
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9262,
	addgt	sl, sl, #1	@,, MisCnt.2237, MisCnt.2285
	cmp	r7, #0	@ tmp9268,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9275, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp9269, tmp9268
	ldrb	ip, [r6, #2537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp9269,
	addgt	sl, sl, #1	@,, MisCnt.2205, MisCnt.2237
	cmp	r2, #0	@ tmp9275,
	ldrb	lr, [r6, #2538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9282, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9276, tmp9275
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9276,
	addgt	sl, sl, #1	@,, MisCnt.1615, MisCnt.2205
	cmp	ip, #0	@ tmp9282,
	ldrb	r0, [r6, #2539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9289, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9283, tmp9282
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9283,
	addgt	sl, sl, #1	@,, MisCnt.1565, MisCnt.1615
	cmp	r1, #0	@ tmp9289,
	rsb	r7, r2, r0	@ tmp9296, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9290, tmp9289
	cmp	r1, #2	@ tmp9290,
	addgt	sl, sl, #1	@,, MisCnt.1533, MisCnt.1565
	cmp	r7, #0	@ tmp9296,
	rsblt	r7, r7, #0	@ tmp9297, tmp9296
	cmp	r7, #2	@ tmp9297,
	addgt	sl, sl, #1	@,, tmp9300, MisCnt.1533
	cmp	sl, #2	@ tmp9300,
	bgt	.L54	@,
	ldr	r3, [r6, #2540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #2544]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #2552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r7, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r7, ip	@ tmp9318, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9318,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, sl	@ tmp9311, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9319, tmp9318
	cmp	lr, #0	@ tmp9311,
	rsb	r0, r2, r0	@ tmp9325, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9312, tmp9311
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9319,
	movle	sl, #0	@, tmp9321
	movgt	sl, #1	@, tmp9321
	ldrb	r7, [r6, #2555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9312,
	addgt	sl, sl, #1	@,, MisCnt.1343, tmp9321
	cmp	r0, #0	@ tmp9325,
	ldrb	r1, [r6, #2556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp9332, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9326, tmp9325
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9326,
	addgt	sl, sl, #1	@,, MisCnt.1311, MisCnt.1343
	cmp	r7, #0	@ tmp9332,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9339, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp9333, tmp9332
	ldrb	ip, [r6, #2557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp9333,
	addgt	sl, sl, #1	@,, MisCnt.1262, MisCnt.1311
	cmp	r2, #0	@ tmp9339,
	ldrb	lr, [r6, #2558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9346, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9340, tmp9339
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9340,
	addgt	sl, sl, #1	@,, MisCnt.1221, MisCnt.1262
	cmp	ip, #0	@ tmp9346,
	ldrb	r0, [r6, #2559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9353, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9347, tmp9346
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9347,
	addgt	sl, sl, #1	@,, MisCnt.1189, MisCnt.1221
	cmp	r1, #0	@ tmp9353,
	rsb	r7, r2, r0	@ tmp9360, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9354, tmp9353
	cmp	r1, #2	@ tmp9354,
	addgt	sl, sl, #1	@,, MisCnt.2446, MisCnt.1189
	cmp	r7, #0	@ tmp9360,
	rsblt	r7, r7, #0	@ tmp9361, tmp9360
	cmp	r7, #2	@ tmp9361,
	addgt	sl, sl, #1	@,, tmp9364, MisCnt.2446
	cmp	sl, #2	@ tmp9364,
	bgt	.L54	@,
	ldr	r3, [r6, #2560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #2564]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r7, [r6, #2573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #2572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r7	@ tmp9382, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9382,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, sl	@ tmp9375, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9383, tmp9382
	cmp	r7, #0	@ tmp9375,
	rsb	r0, r2, r0	@ tmp9389, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp9376, tmp9375
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9383,
	movle	r3, #0	@, tmp9385
	movgt	r3, #1	@, tmp9385
	ldrb	sl, [r6, #2575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp9376,
	addgt	r3, r3, #1	@,, MisCnt.1179, tmp9385
	cmp	r0, #0	@ tmp9389,
	ldrb	r1, [r6, #2576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9396, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9390, tmp9389
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9390,
	addgt	r3, r3, #1	@,, MisCnt.1188, MisCnt.1179
	cmp	sl, #0	@ tmp9396,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9403, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9397, tmp9396
	ldrb	ip, [r6, #2577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9397,
	addgt	r3, r3, #1	@,, MisCnt.1199, MisCnt.1188
	cmp	r2, #0	@ tmp9403,
	ldrb	r7, [r6, #2578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9410, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9404, tmp9403
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9404,
	addgt	r3, r3, #1	@,, MisCnt.1210, MisCnt.1199
	cmp	ip, #0	@ tmp9410,
	ldrb	r0, [r6, #2579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9411, tmp9410
	rsb	r1, r1, r7	@ tmp9417, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9411,
	addgt	r3, r3, #1	@,, MisCnt.1220, MisCnt.1210
	cmp	r1, #0	@ tmp9417,
	rsb	ip, r2, r0	@ tmp9424, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9418, tmp9417
	cmp	r1, #2	@ tmp9418,
	addgt	r3, r3, #1	@,, MisCnt.1230, MisCnt.1220
	cmp	ip, #0	@ tmp9424,
	rsblt	ip, ip, #0	@ tmp9425, tmp9424
	cmp	ip, #2	@ tmp9425,
	addgt	r3, r3, #1	@,, tmp9428, MisCnt.1230
	cmp	r3, #2	@ tmp9428,
	movle	r0, #23	@ Result,
	ble	.L18	@,
.L54:
	ldr	ip, [r6, #2620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #2624]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2628]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp9429,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp9429,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #2632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp9446, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp9446,
	ldrb	r9, [r6, #2634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp9439, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp9447, tmp9446
	cmp	lr, #0	@ tmp9439,
	rsblt	lr, lr, #0	@ tmp9440, tmp9439
	ldrb	r0, [r6, #2635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9447,
	movle	r1, #0	@, tmp9449
	movgt	r1, #1	@, tmp9449
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp9453, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9440,
	addgt	r1, r1, #1	@,, MisCnt.2051, tmp9449
	cmp	sl, #0	@ tmp9453,
	rsb	r9, r3, r0	@ tmp9460, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp9454, tmp9453
	ldrb	ip, [r6, #2636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9454,
	movle	sl, r1	@, MisCnt.2011, MisCnt.2051
	addgt	sl, r1, #1	@,, MisCnt.2011, MisCnt.2051
	cmp	r9, #0	@ tmp9460,
	ldrb	r0, [r6, #2637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp9467, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9461, tmp9460
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp9461,
	movle	r3, sl	@, MisCnt.1969, MisCnt.2011
	addgt	r3, sl, #1	@,, MisCnt.1969, MisCnt.2011
	cmp	ip, #0	@ tmp9467,
	ldrb	lr, [r6, #2638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, r0	@ tmp9474, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9468, tmp9467
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9468,
	movle	ip, r3	@, MisCnt.1937, MisCnt.1969
	addgt	ip, r3, #1	@,, MisCnt.1937, MisCnt.1969
	cmp	sl, #0	@ tmp9474,
	ldrb	r9, [r6, #2639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9475, tmp9474
	rsb	r2, r2, lr	@ tmp9481, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9475,
	movle	r1, ip	@, MisCnt.1889, MisCnt.1937
	addgt	r1, ip, #1	@,, MisCnt.1889, MisCnt.1937
	cmp	r2, #0	@ tmp9481,
	rsb	sl, r3, r9	@ tmp9488, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9482, tmp9481
	cmp	r2, #2	@ tmp9482,
	movle	r0, r1	@, MisCnt.1857, MisCnt.1889
	addgt	r0, r1, #1	@,, MisCnt.1857, MisCnt.1889
	cmp	sl, #0	@ tmp9488,
	rsblt	sl, sl, #0	@ tmp9489, tmp9488
	cmp	sl, #2	@ tmp9489,
	movle	r9, r0	@, tmp9492, MisCnt.1857
	addgt	r9, r0, #1	@,, tmp9492, MisCnt.1857
	cmp	r9, #2	@ tmp9492,
	bgt	.L55	@,
	ldr	r2, [r7, #2640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2644]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2648]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp9510, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9510,
	ldrb	r9, [r7, #2654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9503, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9511, tmp9510
	cmp	lr, #0	@ tmp9503,
	rsb	r0, r2, r9	@ tmp9517, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9504, tmp9503
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9511,
	movle	r3, #0	@, tmp9513
	movgt	r3, #1	@, tmp9513
	ldrb	sl, [r7, #2655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9504,
	addgt	r3, r3, #1	@,, MisCnt.1666, tmp9513
	cmp	r0, #0	@ tmp9517,
	ldrb	r1, [r7, #2656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9524, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9518, tmp9517
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9518,
	addgt	r3, r3, #1	@,, MisCnt.3534, MisCnt.1666
	cmp	sl, #0	@ tmp9524,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp9531, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9525, tmp9524
	ldrb	ip, [r7, #2657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9525,
	addgt	r3, r3, #1	@,, MisCnt.3494, MisCnt.3534
	cmp	r2, #0	@ tmp9531,
	ldrb	lr, [r7, #2658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp9538, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9532, tmp9531
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9532,
	addgt	r3, r3, #1	@,, MisCnt.3452, MisCnt.3494
	cmp	r9, #0	@ tmp9538,
	ldrb	r0, [r7, #2659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9545, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9539, tmp9538
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp9539,
	addgt	r3, r3, #1	@,, MisCnt.3420, MisCnt.3452
	cmp	r1, #0	@ tmp9545,
	rsb	sl, r2, r0	@ tmp9552, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9546, tmp9545
	cmp	r1, #2	@ tmp9546,
	addgt	r3, r3, #1	@,, MisCnt.3370, MisCnt.3420
	cmp	sl, #0	@ tmp9552,
	rsblt	sl, sl, #0	@ tmp9553, tmp9552
	cmp	sl, #2	@ tmp9553,
	addgt	r3, r3, #1	@,, tmp9556, MisCnt.3370
	cmp	r3, #2	@ tmp9556,
	bgt	.L55	@,
	ldr	r3, [r7, #2660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2664]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2668]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #2673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #2672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp9574, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9574,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp9567, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9575, tmp9574
	cmp	sl, #0	@ tmp9567,
	rsb	r0, r2, r0	@ tmp9581, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9568, tmp9567
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9575,
	movle	r3, #0	@, tmp9577
	movgt	r3, #1	@, tmp9577
	ldrb	r9, [r7, #2675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9568,
	addgt	r3, r3, #1	@,, MisCnt.1250, tmp9577
	cmp	r0, #0	@ tmp9581,
	ldrb	r1, [r7, #2676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp9588, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9582, tmp9581
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9582,
	addgt	r3, r3, #1	@,, MisCnt.1261, MisCnt.1250
	cmp	r9, #0	@ tmp9588,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9595, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9589, tmp9588
	ldrb	ip, [r7, #2677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp9589,
	addgt	r3, r3, #1	@,, MisCnt.1270, MisCnt.1261
	cmp	r2, #0	@ tmp9595,
	ldrb	sl, [r7, #2678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9602, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9596, tmp9595
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9596,
	addgt	r3, r3, #1	@,, MisCnt.1281, MisCnt.1270
	cmp	ip, #0	@ tmp9602,
	ldrb	r0, [r7, #2679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9603, tmp9602
	rsb	r1, r1, sl	@ tmp9609, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9603,
	addgt	r3, r3, #1	@,, MisCnt.1292, MisCnt.1281
	cmp	r1, #0	@ tmp9609,
	rsb	ip, r2, r0	@ tmp9616, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9610, tmp9609
	cmp	r1, #2	@ tmp9610,
	addgt	r3, r3, #1	@,, MisCnt.1301, MisCnt.1292
	cmp	ip, #0	@ tmp9616,
	rsblt	ip, ip, #0	@ tmp9617, tmp9616
	cmp	ip, #2	@ tmp9617,
	addgt	r3, r3, #1	@,, tmp9620, MisCnt.1301
	cmp	r3, #2	@ tmp9620,
	movle	r0, #4	@ Result,
	ble	.L18	@,
.L55:
	ldr	ip, [r6, #2680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #2684]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2688]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp9621,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp9621,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #2692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp9638, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp9638,
	ldrb	r9, [r6, #2694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp9631, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp9639, tmp9638
	cmp	lr, #0	@ tmp9631,
	rsblt	lr, lr, #0	@ tmp9632, tmp9631
	ldrb	r0, [r6, #2695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9639,
	movle	r1, #0	@, tmp9641
	movgt	r1, #1	@, tmp9641
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp9645, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9632,
	addgt	r1, r1, #1	@,, MisCnt.3183, tmp9641
	cmp	sl, #0	@ tmp9645,
	rsb	r9, r3, r0	@ tmp9652, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp9646, tmp9645
	ldrb	ip, [r6, #2696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9646,
	movle	sl, r1	@, MisCnt.3133, MisCnt.3183
	addgt	sl, r1, #1	@,, MisCnt.3133, MisCnt.3183
	cmp	r9, #0	@ tmp9652,
	ldrb	r0, [r6, #2697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp9659, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9653, tmp9652
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp9653,
	movle	r3, sl	@, MisCnt.3101, MisCnt.3133
	addgt	r3, sl, #1	@,, MisCnt.3101, MisCnt.3133
	cmp	ip, #0	@ tmp9659,
	ldrb	lr, [r6, #2698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp9666, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9660, tmp9659
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9660,
	movle	ip, r3	@, MisCnt.3061, MisCnt.3101
	addgt	ip, r3, #1	@,, MisCnt.3061, MisCnt.3101
	cmp	r9, #0	@ tmp9666,
	ldrb	r0, [r6, #2699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9667, tmp9666
	rsb	sl, r2, lr	@ tmp9673, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp9667,
	movle	r1, ip	@, MisCnt.3021, MisCnt.3061
	addgt	r1, ip, #1	@,, MisCnt.3021, MisCnt.3061
	cmp	sl, #0	@ tmp9673,
	rsb	r9, r3, r0	@ tmp9680, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9674, tmp9673
	cmp	sl, #2	@ tmp9674,
	movle	ip, r1	@, MisCnt.2982, MisCnt.3021
	addgt	ip, r1, #1	@,, MisCnt.2982, MisCnt.3021
	cmp	r9, #0	@ tmp9680,
	rsblt	r9, r9, #0	@ tmp9681, tmp9680
	cmp	r9, #2	@ tmp9681,
	movle	r0, ip	@, tmp9684, MisCnt.2982
	addgt	r0, ip, #1	@,, tmp9684, MisCnt.2982
	cmp	r0, #2	@ tmp9684,
	bgt	.L56	@,
	ldr	r2, [r7, #2700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2704]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2708]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp9702, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9702,
	ldrb	r9, [r7, #2714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9695, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9703, tmp9702
	cmp	lr, #0	@ tmp9695,
	rsb	r0, r2, r9	@ tmp9709, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9696, tmp9695
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9703,
	movle	r3, #0	@, tmp9705
	movgt	r3, #1	@, tmp9705
	ldrb	sl, [r7, #2715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9696,
	addgt	r3, r3, #1	@,, MisCnt.2798, tmp9705
	cmp	r0, #0	@ tmp9709,
	ldrb	r1, [r7, #2716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9716, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9710, tmp9709
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9710,
	addgt	r3, r3, #1	@,, MisCnt.2766, MisCnt.2798
	cmp	sl, #0	@ tmp9716,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp9723, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9717, tmp9716
	ldrb	ip, [r7, #2717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9717,
	addgt	r3, r3, #1	@,, MisCnt.2717, MisCnt.2766
	cmp	r2, #0	@ tmp9723,
	ldrb	lr, [r7, #2718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp9730, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9724, tmp9723
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9724,
	addgt	r3, r3, #1	@,, MisCnt.2685, MisCnt.2717
	cmp	r9, #0	@ tmp9730,
	ldrb	r0, [r7, #2719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9737, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9731, tmp9730
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp9731,
	addgt	r3, r3, #1	@,, MisCnt.2646, MisCnt.2685
	cmp	r1, #0	@ tmp9737,
	rsb	sl, r2, r0	@ tmp9744, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9738, tmp9737
	cmp	r1, #2	@ tmp9738,
	addgt	r3, r3, #1	@,, MisCnt.2606, MisCnt.2646
	cmp	sl, #0	@ tmp9744,
	rsblt	sl, sl, #0	@ tmp9745, tmp9744
	cmp	sl, #2	@ tmp9745,
	addgt	r3, r3, #1	@,, tmp9748, MisCnt.2606
	cmp	r3, #2	@ tmp9748,
	bgt	.L56	@,
	ldr	r2, [r7, #2720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #2724]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2728]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp9766, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9766,
	ldrb	sl, [r7, #2734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9759, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9767, tmp9766
	cmp	lr, #0	@ tmp9759,
	rsb	r0, r2, sl	@ tmp9773, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9760, tmp9759
	ldrb	r9, [r7, #2735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp9767,
	movle	r3, #0	@, tmp9769
	movgt	r3, #1	@, tmp9769
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp9760,
	addgt	r3, r3, #1	@,, MisCnt.1507, tmp9769
	cmp	r0, #0	@ tmp9773,
	ldrb	r1, [r7, #2736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp9780, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9774, tmp9773
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9774,
	addgt	r3, r3, #1	@,, MisCnt.1302, MisCnt.1507
	cmp	sl, #0	@ tmp9780,
	ldrb	r9, [r7, #2737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp9787, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9781, tmp9780
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp9781,
	addgt	r3, r3, #1	@,, MisCnt.2396, MisCnt.1302
	cmp	r2, #0	@ tmp9787,
	ldrb	lr, [r7, #2738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp9794, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9788, tmp9787
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9788,
	addgt	r3, r3, #1	@,, MisCnt.1920, MisCnt.2396
	cmp	ip, #0	@ tmp9794,
	ldrb	r0, [r7, #2739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp9801, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9795, tmp9794
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9795,
	addgt	r3, r3, #1	@,, MisCnt.1717, MisCnt.1920
	cmp	r1, #0	@ tmp9801,
	rsb	sl, r9, r0	@ tmp9808, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9802, tmp9801
	cmp	r1, #2	@ tmp9802,
	addgt	r3, r3, #1	@,, MisCnt.3410, MisCnt.1717
	cmp	sl, #0	@ tmp9808,
	rsblt	sl, sl, #0	@ tmp9809, tmp9808
	cmp	sl, #2	@ tmp9809,
	addgt	r3, r3, #1	@,, tmp9812, MisCnt.3410
	cmp	r3, #2	@ tmp9812,
	bgt	.L56	@,
	ldr	r2, [r7, #2740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2744]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2748]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp9830, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9830,
	ldrb	r9, [r7, #2754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp9823, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp9831, tmp9830
	cmp	lr, #0	@ tmp9823,
	rsb	r0, r2, r9	@ tmp9837, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp9824, tmp9823
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9831,
	movle	r3, #0	@, tmp9833
	movgt	r3, #1	@, tmp9833
	ldrb	sl, [r7, #2755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9824,
	addgt	r3, r3, #1	@,, MisCnt.3563, tmp9833
	cmp	r0, #0	@ tmp9837,
	ldrb	r1, [r7, #2756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp9844, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9838, tmp9837
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9838,
	addgt	r3, r3, #1	@,, MisCnt.3571, MisCnt.3563
	cmp	sl, #0	@ tmp9844,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp9851, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9845, tmp9844
	ldrb	ip, [r7, #2757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9845,
	addgt	r3, r3, #1	@,, MisCnt.3579, MisCnt.3571
	cmp	r2, #0	@ tmp9851,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp9858, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9852, tmp9851
	ldrb	lr, [r7, #2758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp9852,
	addgt	r3, r3, #1	@,, MisCnt.3587, MisCnt.3579
	cmp	ip, #0	@ tmp9858,
	ldrb	r0, [r7, #2759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp9865, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9859, tmp9858
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9859,
	addgt	r3, r3, #1	@,, MisCnt.3595, MisCnt.3587
	cmp	r1, #0	@ tmp9865,
	rsb	r9, sl, r0	@ tmp9872, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9866, tmp9865
	cmp	r1, #2	@ tmp9866,
	addgt	r3, r3, #1	@,, MisCnt.3603, MisCnt.3595
	cmp	r9, #0	@ tmp9872,
	rsblt	r9, r9, #0	@ tmp9873, tmp9872
	cmp	r9, #2	@ tmp9873,
	addgt	r3, r3, #1	@,, tmp9876, MisCnt.3603
	cmp	r3, #2	@ tmp9876,
	bgt	.L56	@,
	ldr	r3, [r7, #2760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2764]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #2773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #2772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp9894, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp9894,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp9887, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp9895, tmp9894
	cmp	sl, #0	@ tmp9887,
	rsb	r0, r2, r0	@ tmp9901, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9888, tmp9887
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp9895,
	movle	r3, #0	@, tmp9897
	movgt	r3, #1	@, tmp9897
	ldrb	r9, [r7, #2775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9888,
	addgt	r3, r3, #1	@,, MisCnt.1321, tmp9897
	cmp	r0, #0	@ tmp9901,
	ldrb	r1, [r7, #2776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp9908, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp9902, tmp9901
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp9902,
	addgt	r3, r3, #1	@,, MisCnt.1332, MisCnt.1321
	cmp	r9, #0	@ tmp9908,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp9915, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9909, tmp9908
	ldrb	ip, [r7, #2777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp9909,
	addgt	r3, r3, #1	@,, MisCnt.1342, MisCnt.1332
	cmp	r2, #0	@ tmp9915,
	ldrb	sl, [r7, #2778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp9922, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp9916, tmp9915
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp9916,
	addgt	r3, r3, #1	@,, MisCnt.1352, MisCnt.1342
	cmp	ip, #0	@ tmp9922,
	ldrb	r0, [r7, #2779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9923, tmp9922
	rsb	r1, r1, sl	@ tmp9929, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9923,
	addgt	r3, r3, #1	@,, MisCnt.1363, MisCnt.1352
	cmp	r1, #0	@ tmp9929,
	rsb	ip, r2, r0	@ tmp9936, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp9930, tmp9929
	cmp	r1, #2	@ tmp9930,
	addgt	r3, r3, #1	@,, MisCnt.1374, MisCnt.1363
	cmp	ip, #0	@ tmp9936,
	rsblt	ip, ip, #0	@ tmp9937, tmp9936
	cmp	ip, #2	@ tmp9937,
	addgt	r3, r3, #1	@,, tmp9940, MisCnt.1374
	cmp	r3, #2	@ tmp9940,
	movle	r0, #31	@ Result,
	ble	.L18	@,
.L56:
	ldr	ip, [r6, #2780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #2784]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2788]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp9941,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp9941,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #2793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp9958, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp9958,
	ldrb	r9, [r6, #2794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp9951, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp9959, tmp9958
	cmp	lr, #0	@ tmp9951,
	rsblt	lr, lr, #0	@ tmp9952, tmp9951
	ldrb	r0, [r6, #2795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9959,
	movle	r1, #0	@, tmp9961
	movgt	r1, #1	@, tmp9961
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp9965, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp9952,
	addgt	r1, r1, #1	@,, MisCnt.3629, tmp9961
	cmp	sl, #0	@ tmp9965,
	rsb	r9, r3, r0	@ tmp9972, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp9966, tmp9965
	ldrb	ip, [r6, #2796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp9966,
	movle	sl, r1	@, MisCnt.3637, MisCnt.3629
	addgt	sl, r1, #1	@,, MisCnt.3637, MisCnt.3629
	cmp	r9, #0	@ tmp9972,
	ldrb	r0, [r6, #2797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp9979, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9973, tmp9972
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp9973,
	movle	r3, sl	@, MisCnt.3645, MisCnt.3637
	addgt	r3, sl, #1	@,, MisCnt.3645, MisCnt.3637
	cmp	ip, #0	@ tmp9979,
	ldrb	lr, [r6, #2798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp9986, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp9980, tmp9979
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp9980,
	movle	ip, r3	@, MisCnt.3653, MisCnt.3645
	addgt	ip, r3, #1	@,, MisCnt.3653, MisCnt.3645
	cmp	r9, #0	@ tmp9986,
	ldrb	r0, [r6, #2799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp9987, tmp9986
	rsb	sl, r2, lr	@ tmp9993, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp9987,
	movle	r1, ip	@, MisCnt.3661, MisCnt.3653
	addgt	r1, ip, #1	@,, MisCnt.3661, MisCnt.3653
	cmp	sl, #0	@ tmp9993,
	rsb	r9, r3, r0	@ tmp10000, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp9994, tmp9993
	cmp	sl, #2	@ tmp9994,
	movle	ip, r1	@, MisCnt.3669, MisCnt.3661
	addgt	ip, r1, #1	@,, MisCnt.3669, MisCnt.3661
	cmp	r9, #0	@ tmp10000,
	rsblt	r9, r9, #0	@ tmp10001, tmp10000
	cmp	r9, #2	@ tmp10001,
	movle	r0, ip	@, tmp10004, MisCnt.3669
	addgt	r0, ip, #1	@,, tmp10004, MisCnt.3669
	cmp	r0, #2	@ tmp10004,
	bgt	.L57	@,
	ldr	r2, [r7, #2800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2804]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2808]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10022, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10022,
	ldrb	r9, [r7, #2814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10015, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10023, tmp10022
	cmp	lr, #0	@ tmp10015,
	rsb	r0, r2, r9	@ tmp10029, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10016, tmp10015
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10023,
	movle	r3, #0	@, tmp10025
	movgt	r3, #1	@, tmp10025
	ldrb	sl, [r7, #2815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10016,
	addgt	r3, r3, #1	@,, MisCnt.3695, tmp10025
	cmp	r0, #0	@ tmp10029,
	ldrb	r1, [r7, #2816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10036, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10030, tmp10029
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10030,
	addgt	r3, r3, #1	@,, MisCnt.3703, MisCnt.3695
	cmp	sl, #0	@ tmp10036,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp10043, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10037, tmp10036
	ldrb	ip, [r7, #2817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10037,
	addgt	r3, r3, #1	@,, MisCnt.3711, MisCnt.3703
	cmp	r2, #0	@ tmp10043,
	ldrb	lr, [r7, #2818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp10050, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10044, tmp10043
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10044,
	addgt	r3, r3, #1	@,, MisCnt.3719, MisCnt.3711
	cmp	r9, #0	@ tmp10050,
	ldrb	r0, [r7, #2819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10057, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10051, tmp10050
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp10051,
	addgt	r3, r3, #1	@,, MisCnt.3727, MisCnt.3719
	cmp	r1, #0	@ tmp10057,
	rsb	sl, r2, r0	@ tmp10064, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10058, tmp10057
	cmp	r1, #2	@ tmp10058,
	addgt	r3, r3, #1	@,, MisCnt.3735, MisCnt.3727
	cmp	sl, #0	@ tmp10064,
	rsblt	sl, sl, #0	@ tmp10065, tmp10064
	cmp	sl, #2	@ tmp10065,
	addgt	r3, r3, #1	@,, tmp10068, MisCnt.3735
	cmp	r3, #2	@ tmp10068,
	bgt	.L57	@,
	ldr	r2, [r7, #2820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #2824]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2828]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp10086, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10086,
	ldrb	sl, [r7, #2834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10079, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10087, tmp10086
	cmp	lr, #0	@ tmp10079,
	rsb	r0, r2, sl	@ tmp10093, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10080, tmp10079
	ldrb	r9, [r7, #2835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp10087,
	movle	r3, #0	@, tmp10089
	movgt	r3, #1	@, tmp10089
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp10080,
	addgt	r3, r3, #1	@,, MisCnt.3761, tmp10089
	cmp	r0, #0	@ tmp10093,
	ldrb	r1, [r7, #2836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp10100, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10094, tmp10093
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10094,
	addgt	r3, r3, #1	@,, MisCnt.3769, MisCnt.3761
	cmp	sl, #0	@ tmp10100,
	ldrb	r9, [r7, #2837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp10107, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10101, tmp10100
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp10101,
	addgt	r3, r3, #1	@,, MisCnt.3777, MisCnt.3769
	cmp	r2, #0	@ tmp10107,
	ldrb	lr, [r7, #2838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp10114, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10108, tmp10107
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10108,
	addgt	r3, r3, #1	@,, MisCnt.3785, MisCnt.3777
	cmp	ip, #0	@ tmp10114,
	ldrb	r0, [r7, #2839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10121, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10115, tmp10114
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10115,
	addgt	r3, r3, #1	@,, MisCnt.3793, MisCnt.3785
	cmp	r1, #0	@ tmp10121,
	rsb	sl, r9, r0	@ tmp10128, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10122, tmp10121
	cmp	r1, #2	@ tmp10122,
	addgt	r3, r3, #1	@,, MisCnt.3801, MisCnt.3793
	cmp	sl, #0	@ tmp10128,
	rsblt	sl, sl, #0	@ tmp10129, tmp10128
	cmp	sl, #2	@ tmp10129,
	addgt	r3, r3, #1	@,, tmp10132, MisCnt.3801
	cmp	r3, #2	@ tmp10132,
	bgt	.L57	@,
	ldr	r2, [r7, #2840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2844]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2848]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10150, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10150,
	ldrb	r9, [r7, #2854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10143, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10151, tmp10150
	cmp	lr, #0	@ tmp10143,
	rsb	r0, r2, r9	@ tmp10157, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10144, tmp10143
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10151,
	movle	r3, #0	@, tmp10153
	movgt	r3, #1	@, tmp10153
	ldrb	sl, [r7, #2855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10144,
	addgt	r3, r3, #1	@,, MisCnt.3827, tmp10153
	cmp	r0, #0	@ tmp10157,
	ldrb	r1, [r7, #2856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10164, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10158, tmp10157
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10158,
	addgt	r3, r3, #1	@,, MisCnt.3835, MisCnt.3827
	cmp	sl, #0	@ tmp10164,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp10171, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10165, tmp10164
	ldrb	ip, [r7, #2857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10165,
	addgt	r3, r3, #1	@,, MisCnt.3843, MisCnt.3835
	cmp	r2, #0	@ tmp10171,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp10178, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10172, tmp10171
	ldrb	lr, [r7, #2858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp10172,
	addgt	r3, r3, #1	@,, MisCnt.3851, MisCnt.3843
	cmp	ip, #0	@ tmp10178,
	ldrb	r0, [r7, #2859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp10185, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10179, tmp10178
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10179,
	addgt	r3, r3, #1	@,, MisCnt.3859, MisCnt.3851
	cmp	r1, #0	@ tmp10185,
	rsb	r9, sl, r0	@ tmp10192, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10186, tmp10185
	cmp	r1, #2	@ tmp10186,
	addgt	r3, r3, #1	@,, MisCnt.3867, MisCnt.3859
	cmp	r9, #0	@ tmp10192,
	rsblt	r9, r9, #0	@ tmp10193, tmp10192
	cmp	r9, #2	@ tmp10193,
	addgt	r3, r3, #1	@,, tmp10196, MisCnt.3867
	cmp	r3, #2	@ tmp10196,
	bgt	.L57	@,
	ldr	r3, [r7, #2860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2864]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #2873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #2872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp10214, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10214,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp10207, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10215, tmp10214
	cmp	sl, #0	@ tmp10207,
	rsb	r0, r2, r0	@ tmp10221, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10208, tmp10207
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10215,
	movle	r3, #0	@, tmp10217
	movgt	r3, #1	@, tmp10217
	ldrb	r9, [r7, #2875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10208,
	addgt	r3, r3, #1	@,, MisCnt.1392, tmp10217
	cmp	r0, #0	@ tmp10221,
	ldrb	r1, [r7, #2876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp10228, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10222, tmp10221
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10222,
	addgt	r3, r3, #1	@,, MisCnt.1403, MisCnt.1392
	cmp	r9, #0	@ tmp10228,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10235, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10229, tmp10228
	ldrb	ip, [r7, #2877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp10229,
	addgt	r3, r3, #1	@,, MisCnt.1414, MisCnt.1403
	cmp	r2, #0	@ tmp10235,
	ldrb	sl, [r7, #2878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10242, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10236, tmp10235
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10236,
	addgt	r3, r3, #1	@,, MisCnt.1423, MisCnt.1414
	cmp	ip, #0	@ tmp10242,
	ldrb	r0, [r7, #2879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10243, tmp10242
	rsb	r1, r1, sl	@ tmp10249, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10243,
	addgt	r3, r3, #1	@,, MisCnt.1432, MisCnt.1423
	cmp	r1, #0	@ tmp10249,
	rsb	ip, r2, r0	@ tmp10256, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10250, tmp10249
	cmp	r1, #2	@ tmp10250,
	addgt	r3, r3, #1	@,, MisCnt.1442, MisCnt.1432
	cmp	ip, #0	@ tmp10256,
	rsblt	ip, ip, #0	@ tmp10257, tmp10256
	cmp	ip, #2	@ tmp10257,
	addgt	r3, r3, #1	@,, tmp10260, MisCnt.1442
	cmp	r3, #2	@ tmp10260,
	movle	r0, #32	@ Result,
	ble	.L18	@,
.L57:
	ldr	ip, [r6, #2880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #2884]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2888]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp10261,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp10261,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #2893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp10278, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp10278,
	ldrb	r9, [r6, #2894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp10271, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp10279, tmp10278
	cmp	lr, #0	@ tmp10271,
	rsblt	lr, lr, #0	@ tmp10272, tmp10271
	ldrb	r0, [r6, #2895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10279,
	movle	r1, #0	@, tmp10281
	movgt	r1, #1	@, tmp10281
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp10285, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10272,
	addgt	r1, r1, #1	@,, MisCnt.3893, tmp10281
	cmp	sl, #0	@ tmp10285,
	rsb	r9, r3, r0	@ tmp10292, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp10286, tmp10285
	ldrb	ip, [r6, #2896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10286,
	movle	sl, r1	@, MisCnt.3901, MisCnt.3893
	addgt	sl, r1, #1	@,, MisCnt.3901, MisCnt.3893
	cmp	r9, #0	@ tmp10292,
	ldrb	r0, [r6, #2897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp10299, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10293, tmp10292
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp10293,
	movle	r3, sl	@, MisCnt.3909, MisCnt.3901
	addgt	r3, sl, #1	@,, MisCnt.3909, MisCnt.3901
	cmp	ip, #0	@ tmp10299,
	ldrb	lr, [r6, #2898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp10306, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10300, tmp10299
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10300,
	movle	ip, r3	@, MisCnt.3917, MisCnt.3909
	addgt	ip, r3, #1	@,, MisCnt.3917, MisCnt.3909
	cmp	r9, #0	@ tmp10306,
	ldrb	r0, [r6, #2899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10307, tmp10306
	rsb	sl, r2, lr	@ tmp10313, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp10307,
	movle	r1, ip	@, MisCnt.3925, MisCnt.3917
	addgt	r1, ip, #1	@,, MisCnt.3925, MisCnt.3917
	cmp	sl, #0	@ tmp10313,
	rsb	r9, r3, r0	@ tmp10320, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10314, tmp10313
	cmp	sl, #2	@ tmp10314,
	movle	ip, r1	@, MisCnt.3933, MisCnt.3925
	addgt	ip, r1, #1	@,, MisCnt.3933, MisCnt.3925
	cmp	r9, #0	@ tmp10320,
	rsblt	r9, r9, #0	@ tmp10321, tmp10320
	cmp	r9, #2	@ tmp10321,
	movle	r0, ip	@, tmp10324, MisCnt.3933
	addgt	r0, ip, #1	@,, tmp10324, MisCnt.3933
	cmp	r0, #2	@ tmp10324,
	bgt	.L58	@,
	ldr	r2, [r7, #2900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2904]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2908]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10342, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10342,
	ldrb	r9, [r7, #2914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10335, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10343, tmp10342
	cmp	lr, #0	@ tmp10335,
	rsb	r0, r2, r9	@ tmp10349, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10336, tmp10335
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10343,
	movle	r3, #0	@, tmp10345
	movgt	r3, #1	@, tmp10345
	ldrb	sl, [r7, #2915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10336,
	addgt	r3, r3, #1	@,, MisCnt.3959, tmp10345
	cmp	r0, #0	@ tmp10349,
	ldrb	r1, [r7, #2916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10356, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10350, tmp10349
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10350,
	addgt	r3, r3, #1	@,, MisCnt.3967, MisCnt.3959
	cmp	sl, #0	@ tmp10356,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp10363, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10357, tmp10356
	ldrb	ip, [r7, #2917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10357,
	addgt	r3, r3, #1	@,, MisCnt.3975, MisCnt.3967
	cmp	r2, #0	@ tmp10363,
	ldrb	lr, [r7, #2918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp10370, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10364, tmp10363
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10364,
	addgt	r3, r3, #1	@,, MisCnt.3983, MisCnt.3975
	cmp	r9, #0	@ tmp10370,
	ldrb	r0, [r7, #2919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10377, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10371, tmp10370
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp10371,
	addgt	r3, r3, #1	@,, MisCnt.3991, MisCnt.3983
	cmp	r1, #0	@ tmp10377,
	rsb	sl, r2, r0	@ tmp10384, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10378, tmp10377
	cmp	r1, #2	@ tmp10378,
	addgt	r3, r3, #1	@,, MisCnt.3999, MisCnt.3991
	cmp	sl, #0	@ tmp10384,
	rsblt	sl, sl, #0	@ tmp10385, tmp10384
	cmp	sl, #2	@ tmp10385,
	addgt	r3, r3, #1	@,, tmp10388, MisCnt.3999
	cmp	r3, #2	@ tmp10388,
	bgt	.L58	@,
	ldr	r2, [r7, #2920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #2924]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2928]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp10406, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10406,
	ldrb	sl, [r7, #2934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10399, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10407, tmp10406
	cmp	lr, #0	@ tmp10399,
	rsb	r0, r2, sl	@ tmp10413, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10400, tmp10399
	ldrb	r9, [r7, #2935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp10407,
	movle	r3, #0	@, tmp10409
	movgt	r3, #1	@, tmp10409
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp10400,
	addgt	r3, r3, #1	@,, MisCnt.4025, tmp10409
	cmp	r0, #0	@ tmp10413,
	ldrb	r1, [r7, #2936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp10420, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10414, tmp10413
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10414,
	addgt	r3, r3, #1	@,, MisCnt.4033, MisCnt.4025
	cmp	sl, #0	@ tmp10420,
	ldrb	r9, [r7, #2937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp10427, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10421, tmp10420
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp10421,
	addgt	r3, r3, #1	@,, MisCnt.4041, MisCnt.4033
	cmp	r2, #0	@ tmp10427,
	ldrb	lr, [r7, #2938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp10434, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10428, tmp10427
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10428,
	addgt	r3, r3, #1	@,, MisCnt.4049, MisCnt.4041
	cmp	ip, #0	@ tmp10434,
	ldrb	r0, [r7, #2939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10441, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10435, tmp10434
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10435,
	addgt	r3, r3, #1	@,, MisCnt.4057, MisCnt.4049
	cmp	r1, #0	@ tmp10441,
	rsb	sl, r9, r0	@ tmp10448, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10442, tmp10441
	cmp	r1, #2	@ tmp10442,
	addgt	r3, r3, #1	@,, MisCnt.4065, MisCnt.4057
	cmp	sl, #0	@ tmp10448,
	rsblt	sl, sl, #0	@ tmp10449, tmp10448
	cmp	sl, #2	@ tmp10449,
	addgt	r3, r3, #1	@,, tmp10452, MisCnt.4065
	cmp	r3, #2	@ tmp10452,
	bgt	.L58	@,
	ldr	r2, [r7, #2940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2944]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2948]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10470, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10470,
	ldrb	r9, [r7, #2954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp10463, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp10471, tmp10470
	cmp	lr, #0	@ tmp10463,
	rsb	r0, r2, r9	@ tmp10477, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10464, tmp10463
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10471,
	movle	r3, #0	@, tmp10473
	movgt	r3, #1	@, tmp10473
	ldrb	sl, [r7, #2955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10464,
	addgt	r3, r3, #1	@,, MisCnt.4091, tmp10473
	cmp	r0, #0	@ tmp10477,
	ldrb	r1, [r7, #2956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10484, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10478, tmp10477
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10478,
	addgt	r3, r3, #1	@,, MisCnt.4099, MisCnt.4091
	cmp	sl, #0	@ tmp10484,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp10491, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10485, tmp10484
	ldrb	ip, [r7, #2957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10485,
	addgt	r3, r3, #1	@,, MisCnt.4107, MisCnt.4099
	cmp	r2, #0	@ tmp10491,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp10498, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10492, tmp10491
	ldrb	lr, [r7, #2958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp10492,
	addgt	r3, r3, #1	@,, MisCnt.4115, MisCnt.4107
	cmp	ip, #0	@ tmp10498,
	ldrb	r0, [r7, #2959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp10505, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10499, tmp10498
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10499,
	addgt	r3, r3, #1	@,, MisCnt.4123, MisCnt.4115
	cmp	r1, #0	@ tmp10505,
	rsb	r9, sl, r0	@ tmp10512, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10506, tmp10505
	cmp	r1, #2	@ tmp10506,
	addgt	r3, r3, #1	@,, MisCnt.4131, MisCnt.4123
	cmp	r9, #0	@ tmp10512,
	rsblt	r9, r9, #0	@ tmp10513, tmp10512
	cmp	r9, #2	@ tmp10513,
	addgt	r3, r3, #1	@,, tmp10516, MisCnt.4131
	cmp	r3, #2	@ tmp10516,
	bgt	.L58	@,
	ldr	r3, [r7, #2960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2964]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2968]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #2973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #2972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp10534, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10534,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp10527, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10535, tmp10534
	cmp	sl, #0	@ tmp10527,
	rsb	r0, r2, r0	@ tmp10541, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10528, tmp10527
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10535,
	movle	r3, #0	@, tmp10537
	movgt	r3, #1	@, tmp10537
	ldrb	r9, [r7, #2975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10528,
	addgt	r3, r3, #1	@,, MisCnt.1460, tmp10537
	cmp	r0, #0	@ tmp10541,
	ldrb	r1, [r7, #2976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp10548, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10542, tmp10541
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10542,
	addgt	r3, r3, #1	@,, MisCnt.1468, MisCnt.1460
	cmp	r9, #0	@ tmp10548,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10555, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10549, tmp10548
	ldrb	ip, [r7, #2977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp10549,
	addgt	r3, r3, #1	@,, MisCnt.1476, MisCnt.1468
	cmp	r2, #0	@ tmp10555,
	ldrb	sl, [r7, #2978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10562, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10556, tmp10555
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10556,
	addgt	r3, r3, #1	@,, MisCnt.1484, MisCnt.1476
	cmp	ip, #0	@ tmp10562,
	ldrb	r0, [r7, #2979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10563, tmp10562
	rsb	r1, r1, sl	@ tmp10569, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10563,
	addgt	r3, r3, #1	@,, MisCnt.1495, MisCnt.1484
	cmp	r1, #0	@ tmp10569,
	rsb	ip, r2, r0	@ tmp10576, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10570, tmp10569
	cmp	r1, #2	@ tmp10570,
	addgt	r3, r3, #1	@,, MisCnt.1506, MisCnt.1495
	cmp	ip, #0	@ tmp10576,
	rsblt	ip, ip, #0	@ tmp10577, tmp10576
	cmp	ip, #2	@ tmp10577,
	addgt	r3, r3, #1	@,, tmp10580, MisCnt.1506
	cmp	r3, #2	@ tmp10580,
	movle	r0, #33	@ Result,
	ble	.L18	@,
.L58:
	ldr	r3, [r6, #2980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #2984]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2988]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp10581,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp10581,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #2993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #2992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10598, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10598,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp10591, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10599, tmp10598
	cmp	lr, #0	@ tmp10591,
	rsb	r0, r2, r0	@ tmp10605, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10592, tmp10591
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10599,
	movle	r9, #0	@, tmp10601
	movgt	r9, #1	@, tmp10601
	ldrb	sl, [r6, #2995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10592,
	addgt	r9, r9, #1	@,, MisCnt.4157, tmp10601
	cmp	r0, #0	@ tmp10605,
	ldrb	r1, [r6, #2996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10612, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10606, tmp10605
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10606,
	addgt	r9, r9, #1	@,, MisCnt.4165, MisCnt.4157
	cmp	sl, #0	@ tmp10612,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10619, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10613, tmp10612
	ldrb	ip, [r6, #2997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10613,
	addgt	r9, r9, #1	@,, MisCnt.4173, MisCnt.4165
	cmp	r2, #0	@ tmp10619,
	ldrb	lr, [r6, #2998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10626, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10620, tmp10619
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10620,
	addgt	r9, r9, #1	@,, MisCnt.4181, MisCnt.4173
	cmp	ip, #0	@ tmp10626,
	ldrb	r0, [r6, #2999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10627, tmp10626
	rsb	r1, r1, lr	@ tmp10633, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10627,
	addgt	r9, r9, #1	@,, MisCnt.4189, MisCnt.4181
	cmp	r1, #0	@ tmp10633,
	rsb	ip, sl, r0	@ tmp10640, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10634, tmp10633
	cmp	r1, #2	@ tmp10634,
	addgt	r9, r9, #1	@,, MisCnt.4197, MisCnt.4189
	cmp	ip, #0	@ tmp10640,
	rsblt	ip, ip, #0	@ tmp10641, tmp10640
	cmp	ip, #2	@ tmp10641,
	addgt	r9, r9, #1	@,, tmp10644, MisCnt.4197
	cmp	r9, #2	@ tmp10644,
	bgt	.L59	@,
	ldr	r3, [r7, #3000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3004]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3008]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #3013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #3012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10662, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10662,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp10655, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10663, tmp10662
	cmp	lr, #0	@ tmp10655,
	rsb	r0, r2, r0	@ tmp10669, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10656, tmp10655
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10663,
	movle	r9, #0	@, tmp10665
	movgt	r9, #1	@, tmp10665
	ldrb	sl, [r7, #3015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10656,
	addgt	r9, r9, #1	@,, MisCnt.4223, tmp10665
	cmp	r0, #0	@ tmp10669,
	ldrb	r1, [r7, #3016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10676, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10670, tmp10669
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10670,
	addgt	r9, r9, #1	@,, MisCnt.4231, MisCnt.4223
	cmp	sl, #0	@ tmp10676,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10683, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10677, tmp10676
	ldrb	ip, [r7, #3017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10677,
	addgt	r9, r9, #1	@,, MisCnt.4239, MisCnt.4231
	cmp	r2, #0	@ tmp10683,
	ldrb	lr, [r7, #3018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10690, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10684, tmp10683
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10684,
	addgt	r9, r9, #1	@,, MisCnt.4247, MisCnt.4239
	cmp	ip, #0	@ tmp10690,
	ldrb	r0, [r7, #3019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10697, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10691, tmp10690
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10691,
	addgt	r9, r9, #1	@,, MisCnt.4255, MisCnt.4247
	cmp	r1, #0	@ tmp10697,
	rsb	sl, r2, r0	@ tmp10704, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10698, tmp10697
	cmp	r1, #2	@ tmp10698,
	addgt	r9, r9, #1	@,, MisCnt.4263, MisCnt.4255
	cmp	sl, #0	@ tmp10704,
	rsblt	sl, sl, #0	@ tmp10705, tmp10704
	cmp	sl, #2	@ tmp10705,
	addgt	r9, r9, #1	@,, tmp10708, MisCnt.4263
	cmp	r9, #2	@ tmp10708,
	bgt	.L59	@,
	ldr	r3, [r7, #3020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3024]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3028]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #3033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #3032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10726, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10726,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp10719, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10727, tmp10726
	cmp	lr, #0	@ tmp10719,
	rsb	r0, r2, r0	@ tmp10733, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10720, tmp10719
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10727,
	movle	r9, #0	@, tmp10729
	movgt	r9, #1	@, tmp10729
	ldrb	sl, [r7, #3035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10720,
	addgt	r9, r9, #1	@,, MisCnt.4289, tmp10729
	cmp	r0, #0	@ tmp10733,
	ldrb	r1, [r7, #3036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10740, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10734, tmp10733
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10734,
	addgt	r9, r9, #1	@,, MisCnt.4297, MisCnt.4289
	cmp	sl, #0	@ tmp10740,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10747, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10741, tmp10740
	ldrb	ip, [r7, #3037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10741,
	addgt	r9, r9, #1	@,, MisCnt.4305, MisCnt.4297
	cmp	r2, #0	@ tmp10747,
	ldrb	lr, [r7, #3038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10754, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10748, tmp10747
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10748,
	addgt	r9, r9, #1	@,, MisCnt.4313, MisCnt.4305
	cmp	ip, #0	@ tmp10754,
	ldrb	r0, [r7, #3039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10761, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10755, tmp10754
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10755,
	addgt	r9, r9, #1	@,, MisCnt.4321, MisCnt.4313
	cmp	r1, #0	@ tmp10761,
	rsb	sl, r2, r0	@ tmp10768, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10762, tmp10761
	cmp	r1, #2	@ tmp10762,
	addgt	r9, r9, #1	@,, MisCnt.4329, MisCnt.4321
	cmp	sl, #0	@ tmp10768,
	rsblt	sl, sl, #0	@ tmp10769, tmp10768
	cmp	sl, #2	@ tmp10769,
	addgt	r9, r9, #1	@,, tmp10772, MisCnt.4329
	cmp	r9, #2	@ tmp10772,
	bgt	.L59	@,
	ldr	r3, [r7, #3040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3044]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3048]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #3053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #3052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp10790, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10790,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp10783, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10791, tmp10790
	cmp	lr, #0	@ tmp10783,
	rsb	r0, r2, r0	@ tmp10797, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp10784, tmp10783
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10791,
	movle	r9, #0	@, tmp10793
	movgt	r9, #1	@, tmp10793
	ldrb	sl, [r7, #3055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp10784,
	addgt	r9, r9, #1	@,, MisCnt.4355, tmp10793
	cmp	r0, #0	@ tmp10797,
	ldrb	r1, [r7, #3056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10804, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10798, tmp10797
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10798,
	addgt	r9, r9, #1	@,, MisCnt.4363, MisCnt.4355
	cmp	sl, #0	@ tmp10804,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10811, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10805, tmp10804
	ldrb	ip, [r7, #3057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10805,
	addgt	r9, r9, #1	@,, MisCnt.4371, MisCnt.4363
	cmp	r2, #0	@ tmp10811,
	ldrb	lr, [r7, #3058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10818, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10812, tmp10811
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10812,
	addgt	r9, r9, #1	@,, MisCnt.4379, MisCnt.4371
	cmp	ip, #0	@ tmp10818,
	ldrb	r0, [r7, #3059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp10825, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10819, tmp10818
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10819,
	addgt	r9, r9, #1	@,, MisCnt.4387, MisCnt.4379
	cmp	r1, #0	@ tmp10825,
	rsb	sl, r2, r0	@ tmp10832, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10826, tmp10825
	cmp	r1, #2	@ tmp10826,
	addgt	r9, r9, #1	@,, MisCnt.4395, MisCnt.4387
	cmp	sl, #0	@ tmp10832,
	rsblt	sl, sl, #0	@ tmp10833, tmp10832
	cmp	sl, #2	@ tmp10833,
	addgt	r9, r9, #1	@,, tmp10836, MisCnt.4395
	cmp	r9, #2	@ tmp10836,
	bgt	.L59	@,
	ldr	r3, [r7, #3060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3064]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3068]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #3073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #3072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp10854, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10854,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp10847, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10855, tmp10854
	cmp	sl, #0	@ tmp10847,
	rsb	r0, r2, r0	@ tmp10861, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10848, tmp10847
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10855,
	movle	r3, #0	@, tmp10857
	movgt	r3, #1	@, tmp10857
	ldrb	r9, [r7, #3075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10848,
	addgt	r3, r3, #1	@,, MisCnt.1524, tmp10857
	cmp	r0, #0	@ tmp10861,
	ldrb	r1, [r7, #3076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp10868, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10862, tmp10861
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10862,
	addgt	r3, r3, #1	@,, MisCnt.1532, MisCnt.1524
	cmp	r9, #0	@ tmp10868,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10875, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10869, tmp10868
	ldrb	ip, [r7, #3077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp10869,
	addgt	r3, r3, #1	@,, MisCnt.1542, MisCnt.1532
	cmp	r2, #0	@ tmp10875,
	ldrb	sl, [r7, #3078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10882, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10876, tmp10875
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10876,
	addgt	r3, r3, #1	@,, MisCnt.1553, MisCnt.1542
	cmp	ip, #0	@ tmp10882,
	ldrb	r0, [r7, #3079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10883, tmp10882
	rsb	r1, r1, sl	@ tmp10889, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10883,
	addgt	r3, r3, #1	@,, MisCnt.1564, MisCnt.1553
	cmp	r1, #0	@ tmp10889,
	rsb	ip, r2, r0	@ tmp10896, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10890, tmp10889
	cmp	r1, #2	@ tmp10890,
	addgt	r3, r3, #1	@,, MisCnt.1573, MisCnt.1564
	cmp	ip, #0	@ tmp10896,
	rsblt	ip, ip, #0	@ tmp10897, tmp10896
	cmp	ip, #2	@ tmp10897,
	addgt	r3, r3, #1	@,, tmp10900, MisCnt.1573
	cmp	r3, #2	@ tmp10900,
	movle	r0, #34	@ Result,
	ble	.L18	@,
.L59:
	ldr	r3, [r6, #3080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #3084]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #3088]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp10901,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp10901,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r6, #3093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #3092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp10918, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10918,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp10911, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #3094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10919, tmp10918
	cmp	sl, #0	@ tmp10911,
	rsb	r0, r2, r0	@ tmp10925, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10912, tmp10911
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10919,
	movle	r3, #0	@, tmp10921
	movgt	r3, #1	@, tmp10921
	ldrb	r9, [r6, #3095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10912,
	addgt	r3, r3, #1	@,, MisCnt.4421, tmp10921
	cmp	r0, #0	@ tmp10925,
	ldrb	r1, [r6, #3096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp10932, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10926, tmp10925
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10926,
	addgt	r3, r3, #1	@,, MisCnt.4429, MisCnt.4421
	cmp	r9, #0	@ tmp10932,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp10939, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp10933, tmp10932
	ldrb	ip, [r6, #3097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp10933,
	addgt	r3, r3, #1	@,, MisCnt.4437, MisCnt.4429
	cmp	r2, #0	@ tmp10939,
	ldrb	sl, [r6, #3098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp10946, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp10940, tmp10939
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp10940,
	addgt	r3, r3, #1	@,, MisCnt.4445, MisCnt.4437
	cmp	ip, #0	@ tmp10946,
	ldrb	r0, [r6, #3099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp10947, tmp10946
	rsb	r1, r1, sl	@ tmp10953, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp10947,
	addgt	r3, r3, #1	@,, MisCnt.4453, MisCnt.4445
	cmp	r1, #0	@ tmp10953,
	rsb	ip, r2, r0	@ tmp10960, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp10954, tmp10953
	cmp	r1, #2	@ tmp10954,
	addgt	r3, r3, #1	@,, MisCnt.4461, MisCnt.4453
	cmp	ip, #0	@ tmp10960,
	rsblt	ip, ip, #0	@ tmp10961, tmp10960
	cmp	ip, #2	@ tmp10961,
	addgt	r3, r3, #1	@,, tmp10964, MisCnt.4461
	cmp	r3, #2	@ tmp10964,
	bgt	.L50	@,
	ldr	r3, [r7, #3100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3108]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #3113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #3112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp10982, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp10982,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp10975, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp10983, tmp10982
	cmp	r6, #0	@ tmp10975,
	rsb	r0, r2, r0	@ tmp10989, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp10976, tmp10975
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp10983,
	movle	r3, #0	@, tmp10985
	movgt	r3, #1	@, tmp10985
	ldrb	sl, [r7, #3115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp10976,
	addgt	r3, r3, #1	@,, MisCnt.4487, tmp10985
	cmp	r0, #0	@ tmp10989,
	ldrb	r1, [r7, #3116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp10996, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp10990, tmp10989
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp10990,
	addgt	r3, r3, #1	@,, MisCnt.4495, MisCnt.4487
	cmp	sl, #0	@ tmp10996,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11003, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp10997, tmp10996
	ldrb	ip, [r7, #3117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp10997,
	addgt	r3, r3, #1	@,, MisCnt.4503, MisCnt.4495
	cmp	r2, #0	@ tmp11003,
	ldrb	r6, [r7, #3118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11010, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11004, tmp11003
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11004,
	addgt	r3, r3, #1	@,, MisCnt.4511, MisCnt.4503
	cmp	ip, #0	@ tmp11010,
	ldrb	r0, [r7, #3119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11011, tmp11010
	rsb	r1, r1, r6	@ tmp11017, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11011,
	addgt	r3, r3, #1	@,, MisCnt.4519, MisCnt.4511
	cmp	r1, #0	@ tmp11017,
	rsb	ip, r2, r0	@ tmp11024, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11018, tmp11017
	cmp	r1, #2	@ tmp11018,
	addgt	r3, r3, #1	@,, MisCnt.4527, MisCnt.4519
	cmp	ip, #0	@ tmp11024,
	rsblt	ip, ip, #0	@ tmp11025, tmp11024
	cmp	ip, #2	@ tmp11025,
	addgt	r3, r3, #1	@,, tmp11028, MisCnt.4527
	cmp	r3, #2	@ tmp11028,
	bgt	.L50	@,
	ldr	r3, [r7, #3120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3128]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #3133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #3132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp11046, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11046,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp11039, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11047, tmp11046
	cmp	r6, #0	@ tmp11039,
	rsb	r0, r2, r0	@ tmp11053, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11040, tmp11039
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11047,
	movle	r3, #0	@, tmp11049
	movgt	r3, #1	@, tmp11049
	ldrb	sl, [r7, #3135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11040,
	addgt	r3, r3, #1	@,, MisCnt.4553, tmp11049
	cmp	r0, #0	@ tmp11053,
	ldrb	r1, [r7, #3136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp11060, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11054, tmp11053
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11054,
	addgt	r3, r3, #1	@,, MisCnt.4561, MisCnt.4553
	cmp	sl, #0	@ tmp11060,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11067, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp11061, tmp11060
	ldrb	ip, [r7, #3137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11061,
	addgt	r3, r3, #1	@,, MisCnt.4569, MisCnt.4561
	cmp	r2, #0	@ tmp11067,
	ldrb	r6, [r7, #3138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11074, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11068, tmp11067
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11068,
	addgt	r3, r3, #1	@,, MisCnt.4577, MisCnt.4569
	cmp	ip, #0	@ tmp11074,
	ldrb	r0, [r7, #3139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11075, tmp11074
	rsb	r1, r1, r6	@ tmp11081, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11075,
	addgt	r3, r3, #1	@,, MisCnt.4585, MisCnt.4577
	cmp	r1, #0	@ tmp11081,
	rsb	ip, r2, r0	@ tmp11088, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11082, tmp11081
	cmp	r1, #2	@ tmp11082,
	addgt	r3, r3, #1	@,, MisCnt.4593, MisCnt.4585
	cmp	ip, #0	@ tmp11088,
	rsblt	ip, ip, #0	@ tmp11089, tmp11088
	cmp	ip, #2	@ tmp11089,
	addgt	r3, r3, #1	@,, tmp11092, MisCnt.4593
	cmp	r3, #2	@ tmp11092,
	bgt	.L50	@,
	ldr	r3, [r7, #3140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #3144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #3148]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #3153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #3152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp11110, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11110,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp11103, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11111, tmp11110
	cmp	r6, #0	@ tmp11103,
	rsb	r0, r2, r0	@ tmp11117, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11104, tmp11103
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11111,
	movle	r3, #0	@, tmp11113
	movgt	r3, #1	@, tmp11113
	ldrb	sl, [r7, #3155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11104,
	addgt	r3, r3, #1	@,, MisCnt.4619, tmp11113
	cmp	r0, #0	@ tmp11117,
	ldrb	r1, [r7, #3156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp11124, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11118, tmp11117
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11118,
	addgt	r3, r3, #1	@,, MisCnt.4627, MisCnt.4619
	cmp	sl, #0	@ tmp11124,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11131, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp11125, tmp11124
	ldrb	ip, [r7, #3157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp11125,
	addgt	r3, r3, #1	@,, MisCnt.4635, MisCnt.4627
	cmp	r2, #0	@ tmp11131,
	ldrb	r6, [r7, #3158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11138, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11132, tmp11131
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11132,
	addgt	r3, r3, #1	@,, MisCnt.4643, MisCnt.4635
	cmp	ip, #0	@ tmp11138,
	ldrb	r0, [r7, #3159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11139, tmp11138
	rsb	r1, r1, r6	@ tmp11145, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11139,
	addgt	r3, r3, #1	@,, MisCnt.4651, MisCnt.4643
	cmp	r1, #0	@ tmp11145,
	rsb	ip, r2, r0	@ tmp11152, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11146, tmp11145
	cmp	r1, #2	@ tmp11146,
	addgt	r3, r3, #1	@,, MisCnt.4659, MisCnt.4651
	cmp	ip, #0	@ tmp11152,
	rsblt	ip, ip, #0	@ tmp11153, tmp11152
	cmp	ip, #2	@ tmp11153,
	addgt	r3, r3, #1	@,, tmp11156, MisCnt.4659
	cmp	r3, #2	@ tmp11156,
	bgt	.L50	@,
	ldr	r3, [r7, #3160]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r7, #3164]	@ <variable>.Px, <variable>.Px
	mov	r0, sp	@,
	ldr	lr, [r7, #3168]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r5, [r7, #3173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r6, [r7, #3172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp11174, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp11174,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r6	@ tmp11167, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #3174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp11175, tmp11174
	cmp	r5, #0	@ tmp11167,
	rsb	r0, r2, r0	@ tmp11181, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp11168, tmp11167
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp11175,
	movle	r3, #0	@, tmp11177
	movgt	r3, #1	@, tmp11177
	ldrb	r6, [r7, #3175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp11168,
	addgt	r3, r3, #1	@,, MisCnt.1594, tmp11177
	cmp	r0, #0	@ tmp11181,
	ldrb	r1, [r7, #3176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp11188, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp11182, tmp11181
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp11182,
	addgt	r3, r3, #1	@,, MisCnt.1605, MisCnt.1594
	cmp	r6, #0	@ tmp11188,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp11195, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp11189, tmp11188
	ldrb	ip, [r7, #3177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp11189,
	addgt	r3, r3, #1	@,, MisCnt.1614, MisCnt.1605
	cmp	r2, #0	@ tmp11195,
	ldrb	r5, [r7, #3178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp11202, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp11196, tmp11195
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp11196,
	addgt	r3, r3, #1	@,, MisCnt.1625, MisCnt.1614
	cmp	ip, #0	@ tmp11202,
	ldrb	r0, [r7, #3179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp11203, tmp11202
	rsb	r1, r1, r5	@ tmp11209, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp11203,
	addgt	r3, r3, #1	@,, MisCnt.1636, MisCnt.1625
	cmp	r1, #0	@ tmp11209,
	rsb	ip, r2, r0	@ tmp11216, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp11210, tmp11209
	cmp	r1, #2	@ tmp11210,
	addgt	r3, r3, #1	@,, MisCnt.1646, MisCnt.1636
	cmp	ip, #0	@ tmp11216,
	rsblt	ip, ip, #0	@ tmp11217, tmp11216
	cmp	ip, #2	@ tmp11217,
	addgt	r3, r3, #1	@,, tmp11220, MisCnt.1646
	cmp	r3, #2	@ tmp11220,
	bgt	.L50	@,
	mov	r0, #35	@ Result,
	b	.L18	@
.L73:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ Result, <variable>.pPicBufY
	b	.L18	@
.L79:
	movw	r6, #:lower16:.LANCHOR0	@ tmp12189,
	movt	r6, #:upper16:.LANCHOR0	@ tmp12189,
	mov	r1, r5	@, pDetPara
	mov	r0, sp	@,
	ldr	r2, [r6, #1600]	@ <variable>.Comp, <variable>.Comp
	mov	r8, sp	@ tmp12190,
	ldr	r7, [r6, #1604]	@ <variable>.Px, <variable>.Px
	ldr	lr, [r6, #1608]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r7, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #1613]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1612]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r3, r1	@ tmp6310, SmpPat.Pix, <variable>.Pix
	cmp	ip, #0	@ tmp6310,
	ldrb	r7, [r6, #1614]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, sl, r9	@ tmp6303, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	ip, ip, #0	@ tmp6311, tmp6310
	cmp	lr, #0	@ tmp6303,
	rsb	sl, r2, r7	@ tmp6317, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6304, tmp6303
	ldrb	r0, [r6, #1615]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	ip, #2	@ tmp6311,
	movle	r1, #0	@, tmp6313
	movgt	r1, #1	@, tmp6313
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp6304,
	addgt	r1, r1, #1	@,, MisCnt.4685, tmp6313
	cmp	sl, #0	@ tmp6317,
	ldrb	ip, [r6, #1616]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r3, r3, r0	@ tmp6324, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6318, tmp6317
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6318,
	movle	r7, r1	@, MisCnt.4693, MisCnt.4685
	addgt	r7, r1, #1	@,, MisCnt.4693, MisCnt.4685
	cmp	r3, #0	@ tmp6324,
	ldrb	r0, [r6, #1617]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r9, ip	@ tmp6331, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6325, tmp6324
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6325,
	movle	r2, r7	@, MisCnt.4701, MisCnt.4693
	addgt	r2, r7, #1	@,, MisCnt.4701, MisCnt.4693
	cmp	sl, #0	@ tmp6331,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r7, r1, r0	@ tmp6338, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6332, tmp6331
	ldrb	lr, [r6, #1618]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6332,
	movle	ip, r2	@, MisCnt.4709, MisCnt.4701
	addgt	ip, r2, #1	@,, MisCnt.4709, MisCnt.4701
	cmp	r7, #0	@ tmp6338,
	ldrb	r0, [r6, #1619]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r9, lr	@ tmp6345, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp6339, tmp6338
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r7, #2	@ tmp6339,
	movle	r1, ip	@, MisCnt.4717, MisCnt.4709
	addgt	r1, ip, #1	@,, MisCnt.4717, MisCnt.4709
	cmp	r2, #0	@ tmp6345,
	rsb	r9, r3, r0	@ tmp6352, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6346, tmp6345
	cmp	r2, #2	@ tmp6346,
	movle	sl, r1	@, MisCnt.4725, MisCnt.4717
	addgt	sl, r1, #1	@,, MisCnt.4725, MisCnt.4717
	cmp	r9, #0	@ tmp6352,
	rsblt	r9, r9, #0	@ tmp6353, tmp6352
	cmp	r9, #2	@ tmp6353,
	movle	r7, sl	@, tmp6356, MisCnt.4725
	addgt	r7, sl, #1	@,, tmp6356, MisCnt.4725
	cmp	r7, #2	@ tmp6356,
	bgt	.L43	@,
	ldr	r7, [r6, #1620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1624]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1628]	@ <variable>.Py, <variable>.Py
	str	r7, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	mov	r7, r6	@ tmp6357, tmp12189
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp6374, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6374,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp6367, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6375, tmp6374
	cmp	lr, #0	@ tmp6367,
	rsb	r0, r2, r0	@ tmp6381, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6368, tmp6367
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6375,
	movle	r9, #0	@, tmp6377
	movgt	r9, #1	@, tmp6377
	ldrb	sl, [r6, #1635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6368,
	addgt	r9, r9, #1	@,, MisCnt.4751, tmp6377
	cmp	r0, #0	@ tmp6381,
	ldrb	r1, [r6, #1636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6388, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6382, tmp6381
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6382,
	addgt	r9, r9, #1	@,, MisCnt.4759, MisCnt.4751
	cmp	sl, #0	@ tmp6388,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6395, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6389, tmp6388
	ldrb	ip, [r6, #1637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6389,
	addgt	r9, r9, #1	@,, MisCnt.4767, MisCnt.4759
	cmp	r2, #0	@ tmp6395,
	ldrb	lr, [r6, #1638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6402, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6396, tmp6395
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6396,
	addgt	r9, r9, #1	@,, MisCnt.4775, MisCnt.4767
	cmp	ip, #0	@ tmp6402,
	ldrb	r0, [r6, #1639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6403, tmp6402
	rsb	sl, r1, lr	@ tmp6409, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6403,
	addgt	r9, r9, #1	@,, MisCnt.4783, MisCnt.4775
	cmp	sl, #0	@ tmp6409,
	rsb	ip, r2, r0	@ tmp6416, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6410, tmp6409
	cmp	sl, #2	@ tmp6410,
	addgt	r9, r9, #1	@,, MisCnt.4791, MisCnt.4783
	cmp	ip, #0	@ tmp6416,
	rsblt	ip, ip, #0	@ tmp6417, tmp6416
	cmp	ip, #2	@ tmp6417,
	addgt	r9, r9, #1	@,, tmp6420, MisCnt.4791
	cmp	r9, #2	@ tmp6420,
	bgt	.L43	@,
	ldr	r2, [r6, #1640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #1644]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1648]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp6438, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6438,
	ldrb	r9, [r6, #1654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6431, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6439, tmp6438
	cmp	lr, #0	@ tmp6431,
	rsb	r0, r2, r9	@ tmp6445, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6432, tmp6431
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6439,
	movle	r3, #0	@, tmp6441
	movgt	r3, #1	@, tmp6441
	ldrb	sl, [r6, #1655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6432,
	addgt	r3, r3, #1	@,, MisCnt.4817, tmp6441
	cmp	r0, #0	@ tmp6445,
	ldrb	r1, [r6, #1656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6452, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6446, tmp6445
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6446,
	addgt	r3, r3, #1	@,, MisCnt.4825, MisCnt.4817
	cmp	sl, #0	@ tmp6452,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp6459, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6453, tmp6452
	ldrb	ip, [r6, #1657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6453,
	addgt	r3, r3, #1	@,, MisCnt.4833, MisCnt.4825
	cmp	r2, #0	@ tmp6459,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp6466, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6460, tmp6459
	ldrb	lr, [r6, #1658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp6460,
	addgt	r3, r3, #1	@,, MisCnt.4841, MisCnt.4833
	cmp	ip, #0	@ tmp6466,
	ldrb	r0, [r6, #1659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp6473, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6467, tmp6466
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6467,
	addgt	r3, r3, #1	@,, MisCnt.4849, MisCnt.4841
	cmp	r1, #0	@ tmp6473,
	rsb	r9, sl, r0	@ tmp6480, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6474, tmp6473
	cmp	r1, #2	@ tmp6474,
	addgt	r3, r3, #1	@,, MisCnt.4857, MisCnt.4849
	cmp	r9, #0	@ tmp6480,
	rsblt	r9, r9, #0	@ tmp6481, tmp6480
	cmp	r9, #2	@ tmp6481,
	addgt	r3, r3, #1	@,, tmp6484, MisCnt.4857
	cmp	r3, #2	@ tmp6484,
	bgt	.L43	@,
	ldr	r2, [r6, #1660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r6, #1664]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1668]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp6502, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6502,
	ldrb	sl, [r6, #1674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp6495, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp6503, tmp6502
	cmp	lr, #0	@ tmp6495,
	rsb	r0, r2, sl	@ tmp6509, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6496, tmp6495
	ldrb	r9, [r6, #1675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp6503,
	movle	r3, #0	@, tmp6505
	movgt	r3, #1	@, tmp6505
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp6496,
	addgt	r3, r3, #1	@,, MisCnt.4883, tmp6505
	cmp	r0, #0	@ tmp6509,
	ldrb	r1, [r6, #1676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp6516, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6510, tmp6509
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6510,
	addgt	r3, r3, #1	@,, MisCnt.4891, MisCnt.4883
	cmp	sl, #0	@ tmp6516,
	ldrb	r9, [r6, #1677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp6523, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6517, tmp6516
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp6517,
	addgt	r3, r3, #1	@,, MisCnt.4899, MisCnt.4891
	cmp	r2, #0	@ tmp6523,
	ldrb	lr, [r6, #1678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp6530, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6524, tmp6523
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6524,
	addgt	r3, r3, #1	@,, MisCnt.4907, MisCnt.4899
	cmp	ip, #0	@ tmp6530,
	ldrb	r0, [r6, #1679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6537, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6531, tmp6530
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6531,
	addgt	r3, r3, #1	@,, MisCnt.4915, MisCnt.4907
	cmp	r1, #0	@ tmp6537,
	rsb	sl, r9, r0	@ tmp6544, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6538, tmp6537
	cmp	r1, #2	@ tmp6538,
	addgt	r3, r3, #1	@,, MisCnt.4923, MisCnt.4915
	cmp	sl, #0	@ tmp6544,
	rsblt	sl, sl, #0	@ tmp6545, tmp6544
	cmp	sl, #2	@ tmp6545,
	addgt	r3, r3, #1	@,, tmp6548, MisCnt.4923
	cmp	r3, #2	@ tmp6548,
	bgt	.L43	@,
	ldr	r3, [r6, #1680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1684]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1688]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r6, #1693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp6566, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6566,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp6559, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6567, tmp6566
	cmp	sl, #0	@ tmp6559,
	rsb	r0, r2, r0	@ tmp6573, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6560, tmp6559
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6567,
	movle	r3, #0	@, tmp6569
	movgt	r3, #1	@, tmp6569
	ldrb	r9, [r6, #1695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6560,
	addgt	r3, r3, #1	@,, MisCnt.1665, tmp6569
	cmp	r0, #0	@ tmp6573,
	ldrb	r1, [r6, #1696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp6580, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6574, tmp6573
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6574,
	addgt	r3, r3, #1	@,, MisCnt.1675, MisCnt.1665
	cmp	r9, #0	@ tmp6580,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6587, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6581, tmp6580
	ldrb	ip, [r6, #1697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp6581,
	addgt	r3, r3, #1	@,, MisCnt.1686, MisCnt.1675
	cmp	r2, #0	@ tmp6587,
	ldrb	sl, [r6, #1698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6594, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6588, tmp6587
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6588,
	addgt	r3, r3, #1	@,, MisCnt.1697, MisCnt.1686
	cmp	ip, #0	@ tmp6594,
	ldrb	r0, [r6, #1699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6595, tmp6594
	rsb	r1, r1, sl	@ tmp6601, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6595,
	addgt	r3, r3, #1	@,, MisCnt.1705, MisCnt.1697
	cmp	r1, #0	@ tmp6601,
	rsb	ip, r2, r0	@ tmp6608, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6602, tmp6601
	cmp	r1, #2	@ tmp6602,
	addgt	r3, r3, #1	@,, MisCnt.1716, MisCnt.1705
	cmp	ip, #0	@ tmp6608,
	rsblt	ip, ip, #0	@ tmp6609, tmp6608
	cmp	ip, #2	@ tmp6609,
	addgt	r3, r3, #1	@,, tmp6612, MisCnt.1716
	cmp	r3, #2	@ tmp6612,
	movle	r0, #22	@ Result,
	ble	.L18	@,
.L43:
	ldr	ip, [r6, #1700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #1704]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1708]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp6613,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp6613,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #1713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp6630, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp6630,
	ldrb	r9, [r6, #1714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6623, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp6631, tmp6630
	cmp	lr, #0	@ tmp6623,
	rsblt	lr, lr, #0	@ tmp6624, tmp6623
	ldrb	r0, [r6, #1715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6631,
	movle	r1, #0	@, tmp6633
	movgt	r1, #1	@, tmp6633
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp6637, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6624,
	addgt	r1, r1, #1	@,, MisCnt.4949, tmp6633
	cmp	sl, #0	@ tmp6637,
	rsb	r9, r3, r0	@ tmp6644, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp6638, tmp6637
	ldrb	ip, [r6, #1716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6638,
	movle	sl, r1	@, MisCnt.4957, MisCnt.4949
	addgt	sl, r1, #1	@,, MisCnt.4957, MisCnt.4949
	cmp	r9, #0	@ tmp6644,
	ldrb	r0, [r6, #1717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp6651, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6645, tmp6644
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp6645,
	movle	r3, sl	@, MisCnt.4965, MisCnt.4957
	addgt	r3, sl, #1	@,, MisCnt.4965, MisCnt.4957
	cmp	ip, #0	@ tmp6651,
	ldrb	lr, [r6, #1718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp6658, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6652, tmp6651
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6652,
	movle	ip, r3	@, MisCnt.4973, MisCnt.4965
	addgt	ip, r3, #1	@,, MisCnt.4973, MisCnt.4965
	cmp	r9, #0	@ tmp6658,
	ldrb	r0, [r6, #1719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6659, tmp6658
	rsb	sl, r2, lr	@ tmp6665, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp6659,
	movle	r1, ip	@, MisCnt.4981, MisCnt.4973
	addgt	r1, ip, #1	@,, MisCnt.4981, MisCnt.4973
	cmp	sl, #0	@ tmp6665,
	rsb	r9, r3, r0	@ tmp6672, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6666, tmp6665
	cmp	sl, #2	@ tmp6666,
	movle	ip, r1	@, MisCnt.4989, MisCnt.4981
	addgt	ip, r1, #1	@,, MisCnt.4989, MisCnt.4981
	cmp	r9, #0	@ tmp6672,
	rsblt	r9, r9, #0	@ tmp6673, tmp6672
	cmp	r9, #2	@ tmp6673,
	movle	r0, ip	@, tmp6676, MisCnt.4989
	addgt	r0, ip, #1	@,, tmp6676, MisCnt.4989
	cmp	r0, #2	@ tmp6676,
	bgt	.L44	@,
	ldr	ip, [r7, #1720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #1724]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1728]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r7, #1733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #1732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r9, r2, r1	@ tmp6694, SmpPat.Pix, <variable>.Pix
	cmp	r9, #0	@ tmp6694,
	ldrb	sl, [r7, #1734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6687, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r9, r9, #0	@ tmp6695, tmp6694
	cmp	lr, #0	@ tmp6687,
	rsblt	lr, lr, #0	@ tmp6688, tmp6687
	ldrb	r0, [r7, #1735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp6695,
	movle	r1, #0	@, tmp6697
	movgt	r1, #1	@, tmp6697
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r9, ip, sl	@ tmp6701, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6688,
	addgt	r1, r1, #1	@,, MisCnt.5015, tmp6697
	cmp	r9, #0	@ tmp6701,
	rsb	r3, r3, r0	@ tmp6708, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6702, tmp6701
	ldrb	ip, [r7, #1736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp6702,
	movle	sl, r1	@, MisCnt.5023, MisCnt.5015
	addgt	sl, r1, #1	@,, MisCnt.5023, MisCnt.5015
	cmp	r3, #0	@ tmp6708,
	ldrb	r0, [r7, #1737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r2, ip	@ tmp6715, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6709, tmp6708
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6709,
	movle	r3, sl	@, MisCnt.5031, MisCnt.5023
	addgt	r3, sl, #1	@,, MisCnt.5031, MisCnt.5023
	cmp	r9, #0	@ tmp6715,
	ldrb	lr, [r7, #1738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp6722, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6716, tmp6715
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp6716,
	movle	ip, r3	@, MisCnt.5039, MisCnt.5031
	addgt	ip, r3, #1	@,, MisCnt.5039, MisCnt.5031
	cmp	r1, #0	@ tmp6722,
	ldrb	sl, [r7, #1739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, lr	@ tmp6729, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6723, tmp6722
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp6723,
	movle	r1, ip	@, MisCnt.5047, MisCnt.5039
	addgt	r1, ip, #1	@,, MisCnt.5047, MisCnt.5039
	cmp	r2, #0	@ tmp6729,
	rsb	r3, r9, sl	@ tmp6736, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6730, tmp6729
	cmp	r2, #2	@ tmp6730,
	movle	r0, r1	@, MisCnt.5055, MisCnt.5047
	addgt	r0, r1, #1	@,, MisCnt.5055, MisCnt.5047
	cmp	r3, #0	@ tmp6736,
	rsblt	r3, r3, #0	@ tmp6737, tmp6736
	cmp	r3, #2	@ tmp6737,
	movle	sl, r0	@, tmp6740, MisCnt.5055
	addgt	sl, r0, #1	@,, tmp6740, MisCnt.5055
	cmp	sl, #2	@ tmp6740,
	bgt	.L44	@,
	ldr	r3, [r7, #1740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1744]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1748]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp6758, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6758,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp6751, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6759, tmp6758
	cmp	lr, #0	@ tmp6751,
	rsb	r0, r2, r0	@ tmp6765, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6752, tmp6751
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6759,
	movle	r9, #0	@, tmp6761
	movgt	r9, #1	@, tmp6761
	ldrb	sl, [r7, #1755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6752,
	addgt	r9, r9, #1	@,, MisCnt.5081, tmp6761
	cmp	r0, #0	@ tmp6765,
	ldrb	r1, [r7, #1756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6772, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6766, tmp6765
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6766,
	addgt	r9, r9, #1	@,, MisCnt.5089, MisCnt.5081
	cmp	sl, #0	@ tmp6772,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6779, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6773, tmp6772
	ldrb	ip, [r7, #1757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6773,
	addgt	r9, r9, #1	@,, MisCnt.5097, MisCnt.5089
	cmp	r2, #0	@ tmp6779,
	ldrb	lr, [r7, #1758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6786, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6780, tmp6779
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6780,
	addgt	r9, r9, #1	@,, MisCnt.5105, MisCnt.5097
	cmp	ip, #0	@ tmp6786,
	ldrb	r0, [r7, #1759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6793, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6787, tmp6786
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6787,
	addgt	r9, r9, #1	@,, MisCnt.5113, MisCnt.5105
	cmp	r1, #0	@ tmp6793,
	rsb	r2, sl, r0	@ tmp6800, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6794, tmp6793
	cmp	r1, #2	@ tmp6794,
	addgt	r9, r9, #1	@,, MisCnt.5121, MisCnt.5113
	cmp	r2, #0	@ tmp6800,
	rsblt	r2, r2, #0	@ tmp6801, tmp6800
	cmp	r2, #2	@ tmp6801,
	addgt	r9, r9, #1	@,, tmp6804, MisCnt.5121
	cmp	r9, #2	@ tmp6804,
	bgt	.L44	@,
	ldr	r3, [r7, #1760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1764]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp6822, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6822,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp6815, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6823, tmp6822
	cmp	lr, #0	@ tmp6815,
	rsb	r0, r2, r0	@ tmp6829, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp6816, tmp6815
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6823,
	movle	r9, #0	@, tmp6825
	movgt	r9, #1	@, tmp6825
	ldrb	sl, [r7, #1775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6816,
	addgt	r9, r9, #1	@,, MisCnt.5147, tmp6825
	cmp	r0, #0	@ tmp6829,
	ldrb	r1, [r7, #1776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6836, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6830, tmp6829
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6830,
	addgt	r9, r9, #1	@,, MisCnt.5155, MisCnt.5147
	cmp	sl, #0	@ tmp6836,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6843, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6837, tmp6836
	ldrb	ip, [r7, #1777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6837,
	addgt	r9, r9, #1	@,, MisCnt.5163, MisCnt.5155
	cmp	r2, #0	@ tmp6843,
	ldrb	lr, [r7, #1778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6850, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6844, tmp6843
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6844,
	addgt	r9, r9, #1	@,, MisCnt.5171, MisCnt.5163
	cmp	ip, #0	@ tmp6850,
	ldrb	r0, [r7, #1779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp6857, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6851, tmp6850
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6851,
	addgt	r9, r9, #1	@,, MisCnt.5179, MisCnt.5171
	cmp	r1, #0	@ tmp6857,
	rsb	sl, r2, r0	@ tmp6864, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6858, tmp6857
	cmp	r1, #2	@ tmp6858,
	addgt	r9, r9, #1	@,, MisCnt.5187, MisCnt.5179
	cmp	sl, #0	@ tmp6864,
	rsblt	sl, sl, #0	@ tmp6865, tmp6864
	cmp	sl, #2	@ tmp6865,
	addgt	r9, r9, #1	@,, tmp6868, MisCnt.5187
	cmp	r9, #2	@ tmp6868,
	bgt	.L44	@,
	ldr	r3, [r7, #1780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1784]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1788]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp6886, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6886,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp6879, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6887, tmp6886
	cmp	sl, #0	@ tmp6879,
	rsb	r0, r2, r0	@ tmp6893, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6880, tmp6879
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6887,
	movle	r3, #0	@, tmp6889
	movgt	r3, #1	@, tmp6889
	ldrb	r9, [r7, #1795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6880,
	addgt	r3, r3, #1	@,, MisCnt.1736, tmp6889
	cmp	r0, #0	@ tmp6893,
	ldrb	r1, [r7, #1796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp6900, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6894, tmp6893
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6894,
	addgt	r3, r3, #1	@,, MisCnt.1745, MisCnt.1736
	cmp	r9, #0	@ tmp6900,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6907, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6901, tmp6900
	ldrb	ip, [r7, #1797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp6901,
	addgt	r3, r3, #1	@,, MisCnt.1754, MisCnt.1745
	cmp	r2, #0	@ tmp6907,
	ldrb	sl, [r7, #1798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6914, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6908, tmp6907
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6908,
	addgt	r3, r3, #1	@,, MisCnt.1764, MisCnt.1754
	cmp	ip, #0	@ tmp6914,
	ldrb	r0, [r7, #1799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6915, tmp6914
	rsb	r1, r1, sl	@ tmp6921, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6915,
	addgt	r3, r3, #1	@,, MisCnt.1772, MisCnt.1764
	cmp	r1, #0	@ tmp6921,
	rsb	ip, r2, r0	@ tmp6928, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6922, tmp6921
	cmp	r1, #2	@ tmp6922,
	addgt	r3, r3, #1	@,, MisCnt.1780, MisCnt.1772
	cmp	ip, #0	@ tmp6928,
	rsblt	ip, ip, #0	@ tmp6929, tmp6928
	cmp	ip, #2	@ tmp6929,
	addgt	r3, r3, #1	@,, tmp6932, MisCnt.1780
	cmp	r3, #2	@ tmp6932,
	movle	r0, #20	@ Result,
	ble	.L18	@,
.L44:
	ldr	ip, [r6, #1800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #1804]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1808]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp6933,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp6933,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #1813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp6950, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp6950,
	ldrb	r9, [r6, #1814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp6943, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp6951, tmp6950
	cmp	lr, #0	@ tmp6943,
	rsblt	lr, lr, #0	@ tmp6944, tmp6943
	ldrb	r0, [r6, #1815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6951,
	movle	r1, #0	@, tmp6953
	movgt	r1, #1	@, tmp6953
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp6957, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp6944,
	addgt	r1, r1, #1	@,, MisCnt.5213, tmp6953
	cmp	sl, #0	@ tmp6957,
	rsb	r9, r3, r0	@ tmp6964, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp6958, tmp6957
	ldrb	ip, [r6, #1816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6958,
	movle	sl, r1	@, MisCnt.5221, MisCnt.5213
	addgt	sl, r1, #1	@,, MisCnt.5221, MisCnt.5213
	cmp	r9, #0	@ tmp6964,
	ldrb	r0, [r6, #1817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp6971, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6965, tmp6964
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp6965,
	movle	r3, sl	@, MisCnt.5229, MisCnt.5221
	addgt	r3, sl, #1	@,, MisCnt.5229, MisCnt.5221
	cmp	ip, #0	@ tmp6971,
	ldrb	lr, [r6, #1818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp6978, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6972, tmp6971
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6972,
	movle	ip, r3	@, MisCnt.5237, MisCnt.5229
	addgt	ip, r3, #1	@,, MisCnt.5237, MisCnt.5229
	cmp	r9, #0	@ tmp6978,
	ldrb	r0, [r6, #1819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6979, tmp6978
	rsb	sl, r2, lr	@ tmp6985, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp6979,
	movle	r1, ip	@, MisCnt.5245, MisCnt.5237
	addgt	r1, ip, #1	@,, MisCnt.5245, MisCnt.5237
	cmp	sl, #0	@ tmp6985,
	rsb	r9, r3, r0	@ tmp6992, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6986, tmp6985
	cmp	sl, #2	@ tmp6986,
	movle	ip, r1	@, MisCnt.5253, MisCnt.5245
	addgt	ip, r1, #1	@,, MisCnt.5253, MisCnt.5245
	cmp	r9, #0	@ tmp6992,
	rsblt	r9, r9, #0	@ tmp6993, tmp6992
	cmp	r9, #2	@ tmp6993,
	movle	r0, ip	@, tmp6996, MisCnt.5253
	addgt	r0, ip, #1	@,, tmp6996, MisCnt.5253
	cmp	r0, #2	@ tmp6996,
	bgt	.L45	@,
	ldr	ip, [r7, #1820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #1824]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1828]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r7, #1833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #1832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r9, r2, r1	@ tmp7014, SmpPat.Pix, <variable>.Pix
	cmp	r9, #0	@ tmp7014,
	ldrb	sl, [r7, #1834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7007, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r9, r9, #0	@ tmp7015, tmp7014
	cmp	lr, #0	@ tmp7007,
	rsblt	lr, lr, #0	@ tmp7008, tmp7007
	ldrb	r0, [r7, #1835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp7015,
	movle	r1, #0	@, tmp7017
	movgt	r1, #1	@, tmp7017
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r9, ip, sl	@ tmp7021, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7008,
	addgt	r1, r1, #1	@,, MisCnt.5279, tmp7017
	cmp	r9, #0	@ tmp7021,
	rsb	r3, r3, r0	@ tmp7028, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7022, tmp7021
	ldrb	ip, [r7, #1836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7022,
	movle	sl, r1	@, MisCnt.5287, MisCnt.5279
	addgt	sl, r1, #1	@,, MisCnt.5287, MisCnt.5279
	cmp	r3, #0	@ tmp7028,
	ldrb	r0, [r7, #1837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r2, ip	@ tmp7035, SmpPat.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7029, tmp7028
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7029,
	movle	r3, sl	@, MisCnt.5295, MisCnt.5287
	addgt	r3, sl, #1	@,, MisCnt.5295, MisCnt.5287
	cmp	r9, #0	@ tmp7035,
	ldrb	lr, [r7, #1838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, r0	@ tmp7042, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7036, tmp7035
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7036,
	movle	ip, r3	@, MisCnt.5303, MisCnt.5295
	addgt	ip, r3, #1	@,, MisCnt.5303, MisCnt.5295
	cmp	r1, #0	@ tmp7042,
	ldrb	sl, [r7, #1839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, lr	@ tmp7049, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7043, tmp7042
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r1, #2	@ tmp7043,
	movle	r1, ip	@, MisCnt.5311, MisCnt.5303
	addgt	r1, ip, #1	@,, MisCnt.5311, MisCnt.5303
	cmp	r2, #0	@ tmp7049,
	rsb	r3, r9, sl	@ tmp7056, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7050, tmp7049
	cmp	r2, #2	@ tmp7050,
	movle	r0, r1	@, MisCnt.5319, MisCnt.5311
	addgt	r0, r1, #1	@,, MisCnt.5319, MisCnt.5311
	cmp	r3, #0	@ tmp7056,
	rsblt	r3, r3, #0	@ tmp7057, tmp7056
	cmp	r3, #2	@ tmp7057,
	movle	sl, r0	@, tmp7060, MisCnt.5319
	addgt	sl, r0, #1	@,, tmp7060, MisCnt.5319
	cmp	sl, #2	@ tmp7060,
	bgt	.L45	@,
	ldr	r3, [r7, #1840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1844]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1848]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7078, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7078,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp7071, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7079, tmp7078
	cmp	lr, #0	@ tmp7071,
	rsb	r0, r2, r0	@ tmp7085, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7072, tmp7071
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7079,
	movle	r9, #0	@, tmp7081
	movgt	r9, #1	@, tmp7081
	ldrb	sl, [r7, #1855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7072,
	addgt	r9, r9, #1	@,, MisCnt.5345, tmp7081
	cmp	r0, #0	@ tmp7085,
	ldrb	r1, [r7, #1856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7092, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7086, tmp7085
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7086,
	addgt	r9, r9, #1	@,, MisCnt.5353, MisCnt.5345
	cmp	sl, #0	@ tmp7092,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7099, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7093, tmp7092
	ldrb	ip, [r7, #1857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7093,
	addgt	r9, r9, #1	@,, MisCnt.5361, MisCnt.5353
	cmp	r2, #0	@ tmp7099,
	ldrb	lr, [r7, #1858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7106, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7100, tmp7099
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7100,
	addgt	r9, r9, #1	@,, MisCnt.5369, MisCnt.5361
	cmp	ip, #0	@ tmp7106,
	ldrb	r0, [r7, #1859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7113, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7107, tmp7106
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7107,
	addgt	r9, r9, #1	@,, MisCnt.5377, MisCnt.5369
	cmp	r1, #0	@ tmp7113,
	rsb	r2, sl, r0	@ tmp7120, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7114, tmp7113
	cmp	r1, #2	@ tmp7114,
	addgt	r9, r9, #1	@,, MisCnt.5385, MisCnt.5377
	cmp	r2, #0	@ tmp7120,
	rsblt	r2, r2, #0	@ tmp7121, tmp7120
	cmp	r2, #2	@ tmp7121,
	addgt	r9, r9, #1	@,, tmp7124, MisCnt.5385
	cmp	r9, #2	@ tmp7124,
	bgt	.L45	@,
	ldr	r3, [r7, #1860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1864]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7142, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7142,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp7135, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7143, tmp7142
	cmp	lr, #0	@ tmp7135,
	rsb	r0, r2, r0	@ tmp7149, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7136, tmp7135
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7143,
	movle	r9, #0	@, tmp7145
	movgt	r9, #1	@, tmp7145
	ldrb	sl, [r7, #1875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7136,
	addgt	r9, r9, #1	@,, MisCnt.5411, tmp7145
	cmp	r0, #0	@ tmp7149,
	ldrb	r1, [r7, #1876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7156, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7150, tmp7149
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7150,
	addgt	r9, r9, #1	@,, MisCnt.5419, MisCnt.5411
	cmp	sl, #0	@ tmp7156,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7163, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7157, tmp7156
	ldrb	ip, [r7, #1877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7157,
	addgt	r9, r9, #1	@,, MisCnt.5427, MisCnt.5419
	cmp	r2, #0	@ tmp7163,
	ldrb	lr, [r7, #1878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7170, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7164, tmp7163
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7164,
	addgt	r9, r9, #1	@,, MisCnt.5435, MisCnt.5427
	cmp	ip, #0	@ tmp7170,
	ldrb	r0, [r7, #1879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7177, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7171, tmp7170
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7171,
	addgt	r9, r9, #1	@,, MisCnt.5443, MisCnt.5435
	cmp	r1, #0	@ tmp7177,
	rsb	sl, r2, r0	@ tmp7184, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7178, tmp7177
	cmp	r1, #2	@ tmp7178,
	addgt	r9, r9, #1	@,, MisCnt.5451, MisCnt.5443
	cmp	sl, #0	@ tmp7184,
	rsblt	sl, sl, #0	@ tmp7185, tmp7184
	cmp	sl, #2	@ tmp7185,
	addgt	r9, r9, #1	@,, tmp7188, MisCnt.5451
	cmp	r9, #2	@ tmp7188,
	bgt	.L45	@,
	ldr	r3, [r7, #1880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1884]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1888]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp7206, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7206,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp7199, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7207, tmp7206
	cmp	sl, #0	@ tmp7199,
	rsb	r0, r2, r0	@ tmp7213, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7200, tmp7199
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7207,
	movle	r3, #0	@, tmp7209
	movgt	r3, #1	@, tmp7209
	ldrb	r9, [r7, #1895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7200,
	addgt	r3, r3, #1	@,, MisCnt.1798, tmp7209
	cmp	r0, #0	@ tmp7213,
	ldrb	r1, [r7, #1896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp7220, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7214, tmp7213
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7214,
	addgt	r3, r3, #1	@,, MisCnt.1806, MisCnt.1798
	cmp	r9, #0	@ tmp7220,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7227, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7221, tmp7220
	ldrb	ip, [r7, #1897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp7221,
	addgt	r3, r3, #1	@,, MisCnt.1817, MisCnt.1806
	cmp	r2, #0	@ tmp7227,
	ldrb	sl, [r7, #1898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7234, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7228, tmp7227
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7228,
	addgt	r3, r3, #1	@,, MisCnt.1828, MisCnt.1817
	cmp	ip, #0	@ tmp7234,
	ldrb	r0, [r7, #1899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7235, tmp7234
	rsb	r1, r1, sl	@ tmp7241, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7235,
	addgt	r3, r3, #1	@,, MisCnt.1838, MisCnt.1828
	cmp	r1, #0	@ tmp7241,
	rsb	ip, r2, r0	@ tmp7248, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7242, tmp7241
	cmp	r1, #2	@ tmp7242,
	addgt	r3, r3, #1	@,, MisCnt.1846, MisCnt.1838
	cmp	ip, #0	@ tmp7248,
	rsblt	ip, ip, #0	@ tmp7249, tmp7248
	cmp	ip, #2	@ tmp7249,
	addgt	r3, r3, #1	@,, tmp7252, MisCnt.1846
	cmp	r3, #2	@ tmp7252,
	movle	r0, #21	@ Result,
	ble	.L18	@,
.L45:
	ldr	ip, [r6, #1900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #1904]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1908]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp7253,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp7253,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #1913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #1912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp7270, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp7270,
	ldrb	r9, [r6, #1914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7263, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp7271, tmp7270
	cmp	lr, #0	@ tmp7263,
	rsblt	lr, lr, #0	@ tmp7264, tmp7263
	ldrb	r0, [r6, #1915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7271,
	movle	r1, #0	@, tmp7273
	movgt	r1, #1	@, tmp7273
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp7277, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7264,
	addgt	r1, r1, #1	@,, MisCnt.5477, tmp7273
	cmp	sl, #0	@ tmp7277,
	rsb	r9, r3, r0	@ tmp7284, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp7278, tmp7277
	ldrb	ip, [r6, #1916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7278,
	movle	sl, r1	@, MisCnt.5485, MisCnt.5477
	addgt	sl, r1, #1	@,, MisCnt.5485, MisCnt.5477
	cmp	r9, #0	@ tmp7284,
	ldrb	r0, [r6, #1917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp7291, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7285, tmp7284
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7285,
	movle	r3, sl	@, MisCnt.5493, MisCnt.5485
	addgt	r3, sl, #1	@,, MisCnt.5493, MisCnt.5485
	cmp	ip, #0	@ tmp7291,
	ldrb	lr, [r6, #1918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp7298, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7292, tmp7291
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7292,
	movle	ip, r3	@, MisCnt.5501, MisCnt.5493
	addgt	ip, r3, #1	@,, MisCnt.5501, MisCnt.5493
	cmp	r9, #0	@ tmp7298,
	ldrb	r0, [r6, #1919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7299, tmp7298
	rsb	sl, r2, lr	@ tmp7305, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7299,
	movle	r1, ip	@, MisCnt.5509, MisCnt.5501
	addgt	r1, ip, #1	@,, MisCnt.5509, MisCnt.5501
	cmp	sl, #0	@ tmp7305,
	rsb	r9, r3, r0	@ tmp7312, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7306, tmp7305
	cmp	sl, #2	@ tmp7306,
	movle	ip, r1	@, MisCnt.5517, MisCnt.5509
	addgt	ip, r1, #1	@,, MisCnt.5517, MisCnt.5509
	cmp	r9, #0	@ tmp7312,
	rsblt	r9, r9, #0	@ tmp7313, tmp7312
	cmp	r9, #2	@ tmp7313,
	movle	r0, ip	@, tmp7316, MisCnt.5517
	addgt	r0, ip, #1	@,, tmp7316, MisCnt.5517
	cmp	r0, #2	@ tmp7316,
	bgt	.L46	@,
	ldr	r2, [r7, #1920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #1924]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1928]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #1932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7334, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7334,
	ldrb	r9, [r7, #1934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7327, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7335, tmp7334
	cmp	lr, #0	@ tmp7327,
	rsb	r0, r2, r9	@ tmp7341, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7328, tmp7327
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7335,
	movle	r3, #0	@, tmp7337
	movgt	r3, #1	@, tmp7337
	ldrb	sl, [r7, #1935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7328,
	addgt	r3, r3, #1	@,, MisCnt.5543, tmp7337
	cmp	r0, #0	@ tmp7341,
	ldrb	r1, [r7, #1936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7348, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7342, tmp7341
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7342,
	addgt	r3, r3, #1	@,, MisCnt.5551, MisCnt.5543
	cmp	sl, #0	@ tmp7348,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp7355, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7349, tmp7348
	ldrb	ip, [r7, #1937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7349,
	addgt	r3, r3, #1	@,, MisCnt.5559, MisCnt.5551
	cmp	r2, #0	@ tmp7355,
	ldrb	lr, [r7, #1938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp7362, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7356, tmp7355
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7356,
	addgt	r3, r3, #1	@,, MisCnt.5567, MisCnt.5559
	cmp	r9, #0	@ tmp7362,
	ldrb	r0, [r7, #1939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7369, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7363, tmp7362
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7363,
	addgt	r3, r3, #1	@,, MisCnt.5575, MisCnt.5567
	cmp	r1, #0	@ tmp7369,
	rsb	sl, r2, r0	@ tmp7376, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7370, tmp7369
	cmp	r1, #2	@ tmp7370,
	addgt	r3, r3, #1	@,, MisCnt.5583, MisCnt.5575
	cmp	sl, #0	@ tmp7376,
	rsblt	sl, sl, #0	@ tmp7377, tmp7376
	cmp	sl, #2	@ tmp7377,
	addgt	r3, r3, #1	@,, tmp7380, MisCnt.5583
	cmp	r3, #2	@ tmp7380,
	bgt	.L46	@,
	ldr	r2, [r7, #1940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #1944]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1948]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #1952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp7398, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7398,
	ldrb	sl, [r7, #1954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7391, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7399, tmp7398
	cmp	lr, #0	@ tmp7391,
	rsb	r0, r2, sl	@ tmp7405, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7392, tmp7391
	ldrb	r9, [r7, #1955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp7399,
	movle	r3, #0	@, tmp7401
	movgt	r3, #1	@, tmp7401
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp7392,
	addgt	r3, r3, #1	@,, MisCnt.5609, tmp7401
	cmp	r0, #0	@ tmp7405,
	ldrb	r1, [r7, #1956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp7412, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7406, tmp7405
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7406,
	addgt	r3, r3, #1	@,, MisCnt.5617, MisCnt.5609
	cmp	sl, #0	@ tmp7412,
	ldrb	r9, [r7, #1957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp7419, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7413, tmp7412
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7413,
	addgt	r3, r3, #1	@,, MisCnt.5625, MisCnt.5617
	cmp	r2, #0	@ tmp7419,
	ldrb	lr, [r7, #1958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp7426, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7420, tmp7419
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7420,
	addgt	r3, r3, #1	@,, MisCnt.5633, MisCnt.5625
	cmp	ip, #0	@ tmp7426,
	ldrb	r0, [r7, #1959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7433, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7427, tmp7426
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7427,
	addgt	r3, r3, #1	@,, MisCnt.5641, MisCnt.5633
	cmp	r1, #0	@ tmp7433,
	rsb	sl, r9, r0	@ tmp7440, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7434, tmp7433
	cmp	r1, #2	@ tmp7434,
	addgt	r3, r3, #1	@,, MisCnt.5649, MisCnt.5641
	cmp	sl, #0	@ tmp7440,
	rsblt	sl, sl, #0	@ tmp7441, tmp7440
	cmp	sl, #2	@ tmp7441,
	addgt	r3, r3, #1	@,, tmp7444, MisCnt.5649
	cmp	r3, #2	@ tmp7444,
	bgt	.L46	@,
	ldr	r2, [r7, #1960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #1964]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1968]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #1972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7462, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7462,
	ldrb	r9, [r7, #1974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7455, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7463, tmp7462
	cmp	lr, #0	@ tmp7455,
	rsb	r0, r2, r9	@ tmp7469, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7456, tmp7455
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7463,
	movle	r3, #0	@, tmp7465
	movgt	r3, #1	@, tmp7465
	ldrb	sl, [r7, #1975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7456,
	addgt	r3, r3, #1	@,, MisCnt.5675, tmp7465
	cmp	r0, #0	@ tmp7469,
	ldrb	r1, [r7, #1976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7476, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7470, tmp7469
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7470,
	addgt	r3, r3, #1	@,, MisCnt.5683, MisCnt.5675
	cmp	sl, #0	@ tmp7476,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp7483, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7477, tmp7476
	ldrb	ip, [r7, #1977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7477,
	addgt	r3, r3, #1	@,, MisCnt.5691, MisCnt.5683
	cmp	r2, #0	@ tmp7483,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp7490, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7484, tmp7483
	ldrb	lr, [r7, #1978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp7484,
	addgt	r3, r3, #1	@,, MisCnt.5699, MisCnt.5691
	cmp	ip, #0	@ tmp7490,
	ldrb	r0, [r7, #1979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp7497, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7491, tmp7490
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7491,
	addgt	r3, r3, #1	@,, MisCnt.5707, MisCnt.5699
	cmp	r1, #0	@ tmp7497,
	rsb	r9, sl, r0	@ tmp7504, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7498, tmp7497
	cmp	r1, #2	@ tmp7498,
	addgt	r3, r3, #1	@,, MisCnt.5715, MisCnt.5707
	cmp	r9, #0	@ tmp7504,
	rsblt	r9, r9, #0	@ tmp7505, tmp7504
	cmp	r9, #2	@ tmp7505,
	addgt	r3, r3, #1	@,, tmp7508, MisCnt.5715
	cmp	r3, #2	@ tmp7508,
	bgt	.L46	@,
	ldr	r3, [r7, #1980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1984]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1988]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp7526, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7526,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp7519, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7527, tmp7526
	cmp	sl, #0	@ tmp7519,
	rsb	r0, r2, r0	@ tmp7533, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7520, tmp7519
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7527,
	movle	r3, #0	@, tmp7529
	movgt	r3, #1	@, tmp7529
	ldrb	r9, [r7, #1995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7520,
	addgt	r3, r3, #1	@,, MisCnt.1866, tmp7529
	cmp	r0, #0	@ tmp7533,
	ldrb	r1, [r7, #1996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp7540, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7534, tmp7533
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7534,
	addgt	r3, r3, #1	@,, MisCnt.1877, MisCnt.1866
	cmp	r9, #0	@ tmp7540,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7547, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7541, tmp7540
	ldrb	ip, [r7, #1997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp7541,
	addgt	r3, r3, #1	@,, MisCnt.1888, MisCnt.1877
	cmp	r2, #0	@ tmp7547,
	ldrb	sl, [r7, #1998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7554, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7548, tmp7547
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7548,
	addgt	r3, r3, #1	@,, MisCnt.1897, MisCnt.1888
	cmp	ip, #0	@ tmp7554,
	ldrb	r0, [r7, #1999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7555, tmp7554
	rsb	r1, r1, sl	@ tmp7561, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7555,
	addgt	r3, r3, #1	@,, MisCnt.1908, MisCnt.1897
	cmp	r1, #0	@ tmp7561,
	rsb	ip, r2, r0	@ tmp7568, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7562, tmp7561
	cmp	r1, #2	@ tmp7562,
	addgt	r3, r3, #1	@,, MisCnt.1919, MisCnt.1908
	cmp	ip, #0	@ tmp7568,
	rsblt	ip, ip, #0	@ tmp7569, tmp7568
	cmp	ip, #2	@ tmp7569,
	addgt	r3, r3, #1	@,, tmp7572, MisCnt.1919
	cmp	r3, #2	@ tmp7572,
	movle	r0, #25	@ Result,
	ble	.L18	@,
.L46:
	ldr	ip, [r6, #2000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #2004]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2008]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp7573,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp7573,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #2013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp7590, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp7590,
	ldrb	r9, [r6, #2014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7583, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp7591, tmp7590
	cmp	lr, #0	@ tmp7583,
	rsblt	lr, lr, #0	@ tmp7584, tmp7583
	ldrb	r0, [r6, #2015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7591,
	movle	r1, #0	@, tmp7593
	movgt	r1, #1	@, tmp7593
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp7597, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7584,
	addgt	r1, r1, #1	@,, MisCnt.5741, tmp7593
	cmp	sl, #0	@ tmp7597,
	rsb	r9, r3, r0	@ tmp7604, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp7598, tmp7597
	ldrb	ip, [r6, #2016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7598,
	movle	sl, r1	@, MisCnt.5749, MisCnt.5741
	addgt	sl, r1, #1	@,, MisCnt.5749, MisCnt.5741
	cmp	r9, #0	@ tmp7604,
	ldrb	r0, [r6, #2017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp7611, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7605, tmp7604
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7605,
	movle	r3, sl	@, MisCnt.5757, MisCnt.5749
	addgt	r3, sl, #1	@,, MisCnt.5757, MisCnt.5749
	cmp	ip, #0	@ tmp7611,
	ldrb	lr, [r6, #2018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp7618, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7612, tmp7611
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7612,
	movle	ip, r3	@, MisCnt.5765, MisCnt.5757
	addgt	ip, r3, #1	@,, MisCnt.5765, MisCnt.5757
	cmp	r9, #0	@ tmp7618,
	ldrb	r0, [r6, #2019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7619, tmp7618
	rsb	sl, r2, lr	@ tmp7625, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7619,
	movle	r1, ip	@, MisCnt.5773, MisCnt.5765
	addgt	r1, ip, #1	@,, MisCnt.5773, MisCnt.5765
	cmp	sl, #0	@ tmp7625,
	rsb	r9, r3, r0	@ tmp7632, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7626, tmp7625
	cmp	sl, #2	@ tmp7626,
	movle	ip, r1	@, MisCnt.5781, MisCnt.5773
	addgt	ip, r1, #1	@,, MisCnt.5781, MisCnt.5773
	cmp	r9, #0	@ tmp7632,
	rsblt	r9, r9, #0	@ tmp7633, tmp7632
	cmp	r9, #2	@ tmp7633,
	movle	r0, ip	@, tmp7636, MisCnt.5781
	addgt	r0, ip, #1	@,, tmp7636, MisCnt.5781
	cmp	r0, #2	@ tmp7636,
	bgt	.L47	@,
	ldr	r2, [r7, #2020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2024]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2028]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7654, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7654,
	ldrb	r9, [r7, #2034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7647, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7655, tmp7654
	cmp	lr, #0	@ tmp7647,
	rsb	r0, r2, r9	@ tmp7661, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7648, tmp7647
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7655,
	movle	r3, #0	@, tmp7657
	movgt	r3, #1	@, tmp7657
	ldrb	sl, [r7, #2035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7648,
	addgt	r3, r3, #1	@,, MisCnt.5807, tmp7657
	cmp	r0, #0	@ tmp7661,
	ldrb	r1, [r7, #2036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7668, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7662, tmp7661
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7662,
	addgt	r3, r3, #1	@,, MisCnt.5815, MisCnt.5807
	cmp	sl, #0	@ tmp7668,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp7675, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7669, tmp7668
	ldrb	ip, [r7, #2037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7669,
	addgt	r3, r3, #1	@,, MisCnt.5823, MisCnt.5815
	cmp	r2, #0	@ tmp7675,
	ldrb	lr, [r7, #2038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp7682, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7676, tmp7675
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7676,
	addgt	r3, r3, #1	@,, MisCnt.5831, MisCnt.5823
	cmp	r9, #0	@ tmp7682,
	ldrb	r0, [r7, #2039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7689, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7683, tmp7682
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7683,
	addgt	r3, r3, #1	@,, MisCnt.5839, MisCnt.5831
	cmp	r1, #0	@ tmp7689,
	rsb	sl, r2, r0	@ tmp7696, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7690, tmp7689
	cmp	r1, #2	@ tmp7690,
	addgt	r3, r3, #1	@,, MisCnt.5847, MisCnt.5839
	cmp	sl, #0	@ tmp7696,
	rsblt	sl, sl, #0	@ tmp7697, tmp7696
	cmp	sl, #2	@ tmp7697,
	addgt	r3, r3, #1	@,, tmp7700, MisCnt.5847
	cmp	r3, #2	@ tmp7700,
	bgt	.L47	@,
	ldr	r2, [r7, #2040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #2044]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2048]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp7718, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7718,
	ldrb	sl, [r7, #2054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7711, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7719, tmp7718
	cmp	lr, #0	@ tmp7711,
	rsb	r0, r2, sl	@ tmp7725, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7712, tmp7711
	ldrb	r9, [r7, #2055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp7719,
	movle	r3, #0	@, tmp7721
	movgt	r3, #1	@, tmp7721
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp7712,
	addgt	r3, r3, #1	@,, MisCnt.5873, tmp7721
	cmp	r0, #0	@ tmp7725,
	ldrb	r1, [r7, #2056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp7732, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7726, tmp7725
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7726,
	addgt	r3, r3, #1	@,, MisCnt.5881, MisCnt.5873
	cmp	sl, #0	@ tmp7732,
	ldrb	r9, [r7, #2057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp7739, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7733, tmp7732
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp7733,
	addgt	r3, r3, #1	@,, MisCnt.5889, MisCnt.5881
	cmp	r2, #0	@ tmp7739,
	ldrb	lr, [r7, #2058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp7746, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7740, tmp7739
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7740,
	addgt	r3, r3, #1	@,, MisCnt.5897, MisCnt.5889
	cmp	ip, #0	@ tmp7746,
	ldrb	r0, [r7, #2059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp7753, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7747, tmp7746
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7747,
	addgt	r3, r3, #1	@,, MisCnt.5905, MisCnt.5897
	cmp	r1, #0	@ tmp7753,
	rsb	sl, r9, r0	@ tmp7760, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7754, tmp7753
	cmp	r1, #2	@ tmp7754,
	addgt	r3, r3, #1	@,, MisCnt.5913, MisCnt.5905
	cmp	sl, #0	@ tmp7760,
	rsblt	sl, sl, #0	@ tmp7761, tmp7760
	cmp	sl, #2	@ tmp7761,
	addgt	r3, r3, #1	@,, tmp7764, MisCnt.5913
	cmp	r3, #2	@ tmp7764,
	bgt	.L47	@,
	ldr	r2, [r7, #2060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2064]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2068]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7782, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7782,
	ldrb	r9, [r7, #2074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7775, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7783, tmp7782
	cmp	lr, #0	@ tmp7775,
	rsb	r0, r2, r9	@ tmp7789, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7776, tmp7775
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7783,
	movle	r3, #0	@, tmp7785
	movgt	r3, #1	@, tmp7785
	ldrb	sl, [r7, #2075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7776,
	addgt	r3, r3, #1	@,, MisCnt.5939, tmp7785
	cmp	r0, #0	@ tmp7789,
	ldrb	r1, [r7, #2076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7796, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7790, tmp7789
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7790,
	addgt	r3, r3, #1	@,, MisCnt.5947, MisCnt.5939
	cmp	sl, #0	@ tmp7796,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp7803, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7797, tmp7796
	ldrb	ip, [r7, #2077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7797,
	addgt	r3, r3, #1	@,, MisCnt.5955, MisCnt.5947
	cmp	r2, #0	@ tmp7803,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp7810, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7804, tmp7803
	ldrb	lr, [r7, #2078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp7804,
	addgt	r3, r3, #1	@,, MisCnt.5963, MisCnt.5955
	cmp	ip, #0	@ tmp7810,
	ldrb	r0, [r7, #2079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp7817, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7811, tmp7810
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7811,
	addgt	r3, r3, #1	@,, MisCnt.5971, MisCnt.5963
	cmp	r1, #0	@ tmp7817,
	rsb	r9, sl, r0	@ tmp7824, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7818, tmp7817
	cmp	r1, #2	@ tmp7818,
	addgt	r3, r3, #1	@,, MisCnt.5979, MisCnt.5971
	cmp	r9, #0	@ tmp7824,
	rsblt	r9, r9, #0	@ tmp7825, tmp7824
	cmp	r9, #2	@ tmp7825,
	addgt	r3, r3, #1	@,, tmp7828, MisCnt.5979
	cmp	r3, #2	@ tmp7828,
	bgt	.L47	@,
	ldr	r3, [r7, #2080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2084]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2088]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #2093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #2092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp7846, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7846,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp7839, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp7847, tmp7846
	cmp	sl, #0	@ tmp7839,
	rsb	r0, r2, r0	@ tmp7853, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7840, tmp7839
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7847,
	movle	r3, #0	@, tmp7849
	movgt	r3, #1	@, tmp7849
	ldrb	r9, [r7, #2095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7840,
	addgt	r3, r3, #1	@,, MisCnt.1936, tmp7849
	cmp	r0, #0	@ tmp7853,
	ldrb	r1, [r7, #2096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp7860, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7854, tmp7853
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7854,
	addgt	r3, r3, #1	@,, MisCnt.1947, MisCnt.1936
	cmp	r9, #0	@ tmp7860,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp7867, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7861, tmp7860
	ldrb	ip, [r7, #2097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp7861,
	addgt	r3, r3, #1	@,, MisCnt.1958, MisCnt.1947
	cmp	r2, #0	@ tmp7867,
	ldrb	sl, [r7, #2098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp7874, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7868, tmp7867
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7868,
	addgt	r3, r3, #1	@,, MisCnt.1968, MisCnt.1958
	cmp	ip, #0	@ tmp7874,
	ldrb	r0, [r7, #2099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7875, tmp7874
	rsb	r1, r1, sl	@ tmp7881, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7875,
	addgt	r3, r3, #1	@,, MisCnt.1978, MisCnt.1968
	cmp	r1, #0	@ tmp7881,
	rsb	ip, r2, r0	@ tmp7888, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp7882, tmp7881
	cmp	r1, #2	@ tmp7882,
	addgt	r3, r3, #1	@,, MisCnt.1989, MisCnt.1978
	cmp	ip, #0	@ tmp7888,
	rsblt	ip, ip, #0	@ tmp7889, tmp7888
	cmp	ip, #2	@ tmp7889,
	addgt	r3, r3, #1	@,, tmp7892, MisCnt.1989
	cmp	r3, #2	@ tmp7892,
	movle	r0, #27	@ Result,
	ble	.L18	@,
.L47:
	ldr	ip, [r6, #2100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #2104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2108]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp7893,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp7893,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #2113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #2112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp7910, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp7910,
	ldrb	r9, [r6, #2114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp7903, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp7911, tmp7910
	cmp	lr, #0	@ tmp7903,
	rsblt	lr, lr, #0	@ tmp7904, tmp7903
	ldrb	r0, [r6, #2115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7911,
	movle	r1, #0	@, tmp7913
	movgt	r1, #1	@, tmp7913
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp7917, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7904,
	addgt	r1, r1, #1	@,, MisCnt.6005, tmp7913
	cmp	sl, #0	@ tmp7917,
	rsb	r9, r3, r0	@ tmp7924, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp7918, tmp7917
	ldrb	ip, [r6, #2116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7918,
	movle	sl, r1	@, MisCnt.6013, MisCnt.6005
	addgt	sl, r1, #1	@,, MisCnt.6013, MisCnt.6005
	cmp	r9, #0	@ tmp7924,
	ldrb	r0, [r6, #2117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp7931, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7925, tmp7924
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7925,
	movle	r3, sl	@, MisCnt.6021, MisCnt.6013
	addgt	r3, sl, #1	@,, MisCnt.6021, MisCnt.6013
	cmp	ip, #0	@ tmp7931,
	ldrb	lr, [r6, #2118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp7938, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp7932, tmp7931
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp7932,
	movle	ip, r3	@, MisCnt.6029, MisCnt.6021
	addgt	ip, r3, #1	@,, MisCnt.6029, MisCnt.6021
	cmp	r9, #0	@ tmp7938,
	ldrb	r0, [r6, #2119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp7939, tmp7938
	rsb	sl, r2, lr	@ tmp7945, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp7939,
	movle	r1, ip	@, MisCnt.6037, MisCnt.6029
	addgt	r1, ip, #1	@,, MisCnt.6037, MisCnt.6029
	cmp	sl, #0	@ tmp7945,
	rsb	r9, r3, r0	@ tmp7952, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7946, tmp7945
	cmp	sl, #2	@ tmp7946,
	movle	ip, r1	@, MisCnt.6045, MisCnt.6037
	addgt	ip, r1, #1	@,, MisCnt.6045, MisCnt.6037
	cmp	r9, #0	@ tmp7952,
	rsblt	r9, r9, #0	@ tmp7953, tmp7952
	cmp	r9, #2	@ tmp7953,
	movle	r0, ip	@, tmp7956, MisCnt.6045
	addgt	r0, ip, #1	@,, tmp7956, MisCnt.6045
	cmp	r0, #2	@ tmp7956,
	bgt	.L48	@,
	ldr	r2, [r7, #2120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2128]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp7974, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp7974,
	ldrb	r9, [r7, #2134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp7967, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp7975, tmp7974
	cmp	lr, #0	@ tmp7967,
	rsb	r0, r2, r9	@ tmp7981, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp7968, tmp7967
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp7975,
	movle	r3, #0	@, tmp7977
	movgt	r3, #1	@, tmp7977
	ldrb	sl, [r7, #2135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp7968,
	addgt	r3, r3, #1	@,, MisCnt.6071, tmp7977
	cmp	r0, #0	@ tmp7981,
	ldrb	r1, [r7, #2136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp7988, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp7982, tmp7981
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp7982,
	addgt	r3, r3, #1	@,, MisCnt.6079, MisCnt.6071
	cmp	sl, #0	@ tmp7988,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp7995, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp7989, tmp7988
	ldrb	ip, [r7, #2137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp7989,
	addgt	r3, r3, #1	@,, MisCnt.6087, MisCnt.6079
	cmp	r2, #0	@ tmp7995,
	ldrb	lr, [r7, #2138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp8002, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp7996, tmp7995
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp7996,
	addgt	r3, r3, #1	@,, MisCnt.6095, MisCnt.6087
	cmp	r9, #0	@ tmp8002,
	ldrb	r0, [r7, #2139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8009, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp8003, tmp8002
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp8003,
	addgt	r3, r3, #1	@,, MisCnt.6103, MisCnt.6095
	cmp	r1, #0	@ tmp8009,
	rsb	sl, r2, r0	@ tmp8016, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8010, tmp8009
	cmp	r1, #2	@ tmp8010,
	addgt	r3, r3, #1	@,, MisCnt.6111, MisCnt.6103
	cmp	sl, #0	@ tmp8016,
	rsblt	sl, sl, #0	@ tmp8017, tmp8016
	cmp	sl, #2	@ tmp8017,
	addgt	r3, r3, #1	@,, tmp8020, MisCnt.6111
	cmp	r3, #2	@ tmp8020,
	bgt	.L48	@,
	ldr	r2, [r7, #2140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #2144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2148]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp8038, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8038,
	ldrb	sl, [r7, #2154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8031, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8039, tmp8038
	cmp	lr, #0	@ tmp8031,
	rsb	r0, r2, sl	@ tmp8045, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8032, tmp8031
	ldrb	r9, [r7, #2155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp8039,
	movle	r3, #0	@, tmp8041
	movgt	r3, #1	@, tmp8041
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp8032,
	addgt	r3, r3, #1	@,, MisCnt.6137, tmp8041
	cmp	r0, #0	@ tmp8045,
	ldrb	r1, [r7, #2156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp8052, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8046, tmp8045
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8046,
	addgt	r3, r3, #1	@,, MisCnt.6145, MisCnt.6137
	cmp	sl, #0	@ tmp8052,
	ldrb	r9, [r7, #2157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp8059, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8053, tmp8052
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp8053,
	addgt	r3, r3, #1	@,, MisCnt.6153, MisCnt.6145
	cmp	r2, #0	@ tmp8059,
	ldrb	lr, [r7, #2158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp8066, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8060, tmp8059
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8060,
	addgt	r3, r3, #1	@,, MisCnt.6161, MisCnt.6153
	cmp	ip, #0	@ tmp8066,
	ldrb	r0, [r7, #2159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp8073, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8067, tmp8066
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8067,
	addgt	r3, r3, #1	@,, MisCnt.6169, MisCnt.6161
	cmp	r1, #0	@ tmp8073,
	rsb	sl, r9, r0	@ tmp8080, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8074, tmp8073
	cmp	r1, #2	@ tmp8074,
	addgt	r3, r3, #1	@,, MisCnt.6177, MisCnt.6169
	cmp	sl, #0	@ tmp8080,
	rsblt	sl, sl, #0	@ tmp8081, tmp8080
	cmp	sl, #2	@ tmp8081,
	addgt	r3, r3, #1	@,, tmp8084, MisCnt.6177
	cmp	r3, #2	@ tmp8084,
	bgt	.L48	@,
	ldr	r2, [r7, #2160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #2164]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2168]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #2173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #2172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp8102, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8102,
	ldrb	r9, [r7, #2174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp8095, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp8103, tmp8102
	cmp	lr, #0	@ tmp8095,
	rsb	r0, r2, r9	@ tmp8109, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp8096, tmp8095
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8103,
	movle	r3, #0	@, tmp8105
	movgt	r3, #1	@, tmp8105
	ldrb	sl, [r7, #2175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp8096,
	addgt	r3, r3, #1	@,, MisCnt.6203, tmp8105
	cmp	r0, #0	@ tmp8109,
	ldrb	r1, [r7, #2176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8116, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8110, tmp8109
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8110,
	addgt	r3, r3, #1	@,, MisCnt.6211, MisCnt.6203
	cmp	sl, #0	@ tmp8116,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp8123, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8117, tmp8116
	ldrb	ip, [r7, #2177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8117,
	addgt	r3, r3, #1	@,, MisCnt.6219, MisCnt.6211
	cmp	r2, #0	@ tmp8123,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp8130, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8124, tmp8123
	ldrb	lr, [r7, #2178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp8124,
	addgt	r3, r3, #1	@,, MisCnt.6227, MisCnt.6219
	cmp	ip, #0	@ tmp8130,
	ldrb	r0, [r7, #2179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp8137, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8131, tmp8130
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8131,
	addgt	r3, r3, #1	@,, MisCnt.6235, MisCnt.6227
	cmp	r1, #0	@ tmp8137,
	rsb	r9, sl, r0	@ tmp8144, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8138, tmp8137
	cmp	r1, #2	@ tmp8138,
	addgt	r3, r3, #1	@,, MisCnt.6243, MisCnt.6235
	cmp	r9, #0	@ tmp8144,
	rsblt	r9, r9, #0	@ tmp8145, tmp8144
	cmp	r9, #2	@ tmp8145,
	addgt	r3, r3, #1	@,, tmp8148, MisCnt.6243
	cmp	r3, #2	@ tmp8148,
	bgt	.L48	@,
	ldr	r3, [r7, #2180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2184]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #2193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #2192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp8166, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8166,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp8159, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8167, tmp8166
	cmp	sl, #0	@ tmp8159,
	rsb	r0, r2, r0	@ tmp8173, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8160, tmp8159
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8167,
	movle	r3, #0	@, tmp8169
	movgt	r3, #1	@, tmp8169
	ldrb	r9, [r7, #2195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8160,
	addgt	r3, r3, #1	@,, MisCnt.2010, tmp8169
	cmp	r0, #0	@ tmp8173,
	ldrb	r1, [r7, #2196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp8180, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8174, tmp8173
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8174,
	addgt	r3, r3, #1	@,, MisCnt.2019, MisCnt.2010
	cmp	r9, #0	@ tmp8180,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8187, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp8181, tmp8180
	ldrb	ip, [r7, #2197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp8181,
	addgt	r3, r3, #1	@,, MisCnt.2030, MisCnt.2019
	cmp	r2, #0	@ tmp8187,
	ldrb	sl, [r7, #2198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8194, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8188, tmp8187
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8188,
	addgt	r3, r3, #1	@,, MisCnt.2041, MisCnt.2030
	cmp	ip, #0	@ tmp8194,
	ldrb	r0, [r7, #2199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8195, tmp8194
	rsb	r1, r1, sl	@ tmp8201, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8195,
	addgt	r3, r3, #1	@,, MisCnt.2050, MisCnt.2041
	cmp	r1, #0	@ tmp8201,
	rsb	ip, r2, r0	@ tmp8208, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8202, tmp8201
	cmp	r1, #2	@ tmp8202,
	addgt	r3, r3, #1	@,, MisCnt.2061, MisCnt.2050
	cmp	ip, #0	@ tmp8208,
	rsblt	ip, ip, #0	@ tmp8209, tmp8208
	cmp	ip, #2	@ tmp8209,
	addgt	r3, r3, #1	@,, tmp8212, MisCnt.2061
	cmp	r3, #2	@ tmp8212,
	movle	r0, #28	@ Result,
	ble	.L18	@,
.L48:
	ldr	r3, [r6, #2200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #2204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #2208]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp8213,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp8213,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r6, #2213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #2212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp8230, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8230,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp8223, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #2214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8231, tmp8230
	cmp	sl, #0	@ tmp8223,
	rsb	r0, r2, r0	@ tmp8237, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8224, tmp8223
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8231,
	movle	r3, #0	@, tmp8233
	movgt	r3, #1	@, tmp8233
	ldrb	r9, [r6, #2215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8224,
	addgt	r3, r3, #1	@,, MisCnt.6269, tmp8233
	cmp	r0, #0	@ tmp8237,
	ldrb	r1, [r6, #2216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp8244, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8238, tmp8237
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8238,
	addgt	r3, r3, #1	@,, MisCnt.6277, MisCnt.6269
	cmp	r9, #0	@ tmp8244,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8251, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp8245, tmp8244
	ldrb	ip, [r6, #2217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp8245,
	addgt	r3, r3, #1	@,, MisCnt.6285, MisCnt.6277
	cmp	r2, #0	@ tmp8251,
	ldrb	sl, [r6, #2218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8258, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8252, tmp8251
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8252,
	addgt	r3, r3, #1	@,, MisCnt.6293, MisCnt.6285
	cmp	ip, #0	@ tmp8258,
	ldrb	r0, [r6, #2219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8259, tmp8258
	rsb	r1, r1, sl	@ tmp8265, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8259,
	addgt	r3, r3, #1	@,, MisCnt.6301, MisCnt.6293
	cmp	r1, #0	@ tmp8265,
	rsb	ip, r2, r0	@ tmp8272, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8266, tmp8265
	cmp	r1, #2	@ tmp8266,
	addgt	r3, r3, #1	@,, MisCnt.6309, MisCnt.6301
	cmp	ip, #0	@ tmp8272,
	rsblt	ip, ip, #0	@ tmp8273, tmp8272
	cmp	ip, #2	@ tmp8273,
	addgt	r3, r3, #1	@,, tmp8276, MisCnt.6309
	cmp	r3, #2	@ tmp8276,
	bgt	.L50	@,
	ldr	r3, [r7, #2220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #2233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #2232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp8294, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8294,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp8287, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8295, tmp8294
	cmp	r6, #0	@ tmp8287,
	rsb	r0, r2, r0	@ tmp8301, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp8288, tmp8287
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8295,
	movle	r3, #0	@, tmp8297
	movgt	r3, #1	@, tmp8297
	ldrb	sl, [r7, #2235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp8288,
	addgt	r3, r3, #1	@,, MisCnt.6335, tmp8297
	cmp	r0, #0	@ tmp8301,
	ldrb	r1, [r7, #2236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8308, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8302, tmp8301
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8302,
	addgt	r3, r3, #1	@,, MisCnt.6343, MisCnt.6335
	cmp	sl, #0	@ tmp8308,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8315, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8309, tmp8308
	ldrb	ip, [r7, #2237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8309,
	addgt	r3, r3, #1	@,, MisCnt.6351, MisCnt.6343
	cmp	r2, #0	@ tmp8315,
	ldrb	r6, [r7, #2238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8322, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8316, tmp8315
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8316,
	addgt	r3, r3, #1	@,, MisCnt.6359, MisCnt.6351
	cmp	ip, #0	@ tmp8322,
	ldrb	r0, [r7, #2239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8323, tmp8322
	rsb	r1, r1, r6	@ tmp8329, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8323,
	addgt	r3, r3, #1	@,, MisCnt.6367, MisCnt.6359
	cmp	r1, #0	@ tmp8329,
	rsb	ip, r2, r0	@ tmp8336, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8330, tmp8329
	cmp	r1, #2	@ tmp8330,
	addgt	r3, r3, #1	@,, MisCnt.6375, MisCnt.6367
	cmp	ip, #0	@ tmp8336,
	rsblt	ip, ip, #0	@ tmp8337, tmp8336
	cmp	ip, #2	@ tmp8337,
	addgt	r3, r3, #1	@,, tmp8340, MisCnt.6375
	cmp	r3, #2	@ tmp8340,
	bgt	.L50	@,
	ldr	r3, [r7, #2240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #2253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #2252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp8358, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8358,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp8351, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8359, tmp8358
	cmp	r6, #0	@ tmp8351,
	rsb	r0, r2, r0	@ tmp8365, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp8352, tmp8351
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8359,
	movle	r3, #0	@, tmp8361
	movgt	r3, #1	@, tmp8361
	ldrb	sl, [r7, #2255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp8352,
	addgt	r3, r3, #1	@,, MisCnt.6401, tmp8361
	cmp	r0, #0	@ tmp8365,
	ldrb	r1, [r7, #2256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8372, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8366, tmp8365
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8366,
	addgt	r3, r3, #1	@,, MisCnt.6409, MisCnt.6401
	cmp	sl, #0	@ tmp8372,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8379, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8373, tmp8372
	ldrb	ip, [r7, #2257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8373,
	addgt	r3, r3, #1	@,, MisCnt.6417, MisCnt.6409
	cmp	r2, #0	@ tmp8379,
	ldrb	r6, [r7, #2258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8386, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8380, tmp8379
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8380,
	addgt	r3, r3, #1	@,, MisCnt.6425, MisCnt.6417
	cmp	ip, #0	@ tmp8386,
	ldrb	r0, [r7, #2259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8387, tmp8386
	rsb	r1, r1, r6	@ tmp8393, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8387,
	addgt	r3, r3, #1	@,, MisCnt.6433, MisCnt.6425
	cmp	r1, #0	@ tmp8393,
	rsb	ip, r2, r0	@ tmp8400, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8394, tmp8393
	cmp	r1, #2	@ tmp8394,
	addgt	r3, r3, #1	@,, MisCnt.6441, MisCnt.6433
	cmp	ip, #0	@ tmp8400,
	rsblt	ip, ip, #0	@ tmp8401, tmp8400
	cmp	ip, #2	@ tmp8401,
	addgt	r3, r3, #1	@,, tmp8404, MisCnt.6441
	cmp	r3, #2	@ tmp8404,
	bgt	.L50	@,
	ldr	r3, [r7, #2260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #2264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #2268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #2273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #2272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp8422, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8422,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp8415, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8423, tmp8422
	cmp	r6, #0	@ tmp8415,
	rsb	r0, r2, r0	@ tmp8429, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp8416, tmp8415
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8423,
	movle	r3, #0	@, tmp8425
	movgt	r3, #1	@, tmp8425
	ldrb	sl, [r7, #2275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp8416,
	addgt	r3, r3, #1	@,, MisCnt.6467, tmp8425
	cmp	r0, #0	@ tmp8429,
	ldrb	r1, [r7, #2276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp8436, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8430, tmp8429
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8430,
	addgt	r3, r3, #1	@,, MisCnt.6475, MisCnt.6467
	cmp	sl, #0	@ tmp8436,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8443, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp8437, tmp8436
	ldrb	ip, [r7, #2277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp8437,
	addgt	r3, r3, #1	@,, MisCnt.6483, MisCnt.6475
	cmp	r2, #0	@ tmp8443,
	ldrb	r6, [r7, #2278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8450, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8444, tmp8443
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8444,
	addgt	r3, r3, #1	@,, MisCnt.6491, MisCnt.6483
	cmp	ip, #0	@ tmp8450,
	ldrb	r0, [r7, #2279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8451, tmp8450
	rsb	r1, r1, r6	@ tmp8457, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8451,
	addgt	r3, r3, #1	@,, MisCnt.6499, MisCnt.6491
	cmp	r1, #0	@ tmp8457,
	rsb	ip, r2, r0	@ tmp8464, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8458, tmp8457
	cmp	r1, #2	@ tmp8458,
	addgt	r3, r3, #1	@,, MisCnt.6507, MisCnt.6499
	cmp	ip, #0	@ tmp8464,
	rsblt	ip, ip, #0	@ tmp8465, tmp8464
	cmp	ip, #2	@ tmp8465,
	addgt	r3, r3, #1	@,, tmp8468, MisCnt.6507
	cmp	r3, #2	@ tmp8468,
	bgt	.L50	@,
	ldr	r3, [r7, #2280]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r7, #2284]	@ <variable>.Px, <variable>.Px
	mov	r0, sp	@,
	ldr	lr, [r7, #2288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r5, [r7, #2293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r6, [r7, #2292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp8486, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp8486,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r6	@ tmp8479, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #2294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp8487, tmp8486
	cmp	r5, #0	@ tmp8479,
	rsb	r0, r2, r0	@ tmp8493, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp8480, tmp8479
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp8487,
	movle	r3, #0	@, tmp8489
	movgt	r3, #1	@, tmp8489
	ldrb	r6, [r7, #2295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp8480,
	addgt	r3, r3, #1	@,, MisCnt.2082, tmp8489
	cmp	r0, #0	@ tmp8493,
	ldrb	r1, [r7, #2296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp8500, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp8494, tmp8493
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp8494,
	addgt	r3, r3, #1	@,, MisCnt.2092, MisCnt.2082
	cmp	r6, #0	@ tmp8500,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp8507, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp8501, tmp8500
	ldrb	ip, [r7, #2297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp8501,
	addgt	r3, r3, #1	@,, MisCnt.2101, MisCnt.2092
	cmp	r2, #0	@ tmp8507,
	ldrb	r5, [r7, #2298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp8514, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp8508, tmp8507
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp8508,
	addgt	r3, r3, #1	@,, MisCnt.2112, MisCnt.2101
	cmp	ip, #0	@ tmp8514,
	ldrb	r0, [r7, #2299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp8515, tmp8514
	rsb	r1, r1, r5	@ tmp8521, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp8515,
	addgt	r3, r3, #1	@,, MisCnt.2123, MisCnt.2112
	cmp	r1, #0	@ tmp8521,
	rsb	ip, r2, r0	@ tmp8528, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp8522, tmp8521
	cmp	r1, #2	@ tmp8522,
	addgt	r3, r3, #1	@,, MisCnt.2131, MisCnt.2123
	cmp	ip, #0	@ tmp8528,
	rsblt	ip, ip, #0	@ tmp8529, tmp8528
	cmp	ip, #2	@ tmp8529,
	addgt	r3, r3, #1	@,, tmp8532, MisCnt.2131
	cmp	r3, #2	@ tmp8532,
	bgt	.L50	@,
	mov	r0, #29	@ Result,
	b	.L18	@
.L78:
	movw	r6, #:lower16:.LANCHOR0	@ tmp12188,
	movt	r6, #:upper16:.LANCHOR0	@ tmp12188,
	mov	r1, r5	@, pDetPara
	mov	r0, sp	@,
	ldr	ip, [r6, #0]	@ <variable>.Comp, <variable>.Comp
	mov	r8, sp	@ tmp12187,
	ldmib	r6, {sl, lr}	@ phole ldm
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r7, [r6, #13]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #12]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r0, r7	@ tmp1190, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [r6, #14]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1190,
	rsb	lr, r1, r9	@ tmp1183, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1191, tmp1190
	cmp	lr, #0	@ tmp1183,
	rsb	r0, r2, sl	@ tmp1197, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1184, tmp1183
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1191,
	movle	r9, #0	@, tmp1193
	movgt	r9, #1	@, tmp1193
	ldrb	r7, [r6, #15]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1184,
	addgt	r9, r9, #1	@,, MisCnt.7919, tmp1193
	cmp	r0, #0	@ tmp1197,
	ldrb	r1, [r6, #16]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r7	@ tmp1204, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1198, tmp1197
	ldrb	sl, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1198,
	addgt	r9, r9, #1	@,, MisCnt.7927, MisCnt.7919
	cmp	r7, #0	@ tmp1204,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1211, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp1205, tmp1204
	ldrb	ip, [r6, #17]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp1205,
	addgt	r9, r9, #1	@,, MisCnt.7935, MisCnt.7927
	cmp	r2, #0	@ tmp1211,
	ldrb	lr, [r6, #18]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1218, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1212, tmp1211
	ldrb	sl, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1212,
	addgt	r9, r9, #1	@,, MisCnt.7943, MisCnt.7935
	cmp	ip, #0	@ tmp1218,
	ldrb	r0, [r6, #19]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, sl, lr	@ tmp1225, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1219, tmp1218
	ldrb	r7, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1219,
	addgt	r9, r9, #1	@,, MisCnt.7951, MisCnt.7943
	cmp	r1, #0	@ tmp1225,
	rsb	r2, r7, r0	@ tmp1232, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1226, tmp1225
	cmp	r1, #2	@ tmp1226,
	addgt	r9, r9, #1	@,, MisCnt.7959, MisCnt.7951
	cmp	r2, #0	@ tmp1232,
	rsblt	r2, r2, #0	@ tmp1233, tmp1232
	cmp	r2, #2	@ tmp1233,
	addgt	r9, r9, #1	@,, tmp1236, MisCnt.7959
	cmp	r9, #2	@ tmp1236,
	bgt	.L24	@,
	ldr	ip, [r6, #20]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r7, [r6, #24]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #28]	@ <variable>.Py, <variable>.Py
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r7, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r9, [r6, #33]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r0, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r6, #32]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r0, r9	@ tmp1254, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1254,
	ldrb	r7, [r6, #34]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, sl	@ tmp1247, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1255, tmp1254
	cmp	lr, #0	@ tmp1247,
	rsb	r0, r2, r7	@ tmp1261, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1248, tmp1247
	ldrb	r9, [r6, #35]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1255,
	movle	r3, #0	@, tmp1257
	movgt	r3, #1	@, tmp1257
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1248,
	addgt	r3, r3, #1	@,, MisCnt.7985, tmp1257
	cmp	r0, #0	@ tmp1261,
	ldrb	r1, [r6, #36]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r7, ip, r9	@ tmp1268, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1262, tmp1261
	ldrb	sl, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1262,
	addgt	r3, r3, #1	@,, MisCnt.7993, MisCnt.7985
	cmp	r7, #0	@ tmp1268,
	ldrb	r9, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, sl, r1	@ tmp1275, SmpPat.Pix, <variable>.Pix
	rsblt	r7, r7, #0	@ tmp1269, tmp1268
	ldrb	ip, [r6, #37]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r7, #2	@ tmp1269,
	addgt	r3, r3, #1	@,, MisCnt.8001, MisCnt.7993
	cmp	r2, #0	@ tmp1275,
	ldrb	lr, [r6, #38]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r9, ip	@ tmp1282, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1276, tmp1275
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1276,
	addgt	r3, r3, #1	@,, MisCnt.8009, MisCnt.8001
	cmp	sl, #0	@ tmp1282,
	ldrb	r0, [r6, #39]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, lr	@ tmp1289, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1283, tmp1282
	ldrb	r7, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1283,
	addgt	r3, r3, #1	@,, MisCnt.8017, MisCnt.8009
	cmp	r9, #0	@ tmp1289,
	rsb	r2, r7, r0	@ tmp1296, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1290, tmp1289
	cmp	r9, #2	@ tmp1290,
	addgt	r3, r3, #1	@,, MisCnt.8025, MisCnt.8017
	cmp	r2, #0	@ tmp1296,
	rsblt	r2, r2, #0	@ tmp1297, tmp1296
	cmp	r2, #2	@ tmp1297,
	addgt	r3, r3, #1	@,, tmp1300, MisCnt.8025
	cmp	r3, #2	@ tmp1300,
	bgt	.L24	@,
	ldr	r7, [r6, #40]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r6, #44]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #48]	@ <variable>.Py, <variable>.Py
	str	r7, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	mov	r7, r6	@ tmp1301, tmp12188
	stmib	sp, {sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #53]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #52]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp1318, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1318,
	ldrb	sl, [r6, #54]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1311, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1319, tmp1318
	cmp	lr, #0	@ tmp1311,
	rsb	r0, r2, sl	@ tmp1325, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1312, tmp1311
	ldrb	r9, [r6, #55]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1319,
	movle	r3, #0	@, tmp1321
	movgt	r3, #1	@, tmp1321
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1312,
	addgt	r3, r3, #1	@,, MisCnt.8051, tmp1321
	cmp	r0, #0	@ tmp1325,
	ldrb	r1, [r6, #56]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp1332, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1326, tmp1325
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1326,
	addgt	r3, r3, #1	@,, MisCnt.8059, MisCnt.8051
	cmp	sl, #0	@ tmp1332,
	ldrb	r9, [r6, #57]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1339, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1333, tmp1332
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1333,
	addgt	r3, r3, #1	@,, MisCnt.8067, MisCnt.8059
	cmp	r2, #0	@ tmp1339,
	ldrb	lr, [r6, #58]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp1346, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1340, tmp1339
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1340,
	addgt	r3, r3, #1	@,, MisCnt.8075, MisCnt.8067
	cmp	ip, #0	@ tmp1346,
	ldrb	r0, [r6, #59]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, r1, lr	@ tmp1353, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1347, tmp1346
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1347,
	addgt	r3, r3, #1	@,, MisCnt.8083, MisCnt.8075
	cmp	sl, #0	@ tmp1353,
	rsb	r2, r9, r0	@ tmp1360, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1354, tmp1353
	cmp	sl, #2	@ tmp1354,
	addgt	r3, r3, #1	@,, MisCnt.8091, MisCnt.8083
	cmp	r2, #0	@ tmp1360,
	rsblt	r2, r2, #0	@ tmp1361, tmp1360
	cmp	r2, #2	@ tmp1361,
	addgt	r3, r3, #1	@,, tmp1364, MisCnt.8091
	cmp	r3, #2	@ tmp1364,
	bgt	.L24	@,
	ldr	r2, [r6, #60]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r6, #64]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #68]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #73]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #72]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp1382, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1382,
	ldrb	sl, [r6, #74]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1375, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1383, tmp1382
	cmp	lr, #0	@ tmp1375,
	rsb	r0, r2, sl	@ tmp1389, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1376, tmp1375
	ldrb	r9, [r6, #75]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1383,
	movle	r3, #0	@, tmp1385
	movgt	r3, #1	@, tmp1385
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1376,
	addgt	r3, r3, #1	@,, MisCnt.8117, tmp1385
	cmp	r0, #0	@ tmp1389,
	ldrb	r1, [r6, #76]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp1396, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1390, tmp1389
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1390,
	addgt	r3, r3, #1	@,, MisCnt.8125, MisCnt.8117
	cmp	sl, #0	@ tmp1396,
	ldrb	r9, [r6, #77]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1403, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp1397, tmp1396
	ldrb	lr, [r6, #78]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1397,
	addgt	r3, r3, #1	@,, MisCnt.8133, MisCnt.8125
	cmp	r2, #0	@ tmp1403,
	rsb	ip, r0, r9	@ tmp1410, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1404, tmp1403
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1404,
	addgt	r3, r3, #1	@,, MisCnt.8141, MisCnt.8133
	cmp	ip, #0	@ tmp1410,
	ldrb	r0, [r6, #79]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1417, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1411, tmp1410
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1411,
	addgt	r3, r3, #1	@,, MisCnt.8149, MisCnt.8141
	cmp	r1, #0	@ tmp1417,
	rsb	r2, r9, r0	@ tmp1424, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1418, tmp1417
	cmp	r1, #2	@ tmp1418,
	addgt	r3, r3, #1	@,, MisCnt.8157, MisCnt.8149
	cmp	r2, #0	@ tmp1424,
	rsblt	r2, r2, #0	@ tmp1425, tmp1424
	cmp	r2, #2	@ tmp1425,
	addgt	r3, r3, #1	@,, tmp1428, MisCnt.8157
	cmp	r3, #2	@ tmp1428,
	bgt	.L24	@,
	ldr	r3, [r6, #80]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #84]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #88]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r6, #93]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #92]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp1446, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1446,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp1439, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #94]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1447, tmp1446
	cmp	sl, #0	@ tmp1439,
	rsb	r0, r2, r0	@ tmp1453, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1440, tmp1439
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1447,
	movle	r3, #0	@, tmp1449
	movgt	r3, #1	@, tmp1449
	ldrb	r9, [r6, #95]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1440,
	addgt	r3, r3, #1	@,, MisCnt.2484, tmp1449
	cmp	r0, #0	@ tmp1453,
	ldrb	r1, [r6, #96]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp1460, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1454, tmp1453
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1454,
	addgt	r3, r3, #1	@,, MisCnt.2494, MisCnt.2484
	cmp	r9, #0	@ tmp1460,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1467, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1461, tmp1460
	ldrb	ip, [r6, #97]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp1461,
	addgt	r3, r3, #1	@,, MisCnt.2503, MisCnt.2494
	cmp	r2, #0	@ tmp1467,
	ldrb	sl, [r6, #98]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1474, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1468, tmp1467
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1468,
	addgt	r3, r3, #1	@,, MisCnt.2512, MisCnt.2503
	cmp	ip, #0	@ tmp1474,
	ldrb	r0, [r6, #99]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1475, tmp1474
	rsb	r1, r1, sl	@ tmp1481, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1475,
	addgt	r3, r3, #1	@,, MisCnt.2521, MisCnt.2512
	cmp	r1, #0	@ tmp1481,
	rsb	ip, r2, r0	@ tmp1488, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1482, tmp1481
	cmp	r1, #2	@ tmp1482,
	addgt	r3, r3, #1	@,, MisCnt.2529, MisCnt.2521
	cmp	ip, #0	@ tmp1488,
	rsblt	ip, ip, #0	@ tmp1489, tmp1488
	cmp	ip, #2	@ tmp1489,
	addgt	r3, r3, #1	@,, tmp1492, MisCnt.2529
	cmp	r3, #2	@ tmp1492,
	movle	r0, #1	@ Result,
	ble	.L18	@,
.L24:
	ldr	ip, [r6, #100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #108]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp1493,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp1493,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp1510, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp1510,
	ldrb	r9, [r6, #114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp1503, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp1511, tmp1510
	cmp	lr, #0	@ tmp1503,
	rsblt	lr, lr, #0	@ tmp1504, tmp1503
	ldrb	r0, [r6, #115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1511,
	movle	r1, #0	@, tmp1513
	movgt	r1, #1	@, tmp1513
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp1517, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1504,
	addgt	r1, r1, #1	@,, MisCnt.8183, tmp1513
	cmp	sl, #0	@ tmp1517,
	rsb	r9, r3, r0	@ tmp1524, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp1518, tmp1517
	ldrb	ip, [r6, #116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1518,
	movle	sl, r1	@, MisCnt.8191, MisCnt.8183
	addgt	sl, r1, #1	@,, MisCnt.8191, MisCnt.8183
	cmp	r9, #0	@ tmp1524,
	ldrb	r0, [r6, #117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp1531, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1525, tmp1524
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp1525,
	movle	r3, sl	@, MisCnt.8199, MisCnt.8191
	addgt	r3, sl, #1	@,, MisCnt.8199, MisCnt.8191
	cmp	ip, #0	@ tmp1531,
	ldrb	lr, [r6, #118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp1538, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1532, tmp1531
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1532,
	movle	ip, r3	@, MisCnt.8207, MisCnt.8199
	addgt	ip, r3, #1	@,, MisCnt.8207, MisCnt.8199
	cmp	r9, #0	@ tmp1538,
	ldrb	r0, [r6, #119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1539, tmp1538
	rsb	sl, r2, lr	@ tmp1545, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp1539,
	movle	r1, ip	@, MisCnt.8215, MisCnt.8207
	addgt	r1, ip, #1	@,, MisCnt.8215, MisCnt.8207
	cmp	sl, #0	@ tmp1545,
	rsb	r9, r3, r0	@ tmp1552, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1546, tmp1545
	cmp	sl, #2	@ tmp1546,
	movle	ip, r1	@, MisCnt.8223, MisCnt.8215
	addgt	ip, r1, #1	@,, MisCnt.8223, MisCnt.8215
	cmp	r9, #0	@ tmp1552,
	rsblt	r9, r9, #0	@ tmp1553, tmp1552
	cmp	r9, #2	@ tmp1553,
	movle	r0, ip	@, tmp1556, MisCnt.8223
	addgt	r0, ip, #1	@,, tmp1556, MisCnt.8223
	cmp	r0, #2	@ tmp1556,
	bgt	.L25	@,
	ldr	r2, [r7, #120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #128]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1574, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1574,
	ldrb	r9, [r7, #134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1567, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1575, tmp1574
	cmp	lr, #0	@ tmp1567,
	rsb	r0, r2, r9	@ tmp1581, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1568, tmp1567
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1575,
	movle	r3, #0	@, tmp1577
	movgt	r3, #1	@, tmp1577
	ldrb	sl, [r7, #135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1568,
	addgt	r3, r3, #1	@,, MisCnt.8249, tmp1577
	cmp	r0, #0	@ tmp1581,
	ldrb	r1, [r7, #136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp1588, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1582, tmp1581
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1582,
	addgt	r3, r3, #1	@,, MisCnt.8257, MisCnt.8249
	cmp	sl, #0	@ tmp1588,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp1595, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1589, tmp1588
	ldrb	ip, [r7, #137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1589,
	addgt	r3, r3, #1	@,, MisCnt.8265, MisCnt.8257
	cmp	r2, #0	@ tmp1595,
	ldrb	lr, [r7, #138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp1602, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1596, tmp1595
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1596,
	addgt	r3, r3, #1	@,, MisCnt.8273, MisCnt.8265
	cmp	r9, #0	@ tmp1602,
	ldrb	r0, [r7, #139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1609, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1603, tmp1602
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp1603,
	addgt	r3, r3, #1	@,, MisCnt.8281, MisCnt.8273
	cmp	r1, #0	@ tmp1609,
	rsb	sl, r2, r0	@ tmp1616, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1610, tmp1609
	cmp	r1, #2	@ tmp1610,
	addgt	r3, r3, #1	@,, MisCnt.8289, MisCnt.8281
	cmp	sl, #0	@ tmp1616,
	rsblt	sl, sl, #0	@ tmp1617, tmp1616
	cmp	sl, #2	@ tmp1617,
	addgt	r3, r3, #1	@,, tmp1620, MisCnt.8289
	cmp	r3, #2	@ tmp1620,
	bgt	.L25	@,
	ldr	r2, [r7, #140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #148]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp1638, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1638,
	ldrb	sl, [r7, #154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1631, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1639, tmp1638
	cmp	lr, #0	@ tmp1631,
	rsb	r0, r2, sl	@ tmp1645, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1632, tmp1631
	ldrb	r9, [r7, #155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1639,
	movle	r3, #0	@, tmp1641
	movgt	r3, #1	@, tmp1641
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1632,
	addgt	r3, r3, #1	@,, MisCnt.8315, tmp1641
	cmp	r0, #0	@ tmp1645,
	ldrb	r1, [r7, #156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp1652, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1646, tmp1645
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1646,
	addgt	r3, r3, #1	@,, MisCnt.8323, MisCnt.8315
	cmp	sl, #0	@ tmp1652,
	ldrb	r9, [r7, #157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1659, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1653, tmp1652
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1653,
	addgt	r3, r3, #1	@,, MisCnt.8331, MisCnt.8323
	cmp	r2, #0	@ tmp1659,
	ldrb	lr, [r7, #158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp1666, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1660, tmp1659
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1660,
	addgt	r3, r3, #1	@,, MisCnt.8339, MisCnt.8331
	cmp	ip, #0	@ tmp1666,
	ldrb	r0, [r7, #159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1673, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1667, tmp1666
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1667,
	addgt	r3, r3, #1	@,, MisCnt.8347, MisCnt.8339
	cmp	r1, #0	@ tmp1673,
	rsb	sl, r9, r0	@ tmp1680, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1674, tmp1673
	cmp	r1, #2	@ tmp1674,
	addgt	r3, r3, #1	@,, MisCnt.8355, MisCnt.8347
	cmp	sl, #0	@ tmp1680,
	rsblt	sl, sl, #0	@ tmp1681, tmp1680
	cmp	sl, #2	@ tmp1681,
	addgt	r3, r3, #1	@,, tmp1684, MisCnt.8355
	cmp	r3, #2	@ tmp1684,
	bgt	.L25	@,
	ldr	r2, [r7, #160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #164]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #168]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1702, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1702,
	ldrb	r9, [r7, #174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1695, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1703, tmp1702
	cmp	lr, #0	@ tmp1695,
	rsb	r0, r2, r9	@ tmp1709, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1696, tmp1695
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1703,
	movle	r3, #0	@, tmp1705
	movgt	r3, #1	@, tmp1705
	ldrb	sl, [r7, #175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1696,
	addgt	r3, r3, #1	@,, MisCnt.8381, tmp1705
	cmp	r0, #0	@ tmp1709,
	ldrb	r1, [r7, #176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp1716, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1710, tmp1709
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1710,
	addgt	r3, r3, #1	@,, MisCnt.8389, MisCnt.8381
	cmp	sl, #0	@ tmp1716,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp1723, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1717, tmp1716
	ldrb	ip, [r7, #177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1717,
	addgt	r3, r3, #1	@,, MisCnt.8397, MisCnt.8389
	cmp	r2, #0	@ tmp1723,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp1730, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1724, tmp1723
	ldrb	lr, [r7, #178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp1724,
	addgt	r3, r3, #1	@,, MisCnt.8405, MisCnt.8397
	cmp	ip, #0	@ tmp1730,
	ldrb	r0, [r7, #179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp1737, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1731, tmp1730
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1731,
	addgt	r3, r3, #1	@,, MisCnt.8413, MisCnt.8405
	cmp	r1, #0	@ tmp1737,
	rsb	r9, sl, r0	@ tmp1744, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1738, tmp1737
	cmp	r1, #2	@ tmp1738,
	addgt	r3, r3, #1	@,, MisCnt.8421, MisCnt.8413
	cmp	r9, #0	@ tmp1744,
	rsblt	r9, r9, #0	@ tmp1745, tmp1744
	cmp	r9, #2	@ tmp1745,
	addgt	r3, r3, #1	@,, tmp1748, MisCnt.8421
	cmp	r3, #2	@ tmp1748,
	bgt	.L25	@,
	ldr	r3, [r7, #180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #184]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp1766, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1766,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp1759, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp1767, tmp1766
	cmp	sl, #0	@ tmp1759,
	rsb	r0, r2, r0	@ tmp1773, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1760, tmp1759
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1767,
	movle	r3, #0	@, tmp1769
	movgt	r3, #1	@, tmp1769
	ldrb	r9, [r7, #195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1760,
	addgt	r3, r3, #1	@,, MisCnt.2547, tmp1769
	cmp	r0, #0	@ tmp1773,
	ldrb	r1, [r7, #196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp1780, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1774, tmp1773
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1774,
	addgt	r3, r3, #1	@,, MisCnt.2555, MisCnt.2547
	cmp	r9, #0	@ tmp1780,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp1787, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1781, tmp1780
	ldrb	ip, [r7, #197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp1781,
	addgt	r3, r3, #1	@,, MisCnt.2565, MisCnt.2555
	cmp	r2, #0	@ tmp1787,
	ldrb	sl, [r7, #198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp1794, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1788, tmp1787
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1788,
	addgt	r3, r3, #1	@,, MisCnt.2576, MisCnt.2565
	cmp	ip, #0	@ tmp1794,
	ldrb	r0, [r7, #199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1795, tmp1794
	rsb	r1, r1, sl	@ tmp1801, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1795,
	addgt	r3, r3, #1	@,, MisCnt.2587, MisCnt.2576
	cmp	r1, #0	@ tmp1801,
	rsb	ip, r2, r0	@ tmp1808, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1802, tmp1801
	cmp	r1, #2	@ tmp1802,
	addgt	r3, r3, #1	@,, MisCnt.2595, MisCnt.2587
	cmp	ip, #0	@ tmp1808,
	rsblt	ip, ip, #0	@ tmp1809, tmp1808
	cmp	ip, #2	@ tmp1809,
	addgt	r3, r3, #1	@,, tmp1812, MisCnt.2595
	cmp	r3, #2	@ tmp1812,
	movle	r0, #2	@ Result,
	ble	.L18	@,
.L25:
	ldr	ip, [r6, #200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #208]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp1813,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp1813,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp1830, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp1830,
	ldrb	r9, [r6, #214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp1823, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp1831, tmp1830
	cmp	lr, #0	@ tmp1823,
	rsblt	lr, lr, #0	@ tmp1824, tmp1823
	ldrb	r0, [r6, #215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1831,
	movle	r1, #0	@, tmp1833
	movgt	r1, #1	@, tmp1833
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp1837, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1824,
	addgt	r1, r1, #1	@,, MisCnt.8447, tmp1833
	cmp	sl, #0	@ tmp1837,
	rsb	r9, r3, r0	@ tmp1844, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp1838, tmp1837
	ldrb	ip, [r6, #216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1838,
	movle	sl, r1	@, MisCnt.8455, MisCnt.8447
	addgt	sl, r1, #1	@,, MisCnt.8455, MisCnt.8447
	cmp	r9, #0	@ tmp1844,
	ldrb	r0, [r6, #217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp1851, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1845, tmp1844
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp1845,
	movle	r3, sl	@, MisCnt.8463, MisCnt.8455
	addgt	r3, sl, #1	@,, MisCnt.8463, MisCnt.8455
	cmp	ip, #0	@ tmp1851,
	ldrb	lr, [r6, #218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp1858, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1852, tmp1851
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1852,
	movle	ip, r3	@, MisCnt.8471, MisCnt.8463
	addgt	ip, r3, #1	@,, MisCnt.8471, MisCnt.8463
	cmp	r9, #0	@ tmp1858,
	ldrb	r0, [r6, #219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1859, tmp1858
	rsb	sl, r2, lr	@ tmp1865, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp1859,
	movle	r1, ip	@, MisCnt.8479, MisCnt.8471
	addgt	r1, ip, #1	@,, MisCnt.8479, MisCnt.8471
	cmp	sl, #0	@ tmp1865,
	rsb	r9, r3, r0	@ tmp1872, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1866, tmp1865
	cmp	sl, #2	@ tmp1866,
	movle	ip, r1	@, MisCnt.8487, MisCnt.8479
	addgt	ip, r1, #1	@,, MisCnt.8487, MisCnt.8479
	cmp	r9, #0	@ tmp1872,
	rsblt	r9, r9, #0	@ tmp1873, tmp1872
	cmp	r9, #2	@ tmp1873,
	movle	r0, ip	@, tmp1876, MisCnt.8487
	addgt	r0, ip, #1	@,, tmp1876, MisCnt.8487
	cmp	r0, #2	@ tmp1876,
	bgt	.L26	@,
	ldr	r2, [r7, #220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #228]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp1894, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1894,
	ldrb	r9, [r7, #234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1887, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1895, tmp1894
	cmp	lr, #0	@ tmp1887,
	rsb	r0, r2, r9	@ tmp1901, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1888, tmp1887
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp1895,
	movle	r3, #0	@, tmp1897
	movgt	r3, #1	@, tmp1897
	ldrb	sl, [r7, #235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp1888,
	addgt	r3, r3, #1	@,, MisCnt.8513, tmp1897
	cmp	r0, #0	@ tmp1901,
	ldrb	r1, [r7, #236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp1908, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1902, tmp1901
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1902,
	addgt	r3, r3, #1	@,, MisCnt.8521, MisCnt.8513
	cmp	sl, #0	@ tmp1908,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp1915, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1909, tmp1908
	ldrb	ip, [r7, #237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp1909,
	addgt	r3, r3, #1	@,, MisCnt.8529, MisCnt.8521
	cmp	r2, #0	@ tmp1915,
	ldrb	lr, [r7, #238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp1922, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1916, tmp1915
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1916,
	addgt	r3, r3, #1	@,, MisCnt.8537, MisCnt.8529
	cmp	r9, #0	@ tmp1922,
	ldrb	r0, [r7, #239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1929, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp1923, tmp1922
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp1923,
	addgt	r3, r3, #1	@,, MisCnt.8545, MisCnt.8537
	cmp	r1, #0	@ tmp1929,
	rsb	sl, r2, r0	@ tmp1936, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1930, tmp1929
	cmp	r1, #2	@ tmp1930,
	addgt	r3, r3, #1	@,, MisCnt.8553, MisCnt.8545
	cmp	sl, #0	@ tmp1936,
	rsblt	sl, sl, #0	@ tmp1937, tmp1936
	cmp	sl, #2	@ tmp1937,
	addgt	r3, r3, #1	@,, tmp1940, MisCnt.8553
	cmp	r3, #2	@ tmp1940,
	bgt	.L26	@,
	ldr	r2, [r7, #240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #248]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp1958, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp1958,
	ldrb	sl, [r7, #254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp1951, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp1959, tmp1958
	cmp	lr, #0	@ tmp1951,
	rsb	r0, r2, sl	@ tmp1965, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp1952, tmp1951
	ldrb	r9, [r7, #255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp1959,
	movle	r3, #0	@, tmp1961
	movgt	r3, #1	@, tmp1961
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp1952,
	addgt	r3, r3, #1	@,, MisCnt.8579, tmp1961
	cmp	r0, #0	@ tmp1965,
	ldrb	r1, [r7, #256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp1972, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp1966, tmp1965
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp1966,
	addgt	r3, r3, #1	@,, MisCnt.8587, MisCnt.8579
	cmp	sl, #0	@ tmp1972,
	ldrb	r9, [r7, #257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp1979, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp1973, tmp1972
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp1973,
	addgt	r3, r3, #1	@,, MisCnt.8595, MisCnt.8587
	cmp	r2, #0	@ tmp1979,
	ldrb	lr, [r7, #258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp1986, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp1980, tmp1979
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp1980,
	addgt	r3, r3, #1	@,, MisCnt.8603, MisCnt.8595
	cmp	ip, #0	@ tmp1986,
	ldrb	r0, [r7, #259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp1993, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp1987, tmp1986
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp1987,
	addgt	r3, r3, #1	@,, MisCnt.8611, MisCnt.8603
	cmp	r1, #0	@ tmp1993,
	rsb	sl, r9, r0	@ tmp2000, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp1994, tmp1993
	cmp	r1, #2	@ tmp1994,
	addgt	r3, r3, #1	@,, MisCnt.8619, MisCnt.8611
	cmp	sl, #0	@ tmp2000,
	rsblt	sl, sl, #0	@ tmp2001, tmp2000
	cmp	sl, #2	@ tmp2001,
	addgt	r3, r3, #1	@,, tmp2004, MisCnt.8619
	cmp	r3, #2	@ tmp2004,
	bgt	.L26	@,
	ldr	r2, [r7, #260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #268]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2022, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2022,
	ldrb	r9, [r7, #274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2015, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2023, tmp2022
	cmp	lr, #0	@ tmp2015,
	rsb	r0, r2, r9	@ tmp2029, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2016, tmp2015
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2023,
	movle	r3, #0	@, tmp2025
	movgt	r3, #1	@, tmp2025
	ldrb	sl, [r7, #275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2016,
	addgt	r3, r3, #1	@,, MisCnt.8645, tmp2025
	cmp	r0, #0	@ tmp2029,
	ldrb	r1, [r7, #276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2036, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2030, tmp2029
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2030,
	addgt	r3, r3, #1	@,, MisCnt.8653, MisCnt.8645
	cmp	sl, #0	@ tmp2036,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp2043, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2037, tmp2036
	ldrb	ip, [r7, #277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2037,
	addgt	r3, r3, #1	@,, MisCnt.8661, MisCnt.8653
	cmp	r2, #0	@ tmp2043,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp2050, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2044, tmp2043
	ldrb	lr, [r7, #278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp2044,
	addgt	r3, r3, #1	@,, MisCnt.8669, MisCnt.8661
	cmp	ip, #0	@ tmp2050,
	ldrb	r0, [r7, #279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp2057, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2051, tmp2050
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2051,
	addgt	r3, r3, #1	@,, MisCnt.8677, MisCnt.8669
	cmp	r1, #0	@ tmp2057,
	rsb	r9, sl, r0	@ tmp2064, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2058, tmp2057
	cmp	r1, #2	@ tmp2058,
	addgt	r3, r3, #1	@,, MisCnt.8685, MisCnt.8677
	cmp	r9, #0	@ tmp2064,
	rsblt	r9, r9, #0	@ tmp2065, tmp2064
	cmp	r9, #2	@ tmp2065,
	addgt	r3, r3, #1	@,, tmp2068, MisCnt.8685
	cmp	r3, #2	@ tmp2068,
	bgt	.L26	@,
	ldr	r3, [r7, #280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #284]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp2086, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2086,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp2079, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2087, tmp2086
	cmp	sl, #0	@ tmp2079,
	rsb	r0, r2, r0	@ tmp2093, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2080, tmp2079
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2087,
	movle	r3, #0	@, tmp2089
	movgt	r3, #1	@, tmp2089
	ldrb	r9, [r7, #295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2080,
	addgt	r3, r3, #1	@,, MisCnt.2614, tmp2089
	cmp	r0, #0	@ tmp2093,
	ldrb	r1, [r7, #296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp2100, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2094, tmp2093
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2094,
	addgt	r3, r3, #1	@,, MisCnt.2625, MisCnt.2614
	cmp	r9, #0	@ tmp2100,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2107, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp2101, tmp2100
	ldrb	ip, [r7, #297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp2101,
	addgt	r3, r3, #1	@,, MisCnt.2636, MisCnt.2625
	cmp	r2, #0	@ tmp2107,
	ldrb	sl, [r7, #298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2114, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2108, tmp2107
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2108,
	addgt	r3, r3, #1	@,, MisCnt.2645, MisCnt.2636
	cmp	ip, #0	@ tmp2114,
	ldrb	r0, [r7, #299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2115, tmp2114
	rsb	r1, r1, sl	@ tmp2121, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2115,
	addgt	r3, r3, #1	@,, MisCnt.2656, MisCnt.2645
	cmp	r1, #0	@ tmp2121,
	rsb	ip, r2, r0	@ tmp2128, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2122, tmp2121
	cmp	r1, #2	@ tmp2122,
	addgt	r3, r3, #1	@,, MisCnt.2667, MisCnt.2656
	cmp	ip, #0	@ tmp2128,
	rsblt	ip, ip, #0	@ tmp2129, tmp2128
	cmp	ip, #2	@ tmp2129,
	addgt	r3, r3, #1	@,, tmp2132, MisCnt.2667
	cmp	r3, #2	@ tmp2132,
	movle	r0, #3	@ Result,
	ble	.L18	@,
.L26:
	ldr	ip, [r6, #300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r6, #304]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #308]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp2133,
	str	ip, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp2133,
	stmib	sp, {r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r1, [r6, #313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r2, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r6, #312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r3, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r2, r1	@ tmp2150, SmpPat.Pix, <variable>.Pix
	cmp	sl, #0	@ tmp2150,
	ldrb	r9, [r6, #314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r3, r0	@ tmp2143, SmpPat.Pix, <variable>.Pix
	ldrb	ip, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp2151, tmp2150
	cmp	lr, #0	@ tmp2143,
	rsblt	lr, lr, #0	@ tmp2144, tmp2143
	ldrb	r0, [r6, #315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2151,
	movle	r1, #0	@, tmp2153
	movgt	r1, #1	@, tmp2153
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, ip, r9	@ tmp2157, SmpPat.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2144,
	addgt	r1, r1, #1	@,, MisCnt.8711, tmp2153
	cmp	sl, #0	@ tmp2157,
	rsb	r9, r3, r0	@ tmp2164, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	sl, sl, #0	@ tmp2158, tmp2157
	ldrb	ip, [r6, #316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2158,
	movle	sl, r1	@, MisCnt.8719, MisCnt.8711
	addgt	sl, r1, #1	@,, MisCnt.8719, MisCnt.8711
	cmp	r9, #0	@ tmp2164,
	ldrb	r0, [r6, #317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r2, ip	@ tmp2171, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp2165, tmp2164
	ldrb	r1, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp2165,
	movle	r3, sl	@, MisCnt.8727, MisCnt.8719
	addgt	r3, sl, #1	@,, MisCnt.8727, MisCnt.8719
	cmp	ip, #0	@ tmp2171,
	ldrb	lr, [r6, #318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r1, r0	@ tmp2178, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2172, tmp2171
	ldrb	r2, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2172,
	movle	ip, r3	@, MisCnt.8735, MisCnt.8727
	addgt	ip, r3, #1	@,, MisCnt.8735, MisCnt.8727
	cmp	r9, #0	@ tmp2178,
	ldrb	r0, [r6, #319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp2179, tmp2178
	rsb	sl, r2, lr	@ tmp2185, SmpPat.Pix, <variable>.Pix
	ldrb	r3, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp2179,
	movle	r1, ip	@, MisCnt.8743, MisCnt.8735
	addgt	r1, ip, #1	@,, MisCnt.8743, MisCnt.8735
	cmp	sl, #0	@ tmp2185,
	rsb	r9, r3, r0	@ tmp2192, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2186, tmp2185
	cmp	sl, #2	@ tmp2186,
	movle	ip, r1	@, MisCnt.8751, MisCnt.8743
	addgt	ip, r1, #1	@,, MisCnt.8751, MisCnt.8743
	cmp	r9, #0	@ tmp2192,
	rsblt	r9, r9, #0	@ tmp2193, tmp2192
	cmp	r9, #2	@ tmp2193,
	movle	r0, ip	@, tmp2196, MisCnt.8751
	addgt	r0, ip, #1	@,, tmp2196, MisCnt.8751
	cmp	r0, #2	@ tmp2196,
	bgt	.L27	@,
	ldr	r2, [r7, #320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #328]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2214, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2214,
	ldrb	r9, [r7, #334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2207, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2215, tmp2214
	cmp	lr, #0	@ tmp2207,
	rsb	r0, r2, r9	@ tmp2221, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2208, tmp2207
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2215,
	movle	r3, #0	@, tmp2217
	movgt	r3, #1	@, tmp2217
	ldrb	sl, [r7, #335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2208,
	addgt	r3, r3, #1	@,, MisCnt.8777, tmp2217
	cmp	r0, #0	@ tmp2221,
	ldrb	r1, [r7, #336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2228, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2222, tmp2221
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2222,
	addgt	r3, r3, #1	@,, MisCnt.8785, MisCnt.8777
	cmp	sl, #0	@ tmp2228,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp2235, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2229, tmp2228
	ldrb	ip, [r7, #337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2229,
	addgt	r3, r3, #1	@,, MisCnt.8793, MisCnt.8785
	cmp	r2, #0	@ tmp2235,
	ldrb	lr, [r7, #338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, r0, ip	@ tmp2242, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2236, tmp2235
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2236,
	addgt	r3, r3, #1	@,, MisCnt.8801, MisCnt.8793
	cmp	r9, #0	@ tmp2242,
	ldrb	r0, [r7, #339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2249, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp2243, tmp2242
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r9, #2	@ tmp2243,
	addgt	r3, r3, #1	@,, MisCnt.8809, MisCnt.8801
	cmp	r1, #0	@ tmp2249,
	rsb	sl, r2, r0	@ tmp2256, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2250, tmp2249
	cmp	r1, #2	@ tmp2250,
	addgt	r3, r3, #1	@,, MisCnt.8817, MisCnt.8809
	cmp	sl, #0	@ tmp2256,
	rsblt	sl, sl, #0	@ tmp2257, tmp2256
	cmp	sl, #2	@ tmp2257,
	addgt	r3, r3, #1	@,, tmp2260, MisCnt.8817
	cmp	r3, #2	@ tmp2260,
	bgt	.L27	@,
	ldr	r2, [r7, #340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	sl, [r7, #344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #348]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, sl, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r9, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, r9, ip	@ tmp2278, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2278,
	ldrb	sl, [r7, #354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2271, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2279, tmp2278
	cmp	lr, #0	@ tmp2271,
	rsb	r0, r2, sl	@ tmp2285, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2272, tmp2271
	ldrb	r9, [r7, #355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r3, #2	@ tmp2279,
	movle	r3, #0	@, tmp2281
	movgt	r3, #1	@, tmp2281
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	lr, #2	@ tmp2272,
	addgt	r3, r3, #1	@,, MisCnt.8843, tmp2281
	cmp	r0, #0	@ tmp2285,
	ldrb	r1, [r7, #356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, r9	@ tmp2292, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2286, tmp2285
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2286,
	addgt	r3, r3, #1	@,, MisCnt.8851, MisCnt.8843
	cmp	sl, #0	@ tmp2292,
	ldrb	r9, [r7, #357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r2, r2, r1	@ tmp2299, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2293, tmp2292
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	sl, #2	@ tmp2293,
	addgt	r3, r3, #1	@,, MisCnt.8859, MisCnt.8851
	cmp	r2, #0	@ tmp2299,
	ldrb	lr, [r7, #358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, r9	@ tmp2306, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2300, tmp2299
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2300,
	addgt	r3, r3, #1	@,, MisCnt.8867, MisCnt.8859
	cmp	ip, #0	@ tmp2306,
	ldrb	r0, [r7, #359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2313, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2307, tmp2306
	ldrb	r9, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2307,
	addgt	r3, r3, #1	@,, MisCnt.8875, MisCnt.8867
	cmp	r1, #0	@ tmp2313,
	rsb	sl, r9, r0	@ tmp2320, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2314, tmp2313
	cmp	r1, #2	@ tmp2314,
	addgt	r3, r3, #1	@,, MisCnt.8883, MisCnt.8875
	cmp	sl, #0	@ tmp2320,
	rsblt	sl, sl, #0	@ tmp2321, tmp2320
	cmp	sl, #2	@ tmp2321,
	addgt	r3, r3, #1	@,, tmp2324, MisCnt.8883
	cmp	r3, #2	@ tmp2324,
	bgt	.L27	@,
	ldr	r2, [r7, #360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r9, [r7, #364]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #368]	@ <variable>.Py, <variable>.Py
	stmia	sp, {r2, r9, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r0, [r7, #372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2342, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2342,
	ldrb	r9, [r7, #374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	lr, r1, r0	@ tmp2335, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsblt	r3, r3, #0	@ tmp2343, tmp2342
	cmp	lr, #0	@ tmp2335,
	rsb	r0, r2, r9	@ tmp2349, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2336, tmp2335
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2343,
	movle	r3, #0	@, tmp2345
	movgt	r3, #1	@, tmp2345
	ldrb	sl, [r7, #375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2336,
	addgt	r3, r3, #1	@,, MisCnt.8909, tmp2345
	cmp	r0, #0	@ tmp2349,
	ldrb	r1, [r7, #376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2356, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2350, tmp2349
	ldrb	r9, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2350,
	addgt	r3, r3, #1	@,, MisCnt.8917, MisCnt.8909
	cmp	sl, #0	@ tmp2356,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r9, r1	@ tmp2363, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2357, tmp2356
	ldrb	ip, [r7, #377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2357,
	addgt	r3, r3, #1	@,, MisCnt.8925, MisCnt.8917
	cmp	r2, #0	@ tmp2363,
	ldrb	r9, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	ip, r0, ip	@ tmp2370, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2364, tmp2363
	ldrb	lr, [r7, #378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r2, #2	@ tmp2364,
	addgt	r3, r3, #1	@,, MisCnt.8933, MisCnt.8925
	cmp	ip, #0	@ tmp2370,
	ldrb	r0, [r7, #379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r9, lr	@ tmp2377, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2371, tmp2370
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2371,
	addgt	r3, r3, #1	@,, MisCnt.8941, MisCnt.8933
	cmp	r1, #0	@ tmp2377,
	rsb	r9, sl, r0	@ tmp2384, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2378, tmp2377
	cmp	r1, #2	@ tmp2378,
	addgt	r3, r3, #1	@,, MisCnt.8949, MisCnt.8941
	cmp	r9, #0	@ tmp2384,
	rsblt	r9, r9, #0	@ tmp2385, tmp2384
	cmp	r9, #2	@ tmp2385,
	addgt	r3, r3, #1	@,, tmp2388, MisCnt.8949
	cmp	r3, #2	@ tmp2388,
	bgt	.L27	@,
	ldr	r3, [r7, #380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #384]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp2406, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2406,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp2399, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2407, tmp2406
	cmp	sl, #0	@ tmp2399,
	rsb	r0, r2, r0	@ tmp2413, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2400, tmp2399
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2407,
	movle	r3, #0	@, tmp2409
	movgt	r3, #1	@, tmp2409
	ldrb	r9, [r7, #395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2400,
	addgt	r3, r3, #1	@,, MisCnt.2684, tmp2409
	cmp	r0, #0	@ tmp2413,
	ldrb	r1, [r7, #396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp2420, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2414, tmp2413
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2414,
	addgt	r3, r3, #1	@,, MisCnt.2694, MisCnt.2684
	cmp	r9, #0	@ tmp2420,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2427, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp2421, tmp2420
	ldrb	ip, [r7, #397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp2421,
	addgt	r3, r3, #1	@,, MisCnt.2705, MisCnt.2694
	cmp	r2, #0	@ tmp2427,
	ldrb	sl, [r7, #398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2434, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2428, tmp2427
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2428,
	addgt	r3, r3, #1	@,, MisCnt.2716, MisCnt.2705
	cmp	ip, #0	@ tmp2434,
	ldrb	r0, [r7, #399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2435, tmp2434
	rsb	r1, r1, sl	@ tmp2441, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2435,
	addgt	r3, r3, #1	@,, MisCnt.2725, MisCnt.2716
	cmp	r1, #0	@ tmp2441,
	rsb	ip, r2, r0	@ tmp2448, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2442, tmp2441
	cmp	r1, #2	@ tmp2442,
	addgt	r3, r3, #1	@,, MisCnt.2736, MisCnt.2725
	cmp	ip, #0	@ tmp2448,
	rsblt	ip, ip, #0	@ tmp2449, tmp2448
	cmp	ip, #2	@ tmp2449,
	addgt	r3, r3, #1	@,, tmp2452, MisCnt.2736
	cmp	r3, #2	@ tmp2452,
	movle	r0, #8	@ Result,
	ble	.L18	@,
.L27:
	ldr	r3, [r6, #400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #408]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp2453,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp2453,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2470, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2470,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2463, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2471, tmp2470
	cmp	lr, #0	@ tmp2463,
	rsb	r0, r2, r0	@ tmp2477, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2464, tmp2463
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2471,
	movle	r9, #0	@, tmp2473
	movgt	r9, #1	@, tmp2473
	ldrb	sl, [r6, #415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2464,
	addgt	r9, r9, #1	@,, MisCnt.8975, tmp2473
	cmp	r0, #0	@ tmp2477,
	ldrb	r1, [r6, #416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2484, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2478, tmp2477
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2478,
	addgt	r9, r9, #1	@,, MisCnt.8983, MisCnt.8975
	cmp	sl, #0	@ tmp2484,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2491, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2485, tmp2484
	ldrb	ip, [r6, #417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2485,
	addgt	r9, r9, #1	@,, MisCnt.8991, MisCnt.8983
	cmp	r2, #0	@ tmp2491,
	ldrb	lr, [r6, #418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2498, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2492, tmp2491
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2492,
	addgt	r9, r9, #1	@,, MisCnt.8999, MisCnt.8991
	cmp	ip, #0	@ tmp2498,
	ldrb	r0, [r6, #419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2499, tmp2498
	rsb	r1, r1, lr	@ tmp2505, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2499,
	addgt	r9, r9, #1	@,, MisCnt.9007, MisCnt.8999
	cmp	r1, #0	@ tmp2505,
	rsb	ip, sl, r0	@ tmp2512, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2506, tmp2505
	cmp	r1, #2	@ tmp2506,
	addgt	r9, r9, #1	@,, MisCnt.9015, MisCnt.9007
	cmp	ip, #0	@ tmp2512,
	rsblt	ip, ip, #0	@ tmp2513, tmp2512
	cmp	ip, #2	@ tmp2513,
	addgt	r9, r9, #1	@,, tmp2516, MisCnt.9015
	cmp	r9, #2	@ tmp2516,
	bgt	.L28	@,
	ldr	r3, [r7, #420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2534, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2534,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2527, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2535, tmp2534
	cmp	lr, #0	@ tmp2527,
	rsb	r0, r2, r0	@ tmp2541, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2528, tmp2527
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2535,
	movle	r9, #0	@, tmp2537
	movgt	r9, #1	@, tmp2537
	ldrb	sl, [r7, #435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2528,
	addgt	r9, r9, #1	@,, MisCnt.9041, tmp2537
	cmp	r0, #0	@ tmp2541,
	ldrb	r1, [r7, #436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2548, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2542, tmp2541
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2542,
	addgt	r9, r9, #1	@,, MisCnt.9049, MisCnt.9041
	cmp	sl, #0	@ tmp2548,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2555, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2549, tmp2548
	ldrb	ip, [r7, #437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2549,
	addgt	r9, r9, #1	@,, MisCnt.9057, MisCnt.9049
	cmp	r2, #0	@ tmp2555,
	ldrb	lr, [r7, #438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2562, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2556, tmp2555
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2556,
	addgt	r9, r9, #1	@,, MisCnt.9065, MisCnt.9057
	cmp	ip, #0	@ tmp2562,
	ldrb	r0, [r7, #439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2569, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2563, tmp2562
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2563,
	addgt	r9, r9, #1	@,, MisCnt.9073, MisCnt.9065
	cmp	r1, #0	@ tmp2569,
	rsb	sl, r2, r0	@ tmp2576, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2570, tmp2569
	cmp	r1, #2	@ tmp2570,
	addgt	r9, r9, #1	@,, MisCnt.9081, MisCnt.9073
	cmp	sl, #0	@ tmp2576,
	rsblt	sl, sl, #0	@ tmp2577, tmp2576
	cmp	sl, #2	@ tmp2577,
	addgt	r9, r9, #1	@,, tmp2580, MisCnt.9081
	cmp	r9, #2	@ tmp2580,
	bgt	.L28	@,
	ldr	r3, [r7, #440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2598, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2598,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2591, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2599, tmp2598
	cmp	lr, #0	@ tmp2591,
	rsb	r0, r2, r0	@ tmp2605, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2592, tmp2591
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2599,
	movle	r9, #0	@, tmp2601
	movgt	r9, #1	@, tmp2601
	ldrb	sl, [r7, #455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2592,
	addgt	r9, r9, #1	@,, MisCnt.9107, tmp2601
	cmp	r0, #0	@ tmp2605,
	ldrb	r1, [r7, #456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2612, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2606, tmp2605
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2606,
	addgt	r9, r9, #1	@,, MisCnt.9115, MisCnt.9107
	cmp	sl, #0	@ tmp2612,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2619, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2613, tmp2612
	ldrb	ip, [r7, #457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2613,
	addgt	r9, r9, #1	@,, MisCnt.9123, MisCnt.9115
	cmp	r2, #0	@ tmp2619,
	ldrb	lr, [r7, #458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2626, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2620, tmp2619
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2620,
	addgt	r9, r9, #1	@,, MisCnt.9131, MisCnt.9123
	cmp	ip, #0	@ tmp2626,
	ldrb	r0, [r7, #459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2633, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2627, tmp2626
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2627,
	addgt	r9, r9, #1	@,, MisCnt.9139, MisCnt.9131
	cmp	r1, #0	@ tmp2633,
	rsb	sl, r2, r0	@ tmp2640, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2634, tmp2633
	cmp	r1, #2	@ tmp2634,
	addgt	r9, r9, #1	@,, MisCnt.9147, MisCnt.9139
	cmp	sl, #0	@ tmp2640,
	rsblt	sl, sl, #0	@ tmp2641, tmp2640
	cmp	sl, #2	@ tmp2641,
	addgt	r9, r9, #1	@,, tmp2644, MisCnt.9147
	cmp	r9, #2	@ tmp2644,
	bgt	.L28	@,
	ldr	r3, [r7, #460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #464]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2662, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2662,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2655, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2663, tmp2662
	cmp	lr, #0	@ tmp2655,
	rsb	r0, r2, r0	@ tmp2669, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2656, tmp2655
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2663,
	movle	r9, #0	@, tmp2665
	movgt	r9, #1	@, tmp2665
	ldrb	sl, [r7, #475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2656,
	addgt	r9, r9, #1	@,, MisCnt.9173, tmp2665
	cmp	r0, #0	@ tmp2669,
	ldrb	r1, [r7, #476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2676, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2670, tmp2669
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2670,
	addgt	r9, r9, #1	@,, MisCnt.9181, MisCnt.9173
	cmp	sl, #0	@ tmp2676,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2683, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2677, tmp2676
	ldrb	ip, [r7, #477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2677,
	addgt	r9, r9, #1	@,, MisCnt.9189, MisCnt.9181
	cmp	r2, #0	@ tmp2683,
	ldrb	lr, [r7, #478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2690, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2684, tmp2683
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2684,
	addgt	r9, r9, #1	@,, MisCnt.9197, MisCnt.9189
	cmp	ip, #0	@ tmp2690,
	ldrb	r0, [r7, #479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2697, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2691, tmp2690
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2691,
	addgt	r9, r9, #1	@,, MisCnt.9205, MisCnt.9197
	cmp	r1, #0	@ tmp2697,
	rsb	sl, r2, r0	@ tmp2704, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2698, tmp2697
	cmp	r1, #2	@ tmp2698,
	addgt	r9, r9, #1	@,, MisCnt.9213, MisCnt.9205
	cmp	sl, #0	@ tmp2704,
	rsblt	sl, sl, #0	@ tmp2705, tmp2704
	cmp	sl, #2	@ tmp2705,
	addgt	r9, r9, #1	@,, tmp2708, MisCnt.9213
	cmp	r9, #2	@ tmp2708,
	bgt	.L28	@,
	ldr	r3, [r7, #480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #484]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp2726, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2726,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp2719, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2727, tmp2726
	cmp	sl, #0	@ tmp2719,
	rsb	r0, r2, r0	@ tmp2733, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2720, tmp2719
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2727,
	movle	r3, #0	@, tmp2729
	movgt	r3, #1	@, tmp2729
	ldrb	r9, [r7, #495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2720,
	addgt	r3, r3, #1	@,, MisCnt.2756, tmp2729
	cmp	r0, #0	@ tmp2733,
	ldrb	r1, [r7, #496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp2740, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2734, tmp2733
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2734,
	addgt	r3, r3, #1	@,, MisCnt.2765, MisCnt.2756
	cmp	r9, #0	@ tmp2740,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2747, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp2741, tmp2740
	ldrb	ip, [r7, #497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp2741,
	addgt	r3, r3, #1	@,, MisCnt.2776, MisCnt.2765
	cmp	r2, #0	@ tmp2747,
	ldrb	sl, [r7, #498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2754, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2748, tmp2747
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2748,
	addgt	r3, r3, #1	@,, MisCnt.2787, MisCnt.2776
	cmp	ip, #0	@ tmp2754,
	ldrb	r0, [r7, #499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2755, tmp2754
	rsb	r1, r1, sl	@ tmp2761, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2755,
	addgt	r3, r3, #1	@,, MisCnt.2797, MisCnt.2787
	cmp	r1, #0	@ tmp2761,
	rsb	ip, r2, r0	@ tmp2768, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2762, tmp2761
	cmp	r1, #2	@ tmp2762,
	addgt	r3, r3, #1	@,, MisCnt.2807, MisCnt.2797
	cmp	ip, #0	@ tmp2768,
	rsblt	ip, ip, #0	@ tmp2769, tmp2768
	cmp	ip, #2	@ tmp2769,
	addgt	r3, r3, #1	@,, tmp2772, MisCnt.2807
	cmp	r3, #2	@ tmp2772,
	movle	r0, #9	@ Result,
	ble	.L18	@,
.L28:
	ldr	r3, [r6, #500]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #504]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #508]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp2773,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp2773,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2790, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2790,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2783, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2791, tmp2790
	cmp	lr, #0	@ tmp2783,
	rsb	r0, r2, r0	@ tmp2797, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2784, tmp2783
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2791,
	movle	r9, #0	@, tmp2793
	movgt	r9, #1	@, tmp2793
	ldrb	sl, [r6, #515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2784,
	addgt	r9, r9, #1	@,, MisCnt.9239, tmp2793
	cmp	r0, #0	@ tmp2797,
	ldrb	r1, [r6, #516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2804, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2798, tmp2797
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2798,
	addgt	r9, r9, #1	@,, MisCnt.9247, MisCnt.9239
	cmp	sl, #0	@ tmp2804,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2811, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2805, tmp2804
	ldrb	ip, [r6, #517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2805,
	addgt	r9, r9, #1	@,, MisCnt.9255, MisCnt.9247
	cmp	r2, #0	@ tmp2811,
	ldrb	lr, [r6, #518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2818, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2812, tmp2811
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2812,
	addgt	r9, r9, #1	@,, MisCnt.9263, MisCnt.9255
	cmp	ip, #0	@ tmp2818,
	ldrb	r0, [r6, #519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2819, tmp2818
	rsb	r1, r1, lr	@ tmp2825, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2819,
	addgt	r9, r9, #1	@,, MisCnt.9271, MisCnt.9263
	cmp	r1, #0	@ tmp2825,
	rsb	ip, sl, r0	@ tmp2832, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2826, tmp2825
	cmp	r1, #2	@ tmp2826,
	addgt	r9, r9, #1	@,, MisCnt.9279, MisCnt.9271
	cmp	ip, #0	@ tmp2832,
	rsblt	ip, ip, #0	@ tmp2833, tmp2832
	cmp	ip, #2	@ tmp2833,
	addgt	r9, r9, #1	@,, tmp2836, MisCnt.9279
	cmp	r9, #2	@ tmp2836,
	bgt	.L29	@,
	ldr	r3, [r7, #520]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #524]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2854, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2854,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2847, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2855, tmp2854
	cmp	lr, #0	@ tmp2847,
	rsb	r0, r2, r0	@ tmp2861, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2848, tmp2847
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2855,
	movle	r9, #0	@, tmp2857
	movgt	r9, #1	@, tmp2857
	ldrb	sl, [r7, #535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2848,
	addgt	r9, r9, #1	@,, MisCnt.9305, tmp2857
	cmp	r0, #0	@ tmp2861,
	ldrb	r1, [r7, #536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2868, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2862, tmp2861
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2862,
	addgt	r9, r9, #1	@,, MisCnt.9313, MisCnt.9305
	cmp	sl, #0	@ tmp2868,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2875, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2869, tmp2868
	ldrb	ip, [r7, #537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2869,
	addgt	r9, r9, #1	@,, MisCnt.9321, MisCnt.9313
	cmp	r2, #0	@ tmp2875,
	ldrb	lr, [r7, #538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2882, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2876, tmp2875
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2876,
	addgt	r9, r9, #1	@,, MisCnt.9329, MisCnt.9321
	cmp	ip, #0	@ tmp2882,
	ldrb	r0, [r7, #539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2889, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2883, tmp2882
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2883,
	addgt	r9, r9, #1	@,, MisCnt.9337, MisCnt.9329
	cmp	r1, #0	@ tmp2889,
	rsb	sl, r2, r0	@ tmp2896, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2890, tmp2889
	cmp	r1, #2	@ tmp2890,
	addgt	r9, r9, #1	@,, MisCnt.9345, MisCnt.9337
	cmp	sl, #0	@ tmp2896,
	rsblt	sl, sl, #0	@ tmp2897, tmp2896
	cmp	sl, #2	@ tmp2897,
	addgt	r9, r9, #1	@,, tmp2900, MisCnt.9345
	cmp	r9, #2	@ tmp2900,
	bgt	.L29	@,
	ldr	r3, [r7, #540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #544]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2918, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2918,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2911, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2919, tmp2918
	cmp	lr, #0	@ tmp2911,
	rsb	r0, r2, r0	@ tmp2925, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2912, tmp2911
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2919,
	movle	r9, #0	@, tmp2921
	movgt	r9, #1	@, tmp2921
	ldrb	sl, [r7, #555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2912,
	addgt	r9, r9, #1	@,, MisCnt.9371, tmp2921
	cmp	r0, #0	@ tmp2925,
	ldrb	r1, [r7, #556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2932, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2926, tmp2925
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2926,
	addgt	r9, r9, #1	@,, MisCnt.9379, MisCnt.9371
	cmp	sl, #0	@ tmp2932,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp2939, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2933, tmp2932
	ldrb	ip, [r7, #557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2933,
	addgt	r9, r9, #1	@,, MisCnt.9387, MisCnt.9379
	cmp	r2, #0	@ tmp2939,
	ldrb	lr, [r7, #558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp2946, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp2940, tmp2939
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp2940,
	addgt	r9, r9, #1	@,, MisCnt.9395, MisCnt.9387
	cmp	ip, #0	@ tmp2946,
	ldrb	r0, [r7, #559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp2953, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp2947, tmp2946
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp2947,
	addgt	r9, r9, #1	@,, MisCnt.9403, MisCnt.9395
	cmp	r1, #0	@ tmp2953,
	rsb	sl, r2, r0	@ tmp2960, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp2954, tmp2953
	cmp	r1, #2	@ tmp2954,
	addgt	r9, r9, #1	@,, MisCnt.9411, MisCnt.9403
	cmp	sl, #0	@ tmp2960,
	rsblt	sl, sl, #0	@ tmp2961, tmp2960
	cmp	sl, #2	@ tmp2961,
	addgt	r9, r9, #1	@,, tmp2964, MisCnt.9411
	cmp	r9, #2	@ tmp2964,
	bgt	.L29	@,
	ldr	r3, [r7, #560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #564]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp2982, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp2982,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp2975, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp2983, tmp2982
	cmp	lr, #0	@ tmp2975,
	rsb	r0, r2, r0	@ tmp2989, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp2976, tmp2975
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp2983,
	movle	r9, #0	@, tmp2985
	movgt	r9, #1	@, tmp2985
	ldrb	sl, [r7, #575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp2976,
	addgt	r9, r9, #1	@,, MisCnt.9437, tmp2985
	cmp	r0, #0	@ tmp2989,
	ldrb	r1, [r7, #576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp2996, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp2990, tmp2989
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp2990,
	addgt	r9, r9, #1	@,, MisCnt.9445, MisCnt.9437
	cmp	sl, #0	@ tmp2996,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3003, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp2997, tmp2996
	ldrb	ip, [r7, #577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp2997,
	addgt	r9, r9, #1	@,, MisCnt.9453, MisCnt.9445
	cmp	r2, #0	@ tmp3003,
	ldrb	lr, [r7, #578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3010, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3004, tmp3003
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3004,
	addgt	r9, r9, #1	@,, MisCnt.9461, MisCnt.9453
	cmp	ip, #0	@ tmp3010,
	ldrb	r0, [r7, #579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3017, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3011, tmp3010
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3011,
	addgt	r9, r9, #1	@,, MisCnt.9469, MisCnt.9461
	cmp	r1, #0	@ tmp3017,
	rsb	sl, r2, r0	@ tmp3024, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3018, tmp3017
	cmp	r1, #2	@ tmp3018,
	addgt	r9, r9, #1	@,, MisCnt.9477, MisCnt.9469
	cmp	sl, #0	@ tmp3024,
	rsblt	sl, sl, #0	@ tmp3025, tmp3024
	cmp	sl, #2	@ tmp3025,
	addgt	r9, r9, #1	@,, tmp3028, MisCnt.9477
	cmp	r9, #2	@ tmp3028,
	bgt	.L29	@,
	ldr	r3, [r7, #580]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #584]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #588]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #593]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #592]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp3046, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3046,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp3039, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #594]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3047, tmp3046
	cmp	sl, #0	@ tmp3039,
	rsb	r0, r2, r0	@ tmp3053, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3040, tmp3039
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3047,
	movle	r3, #0	@, tmp3049
	movgt	r3, #1	@, tmp3049
	ldrb	r9, [r7, #595]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3040,
	addgt	r3, r3, #1	@,, MisCnt.2826, tmp3049
	cmp	r0, #0	@ tmp3053,
	ldrb	r1, [r7, #596]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp3060, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3054, tmp3053
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3054,
	addgt	r3, r3, #1	@,, MisCnt.2837, MisCnt.2826
	cmp	r9, #0	@ tmp3060,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3067, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp3061, tmp3060
	ldrb	ip, [r7, #597]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp3061,
	addgt	r3, r3, #1	@,, MisCnt.2845, MisCnt.2837
	cmp	r2, #0	@ tmp3067,
	ldrb	sl, [r7, #598]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3074, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3068, tmp3067
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3068,
	addgt	r3, r3, #1	@,, MisCnt.2856, MisCnt.2845
	cmp	ip, #0	@ tmp3074,
	ldrb	r0, [r7, #599]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3075, tmp3074
	rsb	r1, r1, sl	@ tmp3081, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3075,
	addgt	r3, r3, #1	@,, MisCnt.2867, MisCnt.2856
	cmp	r1, #0	@ tmp3081,
	rsb	ip, r2, r0	@ tmp3088, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3082, tmp3081
	cmp	r1, #2	@ tmp3082,
	addgt	r3, r3, #1	@,, MisCnt.2876, MisCnt.2867
	cmp	ip, #0	@ tmp3088,
	rsblt	ip, ip, #0	@ tmp3089, tmp3088
	cmp	ip, #2	@ tmp3089,
	addgt	r3, r3, #1	@,, tmp3092, MisCnt.2876
	cmp	r3, #2	@ tmp3092,
	movle	r0, #11	@ Result,
	ble	.L18	@,
.L29:
	ldr	r3, [r6, #600]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #604]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #608]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp3093,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp3093,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #613]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #612]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3110, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3110,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3103, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #614]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3111, tmp3110
	cmp	lr, #0	@ tmp3103,
	rsb	r0, r2, r0	@ tmp3117, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3104, tmp3103
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3111,
	movle	r9, #0	@, tmp3113
	movgt	r9, #1	@, tmp3113
	ldrb	sl, [r6, #615]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3104,
	addgt	r9, r9, #1	@,, MisCnt.9503, tmp3113
	cmp	r0, #0	@ tmp3117,
	ldrb	r1, [r6, #616]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3124, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3118, tmp3117
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3118,
	addgt	r9, r9, #1	@,, MisCnt.9511, MisCnt.9503
	cmp	sl, #0	@ tmp3124,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3131, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3125, tmp3124
	ldrb	ip, [r6, #617]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3125,
	addgt	r9, r9, #1	@,, MisCnt.9519, MisCnt.9511
	cmp	r2, #0	@ tmp3131,
	ldrb	lr, [r6, #618]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3138, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3132, tmp3131
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3132,
	addgt	r9, r9, #1	@,, MisCnt.9527, MisCnt.9519
	cmp	ip, #0	@ tmp3138,
	ldrb	r0, [r6, #619]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3139, tmp3138
	rsb	r1, r1, lr	@ tmp3145, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3139,
	addgt	r9, r9, #1	@,, MisCnt.9535, MisCnt.9527
	cmp	r1, #0	@ tmp3145,
	rsb	ip, sl, r0	@ tmp3152, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3146, tmp3145
	cmp	r1, #2	@ tmp3146,
	addgt	r9, r9, #1	@,, MisCnt.9543, MisCnt.9535
	cmp	ip, #0	@ tmp3152,
	rsblt	ip, ip, #0	@ tmp3153, tmp3152
	cmp	ip, #2	@ tmp3153,
	addgt	r9, r9, #1	@,, tmp3156, MisCnt.9543
	cmp	r9, #2	@ tmp3156,
	bgt	.L30	@,
	ldr	r3, [r7, #620]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #624]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #628]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #633]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #632]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3174, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3174,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3167, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #634]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3175, tmp3174
	cmp	lr, #0	@ tmp3167,
	rsb	r0, r2, r0	@ tmp3181, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3168, tmp3167
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3175,
	movle	r9, #0	@, tmp3177
	movgt	r9, #1	@, tmp3177
	ldrb	sl, [r7, #635]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3168,
	addgt	r9, r9, #1	@,, MisCnt.9569, tmp3177
	cmp	r0, #0	@ tmp3181,
	ldrb	r1, [r7, #636]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3188, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3182, tmp3181
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3182,
	addgt	r9, r9, #1	@,, MisCnt.9577, MisCnt.9569
	cmp	sl, #0	@ tmp3188,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3195, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3189, tmp3188
	ldrb	ip, [r7, #637]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3189,
	addgt	r9, r9, #1	@,, MisCnt.9585, MisCnt.9577
	cmp	r2, #0	@ tmp3195,
	ldrb	lr, [r7, #638]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3202, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3196, tmp3195
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3196,
	addgt	r9, r9, #1	@,, MisCnt.9593, MisCnt.9585
	cmp	ip, #0	@ tmp3202,
	ldrb	r0, [r7, #639]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3209, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3203, tmp3202
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3203,
	addgt	r9, r9, #1	@,, MisCnt.9601, MisCnt.9593
	cmp	r1, #0	@ tmp3209,
	rsb	sl, r2, r0	@ tmp3216, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3210, tmp3209
	cmp	r1, #2	@ tmp3210,
	addgt	r9, r9, #1	@,, MisCnt.9609, MisCnt.9601
	cmp	sl, #0	@ tmp3216,
	rsblt	sl, sl, #0	@ tmp3217, tmp3216
	cmp	sl, #2	@ tmp3217,
	addgt	r9, r9, #1	@,, tmp3220, MisCnt.9609
	cmp	r9, #2	@ tmp3220,
	bgt	.L30	@,
	ldr	r3, [r7, #640]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #644]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #648]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #653]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #652]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3238, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3238,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3231, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #654]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3239, tmp3238
	cmp	lr, #0	@ tmp3231,
	rsb	r0, r2, r0	@ tmp3245, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3232, tmp3231
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3239,
	movle	r9, #0	@, tmp3241
	movgt	r9, #1	@, tmp3241
	ldrb	sl, [r7, #655]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3232,
	addgt	r9, r9, #1	@,, MisCnt.9635, tmp3241
	cmp	r0, #0	@ tmp3245,
	ldrb	r1, [r7, #656]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3252, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3246, tmp3245
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3246,
	addgt	r9, r9, #1	@,, MisCnt.9643, MisCnt.9635
	cmp	sl, #0	@ tmp3252,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3259, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3253, tmp3252
	ldrb	ip, [r7, #657]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3253,
	addgt	r9, r9, #1	@,, MisCnt.9651, MisCnt.9643
	cmp	r2, #0	@ tmp3259,
	ldrb	lr, [r7, #658]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3266, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3260, tmp3259
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3260,
	addgt	r9, r9, #1	@,, MisCnt.9659, MisCnt.9651
	cmp	ip, #0	@ tmp3266,
	ldrb	r0, [r7, #659]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3273, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3267, tmp3266
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3267,
	addgt	r9, r9, #1	@,, MisCnt.9667, MisCnt.9659
	cmp	r1, #0	@ tmp3273,
	rsb	sl, r2, r0	@ tmp3280, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3274, tmp3273
	cmp	r1, #2	@ tmp3274,
	addgt	r9, r9, #1	@,, MisCnt.9675, MisCnt.9667
	cmp	sl, #0	@ tmp3280,
	rsblt	sl, sl, #0	@ tmp3281, tmp3280
	cmp	sl, #2	@ tmp3281,
	addgt	r9, r9, #1	@,, tmp3284, MisCnt.9675
	cmp	r9, #2	@ tmp3284,
	bgt	.L30	@,
	ldr	r3, [r7, #660]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #664]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #668]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #673]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #672]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3302, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3302,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3295, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #674]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3303, tmp3302
	cmp	lr, #0	@ tmp3295,
	rsb	r0, r2, r0	@ tmp3309, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3296, tmp3295
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3303,
	movle	r9, #0	@, tmp3305
	movgt	r9, #1	@, tmp3305
	ldrb	sl, [r7, #675]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3296,
	addgt	r9, r9, #1	@,, MisCnt.9701, tmp3305
	cmp	r0, #0	@ tmp3309,
	ldrb	r1, [r7, #676]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3316, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3310, tmp3309
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3310,
	addgt	r9, r9, #1	@,, MisCnt.9709, MisCnt.9701
	cmp	sl, #0	@ tmp3316,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3323, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3317, tmp3316
	ldrb	ip, [r7, #677]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3317,
	addgt	r9, r9, #1	@,, MisCnt.9717, MisCnt.9709
	cmp	r2, #0	@ tmp3323,
	ldrb	lr, [r7, #678]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3330, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3324, tmp3323
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3324,
	addgt	r9, r9, #1	@,, MisCnt.9725, MisCnt.9717
	cmp	ip, #0	@ tmp3330,
	ldrb	r0, [r7, #679]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3337, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3331, tmp3330
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3331,
	addgt	r9, r9, #1	@,, MisCnt.9733, MisCnt.9725
	cmp	r1, #0	@ tmp3337,
	rsb	sl, r2, r0	@ tmp3344, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3338, tmp3337
	cmp	r1, #2	@ tmp3338,
	addgt	r9, r9, #1	@,, MisCnt.9741, MisCnt.9733
	cmp	sl, #0	@ tmp3344,
	rsblt	sl, sl, #0	@ tmp3345, tmp3344
	cmp	sl, #2	@ tmp3345,
	addgt	r9, r9, #1	@,, tmp3348, MisCnt.9741
	cmp	r9, #2	@ tmp3348,
	bgt	.L30	@,
	ldr	r3, [r7, #680]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #684]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #688]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #693]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #692]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp3366, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3366,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp3359, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #694]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3367, tmp3366
	cmp	sl, #0	@ tmp3359,
	rsb	r0, r2, r0	@ tmp3373, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3360, tmp3359
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3367,
	movle	r3, #0	@, tmp3369
	movgt	r3, #1	@, tmp3369
	ldrb	r9, [r7, #695]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3360,
	addgt	r3, r3, #1	@,, MisCnt.2892, tmp3369
	cmp	r0, #0	@ tmp3373,
	ldrb	r1, [r7, #696]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp3380, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3374, tmp3373
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3374,
	addgt	r3, r3, #1	@,, MisCnt.2902, MisCnt.2892
	cmp	r9, #0	@ tmp3380,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3387, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp3381, tmp3380
	ldrb	ip, [r7, #697]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp3381,
	addgt	r3, r3, #1	@,, MisCnt.2910, MisCnt.2902
	cmp	r2, #0	@ tmp3387,
	ldrb	sl, [r7, #698]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3394, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3388, tmp3387
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3388,
	addgt	r3, r3, #1	@,, MisCnt.2918, MisCnt.2910
	cmp	ip, #0	@ tmp3394,
	ldrb	r0, [r7, #699]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3395, tmp3394
	rsb	r1, r1, sl	@ tmp3401, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3395,
	addgt	r3, r3, #1	@,, MisCnt.2926, MisCnt.2918
	cmp	r1, #0	@ tmp3401,
	rsb	ip, r2, r0	@ tmp3408, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3402, tmp3401
	cmp	r1, #2	@ tmp3402,
	addgt	r3, r3, #1	@,, MisCnt.2934, MisCnt.2926
	cmp	ip, #0	@ tmp3408,
	rsblt	ip, ip, #0	@ tmp3409, tmp3408
	cmp	ip, #2	@ tmp3409,
	addgt	r3, r3, #1	@,, tmp3412, MisCnt.2934
	cmp	r3, #2	@ tmp3412,
	movle	r0, #12	@ Result,
	ble	.L18	@,
.L30:
	ldr	r3, [r6, #700]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #704]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #708]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp3413,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp3413,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #713]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #712]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3430, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3430,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3423, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #714]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3431, tmp3430
	cmp	lr, #0	@ tmp3423,
	rsb	r0, r2, r0	@ tmp3437, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3424, tmp3423
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3431,
	movle	r9, #0	@, tmp3433
	movgt	r9, #1	@, tmp3433
	ldrb	sl, [r6, #715]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3424,
	addgt	r9, r9, #1	@,, MisCnt.9767, tmp3433
	cmp	r0, #0	@ tmp3437,
	ldrb	r1, [r6, #716]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3444, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3438, tmp3437
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3438,
	addgt	r9, r9, #1	@,, MisCnt.9775, MisCnt.9767
	cmp	sl, #0	@ tmp3444,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3451, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3445, tmp3444
	ldrb	ip, [r6, #717]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3445,
	addgt	r9, r9, #1	@,, MisCnt.9783, MisCnt.9775
	cmp	r2, #0	@ tmp3451,
	ldrb	lr, [r6, #718]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3458, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3452, tmp3451
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3452,
	addgt	r9, r9, #1	@,, MisCnt.9791, MisCnt.9783
	cmp	ip, #0	@ tmp3458,
	ldrb	r0, [r6, #719]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3459, tmp3458
	rsb	r1, r1, lr	@ tmp3465, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3459,
	addgt	r9, r9, #1	@,, MisCnt.9799, MisCnt.9791
	cmp	r1, #0	@ tmp3465,
	rsb	ip, sl, r0	@ tmp3472, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3466, tmp3465
	cmp	r1, #2	@ tmp3466,
	addgt	r9, r9, #1	@,, MisCnt.9807, MisCnt.9799
	cmp	ip, #0	@ tmp3472,
	rsblt	ip, ip, #0	@ tmp3473, tmp3472
	cmp	ip, #2	@ tmp3473,
	addgt	r9, r9, #1	@,, tmp3476, MisCnt.9807
	cmp	r9, #2	@ tmp3476,
	bgt	.L31	@,
	ldr	r3, [r7, #720]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #724]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #728]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #733]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #732]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3494, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3494,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3487, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #734]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3495, tmp3494
	cmp	lr, #0	@ tmp3487,
	rsb	r0, r2, r0	@ tmp3501, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3488, tmp3487
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3495,
	movle	r9, #0	@, tmp3497
	movgt	r9, #1	@, tmp3497
	ldrb	sl, [r7, #735]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3488,
	addgt	r9, r9, #1	@,, MisCnt.9833, tmp3497
	cmp	r0, #0	@ tmp3501,
	ldrb	r1, [r7, #736]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3508, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3502, tmp3501
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3502,
	addgt	r9, r9, #1	@,, MisCnt.9841, MisCnt.9833
	cmp	sl, #0	@ tmp3508,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3515, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3509, tmp3508
	ldrb	ip, [r7, #737]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3509,
	addgt	r9, r9, #1	@,, MisCnt.9849, MisCnt.9841
	cmp	r2, #0	@ tmp3515,
	ldrb	lr, [r7, #738]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3522, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3516, tmp3515
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3516,
	addgt	r9, r9, #1	@,, MisCnt.9857, MisCnt.9849
	cmp	ip, #0	@ tmp3522,
	ldrb	r0, [r7, #739]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3529, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3523, tmp3522
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3523,
	addgt	r9, r9, #1	@,, MisCnt.9865, MisCnt.9857
	cmp	r1, #0	@ tmp3529,
	rsb	sl, r2, r0	@ tmp3536, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3530, tmp3529
	cmp	r1, #2	@ tmp3530,
	addgt	r9, r9, #1	@,, MisCnt.9873, MisCnt.9865
	cmp	sl, #0	@ tmp3536,
	rsblt	sl, sl, #0	@ tmp3537, tmp3536
	cmp	sl, #2	@ tmp3537,
	addgt	r9, r9, #1	@,, tmp3540, MisCnt.9873
	cmp	r9, #2	@ tmp3540,
	bgt	.L31	@,
	ldr	r3, [r7, #740]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #744]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #748]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #753]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #752]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3558, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3558,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3551, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #754]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3559, tmp3558
	cmp	lr, #0	@ tmp3551,
	rsb	r0, r2, r0	@ tmp3565, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3552, tmp3551
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3559,
	movle	r9, #0	@, tmp3561
	movgt	r9, #1	@, tmp3561
	ldrb	sl, [r7, #755]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3552,
	addgt	r9, r9, #1	@,, MisCnt.9899, tmp3561
	cmp	r0, #0	@ tmp3565,
	ldrb	r1, [r7, #756]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3572, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3566, tmp3565
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3566,
	addgt	r9, r9, #1	@,, MisCnt.9907, MisCnt.9899
	cmp	sl, #0	@ tmp3572,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3579, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3573, tmp3572
	ldrb	ip, [r7, #757]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3573,
	addgt	r9, r9, #1	@,, MisCnt.9915, MisCnt.9907
	cmp	r2, #0	@ tmp3579,
	ldrb	lr, [r7, #758]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3586, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3580, tmp3579
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3580,
	addgt	r9, r9, #1	@,, MisCnt.9923, MisCnt.9915
	cmp	ip, #0	@ tmp3586,
	ldrb	r0, [r7, #759]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3593, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3587, tmp3586
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3587,
	addgt	r9, r9, #1	@,, MisCnt.9931, MisCnt.9923
	cmp	r1, #0	@ tmp3593,
	rsb	sl, r2, r0	@ tmp3600, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3594, tmp3593
	cmp	r1, #2	@ tmp3594,
	addgt	r9, r9, #1	@,, MisCnt.9939, MisCnt.9931
	cmp	sl, #0	@ tmp3600,
	rsblt	sl, sl, #0	@ tmp3601, tmp3600
	cmp	sl, #2	@ tmp3601,
	addgt	r9, r9, #1	@,, tmp3604, MisCnt.9939
	cmp	r9, #2	@ tmp3604,
	bgt	.L31	@,
	ldr	r3, [r7, #760]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #764]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #768]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #773]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #772]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3622, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3622,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3615, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #774]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3623, tmp3622
	cmp	lr, #0	@ tmp3615,
	rsb	r0, r2, r0	@ tmp3629, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3616, tmp3615
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3623,
	movle	r9, #0	@, tmp3625
	movgt	r9, #1	@, tmp3625
	ldrb	sl, [r7, #775]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3616,
	addgt	r9, r9, #1	@,, MisCnt.9965, tmp3625
	cmp	r0, #0	@ tmp3629,
	ldrb	r1, [r7, #776]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3636, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3630, tmp3629
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3630,
	addgt	r9, r9, #1	@,, MisCnt.9973, MisCnt.9965
	cmp	sl, #0	@ tmp3636,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3643, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3637, tmp3636
	ldrb	ip, [r7, #777]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3637,
	addgt	r9, r9, #1	@,, MisCnt.9981, MisCnt.9973
	cmp	r2, #0	@ tmp3643,
	ldrb	lr, [r7, #778]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3650, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3644, tmp3643
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3644,
	addgt	r9, r9, #1	@,, MisCnt.9989, MisCnt.9981
	cmp	ip, #0	@ tmp3650,
	ldrb	r0, [r7, #779]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3657, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3651, tmp3650
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3651,
	addgt	r9, r9, #1	@,, MisCnt.9997, MisCnt.9989
	cmp	r1, #0	@ tmp3657,
	rsb	sl, r2, r0	@ tmp3664, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3658, tmp3657
	cmp	r1, #2	@ tmp3658,
	addgt	r9, r9, #1	@,, MisCnt.10005, MisCnt.9997
	cmp	sl, #0	@ tmp3664,
	rsblt	sl, sl, #0	@ tmp3665, tmp3664
	cmp	sl, #2	@ tmp3665,
	addgt	r9, r9, #1	@,, tmp3668, MisCnt.10005
	cmp	r9, #2	@ tmp3668,
	bgt	.L31	@,
	ldr	r3, [r7, #780]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #784]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #788]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #793]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #792]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp3686, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3686,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp3679, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #794]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3687, tmp3686
	cmp	sl, #0	@ tmp3679,
	rsb	r0, r2, r0	@ tmp3693, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3680, tmp3679
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3687,
	movle	r3, #0	@, tmp3689
	movgt	r3, #1	@, tmp3689
	ldrb	r9, [r7, #795]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3680,
	addgt	r3, r3, #1	@,, MisCnt.2952, tmp3689
	cmp	r0, #0	@ tmp3693,
	ldrb	r1, [r7, #796]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp3700, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3694, tmp3693
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3694,
	addgt	r3, r3, #1	@,, MisCnt.2963, MisCnt.2952
	cmp	r9, #0	@ tmp3700,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3707, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp3701, tmp3700
	ldrb	ip, [r7, #797]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp3701,
	addgt	r3, r3, #1	@,, MisCnt.2973, MisCnt.2963
	cmp	r2, #0	@ tmp3707,
	ldrb	sl, [r7, #798]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3714, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3708, tmp3707
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3708,
	addgt	r3, r3, #1	@,, MisCnt.2981, MisCnt.2973
	cmp	ip, #0	@ tmp3714,
	ldrb	r0, [r7, #799]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3715, tmp3714
	rsb	r1, r1, sl	@ tmp3721, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3715,
	addgt	r3, r3, #1	@,, MisCnt.2991, MisCnt.2981
	cmp	r1, #0	@ tmp3721,
	rsb	ip, r2, r0	@ tmp3728, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3722, tmp3721
	cmp	r1, #2	@ tmp3722,
	addgt	r3, r3, #1	@,, MisCnt.3002, MisCnt.2991
	cmp	ip, #0	@ tmp3728,
	rsblt	ip, ip, #0	@ tmp3729, tmp3728
	cmp	ip, #2	@ tmp3729,
	addgt	r3, r3, #1	@,, tmp3732, MisCnt.3002
	cmp	r3, #2	@ tmp3732,
	movle	r0, #13	@ Result,
	ble	.L18	@,
.L31:
	ldr	r3, [r6, #800]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #804]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #808]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp3733,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp3733,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #813]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #812]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3750, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3750,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3743, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #814]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3751, tmp3750
	cmp	lr, #0	@ tmp3743,
	rsb	r0, r2, r0	@ tmp3757, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3744, tmp3743
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3751,
	movle	r9, #0	@, tmp3753
	movgt	r9, #1	@, tmp3753
	ldrb	sl, [r6, #815]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3744,
	addgt	r9, r9, #1	@,, MisCnt.10031, tmp3753
	cmp	r0, #0	@ tmp3757,
	ldrb	r1, [r6, #816]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3764, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3758, tmp3757
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3758,
	addgt	r9, r9, #1	@,, MisCnt.10039, MisCnt.10031
	cmp	sl, #0	@ tmp3764,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3771, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3765, tmp3764
	ldrb	ip, [r6, #817]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3765,
	addgt	r9, r9, #1	@,, MisCnt.10047, MisCnt.10039
	cmp	r2, #0	@ tmp3771,
	ldrb	lr, [r6, #818]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3778, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3772, tmp3771
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3772,
	addgt	r9, r9, #1	@,, MisCnt.10055, MisCnt.10047
	cmp	ip, #0	@ tmp3778,
	ldrb	r0, [r6, #819]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3779, tmp3778
	rsb	r1, r1, lr	@ tmp3785, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3779,
	addgt	r9, r9, #1	@,, MisCnt.10063, MisCnt.10055
	cmp	r1, #0	@ tmp3785,
	rsb	ip, sl, r0	@ tmp3792, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3786, tmp3785
	cmp	r1, #2	@ tmp3786,
	addgt	r9, r9, #1	@,, MisCnt.10071, MisCnt.10063
	cmp	ip, #0	@ tmp3792,
	rsblt	ip, ip, #0	@ tmp3793, tmp3792
	cmp	ip, #2	@ tmp3793,
	addgt	r9, r9, #1	@,, tmp3796, MisCnt.10071
	cmp	r9, #2	@ tmp3796,
	bgt	.L32	@,
	ldr	r3, [r7, #820]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #824]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #828]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #833]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #832]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3814, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3814,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3807, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #834]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3815, tmp3814
	cmp	lr, #0	@ tmp3807,
	rsb	r0, r2, r0	@ tmp3821, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3808, tmp3807
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3815,
	movle	r9, #0	@, tmp3817
	movgt	r9, #1	@, tmp3817
	ldrb	sl, [r7, #835]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3808,
	addgt	r9, r9, #1	@,, MisCnt.10097, tmp3817
	cmp	r0, #0	@ tmp3821,
	ldrb	r1, [r7, #836]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3828, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3822, tmp3821
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3822,
	addgt	r9, r9, #1	@,, MisCnt.10105, MisCnt.10097
	cmp	sl, #0	@ tmp3828,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3835, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3829, tmp3828
	ldrb	ip, [r7, #837]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3829,
	addgt	r9, r9, #1	@,, MisCnt.10113, MisCnt.10105
	cmp	r2, #0	@ tmp3835,
	ldrb	lr, [r7, #838]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3842, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3836, tmp3835
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3836,
	addgt	r9, r9, #1	@,, MisCnt.10121, MisCnt.10113
	cmp	ip, #0	@ tmp3842,
	ldrb	r0, [r7, #839]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3849, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3843, tmp3842
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3843,
	addgt	r9, r9, #1	@,, MisCnt.10129, MisCnt.10121
	cmp	r1, #0	@ tmp3849,
	rsb	sl, r2, r0	@ tmp3856, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3850, tmp3849
	cmp	r1, #2	@ tmp3850,
	addgt	r9, r9, #1	@,, MisCnt.10137, MisCnt.10129
	cmp	sl, #0	@ tmp3856,
	rsblt	sl, sl, #0	@ tmp3857, tmp3856
	cmp	sl, #2	@ tmp3857,
	addgt	r9, r9, #1	@,, tmp3860, MisCnt.10137
	cmp	r9, #2	@ tmp3860,
	bgt	.L32	@,
	ldr	r3, [r7, #840]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #844]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #848]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #853]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #852]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3878, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3878,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3871, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #854]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3879, tmp3878
	cmp	lr, #0	@ tmp3871,
	rsb	r0, r2, r0	@ tmp3885, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3872, tmp3871
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3879,
	movle	r9, #0	@, tmp3881
	movgt	r9, #1	@, tmp3881
	ldrb	sl, [r7, #855]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3872,
	addgt	r9, r9, #1	@,, MisCnt.10163, tmp3881
	cmp	r0, #0	@ tmp3885,
	ldrb	r1, [r7, #856]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3892, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3886, tmp3885
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3886,
	addgt	r9, r9, #1	@,, MisCnt.10171, MisCnt.10163
	cmp	sl, #0	@ tmp3892,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3899, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3893, tmp3892
	ldrb	ip, [r7, #857]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3893,
	addgt	r9, r9, #1	@,, MisCnt.10179, MisCnt.10171
	cmp	r2, #0	@ tmp3899,
	ldrb	lr, [r7, #858]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3906, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3900, tmp3899
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3900,
	addgt	r9, r9, #1	@,, MisCnt.10187, MisCnt.10179
	cmp	ip, #0	@ tmp3906,
	ldrb	r0, [r7, #859]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3913, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3907, tmp3906
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3907,
	addgt	r9, r9, #1	@,, MisCnt.10195, MisCnt.10187
	cmp	r1, #0	@ tmp3913,
	rsb	sl, r2, r0	@ tmp3920, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3914, tmp3913
	cmp	r1, #2	@ tmp3914,
	addgt	r9, r9, #1	@,, MisCnt.10203, MisCnt.10195
	cmp	sl, #0	@ tmp3920,
	rsblt	sl, sl, #0	@ tmp3921, tmp3920
	cmp	sl, #2	@ tmp3921,
	addgt	r9, r9, #1	@,, tmp3924, MisCnt.10203
	cmp	r9, #2	@ tmp3924,
	bgt	.L32	@,
	ldr	r3, [r7, #860]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #864]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #868]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #873]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #872]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp3942, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp3942,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp3935, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #874]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp3943, tmp3942
	cmp	lr, #0	@ tmp3935,
	rsb	r0, r2, r0	@ tmp3949, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp3936, tmp3935
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp3943,
	movle	r9, #0	@, tmp3945
	movgt	r9, #1	@, tmp3945
	ldrb	sl, [r7, #875]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp3936,
	addgt	r9, r9, #1	@,, MisCnt.10229, tmp3945
	cmp	r0, #0	@ tmp3949,
	ldrb	r1, [r7, #876]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp3956, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp3950, tmp3949
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp3950,
	addgt	r9, r9, #1	@,, MisCnt.10237, MisCnt.10229
	cmp	sl, #0	@ tmp3956,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp3963, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp3957, tmp3956
	ldrb	ip, [r7, #877]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp3957,
	addgt	r9, r9, #1	@,, MisCnt.10245, MisCnt.10237
	cmp	r2, #0	@ tmp3963,
	ldrb	lr, [r7, #878]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp3970, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp3964, tmp3963
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp3964,
	addgt	r9, r9, #1	@,, MisCnt.10253, MisCnt.10245
	cmp	ip, #0	@ tmp3970,
	ldrb	r0, [r7, #879]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp3977, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp3971, tmp3970
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp3971,
	addgt	r9, r9, #1	@,, MisCnt.10261, MisCnt.10253
	cmp	r1, #0	@ tmp3977,
	rsb	sl, r2, r0	@ tmp3984, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp3978, tmp3977
	cmp	r1, #2	@ tmp3978,
	addgt	r9, r9, #1	@,, MisCnt.10269, MisCnt.10261
	cmp	sl, #0	@ tmp3984,
	rsblt	sl, sl, #0	@ tmp3985, tmp3984
	cmp	sl, #2	@ tmp3985,
	addgt	r9, r9, #1	@,, tmp3988, MisCnt.10269
	cmp	r9, #2	@ tmp3988,
	bgt	.L32	@,
	ldr	r3, [r7, #880]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #884]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #888]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #893]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #892]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp4006, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4006,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp3999, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #894]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4007, tmp4006
	cmp	sl, #0	@ tmp3999,
	rsb	r0, r2, r0	@ tmp4013, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4000, tmp3999
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4007,
	movle	r3, #0	@, tmp4009
	movgt	r3, #1	@, tmp4009
	ldrb	r9, [r7, #895]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4000,
	addgt	r3, r3, #1	@,, MisCnt.3020, tmp4009
	cmp	r0, #0	@ tmp4013,
	ldrb	r1, [r7, #896]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp4020, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4014, tmp4013
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4014,
	addgt	r3, r3, #1	@,, MisCnt.3029, MisCnt.3020
	cmp	r9, #0	@ tmp4020,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4027, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp4021, tmp4020
	ldrb	ip, [r7, #897]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp4021,
	addgt	r3, r3, #1	@,, MisCnt.3040, MisCnt.3029
	cmp	r2, #0	@ tmp4027,
	ldrb	sl, [r7, #898]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4034, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4028, tmp4027
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4028,
	addgt	r3, r3, #1	@,, MisCnt.3051, MisCnt.3040
	cmp	ip, #0	@ tmp4034,
	ldrb	r0, [r7, #899]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4035, tmp4034
	rsb	r1, r1, sl	@ tmp4041, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4035,
	addgt	r3, r3, #1	@,, MisCnt.3060, MisCnt.3051
	cmp	r1, #0	@ tmp4041,
	rsb	ip, r2, r0	@ tmp4048, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4042, tmp4041
	cmp	r1, #2	@ tmp4042,
	addgt	r3, r3, #1	@,, MisCnt.3071, MisCnt.3060
	cmp	ip, #0	@ tmp4048,
	rsblt	ip, ip, #0	@ tmp4049, tmp4048
	cmp	ip, #2	@ tmp4049,
	addgt	r3, r3, #1	@,, tmp4052, MisCnt.3071
	cmp	r3, #2	@ tmp4052,
	movle	r0, #14	@ Result,
	ble	.L18	@,
.L32:
	ldr	r3, [r6, #900]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #904]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #908]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp4053,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp4053,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #913]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #912]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4070, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4070,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4063, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #914]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4071, tmp4070
	cmp	lr, #0	@ tmp4063,
	rsb	r0, r2, r0	@ tmp4077, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4064, tmp4063
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4071,
	movle	r9, #0	@, tmp4073
	movgt	r9, #1	@, tmp4073
	ldrb	sl, [r6, #915]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4064,
	addgt	r9, r9, #1	@,, MisCnt.10295, tmp4073
	cmp	r0, #0	@ tmp4077,
	ldrb	r1, [r6, #916]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4084, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4078, tmp4077
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4078,
	addgt	r9, r9, #1	@,, MisCnt.10303, MisCnt.10295
	cmp	sl, #0	@ tmp4084,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4091, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4085, tmp4084
	ldrb	ip, [r6, #917]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4085,
	addgt	r9, r9, #1	@,, MisCnt.10311, MisCnt.10303
	cmp	r2, #0	@ tmp4091,
	ldrb	lr, [r6, #918]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4098, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4092, tmp4091
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4092,
	addgt	r9, r9, #1	@,, MisCnt.10319, MisCnt.10311
	cmp	ip, #0	@ tmp4098,
	ldrb	r0, [r6, #919]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4099, tmp4098
	rsb	r1, r1, lr	@ tmp4105, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4099,
	addgt	r9, r9, #1	@,, MisCnt.10327, MisCnt.10319
	cmp	r1, #0	@ tmp4105,
	rsb	ip, sl, r0	@ tmp4112, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4106, tmp4105
	cmp	r1, #2	@ tmp4106,
	addgt	r9, r9, #1	@,, MisCnt.10335, MisCnt.10327
	cmp	ip, #0	@ tmp4112,
	rsblt	ip, ip, #0	@ tmp4113, tmp4112
	cmp	ip, #2	@ tmp4113,
	addgt	r9, r9, #1	@,, tmp4116, MisCnt.10335
	cmp	r9, #2	@ tmp4116,
	bgt	.L33	@,
	ldr	r3, [r7, #920]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #924]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #928]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #933]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #932]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4134, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4134,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4127, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #934]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4135, tmp4134
	cmp	lr, #0	@ tmp4127,
	rsb	r0, r2, r0	@ tmp4141, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4128, tmp4127
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4135,
	movle	r9, #0	@, tmp4137
	movgt	r9, #1	@, tmp4137
	ldrb	sl, [r7, #935]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4128,
	addgt	r9, r9, #1	@,, MisCnt.10361, tmp4137
	cmp	r0, #0	@ tmp4141,
	ldrb	r1, [r7, #936]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4148, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4142, tmp4141
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4142,
	addgt	r9, r9, #1	@,, MisCnt.10369, MisCnt.10361
	cmp	sl, #0	@ tmp4148,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4155, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4149, tmp4148
	ldrb	ip, [r7, #937]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4149,
	addgt	r9, r9, #1	@,, MisCnt.10377, MisCnt.10369
	cmp	r2, #0	@ tmp4155,
	ldrb	lr, [r7, #938]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4162, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4156, tmp4155
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4156,
	addgt	r9, r9, #1	@,, MisCnt.10385, MisCnt.10377
	cmp	ip, #0	@ tmp4162,
	ldrb	r0, [r7, #939]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4169, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4163, tmp4162
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4163,
	addgt	r9, r9, #1	@,, MisCnt.10393, MisCnt.10385
	cmp	r1, #0	@ tmp4169,
	rsb	sl, r2, r0	@ tmp4176, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4170, tmp4169
	cmp	r1, #2	@ tmp4170,
	addgt	r9, r9, #1	@,, MisCnt.10401, MisCnt.10393
	cmp	sl, #0	@ tmp4176,
	rsblt	sl, sl, #0	@ tmp4177, tmp4176
	cmp	sl, #2	@ tmp4177,
	addgt	r9, r9, #1	@,, tmp4180, MisCnt.10401
	cmp	r9, #2	@ tmp4180,
	bgt	.L33	@,
	ldr	r3, [r7, #940]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #944]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #948]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #953]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #952]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4198, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4198,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4191, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #954]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4199, tmp4198
	cmp	lr, #0	@ tmp4191,
	rsb	r0, r2, r0	@ tmp4205, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4192, tmp4191
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4199,
	movle	r9, #0	@, tmp4201
	movgt	r9, #1	@, tmp4201
	ldrb	sl, [r7, #955]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4192,
	addgt	r9, r9, #1	@,, MisCnt.10427, tmp4201
	cmp	r0, #0	@ tmp4205,
	ldrb	r1, [r7, #956]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4212, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4206, tmp4205
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4206,
	addgt	r9, r9, #1	@,, MisCnt.10435, MisCnt.10427
	cmp	sl, #0	@ tmp4212,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4219, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4213, tmp4212
	ldrb	ip, [r7, #957]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4213,
	addgt	r9, r9, #1	@,, MisCnt.10443, MisCnt.10435
	cmp	r2, #0	@ tmp4219,
	ldrb	lr, [r7, #958]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4226, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4220, tmp4219
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4220,
	addgt	r9, r9, #1	@,, MisCnt.10451, MisCnt.10443
	cmp	ip, #0	@ tmp4226,
	ldrb	r0, [r7, #959]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4233, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4227, tmp4226
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4227,
	addgt	r9, r9, #1	@,, MisCnt.10459, MisCnt.10451
	cmp	r1, #0	@ tmp4233,
	rsb	sl, r2, r0	@ tmp4240, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4234, tmp4233
	cmp	r1, #2	@ tmp4234,
	addgt	r9, r9, #1	@,, MisCnt.10467, MisCnt.10459
	cmp	sl, #0	@ tmp4240,
	rsblt	sl, sl, #0	@ tmp4241, tmp4240
	cmp	sl, #2	@ tmp4241,
	addgt	r9, r9, #1	@,, tmp4244, MisCnt.10467
	cmp	r9, #2	@ tmp4244,
	bgt	.L33	@,
	ldr	r3, [r7, #960]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #964]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #968]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #973]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #972]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4262, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4262,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4255, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #974]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4263, tmp4262
	cmp	lr, #0	@ tmp4255,
	rsb	r0, r2, r0	@ tmp4269, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4256, tmp4255
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4263,
	movle	r9, #0	@, tmp4265
	movgt	r9, #1	@, tmp4265
	ldrb	sl, [r7, #975]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4256,
	addgt	r9, r9, #1	@,, MisCnt.10493, tmp4265
	cmp	r0, #0	@ tmp4269,
	ldrb	r1, [r7, #976]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4276, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4270, tmp4269
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4270,
	addgt	r9, r9, #1	@,, MisCnt.10501, MisCnt.10493
	cmp	sl, #0	@ tmp4276,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4283, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4277, tmp4276
	ldrb	ip, [r7, #977]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4277,
	addgt	r9, r9, #1	@,, MisCnt.10509, MisCnt.10501
	cmp	r2, #0	@ tmp4283,
	ldrb	lr, [r7, #978]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4290, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4284, tmp4283
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4284,
	addgt	r9, r9, #1	@,, MisCnt.10517, MisCnt.10509
	cmp	ip, #0	@ tmp4290,
	ldrb	r0, [r7, #979]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4297, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4291, tmp4290
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4291,
	addgt	r9, r9, #1	@,, MisCnt.10525, MisCnt.10517
	cmp	r1, #0	@ tmp4297,
	rsb	sl, r2, r0	@ tmp4304, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4298, tmp4297
	cmp	r1, #2	@ tmp4298,
	addgt	r9, r9, #1	@,, MisCnt.10533, MisCnt.10525
	cmp	sl, #0	@ tmp4304,
	rsblt	sl, sl, #0	@ tmp4305, tmp4304
	cmp	sl, #2	@ tmp4305,
	addgt	r9, r9, #1	@,, tmp4308, MisCnt.10533
	cmp	r9, #2	@ tmp4308,
	bgt	.L33	@,
	ldr	r3, [r7, #980]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #984]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #988]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #993]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #992]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp4326, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4326,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp4319, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #994]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4327, tmp4326
	cmp	sl, #0	@ tmp4319,
	rsb	r0, r2, r0	@ tmp4333, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4320, tmp4319
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4327,
	movle	r3, #0	@, tmp4329
	movgt	r3, #1	@, tmp4329
	ldrb	r9, [r7, #995]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4320,
	addgt	r3, r3, #1	@,, MisCnt.3090, tmp4329
	cmp	r0, #0	@ tmp4333,
	ldrb	r1, [r7, #996]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp4340, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4334, tmp4333
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4334,
	addgt	r3, r3, #1	@,, MisCnt.3100, MisCnt.3090
	cmp	r9, #0	@ tmp4340,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4347, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp4341, tmp4340
	ldrb	ip, [r7, #997]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp4341,
	addgt	r3, r3, #1	@,, MisCnt.3110, MisCnt.3100
	cmp	r2, #0	@ tmp4347,
	ldrb	sl, [r7, #998]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4354, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4348, tmp4347
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4348,
	addgt	r3, r3, #1	@,, MisCnt.3121, MisCnt.3110
	cmp	ip, #0	@ tmp4354,
	ldrb	r0, [r7, #999]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4355, tmp4354
	rsb	r1, r1, sl	@ tmp4361, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4355,
	addgt	r3, r3, #1	@,, MisCnt.3132, MisCnt.3121
	cmp	r1, #0	@ tmp4361,
	rsb	ip, r2, r0	@ tmp4368, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4362, tmp4361
	cmp	r1, #2	@ tmp4362,
	addgt	r3, r3, #1	@,, MisCnt.3141, MisCnt.3132
	cmp	ip, #0	@ tmp4368,
	rsblt	ip, ip, #0	@ tmp4369, tmp4368
	cmp	ip, #2	@ tmp4369,
	addgt	r3, r3, #1	@,, tmp4372, MisCnt.3141
	cmp	r3, #2	@ tmp4372,
	movle	r0, #15	@ Result,
	ble	.L18	@,
.L33:
	ldr	r3, [r6, #1000]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1004]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1008]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp4373,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp4373,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1013]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1012]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4390, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4390,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4383, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1014]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4391, tmp4390
	cmp	lr, #0	@ tmp4383,
	rsb	r0, r2, r0	@ tmp4397, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4384, tmp4383
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4391,
	movle	r9, #0	@, tmp4393
	movgt	r9, #1	@, tmp4393
	ldrb	sl, [r6, #1015]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4384,
	addgt	r9, r9, #1	@,, MisCnt.10559, tmp4393
	cmp	r0, #0	@ tmp4397,
	ldrb	r1, [r6, #1016]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4404, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4398, tmp4397
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4398,
	addgt	r9, r9, #1	@,, MisCnt.10567, MisCnt.10559
	cmp	sl, #0	@ tmp4404,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4411, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4405, tmp4404
	ldrb	ip, [r6, #1017]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4405,
	addgt	r9, r9, #1	@,, MisCnt.10575, MisCnt.10567
	cmp	r2, #0	@ tmp4411,
	ldrb	lr, [r6, #1018]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4418, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4412, tmp4411
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4412,
	addgt	r9, r9, #1	@,, MisCnt.10583, MisCnt.10575
	cmp	ip, #0	@ tmp4418,
	ldrb	r0, [r6, #1019]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4419, tmp4418
	rsb	r1, r1, lr	@ tmp4425, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4419,
	addgt	r9, r9, #1	@,, MisCnt.10591, MisCnt.10583
	cmp	r1, #0	@ tmp4425,
	rsb	ip, sl, r0	@ tmp4432, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4426, tmp4425
	cmp	r1, #2	@ tmp4426,
	addgt	r9, r9, #1	@,, MisCnt.10599, MisCnt.10591
	cmp	ip, #0	@ tmp4432,
	rsblt	ip, ip, #0	@ tmp4433, tmp4432
	cmp	ip, #2	@ tmp4433,
	addgt	r9, r9, #1	@,, tmp4436, MisCnt.10599
	cmp	r9, #2	@ tmp4436,
	bgt	.L34	@,
	ldr	r3, [r7, #1020]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1024]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1028]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1033]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1032]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4454, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4454,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4447, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1034]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4455, tmp4454
	cmp	lr, #0	@ tmp4447,
	rsb	r0, r2, r0	@ tmp4461, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4448, tmp4447
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4455,
	movle	r9, #0	@, tmp4457
	movgt	r9, #1	@, tmp4457
	ldrb	sl, [r7, #1035]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4448,
	addgt	r9, r9, #1	@,, MisCnt.10625, tmp4457
	cmp	r0, #0	@ tmp4461,
	ldrb	r1, [r7, #1036]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4468, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4462, tmp4461
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4462,
	addgt	r9, r9, #1	@,, MisCnt.10633, MisCnt.10625
	cmp	sl, #0	@ tmp4468,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4475, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4469, tmp4468
	ldrb	ip, [r7, #1037]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4469,
	addgt	r9, r9, #1	@,, MisCnt.10641, MisCnt.10633
	cmp	r2, #0	@ tmp4475,
	ldrb	lr, [r7, #1038]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4482, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4476, tmp4475
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4476,
	addgt	r9, r9, #1	@,, MisCnt.10649, MisCnt.10641
	cmp	ip, #0	@ tmp4482,
	ldrb	r0, [r7, #1039]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4489, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4483, tmp4482
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4483,
	addgt	r9, r9, #1	@,, MisCnt.10657, MisCnt.10649
	cmp	r1, #0	@ tmp4489,
	rsb	sl, r2, r0	@ tmp4496, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4490, tmp4489
	cmp	r1, #2	@ tmp4490,
	addgt	r9, r9, #1	@,, MisCnt.10665, MisCnt.10657
	cmp	sl, #0	@ tmp4496,
	rsblt	sl, sl, #0	@ tmp4497, tmp4496
	cmp	sl, #2	@ tmp4497,
	addgt	r9, r9, #1	@,, tmp4500, MisCnt.10665
	cmp	r9, #2	@ tmp4500,
	bgt	.L34	@,
	ldr	r3, [r7, #1040]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1044]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1048]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1053]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1052]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4518, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4518,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4511, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1054]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4519, tmp4518
	cmp	lr, #0	@ tmp4511,
	rsb	r0, r2, r0	@ tmp4525, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4512, tmp4511
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4519,
	movle	r9, #0	@, tmp4521
	movgt	r9, #1	@, tmp4521
	ldrb	sl, [r7, #1055]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4512,
	addgt	r9, r9, #1	@,, MisCnt.10691, tmp4521
	cmp	r0, #0	@ tmp4525,
	ldrb	r1, [r7, #1056]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4532, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4526, tmp4525
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4526,
	addgt	r9, r9, #1	@,, MisCnt.10699, MisCnt.10691
	cmp	sl, #0	@ tmp4532,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4539, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4533, tmp4532
	ldrb	ip, [r7, #1057]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4533,
	addgt	r9, r9, #1	@,, MisCnt.10707, MisCnt.10699
	cmp	r2, #0	@ tmp4539,
	ldrb	lr, [r7, #1058]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4546, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4540, tmp4539
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4540,
	addgt	r9, r9, #1	@,, MisCnt.10715, MisCnt.10707
	cmp	ip, #0	@ tmp4546,
	ldrb	r0, [r7, #1059]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4553, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4547, tmp4546
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4547,
	addgt	r9, r9, #1	@,, MisCnt.10723, MisCnt.10715
	cmp	r1, #0	@ tmp4553,
	rsb	sl, r2, r0	@ tmp4560, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4554, tmp4553
	cmp	r1, #2	@ tmp4554,
	addgt	r9, r9, #1	@,, MisCnt.10731, MisCnt.10723
	cmp	sl, #0	@ tmp4560,
	rsblt	sl, sl, #0	@ tmp4561, tmp4560
	cmp	sl, #2	@ tmp4561,
	addgt	r9, r9, #1	@,, tmp4564, MisCnt.10731
	cmp	r9, #2	@ tmp4564,
	bgt	.L34	@,
	ldr	r3, [r7, #1060]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1064]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1068]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1073]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1072]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4582, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4582,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4575, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1074]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4583, tmp4582
	cmp	lr, #0	@ tmp4575,
	rsb	r0, r2, r0	@ tmp4589, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4576, tmp4575
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4583,
	movle	r9, #0	@, tmp4585
	movgt	r9, #1	@, tmp4585
	ldrb	sl, [r7, #1075]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4576,
	addgt	r9, r9, #1	@,, MisCnt.10757, tmp4585
	cmp	r0, #0	@ tmp4589,
	ldrb	r1, [r7, #1076]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4596, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4590, tmp4589
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4590,
	addgt	r9, r9, #1	@,, MisCnt.10765, MisCnt.10757
	cmp	sl, #0	@ tmp4596,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4603, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4597, tmp4596
	ldrb	ip, [r7, #1077]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4597,
	addgt	r9, r9, #1	@,, MisCnt.10773, MisCnt.10765
	cmp	r2, #0	@ tmp4603,
	ldrb	lr, [r7, #1078]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4610, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4604, tmp4603
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4604,
	addgt	r9, r9, #1	@,, MisCnt.10781, MisCnt.10773
	cmp	ip, #0	@ tmp4610,
	ldrb	r0, [r7, #1079]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4617, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4611, tmp4610
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4611,
	addgt	r9, r9, #1	@,, MisCnt.10789, MisCnt.10781
	cmp	r1, #0	@ tmp4617,
	rsb	sl, r2, r0	@ tmp4624, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4618, tmp4617
	cmp	r1, #2	@ tmp4618,
	addgt	r9, r9, #1	@,, MisCnt.10797, MisCnt.10789
	cmp	sl, #0	@ tmp4624,
	rsblt	sl, sl, #0	@ tmp4625, tmp4624
	cmp	sl, #2	@ tmp4625,
	addgt	r9, r9, #1	@,, tmp4628, MisCnt.10797
	cmp	r9, #2	@ tmp4628,
	bgt	.L34	@,
	ldr	r3, [r7, #1080]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1084]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1088]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1093]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1092]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp4646, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4646,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp4639, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1094]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4647, tmp4646
	cmp	sl, #0	@ tmp4639,
	rsb	r0, r2, r0	@ tmp4653, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4640, tmp4639
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4647,
	movle	r3, #0	@, tmp4649
	movgt	r3, #1	@, tmp4649
	ldrb	r9, [r7, #1095]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4640,
	addgt	r3, r3, #1	@,, MisCnt.3162, tmp4649
	cmp	r0, #0	@ tmp4653,
	ldrb	r1, [r7, #1096]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp4660, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4654, tmp4653
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4654,
	addgt	r3, r3, #1	@,, MisCnt.3173, MisCnt.3162
	cmp	r9, #0	@ tmp4660,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4667, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp4661, tmp4660
	ldrb	ip, [r7, #1097]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp4661,
	addgt	r3, r3, #1	@,, MisCnt.3182, MisCnt.3173
	cmp	r2, #0	@ tmp4667,
	ldrb	sl, [r7, #1098]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4674, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4668, tmp4667
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4668,
	addgt	r3, r3, #1	@,, MisCnt.3193, MisCnt.3182
	cmp	ip, #0	@ tmp4674,
	ldrb	r0, [r7, #1099]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4675, tmp4674
	rsb	r1, r1, sl	@ tmp4681, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4675,
	addgt	r3, r3, #1	@,, MisCnt.3204, MisCnt.3193
	cmp	r1, #0	@ tmp4681,
	rsb	ip, r2, r0	@ tmp4688, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4682, tmp4681
	cmp	r1, #2	@ tmp4682,
	addgt	r3, r3, #1	@,, MisCnt.3214, MisCnt.3204
	cmp	ip, #0	@ tmp4688,
	rsblt	ip, ip, #0	@ tmp4689, tmp4688
	cmp	ip, #2	@ tmp4689,
	addgt	r3, r3, #1	@,, tmp4692, MisCnt.3214
	cmp	r3, #2	@ tmp4692,
	movle	r0, #16	@ Result,
	ble	.L18	@,
.L34:
	ldr	r3, [r6, #1100]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1104]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1108]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp4693,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp4693,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1113]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1112]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4710, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4710,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4703, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1114]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4711, tmp4710
	cmp	lr, #0	@ tmp4703,
	rsb	r0, r2, r0	@ tmp4717, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4704, tmp4703
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4711,
	movle	r9, #0	@, tmp4713
	movgt	r9, #1	@, tmp4713
	ldrb	sl, [r6, #1115]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4704,
	addgt	r9, r9, #1	@,, MisCnt.10823, tmp4713
	cmp	r0, #0	@ tmp4717,
	ldrb	r1, [r6, #1116]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4724, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4718, tmp4717
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4718,
	addgt	r9, r9, #1	@,, MisCnt.10831, MisCnt.10823
	cmp	sl, #0	@ tmp4724,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4731, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4725, tmp4724
	ldrb	ip, [r6, #1117]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4725,
	addgt	r9, r9, #1	@,, MisCnt.10839, MisCnt.10831
	cmp	r2, #0	@ tmp4731,
	ldrb	lr, [r6, #1118]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4738, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4732, tmp4731
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4732,
	addgt	r9, r9, #1	@,, MisCnt.10847, MisCnt.10839
	cmp	ip, #0	@ tmp4738,
	ldrb	r0, [r6, #1119]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4739, tmp4738
	rsb	r1, r1, lr	@ tmp4745, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4739,
	addgt	r9, r9, #1	@,, MisCnt.10855, MisCnt.10847
	cmp	r1, #0	@ tmp4745,
	rsb	ip, sl, r0	@ tmp4752, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4746, tmp4745
	cmp	r1, #2	@ tmp4746,
	addgt	r9, r9, #1	@,, MisCnt.10863, MisCnt.10855
	cmp	ip, #0	@ tmp4752,
	rsblt	ip, ip, #0	@ tmp4753, tmp4752
	cmp	ip, #2	@ tmp4753,
	addgt	r9, r9, #1	@,, tmp4756, MisCnt.10863
	cmp	r9, #2	@ tmp4756,
	bgt	.L35	@,
	ldr	r3, [r7, #1120]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1124]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1128]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1133]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1132]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4774, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4774,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4767, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1134]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4775, tmp4774
	cmp	lr, #0	@ tmp4767,
	rsb	r0, r2, r0	@ tmp4781, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4768, tmp4767
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4775,
	movle	r9, #0	@, tmp4777
	movgt	r9, #1	@, tmp4777
	ldrb	sl, [r7, #1135]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4768,
	addgt	r9, r9, #1	@,, MisCnt.10889, tmp4777
	cmp	r0, #0	@ tmp4781,
	ldrb	r1, [r7, #1136]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4788, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4782, tmp4781
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4782,
	addgt	r9, r9, #1	@,, MisCnt.10897, MisCnt.10889
	cmp	sl, #0	@ tmp4788,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4795, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4789, tmp4788
	ldrb	ip, [r7, #1137]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4789,
	addgt	r9, r9, #1	@,, MisCnt.10905, MisCnt.10897
	cmp	r2, #0	@ tmp4795,
	ldrb	lr, [r7, #1138]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4802, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4796, tmp4795
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4796,
	addgt	r9, r9, #1	@,, MisCnt.10913, MisCnt.10905
	cmp	ip, #0	@ tmp4802,
	ldrb	r0, [r7, #1139]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4809, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4803, tmp4802
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4803,
	addgt	r9, r9, #1	@,, MisCnt.10921, MisCnt.10913
	cmp	r1, #0	@ tmp4809,
	rsb	sl, r2, r0	@ tmp4816, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4810, tmp4809
	cmp	r1, #2	@ tmp4810,
	addgt	r9, r9, #1	@,, MisCnt.10929, MisCnt.10921
	cmp	sl, #0	@ tmp4816,
	rsblt	sl, sl, #0	@ tmp4817, tmp4816
	cmp	sl, #2	@ tmp4817,
	addgt	r9, r9, #1	@,, tmp4820, MisCnt.10929
	cmp	r9, #2	@ tmp4820,
	bgt	.L35	@,
	ldr	r3, [r7, #1140]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1144]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1148]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1153]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1152]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4838, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4838,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4831, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1154]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4839, tmp4838
	cmp	lr, #0	@ tmp4831,
	rsb	r0, r2, r0	@ tmp4845, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4832, tmp4831
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4839,
	movle	r9, #0	@, tmp4841
	movgt	r9, #1	@, tmp4841
	ldrb	sl, [r7, #1155]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4832,
	addgt	r9, r9, #1	@,, MisCnt.10955, tmp4841
	cmp	r0, #0	@ tmp4845,
	ldrb	r1, [r7, #1156]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4852, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4846, tmp4845
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4846,
	addgt	r9, r9, #1	@,, MisCnt.10963, MisCnt.10955
	cmp	sl, #0	@ tmp4852,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4859, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4853, tmp4852
	ldrb	ip, [r7, #1157]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4853,
	addgt	r9, r9, #1	@,, MisCnt.10971, MisCnt.10963
	cmp	r2, #0	@ tmp4859,
	ldrb	lr, [r7, #1158]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4866, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4860, tmp4859
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4860,
	addgt	r9, r9, #1	@,, MisCnt.10979, MisCnt.10971
	cmp	ip, #0	@ tmp4866,
	ldrb	r0, [r7, #1159]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4873, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4867, tmp4866
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4867,
	addgt	r9, r9, #1	@,, MisCnt.10987, MisCnt.10979
	cmp	r1, #0	@ tmp4873,
	rsb	sl, r2, r0	@ tmp4880, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4874, tmp4873
	cmp	r1, #2	@ tmp4874,
	addgt	r9, r9, #1	@,, MisCnt.10995, MisCnt.10987
	cmp	sl, #0	@ tmp4880,
	rsblt	sl, sl, #0	@ tmp4881, tmp4880
	cmp	sl, #2	@ tmp4881,
	addgt	r9, r9, #1	@,, tmp4884, MisCnt.10995
	cmp	r9, #2	@ tmp4884,
	bgt	.L35	@,
	ldr	r3, [r7, #1160]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1164]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1168]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1173]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1172]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp4902, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4902,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp4895, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1174]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4903, tmp4902
	cmp	lr, #0	@ tmp4895,
	rsb	r0, r2, r0	@ tmp4909, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp4896, tmp4895
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4903,
	movle	r9, #0	@, tmp4905
	movgt	r9, #1	@, tmp4905
	ldrb	sl, [r7, #1175]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp4896,
	addgt	r9, r9, #1	@,, MisCnt.11021, tmp4905
	cmp	r0, #0	@ tmp4909,
	ldrb	r1, [r7, #1176]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp4916, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4910, tmp4909
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4910,
	addgt	r9, r9, #1	@,, MisCnt.11029, MisCnt.11021
	cmp	sl, #0	@ tmp4916,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4923, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4917, tmp4916
	ldrb	ip, [r7, #1177]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4917,
	addgt	r9, r9, #1	@,, MisCnt.11037, MisCnt.11029
	cmp	r2, #0	@ tmp4923,
	ldrb	lr, [r7, #1178]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4930, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4924, tmp4923
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4924,
	addgt	r9, r9, #1	@,, MisCnt.11045, MisCnt.11037
	cmp	ip, #0	@ tmp4930,
	ldrb	r0, [r7, #1179]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp4937, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4931, tmp4930
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4931,
	addgt	r9, r9, #1	@,, MisCnt.11053, MisCnt.11045
	cmp	r1, #0	@ tmp4937,
	rsb	sl, r2, r0	@ tmp4944, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp4938, tmp4937
	cmp	r1, #2	@ tmp4938,
	addgt	r9, r9, #1	@,, MisCnt.11061, MisCnt.11053
	cmp	sl, #0	@ tmp4944,
	rsblt	sl, sl, #0	@ tmp4945, tmp4944
	cmp	sl, #2	@ tmp4945,
	addgt	r9, r9, #1	@,, tmp4948, MisCnt.11061
	cmp	r9, #2	@ tmp4948,
	bgt	.L35	@,
	ldr	r3, [r7, #1180]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1184]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1188]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1193]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1192]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp4966, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp4966,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp4959, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1194]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp4967, tmp4966
	cmp	sl, #0	@ tmp4959,
	rsb	r0, r2, r0	@ tmp4973, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp4960, tmp4959
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp4967,
	movle	r3, #0	@, tmp4969
	movgt	r3, #1	@, tmp4969
	ldrb	r9, [r7, #1195]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp4960,
	addgt	r3, r3, #1	@,, MisCnt.3233, tmp4969
	cmp	r0, #0	@ tmp4973,
	ldrb	r1, [r7, #1196]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp4980, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp4974, tmp4973
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp4974,
	addgt	r3, r3, #1	@,, MisCnt.3244, MisCnt.3233
	cmp	r9, #0	@ tmp4980,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp4987, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp4981, tmp4980
	ldrb	ip, [r7, #1197]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp4981,
	addgt	r3, r3, #1	@,, MisCnt.3255, MisCnt.3244
	cmp	r2, #0	@ tmp4987,
	ldrb	sl, [r7, #1198]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp4994, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp4988, tmp4987
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp4988,
	addgt	r3, r3, #1	@,, MisCnt.3263, MisCnt.3255
	cmp	ip, #0	@ tmp4994,
	ldrb	r0, [r7, #1199]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp4995, tmp4994
	rsb	r1, r1, sl	@ tmp5001, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp4995,
	addgt	r3, r3, #1	@,, MisCnt.3273, MisCnt.3263
	cmp	r1, #0	@ tmp5001,
	rsb	ip, r2, r0	@ tmp5008, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5002, tmp5001
	cmp	r1, #2	@ tmp5002,
	addgt	r3, r3, #1	@,, MisCnt.3282, MisCnt.3273
	cmp	ip, #0	@ tmp5008,
	rsblt	ip, ip, #0	@ tmp5009, tmp5008
	cmp	ip, #2	@ tmp5009,
	addgt	r3, r3, #1	@,, tmp5012, MisCnt.3282
	cmp	r3, #2	@ tmp5012,
	movle	r0, #17	@ Result,
	ble	.L18	@,
.L35:
	ldr	r3, [r6, #1200]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1204]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1208]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp5013,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp5013,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1213]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1212]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5030, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5030,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5023, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1214]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5031, tmp5030
	cmp	lr, #0	@ tmp5023,
	rsb	r0, r2, r0	@ tmp5037, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5024, tmp5023
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5031,
	movle	r9, #0	@, tmp5033
	movgt	r9, #1	@, tmp5033
	ldrb	sl, [r6, #1215]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5024,
	addgt	r9, r9, #1	@,, MisCnt.11087, tmp5033
	cmp	r0, #0	@ tmp5037,
	ldrb	r1, [r6, #1216]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5044, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5038, tmp5037
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5038,
	addgt	r9, r9, #1	@,, MisCnt.11095, MisCnt.11087
	cmp	sl, #0	@ tmp5044,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5051, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5045, tmp5044
	ldrb	ip, [r6, #1217]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5045,
	addgt	r9, r9, #1	@,, MisCnt.11103, MisCnt.11095
	cmp	r2, #0	@ tmp5051,
	ldrb	lr, [r6, #1218]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5058, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5052, tmp5051
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5052,
	addgt	r9, r9, #1	@,, MisCnt.11111, MisCnt.11103
	cmp	ip, #0	@ tmp5058,
	ldrb	r0, [r6, #1219]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5059, tmp5058
	rsb	r1, r1, lr	@ tmp5065, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5059,
	addgt	r9, r9, #1	@,, MisCnt.11119, MisCnt.11111
	cmp	r1, #0	@ tmp5065,
	rsb	ip, sl, r0	@ tmp5072, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5066, tmp5065
	cmp	r1, #2	@ tmp5066,
	addgt	r9, r9, #1	@,, MisCnt.11127, MisCnt.11119
	cmp	ip, #0	@ tmp5072,
	rsblt	ip, ip, #0	@ tmp5073, tmp5072
	cmp	ip, #2	@ tmp5073,
	addgt	r9, r9, #1	@,, tmp5076, MisCnt.11127
	cmp	r9, #2	@ tmp5076,
	bgt	.L36	@,
	ldr	r3, [r7, #1220]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1224]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1228]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1233]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1232]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5094, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5094,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5087, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1234]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5095, tmp5094
	cmp	lr, #0	@ tmp5087,
	rsb	r0, r2, r0	@ tmp5101, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5088, tmp5087
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5095,
	movle	r9, #0	@, tmp5097
	movgt	r9, #1	@, tmp5097
	ldrb	sl, [r7, #1235]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5088,
	addgt	r9, r9, #1	@,, MisCnt.11153, tmp5097
	cmp	r0, #0	@ tmp5101,
	ldrb	r1, [r7, #1236]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5108, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5102, tmp5101
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5102,
	addgt	r9, r9, #1	@,, MisCnt.11161, MisCnt.11153
	cmp	sl, #0	@ tmp5108,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5115, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5109, tmp5108
	ldrb	ip, [r7, #1237]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5109,
	addgt	r9, r9, #1	@,, MisCnt.11169, MisCnt.11161
	cmp	r2, #0	@ tmp5115,
	ldrb	lr, [r7, #1238]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5122, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5116, tmp5115
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5116,
	addgt	r9, r9, #1	@,, MisCnt.11177, MisCnt.11169
	cmp	ip, #0	@ tmp5122,
	ldrb	r0, [r7, #1239]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5129, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5123, tmp5122
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5123,
	addgt	r9, r9, #1	@,, MisCnt.11185, MisCnt.11177
	cmp	r1, #0	@ tmp5129,
	rsb	sl, r2, r0	@ tmp5136, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5130, tmp5129
	cmp	r1, #2	@ tmp5130,
	addgt	r9, r9, #1	@,, MisCnt.11193, MisCnt.11185
	cmp	sl, #0	@ tmp5136,
	rsblt	sl, sl, #0	@ tmp5137, tmp5136
	cmp	sl, #2	@ tmp5137,
	addgt	r9, r9, #1	@,, tmp5140, MisCnt.11193
	cmp	r9, #2	@ tmp5140,
	bgt	.L36	@,
	ldr	r3, [r7, #1240]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1244]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1248]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1253]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1252]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5158, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5158,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5151, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1254]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5159, tmp5158
	cmp	lr, #0	@ tmp5151,
	rsb	r0, r2, r0	@ tmp5165, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5152, tmp5151
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5159,
	movle	r9, #0	@, tmp5161
	movgt	r9, #1	@, tmp5161
	ldrb	sl, [r7, #1255]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5152,
	addgt	r9, r9, #1	@,, MisCnt.11219, tmp5161
	cmp	r0, #0	@ tmp5165,
	ldrb	r1, [r7, #1256]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5172, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5166, tmp5165
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5166,
	addgt	r9, r9, #1	@,, MisCnt.11227, MisCnt.11219
	cmp	sl, #0	@ tmp5172,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5179, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5173, tmp5172
	ldrb	ip, [r7, #1257]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5173,
	addgt	r9, r9, #1	@,, MisCnt.11235, MisCnt.11227
	cmp	r2, #0	@ tmp5179,
	ldrb	lr, [r7, #1258]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5186, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5180, tmp5179
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5180,
	addgt	r9, r9, #1	@,, MisCnt.11243, MisCnt.11235
	cmp	ip, #0	@ tmp5186,
	ldrb	r0, [r7, #1259]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5193, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5187, tmp5186
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5187,
	addgt	r9, r9, #1	@,, MisCnt.11251, MisCnt.11243
	cmp	r1, #0	@ tmp5193,
	rsb	sl, r2, r0	@ tmp5200, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5194, tmp5193
	cmp	r1, #2	@ tmp5194,
	addgt	r9, r9, #1	@,, MisCnt.11259, MisCnt.11251
	cmp	sl, #0	@ tmp5200,
	rsblt	sl, sl, #0	@ tmp5201, tmp5200
	cmp	sl, #2	@ tmp5201,
	addgt	r9, r9, #1	@,, tmp5204, MisCnt.11259
	cmp	r9, #2	@ tmp5204,
	bgt	.L36	@,
	ldr	r3, [r7, #1260]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1264]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1268]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1273]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1272]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5222, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5222,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5215, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1274]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5223, tmp5222
	cmp	lr, #0	@ tmp5215,
	rsb	r0, r2, r0	@ tmp5229, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5216, tmp5215
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5223,
	movle	r9, #0	@, tmp5225
	movgt	r9, #1	@, tmp5225
	ldrb	sl, [r7, #1275]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5216,
	addgt	r9, r9, #1	@,, MisCnt.11285, tmp5225
	cmp	r0, #0	@ tmp5229,
	ldrb	r1, [r7, #1276]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5236, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5230, tmp5229
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5230,
	addgt	r9, r9, #1	@,, MisCnt.11293, MisCnt.11285
	cmp	sl, #0	@ tmp5236,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5243, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5237, tmp5236
	ldrb	ip, [r7, #1277]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5237,
	addgt	r9, r9, #1	@,, MisCnt.11301, MisCnt.11293
	cmp	r2, #0	@ tmp5243,
	ldrb	lr, [r7, #1278]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5250, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5244, tmp5243
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5244,
	addgt	r9, r9, #1	@,, MisCnt.11309, MisCnt.11301
	cmp	ip, #0	@ tmp5250,
	ldrb	r0, [r7, #1279]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5257, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5251, tmp5250
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5251,
	addgt	r9, r9, #1	@,, MisCnt.11317, MisCnt.11309
	cmp	r1, #0	@ tmp5257,
	rsb	sl, r2, r0	@ tmp5264, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5258, tmp5257
	cmp	r1, #2	@ tmp5258,
	addgt	r9, r9, #1	@,, MisCnt.11325, MisCnt.11317
	cmp	sl, #0	@ tmp5264,
	rsblt	sl, sl, #0	@ tmp5265, tmp5264
	cmp	sl, #2	@ tmp5265,
	addgt	r9, r9, #1	@,, tmp5268, MisCnt.11325
	cmp	r9, #2	@ tmp5268,
	bgt	.L36	@,
	ldr	r3, [r7, #1280]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1284]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1288]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1293]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1292]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp5286, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5286,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp5279, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1294]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5287, tmp5286
	cmp	sl, #0	@ tmp5279,
	rsb	r0, r2, r0	@ tmp5293, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5280, tmp5279
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5287,
	movle	r3, #0	@, tmp5289
	movgt	r3, #1	@, tmp5289
	ldrb	r9, [r7, #1295]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5280,
	addgt	r3, r3, #1	@,, MisCnt.3298, tmp5289
	cmp	r0, #0	@ tmp5293,
	ldrb	r1, [r7, #1296]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp5300, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5294, tmp5293
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5294,
	addgt	r3, r3, #1	@,, MisCnt.3306, MisCnt.3298
	cmp	r9, #0	@ tmp5300,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5307, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp5301, tmp5300
	ldrb	ip, [r7, #1297]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp5301,
	addgt	r3, r3, #1	@,, MisCnt.3314, MisCnt.3306
	cmp	r2, #0	@ tmp5307,
	ldrb	sl, [r7, #1298]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5314, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5308, tmp5307
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5308,
	addgt	r3, r3, #1	@,, MisCnt.3322, MisCnt.3314
	cmp	ip, #0	@ tmp5314,
	ldrb	r0, [r7, #1299]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5315, tmp5314
	rsb	r1, r1, sl	@ tmp5321, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5315,
	addgt	r3, r3, #1	@,, MisCnt.3332, MisCnt.3322
	cmp	r1, #0	@ tmp5321,
	rsb	ip, r2, r0	@ tmp5328, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5322, tmp5321
	cmp	r1, #2	@ tmp5322,
	addgt	r3, r3, #1	@,, MisCnt.3343, MisCnt.3332
	cmp	ip, #0	@ tmp5328,
	rsblt	ip, ip, #0	@ tmp5329, tmp5328
	cmp	ip, #2	@ tmp5329,
	addgt	r3, r3, #1	@,, tmp5332, MisCnt.3343
	cmp	r3, #2	@ tmp5332,
	movle	r0, #18	@ Result,
	ble	.L18	@,
.L36:
	ldr	r3, [r6, #1300]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1304]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1308]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp5333,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp5333,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1313]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1312]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5350, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5350,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5343, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1314]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5351, tmp5350
	cmp	lr, #0	@ tmp5343,
	rsb	r0, r2, r0	@ tmp5357, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5344, tmp5343
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5351,
	movle	r9, #0	@, tmp5353
	movgt	r9, #1	@, tmp5353
	ldrb	sl, [r6, #1315]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5344,
	addgt	r9, r9, #1	@,, MisCnt.11351, tmp5353
	cmp	r0, #0	@ tmp5357,
	ldrb	r1, [r6, #1316]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5364, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5358, tmp5357
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5358,
	addgt	r9, r9, #1	@,, MisCnt.11359, MisCnt.11351
	cmp	sl, #0	@ tmp5364,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5371, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5365, tmp5364
	ldrb	ip, [r6, #1317]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5365,
	addgt	r9, r9, #1	@,, MisCnt.11367, MisCnt.11359
	cmp	r2, #0	@ tmp5371,
	ldrb	lr, [r6, #1318]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5378, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5372, tmp5371
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5372,
	addgt	r9, r9, #1	@,, MisCnt.11375, MisCnt.11367
	cmp	ip, #0	@ tmp5378,
	ldrb	r0, [r6, #1319]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5379, tmp5378
	rsb	r1, r1, lr	@ tmp5385, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5379,
	addgt	r9, r9, #1	@,, MisCnt.11383, MisCnt.11375
	cmp	r1, #0	@ tmp5385,
	rsb	ip, sl, r0	@ tmp5392, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5386, tmp5385
	cmp	r1, #2	@ tmp5386,
	addgt	r9, r9, #1	@,, MisCnt.11391, MisCnt.11383
	cmp	ip, #0	@ tmp5392,
	rsblt	ip, ip, #0	@ tmp5393, tmp5392
	cmp	ip, #2	@ tmp5393,
	addgt	r9, r9, #1	@,, tmp5396, MisCnt.11391
	cmp	r9, #2	@ tmp5396,
	bgt	.L37	@,
	ldr	r3, [r7, #1320]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1324]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1328]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1333]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1332]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5414, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5414,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5407, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1334]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5415, tmp5414
	cmp	lr, #0	@ tmp5407,
	rsb	r0, r2, r0	@ tmp5421, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5408, tmp5407
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5415,
	movle	r9, #0	@, tmp5417
	movgt	r9, #1	@, tmp5417
	ldrb	sl, [r7, #1335]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5408,
	addgt	r9, r9, #1	@,, MisCnt.11417, tmp5417
	cmp	r0, #0	@ tmp5421,
	ldrb	r1, [r7, #1336]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5428, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5422, tmp5421
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5422,
	addgt	r9, r9, #1	@,, MisCnt.11425, MisCnt.11417
	cmp	sl, #0	@ tmp5428,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5435, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5429, tmp5428
	ldrb	ip, [r7, #1337]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5429,
	addgt	r9, r9, #1	@,, MisCnt.11433, MisCnt.11425
	cmp	r2, #0	@ tmp5435,
	ldrb	lr, [r7, #1338]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5442, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5436, tmp5435
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5436,
	addgt	r9, r9, #1	@,, MisCnt.11441, MisCnt.11433
	cmp	ip, #0	@ tmp5442,
	ldrb	r0, [r7, #1339]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5449, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5443, tmp5442
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5443,
	addgt	r9, r9, #1	@,, MisCnt.11449, MisCnt.11441
	cmp	r1, #0	@ tmp5449,
	rsb	sl, r2, r0	@ tmp5456, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5450, tmp5449
	cmp	r1, #2	@ tmp5450,
	addgt	r9, r9, #1	@,, MisCnt.11457, MisCnt.11449
	cmp	sl, #0	@ tmp5456,
	rsblt	sl, sl, #0	@ tmp5457, tmp5456
	cmp	sl, #2	@ tmp5457,
	addgt	r9, r9, #1	@,, tmp5460, MisCnt.11457
	cmp	r9, #2	@ tmp5460,
	bgt	.L37	@,
	ldr	r3, [r7, #1340]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1344]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1348]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1353]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1352]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5478, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5478,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5471, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1354]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5479, tmp5478
	cmp	lr, #0	@ tmp5471,
	rsb	r0, r2, r0	@ tmp5485, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5472, tmp5471
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5479,
	movle	r9, #0	@, tmp5481
	movgt	r9, #1	@, tmp5481
	ldrb	sl, [r7, #1355]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5472,
	addgt	r9, r9, #1	@,, MisCnt.11483, tmp5481
	cmp	r0, #0	@ tmp5485,
	ldrb	r1, [r7, #1356]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5492, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5486, tmp5485
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5486,
	addgt	r9, r9, #1	@,, MisCnt.11491, MisCnt.11483
	cmp	sl, #0	@ tmp5492,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5499, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5493, tmp5492
	ldrb	ip, [r7, #1357]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5493,
	addgt	r9, r9, #1	@,, MisCnt.11499, MisCnt.11491
	cmp	r2, #0	@ tmp5499,
	ldrb	lr, [r7, #1358]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5506, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5500, tmp5499
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5500,
	addgt	r9, r9, #1	@,, MisCnt.11507, MisCnt.11499
	cmp	ip, #0	@ tmp5506,
	ldrb	r0, [r7, #1359]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5513, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5507, tmp5506
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5507,
	addgt	r9, r9, #1	@,, MisCnt.11515, MisCnt.11507
	cmp	r1, #0	@ tmp5513,
	rsb	sl, r2, r0	@ tmp5520, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5514, tmp5513
	cmp	r1, #2	@ tmp5514,
	addgt	r9, r9, #1	@,, MisCnt.11523, MisCnt.11515
	cmp	sl, #0	@ tmp5520,
	rsblt	sl, sl, #0	@ tmp5521, tmp5520
	cmp	sl, #2	@ tmp5521,
	addgt	r9, r9, #1	@,, tmp5524, MisCnt.11523
	cmp	r9, #2	@ tmp5524,
	bgt	.L37	@,
	ldr	r3, [r7, #1360]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1364]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1368]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1373]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1372]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5542, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5542,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5535, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1374]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5543, tmp5542
	cmp	lr, #0	@ tmp5535,
	rsb	r0, r2, r0	@ tmp5549, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5536, tmp5535
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5543,
	movle	r9, #0	@, tmp5545
	movgt	r9, #1	@, tmp5545
	ldrb	sl, [r7, #1375]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5536,
	addgt	r9, r9, #1	@,, MisCnt.11549, tmp5545
	cmp	r0, #0	@ tmp5549,
	ldrb	r1, [r7, #1376]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5556, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5550, tmp5549
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5550,
	addgt	r9, r9, #1	@,, MisCnt.11557, MisCnt.11549
	cmp	sl, #0	@ tmp5556,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5563, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5557, tmp5556
	ldrb	ip, [r7, #1377]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5557,
	addgt	r9, r9, #1	@,, MisCnt.11565, MisCnt.11557
	cmp	r2, #0	@ tmp5563,
	ldrb	lr, [r7, #1378]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5570, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5564, tmp5563
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5564,
	addgt	r9, r9, #1	@,, MisCnt.11573, MisCnt.11565
	cmp	ip, #0	@ tmp5570,
	ldrb	r0, [r7, #1379]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5577, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5571, tmp5570
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5571,
	addgt	r9, r9, #1	@,, MisCnt.11581, MisCnt.11573
	cmp	r1, #0	@ tmp5577,
	rsb	sl, r2, r0	@ tmp5584, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5578, tmp5577
	cmp	r1, #2	@ tmp5578,
	addgt	r9, r9, #1	@,, MisCnt.11589, MisCnt.11581
	cmp	sl, #0	@ tmp5584,
	rsblt	sl, sl, #0	@ tmp5585, tmp5584
	cmp	sl, #2	@ tmp5585,
	addgt	r9, r9, #1	@,, tmp5588, MisCnt.11589
	cmp	r9, #2	@ tmp5588,
	bgt	.L37	@,
	ldr	r3, [r7, #1380]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1384]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1388]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1393]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1392]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp5606, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5606,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp5599, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1394]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5607, tmp5606
	cmp	sl, #0	@ tmp5599,
	rsb	r0, r2, r0	@ tmp5613, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5600, tmp5599
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5607,
	movle	r3, #0	@, tmp5609
	movgt	r3, #1	@, tmp5609
	ldrb	r9, [r7, #1395]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5600,
	addgt	r3, r3, #1	@,, MisCnt.3361, tmp5609
	cmp	r0, #0	@ tmp5613,
	ldrb	r1, [r7, #1396]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp5620, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5614, tmp5613
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5614,
	addgt	r3, r3, #1	@,, MisCnt.3369, MisCnt.3361
	cmp	r9, #0	@ tmp5620,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5627, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp5621, tmp5620
	ldrb	ip, [r7, #1397]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp5621,
	addgt	r3, r3, #1	@,, MisCnt.3378, MisCnt.3369
	cmp	r2, #0	@ tmp5627,
	ldrb	sl, [r7, #1398]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5634, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5628, tmp5627
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5628,
	addgt	r3, r3, #1	@,, MisCnt.3389, MisCnt.3378
	cmp	ip, #0	@ tmp5634,
	ldrb	r0, [r7, #1399]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5635, tmp5634
	rsb	r1, r1, sl	@ tmp5641, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5635,
	addgt	r3, r3, #1	@,, MisCnt.3400, MisCnt.3389
	cmp	r1, #0	@ tmp5641,
	rsb	ip, r2, r0	@ tmp5648, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5642, tmp5641
	cmp	r1, #2	@ tmp5642,
	addgt	r3, r3, #1	@,, MisCnt.3409, MisCnt.3400
	cmp	ip, #0	@ tmp5648,
	rsblt	ip, ip, #0	@ tmp5649, tmp5648
	cmp	ip, #2	@ tmp5649,
	addgt	r3, r3, #1	@,, tmp5652, MisCnt.3409
	cmp	r3, #2	@ tmp5652,
	movle	r0, #19	@ Result,
	ble	.L18	@,
.L37:
	ldr	r3, [r6, #1400]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1404]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1408]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp5653,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp5653,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r6, #1413]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1412]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5670, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5670,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5663, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1414]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5671, tmp5670
	cmp	lr, #0	@ tmp5663,
	rsb	r0, r2, r0	@ tmp5677, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5664, tmp5663
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5671,
	movle	r9, #0	@, tmp5673
	movgt	r9, #1	@, tmp5673
	ldrb	sl, [r6, #1415]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5664,
	addgt	r9, r9, #1	@,, MisCnt.11615, tmp5673
	cmp	r0, #0	@ tmp5677,
	ldrb	r1, [r6, #1416]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5684, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5678, tmp5677
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5678,
	addgt	r9, r9, #1	@,, MisCnt.11623, MisCnt.11615
	cmp	sl, #0	@ tmp5684,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5691, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5685, tmp5684
	ldrb	ip, [r6, #1417]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5685,
	addgt	r9, r9, #1	@,, MisCnt.11631, MisCnt.11623
	cmp	r2, #0	@ tmp5691,
	ldrb	lr, [r6, #1418]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5698, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5692, tmp5691
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5692,
	addgt	r9, r9, #1	@,, MisCnt.11639, MisCnt.11631
	cmp	ip, #0	@ tmp5698,
	ldrb	r0, [r6, #1419]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5699, tmp5698
	rsb	r1, r1, lr	@ tmp5705, SmpPat.Pix, <variable>.Pix
	ldrb	sl, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5699,
	addgt	r9, r9, #1	@,, MisCnt.11647, MisCnt.11639
	cmp	r1, #0	@ tmp5705,
	rsb	ip, sl, r0	@ tmp5712, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5706, tmp5705
	cmp	r1, #2	@ tmp5706,
	addgt	r9, r9, #1	@,, MisCnt.11655, MisCnt.11647
	cmp	ip, #0	@ tmp5712,
	rsblt	ip, ip, #0	@ tmp5713, tmp5712
	cmp	ip, #2	@ tmp5713,
	addgt	r9, r9, #1	@,, tmp5716, MisCnt.11655
	cmp	r9, #2	@ tmp5716,
	bgt	.L38	@,
	ldr	r3, [r7, #1420]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1424]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1428]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1433]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1432]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5734, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5734,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5727, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1434]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5735, tmp5734
	cmp	lr, #0	@ tmp5727,
	rsb	r0, r2, r0	@ tmp5741, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5728, tmp5727
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5735,
	movle	r9, #0	@, tmp5737
	movgt	r9, #1	@, tmp5737
	ldrb	sl, [r7, #1435]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5728,
	addgt	r9, r9, #1	@,, MisCnt.11681, tmp5737
	cmp	r0, #0	@ tmp5741,
	ldrb	r1, [r7, #1436]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5748, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5742, tmp5741
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5742,
	addgt	r9, r9, #1	@,, MisCnt.11689, MisCnt.11681
	cmp	sl, #0	@ tmp5748,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5755, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5749, tmp5748
	ldrb	ip, [r7, #1437]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5749,
	addgt	r9, r9, #1	@,, MisCnt.11697, MisCnt.11689
	cmp	r2, #0	@ tmp5755,
	ldrb	lr, [r7, #1438]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5762, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5756, tmp5755
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5756,
	addgt	r9, r9, #1	@,, MisCnt.11705, MisCnt.11697
	cmp	ip, #0	@ tmp5762,
	ldrb	r0, [r7, #1439]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5769, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5763, tmp5762
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5763,
	addgt	r9, r9, #1	@,, MisCnt.11713, MisCnt.11705
	cmp	r1, #0	@ tmp5769,
	rsb	sl, r2, r0	@ tmp5776, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5770, tmp5769
	cmp	r1, #2	@ tmp5770,
	addgt	r9, r9, #1	@,, MisCnt.11721, MisCnt.11713
	cmp	sl, #0	@ tmp5776,
	rsblt	sl, sl, #0	@ tmp5777, tmp5776
	cmp	sl, #2	@ tmp5777,
	addgt	r9, r9, #1	@,, tmp5780, MisCnt.11721
	cmp	r9, #2	@ tmp5780,
	bgt	.L38	@,
	ldr	r3, [r7, #1440]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1444]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1448]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1453]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1452]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5798, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5798,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5791, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1454]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5799, tmp5798
	cmp	lr, #0	@ tmp5791,
	rsb	r0, r2, r0	@ tmp5805, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5792, tmp5791
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5799,
	movle	r9, #0	@, tmp5801
	movgt	r9, #1	@, tmp5801
	ldrb	sl, [r7, #1455]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5792,
	addgt	r9, r9, #1	@,, MisCnt.11747, tmp5801
	cmp	r0, #0	@ tmp5805,
	ldrb	r1, [r7, #1456]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5812, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5806, tmp5805
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5806,
	addgt	r9, r9, #1	@,, MisCnt.11755, MisCnt.11747
	cmp	sl, #0	@ tmp5812,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5819, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5813, tmp5812
	ldrb	ip, [r7, #1457]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5813,
	addgt	r9, r9, #1	@,, MisCnt.11763, MisCnt.11755
	cmp	r2, #0	@ tmp5819,
	ldrb	lr, [r7, #1458]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5826, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5820, tmp5819
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5820,
	addgt	r9, r9, #1	@,, MisCnt.11771, MisCnt.11763
	cmp	ip, #0	@ tmp5826,
	ldrb	r0, [r7, #1459]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5833, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5827, tmp5826
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5827,
	addgt	r9, r9, #1	@,, MisCnt.11779, MisCnt.11771
	cmp	r1, #0	@ tmp5833,
	rsb	sl, r2, r0	@ tmp5840, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5834, tmp5833
	cmp	r1, #2	@ tmp5834,
	addgt	r9, r9, #1	@,, MisCnt.11787, MisCnt.11779
	cmp	sl, #0	@ tmp5840,
	rsblt	sl, sl, #0	@ tmp5841, tmp5840
	cmp	sl, #2	@ tmp5841,
	addgt	r9, r9, #1	@,, tmp5844, MisCnt.11787
	cmp	r9, #2	@ tmp5844,
	bgt	.L38	@,
	ldr	r3, [r7, #1460]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1464]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1468]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	ip, [r7, #1473]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	sl, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1472]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, sl, ip	@ tmp5862, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5862,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	lr, r1, r9	@ tmp5855, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1474]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5863, tmp5862
	cmp	lr, #0	@ tmp5855,
	rsb	r0, r2, r0	@ tmp5869, SmpPat.Pix, <variable>.Pix
	rsblt	lr, lr, #0	@ tmp5856, tmp5855
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5863,
	movle	r9, #0	@, tmp5865
	movgt	r9, #1	@, tmp5865
	ldrb	sl, [r7, #1475]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	lr, #2	@ tmp5856,
	addgt	r9, r9, #1	@,, MisCnt.11813, tmp5865
	cmp	r0, #0	@ tmp5869,
	ldrb	r1, [r7, #1476]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp5876, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5870, tmp5869
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5870,
	addgt	r9, r9, #1	@,, MisCnt.11821, MisCnt.11813
	cmp	sl, #0	@ tmp5876,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5883, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5877, tmp5876
	ldrb	ip, [r7, #1477]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5877,
	addgt	r9, r9, #1	@,, MisCnt.11829, MisCnt.11821
	cmp	r2, #0	@ tmp5883,
	ldrb	lr, [r7, #1478]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5890, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5884, tmp5883
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5884,
	addgt	r9, r9, #1	@,, MisCnt.11837, MisCnt.11829
	cmp	ip, #0	@ tmp5890,
	ldrb	r0, [r7, #1479]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r1, r1, lr	@ tmp5897, SmpPat.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5891, tmp5890
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5891,
	addgt	r9, r9, #1	@,, MisCnt.11845, MisCnt.11837
	cmp	r1, #0	@ tmp5897,
	rsb	sl, r2, r0	@ tmp5904, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5898, tmp5897
	cmp	r1, #2	@ tmp5898,
	addgt	r9, r9, #1	@,, MisCnt.11853, MisCnt.11845
	cmp	sl, #0	@ tmp5904,
	rsblt	sl, sl, #0	@ tmp5905, tmp5904
	cmp	sl, #2	@ tmp5905,
	addgt	r9, r9, #1	@,, tmp5908, MisCnt.11853
	cmp	r9, #2	@ tmp5908,
	bgt	.L38	@,
	ldr	r3, [r7, #1480]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1484]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1488]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r7, #1493]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r7, #1492]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp5926, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5926,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp5919, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1494]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5927, tmp5926
	cmp	sl, #0	@ tmp5919,
	rsb	r0, r2, r0	@ tmp5933, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5920, tmp5919
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5927,
	movle	r3, #0	@, tmp5929
	movgt	r3, #1	@, tmp5929
	ldrb	r9, [r7, #1495]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5920,
	addgt	r3, r3, #1	@,, MisCnt.3430, tmp5929
	cmp	r0, #0	@ tmp5933,
	ldrb	r1, [r7, #1496]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp5940, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5934, tmp5933
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5934,
	addgt	r3, r3, #1	@,, MisCnt.3441, MisCnt.3430
	cmp	r9, #0	@ tmp5940,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp5947, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp5941, tmp5940
	ldrb	ip, [r7, #1497]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp5941,
	addgt	r3, r3, #1	@,, MisCnt.3451, MisCnt.3441
	cmp	r2, #0	@ tmp5947,
	ldrb	sl, [r7, #1498]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp5954, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp5948, tmp5947
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp5948,
	addgt	r3, r3, #1	@,, MisCnt.3461, MisCnt.3451
	cmp	ip, #0	@ tmp5954,
	ldrb	r0, [r7, #1499]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp5955, tmp5954
	rsb	r1, r1, sl	@ tmp5961, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp5955,
	addgt	r3, r3, #1	@,, MisCnt.3472, MisCnt.3461
	cmp	r1, #0	@ tmp5961,
	rsb	ip, r2, r0	@ tmp5968, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp5962, tmp5961
	cmp	r1, #2	@ tmp5962,
	addgt	r3, r3, #1	@,, MisCnt.3483, MisCnt.3472
	cmp	ip, #0	@ tmp5968,
	rsblt	ip, ip, #0	@ tmp5969, tmp5968
	cmp	ip, #2	@ tmp5969,
	addgt	r3, r3, #1	@,, tmp5972, MisCnt.3483
	cmp	r3, #2	@ tmp5972,
	movle	r0, #26	@ Result,
	ble	.L18	@,
.L38:
	ldr	r3, [r6, #1500]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r6, #1504]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r6, #1508]	@ <variable>.Py, <variable>.Py
	movw	r7, #:lower16:.LANCHOR0	@ tmp5973,
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	movt	r7, #:upper16:.LANCHOR0	@ tmp5973,
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	sl, [r6, #1513]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r9, [r6, #1512]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, sl	@ tmp5990, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp5990,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	sl, r1, r9	@ tmp5983, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r6, #1514]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp5991, tmp5990
	cmp	sl, #0	@ tmp5983,
	rsb	r0, r2, r0	@ tmp5997, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp5984, tmp5983
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp5991,
	movle	r3, #0	@, tmp5993
	movgt	r3, #1	@, tmp5993
	ldrb	r9, [r6, #1515]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp5984,
	addgt	r3, r3, #1	@,, MisCnt.11879, tmp5993
	cmp	r0, #0	@ tmp5997,
	ldrb	r1, [r6, #1516]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r9, ip, r9	@ tmp6004, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp5998, tmp5997
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp5998,
	addgt	r3, r3, #1	@,, MisCnt.11887, MisCnt.11879
	cmp	r9, #0	@ tmp6004,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6011, SmpPat.Pix, <variable>.Pix
	rsblt	r9, r9, #0	@ tmp6005, tmp6004
	ldrb	ip, [r6, #1517]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r9, #2	@ tmp6005,
	addgt	r3, r3, #1	@,, MisCnt.11895, MisCnt.11887
	cmp	r2, #0	@ tmp6011,
	ldrb	sl, [r6, #1518]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6018, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6012, tmp6011
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6012,
	addgt	r3, r3, #1	@,, MisCnt.11903, MisCnt.11895
	cmp	ip, #0	@ tmp6018,
	ldrb	r0, [r6, #1519]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6019, tmp6018
	rsb	r1, r1, sl	@ tmp6025, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6019,
	addgt	r3, r3, #1	@,, MisCnt.11911, MisCnt.11903
	cmp	r1, #0	@ tmp6025,
	rsb	ip, r2, r0	@ tmp6032, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6026, tmp6025
	cmp	r1, #2	@ tmp6026,
	addgt	r3, r3, #1	@,, MisCnt.11919, MisCnt.11911
	cmp	ip, #0	@ tmp6032,
	rsblt	ip, ip, #0	@ tmp6033, tmp6032
	cmp	ip, #2	@ tmp6033,
	addgt	r3, r3, #1	@,, tmp6036, MisCnt.11919
	cmp	r3, #2	@ tmp6036,
	bgt	.L50	@,
	ldr	r3, [r7, #1520]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1524]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1528]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #1533]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #1532]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp6054, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6054,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp6047, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1534]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6055, tmp6054
	cmp	r6, #0	@ tmp6047,
	rsb	r0, r2, r0	@ tmp6061, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp6048, tmp6047
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6055,
	movle	r3, #0	@, tmp6057
	movgt	r3, #1	@, tmp6057
	ldrb	sl, [r7, #1535]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp6048,
	addgt	r3, r3, #1	@,, MisCnt.11945, tmp6057
	cmp	r0, #0	@ tmp6061,
	ldrb	r1, [r7, #1536]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6068, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6062, tmp6061
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6062,
	addgt	r3, r3, #1	@,, MisCnt.11953, MisCnt.11945
	cmp	sl, #0	@ tmp6068,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6075, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6069, tmp6068
	ldrb	ip, [r7, #1537]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6069,
	addgt	r3, r3, #1	@,, MisCnt.11961, MisCnt.11953
	cmp	r2, #0	@ tmp6075,
	ldrb	r6, [r7, #1538]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6082, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6076, tmp6075
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6076,
	addgt	r3, r3, #1	@,, MisCnt.11969, MisCnt.11961
	cmp	ip, #0	@ tmp6082,
	ldrb	r0, [r7, #1539]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6083, tmp6082
	rsb	r1, r1, r6	@ tmp6089, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6083,
	addgt	r3, r3, #1	@,, MisCnt.11977, MisCnt.11969
	cmp	r1, #0	@ tmp6089,
	rsb	ip, r2, r0	@ tmp6096, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6090, tmp6089
	cmp	r1, #2	@ tmp6090,
	addgt	r3, r3, #1	@,, MisCnt.11985, MisCnt.11977
	cmp	ip, #0	@ tmp6096,
	rsblt	ip, ip, #0	@ tmp6097, tmp6096
	cmp	ip, #2	@ tmp6097,
	addgt	r3, r3, #1	@,, tmp6100, MisCnt.11985
	cmp	r3, #2	@ tmp6100,
	bgt	.L50	@,
	ldr	r3, [r7, #1540]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1544]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1548]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #1553]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #1552]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp6118, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6118,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp6111, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1554]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6119, tmp6118
	cmp	r6, #0	@ tmp6111,
	rsb	r0, r2, r0	@ tmp6125, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp6112, tmp6111
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6119,
	movle	r3, #0	@, tmp6121
	movgt	r3, #1	@, tmp6121
	ldrb	sl, [r7, #1555]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp6112,
	addgt	r3, r3, #1	@,, MisCnt.12011, tmp6121
	cmp	r0, #0	@ tmp6125,
	ldrb	r1, [r7, #1556]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6132, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6126, tmp6125
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6126,
	addgt	r3, r3, #1	@,, MisCnt.12019, MisCnt.12011
	cmp	sl, #0	@ tmp6132,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6139, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6133, tmp6132
	ldrb	ip, [r7, #1557]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6133,
	addgt	r3, r3, #1	@,, MisCnt.12027, MisCnt.12019
	cmp	r2, #0	@ tmp6139,
	ldrb	r6, [r7, #1558]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6146, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6140, tmp6139
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6140,
	addgt	r3, r3, #1	@,, MisCnt.12035, MisCnt.12027
	cmp	ip, #0	@ tmp6146,
	ldrb	r0, [r7, #1559]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6147, tmp6146
	rsb	r1, r1, r6	@ tmp6153, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6147,
	addgt	r3, r3, #1	@,, MisCnt.12043, MisCnt.12035
	cmp	r1, #0	@ tmp6153,
	rsb	ip, r2, r0	@ tmp6160, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6154, tmp6153
	cmp	r1, #2	@ tmp6154,
	addgt	r3, r3, #1	@,, MisCnt.12051, MisCnt.12043
	cmp	ip, #0	@ tmp6160,
	rsblt	ip, ip, #0	@ tmp6161, tmp6160
	cmp	ip, #2	@ tmp6161,
	addgt	r3, r3, #1	@,, tmp6164, MisCnt.12051
	cmp	r3, #2	@ tmp6164,
	bgt	.L50	@,
	ldr	r3, [r7, #1560]	@ <variable>.Comp, <variable>.Comp
	mov	r0, sp	@,
	ldr	r2, [r7, #1564]	@ <variable>.Px, <variable>.Px
	mov	r1, r5	@, pDetPara
	ldr	lr, [r7, #1568]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r6, [r7, #1573]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	sl, [r7, #1572]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r6	@ tmp6182, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6182,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r6, r1, sl	@ tmp6175, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1574]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6183, tmp6182
	cmp	r6, #0	@ tmp6175,
	rsb	r0, r2, r0	@ tmp6189, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp6176, tmp6175
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6183,
	movle	r3, #0	@, tmp6185
	movgt	r3, #1	@, tmp6185
	ldrb	sl, [r7, #1575]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp6176,
	addgt	r3, r3, #1	@,, MisCnt.12077, tmp6185
	cmp	r0, #0	@ tmp6189,
	ldrb	r1, [r7, #1576]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	sl, ip, sl	@ tmp6196, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6190, tmp6189
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6190,
	addgt	r3, r3, #1	@,, MisCnt.12085, MisCnt.12077
	cmp	sl, #0	@ tmp6196,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6203, SmpPat.Pix, <variable>.Pix
	rsblt	sl, sl, #0	@ tmp6197, tmp6196
	ldrb	ip, [r7, #1577]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	sl, #2	@ tmp6197,
	addgt	r3, r3, #1	@,, MisCnt.12093, MisCnt.12085
	cmp	r2, #0	@ tmp6203,
	ldrb	r6, [r7, #1578]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6210, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6204, tmp6203
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6204,
	addgt	r3, r3, #1	@,, MisCnt.12101, MisCnt.12093
	cmp	ip, #0	@ tmp6210,
	ldrb	r0, [r7, #1579]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6211, tmp6210
	rsb	r1, r1, r6	@ tmp6217, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6211,
	addgt	r3, r3, #1	@,, MisCnt.12109, MisCnt.12101
	cmp	r1, #0	@ tmp6217,
	rsb	ip, r2, r0	@ tmp6224, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6218, tmp6217
	cmp	r1, #2	@ tmp6218,
	addgt	r3, r3, #1	@,, MisCnt.12117, MisCnt.12109
	cmp	ip, #0	@ tmp6224,
	rsblt	ip, ip, #0	@ tmp6225, tmp6224
	cmp	ip, #2	@ tmp6225,
	addgt	r3, r3, #1	@,, tmp6228, MisCnt.12117
	cmp	r3, #2	@ tmp6228,
	bgt	.L50	@,
	ldr	r3, [r7, #1580]	@ <variable>.Comp, <variable>.Comp
	mov	r1, r5	@, pDetPara
	ldr	r2, [r7, #1584]	@ <variable>.Px, <variable>.Px
	mov	r0, sp	@,
	ldr	lr, [r7, #1588]	@ <variable>.Py, <variable>.Py
	str	r3, [sp, #0]	@ <variable>.Comp, SmpPat.Comp
	stmib	sp, {r2, lr}	@ phole stm
	bl	GetSample	@
	ldrb	r5, [r7, #1593]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	ip, [sp, #13]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	ldrb	r6, [r7, #1592]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	ldrb	r1, [sp, #12]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r3, ip, r5	@ tmp6246, SmpPat.Pix, <variable>.Pix
	cmp	r3, #0	@ tmp6246,
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r5, r1, r6	@ tmp6239, SmpPat.Pix, <variable>.Pix
	ldrb	r0, [r7, #1594]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	r3, r3, #0	@ tmp6247, tmp6246
	cmp	r5, #0	@ tmp6239,
	rsb	r0, r2, r0	@ tmp6253, SmpPat.Pix, <variable>.Pix
	rsblt	r5, r5, #0	@ tmp6240, tmp6239
	ldrb	ip, [sp, #15]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r3, #2	@ tmp6247,
	movle	r3, #0	@, tmp6249
	movgt	r3, #1	@, tmp6249
	ldrb	r6, [r7, #1595]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r5, #2	@ tmp6240,
	addgt	r3, r3, #1	@,, MisCnt.3502, tmp6249
	cmp	r0, #0	@ tmp6253,
	ldrb	r1, [r7, #1596]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	r6, ip, r6	@ tmp6260, SmpPat.Pix, <variable>.Pix
	rsblt	r0, r0, #0	@ tmp6254, tmp6253
	ldrb	r2, [sp, #16]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r0, #2	@ tmp6254,
	addgt	r3, r3, #1	@,, MisCnt.3513, MisCnt.3502
	cmp	r6, #0	@ tmp6260,
	ldrb	r0, [sp, #17]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	rsb	r2, r2, r1	@ tmp6267, SmpPat.Pix, <variable>.Pix
	rsblt	r6, r6, #0	@ tmp6261, tmp6260
	ldrb	ip, [r7, #1597]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	cmp	r6, #2	@ tmp6261,
	addgt	r3, r3, #1	@,, MisCnt.3524, MisCnt.3513
	cmp	r2, #0	@ tmp6267,
	ldrb	r5, [r7, #1598]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsb	ip, r0, ip	@ tmp6274, SmpPat.Pix, <variable>.Pix
	rsblt	r2, r2, #0	@ tmp6268, tmp6267
	ldrb	r1, [sp, #18]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	r2, #2	@ tmp6268,
	addgt	r3, r3, #1	@,, MisCnt.3533, MisCnt.3524
	cmp	ip, #0	@ tmp6274,
	ldrb	r0, [r7, #1599]	@ zero_extendqisi2	@ <variable>.Pix, <variable>.Pix
	rsblt	ip, ip, #0	@ tmp6275, tmp6274
	rsb	r1, r1, r5	@ tmp6281, SmpPat.Pix, <variable>.Pix
	ldrb	r2, [sp, #19]	@ zero_extendqisi2	@ SmpPat.Pix, SmpPat.Pix
	cmp	ip, #2	@ tmp6275,
	addgt	r3, r3, #1	@,, MisCnt.3544, MisCnt.3533
	cmp	r1, #0	@ tmp6281,
	rsb	ip, r2, r0	@ tmp6288, SmpPat.Pix, <variable>.Pix
	rsblt	r1, r1, #0	@ tmp6282, tmp6281
	cmp	r1, #2	@ tmp6282,
	addgt	r3, r3, #1	@,, MisCnt.3555, MisCnt.3544
	cmp	ip, #0	@ tmp6288,
	rsblt	ip, ip, #0	@ tmp6289, tmp6288
	cmp	ip, #2	@ tmp6289,
	addgt	r3, r3, #1	@,, tmp6292, MisCnt.3555
	cmp	r3, #2	@ tmp6292,
	bgt	.L50	@,
	mov	r0, #30	@ Result,
	b	.L18	@
.L77:
	bl	__stack_chk_fail	@
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
