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
	.file	"vdm_hal_divx3.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_divx3.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V200R004_StartVDH
	.type	DIVX3HAL_V200R004_StartVDH, %function
DIVX3HAL_V200R004_StartVDH:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	b	dprint_vfmw	@
	.fnend
	.size	DIVX3HAL_V200R004_StartVDH, .-DIVX3HAL_V200R004_StartVDH
	.align	2
	.global	DIVX3HAL_V200R004_WriteReg
	.type	DIVX3HAL_V200R004_WriteReg, %function
DIVX3HAL_V200R004_WriteReg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r5, r1	@ pDivx3DecParam, pDivx3DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC1	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC1	@,
	mov	sl, r2	@ VdhId, VdhId
	movw	r6, #1144	@ tmp192,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r4, #:lower16:g_HwMem	@ tmp360,
	ldr	r7, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r4, #:upper16:g_HwMem	@ tmp360,
	mul	r6, r6, sl	@ tmp191, tmp192, VdhId
	movw	r1, #:lower16:.LC2	@,
	mul	r3, r7, r0	@ tmp179, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	r7, #0	@ tmp178,
	movt	r1, #:upper16:.LC2	@,
	mov	r0, #3	@,
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	sub	ip, r3, #1	@ tmp182, tmp179,
	bic	r3, ip, #-16777216	@ tmp189, tmp182,
	bic	ip, r3, #15728640	@ tmp189, tmp189,
	bfi	ip, r7, #25, #1	@ tmp189, tmp178,,
	str	ip, [sp, #4]	@ tmp189,
	str	ip, [r2, #8]	@ tmp189,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	mov	r3, #5	@ tmp202,
	ldr	ip, [r5, #156]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	mov	lr, r1, lsr #6	@ tmp200, <variable>.DDRStride,
	movw	r1, #:lower16:.LC3	@,
	bfi	r3, lr, #4, #10	@ tmp202, tmp200,,
	movt	r1, #:upper16:.LC3	@,
	orr	lr, r3, #49152	@ tmp207, tmp202,
	bfi	lr, r7, #16, #12	@ tmp207, tmp178,,
	bic	r3, lr, #805306368	@ tmp208, tmp207,
	orr	lr, r3, #536870912	@ tmp212, tmp208,
	bfi	lr, ip, #30, #1	@ tmp212, <variable>.Compress_en,,
	bfi	lr, r7, #31, #1	@ tmp213, tmp178,,
	str	lr, [sp, #4]	@ tmp213,
	str	lr, [r2, #12]	@ tmp213,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bic	r3, ip, #15	@ tmp224, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp224, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp224,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bic	r3, ip, #15	@ tmp235, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp235, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp235,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #96]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [sp, #4]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	ip, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	r7, [sp, #4]	@ tmp178, D32
	movls	r3, #65536	@ tmp255,
	strls	r3, [sp, #4]	@ tmp255, D32
	cmp	sl, #0	@ VdhId,
	ble	.L6	@,
	movw	r1, #:lower16:.LC7	@,
	mov	r2, #194	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L8:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L6:
	movw	r0, #1144	@ tmp260,
	movw	r2, #:lower16:3148803	@ tmp257,
	mul	r6, r0, sl	@ tmp259, tmp260, VdhId
	movt	r2, #:upper16:3148803	@ tmp257,
	str	r2, [sp, #4]	@ tmp257, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r7, #0	@ tmp318,
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [lr, #60]	@ tmp257,
	ldr	ip, [sp, #4]	@ D32.551, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #64]	@ D32.551,
	ldr	lr, [sp, #4]	@ D32.555, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #68]	@ D32.555,
	ldr	ip, [sp, #4]	@ D32.559, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #72]	@ D32.559,
	ldr	lr, [sp, #4]	@ D32.563, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #76]	@ D32.563,
	ldr	ip, [sp, #4]	@ D32.567, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.567,
	ldr	lr, [sp, #4]	@ D32.571, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #84]	@ D32.571,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bic	r3, ip, #15	@ D32.439, <variable>.CurPicPhyAddr,
	str	r3, [sp, #4]	@ D32.439, D32
	str	r3, [r2, #96]	@ D32.439,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, #136]	@ D32.577, <variable>.DDRStride
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	ip, [sp, #4]	@ D32.577, D32
	str	ip, [r2, #100]	@ D32.577,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #140]	@ D32.441, <variable>.uv_offset
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	r3, [sp, #4]	@ D32.441, D32
	str	r3, [ip, #104]	@ D32.441,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	str	r7, [r2, #108]	@ tmp318,
	ldr	r3, [r8, #1120]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [ip, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #4]	@ tmp318, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	str	r7, [r2, #148]	@ tmp318,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, r7	@ tmp346, tmp318
	bfi	r3, r7, #0, #1	@ tmp346, tmp318,,
	str	r3, [sp, #4]	@ tmp346,
	mov	r0, #3	@,
	str	r3, [ip, #152]	@ tmp346,
	movw	r1, #:lower16:.LC14	@,
	ldr	r2, [sp, #4]	@, D32
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r1, #0	@ tmp359,
	str	r1, [r2, #32]	@ tmp359,
	b	.L8	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteReg, .-DIVX3HAL_V200R004_WriteReg
	.align	2
	.global	DIVX3HAL_V200R004_WriteSliceMsg
	.type	DIVX3HAL_V200R004_WriteSliceMsg, %function
DIVX3HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r0, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r1	@ pDivx3DecParam, pDivx3DecParam
	bic	r3, r2, #15	@, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L32	@,
	ldr	r0, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	streq	r0, [sp, #0]	@ <variable>.slice_start_mbn, %sfp
	bne	.L33	@,
.L14:
	ldr	r3, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r3, #0	@ <variable>.TotalSliceNum,
	beq	.L23	@,
	add	r9, sp, #12	@ tmp255,,
	mov	r5, #0	@ i,
.L22:
	cmp	r5, #0	@ i,
	moveq	r7, #14	@ tmp251,
	beq	.L15	@,
	add	r7, r5, #14	@ tmp251, i,
	add	r2, r5, #13	@ tmp214, i,
	ldr	r0, [r6, r7, asl #2]	@ tmp215, <variable>.slice_start_mbn
	ldr	r1, [r6, r2, asl #2]	@ tmp216, <variable>.slice_start_mbn
	cmp	r0, r1	@ tmp215, tmp216
	bls	.L16	@,
.L15:
	ldr	r3, [sp, #0]	@, %sfp
	mov	r4, #0	@ tmp220,
	ldr	fp, [r6, r7, asl #2]	@ tmp221, <variable>.slice_start_mbn
	mov	r0, #4	@,
	add	r8, r5, r3	@ D.31307, i,
	movw	r1, #:lower16:.LC17	@,
	bfi	r4, fp, #0, #20	@ tmp220, tmp221,,
	str	r4, [r9, #0]	@ tmp220,
	str	r4, [sl, r8, asl #8]	@ D32.651,* pMsgBase
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [sp, #12]	@, D32
	add	r4, r5, #1	@ j, i,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #52]	@ temp.663, <variable>.TotalSliceNum
	mov	fp, r8, asl #8	@ D.31308, D.31307,
	cmp	r4, r1	@ j, temp.663
	bcs	.L17	@,
	add	r5, r5, #15	@ tmp225, i,
	ldr	r2, [r6, r7, asl #2]	@ temp.664, <variable>.slice_start_mbn
	ldr	r3, [r6, r5, asl #2]	@ tmp226, <variable>.slice_start_mbn
	cmp	r2, r3	@ temp.664, tmp226
	bcc	.L17	@,
	mvn	lr, r4	@ tmp261, j
	add	r3, lr, r1	@ tmp260, tmp261, temp.663
	tst	r3, #1	@ tmp260,
	add	r7, r6, r7, asl #2	@, ivtmp.637, pDivx3DecParam, tmp251,
	beq	.L18	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r1	@ j, temp.663
	bcs	.L17	@,
	ldr	r3, [r7, #8]	@ D.31341, <variable>.slice_start_mbn
	add	r7, r7, #4	@ ivtmp.637, ivtmp.637,
	cmp	r3, r2	@ D.31341, temp.664
	bls	.L18	@,
	b	.L17	@
.L19:
	ldr	ip, [r7, #8]	@ D.31341, <variable>.slice_start_mbn
	add	r7, r3, #4	@ ivtmp.637, tmp263,
	cmp	ip, r2	@ D.31341, temp.664
	bhi	.L17	@,
	ldr	r3, [r3, #8]	@ D.31341, <variable>.slice_start_mbn
	add	r4, r4, #1	@ j, j,
	cmp	r3, r2	@ D.31341, temp.664
	bhi	.L17	@,
.L18:
	add	r4, r4, #1	@ j, j,
	add	r3, r7, #4	@ tmp263, ivtmp.637,
	cmp	r4, r1	@ j, temp.663
	bcc	.L19	@,
.L17:
	cmp	r4, r1	@ j, temp.663
	mov	r8, r8, asl #6	@ tmp240, D.31307,
	addne	r3, r4, #14	@ tmp232, j,
	add	r8, r8, #1	@ tmp241, tmp240,
	ldreq	r2, [r6, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r1, #0	@ tmp239,
	ldreq	r3, [r6, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	fp, fp, #252	@ tmp247, D.31308,
	ldrne	r2, [sp, #0]	@, %sfp
	moveq	r7, #0	@ prephitmp.620,
	sub	r5, r4, #1	@ i, j,
	muleq	r2, r2, r3	@ tmp229, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r7, r2, r4, asl #2	@, tmp235,, j,
	ldrne	r2, [r6, r3, asl #2]	@ tmp233, <variable>.slice_start_mbn
	ldrne	r3, [sp, #4]	@, %sfp
	sub	r0, r2, #1	@ last_mb_in_slice, tmp233,
	bfi	r1, r0, #0, #20	@ tmp239, last_mb_in_slice,,
	str	r1, [r9, #0]	@ tmp239,
	str	r1, [sl, r8, asl #2]	@ D32.659,* pMsgBase
	mov	r0, #4	@,
	ldr	r2, [sp, #12]	@, D32
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	addne	r7, r3, r7, asl #6	@, prephitmp.620,, tmp235,
	bl	dprint_vfmw	@
	str	r7, [r9, #0]	@ prephitmp.620, <variable>.next_slice_para_addr
	str	r7, [sl, fp]	@ D32.668,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
.L16:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ <variable>.TotalSliceNum, i
	bhi	.L22	@,
.L23:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L33:
	mov	r4, #0	@ tmp195,
	mov	r0, #4	@,
	mov	ip, r4	@ tmp197, tmp195
	bfi	ip, r4, #0, #20	@ tmp197, tmp195,,
	str	ip, [sp, #12]	@ tmp197,
	movw	r1, #:lower16:.LC17	@,
	str	ip, [sl, #0]	@ tmp197,* pMsgBase
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [sp, #12]	@, D32
	mov	lr, #1	@,
	str	lr, [sp, #0]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	sub	r3, r2, #1	@ tmp202, <variable>.slice_start_mbn,
	bfi	r4, r3, #0, #20	@ tmp204, tmp202,,
	str	r4, [sp, #12]	@ tmp204,
	str	r4, [sl, #4]	@ tmp204,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #4]	@, %sfp
	mov	r0, #4	@,
	add	r1, ip, #256	@ tmp209,,
	str	r1, [sp, #12]	@ tmp209, <variable>.next_slice_para_addr
	str	r1, [sl, #252]	@ tmp209,
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	b	.L14	@
.L32:
	movw	r1, #:lower16:.LC15	@,
	mov	r2, #484	@,
	movt	r1, #:upper16:.LC15	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	b	.L23	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteSliceMsg, .-DIVX3HAL_V200R004_WriteSliceMsg
	.align	2
	.global	DIVX3HAL_V200R004_WritePicMsg
	.type	DIVX3HAL_V200R004_WritePicMsg, %function
DIVX3HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r6, r0	@ pHwMem, pHwMem
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.31166,
	beq	.L38	@,
	ldr	r0, [r4, #4]	@ <variable>.prediction_type, <variable>.prediction_type
	mov	r8, #0	@ tmp191,
	mov	r7, r5	@ p32, D.31166
	mov	sl, r8	@ tmp194, tmp191
	bfi	sl, r0, #0, #1	@ tmp194, <variable>.prediction_type,,
	str	sl, [sp, #4]	@ tmp194,
	str	sl, [r7], #4	@ tmp194,
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@, D32
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	add	sl, r7, r0	@ p32.702, p32,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r2, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	ip, r1, #1	@ tmp200, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC18	@,
	sub	r2, r2, #1	@ tmp204, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC18	@,
	mov	r3, ip, asl #23	@ tmp205, tmp200,
	mov	ip, r3, lsr #23	@ tmp205, tmp205,
	bfi	ip, r2, #16, #9	@ tmp205, tmp204,,
	str	ip, [sp, #4]	@ tmp205,
	str	ip, [r5, #4]	@ tmp205,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@ <variable>.quantizer, <variable>.quantizer
	ldr	r1, [r4, #20]	@ <variable>.rounding_type, <variable>.rounding_type
	mov	r0, #4	@,
	ldr	r2, [r4, #24]	@ <variable>.has_skips, <variable>.has_skips
	and	ip, r3, #31	@ tmp212, <variable>.quantizer,
	bfi	ip, r1, #5, #1	@ tmp212, <variable>.rounding_type,,
	movw	r1, #:lower16:.LC21	@,
	bfi	ip, r2, #6, #1	@ tmp214, <variable>.has_skips,,
	str	ip, [sp, #4]	@ tmp214,
	str	ip, [r7, #4]	@ tmp214,
	movt	r1, #:upper16:.LC21	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@ <variable>.alternative_I_AC_chrom_DCT, <variable>.alternative_I_AC_chrom_DCT
	ldr	r1, [r4, #32]	@ <variable>.alternative_I_AC_lum_DCT, <variable>.alternative_I_AC_lum_DCT
	mov	r0, #4	@,
	ldr	r2, [r4, #36]	@ <variable>.alternative_I_DC_DCT, <variable>.alternative_I_DC_DCT
	and	r3, r3, #3	@ tmp221, <variable>.alternative_I_AC_chrom_DCT,
	ldr	lr, [r4, #40]	@ <variable>.alternative_P_AC_DCT, <variable>.alternative_P_AC_DCT
	bfi	r3, r1, #2, #2	@ tmp221, <variable>.alternative_I_AC_lum_DCT,,
	ldr	ip, [r4, #44]	@ <variable>.alternative_P_DC_DCT, <variable>.alternative_P_DC_DCT
	bfi	r3, r2, #4, #1	@ tmp223, <variable>.alternative_I_DC_DCT,,
	bfi	r3, lr, #5, #2	@ tmp225, <variable>.alternative_P_AC_DCT,,
	ldr	r2, [r4, #48]	@ <variable>.alternative_MV, <variable>.alternative_MV
	bfi	r3, ip, #7, #1	@ tmp227, <variable>.alternative_P_DC_DCT,,
	movw	r1, #:lower16:.LC22	@,
	bfi	r3, r2, #8, #1	@ tmp229, <variable>.alternative_MV,,
	str	r3, [sp, #4]	@ tmp229,
	str	r3, [sl, #4]	@ tmp229,
	movt	r1, #:upper16:.LC22	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	r3, [sp, #4]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_0
	str	r3, [r5, #64]	@ <variable>.StreamPhyAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #108]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r8	@ tmp240, tmp191
	mov	r0, #4	@,
	bfi	ip, r1, #0, #7	@ tmp240, <variable>.StreamBitOffset,,
	str	ip, [sp, #4]	@ tmp240,
	str	ip, [r5, #68]	@ tmp240,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, [sp, #4]	@, D32
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #116]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	r2, [sp, #4]	@ <variable>.StreamLength, <variable>.bit_len_0
	str	r2, [r5, #72]	@ <variable>.StreamLength,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	str	r3, [sp, #4]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_1
	str	r3, [r5, #76]	@ <variable>.StreamPhyAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #112]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	bfi	r8, r1, #0, #7	@ tmp256, <variable>.StreamBitOffset,,
	str	r8, [sp, #4]	@ tmp256,
	str	r8, [r5, #80]	@ tmp256,
	movw	r1, #:lower16:.LC27	@,
	ldr	r2, [sp, #4]	@, D32
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #120]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #4]	@ <variable>.StreamLength, <variable>.bit_len_1
	str	ip, [r5, #84]	@ <variable>.StreamLength,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #132]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC29	@,
	bic	r3, r2, #15	@ tmp267, <variable>.DispFramePhyAddr,
	str	r3, [sp, #4]	@ tmp267, <variable>.curr_rcn_addr
	str	r3, [r5, #128]	@ tmp267,
	movt	r1, #:upper16:.LC29	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	bic	r2, ip, #15	@ tmp273, <variable>.FwdRefPhyAddr,
	str	r2, [sp, #4]	@ tmp273, <variable>.fwd_ref_addr
	str	r2, [r5, #132]	@ tmp273,
	movt	r1, #:upper16:.LC30	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	bic	ip, r3, #15	@ tmp279, <variable>.SedTopAddr,
	str	ip, [sp, #4]	@ tmp279, <variable>.sed_top_addr
	str	ip, [r5, #136]	@ tmp279,
	movt	r1, #:upper16:.LC31	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	bic	r3, r2, #15	@ tmp285, <variable>.PmvTopAddr,
	str	r3, [sp, #4]	@ tmp285, <variable>.pmv_top_addr
	str	r3, [r5, #140]	@ tmp285,
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1092]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	bic	r2, ip, #15	@ tmp291, <variable>.ItransTopAddr,
	str	r2, [sp, #4]	@ tmp291, <variable>.it_top_addr
	str	r2, [r5, #144]	@ tmp291,
	movt	r1, #:upper16:.LC33	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #148]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	bic	ip, r3, #15	@ tmp297, <variable>.CurrPmvPhyAddr,
	str	ip, [sp, #4]	@ tmp297, <variable>.pmv_colmb_addr
	str	ip, [r5, #148]	@ tmp297,
	movt	r1, #:upper16:.LC34	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp303, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp303, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp303,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
.L37:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L38:
	movw	r1, #:lower16:.LC15	@,
	movw	r2, #290	@,
	movt	r1, #:upper16:.LC15	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	b	.L37	@
	.fnend
	.size	DIVX3HAL_V200R004_WritePicMsg, .-DIVX3HAL_V200R004_WritePicMsg
	.align	2
	.global	DIVX3HAL_V200R004_StartDec
	.type	DIVX3HAL_V200R004_StartDec, %function
DIVX3HAL_V200R004_StartDec:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pDivx3DecParam, pDivx3DecParam
	bls	.L47	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31041,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L47:
	beq	.L48	@,
	movw	r5, #:lower16:g_HwMem	@ tmp142,
	movt	r5, #:upper16:g_HwMem	@ tmp142,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L49	@,
.L44:
	mov	r2, #0	@,
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WriteReg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WritePicMsg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.31041,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L49:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31048,
	strne	r1, [r5, #0]	@ D.31048, <variable>.pVdmRegVirAddr
	bne	.L44	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31041,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L48:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	mov	r2, #65	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31041,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	DIVX3HAL_V200R004_StartDec, .-DIVX3HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"start VDM...\012\000"
	.space	2
.LC1:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC2:
	.ascii	"BASIC_V200R003_CFG0 = 0x%x\012\000"
.LC3:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC4:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC5:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
.LC6:
	.ascii	"STREAM_V200R003_BASE_ADDR=0x%x\012\000"
.LC7:
	.ascii	"line: %d\012\000"
	.space	2
.LC8:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC9:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC10:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC11:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC12:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC13:
	.ascii	"REF_V200R004_PIC_TYPE=0x%x\012\000"
.LC14:
	.ascii	"FF_V200R004_APT_EN=0x%x\012\000"
	.space	3
.LC15:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC16:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC17:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D63 = 0x%x\012\000"
.LC20:
	.ascii	"configuring Pic Msg...\012\000"
.LC21:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D16 = 0x%x\012\000"
.LC24:
	.ascii	"D17 = 0x%x\012\000"
.LC25:
	.ascii	"D18 = 0x%x\012\000"
.LC26:
	.ascii	"D19 = 0x%x\012\000"
.LC27:
	.ascii	"D20 = 0x%x\012\000"
.LC28:
	.ascii	"D21 = 0x%x\012\000"
.LC29:
	.ascii	"D32 = 0x%x\012\000"
.LC30:
	.ascii	"D33 = 0x%x\012\000"
.LC31:
	.ascii	"D34 = 0x%x\012\000"
.LC32:
	.ascii	"D35 = 0x%x\012\000"
.LC33:
	.ascii	"D36 = 0x%x\012\000"
.LC34:
	.ascii	"D37 = 0x%x\012\000"
.LC35:
	.ascii	"VdhId is wrong! DIVX3HAL_V200R004_StartDec\012\000"
.LC36:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
