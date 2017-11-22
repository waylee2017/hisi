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
	.file	"vdm_hal.c"
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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.o
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
	.global	VDMHAL_V200R004_GetHalMemSize
	.type	VDMHAL_V200R004_GetHalMemSize, %function
VDMHAL_V200R004_GetHalMemSize:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:481280	@,
	movt	r0, #:upper16:481280	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_GetHalMemSize, .-VDMHAL_V200R004_GetHalMemSize
	.align	2
	.global	VDMHAL_V200R400_GetPmvSize
	.type	VDMHAL_V200R400_GetPmvSize, %function
VDMHAL_V200R400_GetPmvSize:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #15	@ tmp139, Width,
	add	r2, r1, #15	@ tmp140, Height,
	movw	r3, #:lower16:g_not_direct_8x8_inference_flag	@ tmp148,
	movt	r3, #:upper16:g_not_direct_8x8_inference_flag	@ tmp148,
	mov	ip, r0, asr #4	@ ImgWidthInMb, tmp139,
	mov	r1, r2, asr #4	@ ImgHeightInMb, tmp140,
	cmp	r1, #36	@ ImgHeightInMb,
	cmple	ip, #45	@, ImgWidthInMb,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	mul	r1, ip, r1	@ tmp151, ImgWidthInMb, ImgHeightInMb
	movle	r3, #64	@, ColMbSize,
	movgt	r3, #32	@, ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	movne	ip, r3	@ ColMbSize, ColMbSize
	moveq	ip, #64	@ ColMbSize,
	mul	r2, ip, r1	@ tmp152, ColMbSize, tmp151
	add	r0, r2, #127	@ tmp153, tmp152,
	bic	r0, r0, #127	@, tmp153,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R400_GetPmvSize, .-VDMHAL_V200R400_GetPmvSize
	.align	2
	.global	VDMHAL_V200R004_MakeRpMsg
	.type	VDMHAL_V200R004_MakeRpMsg, %function
VDMHAL_V200R004_MakeRpMsg:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpMsg, .-VDMHAL_V200R004_MakeRpMsg
	.align	2
	.global	VDMHAL_V200R004_MakeRpReg
	.type	VDMHAL_V200R004_MakeRpReg, %function
VDMHAL_V200R004_MakeRpReg:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpReg, .-VDMHAL_V200R004_MakeRpReg
	.align	2
	.global	VDMHAL_V200R004_GetCharacter
	.type	VDMHAL_V200R004_GetCharacter, %function
VDMHAL_V200R004_GetCharacter:
	.fnstart
