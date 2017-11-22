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
	.file	"vdm_hal_vp6.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vp6)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp6.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.o
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
	.global	VP6HAL_V200R004_CfgReg
	.type	VP6HAL_V200R004_CfgReg, %function
VP6HAL_V200R004_CfgReg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r1	@ pHwMem, pHwMem
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	mov	r6, r0	@ pVp6DecParam, pVp6DecParam
	mov	r5, r2	@ VdhId, VdhId
	beq	.L9	@,
.L2:
	ldrh	sl, [r6, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r7, #1144	@ tmp191,
	ldrh	r0, [r6, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	r4, #:lower16:g_HwMem	@ tmp366,
	mul	r7, r7, r5	@ tmp190, tmp191, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp366,
	mul	lr, r0, sl	@ tmp184, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	sl, #0	@ tmp181,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	sub	r3, lr, #1	@ tmp185, tmp184,
	ldr	r2, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	ip, r3, #-16777216	@ tmp188, tmp185,
	bic	r5, ip, #15728640	@ tmp188, tmp188,
	bfi	r5, sl, #31, #1	@ tmp188, tmp181,,
	str	r5, [sp, #4]	@ tmp188,
	str	r5, [r2, #8]	@ tmp188,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r6, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	mov	r3, #536870922	@ tmp201,
	ldr	r5, [r6, #196]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	r2, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	mov	lr, r1, lsr #6	@ tmp199, <variable>.VahbStride,
	movw	r1, #:lower16:.LC2	@,
	bfi	r3, lr, #4, #10	@ tmp201, tmp199,,
	movt	r1, #:upper16:.LC2	@,
	orr	ip, r3, #49152	@ tmp206, tmp201,
	bfi	ip, sl, #16, #12	@ tmp206, tmp181,,
	orr	lr, ip, #536870912	@ tmp210, tmp206,
	bfi	lr, r5, #30, #1	@ tmp210, <variable>.Compress_en,,
	bfi	lr, sl, #31, #1	@ tmp211, tmp181,,
	str	lr, [sp, #4]	@ tmp211,
	str	lr, [r2, #12]	@ tmp211,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r5, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bic	ip, r3, #15	@ tmp222, <variable>.MsgSlotAddr,
	str	ip, [sp, #4]	@ tmp222, <variable>.av_msg_addr
	str	ip, [r5, #16]	@ tmp222,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bic	r3, r2, #15	@ tmp233, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp233, <variable>.va_msg_addr
	str	r3, [ip, #20]	@ tmp233,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r5, [r6, #56]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	ldr	r2, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	str	r5, [sp, #4]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	r5, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r5, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r8, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bic	r3, ip, #15	@ tmp254, <variable>.PpfdBufAddr,
	str	r3, [sp, #4]	@ tmp254, <variable>.ppfd_buf_addr
	str	r3, [r5, #128]	@ tmp254,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r8, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	sl, [sp, #4]	@ tmp181, D32
	mov	r0, #3	@,
	ldr	ip, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:.LC7	@,
	strh	r2, [sp, #4]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	movt	r1, #:upper16:.LC7	@,
	ldr	r5, [sp, #4]	@ D32.520, D32
	str	r5, [ip, #132]	@ D32.520,
	mov	r5, r7	@ tmp277, tmp190
	ldr	r2, [sp, #4]	@, D32
	mov	r7, sl	@ tmp312, tmp181
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r3, #:lower16:3148803	@ tmp275,
	movt	r3, #:upper16:3148803	@ tmp275,
	str	r3, [sp, #4]	@ tmp275, D32
	mov	r0, #3	@,
	str	r3, [r2, #60]	@ tmp275,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, [sp, #4]	@ D32.527, D32
	movt	r1, #:upper16:.LC8	@,
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #64]	@ D32.527,
	ldr	ip, [sp, #4]	@ D32.530, D32
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #68]	@ D32.530,
	ldr	ip, [sp, #4]	@ D32.533, D32
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #72]	@ D32.533,
	ldr	r2, [sp, #4]	@ D32.536, D32
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #76]	@ D32.536,
	ldr	r2, [sp, #4]	@ D32.539, D32
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #80]	@ D32.539,
	ldr	ip, [sp, #4]	@ D32.542, D32
	ldr	r3, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #84]	@ D32.542,
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r6, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	bic	r3, r2, #15	@ tmp315, <variable>.image_curr_recon_addr,
	str	r3, [sp, #4]	@ tmp315, <variable>.ystaddr_1d
	str	r3, [ip, #96]	@ tmp315,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #188]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r2, [sp, #4]	@ <variable>.VahbStride, <variable>.ystride_1d
	str	r2, [ip, #100]	@ <variable>.VahbStride,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #192]	@ <variable>.uv_offset, <variable>.uv_offset
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	str	r3, [sp, #4]	@ <variable>.uv_offset, <variable>.uvoffset_1d
	str	r3, [r2, #104]	@ <variable>.uv_offset,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r3, #1	@ tmp350,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	sl, [ip, #108]	@ tmp312,
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ tmp350, D32
	str	r3, [r2, #152]	@ tmp350,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, sl	@ D.31241, tmp312
	mvn	r2, #0	@ tmp364,
	str	r2, [ip, #32]	@ tmp364,
.L4:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L9:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31236,
	strne	r1, [r8, #0]	@ D.31236, <variable>.pVdmRegVirAddr
	bne	.L2	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31241,
	b	.L4	@
	.fnend
	.size	VP6HAL_V200R004_CfgReg, .-VP6HAL_V200R004_CfgReg
	.align	2
	.global	VP6HAL_V200R004_CfgDnMsg
	.type	VP6HAL_V200R004_CfgDnMsg, %function
VP6HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pVp6DecParam, pVp6DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ D.31358,
	beq	.L24	@,
	ldr	r0, [r4, #60]	@ <variable>.FrameType, <variable>.FrameType
	mov	r5, #0	@ tmp241,
	mov	r8, sl	@ p32, D.31358
	mov	r7, r5	@ tmp244, tmp241
	bfi	r7, r0, #0, #1	@ tmp244, <variable>.FrameType,,
	str	r7, [sp, #4]	@ tmp244,
	str	r7, [r8], #4	@ tmp244,
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@, D32
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	add	r7, r8, r0	@ p32.592, p32,
	bl	dprint_vfmw	@
	ldrh	r1, [r4, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	fp, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	r9, r1, #1	@ tmp250, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC15	@,
	sub	r2, fp, #1	@ tmp254, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC15	@,
	mov	r3, r9, asl #23	@ tmp255, tmp250,
	add	fp, r7, r0	@ p32.596, p32.592,
	add	r9, sl, #36	@ p32.608, D.31358,
	mov	ip, r3, lsr #23	@ tmp255, tmp255,
	bfi	ip, r2, #16, #9	@ tmp255, tmp254,,
	bic	r2, ip, #-33554432	@ tmp257, tmp255,
	bfi	r2, r5, #9, #7	@ tmp257, tmp241,,
	str	r2, [sp, #4]	@ tmp257,
	str	r2, [sl, #4]	@ tmp257,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ <variable>.Vp3VersionNo, <variable>.Vp3VersionNo
	ldr	r1, [r4, #104]	@ <variable>.VpProfile, <variable>.VpProfile
	mov	r0, #4	@,
	ldr	ip, [r4, #68]	@ <variable>.MultiStream, <variable>.MultiStream
	and	sl, r3, #31	@ tmp264, <variable>.Vp3VersionNo,
	ldr	lr, [r4, #72]	@ <variable>.UseHuffman, <variable>.UseHuffman
	bfi	sl, r1, #5, #2	@ tmp264, <variable>.VpProfile,,
	ldr	r2, [r4, #108]	@ <variable>.UseLoopFilter, <variable>.UseLoopFilter
	bfi	sl, ip, #7, #1	@ tmp266, <variable>.MultiStream,,
	bfi	sl, lr, #8, #1	@ tmp268, <variable>.UseHuffman,,
	movw	r1, #:lower16:.LC16	@,
	ubfx	r2, r2, #1, #1	@ tmp272, <variable>.UseLoopFilter,,
	movt	r1, #:upper16:.LC16	@,
	bfi	sl, r2, #9, #1	@ tmp277, tmp272,,
	bfi	sl, r5, #10, #22	@ tmp278, tmp241,,
	str	sl, [sp, #4]	@ tmp278,
	str	sl, [r8, #4]	@ tmp278,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #96]	@ <variable>.PredictionFilterAlpha, <variable>.PredictionFilterAlpha
	ldr	r1, [r4, #92]	@ <variable>.PredictionFilterMvSizeThresh, <variable>.PredictionFilterMvSizeThresh
	mov	r0, #4	@,
	ldr	ip, [r4, #88]	@ <variable>.PredictionFilterVarThresh, <variable>.PredictionFilterVarThresh
	and	sl, r3, #31	@ tmp285, <variable>.PredictionFilterAlpha,
	ldr	r2, [r4, #84]	@ <variable>.PredictionFilterMode, <variable>.PredictionFilterMode
	bfi	sl, r1, #5, #3	@ tmp285, <variable>.PredictionFilterMvSizeThresh,,
	bfi	sl, ip, #8, #10	@ tmp287, <variable>.PredictionFilterVarThresh,,
	movw	r1, #:lower16:.LC17	@,
	bfi	sl, r2, #18, #2	@ tmp289, <variable>.PredictionFilterMode,,
	movt	r1, #:upper16:.LC17	@,
	bfi	sl, r5, #20, #12	@ tmp290, tmp241,,
	str	sl, [sp, #4]	@ tmp290,
	str	sl, [r7, #4]	@ tmp290,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldrb	r8, [r4, #0]	@ zero_extendqisi2	@ <variable>.FLimit, <variable>.FLimit
	ldr	r1, [r4, #76]	@ <variable>.DcQuant, <variable>.DcQuant
	mov	r0, #4	@,
	ldr	r2, [r4, #80]	@ <variable>.AcQuant, <variable>.AcQuant
	and	r3, r8, #15	@ tmp299, <variable>.FLimit,
	bfi	r3, r1, #4, #8	@ tmp299, <variable>.DcQuant,,
	movw	r1, #:lower16:.LC18	@,
	bfi	r3, r2, #12, #9	@ tmp301, <variable>.AcQuant,,
	movt	r1, #:upper16:.LC18	@,
	bfi	r3, r5, #21, #11	@ tmp302, tmp241,,
	str	r3, [sp, #4]	@ tmp302,
	str	r3, [fp, #4]	@ tmp302,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #160]	@ <variable>.value, <variable>.value
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	ip, [sp, #4]	@ <variable>.value, <variable>.value
	str	ip, [r7, #24]	@ <variable>.value,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	fp, [r4, #164]	@ <variable>.range, <variable>.range
	str	r5, [sp, #4]	@ tmp241, D32
	mov	r0, #4	@,
	ldr	sl, [r4, #168]	@ <variable>.count, <variable>.count
	movw	r1, #:lower16:.LC20	@,
	strb	fp, [sp, #4]	@ <variable>.range, <variable>.range
	movt	r1, #:upper16:.LC20	@,
	ldr	r8, [sp, #4]	@ tmp314,
	bfi	r8, sl, #16, #4	@ tmp314, <variable>.count,,
	str	r8, [sp, #4]	@ tmp314,
	strb	r5, [sp, #5]	@ tmp241, <variable>.reserved0
	ldr	r2, [sp, #4]	@ tmp317,
	bfi	r2, r5, #20, #12	@ tmp317, tmp241,,
	str	r2, [sp, #4]	@ tmp317,
	str	r2, [r7, #28]	@ tmp317,
	mov	r5, #0	@ tmp323,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #168]	@ <variable>.count, <variable>.count
	ldr	sl, [r4, #116]	@ D.31431, <variable>.bit0_offset_0
	movw	r1, #:lower16:.LC21	@,
	add	ip, r3, #8	@ Vp6_br_cnt, <variable>.count,
	ldr	r0, [r4, #112]	@ D.31430, <variable>.bit0_len_0
	cmp	ip, sl	@ Vp6_br_cnt, D.31431
	movt	r1, #:upper16:.LC21	@,
	addhi	sl, sl, #128	@ tmp322, D.31431,
	add	fp, ip, r0	@ tmp324, Vp6_br_cnt, D.31430
	ldrhi	r7, [r4, #120]	@ <variable>.bit0_stream_addr_0, <variable>.bit0_stream_addr_0
	rsbls	sl, ip, sl	@ D16_bit_offset_0, Vp6_br_cnt, D.31431
	rsbhi	sl, ip, sl	@ D16_bit_offset_0, Vp6_br_cnt, tmp322
	bic	r8, fp, #-33554432	@ tmp326, tmp324,
	ldrls	r7, [r4, #120]	@ D17_bit_byte_offset_0, <variable>.bit0_stream_addr_0
	bfi	r8, sl, #25, #7	@ tmp326, D16_bit_offset_0,,
	str	r8, [sp, #4]	@ tmp326,
	subhi	r7, r7, #16	@ D17_bit_byte_offset_0, <variable>.bit0_stream_addr_0,
	str	r8, [r9, #28]	@ tmp326,
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	mov	r1, r5	@ tmp330, tmp323
	bfi	r1, r7, #0, #24	@ tmp330, D17_bit_byte_offset_0,,
	str	r1, [sp, #4]	@ tmp330,
	strb	r5, [sp, #7]	@ tmp323, <variable>.reserved
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D32.619, D32
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	r5, r9, #32	@ p32.617, p32.608,
	str	r2, [r9, #32]	@ D32.619,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [r4, #120]	@ <variable>.bit0_stream_addr_0, <variable>.bit0_stream_addr_0
	ldr	r3, [r4, #56]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	add	r0, r0, r3	@, <variable>.bit0_stream_addr_0, <variable>.StreamBaseAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L25	@,
.L15:
	ldr	r7, [r4, #124]	@ <variable>.bit0_len_1, <variable>.bit0_len_1
	mov	r0, #4	@,
	ldr	fp, [r4, #128]	@ <variable>.bit0_offset_1, <variable>.bit0_offset_1
	movw	r1, #:lower16:.LC24	@,
	bic	lr, r7, #-33554432	@ tmp343, <variable>.bit0_len_1,
	movt	r1, #:upper16:.LC24	@,
	bfi	lr, fp, #25, #7	@ tmp343, <variable>.bit0_offset_1,,
	str	lr, [sp, #4]	@ tmp343,
	str	lr, [r5, #4]	@ tmp343,
	add	r5, r5, r0	@ p32.622, p32.617,
	ldr	r2, [sp, #4]	@, D32
	mov	r7, #0	@ tmp339,
	bl	dprint_vfmw	@
	ldr	r8, [r4, #132]	@ <variable>.bit0_stream_addr_1, <variable>.bit0_stream_addr_1
	mov	sl, r7	@ tmp347, tmp339
	mov	r0, #4	@,
	bfi	sl, r8, #0, #24	@ tmp347, <variable>.bit0_stream_addr_1,,
	str	sl, [sp, #4]	@ tmp347,
	strb	r7, [sp, #7]	@ tmp339, <variable>.reserved
	add	sl, r5, r0	@ p32.626, p32.622,
	ldr	r9, [sp, #4]	@ D32.628, D32
	add	r8, sl, r0	@ p32.630, p32.626,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	str	r9, [r5, #4]	@ D32.628,
	add	r9, r8, r0	@ p32.634, p32.630,
	ldr	r2, [sp, #4]	@, D32
	add	fp, r9, r0	@ p32.638, p32.634,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #136]	@ <variable>.bit1_len_0, <variable>.bit1_len_0
	ldr	r2, [r4, #140]	@ <variable>.bit1_offset_0, <variable>.bit1_offset_0
	mov	r0, #4	@,
	bic	ip, r1, #-33554432	@ tmp357, <variable>.bit1_len_0,
	movw	r1, #:lower16:.LC26	@,
	bfi	ip, r2, #25, #7	@ tmp357, <variable>.bit1_offset_0,,
	str	ip, [sp, #4]	@ tmp357,
	str	ip, [sl, #4]	@ tmp357,
	movt	r1, #:upper16:.LC26	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #144]	@ <variable>.bit1_stream_addr_0, <variable>.bit1_stream_addr_0
	mov	r3, r7	@ tmp361, tmp339
	mov	r0, #4	@,
	bfi	r3, r2, #0, #24	@ tmp361, <variable>.bit1_stream_addr_0,,
	str	r3, [sp, #4]	@ tmp361,
	strb	r7, [sp, #7]	@ tmp339, <variable>.reserved
	movw	r1, #:lower16:.LC27	@,
	ldr	ip, [sp, #4]	@ D32.636, D32
	movt	r1, #:upper16:.LC27	@,
	str	ip, [r8, #4]	@ D32.636,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #148]	@ <variable>.bit1_len_1, <variable>.bit1_len_1
	ldr	r2, [r4, #152]	@ <variable>.bit1_offset_1, <variable>.bit1_offset_1
	mov	r0, #4	@,
	bic	r3, r1, #-33554432	@ tmp371, <variable>.bit1_len_1,
	movw	r1, #:lower16:.LC28	@,
	bfi	r3, r2, #25, #7	@ tmp371, <variable>.bit1_offset_1,,
	str	r3, [sp, #4]	@ tmp371,
	str	r3, [r9, #4]	@ tmp371,
	movt	r1, #:upper16:.LC28	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #156]	@ <variable>.bit1_stream_addr_1, <variable>.bit1_stream_addr_1
	mov	r1, r7	@ tmp375, tmp339
	mov	r0, #4	@,
	bfi	r1, ip, #0, #24	@ tmp375, <variable>.bit1_stream_addr_1,,
	str	r1, [sp, #4]	@ tmp375,
	strb	r7, [sp, #7]	@ tmp339, <variable>.reserved
	movw	r1, #:lower16:.LC29	@,
	ldr	r3, [sp, #4]	@ D32.644, D32
	movt	r1, #:upper16:.LC29	@,
	str	r3, [fp, #4]	@ D32.644,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	bic	ip, r2, #15	@ tmp384, <variable>.image_curr_recon_addr,
	str	ip, [sp, #4]	@ tmp384, <variable>.curr_rcn_addr
	str	ip, [r5, #56]	@ tmp384,
	movt	r1, #:upper16:.LC30	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #176]	@ <variable>.image_golden_ref_addr, <variable>.image_golden_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	bic	r2, r3, #15	@ tmp390, <variable>.image_golden_ref_addr,
	str	r2, [sp, #4]	@ tmp390, <variable>.golden_ref_addr
	str	r2, [r5, #64]	@ tmp390,
	movt	r1, #:upper16:.LC31	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC32	@,
	bic	r3, ip, #15	@ tmp396, <variable>.image_last_ref_addr,
	str	r3, [sp, #4]	@ tmp396, <variable>.last_ref_addr
	str	r3, [r5, #68]	@ tmp396,
	movt	r1, #:upper16:.LC32	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	bic	ip, r2, #15	@ tmp402, <variable>.SedTopAddr,
	str	ip, [sp, #4]	@ tmp402, <variable>.sed_top_addr
	str	ip, [r5, #72]	@ tmp402,
	movt	r1, #:upper16:.LC33	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	bic	r2, r3, #15	@ tmp408, <variable>.PmvTopAddr,
	str	r2, [sp, #4]	@ tmp408, <variable>.pmv_top_addr
	str	r2, [r5, #76]	@ tmp408,
	movt	r1, #:upper16:.LC34	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC35	@,
	bic	r3, ip, #15	@ tmp414, <variable>.RcnTopAddr,
	str	r3, [sp, #4]	@ tmp414, <variable>.rcn_top_addr
	str	r3, [r5, #80]	@ tmp414,
	movt	r1, #:upper16:.LC35	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1116]	@ <variable>.VpTabAddr, <variable>.VpTabAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	bic	ip, r2, #15	@ tmp420, <variable>.VpTabAddr,
	str	ip, [sp, #4]	@ tmp420, <variable>.tab_addr
	str	ip, [r5, #84]	@ tmp420,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [sp, #4]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.31518,
	ldr	r0, [r6, #1116]	@, <variable>.VpTabAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@,
	cmpne	r5, r7	@, D.31518,
	beq	.L26	@,
	mov	r1, #4096	@,
	mov	r0, r5	@, D.31518
	bl	__memzero	@
	ldr	r1, [r4, #4]	@, <variable>.TblProbModeSame
	mov	r2, #64	@,
	mov	r0, r5	@, D.31518
	bl	memcpy	@
	ldr	r1, [r4, #8]	@, <variable>.TblProbMode
	mov	r2, #640	@,
	add	r0, r5, #64	@, D.31518,
	bl	memcpy	@
	add	r0, r5, #704	@, D.31518,
	ldr	r1, [r4, #12]	@, <variable>.TblProbMv
	mov	r2, #64	@,
	bl	memcpy	@
	ldr	r0, [r4, #72]	@ <variable>.UseHuffman, <variable>.UseHuffman
	cmp	r0, #0	@ <variable>.UseHuffman,
	beq	.L27	@,
	ldr	r0, [sp, #4]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.31546,
	adds	r0, r0, #768	@ TabBaseAddr.686, D.31546,
	beq	.L28	@,
	ldr	r1, [r4, #44]	@, <variable>.TblAcHuffLUT
	mov	r2, #1536	@,
	bl	memcpy	@
	ldr	r1, [r4, #40]	@, <variable>.TblDcHuffLUT
	mov	r2, #128	@,
	add	r0, r5, #2304	@, D.31546,
	bl	memcpy	@
	add	r0, r5, #2432	@, D.31546,
	ldr	r1, [r4, #48]	@, <variable>.TblZeroHuffLUT
	mov	r2, #128	@,
	bl	memcpy	@
.L19:
	ldr	r0, [sp, #4]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.31553,
	adds	r0, r0, #2560	@ TabBaseAddr.692, D.31553,
	beq	.L29	@,
	ldr	r1, [r4, #16]	@, <variable>.TblModifiedScanOrder
	mov	r2, #64	@,
	bl	memcpy	@
	ldr	r1, [r4, #20]	@, <variable>.TblEobOffsetTable
	mov	r2, #64	@,
	add	r0, r5, #2624	@, D.31553,
	bl	memcpy	@
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	add	r0, r5, #2688	@, D.31553,
	bl	memcpy	@
	ldr	r0, [sp, #4]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	adds	r0, r0, #2816	@ TabBaseAddr.698,,
	beq	.L30	@,
	ldr	r1, [r4, #24]	@, <variable>.TblHuffTree
	mov	r2, #960	@,
	bl	memcpy	@
	mov	r0, #0	@ D.31362,
.L12:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	ldr	r0, [sp, #4]	@, D32.tab_addr
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.31537,
	adds	r0, r0, #768	@ TabBaseAddr.681, D.31537,
	beq	.L31	@,
	ldr	r1, [r4, #28]	@, <variable>.TblDcNodeContexts
	mov	r2, #96	@,
	bl	memcpy	@
	ldr	r1, [r4, #36]	@, <variable>.TblZeroProbs
	add	r0, r5, #864	@, D.31537,
	mov	r2, #32	@,
	bl	memcpy	@
	add	r0, r5, #896	@, D.31537,
	ldr	r1, [r4, #32]	@, <variable>.TblACProbs
	mov	r2, #576	@,
	bl	memcpy	@
	b	.L19	@
.L25:
	movw	r1, #:lower16:.LC23	@,
	movw	r2, #386	@,
	movt	r1, #:upper16:.LC23	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L15	@
.L26:
	mov	r0, r7	@, tmp339
	movw	r1, #:lower16:.LC37	@,
	movw	r2, #497	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31362,
	b	.L12	@
.L24:
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #281	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r3, #:lower16:.LC13	@,
	movt	r3, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31362,
	b	.L12	@
.L30:
	movw	r1, #:lower16:.LC38	@,
	movw	r2, #571	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31362,
	b	.L12	@
.L29:
	movw	r1, #:lower16:.LC38	@,
	movw	r2, #555	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31362,
	b	.L12	@
.L28:
	movw	r1, #:lower16:.LC38	@,
	movw	r2, #537	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31362,
	b	.L12	@
.L31:
	movw	r1, #:lower16:.LC38	@,
	movw	r2, #517	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31362,
	b	.L12	@
	.fnend
	.size	VP6HAL_V200R004_CfgDnMsg, .-VP6HAL_V200R004_CfgDnMsg
	.align	2
	.global	VP6HAL_V200R004_StartDec
	.type	VP6HAL_V200R004_StartDec, %function
VP6HAL_V200R004_StartDec:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrh	ip, [r0, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r4, r0	@ pVp6DecParam, pVp6DecParam
	movw	r3, #511	@ tmp144,
	sub	r0, ip, #1	@ tmp142, <variable>.PicWidthInMb,
	mov	r5, r1	@ VdhId, VdhId
	uxth	r2, r0	@ tmp143, tmp142
	cmp	r2, r3	@ tmp143, tmp144
	bhi	.L39	@,
	ldrh	r2, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	sub	lr, r2, #1	@ tmp149, <variable>.PicHeightInMb,
	uxth	r1, lr	@ tmp150, tmp149
	cmp	r1, r3	@ tmp150, tmp144
	bhi	.L40	@,
	movw	r8, #1144	@ tmp155,
	movw	r7, #:lower16:g_HwMem	@ tmp156,
	mul	r8, r8, r5	@ tmp154, tmp155, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp156,
	add	r6, r7, r8	@ pHwMem, tmp156, tmp154
	ldr	r3, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L41	@,
.L36:
	mov	r1, r6	@, pHwMem
	mov	r2, r5	@, VdhId
	mov	r0, r4	@, pVp6DecParam
	bl	VP6HAL_V200R004_CfgReg	@
	mov	r0, r4	@, pVp6DecParam
	mov	r1, r6	@, pHwMem
	mov	r2, r5	@, VdhId
	bl	VP6HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.31211,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L41:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	ip, r0, #0	@ D.31219,
	strne	ip, [r7, r8]	@ D.31219, <variable>.pVdmRegVirAddr
	bne	.L36	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31211,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L39:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC12	@,
	mov	r2, #54	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r3, #:lower16:.LC39	@,
	movt	r3, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31211,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L40:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC12	@,
	mov	r2, #55	@,
	movt	r1, #:upper16:.LC12	@,
	movw	r3, #:lower16:.LC40	@,
	movt	r3, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31211,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VP6HAL_V200R004_StartDec, .-VP6HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC1:
	.ascii	"BASIC_CFG0 = 0x%x\012\000"
	.space	1
.LC2:
	.ascii	"BASIC_CFG1 = 0x%x\012\000"
	.space	1
.LC3:
	.ascii	"AVM_ADDR = 0x%x\012\000"
	.space	3
.LC4:
	.ascii	"VAM_ADDR = 0x%x\012\000"
	.space	3
.LC5:
	.ascii	"STREAM_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC6:
	.ascii	"PPFD_V200R004_BUF_ADDR = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"PPFD_V200R003_BUF_LEN = 0x%x\012\000"
	.space	2
.LC8:
	.ascii	"YSTADDR_1D = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"YSTRIDE_1D = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"UVOFFSET_1D = 0x%x\012\000"
.LC11:
	.ascii	"FF_APT_EN = 0x%x\012\000"
	.space	2
.LC12:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC13:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC14:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC15:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC17:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D16 = 0x%x\012\000"
.LC22:
	.ascii	"D17 = 0x%x\012\000"
.LC23:
	.ascii	"LINE:%d NULL == tmpAddr.\012\000"
	.space	2
.LC24:
	.ascii	"D18 = 0x%x\012\000"
.LC25:
	.ascii	"D19 = 0x%x\012\000"
.LC26:
	.ascii	"D20 = 0x%x\012\000"
.LC27:
	.ascii	"D21 = 0x%x\012\000"
.LC28:
	.ascii	"D22 = 0x%x\012\000"
.LC29:
	.ascii	"D23 = 0x%x\012\000"
.LC30:
	.ascii	"D32 = 0x%x\012\000"
.LC31:
	.ascii	"D34 = 0x%x\012\000"
.LC32:
	.ascii	"D35 = 0x%x\012\000"
.LC33:
	.ascii	"D36 = 0x%x\012\000"
.LC34:
	.ascii	"D37 = 0x%x\012\000"
.LC35:
	.ascii	"D38 = 0x%x\012\000"
.LC36:
	.ascii	"D39 = 0x%x\012\000"
.LC37:
	.ascii	"line: %d\012\000"
	.space	2
.LC38:
	.ascii	"line: %d  NULL == TabBaseAddr.\012\000"
.LC39:
	.ascii	"picture width out of range\000"
	.space	1
.LC40:
	.ascii	"picture height out of range\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
