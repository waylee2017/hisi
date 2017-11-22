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
	.file	"vdm_hal_vc1.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_vc1)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vc1.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vc1.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vc1.o
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
	.global	VC1HAL_V200R004_CfgReg
	.type	VC1HAL_V200R004_CfgReg, %function
VC1HAL_V200R004_CfgReg:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #1144	@ tmp166,
	cmp	r2, #0	@ VdhId,
	mul	ip, ip, r2	@ tmp165, tmp166, VdhId
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #:lower16:g_HwMem	@ tmp164,
	movt	r3, #:upper16:g_HwMem	@ tmp164,
	movw	r5, #:lower16:77988	@ tmp175,
	movt	r5, #:upper16:77988	@ tmp175,
	mvn	r4, #0	@ tmp169,
	ldr	r8, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r6, #:lower16:77992	@ tmp184,
	movt	r6, #:upper16:77992	@ tmp184,
	movw	r7, #:lower16:77996	@ tmp200,
	movt	r7, #:upper16:77996	@ tmp200,
	str	r4, [r8, #32]	@ tmp169,
	ldr	r2, [r0, r5]	@ <variable>.basic_cfg0, <variable>.basic_cfg0
	ldr	r5, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r2, r2, #-16777216	@ tmp176, <variable>.basic_cfg0,
	bic	r2, r2, #15728640	@ tmp176, tmp176,
	orr	r2, r2, #1090519040	@ D32.450, tmp176,
	str	r2, [r5, #8]	@ D32.450,
	ldr	r5, [r0, r6]	@ D.31437, <variable>.basic_cfg1
	ldr	r2, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r2, #12]	@ D.31437,
	ldr	r2, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r5, [r1, #44]	@ D.31440, <variable>.MsgSlotAddr
	str	r5, [r2, #16]	@ D.31440,
	ldr	r1, [r1, #28]	@ D.31443, <variable>.MsgSlotAddr
	ldr	r2, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r2, #20]	@ D.31443,
	ldr	r1, [r0, r7]	@ D.31447, <variable>.stream_base_addr
	ldr	r2, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r2, #24]	@ D.31447,
	bgt	.L6	@,
	ldr	r8, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r2, #:lower16:3148803	@ tmp207,
	movt	r2, #:upper16:3148803	@ tmp207,
	movw	r7, #:lower16:78000	@ tmp244,
	movt	r7, #:upper16:78000	@ tmp244,
	movw	r5, #:lower16:78044	@ tmp245,
	str	r2, [r8, #60]	@ tmp207,
	movt	r5, #:upper16:78044	@ tmp245,
	ldr	r4, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r1, #:lower16:78048	@ tmp246,
	movw	r6, #:lower16:78040	@ tmp257,
	movt	r1, #:upper16:78048	@ tmp246,
	movt	r6, #:upper16:78040	@ tmp257,
	mov	r8, #0	@ tmp275,
	str	r2, [r4, #64]	@ tmp207,
	mov	r4, r8	@ D.31455, tmp275
	ldr	sl, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #68]	@ tmp207,
	ldr	sl, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #72]	@ tmp207,
	ldr	sl, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #76]	@ tmp207,
	ldr	sl, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #80]	@ tmp207,
	ldr	sl, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #84]	@ tmp207,
	ldrh	sl, [r0, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	ldr	r2, [r0, r7]	@ D.31470, <variable>.VahbStride
	add	sl, sl, #31	@ tmp249, <variable>.DispPicHeight,
	ldr	r6, [r0, r6]	@ D.31481, <variable>.ystaddr_1d
	mov	r7, r2, asl #5	@ tmp247, D.31470,
	mov	sl, sl, asr #5	@ tmp250, tmp249,
	str	r2, [r0, r5]	@ D.31470, <variable>.ystride_1d
	mul	r2, sl, r7	@ tmp251, tmp250, tmp247
	str	r2, [r0, r1]	@ tmp251, <variable>.uvoffset_1d
	ldr	r2, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r2, #96]	@ D.31481,
	ldr	r5, [r0, r5]	@ D.31485, <variable>.ystride_1d
	ldr	r2, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r2, #100]	@ D.31485,
	ldr	r1, [r0, r1]	@ D.31489, <variable>.uvoffset_1d
	ldr	r0, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #104]	@ D.31489,
	ldr	r3, [ip, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r3, #108]	@ tmp275,
.L3:
	mov	r0, r4	@, D.31455
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L6:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #410	@,
	movt	r1, #:upper16:.LC0	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L3	@
	.fnend
	.size	VC1HAL_V200R004_CfgReg, .-VC1HAL_V200R004_CfgReg
	.align	2
	.global	VC1HAL_V200R004_CfgSliceMsg
	.type	VC1HAL_V200R004_CfgSliceMsg, %function
VC1HAL_V200R004_CfgSliceMsg:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r1, [r1, #48]	@, <variable>.MsgSlotAddr
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	mov	r0, r1	@,
	str	r1, [sp, #12]	@, %sfp
	bl	MEM_Phy2Vir	@
	subs	r7, r0, #0	@ D.31410,
	beq	.L100	@,
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ <variable>.profile, <variable>.profile
	cmp	r3, #2	@ <variable>.profile,
	beq	.L101	@,
	ldrb	r0, [r4, #70]	@ zero_extendqisi2	@ D.31811, <variable>.SlcNum
	movw	r3, #:lower16:77996	@ tmp308,
	ldr	fp, [r4, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	movt	r3, #:upper16:77996	@ tmp308,
	cmp	r0, #0	@ D.31811,
	bic	fp, fp, #15	@ prephitmp.576, <variable>.Phy_addr,
	str	fp, [r4, r3]	@ prephitmp.576, <variable>.stream_base_addr
	beq	.L49	@,
	mov	r6, #0	@,
	mov	ip, r7	@ ivtmp.681, D.31410
	mov	r9, r6	@ i, pre.704
	cmp	r9, #0	@ i,
	str	r6, [sp, #8]	@, %sfp
	mov	r7, r4	@ ivtmp.675, pVc1DecParam
	mov	r2, r6	@ pre.704,
	bne	.L34	@,
.L102:
	cmp	r0, #1	@ D.31811,
	ldr	r6, [r4, #108]	@ pre_end, <variable>.SlcEndMbn
	beq	.L35	@,
	movle	r2, #1	@ pre.704,
	ble	.L37	@,
	ldr	r5, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r6, r5	@ pre_end, <variable>.SlcEndMbn
	movlt	r2, #1	@ pre.704,
	blt	.L39	@,
	tst	r0, #1	@ D.31811,
	mov	r3, r4	@ ivtmp.725, pVc1DecParam
	mov	r2, #1	@ pre.704,
	beq	.L40	@,
	mov	r2, #2	@ pre.704,
	cmp	r2, r0	@ pre.704, D.31811
	bge	.L37	@,
	ldr	r5, [r4, #204]	@ D.31809, <variable>.SlcEndMbn
	add	r3, r4, #48	@ ivtmp.725, pVc1DecParam,
	cmp	r6, r5	@ pre_end, D.31809
	bge	.L40	@,
	b	.L37	@
.L41:
	ldr	lr, [r3, #204]	@ D.31809, <variable>.SlcEndMbn
	add	r3, r3, #96	@ ivtmp.725, ivtmp.725,
	cmp	r6, lr	@ pre_end, D.31809
	blt	.L37	@,
	ldr	lr, [r1, #204]	@ D.31809, <variable>.SlcEndMbn
	add	r2, r2, #1	@ pre.704, pre.704,
	cmp	r6, lr	@ pre_end, D.31809
	blt	.L37	@,
.L40:
	add	r2, r2, #1	@ pre.704, pre.704,
	add	r1, r3, #48	@ tmp379, ivtmp.725,
	cmp	r2, r0	@ pre.704, D.31811
	blt	.L41	@,
.L37:
	cmp	r2, r0	@ pre.704, D.31811
	beq	.L35	@,
.L39:
	ldr	r0, [sp, #12]	@, %sfp
	str	r6, [sp, #8]	@ pre_end, %sfp
	add	r3, r0, r2, asl #8	@, prephitmp.579,, pre.704,
	mov	r0, #0	@ slice_start_mbn,
.L42:
	ldr	r5, [r7, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	add	r6, r0, r6, asl #16	@, D32.702, slice_start_mbn, pre_end,
	ldr	r0, [r7, #100]	@ <variable>.BitOffset, <variable>.BitOffset
	add	r9, r9, #1	@ i, i,
	rsb	fp, fp, r5	@ bit_steam_addr_0, prephitmp.576, <variable>.Phy_addr
	ldr	lr, [r7, #104]	@ <variable>.Len, <variable>.Len
	and	r5, fp, #15	@ tmp334, bit_steam_addr_0,
	bic	fp, fp, #15	@ D32.698, bit_steam_addr_0,
	add	r7, r7, #48	@ ivtmp.675, ivtmp.675,
	add	r0, r0, r5, asl #3	@, tmp336, <variable>.BitOffset, tmp334,
	add	r1, lr, r0, asl #25	@, D32.446, <variable>.Len, tmp336,
	mov	r0, #0	@,
	str	r1, [ip, #0]	@ D32.446,* ivtmp.681
	str	fp, [ip, #4]	@ D32.698,
	str	r0, [ip, #8]	@,
	str	r0, [ip, #12]	@,
	str	r6, [ip, #16]	@ D32.702,
	str	r3, [ip, #252]	@ prephitmp.579,
	add	ip, ip, #256	@ ivtmp.681, ivtmp.681,
	ldrb	r0, [r4, #70]	@ zero_extendqisi2	@ D.31811, <variable>.SlcNum
	cmp	r9, r0	@ i, D.31811
	bge	.L49	@,
	movw	r6, #:lower16:77996	@,
	cmp	r9, #0	@ i,
	movt	r6, #:upper16:77996	@,
	ldr	fp, [r4, r6]	@ prephitmp.576, <variable>.stream_base_addr
	beq	.L102	@,
.L34:
	add	r1, r2, r2, asl #1	@, tmp314, pre.704, pre.704,
	add	r3, r2, #1	@ pre, pre.704,
	cmp	r3, r0	@ pre, D.31811
	mov	r1, r1, asl #4	@ tmp315, tmp314,
	add	r6, r1, r4	@ tmp316, tmp315, pVc1DecParam
	ldr	r5, [r6, #108]	@ D.31804, <variable>.SlcEndMbn
	mov	r6, r5	@ pre_end, D.31804
	bge	.L43	@,
	add	lr, r3, r3, asl #1	@, tmp321, pre, pre,
	add	r8, r4, lr, asl #4	@, tmp323, pVc1DecParam, tmp321,
	ldr	r8, [r8, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r5, r8	@ D.31804, <variable>.SlcEndMbn
	blt	.L43	@,
	mvn	lr, r3	@ tmp382, pre
	add	r8, lr, r0	@ tmp381, tmp382, D.31811
	add	sl, r1, #80	@ tmp330, tmp315,
	tst	r8, #1	@ tmp381,
	add	r8, r4, sl	@ tmp331, pVc1DecParam, tmp330
	add	r1, r8, #4	@ ivtmp.666, tmp331,
	beq	.L93	@,
	ldr	sl, [r1, #120]	@ D.31802, <variable>.SlcEndMbn
	add	r3, r3, #1	@ pre, pre,
	add	r1, r8, #52	@ ivtmp.666, tmp331,
	cmp	r5, sl	@ D.31804, D.31802
	blt	.L43	@,
.L93:
	mov	sl, r2	@ pre.704, pre.704
	b	.L44	@
.L45:
	ldr	r8, [r1, #120]	@ D.31802, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.666, ivtmp.666,
	cmp	r5, r8	@ D.31804, D.31802
	blt	.L97	@,
	ldr	r2, [r2, #120]	@ D.31802, <variable>.SlcEndMbn
	add	r3, r3, #1	@ pre, pre,
	cmp	r5, r2	@ D.31804, D.31802
	blt	.L97	@,
.L44:
	add	r3, r3, #1	@ pre, pre,
	add	r2, r1, #48	@ tmp384, ivtmp.666,
	cmp	r3, r0	@ pre, D.31811
	blt	.L45	@,
.L97:
	mov	r2, sl	@ pre.704, pre.704
.L43:
	cmp	r3, r0	@ pre, D.31811
	ldrne	r2, [sp, #12]	@, %sfp
	moveq	r1, #0	@ next_slice_para_addr.696,
	addne	r1, r2, r3, asl #8	@, next_slice_para_addr.696,, pre,
	movne	r2, r3	@ pre.704, pre
	ldr	r3, [sp, #8]	@, %sfp
	str	r5, [sp, #8]	@ D.31804, %sfp
	add	r0, r3, #1	@ slice_start_mbn,,
	mov	r3, r1	@ prephitmp.579, next_slice_para_addr.696
	b	.L42	@
.L35:
	mov	r3, #0	@ prephitmp.579,
	str	r6, [sp, #8]	@ pre_end, %sfp
	mov	r0, r3	@ slice_start_mbn, prephitmp.579
	b	.L42	@
.L101:
	ldrb	r2, [r4, #70]	@ zero_extendqisi2	@ <variable>.SlcNum, <variable>.SlcNum
	movw	r0, #:lower16:77996	@ tmp261,
	ldr	r3, [r4, #96]	@ prephitmp.590, <variable>.Phy_addr
	movt	r0, #:upper16:77996	@ tmp261,
	cmp	r2, #0	@ <variable>.SlcNum,
	str	r3, [r4, r0]	@ prephitmp.590, <variable>.stream_base_addr
	beq	.L10	@,
	tst	r2, #1	@ <variable>.SlcNum,
	mov	r1, r4	@ ivtmp.648, pVc1DecParam
	mov	ip, #0	@ i,
	bne	.L14	@,
	ldr	r1, [r4, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r1, #0	@ <variable>.pStream2,
	beq	.L61	@,
	ldr	r1, [r4, #112]	@ D.31953, <variable>.Phy_addr2
	cmp	r1, r3	@ D.31953, prephitmp.590
	bcc	.L98	@,
.L61:
	ldr	r1, [r4, #96]	@ D.31951, <variable>.Phy_addr
	cmp	r1, r3	@ D.31951, prephitmp.590
	bcs	.L62	@,
.L98:
	str	r1, [r4, r0]	@ D.31953, <variable>.stream_base_addr
.L62:
	cmp	r2, #1	@ <variable>.SlcNum,
	mov	ip, #1	@ i,
	add	r1, r4, #48	@ ivtmp.648, pVc1DecParam,
	bgt	.L94	@,
.L13:
	movw	r0, #:lower16:77996	@ tmp266,
	movt	r0, #:upper16:77996	@ tmp266,
	ldr	r3, [r4, r0]	@ prephitmp.590, <variable>.stream_base_addr
.L10:
	movw	r5, #:lower16:77996	@ tmp267,
	movt	r5, #:upper16:77996	@ tmp267,
	bic	ip, r3, #15	@ tmp268, prephitmp.590,
	mov	r0, #4	@,
	str	ip, [r4, r5]	@ tmp268, <variable>.stream_base_addr
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #70]	@ zero_extendqisi2	@ D.31950, <variable>.SlcNum
	cmp	r3, #0	@ D.31950,
	beq	.L49	@,
	mov	r2, #0	@,
	mov	r6, r4	@ ivtmp.714, pVc1DecParam
	mov	r5, r2	@ pre,
	mov	r9, r2	@ i.703, pre
	str	r2, [sp, #36]	@, %sfp
.L33:
	ldr	ip, [r6, #100]	@, <variable>.BitOffset
	movw	r2, #:lower16:77996	@,
	movt	r2, #:upper16:77996	@,
	ldr	sl, [r6, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	r0, [r6, #96]	@ <variable>.Phy_addr, <variable>.Phy_addr
	ldr	lr, [r4, r2]	@ D.31952, <variable>.stream_base_addr
	cmp	sl, #0	@ <variable>.pStream2,
	str	ip, [sp, #16]	@, %sfp
	ldr	r8, [r6, #104]	@, <variable>.Len
	rsb	r2, lr, r0	@ bit_steam_addr_0, D.31952, <variable>.Phy_addr
	bic	r1, r2, #15	@, bit_steam_addr_0,
	str	r1, [sp, #8]	@, %sfp
	streq	sl, [sp, #28]	@ bit_steam_addr_1, %sfp
	str	r8, [sp, #20]	@, %sfp
	ldrne	sl, [r6, #112]	@ <variable>.Phy_addr2, <variable>.Phy_addr2
	ldrne	r8, [r6, #116]	@ <variable>.BitOffset2, <variable>.BitOffset2
	rsbne	sl, lr, sl	@ bit_steam_addr_1, D.31952, <variable>.Phy_addr2
	ldrne	lr, [r6, #120]	@, <variable>.Len2
	streq	sl, [sp, #24]	@ bit_steam_addr_1, %sfp
	strne	lr, [sp, #28]	@, %sfp
	andne	lr, sl, #15	@ tmp275, bit_steam_addr_1,
	addne	r8, r8, lr, asl #3	@,, <variable>.BitOffset2, tmp275,
	strne	r8, [sp, #24]	@, %sfp
	cmp	r9, #0	@ i.703,
	bne	.L18	@,
	cmp	r3, #1	@ D.31950,
	ldr	r8, [r4, #108]	@ pre_end.713, <variable>.SlcEndMbn
	beq	.L19	@,
	movle	r5, #1	@ pre,
	ble	.L21	@,
	ldr	fp, [r4, #156]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	r8, fp	@ pre_end.713, <variable>.SlcEndMbn
	blt	.L103	@,
	tst	r3, #1	@ D.31950,
	mov	r1, r4	@ ivtmp.626, pVc1DecParam
	mov	r5, #1	@ pre,
	beq	.L24	@,
	mov	r5, #2	@ pre,
	cmp	r3, r5	@ D.31950, pre
	ble	.L21	@,
	ldr	ip, [r4, #204]	@ D.31936, <variable>.SlcEndMbn
	add	r1, r4, #48	@ ivtmp.626, pVc1DecParam,
	cmp	r8, ip	@ pre_end.713, D.31936
	bge	.L24	@,
	b	.L96	@
.L26:
	ldr	lr, [r1, #204]	@ D.31936, <variable>.SlcEndMbn
	add	r1, r1, #96	@ ivtmp.626, ivtmp.626,
	cmp	r8, lr	@ pre_end.713, D.31936
	blt	.L96	@,
	ldr	lr, [r0, #204]	@ D.31936, <variable>.SlcEndMbn
	add	r5, r5, #1	@ pre, pre,
	cmp	r8, lr	@ pre_end.713, D.31936
	blt	.L96	@,
.L24:
	add	r5, r5, #1	@ pre, pre,
	add	r0, r1, #48	@ tmp364, ivtmp.626,
	cmp	r3, r5	@ D.31950, pre
	bgt	.L26	@,
.L21:
	cmp	r5, r3	@ pre, D.31950
	bne	.L96	@,
.L19:
	mov	r3, #0	@ prephitmp.586,
	str	r8, [sp, #36]	@ pre_end.713, %sfp
	mov	fp, r3	@ next_slice_para_addr, prephitmp.586
	str	r3, [sp, #32]	@ prephitmp.586, %sfp
.L27:
	ldr	ip, [sp, #16]	@, %sfp
	and	r2, r2, #15	@ tmp301, bit_steam_addr_0,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC2	@,
	add	lr, ip, r2, asl #3	@, tmp303,, tmp301,
	ldr	ip, [sp, #20]	@, %sfp
	movt	r1, #:upper16:.LC2	@,
	add	r9, r9, #1	@ i.703, i.703,
	add	r2, ip, lr, asl #25	@, D32,, tmp303,
	str	r2, [r7, #0]	@ D32,* ivtmp.630
	str	r3, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #8]	@, %sfp
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r6, r6, #48	@ ivtmp.714, ivtmp.714,
	str	r2, [r7, #4]	@,
	ldr	r2, [sp, #8]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r1, [sp, #24]	@, %sfp
	ldr	r3, [sp, #28]	@, %sfp
	mov	r0, #4	@,
	add	r2, r3, r1, asl #25	@, D32.719,,,
	movw	r1, #:lower16:.LC4	@,
	str	r2, [r7, #8]	@ D32.719,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	str	sl, [r7, #12]	@ bit_steam_addr_1,
	mov	r2, sl	@, bit_steam_addr_1
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #32]	@, %sfp
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	add	r2, r0, r8, asl #16	@, D32.724,, pre_end.713,
	mov	r0, #4	@,
	str	r2, [r7, #16]	@ D32.724,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #4]	@,
	mov	r2, fp	@, next_slice_para_addr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	ip, [r7, #252]	@ prephitmp.586,
	add	r7, r7, #256	@ ivtmp.630, ivtmp.630,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #70]	@ zero_extendqisi2	@ D.31950, <variable>.SlcNum
	cmp	r9, r3	@ i.703, D.31950
	blt	.L33	@,
.L49:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L104:
	str	lr, [r4, r0]	@ D.31951, <variable>.stream_base_addr
.L12:
	add	r3, ip, #1	@ tmp374, i,
	add	r1, r1, #48	@ tmp375, ivtmp.648,
	cmp	r2, r3	@ <variable>.SlcNum, tmp374
	ble	.L13	@,
	ldr	r5, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	ldr	ip, [r4, r0]	@ prephitmp.590, <variable>.stream_base_addr
	cmp	r5, #0	@ <variable>.pStream2,
	beq	.L64	@,
	ldr	lr, [r1, #112]	@ D.31953, <variable>.Phy_addr2
	cmp	lr, ip	@ D.31953, prephitmp.590
	bcc	.L99	@,
.L64:
	ldr	lr, [r1, #96]	@ D.31951, <variable>.Phy_addr
	cmp	lr, ip	@ D.31951, prephitmp.590
	bcs	.L65	@,
.L99:
	str	lr, [r4, r0]	@ D.31953, <variable>.stream_base_addr
.L65:
	add	ip, r3, #1	@ i, tmp374,
	add	r1, r1, #48	@ ivtmp.648, tmp375,
.L94:
	ldr	r3, [r4, r0]	@ prephitmp.590, <variable>.stream_base_addr
.L14:
	ldr	lr, [r1, #88]	@ <variable>.pStream2, <variable>.pStream2
	cmp	lr, #0	@ <variable>.pStream2,
	beq	.L11	@,
	ldr	lr, [r1, #112]	@ D.31953, <variable>.Phy_addr2
	cmp	lr, r3	@ D.31953, prephitmp.590
	bcc	.L104	@,
.L11:
	ldr	lr, [r1, #96]	@ D.31951, <variable>.Phy_addr
	cmp	lr, r3	@ D.31951, prephitmp.590
	strcc	lr, [r4, r0]	@ D.31951, <variable>.stream_base_addr
	b	.L12	@
.L18:
	add	r0, r5, r5, asl #1	@, tmp282, pre, pre,
	add	r1, r5, #1	@ pre.699, pre,
	cmp	r3, r1	@ D.31950, pre.699
	mov	r0, r0, asl #4	@ tmp283, tmp282,
	add	r8, r0, r4	@ tmp284, tmp283, pVc1DecParam
	ldr	ip, [r8, #108]	@ D.31932, <variable>.SlcEndMbn
	mov	r8, ip	@ pre_end.713, D.31932
	ble	.L28	@,
	add	lr, r1, r1, asl #1	@, tmp289, pre.699, pre.699,
	add	lr, r4, lr, asl #4	@, tmp291, pVc1DecParam, tmp289,
	ldr	lr, [lr, #108]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	cmp	lr, ip	@ <variable>.SlcEndMbn, D.31932
	bgt	.L28	@,
	mvn	lr, r1	@ tmp367, pre.699
	add	lr, lr, r3	@ tmp366, tmp367, D.31950
	add	r0, r0, #80	@ tmp298, tmp283,
	tst	lr, #1	@ tmp366,
	add	lr, r4, r0	@ tmp299, pVc1DecParam, tmp298
	add	r0, lr, #4	@ ivtmp.621, tmp299,
	beq	.L29	@,
	ldr	fp, [r0, #120]	@ temp.715, <variable>.SlcEndMbn
	add	r1, r1, #1	@ pre.699, pre.699,
	add	r0, lr, #52	@ ivtmp.621, tmp299,
	cmp	ip, fp	@ D.31932, temp.715
	bge	.L29	@,
	b	.L28	@
.L30:
	ldr	fp, [r0, #120]	@ temp.715, <variable>.SlcEndMbn
	add	r0, r0, #96	@ ivtmp.621, ivtmp.621,
	cmp	ip, fp	@ D.31932, temp.715
	blt	.L28	@,
	ldr	lr, [lr, #120]	@ temp.715, <variable>.SlcEndMbn
	add	r1, r1, #1	@ pre.699, pre.699,
	cmp	ip, lr	@ D.31932, temp.715
	blt	.L28	@,
.L29:
	add	r1, r1, #1	@ pre.699, pre.699,
	add	lr, r0, #48	@ tmp369, ivtmp.621,
	cmp	r3, r1	@ D.31950, pre.699
	bgt	.L30	@,
.L28:
	cmp	r1, r3	@ pre.699, D.31950
	ldrne	r0, [sp, #12]	@, %sfp
	movne	r5, r1	@ pre, pre.699
	moveq	fp, #0	@ next_slice_para_addr,
	addne	fp, r0, r1, asl #8	@, next_slice_para_addr,, pre.699,
	ldr	r1, [sp, #36]	@, %sfp
	str	ip, [sp, #36]	@ D.31932, %sfp
	add	r3, r1, #1	@,,
	str	r3, [sp, #32]	@, %sfp
	mov	r3, fp	@ prephitmp.586, next_slice_para_addr
	b	.L27	@
.L96:
	mov	fp, r5, asl #8	@ prephitmp.597, pre,
.L25:
	ldr	r1, [sp, #12]	@, %sfp
	mov	r3, #0	@,
	str	r8, [sp, #36]	@ pre_end.713, %sfp
	add	fp, fp, r1	@ next_slice_para_addr, prephitmp.597,
	str	r3, [sp, #32]	@, %sfp
	mov	r3, fp	@ prephitmp.586, next_slice_para_addr
	b	.L27	@
.L103:
	mov	fp, #256	@ prephitmp.597,
	mov	r5, #1	@ pre,
	b	.L25	@
.L100:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #341	@,
	movt	r1, #:upper16:.LC0	@,
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
	.fnend
	.size	VC1HAL_V200R004_CfgSliceMsg, .-VC1HAL_V200R004_CfgSliceMsg
	.align	2
	.global	VC1HAL_V200R004_CfgDnMsg
	.type	VC1HAL_V200R004_CfgDnMsg, %function
VC1HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r5, r0	@ pVc1DecParam, pVc1DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.31500,
	beq	.L110	@,
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.fcm, <variable>.fcm
	mov	r4, #0	@ tmp233,
	ldrb	r7, [r5, #4]	@ zero_extendqisi2	@ <variable>.profile, <variable>.profile
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.ptype, <variable>.ptype
	mov	r0, ip, asl #14	@ tmp234, <variable>.fcm,
	and	r2, r0, #49152	@ tmp238, tmp234,
	bfi	r2, r7, #4, #2	@ tmp238, <variable>.profile,,
	bfi	r2, r1, #0, #2	@ tmp242, <variable>.ptype,,
	str	r2, [r3, #0]	@ tmp242,* D.31500
	ldrh	lr, [r5, #80]	@, <variable>.mbheight
	ldrh	ip, [r5, #78]	@, <variable>.mbwidth
	str	r4, [sp, #4]	@ tmp233, D32
	strb	lr, [sp, #6]	@ <variable>.mbheight, <variable>.bits.mbheight
	strb	ip, [sp, #4]	@ <variable>.mbwidth, <variable>.bits.mbwidth
	ldr	r0, [sp, #4]	@ D32.760, D32
	str	r0, [r3, #4]	@ D32.760,
	ldrb	r7, [r5, #8]	@ zero_extendqisi2	@ <variable>.curparity, <variable>.curparity
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@ <variable>.loopfilter, <variable>.loopfilter
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.numref, <variable>.numref
	mov	r2, r7, asl #2	@ tmp254, <variable>.curparity,
	ldrb	ip, [r5, #7]	@ zero_extendqisi2	@ <variable>.issecondfld, <variable>.issecondfld
	and	r7, r2, #4	@ tmp258, tmp254,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.fwd_fcm, <variable>.fwd_fcm
	bfi	r7, r1, #0, #1	@ tmp258, <variable>.loopfilter,,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ <variable>.bwd_fcm, <variable>.bwd_fcm
	bfi	r7, lr, #3, #1	@ tmp262, <variable>.numref,,
	bfi	r7, ip, #1, #1	@ tmp266, <variable>.issecondfld,,
	bfi	r7, r0, #4, #2	@ tmp270, <variable>.fwd_fcm,,
	bfi	r7, r1, #6, #2	@ tmp274, <variable>.bwd_fcm,,
	str	r7, [r3, #8]	@ tmp274,
	ldrb	r2, [r5, #15]	@ zero_extendqisi2	@ <variable>.condover, <variable>.condover
	ldrb	ip, [r5, #13]	@ zero_extendqisi2	@ <variable>.fastuvmc, <variable>.fastuvmc
	ldrb	r0, [r5, #14]	@ zero_extendqisi2	@ <variable>.overlap, <variable>.overlap
	mov	r1, r2, asl #4	@ tmp279, <variable>.condover,
	ldrb	lr, [r5, #12]	@ zero_extendqisi2	@ <variable>.rndctrl, <variable>.rndctrl
	and	r7, r1, #48	@ tmp283, tmp279,
	bfi	r7, ip, #1, #1	@ tmp283, <variable>.fastuvmc,,
	bfi	r7, r0, #2, #1	@ tmp287, <variable>.overlap,,
	bfi	r7, lr, #0, #1	@ tmp291, <variable>.rndctrl,,
	str	r7, [r3, #12]	@ tmp291,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.altpquant, <variable>.altpquant
	ldrb	ip, [r5, #19]	@ zero_extendqisi2	@ <variable>.halfqp, <variable>.halfqp
	ldrb	r0, [r5, #17]	@ zero_extendqisi2	@ <variable>.pqindex, <variable>.pqindex
	mov	r1, r2, asl #16	@ tmp296, <variable>.altpquant,
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.pquant, <variable>.pquant
	and	r7, r1, #2031616	@ tmp300, tmp296,
	bfi	r7, ip, #24, #1	@ tmp300, <variable>.halfqp,,
	bfi	r7, r0, #8, #5	@ tmp304, <variable>.pqindex,,
	bfi	r7, lr, #0, #5	@ tmp308, <variable>.pquant,,
	str	r7, [r3, #16]	@ tmp308,
	ldrb	r2, [r5, #20]	@ zero_extendqisi2	@ <variable>.buniform, <variable>.buniform
	ldrb	r1, [r5, #24]	@ zero_extendqisi2	@ <variable>.dqbilevel, <variable>.dqbilevel
	ldrb	r0, [r5, #23]	@ zero_extendqisi2	@ <variable>.dqprofile, <variable>.dqprofile
	and	r2, r2, #1	@ tmp317, <variable>.buniform,
	ldrb	lr, [r5, #22]	@ zero_extendqisi2	@ <variable>.dquant, <variable>.dquant
	bfi	r2, r1, #12, #1	@ tmp317, <variable>.dqbilevel,,
	ldrb	ip, [r5, #25]	@ zero_extendqisi2	@ <variable>.dquantfrm, <variable>.dquantfrm
	bfi	r2, r0, #8, #2	@ tmp321, <variable>.dqprofile,,
	ldrb	r7, [r5, #26]	@ zero_extendqisi2	@ <variable>.quantmode, <variable>.quantmode
	bfi	r2, lr, #2, #2	@ tmp325, <variable>.dquant,,
	ldrb	r1, [r5, #21]	@ zero_extendqisi2	@ <variable>.usealtqp, <variable>.usealtqp
	bfi	r2, ip, #14, #1	@ tmp329, <variable>.dquantfrm,,
	bfi	r2, r7, #16, #4	@ tmp333, <variable>.quantmode,,
	bfi	r2, r1, #1, #1	@ tmp337, <variable>.usealtqp,,
	str	r2, [r3, #20]	@ tmp337,
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ <variable>.mvmode, <variable>.mvmode
	ldrb	ip, [r5, #28]	@ zero_extendqisi2	@ <variable>.mvmode2, <variable>.mvmode2
	and	r0, lr, #7	@ tmp346, <variable>.mvmode,
	bfi	r0, ip, #4, #2	@ tmp346, <variable>.mvmode2,,
	str	r0, [r3, #24]	@ tmp346,
	ldrb	r7, [r5, #34]	@ zero_extendqisi2	@ <variable>.reffiled, <variable>.reffiled
	ldrb	r1, [r5, #33]	@ zero_extendqisi2	@ <variable>.dmvrange, <variable>.dmvrange
	ldrb	lr, [r5, #30]	@ zero_extendqisi2	@ <variable>.colishalfpel, <variable>.colishalfpel
	mov	r2, r7, asl #14	@ tmp351, <variable>.reffiled,
	ldrb	ip, [r5, #29]	@ zero_extendqisi2	@ <variable>.curishalfpel, <variable>.curishalfpel
	and	r7, r2, #16384	@ tmp355, tmp351,
	ldrb	r0, [r5, #31]	@ zero_extendqisi2	@ <variable>.mvrange, <variable>.mvrange
	bfi	r7, r1, #12, #2	@ tmp355, <variable>.dmvrange,,
	ldrb	r1, [r5, #32]	@ zero_extendqisi2	@ <variable>.refdist, <variable>.refdist
	bfi	r7, lr, #1, #1	@ tmp359, <variable>.colishalfpel,,
	bfi	r7, ip, #0, #1	@ tmp363, <variable>.curishalfpel,,
	bfi	r7, r0, #2, #2	@ tmp367, <variable>.mvrange,,
	bfi	r7, r1, #4, #5	@ tmp371, <variable>.refdist,,
	str	r7, [r3, #28]	@ tmp371,
	ldrb	r2, [r5, #35]	@ zero_extendqisi2	@ <variable>.transdctab, <variable>.transdctab
	ldrb	lr, [r5, #36]	@ zero_extendqisi2	@ <variable>.vstransform, <variable>.vstransform
	ldrb	r1, [r5, #37]	@ zero_extendqisi2	@ <variable>.ttmbf, <variable>.ttmbf
	and	r7, r2, #1	@ tmp380, <variable>.transdctab,
	ldrb	ip, [r5, #38]	@ zero_extendqisi2	@ <variable>.transacfrm, <variable>.transacfrm
	bfi	r7, lr, #1, #1	@ tmp380, <variable>.vstransform,,
	ldrb	r0, [r5, #39]	@ zero_extendqisi2	@ <variable>.transacfrm2, <variable>.transacfrm2
	bfi	r7, r1, #2, #1	@ tmp384, <variable>.ttmbf,,
	ldrb	lr, [r5, #40]	@ zero_extendqisi2	@ <variable>.ttfrm, <variable>.ttfrm
	bfi	r7, ip, #4, #2	@ tmp388, <variable>.transacfrm,,
	bfi	r7, r0, #6, #2	@ tmp392, <variable>.transacfrm2,,
	bfi	r7, lr, #8, #2	@ tmp396, <variable>.ttfrm,,
	str	r7, [r3, #32]	@ tmp396,
	ldrb	r0, [r5, #46]	@ zero_extendqisi2	@ <variable>.acpredmodeisskipraw, <variable>.acpredmodeisskipraw
	ldrb	r1, [r5, #42]	@ zero_extendqisi2	@ <variable>.directmbmodeisskipraw, <variable>.directmbmodeisskipraw
	ldrb	r7, [r5, #44]	@ zero_extendqisi2	@ <variable>.fieldtxmodeisskipraw, <variable>.fieldtxmodeisskipraw
	mov	r2, r0, asl #5	@ tmp401, <variable>.acpredmodeisskipraw,
	ldrb	lr, [r5, #41]	@ zero_extendqisi2	@ <variable>.forwardmbmodeisskipraw, <variable>.forwardmbmodeisskipraw
	and	r2, r2, #32	@ tmp405, tmp401,
	ldrb	ip, [r5, #43]	@ zero_extendqisi2	@ <variable>.mvtypembmodeisskipraw, <variable>.mvtypembmodeisskipraw
	bfi	r2, r1, #1, #1	@ tmp405, <variable>.directmbmodeisskipraw,,
	ldrb	r0, [r5, #47]	@ zero_extendqisi2	@ <variable>.overflagsmodeisskipraw, <variable>.overflagsmodeisskipraw
	bfi	r2, r7, #3, #1	@ tmp409, <variable>.fieldtxmodeisskipraw,,
	ldrb	r1, [r5, #45]	@ zero_extendqisi2	@ <variable>.skipmbmodeisskipraw, <variable>.skipmbmodeisskipraw
	bfi	r2, lr, #0, #1	@ tmp413, <variable>.forwardmbmodeisskipraw,,
	bfi	r2, ip, #2, #1	@ tmp417, <variable>.mvtypembmodeisskipraw,,
	bfi	r2, r0, #6, #1	@ tmp421, <variable>.overflagsmodeisskipraw,,
	bfi	r2, r1, #4, #1	@ tmp425, <variable>.skipmbmodeisskipraw,,
	str	r2, [r3, #36]	@ tmp425,
	ldrb	r2, [r5, #50]	@ zero_extendqisi2	@ <variable>.bfraction, <variable>.bfraction
	ldrb	r0, [r5, #49]	@ zero_extendqisi2	@ <variable>.cbptab, <variable>.cbptab
	ldrb	ip, [r5, #48]	@ zero_extendqisi2	@ <variable>.mvtab, <variable>.mvtab
	mov	r1, r2, asl #16	@ tmp430, <variable>.bfraction,
	and	lr, r1, #8323072	@ tmp434, tmp430,
	bfi	lr, r0, #8, #3	@ tmp434, <variable>.cbptab,,
	bfi	lr, ip, #0, #3	@ tmp438, <variable>.mvtab,,
	str	lr, [r3, #40]	@ tmp438,
	ldrb	r2, [r5, #53]	@ zero_extendqisi2	@ <variable>.fourmvbptab, <variable>.fourmvbptab
	ldrb	ip, [r5, #54]	@ zero_extendqisi2	@ <variable>.fourmvswtich, <variable>.fourmvswtich
	ldrb	r0, [r5, #51]	@ zero_extendqisi2	@ <variable>.mbmodetab, <variable>.mbmodetab
	mov	r1, r2, asl #8	@ tmp443, <variable>.fourmvbptab,
	ldrb	lr, [r5, #52]	@ zero_extendqisi2	@ <variable>.twomvbptab, <variable>.twomvbptab
	and	r2, r1, #768	@ tmp447, tmp443,
	movw	r1, #12372	@ tmp461,
	bfi	r2, ip, #12, #1	@ tmp447, <variable>.fourmvswtich,,
	bfi	r2, r0, #0, #3	@ tmp451, <variable>.mbmodetab,,
	movw	r0, #12380	@ tmp469,
	bfi	r2, lr, #4, #2	@ tmp455, <variable>.twomvbptab,,
	str	r2, [r3, #44]	@ tmp455,
	ldr	lr, [r5, r1]	@ <variable>.ScaleFactor, <variable>.ScaleFactor
	movw	r2, #12376	@ tmp465,
	str	lr, [r3, #48]	@ <variable>.ScaleFactor,
	ldr	ip, [r5, r2]	@ <variable>.FRFD, <variable>.FRFD
	str	ip, [r3, #52]	@ <variable>.FRFD,
	ldr	r1, [r5, r0]	@ <variable>.BRFD, <variable>.BRFD
	str	r1, [r3, #56]	@ <variable>.BRFD,
	ldrb	lr, [r5, #55]	@ zero_extendqisi2	@ <variable>.rangemapyflag, <variable>.rangemapyflag
	ldrb	ip, [r5, #56]	@ zero_extendqisi2	@ <variable>.rangemapy, <variable>.rangemapy
	ldrb	r0, [r5, #57]	@ zero_extendqisi2	@ <variable>.rangemapuvflag, <variable>.rangemapuvflag
	mov	r2, lr, asl #20	@ tmp472, <variable>.rangemapyflag,
	ldrb	r1, [r5, #58]	@ zero_extendqisi2	@ <variable>.rangemapuv, <variable>.rangemapuv
	and	lr, r2, #1048576	@ tmp476, tmp472,
	bfi	lr, ip, #21, #3	@ tmp476, <variable>.rangemapy,,
	bfi	lr, r0, #24, #1	@ tmp480, <variable>.rangemapuvflag,,
	movw	r0, #12388	@ tmp496,
	bfi	lr, r1, #25, #3	@ tmp484, <variable>.rangemapuv,,
	str	lr, [sp, #4]	@ tmp484,
	ldrh	r1, [r5, #72]	@, <variable>.totalslicenum
	movw	lr, #12384	@ tmp492,
	strh	r1, [sp, #4]	@ movhi	@, <variable>.bits.totalslicenum
	ldr	r2, [sp, #4]	@ D32.788, D32
	str	r2, [r3, #60]	@ D32.788,
	movw	r2, #12392	@ tmp500,
	ldr	ip, [r5, lr]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	ip, [r3, #64]	@ <variable>.CurFrmImgLuma2dPhyAddr,
	movw	ip, #12396	@ tmp504,
	ldr	r1, [r5, r0]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r1, [r3, #68]	@ <variable>.FwdRefAddr,
	movw	r1, #12400	@ tmp508,
	ldr	lr, [r5, r2]	@ <variable>.BwdRefAddr, <variable>.BwdRefAddr
	str	lr, [r3, #72]	@ <variable>.BwdRefAddr,
	ldr	r0, [r5, ip]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	r0, [r3, #76]	@ <variable>.CurrColmbAddr,
	ldr	r2, [r5, r1]	@ <variable>.BwdColmbAddr, <variable>.BwdColmbAddr
	str	r2, [r3, #80]	@ <variable>.BwdColmbAddr,
	ldr	lr, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	str	lr, [r3, #84]	@ <variable>.SedTopAddr,
	ldr	ip, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	str	ip, [r3, #88]	@ <variable>.PmvTopAddr,
	ldr	r0, [r6, #1092]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	str	r0, [r3, #92]	@ <variable>.ItransTopAddr,
	ldr	r1, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	str	r1, [r3, #96]	@ <variable>.DblkTopAddr,
	ldr	r2, [r6, #1112]	@ <variable>.IntensityConvTabAddr, <variable>.IntensityConvTabAddr
	str	r2, [r3, #104]	@ <variable>.IntensityConvTabAddr,
	ldrh	lr, [r5, #74]	@, <variable>.DispPicWidth
	strh	lr, [sp, #4]	@ movhi	@, <variable>.bits.DispPicWidth
	ldrh	ip, [r5, #76]	@, <variable>.DispPicHeight
	strh	ip, [sp, #6]	@ movhi	@, <variable>.bits.DispPicHeight
	ldr	r0, [sp, #4]	@ D32.810, D32
	str	r0, [r3, #108]	@ D32.810,
	ldrb	r1, [r5, #63]	@ zero_extendqisi2	@ <variable>.CodecVersion, <variable>.CodecVersion
	ldrb	lr, [r5, #59]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM, <variable>.RANGEREDFRM
	ldrb	ip, [r5, #60]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM0, <variable>.RANGEREDFRM0
	mov	r2, r1, asl #25	@ tmp531, <variable>.CodecVersion,
	ldrb	r0, [r5, #61]	@ zero_extendqisi2	@ <variable>.RANGEREDFRM1, <variable>.RANGEREDFRM1
	and	r2, r2, #234881024	@ tmp535, tmp531,
	ldrb	r1, [r5, #62]	@ zero_extendqisi2	@ <variable>.PostCresent, <variable>.PostCresent
	bfi	r2, lr, #20, #1	@ tmp535, <variable>.RANGEREDFRM,,
	movw	lr, #12408	@ tmp557,
	bfi	r2, ip, #21, #1	@ tmp539, <variable>.RANGEREDFRM0,,
	bfi	r2, r0, #22, #1	@ tmp543, <variable>.RANGEREDFRM1,,
	movw	r0, #12404	@ tmp553,
	bfi	r2, r1, #24, #1	@ tmp547, <variable>.PostCresent,,
	str	r2, [r3, #112]	@ tmp547,
	ldr	r2, [r5, r0]	@ <variable>.BPD_STRIDE, <variable>.BPD_STRIDE
	movw	r1, #12412	@ tmp561,
	str	r2, [r3, #116]	@ <variable>.BPD_STRIDE,
	mov	r2, #12416	@ tmp565,
	ldr	ip, [r5, lr]	@ <variable>.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	str	ip, [r3, #120]	@ <variable>.MVTYPEMB_ADDR,
	movw	ip, #12420	@ tmp569,
	ldr	r0, [r5, r1]	@ <variable>.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	str	r0, [r3, #124]	@ <variable>.SKIPMB_ADDR,
	movw	r0, #12424	@ tmp573,
	ldr	lr, [r5, r2]	@ <variable>.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	str	lr, [r3, #128]	@ <variable>.DIRECTMB_ADDR,
	movw	lr, #12428	@ tmp577,
	ldr	r1, [r5, ip]	@ <variable>.ACPRED_ADDR, <variable>.ACPRED_ADDR
	str	r1, [r3, #132]	@ <variable>.ACPRED_ADDR,
	movw	r1, #12432	@ tmp581,
	ldr	r2, [r5, r0]	@ <variable>.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	str	r2, [r3, #136]	@ <variable>.OVERFLAGS_ADDR,
	ldr	ip, [r5, lr]	@ <variable>.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	str	ip, [r3, #140]	@ <variable>.FIELDTX_ADDR,
	ldr	r0, [r5, r1]	@ <variable>.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	str	r0, [r3, #144]	@ <variable>.FORWARDMB_ADDR,
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	str	r2, [sp, #4]	@ <variable>.MsgSlotAddr, <variable>.bits.SliceInfoPhyAddr
	str	r2, [r3, #252]	@ <variable>.MsgSlotAddr,
	ldr	r0, [r6, #1112]	@, <variable>.IntensityConvTabAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r4	@,
	beq	.L111	@,
	ldr	r1, [r5, #64]	@, <variable>.pIntensityConvertTab
	mov	r2, #3072	@,
	bl	memcpy	@
	mov	r0, r4	@ D.31504, tmp233
.L107:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L110:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #452	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31504,
	b	.L107	@
.L111:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #659	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31504,
	b	.L107	@
	.fnend
	.size	VC1HAL_V200R004_CfgDnMsg, .-VC1HAL_V200R004_CfgDnMsg
	.align	2
	.global	VC1HAL_V200R004_StartDec
	.type	VC1HAL_V200R004_StartDec, %function
VC1HAL_V200R004_StartDec:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ VdhId, VdhId
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	bls	.L123	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31147,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L123:
	cmp	r0, #0	@ pVc1DecParam,
	beq	.L124	@,
	ldrh	r3, [r0, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	cmp	r3, #512	@ <variable>.mbwidth,
	bhi	.L125	@,
	ldrh	r0, [r0, #80]	@ <variable>.mbheight, <variable>.mbheight
	cmp	r0, #512	@ <variable>.mbheight,
	bhi	.L126	@,
	movw	r8, #1144	@ tmp152,
	movw	r7, #:lower16:g_HwMem	@ tmp153,
	mul	r8, r8, r1	@ tmp151, tmp152, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp153,
	add	r5, r7, r8	@ pHwMem, tmp153, tmp151
	ldr	r0, [r5, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L127	@,
	ldr	r1, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r1, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L128	@,
.L120:
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V200R004_CfgSliceMsg	@
	mov	r1, r5	@, pHwMem
	mov	r2, r6	@, VdhId
	mov	r0, r4	@, pVc1DecParam
	bl	VC1HAL_V200R004_CfgReg	@
	mov	r0, r4	@, pVc1DecParam
	mov	r1, r5	@, pHwMem
	bl	VC1HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.31147,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L128:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.31164,
	strne	r2, [r7, r8]	@ D.31164, <variable>.pVdmRegVirAddr
	bne	.L120	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31147,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L126:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #72	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31147,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L125:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #71	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31147,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L124:
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #70	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31147,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L127:
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #75	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r3, #:lower16:.LC13	@,
	movt	r3, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31147,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VC1HAL_V200R004_StartDec, .-VC1HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"line: %d\012\000"
	.space	2
.LC1:
	.ascii	"pVc1DecParam->SlcNum = %d\012\000"
	.space	1
.LC2:
	.ascii	"D0 = 0x%08x\012\000"
	.space	3
.LC3:
	.ascii	"D1 = 0x%08x\012\000"
	.space	3
.LC4:
	.ascii	"D2 = 0x%08x\012\000"
	.space	3
.LC5:
	.ascii	"D3 = 0x%08x\012\000"
	.space	3
.LC6:
	.ascii	"D4 = 0x%08x\012\000"
	.space	3
.LC7:
	.ascii	"D63 = 0x%08x\012\000"
	.space	2
.LC8:
	.ascii	"VdhId is wrong! VC1HAL_V200R003_StartDec\012\000"
	.space	2
.LC9:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC10:
	.ascii	"point of picture para null\012\000"
.LC11:
	.ascii	"picture width out of range\000"
	.space	1
.LC12:
	.ascii	"picture height out of range\000"
.LC13:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC14:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