.LFB1942:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:g_VdmCharacter	@ tmp133,
	movw	r3, #:lower16:g_eVdmVersion	@ tmp135,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp133,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp135,
	mov	r1, #11	@ tmp134,
	mov	r2, #4	@ tmp136,
	str	r1, [r0, #0]	@ tmp134, g_VdmCharacter
	str	r2, [r3, #0]	@ tmp136, g_eVdmVersion
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_GetCharacter, .-VDMHAL_V200R004_GetCharacter
	.align	2
	.global	VDMHAL_V200R004_IsVdmRun
	.type	VDMHAL_V200R004_IsVdmRun, %function
VDMHAL_V200R004_IsVdmRun:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #1140	@ tmp141,
	movw	r3, #:lower16:g_HwMem	@ tmp139,
	mul	r2, r1, r0	@ tmp140, tmp141, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp139,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r2, r3]	@ D.39326, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ D.39326,
	beq	.L19	@,
	ldr	r0, [r4, #40]	@ Data32,
	subs	r0, r0, #1	@ D.39329, Data32,
	movne	r0, #1	@ D.39329
	ldmfd	sp!, {r4, pc}	@
.L19:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.39329, D.39326
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmRun, .-VDMHAL_V200R004_IsVdmRun
	.align	2
	.global	VDMHAL_V200R004_IsVdmReady
	.type	VDMHAL_V200R004_IsVdmReady, %function
VDMHAL_V200R004_IsVdmReady:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #1140	@ tmp142,
	mul	r2, r1, r0	@ tmp141, tmp142, VdhId
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_HwMem	@ tmp140,
	movt	r3, #:upper16:g_HwMem	@ tmp140,
	ldr	r3, [r2, r3]	@ D.39313, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ D.39313,
	beq	.L24	@,
	ldr	r0, [r3, #28]	@ Data32.728,
	ubfx	r0, r0, #17, #1	@ Data32, Data32.728,,
	ldmfd	sp!, {r3, pc}	@
.L24:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Data32,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmReady, .-VDMHAL_V200R004_IsVdmReady
	.align	2
	.global	VDMHAL_V200R004_WriteMsgSlot
	.type	VDMHAL_V200R004_WriteMsgSlot, %function
VDMHAL_V200R004_WriteMsgSlot:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L26	@,
	rsbs	r4, r2, #1	@ tmp148, dnmsg_size
	movcc	r4, #0	@ tmp148
	cmp	r2, #256	@ dnmsg_size,
	orrhi	r4, r4, #1	@,, tmp151, tmp148
	cmp	r4, #0	@ tmp151,
	bne	.L26	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.39497, tmp151
	ldmfd	sp!, {r4, pc}	@
.L26:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39497,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_WriteMsgSlot, .-VDMHAL_V200R004_WriteMsgSlot
	.align	2
	.global	VDMHAL_V200R004_ReadMsgSlot
	.type	VDMHAL_V200R004_ReadMsgSlot, %function
VDMHAL_V200R004_ReadMsgSlot:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	beq	.L31	@,
	cmp	r2, #512	@ upmsg_size,
	bhi	.L31	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.39481, tmp144
	ldmfd	sp!, {r4, pc}	@
.L31:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39481,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_ReadMsgSlot, .-VDMHAL_V200R004_ReadMsgSlot
	.align	2
	.global	VDMHAL_V200R004_WriteBigTitle1DYuv
	.type	VDMHAL_V200R004_WriteBigTitle1DYuv, %function
VDMHAL_V200R004_WriteBigTitle1DYuv:
	.fnstart
.LFB1943:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ubfx	r9, r3, #29, #2	@ PicStructure.915, Height,,
	.pad #84
	sub	sp, sp, #84	@,,
	cmp	r9, #1	@ PicStructure.915,
	mov	r6, r3	@ Height, Height
	mov	r4, r1	@ Yaddress, Yaddress
	str	r0, [sp, #20]	@ fpYuv, %sfp
	mov	r7, r2	@ Width, Width
	moveq	r9, #0	@ PicStructure,
	beq	.L37	@,
	cmp	r9, #2	@ PicStructure.915,
	moveq	r9, #1	@ PicStructure,
	movne	r9, #2	@ PicStructure,
.L37:
	ldr	r1, [sp, #20]	@, %sfp
	cmp	r1, #0	@,
	beq	.L75	@,
	add	r3, sp, #64	@ tmp246,,
	add	r2, sp, #48	@,,
	add	lr, r3, #4	@ tmp397, tmp246,
	add	r5, r2, #4	@ tmp394,,
	mov	ip, #0	@ tmp242,
	movw	r0, #:lower16:.LC0	@,
	str	ip, [r5], #4	@ tmp242, MemRecord_ul
	mov	r1, ip	@, tmp242
	str	ip, [lr], #4	@ tmp242, MemRecord_y
	movt	r0, #:upper16:.LC0	@,
	str	ip, [r5], #4	@ tmp242, MemRecord_ul
	mov	r2, #4194304	@,
	str	ip, [lr], #4	@ tmp242, MemRecord_y
	str	ip, [r5, #0]	@ tmp242, MemRecord_ul
	str	ip, [lr, #0]	@ tmp242, MemRecord_y
	str	ip, [sp, #48]	@ tmp242, MemRecord_ul
	str	ip, [sp, #64]	@ tmp242, MemRecord_y
	str	ip, [sp, #0]	@ tmp242,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L148	@,
.L40:
	mov	r8, #0	@ tmp256,
	movw	r0, #:lower16:.LC1	@,
	mov	r1, r8	@, tmp256
	movt	r0, #:upper16:.LC1	@,
	mov	r2, #4194304	@,
	add	r3, sp, #48	@,,
	str	r8, [sp, #0]	@ tmp256,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L149	@,
.L41:
	add	r5, r7, #15	@ tmp257, Width,
	add	r2, r6, #15	@ tmp259, Height,
	bic	r5, r5, #15	@ ImgWidthInPixAln, tmp257,
	bic	lr, r2, #15	@, tmp259,
	add	ip, r5, #255	@ tmp261, ImgWidthInPixAln,
	ldr	r8, [sp, #52]	@, MemRecord_ul.VirAddr
	bic	r3, ip, #255	@ tmp262, tmp261,
	str	lr, [sp, #12]	@, %sfp
	ldr	r1, [sp, #68]	@, MemRecord_y.VirAddr
	add	r2, r8, #2097152	@,,
	mov	r0, r3, asl #4	@, tmp262,
	str	r0, [sp, #8]	@, %sfp
	ldr	lr, [sp, #8]	@, %sfp
	mov	r7, r7, lsr #1	@, Width,
	str	r2, [sp, #40]	@, %sfp
	mov	r6, r6, lsr #1	@, Height,
	cmp	lr, #0	@,
	ldr	r2, [sp, #12]	@, %sfp
	add	ip, lr, #15	@ tmp265,,
	str	r1, [sp, #16]	@, %sfp
	movge	ip, lr	@ Stride,
	adds	r1, r2, #31	@ tmp267,,
	addmi	r1, r2, #62	@, tmp269,,
	mov	r3, ip, asr #4	@ tmp266, Stride,
	cmp	r9, #0	@ PicStructure,
	str	r8, [sp, #24]	@, %sfp
	mov	r0, r1, asr #5	@ tmp271, tmp269,
	str	r7, [sp, #36]	@, %sfp
	str	r6, [sp, #32]	@, %sfp
	mla	r8, r0, r3, r4	@ Caddress, tmp271, tmp266, Yaddress
	bne	.L42	@,
	cmp	r2, #0	@,
	beq	.L43	@,
	ldr	r0, [sp, #16]	@, %sfp
	str	r8, [sp, #44]	@ Caddress, %sfp
	mov	fp, r0	@ ivtmp.918,
	str	r0, [sp, #28]	@, %sfp
.L44:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L48	@,
	and	r0, r9, #15	@ pretmp.963, i,
	ldr	r7, [sp, #8]	@, %sfp
	mov	r2, r9, lsr #4	@ pretmp.962, i,
	cmp	fp, #0	@ ivtmp.918,
	mov	r6, r0, asl #8	@ tmp282, pretmp.963,
	sub	sl, r5, #1	@ tmp372, ImgWidthInPixAln,
	ubfx	sl, sl, #8, #1	@ tmp373, tmp372,,
	mla	r8, r7, r2, r6	@ pretmp.826,, pretmp.962, tmp282
	beq	.L93	@,
	mov	r0, fp	@, ivtmp.918
	add	r1, r4, r8	@, Yaddress, pretmp.826
	mov	r2, #256	@,
	bl	memcpy	@
.L93:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, fp, r7	@ ivtmp.875, ivtmp.918,
	bls	.L48	@,
	cmp	sl, #0	@ tmp373,
	beq	.L46	@,
	cmp	r6, #0	@ ivtmp.875,
	beq	.L98	@,
	add	r3, r8, #4096	@ tmp460, pretmp.826,
	mov	r0, r6	@, ivtmp.875
	add	r1, r4, r3	@, Yaddress, tmp460
	mov	r2, r7	@, j
	bl	memcpy	@
.L98:
	add	r7, r7, #256	@ j, tmp374,
	add	r6, r6, #256	@ ivtmp.875, tmp375,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L48	@,
.L46:
	mov	r1, r7, lsr #8	@ tmp273, j,
	cmp	r6, #0	@ ivtmp.875,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.875
	add	r3, r8, r1, asl #12	@, tmp275, pretmp.826, tmp273,
	add	r7, r7, r2	@ tmp374, j,
	add	r1, r4, r3	@, Yaddress, tmp275
	beq	.L45	@,
	bl	memcpy	@
.L45:
	mov	lr, r7, lsr #8	@ tmp462, tmp374,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp375, ivtmp.875,
	add	ip, r8, lr, asl #12	@, tmp464, pretmp.826, tmp462,
	add	r1, r4, ip	@, Yaddress, tmp464
	mov	r0, r6	@, tmp375
	beq	.L98	@,
	add	r7, r7, #256	@ j, tmp374,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.875, tmp375,
	bhi	.L46	@,
.L48:
	ldr	r8, [sp, #12]	@, %sfp
	add	r9, r9, #1	@ i, i,
	add	fp, fp, r5	@ ivtmp.918, ivtmp.918, ImgWidthInPixAln
	cmp	r8, r9	@, i
	bhi	.L44	@,
	ldr	fp, [sp, #12]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mul	r1, r5, fp	@, ImgWidthInPixAln,
	ldr	r8, [sp, #44]	@ Caddress, %sfp
	bl	klib_fwrite	@
	ldr	r4, [sp, #12]	@, %sfp
	movs	fp, r4, lsr #1	@ D.40059,,
	beq	.L49	@,
	ldr	r3, [sp, #8]	@, %sfp
	mov	sl, #0	@ i.926,
	str	fp, [sp, #8]	@ D.40059, %sfp
	mov	r9, r3, asr #1	@,,
	str	r9, [sp, #12]	@, %sfp
	ldr	r9, [sp, #28]	@ ivtmp.920, %sfp
.L50:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L53	@,
	ldr	r3, [sp, #12]	@, %sfp
	mov	r7, sl, lsr #3	@ pretmp.954, i.926,
	and	r4, sl, #7	@ pretmp.966, i.926,
	cmp	r9, #0	@ ivtmp.920,
	sub	fp, r5, #1	@ tmp366, ImgWidthInPixAln,
	mul	r6, r3, r7	@ tmp296,, pretmp.954
	ubfx	fp, fp, #8, #1	@ tmp367, tmp366,,
	add	r7, r6, r4, asl #8	@, pretmp.830, tmp296, pretmp.966,
	beq	.L86	@,
	mov	r0, r9	@, ivtmp.920
	add	r1, r8, r7	@, Caddress, pretmp.830
	mov	r2, #256	@,
	bl	memcpy	@
.L86:
	mov	r6, #256	@ j.925,
	cmp	r5, r6	@ ImgWidthInPixAln, j.925
	add	r4, r9, r6	@ ivtmp.921, ivtmp.920,
	bls	.L53	@,
	cmp	fp, #0	@ tmp367,
	beq	.L52	@,
	cmp	r4, #0	@ ivtmp.921,
	beq	.L91	@,
	add	lr, r7, #2048	@ tmp448, pretmp.830,
	mov	r0, r4	@, ivtmp.921
	add	r1, r8, lr	@, Caddress, tmp448
	mov	r2, r6	@, j.925
	bl	memcpy	@
.L91:
	add	r6, r6, #256	@ j.925, tmp369,
	add	r4, r4, #256	@ ivtmp.921, tmp368,
	cmp	r5, r6	@ ImgWidthInPixAln, j.925
	bls	.L53	@,
.L52:
	mov	ip, r6, lsr #8	@ tmp287, j.925,
	cmp	r4, #0	@ ivtmp.921,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.921
	add	r1, r7, ip, asl #11	@, tmp289, pretmp.830, tmp287,
	add	r6, r6, r2	@ tmp369, j.925,
	add	r1, r8, r1	@, Caddress, tmp289
	beq	.L51	@,
	bl	memcpy	@
.L51:
	mov	r0, r6, lsr #8	@ tmp450, tmp369,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp368, ivtmp.921,
	add	lr, r7, r0, asl #11	@, tmp452, pretmp.830, tmp450,
	add	r1, r8, lr	@, Caddress, tmp452
	mov	r0, r4	@, tmp368
	beq	.L91	@,
	add	r6, r6, #256	@ j.925, tmp369,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.925
	add	r4, r4, #256	@ ivtmp.921, tmp368,
	bhi	.L52	@,
.L53:
	ldr	r2, [sp, #8]	@, %sfp
	add	sl, sl, #1	@ i.926, i.926,
	add	r9, r9, r5	@ ivtmp.920, ivtmp.920, ImgWidthInPixAln
	cmp	sl, r2	@ i.926,
	bcc	.L50	@,
.L49:
	ldr	r1, [sp, #120]	@, chroma_idc
	cmp	r1, #1	@,
	beq	.L150	@,
	ldr	lr, [sp, #120]	@, chroma_idc
	cmp	lr, #0	@,
	beq	.L151	@,
.L55:
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r2, [sp, #32]	@, %sfp
	mul	r4, r0, r2	@ D.40087,,
.L147:
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r4	@, temp.951
	ldr	r0, [sp, #24]	@, %sfp
	bl	klib_fwrite	@
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r4	@, temp.951
	ldr	r0, [sp, #40]	@, %sfp
	bl	klib_fwrite	@
	ldr	r1, [sp, #68]	@, MemRecord_y.VirAddr
	ldr	r0, [sp, #72]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #64	@,,
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	r1, [sp, #52]	@, MemRecord_ul.VirAddr
	ldr	r0, [sp, #56]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #48	@,,
	mov	r1, #16	@,
	bl	__memzero	@
.L75:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L42:
	ldr	r1, [sp, #12]	@, %sfp
	subs	r9, r9, #1	@, PicStructure,
	movne	r9, #1	@
	str	r9, [sp, #28]	@, %sfp
	cmp	r1, r9	@,
	strhi	r8, [sp, #44]	@ Caddress, %sfp
	movhi	fp, r1	@ ImgHeightInPixAln,
	bls	.L60	@,
.L61:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L64	@,
	ldr	r3, [sp, #8]	@, %sfp
	mov	r1, r9, lsr #4	@ pretmp.970, i.936,
	and	r7, r9, #15	@ pretmp.960, i.936,
	sub	sl, r5, #1	@ tmp390, ImgWidthInPixAln,
	mov	r6, r9, lsr #1	@ pretmp.967, i.936,
	ldr	r2, [sp, #16]	@, %sfp
	mul	r8, r3, r1	@ tmp312,, pretmp.970
	mlas	r6, r5, r6, r2	@ ivtmp.910, ImgWidthInPixAln, pretmp.967,
	ubfx	sl, sl, #8, #1	@ tmp391, tmp390,,
	add	r8, r8, r7, asl #8	@, pretmp.822, tmp312, pretmp.960,
	beq	.L111	@,
	mov	r0, r6	@, ivtmp.910
	add	r1, r4, r8	@, Yaddress, pretmp.822
	mov	r2, #256	@,
	bl	memcpy	@
.L111:
	mov	r7, #256	@ j.935,
	cmp	r5, r7	@ ImgWidthInPixAln, j.935
	add	r6, r6, r7	@ ivtmp.910, ivtmp.910,
	bls	.L64	@,
	cmp	sl, #0	@ tmp391,
	beq	.L63	@,
	cmp	r6, #0	@ ivtmp.910,
	beq	.L116	@,
	add	ip, r8, #4096	@ tmp487, pretmp.822,
	mov	r0, r6	@, ivtmp.910
	add	r1, r4, ip	@, Yaddress, tmp487
	mov	r2, r7	@, j.935
	bl	memcpy	@
.L116:
	add	r7, r7, #256	@ j.935, tmp392,
	add	r6, r6, #256	@ ivtmp.910, tmp393,
	cmp	r5, r7	@ ImgWidthInPixAln, j.935
	bls	.L64	@,
.L63:
	mov	ip, r7, lsr #8	@ tmp303, j.935,
	cmp	r6, #0	@ ivtmp.910,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.910
	add	r3, r8, ip, asl #12	@, tmp305, pretmp.822, tmp303,
	add	r7, r7, r2	@ tmp392, j.935,
	add	r1, r4, r3	@, Yaddress, tmp305
	beq	.L62	@,
	bl	memcpy	@
.L62:
	mov	r0, r7, lsr #8	@ tmp489, tmp392,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp393, ivtmp.910,
	add	lr, r8, r0, asl #12	@, tmp491, pretmp.822, tmp489,
	add	r1, r4, lr	@, Yaddress, tmp491
	mov	r0, r6	@, tmp393
	beq	.L116	@,
	add	r7, r7, #256	@ j.935, tmp392,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j.935
	add	r6, r6, #256	@ ivtmp.910, tmp393,
	bhi	.L63	@,
.L64:
	add	r9, r9, #2	@ i.936, i.936,
	cmp	fp, r9	@ ImgHeightInPixAln, i.936
	bhi	.L61	@,
	ldr	r8, [sp, #44]	@ Caddress, %sfp
.L60:
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mul	lr, r5, r0	@ tmp314, ImgWidthInPixAln,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, lr, lsr #1	@, tmp314,
	bl	klib_fwrite	@
	ldr	ip, [sp, #12]	@, %sfp
	movs	r4, ip, lsr #1	@,,
	str	r4, [sp, #12]	@, %sfp
	beq	.L65	@,
	ldr	sl, [sp, #8]	@, %sfp
	mov	r9, sl, asr #1	@,,
	str	r9, [sp, #8]	@, %sfp
	ldr	r9, [sp, #16]	@ ivtmp.902, %sfp
	mov	sl, #0	@ i.943,
.L66:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L69	@,
	and	r7, sl, #7	@ pretmp.959, i.943,
	ldr	r4, [sp, #8]	@, %sfp
	mov	r0, sl, lsr #3	@ pretmp.819, i.943,
	cmp	r9, #0	@ ivtmp.902,
	mov	r6, r7, asl #8	@ tmp328, pretmp.959,
	sub	fp, r5, #1	@ tmp384, ImgWidthInPixAln,
	ubfx	fp, fp, #8, #1	@ tmp385, tmp384,,
	mla	r7, r4, r0, r6	@ pretmp.820,, pretmp.819, tmp328
	beq	.L104	@,
	mov	r0, r9	@, ivtmp.902
	add	r1, r8, r7	@, Caddress, pretmp.820
	mov	r2, #256	@,
	bl	memcpy	@
.L104:
	mov	r6, #256	@ j.942,
	cmp	r5, r6	@ ImgWidthInPixAln, j.942
	add	r4, r9, r6	@ ivtmp.946, ivtmp.902,
	bls	.L69	@,
	cmp	fp, #0	@ tmp385,
	beq	.L68	@,
	cmp	r4, #0	@ ivtmp.946,
	beq	.L109	@,
	add	r2, r7, #2048	@ tmp475, pretmp.820,
	mov	r0, r4	@, ivtmp.946
	add	r1, r8, r2	@, Caddress, tmp475
	mov	r2, r6	@, j.942
	bl	memcpy	@
.L109:
	add	r6, r6, #256	@ j.942, tmp386,
	add	r4, r4, #256	@ ivtmp.946, tmp387,
	cmp	r5, r6	@ ImgWidthInPixAln, j.942
	bls	.L69	@,
.L68:
	mov	r3, r6, lsr #8	@ tmp319, j.942,
	cmp	r4, #0	@ ivtmp.946,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.946
	add	r1, r7, r3, asl #11	@, tmp321, pretmp.820, tmp319,
	add	r6, r6, r2	@ tmp386, j.942,
	add	r1, r8, r1	@, Caddress, tmp321
	beq	.L67	@,
	bl	memcpy	@
.L67:
	mov	lr, r6, lsr #8	@ tmp477, tmp386,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp387, ivtmp.946,
	add	ip, r7, lr, asl #11	@, tmp479, pretmp.820, tmp477,
	add	r1, r8, ip	@, Caddress, tmp479
	mov	r0, r4	@, tmp387
	beq	.L109	@,
	add	r6, r6, #256	@ j.942, tmp386,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.942
	add	r4, r4, #256	@ ivtmp.946, tmp387,
	bhi	.L68	@,
.L69:
	ldr	r2, [sp, #12]	@, %sfp
	add	sl, sl, #1	@ i.943, i.943,
	add	r9, r9, r5	@ ivtmp.902, ivtmp.902, ImgWidthInPixAln
	cmp	sl, r2	@ i.943,
	bcc	.L66	@,
.L65:
	ldr	r1, [sp, #120]	@, chroma_idc
	cmp	r1, #1	@,
	beq	.L152	@,
	ldr	r2, [sp, #120]	@, chroma_idc
	cmp	r2, #0	@,
	beq	.L153	@,
.L71:
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r1, [sp, #32]	@, %sfp
	mul	r4, r0, r1	@ temp.951,,
	b	.L147	@
.L149:
	bl	vfmw_dprint_nothing	@
	b	.L41	@
.L148:
	bl	vfmw_dprint_nothing	@
	b	.L40	@
.L150:
	ldr	r3, [sp, #32]	@, %sfp
	cmp	r3, #0	@,
	beq	.L55	@,
	ldr	r6, [sp, #16]	@ tmp, %sfp
	mov	r8, #0	@ i.929,
	ldr	r7, [sp, #24]	@ ivtmp.927, %sfp
	mov	r9, r3	@ chrom_height,
	ldr	lr, [sp, #36]	@ chrom_width, %sfp
.L56:
	cmp	lr, #0	@ chrom_width,
	beq	.L58	@,
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ tmp417,* tmp
	add	r4, r7, #2097152	@ tmp416, ivtmp.927,
	mov	r0, #1	@ j.928,
	cmp	lr, r0	@ chrom_width, j.928
	sub	r3, lr, #1	@ tmp358, chrom_width,
	mov	r2, r7	@ ivtmp.847, ivtmp.927
	strb	ip, [r4, #0]	@ tmp417,
	and	ip, r3, r0	@ tmp360, tmp358,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@ tmp418,
	add	r3, r6, #2	@ ivtmp.844, tmp,
	strb	r1, [r2], #1	@ tmp418,
	bls	.L58	@,
	cmp	ip, #0	@ tmp360,
	beq	.L57	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp440,* ivtmp.844
	add	r4, r2, #2097152	@ tmp439, ivtmp.847,
	mov	r0, #2	@ j.928,
	cmp	lr, r0	@ chrom_width, j.928
	strb	r1, [r4, #0]	@ tmp440,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp441,
	add	r3, r3, r0	@ ivtmp.844, ivtmp.844,
	strb	ip, [r2], #1	@ tmp441,
	bls	.L58	@,
.L57:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp298,* ivtmp.844
	add	r4, r2, #2097152	@ tmp297, ivtmp.847,
	mov	r1, r2	@ tmp363, ivtmp.847
	add	ip, r3, #2	@ tmp362, ivtmp.844,
	add	r0, r0, #2	@ j.928, j.928,
	strb	sl, [r4, #0]	@ tmp298,
	cmp	lr, r0	@ chrom_width, j.928
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp300,
	strb	sl, [r1], #1	@ tmp300,
	add	r4, r1, #2097152	@ tmp410, tmp363,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp411,
	add	r3, ip, #2	@ ivtmp.844, tmp362,
	strb	sl, [r4, #0]	@ tmp411,
	ldrb	ip, [ip, #1]	@ zero_extendqisi2	@ tmp412,
	strb	ip, [r2, #1]	@ tmp412,
	add	r2, r1, #1	@ ivtmp.847, tmp363,
	bhi	.L57	@,
.L58:
	add	r8, r8, #1	@ i.929, i.929,
	add	r7, r7, lr	@ ivtmp.927, ivtmp.927, chrom_width
	cmp	r9, r8	@ chrom_height, i.929
	bls	.L55	@,
	add	r6, r6, r5	@ tmp, tmp, ImgWidthInPixAln
	b	.L56	@
.L152:
	ldr	r3, [sp, #32]	@, %sfp
	cmp	r3, #0	@,
	beq	.L71	@,
	ldr	ip, [sp, #28]	@, %sfp
	mov	fp, r3	@ chrom_height,
	ldr	lr, [sp, #16]	@, %sfp
	ldr	r7, [sp, #24]	@ ul, %sfp
	mla	r0, r5, ip, lr	@ tmp.944, ImgWidthInPixAln,,
	ldr	lr, [sp, #36]	@ chrom_width, %sfp
	mov	r5, r5, asl #1	@ D.40109, ImgWidthInPixAln,
	mov	ip, #0	@ i.949,
.L72:
	cmp	lr, #0	@ chrom_width,
	beq	.L74	@,
	mov	r3, ip, lsr #1	@ pretmp.815, i.949,
	ldrb	sl, [r0, #0]	@ zero_extendqisi2	@ tmp437,* tmp.944
	mov	r1, #1	@ j.948,
	cmp	lr, r1	@ chrom_width, j.948
	mul	r6, lr, r3	@ tmp335, chrom_width, pretmp.815
	sub	r9, lr, #1	@ tmp376, chrom_width,
	and	r9, r9, r1	@ tmp378, tmp376,
	add	r3, r0, #2	@ ivtmp.882, tmp.944,
	add	r4, r7, r6	@ ivtmp.885, ul, tmp335
	add	r8, r4, #2097152	@ tmp436, ivtmp.885,
	add	r2, r4, r1	@ ivtmp.885, ivtmp.885,
	strb	sl, [r8, #0]	@ tmp437,
	ldrb	r8, [r0, #1]	@ zero_extendqisi2	@ tmp438,
	strb	r8, [r7, r6]	@ tmp438,
	bls	.L74	@,
	cmp	r9, #0	@ tmp378,
	beq	.L73	@,
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp467,* ivtmp.882
	add	r6, r2, #2097152	@ tmp466, ivtmp.885,
	mov	r1, #2	@ j.948,
	cmp	lr, r1	@ chrom_width, j.948
	add	r2, r2, #1	@ ivtmp.885, ivtmp.885,
	strb	r8, [r6, #0]	@ tmp467,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ tmp468,
	add	r3, r3, r1	@ ivtmp.882, ivtmp.882,
	strb	r6, [r4, #1]	@ tmp468,
	bls	.L74	@,
.L73:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp331,* ivtmp.882
	add	r8, r2, #2097152	@ tmp330, ivtmp.885,
	mov	r4, r2	@ tmp381, ivtmp.885
	add	r6, r3, #2	@ tmp380, ivtmp.882,
	add	r1, r1, #2	@ j.948, j.948,
	strb	sl, [r8, #0]	@ tmp331,
	cmp	lr, r1	@ chrom_width, j.948
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ tmp333,
	strb	r8, [r4], #1	@ tmp333,
	add	r8, r4, #2097152	@ tmp430, tmp381,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp431,
	add	r3, r6, #2	@ ivtmp.882, tmp380,
	strb	sl, [r8, #0]	@ tmp431,
	ldrb	r6, [r6, #1]	@ zero_extendqisi2	@ tmp432,
	strb	r6, [r2, #1]	@ tmp432,
	add	r2, r4, #1	@ ivtmp.885, tmp381,
	bhi	.L73	@,
.L74:
	add	ip, ip, #2	@ i.949, i.949,
	cmp	fp, ip	@ chrom_height, i.949
	bls	.L71	@,
	add	r0, r0, r5	@ tmp.944, tmp.944, D.40109
	b	.L72	@
.L151:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [sp, #40]	@, %sfp
	bl	memset	@
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L55	@
.L153:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [sp, #40]	@, %sfp
	bl	memset	@
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L71	@
.L43:
	mov	r1, r9	@, PicStructure
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	bl	klib_fwrite	@
	b	.L49	@
	.fnend
	.size	VDMHAL_V200R004_WriteBigTitle1DYuv, .-VDMHAL_V200R004_WriteBigTitle1DYuv
	.align	2
	.global	VDMHAL_V200R004_StartHwDecode
	.type	VDMHAL_V200R004_StartHwDecode, %function
VDMHAL_V200R004_StartHwDecode:
	.fnstart
.LFB1941:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	bne	.L163	@,
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp138,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp138,
	mov	r1, #3	@,
	ldr	r0, [r3, #0]	@ s_RegPhyBaseAddr,
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L158:
#APP
@ 2279 "/home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb 
@ 0 "" 2
	movw	r1, #:lower16:outer_cache	@ tmp144,
	movt	r1, #:upper16:outer_cache	@ tmp144,
	ldr	r3, [r1, #20]	@ D.40164, outer_cache.sync
	cmp	r3, #0	@ D.40164,
	beq	.L159	@,
	blx	r3	@ D.40164
.L159:
	cmp	r4, #0	@ VdhId,
	bgt	.L164	@,
	movw	lr, #1140	@ tmp147,
	movw	r3, #:lower16:g_HwMem	@ tmp145,
	mul	r4, lr, r4	@ tmp146, tmp147, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp145,
	mov	lr, #0	@ tmp149,
	mov	r2, #1	@ tmp154,
	ldr	r1, [r4, r3]	@ D.39911, <variable>.pVdmRegVirAddr
	str	lr, [r1, #0]	@ tmp149,* D.39911
	ldr	ip, [r4, r3]	@ temp.999, <variable>.pVdmRegVirAddr
	str	r2, [ip, #0]	@ tmp154,* temp.999
	ldr	r0, [r4, r3]	@ temp.1001, <variable>.pVdmRegVirAddr
	str	lr, [r0, #0]	@ tmp149,* temp.1001
	ldmfd	sp!, {r4, pc}	@
.L163:
	cmp	r4, #1	@ VdhId,
	beq	.L165	@,
	bl	vfmw_dprint_nothing	@
	b	.L158	@
.L165:
	movw	ip, #:lower16:s_RegPhyBaseAddr_1	@ tmp141,
	movt	ip, #:upper16:s_RegPhyBaseAddr_1	@ tmp141,
	mov	r1, #3	@,
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr_1,
	add	r0, r2, #12	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	b	.L158	@
.L164:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	VDMHAL_V200R004_StartHwDecode, .-VDMHAL_V200R004_StartHwDecode
	.align	2
	.global	VDMHAL_V200R004_StartHwRepair
	.type	VDMHAL_V200R004_StartHwRepair, %function
VDMHAL_V200R004_StartHwRepair:
	.fnstart
.LFB1940:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r6, #1140	@ tmp145,
	mul	r6, r6, r0	@ tmp144, tmp145, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp175,
	movt	r4, #:upper16:g_HwMem	@ tmp175,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r7, [ip, #8]	@ dat,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr	@ tmp149,
	movt	r1, #:upper16:s_RegPhyBaseAddr	@ tmp149,
	orr	r7, r7, #67108864	@ dat.1026, dat,
	ldr	r2, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp152,
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r0, #8]	@ dat.1026,
#APP
@ 2022 "/home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb 
@ 0 "" 2
	movw	r3, #:lower16:outer_cache	@ tmp159,
	movt	r3, #:upper16:outer_cache	@ tmp159,
	ldr	r3, [r3, #20]	@ D.40165, outer_cache.sync
	cmp	r3, #0	@ D.40165,
	beq	.L167	@,
	blx	r3	@ D.40165
.L167:
	movw	ip, #1140	@ tmp162,
	mov	r3, #0	@ tmp164,
	mul	r5, ip, r5	@ tmp161, tmp162, VdhId
	mov	r0, #1	@ tmp169,
	ldr	r1, [r5, r4]	@ D.39895, <variable>.pVdmRegVirAddr
	str	r3, [r1, #0]	@ tmp164,* D.39895
	ldr	r2, [r5, r4]	@ temp.1034, <variable>.pVdmRegVirAddr
	str	r0, [r2, #0]	@ tmp169,* temp.1034
	ldr	lr, [r5, r4]	@ temp.1036, <variable>.pVdmRegVirAddr
	str	r3, [lr, #0]	@ tmp164,* temp.1036
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VDMHAL_V200R004_StartHwRepair, .-VDMHAL_V200R004_StartHwRepair
	.align	2
	.global	VDMHAL_V200R004_CfgRpReg
	.type	VDMHAL_V200R004_CfgRpReg, %function
VDMHAL_V200R004_CfgRpReg:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	cmp	r3, #1	@ VdhId,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r3, #0	@ tmp152,
	str	r3, [sp, #12]	@ tmp152, D32
	bls	.L177	@,
.L175:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39681,
.L172:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, pc}
.L177:
	beq	.L175	@,
	ldr	r0, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L179	@,
.L174:
	movw	r3, #:lower16:g_HwMem	@ tmp160,
	movt	r3, #:upper16:g_HwMem	@ tmp160,
	ldr	r2, [r1, #36]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:536920579	@ tmp166,
	ldr	r4, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:536920579	@ tmp166,
	bic	r0, r2, #15	@ tmp159, <variable>.MsgSlotAddr,
	movw	r2, #:lower16:3148803	@ tmp170,
	movt	r2, #:upper16:3148803	@ tmp170,
	str	r0, [r4, #16]	@ tmp159,
	mov	r4, #7	@ tmp162,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #0	@ D.39681,
	str	r4, [ip, #36]	@ tmp162,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #12]	@ tmp166,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #60]	@ tmp170,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #64]	@ tmp170,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #68]	@ tmp170,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #72]	@ tmp170,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #76]	@ tmp170,
	ldr	ip, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #80]	@ tmp170,
	ldr	r1, [r3, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #84]	@ tmp170,
	b	.L172	@
.L179:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r1, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ D.39687
	strne	r0, [r1, #0]	@ D.39687, <variable>.pVdmRegVirAddr
	bne	.L174	@,
	b	.L175	@
	.fnend
	.size	VDMHAL_V200R004_CfgRpReg, .-VDMHAL_V200R004_CfgRpReg
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.align	2
	.global	VDMHAL_V200R004_CfgRpMsg
	.type	VDMHAL_V200R004_CfgRpMsg, %function
VDMHAL_V200R004_CfgRpMsg:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r0	@ pRepairParam, pRepairParam
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r0, [r1, #36]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r9, r0, #0	@ pMsgBase,
	beq	.L216	@,
	ldr	r0, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r3, r0, #1	@ tmp223, <variable>.ValidGroupNum,
	cmp	r3, #127	@ tmp223,
	bhi	.L216	@,
	ldr	ip, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	sl, #0	@ tmp236,
	ldr	r2, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r1, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	r3, ip, asl #4	@ tmp228, <variable>.ImageHeight,
	adds	r0, r3, #31	@ tmp230, tmp228,
	mov	r8, r2, asl #4	@ tmp225, <variable>.ImageWidth,
	addmi	ip, r3, #62	@, tmp232, tmp228,
	movpl	ip, r0	@, tmp232, tmp230
	add	lr, r8, #255	@ tmp227, tmp225,
	bic	r2, lr, #255	@ SlotWidth, tmp227,
	str	r1, [r9, #0]	@ <variable>.RefImageAddr,* pMsgBase
	mov	r8, ip, asr #5	@ tmp234, tmp232,
	ldr	r0, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	r1, r2, asl #4	@ tmp252, SlotWidth,
	mul	r3, r8, r2	@ tmp235, tmp234, SlotWidth
	mov	r8, r3, asl #5	@ ChromaOffset, tmp235,
	add	lr, r8, r0	@ tmp242, ChromaOffset, <variable>.RefImageAddr
	str	lr, [r9, #4]	@ tmp242,
	ldr	ip, [r7, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	str	ip, [r9, #8]	@ <variable>.ImageAddr,
	ldr	r2, [r7, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	add	r0, r8, r2	@ tmp249, ChromaOffset, <variable>.ImageAddr
	str	r0, [r9, #12]	@ tmp249,
	str	r1, [r9, #16]	@ tmp252,
	str	sl, [r9, #20]	@ tmp236,
	ldr	r3, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	lr, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	ip, r3, #1	@ tmp259, <variable>.ImageWidth,
	sub	r2, lr, #1	@ tmp263, <variable>.ImageHeight,
	mov	r8, ip, asl #23	@ tmp264, tmp259,
	mov	r1, r8, lsr #23	@ tmp264, tmp264,
	bfi	r1, r2, #16, #9	@ tmp264, tmp263,,
	str	r1, [sp, #12]	@ tmp264,
	str	r1, [r9, #24]	@ tmp264,
	ldr	r8, [r7, #568]	@ prephitmp.1106, <variable>.FullRepair
	cmp	r8, sl	@ prephitmp.1106,
	bne	.L185	@,
	ldr	ip, [r7, #552]	@ temp.1159, <variable>.ValidGroupNum
	cmp	ip, sl	@ temp.1159,
	movle	sl, r8	@ actual_repairTime, prephitmp.1106
	ble	.L187	@,
	ldrsh	r3, [r7, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	mov	r6, r8	@ i, actual_repairTime.1158
	ldrsh	r2, [r7, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r0, r3, #7	@ tmp268, <variable>.StartMbn,
	cmp	r3, #0	@ <variable>.StartMbn,
	str	r9, [sp, #4]	@ pMsgBase, %sfp
	movlt	r3, r0	@ <variable>.StartMbn, tmp268
	adds	r1, r2, #7	@ tmp272, <variable>.EndMbn,
	addmi	r0, r2, #14	@, tmp274, <variable>.EndMbn,
	movpl	r0, r1	@, tmp274, tmp272
	bic	r1, r3, #7	@ cur_StartMb, <variable>.StartMbn,
	bic	r2, r0, #7	@ cur_EndMb, tmp274,
	mov	r3, r8	@ front_EndMb, front_EndMb
	mov	r9, r1	@ cur_StartMb, cur_StartMb
.L188:
	cmp	r2, r3	@ cur_EndMb, front_EndMb
	movgt	r0, #0	@, tmp315
	movle	r0, #1	@, tmp315
	cmp	r6, #0	@ i,
	moveq	r0, #0	@, tmp315,
	cmp	r0, #0	@ tmp315,
	addne	r4, r6, #1	@ i.1148, i,
	movne	sl, r8	@ actual_repairTime, actual_repairTime.1158
	bne	.L192	@,
	add	r4, r6, #10	@ tmp316, i,
	mvn	sl, r6	@ tmp412, i
	add	r5, sl, ip	@ tmp411, tmp412, temp.1159
	tst	r5, #1	@ tmp411,
	add	r1, r7, r4, asl #2	@, tmp318, pRepairParam, tmp316,
	add	r2, r1, #2	@ ivtmp.1129, tmp318,
	beq	.L193	@,
	add	r4, r6, #1	@ i.1148, i,
	cmp	r4, ip	@ i.1148, temp.1159
	bge	.L210	@,
	ldrsh	r0, [r1, #2]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r1, [r2, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r5, r0, #7	@ tmp429, <variable>.EndMbn,
	add	sl, r1, #7	@ tmp434, <variable>.StartMbn,
	addmi	r5, r0, #14	@, tmp431, <variable>.EndMbn,
	cmp	r1, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp431,
	movlt	r1, sl	@ <variable>.StartMbn, tmp434
	bic	r1, r1, #7	@ D.39611, <variable>.StartMbn,
	cmp	r5, r1	@ end_Mb, D.39611
	bgt	.L204	@,
	add	lr, r1, #1	@ tmp439, D.39611,
	cmp	r5, lr	@ end_Mb, tmp439
	beq	.L204	@,
	cmp	r6, #1	@ i,
	bmi	.L195	@,
	ldrsh	lr, [r2, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r0, lr, #7	@ tmp442, <variable>.EndMbn,
	addmi	sl, lr, #14	@, tmp444, <variable>.EndMbn,
	movpl	sl, r0	@, tmp444, tmp442
	bic	r1, sl, #7	@ tmp446, tmp444,
	cmp	r5, r1	@ end_Mb, tmp446
	bgt	.L195	@,
.L204:
	add	r2, r2, #4	@ ivtmp.1129, ivtmp.1129,
	mov	r6, r4	@ i, i.1148
	b	.L193	@
.L194:
	ldrsh	r0, [r2, #0]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r1, [r2, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r5, r0, #7	@ tmp418, <variable>.EndMbn,
	add	sl, r1, #7	@ tmp423, <variable>.StartMbn,
	addmi	r5, r0, #14	@, tmp420, <variable>.EndMbn,
	cmp	r1, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp420,
	movlt	r1, sl	@ <variable>.StartMbn, tmp423
	bic	r1, r1, #7	@ D.39611, <variable>.StartMbn,
	cmp	r5, r1	@ end_Mb, D.39611
	bgt	.L196	@,
	add	lr, r1, #1	@ tmp340, D.39611,
	cmp	r5, lr	@ end_Mb, tmp340
	beq	.L196	@,
	cmp	r6, #1	@ i,
	bmi	.L195	@,
	ldrsh	lr, [r2, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r0, lr, #7	@ tmp343, <variable>.EndMbn,
	addmi	sl, lr, #14	@, tmp345, <variable>.EndMbn,
	movpl	sl, r0	@, tmp345, tmp343
	bic	r1, sl, #7	@ tmp348, tmp345,
	cmp	r5, r1	@ end_Mb, tmp348
	bgt	.L195	@,
.L196:
	add	r1, r2, #4	@ tmp414, ivtmp.1129,
	ldrsh	r5, [r2, #4]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r0, r4	@ i.1148, i.1148
	mov	r6, r4	@ i, i.1148
	ldrsh	lr, [r1, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	sl, r5, #7	@ tmp329, <variable>.EndMbn,
	addmi	r5, r5, #14	@, tmp331, <variable>.EndMbn,
	movpl	r5, sl	@, tmp331, tmp329
	add	r4, r4, #1	@ i.1148, i.1148,
	add	r2, lr, #7	@ tmp337, <variable>.StartMbn,
	cmp	lr, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp331,
	movlt	lr, r2	@ <variable>.StartMbn, tmp337
	bic	r2, lr, #7	@ D.39611, <variable>.StartMbn,
	cmp	r5, r2	@ end_Mb, D.39611
	bgt	.L207	@,
	add	r2, r2, #1	@ tmp447, D.39611,
	cmp	r5, r2	@ end_Mb, tmp447
	beq	.L207	@,
	cmp	r0, #1	@ i.1148,
	bmi	.L195	@,
	ldrsh	r2, [r1, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	sl, r2, #7	@ tmp450, <variable>.EndMbn,
	addmi	lr, r2, #14	@, tmp452, <variable>.EndMbn,
	movpl	lr, sl	@, tmp452, tmp450
	bic	sl, lr, #7	@ tmp454, tmp452,
	cmp	r5, sl	@ end_Mb, tmp454
	bgt	.L195	@,
.L207:
	add	r2, r1, #4	@ ivtmp.1129, tmp414,
	add	r6, r0, #1	@ i, i.1148,
.L193:
	add	r4, r6, #1	@ i.1148, i,
	cmp	r4, ip	@ i.1148, temp.1159
	blt	.L194	@,
.L210:
	add	lr, r7, r6, asl #2	@, tmp322, pRepairParam, i,
	ldrsh	r1, [lr, #42]	@ pretmp.1111, <variable>.EndMbn
	adds	r0, r1, #7	@ pretmp.1198, pretmp.1111,
	addmi	ip, r1, #14	@, pretmp.1198, pretmp.1111,
	movpl	ip, r0	@, pretmp.1198, pretmp.1198
	bic	r5, ip, #7	@ end_Mb, pretmp.1198,
.L195:
	ldr	ip, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	add	sl, r8, #1	@ actual_repairTime, actual_repairTime.1158,
	ldr	r1, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mul	r2, r1, ip	@ D.39617, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r2, r5	@ D.39617, end_Mb
	suble	r5, r2, #1	@ end_Mb, D.39617,
	cmp	sl, #252	@ actual_repairTime,
	bgt	.L217	@,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	mov	r0, r9	@, cur_StartMb
	str	r3, [sp, #0]	@,
	mov	fp, #0	@,
	str	fp, [sp, #12]	@, D32
	bl	__aeabi_idivmod	@
	ldr	fp, [sp, #12]	@ tmp359,
	mov	r0, r9	@, cur_StartMb
	bfi	fp, r1, #0, #9	@ tmp359,,,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	ldr	r1, [sp, #4]	@, %sfp
	add	r3, r8, #4	@ tmp365, actual_repairTime.1158,
	mov	ip, #0	@,
	bfi	fp, r0, #16, #9	@ tmp364,,,
	mov	r0, r5	@, end_Mb
	str	fp, [r1, r3, asl #3]	@ D32.1170,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	str	ip, [sp, #12]	@, D32
	bl	__aeabi_idivmod	@
	ldr	r9, [sp, #12]	@ tmp374,
	mov	r0, r5	@, end_Mb
	bfi	r9, r1, #0, #9	@ tmp374,,,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	mov	r2, r8, asl #3	@ tmp380, actual_repairTime.1158,
	add	r8, r2, #36	@ tmp381, tmp380,
	bfi	r9, r0, #16, #9	@ tmp379,,,
	ldr	r0, [sp, #4]	@, %sfp
	str	r9, [sp, #12]	@ tmp379,
	str	r9, [r0, r8]	@ D32.1174,
	ldr	r3, [sp, #0]	@,
	ldr	ip, [r7, #552]	@ temp.1159, <variable>.ValidGroupNum
.L192:
	cmp	r4, ip	@ i.1148, temp.1159
	bge	.L215	@,
	add	r9, r4, #1	@ tmp277, i.1148,
	cmp	r9, #127	@ tmp277,
	bgt	.L215	@,
	add	r2, r4, #10	@ tmp278, i.1148,
	cmp	r4, #0	@ i.1148,
	mov	lr, r2, asl #2	@ tmp279, tmp278,
	add	r8, lr, r7	@ tmp280, tmp279, pRepairParam
	ldrh	r9, [lr, r7]	@ D.39587, <variable>.StartMbn
	ldrh	r2, [r8, #2]	@ D.39590, <variable>.EndMbn
	ble	.L190	@,
	add	r0, r7, r6, asl #2	@, tmp289, pRepairParam, i,
	ldrsh	r3, [r0, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r1, r3, #7	@ tmp292, <variable>.EndMbn,
	addmi	r6, r3, #14	@, tmp294, <variable>.EndMbn,
	movpl	r6, r1	@, tmp294, tmp292
	bic	r3, r6, #7	@ front_EndMb, tmp294,
.L190:
	sxth	r9, r9	@ D.39587, D.39587
	sxth	r2, r2	@ D.39590, D.39590
	cmp	r9, #0	@ D.39587,
	add	r1, r9, #7	@ tmp300, D.39587,
	mov	r8, sl	@ actual_repairTime.1158, actual_repairTime
	movlt	r9, r1	@ D.39587, tmp300
	adds	r6, r2, #7	@ tmp304, D.39590,
	addmi	lr, r2, #14	@, tmp306, D.39590,
	movpl	lr, r6	@, tmp306, tmp304
	bic	r9, r9, #7	@ cur_StartMb, D.39587,
	bic	r2, lr, #7	@ cur_EndMb, tmp306,
	mov	r6, r4	@ i, i.1148
	b	.L188	@
.L215:
	ldr	r9, [sp, #4]	@ pMsgBase, %sfp
	ldr	r8, [r7, #568]	@ prephitmp.1106, <variable>.FullRepair
.L185:
	cmp	r8, #1	@ prephitmp.1106,
	beq	.L199	@,
.L187:
	sub	lr, sl, #1	@ tmp383, actual_repairTime,
	uxth	r1, lr	@ prephitmp.1104, tmp383
.L201:
	mov	r0, #0	@ tmp397,
	str	r0, [sp, #12]	@ tmp397, D32
	ldr	ip, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@,
	ldr	lr, [r7, #564]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r2, ip, #0, #1	@ tmp399, <variable>.Compress_en,,
	strh	r1, [sp, #12]	@ movhi	@ prephitmp.1104, <variable>.total_grp_num_minus1
	uxtb	r3, r2	@ tmp402, tmp399
	bfi	r3, lr, #4, #2	@ tmp402, <variable>.Pic_type,,
	bfi	r3, lr, #6, #2	@ tmp405, <variable>.Pic_type,,
	strb	r3, [sp, #14]	@ tmp405,
	ldr	r1, [sp, #12]	@ D32.1197, D32
	str	r1, [r9, #28]	@ D32.1197,
.L182:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L217:
	ldr	r9, [sp, #4]	@ pMsgBase, %sfp
	mov	r3, #1	@ tmp351,
	str	r3, [r7, #568]	@ tmp351, <variable>.FullRepair
.L199:
	mov	r1, #0	@ tmp385,
	mov	ip, #1	@ tmp384,
	mov	r2, r1	@ tmp387, tmp385
	str	ip, [r7, #552]	@ tmp384, <variable>.ValidGroupNum
	bfi	r2, r1, #16, #9	@ tmp387, tmp385,,
	str	r2, [r9, #32]	@ tmp387,
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	lr, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	r3, r0, #1	@ tmp391, <variable>.ImageWidth,
	sub	r2, lr, #1	@ tmp395, <variable>.ImageHeight,
	mov	ip, r3, asl #23	@ tmp396, tmp391,
	mov	r0, ip, lsr #23	@ tmp396, tmp396,
	bfi	r0, r2, #16, #9	@ tmp396, tmp395,,
	str	r0, [r9, #36]	@ tmp396,
	b	.L201	@
.L216:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39536,
	b	.L182	@
	.fnend
	.size	VDMHAL_V200R004_CfgRpMsg, .-VDMHAL_V200R004_CfgRpMsg
	.align	2
	.global	VDMHAL_V200R004_PrepareRepair
	.type	VDMHAL_V200R004_PrepareRepair, %function
VDMHAL_V200R004_PrepareRepair:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #1	@ VdhId,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r4, r0	@ VidStd, VidStd
	.pad #12
	sub	sp, sp, #12	@,,
	bls	.L234	@,
.L230:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39841,
.L221:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L234:
	beq	.L230	@,
	movw	r5, #:lower16:g_HwMem	@ tmp146,
	movt	r5, #:upper16:g_HwMem	@ tmp146,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L236	@,
.L223:
	cmp	r2, #0	@ RepairTime,
	movw	r3, #:lower16:g_RepairParam	@ g_RepairParam.556,
	movt	r3, #:upper16:g_RepairParam	@ g_RepairParam.556,
	bne	.L225	@,
	ldr	r2, [r3, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r2, #0	@ <variable>.ValidGroupNum,
	ble	.L230	@,
	cmp	r4, #6	@ VidStd,
	bne	.L227	@,
	ldrb	r0, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	r0, #1	@ <variable>.PicStruct,
	movne	r0, #0	@, tmp167,
	str	r0, [r3, #1136]	@ tmp167, <variable>.Pic_type
.L227:
	mov	r2, r1	@, pDecParam
	mov	r0, r4	@, VidStd
	mov	r3, #0	@,
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VDMHAL_V200R004_CfgRpReg	@
	movw	r0, #:lower16:g_RepairParam	@,
	movt	r0, #:upper16:g_RepairParam	@,
.L235:
	movw	r1, #:lower16:g_HwMem	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, #0	@ D.39841,
	b	.L221	@
.L225:
	cmp	r2, #1	@ RepairTime,
	movne	r0, #0	@ D.39841,
	bne	.L221	@,
	cmp	r4, #6	@ VidStd,
	bne	.L230	@,
	ldrb	ip, [r1, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	ip, #1	@ <variable>.PicStruct,
	bne	.L230	@,
	ldr	lr, [r3, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	lr, #0	@ <variable>.ValidGroupNum,
	ble	.L230	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp162,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp162,
	mov	r0, #2	@ tmp159,
	str	r0, [r3, #1136]	@ tmp159, <variable>.Pic_type
	ldr	r3, [r2, #40]	@ D.39877, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.39877,
	beq	.L231	@,
	str	r1, [sp, #0]	@,
	mov	r0, #0	@,
	blx	r3	@ D.39877
	ldr	r1, [sp, #0]	@,
.L232:
	mov	r2, r1	@, pDecParam
	mov	r3, #0	@,
	mov	r0, #6	@,
	movw	r1, #:lower16:g_HwMem	@,
	movt	r1, #:upper16:g_HwMem	@,
	bl	VDMHAL_V200R004_CfgRpReg	@
	ldr	r0, .L237	@,
	b	.L235	@
.L236:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	stmia	sp, {r1, r2}	@ phole stm
	bl	MEM_Phy2Vir	@
	ldmia	sp, {r1, r2}	@ phole ldm
	cmp	r0, #0	@ D.39847
	beq	.L230	@,
	str	r0, [r5, #0]	@ D.39847, <variable>.pVdmRegVirAddr
	b	.L223	@
.L231:
	str	r1, [sp, #0]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #0]	@,
	b	.L232	@
.L238:
	.align	2
.L237:
	.word	g_RepairParam+572
	.fnend
	.size	VDMHAL_V200R004_PrepareRepair, .-VDMHAL_V200R004_PrepareRepair
	.align	2
	.global	VDMHAL_V200R004_BackupInfo
	.type	VDMHAL_V200R004_BackupInfo, %function
VDMHAL_V200R004_BackupInfo:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r0	@ pMb0QpInCurrPic, pMb0QpInCurrPic
	bls	.L258	@,
.L259:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39359,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L258:
	beq	.L259	@,
	movw	r5, #:lower16:g_HwMem	@ tmp265,
	movt	r5, #:upper16:g_HwMem	@ tmp265,
	movw	r2, #:lower16:g_DSPState	@ tmp218,
	movt	r2, #:upper16:g_DSPState	@ tmp218,
	ldr	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	ldr	r6, [r2, #0]	@ D.39363, g_DSPState
	cmp	r3, #0	@ p32,
	beq	.L260	@,
.L245:
	ldr	r0, [r3, #12]	@ D.39377,
	movw	r4, #:lower16:g_BackUp	@ tmp266,
	movt	r4, #:upper16:g_BackUp	@ tmp266,
	cmp	r6, #1	@ D.39363,
	movne	r6, #0	@, D.40895
	moveq	r6, #1	@, D.40895
	cmp	r6, #1	@ D.40895,
	str	r0, [r4, #0]	@ D.39377, <variable>.BasicCfg1
	ldr	r7, [r3, #28]	@ D.39381,
	str	r7, [r4, #4]	@ D.39381, <variable>.VdmState
	beq	.L261	@,
	add	r5, r3, #4096	@ D.39408, D.39374,
	ldr	r7, [r5, #0]	@ D.39409,* D.39408
	str	r7, [r4, #16]	@ D.39409, <variable>.SedSta
	ldr	r1, [r5, #20]	@ D.39413,
	str	r1, [r4, #20]	@ D.39413, <variable>.SedEnd0
	ldr	r0, [r3, #208]	@ temp.1278,
	str	r0, [r4, #8]	@ temp.1278, <variable>.Mb0QpInCurrPic
	ldr	r2, [r3, #212]	@ temp.1281,
	str	r2, [r4, #12]	@ temp.1281, <variable>.SwitchRounding
	ldr	ip, [r3, #176]	@ D.39427,
	str	ip, [r4, #24]	@ D.39427, <variable>.DecCyclePerPic
	ldr	r7, [r3, #180]	@ D.39431,
	str	r7, [r4, #28]	@ D.39431, <variable>.RdBdwidthPerPic
	ldr	r5, [r3, #184]	@ D.39435,
	str	r5, [r4, #32]	@ D.39435, <variable>.WrBdWidthPerPic
	ldr	r1, [r3, #188]	@ D.39439,
	str	r1, [r4, #36]	@ D.39439, <variable>.RdReqPerPic
	ldr	r0, [r3, #192]	@ D.39443,
	str	r0, [r4, #40]	@ D.39443, <variable>.WrReqPerPic
.L251:
	add	r7, r3, #33024	@ tmp264, D.39374,
	movw	r1, #:lower16:g_BackUp	@ ivtmp.1276,
	add	r5, r7, #128	@ D.40937, tmp264,
	movt	r1, #:upper16:g_BackUp	@ ivtmp.1276,
	mov	r3, r7	@ ivtmp.1272, tmp264
.L252:
	mov	r2, r3	@ tmp267, ivtmp.1272
	add	r0, r1, #4	@ tmp268, ivtmp.1276,
	ldr	ip, [r2], #4	@ D.39449,
	str	ip, [r1, #52]	@ D.39449, <variable>.LumaHistorgam
	add	r1, r0, #4	@ ivtmp.1276, tmp268,
	ldr	ip, [r3, #4]	@ D.39449,
	add	r3, r2, #4	@ ivtmp.1272, tmp267,
	cmp	r3, r5	@ ivtmp.1272, D.40937
	str	ip, [r0, #52]	@ D.39449, <variable>.LumaHistorgam
	bne	.L252	@,
	cmp	r6, #0	@ D.40895,
	ldr	r2, [r4, #0]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	ldreq	r3, [r7, #128]	@ D.39455,
	and	r1, r2, #15	@ tmp255, <variable>.BasicCfg1,
	streq	r3, [r4, #48]	@ D.39455, <variable>.LumaSumLow
	ldreq	r3, [r7, #132]	@ D.39459,
	streq	r3, [r4, #44]	@ D.39459, <variable>.LumaSumHigh
	cmp	r1, #5	@ tmp255,
	movw	r3, #:lower16:g_BackUp	@ tmp254,
	movt	r3, #:upper16:g_BackUp	@ tmp254,
	moveq	r0, #0	@ D.39359,
	movne	r0, #0	@ D.39359,
	ldreq	r3, [r3, #12]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	ldrne	r3, [r3, #8]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	andeq	r3, r3, #1	@ tmp259, <variable>.SwitchRounding,
	andne	r3, r3, #31	@ tmp262, <variable>.Mb0QpInCurrPic,
	streq	r3, [r8, #0]	@ tmp259,* pMb0QpInCurrPic
	strne	r3, [r8, #0]	@ tmp262,* pMb0QpInCurrPic
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L261:
	ldr	r0, [r5, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pMsgBase
	beq	.L259	@,
	bic	r2, r7, #-16777216	@ DecSliceNum, D.39381,
	bic	lr, r2, #16646144	@ DecSliceNum, DecSliceNum,
	sub	r3, lr, #1	@ tmp228, DecSliceNum,
	cmp	r3, #127	@ tmp228,
	subls	r3, lr, #-1073741823	@ tmp229, DecSliceNum,
	movls	r2, lr, asl #4	@ tmp231, DecSliceNum,
	movhi	r3, #0	@ prephitmp.1253,
	subls	r2, r2, #8	@ prephitmp.1255, tmp231,
	movls	r3, r3, asl #4	@ prephitmp.1253, tmp229,
	movhi	r2, #8	@ prephitmp.1255,
	ldr	ip, [r0, r3]	@ tmp233,* prephitmp.1253
	ldr	r3, [r5, #0]	@ D.39374, <variable>.pVdmRegVirAddr
	str	ip, [r4, #16]	@ tmp233, <variable>.SedSta
	ldr	r7, [r0, r2]	@ tmp235,* prephitmp.1255
	str	r7, [r4, #20]	@ tmp235, <variable>.SedEnd0
	ldr	r5, [r3, #208]	@ D.39417,
	str	r5, [r4, #8]	@ D.39417, <variable>.Mb0QpInCurrPic
	ldr	r1, [r3, #212]	@ D.39421,
	str	r1, [r4, #12]	@ D.39421, <variable>.SwitchRounding
	b	.L251	@
.L260:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L259	@,
	str	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	b	.L245	@
	.fnend
	.size	VDMHAL_V200R004_BackupInfo, .-VDMHAL_V200R004_BackupInfo
	.align	2
	.global	VDMHAL_V200R004_CheckReg
	.type	VDMHAL_V200R004_CheckReg, %function
VDMHAL_V200R004_CheckReg:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ VdhId,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ reg_id, reg_id
	bgt	.L277	@,
	bne	.L269	@,
	movw	r4, #:lower16:g_HwMem	@ tmp149,
	movt	r4, #:upper16:g_HwMem	@ tmp149,
	ldr	r3, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L278	@,
.L267:
	sub	r5, r5, #1	@ tmp145, reg_id,
	cmp	r5, #3	@ tmp145,
	ldrls	pc, [pc, r5, asl #2]	@ tmp145
	b	.L269	@
.L274:
	.word	.L270
	.word	.L271
	.word	.L272
	.word	.L273
.L269:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ dat,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L273:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #40	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L270:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #28	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L271:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #32	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L272:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #36	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L278:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ D.39266,
	strne	r6, [r4, #0]	@ D.39266, <variable>.pVdmRegVirAddr
	bne	.L267	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ dat, D.39266
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L277:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ dat,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDMHAL_V200R004_CheckReg, .-VDMHAL_V200R004_CheckReg
	.align	2
	.global	VDMHAL_V200R004_EnableInt
	.type	VDMHAL_V200R004_EnableInt, %function
VDMHAL_V200R004_EnableInt:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1	@ VdhId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bls	.L286	@,
.L284:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L286:
	beq	.L284	@,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L287	@,
.L283:
	mvn	r3, #1	@ tmp141,
	str	r3, [r0, #36]	@ tmp141,
	ldmfd	sp!, {r4, pc}	@
.L287:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L283	@,
	b	.L284	@
	.fnend
	.size	VDMHAL_V200R004_EnableInt, .-VDMHAL_V200R004_EnableInt
	.align	2
	.global	VDMHAL_V200R004_MaskInt
	.type	VDMHAL_V200R004_MaskInt, %function
VDMHAL_V200R004_MaskInt:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1	@ VdhId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bls	.L295	@,
.L293:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L295:
	beq	.L293	@,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L296	@,
.L292:
	mvn	r3, #0	@ tmp141,
	str	r3, [r0, #36]	@ tmp141,
	ldmfd	sp!, {r4, pc}	@
.L296:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L292	@,
	b	.L293	@
	.fnend
	.size	VDMHAL_V200R004_MaskInt, .-VDMHAL_V200R004_MaskInt
	.align	2
	.global	VDMHAL_V200R004_ClearIntState
	.type	VDMHAL_V200R004_ClearIntState, %function
VDMHAL_V200R004_ClearIntState:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1	@ VdhId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bls	.L304	@,
.L302:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L304:
	beq	.L302	@,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L305	@,
.L301:
	mvn	r3, #0	@ tmp141,
	str	r3, [r0, #32]	@ tmp141,
	ldmfd	sp!, {r4, pc}	@
.L305:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L301	@,
	b	.L302	@
	.fnend
	.size	VDMHAL_V200R004_ClearIntState, .-VDMHAL_V200R004_ClearIntState
	.align	2
	.global	VDMHAL_V200R004_GlbReset
	.type	VDMHAL_V200R004_GlbReset, %function
VDMHAL_V200R004_GlbReset:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r0, #:lower16:269680640	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L316	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp154,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp154,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp155,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.510, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #16	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1401, g_pstRegCrg
	b	.L309	@
.L317:
	ldr	lr, [r1, #372]	@ D.39169, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ i, i,
	tst	lr, #1	@ D.39169,
	str	lr, [sp, #4]	@ D.39169, u32TmpValue_93.u32
	bne	.L308	@,
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, tmp155
	beq	.L310	@,
.L309:
	ldr	ip, [r1, #372]	@ D.39169, <variable>.PERI_CRG93.u32
	tst	ip, #1	@ D.39169,
	str	ip, [sp, #4]	@ D.39169, u32TmpValue_93.u32
	beq	.L317	@,
.L308:
	movw	r0, #8999	@ tmp152,
	cmp	r3, r0	@ i, tmp152
	bgt	.L310	@,
.L311:
	bfc	r5, #4, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L310:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #0]	@ prephitmp.1401, g_pstRegCrg
	b	.L311	@
.L316:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, lr}
	b	vfmw_dprint_nothing	@
	.fnend
	.size	VDMHAL_V200R004_GlbReset, .-VDMHAL_V200R004_GlbReset
	.align	2
	.global	VDMHAL_V200R004_ResetVdm
	.type	VDMHAL_V200R004_ResetVdm, %function
VDMHAL_V200R004_ResetVdm:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	.pad #8
	sub	sp, sp, #8	@,,
	bne	.L333	@,
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L322	@,
	movw	r6, #:lower16:g_HwMem	@ tmp162,
	movw	r5, #:lower16:g_pstRegCrg	@ tmp163,
	movt	r6, #:upper16:g_HwMem	@ tmp162,
	movt	r5, #:upper16:g_pstRegCrg	@ tmp163,
	movw	r1, #10000	@ tmp164,
	ldr	r2, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r5, #0]	@ g_pstRegCrg.509, g_pstRegCrg
	ldr	r8, [r2, #36]	@ tmp,
	ldr	r7, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r7, r7, #64	@ u32TmpValue, u32TmpValue,
	str	r7, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r2, [r5, #0]	@ prephitmp.1433, g_pstRegCrg
	b	.L325	@
.L335:
	ldr	ip, [r2, #372]	@ D.39147, <variable>.PERI_CRG93.u32
	tst	ip, #4	@ D.39147,
	str	ip, [sp, #4]	@ D.39147, u32TmpValue_93.u32
	bne	.L324	@,
	cmp	r4, r1	@ i, tmp164
	beq	.L334	@,
.L325:
	ldr	r0, [r2, #372]	@ D.39147, <variable>.PERI_CRG93.u32
	add	r4, r4, #1	@ tmp165, i,
	add	r4, r4, #1	@ i, tmp165,
	tst	r0, #4	@ D.39147,
	str	r0, [sp, #4]	@ D.39147, u32TmpValue_93.u32
	beq	.L335	@,
.L324:
	bfc	r7, #6, #1	@ u32TmpValue,,
	str	r7, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r1, #36]	@ tmp,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L333:
	cmp	r4, #1	@ VdhId,
	beq	.L336	@,
.L322:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	vfmw_dprint_nothing	@
.L336:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	vfmw_dprint_nothing	@
.L334:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #0]	@ prephitmp.1433, g_pstRegCrg
	b	.L324	@
	.fnend
	.size	VDMHAL_V200R004_ResetVdm, .-VDMHAL_V200R004_ResetVdm
	.align	2
	.global	VDMHAL_V200R004_CloseHAL
	.type	VDMHAL_V200R004_CloseHAL, %function
VDMHAL_V200R004_CloseHAL:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1	@ VdhId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ VdhId, VdhId
	bls	.L343	@,
.L341:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L343:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp138,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp138,
	ldr	r3, [r3, #40]	@ D.38945, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.38945,
	beq	.L341	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.38945
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_CloseHAL, .-VDMHAL_V200R004_CloseHAL
	.align	2
	.global	VDMHAL_V200R004_MakeDecReport
	.type	VDMHAL_V200R004_MakeDecReport, %function
VDMHAL_V200R004_MakeDecReport:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r1, #0	@ pDecReport, pDecReport
	mov	r5, r0	@ VidStd, VidStd
	mov	r6, r2	@ VdhId, VdhId
	beq	.L367	@,
	movw	r1, #1140	@ tmp154,
	movw	r0, #:lower16:g_HwMem	@ tmp155,
	mul	r2, r1, r2	@ tmp153, tmp154, VdhId
	movt	r0, #:upper16:g_HwMem	@ tmp155,
	add	r7, r0, r2	@ pHwMem, tmp155, tmp153
	ldr	r3, [r0, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L367	@,
	movw	lr, #:lower16:g_DSPState	@ tmp157,
	movt	lr, #:upper16:g_DSPState	@ tmp157,
	mov	r0, r4	@, pDecReport
	mov	r1, #528	@,
	ldr	r8, [lr, #0]	@ D.39752, g_DSPState
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp238,
	movt	r3, #:upper16:g_BackUp	@ tmp238,
	mov	ip, #180	@ tmp162,
	ldr	r1, [r7, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	r2, ip, r6, r3	@ tmp163, tmp162, VdhId, tmp238
	str	r1, [r4, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	r0, [r2, #4]	@ D.39766, <variable>.VdmState
	mov	r2, r0, lsr #17	@ tmp165, D.39766,
	and	ip, r2, #3	@ tmp166, tmp165,
	cmp	ip, #1	@ tmp166,
	moveq	r2, #0	@ prephitmp.1495,
	beq	.L349	@,
	eor	r0, r2, #1	@ tmp170, tmp165,
	and	r2, r0, #1	@ tmp172, tmp170,
	cmp	r5, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1495, tmp172
.L349:
	mov	ip, #180	@ tmp178,
	str	r2, [r4, #0]	@ prephitmp.1495, <variable>.RetType
	mla	r3, ip, r6, r3	@ tmp179, tmp178, VdhId, tmp238
	cmp	r5, #0	@ VidStd,
	cmpne	r5, #15	@, VidStd,
	ldr	r1, [r3, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	r2, r1, #-16777216	@ D.39776, <variable>.VdmState,
	bic	r2, r2, #16646144	@ D.39776, D.39776,
	str	r2, [r4, #8]	@ D.39776, <variable>.DecSliceNum
	bne	.L350	@,
	cmp	r8, #1	@ D.39752,
	beq	.L368	@,
	movw	r0, #:lower16:g_not_allow_H264FullPictureRepair_flag	@ tmp204,
	movt	r0, #:upper16:g_not_allow_H264FullPictureRepair_flag	@ tmp204,
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	beq	.L369	@,
.L350:
	cmp	r2, #128	@ D.39776,
	movhi	r3, #0	@ tmp220,
	strhi	r3, [r4, #8]	@ tmp220, <variable>.DecSliceNum
	ldr	r0, [r7, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.39803,
	beq	.L367	@,
	ldr	r3, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	movw	r5, #:lower16:g_UpMsg	@ tmp224,
	movt	r5, #:upper16:g_UpMsg	@ tmp224,
	add	r5, r5, r6, asl #11	@, tmp223, tmp224, VdhId,
	mov	r2, r3, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp223
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	ip, [r4, #8]	@ temp.1525, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1525,
	beq	.L354	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1525
	sub	lr, ip, #1	@ tmp239, temp.1525,
	add	r3, r4, #4	@ ivtmp.1516, pDecReport,
	strh	r2, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	and	r2, lr, r0	@ tmp241, tmp239,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1513, tmp223,
	strh	r1, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	bcs	.L354	@,
	cmp	r2, #0	@ tmp241,
	beq	.L355	@,
	ldrh	r1, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1525
	strh	r1, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	lr, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1513, ivtmp.1513,
	strh	lr, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1516, ivtmp.1516,
	bcs	.L354	@,
.L355:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r1, r5, #16	@ tmp243, ivtmp.1513,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1525
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp244, ivtmp.1516,
	ldrh	r2, [r5, #8]	@, g_UpMsg
	strh	r2, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r5, [r1, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r1, #16	@ ivtmp.1513, tmp243,
	ldrh	r3, [r1, #8]	@, g_UpMsg
	strh	r3, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1516, tmp244,
	bcc	.L355	@,
.L354:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.39817
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r0, ip, asl #2	@ tmp231, <variable>.DecSliceNum,
	cmp	r0, #3	@ tmp231,
	beq	.L357	@,
	mov	r5, #0	@ i_cnt,
.L358:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	add	r5, r5, #4	@ i_cnt, i_cnt,
	mov	r1, r2, asl #2	@ tmp233, <variable>.DecSliceNum,
	sub	r3, r1, #3	@ tmp235, tmp233,
	cmp	r3, r5	@ tmp235, i_cnt
	bhi	.L358	@,
.L357:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39747,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L369:
	ldrb	ip, [r3, #19]	@ zero_extendqisi2	@ tmp212, <variable>.SedSta
	and	r3, ip, #3	@ tmp214, tmp212,
	cmp	r3, #2	@ tmp214,
	bne	.L350	@,
	mov	r2, #1	@ tmp215,
	strh	r1, [r4, #14]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	mov	r0, r1	@ D.39747, g_not_allow_H264FullPictureRepair_flag
	strh	r1, [r4, #12]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	str	r2, [r4, #8]	@ tmp215, <variable>.DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L368:
	ldr	r3, [r3, #16]	@ <variable>.SedSta, <variable>.SedSta
	ubfx	r3, r3, #21, #2	@ tmp198, <variable>.SedSta,,
	cmp	r3, #2	@ tmp198,
	bne	.L350	@,
	mov	lr, #0	@ movhi	@,
	str	r8, [r4, #8]	@ D.39752, <variable>.DecSliceNum
	strh	lr, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.39747,
	strh	lr, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L367:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39747,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VDMHAL_V200R004_MakeDecReport, .-VDMHAL_V200R004_MakeDecReport
	.align	2
	.global	VDMHAL_V200R004_PrepareDec
	.type	VDMHAL_V200R004_PrepareDec, %function
VDMHAL_V200R004_PrepareDec:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r1, #0	@ pDecParam, pDecParam
	mov	r4, r0	@ VidStd, VidStd
	mov	r7, r2	@ VdhId, VdhId
	beq	.L379	@,
	cmp	r0, #6	@ VidStd,
	movw	r6, #:lower16:s_RegPhyBaseAddr	@ tmp149,
	movt	r6, #:upper16:s_RegPhyBaseAddr	@ tmp149,
	moveq	r1, #1	@,
	movne	r1, #0	@,
	ldr	r0, [r6, #0]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
	cmp	r7, #0	@ VdhId,
	bne	.L387	@,
	ldr	r0, [r6, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L377:
	cmp	r4, #6	@ VidStd,
	ldrls	pc, [pc, r4, asl #2]	@ VidStd
	b	.L379	@
.L384:
	.word	.L380
	.word	.L379
	.word	.L381
	.word	.L382
	.word	.L379
	.word	.L379
	.word	.L383
.L388:
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp145,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp145,
	mov	r1, r7	@, VdhId
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, r2, #8	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	bl	vfmw_dprint_nothing	@
.L379:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L387:
	cmp	r7, #1	@ VdhId,
	beq	.L388	@,
	cmp	r7, #0	@ VdhId,
	ble	.L377	@,
	bl	vfmw_dprint_nothing	@
	b	.L379	@
.L383:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	AVSHAL_V200R004_StartDec	@
.L382:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP2HAL_V200R004_StartDec	@
.L381:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP4HAL_V200R004_StartDec	@
.L380:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	H264HAL_V200R004_StartDec	@
	.fnend
	.size	VDMHAL_V200R004_PrepareDec, .-VDMHAL_V200R004_PrepareDec
	.align	2
	.global	VDMHAL_V200R004_ArrangeMem
	.type	VDMHAL_V200R004_ArrangeMem, %function
VDMHAL_V200R004_ArrangeMem:
	.fnstart
.LFB1921:
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r7, r0, #0	@ MemAddr, MemAddr
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r8, r1	@ MemSize, MemSize
	mov	r4, r2	@ Width, Width
	mov	r6, r3	@ Height, Height
	ldr	sl, [sp, #64]	@ UserDec, UserDec
	ldr	r5, [sp, #68]	@ ChanID, ChanID
	ldr	fp, [sp, #72]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L413	@,
	cmp	r3, #31	@ Height,
	movgt	r2, #0	@, tmp184
	movle	r2, #1	@, tmp184
	sub	r1, r4, #32	@ tmp179, Width,
	movw	r0, #8160	@ tmp181,
	cmp	r1, r0	@ tmp179, tmp181
	movls	r3, r2	@, tmp187, tmp184
	orrhi	r3, r2, #1	@,, tmp187, tmp184
	cmp	r3, #0	@ tmp187,
	bne	.L413	@,
	cmp	r6, #8192	@ Height,
	bgt	.L413	@,
	cmp	fp, #0	@ pVdmMemArrange,
	beq	.L413	@,
	mov	r0, fp	@, pVdmMemArrange
	mov	r1, #416	@,
	ldr	r9, [sp, #56]	@ PmvNum, PmvNum
	add	r4, r4, #15	@ tmp188, Width,
	bl	__memzero	@
	add	r2, r6, #15	@ tmp189, Height,
	mov	r4, r4, asr #4	@ ImgWidthInMb, tmp188,
	movw	r6, #:lower16:g_not_direct_8x8_inference_flag	@ tmp197,
	mov	r2, r2, asr #4	@ ImgHeightInMb, tmp189,
	movt	r6, #:upper16:g_not_direct_8x8_inference_flag	@ tmp197,
	cmp	r9, #20	@ PmvNum,
	movge	r9, #20	@ PmvNum.1608,
	cmp	r2, #36	@ ImgHeightInMb,
	cmple	r4, #45	@, ImgWidthInMb,
	mul	r3, r4, r2	@ tmp199, ImgWidthInMb, ImgHeightInMb
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	movle	r1, #64	@, ColMbSize,
	movgt	r1, #32	@, ColMbSize,
	cmp	ip, #1	@ g_not_direct_8x8_inference_flag,
	movne	ip, r1	@ ColMbSize, ColMbSize
	moveq	ip, #64	@ ColMbSize,
	mul	r0, ip, r3	@ tmp200, ColMbSize, tmp199
	add	r6, r0, #127	@ tmp201, tmp200,
	bic	r6, r6, #127	@ PmvSlotLen, tmp201,
	mul	ip, r9, r6	@ tmp202, PmvNum.1608, PmvSlotLen
	cmp	ip, r8	@ tmp202, MemSize
	bge	.L413	@,
	mov	ip, r4, asl #4	@ tmp206, ImgWidthInMb,
	cmp	sl, #1	@ UserDec,
	add	r0, ip, #255	@ tmp207, tmp206,
	str	r9, [fp, #404]	@ PmvNum.1608, <variable>.ValidPMVNum
	mov	r9, r6, asr #1	@ tmp205, PmvSlotLen,
	str	r9, [fp, #400]	@ tmp205, <variable>.HafPmvOffset
	mov	r9, r2, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	bic	r3, r0, #255	@ SlotWidth, tmp207,
	addeq	r2, r9, r2, asl #5	@, tmp211, ImgHeightInPixAln, ImgHeightInMb,
	mov	lr, r3, asl #4	@ tmp208, SlotWidth,
	str	lr, [fp, #0]	@ tmp208, <variable>.VahbStride
	muleq	r4, r3, r2	@ ImgSlotLen, SlotWidth, tmp211
	beq	.L402	@,
	adds	lr, r9, #31	@ tmp216, ImgHeightInPixAln,
	add	r0, r3, r3, asl #1	@, tmp214, SlotWidth, SlotWidth,
	addmi	lr, r9, #62	@, tmp218, ImgHeightInPixAln,
	mov	r2, r0, asl #5	@ tmp215, tmp214,
	mov	r4, lr, asr #5	@ tmp220, tmp218,
	mul	r1, r4, r2	@ tmp221, tmp220, tmp215
	mov	r4, r1, asr #1	@ ImgSlotLen, tmp221,
.L402:
	cmp	r5, #0	@ ChanID,
	blt	.L403	@,
	mov	r0, r5	@, ChanID
	str	r3, [sp, #0]	@,
	bl	VCTRL_GetChanWidth	@
	mov	r3, r0	@ ChanWidth,
	mov	r0, r5	@, ChanID
	str	r3, [sp, #4]	@,
	bl	VCTRL_GetChanHeight	@
	ldr	r2, [sp, #4]	@,
	ldr	r3, [sp, #0]	@,
	cmn	r0, #1	@ ChanHeight,
	cmnne	r2, #1	@, ChanWidth,
	beq	.L413	@,
	add	r1, r0, #15	@ tmp232, ChanHeight,
	add	r0, r2, #15	@ tmp234, ChanWidth,
	bic	lr, r0, #15	@ tmp236, tmp234,
	cmp	sl, #1	@ UserDec,
	mov	ip, r1, asr #4	@ tmp233, tmp232,
	add	r2, lr, #255	@ tmp237, tmp236,
	bic	r0, r2, #255	@ ChanSlotWidth, tmp237,
	mov	r2, ip, asl #4	@ ChanImgHeightInPixAln, tmp233,
	addeq	r2, r2, ip, asl #5	@, tmp240, ChanImgHeightInPixAln, tmp233,
	muleq	r2, r0, r2	@ ChanSlotLen, ChanSlotWidth, tmp240
	beq	.L406	@,
	adds	lr, r2, #31	@ tmp241, ChanImgHeightInPixAln,
	addmi	ip, r2, #62	@, tmp243, ChanImgHeightInPixAln,
	movpl	ip, lr	@, tmp243, tmp241
	mov	r1, ip, asr #5	@ tmp245, tmp243,
	mul	lr, r1, r0	@ tmp246, tmp245, ChanSlotWidth
	add	r2, lr, lr, asl #1	@, tmp249, tmp246, tmp246,
	mov	ip, r2, asl #5	@ tmp250, tmp249,
	mov	r2, ip, asr #1	@ ChanSlotLen, tmp250,
.L406:
	cmp	r4, r2	@ ImgSlotLen, ChanSlotLen
	bgt	.L413	@,
.L403:
	adds	ip, r9, #31	@ tmp255, ImgHeightInPixAln,
	mov	r1, r3, asl #5	@ tmp254, SlotWidth,
	addmi	ip, r9, #62	@, tmp257, ImgHeightInPixAln,
	ldr	r0, [sp, #60]	@, FrameNum
	mov	r2, ip, asr #5	@ tmp259, tmp257,
	cmp	r0, #0	@,
	streq	r0, [fp, #276]	@, <variable>.ValidFrameNum
	mul	r3, r2, r1	@ tmp260, tmp259, tmp254
	str	r3, [fp, #264]	@ tmp260, <variable>.ChromOffset
	beq	.L413	@,
	add	sl, r7, #1020	@ tmp262, MemAddr,
	mov	r1, r4	@, ImgSlotLen
	add	r2, sl, #3	@ tmp262, tmp262,
	ldr	sl, [sp, #60]	@ D.39095, FrameNum
	bic	r3, r2, #1020	@ tmp264, tmp262,
	bic	r0, r3, #3	@ tmp264, tmp264,
	cmp	sl, #64	@ D.39095,
	movge	sl, #64	@ D.39095,
	rsb	lr, r7, r0	@, MemAddr, tmp264
	str	lr, [sp, #8]	@, %sfp
	rsb	r0, lr, r8	@,, MemSize
	bl	__aeabi_idiv	@
	cmp	sl, r0	@ D.39095,
	movlt	r0, sl	@ D.39095, D.39095
	movge	r0, r0	@ D.39095,
	str	r0, [fp, #276]	@ D.39095, <variable>.ValidFrameNum
	cmp	r0, #0	@ D.39095,
	beq	.L413	@,
	ble	.L410	@,
	ldr	ip, [sp, #8]	@, %sfp
	cmp	r0, #1	@ D.39095,
	sub	lr, r0, #1	@ tmp291, D.39095,
	add	r3, fp, #4	@ ivtmp.1602, pVdmMemArrange,
	add	r1, ip, r7	@ ivtmp.1598,, MemAddr
	and	ip, lr, #1	@ tmp293, tmp291,
	str	r1, [fp, #8]	@ ivtmp.1598, <variable>.FrameAddr
	add	r2, r1, r4	@ ivtmp.1598, ivtmp.1598, ImgSlotLen
	mov	r1, #1	@ i,
	ble	.L410	@,
	cmp	ip, #0	@ tmp293,
	beq	.L411	@,
	mov	r1, #2	@ i,
	cmp	r0, r1	@ D.39095, i
	str	r2, [r3, #8]	@ ivtmp.1598, <variable>.FrameAddr
	add	r2, r2, r4	@ ivtmp.1598, ivtmp.1598, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.1602, ivtmp.1602,
	ble	.L410	@,
.L411:
	add	r1, r1, #2	@ i, i,
	add	lr, r3, #4	@ tmp295, ivtmp.1602,
	cmp	r0, r1	@ D.39095, i
	add	r7, r2, r4	@ ivtmp.1598, ivtmp.1598, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.1598, <variable>.FrameAddr
	add	r2, r7, r4	@ ivtmp.1598, ivtmp.1598, ImgSlotLen
	str	r7, [lr, #8]	@ ivtmp.1598, <variable>.FrameAddr
	add	r3, lr, #4	@ ivtmp.1602, tmp295,
	bgt	.L411	@,
.L410:
	cmp	r5, #0	@ ChanID,
	blt	.L412	@,
	movw	r7, #:lower16:s_pstVfmwChan	@ tmp284,
	movt	r7, #:upper16:s_pstVfmwChan	@ tmp284,
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1572, s_pstVfmwChan
	cmp	r1, #0	@ prephitmp.1572,
	beq	.L412	@,
	ldr	r9, [fp, #404]	@ D.39110, <variable>.ValidPMVNum
	movw	ip, #:lower16:217504	@ tmp273,
	movt	ip, #:upper16:217504	@ tmp273,
	mul	r2, r9, r6	@ tmp272, D.39110, PmvSlotLen
	ldr	r3, [r1, ip]	@ <variable>.stChanMem_pmv.Length, <variable>.stChanMem_pmv.Length
	cmp	r2, r3	@ tmp272, <variable>.stChanMem_pmv.Length
	bgt	.L413	@,
	cmp	r9, #0	@ D.39110,
	ble	.L412	@,
	tst	r9, #1	@ D.39110,
	mov	r3, #0	@ ivtmp.1588,
	movw	r8, #:lower16:217500	@ tmp285,
	mov	r2, fp	@ ivtmp.1594, pVdmMemArrange
	movt	r8, #:upper16:217500	@ tmp285,
	mov	sl, r3	@ i.1613, ivtmp.1588
	beq	.L427	@,
	str	r4, [sp, #12]	@ ImgSlotLen, %sfp
	b	.L415	@
.L433:
	ldr	lr, [r7, r5, asl #2]	@ prephitmp.1572, s_pstVfmwChan
	ldr	r4, [lr, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	lr, ip, r4	@ tmp310, ivtmp.1588, <variable>.stChanMem_pmv.PhyAddr
	str	lr, [r1, #280]	@ tmp310, <variable>.PMVAddr
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1572, s_pstVfmwChan
.L415:
	ldr	r1, [r1, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	sl, sl, #1	@ tmp289, i.1613,
	cmp	r9, sl	@ D.39110, tmp289
	add	ip, r3, r6	@ ivtmp.1588, ivtmp.1588, PmvSlotLen
	add	r4, r3, r1	@ tmp277, ivtmp.1588, <variable>.stChanMem_pmv.PhyAddr
	add	r1, r2, #4	@ tmp290, ivtmp.1594,
	str	r4, [r2, #280]	@ tmp277, <variable>.PMVAddr
	add	sl, sl, #1	@ i.1613, tmp289,
	add	r3, ip, r6	@ ivtmp.1588, ivtmp.1588, PmvSlotLen
	add	r2, r1, #4	@ ivtmp.1594, tmp290,
	bgt	.L433	@,
	ldr	r4, [sp, #12]	@ ImgSlotLen, %sfp
.L412:
	ldr	ip, [sp, #8]	@, %sfp
	mov	r2, #1024	@ tmp281,
	str	r4, [fp, #408]	@ ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [fp, #412]	@ tmp281, <variable>.u32StrideByte
	mla	r3, r0, r4, ip	@ tmp280, D.39095, ImgSlotLen,
	mov	r0, #0	@ D.39014,
	str	r3, [fp, #4]	@ tmp280, <variable>.TotalMemUsed
.L391:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L427:
	ldr	r1, [r1, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	mov	sl, #1	@ i.1613,
	mov	r3, r6	@ ivtmp.1588, PmvSlotLen
	add	r2, fp, #4	@ ivtmp.1594, pVdmMemArrange,
	str	r1, [fp, #280]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.PMVAddr
	str	r4, [sp, #12]	@ ImgSlotLen, %sfp
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1572, s_pstVfmwChan
	b	.L415	@
.L413:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39014,
	b	.L391	@
	.fnend
	.size	VDMHAL_V200R004_ArrangeMem, .-VDMHAL_V200R004_ArrangeMem
	.align	2
	.global	VDMHAL_V200R004_OpenHAL
	.type	VDMHAL_V200R004_OpenHAL, %function
VDMHAL_V200R004_OpenHAL:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r6, #:lower16:481279	@ tmp158,
	movt	r6, #:upper16:481279	@ tmp158,
	mov	r5, r1	@ Size, Size
	cmp	r0, #0	@ MemBaseAddr,
	cmpne	r1, r6	@, Size, tmp158
	mov	r4, r0	@ MemBaseAddr, MemBaseAddr
	movgt	r6, #0	@, tmp164
	movle	r6, #1	@, tmp164
	ble	.L448	@,
	cmp	r2, #1	@ VdhId,
	bls	.L447	@,
.L448:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L447:
	beq	.L448	@,
	movw	r7, #:lower16:g_HwMem	@ tmp203,
	movt	r7, #:upper16:g_HwMem	@ tmp203,
	movw	r1, #1140	@,
	mov	r0, r7	@, tmp203
	bl	__memzero	@
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r7, #0]	@, <variable>.pVdmRegVirAddr
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:269746176	@,
	movt	r0, #:upper16:269746176	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r7, #8]	@, <variable>.pBpdRegVirAddr
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #1020	@ tmp171, MemBaseAddr,
	add	ip, r5, r4	@ tmp176, Size, MemBaseAddr
	add	r3, r1, #3	@ tmp171, tmp171,
	mov	r1, #1024	@ tmp179,
	bic	r2, r3, #1020	@ D.38917, tmp171,
	mov	r3, r7	@ ivtmp.1648, tmp203
	bic	r2, r2, #3	@ D.38917, D.38917,
	str	r1, [r7, #24]	@ tmp179, <variable>.VahbStride
	rsb	r0, r2, ip	@ tmp177, D.38917, tmp176
	str	r2, [r7, #16]	@ D.38917, <variable>.HALMemBaseAddr
	str	r0, [r7, #20]	@ tmp177, <variable>.HALMemSize
.L440:
	add	r0, r6, #1024	@ tmp204, ivtmp.1645,
	add	lr, r6, r2	@ tmp181, ivtmp.1645, D.38917
	add	r6, r6, #3072	@ ivtmp.1645, ivtmp.1645,
	add	r1, r3, #4	@ tmp205, ivtmp.1648,
	cmp	r6, #144384	@ ivtmp.1645,
	add	ip, r0, #1024	@ ivtmp.1645, tmp204,
	str	lr, [r3, #28]	@ tmp181, <variable>.MsgSlotAddr
	add	ip, ip, r2	@ tmp211, ivtmp.1645, D.38917
	add	lr, r0, r2	@ tmp208, tmp204, D.38917
	str	ip, [r1, #32]	@ tmp211, <variable>.MsgSlotAddr
	add	r3, r3, #12	@ ivtmp.1648, ivtmp.1648,
	str	lr, [r1, #28]	@ tmp208, <variable>.MsgSlotAddr
	bne	.L440	@,
	add	ip, r2, #144384	@ PhyAddr.1649, D.38917,
	rsb	r1, r4, #32768	@ tmp198, MemBaseAddr,
	add	r3, ip, #299008	@ PhyAddr.1655, PhyAddr.1649,
	movw	r2, #799	@ tmp194,
	add	lr, r3, #3072	@ PhyAddr.1656, PhyAddr.1655,
	str	r3, [r7, #1112]	@ PhyAddr.1655, <variable>.IntensityConvTabAddr
	add	r0, r1, lr	@ tmp199, tmp198, PhyAddr.1656
	mov	r3, #141	@ tmp183,
	cmp	r5, r0	@ Size, tmp199
	add	r1, ip, #83968	@ PhyAddr.1652, PhyAddr.1649,
	str	lr, [r7, #1116]	@ PhyAddr.1656, <variable>.VpTabAddr
	add	r0, ip, #38912	@ PhyAddr.1651, PhyAddr.1649,
	str	lr, [r7, #1120]	@ PhyAddr.1656, <variable>.DnrMbInfoAddr
	add	lr, ip, #5120	@ PhyAddr.1650, PhyAddr.1649,
	str	r1, [r7, #1092]	@ PhyAddr.1652, <variable>.ItransTopAddr
	str	r1, [r7, #1088]	@ PhyAddr.1652, <variable>.RcnTopAddr
	add	r1, ip, #129024	@ PhyAddr.1653, PhyAddr.1649,
	str	r3, [r7, #1052]	@ tmp183, <variable>.ValidMsgSlotNum
	add	r3, ip, #196608	@ PhyAddr.1654, PhyAddr.1649,
	str	ip, [r7, #1076]	@ PhyAddr.1649, <variable>.H264MnAddr
	str	lr, [r7, #1080]	@ PhyAddr.1650, <variable>.SedTopAddr
	str	r0, [r7, #1084]	@ PhyAddr.1651, <variable>.PmvTopAddr
	str	r1, [r7, #1096]	@ PhyAddr.1653, <variable>.DblkTopAddr
	str	r3, [r7, #1100]	@ PhyAddr.1654, <variable>.PpfdBufAddr
	str	r2, [r7, #1104]	@ tmp194, <variable>.PpfdBufLen
	blt	.L441	@,
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	H264HAL_V200R004_InitHal	@
	cmp	r0, #0	@ D.38930
	mvnne	r0, #0	@, Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L441:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VDMHAL_V200R004_OpenHAL, .-VDMHAL_V200R004_OpenHAL
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"BigTile1d_y\000"
.LC1:
	.ascii	"BigTile1d_uv\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
