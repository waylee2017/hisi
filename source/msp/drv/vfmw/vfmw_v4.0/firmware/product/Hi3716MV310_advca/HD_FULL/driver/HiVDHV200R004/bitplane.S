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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -DCHIP_TYPE_hi3716mv310 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050
@ -DHI_LOG_SUPPORT=0 -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_ADVCA_SUPPORT -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(bitplane)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.bitplane.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.o
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
	.global	BPD_Start
	.type	BPD_Start, %function
BPD_Start:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:g_HwMem	@ tmp136,
	movt	ip, #:upper16:g_HwMem	@ tmp136,
	mov	r2, #0	@ tmp137,
	mov	r0, #1	@ tmp139,
	ldr	r3, [ip, #8]	@ D.36126, <variable>.pBpdRegVirAddr
	str	r2, [r3, #0]	@ tmp137,* D.36126
	ldr	r1, [ip, #8]	@ temp.543, <variable>.pBpdRegVirAddr
	str	r0, [r1, #0]	@ tmp139,* temp.543
	ldr	r3, [ip, #8]	@ temp.545, <variable>.pBpdRegVirAddr
	str	r2, [r3, #0]	@ tmp137,* temp.545
	bx	lr	@
	.fnend
	.size	BPD_Start, .-BPD_Start
	.align	2
	.global	IsBpd_Ready
	.type	IsBpd_Ready, %function
IsBpd_Ready:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_HwMem	@ tmp138,
	movt	r3, #:upper16:g_HwMem	@ tmp138,
	ldr	r3, [r3, #8]	@ D.36131, <variable>.pBpdRegVirAddr
	cmp	r3, #0	@ D.36131,
	beq	.L8	@,
	ldr	r0, [r3, #64]	@ Data32.569,
	and	r0, r0, #1	@ Data32, Data32.569,
	ldmfd	sp!, {r3, pc}	@
.L8:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Data32,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	IsBpd_Ready, .-IsBpd_Ready
	.align	2
	.global	BPD_GetParam
	.type	BPD_GetParam, %function
BPD_GetParam:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:g_HwMem	@ tmp145,
	movt	r4, #:upper16:g_HwMem	@ tmp145,
	ldr	lr, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	ldr	r3, [r4, #8]	@ D.36166, <variable>.pBpdRegVirAddr
	ldr	r4, [r2, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	ip, [r3, #80]	@ D.36169,
	rsb	lr, lr, r4, asl #3	@, tmp148, <variable>.TotalPos, <variable>.BsLen,
	ldr	r3, [r3, #84]	@ D.36173,
	cmp	ip, lr	@ D.36169, tmp148
	bcs	.L15	@,
	ldrb	r0, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L16	@,
	ubfx	lr, r3, #4, #4	@ tmp174, D.36173,,
	and	r0, r3, #15	@ tmp170, D.36173,
	str	lr, [r1, #336]	@ tmp174, <variable>.SMPPicSyntax.SKIPMBMode
	ubfx	r3, r3, #8, #4	@ tmp172, D.36173,,
	str	r0, [r1, #328]	@ tmp170, <variable>.SMPPicSyntax.MVTYPEMBMode
	mov	r0, r2	@, pBS
	str	r3, [r1, #332]	@ tmp172, <variable>.SMPPicSyntax.DIRECTMBMode
	mov	r1, ip	@, D.36169
	bl	BsLongSkip	@
	mov	r0, #0	@ D.36183,
	ldmfd	sp!, {r4, pc}	@
.L16:
	ubfx	lr, r3, #28, #2	@ tmp167, D.36173,,
	ubfx	r0, r3, #0, #4	@ tmp153, D.36173,,
	strb	lr, [r1, #378]	@ tmp167, <variable>.AdvPicSyntax.CONDOVER
	ubfx	lr, r3, #12, #4	@ tmp155, D.36173,,
	strb	r0, [r1, #382]	@ tmp153, <variable>.AdvPicSyntax.MVTYPEMBMode
	ubfx	r0, r3, #16, #4	@ tmp157, D.36173,,
	strb	lr, [r1, #385]	@ tmp155, <variable>.AdvPicSyntax.ACPREDMode
	ubfx	lr, r3, #20, #4	@ tmp159, D.36173,,
	strb	r0, [r1, #386]	@ tmp157, <variable>.AdvPicSyntax.OVERFLAGSMode
	ubfx	r0, r3, #8, #4	@ tmp161, D.36173,,
	strb	lr, [r1, #387]	@ tmp159, <variable>.AdvPicSyntax.FIELDTXMode
	ubfx	lr, r3, #24, #4	@ tmp163, D.36173,,
	strb	r0, [r1, #383]	@ tmp161, <variable>.AdvPicSyntax.DIRECTMBMode
	ubfx	r3, r3, #4, #4	@ tmp165, D.36173,,
	strb	lr, [r1, #388]	@ tmp163, <variable>.AdvPicSyntax.FORWARDMBMode
	mov	r0, r2	@, pBS
	strb	r3, [r1, #384]	@ tmp165, <variable>.AdvPicSyntax.SKIPMBMode
	mov	r1, ip	@, D.36169
	bl	BsLongSkip	@
	mov	r0, #0	@ D.36183,
	ldmfd	sp!, {r4, pc}	@
.L15:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.36183,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	BPD_GetParam, .-BPD_GetParam
	.align	2
	.global	BPDDRV_WaitBpdReadyIfNoIsr
	.type	BPDDRV_WaitBpdReadyIfNoIsr, %function
BPDDRV_WaitBpdReadyIfNoIsr:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bl	OSAL_GetTimeInMs	@
	movw	r5, #3999	@ tmp141,
	mov	r4, r0	@ StartTimeInMs,
.L20:
	bl	IsBpd_Ready	@
	cmp	r0, #0	@,
	bne	.L18	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r0, r4	@ CurTimeInMs, StartTimeInMs
	movcc	r4, #0	@ StartTimeInMs,
	rsb	r0, r4, r0	@ tmp138, StartTimeInMs, CurTimeInMs
	cmp	r0, r5	@ tmp138, tmp141
	bls	.L20	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.36155,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L18:
	mov	r0, #0	@ D.36155,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	BPDDRV_WaitBpdReadyIfNoIsr, .-BPDDRV_WaitBpdReadyIfNoIsr
	.align	2
	.global	BPD_Reset
	.type	BPD_Reset, %function
BPD_Reset:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r0, #:lower16:269746176	@,
	movt	r0, #:upper16:269746176	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L36	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp156,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp156,
	bl	vfmw_dprint_nothing	@
	movw	r5, #:lower16:g_HwMem	@ tmp157,
	ldr	r1, [r4, #0]	@ g_pstRegCrg.513, g_pstRegCrg
	movt	r5, #:upper16:g_HwMem	@ tmp157,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp158,
	ldr	r6, [r1, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	orr	r6, r6, #16	@ u32TmpValue, u32TmpValue,
	str	r6, [r1, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	ldr	r2, [r5, #8]	@ pretmp.655, <variable>.pBpdRegVirAddr
	add	r2, r2, #64	@ pretmp.634, pretmp.655,
	b	.L29	@
.L38:
	ldr	lr, [r2, #0]	@ dat,* pretmp.634
	tst	lr, #65536	@ dat,
	beq	.L28	@,
	cmp	r3, r0	@ i, tmp158
	beq	.L37	@,
.L29:
	ldr	ip, [r2, #0]	@ dat,* pretmp.634
	add	r3, r3, #1	@ tmp159, i,
	add	r3, r3, #1	@ i, tmp159,
	tst	ip, #65536	@ dat,
	bne	.L38	@,
.L28:
	ldr	r1, [r4, #0]	@ g_pstRegCrg.653, g_pstRegCrg
	bfc	r6, #4, #1	@ u32TmpValue,,
	mvn	r0, #1	@ tmp155,
	str	r6, [r1, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	ldr	r2, [r5, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r0, [r2, #52]	@ tmp155,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L37:
	bl	vfmw_dprint_nothing	@
	b	.L28	@
.L36:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	BPD_Reset, .-BPD_Reset
	.align	2
	.global	BPD_CfgReg
	.type	BPD_CfgReg, %function
BPD_CfgReg:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pCodecInfo, pCodecInfo
	cmp	ip, #0	@ <variable>.pBpdRegVirAddr,
	mov	r0, #0	@ tmp179,
	str	r0, [sp, #20]	@ tmp179, D32
	beq	.L66	@,
.L40:
	movw	r3, #:lower16:g_HwMem	@ tmp414,
	movt	r3, #:upper16:g_HwMem	@ tmp414,
	mvn	sl, #0	@ tmp184,
	mvn	r8, #1	@ tmp187,
	ldr	r9, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	mov	r6, #0	@ tmp188,
	str	sl, [r9, #68]	@ tmp184,
	ldr	r7, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r8, [r7, #68]	@ tmp187,
	ldrb	ip, [r4, #3096]	@ zero_extendqisi2	@ <variable>.PreParseInfo.IsAdvProfile, <variable>.PreParseInfo.IsAdvProfile
	str	r6, [sp, #20]	@ tmp188, D32
	ldr	r5, [r1, #0]	@, <variable>.pHead
	cmp	ip, r6	@ <variable>.PreParseInfo.IsAdvProfile,
	ldr	r0, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	str	r5, [sp, #12]	@, %sfp
	ldr	r5, [r1, #20]	@ D.35951, <variable>.BufPos
	beq	.L43	@,
	ldrb	r1, [r2, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r1, #0	@ <variable>.AdvPicSyntax.MVMODE,
	beq	.L44	@,
	movw	fp, #362	@ tmp193,
	ldrh	r1, [r2, fp]	@ tmp194,
	cmp	r1, #4	@ tmp194,
	addne	r1, sp, #20	@ prephitmp.685,,
	beq	.L44	@,
	ldrb	r8, [r2, #197]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.OVERLAP, <variable>.AdvEntSyntax.OVERLAP
	cmp	r8, #1	@ <variable>.AdvEntSyntax.OVERLAP,
	beq	.L62	@,
.L64:
	ldr	r6, [r1, #0]	@ tmp415,* prephitmp.685
.L46:
	ldrb	r8, [r2, #349]	@ zero_extendqisi2	@ D.35981, <variable>.AdvPicSyntax.PTYPE
	ldr	r7, [r2, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r8, #4	@ D.35981,
	ldrb	fp, [r2, #16]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PROFILE, <variable>.AdvSeqSyntax.PROFILE
	andne	r8, r8, #3	@ iftmp.498, D.35981,
	moveq	r8, #3	@ iftmp.498,
	bfi	r6, r8, #14, #2	@ tmp203, iftmp.498,,
	mov	r8, r6	@ tmp205, tmp203
	bfi	r8, r7, #16, #2	@ tmp205, <variable>.AdvPicSyntax.FCM,,
	bfi	r8, fp, #18, #2	@ tmp206, <variable>.AdvSeqSyntax.PROFILE,,
	str	r8, [r1, #0]	@ tmp419,* prephitmp.685
.L49:
	cmp	ip, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L55	@,
	ldr	ip, [r2, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	ip, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L67	@,
.L55:
	movw	sl, #22564	@ tmp241,
	movw	fp, #:lower16:1431655766	@ tmp245,
	ldr	r7, [r4, sl]	@ <variable>.MbHeight, <variable>.MbHeight
	movt	fp, #:upper16:1431655766	@ tmp245,
	smull	sl, r9, fp, r7	@, tmp244, tmp245, <variable>.MbHeight
	sub	r6, r9, r7, asr #31	@ tmp242, tmp244, <variable>.MbHeight,
	add	fp, r6, r6, asl #1	@, tmp249, tmp242, tmp242,
	rsb	ip, fp, r7	@ tmp250, tmp249, <variable>.MbHeight
	bfi	r8, ip, #10, #2	@ tmp251, tmp250,,
	str	r8, [r1, #0]	@ tmp422,* prephitmp.685
.L56:
	adds	fp, r0, #31	@ tmp264, <variable>.TotalPos,
	rsb	r5, r0, r5	@ tmp263, <variable>.TotalPos, D.35951
	addmi	fp, r0, #62	@, tmp266, <variable>.TotalPos,
	movw	ip, #22560	@ tmp252,
	bic	r7, fp, #31	@ tmp269, tmp266,
	ldr	ip, [r4, ip]	@ <variable>.MbWidth, <variable>.MbWidth
	add	r9, r5, r7	@ tmp270, tmp263, tmp269
	movw	sl, #:lower16:1431655766	@ tmp256,
	movt	sl, #:upper16:1431655766	@ tmp256,
	cmp	r0, #0	@ <variable>.TotalPos,
	mov	r6, r9, asr #31	@ tmp272, tmp270,
	add	fp, r0, #7	@ tmp283, <variable>.TotalPos,
	smull	r7, sl, sl, ip	@, tmp255, tmp256, <variable>.MbWidth
	mov	r6, r6, lsr #27	@ tmp273, tmp272,
	add	r7, r9, r6	@ tmp274, tmp270, tmp273
	movge	fp, r0	@ D.35952, <variable>.TotalPos
	and	r5, r7, #31	@ tmp275, tmp274,
	mov	fp, fp, asr #3	@ tmp284, D.35952,
	rsb	r5, r6, r5	@ tmp276, tmp273, tmp275
	movw	r7, #34940	@ tmp286,
	add	r9, r5, #7	@ tmp279, tmp276,
	cmp	r5, #0	@ tmp276,
	movw	r6, #34952	@ tmp289,
	sub	sl, sl, ip, asr #31	@ tmp253, tmp255, <variable>.MbWidth,
	movlt	r5, r9	@ tmp278, tmp279
	ldr	r9, [sp, #12]	@, %sfp
	add	r5, fp, r5, asr #3	@, tmp285, tmp284, tmp278,
	ldr	fp, [r4, r7]	@, <variable>.stCurPacket.BsVirAddr
	add	r5, r9, r5	@ pCurStreamVirAddr.500,, tmp285
	add	sl, sl, sl, asl #1	@, tmp260, tmp253, tmp253,
	rsb	r9, fp, r5	@ tmp287,, pCurStreamVirAddr.500
	ldr	fp, [r4, r6]	@, <variable>.stCurPacket.BsPhyAddr
	rsb	sl, sl, ip	@ tmp261, tmp260, <variable>.MbWidth
	and	r0, r0, #7	@ tmp298, <variable>.TotalPos,
	add	r9, r9, fp	@ tmp290, tmp287,
	bfi	r8, sl, #8, #2	@ tmp262, tmp261,,
	and	r9, r9, #15	@ tmp293, tmp290,
	str	r8, [r1, #0]	@ tmp262,* prephitmp.685
	ldr	ip, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	add	r0, r0, r9, asl #3	@, tmp301, tmp298, tmp293,
	strb	r0, [r1, #0]	@ tmp301, <variable>.bit_offset
	ldr	fp, [sp, #20]	@ D32.501, D32
	str	fp, [ip, #4]	@ D32.501,
	ldr	fp, [r4, r7]	@ <variable>.stCurPacket.BsVirAddr, <variable>.stCurPacket.BsVirAddr
	ldr	ip, [r4, r6]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	ldr	r7, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	rsb	r0, fp, r5	@ tmp308, <variable>.stCurPacket.BsVirAddr, pCurStreamVirAddr.500
	add	r6, r0, ip	@ tmp311, tmp308, <variable>.stCurPacket.BsPhyAddr
	mov	r5, #0	@ tmp305,
	bic	ip, r6, #15	@ tmp313, tmp311,
	str	ip, [r7, #8]	@ tmp313,
	ldrb	r0, [r4, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	str	r5, [sp, #20]	@ tmp305, D32
	cmp	r0, r5	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L57	@,
	ldr	r2, [r2, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L68	@,
.L57:
	movw	r5, #22564	@ tmp330,
	ldr	r6, [r4, r5]	@ <variable>.MbHeight, <variable>.MbHeight
	sub	r0, r6, #1	@ tmp333, <variable>.MbHeight,
	strh	r0, [sp, #22]	@ movhi	@ tmp333, <variable>.pic_mbheight_m1
.L58:
	movw	r7, #22560	@ tmp334,
	ldr	r5, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	ldr	r6, [r4, r7]	@ <variable>.MbWidth, <variable>.MbWidth
	mov	r0, #0	@ tmp340,
	mov	ip, r0	@ tmp357, tmp340
	sub	r2, r6, #1	@ tmp337, <variable>.MbWidth,
	strh	r2, [r1, #0]	@ movhi	@ tmp337, <variable>.pic_mbwidth_m1
	ldr	r6, [sp, #20]	@ D32.726, D32
	str	r6, [r5, #12]	@ D32.726,
	mov	r5, #3	@ tmp405,
	ldr	r2, [r4, r7]	@ <variable>.MbWidth, <variable>.MbWidth
	mov	r1, r5, asl #4	@ tmp406, tmp405,
	ldr	r6, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	bfi	r1, r5, #8, #4	@ tmp406, tmp405,,
	adds	r7, r2, #127	@ tmp343, <variable>.MbWidth,
	addmi	r2, r2, #254	@, tmp346, <variable>.MbWidth,
	movpl	r2, r7	@, tmp346, tmp343
	mov	r2, r2, lsr r5	@ tmp356, tmp346,
	and	r2, r2, #4080	@ tmp355, tmp356,
	bfi	ip, r2, #0, #12	@ tmp357, tmp355,,
	movw	r2, #35024	@ tmp362,
	str	ip, [r6, #16]	@ tmp357,
	ldr	ip, [r4, r2]	@ <variable>.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #20]	@ <variable>.MVTYPEMB_ADDR,
	movw	r2, #35028	@ tmp368,
	ldr	ip, [r4, r2]	@ <variable>.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #24]	@ <variable>.SKIPMB_ADDR,
	movw	r2, #35032	@ tmp374,
	ldr	ip, [r4, r2]	@ <variable>.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #28]	@ <variable>.DIRECTMB_ADDR,
	movw	r2, #35036	@ tmp380,
	ldr	ip, [r4, r2]	@ <variable>.ACPRED_ADDR, <variable>.ACPRED_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #32]	@ <variable>.ACPRED_ADDR,
	movw	r2, #35040	@ tmp386,
	ldr	ip, [r4, r2]	@ <variable>.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #36]	@ <variable>.OVERFLAGS_ADDR,
	movw	r2, #35044	@ tmp392,
	ldr	ip, [r4, r2]	@ <variable>.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #40]	@ <variable>.FIELDTX_ADDR,
	movw	r2, #35048	@ tmp398,
	ldr	ip, [r4, r2]	@ <variable>.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	ldr	r2, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	ip, [r2, #44]	@ <variable>.FORWARDMB_ADDR,
	ldr	r3, [r3, #8]	@ <variable>.pBpdRegVirAddr, <variable>.pBpdRegVirAddr
	str	r1, [r3, #48]	@ tmp406,
.L42:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L43:
	ldrb	r1, [r2, #259]	@ zero_extendqisi2	@ D.35994, <variable>.SMPPicSyntax.MVMODE
	cmp	r1, #0	@ D.35994,
	beq	.L50	@,
	cmp	r1, #4	@ D.35994,
	beq	.L51	@,
.L65:
	add	r1, sp, #20	@ prephitmp.685,,
.L52:
	ldrb	r7, [r2, #251]	@ zero_extendqisi2	@ D.35999, <variable>.SMPPicSyntax.PTYPE
	ldr	fp, [r1, #0]	@ tmp215,* prephitmp.685
	cmp	r7, #4	@ D.35999,
	ldrb	sl, [r2, #0]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.PROFILE
	andne	r7, r7, #3	@ iftmp.499, D.35999,
	moveq	r7, #3	@ iftmp.499,
	bfi	fp, r7, #14, #2	@ tmp215, iftmp.499,,
	bic	r8, fp, #196608	@ tmp217, tmp215,
	bfi	r8, sl, #18, #2	@ tmp217, <variable>.SMPSeqSyntax.PROFILE,,
	str	r8, [r1, #0]	@ tmp419,* prephitmp.685
	b	.L49	@
.L44:
	ldr	r7, [sp, #20]	@ tmp195,
	add	r1, sp, #20	@ prephitmp.685,,
	orr	r6, r7, #4096	@ tmp417, tmp195,
	str	r6, [sp, #20]	@ tmp417,
	ldrb	r8, [r2, #197]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.OVERLAP, <variable>.AdvEntSyntax.OVERLAP
	cmp	r8, #1	@ <variable>.AdvEntSyntax.OVERLAP,
	bne	.L64	@,
	b	.L62	@
.L51:
	ldrb	r1, [r2, #260]	@ zero_extendqisi2	@ <variable>.SMPPicSyntax.MVMODE2, <variable>.SMPPicSyntax.MVMODE2
	cmp	r1, #0	@ <variable>.SMPPicSyntax.MVMODE2,
	bne	.L65	@,
.L50:
	ldr	r9, [sp, #20]	@ tmp211,
	add	r1, sp, #20	@ prephitmp.685,,
	orr	r6, r9, #4096	@ tmp420, tmp211,
	str	r6, [sp, #20]	@ tmp420,
	b	.L52	@
.L62:
	ldr	r9, [r2, #464]	@ <variable>.AdvPicSyntax.PQUANT, <variable>.AdvPicSyntax.PQUANT
	cmp	r9, #8	@ <variable>.AdvPicSyntax.PQUANT,
	bgt	.L64	@,
	ldr	sl, [r1, #0]	@ tmp418,* prephitmp.685
	orr	r6, sl, #8192	@ tmp415, tmp418,
	str	r6, [r1, #0]	@ tmp415,* prephitmp.685
	b	.L46	@
.L68:
	movw	r2, #22564	@ tmp321,
	ldr	ip, [r4, r2]	@ <variable>.MbHeight, <variable>.MbHeight
	add	r7, ip, #1	@ tmp322, <variable>.MbHeight,
	add	r5, r7, r7, lsr #31	@, tmp326, tmp322, tmp322,
	mov	r6, r5, asr #1	@ tmp327, tmp326,
	sub	r0, r6, #1	@ tmp329, tmp327,
	strh	r0, [r1, #2]	@ movhi	@ tmp329, <variable>.pic_mbheight_m1
	b	.L58	@
.L67:
	movw	r9, #22564	@ tmp225,
	movw	fp, #:lower16:1431655766	@ tmp234,
	ldr	sl, [r4, r9]	@ <variable>.MbHeight, <variable>.MbHeight
	movt	fp, #:upper16:1431655766	@ tmp234,
	add	r6, sl, #1	@ tmp226, <variable>.MbHeight,
	add	r7, r6, r6, lsr #31	@, tmp230, tmp226, tmp226,
	mov	sl, r7, asr #1	@ tmp231, tmp230,
	smull	r9, ip, fp, sl	@, tmp233, tmp234, tmp231
	sub	fp, ip, r7, asr #31	@ tmp232, tmp233, tmp230,
	add	r9, fp, fp, asl #1	@, tmp238, tmp232, tmp232,
	rsb	r6, r9, sl	@ tmp239, tmp238, tmp231
	bfi	r8, r6, #10, #2	@ tmp240, tmp239,,
	str	r8, [r1, #0]	@ tmp422,* prephitmp.685
	b	.L56	@
.L66:
	movw	r0, #:lower16:269746176	@,
	movt	r0, #:upper16:269746176	@,
	str	r1, [sp, #8]	@,
	str	r2, [sp, #4]	@,
	str	r3, [sp, #0]	@,
	bl	MEM_Phy2Vir	@
	ldr	r3, [sp, #0]	@,
	ldr	r1, [sp, #8]	@,
	ldr	r2, [sp, #4]	@,
	cmp	r0, #0	@ D.35941
	strne	r0, [r3, #8]	@ D.35941, <variable>.pBpdRegVirAddr
	bne	.L40	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35945,
	b	.L42	@
	.fnend
	.size	BPD_CfgReg, .-BPD_CfgReg
	.align	2
	.global	BPD_Drv
	.type	BPD_Drv, %function
BPD_Drv:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #22564	@ tmp146,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r3, [r1, r3]	@ D.36217, <variable>.MbHeight
	mov	r4, r1	@ pCodecInfo, pCodecInfo
	mov	r5, r0	@ pBs, pBs
	cmp	r3, #2	@ D.36217,
	mov	r6, r2	@ pSyntax, pSyntax
	ble	.L76	@,
	movw	r2, #22560	@ tmp147,
	ldr	r2, [r1, r2]	@ D.36219, <variable>.MbWidth
	cmp	r2, #2	@ D.36219,
	ble	.L76	@,
	cmp	r2, #128	@ D.36219,
	bgt	.L76	@,
	cmp	r3, #128	@ D.36217,
	ble	.L71	@,
.L76:
	bl	vfmw_dprint_nothing	@
.L72:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L71:
	movw	r7, #:lower16:g_HwMem	@ tmp148,
	movt	r7, #:upper16:g_HwMem	@ tmp148,
	bl	vfmw_dprint_nothing	@
	bl	BPD_Reset	@
	mov	r0, r4	@, pCodecInfo
	mov	r1, r5	@, pBs
	mov	r2, r6	@, pSyntax
	mov	r3, r7	@, tmp148
	bl	BPD_CfgReg	@
	cmn	r0, #1	@,
	beq	.L76	@,
	ldr	r3, [r7, #8]	@ D.36238, <variable>.pBpdRegVirAddr
	mov	ip, #0	@ tmp150,
	mov	r1, #1	@ tmp152,
	str	ip, [r3, #0]	@ tmp150,* D.36238
	ldr	lr, [r7, #8]	@ temp.779, <variable>.pBpdRegVirAddr
	str	r1, [lr, #0]	@ tmp152,* temp.779
	ldr	r0, [r7, #8]	@ temp.781, <variable>.pBpdRegVirAddr
	str	ip, [r0, #0]	@ tmp150,* temp.781
	bl	BPDDRV_WaitBpdReadyIfNoIsr	@
	cmp	r0, #0	@,
	bne	.L72	@,
	mov	r0, r4	@, pCodecInfo
	mov	r1, r6	@, pSyntax
	mov	r2, r5	@, pBs
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	BPD_GetParam	@
	.fnend
	.size	BPD_Drv, .-BPD_Drv
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
