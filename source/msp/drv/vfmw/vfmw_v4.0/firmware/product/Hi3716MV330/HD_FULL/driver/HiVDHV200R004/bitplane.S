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
	.file	"bitplane.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(bitplane)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.bitplane.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.o
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
	.global	BPD_Start
	.type	BPD_Start, %function
BPD_Start:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:g_HwMem	@ tmp136,
	movt	ip, #:upper16:g_HwMem	@ tmp136,
	mov	r2, #0	@ tmp137,
	mov	r0, #1	@ tmp139,
	ldr	r3, [ip, #8]	@ D.32837, <variable>.pBpdRegVirAddr
	str	r2, [r3, #0]	@ tmp137,* D.32837
	ldr	r1, [ip, #8]	@ temp.478, <variable>.pBpdRegVirAddr
	str	r0, [r1, #0]	@ tmp139,* temp.478
	ldr	r3, [ip, #8]	@ temp.480, <variable>.pBpdRegVirAddr
	str	r2, [r3, #0]	@ tmp137,* temp.480
	bx	lr	@
	.fnend
	.size	BPD_Start, .-BPD_Start
	.align	2
	.global	IsBpd_Ready
	.type	IsBpd_Ready, %function
IsBpd_Ready:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_HwMem	@ tmp138,
	movt	r3, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r3, #8]	@ D.32842, <variable>.pBpdRegVirAddr
	cmp	r0, #0	@ D.32842,
	beq	.L8	@,
	ldr	r0, [r0, #64]	@ Data32.504,
	and	r0, r0, #1	@ Data32, Data32.504,
	ldmfd	sp!, {r3, pc}	@
.L8:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #288	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Data32,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	IsBpd_Ready, .-IsBpd_Ready
	.align	2
	.global	BPD_Reset
	.type	BPD_Reset, %function
BPD_Reset:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:g_pstRegCrg	@ tmp155,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp155,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@ g_pstRegCrg.448, g_pstRegCrg
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp156,
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #128	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r2, [r4, #0]	@ prephitmp.519, g_pstRegCrg
	b	.L11	@
.L19:
	ldr	ip, [r2, #372]	@ tmp160,
	tst	ip, #8	@ tmp160,
	bne	.L10	@,
	cmp	r3, r0	@ i, tmp156
	beq	.L18	@,
.L11:
	ldr	r1, [r2, #372]	@ tmp147,
	add	r3, r3, #1	@ tmp157, i,
	add	r3, r3, #1	@ i, tmp157,
	tst	r1, #8	@ tmp147,
	beq	.L19	@,
.L10:
	movw	r1, #:lower16:g_HwMem	@ tmp150,
	movt	r1, #:upper16:g_HwMem	@ tmp150,
	bfc	r5, #7, #1	@ u32TmpValue,,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	lr, [r1, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	mvn	r0, #1	@ tmp152,
	str	r0, [lr, #52]	@ tmp152,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L18:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@ prephitmp.519, g_pstRegCrg
	b	.L10	@
	.fnend
	.size	BPD_Reset, .-BPD_Reset
	.align	2
	.global	BPD_GetParam
	.type	BPD_GetParam, %function
BPD_GetParam:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r3, #:lower16:g_HwMem	@ tmp147,
	movt	r3, #:upper16:g_HwMem	@ tmp147,
	ldr	r4, [r2, #16]	@ D.32889, <variable>.BsLen
	ldr	lr, [r3, #8]	@ D.32879, <variable>.pBpdRegVirAddr
	ldr	r3, [r2, #24]	@ D.32891, <variable>.TotalPos
	ldr	ip, [lr, #80]	@ D.32882,
	rsb	r5, r3, r4, asl #3	@, tmp149, D.32891, D.32889,
	ldr	lr, [lr, #84]	@ D.32886,
	cmp	ip, r5	@ D.32882, tmp149
	bcs	.L26	@,
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L27	@,
	ubfx	r3, lr, #4, #4	@ tmp176, D.32886,,
	and	r0, lr, #15	@ tmp172, D.32886,
	str	r3, [r1, #336]	@ tmp176, <variable>.SMPPicSyntax.SKIPMBMode
	ubfx	lr, lr, #8, #4	@ tmp174, D.32886,,
	str	r0, [r1, #328]	@ tmp172, <variable>.SMPPicSyntax.MVTYPEMBMode
	mov	r0, r2	@, pBS
	str	lr, [r1, #332]	@ tmp174, <variable>.SMPPicSyntax.DIRECTMBMode
	mov	r1, ip	@, D.32882
	bl	BsLongSkip	@
	mov	r0, #0	@ D.32898,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L27:
	ubfx	r3, lr, #28, #2	@ tmp169, D.32886,,
	ubfx	r0, lr, #0, #4	@ tmp155, D.32886,,
	strb	r3, [r1, #378]	@ tmp169, <variable>.AdvPicSyntax.CONDOVER
	ubfx	r3, lr, #12, #4	@ tmp157, D.32886,,
	strb	r0, [r1, #382]	@ tmp155, <variable>.AdvPicSyntax.MVTYPEMBMode
	ubfx	r0, lr, #16, #4	@ tmp159, D.32886,,
	strb	r3, [r1, #385]	@ tmp157, <variable>.AdvPicSyntax.ACPREDMode
	ubfx	r3, lr, #20, #4	@ tmp161, D.32886,,
	strb	r0, [r1, #386]	@ tmp159, <variable>.AdvPicSyntax.OVERFLAGSMode
	ubfx	r0, lr, #8, #4	@ tmp163, D.32886,,
	strb	r3, [r1, #387]	@ tmp161, <variable>.AdvPicSyntax.FIELDTXMode
	ubfx	r3, lr, #24, #4	@ tmp165, D.32886,,
	strb	r0, [r1, #383]	@ tmp163, <variable>.AdvPicSyntax.DIRECTMBMode
	ubfx	r0, lr, #4, #4	@ tmp167, D.32886,,
	strb	r3, [r1, #388]	@ tmp165, <variable>.AdvPicSyntax.FORWARDMBMode
	strb	r0, [r1, #384]	@ tmp167, <variable>.AdvPicSyntax.SKIPMBMode
	mov	r0, r2	@, pBS
	mov	r1, ip	@, D.32882
	bl	BsLongSkip	@
	mov	r0, #0	@ D.32898,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L26:
	rsb	r3, r3, r4	@, D.32891, D.32889
	mov	r2, ip	@, D.32882
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.32898,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	BPD_GetParam, .-BPD_GetParam
	.align	2
	.global	BPDDRV_WaitBpdReadyIfNoIsr
	.type	BPDDRV_WaitBpdReadyIfNoIsr, %function
BPDDRV_WaitBpdReadyIfNoIsr:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bl	OSAL_GetTimeInMs	@
	movw	r6, #3999	@ tmp142,
	mov	r4, r0	@ StartTimeInMs,
.L31:
	bl	IsBpd_Ready	@
	subs	r5, r0, #0	@ D.32860,
	bne	.L29	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r0, r4	@ CurTimeInMs, StartTimeInMs
	movcc	r4, #0	@ StartTimeInMs,
	rsb	r0, r4, r0	@ tmp138, StartTimeInMs, CurTimeInMs
	cmp	r0, r6	@ tmp138, tmp142
	bls	.L31	@,
	mov	r0, r5	@, D.32860
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.32867,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L29:
	mov	r0, #0	@ D.32867,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	BPDDRV_WaitBpdReadyIfNoIsr, .-BPDDRV_WaitBpdReadyIfNoIsr
	.align	2
	.global	BPD_CfgReg_GetRegVirAddr
	.type	BPD_CfgReg_GetRegVirAddr, %function
BPD_CfgReg_GetRegVirAddr:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r4, [r0, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	mov	r5, r0	@ pHwMem, pHwMem
	cmp	r4, #0	@ <variable>.pBpdRegVirAddr,
	movne	r0, #0	@ D.32651,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	movw	r0, #:lower16:269733888	@,
	movt	r0, #:upper16:269733888	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.32646,
	strne	r3, [r5, #8]	@ D.32646, <variable>.pBpdRegVirAddr
	movne	r0, r4	@ D.32651, <variable>.pBpdRegVirAddr
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32651,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	BPD_CfgReg_GetRegVirAddr, .-BPD_CfgReg_GetRegVirAddr
	.align	2
	.global	BPD_CfgReg
	.type	BPD_CfgReg, %function
BPD_CfgReg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ pCodecInfo, pCodecInfo
	mov	r0, r3	@, pHwMem
	mov	r6, r1	@ pBS, pBS
	mov	r3, #0	@ tmp180,
	mov	r5, r2	@ pSyntax, pSyntax
	str	r3, [sp, #12]	@ tmp180, D32
	bl	BPD_CfgReg_GetRegVirAddr	@
	cmp	r0, #0	@ D.32660
	mvnne	r0, #0	@ D.32663,
	bne	.L44	@,
	movw	r3, #:lower16:g_HwMem	@ tmp415,
	movt	r3, #:upper16:g_HwMem	@ tmp415,
	mvn	r8, #0	@ tmp183,
	mvn	r1, #1	@ tmp186,
	ldr	r9, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r8, [r9, #68]	@ tmp183,
	ldr	r7, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r1, [r7, #68]	@ tmp186,
	ldrb	r1, [r4, #3096]	@ zero_extendqisi2	@ <variable>.PreParseInfo.IsAdvProfile, <variable>.PreParseInfo.IsAdvProfile
	str	r0, [sp, #12]	@ D.32660, D32
	ldr	r2, [r6, #0]	@, <variable>.pHead
	cmp	r1, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	ldr	r0, [r6, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	str	r2, [sp, #0]	@, %sfp
	ldr	ip, [r6, #20]	@ D.32669, <variable>.BufPos
	beq	.L45	@,
	ldrb	r6, [r5, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r6, #0	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L68	@,
.L46:
	ldr	lr, [sp, #12]	@ tmp194,
	add	r2, sp, #12	@ tmp416,,
	orr	fp, lr, #4096	@ tmp419, tmp194,
	str	fp, [sp, #12]	@ tmp419,
.L47:
	ldrb	r7, [r5, #197]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.OVERLAP, <variable>.AdvEntSyntax.OVERLAP
	cmp	r7, #1	@ <variable>.AdvEntSyntax.OVERLAP,
	beq	.L64	@,
.L66:
	ldr	r6, [r2, #0]	@ tmp413,
.L48:
	ldrb	fp, [r5, #349]	@ zero_extendqisi2	@ D.32699, <variable>.AdvPicSyntax.PTYPE
	ldr	sl, [r5, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	fp, #4	@ D.32699,
	andne	fp, fp, #3	@ iftmp.431, D.32699,
	moveq	fp, #3	@ iftmp.431,
	bfi	r6, fp, #14, #2	@ tmp202, iftmp.431,,
	mov	r8, r6	@ tmp204, tmp202
	ldrb	r6, [r5, #16]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PROFILE, <variable>.AdvSeqSyntax.PROFILE
	bfi	r8, sl, #16, #2	@ tmp204, <variable>.AdvPicSyntax.FCM,,
	bfi	r8, r6, #18, #2	@ tmp205, <variable>.AdvSeqSyntax.PROFILE,,
	str	r8, [r2, #0]	@ tmp421,
.L51:
	cmp	r1, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L57	@,
	ldr	r1, [r5, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L69	@,
.L57:
	movw	r9, #22564	@ tmp241,
	movw	r7, #:lower16:1431655766	@ tmp245,
	ldr	r1, [r4, r9]	@ <variable>.MbHeight, <variable>.MbHeight
	movt	r7, #:upper16:1431655766	@ tmp245,
	smull	sl, lr, r7, r1	@, tmp244, tmp245, <variable>.MbHeight
	sub	fp, lr, r1, asr #31	@ tmp242, tmp244, <variable>.MbHeight,
	add	r6, fp, fp, asl #1	@, tmp249, tmp242, tmp242,
	rsb	sl, r6, r1	@ tmp250, tmp249, <variable>.MbHeight
	and	r9, sl, #3	@, tmp250,
	str	r9, [sp, #4]	@, %sfp
.L58:
	adds	r7, r0, #31	@ tmp266, <variable>.TotalPos,
	movw	r1, #22560	@ tmp254,
	addmi	r7, r0, #62	@, tmp268, <variable>.TotalPos,
	ldr	r1, [r4, r1]	@ <variable>.MbWidth, <variable>.MbWidth
	bic	r6, r7, #31	@ tmp271, tmp268,
	rsb	lr, r0, ip	@ tmp265, <variable>.TotalPos, D.32669
	add	ip, lr, r6	@ tmp272, tmp265, tmp271
	movw	sl, #:lower16:1431655766	@ tmp258,
	movt	sl, #:upper16:1431655766	@ tmp258,
	cmp	r0, #0	@ <variable>.TotalPos,
	mov	r9, ip, asr #31	@ tmp274, tmp272,
	add	fp, r0, #7	@ tmp285, <variable>.TotalPos,
	smull	r7, sl, sl, r1	@, tmp257, tmp258, <variable>.MbWidth
	mov	r6, r9, lsr #27	@ tmp275, tmp274,
	add	r7, ip, r6	@ tmp276, tmp272, tmp275
	movge	fp, r0	@ D.32670, <variable>.TotalPos
	and	lr, r7, #31	@ tmp277, tmp276,
	mov	fp, fp, asr #3	@ tmp286, D.32670,
	rsb	ip, r6, lr	@ tmp278, tmp275, tmp277
	movw	r7, #34940	@ tmp288,
	add	r9, ip, #7	@ tmp281, tmp278,
	cmp	ip, #0	@ tmp278,
	sub	sl, sl, r1, asr #31	@ tmp255, tmp257, <variable>.MbWidth,
	ldr	lr, [sp, #4]	@, %sfp
	movlt	ip, r9	@ tmp280, tmp281
	ldr	r9, [sp, #0]	@, %sfp
	movw	r6, #34952	@ tmp291,
	add	ip, fp, ip, asr #3	@, tmp287, tmp286, tmp280,
	add	sl, sl, sl, asl #1	@, tmp262, tmp255, tmp255,
	ldr	fp, [r4, r7]	@, <variable>.stCurPacket.BsVirAddr
	bfi	r8, lr, #10, #2	@ tmp253,,,
	rsb	sl, sl, r1	@ tmp263, tmp262, <variable>.MbWidth
	add	lr, r9, ip	@ pCurStreamVirAddr.434,, tmp287
	ldr	r1, [r4, r6]	@, <variable>.stCurPacket.BsPhyAddr
	rsb	r9, fp, lr	@ tmp289,, pCurStreamVirAddr.434
	and	fp, r0, #7	@ tmp300, <variable>.TotalPos,
	add	r9, r9, r1	@ tmp292, tmp289,
	bfi	r8, sl, #8, #2	@ tmp264, tmp263,,
	and	r9, r9, #15	@ tmp295, tmp292,
	str	r8, [r2, #0]	@ tmp264,
	add	r0, fp, r9, asl #3	@, tmp303, tmp300, tmp295,
	strb	r0, [r2, #0]	@ tmp303, <variable>.bit_offset
	ldr	fp, [sp, #12]	@ D32.435, D32
	ldr	r1, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	fp, [r1, #4]	@ D32.435,
	ldr	fp, [r4, r7]	@ <variable>.stCurPacket.BsVirAddr, <variable>.stCurPacket.BsVirAddr
	ldr	r0, [r4, r6]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	ldr	r1, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	rsb	ip, fp, lr	@ tmp310, <variable>.stCurPacket.BsVirAddr, pCurStreamVirAddr.434
	add	lr, ip, r0	@ tmp313, tmp310, <variable>.stCurPacket.BsPhyAddr
	mov	r0, #0	@ tmp307,
	bic	r6, lr, #15	@ tmp315, tmp313,
	str	r6, [r1, #8]	@ tmp315,
	ldrb	ip, [r4, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	str	r0, [sp, #12]	@ tmp307, D32
	cmp	ip, r0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L59	@,
	ldr	r0, [r5, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r0, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L70	@,
.L59:
	movw	lr, #22564	@ tmp332,
	ldr	ip, [r4, lr]	@ <variable>.MbHeight, <variable>.MbHeight
	sub	r5, ip, #1	@ tmp335, <variable>.MbHeight,
	uxth	r0, r5	@ iftmp.438, tmp335
.L60:
	movw	r6, #22560	@ tmp336,
	strh	r0, [r2, #2]	@ movhi	@ iftmp.438, <variable>.pic_mbheight_m1
	ldr	lr, [r4, r6]	@ <variable>.MbWidth, <variable>.MbWidth
	mov	r0, #0	@ tmp342,
	ldr	r5, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	sub	ip, lr, #1	@ tmp339, <variable>.MbWidth,
	strh	ip, [r2, #0]	@ movhi	@ tmp339, <variable>.pic_mbwidth_m1
	ldr	r2, [sp, #12]	@ D32.664, D32
	mov	ip, r0	@ tmp359, tmp342
	str	r2, [r5, #12]	@ D32.664,
	mov	r5, #3	@ tmp407,
	ldr	lr, [r4, r6]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r6, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	adds	r1, lr, #127	@ tmp345, <variable>.MbWidth,
	addmi	r2, lr, #254	@, tmp348, <variable>.MbWidth,
	movpl	r2, r1	@, tmp348, tmp345
	mov	r1, r5, asl #4	@ tmp408, tmp407,
	bfi	r1, r5, #8, #4	@ tmp408, tmp407,,
	mov	lr, r2, lsr r5	@ tmp358, tmp348,
	and	r2, lr, #4080	@ tmp357, tmp358,
	movw	lr, #35024	@ tmp364,
	bfi	ip, r2, #0, #12	@ tmp359, tmp357,,
	str	ip, [r6, #16]	@ tmp359,
	ldr	ip, [r4, lr]	@ <variable>.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	movw	lr, #35028	@ tmp370,
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #20]	@ <variable>.MVTYPEMB_ADDR,
	ldr	ip, [r4, lr]	@ <variable>.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	movw	lr, #35032	@ tmp376,
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #24]	@ <variable>.SKIPMB_ADDR,
	ldr	ip, [r4, lr]	@ <variable>.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	movw	lr, #35036	@ tmp382,
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #28]	@ <variable>.DIRECTMB_ADDR,
	ldr	ip, [r4, lr]	@ <variable>.ACPRED_ADDR, <variable>.ACPRED_ADDR
	movw	lr, #35040	@ tmp388,
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #32]	@ <variable>.ACPRED_ADDR,
	ldr	ip, [r4, lr]	@ <variable>.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	movw	lr, #35044	@ tmp394,
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #36]	@ <variable>.OVERFLAGS_ADDR,
	ldr	ip, [r4, lr]	@ <variable>.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	movw	lr, #35048	@ tmp400,
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #40]	@ <variable>.FIELDTX_ADDR,
	ldr	ip, [r4, lr]	@ <variable>.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #44]	@ <variable>.FORWARDMB_ADDR,
	ldr	r3, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r1, [r3, #48]	@ tmp408,
.L44:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L45:
	ldrb	r2, [r5, #259]	@ zero_extendqisi2	@ D.32712, <variable>.SMPPicSyntax.MVMODE
	cmp	r2, #0	@ D.32712,
	bne	.L71	@,
.L52:
	ldr	r7, [sp, #12]	@ tmp210,
	add	r2, sp, #12	@ tmp416,,
	orr	lr, r7, #4096	@ tmp422, tmp210,
	str	lr, [sp, #12]	@ tmp422,
.L54:
	ldrb	r6, [r5, #251]	@ zero_extendqisi2	@ D.32717, <variable>.SMPPicSyntax.PTYPE
	ldr	r8, [r2, #0]	@ tmp214,
	cmp	r6, #4	@ D.32717,
	ldrb	r9, [r5, #0]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.PROFILE
	andne	r6, r6, #3	@ iftmp.432, D.32717,
	moveq	r6, #3	@ iftmp.432,
	bfi	r8, r6, #14, #2	@ tmp214, iftmp.432,,
	bic	r8, r8, #196608	@ tmp216, tmp214,
	bfi	r8, r9, #18, #2	@ tmp216, <variable>.SMPSeqSyntax.PROFILE,,
	str	r8, [r2, #0]	@ tmp421,
	b	.L51	@
.L68:
	movw	sl, #362	@ tmp192,
	ldrh	r2, [r5, sl]	@ tmp193,
	cmp	r2, #4	@ tmp193,
	addne	r2, sp, #12	@ tmp416,,
	bne	.L47	@,
	b	.L46	@
.L71:
	cmp	r2, #4	@ D.32712,
	beq	.L53	@,
	add	r2, sp, #12	@ tmp416,,
	b	.L54	@
.L64:
	ldr	r8, [r5, #464]	@ <variable>.AdvPicSyntax.PQUANT, <variable>.AdvPicSyntax.PQUANT
	cmp	r8, #8	@ <variable>.AdvPicSyntax.PQUANT,
	bgt	.L66	@,
	ldr	r9, [r2, #0]	@ tmp420,
	orr	r6, r9, #8192	@ tmp413, tmp420,
	str	r6, [r2, #0]	@ tmp413,
	b	.L48	@
.L69:
	movw	r7, #22564	@ tmp224,
	movw	r1, #:lower16:1431655766	@ tmp233,
	ldr	lr, [r4, r7]	@ <variable>.MbHeight, <variable>.MbHeight
	movt	r1, #:upper16:1431655766	@ tmp233,
	add	fp, lr, #1	@ tmp225, <variable>.MbHeight,
	add	sl, fp, fp, lsr #31	@, tmp229, tmp225, tmp225,
	mov	lr, sl, asr #1	@ tmp230, tmp229,
	smull	r9, r6, r1, lr	@, tmp232, tmp233, tmp230
	sub	r9, r6, sl, asr #31	@ tmp231, tmp232, tmp229,
	add	r7, r9, r9, asl #1	@, tmp237, tmp231, tmp231,
	rsb	fp, r7, lr	@ tmp238, tmp237, tmp230
	and	sl, fp, #3	@, tmp238,
	str	sl, [sp, #4]	@, %sfp
	b	.L58	@
.L70:
	movw	r0, #22564	@ tmp323,
	ldr	r1, [r4, r0]	@ <variable>.MbHeight, <variable>.MbHeight
	add	r6, r1, #1	@ tmp324, <variable>.MbHeight,
	add	lr, r6, r6, lsr #31	@, tmp328, tmp324, tmp324,
	mov	ip, lr, asr #1	@ tmp329, tmp328,
	sub	r5, ip, #1	@ tmp331, tmp329,
	uxth	r0, r5	@ iftmp.438, tmp331
	b	.L60	@
.L53:
	ldrb	r2, [r5, #260]	@ zero_extendqisi2	@ <variable>.SMPPicSyntax.MVMODE2, <variable>.SMPPicSyntax.MVMODE2
	cmp	r2, #0	@ <variable>.SMPPicSyntax.MVMODE2,
	beq	.L52	@,
	add	r2, sp, #12	@ tmp416,,
	b	.L54	@
	.fnend
	.size	BPD_CfgReg, .-BPD_CfgReg
	.align	2
	.global	BPD_Drv
	.type	BPD_Drv, %function
BPD_Drv:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #22564	@ tmp146,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r3, [r1, r3]	@ D.32932, <variable>.MbHeight
	mov	r4, r1	@ pCodecInfo, pCodecInfo
	mov	r5, r0	@ pBs, pBs
	cmp	r3, #2	@ D.32932,
	mov	r6, r2	@ pSyntax, pSyntax
	ble	.L80	@,
	movw	r0, #22560	@ tmp148,
	ldr	r2, [r1, r0]	@ prephitmp.707, <variable>.MbWidth
	cmp	r2, #2	@ prephitmp.707,
	ble	.L74	@,
	cmp	r2, #128	@ prephitmp.707,
	bgt	.L74	@,
	cmp	r3, #128	@ D.32932,
	ble	.L75	@,
.L74:
	movw	r1, #:lower16:.LC7	@,
	mov	r2, r2, asl #4	@, prephitmp.707,
	mov	r3, r3, asl #4	@, D.32932,
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L76:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L80:
	movw	r2, #22560	@ tmp147,
	ldr	r2, [r1, r2]	@ prephitmp.707, <variable>.MbWidth
	b	.L74	@
.L75:
	movw	r7, #:lower16:g_HwMem	@ tmp153,
	movt	r7, #:upper16:g_HwMem	@ tmp153,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	bl	BPD_Reset	@
	mov	r0, r4	@, pCodecInfo
	mov	r1, r5	@, pBs
	mov	r2, r6	@, pSyntax
	mov	r3, r7	@, tmp153
	bl	BPD_CfgReg	@
	cmn	r0, #1	@,
	beq	.L81	@,
	ldr	r2, [r7, #8]	@ D.32959, <variable>.pBpdRegVirAddr
	mov	ip, #0	@ tmp156,
	mov	lr, #1	@ tmp158,
	str	ip, [r2, #0]	@ tmp156,* D.32959
	ldr	r3, [r7, #8]	@ temp.719, <variable>.pBpdRegVirAddr
	str	lr, [r3, #0]	@ tmp158,* temp.719
	ldr	r1, [r7, #8]	@ temp.721, <variable>.pBpdRegVirAddr
	str	ip, [r1, #0]	@ tmp156,* temp.721
	bl	BPDDRV_WaitBpdReadyIfNoIsr	@
	cmp	r0, #0	@,
	bne	.L76	@,
	mov	r0, r4	@, pCodecInfo
	mov	r1, r6	@, pSyntax
	mov	r2, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	BPD_GetParam	@
.L81:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	b	.L76	@
	.fnend
	.size	BPD_Drv, .-BPD_Drv
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC1:
	.ascii	"BPD register not mapped yet!\000"
	.space	3
.LC2:
	.ascii	"*****************reset BPD!!!!******************\012"
	.ascii	"\000"
	.space	2
.LC3:
	.ascii	"Reset BPD Failed!\012\000"
	.space	1
.LC4:
	.ascii	" BPD ERROR: EAT TOO MUCH BS %#x, but available bs n"
	.ascii	"um %#x!!!\012\000"
	.space	2
.LC5:
	.ascii	"======>>>>> BPD TimeOut!!!\012\000"
.LC6:
	.ascii	"BPD register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC7:
	.ascii	"NOT SUPPORT SIZE %d*%d\012\000"
.LC8:
	.ascii	"----------------BPD_V200_DRV\012\000"
	.space	2
.LC9:
	.ascii	"BPD error: no map reg!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
